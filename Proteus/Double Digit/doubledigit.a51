ORG 0000H
	LJMP MAIN
ORG 0030H
	
MAIN:  MOV DPTR , #1000H
		MOV R3, #00H      ;TO CONTROL UNITS PLACE
		MOV R2, #01H	  ;TO CONTROL TENS PLACE
 
		MOV P2 ,#0C0H	; LOADING VALUE WITH '0' TENS PLACE
		
	UP:	MOV A,R3
		MOVC A,@A+DPTR
		MOV P1,A		;INITALISE WITH DIGIT 0
		 
		ACALL DELAY
		INC R3
		CJNE R3,#0AH,UP		
		 MOV R3,#00H
		 
		
		
		MOV A,R2
		MOVC A,@A+DPTR
		MOV P2,A		;INITALISE WITH DIGIT 1
		 
		ACALL DELAY
		INC R2
		CJNE R2,#0AH,UP		
		 MOV R2,#00H
 		
		SJMP MAIN

DELAY:   
		MOV R0,#0FFH
	UPP:MOV R4,#0FFH
	AGN:DJNZ R4,AGN
		 DJNZ R0,UPP
		 
		RET
		
ORG 1000H
DB 0C0H,0F9H,0A4H,0B0H,99H,92H,82H,0F8H,80H,90H
END	