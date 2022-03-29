;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.09.27(FRI)
;
;--------------------------------------------------------------------
;
		ORG	0AE0C0H
;
;=============================================== (zel_dmap) ==========
		GLB	MAPDSP
;=============================================== (zel_main) ==========
		EXT	JSRSUBL,VRAMCL,VRAMCL1,BLANKING
;=============================================== (zel_vma) ===========
		EXT	WBUFS0,WBUFS1,DJBGWT
;
		EXT	VT01,VT09,bgw8
;=============================================== (zel_dsub) ==========
		EXT	MPDP000,MPDP400,MPDP900,MPDPC00
;=============================================== (zel_data0) =========
		EXT	BITCD0
;=============================================== (zel_init) ==========
		EXT	SND1CHK,TYCNCST,SWYKCNG
;=============================================== (zel_char0) =========
		EXT	CHSCHNG
;=============================================== (zel_char1) =========
		EXT	MAPCGSET,MAPOBSET,B3CGSET
;=============================================== (zel_char2) =========
		EXT	PLCGCN0
;=============================================== (zel_bg3) ===========
		EXT	MTRON2
;=============================================== (zel_comn) ==========
		EXT	LGTWPMV
;=====================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;
;************************************************************************
;*		Map display				(MAPDSP)	*
;************************************************************************
MAPDSP		EQU	$
		LDA	!MAPDMD
		JSL	>JSRSUBL
		LWORD	MPDP000		; 0 : fade out
		LWORD	MPDP200		; 1 : init. display
		LWORD	MPDP400		; 2 : fade in
		LWORD	MPDP600		; 3 : play
		LWORD	MPDP700		; 4 : scroll
		LWORD	MPDP900		; 5 : fade out
		LWORD	MPDP800		; 6 : game BG. display
		LWORD	MPDPB00		; 7 : character reset
		LWORD	MPDPC00		; 8 : fade in
;
;
;
;
;---------------------------------------; init. display
;
;
MPDPTBL		EQU	$
		WORD	DMAPWT000		; 0 : char irekae
		WORD	DJLVWT			; 1 : danjon level write
; '91/ 7/ 2 [TUE] ::			WORD	DMAPWT100		; 1 : map waku write
		WORD	DMAPWT200		; 2 : danmenzu write
		WORD	DMAPWT300		; 3 : meiro write
		WORD	DMAPWT400		; 4 : obj initial set
;
MPDP200		EQU	$
;;;		JSL	>VRAMCL1	; VCL
;
;;;		PHB
;;;		PHK
;;;		PLB			; (DBR) set
;
;;;		MEM16
;;;		IDX16
;;;		REP	#00110000B	; memory,index 16bit mode
;
;;;		LDX	#0007EH		;OAMSB cls
MPINIT0		EQU	$
;;;		STZ	OAMSB,X
;;;		DEX
;;;		DEX
;;;		BPL	MPINIT0
;;;;
;;;		LDA	#00F9EH		;MAP NEXT BG POINT SET
;;;		STA	MAPBGP
;;;;
;;;		MEM8
;;;		IDX8
;;;		SEP	#00110000B	; memory,index 8bit mode
;;;;
;;;		STZ	MAPCFG		;2 OR 3 MAP KAZU CLS(3 KO)
;;;;
;;;		MEM8			;INITIAL TOP
;;;		IDX16
;;;		REP	#00010000B
;;;		LDA	!FLORNO
;;;;		LSR	A
;;;		INC	A
;;;;		STA	MAPLEV
;;;;		LDA	!FLORNO
;;;;		AND	#10000000B
;;;;		EOR	MAPLEV
;;;		STA	MAPLEV
;;;		MEM16
;;;		IDX16
;;;		REP	#00110000B
;;;		LDA	!DJNNO
;;;		AND	#000FFH
;;;;		ASL	A
;;;		TAX
;;;		MEM8
;;;		SEP	#00100000B
;;;;;;		LDA	TOWERD0,X
;;;		DEC	A
;;;		CMP	MAPLEV
;;;		BMI	MPINIT11
;;;		MEM16
;;;		IDX16
;;;		REP	#00110000B
;;;		LDA	#00F9EH
;;;		STA	MAPWTA
;;;		MEM8
;;;		IDX8
;;;		SEP	#00110000B
;;;		JSR	MAPWKST1
;;;		JSR	MAPWKST2
;;;;
MPINIT11	EQU	$
;;;		MEM8			;INITIAL MIDEL
;;;		IDX16
;;;		REP	#00010000B
;;;		LDA	!FLORNO
;;;;		LSR	A
;;;;		STA	MAPLEV
;;;;		LDA	!FLORNO
;;;;		AND	#10000000B
;;;;		EOR	MAPLEV
;;;		STA	MAPNOW		;MIDEL POINT SET
;;;		STA	MAPLEV
;;;		MEM16
;;;		IDX16
;;;		REP	#00110000B
;;;		LDA	#0025EH
;;;		STA	MAPWTA
;;;		MEM8
;;;		IDX8
;;;		SEP	#00110000B
;;;;;;		JSR	MAPWKST1
;;;;;;		JSR	MAPWKST2
;;;;
;;;		MEM8			;INITIAL BOTOM
;;;		IDX16
;;;		REP	#00010000B
;;;		LDA	!FLORNO
;;;;		LSR	A
;;;		DEC	A
;;;;		STA	MAPLEV
;;;;		LDA	!FLORNO
;;;;		AND	#10000000B
;;;;;;;		EOR	MAPLEV
;;;		STA	MAPLEV
;;;		MEM16
;;;		IDX16
;;;		REP	#00110000B
;;;		LDA	!DJNNO
;;;		AND	#000FFH
;;;;		ASL	A
;;;		TAX
;;;		MEM8
;;;		SEP	#00100000B
;;;;;;		LDA	TOWERD0+1,X
;;;		CLC
;;;		ADC	MAPLEV
;;;		BMI	MPINIT12
;;;		MEM16
;;;		IDX16
;;;		REP	#00110000B
;;;		LDA	#0051EH
;;;		STA	MAPWTA
;;;		MEM8
;;;		IDX8
;;;;;;		SEP	#00110000B
;;;		JSR	MAPWKST1
;;;		JSR	MAPWKST2
MPINIT12	EQU	$
;
;;;		MEM8
;;;		IDX8
;;;		SEP	#00110000B
;;;;
;;;		PLB			; (DBR) reset
;;;;
;// 03.01.31 //		LDA	!CHARBK
;// 03.01.31 //		STA	>BKCHBK
;;;		LDA	!CHIKNO
;;;		STA	>BKCHNO
;;;		LDA	!ROBJCPT
;;;		STA	>BKROJC
;;;		LDA	!RBGCPT
;;;		STA	>BKRBGC
;;;		LDA	<DPMAIN
;;;		STA	>BKDPMN
;;;		LDA	<DPSUB
;;;		STA	>BKDPSB		; BG. chara,DPMAIN,DPSUB push
;;;;
;;;		LDA	#020H
;// 03.01.31 //		STA	!CHARBK
;;;		STA	!CHIKNO
;;;		LDA	#030H
;;;		STA	!ROBJCPT
;;;		STA	!RBGCPT
;;;		LDA	#00010111B
;;;		STA	<DPMAIN
;;;		STZ	<DPSUB		; map char. flag set
;;;;
;;;		LDA	#00000010B
;;;		STA	2101H
;;;		JSL	>CHSCHNG	; MAP character set
;;;;
;;;		LDA	#002H
;;;		STA	!CGSTPT+1	; (CGWORK) set
;;;		JSL	>MAPCGSET	; MAP CG. BG. set
;;;;;;		JSL	>MAPOBSET	;         OBJ set
;;;		LDA	#001H
;;;		STA	!BG3BGC
;;;		JSL	>B3CGSET	;         BG.3 set
;;;		INC	<CGVMAF
;;;;
;;;;;;		JSR	MPB3ST		; map BG.3 set
;;;;
;;;;;;		JSR	MPB1ST		; map BG.1 set
;;;;
;;;;;;		JSR	TOWERST		; tower set
;;;;
;
;
;
		LDA	!MAPCFG
		ASL	A
		TAX
		JMP	(MPDPTBL,X)
;
;
DMAPWT000	EQU	$
		LDA	<WD420C
		PHA			; (A) push
		STZ	420CH
		STZ	<WD420C
;
		LDA	!CHIKNO
		STA	>BKCHNO
		LDA	!ROBJCPT
		STA	>BKROJC
		LDA	!RBGCPT
		STA	>BKRBGC
		LDA	<DPMAIN
		STA	>BKDPMN
		LDA	<DPSUB
		STA	>BKDPSB		; BG. chara,DPMAIN,DPSUB push
;
		LDA	#020H
;// 03.01.31 //		STA	!CHARBK
		STA	!CHIKNO
;
		LDA	!DJNNO
		LSR	A
		ORA	#080H
		STA	!ROBJCPT
		LDA	#040H
		STA	!RBGCPT
		LDA	#00010110B
		STA	<DPMAIN
		LDA	#00000001B
		STA	<DPSUB		; map char. flag set
;
		JSL	>VRAMCL1	; VCL
;
;// 03.06.06 //		LDA	#00000010B
;// 03.06.06 //		STA	2101H
		JSL	>CHSCHNG	; MAP character set
;
		LDA	#002H
		STA	!CGSTPT+1	; (CGWORK) set
		JSL	>MAPCGSET	; MAP CG. BG. set
		JSL	>MAPOBSET	;         OBJ set
		LDA	#001H
		STA	!BG3BGC
		JSL	>B3CGSET	;         BG.3 set
		JSL	>PLCGCN0	; player CG. reset
		INC	<CGVMAF
		INC	!MAPCFG
;
		PLA			; (A) pull
		STA	<WD420C
;
		LDA	#VT09
		STA	<VRFLG
		STA	!GMAPDF
		RTL
;
;
;--------------------------------------------------------
;-	danjon level level write			-
;--------------------------------------------------------
LEVELDT	EQU	$
;------ LEVEL_ -------------------
	BYTE	060H,084H,000H,00BH
	WORD	     02132H,02133H,02138H,0213AH,0207FH
	BYTE	060H,0A4H,000H,00BH
	WORD	     02142H,02143H,02149H,0214AH,0207FH
;
LVNODTH	EQU	$
;------ 1,2,3,4,5,6,7,8
	WORD	02108H,02109H,02109H,0210AH
	WORD	0210BH,0210CH,0210DH,0211DH
;
LVNODTL	EQU	$
;------ 1,2,3,4,5,6,7,8
	WORD	02118H,02119H,0A109H,0211AH
	WORD	0211BH,0211CH,02118H,0A11DH
;
DJLVEL	EQU	$
;------		00 02 04 06 08 0a 0c 0e 10 12 14 16 18 1a
	HEX	FF,FF,FF,FF,FF,02,00,0A,04,08,FF,06,0C,0E
;
DJLVWT	EQU	$
	PHB
	PHK
	PLB		; DBR <= PBR
;
	LDA	!DJNNO
	LSR	A
	TAX
	LDY	DJLVEL,X
	BMI	DJLV0F0		; map write ? [ no:DJLV0F0 ]
;
	LDA	#0FFH
	STA	!VRAMD2+((4+(6*2))*2)	; end set !!
	LDX	#(4+(6*2))-2
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	LVNODTH,Y
	STA	!VRAMD2,X		; level No. set !!
	LDA	LVNODTL,Y
	STA	!VRAMD2+(4+(6*2)),X	; level No. set !!
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	DEX
;
DJLV010	EQU	$
	LDA	LEVELDT,X
	STA	!VRAMD2,X
	LDA	LEVELDT+(4+(5*2)),X
	STA	!VRAMD2+(4+(6*2)),X
	DEX
	BPL	DJLV010		; vram set end ? [ no:DJLV010 ]
;
	LDA	#VT01
	STA	<VRFLG
DJLV0F0	EQU	$
	INC	!MAPCFG
	PLB		; DBR reset !!
	RTL
;
;
; '91/ 7/ 2 [TUE] ::	DMAPWT100	EQU	$
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::	;
;;;3.3.5.TUE:			JSR	MAPW000		; MAP waku write !!
;;;3.3.5.TUE:MAPW000		EQU	$
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::			IDX16
; '91/ 7/ 2 [TUE] ::			REP	#00010000B		; index 16bit mode
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::			LDX	#DMAP000-MAPWAKU-1
; '91/ 7/ 2 [TUE] ::			STX	!VRAMD
; '91/ 7/ 2 [TUE] ::	MAPWT000	EQU	$
; '91/ 7/ 2 [TUE] ::			LDA	>MAPWAKU,X
; '91/ 7/ 2 [TUE] ::			STA	!VRAMD2,X
; '91/ 7/ 2 [TUE] ::			DEX
; '91/ 7/ 2 [TUE] ::			BPL	MAPWT000
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::			IDX8
; '91/ 7/ 2 [TUE] ::			SEP	#00010000B		; index 8bit mode
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::			INC	!MAPCFG
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::			LDA	#VT01
; '91/ 7/ 2 [TUE] ::			STA	<VRFLG
; '91/ 7/ 2 [TUE] ::	;
; '91/ 7/ 2 [TUE] ::			RTL
;
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;		haikei	set !!
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
MPGRADD		EQU	$
		WORD	01223H
		WORD	01223H+040H,01223H+080H,01223H+0C0H,01223H+0100H
		WORD	01223H-040H,01223H-080H,01223H-0C0H,01223H-0100H
;
;
DMAPWT200	EQU	$
;
		PHB
		PHK
		PLB		; PBR => DBR
;
		MEM16
		IDX16
		REP	#00110000B		; memory,index 16bit mode
;
		STZ	!VRAMD
		LDX	!DJNNO
		PHX
		LDA	TOWERDT,X
		AND	#00300H
		BEQ	MPDP220			; normal ?
;						; no
		AND	#00100H
		BEQ	MPDP220			; mountain ?
;;;;						; yes
;;;		MEM8
;;;		SEP	#00100000B		; memory 8bit mode
;;;;
		LDX	#DMAPMIZU-DMAPYAMA
;;;		STX	!VRAMD
	PHX
MPDP210		EQU	$
;;;		LDA	DMAPYAMA-1,X
;;;		STA	!VRAMD2-1,X
	LDA	DMAPYAMA-2,X
	STA	!VRAMD2-2,X
	DEX
		DEX
		BNE	MPDP210
;;;;
;;;		MEM16
;;;		REP	#00100000B		; memory 16bit mode
;;;;
	PLX
	LDA	#1123H
	STA	<WORK0
	LDY	#16
MPDP215	EQU	$
	LDA	<WORK0
	XBA
	STA	!VRAMD2,X
	XBA
	CLC
	ADC	#0020H
	STA	<WORK0
	LDA	#0E40H
	STA	!VRAMD2+2,X
	LDA	#1B2EH
	STA	!VRAMD2+4,X
	INX
	INX
	INX
	INX
	INX
	INX
	DEY
	BNE	MPDP215		; loop end ? [ no:MPDP215 ]
;
	STX	!VRAMD
MPDP220		EQU	$
		STZ	<WORK0
		STZ	<WORK2
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#000FFH
		CMP	#00050H
		BCC	MPDP230
;
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	#00004H
		ASL	A
		STA	<WORK0
		BRA	MPDP240
;
MPDP230		EQU	$
		AND	#0000FH
		CMP	#00005H
		BCC	MPDP240
;
		ASL	A
		STA	<WORK0
MPDP240		EQU	$
		LDX	<WORK0
		LDY	!VRAMD
		LDA	MPGRADD,X
		STA	<WORK0
		STA	<WORKE
MPDP243		EQU	$
		LDA	<WORK0
		XBA
		STA	!VRAMD2,Y
		INY
		INY
		LDA	#00E40H
		STA	!VRAMD2,Y
		INY
		INY
		LDX	<WORK2
		LDA	MPGRDT,X
		STA	<WORK4
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#00200H
		BEQ	MPDP244
;
		LDA	<WORK4
		CLC
		ADC	#00400H
		STA	<WORK4
MPDP244		EQU	$
		LDA	<WORK4
		STA	!VRAMD2,Y
		INY
		INY
		LDA	<WORK2
		CMP	#0000CH
		BEQ	MPDP245
;
		INC	<WORK2
		INC	<WORK2
MPDP245		EQU	$
		LDA	<WORK0
		CLC
		ADC	#00020H
		STA	<WORK0
		CMP	#01360H
		BCC	MPDP243
		STY	!VRAMD
MPDP250		EQU	$
;
		MEM8
		SEP	#00100000B		; memory 8bit mode
;
		PLX
;
		JSR	BLWRITE
;
		IDX16
		REP	#00010000B		; index 16bit mode
;
		LDY	!VRAMD
		LDA	#0FFH
		STA	!VRAMD2,Y
;
		IDX8
		SEP	#00010000B		; index 8bit mode
;
		INC	!MAPCFG
;
		LDA	#VT01
		STA	<VRFLG
;
		PLB		; DBR reset !!
;
		RTL
;
;
;
;===============< tategiri map block >=======================
;
MAPBLDT		EQU	$
		WORD	     00F26H,00F27H,04F27H,04F26H
		WORD	     08F26H,08F27H,0CF27H,0CF26H
;
;
;============================================================
;
; '91/ 6/20 [THU] ::	BLCODT		EQU	$
; '91/ 6/20 [THU] ::			WORD	00000H,00400H
;
;============================================================
;
		IDX16
;
BLWRITE		EQU	$
;
		MEM16
		REP	#00100000B		; memory 16bit mode
;
		LDA	TOWERDT,X
		AND	#000FFH
		STA	<WORK2
		AND	#0000FH
		STA	<WORK0			; chikakaisuu => WORK0
		LDA	<WORK2
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	<WORK0
		STA	<WORK2			; soukaisuu => WORK2
;
		LDA	<FLORNO
		CLC
		ADC	<WORK0
		AND	#00FFH
		STA	<WORKC			; playerkaisuu => WORKC
;
		STZ	<WORKA			; initial set
		LDA	<WORKE
		SEC
		SBC	#00040H
		CLC
		ADC	#00002H
		STA	<WORKE
;
		LDX	<WORK0
		BEQ	BLKWT010
;
		LDA	<WORKE
BLKWT000	EQU	$
		CLC
		ADC	#00040H
		DEX
		BNE	BLKWT000
;
		STA	<WORKE
BLKWT010	EQU	$
;
		IDX16
		REP	#00010000B		; index 16bit mode
;
		LDY	!VRAMD
BLKWT015	EQU	$
		LDX	#00000H
		LDA	<WORKE
BLKWT020	EQU	$
		XBA
		STA	!VRAMD2,Y
		INY
		INY
		LDA	#00700H
		STA	!VRAMD2,Y
		INY
		INY
BLKWT030	EQU	$
		LDA	MAPBLDT,X
; '91/ 6/20 [THU] ::			PHX
; '91/ 6/20 [THU] ::			PHA
; '91/ 6/20 [THU] ::	;
; '91/ 6/20 [THU] ::			LDX	#00000H
; '91/ 6/20 [THU] ::			LDA	<WORKA
; '91/ 4/ 2 ::		CMP	<WORKC
; '91/ 4/ 2 ::		BCC	BLKWT035
; '91/ 4/ 2 ::;
; '91/ 6/20 [THU] ::			CMP	<WORK0
; '91/ 6/20 [THU] ::			BMI	BLKWT035
; '91/ 6/20 [THU] ::	;
; '91/ 4/ 5 ::		INX
; '91/ 4/ 5 ::		INX
; '91/ 4/ 2 ::		CMP	<WORKC
; '91/ 4/ 2 ::		BEQ	BLKWT035
; '91/ 4/ 2 ::;
; '91/ 6/20 [THU] ::			INX
; '91/ 6/20 [THU] ::			INX
; '91/ 6/20 [THU] ::	BLKWT035	EQU	$
; '91/ 6/20 [THU] ::			PLA
; '91/ 6/20 [THU] ::	;
; '91/ 6/20 [THU] ::			SEC
; '91/ 6/20 [THU] ::			SBC	BLCODT,X
		STA	!VRAMD2,Y
; '91/ 6/20 [THU] ::			PLX
;
		INY
		INY
		INX
		INX
		CPX	#00008H
		BCC	BLKWT030
;
		BEQ	BLKWT038
;
		CPX	#00010H
		BNE	BLKWT030
;
		BRA	BLKWT040
;
BLKWT038	EQU	$
		LDA	<WORKE
		CLC
		ADC	#00020H
		BRA	BLKWT020
;
BLKWT040	EQU	$
		LDA	<WORKE
		SEC
		SBC	#00040H
		STA	<WORKE
		INC	<WORKA
		LDA	<WORKA
		CMP	<WORK2
		BMI	BLKWT015
;
		STY	!VRAMD
;
		MEM8
		IDX8
		SEP	#00110000B		; memory,index 8bit mode
;
		RTS
;
;
;
;
DMAPWT300	EQU	$
;
;;;3.3.5.TUE:;
;;;3.3.5.TUE:		IDX16
;;;3.3.5.TUE:		REP	#00010000B		; index 16bit mode
;;;3.3.5.TUE:;
;;;3.3.5.TUE:		LDX	#TOWERDT-DMAPMAIZ-1
;;;3.3.5.TUE:		STX	!VRAMD
;;;3.3.5.TUE:DMAPWT110	EQU	$
;;;3.3.5.TUE:		LDA	>DMAPMAIZ,X
;;;3.3.5.TUE:		STA	!VRAMD2,X
;;;3.3.5.TUE:		DEX
;;;3.3.5.TUE:		BPL	DMAPWT110
;;;3.3.5.TUE:;
;;;3.3.5.TUE:		LDX	!DJNNO
;;;3.3.5.TUE:		LDA	<FLORNO
;;;3.3.5.TUE:		BMI	DMAPWT120		; chika ni iruka ?
;;;;3.3.5.TUE:						; no
;;;3.3.5.TUE:		LDA	>TOWERDT,X
;;;3.3.5.TUE:		AND	#00FH
;;;3.3.5.TUE:		BNE	DMAPWT150		; chika wa aru ?
;;;3.3.5.TUE:;						; no
;;;3.3.5.TUE:		BRA	DMAPWT130
;;;3.3.5.TUE:;
;;;3.3.5.TUE:DMAPWT120	EQU	$
;;;3.3.5.TUE:		LDA	>TOWERDT,X
;;;3.3.5.TUE:		AND	#00FH
;;;3.3.5.TUE:		STA	<WORK0
;;;3.3.5.TUE:		LDA	<FLORNO
;;;3.3.5.TUE:		EOR	#0FFH
;;;3.3.5.TUE:		CLC
;;;3.3.5.TUE:		ADC	#001H
;;;3.3.5.TUE:		CMP	<WORK0
;;;3.3.5.TUE:		BMI	DMAPWT150
;;;3.3.5.TUE:;
;;;3.3.5.TUE:DMAPWT130	EQU	$
;;;3.3.5.TUE:;
;;;3.3.5.TUE:		MEM16
;;;3.3.5.TUE:		REP	#00100000B		; memory 16bit mode
;;;3.3.5.TUE:;
;;;3.3.5.TUE:		LDX	#00004H
;;;3.3.5.TUE:DMAPWT140	EQU	$
;;;3.3.5.TUE:		LDA	!VRAMD2,X
;;;3.3.5.TUE:		SEC
;;;3.3.5.TUE:		SBC	#00400H
;;;3.3.5.TUE:		STA	!VRAMD2,X
;;;3.3.5.TUE:		INX
;;;3.3.5.TUE:		INX
;;;3.3.5.TUE:		INX
;;;3.3.5.TUE:		INX
;;;3.3.5.TUE:		INX
;;;3.3.5.TUE:		INX
;;;3.3.5.TUE:		CPX	#TOWERDT-DMAPMAIZ-1
;;;3.3.5.TUE:		BCC	DMAPWT140
;;;3.3.5.TUE:;
;;;3.3.5.TUE:		MEM8
;;;3.3.5.TUE:		SEP	#00100000B		; memory 8bit mode
;;;3.3.5.TUE:;
;;;3.3.5.TUE:DMAPWT150	EQU	$
;;;3.3.5.TUE:;
;;;3.3.5.TUE:		IDX8
;;;3.3.5.TUE:		SEP	#00010000B		; index 8bit mode
;;;;
;;;		LDA	#VT01
;;;		STA	<VRFLG
;
;
;
;
; -- [ FLOOR WRITE MAIN ] -------------------------------------------
;
;
		PHB
		PHK
		PLB			; PBR=>DBR
;
; === < initial > ============================
;
		STZ	!MAPLEV		; Now scroll flag
;
		MEM16 
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		STZ	<WORK0
		STZ	<WORK2
		STZ	<WORK4
;
		STZ	<WORK6		; MAPBUF add data
		STZ	<WORK8		; Floor color and data
		STZ	<WORKA		; Scroll up,down data
		STZ	<WORKC
;
		STZ	!MAPWTA		; obj address index initial set
;
;
;;;		LDA	!DJNNO		; -->  1991/07/08
;;;		AND	#000FFH
;;;		CMP	#00016H
;;;		BEQ	FLMAIN005	; Ura-Machi danjyon ?
;					: No
;;;		TAX
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#0000FH
		EOR	#000FFH
		INC	A
		AND	#000FFH		; --> 1991/07/08
		CMP	<FLORNO
		BEQ	FLMAIN010	; Bottom step ?
;					: No
;
;;;FLMAIN005	EQU	$
		LDA	<FLORNO
		AND	#000FFH
		STA	!MAPBGP		; Map set floor position
;;;		LDA	#0EFFFH
;;;		STA	<WORK8		; Floor color set (yellow)
;
		BRA	FLMAIN020
;
FLMAIN010	EQU	$
		LDA	<FLORNO
		INC	A
		STA	!MAPBGP		; Map set floor position
;;;		LDA	#0EBFFH
;;;		STA	<WORK8		; Floor color set (red)
;
		INC	!MAPWTA
		INC	!MAPWTA		; obj address index set
;
FLMAIN020	EQU	$
		LDA	!MAPBGP
		AND	#00080
		BNE	FLMAIN021	; Chijyo ?
;					: Yes	
;
		LDA	#0EFFFH
;;;;		LDA	#0EBFFH
		STA	<WORK8		; Floor color set (new yellow)
		BRA	FLMAIN022
;
FLMAIN021	EQU	$
		LDA	#0EFFFH
		STA	<WORK8		; Floor color set (new blue)
;
FLMAIN022	EQU	$
		JSR	MOJISET		; 1F(high) Moji write
		JSR	WAKUSET		; 1F(high) waku write
		JSR	MAPUNST		; 1F(high) map write
;
  		DEC	!MAPBGP		; Map set floor position
;
		MEM16
        	IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
  		LDA	#00300H
		STA	<WORK6
;
		LDA	!MAPWTA
		BNE	FLMAIN030	; Bottom step ?
;					: No
;
;;;		LDA	#0F3FFH
;;;		STA	<WORK8		; Floor color set (blue)
		BRA	FLMAIN040
;
FLMAIN030	EQU	$
;;;		LDA	#0EFFFH
;;;		STA	<WORK8		; Floor color set (yellow)
;
FLMAIN040	EQU	$
		LDA	!MAPBGP
		AND	#00080
		BNE	FLMAIN041	; Chijyo ?
;					: Yes	
;
		LDA	#0EFFFH
;;;		LDA	#0EBFFH
		STA	<WORK8		; Floor color set (new yellow)
		BRA	FLMAIN042
;
FLMAIN041	EQU	$
		LDA	#0EFFFH
		STA	<WORK8		; Floor color set (new blue)
;
FLMAIN042	EQU	$
;
;;;		LDA	!DJNNO		; --< NEW >--  1991/07/03
;;;		AND	#000FFH
;;;		CMP	#00016H
;;;		BEQ	FLMAIN050	; Ura-Machi danjyon ?
;					: No
;
		JSR	MOJISET		; B1(low) Moji write
		JSR	WAKUSET		; B1(low) waku write
		JSR	MAPUNST		; B1(high) map write
;
		MEM16
        	IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
;;;FLMAIN050	EQU	$
		INC	!MAPBGP		; Map set floor position reset
		STZ	<WORK6		; MAPBUF add data reset
;
		MEM8 
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
;
; ============================================
;
		LDA     #bgw8		; BG write set
		STA     <BGWTFG
		LDA	#022H
		STA     !NXBWFG
		INC	!MAPCFG
;
		PLB			; DBR reset
;
		RTL
;
; -------------------------------------------------------------------
;
;
;************************************************************************
;*		WAKU WRITE						*
;************************************************************************
WKADODT		EQU	$
		WORD	01F19H,05F19H,09F19H,0DF19H
;			HL     HR     LF     LR
;
WKADOPS		EQU	$
		WORD	000E2H,000F8H,003A2H,003B8H
;
WYOKODT		EQU	$
		WORD	01F1AH,09F1AH
;			HIGH   LOW
;
WYOKOPS		EQU	$
		WORD	000E4H,003A4H
;
WTATEDT		EQU	$
		WORD	01F1BH,05F1BH
;			LEFT   RIGHT
;
WTATEPS		EQU	$
		WORD	00122H,00138H
;
;
WAKUSET		EQU	$
		MEM16 
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
;
; ---- [ Kado set ] -------------
;
		STZ	<WORK2		; Kado count clear
;
WAKU020		EQU	$
		LDY	<WORK2
		LDA	WKADOPS,Y
		CLC
		ADC	<WORK6
		AND	#00FFFH
		TAX
;
		LDA	#00F00H		; Write area clear
		STA	>MAPBUF,X
;
		LDA	WKADODT,Y	; Kado write
		AND	<WORK8
		STA	>MAPBUF,X
;
		INC	<WORK2
		INC	<WORK2
		LDA	<WORK2
		CMP	#00008H
		BNE	WAKU020		; 4 kado write ?
;					: Yes
;
; ---- [ Yoko set ] -------------
;
		LDY	#00000H
;
WAKU030		EQU	$
		STZ	<WORK2		; Yoko count clear
		LDA	WYOKOPS,Y
		CLC
		ADC	<WORK6
		STA	<WORK4		; Left point set
;
WAKU040		EQU	$
		LDA	<WORK4
		CLC
		ADC	<WORK2
		AND	#00FFFH
		TAX
;
		LDA	#00F00H		; Write area clear
		STA	>MAPBUF,X
;
		LDA	WYOKODT,Y	; Yoko line write
		AND	<WORK8
		STA	>MAPBUF,X
;
		INC	<WORK2
		INC	<WORK2
		LDA	<WORK2
		CMP	#00014H
		BNE	WAKU040		; 10 line write ?
;					: Yes
		INY
		INY
		CPY	#00004H
		BNE	WAKU030		; High, low write ?
;					: Yes
;
; ---- [ Tate set ] -------------
;
		LDY	#00000H
;
WAKU050		EQU	$
		STZ	<WORK2		; Tate count clear
		LDA	WTATEPS,Y
		CLC
		ADC	<WORK6
		STA	<WORK4		; High point set
;
WAKU060		EQU	$
		LDA	<WORK4
		CLC
		ADC	<WORK2
		AND	#00FFFH
		TAX
;
		LDA	#00F00H		; Write area clear
		STA	>MAPBUF,X
;
		LDA	WTATEDT,Y	; Tate line write
		AND	<WORK8
		STA	>MAPBUF,X
;
		LDA	<WORK2
		CLC
		ADC	#00040H
		STA	<WORK2
		CMP	#00280H
		BNE	WAKU060		; 10 line write ?
;					: Yes
		INY
		INY
		CPY	#00004H
		BNE	WAKU050		; Left, right write ?
;					: Yes
;
		MEM8 
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		RTS
;
;************************************************************************
;*		MOJI WRITE						*
;************************************************************************
WMJSUDT         EQU     $
                WORD    01F1EH,01F1FH,01F20H,01F21H
		WORD	01F22H,01F23H,01F24H,01F25H
;
MOJISET		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
;
		LDA	#000DEH		; Moji clear count set
		STA	<WORK0
;
MOJI005		EQU	$
		LDA	<WORK0
		CLC
		ADC	<WORK6
		AND	#00FFFH
		TAX
;
		LDA	#00F00H		; Write area clear
		STA	>MAPBUF,X
		STA	>MAPBUF+002H,X
;
		LDA	<WORK0
		CLC
		ADC	#00040H
		STA	<WORK0
		CMP	#0039EH
		BNE	MOJI005		; Moji write area clear end ?
;					: Yes
;
; --------------------------------------------------------------
		LDA	!MAPBGP		; Now kaisu
		AND	#00080H
		BEQ	MOJI010		; Chijyo ?
;					: No
;
		LDA	#01F1CH		; "B" data get
		BRA	MOJI020
;
MOJI010		EQU	$
		LDA	!MAPBGP		; Now kaisu
		AND	#0000FH
		ASL	A
		TAY
		LDA	WMJSUDT,Y	; Kaisu no. get
;
MOJI020		EQU	$
		PHA		
;
		LDA	#0035EH		; Moji set position
		CLC
		ADC	<WORK6
		AND	#00FFFH
		TAX
;
		PLA
		AND	<WORK8
		STA	>MAPBUF,X	; Left moji write
;
		LDA	!MAPBGP		; Now kaisu
		AND	#00080H
		BEQ	MOJI030		; Chijyo ?
;					: No
;
		LDA	!MAPBGP		; Now kaisu
		AND	#000FFH
		EOR	#000FFH
		ASL	A
		TAY
		LDA	WMJSUDT,Y	; Kaisu no. get
		BRA	MOJI040
;
MOJI030		EQU	$
		LDA	#01F1DH		; "F" data get
;
MOJI040		EQU	$
		AND	<WORK8
		STA	>MAPBUF+002H,X	; Right moji write
;
		MEM8 
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		RTS
;
;
;************************************************************************
;*		MAP UNIT SET						*
;************************************************************************
XUNPODT		EQU	$
		WORD	00124H,001A4H,00224H,002A4H,00324H
;
MAPUNST		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		STZ	<WORK0		; Line count clear
;
MAPST010	EQU	$
		LDA	<WORK0
		ASL	A
		TAX
		LDA	XUNPODT,X	; Line position get
		CLC
		ADC	<WORK6
		AND	#00FFFH
		TAX
;
		JSR	MAPUNWR		; Map unit write
;
		INC	<WORK0		; Line count inc
		LDA	<WORK0
		CMP	#00005H
		BNE	MAPST010	; 5 line write ?
;					: Yes
;
		MEM8 
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		RTS
;
;
;************************************************************************
;*		MAP UNIT WRITE						*
;************************************************************************
UNGETDT		EQU	$
		WORD	00000H,00005H,0000AH,0000FH,00014H
;;;		WORD	00000H,0000AH,00014H,0001EH,00028H
;
STEPADT		EQU	$
		WORD	00000H,00032H,00064H,00096H,000C8H
		WORD	000FAH,0012CH,0015EH,00190H
;
CLCMPDT		EQU	$
		WORD	00300H,00B00H,00F00H
;
;
MAPUNWR		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		STZ	<WORK2		; Unit count clear
;
MAPWR010	EQU	$
		STZ	<WORKE		; Go add data clear
		PHX			; (X) index push
;
		LDA	<WORK0
		ASL	A
		TAX
;
		LDA	<WORK2		; Yoko unit count
; -------
;;;;		ASL	A
; -------
		ADC	UNGETDT,X	; Unit line
		STA	<WORK4
;
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#00FH
		CLC
		ADC	!MAPBGP
		ASL	A
;
		STA	<WORKE		; 1991/05/22
;
		TAY
;
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
		LDA	TWDTADD2,X
;;		LDA	TOWERADD,X	; Tower data no. label get
		STA	<WORKC
;
		LDA	TWDTADD1,Y	; Step no. get
		CLC
		ADC	<WORK4
		TAY
; -------
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		LDA	(<WORKC),Y	; Index data get
		CMP	#00FH
;;;		CMP	#0FFFFH
; -------
		BNE	MAPWR020	; Space area ?
;					: Yes
;
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
		LDA	#LASTUNO	; Last unit no. set
;;		ASL	A
;;		ASL	A
		BRA	MAPWR030
;
;
MAPWR020	EQU	$
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
; -----------------------
		AND	#000FFH		; 1991/09/24
;
		STA	<CWORK2		; (NEW) Room No. store
;
		ASL	A
		PHA
;
;		LDA	TWDTADD2,X
;		STA	<WORKC
;;
;		LDA	<WORKE
;		AND	#000FFH
;		TAY
;;
;		LDA	TWDTADD1,Y	; Step no. get
;		CLC
;		ADC	<WORK4
;		TAY
;		LDA	(<WORKC),Y	; Index data get
;;
;		AND	#001FFH		; (NEW) Room No. get
;;
		LDA	<CWORK2
;
; ----------------------
		ASL	A
;
		TAX
		LDA	>DJNTBL,X
		AND	#0000FH
		STA	<WORKE		; Go data store
;
;
;MAPWR025	EQU	$
		PLA
		BRA	MAPWR0301
;
;		ADC	<WORK4
;		TAX
;;
;		LDA	>DJNDT,X	; Adress data ==> <WORKB,C,D
;		STA	<WORKB
;		LDA	>DJNDT+1,X
;		STA	<WORKC
;		LDY	#00001H
;		LDA	[<WORKB],Y	; Unit no. get
;		AND	#000FFH
;
;
; ----------------------------------------------------
;;;
;;;
;;		PHX
;;;
;;		LDA	<WORK0
;;		ASL	A
;;		TAX
;;;
;;		LDA	<WORK2		; Yoko unit count
;;		ASL	A
;;		CLC
;;		ADC	UNGETDT,X	; Unit line
;;		STA	<WORK4
;;;
;;		LDX	!DJNNO
;;		LDA	FLDTADD,X
;;		CLC
;;		ADC	<WORK4
;;		STA	<WORK4
;;;
;;		LDA	TOWERDT,X
;;		AND	#000F0H		; High step get
;;		LSR	A
;;		LSR	A
;;		LSR	A
;;		LSR	A
;;		DEC	A
;;		SEC
;;		SBC	!MAPBGP		; Now kaisu
;;		AND	#000FFH
;;		ASL	A
;;		TAX
;;;
;;		LDA	STEPADT,X	; Step count add
;;		CLC
;;		ADC	<WORK4
;;		TAY
;;		PLX
;;;
;;		LDA	#00F00H		; Write area clear
;;		STA	>MAPBUF,X
;;		STA	>MAPBUF+02H,X
;;		STA	>MAPBUF+040H,X
;;		STA	>MAPBUF+042H,X
;;;
;;		LDA	FLDATA000,Y	; Unit No. get
;;		CMP	#0FFFFH
;;		BNE	MAPWR020	; Space area ?
;;;					; Yes
;;;
;;		LDA	#00035H		; Last unit no. set
;;;
; ----------------------------------------------------
;
MAPWR030	EQU	$
		ASL	A		; Unit data 
		ASL	A		; NEW  1991/05/26
		ASL	A
		TAY
		BRA	MAPWR031
;
;
MAPWR0301	EQU	$
;;		ASL	A 
;;		ASL	A 
;;		TAY
;
		STZ	<CWORK0		; Map unit get count clear
		LDY	#00000H		; (Y) index clear
;
		LDX	!DJNNO
		LDA	TWDTADD2,X
		STA	<WORKC
;
MAPWR0302	EQU	$
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		LDA	(<WORKC),Y	; Index data get
		CMP	#00FH
;;;		CMP	#0FFFFH
		BNE	MAPWR0303	; Space area ?
;					: Yes
;
		INY
;;;		INY
		BRA	MAPWR0302
;
MAPWR0303	EQU	$
		CMP	<CWORK2
		BEQ	MAPWR0304	; Room No. equal ?
;					: No
		INC	<CWORK0
;;;		INC	<CWORK0
		INY
;;;		INY
		BRA	MAPWR0302
;
MAPWR0304	EQU	$
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
		LDA	TOWERADD,X	; Tower data no. label get
		STA	<WORKC
;
		LDA	<CWORK0
		TAY
;
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		LDA	(<WORKC),Y	; Unit data get
;
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
		ASL	A 
		ASL	A
		ASL	A
		TAY
;
;;;		LDA	<WORK8
;;;		ROL	A
;;;		ROL	A
;;;		ROL	A
;;;		ROL	A
;;;		ROL	A
;;;		ROL	A
;;;		ROL	A
;;;		AND	#00003H
;;;		CMP	#00003H
;;;		BNE	MAPWR031	; Color yellow ?
;;;;					: Yes
;;;;		INC	A
;
MAPWR031	EQU	$
;
;;;		TAX
;;;		LDA	CLCMPDT,X
;;;		STA	<WORKC
;
		PLX			; (X) index pull
;
; ---------
		LDA	MAPUNIT,Y	; Map unit write ( High left )
		STA	<WORKC
;
;;;		AND	<WORK8
;
;;;		CMP	<WORKC
;;;		BEQ	MAPWR035
;;;		CLC
;;;		ADC	<WORKE
;
		PHA
;;;		CMP	#00F00H
;;;		BEQ	MAPWR0350	; Space area (blue)?
;					: No
		CMP	#00B00H
		BEQ	MAPWR0350	; Space area (yellow)?
;					: No
		LDA	<WORKE
		AND	#00008H
		BNE	MAPWR0350	; Go to room ?
;					: No
;
		LDA	<WORKC
		AND	#01000H
		BNE	MAPWR03500	; Takara or entrance room ?
;					: No
;
		LDA	#00400H
		STA	<WORKC		
		BRA	MAPWR035
;
; --- [ Takara or entrance room ] -------
;
MAPWR03500	EQU	$
		PHX			; (X) index push
;
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BEQ	MAPWR03501	; Do you have a map ?
;					: Yes
;
		PLX			; (X) index pull
		PLA
		LDA	<WORKC
		AND	#0E3FFH		; Color clear
		ORA	#00C00H		; Color reset !
		BRA	MAPWR0358
;
MAPWR03501	EQU	$
		PLX			; (X) index pull
;
; ---------------------------------------
;
MAPWR0350	EQU	$
		STZ	<WORKC
;
MAPWR035	EQU	$
		PLA
		CLC
		ADC	<WORKC
;
		PHX			; (X) index push
;
		STA	<WORKC		; Unit data store
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BNE	MAPWR0355	; Do you have a map ?
;					: No
;
		LDA	<WORKE
		AND	#00008H
		BNE	MAPWR0355	; Go to room ?
;					: No
;
		LDA	#00B00H		; Space area (yellow) set
		BRA	MAPWR0357
;
MAPWR0355	EQU	$
		LDA	<WORKC
MAPWR0357	EQU	$
		PLX			; (X) index pull
MAPWR0358	EQU	$
		STA	>MAPBUF,X
; ---------
;
		LDA	MAPUNIT+02H,Y	; ( High right )
		STA	<WORKC
;
;;;		AND	<WORK8
;
;;;		CMP	<WORKC
;;;		BEQ	MAPWR036
;;;		CLC
;;;		ADC	<WORKE
;
		PHA
;;;		CMP	#00F00H
;;;		BEQ	MAPWR0360	; Space area (blue)?
;					: No
		CMP	#00B00H
		BEQ	MAPWR0360	; Space area (yellow)?
;					: No
		LDA	<WORKE
		AND	#00004H
		BNE	MAPWR0360	; Go to room ?
;					: No
;
		LDA	<WORKC
		AND	#01000H
		BNE	MAPWR03600	; Takara or entrance room ?
;					: No
;
		LDA	#00400H
		STA	<WORKC		
		BRA	MAPWR036
;
; --- [ Takara or entrance room ] -------
;
MAPWR03600	EQU	$
		PHX			; (X) index push
;
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BEQ	MAPWR03601	; Do you have a map ?
;					: Yes
;
		PLX			; (X) index pull
		PLA
		LDA	<WORKC
		AND	#0E3FFH		; Color clear
		ORA	#00C00H		; Color reset !
		BRA	MAPWR0368
;
MAPWR03601	EQU	$
		PLX			; (X) index pull
;
; ---------------------------------------
;
MAPWR0360	EQU	$
		STZ	<WORKC
;
;
MAPWR036	EQU	$
		PLA
		CLC
		ADC	<WORKC
;
		PHX			; (X) index push
;
		STA	<WORKC		; Unit data store
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BNE	MAPWR0365	; Do you have a map ?
;					: No
;
		LDA	<WORKE
		AND	#00004H
		BNE	MAPWR0365	; Go to room ?
;					: No
;
		LDA	#00B00H		; Space area (yellow) set
		BRA	MAPWR0367
;
MAPWR0365	EQU	$
		LDA	<WORKC
MAPWR0367	EQU	$
		PLX			; (X) index pull
MAPWR0368	EQU	$
		STA	>MAPBUF+02H,X
;
; ---------
		LDA	MAPUNIT+04H,Y	; ( Low left )
		STA	<WORKC
;
;;;		AND	<WORK8
;
;;;		CMP	<WORKC
;;;		BEQ	MAPWR037
;;;		CLC
;;;		ADC	<WORKE
;
		PHA
;;;		CMP	#00F00H
;;;		BEQ	MAPWR0370	; Space area (blue)?
;					: No
		CMP	#00B00H
		BEQ	MAPWR0370	; Space area (yellow)?
;					: No
		LDA	<WORKE
		AND	#00002H
		BNE	MAPWR0370	; Go to room ?
;					: No
;
		LDA	<WORKC
		AND	#01000H
		BNE	MAPWR03700	; Takara or entrance room ?
;					: No
;
		LDA	#00400H
		STA	<WORKC		
		BRA	MAPWR037
;
; --- [ Takara or entrance room ] -------
;
MAPWR03700	EQU	$
		PHX			; (X) index push
;
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BEQ	MAPWR03701	; Do you have a map ?
;					: Yes
;
		PLX			; (X) index pull
		PLA
		LDA	<WORKC
		AND	#0E3FFH		; Color clear
		ORA	#00C00H		; Color reset !
		BRA	MAPWR0378
;
MAPWR03701	EQU	$
		PLX			; (X) index pull
;
; ---------------------------------------
;
MAPWR0370	EQU	$
		STZ	<WORKC
;
;
MAPWR037	EQU	$
		PLA
		CLC
		ADC	<WORKC
;
		PHX			; (X) index push
;
		STA	<WORKC		; Unit data store
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BNE	MAPWR0375	; Do you have a map ?
;					: No
;
		LDA	<WORKE
		AND	#00002H
		BNE	MAPWR0375	; Go to room ?
;					: No
;
		LDA	#00B00H		; Space area (yellow) set
		BRA	MAPWR0377
;
MAPWR0375	EQU	$
		LDA	<WORKC
MAPWR0377	EQU	$
		PLX			; (X) index pull
MAPWR0378	EQU	$
		STA	>MAPBUF+040H,X
;
; ---------
		LDA	MAPUNIT+06H,Y	; ( Low right )
		STA	<WORKC
;
;;;		AND	<WORK8
;
;;;		CMP	<WORKC
;;;		BEQ	MAPWR038
;;;		CLC
;;;		ADC	<WORKE
;
		PHA
;;;		CMP	#00F00H
;;;		BEQ	MAPWR0380	; Space area (blue)?
;					: No
		CMP	#00B00H
		BEQ	MAPWR0380	; Space area (yellow)?
;					: No
		LDA	<WORKE
		AND	#00001H
		BNE	MAPWR0380	; Go to room ?
;					: No
;
		LDA	<WORKC
		AND	#01000H
		BNE	MAPWR03800	; Takara or entrance room ?
;					: No
;
		LDA	#00400H
		STA	<WORKC		
		BRA	MAPWR038
;
; --- [ Takara or entrance room ] -------
;
MAPWR03800	EQU	$
		PHX			; (X) index push
;
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BEQ	MAPWR03801	; Do you have a map ?
;					: Yes
;
		PLX			; (X) index pull
		PLA
		LDA	<WORKC
		AND	#0E3FFH		; Color clear
		ORA	#00C00H		; Color reset !
		BRA	MAPWR0388
;
MAPWR03801	EQU	$
		PLX			; (X) index pull
;
; ---------------------------------------
;
MAPWR0380	EQU	$
		STZ	<WORKC
;
;
MAPWR038	EQU	$
		PLA
		CLC
		ADC	<WORKC
;
		PHX			; (X) index push
;
		STA	<WORKC		; Unit data store
		LDX	!DJNNO
		LDA	>MAPCNT
		AND	>BITCD0,X
		BNE	MAPWR0385	; Do you have a map ?
;					: No
;
		LDA	<WORKE
		AND	#00001H
		BNE	MAPWR0385	; Go to room ?
;					: No
;
		LDA	#00B00H		; Space area (yellow) set
		BRA	MAPWR0387
;
MAPWR0385	EQU	$
		LDA	<WORKC
MAPWR0387	EQU	$
		PLX
MAPWR0388	EQU	$
		STA	>MAPBUF+042H,X
;
; ---------
;
		INX
		INX
		INX
		INX
		INC	<WORK2		; Unit count inc
		LDA	<WORK2
		CMP	#00005H
		BEQ	MAPWR040	; 5 unit set ?
;					: No
		JMP	MAPWR010
;
MAPWR040	EQU	$
;
		RTS
;
		MEM8
		IDX8
;
;
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;+		player position initial				    +
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
YADDDT		EQU	$
		WORD	0001FH,0007FH
;
XADDDT		EQU	$
		WORD	00090H
;
VLOOMNO0	EQU	$
		WORD	00089H,000A7H,0004FH
;
VLOOMNO1	EQU	$
		WORD	000A9H,00077H,000BEH
;
VLMIDX		EQU	$
		WORD	00003H*2-2
;
;
SBSRMD1	EQU	$
	WORD	0000FH		; DJNNO =  00 (kyoukai chikadou)
	WORD	0000FH		; DJNNO =  02 (shiro)
	WORD	000C8H		; DJNNO =  04 (omote sinden)
	WORD	00033H		; DJNNO =  06 (sabaku shinden)
	WORD	00020H		; DJNNO =  08 (shisai's tower)
	WORD	00006H		; DJNNO =  0A (ura hokora)
	WORD	0005AH		; DJNNO =  0C (ura shinden)
	WORD	00090H		; DJNNO =  0E (ura numa)
	WORD	00029H		; DJNNO =  10 (ura mori)
	WORD	000DEH		; DJNNO =  12 (ura mizuumi no chika tou)
	WORD	00007H		; DJNNO =  14 (omote yama no tou)
	WORD	000ACH		; DJNNO =  16 (machi)
	WORD	000A4H		; DJNNO =  18 (kameiwa)
	WORD	0000DH		; DJNNO =  1A (ura yama no tou)
;
;
DMAPWT400	EQU	$
;
		PHB
		PHK
		PLB		; PBR => DBR
;
		IDX16
		REP	#00010000B		; index 16bit mode
;
		LDA	#000H
		XBA
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#00FH
		CLC
		ADC	<FLORNO
		ASL	A
		TAY
		STY	<WORKC
;
		MEM16
		REP	#00100000B		; memory 16bit mode
;
		STZ	<WORK0
		STZ	<WORK2
;
;========= Loom nomber set !
;
		PHY
		LDY	VLMIDX
		LDA	<RMXYCT
DMPP000		EQU	$
		CMP	VLOOMNO0,Y
		BEQ	DMPP100		
;
		DEY
		DEY
		BPL	DMPP000
;
		BRA	DMPP900
;
DMPP100		EQU	$
		LDA	VLOOMNO1,Y
DMPP900		EQU	$
		STA	<WORKE
		PLY
;
		LDA	TWDTADD2,X
		STA	<WORK4
		LDA	TWDTADD1,Y
		TAY
;
	MEM8
	SEP	#00100000B		; memory 8bit mode !!
;
DMPXY000	EQU	$
		LDA	(<WORK4),Y
;.'91/.8/28.[WED]			AND	#001FFH
;.'91/.8/28.[WED]			INY
		INY
		CMP	<WORKE
		BEQ	DMPXY100
;
		LDA	<WORK0
;.'91/.8/28.[WED]			CMP	#00040H
		CMP	#40H
		BCC	DMPXY010
;
		STZ	<WORK0
		LDA	<WORK2
		CLC
;.'91/.8/28.[WED]			ADC	#00010H
		ADC	#10H
		STA	<WORK2
		BRA	DMPXY000
;
DMPXY010	EQU	$
		CLC
;.'91/.8/28.[WED]			ADC	#00010H
		ADC	#10H
		STA	<WORK0
		BRA	DMPXY000
;
DMPXY100	EQU	$
;
	MEM16
	REP	#00100000B		; memory 16bit mode
;
		LDA	<WORK0
		CLC
		ADC	XADDDT
		STA	!MPLKPX
;
		LDA	<PLXPS1
		AND	#001E0H
		ASL	A
		ASL	A
		ASL	A
		XBA
DMPXY120	EQU	$
		CLC
		ADC	!MPLKPX
		STA	!MPLKPX
DMPXY150	EQU	$
		LDY	!MAPWTA
;
		LDA	<WORK2
		STA	!TLRAM2
		CLC
		ADC	YADDDT,Y		; map up,down set !!!
		STA	!MPLKPY
;
		LDA	<PLYPS1
		AND	#001E0H
		ASL	A
		ASL	A
		ASL	A
		XBA
DMPXY170	EQU	$
		CLC
		ADC	!MPLKPY
		STA	!MPLKPY
DMPXY200	EQU	$
;------ boss initial ---------------
	MEM8
	SEP	#00100000B		; memory 8bit mode !!
;
	LDA	#000H
	XBA
	LDA	TOWERDT,X
	AND	#00FH
	CLC
	ADC	BOSFL,X
;
	MEM16
	REP	#00100000B		; memory 16bit mode !!
;
	ASL	A
	TAY
;
	LDA	TWDTADD2,X
	CLC
	ADC	TWDTADD1,Y
	STA	<WORKE
;
	MEM8
	SEP	#00100000B		; memory 8bit mode !!
;
	LDA	#040H
	STA	DMWRK0
	STZ	DMWRK0+1
	STA	DMWRK0+2
	STZ	DMWRK0+3
;.'91/.8/28.[WED]		LDY	#5*5*2-1
	LDY	#5*5-1
BOS040	EQU	$
	LDA	(<WORKE),Y
;.'91/.8/28.[WED]		CMP	#080H
	CMP	#00FH
	BEQ	BOS050		; no room [ yes:BOS050 ]
;
	CMP	SBSRMD1,X
	BEQ	BOS080		; boss room [ yes:BOS080 ]
;
BOS050	EQU	$
	LDA	DMWRK0
	SEC
	SBC	#010H
	STA	DMWRK0
	BPL	BOS060
;
	LDA	#040H
	STA	DMWRK0
	LDA	DMWRK0+2
	SEC
	SBC	#010H
	STA	DMWRK0+2
BOS060	EQU	$
;.'91/.8/28.[WED]		DEY
	DEY
	BPL	BOS040
;
BOS080	EQU	$
	STZ	<WORK2
	STZ	<WORKF
	LDA	!MAPBGP
	SEC
	SBC	BOSFL,X
	STA	<WORKE
	BPL	BS10000
;
	EOR	#0FFH
	INC	A
	STA	<WORKE
	INC	<WORK2
	INC	<WORK2
BS10000	EQU	$
;
	IDX8
	SEP	#00010000B		; index 8bit mode
;
	LDY	<WORK2
;
	MEM16
	REP	#00100000B		; memory 16bit mode !!
;
BS10010	EQU	$
	DEC	<WORKE
	BMI	BS10040
;
	LDA	DMWRK0+2
	CLC	
	ADC	MAPOSDT,Y
	STA	DMWRK0+2
	BRA	BS10010
;
BS10040	EQU	$
	LDA	DMWRK0+2
	CLC
	ADC	YADDDT
	STA	DMWRK0+2
;
	MEM8
	SEP	#00100000B		; memory 8bit mode !!
;
;------ boss initial end -----------
;
		INC	!MAPDMD
		STZ	<BLKFLG		; blanking off
		STZ	!MAPCFG
;
		PLB		; DBR reset !!
;
		RTL
;
;
;
; ------------------------------------------------------------------
;
;
;
; ------------------------------------------------------------------
;
;
;---------------------------------------; play
;
MPDP600		EQU	$
		JSL	>DMAPPL100
;
		JMP	DMAPPL200
;
;
DMAPPL100	EQU	$
;
		PHB
		PHK
		PLB			; PBR=>DBR
;
		LDA	<KEYA2L
		AND	#01000000B
;;		BEQ	MPDP620		; [X] key on ?
		BNE	NOTO
;
		JSL	>MPDP620		; [X] key on ?

;;		LDA	!MAPLEV
;;		BNE	NLL		; move end ?
;;;					; yes ! bext key check & move !
;;		JSL	>MPDP620	; 1	
;;		JSL	>MPDP620 	; 2		
NLL		EQU	$
		PLB
		RTL
;
NOTO		EQU	$
		INC	!MAPDMD
		INC	!MAPDMD
		STZ	!MAPCFG
;
		PLB			; DBR reset
;
		RTL
;
;
;************************************************************************
;*		MAP SCROLL						*
;************************************************************************
MAPOSDT		EQU	$
		WORD	00060H,0FFA0H
;
;
MPDP620		EQU	$
		JSL	>MPDP623
;
		LDA	!MAPLEV
		BEQ	MPDP621		; Now scroll ?
;;		BEQ	MPDP623		; Now scroll ?
;					: Yes
		JMP	SCRCTAD
;
MPDP621		EQU	$
		RTL
;==== Key check ===
MPDP623		EQU	$
;
; ----- < NEW > ----------------------------------------------------
;
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#000F0H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK0		; High step set
;
		LDA	TOWERDT,X
		AND	#0000FH
		CLC
		ADC	<WORK0		; High + Low step
		CMP	#00003H
		BMI	MPDP624		; All step < 3 ?
;					: No
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
;
; ------------------------------------------------------------------
;
		LDA	MAPLEV
		BNE	MPDP624
;
		LDA	<KEYA1
		AND	#00001100B
		BNE	MPDP625		; Up, down key on ?
;					: No
MPDP624		EQU	$
		JMP	MPDP699
;
MPDP625		EQU	$
		STA	<WORKA		; Key data store
;
		STZ	!MAPBGP+001H	; Map point set (high clear)
;
		AND	#00001000B
		BEQ	MPDP630		; Up key (scroll down) ?
;					: Yes
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
 		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#000F0H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		DEC	A
		CMP	!MAPBGP
		BNE	MPDP628		; Top step ?
;					: Yes
		JMP	MPDP699
;
MPDP628		EQU	$
		INC	!MAPBGP		; Map point inc
;
		LDA	<WORK6
		SEC
		SBC	#00300H
		AND	#00FFFH
		STA	<WORK6		; MAPBUF add data set
;
		BRA	MPDP635
;
;
MPDP630		EQU	$		; Down key (scroll up)
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#0000FH
		EOR	#000FFH
		INC	A
		INC	A
		AND	#000FFH
		CMP	!MAPBGP
		BEQ	MPDP699		; Bottom step ?
;					: No
;
		DEC	!MAPBGP		; Map point dec
		DEC	!MAPBGP
;
		LDA	<WORK6
		CLC
		ADC	#00600H
		AND	#00FFFH
		STA	<WORK6		; MAPBUF add data set
;
;
; ----- < COLOR DATA SET > -----------------------------------------
;
MPDP635		EQU	$
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		LDA	!MAPBGP
		CMP	<FLORNO
		BNE	MPDP638		; Link in floor ?
;					: Yes
;
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
;;;		LDA	#0EFFFH		; Floor color set (yellow)
;;;		STA	<WORK8
;
;;;		MEM8
;;;		SEP	#00100000B	; Memory 8bit mode
		BRA	MPDP640
;
MPDP638		EQU	$
		BMI	MPDP639		; Higher ?
;					: Yes
;
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
;;;		LDA	#0EBFFH		; Floor color set (red)
;;;		STA	<WORK8
;
;;;		MEM8
;;;		SEP	#00100000B	; Memory 8bit mode
		BRA	MPDP640
;
MPDP639		EQU	$		; Lower
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
;;;		LDA	#0F3FFH		; Floor color set (blue)
;;;		STA	<WORK8
;
;;;		MEM8
;;;		SEP	#00100000B	; Memory 8bit mode
;
MPDP640		EQU	$
		LDA	!MAPBGP
		AND	#00080H
		BNE	COLOBLUE	; Chijyo ?
;					: Yes	
		LDA	#0EFFFH
;;;;		LDA	#0EBFFH
		STA	<WORK8		; Floor color set (new yellow)
		BRA	COLORED
;
COLOBLUE	EQU	$
		LDA	#0EFFFH
		STA	<WORK8		; Floor color set (new blue)
;
COLORED		EQU	$
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		JSR	MOJISET		; Moji write
		JSR	WAKUSET		; Waku write	 
		JSR	MAPUNST		; Map write
;
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		INC	!MAPLEV		; Now scroll flag inc
;
;
; ----- < SCROLL COUNT SET > ---------------------------------------
;
		LDA	<WORKA
		AND	#008H
		LSR	A
		LSR	A
		TAX
;
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		LDA	<SCCV2
		CLC
		ADC	MAPOSDT,X
		STA	!MAPSMK		; Scroll count set !!
;
;
; ----- < DATA RESET AREA > ----------------------------------------
;
		LDA	<WORKA
		AND	#00008H
		BNE	MPDP650		; Up key on ?
;					: No
		LDA	<WORK6
		SEC
		SBC	#00300H
		AND	#00FFFH
		STA	<WORK6		; MAPBUF add data reset
;
		INC	!MAPBGP		; Map point reset
;
; ------------------------------------------------------------------
;
MPDP650		EQU	$
		MEM8
		SEP	#00100000B	; Memory,index 8bit mode
;
		LDA     #bgw8		; BG write set
		STA     <BGWTFG
;;		LDA	#022H
;;		STA     !NXBWFG
;
MPDP699		EQU	$
		BRA	SCRC020
;
;
;************************************************************************
;*		SCROLL COUNT ADD					*
;************************************************************************
MAPSCDT		EQU	$
		WORD	00004H,0FFFCH
OBJSCDT		EQU	$
		WORD	0FFFCH,00004H
;
;
SCRCTAD		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		LDA	<WORKA
		AND	#00008H
		LSR	A
		LSR	A
		TAX
;
		LDA	!MPLKPY
		CLC
		ADC	OBJSCDT,X
		STA	!MPLKPY		; OBJ y pos add !!
;
		LDA	DMWRK0+2
		CLC
		ADC	OBJSCDT,X
		STA	DMWRK0+2	; Boss y pos add !!
;
		LDA	<SCCV2
;;		CMP	!MAPSMK
;;		BEQ	SCRC010		; Scroll count ok ?
;					; No
		CLC
		ADC	MAPSCDT,X
		STA	<SCCV2		; Scroll count set !!
;
		CMP	!MAPSMK
		BNE	SCRC020
;;		BEQ	SCRC010		; Scroll count ok ?
;;		BRA	SCRC020
;
SCRC010		EQU	$
		MEM8
		SEP	#00100000B	; Memory 8bit mode
		STZ	!MAPLEV		; Now scroll flag clear
;
;;                JSL	>MPDP620		EQU	$
;;		JMP	SCRCTAD
;;		BRA	SCRC100
;
SCRC020		EQU	$
;
		MEM8
		IDX8
		SEP	#00110000B	; Memory,Index 8bit mode
;
		RTL
;
;
;====== Player position =======
;
DMAPPL200	EQU	$
;
		PHB
		PHK
		PLB			; PBR=>DBR
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#00FH
		STA	<WORK2
		CLC
		ADC	<FLORNO
		STA	<WORK1
		STA	<WORK3
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
		STZ	<WORK0
		STZ	<WORKE
		JSR	PLFLDP
;
		INC	<WORK0
SCRC100		EQU	$
		JSR	DMPWAKUST
;
		INC	<WORKE
		LDA	<WORK0
		CMP	#002H*4+1
		BNE	SCRC100
;
		JSR	DMPOAMSET
;
		INC	<WORK0
		JSR	BOSXY
;
	JSR	FLORST
;
		JSR	FLNOOMST
;
		PLB			; DBR reset
;
		RTL
;
;
; ------------------------------------------------------------------
;
;
;************************************************************************
;*		OAM SET ( player floor position )			*
;************************************************************************
;
FLDPX		EQU	$
		BYTE	019H,04CH
;
PLFLDP		EQU	$
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDA	#004H
		SEC
		SBC	<WORK2
		BMI	FLDP100
;
		CLC
		ADC	<WORK3
		STA	<WORK3
;;;		LDA	<WORK2
;;;		BNE	FLDP100
;
		LDA	TOWERDT,X
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	#004H
		BMI	FLDP100
;
		SEC
		SBC	<WORK3
		EOR	#0FFH
		INC	A
		STA	<WORK3
FLDP100		EQU	$
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
;.'91/.9/18.[WED]		LDA	<FCNT
;.'91/.9/18.[WED]		AND	#00111111B
;.'91/.9/18.[WED]		CMP	#0FH
;.'91/.9/18.[WED]		BCC	FLDP1F0		; hyouji ? [ no:FLDP1F0 ]
;.'91/.9/18.[WED]	;
		LDX	<WORK0
;
		LDA	#00000010B
		STA	!OAMSB,X		; oamsub set
;
		TXA
		ASL	A
		ASL	A
		TAX
;
		LDA	FLDPX
		STA	!OAM+000H,X		; X position set
;
		LDY	<WORK3
		LDA	FLNOYADD,Y
		SEC
		SBC	#4
		STA	!OAM+001H,X		; Y position set
;
		STZ	!OAM+002H,X		; char No. set
;
		LDA	#00111110B
	LDY	!PCGCKF
	BEQ	FLDP180		; atoribuut change ? [ no:FLDP180 ]
;
	LDA	#00110000B
FLDP180	EQU	$
		STA	!OAM+003H,X		; atoribuut set
;
FLDP1F0	EQU	$
		RTS
;
;
;************************************************************************
;*		OAM SET ( player position )				*
;************************************************************************
;
DMAPCHNO	EQU	$
		BYTE	034H,035H,036H,034H
		BYTE	031H,032H,033H,032H
;
DMOMATOR	EQU	$
		BYTE	00111001B,00111011B,00111101B,00111011B
		BYTE	00111011B,00111011B,00111011B,00111011B
;
DMPOAMSET	EQU	$
		LDX	<WORK0
;
		LDA	#00000000B
		STA	!OAMSB,X		; oamsub set
;
		TXA
		ASL	A
		ASL	A
		TAX
;
		LDA	!MPLKPX
		SEC
		SBC	#3
		STA	!OAM+000H,X		; X position set
;
; '91/ 4/ 2 ::		STZ	<WORKF
; '91/ 4/ 2 ::		LDA	!MPLKPY
; '91/ 4/ 2 ::		STA	<WORKC
; '91/ 4/ 2 ::		LDA	!MPLKPY+1
; '91/ 4/ 2 ::		STA	<WORKD
; '91/ 4/ 2 ::;
; '91/ 4/ 2 ::		LDA	<WORK1
; '91/ 4/ 2 ::		CMP	<WORK0
; '91/ 4/ 2 ::		BEQ	DMPOMST100		; floor No = ?
; '91/ 4/ 2 ::;						; no !
; '91/ 4/ 2 ::		BPL	DMPOMST000		; floor No < ?
; '91/ 4/ 2 ::;						; no !
; '91/ 4/ 2 ::;						; floor No > !!!
; '91/ 4/ 2 ::		LDA	<WORK0
; '91/ 4/ 2 ::		SEC
; '91/ 4/ 2 ::		SBC	<WORK1
; '91/ 4/ 2 ::		STA	<WORK2
; '91/ 4/ 2 ::		LDA	#0A0H
; '91/ 4/ 2 ::		STA	<WORK4
; '91/ 4/ 2 ::		LDA	#0FFH
; '91/ 4/ 2 ::		STA	<WORK5
; '91/ 4/ 2 ::		BRA	DMPOMST050
; '91/ 4/ 2 ::;
; '91/ 4/ 2 ::DMPOMST000	EQU	$
; '91/ 4/ 2 ::		SEC
; '91/ 4/ 2 ::		SBC	<WORK0
; '91/ 4/ 2 ::		STA	<WORK2
; '91/ 4/ 2 ::		LDA	#060H
; '91/ 4/ 2 ::		STA	<WORK4
; '91/ 4/ 2 ::		STZ	<WORK5
; '91/ 4/ 2 ::DMPOMST050	EQU	$
; '91/ 4/ 2 ::		STZ	<WORK3
; '91/ 4/ 2 ::		JSR	DMPLYPOS
; '91/ 4/ 2 ::		INC	<WORKF
; '91/ 4/ 2 ::		INC	<WORKF
; '91/ 4/ 2 ::		INC	<WORKF
; '91/ 4/ 2 ::		INC	<WORKF
;
DMPOMST100	EQU	$
; '91/ 4/ 2 ::		LDA	<WORKD
		LDA	!MPLKPY+1
		BEQ	DMOMST000
;
		LDA	#0F0H
		BRA	DMOMST010
;
DMOMST000	EQU	$
; '91/ 4/ 2 ::		LDA	<WORKC
		LDA	!MPLKPY
DMOMST010	EQU	$
		SEC
		SBC	#3
		STA	!OAM+001H,X		; Y position set
;
		LDA	<FCNT
		AND	#00001100B
		LSR	A
		LSR	A
; '91/ 4/ 2 ::		CLC
; '91/ 4/ 2 ::		ADC	<WORKF
		TAY
DMOMST020	EQU	$
;;;		LDA	DMAPCHNO,Y
		LDA	DMAPCHNO
		STA	!OAM+002H,X		; char No. set
		LDA	DMOMATOR,Y
		STA	!OAM+003H,X		; atoribuut set
;
		RTS
;
;
; '91/ 4/ 2 ::DMPLYPOS	EQU	$
; '91/ 4/ 2 ::;
; '91/ 4/ 2 ::		MEM16
; '91/ 4/ 2 ::		REP	#00100000B		; memory 16bit mode
; '91/ 4/ 2 ::;
; '91/ 4/ 2 ::DMPLY000	EQU	$
; '91/ 4/ 2 ::		LDA	<WORKC
; '91/ 4/ 2 ::		CLC
; '91/ 4/ 2 ::		ADC	<WORK4
; '91/ 4/ 2 ::		STA	<WORKC
; '91/ 4/ 2 ::;
; '91/ 4/ 2 ::		DEC	<WORK2
; '91/ 4/ 2 ::		BNE	DMPLY000
; '91/ 4/ 2 ::;
; '91/ 4/ 2 ::		MEM8
; '91/ 4/ 2 ::		SEP	#00100000B		; memory 8bit mode
; '91/ 4/ 2 ::;
; '91/ 4/ 2 ::		RTS
;
;
;************************************************************************
;*		OAM SET ( waku )					*
;************************************************************************
;
WAKUADDX	EQU	$
		BYTE	0F7H,008H,0F7H,008H
;
WAKUADDY	EQU	$
		BYTE	0F8H,0F8H,009H,009H
;
WCHNO		EQU	$
;
WATORI		EQU	$
		BYTE	11110001B,10110001B,01110001B,00110001B
;
WCOL		EQU	$
		BYTE	00001100B,00001100B
		BYTE	00001000B,00001010B
;
DMPWADD		EQU	$
		WORD	00000H,00060H,000C0H,00120H
		WORD	00180H,001E0H,00240H
;
DMPWAKUST	EQU	$
		LDY	#003H
DMPW000		EQU	$
		LDA	<WORK0
		TAX
		LDA	#00000010B
		STA	!OAMSB,X		; oamsub set !!
;
		TXA
		ASL	A
		ASL	A
		TAX
;
		LDA	!MPLKPX
		AND	#0F0H
		CLC
		ADC	WAKUADDX,Y
		STA	!OAM+000H,X		; x position set !!
;
		PHY
		LDA	<WORKE
		ASL	A
		TAY
		LDA	!TLRAM2
		CLC
		ADC	YADDDT,Y
		STA	<WORKF
		PLY
		CLC
		ADC	WAKUADDY,Y
;
		STA	!OAM+001H,X		; y position set !!
;
		STZ	!OAM+002H,X		; char No. set !!
;
		LDA	WATORI,Y
		STA	<WORKC
;
		PHY
		LDA	<FCNT
		LSR	A
		LSR	A
;;;		LSR	A
;;;		LSR	A
;;;		AND	#00000011B
		AND	#00000001B
		TAY
;
		INC	<WORKF
		LDA	!MPLKPY
		INC	A
		AND	#0F0H
		CMP	<WORKF
		BNE	DMPW020
;
		LDA	!MPLKPY+1
		BNE	DMPW020
;
		INY
		INY
;;;		INY
;;;		INY
DMPW020		EQU	$
		LDA	<WORKC
		ORA	WCOL,Y
		STA	!OAM+003H,X		; atoribuut set !!
		PLY
;
		INC	<WORK0
		DEY
		BPL	DMPW000
;
; '91/ 6/ 5 ::WED:::		IDX8
; '91/ 6/ 5 ::WED:::		SEP	#00010000B		; index 8bit mode !!
; '91/ 6/ 5 ::WED:::;
		RTS
;
;
;************************************************************************
;*		OAM SET ( floor no )					*
;************************************************************************
;
FLORST	EQU	$
	IDX16
	REP	#00010000B	; index 16bit mode !!
;
	LDX	!DJNNO
	LDA	TOWERDT,X
	PHA
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	STA	<WORK2		; chijyou kaisuu => work2
	PLA
	AND	#0FH
	STA	<WORK3		; chika kaisuu => work3
;
	IDX8
	SEP	#00010000B	; index 8bit mode !!
;
	LDY	#07
	LDA	<WORK2
	CLC
	ADC	<WORK3
	CMP	#08
	BEQ	FLOR080		; soukaisuu 8kai ? [ yes:FLOR080 ]
;
	LDA	<WORK2
	CMP	#04
	BPL	FLOR080		; chijyou 4kai ijyou ? [ yes:FLOR080 ]
;
	DEY
	LDX	#03
	STX	<WORK4
FLOR020	EQU	$
	CMP	<WORK4
	BEQ	FLOR040		; loop end ? [ yes:FLOR040 ]
;
	DEY
	DEC	<WORK4
	BNE	FLOR020		; loop end ? [ no:FLOR020 ]
;
FLOR040	EQU	$
	LDA	<WORK3
	CMP	#05
	BMI	FLOR080		; chika 4kai ika ? [ yes:FLOR080 ]
;
	LDX	#05
	STX	<WORK4
FLOR050	EQU	$
	CMP	<WORK4
	BEQ	FLOR080		; chijyou 4kai ijyou ? [ yes:FLOR080 ]
;
	INY
	INC	<WORK4
	CMP	#08
	BNE	FLOR050		; loop end ? [ no:FLOR050 ]
;
FLOR080	EQU	$
	LDA	FLNOYADD,Y
	INC	A
	STA	<WORK4
	DEC	<WORK2
	LDA	<WORK3
	EOR	#0FFH
	INC	A
	STA	<WORK3
;
FLOR0A0	EQU	$
	LDX	<WORK0
	LDA	#00
	STA	!OAMSB+0,X
	STA	!OAMSB+1,X
;
	TXA
	ASL	A
	ASL	A
	TAX
	LDA	#30H
	STA	!OAM+0,X	; x position set !!
	LDA	#38H
	STA	!OAM+4,X	;       "
;
	LDA	<WORK4
	STA	!OAM+1,X	; y     "
	STA	!OAM+5,X	;       "
	CLC
	ADC	#10H
	STA	<WORK4		; y position next
;
	LDA	#00111101B
	STA	!OAM+3,X	; atoribuut set !!
	STA	!OAM+7,X	;       "
;
	LDA	#1CH
	STA	!OAM+2,X	; chara No. initial set !!
	LDA	#1DH
	STA	!OAM+6,X	;   "          "
;
	LDY	<WORK2
	BMI	FLOR0C0		; chika ? [ yes:FLOR0C0 ]
;
	LDA	FLNCHNO,Y
	STA	!OAM+2,X	; chara No. set !!
	BRA	FLOR0E0
;
FLOR0C0	EQU	$
	TYA
	EOR	#0FFH
	TAY
	LDA	FLNCHNO,Y
	STA	!OAM+6,X	; chara No. set !!
FLOR0E0	EQU	$
	INC	<WORK0
	INC	<WORK0
	DEC	<WORK2
	LDA	<WORK2
	INC	A
	CMP	<WORK3
	BNE	FLOR0A0		; loop end ? [ no:FLOR0A0 ]
;
	RTS
;----------------------------------------------------------
;
FLNOYADD	EQU	$
		BYTE	0BBH,0ABH,09BH,08BH,07BH,06BH,05BH,04BH
;
FLNCHNO		EQU	$
		BYTE	01EH,01FH,020H,021H,022H,023H,024H,025H
;
FNATORI		EQU	$
		BYTE	00111101B	; '91/ 6/20 [THU] ::	,00111011B,00111001B
;
FLNOOMST	EQU	$
		LDA	<WORK0
		STA	<WORK5
		LDA	!MAPBGP
		STA	<WORK3
		LDY	#00
;
		IDX16
		REP	#00010000B		; index 16bit mode !!
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2
		LDA	TOWERDT,X
		AND	#00FH
;
		IDX8
		SEP	#00010000B		; index 8bit mode !!
;
		CLC
		ADC	<WORK2
		CMP	#1
		BEQ	FNOM
;
		INC	<WORK5
		INC	<WORK5
		DEC	<WORK3
		LDY	#001H
FNOM		EQU	$
		STY	<WORK2
FNOM000		EQU	$
;.'91/.9/18.[WED]			LDX	<WORK5
;.'91/.9/18.[WED]			LDA	#00000000B
;.'91/.9/18.[WED]			STA	!OAMSB+000H,X
;.'91/.9/18.[WED]			STA	!OAMSB+001H,X
;.'91/.9/18.[WED]	;
;.'91/.9/18.[WED]			TXA
;.'91/.9/18.[WED]			ASL	A
;.'91/.9/18.[WED]			ASL	A
;.'91/.9/18.[WED]			TAX
;.'91/.9/18.[WED]	;
;.'91/.9/18.[WED]			LDA	#01CH
;.'91/.9/18.[WED]			STA	!OAM+002H,X		; char No. initial set !
;.'91/.9/18.[WED]			LDA	#01DH
;.'91/.9/18.[WED]			STA	!OAM+006H,X		; char No. initial set !
;.'91/.9/18.[WED]	;
;.'91/.9/18.[WED]			LDA	#030H
;.'91/.9/18.[WED]			STA	!OAM+000H,X		; xpos set !!!
;.'91/.9/18.[WED]			CLC
;.'91/.9/18.[WED]			ADC	#008H
;.'91/.9/18.[WED]			STA	!OAM+004H,X		; xpos set !!!
;.'91/.9/18.[WED]	;
;.'91/.9/18.[WED]			LDA	<WORK3
;.'91/.9/18.[WED]			BPL	FNOM100			; chijyou ?
;.'91/.9/18.[WED]	;						; no !
;.'91/.9/18.[WED]			EOR	#0FFH
;.'91/.9/18.[WED]			TAY
;.'91/.9/18.[WED]			LDA	FLNCHNO,Y
;.'91/.9/18.[WED]			STA	!OAM+006H,X		; chra No. set !!!
;.'91/.9/18.[WED]			LDY	#000H
;.'91/.9/18.[WED]			BRA	FNOM200
;.'91/.9/18.[WED]	;
;.'91/.9/18.[WED]	FNOM100		EQU	$
;.'91/.9/18.[WED]			TAY
;.'91/.9/18.[WED]			LDA	FLNCHNO,Y
;.'91/.9/18.[WED]			STA	!OAM+002H,X		; chra No. set !!!
;.'91/.9/18.[WED]			LDY	#001H
;.'91/.9/18.[WED]	FNOM200		EQU	$
;.'91/.9/18.[WED]			LDA	FNATORI
;.'91/.9/18.[WED]			STA	!OAM+003H,X		; atoribuut set !!!
;.'91/.9/18.[WED]			STA	!OAM+007H,X		; atoribuut set !!!
;.'91/.9/18.[WED]			PHX
		LDX	<WORK2
		LDA	FNATORI
		STA	<WORKE,X
;.'91/.9/18.[WED]			PLX
;.'91/.9/18.[WED]	;
;.'91/.9/18.[WED]			PHX
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		AND	#00FH
		STA	<WORK1
		CLC
		ADC	<WORK3
		STA	<WORK0
;
		LDA	#004H
		SEC
		SBC	<WORK1
		BMI	FNOM500
;
		CLC
		ADC	<WORK0
		STA	<WORK0
;
		LDA	TOWERDT,X
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	#004H
		BMI	FNOM500
;
		SEC
		SBC	<WORK0
		EOR	#0FFH
		INC	A
		STA	<WORK0
FNOM500		EQU	$
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
;.'91/.9/18.[WED]			PLX
;.'91/.9/18.[WED]	;
;.'91/.9/18.[WED]			LDY	<WORK0
;.'91/.9/18.[WED]			LDA	FLNOYADD,Y
;.'91/.9/18.[WED]			STA	!OAM+001H,X             ; ypos set !!!
;.'91/.9/18.[WED]			STA	!OAM+005H,X             ; ypos set !!!
;.'91/.9/18.[WED]	;
		DEC	<WORK5
		DEC	<WORK5
		INC	<WORK3
		DEC	<WORK2
		BMI	FNOM300
;
		BRL	FNOM000
;
FNOM300		EQU	$
		LDA	<FCNT
		AND	#010H
		BNE	BLOBJST
;
		RTS
;
;
BLOMADD		EQU	$
;;		BYTE	00CH,014H
		HEX	00,08
;
BLCHNO		EQU	$
		BYTE	037H,038H,038H,037H
;
BLOBJST		EQU	$
		LDY	<WORK0
		LDA	FLNOYADD,Y
		SEC
		SBC	#004H
		STA	<WORK2
		CLC
		ADC	#010H
		STA	<WORK3
;
		LDY	#00
;
		IDX16
		REP	#00010000B		; index 16bit mode !!
;
		LDX	!DJNNO
		LDA	TOWERDT,X
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORKD
		LDA	TOWERDT,X
		AND	#00FH
;
		IDX8
		SEP	#00010000B		; index 8bit mode !!
;
		CLC
		ADC	<WORKD
		CMP	#1
		BEQ	BLOMST
;
		LDY	#001H
BLOMST		EQU	$
		STY	<WORKD
BLOMST000	EQU	$
		LDA	#028H
		STA	<WORK1
		LDA	#003H
		STA	<WORKC
		LDX	<WORKD
		LDA	BLOMADD,X
		TAY
BLOMST050	EQU	$
		LDA	#000H
		STA	!OAMSB+040H,Y
		STA	!OAMSB+044H,Y
		PHY
		TYA
		ASL	A
		ASL	A
		TAY
		LDA	<WORK1
		STA	!OAM+100H,Y		; xpos set !
		STA	!OAM+110H,Y		; xpos set !
;
		LDA	<WORK2,X
		STA	!OAM+101H,Y		; ypos set !
		CLC
		ADC	#008H
		STA	!OAM+111H,Y		; ypos set !
;
		PHX
		LDX	<WORKC
		LDA	BLCHNO,X
		STA	!OAM+102H,Y		; char No. set !
		STA	!OAM+112H,Y		; char No. set !
		PLX
;
		PHY
		LDA	<WORKE,X
		LDY	<WORKC
		BNE	BLOMST080
;
		ORA	#01000000B
BLOMST080	EQU	$
		PLY	
		STA	!OAM+103H,Y		; atoribuut set !
		ORA	#10000000B
		STA	!OAM+113H,Y		; atoribuut set !
;
		PLY
		INY
		LDA	<WORK1
		CLC
		ADC	#008H
		STA	<WORK1
		DEC	<WORKC
		BPL	BLOMST050
;
		DEC	<WORKD
		BPL	BLOMST000
;
		RTS
;
;
; ------------------------------------------------------------------
;************************************************************************
;*		OAM SET ( Boss position )				*
;************************************************************************
;
;------ boss cheak
BOSXY	EQU	$
;
	IDX16
	REP	#00010000B		; index 16bit mode
;
	LDX	!DJNNO
;
	MEM16
	REP	#00100000B		; memory 16bit mode !!
;
;------ boss dead cheak --------------------
	PHX
	LDA	SBSRMD1,X
	ASL	A
	TAX
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDA	>DJNTBL+1,X
	PLX
	AND	#08H
	BNE	BOS010		; boss dead ? [ yes:BOS010 ]
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;--------------------------------------------
;
	LDA	>ITMTBLA
	AND	>BITCD0,X
;
	MEM8
	SEP	#00100000B		; memory 8bit mode !!
;
	BEQ	BOS010			; Do you have a kompas ? [ no:BOS010 ]
;
	LDA	BOSFL+1,X
	BPL	BOS020
;
BOS010	EQU	$
;
	IDX8
	SEP	#00010000B		; index 8bit mode
;
	RTS
;
;
	IDX16
;
;
BOS020	EQU	$
	PHX
	JSR	BSFLOR
	PLX
;
;;;;;;;;	LDA	#000H
;;;;;;;;	XBA
;;;;;;;;	LDA	TOWERDT,X
;;;;;;;;	AND	#00FH
;;;;;;;;	CLC
;;;;;;;;	ADC	BOSFL,X
;;;;;;;;;
;;;;;;;;	MEM16
;;;;;;;;	REP	#00100000B		; memory 16bit mode !!
;;;;;;;;;
;;;;;;;;	ASL	A
;;;;;;;;	TAY
;;;;;;;;;
;;;;;;;;	LDA	TWDTADD2,X
;;;;;;;;	CLC
;;;;;;;;	ADC	TWDTADD1,Y
;;;;;;;;	STA	<WORKE
;;;;;;;;;
;;;;;;;;	MEM8
;;;;;;;;	SEP	#00100000B		; memory 8bit mode !!
;;;;;;;;;
;;;;;;;;	LDA	#040H
;;;;;;;;	STA	<WORK2
;;;;;;;;	STA	<WORK3
;;;;;;;;	LDY	#5*5*2-1
;;;;;;;;BOS040	EQU	$
;;;;;;;;	LDA	(<WORKE),Y
;;;;;;;;	CMP	#080H
;;;;;;;;	BEQ	BOS080
;;;;;;;;;
;;;;;;;;	LDA	<WORK2
;;;;;;;;	SEC
;;;;;;;;	SBC	#010H
;;;;;;;;	STA	<WORK2
;;;;;;;;	BPL	BOS060
;;;;;;;;;
;;;;;;;;	LDA	#040H
;;;;;;;;	STA	<WORK2
;;;;;;;;	LDA	<WORK3
;;;;;;;;	SEC
;;;;;;;;	SBC	#010H
;;;;;;;;	STA	<WORK3
;;;;;;;;BOS060	EQU	$
;;;;;;;;	DEY
;;;;;;;;	DEY
;;;;;;;;	BPL	BOS040
;;;;;;;;;
;;;;;;;;BOS080	EQU	$
	IDX8
	SEP	#00010000B		; index 8bit mode
;
	LDA	<FCNT
	AND	#00001111B
	CMP	#0AH
	BCS	BOS0F0		; hyouji ? [ no:BOS0F0 ]
;
	LDY	<WORK0
	LDA	#00
	STA	!OAMSB,Y		; oamsb set !!
	TYA
	ASL	A
	ASL	A
	TAY
;
	LDA	BOSRM+1,X
	CLC
;;;;;;;;	ADC	<WORK2
	ADC	DMWRK0
	CLC
	ADC	#090H
	STA	!OAM,Y			; x position set !!
;
	LDA	DMWRK0+3
	BEQ	BOS0C0		; dsp in ? [ yes:BOS0C0 ]
;
;;;;;;;;	LDA	YADDDT
;;;;;;;;	STA	<WORKD
;;;;;;;;	LDA	!MAPBGP
;;;;;;;;	SEC
;;;;;;;;	SBC	BOSFL,X
;;;;;;;;	BEQ	BOS0C0
;;;;;;;;;
;;;;;;;;	CMP	#001H
;;;;;;;;	BEQ	BOS0A0
;;;;;;;;;
BOS090	EQU	$
	LDA	#0F0H
	BRA	BOS0D0
;
BOS0A0	EQU	$
;;;;;;;;	LDA	YADDDT+2
;;;;;;;;	STA	<WORKD
BOS0C0	EQU	$
;;;;;;;;	LDA	!MAPLEV
;;;;;;;;	BNE	BOS090
;
	LDA	BOSRM,X
	CLC
	ADC	DMWRK0+2
;;;;;;;;	ADC	<WORK3
;;;;;;;;	CLC
;;;;;;;;	ADC	<WORKD
BOS0D0	EQU	$
	STA	!OAM+1,Y		; y position set !!
;
;;;	LDA	<FCNT
;;;	AND	#00001100B
;;;	LSR	A
;;;	LSR	A
;;;	TAX
;
	LDA	BSCHR
	STA	!OAM+2,Y		; chara No. set !!
;
	LDA	BSATOR
	STA	!OAM+3,Y		; atoribuut set !!
;
	INC	<WORK0
;
BOS0F0	EQU	$
	RTS
;
;
BSCHR	EQU	$
	HEX	031
;
BSATOR	EQU	$
	BYTE	00110011B
;
;
BOSRM	EQU	$
;		  x y
	WORD	0FFFFH		; DJNNO =  00 (kyoukai chikadou)
	WORD	0FFFFH		; DJNNO =  02 (shiro)
	WORD	00808H		; DJNNO =  04 (omote sinden)
	WORD	00008H		; DJNNO =  06 (sabaku shinden)
	WORD	00000H		; DJNNO =  08 (shisai's tower)
	WORD	00008H		; DJNNO =  0A (ura hokora)
	WORD	00808H		; DJNNO =  0C (ura shinden)
	WORD	00008H		; DJNNO =  0E (ura numa)
	WORD	00808H		; DJNNO =  10 (ura mori)
	WORD	00800H		; DJNNO =  12 (ura mizuumi no chika tou)
	WORD	00404H		; DJNNO =  14 (omote yama no tou)
	WORD	00808H		; DJNNO =  16 (machi)
	WORD	00008H		; DJNNO =  18 (kameiwa)
	WORD	00008H		; DJNNO =  1A (ura yama no tou)
;
BOSFL	EQU	$
	WORD	0FFFFH		; DJNNO =  00 (kyoukai chikadou)
	WORD	0FFFFH		; DJNNO =  02 (shiro)
	WORD	00001H		; DJNNO =  04 (omote sinden)
	WORD	00001H		; DJNNO =  06 (sabaku shinden)
	WORD	00006H		; DJNNO =  08 (shisai's tower)
	WORD	000FFH		; DJNNO =  0A (ura hokora)
	WORD	000FFH		; DJNNO =  0C (ura shinden)
	WORD	000FFH		; DJNNO =  0E (ura numa)
	WORD	000FEH		; DJNNO =  10 (ura mori)
	WORD	000F9H		; DJNNO =  12 (ura mizuumi no chika tou)
	WORD	00005H		; DJNNO =  14 (omote yama no tou)
	WORD	000FFH		; DJNNO =  16 (machi)
	WORD	000FDH		; DJNNO =  18 (kameiwa)
	WORD	00006H		; DJNNO =  1A (ura yama no tou)
;
;************************************************************************
;*		OAM SET ( Boss floor )					*
;************************************************************************
;
	IDX16
;
BSFLOR	EQU	$
	LDA	TOWERDT,X
	AND	#00FH
	STA	<WORK2		; chika kaisuu set !!
	CLC
	ADC	BOSFL,X
	STA	<WORK3		; boss kaisuu set !!
;
	LDA	#004H
	SEC
	SBC	<WORK2
	BMI	BSF000
;
	CLC
	ADC	<WORK3
	STA	<WORK3
;;;	LDA	<WORK2
;;;	BNE	BSF000
;
	LDA	TOWERDT,X
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	SEC
	SBC	#004H
	BMI	BSF000
;
	SEC
	SBC	<WORK3
	EOR	#0FFH
	INC	A
	STA	<WORK3
BSF000	EQU	$
;
	IDX8
	SEP	#00010000B	; index 8bit mode
;
	LDA	<FCNT
	AND	#00001111B
	CMP	#0AH
	BCS	BSF0F0		; hyouji ? [ no:BSF0F0 ]
;
	LDX	<WORK0
;
	LDA	#00000000B
	STA	!OAMSB,X	; oamsub set
;
	TXA
	ASL	A
	ASL	A
	TAX
;
	LDA	FLDPX+1
	STA	!OAM+000H,X	; X position set
;
	LDY	<WORK3
	LDA	FLNOYADD,Y
	STA	!OAM+001H,X	; Y position set
;
;;;	LDA	<FCNT
;;;	AND	#00001100B
;;;	LSR	A
;;;	LSR	A
;;;	TAY
;;;	LDA	DMAPCHNO+4,Y
;;;	STA	!OAM+002H,X	; char No. set
;;;;
;;;	LDA	DMOMATOR,Y
;;;	STA	!OAM+003H,X	; atoribuut set
	LDA	BSCHR
	STA	!OAM+2,X		; chara No. set !!
;
	LDA	BSATOR
	STA	!OAM+3,X		; atoribuut set !!
;
	INC	<WORK0
;
BSF0F0	EQU	$
	IDX16
	REP	#00010000B	; index 16bit mode !!
;
	RTS
;
;*************	OAM SET END ************
;
;
;---------------------------------------; scroll
MPDP700		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	MAPSMK
		CLC
		ADC     <SCCV2
		STA     <SCCV2		; scroll move
;
		LDA	MAPSMK		; OBJ Y SET( LINK POSITION )
		EOR	#0FFFFH
		INC	A
		CLC
		ADC	MPLKPY
		STA	MPLKPY
;
		MEM8
		IDX8
		SEP	#00110000B
;
;;;		JSR	MAPLKP		;OBJ SET
;
		DEC	MAPSCT
		BNE	MPDP710		;scroll end?
;					;y
		DEC	!MAPDMD		;jsrsub -1
;
MPDP710		EQU	$
		RTL
;
;
;
;---------------------------------------; game BG. display
MPDP800		EQU	$
		LDA	<WD420C
		PHA			; (A) push
		STZ	420CH
		STZ	<WD420C
;
		JSL	>VRAMCL		; VCL
;
		LDA	>BKDPMN
		STA	<DPMAIN
		LDA	>BKDPSB
		STA	>DPSUB		; DPMAIN,DPSUB pull
;
;// 03.01.31 //		LDA	>BKCHBK
;// 03.01.31 //		STA	!CHARBK
		LDA	>BKCHNO
		STA	!CHIKNO
		LDA	>BKROJC
		STA	!ROBJCPT
		LDA	>BKRBGC
		STA	!RBGCPT
		JSL	>CHSCHNG	; BG. character reset
		STZ	!CGSTPT+1	; (CGRAM) set
		STZ	!BG3BGC
;
;// 03.05.20 //		LDA	<LNMODE
;// 03.05.20 //		CMP	#SWMD
;// 03.05.20 //		BNE	MPDP820		; player swiming ?
;// 03.05.20 //;					; yes
;// 03.05.20 //		JSL	>PWTRCGS0
;// 03.05.20 //MPDP820		EQU	$
		JSL	>MTRON2		; mater BG3. write
;// 03.06.05 //		JSR	ITEMS00		; item set
;
		STZ	!SCRLFG
		STZ	!WBFPNT
MPDP840		EQU	$
		JSL	>WBUFS1
		JSL	>DJBGWT		; init. BG.1 write
;
		JSL	>WBUFS0
		JSL	>DJBGWT		; init. BG.2 write
;
		LDA	!WBFPNT
		CMP	#010H
		BNE	MPDP840		; end ?
;					; yes
		STZ	<BGWTFG
		STZ	<JRSBPT
;
		PLA			; (A) pull
		STA	<WD420C
;
;// 03.03.15 //		JSL	>MTRDSP		; mater display
;// 03.03.15 //;
;// 03.03.15 //		LDX	#003H
;// 03.03.15 //		LDA	>DARKFG
;// 03.03.15 //		BEQ	MPDP860		; now dark ?
;// 03.03.15 //;					; yes
;// 03.03.15 //		LDA	!LGTWST
;// 03.03.15 //		CMP	#003H
;// 03.03.15 //		BCS	MPDP860		; light-wipe on ?
;// 03.03.15 //;					; yes
;// 03.03.15 //		TAX
;// 03.03.15 //MPDP860		EQU	$
;// 03.03.15 //		LDA	>CGEDP0,X
;// 03.03.15 //		STA	>CCNGED
;// 03.03.15 //		LDA	#01EH
;// 03.03.15 //		STA	>CCNGCT
;// 03.03.15 //		LDA	#002H
;// 03.03.15 //		STA	>CCNGFG
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
MPDP870		EQU	$
		LDA	>CGBKUP+000H,X
		STA	>CGWORK+000H,X
		LDA	>CGBKUP+080H,X
		STA	>CGWORK+080H,X
		LDA	>CGBKUP+100H,X
		STA	>CGWORK+100H,X
		LDA	>CGBKUP+180H,X
		STA	>CGWORK+180H,X
		INX
		INX
		CPX	#080H
		BNE	MPDP870		;
;					;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>DKRMCG
		TSB	<WD2132R
		TSB	<WD2132G
		TSB	<WD2132B	; R.G.B. color set
;
;
		LDA	#010H
		STA	!SOUND3		; <sound3>
		LDA	#0F3H
		STA	!SOUND0		; <sound0>
;
		JSL	>TYCNCST	; tama-yuka char. set
;
		INC	<CGVMAF
		INC	!MAPDMD
		STZ	<BLKFLG
		STZ	!GMAPDF
		RTL
;
;
;---------------------------------------; character set
MPDPB00		EQU	$
		JSL	>SWYKCNG	; swich-yuka reset
		INC	!MAPDMD
		RTL
;
;
;
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;	map data
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
DMAP000		EQU	$		; tategiri map
;
; '91.3.6 wed:		BYTE	012H,023H,040H,00EH
; '91.3.6 wed:		WORD	     01728H
; '91.3.6 wed:		BYTE	012H,043H,040H,00EH
; '91.3.6 wed:		WORD	     01729H
; '91.3.6 wed:		BYTE	012H,063H,040H,00EH
; '91.3.6 wed:		WORD	     0172AH
; '91.3.6 wed:		BYTE	012H,083H,040H,00EH
; '91.3.6 wed:		WORD	     0172BH
; '91.3.6 wed:		BYTE	012H,0A3H,040H,00EH
; '91.3.6 wed:		WORD	     0172CH
; '91.3.6 wed:		BYTE	012H,0C3H,040H,00EH
; '91.3.6 wed:		WORD	     0172DH
; '91.3.6 wed:		BYTE	012H,0E3H,040H,00EH
; '91.3.6 wed:		WORD	     0172EH
; '91.3.6 wed:		BYTE	013H,003H,040H,00EH
; '91.3.6 wed:		WORD	     0172EH
; '91.3.6 wed:		BYTE	013H,023H,040H,00EH
; '91.3.6 wed:		WORD	     0172EH
; '91.3.6 wed:		BYTE	013H,043H,040H,00EH
; '91.3.6 wed:		WORD	     0172EH
;
;;;		BYTE	0FFH
;
MPGRDT		EQU	$
		WORD	01B28H,01B29H,01B2AH,01B2BH
		WORD	01B2CH,01B2DH,01B2EH
;
DMAPYAMA	EQU	$		; tategiri map yama
		BYTE	010H,0AAH,000H,001H
		WORD	     01B2FH
		BYTE	010H,0C9H,000H,003H
		WORD	     01B2FH,01B2EH
		BYTE	010H,0E5H,000H,00BH
		WORD	     01B2FH,01B2EH,05B2FH,01B2FH
		WORD	     01B2EH,01B2EH
		BYTE	011H,003H,000H,001H
		WORD	     01B2FH
		BYTE	011H,004H,040H,00CH
		WORD	     01B2EH
;
;.'91/.9/24.[TUE]			BYTE	011H,023H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	011H,043H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	011H,063H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	011H,083H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	011H,0A3H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	011H,0C3H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	011H,0E3H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,003H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,023H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,043H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,063H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,083H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,0A3H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,0C3H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	012H,0E3H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]			BYTE	013H,003H,040H,00EH
;.'91/.9/24.[TUE]			WORD	     01B2EH
;.'91/.9/24.[TUE]	;
;;;		BYTE	0FFH
;
DMAPMIZU	EQU	$
;
; '91.3.6 wed:		BYTE	012H,023H,040H,00EH
; '91.3.6 wed:		WORD	     01B28H
; '91.3.6 wed:		BYTE	012H,043H,040H,00EH
; '91.3.6 wed:		WORD	     01B29H
; '91.3.6 wed:		BYTE	012H,063H,040H,00EH
; '91.3.6 wed:		WORD	     01B2AH
; '91.3.6 wed:		BYTE	012H,083H,040H,00EH
; '91.3.6 wed:		WORD	     01B2BH
; '91.3.6 wed:		BYTE	012H,0A3H,040H,00EH
; '91.3.6 wed:		WORD	     01B2CH
; '91.3.6 wed:		BYTE	012H,0C3H,040H,00EH
; '91.3.6 wed:		WORD	     01B2DH
; '91.3.6 wed:		BYTE	012H,0E3H,040H,00EH
; '91.3.6 wed:		WORD	     01B2EH
; '91.3.6 wed:		BYTE	013H,003H,040H,00EH
; '91.3.6 wed:		WORD	     01B2EH
; '91.3.6 wed:		BYTE	013H,023H,040H,00EH
; '91.3.6 wed:		WORD	     01B2EH
; '91.3.6 wed:		BYTE	013H,043H,040H,00EH
; '91.3.6 wed:		WORD	     01B2EH
;
;;;		BYTE	0FFH
;
DMAP100		EQU	$ 
;
;
;************************************************************************
;*	MAP UNIT DATA	( * --> NO USE )				*
;************************************************************************
MAPUNIT		EQU	$
;
; == [ KYOKAI CHIKADOU ] =================================
;
		WORD	00B61H,05361H,08B61H,08B62H ; 0  (B1)
		WORD	00B60H,00B63H,08B60H,00B64H ; 1
		WORD	00B00H,00B00H,00B65H,00B66H ; 2
		WORD	00B67H,04B67H,09367H,0D367H ; 3
		WORD	00B60H,05360H,08B60H,0CB60H ; 4  (1F)
		WORD	00B6AH,04B6AH,04B6DH,00B6DH ; 5 KYOUKAI
		WORD	01368H,01369H,00B00H,00B00H ; 6
		WORD	00B6AH,0136BH,00B6CH,00B6DH ; 7  (2F)
;
; == [ SHIRO NAIBU . ROU ENO CHIKADOU ] ==================
;
		WORD	0136EH,04B6EH,00B00H,00B00H ; 8  (B3)
		WORD	0136FH,00B00H,00B00H,00B00H ; 9  (B2)
		WORD	01340H,00B00H,00B78H,01744H ; A  (B1) takara
		WORD	0536DH,0136DH,04B76H,00B76H ; B
		WORD	00B70H,00B71H,00B72H,08B71H ; C
		WORD	00B75H,00B76H,08B75H,08B76H ; D
		WORD	00B00H,00B53H,00B00H,00B55H ; E  (1F)
		WORD	01354H,05354H,00B00H,00B00H ; F
		WORD	04B53H,00B00H,00B56H,00B57H ; 10
		WORD	00B00H,00B59H,00B00H,0135EH ; 11
		WORD	0135AH,0135BH,0135FH,0535FH ; 12
		WORD	00B5CH,00B5DH,0535EH,0CB58H ; 13
		WORD	00B50H,04B50H,01352H,05352H ; 14 (2F)
;
; == [ SHINDEN ( OMOTE ) ] ===============================
;
		WORD	00B00H,00B40H,01345H,00B46H ; 15 (1F) 
		WORD	08B42H,00B47H,00B42H,00B49H ; 16
		WORD	01348H,05348H,0174AH,0574AH ; 17 takara
		WORD	04B47H,0CB42H,04B49H,04B42H ; 18
		WORD	00B00H,00B4BH,00B00H,00B4DH ; 19
		WORD	00B4CH,04B4CH,00B4EH,04B4EH ; 1A
		WORD	00B51H,00B44H,00B00H,00B00H ; 1B
		WORD	00B4FH,04B4FH,0934FH,0D34FH ; 1C entrance
		WORD	00B00H,00B00H,00B00H,00B40H ; 1D (2F)
		WORD	00B00H,00B41H,00B00H,00B42H ; 1E
		WORD	00B00H,00B00H,00B43H,00B43H ; 1F
		WORD	00B00H,00B00H,09344H,00B00H ; 20
;
; == [ SABAKU SHINDEN ] ==================================
;
		WORD	01340H,00B00H,01341H,00B00H ; 21 (1F) entrance
		WORD	01740H,00B40H,00B42H,00B7DH ; 22 (B1) takara
		WORD	04B7AH,00B7AH,00B7EH,04B7EH ; 23
		WORD	00B40H,08B4DH,04BBAH,00B55H ; 24
		WORD	00B40H,08B55H,01378H,0CB53H ; 25 exit
		WORD	04B76H,04B75H,013BBH,053BBH ; 26 entrance
		WORD	04B7FH,04B42H,00B83H,013BCH ; 27 exit
		WORD	00B00H,00B00H,00B79H,00B00H ; 28 (2F)
		WORD	00B6EH,04B7CH,00B00H,00B41H ; 29
		WORD	01340H,08B55H,00B42H,00B7BH ; 2A
;
; == [ SHISAI NO TOU ] ===================================
;
		WORD	08B42H,09344H,01341H,00B00H ; 2B (2F) entrance
		WORD	00B53H,09344H,08B53H,09344H ; 2C (3F,4F)
		WORD	08B42H,09344H,00B42H,09344H ; 2D (5F)
		WORD	0934DH,00B00H,08B53H,09344H ; 2E (6F)
		WORD	00B00H,00B00H,00B40H,00B00H ; 2F (7F)
		WORD	00B41H,00B00H,01384H,00B00H ; 30
;
; == [ URA HOKORA ( MIZUHIKI ) ] =========================
;
		WORD	00BB8H,013B9H,04B85H,0CB7CH ; 31 (B2)
		WORD	00B87H,013B0H,04B7BH,09344H ; 32
		WORD	00B00H,00B00H,00B40H,00B00H ; 33 (B1)
		WORD	00B91H,05391H,00B9CH,04B9CH ; 34
		WORD	08B42H,01392H,00B93H,01394H ; 35
		WORD	00B95H,00B96H,09395H,08B96H ; 36
		WORD	00B97H,00B98H,08B97H,08B98H ; 37
		WORD	01799H,05799H,09799H,0D799H ; 38 takara
		WORD	04B98H,04B97H,0CB98H,0CB97H ; 39
		WORD	0937BH,00B00H,00B7BH,00B00H ; 3A
		WORD	00BA6H,04BA6H,0CB7AH,08B7AH ; 3B
		WORD	00B8EH,04B8EH,0938EH,0CB8EH ; 3C (1F)
		WORD	0934DH,00B8FH,01390H,05390H ; 3D entrance
;
; == [ URA SHINDEN ] =====================================
;
		WORD	00B00H,00B00H,00B00H,08B48H ; 3E (B1)
		WORD	00B00H,0934EH,00B00H,08B4DH ; 3F
		WORD	08B72H,01346H,00B45H,00B46H ; 40
		WORD	05744H,01744H,00B00H,00B00H ; 41
		WORD	0134DH,00B00H,08B54H,00B00H ; 42
		WORD	01349H,01349H,00B00H,00B00H ; 43
		WORD	00B4BH,08B48H,00B72H,04B72H ; 44
		WORD	00B00H,00B74H,00B00H,00BB0H ; 45 (1F)
		WORD	00B71H,01747H,017AFH,00B4BH ; 46 takara
		WORD	00B6FH,01370H,00B4BH,00B00H ; 47
		WORD	00B6BH,08B6CH,08B6BH,00BADH ; 48
		WORD	00B73H,00B00H,013AEH,00B46H ; 49
		WORD	0176BH,0576BH,00B6AH,04B6AH ; 4A
		WORD	01368H,05368H,01369H,05369H ; 4B entrance
;
; -- < KAMEIWA USE > --------------
		WORD	08B4EH,00B00H,09354H,00B00H ; 4C (B2)
		WORD	00B00H,00B00H,00B00H,05377H ; 4D (B1) entrance
; ---------------------------------
;
; == [ URA NUMA SHINDEN ] ================================
;
		WORD	00B00H,0974DH,00B00H,04B7BH ; 4E (B2)
		WORD	00B40H,08B4DH,00B51H,00B8DH ; 4F
		WORD	0537AH,0137AH,04B42H,08B40H ; 50
;
; -- < SPACE AREA > ---------------
		WORD	00B00H,00B00H,00B00H,00B00H ; 51 (SPACE)
; ---------------------------------
;
		WORD	00B00H,00B00H,00B40H,00B00H ; 52 (B1)
		WORD	0CB7AH,0576EH,00B00H,00B00H ; 53
		WORD	00B6EH,00B9FH,00B00H,04BA5H ; 54
		WORD	013A0H,013A1H,00BA2H,00BA3H ; 55
		WORD	00BA4H,00B00H,00BA5H,00B00H ; 56
		WORD	00B40H,08B55H,00B42H,0CB87H ; 57
		WORD	08B95H,00BA7H,08B42H,00BAFH ; 58
		WORD	04B78H,00B00H,04B78H,00B00H ; 59
		WORD	08B42H,00B51H,00B78H,08B51H ; 5A
		WORD	00BA8H,00BA9H,00BACH,08BA9H ; 5B
		WORD	00BAAH,017ABH,013B4H,08BABH ; 5C takara
		WORD	017B1H,00B41H,04B44H,04B42H ; 5D
		WORD	00B00H,00BADH,00B00H,013AEH ; 5E
		WORD	01340H,00BB7H,00B42H,00BB6H ; 5F (1F)
		WORD	00B00H,00B00H,0139DH,0139EH ; 60 entrance
;
; == [ URA NO MORI ( ANAOCHI ) ] =========================
;
		WORD	00B00H,00B00H,00B00H,00B79H ; 61 (B2)
		WORD	00B00H,00B00H,08B42H,00B86H ; 62 (B1)
		WORD	00B42H,08B7BH,08B42H,00B7BH ; 63
		WORD	00B87H,08B7BH,09387H,00B7BH ; 64
		WORD	00B40H,013B3H,01378H,00B8DH ; 65 entrance
		WORD	08B42H,00B88H,05378H,00B40H ; 66 entrance
		WORD	04B44H,0D342H,097B5H,04B78H ; 67 entrance,takara
		WORD	013B3H,08B55H,04B7BH,00B8DH ; 68
		WORD	00B89H,0138AH,00B8BH,00B8CH ; 69
;
; == [ URA MIZUUMI NO CHIKATOU ( KOURI ) ] ===============
;
		WORD	00B00H,00B7CH,00B00H,00B00H ; 6A (B7)
		WORD	00B00H,09348H,00B00H,00B56H ; 6B (B6)
		WORD	00B00H,00B00H,00B88H,00B00H ; 6C
		WORD	00B00H,00B48H,00B00H,00B00H ; 6D
		WORD	00B00H,09348H,01786H,00B65H ; 6E (B5)
		WORD	00B00H,00B00H,0CB5AH,00B00H ; 6F
		WORD	00B00H,05388H,00B00H,00B00H ; 70
		WORD	04B5AH,00B00H,00B00H,00B00H ; 71
		WORD	00B00H,0CB5BH,013ABH,00BACH ; 72 (B4)
		WORD	0CB5AH,00B00H,0137EH,00B00H ; 73
		WORD	00B00H,0137EH,00B00H,00B00H ; 74
		WORD	00B00H,08B48H,01783H,01384H ; 75 (B3)
		WORD	00B00H,00B00H,01385H,00B00H ; 76
		WORD	00B00H,0537EH,00B00H,00B00H ; 77
		WORD	00B00H,08B48H,00B43H,0CB43H ; 78 (B2)
		WORD	00B00H,00B00H,01379H,0137AH ; 79
		WORD	00B5AH,0137BH,00B00H,00B00H ; 7A
		WORD	00B00H,08B48H,0137FH,01380H ; 7B (B1)
		WORD	00B00H,00B00H,01381H,01382H ; 7C
		WORD	00B00H,00B48H,00B00H,00B00H ; 7D
		WORD	00B00H,00B00H,01387H,01377H ; 7E (1F) entrance
;
; == [ YAMA NO TOU ] =====================================
;
		WORD	05746H,00B47H,01349H,00B48H ; 7F (1F)
		WORD	01375H,04B42H,0174AH,0574AH ; 80 (2F) entrance
		WORD	00B43H,01344H,00B45H,01746H ; 81 (3F)
		WORD	01742H,05742H,08B42H,0CB42H ; 82 (4F) takara
		WORD	01375H,05375H,08B42H,0CB42H ; 83 (5F)
		WORD	04B40H,01340H,00B41H,04B41H ; 84 (6F)
;
; == [ URA NO MACHI ] ====================================
;
		WORD	04B46H,00B71H,01786H,08B71H ; 85 (B2) takara
		WORD	01347H,00B4DH,00B65H,00B5BH ; 86
		WORD	00B00H,00B00H,09348H,00B00H ; 87 (B1)
		WORD	00B00H,00B00H,00B00H,08B48H ; 88
		WORD	04B66H,08B65H,04B5BH,00B65H ; 89
		WORD	09365H,00B66H,00B63H,08B66H ; 8A
		WORD	04B51H,00B5FH,0CB76H,00B60H ; 8B
		WORD	00B64H,04B4FH,04B60H,08B76H ; 8C
		WORD	04B76H,00B61H,0D376H,01362H ; 8D entrance
		WORD	04B61H,00B76H,0CB58H,08B51H ; 8E
		WORD	00B00H,00B00H,05746H,00B5EH ; 8F (1F)
		WORD	00B00H,00B00H,00B5EH,00B46H ; 90
;
; == [ KAMEIWA ] =========================================
;
		WORD	00B00H,00B00H,08B48H,00B00H ; 91 (B3)
		WORD	00B4FH,00B51H,0CB76H,08B76H ; 92
		WORD	05351H,00B51H,08B4FH,08B51H ; 93 (B2)
		WORD	04B76H,00B76H,0CB51H,08B58H ; 94
		WORD	00B54H,00B00H,08B66H,00B00H ; 95
;						     [4C]
		WORD	09348H,08B48H,00B56H,04B45H ; 96 (B1)
		WORD	00B00H,00B57H,00B00H,00B59H ; 97
		WORD	04B50H,00B58H,0CB50H,08B50H ; 98
		WORD	05758H,01751H,0CB58H,08B51H ; 99 takara
;						     [4D]
		WORD	00B56H,04B56H,00B65H,05756H ; 9A entrance
		WORD	09348H,08B48H,00B4CH,00B4BH ; 9B (1F)
		WORD	00B4DH,00B00H,08B54H,00B00H ; 9C
		WORD	00B4FH,00B50H,08B4FH,08B50H ; 9D
		WORD	04B50H,00B51H,0CB58H,08B51H ; 9E
		WORD	00B52H,00B54H,00B53H,09354H ; 9F entrance
;
; == [ URA YAMA NO TOU ] =================================
;
		WORD	09748H,09748H,0138DH,0138EH ; A0 (B1)
		WORD	01391H,01392H,0138CH,0138FH ; A1 (1F)
		WORD	01393H,01390H,09393H,0138FH ; A2
		WORD	01394H,01395H,0138EH,0138CH ; A3
		WORD	0175DH,01399H,0975DH,0538FH ; A4
		WORD	01397H,01398H,0179AH,0138CH ; A5
		WORD	01399H,01766H,0138FH,0D75DH ; A6
		WORD	0538EH,0538FH,01391H,01392H ; A7
		WORD	0139BH,0539BH,0139CH,0539CH ; A8
		WORD	0138FH,0138EH,05392H,05391H ; A9
		WORD	0138AH,0538AH,0138BH,0538BH ; AA (2F)
		WORD	00B00H,0CB5BH,00B00H,08B54H ; AB (3F)
		WORD	04B74H,013A6H,00B00H,04B48H ; AC
		WORD	013A0H,013A1H,0538EH,0138EH ; AD
		WORD	0D38EH,053A3H,013A4H,00B00H ; AE (4F)
		WORD	097AAH,00B00H,0538EH,01399H ; AF
		WORD	013A4H,00B00H,0138EH,00B00H ; B0
		WORD	00B00H,05393H,00B00H,0574EH ; B1 (5F)
		WORD	04B7DH,00B00H,08B7DH,0139FH ; B2
		WORD	097AAH,013A4H,013A9H,053A9H ; B3
		WORD	013A5H,013A6H,093A5H,0D3A5H ; B4
		WORD	0D38EH,0938EH,013A4H,013AAH ; B5 (6F)
		WORD	00B00H,013A6H,00B00H,08B5FH ; B6
		WORD	0139BH,013A6H,0139CH,053A2H ; B7
		WORD	00B00H,00B00H,0138CH,00B00H ; B8 (7F)
		WORD	09394H,0139EH,00B00H,00B00H ; B9
;
;----------------------------------------------------------------
;
LASTUNO		EQU	00051H			    ; Last unit no.
;
;
;****************************************************************
;*	tower data						*
;****************************************************************
TOWERDT		EQU	$
;
;
;
;			; 00 0 0 0 H
;			;    - - -
;			;    | | |_ chika kaisuu
;			;    | |
;			;    | |_ chijyou kaisuu
;			;    |
;			;    |_ danjyon no syurui
;			;		( 0.normal 1.mountain 2.water )
; 
; 
; 
		WORD	00021H		; DJNNO =  00
		WORD	00023H		; DJNNO =  02
		WORD	00020H		; DJNNO =  04
		WORD	00021H		; DJNNO =  06
		WORD	00070H		; DJNNO =  08
		WORD	00012H		; DJNNO =  0A
		WORD	00011H		; DJNNO =  0C
		WORD	00212H		; DJNNO =  0E
		WORD	00002H		; DJNNO =  10
		WORD	00217H		; DJNNO =  12
		WORD	00160H		; DJNNO =  14
		WORD	00012H		; DJNNO =  16
		WORD	00113H		; DJNNO =  18
		WORD	00171H		; DJNNO =  1A
;
;++++++++++++++< TOWERDT end >++++++++++++
;
TWDTADD1        EQU     $
                WORD    TWDT0000-TWDT0000		; 1
                WORD    TWDT0001-TWDT0000		; 2
                WORD    TWDT0002-TWDT0000		; 3
                WORD    TWDT0010-TWDT0000		; 4
                WORD    TWDT0011-TWDT0000		; 5
                WORD    TWDT0012-TWDT0000		; 6
                WORD    TWDT0013-TWDT0000		; 7
                WORD    TWDT0014-TWDT0000		; 8
;
;------------------------------------------------------
;
TWDTADD2        EQU     $
                WORD    TWDT0000	; DJNNO =  00
		WORD	TWDT0010	; DJNNO =  02
		WORD	TWDT0020	; DJNNO =  04
		WORD	TWDT0030	; DJNNO =  06
                WORD    TWDT0040	; DJNNO =  08
		WORD	TWDT0050	; DJNNO =  0A
		WORD	TWDT0060	; DJNNO =  0C
		WORD	TWDT0070	; DJNNO =  0E
		WORD	TWDT0080	; DJNNO =  10
		WORD	TWDT0090	; DJNNO =  12
		WORD	TWDT00A0	; DJNNO =  14
		WORD	TWDT00B0	; DJNNO =  16
		WORD	TWDT00C0	; DJNNO =  18
		WORD	TWDT00D0	; DJNNO =  1A
;
;
;************************************************************************
;*	FLOOR DATA 1	[ boss room +08H ]				*
;************************************************************************
;
; ( DJNNO = 00 )
;
; == [ Kyokai --> Gyokuza no ura ] =========================
;
TWDT0000        EQU     $					; B1
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,11,0F,0F
		HEX	0F,0F,21,22,0F
		HEX	0F,0F,0F,32,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0001        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,02,0F,0F
		HEX	0F,0F,12,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,42,0F
;
TWDT0002        EQU     $					; 2F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,41,0F
;
;
;------------------------------------------------------------
;
; ( DJNNO = 02 )
;
; == [ Jyochyu . chika-rou eno chikadou ] ====================
;
TWDT0010        EQU     $					; B3
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,80,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0011        EQU     $					; B2
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,70,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0012        EQU     $					: B1
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,71,72,0F,0F
		HEX	0F,81,82,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0013        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,50,01,52,0F
		HEX	0F,60,61,62,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0014        EQU     $					; 2F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,51,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;------------------------------------------------------------
;
; ( DJNNO = 04 )
;
; == [ Shinden ] ============================================
;
TWDT0020        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,99,0F,0F
		HEX	0F,A8,A9,AA,0F
		HEX	0F,B8,B9,BA,0F
		HEX	0F,0F,C9,0F,0F
;
TWDT0021        EQU     $					; 2F
		HEX	C8,0F,0F,0F,0F
		HEX	D8,D9,DA,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;------------------------------------------------------------
;
; ( DJNNO = 06 )
;
; == [ Sabaku no Shinden  ] =================================
;
TWDT0030        EQU     $					; B1
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,73,74,75,0F
		HEX	0F,83,84,85,0F
;
TWDT0031        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,63,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0032        EQU     $					; 2F
		HEX	0F,0F,33,0F,0F
		HEX	0F,0F,43,0F,0F
		HEX	0F,0F,53,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;------------------------------------------------------------
;
; ( DJNNO = 08 )
;
; == [ Shisai's tower ] =====================================
;
TWDT0040        EQU     $					; DUMMY 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0041        EQU     $					; 2F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,E0,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0042        EQU     $					; 3F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,D0,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0043        EQU     $					; 4F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,C0,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0044	EQU     $					; 5F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,B0,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0045        EQU     $					; 6F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,40,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0046        EQU     $					; 7F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,20,0F,0F
		HEX	0F,0F,30,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;------------------------------------------------------------
;
; ( DJNNO = 0A )
;
; == [ Ura hokora danjyon ] =================================
;
TWDT0050        EQU     $					; B2
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,66,0F,0F
		HEX	0F,0F,76,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0052        EQU     $					; B1
		HEX	0F,0F,06,0F,0F
		HEX	0F,0F,16,0F,0F
		HEX	0F,0F,26,0F,0F
		HEX	34,35,36,37,38
		HEX	0F,0F,46,0F,0F
;
TWDT0053        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	54,0F,0F,0F,28
		HEX	0F,0F,0F,0F,0F
;
;
;------------------------------------------------------------
;
; ( DJNNO = 0C )
;
; == [ Ura shinden ] ========================================
;
TWDT0060        EQU     $					; B1
		HEX	0F,0F,5A,0F,0F
		HEX	0F,0F,6A,0B,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0A,3B,0F
		HEX	0F,0F,09,4B,0F
;
TWDT0061        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,19,1A,1B,0F
		HEX	0F,0F,2A,2B,0F
		HEX	0F,0F,3A,0F,0F
		HEX	0F,0F,4A,0F,0F
;
;
;------------------------------------------------------------
;
; ( DJNNO = 0E )
;
; == [ Ura numa no shinden ] ================================
;
TWDT0070        EQU     $					; B2
		HEX	0F,0F,0F,0F,0F
		HEX	0F,91,92,93,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0072        EQU     $					; B1
		HEX	0F,90,0F,0F,0F
		HEX	0F,A0,A1,A2,A3
		HEX	0F,0F,B1,B2,B3
		HEX	0F,0F,C1,C2,C3
		HEX	0F,0F,D1,D2,0F
;
TWDT0073        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,97,98,0F
;
;
;------------------------------------------------------------
;
; ( DJNNO = 10 )
;
; == [ Ura no mori ] ========================================
;
TWDT0080        EQU     $					; B2
		HEX	29,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0081        EQU     $					; B1
		HEX	39,0F,0F,0F,0F
		HEX	49,0F,0F,0F,0F
		HEX	59,0F,0F,0F,0F
		HEX	0F,56,57,58,0F
		HEX	0F,0F,67,68,0F
;
;
;------------------------------------------------------------
;
; ( DJNNO = 12 )
;
; == [ Ura mizuumi no chikatou ] ============================
;
TWDT0090        EQU     $					; B7
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,DE,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0091        EQU     $					; B6
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,BE,BF,0F
		HEX	0F,0F,CE,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0092        EQU     $					; B5
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,9E,9F,0F
		HEX	0F,0F,AE,AF,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0093        EQU     $					; B4
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,7E,7F,0F
		HEX	0F,0F,8E,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0094        EQU     $					; B3
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,5E,5F,0F
		HEX	0F,0F,6E,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0095        EQU     $					; B2
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,3E,3F,0F
		HEX	0F,0F,4E,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0096        EQU     $					; B1
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,1E,1F,0F
		HEX	0F,0F,2E,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT0097        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0E,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;
;------------------------------------------------------------
;
; ( DJNNO = 14 )
;
; == [ Omote yama no tou ] ==================================
;
TWDT00A0        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,87,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00A1        EQU     $					; 2F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,77,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00A2        EQU     $					; 3F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,31,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00A3        EQU     $					; 4F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,27,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00A4        EQU     $					; 5F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,17,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00A5        EQU     $					; 6F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,07,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;
;------------------------------------------------------------
;
; ( DJNNO = 16 )
;
; == [ Machi ] ==============================================
;
TWDT00B0        EQU     $					; B2
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,44,45,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00B1        EQU     $					; B1
		HEX	0F,0F,0F,0F,0F
		HEX	0F,AB,AC,0F,0F
		HEX	0F,BB,BC,0F,0F
		HEX	0F,CB,CC,0F,0F
		HEX	0F,DB,DC,0F,0F
;
TWDT00B2        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,64,65,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;------------------------------------------------------------
;
; ( DJNNO = 18 )
;
; == [ Kameiwa ] ============================================
;
TWDT00C0        EQU     $					; B2
		HEX	0F,A4,0F,0F,0F
		HEX	0F,B4,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F

;
TWDT00C1        EQU     $					; B2
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,B5,0F,0F
		HEX	0F,C4,C5,0F,0F
		HEX	0F,0F,D5,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00C2        EQU     $					; B1
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,04,0F,0F
		HEX	0F,13,14,15,0F
		HEX	0F,23,24,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00C3        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,B6,B7
		HEX	0F,0F,0F,C6,C7
		HEX	0F,0F,0F,D6,0F
;
;------------------------------------------------------------
;
; ( DJNNO = 1A )
;
; == [ ura yama no tou ] ====================================
;
TWDT00D0        EQU     $					; B1
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,1C,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F

;
TWDT00D1        EQU     $					; 1F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,7B,7C,7D,0F
		HEX	0F,8B,8C,8D,0F
		HEX	0F,9B,9C,9D,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00D2        EQU     $					; 2F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0C,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00D3        EQU     $					; 3F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,5B,5C,0F
		HEX	0F,0F,6B,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00D4        EQU     $					; 4F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,5D,0F
		HEX	0F,0F,6C,6D,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F

;
TWDT00D5        EQU     $					; 5F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,95,96,0F
		HEX	0F,0F,A5,A6,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00D6        EQU     $					; 6F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,3D,0F
		HEX	0F,0F,4C,4D,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
TWDT00D7        EQU     $					; 7F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0D,0F,0F
		HEX	0F,0F,1D,0F,0F
		HEX	0F,0F,0F,0F,0F
		HEX	0F,0F,0F,0F,0F
;
;
;************************************************************************
;*	FLOOR  DATA  LABEL						*
;************************************************************************
TOWERADD	EQU     $
		WORD	TOWER000	; DJNNO =  00
		WORD	TOWER010	; DJNNO =  02
		WORD	TOWER020	; DJNNO =  04
		WORD	TOWER030	; DJNNO =  06
		WORD	TOWER040	; DJNNO =  08
		WORD	TOWER050	; DJNNO =  0A
		WORD	TOWER060	; DJNNO =  0C
		WORD	TOWER070	; DJNNO =  0E
		WORD	TOWER080	; DJNNO =  10
		WORD	TOWER090	; DJNNO =  12
		WORD	TOWER0A0	; DJNNO =  14
		WORD	TOWER0B0	; DJNNO =  16
		WORD	TOWER0C0	; DJNNO =  18
		WORD	TOWER0D0	; DJNNO =  1A
;
;
;************************************************************************
;*	FLOOR  DATA							*
;************************************************************************
;
; ( DJNNO = 00 )
;
; == [ KYOKAI CHIKADOU ] =================================
;
TOWER000        EQU     $
		BYTE	000H,001H,002H,003H,004H
		BYTE	005H,006H,007H
;
;------------------------------------------------------------
;
; ( DJNNO = 02 )
;
; == [ SHIRO NAIBU . ROUYA CHIKADOU ] ====================
;
TOWER010	EQU	$
		BYTE	008H,009H,00AH,00BH,00CH
		BYTE	00DH,00EH,00FH,010H,011H
		BYTE	012H,013H,014H
;
;------------------------------------------------------------
;
; ( DJNNO = 04 )
;
; == [ SHINDEN ( OMOTE ) ] ===============================
;
TOWER020        EQU     $
		BYTE	015H,016H,017H,018H,019H
		BYTE	01AH,01BH,01CH,01DH,01EH
		BYTE	01FH,020H
;
;------------------------------------------------------------
;
; ( DJNNO = 06 )
;
; == [ SABAKU SHINDEN ] ==================================
;
TOWER030        EQU     $
		BYTE	022H,023H,024H,025H,026H
		BYTE	027H,021H,028H,029H,02AH
;
;------------------------------------------------------------
;
; ( DJNNO = 08 )
;
; == [ SHISAI NO TOU ] ===================================
;
TOWER040        EQU     $
		BYTE	02BH,02CH,02CH,02DH,02EH
		BYTE	02FH,030H
;
;------------------------------------------------------------
;
; ( DJNNO = 0A )
;
; == [ URA HOKORA ] ======================================
;
TOWER050        EQU     $
		BYTE	031H,032H,033H,034H,035H
		BYTE	036H,037H,038H,039H,03AH
		BYTE	03BH,03CH,03DH
;
;------------------------------------------------------------
;
; ( DJNNO = 0C )
;
; == [ SHINDEN ( URA ) ] =================================
;
TOWER060        EQU     $
		BYTE	03EH,03FH,040H,041H,042H
		BYTE	043H,044H,045H,046H,047H
		BYTE	048H,049H,04AH,04BH
;
;------------------------------------------------------------
;
; ( DJNNO = 0E )
;
; == [ URANUMA NO SHINDEN ] ==============================
;
TOWER070        EQU     $
		BYTE	04EH,04FH,050H,052H
		BYTE	053H,054H,055H,056H,057H
		BYTE	058H,059H,05AH,05BH,05CH
		BYTE	05DH,05EH,05FH,060H
;
;------------------------------------------------------------
;
; ( DJNNO = 10 )
;
; == [ URA NO MORI ] =====================================
;
TOWER080	EQU     $
		BYTE	061H,062H,063H,064H,065H
		BYTE	066H,067H,068H,069H
;
;------------------------------------------------------------
;
; ( DJNNO = 12 )
;
; == [ URAMIZUUMI NO CHIKATOU ] ==========================
;
TOWER090	EQU	$
		BYTE	06AH,06BH,06CH,06DH,06EH
		BYTE	06FH,070H,071H,072H,073H
		BYTE	074H,075H,076H,077H,078H
		BYTE	079H,07AH,07BH,07CH,07DH
		BYTE	07EH
;
;------------------------------------------------------------
;
; ( DJNNO = 14 )
;
; == [ OMOTE YAMA NO TOU ] ===============================
;
TOWER0A0        EQU     $
		BYTE	07FH,080H,081H,082H,083H
		BYTE	084H
;
;------------------------------------------------------------
;
; ( DJNNO = 16 )
;
; == [ URA NO MACHI ] ====================================
;
TOWER0B0        EQU     $
		BYTE	085H,086H,087H,088H,089H
		BYTE	08AH,08BH,08CH,08DH,08EH
		BYTE	08FH,090H
;
;------------------------------------------------------------
;
; ( DJNNO = 18 )
;
; == [ KAMEIWA ] =========================================
;
TOWER0C0        EQU     $
		BYTE	091H,092H,093H,094H,095H
		BYTE	04CH
		BYTE	096H,097H,098H,099H
		BYTE	04DH,09AH
		BYTE	09BH,09CH,09DH,09EH,09FH
;
;------------------------------------------------------------
;
; ( DJNNO = 1A )
;
; == [ URA YAMA NO TOU ] =================================
;
TOWER0D0        EQU     $
		BYTE	0A0H,0A1H,0A2H,0A3H,0A4H
		BYTE	0A5H,0A6H,0A7H,0A8H,0A9H
		BYTE	0AAH,0ABH,0ACH,0ADH,0AEH
		BYTE	0AFH,0B0H,0B1H,0B2H,0B3H
		BYTE	0B4H,0B5H,0B6H,0B7H,0B8H
		BYTE	0B9H
;
;------------------------------------------------------------
;
;
		END
