`include "main.v"

module triple_des_mode (
    input  wire        clk,
    input  wire        nrst,
    input  wire        start,
    input  wire [1:0]  mode,        
    input  wire [255:0] data_in,   
    input  wire [127:0] key,       
    input  wire [63:0]  iv,        
    output reg  [255:0] data_out,
    output reg          done
);
    wire [63:0] K1 = key[127:64];
    wire [63:0] K2 = key[63:0];
    wire [63:0] B0 = data_in[255:192];
    wire [63:0] B1 = data_in[191:128];
    wire [63:0] B2 = data_in[127:64];
    wire [63:0] B3 = data_in[63:0];

    reg  [63:0] des_in;
    reg  [63:0] des_key;
    reg  E_or_D;
    wire [63:0] des_out;

    DES des_core(des_in, des_key, des_out, E_or_D); // E = 0 means encrypt, E = 1 means decrypt

    reg [63:0] X;
    reg [2:0] state;
    reg [2:0] index;
    reg [63:0] block_reg [0:3];
    reg [63:0] OFB; 
    reg [63:0] t1, t2;
    

    localparam IDLE  = 3'b000;
    localparam PREP  = 3'b001;
    localparam DES1  = 3'b010;
    localparam DES2  = 3'b011;
    localparam DES3  = 3'b100;
    localparam NEXT  = 3'b101;
    localparam DONE  = 3'b110;


    always @(posedge clk or negedge nrst) begin
        if (!nrst) begin
            state <= IDLE;
            index <= 0;
            done  <= 0;
            data_out <= 0;

        end else begin
            case (state)
            IDLE: begin
                done <= 0;
                
                if (start) begin
                    index <= 0;
                    X <= iv;
                    state <= PREP;
                end
            end

            PREP: begin
                case (mode)
                    2'b00:  des_in <= (index==0)?B0 :
                               (index==1)?B1 :
                               (index==2)?B2 : B3;
                            
                    2'b01: begin
                        if (index==0) des_in <= B0 ^ X;
                        else if (index==1) des_in <= B1 ^ X;
                        else if (index==2) des_in <= B2 ^ X;
                        else               des_in <= B3 ^ X;
                    end

                    2'b10: begin
                        des_in = X;
                        if (index==0) OFB <= B0;
                        else if (index==1) OFB <= B1;
                        else if (index==2) OFB <= B2;
                        else               OFB <= B3;
                    end
                endcase
                
                des_key <= K1;
                E_or_D <= 0;
                state  <= DES1;
            end

            DES1: begin
                t1      <= des_out;
                des_in  <= des_out;
                des_key <= K2;
                E_or_D  <= 1;
                state   <= DES2;
            end

            DES2: begin
                t2      <= des_out;
                des_in  <= des_out;
                des_key <= K1;
                E_or_D  <= 0;
                state   <= DES3;
            end

            DES3: begin
                
                if (mode == 2'b10) // ofb
                begin
                    block_reg[index] <= des_out ^ OFB;
                    X <= des_out;
                end
                else 
                begin 
                    block_reg[index] <= des_out;
                end

                if (mode == 2'b01)
                    X <= des_out;  // CBC: feedback ciphertext
                
                state <= NEXT;
            end

            NEXT: begin
                if (index == 3)
                    state <= DONE;
                else begin
                    index <= index + 1;
                    state <= PREP;
                end
            end

            DONE: begin
                data_out <= {block_reg[0], block_reg[1],
                             block_reg[2], block_reg[3]};
                done <= 1;
                state <= IDLE;
            end

            endcase
        end
    end

endmodule