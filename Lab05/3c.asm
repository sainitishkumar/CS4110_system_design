//Pointer for array is stored in R0 and size stored in R1

@onescount
M=0

@zeroscount
M=0

@R0
D=M
@curr
M=D

@i
M=0

(LOOP1)
	@i
	D=M
	@R1
	D=D-M
	@END1
	D;JGE
	
	@curr
	A=M
	D=M
	@ZERO
	D;JEQ
	
	@onescount
	M=M+1
	@ENDIF
	0;JMP
	
	(ZERO)
	@zeroscount
	M=M+1
	
	(ENDIF)
	@curr
	M=M+1
	@i
	M=M+1
	
	@LOOP1
	0;JMP
(END1)

@R0
D=M
@curr
M=D

@i
M=0

(LOOP2)
	@i
	D=M
	@zeroscount
	D=D-M
	@END2
	D;JGE
	
	@curr
	A=M
	M=0
	
	@curr
	M=M+1
	@i
	M=M+1
	
	@LOOP2
	0;JMP
(END2)
	
@i
M=0

(LOOP3)
	@i
	D=M
	@onescount
	D=D-M
	@END3
	D;JGE
	
	@curr
	A=M
	M=1
	
	@curr
	M=M+1
	@i
	M=M+1
	
	@LOOP3
	0;JMP
(END3)
@END3
0;JMP
