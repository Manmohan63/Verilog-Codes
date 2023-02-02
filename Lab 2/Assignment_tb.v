`include "Assignment.v"

module Assignment_tb;
    reg x1;
    reg x2;
    reg x3;
    wire y;

    Assignment mm0(x1, x2, x3, y);
    initial begin
        x1=0; x2=0; x3=0;
        #1 x1=0; x2=0; x3=1;
        #1 x1=0; x2=1; x3=0;
        #1 x1=0; x2=1; x3=1;
        #1 x1=1; x2=0; x3=0;
        #1 x1=1; x2=0; x3=1;
        #1 x1=1; x2=1; x3=0;
        #1 x1=1; x2=1; x3=1;
    end

    initial begin
        $monitor("T=%t | x1=%b | x2=%b |x3=%b | y=%b", $time, x1, x2, x3, y);
        $dumpfile("Assignment_tb.vcd");
        $dumpvars();
    end
endmodule

