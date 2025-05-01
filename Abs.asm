// Calculates the absolute value of R1 and stores the result in R0.
// (R0, R1 refer to RAM[0], and RAM[1], respectively.)

// Put your code here.

@R0 
M=0

@R1 
D=M

@POSITIVE 
D;JGE

@NEGATIVE
D=-D
D;JGE

(POSITIVE)
@R0
M=D

(NEGATIVE)
@R0 
M=D

(END)
@END 
0;JMP