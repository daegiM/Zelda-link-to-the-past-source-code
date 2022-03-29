;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.09.26(THU)
;
;--------------------------------------------------------------------
;
		ORG	0AFD00H
;
;=============================================== (zel_bg3) ===========
		GLB	BMBTIMER,FLNODSP,FLNOCLS
;=====================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;
;
;;************************************************************************
;	FLOOR NOMBER DSP						*	
;************************************************************************	
;
FLNODTH		EQU	$
;			;   1:     2:     3:     4:     5:     6:     7:     8:     9:     0:
		WORD	02508H,02509H,02509H,0250AH,0250BH,0250CH,0250DH,0251DH,0E51CH,0250EH,0007FH
FLNODTL		EQU	$
		WORD	02518H,02519H,0A509H,0251AH,0251BH,0251CH,02518H,0A51DH,0E50CH,0A50EH,0007FH
;
;
FLNODSP		EQU	$
		MEM16
		IDX16
		REP	#00110000B		; memory,index 16bit mode
;
		LDA	!FLNODFG
		AND	#000FFH
		BEQ	FLNOCLS			; display ?
;						; yes
		INC	A
		CMP	#000C0H
		BNE	FNDSP020		; end ?
;						; yes
		LDA	#00000H
FNDSP020	EQU	$
		STA	!FLNODFG
;
		PHB
		PHK
		PLB		; PBR => DBR
;
;// 03.03.19 //;*******************	IFLNO initial start	*********************
;// 03.03.19 //;
;// 03.03.19 //		LDA	#025H			; atoribuut set !
;// 03.03.19 //		STA	>IFLNO+001H
;// 03.03.19 //		STA	>IFLNO+041H
;// 03.03.19 //		STA	>IFLNO+003H
;// 03.03.19 //		STA	>IFLNO+043H
;// 03.03.19 //;
;// 03.03.19 //		LDA	#00FH			; char No set (F) !
;// 03.03.19 //		STA	>IFLNO+002H
;// 03.03.19 //		LDA	#01FH			;
;// 03.03.19 //		STA	>IFLNO+042H
;// 03.03.19 //		LDA	#01EH			;
;// 03.03.19 //		STA	>IFLNO+000H
;// 03.03.19 //		LDA	#020H			; char No set (B) !
;// 03.03.19 //		STA	>IFLNO+040H
;// 03.03.19 //;
;// 03.03.19 //;*******************	IFLNO initial end	*********************
;
;*******************	IFLNO initial start	*********************
		LDA	#0251EH
		STA	>IFLNO+000H
;;;;;;;;		LDA	#0251FH
		INC	A
		STA	>IFLNO+042H
;;;;;;;;		LDA	#02520H
		INC	A
		STA	>IFLNO+040H
		LDA	#0250FH
		STA	>IFLNO+002H
;
		LDX	#00000H
		LDA	<FLORNO-1
		BMI	FNDP000			; chika ?
;						; no
		LDA	<FLORNO
		BNE	FNDP0000		;
;						;
		LDA	<RMXYCT
		CMP	#00002H
		BEQ	FNDP0000	; chapel ?
;					; no
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>MODTBL0
		CMP	#002H
		BCS	FNDP0010	; rain on ?
;					; yes
		LDA	#003H
		STA	!SOUND1			; <sound1>
FNDP0010	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
FNDP0000	EQU	$
		LDA	<FLORNO
		AND	#000FFH
;// 03.03.19 //		ASL	A
;// 03.03.19 //		TAY
;// 03.03.19 //		LDA	FLNODTH,Y
;// 03.03.19 //		STA	>IFLNO,X
;// 03.03.19 //		LDA	FLNODTL,Y
;// 03.03.19 //		STA	>IFLNO+040H,X
;// 03.03.19 //		BRA	FNDP100
		BRA	FNDP050
;
FNDP000		EQU	$			; chika !!!
		MEM8
		SEP	#00100000B		; memory 8bit mode
;
;// 03.09.26 //		LDA	!SVSND1
;// 03.09.26 //		BEQ	FNDP040			; sound off ?
;// 03.09.26 //;						; yes
		LDA	#005H
		STA	!SOUND1			; <sound1>
FNDP040		EQU	$
		MEM16
		REP	#00100000B		; memory 16bit mode
;
		INX
		INX
		LDA	<FLORNO
		ORA	#0FF00H
		EOR	#0FFFFH
FNDP050		EQU	$
		ASL	A
		TAY
		LDA	FLNODTH,Y
		STA	>IFLNO,X
		LDA	FLNODTL,Y
		STA	>IFLNO+040H,X
;// 03.03.19 //FNDP100		EQU	$
;
		MEM8
		IDX8
		SEP	#00110000B		; memory,index 8bit mode
;
		PLB		; DBR reset !!
;
		INC	<B3CHFG		; mater display
		RTL
;
;
;************************************************************************
;	FLOOR NOMBER CLEAR						*	
;************************************************************************	
;
		MEM16
		IDX16
;
FLNOCLS		EQU	$
		REP	#00100000B	; memory 16bit mode
;
		LDA	#0007FH
		STA	>IFLNO+000H		
		STA	>IFLNO+040H		
		STA	>IFLNO+002H		
		STA	>IFLNO+042H		
;// 03.03.19 //		LDA	#000H
;// 03.03.19 //		STA	>IFLNO+001H		
;// 03.03.19 //		STA	>IFLNO+041H		
;// 03.03.19 //		STA	>IFLNO+003H		
;// 03.03.19 //		STA	>IFLNO+043H		
;
		MEM8
		IDX8
		SEP	#00110000B		; memory,index 8bit mode
;
		RTL
;
;
;
;
;
;************************************************************************
;	timer								*
;************************************************************************
;
BMBTIMER	EQU	$
	LDA	!BMTMCT
	BNE	TM100			; sec counter zero ? [ no:TM100 ]
;
	LDA	!BMTMER
	BMI	TM110			; timer zero ? [ yes:TM110 ]
;;;	BEQ	TM110			; timer zero ? [ yes:TM110 ]
;
	DEC	!BMTMER			; timer dec !!
;;;	LDA	#0BCH			; sec counter set !!
	LDA	#62			; sec counter set !!
	STA	!BMTMCT
TM100	EQU	$
	DEC	!BMTMCT			; sec counter dec !!
;;;TM110	EQU	$
;----------
	LDA	!BMTMER
	BPL	TM000
;;;	BNE	TM000
;
TM110	EQU	$
	LDA	#0FFH
	STA	!BMTMER
;
	MEM16
	IDX16
	REP	#00110000B		; memory,index 16bit mode !!
;
	BRA	FLNOCLS
;
	MEM8
	IDX8
;
TM000	EQU	$
;----------
	LDA	!BMTMER
	STA	4204H
	STZ	4205H
	LDA	#10
	STA	4206H
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	LDA	4214H
	ASL	A
	STA	<WORK0
	LDA	4216H
	ASL	A
	STA	<WORK2
;
	PHB
	PHK
	PLB		; PBR => DBR
;
	MEM16
	REP	#00100000B		; memory 16bit mode !!
;
	LDX	#2*2-2
TM020	EQU	$
	LDY	<WORK0,X
	DEY
	DEY
	BPL	TM040			; zero ? [ no:TM040 ]
;
	LDY	#9*2
	CPX	#00
	BNE	TM040			; ichi no kurai [ yes:TM040 ]
;
	LDY	#10*2
TM040	EQU	$
	LDA	FLNODTH,Y
	STA	>IFLNO+000H,X
	LDA	FLNODTL,Y
	STA	>IFLNO+040H,X
	DEX
	DEX
	BPL	TM020			; loop end ? [ no:TM020 ]
;
	MEM8
	SEP	#00100000B		; memory 8bit mode !!
;
	PLB		; DBR reset !!
;
	RTL
;
;
		END
