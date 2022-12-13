//ganpati pattern LEDs
ORG 0000H
SJMP START

START: MOV R0,#08H // moving 8 in R0 to 8 bits in registers.
 MOV A,#00H 
HERE: SETB C 
RLC A // rotate left with carry to set bits
MOV P1,A // send accumulator data to port 1 to blink LEDs
//8 LEDs connected to 8 pins of port 1
ACALL DELAY 
ACALL DELAY 
DJNZ R0, HERE 
JMP START

DELAY: MOV TMOD, #10H // Timer 1 Mode 1
MOV TH1,#00H  
MOV TL1,#10H // delay 50.5ms
SETB TR1 // start timer
CHECK: JNB TF1, CHECK 
// clear TF and stop timer
CLR TR1 
CLR TF1
RET 
END
