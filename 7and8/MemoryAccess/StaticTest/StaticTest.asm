// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 8
@StaticTest.vm.8
D=A
@temporary
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@temporary
A=M
M=D
// pop static 3
@StaticTest.vm.3
D=A
@temporary
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@temporary
A=M
M=D
// pop static 1
@StaticTest.vm.1
D=A
@temporary
M=D
@SP
A=M-1
D=M
@SP
M=M-1
@temporary
A=M
M=D
// push static 3
@StaticTest.vm.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
@StaticTest.vm.1
D=M
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
// push static 8
@StaticTest.vm.8
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
