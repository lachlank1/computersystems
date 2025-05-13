// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Multiplies R1 * R2 and stores result in R0

@temp
M=0
@R0
M=0

(CHECKR1)
@R1
D=M
@ABSR1
D;JLT

(CHECKR2)
@R2
D=M
@ABSR2
D;JLT

(COMPARE)
@R1
D=M
@R2
D=D-M
@SWAP
D;JLT

(MULTIPLY)
@R2
MD=M-1
@CHECKNEGATIVE
D;JLT
@R1
D=M
@R0
M=M+D
@MULTIPLY
0;JMP

(CHECKNEGATIVE)
@temp
D=M
@END
D;JEQ
@R0
M=-M
@END
0;JMP

(END)
@END
0;JMP

(ABSR2)
@temp
M=!M
@R2
M=-M
@COMPARE
0;JMP

(ABSR1)
@temp
M=!M
@R1
M=-M
@CHECKR2
0;JMP

(SWAP)
@R1
D=M
@hold
M=D
@R2
D=M
@R1
M=D
@hold
D=M
@R2
M=D
@MULTIPLY
0;JMP

