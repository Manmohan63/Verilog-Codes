module mux4to1(Y, i0,i1,i2,i3,s0,s1);
input i0,i1,i2,i3,s0,s1;
output Y;

assign Y = (~s1 & ~s0 & i0) | (~s1 & s0 & i1) | (s1 & ~s0 & i2) | (s1 & s0 & i3);
    
endmodule