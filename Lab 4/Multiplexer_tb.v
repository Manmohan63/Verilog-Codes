`include "Multiplexer.v"
module Mux4to1_tb ();
    wire y;
    reg s0, s1,i0,i1,i2,i3;
     mux4to1 mux4to1_inst (y,i0,i1,i2,i3,s0,s1);

     initial begin
        i0=1'b1; i1=1'b0; i2=1'b1; i3=1'b0;
        s0=1'b0; s1=1'b0;
        #10 s0=1'b1; s1=1'b0;
        #10 s0=1'b0; s1=1'b1;
        #10 s0=1'b1; s1=1'b1;
     end
endmodule