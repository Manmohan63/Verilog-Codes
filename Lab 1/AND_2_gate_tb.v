module AND_2_gate_tb;
  
	reg a, b;  
	wire c, d, e;  
	AND_2_gate Instance0 (c, a, b);
	
	initial begin  
	   a = 0; b = 0;  
	   #1 a = 0; b = 1;   
	   #1 a = 1; b = 0;  
	   #1 a = 1; b = 1;  
	end
 
	initial begin  
	   $monitor ("T=%t |a=%b |b=%b |c(and)=%b", $time, a, b, c); 
	   $dumpfile("ag_dump.vcd");
	   $dumpvars();	   
	end  
 
endmodule  
