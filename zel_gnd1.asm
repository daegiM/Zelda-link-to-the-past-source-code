;
		INCLUDE	zel_ram.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.11.29(FRI)
;
;------------------------------------------------------------------------
;
		ORG	0FF540H
;
;=============================================== (zel_gnd1) =============
		GLB	KMKUICK,GEVTCHK1,EEVTCHK,GDMMSET,YTWRCCNG
;=============================================== (zel_main) =============
		EXT	MD_evply
;=============================================== (zel_init) =============
		EXT	p2_fot1,p2_fot4,p2_kmww
		EXT	UT4RWT,ut4p07
;=============================================== (zel_grnd) =============
		EXT	KCCNG0,CTPC000,KCCNG180
;=============================================== (zel_mut1) =============
		EXT	MPUNIT
;
		EXT	atsib0,atdig0
;========================================================================
;
		EXTEND
;
;
;
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		Ground memory set			(GDMMSET)	*
;************************************************************************
GDMMSET		EQU	$
		CMP	#atsib0
		BEQ	GDMMS80		; shiba ato ?
;					; no
		CMP	#atdig0
		BEQ	GDMMS80		; dig ato ?
;					; no
		PHA			; (A) push
		PHX			; (X) push
;
		TXY			; (Y) <-- (X)
		LDX	!GDMMPT
		STA	>GDMMBF+200H,X
		TYA			; (A) <-- (Y)
		STA	>GDMMBF+000H,X
		INX
		INX
		STX	!GDMMPT
;
		PLX			; (X) pull
		PLA			; (A) pull
GDMMS80		EQU	$
		RTL
;
;
;
;
;
;************************************************************************
;*		Kame-iwa kui check			(KMKUICK)	*
;************************************************************************
KMKCKDT		EQU	$
		WORD	00826H,005A0H,0081AH
;
;
KMKUICK		EQU	$
		LDA	<MPDTNO
		CMP	#00007H
		BNE	KMKIC200	; kame-iwa kui check ?
;					; yes
		LDA	>GNDTBL+007H
		AND	#00020H
		BNE	KMKIC80		; check ok ?
;					; yes
		STX	<WORK0
		LDX	!KMKCPT
		CPX	#0FFFFH
		BEQ	KMKIC40		; check ok ?
;					; yes
		LDA	>KMKCKDT,X
		CMP	<WORK0
		BNE	KMKIC40		; saikai ?
;					; yes
		LDA	#02D00H
		STA	!SOUND2		; <sound2>off & <sound3>on
		INX
		INX
		STX	!KMKCPT
		CPX	#00006H
		BNE	KMKIC20		; swich on ?
;					; yes
		LDA	#01B00H
		STA	!SOUND2		; <sound2>off & <sound3>on
;
		LDA	>GNDTBL+007H
		ORA	#00020H
		STA	>GNDTBL+007H
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#p2_kmww
		STA	<GAMEMD
;
		MEM16
		REP	#00100000B	; memory 16bit mode
KMKIC20		EQU	$
		LDX	<WORK0
		RTL
;
KMKIC40		EQU	$
		LDA	#0003CH
		STA	!SOUND2		; <sound2>on & <sound3>off
;
		LDA	#0FFFFH
		STA	!KMKCPT
		LDX	<WORK0
KMKIC80		EQU	$
		RTL
;
;
KMKIC200	EQU	$
		CMP	#00062H
		BNE	KMKIC400	; 
;					;
		INC	!KMKCPT
		LDA	!KMKCPT
		CMP	#00022
		BNE	KMKIC400	; kaidan set ?
;					; yes
		PHX			; (X) push
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>GNDTBL+062H
		ORA	#00100000B
		STA	>GNDTBL+062H
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#ut4p07
		STA	!DOPCNO
		LDA	#00D20H
		STA	!GDRBF1
		JSL	>UT4RWT		; unit4 rewrite
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PLX			; (X) pull
KMKIC400	EQU	$
		RTL
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Yama-tower CG. change			(YTWRCCNG)	*
;************************************************************************
YTWRCCNG	EQU	$
		LDA	<JRSBPT
		BNE	YTRC100		; init ?
;					; yes
		LDA	#02EH
		STA	!SOUND2
		JMP	>KCCNG0
;
;
YTRC100		EQU	$
		JSL	>CTPC000	; fade
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	>CCNGFG
		CMP	#000FFH
		BNE	YTRC200		; end ?
;					; yes
		STA	>CCNGCT
		STA	>CCNGFG
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<JRSBPT
		RTL
;
;
YTRC200		EQU	$
		JMP	>KCCNG180
;
;
;
;
;
;************************************************************************
;*		Goto  Event check-1			(GEVTCHK1)	*
;************************************************************************
GEVTCD1		EQU	$		; goto event code
		WORD	00105H,001E4H,000ADH,000B9H
GEVTRD1		EQU	$		;            room
		WORD	00000H,0002DH,0000FH,00081H
GEVTCP1		EQU	GEVTRD1-GEVTCD1
GEMKDT1		EQU	$
		WORD	00008H,00002H,00008H,00008H
;
GEVTGD1		EQU	$
;// 03.07.08 //		WORD	00180H,00181H,00182H,00183H
		WORD	00180H,00181H,00182H,00189H
;
;
GEVTCHK1	EQU	$
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		JSR	GEVTC400	; pointer get
;
		LDA	>MPUNIT+0,X
		AND	#001FFH
		STA	<WORK0
		LDX	#GEVTCP1
GEVTC120	EQU	$
		LDA	<WORK0
GEVTC140	EQU	$
		DEX
		DEX
		BMI	GEVTC180	; check end ?
;					; no
		CMP	>GEVTCD1,X
		BNE	GEVTC140	; code ok ?
;					; yes
		LDA	<MPDTNO
		CMP	>GEVTRD1,X
		BNE	GEVTC120	; ok ?
;					; yes
		LDA	>GEVTGD1,X
		STA	<RMXYCT
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
;// 03.03.20 //		LDA	<PWORK1
;// 03.03.20 //		AND	#00CH
;// 03.03.20 //		BNE	GEVTC160	; up,down ?
;// 03.03.20 //;					; no
;// 03.03.20 //		LDA	<PWORK1
;// 03.03.20 //		AND	#003H
;// 03.03.20 //GEVTC160	EQU	$
		LDA	>GEMKDT1,X
		STA	<PWORK1
;
		STA	!SCRLMD
		STA	!GDWTFG
		LDX	#004H
GEVTC170	EQU	$
		DEX
		LSR	A
		BCC	GEVTC170	; (c) on ?
;					; yes
		STX	!SCRLFG
		STX	!GATMFG
;
		LDA	#p2_fot1
		STA	<GAMEMD
		LDA	#MD_evply
		STA	<SLMODE
GEVTC180	EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
		MEM16
		IDX16
GEVTC400	EQU	$
		LDA	<PLYPS1
		CLC
		ADC	#0000CH
		STA	<WORK0
;// 02.11.22 //		AND	#00F00H
;// 02.11.22 //		ASL	A
;// 02.11.22 //		XBA
;// 02.11.22 //		TAX
;// 02.11.22 //		LDA	<WORK0
;// 02.11.22 //		SEC
;// 02.11.22 //		SBC	PREPD0,X
;// 02.11.22 //		AND	#0FFF0H
;// 02.11.22 //		ASL	A
;// 02.11.22 //		STA	<WORK6
;// 02.11.22 //		ASL	A
;// 02.11.22 //		ASL	A
;// 02.11.22 //		SEC
;// 02.11.22 //		SBC	<WORK6
;// 02.11.22 //		STA	<WORK6
;// 02.11.22 //;
		SEC
		SBC	!GCCKY0
		AND	!GCCKY1
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
;// 02.10.01 //		LDA	<PLYPS1
;// 02.10.01 //		CLC
;// 02.10.01 //		ADC	#0000CH
;// 02.10.01 //		LSR	A
;// 02.10.01 //		LSR	A
;// 02.10.01 //		LSR	A
;// 02.10.01 //		STA	<WORK0
;// 02.10.01 //		AND	#001E0H
;// 02.10.01 //		LSR	A
;// 02.10.01 //		LSR	A
;// 02.10.01 //		LSR	A
;// 02.10.01 //		LSR	A
;// 02.10.01 //		TAX
;// 02.10.01 //		LDA	<WORK0
;// 02.10.01 //		SEC
;// 02.10.01 //		SBC	PREPDT,X
;// 02.10.01 //		AND	#0FFFEH
;// 02.10.01 //		ASL	A
;// 02.10.01 //		ASL	A
;// 02.10.01 //		ASL	A
;// 02.10.01 //		ASL	A
;// 02.10.01 //		STA	<WORK6
;// 02.10.01 //		ASL	A
;// 02.10.01 //		ASL	A
;// 02.10.01 //		SEC
;// 02.10.01 //		SBC	<WORK6
;// 02.10.01 //		STA	<WORK6
;// 02.10.01 //;
;
		LDA	<PLXPS1
		CLC
		ADC	#00008H
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2
;// 02.11.22 //		AND	#001E0H
;// 02.11.22 //		LSR	A
;// 02.11.22 //		LSR	A
;// 02.11.22 //		LSR	A
;// 02.11.22 //		LSR	A
;// 02.11.22 //		TAX
;// 02.11.22 //		LDA	<WORK2
;// 02.11.22 //		SEC
;// 02.11.22 //		SBC	PREPDT,X
;// 02.11.22 //		AND	#0FFFEH
;// 02.11.22 //		CLC
;// 02.11.22 //		ADC	<WORK6
		SEC
		SBC	!GCCKX0
		AND	!GCCKX1
		CLC
		ADC	<WORK6
;// 02.12.11 //		CMP	#01000H
;// 02.12.11 //;// 02.11.22 //		CMP	#00900H
;// 02.12.11 //		BCC	GEVTC440	; buffer-0 ?
;// 02.12.11 //;					; no
;// 02.12.11 //;;;;;;;;		SEC
;// 02.12.11 //;// 02.11.22 //		SBC	#00900H
;// 02.12.11 //		SBC	#01000H
;// 02.12.11 //		ORA	#02000H
;// 02.12.11 //GEVTC440	EQU	$
		TAY
		TAX
		LDA	>GDBUF0,X
		ASL	A
		ASL	A
		ASL	A
		TAX
		RTS
;
;
;
;
;************************************************************************
;*		Exit Event check			(EEVTCHK)	*
;************************************************************************
EEVTCDT		EQU	$		; exit event code
		WORD	0017CH,001E4H,000ADH
EEVTCDE		EQU	$
EEVTCPT		EQU	EEVTCDE-EEVTCDT
EEVTMPN		EQU	$
		WORD	00080H,00080H,00081H
;
EEVTPMD		EQU	$
		WORD	00004H,00001H,00004H
;
;
;// 03.03.20 //EEVTSLM		EQU	$		; scroll muki
;// 03.03.20 //		BYTE	008H,004H,002H,001H
;// 03.03.20 //;
;// 03.03.20 //EEVTSLD		EQU	$		; exit event scroll data
;// 03.03.20 //;			  U    D    L    R
;// 03.03.20 //		BYTE	0FDH,003H,0FFH,001H
;
;
EEVTC980	EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
EEVTCHK		EQU	$
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
;// 03.03.06 //		JSR	GEVTC800	; pointer get
		JSR	GEVTC400	; pointer get
;
		LDA	>MPUNIT+0,X
		AND	#001FFH
		STA	<WORK0
		LDX	#EEVTCPT
EEVTC20		EQU	$
		LDA	<WORK0
EEVTC40		EQU	$
		DEX
		DEX
		BMI	EEVTC980	; check end ?
;					; no
		CMP	>EEVTCDT,X
		BNE	EEVTC40		; code ok ?
;					; yes
		LDA	<MPDTNO
		CMP	>EEVTMPN,X
		BNE	EEVTC20		; MPDTNO ok ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory 8bit mode
;
		LDA	>EEVTPMD,X
		STA	<PWORK1
;// 03.03.27 //		STA	>SLFGRM
;// 03.08.08 //		LDA	#004H
;// 03.08.08 //		STA	!GDWTFG
		LDX	#004H
EEVTC60		EQU	$
		DEX
		LSR	A
		BCC	EEVTC60		; (c) on ?
;					; yes
		TXA
		STA	!SCRLFG
;
;
		LDA	<PWORK1
		LDX	#004H
EEVTC80		EQU	$
		DEX
		LSR	A
		BCC	EEVTC80		; (c) on ?
;					; yes
		TXA
		STA	!GATMFG
;// 03.03.20 //		LDA	>EEVTSLM,X
;// 03.03.20 //;// 03.03.19//		CMP	>SLFGRM
;// 03.03.20 //;// 03.03.19//		BEQ	EEVTC180	; scroll muki = ?
;// 03.03.20 //;// 03.03.19//;					; no
;// 03.03.20 //		STA	>SLFGRM
;// 03.03.20 //;// 03.03.19//EEVTC180	EQU	$
;
		LDA	#p2_fot4
		STA	<GAMEMD
		STZ	<JRSBPT
		STZ	<RMXYCT
		RTL
;
;
;
;
;// 03.03.06 //		MEM16
;// 03.03.06 //		IDX16
;// 03.03.06 //GEVTC800	EQU	$
;// 03.03.06 //		LDA	<PLYPS1
;// 03.03.06 //		CLC
;// 03.03.06 //		ADC	#0000CH
;// 03.03.06 //		STA	<WORK0
;// 03.03.06 //;// 02.11.22 //		AND	#00F00H
;// 03.03.06 //;// 02.11.22 //		ASL	A
;// 03.03.06 //;// 02.11.22 //		XBA
;// 03.03.06 //;// 02.11.22 //		TAX
;// 03.03.06 //;// 02.11.22 //		LDA	<WORK0
;// 03.03.06 //;// 02.11.22 //		SEC
;// 03.03.06 //;// 02.11.22 //		SBC	PREPD2,X
;// 03.03.06 //;// 02.11.22 //		AND	#0FFF0H
;// 03.03.06 //		SEC
;// 03.03.06 //		SBC	!GCCKY0
;// 03.03.06 //		AND	!GCCKY1
;// 03.03.06 //		ASL	A
;// 03.03.06 //		ASL	A
;// 03.03.06 //		ASL	A
;// 03.03.06 //		STA	<WORK6
;// 03.03.06 //;
;// 03.03.06 //;// 02.10.01 //		LDA	<PLYPS1
;// 03.03.06 //;// 02.10.01 //		CLC
;// 03.03.06 //;// 02.10.01 //		ADC	#0000CH
;// 03.03.06 //;// 02.10.01 //		LSR	A
;// 03.03.06 //;// 02.10.01 //		LSR	A
;// 03.03.06 //;// 02.10.01 //		LSR	A
;// 03.03.06 //;// 02.10.01 //		STA	<WORK0
;// 03.03.06 //;// 02.10.01 //		AND	#001E0H
;// 03.03.06 //;// 02.10.01 //		LSR	A
;// 03.03.06 //;// 02.10.01 //		LSR	A
;// 03.03.06 //;// 02.10.01 //		LSR	A
;// 03.03.06 //;// 02.10.01 //		LSR	A
;// 03.03.06 //;// 02.10.01 //		TAX
;// 03.03.06 //;// 02.10.01 //		LDA	<WORK0
;// 03.03.06 //;// 02.10.01 //		SEC
;// 03.03.06 //;// 02.10.01 //		SBC	PREPD1,X
;// 03.03.06 //;// 02.10.01 //		AND	#0FFFEH
;// 03.03.06 //;// 02.10.01 //		ASL	A
;// 03.03.06 //;// 02.10.01 //		ASL	A
;// 03.03.06 //;// 02.10.01 //		ASL	A
;// 03.03.06 //;// 02.10.01 //		ASL	A
;// 03.03.06 //;// 02.10.01 //		ASL	A
;// 03.03.06 //;// 02.10.01 //		ASL	A
;// 03.03.06 //;// 02.10.01 //		STA	<WORK6
;// 03.03.06 //;
;// 03.03.06 //		LDA	<PLXPS1
;// 03.03.06 //		CLC
;// 03.03.06 //		ADC	#00008H
;// 03.03.06 //		LSR	A
;// 03.03.06 //		LSR	A
;// 03.03.06 //		LSR	A
;// 03.03.06 //		STA	<WORK2
;// 03.03.06 //;// 02.11.22 //		AND	#001E0H
;// 03.03.06 //;// 02.11.22 //		LSR	A
;// 03.03.06 //;// 02.11.22 //		LSR	A
;// 03.03.06 //;// 02.11.22 //		LSR	A
;// 03.03.06 //;// 02.11.22 //		LSR	A
;// 03.03.06 //;// 02.11.22 //		TAX
;// 03.03.06 //;// 02.11.22 //		LDA	<WORK2
;// 03.03.06 //;// 02.11.22 //		SEC
;// 03.03.06 //;// 02.11.22 //		SBC	PREPD1,X
;// 03.03.06 //;// 02.11.22 //		AND	#0FFFEH
;// 03.03.06 //		SEC
;// 03.03.06 //		SBC	!GCCKX0
;// 03.03.06 //		AND	!GCCKX1
;// 03.03.06 //		CLC
;// 03.03.06 //		ADC	<WORK6
;// 03.03.06 //;// 02.12.11 //		CMP	#01000H
;// 03.03.06 //;// 02.12.11 //		BCC	GEVTC840	; buffer-0 ?
;// 03.03.06 //;// 02.12.11 //;					; no
;// 03.03.06 //;// 02.12.11 //		SEC
;// 03.03.06 //;// 02.12.11 //		SBC	#01000H
;// 03.03.06 //;// 02.12.11 //		ORA	#02000H
;// 03.03.06 //;// 02.12.11 //GEVTC840	EQU	$
;// 03.03.06 //		TAY
;// 03.03.06 //		TAX
;// 03.03.06 //		LDA	>GDBUF0,X
;// 03.03.06 //		ASL	A
;// 03.03.06 //		ASL	A
;// 03.03.06 //		ASL	A
;// 03.03.06 //		TAX
;// 03.03.06 //		RTS
;// 03.03.06 //;
;
;
;
;
;
;
;// 03.03.06 //;
;// 03.03.06 //;************************************************************************
;// 03.03.06 //;*		Goto  Event check-0  (scroll)		(GEVTCHK0)	*
;// 03.03.06 //;************************************************************************
;// 03.03.06 //GEVTCD0		EQU	$		; goto event code
;// 03.03.06 //		WORD	000FEH,000FEH,000EEH,000EEH
;// 03.03.06 //GEVTRD0		EQU	$		;            room
;// 03.03.06 //		WORD	00001H,00002H,00005H,00008H
;// 03.03.06 //GEVTCP0		EQU	GEVTRD0-GEVTCD0
;// 03.03.06 //;
;// 03.03.06 //GEVTGD0		EQU	$
;// 03.03.06 //		WORD	00802H,00803H,00800H,00801H
;// 03.03.06 //;
;// 03.03.06 //;
;// 03.03.06 //GEVTCHK0	EQU	$
;// 03.03.06 //		MEM16
;// 03.03.06 //		IDX16
;// 03.03.06 //		REP	#00110001B	; memory,index 16bit mode & CLC
;// 03.03.06 //;
;// 03.03.06 //		JSR	GEVTC400	; pointer get
;// 03.03.06 //;
;// 03.03.06 //		LDA	>MPUNIT+0,X
;// 03.03.06 //		AND	#001FFH
;// 03.03.06 //		STA	<WORK0
;// 03.03.06 //		LDX	#GEVTCP0
;// 03.03.06 //GEVTC020	EQU	$
;// 03.03.06 //		LDA	<WORK0
;// 03.03.06 //GEVTC040	EQU	$
;// 03.03.06 //		DEX
;// 03.03.06 //		DEX
;// 03.03.06 //		BMI	GEVTC080	; check end ?
;// 03.03.06 //;					; no
;// 03.03.06 //		CMP	>GEVTCD0,X
;// 03.03.06 //		BNE	GEVTC040	; code ok ?
;// 03.03.06 //;					; yes
;// 03.03.06 //		LDA	<MPDTNO
;// 03.03.06 //		CMP	>GEVTRD0,X
;// 03.03.06 //		BNE	GEVTC020	; ok ?
;// 03.03.06 //;					; yes
;// 03.03.06 //		LDA	>GEVTGD0,X
;// 03.03.06 //		STA	<RMXYCT
;// 03.03.06 //;
;// 03.03.06 //		MEM8
;// 03.03.06 //		SEP	#00100000B	; memory 8bit mode
;// 03.03.06 //;
;// 03.03.06 //		LDA	#p2_fot1
;// 03.03.06 //		STA	<GAMEMD
;// 03.03.06 //		LDA	#MD_evply
;// 03.03.06 //		STA	<SLMODE
;// 03.03.06 //GEVTC080	EQU	$
;// 03.03.06 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.03.06 //		RTL
;// 03.03.06 //;
;// 03.03.06 //;
;
;
;
;
;
;
		END
