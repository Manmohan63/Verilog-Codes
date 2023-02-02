`include "AND_2_behavioral.v"

module AND_2_behavioral_tb;
	reg A, B;
	wire Y;
	AND_2_behavioral Instance0 (Y, A, B);
	
	initial begin
	 	A = 0; B = 0;
	 #2 A = 0; B = 1;
	 #2 A = 1; B = 0;
	 #2 A = 1; B = 1;
	 
	end
	initial begin
		$monitor ("%t | A = %d| B = %d| Y = %d", $time, A, B, Y);
		$dumpfile("ab_dump.vcd");
		$dumpvars();
	end
endmodule
