// ============================================================
// KARATSUBA MULTIPLIER (Clean version)
// ============================================================
module karatsuba_mul #(
    parameter WIDTH = 16,
    parameter BASE_WIDTH = 4
) (
    input wire [WIDTH-1:0] x,
    input wire [WIDTH-1:0] y,
    output wire [2*WIDTH-1:0] p
);

generate
    if (WIDTH <= BASE_WIDTH) begin : BASE_CASE
        assign p = x * y;
    end
    else begin : RECURSIVE_CASE
        localparam HALF = WIDTH / 2;
        localparam HALF_ODD = WIDTH - HALF;
        localparam SUM_WIDTH = (HALF > HALF_ODD) ? HALF+1 : HALF_ODD+1;
        
        // Split
        wire [HALF-1:0] x_low = x[HALF-1:0];
        wire [HALF_ODD-1:0] x_high = x[WIDTH-1:HALF];
        wire [HALF-1:0] y_low = y[HALF-1:0];
        wire [HALF_ODD-1:0] y_high = y[WIDTH-1:HALF];
        
        // Pad and sum
        wire [SUM_WIDTH-1:0] x_sum = 
            {{(SUM_WIDTH-HALF){1'b0}}, x_low} + 
            {{(SUM_WIDTH-HALF_ODD){1'b0}}, x_high};
        wire [SUM_WIDTH-1:0] y_sum = 
            {{(SUM_WIDTH-HALF){1'b0}}, y_low} + 
            {{(SUM_WIDTH-HALF_ODD){1'b0}}, y_high};
        
        // Recursive products
        wire [2*HALF-1:0] z0;
        wire [2*HALF_ODD-1:0] z2;
        wire [2*SUM_WIDTH-1:0] z1;
        
        karatsuba_mul #(.WIDTH(HALF), .BASE_WIDTH(BASE_WIDTH)) 
            m0 (.x(x_low), .y(y_low), .p(z0));
        karatsuba_mul #(.WIDTH(HALF_ODD), .BASE_WIDTH(BASE_WIDTH)) 
            m2 (.x(x_high), .y(y_high), .p(z2));
        karatsuba_mul #(.WIDTH(SUM_WIDTH), .BASE_WIDTH(BASE_WIDTH)) 
            m1 (.x(x_sum), .y(y_sum), .p(z1));
        
        // Extend all to final width
        wire [2*WIDTH-1:0] z0_ext = {{(2*WIDTH-2*HALF){1'b0}}, z0};
        wire [2*WIDTH-1:0] z2_ext = {{(2*WIDTH-2*HALF_ODD){1'b0}}, z2};
        wire [2*WIDTH-1:0] z1_ext = {{(2*WIDTH-2*SUM_WIDTH){1'b0}}, z1};
        
        // Karatsuba formula: p = z2 * B^2 + (z1 - z2 - z0) * B + z0
        // where B = 2^HALF
        wire [2*WIDTH-1:0] middle = z1_ext - z2_ext - z0_ext;
        
        assign p = (z2_ext << (2*HALF)) + (middle << HALF) + z0_ext;
    end
endgenerate

endmodule