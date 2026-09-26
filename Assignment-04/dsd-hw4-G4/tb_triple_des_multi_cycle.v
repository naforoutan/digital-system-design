`timescale 1ns/1ps

module tb_triple_des_multi_cycle;

    reg clk;
    reg nrst;
    reg start;
    reg [1:0] mode;
    reg [255:0] data_in_256;
    reg [299:0] data_in_300;
    reg [127:0] key;
    reg [63:0] iv;

    wire [255:0] data_out_256;
    wire done_256;
    wire busy_256;

    wire [319:0] data_out_300;
    wire done_300;
    wire busy_300;

    triple_des_multi_cycle #(
        .DATA_W(256)
    ) dut_256 (
        .clk(clk),
        .nrst(nrst),
        .start(start),
        .mode(mode),
        .data_in(data_in_256),
        .key(key),
        .iv(iv),
        .data_out(data_out_256),
        .done(done_256),
        .busy(busy_256)
    );

    triple_des_multi_cycle #(
        .DATA_W(300)
    ) dut_300 (
        .clk(clk),
        .nrst(nrst),
        .start(start),
        .mode(mode),
        .data_in(data_in_300),
        .key(key),
        .iv(iv),
        .data_out(data_out_300),
        .done(done_300),
        .busy(busy_300)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves_multi_cycle.vcd");
        $dumpvars(0, tb_triple_des_multi_cycle);

        clk = 0;
        nrst = 0;
        start = 0;
        mode = 0;
        data_in_256 = 0;
        data_in_300 = 0;
        key = 0;
        iv = 0;

        #20;
        nrst = 1;

        // // Test Vector 1 - ECB - 256 bit
        // mode = 2'b00;
        // key = 128'hA4E9432CE07AD076572F7C1513DA495E;
        // iv = 64'h0000000000000000;
        // data_in_256 = 256'h12BB6F8DF45EF216BA7BDE0C26FBA7DCD1BF4B48A0F028549947E3E0C209EE51;

        // start = 1;
        // #10;
        // start = 0;

        // wait(done_256);
        // #10;

        // $display("Test 1 ECB 256:");
        // $display("OUT = %h", data_out_256);
        // $display("EXP = 307D644D19BEB55759C0DC3E862B82387EB35CC8ECE07C780B8762E0708F1DF1");

        // Test Vector 2 - CBC - 256 bit
        // mode = 2'b01;
        // key = 128'hFDDF34345EEF082FA42AAB494576EC94;
        // iv = 64'h2B0A1D10B06D3A2C;
        // data_in_256 = 256'h81A239C31A85555472558978F41CA01A6D841401ED8661BB3222EAA63D9E44A5;

        // start = 1;
        // #10;
        // start = 0;

        // wait(done_256);
        // #10;

        // $display("Test 2 CBC 256:");
        // $display("OUT = %h", data_out_256);
        // $display("EXP = 297AB4B44A9BC2FCE63817B28BDDAFD334AC5E9E57AA9A51F07839AFEB067989");

        // Test Vector 3 - OFB - 256 bit
        // mode = 2'b10;
        // key = 128'h79AD455EADF8B6D920BADAD96110683D;
        // iv = 64'h3D1EF94987749B72;
        // data_in_256 = 256'h8D166A08A65AA998781AA16D615C9BA02F66D7EEB7001EAE4D9CA6F1A93FAD05;

        // start = 1;
        // #10;
        // start = 0;

        // wait(done_256);
        // #10;

        // $display("Test 3 OFB 256:");
        // $display("OUT = %h", data_out_256);
        // $display("EXP = 54E4ABC45BA14D1DE80E5F020DBF64CF9EF1A890E81103AEA54DBF8F287FFEBD");

        // // Test Vector 4 - ECB - 300 bit
        // mode = 2'b00;
        // key = 128'hA4E9432CE07AD076572F7C1513DA495E;
        // iv = 64'h0000000000000000;
        // data_in_300 = 300'h12BB6F8DF45EF216BA7BDE0C26FBA7DCD1BF4B48A0F028549947E3E0C209EE519A4EF286214;

        // start = 1;
        // #10;
        // start = 0;

        // wait(done_300);
        // #10;

        // $display("Test 4 ECB 300:");
        // $display("OUT = %hXXXXXXXXXXXXXXXX", data_out_300[319:64]);
        // $display("EXP = 307D644D19BEB55759C0DC3E862B82387EB35CC8ECE07C780B8762E0708F1DF1XXXXXXXXXXXXXXXX");

        // // Test Vector 5 - CBC - 300 bit
        mode = 2'b01;
        key = 128'hFDDF34345EEF082FA42AAB494576EC94;
        iv = 64'h2B0A1D10B06D3A2C;
        data_in_300 = 300'h81A239C31A85555472558978F41CA01A6D841401ED8661BB3222EAA63D9E44A59A4EF286214;

        start = 1;
        #10;
        start = 0;

        wait(done_300);
        #10;

        $display("Test 5 CBC 300:");
        $display("OUT = %hXXXXXXXXXXXXXXXX", data_out_300[319:64]);
        $display("EXP = 297AB4B44A9BC2FCE63817B28BDDAFD334AC5E9E57AA9A51F07839AFEB067989XXXXXXXXXXXXXXXX");

        // // Test Vector 6 - OFB - 300 bit

        // mode = 2'b10;
        // key = 128'h79AD455EADF8B6D920BADAD96110683D;
        // iv = 64'h3D1EF94987749B72;
        // data_in_300 = 300'h8D166A08A65AA998781AA16D615C9BA02F66D7EEB7001EAE4D9CA6F1A93FAD059A4EF286214;

        // start = 1;
        // #10;
        // start = 0;

        // wait(done_300);
        // #10;

        // $display("Test 6 OFB 300:");
        // $display("OUT = %hXXXXXXXXXXXXXXXX", data_out_300[319:64]);
        // $display("EXP = 54E4ABC45BA14D1DE80E5F020DBF64CF9EF1A890E81103AEA54DBF8F287FFEBDXXXXXXXXXXXXXXXX");

        #50;
        $stop;
    end

endmodule


//
// iverilog -o sim_triple_des_sc tb_triple_des_multi_cycle.v triple_des_multi_cycle.v
// vvp sim_triple_des_sc +wave   
//