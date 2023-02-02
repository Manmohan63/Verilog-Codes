module mux8x1 (output Y, input I0, I1, I2, I3, I4, I5, I6, I7, S2, S1, S0);
    wire w0, w1, w2, w3, w4, w5, w6, w7;
    assign w0 = (~S2 & ~S1 & ~S0 & I0);
    assign w1 = (~S2 & ~S1 & S0 & I1);
    assign w2 = (~S2 & S1 & ~S0 & I2);
    assign w3 = (~S2 & S1 & S0 & I3);
    assign w4 = (S2 & ~S1 & ~S0 & I4);
    assign w5 = (S2 & ~S1 & S0 & I5);
    assign w6 = (S2 & S1 & ~S0 & I6);
    assign w7 = (S2 & S1 & S0 & I7);

    assign Y = (w0 | w1 | w2 | w3 | w4 | w5 | w6 | w7);
endmodule