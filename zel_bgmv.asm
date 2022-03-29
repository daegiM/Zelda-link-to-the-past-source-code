;
		INCLUDE	zel_ram.asm
		INCLUDE	zel_label.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.09.12(THU)
;
;------------------------------------------------------------------------
;
		ORG	0AFE70H
;
;=============================================== (zel_bgwt) =============
		GLB	BGMVCHK
;
		GLB	bmd_not,bmd_b10,bmd_blt,bmd_wr2,bmd_kmb,bmd_ssi
		GLB	bmd_eyk,bmd_gnn
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
;*		BG. move check				(BGMVCHK)	*
;************************************************************************
BGDTBL		EQU	$
Bnot		WORD	BMCKRTL		; 00 : nothig
Bb10		WORD	B1MOVE		; 01 : BG.1 move
Bblt		WORD	BELTCNV		; 02 : beltconver
Bwr2		WORD	WTRRMV2		; 03 : water move (right -->)  2
Bkmb		WORD	KMBOSMV		; 04 : kame-iwa boss move
Bssi		WORD	SSRMCCG		; 05 : shisai-room CG. change
Beyk		WORD	ERSYKCK		; 06 : erase-yuka check
Bgnn		WORD	GNNCHK		; 07 : ganon check
;// 03.06.11 //Bwu0		WORD	WTRUMV0		; 03 : water move (up -->) 0
;// 03.06.11 //Bwu1		WORD	WTRUMV1		; 04 :                     1 
;// 03.06.11 //Bwu2		WORD	WTRUMV2		; 05 :                     2
;// 03.06.11 //Bwl0		WORD	WTRLMV0		; 06 :            (left -->) 0
;// 03.06.11 //Bwl1		WORD	WTRLMV1		; 07 :                       1
;// 03.06.11 //Bwl2		WORD	WTRLMV2		; 08 :                       2
;// 03.06.11 //Bwr0		WORD	WTRRMV0		; 09 :            (right -->)  0
;// 03.06.11 //Bwr1		WORD	WTRRMV1		; 0A :                         1
;// 03.06.11 //Bwr2		WORD	WTRRMV2		; 0B :                         2
;// 03.06.11 //Bwre		WORD	BGWLMV4		; 0F : H-scroll (right move) : ERASE
;// 03.06.11 //Bwle		WORD	BGWLMV5		; 10 : H-scroll (left  move)
;// 03.06.11 //Bwde		WORD	BGWLMV6		; 11 : V-scroll (down  move)
;// 03.06.11 //Bwue		WORD	BGWLMV7		; 12 : V-scroll (up    move)
;// 03.06.11 //Bwrw		WORD	BGWLMV4		; 13 : H-scroll (right move) : WRITE
;// 03.06.11 //Bwlw		WORD	BGWLMV5		; 14 : H-scroll (left  move)
;// 03.06.11 //Bwdw		WORD	BGWLMV6		; 15 : V-scroll (down  move)
;// 03.06.11 //Bwuw		WORD	BGWLMV7		; 16 : V-scroll (up    move)
;// 03.06.11 //Bmwt		WORD	MSGWRITE	; 17 : message write
;// 03.06.11 //Bsdr		WORD	SDROPCK		; 18 : shutter-door
;
;
bmd_not		EQU	(Bnot-Bnot)/2
bmd_b10		EQU     (Bb10-Bnot)/2
bmd_blt		EQU     (Bblt-Bnot)/2
bmd_wr2		EQU     (Bwr2-Bnot)/2
bmd_kmb		EQU     (Bkmb-Bnot)/2
bmd_ssi		EQU     (Bssi-Bnot)/2
bmd_eyk		EQU     (Beyk-Bnot)/2
bmd_gnn		EQU	(Bgnn-Bnot)/2
;// 03.06.11 //bmd_wu0		EQU     (Bwu0-Bnot)/2
;// 03.06.11 //bmd_wu1		EQU     (Bwu1-Bnot)/2
;// 03.06.11 //bmd_wu2		EQU     (Bwu2-Bnot)/2
;// 03.06.11 //bmd_wl0		EQU     (Bwl0-Bnot)/2
;// 03.06.11 //bmd_wl1		EQU     (Bwl1-Bnot)/2
;// 03.06.11 //bmd_wl2		EQU     (Bwl2-Bnot)/2
;// 03.06.11 //bmd_wr0		EQU     (Bwr0-Bnot)/2
;// 03.06.11 //bmd_wr1		EQU     (Bwr1-Bnot)/2
;// 03.06.11 //bmd_wr2		EQU     (Bwr2-Bnot)/2
;// 03.06.11 //bmd_wre		EQU     (Bwre-Bnot)/2
;// 03.06.11 //bmd_wle		EQU     (Bwle-Bnot)/2
;// 03.06.11 //bmd_wde		EQU     (Bwde-Bnot)/2
;// 03.06.11 //bmd_wue		EQU     (Bwue-Bnot)/2
;// 03.06.11 //bmd_wrw		EQU     (Bwrw-Bnot)/2
;// 03.06.11 //bmd_wlw		EQU     (Bwlw-Bnot)/2
;// 03.06.11 //bmd_wdw		EQU     (Bwdw-Bnot)/2
;// 03.06.11 //bmd_wuw		EQU     (Bwuw-Bnot)/2
;// 03.06.11 //bmd_mwt		EQU     (Bmwt-Bnot)/2
;// 03.06.11 //bmd_sdr		EQU	(Bsdr-Bnot)/2
;
;
;
BGMVCHK		EQU	$
		LDA	<BGMVFG
		ASL	A
		TAX
		JMP	(BGDTBL,X)
;
;
;
;
;************************************************************************
;*		BG.1 move				(B1MOVE)	*
;************************************************************************
;// 03.08.16 //B1GPWR		EQU	$		; G-power data
;// 03.08.16 //		WORD	0FFFCH,00004H
;// 03.08.16 //;
;// 03.08.16 //B1LMTD		EQU	$		; limit check data
;// 03.08.16 //		WORD	0FF30H,000D0H
;// 03.08.16 //;
;
B1MOVE		EQU	$
;// 03.08.16 //		MEM16
;// 03.08.16 //		REP	#00100000B	; memory 16bit mode
;// 03.08.16 //;
;// 03.08.16 //		PHB
;// 03.08.16 //		PHK
;// 03.08.16 //		PLB			; (DBR) set
;// 03.08.16 //;
;// 03.08.16 //		LDX	!BG1MFG
;// 03.08.16 //		LDA	!BG1MBF
;// 03.08.16 //		CLC
;// 03.08.16 //		ADC	B1GPWR,X
;// 03.08.16 //		PHA			; (A) push
;// 03.08.16 //		SEC
;// 03.08.16 //		SBC	B1LMTD,X
;// 03.08.16 //		EOR	B1LMTD,X
;// 03.08.16 //		BMI	B1MV40		; limit ?
;// 03.08.16 //;					; yes
;// 03.08.16 //		LDA	!BG1MFG
;// 03.08.16 //		EOR	#00002H
;// 03.08.16 //		STA	!BG1MFG
;// 03.08.16 //		STZ	!BG1YCT
;// 03.08.16 //		STZ	!BGMVC1
;// 03.08.16 //		PLA			; (A) pull
;// 03.08.16 //		LDA	B1LMTD,X
;// 03.08.16 //		PHA			; (A) push
;// 03.08.16 //B1MV40		EQU	$
;// 03.08.16 //		PLA
;// 03.08.16 //		STA	!BG1MBF
;// 03.08.16 //		CLC
;// 03.08.16 //		ADC	!BG1YCT
;// 03.08.16 //		PHA			; (A) push
;// 03.08.16 //		AND	#000FFH
;// 03.08.16 //		STA	!BG1YCT
;// 03.08.16 //		PLA			; (A) pull
;// 03.08.16 //		BPL	B1MV60		;
;// 03.08.16 //;					;
;// 03.08.16 //		ORA	#000FFH
;// 03.08.16 //		BRA	B1MV80
;// 03.08.16 //;
;// 03.08.16 //B1MV60		EQU	$
;// 03.08.16 //		AND	#0FF00H
;// 03.08.16 //B1MV80		EQU	$
;// 03.08.16 //		XBA
;// 03.08.16 //		STA	!BG1VMC
;// 03.08.16 //		CLC
;// 03.08.16 //		ADC	!BGMVC1
;// 03.08.16 //		STA	!BGMVC1
;// 03.08.16 //		CLC
;// 03.08.16 //		ADC	<SCCV2
;// 03.08.16 //		STA	<SCCV1
;// 03.08.16 //;
;// 03.08.16 //		PLB			; (DBR) reset
;// 03.08.16 //;
;// 03.08.16 //		MEM8
;// 03.08.16 //		SEP	#00100000B	; memory 8bit mode
BMCKRTL		EQU	$
		RTL
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Beltconver				(BELTCNV)	*
;************************************************************************
BELTCNV		EQU	$
		LDA	!EMYSTT+1
		AND	#10000000B
		BEQ	BLTCV000	; boss out ?
;					; yes
		STZ	<BGMVFG
		RTL
;
BLTCV000	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.05.17 //		LDA	!TPCKFG
;// 03.05.17 //		BNE	BLTCV40		; on check ok ?
;// 03.05.17 //;					; yes
;// 03.05.17 //		JSR	TRAPCHK		; trap check
;// 03.05.17 //		BCC	BLTCV100	; on ?
;// 03.05.17 //;					; yes
;// 03.05.17 //		LDA	!BG1MFG
;// 03.05.17 //		EOR	#00002H
;// 03.05.17 //		STA	!BG1MFG
;// 03.05.17 //		INC	!TPCKFG
;// 03.05.17 //		BRA	BLTCV100
;// 03.05.17 //;
;// 03.05.17 //BLTCV40		EQU	$
;// 03.05.17 //		JSR	TRAPCHK		; trap check
;// 03.05.17 //		BCS	BLTCV100	; off ?
;// 03.05.17 //;					; yes
;// 03.05.17 //		STZ	!TPCKFG
;// 03.05.17 //BLTCV100	EQU	$
;
		STZ	!BG1HMC
		STZ	!BG1VMC
;
		LDA	!BG1MFG
		LSR	A
		BCS	BLTCV999	; move ok ?
;					; yes
		ASL	A
		AND	#00002H
		TAX
		LDA	!BG1MBF
		CLC
		ADC	#08000H
		STA	!BG1MBF
		ROL	A
		AND	#00001H
		CPX	#00002H
		BNE	BLTCV040	; (-) ?
;					; yes
		EOR	#0FFFFH
		INC	A
BLTCV040	EQU	$
		LDX	!BG1MFG
		CPX	#00004H
		BCS	BLTCV100	; left,right move ?
;					; yes
		STA	!BG1HMC
;
		LDA	!BGMVC0
		SEC
		SBC	!BG1HMC
		STA	!BGMVC0
		CLC
		ADC	<SCCH2
		STA	<SCCH1
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
BLTCV100	EQU	$
		STA	!BG1VMC
;
		LDA	!BGMVC1
		SEC
		SBC	!BG1VMC
		STA	!BGMVC1
		CLC
		ADC	<SCCV2
		STA	<SCCV1
BLTCV999	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
;************************************************************************
;*		Kame-iwa boss move			(KMBOSMV)	*
;************************************************************************
KMBOSMV		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!BGMVC0
		CLC
		ADC	!BG1HMC
		STA	!BGMVC0
;
		LDA	!BGMVC1
		CLC
		ADC	!BG1VMC
		STA	!BGMVC1
;
		STZ	!BG1HMC
		STZ	!BG1VMC
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTL
;
;
;
;************************************************************************
;*		Shisai-room CG. change			(SSRMCCG)	*
;************************************************************************
SSRMCCG		EQU	$
		LDA	<FCNT
		AND	#01111111B
		CMP	#003H
		BEQ	SSCC200		; change ?
;					; no
		CMP	#005H
		BEQ	SSCC100		; change ?
;					; no
		CMP	#024H
		BEQ	SSCC200		; change ?
;					; no
		CMP	#026H
		BNE	SSCC900		; change ?
;					; yes
SSCC100		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>CGRAM+0DAH
		STA	>CGWORK+0DAH
		LDA	>CGRAM+0DCH
		STA	>CGWORK+0DCH
		LDA	>CGRAM+0DEH
SSCC140		EQU	$
		STA	>CGWORK+0DEH
		STA	>CGWORK+0EEH
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF
SSCC900		EQU	$
		LDA	#00000010B
		STA	<DPSUB
		RTL
;
SSCC200		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#01D59H
		STA	>CGWORK+0DAH
		LDA	#025FFH
		STA	>CGWORK+0DCH
		LDA	#0001AH
		BRA	SSCC140
;
;
;
;
;************************************************************************
;*		Erase-yuka check			(ERSYKCK)	*
;************************************************************************
ERSYKCK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
		STX	<WORK0
EYKC020		EQU	$
		LDA	!LMPADR,X
		ASL	A
		BCC	EYKC040		; lamp on ?
;					; yes
		INC	<WORK0
EYKC040		EQU	$
		INX
		INX
		CPX	#00020H
		BNE	EYKC020		; check end ?
;					; yes
		LDX	#02940H
		LDY	#04E60H
		LDA	<WORK0
		BNE	EYKC080
;
		LDX	#00000H
		LDY	#00000H
EYKC080		EQU	$
		TXA
		CMP	>CGRAM+0F6H
		BEQ	EYKC090		; change ?
;					; yes
		STA	>CGRAM+0F6H
		STA	>CGWORK+0F6H
		TYA
		STA	>CGRAM+0F8H
		STA	>CGWORK+0F8H
;
		INC	<CGVMAF
EYKC090		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#00000010B
		STA	<DPSUB
		RTL
;
;
;
;
;************************************************************************
;*		Ganon color check			(GNNCHK)	*
;************************************************************************
GNNCHK		EQU	$
		STZ	!GNNCFG
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
GNNC020		EQU	$
		LDA	!LMPADR,X
		ASL	A
		BCC	GNNC040		; lamp on ?
;					; yes
		INC	!GNNCFG
GNNC040		EQU	$
		INX
		INX
		CPX	#00006H
		BNE	GNNC020		; check end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	!GNNCFG
		BNE	GNNC100		;
;					;
		STZ	<DPSUB
		LDA	#10110011B
		STA	<WD2131
		RTL
;
GNNC100		EQU	$
		CMP	#001H
		BNE	GNNC140		;
;					;
		LDA	#00000010B
		STA	<DPSUB
		LDA	#01110000B
		STA	<WD2131
		RTL
;
GNNC140		EQU	$
		STZ	<DPSUB
		LDA	#01110000B
		STA	<WD2131
		RTL
;
;
;
;
		MEM8
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (up -->) - 0			(WTRUMV0)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRUMV0		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#02000H
;// 03.06.11 //		BRA	WRUM40
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (up -->) - 1			(WTRUMV1)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRUMV1		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#04000H
;// 03.06.11 //		BRA	WRUM40
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (up -->) - 2			(WTRUMV2)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRUMV2		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#08000H
;// 03.06.11 //WRUM40		EQU	$
;// 03.06.11 //		ADC	!BG1MBF
;// 03.06.11 //		STA	!BG1MBF
;// 03.06.11 //		ROL	A
;// 03.06.11 //		AND	#00001H
;// 03.06.11 //		STA	!BG1VMC
;// 03.06.11 //;
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (left -->) - 0		(WTRLMV0)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRLMV0		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#02000H
;// 03.06.11 //		BRA	WRLM40
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (left -->) - 1		(WTRLMV1)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRLMV1		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#04000H
;// 03.06.11 //		BRA	WRLM40
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (left -->) - 2		(WTRLMV2)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRLMV2		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#08000H
;// 03.06.11 //WRLM40		EQU	$
;// 03.06.11 //		ADC	!BG1MBF
;// 03.06.11 //		STA	!BG1MBF
;// 03.06.11 //		ROL	A
;// 03.06.11 //		AND	#00001H
;// 03.06.11 //		STA	!BG1HMC
;// 03.06.11 //;
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (right -->) - 0		(WTRRMV0)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRRMV0		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#02000H
;// 03.06.11 //		BRA	WRLM40
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Water move (right -->) - 1		(WTRRMV1)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //WTRRMV1		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.06.11 //;
;// 03.06.11 //		LDA	#02000H
;// 03.06.11 //		BRA	WRLM40
;// 03.06.11 //;
;
;************************************************************************
;*		Water move (right -->) - 2		(WTRRMV2)	*
;************************************************************************
WTRRMV2		EQU	$
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDA	#08000H
WRRM40		EQU	$
		ADC	!BG1MBF
		STA	!BG1MBF
		ROL	A
		AND	#00001H
		STA	<WORK0
		LDA	#00000H
		SEC
		SBC	<WORK0
		STA	!BG1HMC
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		RTL
;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Wall move (RIGHT)			(BGWLMV4)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //BGWLMV4		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	!BG1MFG
;// 03.06.11 //		BNE	BWLM4100	; on check ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB5		; on check
;// 03.06.11 //		BRA	BWLM4140
;// 03.06.11 //;
;// 03.06.11 //BWLM4100	EQU	$
;// 03.06.11 //		JSR	BWLMYR		;  wall yure set
;// 03.06.11 //;
;// 03.06.11 //;// 02.07.18 //		LDA	BWGPWR0
;// 03.06.11 //		LDA	#0FFFFH
;// 03.06.11 //		JSR	BWLMSB2		; move calc.
;// 03.06.11 //BWLM4140	EQU	$
;// 03.06.11 //		STA	!BG1HMC
;// 03.06.11 //		BEQ	BWLM4200	; move ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!BGMVC0
;// 03.06.11 //		STA	!BGMVC0
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	<SCCH2
;// 03.06.11 //		STA	<SCCH1
;// 03.06.11 //;
;// 03.06.11 //		LDX	!BG1MPT
;// 03.06.11 //		LDA	!BGMVC0
;// 03.06.11 //		CMP	BWLMTD0,X
;// 03.06.11 //		BCS	BWLM4180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB7		; off set
;// 03.06.11 //		LDA	!BGMVC0
;// 03.06.11 //		CMP	BWLMTD0,X
;// 03.06.11 //		BCS	BWLM4180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDY	#bmd_not
;// 03.06.11 //		STY	<BGMVFG
;// 03.06.11 //BWLM4180	EQU	$
;// 03.06.11 //		LDA	#00000H
;// 03.06.11 //		SEC
;// 03.06.11 //		SBC	!BGMVC0
;// 03.06.11 //		STA	<WORK0
;// 03.06.11 //		AND	#0000000111111000B
;// 03.06.11 //		LSR	A
;// 03.06.11 //		LSR	A
;// 03.06.11 //		LSR	A
;// 03.06.11 //		STA	<WORK0
;// 03.06.11 //		LDA	!B1CWPT
;// 03.06.11 //		SEC
;// 03.06.11 //		SBC	<WORK0
;// 03.06.11 //		AND	#0001010000011111B
;// 03.06.11 //		STA	!B1CWF0		; BG.1 clear address set
;// 03.06.11 //BWLM4200	EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Wall move (LEFT)			(BGWLMV5)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //BGWLMV5		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	!BG1MFG
;// 03.06.11 //		BNE	BWLM5100	; on check ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB5		; on check
;// 03.06.11 //		BRA	BWLM5140
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //BWLM5100	EQU	$
;// 03.06.11 //		JSR	BWLMYR		;  wall yure set
;// 03.06.11 //;
;// 03.06.11 //;// 02.07.18 //		LDA	BWGPWR1
;// 03.06.11 //		LDA	#00001H
;// 03.06.11 //		JSR	BWLMSB2		; move calc.
;// 03.06.11 //BWLM5140	EQU	$
;// 03.06.11 //		STA	!BG1HMC
;// 03.06.11 //		BEQ	BWLM5200	; move ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDA	!BGMVC0
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!BG1HMC
;// 03.06.11 //		STA	!BGMVC0
;// 03.06.11 //		LDA	<SCCH2
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!BGMVC0
;// 03.06.11 //		STA	<SCCH1
;// 03.06.11 //;
;// 03.06.11 //		LDX	!BG1MPT
;// 03.06.11 //		LDA	!BGMVC0
;// 03.06.11 //		CMP	BWLMTD1,X
;// 03.06.11 //		BCC	BWLM5180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB7		; off set
;// 03.06.11 //		LDA	!BGMVC0
;// 03.06.11 //		CMP	BWLMTD1,X
;// 03.06.11 //		BCC	BWLM5180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDY	#bmd_not
;// 03.06.11 //		STY	<BGMVFG
;// 03.06.11 //BWLM5180	EQU	$
;// 03.06.11 //		LDX	#bgw5
;// 03.06.11 //		STY	<BGWTFG
;// 03.06.11 //;
;// 03.06.11 //		LDA	!BGMVC0
;// 03.06.11 //		AND	#0000000111111000B
;// 03.06.11 //		LSR	A
;// 03.06.11 //		LSR	A
;// 03.06.11 //		LSR	A
;// 03.06.11 //		STA	<WORK0
;// 03.06.11 //		LDA	!B1CWPT
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	<WORK0
;// 03.06.11 //		STA	!B1CWF0		; BG.1 clear address set
;// 03.06.11 //		AND	#0001000000100000B
;// 03.06.11 //		BEQ	BWLM5200	;
;// 03.06.11 //;					;
;// 03.06.11 //		EOR	#0000010000100000B
;// 03.06.11 //		STA	!B1CWF0
;// 03.06.11 //BWLM5200	EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Wall move (DOWN)			(BGWLMV6)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //BGWLMV6		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	!BG1MFG
;// 03.06.11 //		BNE	BWLM6100	; on check ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB5		; on check
;// 03.06.11 //		BRA	BWLM6140
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //BWLM6100	EQU	$
;// 03.06.11 //		JSR	BWLMYR		;  wall yure set
;// 03.06.11 //;
;// 03.06.11 //;// 02.07.18 //		LDA	BWGPWR0
;// 03.06.11 //		LDA	#0FFFFH
;// 03.06.11 //		JSR	BWLMSB2		; move calc.
;// 03.06.11 //BWLM6140	EQU	$
;// 03.06.11 //		STA	!BG1VMC
;// 03.06.11 //		BEQ	BWLM6200	; move ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!BGMVC1
;// 03.06.11 //		STA	!BGMVC1
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	<SCCV2
;// 03.06.11 //		STA	<SCCV1
;// 03.06.11 //;
;// 03.06.11 //		LDX	!BG1MPT
;// 03.06.11 //		LDA	!BGMVC1
;// 03.06.11 //		CMP	BWLMTD0,X
;// 03.06.11 //		BCS	BWLM6180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB7		; off set
;// 03.06.11 //		LDA	!BGMVC1
;// 03.06.11 //		CMP	BWLMTD0,X
;// 03.06.11 //		BCS	BWLM6180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDY	#bmd_not
;// 03.06.11 //		STY	<BGMVFG
;// 03.06.11 //BWLM6180	EQU	$
;// 03.06.11 //		LDX	#bgw6
;// 03.06.11 //		STY	<BGWTFG
;// 03.06.11 //;
;// 03.06.11 //		LDA	#00000H
;// 03.06.11 //		SEC
;// 03.06.11 //		SBC	!BGMVC1
;// 03.06.11 //		STA	<WORK0
;// 03.06.11 //		AND	#000F8H
;// 03.06.11 //		ASL	A
;// 03.06.11 //		ASL	A
;// 03.06.11 //		STA	<WORK0
;// 03.06.11 //		LDA	!B1CWPT
;// 03.06.11 //		SEC
;// 03.06.11 //		SBC	<WORK0
;// 03.06.11 //		AND	#0001111111111111B
;// 03.06.11 //		STA	!B1CWF1		; BG.1 clear address set
;// 03.06.11 //		AND	#0000010000000000B
;// 03.06.11 //		BEQ	BWLM6200	;
;// 03.06.11 //;					;
;// 03.06.11 //		LDA	!B1CWF1
;// 03.06.11 //		SEC
;// 03.06.11 //		SBC	#00400H
;// 03.06.11 //		STA	!B1CWF1
;// 03.06.11 //BWLM6200	EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Wall move (UP)				(BGWLMV7)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //BGWLMV7		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	!BG1MFG
;// 03.06.11 //		BNE	BWLM7100	; on check ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB5		; on check
;// 03.06.11 //		BRA	BWLM7140
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //BWLM7100	EQU	$
;// 03.06.11 //		JSR	BWLMYR		;  wall yure set
;// 03.06.11 //;
;// 03.06.11 //;// 02.07.18 //		LDA	BWGPWR1
;// 03.06.11 //		LDA	#00001H
;// 03.06.11 //		JSR	BWLMSB2		; move calc.
;// 03.06.11 //BWLM7140	EQU	$
;// 03.06.11 //		STA	!BG1VMC
;// 03.06.11 //		BEQ	BWLM7200	; move ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDA	!BGMVC1
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!BG1VMC
;// 03.06.11 //		STA	!BGMVC1
;// 03.06.11 //		LDA	<SCCV2
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!BGMVC1
;// 03.06.11 //		STA	<SCCV1
;// 03.06.11 //;
;// 03.06.11 //		LDX	!BG1MPT
;// 03.06.11 //		LDA	!BGMVC1
;// 03.06.11 //		CMP	BWLMTD1,X
;// 03.06.11 //		BCC	BWLM7180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	BWLMSB7		; off set
;// 03.06.11 //		LDA	!BGMVC1
;// 03.06.11 //		CMP	BWLMTD1,X
;// 03.06.11 //		BCC	BWLM7180	; limit ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDY	#bmd_not
;// 03.06.11 //		STY	<BGMVFG
;// 03.06.11 //BWLM7180	EQU	$
;// 03.06.11 //		LDX	#bgw6
;// 03.06.11 //		STY	<BGWTFG
;// 03.06.11 //;
;// 03.06.11 //		LDA	!BGMVC1
;// 03.06.11 //		AND	#000F8H
;// 03.06.11 //		ASL	A
;// 03.06.11 //		ASL	A
;// 03.06.11 //		STA	<WORK0
;// 03.06.11 //		LDA	!B1CWPT
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	<WORK0
;// 03.06.11 //		AND	#0001111111111111B
;// 03.06.11 //		STA	!B1CWF1		; BG.1 clear address set
;// 03.06.11 //		AND	#0000010000000000B
;// 03.06.11 //		BEQ	BWLM7200	;
;// 03.06.11 //;					;
;// 03.06.11 //		LDA	!B1CWF1
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	#00400H
;// 03.06.11 //		AND	#01FFFH
;// 03.06.11 //		STA	!B1CWF1
;// 03.06.11 //BWLM7200	EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //BWLMSB5		EQU	$
;// 03.06.11 //		IDX16
;// 03.06.11 //		REP	#00010000B	; index 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	!SWCHFG
;// 03.06.11 //		AND	#000FFH
;// 03.06.11 //		BNE	BWMS520		; swich on ?
;// 03.06.11 //;					; no
;// 03.06.11 //		JSR	TRAPCHK		; trap check
;// 03.06.11 //		BCS	BWMS520		; trap on ?
;// 03.06.11 //;					; no
;// 03.06.11 //		JSR	TPLMPCK		; lamp trap check
;// 03.06.11 //		BCC	BWMS540		; trap on ?
;// 03.06.11 //;					; yes
;// 03.06.11 //BWMS520		EQU	$
;// 03.06.11 //		INC	!BG1MFG
;// 03.06.11 //BWMS540		EQU	$
;// 03.06.11 //		LDA	#0000H
;// 03.06.11 //;
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00010000B	; index 8bit mode
;// 03.06.11 //		RTS
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //BWLMSB7		EQU	$
;// 03.06.11 //		LDY	<BGMVFG
;// 03.06.11 //		LDX	!BG1MPT
;// 03.06.11 //		CPY	#bmd_wrw
;// 03.06.11 //		BCS	BWMS740		; erase wall ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDX	#000H
;// 03.06.11 //		STX	!BGALCKF	; player BG. check flag set
;// 03.06.11 //		LDX	#016H
;// 03.06.11 //		STX	<DPMAIN		; BG.1 off
;// 03.06.11 //BWMS740		EQU	$
;// 03.06.11 //		LDX	!BG1MPT
;// 03.06.11 //		CPY	#bmd_wrw
;// 03.06.11 //		BCS	BWMS780		; erase wall ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		TXA
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	#00008H
;// 03.06.11 //		TAX
;// 03.06.11 //BWMS780		EQU	$
;// 03.06.11 //		RTS
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Message write				(MSGWRITE)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //MSGWRITE	EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	!TPCKFG
;// 03.06.11 //		BNE	MSGW40		; on check ok ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		JSR	TRAPCHK		; trap check
;// 03.06.11 //		BCC	MSGW100		; on ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		INC	!MSGEFG		; message flag on
;// 03.06.11 //		INC	!TPCKFG
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //MSGW40		EQU	$
;// 03.06.11 //		JSR	TRAPCHK		; trap check
;// 03.06.11 //		BCS	MSGW100		; off ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		STZ	!TPCKFG
;// 03.06.11 //MSGW100		EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Shuter_door open check			(SDROPCK)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //SDROPCK		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDX	#00000H
;// 03.06.11 //		LDA	!SWCHFG
;// 03.06.11 //		AND	#000FFH
;// 03.06.11 //		BNE	SDOCK40		; swich on ?
;// 03.06.11 //;					; no
;// 03.06.11 //		JSR	TRAPCHK		; trap check
;// 03.06.11 //		LDX	#00000H
;// 03.06.11 //		BCS	SDOCK40		; trap on ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		INX
;// 03.06.11 //SDOCK40		EQU	$
;// 03.06.11 //		CPX	!TRAPMD
;// 03.06.11 //		BEQ	SDOCK80		; trap ok ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		STX	!TRAPMD
;// 03.06.11 //		STZ	!DOPCPT
;// 03.06.11 //		STZ	!DOPNCT		; door open flag clear
;// 03.06.11 //;
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //;
;// 03.06.11 //;// 02.08.17 //		LDA	#005H
;// 03.06.11 //		LDA	#p1_sdop
;// 03.06.11 //		STA	<GAMEMD
;// 03.06.11 //SDOCK80		EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //		RTL
;// 03.06.11 //;
;
;
;
;
;
;
;
;
;
;
;
		END
