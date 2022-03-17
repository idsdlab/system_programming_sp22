`timescale 1ns/100ps

module tb_not_gate ();

    reg a;
    wire o;

    not_gate dut (
        .a(a),
        .o(o)
    );


    initial
    begin
        a = 0;
        #10 a = 1;
        #10 a = 0;
        #10 a = 1;
        #10 a = 0;
        #10 a = 1;
        #10 a = 0;
    end

    initial
    begin
        $display("%t: %b - %b", $time, a, o);
        #10 $display("%t: %b - %b", $time, a, o);
        #10 $display("%t: %b - %b", $time, a, o);
        #10 $display("%t: %b - %b", $time, a, o);
        #10 $display("%t: %b - %b", $time, a, o);
        #10 $display("%t: %b - %b", $time, a, o);
        #1000;
        $finish;
    end

`ifdef VCD
    initial
    begin
        $dumpfile("wave.vcd");
        $dumpvars(0);
    end
`endif

endmodule

