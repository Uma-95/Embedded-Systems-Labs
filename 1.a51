// add 10 numbers

ORG 0000H
SJMP START
ORG 0035H
START: MOV R1, #10     	// Storing 10 in register R1 
MOV A, #00H    	//Accumulator-->0
MOV R0, #00H	// R0 register-->0 
AGAIN:  INC R0  //increment R0 10 times for 10 values(1-10)
ADD A, R0 //add acc and R0
DJNZ R1,AGAIN 	//Decrement and jump to AGAIN if not equal to zero
 END