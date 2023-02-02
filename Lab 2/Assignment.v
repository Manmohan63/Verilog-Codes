module Assignment ( input x1, x2, x3, output y);
    wire w1, w2, w3, w4, w5, w6;
    and and1 (w1, x1, x3);
    and and2 (w2, x1, x2);
    or or1(y, w1, w2);
endmodule