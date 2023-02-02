`include "MUX8_dataflow.v"
module mux8x1_tb;
    reg I0, I1, I2, I3, I4, I5, I6, I7, S2, S1, S0;
    wire Y;

    mux8x1 Instance0(Y, I0, I1, I2, I3, I4, I5, I6, I7, S2, S1, S0);
     initial begin
          S2=0;S1=0;S0=0;I0=1;I1=0;I2=0;I3=0;I4=0;I5=0;I6=0;I7=0;
       #1 S2=0;S1=0;S0=1;I0=0;I1=1;I2=0;I3=0;I4=0;I5=0;I6=0;I7=0;
       #1 S2=0;S1=1;S0=0;I0=0;I1=0;I2=1;I3=0;I4=0;I5=0;I6=0;I7=0;
       #1 S2=0;S1=1;S0=1;I0=0;I1=0;I2=0;I3=1;I4=0;I5=0;I6=0;I7=0;
       #1 S2=1;S1=0;S0=0;I0=0;I1=0;I2=0;I3=0;I4=1;I5=0;I6=0;I7=0;  
       #1 S2=1;S1=0;S0=1;I0=0;I1=0;I2=0;I3=0;I4=0;I5=1;I6=0;I7=0;
       #1 S2=1;S1=1;S0=0;I0=0;I1=0;I2=0;I3=0;I4=0;I5=0;I6=1;I7=0;
       #1 S2=1;S1=1;S0=1;I0=0;I1=0;I2=0;I3=0;I4=0;I5=0;I6=0;I7=1;
       #1 ;
     end

    initial begin
        $monitor("%t | S2=%b | S1=%b | S0=%b | I0=%b | I1=%b | I2=%b | I3=%b | I4=%b | I5=%b | I6=%b | I7=%b | Y=%b",$time,S2,S1,S0,I0,I1,I2,I3,I4,I5,I6,I7,Y);
        $dumpfile("mux_dump.vcd");
        $dumpvars();	
    end
endmodule