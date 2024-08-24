@sum
M=0
(MAIN)
    @1
    D=M
    @ENDWHILE
    D;JLE

    // sum_ += r0
    @0
    D=M
    @sum
    M=M+D

    // r1 = r1 -1
    @1
    M=M-1

    @MAIN
    0;JMP

(ENDWHILE)
@sum
D=M
@ENDWHILE
0;JMP
