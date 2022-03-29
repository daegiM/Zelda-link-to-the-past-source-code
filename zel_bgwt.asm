;
		INCLUDE	zel_ram.asm
		INCLUDE	zel_label.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1992.01.22(WED)
;
;------------------------------------------------------------------------
;
		ORG	01B560H
;
;=============================================== (zel_bgwt) =============
		GLB	HINFDST
;
		GLB	BGCHNG,RCHRCK,CHRCNG1,INFDCHK
		GLB	LMPTIMER,BDRCHCK,BDROPEN,DOPPLY,SDRPLY,GNNOPEN
		GLB	BLKPLY,CSWLPLY,WTRDOWN,WTRCLR0,WTRCLR1
		GLB	WTRUPP,WGTOPEN,TKBXPL,BLKSCHK,MCBLKCK
		GLB	LAMPPL,LAMPPL1,RASENW0,RASENW1,REWTST,TGBLKWT
		GLB	COINCK,DJHMCK,TYCDCNG,LAMPOFF0,LAMPOFF1
;
		GLB	CDBGCD,PLBGCD,RCKED,BWYRXD,BWYRYD
;
;
		GLB	inf_not
		GLB	inf_ee0,inf_ee1,inf_ee2,inf_ee3,inf_ee4
		GLB	inf_ee5,inf_ee6,inf_ee7,inf_ee8
		GLB	inf_bs0,inf_bs1,inf_bs2,inf_bs3,inf_bs4
		GLB	inf_bs5,inf_bs6,inf_bs7,inf_bs8
		GLB	inf_ssd,inf_bsd,inf_sd0,inf_sd1
		GLB	inf_wdn,inf_wup,inf_wgt,inf_gwr
		GLB	inf_wre,inf_wle,inf_wde,inf_wue,inf_cwy
		GLB	inf_tp0,inf_tp1,inf_tp2,inf_tp3,inf_tp4
		GLB	inf_bcw,inf_ebl,inf_stk,inf_cws
		GLB	inf_et0,inf_et1,inf_et2,inf_et3,inf_et4
		GLB	inf_et5,inf_et6,inf_et7,inf_et8,inf_sd3
		GLB	inf_tp5,inf_tp6,inf_tp7,inf_uss
		GLB	inf_tp8,inf_tp9,inf_tpA,inf_btk,inf_gnn
		GLB	inf_ee9,inf_et9,inf_trt,inf_bes
;=============================================== (zel_main) =============
		EXT	MD_title,MD_djint,MD_djply,MD_gdint,MD_gdply
		EXT	MD_fdout,MD_fdin,MD_etcpl
		EXT	MD_wpout,MD_wpin
;=============================================== (zel_vma) ==============
		EXT	WBUFS1
;
		EXT	VT01
;
		EXT	bgw5,bgw6
;=============================================== (zel_init) =============
		EXT	YCALC00,YCALC1
		EXT	MPBTSET1,DARKDT,UDJBITD,SWYKCNG
;
		EXT	p1_move,p1_scl0,p1_scl1,p1_bchg,p1_dopn,p1_sdop
		EXT	p1_stpc,p1_hldn,p1_mcng,p1_bmbd,p1_ltwp
		EXT	p1_wtrd,p1_wtru,p1_wgop,p1_kstp,p1_fdin,p1_mcg1
		EXT	p1_warp,p1_sls0,p1_sls1,p1_hlrs,p1_dwrp,p1_tmyk
		EXT	p1_swon,p1_plgn,p1_gnop
;=============================================== (zel_make) =============
		EXT	HISIST
;=============================================== (zel_play) =============
		EXT	BLOKMV,BKHLMV,RASINT,STEINT,DASHON,KNKMIT
		EXT	DOKYDT,DOKXDT
;
		EXT	HLDM
;=============================================== (zel_exst) =============
		EXT	KBDMIT,BMKRINT,MESWIT
;=============================================== (zel_rmdt) =============
		EXT	DJNDRD
;=============================================== (zel_djdt) =============
		EXT	REPRDT,HINFDT
;
		EXT	WRRSD0
;=============================================== (zel_data0) ============
		EXT	UNITDT,FLORDT,UDRTBL,DDRTBL,LDRTBL,RDRTBL
		EXT	UDOPNDD,DDOPNDD,LDOPNDD,RDOPNDD,OYKBGD
;
		EXT	BITCD0,BITCD1,TBITCD
		EXT	UPADR0,DNADR0,LFADR0,RTADR0
		EXT	DCXRPD,DCYRPD,DCPRPD,OPDRCD,OPNDRNO
 		EXT	IDOCD0,IDOCD1
		EXT	BWLMTD0,BWLMTD1
;
		EXT	watrd1,holedt,wakud0,wakud1,wakud2,wakud3
;
		EXT	cwuddt,cwlrdt,firedt,smldid,stopyk
		EXT	crtnd0,crtnd1,crtnd2,crtnd3,crtnd8,crtnd9,crtndA,crtndB
		EXT	wgatop0,wgatop1,wgatop2,wgatop3,haisui,tapdt2
		EXT	tapdt3,tapdt4,tkbox0,tkbox1,tkbox3,nukidt,tgblkd,flyykd
		EXT	iceat0,iceat1,holed9,djwpyk,onswh1,ofswh1,cngice
		EXT	gnnkz8,gnnkz9,gnnkzA,gnnkzB
;=============================================== (zel_comn) =============
;// 03.09.25 //		EXT	CGCNGA
;
		EXT	WTRWPMV,WWPM000,WRWPV0,HDMAOFF
;=============================================== (zel_char) =============
		EXT	KOUKAST,PLCGCN0,THCGCN1,PWTRCGS2,PWTRCGS3
;
		EXT	DJNCGDT
;=============================================== (zel_grnd) =============
		EXT	BOMBCHK
;=============================================== (zel_enmy) =============
		EXT	OAMENT3,SDLRCK,BSITEM,EFLCHK,EFLCHK2,RNDSET,KUSAST
;
		EXT	EBAKU
;=============================================== (zel_sub0) =============
		EXT	DJEXTCK
;=============================================== (zel_mesge) =============
		EXT	MS_00DD,MS_0553,MS_0554
;========================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;************************************************************************
;*		House  information data set		(HINFDST)	*
;************************************************************************
SCCTDT		EQU	$		; SCCx count data
		WORD	00100H,0FF00H
;
;
;
HINFDST		EQU	$
;// 02.11.02 //		STZ	<IRQFLG
		STZ	!SWCHFG
		STZ	!SWCHF1
;<<< 03.09.05 >>>		STZ	!INFONFG
		STZ	!BLKSWF
;
;<<< 03.09.05 >>>		LDX	<RMXYCT
;<<< 03.09.05 >>>		LDA	>DJINFTBL,X
;<<< 03.09.05 >>>		AND	#10000000B
;<<< 03.09.05 >>>		BEQ	HIFS20		;
;<<< 03.09.05 >>>;					;
;<<< 03.09.05 >>>		INC	!INFONFG
;<<< 03.09.05 >>>HIFS20		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<GAMEMD
		AND	#000FFH
		BNE	HIFS30		; start ?
;					; yes
		LDA	<SCCH2
		AND	#0FE00H
		STA	!SCHCT
		LDA	<SCCV2
		BRA	HIFS200
;
HIFS30		EQU	$
		CMP	#p1_dwrp
		BEQ	HIFS35		; player muki check ?
;					; yes
		CMP	#p1_sls0
		BCS	HIFS40		; player muki check ?
;					; no
		CMP	#p1_stpc
		BCC	HIFS40		; player muki check ?
;					; no
HIFS35		EQU	$
		LDA	<SCCH2
		CLC
		ADC	#00020H
		BRA	HIFS80
;
HIFS40		EQU	$
		LDA	<PWORK1
		AND	#0000FH
		LSR	A
		CMP	#00002H
		BCS	HIFS100		; left,right ?
;					; yes
		ASL	A
		TAX
		LDA	<SCCH2
		CLC
		ADC	>SCCTDT,X
HIFS80		EQU	$
		AND	#0FE00H
		STA	!SCHCT
		LDA	<SCCV2
		CLC
		ADC	#00020H
		BRA	HIFS200
;
HIFS100		EQU	$
		LSR	A
		LSR	A
		ASL	A
		TAX
		LDA	<SCCH2
		CLC
		ADC	#00020H
		AND	#0FE00H
		STA	!SCHCT
		LDA	<SCCV2
		CLC
		ADC	>SCCTDT,X
HIFS200		EQU	$
		AND	#0FE00H
		STA	!SCVCT		; 
;
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>HINFDT,X
		STA	<WORKD		; house information data address (H,L) set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDA	#BANK HINFDT
		STA	<WORKF		; house information data address (B)
;
		LDA	!GSUBFG
		STA	>BKGSUBF
		LDY	#00000H
		LDA	[<WORKD],Y
		AND	#11100000B
		ASL	A
		ROL	A
		ROL	A
		ROL	A
		STA	!GSUBFG		; sub-gamen check flag
;
		LDA	[<WORKD],Y
		AND	#00011100B
		LSR	A
		LSR	A
		STA	!BGALCKF	; player BG. check flag set
;
		LDA	>DARKFG
		STA	>BKDARKF	; now DARK check flag push
		LDA	[<WORKD],Y
		AND	#00000001B
		STA	>DARKFG		; color DARK check flag set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		INY
		LDA	[<WORKD],Y
		AND	#000FFH
		ASL	A
		ASL	A
;// 03.06.26 //		ASL	A
		TAX
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>DJNCGDT,X
		STA	!DANJC		; danjyon basic color 
;// 03.02.19 //		LDA	DJNCGDT+1,X
;// 03.02.19 //		STA	!SPGC		; spacial color
;// 03.06.26 //		LDA	>DJNCGDT+1,X
;// 03.06.26 //		STA	!KOKBGC		; kouka color
;// 03.06.26 //		LDA	>DJNCGDT+2,X
;// 03.06.26 //		STA	!BOBOJC		; Bg.-obj color
;// 03.06.26 //		LDA	>DJNCGDT+3,X
;// 03.06.26 //		STA	!EYOJC0
;// 03.06.26 //		LDA	>DJNCGDT+4,X
;// 03.06.26 //		STA	!EYOJC1		; enemy color
		LDA	>DJNCGDT+1,X
		STA	!BOBOJC		; Bg.-obj color
		LDA	>DJNCGDT+2,X
		STA	!EYOJC0
		LDA	>DJNCGDT+3,X
		STA	!EYOJC1		; enemy color
;
;
		INY
		LDA	[<WORKD],Y
		STA	!RBGCPT		; reset BG. char. pointer
		INY
		LDA	[<WORKD],Y
		CLC
		ADC	#040H
		STA	!ROBJCPT	; reset OBJ char. pointer
;
		INY
		LDA	[<WORKD],Y
		STA	<BGMVFG		; BG. move data
		INY
		LDA	[<WORKD],Y
		STA	<INFDF0		; information data-0
		INY
		LDA	[<WORKD],Y
		STA	<INFDF1		; information data-1
;
		INY
		LDA	[<WORKD],Y
		AND	#00000011B
		STA	!HLINFF		; hole down information flag
		LDA	[<WORKD],Y
		AND	#00001100B
		LSR	A
		LSR	A
		STA	!STPINF0	; step information flag - 0
		LDA	[<WORKD],Y
		AND	#00110000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	!STPINF1	; step information flag - 1
		LDA	[<WORKD],Y
		AND	#11000000B
		ASL	A
		ROL	A
		ROL	A
		STA	!STPINF2	; step information flag - 2
		INY
		LDA	[<WORKD],Y
		AND	#00000011B
		STA	!STPINF3	; step information flag - 3
;
		INY
		LDA	[<WORKD],Y
		STA	>HLGOTO		; hole goto set
		INY
		LDA	[<WORKD],Y
		STA	>SPGOTO+0	; step goto set
		INY
		LDA	[<WORKD],Y
		STA	>SPGOTO+1	; step goto set
		INY
		LDA	[<WORKD],Y
		STA	>SPGOTO+2	; step goto set
		INY
		LDA	[<WORKD],Y
		STA	>SPGOTO+3	; step goto set
;
;
;************************************************************************
;*		Initial Door open check			(IDROPCK)	*
;************************************************************************
IDROPCK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#00001H
		STA	!TRAPMD		; trap mode init. set
		STZ	!TPCHPT
;
		LDA	<RMXYCT
		ASL	A
		CLC
		ADC	<RMXYCT
		STA	!RMDTPT		; room data point set
		TAX
		LDA	>DJNDRD+1,X
		STA	<DTBFWK+1	; door data address (B)
		LDA	>DJNDRD,X
		STA	<DTBFWK		; door data address (H,L)
;
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>DJNTBL,X
		AND	#1111000000000000B
		STA	!RMSTTT		; room door on/off bit
		ORA	#00F00H
		STA	!DOPNBT
		LDA	>DJNTBL,X
		AND	#0000111111110000B
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	!EMYSTT		; room enemy on/off bit
;// 03.04.18 //		LDA	>DJNTBL,X
;// 03.04.18 //		AND	#0000001111110000B
;// 03.04.18 //		LSR	A
;// 03.04.18 //		LSR	A
;// 03.04.18 //		XBA
;// 03.04.18 //		STA	!INFSTT		; room information on/off bit
;// 03.03.26 //		LDA	>DJNTBL,X
;// 03.03.26 //		XBA
;// 03.03.26 //		AND	#0111000000000000B
;// 03.03.26 //		ASL	A
;// 03.03.26 //		STA	!ITMSTT		; room item on/off bit
		LDA	>DJNTBL,X
		AND	#0000000000001111B
		STA	!MAPSTT		; room map on/off bit
;
;<<< 03.09.05 >>>		MEM8
;<<< 03.09.05 >>>		SEP	#00100000B	; memory 8bit mode
;<<< 03.09.05 >>>;
;<<< 03.09.05 >>>;// 03.04.18 //		LDA	!INFSTT
;<<< 03.09.05 >>>		LDA	!EMYSTT
;<<< 03.09.05 >>>		AND	BITCD0+6
;<<< 03.09.05 >>>		BEQ	IDOC10		; information on ?
;<<< 03.09.05 >>>;					; yes
;<<< 03.09.05 >>>		STZ	<INFDF0
;<<< 03.09.05 >>>IDOC10		EQU	$
;<<< 03.09.05 >>>;// 03.04.18 //		LDA	!INFSTT
;<<< 03.09.05 >>>		LDA	!EMYSTT
;<<< 03.09.05 >>>		AND	BITCD0+8
;<<< 03.09.05 >>>		BEQ	IDOC20		; information on ?
;<<< 03.09.05 >>>;					; yes
;<<< 03.09.05 >>>		STZ	<INFDF1
;<<< 03.09.05 >>>IDOC20		EQU	$
;<<< 03.09.05 >>>		MEM16
;<<< 03.09.05 >>>		REP	#00100000B	; memory 16bit mode
;
		LDX	#00000H
		TXY
IDOC40		EQU	$
		STZ	!DORADR,X
;
		LDA	[<DTBFWK],Y
		CMP	#0FFFFH
		BEQ	IDOC100		; data end ?
;					; no
		STA	!DORADR,X
		INY
		INY
		INX
		INX
		BRA	IDOC40
;
;
IDOC100		EQU	$
		LDA	<RMXYCT
		DEC	A
		TAX
;// 03.02.21 //		AND	#00007H
;// 03.02.21 //		CMP	#00007H
		AND	#0000FH
		CMP	#0000FH
		BEQ	IDOC120		;
;					;
		LDA	#00024H
		JSR	IDOC200		; left door open check
IDOC120		EQU	$
		LDA	<RMXYCT
		INC	A
		TAX
;// 03.02.21 //		AND	#00007H
		AND	#0000FH
		BEQ	IDOC140		;
;					;
		LDA	#00018H
		JSR	IDOC200		; right door open check
IDOC140		EQU	$
		LDA	<RMXYCT
		SEC
;// 03.02.21 //		SBC	#00008H
		SBC	#00010H
		TAX
;// 03.02.21 //		AND	#00038H
;// 03.02.21 //		CMP	#00038H
;// 03.02.21 //		BEQ	IDOC160		;
		BMI	IDOC160		;
;					;
		LDA	#0000CH
		JSR	IDOC200		; up door open check
IDOC160		EQU	$
		LDA	<RMXYCT
		CLC
;// 03.02.21 //		ADC	#00008H
		ADC	#00010H
		TAX
;// 03.02.21 //		AND	#00038H
		CMP	#00140H
;// 03.02.21 //		BEQ	IDOC180		;
		BCS	IDOC180		;
;					;
		LDA	#00000H
		JSR	IDOC200		; down door open check
IDOC180		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
IDOC199		EQU	$
		RTS
;
;
		MEM16
		IDX16
IDOC200		EQU	$
		STA	<WORK4
		JSR	IDOC400		; door data set
;
		LDY	#00000H
IDOC220		EQU	$
		LDA	!ODRADR,Y
		CMP	#0FFFFH
		BEQ	IDOC199		; check end ?
;					; no
		STA	<WORK2
		LDX	<WORK4
		AND	#000FFH
		CMP	IDOCD0,X
		BEQ	IDOC240		; check door ?
;					; no
		INX
		INX
		CMP	IDOCD0,X
		BEQ	IDOC240		; check door ?
;					; no
		INX
		INX
		CMP	IDOCD0,X
		BEQ	IDOC240		; check door ?
;					; no
		INX
		INX
		CMP	IDOCD0,X
		BEQ	IDOC240		; check door ?
;					; no
		INX
		INX
		CMP	IDOCD0,X
		BEQ	IDOC240		; check door ?
;					; no
		INX
		INX
		CMP	IDOCD0,X
		BNE	IDOC300		; check door ?
;					; yes
IDOC240		EQU	$
;// 03.04.26 //		LDA	!NRSTAT
;// 03.04.26 //		AND	BITCD0,Y
;// 03.04.26 //;// 03.03.11 //		BNE	IDOC300		; door open ?
;// 03.04.26 //		BEQ	IDOC300		; door open ?
;// 03.04.26 //;					; yes
		LDA	IDOCD1,X
		STA	<WORK0
		LDX	#00000H
IDOC260		EQU	$
		LDA	!DORADR,X
		AND	#000FFH
		CMP	<WORK0
		BEQ	IDOC280		; door open ?
;					; no
		INX
		INX
		CPX	#00010H
		BNE	IDOC260		; check end ?
;					; yes
		BRA	IDOC300
;
IDOC280		EQU	$
;// 03.04.26 //		LDA	!DORADR,X
;// 03.04.26 //		AND	#0FF00H
;// 03.04.26 //		CMP	#swhdr
;// 03.04.26 //		BEQ	IDOC300		; swich door ?
;// 03.04.26 //;					; no
;// 03.04.26 //		CMP	#eradr
;// 03.04.26 //		BEQ	IDOC285		; erase door ?
;// 03.04.26 //;					; no
;// 03.04.26 //		CMP	#shtdr
;// 03.04.26 //		BNE	IDOC290		; shutter ?
;// 03.04.26 //;					; yes
		LDA	!DORADR,X
		AND	#0FF00H
		CMP	#crhdr
		BEQ	IDOC300		; crush door ?
;					; no
;*** /03.07.30/ ***		CMP	#swhdr
;*** /03.07.30/ ***		BEQ	IDOC300		; swich door ?
;*** /03.07.30/ ***;					; no
;*** /03.07.30/ ***		CMP	#eradr
;*** /03.07.30/ ***		BEQ	IDOC285		; erase door ?
;*** /03.07.30/ ***;					; no
		CMP	#udsht
		BEQ	IDOC285		; under-shutter ?
;					; no
		CMP	#shtdr
		BNE	IDOC290		; shutter door ?
;					; yes
IDOC285		EQU	$
		LDA	<WORKE
		CMP	<BKRMPT
		BNE	IDOC300		; room ok ?
;					; yes
		STZ	!TRAPMD
		BRA	IDOC295
;
IDOC290		EQU	$		LDA	!DORADR,X
		LDA	!NRSTAT
		AND	BITCD0,Y
;// 03.03.11 //		BNE	IDOC300		; door open ?
		BEQ	IDOC300		; door open ?
;					; yes
IDOC295		EQU	$
;// 03.05.07 //		LDA	!DORADR,X
;// 03.05.07 //		AND	#0FF00H
;// 03.05.07 //		CMP	#swhdr
;// 03.05.07 //		BEQ	IDOC300		; swich door ?
;// 03.05.07 //;					; yes
		LDA	!DOPNBT
;// 03.03.11 //		AND	BITCD1,X
		ORA	BITCD0,X
		STA	!DOPNBT
IDOC300		EQU	$
		INY
		INY
		CPY	#00010H
		BEQ	IDOC380		; check end ?
;					; no
		JMP	IDOC220
;
IDOC380		EQU	$
		RTS
;
;
IDOC400		EQU	$
		STX	<WORKE
;
		TXA
		ASL	A
		CLC
		ADC	<WORKE
		TAX
		LDA	>DJNDRD+1,X
		STA	<DTBFWK+1	;                   (B)
		LDA	>DJNDRD,X
		STA	<DTBFWK		; door data address (H,L) set
;
		LDA	<WORKE
		ASL	A
		TAX
		LDA	>DJNTBL,X
		AND	#0F000H
		ORA	#00F00H
		STA	!NRSTAT
		LDX	#00000H
		TXY
IDOC420		EQU	$
		LDA	[<DTBFWK],Y
		STA	!ODRADR,X
		CMP	#0FFFFH
		BEQ	IDOC380		; data end ?
;					; no
		AND	#0FF00H
		CMP	#udnor
		BEQ	IDOC460		; BG.1 door ?
;					; no
		CMP	#udrdr
		BCS	IDOC480		; on/off not-check door ?
;					; yes
IDOC460		EQU	$
		LDA	!NRSTAT
		ORA	BITCD0,X
		STA	!NRSTAT
IDOC480		EQU	$
		INY
		INY
		INX
		INX
		BRA	IDOC420
;
;
;
;************************************************************************
;*		BG. change				(BGCHNG)	*
;************************************************************************
BGCHNG		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<DTRDPT
		BNE	BGCNG20		; init. ?
;					; yes
		STZ	!RWBFPT
		LDA	!TPCHPT
		ASL	A
		CLC
		ADC	!TPCHPT
		TAX
		LDA	>REPRDT+1,X
		STA	<DTBFWK+1	;                           (B) set
		LDA	>REPRDT,X
		STA	<DTBFWK		; replace room data address (H,L) set
;
		JSR	RWB2MK		; Rewrite BG.2 house making
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<DTRDPT
		STZ	!RWBFPT
BGCNG20		EQU	$
		STZ	<WORKC		; set pointer clear
;// 03.05.01 //		LDA	#0000CH
;// 03.05.01 //		STA	<WORKE		; set counter
BGCNG40		EQU	$
		LDY	<DTRDPT		; (Y) <-- data read pointer
		LDA	[<DTBFWK],Y
		CMP	#0FFFFH
		BEQ	BGCNG400	; data end ?
;					; no
		STA	<WORK0
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	[<DTBFWK],Y
		AND	#11111100B
		STA	<WORK8
		INY
		INY
		LDA	<WORK1
		LSR	A
		LSR	A
		LSR	A
		ROR	<WORK8
		STA	<WORK9		; (work8,9) <-- set address
		INY
		STY	<DTRDPT
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<WORK8
		PHA			; (A) push
		JSR	BGCNGS1
		PLA			; (A) pull
;
		JSR	RWCHCK		; rewrite character check
		BRA	BGCNG40
;
;// 03.05.01 //		LDA	!RWBFPT
;// 03.05.01 //		PHA			; (A) push
;// 03.05.01 //		JSR	BGCNGSB		; BG. change sub.
;// 03.05.01 //		STY	<WORKC
;// 03.05.01 //;
;// 03.05.01 //		PLA			; (A) pull
;// 03.05.01 //		STA	!RWBFPT
;// 03.05.01 //		PLA			; (A) pull
;// 03.05.01 //		JSR	RWCHCK		; rewrite character check
;// 03.05.01 //;
;// 03.05.01 //		DEC	<WORKE
;// 03.05.01 //		BNE	BGCNG40		; 4-unit set end ?
;					; yes
BGCNG400	EQU	$
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
		STZ	<GAMEMD
		RTL
;
;
;
;************************************************************************
;*		Read character check			(RCHRCK)	*
;************************************************************************
RCKTBL		EQU	$
		WORD	CHRCNG		; 0 : BG.2 BG.1 character code set
		WORD	CHRCNG0		; 1 :
		WORD	RCDCNG		; 2 :
		WORD	DRCDCNG		; 3 : door character code set
		WORD	TYCDCNG1	; 4 : tama-yuka code set
rcktbl		WORD	RCHRTS		; 5 : RTS
;
RCKED		EQU	(rcktbl-RCKTBL)/2
;
;
RCHRCK		EQU	$
		LDA	!ITEMMD
		ASL	A
		TAX
		JSR	(RCKTBL,X)
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;// 03.02.26 //;
;// 03.02.26 //RCKLTBL		EQU	$
;// 03.02.26 //		BYTE	LOW CHRCNG	; 0 : BG.2 BG.1 character code set
;// 03.02.26 //		BYTE	LOW CHRCNG0	; 1 :
;// 03.02.26 //		BYTE	LOW RCDCNG	; 2 :
;// 03.02.26 //		BYTE	LOW DRCDCNG	; 3 : door character code set
;// 03.02.26 //		BYTE	LOW RCHRTS	; 4 : RTS
;// 03.02.26 //;
;// 03.02.26 //RCKHTBL		EQU	$
;// 03.02.26 //		BYTE	HIGH CHRCNG
;// 03.02.26 //		BYTE	HIGH CHRCNG0
;// 03.02.26 //		BYTE	HIGH RCDCNG
;// 03.02.26 //		BYTE	HIGH DRCDCNG
;// 03.02.26 //		BYTE	HIGH RCHRTS
;// 03.02.26 //;
;// 03.02.26 //;
;// 03.02.26 //RCHRCK		EQU	$
;// 03.02.26 //		JSR	RCHCSB		; character code set
;// 03.02.26 //;
;// 03.02.26 //		MEM8
;// 03.02.26 //		IDX8
;// 03.02.26 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.02.26 //		RTL
;// 03.02.26 //;
;// 03.02.26 //;
;// 03.02.26 //RCHCSB		EQU	$
;// 03.02.26 //		LDX	!ITEMMD
;// 03.02.26 //		LDA	>RCKLTBL,X
;// 03.02.26 //		STA	<WORK0
;// 03.02.26 //		LDA	>RCKHTBL,X
;// 03.02.26 //		STA	<WORK1
;// 03.02.26 //		JMP	(WORK0)
;
;
;// 02.12.19 //;
;// 02.12.19 //;************************************************************************
;// 02.12.19 //;*		Character code change			(RCHRC1)	*
;// 02.12.19 //;************************************************************************
;// 02.12.19 //RCHRC1		EQU	$
;// 02.12.19 //		MEM16
;// 02.12.19 //		IDX16
;// 02.12.19 //		REP	#00110000B	; memory,index 16bit mode
;// 02.12.19 //;
;// 02.12.19 //		INC	!ITEMMD
;// 02.12.19 //;
;// 02.12.19 //		LDX	#00000H
;// 02.12.19 //		STX	<XSTCNT
;// 02.12.19 //		STX	<YSTCNT
;// 02.12.19 //;
;// 02.12.19 //		LDA	#01B00H/2
;// 02.12.19 //		STA	<WORK0
;// 02.12.19 //RCRC120		EQU	$
;// 02.12.19 //		LDX	<XSTCNT
;// 02.12.19 //		LDA	>ROOMBF+2,X
;// 02.12.19 //		AND	#003FFH
;// 02.12.19 //		TAY
;// 02.12.19 //		LDA	RDCODE,Y
;// 02.12.19 //		STA	<WORK4
;// 02.12.19 //;
;// 02.12.19 //		LDA	>ROOMBF,X
;// 02.12.19 //		AND	#003FFH
;// 02.12.19 //		TAY
;// 02.12.19 //;
;// 02.12.19 //		MEM8
;// 02.12.19 //		SEP	#00100000B	; memory 8bit mode
;// 02.12.19 //;
;// 02.12.19 //		LDA	RDCODE,Y
;// 02.12.19 //		CMP	#010H
;// 02.12.19 //		BCC	RCRC140		; slanting data ?
;// 02.12.19 //;					; yes
;// 02.12.19 //;// 02.12.10 //		CMP	#020H
;// 02.12.19 //		CMP	#01CH
;// 02.12.19 //		BCS	RCRC140		; slanting data ?
;// 02.12.19 //;					; yes
;// 02.12.19 //		LDA	>ROOMBF+1,X
;// 02.12.19 //		ASL	A
;// 02.12.19 //		ROL	A
;// 02.12.19 //		ROL	A
;// 02.12.19 //		AND	#003H
;// 02.12.19 //		ORA	RDCODE,Y
;// 02.12.19 //RCRC140		EQU	$
;// 02.12.19 //		STA	<WORK2
;// 02.12.19 //;
;// 02.12.19 //		LDA	<WORK4
;// 02.12.19 //		CMP	#010H
;// 02.12.19 //		BCC	RCRC160		; slanting data ?
;// 02.12.19 //;					; yes
;// 02.12.19 //;// 02.12.10 //		CMP	#020H
;// 02.12.19 //		CMP	#01CH
;// 02.12.19 //		BCS	RCRC160		; slanting data ?
;// 02.12.19 //;					; yes
;// 02.12.19 //		LDA	>ROOMBF+3,X
;// 02.12.19 //		ASL	A
;// 02.12.19 //		ROL	A
;// 02.12.19 //		ROL	A
;// 02.12.19 //		AND	#003H
;// 02.12.19 //		ORA	<WORK4
;// 02.12.19 //RCRC160		EQU	$
;// 02.12.19 //		XBA
;// 02.12.19 //		LDA	<WORK2
;// 02.12.19 //;
;// 02.12.19 //		MEM16
;// 02.12.19 //		REP	#00100001B	; memory 16bit mode & CLC
;// 02.12.19 //;
;// 02.12.19 //		LDX	<YSTCNT
;// 02.12.19 //		STA	>READBF,X
;// 02.12.19 //		INX
;// 02.12.19 //		INX
;// 02.12.19 //		STX	<YSTCNT
;// 02.12.19 //;
;// 02.12.19 //		LDA	<XSTCNT
;// 02.12.19 //		ADC	#00004H
;// 02.12.19 //		STA	<XSTCNT
;// 02.12.19 //		DEC	<WORK0
;// 02.12.19 //		BNE	RCRC120		; check end ?
;// 02.12.19 //;					; yes
;// 02.12.19 //		MEM8
;// 02.12.19 //		IDX8
;// 02.12.19 //		SEP	#00110000B	; memory,index 8bit mode
;// 02.12.19 //		RTL
;// 02.12.19 //;
;
;
;
;************************************************************************
;*		Character code change			(CHRCNG1)	*
;************************************************************************
CHRCNG1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	<XSTCNT
		STZ	<YSTCNT
;
		LDA	#01000H
		STA	<WORK0
;
		JSR	CHCG000		; read code buffer set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSR	RCDCNG		; unit code set
;
		JSR	DRCDCNG		; door character code set
;
		LDA	>TAMAFLG
		BEQ	CHRC140		; code change ?
;					; yes
		JSL	>TYCDCNG	; tama-yuka code set
CHRC140		EQU	$
		STZ	!ITEMMD
		RTL
;
;
;
;************************************************************************
;*		Character code change			(CHRCNG)	*
;************************************************************************
CHRCNG		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		INC	!ITEMMD
;
		STZ	<XSTCNT
		STZ	<YSTCNT
CHRCNG0		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
;;;;;;;;		LDA	#00100H/2
		LDA	#00100H/4
		STA	<WORK0
CHCG000		EQU	$
		PHB
		LDX	#BANK RDCODE0
		PHX
		PLB			; (DBR) set
;
		IDX16
		REP	#00010000B	; index 16bit mode
CHCG020		EQU	$
		LDX	<XSTCNT
		LDA	>ROOMBF+2,X
		AND	#003FFH
		TAY
		LDA	RDCODE0,Y
		STA	<WORK4
;
		LDA	>ROOMBF,X
		AND	#003FFH
		TAY
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	RDCODE0,Y
		CMP	#010H
		BCC	CHCG040		; slanting data ?
;					; yes
		CMP	#01CH
		BCS	CHCG040		; slanting data ?
;					; yes
		LDA	>ROOMBF+1,X
		ASL	A
		ROL	A
		ROL	A
		AND	#003H
		ORA	RDCODE0,Y
CHCG040		EQU	$
		STA	<WORK2
;
		LDA	<WORK4
		CMP	#010H
		BCC	CHCG060		; slanting data ?
;					; yes
		CMP	#01CH
		BCS	CHCG060		; slanting data ?
;					; yes
		LDA	>ROOMBF+3,X
		ASL	A
		ROL	A
		ROL	A
		AND	#003H
		ORA	<WORK4
CHCG060		EQU	$
		XBA
		LDA	<WORK2
;
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDX	<YSTCNT
		STA	>READBF,X
		INX
		INX
		STX	<YSTCNT
;
		LDA	<XSTCNT
		ADC	#00004H
		STA	<XSTCNT
		DEC	<WORK0
		BNE	CHCG020		; check end ?
;					; yes
		LDA	<YSTCNT
		CMP	#02000H
		BNE	CHCG800		; end ?
;					; yes
		INC	!ITEMMD
CHCG800		EQU	$
		PLB			; (DBR) reset
RCHRTS		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Read character check			(RCDCNG)	*
;************************************************************************
RCDCNG		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	!TPCKPT
		BEQ	RCCK100		; TRAP check ?
;					; yes
		LDY	#00000H
		LDA	#03B3BH
RCCK20		EQU	$
		LDX	!TPCKBF,Y
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		INY
		INY
		CPY	!TPCKPT
		BNE	RCCK20		; check end ?
;					; yes
;
RCCK100		EQU	$
		LDA	#03030H
		STA	<WORK0
		LDY	#00000H
		LDX	!USCKPT
		BEQ	RCCK120		; Up-STEP check ?
;					; yes
RCCK110		EQU	$
		LDX	!USCKBF,Y
		LDA	#00000H
		STA	>READBF+081H,X
		LDA	#02626H
		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!USCKPT
		BNE	RCCK110		; check end ?
;					; yes
RCCK120		EQU	$
		CPY	!UPCKPT
		BEQ	RCCK140		; Up-STEP (RASEN) check ?
;					; yes
RCCK130		EQU	$
		LDX	!USCKBF,Y
		LDA	#05E5EH
		STA	>READBF+001H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!UPCKPT
		BNE	RCCK130		; check end ?
;					; yes
RCCK140		EQU	$
		CPY	!UPCKP1
		BEQ	RCCK160		; Up-STEP (RASEN) check ?
;					; yes
RCCK150		EQU	$
		LDX	!USCKBF,Y
		LDA	#05F5FH
		STA	>READBF+001H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!UPCKP1
		BNE	RCCK150		; check end ?
;					; yes
RCCK160		EQU	$
		CPY	!SUPCP0
		BEQ	RCCK180		; scroll-step (ue) check ?
;					; yes
RCCK170		EQU	$
		LDX	!USCKBF,Y
		LDA	#00000H
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		LDA	#03838H
		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!SUPCP0
		BNE	RCCK170		; check end ?
;					; yes
RCCK180		EQU	$
		CPY	!SUPCP1
		BEQ	RCCK200		; scroll-step (UP:sita) check ?
;					; yes
RCCK190		EQU	$
		LDX	!USCKBF,Y
		LDA	#00000H
		STA	>READBF+001H,X
		STA	>READBF+041H,X
		LDA	#03939H
		STA	>READBF+0C1H,X
		LDA	<WORK0
		STA	>READBF+081H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!SUPCP1
		BNE	RCCK190		; check end ?
;					; yes
;
;
RCCK200		EQU	$
		LDA	<WORK0
		AND	#00707H
		ORA	#03434H
		STA	<WORK0
;
		CPY	!DSCKPT
		BEQ	RCCK220		; Dn-STEP check ?
;					; yes
RCCK210		EQU	$
		LDX	!DSCKBF,Y
		LDA	#02626H
		STA	>READBF+0C1H,X
		LDA	<WORK0
		STA	>READBF+081H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!DSCKPT
		BNE	RCCK210		; check end ?
;					; yes
RCCK220		EQU	$
		CPY	!DNCKPT
		BEQ	RCCK240		; Dn-STEP (RASEN) check ?
;					; yes
RCCK230		EQU	$
		LDX	!DSCKBF,Y
		LDA	#05E5EH
		STA	>READBF+001H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!DNCKPT
		BNE	RCCK230		; check end ?
;					; yes
RCCK240		EQU	$
		CPY	!DNCKP1
		BEQ	RCCK260		; Dn-STEP (RASEN) check ?
;					; yes
RCCK250		EQU	$
		LDX	!DSCKBF,Y
		LDA	#05F5FH
		STA	>READBF+001H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!DNCKP1
		BNE	RCCK250		; check end ?
;					; yes
RCCK260		EQU	$
		CPY	!SDNCP0
		BEQ	RCCK280		; scroll-step (down) check ?
;					; yes
RCCK270		EQU	$
		LDX	!DSCKBF,Y
		LDA	#00000H
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		LDA	#03838H
		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!SDNCP0
		BNE	RCCK270		; check end ?
;					; yes
RCCK280		EQU	$
		CPY	!SDNCP1
		BEQ	RCCK300		; scroll-step (down) check ?
;					; yes
RCCK290		EQU	$
		LDX	!DSCKBF,Y
		LDA	#00000H
		STA	>READBF+001H,X
		STA	>READBF+041H,X
		LDA	#03939H
		STA	>READBF+0C1H,X
		LDA	<WORK0
		STA	>READBF+081H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!SDNCP1
		BNE	RCCK290		; check end ?
;					; yes
;
;
RCCK300		EQU	$
		LDY	#00000H
		STY	<WORK2
		LDA	#01F1FH
		LDX	!UDSCKP0
		BNE	RCCK310		; UD-STEP (floor change) check ?
;					; no
		INC	<WORK2
		LDA	#01E1EH
		LDX	!UDSCKP1
		BNE	RCCK310		; UD-STEP (same floor) check ?
;					; no
		LDX	!UDSCKP2
		BEQ	RCCK340		; UD-STEP (normal) check ?
;					; yes
		INC	<WORK2
		LDA	#01D1DH
RCCK310		EQU	$
		STA	<WORK0
		LDA	<WORK2
		STA	!FLCKFG
		STX	<WORK2
RCCK320		EQU	$
		LDX	!UDSCKB0,Y
		LDA	#00002H
		STA	>READBF+000H,X
		STA	>READBF1+0C0H,X
;;;;;;;;		LDA	#00200H
		XBA
		STA	>READBF+002H,X
		STA	>READBF1+0C2H,X
		LDA	#00001H
		STA	>READBF+040H,X
		STA	>READBF1+080H,X
;;;;;;;;		LDA	#00100H
		XBA
		STA	>READBF+042H,X
		STA	>READBF1+082H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		STA	>READBF1+041H,X
		STA	>READBF+081H,X
		STA	>READBF1+081H,X
		INY
		INY
		CPY	<WORK2
		BNE	RCCK320		; check end ?
;					; yes
;
RCCK340		EQU	$
		CPY	!UDSCKP6
		BEQ	RCCK400		; water-side STEP check ?
;					; yes
		LDA	#00002H
		STA	!FLCKFG
RCCK370		EQU	$
		LDX	!UDSCKB6,Y
		LDA	#00A03H
		STA	>READBF+000H,X
		STA	>READBF1+000H,X
;;;;;;;;		LDA	#0030AH
		XBA
		STA	>READBF+002H,X
		STA	>READBF1+002H,X
		LDA	#00803H
		STA	>READBF+040H,X
;;;;;;;;		LDA	#00308H
		XBA
		STA	>READBF+042H,X
		INY
		INY
		CPY	!UDSCKP6
		BNE	RCCK370		; check end ?
;					; yes
;
;
RCCK400		EQU	$
		LDY	#00000H
		LDX	!UDSCKP3
		BEQ	RCCK440		; UD-STEP (water) check ?
;					; yes
		LDA	#00002H
		STA	!FLCKFG
RCCK420		EQU	$
		LDX	!UDSCKB3,Y
		LDA	#00003H
		STA	>READBF+000H,X
;;;;;;;;		LDA	#00300H
		XBA
		STA	>READBF+002H,X
		LDA	#00A03H
		STA	>READBF1+000H,X
;;;;;;;;		LDA	#0030AH
		XBA
		STA	>READBF1+002H,X
		LDA	#00808H
		STA	>READBF+040H,X
		STA	>READBF+042H,X
		INY
		INY
		CPY	!UDSCKP3
		BNE	RCCK420		; check end ?
;					; yes
RCCK440		EQU	$
		CPY	!UDSCKP4
		BEQ	RCCK500		; water-side STEP check ?
;					; yes
		LDA	#00002H
		STA	!FLCKFG
RCCK460		EQU	$
		LDX	!UDSCKB4,Y
		LDA	#00003H
		STA	>READBF+000H,X
;;;;;;;;		LDA	#00300H
		XBA
		STA	>READBF+002H,X
		LDA	#00A03H
		STA	>READBF1+000H,X
;;;;;;;;		LDA	#0030AH
		XBA
		STA	>READBF1+002H,X
		INY
		INY
		CPY	!UDSCKP4
		BNE	RCCK460		; check end ?
;					; yes
;
RCCK500		EQU	$
		LDY	#00000H
		LDX	!BLKPNT
		BEQ	RCCK600		; Block character check ?
;					; yes
		LDA	#07070H
		STA	<WORK0
RCCK520		EQU	$
		LDA	!BLKSTT,Y
		AND	#000F0H
		CMP	#00030H
		BEQ	RCCK525		; crush-yuka & hummer-kui ?
;					; no
		LDA	!BLKADR,Y
		AND	#03FFFH
		LSR	A
		TAX
;
		LDA	<WORK0
		STA	>READBF+000H,X
		STA	>READBF+040H,X
RCCK525		EQU	$
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	<WORK0
RCCK530		EQU	$
		INY
		INY
		CPY	!BLKPNT
		BNE	RCCK520		; check end ?
;					; yes
RCCK600		EQU	$
		CPY	!LMPPNT
		BEQ	RCCK700		; Lamp character check ?
;					; yes
		STZ	<WORK4
		LDA	#0C0C0H
		STA	<WORK0
RCCK620		EQU	$
		LDA	!LMPADR,Y
		AND	#03FFFH
		LSR	A
		TAX
;
;// 03.08.09 //		LDA	!LMPADR,Y
;// 03.08.09 //		AND	#04000H
;// 03.08.09 //		BEQ	RCCK660		; swich lamp ?
;// 03.08.09 //;					; yes
;// 03.08.09 //		INC	<WORK4
;// 03.08.09 //		STX	<WORK2
;// 03.08.09 //		PHY			; (Y) push
;// 03.08.09 //		TYA
;// 03.08.09 //		LDY	#0FFFAH
;// 03.08.09 //		LSR	A
;// 03.08.09 //		LSR	A
;// 03.08.09 //		BCS	RCCK640		;
;// 03.08.09 //;					;
;// 03.08.09 //		LDY	#00006H
;// 03.08.09 //RCCK640		EQU	$
;// 03.08.09 //		TYA
;// 03.08.09 //		CLC
;// 03.08.09 //		ADC	<WORK2
;// 03.08.09 //		TAX			; (X) <-- new set address
;// 03.08.09 //		PLY			; (Y) pull
;// 03.08.09 //		LDA	<WORK0
;// 03.08.09 //		ORA	#01010H
;// 03.08.09 //		STA	<WORK0
;// 03.08.09 //RCCK660		EQU	$
		LDA	<WORK0
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		AND	#0EFEFH
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!LMPPNT
		BNE	RCCK620		; check end ?
;					; yes
		LDA	<WORK4
		STA	!LMPPNT
RCCK700		EQU	$
;// 03.06.11 //		LDA	<INFDF0
;// 03.06.11 //		AND	#000FFH
;// 03.06.11 //		CMP	#inf_yop
;// 03.06.11 //		BEQ	RCCK740		; open yuka ?
;// 03.06.11 //;					; no
;// 03.06.11 //		LDA	<INFDF1
;// 03.06.11 //		AND	#000FFH
;// 03.06.11 //		CMP	#inf_yop
;// 03.06.11 //		BNE	RCCK800		; open yuka ?
;// 03.06.11 //;					; yes
;// 03.06.11 //RCCK740		EQU	$
;// 03.06.11 //		JSL	>OPYKINT	; open yuka init. set
;
;
RCCK800		EQU	$
		LDA	#05858H
		STA	<WORK0
		LDY	#00000H
		LDX	!TBXCPT
		BEQ	RCCK830		; takara-box character check ?
;					; yes
		LDA	<INFDF0
		AND	#000FFH
		CMP	#inf_stk
		BEQ	RCCK900		; swich takara-box ?
;					; no
		CMP	#inf_btk
		BEQ	RCCK900		; block takara-box ?
;					; no
		CMP	#inf_trt
		BEQ	RCCK900		; tourou takara-box ?
;					; no
		CMP	#inf_et0
		BCC	RCCK805		; enemy-zenmetsu takara-box ?
;					; yes
		CMP	#inf_et9+1
		BCC	RCCK900		; enemy-zenmetsu takara-box ?
;					; no
RCCK805		EQU	$
		LDA	<INFDF1
		AND	#000FFH
		CMP	#inf_stk
		BEQ	RCCK900		; swich takara-box ?
;					; no
		CMP	#inf_btk
		BEQ	RCCK900		; block takara-box ?
;					; no
		CMP	#inf_trt
		BEQ	RCCK900		; tourou takara-box ?
;					; no
		CMP	#inf_et0
		BCC	RCCK810		; enemy-zenmetsu takara-box ?
;					; yes
		CMP	#inf_et9+1
		BCC	RCCK900		; enemy-zenmetsu takara-box ?
;					; no
RCCK810		EQU	$
		JSR	TKBXCDST	; takara-box code set
;// 03.08.12 //		LDA	!TBXADR,Y
;// 03.08.12 //		BEQ	RCCK820		; takara-box on ?
;// 03.08.12 //;					; yes
;// 03.08.12 //		AND	#07FFFH
;// 03.08.12 //		LSR	A
;// 03.08.12 //		TAX
;// 03.08.12 //		LDA	<WORK0
;// 03.08.12 //		STA	>READBF+000H,X
;// 03.08.12 //		STA	>READBF+040H,X
;// 03.08.12 //		LDA	!TBXADR,Y
;// 03.08.12 //		ASL	A
;// 03.08.12 //		BCC	RCCK820		; special-box ?
;// 03.08.12 //;					; yes
;// 03.08.12 //		LSR	A
;// 03.08.12 //		STA	!TBXADR,Y
;// 03.08.12 //;// 03.08.12 //		LSR	A
;// 03.08.12 //;// 03.08.12 //		TAX
;// 03.08.12 //		LDA	<WORK0
;// 03.08.12 //		STA	>READBF+042H,X
;// 03.08.12 //		STA	>READBF+080H,X
;// 03.08.12 //		STA	>READBF+082H,X
;// 03.08.12 //RCCK820		EQU	$
;// 03.08.12 //		LDA	<WORK0
;// 03.08.12 //		CLC
;// 03.08.12 //		ADC	#00101H
;// 03.08.12 //		STA	<WORK0
;// 03.08.12 //		INY
;// 03.08.12 //		INY
;// 03.08.12 //		CPY	!TBXCPT
;// 03.08.12 //		BNE	RCCK810		; check end ?
;// 03.08.12 //;					; yes
RCCK830		EQU	$
		CPY	!RKYCPT
		BEQ	RCCK900		; rouya-key on ?
;					; yes
RCCK840		EQU	$
		LDA	!TBXADR,Y
		ORA	#08000H
		STA	!TBXADR,Y
		AND	#07FFFH
		LSR	A
		TAX
		LDA	<WORK0
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!RKYCPT
		BNE	RCCK840		; check end ?
;					; yes
;
RCCK900		EQU	$
		LDY	#00000H
		STY	<WORK2
		LDA	#03F3FH
		LDX	!UDSCKP8
		BNE	RCCK910		; UD-STEP (floor change) check ?
;					; no
		INC	<WORK2
		LDA	#03E3EH
		LDX	!UDSCKP9
		BNE	RCCK910		; UD-STEP (same floor) check ?
;					; no
		LDX	!UDSCKPA
		BEQ	RCCK940		; UD-STEP (normal) check ?
;					; yes
		INC	<WORK2
		LDA	#03D3DH
RCCK910		EQU	$
		STA	<WORK0
		LDA	<WORK2
		STA	!FLCKFG
		STX	<WORK2
RCCK920		EQU	$
		LDX	!UDSCKB8,Y
;// 03.02.15 //		LDA	>READBF+000H,X
		LDA	#00002H
		STA	>READBF1+000H,X
		STA	>READBF+0C0H,X
;// 03.02.15 //		LDA	>READBF+040H,X
		LDA	#00001H
		STA	>READBF1+040H,X
		STA	>READBF+080H,X
;// 03.02.15 //		LDA	>READBF+002H,X
		LDA	#00200H
		STA	>READBF1+002H,X
		STA	>READBF+0C2H,X
;// 03.02.15 //		LDA	>READBF+042H,X
		LDA	#00100H
		STA	>READBF1+042H,X
		STA	>READBF+082H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		STA	>READBF1+041H,X
		STA	>READBF+081H,X
		STA	>READBF1+081H,X
		INY
		INY
		CPY	<WORK2
		BNE	RCCK920		; check end ?
;					; yes
RCCK940		EQU	$
		LDY	#00000H
		LDX	!UDSCKPB
		BEQ	RCCK980		; UD-STEP (water) check ?
;					; yes
		LDA	#00002H
		STA	!FLCKFG
RCCK960		EQU	$
		LDX	!UDSCKBB,Y
		LDA	#00A03H
		STA	>READBF1+0C0H,X
		XBA
		STA	>READBF1+0C2H,X
		LDA	#00003H
		STA	>READBF+0C0H,X
		XBA
		STA	>READBF+0C2H,X
		LDA	#00808H
		STA	>READBF+080H,X
		STA	>READBF+082H,X
		INY
		INY
		CPY	!UDSCKPB
		BNE	RCCK960		; check end ?
;					; yes
RCCK980		EQU	$
		INC	!ITEMMD
		RTS
;
;
;
;--------------------------------------- takara-box code set
TKBXCDST	EQU	$
TKCDS20		EQU	$
		LDA	!TBXADR,Y
		BEQ	TKCDS40		; takara-box on ?
;					; yes
		AND	#07FFFH
		LSR	A
		TAX
		LDA	<WORK0
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		LDA	!TBXADR,Y
		ASL	A
		BCC	TKCDS40		; special-box ?
;					; yes
		LSR	A
		STA	!TBXADR,Y
;// 03.08.12 //		LSR	A
;// 03.08.12 //		TAX
		LDA	<WORK0
		STA	>READBF+042H,X
		STA	>READBF+080H,X
		STA	>READBF+082H,X
TKCDS40		EQU	$
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!TBXCPT
		BNE	TKCDS20		; check end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Door code change			(DRCDCNG)	*
;************************************************************************
DRCDCNG		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDY	#00000H
DCCN20		EQU	$
		LDA	!DORADR,Y
		BEQ	DCCN60		; door character check ?
;					; yes
		JSR	DCCN100		; check
DCCN60		EQU	$
		INY
		INY
;// 02.10.29 //		CPY	#00018H
		CPY	#00020H
		BNE	DCCN20		; check end ?
;					; yes
		JSR	DOPL840		; mode change check
;
		JSR	WRDCST		; width road code set
;
		INC	!ITEMMD
		RTS
;
;
;============================================== ; door code set
DCCN100		EQU	$
		LDA	!DRSTAT,Y
		AND	#0000000011111110B
		STA	<WORK2
		BEQ	DCCN200		; normal door ?
;					; no
		CMP	#wal_dr
		BEQ	DCCN200		; wall ?
;					; no
		CMP	#ext_dr
		BEQ	DCCN200		; exit ?
;					; no
		CMP	#djn_dr
		BEQ	DCCN200		; danjyon-enter-door ?
;					; no
		CMP	#dj1_dr
		BEQ	DCCN110		; danjyon-enter-door(BG.1) ?
;					; no
		CMP	#dkt_dr
		BEQ	DCCN200		; doukutsu-enter-door ?
;					; no
		CMP	#dk1_dr
		BEQ	DCCN110		; doukutsu-enter-door ?
;					; no
		CMP	#dk2_dr
		BEQ	DCCN110		; doukutsu-enter-door(BG.1) ?
;					; no
		CMP	#udr_dr
		BEQ	DCCN110		; under door ?
;					; no
		CMP	#nul_dr
		BNE	DCCN120		; null door ?
;					; yes
DCCN110		EQU	$
		JMP	DCCN610
;
DCCN120		EQU	$
		CMP	#crh_dr
		BNE	DCCN130		; crush wall ?
;					; yes
		JMP	DCCN400		; crush wall code set
;
DCCN130		EQU	$
		CMP	#ud_nor
		BCC	DCCN140		; under-normal,door,shutter ?
;					; yes
		JMP	DCCN600		; BG.1 door code set
;
;
DCCN140		EQU	$
		CMP	#sht_dr
		BEQ	DCCN160		; shutter door ?
;					; no
		CMP	#ud_sht
		BEQ	DCCN160		; under-shutter ?
;					; no
		TYA
		AND	#0000FH
		BRA	DCCN170
;
DCCN160		EQU	$
		TYA
		AND	#000FFH
DCCN170		EQU	$
		TAX
		LDA	!DOPNBT
		AND	BITCD0,X
		BNE	DCCN200		; door open ?
;					; no
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		TYA
		LSR	A
		ORA	#0F0H
		STA	<WORK0
		STA	<WORK1		; (WORK0,1) <-- close door data
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!DORADR,Y
		LSR	A
		TAX
;
		LDA	<WORK0
		STA	>READBF+041H,X
		STA	>READBF+081H,X
DCCN190		EQU	$
		RTS
;
;
DCCN200		EQU	$
		LDX	<WORK2
		CPX	#ky2_dr
		BCC	DCCN202		; key-rasen ?
;					; yes
		CPX	#ky6_dr
		BCC	DCCN190		; key-rasen ?
;					; no
DCCN202		EQU	$
		LDA	OPNDRNO,X
		STA	<WORK0		; (WORK0,1) <-- open door data
;
		LDA	!DORFLG,Y
		AND	#00003H
		BNE	DCCN220		; up door ?
;					; yes
		LDA	!DORADR,Y
		CMP	!EXTADR0
		BEQ	DCCN205		; exit door ?
;					; no
		CMP	!EXTADR1
		BEQ	DCCN205		; exit door ?
;					; no
		CMP	!EXTADR2
		BEQ	DCCN205		; exit door ?
;					; no
		CMP	!EXTADR3
		BNE	DCCN210		; exit door ?
;					; yes
DCCN205		EQU	$
		LDX	#08E8EH
		STX	<WORK0
DCCN210		EQU	$
		LSR	A
		AND	#0783FH
		TAX
		LDA	<WORK0
		STA	>READBF+001H,X
		STA	>READBF+041H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		STA	>READBF+101H,X
		STA	>READBF+141H,X
		STA	>READBF+181H,X
		LDA	#00000H
		STA	>READBF+1C1H,X
		RTS
;
DCCN220		EQU	$
		CMP	#00001H
		BNE	DCCN240		; down door ?
;					; yes
		LDA	!DORADR,Y
		CPX	#djn_dr
		BEQ	DCCN225		; danjyon-enter-door ?
;					; no
		CPX	#dkt_dr
		BEQ	DCCN225		; doukutsu-enter-door ?
;					; no
		CMP	!EXTADR0
		BEQ	DCCN225		; exit door ?
;					; no
		CMP	!EXTADR1
		BEQ	DCCN225		; exit door ?
;					; no
		CMP	!EXTADR2
		BEQ	DCCN225		; exit door ?
;					; no
		CMP	!EXTADR3
		BNE	DCCN230		; exit door ?
;					; yes
DCCN225		EQU	$
		LDX	#08E8EH
		STX	<WORK0
DCCN230		EQU	$
		LSR	A
		TAX
;// 03.08.02 //		LDA	#00000H
;// 03.08.02 //		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		STA	>READBF+101H,X
		STA	>READBF+141H,X
		RTS
;
DCCN240		EQU	$
		CMP	#00002H
		BNE	DCCN260		; left door ?
;					; yes
		LDA	!DORADR,Y
		LSR	A
		AND	#0FFE0H
DCCN250		EQU	$
		TAX
;
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	>READBF+040H,X
		STA	>READBF+042H,X
		STA	>READBF+080H,X
		STA	>READBF+082H,X
		AND	#000FFH
		STA	>READBF+044H,X
		STA	>READBF+084H,X
		RTS
;
DCCN260		EQU	$
		LDA	!DORADR,Y
		LSR	A
		TAX
;
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	>READBF+042H,X
	 	STA	>READBF+044H,X
		STA	>READBF+082H,X
		STA	>READBF+084H,X
		AND	#0FF00H
		STA	>READBF+040H,X
		STA	>READBF+080H,X
		RTS
;
;
;
;
;============================================== ; crush wall code set
DCCN400		EQU	$
		RTS
;
		TYA
		AND	#0000FH
		TAX
		LDA	!DOPNBT
		AND	BITCD0,X
;// 03.03.11 //		BEQ	DCCN420		; door open ?
		BNE	DCCN420		; door open ?
;					; no
		RTS
;
DCCN420		EQU	$
		LDA	!DORFLG,Y
		AND	#00002H
		BNE	DCCN500		; up,down door ?
;					; yes
		LDA	!DORADR,Y
		LSR	A
DCCN440		EQU	$
		TAX
;
		LDA	#0000CH
		STA	<WORK0
DCCN460		EQU	$
		LDA	#00102H
		STA	>READBF+000H,X
		LDA	#00000H
		STA	>READBF+002H,X
		STA	>READBF+004H,X
		STA	>READBF+006H,X
		STA	>READBF+008H,X
		STA	>READBF+00AH,X
		STA	>READBF+00CH,X
		STA	>READBF+00EH,X
		STA	>READBF+010H,X
		STA	>READBF+012H,X
		LDA	#00201H
		STA	>READBF+014H,X
		TXA
		CLC
		ADC	#00040H
		TAX
		DEC	<WORK0
		BNE	DCCN460		; set end ?
;					; yes
		RTS
;
;
DCCN500		EQU	$
		LDA	!DORADR,Y
		LSR	A
DCCN540		EQU	$
		TAX
		LDA	#00005H
		STA	<WORK0
DCCN560		EQU	$
		LDA	#00101H
		STA	>READBF+000H,X
		STA	>READBF+540H,X
		LDA	#00202H
		STA	>READBF+040H,X
		STA	>READBF+500H,X
		LDA	#00000H
		STA	>READBF+080H,X
		STA	>READBF+0C0H,X
		STA	>READBF+100H,X
		STA	>READBF+140H,X
		STA	>READBF+180H,X
		STA	>READBF+1C0H,X
		STA	>READBF+200H,X
		STA	>READBF+240H,X
		STA	>READBF+280H,X
		STA	>READBF+2C0H,X
		STA	>READBF+300H,X
		STA	>READBF+340H,X
		STA	>READBF+380H,X
		STA	>READBF+3C0H,X
		STA	>READBF+400H,X
		STA	>READBF+440H,X
		STA	>READBF+480H,X
		STA	>READBF+4C0H,X
		INX
		INX
		DEC	<WORK0
		BNE	DCCN560		; set end ?
;					; yes
		RTS
;
;
;
;============================================== ; BG.1 under-door code set
DCCN600		EQU	$
		CMP	#ud_nor
		BEQ	DCCN610		; under-normal ?
;					; no
		CMP	#ud_wrp
		BEQ	DCCN610		; under-warp ?
;					; no
		TYA
		AND	#000FFH
		TAX
		LDA	!DOPNBT
		AND	BITCD0,X
;// 03.03.11 //		BEQ	DCCN610		; door open ?
		BNE	DCCN610		; door open ?
;					; no
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		TYA
		LSR	A
		ORA	#0F0H
		STA	<WORK0
		STA	<WORK1		; (WORK0,1) <-- close door data
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!DORADR,Y
		LSR	A
		TAX
;
		LDA	<WORK0
		STA	>READBF+041H,X
		STA	>READBF+081H,X
		RTS
;
DCCN610		EQU	$
		LDX	<WORK2
		LDA	OPNDRNO,X
		STA	<WORK0		; (work0,1) <-- open door data
;
		LDA	!DORFLG,Y
		AND	#00003H
		BNE	DCCN620		; up door ?
;					; yes
		LDA	!DORADR,Y
		LSR	A
		AND	#0783FH
		TAX
		LDA	<WORK0
		STA	>READBF+001H,X
		STA	>READBF+041H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		STA	>READBF+101H,X
		STA	>READBF+141H,X
		STA	>READBF+181H,X
		STA	>READBF+1C1H,X
		STA	>READBF+201H,X
		STA	>READBF+241H,X
		RTS
;
DCCN620		EQU	$
		CMP	#00001H
		BNE	DCCN640		; down door ?
;					; yes
		CPX	#dj1_dr
		BEQ	DCCN625		; danjyon-enter-door(BG.1) ?
;					; no
		CPX	#dk1_dr
		BEQ	DCCN625		; doukutsu-enter-door ?
;					; no
		CPX	#dk2_dr
		BEQ	DCCN625		; doukutsu-enter-door(BG.1) ?
;					; no
		LDA	!DORADR,Y
		AND	#01FFFH
		CMP	!EXTADR0
		BEQ	DCCN625		; exit door ?
;					; no
		CMP	!EXTADR1
		BEQ	DCCN625		; exit door ?
;					; no
		CMP	!EXTADR2
		BEQ	DCCN625		; exit door ?
;					; no
		CMP	!EXTADR3
		BNE	DCCN630		; exit door ?
;					; yes
DCCN625		EQU	$
		LDX	#08E8EH
		STX	<WORK0
DCCN630		EQU	$
		LDA	!DORADR,Y
		LSR	A
		CLC
		ADC	#00040H
		TAX
		LDA	<WORK0
		STA	>READBF+001H,X
		STA	>READBF+041H,X
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		STA	>READBF+101H,X
		STA	>READBF+141H,X
		STA	>READBF+181H,X
		STA	>READBF+1C1H,X
		RTS
;
DCCN640		EQU	$
		CMP	#00002H
		BNE	DCCN660		; left door ?
;					; yes
		LDA	!DORADR,Y
		LSR	A
		AND	#0FFE0H
		TAX
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	>READBF+040H,X
		STA	>READBF+042H,X
		STA	>READBF+044H,X
		STA	>READBF+046H,X
		STA	>READBF+080H,X
		STA	>READBF+082H,X
		STA	>READBF+084H,X
		STA	>READBF+086H,X
		RTS
;
DCCN660		EQU	$
		LDA	!DORADR,Y
		LSR	A
		INC	A
		TAX
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	>READBF+040H,X
		STA	>READBF+042H,X
		STA	>READBF+044H,X
		STA	>READBF+046H,X
		STA	>READBF+080H,X
		STA	>READBF+082H,X
		STA	>READBF+084H,X
		STA	>READBF+086H,X
		RTS
;
;
;
;************************************************************************
;*		Width road code set			(WRDCST)	*
;************************************************************************
WRDCST		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!WRDADR
		BEQ	WRDC999		; code set ?
;					; yes
		LDA	!WRDADR
		AND	#03FFFH
		LSR	A
		TAX
		LDY	#00004H
		LDA	!WRDADR
		ASL	A
		BCC	WRDC20		; BG.1 ?
;					; yes
		INY
WRDC20		EQU	$
		LDA	!EMYSTT
		AND	#0001000000000000B
		BEQ	WRDC200		; open ?
;					; yes
WRDC40		EQU	$
		LDA	#00101H
		STA	>READBF+000H,X
		STA	>READBF+280H,X
		LDA	#00000H
		STA	>READBF+080H,X
		STA	>READBF+100H,X
		STA	>READBF+180H,X
		STA	>READBF+200H,X
		INX
		INX
		DEY
		BPL	WRDC40		; code set end ?
;					; yes
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
WRDC200		EQU	$
		LDA	#02323H
		STA	>READBF+080H,X
		STA	>READBF+100H,X
		STA	>READBF+180H,X
		STA	>READBF+200H,X
		INX
		INX
		DEY
		BPL	WRDC200		; set end ?
;					; yes
WRDC999		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Tama-yuka code change			(TYCDCNG)	*
;************************************************************************
TYCDCNG1	EQU	$
		INC	!ITEMMD
		LDA	>TAMAFLG
		BEQ	TMYKC400	; code change ?
;					; yes
		JSL	>TYCDCNG
TMYKC400	EQU	$
		RTS
;
;
TYCDCNG		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#007FFH
TMYKC100	EQU	$
		LDA	>READBF+000H,X
		CMP	#066H
		BEQ	TMYKC110	;
;					;
		CMP	#067H
		BNE	TMYKC120	;
;					;
TMYKC110	EQU	$
		EOR	#00000001B
		STA	>READBF+000H,X
TMYKC120	EQU	$
		LDA	>READBF+800H,X
		CMP	#066H
		BEQ	TMYKC130	;
;					;
		CMP	#067H
		BNE	TMYKC140	;
;					;
TMYKC130	EQU	$
		EOR	#00000001B
		STA	>READBF+800H,X
TMYKC140	EQU	$
		LDA	>READBF1+000H,X
		CMP	#066H
		BEQ	TMYKC150	;
;					;
		CMP	#067H
		BNE	TMYKC160	;
;					;
TMYKC150	EQU	$
		EOR	#00000001B
		STA	>READBF1+000H,X
TMYKC160	EQU	$
		LDA	>READBF1+800H,X
		CMP	#066H
		BEQ	TMYKC170	;
;					;
		CMP	#067H
		BNE	TMYKC180	;
;					;
TMYKC170	EQU	$
		EOR	#00000001B
		STA	>READBF1+800H,X
TMYKC180	EQU	$
		DEX
		BPL	TMYKC100	; end ?
;					; yes
		IDX8
		SEP	#00010000B	; index 8bit mode
		RTL
;
;
;
;
;
;
;************************************************************************
;*		Information data check			(INFDCHK)	*
;************************************************************************
INFTBL		EQU	$
Inot		WORD	NOTHING		; 00 : nothig
Iee0		WORD	EERSCK0		; 01 : enemy zenmetsu (shutter open)
Iee1		WORD	EERSCK1		; 02 : enemy zenmetsu (shutter open)
Iee2		WORD	EERSCK2		; 03 : enemy zenmetsu (shutter open)
Iee3		WORD	EERSCK3		; 04 : enemy zenmetsu (shutter open)
Iee4		WORD	EERSCK4		; 05 : enemy zenmetsu (shutter open)
Iee5		WORD	EERSCK5		; 06 : enemy zenmetsu (shutter open)
Iee6		WORD	EERSCK6		; 07 : enemy zenmetsu (shutter open)
Iee7		WORD	EERSCK7		; 08 : enemy zenmetsu (shutter open)
Iee8		WORD	EERSCK8		; 09 : enemy zenmetsu (shutter open)
Iee9		WORD	EERSCK9		; 0A : enemy zenmetsu (shutter open)
Ibs0		WORD	BLMVSC0		; 0B : block move (shutter open)
Ibs1		WORD	BLMVSC1		; 0C : block move (shutter open)
Ibs2		WORD	BLMVSC2		; 0D : block move (shutter open)
Ibs3		WORD	BLMVSC3		; 0E : block move (shutter open)
Ibs4		WORD	BLMVSC4		; 0F : block move (shutter open)
Ibs5		WORD	BLMVSC5		; 10 : block move (shutter open)
Ibs6		WORD	BLMVSC6		; 11 : block move (shutter open)
Ibs7		WORD	BLMVSC7		; 12 : block move (shutter open)
Ibs8		WORD	BLMVSC8		; 13 : block move (shutter open)
Issd		WORD	SWSDRCK		; 14 : swich shuter-door open cehck
Ibsd		WORD	BSSDRCK		; 15 : boss shutter open check
Isd0		WORD	SDROPC0		; 16 : shuter-door open cehck-0
Isd1		WORD	SDROPC1		; 17 :                       -1
Iwdn		WORD	WRDWCHK		; 18 : water down check
Iwup		WORD	WRUPCHK		; 19 :       up   check
Iwgt		WORD	WGATECK		; 1A : water gate open check
Igwr		WORD	GWTRCHK		; 1B : ground water check
Iwre		WORD	BGWLMV0		; 1C : H-scroll (right move) : ERASE
Iwle		WORD	BGWLMV1		; 1D : H-scroll (left  move)
Iwde		WORD	BGWLMV2		; 1E : V-scroll (down  move)
Iwue		WORD	BGWLMV3		; 1F : V-scroll (up    move)
Icwy		WORD	CWLCHK0		; 20 : crush wall check = yuka
Itp0		WORD	TRAP000		; 21 : trap - 0 (ana)
Itp1		WORD	TRAP100		; 22 : trap - 1 (ana)
Itp2		WORD	TRAP200		; 23 : trap - 2 (ana)
Itp3		WORD	TRAP300		; 24 : trap - 3 (ana)
Ibcw		WORD	BOSSCHK		; 25 : boss die cehck
Iebl		WORD	ERSBLKCK	; 26 : enemy zenmetsu (block move)
Istk		WORD	SWTKBXCK	; 27 : swich takara-box check
Icws		WORD	CWLCHK1		; 28 : crush wall check = swich
Iet0		WORD	ERTBXC0		; 29 : enemy zenmetsu (takara-box)
Iet1		WORD	ERTBXC1		; 2A : enemy zenmetsu (takara-box)
Iet2		WORD	ERTBXC2		; 2B : enemy zenmetsu (takara-box)
Iet3		WORD	ERTBXC3		; 2C : enemy zenmetsu (takara-box)
Iet4		WORD	ERTBXC4		; 2D : enemy zenmetsu (takara-box)
Iet5		WORD	ERTBXC5		; 2E : enemy zenmetsu (takara-box)
Iet6		WORD	ERTBXC6		; 2F : enemy zenmetsu (takara-box)
Iet7		WORD	ERTBXC7		; 30 : enemy zenmetsu (takara-box)
Iet8		WORD	ERTBXC8		; 31 : enemy zenmetsu (takara-box)
Iet9		WORD	ERTBXC9		; 32 : enemy zenmetsu (takara-box)
Isd3		WORD	SDROPC3		; 33 : shutter-door open check-3
Itp4		WORD	TRAP400		; 34 : trap - 4 (ana)
Itp5		WORD	TRAP500		; 35 : trap - 5 (ana)
Itp6		WORD	TRAP600		; 36 : trap - 6 (ana)
Itp7		WORD	TRAP700		; 37 : trap - 7 (ana)
Iuss		WORD	USSCLCK		; 38 : ura-shisai clear check
Itp8		WORD	TRAP800		; 39 : trap - 8 (ana)
Itp9		WORD	TRAP900		; 3A : trap - 9 (ana)
ItpA		WORD	TRAPA00		; 3B : trap - A (ana)
Ibtk		WORD	BKTKBXCK	; 3C : block takara-box check
Ignn		WORD	GANONCHK	; 3D : ganon die check
Itrt		WORD	TRTBXCK		; 3E : tourou takara-box check
Ibes		WORD	BSERSCK		; 3F : boss erase check
;
;
;
inf_not		EQU	(Inot-Inot)/2
inf_ee0		EQU	(Iee0-Inot)/2
inf_ee1		EQU	(Iee1-Inot)/2
inf_ee2		EQU	(Iee2-Inot)/2
inf_ee3		EQU	(Iee3-Inot)/2
inf_ee4		EQU	(Iee4-Inot)/2
inf_ee5		EQU	(Iee5-Inot)/2
inf_ee6		EQU	(Iee6-Inot)/2
inf_ee7		EQU	(Iee7-Inot)/2
inf_ee8		EQU	(Iee8-Inot)/2
inf_ee9		EQU	(Iee9-Inot)/2
inf_bs0		EQU	(Ibs0-Inot)/2
inf_bs1		EQU	(Ibs1-Inot)/2
inf_bs2		EQU	(Ibs2-Inot)/2
inf_bs3		EQU	(Ibs3-Inot)/2
inf_bs4		EQU	(Ibs4-Inot)/2
inf_bs5		EQU	(Ibs5-Inot)/2
inf_bs6		EQU	(Ibs6-Inot)/2
inf_bs7		EQU	(Ibs7-Inot)/2
inf_bs8		EQU	(Ibs8-Inot)/2
inf_ssd		EQU	(Issd-Inot)/2
inf_bsd		EQU	(Ibsd-Inot)/2
inf_sd0		EQU	(Isd0-Inot)/2
inf_sd1		EQU	(Isd1-Inot)/2
inf_wdn		EQU	(Iwdn-Inot)/2
inf_wup		EQU	(Iwup-Inot)/2
inf_wgt		EQU	(Iwgt-Inot)/2
inf_gwr		EQU	(Igwr-Inot)/2
inf_wre		EQU	(Iwre-Inot)/2
inf_wle		EQU	(Iwle-Inot)/2
inf_wde		EQU	(Iwde-Inot)/2
inf_wue		EQU	(Iwue-Inot)/2
inf_cwy		EQU	(Icwy-Inot)/2
inf_tp0		EQU	(Itp0-Inot)/2
inf_tp1		EQU	(Itp1-Inot)/2
inf_tp2		EQU	(Itp2-Inot)/2
inf_tp3		EQU	(Itp3-Inot)/2
inf_bcw		EQU	(Ibcw-Inot)/2
inf_ebl		EQU	(Iebl-Inot)/2
inf_stk		EQU	(Istk-Inot)/2
inf_cws		EQU	(Icws-Inot)/2
inf_et0		EQU	(Iet0-Inot)/2
inf_et1		EQU	(Iet1-Inot)/2
inf_et2		EQU	(Iet2-Inot)/2
inf_et3		EQU	(Iet3-Inot)/2
inf_et4		EQU	(Iet4-Inot)/2
inf_et5		EQU	(Iet5-Inot)/2
inf_et6		EQU	(Iet6-Inot)/2
inf_et7		EQU	(Iet7-Inot)/2
inf_et8		EQU	(Iet8-Inot)/2
inf_et9		EQU	(Iet9-Inot)/2
inf_sd3		EQU	(Isd3-Inot)/2
inf_tp4		EQU	(Itp4-Inot)/2
inf_tp5		EQU	(Itp5-Inot)/2
inf_tp6		EQU	(Itp6-Inot)/2
inf_tp7		EQU	(Itp7-Inot)/2
inf_uss		EQU	(Iuss-Inot)/2
inf_tp8		EQU	(Itp8-Inot)/2
inf_tp9		EQU	(Itp9-Inot)/2
inf_tpA		EQU	(ItpA-Inot)/2
inf_btk		EQU	(Ibtk-Inot)/2
inf_gnn		EQU	(Ignn-Inot)/2
inf_trt		EQU	(Itrt-Inot)/2
inf_bes		EQU	(Ibes-Inot)/2
;
;
;
;
INFDCHK		EQU	$
		LDA	!INFCFG
		BNE	INFDC80		; check ok ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSR	STEPCK		; step check
;
		STZ	<WORKE
		LDA	<INFDF0
		ASL	A
		TAX
		JSR	(INFTBL,X)	; information check
;
		LDA	#001H
		STA	<WORKE
		LDA	<INFDF1
		ASL	A
		TAX
		JSR	(INFTBL,X)	; information check
INFDC80		EQU	$
		STZ	!INFCFG
		RTL
;
;
;
;************************************************************************
;*		Step check				(STEPCK)	*
;************************************************************************
CDBGCD		EQU	$
		BYTE	000H,001H,001H
PLBGCD		EQU	$
		BYTE	000H,000H,001H
;
;
STPCK990	EQU	$
		PLA			; (A) pull
STPCK999	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
NOTHING		EQU	$
		RTS
;
;
STEPCK		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PWORK1
		AND	#0000CH
		BEQ	STPCK999	; check ?
;					; yes
		STA	<WORK2
		TAY
		LDA	<PLYPS1
		CLC
		ADC	DCYRPD,Y	; (up:#00000H down:#00008H)
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK0
		LDA	<PLXPS1
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK0
		LDX	<PLBGCKF
		BEQ	STPCK20		; on BG.2 ?
;					; no
		ORA	#01000H
STPCK20		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		TAX
		PHX			; (X) push
		LDY	<WORK2
		CPY	#00004H
		BNE	STPCK40		; up ?
;					; yes
		CLC
		ADC	#00080H
		TAX
STPCK40		EQU	$
		
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>READBF+000H,X
		PLX			; (X) pull
		CMP	#026H
		BEQ	STPCK100	; check ok ?
;					; no
		CMP	#038H
		BEQ	STPCK100	; scroll-step ?
;					; no
		CMP	#039H
		BEQ	STPCK100	; scroll-step ?
;					; no
		CMP	#05EH
		BEQ	STPCK100	; (rase:BG2) check ok ?
;					; no
		CMP	#05FH
		BNE	STPCK999	; (rasen:BG1) check ok ?
;					; yes
STPCK100	EQU	$
		PHA			; (A) push
		STA	<WORKE
;
		LDA	>READBF+040H,X
		TAY
		AND	#0F8H
		CMP	#030H
		BNE	STPCK990	; check ok ?
;					; yes
		LDA	!PYDMBT
		BPL	STPCK110	; player mochiage ?
;					; yes
		PLA			; (A) pull
		MEM16
		REP	#00100000B
;
		LDA	!PLSVY1
		STA	<PLYPS1
		BRA	STPCK999
;
STPCK110	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STY	!STPFLG		; step flag set
;
		LDA	<RMXYCT
		STA	<BKRMPT		; now room point push
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>MPBTSET1	; map on/off bit set
STPCK120	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<WORKE
		CMP	#038H
		BEQ	STPCK130	; scroll-step ?
;					; no
		CMP	#039H
		BNE	STPCK160	; scroll-step ?
;					; yes
STPCK130	EQU	$
		LDX	#020H
		STX	!SPMVCT
;
		CMP	#038H
		BNE	STPCK140	; up ?
;					; yes
		JSL	>YCALC1		; up-move
		BRA	STPCK160
;
STPCK140	EQU	$
		JSL	>YCALC00	; down-move
STPCK160	EQU	$
		LDA	!STPFLG
		AND	#003H
		TAX
		LDA	>SPGOTO,X
		STA	<RMXYCT
;;;;;;;;		STA	<NXRMCT
		LDA	!STPINF0,X
		STA	!STPDPT
;
		LDX	#002H
		LDA	<PLBGCKF
		BNE	STPCK200	;
;					;
		LDX	#000H
		LDA	!CDBGCKF
		BEQ	STPCK200	;
;					;
		LDX	#002H
STPCK200	EQU	$
		STX	!BSTPPT
;// 03.02.04 //		TAX
;// 03.02.04 //		LDA	>CDBGCD,X
;// 03.02.04 //		STA	!CDBGCKF
;// 03.02.04 //		LDA	>PLBGCD,X
;// 03.02.04 //		STA	<PLBGCKF
;
;// 02.08.17 //		LDA	#006H
;
		STZ	<JRSBPT
		STZ	<HANIFG1
		STZ	<KENFM
		STZ	<KENKY
		STZ	<KENMD
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG		; player ken flag off
;
		LDX	#p1_stpc
		PLA			; (A) pull
		CMP	#026H
		BEQ	STPCK300	;
;					;
		LDX	#p1_sls0
		CMP	#038H
		BEQ	STPCK280	;
;					;
		LDX	#p1_sls1
		CMP	#039H
		BEQ	STPCK280	;
;					;
;// 03.02.13 //		CMP	#05FH
;// 03.02.13 //		BNE	STPCK120	; down ?
;// 03.02.13 //;					; yes
;// 03.02.13 //		LDA	<PLBGCKF
;// 03.02.13 //		BEQ	STPCK120	; BG.1 ?
;// 03.02.13 //;					; yes
;// 03.02.13 //		LDA	<DPMAIN
;// 03.02.13 //		AND	#00001111B
;// 03.02.13 //		STA	<DPMAIN
;// 03.02.13 //		LDA	#00010000B
;// 03.02.13 //		TSB	<DPSUB		; OBJ. sub-gamen set
;// 03.02.13 //		STZ	<PLBGCKF
;// 03.02.13 //STPCK120	EQU	$
		JSL	>RASINT		; init.
;
		LDX	#p1_kstp
STPCK240	EQU	$
		STX	<GAMEMD
		RTS
;
STPCK280	EQU	$
		STX	<GAMEMD
		JSL	>STEINT		; scroll-step init.
		RTS
;
;
STPCK300	EQU	$
		STX	<GAMEMD
		LDY	#016H
		LDA	!STPDPT
		CMP	#034H
		BCC	STPCK340	; up ?
;					; no
		LDY	#018H
STPCK340	EQU	$
		STY	!SOUND2		; <sound2>
		RTS
;
;
;
;
;
;************************************************************************
;*		Enemy zenmetsu Shuter_door open check 	(EERSCK0)	*
;*									*
;*		+---+---+   +---+---+   +-------+   +-------+           *
;*		| 0 | 1 |   |   |   |   |   6   |   |       |           *
;*		+---+---+   | 4 | 5 |   +-------+   |   8   |           *
;*		| 2 | 3 |   |   |   |   |   7   |   |       |           *
;*		+---+---+   +---+---+   +-------+   +-------+           *
;*									*
;************************************************************************
;
;************************************************************************
;*		Block-move Shuter_door open check 	(BLMVSCK)	*
;*									*
;*		+---+---+   +---+---+   +-------+   +-------+           *
;*		| 0 | 1 |   |   |   |   |   6   |   |       |           *
;*		+---+---+   | 4 | 5 |   +-------+   |   8   |           *
;*		| 2 | 3 |   |   |   |   |   7   |   |       |           *
;*		+---+---+   +---+---+   +-------+   +-------+           *
;*									*
;************************************************************************
;
;************************************************************************
;*		Enemy zenmetsu Takara-box check 	(ERTBXC0)	*
;*									*
;*		+---+---+   +---+---+   +-------+   +-------+           *
;*		| 0 | 1 |   |   |   |   |   6   |   |       |           *
;*		+---+---+   | 4 | 5 |   +-------+   |   8   |           *
;*		| 2 | 3 |   |   |   |   |   7   |   |       |           *
;*		+---+---+   +---+---+   +-------+   +-------+           *
;*									*
;************************************************************************
EERSCK0		EQU	$
BLMVSC0		EQU	$
ERTBXC0		EQU	$
		LDA	<PLXPS0
		LSR	A
		BCC	EERSCK6		;
;					;
		RTS
;
;
EERSCK1		EQU	$
BLMVSC1		EQU	$
ERTBXC1		EQU	$
		LDA	<PLXPS0
		LSR	A
		BCS	EERSCK6		;
;					;
		RTS
;
;
EERSCK2		EQU	$
BLMVSC2		EQU	$
ERTBXC2		EQU	$
		LDA	<PLXPS0
		LSR	A
		BCC	EERSCK7		;
;					;
		RTS
;
;
EERSCK3		EQU	$
BLMVSC3		EQU	$
ERTBXC3		EQU	$
		LDA	<PLXPS0
		LSR	A
		BCS	EERSCK7		;
;					;
		RTS
;
;
EERSCK4		EQU	$
BLMVSC4		EQU	$
ERTBXC4		EQU	$
		LDA	<PLXPS0
		LSR	A
		BCC	EERSCK8		;
;					;
		RTS
;
;
EERSCK5		EQU	$
BLMVSC5		EQU	$
ERTBXC5		EQU	$
		LDA	<PLXPS0
		LSR	A
		BCS	EERSCK8		;
;					;
		RTS
;
;
EERSCK6		EQU	$
BLMVSC6		EQU	$
ERTBXC6		EQU	$
		LDA	<PLYPS0
		LSR	A
		BCC	EERSCK8		;
;					;
EERS640		EQU	$
		RTS
;
;
EERSCK7		EQU	$
BLMVSC7		EQU	$
ERTBXC7		EQU	$
		LDA	<PLYPS0
		LSR	A
		BCC	EERS640		;
;					;
;
EERSCK8		EQU	$
BLMVSC8		EQU	$
ERTBXC8		EQU	$
		LDX	<WORKE
		LDA	<INFDF0,X
		CMP	#inf_bs0
		BCC	EZSDRCA		; enemy zenmetsu (shutter open) ?
;					; no
		CMP	#inf_et0
		BCC	BLMVSCA		; block move (shutter open) ?
;					; no
;
;
;---------------------------------------- enemy zenmetsu (takara-box)
ERTBXCA		EQU	$
		JSR	>EFLCHK		; enemy zenmetsu check
		BCC	ETBX180		; zenmetsu ?
;					; yes
		JSR	STBXC000	; takara-box set
ETBX180		EQU	$
		RTS
;
;
;---------------------------------------- block move (shutter open)
BLMVSCK		EQU	$
BLMVSCA		EQU	$
		LDA	!BLKSWF
		EOR	#00000001B
		CMP	!TRAPMD
		BEQ	BLMVC180	;
;					;
		STA	!TRAPMD
;
		LDA	#025H
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_sdop
		STA	<GAMEMD
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	!DOPCPT
		STZ	!DOPNCT		; door open flag clear
BLMVC180	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;---------------------------------------- enemy zenmetsu (shutter open)
EZSDRCA		EQU	$
		JSR	>EFLCHK		; enemy zenmetsu check
		BCC	EZSC180		; zenmetsu ?
;					; yes
EZSC120		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
		CPX	!TRAPMD
		BEQ	EZSC180		;
;
		STZ	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT		; door open flag clear
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_sdop
		STA	<GAMEMD
;
;;;;;;;;		LDA	#inf_not
;;;;;;;;		STA	<INFDF0
;<<< 03.09.05 >>>		LDX	<RMXYCT
;<<< 03.09.05 >>>		LDA	>DJINFTBL,X
;<<< 03.09.05 >>>		ORA	#10000000B
;<<< 03.09.05 >>>		STA	>DJINFTBL,X
EZSC180		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;					;
;
;
;
;************************************************************************
;*		Enemy zenmetsu Takara-box check 	(ERTBXC8)	*
;*									*
;*		                                    +-------+           *
;*		                                    |       |           *
;*		                                    |   9   |           *
;*		                                    |       |           *
;*		                                    +-------+           *
;*									*
;************************************************************************
EERSCK9		EQU	$
ERTBXC9		EQU	$
		LDX	<WORKE
		LDA	<INFDF0,X
		CMP	#inf_ee9
		BEQ	EZSDRCK		; enemy zenmetsu (shutter open) ?
;					; no
;
;---------------------------------------- enemy zenmetsu (takara-box)
ERTBXCK		EQU	$
		JSR	>EFLCHK2	; enemy zenmetsu check
		BCC	ETBX080		; zenmetsu ?
;					; yes
		JSR	STBXC000	; takara-box set
ETBX080		EQU	$
EZSC080		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;---------------------------------------- enemy zenmetsu (shutter open)
EZSDRCK		EQU	$
		JSR	>EFLCHK2	; enemy zenmetsu check
		BCC	EZSC080		; zenmetsu ?
;					; yes
		BCS	EZSC120
;
;
;
;
;
;************************************************************************
;*		Boss erase check			(BSERSCK)	*
;************************************************************************
BSERSCK		EQU	$
		JSR	>EFLCHK2	; enemy zenmetsu check
		BCC	EZSC080		; zenmetsu ?
;					; yes
		STZ	!BSFLFG
		STZ	<INFDF0+1
		RTS
;
;
;

;
;
;************************************************************************
;*		Swich Shuter_door open check		(SWSDRCK)	*
;************************************************************************
SWSDRCK		EQU	$
		LDA	!SWCHFG
		BEQ	SWSC80		; swich on ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
		CPX	!TRAPMD
		BEQ	SWSC80		;
;
		STX	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT		; door open flag clear
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;;;;;;;;		LDA	#025H
;;;;;;;;		STA	!SOUND3		; <sound3>
;
		LDA	#p1_sdop
		STA	<GAMEMD
;
;// 03.09.12 //		LDX	<WORKE
;// 03.09.12 //		STZ	<INFDF0,X	; information off
SWSC80		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Boss Shuter_door open check		(BSSDRCK)	*
;************************************************************************
BSSDRCK		EQU	$
		LDA	!DJNNO
		LSR	A
		TAX
		LDA	>GDTRPF
		BNE	BSDC20		; omote ?
;					; yes
		LDA	>ITEMR53
		AND	>UDJBITD,X
		BEQ	BSDC80		; pendanto on ?
;					; yes
		BRA	BSDC40
;
BSDC20		EQU	$
		LDA	>ITMTBL3
		AND	>UDJBITD,X
		BEQ	BSDC80		; 
;					;
BSDC40		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT		; door open flag clear
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#p1_sdop
		STA	<GAMEMD
;
		LDX	<WORKE
		STZ	<INFDF0,X	; information off
BSDC80		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;// 03.08.01 //		IDX16
;// 03.08.01 //		REP	#00010000B	; index 16bit mode
;// 03.08.01 //;
;// 03.08.01 //		LDX	#00001H
;// 03.08.01 //		LDA	!EMYSTT+1
;// 03.08.01 //		AND	#10000000B
;// 03.08.01 //		BEQ	BSDC20		; shutter open ?
;// 03.08.01 //;					; yes
;// 03.08.01 //		DEX
;// 03.08.01 //BSDC20		EQU	$
;// 03.08.01 //		CPX	!TRAPMD
;// 03.08.01 //		BEQ	BSDC80		; 
;// 03.08.01 //;					;
;// 03.08.01 //		STX	!TRAPMD
;// 03.08.01 //		STZ	!DOPCPT
;// 03.08.01 //		STZ	!DOPNCT		; door open flag clear
;// 03.08.01 //;
;// 03.08.01 //		LDA	#01BH
;// 03.08.01 //		STA	!SOUND3		; <sound3>
;// 03.08.01 //;
;// 03.08.01 //		LDA	#p1_sdop
;// 03.08.01 //		STA	<GAMEMD
;// 03.08.01 //BSDC80		EQU	$
;// 03.08.01 //		IDX8
;// 03.08.01 //		SEP	#00010000B	; index 8bit mode
;// 03.08.01 //		RTS
;
;
;
;
;************************************************************************
;*		Shuter_door open check - 0		(SDROPC0)	*
;************************************************************************
SDROPC0		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#00005H
		LDX	#0FFFEH
SDOC005		EQU	$
		INX
		INX
		CPX	!LMPDGP
		BEQ	SDOC020		; check end ?
;					; no
		CMP	!BLKSTT,X
		BNE	SDOC005		; check ?
;					; yes
SDOC010		EQU	$
		LDX	!BLTRPF		; (X) <-- block trap check code
		CPX	#0FFFFH
		BNE	SDOC030		; check ok ?
;					; yes
SDOC020		EQU	$
		LDX	#00000H
		LDA	!SWCHF1
		AND	#000FFH
		BNE	SDOC030		; soromon-tama swich on ?
;					; no
		LDA	!SWCHFG
		AND	#000FFH
		BNE	SDOC030		; swich on ?
;					; no
		JSR	TRAPCK1		; trap check
		LDX	#00000H
		BCS	SDOC030		; trap on ?
;					; yes
		INX
SDOC030		EQU	$
		CPX	!TRAPMD
		BEQ	SDOC037		; trap ?
;					; yes
		STX	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT		; door open flag clear
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		CPX	#000H
		BNE	SDOC035		; open ?
;					; yes
		LDA	#025H
		STA	!SOUND3		; <sound3>
SDOC035		EQU	$
		LDA	#p1_sdop
		STA	<GAMEMD
SDOC037		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Shuter_door open check - 1		(SDROPC1)	*
;************************************************************************
SDROPC1		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!TPCKFG
		BNE	SDOC140		; on check ?
;					; yes
		JSR	TRAPCHK		; trap check
		BCC	SDOC180		; on ?
;					; yes
		STZ	!DOPCPT
		STZ	!DOPNCT		; door open flag clear
;
;// 03.07.08 //		LDA	!TPCKBF
;// 03.07.08 //		LSR	A
;// 03.07.08 //		LSR	A
;// 03.07.08 //		LSR	A
;// 03.07.08 //		AND	#001F8H
;// 03.07.08 //		STA	<WORK2
;// 03.07.08 //		LDA	!TPCKBF
;// 03.07.08 //		AND	#0003FH
;// 03.07.08 //		ASL	A
;// 03.07.08 //		ASL	A
;// 03.07.08 //		ASL	A
;// 03.07.08 //		STA	<WORK0
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#025H
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_sdop
;// 03.07.08 //		STA	<GAMEMD
		JSR	SWON		; yuka-swich on
;
		LDA	!TRAPMD
		EOR	#001H
		STA	!TRAPMD
;// 03.07.08 //		ASL	A
;// 03.07.08 //		CLC
;// 03.07.08 //		ADC	#00EH
;// 03.07.08 //		TAY
;// 03.07.08 //		JSL	>TGBLKWT	; On/Off swich-yuka write
;
		INC	!TPCKFG
		BRA	SDOC180
;
;
SDOC140		EQU	$
		JSR	TRAPCHK		; trap check
		BCS	SDOC180		; off ?
;					; yes
		STZ	!TPCKFG
SDOC180		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
SWON		EQU	$
		STA	<GAMEMD
;
		LDX	<WORKC
		CPX	#023H
		BEQ	SWON80		; tubo-swich ?
;					; no
		LDA	!TRAPPT
		ORA	!TRAPPT+1
		BEQ	SWON80		; write ok ?
;					; yes
		LDA	<GAMEMD
		STA	!NXSLMD
		LDA	#p1_swon
		STA	<GAMEMD
		LDA	#020H
		STA	<JRSBPT
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLYPS1
		CLC
		ADC	#00002H
		STA	<PLYPS1
;
		LDX	!TRAPPT
		LDA	>READBF+000H,X
		AND	#0FE00H
		CMP	#02400H
		BEQ	SWON40		;
;					;
		INX
SWON40		EQU	$
		STX	!TRAPPT
		TXA
		STA	<WORK0
		LSR	A
		LSR	A
		LSR	A
		AND	#001F8H
		STA	<WORK2
		LDA	<WORK0
		AND	#0003FH
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK0
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDY	#010H
		JSL	>TGBLKWT
SWON80		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //;************************************************************************
;// 03.07.31 //;*		Shuter_door open check - 2		(SDROPC2)	*
;// 03.07.31 //;************************************************************************
;// 03.07.31 //SDROPC2		EQU	$
;// 03.07.31 //		MEM16
;// 03.07.31 //		IDX16
;// 03.07.31 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.31 //;
;// 03.07.31 //		LDX	#00000H
;// 03.07.31 //		LDA	!SWCHFG
;// 03.07.31 //		AND	#000FFH
;// 03.07.31 //		BNE	SDOC240		; swich on ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		LDA	!BLKSWF
;// 03.07.31 //		AND	#000FFH
;// 03.07.31 //		BNE	SDOC240		; swich on ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		LDA	#00005H
;// 03.07.31 //		LDX	#0FFFEH
;// 03.07.31 //SDOC205		EQU	$
;// 03.07.31 //		INX
;// 03.07.31 //		INX
;// 03.07.31 //		CPX	!LMPDGP
;// 03.07.31 //		BEQ	SDOC220		; check end ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	!BLKSTT,X
;// 03.07.31 //		BNE	SDOC205		; check ?
;// 03.07.31 //;					; yes
;// 03.07.31 //SDOC210		EQU	$
;// 03.07.31 //		LDX	!BLTRPF		; (X) <-- block trap check code
;// 03.07.31 //		CPX	#0FFFFH
;// 03.07.31 //		BNE	SDOC240		; check ok ?
;// 03.07.31 //;					; yes
;// 03.07.31 //SDOC220		EQU	$
;// 03.07.31 //		JSR	TRAPCHK		; trap check
;// 03.07.31 //		LDX	#00000H
;// 03.07.31 //		BCS	SDOC240		; trap on ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		INX
;// 03.07.31 //SDOC240		EQU	$
;// 03.07.31 //		CPX	!TRAPMD
;// 03.07.31 //		BEQ	SDOC280		; trap ok ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		STX	!TRAPMD
;// 03.07.31 //		STZ	!DOPCPT
;// 03.07.31 //		STZ	!DOPNCT		; door open flag clear
;// 03.07.31 //;
;// 03.07.31 //		MEM8
;// 03.07.31 //		IDX8
;// 03.07.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.07.31 //;
;// 03.07.31 //		LDA	#p1_sdop
;// 03.07.31 //;// 03.07.08 //		STA	<GAMEMD
;// 03.07.31 //		JSR	SWON		; yuka-swich on
;// 03.07.31 //;
;// 03.07.31 //		CPX	#000H
;// 03.07.31 //		BNE	SDOC280		; door open ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		LDA	#01BH
;// 03.07.31 //		STA	!SOUND3		; <sound3>
;// 03.07.31 //;
;// 03.07.31 //		LDX	<WORKE
;// 03.07.31 //		STZ	<INFDF0,X	; information off
;// 03.07.31 //SDOC280		EQU	$
;// 03.07.31 //		MEM8
;// 03.07.31 //		IDX8
;// 03.07.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.07.31 //		RTS
;// 03.07.31 //;
;
;
;
;************************************************************************
;*		Shuter_door open check - 3		(SDROPC3)	*
;************************************************************************
SDROPC3		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
		STX	<WORK0
SDOC320		EQU	$
		LDA	!LMPADR,X
		ASL	A
		BCC	SDOC340		; lamp on ?
;					; yes
		INC	<WORK0
SDOC340		EQU	$
		INX
		INX
		CPX	#00020H
		BNE	SDOC320		; check end ?
;					; yes
		LDX	#00001H
		LDA	<WORK0
		CMP	#00004H
		BCC	SDOC360		; trap on ?
;					; yes
		DEX
SDOC360		EQU	$
		CPX	!TRAPMD
		BEQ	SDOC380		;
;					;
		STX	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT		; door open flag clear
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_sdop
		STA	<GAMEMD
SDOC380		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;
;************************************************************************
;*		Crush wall check - 0 (yuka)		(CWLCHK0)	*
;************************************************************************
CWMKDT		EQU	$		; muki data
;			 left  right     up          down
		WORD	00004H,00006H,00000H,00000H,00002H
CWRPDT		EQU	$		; address replace data
;// 02.05.31 //		WORD	0FFF6H,00000H,0FD80H,00000H,00000H
		WORD	00000H,0000AH,00000H,00000H,00280H
;
;
CWLCHK0		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		JSR	TRAPCHK		; trap check
		BCC	CWCK080		; trap on ?
;					; yes
;// 03.08.30 //		MEM8
;// 03.08.30 //		IDX8
;// 03.08.30 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.08.30 //;
;// 03.08.30 //		LDA	#p1_move
;// 03.08.30 //		JSR	SWON		; yuka-swich on
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
		BRA	CWCK000
;// 03.05.31 //		LDY	#0FFFEH
;// 03.05.31 //CWCK020		EQU	$
;// 03.05.31 //		INY
;// 03.05.31 //		INY
;// 03.05.31 //		LDA	!DRSTAT,Y
;// 03.05.31 //		AND	#000FEH
;// 03.05.31 //		CMP	#crh_dr
;// 03.05.31 //		BNE	CWCK020		; crush wall door ?
;// 03.05.31 //;					; yes
;// 03.05.31 //		STY	!CWLPNT		; crush wall pint set
;// 03.05.31 //;
;// 03.05.31 //		LDA	<PLYPS0
;// 03.05.31 //		AND	#00001H
;// 03.05.31 //		INC	A
;// 03.05.31 //		ASL	A
;// 03.05.31 //		ASL	A
;// 03.05.31 //		TAX
;// 03.05.31 //		LDA	!DORFLG,Y
;// 03.05.31 //		AND	#00002H
;// 03.05.31 //		BEQ	CWCK040		; left,right ?
;// 03.05.31 //;					; yes
;// 03.05.31 //		LDA	<PLXPS0
;// 03.05.31 //		AND	#00001H
;// 03.05.31 //		ASL	A
;// 03.05.31 //		TAX
;// 03.05.31 //CWCK040		EQU	$
;// 03.05.31 //		LDA	>CWMKDT,X
;// 03.05.31 //		STA	>KBMUKI		; OBJ. muki set
;// 03.05.31 //		LDA	!DORADR,Y
;// 03.05.31 //		CLC
;// 03.05.31 //		ADC	>CWRPDT,X
;// 03.05.31 //		TAY
;// 03.05.31 //		AND	#0000000001111110B
;// 03.05.31 //		ASL	A
;// 03.05.31 //		ASL	A
;// 03.05.31 //		CLC
;// 03.05.31 //		ADC	!SCHCT
;// 03.05.31 //		STA	>KBXPS0
;// 03.05.31 //		TYA
;// 03.05.31 //		AND	#0001111110000000B
;// 03.05.31 //		LSR	A
;// 03.05.31 //		LSR	A
;// 03.05.31 //		LSR	A
;// 03.05.31 //		LSR	A
;// 03.05.31 //		CLC
;// 03.05.31 //		ADC	!SCVCT
;// 03.05.31 //		STA	>KBYPS0		; OBJ. x,y-pos. set
;// 03.05.31 //;
;// 03.05.31 //		MEM8
;// 03.05.31 //		IDX8
;// 03.05.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.31 //;
;// 03.05.31 //		LDA	#001H
;// 03.05.31 //		STA	!CWLFLG		; crush wall on
;// 03.05.31 //;
;// 03.05.31 //		LDX	<WORKE
;// 03.05.31 //		STZ	<INFDF0,X	; information off
;// 03.05.31 //;
;// 03.05.31 //		JSL	>KBDMIT		; crush bomb init.
;// 03.05.31 //CWCK080		EQU	$
;// 03.05.31 //		MEM8
;// 03.05.31 //		IDX8
;// 03.05.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.31 //		RTS
;// 03.05.31 //;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Crush wall check - 1 (swich)		(CWLCHK1)	*
;************************************************************************
CWLCHK1		EQU	$
		LDA	!SWCHFG
		BEQ	CWCK080		; wall crush ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
CWCK000		EQU	$
		LDY	#0FFFEH
CWCK020		EQU	$
		INY
		INY
		LDA	!DRSTAT,Y
		AND	#000FEH
		CMP	#crh_dr
		BNE	CWCK020		; crush wall door ?
;					; yes
		STY	!CWLPNT		; crush wall pint set
;
		LDA	<PLYPS0
		AND	#00001H
		INC	A
		ASL	A
		ASL	A
		TAX
		LDA	!DORFLG,Y
		AND	#00002H
		BEQ	CWCK040		; left,right ?
;					; yes
		LDA	<PLXPS0
		AND	#00001H
		ASL	A
		TAX
CWCK040		EQU	$
		LDA	>CWMKDT,X
		STA	>KBMUKI		; OBJ. muki set
		LDA	!DORADR,Y
		CLC
		ADC	>CWRPDT,X
		TAY
		AND	#0000000001111110B
		ASL	A
		ASL	A
		CLC
		ADC	!SCHCT
		STA	>KBXPS0
		TYA
		AND	#0001111110000000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	!SCVCT
		STA	>KBYPS0		; OBJ. x,y-pos. set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#001H
		STA	!CWLFLG		; crush wall on
;
		LDX	<WORKE
		STZ	<INFDF0,X	; information off
;
		JSL	>KBDMIT		; crush bomb init.
CWCK080		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Boss Die check				(BOSSCHK)	*
;************************************************************************
DJITMD		EQU	$		; danjyon item data
		HEX	000		; 00 : chapel
		HEX	000		; 02 : shiro
		HEX	001		; 04 : omote-shinden
		HEX	002		; 06 : omote-sabaku
		HEX	000		; 08 : shisai
		HEX	006		; 0A : ura-hokora
		HEX	006		; 0C : ura-shinden
		HEX	006		; 0E : ura-numa
		HEX	006		; 10 : ura-mori
		HEX	006		; 12 : ura-ice
		HEX	003		; 14 : omote-yama
		HEX	006		; 16 : ura-machi
		HEX	006		; 18 : ura-kame
;
;
BOSSCHK		EQU	$
		LDA	!EMYSTT+1
		AND	#10000000B
		BEQ	BSCC300		; boss out ?
;					; yes
		LDA	!DJNNO
		LSR	A
		TAX
		LDA	>GDTRPF
		BNE	BSCC100		; omote ?
;					; yes
		LDA	>ITEMR53
		AND	>UDJBITD,X
		BNE	BSCC200		; pendanto on ?
;					; no
		BRA	BSCC180
;
BSCC100		EQU	$
		LDA	>ITMTBL3
		AND	>UDJBITD,X
		BNE	BSCC200		; 
;					;
;;;;;;;;		LDA	>ITMTBL3
;;;;;;;;		ORA	>UDJBITD,X
;;;;;;;;		STA	>ITMTBL3	; poly-gon bit on!!
;;;;;;;;;
;;;;;;;;		LDA	#p1_plgn
;;;;;;;;		STA	<GAMEMD
;;;;;;;;		STZ	<JRSBPT
;;;;;;;;;
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B	; memory 16bit mode
;;;;;;;;;
;;;;;;;;		LDX	#000H
;;;;;;;;		LDA	#00000H
;;;;;;;;BSCC140		EQU	$
;;;;;;;;		STA	>CGRAM+040H,X
;;;;;;;;		STA	>CGRAM+060H,X
;;;;;;;;		STA	>CGRAM+080H,X
;;;;;;;;		STA	>CGRAM+0A0H,X
;;;;;;;;		STA	>CGRAM+0C0H,X
;;;;;;;;		STA	>CGRAM+0E0H,X
;;;;;;;;		INX
;;;;;;;;		INX
;;;;;;;;		CPX	#020H
;;;;;;;;		BNE	BSCC140		;
;;;;;;;;;					;
;;;;;;;;		STA	>CCNGCT
;;;;;;;;		STA	>CCNGFG
;;;;;;;;;
;;;;;;;;		MEM8
;;;;;;;;		SEP	#00100000B	; memory 8bit mode
BSCC180		EQU	$
		LDA	#080H
		STA	!BSCLTMR	; timer set
;
		LDA	<WORKE
		PHA			; (A) push
;
		LDA	!DJNNO
		LSR	A
		TAX
		LDA	>DJITMD,X
		JSL	>BSITEM		; item set
;
		PLA			; (A) pull
		STA	<WORKE
BSCC200		EQU	$
		LDX	<WORKE
		STZ	<INFDF0,X	; information off
BSCC300		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Ura-shisai clear check			(USSCLCK)	*
;************************************************************************
USSCLCK		EQU	$
		LDA	>GNDTBL+05BH
		AND	#00100000B
		BNE	USSCK80		; check ?
;					; yes
		LDA	!EMYSTT+1
		ASL	A
		BCC	USSCK80		; ura-shisai die ?
;					; yes
		JSL	>PWTRCGS3	; player CG. reset
;// 03.09.28 //		LDA	>GNDTBL+05BH
;// 03.09.28 //		ORA	#00100000B
;// 03.09.28 //		STA	>GNDTBL+05BH
		STZ	<INFDF0
		JSL	>DJEXTCK	; danjyon exit check
USSCK80		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Ganon Die check				(GANONCHK)	*
;************************************************************************
GANONCHK	EQU	$
;// 03.10.05 //		JSR	>EFLCHK		; enemy zenmetsu check
;// 03.10.05 //		BCC	GNONC80		; zenmetsu ?
;// 03.10.05 //;					; yes
		LDX	#00FH
GNONC20		EQU	$
		LDA	!ENMODE+0,X
		CMP	#EBAKU
		BEQ	GNONC80		; baku-hatsu end ?
;					; yes
		LDA	!ENMOD3+0,X
		AND	#01000000B
		BNE	GNONC40		; check ?
;					; yes
		LDA	!ENMODE+0,X
		BNE	GNONC80		; ganon end ?
;					; yes
GNONC40		EQU	$
		DEX
		BPL	GNONC20		; ganon zenmetsu ?
;					; yes
		LDA	<LNMODE
		CMP	#HLDM
		BEQ	GNONC80		; player hole-down check ?
;					; no
		LDA	#p1_gnop
		STA	!PYALSP
		STA	<GAMEMD
		STZ	<JRSBPT
		STZ	<INFDF0
;
		LDA	#001H
		STA	!KNPASFG
		STZ	<KENKY
		STZ	<KENMD
		LDA	#064H
		STA	<CWORK0
		LDA	#003H
		STA	<CWORK1
GNONC80		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Enemy zenmetsu block move check 	(ERSBLKCK)	*
;************************************************************************
ERSBLKCK	EQU	$
		LDA	<PLXPS0
		LSR	A
		BCC	STBXC90		; x-pos. ok ?
;					; yes
		LDA	<PLYPS0
		LSR	A
		BCC	STBXC90		; y-pos. ok ?
;					; yes
		LDA	<WORKE
		PHA			; (A) push
		JSR	>EFLCHK		; enemy zenmetsu check
		BCC	ERSBC80		; zenmetsu ?
;					; yes
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		PLX			; (X) pull
		STZ	<INFDF0,X
		RTS
;
ERSBC80		EQU	$
		PLA			; (A) pull
STBXC80		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
STBXC90		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Block takara-box check	 		(BKTKBXCK)	*
;************************************************************************
BKTKBXCK	EQU	$
		LDA	<VRFLG
		BNE	BKTBX80		; check ok ?
;					; yes
		LDA	!BLKSWF
		BNE	STBXC000	; block move ?
;					; no
BKTBX80		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Swich takara-box check	 		(SWTKBXCK)	*
;************************************************************************
SWTKBXCK	EQU	$
		LDA	!PYFLASH
		BNE	STBXC90		; player tenmetsu ?
;					; no
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		JSR	TRAPCHK		; trap check
		BCC	STBXC80		; trap on ?
;					; yes
STBXC000	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	<WORKE
		STZ	<INFDF0,X
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	!VRAMD
		STZ	!ITEMMD
		LDA	#05858H
		STA	<WORKC
STBXC100	EQU	$
		LDX	!ITEMMD
		LDA	!TBXADR,X
		AND	#03FFFH
		TAX
		LDY	#tkbox0
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	<WORK2
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		STA	<WORK4
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+002H,X
		STA	<WORK6
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+082H,X
		STA	<WORK8
;
		LDY	!ITEMMD
		LDA	!TBXADR,Y
		AND	#03FFFH
		LSR	A
		TAX
		LDA	<WORKC
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		CLC
		ADC	#00101H
		STA	<WORKC
;
		LDX	!VRAMD
		LDA	#00000H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+2,X
		LDA	#00080H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+8,X
		LDA	#00002H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+14,X
		LDA	#00082H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+20,X	; write address set
;
;
		LDA	<WORK2
		STA	!VRAMD+6,X
		LDA	<WORK4
		STA	!VRAMD+12,X
		LDA	<WORK6
		STA	!VRAMD+18,X
		LDA	<WORK8
		STA	!VRAMD+24,X	; rewrite data
;
		LDA	#00100H
		STA	!VRAMD+4,X
		STA	!VRAMD+10,X
		STA	!VRAMD+16,X
		STA	!VRAMD+22,X
		LDA	#0FFFFH
		STA	!VRAMD+26,X
		TXA
		CLC
		ADC	#00024
		STA	!VRAMD
;
		LDA	!ITEMMD
		INC	A
		INC	A
		STA	!ITEMMD
		CMP	!TBXCPT
		BEQ	STBXC180	; end ?
;					; no
		JMP	STBXC100
;
STBXC180	EQU	$
		STZ	!ITEMMD
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01AH
		STA	!SOUND3		; <sound3>
;
		LDA	#VT01
		STA	<VRFLG
		RTS
;
;
;
;
;************************************************************************
;*		Tourou takara-box check			(TRTBXCK)	*
;************************************************************************
TRTBXCK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
		STX	<WORK0
TRTXC20		EQU	$
		LDA	!LMPADR,X
		ASL	A
		BCC	TRTXC40		; lamp on ?
;					; yes
		INC	<WORK0
TRTXC40		EQU	$
		INX
		INX
		CPX	#00020H
		BNE	TRTXC20		; check end ?
;					; yes
		LDX	#00001H
		LDA	<WORK0
		CMP	#00004H
		BCC	TRTXC60		; trap on ?
;					; yes
		JSR	STBXC000	; takara-box set
TRTXC60		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Open yuka check				(OPYKCHK)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //OPYKCHK		EQU	$
;// 03.06.11 //		LDA	!SWCHFG
;// 03.06.11 //		BEQ	OYCK80		; yuka open/close ?
;// 03.06.11 //;					; yes
;// 03.06.11 //;// 02.08.17 //		LDA	#009H
;// 03.06.11 //		LDA	#p1_opyk
;// 03.06.11 //		STA	<GAMEMD
;// 03.06.11 //		STZ	!SWCHFG
;// 03.06.11 //		STZ	<WORKD
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDX	<WORKD
;// 03.06.11 //		LDA	!OYKMOD
;// 03.06.11 //		BEQ	OYCK40		; open ?
;// 03.06.11 //;					; yes
;// 03.06.11 //;// 03.04.18 //		LDA	!INFSTT
;// 03.06.11 //		LDA	!EMYSTT
;// 03.06.11 //		AND	BITCD1+6,X
;// 03.06.11 //		BRA	OYCK60
;// 03.06.11 //;
;// 03.06.11 //OYCK40		EQU	$
;// 03.06.11 //;// 03.04.18 //		LDA	!INFSTT
;// 03.06.11 //		LDA	!EMYSTT
;// 03.06.11 //		ORA	BITCD0+6,X
;// 03.06.11 //OYCK60		EQU	$
;// 03.06.11 //;// 03.04.18 //		STA	!INFSTT
;// 03.06.11 //		STA	!EMYSTT
;// 03.06.11 //;
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //OYCK80		EQU	$
;// 03.06.11 //		RTS
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Danjyon swich check			(DJSWCK)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //DJSWCK		EQU	$
;// 03.06.11 //		LDX	!DJNNO
;// 03.06.11 //;;;;;;;;		LDA	>DJDTBL,X
;// 03.06.11 //		LSR	A
;// 03.06.11 //		BCC	DJSC80		; danjyon swich check ok ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		JSR	TRAPCHK		; trap check
;// 03.06.11 //		BCC	DJSC80		; trap on ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //;
;// 03.06.11 //;// 03.04.18 //		LDA	!INFSTT
;// 03.06.11 //		LDA	!EMYSTT
;// 03.06.11 //		ORA	BITCD0+6
;// 03.06.11 //;// 03.04.18 //		STA	!INFSTT
;// 03.06.11 //		STA	!EMYSTT
;// 03.06.11 //;
;// 03.06.11 //		LDX	!DJNNO
;// 03.06.11 //;;;;;;;;		LDA	>DJDTBL,X
;// 03.06.11 //		ORA	#00000010B
;// 03.06.11 //;;;;;;;;		STA	>DJDTBL,X	; danjyon swich on
;// 03.06.11 //DJSC80		EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //		RTS
;// 03.06.11 //;
;
;
;
;************************************************************************
;*		Wall move (RIGHT)			(BGWLMV0)	*
;************************************************************************
BGWLMV0		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!BG1MFG
		BNE	BWLM0100	; on check ?
;					; yes
		JSR	BWLMSB1		; on check
		BRA	BWLM0140
;
;
BWLM0100	EQU	$
		LDY	#001H
		STY	!ENSTFG
		JSR	BWLMYR		;  wall yure set
;
;// 02.07.18 //		LDA	BWGPWR0
		LDA	#0FFFFH
		JSR	BWLMSB2		; move calc.
BWLM0140	EQU	$
		STA	!BG1HMC
		LDA	!BGMVC0
		SEC
		SBC	!BG1HMC
		STA	!BGMVC0
		CLC
		ADC	<SCCH2
		STA	<SCCH1
;
		LDA	!BG1HMC
		BEQ	BWLM0200	; move ?
;					; yes
		LDX	!BG1MPT
		LDA	!BGMVC0
		CMP	BWLMTD0,X
		BCS	BWLM0180	; limit ?
;					; yes
		JSR	BWLMSB3		; off set
		LDA	!BGMVC0
		CMP	BWLMTD0,X
		BCS	BWLM0180	; limit ?
;					; yes
		LDX	#01BH
		STX	!SOUND3		; <sound3>
;
		LDX	#005H
		STX	!SOUND1		; <sound1>
;// 03.09.16 //		STX	!SVSND1
;
		LDX	<WORKE
		LDY	#inf_not
		STY	<INFDF0,X
		STY	!PYALSP
		STY	!ENSTFG
;
		STZ	!YUREXD
		STZ	!YUREXD+1
		STZ	!YUREYD
		STZ	!YUREYD+1
BWLM0180	EQU	$
		LDX	#bgw5
		STX	<BGWTFG
;
		LDA	#00000H
		SEC
		SBC	!BGMVC0
		STA	<WORK0
		AND	#0000000111111000B
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK0
		LDA	!B1CWPT
		SEC
		SBC	<WORK0
		AND	#0001010000011111B
		STA	!B1CWF0		; BG.1 clear address set
BWLM0200	EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
BWYRXD		EQU	$
		WORD	00001H,0FFFFH
BWYRYD		EQU	$
		WORD	0FFFFH,00001H
;
;
		MEM16
BWLMYR		EQU	$
		LDA	<FCNT
		AND	#00001H
		ASL	A
		TAX
		LDA	>BWYRXD,X
		STA	!YUREXD
		LDA	>BWYRYD,X
		STA	!YUREYD
;
		LDX	<WORKE
		LDY	<INFDF0,X
		BNE	BWLYR40		; end ?
;					; yes
		STZ	!YUREXD
		STZ	!YUREYD
BWLYR40		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Wall move (LEFT)			(BGWLMV1)	*
;************************************************************************
BGWLMV1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!BG1MFG
		BNE	BWLM1100	; on check ?
;					; yes
		JSR	BWLMSB1		; on check
		BRA	BWLM1140
;
;
BWLM1100	EQU	$
		LDY	#001H
		STY	!ENSTFG
		JSR	BWLMYR		;  wall yure set
;
;// 02.07.18 //		LDA	BWGPWR1
		LDA	#00001H
		JSR	BWLMSB2		; move calc.
BWLM1140	EQU	$
		STA	!BG1HMC
		CLC
		ADC	!BGMVC0
		STA	!BGMVC0
		CLC
		ADC	<SCCH2
		STA	<SCCH1
;
		LDA	!BG1HMC
		BEQ	BWLM1200	; move ?
;					; yes
		LDX	!BG1MPT
		LDA	!BGMVC0
		CMP	BWLMTD1,X
		BCC	BWLM1180	; limit ?
;					; yes
		JSR	BWLMSB3		; off set
		LDA	!BGMVC0
		CMP	BWLMTD1,X
		BCC	BWLM1180	; limit ?
;					; yes
		LDX	#01BH
		STX	!SOUND3		; <sound3>
;
		LDX	#005H
		STX	!SOUND1		; <sound1>
;// 03.09.16 //		STX	!SVSND1
;
		LDX	<WORKE
		LDY	#inf_not
		STY	<INFDF0,X
		STY	!PYALSP
		STY	!ENSTFG
;
		STZ	!YUREXD
		STZ	!YUREXD+1
		STZ	!YUREYD
		STZ	!YUREYD+1
BWLM1180	EQU	$
		LDX	#bgw5
		STX	<BGWTFG
;
		LDA	!BGMVC0
		AND	#0000000111111000B
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK0
		LDA	!B1CWPT
		CLC
		ADC	<WORK0
		STA	!B1CWF0		; BG.1 clear address set
		AND	#0001000000100000B
		BEQ	BWLM1200	;
;					;
		EOR	#0000010000100000B
		STA	!B1CWF0
BWLM1200	EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		Wall move (DOWN)			(BGWLMV2)	*
;************************************************************************
BGWLMV2		EQU	$
;// 03.06.19 //		MEM16
;// 03.06.19 //		REP	#00100000B	; memory 16bit mode
;// 03.06.19 //;
;// 03.06.19 //		LDA	!BG1MFG
;// 03.06.19 //		BNE	BWLM2100	; on check ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		JSR	BWLMSB1		; on check
;// 03.06.19 //		BRA	BWLM2140
;// 03.06.19 //;
;// 03.06.19 //;
;// 03.06.19 //BWLM2100	EQU	$
;// 03.06.19 //		JSR	BWLMYR		;  wall yure set
;// 03.06.19 //;
;// 03.06.19 //;// 02.07.18 //		LDA	BWGPWR0
;// 03.06.19 //		LDA	#0FFFFH
;// 03.06.19 //		JSR	BWLMSB2		; move calc.
;// 03.06.19 //BWLM2140	EQU	$
;// 03.06.19 //		STA	!BG1VMC
;// 03.06.19 //		BEQ	BWLM2200	; move ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		CLC
;// 03.06.19 //		ADC	!BGMVC1
;// 03.06.19 //		STA	!BGMVC1
;// 03.06.19 //		CLC
;// 03.06.19 //		ADC	<SCCV2
;// 03.06.19 //		STA	<SCCV1
;// 03.06.19 //;
;// 03.06.19 //		LDX	!BG1MPT
;// 03.06.19 //		LDA	!BGMVC1
;// 03.06.19 //		CMP	BWLMTD0,X
;// 03.06.19 //		BCS	BWLM2180	; limit ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		JSR	BWLMSB3		; off set
;// 03.06.19 //		LDA	!BGMVC1
;// 03.06.19 //		CMP	BWLMTD0,X
;// 03.06.19 //		BCS	BWLM2180	; limit ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		LDX	#005H
;// 03.06.19 //		STX	!SOUND1		; <sound1>
;// 03.06.19 //		STX	!SVSND1
;// 03.06.19 //;
;// 03.06.19 //		LDX	<WORKE
;// 03.06.19 //		LDY	#inf_not
;// 03.06.19 //		STY	<INFDF0,X
;// 03.06.19 //		STY	!PYALSP
;// 03.06.19 //		STY	!ENSTFG
;// 03.06.19 //BWLM2180	EQU	$
;// 03.06.19 //		LDX	#bgw6
;// 03.06.19 //		STX	<BGWTFG
;// 03.06.19 //;
;// 03.06.19 //		LDA	#00000H
;// 03.06.19 //		SEC
;// 03.06.19 //		SBC	!BGMVC1
;// 03.06.19 //		STA	<WORK0
;// 03.06.19 //		AND	#000F8H
;// 03.06.19 //		ASL	A
;// 03.06.19 //		ASL	A
;// 03.06.19 //		STA	<WORK0
;// 03.06.19 //		LDA	!B1CWPT
;// 03.06.19 //		SEC
;// 03.06.19 //		SBC	<WORK0
;// 03.06.19 //		AND	#0001111111111111B
;// 03.06.19 //		STA	!B1CWF1		; BG.1 clear address set
;// 03.06.19 //		AND	#0000010000000000B
;// 03.06.19 //		BEQ	BWLM2200	;
;// 03.06.19 //;					;
;// 03.06.19 //		LDA	!B1CWF1
;// 03.06.19 //		SEC
;// 03.06.19 //		SBC	#00400H
;// 03.06.19 //		STA	!B1CWF1
;// 03.06.19 //BWLM2200	EQU	$
;// 03.06.19 //		MEM8
;// 03.06.19 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.19 //		RTS
;// 03.06.19 //;
;
;
;************************************************************************
;*		Wall move (UP)				(BGWLMV3)	*
;************************************************************************
BGWLMV3		EQU	$
;// 03.06.19 //		MEM16
;// 03.06.19 //		REP	#00100000B	; memory 16bit mode
;// 03.06.19 //;
;// 03.06.19 //		LDA	!BG1MFG
;// 03.06.19 //		BNE	BWLM3100	; on check ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		JSR	BWLMSB1		; on check
;// 03.06.19 //		BRA	BWLM3140
;// 03.06.19 //;
;// 03.06.19 //;
;// 03.06.19 //BWLM3100	EQU	$
;// 03.06.19 //		JSR	BWLMYR		;  wall yure set
;// 03.06.19 //;
;// 03.06.19 //;// 02.07.18 //		LDA	BWGPWR1
;// 03.06.19 //		LDA	#00001H
;// 03.06.19 //		JSR	BWLMSB2		; move calc.
;// 03.06.19 //BWLM3140	EQU	$
;// 03.06.19 //		STA	!BG1VMC
;// 03.06.19 //		BEQ	BWLM3200	; move ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		LDA	!BGMVC1
;// 03.06.19 //		CLC
;// 03.06.19 //		ADC	!BG1VMC
;// 03.06.19 //		STA	!BGMVC1
;// 03.06.19 //		LDA	<SCCV2
;// 03.06.19 //		CLC
;// 03.06.19 //		ADC	!BGMVC1
;// 03.06.19 //		STA	<SCCV1
;// 03.06.19 //;
;// 03.06.19 //		LDX	!BG1MPT
;// 03.06.19 //		LDA	!BGMVC1
;// 03.06.19 //		CMP	BWLMTD1,X
;// 03.06.19 //		BCC	BWLM3180	; limit ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		JSR	BWLMSB3		; off set
;// 03.06.19 //		LDA	!BGMVC1
;// 03.06.19 //		CMP	BWLMTD1,X
;// 03.06.19 //		BCC	BWLM3180	; limit ?
;// 03.06.19 //;					; yes
;// 03.06.19 //		LDX	#005H
;// 03.06.19 //		STX	!SOUND1		; <sound1>
;// 03.06.19 //		STX	!SVSND1
;// 03.06.19 //;
;// 03.06.19 //		LDX	<WORKE
;// 03.06.19 //		LDY	#inf_not
;// 03.06.19 //		STY	<INFDF0,X
;// 03.06.19 //		STY	!PYALSP
;// 03.06.19 //		STY	!ENSTFG
;// 03.06.19 //BWLM3180	EQU	$
;// 03.06.19 //		LDX	#bgw6
;// 03.06.19 //		STX	<BGWTFG
;// 03.06.19 //;
;// 03.06.19 //		LDA	!BGMVC1
;// 03.06.19 //		AND	#000F8H
;// 03.06.19 //		ASL	A
;// 03.06.19 //		ASL	A
;// 03.06.19 //		STA	<WORK0
;// 03.06.19 //		LDA	!B1CWPT
;// 03.06.19 //		CLC
;// 03.06.19 //		ADC	<WORK0
;// 03.06.19 //		AND	#0001111111111111B
;// 03.06.19 //		STA	!B1CWF1		; BG.1 clear address set
;// 03.06.19 //		AND	#0000010000000000B
;// 03.06.19 //		BEQ	BWLM3200	;
;// 03.06.19 //;					;
;// 03.06.19 //		LDA	!B1CWF1
;// 03.06.19 //		CLC
;// 03.06.19 //		ADC	#00400H
;// 03.06.19 //		AND	#01FFFH
;// 03.06.19 //		STA	!B1CWF1
;// 03.06.19 //BWLM3200	EQU	$
;// 03.06.19 //		MEM8
;// 03.06.19 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.19 //		RTS
;// 03.06.19 //;
;
;
;
;
		MEM16
BWLMSB1		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
;////////		LDA	!BLKSWF
;////////		BNE	BWMS120		; block swich on ?
;////////;					; no
;<<< 03.09.05 >>>		LDA	!INFONFG
;<<< 03.09.05 >>>		BNE	BWMS120		;
;<<< 03.09.05 >>>;					;
		LDA	!SWCHFG
		AND	#000FFH
		BNE	BWMS120		; swich on ?
;					; no
		LDX	#00000H
		STX	<WORK0
BWMS110		EQU	$
		LDA	!LMPADR,X
		ASL	A
		BCC	BWMS115		; lamp on ?
;					; yes
		INC	<WORK0
BWMS115		EQU	$
		INX
		INX
		CPX	#00020H
		BNE	BWMS110		; check end ?
;					; yes
		LDA	<WORK0
		CMP	#00004H
;// 03.07.08 //		BCS	BWMS120		; swich on ?
;// 03.07.08 //;					; no
;// 03.07.08 //		JSR	TRAPCHK		; trap check
;// 03.07.08 //;// 03.07.03 //		BCS	BWMS120		; trap on ?
;// 03.07.08 //;// 03.07.03 //;					; no
;// 03.07.08 //;// 03.07.03 //		JSR	TPLMPCK		; lamp trap check
		BCC	BWMS140		; trap on ?
;					; yes
BWMS120		EQU	$
		INC	!BG1MFG
;<<< 03.09.05 >>>		STZ	!INFONFG
		STZ	!SWCHFG
;
;// 03.04.05 //		LDA	<WORKE
;// 03.04.05 //		ASL	A
;// 03.04.05 //		TAX
;// 03.04.05 //		LDA	!INFSTT
;// 03.04.05 //		ORA	>BITCD0,X
;// 03.04.05 //		STA	!INFSTT		; information bit on
;<<< 03.09.05 >>>		LDX	<RMXYCT
;<<< 03.09.05 >>>		LDA	>DJINFTBL,X
;<<< 03.09.05 >>>		ORA	#0000000010000000B
;<<< 03.09.05 >>>		STA	>DJINFTBL,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<WORKE
		ASL	A
		TAX
		LDA	!EMYSTT+1
		ORA	BITCD0+6+1,X
		STA	!EMYSTT+1
;
		LDA	#007H
		STA	!SOUND1		; <sound1>
;// 03.09.16 //		STA	!SVSND1
;
		LDA	#001H
		STA	!PYALSP
		STA	!ENSTFG		; player & enemy stop!!
;
		MEM16
		REP	#00100000B	; memory 16bit mode
BWMS140		EQU	$
		LDA	#0000H
;
		IDX8
		SEP	#00010000B	; index 8bit mode
		RTS
;
;
BWLMSB2		EQU	$
		LDA	#02200H
		CLC
		ADC	!BG1MBF
		STA	!BG1MBF
		ROL	A
		AND	#00001H
;// 03.04.18 //		CLC
;// 03.04.18 //		ADC	!BG1MBF
;// 03.04.18 //		STA	!BG1MBF
;// 03.04.18 //		CLC
;// 03.04.18 //		ADC	!BG1YCT
;// 03.04.18 //		PHA			; (A) push
;// 03.04.18 //		AND	#000FFH
;// 03.04.18 //		STA	!BG1YCT
;// 03.04.18 //		PLA			; (A) pull
;// 03.04.18 //		BPL	BWMS240		;
;// 03.04.18 //;					;
;// 03.04.18 //		ORA	#000FFH
;// 03.04.18 //		BRA	BWMS280
;// 03.04.18 //;
;// 03.04.18 //BWMS240		EQU	$
;// 03.04.18 //		AND	#0FF00H
;// 03.04.18 //BWMS280		EQU	$
;// 03.04.18 //		XBA
		RTS
;
;
BWLMSB3		EQU	$
		LDX	<WORKE
		LDY	<INFDF0,X
		CPY	#inf_cwy
		BCS	BWMS340		; erase wall ?
;					; yes
		LDX	#000H
		STX	!BGALCKF	; player BG. check flag set
		LDX	#016H
		STX	<DPMAIN		; BG.1 off
BWMS340		EQU	$
		LDX	!BG1MPT
		CPY	#inf_cwy
		BCS	BWMS380		; erase wall ?
;					; yes
		TXA
		CLC
		ADC	#00008H
		TAX
BWMS380		EQU	$
WRDW040		EQU	$
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Water down check			(WRDWCHK)	*
;************************************************************************
WRDWCHK		EQU	$
		LDA	!SWCHFG
		BEQ	WRDW040		; swich on ?
;					; yes
		LDA	#00000011B
		STA	<WD2123
		STZ	<WD2124
		STZ	<WD2125
		LDA	#00010110B
		STA	<WDMAIN
		LDA	#00000001B
		STA	<WDSUB
;
;// 03.09.25 //		LDA	#00000010B
;// 03.09.25 //		STA	<WD2130
;// 03.09.25 //		LDA	#00110010B
;// 03.09.25 //		STA	<WD2131
;
		LDA	#001H
		STA	!BGMVC1
		JSL	>WTRWPMV	; water wipe init. set
;
		LDA	#p1_wtrd
		STA	<GAMEMD
;
		LDA	#000H
		STA	>CCNGCT
		STA	>CCNGFG
		LDA	#01FH
		STA	>CCNGED
;
;// 03.09.25 //		MEM16
;// 03.09.25 //		REP	#00100000B	; memory 16bit mode
;// 03.09.25 //;
;// 03.09.25 //		LDA	#07D27H
;// 03.09.25 //		STA	>CGRAM+0E8H
;// 03.09.25 //		STA	>CGWORK+0E8H
;// 03.09.25 //		LDA	#05800H
;// 03.09.25 //		STA	>CGRAM+0ECH
;// 03.09.25 //		STA	>CGWORK+0ECH
;// 03.09.25 //		LDA	#03400H
;// 03.09.25 //		STA	>CGRAM+0EEH
;// 03.09.25 //		STA	>CGWORK+0EEH
;// 03.09.25 //;
;// 03.09.25 //		MEM8
;// 03.09.25 //		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF
;
		LDA	#inf_not
		STA	<INFDF1
;// 03.04.18 //		LDA	!INFSTT+1
		LDA	!EMYSTT+1
		ORA	>BITCD0+9
;// 03.04.18 //		STA	!INFSTT+1	; information bit on
		STA	!EMYSTT+1
		STZ	!SWCHFG
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!WRWPYP
		AND	#001FFH
		SEC
		SBC	#00010H
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK8
		LDA	!WRWPXP
		AND	#001FFH
		SEC
		SBC	#00010H
		LSR	A
		LSR	A
		TSB	<WORK8
;
		LDX	<WORK8
		JSR	HISIST		; haisui set
;// 03.08.02 //		STZ	<WORKC
		JSR	BGCNGS11	; BG. change data set
;
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y	; end code set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
		LDA	#02EH
		STA	!SOUND2		; <sound2>
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
WRUPC40		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Water up check				(WRUPCHK)	*
;************************************************************************
WRUPCHK		EQU	$
		LDA	!SWCHFG
		BEQ	WRUPC40		; swich on ?
;					; yes
;// 02.10.25 //		LDA	#07D27H
;// 02.10.25 //		STA	>CGRAM+0E8H
;// 02.10.25 //		LDA	#02041H
;// 02.10.25 //		STA	>CGWORK+0E8H
;// 02.10.25 //		LDA	#05800H
;// 02.10.25 //		STA	>CGRAM+0ECH
;// 02.10.25 //		LDA	#01800H
;// 02.10.25 //		STA	>CGWORK+0ECH
;// 02.10.25 //		LDA	#03400H
;// 02.10.25 //		STA	>CGRAM+0EEH
;// 02.10.25 //		LDA	#00C00H
;// 02.10.25 //		STA	>CGWORK+0EEH
;
;// 02.10.25 //		INC	<CGVMAF
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
		LDA	#02FH
		STA	!SOUND2		; <sound2>
;
		LDA	#p1_wtru
		STA	<GAMEMD
		STZ	<JRSBPT
		LDA	#001H
		STA	!BGMVC1
;
		LDA	#inf_not
		STA	<INFDF1
;// 03.04.18 //		LDA	!INFSTT+1
		LDA	!EMYSTT+1
		ORA	>BITCD0+9
;// 03.04.18 //		STA	!INFSTT+1	; information bit on
		STA	!EMYSTT+1
		STZ	!SWCHFG
		STZ	!WBFPNT
WGTC400		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Water gate open check			(WGATECK)	*
;************************************************************************
WGATECK		EQU	$
		LDA	!EMYSTT+1
		AND	>BITCD0+9
		BNE	WGTC400		; gate open ?
;					; no
		LDA	!SWCHFG
		BEQ	WGTC400		; trap on ?
;					; yes
		LDA	#p1_wgop
		STA	<GAMEMD
		STZ	<JRSBPT
;
		LDA	#inf_not
		STA	<INFDF1
;// 03.04.18 //		LDA	!INFSTT+1
		LDA	!EMYSTT+1
		ORA	>BITCD0+9
;// 03.04.18 //		STA	!INFSTT+1	; information bit on
		STA	!EMYSTT+1
		STZ	!SWCHFG
;
		STZ	!WRWPH0
		STZ	!WNYBUF
;
		LDA	#00000011B
		STA	<WD2123
		STZ	<WD2124
		STZ	<WD2125
		LDA	#00010110B
		STA	<WDMAIN
		LDA	#00000001B
		STA	<WDSUB
;
		LDA	#00000010B
		STA	<WD2130
		LDA	#01100010B
		STA	<WD2131
;
		LDA	>GNDTBL+03BH
		ORA	#00100000B
		STA	>GNDTBL+03BH
		LDA	>GNDTBL+03BH+040H
		ORA	#00100000B
		STA	>GNDTBL+03BH+040H
;
		LDA	>DJNTBL+028H*2+1
		ORA	#00000001B
		STA	>DJNTBL+028H*2+1
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#BANK WRRSD0
		STA	<DTBFWK+2	; water rewrite data address (B) set
		LDA	#WRRSD0
		JSR	REWTST		; rewrite data set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!WGTADR
		AND	#0000000001111110B
		ASL	A
		ASL	A
		STA	!WRWPXP
		LDA	<XSTCNT
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	!SCHCT
		CLC
		ADC	!WRWPXP
		CLC
		ADC	#00028H
		STA	!WRWPXP		; center x-pos.
		LDA	!WGTADR
		AND	#0001111110000000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	!WNYPL1
		STA	!WNXBUF		; end y-pos.
		CLC
		ADC	!SCVCT
		STA	!WRWPYP		; start y-pos.
;
		STZ	!WRWPH1		; y-hankei set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
		LDA	#02FH
		STA	!SOUND2		; <sound2>
;
;************************************************************************
;*		Ground water check		 	(GWTRCHK)	*
;************************************************************************
GWTRCHK		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Trap check - 0				(TRAP000)	*
;************************************************************************
TRAP000		EQU	$
		LDA	#001H
		BRA	TRAPCHECK
;
;************************************************************************
;*		Trap check - 2				(TRAP200)	*
;************************************************************************
TRAP200		EQU	$
		LDA	#003H
		BRA	TRAPCHECK
;
;************************************************************************
;*		Trap check - 4				(TRAP400)	*
;************************************************************************
TRAP400		EQU	$
		LDA	#006H
		BRA	TRAPCHECK
;
;************************************************************************
;*		Trap check - 5				(TRAP500)	*
;************************************************************************
TRAP500		EQU	$
		LDA	#008H
		BRA	TRAPCHECK
;
;************************************************************************
;*		Trap check - 6				(TRAP600)	*
;************************************************************************
TRAP600		EQU	$
		LDA	#00AH
		BRA	TRAPCHECK
;
;************************************************************************
;*		Trap check - 7				(TRAP700)	*
;************************************************************************
TRAP700		EQU	$
		LDA	#00CH
		BRA	TRAPCHECK
;
;************************************************************************
;*		Trap check - 8				(TRAP800)	*
;************************************************************************
TRAP800		EQU	$
		LDA	#00EH
		BRA	TRAPCHECK
;
;************************************************************************
;*		Trap check - 9				(TRAP900)	*
;************************************************************************
TRAP900		EQU	$
		LDA	#010H
TRAPCHECK	EQU	$
		STA	<WORKA
;
		LDY	!TPCHPT
		BNE	TRAP040		; init. ?
;					; yes
		STA	!TPCHPT
TRAP040		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		JSR	TRAPCK1		; trap check
		BCC	TRAP080		; trap on ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		TYA
		CLC
		ADC	<WORKA
		CMP	!TPCHPT
		BEQ	TRAP080		; trap on ?
;					; yes
		STA	!TPCHPT		; trap mode reset
		STZ	<DTRDPT
		STZ	<DTRDPT+1
		STZ	<JRSBPT
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_bchg
		STA	<GAMEMD
		LDA	!SWYKPT
		EOR	#00000001B
		STA	!SWYKPT
		JSL	>SWYKCNG	; swich-yuka change
TRAP080		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Trap check - 1				(TRAP100)	*
;************************************************************************
TRAP100		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDY	#00000H
		BRA	TRAPZCK
;
;************************************************************************
;*		Trap check - A				(TRAPA00)	*
;************************************************************************
TRAPA00		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDY	#00012H
TRAPZCK		EQU	$
		LDA	!EMYSTT+1
		AND	#00000001B
		BEQ	TRAP180		; item on ?
;					; yes
TRAPZZZ		EQU	$
		STY	!TPCHPT		; trap mode reset
;
		MEM8
		IDX8
		SEP	#00110000B	; memory 8bit mode
;
		STZ	<DTRDPT
		STZ	<DTRDPT+1
;
		STZ	<JRSBPT
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_bchg
		STA	<GAMEMD		; trap mode
		LDX	<WORKE
		STZ	<INFDF0,X
TRAP180		EQU	$
TRAP380		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;// 03.08.06 //;
;// 03.08.06 //;************************************************************************
;// 03.08.06 //;*		Trap check - 2				(TRAP200)	*
;// 03.08.06 //;************************************************************************
;// 03.08.06 //TRAP200		EQU	$
;// 03.08.06 //		MEM16
;// 03.08.06 //		IDX16
;// 03.08.06 //		REP	#00110000B	; memory,index 16bit mode
;// 03.08.06 //;
;// 03.08.06 //		JSR	TRAPCHK		; trap check
;// 03.08.06 //		BCC	TRAP280		; trap on ?
;// 03.08.06 //;					; yes
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110000B	; memory 8bit mode
;// 03.08.06 //;
;// 03.08.06 //		INY
;// 03.08.06 //		INY
;// 03.08.06 //		INY
;// 03.08.06 //		CPY	!TPCHPT
;// 03.08.06 //		BEQ	TRAP280		; trap on ?
;// 03.08.06 //;					; yes
;// 03.08.06 //		STY	!TPCHPT		; trap mode reset
;// 03.08.06 //		STZ	<DTRDPT
;// 03.08.06 //		STZ	<JRSBPT
;// 03.08.06 //		LDA	#01BH
;// 03.08.06 //		STA	!SOUND3		; <sound3>
;// 03.08.06 //;
;// 03.08.06 //		LDA	#p1_bchg
;// 03.08.06 //		STA	<GAMEMD
;// 03.08.06 //TRAP280		EQU	$
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.08.06 //		RTS
;// 03.08.06 //;
;
;
;
;************************************************************************
;*		Trap check - 3				(TRAP300)	*
;************************************************************************
TRAP300		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		JSR	TRAPCK1		; trap check
		BCC	TRAP380		; trap on ?
;					; yes
		LDY	#00005H
		BRA	TRAPZZZ
;// 03.08.06 //		STY	!TPCHPT		; trap mode reset
;// 03.08.06 //;
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110000B	; memory 8bit mode
;// 03.08.06 //;
;// 03.08.06 //		STZ	<DTRDPT
;// 03.08.06 //;
;// 03.08.06 //		STZ	<JRSBPT
;// 03.08.06 //;
;// 03.08.06 //		LDA	#01BH
;// 03.08.06 //		STA	!SOUND3		; <sound3>
;// 03.08.06 //;
;// 03.08.06 //		LDX	<WORKE
;// 03.08.06 //		STZ	<INFDF0,X
;// 03.08.06 //		LDA	#p1_bchg
;// 03.08.06 //		STA	<GAMEMD		; trap mode
;// 03.08.06 //TRAP380		EQU	$
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.08.06 //		RTS
;// 03.08.06 //;
;
;
;// 03.08.06 //;
;// 03.08.06 //;************************************************************************
;// 03.08.06 //;*		Trap check - 4				(TRAP400)	*
;// 03.08.06 //;************************************************************************
;// 03.08.06 //TRAP400		EQU	$
;// 03.08.06 //		MEM16
;// 03.08.06 //		IDX16
;// 03.08.06 //		REP	#00110000B	; memory,index 16bit mode
;// 03.08.06 //;
;// 03.08.06 //		JSR	TRAPCHK		; trap check
;// 03.08.06 //		BCC	TRAP480		; trap on ?
;// 03.08.06 //;					; yes
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110000B	; memory 8bit mode
;// 03.08.06 //;
;// 03.08.06 //		INY
;// 03.08.06 //		INY
;// 03.08.06 //		INY
;// 03.08.06 //		INY
;// 03.08.06 //		INY
;// 03.08.06 //		INY
;// 03.08.06 //		CPY	!TPCHPT
;// 03.08.06 //		BEQ	TRAP480		; trap on ?
;// 03.08.06 //;					; yes
;// 03.08.06 //		STY	!TPCHPT		; trap mode reset
;// 03.08.06 //		STZ	<DTRDPT
;// 03.08.06 //		STZ	<JRSBPT
;// 03.08.06 //		LDA	#01BH
;// 03.08.06 //		STA	!SOUND3		; <sound3>
;// 03.08.06 //;
;// 03.08.06 //		LDA	#p1_bchg
;// 03.08.06 //		STA	<GAMEMD
;// 03.08.06 //TRAP480		EQU	$
;// 03.08.06 //		MEM8
;// 03.08.06 //		IDX8
;// 03.08.06 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.08.06 //		RTS
;
;
;
;
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		Rewrite data set			(REWTST)	*
;************************************************************************
REWTST		EQU	$
		STA	<DTBFWK		; water rewrite data address (H,L) set
;
		STZ	<DTRDPT
REWS040		EQU	$
		STZ	<XSTCNT
		STZ	<YSTCNT
;
		LDY	<DTRDPT		; (Y) <-- data read pointer
		LDA	[<DTBFWK],Y
		CMP	#0FFFFH
		BNE	REWS100		; data end ?
;					; yes
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
REWS100		EQU	$
		STA	<WORK0
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		AND	#11111100B
		STA	<WORK8
;
		LDA	<WORK0
		AND	#00000011B
		INC	A
		STA	<XSTCNT		; x-set counter
		LDA	<WORK1
		AND	#00000011B
		INC	A
		STA	<YSTCNT		; y-set counter
		INY
		INY
		INY
		STY	<DTRDPT
		LDA	<WORK1
		LSR	A
		LSR	A
		LSR	A
		ROR	<WORK8
		STA	<WORK9		; (WORK8),(WORK9) <-- set address
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	<WORK8		; (X) <-- set address
		LDY	#watrd1		; (Y) <-- unit data point
REWS120		EQU	$
		LDA	<XSTCNT
		STA	<WORKA
REWS140		EQU	$
		LDA	#00002
		STA	<WORK4
REWS180		EQU	$
		LDA	FLORDT+000H,Y
		STA	>BG1RBF+000H,X
		LDA	FLORDT+002H,Y
		STA	>BG1RBF+002H,X
		LDA	FLORDT+004H,Y
		STA	>BG1RBF+004H,X
		LDA	FLORDT+006H,Y
		STA	>BG1RBF+006H,X
;
		LDA	FLORDT+008H,Y
		STA	>BG1RBF+080H,X
		LDA	FLORDT+00AH,Y
		STA	>BG1RBF+082H,X
		LDA	FLORDT+00CH,Y
		STA	>BG1RBF+084H,X
		LDA	FLORDT+00EH,Y
		STA	>BG1RBF+086H,X
		TXA
		CLC
		ADC	#00100H
		TAX			; (y) <-- (y) + #00100H
;// 03.06.26 //		TYA
;// 03.06.26 //		CLC
;// 03.06.26 //		ADC	#00008H
;// 03.06.26 //		TAY
		DEC	<WORK4
		BNE	REWS180		; 1 unit end ?
;					; yes
;// 03.06.26 //		TYA
;// 03.06.26 //		SEC
;// 03.06.26 //		SBC	#00020H
;// 03.06.26 //		TAY
		TXA
		SEC
		SBC	#001F8H
		TAX
		DEC	<WORKA
		BNE	REWS140		; 1 line end ?
;					; yes
		LDA	<WORK8
		CLC
		ADC	#00200H
		STA	<WORK8
		TAX
		DEC	<YSTCNT
		BNE	REWS120		; end ?
;					; yes
		JMP	REWS040
;
;
;// 03.07.03 //;
;// 03.07.03 //;************************************************************************
;// 03.07.03 //;*		Trap check				(TPLMPCK)	*
;// 03.07.03 //;************************************************************************
;// 03.07.03 //TPLMPCK		EQU	$
;// 03.07.03 //		MEM16
;// 03.07.03 //		IDX16
;// 03.07.03 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.03 //;
;// 03.07.03 //		LDA	<PLYPS1
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	#0000EH
;// 03.07.03 //		AND	#001F8H
;// 03.07.03 //		ASL	A
;// 03.07.03 //		ASL	A
;// 03.07.03 //		ASL	A
;// 03.07.03 //		STA	<WORK0
;// 03.07.03 //		LDA	<PLXPS1
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	#00004H
;// 03.07.03 //		AND	#001F8H
;// 03.07.03 //		LSR	A
;// 03.07.03 //		LSR	A
;// 03.07.03 //		LSR	A
;// 03.07.03 //		ORA	<WORK0
;// 03.07.03 //		TAX
;// 03.07.03 //;
;// 03.07.03 //		LDA	>READBF+000H,X
;// 03.07.03 //		AND	#0F0F0H
;// 03.07.03 //		CMP	#0D0D0H
;// 03.07.03 //		BNE	TPLC80		; check ok ?
;// 03.07.03 //;					; no
;// 03.07.03 //		STA	<WORK0
;// 03.07.03 //		LDA	>READBF+040H,X
;// 03.07.03 //		AND	#0F0F0H
;// 03.07.03 //		CMP	<WORK0
;// 03.07.03 //		BNE	TPLC80		; check ok ?
;// 03.07.03 //;					; yes
;// 03.07.03 //		LDA	>READBF+000H,X
;// 03.07.03 //		PHA			; (A) push
;// 03.07.03 //		LDA	#00000H
;// 03.07.03 //		STA	>READBF+000H,X
;// 03.07.03 //		STA	>READBF+040H,X
;// 03.07.03 //		PLA			; (A) pull
;// 03.07.03 //;
;// 03.07.03 //		MEM8
;// 03.07.03 //		IDX8
;// 03.07.03 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.07.03 //;
;// 03.07.03 //		AND	#0EFH
;// 03.07.03 //		STA	!FIRENO
;// 03.07.03 //		JSL	>LAMPPL		; lamp on
;// 03.07.03 //;
;// 03.07.03 //		DEC	!LMPPNT
;// 03.07.03 //		BNE	TPLC80		; lamp all on ?
;// 03.07.03 //;					; yes
;// 03.07.03 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.03 //;
;// 03.07.03 //		SEC
;// 03.07.03 //		RTS
;// 03.07.03 //;
;// 03.07.03 //TPLC80		EQU	$
;// 03.07.03 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.03 //;
;// 03.07.03 //		CLC
;// 03.07.03 //		RTS
;// 03.07.03 //;
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		Trap check				(TRAPCHK)	*
;************************************************************************
TRAPCHK		EQU	$
		LDA	!PYALSP
		AND	#000FFH
		BNE	TPCK80		; player stop ?
;					; yes
		LDA	<DIEFG
		AND	#000FFH
		BNE	TPCK80		; player damage ?
;					; no
		JSR	TPADRGT
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK40		; check ok ?
;					; no
		CMP	#02424H
		BEQ	TPCK40		; check ok ?
;					; no
		TXA
		CLC
		ADC	#00040H
		TAX
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK40		; check ok ?
;					; no
		CMP	#02424H
		BEQ	TPCK40		; check ok ?
;					; no
		INC	<WORK0
		LDX	<WORK0
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK40		; check ok ?
;					; no
		CMP	#02424H
		BEQ	TPCK40		; check ok ?
;					; no
		TXA
		CLC
		ADC	#00040H
		TAX
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK40		; check ok ?
;					; no
		CMP	#02424H
		BNE	TPCK80		; check ok ?
;					; yes
TPCK40		EQU	$
		CMP	>READBF+040H,X
		BNE	TPCK80		; check ok ?
;					; yes
		STA	<WORKC
		STX	!TRAPPT
		SEC
		RTS
;
TPCK80		EQU	$
		STZ	!TRAPPT
		CLC
		RTS
;
;
TPADRGT		EQU	$
		LDA	<PLXPS1
		CLC
		ADC	#0FFFFH
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK0
		LDA	<PLYPS1
		CLC
		ADC	#0000EH
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		ORA	<WORK0
		LDX	<PLBGCKF
		BEQ	TPAG40		; on BG.2 ?
;					; no
		ORA	#01000H
TPAG40		EQU	$
		STA	<WORK0
		TAX
		RTS
;
;
;
;
;************************************************************************
;*		Trap check				(TRAPCK1)	*
;************************************************************************
TRAPCK1		EQU	$
		LDA	!PYALSP
		AND	#000FFH
		BNE	TPCK80		; player stop ?
;					; yes
		LDA	<DIEFG
		AND	#000FFH
		BNE	TPCK80		; player damage ?
;					; no
		JSR	TPADRGT
		LDY	#00000H
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK140		; check ok ?
;					; no
		CMP	#03A3AH
		BEQ	TPCK140		; check ok ?
;					; no
		INY
		CMP	#03B3BH
		BEQ	TPCK140		; check ok ?
;					; no
		TXA
		CLC
		ADC	#00040H
		TAX
		LDY	#00000H
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK140		; check ok ?
;					; no
		CMP	#03A3AH
		BEQ	TPCK140		; check ok ?
;					; no
		INY
		CMP	#03B3BH
		BEQ	TPCK140		; check ok ?
;					; no
		INC	<WORK0
		LDX	<WORK0
		LDY	#00000H
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK140		; check ok ?
;					; no
		CMP	#03A3AH
		BEQ	TPCK140		; check ok ?
;					; no
		INY
		CMP	#03B3BH
		BEQ	TPCK140		; check ok ?
;					; no
		TXA
		CLC
		ADC	#00040H
		TAX
		LDY	#00000H
		LDA	>READBF+000H,X
		CMP	#02323H
		BEQ	TPCK140		; check ok ?
;					; no
		CMP	#03A3AH
		BEQ	TPCK140		; check ok ?
;					; no
		CMP	#03B3BH
		BNE	TPCK180		; check ok ?
;					; no
		INY
TPCK140		EQU	$
		CMP	>READBF+040H,X
		BNE	TPCK180		; check ok ?
;					; yes
		STA	<WORKC
		STX	!TRAPPT
		SEC
		RTS
;
;
TPCK180		EQU	$
		STZ	!TRAPPT
		CLC
		RTS
;
;
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Lamp timer check			(LMPTIMER)	*
;************************************************************************
ERDCKD		EQU	$		; erase door check data
;			    u      d      l      r
		WORD	00002H,00000H,00006H,00004H
;
CDRRPD		EQU	$		; certen rewrite data pointer
		WORD	crtnd8,crtnd9,crtndA,crtndB
;
DRSNDP		EQU	$		; door sound point
;			 up  down left right
		BYTE	000H,000H,080H,040H
;
;
;
LMPTIMER	EQU	$
		LDA	<FCNT
		AND	#00000011B
		BNE	DRCHCK		; timer check ?
;					; yes
		LDA	!SPMCFG
		BNE	DRCHCK		; special-magic on ?
;					; no
		LDX	#000H
LPTMR40		EQU	$
		LDA	!LMPTMR,X
		BEQ	LPTMR80		; timer on ?
;					; yes
		DEC	!LMPTMR,X
		BNE	LPTMR80		; timer = 0 ?
;					; yes
		PHX			; (X) push
		TXA
		ORA	#0C0H
		STA	!FIRENO
;// 03.07.23 //		JSL	>LAMPPL		;
		JSL	>LAMPOFF	; lamp off
		PLX			; (X) pull
LPTMR80		EQU	$
		INX
		CPX	#010H
		BNE	LPTMR40		; check end ?
;					; yes
;
;************************************************************************
;*		Door check				(DRCHCK)	*
;************************************************************************
DRCHCK		EQU	$
		LDA	!PYALSP
		BEQ	DRCK10		; player stop ?
;					; yes
		JMP	DRCK280
;
DRCK10		EQU	$
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDA	<PLMKCH
		AND	#000FFH
		STA	<WORK8
		TAY
;
		LDA	<PLYPS1
		ADC	DCYRPD,Y
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	DCXRPD,Y
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK0
		LDX	<PLBGCKF
		BEQ	DRCK20		; on BG.2 ?
;					; no
		ORA	#01000H
DRCK20		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
		TAX
;
		LDA	>READBF+000H,X
		AND	#000F0H
		CMP	#000F0H
		BEQ	DRCK40		; key-door ?
;					; no
		TXA
		CLC
		ADC	DCPRPD,Y
		TAX
;
		LDA	>READBF+000H,X
		AND	#000F0H
		CMP	#000F0H
;// 03.05.08 //		BNE	DRCK280		; key-door ?
		BNE	DRCK100		; key-door ?
;					; yes
DRCK40		EQU	$
		LDA	>READBF+000H,X
		AND	#0000FH
		ASL	A
		TAY
		STY	!DOPSPT
;
		LDA	!DORFLG,Y
		AND	#00003H
		ASL	A
		CMP	<WORK8
;// 03.05.08 //		BNE	DRCK280		; muki = ?
		BNE	DRCK100		; muki = ?
;					; yes
		LDA	!DRSTAT,Y
		AND	#0000000011111110B
		CMP	#ky6_dr
		BEQ	DRCK270		; taiatari-door ?
;					; no
;// 03.05.09 //		CMP	#dor_dr
;// 03.05.09 //		BEQ	DRCK260		; door ?
;// 03.05.09 //;					; no
;// 03.05.09 //		CMP	#ud_dor
;// 03.05.09 //		BEQ	DRCK260		; door ?
;// 03.05.09 //;					; no
		CMP	#ky0_dr
		BEQ	DRCK240		; normal-key-door ?
;					; no
		CMP	#ky1_dr
		BNE	DRCK200		; special-key-door ?
;					; yes
		STZ	!DOPNCT		; door open flag clear
		STX	!DOPCPT
;
		LDY	!DJNNO
		LDA	>KEYCNT
		AND	BITCD0,Y
		BNE	DRCK260		; special-key on ?
;					; no
		LDA	!OPDRCFG
		BNE	DRCK80		;
;					;
		INC	!OPDRCFG
		LDA	#MS_00DD
		STA	!MSGENOL
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>MESWIT
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
DRCK80		EQU	$
		JMP	DRCK280
;
DRCK100		EQU	$
		STZ	!OPDRCFG
		JMP	DRCK280
;
;
DRCK200		EQU	$
		CMP	#ky0_dr
		BCC	DRCK80		; key door (& rasen) ?
;					; yes
		CMP	#dor_dr
		BCS	DRCK80		; key door (& rasen) ?
;					; yes
		CMP	#ky7_dr
		BEQ	DRCK80		; bomb-enter ?
;					; no
DRCK240		EQU	$
		LDA	>ITMTBL9
		AND	#000FFH
		BEQ	DRCK80		; key on ?
;					; yes
		LDA	>ITMTBL9
		DEC	A
		STA	>ITMTBL9	; key count -1
DRCK260		EQU	$
		STZ	!DOPNCT		; door open flag clear
;
		STX	!DOPCPT
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#p1_dopn
		STA	<GAMEMD		; door open mode
;
		LDA	#014H
DRSNDST		EQU	$
		STA	<WORK0
		LDX	!DOPSPT
		LDA	!DORFLG,X
		AND	#00000011B
		TAX
		LDA	>DRSNDP,X
		ORA	<WORK0
		STA	!SOUND3		; <sound3>
		RTL
;
;
		MEM16
		IDX16
DRCK270		EQU	$
		LDA	!DASHFG
		AND	#000FFH
		BEQ	DRCK280		; dash on ?
;					; yes
		LDA	!DASFLM
		CMP	#03FH
		BCS	DRCK280		; dash ?
;					; yes
		STX	!DOPCPT
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STY	<WORK0
		JSL	>BMKRINT
		BCS	DRCK275		; set ok ?
;					; yes
		LDY	<WORK0
		LDA	!DORFLG,Y
		AND	#003H
		STA	!BCDMKI,X	;                  muki set
;
		TXA
		ASL	A
		TAX
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!DORADR,Y
		AND	#0000000001111110B
		ASL	A
		ASL	A
		CLC
		ADC	!SCHCT
		STA	!BCDXPS,X
		LDA	!DORADR,Y
		AND	#0001111110000000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	!SCVCT
		STA	!BCDYPS,X	; bomb-door kakera pos. set
DRCK275		EQU	$
		MEM8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_bmbd
		STA	<GAMEMD		; bomb-door open
;
		JSL	>DASHON		; dash-on
DRCK2799	EQU	$
		RTL
;
;
DRCK280		EQU	$
;*** /03.07.30/ ***		MEM16
;*** /03.07.30/ ***		IDX8
;*** /03.07.30/ ***		SEP	#00010000B	; index 8bit mode
;*** /03.07.30/ ***;
;*** /03.07.30/ ***;************************************************************************
;*** /03.07.30/ ***;*		Swich open door check			(SWDRCK)	*
;*** /03.07.30/ ***;************************************************************************
;*** /03.07.30/ ***SWDRCK		EQU	$
;*** /03.07.30/ ***		LDA	!SWDRFG
;*** /03.07.30/ ***		BMI	SWDC80		; swich door check ?
;*** /03.07.30/ ***;					; yes
;*** /03.07.30/ ***		LDA	!SWCHFG
;*** /03.07.30/ ***		AND	#000FFH
;*** /03.07.30/ ***		BEQ	SWDC80		; swich door open ok ?
;*** /03.07.30/ ***;					; yes
;*** /03.07.30/ ***		LDY	!SWDRFG+1	; (Y) <-- swich door pointer
;*** /03.07.30/ ***;// 02.10.11 //		LDX	!SWDRFG
;*** /03.07.30/ ***;
;*** /03.07.30/ ***		MEM16
;*** /03.07.30/ ***		REP	#00100000B	; memory 16bit mode
;*** /03.07.30/ ***;
;*** /03.07.30/ ***		LDA	!RMSTTT
;*** /03.07.30/ ***;// 03.03.11 //		AND	BITCD1,Y
;*** /03.07.30/ ***		ORA	BITCD0,Y
;*** /03.07.30/ ***		STA	!RMSTTT		; door open bit on
;*** /03.07.30/ ***		LDA	!DOPNBT
;*** /03.07.30/ ***;// 03.03.11 //		AND	BITCD1,Y
;*** /03.07.30/ ***		ORA	BITCD0,Y
;*** /03.07.30/ ***;// 03.05.31 //		STA	!DOPNBT
;*** /03.07.30/ ***;// 03.05.31 //;
;*** /03.07.30/ ***		BRA	EDCK40
;*** /03.07.30/ ***;
;*** /03.07.30/ ***;// 03.05.31 //		IDX16
;*** /03.07.30/ ***;// 03.05.31 //		REP	#00010000B	; index 16bit mode
;*** /03.07.30/ ***;// 03.05.31 //;
;*** /03.07.30/ ***;// 03.05.31 //		LDA	!SWDRFG+1
;*** /03.07.30/ ***;// 03.05.31 //		AND	#000FFH
;*** /03.07.30/ ***;// 03.05.31 //		TAY
;*** /03.07.30/ ***;// 03.05.31 //		JSR	ERDRSB		; door open
;*** /03.07.30/ ***;// 03.05.31 //;
;*** /03.07.30/ ***;// 03.05.31 //		JSR	BGCNGS1		; BG. change data set
;*** /03.07.30/ ***;// 03.05.31 //;
;*** /03.07.30/ ***;// 03.05.31 //		LDY	!DORPNT
;*** /03.07.30/ ***;// 03.05.31 //		JSR	DOPL820		; door code change
;*** /03.07.30/ ***;// 03.05.31 //;
;*** /03.07.30/ ***;// 03.05.31 //		LDY	<WORKC
;*** /03.07.30/ ***;// 03.05.31 //		LDA	#0FFFFH
;*** /03.07.30/ ***;// 03.05.31 //		STA	!BGCWBF,Y	; end code set
;*** /03.07.30/ ***;// 03.05.31 //;
;*** /03.07.30/ ***;// 03.05.31 //		MEM8
;*** /03.07.30/ ***;// 03.05.31 //		IDX8
;*** /03.07.30/ ***;// 03.05.31 //		SEP	#00110000B	; memory,index 8bit mode
;*** /03.07.30/ ***;// 03.05.31 //;
;*** /03.07.30/ ***;// 03.05.31 //		LDA	#001H
;*** /03.07.30/ ***;// 03.05.31 //		STA	<BGCHFG		; BG. change flag on
;*** /03.07.30/ ***;// 03.05.31 //		RTL
;*** /03.07.30/ ***;
;*** /03.07.30/ ***;
;*** /03.07.30/ ***SWDC80		EQU	$
;*** /03.07.30/ ***		MEM16
;
;************************************************************************
;*		Erase door check			(ERDRCK)	*
;************************************************************************
ERDRCK		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	!ERDRFG
		BMI	EDCK80		; erase door check ?
;					; yes
		LDA	<PWORK6
		BNE	EDCK80		; player in door ?
;					; yes
		LDA	<PLXPS0
		CMP	#00CH
		BNE	EDCK80		; player-position check ok ?
;					; yes
		LDY	!ERDRFG+1	; (Y) <-- erase door pointer
;
		LDX	!ERDRFG
		CPX	<PLMKCH
		BEQ	EDCK20		; door open ok ?
;					; yes
		LDA	<PLMKCH
		CMP	>ERDCKD,X
		BNE	EDCK20		; door open ok ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!DOPNBT
;// 03.03.11 //		AND	BITCD1,Y
		ORA	BITCD0,Y
		BRA	EDCK40
;
EDCK20		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!DOPNBT
;// 03.03.11 //		ORA	BITCD0,Y
		AND	BITCD1,Y
EDCK40		EQU	$
		CMP	!DOPNBT
		BEQ	EDCK80		; door change ?
;					; yes
		STA	!DOPNBT
;
		STZ	<WORKC
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDA	!ERDRFG+1
		AND	#000FFH
		TAY
		JSR	ERDRSB		; door open/close
;
		JSR	BGCNGS1		; BG. change data set
;
		LDY	!DORPNT
		JSR	DOPL820		; door code change
;
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y	; end code set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
;
		LDA	#015H
;// 03.09.26 //		JSL	>DRSNDST	; <sound3>
		STA	!SOUND3		; <sound3>
EDCK60		EQU	$
		RTL
;
;
EDCK80		EQU	$
;
;************************************************************************
;*		Certen  Door check			(CDRCHCK)	*
;************************************************************************
CDRCHCK		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<KENKY
		ASL	A
		BCC	DRCK2799	; ken key on ?
;					; yes
		LDA	<KENMD
		CMP	#004H
		BNE	DRCK2799	; check ok ?
;					; yes
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDA	<KNCRYP
		AND	#000FFH
		CMP	#00080H
		BCC	CDRC05		; (-) data ?
;					; yes
		ORA	#0FF00H
CDRC05		EQU	$
		CLC
		ADC	<PLYPS1
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK0
;
		LDA	<KNCRXP
		AND	#000FFH
		CMP	#00080H
		BCC	CDRC10		; (-) data ?
;					; yes
		ORA	#0FF00H
CDRC10		EQU	$
		CLC
		ADC	<PLXPS1
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK0
		TAX
		LDY	#00041H
		LDA	>READBF+000H,X
		AND	#000FCH
		CMP	#0006CH
		BEQ	CDRC40		; certen ?
;					; no
		AND	#000F0H
		CMP	#000F0H
		BEQ	CDRC40		; certen-door ?
;					; no
		INX
		DEY
		LDA	>READBF+000H,X
		AND	#000FCH
		CMP	#0006CH
		BEQ	CDRC40		; certen ?
;					; no
		AND	#000F0H
		CMP	#000F0H
		BEQ	CDRC40		; certen-door ?
;					; no
		TXA
		CLC
		ADC	#0003FH
		TAX
		LDY	#00001H
		LDA	>READBF+000H,X
		AND	#000FCH
		CMP	#0006CH
		BEQ	CDRC40		; certen ?
;					; no
		AND	#000F0H
		CMP	#000F0H
		BEQ	CDRC40		; certen-door ?
;					; no
		INX
		DEY
		LDA	>READBF+000H,X
		AND	#000FCH
		CMP	#0006CH
		BEQ	CDRC40		; certen ?
;					; no
		AND	#000F0H
		CMP	#000F0H
		BEQ	CDRC40		; certen-door ?
;					; no
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
CDRC40		EQU	$
		STZ	<WORKC
;
		CMP	#0006CH
		BEQ	CDRC45		; certen-door ?
;					; yes
		JMP	CDRC100
;// 03.10.07 //		BNE	CDRC100		; certen-door ?
;// 03.10.07 //;					; no
;
CDRC45		EQU	$
		STY	<WORKE
		CPY	#00040H
		BCC	CDRC50		; pos. check ?
;					; yes
		TYA
		AND	#0000FH
		STA	<WORKE
		TXA
		SEC
		SBC	#00040H
		TAX
		LDA	>READBF+000H,X
		AND	#000FCH
		CMP	#0006CH
		BEQ	CDRC50		; certen ?
;					; no
		TXA
		CLC
		ADC	#00040H
		TAX
CDRC50		EQU	$
		LDY	<WORKE
		BEQ	CDRC60		; pos. check ?
;					; yes
		DEX
		LDA	>READBF+000H,X
		AND	#000FCH
		CMP	#0006CH
		BEQ	CDRC60		; certen ?
;					; no
		INX
CDRC60		EQU	$
		TXA
		SEC
		SBC	#00041H
		ASL	A
		STA	<WORK8		; (work8) <-- rewrite address
;
		LDA	>READBF+000H,X
		PHA			; (A) push
;
		LDA	#00202H
		STA	>READBF+000H,X	;
		STA	>READBF+040H,X	;
;
		PLA			; (A) pull
		AND	#00003H
		ASL	A
		TAX
		LDA	>CDRRPD,X
		TAY			; (Y) <-- rewrite data point
;
		LDX	<WORK8
		LDA	#00004H
		STA	<WORKE
CDRC80		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X	; certen-open set
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	CDRC80		; set end ?
;					; yes
		BRA	CDRC200
;
CDRC100		EQU	$
		LDA	>READBF+000H,X
		AND	#0000FH
		ASL	A
		TAY
;
		STX	!DOPCPT
		LDA	!DRSTAT,Y
		AND	#0000000011111110B
		CMP	#ctn_dr
;<<<  04.01.22  >>>		BNE	CDRC200		; certen-door ?
		BNE	CDRC300		;<<<  04.01.22  >>>; certen-door ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!DORADR,Y
		STA	<WORK8
		TYX			; (X) <-- (Y)
		LDA	!DOPNBT
;// 03.03.11 //		AND	BITCD1,X
		ORA	BITCD0,X
		STA	!DOPNBT
		LDA	!RMSTTT
;// 03.03.11 //		AND	BITCD1,X
		ORA	BITCD0,X
		STA	!RMSTTT		; door open bit on
		STZ	!DOPCNO		; door char. pointer
		JSR	CTDRSB		; door open
;
		LDY	!DORPNT
		JSR	DOPL820		; door code change
CDRC200		EQU	$
		JSR	BGCNGS1		; BG. change data set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<WORK8
		AND	#01111111B
		ASL	A
		JSL	>SDLRCK		; sound L,R check
		ORA	#01EH
		STA	!SOUND2		; <sound2>
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
BGCWEND		EQU	$
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y	; end code set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
CDRC300		EQU	$		;<<<  04.01.22  >>>
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;// 03.05.31 //		LDY	<WORKC
;// 03.05.31 //		LDA	#0FFFFH
;// 03.05.31 //		STA	!BGCWBF,Y	; end code set
;// 03.05.31 //;
;// 03.05.31 //		MEM8
;// 03.05.31 //		SEP	#00100000B	; memory 8bit mode
;// 03.05.31 //;
;// 03.05.31 //		LDA	#001H
;// 03.05.31 //		STA	<BGCHFG		; BG. change flag on
;// 03.05.31 //;
;// 03.05.31 //		MEM8
;// 03.05.31 //		IDX8
;// 03.05.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.31 //		RTL
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Bomb  Door check			(BDRCHCK)	*
;************************************************************************
BDRCHCK		EQU	$
		LDA	<SLMODE
		CMP	#MD_djply
		BEQ	BDRC00		; ground ?
;					; yes
		JMP	>BOMBCHK	; bomb check
;
;
BDRC00		EQU	$
		STZ	<WORKF
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<WORK0
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK4
		LDA	<WORK2
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK4
		SEC
		SBC	#00082H
		TAX
		LDY	#00002H
BDRC20		EQU	$
		LDA	>READBF+000H,X
		AND	#000FFH
;// 03.06.19 //		CMP	#00023H
;// 03.06.19 //		BEQ	BDRC30		; width road ?
;// 03.06.19 //;					; no
		CMP	#00062H
		BEQ	BDRC400		; crush-yuka ?
;					; no
		AND	#000F0H
		CMP	#000F0H
		BEQ	BDRC40		; bomb-door ?
;					; no
		INX
		INX
		LDA	>READBF+000H,X
		AND	#000FFH
;// 03.06.19 //		CMP	#00023H
;// 03.06.19 //		BEQ	BDRC30		; width road ?
;// 03.06.19 //;					; no
		CMP	#00062H
		BEQ	BDRC400		; crush-yuka ?
;					; no
		AND	#000F0H
		CMP	#000F0H
		BEQ	BDRC40		; bomb-door ?
;					; no
		INX
		INX
		LDA	>READBF+000H,X
		AND	#000FFH
;// 03.06.19 //		CMP	#00023H
;// 03.06.19 //		BEQ	BDRC30		; width road ?
;// 03.06.19 //;					; no
		CMP	#00062H
		BEQ	BDRC400		; crush-yuka ?
;					; no
		AND	#000F0H
		CMP	#000F0H
		BEQ	BDRC40		; bomb-door ?
;					; no
		TXA
		CLC
		ADC	#00080H-4
		TAX
		DEY
		BPL	BDRC20		; check end ?
;					; yes
		BMI	BDRC280
;
BDRC400		EQU	$
		JMP	BDRC410
;
;// 03.06.19 //BDRC30		EQU	$
;// 03.06.19 //;
BDRC40		EQU	$
		LDA	>READBF+000H,X
		AND	#0000FH
		ASL	A
		TAY
;
		LDA	!DRSTAT,Y
		AND	#0000000011111110B
		CMP	#ky6_dr
		BEQ	BDRC240		; taiatari-door ?
;					; no
		CMP	#ky7_dr
		BEQ	BDRC240		; doukutsu-enter-door ?
;					; no
		CMP	#bmb_dr
		BNE	BDRC280		; bomb-door ?
;					; yes
BDRC240		EQU	$
		STX	!DOPCPT
;
		LDA	<WORKE
		ASL	A
		TAX
		LDA	!DORADR,Y
		AND	#0000000001111110B
		ASL	A
		ASL	A
		CLC
		ADC	!SCHCT
		STA	!BCDXPS,X
		LDA	!DORADR,Y
		AND	#0001111110000000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	!SCVCT
		STA	!BCDYPS,X	; bomb-door kakera pos. set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDX	<WORKE
		LDA	!DORFLG,Y
		AND	#003H
		STA	!BCDMKI,X	;                  muki set
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#p1_bmbd
		STA	<GAMEMD		; bomb-door open
BDRC280		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
		MEM16
		IDX16
BDRC410		EQU	$
		LDA	<RMXYCT
		CMP	#00065H
		BNE	BDRC440		; ura-danjyon(machi-sita) hikari-room ?
;					; yes
		LDA	!EMYSTT
		ORA	#01000H
		STA	!EMYSTT
BDRC440		EQU	$
		LDA	#00000H
		JSL	>CRHYKWT	; crush-yuka write
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
		RTL
;
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		Door  open				(DROPEN)	*
;************************************************************************
DROPEN		EQU	$
		LDX	!DORADR,Y
		STX	<WORK8
		STY	!DORPNT
		STY	!DOPSPT
		LDA	!DORFLG,Y
		AND	#00003H
		BNE	DROP20		; up-door ?
;					; yes
		JMP	RWUDRST
;
DROP20		EQU	$
		CMP	#00001H
		BNE	DROP40		; down-door ?
;					; yes
		JMP	RWDDRST
;
DROP40		EQU	$
		CMP	#00002H
		BNE	DROP60		; left-door ?
;					; yes
		JMP	RWLDRST
;
DROP60		EQU	$
		JMP	RWRDRST
;
;
;
;************************************************************************
;*		Shutter Door  open			(SDROPEN)	*
;************************************************************************
SDROPEN		EQU	$
		LDX	!DORADR,Y
		STX	<WORK8
		STY	!DORPNT
		STY	!DOPSPT
		LDA	!DORFLG,Y
		AND	#00003H
		BNE	SDROP20		; up-door ?
;					; yes
		JMP	SRWUDRST
;
SDROP20		EQU	$
		CMP	#00001H
		BNE	SDROP40		; down-door ?
;					; yes
		JMP	SRWDDRST
;
SDROP40		EQU	$
		CMP	#00002H
		BNE	SDROP60		; left-door ?
;					; yes
		JMP	SRWLDRST
;
SDROP60		EQU	$
		JMP	SRWRDRST
;
;
;
;************************************************************************
;*		Erase Door  open/close			(ERDRSB)	*
;************************************************************************
ERDRSB		EQU	$
		LDX	!DORADR,Y
		STX	<WORK8
		STY	!DORPNT
		STY	<WORK4
		STY	!DOPSPT
		LDA	!DORFLG,Y
		AND	#00003H
		BNE	EDRSB20		; up-door ?
;					; yes
		JMP	RWUDR45
;
EDRSB20		EQU	$
		CMP	#00001H
		BNE	EDRSB40		; down-door ?
;					; yes
		JMP	RWDDR45
;
EDRSB40		EQU	$
		CMP	#00002H
		BNE	EDRSB60		; left-door ?
;					; yes
		JMP	RWLDR45
;
EDRSB60		EQU	$
		JMP	RWRDR45
;
;
;
;************************************************************************
;*		Certen Door  open			(CTDRSB)	*
;************************************************************************
CTDRSB		EQU	$
		LDX	!DORADR,Y
		STX	<WORK8
		STY	!DORPNT
		STY	!DOPSPT
;// 03.08.29 //		LDA	!DORFLG,Y
;// 03.08.29 //		AND	#00003H
;// 03.08.29 //		BNE	CTDS20		; up-door ?
;// 03.08.29 //;					; yes
		JMP	CTURWST
;
;// 03.08.29 //CTDS20		EQU	$
;// 03.08.29 //		CMP	#00001H
;// 03.08.29 //		BNE	CTDS40		; down-door ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		JMP	CTDRWST
;// 03.08.29 //;
;// 03.08.29 //CTDS40		EQU	$
;// 03.08.29 //		CMP	#00002H
;// 03.08.29 //		BNE	CTDS60		; left-door ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		JMP	CTLRWST
;// 03.08.29 //;
;// 03.08.29 //CTDS60		EQU	$
;// 03.08.29 //		JMP	CTRRWST
;
;
;
;************************************************************************
;*		Crush wall open				(CWLOPEN)	*
;************************************************************************
CWLOPEN		EQU	$
		STZ	!RWBFPT
		STZ	<WORKC
		STZ	!DOPNCT
		LDY	!CWLPNT
		STY	!DORPNT
;
		LDX	!DORADR,Y
;// 03.08.29 //		LDA	!DORFLG,Y
;// 03.08.29 //		AND	#00002H
;// 03.08.29 //		BNE	CWOP20		; up,down ?
;// 03.08.29 //;					; yes
		DEX
		DEX
		STX	<WORK8
		TXA
		STA	!DORADR,Y
		JMP	RWUCWLST	; up,down crush wall open
;
;// 03.08.29 //CWOP20		EQU	$
;// 03.08.29 //		TXA
;// 03.08.29 //		SEC
;// 03.08.29 //		SBC	#00080H
;// 03.08.29 //		STA	<WORK8
;// 03.08.29 //		TAX
;// 03.08.29 //		STA	!DORADR,Y
;// 03.08.29 //		JMP	RWLCWLST	; left,right crush wall open
;
;
;
;
;
;************************************************************************
;*		Shutter door open play			(SDRPLY)	*
;************************************************************************
SDRPLY		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<WORKC
;
		INC	!DOPNCT
		LDA	!DOPNCT
		LDY	!TRAPMD
		BNE	SDOP60		; door open ?
;					; yes
		INY
		INY
		CMP	#00004H
		BEQ	SDOP80		; door char. change ?
;					; no
		INY
		INY
;<< 03.03.28 >>		CMP	#0000CH
		CMP	#00008H
		BEQ	SDOP80		; door char. change ?
;					; no
;<< 03.03.28 >>		INY
;<< 03.03.28 >>		INY
;<< 03.03.28 >>		CMP	#00014H
;<< 03.03.28 >>		BEQ	SDOP80		; door open end ?
;					; no
SDOP40		EQU	$
		JMP	SDOP300
;
SDOP60		EQU	$
;<< 03.03.28 >>		LDY	#00004H
		LDY	#00002H
		CMP	#00004H
		BEQ	SDOP80		; door char. change ?
;					; no
		DEY
		DEY
		CMP	#00008H
;<< 03.03.28 >>		CMP	#0000CH
;<< 03.03.28 >>		BEQ	SDOP80		; door char. change ?
;<< 03.03.28 >>;					; no
;<< 03.03.28 >>		DEY
;<< 03.03.28 >>		DEY
;<< 03.03.28 >>		CMP	#00014H
		BNE	SDOP40		; door close end ?
;					; yes
SDOP80		EQU	$
		STY	!DOPCNO		; door char. pointer
;
		LDY	#00000H
SDOP100		EQU	$
		STY	!DOPCPT
;
		LDA	!DRSTAT,Y
		AND	#000FEH
		CMP	#ud_sht
		BEQ	SDOP120		; under-shutter ?
;					; no
		CMP	#sht_dr
		BNE	SDOP240		; shutter door ?
;					; yes
SDOP120		EQU	$
		LDA	!TRAPMD
		BNE	SDOP140		; door open ?
;					; yes
		LDA	!DOPNBT
		AND	BITCD0,Y
		BNE	SDOP240		; door open ok ?
;					; yes
		LDA	!DOPNCT
;<< 03.03.28 >>		CMP	#00014H
		CMP	#00008H
		BNE	SDOP200		; end ?
;					; yes
		PHY			; (Y) push
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#015H
;// 03.09.26 //		JSL	>DRSNDST	; <sound3>
		STA	!SOUND3		; <sound3>
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
		PLY			; (Y) pull
;
		LDA	!DOPNBT
		ORA	BITCD0,Y
		BRA	SDOP180
;
SDOP140		EQU	$
		LDA	!DOPNBT
		AND	BITCD0,Y
		BEQ	SDOP240		; door close ok ?
;					; yes
		LDA	!DOPNCT
;<< 03.03.28 >>		CMP	#00014H
		CMP	#00008H
		BNE	SDOP200		; end ?
;					; yes
		PHY			; (Y) push
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#016H
;// 03.09.26 //		JSL	>DRSNDST	; <sound3>
		STA	!SOUND3		; <sound3>
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
		PLY			; (Y) pull
;
		LDA	!DOPNBT
		AND	BITCD1,Y
SDOP180		EQU	$
                STA     !DOPNBT
SDOP200		EQU	$
		JSR	SDROPEN		; door open
;
		JSR	BGCNGS1		; BG. change data set
;
		LDA	!DOPNCT
;<< 03.03.28 >>		CMP	#00014H
		CMP	#00008H
		BNE	SDOP240		; end ?
;					; yes
		LDY	!DOPCPT
		JSR	DOPL820		; door code set
SDOP240		EQU	$
		LDY	!DOPCPT
		INY
		INY
		CPY	#00018H
		BEQ	SDOP280		; end ?
;					; no
		JMP	SDOP100
;
SDOP280		EQU	$
		LDY	<WORKC
		BEQ	SDOP380		; door write ?
;					; yes
		LDA	#0FFFFH
		STA	!BGCWBF,Y	; end code set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
		STA	!GMAPDF
SDOP300		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	!DOPNCT
;<< 03.03.28 >>		CMP	#018H
		CMP	#00010H
		BNE	SDOP400		; end ?
;					; yes
SDOP380		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<GAMEMD
		STZ	<BGCHFG
SDOP400		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		RTL
;
;
;
;// 03.06.24 //;
;// 03.06.24 //;
;// 03.06.24 //;************************************************************************
;// 03.06.24 //;*		Shutter door open play			(SDRPLY)	*
;// 03.06.24 //;************************************************************************
;// 03.06.24 //SDRPLY		EQU	$
;// 03.06.24 //		MEM16
;// 03.06.24 //		IDX16
;// 03.06.24 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.24 //;
;// 03.06.24 //		STZ	<WORKC
;// 03.06.24 //;
;// 03.06.24 //		INC	!DOPNCT
;// 03.06.24 //		LDA	!DOPNCT
;// 03.06.24 //		LDY	!TRAPMD
;// 03.06.24 //		BNE	SDOP60		; door open ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		INY
;// 03.06.24 //		INY
;// 03.06.24 //		CMP	#00004H
;// 03.06.24 //		BEQ	SDOP80		; door char. change ?
;// 03.06.24 //;					; no
;// 03.06.24 //		INY
;// 03.06.24 //		INY
;// 03.06.24 //;<< 03.03.28 >>		CMP	#0000CH
;// 03.06.24 //		CMP	#00008H
;// 03.06.24 //		BEQ	SDOP80		; door char. change ?
;// 03.06.24 //;					; no
;// 03.06.24 //;<< 03.03.28 >>		INY
;// 03.06.24 //;<< 03.03.28 >>		INY
;// 03.06.24 //;<< 03.03.28 >>		CMP	#00014H
;// 03.06.24 //;<< 03.03.28 >>		BEQ	SDOP80		; door open end ?
;// 03.06.24 //;					; no
;// 03.06.24 //SDOP40		EQU	$
;// 03.06.24 //		JMP	SDOP300
;// 03.06.24 //;
;// 03.06.24 //SDOP60		EQU	$
;// 03.06.24 //;<< 03.03.28 >>		LDY	#00004H
;// 03.06.24 //		LDY	#00002H
;// 03.06.24 //		CMP	#00004H
;// 03.06.24 //		BEQ	SDOP80		; door char. change ?
;// 03.06.24 //;					; no
;// 03.06.24 //		DEY
;// 03.06.24 //		DEY
;// 03.06.24 //		CMP	#00008H
;// 03.06.24 //;<< 03.03.28 >>		CMP	#0000CH
;// 03.06.24 //;<< 03.03.28 >>		BEQ	SDOP80		; door char. change ?
;// 03.06.24 //;<< 03.03.28 >>;					; no
;// 03.06.24 //;<< 03.03.28 >>		DEY
;// 03.06.24 //;<< 03.03.28 >>		DEY
;// 03.06.24 //;<< 03.03.28 >>		CMP	#00014H
;// 03.06.24 //		BNE	SDOP40		; door close end ?
;// 03.06.24 //;					; yes
;// 03.06.24 //SDOP80		EQU	$
;// 03.06.24 //		STY	!DOPCNO		; door char. pointer
;// 03.06.24 //;
;// 03.06.24 //		LDY	#00000H
;// 03.06.24 //SDOP100		EQU	$
;// 03.06.24 //		STY	!DOPCPT
;// 03.06.24 //;
;// 03.06.24 //		LDA	!DORADR,Y
;// 03.06.24 //		BEQ	SDOP280		; check ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		LDA	!DRSTAT,Y
;// 03.06.24 //		AND	#000FEH
;// 03.06.24 //		CMP	#ud_sht
;// 03.06.24 //		BEQ	SDOP120		; under-shutter ?
;// 03.06.24 //;					; no
;// 03.06.24 //		CMP	#sht_dr
;// 03.06.24 //		BNE	SDOP240		; shutter door ?
;// 03.06.24 //;					; yes
;// 03.06.24 //SDOP120		EQU	$
;// 03.06.24 //		LDA	!TRAPMD
;// 03.06.24 //		BNE	SDOP140		; door open ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		LDA	!DOPNBT
;// 03.06.24 //		AND	BITCD0,Y
;// 03.06.24 //;// 03.03.11 //		BEQ	SDOP240		; door open ok ?
;// 03.06.24 //		BNE	SDOP240		; door open ok ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		LDA	!DOPNCT
;// 03.06.24 //;<< 03.03.28 >>		CMP	#00014H
;// 03.06.24 //		CMP	#00008H
;// 03.06.24 //		BNE	SDOP200		; end ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		PHY			; (Y) push
;// 03.06.24 //;
;// 03.06.24 //		MEM8
;// 03.06.24 //		IDX8
;// 03.06.24 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.24 //;
;// 03.06.24 //		LDA	#015H
;// 03.06.24 //		JSL	>DRSNDST	; <sound3>
;// 03.06.24 //;
;// 03.06.24 //		MEM16
;// 03.06.24 //		IDX16
;// 03.06.24 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.24 //		PLY			; (Y) pull
;// 03.06.24 //;
;// 03.06.24 //		LDA	!DOPNBT
;// 03.06.24 //;// 03.03.11 //		AND	BITCD1,Y
;// 03.06.24 //		ORA	BITCD0,Y
;// 03.06.24 //		BRA	SDOP180
;// 03.06.24 //;
;// 03.06.24 //SDOP140		EQU	$
;// 03.06.24 //		LDA	!DOPNBT
;// 03.06.24 //		AND	BITCD0,Y
;// 03.06.24 //;// 03.03.11 //		BNE	SDOP240		; door close ok ?
;// 03.06.24 //		BEQ	SDOP240		; door close ok ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		LDA	!DOPNCT
;// 03.06.24 //;<< 03.03.28 >>		CMP	#00014H
;// 03.06.24 //		CMP	#00008H
;// 03.06.24 //		BNE	SDOP200		; end ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		PHY			; (Y) push
;// 03.06.24 //		MEM8
;// 03.06.24 //		IDX8
;// 03.06.24 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.24 //;
;// 03.06.24 //		LDA	#016H
;// 03.06.24 //		JSL	>DRSNDST	; <sound3>
;// 03.06.24 //;
;// 03.06.24 //		MEM16
;// 03.06.24 //		IDX16
;// 03.06.24 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.24 //		PLY			; (Y) pull
;// 03.06.24 //;
;// 03.06.24 //		LDA	!DOPNBT
;// 03.06.24 //;// 03.03.11 //		ORA	BITCD0,Y
;// 03.06.24 //		AND	BITCD1,Y
;// 03.06.24 //SDOP180		EQU	$
;// 03.06.24 //                STA     !DOPNBT
;// 03.06.24 //SDOP200		EQU	$
;// 03.06.24 //		JSR	DROPEN		; door open
;// 03.06.24 //;
;// 03.06.24 //		JSR	BGCNGS1		; BG. change data set
;// 03.06.24 //;
;// 03.06.24 //		LDA	!DOPNCT
;// 03.06.24 //;<< 03.03.28 >>		CMP	#00014H
;// 03.06.24 //		CMP	#00008H
;// 03.06.24 //		BNE	SDOP240		; end ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		LDY	!DOPCPT
;// 03.06.24 //		JSR	DOPL820		; door code set
;// 03.06.24 //SDOP240		EQU	$
;// 03.06.24 //		LDY	!DOPCPT
;// 03.06.24 //		INY
;// 03.06.24 //		INY
;// 03.06.24 //		CPY	#00010H
;// 03.06.24 //		BEQ	SDOP280		; end ?
;// 03.06.24 //;					; no
;// 03.06.24 //		JMP	SDOP100
;// 03.06.24 //;
;// 03.06.24 //SDOP280		EQU	$
;// 03.06.24 //		LDY	<WORKC
;// 03.06.24 //		BEQ	SDOP380		; door write ?
;// 03.06.24 //;					; yes
;// 03.06.24 //		LDA	#0FFFFH
;// 03.06.24 //		STA	!BGCWBF,Y	; end code set
;// 03.06.24 //;
;// 03.06.24 //		MEM8
;// 03.06.24 //		IDX8
;// 03.06.24 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.24 //;
;// 03.06.24 //		LDA	#001H
;// 03.06.24 //		STA	<BGCHFG		; BG. change flag on
;// 03.06.24 //SDOP300		EQU	$
;// 03.06.24 //		MEM8
;// 03.06.24 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.24 //;
;// 03.06.24 //		LDA	!DOPNCT
;// 03.06.24 //;<< 03.03.28 >>		CMP	#018H
;// 03.06.24 //		CMP	#00010H
;// 03.06.24 //		BNE	SDOP400		; end ?
;// 03.06.24 //;					; yes
;// 03.06.24 //SDOP380		EQU	$
;// 03.06.24 //		MEM8
;// 03.06.24 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.24 //;
;// 03.06.24 //		STZ	<GAMEMD
;// 03.06.24 //		STZ	<BGCHFG
;// 03.06.24 //SDOP400		EQU	$
;// 03.06.24 //		MEM8
;// 03.06.24 //		IDX8
;// 03.06.24 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.24 //;
;// 03.06.24 //		RTL
;// 03.06.24 //;
;
;
;
;************************************************************************
;*		Bomb-Door open				(BDROPEN)	*
;************************************************************************
BDROPEN		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#00010H
		STA	!DOPNCT
		LDY	#00004H
		BRA	DOPL000
;
;
;************************************************************************
;*		Door open play				(DOPPLY)	*
;************************************************************************
DOPPLY		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDY	#00002H
		INC	!DOPNCT
		LDA	!DOPNCT
		CMP	#00004H
		BEQ	DOPL40		; door char. change ?
;					; no
		INY
		INY
		CMP	#0000CH
;<< 03.03.28 >>		BEQ	DOPL40		; door char. change ?
;<< 03.03.28 >>;					; no
;<< 03.03.28 >>		INY
;<< 03.03.28 >>		INY
;<< 03.03.28 >>		CMP	#00014H
		BNE	DOPL100		; door open end ?
;					; yes
DOPL000		EQU	$
		LDX	!DOPCPT
		LDA	>READBF+000H,X
		AND	#00007H
		ASL	A
		TAX
		LDA	!DOPNBT
;// 03.03.11 //		AND	BITCD1,X
		ORA	BITCD0,X
		STA	!DOPNBT
		LDA	!RMSTTT
;// 03.03.11 //		AND	BITCD1,X
		ORA	BITCD0,X
		STA	!RMSTTT		; door open bit on
DOPL40		EQU	$
		STY	!DOPCNO		; door char. pointer
		STZ	<WORKC
;
		LDX	!DOPCPT
		LDA	>READBF+000H,X
		AND	#0000FH
		ASL	A
		TAY
		JSR	DROPEN		; door open
;
		JSR	BGCNGS1		; BG. change data set
;
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y	; end code set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#015H
;// 03.09.26 //		JSL	>DRSNDST	; <sound3>
		STA	!SOUND3		; <sound3>
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
DOPL100		EQU	$
		LDA	!DOPNCT
;<< 03.03.28 >>		CMP	#00018H
		CMP	#00010H
		BNE	DOPL400		; end ?
;					; yes
		JSR	DOPL800		; door code reset
;
		LDX	!DOPCPT
		LDA	>READBF+000H,X
		AND	#000FFH
		CMP	#000F0H
		BCC	DOPL140		; close-door ?
;					; yes
		AND	#0000FH
		ASL	A
		TAY
		LDA	!DRSTAT,Y
		AND	#000FFH
		CMP	#ky2_dr
		BCC	DOPL140		; key-RASEN ?
;					; yes
		CMP	#ky6_dr
		BCS	DOPL140		; key-RASEN ?
;					; yes
		JSR	DOPLC00		; RASEN code set
DOPL140		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<GAMEMD
DOPL400		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
		MEM16
		IDX16
DOPL800		EQU	$
		LDX	!DOPCPT
		LDA	>READBF+000H,X
		AND	#0000FH
		ASL	A
		TAY
DOPL820		EQU	$
		JSR	DCCN100		; door code change
DOPL840		EQU	$
		LDX	!MDCCKPT
		BEQ	DOPL900		; mode change check code ?
;					; yes
		LDY	#00000H
DOPL860		EQU	$
		LDX	!MDCCKBF,Y
		LDA	>READBF+000H,X
		AND	#000F0H
		CMP	#00080H
		BNE	DOPL870		; door code ?
;					; yes
		LDA	>READBF+000H,X
		ORA	#01010H
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		INY
		INY
		CPY	!MDCCKPT
		BNE	DOPL860		; check end ?
;					; yes
		BRA	DOPL900
;
DOPL870		EQU	$
		LDA	>READBF1+000H,X
		ORA	#01010H
		STA	>READBF1+000H,X
		STA	>READBF1+040H,X
		INY
		INY
		CPY	!MDCCKPT
		BNE	DOPL860		; check end ?
;					; yes
DOPL900		EQU	$
		LDX	!DJCCKPT
		BEQ	DOPL980		; danjyon change check code ?
;					; yes
		LDY	#00000H
DOPL920		EQU	$
		LDX	!DJCCKBF,Y
		LDA	>READBF+000H,X
		AND	#000F0H
		CMP	#00080H
		BNE	DOPL940		; door code ?
;					; yes
		LDA	>READBF+000H,X
		ORA	#02020H
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		INY
		INY
		CPY	!DJCCKPT
		BNE	DOPL920		; check end ?
;					; yes
		BRA	DOPL960
;
DOPL940		EQU	$
		LDA	>READBF1+000H,X
		ORA	#02020H
		STA	>READBF1+000H,X
		STA	>READBF1+040H,X
		INY
		INY
		CPY	!DJCCKPT
		BNE	DOPL920		; check end ?
;					; yes
DOPL960		EQU	$
DOPL980		EQU	$
		RTS
;
;
DOPLC00		EQU	$
		LDA	#03030H
		STA	<WORK0
		LDY	#00000H
		LDX	!USCKPT
		BEQ	DOPLC20		; Up-STEP check ?
;					; yes
DOPLC10		EQU	$
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!USCKPT
		BNE	DOPLC10		; check end ?
;					; yes
DOPLC20		EQU	$
		CPY	!UPCKPT
		BEQ	DOPLC40		; Up-STEP (RASEN) check ?
;					; yes
DOPLC30		EQU	$
		LDX	!USCKBF,Y
		LDA	#05E5EH
		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		LDA	#00000H
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		INY
		INY
		CPY	!UPCKPT
		BNE	DOPLC30		; check end ?
;					; yes
DOPLC40		EQU	$
		CPY	!UPCKP1
		BEQ	DOPLC60		; Up-STEP (RASEN) check ?
;					; yes
DOPLC50		EQU	$
		LDX	!USCKBF,Y
		LDA	#05F5FH
		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		LDA	#00000H
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		INY
		INY
		CPY	!UPCKP1
		BNE	DOPLC50		; check end ?
;					; yes
DOPLC60		EQU	$
		CPY	!SUPCP0
		BEQ	DOPLC80		; scroll-step (ue) check ?
;					; yes
DOPLC70		EQU	$
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!SUPCP0
		BNE	DOPLC70		; check end ?
;					; yes
DOPLC80		EQU	$
		CPY	!SUPCP1
		BEQ	DOPLD00		; scroll-step (UP:sita) check ?
;					; yes
DOPLC90		EQU	$
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!SUPCP1
		BNE	DOPLC90		; check end ?
;
DOPLD00		EQU	$
		LDA	<WORK0
		AND	#00707H
		ORA	#03434H
		STA	<WORK0
;
		CPY	!DSCKPT
		BEQ	DOPLD20		; Dn-STEP check ?
;					; yes
DOPLD10		EQU	$
		LDA	<WORK0
		CLC
		ADC	#00101H
		STA	<WORK0
		INY
		INY
		CPY	!DSCKPT
		BNE	DOPLD10		; check end ?
;					; yes
DOPLD20		EQU	$
		CPY	!DNCKPT
		BEQ	DOPLD40		; Dn-STEP (RASEN) check ?
;					; yes
DOPLD30		EQU	$
		LDX	!DSCKBF,Y
		LDA	#05E5EH
		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		LDA	#00000H
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		INY
		INY
		CPY	!DNCKPT
		BNE	DOPLD30		; check end ?
;					; yes
DOPLD40		EQU	$
		CPY	!DNCKP1
		BEQ	DOPLD60		; Dn-STEP (RASEN) check ?
;					; yes
DOPLD50		EQU	$
		LDX	!DSCKBF,Y
		LDA	#05F5FH
		STA	>READBF+001H,X
		LDA	<WORK0
		STA	>READBF+041H,X
		CLC
		ADC	#00101H
		STA	<WORK0
		LDA	#00000H
		STA	>READBF+081H,X
		STA	>READBF+0C1H,X
		INY
		INY
		CPY	!DNCKP1
		BNE	DOPLD50		; check end ?
;					; yes
DOPLD60		EQU	$
		RTS
;
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Crush wall open play			(CSWLPLY)	*
;************************************************************************
CSWLPLY		EQU	$
		LDA	#006H
		STA	!PYALSP
		STA	!ENSTFG		; player,enemy stop!!
		CMP	>KBBMNO
		BNE	CWPL80		; crush ok ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		JSR	CWLOPEN		; crush wall open
;
		JSR	BGCNGS2		; BG. change data set
		LDA	#0FFFFH
		STA	!BGCWBF,Y
		STA	!GMAPDF
;
		INC	!CWLFLG
		INC	!CWLFLG
		LDA	!CWLFLG
		CMP	#00015H
		BNE	CWPL40		; end ?
;					; yes
		LDY	!CWLPNT
		LDA	!DOPNBT
		ORA	BITCD0,Y
		STA	!DOPNBT
		LDA	!RMSTTT
		ORA	BITCD0,Y
		STA	!RMSTTT		; door,map bit on!
;
		LDX	#00001H
		LDA	!DORFLG,Y
		LDY	#00100H
		AND	#00002H
		BEQ	CWPL20		; up,down ?
;					; no
		LDY	#00001H
		DEX
CWPL20		EQU	$
		TYA
		ORA	!CWLXYF
		STA	!CWLXYF
		LDA	<RMCKXF,X
		ORA	#00002H
		STA	<RMCKXF,X	; room x,y check flag on
		LDA	<RMCKXF
		STA	>HLCKXF
;
		LDY	!CWLPNT
		JSR	DCCN420		; door code set
;
		STZ	!CWLFLG
		STZ	!CWLPNT
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>MPBTSET1	; map on/off bit set
		STZ	!PYALSP
		STZ	!ENSTFG		; player,enemy stop off!!
CWPL40		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#003H
		STA	<BGCHFG		; BG. change flag on
CWPL80		EQU	$
		RTL
;
;
;
;
;************************************************************************
;*		Block status check			(BLKSCHK)	*
;************************************************************************
BLKSCHK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLMKCH
		AND	#000FFH
		TAX
		LDA	<PLYPS1
		CLC
		ADC	>GPULYPD,X
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
		LDA	<PLXPS1
		CLC
		ADC	>GPULXPD,X
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK6
		STA	<WORK6
;
		LDA	<PLBGCKF
		AND	#000FFH
		BEQ	BLSCK20		; BG.1 ?
;					; yes
		LDA	<WORK6
		ORA	#01000H
		STA	<WORK6
BLSCK20		EQU	$
		LDX	<WORK6
		LDA	>READBF,X
		AND	#000F0H
		CMP	#00070H
		BNE	BLSCK400	; block ?
;					; yes
		LDA	>READBF,X
		AND	#0000FH
		ASL	A
		TAX
		LDA	!BLKSTT,X
		BEQ	BLSCK400	; mochiage block ?
;					; yes
		LDY	#00055H
		AND	#0F0F0H
		CMP	#02020H
		BEQ	BLSCK80		; mochiage block(Big) ?
;					; no
		LDA	!BLKSTT,X
		AND	#0000FH
		ASL	A
		TAX
		LDA	>MCBLCDT,X
		TAY
BLSCK80		EQU	$
		TYA
;
		SEP	#00110001B	; memory,index 8bit mode & SEC
		RTL
;
;
BLSCK400	EQU	$
		LDX	<WORK6
		LDA	>READBF,X
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		CLC
		RTL
;
;
;
;
;
;************************************************************************
;*		Block play main				(BLKPLY)	*
;************************************************************************
MOVEDT		EQU	$
		WORD	0FF00H,00100H,0FFFCH,00004H
;
;
;
		MEM16
		IDX16
BLPY000		EQU	$
		LDA	!BLKSTT,Y
		BEQ	BLPY500		; check ?
;					; yes
		CMP	#00001H
		BNE	BLPY40		; init. ?
;					; yes
		JSR	BLPI000		; init. BG, off
		LDX	!BMUKI
		LDA	!BLKADR,Y
		CLC
		ADC	>MOVEDT,X
		STA	!BLKADR,Y
		BRA	BLPY400
;
BLPY40		EQU	$
		CMP	#00002H
		BNE	BLPY60		; move ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>BLOKMV		; block move
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDY	!BLKPNT
		LDA	!BLKSTT,Y
		CMP	#00003H
		BNE	BLPY500		; end ?
;					; yes
		JSR	BLPI200		; end write
		BRA	BLPY400
;
BLPY60		EQU	$
BLPY80		EQU	$
		CMP	#00004H
		BNE	BLPY500		; hole down ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>BKHLMV		; block hole down
		BRA	BLPY500
;
;
		MEM16
		IDX16
BLPY400		EQU	$
		LDX	!BLKPNT
		INC	!BLKSTT,X
BLPY500		EQU	$
		INC	!BLKPNT
		INC	!BLKPNT
BLKPLY		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDY	!BLKPNT
		CPY	!LMPDGP
;// 02.10.09 //		LDA	!BLKSTT,Y
;// 02.10.09 //		BEQ	BLPY500		; move ?
;// 02.10.09 //;					; no
;// 02.10.09 //		BPL	BLPY000		; block data end ?
;// 02.10.09 //;					; yes
		BNE	BLPY000		; block data end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
		MEM16
		IDX16
BLPI000		EQU	$
		LDX	!VRAMD
		LDA	!BLKDT0,Y
		STA	!VRAMD+6,X
		LDA	!BLKDT1,Y
		STA	!VRAMD+12,X
		LDA	!BLKDT2,Y
		STA	!VRAMD+18,X
		LDA	!BLKDT3,Y
		STA	!VRAMD+24,X	; write data set
;
		LDA	!BLKADR,Y
		AND	#03FFFH
		TAX
		LDA	!BLKDT0,Y
		STA	>ROOMBF+000H,X
		LDA	!BLKDT1,Y
		STA	>ROOMBF+080H,X
		LDA	!BLKDT2,Y
		STA	>ROOMBF+002H,X
		LDA	!BLKDT3,Y
		STA	>ROOMBF+082H,X
		AND	#003FFH
		TAX
		LDA	>RDCODE0,X	; (A) <-- read code
		AND	#000FFH
		STA	<WORK0
		STA	<WORK1
;
		LDA	!BLKADR,Y
		AND	#03FFFH
		LSR	A
		TAX
		LDA	<WORK0
BLPI040		EQU	$
		STA	>READBF+000H,X
		STA	>READBF+040H,X
;
		LDX	!VRAMD
		LDA	#00000H
		JSR	BGADRGT		; Vram address get
		STA	!VRAMD+2,X
		LDA	#00080H
		JSR	BGADRGT		; Vram address get
		STA	!VRAMD+8,X
		LDA	#00002H
		JSR	BGADRGT		; Vram address get
		STA	!VRAMD+14,X
		LDA	#00082H
		JSR	BGADRGT		; Vram address get
		STA	!VRAMD+20,X	; write address set
;
;
		LDA	#00100H
		STA	!VRAMD+4,X
		STA	!VRAMD+10,X
		STA	!VRAMD+16,X
		STA	!VRAMD+22,X
		LDA	#0FFFFH
		STA	!VRAMD+26,X
		TXA
		CLC
		ADC	#00024
		STA	!VRAMD
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#001H
		STA	<VRFLG
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
		RTS
;
;
BLPI200		EQU	$
		LDA	!BLKADR,Y
		AND	#04000H
		BNE	BLPI210		; swich on ?
;					; yes
		LDA	!BLKSWF
		EOR	#00001H
		STA	!BLKSWF		; block swich flag on
BLPI210		EQU	$
;// 03.09.24 //		LDX	!VRAMD
;// 03.09.24 //		LDA	#00922H
;// 03.09.24 //		STA	!VRAMD+6,X
;// 03.09.24 //		INC	A
;// 03.09.24 //		STA	!VRAMD+18,X
;// 03.09.24 //		LDA	#00932H
;// 03.09.24 //		STA	!VRAMD+12,X
;// 03.09.24 //		INC	A
;// 03.09.24 //		STA	!VRAMD+24,X	; write data set
;// 03.09.24 //;
;// 03.09.24 //		LDA	!BLKADR,Y
;// 03.09.24 //		AND	#03FFFH
;// 03.09.24 //		TAX
;// 03.09.24 //		LDA	#00922H
;// 03.09.24 //		STA	>ROOMBF+000H,X
;// 03.09.24 //		INC	A
;// 03.09.24 //		STA	>ROOMBF+002H,X
;// 03.09.24 //		LDA	#00932H
;// 03.09.24 //		STA	>ROOMBF+080H,X
;// 03.09.24 //		INC	A
;// 03.09.24 //		STA	>ROOMBF+082H,X
;
		LDA	!BLKADR,Y
		AND	#03FFFH
		LSR	A
		TAX
;// 03.10.03 //		LDA	#0FFFFH
;// 03.10.03 //		STA	!BLTRPF		; block trap on flag off
		LDA	>READBF+000H,X
		AND	#000FFH
		CMP	#00020H
		BEQ	BLPI300		; hole ?
;					; no
		PHA			; (A) push
		PHY			; (Y) push
		PHX			; (X) push
;
		LDX	!VRAMD
		LDA	#00922H
		STA	!VRAMD+6,X
		INC	A
		STA	!VRAMD+18,X
		LDA	#00932H
		STA	!VRAMD+12,X
		INC	A
		STA	!VRAMD+24,X	; write data set
;
		LDA	!BLKADR,Y
		AND	#03FFFH
		TAX
		LDA	#00922H
		STA	>ROOMBF+000H,X
		INC	A
		STA	>ROOMBF+002H,X
		LDA	#00932H
		STA	>ROOMBF+080H,X
		INC	A
		STA	>ROOMBF+082H,X
;
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STY	<BMWORK+0	; block mode clear !!
		LDX	#0001H
		LDA	!BLKMODE,X
		DEC	A
		ASL	A
		CMP	<BMWORK+0
		BEQ	BLPI220
		LDX	#0000H
BLPI220		EQU	$
		STZ	!BLKMODE,X
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PLX			; (X) pull
		PLY			; (Y) pull
		PLA			; (A) pull
		CMP	#00023H
		BNE	BLPI240		; trap ?
;					; yes
		LDA	!TRAPMD
		EOR	#00001H
		STA	!BLTRPF		; block trap on flag on
		LDA	#00004H
		BRA	BLPI260
;
BLPI240		EQU	$
		LDA	#0FFFFH
BLPI260		EQU	$
		STA	!BLKSTT,Y
;
		LDA	#02727H
		JMP	BLPI040		; write address set
;
BLPI300		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#020H
		STA	!SOUND2		; <sound2>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDY	!BLKPNT
		LDX	!BLKDPT,Y
		LDA	>HLGOTO
		AND	#000FFH
		STA	>BLKTBUF,X	; new room no. set	
;
		LDA	!BLKADR,Y
		STA	>BLKTBUF+2,X	; new address set
		RTS
;
;
;
BGADRGT		EQU	$
		STA	<WORKE
		LDA	!BLKADR,Y
		AND	#03FFFH
		CLC
		ADC	<WORKE
BGADRG0		EQU	$
		STA	<WORKE
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK0
		LDA	<WORKE
		AND	#0303FH
		LSR	A
		ORA	<WORK0
		STA	<WORK0
		LDA	<WORKE
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK0
;// 02.09.21 //		ORA	#01000H
		XBA
		RTS
;
;
;
;
;************************************************************************
;*		Mochiage block				(MCBLKCK)	*
;************************************************************************
GPULYPD		EQU	$
		WORD	00003H,00018H,0000EH,0000EH
GPULXPD		EQU	$
		WORD	00007H,00007H,0FFFDH,00010H
;
BIWRPD0		EQU	$
		WORD	000H-00000H,000H-00002H,000H-00080H,000H-00082H
BIWRPD1		EQU	$
		WORD	000H-00000H,000H-00000H,000H-00080H,000H-00080H
BIWRPD2		EQU	$
		WORD	000H-00000H,000H-00002H,000H-00000H,000H-00002H
;
MCBLCDT		EQU	$
		WORD	05252H,05050H,05454H,00000H,02323H
;
;
MCBLKCK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLMKCH
		AND	#000FFH
		TAX
		LDA	<PLYPS1
		CLC
		ADC	>GPULYPD,X
		STA	<WORK0
		STA	<CWORK0
;// 03.05.23 //		PHA			; (A) push
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
		LDA	<PLXPS1
		CLC
		ADC	>GPULXPD,X
		STA	<WORK2
		STA	<CWORK2
;// 03.05.23 //		PHA			; (A) push
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		TSB	<WORK6
		LDA	<PLBGCKF
		AND	#000FFH
		BEQ	MCBC20		; BG.1 ?
;					; yes
		LDA	<WORK6
		ORA	#01000H
		STA	<WORK6
MCBC20		EQU	$
		LDX	<WORK6
		LDA	>READBF,X
		AND	#0000FH
		ASL	A
		TAY
		LDA	!BLKSTT,Y
		AND	#0F0F0H
		CMP	#01010H
		BNE	MCBC200		; mochiage block(Big) ?
;					; no
		LDA	!BLKSTT,Y
		PHA			; (A) push
		STY	!BLKPNT
;
		LDA	!BLKADR,Y
		JSR	PONTCHK		; position check
;
		LDY	!BLKPNT
		JSR	BLPI000		; block rewrite
		PLA			; (A) pull
		AND	#0000FH
		ASL	A
		TAX
		LDA	>MCBLCDT,X
		STA	<WORK6
;// 03.07.08 //;
;// 03.07.08 //		LDY	!BLKPNT
;// 03.07.08 //		LDA	!BLKADR,Y
;// 03.07.08 //		JSR	PONTCHK		; position check
		BRA	MCBC300
;
MCBC200		EQU	$
		CMP	#02020H
		BNE	MCBC999		; big-block ?
;					; yes
		LDA	!BLKSTT,Y
		AND	#0000FH
		ASL	A
		STA	<WORK0
		TYA
		SEC
		SBC	<WORK0
CRHYKWT		EQU	$
		STA	!BLKPNT
;
		PHA			; (A) push
;
		TAY
		PHY			; (Y) push
;
		LDA	!BLKADR,Y
		JSR	PONTCHK		; position check
;
		PLY			; (Y) pull
		JSR	BLPI000		; block rewrite
		INC	!BLKPNT
		INC	!BLKPNT
		LDY	!BLKPNT
		JSR	BLPI000		; block rewrite
		INC	!BLKPNT
		INC	!BLKPNT
		LDY	!BLKPNT
		JSR	BLPI000		; block rewrite
		INC	!BLKPNT
		INC	!BLKPNT
		LDY	!BLKPNT
		JSR	BLPI000		; block rewrite
		LDA	#05555H
		STA	<WORK6
		PLA			; (A) pull
		STA	!BLKPNT
MCBC300		EQU	$
;// 03.09.20 //;// 03.06.17 //		LDY	!BLKPNT
;// 03.09.20 //;// 03.06.17 //		LDA	!BLKADR,Y
;// 03.09.20 //;// 03.06.17 //		JSR	PONTCHK		; position check
;// 03.09.20 //;// 03.06.17 //;
;// 03.09.20 //		LDA	<WORK4
;// 03.09.20 //		AND	#0001111110000000B
;// 03.09.20 //		LSR	A
;// 03.09.20 //  		LSR	A
;// 03.09.20 //		LSR	A
;// 03.09.20 //		LSR	A
;// 03.09.20 //		STA	<WORK2
;// 03.09.20 //;// 03.09.06 //		LDA	<PLYPS1
;// 03.09.20 //		LDA	<CWORK0
;// 03.09.20 //		AND	#0FF00H
;// 03.09.20 //		TSB	<WORK2		; check y-pos.
;// 03.09.20 //;
;// 03.09.20 //		LDA	<WORK4
;// 03.09.20 //		AND	#0000000001111111B
;// 03.09.20 //		ASL	A
;// 03.09.20 //		ASL	A
;// 03.09.20 //		STA	<WORK0
;// 03.09.20 //;// 03.09.06 //		LDA	<PLXPS1
;// 03.09.20 //		LDA	<CWORK2
;// 03.09.20 //		AND	#0FF00H
;// 03.09.20 //		TSB	<WORK0		; cehck x-pos.
;// 03.09.20 //;
;// 03.09.20 //;// 03.05.23 //		PLA			; (A) pull
;// 03.09.20 //;// 03.05.23 //		AND	#0FFF8H
;// 03.09.20 //;// 03.05.23 //		STA	<WORK0		; check x-pos.
;// 03.09.20 //;// 03.05.23 //		PLA			; (A) pull
;// 03.09.20 //;// 03.05.23 //		AND	#0FFF8H
;// 03.09.20 //;// 03.05.23 //		STA	<WORK2		; check y-pos.
;
		JSR	BLKXYGT		; block x,y-address get
;
;
		LDA	<WORK6
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
MCBC999		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#000H
		RTL
;
;
;
;************************************************************************
;*		Danjyon hammer check			(DJHMCK)	*
;************************************************************************
DJHMCK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!AITMBT
		AND	#00002H
		BEQ	MCBC999		; tonkachi ?
;					; yes
		LDA	<WORK0
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		ADC	<WORK2
		STA	<WORK6
		LDA	<PLBGCKF
		AND	#000FFH
		BEQ	DHMC20		; BG.1 ?
;					; yes
		LDA	<WORK6
		ORA	#01000H
		STA	<WORK6
DHMC20		EQU	$
		LDX	<WORK6
		LDA	>READBF,X
		AND	#000F0H
		CMP	#00070H
		BNE	MCBC999		; hummer-kui ?
;					; yes
		LDA	>READBF,X
		AND	#0000FH
		ASL	A
		TAY
		LDA	!BLKSTT,Y
		AND	#0F0F0H
		CMP	#04040H
		BNE	DHMC100		; hummer-kui ?
;					; yes
		LDA	!BLKSTT,Y
		PHA			; (A) push
		STY	!BLKPNT
		JSR	BLPI000		; block rewrite
		PLA			; (A) pull
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#011H
		STA	!SOUND2		; <sound2>
;
		LDA	#000H
		RTL
;
;
		MEM16
		IDX16
DHMC100		EQU	$
		CMP	#01010H
		BNE	MCBC999		; tubo ?
;					; yes
		STY	!BLKPNT
		LDA	!BLKADR,Y
		JSR	PONTCHK		; position check
;
		LDY	!BLKPNT
		JSR	BLPI000		; block rewrite
;
		JSR	BLKXYGT		; block x,y-address get
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	!OSETFG
		ORA	#080H
		STA	!OSETFG
		LDA	#001H
		JSL	>KUSAST
		JMP	>KNKMIT		; kona kemuri init.
;
;
;
		MEM16
		IDX16
BLKXYGT		EQU	$
		LDY	!BLKPNT
		LDA	!BLKADR,Y
		PHA			; (A) push
		AND	#0007EH
		ASL	A
		ASL	A
		STA	<WORK0
		LDA	<PLXPS1
		AND	#0FE00H
		TSB	<WORK0		; (work0) <-- x-pos.
		PLA			; (A) pull
		AND	#01F80H
		ASL	A
		XBA
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK2
		LDA	<PLYPS1
		AND	#0FE00H
		TSB	<WORK2		; (work2) <-- y-pos.
		RTS
;
;
;
;
;
;************************************************************************
;*		Point check				(PONTCHK)	*
;************************************************************************
CKDTBL		EQU	$
		WORD	PTCHCD00,PTCHCD01,PTCHCD02,PTCHCD03
		WORD	PTCHCD04,PTCHCD05,PTCHCD06,PTCHCD07
		WORD	PTCHCD08,PTCHCD09,PTCHCD0A,PTCHCD0B
		WORD	PTCHCD0C,PTCHCD0D,PTCHCD0E,PTCHCD0F
		WORD	PTCHCD10,PTCHCD11,PTCHCD12,PTCHCD13
		WORD	PTCHCD14,PTCHCD15,PTCHCD16,PTCHCD17
		WORD	PTCHCD18,PTCHCD19,PTCHCD1A,PTCHCD1B
		WORD	PTCHCD1C,PTCHCD1D,PTCHCD1E,PTCHCD1F
		WORD	PTCHCD20,PTCHCD21,PTCHCD22,PTCHCD23
		WORD	PTCHCD24,PTCHCD25,PTCHCD26,PTCHCD27
		WORD	PTCHCD28,PTCHCD29,PTCHCD2A,PTCHCD2B
		WORD	PTCHCD2C,PTCHCD2D,PTCHCD2E,PTCHCD2F
		WORD	PTCHCD30,PTCHCD31,PTCHCD32,PTCHCD33
		WORD	PTCHCD34,PTCHCD35,PTCHCD36,PTCHCD37
		WORD	PTCHCD38,PTCHCD39,PTCHCD3A,PTCHCD3B
		WORD	PTCHCD3C,PTCHCD3D,PTCHCD3E,PTCHCD3F
;
		WORD	PTCHCD40,PTCHCD41,PTCHCD42,PTCHCD43
		WORD	PTCHCD44,PTCHCD45,PTCHCD46,PTCHCD47
		WORD	PTCHCD48,PTCHCD49,PTCHCD4A,PTCHCD4B
		WORD	PTCHCD4C,PTCHCD4D,PTCHCD4E,PTCHCD4F
		WORD	PTCHCD50,PTCHCD51,PTCHCD52,PTCHCD53
		WORD	PTCHCD54,PTCHCD55,PTCHCD56,PTCHCD57
		WORD	PTCHCD58,PTCHCD59,PTCHCD5A,PTCHCD5B
		WORD	PTCHCD5C,PTCHCD5D,PTCHCD5E,PTCHCD5F
		WORD	PTCHCD60,PTCHCD61,PTCHCD62,PTCHCD63
		WORD	PTCHCD64,PTCHCD65,PTCHCD66,PTCHCD67
		WORD	PTCHCD68,PTCHCD69,PTCHCD6A,PTCHCD6B
		WORD	PTCHCD6C,PTCHCD6D,PTCHCD6E,PTCHCD6F
		WORD	PTCHCD70,PTCHCD71,PTCHCD72,PTCHCD73
		WORD	PTCHCD74,PTCHCD75,PTCHCD76,PTCHCD77
		WORD	PTCHCD78,PTCHCD79,PTCHCD7A,PTCHCD7B
		WORD	PTCHCD7C,PTCHCD7D,PTCHCD7E,PTCHCD7F
;
		WORD	PTCHCD80,PTCHCD81,PTCHCD82,PTCHCD83
		WORD	PTCHCD84,PTCHCD85,PTCHCD86,PTCHCD87
		WORD	PTCHCD88,PTCHCD89,PTCHCD8A,PTCHCD8B
		WORD	PTCHCD8C,PTCHCD8D,PTCHCD8E,PTCHCD8F
		WORD	PTCHCD90,PTCHCD91,PTCHCD92,PTCHCD93
		WORD	PTCHCD94,PTCHCD95,PTCHCD96,PTCHCD97
		WORD	PTCHCD98,PTCHCD99,PTCHCD9A,PTCHCD9B
		WORD	PTCHCD9C,PTCHCD9D,PTCHCD9E,PTCHCD9F
		WORD	PTCHCDA0,PTCHCDA1,PTCHCDA2,PTCHCDA3
		WORD	PTCHCDA4,PTCHCDA5,PTCHCDA6,PTCHCDA7
		WORD	PTCHCDA8,PTCHCDA9,PTCHCDAA,PTCHCDAB
		WORD	PTCHCDAC,PTCHCDAD,PTCHCDAE,PTCHCDAF
		WORD	PTCHCDB0,PTCHCDB1,PTCHCDB2,PTCHCDB3
		WORD	PTCHCDB4,PTCHCDB5,PTCHCDB6,PTCHCDB7
		WORD	PTCHCDB8,PTCHCDB9,PTCHCDBA,PTCHCDBB
		WORD	PTCHCDBC,PTCHCDBD,PTCHCDBE,PTCHCDBF
;
		WORD	PTCHCDC0,PTCHCDC1,PTCHCDC2,PTCHCDC3
		WORD	PTCHCDC4,PTCHCDC5,PTCHCDC6,PTCHCDC7
		WORD	PTCHCDC8,PTCHCDC9,PTCHCDCA,PTCHCDCB
		WORD	PTCHCDCC,PTCHCDCD,PTCHCDCE,PTCHCDCF
		WORD	PTCHCDD0,PTCHCDD1,PTCHCDD2,PTCHCDD3
		WORD	PTCHCDD4,PTCHCDD5,PTCHCDD6,PTCHCDD7
		WORD	PTCHCDD8,PTCHCDD9,PTCHCDDA,PTCHCDDB
		WORD	PTCHCDDC,PTCHCDDD,PTCHCDDE,PTCHCDDF
		WORD	PTCHCDE0,PTCHCDE1,PTCHCDE2,PTCHCDE3
		WORD	PTCHCDE4,PTCHCDE5,PTCHCDE6,PTCHCDE7
		WORD	PTCHCDE8,PTCHCDE9,PTCHCDEA,PTCHCDEB
		WORD	PTCHCDEC,PTCHCDED,PTCHCDEE,PTCHCDEF
		WORD	PTCHCDF0,PTCHCDF1,PTCHCDF2,PTCHCDF3
		WORD	PTCHCDF4,PTCHCDF5,PTCHCDF6,PTCHCDF7
		WORD	PTCHCDF8,PTCHCDF9,PTCHCDFA,PTCHCDFB
		WORD	PTCHCDFC,PTCHCDFD,PTCHCDFE,PTCHCDFF
;
		WORD	PTCHC100,PTCHC101,PTCHC102,PTCHC103
		WORD	PTCHC104,PTCHC105,PTCHC106,PTCHC107
		WORD	PTCHC108,PTCHC109,PTCHC10A,PTCHC10B
		WORD	PTCHC10C,PTCHC10D,PTCHC10E,PTCHC10F
		WORD	PTCHC110,PTCHC111,PTCHC112,PTCHC113
		WORD	PTCHC114,PTCHC115,PTCHC116,PTCHC117
		WORD	PTCHC118,PTCHC119,PTCHC11A,PTCHC11B
		WORD	PTCHC11C,PTCHC11D,PTCHC11E,PTCHC11F
		WORD	PTCHC120,PTCHC121,PTCHC122,PTCHC123
		WORD	PTCHC124,PTCHC125,PTCHC126,PTCHC127
		WORD	PTCHC128,PTCHC129,PTCHC12A,PTCHC12B
		WORD	PTCHC12C,PTCHC12D,PTCHC12E,PTCHC12F
		WORD	PTCHC130,PTCHC131,PTCHC132,PTCHC133
		WORD	PTCHC134,PTCHC135,PTCHC136,PTCHC137
		WORD	PTCHC138,PTCHC139,PTCHC13A,PTCHC13B
		WORD	PTCHC13C,PTCHC13D,PTCHC13E,PTCHC13F
;
;
PTCHCD00	EQU	$		; position check data
PTCHCD01	EQU	$
PTCHCD02	EQU	$
PTCHCD03	EQU	$
;
		WORD	0FFFFH
;
PTCHCD04	EQU	$
		WORD	01380H+0004CH
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01380H+00070H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
PTCHCD05	EQU	$
PTCHCD06	EQU	$
PTCHCD07	EQU	$
PTCHCD08	EQU	$
;
		WORD	0FFFFH
;
PTCHCD09	EQU	$
		WORD	00400H+0000CH
		HEX	01		; 1 ruppy
		WORD	00400H+00030H
		HEX	0B		; heart
		WORD	00C00H+0000CH
		HEX	88		; sw yuka
;
		WORD	0FFFFH
;
PTCHCD0A	EQU	$
;.'91/.9/28.[SAT]			WORD	00700H+00064H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00800H+00060H
		HEX	0B		; heart
		WORD	00800H+00068H
		HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	00900H+00064H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00B80H+0004CH
		HEX	88		; sw yuka
		WORD	01180H+0001CH
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01180H+00020H
		HEX	09		; arrow
;
		WORD	0FFFFH
;
PTCHCD0B	EQU	$
		WORD	00380H+0004AH
		HEX	0A		; bomb
		WORD	00C80H+0004AH
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			WORD	00C80H+00072H
;.'91/.9/28.[SAT]			HEX	0B		; heart
PTCHCD0C	EQU	$
PTCHCD0D	EQU	$
PTCHCD0E	EQU	$
PTCHCD0F	EQU	$
;
;
PTCHCD10	EQU	$
;
		WORD	0FFFFH
;
PTCHCD11	EQU	$
		WORD	00F80H+00010H
		HEX	00B		; heart
		WORD	00F80H+00020H
		HEX	00B		; heart
		WORD	01380H+00010H
		HEX	00B		; heart
		WORD	01380H+00020H
		HEX	00B		; heart
;.'91/.9/30.[MON]			WORD	00F80H+00018H
;.'91/.9/30.[MON]			HEX	00B		; heart
;.'91/.9/30.[MON]			WORD	01180H+00010H
;.'91/.9/30.[MON]			HEX	001		; 1 ruppy
;.'91/.9/30.[MON]			WORD	01180H+00018H
;.'91/.9/30.[MON]			HEX	007		; 5 ruppy
;.'91/.9/30.[MON]			WORD	01180H+00020H
;.'91/.9/30.[MON]			HEX	001		; 1 ruppy
;.'91/.9/30.[MON]			WORD	01380H+00018H
;.'91/.9/30.[MON]			HEX	001		; 1 ruppy
PTCHCD12	EQU	$
PTCHCD13	EQU	$
;.'91/.9/29.[SUN]			WORD	01700H+00060H
;.'91/.9/29.[SUN]			HEX	0B		; heart
;.'91/.9/29.[SUN]			WORD	01900H+00060H
;.'91/.9/29.[SUN]			HEX	0B		; heart
PTCHCD14	EQU	$
;
		WORD	0FFFFH
;
PTCHCD15	EQU	$
		WORD	00400H+00060H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00400H+00064H
		HEX	0C		; thubo 1
		WORD	00400H+00068H
		HEX	0B		; heart
		WORD	00400H+0006CH
		HEX	0C		; thubo 1
		WORD	00400H+00070H
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00600H+0000CH
		HEX	01		; 1 ruppy
		WORD	00600H+00010H
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00600H+00014H
		HEX	07		; 5 ruppy
		WORD	00B00H+00046H
		HEX	0D		; thubo dai
;
		WORD	0FFFFH
;
PTCHCD16	EQU	$
		WORD	00380H+0003CH
		HEX	0B		; heart
		WORD	00380H+00040H
		HEX	0B		; heart
		WORD	00480H+0003CH
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00480H+00040H
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00580H+0003CH
		HEX	09		; arrow
		WORD	00580H+00040H
		HEX	09		; arrow
		WORD	00680H+0003CH
		HEX	0A		; bomb
;.'91/10/.6.[SUN]			HEX	09		; arrow
		WORD	00680H+00040H
		HEX	0A		; bomb
;.'91/10/.6.[SUN]			HEX	09		; arrow
;.'91/10/.6.[SUN]			WORD	00780H+0003CH
;.'91/10/.6.[SUN]			HEX	0A		; bomb
;.'91/10/.6.[SUN]			WORD	00780H+00040H
;.'91/10/.6.[SUN]			HEX	0A		; bomb
;.'91/10/.6.[SUN]			WORD	00880H+0003CH
;.'91/10/.6.[SUN]			HEX	0A		; bomb
;.'91/10/.6.[SUN]			WORD	00880H+00040H
;.'91/10/.6.[SUN]			HEX	0A		; bomb
		WORD	01380H+00070H
		HEX	08		; key
;
		WORD	0FFFFH
;
PTCHCD17	EQU	$
		WORD	00D00H+00064H
		HEX	0B		; heart
		WORD	00E00H+00064H
		HEX	0B		; heart
		WORD	00F00H+00064H
		HEX	0B		; heart
		WORD	01000H+00064H
		HEX	0B		; heart
		WORD	01100H+00064H
		HEX	0B		; heart
		WORD	01200H+00064H
		HEX	0B		; heart
		WORD	00D00H+00068H
		HEX	0B		; heart
		WORD	00E00H+00068H
		HEX	0B		; heart
		WORD	00F00H+00068H
		HEX	0B		; heart
		WORD	01000H+00068H
		HEX	0B		; heart
		WORD	01100H+00068H
		HEX	0B		; heart
		WORD	01200H+00068H
		HEX	0B		; heart
PTCHCD18	EQU	$
PTCHCD19	EQU	$
;
		WORD	0FFFFH
;
PTCHCD1A	EQU	$
		WORD	00500H+0001CH
		HEX	0A		; bomb
		WORD	00500H+00020H
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			WORD	01380H+00068H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01B00H+0001CH
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01B00H+00020H
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCD1B	EQU	$
		WORD	01700H+00014H
		HEX	09		; arrow
		WORD	01700H+00028H
		HEX	09		; arrow
PTCHCD1C	EQU	$
PTCHCD1D	EQU	$
		WORD	0FFFFH
;
PTCHCD1E	EQU	$
		WORD	00900H+00054H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	00B		; heart
;.'91/.9/29.[SUN]			WORD	00900H+0006CH
;.'91/.9/29.[SUN]			HEX	00A		; bomb
;
		WORD	0FFFFH
;
PTCHCD1F	EQU	$
		WORD	01900H+0001CH
		HEX	88		; sw yuka
;
;
PTCHCD20	EQU	$
;
		WORD	0FFFFH
;
PTCHCD21	EQU	$
		WORD	01880H+00028H
		HEX	0C		; thubo 1
		WORD	01C00H+00030H
		HEX	00B		; heart
		WORD	01C00H+00052H
		HEX	00C		; thubo 1
PTCHCD22	EQU	$
;
		WORD	0FFFFH
;
PTCHCD23	EQU	$
		WORD	01A00H+00056H
		HEX	01		; 1 ruppy
		WORD	01A00H+0005AH
		HEX	0B		; heart
		WORD	01A00H+0005EH
		HEX	01		; 1 ruppy
		WORD	01A00H+00062H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01A00H+00066H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD24	EQU	$
		WORD	00400H+0000CH
		HEX	07		; 5 ruppy
		WORD	00400H+00030H
		HEX	0B		; heart
		WORD	00C00H+0000CH
		HEX	0C		; thubo 1
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00C00H+00030H
		HEX	01		; 1 ruppy
PTCHCD25	EQU	$
;
		WORD	0FFFFH
;
PTCHCD26	EQU	$
		WORD	00400H+0001CH
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00800H+0000CH
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01380H+00016H
		HEX	88		; sw yuka
		WORD	01A00H+00016H
		HEX	07		; 5 ruppy
		WORD	01A80H+0005CH
		HEX	09		; arrow
;
		WORD	0FFFFH
;
PTCHCD27	EQU	$
		WORD	01480H+00026H
		HEX	0A		; bomb
		WORD	01580H+00056H
		HEX	0B		; heart
		WORD	01C00H+00028H
		HEX	01		; 1 ruppy
		WORD	01C00H+0002CH
		HEX	01		; 1 ruppy
		WORD	01C00H+00050H
		HEX	07		; 5 ruppy
		WORD	01C00H+00054H
		HEX	07		; 5 ruppy
PTCHCD28	EQU	$
PTCHCD29	EQU	$
;
		WORD	0FFFFH
;
PTCHCD2A	EQU	$
		WORD	00C00H+00050H
		HEX	01		; 1 ruppy
		WORD	01300H+00050H
		HEX	0B		; heart
;.'91/10/.5.[SAT]			WORD	01600H+0005CH
;.'91/10/.5.[SAT]			HEX	08		; key
;
		WORD	0FFFFH
;
PTCHCD2B	EQU	$
		WORD	00500H+00010H
		HEX	0B		; heart
		WORD	00500H+0002CH
		HEX	88		; sw yuka
		WORD	00600H+00010H
		HEX	0B		; heart
		WORD	00600H+0002CH
		HEX	0A		; bomb
		WORD	00700H+00010H
		HEX	0B		; heart
		WORD	00700H+0002CH
		HEX	0A		; bomb
		WORD	01580H+00012H
		HEX	0A		; bomb
		WORD	01580H+0002AH
		HEX	09		; arrow
		WORD	01680H+00012H
		HEX	0A		; bomb
		WORD	01680H+0002AH
		HEX	09		; arrow
;.'91/.9/28.[SAT]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD2C	EQU	$
		WORD	01800H+0006CH
		HEX	0B		; heart
		WORD	01800H+00070H
		HEX	0B		; heart
PTCHCD2D	EQU	$
PTCHCD2E	EQU	$
;
		WORD	0FFFFH
;
PTCHCD2F	EQU	$
		WORD	00700H+0001CH
		HEX	0B		; heart
		WORD	00700H+00020H
		HEX	0B		; heart
		WORD	00900H+0001CH
		HEX	07		; 5 ruppy
		WORD	00900H+00020H
		HEX	07		; 5 ruppy
		WORD	01380H+0002CH
		HEX	07		; 5 ruppy
		WORD	01380H+00034H
		HEX	07		; 5 ruppy
		WORD	01B00H+00068H
		HEX	0B		; heart
		WORD	01C00H+00068H
		HEX	0B		; heart
PTCHCD30	EQU	$
;
		WORD	0FFFFH
;
PTCHCD31	EQU	$
		WORD	01C00H+0005CH
		HEX     0A              ; bomb
;
		WORD	0FFFFH
;
PTCHCD32	EQU	$
		WORD	00D00H+0001CH
		HEX	00C		; thubo 1
PTCHCD33	EQU	$
;
		WORD	0FFFFH
;
PTCHCD34	EQU	$
		WORD	00800H+0004EH
		HEX	07		; 5 ruppy
		WORD	00800H+0005CH
		HEX	07		; 5 ruppy
;
		WORD	0FFFFH
;
PTCHCD35	EQU	$
		WORD	00600H+0003CH
		HEX	08		; key
		WORD	00800H+00014H
		HEX	07		; 5 ruppy
		WORD	00800H+00018H
		HEX	07		; 5 ruppy
		WORD	00800H+0001CH
		HEX	07		; 5 ruppy
		WORD	00800H+00020H
		HEX	07		; 5 ruppy
		WORD	00800H+00024H
		HEX	07		; 5 ruppy
		WORD	01400H+00030H
		HEX	0B		; heart
		WORD	01700H+00070H
		HEX	0B		; heart
		WORD	01C00H+0004CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD36	EQU	$
		WORD	00400H+0006CH
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00400H+00070H
		HEX	07		; 5 ruppy
		WORD	01000H+0000AH
		HEX	0B		; heart
		WORD	01000H+00072H
		HEX	08		; key
;.'91/.9/28.[SAT]			WORD	01C00H+0000CH
;.'91/.9/28.[SAT]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD37	EQU	$
		WORD	00600H+0003CH
		HEX	08		; key
;
		WORD	0FFFFH
;
PTCHCD38	EQU	$
		WORD	00C80H+00024H
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00D80H+00024H
		HEX	07		; 5 ruppy
		WORD	01280H+00024H
		HEX	0A		; bomb
		WORD	01380H+00024H
		HEX	08		; key
;
		WORD	0FFFFH
;
PTCHCD39	EQU	$
		WORD	01400H+0000CH
		HEX	0B		; heart
		WORD	01600H+00064H
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01A00H+00064H
		HEX	09		; arrow
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01C00H+00030H
		HEX	09		; arrow
;.'91/.9/28.[SAT]			HEX	0B		; heart
PTCHCD3A	EQU	$
PTCHCD3B	EQU	$
;
		WORD	0FFFFH
;
PTCHCD3C	EQU	$
		WORD	00800H+00018H
		HEX	0C		; thubo 1
		WORD	00C00H+00040H
		HEX	07		; 5 ruppy
		WORD	00E00H+00014H
		HEX	01		; 1 ruppy
		WORD	01200H+00044H
		HEX	07		; 5 ruppy
		WORD	01300H+00060H
		HEX	0B		; heart
		WORD	01400H+00040H
		HEX	07		; 5 ruppy
		WORD	01A00H+00040H
		HEX	07		; 5 ruppy
;.'91/.9/28.[SAT]			WORD	00800H+00024H
;.'91/.9/28.[SAT]			HEX	0A		; bomb
;.'91/.9/28.[SAT]			WORD	00800H+00028H
;.'91/.9/28.[SAT]			HEX	0A		; bomb
;.'91/.9/28.[SAT]			WORD	00800H+0002CH
;.'91/.9/28.[SAT]			HEX	09		; arrow
;.'91/.9/28.[SAT]			WORD	01800H+00024H
;.'91/.9/28.[SAT]			HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	01800H+00028H
;.'91/.9/28.[SAT]			HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	01800H+0002CH
;.'91/.9/28.[SAT]			HEX	0D		; thubo dai
;
		WORD	0FFFFH
;
PTCHCD3D	EQU	$
		WORD	00C00H+0004CH
		HEX	0A		; bomb
		WORD	00C00H+00070H
		HEX	0A		; bomb
		WORD	01600H+00018H
		HEX	0B		; heart
		WORD	01600H+00028H
		HEX	09		; arrow
;.'91/.9/.2.[MON]			WORD	01700H+00014H
;.'91/.9/.2.[MON]			HEX	0B		; heart
;.'91/.9/.9.[MON]			WORD	01800H+0001CH
;.'91/.9/.9.[MON]			HEX	08		; key
		WORD	01800H+00020H
		HEX	0B		; heart
;.'91/.9/.2.[MON]			WORD	01900H+00028H
;.'91/.9/.2.[MON]			HEX	0A		; bomb
		WORD	01A00H+00014H
		HEX	07		; 5 ruppy
		WORD	01A00H+00024H
		HEX	0D		; thubo dai
;
		WORD	0FFFFH
;
PTCHCD3E	EQU	$
		WORD	00600H+00060H
		HEX	0A		; bomb
		WORD	00600H+00064H
		HEX	0C		; thubo 1
		WORD	00A00H+00058H
		HEX	0B		; heart
		WORD	00A00H+0005CH
		HEX	0C		; thubo 1

;
;.'91/.8/23.[FRI]			WORD	00900H+00054H
;.'91/.8/23.[FRI]			HEX	00C		; thubo 1
;.'91/.8/23.[FRI]			WORD	00900H+00068H
;.'91/.8/23.[FRI]			HEX	00B		; heart
;
		WORD	0FFFFH
;
PTCHCD3F	EQU	$
		WORD	01900H+0000CH
		HEX	001		; 1 ruppy
		WORD	01900H+00014H
		HEX	001		; 1 ruppy
		WORD	01A00H+0000CH
		HEX	00A		; bomb
		WORD	01A00H+00014H
		HEX	00A		; bomb
		WORD	01B00H+0000CH
		HEX	88		; sw yuka
		WORD	01B00H+00014H
		HEX	00B		; heart
		WORD	01700H+0001CH
		HEX	008		; key
PTCHCD40	EQU	$
;
		WORD	0FFFFH
;
PTCHCD41	EQU	$
		WORD	00A00H+00064H
		HEX	00B		; heart
		WORD	00F00H+00034H
		HEX	001		; 1 ruppy
		WORD	01000H+00034H
		HEX	0C		; thubo 1
		WORD	01680H+00014H
		HEX	00C		; thubo 1
PTCHCD42	EQU	$
;
		WORD	0FFFFH
;
PTCHCD43	EQU	$
		WORD	00400H+00042H
		HEX	09		; arrow
		WORD	00400H+0004EH
		HEX	0C		; thubo 1
		WORD	00900H+00042H
		HEX	0B		; heart
		WORD	00900H+0004EH
		HEX	0B		; heart
		WORD	01400H+00070H
		HEX	08		; key
PTCHCD44	EQU	$
;
		WORD	0FFFFH
;
PTCHCD45	EQU	$
		WORD	00400H+0000CH
		HEX	09		; arrow
;.'91/.9/28.[SAT]			HEX	0B		; heart
;// 03.10.07 [MON] //		WORD	00580H+0006CH
;// 03.10.07 [MON] //		HEX	08		; key
;.'91/10/.4.[FRI]			WORD	00A80H+0005CH
;.'91/10/.4.[FRI]			HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
;.'91/10/.4.[FRI]			WORD	00A80H+0006CH
		WORD	00B00H+0006CH
		HEX	0B		; heart
		WORD	00C00H+00030H
		HEX	09		; arrow
		WORD	01080H+0005CH
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01080H+0006CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD46	EQU	$
;.'91/.9/.7.[SAT]			WORD	00500H+0001CH
;.'91/.9/.7.[SAT]			HEX	07		; 5 ruppy
		WORD	00500H+00060H
		HEX	0B		; heart
		WORD	01B00H+0001CH
		HEX	0B		; heart
PTCHCD47	EQU	$
PTCHCD48	EQU	$
;
		WORD	0FFFFH
;
PTCHCD49	EQU	$
		WORD	00F00H+00068H
		HEX	0C		; thubo 1
		WORD	01000H+00068H
		HEX	0C		; thubo 1
		WORD	01380H+00010H
		HEX	0C		; thubo 1
		WORD	01480H+0002CH
		HEX	0B		; heart
		WORD	01B80H+00010H
		HEX	0B		; heart
		WORD	01C80H+0002CH
		HEX	0C		; thubo 1
;
		WORD	0FFFFH
;
PTCHCD4A	EQU	$
		WORD	00500H+0000EH
		HEX	88		; sw yuka
		WORD	00500H+00020H
		HEX	0A		; bomb
		WORD	00500H+0005CH
		HEX	0A		; bomb
		WORD	00500H+0006EH
		HEX	88		; sw yuka
		WORD	00800H+00038H
		HEX	0A		; bomb
		WORD	00800H+00044H
		HEX	0A		; bomb
		WORD	00B00H+0000EH
		HEX	0B		; heart
		WORD	00B00H+00020H
		HEX	01		; 1 ruppy
		WORD	00B00H+0005CH
		HEX	01		; 1 ruppy
		WORD	00B00H+0006EH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD4B	EQU	$
		WORD	00600H+00014H
		HEX	09		; arrow
		WORD	00600H+00028H
		HEX	0B		; heart
PTCHCD4C	EQU	$
PTCHCD4D	EQU	$
		WORD	0FFFFH
;
PTCHCD4E	EQU	$
;.'91/.9/29.[SUN]			WORD	00780H+0000CH
;.'91/.9/29.[SUN]			HEX	00B		; heart
;.'91/.9/29.[SUN]			WORD	00A00H+00030H
;.'91/.9/29.[SUN]			HEX	00B		; heart
		WORD	00B80H+0000CH
		HEX	88		; sw yuka
		WORD	00C00H+0001CH
		HEX	00B		; heart
		WORD	00C00H+00070H
		HEX	00C		; thubo 1
PTCHCD4F	EQU	$
;
		WORD	0FFFFH
;
;
PTCHCD50	EQU	$
		WORD	00600H+00060H+02000H
		HEX	00B		; heart
		WORD	00600H+00064H+02000H
		HEX	00B		; heart
PTCHCD51	EQU	$
;
		WORD	0FFFFH
;
PTCHCD52	EQU	$
		WORD	00380H+0000AH
		HEX	00B		; heart
		WORD	01A80H+00042H
		HEX	00B		; heart
;
		WORD	0FFFFH
;
PTCHCD53	EQU	$
		WORD	00B00H+0005CH
		HEX	0B		; heart
		WORD	00B00H+00060H
		HEX	0C		; thubo 1
		WORD	00B00H+00064H
		HEX	08		; key
		WORD	00B00H+00068H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD54	EQU	$
		WORD	01980H+0003AH
		HEX	07		; 5 ruppy
		WORD	01A80H+0003AH
		HEX	0B		; heart
		WORD	01B80H+0003AH
		HEX	0B		; heart
		WORD	01C80H+0003AH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD55	EQU	$
		WORD	01880H+00066H
		HEX	00C		; thubo 1
		WORD	01980H+00066H
		HEX	00C		; thubo 1
;
		WORD	0FFFFH
;
PTCHCD56	EQU	$
		WORD	00600H+00014H
		HEX	0C		; thubo 1
		WORD	00600H+00028H
		HEX	0C		; thubo 1
		WORD	00700H+00018H
		HEX	0C		; thubo 1
		WORD	00700H+00024H
		HEX	0C		; thubo 1
		WORD	00800H+0000CH
		HEX	0B		; heart
		WORD	00800H+00030H
		HEX	0B		; heart
		WORD	00900H+00018H
		HEX	0C		; thubo 1
		WORD	00900H+00024H
		HEX	0C		; thubo 1
		WORD	00A00H+00014H
		HEX	07		; 5 ruppy
		WORD	00A00H+00028H
		HEX	07		; 5 ruppy
;.'91/.9/28.[SAT]			WORD	00A00H+00060H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01400H+0000CH
		HEX	08		; key
;
		WORD	0FFFFH
;
PTCHCD57	EQU	$
		WORD	00700H+0005CH
		HEX	0D		; thubo dai
		WORD	01400H+0000CH
		HEX	0C		; thubo 1
		WORD	01700H+0005CH
		HEX	0A		; bomb
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01700H+00064H
		HEX	0C		; thubo 1
		WORD	01900H+00054H
		HEX	07		; 5 ruppy
		WORD	01B00H+0004CH
		HEX	0B		; heart
		WORD	01400H+00030H
		HEX	0C		; thubo 1
		WORD	01600H+0001EH
		HEX	88		; sw yuka
;
		WORD	0FFFFH
;
PTCHCD58	EQU	$
		WORD	00500H+00060H
		HEX	0A		; bomb
		WORD	00500H+00064H
		HEX	0C		; thubo 1
		WORD	00700H+0000CH
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00700H+0005CH
		HEX	0B		; heart
		WORD	00700H+0006CH
		HEX	0B		; heart
		WORD	00800H+00010H
		HEX	0C		; thubo 1
		WORD	00900H+00064H
		HEX	0C		; thubo 1
		WORD	00900H+00068H
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCD59	EQU	$
;.'91/.9/28.[SAT]			WORD	00400H+0004CH
;.'91/.9/28.[SAT]			HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	00400H+00070H
;.'91/.9/28.[SAT]			HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	00800H+00020H+02000H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00B00H+0001AH+02000H
		HEX	0B		; heart
;.'91/.9/12.[THU]			WORD	01700H+00028H+02000H
;.'91/.9/12.[THU]			HEX	08		; key
PTCHCD5A	EQU	$
;
		WORD	0FFFFH
;
PTCHCD5B	EQU	$
;.'91/.9/26.[THU]			WORD	00580H+0005AH+02000H
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	00580H+0005EH+02000H
		HEX	88		; sw yuka
;.'91/.9/26.[THU]			WORD	00580H+00062H+02000H
;.'91/.9/26.[THU]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD5C	EQU	$
		WORD	01600H+0005EH
		HEX	0A		; bomb
		WORD	01A00H+0005EH
		HEX	0D		; thubo dai
;
		WORD	0FFFFH
;
PTCHCD5D	EQU	$
		WORD	00500H+00010H
		HEX	0A		; bomb
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	00500H+0002CH
		HEX	07		; 5 ruppy
		WORD	00B00H+00010H
		HEX	01		; 1 ruppy
		WORD	00B00H+0002CH
		HEX	09		; arrow
		WORD	01400H+0000CH
		HEX	09		; arrow
		WORD	01400H+00030H
		HEX	0A		; bomb
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	01C00H+0000CH
		HEX	0C		; thubo 1
		WORD	01C00H+00030H
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCD5E	EQU	$
		WORD	00400H+0005CH
		HEX	0C		; thubo 1
		WORD	00400H+00060H
		HEX	0C		; thubo 1
		WORD	00800H+0004CH
		HEX	0B		; heart
		WORD	00800H+00070H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD5F	EQU	$
;.'91/.8/23.[FRI]			WORD	01B00H+00010H
;.'91/.8/23.[FRI]			HEX	0B		; heart
		WORD	01B00H+0002CH
		HEX	88		; sw yuka
;
		WORD	0FFFFH
;
;
PTCHCD60	EQU	$
		WORD	00400H+0004CH
		HEX	00B		; heart
		WORD	00400H+00070H
		HEX	00B		; heart
PTCHCD61	EQU	$
;
		WORD	0FFFFH
;
PTCHCD62	EQU	$
		WORD	01580H+00050H
		HEX	00B		; heart
;
		WORD	0FFFFH
;
PTCHCD63	EQU	$
		WORD	00800H+00030H
		HEX	0B		; heart
		WORD	00C00H+0000CH
		HEX	08		; key
;
;
		WORD	0FFFFH
;
PTCHCD64	EQU	$
		WORD	01600H+0000CH
		HEX	0A		; bomb
		WORD	01600H+00010H
		HEX	0A		; bomb
		WORD	01600H+00014H
		HEX	0A		; bomb
		WORD	01C00H+00024H
		HEX	0A		; bomb
		WORD	01C00H+00028H
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01C00H+0002CH
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01C00H+00030H
		HEX	88		; sw yuka
;
		WORD	0FFFFH
;
PTCHCD65	EQU	$
;.'91/.9/24.[TUE]			WORD	01400H+0004CH
;.'91/.9/24.[TUE]			HEX	01		; 1 ruppy
;.'91/10/.5.[SAT]			WORD	01C00H+0004CH
;.'91/10/.5.[SAT]			HEX	0A		; bomb
;.'91/10/.5.[SAT]			WORD	01C00H+00050H
;.'91/10/.5.[SAT]			HEX	0A		; bomb
;.'91/10/.5.[SAT]			WORD	01C00H+00054H
;.'91/10/.5.[SAT]			HEX	0A		; bomb
		WORD	01C00H+00064H
		HEX	0A		; bomb
		WORD	01C00H+00068H
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCD66	EQU	$
		WORD	00500H+00030H+02000H
		HEX	09		; arrow
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00500H+00034H+02000H
		HEX	0A		; bomb
		WORD	00500H+00038H+02000H
		HEX	07		; 5 ruppy
		WORD	00500H+00054H
		HEX	0B		; heart
		WORD	00500H+00068H
		HEX	09		; arrow
		WORD	00600H+00030H+02000H
		HEX	09		; arrow
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00600H+00034H+02000H
		HEX	0A		; bomb
		WORD	00600H+00038H+02000H
		HEX	07		; 5 ruppy
		WORD	00600H+00054H
		HEX	0B		; heart
		WORD	00600H+00068H
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCD67	EQU	$
		WORD	00700H+0000CH
		HEX	09		; arrow
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	00700H+00030H
		HEX	0C		; thubo 1
		WORD	01300H+00060H
		HEX	0B		; heart
		WORD	01400H+0004AH
		HEX	0C		; thubo 1
		WORD	01700H+00012H
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01A00H+00012H
		HEX	0B		; heart
		WORD	01C00H+00068H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD68	EQU	$
		WORD	00700H+00040H
		HEX	0B		; heart
		WORD	00700H+00058H
		HEX	0C		; thubo 1
;.'91/.9/28.[SAT]			WORD	00E00H+00060H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01000H+00040H
		HEX	0B		; heart
		WORD	01800H+00040H
		HEX	0C		; thubo 1
		WORD	01900H+00040H
		HEX	0B		; heart
PTCHCD69	EQU	$
;.'91/10/.5.[SAT]	;
;.'91/10/.5.[SAT]			WORD	0FFFFH
;
PTCHCD6A	EQU	$
;.'91/10/.5.[SAT]			WORD	01700H+0004CH
;.'91/10/.5.[SAT]			HEX	09		; arrow
;.'91/10/.5.[SAT]			WORD	01700H+00070H
;.'91/10/.5.[SAT]			HEX	08		; key
;
		WORD	0FFFFH
;
PTCHCD6B	EQU	$
		WORD	00500H+0001CH
		HEX	0B		; heart
		WORD	00800H+0002CH
		HEX	0C		; thubo 1
		WORD	00B00H+0001CH
		HEX	0C		; thubo 1
;.'91/.9/26.[THU]			WORD	00B00H+0002CH
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/20.[FRI]			WORD	01580H+0001EH
;.'91/.9/20.[FRI]			HEX	09		; arrow
;.'91/.9/20.[FRI]			WORD	01A80H+0001EH
;.'91/.9/20.[FRI]			HEX	0B		; heart
;.'91/.9/20.[FRI]			WORD	01900H+0005AH
;.'91/.9/20.[FRI]			HEX	0B		; heart
		WORD	01900H+00062H
		HEX	09		; arrow
;
		WORD	0FFFFH
;
PTCHCD6C	EQU	$
		WORD	00600H+00014H
		HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	00600H+0001EH
;.'91/.9/26.[THU]			HEX	09		; arrow
		WORD	00600H+00028H
		HEX	09		; arrow
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	00800H+00014H
;.'91/.9/26.[THU]			HEX	0C		; thubo 1
;.'91/.9/26.[THU]			WORD	00800H+00028H
;.'91/.9/26.[THU]			HEX	0C		; thubo 1
		WORD	00A00H+00014H
		HEX	0A		; bomb
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	00A00H+0001EH
;.'91/.9/26.[THU]			HEX	09		; arrow
		WORD	00A00H+00028H
		HEX	0C		; thubo 1
;.'91/.9/26.[THU]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD6D	EQU	$
		WORD	01A00H+0001CH
		HEX	0B		; heart
		WORD	01A00H+00020H
		HEX	0B		; heart
		WORD	01B00H+0001CH
		HEX	0C		; thubo 1
		WORD	01B00H+00020H
		HEX	0C		; thubo 1
PTCHCD6E	EQU	$
PTCHCD6F	EQU	$
;
PTCHCD70	EQU	$
PTCHCD71	EQU	$
PTCHCD72	EQU	$
;
		WORD	0FFFFH
;
PTCHCD73	EQU	$
		WORD	01580H+0001AH
		HEX	09		; arrow
		WORD	01580H+0001EH
		HEX	01		; 1 ruppy
		WORD	01700H+00014H
		HEX	88		; sw yuka
		WORD	01700H+00024H
		HEX	07		; 5 ruppy
		WORD	01880H+00010H
		HEX	0B		; heart
		WORD	01880H+00028H
		HEX	09		; arrow
		WORD	01A00H+00014H
		HEX	0C		; thubo 1
		WORD	01A00H+00024H
		HEX	0B		; heart
		WORD	01B80H+0001AH
		HEX	01		; 1 ruppy
		WORD	01B80H+0001EH
		HEX	07		; 5 ruppy
;
		WORD	0FFFFH
;
PTCHCD74	EQU	$
		WORD	00500H+0001EH
		HEX	0C		; thubo 1
		WORD	00500H+0003EH
		HEX	88		; sw yuka
		WORD	00500H+0005EH
		HEX	0C		; thubo 1
		WORD	00B00H+0000EH
		HEX	0B		; heart
		WORD	00B00H+0002EH
		HEX	09		; arrow
		WORD	00B00H+0004EH
		HEX	09		; arrow
		WORD	00B00H+0006EH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD75	EQU	$
;.'91/.9/12.[THU]			WORD	00E00H+00050H
;.'91/.9/12.[THU]			HEX	0B		; heart
;.'91/.9/12.[THU]			WORD	00E00H+0006CH
;.'91/.9/12.[THU]			HEX	0C		; thubo 1
		WORD	01680H+00014H
		HEX	0C		; thubo 1
		WORD	01680H+00020H
		HEX	09		; arrow
		WORD	01680H+0002CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD76	EQU	$
		WORD	00C00H+00070H
		HEX	0B		; heart
		WORD	01700H+00054H
		HEX	0B		; heart
		WORD	01700H+00060H
		HEX	0B		; heart
PTCHCD77	EQU	$
PTCHCD78	EQU	$
PTCHCD79	EQU	$
PTCHCD7A	EQU	$
;
		WORD	0FFFFH
;
PTCHCD7B	EQU	$
		WORD	00400H+0003CH
		HEX	0B		; heart
		WORD	00400H+00040H
		HEX	08		; key
;.'91/.9/26.[THU]			WORD	00700H+0004CH
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	00A00H+00030H
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	00A00H+00058H
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	01C00H+00030H
;.'91/.9/26.[THU]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD7C	EQU	$
		WORD	00400H+0001CH
		HEX	0B		; heart
		WORD	00400H+00020H
		HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	01500H+00024H
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	01C00H+0004CH
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	01C00H+00070H
;.'91/.9/26.[THU]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD7D	EQU	$
;.'91/.9/26.[THU]			WORD	00600H+0002CH
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/10/.6.[SUN]			WORD	00600H+00068H
;.'91/10/.6.[SUN]			HEX	0A		; bomb
		WORD	00600H+00070H
		HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	00C00H+0002CH
;.'91/.9/26.[THU]			HEX	0B		; heart
;
;.'91/.9/10.[TUE]			WORD	00400H+0000CH
;.'91/.9/10.[TUE]			HEX	0B		; heart
;.'91/.9/10.[TUE]			WORD	00400H+00070H
;.'91/.9/10.[TUE]			HEX	0B		; heart
;.'91/.9/10.[TUE]			WORD	00600H+0000CH
;.'91/.9/10.[TUE]			HEX	08		; key
;.'91/.9/10.[TUE]			WORD	00600H+00070H
;.'91/.9/10.[TUE]			HEX	0A		; bomb
;.'91/.9/10.[TUE]			WORD	00800H+0000CH
;.'91/.9/10.[TUE]			HEX	0B		; heart
;.'91/.9/10.[TUE]			WORD	00A00H+0000CH
;.'91/.9/10.[TUE]			HEX	0C		; thubo 1
;.'91/.9/10.[TUE]			WORD	00A00H+00070H
;.'91/.9/10.[TUE]			HEX	09		; arrow
;.'91/.9/10.[TUE]			WORD	00C00H+0000CH
;.'91/.9/10.[TUE]			HEX	0B		; heart
		WORD	01400H+0006CH
		HEX	09		; arrow
		WORD	01400H+00072H
		HEX	0A		; bomb
		WORD	01C00H+0004CH
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCD7E	EQU	$
		WORD	00F00H+00056H
		HEX	0B		; heart
		WORD	01A00H+00052H
		HEX	0C		; thubo 1
		WORD	01A00H+00064H
		HEX	88		; sw yuka
;.'91/.9/29.[SUN]			WORD	01A00H+00068H
;.'91/.9/29.[SUN]			HEX	0B		; heart
PTCHCD7F	EQU	$
;
		WORD	0FFFFH
;
;
PTCHCD80	EQU	$
		WORD	00400H+00030H
		HEX	00B		; heart
		WORD	00400H+00034H
		HEX	00B		; heart
		WORD	00400H+00038H
		HEX	00B		; heart
PTCHCD81	EQU	$
;
		WORD	0FFFFH
;
PTCHCD82	EQU	$
		WORD	01200H+0004CH+02000H
		HEX	00B		; heart
;
		WORD	0FFFFH
;
PTCHCD83	EQU	$
		WORD	00400H+0004CH
		HEX	09		; arrow
		WORD	00400H+00050H
		HEX	01		; 1 ruppy
		WORD	01C00H+0004CH
		HEX	07		; 5 ruppy
		WORD	01C00H+00050H
		HEX	09		; arrow
;
		WORD	0FFFFH
;
PTCHCD84	EQU	$
		WORD	00700H+00018H
		HEX	09		; arrow
		WORD	00700H+00064H
		HEX	09		; arrow
;
		WORD	0FFFFH
;
PTCHCD85	EQU	$
		WORD	01C00H+0002CH
		HEX	00B		; heart
		WORD	01C00H+00030H
		HEX	09		; arrow
PTCHCD86	EQU	$
;
		WORD	0FFFFH
;
PTCHCD87	EQU	$
		WORD	01400H+0004CH
		HEX	0C		; thubo 1
		WORD	01400H+00070H
		HEX	0D		; thubo dai
PTCHCD88	EQU	$
PTCHCD89	EQU	$
PTCHCD8A	EQU	$
;
		WORD	0FFFFH
;
PTCHCD8B	EQU	$
;.'91/.9/20.[FRI]			WORD	00400H+0004CH
;.'91/.9/20.[FRI]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	00C00H+0004CH
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	00C00H+00070H
		HEX	08		; key
;.'91/.9/26.[THU]			WORD	01400H+0004CH
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	00900H+00020H
		HEX	0C		; thubo 1
;.'91/.9/26.[THU]			WORD	01700H+00020H
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	01C00H+0004CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD8C	EQU	$
		WORD	00C00H+0004CH
		HEX	88		; sw yuka
		WORD	00C00H+00070H
		HEX	0C		; thubo 1
		WORD	01400H+0004CH
		HEX	0A		; bomb
		WORD	01400H+0005CH
		HEX	0A		; bomb
		WORD	01500H+00064H
		HEX	09		; arrow
		WORD	01A00H+00068H
		HEX	0A		; bomb
		WORD	01B00H+00058H
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCD8D	EQU	$
;.'91/.9/26.[THU]			WORD	00B80H+0004CH
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	00E80H+0004CH
		HEX	0D		; thubo dai
		WORD	01700H+0001CH
		HEX	0B		; heart
		WORD	01700H+00024H
		HEX	0B		; heart
		WORD	01800H+00020H
		HEX	0D		; thubo dai
;
		WORD	0FFFFH
;
PTCHCD8E	EQU	$
		WORD	00500H+00050H
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	00B		; heart
PTCHCD8F	EQU	$
;
PTCHCD90	EQU	$
;
		WORD	0FFFFH
;
PTCHCD91	EQU	$
		WORD	00400H+00054H
		HEX	0B		; heart
		WORD	00400H+00068H
		HEX	0C		; thubo 1
;.'91/.9/29.[SUN]			HEX	0B		; heart
PTCHCD92	EQU	$
;.'91/.9/25.[WED]			WORD	00400H+00010H
;.'91/.9/25.[WED]			HEX	01		; 1 ruppy
;.'91/.9/25.[WED]			WORD	00400H+00014H
;.'91/.9/25.[WED]			HEX	01		; 1 ruppy
;.'91/.9/25.[WED]			WORD	00500H+0000EH
;.'91/.9/25.[WED]			HEX	01		; 1 ruppy
;.'91/.9/25.[WED]			WORD	00500H+00012H
;.'91/.9/25.[WED]			HEX	0D		; thubo dai
;.'91/.9/25.[WED]			WORD	00500H+00016H
;.'91/.9/25.[WED]			HEX	01		; 1 ruppy
;.'91/.9/25.[WED]			WORD	00600H+00010H
;.'91/.9/25.[WED]			HEX	01		; 1 ruppy
;.'91/.9/25.[WED]			WORD	00600H+00014H
;.'91/.9/25.[WED]			HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD93	EQU	$
		WORD	00700H+0001CH
		HEX	88		; sw yuka
		WORD	00700H+00060H
		HEX	0B		; heart
PTCHCD94	EQU	$
PTCHCD95	EQU	$
;
		WORD	0FFFFH
;
PTCHCD96	EQU	$
;.'91/.9/26.[THU]			WORD	00500H+00020H
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	01100H+00020H
		HEX	0C		; thubo 1
		WORD	01800H+00020H
		HEX	0C		; thubo 1
;.'91/.9/21.[SAT]			WORD	01400H+0000CH
;.'91/.9/21.[SAT]			HEX	0B		; heart
;.'91/.9/21.[SAT]			WORD	01400H+00030H
;.'91/.9/21.[SAT]			HEX	0B		; heart
		WORD	01500H+0004CH
		HEX	0B		; heart
;.'91/.9/26.[THU]			HEX	0C		; thubo 1
		WORD	01500H+00070H
		HEX	0D		; thubo dai
;.'91/.9/26.[THU]			WORD	01C00H+00050H
;.'91/.9/26.[THU]			HEX	0C		; thubo 1
;.'91/.9/26.[THU]			WORD	01C00H+00058H
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	01C00H+00064H
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	01C00H+0006CH
;.'91/.9/26.[THU]			HEX	0C		; thubo 1
PTCHCD97	EQU	$
PTCHCD98	EQU	$
;
		WORD	0FFFFH
;
PTCHCD99	EQU	$
		WORD	01400H+00028H
		HEX	00C		; thubo 1
		WORD	01400H+00054H
		HEX	00B		; heart
PTCHCD9A	EQU	$
;
		WORD	0FFFFH
;
PTCHCD9B	EQU	$
		WORD	00400H+00030H
		HEX	0C		; thubo 1
		WORD	00C00H+00030H
		HEX	08		; key
;.'91/10/.6.[SUN]			WORD	01800H+0001CH
;.'91/10/.6.[SUN]			HEX	0A		; bomb
;.'91/10/.6.[SUN]			WORD	01800H+00020H
;.'91/10/.6.[SUN]			HEX	0A		; bomb
;.'91/.9/26.[THU]			WORD	01B00H+00070H
;.'91/.9/26.[THU]			HEX	0B		; heart
;.'91/.9/26.[THU]			WORD	01C00H+00070H
;.'91/.9/26.[THU]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCD9C	EQU	$
		WORD	00800H+00038H
		HEX	0C		; thubo 1
;.'91/.9/26.[THU]			HEX	0B		; heart
		WORD	00900H+00038H
		HEX	09		; arrow
;
		WORD	0FFFFH
;
PTCHCD9D	EQU	$
		WORD	00400H+0004CH
		HEX	0A		; bomb
		WORD	00400H+00054H
		HEX	0C		; thubo 1
;.'91/10/.3.[THU]			WORD	00800H+00024H
;.'91/10/.6.[SUN]			WORD	00700H+00020H
;.'91/10/.6.[SUN]			HEX	0A		; bomb
;.'91/10/.7.[MON]			WORD	00C00H+0004CH
;.'91/10/.7.[MON]			HEX	0C		; thubo 1
;.'91/10/.7.[MON]			WORD	00C00H+00050H
;.'91/10/.7.[MON]			HEX	0C		; thubo 1
PTCHCD9E	EQU	$
;
		WORD	0FFFFH
;
PTCHCD9F	EQU	$
		WORD	01380H+0000AH
		HEX	0B		; heart
		WORD	01380H+00032H
		HEX	0B		; heart
;.'91/.9/29.[SUN]			WORD	01500H+00014H
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01500H+00028H
		HEX	88		; sw yuka
		WORD	01580H+0000AH
		HEX	08		; key
;.'91/.9/29.[SUN]			WORD	01580H+00032H
;.'91/.9/29.[SUN]			HEX	0B		; heart
;.'91/.9/29.[SUN]			WORD	01A80H+00032H
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01B00H+00014H
		HEX	0B		; heart
;.'91/.9/29.[SUN]			WORD	01B00H+00028H
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01B80H+0000AH
		HEX	0B		; heart
		WORD	01C80H+00032H
		HEX	0B		; heart
;
PTCHCDA0	EQU	$
;
		WORD	0FFFFH
;
PTCHCDA1	EQU	$
		WORD	00680H+00016H
		HEX	08		; key
		WORD	00B00H+00064H
		HEX	0C		; thubo 1
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00C00H+00068H
		HEX	0B		; heart
		WORD	00D00H+0006CH
		HEX	0C		; thubo 1
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00E00H+00070H
		HEX	0B		; heart
		WORD	01700H+00060H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDA2	EQU	$
		WORD	01C00H+0000CH
		HEX	0D		; thubo dai
PTCHCDA3	EQU	$
PTCHCDA4	EQU	$
PTCHCDA5	EQU	$
PTCHCDA6	EQU	$
PTCHCDA7	EQU	$
;
		WORD	0FFFFH
;
PTCHCDA8	EQU	$
		WORD	01380H+0000AH
		HEX	00B		; heart
		WORD	01800H+0001EH
		HEX	001		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCDA9	EQU	$
		WORD	00B80H+00010H+02000H
		HEX	09		; arrow
		WORD	00B80H+0006CH+02000H
		HEX	09		; arrow
		WORD	00C80H+00010H+02000H
		HEX	09		; arrow
		WORD	00C80H+0006CH+02000H
		HEX	0B		; heart
		WORD	01400H+00010H
		HEX	0B		; heart
		WORD	01400H+0006CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDAA	EQU	$
		WORD	00580H+00054H
		HEX	0B		; heart
		WORD	00800H+0005EH
		HEX	88		; sw yuka
		WORD	01700H+0006CH+02000H
		HEX	0B		; heart
		WORD	01800H+0006CH+02000H
		HEX	0B		; heart
		WORD	01900H+0006CH+02000H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDAB	EQU	$
		WORD	01800H+00014H
		HEX	08		; key
PTCHCDAC	EQU	$
PTCHCDAD	EQU	$
;
		WORD	0FFFFH
;
PTCHCDAE	EQU	$
		WORD	00C00H+0004CH
		HEX	88		; sw yuka
PTCHCDAF	EQU	$
;
		WORD	0FFFFH
;
;
PTCHCDB0	EQU	$
		WORD	01500H+00014H
		HEX	0A		; bomb
		WORD	01500H+0001CH
		HEX	01		; 1 ruppy
		WORD	01500H+00020H
		HEX	07		; 5 ruppy
		WORD	01500H+00028H
		HEX	09		; arrow
		WORD	01700H+00010H
		HEX	07		; 5 ruppy
		WORD	01700H+0002CH
		HEX	01		; 1 ruppy
		WORD	01800H+00024H
		HEX	0B		; heart
		WORD	01900H+00010H
		HEX	0B		; heart
		WORD	01B00H+0001CH
		HEX	09		; arrow
		WORD	01B00H+00028H
		HEX	0A		; bomb
;
		WORD	0FFFFH
;
PTCHCDB1	EQU	$
		WORD	00400H+0004CH
		HEX	0B		; heart
		WORD	00400H+00070H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCDB2	EQU	$
		WORD	00800H+00030H+02000H
		HEX	01		; 1 ruppy
		WORD	00800H+0004CH+02000H
		HEX	01		; 1 ruppy
		WORD	00900H+0004CH+02000H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDB3	EQU	$
		WORD	01400H+0000CH
		HEX	08		; key
		WORD	01400H+00030H
		HEX	0C		; thubo 1
		WORD	01C00H+00030H
		HEX	88		; sw yuka
;
		WORD	0FFFFH
;
PTCHCDB4	EQU	$
;.'91/.9/29.[SUN]			WORD	01C00H+00028H
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01C00H+0002CH
		HEX	0D		; thubo dai
		WORD	01C00H+00030H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDB5	EQU	$
;.'91/.9/29.[SUN]			WORD	00400H+0006CH
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00400H+00070H
		HEX	07		; 5 ruppy
		WORD	00F00H+00070H
		HEX	0B		; heart
		WORD	01000H+0004CH
		HEX	88		; sw yuka
		WORD	01000H+00070H
		HEX	0D		; thubo dai
		WORD	01100H+00070H
		HEX	0B		; heart
;.'91/.9/29.[SUN]			WORD	01C00H+0006CH
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01C00H+00070H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDB6	EQU	$
		WORD	00900H+0005EH
		HEX	0D		; thubo dai
;.'91/.9/29.[SUN]			WORD	01800H+00018H
;.'91/.9/29.[SUN]			HEX	0B		; heart
;.'91/.9/29.[SUN]			WORD	01800H+00024H
;.'91/.9/29.[SUN]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDB7	EQU	$
		WORD	00500H+0001EH
		HEX	0C		; thubo 1
;
		WORD	0FFFFH
;
PTCHCDB8	EQU	$
		WORD	00D00H+00060H
		HEX	88		; sw yuka
		WORD	01000H+00058H
		HEX	0B		; heart
		WORD	01000H+00068H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDB9	EQU	$
		WORD	01200H+0005CH
		HEX	001		; 1 ruppy
		WORD	01200H+00060H
		HEX	007		; 5 ruppy
		WORD	01200H+00068H
		HEX	007		; 5 ruppy
		WORD	01200H+0006CH
		HEX	001		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCDBA	EQU	$
		WORD	00400H+0005EH
		HEX	001		; 1 ruppy
		WORD	00600H+0004CH
		HEX	00B		; heart
		WORD	00600H+00070H
		HEX	008		; key
		WORD	00A00H+0004CH
		HEX	00B		; heart
		WORD	00A00H+00070H
		HEX	0C		; thubo 1
		WORD	00C00H+0005EH
		HEX	001		; 1 ruppy
PTCHCDBB	EQU	$
;
		WORD	0FFFFH
;
PTCHCDBC	EQU	$
		WORD	00380H+0000AH
		HEX	0A		; bomb
		WORD	00380H+00032H
		HEX	88		; sw yuka
		WORD	00400H+00056H
		HEX	0B		; heart
		WORD	00400H+00066H
		HEX	08		; key
		WORD	00C80H+0000AH
		HEX	0B		; heart
		WORD	00C80H+00032H
		HEX	0A		; bomb
;.'91/10/.4.[FRI]			WORD	01400H+0000CH
;.'91/10/.4.[FRI]			HEX	0A		; bomb
		WORD	01400H+00030H
		HEX	0A		; bomb
		WORD	01500H+0001CH
		HEX	07		; 5 ruppy
		WORD	01500H+00020H
		HEX	07		; 5 ruppy
		WORD	01B00H+0001CH
		HEX	07		; 5 ruppy
		WORD	01B00H+00020H
		HEX	07		; 5 ruppy
		WORD	01C00H+0000CH
		HEX	0A		; bomb
		WORD	01C00H+00030H
		HEX	0A		; bomb
PTCHCDBD	EQU	$
;
		WORD	0FFFFH
;
PTCHCDBE	EQU	$
		WORD	01900H+0005CH
		HEX	88		; sw yuka
;
		WORD	0FFFFH
;
PTCHCDBF	EQU	$
		WORD	01400H+00028H
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	00B		; heart
		WORD	01400H+0002CH
		HEX	00B		; heart
		WORD	01400H+00030H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	00B		; heart
		WORD	01C00H+00028H
		HEX	00C		; thubo 1
		WORD	01C00H+0002CH
		HEX	00C		; thubo 1
		WORD	01C00H+00030H
		HEX	00C		; thubo 1
;
		WORD	0FFFFH
;
;
PTCHCDC0	EQU	$
		WORD	00A00H+00030H
		HEX	0A		; bomb
;.'91/.9/30.[MON]			HEX	0B		; heart
		WORD	00E00H+0000CH
		HEX	07		; 5 ruppy
		WORD	01A00H+0000CH
;.'91/10/.1.[TUE]			HEX	0C		; thubo 1
		HEX	0B		; heart
		WORD	01B00H+0001CH
		HEX	01		; 1 ruppy
PTCHCDC1	EQU	$
;
		WORD	0FFFFH
;
PTCHCDC2	EQU	$
		WORD	00780H+00034H
		HEX	88		; sw yuka
		WORD	00E00H+00064H+02000H
		HEX	0C		; thubo 1
		WORD	01000H+00044H+02000H
		HEX	01		; 1 ruppy
		WORD	01400H+00040H+02000H
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	0B		; heart
PTCHCDC3	EQU	$
;
		WORD	0FFFFH
;
PTCHCDC4	EQU	$
		WORD	00900H+00054H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00E00H+00018H
		HEX	0B		; heart
		WORD	01100H+00038H
		HEX	07		; 5 ruppy
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01100H+00054H
		HEX	0A		; bomb
		WORD	01500H+0000CH
		HEX	09		; arrow
		WORD	01700H+0004CH
		HEX	01		; 1 ruppy
		WORD	01900H+00030H
		HEX	0C		; thubo 1
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01A00H+0000CH
		HEX	0B		; heart
PTCHCDC5	EQU	$
;
		WORD	0FFFFH
;
PTCHCDC6	EQU	$
		WORD	00700H+0000CH
		HEX	0D		; thubo dai
		WORD	01900H+0000CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDC7	EQU	$
		WORD	00A00H+0000CH
		HEX	0B		; heart
		WORD	00B00H+0000CH
		HEX	0D		; thubo dai
		WORD	01600H+0000CH
		HEX	0C		; thubo 1
		WORD	01C00H+0000CH
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	0B		; heart
PTCHCDC8	EQU	$
;
		WORD	0FFFFH
;
PTCHCDC9	EQU	$
		WORD	01600H+0001EH
		HEX	001		; 1 ruppy
		WORD	01600H+0005EH
		HEX	001		; 1 ruppy
		WORD	01600H+0003CH
		HEX	88		; sw yuka
;.'91/.9/19.[THU]			HEX	00B		; heart
PTCHCDCA	EQU	$
;
		WORD	0FFFFH
;
PTCHCDCB	EQU	$
		WORD	01000H+00058H
		HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	01C00H+0000CH
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01C00H+00058H
		HEX	07		; 5 ruppy
;
		WORD	0FFFFH
;
PTCHCDCC	EQU	$
		WORD	00400H+00024H
		HEX	07		; 5 ruppy
		WORD	00400H+00070H
		HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	01000H+00026H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01C00H+00024H
		HEX	07		; 5 ruppy
		WORD	01C00H+00070H
		HEX	0A		; bomb
PTCHCDCD	EQU	$
;
		WORD	0FFFFH
;
PTCHCDCE	EQU	$
		WORD	00800H+0004CH
		HEX	0C		; thubo 1
		WORD	00800H+00050H
		HEX	0C		; thubo 1
		WORD	00C00H+0006CH
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00C00H+00070H
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00B80H+0004CH
		HEX	80		; hole
;
;.'91/.9/27.[FRI]			WORD	00900H+0005CH
;.'91/.9/27.[FRI]			HEX	80		; hole
;.'91/.9/27.[FRI]			WORD	00C80H+0004AH
;.'91/.9/27.[FRI]			HEX	0C		; thubo 1
;.'91/.9/27.[FRI]			WORD	00C80H+0004EH
;.'91/.9/27.[FRI]			HEX	0C		; thubo 1
;.'91/.9/27.[FRI]			WORD	00C80H+0006EH
;.'91/.9/27.[FRI]			HEX	0B		; heart
;.'91/.9/27.[FRI]			WORD	00C80H+00072H
;.'91/.9/27.[FRI]			HEX	0B		; heart
PTCHCDCF	EQU	$
;
		WORD	0FFFFH
;
;
PTCHCDD0	EQU	$
		WORD	00580H+0001EH
		HEX	0C		; thubo 1
		WORD	00B80H+0000CH
		HEX	01		; 1 ruppy
		WORD	00D00H+0002AH
		HEX	0C		; thubo 1
		WORD	01000H+00030H
;.'91/10/.1.[TUE]			HEX	09		; arrow
		HEX	0B		; heart
		WORD	01480H+00030H
		HEX	01		; 1 ruppy
		WORD	01780H+00012H
		HEX	07		; 5 ruppy
		WORD	01C00H+0000CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDD1	EQU	$
		WORD	00400H+00030H
		HEX	0D		; thubo dai
		WORD	00400H+0004CH
		HEX	01		; 1 ruppy
		WORD	00400H+00070H
		HEX	09		; arrow
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	00780H+00028H
		HEX	01		; 1 ruppy
		WORD	00C00H+00070H
		HEX	01		; 1 ruppy
PTCHCDD2	EQU	$
PTCHCDD3	EQU	$
PTCHCDD4	EQU	$
PTCHCDD5	EQU	$
;
		WORD	0FFFFH
;
PTCHCDD6	EQU	$
;.'91/.9/29.[SUN]			WORD	01200H+0001AH
;.'91/.9/29.[SUN]			HEX	0B		; heart
;.'91/.9/29.[SUN]			WORD	01200H+00022H
;.'91/.9/29.[SUN]			HEX	0B		; heart
		WORD	01600H+0005CH
		HEX	0D		; thubo dai
		WORD	01600H+00060H
		HEX	0A		; bomb
;.'91/.9/29.[SUN]			HEX	0B		; heart
PTCHCDD7	EQU	$
;
		WORD	0FFFFH
;
PTCHCDD8	EQU	$
		WORD	00880H+0004AH
		HEX	00B		; heart
		WORD	00880H+00072H
		HEX	009		; arrow
		WORD	00A80H+0004AH
		HEX	09		; arrow
		WORD	00A80H+00072H
		HEX	09		; arrow
		WORD	00C80H+0004AH
		HEX	09		; arrow
		WORD	00C80H+00072H
		HEX	0B		; heart
		WORD	01800H+0005CH
		HEX	00B		; heart
		WORD	01800H+00060H
		HEX	009		; arrow
;
		WORD	0FFFFH
;
PTCHCDD9	EQU	$
		WORD	01400H+0005CH
		HEX	09		; arrow
		WORD	01C00H+0005CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDDA	EQU	$
		WORD	01700H+00018H
		HEX	09		; arrow
		WORD	01700H+00024H
		HEX	09		; arrow
		WORD	01900H+00018H
		HEX	088		; sw yuka
		WORD	01900H+00024H
		HEX	00B		; heart
;
		WORD	0FFFFH
;
PTCHCDDB	EQU	$
;.'91/10/.4.[FRI]			WORD	00400H+0000CH
;.'91/10/.4.[FRI]			HEX	07		; 5 ruppy
		WORD	00400H+00070H
		HEX	07		; 5 ruppy
		WORD	01000H+00058H
		HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	01C00H+00058H
;.'91/.9/28.[SAT]			HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHCDDC	EQU	$
		WORD	00400H+00038H
		HEX	07		; 5 ruppy
		WORD	00400H+00070H
		HEX	0A		; bomb
		WORD	01000H+00044H
		HEX	0B		; heart
;.'91/.9/28.[SAT]			WORD	01000H+00070H
;.'91/.9/28.[SAT]			HEX	0B		; heart
		WORD	01C00H+0000CH
		HEX	09		; arrow
PTCHCDDD	EQU	$
PTCHCDDE	EQU	$
PTCHCDDF	EQU	$
;
		WORD	0FFFFH
;
;
PTCHCDE0	EQU	$
		WORD	00800H+00018H
		HEX	0B		; heart
PTCHCDE1	EQU	$
PTCHCDE2	EQU	$
;
		WORD	0FFFFH
;
PTCHCDE3	EQU	$
		WORD	01900H+00064H+02000H
		HEX	001		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCDE4	EQU	$
		WORD	00900H+00020H
		HEX	007
		WORD	00A00H+00070H
		HEX	001
;
		WORD	0FFFFH
;
PTCHCDE5	EQU	$
		WORD	00400H+00030H
		HEX	001
		WORD	00400H+0004CH
		HEX	001
		WORD	01000H+00070H
		HEX	001
		WORD	01200H+00040H
		HEX	007
;
		WORD	0FFFFH
;
PTCHCDE6	EQU	$
		WORD	00C00H+0006CH
		HEX	009
		WORD	01000H+00058H
		HEX	00B
		WORD	01800H+00038H
		HEX	001
;
		WORD	0FFFFH
;
PTCHCDE7	EQU	$
		WORD	00500H+00044H
		HEX	001
		WORD	00500H+00048H
		HEX	001
;
		WORD	0FFFFH
;
PTCHCDE8	EQU	$
		WORD	00400H+00060H
		HEX	0B		; heart
PTCHCDE9	EQU	$
PTCHCDEA	EQU	$
;
		WORD	0FFFFH
;
PTCHCDEB	EQU	$
		WORD	00880H+0004EH
		HEX	07		; 5 ruppy
		WORD	00880H+00052H
		HEX	07		; 5 ruppy
		WORD	00E00H+00058H
		HEX	0C		; thubo 1
		WORD	00E00H+0005CH
		HEX	0B		; heart
		WORD	00E00H+00060H
		HEX	0C		; thubo 1
PTCHCDEC	EQU	$
PTCHCDED	EQU	$
PTCHCDEE	EQU	$
PTCHCDEF	EQU	$
;
PTCHCDF0	EQU	$
		WORD	0FFFFH
;
PTCHCDF1	EQU	$
		WORD	00500H+00040H
		HEX	00B
PTCHCDF2	EQU	$
PTCHCDF3	EQU	$
PTCHCDF4	EQU	$
PTCHCDF5	EQU	$
PTCHCDF6	EQU	$
PTCHCDF7	EQU	$
;
		WORD	0FFFFH
;
PTCHCDF8	EQU	$
		WORD	00D80H+00072H
		HEX	0D		; thubo dai
PTCHCDF9	EQU	$
PTCHCDFA	EQU	$
PTCHCDFB	EQU	$
PTCHCDFC	EQU	$
;
		WORD	0FFFFH
;
PTCHCDFD	EQU	$
		WORD	00600H+00058H
		HEX	007		; 5 ruppy
		WORD	00600H+00064H
		HEX	007		; 5 ruppy
		WORD	01700H+00054H
		HEX	007		; 5 ruppy
		WORD	01800H+00054H
		HEX	007		; 5 ruppy
PTCHCDFE	EQU	$
;
		WORD	0FFFFH
;
PTCHCDFF	EQU	$
		WORD	00800H+0005CH
		HEX	0B		; heart
		WORD	00800H+00060H
		HEX	0B		; heart
		WORD	01C00H+00070H
		HEX	01		; 1 ruppy
PTCHC100	EQU	$
;
		WORD	0FFFFH
;
PTCHC101	EQU	$
;---- midori no fuku
		WORD	01400H+0000CH
		HEX	0B		; heart
;---- shiroi fuku
		WORD	01380H+00060H
		HEX	0E		; niwatori
;.'91/10/.2.[WED]			HEX	0B		; heart
		WORD	01380H+00064H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHC102	EQU	$
;---- mushi tori boy's house
		WORD	01380H+00012H
		HEX	0B		; heart
		WORD	01380H+00016H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHC103	EQU	$
;---- tatenaga hause
		WORD	00780H+0000CH
		HEX	0E		; niwatori
		WORD	00C00H+0000CH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHC104	EQU	$
;----- link's house
		WORD	01580H+0004AH
		HEX	0B		; heart
		WORD	01680H+0004AH
		HEX	0B		; heart
		WORD	01780H+0004AH
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHC105	EQU	$
;----- shinden ojiji's house
		WORD	01400H+0001EH
		HEX	00B		; heart
		WORD	01500H+0001CH
		HEX	0B		; heart
;.'91/.9/28.[SAT]			HEX	009		; arrow
		WORD	01500H+00020H
		HEX	0B		; heart
;.'91/.9/28.[SAT]			HEX	009		; arrow
PTCHC106	EQU	$
;
		WORD	0FFFFH
;
PTCHC107	EQU	$
;---- honya
;.'91/.9/.9.[MON]			WORD	01400H+00016H
;.'91/.9/.9.[MON]			HEX	007		; 5 ruppy
;.'91/.9/.9.[MON]			WORD	01500H+00030H
;.'91/.9/.9.[MON]			HEX	00B
;---- bomb de hairu koya
		WORD	01780H+00056H
		HEX	00A		; bomb
		WORD	01780H+0005EH
		HEX	009		; arrow
		WORD	01780H+00066H
		HEX	00A		; bomb
		WORD	01980H+00056H
		HEX	001		; 1 ruppy
		WORD	01980H+00066H
		HEX	001		; 1 ruppy
		WORD	01B80H+00056H
		HEX	00A		; bomb
		WORD	01B80H+00066H
		HEX	00A		; bomb
;
		WORD	0FFFFH
;
PTCHC108	EQU	$
;---- hatake kun
		WORD	01380H+00026H
		HEX	0E		; niwatori
;.'91/.9/28.[SAT]			WORD	01380H+00032H
;.'91/.9/28.[SAT]			HEX	00A		; bomb
PTCHC109	EQU	$
PTCHC10A	EQU	$
PTCHC10B	EQU	$
;
		WORD	0FFFFH
;
PTCHC10C	EQU	$
		WORD	00E00H+00058H
		HEX	0B		; heart
PTCHC10D	EQU	$
PTCHC10E	EQU	$
PTCHC10F	EQU	$
;
PTCHC110	EQU	$
PTCHC111	EQU	$
PTCHC112	EQU	$
PTCHC113	EQU	$
;
		WORD	0FFFFH
;
PTCHC114	EQU	$
;-------- jyouhouya D
		WORD	00400H+0005CH
		HEX	0B		; heart
		WORD	00400H+00060H
		HEX	0B		; heart
		WORD	00500H+0005CH
		HEX	0A		; bomb
		WORD	00500H+00060H
		HEX	0A		; bomb
		WORD	00A00H+0005CH
		HEX	09		; arrow
		WORD	00A00H+00060H
		HEX	0B		; heart
PTCHC115	EQU	$
PTCHC116	EQU	$
;
		WORD	0FFFFH
;
PTCHC117	EQU	$
		WORD	00380H+0000AH
		HEX	0B		; heart
		WORD	00380H+0000EH
		HEX	0B		; heart
		WORD	00380H+00026H
		HEX	0B		; heart
		WORD	00380H+0002AH
		HEX	0B		; heart
		WORD	00480H+0000AH
		HEX	0B		; heart
		WORD	00480H+0000EH
		HEX	0B		; heart
		WORD	00480H+00026H
		HEX	0B		; heart
		WORD	00480H+0002AH
		HEX	0B		; heart
;.'91/.9/.7.[SAT]			WORD	00580H+0000AH
;.'91/.9/.7.[SAT]			HEX	0B		; heart
;.'91/.9/.7.[SAT]			WORD	00580H+0000EH
;.'91/.9/.7.[SAT]			HEX	0B		; heart
;.'91/.9/.7.[SAT]			WORD	00580H+00026H
;.'91/.9/.7.[SAT]			HEX	0B		; heart
;.'91/.9/.7.[SAT]			WORD	00580H+0002AH
;.'91/.9/.7.[SAT]			HEX	0B		; heart
PTCHC118	EQU	$
;
		WORD	0FFFFH
;
PTCHC119	EQU	$
;-------- touzoku no ie
		WORD	01C00H+0002CH
		HEX	0B		; heart
;.'91/.9/28.[SAT]			HEX	0A		; bomb
		WORD	01C00H+00030H
		HEX	01		; 1 ruppy
		WORD	01C00H+0004CH
		HEX	0B		; heart
		WORD	01C00H+00050H
		HEX	0B		; heart
;
		WORD	0FFFFH
;
PTCHC11A	EQU	$
;-------- ura shinden jyouhouya
		WORD	00A80H+00056H
		HEX	00B		; heart
		WORD	00A80H+0005AH
		HEX	00B		; heart
		WORD	00A80H+00062H
		HEX	00B		; heart
		WORD	00A80H+00066H
		HEX	00B		; heart
;
		WORD	0FFFFH
;
PTCHC11B	EQU	$
		WORD	01600H+00018H+02000H
		HEX	00B		; heart
		WORD	01600H+00020H+02000H
		HEX	00B		; heart
		WORD	01600H+00028H+02000H
		HEX	00B		; heart
		WORD	01600H+0005CH
		HEX	00A		; bomb
		WORD	01600H+00060H
		HEX	00B		; heart
		WORD	01700H+00018H+02000H
		HEX	00B		; heart
		WORD	01700H+0005CH
		HEX	00A		; bomb
		WORD	01700H+00060H
		HEX	00B		; heart
		WORD	01800H+0001CH+02000H
		HEX	00B		; heart
		WORD	01800H+0005CH
		HEX	00A		; bomb
		WORD	01800H+00060H
		HEX	00B		; heart
		WORD	01900H+0005CH
		HEX	00A		; bomb
		WORD	01900H+00060H
		HEX	00B		; heart
PTCHC11C	EQU	$
;
		WORD	0FFFFH
;
PTCHC11D	EQU	$
;-------- touzoku no ie
		WORD	00600H+0003CH
		HEX	07		; 5 ruppy
		WORD	00600H+00040H
		HEX	07		; 5 ruppy
		WORD	00700H+0003CH
		HEX	07		; 5 ruppy
		WORD	00700H+00040H
		HEX	07		; 5 ruppy
		WORD	00800H+0003CH
		HEX	07		; 5 ruppy
		WORD	00800H+00040H
		HEX	07		; 5 ruppy
PTCHC11E	EQU	$
;
		WORD	0FFFFH
;
PTCHC11F	EQU	$
		WORD	01C80H+0002EH
		HEX	0B		; heart
		WORD	01C80H+00032H
		HEX	0B		; heart
;
;.'91/10/.4.[FRI]			WORD	0FFFFH
;.'91/10/.4.[FRI]	;
;
PTCHC120	EQU	$
;.'91/10/.4.[FRI]			WORD	01400H+00030H
;.'91/10/.4.[FRI]			HEX	09		; arrow
;.'91/10/.4.[FRI]			WORD	01C00H+00030H
;.'91/10/.4.[FRI]			HEX	09		; arrow
PTCHC121	EQU	$
PTCHC122	EQU	$
PTCHC123	EQU	$
;
		WORD	0FFFFH
;
PTCHC124	EQU	$
;------ minna niwa naisyo dayo message 1
		WORD	01400H+00014H
		HEX	07		; 5 ruppy
		WORD	01400H+00028H
		HEX	07		; 5 ruppy
		WORD	01500H+00014H
		HEX	07		; 5 ruppy
		WORD	01500H+00028H
		HEX	07		; 5 ruppy
		WORD	01600H+00014H
		HEX	07		; 5 ruppy
		WORD	01600H+00028H
		HEX	07		; 5 ruppy
		WORD	01800H+00018H
		HEX	07		; 5 ruppy
		WORD	01800H+0001CH
		HEX	07		; 5 ruppy
		WORD	01800H+00020H
		HEX	07		; 5 ruppy
		WORD	01800H+00024H
		HEX	07		; 5 ruppy
;
		WORD	0FFFFH
;
PTCHC125	EQU	$
;------ minna niwa naisyo dayo message 2
		WORD	01900H+00018H
		HEX	07		; 5 ruppy
		WORD	01900H+0001CH
		HEX	07		; 5 ruppy
		WORD	01900H+00020H
		HEX	07		; 5 ruppy
		WORD	01900H+00024H
		HEX	07		; 5 ruppy
;
;------ minna niwa naisyo dayo message 3
		WORD	01600H+00058H
		HEX	0B		; heart
		WORD	01600H+00064H
		HEX	0B		; heart
		WORD	01C00H+00058H
		HEX	0B		; heart
		WORD	01C00H+00064H
		HEX	0B		; heart
PTCHC126	EQU	$
PTCHC127	EQU	$
PTCHC128	EQU	$
PTCHC129	EQU	$
PTCHC12A	EQU	$
PTCHC12B	EQU	$
PTCHC12C	EQU	$
PTCHC12D	EQU	$
PTCHC12E	EQU	$
PTCHC12F	EQU	$
;
PTCHC130	EQU	$
PTCHC131	EQU	$
PTCHC132	EQU	$
PTCHC133	EQU	$
PTCHC134	EQU	$
PTCHC135	EQU	$
PTCHC136	EQU	$
PTCHC137	EQU	$
PTCHC138	EQU	$
PTCHC139	EQU	$
PTCHC13A	EQU	$
PTCHC13B	EQU	$
PTCHC13C	EQU	$
PTCHC13D	EQU	$
PTCHC13E	EQU	$
PTCHC13F	EQU	$
;
		WORD	0FFFFH
;
;
;
PONTCHK		EQU	$
		STA	<WORK4
		LDA	!OSETFG		; obj flag clear
		AND	#0FF00H
		STA	!OSETFG
;
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>CKDTBL,X
		STA	<WORK0
		LDA	#BANK CKDTBL
		STA	<WORK2
		LDY	#0FFFDH
		LDX	#0FFFFH
POCK20		EQU	$
		INY
		INY
		INY
		LDA	[<WORK0],Y
		CMP	#0FFFFH
		BEQ	POCK90		; data end ?
;					; no
		INX
;
		AND	#07FFFH
		CMP	<WORK4
		BNE	POCK20		; position ok ?
;					; yes
		INY
		INY
;
		LDA	[<WORK0],Y
		AND	#000FFH
		BEQ	POCK90
;
		CMP	#00080H
		BCS	POCK100		;
;					;
;-------------- item bit cheak
		STA	<WORKE
		CMP	#008H
		BEQ	POCK80		; key ?
;					; no
		TXY
		LDA	<RMXYCT
		ASL	A
		TAX
		STZ	<WORK0
		SEC
ITEM010		EQU	$
		ROL	<WORK0
		DEY
		BPL	ITEM010
;
		LDA	>DJBITRM,X
		AND	<WORK0
		BNE	POCK90		; item totta ?
;					; no !!
		LDA	>DJBITRM,X
		ORA	<WORK0
		STA	>DJBITRM,X	; bit on !!
;
		LDA	<WORKE
POCK80		EQU	$
		TSB	!OSETFG
POCK90		EQU	$
		RTS
;
;
POCK100		EQU	$
		CMP	#00088H
		BEQ	POCK200		; mochiage-block(BIG) ?
;					; yes
		LDX	<WORK6
		LDA	>READBF,X
		AND	#0000FH
		ASL	A
		TAY
		LDA	!BLKSTT,Y
		AND	#0000FH
		ASL	A
		STA	<WORK0
		TYA
		SEC
		SBC	<WORK0
		STA	!BLKPNT
		TAY
		LDA	#00004H
		STA	<WORK0
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#holed9
POCK120		EQU	$
		LDA	>UNITDT+000H,X
		STA	!BLKDT0,Y
		LDA	>UNITDT+002H,X
		STA	!BLKDT1,Y
		LDA	>UNITDT+004H,X
		STA	!BLKDT2,Y
		LDA	>UNITDT+006H,X
		STA	!BLKDT3,Y
		TXA
		CLC
		ADC	#00008H
		TAX
		INY
		INY
		DEC	<WORK0
		BNE	POCK120		;
;					;
		RTS
;
;
POCK200		EQU	$
		LDY	!BLKPNT
		LDA	#00D0BH
		STA	!BLKDT0,Y
		LDA	#00D1BH
		STA	!BLKDT1,Y
		LDA	#04D0BH
		STA	!BLKDT2,Y
		LDA	#04D1BH
		STA	!BLKDT3,Y
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Toge-block rewrite			(TGBLKWT)	*
;*		[in]	(Y) <--  0 : nuki				*
;*				 2 : toge-block				*
;*				 4 : ana				*
;*				 6 : fly-yuka				*
;*				 8 : ice-man enter (left)		*
;*				 A : ice-man enter (right)		*
;*				 C : warp-yuka				*
;*				 E : Off-swich-yuka			*
;*				10 : On-swich-yuka			*
;*				12 : Ice-yuka				*
;************************************************************************
TGBLKDT		EQU	$
		WORD	nukidt,tgblkd,holedt,flyykd,iceat0,iceat1,djwpyk,ofswh1
		WORD	onswh1,cngice
;
;
TGBLKWT		EQU	$
		PHX			; (X) push
;
		STY	<WORKE
		STZ	<WORKF
;
		PHB
		LDA	#BANK UNITDT
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<WORKE
		CMP	#00008H
		BNE	TGBLW100	; ice-man enter ?
;					; yes
		PHA			; (A) push
		INC	A
		INC	A
		STA	<WORKE
		LDA	<WORK0
		PHA			; (A) push
		CLC
		ADC	#00010H
		STA	<WORK0
;
		JSR	TGBLW400	; write
;
		PLA			; (A) pull
		STA	<WORK0
		PLA			; (A) pull
		STA	<WORKE
TGBLW100	EQU	$
		JSR	TGBLW400	; write
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#001H
		STA	<VRFLG
;
		PLB			; (DBR) pull
		PLX			; (X) pull
		RTL
;
;
		MEM16
		IDX16
TGBLW400	EQU	$
		LDA	<WORK2
		INC	A
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
		LDA	<WORK0
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK6
		ASL	A
		STA	<WORK6
;
		LDX	<WORKE
		LDA	>TGBLKDT,X
		TAY
		LDX	!VRAMD
		LDA	UNITDT+0,Y
		STA	!VRAMD+6,X
		LDA	UNITDT+2,Y
		STA	!VRAMD+12,X
		LDA	UNITDT+4,Y
		STA	!VRAMD+18,X
		LDA	UNITDT+6,Y
		STA	!VRAMD+24,X	; write data set
;
		LDX	<WORK6
		LDA	UNITDT+0,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+2,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+4,Y
		STA	>ROOMBF+002H,X
		LDA	UNITDT+6,Y
		STA	>ROOMBF+082H,X
		AND	#003FFH
		TAX
		LDA	>RDCODE0,X	; (A) <-- read code
		AND	#000FFH
		STA	<WORK8
		STA	<WORK9
;
		LDA	<WORK6
		LSR	A
		TAX
		LDA	<WORK8
		STA	>READBF+000H,X
		STA	>READBF+040H,X
;
		LDX	!VRAMD
		LDA	#00000H
		JSR	TBADRGT		; Vram address get
		STA	!VRAMD+2,X
		LDA	#00080H
		JSR	TBADRGT		; Vram address get
		STA	!VRAMD+8,X
		LDA	#00002H
		JSR	TBADRGT		; Vram address get
		STA	!VRAMD+14,X
		LDA	#00082H
		JSR	TBADRGT		; Vram address get
		STA	!VRAMD+20,X	; write address set
;
		LDA	#00100H
		STA	!VRAMD+4,X
		STA	!VRAMD+10,X
		STA	!VRAMD+16,X
		STA	!VRAMD+22,X
		LDA	#0FFFFH
		STA	!VRAMD+26,X
		TXA
		CLC
		ADC	#00024
		STA	!VRAMD
		RTS
;
;
TBADRGT		EQU	$
		CLC
		ADC	<WORK6
		STA	<WORKE
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK8
		LDA	<WORKE
		AND	#0303FH
		LSR	A
		ORA	<WORK8
		STA	<WORK8
		LDA	<WORKE
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK8
		XBA
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Coin check rewrite			(COINCK)	*
;************************************************************************
COINCK		EQU	$
		PHB
		LDA	#BANK UNITDT
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<WORK0
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
		LDA	<WORK2
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK6
		ASL	A
		STA	<WORK6
;
		LDX	!VRAMD
		LDA	#0190FH
		STA	!VRAMD+6,X
		STA	!VRAMD+12,X	; write data set
;
		LDX	<WORK6
;// 03.07.04 //		LDA	UNITDT+0,Y
		STA	>ROOMBF+000H,X
;// 03.07.04 //		LDA	UNITDT+2,Y
		STA	>ROOMBF+080H,X
		AND	#003FFH
		TAX
		LDA	>RDCODE0,X	; (A) <-- read code
		AND	#000FFH
		STA	<WORK8
		STA	<WORK9
;
		LDA	<WORK6
		LSR	A
		TAX
		LDA	<WORK8
		STA	>READBF+000H,X
		STA	>READBF+040H,X
;
		LDX	!VRAMD
		LDA	#00000H
		JSR	CNADRGT		; Vram address get
		STA	!VRAMD+2,X
		LDA	#00080H
		JSR	CNADRGT		; Vram address get
		STA	!VRAMD+8,X
;
		LDA	#00100H
		STA	!VRAMD+4,X
		STA	!VRAMD+10,X
		LDA	#0FFFFH
		STA	!VRAMD+14,X
		TXA
		CLC
		ADC	#00024
		STA	!VRAMD
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	!EMYSTT+1
		ORA	#00010000B
		STA	!EMYSTT+1	;
;
		LDA	#001H
		STA	<VRFLG
;
		PLB			; (DBR) pull
		RTL
;
;
;
		MEM16
CNADRGT		EQU	$
		CLC
		ADC	<WORK6
		STA	<WORKC
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK8
		LDA	<WORKC
		AND	#0303FH
		LSR	A
		ORA	<WORK8
		STA	<WORK8
		LDA	<WORKC
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK8
		XBA
		RTS
;
;
;
;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Open yuka main				(OPYKPL)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //OYOJDT		EQU	$		; open yuka obj data
;// 03.06.11 //		WORD	00108H,00116H,00116H,00106H
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //OPYKPL		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	<FCNT
;// 03.06.11 //		LSR	A
;// 03.06.11 //		BCC	OPYK03		; move ok ?
;// 03.06.11 //;					; no
;// 03.06.11 //		JMP	OPYK220
;// 03.06.11 //;
;// 03.06.11 //OPYK03		EQU	$
;// 03.06.11 //		LDA	!OYKMOD
;// 03.06.11 //		BNE	OPYK20		; open ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDA	!OYKXPS
;// 03.06.11 //		AND	#00007H
;// 03.06.11 //		BEQ	OPYK10		; bg. off ?
;// 03.06.11 //;					; no
;// 03.06.11 //OPYK05		EQU	$
;// 03.06.11 //		JMP	OPYK200
;// 03.06.11 //;
;// 03.06.11 //OPYK10		EQU	$
;// 03.06.11 //		DEC	!OYKCFG
;// 03.06.11 //		LDA	!OYKXPS
;// 03.06.11 //		CMP	#0FFF8H
;// 03.06.11 //		BNE	OPYK100		; end ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		INC	!OYKXPS
;// 03.06.11 //		BRA	OPYK40
;// 03.06.11 //;
;// 03.06.11 //OPYK20		EQU	$
;// 03.06.11 //		LDA	!OYKXPS
;// 03.06.11 //		AND	#00007H
;// 03.06.11 //		BNE	OPYK05		; bg. off ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		INC	!OYKCFG
;// 03.06.11 //		LDA	!OYKXPS
;// 03.06.11 //		CMP	#00018H
;// 03.06.11 //		BNE	OPYK100		; end ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		DEC	!OYKXPS
;// 03.06.11 //		JSL	>OPYK100
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //		REP	#00110000B	; memory,index 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		INC	!OYKXPS
;// 03.06.11 //		INC	!OYKCFG
;// 03.06.11 //OPYK40		EQU	$
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		STZ	<GAMEMD
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //OPYKINT		EQU	$
;// 03.06.11 //		LDY	#00001H
;// 03.06.11 //		LDA	!OYKADR
;// 03.06.11 //		LSR	A
;// 03.06.11 //		TAX
;// 03.06.11 //OPYK60		EQU	$
;// 03.06.11 //		LDA	!OYKMOD
;// 03.06.11 //		BNE	OPYK70		; open ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDA	>READBF1+000H,X
;// 03.06.11 //		STA	>READBF+000H,X
;// 03.06.11 //		LDA	>READBF1+040H,X
;// 03.06.11 //		STA	>READBF+040H,X
;// 03.06.11 //		LDA	>READBF1+080H,X
;// 03.06.11 //		STA	>READBF+080H,X
;// 03.06.11 //		LDA	>READBF1+0C0H,X
;// 03.06.11 //		BRA	OPYK80
;// 03.06.11 //;
;// 03.06.11 //OPYK70		EQU	$
;// 03.06.11 //		LDA	#00000H
;// 03.06.11 //		STA	>READBF+000H,X
;// 03.06.11 //		STA	>READBF+040H,X
;// 03.06.11 //		STA	>READBF+080H,X
;// 03.06.11 //OPYK80		EQU	$
;// 03.06.11 //		STA	>READBF+0C0H,X
;// 03.06.11 //		INX
;// 03.06.11 //		INX
;// 03.06.11 //		DEY
;// 03.06.11 //		BPL	OPYK60		; end ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	!OYKMOD
;// 03.06.11 //		EOR	#00000001B
;// 03.06.11 //		STA	!OYKMOD
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //		IDX16
;// 03.06.11 //OPYK100		EQU	$
;// 03.06.11 //		LDY	#00000H
;// 03.06.11 //;
;// 03.06.11 //		LDA	!OYKMOD
;// 03.06.11 //		BEQ	OPYK110		; write ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!OYKCFG
;// 03.06.11 //OPYK110		EQU	$
;// 03.06.11 //		ASL	A
;// 03.06.11 //		ASL	A
;// 03.06.11 //		ASL	A
;// 03.06.11 //		TAX			; (X) <-- BG. data pointer
;// 03.06.11 //;
;// 03.06.11 //		LDA	!OYKCFG
;// 03.06.11 //		ASL	A
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!OYKADR		; (A) <-- BG. address
;// 03.06.11 //OPYK120		EQU	$
;// 03.06.11 //		STA	<WORK8
;// 03.06.11 //;
;// 03.06.11 //		JSR	BGADRG0		; Vram address get
;// 03.06.11 //		STA	!VRAMD+2,Y	; H,L address set
;// 03.06.11 //;;;;		LDA	#00001H
;// 03.06.11 //		LDA	#00100H
;// 03.06.11 //		STA	!VRAMD+4,Y	; count set
;// 03.06.11 //		LDA	OYKBGD,X
;// 03.06.11 //		STA	!VRAMD+6,Y
;// 03.06.11 //		PHX			; (X) push
;// 03.06.11 //		LDX	<WORK8
;// 03.06.11 //		STA	>ROOMBF+000H,X
;// 03.06.11 //		PLX			; (X) pull
;// 03.06.11 //		INX
;// 03.06.11 //		INX
;// 03.06.11 //		TYA
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	#00006H
;// 03.06.11 //		TAY
;// 03.06.11 //		LDA	<WORK8
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	#00080H
;// 03.06.11 //		CPY	#00018H
;// 03.06.11 //		BNE	OPYK120		; end ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDA	#0FFFFH
;// 03.06.11 //		STA	!VRAMD+2,Y	; end code set
;// 03.06.11 //;
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	#001H
;// 03.06.11 //		STA	<VRFLG
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //OPYK200		EQU	$
;// 03.06.11 //		INC	!OYKXPS
;// 03.06.11 //		LDA	!OYKMOD
;// 03.06.11 //		BNE	OPYK220		; open ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		DEC	!OYKXPS
;// 03.06.11 //		DEC	!OYKXPS
;// 03.06.11 //OPYK220		EQU	$
;// 03.06.11 //		LDX	#02000H
;// 03.06.11 //		LDA	!OYKXPS
;// 03.06.11 //		BPL	OPYK230		; BG. > OBJ ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		LDX	#00000H
;// 03.06.11 //OPYK230		EQU	$
;// 03.06.11 //		STX	<WORK2
;// 03.06.11 //;
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	#004H*4
;// 03.06.11 //		JSL	>OAMENT3	; OAM used point get
;// 03.06.11 //;
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDX	#006H
;// 03.06.11 //		LDA	!OYKXAD
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	!OYKXPS
;// 03.06.11 //		SEC
;// 03.06.11 //		SBC	<SCCH2
;// 03.06.11 //		STA	<WORK4
;// 03.06.11 //		AND	#000FFH
;// 03.06.11 //		STA	<WORK6
;// 03.06.11 //;
;// 03.06.11 //		LDA	!OYKYAD
;// 03.06.11 //		SEC
;// 03.06.11 //		SBC	<SCCV2
;// 03.06.11 //		DEC	A
;// 03.06.11 //OPYK240		EQU	$
;// 03.06.11 //		STA	<WORK8
;// 03.06.11 //;
;// 03.06.11 //		MEM8
;// 03.06.11 //		SEP	#00100000B	; memory 8bit mode
;// 03.06.11 //;
;// 03.06.11 //		PHY			; (Y) push
;// 03.06.11 //		TYA
;// 03.06.11 //		LSR	A
;// 03.06.11 //		LSR	A
;// 03.06.11 //		TAY
;// 03.06.11 //		LDA	#000H
;// 03.06.11 //		STA	!OAMSB2,Y
;// 03.06.11 //		PLY			; (Y) pull
;// 03.06.11 //;
;// 03.06.11 //		LDA	<WORK5
;// 03.06.11 //		ORA	<WORK9
;// 03.06.11 //		BNE	OPYK260		; erase ?
;// 03.06.11 //;					; no
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	<WORK8
;// 03.06.11 //		CMP	#000FAH
;// 03.06.11 //		BCS	OPYK260		; set ok ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		XBA
;// 03.06.11 //;/////		AND	#0FF00H
;// 03.06.11 //		ORA	<WORK6
;// 03.06.11 //		STA	!OAM2,Y		; X,Y position set
;// 03.06.11 //;
;// 03.06.11 //		LDA	>OYOJDT,X
;// 03.06.11 //		ORA	<WORK2
;// 03.06.11 //		STA	!OAM2+2,Y	; char. & atrb. set
;// 03.06.11 //		INY
;// 03.06.11 //		INY
;// 03.06.11 //		INY
;// 03.06.11 //		INY
;// 03.06.11 //OPYK260		EQU	$
;// 03.06.11 //		MEM16
;// 03.06.11 //		REP	#00100000B	; memory 16bit mode
;// 03.06.11 //;
;// 03.06.11 //		LDA	<WORK8
;// 03.06.11 //		CLC
;// 03.06.11 //		ADC	#00008H
;// 03.06.11 //		DEX
;// 03.06.11 //		DEX
;// 03.06.11 //		BPL	OPYK240		; end ?
;// 03.06.11 //;					; yes
;// 03.06.11 //		MEM8
;// 03.06.11 //		IDX8
;// 03.06.11 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.11 //		RTL
;// 03.06.11 //;
;// 03.06.11 //;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Takara-box open play			(TKBXPL)	*
;************************************************************************
TKBXDT		EQU	$
;			   room    no.    room    no.
;			  L    H         L    H
		BYTE	032H,000H,024H,055H,000H,012H
		BYTE	071H,000H,00CH,0A8H,000H,025H
		BYTE	013H,001H,019H,0A9H,080H,00BH
		BYTE	016H,000H,028H,016H,000H,025H
		BYTE	037H,000H,033H,036H,080H,00AH
		BYTE	00BH,001H,028H
		BYTE	073H,080H,01BH
		BYTE	067H,000H,025H,07EH,000H,028H
		BYTE	058H,080H,007H,058H,000H,033H
		BYTE	057H,000H,032H,057H,000H,024H
		BYTE	01FH,000H,032H,07EH,000H,024H
		BYTE	09EH,080H,022H,077H,000H,033H
		BYTE	005H,000H,028H,0B9H,000H,040H
		BYTE	074H,000H,033H,0B8H,000H,032H
		BYTE	004H,001H,012H,0FEH,000H,041H
		BYTE	075H,000H,032H,00CH,001H,017H
		BYTE	068H,000H,024H
		BYTE	085H,000H,025H,003H,001H,016H
		BYTE	03DH,001H,036H,02EH,000H,025H
		BYTE	02DH,001H,036H
		BYTE	0B3H,000H,024H,03FH,000H,033H
		BYTE	05FH,000H,024H,0AEH,000H,024H
		BYTE	087H,000H,032H
		BYTE	008H,001H,00CH
		BYTE	006H,001H,02AH,01CH,001H,046H
		BYTE	00AH,001H,017H,0AAH,000H,033H
		BYTE	027H,080H,01FH
		BYTE	027H,000H,025H
;
		BYTE	059H,000H,024H			; ura mori 6
;
		BYTE	0DBH,000H,033H,0DBH,000H,032H	; ura machi 1
		BYTE	0DCH,000H,025H,0CBH,000H,036H	; ura machi 2,3
		BYTE	065H,000H,028H,044H,080H,01CH	; ura machi 10,11
		BYTE	045H,000H,024H
;
		BYTE	0B6H,000H,024H,024H,080H,006H	; kameiwa 1
		BYTE	0B7H,000H,033H,0B7H,000H,024H	; kameiwa 9,2
		BYTE	0D6H,000H,025H,014H,000H,032H	; kameiwa 5,8
		BYTE	0D5H,000H,034H,0D5H,000H,035H	; kameiwa 17
		BYTE	0D5H,000H,036H,0D5H,000H,024H	; kameiwa 17
		BYTE	004H,000H,024H			; kameiwa 6
;
;
		BYTE	03AH,000H,032H			; ura shin 2
		BYTE	02AH,000H,024H,02AH,000H,024H	; ura shin 3
		BYTE	01AH,080H,009H,01AH,000H,025H	; ura shin 4
		BYTE	01AH,000H,035H			; ura shin 4
		BYTE	00AH,000H,024H			; ura shin 5
		BYTE	06AH,000H,043H,06AH,000H,024H	; ura shin 6
		BYTE	02BH,000H,033H			; ura shin 10
		BYTE	019H,000H,028H,019H,000H,024H	; ura shin 13
		BYTE	009H,000H,024H			; ura shin 14
;
		BYTE	0C2H,000H,024H,0A2H,000H,024H	; ura numa 3,12
		BYTE	0C1H,000H,025H			; ura numa 4
		BYTE	0C3H,080H,015H,0C3H,000H,033H	; ura numa 9
		BYTE	0D1H,000H,032H,0B3H,000H,024H	; ura muma 5,10
;
		BYTE	00DH,001H,017H,00DH,001H,036H	; ura piramid
		BYTE	012H,000H,03FH			; church
		BYTE	0F8H,000H,028H,0F8H,000H,036H	; ura yama
		BYTE	005H,001H,041H,005H,001H,028H	; shinden ojiji
		BYTE	005H,001H,041H			; shinden ojiji
		BYTE	017H,001H,018H			; nazare no tsue
		BYTE	02FH,000H,017H,02FH,000H,036H	; takara no ido
		BYTE	02FH,000H,036H,02FH,000H,036H	; takara no ido
		BYTE	02FH,000H,028H			; takara no ido
;
		BYTE	028H,000H,024H			; hokora 1
		BYTE	046H,000H,025H			; hokora 8
		BYTE	034H,000H,036H,035H,000H,032H	; hokora 6,5
		BYTE	076H,000H,036H,076H,000H,036H	; hokora 10
		BYTE	066H,000H,036H			; hokora 11
;
		BYTE	0D0H,000H,024H			; shisai 5
		BYTE	0E0H,000H,024H			; shisai 6
;
		BYTE	07BH,000H,028H,07BH,000H,044H	; urayama tou 2
		BYTE	07BH,000H,036H,07BH,000H,036H	; urayama tou 2
		BYTE	07CH,000H,044H,07CH,000H,044H	; urayama tou 3
		BYTE	07CH,000H,028H,07CH,000H,028H	; urayama tou 3
		BYTE	07DH,000H,024H			; urayama tou 4
		BYTE	08BH,000H,033H			; urayama tou 5
		BYTE	08CH,080H,023H,08CH,000H,044H	; urayama tou 6
		BYTE	08CH,000H,028H,08CH,000H,044H	; urayama tou 6
		BYTE	08DH,000H,024H			; urayama tou 7
		BYTE	09DH,000H,025H,09DH,000H,034H	; urayama tou 10
		BYTE	09DH,000H,036H,09DH,000H,044H	; urayama tou 10
		BYTE	01CH,000H,032H,01CH,000H,044H	; urayama tou 11
		BYTE	01CH,000H,028H			; urayama tou 11
		BYTE	05BH,000H,024H			; urayama tou 13
		BYTE	03DH,000H,028H,03DH,000H,028H	; urayama tou 21
		BYTE	03DH,000H,024H			; urayama tou 21
		BYTE	04DH,000H,036H			; urayama tou 22
;
		BYTE	080H,000H,012H,072H,000H,033H	; rouya, rou 1
;
		BYTE	01DH,001H,017H,01DH,001H,036H	; touzoku house
		BYTE	01DH,001H,036H,01DH,001H,036H	; touzoku house
		BYTE	01DH,001H,036H			; touzoku house
;
		BYTE	01EH,001H,036H,01EH,001H,036H	; naisyo dayo
		BYTE	01EH,001H,036H,01EH,001H,036H	; naisyo dayo
;
		BYTE	0EFH,000H,036H,0EFH,000H,036H	; yama migi naka
		BYTE	0EFH,000H,036H,0EFH,000H,036H	; yama migi naka
		BYTE	0EFH,000H,036H			; yama migi naka
;
		BYTE	0FFH,000H,028H,0FFH,000H,044H	; yama migi shita
;
		BYTE	024H,001H,017H			; church yoko
;
		BYTE	023H,001H,028H,023H,001H,036H	; naisyo dayo 2
		BYTE	023H,001H,036H,023H,001H,044H	; naisyo dayo 2
;
		BYTE	020H,001H,008H			; hachi doukutsu
;
		BYTE	03CH,000H,041H,03CH,000H,041H	; urayama buttobi
		BYTE	03CH,000H,041H,03CH,000H,041H	; urayama buttobi
;
		BYTE	011H,000H,028H,011H,000H,046H	; church chikadou
		BYTE	011H,000H,044H			; church chikadou
TKBXDE		EQU	$
;
;
TKBXPL		EQU	$
		PHB
		LDX	#000H
		PHX
		PLB			; (DBR) set
;
		CMP	#063H
		BNE	TKBX00		; atemon-takara-box ?
;					; yes
		JMP	TKBX800
;
TKBX00		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		AND	#000FFH
		SEC
		SBC	#00058H
		STA	<WORKE
		ASL	A
		PHA			; (A) push
		TAY
		PHY			; (Y) push
;
		LDA	!TBXADR,Y
		CMP	#08000H
		BCC	TKBX20		; rouya-key ?
;					; yes
		LDX	!DJNNO
		LDA	>KEYCNT
		AND	>BITCD0,X
		BNE	TKBX10		; rouya open ok ?
;					; no
		LDA	#MS_00DD
		STA	!MSGENOL
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>MESWIT
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
		BRA	TKBX999
;
TKBX10		EQU	$
;// 03.07.23 //		LDA	>KEYCNT
;// 03.07.23 //		AND	>BITCD1,X
;// 03.07.23 //		STA	>KEYCNT
;
;// 03.04.18 //		LDA	!INFSTT
		LDA	!EMYSTT
		ORA	TBITCD,Y
;// 03.04.18 //		STA	!INFSTT		; Takara-box open set
		STA	!EMYSTT
;
		LDA	#01529H
		STA	!SOUND2		; <sound2> <sound3>
;
		LDA	!TBXADR,Y
		AND	#07FFFH
		TAX
		LDY	!B2FLNO
		LDA	FLORDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	<WORK2
		LDA	FLORDT+002H,Y
		STA	>ROOMBF+080H,X
		STA	<WORK4
		LDA	FLORDT+004H,Y
		STA	>ROOMBF+002H,X
		STA	<WORK6
		LDA	FLORDT+006H,Y
		JMP	TKBX25
;
TKBX990		EQU	$
		PLX			; (X) pull
TKBX999		EQU	$
		PLY			; (Y) pull
		PLA			; (A) pull
;
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB			; (DBR) reset
		CLC
		RTL
;
;
TKBX20		EQU	$
		AND	#07FFFH
		TAX
		PHX			; (X) push
;
		INC	<WORKE
		LDX	#0FFFDH
TKBX22		EQU	$
		INX
		INX
		INX
		CPX	#TKBXDE-TKBXDT
		BEQ	TKBX990		; check end ?
;					; yes
		LDA	>TKBXDT,X
		AND	#07FFFH
		CMP	<RMXYCT
		BNE	TKBX22		; room no. ok ? 
;					; yes
		DEC	<WORKE
		BNE	TKBX22		; point ok ?
;					; yes
		LDA	>TKBXDT+2,X
		STA	<WORKC
TKBX23		EQU	$
		LDA	>TKBXDT,X
		ASL	A
		BCC	TKBX24		; special-box ?
;					; yes
		LDX	!DJNNO
		LDA	>KEYCNT
		AND	>BITCD0,X
		BEQ	TKBX231		; special-box open ok ?
;					; yes
;// 03.07.23 //		LDA	>KEYCNT
;// 03.07.23 //		AND	>BITCD1,X
;// 03.07.23 //		STA	>KEYCNT
		PLX			; (X) pull
		PLA			; (Y) pull
		JMP	TKBX400
;
TKBX231		EQU	$
		PLX			; (X) pull
		PLY			; (Y) pull
		PLA			; (A) pull
;
		LDA	#MS_00DD
		STA	!MSGENOL
;
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>MESWIT		; message write
;
		PLB			; (DBR) reset
		CLC
		RTL
;
;
TKBX24		EQU	$
;// 03.04.23 //		LDA	>ITMTBL9
;// 03.04.23 //		DEC	A
;// 03.04.23 //		STA	>ITMTBL9
TKBX241		EQU	$
		PLX			; (X) pull
;
;// 03.04.18 //		LDA	!INFSTT
		LDA	!EMYSTT
		ORA	TBITCD,Y
;// 03.04.18 //		STA	!INFSTT		; Takara-box open set
		STA	!EMYSTT
;
		LDY	#tkbox1
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	<WORK2
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		STA	<WORK4
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+002H,X
		STA	<WORK6
		LDA	UNITDT+006H,Y
TKBX25		EQU	$
		STA	>ROOMBF+082H,X
		STA	<WORK8
;
		PLY			; (Y) pull
		LDA	#02727H
		STA	<WORK0
		LDA	!TBXADR,Y
		CMP	#08000H
		BCC	TKBX30		; rouya-key ?
;					; yes
		AND	#07FFFH
		STZ	<WORK0
TKBX30		EQU	$
		LSR	A
		TAX
TKBX40		EQU	$
		LDA	<WORK0
		STA	>READBF+000H,X
		STA	>READBF+040H,X
;
		LDX	!VRAMD
		LDA	#00000H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+2,X
		LDA	#00080H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+8,X
		LDA	#00002H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+14,X
		LDA	#00082H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+20,X	; write address set
;
;
		LDA	<WORK2
		STA	!VRAMD+6,X
		LDA	<WORK4
		STA	!VRAMD+12,X
		LDA	<WORK6
		STA	!VRAMD+18,X
		LDA	<WORK8
		STA	!VRAMD+24,X	; rewrite data
;
		LDA	#00100H
		STA	!VRAMD+4,X
		STA	!VRAMD+10,X
		STA	!VRAMD+16,X
		STA	!VRAMD+22,X
		LDA	#0FFFFH
		STA	!VRAMD+26,X
		TXA
		CLC
		ADC	#00024
		STA	!VRAMD
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;// 03.05.14 //		LDA	<WORKC
;// 03.05.14 //		PHA			; (A) push
;// 03.05.14 //		JSL	>ITEM0ST	; key count set
;// 03.05.14 //		PLA			; (A) pull
;// 03.05.14 //		STA	<WORKC
;
		LDA	#001H
		STA	<VRFLG
;
		JSL	>MPBTSET1	; map on/off bit set
;
		LDA	!SOUND3
		BNE	TKBX50		;
;					;
		LDA	#00EH
		STA	!SOUND3		; <sound3>
TKBX50		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PLY			; (Y) pull
		LDA	!TBXADR,Y
		AND	#07FFFH
		STA	<BMWORK+0
;
		MEM8
		IDX8
		SEP	#00110001B	; memory,index 8bit mode & SEC
;
		PLB			; (DBR) reset
		RTL
;
;
		MEM16
		IDX16
TKBX400		EQU	$
		LDA	!EMYSTT
		ORA	TBITCD,Y
		STA	!EMYSTT
;
		STX	<WORK8
		LDA	#00004H
		STA	<WORKE
		LDY	#tkbox3
TKBX420		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		INY
		INY
		INY
		INY
		INY
		INY
		INX
		INX
		DEC	<WORKE
		BNE	TKBX420		;
;					;
		LDA	<WORKC
		PHA			; (A) push
;
;// 03.08.02 //		STZ	<WORKC
		JSR	BGCNGS11	; BG. change data set
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y
;
		PLA			; (A) pull
		STA	<WORKC
;
		PLY			; (Y) pull
		LDA	!TBXADR,Y
		AND	#07FFFH
		PHA			; (A) push
		INC	A
		INC	A
		STA	<BMWORK+0
		PLA			; (A) pull
		LSR	A
		TAX
		LDA	#02727H
		STA	>READBF+000H,X
		STA	>READBF+002H,X
		STA	>READBF+040H,X
		STA	>READBF+042H,X
		STA	>READBF+080H,X
		STA	>READBF+082H,X
;
		MEM8
		IDX8
		SEP	#00110001B	; memory,index 8bit mode & SEC
;
		PLB			; (DBR) reset
;
		JSL	>MPBTSET1	; map on/off bit set
;
		LDA	#00EH
		STA	!SOUND3		; <sound3>
;
		LDA	#001H
		STA	<BGCHFG
		STA	!BXOPEN
		SEC
		RTL
;
;
;
TKBX880		EQU	$
		STA	<CWORK0
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#MS_0553
		BRA	TKBX895
;
TKBX890		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#MS_0554
TKBX895		EQU	$
		STA	!MSGENOL
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>MESWIT		; message init.
;
		PLB			; (DBR) pull
		CLC
		RTL
;
;
ATBKDAT		EQU	$
;		        r100  r50   r1 hert arw1 aw10 bomb kakera
		BYTE	040H,041H,034H,042H,043H,044H,027H,017H
;
;
TKBX800		EQU	$
		LDA	!ATBXCT
		BEQ	TKBX890		; takara-box open ok ?
;					; yes
		CMP	#0FFH
		BEQ	TKBX880		; takara-box open ok ?
;					; yes
		DEC	!ATBXCT
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLYPS1
		SEC
		SBC	#00004H
		STA	<WORK0
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
		LDA	<PLXPS1
		CLC
		ADC	#00007H
		STA	<WORK2
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK6
		TAX
		LDA	>READBF+000H,X
		CMP	#06363H
		BEQ	TKBX840		; takara-box ?
;					; no
		DEX
		LDA	>READBF+000H,X
		CMP	#06363H
		BEQ	TKBX840		; takara-box ?
;					; no
		INX
		INX
TKBX840		EQU	$
		LDA	#00202H
		STA	>READBF+000H,X
		STA	>READBF+040H,X
		TXA
		ASL	A
		STA	<BMWORK+0
		CLC
		ADC	#00100H
		TAX
		STA	<WORKC
;
		LDY	#tkbox1
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	<WORK2
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		STA	<WORK4
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+002H,X
		STA	<WORK6
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+082H,X
		STA	<WORK8
;
;
		LDX	!VRAMD
		LDA	<WORKC
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+2,X
		LDA	<WORKC
		CLC
		ADC	#00080H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+8,X
		LDA	<WORKC
		CLC
		ADC	#00002H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+14,X
		LDA	<WORKC
		CLC
		ADC	#00082H
		JSR	TKBX200		; Vram address get
		STA	!VRAMD+20,X	; write address set
;
;
		LDA	<WORK2
		STA	!VRAMD+6,X
		LDA	<WORK4
		STA	!VRAMD+12,X
		LDA	<WORK6
		STA	!VRAMD+18,X
		LDA	<WORK8
		STA	!VRAMD+24,X	; rewrite data
;
		LDA	#00100H
		STA	!VRAMD+4,X
		STA	!VRAMD+10,X
		STA	!VRAMD+16,X
		STA	!VRAMD+22,X
		LDA	#0FFFFH
		STA	!VRAMD+26,X
		TXA
		CLC
		ADC	#00024
		STA	!VRAMD
;
		MEM8
		IDX8
		SEP	#00110001B	; memory,index 8bit mode & SEC
;
		LDA	<RMXYCT
		BEQ	TKBX900		; 100 takara-box ?
;					; no
		CMP	#018H
		BEQ	TKBXA00		; 20 takara-box ?
;					; no
		JSL	>RNDSET
		AND	#00000111B
		TAX
		CPX	#002H
		BCC	TKBX850		;
;					;
		CPX	<CWORK0
		BNE	TKBX850		;
;					;
		TXA
		INC	A
		AND	#00000111B
		TAX
TKBX850		EQU	$
		CPX	#007H
		BNE	TKBX870		; heart-kakera ?
;					; yes
		LDA	!EMYSTT+1
		AND	#040H
		BNE	TKBX860		; get ok ?
;					; no
		LDA	!EMYSTT+1
		ORA	#040H
		STA	!EMYSTT+1
		BRA	TKBX870
;
TKBX860		EQU	$
		LDX	#00000H
TKBX870		EQU	$
		LDA	>ATBKDAT,X
TKBXAAA		EQU	$
		STX	<CWORK0
		STA	<WORKC
		STZ	<WORKD
;
		LDA	#001H
		STA	<VRFLG
;
		LDA	#00EH
		STA	!SOUND3		; <sound3>
;
		PLB			; (DBR) reset
		SEC
		RTL
;
;
;
;
ATBKDA1		EQU	$
;			   0    1    2    3    4    5    6    7
;			 r20   r1 r300   r1 r300 r300   r1  r20
		BYTE	047H,034H,046H,034H,046H,046H,034H,047H
;			r300  r20   r1 r300  r20   r1 r300  r20
		BYTE	046H,047H,034H,046H,047H,034H,046H,047H
;
ATBKDA2		EQU	$
;			   0    1    2    3    4    5    6    7
;			  r1  r20  r50  r20  r50  r50  r20   r1
		BYTE	034H,047H,041H,047H,041H,041H,047H,034H
;			 r50   r1  r20  r50   r1  r20  r50   r1
		BYTE	041H,034H,047H,041H,034H,047H,041H,034H
;
;
TKBX900		EQU	$
		JSL	>RNDSET
		AND	#00001111B
		BRA	TKBXA40
;
;
TKBXA00		EQU	$
		JSL	>RNDSET
		AND	#00001111B
		CLC
		ADC	#010H
TKBXA40		EQU	$
		TAX
		LDA	>ATBKDA1,X
		BRA	TKBXAAA
;
;
;
;
		MEM16
		IDX16
TKBX200		EQU	$
		CLC
		ADC	!TBXADR,Y
TKBX220		EQU	$
		STA	<WORKE
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORKA
		LDA	<WORKE
		AND	#0303FH
		LSR	A
		ORA	<WORKA
		STA	<WORKA
		LDA	<WORKE
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORKA
		XBA
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Water down move				(WTRDOWN)	*
;************************************************************************
WWDNDT		EQU	$
		WORD	0FFFFH,0FFFFH,0FFFFH,00001H
		WORD	0FFFFH,0FFFFH,0FFFFH,00001H
		WORD	0FFFFH,0FFFFH,0FFFFH,00001H
		WORD	0FFFFH,0FFFFH,0FFFFH,00001H
;
;
WTRDOWN		EQU	$
		LDA	!BGMVC1
		AND	#00000111B
		BNE	WRDWN40		; wipe move ok ?
;					; no
		LDA	!BGMVC1
		AND	#00001100B
		LSR	A
		TAX
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!WRWPH0
		CMP	!WRWPED
		BEQ	WRDWN100	; end ?
;					; no
		CLC
		ADC	>WWDNDT,X
		STA	!WRWPH0
		LDA	!WRWPH1
		CLC
		ADC	>WWDNDT,X
		STA	!WRWPH1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		INC	!BGMVC1
		JSL	>WTRWPMV	; water wipe move
;// 02.11.05 //		LDA	#00110010B
;// 02.11.05 //		STA	2131H		; gamen plus
;
;// 03.09.25 //		LDA	!BGMVC1
;// 03.09.25 //		AND	#00001000B
;// 03.09.25 //		BEQ	WRDWN20		; CG. fade out ?
;// 03.09.25 //;					; yes
;// 03.09.25 //		LDA	>CCNGFG
;// 03.09.25 //		CMP	#002H
;// 03.09.25 //		BEQ	WRDWN20		; end ?
;// 03.09.25 //;					; no
;// 03.09.25 //		JSL	>CGCNGA		; water CG. fade out
WRDWN20		EQU	$
		RTL
;
WRDWN40		EQU	$
		SEP	#00110000B	; memory,index 16bit mode
;
		INC	!BGMVC1
		JSL	>WTRWPMV	; water wipe move
;// 02.11.05 //		LDA	#00110010B
;// 02.11.05 //		STA	2131H		; gamen plus
		RTL
;
;
WRDWN100	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		LDA	#00000010B
		STA	<WD2130
		LDA	#00110010B
		STA	<WD2131
;
		STZ	212DH
		STZ	<DPSUB
		STZ	<WD2123
;
		STZ	!BGALCKF
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<WDMAIN
;;;;;;;;		STZ	<WDSUB
;
		LDX	!UDSCKP3
		BEQ	WRDWN150	; UD-STEP (normal) check ?
;					; yes
		LDY	#00000H
WRDWN140	EQU	$
		LDX	!UDSCKB3,Y
		LDA	#01D1DH
		STA	>READBF+041H,X
		STA	>READBF+081H,X
		INY
		INY
		CPY	!UDSCKP3
		BNE	WRDWN140	; check end ?
;					; yes
WRDWN150	EQU	$
		LDX	!UDSCKPB
		BEQ	WRDWN180	; UD-STEP (normal) check ?
;					; yes
		LDY	#00000H
WRDWN160	EQU	$
		LDX	!UDSCKBB,Y
		LDA	#01D1DH
		STA	>READBF+041H,X
		STA	>READBF+081H,X
		INY
		INY
		CPY	!UDSCKPB
		BNE	WRDWN160	; check end ?
;					; yes
WRDWN180	EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;// 03.06.26 //		STZ	!CGSTPT+1
;// 03.06.26 //		JSL	>KOUKAST	; kouka color reset
;// 03.06.26 //;
;// 03.06.26 //		MEM16
;// 03.06.26 //		REP	#00100000B	; memory 16bit mode
;// 03.06.26 //;
;// 03.06.26 //		LDX	#00CH
;// 03.06.26 //WRDWN190	EQU	$
;// 03.06.26 //		LDA	>CGRAM+0E2H,X
;// 03.06.26 //		STA	>CGWORK+0E2H,X
;// 03.06.26 //		DEX
;// 03.06.26 //		DEX
;// 03.06.26 //		BPL	WRDWN190	; color set end ?
;// 03.06.26 //;					; yes
;// 03.06.26 //		MEM8
;// 03.06.26 //		SEP	#00100000B	; memory 8bit mode
;
		INC	<CGVMAF
		INC	<JRSBPT
		RTL
;
;
;*************  BG.1 watre clear init.                  (WTRCLR0)  ******
WTRCLR0		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
		LDY	#000F0H*2
		LDA	FLORDT+000H,Y
WRCR040		EQU	$
		STA	>BG1RBF+0000H,X
		STA	>BG1RBF+0200H,X
		STA	>BG1RBF+0400H,X
		STA	>BG1RBF+0600H,X
		STA	>BG1RBF+0800H,X
		STA	>BG1RBF+0A00H,X
		STA	>BG1RBF+0C00H,X
		STA	>BG1RBF+0E00H,X
		STA	>BG1RBF+1000H,X
		STA	>BG1RBF+1200H,X
		STA	>BG1RBF+1400H,X
		STA	>BG1RBF+1600H,X
		STA	>BG1RBF+1800H,X
		STA	>BG1RBF+1A00H,X
		STA	>BG1RBF+1C00H,X
		STA	>BG1RBF+1E00H,X
		INX
		INX
		CPX	#00200H
		BNE	WRCR040		; BG.1 clear end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	!WBFPNT
		INC	<JRSBPT
		RTL
;
;
;*************  BG.1 watre clear write                  (WTRCLR1)  ******
WTRCLR1		EQU	$
		JSL	>WBUFS1		; BG.1 write buffer set
;
		LDA	!WBFPNT
		CLC
		ADC	#004H
		STA	!WBFPNT
		INC	<JRSBPT
		LDA	<JRSBPT
		CMP	#006H
		BNE	WRCR180		; end ?
;					; yes
		STZ	!WBFPNT
		STZ	<JRSBPT
		STZ	<GAMEMD
WRCR180		EQU	$
		RTL
;
;
;
;************************************************************************
;*		Water up move				(WTRUPP)	*
;************************************************************************
WWUPDT		EQU	$
		WORD	00001H,00001H,00001H,0FFFFH
;
WWUPD1		EQU	$
		WORD	00001H,00002H,00001H,0FFFFH
;
WWUPD2		EQU	$
		WORD	00001H,0FFFFH,00001H,0FFFFH
;
;
WRUPTBL		EQU	$
		WORD	WTRCLR1		; 0 : BG.1 write
		WORD	WTRCLR1		; 1 :
		WORD	WTRCLR1		; 2 :
		WORD	WTRCLR1		; 3 :
		WORD	WRUP000		; 4 : tap water write
		WORD	WRUP000		; 5 :
		WORD	WRUP000		; 6 :
		WORD	WRUP000		; 7 :
		WORD	WRUP000		; 8 :
		WORD	WRUP200		; 9 : 
		WORD	WRUP210		; A : water nagare
		WORD	WRUP300		; B : water up
;
;
WTRUPP		EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(WRUPTBL,X)
;
;
;
WRUP080		EQU	$
		RTL
;
;
WRUP000		EQU	$
		DEC	!BGMVC1
		BNE	WRUP080		; water write ?
;					; yes
		LDA	#004
		STA	!BGMVC1
;
		INC	<JRSBPT
		LDA	<JRSBPT
		SEC
		SBC	#004H
		STA	<WORKE
		STZ	<WORKF
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#00008H
		STA	!WRWPH1
		STZ	!WRWPH2
		LDA	#00030H
		STA	!WRWPH0
;
		LDA	#tapdt2
		CLC
		ADC	#00010H
		TAY
WRUP020		EQU	$
		LDA	!TAPADR
		CLC
		ADC	#00100H
		STA	<WORK8
		TAX
WRUP040		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+002H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+004H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+006H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BNE	WRUP040		; set end ?
;					; yes
WRUP100		EQU	$
		LDA	#00004H
		STA	<WORKA
		LDY	#00000H
WRUP140		EQU	$
		LDX	<WORK8
		TXA
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK0
		TXA
		AND	#0303FH
		LSR	A
		ORA	<WORK0
		STA	<WORK0
		TXA
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK0
		XBA
		STA	!VRAMD+002H,Y	; VRAM address set
		LDA	#00980H
		STA	!VRAMD+004H,Y
;
		LDA	>ROOMBF+000H,X
		STA	!VRAMD+006H,Y
		LDA	>ROOMBF+080H,X
		STA	!VRAMD+008H,Y
		LDA	>ROOMBF+100H,X
		STA	!VRAMD+00AH,Y
		LDA	>ROOMBF+180H,X
		STA	!VRAMD+00CH,Y
		LDA	>ROOMBF+200H,X
		STA	!VRAMD+00EH,Y	; write data set
		INC	<WORK8
		INC	<WORK8
		TYA
		CLC
		ADC	#0000EH
		TAY
		DEC	<WORKA
		BNE	WRUP140		; 1-unit set ?
;					; yes
		LDA	#0FFFFH
		STA	!VRAMD+002H,Y	; end code set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG		; BG. change flag on
		RTL
;
;
;
WRUP200		EQU	$
		LDA	#00000011B
		STA	<WD2123
		STZ	<WD2124
		STZ	<WD2125
		LDA	#00010110B
		STA	<WDMAIN
		LDA	#00000001B
		STA	<WDSUB
		STA	<DPSUB
		LDA	#00000010B
		STA	<WD2130
		LDA	#01100010B
		STA	<WD2131
;
		STZ	!BGMVC1
		INC	<JRSBPT
WRUP210		EQU	$
		LDA	!BGMVC1
		AND	#00000011B
		ASL	A
		TAX
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
;// 03.09.23 //		LDA	!WRWPYP
		LDA	#00688H
		SEC
		SBC	<SCCV2
		SEC
		SBC	#00024H
		STA	<WORK0
;
		LDA	!WRWPH1
		CLC
		ADC	>WWUPD2,X
		STA	!WRWPH1
		LDA	!WRWPH2
		CLC
		ADC	>WWUPD1,X
		STA	!WRWPH2
		CMP	<WORK0
		BCC	WRUP220		; end ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#007H
		STA	!GSUBFG
		INC	<JRSBPT
WRUP220		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		INC	!BGMVC1
;
;// 03.09.23 //		LDA	!WRWPYP
		LDA	#00688H
		SEC
		SBC	<SCCV2
		SEC
		SBC	!WRWPH0
		STA	!WNYPL0
		CLC
		ADC	!WRWPH2
		STA	<WORKA
		JSL	>WWPM000
		RTL
;
;
;
		MEM8
		IDX8
WRUP300		EQU	$
		LDA	!BGMVC1
		AND	#00000111B
		BNE	WRUP380		; wipe move ok ?
;					; no
		LDA	!BGMVC1
		AND	#00001100B
		LSR	A
		TAX
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!WRWPH0
		CMP	!WRWPED
		BEQ	WRUP400		; end ?
;					; no
		CLC
		ADC	>WWUPDT,X
		STA	!WRWPH0
		LDA	!WRWPH1
		CLC
		ADC	>WWUPDT,X
		STA	!WRWPH1
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDY	#tapdt4
		LDA	!WRWPED
		SEC
		SBC	!WRWPH0
		BEQ	WRUP320		;
;					;
		CMP	#00008H
		BNE	WRUP340		;
;					;
		LDY	#tapdt3
WRUP320		EQU	$
		LDA	#00005H
		STA	<WORKE
		JSL	>WRUP020	; tap BG. set
WRUP340		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
;// 02.10.25 //		INC	!BGMVC1
;// 02.10.25 //		JSL	>WTRWPMV	; water wipe move
;// 02.10.25 //;
;// 02.10.25 //		LDA	!BGMVC1
;// 02.10.25 //		AND	#00001000B
;// 02.10.25 //		BEQ	WRUP360		; CG. fade in ?
;// 02.10.25 //;					; yes
;// 02.10.25 //	LDA	>CCNGFG
;// 02.10.25 //		BEQ	WRUP360		; end ?
;// 02.10.25 //;					; no
;// 02.10.25 //		JSL	>CGCNGA		; water CG. fade in
;// 02.10.25 //WRUP360		EQU	$
;// 02.10.25 //		RTL
;// 02.10.25 //;
WRUP380		EQU	$
		SEP	#00110000B	; memory,index 16bit mode
;
		INC	!BGMVC1
		JSL	>WTRWPMV	; water wipe move
		RTL
;
;
WRUP400		EQU	$
;// 02.10.25 //		SEP	#00110000B	; memory,index 16bit mode
;// 02.10.25 //;
;// 02.10.25 //		LDA	#01100010B
;// 02.10.25 //		STA	2131H		; gamen plus
;// 02.10.25 //;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<WDMAIN
;;;;;;;;		STZ	<WDSUB
;
		LDX	!UDSCKP2
		BEQ	WRUP460		; UD-STEP (normal) check ?
;					; yes
		LDY	#00000H
WRUP440		EQU	$
		LDX	!UDSCKB2,Y
		LDA	#00003H
		STA	>READBF+000H,X
;;;;;;;;		LDA	#00300H
		XBA
		STA	>READBF+002H,X
		LDA	#00A03H
		STA	>READBF1+000H,X
;;;;;;;;		LDA	#0030AH
		XBA
		STA	>READBF1+002H,X
;
		LDA	#00808H
		STA	>READBF+040H,X
		STA	>READBF+042H,X
		STA	>READBF1+040H,X
		STA	>READBF1+042H,X
		STA	>READBF1+080H,X
		STA	>READBF1+082H,X
		STA	>READBF1+0C0H,X
		STA	>READBF1+0C2H,X
		INY
		INY
		CPY	!UDSCKP2
		BNE	WRUP440		; check end ?
;					; yes
WRUP460		EQU	$
		LDX	!UDSCKPA
		BEQ	WRUP480		; UD-STEP (normal) check ?
;					; yes
		LDY	#00000H
WRUP470		EQU	$
		LDX	!UDSCKBA,Y
		LDA	#00003H
		STA	>READBF+0C0H,X
;;;;;;;;		LDA	#00300H
		XBA
		STA	>READBF+0C2H,X
		LDA	#00A03H
		STA	>READBF1+0C0H,X
;;;;;;;;		LDA	#0030AH
		XBA
		STA	>READBF1+0C2H,X
		LDA	#00808H
		STA	>READBF+080H,X
		STA	>READBF+082H,X
		STA	>READBF1+000H,X
		STA	>READBF1+002H,X
		STA	>READBF1+040H,X
		STA	>READBF1+042H,X
		STA	>READBF1+080H,X
		STA	>READBF1+082H,X
		INY
		INY
		CPY	!UDSCKPA
		BNE	WRUP470		; check end ?
;					; yes
WRUP480		EQU	$
;// 02.10.25 //		MEM8
;// 02.10.25 //		IDX8
;// 02.10.25 //		SEP	#00110000B	; memory,index 8bit mode
;// 02.10.25 //;
;// 02.10.25 //		STZ	!CGSTPT+1
;// 02.10.25 //		JSL	>KOUKAST	; kouka color reset
;// 02.10.25 //;
;// 02.10.25 //		MEM16
;// 02.10.25 //		REP	#00100000B	; memory 16bit mode
;// 02.10.25 //;
;// 02.10.25 //		LDX	#00CH
;// 02.10.25 //WRUP490		EQU	$
;// 02.10.25 //		LDA	>CGRAM+0E2H,X
;// 02.10.25 //		STA	>CGWORK+0E2H,X
;// 02.10.25 //		DEX
;// 02.10.25 //		DEX
;// 02.10.25 //		BPL	WRUP490		; color set end ?
;// 02.10.25 //;					; yes
;// 02.10.25 //		MEM8
;// 02.10.25 //		SEP	#00100000B	; memory 8bit mode
;// 02.10.25 //;
;// 02.10.25 //		INC	<CGVMAF
		STZ	<GAMEMD
		STZ	<JRSBPT
		RTL
;
;
;
;
;************************************************************************
;*		Water gate open				(WGTOPEN)	*
;************************************************************************
WGTDT0		EQU	$-2
		WORD	00008H,00010H,00018H,00020H
WGTDT1		EQU	$-2
		WORD	00000H,0FFF8H,0FFF8H,0FFF8H
;
;
WGTDPT		EQU	$-2
		WORD	wgatop0,wgatop1,wgatop2,wgatop3
;
;
WGTOTBL		EQU	$
		WORD	WGTOP400
		WORD	WGTOP500
		WORD	WGTOP600
		WORD	WGTOP700
		WORD	WGTOP000
		WORD	WGTOP900
;
;
WGTOPEN		EQU	$
		JSL	>WRWPV0		; wipe set
;
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(WGTOTBL,X)
;
;
WGTOP80		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
WGTOP000	EQU	$
		INC	!WGTPNT
		LDA	!WGTPNT
		LSR	A
		STA	!WRWPH1
		SEC
		SBC	#008H
		STA	<WORK0
		LDA	!WNXBUF
;// 03.09.03 //		SEC
;// 03.09.03 //		SBC	<WORK0
		STA	!WNYPL1
		LDA	!WNYBUF
		CLC
		ADC	#001H
		STA	!WNYBUF
		CLC
		ADC	<WORK0
		STA	!WRWPH0
;
		LDA	!WGTPNT
		AND	#00FH
		BNE	WGTOP80		; open ?
;					; yes
;;;;;;;;		LDA	!WGTPNT
;;;;;;;;		LSR	A
;;;;;;;;		LSR	A
;;;;;;;;		LSR	A
;;;;;;;;		TAX
;;;;;;;;;
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B	; memory 16bit mode
;;;;;;;;;
;;;;;;;;		LDA	>WGTDT0,X
;;;;;;;;		STA	!WRWPH1
;;;;;;;;		LDA	!WNYPL1
;;;;;;;;		CLC
;;;;;;;;		ADC	>WGTDT1,X
;;;;;;;;		STA	!WNYPL1
;;;;;;;;		LDA	!WRWPH0
;;;;;;;;		CLC
;;;;;;;;		ADC	#00008H
;;;;;;;;		STA	!WRWPH0
;;;;;;;;;
;;;;;;;;		MEM8
;;;;;;;;		SEP	#00100000B	; memory 8bit mode
;
		LDA	!WGTPNT
		CMP	#040H
		BNE	WGTOP10		; end ?
;					; yes
		INC	<JRSBPT
WGTOP10		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!WGTPNT
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	>WGTDPT,X
		TAY
		LDX	!WGTADR
		STX	<WORK8
		LDA	#0000AH
		STA	<WORKE
WGTOP20		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
 		INX
 		INX
		DEC	<WORKE
		BNE	WGTOP20		; unit set end ?
;					; yes
		STZ	<WORKC
;
		LDA	#00003H
		STA	<WORKE
WGTOP60		EQU	$
		LDA	<WORK8
		PHA			; (A) push
		LDA	#00004H
		STA	<WORKA
		LDY	<WORKC
		LDA	#00881H
		STA	<WORK6
		JSR	BGCG120		; BG. change data set
		PLA			; (A) pull
		CLC
		ADC	#00006H
		STA	<WORK8
		DEC	<WORKE
		BNE	WGTOP60		; end ?
;					; yes
		JMP	BGCWEND		; end code set
;// 03.05.31 //		LDY	<WORKC
;// 03.05.31 //		LDA	#0FFFFH
;// 03.05.31 //		STA	!BGCWBF,Y	; end code set
;// 03.05.31 //;
;// 03.05.31 //		MEM8
;// 03.05.31 //		IDX8
;// 03.05.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.31 //;
;// 03.05.31 //		LDA	#001H
;// 03.05.31 //		STA	<BGCHFG		; BG. change flag on
;// 03.05.31 //		RTL
;
;
		MEM8
		IDX8
WGTOP400	EQU	$
		STZ	!WBFPNT
WGTOP500	EQU	$
WGTOP600	EQU	$
WGTOP700	EQU	$
		STZ	!SCRLFG
		JSL	>WBUFS1		; BG.1 data buffer set
		LDA	!WBFPNT
		CLC
		ADC	#004H
		STA	!WBFPNT
;
		INC	<JRSBPT
		RTL
;
;
WGTOP900	EQU	$
		INC	!WRWPH0
		LDA	!WRWPH0
		CLC
		ADC	!WNYPL1
		CMP	#0E1H
		BCC	WGTOP980	; end ?
;					; yes
		STZ	!WBFPNT
		STZ	<GAMEMD
		STZ	<JRSBPT
;
;// 03.10.06 //		MEM16
;// 03.10.06 //		IDX16
;// 03.10.06 //		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<WDMAIN
		STZ	<WDSUB
;
		JSL	>HDMAOFF	; H-DMA off
;// 03.10.06 //		LDX	!UDSCKP3
;// 03.10.06 //		BEQ	WGTOP980	; UD-STEP (normal) check ?
;// 03.10.06 //;					; yes
;// 03.10.06 //		LDY	#00000H
;// 03.10.06 //WGTOP940	EQU	$
;// 03.10.06 //		LDX	!UDSCKB3,Y
;// 03.10.06 //		LDA	#00A0AH
;// 03.10.06 //		STA	>READBF+041H,X
;// 03.10.06 //		LDA	#00808H
;// 03.10.06 //		STA	>READBF+081H,X
;// 03.10.06 //		INY
;// 03.10.06 //		INY
;// 03.10.06 //		CPY	!UDSCKP3
;// 03.10.06 //		BNE	WGTOP940	; check end ?
;// 03.10.06 //;					; yes
WGTOP980	EQU	$
		RTL
;
;// 03.09.03 //;
;// 03.09.03 //;
;// 03.09.03 //;************************************************************************
;// 03.09.03 //;*		Water into 				(WTRINTO)	*
;// 03.09.03 //;************************************************************************
;// 03.09.03 //WROJDT		EQU	$
;// 03.09.03 //		WORD	061CDH,061CEH,021CEH,021CDH
;// 03.09.03 //		WORD	061DDH,061DEH,021DEH,021DDH
;// 03.09.03 //;
;// 03.09.03 //		WORD	021CDH,021CEH,061CEH,061CDH
;// 03.09.03 //		WORD	021DDH,021DEH,061DEH,061DDH
;// 03.09.03 //;
;// 03.09.03 //		WORD	061CAH,061CBH,021CBH,021CAH
;// 03.09.03 //		WORD	061DAH,061DBH,021DBH,021DAH
;// 03.09.03 //;
;// 03.09.03 //		WORD	021CAH,021CBH,061CBH,061CAH
;// 03.09.03 //		WORD	021DAH,021DBH,061DBH,061DAH
;// 03.09.03 //;
;// 03.09.03 //;
;// 03.09.03 //WTRINTO		EQU	$
;// 03.09.03 //		LDA	#008H*4
;// 03.09.03 //		JSL	>OAMENT3	; OAM used point get
;// 03.09.03 //;
;// 03.09.03 //		LDA	<FCNT
;// 03.09.03 //		AND	#00011000B
;// 03.09.03 //		ASL	A
;// 03.09.03 //		TAX			; (X) <-- obj. data point
;// 03.09.03 //;
;// 03.09.03 //		MEM16
;// 03.09.03 //		REP	#00100000B	; memory 16bit mode
;// 03.09.03 //;
;// 03.09.03 //		LDA	#00004H
;// 03.09.03 //		STA	<WORKE
;// 03.09.03 //		ASL	A
;// 03.09.03 //		STA	<WORKC
;// 03.09.03 //;
;// 03.09.03 //		LDA	!WINYPS
;// 03.09.03 //		SEC
;// 03.09.03 //		SBC	<SCCV2
;// 03.09.03 //		DEC	A
;// 03.09.03 //		STA	<WORK8
;// 03.09.03 //;
;// 03.09.03 //		LDA	!WINXPS
;// 03.09.03 //		SEC
;// 03.09.03 //		SBC	<SCCH2
;// 03.09.03 //WRIT100		EQU	$
;// 03.09.03 //		STA	<WORK4
;// 03.09.03 //		AND	#000FFH
;// 03.09.03 //		STA	<WORK6
;// 03.09.03 //;
;// 03.09.03 //		MEM8
;// 03.09.03 //		SEP	#00100000B	; memory 8bit mode
;// 03.09.03 //;
;// 03.09.03 //		PHY			; (Y) push
;// 03.09.03 //		TYA
;// 03.09.03 //		LSR	A
;// 03.09.03 //		LSR	A
;// 03.09.03 //		TAY
;// 03.09.03 //		LDA	#002H
;// 03.09.03 //		STA	!OAMSB2,Y
;// 03.09.03 //		PLY			; (Y) pull
;// 03.09.03 //;
;// 03.09.03 //		LDA	<WORK5
;// 03.09.03 //		ORA	<WORK9
;// 03.09.03 //		BNE	WRIT140		; erase ?
;// 03.09.03 //;					; no
;// 03.09.03 //		MEM16
;// 03.09.03 //		REP	#00100000B	; memory 16bit mode
;// 03.09.03 //;
;// 03.09.03 //		LDA	<WORK8
;// 03.09.03 //		CMP	#000FAH
;// 03.09.03 //		BCS	WRIT140		; set ok ?
;// 03.09.03 //;					; yes
;// 03.09.03 //		XBA
;// 03.09.03 //;/////		AND	#0FF00H
;// 03.09.03 //		ORA	<WORK6
;// 03.09.03 //		STA	!OAM2,Y		; X,Y position set
;// 03.09.03 //;
;// 03.09.03 //		LDA	>WROJDT,X
;// 03.09.03 //		STA	!OAM2+2,Y	; char. & atrb. set
;// 03.09.03 //		INY
;// 03.09.03 //		INY
;// 03.09.03 //		INY
;// 03.09.03 //		INY
;// 03.09.03 //WRIT140		EQU	$
;// 03.09.03 //		MEM16
;// 03.09.03 //		REP	#00100000B	; memory 16bit mode
;// 03.09.03 //;
;// 03.09.03 //		DEC	<WORKE
;// 03.09.03 //		BNE	WRIT160		;
;// 03.09.03 //;					;
;// 03.09.03 //		LDA	<WORK8
;// 03.09.03 //		CLC
;// 03.09.03 //		ADC	#00008H
;// 03.09.03 //		STA	<WORK8
;// 03.09.03 //		LDA	#00004H
;// 03.09.03 //		STA	<WORKE
;// 03.09.03 //;
;// 03.09.03 //		LDA	!WINXPS
;// 03.09.03 //		SEC
;// 03.09.03 //		SBC	<SCCH2
;// 03.09.03 //		SEC
;// 03.09.03 //		SBC	#00010H
;// 03.09.03 //		STA	<WORK4		; x-pos. reset
;// 03.09.03 //WRIT160		EQU	$
;// 03.09.03 //		LDA	<WORK4
;// 03.09.03 //		CLC
;// 03.09.03 //		ADC	#00010H
;// 03.09.03 //		INX
;// 03.09.03 //		INX
;// 03.09.03 //		DEC	<WORKC
;// 03.09.03 //		BNE	WRIT100		; end ?
;// 03.09.03 //;					; yes
;// 03.09.03 //		DEC	!WINMCT
;// 03.09.03 //		BNE	WRIT400		; y-pos. move
;// 03.09.03 //		LDA	#00004H
;// 03.09.03 //		STA	!WINMCT
;// 03.09.03 //;
;// 03.09.03 //		INC	!WINYPS
;// 03.09.03 //		LDA	!WINYPS
;// 03.09.03 //		AND	#0000FH
;// 03.09.03 //		BNE	WRIT300		; BG. write ?
;// 03.09.03 //;					; yes
;// 03.09.03 //		IDX16
;// 03.09.03 //		REP	#00010000B	; index 16bit mode
;// 03.09.03 //;
;// 03.09.03 //		LDA	!WINYPS
;// 03.09.03 //		AND	#001F8H
;// 03.09.03 //		ASL	A
;// 03.09.03 //		ASL	A
;// 03.09.03 //		ASL	A
;// 03.09.03 //		STA	<WORK4
;// 03.09.03 //		LDA	!WINXPS
;// 03.09.03 //		AND	#001F8H
;// 03.09.03 //		LSR	A
;// 03.09.03 //		LSR	A
;// 03.09.03 //		LSR	A
;// 03.09.03 //		ORA	<WORK4
;// 03.09.03 //		ASL	A
;// 03.09.03 //		TAX
;// 03.09.03 //		PHX			; (X) push
;// 03.09.03 //		LDY	#watrd1
;// 03.09.03 //		LDA	#00004H
;// 03.09.03 //		STA	<WORK0
;// 03.09.03 //WRIT200		EQU	$
;// 03.09.03 //		LDA	UNITDT+000H,Y
;// 03.09.03 //		STA	>BG1RBF+000H,X
;// 03.09.03 //		STA	>BG1RBF+008H,X
;// 03.09.03 //		LDA	UNITDT+008H,Y
;// 03.09.03 //		STA	>BG1RBF+080H,X
;// 03.09.03 //		STA	>BG1RBF+088H,X
;// 03.09.03 //		INY
;// 03.09.03 //		INY
;// 03.09.03 //		INX
;// 03.09.03 //		INX
;// 03.09.03 //		DEC	<WORK0
;// 03.09.03 //		BNE	WRIT200		; water BG. data set end ?
;// 03.09.03 //;					; yes
;// 03.09.03 //		PLX			; (X) pull
;// 03.09.03 //		LDA	#00002H
;// 03.09.03 //		LDY	#00008H
;// 03.09.03 //		JSR	BGCNGS3		; BG. change data set
;// 03.09.03 //WRIT300		EQU	$
;// 03.09.03 //		LDA	!WINYPS
;// 03.09.03 //		AND	#001FFH
;// 03.09.03 //		CMP	#001C0H
;// 03.09.03 //		BCC	WRIT400		; end ?
;// 03.09.03 //;					; yes
;// 03.09.03 //		MEM8
;// 03.09.03 //		IDX8
;// 03.09.03 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.09.03 //;
;// 03.09.03 //		STZ	!GAMEMD
;// 03.09.03 //		LDA	!NXSLMD
;// 03.09.03 //		STA	<SLMODE
;// 03.09.03 //;
;// 03.09.03 //		LDA	#002H
;// 03.09.03 //		STA	!CGSTPT+1
;// 03.09.03 //;// 02.10.30 //		JSL	>DJCGSET	; CG. reset
;// 03.09.03 //		INC	<CGVMAF
;// 03.09.03 //WRIT400		EQU	$
;// 03.09.03 //		MEM8
;// 03.09.03 //		IDX8
;// 03.09.03 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.09.03 //		RTL
;// 03.09.03 //;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Lamp main				(LAMPPL)	*
;************************************************************************
LMPP980		EQU	$
		STZ	!FIRENO
		RTL
;
;
LAMPPL1		EQU	$		; kona
		LDA	!FIRENO
		AND	#0F0H
		CMP	#0C0H
		BNE	LMPP980		; lamp code ?
;					; yes
		LDA	#000H
		BRA	LMPP20
;
LAMPPL		EQU	$		; kantera
		LDA	!FIRENO
		AND	#0F0H
		CMP	#0C0H
		BNE	LMPP980		; lamp code ?
;					; yes
		LDA	#0C0H
		LDY	<RMXYCT
		BNE	LMPP20		; ganon-room ?
;					; yes
		LDA	#080H
LMPP20		EQU	$
		STA	<WORK8
		STZ	<WORK9
		PHA			; (A) push
		PHB
		LDA	#000H
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!FIRENO
		AND	#0000FH
		ASL	A
		CLC
		ADC	!LMPDGP
		TAY
		LDA	!LMPDPT,Y
		AND	#000FFH
		TAX
		LDA	!LMPADR,Y
		ASL	A
		BCS	LMPP100		; lamp on ok ?
;					; yes
		LSR	A
		ORA	#08000H
		STA	!LMPADR,Y
		LDA	<WORK8
		BNE	LMPP40		; kona ?
;					; yes
		LDA	!LMPADR,Y
		STA	>LMPTBUF,X	; lamp fire on
LMPP40		EQU	$
		LDA	!LMPADR,Y
		AND	#03FFFH
		TAX
		STX	<WORK8
		PHX			; (X) push
		LDY	#firedt
;// 03.08.02 //		LDA	UNITDT+000H,Y
;// 03.08.02 //		STA	>ROOMBF+000H,X
;// 03.08.02 //		LDA	UNITDT+002H,Y
;// 03.08.02 //		STA	>ROOMBF+080H,X
;// 03.08.02 //		LDA	UNITDT+004H,Y
;// 03.08.02 //		STA	>ROOMBF+002H,X
;// 03.08.02 //		LDA	UNITDT+006H,Y
;// 03.08.02 //		STA	>ROOMBF+082H,X	; lamp fire set
;// 03.08.02 //;
;// 03.08.02 //		STZ	<WORKC
		JSR	BGCNGS10	; BG. change data set
;
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y	; end code set
;
		PLA			; (A) <-- (X) pull
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		AND	#01111111B
		ASL	A
		JSL	>SDLRCK		; sound L,R check
		ORA	#02AH
		STA	!SOUND2		; <sound2>
;
		PLB			; (DBR) reset
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
;
		LDA	>DARKFG
		BEQ	LMPP80		; now-dark ?
;					; yes
		LDA	!LGTWST
		INC	!LGTWST
;// 03.04.10 //		SEC
;// 03.04.10 //		SBC	!LGTWFG
;// 03.04.10 //		CMP	#003H
;// 03.04.10 //		BCS	LMPP80		; fade-in ?
;// 03.04.10 //;					; yes
		CMP	#003H
		BCS	LMPP80		; fire on ?
;					; yes
;// 03.04.25 //		CMP	#002H
;// 03.04.25 //		BNE	LMPP60		; normal color ?
;// 03.04.25 //;					; no
;// 03.04.10 //		LDA	#00000010B
;// 03.04.10 //		STA	<WD2130
;// 03.04.10 //		LDX	!LGTWFG
;// 03.04.10 //		STZ	!LGTWFG
;// 03.04.10 //		BNE	LMPP80		; fade-in ?
;// 03.04.10 //;					; yes
		STZ	<DPSUB
LMPP60		EQU	$
		LDX	!LGTWST
		LDA	>DARKDT,X
		STA	>DKRMCG

		LDA	#p1_ltwp
		STA	<GAMEMD
		STZ	<JRSBPT
LMPP80		EQU	$
		LDA	!FIRENO
		AND	#00001111B
		TAX
		PLA			; (A) pull
		STA	!LMPTMR,X	; lamp timer on
;
		STZ	!FIRENO
		RTL
;
;
LMPP100		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB			; (DBR) reset
		PLA			; (A) pull
		RTL
;
;
;
;************************************************************************
;*		Lamp off-0				(LAMPOFF0)	*
;************************************************************************
LAMPOFF0	EQU	$
		JSL	>PWTRCGS2	; 
;
		LDA	#0C0H
		STA	!FIRENO
		BRA	LAMPOFF
;
;************************************************************************
;*		Lamp off-1				(LAMPOFF1)	*
;************************************************************************
LAMPOFF1	EQU	$
		LDA	#0C1H
		STA	!FIRENO
;
;************************************************************************
;*		Lamp off				(LAMPOFF)	*
;************************************************************************
LAMPOFF		EQU	$
		LDA	#0C0H
		STA	<WORK8
		STZ	<WORK9
		PHA			; (A) push
		PHB
		LDA	#000H
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!FIRENO
		AND	#0000FH
		ASL	A
		CLC
		ADC	!LMPDGP
		TAY
		LDA	!LMPDPT,Y
		AND	#000FFH
		TAX
		LDA	!LMPADR,Y
		ASL	A
		LSR	A
		STA	!LMPADR,Y
		STA	>LMPTBUF,X	; lamp fire on
;
		AND	#03FFFH
		TAX
		STX	<WORK8
		LDY	#smldid
;// 03.08.02 //		LDA	UNITDT+000H,Y
;// 03.08.02 //		STA	>ROOMBF+000H,X
;// 03.08.02 //		LDA	UNITDT+002H,Y
;// 03.08.02 //		STA	>ROOMBF+080H,X
;// 03.08.02 //		LDA	UNITDT+004H,Y
;// 03.08.02 //		STA	>ROOMBF+002H,X
;// 03.08.02 //		LDA	UNITDT+006H,Y
;// 03.08.02 //		STA	>ROOMBF+082H,X	; lamp fire set
;// 03.08.02 //;
;// 03.08.02 //		STZ	<WORKC
		JSR	BGCNGS10	; BG. change data set
;
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y	; end code set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB			; (DBR) reset
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
;
		LDA	>DARKFG
		BEQ	LMPP180		; now-dark ?
;					; yes
		LDA	!LGTWST
		BEQ	LMPP180		;
;					;
		DEC	A
		STA	!LGTWST
		CMP	#003H
		BCS	LMPP180		; kantera check ?
;					; yes
		CMP	#000H
		BNE	LMPP160		; kantera on ?
;					; yes
;// 03.04.25 //		LDA	!LGTWFG
;// 03.04.25 //		BEQ	LMPP160		; kantera on ?
;// 03.04.25 //;					; yes
		LDA	#00000001B
		STA	<DPSUB
;// 03.04.10 //		SEC
;// 03.04.10 //		SBC	!LGTWFG
;// 03.04.10 //		CMP	#003H
;// 03.04.10 //		BCS	LMPP180		; fade-in ?
;// 03.04.10 //;					; yes
;// 03.04.10 //		CMP	#002H
;// 03.04.10 //		BNE	LMPP160		; normal color ?
;// 03.04.10 //;					; no
;// 03.04.10 //		LDA	#00000010B
;// 03.04.10 //		STA	<WD2130
;// 03.04.10 //		LDX	!LGTWFG
;// 03.04.10 //		STZ	!LGTWFG
;// 03.04.10 //		BNE	LMPP180		; fade-in ?
;// 03.04.10 //;					; yes
LMPP160		EQU	$
		LDX	!LGTWST
		LDA	>DARKDT,X
		STA	>DKRMCG
;
		LDA	#p1_ltwp
		STA	<GAMEMD
		STZ	<JRSBPT
LMPP180		EQU	$
		LDA	!FIRENO
		AND	#00001111B
		TAX
		PLA			; (A) pull
		STZ	!LMPTMR,X	; lamp timer off
;
		STZ	!FIRENO
		RTL
;
;
;
;
;************************************************************************
;*		Rasen BG. rewrite			(RASENW0)	*
;************************************************************************
RASENW0		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.02.12 //		LDA	<PLYPS0
;// 03.02.12 //		AND	#00001H
;// 03.02.12 //		TAY
;// 03.02.12 //;
;// 03.02.12 //		LDA	<PLXPS1
;// 03.02.12 //		CLC
;// 03.02.12 //		ADC	#00010H
;// 03.02.12 //		AND	#00180H
;// 03.02.12 //		ASL	A
;// 03.02.12 //		XBA
;// 03.02.12 //		DEC	A
;// 03.02.12 //		ASL	A
;// 03.02.12 //		CPY	#00000H
;// 03.02.12 //		BEQ	RASN020		;
;// 03.02.12 //;					;
;// 03.02.12 //		CLC
;// 03.02.12 //		ADC	#0000CH
;// 03.02.12 //RASN020		EQU	$
;// 03.02.12 //		TAX
;// 03.02.12 //		LDA	>UPADR0,X
;// 03.02.12 //		SEC
;// 03.02.12 //		SBC	#00006H+00008H
;// 03.02.12 //		TAX
;// 03.02.12 //		LDA	<DPMAIN
;// 03.02.12 //		AND	#00010H
;// 03.02.12 //		BNE	RASN030		; normal ?
;// 03.02.12 //;					; no
;// 03.02.12 //		TXA
;// 03.02.12 //		CLC
;// 03.02.12 //		ADC	#00180H
;// 03.02.12 //		TAX
;
;// 03.02.19 //		LDA	<PLYPS1
;// 03.02.19 //		SEC
;// 03.02.19 //		SBC	#00010H
;// 03.02.19 //		AND	#000F8H
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		STA	<WORK0
;// 03.02.19 //		LDA	<PLYPS1
;// 03.02.19 //		AND	#00100H
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		TSB	<WORK0
;// 03.02.19 //		LDA	<PLXPS1
;// 03.02.19 //		SEC
;// 03.02.19 //		SBC	#00040H
;// 03.02.19 //		STA	<WORK2
;// 03.02.19 //		AND	#000F8H
;// 03.02.19 //		LSR	A
;// 03.02.19 //		LSR	A
;// 03.02.19 //		TSB	<WORK0
;// 03.02.19 //		LDA	<WORK2
;// 03.02.19 //		AND	#00100H
;// 03.02.19 //		LSR	A
;// 03.02.19 //		LSR	A
;// 03.02.19 //		ORA	<WORK0
;// 03.02.19 //		TAX
;// 03.02.19 //;
;// 03.02.19 //		LDA	<PLBGCKF
;// 03.02.19 //		AND	#000FFH
;// 03.02.19 //		BEQ	RASN030		; BG.1 ?
;// 03.02.19 //;					; yes
;// 03.02.19 //		TXA
;// 03.02.19 //		CLC
;// 03.02.19 //		ADC	#02180H
;// 03.02.19 //		TAX
;// 03.02.19 //RASN030		EQU	$
;
		LDA	!STPFLG
		AND	#00003H
		ASL	A
		TAY
		LDA	!USCKBF,Y
		ASL	A
		SEC
		SBC	#00006H+00002H
		TAX
		STX	!RSNADR
		STX	<WORK8
;
		PHX			; (X) push
		LDY	#00004H
RASN040		EQU	$
		LDA	>ROOMBF+000H,X
		ORA	#02000H
		STA	>ROOMBF+000H,X
		LDA	>ROOMBF+080H,X
		ORA	#02000H
		STA	>ROOMBF+080H,X
		LDA	>ROOMBF+100H,X
		ORA	#02000H
		STA	>ROOMBF+100H,X
		LDA	>ROOMBF+180H,X
		ORA	#02000H
		STA	>ROOMBF+180H,X
		INX
		INX
		DEY
		BPL	RASN040		;
;					;
;// 03.08.02 //		STZ	<WORKC
		JSR	BGCNGS11	; BG. change data set
		PLA			; (A) pull
		CLC
		ADC	#00008H
		STA	<WORK8
		JSR	BGCNGS1		; BG. change data set
;
		JMP	BGCWEND		; end code set
;// 03.05.31 //		LDY	<WORKC
;// 03.05.31 //		LDA	#0FFFFH
;// 03.05.31 //		STA	!BGCWBF,Y
;// 03.05.31 //;
;// 03.05.31 //		MEM8
;// 03.05.31 //		IDX8
;// 03.05.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.31 //;
;// 03.05.31 //		LDA	#001H
;// 03.05.31 //		STA	<BGCHFG
;// 03.05.31 //		RTL
;
;
;************************************************************************
;*		Rasen BG. rewrite			(RASENW1)	*
;************************************************************************
RASENW1		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.02.12 //		LDA	<PLYPS0
;// 03.02.12 //		AND	#00001H
;// 03.02.12 //		TAY
;// 03.02.12 //;
;// 03.02.12 //		LDA	<PLXPS1
;// 03.02.12 //		CLC
;// 03.02.12 //		ADC	#00010H
;// 03.02.12 //		AND	#00180H
;// 03.02.12 //		ASL	A
;// 03.02.12 //		XBA
;// 03.02.12 //		DEC	A
;// 03.02.12 //		ASL	A
;// 03.02.12 //		CPY	#00000H
;// 03.02.12 //		BEQ	RASN120		;
;// 03.02.12 //;					;
;// 03.02.12 //		CLC
;// 03.02.12 //		ADC	#0000CH
;// 03.02.12 //RASN120		EQU	$
;// 03.02.12 //		TAX
;// 03.02.12 //		LDA	>UPADR0,X
;// 03.02.12 //		SEC
;// 03.02.12 //		SBC	#00006H+00008H
;// 03.02.12 //		TAX
;// 03.02.12 //		LDA	!STPDPT
;// 03.02.12 //		AND	#0000FH
;// 03.02.12 //		BEQ	RASN130		; normal ?
;// 03.02.12 //;					; no
;// 03.02.12 //		TXA
;// 03.02.12 //		CLC
;// 03.02.12 //		ADC	#00180H
;// 03.02.12 //		TAX
;
;// 03.02.19 //		LDA	<PLYPS1
;// 03.02.19 //		SEC
;// 03.02.19 //		SBC	#00010H
;// 03.02.19 //		AND	#000F8H
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		STA	<WORK0
;// 03.02.19 //		LDA	<PLYPS1
;// 03.02.19 //		AND	#00100H
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		ASL	A
;// 03.02.19 //		TSB	<WORK0
;// 03.02.19 //		LDA	<PLXPS1
;// 03.02.19 //		SEC
;// 03.02.19 //		SBC	#00038H
;// 03.02.19 //		STA	<WORK2
;// 03.02.19 //		AND	#000F8H
;// 03.02.19 //		LSR	A
;// 03.02.19 //		LSR	A
;// 03.02.19 //		TSB	<WORK0
;// 03.02.19 //		LDA	<WORK2
;// 03.02.19 //		AND	#00100H
;// 03.02.19 //		LSR	A
;// 03.02.19 //		LSR	A
;// 03.02.19 //		ORA	<WORK0
;// 03.02.19 //		TAX
;// 03.02.19 //;
;// 03.02.19 //		LDA	<PLBGCKF
;// 03.02.19 //		AND	#000FFH
;// 03.02.19 //		BEQ	RASN130		; BG.1 ?
;// 03.02.19 //;					; yes
;// 03.02.19 //		TXA
;// 03.02.19 //		CLC
;// 03.02.19 //		ADC	#02180H
;// 03.02.19 //		TAX
;// 03.02.19 //RASN130		EQU	$
;
		LDX	!RSNADR
		STX	<WORK8
;
		PHX			; (X) push
		LDY	#00004H
RASN140		EQU	$
		LDA	>ROOMBF+000H,X
		AND	#0DFFFH
		STA	>ROOMBF+000H,X
		LDA	>ROOMBF+080H,X
		AND	#0DFFFH
		STA	>ROOMBF+080H,X
		LDA	>ROOMBF+100H,X
		AND	#0DFFFH
		STA	>ROOMBF+100H,X
		LDA	>ROOMBF+180H,X
		AND	#0DFFFH
		STA	>ROOMBF+180H,X
		INX
		INX
		DEY
		BPL	RASN140		; 
;					;
;// 03.08.02 //		STZ	<WORKC
		JSR	BGCNGS11	; BG. change data set
		PLA			; (A) pull
		CLC
		ADC	#00008H
		STA	<WORK8
		JSR	BGCNGS1		; BG. change data set
;
		JMP	BGCWEND		; end code set
;// 03.05.31 //		LDY	<WORKC
;// 03.05.31 //		LDA	#0FFFFH
;// 03.05.31 //		STA	!BGCWBF,Y
;// 03.05.31 //;
;// 03.05.31 //		MEM8
;// 03.05.31 //		IDX8
;// 03.05.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.31 //;
;// 03.05.31 //		LDA	#001H
;// 03.05.31 //		STA	<BGCHFG
;// 03.05.31 //		RTL
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ganon exit enter open			(GNNOPEN)	*
;************************************************************************
GNNEEDT		EQU	$
		WORD	gnnkz8,gnnkz9,gnnkzA,gnnkzB
;
;
GNNOP80		EQU	$
		RTL
;
;
GNNOPEN		EQU	$
		LDA	#001H
		STA	!PYALSP
;
		LDA	<CWORK0
		ORA	<CWORK1
		BEQ	GNNOP00		;
;					;
		DEC	<CWORK0
		BNE	GNNOP80		;
;					;
		DEC	<CWORK1
		BNE	GNNOP80		;
;					;
		LDA	#015H
		STA	!SOUND1		; <sound1>
		STZ	!KNPASFG
		STZ	<PYMKFG
GNNOP00		EQU	$
		STZ	!PYALSP
		INC	<JRSBPT
		LDA	<JRSBPT
		AND	#00000011B
		BNE	GNNOP80		; open ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<JRSBPT
		SEC
		SBC	#004H
		LSR	A
		TAX
		LDA	>GNNEEDT,X
		TAY
		LDX	#00000H
GNNOP20		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+1D8H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+258H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+2D8H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+358H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		CPX	#00010H
		BNE	GNNOP20		; set end ?
;					; yes
		LDA	#00008H
		STA	<WORKA
		LDA	#00881H
		STA	<WORK6
		LDX	#001D8H
		STX	<WORK8
		STZ	<WORKC
		LDY	<WORKC		; (Y) <-- buffer set pointer
		JSR	BGCG120
		LDY	<WORKC
		LDA	#0FFFFH
		STA	!BGCWBF,Y
;
		LDA	<JRSBPT
		CMP	#00010H
		BNE	GNNOP40		; open end ?
;					; yes
		LDA	#00202H
		STA	>READBF+2D8H/2
		STA	>READBF+358H/2
		LDA	#00200H
		STA	>READBF+2E4H/2
		STA	>READBF+364H/2
;
		LDX	#00000H
		LDA	#00000H
GNNOP30		EQU	$
		STA	>READBF+05AH/2,X
		STA	>READBF+0DAH/2,X
		STA	>READBF+15AH/2,X
		STA	>READBF+1DAH/2,X
		STA	>READBF+25AH/2,X
		STA	>READBF+2DAH/2,X
		STA	>READBF+35AH/2,X
		INX
		INX
		CPX	#00006H
		BNE	GNNOP30		; code set end ?
;					; yes
		LDA	#0FFC0H
		STA	!SCVU
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<GAMEMD
		STZ	<JRSBPT
GNNOP40		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#001H
		STA	<BGCHFG		; BG. change flag on
		RTL
;
;
;
;
;************************************************************************
;*		BG. change sub				(BGCNGSB)	*
;************************************************************************
		MEM16
		IDX16
BGCNGSB		EQU	$
		LDA	#00004H
		STA	<WORKA
		LDY	<WORKC		; (Y) <-- buffer set pointer
;
		LDA	#00080H
		STA	<WORK6
		LDA	<WORK8
		AND	#0003FH
		CMP	#0003AH
		BCC	BGCGS20		; yoko write ?
;					; no
		INC	<WORK6
BGCGS20		EQU	$
		LDX	<WORK8
		TXA
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK0
		TXA
		AND	#0303FH
		LSR	A
		STA	<WORK2
		TXA
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK0
		ORA	<WORK2
;// 02.09.21 //		ORA	#01000H
		STA	!BGCWBF+000H,Y	; VRAM address set
;
		LDX	!RWBFPT
		LDA	!RWBUFF+000H,X
		STA	!BGCWBF+004H,Y
		LDA	<WORK6
		STA	!BGCWBF+002H,Y
		LSR	A
		BCS	BGCGS40		; yoko ?
;					; yes
		LDA	!RWBUFF+002H,X
		STA	!BGCWBF+006H,Y
		LDA	!RWBUFF+004H,X
		STA	!BGCWBF+008H,Y
		LDA	!RWBUFF+006H,X
		STA	!BGCWBF+00AH,Y	; write data set
		LDA	<WORK8
		CLC
		ADC	#00080H
		STA	<WORK8
		TXA
		CLC
		ADC	#00008H
		TAX
		BRA	BGCGS80
;
BGCGS40		EQU	$
		LDA	!RWBUFF+008H,X
		STA	!BGCWBF+006H,Y
		LDA	!RWBUFF+010H,X
		STA	!BGCWBF+008H,Y
		LDA	!RWBUFF+018H,X
		STA	!BGCWBF+00AH,Y	; write data set
		INC	<WORK8
		INC	<WORK8
		INX
		INX
BGCGS80		EQU	$
		STX	!RWBFPT
		TYA
		CLC
		ADC	#0000CH
		TAY
		DEC	<WORKA
		BNE	BGCGS20		; 1-unit set ?
;					; yes
		RTS
;
;
;************************************************************************
;*		BG. change sub				(BGCNGS1)	*
;************************************************************************
		MEM16
		IDX16
BGCNGS10	EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+002H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+082H,X	; lamp fire set
BGCNGS11	EQU	$
		STZ	<WORKC
BGCNGS1		EQU	$
		LDA	#00004H
		STA	<WORKA
		LDY	<WORKC		; (Y) <-- buffer set pointer
;
		LDA	#00880H
		STA	<WORK6
		LDA	<WORK8
		AND	#0003FH
		CMP	#0003AH
		BCC	BGCG120		; yoko write ?
;					; no
		INC	<WORK6
BGCG120		EQU	$
		LDX	<WORK8
		TXA
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK0
		TXA
		AND	#0303FH
		LSR	A
		ORA	<WORK0
		STA	<WORK0
		TXA
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK0
;// 02.09.21 //		ORA	#01000H
		STA	!BGCWBF+000H,Y	; VRAM address set
;
		LDA	>ROOMBF+000H,X
		STA	!BGCWBF+004H,Y
		LDA	<WORK6
		STA	!BGCWBF+002H,Y
		LSR	A
		BCS	BGCG140		; yoko ?
;					; yes
		LDA	>ROOMBF+002H,X
		STA	!BGCWBF+006H,Y
		LDA	>ROOMBF+004H,X
		STA	!BGCWBF+008H,Y
		LDA	>ROOMBF+006H,X
		STA	!BGCWBF+00AH,Y	; write data set
 		LDA	<WORK8
 		CLC
 		ADC	#00080H
 		STA	<WORK8
		BRA	BGCG180
;
BGCG140		EQU	$
		LDA	>ROOMBF+080H,X
		STA	!BGCWBF+006H,Y
		LDA	>ROOMBF+100H,X
		STA	!BGCWBF+008H,Y
		LDA	>ROOMBF+180H,X
		STA	!BGCWBF+00AH,Y	; write data set
		INC	<WORK8
		INC	<WORK8
BGCG180		EQU	$
		TYA
		CLC
		ADC	#0000CH
		TAY
		DEC	<WORKA
		BNE	BGCG120		; 1-unit set ?
;					; yes
		STY	<WORKC
		RTS
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		BG. change sub				(BGCNGS2)	*
;************************************************************************
BGCG2D		EQU	$-2
		WORD	00002H*02H,00002H*04H,00002H*06H,00002H*08H,00002H*0AH,00002H*0CH,00002H*0EH,00002H*10H
		WORD	00080H*02H,00080H*04H,00080H*06H,00080H*08H,00080H*0AH,00080H*0CH,00080H*0EH,00080H*10H
;
;
BGCNGS2		EQU	$
		LDA	#00080H
		STA	<WORK6
		STZ	<WORKE
		LDA	!CWLFLG
		CLC
		ADC	#00003H
		STA	<WORKA
		SEC
		SBC	#00006H
		CMP	#00002H
		BMI	BGCG210		;
;					;
		STA	<WORK2
		INC	<WORKE
		LDA	#00003H
		STA	<WORKA
BGCG210		EQU	$
		LDY	<WORKC		; (Y) <-- buffer set pointer
		LDX	!DORPNT
		LDA	!DORFLG,X
		AND	#00002H
		BNE	BGCG220		; up,down wall ?
;					; yes
		INC	<WORK6
BGCG220		EQU	$
		LDX	<WORK8
		TXA
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK0
		TXA
		AND	#0303FH
		LSR	A
		ORA	<WORK0
		STA	<WORK0
		TXA
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK0
;// 02.09.21 //		ORA	#01000H
		STA	!BGCWBF+000H,Y	; VRAM address set
		PHA			; (A) push
;
		LDA	>ROOMBF+000H,X
		STA	!BGCWBF+004H,Y
;
;// 03.08.29 //		LDA	<WORK6
;// 03.08.29 //		LSR	A
;// 03.08.29 //		BCC	BGCG240		; tate write ?
;// 03.08.29 //;					; yes
		LDA	<WORK6
		ORA	#00A00H
		STA	!BGCWBF+002H,Y
		LDA	<WORK6
		ORA	#00E00H
		STA	!BGCWBF+010H,Y
;
		PLA			; (A) pull
		CLC
		ADC	#004A0H
		STA	!BGCWBF+00EH,Y	; VRAM address set
;
		LDA	>ROOMBF+080H,X
		STA	!BGCWBF+006H,Y
		LDA	>ROOMBF+100H,X
		STA	!BGCWBF+008H,Y
		LDA	>ROOMBF+180H,X
		STA	!BGCWBF+00AH,Y
		LDA	>ROOMBF+200H,X
		STA	!BGCWBF+00CH,Y
		LDA	>ROOMBF+280H,X
		STA	!BGCWBF+012H,Y
		LDA	>ROOMBF+300H,X
		STA	!BGCWBF+014H,Y
		LDA	>ROOMBF+380H,X
		STA	!BGCWBF+016H,Y
		LDA	>ROOMBF+400H,X
		STA	!BGCWBF+018H,Y
		LDA	>ROOMBF+480H,X
		STA	!BGCWBF+01AH,Y
		LDA	>ROOMBF+500H,X
		STA	!BGCWBF+01CH,Y
		LDA	>ROOMBF+580H,X
		STA	!BGCWBF+01EH,Y	; write data set
;
		INC	<WORK8
		INC	<WORK8
;// 03.08.29 //		BRA	BGCG260
;// 03.08.29 //;
;// 03.08.29 //BGCG240		EQU	$
;// 03.08.29 //		LDA	<WORK6
;// 03.08.29 //		ORA	#00C00H
;// 03.08.29 //		STA	!BGCWBF+002H,Y
;// 03.08.29 //		STA	!BGCWBF+010H,Y
;// 03.08.29 //;
;// 03.08.29 //		PLA			; (A) pull
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#003E5H
;// 03.08.29 //		STA	!BGCWBF+010H,Y	; VRAM address set
;// 03.08.29 //;
;// 03.08.29 //		LDA	>ROOMBF+002H,X
;// 03.08.29 //		STA	!BGCWBF+006H,Y
;// 03.08.29 //		LDA	>ROOMBF+004H,X
;// 03.08.29 //		STA	!BGCWBF+008H,Y
;// 03.08.29 //		LDA	>ROOMBF+006H,X
;// 03.08.29 //		STA	!BGCWBF+00AH,Y
;// 03.08.29 //		LDA	>ROOMBF+008H,X
;// 03.08.29 //		STA	!BGCWBF+00CH,Y
;// 03.08.29 //		LDA	>ROOMBF+00AH,X
;// 03.08.29 //		STA	!BGCWBF+00EH,Y
;// 03.08.29 //		LDA	>ROOMBF+00CH,X
;// 03.08.29 //		STA	!BGCWBF+014H,Y
;// 03.08.29 //		LDA	>ROOMBF+00EH,X
;// 03.08.29 //		STA	!BGCWBF+016H,Y
;// 03.08.29 //		LDA	>ROOMBF+010H,X
;// 03.08.29 //		STA	!BGCWBF+018H,Y
;// 03.08.29 //		LDA	>ROOMBF+012H,X
;// 03.08.29 //		STA	!BGCWBF+01AH,Y
;// 03.08.29 //		LDA	>ROOMBF+014H,X
;// 03.08.29 //		STA	!BGCWBF+01CH,Y
;// 03.08.29 //		LDA	>ROOMBF+016H,X
;// 03.08.29 //		STA	!BGCWBF+01EH,Y	; write data set
;// 03.08.29 //;
;// 03.08.29 //		LDA	<WORK8
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00080H
;// 03.08.29 //		STA	<WORK8
;// 03.08.29 //BGCG260		EQU	$
		TYA
		CLC
		ADC	#00020H
		TAY
		DEC	<WORKA
		BEQ	BGCG280		; 1-unit set ?
;					; yes
		JMP	BGCG220
;
BGCG280		EQU	$
		LDA	<WORKE
		BEQ	BGCG299		; end ?
;					; no
		DEC	<WORKE
		LDX	<WORK2
		LDA	<WORK6
		LSR	A
		BCS	BGCG290		;
;					;
		TXA
		CLC
		ADC	#00010H
		TAX
BGCG290		EQU	$
		LDA	>BGCG2D,X
		CLC
		ADC	<WORK8
		STA	<WORK8
		LDA	#00003H
		STA	<WORKA
		JMP	BGCG220
;
BGCG299		EQU	$
		STY	<WORKC
		RTS
;
;
;
;************************************************************************
;*		BG. change sub				(BGCNGS3)	*
;************************************************************************
BGCNGS3		EQU	$
		STA	<WORKC
		STY	<WORKE
		STY	<WORKA
;
		LDY	#00000H
BGCG340		EQU	$
		TXA
		AND	#00040H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	<WORK0
		TXA
		AND	#0303FH
		LSR	A
		STA	<WORK2
		TXA
		AND	#00F80H
		LSR	A
		LSR	A
		ORA	<WORK0
		ORA	<WORK2
		XBA
		STA	!VRAMD+2,Y
		LDA	#00100H
		STA	!VRAMD+4,Y
		LDA	>BG1RBF+000H,X
		STA	!VRAMD+6,Y
		INY
		INY
		INY
		INY
		INY
		INY
		INX
		INX
		DEC	<WORKE
		BNE	BGCG340		; 1-line end ?
;					; yes
		LDA	<WORKA
		STA	<WORKE
		TXA
		CLC
		ADC	#00070H
		TAX
		DEC	<WORKC
		BNE	BGCG340		; end ?
;					; yes
		LDA	#0FFFFH
		STA	!VRAMD+2,Y	; end code set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		RTS
;
;
;
;
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&		Rewtite							&
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;************************************************************************
;*		Rewrite BG.2 House making		(RWB2MK)	*
;************************************************************************
RWB2MK		EQU	$
RB2M040		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<XSTCNT
		STZ	<YSTCNT
;
		LDY	<DTRDPT		; (Y) <-- data read pointer
		LDA	[<DTBFWK],Y
		CMP	#0FFFFH
		BEQ	RB2M999		; data end ?
;					; no
		STA	<WORK0
		JSR	RB2M200
;
		BRA	RB2M040
;
;
RB2M999		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
		IDX16
RB2M200		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	[<DTBFWK],Y
		AND	#11111100B
		STA	<WORK8
		INY
		INY
		LDA	[<DTBFWK],Y
		STA	<WORK4
		STZ	<WORK5
		LDA	<WORK1
		LSR	A
		LSR	A
		LSR	A
		ROR	<WORK8
		STA	<WORK9		; (work8,9) <-- set address
		INY
		STY	<DTRDPT
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<WORK4
		LDX	<WORK8
		CMP	#HLWK0
		BNE	RWYUKA		; hole set ?
;					; yes
;
;
;************************************************************************
;*		Rewrite 4x4 Hole set (WAKU)		(RWHOLE)	*
;************************************************************************
RWHOLE		EQU	$
		LDY	#holedt
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+080H,X
		STA	>ROOMBF+082H,X
		STA	>ROOMBF+084H,X
		STA	>ROOMBF+086H,X
		STA	>ROOMBF+100H,X
		STA	>ROOMBF+102H,X
		STA	>ROOMBF+104H,X
		STA	>ROOMBF+106H,X
;
		LDY	#wakud0
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+000H,X
		STA	>ROOMBF+002H,X
		STA	>ROOMBF+004H,X
		STA	>ROOMBF+006H,X
;
		LDY	#wakud1
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+180H,X
		STA	>ROOMBF+182H,X
		STA	>ROOMBF+184H,X
		STA	>ROOMBF+186H,X
		RTS
;
;
;
;
;************************************************************************
;*		Rewrite 4x4 yuka			(RWYUKA)	*
;************************************************************************
RWYUKA		EQU	$
		LDY	!B2FLNO
		LDA	FLORDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	>ROOMBF+004H,X
		STA	>ROOMBF+100H,X
		STA	>ROOMBF+104H,X
		LDA	FLORDT+002H,Y
		STA	>ROOMBF+002H,X
		STA	>ROOMBF+006H,X
		STA	>ROOMBF+102H,X
		STA	>ROOMBF+106H,X
		LDA	FLORDT+008H,Y
		STA	>ROOMBF+080H,X
		STA	>ROOMBF+084H,X
		STA	>ROOMBF+180H,X
		STA	>ROOMBF+184H,X
		LDA	FLORDT+00AH,Y
		STA	>ROOMBF+082H,X
		STA	>ROOMBF+086H,X
		STA	>ROOMBF+182H,X
		STA	>ROOMBF+186H,X
		RTS
;
;
;
;
;
;************************************************************************
;*		Rewrite Up Shutter-door set		(SRWUDRST)	*
;************************************************************************
SRWUDRST	EQU	$
		LDA	!DORPNT
		AND	#000FFH
		STA	<WORK4
		BRA	RWUDR40
;
;
;************************************************************************
;*		Rewrite Up door set			(RWUDRST)	*
;************************************************************************
RWUDRST		EQU	$
		LDA	!DORPNT
		PHA			; (A) push
		AND	#0000FH
		STA	<WORK4
;
		TXA
		AND	#01FFFH
		CMP	UPADR0+00CH
		BCC	RWUDR20		; down door set ?
;					; yes
		TXA
		SEC
		SBC	#00500H
		STA	<WORK8
		PHX			; (X) push
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		CMP	#ud_dor
		BCC	RWUDR10		; under-door,shutter ?
;					; yes
		LDA	<WORK8
		SEC
		SBC	#00300H
		STA	<WORK8
RWUDR10		EQU	$
		LDA	!DORPNT
		EOR	#00010H
		STA	!DORPNT
		JSR	RWDDR40		; down door write
		JSR	BGCNGS1		; BG. change data set
		LDY	!DORPNT
		JSR	DCCN100		; door code change
;
		PLX			; (X) pull
		STX	<WORK8
RWUDR20		EQU	$
		PLA			; (A) pull
		STA	!DORPNT
RWUDR40		EQU	$
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		LDX	!DOPCNO
		BEQ	RWUDR45		;
;					;
;<< 03.03.28 >>		CPX	#00006H
		CPX	#00004H
		BEQ	RWUDR45		;
;					;
;<< 03.03.28 >>		LDY	UDOPNDD,X
;<< 03.03.28 >>		CMP	#ud_dor
;<< 03.03.28 >>		BCC	RWUDR50		; under-door,shutter ?
;<< 03.03.28 >>;					; yes
;<< 03.03.28 >>		LDY	UDOPNDD+4,X
		CMP	#ky4_dr
		BEQ	RWUDR41		; D-rasen ?
;					; no
		CMP	#ky5_dr
		BEQ	RWUDR41		; D-rasen ?
;					; no
		CMP	#ud_dor
		BCC	RWUDR42		; under_door ?
;					; yes
RWUDR41		EQU	$
		INX
		INX
		INX
		INX
RWUDR42		EQU	$
		CMP	#sht_dr
		BEQ	RWUDR43		; shutter ?
;					; no
		CMP	#ud_sht
		BNE	RWUDR44		; under_shutter ?
;					; yes
RWUDR43		EQU	$
		INX
		INX
RWUDR44		EQU	$
		LDY	UDOPNDD,X
		BRA	RWUDR50
;
RWUDR45		EQU	$
		JSR	RWDDGT		; rewrite door data get
;
		LDY	UDRTBL,X
RWUDR50		EQU	$
		LDX	!DORPNT
		LDA	!DORADR,X
		TAX
		LDA	#00004H
		STA	<WORKE
RWUDR60		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		TYA
		CLC
		ADC	#00006H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	RWUDR60		; unit set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Rewrite Down Shutter-door set		(SRWDDRST)	*
;************************************************************************
SRWDDRST	EQU	$
		LDA	!DORPNT
		AND	#000FFH
		STA	<WORK4
		BRA	RWDDR40
;
;
;************************************************************************
;*		Rewrite Down door set			(RWDDRST)	*
;************************************************************************
RWDDRST		EQU	$
		LDA	!DORPNT
		PHA			; (A) push
		AND	#0000FH
		STA	<WORK4
;
		TXA
		AND	#01FFFH
		CMP	DNADR0+012H
		BCS	RWDDR20		; up door set ?
;					; yes
		TXA
		CLC
		ADC	#00500H
		STA	<WORK8
		PHX			; (X) push
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		CMP	#ud_dor
		BCC	RWDDR10		; under-door,shutter ?
;					; yes
		LDA	<WORK8
		CLC
		ADC	#00300H
		STA	<WORK8
RWDDR10		EQU	$
		LDA	!DORPNT
		EOR	#00010H
		STA	!DORPNT
		JSR	RWUDR40		; up door write
		JSR	BGCNGS1		; BG. change data set
		LDY	!DORPNT
		JSR	DCCN100		; door code change
;
		PLX			; (X) pull
		STX	<WORK8
RWDDR20		EQU	$
		PLA			; (A) pull
		STA	!DORPNT
RWDDR40		EQU	$
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		LDX	!DOPCNO
		BEQ	RWDDR45		;
;					;
;<< 03.03.28 >>		CPX	#00006H
		CPX	#00004H
		BEQ	RWDDR45		;
;					;
;<< 03.03.28 >>		LDY	DDOPNDD,X
;<< 03.03.28 >>		CMP	#ud_dor
;<< 03.03.28 >>		BCC	RWDDR50		; under-door,shutter ?
;<< 03.03.28 >>;					; yes
;<< 03.03.28 >>		LDY	DDOPNDD+4,X
		CMP	#ud_dor
		BCC	RWDDR42		; under_door ?
;					; yes
		INX
		INX
		INX
		INX
RWDDR42		EQU	$
		CMP	#sht_dr
		BEQ	RWDDR43		; shutter ?
;					; no
		CMP	#ud_sht
		BNE	RWDDR44		; under_shutter ?
;					; yes
RWDDR43		EQU	$
		INX
		INX
RWDDR44		EQU	$
		LDY	DDOPNDD,X
		BRA	RWDDR50
;
RWDDR45		EQU	$
		JSR	RWDDGT		; rewrite door data get
;
		LDY	DDRTBL,X
RWDDR50		EQU	$
		LDX	!DORPNT
		LDA	!DORADR,X
		TAX
		LDA	#00004H
		STA	<WORKE
RWDDR60		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+100H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+180H,X
		TYA
		CLC
		ADC	#00006H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	RWDDR60		; unit set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Rewrite Left Shutter-door set		(SRWLDRST)	*
;************************************************************************
SRWLDRST	EQU	$
		LDA	!DORPNT
		AND	#000FFH
		STA	<WORK4
		BRA	RWLDR40
;
;
;************************************************************************
;*		Rewrite Left door set			(RWLDRST)	*
;************************************************************************
RWLDRST		EQU	$
		LDA	!DORPNT
		PHA			; (A) push
		AND	#0000FH
		STA	<WORK4
;
		TXA
		AND	#007FFH
		CMP	LFADR0+00CH
		BCC	RWLDR20		; right door set ?
;					; yes
		TXA
		SEC
		SBC	#00010H
		STA	<WORK8
		PHX			; (X) push
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		CMP	#ud_dor
		BCC	RWLDR10		; under-door,shutter ?
;					; yes
		LDA	<WORK8
		SEC
		SBC	#0000CH
		STA	<WORK8
RWLDR10		EQU	$
		LDA	!DORPNT
		EOR	#00010H
		STA	!DORPNT
		JSR	RWRDR40		; right door write
		JSR	BGCNGS1		; BG. change data set
		LDY	!DORPNT
		JSR	DCCN100		; door code change
;
		PLX			; (X) pull
		STX	<WORK8
RWLDR20		EQU	$
		PLA			; (A) pull
		STA	!DORPNT
RWLDR40		EQU	$
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		LDX	!DOPCNO
		BEQ	RWLDR45		;
;					;
;<< 03.03.28 >>		CPX	#00006H
		CPX	#00004H
		BEQ	RWLDR45		;
;					;
;<< 03.03.28 >>		LDY	LDOPNDD,X
;<< 03.03.28 >>		CMP	#ud_dor
;<< 03.03.28 >>		BCC	RWLDR50		; under-door,shutter ?
;<< 03.03.28 >>;					; yes
;<< 03.03.28 >>		LDY	LDOPNDD+4,X
		CMP	#ud_dor
		BCC	RWLDR42		; under_door ?
;					; yes
		INX
		INX
		INX
		INX
RWLDR42		EQU	$
		CMP	#sht_dr
		BEQ	RWLDR43		; shutter ?
;					; no
		CMP	#ud_sht
		BNE	RWLDR44		; under_shutter ?
;					; yes
RWLDR43		EQU	$
		INX
		INX
RWLDR44		EQU	$
		LDY	LDOPNDD,X
		BRA	RWLDR50
;
RWLDR45		EQU	$
		JSR	RWDDGT		; rewrite door data get
;
		LDY	LDRTBL,X
RWLDR50		EQU	$
		LDX	!DORPNT
		LDA	!DORADR,X
		TAX
		LDA	#00003H
		STA	<WORKE
RWLDR60		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
 		INX
 		INX
		DEC	<WORKE
		BNE	RWLDR60		; unit set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Rewrite Right Shutter-door set		(SRWRDRST)	*
;************************************************************************
SRWRDRST	EQU	$
		LDA	!DORPNT
		AND	#000FFH
		STA	<WORK4
		BRA	RWRDR40
;
;
;************************************************************************
;*		Rewrite Right door set			(RWRDRST)	*
;************************************************************************
RWRDRST		EQU	$
		LDA	!DORPNT
		PHA			; (A) push
		AND	#0000FH
		STA	<WORK4
;
		TXA
		AND	#007FFH
		CMP	RTADR0+00CH
		BCS	RWRDR20		; left door set ?
;					; yes
		TXA
		CLC
		ADC	#00010H
		STA	<WORK8
		PHX			; (X) push
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		CMP	#ud_dor
		BCC	RWRDR10		; under-door,shutter ?
;					; yes
		LDA	<WORK8
		CLC
		ADC	#0000CH
		STA	<WORK8
RWRDR10		EQU	$
		LDA	!DORPNT
		EOR	#00010H
		STA	!DORPNT
		JSR	RWLDR40		; left door write
		JSR	BGCNGS1		; BG. change data set
		LDY	!DORPNT
		JSR	DCCN100		; door code change
;
		PLX			; (X) pull
		STX	<WORK8
RWRDR20		EQU	$
		PLA			; (A) pull
		STA	!DORPNT
RWRDR40		EQU	$
		LDX	!DORPNT
		LDA	!DRSTAT,X
		AND	#000FEH
		LDX	!DOPCNO
		BEQ	RWRDR45		;
;					;
;<< 03.03.28 >>		CPX	#00006H
		CPX	#00004H
		BEQ	RWRDR45		;
;					;
;<< 03.03.28 >>		LDY	RDOPNDD,X
;<< 03.03.28 >>		CMP	#ud_dor
;<< 03.03.28 >>		BCC	RWRDR50		; under-door,shutter ?
;<< 03.03.28 >>;					; yes
;<< 03.03.28 >>		LDY	RDOPNDD+4,X
		CMP	#ud_dor
		BCC	RWRDR42		; under_door ?
;					; yes
		INX
		INX
		INX
		INX
RWRDR42		EQU	$
		CMP	#sht_dr
		BEQ	RWRDR43		; shutter ?
;					; no
		CMP	#ud_sht
		BNE	RWRDR44		; under_shutter ?
;					; yes
RWRDR43		EQU	$
		INX
		INX
RWRDR44		EQU	$
		LDY	RDOPNDD,X
		BRA	RWRDR50
;
RWRDR45		EQU	$
		JSR	RWDDGT		; rewrite door data get
;
		LDY	RDRTBL,X
RWRDR50		EQU	$
		LDX	!DORPNT
		LDA	!DORADR,X
		TAX
		LDA	#00003H
		STA	<WORKE
RWRDR60		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+002H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+082H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+102H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+182H,X
		TYA
		CLC
		ADC	#00008H
		TAY
 		INX
 		INX
		DEC	<WORKE
		BNE	RWRDR60		; unit set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Certen-door UP rewrite set		(CTURWST)	*
;************************************************************************
CTURWST		EQU	$
		LDX	#00056H
		LDY	UDRTBL,X
;// 03.08.29 //		BRA	CTRW100
;// 03.08.29 //;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Certen-door DOWN rewrite set		(CTDRWST)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //CTDRWST		EQU	$
;// 03.08.29 //		LDX	#00056H
;// 03.08.29 //		LDY	DDRTBL,X
;// 03.08.29 //		BRA	CTRW100
;// 03.08.29 //;
;// 03.08.29 //;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Certen-door LEFT rewrite set		(CTLRWST)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //CTLRWST		EQU	$
;// 03.08.29 //		LDX	#00056H
;// 03.08.29 //		LDY	LDRTBL,X
;// 03.08.29 //		BRA	CTRW100
;// 03.08.29 //;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Certen-door RIGHT rewrite set		(CTRRWST)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //CTRRWST		EQU	$
;// 03.08.29 //		LDX	#00056H
;// 03.08.29 //		LDY	RDRTBL,X
;// 03.08.29 //CTRW100		EQU	$
		LDX	!DORPNT
		LDA	!DORADR,X
		TAX
		LDA	#00004H
		STA	<WORKE
CTRW140		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
 		INX
 		INX
		DEC	<WORKE
		BNE	CTRW140		; unit set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Rewrite door data get			(RWDDGT)	*
;************************************************************************
RWDDGT		EQU	$
		LDY	!DORPNT
		LDA	!DRSTAT,Y
		AND	#000FEH
		TAX
		LDY	<WORK4
		LDA	!DOPNBT
		AND	BITCD0,Y
;// 03.03.11 //		BNE	RWDD50		; door open ?
		BEQ	RWDD50		; door open ?
;					; yes
		LDA	OPDRCD,X
		TAX			; (X) <-- open door data
RWDD50		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Rewrite Up,down crush wall set		(RWUCWLST)	*
;************************************************************************
RWUCWLST	EQU	$
		LDY	#cwuddt
		JSR	RWUCW100	; side set
;
		LDA	!CWLFLG
		DEC	A
		STA	<WORKE
		BEQ	RWUCW80		; center set ?
;					; yes
		LDA	UNITDT+000H,Y
RWUCW40		EQU	$
		STA	>ROOMBF+000H,X
		STA	>ROOMBF+080H,X
		STA	>ROOMBF+100H,X
		STA	>ROOMBF+180H,X
		STA	>ROOMBF+200H,X
		STA	>ROOMBF+280H,X
		STA	>ROOMBF+300H,X
		STA	>ROOMBF+380H,X
		STA	>ROOMBF+400H,X
		STA	>ROOMBF+480H,X
		STA	>ROOMBF+500H,X
		STA	>ROOMBF+580H,X
		INX
		INX
		DEC	<WORKE
		BNE	RWUCW40		; unit set end ?
;					; yes
RWUCW80		EQU	$
		INY
		INY
RWUCW100	EQU	$
		LDA	#00002H
		STA	<WORKE
RWUCW120	EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
		LDA	UNITDT+008H,Y
		STA	>ROOMBF+200H,X
		LDA	UNITDT+00AH,Y
		STA	>ROOMBF+280H,X
		LDA	UNITDT+00CH,Y
		STA	>ROOMBF+300H,X
		LDA	UNITDT+00EH,Y
		STA	>ROOMBF+380H,X
		LDA	UNITDT+010H,Y
		STA	>ROOMBF+400H,X
		LDA	UNITDT+012H,Y
		STA	>ROOMBF+480H,X
		LDA	UNITDT+014H,Y
		STA	>ROOMBF+500H,X
		LDA	UNITDT+016H,Y
		STA	>ROOMBF+580H,X
		INX
		INX
		TYA
		CLC
		ADC	#00018H
		TAY
		DEC	<WORKE
		BNE	RWUCW120	; unit set end ?
;					; yes
		RTS
;
;
;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Rewrite Left,right crush wall set	(RWLCWLST)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //RWLCWLST	EQU	$
;// 03.08.29 //		LDY	#cwlrdt
;// 03.08.29 //		JSR	RWLCW100	; side set
;// 03.08.29 //;
;// 03.08.29 //		LDA	!CWLFLG
;// 03.08.29 //		DEC	A
;// 03.08.29 //		STA	<WORKE
;// 03.08.29 //		BEQ	RWLCW80		; center set ?
;// 03.08.29 //;					; yes
;// 03.08.29 //RWLCW40		EQU	$
;// 03.08.29 //		LDA	UNITDT+000H,Y
;// 03.08.29 //		STA	>ROOMBF+000H,X
;// 03.08.29 //		STA	>ROOMBF+002H,X
;// 03.08.29 //		STA	>ROOMBF+004H,X
;// 03.08.29 //		STA	>ROOMBF+006H,X
;// 03.08.29 //		STA	>ROOMBF+008H,X
;// 03.08.29 //		STA	>ROOMBF+00AH,X
;// 03.08.29 //		STA	>ROOMBF+00CH,X
;// 03.08.29 //		STA	>ROOMBF+00EH,X
;// 03.08.29 //		STA	>ROOMBF+010H,X
;// 03.08.29 //		STA	>ROOMBF+012H,X
;// 03.08.29 //		TXA
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00080H
;// 03.08.29 //		TAX
;// 03.08.29 //		DEC	<WORKE
;// 03.08.29 //		BNE	RWLCW40		; unit set end ?
;// 03.08.29 //;					; yes
;// 03.08.29 //RWLCW80		EQU	$
;// 03.08.29 //		INY
;// 03.08.29 //		INY
;// 03.08.29 //RWLCW100	EQU	$
;// 03.08.29 //		LDA	#00002H
;// 03.08.29 //		STA	<WORKE
;// 03.08.29 //RWLCW120	EQU	$
;// 03.08.29 //		LDA	UNITDT+000H,Y
;// 03.08.29 //		STA	>ROOMBF+000H,X
;// 03.08.29 //		LDA	UNITDT+002H,Y
;// 03.08.29 //		STA	>ROOMBF+002H,X
;// 03.08.29 //		LDA	UNITDT+004H,Y
;// 03.08.29 //		STA	>ROOMBF+004H,X
;// 03.08.29 //		LDA	UNITDT+006H,Y
;// 03.08.29 //		STA	>ROOMBF+006H,X
;// 03.08.29 //		LDA	UNITDT+008H,Y
;// 03.08.29 //		STA	>ROOMBF+008H,X
;// 03.08.29 //		LDA	UNITDT+00AH,Y
;// 03.08.29 //		STA	>ROOMBF+00AH,X
;// 03.08.29 //		LDA	UNITDT+00CH,Y
;// 03.08.29 //		STA	>ROOMBF+00CH,X
;// 03.08.29 //		LDA	UNITDT+00EH,Y
;// 03.08.29 //		STA	>ROOMBF+00EH,X
;// 03.08.29 //		LDA	UNITDT+010H,Y
;// 03.08.29 //		STA	>ROOMBF+010H,X
;// 03.08.29 //		LDA	UNITDT+012H,Y
;// 03.08.29 //		STA	>ROOMBF+012H,X
;// 03.08.29 //		TXA
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00080H
;// 03.08.29 //		TAX
;// 03.08.29 //		TYA
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00014H
;// 03.08.29 //		TAY
;// 03.08.29 //		DEC	<WORKE
;// 03.08.29 //		BNE	RWLCW120	; unit set end ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		RTS
;// 03.08.29 //;
;
;
;************************************************************************
;*		Rewrite character check			(RWCHCK)	*
;************************************************************************
RWCHCK		EQU	$
		STA	<WORK8
;
		LDA	#00004H
		STA	<WORKA
RWCHK40		EQU	$
		LDX	<WORK8
		LDA	>ROOMBF+000H,X
		STA	<WORK0
		LDA	>ROOMBF+002H,X
		STA	<WORK2
		LDA	>ROOMBF+004H,X
		STA	<WORK4
		LDA	>ROOMBF+006H,X
		STA	<WORK6
;
		LDX	#00006H
RWCHK100	EQU	$
		LDA	<WORK0,X
		STZ	<WORK0,X
		AND	#003FEH
		CMP	#000EEH
		BEQ	RWCHK140	; hole ?
;					; yes
		CMP	#000FEH
		BEQ	RWCHK140	; hole ?
;					; yes
		LDA	#00020H
		STA	<WORK0,X
RWCHK140	EQU	$
		DEX
		DEX
		BPL	RWCHK100	; check end ?
;					; yes
		LDA	<WORK8
		LSR	A
		TAX
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<WORK0
		STA	>READBF+000H,X
		LDA	<WORK2
		STA	>READBF+001H,X
		LDA	<WORK4
		STA	>READBF+002H,X
		LDA	<WORK6
		STA	>READBF+003H,X
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<WORK8
		CLC
		ADC	#00080H
		STA	<WORK8
		DEC	<WORKA
		BNE	RWCHK40		; end ?
;					; yes
		RTS
;
;
;
;
;
;
;
		END
