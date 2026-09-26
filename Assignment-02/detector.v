module detector_moore(
    input nrst,
    input clk,
    input[7:0] x,
    output reg y
);

localparam [3:0] 
    S0  = 4'd0,
    S1  = 4'd1,
    S2  = 4'd2,
    S3  = 4'd3,
    S4  = 4'd4,
    S5  = 4'd5,
    S6  = 4'd6,
    S7  = 4'd7,
    S8  = 4'd8,
    S9  = 4'd9,
    S10 = 4'd10,
    S11 = 4'd11,
    S12 = 4'd12,
    S13 = 4'd13,
    S14 = 4'd14,
    S15 = 4'd15;

reg [3:0] curr_state, nxt_state;

always @(posedge clk or negedge nrst)
begin
    if (!nrst)
        curr_state <= S0;
    else
        curr_state <= nxt_state;
end

always @(*)
begin
    y = 1'b0;
    nxt_state = curr_state;
    case(curr_state)
        S0:
            case(x)
                8'd98: nxt_state = S1;  // 'b'
                8'd97: nxt_state = S6;  // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S1:
            case(x)
                8'd108: nxt_state = S2;  // 'l'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S2:
            case(x)
                8'd97: nxt_state = S3;   // 'a'
                8'd98: nxt_state = S1;   // 'b'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S3:
            case(x)
                8'd115: nxt_state = S4;  // 's'
                8'd105: nxt_state = S7;  // 'i'
                8'd97: nxt_state = S6;   // 'a'
                8'd98: nxt_state = S1;   // 'b'
                default: nxt_state = S0;
            endcase
        S4:
            case(x)
                8'd116: nxt_state = S5;  // 't'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S5: begin
            y = 1'b1;
            case(x)
                8'd97: nxt_state = S13;  // 'a'
                8'd115: nxt_state = S11; // 's'
                8'd98: nxt_state = S1;   // 'b'
                default: nxt_state = S0;
            endcase
        end
        S6:
            case(x)
                8'd105: nxt_state = S7;  // 'i'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S7:
            case(x)
                8'd114: nxt_state = S8;  // 'r'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S8:
            case(x)
                8'd108: nxt_state = S9;  // 'l'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S9:
            case(x)
                8'd121: nxt_state = S10; // 'y'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S10: begin
            y = 1'b1;
            case(x)
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        end
        S11:
            case(x)
                8'd116: nxt_state = S12; // 't'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S12:
            case(x)
                8'd97: nxt_state = S13;  // 'a'
                8'd98: nxt_state = S1;   // 'b'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S13:
            case(x)
                8'd105: nxt_state = S14; // 'i'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S14:
            case(x)
                8'd114: nxt_state = S15; // 'r'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        S15: begin
            y = 1'b1;
            case(x)
                8'd108: nxt_state = S9;  // 'l'
                8'd98: nxt_state = S1;   // 'b'
                8'd97: nxt_state = S6;   // 'a'
                8'd115: nxt_state = S11; // 's'
                default: nxt_state = S0;
            endcase
        end
        default: nxt_state = S0;
    endcase
end
endmodule