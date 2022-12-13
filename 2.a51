//Greatest number from the given 
//8 1 9 12 6 5 4 15 
ORG 0000H;
	SJMP START;
	ORG 0035H;
		START: MOV R2,#8 
		MOV R4,#1
		MOV A,R4 
		SUBB A,R2 
		JC NOW//Jump to now if carry is set
		MOV B,R4 //else move the value in R4 to B
		NOW:MOV B,R2
		
		MOV R2,#9
		ACALL CHECK
		
		MOV R2, #12
		ACALL CHECK
		
		MOV R2, #6
		ACALL CHECK
		
		
		MOV R2, #5
		ACALL CHECK
		
		
		MOV R2, #4
		ACALL CHECK
		
		
		MOV R2, #15
		ACALL CHECK
	
		CHECK:
		MOV A,B
		SUBB A,R2
		MOV B,R2
		RET 
		
		END