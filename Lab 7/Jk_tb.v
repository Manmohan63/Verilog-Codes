`include "Jk.v"
module Jk_tb;
    reg j,k;
    wire q;
    jk Instance0(q,j,k);
    initial begin
        j=0;k=0;
        #1 j=0;k=1;
        #1 j=1;k=0;
        #1 j=1;k=1;
        #1 ;
    end
    initial begin
        $monitor("%t | j=%b | k=%b | q=%b",$time,j,k,q);
        $dumpfile("Jk.vcd");
        $dumpvars();	
    end
endmodule