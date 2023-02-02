// 8 Inputs 
// 3 select lines 
// 1 Output
// Behavioural code is writing the code for the truth table


// s2 s1 s0  Y
// 0 0 0     I0
// 0 0 1     I1
// 0 1 0     I2
// 0 1 1     I3
// 1 0 0     I4
// 1 0 1     I5
// 1 1 0     I6
// 1 1 1     I7

// Because I is a 8-bit and s is a 3-bit, that's why we can't take bothe of them in one line

module mux (I,s,y);
input [2:0]s; //vector defined of size 3 for select lines
input [7:0]I; //vector defined of size 8 for Output
output reg y; //output is a register because it is a single bit

always @ (I,s) //always block is used to write the code for the truth table
begin
    case (s) //case statement is used to write the code for the truth table 
    // 3 select lines are there so we have to write 8 cases
    // 3 select lines means 2^3 = 8 cases
    // 3'b000 means 3-bit binary number 000
    3'b000: y=I[0]; //3'b000 is the binary equivalent of 0, b represents that inputs are binary and 000 is the binary equivalent of 0
    3'b001: y=I[1]; //3'b001 is the binary equivalent of 1
    3'b010: y=I[2]; //3'b010 is the binary equivalent of 2
    3'b011: y=I[3]; //3'b011 is the binary equivalent of 3
    3'b100: y=I[4]; //3'b100 is the binary equivalent of 4
    3'b101: y=I[5]; //3'b101 is the binary equivalent of 5
    3'b110: y=I[6]; //3'b110 is the binary equivalent of 6
    3'b111: y=I[7]; //3'b111 is the binary equivalent of 7
    default y="z"; //default is used to write the code for the don't care condition, high impidence case
    endcase
end
endmodule

