ORG 0000H
SJMP START
ORG 0035H
				 START : MOV 55H, #00000101B
				         MOV 56H, #00001010B
					 MOV 57H, #00001000B
					 MOV 58H, #00000101B
				         MOV 59H, #00000101B
					 MOV 5AH, #00001100B
						 MOV 5BH, #00001000B
						 MOV 5CH, #00011010B
						 MOV 5DH, #00001000B
						 MOV 5EH, #00100101B
						 
						 MOV R0, #55H 
						 MOV R2, #09
						 MOV R3, R2
				AGAIN :  MOV R1, #00
						 MOV A, @R0
			    REPEAT : INC R0
						 MOV B, @R0
						 XRL A, B
						 JNZ A, REPEAT
						 INC R1
						 DJNZ R2, REPEAT
						 MOV 0100H, A
						 MOV 0101H, R1
						 INC R0
						 MOV R2, R3
						 DEC R2
						 CJNE R0, #5FH AGAIN
						 END

