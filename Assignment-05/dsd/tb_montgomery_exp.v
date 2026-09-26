`timescale 1ns / 1ps

module tb_montgomery_exp;

parameter WIDTH = 16;
parameter TIMEOUT_CYCLES = 50000;

reg clk;
reg rst;
reg start;
reg [WIDTH-1:0] A;
reg [WIDTH-1:0] E;
reg [WIDTH-1:0] N;

wire [WIDTH-1:0] result;
wire done;

integer test_pass, test_fail;

montgomery_exp_top #(.WIDTH(WIDTH)) dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .A(A),
    .E(E),
    .N(N),
    .result(result),
    .done(done)
);

always #5 clk = ~clk;

initial begin
    #5_000_000;
    $display("[tb_montgomery_exp] GLOBAL WATCHDOG TIMEOUT");
    $finish;
end

task run_test;
    input [WIDTH-1:0] test_A;
    input [WIDTH-1:0] test_E;
    input [WIDTH-1:0] test_N;
    input [WIDTH-1:0] test_expected;
    input integer     test_num;

    integer cycle_count;
    begin
        @(negedge clk);
        A = test_A;
        E = test_E;
        N = test_N;

        start = 1'b1;
        @(negedge clk);
        start = 1'b0;

        cycle_count = 0;
        while (done !== 1'b1 && cycle_count < TIMEOUT_CYCLES) begin
            @(negedge clk);
            cycle_count = cycle_count + 1;
        end

        if (cycle_count >= TIMEOUT_CYCLES) begin
            $display("TEST%0d: TIMEOUT after %0d cycles  | %0d^%0d mod %0d (expected %0d)",
                     test_num, TIMEOUT_CYCLES, test_A, test_E, test_N, test_expected);
            test_fail = test_fail + 1;
        end else begin
            @(negedge clk);
            if (result === test_expected) begin
                $display("TEST%0d: [PASS] | %0d^%0d mod %0d = %0d (expected %0d) [cycles=%0d]",
                         test_num, test_A, test_E, test_N, result, test_expected, cycle_count);
                test_pass = test_pass + 1;
            end else begin
                $display("TEST%0d: [FAIL] | %0d^%0d mod %0d = %0d (expected %0d) [cycles=%0d]",
                         test_num, test_A, test_E, test_N, result, test_expected, cycle_count);
                test_fail = test_fail + 1;
            end
        end

        
        repeat (10) @(negedge clk);
    end
endtask


initial begin
    
    clk       = 1'b0;
    rst       = 1'b1;
    start     = 1'b0;
    A         = {WIDTH{1'b0}};
    E         = {WIDTH{1'b0}};
    N         = {WIDTH{1'b0}};
    test_pass = 0;
    test_fail = 0;

    
    repeat (5) @(negedge clk);
    rst = 1'b0;
    repeat (2) @(negedge clk);

    $display("");
    $display("========================================");
    $display("STARTING MONTGOMERY EXPONENTIATION TESTS");
    $display("========================================");
    $display("");

    
    run_test(16'd7,  16'd13,  16'd17, 16'd6,  1);
    run_test(16'd5,  16'd117, 16'd19, 16'd1,  2);
    run_test(16'd9,  16'd11,  16'd23, 16'd1,  3);
    run_test(16'd2,  16'd10,  16'd11, 16'd1,  4);
    run_test(16'd3,  16'd7,   16'd13, 16'd3,  5);
    run_test(16'd1,  16'd100, 16'd17, 16'd1,  6);
    run_test(16'd7,  16'd0,   16'd13, 16'd1,  7);
    run_test(16'd0,  16'd5,   16'd13, 16'd0,  8);
    run_test(16'd15, 16'd15,  16'd17, 16'd8,  9);
    run_test(16'd16, 16'd5,   16'd17, 16'd16, 10);

    
    $display("");
    $display("========================================");
    $display("TEST SUMMARY");
    $display("========================================");
    $display("PASSED: %0d", test_pass);
    $display("FAILED: %0d", test_fail);
    $display("TOTAL : %0d", test_pass + test_fail);
    $display("========================================");
    $display("");

    if (test_fail == 0)
        $display("RESULT: ALL TESTS PASSED");
    else
        $display("RESULT: SOME TESTS FAILED");
    $display("");

    #100;
    $finish;
end


initial begin
    $dumpfile("tb_montgomery_exp.vcd");
    $dumpvars(0, tb_montgomery_exp);
end

endmodule
