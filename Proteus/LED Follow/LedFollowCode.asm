ORG 0000H
	LJMP MAIN
ORG 0030H

MAIN:  MOV P1 , #00H
		MOV TMOD,#01H 			; TIMER 0 MODE 1
		MOV TL0,#0FDH			;LOAD TLO WITTH FDH
		MOV TH0,#4BH			;LOAD THO WITH 4BH
		MOV A, #01H				;SET CONTENT TO 01H
		LA: MOV P1,A			;PUT IT IN P1
		ACALL DELAY_TIMER		;call   DELAY
	RL A					;SHIFT CONTENT TO LEFT
		SJMP LA				    ;loop BACK
		
DELAY_TIMER:					;loop for delay
        SETB TR0				;set timer clock
		AGAIN: JNB TF0,AGAIN    ; check for timer-flag
		CLR TR0					;clear tr1
		CLR TF0				    ;clear timer flag
		MOV TH0,#4BH			;load data to preset
		MOV TL0,#0FDH
		RET
END	