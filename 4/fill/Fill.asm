// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.


// pseudocode
//while True:
//	if key_input == '0':
//		if memory_input[16384] == 0:
//			pass
//		else:
//			paint every pixel white
//	else:
//		if memory_input[16384] == 0:
//			paint every pixel black
//		else:
//			pass
(MAIN)
	@24576
	D=M
	@KEY_ZERO
	D;JEQ
// key input not zero
	@16384
	D=M
// if RAM[16384] is 0 then paint black
	@PAINT_BLACK
	D;JEQ
// else nothing
	@MAIN
	0;JMP
(KEY_ZERO)
	@16384
	D=M
// if RAM[16384] == 0, then nothing to do
// else paint white
	@PAINT_WHITE
	D;JNE
	@MAIN
	0;JMP

(PAINT_BLACK)
	@PAINT_VALUE
	M=-1
	@PAINT
	0;JMP

(PAINT_WHITE)
	@PAINT_VALUE
	M=0
	@PAINT
	0;JMP

(PAINT)
	@32
	D=A
	@LOOPS_LEFT
	M=D
(LOOP1)
	@LOOPS_LEFT
	D=M
	@MAIN
	D;JEQ
	
	@16383	
	D=A
	@LOOPS_LEFT
	D=D+M
	@NEW_ADDRESS
	M=D
	
	@PAINT_VALUE
	D=M
	@NEW_ADDRESS
	A=M
	M=D

	@LOOPS_LEFT
	D=M-1
	M=D
		
	@LOOP1
	0;JMP	
