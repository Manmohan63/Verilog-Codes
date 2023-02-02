module hello;
  integer int_a;
  real real_b;
  time time_c;
  initial begin
	  int_a = 0.1234567;
	  
	  #400;
	  time_c = $time;
	  
	  
      $display("int_a = 0x%0h", int_a);
	  $display("real_b = %0.5f", real_b);
	  $display("time_c = %0t", time_c);
      $finish ;
    end
endmodule 