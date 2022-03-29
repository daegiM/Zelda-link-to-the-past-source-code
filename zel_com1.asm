;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.09.13(FRI)
;
;--------------------------------------------------------------------
;
		ORG	01FEB0H
;
;=============================================== (zel_com1) ==========
		GLB	DKRMCGST,WD2132ST,MOZAIKU,MZKRST
		GLB	TOBIORI,PPOSKP,TBKCHK,TBKCHK1
;=============================================== (zel_init) ==========
		EXT	p1_hlrs,p2_hlrs
;
		EXT	MPBTSET
;=============================================== (zel_play) ==========
		EXT	OMS000
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
;
;************************************************************************
;*		Dark-room CG. set			(DKRMCGST)	*
;************************************************************************
DKRMCGST	EQU	$
		LDA	<WD2132R
		AND	#00011111B
		CMP	>DKRMCG
		BEQ	DRCS80		; change ?
;					; yes
		DEC	A
		BCS	DRCS20		;
;					;
		INC	A
		INC	A
DRCS20		EQU	$
		STA	<WORK0
WD2132ST	EQU	$
		ORA	#00100000B
		STA	<WD2132R
		AND	#00011111B
		ORA	#01000000B
		STA	<WD2132G
		AND	#00011111B
		ORA	#10000000B
		STA	<WD2132B
DRCS80		EQU	$
		RTL
;
;
;
;
;
;************************************************************************
;*		Player shibire Mozaiku			(MOZAIKU)	*
;************************************************************************
MOZAIKU		EQU	$
		LDA	!MZKFLG
		BNE	MZIK100		; out ?
;					; yes
		LDA	>MZKCNT
		CLC
		ADC	#00010000B
		CMP	#11000000B
		BNE	MZIK200
;
		INC	!MZKFLG
		BRA	MZIK200
;
MZIK100		EQU	$
		LDA	>MZKCNT
		SEC
		SBC	#00010000B
		BNE	MZIK200
;
MZKRST		EQU	$
		STZ	!MZKFLG
MZIK200		EQU	$
		STA	>MZKCNT
;
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
		LDA	>MZKCNT
		LSR	A
		ORA	#00000011B
		STA	<MD2106		; BG.1,2 mozaiku set
		RTL
;
;
;
;
;********************************************************************
;*		Tobiori check	  		(TOBIORI)	    *
;********************************************************************
TOBIORI		EQU	$
		LDA	#00000001B
		STA	!CDBGCKF
;// 03.06.28 //		DEC	<FLORNO
		LDA	!FLCKFG
		BNE	TBOR40		;
;					;
		LDA	<RMXYCT
		CLC
;// 03.02.27 //		ADC	#040H
		ADC	#010H
;// 03.01.28 //		CMP	#0C0H
;// 03.01.28 //		BCC	TBOR20		;
;// 03.01.28 //;					;
;// 03.01.28 //		CLC
;// 03.01.28 //		ADC	#040H
;// 03.01.28 //TBOR20		EQU	$
		STA	<RMXYCT	
TBOR40		EQU	$
;// 03.03.25 //		LDA	!NSTPFG
;// 03.03.25 //		BNE	TBOR80		; normal step ?
;// 03.03.25 //;					; no
		LDA	!FLCKFG
		CMP	#002H
		BEQ	TBOR80		; normal step ?
;					; no
		LDA	#00000001B
		STA	<PLBGCKF
TBOR80		EQU	$
		STZ	!TBRCFG		; tobiori check flag off
;
;// 03.06.28 //		LDA	#001H
;// 03.06.28 //		STA	!FLNODFG	; floor no. display flag on
;// 03.06.28 //		RTL
		JMP	>MPBTSET	; map on/off bit set
;
;
;
;
;********************************************************************
;*		Player position keep  		(PPOSKP)	    *
;********************************************************************
PPOSKP		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCCH2
		STA	>HLSCH2
		LDA	<SCCV2
		STA	>HLSCV2
		LDA	<PLYPS1
		STA	>HLYPS1
		LDA	<PLXPS1
		STA	>HLXPS1
		LDA	!SCVU
		STA	>HLSCVU
		LDA	!SCVD
		STA	>HLSCVD
		LDA	!SCHL
		STA	>HLSCHL
		LDA	!SCHR
		STA	>HLSCHR
		LDA	!SCKY00
		STA	>HLSY00
		LDA	!SCKY10
		STA	>HLSY10
		LDA	!SCKX00
		STA	>HLSX00
		LDA	!SCKX10
		STA	>HLSX10
		LDA	!PYUPCT
		STA	>HLUPCT
		LDA	!PXLFCT
		STA	>HLLFCT
		LDA	<RMCKXF
		STA	>HLCKXF
		LDA	<RMXCPT
		STA	>HLXCPT
;// 03.05.15 //		LDA	!UPSLCT
;// 03.05.15 //		STA	>HLUSLC
;// 03.05.15 //		LDA	!LFSLCT
;// 03.05.15 //		STA	>HLLSLC
;// 03.05.15 //		LDA	<SCRPNT
;// 03.05.15 //		STA	>HLSRPT
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<PLMKCH
		STA	>HLMKCH
		LDA	<PLBGCKF
		STA	>HLPLBG
		LDA	!CDBGCKF
		STA	>HLCDBG
		LDA	<PWORK6
		STA	>HLPWK6
		LDA	<FLORNO
		STA	>HLFLNO
		RTL
;
;
;
;
;********************************************************************
;*		Player tobikomi check  		(TBKCHK)	    *
;********************************************************************
TBKCHK		EQU	$
		LDA	!RABFLG
		BNE	TBKC010		; player = rabit ?
;					; no
		LDA	>ITEMR23
		BNE	TBKC080		; ashi hire on ?
;					; no
TBKC010		EQU	$
		LDA	>ITMTBL4
		BEQ	TBKC018
		STZ	!RABFLG
TBKC018		EQU	$
		LDA	#OMS000
		STA	<OMSBMD
		LDA	#p2_hlrs
		LDX	<GMMODE
		BEQ	TBKC020		; danjyon ?
;					; yes
		LDA	#p1_hlrs
TBKC020		EQU	$
		STA	<GAMEMD
TBKC080		EQU	$
		RTL
;
;
;
TBKCHK1		EQU	$
		LDA	#OMS000
		STA	<OMSBMD
		LDA	#p2_hlrs
		LDX	<GMMODE
		BEQ	TBKC120		; danjyon ?
;					; yes
		LDA	#p1_hlrs
TBKC120		EQU	$
		STA	<GAMEMD
;
		LDA	>LFNWCT
		SEC
		SBC	#008H
		STA	>LFNWCT
		CMP	#0A8H
		BCC	TBKC180		; life limit ?
;					; yes
		LDA	#000H
		STA	>LFNWCT
;// 03.07.16 //		BEQ	TBKC40		; game over ?
;// 03.07.16 //;					; no
;// 03.07.16 //		BPL	TBKC80		; game over ?
;// 03.07.16 //;					; yes
;// 03.07.16 //TBKC40		EQU	$
;// 03.07.16 //		LDA	#000H
;// 03.07.16 //		STA	>LFNWCT
;// 03.07.16 //		LDA	#MD_gover
;// 03.07.16 //		STA	<SLMODE
;// 03.07.16 //		STZ	<GAMEMD
;// 03.07.16 //		STZ	!PYFLASH
TBKC180		EQU	$
		RTL
;
;
;
;
;
;
;
		END
