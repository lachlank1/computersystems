// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Find the minimum value in array starting at RAM[R1], length RAM[R2]
// Result stored in RAM[0]

@R1
D=M
@ptr
M=D        

@R2
D=M
@count
M=D       

@ptr
A=M
D=M
@R0
M=D        

(LOOP)
@count
D=M
@END
D;JEQ      

@ptr
A=M
D=M
@R0
D=D-M
@SKIP
D;JGE     

@ptr
A=M
D=M
@R0
M=D       

(SKIP)
@ptr
M=M+1      
@count
M=M-1      
@LOOP
0;JMP

(END)
@END
0;JMP
