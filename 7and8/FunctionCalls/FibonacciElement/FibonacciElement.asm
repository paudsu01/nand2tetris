// Set SP=261
@261
D=A
@SP
M=D
// goto Sys.init
@Sys.init
0;JMP
// function Main.fibonacci 0
(Main.fibonacci)
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
// lt
@SP
A=M-1
D=M
A=A-1
D=M-D
@jumpLabel0
D;JLT
D=0
@endLabel0
0;JMP
(jumpLabel0)
D=-1
(endLabel0)
@SP
A=M-1
A=A-1
M=D
@SP
M=M-1
// if-goto N_LT_2
@SP
A=M-1
D=M
@SP
M=M-1
@N_LT_2
D;JNE
// goto N_GE_2
@N_GE_2
0;JMP
// Label N_LT_2
(N_LT_2)
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
// return
@LCL
D=M
@5
M=D
@5
D=A
@5
D=M-D
A=D
D=M
@6
M=D
@SP
A=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@1
D=A
@5
D=M-D
A=D
D=M
@4
M=D
@2
D=A
@5
D=M-D
A=D
D=M
@3
M=D
@3
D=A
@5
D=M-D
A=D
D=M
@2
M=D
@4
D=A
@5
D=M-D
A=D
D=M
@1
M=D
@6
A=M
0;JMP
// Label N_GE_2
(N_GE_2)
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
// call Main.fibonacci 1
//push return-address, LCL, ARG, THIS, THAT
@Main.fibonacci$return0
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-n-5
@6
D=A
@SP
D=M-D
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci$return0)
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
// call Main.fibonacci 1
//push return-address, LCL, ARG, THIS, THAT
@Main.fibonacci$return1
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-n-5
@6
D=A
@SP
D=M-D
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci$return1)
// add
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
// return
@LCL
D=M
@5
M=D
@5
D=A
@5
D=M-D
A=D
D=M
@6
M=D
@SP
A=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@1
D=A
@5
D=M-D
A=D
D=M
@4
M=D
@2
D=A
@5
D=M-D
A=D
D=M
@3
M=D
@3
D=A
@5
D=M-D
A=D
D=M
@2
M=D
@4
D=A
@5
D=M-D
A=D
D=M
@1
M=D
@6
A=M
0;JMP
// function Sys.init 0
(Sys.init)
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Main.fibonacci 1
//push return-address, LCL, ARG, THIS, THAT
@Main.fibonacci$return2
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=M
@SP
A=M
M=D
@SP
M=M+1
@3
D=M
@SP
A=M
M=D
@SP
M=M+1
@4
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-n-5
@6
D=A
@SP
D=M-D
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci$return2)
// Label END
(END)
// goto END
@END
0;JMP
