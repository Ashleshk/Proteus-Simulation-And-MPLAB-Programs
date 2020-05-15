ORG 0000H
	LJMP MAIN
ORG 0030H

MAIN:  MOV P1 ,#00H         ;set p1 to low 
		ACALL DELAY         ;generate delay 250ms
		MOV P1, #0FFH		;set p1 to high
		ACALL DELAY			;agin 250ms delay
		SJMP MAIN
		
		
DELAY:						;dELAY LOOP
		MOV R2,#5
TOP:	MOV R3,#90
UP:		MOV R4,#0FFH
AGAIN:	DJNZ R4,AGAIN
		DJNZ R3,UP
		DJNZ R2,TOP
		RET

END