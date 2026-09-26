`timescale 1ns/1ps

module tb_triple_des_mode;

    reg clk = 0;
    reg nrst = 0;
    reg start = 0;
    reg [1:0] mode;
    reg [255:0] data_in;
    reg [127:0] key;
    reg [63:0] iv;
    wire [255:0] data_out;
    wire done;

    triple_des_mode dut(
        .clk(clk),
        .nrst(nrst),
        .start(start),
        .mode(mode),
        .data_in(data_in),
        .key(key),
        .iv(iv),
        .data_out(data_out),
        .done(done)
    );

    always #5 clk = ~clk;

    // wait for a full cycle
    task run_test;
    begin
        @(posedge clk);
        while (done) @(posedge clk);

        start = 1;
        @(posedge clk);
        start = 0;

        while (!done) @(posedge clk);

        @(posedge clk);
    end
    endtask


    task check_output;
        input [255:0] expected;
    begin
        if (data_out == expected)
            $display("PASS: %h", data_out);
        else begin
            $display("FAIL!");
            $display("Expected: %h", expected);
            $display("Got     : %h", data_out);
        end
        $display("----------------------------------------");
    end
    endtask


    initial begin
        $display("\n=== Triple DES Testbench Start ===\n");

        nrst = 0;
        #20;
        nrst = 1;

        // ------------------------------------------------
        // Test Vector 1: ECB
        // ------------------------------------------------
        $display("Test Vector 1 : ECB");

        mode = 2'b00;
        key  = {64'hA4E9432CE07AD076, 64'h572F7C1513DA495E};
        iv   = 64'h0;

        data_in = {
            64'h12BB6F8DF45EF216,
            64'hBA7BDE0C26FBA7DC,
            64'hD1BF4B48A0F02854,
            64'h9947E3E0C209EE51
        };

        run_test();
        check_output(256'h307D644D19BEB55759C0DC3E862B82387EB35CC8ECE07C780B8762E0708F1DF1);

        // ------------------------------------------------
        // Test Vector 2: CBC
        // ------------------------------------------------

/*       
        #10;
        nrst = 0;
        #20;
        nrst = 1;
        #10;
*/
        $display("Test Vector 2 : CBC");

        mode = 2'b01;
        key  = {64'hFDDF34345EEF082F, 64'hA42AAB494576EC94};
        iv   = 64'h2B0A1D10B06D3A2C;

        data_in = {
            64'h81A239C31A855554,
            64'h72558978F41CA01A,
            64'h6D841401ED8661BB,
            64'h3222EAA63D9E44A5
        };

        run_test();
        check_output(256'h297AB4B44A9BC2FCE63817B28BDDAFD334AC5E9E57AA9A51F07839AFEB067989);


        // ------------------------------------------------
        // Test Vector 3: OFB
        // ------------------------------------------------

/*       
        #10;
        nrst = 0;
        #20;
        nrst = 1;
        #10;
*/
        $display("Test Vector 3 : OFB");

        mode = 2'b10;
        key  = {64'h79AD455EADF8B6D9, 64'h20BADAD96110683D};
        iv   = 64'h3D1EF94987749B72;

        data_in = {
            64'h8D166A08A65AA998,
            64'h781AA16D615C9BA0,
            64'h2F66D7EEB7001EAE,
            64'h4D9CA6F1A93FAD05
        };

        run_test();
        check_output(256'h54E4ABC45BA14D1DE80E5F020DBF64CF9EF1A890E81103AEA54DBF8F287FFEBD);

        $display("=== End of Testbench ===");
        $finish;
    end

endmodule
