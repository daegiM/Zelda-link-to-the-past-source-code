;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.10.09(WED)
;
;--------------------------------------------------------------------
;
		ORG	0EEE10H
;;;;;;;;		ORG	04ED80H
;
;=============================================== (zel_msge0) =========
		GLB	MSGE_I,MSGETNP,MSGADST
;=============================================== (zel_msge1) =========
		EXT	msg0000
;---------------MSGE NO.-----------------
		EXT	MS_0000,MS_0001,MS_0002,MS_0003,MS_0004,MS_0005,MS_0006,MS_0007
		EXT	MS_0008,MS_0009,MS_000A,MS_000B,MS_000C,MS_000D,MS_000E,MS_000F
;=============================================== (zel_main) =========
		EXT	JSRSUB
;
		EXT	MD_tdemo
;=============================================== (zel_vma) ==========
		EXT	VT01
;
		EXT	bgw2
;=============================================== (zel_mjdt) =========
		EXT	MOJIFNT,MOJIBIT
;=============================================== (zel_char) =========
		EXT	PICCPT,MPICBST
;=============================================== (zel_comn) =========
		EXT	MCGRST,CGCNG8
;=============================================== (zel_bg3) ==========
		EXT	STGITRM
;=============================================== (?!) ===============
		EXT	DTSVPD
;====================================================================
;
		EXTEND
;
		MEM8
		IDX8
;
;************************************************************************
;*									*
;*									*
;************************************************************************
;
;************************************************************************
;*		kokoga yobareru					Lev. -1 *
;*									*
;************************************************************************
MSGE_I		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		JSR	MSGE_I2
;
		PLB			; (DBR) reset
		RTL
;
;
;
;************************************************************************
;*		inital or program select			Lev. 0	*
;*									*
;************************************************************************
MSGE_I2		EQU	$		;test program
		LDA	!INITAL
		JSL	>JSRSUB
		WORD	MSGINI		;(0) inital
		WORD	MSGPRG		;(1) program
		WORD	MSGSVE		;(2) save gamemn
;
;
;
;************************************************************************
;*		save gamen					Lev. 1	*
;*									*
;************************************************************************
MSGSVE		EQU	$
		LDA	#003H		;MSGE NO SET
		STA	MSGENOL
		LDA	#000H
		STA	MSGENOH
;
		LDX	#000H
		JSR	MSGINI1
		LDA	#0E8H
		STA	WNADRS
		LDA	#061H
		STA	WNADRS+1
		LDA	#002H
		STA	WIND_SYS
		JSR	MSGPRG
		JSR	MSGPRG
		JSR	MSGPRG
		JSR	MSGPRG
		JSR	MSGPRG
		RTS
;************************************************************************
;*		inital program					Lev. 1	*
;*									*
;************************************************************************
MSGINI		EQU	$		;inital data set
		LDA	<SLMODE
		CMP	#MD_tdemo
		BNE	MSGI0040	; title-demo ?
;					; yes
		JSL	>MCGRST		;f in out init set
MSGI0040	EQU	$
		JSL	>MPICBST	; message picture buffer set
;
		LDX	#00
MSGINI1		EQU	$
		LDA	INITDAT,X
		STA	!WNKEIS,X
		INX
		CPX	#20H
		BCC	MSGINI1
;
		JSR	WNSETA		;window adress keisan
;
		JSR	MSG_TENKAI
;
		JSR	CODE_7D
;
		MEM16
		IDX16
		REP	#00110000B
;
		STZ	!MOJIX		;00 ni suru (iruzetai)
;
;// 03.07.12 //		LDA	<WD2130
;// 03.07.12 //		STA	>BKWD2130
;// 03.07.12 //;
;// 03.07.12 //		LDA	>MODTBL0
;// 03.07.12 //		AND	#000FFH
;// 03.07.12 //		CMP	#00002H
;// 03.07.12 //		BCC	MSGI140		;
;// 03.07.12 //;					;
;// 03.07.12 //		LDA	#06280H
;// 03.07.12 //		STA	<WD2130
;// 03.07.12 //MSGI140		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA	#bgw2
		STA	<BGWTFG
		STA	!GMAPDF
		RTS
;
;
;************************************************************************
;*		mesege no tenkai					*
;*									*
;************************************************************************
MSG_TENKAI	EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	MSGENOL		;MEGE NO SET ( ADD )
		ASL	A
		TAX
		LDA	>MGARTBL,X
		STA	<WORK4
		LDA	#BANK msg0000
		STA	<WORK6
;
		LDA	#07F7FH
		STA	>MJIBUF
;
		LDY	#00000H
		TYX
		STY	MOJIX		;X
		STY	MESBUFX		;Y
;
TENKAI1		EQU	$
		LDA	[<WORK4],Y
		AND	#000FFH
		CMP	#000F6H
		BCS	TENKAI2
;					;HIRAGANA & SPACE
TENKAI3		EQU	$
;		ASL	A
;		ASL	A
;		ASL	A
;		ASL	A
;		ASL	A
;		ASL	A
;		ASL	A
;		ASL	A
		XBA
		AND	#0FF00H
		STA	>MJIBUF,X
		INY
		STY	MESBUFX
		INX
		INX
		STX	MOJIX
		BRA	TENKAI1
;
;
TENKAI2		EQU	$		;SPACE & KANJI & CODE
		CMP	#000FFH
		BEQ	TENKAI3		;? SPACE
		CMP	#000FDH
		BEQ	TENKAI4		;? KANJI
;
		CMP	#000F6H
		BEQ	TENKAI6		;? CODE 73
		CMP	#000F7H
		BEQ	TENKAI7		;? CODE 74
		CMP	#000F8H
		BEQ	TENKAI8		;? CODE 75
		CMP	#000F9H
		BEQ	TENKAI9		;? CODE 76
		CMP	#000FAH
		BEQ	TENKAIA		;? CODE 7E
		CMP	#000FBH
		BEQ	TENKAI5		;? CODE 7F
		CMP	#000FCH
		BEQ	TENKAIC		;? CODE 7A
;
		INY			;CODE
		STY	MESBUFX
		LDA	[<WORK4],Y
		AND	#000FFH
		JSR	TENKAIS
		LDX	MOJIX
		LDY	MESBUFX
		BRA	TENKAI1
;
;
TENKAI4		EQU	$		;KANJI
		LDA	[<WORK4],Y
		AND	#0FF01H
		STA	>MJIBUF,X
		INY
		INY
		STY	MESBUFX
		INX
		INX
		STX	MOJIX
		BRA	TENKAI1
;
;
TENKAI5		EQU	$
		LDA	#07F7FH
		STA	>MJIBUF,X
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;
TNAI6_A		EQU	$
		MEM8
		IDX16
;
		LDX	MOJIX
		LDY	MESBUFX
;
		STA	>MJIBUF,X
		INY
		INX
		STX	MOJIX
		STY	MESBUFX
;
		MEM16
		IDX16
		REP	#00110000B
		JMP	TENKAI1
;
;
TENKAI6		EQU	$		;? CODE 73
		MEM8
		IDX16
		SEP	#00100000B
		LDA	#073H
		BRA	TNAI6_A
;
;
TENKAI7		EQU	$		;? CODE 74
		MEM8
		IDX16
		SEP	#00100000B
		LDA	#074H
		BRA	TNAI6_A
;
;
TENKAI8		EQU	$		;? CODE 75
		MEM8
		IDX16
		SEP	#00100000B
		LDA	#075H
		BRA	TNAI6_A
;
;
TENKAI9		EQU	$		;? CODE 76
		MEM8
		IDX16
		SEP	#00100000B
		LDA	#076H
		BRA	TNAI6_A
;
;
TENKAIA		EQU	$		;? CODE 7E
		MEM8
		IDX16
		SEP	#00100000B
		LDA	#07EH
		BRA	TNAI6_A
;
;
TENKAIC		EQU	$		;? CODE 7A
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	MOJIX
		LDY	MESBUFX
;
		LDA	[<WORK4],Y
		AND	#0FF00H
		ORA	#0007AH
		STA	>MJIBUF,X
		INY
		INY
		INX
		INX
		STX	MOJIX
		STY	MESBUFX
;
		JMP	TENKAI1
;
;
		RTS
;
;
TENKAIS		EQU	$
		MEM8
		IDX8
		SEP	#00110001B
		SBC	#067H
		JSL	>JSRSUB
		WORD	TNKIS67		;CODE 67 1
		WORD	TNKIS68		;CODE 68 1
		WORD	TNKIS69		;CODE 69 1
		WORD	TNKIS6A		;CODE 6A 1
		WORD	TNKIS6B		;CODE 6B 2
		WORD	TNKIS6C		;CODE 6C 2
		WORD	TNKIS6D		;CODE 6D 2
		WORD	TNKIS6E		;CODE 6E 2
		WORD	TNKIS6F		;CODE 6F 1
		WORD	TNKIS70		;CODE 70 1
		WORD	TNKIS71		;CODE 71 1
		WORD	TNKIS72		;CODE 72 1
		WORD	TNKIS73		;CODE 73 1
		WORD	TNKIS74		;CODE 74 1
		WORD	TNKIS75		;CODE 75 1
		WORD	TNKIS76		;CODE 76 1
		WORD	TNKIS77		;CODE 77 2
		WORD	TNKIS78		;CODE 78 2
		WORD	TNKIS79		;CODE 79 2
		WORD	TNKIS7A		;CODE 7A 2
		WORD	TNKIS7B		;CODE 7B 1
		WORD	TNKIS7C		;CODE 7C 1
		WORD	TNKIS7D		;CODE 7D 1
		WORD	TNKIS7E		;CODE 7E 1
		WORD	TNKIS7F		;CODE 7F 1
;
TNKIS01		EQU	$
;
TNKIS67		EQU	$
TNKIS68		EQU	$
TNKIS69		EQU	$
TNKIS6F		EQU	$
TNKIS70		EQU	$
TNKIS71		EQU	$
TNKIS72		EQU	$
TNKIS73		EQU	$
TNKIS74		EQU	$
TNKIS75		EQU	$
TNKIS76		EQU	$
TNKIS7B		EQU	$
TNKIS7C		EQU	$
TNKIS7D		EQU	$
TNKIS7E		EQU	$
TNKIS7F		EQU	$
;
		MEM8
		IDX16
		REP	#00010000B
;
		LDX	MOJIX
		LDY	MESBUFX
;
		LDA	[<WORK4],Y
		STA	>MJIBUF,X
		INY
		INX
		STX	MOJIX
		STY	MESBUFX
;
		MEM16
		IDX16
		REP	#00110000B
		RTS
;
;
TNKIS02		EQU	$
;
TNKIS6E		EQU	$
TNKIS77		EQU	$
TNKIS78		EQU	$
TNKIS79		EQU	$
TNKIS7A		EQU	$
;
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	MOJIX
		LDY	MESBUFX
;
		LDA	[<WORK4],Y
		STA	>MJIBUF,X
		INY
		INY
		INX
		INX
		STX	MOJIX
		STY	MESBUFX
;
		RTS
;
;
TNKIS6A		EQU	$		;NAME SET(CODE 6A)
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	>DTSVPT
		TAX
		LDA	>DTSVPD,X
		TAX
		LDA	>BUNAME,X
		PHA
		AND	#000FH
		STA	<WORK8
		PLA
		LSR	A
		AND	#0FFF0H
		ORA	<WORK8
		XBA
		CMP	#0CC00H
		BNE	TNKS6A1
		LDA	#0FF00H
TNKS6A1		EQU	$
		STA	<WORK8
;
		LDA	>BUNAME+2,X
		PHA
		AND	#000FH
		STA	<WORKA
		PLA
		LSR	A
		AND	#0FFF0H
		ORA	<WORKA
		XBA
		CMP	#0CC00H
		BNE	TNKS6A2
		LDA	#0FF00H
TNKS6A2		EQU	$
		STA	<WORKA
;
		LDA	>BUNAME+4,X
		PHA
		AND	#000FH
		STA	<WORKC
		PLA
		LSR	A
		AND	#0FFF0H
		ORA	<WORKC
		XBA
		CMP	#0CC00H
		BNE	TNKS6A3
		LDA	#0FF00H
TNKS6A3		EQU	$
		STA	<WORKC
;
		LDA	>BUNAME+6,X
		PHA
		AND	#000FH
		STA	<WORKE
		PLA
		LSR	A
		AND	#0FFF0H
		ORA	<WORKE
		XBA
		CMP	#0CC00H
		BNE	TNKS6A4
		LDA	#0FF00H
TNKS6A4		EQU	$
		STA	<WORKE
;
		LDA	MOJIX
		CLC
		ADC	#00008H
		TAX
		INC	MESBUFX
;
		LDA	<WORK8
		STA	>MJIBUF-8,X
		LDA	<WORKA
		STA	>MJIBUF-6,X
		LDA	<WORKC
		STA	>MJIBUF-4,X
		LDA	<WORKE
		STA	>MJIBUF-2,X
;
		LDY	#00006H			;SPACE CHK
TNKS6A5		EQU	$
		LDA	WORK8,Y
		CMP	#0FF00H
		BNE	TNKS6A6
		DEX
		DEX
		DEY
		DEY
		BPL	TNKS6A5
TNKS6A6		EQU	$
		STX	MOJIX
		RTS
;
;
TNKIS6B		EQU	$			;WINDOW WAKU
;
		MEM8
		IDX16
		REP	#00010000B
;
		LDY	MESBUFX
;
		INY
		LDA	[<WORK4],Y		;WINDOW OPEN MODE SET
		STA	WIND_SYS
		INY
		STY	MESBUFX
;
		MEM16
		IDX16
		REP	#00110000B
;
		RTS
;
;
TNKIS6C		EQU	$			;SUUGI WRITE
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	MOJIX
		LDY	MESBUFX
;
		LDA	[<WORK4],Y
		INY
		INY
		STY	MESBUFX
		XBA
		AND	#00FFH
		LSR	A
		PHP
		TAY
		LDA	MSG_SU0,Y
		PLP
		BCC	TNS6C10
		LSR	A
		LSR	A
		LSR	A
		LSR	A
TNS6C10		EQU	$
		AND	#000FH
		ORA	#00A0H
		XBA
		STA	>MJIBUF,X
		INX
		INX
		STX	MOJIX
;
		RTS
;
;
TNKIS6D		EQU	$
;
		MEM16
		IDX16
		REP	#00110000B
;
		LDY	MESBUFX
;
		INY
		LDA	[<WORK4],Y		;WINDOW OPEN MODE SET
		AND	#000FFH
		ASL	A
		TAX
;
		LDA	!VRMSAD,X
		STA	!WNADRS		;vram no adress set (moto)
		INY
		STY	MESBUFX
;
;		MEM16
;		IDX16
;		REP	#00110000B
;
		RTS
;
;
		MEM8
		IDX8
;;;;;;;;		MEM16			;MSGE TFR
;;;;;;;;		IDX16
;;;;;;;;		REP	#00110000B
;;;;;;;;;
;;;;;;;;		PHB			;tenkai suru data o mesbuf ni okuru
;;;;;;;;		LDA	#07F7FH		;NAITOKI NO TAME IN END SET
;;;;;;;;		STA	>MJIBUF
;;;;;;;;;
;;;;;;;;		LDA	MSGENOL		;do no mesege odasu ka o uketoru(test)
;;;;;;;;		ASL	A
;;;;;;;;		TAY			;tensou moto no keisan
;;;;;;;;		LDX	MGARTBL,Y	;mesege adress table kara adoresu o toru
;;;;;;;;;
;;;;;;;;		LDA	MGARTBL+2,Y	;tensou suru data no ryou
;;;;;;;;		SEC
;;;;;;;;		SBC	MGARTBL,Y
;;;;;;;;		BEQ	TENKAI0
;;;;;;;;		STA	<WORK		;work ni tensou ryou o hozon
;;;;;;;;		DEC	A		;tensou ryou no keisan
;;;;;;;;;
;;;;;;;;;		LDY	#MESBUF+1	;tensou saki
;;;;;;;;		LDY	#MJIBUF		;tensou saki
;;;;;;;;		MVN	#BANK MGARTBL #BANK MJIBUF
;;;;;;;;TENKAI0		EQU	$
;;;;;;;;		PLB
;;;;;;;;		MEM8
;;;;;;;;		IDX8
;;;;;;;;		SEP	#00110000B
;;;;;;;;		RTS
;************************************************************************
;*		window program					Lev. 1	*
;*									*
;************************************************************************
MSGPRG		EQU	$		;program
		LDA	!WIND_SYS
		JSL	>JSRSUB
		WORD	WNOPN1		;(0) window open 1
		WORD	WNOPN2		;(1) window open 2
		WORD	WNOPN3		;(2) window open BG set
		WORD	MSGMAN		;(3) program
		WORD	WNCLS		;(4) window cls
;
;
;
;************************************************************************
;*		window hi speed open				Lev. 2	*
;*									*
;************************************************************************
WNOPN1		EQU	$		;window open 1
		MEM16			;1 kai de hiraku
		IDX16
;
		JSR	WNWKST		;wnadrs -> wnkeis, x=y=0
		JSR	LNOUT		;[~~~~~~~~~~~~~~~~~~~~~~] write (16 bit rts)
;
		REP	#00110000B
;
		LDA	#006		;|                      | *7 write
		STA	<WORK
WNOPN11		EQU	$
		LDY	#0006
		JSR	LNOUT		;16 bit rts
		DEC	<WORK
		BNE	WNOPN11
;
		LDY	#0012		;[______________________] write
		JSR	LNOUT		;8 bit de nukeru
;
		LDA	#0FFFFH
		STA	!VRAMD2,X
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA     #VT01		;vramd write
		STA     <VRFLG
;
		LDA	#02
		STA	!WIND_SYS
;
		RTS
;
;
;
;************************************************************************
;*			window slow speed open			Lev. 2	*
;*									*
;************************************************************************
WNOPN2		EQU	$
		LDA     #VT01		;vramd write
		STA     <VRFLG
;
		LDA	!WNWORK
		BEQ	WNOPN22		;0 ->0
		CMP	#07
		BCC	WNOPN21
		LDA	#02		;8 ->2
		BRA	WNOPN22
WNOPN21		EQU	$
		LDA	#01H		;1 - 7 ->1
WNOPN22		EQU	$
		JSL	>JSRSUB
		WORD	WNOPNS0		;[~~~~~~~~~~~~~~~~~~~~~~] write
		WORD	WNOPNS1		;|                      | write
		WORD	WNOPNS2		;[______________________] write
;
;
;
;************************************************************************
;*			[~~~~~~~~~~~~~~~~~~~~~~] write		Lev. 2'	*
;*									*
;************************************************************************
WNOPNS0		EQU	$		;
		MEM16
		IDX16
		REP	#00110000B
		JSR	WNWKST
		JSR	LNOUT
;
		LDA	#0FFFFH
		STA	!VRAMD2,X
;
		MEM8
		IDX8
		SEP	#00110000B
;
		INC	!WNWORK
		RTS
;
;
;
;************************************************************************
;*			|                      | write		Lev. 2'	*
;*									*
;************************************************************************
WNOPNS1		EQU	$		;
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	#0000
		LDY	#0006
		JSR	LNOUT
;
		LDA     #0FFFFH
		STA     !VRAMD2,X
;
		MEM8
		IDX8
		SEP	#00110000B
;
		INC	!WNWORK
		RTS
;
;
;
;************************************************************************
;*			[______________________] write		Lev. 2'	*
;*									*
;************************************************************************
WNOPNS2		EQU	$		;
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	#0000
		LDY	#0012
		JSR	LNOUT
;
		LDA     #0FFFFH
		STA     !VRAMD2,X
;
		MEM8
		IDX8
		SEP	#00110000B
;
		INC	!WNWORK
		LDA	#02
		STA	!WIND_SYS
		RTS
;
;
;
;************************************************************************
;*			window open BG set			Lev. 2	*
;*									*
;************************************************************************
WNOPN3		EQU	$
		JSR	MESCHST		;char NO set 
;
		INC	!WIND_SYS
;
		RTS
;************************************************************************
;*			moji no syori				Lev. 2	*
;*									*
;************************************************************************
MSGMAN		EQU	$		;
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	!MESBUFX	;1 line skep
		LDY	#00000H
		CMP	#00099		;99 <= ? < 120
		BCC	MSGMAN1		;y ?=00
;		CMP	#00120
;		BCS	MSGMAN1
		LDA	#00000H
		STY	ZURCNT		;ZURCNT=0
		BRA	MSGMAN3
;
MSGMAN1		EQU	$
		CMP	#00059		;59 <= ? < 80
		BCC	MSGMAN2		;y ?=80
		CMP	#0080
		BCS	MSGMAN2
		LDA	#00080
		STY	ZURCNT		;ZURCNT=0
		BRA	MSGMAN3
;
MSGMAN2		EQU	$
		CMP	#00019		;19 <= ? <40
		BCC	MSGMAN3		;y ?=40
		CMP	#0040
		BCS	MSGMAN3
		LDA	#00040
		STY	ZURCNT		;ZURCNT=0
;
MSGMAN3		EQU	$
		STA	!MESBUFX
;
		CMP	#00018		;MESBUFX = 18,58,98 ?
		BEQ	MSGMAN4
		CMP	#00058
		BEQ	MSGMAN4
		CMP	#00098
		BNE	MSGMAN5
MSGMAN4		EQU	$
		LDA	ZURCNT		;y
		AND	#00007
		CMP	#00006
		BCC	MSGMAN5		;ZURCNT = 6,7 ?
		INC	!MESBUFX	;MESBUFX ++
		BRA	MSGMAN		;next line
MSGMAN5		EQU	$
;
		LDX	!MOJIX
		LDA	>MJIBUF,X	;A=0 - 7FH
		AND	#0007FH
		SEC
		SBC	#00066H
		BPL	MSGMAN6
		LDA	#00000H
MSGMAN6		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
;
		JSR	MSGMANS		;jsrsub ni tobu
;
		LDA	#bgw2
		STA	<BGWTFG
		STA	!GMAPDF
;
;		JSR	MESGTFR		;moji eria o vramd2 ni okuru
;
		RTS
;
MSGMANS		EQU	$
		JSL	>JSRSUB
		WORD	CODE_00		;moji
		WORD	CODE_67		;f in out
		WORD	CODE_68		;yes or no
		WORD	CODE_69		;print item & select
		WORD	CODE_6A		;name write
		WORD	CODE_6B		;msge window waku code
		WORD	CODE_6C		;msge suugi write(2 byte.0,1,2,3syurui .0-f)
		WORD	CODE_6D		;
		WORD	CODE_6E		;
		WORD	CODE_6F		;
		WORD	CODE_70		;
		WORD	CODE_71		;
		WORD	CODE_72		;
		WORD	CODE_73		;sukurouru. next 3 line.
		WORD	CODE_74		;next 1 line.
		WORD	CODE_74		;next 2 line.
		WORD	CODE_74		;next 3 line.
		WORD	CODE_77		;moji color.
		WORD	CODE_78		;wait.
		WORD	CODE_79		;sound.
		WORD	CODE_7A		;moji speed.
		WORD	CODE_7B		;e moji(smoll).
		WORD	CODE_7C		;e moji(big).
		WORD	CODE_7D		;window cls.
		WORD	CODE_7E		;input wait.
		WORD	CODE_7F		;end. input wait.
;
;
;
;************************************************************************
;*			window o kesu				Lev. 2	*
;*						work o tukau		*
;************************************************************************
WNCLS		EQU	$		;cls waku
		MEM16
		IDX16
		REP	#00110000B
;
		JSR	WNWKST		;window no adress o keisan ni utusu
;										;x=y=0
WNCLS1		EQU	$
		MEM16			;
		IDX16
		REP	#00110000B
;
		LDA	!WNKEIS
		XBA
		STA	!VRAMD2,X
		INX
		INX
		LDA	!CLSDATA	;nuki no data o vramd2 ni okuru
		STA	!VRAMD2,X
		INX
		INX
		LDA	!CLSDATA+2
		STA	!VRAMD2,X
		INX
		INX
		LDA	#0FFFFH
		STA	!VRAMD2,X
;										;yes
;// 03.07.12 //		LDA	>BKWD2130
;// 03.07.12 //		STA	<WD2130
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA     #VT01		;vramd write
		STA     <VRFLG
;
		STZ     !INITAL		;tugi no syori no junbi
		STZ	<GAMEMD		;syori owari
		LDA	!NXSLMD
		STA	<SLMODE
		RTS
;
;
;
;************************************************************************
;*			CODE_00 syori				Lev. 3	*
;*									*
;************************************************************************
CODE_00		EQU	$
;		LDA	<KEYA1L
;		AND	#080H
;		BEQ	COD010		;? DO BOTON
;		LDA	#000H		;Y
;		BRA	COD001
;COD010		EQU	$
		LDA	!MJISPD		;N
		CMP	#02		;2<A nara A=2
		BCC	COD001
		LDA	#02
COD001		EQU	$
		JSL	>JSRSUB
		WORD	CODESPD_00	;1 line print
		WORD	CODESPD_01	;1 moji print
		WORD	CODESPD_02
		WORD	CODESPD_03
		WORD	CODESPD_04
		WORD	CODESPD_05
		WORD	CODESPD_06
		WORD	CODESPD_07
		WORD	CODESPD_08
		WORD	CODESPD_09
		WORD	CODESPD_0A
		WORD	CODESPD_0B
		WORD	CODESPD_0C
		WORD	CODESPD_0D
		WORD	CODESPD_0E
		WORD	CODESPD_0F
;
;****************************************************************
;*		CODE_00_SPEED_00			Lev. 4	*
;*								*
;****************************************************************
CODESPD_00	EQU	$
		JSR	CODESPD_01
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	!MESBUFX
		CMP	#00019
		BEQ	CODESPD001
		CMP	#00059
		BEQ	CODESPD001
		CMP	#00099
		BEQ	CODESPD001
;
		MEM8
		IDX8
		SEP	#00110000B
		JMP	MSGMAN
;
CODESPD001	EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_01			Lev. 4	*
;*								*
;****************************************************************
CODESPD_01	EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	!MOJIX
		LDA	>MJIBUF,X	;moji data read
		CMP	#0FF00H
		BEQ	CODESPD013
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA	#00CH		;OTO
		STA	SOUND3
;
		MEM16
		IDX16
		REP	#00110000B
;
CODESPD013	EQU	$
		LDA	!MESBUFX
		ASL	A
		TAX
;
		MEM8
		IDX16
		SEP	#00100000B
		LDA	!MJIATR
		STA	!MESBUF+1,X
		STA	!MESBUF+3,X
		STA	!MESBUF+5,X
		STA	!MESBUF+41,X
		STA	!MESBUF+43,X
		STA	!MESBUF+45,X
;
		JSR	MESGTFR
;
		MEM16
		IDX16
		REP	#00110000B
;
		JSR	MJSTNKI
;
MOJISET		EQU	$
;
		LDX	!MOJIX
		LDA	>MJIBUF,X	;moji data read
		XBA
		AND	#001FFH
		ASL	A
		ASL	A
		STA	<WORK+09H	;moji size read point set
		LDY	#00000H
		LDA	!MESBUFX	;moji write point set
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TAX
		JSR	MJCRSET		;1 char set
;
		LDX	!MOJIX
		LDA	>MJIBUF,X	;moji data read
		XBA
		AND	#001FFH
		ASL	A
		ASL	A
		STA	<WORK+09H	;moji size read point set
		LDY	#00016H
		LDA	!MESBUFX	;moji write point set
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	#00140H
		TAX
		JSR	MJCRSET		;3 char set
;
		LDA	<WORK+09H
		AND	#00003H
		TAX
		LDA	MOJIDOT,X	; moji dot su get
		CLC
		ADC	ZURCNT
		TAY
		AND	#00007
		STA	ZURCNT
		TYA
		AND	#000FFH
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	!MESBUFX	; next write point set
		STA	!MESBUFX
;
		LDX	!MOJIX
		LDA	>MJIBUF,X	;moji data read
		XBA
		AND	#001FFH
		ASL	A
		ASL	A
		STA	<WORK+09H	;moji size read point set
		INC	<WORK+09H	;moji size read point set
		LDY	#00010H
		LDA	!MESBUFX	;moji write point set
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TAX
		JSR	MJSTKAI		;2 char set
;
		LDX	!MOJIX
		LDA	>MJIBUF,X	;moji data read
		XBA
		AND	#001FFH
		ASL	A
		ASL	A
		STA	<WORK+09H	;moji size read point set
		INC	<WORK+09H	;moji size read point set
		LDY	#00026H
		LDA	!MESBUFX	;moji write point set
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	#00140H
		TAX
		JSR	MJSTKAI		;4 char set
;
		LDA	<WORK+09H
		AND	#00003H
		TAX
		LDA	MOJIDOT,X	;moji dot get
		CLC
		ADC	ZURCNT
		TAY
		AND	#00007
		STA	ZURCNT
		TYA
		AND	#000FFH
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	!MESBUFX	;next write point
		STA	!MESBUFX
;
		INC	!MOJIX		; next moji
		INC	!MOJIX		; next moji
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA	!MJISPDBK	; moji speed set
		STA	!MJISPD
;
		RTS
;
;
;
;
MJSTKAI		EQU	$
		MEM8
		IDX16
		SEP	#00100000B
		PHB
		LDA	#BANK MJPCBF
		PHA
		PLB
;
		MEM16
		IDX16
		REP	#00110000B
;
;
;					;MOJI TENKAI BUF CLS
MJSTKAI1	EQU	$
		STZ	MJPCBF+0EH
		STZ	MJPCBF+0CH
		STZ	MJPCBF+0AH
		STZ	MJPCBF+08H
		STZ	MJPCBF+06H
		STZ	MJPCBF+04H
		STZ	MJPCBF+02H
		STZ	MJPCBF+00H
;
		MEM8			;TENKAI PROG.
		IDX16
		SEP	#00100000B
		LDA	#002H
		STA	<WORKE
		INY
		INY
		INY
		INY
		INY
MJSTKAI2	EQU	$
		LDA	[<WORK+04H],Y	;moji set
MJSTKAI3	EQU	$
		LSR	A
		ROR	MJPCBF+1+0EH
		LSR	A
		ROR	MJPCBF+1+0CH
		LSR	A
		ROR	MJPCBF+1+0AH
		LSR	A
		ROR	MJPCBF+1+08H
		LSR	A
		ROR	MJPCBF+1+06H
		LSR	A
		ROR	MJPCBF+1+04H
		LSR	A
		ROR	MJPCBF+1+02H
		LSR	A
		ROR	MJPCBF+1+00H
		DEY
;
		LDA	[<WORK+04H],Y	;moji set
MJSTKAI4	EQU	$
		LSR	A
		ROR	MJPCBF+0+0EH
		LSR	A
		ROR	MJPCBF+0+0CH
		LSR	A
		ROR	MJPCBF+0+0AH
		LSR	A
		ROR	MJPCBF+0+08H
		LSR	A
		ROR	MJPCBF+0+06H
		LSR	A
		ROR	MJPCBF+0+04H
		LSR	A
		ROR	MJPCBF+0+02H
		LSR	A
		ROR	MJPCBF+0+00H
		DEY
;
		DEC	<WORKE
		BPL	MJSTKAI2
;
		MEM16
		IDX16
		REP	#00110000B
;
		PLB
		LDY	#00000H
;
		LDA	#MJPCBF
		STA	<WORK+04H
		LDA	#BANK MJPCBF
		STA	<WORK+06H
;
		JSR	MJCRSET		;1 CHAR SET
;
		LDA	#MJFTBF		;MOTO SET
		STA	<WORK+04H
		LDA	#BANK MJFTBF
		STA	<WORK+06H
;
		RTS
;
;
;

MJSTDT		EQU	$
		BYTE	0FFH,07FH,03FH,01FH,00FH,007H,003H,001H,000H
MJCRSET		EQU	$		; 1 char set 
		MEM8
		IDX16
		SEP	#00100000B
;
		LDA	#00FH		; 1char size
		STA	<WORK+0FH
;
MJCRST1		EQU	$
		STY	<WORK+0DH	;data read point
		STX	<WORK+0BH	;data write point
;
		STZ	<WORK3
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA	<WORK+09H
		AND	#003H
		TAY
		LDA	MOJIDOT,Y	;moji dot get
		TAY
		LDA	MJSTDT,Y
		STA	<WORK+00H	;moji cls
;
		MEM8
		IDX16
		REP	#00010000B
;
		LDA	#0FFH		;moji cls
		STA	<WORK+01H
;
		LDY	<WORK+0DH
		LDA	[<WORK+04H],Y	;moji set
		STA	<WORK+02H
;
		MEM16
		IDX16
		REP	#00110000B
		LDA	ZURCNT
		AND	#00007H
		TAY
		MEM8
		IDX16
		SEP	#00100000B
		BEQ	MJCRST3
;
MJCRST2		EQU	$
		SEC
		ROR	<WORK0
		ROR	<WORK1
		CLC
		ROR	<WORK2
		ROR	<WORK3
		DEY
		BNE	MJCRST2
MJCRST3		EQU	$
;
		LDX	<WORK+0BH	;moji write point set
;
		LDA	<WORK+00H	;moji cls
		AND	>MOJIBUF,X
		STA	>MOJIBUF,X
;
		LDA	<WORK+01H	;moji cls
		AND	>MOJIBUF+010H,X
		STA	>MOJIBUF+010H,X
;
		LDA	<WORK+02H	;moji set
		ORA	>MOJIBUF,X
		STA	>MOJIBUF,X
;
		LDA	<WORK+03H	;moji set
		ORA	>MOJIBUF+010H,X
		STA	>MOJIBUF+010H,X
;
		LDY	<WORK+0DH	;next data read point
		LDX	<WORK+0BH	;next data write point
		INX
		INY
;
		DEC	<WORK+0FH
		BPL	MJCRST1		;1 char end?
;					;y
		MEM16
		IDX16
		REP	#00110000B
;
		RTS
;
;
;
;
MJSTNKI		EQU	$
		LDA	#00000H
		LDX	#00030H
MSNKI10		EQU	$
		STA	>MJFTBF,X	;TENKAI RAM CLS
		DEX
		DEX
		BPL	MSNKI10
;
		LDA	#BANK MOJIFNT	;MOJI FNT BANK SET
		STA	<WORK+06H
;
		LDX	!MOJIX
		LDA	>MJIBUF,X	;moji data read
		XBA
		AND	#001FFH
		STA	<WORKE
		ASL	A
		TAX
		ASL	A
		ADC	<WORKE
		TAY
		LDA	>MJFTADR,X
		CLC
		ADC	#MOJIFNT
		STA	<WORK+04H	;MOJI FNT ADD SET
		TYX			;BIT DATA ADD SET
;
		LDA	>MOJIBIT+0,X	;DATA SET
		XBA
		STA	<WORK9
		LDA	>MOJIBIT+2,X
		XBA
		STA	<WORKB
		LDA	>MOJIBIT+4,X
		AND	#000FFH
		XBA
		STA	<WORKD
;
		LDY	#00000H
		LDX	#00003H
MSNKI20		EQU	$
		LDA	<WORK9
		ORA	<WORKB
		ORA	<WORKD
		BEQ	MSNKI30		;? 1 MOJI END
;					;N
		INX
;
		ASL	<WORKD
		ROL	<WORKB
		ROL	<WORK9
;
		BCC	MSNKI20
		LDA	[<WORK4],Y
		AND	#000FFH
		STA	>MJFTBF,X
		INY
		BRA	MSNKI20
MSNKI30		EQU	$
		LDA	#MJFTBF		;MOJI FNT BANK SET
		STA	<WORK+04H
		LDA	#BANK MJFTBF	;MOJI FNT BANK SET
		STA	<WORK+06H
		RTS
;----------------------------------------
MSGETNP		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	#00000H
		STX	MOJIX
		TXY
;
MSGET10		EQU	$
;
		TYA
		XBA
		STA	>MJIBUF
		PHY
		PHX
		JSR	MJSTNKI		;TENKAI
		PLX
;
		LDY	#00000H
		JSR	MSGTS1		;TENKAI
		PLY
		CPY	#000CCH
		BNE	MSGET30
;
		PHX
;
		LDX	#0003EH		;NUKI SET( Noto !!!!)
		LDA	#00000H
MSGET40		EQU	$
		STA	>MOJIBUF,X
		DEX
		DEX
		BPL	MSGET40
;
		PLX
MSGET30		EQU	$
		JSR	MSGTS2		;TENSOU
;
		INX
		TXA
		AND	#0000FH
		BNE	MSGET20
		TXA
		CLC
		ADC	#00010H
		TAX
MSGET20		EQU	$
		INY
		CPY	#00200H
		BCC	MSGET10
;
		MEM8
		IDX8
		SEP	#00110000B
;
		RTL
;
;
MSGTS1		EQU	$
		MEM16
		IDX16
;
		PHX
		PHY
;
		LDA	<WORK6		;MOTO SET
		STA	<WORK2
		LDA	<WORK4
		STA	<WORK0
;
		CLC
		ADC	#00016H
		STA	<WORK3
		LDA	<WORK6
		ADC	#00000H
		STA	<WORK5
;
		TYA
		STA	<WORKE
		ASL	A
		ASL	A
		ADC	<WORKE		;Y*2ch
		ASL	A
		ADC	<WORKE
		ASL	A
		ASL	A
		TAY
;
		LDX	#00000H
;
MSGS10		EQU	$
		LDA	[<WORK0],Y
		STA	>MOJIBUF,X		;MOJIFNT ---> MOJIBUF
		LDA	[<WORK3],Y
		STA	>MOJIBUF+20H,X
		INX
		INX
		INY
		INY
		CPX	#00010H
		BCC	MSGS10
;
		LDX	#0000EH
		LDA	#00000H
;
MSGS11		EQU	$
		STA	>MOJIBUF+10H,X
		STA	>MOJIBUF+30H,X
		DEX
		DEX
		BPL	MSGS11
;
		MEM8			;TENKAI PROG.
		IDX16
		SEP	#00100000B
		LDA	#002H
		STA	<WORKE
		INY
		INY
		INY
		INY
		INY
MSGS12		EQU	$
		LDX	#0000EH
		LDA	[<WORK+00H],Y	;moji set
MSGS13		EQU	$
		LSR	A
		PHA
		LDA	>MOJIBUF+11H,X
		ROR	A
		STA	>MOJIBUF+11H,X
		PLA
		DEX
		DEX
		BPL	MSGS13
		DEY
;
		LDX	#0000EH
		LDA	[<WORK+00H],Y	;moji set
MSGS14		EQU	$
		LSR	A
		PHA
		LDA	>MOJIBUF+10H,X
		ROR	A
		STA	>MOJIBUF+10H,X
		PLA
		DEX
		DEX
		BPL	MSGS14
		DEY
;
		DEC	<WORKE
		BPL	MSGS12
;
		MEM8			;TENKAI PROG.
		IDX16
		SEP	#00100000B
		LDA	#002H
		STA	<WORKE
		INY
		INY
		INY
		INY
		INY
		INY
MSGS15		EQU	$
		LDX	#0000EH
		LDA	[<WORK+03H],Y	;moji set
MSGS16		EQU	$
		LSR	A
		PHA
		LDA	>MOJIBUF+31H,X
		ROR	A
		STA	>MOJIBUF+31H,X
		PLA
		DEX
		DEX
		BPL	MSGS16
		DEY
;
		LDX	#0000EH
		LDA	[<WORK+03H],Y	;moji set
MSGS17		EQU	$
		LSR	A
		PHA
		LDA	>MOJIBUF+30H,X
		ROR	A
		STA	>MOJIBUF+30H,X
		PLA
		DEX
		DEX
		BPL	MSGS17
		DEY
;
		DEC	<WORKE
		BPL	MSGS15
;
		LDX	#0000FH
;
MSGS18		EQU	$
		LDA	>MOJIBUF+10H,X		;LEFT MOVE
		ASL	A
		LDA	>MOJIBUF+00H,X
		ROL	A
		STA	>MOJIBUF+00H,X
;
		LDA	>MOJIBUF+30H,X
		ASL	A
		LDA	>MOJIBUF+20H,X
		ROL	A
		STA	>MOJIBUF+20H,X
;
		DEX
		BPL	MSGS18
;
		MEM16
		IDX16
		REP	#00110000B
;
		PLY
		PLX
		RTS
;
MSGTS2		EQU	$
		MEM16
		IDX16
;
		PHX
		PHY
;
		LDA	#MOJIBUF	;MOTO SET
		STA	<WORK+00H
		LDA	#BANK MOJIBUF
		STA	<WORK+02H
;
		LDA	#MOJIBUF	;MOTO SET
		CLC	
		ADC	#00020H
		STA	<WORK+03H
		LDA	#BANK MOJIBUF
		STA	<WORK+05H
;
		TXA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TAX
;
		LDY	#00000H
;
MSGS20		EQU	$
		LDA	[<WORK0],Y
		STA	>GDBUF0,X		;GDBUF0 <--- MOJIBUF
		LDA	[<WORK3],Y
		STA	>GDBUF0+100H,X
		INX
		INX
		INY
		INY
		CPY	#00010H
		BCC	MSGS20
;
		PLY
		PLX
		RTS
;****************************************************************
;*		CODE_00_SPEED_02			Lev. 4	*
;*								*
;****************************************************************
		MEM8
		IDX8
;
CODESPD_02	EQU	$
		DEC	!MJISPD
		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_03			Lev. 4	*
;*								*
;****************************************************************
CODESPD_03	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_04			Lev. 4	*
;*								*
;****************************************************************
CODESPD_04	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_05			Lev. 4	*
;*								*
;****************************************************************
CODESPD_05	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_06			Lev. 4	*
;*								*
;****************************************************************
CODESPD_06	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_07			Lev. 4	*
;*								*
;****************************************************************
CODESPD_07	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_08			Lev. 4	*
;*								*
;****************************************************************
CODESPD_08	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_09			Lev. 4	*
;*								*
;****************************************************************
CODESPD_09	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_0A			Lev. 4	*
;*								*
;****************************************************************
CODESPD_0A	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_0B			Lev. 4	*
;*								*
;****************************************************************
CODESPD_0B	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_0C			Lev. 4	*
;*								*
;****************************************************************
CODESPD_0C	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_0D			Lev. 4	*
;*								*
;****************************************************************
CODESPD_0D	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_0E			Lev. 4	*
;*								*
;****************************************************************
CODESPD_0E	EQU	$
;		RTS
;
;
;
;****************************************************************
;*		CODE_00_SPEED_0F			Lev. 4	*
;*								*
;****************************************************************
CODESPD_0F	EQU	$
;		RTS
;
;
;
;************************************************************************
;*			CODE_65 syori				Lev. 3	*
;*									*
;************************************************************************
CODE_65		EQU	$
;		RTS
;************************************************************************
;*			CODE_66 syori				Lev. 3	*
;*									*
;************************************************************************
CODE_66		EQU	$		;y=65h
		RTS
;************************************************************************
;*			CODE_67 syori				Lev. 3	*
;*									*
;************************************************************************
CODE_67		EQU	$
		LDA	<SLMODE
		CMP	#MD_tdemo
		BNE	CODE67100	; title-demo ?
;					; yes
		JSL	>CGCNG8
		LDA	>CCNGCT
		BNE	CODE671
CODE67100	EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		INC	!MOJIX
;
		MEM8
		IDX8
		SEP	#00110000B
CODE671		EQU	$
		RTS
;
;
;
;************************************************************************
;*			CODE_68 syori				Lev. 3	*
;*	yes or no							*
;************************************************************************
CODE_68_DT	EQU	$
		WORD	MS_0001,MS_0002
CODE_68		EQU	$
		LDA	MSGIPTM
		BEQ	CODE6850
		DEC	A
		STA	MSGIPTM
		CMP	#001H
		BNE	CODE6810
		LDA	#024H		;OTO
		STA	SOUND3
		BRA	CODE6810	;? INKEY WAIT OK
CODE6850	EQU	$
		LDA	<KEYA2
		TAY
		ORA	<KEYA2L
		AND	#0C0H
		BNE	CODE6820	;A B X Y PUSH
		TYA
		AND	#008H		;UP
		BNE	CODE6830
		TYA
		AND	#004H		;DOWN
		BNE	CODE6840
CODE6810	EQU	$
		RTS
;
CODE6830	EQU	$
		LDA	MSG_RTS
		BEQ	CODE6810
		STZ	MSG_RTS
		BRA	CODE6860
;
CODE6840	EQU	$
		LDA	MSG_RTS
		DEC	A
		BEQ	CODE6810
		LDA	#001H
		STA	MSG_RTS
;
CODE6860	EQU	$
		LDA	#020H
		STA	SOUND3		;OTO
		LDA	MSG_RTS
		ASL	A
		TAX
		LDA	CODE_68_DT,X
		STA	MSGENOL
		LDA	CODE_68_DT+1,X
		STA	MSGENOH
		JSR	MSG_TENKAI
		STZ	ZURCNT
		STZ	MOJIX
		STZ	MOJIXH
		RTS
;
CODE6820	EQU	$
		LDA	#02BH
		STA	SOUND2		;OTO
		LDA	#04
		STA	!WIND_SYS
		RTS
;
;
;
;************************************************************************
;*			CODE_69 syori				Lev. 3	*
;*		print item & select					*
;************************************************************************
CODE_69		EQU	$
;						;KEY INPUT
		LDA	MSGIPTM
		BEQ	CODE_69_S
		DEC	A
		STA	MSGIPTM
		CMP	#001H
		BEQ	CODE69SL
		BRA	CODE6960
CODE_69_S	EQU	$
		LDA	<KEYA2
		ORA	<KEYA2L
		AND	#0C0H
		BNE	CODE6950		;EXIT
		LDA	<KEYA2
		AND	#005H
		BEQ	CODE6930
		INC	MSG_RTS			;RIGHT
		BRA	CODE6940
CODE6930	EQU	$
		LDA	<KEYA2
		AND	#00AH
		BEQ	CODE6940
		DEC	MSG_RTS			;LEFT
		JSR	CODE69S2
		JSR	MESGTFR
		BRA	CODE6960
CODE6940	EQU	$
		JSR	CODE69SL
		JSR	MESGTFR
CODE6960	EQU	$
		RTS
;
CODE6950	EQU	$
		LDA	#04
		STA	!WIND_SYS
		RTS
;
CODE69S2	EQU	$			;ITEM SELCT
		LDX	MSG_RTS
		BPL	CODE69102
		LDX	#032-1
		STX	MSG_RTS
CODE69102	EQU	$
		CPX	#016-1
		BEQ	CODE69122		;? BIN SELECT
		LDA	>ITEMR01,X		;N
		BMI	CODE69124
		BNE	CODE6920		;? MOTTE IRU
CODE69124	EQU	$
		CPX	#033-1			;? OKANE
		BNE	CODE69122
		LDA	>ITEMR01+1,X		;Y
		BNE	CODE6920
CODE69122	EQU	$			;N
		DEC	MSG_RTS
		BRA	CODE69S2
;
CODE69SL	EQU	$			;ITEM SELCT
		LDX	MSG_RTS
		CPX	#033-1
		BCC	CODE6910
		LDX	#000H
		STX	MSG_RTS
CODE6910	EQU	$
		CPX	#016-1
		BEQ	CODE6912		;? BIN SELECT
		LDA	>ITEMR01,X		;N
		BMI	CODE6914
		BNE	CODE6920		;? MOTTE IRU
CODE6914	EQU	$
		CPX	#033-1			;? OKANE
		BNE	CODE6912
		LDA	>ITEMR01+1,X		;Y
		BNE	CODE6920
CODE6912	EQU	$			;N
		INC	MSG_RTS
		BRA	CODE69SL
CODE6920	EQU	$
		TXY
		TXA
		ASL	A
		TAX
		LDA	>STGITRM,X
		STA	<WORK0
		LDA	>STGITRM+1,X
		STA	<WORK1
		LDA	#BANK STGITRM
		STA	<WORK2
		TYX
;
		LDA	>ITEMR01,X
;
		CPX	#033-1
		BEQ	CODE6980		;? COIN
;
		CPX	#004-1
		BNE	CODE6970		;? BOMB
;
CODE6980	EQU	$
		LDA	#001H
CODE6970	EQU	$
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	[<WORK],Y
		STA	MESBUF+000H+ITEMLOC
		INY
		LDA	[<WORK],Y
		STA	MESBUF+001H+ITEMLOC
		INY
		LDA	[<WORK],Y
		STA	MESBUF+002H+ITEMLOC
		INY
		LDA	[<WORK],Y
		STA	MESBUF+003H+ITEMLOC
		INY
		LDA	[<WORK],Y
		STA	MESBUF+028H+ITEMLOC
		INY
		LDA	[<WORK],Y
		STA	MESBUF+029H+ITEMLOC
		INY
		LDA	[<WORK],Y
		STA	MESBUF+02AH+ITEMLOC
		INY
		LDA	[<WORK],Y
		STA	MESBUF+02BH+ITEMLOC
;
		RTS
;
ITEMLOC		EQU	070H
;
;
;************************************************************************
;*			CODE_6A syori				Lev. 3	*
;*									*
;************************************************************************
CODE_6A		EQU	$
;
;		TNKIS6A	---> tenkai no toki ni set
;
;
;
;
;************************************************************************
;*			CODE_6B syori				Lev. 3	*
;*									*
;************************************************************************
CODE_6B		EQU	$
;
;		TNKIS6B	---> tenkai no toki ni set
;
;
;
;************************************************************************
;*			CODE_6C syori				Lev. 3	*
;*									*
;************************************************************************
CODE_6C		EQU	$
;
;		TNKIS6C	---> tenkai no toki ni set
;
;
;
;
;************************************************************************
;*			CODE_6D syori				Lev. 3	*
;*									*
;************************************************************************
CODE_6D		EQU	$
;
;		TNKIS6D ---> tenkai no toki ni set
;
;
;
;************************************************************************
;*			CODE_6E syori				Lev. 3	*
;*	SCR. DOT SPEED SET						*
;************************************************************************
CODE_6E		EQU	$
		MEM8
		IDX16
		REP	#00010000B
;
		LDX	!MOJIX
		INX
;
		LDA	>MJIBUF,X	;DOT speed read
		STA	MSGSCRD		;DOT speed set
;
		INX
		STX	!MOJIX		;mjibuf,x o tugi ni susumeru
;
		MEM8
		IDX8
		SEP	#00110000B
;
		RTS
;
;
;
;************************************************************************
;*			CODE_6F syori				Lev. 3	*
;*									*
;************************************************************************
CODE_6F		EQU	$
		RTS
;
;
;
;************************************************************************
;*			CODE_70 syori				Lev. 3	*
;*									*
;************************************************************************
CODE_70		EQU	$
;
;
;
;************************************************************************
;*			CODE_71 syori				Lev. 3	*
;*									*
;************************************************************************
CODE_71_DT	EQU	$
		WORD	MS_0006,MS_0007,MS_0008
CODE_71		EQU	$
		LDA	MSGIPTM
		BEQ	CODE7150
		DEC	A
		STA	MSGIPTM
		CMP	#001H
		BNE	CODE7110
		LDA	#024H		;OTO
		STA	SOUND3
		BRA	CODE7110	;? INKEY WAIT OK
CODE7150	EQU	$
		LDA	<KEYA2L
		AND	#0C0H
		ORA	<KEYA2
		TAY
		AND	#0D0H
		BNE	CODE7120	;A B X Y PUSH
		TYA
		AND	#008H		;UP
		BNE	CODE7130
		TYA
		AND	#004H		;DOWN
		BNE	CODE7140
CODE7110	EQU	$
		RTS
;
CODE7130	EQU	$
		LDA	MSG_RTS
		DEC	A
		CMP	#0FFH
		BNE	CODE7138
		LDA	#002H
CODE7138	EQU	$
		STA	MSG_RTS
		BRA	CODE7160
;
CODE7140	EQU	$
		LDA	MSG_RTS
		INC	A
		CMP	#003H
		BNE	CODE7148
		LDA	#000H
CODE7148	EQU	$
		STA	MSG_RTS
;
CODE7160	EQU	$
		LDA	#020H
		STA	SOUND3		;OTO
		LDA	MSG_RTS
		ASL	A
		TAX
		LDA	CODE_71_DT,X
		STA	MSGENOL
		LDA	CODE_71_DT+1,X
		STA	MSGENOH
		JSR	MSG_TENKAI
		STZ	ZURCNT
		STZ	MOJIX
		STZ	MOJIXH
		RTS
;
CODE7120	EQU	$
		LDA	#02BH
		STA	SOUND2		;OTO
		LDA	#04
		STA	!WIND_SYS
		RTS
;
;
;
;
;************************************************************************
;*			CODE_72 syori				Lev. 3	*
;*	yes or no							*
;************************************************************************
CODE_72_DT	EQU	$
		WORD	MS_0009,MS_000A
CODE_72		EQU	$
		LDA	MSGIPTM
		BEQ	CODE7250
		DEC	A
		STA	MSGIPTM
		CMP	#001H
		BNE	CODE7210
		LDA	#024H		;OTO
		STA	SOUND3
		BRA	CODE7210	;? INKEY WAIT OK
CODE7250	EQU	$
		LDA	<KEYA2L
		AND	#0C0H
		ORA	<KEYA2
		TAY
		AND	#0D0H
		BNE	CODE7220	;A B X Y PUSH
		TYA
		AND	#008H		;UP
		BNE	CODE7230
		TYA
		AND	#004H		;DOWN
		BNE	CODE7240
CODE7210	EQU	$
		RTS
;
CODE7230	EQU	$
		LDA	MSG_RTS
		BEQ	CODE7210
		STZ	MSG_RTS
		BRA	CODE7260
;
CODE7240	EQU	$
		LDA	MSG_RTS
		DEC	A
		BEQ	CODE7210
		LDA	#001H
		STA	MSG_RTS
;
CODE7260	EQU	$
		LDA	#020H
		STA	SOUND3		;OTO
		LDA	MSG_RTS
		ASL	A
		TAX
		LDA	CODE_72_DT,X
		STA	MSGENOL
		LDA	CODE_72_DT+1,X
		STA	MSGENOH
		JSR	MSG_TENKAI
		STZ	ZURCNT
		STZ	MOJIX
		STZ	MOJIXH
		RTS
;
CODE7220	EQU	$
		LDA	#02BH
		STA	SOUND2		;OTO
		LDA	#04
		STA	!WIND_SYS
		RTS
;
;
;
;************************************************************************
;*			CODE_73 syori				Lev. 3	*
;*			scrol next line 3				*
;************************************************************************
CODE_73		EQU	$		;scrool no syori
;
		MEM8
		IDX8
;
		PHB
		LDA	#BANK MOJIBUF
		PHA
		PLB
;
		LDA	<KEYA1L
		AND	#080H
		BEQ	CODE738		;? DO BOTON
		LDA	>MSGSCRD		;Y
		BRA	CODE737
CODE738		EQU	$
		LDA	>MSGSCRD		;N
CODE737		EQU	$
		STA	<WORK+02H
;
CODE731		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		STZ	<WORK+00H
;
CODE732		EQU	$
		LDX	<WORK+00H
		LDA	MOJIBUF+002H,X
		STA	MOJIBUF+000H,X
		LDA	MOJIBUF+004H,X
		STA	MOJIBUF+002H,X
		LDA	MOJIBUF+006H,X
		STA	MOJIBUF+004H,X
		LDA	MOJIBUF+008H,X
		STA	MOJIBUF+006H,X
		LDA	MOJIBUF+00AH,X
		STA	MOJIBUF+008H,X
		LDA	MOJIBUF+00CH,X
		STA	MOJIBUF+00AH,X
		LDA	MOJIBUF+00EH,X
		STA	MOJIBUF+00CH,X
		LDA	MOJIBUF+140H,X
		STA	MOJIBUF+00EH,X
;
		LDA	<WORK+00H
		CLC
		ADC	#00010H
		STA	<WORK+00H
;
		CMP	#00780H
		BCC	CODE732
;
;					;end line cls
CODE733		EQU	$
		STZ	MOJIBUF+77EH
		STZ	MOJIBUF+76EH
		STZ	MOJIBUF+75EH
		STZ	MOJIBUF+74EH
		STZ	MOJIBUF+73EH
		STZ	MOJIBUF+72EH
		STZ	MOJIBUF+71EH
		STZ	MOJIBUF+70EH
		STZ	MOJIBUF+6FEH
		STZ	MOJIBUF+6EEH
		STZ	MOJIBUF+6DEH
		STZ	MOJIBUF+6CEH
		STZ	MOJIBUF+6BEH
		STZ	MOJIBUF+6AEH
		STZ	MOJIBUF+69EH
		STZ	MOJIBUF+68EH
		STZ	MOJIBUF+67EH
		STZ	MOJIBUF+66EH
		STZ	MOJIBUF+65EH
		STZ	MOJIBUF+64EH
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA	>SCRLIN
		CLC
		ADC	#001H
		STA	>SCRLIN
		AND	#00FH
		BNE	CODE734
;
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	>MOJIX
		CLC
		ADC	#00001H
		STA	>MOJIX
;
		LDA	#00080
		STA	>MESBUFX
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA	#000H
		STA	>ZURCNT
;
		STZ	<WORK+02H	;loop end
;
CODE734		EQU	$
		DEC	<WORK+02H
		BMI	CODE735		;scrol end?
		JMP	CODE731		;scrol end?
CODE735		EQU	$
;					;y
		PLB
		RTS
;
;
;
;
;************************************************************************
;*			CODE_74 CODE_75 CODE_76 syori		Lev. 3	*
;*			next line 1					*
;************************************************************************
;************************************************************************
;*			CODE_75 syori				Lev. 3	*
;*			next line 2					*
;************************************************************************
;************************************************************************
;*			CODE_76 syori				Lev. 3	*
;*			next line 3					*
;************************************************************************
CODE_74		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	!MOJIX		;40 120 200 no dokoka ni kaigyio
		LDA	>MJIBUF,X
		AND	#0003H
		ASL	A
		TAX
;
		LDA	!LINEDAT,X	;kaigyou
		STA	!MESBUFX
;
		INC	!MOJIX
;
		MEM8
		IDX8
		SEP	#00110000B
;
		STZ	ZURCNT
;
		RTS
;		JMP	MSGMAN
;
;
;
;************************************************************************
;*			CODE_77 syori				Lev. 3	*
;*			moji color					*
;************************************************************************
CODE_77		EQU	$		;moji no color o kaeru
		MEM8
		IDX16
		REP	#00010000B
;
		LDA	!MJIATR		;mjiatr	no color o 000 ni suru
		AND	#11100011B
		STA	!MJIATR
;
		LDX	!MOJIX		;moji color no new data o mjiart ni set suru
		INX
		LDA	>MJIBUF,X
		AND	#00000111B
		ASL	A
		ASL	A
		ORA	!MJIATR
		STA	!MJIATR
;
		INX			;mjibuf,x no x o tugi(+1) ni suru
		STX	!MOJIX
;
		MEM8
		IDX8
		SEP	#00110000B
;
		RTS
;
;
;
;************************************************************************
;*			CODE_78 syori				Lev. 3	*
;*			wait						*
;************************************************************************
CODE_78		EQU	$
		LDA	<KEYA1L
		AND	#080H
		BEQ	COD782		;? DO BOTON
;					;Y
		LDA	#001H
		BRA	COD781
;
COD782		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	!MSGWAIT
		CMP	#0002
		BCC	COD781		;a=1 || 0 ?
		LDA	#0002		;n (2<a---> a=2)
COD781		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
;
		JSL	>JSRSUB	
		WORD	COD78INIT	;(0) time set
		WORD	COD78EXIT	;(1) time wait end
		WORD	COD78DEC	;(2) time dec
;
COD78INIT	EQU	$		;time set
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	!MOJIX
		LDA	>MJIBUF+1,X
		AND	#000FH
		ASL	A
		TAX
		LDA	WAITTIME,X	;wait time read
		STA	!MSGWAIT
;
COD78DEC	EQU	$		;time o hihu
		MEM16
		IDX16
		REP	#00110000B
;
		DEC	!MSGWAIT
;
		MEM8
		IDX8
		SEP	#00110000B
;
		RTS
;
COD78EXIT	EQU	$		;wait time exit
		MEM16
		IDX16
		REP	#00110000B
;
		INC	!MOJIX
		INC	!MOJIX
;
		MEM8
		IDX8
		SEP	#00110000B
;
		STZ	!MSGWAIT
		RTS
;
;
;
;************************************************************************
;*			CODE_79 syori				Lev. 3	*
;*			sound						*
;************************************************************************
CODE_79		EQU	$
		MEM8
		IDX16
		REP	#00010000B
;
		LDX	!MOJIX
		INX
;
		LDA	>MJIBUF,X	;speed read
		STA	SOUND3
;
		INX
		STX	!MOJIX		;mjibuf,x o tugi ni susumeru
;
		MEM8
		IDX8
		SEP	#00110000B
;
		RTS
;
;
;
;************************************************************************
;*			CODE_7A syori				Lev. 3	*
;*			moji speed					*
;************************************************************************
CODE_7A		EQU	$
		MEM8
		IDX16
		REP	#00010000B
;
		LDX	!MOJIX
		INX
;
		LDA	>MJIBUF,X	;speed read
		STA	!MJISPDBK	;speed set
		STA	!MJISPD		;    "
;
		INX
		STX	!MOJIX		;mjibuf,x o tugi ni susumeru
;
		MEM8
		IDX8
		SEP	#00110000B
;
		RTS
;
;
;
;************************************************************************
;*			CODE_7B syori				Lev. 3	*
;*			e moji chisai hou				*
;************************************************************************
CODE_7B		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		INC	!MOJIX
		LDX	!MOJIX
		LDA	>MJIBUF,X	;e no bangou o motomeru
;
		AND	#007FH		;e moji no aru toko o motomeru
		ASL	A		;a=a*8
		ASL	A
		TAX
;
		LDY	!MESBUFX
;
		LDA	SML_E,X
		STA	!MESBUF-40,Y
		INX
		INX
		LDA	SML_E,X
		STA	!MESBUF,Y
;
		INY
		INY
		STY	!MESBUFX
;
		INC	!MOJIX
;
		MEM8
		IDX8
		SEP	#00110000B
;
		JMP	MSGMAN
;
;
;
;************************************************************************
;*			CODE_7C syori				Lev. 3	*
;*			e moji big					*
;************************************************************************
CODE_7C		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		INC	!MOJIX
		LDX	!MOJIX
		LDA	>MJIBUF,X	;e no bangou o motomeru
;
		AND	#007FH		;e moji no aru toko o motomeru
		ASL	A		;a=a*8
		ASL	A
		ASL	A
		TAX
;
		LDA	#0002		;kaunto no kaisu
		STA	<WORK
		LDY	!MESBUFX
;
COD7C001	EQU	$		;e moji o totekuru
		LDA	BIG_E,X		;e moji o mesbuf ni set
		STA	!MESBUF-40,Y
		INX
		INX
		LDA	BIG_E,X
		STA	!MESBUF,Y
;
		INX
		INX
		INY
		INY
;
		DEC	<WORK		
		BNE	COD7C001	;2 kai yata
;					;y
		STY	!MESBUFX	;mesbuf o tugi ni susumeru
;
		INC	!MOJIX		;mojix o tugi ni suru
		MEM8
		IDX8
		SEP	#00110000B
		JMP	MSGMAN
;
;
;
;************************************************************************
;*			CODE_7D syori				Lev. 3	*
;*			cls						*
;************************************************************************
CODE_7D		EQU	$
		PHB
		LDA	#BANK MOJIBUF
		PHA
		PLB
;
		MEM16
		IDX16
		REP	#00110000B
		LDA	#00770H
		TAX
CODE7D1		EQU	$
		STZ	MOJIBUF+00H,X
		STZ	MOJIBUF+02H,X
		STZ	MOJIBUF+04H,X
		STZ	MOJIBUF+06H,X
		STZ	MOJIBUF+08H,X
		STZ	MOJIBUF+0AH,X
		STZ	MOJIBUF+0CH,X
		STZ	MOJIBUF+0EH,X
		SEC
		SBC	#00010H
		TAX
		BPL	CODE7D1
;
		PLB
;
		STZ	!MESBUFX
;
		INC	!MOJIX
;
		MEM8
		IDX8
		SEP	#00110000B
;
		STZ	ZURCNT
;
		RTS
;
;
;
;************************************************************************
;*			CODE_7E syori				Lev. 3	*
;*			input wait					*
;************************************************************************
CODE_7E		EQU	$
		LDA	MSGIPTM
		BEQ	CODE7E2
		DEC	A
		STA	MSGIPTM
		CMP	#001H
		BNE	CODE7E1
		LDA	#024H		;OTO
		STA	SOUND3
		BRA	CODE7E1		;? INKEY WAIT OK
;					;Y
CODE7E2		EQU	$
		LDA	KEYA2
		ORA	KEYA2L
		AND	#0C0H
		BEQ	CODE7E1
;
		MEM16
		IDX16
		REP	#00110000B
;
		INC	!MOJIX
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA	#MSTMINK	;NEXT TIME SET
		STA	MSGIPTM
;
CODE7E1		EQU	$
		RTS
;
;
;
;************************************************************************
;*			CODE_7F syori				Lev. 3	*
;*			bun no owari input wait				*
;************************************************************************
CODE_7F		EQU	$
		LDA	MSGIPTM
		BEQ	CODE7F2
		DEC	A
		STA	MSGIPTM
		CMP	#001H
		BNE	CODE7F1
		LDA	#024H		;OTO
		STA	SOUND3
		BRA	CODE7F1		;? INKEY WAIT OK
;					;Y
CODE7F2		EQU	$
		LDA	<KEYA2
		ORA	<KEYA2L
		BEQ	CODE7F1
		LDA	#04
		STA	!WIND_SYS
;
		LDA	#MSTMINK	;NEXT TIME SET
		STA	MSGIPTM
;
CODE7F1		EQU	$
		RTS
;
;
;
;************************************************************************
;*									*
;*			sub program					*
;*									*
;************************************************************************
WNSETA		EQU	$		;ue or sita?
		MEM16			;vram no adress o keisan suru
		IDX16
		REP	#00110000B
;
		LDA	<PLYPS1
		SEC
		SBC	<SCCV2
		CMP	#00078H
		ROL	A
		EOR	#00001H
		AND     #00001H
		ASL	A
		TAX
		LDA	!VRMSAD,X
		STA	!WNADRS		;vram no adress set (moto)
;
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;
;
;************************************************************************
;*			wnadrs(ram)	--> wnkeis(ram),x=y=0		*
;*									*
;************************************************************************
WNWKST		EQU	$		;wnadrs -> wnkeis,x=y=0
		MEM16			;vram no adress o keisan you no ram ni set
		IDX16
		REP	#00110000B
;
		LDA	!WNADRS
		STA	!WNKEIS
;
		LDX	#0000
		TXY
;
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;
;
;************************************************************************
;*			1 line kaku					*
;*						worke tukau		*
;************************************************************************
LNOUT		EQU	$		;
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	!WNKEIS		;adress set
		XBA
		STA	!VRAMD2,X
		INX
		INX
;
		XBA
		CLC			;adress +20h
		ADC	#0020H
		STA	!WNKEIS
;
		LDA	#2D00H		;kazu set
		STA	!VRAMD2,X
		INX
		INX
;
		LDA	!WAKU,Y		;hidari hasi no data set
		STA	!VRAMD2,X
		INX
		INX
		INY
		INY
;
		LDA	#0021		;mannaka no data 22 ko set
		STA	<WORKE
		LDA	!WAKU,Y
LNOUT1		EQU	$
		STA	!VRAMD2,X
		INX
		INX
		DEC	<WORKE
		BNE	LNOUT1
		INY
		INY
;
		LDA	!WAKU,Y		;migi hasi no data set
		STA	!VRAMD2,X
		INX
		INX
;
		RTS
;
;
;
;************************************************************************
;*			char NO set 					*
;*							worke tukau	*
;************************************************************************
MESCHST		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	#0000
		LDA	#KURODT
		AND	#0FF00H
		ORA	#00180H
		STA	MSGCHCT
MESCHST1		EQU	$
		LDA	MSGCHCT
		STA	!MESBUF,X
		INC	MSGCHCT
		INX
		INX
		CPX	#0240
		BCC	MESCHST1
;
		JSR	MESGTFR
;
		MEM8
		IDX8
		SEP	#00110000B
;
		RTS
;
;************************************************************************
;*			mesbuf --->vramd2				*
;*							worke tukau	*
;************************************************************************
MESGTFR		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	#0006		;6 line no data okuru
		STA	<WORKE
		JSR	WNWKST		;waku o kaku tokoro o wnkeis(ram) ni set.x=y=0
;
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	!WNKEIS		;moji o kaku tokoro o motomeru
		CLC
		ADC	#0022H
		STA	!WNKEIS
;
MESGTF1		EQU	$
		LDA	!WNKEIS
		XBA
		STA	!VRAMD2,X	;vramd2 ni adress o set
		XBA
		CLC
		ADC	#0020H		;adress o tugi no tokoro ni suru
		STA	!WNKEIS
		INX
		INX
		LDA	#2700H		;27h(40ko) no data o kaku
		STA	!VRAMD2,X
		INX
		INX
		LDA	#0020		;20ko no data o tensou suru
		STA	<WORKC
MESGTF2		EQU	$		;mesbuf --> vramd2 e okuru
		LDA	!MESBUF,Y
		STA	!VRAMD2,X
		INX
		INX
		INY
		INY
		DEC	<WORKC
		BNE	MESGTF2		;1 line end?
;										;y
		DEC	<WORKE
		BNE	MESGTF1		;6 line end?
;										;y
		LDA	#0FFFFH		;vramd2 ni data no end set
		STA	!VRAMD2,X
;
		MEM8
		IDX8
		SEP	#00110000B
;
		LDA     #VT01
		STA     <VRFLG
;
		RTS
;
;
;
;************************************************************************
;*			MOJI FNT ADD SET				*
;*									*
;************************************************************************
MSGADST		EQU	$
		PHB
		LDA	#BANK MJFTADR
		PHA
		PLB
		MEM16
		IDX16
		REP	#00110000B
		STZ	MJFTADR		;ADD 0
;
		LDX	#00000H		;X Y CLS
		TXY
;
MGDST30		EQU	$
		LDA	>MOJIBIT+0,X	;DATA SET
		XBA
		STA	<WORK0
		LDA	>MOJIBIT+2,X
		XBA
		STA	<WORK2
		LDA	>MOJIBIT+4,X
		AND	#000FFH
		XBA
		STA	<WORK4
;
		LDA	MJFTADR,Y	;ADD SET
		STA	<WORKE
;
MGDST20		EQU	$
		LDA	<WORK0
		ORA	<WORK2
		ORA	<WORK4
		BEQ	MGDST10		;? 1 MOJI END
;					;N
		ASL	<WORK4
		ROL	<WORK2
		ROL	<WORK0
;
		BCC	MGDST20
		INC	<WORKE
		BRA	MGDST20
MGDST10		EQU	$
		TXA
		CLC
		ADC	#00005H		;NEXT MOJI DATA
		TAX
		INY
		INY			;NEXT ADD
		LDA	<WORKE
		STA	MJFTADR,Y
		CPY	#00400H
		BCC	MGDST30		;? END
;					;Y
		MEM8
		IDX8
		SEP	#00110000B
		PLB
		RTL
;----------------------------------------
;************************************************************************
;*			data 						*
;*									*
;************************************************************************
INITDAT		EQU	$		;inital no data
		WORD	0000H		;wnkeis,wnkeish
		WORD	0000H		;wnadrs,wnadrsh
		BYTE	00		;wind_sys
		BYTE	00		;mjispd
		BYTE	00;06		;mjispdbk
		BYTE	00		;wnwork
		BYTE	01		;inital
		WORD	0000		;mojix,mojixh
		BYTE	00		;mjidat
		BYTE	39H		;mjiatr
		WORD	0000		;mesbufx,mesbufxh
		BYTE	000H		;scrlin
		WORD	00000H		;msgwait(L,H)
		WORD	00000H		;msgchct(L,H)
		WORD	00000H		;msgcnt(L,H)
		WORD	00000H		;zurcnt(L,H)
		BYTE	00H		;MSG_RTS(YES OR NO & SONOTA)
		BYTE	MSTMINK		;MSGIPTM (inkey wait)
		BYTE	04H		;MSGSCRD (SCR. DOT SU)
		BYTE	00H
		BYTE	00H
		BYTE	00H
		BYTE	00H
		BYTE	00H
		BYTE	00H
		BYTE	00H
		BYTE	00H
		BYTE	00H
		BYTE	00H
;
WAKU		EQU	$		;window o kaku
		WORD	028F3H,028F4H,068F3H
		WORD	028C8H,KURODT,068C8H
		WORD	0A8F3H,0A8F4H,0E8F3H
;
KURODT		EQU	0387FH		;kuro no data
;
VRMSAD		EQU	$		;vram no ichi
		WORD	06125H,06244H
;
CLSDATA		EQU	$		;window o kesu
		BYTE	42H,2EH
		WORD    KURODT
;
LINEDAT		EQU	$		;1,2,3 line me no ichi
		WORD	0000,0040,0080
;
BIG_E		EQU	$
		WORD	024B8H,024BAH,024BCH,024BEH
SML_E		EQU	$
		WORD	024B8H,024BAH
		WORD	024BCH,024BEH
;
WAITTIME	EQU	$
;			0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5,7.0,7.5,8.0 sec 
		WORD	031,063,094,125,156,188,219,250,281,313,344,375,406,438,469,500
;
MOJIDOT		EQU	$
		BYTE	008H,003H
;
MSTMINK		EQU	01CH		;INKEY WAIT TIME
		END
