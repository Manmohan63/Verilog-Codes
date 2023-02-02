`include "Mux.v"
module mux_tb;
    reg a,b,c,d;
    wire y;

    mux Instance0(y,a,b,c,d);
     initial begin
             a=0;b=0;c=0;d=0;
          #1 a=0;b=0;c=0;d=1;
          #1 a=0;b=0;c=1;d=0;
          #1 a=0;b=0;c=1;d=1;
          #1 a=0;b=1;c=0;d=0;
          #1 a=0;b=1;c=0;d=1;
          #1 a=0;b=1;c=1;d=0;
          #1 a=0;b=1;c=1;d=1;
          #1 a=1;b=0;c=0;d=0;
          #1 a=1;b=0;c=0;d=1;
          #1 a=1;b=0;c=1;d=0;
          #1 a=1;b=0;c=1;d=1;
          #1 a=1;b=1;c=0;d=0;
          #1 a=1;b=1;c=0;d=1;
          #1 a=1;b=1;c=1;d=0;
          #1 a=1;b=1;c=1;d=1;
        #1 ;
     end

    initial begin
        $monitor("%t | a=%b | b=%b | c=%b | d=%b | y=%b",$time,a,b,c,d,y);
        $dumpfile("mux.vcd");
        $dumpvars();	
    end
endmodule