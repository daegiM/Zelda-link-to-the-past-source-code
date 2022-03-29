;
		INCLUDE	zel_ram.asm
;
;-----------------------------------------------------------------------
;
;		ZELDA-3			1991.10.01(TUE)
;
;------------------------------------------------------------------------
;
		ORG	02FD00H
;
;=============================================== (zel_char) =============
		GLB	PWTRCGS0,PWTRCGS1,PLCGCN0,PLCGCN1,PLCGCN2
		GLB	PWTRCGS2,PWTRCGS3,THCGCN0,THCGCN1,THCGCN2
;=============================================== (zel_char) =============
		EXT	GDCGST,GDCGST1,GDCGST2,KOUKAST,MSCGST1,MSCGST2
;
		EXT	CORGENE,CGLPT3,CGLPT4,CGLPT8,PLAYCG,KENOBJ,TATEOBJ
;========================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;
;
;
;************************************************************************
;*		Player water CG. set			(PWTRCGS0)	*
;************************************************************************
PWTRCGS0	EQU	$
		LDA	#00000001B
		STA	<PLBGCKF	; player BG.1 check
PWTRCGS2	EQU	$
		LDA	#00000001B
		STA	!PCGCKF
PWTRS00		EQU	$
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDX	#000H
PWTRS40		EQU	$
		LDA	>CGRAM+100H,X
		PHA			; (A) push
		LDA	>CGRAM+1E0H,X
		STA	>CGRAM+100H,X
		STA	>CGWORK+100H,X
		PLA			; (A) pull
		STA	>CGRAM+1E0H,X
		STA	>CGWORK+1E0H,X
;
		LDA	>CGRAM+110H,X
		PHA			; (A) push
		LDA	>CGRAM+1F0H,X
		STA	>CGRAM+110H,X
		STA	>CGWORK+110H,X
		PLA			; (A) pull
		STA	>CGRAM+1F0H,X
		STA	>CGWORK+1F0H,X
;
		LDA	>CGRAM+1B0H,X
		PHA			; (A) push
		LDA	>CGRAM+170H,X
		STA	>CGRAM+1B0H,X
		STA	>CGWORK+1B0H,X
		PLA			; (A) pull
		STA	>CGRAM+170H,X
		STA	>CGWORK+170H,X
;
		INX
		INX
		CPX	#010H
		BNE	PWTRS40		; end ?
;					; yes
;// 02.10.30 //		LDA	#00200H
;// 02.10.30 //		STA	!CGSTPT		; (CGWORK) set
;// 02.10.30 //;
;// 02.10.30 //		LDX	PLYOJC
;// 02.10.30 //		LDA	>CGLPT7,X 
;// 02.10.30 //		AND	#000FFH
;// 02.10.30 //;///////		CLC
;// 02.10.30 //		ADC	#PLAYCG
;// 02.10.30 //		STA	<WORK0 
;// 02.10.30 //;
;// 02.10.30 //		IDX16
;// 02.10.30 //		REP	#00010000B	; index 16bit mode
;// 02.10.30 //;
;// 02.10.30 //		LDA	#00102H		;set point
;// 02.10.30 //		LDX	#00006H		;yoko kosu
;// 02.10.30 //		JSR	CHGSUB2 
;// 02.10.30 //;
;// 02.10.30 //		IDX8 
;// 02.10.30 //		SEP	#00010000B	; index 8bit mode
;// 02.10.30 //;
;// 02.10.30 //		LDX	PLYOJC1
;// 02.10.30 //		LDA	>CGLPT8,X 
;// 02.10.30 //		AND	#000FFH
;// 02.10.30 //		CLC
;// 02.10.30 //		ADC	#PLAYCG1
;// 02.10.30 //		STA	<WORK0 
;// 02.10.30 //;
;// 02.10.30 //		IDX16
;// 02.10.30 //		REP	#00010000B	; index 16bit mode
;// 02.10.30 //;
;// 02.10.30 //		LDA	#00110H		;set point
;// 02.10.30 //		LDX	#00007H		;yoko kosu
;// 02.10.30 //		JSR	CHGSUB2
;// 02.10.30 //;
;// 02.10.30 //		MEM8
;// 02.10.30 //		IDX8
;// 02.10.30 //		SEP	#00110000B	; memory,index 8bit mode
;// 02.10.30 //;
;// 02.10.30 //		LDX	!DJNNO
;// 02.10.30 //		LDA	>DJDTBL,X
;// 02.10.30 //		ORA	#00000001B
;// 02.10.30 //		STA	>DJDTBL,X	;
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF		; CG. write
		RTL
;
;
;
;************************************************************************
;*		Player water CG. reset			(PWTRCGS1)	*
;************************************************************************
PWTRCGS1	EQU	$
		STZ	<PLBGCKF	; player BG.2 check
PWTRCGS3	EQU	$
		STZ	!PCGCKF
		BRA	PWTRS00
;
;// 02.10.30 //		MEM16
;// 02.10.30 //		REP	#00100001B	; memory 16bit mode & CLC
;// 02.10.30 //;
;// 02.10.30 //		LDA	#00200H
;// 02.10.30 //		STA	!CGSTPT		; (CGWORK) set
;// 02.10.30 //;
;// 02.10.30 //		LDX	BOBOJC
;// 02.10.30 //		LDA	>CGLPT7,X 
;// 02.10.30 //		AND	#000FFH
;// 02.10.30 //;///////		CLC
;// 02.10.30 //		ADC	#DANJOBG
;// 02.10.30 //		STA	<WORK0 
;// 02.10.30 //;
;// 02.10.30 //		IDX16
;// 02.10.30 //		REP	#00010000B	; index 16bit mode
;// 02.10.30 //;
;// 02.10.30 //		LDA	#00102H
;// 02.10.30 //		LDX	#00006H
;// 02.10.30 //		JSR	CHGSUB2
;// 02.10.30 //;
;// 02.10.30 //		MEM8
;// 02.10.30 //		IDX8
;// 02.10.30 //		SEP	#00110000B	; memory,index 16bit mode
;// 02.10.30 //;
;// 02.10.30 //		STZ	<PLBGCKF	; player BG.2 check
;// 02.10.30 //;
;// 02.10.30 //		INC	<CGVMAF		; CG. write
;// 02.10.30 //		RTL
;
;
;
; 
;************************************************************************
;*		Player CG. change			(PLCGCN0)	*
;************************************************************************
PLCGCN0		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>ITMTBL6
		STA	<WORKC
;
		LDA	>ITMTBL8
		AND	#000FFH
		BRA	PLCGC000
; 
;************************************************************************
;*		Player CG. change			(PLCGCN1)	*
;************************************************************************
PLCGCN1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00202H
		STA	<WORKC
		LDA	#00404H
		BRA	PLCGC000
; 
;************************************************************************
;*		Player CG. change			(PLCGCN1)	*
;************************************************************************
PLCGCN2		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>ITMTBL6
		STA	<WORKC
		LDA	#00303H
PLCGC000	EQU	$
		STA	<WORKE
;
		LDA	#BANK CORGENE
		STA	<WORK2
;
		LDX	<WORKC
		LDA	>CGLPT3,X
		AND	#000FFH
		CLC
		ADC	#KENOBJ
		IDX16
		REP	#00010000B	; index 16bit mode
		LDX	#001B2H		; set point
		LDY	#00002H		; yoko kosuu
		JSR	PLCG200		; ken CG. set
;
		IDX8
		SEP	#00010000B	; index 8bit mode
		LDX	<WORKD
		LDA	>CGLPT4,X
		AND	#000FFH
		CLC
		ADC	#TATEOBJ
		IDX16
		REP	#00010000B	; index 16bit mode
		LDX	#001B8H		; set point
		LDY	#00003H		; yoko kosuu
		JSR	PLCG200		; tate CG. set
;
		IDX8
		SEP	#00010000B	; index 8bit mode
		LDX	<WORKE
		LDA	>CGLPT8,X
		AND	#000FFH
		ASL	A
		CLC
		ADC	#PLAYCG
		IDX16
		REP	#00010000B	; index 16bit mode
		LDX	#001E2H		; set point
		LDY	#0000EH		; yoko kosuu
		JSR	PLCG200		; player CG. set - 0
;
		MEM8
		IDX8
		SEP	#00110000B	; memory 16bit mode
;
		INC	<CGVMAF		; CG. change
		RTL
;
;
		MEM16
		IDX16
PLCG200		EQU	$
		STA	<WORK0
PLCG220		EQU	$
		LDA	[<WORK0]
		STA	>CGRAM,X
		STA	>CGWORK,X
		INC	<WORK0
		INC	<WORK0
		INX
		INX
		DEY
		BPL	PLCG220		; set end ?
;					; yes
		RTS
;
; 
;
;
		MEM8
		IDX8
;************************************************************************
;*		Thunder CG. change			(THCGCN0)	*
;************************************************************************
THCGCN0		EQU	$
		MEM16
		REP	#00100000B	; index 16bit mode
;
		LDX	#000H
THCG020		EQU	$
		LDA	>CGRAM+040H,X
		JSR	THCG400
		STA	>CGWORK+040H,X
		LDA	>CGRAM+050H,X
		JSR	THCG400
		STA	>CGWORK+050H,X
		LDA	>CGRAM+060H,X
		JSR	THCG400
		STA	>CGWORK+060H,X
		LDA	>CGRAM+070H,X
		JSR	THCG400
		STA	>CGWORK+070H,X
		LDA	>CGRAM+080H,X
		JSR	THCG400
		STA	>CGWORK+080H,X
		LDA	>CGRAM+090H,X
		JSR	THCG400
		STA	>CGWORK+090H,X
		LDA	>CGRAM+0A0H,X
		JSR	THCG400
		STA	>CGWORK+0A0H,X
		LDA	>CGRAM+0B0H,X
		JSR	THCG400
		STA	>CGWORK+0B0H,X
		LDA	>CGRAM+0C0H,X
		JSR	THCG400
		STA	>CGWORK+0C0H,X
		LDA	>CGRAM+0D0H,X
		JSR	THCG400
		STA	>CGWORK+0D0H,X
		LDA	>CGRAM+0E0H,X
		JSR	THCG400
		STA	>CGWORK+0E0H,X
		LDA	>CGRAM+0F0H,X
		JSR	THCG400
		STA	>CGWORK+0F0H,X
;
;// 03.06.10 //		LDA	>CGRAM+160H,X
;// 03.06.10 //		STA	>CGWORK+160H,X
;// 03.06.10 //		LDA	>CGRAM+180H,X
;// 03.06.10 //		STA	>CGWORK+180H,X
;// 03.06.10 //		LDA	>CGRAM+1A0H,X
;// 03.06.10 //		STA	>CGWORK+1A0H,X
;// 03.06.10 //		LDA	>CGRAM+1F0H,X
;// 03.06.10 //		STA	>CGWORK+1F0H,X
		INX
		INX
		CPX	#010H
		BEQ	THCG040		; BG. CG. set end ?
;					; no
		JMP	THCG020
;
THCG040		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDA	>CGWORK+040H
		TAY
		LDA	>CGRAM+000H
		BNE	THCG050		;
;					;
		TAY
THCG050		EQU	$
		TYA
		STA	>CGWORK+000H
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
;// 03.10.01 //		LDA	<GMMODE
;// 03.10.01 //		BNE	THCG080		; ground ?
;// 03.10.01 //;					; yes
;// 03.10.01 //		MEM16
;// 03.10.01 //		IDX16
;// 03.10.01 //		REP	#00110000B	; memory,index 16bit mode
;// 03.10.01 //;
;// 03.10.01 //		LDA	#04020H
;// 03.10.01 //		STA	<WD2132R
;// 03.10.01 //		LDA	#08040H
;// 03.10.01 //		STA	<WD2132G
;// 03.10.01 //;
;// 03.10.01 //		LDX	#04F33H
;// 03.10.01 //		LDY	#0894FH
;// 03.10.01 //		LDA	<MPDTNO
;// 03.10.01 //		BEQ	THCG070		; mori ?
;// 03.10.01 //;					; no
;// 03.10.01 //		CMP	#00040H
;// 03.10.01 //		BEQ	THCG070		; ura-mori ?
;// 03.10.01 //;					; no
;// 03.10.01 //		CMP	#0005BH
;// 03.10.01 //		BEQ	THCG060		; piramido ?
;// 03.10.01 //;					; no
;// 03.10.01 //		LDX	#04C26H
;// 03.10.01 //		LDY	#08C4CH
;// 03.10.01 //		CMP	#00003H
;// 03.10.01 //		BEQ	THCG060		; yama ?
;// 03.10.01 //;					; no
;// 03.10.01 //		CMP	#00005H
;// 03.10.01 //		BEQ	THCG060		; yama ?
;// 03.10.01 //;					; no
;// 03.10.01 //		CMP	#00007H
;// 03.10.01 //		BEQ	THCG060		; yama ?
;// 03.10.01 //;					; no
;// 03.10.01 //		LDX	#04A26H
;// 03.10.01 //		LDY	#0874AH
;// 03.10.01 //		CMP	#00043H
;// 03.10.01 //		BEQ	THCG060		; yama ?
;// 03.10.01 //;					; no
;// 03.10.01 //		CMP	#00045H
;// 03.10.01 //		BEQ	THCG060		; yama ?
;// 03.10.01 //;					; no
;// 03.10.01 //		CMP	#00047H
;// 03.10.01 //		BNE	THCG070		; yama ?
;// 03.10.01 //;					; no
;// 03.10.01 //THCG060		EQU	$
;// 03.10.01 //		STX	<WD2132R
;// 03.10.01 //		STY	<WD2132G
;// 03.10.01 //THCG070		EQU	$
;// 03.10.01 //		MEM8
;// 03.10.01 //		IDX8
;// 03.10.01 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.10.01 //;
;// 03.10.01 //		LDA	<WD2132R
;// 03.10.01 //		CLC
;// 03.10.01 //		ADC	#00001110B
;// 03.10.01 //		STA	<WD2132R
;// 03.10.01 //		LDA	<WD2132G
;// 03.10.01 //		CLC
;// 03.10.01 //		ADC	#00001110B
;// 03.10.01 //		STA	<WD2132G
;// 03.10.01 //		LDA	<WD2132B
;// 03.10.01 //		CLC
;// 03.10.01 //		ADC	#00001110B
;// 03.10.01 //		STA	<WD2132B
;// 03.10.01 //THCG080		EQU	$
		RTL
;
;
		MEM16
THCG400		EQU	$
		STA	<WORK0
		AND	#0000000000011111B
		CLC
		ADC	#0000000000001110B
		CMP	#0000000000011111B
		BCC	THCG420		;
;					;
		LDA	#0000000000011111B
THCG420		EQU	$
		STA	<WORK2
;
		LDA	<WORK0
		AND	#0000001111100000B
		CLC
		ADC	#0000000111000000B
		CMP	#0000001111100000B
		BCC	THCG440		;
;					;
		LDA	#0000001111100000B
THCG440		EQU	$
		STA	<WORK4
;
		LDA	<WORK0
		AND	#0111110000000000B
		CLC
		ADC	#0011100000000000B
		CMP	#0111110000000000B
		BCC	THCG460		;
;					;
		LDA	#0111110000000000B
THCG460		EQU	$
		ORA	<WORK2
		ORA	<WORK4
		RTS
;
;
;// 03.06.10 //		LDX	#00001H
;// 03.06.10 //		LDY	#00016H
;// 03.06.10 //		BRA	THCG000
;
;
		MEM8
		IDX8
;************************************************************************
;*		Thunder CG. change			(THCGCN1)	*
;************************************************************************
THCGCN1		EQU	$
		MEM16
		REP	#00100000B	; index 16bit mode
;
		LDX	#000H
THCG120		EQU	$
		LDA	>CGRAM+040H,X
		STA	>CGWORK+040H,X
		LDA	>CGRAM+050H,X
		STA	>CGWORK+050H,X
		LDA	>CGRAM+060H,X
		STA	>CGWORK+060H,X
		LDA	>CGRAM+070H,X
		STA	>CGWORK+070H,X
		LDA	>CGRAM+080H,X
		STA	>CGWORK+080H,X
		LDA	>CGRAM+090H,X
		STA	>CGWORK+090H,X
		LDA	>CGRAM+0A0H,X
		STA	>CGWORK+0A0H,X
		LDA	>CGRAM+0B0H,X
		STA	>CGWORK+0B0H,X
		LDA	>CGRAM+0C0H,X
		STA	>CGWORK+0C0H,X
		LDA	>CGRAM+0D0H,X
		STA	>CGWORK+0D0H,X
		LDA	>CGRAM+0E0H,X
		STA	>CGWORK+0E0H,X
		LDA	>CGRAM+0F0H,X
		STA	>CGWORK+0F0H,X
;
;// 03.06.10 //		LDA	>CGRAM+160H,X
;// 03.06.10 //		JSR	THCG400
;// 03.06.10 //		STA	>CGWORK+160H,X
;// 03.06.10 //		LDA	>CGRAM+180H,X
;// 03.06.10 //		JSR	THCG400
;// 03.06.10 //		STA	>CGWORK+180H,X
;// 03.06.10 //		LDA	>CGRAM+1A0H,X
;// 03.06.10 //		JSR	THCG400
;// 03.06.10 //		STA	>CGWORK+1A0H,X
;// 03.06.10 //		LDA	>CGRAM+1F0H,X
;// 03.06.10 //		JSR	THCG400
;// 03.06.10 //		STA	>CGWORK+1F0H,X
		INX
		INX
		CPX	#010H
		BNE	THCG120		; BG. CG. set end ?
;					; yes
;// 03.06.10 //		LDX	#00002H
;// 03.06.10 //		LDY	#00017H
;// 03.06.10 //THCG000		EQU	$
;// 03.06.10 //		PHY			; (Y) push
;// 03.06.10 //;
;// 03.06.10 //		LDA	>CGLPT3,X
;// 03.06.10 //		AND	#000FFH
;// 03.06.10 //		CLC
;// 03.06.10 //		ADC	#TOKUSYU
;// 03.06.10 //		STA	<WORK0
;// 03.06.10 //		PHA			; (A) push
;// 03.06.10 //;
;// 03.06.10 //		LDX	#00200H
;// 03.06.10 //		LDY	#00007H
;// 03.06.10 //THCG060		EQU	$
;// 03.06.10 //		LDA	[<WORK0]
;// 03.06.10 //		STA	>CHGRAM+040H,X
;// 03.06.10 //		STA	>CHGRAM+050H,X
;// 03.06.10 //		STA	>CHGRAM+060H,X
;// 03.06.10 //		STA	>CHGRAM+070H,X
;// 03.06.10 //		STA	>CHGRAM+080H,X
;// 03.06.10 //		STA	>CHGRAM+090H,X
;// 03.06.10 //		STA	>CHGRAM+0A0H,X
;// 03.06.10 //		STA	>CHGRAM+0B0H,X
;// 03.06.10 //		STA	>CHGRAM+0C0H,X
;// 03.06.10 //		STA	>CHGRAM+0D0H,X
;// 03.06.10 //		STA	>CHGRAM+0E0H,X
;// 03.06.10 //		STA	>CHGRAM+0F0H,X
;// 03.06.10 //		INC	<WORK0
;// 03.06.10 //		INC	<WORK0
;// 03.06.10 //		INX
;// 03.06.10 //		INX
;// 03.06.10 //		DEY
;// 03.06.10 //		BPL	THCG060		; BG. CG. set end ?
;// 03.06.10 //;					; yes
;// 03.06.10 //		PLA			; (A) pull
;// 03.06.10 //		CLC
;// 03.06.10 //		ADC	#00006H
;// 03.06.10 //		STA	<WORK0
;// 03.06.10 //		LDA	[<WORK0]
;// 03.06.10 //		STA	>CGWORK+000H
;// 03.06.10 //;
;// 03.06.10 //		PLY			; (Y) pull
;// 03.06.10 //		TYX			; (X) <-- (Y)
;// 03.06.10 //		LDA	>CGLPT71,X
;// 03.06.10 //		CLC
;// 03.06.10 //		ADC	#ENMYOBJ
;// 03.06.10 //		STA	<WORK0
;// 03.06.10 //;
;// 03.06.10 //		LDX	#00300H
;// 03.06.10 //		LDY	#00007H
;// 03.06.10 //THCG080		EQU	$
;// 03.06.10 //		LDA	[<WORK0]
;// 03.06.10 //		STA	>CHGRAM+060H,X
;// 03.06.10 //		STA	>CHGRAM+080H,X
;// 03.06.10 //		STA	>CHGRAM+0A0H,X
;// 03.06.10 //		STA	>CHGRAM+0F0H,X
;// 03.06.10 //		INC	<WORK0
;// 03.06.10 //		INC	<WORK0
;// 03.06.10 //		INX
;// 03.06.10 //		INX
;// 03.06.10 //		DEY
;// 03.06.10 //		BPL	THCG080		; BG. CG. set end ?
;// 03.06.10 //;					; yes
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
;
;
		MEM8
		IDX8
		SEP	#00110000B	; memory 16bit mode
THCG160		EQU	$
		LDA	<GMMODE
		BNE	THCG180		; ground ?
;					; yes
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#04020H
		STX	<WD2132R
		LDX	#08040H
		STX	<WD2132G
;
		LDX	#04F33H
		LDY	#0894FH
		LDA	<MPDTNO
		BEQ	THCG180		; mori ?
;					; no
		CMP	#040H
		BEQ	THCG180		; ura-mori ?
;					; no
		CMP	#05BH
		BEQ	THCG170		; piramido ?
;					; no
		LDX	#04C26H
		LDY	#08C4CH
		CMP	#003H
		BEQ	THCG170		; yama ?
;					; no
		CMP	#005H
		BEQ	THCG170		; yama ?
;					; no
		CMP	#007H
		BEQ	THCG170		; yama ?
;					; no
		LDX	#04A26H
		LDY	#0874AH
		CMP	#043H
		BEQ	THCG170		; yama ?
;					; no
		CMP	#045H
		BEQ	THCG170		; yama ?
;					; no
		CMP	#047H
		BNE	THCG180		; yama ?
;					; no
THCG170		EQU	$
		STX	<WD2132R
		STY	<WD2132G
THCG180		EQU	$
		IDX8
		SEP	#00010000B	; index 16bit mode
		RTL
;
;
; 
;************************************************************************
;*		Thunder CG. change			(THCGCN2)	*
;************************************************************************
THCGCN2		EQU	$
		MEM16
		REP	#00100000B	; index 16bit mode
;
		LDX	#07EH
THCG240		EQU	$
		LDA	>CGRAM+000H,X
		STA	>CGWORK+000H,X
		LDA	>CGRAM+080H,X
		STA	>CGWORK+080H,X
;// 03.06.10 //		LDA	>CGRAM+100H,X
;// 03.06.10 //		STA	>CGWORK+100H,X
;// 03.06.10 //		LDA	>CGRAM+180H,X
;// 03.06.10 //		STA	>CGWORK+180H,X
		DEX
		DEX
		BPL	THCG240		; reset end ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 16bit mode
;
		INC	<CGVMAF		; CG. change
		JMP	THCG160
;
;
;
;
;
;
; 
; 
		END
