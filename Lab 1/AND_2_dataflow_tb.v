`include "AND_2_dataflow.v"
module AND_2_dataflow_tb;
reg A, B;
wire Y;
AND_2_dataflow Instance0 (Y, A, B);
initial begin
    A = 0; B = 0;
 #4 A = 0; B = 1;
 #1 A = 1; B = 0;
 #1 A = 1; B = 1;
 #1 ;
end
initial begin
    $monitor ("%t | A = %d| B = %d| Y = %d", $time, A, B, Y);
    $dumpfile("ad_dump.vcd");
    $dumpvars();
end
endmodule