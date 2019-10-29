//size of arr
@0
D=M
// count of no of 1's
@1
M=0

//pointer to arr
@2
M=3

@START
0;JEQ

(START)

@0
D=M
@2
D=D-M
@SORT
D;JEQ

@2
A=M
D=M&1
M=A+1



@one