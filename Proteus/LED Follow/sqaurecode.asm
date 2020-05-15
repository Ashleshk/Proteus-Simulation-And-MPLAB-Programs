ORG 0000H
LJMP MAIN
ORG 0030H


MAIN:   MOV TMOD, #10H			;select timer  mode 1 mode 1
		MOV TH1,#0FFH			;from the calcution load upper-4-bits to th1
		MOV TL1,#19H			;from the calcution load lower-4-bits to tl1
	SETB P1.5				;control the fifth led of port 1
		ACALL DELAY_TIMER		;call delay function
		CLR P1.5				;set led low 
		ACALL DELAY_TIMER		;call again
		SJMP MAIN				;loop till the end
		
DELAY_TIMER:					;loop for delay
        SETB TR1				;set timer clock
		AGAIN: JNB TF1,AGAIN    ; check for timer-flag
		CLR TR1					;clear tr1
		CLR TF1					;clear timer flag
		MOV TH1,#0FFH			;load data to preset
		MOV TL1,#19H
		RET
END		