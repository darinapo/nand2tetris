// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


@R2
M = 0
@R0
D = M
@END //If condition is 0 then at least one of  the operands is 0
D;JEQ
@i //Saving the index then
M = D
@R1
D = M
@END
D;JEQ

(loop)
@R1
D = M
@R2
M = M + D  //Assging to R2
@i
M = M - 1
D = M
@loop
D; JGT
@END
0; JMP

(ZERO)
@R2
M = 0
(END)
@END
0;JMP
