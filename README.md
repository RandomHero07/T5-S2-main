# T5-S2 project
## TIC TAC TOE GAME


### Team members:

<details>
  <summary>Detail</summary>

 >1. 221CS219  ;  Gogineni. Hari Hara Madhava goginenihariharamadhava.221cs219@nitk.edu.in  <8688260347>


 >2.221CS216  ;  Daggupati. Sai Trisha daggupatisaitrisha.221cs216@nitk.edu.in <9542594994>

</details>

## Abstract
<details>
  <summary>Detail</summary>


>Background: Tic-Tac-Toe, a timeless classic, has captivated players for generations with its simplicity. Our mini-project aims to breathe new life into this iconic game by introducing exciting twists and improvements. The traditional 3x3 grid provides a solid foundation, but we believe it can be elevated to engage and challenge players in fresh ways.
>Motivation:
>1.	Evolving Tradition: Tic-Tac-Toe's simplicity doesn't diminish its appeal; rather, it inspires us to enhance its gameplay and strategy while retaining its core essence.
>2.	A Universal Pastime: This project seeks to create an updated Tic-Tac-Toe experience that can be enjoyed by people of all ages, fostering social interaction and cognitive development.
>3.	Educational Value: By incorporating novel mechanics, we aim to make learning through play an enriching experience for children, educators, and enthusiasts alike.
>4.	Game Diversity: We recognize the need for diverse games beyond the digital realm and aim to make a compelling physical version of the enhanced Tic-Tac-Toe.
>5.	Creative Exploration: This project offers an opportunity to explore design, innovation, and game mechanics, expanding our understanding of game development beyond conventional boundaries.
>Unique Contribution:
Made the code as compact as possible. Logisem implementation was also done in understandable way. We hard ware model is easy to make. Desired customizations can be done based on preferences.

</details>

## Logisim Circuit
<details>
  <summary>Detail</summary>


![controller](https://github.com/RandomHero07/T5-S2/assets/148988988/4d9b3fcd-6d14-4ecb-8f86-0e06602a0144)
![mover](https://github.com/RandomHero07/T5-S2/assets/148988988/d1f08cf9-01c6-4687-b829-fcd67a717074)
![Screenshot 2023-10-13 203410](https://github.com/RandomHero07/T5-S2/assets/148988988/b092a55e-efd0-4178-870b-1b6b3cf5dad1)
![win detector](https://github.com/RandomHero07/T5-S2/assets/148988988/ffd3b144-24a4-4f8c-a4ea-de936ec206cb)

</details>

## Verilog code
<details>
  <summary>Detail</summary>

```
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

testbench code
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
```
</details>

## References
<details>
  <summary>Detail</summary>

>1.	Verilog HDL: A Guide to Digital Design and Synthesis
>2.	https://www.youtube.com/watch?v=cMz7wyY_PxE
>3.	https://www.youtube.com/watch?v=cdMJvFT-Afc&t=10s
>4.	https://www.youtube.com/watch?v=Il5ZAfsUkPk	

</details>

   
