module tictactoe_tb;
/*declaring inputs and outputs */
wire a,b,error,draw;
reg A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16;
main M (A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,a,b,error,draw);



/*since it is not possible to simulate all 2^32 cases,
we are going to look at one case each 
that is 
A wins
*/
initial
begin
$monitor("%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b  %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b  %b  %b   %b  %b",A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,a,b,draw,error);
A1=1'b1;
A2=1'b1;
A3=1'b1;
A4=1'b1;
A5=1'b0;
A6=1'b0;
A7=1'b0;
A8=1'b0;
A9=1'b0;
A10=1'b0;
A11=1'b0;
A12=1'b0;
A13=1'b0;
A14=1'b0;
A15=1'b0;
A16=1'b0;
B1=1'b0;
B2=1'b0;
B3=1'b0;
B4=1'b0;
B5=1'b1;
B6=1'b1;
B7=1'b1;
B8=1'b0;
B9=1'b0;
B10=1'b1;
B11=1'b0;
B12=1'b0;
B13=1'b0;
B14=1'b0;
B15=1'b0;
B16=1'b0;
#10


A1=1'b0;
A2=1'b0;
A3=1'b0;
A4=1'b0;
A5=1'b1;
A6=1'b0;
A7=1'b1;
A8=1'b0;
A9=1'b0;
A10=1'b1;
A11=1'b1;
A12=1'b0;
A13=1'b0;
A14=1'b0;
A15=1'b0;
A16=1'b0;
B1=1'b1;
B2=1'b1;
B3=1'b1;
B4=1'b1;
B5=1'b0;
B6=1'b0;
B7=1'b0;
B8=1'b0;
B9=1'b0;
B10=1'b0;
B11=1'b0;
B12=1'b0;
B13=1'b0;
B14=1'b0;
B15=1'b0;
B16=1'b0;
#10

A1=1'b1;
A2=1'b1;
A3=1'b0;
A4=1'b0;
A5=1'b1;
A6=1'b0;
A7=1'b0;
A8=1'b0;
A9=1'b0;
A10=1'b0;
A11=1'b0;
A12=1'b0;
A13=1'b0;
A14=1'b0;
A15=1'b0;
A16=1'b0;
B1=1'b0;
B2=1'b0;
B3=1'b0;
B4=1'b0;
B5=1'b0;
B6=1'b0;
B7=1'b0;
B8=1'b0;
B9=1'b0;
B10=1'b0;
B11=1'b1;
B12=1'b1;
B13=1'b1;
B14=1'b1;
B15=1'b0;
B16=1'b1;
#10

A1=1'b1;
A2=1'b0;
A3=1'b0;
A4=1'b0;
A5=1'b0;
A6=1'b0;
A7=1'b0;
A8=1'b0;
A9=1'b0;
A10=1'b0;
A11=1'b0;
A12=1'b0;
A13=1'b0;
A14=1'b0;
A15=1'b0;
A16=1'b0;
B1=1'b1;
B2=1'b0;
B3=1'b0;
B4=1'b0;
B5=1'b0;
B6=1'b0;
B7=1'b0;
B8=1'b0;
B9=1'b0;
B10=1'b0;
B11=1'b0;
B12=1'b0;
B13=1'b0;
B14=1'b0;
B15=1'b0;
B16=1'b0;



end



endmodule