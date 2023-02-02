`include "comparator.v"
module comparartor_tb;
    reg A3,A2,A1,A0,B3,B2,B1,B0;
	wire less,equal,greater;
    comparator_behavorial Instance0(less,equal,greater,A3,A2,A1,A0,B3,B2,B1,B0);
    initial begin
        A3 = 0; A2 = 0; A1=0; A0=0; B3 = 0; B2 = 0; B1=0; B0=0;
	 #2 A3 = 1; A2 = 1; A1=1; A0=1; B3 = 1; B2 = 1; B1=1; B0=1;
	 #2 A3 = 1; A2 = 1; A1=1; A0=1; B3 = 0; B2 = 1; B1=1; B0=1;
	 #2 A3 = 0; A2 = 1; A1=1; A0=1; B3 = 1; B2 = 1; B1=1; B0=1;
	 #2 A3 = 1; A2 = 1; A1=1; A0=1; B3 = 1; B2 = 0; B1=1; B0=1;
	 #2 A3 = 1; A2 = 0; A1=1; A0=1; B3 = 1; B2 = 1; B1=1; B0=1;
	 #2 A3 = 1; A2 = 1; A1=1; A0=1; B3 = 1; B2 = 1; B1=0; B0=1;
	 #2 A3 = 1; A2 = 1; A1=0; A0=1; B3 = 1; B2 = 1; B1=1; B0=1;
	 #2 A3 = 1; A2 = 1; A1=1; A0=1; B3 = 1; B2 = 1; B1=1; B0=0;
	 #2 A3 = 1; A2 = 1; A1=1; A0=0; B3 = 1; B2 = 1; B1=1; B0=1;
	 #2 A3 = 1; A2 = 1; A1=1; A0=1; B3 = 1; B2 = 1; B1=1; B0=1;
    end
    initial begin
		$monitor ("%t | A3 = %d| B3 = %d| A2 = %d| B2 = %d| A1 = %d| B1 = %d| A0 = %d| B0 = %d| A<B = %d| A=B = %d| A>B = %d|", $time, A3,B3,A2,B2,A1,B1,A0,B0,less,equal,greater);
		$dumpfile("ab_dump.vcd");
		$dumpvars();
	end

endmodule
