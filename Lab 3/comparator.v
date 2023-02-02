    module comparator_behavorial(
    output reg less, equal, greater,
    input A3, A2, A1, A0, B3, B2, B1, B0
    );

    always @(A3 or A2 or A1 or A0 or B3 or B2 or B1 or B0)
     begin
        if(A3>B3)   begin  
            less = 0;
            equal = 0;
            greater = 1;    end
        else if(A3<B3) begin 
            less = 1;
            equal = 0;
            greater = 0;    end
        else if(A3==B3)    begin 
             if(A2>B2)   begin  
            less = 0;
            equal = 0;
            greater = 1;    end
            else if(A2<B2) begin 
            less = 1;
            equal = 0;
            greater = 0;    end
            else if(A2==B2)    begin 
                if(A1>B1)   begin  
                less = 0;
                equal = 0;
                greater = 1;    end
                else if(A1<B1) begin 
                less = 1;
                equal = 0;
                greater = 0;    end
                else if(A1==B1)    begin 
                    if(A0>B0)   begin  
                    less = 0;
                    equal = 0;
                    greater = 1;    end
                    else if(A0<B0) begin 
                    less = 1;
                    equal = 0;
                    greater = 0;    end
                    else if(A0==B0) begin 
                    less = 0;
                    equal = 1;
                    greater = 0;    end
            end
            end
        end 
    end
endmodule