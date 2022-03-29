;
		INCLUDE	zel_ram.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.10.06(SUN)
;
;------------------------------------------------------------------------
;
		ORG	07F8A0H
;
;=============================================== (zel_gsub) =============
		GLB	GDSKKCK,KCGCNG,KCCNG0,YMCGCNG,KCCNG180
;=============================================== (zel_comn) =============
		EXT	CTPC000
;=============================================== (zel_munt) =============
		EXT	warput
;
		EXT	atbiw4,atbiw5,atbiw6,atbiw7
;
		EXT	umgtu0,umgtu1,umgtu2,umgtu3,umgtu4,umgtu5
		EXT	umgtu6,umgtu7,umgtu8,umgtu9,umgtuA,umgtuB,umgtuC
		EXT	umgt10,umgt11,umgt12,umgt13,umgt14,umgt15,umgt16,umgt17
;
		EXT	kzbdu0,kzbdu4
;
		EXT	hakut0,hakut1,hakut6,hakut7,hakut8,hakut9
		EXT	sgtu05,sgtu06,sgtu07,sgtu08,sgtu09,sgtu0A
;
		EXT	mizu00,mizu01,mizu02,mizu03,mizu04,mizu05,mizu06
		EXT	mizu07,mizu08,mizu09,mizu0A,mizu0B,mizu0C,mizu0D
		EXT	mizu0E,mizu0F,mizu10,mizu11,mizu12,mizu13,mizu14
		EXT	mizu15,mizu16,mizu17,mizu18,mizu19,mizu1A,mizu1B
		EXT	mizu1C,mizu1D,mizu1E,mizu1F,mizu20,mizu21,mizu22
		EXT	mizu23,mizu24,mizu25,mizu26
;
		EXT	umgtu0,umgtu1,umgtu2,umgtu3,umgtu4
		EXT	umgtu5,umgtu6,umgtu7,umgtu8,umgtu9
		EXT	umgt10,umgt11
;
		EXT	torid0,torid1,torid2,torid3,torid4,torid5
;
		EXT	kzbdu0,kzbdu1,kzbdu2,kzbdu3,kzbdu4
;
		EXT	ushdu0,ushdu1,ushdu2,ushdu3,ushdu4,ushdu5,ushdu6
		EXT	ushdu7,ushdu8,ushdu9,ushduA,ushduB
;
		EXT	krkbu0,krkbu1,krkbu2,krkbu3,krkbu4,krkbu5,krkbu6
		EXT	krkbu7,krkbu8,krkbu9,krkbuA,krkbuB,krkbuC
;
		EXT	prmdu0,prmdu1,prmdu2,prmdu3,prmdu4,prmdu5,prmdu6,prmdu7,prmdu8
;
		EXT	numu00,numu01,numu02,numu03,numu04,numu05,numu06,numu07,numu08,numu09,numu0A,numu0B
		EXT	numu10,numu11,numu12,numu13,numu14,numu15,numu16,numu17
		EXT	numu18,numu19,numu1A,numu1B,numu1C,numu1D,numu1E,numu1F
		EXT	numu20,numu21,numu22,numu23,numu24,numu25,numu26,numu27,numu28,numu29
		EXT	numu2A,numu2B,numu2C,numu2D,numu2E,numu2F,numu30,numu31,numu32,numu33
;
		EXT	kamu10,kamu11,kamu12,kamu13,kamu14,kamu15,kamu16,kamu17
		EXT	kamu18,kamu19,kamu1A,kamu1B,kamu1C,kamu1D,kamu1E,kamu1F
;
		EXT	ytwu00,ytwu01,ytwu02,ytwu03,ytwu04,ytwu05,ytwu06,ytwu07
		EXT	ytwu08,ytwu09,ytwu0A,ytwu0B,ytwu0C,ytwu0D,ytwu0E,ytwu0F
		EXT	ytwu10,ytwu11,ytwu12,ytwu13,ytwu14,ytwu15,ytwu16,ytwu17
		EXT	ytwu18,ytwu19
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
;************************************************************************
;*		Kiri CG. change				(KCGCNG)	*
;************************************************************************
KCGCNG		EQU	$
		LDA	<JRSBPT
		BNE	KCCNG1		; init ?
;					; yes
KCCNG0		EQU	$
		PHB
		LDA	#BANK CGRAM
		PHA
		PLB			; (DBR) set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
KCG020		EQU	$
		LDA	CGRAM+000H,X
		STA	>CGBKUP+000H,X
		LDA	CGRAM+080H,X
		STA	>CGBKUP+080H,X
		LDA	CGRAM+100H,X
		STA	>CGBKUP+100H,X
		LDA	CGRAM+180H,X
		STA	>CGBKUP+180H,X
		LDA	#07FFFH
		STA	CGRAM+000H,X
		STA	CGRAM+080H,X
		STA	CGRAM+100H,X
		STA	CGRAM+180H,X
		INX
		INX
		CPX	#080H
		BNE	KCG020		; end ?
;					; yes
		LDA	CGWORK+000H
		STA	CGWORK+040H
;
		LDA	#00000H
		STA	>CCNGCT
		LDA	#00002H
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		PLB			; (DBR) reset
		INC	<JRSBPT
		RTL
;
;
KCCNG1		EQU	$
;// 03.06.13 //		MEM16
;// 03.06.13 //		IDX16
;// 03.06.13 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.13 //;
;// 03.06.13 //		LDX	#CGCHDT
;// 03.06.13 //		LDA	>CCNGCT
;// 03.06.13 //		CMP	#00010H
;// 03.06.13 //		BCC	KCCNG60		;
;// 03.06.13 //;					;
;// 03.06.13 //		INX
;// 03.06.13 //		INX
;// 03.06.13 //KCCNG60		EQU	$
;// 03.06.13 //		STX	<DTBFWK		; (L),(H) set
;// 03.06.13 //;
;// 03.06.13 //		AND	#0000FH
;// 03.06.13 //		ASL	A
;// 03.06.13 //		TAX
;// 03.06.13 //		LDA	>BITCD0,X
;// 03.06.13 //		STA	<WORKC		; (workc) <-- check data
;// 03.06.13 //;
;// 03.06.13 //		PHB
;// 03.06.13 //		PHK
;// 03.06.13 //		PLB			; (DBR) set
;// 03.06.13 //;
;// 03.06.13 //		LDA	CCNGD0
;// 03.06.13 //		STA	<WORK6
;// 03.06.13 //		LDA	CCNGD1
;// 03.06.13 //		STA	<WORK8
;// 03.06.13 //		LDA	CCNGD2
;// 03.06.13 //		STA	<WORKA		; (work6,8,A) <-- CG. check data
;// 03.06.13 //;
;// 03.06.13 //		LDX	#000B0H		; (X) <-- CG. change start point
;// 03.06.13 //		LDA	#000C0H		; (A) <-- CG. change end   point
;// 03.06.13 //		JSR	CCNGZ00		; CG. change
;
		JSL	>CTPC000	; fade
;
;// 03.06.12 //KCCNG100	EQU	$
;// 03.06.12 //		LDA	>CGWORK+000H,X
;// 03.06.12 //		STA	<WORK4		; (WORK4) <-- change CG. data
;// 03.06.12 //;
;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.06.12 //		AND	#0000000000011111B
;// 03.06.12 //		ASL	A
;// 03.06.12 //		ASL	A
;// 03.06.12 //		TAY			; (Y) <-- RED data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	KCCNG120	; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		ADC	<WORK6
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //KCCNG120	EQU	$
;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.06.12 //		AND	#0000001111100000B
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		TAY			; (Y) <-- GREEN data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	KCCNG140	; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		ADC	<WORK8
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //KCCNG140	EQU	$
;// 03.06.12 //		LDA	>CGRAM+001H,X
;// 03.06.12 //		AND	#0000000001111100B
;// 03.06.12 //		TAY			; (Y) <-- BLUE data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	KCCNG160	; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		CLC
;// 03.06.12 //		ADC	<WORKA
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //KCCNG160	EQU	$
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		STA	>CGWORK+000H,X
;// 03.06.12 //		INX
;// 03.06.12 //		INX
;// 03.06.12 //		CPX	#000C0H
;// 03.06.12 //		BNE	KCCNG100	; end ?
;// 03.06.12 //;					; yes
;
;// 03.06.13 //		PLB			; (DBR) reset
;// 03.06.13 //;
;// 03.06.13 //		LDA	>CCNGCT
;// 03.06.13 //		INC	A
;// 03.06.13 //		STA	>CCNGCT
;// 03.06.13 //		CMP	#0001FH
;// 03.06.13 //		BNE	KCCNG180	; end ?
;// 03.06.13 //;					; yes
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	>CCNGFG
		CMP	#000FFH
		BNE	KCCNG180	; end ?
;					; yes
		LDX	#0000EH
		LDA	#00000H
KCCNG170	EQU	$
		STA	>CGRAM+0B0H,X
		STA	>CGWORK+0B0H,X
		DEX
		DEX
		BPL	KCCNG170	;
;					;
		STA	>CCNGCT
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<GAMEMD
;
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
		MEM16
		IDX16
KCCNG180	EQU	$
		CMP	#00000H
		BNE	KCCNG190	; fade in check ?
;					; yes
		LDA	>CCNGCT
		CMP	#0001FH
		BNE	KCCNG190	; fade in ?
;					; yes
		LDX	#00000H
KCCNG185	EQU	$
		LDA	>CGBKUP+000H,X
		STA	>CGRAM+000H,X
		LDA	>CGBKUP+040H,X
		STA	>CGRAM+040H,X
		LDA	>CGBKUP+080H,X
		STA	>CGRAM+080H,X
		LDA	>CGBKUP+0C0H,X
		STA	>CGRAM+0C0H,X
		LDA	>CGBKUP+100H,X
		STA	>CGRAM+100H,X
		LDA	>CGBKUP+140H,X
		STA	>CGRAM+140H,X
		LDA	>CGBKUP+180H,X
		STA	>CGRAM+180H,X
		LDA	>CGBKUP+1C0H,X
		STA	>CGRAM+1C0H,X
		INX
		INX
		CPX	#00040H
		BNE	KCCNG185	; end ?
;					; yes
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<DPSUB
KCCNG190	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
;
;************************************************************************
;*		Ura-Yama CG. change			(YMCGCNG)	*
;************************************************************************
YMCGDAT		EQU	$
		WORD	00884H,00CC7H,0150AH,0154DH,07FF6H,05944H,07AD1H
		WORD	00884H,00CC7H,0150AH,0154DH,05BFFH,07AD1H,021AFH
		WORD	01084H,048C0H,06186H,07E6DH,07FE0H,05944H,07E20H
		WORD	01084H,0000EH,01059H,0291FH,07FE0H,05944H,07E20H
		WORD	01084H,01508H,0196CH,021AFH,07FF6H,01D4CH,07AD1H
;
;
GNTWRCG		EQU	$
		WORD	07FFFH,00884H,01CC8H,01DCEH,03694H,04718H,01D4AH,018ACH
		WORD	07FFFH,01908H,02D2FH,03614H,04EDAH,0471FH,01D4AH,0390FH
		WORD	07FFFH,034CDH,05971H,05635H,07F1BH,07FFFH,01D4AH,03D54H
		WORD	07FFFH,01908H,02D2FH,03614H,04EDAH,0471FH,01D4AH,0390FH
;
		WORD	07FFFH,00884H,0052AH,021EFH,03AB5H,04B39H,01D4CH,018ACH
;
;
;
YMCNG900	EQU	$
		RTL
;
YMCGCNG		EQU	$
		LDA	!GDINFF
		BNE	YMCNG900	; yama-tower change on ?
;					; no
		LDA	<MPDTNO
		CMP	#043H
		BEQ	YMCNG40		; ura-yama ?
;					; no
		CMP	#045H
		BEQ	YMCNG40		; ura-yama ?
;					; no
		CMP	#047H
		BNE	YMCNG900	; ura-yama ?
;					; yes
YMCNG40		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	<FCNT
		CMP	#003H
		BEQ	YMCNG210	; change ?
;					; no
		CMP	#005H
		BEQ	YMCNG100	; change ?
;					; no
		CMP	#024H
		BEQ	YMCNG200	; change ?
;					; no
		CMP	#02CH
		BEQ	YMCNG100	; change ?
;					; no
		CMP	#058H
		BEQ	YMCNG210	; change ?
;					; no
		CMP	#05AH
		BNE	YMCNG400	; change ?
;					; yes
YMCNG100	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#002H
YMCNG120	EQU	$
		LDA	>CGRAM+060H,X
		STA	>CGWORK+060H,X
		LDA	>CGRAM+070H,X
		STA	>CGWORK+070H,X
		LDA	>CGRAM+090H,X
		STA	>CGWORK+090H,X
		LDA	>CGRAM+0E0H,X
		STA	>CGWORK+0E0H,X
		LDA	>CGRAM+0F0H,X
		STA	>CGWORK+0F0H,X
		INX
		INX
		CPX	#010H
		BNE	YMCNG120	; end ?
;					; yes
		BRA	YMCNG400
;
;
YMCNG200	EQU	$
		LDX	#036H
		STX	!SOUND2		; <sound2>
YMCNG210	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#002H
		LDY	#000H
YMCNG220	EQU	$
		LDA	YMCGDAT+00EH*0,Y
		STA	>CGWORK+060H,X
		LDA	YMCGDAT+00EH*1,Y
		STA	>CGWORK+070H,X
		LDA	YMCGDAT+00EH*2,Y
		STA	>CGWORK+090H,X
		LDA	YMCGDAT+00EH*3,Y
		STA	>CGWORK+0E0H,X
		LDA	YMCGDAT+00EH*4,Y
		STA	>CGWORK+0F0H,X
		INY
		INY
		INX
		INX
		CPX	#010H
		BNE	YMCNG220	; end ?
;					; yes
YMCNG400	EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDX	#000H
		LDY	#040H
		LDA	<MPDTNO
		CMP	#043H
		BEQ	YMCNG420	; ura-yama ?
;					; no
		CMP	#045H
		BNE	YMCNG440	; ura-yama ?
;					; no
YMCNG420	EQU	$
		LDA	>GNDTBL+043H
		AND	#00100000B
		BNE	YMCNG500	; tower flashing ?
;					; yes
		LDA	<FCNT
		AND	#00001100B
		ASL	A
		ASL	A
		TAY
YMCNG440	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
YMCNG460	EQU	$
		LDA	GNTWRCG,Y
		STA	>CGWORK+0D0H,X
		INY
		INY
		INX
		INX
		CPX	#010H
		BNE	YMCNG440	; set end ?
;					; yes
YMCNG500	EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		PLB			; (DBR) reset
		INC	<CGVMAF
		RTL
;
;
;
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;************************************************************************
;************************************************************************
;************************************************************************
;************************************************************************
;************************************************************************
;*		Ground shikake check			(GDSKKCK)	*
;************************************************************************
GDSKKCK		EQU	$
		PHB
		LDA	#BANK GDBUF0
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<MPDTNO
		ASL	A
		TAX
		JSR	(GOPTNDT,X)
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB			; (DBR) reset
		RTL
;
;
;
;
GOPTNDT		EQU	$
		WORD	GOPTN00,GOPTN01,GOPTN02,GOPTN03,GOPTN04,GOPTN05,GOPTN06,GOPTN07
		WORD	GOPTN08,GOPTN09,GOPTN0A,GOPTN0B,GOPTN0C,GOPTN0D,GOPTN0E,GOPTN0F
;
		WORD	GOPTN10,GOPTN11,GOPTN12,GOPTN13,GOPTN14,GOPTN15,GOPTN16,GOPTN17
		WORD	GOPTN18,GOPTN19,GOPTN1A,GOPTN1B,GOPTN1C,GOPTN1D,GOPTN1E,GOPTN1F
;
		WORD	GOPTN20,GOPTN21,GOPTN22,GOPTN23,GOPTN24,GOPTN25,GOPTN26,GOPTN27
		WORD	GOPTN28,GOPTN29,GOPTN2A,GOPTN2B,GOPTN2C,GOPTN2D,GOPTN2E,GOPTN2F
;
		WORD	GOPTN30,GOPTN31,GOPTN32,GOPTN33,GOPTN34,GOPTN35,GOPTN36,GOPTN37
		WORD	GOPTN38,GOPTN39,GOPTN3A,GOPTN3B,GOPTN3C,GOPTN3D,GOPTN3E,GOPTN3F
;
;
		WORD	GOPTN40,GOPTN41,GOPTN42,GOPTN43,GOPTN44,GOPTN45,GOPTN46,GOPTN47
		WORD	GOPTN48,GOPTN49,GOPTN4A,GOPTN4B,GOPTN4C,GOPTN4D,GOPTN4E,GOPTN4F
;
		WORD	GOPTN50,GOPTN51,GOPTN52,GOPTN53,GOPTN54,GOPTN55,GOPTN56,GOPTN57
		WORD	GOPTN58,GOPTN59,GOPTN5A,GOPTN5B,GOPTN5C,GOPTN5D,GOPTN5E,GOPTN5F
;
		WORD	GOPTN60,GOPTN61,GOPTN62,GOPTN63,GOPTN64,GOPTN65,GOPTN66,GOPTN67
		WORD	GOPTN68,GOPTN69,GOPTN6A,GOPTN6B,GOPTN6C,GOPTN6D,GOPTN6E,GOPTN6F
;
		WORD	GOPTN70,GOPTN71,GOPTN72,GOPTN73,GOPTN74,GOPTN75,GOPTN76,GOPTN77
		WORD	GOPTN78,GOPTN79,GOPTN7A,GOPTN7B,GOPTN7C,GOPTN7D,GOPTN7E,GOPTN7F
;
;
;
		MEM16
		IDX16
;
GOPTN00		EQU	$
GOPTN01		EQU	$
GOPTN02		EQU	$
;// 03.09.19 //		LDA	#torid0
		LDA	#krkbu0
		STA	GDBUF0+0816H
		STA	GDBUF0+0818H
		STA	GDBUF0+081AH
		STA	GDBUF0+081CH
;
		STA	GDBUF0+0896H
		STA	GDBUF0+089CH
;// 03.09.19 //		LDA	#krkbu0
		INC	A
		STA	GDBUF0+0898H
		INC	A
		STA	GDBUF0+089AH
;
		INC	A
		STA	GDBUF0+0916H
		INC	A
		STA	GDBUF0+0918H
		INC	A
		STA	GDBUF0+091AH
		INC	A
		STA	GDBUF0+091CH
;
		INC	A
		STA	GDBUF0+0996H
		INC	A
		STA	GDBUF0+0998H
		INC	A
		STA	GDBUF0+099AH
		INC	A
		STA	GDBUF0+099CH
;
		INC	A
		STA	GDBUF0+0A18H
		INC	A
		STA	GDBUF0+0A1AH
		RTS
;
GOPTN03		EQU	$
GOPTN04		EQU	$
GOPTN05		EQU	$
GOPTN06		EQU	$
GOPTN07		EQU	$
		LDA	#warput
		STA	GDBUF0+0720H
		RTS
;
GOPTN08		EQU	$
GOPTN09		EQU	$
GOPTN0A		EQU	$
GOPTN0B		EQU	$
GOPTN0C		EQU	$
GOPTN0D		EQU	$
GOPTN0E		EQU	$
GOPTN0F		EQU	$
GOPTN10		EQU	$
GOPTN11		EQU	$
GOPTN12		EQU	$
;
GOPTN13		EQU	$
		LDX	#00506H
KAIDANST	EQU	$
		LDA	#atbiw4
		STA	GDBUF0+0000H,X
		INC	A
		STA	GDBUF0+0002H,X
		INC	A
		STA	GDBUF0+0080H,X
		INC	A
		STA	GDBUF0+0082H,X
		RTS
;
GOPTN14		EQU	$		; haka
;// 03.06.03 //		LDX	#00532H
		LDA	#hakut0
		STA	GDBUF0+00532H
;// 03.06.03 //		LDA	#hakut1
		INC	A
		STA	GDBUF0+00534H
		LDA	#hakut6
		STA	GDBUF0+005B2H
;// 03.06.03 //		LDA	#hakut7
		INC	A
		STA	GDBUF0+005B4H
;// 03.06.03 //		LDA	#hakut8
		INC	A
		STA	GDBUF0+00632H
;// 03.06.03 //		LDA	#hakut9
		INC	A
		STA	GDBUF0+00634H
		RTS
;
GOPTN15		EQU	$
GOPTN16		EQU	$
GOPTN17		EQU	$
;
GOPTN18		EQU	$
GOPTN19		EQU	$
GOPTN20		EQU	$
GOPTN21		EQU	$		; omote machi
		LDA	#kzbdu0
		STA	GDBUF0+00C3EH
		STA	GDBUF0+00C42H
;// 03.07.05 //		LDA	#kzbdu1
		INC	A
		STA	GDBUF0+00C40H
;// 03.07.05 //		LDA	#kzbdu2
		INC	A
		STA	GDBUF0+00CBEH
;// 03.07.05 //		LDA	#kzbdu3
		INC	A
		STA	GDBUF0+00CC0H
;// 03.07.05 //		LDA	#kzbdu4
		INC	A
		STA	GDBUF0+00CC2H
		RTS
;
GOPTN1A		EQU	$
;
GOPTN1B		EQU	$		; shiro
GOPTN1C		EQU	$
GOPTN23		EQU	$
GOPTN24		EQU	$
		LDA	#sgtu08
		STA	GDBUF0+013BCH
;// 03.06.03 //		LDA	#sgtu09
		INC	A
		STA	GDBUF0+013BEH
		LDA	#sgtu05
		STA	GDBUF0+0143CH
;// 03.06.03 //		LDA	#sgtu06
		INC	A
		STA	GDBUF0+0143EH
;
		LDA	#sgtu09
		STA	GDBUF0+013C0H
;// 03.06.03 //		LDA	#sgtu0A
		INC	A
		STA	GDBUF0+013C2H
		LDA	#sgtu06
		STA	GDBUF0+01440H
;// 03.06.03 //		LDA	#sgtu07
		INC	A
		STA	GDBUF0+01442H
		RTS
;
GOPTN1D		EQU	$
GOPTN1E		EQU	$
GOPTN1F		EQU	$
GOPTN22		EQU	$
GOPTN25		EQU	$
GOPTN26		EQU	$
GOPTN27		EQU	$
GOPTN28		EQU	$
GOPTN29		EQU	$
GOPTN2A		EQU	$
GOPTN2B		EQU	$
GOPTN6B		EQU	$
		LDX	#00330H
		JMP	KAIDANST
;// 03.09.20 //		LDA	#atbiw4
;// 03.09.20 //		STA	GDBUF0+0330H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+0332H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+03B0H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+03B2H
;// 03.09.20 //		RTS
;
GOPTN2C		EQU	$
GOPTN2D		EQU	$
GOPTN2E		EQU	$
GOPTN2F		EQU	$
GOPTN30		EQU	$
GOPTN31		EQU	$
GOPTN38		EQU	$
GOPTN39		EQU	$
		LDX	#00358H
		JMP	KAIDANST
;// 03.09.20 //		LDA	#atbiw4
;// 03.09.20 //		STA	GDBUF0+0358H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+035AH
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+03D8H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+03DAH
;// 03.09.20 //		RTS
;
GOPTN32		EQU	$
GOPTN33		EQU	$
GOPTN34		EQU	$
GOPTN35		EQU	$
GOPTN36		EQU	$
GOPTN37		EQU	$
GOPTN77		EQU	$
		LDX	#0040CH
		JMP	KAIDANST
;// 03.09.20 //		LDA	#atbiw4
;// 03.09.20 //		STA	GDBUF0+040CH
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+040EH
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+048CH
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+048EH
;// 03.09.20 //		RTS
;
GOPTN3A		EQU	$
		LDX	#00A1EH
		JMP	KAIDANST
;// 03.09.20 //		LDA	#atbiw4
;// 03.09.20 //		STA	GDBUF0+0A1EH
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+0A20H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+0A9EH
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+0AA0H
;// 03.09.20 //		RTS
;
;
GOPTN3B		EQU	$		; mizu hiki
GOPTN7B		EQU	$
		LDA	#mizu00
		STA	GDBUF0+3ACH
		STA	GDBUF0+424H
		STA	GDBUF0+4A0H
		STA	GDBUF0+51EH
		STA	GDBUF0+61CH
		STA	GDBUF0+734H
;
;// 03.06.03 //		LDA	#mizu01
		INC	A
		STA	GDBUF0+3AEH
		STA	GDBUF0+4A2H
;
;// 03.06.03 //		LDA	#mizu02
		INC	A
		STA	GDBUF0+3B0H
		STA	GDBUF0+438H
		STA	GDBUF0+4BAH
		STA	GDBUF0+5AAH
		STA	GDBUF0+73AH
;
;// 03.06.03 //		LDA	#mizu03
		INC	A
		STA	GDBUF0+426H
		STA	GDBUF0+428H
		STA	GDBUF0+42AH
		STA	GDBUF0+432H
		STA	GDBUF0+434H
		STA	GDBUF0+436H
;
;// 03.06.03 //		LDA	#mizu04
		INC	A
		STA	GDBUF0+42CH
		STA	GDBUF0+4A4H
		STA	GDBUF0+520H
		STA	GDBUF0+61EH
;
;// 03.06.03 //		LDA	#mizu05
		INC	A
		STA	GDBUF0+42EH
		STA	GDBUF0+4A6H
		STA	GDBUF0+4A8H
		STA	GDBUF0+4B0H
		STA	GDBUF0+4B6H
		STA	GDBUF0+522H
		STA	GDBUF0+524H
		STA	GDBUF0+526H
		STA	GDBUF0+538H
		STA	GDBUF0+5A0H
		STA	GDBUF0+5A2H
		STA	GDBUF0+5A4H
		STA	GDBUF0+5A6H
		STA	GDBUF0+620H
		STA	GDBUF0+622H
		STA	GDBUF0+69EH
		STA	GDBUF0+6A0H
		STA	GDBUF0+71EH
		STA	GDBUF0+720H
		STA	GDBUF0+826H
		STA	GDBUF0+8A6H
		STA	GDBUF0+8A8H
		STA	GDBUF0+926H
;
;// 03.06.03 //		LDA	#mizu06
		INC	A
		STA	GDBUF0+430H
		STA	GDBUF0+4B8H
		STA	GDBUF0+5A8H
		STA	GDBUF0+62AH
;
;// 03.06.03 //		LDA	#mizu07
		INC	A
		STA	GDBUF0+4AAH
		STA	GDBUF0+4B2H
		STA	GDBUF0+528H
		STA	GDBUF0+5B8H
		STA	GDBUF0+8AAH
		STA	GDBUF0+928H
;
;// 03.06.03 //		LDA	#mizu08
		INC	A
		STA	GDBUF0+4ACH
		STA	GDBUF0+530H
		STA	GDBUF0+79EH
		STA	GDBUF0+7A0H
		STA	GDBUF0+9A6H
		STA	GDBUF0+9B8H
;
;// 03.06.03 //		LDA	#mizu09
		INC	A
		STA	GDBUF0+4AEH
		STA	GDBUF0+4B4H
		STA	GDBUF0+536H
		STA	GDBUF0+7A2H
		STA	GDBUF0+824H
;
;// 03.06.03 //		LDA	#mizu0A
		INC	A
		STA	GDBUF0+52EH
		STA	GDBUF0+534H
		STA	GDBUF0+79CH
		STA	GDBUF0+822H
		STA	GDBUF0+934H
		STA	GDBUF0+9B6H
;
;// 03.06.03 //		LDA	#mizu0B
		INC	A
		STA	GDBUF0+53AH
		STA	GDBUF0+638H
		STA	GDBUF0+6B8H
		STA	GDBUF0+93AH
;
;// 03.06.03 //		LDA	#mizu0C
		INC	A
		STA	GDBUF0+59EH
		STA	GDBUF0+5B6H
		STA	GDBUF0+636H
		STA	GDBUF0+69CH
		STA	GDBUF0+6B6H
		STA	GDBUF0+71CH
		STA	GDBUF0+8A4H
		STA	GDBUF0+924H
;
;// 03.06.03 //		LDA	#mizu0D
		INC	A
		STA	GDBUF0+624H
		STA	GDBUF0+6A2H
;
;// 03.06.03 //		LDA	#mizu0E
		INC	A
		STA	GDBUF0+626H
;
;// 03.06.03 //		LDA	#mizu0F
		INC	A
		STA	GDBUF0+628H
;
;// 03.06.03 //		LDA	#mizu10
		INC	A
		STA	GDBUF0+6A4H
		STA	GDBUF0+7B6H
;
;// 03.06.03 //		LDA	#mizu11
		INC	A
		STA	GDBUF0+6A6H
		STA	GDBUF0+726H
		STA	GDBUF0+728H
		STA	GDBUF0+72AH
		STA	GDBUF0+7AAH
		STA	GDBUF0+836H
		STA	GDBUF0+838H
;
;// 03.06.03 //		LDA	#mizu12
		INC	A
		STA	GDBUF0+6A8H
		STA	GDBUF0+7B8H
;
;// 03.06.03 //		LDA	#mizu13
		INC	A
		STA	GDBUF0+6AAH
;
;// 03.06.03 //		LDA	#mizu14
		INC	A
		STA	GDBUF0+722H
		STA	GDBUF0+7A4H
		STA	GDBUF0+828H
;
;// 03.06.03 //		LDA	#mizu15
		INC	A
		STA	GDBUF0+724H
;
;// 03.06.03 //		LDA	#mizu16
		INC	A
		STA	GDBUF0+7A6H
;
;// 03.06.03 //		LDA	#mizu17
		INC	A
		STA	GDBUF0+7A8H
		STA	GDBUF0+8B6H
;
;// 03.06.03 //		LDA	#mizu18
		INC	A
		STA	GDBUF0+7B4H
;
;// 03.06.03 //		LDA	#mizu19
		INC	A
		STA	GDBUF0+7BAH
;
;// 03.06.03 //		LDA	#mizu1A
		INC	A
		STA	GDBUF0+82AH
;
;// 03.06.03 //		LDA	#mizu1B
		INC	A
		STA	GDBUF0+834H
;
;// 03.06.03 //		LDA	#mizu1C
		INC	A
		STA	GDBUF0+83AH
;
;// 03.06.03 //		LDA	#mizu1D
		INC	A
		STA	GDBUF0+8B4H
;
;// 03.06.03 //		LDA	#mizu1E
		INC	A
		STA	GDBUF0+8B8H
;
;// 03.06.03 //		LDA	#mizu1F
		INC	A
		STA	GDBUF0+8BAH
;
;// 03.06.03 //		LDA	#mizu20
		INC	A
		STA	GDBUF0+936H
;
;// 03.06.03 //		LDA	#mizu21
		INC	A
		STA	GDBUF0+938H
;
;// 03.06.03 //		LDA	#mizu22
		INC	A
		STA	GDBUF0+52AH
		STA	GDBUF0+532H
		STA	GDBUF0+92AH
;
;// 03.06.03 //		LDA	#mizu23
		INC	A
		STA	GDBUF0+5BAH
		STA	GDBUF0+9A8H
		STA	GDBUF0+9BAH
;
;// 03.06.03 //		LDA	#mizu24
		INC	A
		STA	GDBUF0+9A4H
;
;// 03.06.03 //		LDA	#mizu25
		INC	A
		STA	GDBUF0+736H
;
;// 03.06.03 //		LDA	#mizu26
		INC	A
		STA	GDBUF0+738H
		RTS
;
;
GOPTN3C		EQU	$
GOPTN3D		EQU	$
GOPTN3E		EQU	$
GOPTN3F		EQU	$
;
GOPTN40		EQU	$		; ura-mori
GOPTN41		EQU	$
GOPTN48		EQU	$
GOPTN49		EQU	$
		LDA	#umgt10
		STA	GDBUF0+0590H
;// 03.09.07 //		LDA	#umgt11
		INC	A
		STA	GDBUF0+0596H
;// 03.09.07 //		LDA	#umgt12
		INC	A
		STA	GDBUF0+0610H
;// 03.09.07 //		LDA	#umgt13
		INC	A
		STA	GDBUF0+0612H
;// 03.09.07 //		LDA	#umgt14
		INC	A
		STA	GDBUF0+0614H
;// 03.09.07 //		LDA	#umgt15
		INC	A
		STA	GDBUF0+0616H
;// 03.09.07 //		LDA	#umgt16
		INC	A
		STA	GDBUF0+0692H
;// 03.09.07 //		LDA	#umgt17
		INC	A
		STA	GDBUF0+0694H
;
		LDA	#umgtu0
		STA	GDBUF0+0812H
		STA	GDBUF0+0814H
;// 03.09.07 //		LDA	#umgtu1
		INC	A
		STA	GDBUF0+0710H
		STA	GDBUF0+0790H
;// 03.09.07 //		LDA	#umgtu2
		INC	A
		STA	GDBUF0+0712H
		STA	GDBUF0+0792H
;// 03.09.07 //		LDA	#umgtu3
		INC	A
		STA	GDBUF0+0714H
		STA	GDBUF0+0794H
;// 03.09.07 //		LDA	#umgtu4
		INC	A
		STA	GDBUF0+0716H
		STA	GDBUF0+0796H
		RTS
;
GOPTN42		EQU	$
GOPTN43		EQU	$
GOPTN44		EQU	$
GOPTN4B		EQU	$
GOPTN4C		EQU	$
		LDA	#ytwu0E
		STA	>GDBUF0+045EH
		INC	A
		STA	>GDBUF0+0460H
		LDA	#ytwu14
		STA	>GDBUF0+04DEH
		STA	>GDBUF0+055EH
		INC	A
		STA	>GDBUF0+04E0H
		STA	>GDBUF0+0560H
		LDA	#ytwu12
		STA	>GDBUF0+05DEH
		INC	A
		STA	>GDBUF0+05E0H
		RTS
;
GOPTN45		EQU	$
GOPTN46		EQU	$
GOPTN4D		EQU	$
GOPTN4E		EQU	$
		LDX	#00868H
		JMP	KAIDANST
;// 03.09.20 //		LDA	#atbiw4
;// 03.09.20 //		STA	GDBUF0+0868H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+086AH
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+08E8H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+08EAH
;// 03.09.20 //		RTS
;
GOPTN47		EQU	$
		LDA	#kamu10
		STA	>GDBUF0+099EH
		INC	A
		STA	>GDBUF0+09A0H
		INC	A
		STA	>GDBUF0+09A2H
		INC	A
		STA	>GDBUF0+09A4H
;
		INC	A
		STA	>GDBUF0+0A1EH
		INC	A
		STA	>GDBUF0+0A20H
		INC	A
		STA	>GDBUF0+0A22H
		INC	A
		STA	>GDBUF0+0A24H
;
		INC	A
		STA	>GDBUF0+0A9EH
		INC	A
		STA	>GDBUF0+0AA0H
		INC	A
		STA	>GDBUF0+0AA2H
		INC	A
		STA	>GDBUF0+0AA4H
;
		INC	A
		STA	>GDBUF0+0B1EH
		INC	A
		STA	>GDBUF0+0B20H
		INC	A
		STA	>GDBUF0+0B22H
		INC	A
		STA	>GDBUF0+0B24H
		RTS
;
GOPTN4A		EQU	$
GOPTN4F		EQU	$
GOPTN50		EQU	$
GOPTN51		EQU	$
GOPTN52		EQU	$
GOPTN53		EQU	$
GOPTN54		EQU	$
GOPTN55		EQU	$
GOPTN56		EQU	$
GOPTN57		EQU	$
;
GOPTN58		EQU	$		; ura-machi
GOPTN59		EQU	$
GOPTN60		EQU	$
GOPTN61		EQU	$
		LDA	#torid0
		STA	GDBUF0+0D3EH
		INC	A
		STA	GDBUF0+0D40H
		INC	A
		STA	GDBUF0+0DBEH
		INC	A
		STA	GDBUF0+0DC0H
		INC	A
		STA	GDBUF0+0E3EH
		INC	A
		STA	GDBUF0+0E40H
		RTS
;
;// 03.09.19 //		LDA	#torid0
;// 03.09.19 //		STA	GDBUF0+0C3CH
;// 03.09.19 //		STA	GDBUF0+0C3EH
;// 03.09.19 //		STA	GDBUF0+0C40H
;// 03.09.19 //		STA	GDBUF0+0C42H
;// 03.09.19 //;
;// 03.09.19 //		STA	GDBUF0+0CBCH
;// 03.09.19 //		STA	GDBUF0+0D3CH
;// 03.09.19 //		STA	GDBUF0+0DBCH
;// 03.09.19 //		STA	GDBUF0+0E3CH
;// 03.09.19 //;
;// 03.09.19 //		STA	GDBUF0+0CC2H
;// 03.09.19 //		STA	GDBUF0+0D42H
;// 03.09.19 //		STA	GDBUF0+0DC2H
;// 03.09.19 //		STA	GDBUF0+0E42H
;// 03.09.19 //;// 03.06.18 //		LDA	#torid1
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0CBEH
;// 03.09.19 //;// 03.06.18 //		LDA	#torid2
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0CC0H
;// 03.09.19 //;// 03.06.18 //		LDA	#torid3
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0D3EH
;// 03.09.19 //;// 03.06.18 //		LDA	#torid4
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0D40H
;// 03.09.19 //;// 03.06.18 //		LDA	#torid5
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0DBEH
;// 03.09.19 //;// 03.06.18 //		LDA	#torid6
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0DC0H
;// 03.09.19 //;// 03.06.18 //		LDA	#torid7
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0E3EH
;// 03.09.19 //;// 03.06.18 //		LDA	#torid8
;// 03.09.19 //		INC	A
;// 03.09.19 //		STA	GDBUF0+0E40H
;// 03.09.19 //		RTS
;
GOPTN5A		EQU	$
;
GOPTN5B		EQU	$
GOPTN5C		EQU	$
GOPTN63		EQU	$
GOPTN64		EQU	$
		LDA	#prmdu0
		STA	GDBUF0+03BCH
		INC	A
		STA	GDBUF0+03BEH
		INC	A
		STA	GDBUF0+03C0H
		INC	A
		STA	GDBUF0+043CH
		INC	A
		STA	GDBUF0+043EH
		INC	A
		STA	GDBUF0+0440H
		INC	A
		STA	GDBUF0+04BCH
		INC	A
		STA	GDBUF0+04BEH
		INC	A
		STA	GDBUF0+04C0H
		RTS
;
GOPTN5D		EQU	$
;
GOPTN5E		EQU	$		; ura-shinden
GOPTN5F		EQU	$
GOPTN66		EQU	$
GOPTN67		EQU	$
		LDA	#ushduB
		STA	GDBUF0+01E6H
;
		LDA	#ushdu7
		STA	GDBUF0+026AH
		INC	A
		STA	GDBUF0+02EAH
		INC	A
		STA	GDBUF0+036AH
		RTS
;
GOPTN62		EQU	$
		LDX	#00D20H
		JMP	KAIDANST
;// 03.09.20 //		LDA	#atbiw4
;// 03.09.20 //		STA	GDBUF0+0D20H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+0D22H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+0DA0H
;// 03.09.20 //		INC	A
;// 03.09.20 //		STA	GDBUF0+0DA2H
;// 03.09.20 //		RTS
;
GOPTN65		EQU	$
GOPTN68		EQU	$
GOPTN69		EQU	$
GOPTN6A		EQU	$
GOPTN6C		EQU	$
GOPTN6D		EQU	$
GOPTN6E		EQU	$
GOPTN6F		EQU	$
GOPTN70		EQU	$
GOPTN71		EQU	$
GOPTN78		EQU	$
GOPTN79		EQU	$
		LDA	#numu20
		STA	GDBUF0+0522H
		INC	A
		STA	GDBUF0+0524H
		INC	A
		STA	GDBUF0+0526H
		INC	A
		STA	GDBUF0+0528H
;
		INC	A
		STA	GDBUF0+05A2H
		INC	A
		STA	GDBUF0+05A4H
		INC	A
		STA	GDBUF0+05A6H
		INC	A
		STA	GDBUF0+05A8H
;
		INC	A
		STA	GDBUF0+0622H
		INC	A
		STA	GDBUF0+0624H
		INC	A
		STA	GDBUF0+0626H
		INC	A
		STA	GDBUF0+0628H
;
		INC	A
		STA	GDBUF0+06A2H
		INC	A
		STA	GDBUF0+06A4H
		INC	A
		STA	GDBUF0+06A6H
		INC	A
		STA	GDBUF0+06A8H
;
		INC	A
		STA	GDBUF0+0722H
		INC	A
		STA	GDBUF0+0724H
		INC	A
		STA	GDBUF0+0726H
		INC	A
		STA	GDBUF0+0728H
		RTS
;
GOPTN72		EQU	$
GOPTN73		EQU	$
GOPTN74		EQU	$
GOPTN75		EQU	$
GOPTN76		EQU	$
GOPTN7A		EQU	$
GOPTN7C		EQU	$
GOPTN7D		EQU	$
GOPTN7E		EQU	$
GOPTN7F		EQU	$
;
;
;
;
;
;
;
;
		END
