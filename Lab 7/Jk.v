module jk ();
    input j,k;
    output q;
    reg q;
    always @(j or k)
    begin
    if (j==1 && k==0)
    q = 1;
    else if (j==0 && k==1)
    q = 0;
    else if (j==0 && k==0)
    q = q;
    else if (j==1 && k==1)
    q = ~q;
    end
endmodule