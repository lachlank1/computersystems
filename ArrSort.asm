// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

/// ArrSort.asm
// In-place selection sort
// Inputs: R1 = start address, R2 = length
// Output: sorted array in-place, -1 in R0 when done

// ArrSort.asm
// In-place selection sort using @I as the outer loop index
// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Initialize base address in ptr and length in count
// ArrSort.asm
// In-place selection sort using @I as the outer loop index
// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// ArrSort.asm
// In-place selection sort using @I as the outer loop index
// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@i
M=0          

(OUTERLOOP)
@i
D=M          
@R2
D=M-D       
@DONE
D;JLE        

@j
M=0         

(INNERLOOP)
@j
D=M          
@R2
D=M-D
D=D-1      
@ENDINNERLOOP
D;JLE        


@j
D=M
@R1
A=M+D
D=M
A=A+1
D=M-D
@SWAPNOTNEEDED
D;JGT
@j
D=M
@R1
A=M+D
D=M
@temp
M=D
@j
D=M
@R1
A=M+D
A=A+1
D=M
A=A-1
M=D
D=A
@hold
M=D
@temp
D=M
@hold
A=M+1
M=D

(SWAPNOTNEEDED)
@j
M=M+1
@INNERLOOP
0;JMP

(ENDINNERLOOP)
@i
M=M+1
@OUTERLOOP
0;JMP

(DONE)
@R0
M=1
M=-M

(END)
@END
0;JMP