MAIN: MOV R3,#0FFH
		MOV A,#00H
		ACALL DELAY
		COUNT: MOV P0,A
		INC A 
		ACALL DELAY
		DJNZ R3,COUNT
		MOV P0,#0FFH
		ACALL DELAY
		SJMP $
DELAY:	MOV R2,#180
		UP:MOV R4,#0FFH
		AGAIN:DJNZ R4,AGAIN
		DJNZ R2,UP
		RET
END		