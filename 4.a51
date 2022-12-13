//find determinant
//[12 9]
//[3 15]
//(12x15)-(3x9)=153

ORG 0000H
SJMP START
ORG 0035H
START: MOV R1,#12
MOV R2,#9
MOV R3,#3
MOV R4,#15
//calculating 12x15
MOV A,R1
MOV B,R4
MUL AB
//storing that result in r5
MOV R5,A
//calculating 3x9
MOV A,R2
MOV B,R3
MUL AB
//storing that result in b
MOV B,A
//mov the prev 12x15 result to acc
MOV A,R5
//subtract A and B
SUBB A,B
END
