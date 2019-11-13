//Array pointer is stored in R0 and end of array is assumed as 0

@R0
D=M
@curr
M=D

@total
M=0

(loop)
	@curr
	A=M
	D=M
	@end
	D;JEQ
	
	@curr
	M=M+1
	@total
	M=M+1
	
	@loop
	0;JMP
(end)
@end
0;JMP
