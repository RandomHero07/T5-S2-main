/* 
 * Do not change Module name 
*/
module main(A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,a,b,error,draw);

/*declaring the input matrices A,B
 which store the moves of each player and outputs indicating which player has won i.e, a(or)b */
input A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16;
wire c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,a1,b1,a2;
output a,b,error,draw;

/*checking the condition in which player A wins */

/for rows/
and (c,A1,A2,A3,A4);
and (d,A5,A6,A7,A8);
and (e,A9,A10,A11,A12);
and (f,A13,A14,A15,A16);
/for columns/
and (g,A1,A5,A9,A13);
and (h,A2,A6,A10,A14);
and (i,A3,A7,A11,A15);
and (j,A4,A8,A12,A16);
/for diagonals/
and (k,A1,A6,A11,A16);
and (l,A4,A7,A10,A13);
/now, we will combine all winning combinations of player A/
or (a1,c,d,e,f,g,h,i,j,k,l);
/*checking the condition in which player B wins */

/for rows/
and (m,B1,B2,B3,B4);
and (n,B5,B6,B7,B8);
and (o,B9,B10,B11,B12);
and (p,B13,B14,B15,B16);
/for columns/
and (q,B1,B5,B9,B13);
and (r,B2,B6,B10,B14);
and (s,B3,B7,B11,B15);
and (t,B4,B8,B12,B16);
/for diagonals/
and (u,B1,B6,B11,B16);
and (v,B4,B7,B10,B13);
/now, we will combine all winning combinations of player B/
or (b1,m,n,o,p,q,r,s,t,u,v);

/checking for draw/
nor (draw,a,b);

/checking and giving error message when invalid play is played that is s player choosing the block which is already chosen/
assign error=(A1&&B1)||(A2&&B2)||(A3&&B3)||(A4&&B4)||(A5&&B5)||(A6&&B6)||(A7&&B7)||(A8&&B8)||(A9&&B9)||(A10&&B10)||(A11&&B11)||(A12&&B12)||(A13&&B13)||(A14&&B14)||(A15&&B15)||(A16&&B16);

/final winning conditions i.e, non error cases/

not (a2,error);
and (a,a1,a2);
and (b,b1,a2);

endmodule