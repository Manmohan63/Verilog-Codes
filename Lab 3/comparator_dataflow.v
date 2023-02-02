module comparator(y,A,B);
output[2:0] y;
input[3:0] A,B;
assign y[0]=(A>B);
assign y[1]=(A==B);
assign y[2]=(A<B);
endmodule 

module testbench;
reg[3:0] A,B;
wire[2:0] y;
comparator comparator1(y,A,B);
initial 
begin 
    $display("A B A>B A=B A<B");
    $monitor("%b %b %b %b %b ", A, B, y[0],y[1],y[2]);
    A=4'b1111; B=4'b1000;
    #10 A=4'b1100; B=4'b1100;
    #10 A=4'b0011; B=4'b0011;
    #10 A=4'b1010; B=4'b1100;
end
endmodule