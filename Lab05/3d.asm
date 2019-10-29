//Calculates C = A + B
//Pointer for A, B, C are stored in R0, R1, R2 respectively
//Value for n and m are stored in R3 and R4 respectively

@i
M=0

@j
M=0

@R0		//Location of A
D=M
@at
M=D

@R1		//Location of B
D=M
@bt
M=D

@R2		//Location of C
D=M
@ct
M=D


(loop1)
	@i
	D=M
	@R3		//Value of n
	D=D-M
	@end1
	D;JGE
	
	@j
	M=0
	
	(loop2)
		@j
		D=M
		@R4		//Value of m
		D=D-M
		@end2
		D;JGE
		
		@at
		A=M
		D=M
		
		@bt
		A=M
		D=D+M
		
		@ct
		A=M
		M=D
		
		@at
		M=M+1
		@bt
		M=M+1
		@ct
		M=M+1
		
		@j
		M=M+1
		
		@loop2
		0;JMP
	
	(end2)
	@i
	M=M+1
	
	@loop1
	0;JMP

(end1)
@end1
0;JMP
