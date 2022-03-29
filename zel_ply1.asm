;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3		1991.09.07(SAT)
;
;--------------------------------------------------------------------
;
		ORG	1CF500H
;
;=============================================== (zel_bms1) =========
		GLB	PLOTCK,BMIDSH,PLGMOV,PLGMIT,DONSCCK,ENCSDT,ENSIDT
		GLB	KNENIT1,JPKNMV,KKTRIT,JPKNFL,MCGTHK,RNDMDT,MESWIT
		GLB	ENYHDT,ENXHDT,DNJPYCL,HEDCHEG,KNBMCHK,DOKAST,PGKRITL
		GLB	BLBKYP,BLBKXP,BLBKCRD,BLBKATD
;=============================================== (zel_exst) =========
		EXT	FTMOV,BOMBM,BOMBA,LVUBR,ICEFL,YAEND,JPKM0
		EXT	BM1FL,LVUBR,TAKARA,TPHDM,BUME1,SBAMV,BRSEN
		EXT	ENMVSH1,ENPSTS,BMBCKL,CRBMEN1,BMYXST31,PUBNIT
;================================================ (zel_pysb) ========
		EXT	OMS000
;================================================ (zel_play) ========
		EXT	PLOTCK1,PLYCLR3
		EXT	lkdie,JMDM,LNMD,RABT,RAB1
;================================================ (zel_bms1) ========
		EXT	JPRMS23,JPRMS33,ITBGCK
;================================================ (zel_enmy) ========
		EXT	RNDSET
;================================================ (zel_main) ========
		EXT	MD_etcpl
;================================================ (zel_init) ========
		EXT	p3_msge
;================================================ (zel_end2) ========
		EXT	SDLRCP,SDLRCB
;====================================================================
;
		EXTEND
;
		MEM8
		IDX8
;
;====================================================================
;====================================================================
;
;************************************************************************
;*		Player out hosei check sub		(PLOTCK)	*
;************************************************************************
PLOTCK		EQU	$
		PHB
		PHK
		PLB
		PHX
;
		LDX	#004H
PLOT100		EQU	$
		LDA	BMMODE,X
		CMP	#FTMOV
		BNE	PLOT200
		LDA	BOGMOV
		BEQ	PLOT200
		STZ	BOGMOV
		BRA	PLOT300
PLOT200		EQU	$
		DEX
		BPL	PLOT100
;
PLOT300		EQU	$
		LDA	<PLXPS0
		STA	<PLXHN1
		LDA	<PLYPS0
		STA	<PLYHN1
		MEM16
		REP	#00100000B
		LDA	PLSVX1
		STA	<PLXPS1
		LDA	PLSVY1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
;
		JSL	>PLOTCK1
;
		PLX
		PLB
		RTL
;
;====================================================
;=  BEAM index serch 
;====================================================
BMIDSH		EQU	$
		STY	<WORKF
		INY
		STY	<WORKE
		LDY	#000H
		LDX	#004H
BMID100		EQU	$
		CMP	BMMODE,X
		BNE	BMID200
		INY
BMID200		EQU	$
		DEX
		BPL	BMID100
		CPY	<WORKE		; kosuu limit ?
		BEQ	BMID700
;
		LDY	#001H
		CMP	#BOMBM		; bakudan ? [YES:BMID300]
		BEQ	BMID300
		CMP	#BOMBA		; bakudan kakera ? [YES:BMID300]
		BEQ	BMID300
		LDY	#004H
BMID300		EQU	$
		LDA	BMMODE,Y
		BEQ	BMID600
		DEY
		BPL	BMID300
;
BMID400		EQU	$
		DEC	BMSTCT
		BPL	BMID500
		LDA	<WORKF
		STA	BMSTCT
BMID500		EQU	$
		LDY	BMSTCT
		LDA	BMMODE,Y
		CMP	#LVUBR
		BEQ	BMID600
		CMP	#ICEFL
		BEQ	BMID600		; yaend => set ok !
		CMP	#YAEND
		BEQ	BMID600		; yaend => set ok !
		DEY
		BPL	BMID400
BMID600		EQU	$
		RTL
;
BMID700		EQU	$
		TXY
		RTL
;
;************************************************************************
;*		Player game over shori move		(PLGMOV)	*
;************************************************************************
GMOVMD		EQU	$
		HEX	000,001,002,003
		HEX	000,001,002,003
		HEX	000,001,002,003
		HEX	004,005,005
GMOVFM		EQU	$
		HEX	005,005,005,005
		HEX	005,005,005,005
		HEX	005,005,005,005
		HEX	003,003,062
GMUSND		EQU	$
		HEX	020,010
;
PLGMOV		EQU	$
		PHB
		PHK
		PLB
;
		DEC	PYDMFM
		BPL	PLGM400
		LDX	PYDMNO
		INX
		CPX	#00FH
		BEQ	PLGM500
		CPX	#00EH
		BNE	PLGM100
		INC	<GAMEMD
PLGM100		EQU	$
		STX	PYDMNO
		LDA	!GMOVMD,X
		STA	PYDMMD
		LDA	!GMOVFM,X
		STA	PYDMFM
;
PLGM400		EQU	$
		LDA	PYDMNO
		CMP	#00DH
		BNE	PLGM500
		LDA	<OMSBMD
		CMP	#OMS000
		BEQ	PLGM500
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	#0010H
		SEC
		SBC	<SCCV2
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	#0007H
		SEC
		SBC	<SCCH2
		STA	<WORK2
		MEM8
		SEP	#00100000B
		LDY	<PLBGCKF
		LDA	<WORK2
		STA	!OAM+01D0H
		LDA	<WORK0
		STA	!OAM+01D1H
		LDA	#0AAH
		STA	!OAM+01D2H
		LDA	!GMUSND,Y
		ORA	#00000010B
		STA	!OAM+01D3H
		LDA	#002H
		STA	!OAMSB+074H
;
PLGM500		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		ken kaiten init.		()      *
;**************************************************************
ENMDD1		EQU	$
		HEX	021,01D,019,015		; up
		HEX	003,03E,03A,036		; down
		HEX	012,00E,00A,006		; left
		HEX	031,02D,029,025		; right
EMYSP1		EQU	$
		HEX	0C0,040,000,000
EMXSP1		EQU	$
		HEX	000,000,0C0,040
EMHOKD		EQU	$
		HEX	0F8,0F8,0F8,008
JKHSYL1		EQU	$
		HEX	0E8,008,0FA,0FA
JKHSYH1		EQU	$
		HEX	0FF,000,0FF,0FF
JKHSXL1		EQU	$
		HEX	0F8,0F6,0EA,004
JKHSXH1		EQU	$
		HEX	0FF,0FF,0FF,000
;
KNENIT1		EQU	$
		PHB
		PHK
		PLB
		
		LDA	#JPKM0
		JSL	>JPRMS23
		BCS	PLGM500
;
		LDA	<PLMKCH
		ASL	A
		TAY
		LDA	!ENMDD1+0,Y
		STA	>SNENMD+0	; en mode counter
		LDA	!ENMDD1+1,Y
		STA	>SNENMD+1
		LDA	!ENMDD1+2,Y
		STA	>SNENMD+2
		LDA	!ENMDD1+3,Y
		STA	>SNENMD+3
		STA	>SNENMD+4
;
		LDA	#002H
		STA	BMFLFG,X
		LDA	#04CH
		STA	BMCONT,X
		LDA	#008H
		STA	BUMFLM,X
		STZ	BMSTAT,X
		STZ	HIBSTAT,X
		STZ	HBFLEM,X
		LDA	#000H
		STA	BUMODE,X
		LDA	#00EH
		STA	>SNDHAN		; hankei
		LDA	<PLMKCH
		LSR	A
		STA	BMMUKI,X
		TAY
		LDA	!EMYSP1,Y
		STA	BMYSPD,X
		LDA	!EMXSP1,Y
		STA	BMXSPD,X
		LDA	!EMHOKD,Y
		STA	BMKMHN,X
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	#000CH
		STA	>SNCYPS		; center y-pos
		LDA	<PLXPS1
		CLC
		ADC	#0008H
		STA	>SNCXPS		; center x-pos
		MEM8
		SEP	#00100000B
		JSL	>ITBGCK
		BCS	KNE1000
		PLB
		RTL
;
KNE1000		EQU	$
		LDY	BMMUKI,X
		LDA	>SNCYPS
		CLC
		ADC	!JKHSYL1,Y
		STA	BMYPSL,X
		LDA	>SNCYPS+1
		ADC	!JKHSYH1,Y
		STA	BMYPSH,X
		LDA	>SNCXPS
		CLC
		ADC	!JKHSXL1,Y
		STA	BMXPSL,X
		LDA	>SNCXPS+1
		ADC	!JKHSXH1,Y
		STA	BMXPSH,X
;
		JSL	>SDLRCB
		ORA	#001H
		STA	!SOUND3
;
		LDA	#BM1FL
		STA	BMMODE,X
		LDA	#007H
		STA	BMTIM0,X
		LDA	#4*4
		STA	BMOMNO,X
		PLB
		RTL
;
;**************************************************************
;*		jump ken en move 		(JPKNMV)     *
;**************************************************************
JPKMCD		EQU	$
		HEX	0D7,0B7,080,083
JPKMCD1		EQU	$
		HEX	0B7,080,083
JKHSYL		EQU	$
		HEX	000,000,0FA,0FA
JKHSYH		EQU	$
		HEX	000,000,0FF,0FF
JKHSXL		EQU	$
		HEX	0F8,0F6,000,000
JKHSXH		EQU	$
		HEX	0FF,0FF,000,000
JPKNMV		EQU	$
		PHB
		PHK
		PLB
;
		PHX
		LDA	#002H		; coler set
		STA	<BMWORK+1
		LDA	<GAMEMD
		BEQ	JPKN040
		BRL	JPKN100
;
JPKN040		EQU	$
		LDA	>SNCYPS
		STA	BMYPSL,X
		LDA	>SNCYPS+1
		STA	BMYPSH,X
		LDA	>SNCXPS
		STA	BMXPSL,X
		LDA	>SNCXPS+1
		STA	BMXPSH,X
		JSR	BMYCLC1
		JSR	BMXCLC1
		LDA	BMYPSL,X
		STA	>SNCYPS
		LDA	BMYPSH,X
		STA	>SNCYPS+1
		LDA	BMXPSL,X
		STA	>SNCXPS
		LDA	BMXPSH,X
		STA	>SNCXPS+1
;
		LDA	HBFLEM,X
		AND	#00001111B
		BNE	JPKN050
		JSL	>SDLRCB
		ORA	#001H
		STA	!SOUND3
JPKN050		EQU	$
		INC	HBFLEM,X
		JSL	>CRBMEN1
		BCS	JPKN060
		JSL	>BMBCKL
		BCC	JPKN080
;
JPKN060		EQU	$
		LDY	BMMUKI,X
		LDA	BMYPSL,X
		CLC
		ADC	!JKHSYL,Y
		STA	BMYPSL,X
		LDA	BMYPSH,X
		ADC	!JKHSYH,Y
		STA	BMYPSH,X
		LDA	BMXPSL,X
		CLC
		ADC	!JKHSXL,Y
		STA	BMXPSL,X
		LDA	BMXPSH,X
		ADC	!JKHSXH,Y
		STA	BMXPSH,X
		LDA	#BM1FL
		STA	BMMODE,X
		LDA	#007H
		STA	BMTIM0,X
		LDA	#4*4
		STA	BMOMNO,X
		BRL	JPKN700
;
JPKN080		EQU	$
		DEC	BMFLFG,X
		BPL	JPKN100
		LDA	#004H
		STA	<BMWORK+1
		LDA	#002H
		STA	BMFLFG,X
;
JPKN100		EQU	$
		LDA	BMKMHN,X
		STA	<BMWORK+4
		LDY	#000H
		LDX	#003H
JPKN200		EQU	$
		STX	<BMWORK+0
		LDA	<GAMEMD
		BNE	JPKN300
		LDA	>SNENMD,X
		CLC
		ADC	<BMWORK+4
		AND	#03FH
		STA	>SNENMD,X
;
JPKN300		EQU	$
		PHX
		PHY
		LDA	>SNDHAN
		STA	<WORK8
		LDA	>SNENMD,X
		JSL	>ENMVSH1	; en y,x pos set sub
		JSL	>ENPSTS		; en potitoin set sub
;
		PLY
		JSL	>BMYXST31
		LDX	<BMWORK+0
		LDA	!JPKMCD,X
		STA	(<OAMADR),Y
		INY
		LDA	<BMWORK+1	; coler set
		ORA	<PYBGUN+1	; uusen juni set
		STA	(<OAMADR),Y
		INY
		PHY
		TYA
		SEC
		SBC	#004H
		LSR	A
		LSR	A
		TAY
		LDA	#000H
		STA	(<OSBADR),Y
		PLY
		PLX
		DEX
		BPL	JPKN200
;
		PLX
		PHX
		LDA	<GAMEMD
		BNE	JPKN400
		DEC	BUMFLM,X
		BPL	JPKN500
		LDA	#000H
		STA	BUMFLM,X
		LDA	BUMODE,X
		INC	A
		AND	#00000011B
		STA	BUMODE,X
		CMP	#003H
		BNE	JPKN400
		LDA	>SNENMD+4
		CLC
		ADC	<BMWORK+4
		AND	#03FH
		STA	>SNENMD+4
;
JPKN400		EQU	$
		LDA	BUMODE,X
		STA	<BMWORK+0
		CMP	#003H
		BEQ	JPKN500
		PHY
		LDA	>SNDHAN
		STA	<WORK8
		LDA	>SNENMD+4
		JSL	>ENMVSH1	; en y,x pos set sub
		JSL	>ENPSTS		; en potitoin set sub
		PLY
;
		JSL	>BMYXST31
		LDX	<BMWORK+0
		LDA	!JPKMCD1,X
		STA	(<OAMADR),Y
		INY
		LDA	#004H		; coler set
		ORA	<PYBGUN+1	; uusen juni set
		STA	(<OAMADR),Y
		INY
		TYA
		SEC
		SBC	#004H
		LSR	A
		LSR	A
		TAY
		LDA	#000H
		STA	(<OSBADR),Y
;
JPKN500		EQU	$
		PLX
		PHX
;
		LDY	#001H
JPKN600		EQU	$
		LDA	(<OAMADR),Y
		CMP	#0F0H
		BNE	JPKN700
		INY
		INY
		INY
		INY
		CPY	#011H
		BNE	JPKN600
		STZ	BMMODE,X
;
JPKN700		EQU	$
		PLX
		PLB
		RTL
;
;**************************************************************
;*		jump ken flash move 		(JPKNFL)     *
;**************************************************************
JKFLYDL		EQU	$
		HEX	0F8,01B,00C,00C
JKFLYDH		EQU	$
		HEX	0FF,000,000,000
JKFLXDL		EQU	$
		HEX	004,004,0F3,014
JKFLXDH		EQU	$
		HEX	000,000,0FF,000
UUSNDT		EQU	$
		HEX	020,010,030,020
;
JPKNFL		EQU	$
		PHB
		PHK
		PLB
;
		LDA	BMTIM0,X
		BNE	JPKF100
		STZ	BMMODE,X
		BRA	JPKF200
JPKF100		EQU	$
		LDA	<PLMKCH
		LSR	A
		TAY
		LDA	<PLYPS1
		CLC
		ADC	!JKFLYDL,Y
		STA	<WORK0
		LDA	<PLYPS0
		ADC	!JKFLYDH,Y
		STA	<WORK1
		LDA	<PLXPS1
		CLC
		ADC	!JKFLXDL,Y
		STA	<WORK2
		LDA	<PLXPS0
		ADC	!JKFLXDH,Y
		STA	<WORK3
		MEM16
		REP	#00100000B
		LDA	<WORK0
		SEC
		SBC	<SCCV2
		STA	<WORK0
		LDA	<WORK2
		SEC
		SBC	<SCCH2
		STA	<WORK2
		MEM8
		SEP	#00100000B
		LDY	BMPRIO,X
		LDA	!UUSNDT,Y
		STA	<PYBGUN1
		STZ	<PYBGUN
;
		LDY	#000H
		JSL	>BMYXST31
;
		LDA	#0D7H
		STA	(<OAMADR),Y
		INY
		LDA	#002H
		ORA	<PYBGUN+1	; uusen juni set
		STA	(<OAMADR),Y
		LDA	#000H
		STA	(<OSBADR)
JPKF200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		ken kaiten kirakira  move init.	(KKTRIT)      *
;**************************************************************
KKTYS		EQU	$
		WORD	00005H,0000CH,00008H,00008H
KKTXS		EQU	$
		WORD	00000H,00003H,00004H,00005H
KTRYDT		EQU	$
		HEX	000,000,007,007
KTRXDT		EQU	$
		HEX	070,070,000,000
KKTRIT		EQU	$
		PHB
		PHK
		PLB
;
		LDX	#009H
KKTR100		EQU	$
		LDA	BMMODE,X
		BEQ	KKTR200
		DEX
		BPL	KKTR100
		BRL	KKTR900
;
KKTR200		EQU	$
		LDA	#LVUBR
		STA	BMMODE,X
		STZ	BMCONT,X
		LDA	#004H
		STA	BMTIM0,X
		LDA	<PLBGCKF	; BG uusen set
		STA	BMPRIO,X
		STZ	<BMWORK+2
		STZ	<BMWORK+3
		LDA	<PLMKCH
		LSR	A
		TAY
		LDA	!KTRYDT,Y
		BNE	KKTR300
		LDA	!KENTIM
		LSR	A
		LSR	A
		CPY	#000H
		BNE	KKTR220
		EOR	#0FFH
		INC	A
KKTR220		EQU	$
		STA	<BMWORK+2
		LDA	#000H
KKTR300		EQU	$
		STA	<BMWORK+0
;
		LDA	!KTRXDT,Y
		BNE	KKTR400
		LDA	!KENTIM
		LSR	A
		LSR	A
		CPY	#002H
		BNE	KKTR320
		EOR	#0FFH
		INC	A
KKTR320		EQU	$
		STA	<BMWORK+3
		LDA	#000H
KKTR400		EQU	$
		STA	<BMWORK+1
;
		JSL	>RNDSET		; ranram set
		STA	<WORK8
		AND	<BMWORK+0
		STA	<WORK4
		STZ	<WORK5
		LDA	<WORK8
		AND	<BMWORK+1
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK6
		STZ	<WORK7
;
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<BMWORK+2
		AND	#00FFH
		CMP	#0080H
		BCC	KKTR440
		ORA	#0FF00H
KKTR440		EQU	$
		CLC
		ADC	<PLYPS1
		CLC
		ADC	!KKTYS,Y
		CLC
		ADC	<WORK4
		STA	<WORK0
		LDA	<BMWORK+3
		AND	#00FFH
		CMP	#0080H
		BCC	KKTR480
		ORA	#0FF00H
KKTR480		EQU	$
		CLC
		ADC	<PLXPS1
		CLC
		ADC	!KKTXS,Y
		CLC
		ADC	<WORK6
		STA	<WORK2
		MEM8
		SEP	#00100000B
		LDA	<WORK0
		STA	BMYPSL,X
		LDA	<WORK1
		STA	BMYPSH,X
		LDA	<WORK2
		STA	BMXPSL,X
		LDA	<WORK3
		STA	BMXPSH,X
KKTR900		EQU	$
		PLB
		RTL
;
;=================================================
BMXCLC1		EQU	$
		TXA
		CLC
		ADC	#BMNO
		TAX
		JSR	BMYCLC1
		LDX	ENINDX
		RTS
;============================================
BMYCLC1		EQU     $
		LDA	BMYSPD,X
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	BMYSDR,X
		STA	BMYSDR,X
;
		LDY	#00H
		LDA	BMYSPD,X
		PHP
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		PLP
		BPL	BM1Y60
;
		ORA	#11110000B
		DEY
BM1Y60		EQU	$
		ADC	BMYPSL,X
		STA	BMYPSL,X
;
		TYA
		ADC	BMYPSH,X
		STA	BMYPSH,X
		RTS
;
;
;************************************************************************
;*		Player game over shori init.		(PLGMIT)	*
;************************************************************************
PLGMIT		EQU	$
		PHB
		PHK
		PLB
		LDA	#002H
		STA	<PLMKCH
		LDA	#00000001B
		STA	DEMOFG
		STZ	PYDMNO
		STZ	PYDMMD
		LDA	#005H
		STA	PYDMFM
		LDA	#000H
		STA	>UPLFCT		; up life clear
		STA	>LFNWCT		; life conter clear
;
		JSL	>PLYCLR3
		STZ	PSSTOP
		STZ	ASWFLG
		STZ	RABFLG
		STZ	<HANIFG1
		STZ	BMCHOK
		STZ	<DIEFG
		STZ	<HANEFG
		STZ	DAMEFG
		STZ	PYSTOP
		STZ	<PYSPFG
		STZ	USGOFN

		LDA	>ITMTBL4
		BEQ	PLIT080
		STZ	<RABIFG
PLIT080		EQU	$
		STZ	USAGTM
		STZ	USAGTM+1
		JSL	>SDLRCP	
		ORA	#lkdie
		STA	!SOUND2
		LDA	#006H
		CMP	>BINCT0
		BEQ	PLIT100
		CMP	>BINCT1
		BEQ	PLIT100
		CMP	>BINCT2
		BEQ	PLIT100
		CMP	>BINCT3
		BEQ	PLIT100
		STZ	!BLKMODE+0
		STZ	!BLKMODE+1
PLIT100		EQU	$
		PLB
		RTL
;
;************************************************************************
;*		 mochage time henkan sub		(MCGTHK	)	*
;************************************************************************
MCGTHK		EQU	$
		PHX
		LDX	#004H
MCGT100		EQU	$
		LDA	BMMODE,X
		CMP	#TAKARA
		BNE	MCGT200
		LDA	#001H
		STA	BMFLFG,X
MCGT200		EQU	$
		DEX
		BPL	MCGT100
		PLX
		RTL
;
;************************************************************************
;*		doon scrool check sub				(DONSCCK)*
;************************************************************************
DONSCCK		EQU	$
		LDY	BMMUKI,X
		LDA	BMYPSL,X
		STA	<WORK0
		LDA	BMYPSH,X
		STA	<WORK1
		MEM16
		REP	#00100000B
		LDA	<WORK0
		EOR	#0FFFFH
		INC	A
		STA	<WORK0
		MEM8
		SEP	#00100000B
		LDA	<WORK0
		STA	BMYPSL,X
		LDA	<WORK1
		STA	BMYPSH,X
;
		LDA	<GMMODE
		BNE	DONS400
;
		CPY	#002H
		BNE	DONS200
		MEM16
		REP	#00100000B
		LDA	!SCVU
		CLC
		ADC	#0001H
		STA	<WORK2
		LDA	!SCVU+2
		CLC
		ADC	#0FFFFH
		STA	<WORK4
;
		LDA	<WORK0
		CLC
		ADC	<SCCV2
		CMP	<WORK2		; !SCVU
		BEQ	DONS100
		BCC	DONS100
		CMP	<WORK4		; !SCVU+2,!SCVD
		BEQ	DONS100
		BCC	DONS400
DONS100		EQU	$
		BRA	DONS300
;
DONS200		EQU	$
		MEM16
		REP	#00100000B
		LDA	!SCVU+4
		CLC
		ADC	#0001H
		STA	<WORK2
		LDA	!SCVU+6
		CLC
		ADC	#0FFFFH
		STA	<WORK4
;
		LDA	<WORK0
		CLC
		ADC	<SCCH2
		CMP	<WORK2		; !SCVU+4,!SCHL
		BEQ	DONS300
		BCC	DONS300
		CMP	<WORK4		; !SCVU+6,!SCHR
		BEQ	DONS300
		BCC	DONS400
DONS300		EQU	$
		STZ	<WORK0
DONS400		EQU	$
		MEM8
		SEP	#00100000B
		RTL
;
;************************************************************************
;*		bomber ranram data					*
;************************************************************************
RNDMDT		EQU	$		; randam data
		HEX	0B6,05D,0A1,030,069,0B5,0A3,024	; 0~7
		HEX	096,0AC,073,05F,092,048,052,081	; 8~F
		HEX	039,095,07F,020,088,05D,034,098	; 10~17
		HEX	0BC,0D2,051,077,0A2,047,094,0B2	; 18~1F
		HEX	034,0DA,030,062,09F,076,051,046	; 20~27
		HEX	098,05C,09B,061,058,095,04C,0BA	; 28~2F
		HEX	07E,0CB,012,0D0,070,0A6,046,0BF	; 30~37
		HEX	040,050,07E,08C,02D,061,0AC,088	; 38~3F
		HEX	020,06A,072,05F,0D2,028,052,080	; 40~47
;
ENSIDT		EQU	$		; sin data (5.625")
;			  0   1   2   3   4   5   6   7
		HEX	000,019,031,04A,061,078,08E,0A2
;			  8   9   A   B   C   D   E   F
		HEX	0B5,0C5,0D4,0E1,0EC,0F4,0FB,0FE
;			 10  11  12  13  14  15  16  17
		HEX	0FF,0FE,0FB,0F4,0EC,0E1,0D4,0C5
;			 18  19  1A  1B  1C  1D  1E  1F
		HEX	0B5,0A2,08E,078,061,04A,031,019
;			 20  21  22  23  24  25  26  27
		HEX	000,019,031,04A,061,078,08E,0A2
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	0B5,0C5,0D4,0E1,0EC,0F4,0FB,0FE
;			 30  31  32  33  34  35  36  37
		HEX	0FF,0FE,0FB,0F4,0EC,0E1,0D4,0C5
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	0B5,0A2,08E,078,061,04A,031,019
ENCSDT		EQU	$		; cos data (5.625")
;			  0   1   2   3   4   5   6   7
		HEX	0FF,0FE,0FB,0F4,0EC,0E1,0D4,0C5
;			  8   9   A   B   C   D   E   F
		HEX	0B5,0A2,08E,078,061,04A,031,019
;			 10  11  12  13  14  15  16  17
		HEX	000,019,031,04A,061,078,08E,0A2
;			 18  19  1A  1B  1C  1D  1E  1F
		HEX	0B5,0C5,0D4,0E1,0EC,0F4,0FB,0FE
;			 20  21  22  23  24  25  26  27
		HEX	0FF,0FE,0FB,0F4,0EC,0E1,0D4,0C5
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	0B5,0A2,08E,078,061,04A,031,019
;			 30  31  32  33  34  35  36  37
		HEX	000,019,031,04A,061,078,08E,0A2
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	0B5,0C5,0D4,0E1,0EC,0F4,0FB,0FE
ENYHDT		EQU	$		; y-pos hanten data 
;			  0   1   2   3   4   5   6   7
		HEX	001,001,001,001,001,001,001,001
;			  8   9   A   B   C   D   E   F
		HEX	001,001,001,001,001,001,001,001
;			 10  11  12  13  14  15  16  17
		HEX	000,000,000,000,000,000,000,000
;			 18  19  1A  1B  1C  1D  1E  1F
		HEX	000,000,000,000,000,000,000,000
;			 20  21  22  23  24  25  26  27
		HEX	000,000,000,000,000,000,000,000
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	000,000,000,000,000,000,000,000
;			 30  31  32  33  34  35  36  37
		HEX	001,001,001,001,001,001,001,001
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	001,001,001,001,001,001,001,001
ENXHDT		EQU	$		; x-pos hanten data
;			  0   1   2   3   4   5   6   7
		HEX	000,000,000,000,000,000,000,000
;			  8   9   A   B   C   D   E   F
		HEX	000,000,000,000,000,000,000,000
;			 10  11  12  13  14  15  16  17
		HEX	000,000,000,000,000,000,000,000
;			 18  19  1A  1B  1C  1D  1E  1F
		HEX	000,000,000,000,000,000,000,000
;			 20  21  22  23  24  25  26  27
		HEX	000,001,001,001,001,001,001,001
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	001,001,001,001,001,001,001,001
;			 30  31  32  33  34  35  36  37
		HEX	001,001,001,001,001,001,001,001
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	001,001,001,001,001,001,001,001
;
;**************  BOAL bakuha data
BLBKYP		EQU	$
		WORD	0FFF6H,0FFF6H	; (0)
		WORD	00002H,00002H	;
		WORD	0FFF8H,00000H	;
		WORD	0FFF8H,00000H	;
		WORD	0FFF4H,0FFF4H	; (1)
		WORD	00004H,00004H	;
		WORD	0FFF8H,00000H	;
		WORD	0FFF8H,00000H	;
BLBKXP		EQU	$
		WORD	0FFF8H,00000H	; (0)
		WORD	0FFF8H,00000H	;
		WORD	0FFF6H,0FFF6H	;
		WORD	00002H,00002H	;
		WORD	0FFF8H,00000H	; (1)
		WORD	0FFF8H,00000H	;
		WORD	0FFF4H,0FFF4H	;
		WORD	00004H,00004H	;
BLBKCRD		EQU	$
		HEX	0C6,0C6		; (0)
		HEX	0C6,0C6		;
		HEX	0C4,0C4		;
		HEX	0C4,0C4		;
		HEX	0D2,0D2		; (1)
		HEX	0D2,0D2		;
		HEX	0C5,0C5		;
		HEX	0C5,0C5		;
BLBKATD		EQU	$
		HEX	0C6,086		; (0)
		HEX	046,006		;
		HEX	046,0C6		;
		HEX	006,086		;
		HEX	0C6,086		; (1)
		HEX	046,006		;
		HEX	046,0C6		;
		HEX	006,086		;
;
;************************************************************************
;*		player danjon clear  sub		(DNJPYCL)	*
;************************************************************************
DNJPYCL		EQU	$
		LDA	<LNMODE
		CMP	#JMDM
		BNE	DNJP300
		LDY	#LNMD
		LDA	!RABFLG
		BEQ	DNJP100
		LDY	#RABT
		LDA	>ITMTBL4
		BEQ	DNJP100
		LDY	#RAB1
DNJP100		EQU	$
		STY	<LNMODE
DNJP300		EQU	$
		RTL
;
;************************************************************************
;*		player taki clear sub			(TAKIPCL)	*
;************************************************************************
HEDCHEG		EQU	$
		LDA	<MPDTNO
		CMP	#00FH
		BNE	HEDC300
		LDX	#004H
HEDC100		EQU	$
		LDA	BMMODE,X
		CMP	#TPHDM
		BNE	HEDC200
		STZ	BMMODE,X
HEDC200		EQU	$
		DEX
		BPL	HEDC100
HEDC300		EQU	$
		RTL
;
;************************************************************************
;*		ken beam (H) check sub			(KNBMCHK)	*
;************************************************************************
KNBMCHK		EQU	$
		LDA	BMYPSL,Y
		STA	<WORKC
		LDA	BMYPSH,Y
		STA	<WORKD
		LDA	BMXPSL,Y
		STA	<WORKE
		LDA	BMXPSH,Y
		STA	<WORKF
;
		MEM16
		REP	#00100000B
		LDA	<WORKC
		SEC
		SBC	<SCCV2
		CMP	#00F0H
		BCS	KNBM080
		LDA	<WORKE
		SEC
		SBC	<SCCH2
		CMP	#00F4H
		BCC	KNBM100
KNBM080		EQU	$
		MEM8
		SEP	#00100000B
		LDA	#000H
		STA	BMMODE,Y
;
KNBM100		EQU	$
		MEM8
		SEP	#00100000B
		RTL
;
;************************************************************************
;*		dokata ram clear sub			(DOKAST)	*
;************************************************************************
DOKAST		EQU	$
		PHX
		STA	DOKATA
		JSL	>PLYCLR3
		LDX	#004H
DOKA100		EQU	$
		LDA	BMMODE,X
		CMP	#SBAMV
		BEQ	DOKA140
		CMP	#BRSEN
		BEQ	DOKA140
		CMP	#BUME1
		BNE	DOKA200
;;;;;;;;		LDA	#001H
;;;;;;;;		STA	BMFLFG,X
		STZ	BMRMOV
DOKA140		EQU	$
		STZ	BMMODE,X
;
DOKA200		EQU	$
		DEX
		BPL	DOKA100
		PLX
		RTL
;
;
;**************************************************************
;*		messege window set init.	(MESWIT)      *
;**************************************************************
MESWIT		EQU	$
		LDA	<SLMODE
		CMP	#MD_etcpl
		BEQ	MESW100
		STZ	!MSGEFG
		STZ	!INITAL
		LDA	#p3_msge
		STA	<GAMEMD
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_etcpl
		STA	<SLMODE
MESW100		EQU	$
		RTL
;
;**************************************************************
;*		porigon kirakira init.		 (PGKRIT)     *
;**************************************************************
PGKRITL		EQU	$
		PHB
		PHK
		PLB
;
		PHX
		JSL	>PUBNIT
		PLX
;
		PLB
		RTL
;
;
;
;
		END
