// push argument 1
@ARG
D=M
@1
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop pointer 1
@THAT
D=A
@5
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@5
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@5
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@5
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 1
@THAT
D=M
@1
D=D+A
@5
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@5
A=M
M=D
// push argument 0
@ARG
D=M
@0
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
A=M-1
D=M
A=A-1
M=M-D
@SP
M=M-1
// pop argument 0
@ARG
D=M
@0
D=D+A
@5
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@5
A=M
M=D
// Label LOOP
(LOOP)
// push argument 0
@ARG
D=M
@0
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// if-goto COMPUTE_ELEMENT
@SP
A=M-1
D=M
@SP
M=M-1
@COMPUTE_ELEMENT
D;JNE
// goto END
@END
0;JMP
// Label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)
// push that 0
@THAT
D=M
@0
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push that 1
@THAT
D=M
@1
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
// pop that 2
@THAT
D=M
@2
D=D+A
@5
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@5
A=M
M=D
// push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
// pop pointer 1
@THAT
D=A
@5
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@5
A=M
M=D
// push argument 0
@ARG
D=M
@0
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
A=M-1
D=M
A=A-1
M=M-D
@SP
M=M-1
// pop argument 0
@ARG
D=M
@0
D=D+A
@5
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@5
A=M
M=D
// goto LOOP
@LOOP
0;JMP
// Label END
(END)
