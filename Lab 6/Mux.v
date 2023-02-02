module mux(y,a,b,c,d);
input a,b,c,d;
output y;

assign y = (~b & c) | (~a & b & d) | (a & ~b);
endmodule