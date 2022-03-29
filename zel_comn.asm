;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.09.29(SUN)
;
;--------------------------------------------------------------------
;
		ORG	00E8B0H
;
;=============================================== (zel_comn) ==========
		GLB	CGCHNG,CGCNG0,CGCNG1,CGCNG2
		GLB	MCGRST,CGCNG8,CTPITST,CTPCCNG,GOVRCCNG,RSTRCCNG
		GLB	MGMCGRS0,MGMCGRS1,MGMCGRS2,MGMCGCNG,CTPC000,CTPCZZZ
		GLB	ICECGCNG,WPCCNG0,WPCCNG1,WPCCNG2,WPCCNG3,K_I_CCNG
		GLB	KMBRCG0,KMBRCG1,KMBBCG0,KMBBCG1,SHSCGCNG,MGMCRS000
;
		GLB	WIPEIT0,WIPEIT1,WIPEMV
		GLB	LGTWPMV,WTRWPMV,WWPM000,WRWPV0
;
		GLB	HDMAOFF,HDMADR
;=============================================== (zel_main) ==========
		EXT	MD_title,MD_selct,MD_pcopy,MD_pkill,MD_ptork
		EXT	MD_djint,MD_djply,MD_gdint,MD_gdply
		EXT	MD_evint,MD_evply
		EXT	MD_fdout,MD_fdin,MD_etcpl
		EXT	MD_wpout,MD_wpin,MD_ghldn,MD_gover,MD_tdemo,MD_bckgr
;=============================================== (zel_vma) ===========
		EXT	bgwC,bgwD
;=============================================== (zel_data0) =========
		EXT	BITCD0
;=============================================== (zel_init) ==========
		EXT	p1_move,p1_scl0,p1_scl1,p1_bchg,p1_dopn,p1_sdop
		EXT	p1_stpc,p1_hldn,p1_mcng,p1_opyk,p1_bmbd,p1_ltwp
		EXT	p1_wtrd,p1_wtru,p1_wgop,p1_kstp,p1_fdin,p1_mcg1
		EXT	p1_warp,p1_sls0,p1_sls1,p1_hlrs
;
		EXT	p2_move,p2_atmv,p2_doet,p2_dext,p2_dex1,p2_dwrt
		EXT	p2_fout,p2_awt1,p2_fin1,p2_fot1,p2_fot2,p2_fot3
		EXT	p2_mprs,p2_kage,p2_fot4,p2_hlrs
;
		EXT	MPBTSET,KAGEI20
;=============================================== (zel_isub) ==========
		EXT	INHDMA2
;=============================================== (zel_grnd) ==========
		EXT	gif5
;=============================================== (zel_char) ==========
		EXT	WGBGCNG
;=============================================== (zel_play) ==========
		EXT	OMS000
;=============================================== (zel_enmy) ==========
		EXT	ALCLER
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
;************************************************************************
;*		CG. change check data					*
;************************************************************************
CCNGD0		EQU	$
		WORD	0FFFFH,00001H
CCNGD1		EQU	$
		WORD	0FFE0H,00020H
CCNGD2		EQU	$
		WORD	0FC00H,00400H
;
;
;************************************************************************
;*		CG. change				(CGCHNG)	*
;************************************************************************
CGCHDT		EQU	$		; CG. change check data
;			0		  1
;			0123456789ABCDEF  0123456789ABCDEF
		WORD	1111111111111111B,1111111111111111B; color -  0
		WORD	1111111111111110B,1111111111111111B;       -  1
		WORD	0111111111111111B,0111111111111111B;       -  2
		WORD	0111111111011111B,1111101111111111B;       -  3
		WORD	0111111101111111B,0111111101111111B;       -  4
		WORD	0111110111110111B,1110111110111111B;       -  5
		WORD	0111101111011111B,0111101111011111B;       -  6
		WORD	0111011110111011B,1101110111101111B;       -  7
;
		WORD	0111011101110111B,0111011101110111B;       -  8
		WORD	0110111011011101B,1011101101110111B;       -  9
		WORD	0110110110110111B,0110110110110111B;       -  A
		WORD	0101101101101101B,1011011011011011B;       -  B
		WORD	0101101101011011B,0101101101011011B;       -  C
		WORD	0101011010110110B,1010110101101011B;       -  D
		WORD	0101010101010101B,1010110101101011B;       -  E
		WORD	0101010101010101B,1010101010101011B;       -  F
;
;			0123456789ABCDEF  0123456789ABCDEF
		WORD	0101010101010101B,0101010101010101B;       - 10
		WORD	0010101001010101B,0101010101010101B;       - 11
		WORD	0010101001010101B,0010101001010101B;       - 12
		WORD	0010100101001010B,0101001010010101B;       - 13
		WORD	0010010100100101B,0010010100100101B;       - 14
		WORD	0010010010010010B,0100100100100101B;       - 15
		WORD	0001001001001001B,0001001001001001B;       - 16
		WORD	0001000100100010B,0100010010001001B;       - 17
;
		WORD	0001000100010001B,0001000100010001B;       - 18
		WORD	0000100001000100B,0010001000010001B;       - 19
		WORD	0000010000100001B,0000010000100001B;       - 1A
		WORD	0000001000001000B,0001000001000001B;       - 1B
;
		WORD	0000000100000001B,0000000100000001B;       - 1C
		WORD	0000000000100000B,0000010000000001B;       - 1D
		WORD	0000000000000001B,0000000000000001B;       - 1E
		WORD	0000000000000000B,0000000000000001B;       - 1F
;
;
;
;
CGCHNG		EQU	$
CGCNG0		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<FCNT
		LSR	A
		BCC	CCNG40		; change ?
;					; no
		RTL
;
CGCNG1		EQU	$
CCNG40		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#CGCHDT
		LDA	>CCNGCT
		CMP	#00010H
		BCC	CCNG60		;
;					;
		INX
		INX
CCNG60		EQU	$
		STX	<DTBFWK		; (L),(H) set
;
		AND	#0000FH
		ASL	A
		TAX
		LDA	BITCD0,X
		STA	<WORKC		; (workc) <-- check data
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	>CCNGFG
		TAX
		LDA	CCNGD0,X
		STA	<WORK6
		LDA	CCNGD1,X
		STA	<WORK8
		LDA	CCNGD2,X
		STA	<WORKA		; (work6,8,A) <-- CG. check data
;
		LDX	#00040H		; (X) <-- CG. change start point
		JSR	CCNGY00		; CG. change
;
;// 03.06.12 //CCNG100		EQU	$
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
;// 03.06.12 //		BNE	CCNG120		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.06.12 //		ADC	<WORK6
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCNG120		EQU	$
;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.06.12 //		AND	#0000001111100000B
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		TAY			; (Y) <-- GREEN data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	CCNG140		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.06.12 //		ADC	<WORK8
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCNG140		EQU	$
;// 03.06.12 //		LDA	>CGRAM+001H,X
;// 03.06.12 //		AND	#0000000001111100B
;// 03.06.12 //		TAY			; (Y) <-- BLUE data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	CCNG160		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		CLC
;// 03.06.12 //		ADC	<WORKA
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCNG160		EQU	$
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		STA	>CGWORK+000H,X
;// 03.06.12 //		INX
;// 03.06.12 //		INX
;// 03.06.12 //		CPX	#001B0H
;// 03.06.12 //		BCC	CCNG100		; ken CG. ?
;// 03.06.12 //;					; no
;// 03.06.12 //		BNE	CCNG240
;// 03.06.12 //;
;// 03.06.12 //		TXA
;// 03.06.12 //		CLC
;// 03.06.12 //		ADC	#00010H
;// 03.06.12 //		TAX
;// 03.06.12 //CCNG240		EQU	$
;// 03.06.12 //		CPX	#001E0H
;// 03.06.12 //		BNE	CCNG100		; end ?
;// 03.06.12 //;					; yes
;
;
		LDA	>CGWORK+000H
		STA	<WORK4		; (WORK4) <-- change CG. data
;
		LDA	>CGRAM+000H
		AND	#0000000000011111B
		ASL	A
		ASL	A
		TAY			; (Y) <-- RED data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNG250		; CG. change ?
;					; yes
		LDA	<WORK4
;// 02.06.14 //		CLC
		ADC	<WORK6
		STA	<WORK4
CCNG250		EQU	$
		LDA	>CGRAM+000H
		AND	#0000001111100000B
		LSR	A
		LSR	A
		LSR	A
		TAY			; (Y) <-- GREEN data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNG260		; CG. change ?
;					; yes
		LDA	<WORK4
;// 02.06.14 //		CLC
		ADC	<WORK8
		STA	<WORK4
CCNG260		EQU	$
		LDA	>CGRAM+001H
		AND	#0000000001111100B
		TAY			; (Y) <-- BLUE data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNG270		; CG. change ?
;					; yes
		LDA	<WORK4
		CLC
		ADC	<WORKA
		STA	<WORK4
CCNG270		EQU	$
		LDA	<WORK4
		STA	>CGWORK+000H
;
;
		PLB			; (DBR) reset
;
		LDA	>CCNGFG
		BNE	CCNG390		; fade-out ?
;					; yes
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	>CCNGED
		BNE	CCNG380		; end ?
;					; yes
CCNG300		EQU	$
		LDA	>CCNGFG
		EOR	#00002H
		STA	>CCNGFG
		LDA	#00000H
		STA	>CCNGCT
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<JRSBPT		; CG. change end
CCNG380		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
CCNG390		EQU	$
		LDA	>CCNGCT
		CMP	>CCNGED
		BEQ	CCNG300		; end ?
;					; no
		LDA	>CCNGCT
		DEC	A
		STA	>CCNGCT
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		CG. change sub.				(CCNGY00)	*
;************************************************************************
CCNGY00		EQU	$
		LDA	>CGWORK+000H,X
		STA	<WORK4		; (WORK4) <-- change CG. data
;
		LDA	>CGRAM+000H,X
		BEQ	CCNGY80		; CG. change ?
;					; yes
		AND	#0000000000011111B
		ASL	A
		ASL	A
		TAY			; (Y) <-- RED data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNGY20		; CG. change ?
;					; yes
		LDA	<WORK4
;// 02.06.14 //		CLC
		ADC	<WORK6
		STA	<WORK4
CCNGY20		EQU	$
		LDA	>CGRAM+000H,X
		AND	#0000001111100000B
		LSR	A
		LSR	A
		LSR	A
		TAY			; (Y) <-- GREEN data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNGY40		; CG. change ?
;					; yes
		LDA	<WORK4
;// 02.06.14 //		CLC
		ADC	<WORK8
		STA	<WORK4
CCNGY40		EQU	$
		LDA	>CGRAM+001H,X
		AND	#0000000001111100B
		TAY			; (Y) <-- BLUE data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNGY60		; CG. change ?
;					; yes
		LDA	<WORK4
		CLC
		ADC	<WORKA
		STA	<WORK4
CCNGY60		EQU	$
		LDA	<WORK4
		STA	>CGWORK+000H,X
CCNGY80		EQU	$
		INX
		INX
		CPX	#001B0H
		BCC	CCNGY00		; ken CG. ?
;					; no
		BNE	CCNGY90
;
		TXA
		CLC
		ADC	#00010H
		TAX
CCNGY90		EQU	$
		CPX	#001E0H
		BNE	CCNGY00		; end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		CG. change - 2				(CGCNG2)	*
;************************************************************************
CGCNG2		EQU	$
CCG240		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#CGCHDT
		LDA	>CCNGCT
		CMP	#00010H
		BCC	CCG260		;
;					;
		INX
		INX
CCG260		EQU	$
		STX	<DTBFWK		; (L),(H) set
;
		AND	#0000FH
		ASL	A
		TAX
		LDA	BITCD0,X
		STA	<WORKC		; (workc) <-- check data
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	>CCNGFG
		TAX
		LDA	CCNGD0,X
		STA	<WORK6
		LDA	CCNGD1,X
		STA	<WORK8
		LDA	CCNGD2,X
		STA	<WORKA		; (work6,8,A) <-- CG. check data
;
		LDX	#00040H		; (X) <-- CG. change start point
		LDA	#00200H		; (A) <-- CG. change end point
		JSR	CCNGZ00		; CG. change
;
;// 03.06.12 //CCG2100		EQU	$
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
;// 03.06.12 //		BNE	CCG2120		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.06.12 //		ADC	<WORK6
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCG2120		EQU	$
;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.06.12 //		AND	#0000001111100000B
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		TAY			; (Y) <-- GREEN data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	CCG2140		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.06.12 //		ADC	<WORK8
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCG2140		EQU	$
;// 03.06.12 //		LDA	>CGRAM+001H,X
;// 03.06.12 //		AND	#0000000001111100B
;// 03.06.12 //		TAY			; (Y) <-- BLUE data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	CCG2160		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		CLC
;// 03.06.12 //		ADC	<WORKA
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCG2160		EQU	$
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		STA	>CGWORK+000H,X
;// 03.06.12 //		INX
;// 03.06.12 //		INX
;// 03.06.12 //		CPX	#00200H
;// 03.06.12 //		BNE	CCG2100		; end ?
;// 03.06.12 //;					; yes
;
		PLB			; (DBR) reset
;
		LDA	>CCNGFG
		BNE	CCG2390		; fade-out ?
;					; yes
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	>CCNGED
		BNE	CCG2380		; end ?
;					; yes
CCG2300		EQU	$
		LDA	>CCNGFG
		EOR	#00002H
		STA	>CCNGFG
		LDA	#00000H
		STA	>CCNGCT
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<JRSBPT		; CG. change end
CCG2380		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
CCG2390		EQU	$
		LDA	>CCNGCT
		CMP	>CCNGED
		BEQ	CCG2300		; end ?
;					; no
		LDA	>CCNGCT
		DEC	A
		STA	>CCNGCT
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		CG. change sub.				(CCNGZ00)	*
;************************************************************************
CCNGZ00		EQU	$
		STA	<WORKE
CCNGZ20		EQU	$
		LDA	>CGWORK+000H,X
		STA	<WORK4		; (WORK4) <-- change CG. data
;
		LDA	>CGRAM+000H,X
		BEQ	CCNGZ90		; CG. change ?
;					; yes
		AND	#0000000000011111B
		ASL	A
		ASL	A
		TAY			; (Y) <-- RED data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNGZ40		; CG. change ?
;					; yes
		LDA	<WORK4
		CLC
		ADC	<WORK6
		STA	<WORK4
CCNGZ40		EQU	$
		LDA	>CGRAM+000H,X
		AND	#0000001111100000B
		LSR	A
		LSR	A
		LSR	A
		TAY			; (Y) <-- GREEN data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNGZ60		; CG. change ?
;					; yes
		LDA	<WORK4
		CLC
		ADC	<WORK8
		STA	<WORK4
CCNGZ60		EQU	$
		LDA	>CGRAM+001H,X
		AND	#0000000001111100B
		TAY			; (Y) <-- BLUE data
		LDA	(<DTBFWK),Y
		AND	<WORKC
		BNE	CCNGZ80		; CG. change ?
;					; yes
		LDA	<WORK4
		CLC
		ADC	<WORKA
		STA	<WORK4
CCNGZ80		EQU	$
		LDA	<WORK4
		STA	>CGWORK+000H,X
CCNGZ90		EQU	$
		INX
		INX
		CPX	<WORKE
		BNE	CCNGZ20		; end ?
;					; yes
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Message CG. reset			(MCGRST)	*
;************************************************************************
MCGRST		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00000H
		STA	>CGWORK+020H
		STA	>CGWORK+022H
		STA	>CGWORK+024H
		STA	>CGWORK+026H
		STA	>CGWORK+028H
		STA	>CGWORK+02AH
		STA	>CGWORK+02CH
		STA	>CGWORK+02EH
;
		STA	>CCNGCT
		LDA	#00002H
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
MCGRS80		EQU	$
		RTL
;
;
;************************************************************************
;*		Message CG. change			(CGCNG8)	*
;************************************************************************
CGCNG8		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#CGCHDT
		LDA	>CCNGCT
		CMP	#00010H
		BCC	CCNG860		;
;					;
		INX
		INX
CCNG860		EQU	$
		STX	<DTBFWK		; (L),(H) set
;
		AND	#0000FH
		ASL	A
		TAX
		LDA	>BITCD0,X
		STA	<WORKC		; (workc) <-- check data
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	>CCNGFG
		TAX
		LDA	CCNGD0,X
		STA	<WORK6
		LDA	CCNGD1,X
		STA	<WORK8
		LDA	CCNGD2,X
		STA	<WORKA		; (work6,8,A) <-- CG. check data
;
		LDX	#00020H		; (X) <-- CG. change start point
		LDA	#00030H		; (A) <-- CG. change end   point
CCNG880		EQU	$
		JSR	CCNGZ00		; CG. change
;
;// 03.06.12 //CCNG880		EQU	$
;// 03.06.12 //		STA	<WORKE
;// 03.06.12 //CCNG900		EQU	$
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
;// 03.06.12 //		BNE	CCNG920		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		ADC	<WORK6
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCNG920		EQU	$
;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.06.12 //		AND	#0000001111100000B
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		LSR	A
;// 03.06.12 //		TAY			; (Y) <-- GREEN data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	CCNG940		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		ADC	<WORK8
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCNG940		EQU	$
;// 03.06.12 //		LDA	>CGRAM+001H,X
;// 03.06.12 //		AND	#0000000001111100B
;// 03.06.12 //		TAY			; (Y) <-- BLUE data
;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.06.12 //		AND	<WORKC
;// 03.06.12 //		BNE	CCNG960		; CG. change ?
;// 03.06.12 //;					; yes
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		CLC
;// 03.06.12 //		ADC	<WORKA
;// 03.06.12 //		STA	<WORK4
;// 03.06.12 //CCNG960		EQU	$
;// 03.06.12 //		LDA	<WORK4
;// 03.06.12 //		STA	>CGWORK+000H,X
;// 03.06.12 //		INX
;// 03.06.12 //		INX
;// 03.06.12 //		CPX	<WORKE
;// 03.06.12 //		BNE	CCNG900		; end ?
;// 03.06.12 //;					; yes
CCNG890		EQU	$
		PLB			; (DBR) reset
;
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#0001FH
		BNE	CCNG980		; end ?
;					; yes
		LDA	#00000H
		STA	>CCNGCT
		LDA	>CCNGFG
		EOR	#00002H
		STA	>CCNGFG
		BEQ	CCNG980		; pictuer write ?
;					; yes
		INC	<ZWORK+7
CCNG980		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
CCNG999		EQU	$
		RTL
;
;
;
;************************************************************************
;*		Megami CG. reset			(MGMCGRS0)	*
;************************************************************************
MGMCGRS0	EQU	$
		LDA	#00000010B
		STA	<DPSUB
		LDA	#00110000B
		STA	<WD2131
		BRA	MGMCRS000
;
MGMCGRS2	EQU	$
		LDA	#00000001B
		STA	<DPSUB
MGMCRS000	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#00EH
		LDA	#00000H
MGMCRS040	EQU	$
		STA	>CGWORK+1A0H,X
		DEX
		DEX
		BPL	MGMCRS040	;
;					;
		STA	>CCNGCT
		LDA	#00002H
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
;************************************************************************
;*		Megami CG. reset			(MGMCGRS1)	*
;************************************************************************
MGMCGRS1	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#00EH
MGMCRS140	EQU	$
		LDA	>CGRAM+1A0H,X
		STA	>CGWORK+1A0H,X
		DEX
		DEX
		BPL	MGMCRS140	;
;					;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<DPSUB
		LDA	#00100000B
		STA	<WD2131
;
		INC	<CGVMAF		; CG. VMA flag on
MGMCRS190	EQU	$
		RTL
;
;
;************************************************************************
;*		Megami CG. change			(MGMCGCNG)	*
;************************************************************************
MGMCGCNG	EQU	$
		JSL	>MGMCG00
		LDA	>CCNGCT
		BEQ	MGMCRS190	; CG. change ok ?
;					; yes
MGMCG00		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#CGCHDT
		LDA	>CCNGCT
		CMP	#00010H
		BCC	MGMCG60		;
;					;
		INX
		INX
MGMCG60		EQU	$
		STX	<DTBFWK		; (L),(H) set
;
		AND	#0000FH
		ASL	A
		TAX
		LDA	>BITCD0,X
		STA	<WORKC		; (workc) <-- check data
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	>CCNGFG
		TAX
		LDA	CCNGD0,X
		STA	<WORK6
		LDA	CCNGD1,X
		STA	<WORK8
		LDA	CCNGD2,X
		STA	<WORKA		; (work6,8,A) <-- CG. check data
;
		LDX	#001A0H
		LDA	#001B0H
		JMP	CCNG880
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ice CG. reset				(ICECGRST)	*
;************************************************************************
ICECGRST	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#00EH
ICCRS040	EQU	$
		LDA	>CGRAM+080H,X
		STA	>CGWORK+080H,X
		DEX
		DEX
		BPL	ICCRS040	;
;					;
		LDA	#00000H
		STA	>CCNGCT
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		INC	<JRSBPT
		RTL
;
;
;
;************************************************************************
;*		Ice CG. change				(ICECGCNG)	*
;************************************************************************
ICECRS190	EQU	$
		STZ	<DPSUB
		RTL
;
;
ICECGCNG	EQU	$
		LDA	<JRSBPT
		BEQ	ICECGRST	; fade out ?
;					; yes
		JSL	>ICECG00
		LDA	>CCNGCT
		BEQ	ICECRS190	; CG. change ok ?
;					; yes
ICECG00		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#CGCHDT
		LDA	>CCNGCT
		CMP	#00010H
		BCC	ICECG60		;
;					;
		INX
		INX
ICECG60		EQU	$
		STX	<DTBFWK		; (L),(H) set
;
		AND	#0000FH
		ASL	A
		TAX
		LDA	>BITCD0,X
		STA	<WORKC		; (workc) <-- check data
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	>CCNGFG
		TAX
		LDA	CCNGD0,X
		STA	<WORK6
		LDA	CCNGD1,X
		STA	<WORK8
		LDA	CCNGD2,X
		STA	<WORKA		; (work6,8,A) <-- CG. check data
;
		LDX	#00080H
		LDA	#00090H
		JMP	CCNG880
;
;
;
;
;
;************************************************************************
;*		Shisai CG. change			(SHSCGCNG)	*
;************************************************************************
SHSSPT		EQU	$
		WORD	00160H,00180H,001A0H
;
;
SHSCGCNG	EQU	$
		PHX			; (X) push
		TXA
		ASL	A
		TAX
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>SHSCCT,X
		STA	>CCNGCT
		LDA	>SHSCFG,X
		STA	>CCNGFG
		LDA	>SHSSPT,X
		STA	<WORK0
		CLC
		ADC	#00010H
		STA	<WORK2
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		JSR	SHSCG200
		LDA	>CCNGCT
		BEQ	SHSCG40		; CG. change ok ?
;					; yes
		JSR	SHSCG200
SHSCG40		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLX			; (X) pull
;
		PHX			; (X) push
		TXA
		ASL	A
		TAX
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>CCNGCT
		STA	>SHSCCT,X
		LDA	>CCNGFG
		STA	>SHSCFG,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		PLX			; (X) pull
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
		MEM16
		IDX16
SHSCG200	EQU	$
		LDY	#CGCHDT
		LDA	>CCNGCT
		CMP	#00010H
		BCC	SHSCG240	;
;					;
		INY
		INY
SHSCG240	EQU	$
		STY	<DTBFWK		; (L),(H) set
;
		AND	#0000FH
		ASL	A
		TAX
		LDA	>BITCD0,X
		STA	<WORKC		; (workc) <-- check data
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	>CCNGFG
		TAX
		LDA	CCNGD0,X
		STA	<WORK6
		LDA	CCNGD1,X
		STA	<WORK8
		LDA	CCNGD2,X
		STA	<WORKA		; (work6,8,A) <-- CG. check data
;
		LDX	<WORK0
		PHX			; (X) push
		LDA	<WORK2
		PHA			; (A) push
		JSR	CCNGZ00
		PLA			; (A) pull
		STA	<WORK2
		PLX			; (X) pull
		STX	<WORK0
;
		PLB			; (DBR) reset
;
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#0001FH
		BNE	CCNG280		; end ?
;					; yes
		LDA	#00000H
		STA	>CCNGCT
		LDA	>CCNGFG
		EOR	#00002H
		STA	>CCNGFG
CCNG280		EQU	$
		RTS
;
;
;
;
;
;// 03.09.25 //;
;// 03.09.25 //;************************************************************************
;// 03.09.25 //;*		Water down CG. change			(CGCNGA)	*
;// 03.09.25 //;************************************************************************
;// 03.09.25 //CGCNGA		EQU	$
;// 03.09.25 //		MEM16
;// 03.09.25 //		IDX16
;// 03.09.25 //		REP	#00110000B	; memory,index 16bit mode
;// 03.09.25 //;
;// 03.09.25 //		LDA	>CCNGFG
;// 03.09.25 //		TAX
;// 03.09.25 //		LDA	>CCNGD0,X
;// 03.09.25 //		STA	<WORK6
;// 03.09.25 //		LDA	>CCNGD1,X
;// 03.09.25 //		STA	<WORK8
;// 03.09.25 //		LDA	>CCNGD2,X
;// 03.09.25 //		STA	<WORKA		; (work6,8,A) <-- CG. check data
;// 03.09.25 //;
;// 03.09.25 //		LDX	#CGCHDT
;// 03.09.25 //		LDA	>CCNGCT
;// 03.09.25 //		CMP	#00010H
;// 03.09.25 //		BCC	CCNGA60		;
;// 03.09.25 //;					;
;// 03.09.25 //		INX
;// 03.09.25 //		INX
;// 03.09.25 //CCNGA60		EQU	$
;// 03.09.25 //		STX	<DTBFWK		; (L),(H) set
;// 03.09.25 //;
;// 03.09.25 //		AND	#0000FH
;// 03.09.25 //		ASL	A
;// 03.09.25 //		TAX
;// 03.09.25 //		LDA	>BITCD0,X
;// 03.09.25 //		STA	<WORKC		; (workc) <-- check data
;// 03.09.25 //;
;// 03.09.25 //		PHB
;// 03.09.25 //		PHK
;// 03.09.25 //		PLB			; (DBR) set
;// 03.09.25 //;
;// 03.09.25 //		LDX	#000E8H		; (X) <-- CG. change start point
;// 03.09.25 //		JSR	CCNGB00
;// 03.09.25 //		LDX	#000ECH		; (X) <-- CG. change start point
;// 03.09.25 //		JSR	CCNGB00
;// 03.09.25 //		LDX	#000EEH		; (X) <-- CG. change start point
;// 03.09.25 //		JSR	CCNGB00
;// 03.09.25 //;
;// 03.09.25 //		PLB			; (DBR) reset
;// 03.09.25 //;
;// 03.09.25 //		LDA	>CCNGCT
;// 03.09.25 //		INC	A
;// 03.09.25 //		STA	>CCNGCT
;// 03.09.25 //		CMP	#0001FH
;// 03.09.25 //		BNE	CCNGA80		; end ?
;// 03.09.25 //;					; yes
;// 03.09.25 //		LDA	>CCNGFG
;// 03.09.25 //		EOR	#00002H
;// 03.09.25 //		STA	>CCNGFG
;// 03.09.25 //		LDA	#00000H
;// 03.09.25 //		STA	>CCNGCT
;// 03.09.25 //CCNGA80		EQU	$
;// 03.09.25 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.09.25 //;
;// 03.09.25 //		INC	<CGVMAF		; CG. VMA flag on
;// 03.09.25 //		RTL
;// 03.09.25 //;
;// 03.09.25 //;
;// 03.09.25 //;
;// 03.09.25 //CCNGB00		EQU	$
;// 03.09.25 //		LDA	>CGWORK+000H,X
;// 03.09.25 //		STA	<WORK4		; (WORK4) <-- change CG. data
;// 03.09.25 //;
;// 03.09.25 //		LDA	>CGRAM+000H,X
;// 03.09.25 //		AND	#0000000000011111B
;// 03.09.25 //		ASL	A
;// 03.09.25 //		ASL	A
;// 03.09.25 //		TAY			; (Y) <-- RED data
;// 03.09.25 //		LDA	(<DTBFWK),Y
;// 03.09.25 //		AND	<WORKC
;// 03.09.25 //		BNE	CCNGB20		; CG. change ?
;// 03.09.25 //;					; yes
;// 03.09.25 //		LDA	<WORK4
;// 03.09.25 //		ADC	<WORK6
;// 03.09.25 //		STA	<WORK4
;// 03.09.25 //CCNGB20		EQU	$
;// 03.09.25 //		LDA	>CGRAM+000H,X
;// 03.09.25 //		AND	#0000001111100000B
;// 03.09.25 //		LSR	A
;// 03.09.25 //		LSR	A
;// 03.09.25 //		LSR	A
;// 03.09.25 //		TAY			; (Y) <-- GREEN data
;// 03.09.25 //		LDA	(<DTBFWK),Y
;// 03.09.25 //		AND	<WORKC
;// 03.09.25 //		BNE	CCNGB40		; CG. change ?
;// 03.09.25 //;					; yes
;// 03.09.25 //		LDA	<WORK4
;// 03.09.25 //		ADC	<WORK8
;// 03.09.25 //		STA	<WORK4
;// 03.09.25 //CCNGB40		EQU	$
;// 03.09.25 //		LDA	>CGRAM+001H,X
;// 03.09.25 //		AND	#0000000001111100B
;// 03.09.25 //		TAY			; (Y) <-- BLUE data
;// 03.09.25 //		LDA	(<DTBFWK),Y
;// 03.09.25 //		AND	<WORKC
;// 03.09.25 //		BNE	CCNGB60		; CG. change ?
;// 03.09.25 //;					; yes
;// 03.09.25 //		LDA	<WORK4
;// 03.09.25 //		CLC
;// 03.09.25 //		ADC	<WORKA
;// 03.09.25 //		STA	<WORK4
;// 03.09.25 //CCNGB60		EQU	$
;// 03.09.25 //		LDA	<WORK4
;// 03.09.25 //		STA	>CGWORK+000H,X
;// 03.09.25 //		RTS
;// 03.09.25 //;
;
;
;
;
;************************************************************************
;*		Kame-iwa fade-in			(K_I_CCNG)	*
;************************************************************************
K_I_CCNG	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#000B0H
		LDA	#000C0H
		JSR	K_I_C000	; fade-in
;
;
		LDX	#000D0H
		LDA	#000E0H
		JSR	K_I_C100	; fade-out
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
		MEM16
		IDX16
K_I_C000	EQU	$
		STA	<WORKE
K_I_C010	EQU	$
		LDA	>CGWORK+000H,X
		TAY			; (Y) <-- (A)
		AND	#0000000000011111B
		STA	<WORK8
		TYA
		AND	#0000001111100000B
		STA	<WORKA
		TYA
		AND	#0111110000000000B
		STA	<WORKC
;
		LDA	>CGRAM+000H,X
		AND	#0000000000011111B
		CMP	<WORK8
		BEQ	K_I_C020	; limit ?
;					; no
		TYA
		CLC
		ADC	#00001H
		TAY
K_I_C020	EQU	$
		LDA	>CGRAM+000H,X
		AND	#0000001111100000B
		CMP	<WORKA
		BEQ	K_I_C040	; limit ?
;					; yes
		TYA
		CLC
		ADC	#00020H
		TAY
K_I_C040	EQU	$
		LDA	>CGRAM+000H,X
		AND	#0111110000000000B
		CMP	<WORKC
		BEQ	K_I_C060	; limit ?
;					; no
		TYA
		CLC
		ADC	#00400H
		TAY
K_I_C060	EQU	$
		TYA
		STA	>CGWORK+000H,X
		INX
		INX
		CPX	<WORKE
		BNE	K_I_C010	; end ?
;					; yes
		RTS
;
;
K_I_C100	EQU	$
		STA	<WORKE
K_I_C110	EQU	$
		LDA	>CGWORK+000H,X
		TAY			; (Y) <-- (A)
		AND	#0000000000011111B
		STA	<WORK8
		TYA
		AND	#0000001111100000B
		STA	<WORKA
		TYA
		AND	#0111110000000000B
		STA	<WORKC
;
		LDA	>CGRAM+000H,X
		AND	#0000000000011111B
		CMP	<WORK8
		BEQ	K_I_C120	; limit ?
;					; no
		TYA
		SEC
		SBC	#00001H
		TAY
K_I_C120	EQU	$
		LDA	>CGRAM+000H,X
		AND	#0000001111100000B
		CMP	<WORKA
		BEQ	K_I_C140	; limit ?
;					; yes
		TYA
		SEC
		SBC	#00020H
		TAY
K_I_C140	EQU	$
		LDA	>CGRAM+000H,X
		AND	#0111110000000000B
		CMP	<WORKC
		BEQ	K_I_C160	; limit ?
;					; no
		TYA
		SEC
		SBC	#00400H
		TAY
K_I_C160	EQU	$
		TYA
		STA	>CGWORK+000H,X
		INX
		INX
		CPX	<WORKE
		BNE	K_I_C110	; end ?
;					; yes
		RTS
;
;
;
;
;
		MEM8
		IDX8
;// 03.08.06 //;
;// 03.08.06 //;************************************************************************
;// 03.08.06 //;*		Scroll CG. change			(SCGCNG)	*
;// 03.08.06 //;************************************************************************
;// 03.08.06 //SCGCNG		EQU	$
;// 03.08.06 //		MEM16
;// 03.08.06 //		IDX16
;// 03.08.06 //		REP	#00110000B	; memory,index 16bit mode
;// 03.08.06 //;
;// 03.08.06 //		LDX	#CGCHDT
;// 03.08.06 //		LDA	>CCNGCT
;// 03.08.06 //		CMP	#00010H
;// 03.08.06 //		BCC	SCCG40		;
;// 03.08.06 //;					;
;// 03.08.06 //		INX
;// 03.08.06 //		INX
;// 03.08.06 //SCCG40		EQU	$
;// 03.08.06 //		STX	<DTBFWK		; (L),(H) set
;// 03.08.06 //;
;// 03.08.06 //		AND	#0000FH
;// 03.08.06 //		ASL	A
;// 03.08.06 //		TAX
;// 03.08.06 //		LDA	BITCD0,X
;// 03.08.06 //		STA	<WORKC		; (workc) <-- check data
;// 03.08.06 //;
;// 03.08.06 //		PHB
;// 03.08.06 //		PHK
;// 03.08.06 //		PLB			; (DBR) set
;// 03.08.06 //;
;// 03.08.06 //		LDA	>CCNGFG
;// 03.08.06 //		TAX
;// 03.08.06 //		LDA	CCNGD0,X
;// 03.08.06 //		STA	<WORK6
;// 03.08.06 //		LDA	CCNGD1,X
;// 03.08.06 //		STA	<WORK8
;// 03.08.06 //		LDA	CCNGD2,X
;// 03.08.06 //		STA	<WORKA		; (work6,8,A) <-- CG. check data
;// 03.08.06 //;
;// 03.08.06 //		LDA	!CCNGPT
;// 03.08.06 //		BNE	SCCG200		; back CG. change ?
;// 03.08.06 //;					; no
;// 03.08.06 //		LDX	#00040H		; (X) <-- CG. change start point
;// 03.08.06 //		LDA	#00100H		; (A) <-- CG. change end   point
;// 03.08.06 //		JSR	CCNGZ00		; CG. change
;// 03.08.06 //;
;// 03.08.06 //;// 03.06.12 //SCCG100		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	>CGWORK+000H,X
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4		; (WORK4) <-- change CG. data
;// 03.08.06 //;// 03.06.12 //;
;// 03.08.06 //;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.08.06 //;// 03.06.12 //		AND	#0000000000011111B
;// 03.08.06 //;// 03.06.12 //		ASL	A
;// 03.08.06 //;// 03.06.12 //		ASL	A
;// 03.08.06 //;// 03.06.12 //		TAY			; (Y) <-- RED data
;// 03.08.06 //;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.08.06 //;// 03.06.12 //		AND	<WORKC
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG120		; CG. change ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.08.06 //;// 03.06.12 //		ADC	<WORK6
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4
;// 03.08.06 //;// 03.06.12 //SCCG120		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.08.06 //;// 03.06.12 //		AND	#0000001111100000B
;// 03.08.06 //;// 03.06.12 //		LSR	A
;// 03.08.06 //;// 03.06.12 //		LSR	A
;// 03.08.06 //;// 03.06.12 //		LSR	A
;// 03.08.06 //;// 03.06.12 //		TAY			; (Y) <-- GREEN data
;// 03.08.06 //;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.08.06 //;// 03.06.12 //		AND	<WORKC
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG140		; CG. change ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.08.06 //;// 03.06.12 //		ADC	<WORK8
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4
;// 03.08.06 //;// 03.06.12 //SCCG140		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	>CGRAM+001H,X
;// 03.08.06 //;// 03.06.12 //		AND	#0000000001111100B
;// 03.08.06 //;// 03.06.12 //		TAY			; (Y)     <-- BLUE data
;// 03.08.06 //;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.08.06 //;// 03.06.12 //		AND	<WORKC
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG160		; CG. change ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //		CLC
;// 03.08.06 //;// 03.06.12 //		ADC	<WORKA
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4
;// 03.08.06 //;// 03.06.12 //SCCG160		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //		STA	>CGWORK+000H,X
;// 03.08.06 //;// 03.06.12 //		INX
;// 03.08.06 //;// 03.06.12 //		INX
;// 03.08.06 //;// 03.06.12 //		CPX	#00100H
;// 03.08.06 //;// 03.06.12 //		BCC	SCCG100		; end ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //;
;// 03.08.06 //		PLB			; (DBR) reset
;// 03.08.06 //;
;// 03.08.06 //		INC	!CCNGPT
;// 03.08.06 //;
;// 03.08.06 //		SEP	#00110001B	; memory,index 8bit mode & SEC
;// 03.08.06 //		RTL
;// 03.08.06 //;
;// 03.08.06 //;
;// 03.08.06 //SCCG200		EQU	$
;// 03.08.06 //		LDX	#00100H		; (X) <-- CG. change start point
;// 03.08.06 //		JSR	CCNGY00		; CG. change
;// 03.08.06 //;
;// 03.08.06 //;// 03.06.12 //SCCG300		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	>CGWORK+000H,X
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4		; (WORK4) <-- change CG. data
;// 03.08.06 //;// 03.06.12 //;
;// 03.08.06 //;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.08.06 //;// 03.06.12 //		AND	#0000000000011111B
;// 03.08.06 //;// 03.06.12 //		ASL	A
;// 03.08.06 //;// 03.06.12 //		ASL	A
;// 03.08.06 //;// 03.06.12 //		TAY			; (Y) <-- RED data
;// 03.08.06 //;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.08.06 //;// 03.06.12 //		AND	<WORKC
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG320		; CG. change ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.08.06 //;// 03.06.12 //		ADC	<WORK6
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4
;// 03.08.06 //;// 03.06.12 //SCCG320		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	>CGRAM+000H,X
;// 03.08.06 //;// 03.06.12 //		AND	#0000001111100000B
;// 03.08.06 //;// 03.06.12 //		LSR	A
;// 03.08.06 //;// 03.06.12 //		LSR	A
;// 03.08.06 //;// 03.06.12 //		LSR	A
;// 03.08.06 //;// 03.06.12 //		TAY			; (Y) <-- GREEN data
;// 03.08.06 //;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.08.06 //;// 03.06.12 //		AND	<WORKC
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG340		; CG. change ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //;// 02.06.14 //		CLC
;// 03.08.06 //;// 03.06.12 //		ADC	<WORK8
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4
;// 03.08.06 //;// 03.06.12 //SCCG340		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	>CGRAM+001H,X
;// 03.08.06 //;// 03.06.12 //		AND	#0000000001111100B
;// 03.08.06 //;// 03.06.12 //		TAY			; (Y)     <-- BLUE data
;// 03.08.06 //;// 03.06.12 //		LDA	(<DTBFWK),Y
;// 03.08.06 //;// 03.06.12 //		AND	<WORKC
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG360		; CG. change ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //		CLC
;// 03.08.06 //;// 03.06.12 //		ADC	<WORKA
;// 03.08.06 //;// 03.06.12 //		STA	<WORK4
;// 03.08.06 //;// 03.06.12 //SCCG360		EQU	$
;// 03.08.06 //;// 03.06.12 //		LDA	<WORK4
;// 03.08.06 //;// 03.06.12 //		STA	>CGWORK+000H,X
;// 03.08.06 //;// 03.06.12 //		INX
;// 03.08.06 //;// 03.06.12 //		INX
;// 03.08.06 //;// 03.06.12 //		CPX	#001B0H
;// 03.08.06 //;// 03.06.12 //		BCC	SCCG300		; ken CG. ?
;// 03.08.06 //;// 03.06.12 //;					; no
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG380
;// 03.08.06 //;// 03.06.12 //;
;// 03.08.06 //;// 03.06.12 //		TXA
;// 03.08.06 //;// 03.06.12 //		CLC
;// 03.08.06 //;// 03.06.12 //		ADC	#00010H
;// 03.08.06 //;// 03.06.12 //		TAX
;// 03.08.06 //;// 03.06.12 //SCCG380		EQU	$
;// 03.08.06 //;// 03.06.12 //		CPX	#001E0H
;// 03.08.06 //;// 03.06.12 //		BNE	SCCG300		; end ?
;// 03.08.06 //;// 03.06.12 //;					; yes
;// 03.08.06 //		PLB			; (DBR) reset
;// 03.08.06 //;
;// 03.08.06 //		STZ	!CCNGPT
;// 03.08.06 //		LDA	>CCNGFG
;// 03.08.06 //		BNE	SCCG395		; fade out ?
;// 03.08.06 //;					; yes
;// 03.08.06 //		LDA	>CCNGCT
;// 03.08.06 //		INC	A
;// 03.08.06 //		STA	>CCNGCT
;// 03.08.06 //		CMP	>CCNGED
;// 03.08.06 //		BNE	SCCG390		; end ?
;// 03.08.06 //;					; yes
;// 03.08.06 //SCCG385		EQU	$
;// 03.08.06 //		LDA	>CCNGFG
;// 03.08.06 //		EOR	#00002H
;// 03.08.06 //		STA	>CCNGFG
;// 03.08.06 //		LDA	#00000H
;// 03.08.06 //		STA	>CCNGCT
;// 03.08.06 //;
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.08.06 //;
;// 03.08.06 //		INC	<CGVMAF		; CG. VMA flag on
;// 03.08.06 //		CLC
;// 03.08.06 //		RTL
;// 03.08.06 //;
;// 03.08.06 //SCCG390		EQU	$
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110001B	; memory,index 8bit mode & SEC
;// 03.08.06 //;
;// 03.08.06 //		INC	<CGVMAF		; CG. VMA flag on
;// 03.08.06 //		RTL
;// 03.08.06 //;
;// 03.08.06 //;
;// 03.08.06 //SCCG395		EQU	$
;// 03.08.06 //		LDA	>CCNGCT
;// 03.08.06 //		CMP	>CCNGED
;// 03.08.06 //		BEQ	SCCG385		; end ?
;// 03.08.06 //;					; no
;// 03.08.06 //		LDA	>CCNGCT
;// 03.08.06 //		DEC	A
;// 03.08.06 //		STA	>CCNGCT
;// 03.08.06 //;
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110001B	; memory,index 8bit mode & SEC
;// 03.08.06 //;
;// 03.08.06 //		INC	<CGVMAF		; CG. VMA flag on
;// 03.08.06 //		RTL
;// 03.08.06 //;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ground trip CG. init. set		(CTPITST)	*
;************************************************************************
CTPITST		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
		LDA	#07FFFH
CTPIS20		EQU	$
		STA	>CGRAM+000H,X
		STA	>CGRAM+040H,X
		STA	>CGRAM+080H,X
		STA	>CGRAM+0C0H,X
		STA	>CGRAM+100H,X
		STA	>CGRAM+140H,X
		STA	>CGRAM+180H,X
		STA	>CGRAM+1C0H,X
		INX
		INX
		CPX	#040H
		BNE	CTPIS20		; end ?
;					; yes
		LDA	>CGWORK+000H
		STA	>CGWORK+040H
;
		LDA	#00000H
		STA	>CCNGCT
		LDA	#00002H
		STA	>CCNGFG
;
		LDA	<MPDTNO
		CMP	#0001BH
		BNE	CTPIS40		; piramido ?
;					; yes
		LDA	#00000H
		STA	>CGRAM+000H
		STA	>CGRAM+040H
		STA	>CGWORK+000H
		STA	>CGWORK+040H
CTPIS40		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#008H
		STA	!KGCHPT
		STZ	!KGCHCT		; char. change flag clear
		RTL
;
;
;
;************************************************************************
;*		Ground trip CG. change			(GTPCCNG)	*
;************************************************************************
CTPC990		EQU	$
		JSL	>WGBGCNG	; warp character change
CTPC999		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
CTPCCNG		EQU	$
		DEC	!KGCHPT
		BNE	CTPC990		; change ?
;					; yes
		LDA	#002H
		STA	!KGCHPT
CTPC000		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	>CCNGFG
		CMP	#000FFH
		BEQ	CTPC999		; end ?
;					; no
;// 03.09.24 //		TAX
;// 03.09.24 //;
;// 03.09.24 //		PHB
;// 03.09.24 //		PHK
;// 03.09.24 //		PLB			; (DBR) set
;// 03.09.24 //;
;// 03.09.24 //		LDA	CCNGD0,X
;// 03.09.24 //		STA	<WORK0
;// 03.09.24 //		LDA	CCNGD1,X
;// 03.09.24 //		STA	<WORK2
;// 03.09.24 //		LDA	CCNGD2,X
;// 03.09.24 //		STA	<WORK4		; (work0,2,4) <-- CG. check data
;// 03.09.24 //;
;// 03.09.24 //		LDX	#00040H		; (X) <-- CG. change start point
;// 03.09.24 //CTPC100		EQU	$
;// 03.09.24 //		LDA	>CGWORK+000H,X
;// 03.09.24 //		TAY			; (Y) <-- (A)
;// 03.09.24 //		AND	#0000000000011111B
;// 03.09.24 //		STA	<WORK8
;// 03.09.24 //		TYA
;// 03.09.24 //		AND	#0000001111100000B
;// 03.09.24 //		STA	<WORKA
;// 03.09.24 //		TYA
;// 03.09.24 //		AND	#0111110000000000B
;// 03.09.24 //		STA	<WORKC
;// 03.09.24 //;
;// 03.09.24 //		LDA	>CGRAM+000H,X
;// 03.09.24 //		AND	#0000000000011111B
;// 03.09.24 //		CMP	<WORK8
;// 03.09.24 //		BEQ	CTPC120		; limit ?
;// 03.09.24 //;					; no
;// 03.09.24 //		TYA
;// 03.09.24 //		CLC
;// 03.09.24 //		ADC	<WORK0
;// 03.09.24 //		TAY
;// 03.09.24 //CTPC120		EQU	$
;// 03.09.24 //		LDA	>CGRAM+000H,X
;// 03.09.24 //		AND	#0000001111100000B
;// 03.09.24 //		CMP	<WORKA
;// 03.09.24 //		BEQ	CTPC140		; limit ?
;// 03.09.24 //;					; yes
;// 03.09.24 //		TYA
;// 03.09.24 //		CLC
;// 03.09.24 //		ADC	<WORK2
;// 03.09.24 //		TAY
;// 03.09.24 //CTPC140		EQU	$
;// 03.09.24 //		LDA	>CGRAM+000H,X
;// 03.09.24 //		AND	#0111110000000000B
;// 03.09.24 //		CMP	<WORKC
;// 03.09.24 //		BEQ	CTPC160		; limit ?
;// 03.09.24 //;					; no
;// 03.09.24 //		TYA
;// 03.09.24 //		CLC
;// 03.09.24 //		ADC	<WORK4
;// 03.09.24 //		TAY
;// 03.09.24 //CTPC160		EQU	$
;// 03.09.24 //		TYA
;// 03.09.24 //		STA	>CGWORK+000H,X
;// 03.09.24 //		INX
;// 03.09.24 //		INX
;// 03.09.24 //		CPX	#001B0H
;// 03.09.24 //		BCC	CTPC100		; check ?
;// 03.09.24 //;					; yes
;// 03.09.24 //		BNE	CTPC240		
;// 03.09.24 //;
;// 03.09.24 //CTPC200		EQU	$
;// 03.09.24 //		TXA
;// 03.09.24 //		CLC
;// 03.09.24 //		ADC	#00010H
;// 03.09.24 //		TAX
;// 03.09.24 //CTPC240		EQU	$
;// 03.09.24 //		CPX	#001E0H
;// 03.09.24 //		BNE	CTPC100		; end ?
;// 03.09.24 //;					; yes
;// 03.09.24 //;
;// 03.09.24 //		LDA	>CGWORK+040H
;// 03.09.24 //		STA	>CGWORK+000H
;// 03.09.24 //;
;// 03.09.24 //		PLB			; (DBR) reset
;
		CMP	#00002H
		BNE	CTPC100		;
;					;
		LDX	#00040H
		LDA	#001B0H
		JSR	K_I_C000
		LDX	#001C0H
		LDA	#001E0H
		JSR	K_I_C000
		BRA	CTPC200
;
CTPC100		EQU	$
		LDX	#00040H
		LDA	#001B0H
		JSR	K_I_C100
		LDX	#001C0H
		LDA	#001E0H
		JSR	K_I_C100
CTPC200		EQU	$
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
;
		LDA	>CCNGFG
		BNE	CTPC390		; fade-out ?
;					; yes
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#00042H
		BNE	CTPC380		; end ?
;					; yes
		LDA	#000FFH
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#020H
		STA	!KGCHPT
CTPC380		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
		MEM16
		IDX16
CTPC390		EQU	$
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#0001FH
		BNE	CTPC380		; end ?
;					; yes
		LDA	>CCNGFG
		EOR	#00002H
		STA	>CCNGFG
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<SLMODE
		CMP	#MD_bckgr
		BNE	CTPC395		; 
;					; yes
		STZ	420CH
		STZ	<WD420C
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#03EH
		LDA	#00778H
		JSL	>KAGEI20	; H-DMA buffer reset
;
		INC	<CGVMAF		; CG. VMA flag on
CTPC395		EQU	$
		RTL
;
;
;
CTPCZZZ		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00040H
		LDA	#00200H
		JSR	K_I_C000
		BRA	CTPC200
;
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ground Warp CG. change			(WPCGCNG)	*
;************************************************************************
WPCCNG0		EQU	$
		LDA	<FCNT
		LSR	A
		BCC	WPCG080		; fade out ok ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDX	#00040H		; (X) <-- CG. change start point
WPCG000		EQU	$
		LDA	>CGWORK+000H,X
		TAY			; (Y) <-- (A)
		AND	#0111110000000000B
		CMP	#0111110000000000B
		BEQ	WPCG020		; limit ?
;					; no
		TYA
		CLC
		ADC	#0000010000000000B
		TAY
WPCG020		EQU	$
		TYA
		STA	>CGWORK+000H,X
		INX
		INX
		CPX	#00200H
		BNE	WPCG000		; end ?
;					; yes
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
;
		PLB			; (DBR) reset
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>CCNGCT
		LSR	A
		BCS	WPCG070		;
;					;
		LDA	>MZKCNT
		CLC
		ADC	#00010000B
		STA	>MZKCNT
WPCG070		EQU	$
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#0001FH
		BNE	WPCG080		; end ?
;					; yes
		LDA	#000H
		STA	>CCNGCT
;
		INC	<JRSBPT
		LDA	#11110000B
		STA	>MZKCNT
WPCG080		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
		LDA	>MZKCNT
		ORA	#00000011B
		STA	<MD2106		; mozaiku set
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
;************************************************************************
;*		Ground Warp CG. change			(WPCGCG2)	*
;************************************************************************
WPCCNG2		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDX	#00040H		; (X) <-- CG. change start point
WPCG200		EQU	$
		LDA	>CGWORK+000H,X
		TAY			; (Y) <-- (A)
		AND	#0000001111100000B
		BEQ	WPCG220		; limit ?
;					; no
		TYA
		SEC
		SBC	#0000000000100000B
		TAY
WPCG220		EQU	$
		TYA
		AND	#0000000000011111B
		BEQ	WPCG240		; limit ?
;					; no
		TYA
		SEC
		SBC	#0000000000000001B
		TAY
WPCG240		EQU	$
		TYA
		STA	>CGWORK+000H,X
		INX
		INX
		CPX	#00200H
		BNE	WPCG200		; end ?
;					; yes
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
;
		PLB			; (DBR) reset
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JMP	WPCG070
;
;
;
;
;************************************************************************
;*		Ground Warp CG. change			(WPCCNG1)	*
;************************************************************************
WPCCNG1		EQU	$
		LDA	<FCNT
		LSR	A
		BCC	WPCG180		; fade out ok ?
;					; no
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDX	#00040H		; (X) <-- CG. change start point
WPCG100		EQU	$
		LDA	>CGRAM+000H,X
		AND	#0111110000000000B
		STA	<WORK0
;
		LDA	>CGWORK+000H,X
		TAY			; (Y) <-- (A)
		AND	#0111110000000000B
		CMP	<WORK0
		BEQ	WPCG120		; limit ?
;					; no
		TYA
		SEC
		SBC	#0000010000000000B
		TAY
WPCG120		EQU	$
		TYA
		STA	>CGWORK+000H,X
		INX
		INX
		CPX	#00200H
		BNE	WPCG100		; end ?
;					; yes
;
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
;
		PLB			; (DBR) reset
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>CCNGCT
		LSR	A
		BCS	WPCG170		;
;					;
		LDA	>MZKCNT
		BEQ	WPCG170		;
;					;
		SEC
		SBC	#00010000B
		STA	>MZKCNT
WPCG170		EQU	$
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#0001FH
		BNE	WPCG180		; end ?
;					; yes
		LDA	#00000000B
		STA	>CCNGCT
		STA	>MZKCNT
		INC	<JRSBPT
WPCG180		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
		LDA	>MZKCNT
		ORA	#00000011B
		STA	<MD2106		; mozaiku set
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
;************************************************************************
;*		Ground Warp CG. change			(WPCGCG3)	*
;************************************************************************
WPCCNG3		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDX	#00040H		; (X) <-- CG. change start point
WPCG300		EQU	$
		LDA	>CGRAM+000H,X
		AND	#0000001111100000B
		STA	<WORK0
		LDA	>CGRAM+000H,X
		AND	#0000000000011111B
		STA	<WORK2
;
		LDA	>CGWORK+000H,X
		TAY			; (Y) <-- (A)
		AND	#0000001111100000B
		CMP	<WORK0
		BEQ	WPCG320		; limit ?
;					; no
		TYA
		CLC
		ADC	#0000000000100000B
		TAY
WPCG320		EQU	$
		TYA
		AND	#0000000000011111B
		CMP	<WORK2
		BEQ	WPCG340		; limit ?
;					; no
		TYA
		CLC
		ADC	#0000000000000001B
		TAY
WPCG340		EQU	$
		TYA
		STA	>CGWORK+000H,X
		INX
		INX
		CPX	#00200H
		BNE	WPCG300		; end ?
;					; yes
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
;
		PLB			; (DBR) reset
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#0001FH
		BNE	WPCG380		; end ?
;					; yes
		LDA	#00000000B
		STA	>CCNGCT
		INC	<JRSBPT
WPCG380		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
;
;************************************************************************
;*		Game over CG. change			(GOVRCCNG)	*
;************************************************************************
GOVC999		EQU	$
GOVC000		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
GOVRCCNG	EQU	$
;// 03.07.12 //		DEC	!KGCHPT
;// 03.07.12 //		BNE	GOVC999		; change ?
;// 03.07.12 //;					; yes
;// 03.07.12 //		LDA	#002H
;// 03.07.12 //		STA	!KGCHPT
;// 03.07.12 //;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	>CCNGFG
		CMP	#000FFH
		BEQ	GOVC000		; end ?
;					; no
		PHB
		PHK
		PLB			; (DBR) set
;
		LDX	#00040H		; (X) <-- CG. change start point
		LDA	#00100H		; (A) <--            end   point
		JSR	K_I_C100
;// 03.09.12 //GOVC100		EQU	$
;// 03.09.12 //		LDA	>CGWORK+000H,X
;// 03.09.12 //		TAY			; (Y) <-- (A)
;// 03.09.12 //		AND	#0000000000011111B
;// 03.09.12 //		STA	<WORK8
;// 03.09.12 //		TYA
;// 03.09.12 //		AND	#0000001111100000B
;// 03.09.12 //		STA	<WORKA
;// 03.09.12 //		TYA
;// 03.09.12 //		AND	#0111110000000000B
;// 03.09.12 //		STA	<WORKC
;// 03.09.12 //;
;// 03.09.12 //		LDA	>CGRAM+000H,X
;// 03.09.12 //		AND	#0000000000011111B
;// 03.09.12 //		CMP	<WORK8
;// 03.09.12 //		BEQ	GOVC120		; limit ?
;// 03.09.12 //;					; no
;// 03.09.12 //;// 03.07.30 //		BCS	GOVC110		; up ?
;// 03.09.12 //;// 03.07.30 //;					; no
;// 03.09.12 //		TYA
;// 03.09.12 //		SEC
;// 03.09.12 //		SBC	#00001H
;// 03.09.12 //		TAY
;// 03.09.12 //;// 03.07.30 //		BRA	GOVC120
;// 03.09.12 //;// 03.07.30 //;
;// 03.09.12 //;// 03.07.30 //GOVC110		EQU	$
;// 03.09.12 //;// 03.07.30 //		TYA
;// 03.09.12 //;// 03.07.30 //		CLC
;// 03.09.12 //;// 03.07.30 //		ADC	#00001H
;// 03.09.12 //;// 03.07.30 //		TAY
;// 03.09.12 //GOVC120		EQU	$
;// 03.09.12 //		LDA	>CGRAM+000H,X
;// 03.09.12 //		AND	#0000001111100000B
;// 03.09.12 //		CMP	<WORKA
;// 03.09.12 //		BEQ	GOVC140		; limit ?
;// 03.09.12 //;					; yes
;// 03.09.12 //		TYA
;// 03.09.12 //		SEC
;// 03.09.12 //		SBC	#00020H
;// 03.09.12 //		TAY
;// 03.09.12 //GOVC140		EQU	$
;// 03.09.12 //		LDA	>CGRAM+000H,X
;// 03.09.12 //		AND	#0111110000000000B
;// 03.09.12 //		CMP	<WORKC
;// 03.09.12 //		BEQ	GOVC160		; limit ?
;// 03.09.12 //;					; no
;// 03.09.12 //		TYA
;// 03.09.12 //		SEC
;// 03.09.12 //		SBC	#00400H
;// 03.09.12 //		TAY
;// 03.09.12 //GOVC160		EQU	$
;// 03.09.12 //		TYA
;// 03.09.12 //		STA	>CGWORK+000H,X
;// 03.09.12 //		INX
;// 03.09.12 //		INX
;// 03.09.12 //		CPX	#00100H
;// 03.09.12 //;// 03.07.12 //		BNE	GOVC180		;
;// 03.09.12 //;// 03.07.12 //;					;
;// 03.09.12 //;// 03.07.12 //		LDX	#00180H
;// 03.09.12 //;// 03.07.12 //GOVC180		EQU	$
;// 03.09.12 //;// 03.07.12 //		CPX	#00200H
;// 03.09.12 //		BNE	GOVC100		; end ?
;// 03.09.12 //;					; yes
;
		PLB			; (DBR) reset
;
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		CMP	#00020H
		BNE	GOVC380		; end ?
;					; yes
		LDA	#000FFH
		STA	>CCNGFG
		STZ	<DPSUB
GOVC380		EQU	$
;// 03.05.30 //		LDA	>CGWORK+040H
;// 03.05.30 //		AND	#0000001111100000B
;// 03.05.30 //		ASL	A
;// 03.05.30 //		ASL	A
;// 03.05.30 //		ASL	A
;// 03.05.30 //		XBA
;// 03.05.30 //;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;// 03.05.30 //		ORA	#01000000B
;// 03.05.30 //		STA	<WD2132G
;
;// 03.07.15 //		LDA	>CGWORK+040H
;// 03.07.15 //		AND	#00011111B
;// 03.07.15 //		ORA	#00100000B
;// 03.07.15 //		STA	<WD2132R
;
;// 03.05.30 //		LDA	>CGWORK+041H
;// 03.05.30 //		AND	#01111100B
;// 03.05.30 //		LSR	A
;// 03.05.30 //		LSR	A
;// 03.05.30 //		ORA	#10000000B
;// 03.05.30 //		STA	<WD2132B
;
		INC	<CGVMAF		; CG. VMA flag on
		RTL
;
;
;
;
;************************************************************************
;*		Re-start CG. change			(RSTRCCNG)	*
;************************************************************************
RSTRCCNG	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PHB
		PHK
		PLB			; (DBR) set
;
		LDX	#00040H		; (X) <-- CG. change start point
		LDA	#00100H		; (A) <--            end   point
		JSR	K_I_C000
;
		PLB			; (DBR) reset
;
		LDA	>CCNGCT
		INC	A
		STA	>CCNGCT
		BRA	GOVC380
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Kame-iwa Boss (R) CG. change		(KMBRCG0)	*
;************************************************************************
KMBRCG0		EQU	$
		LDA	!KMBRCT
		BNE	KMBR060		; CG. change ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
KMBR000		EQU	$
		LDA	>CGWORK+082H,X
		AND	#0000000000011111B
		CMP	#0000000000011111B
		BEQ	KMBR020		; limit ?
;					; no
		CLC
		ADC	#0000000000000001B
KMBR020		EQU	$
		STA	<WORK0
		LDA	>CGWORK+082H,X
		AND	#1111111111100000B
		ORA	<WORK0
		STA	>CGWORK+082H,X
		INX
		INX
		CPX	#00EH
		BNE	KMBR000		;
;					;
KMBR050		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF
		INC	!KMBRPT
		LDA	!KMBRPT
		CMP	#00CH
		BCS	KMBR080		;
;					;
		LDA	#003H
		STA	!KMBRCT
KMBR060		EQU	$
		DEC	!KMBRCT
		RTL
;
KMBR080		EQU	$
		STZ	!KMBRCT
		STZ	!KMBRPT
		RTL
;
;
;
;************************************************************************
;*		Kame-iwa Boss (R) CG. change		(KMBRCG1)	*
;************************************************************************
KMBRCG1		EQU	$
		LDA	!KMBRCT
		BNE	KMBR060		; CG. change ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
KMBR100		EQU	$
		LDA	>CGRAM+082H,X
		AND	#0000000000011111B
		STA	<WORKC
		LDA	>CGWORK+082H,X
		AND	#0000000000011111B
		CMP	<WORKC
		BEQ	KMBR120		; limit ?
;					; no
		SEC
		SBC	#0000000000000001B
KMBR120		EQU	$
		STA	<WORK0
		LDA	>CGWORK+082H,X
		AND	#1111111111100000B
		ORA	<WORK0
		STA	>CGWORK+082H,X
		INX
		INX
		CPX	#00EH
		BNE	KMBR100		;
;					;
		BRA	KMBR050
;
;
;
;************************************************************************
;*		Kame-iwa Boss (B) CG. change		(KMBBCG0)	*
;************************************************************************
KMBBCG0		EQU	$
		LDA	!KMBBCT
		BNE	KMBB060		; CG. change ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
KMBB000		EQU	$
		LDA	>CGWORK+082H,X
		AND	#0111110000000000B
		CMP	#0111110000000000B
		BEQ	KMBB020		; limit ?
;					; no
		CLC
		ADC	#0000010000000000B
KMBB020		EQU	$
		STA	<WORK0
		LDA	>CGWORK+082H,X
		AND	#1000001111111111B
		ORA	<WORK0
		STA	>CGWORK+082H,X
		INX
		INX
		CPX	#00EH
		BNE	KMBB000		;
;					;
KMBB050		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF
		INC	!KMBBPT
		LDA	!KMBBPT
		CMP	#00CH
		BCS	KMBB080		;
;					;
		LDA	#003H
		STA	!KMBBCT
KMBB060		EQU	$
		DEC	!KMBBCT
		RTL
;
KMBB080		EQU	$
		STZ	!KMBBCT
		STZ	!KMBBPT
		RTL
;
;
;
;************************************************************************
;*		Kame-iwa Boss (B) CG. change		(KMBBCG1)	*
;************************************************************************
KMBBCG1		EQU	$
		LDA	!KMBBCT
		BNE	KMBB060		; CG. change ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
KMBB100		EQU	$
		LDA	>CGRAM+082H,X
		AND	#0111110000000000B
		STA	<WORKC
		LDA	>CGWORK+082H,X
		AND	#0111110000000000B
		CMP	<WORKC
		BEQ	KMBB120		; limit ?
;					; no
		SEC
		SBC	#0000010000000000B
KMBB120		EQU	$
		STA	<WORK0
		LDA	>CGWORK+082H,X
		AND	#1000001111111111B
		ORA	<WORK0
		STA	>CGWORK+082H,X
		INX
		INX
		CPX	#00EH
		BNE	KMBB100		;
;					;
		BRA	KMBB050
;
;
;
;
;
;// 03.02.05 //;
;// 03.02.05 //;************************************************************************
;// 03.02.05 //;*		Ground trip CG. init. set		(CTPITST)	*
;// 03.02.05 //;************************************************************************
;// 03.02.05 //TRPCGD		EQU	$		; trip CG. data
;// 03.02.05 //		WORD	07EDFH,05574H,065F9H,07EDFH,07F9FH,065F9H,07EDFH,07F9FH
;// 03.02.05 //		WORD	07EDFH,05574H,065F9H,07EDFH,07F9FH,065F9H,07EDFH,07F9FH
;// 03.02.05 //;// 02.12.10 //		WORD	02ABFH,07E3FH,0463FH,02ABFH,027BDH,0463FH,02ABFH,027BDH
;// 03.02.05 //;// 02.12.10 //		WORD	0463FH,07E52H,07E3FH,0463FH,02ABFH,07E3FH,0463FH,02ABFH
;// 03.02.05 //		WORD	07E3FH,0332AH,07E52H,07E3FH,0463FH,07E52H,07E3FH,0463FH
;// 03.02.05 //		WORD	07E52H,027BDH,0332AH,07E52H,07E3FH,0332AH,07E52H,07E3FH
;// 03.02.05 //		WORD	0332AH,02ABFH,027BDH,0332AH,07E52H,027BDH,0332AH,07E52H
;// 03.02.05 //		WORD	027BDH,0463FH,02ABFH,027BDH,0332AH,02ABFH,027BDH,0332AH
;// 03.02.05 //;
;// 03.02.05 //;
;// 03.02.05 //CTPITST		EQU	$
;// 03.02.05 //		MEM16
;// 03.02.05 //		REP	#00100000B	; memory 16bit mode
;// 03.02.05 //;
;// 03.02.05 //		PHB
;// 03.02.05 //		PHK
;// 03.02.05 //		PLB			; (DBR) set
;// 03.02.05 //;
;// 03.02.05 //		LDX	#000H
;// 03.02.05 //		LDY	#000H
;// 03.02.05 //CTPIS20		EQU	$
;// 03.02.05 //		LDA	TRPCGD+000H,Y
;// 03.02.05 //		STA	>CGBUF0+000H,X
;// 03.02.05 //		STA	>CGWORK+040H,X
;// 03.02.05 //		LDA	TRPCGD+010H,Y
;// 03.02.05 //		STA	>CGBUF0+010H,X
;// 03.02.05 //		STA	>CGWORK+050H,X
;// 03.02.05 //		LDA	#00000H
;// 03.02.05 //		STA	>CGWORK+060H,X
;// 03.02.05 //		STA	>CGWORK+070H,X
;// 03.02.05 //		INY
;// 03.02.05 //		INY
;// 03.02.05 //		INX
;// 03.02.05 //		INX
;// 03.02.05 //		TXA
;// 03.02.05 //		AND	#0000FH
;// 03.02.05 //		BNE	CTPIS20		; 1-line end ?
;// 03.02.05 //;					; yes
;// 03.02.05 //;;;;;;;;		TXA
;// 03.02.05 //;;;;;;;;		CLC
;// 03.02.05 //;;;;;;;;		ADC	#00010H
;// 03.02.05 //;;;;;;;;		TAX
;// 03.02.05 //;;;;;;;;		CPX	#0C0H
;// 03.02.05 //;;;;;;;;		BNE	CTPIS20		; end ?
;// 03.02.05 //;;;;;;;;;					; yes
;// 03.02.05 //		PLB			; (DBR) reset
;// 03.02.05 //;
;// 03.02.05 //		LDA	#00000H
;// 03.02.05 //		STA	>CCNGCT
;// 03.02.05 //		STZ	!KGCGPT
;// 03.02.05 //		STZ	!KGCGCT
;// 03.02.05 //;
;// 03.02.05 //		JSL	>CTPC200	; nuki set
;// 03.02.05 //CTPC300		EQU	$
;// 03.02.05 //		MEM8
;// 03.02.05 //		IDX8
;// 03.02.05 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.02.05 //;
;// 03.02.05 //		INC	<CGVMAF		; CG. VMA flag on
;// 03.02.05 //CTPC380		EQU	$
;// 03.02.05 //		RTL
;// 03.02.05 //;
;// 03.02.05 //;
;// 03.02.05 //;
;// 03.02.05 //;************************************************************************
;// 03.02.05 //;*		Ground trip CG. change			(GTPCCNG)	*
;// 03.02.05 //;************************************************************************
;// 03.02.05 //CTPCCNG		EQU	$
;// 03.02.05 //		LDA	<FCNT
;// 03.02.05 //		AND	#00000011B
;// 03.02.05 //		BNE	CTPC380		;
;// 03.02.05 //;					;
;// 03.02.05 //		MEM16
;// 03.02.05 //		IDX16
;// 03.02.05 //		REP	#00110000B	; memory,index 16bit mode
;// 03.02.05 //;
;// 03.02.05 //		LDA	>CCNGCT
;// 03.02.05 //		CMP	#0FFFFH
;// 03.02.05 //		BEQ	CTPC300		; end ?
;// 03.02.05 //;					; no
;// 03.02.05 //		INC	A
;// 03.02.05 //		STA	>CCNGCT
;// 03.02.05 //		CMP	#0001FH
;// 03.02.05 //		BNE	CTPC20		; end ?
;// 03.02.05 //;					; yes
;// 03.02.05 //		LDA	#0FFFFH
;// 03.02.05 //		STA	>CCNGCT
;// 03.02.05 //CTPC20		EQU	$
;// 03.02.05 //		LDX	#CGCHDT
;// 03.02.05 //		LDA	>CCNGCT
;// 03.02.05 //		CMP	#00010H
;// 03.02.05 //		BCC	CTPC40		;
;// 03.02.05 //;					;
;// 03.02.05 //		INX
;// 03.02.05 //		INX
;// 03.02.05 //CTPC40		EQU	$
;// 03.02.05 //		STX	<DTBFWK		; (L),(H) set
;// 03.02.05 //;
;// 03.02.05 //		AND	#0000FH
;// 03.02.05 //		ASL	A
;// 03.02.05 //		TAX
;// 03.02.05 //		LDA	BITCD0,X
;// 03.02.05 //		STA	<WORKC		; (workc) <-- check data
;// 03.02.05 //;
;// 03.02.05 //		PHB
;// 03.02.05 //		PHK
;// 03.02.05 //		PLB			; (DBR) set
;// 03.02.05 //;
;// 03.02.05 //		LDX	#00000H
;// 03.02.05 //CTPC100		EQU	$
;// 03.02.05 //		LDA	>CGWORK+040H,X
;// 03.02.05 //		STA	<WORK4		; (WORK4) <-- change CG. data
;// 03.02.05 //		LDA	>CGWORK+060H,X
;// 03.02.05 //		STA	<WORK6
;// 03.02.05 //;
;// 03.02.05 //		LDA	>CGBUF0+000H,X
;// 03.02.05 //		AND	#0000000000011111B
;// 03.02.05 //		ASL	A
;// 03.02.05 //		ASL	A
;// 03.02.05 //		TAY			; (Y) <-- RED data
;// 03.02.05 //		LDA	(<DTBFWK),Y
;// 03.02.05 //		AND	<WORKC
;// 03.02.05 //		BNE	CTPC120		; CG. change ?
;// 03.02.05 //;					; yes
;// 03.02.05 //		LDA	<WORK4
;// 03.02.05 //		SEC
;// 03.02.05 //		SBC	#00001H
;// 03.02.05 //		STA	<WORK4
;// 03.02.05 //		LDA	<WORK6
;// 03.02.05 //		CLC
;// 03.02.05 //		ADC	#00001H
;// 03.02.05 //		STA	<WORK6
;// 03.02.05 //CTPC120		EQU	$
;// 03.02.05 //		LDA	>CGBUF0+000H,X
;// 03.02.05 //		AND	#0000001111100000B
;// 03.02.05 //		LSR	A
;// 03.02.05 //		LSR	A
;// 03.02.05 //		LSR	A
;// 03.02.05 //		TAY			; (Y) <-- GREEN data
;// 03.02.05 //		LDA	(<DTBFWK),Y
;// 03.02.05 //		AND	<WORKC
;// 03.02.05 //		BNE	CTPC140		; CG. change ?
;// 03.02.05 //;					; yes
;// 03.02.05 //		LDA	<WORK4
;// 03.02.05 //		SEC
;// 03.02.05 //		SBC	#00020H
;// 03.02.05 //		STA	<WORK4
;// 03.02.05 //		LDA	<WORK6
;// 03.02.05 //		CLC
;// 03.02.05 //		ADC	#00020H
;// 03.02.05 //		STA	<WORK6
;// 03.02.05 //CTPC140		EQU	$
;// 03.02.05 //		LDA	>CGBUF0+001H,X
;// 03.02.05 //		AND	#0000000001111100B
;// 03.02.05 //		TAY			; (Y) <-- BLUE data
;// 03.02.05 //		LDA	(<DTBFWK),Y
;// 03.02.05 //		AND	<WORKC
;// 03.02.05 //		BNE	CTPC160		; CG. change ?
;// 03.02.05 //;					; yes
;// 03.02.05 //		LDA	<WORK4
;// 03.02.05 //		SEC
;// 03.02.05 //		SBC	#00400H
;// 03.02.05 //		STA	<WORK4
;// 03.02.05 //		LDA	<WORK6
;// 03.02.05 //		CLC
;// 03.02.05 //		ADC	#00400H
;// 03.02.05 //		STA	<WORK6
;// 03.02.05 //CTPC160		EQU	$
;// 03.02.05 //		LDA	<WORK4
;// 03.02.05 //		STA	>CGWORK+040H,X
;// 03.02.05 //		LDA	<WORK6
;// 03.02.05 //		STA	>CGWORK+060H,X
;// 03.02.05 //		INX
;// 03.02.05 //		INX
;// 03.02.05 //		CPX	#00020H
;// 03.02.05 //		BNE	CTPC100		; 1-line end ?
;// 03.02.05 //;					; yes
;// 03.02.05 //		PLB			; (DBR) reset
;// 03.02.05 //CTPC200		EQU	$
;// 03.02.05 //		LDA	>CGWORK+40H
;// 03.02.05 //		STA	>CGWORK+000H
;// 03.02.05 //;
;// 03.02.05 //		LDA	>CGWORK+60H
;// 03.02.05 //		AND	#0000000000011111B
;// 03.02.05 //		STA	<WORK0
;// 03.02.05 //		LDA	>CGWORK+60H
;// 03.02.05 //		AND	#0000001111100000B
;// 03.02.05 //		LSR	A
;// 03.02.05 //		LSR	A
;// 03.02.05 //		LSR	A
;// 03.02.05 //		LSR	A
;// 03.02.05 //		LSR	A
;// 03.02.05 //		STA	<WORK1
;// 03.02.05 //		LDA	>CGWORK+061H
;// 03.02.05 //		AND	#0000000001111100B
;// 03.02.05 //		LSR	A
;// 03.02.05 //		LSR	A
;// 03.02.05 //		STA	<WORK2
;// 03.02.05 //;
;// 03.02.05 //		MEM8
;// 03.02.05 //		IDX8
;// 03.02.05 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.02.05 //;
;// 03.02.05 //		LDA	<WORK0
;// 03.02.05 //		ORA	#00100000B
;// 03.02.05 //		STA	<WD2132R
;// 03.02.05 //		LDA	<WORK1
;// 03.02.05 //		ORA	#01000000B
;// 03.02.05 //		STA	<WD2132G
;// 03.02.05 //		LDA	<WORK2
;// 03.02.05 //		ORA	#10000000B
;// 03.02.05 //		STA	<WD2132B	; color set
;// 03.02.05 //;
;// 03.02.05 //		INC	<CGVMAF		; CG. VMA flag on
;// 03.02.05 //		RTL
;// 03.02.05 //;
;
;
;
;
		MEM8
;************************************************************************
;*		Wipe Initial (fade out)			(WIPEIT0)	*
;************************************************************************
WIPEIT0		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDY	#00000H
		LDX	#0007EH
		BRA	WPIT00
;
;
;************************************************************************
;*		Wipe Initial (fade in)			(WIPEIT1)	*
;************************************************************************
WIPEIT1		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDY	#00002H
		LDX	#00000H
WPIT00		EQU	$
		STY	!WNSTAT
		STX	!WNHNKI		; radius init.
;
		STZ	420CH
;
		LDX	#02641H
		STX	4360H
		STX	4370H		; inc. mode & B-bus address set
		LDX	#HDMADR
		STX	4362H
		STX	4372H		; A-bus address (L,H)
		LDA	#BANK HDMADR
		STA	4364H
		STA	4374H		;               (B)
;
		LDA	#BANK HDMABF
		STA	4367H
		STA	4377H		; data bank
;
		LDA	#00110011B
		STA	<WD2123		; window mask (BG2:on  , BG1:on )
		LDA	#00000011B
		STA	<WD2124		;             (BG4:off , BG3:on )
		LDA	#00110011B	;// 02.11.20 //
		STA	<WD2125		;             (COL:on  , OBJ:on )
;
		LDA	<DPMAIN
		STA	<WDMAIN
		LDA	<DPSUB
		STA	<WDSUB
;
		LDA	<GMMODE
		BNE	WPIT40		; ground ?
;					; yes
		LDA	#00100000B
		STA	<WD2132R
		LDA	#01000000B
		STA	<WD2132G
		LDA	#10000000B
		STA	<WD2132B
WPIT40		EQU	$
		IDX8
		SEP	#00010000B	; index 8bit mode
;
		JSL	>WIPEMV		; wipe move
;
		LDA	#10000000B
		STA	<WD420C		; H-DMA ch "ON" !!
;
		LDA	#00001111B
		STA	<BLKFLG		; blanking off
		RTL
;
;
;
;
;===============  H-DMA data  =======================================
HDMADR		EQU	$
		BYTE	0F8H
		WORD	HDMABF
		BYTE	0F8H
		WORD	HDMABF+78H*2
		BYTE	00
;
;
;
;
;
;************************************************************************
;*		Wipe move				(WIPEMV)	*
;************************************************************************
WPADDD		EQU	$		; radius up data
		WORD	0FFF9H,00007H,00007H,00007H
WPCMPD		EQU	$		; radius limit data
		WORD	00000H,0007EH,00023H,0007EH
;
WIPEMV		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLYPS1
		SEC
		SBC	<SCCV2
		CLC
		ADC	#0000CH
		STA	<WORKE		; (workE) <-- y-pos center
		SEC
		SBC	!WNHNKI
		STA	!WNYPL0		; y-pos upper set
		LDA	<WORKE
		CLC
		ADC	!WNHNKI
		STA	!WNYPL1		; y-pos lower set
;
		LDA	<PLXPS1
		SEC
		SBC	<SCCH2
		CLC
		ADC	#00008H
		STA	!WNXPL0		; x-pos center set
;
		LDA	!WNHNKI
		STA	!WNYBUF
;
		LDA	<WORKE
		ASL	A
		STA	<WORK6
		CMP	#000E0H
		BCS	WIPM040		;
;					;
		LDA	#000E0H
		STA	<WORK6
WIPM040		EQU	$
		LDA	<WORK6
		SEC
		SBC	<WORKE
		STA	<WORKA
		LDA	<WORKE
		SEC
		SBC	<WORKA
		STA	<WORK4
WIPM100		EQU	$
		LDA	#00FFH		;/// 91/09/28 ///
		STA	<WORK8		;window pos reset !!
;
;;;;		LDA	<WORK4
;;;;		CMP	!WNYPL0
;;;;		BCC	WIPM200		; window upper over ?
;					; no		
		LDA	<WORK6
		CMP	!WNYPL1
		BCS	WIPM200
;
WIPM140		EQU	$
		LDA	!WNYBUF
		BEQ	WIPM180		;
;					;
		DEC	!WNYBUF
WIPM180		EQU	$
		JSR	WIPCALC		; wipe calc.
WIPM200		EQU	$
		LDA	<WORK4		; h-dma buff index ---> x
		ASL	A
		CMP	#001C0H
		BCS	WIPM300		; limit over ?
;					; no
		TAX
		LDA	<WORK8
;;;;		STA	!HDMABF,X	; h-dma (h),(l) 0 set
		STA	>WNDWBF,X	; h-dma (h),(l) 0 set
WIPM300		EQU	$
WIPM400		EQU	$
		LDA	<WORK6		; h-dma buff index ---> x
		ASL	A
		CMP	#001C0H
		BCS	WIPM480		; limit over ?
;					; no
		TAX
		LDA	<WORK8
;;;;		STA	!HDMABF,X	; h-dma (h),(l) 0 set
		STA	>WNDWBF,X	; h-dma (h),(l) 0 set
WIPM480		EQU	$
		LDA	<WORKE
		CMP	<WORK4
		BEQ	WIPM600		; end ?
;					; no
		INC	<WORK4
		DEC	<WORK6
		JMP	WIPM100
;
WIPM600		EQU	$
		LDA	2137H
		LDA	213FH
		LDA	213DH
		AND	#00FFH
		CMP	#00C0H
		BCC	WIPM600
;	
		LDX	#0000
WIPM610		EQU	$
		LDA	>WNDWBF,X
		STA	!HDMABF,X
		INX
		INX
		CPX	#01C0H
		BCC	WIPM610
;
		LDX	!WNSTAT
		LDA	!WNHNKI
		CLC
		ADC	WPADDD,X
		STA	!WNHNKI
		CMP	WPCMPD,X
		BNE	WIPM680		; wipe end ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	!WNSTAT
		BNE	WIPM640		; fade out ?
;					; yes
		LDA	#10000000B
		STA	<BLKFLG
		STA	2100H
		BRA	WIPM660
;
WIPM640		EQU	$
		JSL	>HDMAOFF	; H-DMA off
WIPM660		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	<JRSBPT
		STZ	<GAMEMD
		LDA	<SLMODE
		CMP	#MD_djply
		BEQ	WIPM663		;
;					;
		CMP	#MD_wpin
		BNE	WIPM665		; fade-in ?
;					; yes
WIPM663		EQU	$
		LDA	<GMMODE
		BNE	WIPM664		; ground ?
;					; yes
		LDA	<MPDTNO
		CMP	#043H
		BEQ	WIPM6635	; ura-yama ?
;					; no
		CMP	#045H
		BEQ	WIPM6635	; ura-yama ?
;					; no
		CMP	#047H
		BNE	WIPM664		; ura-yama ?
;					; yes
WIPM6635	EQU	$
		LDA	#009H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1		; <sound1>
WIPM664		EQU	$
		LDA	!SNDSFG0
		CMP	#0FFH
		BEQ	WIPM665		; sound set ?
;					; yes
		STA	!SOUND0
;// 03.09.16 //		CMP	#0F0H
;// 03.09.16 //		BCS	WIPM665		;
;// 03.09.16 //;					;
;// 03.09.16 //		STA	!SVSND0		; <sound0>
WIPM665		EQU	$
		LDA	!NXSLMD
		STA	<SLMODE
		CMP	#MD_djint
		BNE	WIPM670		; danjyon ?
;					; yes
		JSL	>ALCLER		; enemy all clear
WIPM670		EQU	$
;// 02.08.17 //		CMP	#MD_gdply
;// 02.08.17 //		BNE	WIPM680		; ground ?
;// 02.08.17 //;					; yes
;// 02.08.17 //;// 02.08.16 //		LDA	!GDRSP0
;// 02.08.17 //;// 02.08.16 //		ORA	!GDRSP1
;// 02.08.17 //;// 02.08.16 //		BEQ	WIPM680		; door exit ?
;// 02.08.17 //;// 02.08.16 //;					; yes
;// 02.08.17 //		LDA	!GDRBF0+0
;// 02.08.17 //		ORA	!GDRBF0+1
;// 02.08.17 //		ORA	!GDRBF1+0
;// 02.08.17 //		ORA	!GDRBF1+1
;// 02.08.17 //		BEQ	WIPM680		; door exit ?
;// 02.08.17 //;					; yes
;// 02.08.17 //;// 02.08.17 //		LDA	#006H
;// 02.08.17 //		LDA	#p2_dext
;// 02.08.17 //		STA	<GAMEMD
;// 02.08.17 //		LDA	#010H
;// 02.08.17 //		STA	!SCRLFG
WIPM680		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB
		RTL
;
;
;
;************************************************************************
;*		H-DMA off				(HDMAOFF)	*
;************************************************************************
HDMAOFF		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0003EH
		LDA	#0FF00H
HDOFF40		EQU	$
		STA	!HDMABF+000H,X
		STA	!HDMABF+040H,X
		STA	!HDMABF+080H,X
		STA	!HDMABF+0C0H,X
		STA	!HDMABF+100H,X
		STA	!HDMABF+140H,X
		STA	!HDMABF+180H,X
		DEX
		DEX
		BPL	HDOFF40		; wipe clear end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
;
;************************************************************************
;*		Wipe calc.				(WIPCALC)	*
;************************************************************************
WINDAT		EQU	$		; da en data (R 0FFH)
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FE,FE,FE,FE	; 0
		HEX	FD,FD,FD,FD,FC,FC,FC,FB,FB,FB,FA,FA,F9,F9,F8,F8 ; 1
		HEX	F7,F7,F6,F6,F5,F5,F4,F3,F3,F2,F1,F1,F0,EF,EE,EE ; 2
		HEX	ED,EC,EB,EA,E9,E9,E8,E7,E6,E5,E4,E3,E2,E1,DF,DE ; 3
		HEX	DD,DC,DB,DA,D8,D7,D6,D5,D3,D2,D0,CF,CD,CC,CA,C9 ; 4
		HEX	C7,C6,C4,C2,C1,BF,BD,BB,B9,B7,B6,B4,B1,AF,AD,AB ; 5
		HEX	A9,A7,A4,A2,9F,9D,9A,97,95,92,8F,8C,89,86,82,7F ; 6
		HEX	7B,78,74,70,6C,67,63,5E,59,53,4D,46,3F,37,2D,1F ; 7
;
		HEX	00
;
;
WIPCALC		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STA	4205H
		STZ	4204H
		LDA	!WNHNKI
		STA	4206H
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	4214H
		LSR	A
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		TAX
		LDY	WINDAT,X
		STY	<WORKA
		STY	4202H
		LDA	!WNHNKI
		STA	4203H
		NOP
		NOP
		STZ	<WORK1
		STZ	<WORKB
		LDA	4217H
		STA	<WORK0
;
		MEM16
		IDX16
		REP	#00110000B	; memory 16bit mode
;
		ASL	<WORK0
		LDA	<WORKA
		BEQ	WPCAL40		;
;					;
		LDA	<WORK0
		CLC
		ADC	!WNXPL0
		STA	<WORK2		; (work2) <-- right x-pos
		LDA	!WNXPL0
		SEC
		SBC	<WORK0
;;;;		STA	<WORK0		; (work0) <-- left x-pos.
;
;;;;		LDA	<WORK0		; (L) x-pos 1 set
		STZ	<WORK0
		BMI	WIPM250		;
;					;
		BIT	#0FF00H
		BEQ	WIPM240		;
;					;
		LDA	#000FFH
WIPM240		EQU	$
		STA	<WORK0
WIPM250		EQU	$
;
		LDA	<WORK2		; (H) x-pos 2 set
		BIT	#0FF00H
		BEQ	WIPM260		;
;					;
		LDA	#000FFH
WIPM260		EQU	$
		XBA
		ORA	<WORK0
		CMP	#0FFFFH
		BNE	WIPM280		;
;					;
		LDA	#000FFH
WIPM280		EQU	$
		STA	<WORK8
;
WPCAL40		EQU	$
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Light Wipe move				(LGTWPMV)	*
;************************************************************************
B1SHHD		EQU	$
		WORD	00000H,00100H,00000H,00100H
B1SVHD		EQU	$
		WORD	00000H,00000H,00100H,00100H
B1RPD0		EQU	$
		WORD	00034H,0FFFEH,00038H,00006H
B1RPD1		EQU	$
		WORD	00040H,00040H,00052H,0FF50H
B1RPD2		EQU	$
		WORD	00080H,00180H,000A0H,000A0H
;
;
;
LWPCLR		EQU	$
		RTL
;
;
LGTWPMV		EQU	$
		LDA	!LGTWFG
		BEQ	LWPCLR		; light-wipe on ?
;					; yes
		LDA	<GAMEMD
		CMP	#p1_hlrs
		BEQ	LWPCLR		; hole-down reset ?
;					; no
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLMKCH
		AND	#000FFH
		STA	<WORK0
		TAX
;
		LDA	<PWORK6
		AND	#000FFH
		BEQ	LGTW030		; in door ?
;					; yes
		AND	#000FEH
		ASL	A
		TAX
		BEQ	LGTW010		; left,right door ?
;					; yes
		LDA	<WORK0
		CMP	#00004H
		BCS	LGTW000		; muki left,right ?
;					; yes
		LDA	<PLXPS1
		CLC
		ADC	#00008H
		AND	#000FFH
		BRA	LGTW020
;
LGTW000		EQU	$
		TAX
		BRA	LGTW030
;
LGTW010		EQU	$
		LDA	<WORK0
		CMP	#00004H
		BCC	LGTW000		; muki up,down ?
;					; no
		LDA	<PLYPS1
		AND	#000FFH
LGTW020		EQU	$
		CMP	#00080H
		BCC	LGTW030		; down,right ?
;					; yes
		INX
		INX
LGTW030		EQU	$
		CPX	#00004H
		BCS	LGTW100		; left,right ?
;					; no
		LDA	<PLXPS1
		SEC
		SBC	#00077H
		STA	<WORK0
		LDA	<SCCH2
		SEC
		SBC	<WORK0
		CLC
		ADC	>B1SHHD,X
		STA	<SCCH1		; H set
;
		LDA	<PLYPS1
		SEC
		SBC	#00058H
		STA	<WORK0
		LDA	<SCCV2
		SEC
		SBC	<WORK0
		CLC
		ADC	>B1SVHD,X
		CLC
		ADC	>B1RPD0,X
		CLC
		ADC	>B1RPD1,X
		BPL	LGTW040		; limit ?
;					; yes
		LDA	#00000H
LGTW040		EQU	$
		CMP	>B1RPD2,X
		BCC	LGTW060		;
;					;
		LDA	>B1RPD2,X
LGTW060		EQU	$
		SEC
		SBC	>B1RPD1,X
		STA	<SCCV1
;
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
LGTW100		EQU	$
		LDA	<PLYPS1
		SEC
		SBC	#00072H
		STA	<WORK0
		LDA	<SCCV2
		SEC
		SBC	<WORK0
		CLC
		ADC	>B1SVHD,X
		STA	<SCCV1		; V set
;
		LDA	<PLXPS1
		SEC
		SBC	#00058H
		STA	<WORK0
		LDA	<SCCH2
		SEC
		SBC	<WORK0
		CLC
		ADC	>B1SHHD,X
		CLC
		ADC	>B1RPD0,X
		CLC
		ADC	>B1RPD1,X
		BPL	LGTW140		; limit ?
;					; yes
		LDA	#00000H
LGTW140		EQU	$
		CMP	>B1RPD2,X
		BCC	LGTW160		;
;					;
		LDA	>B1RPD2,X
LGTW160		EQU	$
		SEC
		SBC	>B1RPD1,X
		STA	<SCCH1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;<< 03.03.29 >>;
;<< 03.03.29 >>		MEM8
;<< 03.03.29 >>;************************************************************************
;<< 03.03.29 >>;*		Light Wipe Initial 			(LGTWPIT)	*
;<< 03.03.29 >>;************************************************************************
;<< 03.03.29 >>LGTWPIT		EQU	$
;<< 03.03.29 >>		IDX16
;<< 03.03.29 >>		REP	#00010000B	; index 16bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		INC	!LGTWST
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDX	#02641H
;<< 03.03.29 >>		STX	4370H		; inc. mode & B-bus address set
;<< 03.03.29 >>		LDX	#HDMADR
;<< 03.03.29 >>		STX	4372H		; A-bus address (L,H)
;<< 03.03.29 >>		LDA	#BANK HDMADR
;<< 03.03.29 >>		STA	4374H		;               (B)
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	#BANK HDMABF
;<< 03.03.29 >>		STA	4377H		; data bank
;<< 03.03.29 >>;
;<< 03.03.29 >>		STZ	<WD2123		; window mask (BG2:off , BG1:off )
;<< 03.03.29 >>		STZ	<WD2124		;             (BG4:off , BG3:off )
;<< 03.03.29 >>		LDA	#00110000B
;<< 03.03.29 >>		STA	<WD2125		;             (COL:on  , OBJ:off )
;<< 03.03.29 >>;
;<< 03.03.29 >>		MEM16
;<< 03.03.29 >>		REP	#00100000B	; memory 16bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	#0001001000000000B
;<< 03.03.29 >>		STA	<WDMAIN
;<< 03.03.29 >>;;;;;;;;		STA	<WDSUB
;<< 03.03.29 >>;
;<< 03.03.29 >>		MEM8
;<< 03.03.29 >>		IDX8
;<< 03.03.29 >>		SEP	#00110000B	; memory,index 8bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		JSL	>LGTWPMV		; wipe move
;<< 03.03.29 >>;
;<< 03.03.29 >>;// 02.09.18 //		LDA	#00010000B
;<< 03.03.29 >>;// 02.09.18 //		STA	2130H
;<< 03.03.29 >>;// 02.09.18 //		LDA	#01110010B
;<< 03.03.29 >>;// 02.09.18 //		STA	2131H
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	#10000000B
;<< 03.03.29 >>		STA	<WD420C		; H-DMA ch "ON" !!
;<< 03.03.29 >>LWPCLR		EQU	$
;<< 03.03.29 >>		RTL
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;************************************************************************
;<< 03.03.29 >>;*		Light Wipe move				(LGTWPMV)	*
;<< 03.03.29 >>;************************************************************************
;<< 03.03.29 >>LGTSFTY		EQU	$		; light shift y-data
;<< 03.03.29 >>		WORD	0FFF0H+00CH,00010H+00CH,00004H+00CH,00004H+00CH
;<< 03.03.29 >>LGTSFTX		EQU	$
;<< 03.03.29 >>		WORD	00000H+008H,00000H+008H,0FFF0H+008H,00010H+008H
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>LGTWPMV		EQU	$
;<< 03.03.29 >>		LDA	!LGTWFG
;<< 03.03.29 >>		BEQ	LWPCLR		; light-wipe on ?
;<< 03.03.29 >>;					; yes
;<< 03.03.29 >>		PHB
;<< 03.03.29 >>		PHK
;<< 03.03.29 >>		PLB			; (DBR) set
;<< 03.03.29 >>;
;<< 03.03.29 >>		MEM16
;<< 03.03.29 >>		IDX16
;<< 03.03.29 >>		REP	#00110000B	; memory,index 16bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	<PLMKCH
;<< 03.03.29 >>		AND	#000FFH
;<< 03.03.29 >>		TAX
;<< 03.03.29 >>		LDA	<PLYPS1
;<< 03.03.29 >>		CLC
;<< 03.03.29 >>		ADC	LGTSFTY,X
;<< 03.03.29 >>		SEC
;<< 03.03.29 >>		SBC	<SCCV2
;<< 03.03.29 >>		STA	<WORKE		; (workE) <-- y-pos center
;<< 03.03.29 >>		SEC
;<< 03.03.29 >>		SBC	#00020H
;<< 03.03.29 >>		BPL	LWPM010		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDA	#00020H
;<< 03.03.29 >>		STA	<WORKE
;<< 03.03.29 >>		LDA	#00000H
;<< 03.03.29 >>LWPM010		EQU	$
;<< 03.03.29 >>		CMP	#000A0H
;<< 03.03.29 >>		BCC	LWPM020		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDA	#000C0H
;<< 03.03.29 >>		STA	<WORKE
;<< 03.03.29 >>		LDA	#000A0H
;<< 03.03.29 >>LWPM020		EQU	$
;<< 03.03.29 >>		STA	!WNYPL0		; y-pos upper set
;<< 03.03.29 >>		LDA	<WORKE
;<< 03.03.29 >>		CLC
;<< 03.03.29 >>		ADC	#00020H
;<< 03.03.29 >>		STA	!WNYPL1		; y-pos lower set
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	<PLXPS1
;<< 03.03.29 >>		CLC
;<< 03.03.29 >>		ADC	LGTSFTX,X
;<< 03.03.29 >>		SEC
;<< 03.03.29 >>		SBC	<SCCH2
;<< 03.03.29 >>		STA	!WNXPL0		; x-pos center set
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	#00020H
;<< 03.03.29 >>		STA	!WNXBUF
;<< 03.03.29 >>		STA	!WNYBUF
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	<WORKE
;<< 03.03.29 >>		ASL	A
;<< 03.03.29 >>		CMP	#000E0H
;<< 03.03.29 >>		BCS	LWPM040		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDA	#000E0H
;<< 03.03.29 >>LWPM040		EQU	$
;<< 03.03.29 >>		STA	<WORK6
;<< 03.03.29 >>		SEC
;<< 03.03.29 >>		SBC	<WORKE
;<< 03.03.29 >>		STA	<WORKA
;<< 03.03.29 >>		LDA	<WORKE
;<< 03.03.29 >>		SEC
;<< 03.03.29 >>		SBC	<WORKA
;<< 03.03.29 >>		STA	<WORK4
;<< 03.03.29 >>LWPM100		EQU	$
;<< 03.03.29 >>		LDA	<WORK4
;<< 03.03.29 >>		BMI	LWPM300		; check ?
;<< 03.03.29 >>;					; yes
;<< 03.03.29 >>		CMP	!WNYPL0
;<< 03.03.29 >>		BCS	LWPM140		; window upper over ?
;<< 03.03.29 >>;					; yes
;<< 03.03.29 >>;// 02.09.18 //		LDA	<WORK4
;<< 03.03.29 >>		ASL	A
;<< 03.03.29 >>		TAX
;<< 03.03.29 >>		LDA	#0FFFFH
;<< 03.03.29 >>		BRA	LWPM280
;<< 03.03.29 >>;		
;<< 03.03.29 >>LWPM140		EQU	$
;<< 03.03.29 >>;// 02.09.27 //		LDX	!WNYBUF
;<< 03.03.29 >>		LDA	!WNYBUF
;<< 03.03.29 >>		BEQ	LWPM180		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		DEC	!WNYBUF
;<< 03.03.29 >>LWPM180		EQU	$
;<< 03.03.29 >>		JSR	LWPCALC		; wipe calc.
;<< 03.03.29 >>LWPM200		EQU	$
;<< 03.03.29 >>		LDA	<WORK4		; h-dma buff index ---> x
;<< 03.03.29 >>		ASL	A
;<< 03.03.29 >>		TAX
;<< 03.03.29 >>		LDY	#00000H
;<< 03.03.29 >>		LDA	<WORK0		; (L) x-pos 1 set
;<< 03.03.29 >>		BMI	LWPM240		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		TAY
;<< 03.03.29 >>		AND	#0FF00H
;<< 03.03.29 >>		BEQ	LWPM240		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDY	#000FFH
;<< 03.03.29 >>LWPM240		EQU	$
;<< 03.03.29 >>		TYA
;<< 03.03.29 >>		AND	#000FFH
;<< 03.03.29 >>		STA	<WORK0
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	<WORK2		; (H) x-pos 2 set
;<< 03.03.29 >>		TAY
;<< 03.03.29 >>		AND	#0FF00H
;<< 03.03.29 >>		BEQ	LWPM260		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDY	#000FFH
;<< 03.03.29 >>LWPM260		EQU	$
;<< 03.03.29 >>		TYA
;<< 03.03.29 >>		AND	#000FFH
;<< 03.03.29 >>		XBA
;<< 03.03.29 >>		ORA	<WORK0
;<< 03.03.29 >>LWPM280		EQU	$
;<< 03.03.29 >>		CPX	#001C0H
;<< 03.03.29 >>		BCS	LWPM300		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		CMP	#0FFFFH
;<< 03.03.29 >>		BNE	LWPM290		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDA	#000FFH
;<< 03.03.29 >>LWPM290		EQU	$
;<< 03.03.29 >>		STA	!HDMABF,X	; h-dma (h),(l) 0 set
;<< 03.03.29 >>LWPM300		EQU	$
;<< 03.03.29 >>		LDA	<WORK6
;<< 03.03.29 >>		CMP	#000E0H
;<< 03.03.29 >>		BCS	LWPM480		; check ?
;<< 03.03.29 >>;					; yes
;<< 03.03.29 >>		CMP	!WNYPL1
;<< 03.03.29 >>		BCC	LWPM340		; window lower over ?
;<< 03.03.29 >>;					; yes
;<< 03.03.29 >>;// 02.09.18 //		LDA	<WORK6
;<< 03.03.29 >>		ASL	A
;<< 03.03.29 >>		TAX
;<< 03.03.29 >>		LDA	#0FFFFH
;<< 03.03.29 >>		BRA	LWPM470
;<< 03.03.29 >>;
;<< 03.03.29 >>LWPM340		EQU	$
;<< 03.03.29 >>;// 02.09.27 //		LDX	!WNXBUF
;<< 03.03.29 >>		LDA	!WNXBUF
;<< 03.03.29 >>		BEQ	LWPM380		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		DEC	!WNXBUF
;<< 03.03.29 >>LWPM380		EQU	$
;<< 03.03.29 >>		JSR	LWPCALC		; wipe calc.
;<< 03.03.29 >>LWPM400		EQU	$
;<< 03.03.29 >>		LDA	<WORK6		; h-dma buff index ---> x
;<< 03.03.29 >>		ASL	A
;<< 03.03.29 >>		TAX
;<< 03.03.29 >>		LDY	#00000H
;<< 03.03.29 >>		LDA	<WORK0		; (L) x-pos 1 set
;<< 03.03.29 >>		BMI	LWPM440		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		TAY
;<< 03.03.29 >>		AND	#0FF00H
;<< 03.03.29 >>		BEQ	LWPM440		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDY	#000FFH
;<< 03.03.29 >>LWPM440		EQU	$
;<< 03.03.29 >>		TYA
;<< 03.03.29 >>		AND	#000FFH
;<< 03.03.29 >>		STA	<WORK0
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	<WORK2		; (H) x-pos 2 set
;<< 03.03.29 >>		TAY
;<< 03.03.29 >>		AND	#0FF00H
;<< 03.03.29 >>		BEQ	LWPM460		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDY	#000FFH
;<< 03.03.29 >>LWPM460		EQU	$
;<< 03.03.29 >>		TYA
;<< 03.03.29 >>		AND	#000FFH
;<< 03.03.29 >>		XBA
;<< 03.03.29 >>		ORA	<WORK0
;<< 03.03.29 >>LWPM470		EQU	$
;<< 03.03.29 >>		CPX	#001C0H
;<< 03.03.29 >>		BCS	LWPM480		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		CMP	#0FFFFH
;<< 03.03.29 >>		BNE	LWPM475		;
;<< 03.03.29 >>;					;
;<< 03.03.29 >>		LDA	#000FFH
;<< 03.03.29 >>LWPM475		EQU	$
;<< 03.03.29 >>		STA	!HDMABF,X	; h-dma (h),(l) 0 set
;<< 03.03.29 >>LWPM480		EQU	$
;<< 03.03.29 >>		LDA	<WORKE
;<< 03.03.29 >>		CMP	<WORK4
;<< 03.03.29 >>		BEQ	LWPM600		; end ?
;<< 03.03.29 >>;					; no
;<< 03.03.29 >>		INC	<WORK4
;<< 03.03.29 >>		DEC	<WORK6
;<< 03.03.29 >>		JMP	LWPM100
;<< 03.03.29 >>;
;<< 03.03.29 >>LWPM600		EQU	$
;<< 03.03.29 >>LWPM660		EQU	$
;<< 03.03.29 >>LWPM680		EQU	$
;<< 03.03.29 >>		MEM8
;<< 03.03.29 >>		IDX8
;<< 03.03.29 >>		SEP	#00110000B	; memory,index 8bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		PLB			; (DBR) reset
;<< 03.03.29 >>		RTL
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>;************************************************************************
;<< 03.03.29 >>;*		LIGHT Wipe calc.			(LWPCALC)	*
;<< 03.03.29 >>;************************************************************************
;<< 03.03.29 >>LWPDATA		EQU	$
;<< 03.03.29 >>;			  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
;<< 03.03.29 >>;// 02.09.27 //		HEX	0FF,0FF,0FE,0FD,0FC,0FB,0F9,0F7,0F5,0F3,0F0,0ED,0E9,0E6,0E2,0DD
;<< 03.03.29 >>;// 02.09.27 //		HEX	0D8,0D3,0CD,0C7,0C1,0B9,0B1,0A9,09F,095,089,07B,06C,059,03F,000
;<< 03.03.29 >>;// 02.09.27 //		HEX	000
;<< 03.03.29 >>;
;<< 03.03.29 >>		WORD	0001FH,0001FH,0001FH,0001FH,0001FH,0001FH,0001FH,0001EH
;<< 03.03.29 >>		WORD	0001EH,0001EH,0001EH,0001DH,0001DH,0001CH,0001CH,0001BH
;<< 03.03.29 >>		WORD	0001BH,0001AH,00019H,00018H,00018H,00017H,00016H,00015H
;<< 03.03.29 >>		WORD	00013H,00012H,00011H,0000FH,0000DH,0000BH,00007H,00000H
;<< 03.03.29 >>		WORD	00000H
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;<< 03.03.29 >>LWPCALC		EQU	$
;<< 03.03.29 >>;// 02.09.27 //		MEM8
;<< 03.03.29 >>;// 02.09.27 //		IDX8
;<< 03.03.29 >>;// 02.09.27 //		SEP	#00110000B	; memory,index 8bit mode
;<< 03.03.29 >>;// 02.09.27 //;
;<< 03.03.29 >>;// 02.09.27 //		LDY	LWPDATA,X
;<< 03.03.29 >>;// 02.09.27 //		BEQ	LWPCL40		; data = 0 ?
;<< 03.03.29 >>;// 02.09.27 //;					; no
;<< 03.03.29 >>;// 02.09.27 //		STY	4202H
;<< 03.03.29 >>;// 02.09.27 //		LDA	#00020H
;<< 03.03.29 >>;// 02.09.27 //		STA	4203H
;<< 03.03.29 >>;// 02.09.27 //		NOP
;<< 03.03.29 >>;// 02.09.27 //		NOP
;<< 03.03.29 >>;// 02.09.27 //		NOP
;<< 03.03.29 >>;// 02.09.27 //		NOP
;<< 03.03.29 >>;// 02.09.27 //		LDA	4217H
;<< 03.03.29 >>;// 02.09.27 //		STA	<WORK8
;<< 03.03.29 >>;// 02.09.27 //		STZ	<WORK9
;<< 03.03.29 >>;// 02.09.27 //;
;<< 03.03.29 >>;// 02.09.27 //		MEM16
;<< 03.03.29 >>;// 02.09.27 //		IDX16
;<< 03.03.29 >>;// 02.09.27 //		REP	#00110000B	; memory 16bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		ASL	A		;// 02.09.27 //
;<< 03.03.29 >>		TAX			;// 02.09.27 //
;<< 03.03.29 >>		LDA	LWPDATA,X	;// 02.09.27 //
;<< 03.03.29 >>		STA	<WORK8		;// 02.09.27 //
;<< 03.03.29 >>;
;<< 03.03.29 >>;// 02.09.27 //		LDA	<WORK8
;<< 03.03.29 >>		CLC
;<< 03.03.29 >>		ADC	!WNXPL0
;<< 03.03.29 >>		STA	<WORK2		; (work2) <-- right x-pos
;<< 03.03.29 >>		LDA	!WNXPL0
;<< 03.03.29 >>		SEC
;<< 03.03.29 >>		SBC	<WORK8
;<< 03.03.29 >>		STA	<WORK0		; (work0) <-- left x-pos.
;<< 03.03.29 >>		RTS
;<< 03.03.29 >>;
;<< 03.03.29 >>LWPCL40		EQU	$
;<< 03.03.29 >>		MEM16
;<< 03.03.29 >>		IDX16
;<< 03.03.29 >>		REP	#00110000B	; memory 16bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	#00100H
;<< 03.03.29 >>		STA	<WORK0		; x-pos 1 clear
;<< 03.03.29 >>		STA	<WORK2		; x-pos 2 clear
;<< 03.03.29 >>		RTS
;<< 03.03.29 >>;
;<< 03.03.29 >>;
;
;
;************************************************************************
;*		Water Wipe move				(WTRWPMV)	*
;************************************************************************
WTRWPMV		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!WRWPYP
		SEC
		SBC	<SCCV2
		STA	<WORKA		; (workA) <-- y-pos center
		SEC
		SBC	!WRWPH0
		STA	!WNYPL0		; y-pos upper set
		LDA	<WORKA
		CLC
		ADC	!WRWPH0
WWPM000		EQU	$
		STA	!WNYPL1		; y-pos lower set
;
		LDA	!WRWPXP
		SEC
		SBC	<SCCH2
		STA	!WNXPL0		; x-pos center set
;
		LDA	!WRWPH1
		BEQ	WWPM020		;
;					;
		DEC	A
WWPM020		EQU	$
		STA	<WORKC
		CLC
		ADC	!WNXPL0
		STA	<WORK2		; (work2) <-- right x-pos
		LDA	!WNXPL0
		SEC
		SBC	<WORKC
		STA	<WORK0		; (work0) <-- left x-pos.
;
		LDY	#00000H		; (L) x-pos 1 set
		BMI	WWPM040		;
;					;
		TAY
		AND	#0FF00H
		BEQ	WWPM040		;
;					;
		LDY	#000FFH
WWPM040		EQU	$
		TYA
		AND	#000FFH
		STA	<WORK0
;
		LDA	<WORK2		; (H) x-pos 2 set
		TAY
		AND	#0FF00H
		BEQ	WWPM060		;
;					;
		LDY	#000FFH
WWPM060		EQU	$
		TYA
		AND	#000FFH
		XBA
		ORA	<WORK0
		STA	<WORKC
;
		LDA	<WORKA
		ASL	A
		STA	<WORK6
		CMP	#000E0H
		BCS	WWPM080		;
;					;
		LDA	#000E0H
		STA	<WORK6
WWPM080		EQU	$
		LDA	<WORK6
		SEC
		SBC	<WORKA
		STA	<WORK8
		LDA	<WORKA
		SEC
		SBC	<WORK8
		STA	<WORK4
		BRA	WWPM120
;
WWPM100		EQU	$
		INC	<WORK4
		DEC	<WORK6
WWPM120		EQU	$
		LDA	<WORK4
		BMI	WWPM200		; upper start ?
;					; yes
		LDA	!WNYPL0
		BMI	WWPM140		;
;					;
		LDA	<WORK4
		CMP	!WNYPL0
		BCS	WWPM140		; window upper over ?
;					; yes
		ASL	A
		TAX
		LDA	#000FFH
		BRA	WWPM180
;
WWPM140		EQU	$
		LDA	<WORK4		; h-dma buff index ---> x
		ASL	A
		TAX
		LDA	<WORKC
WWPM180		EQU	$
		CPX	#001C0H
		BCS	WWPM200		; limit over ?
;					; no
		CMP	#0FFFFH
		BNE	WWPM190		;
;					;
		LDA	#000FFH
WWPM190		EQU	$
		STA	!HDMABF,X	; h-dma (h),(l) 0 set
WWPM200		EQU	$
		LDA	<WORK6
		CMP	!WNYPL1
		BCC	WWPM220		;
;					;
		ASL	A
		TAX
		LDA	#000FFH
		BRA	WWPM280
;
WWPM220		EQU	$
		CMP	#000E1H
		BCC	WWPM240		;
;					;
		LDA	!WNXBUF
		BEQ	WWPM240		;
;					;
		DEC	!WNXBUF
WWPM240		EQU	$
		LDA	<WORK6		; h-dma buff index ---> x
		ASL	A
		TAX
		LDA	<WORKC
WWPM280		EQU	$
		CPX	#001C0H
		BCS	WWPM300		; limit over ?
;					; no
		CMP	#0FFFFH
		BNE	WWPM290		;
;					;
		LDA	#000FFH
WWPM290		EQU	$
		STA	!HDMABF,X	; h-dma (h),(l) 0 set
WWPM300		EQU	$
		LDA	<WORKA
		CMP	<WORK4
		BNE	WWPM100		; end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
;
;************************************************************************
;*		Water Wipe move				(WRWPV0)	*
;************************************************************************
WRWPV0		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<WORK4
;
		LDA	!WRWPYP
		SEC
		SBC	<SCCV2
		STA	!WNYPL0
;
		LDA	!WRWPXP
		SEC
		SBC	<SCCH2
		STA	!WNXPL0		; x-pos center set
;
		LDA	!WRWPH1
		EOR	#00001H
		STA	<WORKE
		CLC
		ADC	!WNXPL0
		STA	<WORK2		; (work2) <-- right x-pos
		LDA	!WNXPL0
		SEC
		SBC	<WORKE
;// 03.09.03 //		STA	<WORK0		; (work0) <-- left x-pos.
;// 03.09.03 //;
;// 03.09.03 //		LDY	#00000H		; (L) x-pos 1 set
;// 03.09.03 //		BMI	WRWP040		;
;// 03.09.03 //;					;
;// 03.09.03 //		TAY
;// 03.09.03 //		AND	#0FF00H
;// 03.09.03 //		BEQ	WRWP040		;
;// 03.09.03 //;					;
;// 03.09.03 //		LDY	#0FF00H
;// 03.09.03 //WRWP040		EQU	$
;// 03.09.03 //		TYA
		AND	#000FFH
		STA	<WORK0
;
		LDA	<WORK2		; (H) x-pos 2 set
;// 03.09.03 //		TAY
;// 03.09.03 //		AND	#0FF00H
;// 03.09.03 //		BEQ	WRWP060		;
;// 03.09.03 //;					;
;// 03.09.03 //		LDY	#000FFH
;// 03.09.03 //WRWP060		EQU	$
;// 03.09.03 //		TYA
		AND	#000FFH
		XBA
		ORA	<WORK0
		STA	<WORKC
WRWP100		EQU	$
		LDA	<WORK4
;// 03.09.03 //		CMP	!WNYPL0
;// 03.09.03 //		BCS	WRWP140		; window upper over ?
;// 03.09.03 //;					; yes
		ASL	A
		TAX
		LDA	#0FF00H
;// 03.09.03 //		BRA	WRWP180
;// 03.09.03 //;
;// 03.09.03 //WRWP140		EQU	$
;// 03.09.03 //		ASL	A
;// 03.09.03 //		TAX
;// 03.09.03 //		LDA	<WORKC
;// 03.09.03 //WRWP180		EQU	$
;// 03.09.03 //		CMP	#0FFFFH
;// 03.09.03 //		BNE	WRWP190		;
;// 03.09.03 //;					;
;// 03.09.03 //		LDA	#000FFH
WRWP190		EQU	$
		STA	!HDMABF,X	; h-dma (h),(l) 0 set
;
		INC	<WORK4
		LDA	<WORK4
		CMP	!WNYPL1
		BNE	WRWP100		; end
;					; yes
		LDA	<WORKE
		SEC
		SBC	#00007H
		CLC
		ADC	#00008H
		STA	<WORKC
		CLC
		ADC	!WNXPL0
		STA	<WORK2		; (work2) <-- right x-pos
		LDA	!WNXPL0
		SEC
		SBC	<WORKC
;// 03.09.03 //		STA	<WORK0		; (work0) <-- left x-pos.
;// 03.09.03 //;
;// 03.09.03 //		LDY	#00000H		; (L) x-pos 1 set
;// 03.09.03 //		BMI	WRWP200		;
;// 03.09.03 //;					;
;// 03.09.03 //		TAY
;// 03.09.03 //		AND	#0FF00H
;// 03.09.03 //		BEQ	WRWP200		;
;// 03.09.03 //;					;
;// 03.09.03 //		LDY	#000FFH
;// 03.09.03 //WRWP200		EQU	$
;// 03.09.03 //		TYA
		AND	#000FFH
		STA	<WORK0
;
		LDA	<WORK2		; (H) x-pos 2 set
;// 03.09.03 //		TAY
;// 03.09.03 //		AND	#0FF00H
;// 03.09.03 //		BEQ	WRWP220		;
;// 03.09.03 //;					;
;// 03.09.03 //		LDY	#000FFH
;// 03.09.03 //WRWP220		EQU	$
;// 03.09.03 //		TYA
		AND	#000FFH
		XBA
		ORA	<WORK0
		STA	<WORKC
;
		LDA	!WNYPL1
		CLC
		ADC	!WRWPH0
		EOR	#00001H
		STA	<WORKA
WRWP300		EQU	$
		LDA	<WORK4
		CMP	<WORKA
		BCC	WRWP340		; window upper over ?
;					; yes
		ASL	A
		TAX
		LDA	#000FFH
		BRA	WRWP380
;
WRWP340		EQU	$
		ASL	A
		TAX
		CPX	#001C0H
		BCS	WRWP340		; over ?
;					; no
		LDA	<WORKC
WRWP380		EQU	$
		CMP	#0FFFFH
		BNE	WRWP390		;
;					;
		LDA	#000FFH
WRWP390		EQU	$
		STA	!HDMABF,X	; h-dma (h),(l) 0 set
		INC	<WORK4
		LDA	<WORK4
		CMP	#000E1H
		BCC	WRWP300
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
;// 03.09.13 //;
;// 03.09.13 //;********************************************************************
;// 03.09.13 //;*		window H-DMA buff set initial	(ITMWIT)	    *
;// 03.09.13 //;********************************************************************
;// 03.09.13 //ITMWIT		EQU	$
;// 03.09.13 //		JSL	>INHDMA2	; H-DMA paramater set
;// 03.09.13 //;
;// 03.09.13 //		LDA	#010H		; x-pos (L) 1 set
;// 03.09.13 //		STA	WNXPL0
;// 03.09.13 //		LDA	#0F0H		; x-pos (L) 2 set
;// 03.09.13 //		STA	WNXPL1
;// 03.09.13 //		STZ	WNYPL1		; y-pos (L) set
;// 03.09.13 //		STZ	WNYPL0
;// 03.09.13 //		STZ	WNYBUF
;// 03.09.13 //;
;// 03.09.13 //		STZ	<WD2123		; window mask bg2,bg1 set
;// 03.09.13 //		LDA	#00000011B
;// 03.09.13 //		STA	<WD2124		; window mask bg4,bg3 set
;// 03.09.13 //		STZ	<WD2125
;// 03.09.13 //;
;// 03.09.13 //		LDA	#00000100B
;// 03.09.13 //		STA	<WDMAIN
;// 03.09.13 //		STZ	<WDSUB
;// 03.09.13 //		RTS
;// 03.09.13 //;
;// 03.09.13 //;********************************************************************
;// 03.09.13 //;*		window H-DMA buff set  		(ITMWIN)	    *
;// 03.09.13 //;********************************************************************
;// 03.09.13 //ITMWIN		EQU	$
;// 03.09.13 //;============== speed set =======================================
;// 03.09.13 //		LDA	#000H		; buff set
;// 03.09.13 //		CLC
;// 03.09.13 //		ADC	WNYBUF		; 
;// 03.09.13 //		STA	WNYBUF
;// 03.09.13 //		LDA	#0FCH		; speed set
;// 03.09.13 //		ADC	WNYPL0
;// 03.09.13 //		STA	WNYPL0		; y-speed (L) set
;// 03.09.13 //;
;// 03.09.13 //		LDA	WNYPL1		; begin y-pos set
;// 03.09.13 //		STA	<WORK0
;// 03.09.13 //		STZ	<WORK1
;// 03.09.13 //ITMW200		EQU	$
;// 03.09.13 //		MEM16
;// 03.09.13 //		IDX16
;// 03.09.13 //		REP	#00110000B
;// 03.09.13 //		LDA	<WORK0		; h-dma buff index ---> x
;// 03.09.13 //		DEC	A
;// 03.09.13 //		ASL	A
;// 03.09.13 //		TAX
;// 03.09.13 //		LDA	WNXPL0		; (L) x-pos 1 set
;// 03.09.13 //		AND	#00FFH
;// 03.09.13 //		STA	<WORK2
;// 03.09.13 //;
;// 03.09.13 //		LDA	WNXPL1		; (H) x-pos 2 set
;// 03.09.13 //		AND	#00FFH
;// 03.09.13 //		XBA
;// 03.09.13 //		ORA	<WORK2
;// 03.09.13 //		STA	HDMABF,X	; h-dma (h),(l) set
;// 03.09.13 //;
;// 03.09.13 //		MEM8
;// 03.09.13 //		IDX8
;// 03.09.13 //		SEP	#00110000B
;// 03.09.13 //		STZ	<WORK1		; next y-pos set
;// 03.09.13 //		INC	<WORK0
;// 03.09.13 //		LDA	WNYPL0		; window end ?
;// 03.09.13 //		CMP	<WORK0
;// 03.09.13 //		BNE	ITMW200
;// 03.09.13 //;
;// 03.09.13 //;
;// 03.09.13 //		RTS
;// 03.09.13 //;
;
;
;
;
		NOLIST
;
;;;;;
;;;;;********************************************************************
;;;;;*			Over lap								(OVRLAP)		*
;;;;;********************************************************************
;;;;OVRLAP		EQU		$
;;;;			MEM8
;;;;			SEP		#00100000B			; memory 8bit mode
;;;;;
;;;;			LDA		<FCNT
;;;;			AND		#00000011B
;;;;			BEQ		OVLP40				; change ?
;;;;;										; no
;;;;			RTL
;;;;;
;;;;OVLP40		EQU		$
;;;;			LDA		#LOW  CGCHDT
;;;;			STA		<WORKD
;;;;			LDA		#HIGH CGCHDT
;;;;			STA		<WORKE
;;;;			LDA		#BANK CGCHDT
;;;;			STA		<WORKF
;;;;;
;;;;			MEM16
;;;;			IDX16
;;;;			REP		#00110000B			; memory,index 16bit mode
;;;;;
;;;;			LDA		!CCNGCT
;;;;			AND		#0000FH
;;;;			ASL		A
;;;;			TAX
;;;;			LDA		>CCHKDT,X
;;;;			STA		<WORKC				; (workc) <-- check data
;;;;;
;;;;			LDX		#00000H
;;;;			LDY		!CCNGCT
;;;;			CPY		#00010H
;;;;			BCC		OVLP100				;
;;;;;										;
;;;;			INC		<WORKD
;;;;			INC		<WORKD
;;;;OVLP100		EQU		$
;;;;			LDA		!CGRAM+0A0H,X
;;;;			AND		#0000000000011111B
;;;;			ASL		A
;;;;			ASL		A
;;;;			STA		<WORK0				; (work0) <-- RED data
;;;;			LDA		!CGRAM+0A0H,X
;;;;			AND		#0000001111100000B
;;;;			LSR		A
;;;;			LSR		A
;;;;			LSR		A
;;;;			STA		<WORK2				; (work2) <-- GREEN data
;;;;			LDA		!CGRAM+0A0H,X
;;;;			AND		#0111110000000000B
;;;;			XBA
;;;;			STA		<WORK4				; (work4) <-- BLUE data
;;;;;
;;;;			LDA		!CGWORK+0A0H,X
;;;;			AND		#0000000000011111B
;;;;			STA		<WORK6				; (work6) <-- RED data
;;;;			LDA		!CGWORK+0A0H,X
;;;;			AND		#0000001111100000B
;;;;			STA		<WORK8				; (work8) <-- GREEN data
;;;;			LDA		!CGWORK+0A0H,X
;;;;			AND		#0111110000000000B
;;;;			STA		<WORKA				; (workA) <-- BLUE data
;;;;;
;;;;			LDY		<WORK0
;;;;			LDA		[<WORKD],Y
;;;;			AND		<WORKC
;;;;			BNE		OVLP120				; CG. change ?
;;;;;										; yes
;;;;			INC		<WORK6
;;;;OVLP120		EQU		$
;;;;			LDY		<WORK2
;;;;			LDA		[<WORKD],Y
;;;;			AND		<WORKC
;;;;			BNE		OVLP140				; CG. change ?
;;;;;										; yes
;;;;			LDA		<WORK8
;;;;			CLC
;;;;			ADC		#0000000000100000B
;;;;			STA		<WORK8
;;;;OVLP140		EQU		$
;;;;			LDY		<WORK4
;;;;			LDA		[<WORKD],Y
;;;;			AND		<WORKC
;;;;			BNE		OVLP160				; CG. change ?
;;;;;										; yes
;;;;			LDA		<WORKA
;;;;			CLC
;;;;			ADC		#0000010000000000B
;;;;			STA		<WORKA
;;;;OVLP160		EQU		$
;;;;			LDA		<WORK6
;;;;			ORA		<WORK8
;;;;			ORA		<WORKA
;;;;			STA		!CGWORK+0A0H,X						
;;;;;
;;;;OVLP200		EQU		$
;;;;			LDA		!CGRAM+040H,X
;;;;			AND		#0000000000011111B
;;;;			ASL		A
;;;;			ASL		A
;;;;			STA		<WORK0				; (work0) <-- RED data
;;;;			LDA		!CGRAM+040H,X
;;;;			AND		#0000001111100000B
;;;;			LSR		A
;;;;			LSR		A
;;;;			LSR		A
;;;;			STA		<WORK2				; (work2) <-- GREEN data
;;;;			LDA		!CGRAM+040H,X
;;;;			AND		#0111110000000000B
;;;;			XBA
;;;;			STA		<WORK4				; (work4) <-- BLUE data
;;;;;
;;;;			LDA		!CGWORK+040H,X
;;;;			AND		#0000000000011111B
;;;;			STA		<WORK6				; (work6) <-- RED data
;;;;			LDA		!CGWORK+040H,X
;;;;			AND		#0000001111100000B
;;;;			STA		<WORK8				; (work8) <-- GREEN data
;;;;			LDA		!CGWORK+040H,X
;;;;			AND		#0111110000000000B
;;;;			STA		<WORKA				; (workA) <-- BLUE data
;;;;;
;;;;			LDY		<WORK0
;;;;			LDA		[<WORKD],Y
;;;;			AND		<WORKC
;;;;			BNE		OVLP220				; CG. change ?
;;;;;										; yes
;;;;			DEC		<WORK6
;;;;OVLP220		EQU		$
;;;;			LDY		<WORK2
;;;;			LDA		[<WORKD],Y
;;;;			AND		<WORKC
;;;;			BNE		OVLP240				; CG. change ?
;;;;;										; yes
;;;;			LDA		<WORK8
;;;;			SEC
;;;;			SBC		#0000000000100000B
;;;;			STA		<WORK8
;;;;OVLP240		EQU		$
;;;;			LDY		<WORK4
;;;;			LDA		[<WORKD],Y
;;;;			AND		<WORKC
;;;;			BNE		OVLP260				; CG. change ?
;;;;;										; yes
;;;;			LDA		<WORKA
;;;;			SEC
;;;;			SBC		#0000010000000000B
;;;;			STA		<WORKA
;;;;OVLP260		EQU		$
;;;;			LDA		<WORK6
;;;;			ORA		<WORK8
;;;;			ORA		<WORKA
;;;;			STA		!CGWORK+40H,X
;;;;;
;;;;			INX
;;;;			INX
;;;;			CPX		#00060H
;;;;			BEQ		OVLP400				; end ?
;;;;;										; no
;;;;			JMP		>OVLP100
;;;;;
;;;;OVLP400		EQU		$
;;;;			INC		!CCNGCT
;;;;			LDA		!CCNGCT
;;;;			CMP		#0001FH
;;;;			BNE		OVLP440				; end ?
;;;;;										; yes
;;;;			MEM8
;;;;			SEP		#00100000B			; memory 8bit mode
;;;;;
;;;;			INC		<GAMEMD				; CG. change end
;;;;OVLP440		EQU		$
;;;;			MEM8
;;;;			IDX8
;;;;			SEP		#00110000B			; memory,index 8bit mode
;;;;;
;;;;			INC		<CCNGFG				; CG. VMA flag on
;;;;			RTL
;;;;;
;;;;;
;;;;;
;;;;;
;;;;;********************************************************************
;;;;;*			BG. reset								(RSBGWT)		*
;;;;;********************************************************************
;;;;RSBGWT		EQU		$
;;;;			LDA		!SCRLMD
;;;;			BNE		RBGW100				; -0 ?
;;;;;										; yes
;;;;;;;;			LDA		<ROOMPT
;;;;			BEQ		RBGW20				;
;;;;;										;
;;;;			MEM16
;;;;			IDX16
;;;;			REP		#00110000B			; memory,index 16bit mode
;;;;;
;;;;			PHB							; (DBR) push
;;;;			LDA		#00FFH
;;;;			LDX		#0E000H
;;;;			LDY		#CGRAM
;;;;			MVN		#!0B00H
;;;;			PLB							; (DBR) pull
;;;;			BRA		RBGW30
;;;;;
;;;;RBGW20		EQU		$
;;;;			REP		#00110000B			; memory,index 16bit mode
;;;;;
;;;;			PHB							; (DBR) push
;;;;			LDA		#00FFH
;;;;			LDX		#0D000H
;;;;			LDY		#CGRAM
;;;;			MVN		#!0B00H
;;;;			PLB							; (DBR) pull
;;;;RBGW30		EQU		$
;;;;			PHB							; (DBR) push
;;;;			LDA		#009FH
;;;;			LDX		#CGRAM
;;;;			LDY		#CGWORK
;;;;			MVN		#!0000H
;;;;			PLB							; (DBR) pull
;;;;;
;;;;			LDX		#005EH
;;;;RBGW40		EQU		$
;;;;			STZ		!CGWORK+0A0H,X
;;;;			DEX
;;;;			DEX
;;;;			BPL		RBGW40				;
;;;;;										;
;;;;			MEM8
;;;;			IDX8
;;;;			SEP		#00110000B			; memory,index 8bit mode
;;;;;
;;;;			INC		<CCNGFG
;;;;;
;;;;;;;;;;;;			JSR		NXRMST				; next room data buffer set
;;;;;;;;;;;;			LDA		#01H
;;;;;;;;;;;;			STA		<BGWTFG
;;;;			INC		!SCRLMD
;;;;			RTS
;;;;;
;;;;RBGW100		EQU		$
;;;;;;;;			LDA		<ROOMPT
;;;;;;;;			PHA
;;;;;;;;			EOR		#03H
;;;;;;;;			STA		<ROOMPT
;;;;;;;;;;;;			JSR		NXRMST				; next room data buffer set
;;;;;;;;			PLA
;;;;;;;;			STA		<ROOMPT
;;;;;;;;;;;;			LDA		#02H
;;;;;;;;;;;;			STA		<BGWTFG
;;;;			STZ		!SCRLMD
;;;;			STZ		<GAMEMD
;;;;			RTS
;;;;;
;;;;;
;;;;;
;;;;;********************************************************************
;;;;;*			Window move								(WDMOVE)		*
;;;;;********************************************************************
;;;;WDWCDT		EQU		$					; window check data
;;;;			BYTE	000H,040H,080H,0C0H
;;;;WDWPDT		EQU		$
;;;;			BYTE	000H,003H,006H,009H
;;;;;
;;;;;
;;;;WDMOVE		EQU		$
;;;;			LDA		#40H
;;;;			STA		!WINDOW+3
;;;;			STA		!WINDOW+6
;;;;			STA		!WINDOW+9
;;;;;
;;;;			LDA		<WDWCNT
;;;;			SEC
;;;;			SBC		#04H
;;;;			STA		<WDWCNT
;;;;			BNE		WDMV20				;
;;;;;										;
;;;;			STZ		<GAMEMD
;;;;			STZ		<WDWFLG
;;;;WDMV20		EQU		$
;;;;			AND		#11000000B
;;;;			CLC
;;;;			ROL		A
;;;;			ROL		A
;;;;			ROL		A
;;;;			TAX
;;;;			LDA		<WDWCNT
;;;;			SEC
;;;;			SBC		!WDWCDT,X
;;;;			BNE		WDMV40				;
;;;;;										;
;;;;			LDA		#01H
;;;;WDMV40		EQU		$
;;;;			LDY		!WDWPDT,X
;;;;			STA		!WINDOW,Y
;;;;;
;;;;			LDA		#01H
;;;;WDMV60		EQU		$
;;;;			CPY		#09H
;;;;			BCS		WDMV80				;
;;;;;										;
;;;;			INY
;;;;			INY
;;;;			INY
;;;;			STA		!WINDOW,Y
;;;;			BRA		WDMV60
;;;;;
;;;;WDMV80		EQU		$
;;;;			RTS
;;;;;
;
;// 02.11.30 //;
;// 02.11.30 //;
;// 02.11.30 //;
;// 02.11.30 //;
;// 02.11.30 //;************************************************************************
;// 02.11.30 //;*		RED CG. change				(RCGCNG)	*
;// 02.11.30 //;************************************************************************
;// 02.11.30 //RCGCNG		EQU	$
;// 02.11.30 //		MEM16
;// 02.11.30 //		REP	#00100000B	; memory 16bit mode
;// 02.11.30 //;
;// 02.11.30 //		LDA	#0000000000000110B
;// 02.11.30 //		BRA	RGBC20
;// 02.11.30 //;
;// 02.11.30 //;
;// 02.11.30 //;************************************************************************
;// 02.11.30 //;*		GREEN CG. change			(GCGCNG)	*
;// 02.11.30 //;************************************************************************
;// 02.11.30 //GCGCNG		EQU	$
;// 02.11.30 //		MEM16
;// 02.11.30 //		REP	#00100000B	; memory 16bit mode
;// 02.11.30 //;
;// 02.11.30 //		LDA	#0000000000000101B
;// 02.11.30 //		BRA	RGBC20
;// 02.11.30 //;
;// 02.11.30 //;************************************************************************
;// 02.11.30 //;*		BLUE CG. change				(BCGCNG)	*
;// 02.11.30 //;************************************************************************
;// 02.11.30 //BCGCNG		EQU	$
;// 02.11.30 //		MEM16
;// 02.11.30 //		REP	#00100000B	; memory 16bit mode
;// 02.11.30 //;
;// 02.11.30 //		LDA	#0000000000000011B
;// 02.11.30 //RGBC20		EQU	$
;// 02.11.30 //		STA	<WORK0		; (work0) <-- check data
;// 02.11.30 //RGBC40		EQU	$
;// 02.11.30 //		MEM16
;// 02.11.30 //		IDX16
;// 02.11.30 //		REP	#00110000B	; memory,index 16bit mode
;// 02.11.30 //;
;// 02.11.30 //		LDA	>CCNGFG
;// 02.11.30 //		TAX
;// 02.11.30 //		LDA	CCNGD0,X
;// 02.11.30 //		STA	<WORK6
;// 02.11.30 //		LDA	CCNGD1,X
;// 02.11.30 //		STA	<WORK8
;// 02.11.30 //		LDA	CCNGD2,X
;// 02.11.30 //		STA	<WORKA		; (work6,8,A) <-- CG. check data
;// 02.11.30 //;
;// 02.11.30 //		LDX	#CGCHDT
;// 02.11.30 //		LDA	>CCNGCT
;// 02.11.30 //		CMP	#00010H
;// 02.11.30 //		BCC	RGBC60		;
;// 02.11.30 //;					;
;// 02.11.30 //		INX
;// 02.11.30 //		INX
;// 02.11.30 //RGBC60		EQU	$
;// 02.11.30 //		STX	<DTBFWK		; (L),(H) set
;// 02.11.30 //;
;// 02.11.30 //		AND	#0000FH
;// 02.11.30 //		ASL	A
;// 02.11.30 //		TAX
;// 02.11.30 //		LDA	BITCD0,X
;// 02.11.30 //		STA	<WORKC		; (workC) <-- check data
;// 02.11.30 //;
;// 02.11.30 //		LDA	>CCNGCT
;// 02.11.30 //		ASL	A
;// 02.11.30 //		PHA			; (A) push
;// 02.11.30 //		STA	<WORKE
;// 02.11.30 //		LDX	#CGCHDT
;// 02.11.30 //		CMP	#00010H
;// 02.11.30 //		BCC	RGBC80		;
;// 02.11.30 //;					;
;// 02.11.30 //		INX
;// 02.11.30 //		INX
;// 02.11.30 //RGBC80		EQU	$
;// 02.11.30 //		STX	<CGBFWK		; (L),(H) set
;// 02.11.30 //;
;// 02.11.30 //		AND	#0000FH
;// 02.11.30 //		ASL	A
;// 02.11.30 //		TAX
;// 02.11.30 //		LDA	BITCD0,X
;// 02.11.30 //		STA	<WORK0		; (work0) <-- check data
;// 02.11.30 //		PLA			; (A) pull
;// 02.11.30 //		INC	A
;// 02.11.30 //		AND	#0000FH
;// 02.11.30 //		ASL	A
;// 02.11.30 //		TAX
;// 02.11.30 //		LDA	BITCD0,X
;// 02.11.30 //		STA	<WORK2		; (work2) <-- check data
;// 02.11.30 //;
;// 02.11.30 //		PHB
;// 02.11.30 //		PHK
;// 02.11.30 //		PLB			; (DBR) set
;// 02.11.30 //;
;// 02.11.30 //		LDX	#00040H		; (X) <-- CG. change start point
;// 02.11.30 //RGBC100		EQU	$
;// 02.11.30 //		LDA	>CGWORK+000H,X
;// 02.11.30 //		STA	<WORK4		; (WORK4) <-- change CG. data
;// 02.11.30 //;
;// 02.11.30 //		LDA	<WORKE
;// 02.11.30 //		CMP	#00020H
;// 02.11.30 //		BCS	RGBC150		;
;// 02.11.30 //;					;
;// 02.11.30 //		LDA	>CGRAM+000H,X
;// 02.11.30 //		AND	#0000000000011111B
;// 02.11.30 //		ASL	A
;// 02.11.30 //		ASL	A
;// 02.11.30 //		TAY			; (Y) <-- RED data
;// 02.11.30 //		LDA	(<CGBFWK),Y
;// 02.11.30 //		AND	<WORK0
;// 02.11.30 //		BNE	RGBC120		; CG. change ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	<WORK4
;// 02.11.30 //;// 02.06.14 //		CLC
;// 02.11.30 //		ADC	<WORK6
;// 02.11.30 //		STA	<WORK4
;// 02.11.30 //RGBC120		EQU	$
;// 02.11.30 //		LDA	<WORKE
;// 02.11.30 //		CMP	#0001EH
;// 02.11.30 //		BCS	RGBC130		;
;// 02.11.30 //;					;
;// 02.11.30 //		LDA	(<CGBFWK),Y
;// 02.11.30 //		AND	<WORK2
;// 02.11.30 //		BNE	RGBC130		; CG. change ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	<WORK4
;// 02.11.30 //		CLC
;// 02.11.30 //		ADC	<WORK6
;// 02.11.30 //		STA	<WORK4
;// 02.11.30 //RGBC130		EQU	$
;// 02.11.30 //		LDA	>CGRAM+000H,X
;// 02.11.30 //		AND	#0000001111100000B
;// 02.11.30 //		LSR	A
;// 02.11.30 //		LSR	A
;// 02.11.30 //		LSR	A
;// 02.11.30 //		TAY			; (Y) <-- GREEN data
;// 02.11.30 //		LDA	(<CGBFWK),Y
;// 02.11.30 //		AND	<WORK0
;// 02.11.30 //		BNE	RGBC140		; CG. change ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	<WORK4
;// 02.11.30 //;// 02.06.14 //		CLC
;// 02.11.30 //		ADC	<WORK8
;// 02.11.30 //		STA	<WORK4
;// 02.11.30 //RGBC140		EQU	$
;// 02.11.30 //		LDA	<WORKE
;// 02.11.30 //		CMP	#0001EH
;// 02.11.30 //		BCS	RGBC150		;
;// 02.11.30 //;					;
;// 02.11.30 //		LDA	(<CGBFWK),Y
;// 02.11.30 //		AND	<WORK2
;// 02.11.30 //		BNE	RGBC150		; CG. change ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	<WORK4
;// 02.11.30 //		CLC
;// 02.11.30 //		ADC	<WORK8
;// 02.11.30 //		STA	<WORK4
;// 02.11.30 //RGBC150		EQU	$
;// 02.11.30 //		LDA	>CGRAM+001H,X
;// 02.11.30 //		AND	#0000000001111100B
;// 02.11.30 //		TAY			; (Y) <-- BLUE data
;// 02.11.30 //		LDA	(<DTBFWK),Y
;// 02.11.30 //		AND	<WORKC
;// 02.11.30 //		BNE	RGBC160		; CG. change ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	<WORK4
;// 02.11.30 //		CLC
;// 02.11.30 //		ADC	<WORKA
;// 02.11.30 //		STA	<WORK4
;// 02.11.30 //RGBC160		EQU	$
;// 02.11.30 //		LDA	<WORK4
;// 02.11.30 //		STA	>CGWORK+000H,X
;// 02.11.30 //		INX
;// 02.11.30 //		INX
;// 02.11.30 //		CPX	#00100H
;// 02.11.30 //		BEQ	RGBC260		; end ?
;// 02.11.30 //;					; no
;// 02.11.30 //		JMP	RGBC100
;// 02.11.30 //;
;// 02.11.30 //RGBC260		EQU	$
;// 02.11.30 //		PLB			; (DBR) reset
;// 02.11.30 //;
;// 02.11.30 //		LDA	>CCNGCT
;// 02.11.30 //		INC	A
;// 02.11.30 //		STA	>CCNGCT
;// 02.11.30 //		CMP	#0001FH
;// 02.11.30 //		BNE	RGBC380		; end ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	>CCNGFG
;// 02.11.30 //		EOR	#00002H
;// 02.11.30 //		STA	>CCNGFG
;// 02.11.30 //		LDA	#00000H
;// 02.11.30 //		STA	>CCNGCT
;// 02.11.30 //;
;// 02.11.30 //		MEM8
;// 02.11.30 //		SEP	#00100000B	; memory 8bit mode
;// 02.11.30 //;
;// 02.11.30 //		INC	<JRSBPT		; CG. change end
;// 02.11.30 //RGBC380		EQU	$
;// 02.11.30 //		MEM8
;// 02.11.30 //		IDX8
;// 02.11.30 //		SEP	#00110000B	; memory,index 8bit mode
;// 02.11.30 //;
;// 02.11.30 //		INC	<CGVMAF		; CG. VMA flag on
;// 02.11.30 //		RTL
;// 02.11.30 //;
;// 02.11.30 //;
;
;
;
;
;// 02.06.01 //CGCHNG		EQU	$
;// 02.06.01 //CGCNG0		EQU	$
;// 02.06.01 //		MEM8
;// 02.06.01 //		SEP	#00100000B	; memory 8bit mode
;// 02.06.01 //;
;// 02.06.01 //		LDA	<FCNT
;// 02.06.01 //		LSR	A
;// 02.06.01 //		BCC	CCNG40		; change ?
;// 02.06.01 //;					; no
;// 02.06.01 //		RTS
;// 02.06.01 //;
;// 02.06.01 //CGCNG1		EQU	$
;// 02.06.01 //		MEM8
;// 02.06.01 //		SEP	#00100000B	; memory 8bit mode
;// 02.06.01 //;
;// 02.06.01 //CCNG40		EQU	$
;// 02.06.01 //		LDA	#BANK CGCHDT
;// 02.06.01 //		STA	<DTBFWK+2	; (B) set
;// 02.06.01 //;
;// 02.06.01 //		MEM16
;// 02.06.01 //		IDX16
;// 02.06.01 //		REP	#00110000B	; memory,index 16bit mode
;// 02.06.01 //;
;// 02.06.01 //		LDA	#CGCHDT
;// 02.06.01 //		STA	<DTBFWK		; (L),(H) set
;// 02.06.01 //;
;// 02.06.01 //		LDA	>CCNGCT
;// 02.06.01 //		AND	#0000FH
;// 02.06.01 //		ASL	A
;// 02.06.01 //		TAX
;// 02.06.01 //		LDA	BITCD0,X
;// 02.06.01 //		STA	<WORKC		; (workc) <-- check data
;// 02.06.01 //;
;// 02.06.01 //		LDX	#00040H
;// 02.06.01 //		LDA	>CCNGCT
;// 02.06.01 //		CMP	#00010H
;// 02.06.01 //		BCC	CCNG100		;
;// 02.06.01 //;					;
;// 02.06.01 //		INC	<DTBFWK
;// 02.06.01 //		INC	<DTBFWK
;// 02.06.01 //CCNG100		EQU	$
;// 02.06.01 //		STX	<WORKE
;// 02.06.01 //;
;// 02.06.01 //		LDA	>CGRAM+000H,X
;// 02.06.01 //		AND	#0000000000011111B
;// 02.06.01 //		ASL	A
;// 02.06.01 //		ASL	A
;// 02.06.01 //		STA	<WORK0		; (work0) <-- RED data
;// 02.06.01 //		LDA	>CGRAM+000H,X
;// 02.06.01 //		AND	#0000001111100000B
;// 02.06.01 //		LSR	A
;// 02.06.01 //		LSR	A
;// 02.06.01 //		LSR	A
;// 02.06.01 //		STA	<WORK2		; (work2) <-- GREEN data
;// 02.06.01 //		LDA	>CGRAM+000H,X
;// 02.06.01 //		AND	#0111110000000000B
;// 02.06.01 //		XBA
;// 02.06.01 //		STA	<WORK4		; (work4) <-- BLUE data
;// 02.06.01 //;
;// 02.06.01 //		LDA	>CGWORK+000H,X
;// 02.06.01 //		AND	#0000000000011111B
;// 02.06.01 //		STA	<WORK6		; (work6) <-- RED data
;// 02.06.01 //		LDA	>CGWORK+000H,X
;// 02.06.01 //		AND	#0000001111100000B
;// 02.06.01 //		STA	<WORK8		; (work8) <-- GREEN data
;// 02.06.01 //		LDA	>CGWORK+000H,X
;// 02.06.01 //		AND	#0111110000000000B
;// 02.06.01 //		STA	<WORKA		; (workA) <-- BLUE data
;// 02.06.01 //;
;// 02.06.01 //		LDA	>CCNGFG
;// 02.06.01 //		TAX
;// 02.06.01 //		LDY	<WORK0
;// 02.06.01 //		LDA	[<DTBFWK],Y
;// 02.06.01 //		AND	<WORKC
;// 02.06.01 //		BNE	CCNG120		; CG. change ?
;// 02.06.01 //;					; yes
;// 02.06.01 //		LDA	<WORK6
;// 02.06.01 //		CLC
;// 02.06.01 //		ADC	CCNGD0,X
;// 02.06.01 //		STA	<WORK6
;// 02.06.01 //CCNG120		EQU	$
;// 02.06.01 //		LDY	<WORK2
;// 02.06.01 //		LDA	[<DTBFWK],Y
;// 02.06.01 //		AND	<WORKC
;// 02.06.01 //		BNE	CCNG140		; CG. change ?
;// 02.06.01 //;					; yes
;// 02.06.01 //		LDA	<WORK8
;// 02.06.01 //		CLC
;// 02.06.01 //		ADC	CCNGD1,X
;// 02.06.01 //		STA	<WORK8
;// 02.06.01 //CCNG140		EQU	$
;// 02.06.01 //		LDY	<WORK4
;// 02.06.01 //		LDA	[<DTBFWK],Y
;// 02.06.01 //		AND	<WORKC
;// 02.06.01 //		BNE	CCNG160		; CG. change ?
;// 02.06.01 //;					; yes
;// 02.06.01 //		LDA	<WORKA
;// 02.06.01 //		CLC
;// 02.06.01 //		ADC	CCNGD2,X
;// 02.06.01 //		STA	<WORKA
;// 02.06.01 //CCNG160		EQU	$
;// 02.06.01 //		LDX	<WORKE
;// 02.06.01 //		LDA	<WORK6
;// 02.06.01 //		ORA	<WORK8
;// 02.06.01 //		ORA	<WORKA
;// 02.06.01 //		STA	>CGWORK+000H,X
;// 02.06.01 //;
;// 02.06.01 //		INX
;// 02.06.01 //		INX
;// 02.06.01 //		CPX	#001B0H
;// 02.06.01 //		BEQ	CCNG310		; ken CG. ?
;// 02.06.01 //;					; no
;// 02.06.01 //		CPX	#001E0H
;// 02.06.01 //		BNE	CCNG320		; tate CG. ?
;// 02.06.01 //;					; yes
;// 02.06.01 //CCNG310		EQU	$
;// 02.06.01 //		TXA
;// 02.06.01 //		CLC
;// 02.06.01 //		ADC	#00010H
;// 02.06.01 //		TAX
;// 02.06.01 //CCNG320		EQU	$
;// 02.06.01 //		CPX	#001E0H
;// 02.06.01 //		BEQ	CCNG340		; end ?
;// 02.06.01 //;					; no
;// 02.06.01 //		BRL	CCNG100
;// 02.06.01 //;
;// 02.06.01 //CCNG340		EQU	$
;// 02.06.01 //		LDA	>CCNGCT
;// 02.06.01 //		INC	A
;// 02.06.01 //		STA	>CCNGCT
;// 02.06.01 //		CMP	#0001FH
;// 02.06.01 //		BNE	CCNG380		; end ?
;// 02.06.01 //;					; yes
;// 02.06.01 //		LDA	>CCNGFG
;// 02.06.01 //		EOR	#00002H
;// 02.06.01 //		STA	>CCNGFG
;// 02.06.01 //		LDA	#00000H
;// 02.06.01 //		STA	>CCNGCT
;// 02.06.01 //;
;// 02.06.01 //		MEM8
;// 02.06.01 //		SEP	#00100000B	; memory 8bit mode
;// 02.06.01 //;
;// 02.06.01 //		INC	<JRSBPT		; CG. change end
;// 02.06.01 //CCNG380		EQU	$
;// 02.06.01 //		MEM8
;// 02.06.01 //		IDX8
;// 02.06.01 //		SEP	#00110000B	; memory,index 8bit mode
;// 02.06.01 //;
;// 02.06.01 //		INC	<CGVMAF		; CG. VMA flag on
;// 02.06.01 //		RTS
		LIST
;
;
		END
