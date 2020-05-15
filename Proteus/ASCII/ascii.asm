 ORG 0000H
 LJMP MAIN
 ORG 0036H

MAIN:
    MOV R3, #26                	;SET MAX LIMIT FOR COUNTER
    MOV A , #'A'                  ;SET ACC OOH SO AS P1 PORT
                         
    COUNT:  MOV P1,A              ;MOV CONTENT OF A TO P1
    dec R2
	ACALL DELAY   
    INC A                          ;DA USED FOR BCD CORRECTION
    DJNZ R3 , COUNT
	SJMP $
    
DELAY:                        ;DELAY LOOP
    MOV R2,#180
    UP:MOV R4,#0FFH
    AGAIN: DJNZ R4,AGAIN
    DJNZ R2,UP
    RET
END 



