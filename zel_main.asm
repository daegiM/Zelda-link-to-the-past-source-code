;
		INCLUDE	zel_ram.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.10.07(MON)
;
;------------------------------------------------------------------------
;
		ORG	08000H
;
;=============================================== (zel_main) =============
		GLB	DEBUGMD
		GLB	DTSAVE,JSRSUB,JSRSUBL,VRAMCL,VRAMCL1,VRAMCL2,BLANKING
;
		GLB	DTSVPD,GDCHCK,SNDTR1,SNDTR2,SNDTR3
;
		GLB	MD_title,MD_selct,MD_pcopy,MD_pkill,MD_ptork
		GLB	MD_djit0,MD_djint,MD_djply,MD_gdint,MD_gdply
		GLB	MD_evint,MD_evply
		GLB	MD_fdout,MD_fdin,MD_etcpl
		GLB	MD_wpout,MD_wpin,MD_ghldn,MD_gover,MD_bcfot
		GLB	MD_tdemo,MD_bckgr,MD_ubsfo,MD_psrst,MD_usscl
		GLB	MD_endg1,MD_etryf,MD_spsel
;=============================================== (zel_init) =============
		EXT	INIT0,INIT1,INIT2,INIT3
		EXT	PLMAIN1,PLMAIN2,PLMAIN3,PLMAINZ,SPSELCT
		EXT	MZFDOUT,MZFDIN
		EXT	WPFDOUT,WPFDIN,GHLFADE
		EXT	BCWFOUT,BCKGOUT,UBCWFOUT,USSCLER,ENDTRYF
;=============================================== (zel_GOVER) =============
		EXT	GMOVER,PASRSET
;=============================================== (zel_title) ============
		EXT	TITLE0,PLSELCT,PLCOPY,PLKILL,PLTORK,OPDEMO
;=============================================== (zel_vma) ==============
		EXT	DMAVMA,Object_transfer
;
		EXT	PCHDT0,PCHDT1,PCHDT2
;=============================================== (zel_ending) ===========
		EXT	ENDPLY1
;=============================================== (zel_data0) ============
		EXT	GRDCDD
;=============================================== (zel_mpdt) =============
		EXT	MPUNIT
;-----< obj_poly >-------------------------------------------------------

		extern		INITIAL_POLYGON

;------------------------------------------------------------------------
		extern		polygon_flag
		extern		shading_switch
		extern		object_size
		extern		object_type
		extern		rotate_angle_x
		extern		rotate_angle_y
		extern		center_point_x
		extern		center_point_y
		extern		center_point_z
		extern		stack_pointer
		extern		transfer_flag

;
;========================================================================
		EXT	CHREAD
;========================================================================
;
		EXTEND
;
;************************************************************************
;*		SFX  Game  Start					*
;************************************************************************
;
;
;===============  System initialize 1  ==================================
;
		EMULATION
;
GSTART		EQU	$
		SEI			; IRQ disable
		STZ	4200H		; NMI    "
		STZ	420CH		; HDMA   "
		STZ	420BH		; DMA    "
		STZ	2140H
		STZ	2141H
		STZ	2142H
		STZ	2143H		; sound port clear
		LDA	#10000000B
		STA	2100H		; branking on!!
		CLC
;------------------------------------------------------------------------
		NATIVE
;
		XCE			; Set Native mode
;
		MEM16
		IDX16
		REP	#00101000B	; memory,index 16bit mode & BCD mode off
;
		LDA	#00000H
		TCD			; direct register set (00~FF)
		LDA	#001FFH
		TCS			; stack pointer init. set
;
;===============  System initalize 2  ===================================
		MEM8
		IDX8
		SEP	#00110000B	; momory,index 8bit mode
;
		JSR	SNDTR0		; sound
		JSR	RAMCLR		; ram clear
;
		LDA	#10000001B
		STA	4200H		; NMI enable
;
;************************************************************************
;*		SFX  Game						*
;************************************************************************
GST100		EQU	$
		LDA	<NMIFLG
		BEQ	GST100		; V-blank NMI?
;					; yes
		CLI			; IRQ "on"
;
		BRA	FUF1
;
		LDA	<KEYA2L
		AND	#00100000B
		BEQ	FUFU
;
		INC	PAUSEF
FUFU		EQU	$
		LDA	<KEYA2L
		AND	#00010000B
		BNE	FUF1
;
		LDA	PAUSEF
		AND	#01H
		BNE	FUF2
;
FUF1		EQU	$
;
		INC	<FCNT		; frame count+1
;
		JSR	OAMCLR		; OAM clear
;
;// 03.04.11 //		MEM16
;// 03.04.11 //		REP	#00100001B	; memory 16bit mode & CLC
;// 03.04.11 //;
;// 03.04.11 //		LDA	<SCCH2
;// 03.04.11 //		ADC	!YUREXD
;// 03.04.11 //		STA	!SSCCH2
;// 03.04.11 //		LDA	<SCCV2
;// 03.04.11 //		CLC
;// 03.04.11 //		ADC	!YUREYD
;// 03.04.11 //		STA	!SSCCV2
;// 03.04.11 //;
;// 03.04.11 //		LDA	<SCCH1
;// 03.04.11 //		CLC
;// 03.04.11 //		ADC	!YUREXD
;// 03.04.11 //		STA	!SSCCH1
;// 03.04.11 //		LDA	<SCCV1
;// 03.04.11 //		CLC
;// 03.04.11 //		ADC	!YUREYD
;// 03.04.11 //		STA	!SSCCV1
;// 03.04.11 //;
;// 03.04.11 //		MEM8
;// 03.04.11 //		SEP	#00100000B	; memory 8bit mode
;
		JSL	>MAIN_P		; main program
;
FUF2		EQU	$
		JSR	OAMCHG		; OAM sub. set
;;;;;;;;		JSR	CCPTST		; change char. point set
;
		STZ	<NMIFLG		; NMI flag clear!!
		BRA	GST100
;
;
;************************************************************************
;*		Main  Program						*
;************************************************************************
MAINPL		EQU	$
title0		BYTE	LOW TITLE0		; 0 : title
selct		BYTE	LOW PLSELCT		; 1 : player select
pcopy		BYTE	LOW PLCOPY		; 2 :        copy
pkill		BYTE	LOW PLKILL		; 3 :        kill
ptork		BYTE	LOW PLTORK		; 4 :        touroku
djit0		BYTE	LOW INIT0		; 5 : init-0
djint		BYTE	LOW INIT1		; 6 : init-1
djply		BYTE	LOW PLMAIN1		; 7 : game-1(UNDERGRAND)
gdint		BYTE	LOW INIT2		; 8 : init-2
gdply		BYTE	LOW PLMAIN2		; 9 : game-2(GRAND)
evint		BYTE	LOW INIT3		; A : init-3
evply		BYTE	LOW PLMAIN3		; B : game-3(EVENT)
fdout		BYTE	LOW MZFDOUT		; C : mozaiku fade-out
fdin		BYTE	LOW MZFDIN		; D :         fade-in
etcpl		BYTE	LOW PLMAINZ		; E : etc. main
wpout		BYTE	LOW WPFDOUT		; F : wipe fade-out
wpin		BYTE	LOW WPFDIN		;10 : wipe fade-in
ghldn		BYTE	LOW GHLFADE		;11 : ground hole-down
gover		BYTE	LOW GMOVER		;12 : game over
bcfot		BYTE	LOW BCWFOUT		;13 : boss clear fade-out
tdemo		BYTE	LOW OPDEMO		;14 : title demo
bckgr		BYTE	LOW BCKGOUT		;15 : shisai clear kagerou-out
ubsfo		BYTE	LOW UBCWFOUT		;16 : ura-boss clear fade-out
psrst		BYTE	LOW PASRSET		;17 : pause-reset
usscl		BYTE	LOW USSCLER		;18 : ura-shisai clear
etryf		BYTE	LOW ENDTRYF		;19 : end-tryforce
endg1		BYTE	LOW ENDPLY1		;1A : ending
spsel		BYTE	LOW SPSELCT		;1B : re-start point select
;
MAINPH		EQU	$
		BYTE	HIGH TITLE0
		BYTE	HIGH PLSELCT
		BYTE	HIGH PLCOPY
		BYTE	HIGH PLKILL
		BYTE	HIGH PLTORK
		BYTE	HIGH INIT0
		BYTE	HIGH INIT1
		BYTE	HIGH PLMAIN1
		BYTE	HIGH INIT2
		BYTE	HIGH PLMAIN2
		BYTE	HIGH INIT3
		BYTE	HIGH PLMAIN3
		BYTE	HIGH MZFDOUT
		BYTE	HIGH MZFDIN
		BYTE	HIGH PLMAINZ
		BYTE	HIGH WPFDOUT
		BYTE	HIGH WPFDIN
		BYTE	HIGH GHLFADE
		BYTE	HIGH GMOVER
		BYTE	HIGH BCWFOUT
		BYTE	HIGH OPDEMO
		BYTE	HIGH BCKGOUT
		BYTE	HIGH UBCWFOUT
		BYTE	HIGH PASRSET
		BYTE	HIGH USSCLER
		BYTE	HIGH ENDTRYF
		BYTE	HIGH ENDPLY1
		BYTE	HIGH SPSELCT
;
MAINPB		EQU	$
		BYTE	BANK TITLE0
		BYTE	BANK PLSELCT
		BYTE	BANK PLCOPY
		BYTE	BANK PLKILL
		BYTE	BANK PLTORK
		BYTE	BANK INIT0
		BYTE	BANK INIT1
		BYTE	BANK PLMAIN1
		BYTE	BANK INIT2
		BYTE	BANK PLMAIN2
		BYTE	BANK INIT3
		BYTE	BANK PLMAIN3
		BYTE	BANK MZFDOUT
		BYTE	BANK MZFDIN
		BYTE	BANK PLMAINZ
		BYTE	BANK WPFDOUT
		BYTE	BANK WPFDIN
		BYTE	BANK GHLFADE
		BYTE	BANK GMOVER
		BYTE	BANK BCWFOUT
		BYTE	BANK OPDEMO
		BYTE	BANK BCKGOUT
		BYTE	BANK UBCWFOUT
		BYTE	BANK PASRSET
		BYTE	BANK USSCLER
		BYTE	BANK ENDTRYF
		BYTE	BANK ENDPLY1
		BYTE	BANK SPSELCT
;
MD_title	EQU	(title0-title0)
MD_selct	EQU	(selct-title0)
MD_pcopy	EQU	(pcopy-title0)
MD_pkill	EQU	(pkill-title0)
MD_ptork	EQU	(ptork-title0)
MD_djit0	EQU	(djit0-title0)
MD_djint	EQU	(djint-title0)
MD_djply	EQU	(djply-title0)
MD_gdint	EQU	(gdint-title0)
MD_gdply	EQU	(gdply-title0)
MD_evint	EQU	(evint-title0)
MD_evply	EQU	(evply-title0)
MD_fdout	EQU	(fdout-title0)
MD_fdin		EQU	(fdin-title0)
MD_etcpl	EQU	(etcpl-title0)
MD_wpout	EQU	(wpout-title0)
MD_wpin		EQU	(wpin-title0)
MD_ghldn	EQU	(ghldn-title0)
MD_gover	EQU	(gover-title0)
MD_bcfot	EQU	(bcfot-title0)
MD_tdemo	EQU	(tdemo-title0)
MD_bckgr	EQU	(bckgr-title0)
MD_ubsfo	EQU	(ubsfo-title0)
MD_psrst	EQU	(psrst-title0)
MD_usscl	EQU	(usscl-title0)
MD_etryf	EQU	(etryf-title0)
MD_endg1	EQU	(endg1-title0)
MD_spsel	EQU	(spsel-title0)
;
;
MAIN_P		EQU	$
		LDY	<SLMODE
		LDA	MAINPL,Y
		STA	<WORK3
		LDA	MAINPH,Y
		STA	<WORK4
		LDA	MAINPB,Y
		STA	<WORK5
		JML	(!WORK3)
;
;
;
;
;************************************************************************
;*		NMI  Routine				(INTSUB)	*
;************************************************************************
INTSUB		EQU	$
		SEI			; IRQ disable
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PHA			; (A) push
		PHX			; (X) push
		PHY			; (Y) push
		PHD			; (D) push
		PHB
		LDA	#00000H
		TCD			; (D) set
		PHK
		PLB			; (DBR) set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;
		LDA	4210H		; NMI status reset!!
;
;------- sound port set ----------------------------------------------
		LDA     !SOUND0
		BNE	INTS10		; sound transfer ok ?
;					; no
		LDA	2140H
		CMP	!SVCKF0
		BNE	INTS20		;
;					;
		STZ	2140H
		BRA	INTS20
;
INTS10		EQU	$
		CMP	!SVCKF0
		BEQ	INTS20		; sound transfer ok ?
;					; yes
		STA	2140H		; sound port set !!
		STA	!SVCKF0
		CMP	#0F2H
		BCS	INTS15		;
;					;
		STA	!SVSND0
INTS15		EQU	$
		STZ	!SOUND0
INTS20		EQU	$
		LDA	!SOUND1
		BNE	INTS30		;
;					;
		LDA	2141H
		CMP	!SVCKF1
		BNE	INTS40		;
;					;
		STZ	2141H
		BRA	INTS40
;
INTS30		EQU	$
		STA	!SVCKF1
;// 03.09.21 //		BEQ	INTS40		; sound transfer ok ?
;// 03.09.21 //;					; yes
;// 03.09.21 //		CMP	!SVSND1
;// 03.09.21 //		BEQ	INTS40		; sound transfer ok ?
;// 03.09.21 //;					; yes
		STA	2141H		; sound port set !!
		STZ	!SOUND1
;// 03.09.21 //		STA	!SVSND1
;// 03.09.21 //INTS40		EQU	$
INTS40		EQU	$
		LDA	!SOUND2
		STA	2142H 
		LDA	!SOUND3
		STA	2143H 
		STZ	!SOUND2
		STZ	!SOUND3
;
; 
		LDA	#10000000B
		STA	2100H		; blanking on
		STZ	420CH		; H-DMA disable
;
		LDA	<NMIFLG
		BNE	INT040		; NMI flag on?
;					; no
		INC	<NMIFLG		; NMI flag on
;
;---------------  DMA  --------------------------------------------------
		JSR	DMAVMA		; character DMA & VMA
;.......		JSR	OBJDMA		; obj DMA start
;
;---------------  KEYINPUT  ---------------------------------------------
		JSR	CONT2		; KEY input
;
;---------------  Scroll counter set  -----------------------------------
INT040		EQU	$
		LDA	!POLYCFG
		BEQ	INT060		; polygon on ?
;					; yes
		JMP	INTSUB2
;
INT060		EQU	$
		LDA	<WD2123
		STA	2123H
		LDA	<WD2124
		STA	2124H
		LDA	<WD2125
		STA	2125H		; window on/off set
		LDA	<WD2130
		STA	2130H		; color window on/off set
		LDA	<WD2131
		STA	2131H		; add.&sub. set
;
		LDA	<WD2132R
		STA	2132H
		LDA	<WD2132G
		STA	2132H
		LDA	<WD2132B
		STA	2132H		; color set
;
		LDA	<DPMAIN
		STA	212CH		; display select main
		LDA	<DPSUB
		STA	212DH		;                sub
;
		LDA	<WDMAIN
		STA	212EH		; window display main
		LDA	<WDSUB
		STA	212FH		;                sub
;
;;;;;;;;		LDA	<SCCH1
		LDA	!SSCCH1
		STA	210DH
;;;;;;;;		LDA	<SCCH11
		LDA	!SSCCH1+1
		STA	210DH		; SCCH1 set
;;;;;;;;		LDA	<SCCV1
		LDA	!SSCCV1
		STA	210EH
;;;;;;;;		LDA	<SCCV11
		LDA	!SSCCV1+1
		STA	210EH		; SCCV1 set
;
;;;;;;;;		LDA	<SCCH2
		LDA	!SSCCH2
		STA	210FH
;;;;;;;;		LDA	<SCCH21
		LDA	!SSCCH2+1
		STA	210FH		; SCCH2 set
;;;;;;;;		LDA	<SCCV2
		LDA	!SSCCV2
		STA	2110H
;;;;;;;;		LDA	<SCCV21
		LDA	!SSCCV2+1
		STA	2110H		; SCCV2 set
;
		LDA	<SCCH3
		STA	2111H
		LDA	<SCCH31
		STA	2111H		; SCCH3 set
		LDA	<SCCV3
		STA	2112H
		LDA	<SCCV31
		STA	2112H		; SCCV3 set
;
		LDA	<MD2106
		STA	2106H		; mozaiku set
		LDA	<MD2105
		STA	2105H		; BG. mode& char. size set
		AND	#00000111B
		CMP	#007H
		BNE	INT100		; mode-7 ?
;					; yes
		STZ	211CH
		STZ	211CH
		STZ	211DH
		STZ	211DH
		LDA	!CENTX
		STA	211FH
		LDA	!CENTX+1
		STA	211FH
		LDA	!CENTY
		STA	2120H
		LDA	!CENTY+1
		STA	2120H		; center pos. set
INT100		EQU	$
		LDA	!IRQSWFG
		BEQ	INT300		; IRQ swich on ?
;					; no
;---------------  V-part_scroll set  ------------------------------------
		LDA	4211H		; IRQ reset
		LDA	#038H
		STA	4209H		; V counter-L
		STZ	420AH		; V counter-H
		STZ	4207H
		STZ	4208H		; H counter off
;
		LDA	#10100001B
		STA	4200H		; V-part_scroll on
INT300		EQU	$
;
;---------------  Blanking check  ---------------------------------------
		LDA	<BLKFLG
		STA	2100H		; blanking on/off set
		LDA	<WD420C
		STA	420CH		; H-DMA enable
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PLB			; (DBR) reset
		PLD			; (D) pull
		PLY			; (Y) pull
		PLX			; (X) pull
		PLA			; (A) pull
RTISUB		EQU	$
		RTI
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		NMI  Routine				(INTSUB)	*
;************************************************************************
INTSUB2		EQU	$
		JSR	Object_transfer	
;
;;;;;;;;		LDA	#030H
		LDA	<POLYTIME
		STA	4209H
		STZ	420AH
		LDA	#10100001B
		STA	4200H		; polygon IRQ on!!
;---------------  Scroll counter set  -----------------------------------
		LDA	<WD2123
		STA	2123H
		LDA	<WD2124
		STA	2124H
		LDA	<WD2125
		STA	2125H		; window on/off set
		LDA	<WD2130
		STA	2130H		; color window on/off set
		LDA	<WD2131
		STA	2131H		; add.&sub. set
;
		LDA	<WD2132R
		STA	2132H
		LDA	<WD2132G
		STA	2132H
		LDA	<WD2132B
		STA	2132H		; color set
;
		LDA	<DPMAIN
		STA	212CH		; display select main
		LDA	<DPSUB
		STA	212DH		;                sub
;
		LDA	<WDMAIN
		STA	212EH		; window display main
		LDA	<WDSUB
		STA	212FH		;                sub
;
;;;;;;;;		LDA	<SCCH1
		LDA	!SSCCH1
		STA	210DH
;;;;;;;;		LDA	<SCCH11
		LDA	!SSCCH1+1
		STA	210DH		; SCCH1 set
;;;;;;;;		LDA	<SCCV1
		LDA	!SSCCV1
		STA	210EH
;;;;;;;;		LDA	<SCCV11
		LDA	!SSCCV1+1
		STA	210EH		; SCCV1 set
;
;;;;;;;;		LDA	<SCCH2
		LDA	!SSCCH2
		STA	210FH
;;;;;;;;		LDA	<SCCH21
		LDA	!SSCCH2+1
		STA	210FH		; SCCH2 set
;;;;;;;;		LDA	<SCCV2
		LDA	!SSCCV2
		STA	2110H
;;;;;;;;		LDA	<SCCV21
		LDA	!SSCCV2+1
		STA	2110H		; SCCV2 set
;
		LDA	<SCCH3
		STA	2111H
		LDA	<SCCH31
		STA	2111H		; SCCH3 set
		LDA	<SCCV3
		STA	2112H
		LDA	<SCCV31
		STA	2112H		; SCCV3 set
;
;
;---------------  Blanking check  ---------------------------------------
		LDA	<BLKFLG
		STA	2100H		; blanking on/off set
		LDA	<WD420C
		STA	420CH		; H-DMA enable
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		TSC
		TAX
		LDA	stack_pointer
		TCS
		STX	stack_pointer
;
		PLB			; (DBR) reset
		PLD			; (D) pull
		PLY			; (Y) pull
		PLX			; (X) pull
		PLA			; (A) pull
		RTI
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		IRQ  Routine				(IRQSUB)	*
;************************************************************************
IRQSUB		EQU	$
		SEI			; IRQ disable
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PHA			; (A) push
		PHX			; (X) push
		PHY			; (Y) push
		PHD			; (D) push
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	!POLYCFG
		BNE	IRQSUB2		; polygon on ?
;					; no
		LDA	4211H
		BPL	IRQS80		; part_scroll ?
;					; yes
		LDA	!IRQSWFG
		BEQ	IRQS80		; IRQswich on ?
;					; yes
IRQS20		EQU	$
		BIT	4212H
		BVC	IRQS20		; H-DMA on ?
;					; yes
		LDA	!PSCH3
		STA	2111H
		LDA	!PSCH31
		STA	2111H
		STZ	2112H
		STZ	2112H		; V-part scroll count set
;
		LDA	!IRQSWFG
		BPL	IRQS80		; IRQ off ?
;					; yes
		STZ	!IRQSWFG
		LDA	#10000001B
		STA	4200H		; psrt_scroll off
IRQS80		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PLB			; (DBR) reset
		PLD			; (D) pull
		PLY			; (Y) pull
		PLX			; (X) pull
		PLA			; (A) pull
		RTI
;
;
		MEM8
		IDX8
IRQSUB2		EQU	$
		LDA	4211H
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		TSC
		TAX
		LDA	stack_pointer
		TCS
		STX	stack_pointer
;
		PLB			; (DBR) reset
		PLD			; (D) pull
		PLY			; (Y) pull
		PLX			; (X) pull
		PLA			; (A) pull
		RTI
;
;
;
;////;
;////;************************************************************************
;////;*		OBJ_DMA					(OBJDMA)	*
;////;************************************************************************
;////OBJDMA		EQU	$
;////		MEM16
;////		REP	#00100000B	; memory 16bit mode
;////;
;////		LDA	#00400H
;////		STA	4300H		; B bus addess & control paramater
;////		LDA	#OAM
;////		STA	4302H		; A bus address (L,H)
;////		STZ	4304H		;               (B)
;////		LDA	#00220H
;////		STA	4305H		; OBJ_DMA paramater set
;////;
;////		STZ	2102H		; OAM address set
;////;
;////		MEM8
;////		SEP	#00100000B	; memory 8bit mode
;////;
;////		LDA	#00000001B
;////		STA	420BH		; DMA ch "ON"
;////		RTS
;////;
;
;
		MEM8
		IDX8
;************************************************************************
;*		VRAM clear				(VRAMCL2)	*
;************************************************************************
VRAMCL2		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00188H
		STA	<WORK2
		LDA	#0007FH
		BRA	VCL100
;
;
;************************************************************************
;*		VRAM clear				(VRAMCL1)	*
;************************************************************************
VRAMCL1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#0007FH
		STA	<WORK2
		LDA	#00300H
		BRA	VCL100
;
;
;************************************************************************
;*		VRAM clear				(VRAMCL)	*
;************************************************************************
VRAMCL		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#0007FH
		STA	<WORK2
;
;---------------  BG1,2 Vram (L) clear  ---------------------------------
		LDA	#001ECH
VCL100		EQU	$
		STA	<WORK		; (WORK0) <-- clear char. no.
		STZ	2115H
;
		STZ	2116H		; Vram address (00000H ~)
;
;// 03.07.01 //		LDA	#01809H
		LDA	#01808H
		STA	4310H		; B-bus address & DMA control paramater set
		STZ	4314H		; A-bus address (B)
		LDA	#WORK
		STA	4312H		;               (L,H)
;// 03.07.01 //		LDA	#04000H
		LDA	#04000H/2
		STA	4315H		; data count
;
		LDY	#00000010B
		STY	420BH		; DMA ch "ON"
;
;---------------  BG1,2 Vram (H) clear  ---------------------------------
		LDX	#10000000B
		STX	2115H
;
		STZ	2116H		; Vram address (00000H ~)
;
;// 03.07.01 //		LDA	#04000H
;// 03.07.01 //		LDA	#04000H/2
		STA	4315H		; data count
;
;// 03.07.01 //		LDA	#01909H
		LDA	#01908H
		STA	4310H		; B-bus address & DMA control paramater set
		LDA	#WORK1
		STA	4312H		; A-bus address (L,H)
		STY	420BH		; DMA ch "ON"
;
;
;
;---------------  BG3 Vram (L) clear  -----------------------------------
		LDA	<WORK2
		STA	<WORK		; (WORK0) <-- claer char. no.
;
		STZ	2115H
;
		LDA	#06000H
		STA	2116H		; Vram address (06000H ~)
;
;// 03.07.01 //		LDA	#01809H
		LDA	#01808H
		STA	4310H		; B-bus address & DMA control paramater set
		LDA	#WORK
		STA	4312H		; A-bus address (L,H)
;// 03.07.01 //		LDA	#02000H
		LDA	#01000H/2
		STA	4315H		; data count
;
		STY	420BH		; DMA ch "ON"
;
;---------------  BG3 Vram (H) clear  -----------------------------------
		STX	2115H
;
;// 03.07.01 //		LDA	#02000H
;// 03.07.01 //		LDA	#02000H/2
		STA	4315H		; data count
;
		LDA	#06000H
		STA	2116H		; Vram address (6000H~)
;
;// 03.07.01 //		LDA	#01909H
		LDA	#01908H
		STA	4310H		; B-bus address & DMA control paramater set
		LDA	#WORK1
		STA	4312H		; A-bus address (L,H)
;
		STY	420BH		; DMA ch "ON"
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTL
;
;
;
;
;************************************************************************
;*		Key input				(CONT2)		*
;*		[ken]	---> (A)	   <Y>				*
;*		[item]	---> (B)	<B>   <X>			*
;*		[do]	---> (X)	   <A>				*
;*									*
;*		[KEYA1]	---> BYssudlr					*
;*		[KEYA1L] --> AXLR					*
;************************************************************************
CONT2		EQU	$
		STZ	4016H
;
		LDA	4218H		; 1P contoroler
		STA	<WORK0
		LDA	4219H
		STA	<WORK1
;
		LDA	<WORK0
		STA	<KEYA1L
		TAY
		EOR	<KEYBFL
		AND	<KEYA1L
		STA	<KEYA2L		; [X,Y,L,R] key
		STY	<KEYBFL
;
		LDA	<WORK1
		STA	<KEYA1
		TAY
		EOR	<KEYBF
		AND	<KEYA1
		STA	<KEYA2		; [A,B,sl,st,u,d,l,r] key
		STY	<KEYBF
;
DEBUGMD		RTS			; << DEBUG >>
;
		LDA	421AH		; 2P contoroler
		STA	<WORK0
		LDA	421BH
		STA	<WORK1
;
		LDA	<WORK0
		STA	<KEYA1L+1
		TAY
		EOR	<KEYBFL+1
		AND	<KEYA1L+1
		STA	<KEYA2L+1	; [X,Y,L,R] key
		STY	<KEYBFL+1
;
		LDA	<WORK1
		STA	<KEYA1+1
		TAY
		EOR	<KEYBF+1
		AND	<KEYA1+1
		STA	<KEYA2+1	; [A,B,sl,st,u,d,l,r] key
		STY	<KEYBF+1
		RTS
;// 02.11.02 //		STZ	4016H
;// 02.11.02 //;
;// 02.11.02 //		LDA	4218H		; 1P contoroler
;// 02.11.02 //		STA	<KEYA1L
;// 02.11.02 //		TAY
;// 02.11.02 //		EOR	<KEYBFL
;// 02.11.02 //		AND	<KEYA1L
;// 02.11.02 //		STA	<KEYA2L		; [L,R] key
;// 02.11.02 //		STY	<KEYBFL
;// 02.11.02 //;
;// 02.11.02 //		LDA	4219H
;// 02.11.02 //		STA	<KEYA1
;// 02.11.02 //		TAY
;// 02.11.02 //		EOR	<KEYBF
;// 02.11.02 //		AND	<KEYA1
;// 02.11.02 //		STA	<KEYA2		; [A,B,sl,st,u,d,l,r] key
;// 02.11.02 //		STY	<KEYBF
;// 02.11.02 //		RTS
;
;
;************************************************************************
;*		OAM clear				(OAMCLR)	*
;************************************************************************
OAMCLR		EQU	$
		LDX	#060H
OCL020		EQU	$
		LDA	#0F0H		; Ypos
		STA	!OAM+001H,X
		STA	!OAM+005H,X
		STA	!OAM+009H,X
		STA	!OAM+00DH,X
		STA	!OAM+011H,X
		STA	!OAM+015H,X
		STA	!OAM+019H,X
		STA	!OAM+01DH,X
		STA	!OAM+081H,X
		STA	!OAM+085H,X
		STA	!OAM+089H,X
		STA	!OAM+08DH,X
		STA	!OAM+091H,X
		STA	!OAM+095H,X
		STA	!OAM+099H,X
		STA	!OAM+09DH,X
		STA	!OAM+101H,X
		STA	!OAM+105H,X
		STA	!OAM+109H,X
		STA	!OAM+10DH,X
		STA	!OAM+111H,X
		STA	!OAM+115H,X
		STA	!OAM+119H,X
		STA	!OAM+11DH,X
		STA	!OAM+181H,X
		STA	!OAM+185H,X
		STA	!OAM+189H,X
		STA	!OAM+18DH,X
		STA	!OAM+191H,X
		STA	!OAM+195H,X
		STA	!OAM+199H,X
		STA	!OAM+19DH,X
		TXA
		SEC
		SBC	#020H
		TAX
		BPL	OCL020		; oam clear end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		OAM change				(OAMCHG)	*
;************************************************************************
DTSVPD		EQU	$
		WORD	BKUP_RAM0-BKUP_RAM0
		WORD	BKUP_RAM0-BKUP_RAM0
		WORD	BKUP_RAM1-BKUP_RAM0
		WORD	BKUP_RAM2-BKUP_RAM0
		WORD	BKUP_RAM3-BKUP_RAM0
;
;
BLKCPDT		EQU	$		; block char. data buffer pointer
		WORD	BKCHBF+20H*0,BKCHBF+20H*2,BKCHBF+20H*4,BKCHBF+20H*6
;
KNCPDT		EQU	$		; sword char. data buffer pointer
		WORD	KNCHBF+20H*00H,KNCHBF+20H*01H,KNCHBF+20H*03H
		WORD	KNCHBF+20H*0FH,KNCHBF+20H*05H,KNCHBF+20H*06H
		WORD	KNCHBF+20H*08H,KNCHBF+20H*0AH
;
TTCPDT		EQU	$		; shild char. data buffer pointer
		WORD	TTCHBF+20H*00H,TTCHBF+20H*02H,TTCHBF+20H*04H
;
IMCPDT		EQU	$		; [B],[Y] char. data buffer pointer
		WORD	IMCHBF+20H*00H,IMCHBF+20H*02H,IMCHBF+20H*03H,IMCHBF+20H*0AH ; 00 : loot
		WORD	IMCHBF+20H*04H,IMCHBF+20H*05H,IMCHBF+20H*06H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*0EH,IMCHBF+20H*10H,IMCHBF+20H*11H,IMCHBF+20H*18H ; 08 : hammer
		WORD	IMCHBF+20H*12H,IMCHBF+20H*13H,IMCHBF+20H*14H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*1CH,IMCHBF+20H*1EH,IMCHBF+20H*21H,IMCHBF+20H*00H ; 10 : arrow
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*32H,IMCHBF+20H*34H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 18 : bow-gun
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*3AH,IMCHBF+20H*3CH,IMCHBF+20H*3EH,IMCHBF+20H*40H ; 20 : ami
		WORD	IMCHBF+20H*42H,IMCHBF+20H*44H,IMCHBF+20H*46H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*56H,IMCHBF+20H*58H,IMCHBF+20H*5AH,IMCHBF+20H*5BH ; 28 : soromon
		WORD	IMCHBF+20H*5CH,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*64H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 30 : book
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 38
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*22H,IMCHBF+20H*24H,IMCHBF+20H*2AH,IMCHBF+20H*2BH ; 40 : skope,zzz,onpu
		WORD	IMCHBF+20H*2CH,IMCHBF+20H*2DH,IMCHBF+20H*2EH,IMCHBF+20H*2FH
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 48
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*30H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 50 : kona
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 58
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 60
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 68
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H 
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 70
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H ; 78
		WORD	IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H,IMCHBF+20H*00H
;
IMADDD		EQU	$
;			   00        08        10        18
		WORD	00020H*07,00020H*07,00020H*03,00020H*04
;			   20        28        30        38
		WORD	00020H*14,00020H*07,00020H*02,00020H*00
;			   40        48        50        58
		WORD	00020H*04,00020H*00,00020H*02,00020H*00
;			   60        68        70        78
		WORD	00020H*00,00020H*00,00020H*00,00020H*00
;
;
EIFLCD		EQU	$		; enemy out item flame count data
		WORD	0000EH,00004H,00006H,00010H,00006H,00008H
;
EICPTD0		EQU	$		;                point data
		WORD	00020H*0,00020H*1,00020H*2,00020H*0,00020H*1,00020H*2
;
EICPTD1		EQU	$		;                point data
		WORD	00040H*0,00040H*1,00040H*2,00040H*0,00040H*1,00040H*2
;
EIDPNT		EQU	$		;                POINT
;			    coin          sankaku      ball
		WORD	EICHBF+0C0H*1,EICHBF+0C0H*2,EICHBF+0C0H*3
;
;
;
OAMCHG		EQU	$
		LDY	#01CH
OACG10		EQU	$
		TYA
		ASL	A
		ASL	A
		TAX
;
		LDA	!OAMSB+3,X
		ASL	A
		ASL	A
		ORA	!OAMSB+2,X
		ASL	A
		ASL	A
		ORA	!OAMSB+1,X
		ASL	A
		ASL	A
		ORA	!OAMSB+0,X
		STA	!OAMSUB+0,Y
;
		LDA	!OAMSB+7,X
		ASL	A
		ASL	A
		ORA	!OAMSB+6,X
		ASL	A
		ASL	A
		ORA	!OAMSB+5,X
		ASL	A
		ASL	A
		ORA	!OAMSB+4,X
		STA	!OAMSUB+1,Y
;
		LDA	!OAMSB+11,X
		ASL	A
		ASL	A
		ORA	!OAMSB+10,X
		ASL	A
		ASL	A
		ORA	!OAMSB+9,X
		ASL	A
		ASL	A
		ORA	!OAMSB+8,X
		STA	!OAMSUB+2,Y
;
		LDA	!OAMSB+15,X
		ASL	A
		ASL	A
		ORA	!OAMSB+14,X
		ASL	A
		ASL	A
		ORA	!OAMSB+13,X
		ASL	A
		ASL	A
		ORA	!OAMSB+12,X
		STA	!OAMSUB+3,Y
;
		DEY
		DEY
		DEY
		DEY
		BPL	OACG10		; set end ?
;					; yes
;;;;;;;;		RTS
;
;
;************************************************************************
;*		Change char. pointer set		(CCPTST)	*
;************************************************************************
CCPTST		EQU	$
		MEM16
		IDX16
		REP	#00110001B	; memory 16bit mode & CLC
;
		LDX	!PCHPT0
		LDA	PCHDT0,X
		STA	!HCBFP0
		ADC	#00200H
		STA	!HCBFP1		; HEAD char. address set
;
		LDA	PCHDT1,X
		STA	!BCBFP0
		CLC
		ADC	#00200H
		STA	!BCBFP1		; BODY char. address set
;
		LDX	!PCHPT1
		LDA	PCHDT2,X
		STA	!ACBFP0
		LDX	!PCHPT2
		LDA	PCHDT2,X
		STA	!ACBFP1		; ARME char. address set
;
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
;
		LDX	!KENCPT
		LDA	KNCPDT,X
		STA	!KCHPT0
		CLC
		ADC	#00020H*00CH
		STA	!KCHPT1		; sword char. buffer point set
;
		LDX	!TATCPT
		LDA	TTCPDT,X
		STA	!TCHPT0
		CLC
		ADC	#00020H*006H
		STA	!TCHPT1		; shild char. buffer point set
;
		LDA	!ITMCPT
		AND	#0F8H
		LSR	A
		LSR	A
		TAY
		LDA	!ITMCPT
		ASL	A
		TAX
		LDA	IMCPDT,X
		STA	!ICHPT0
		CLC
		TYX			; (X) <-- (Y)
		ADC	IMADDD,X
		STA	!ICHPT1		; [B],[Y] char. buffer point set
;
;
;
		LDA	!BKMODE
		AND	#00003H
		ASL	A
		TAX
		LDA	BLKCPDT,X
		STA	!BKCBFP0
		CLC
		ADC	#00100H
		STA	!BKCBFP1	; block char. buffer point set
;
;
;;;;;;;;		STZ	!WTCBFPT	; water char. buffer point off
		LDA	>WTCHCT
		DEC	A
		STA	>WTCHCT
		BNE	CCPTS60		; char. change ?
;					; yes
		LDA	#00009H
		LDX	<MPDTN1
		CPX	#0B5H
		BEQ	CCPTS10		; yama ?
;					; no
		CPX	#0BCH
		BNE	CCPTS20		; ura-yama ?
;					; yes
CCPTS10		EQU	$
		LDA	#00017H
CCPTS20		EQU	$
		STA	>WTCHCT
;
		LDA	>WTCHPT
		CLC
		ADC	#00020H*(10H+10H)
		CMP	#00020H*(10H+10H)*3
		BNE	CCPTS40		; limit ?
;					; yes
		LDA	#00000H
CCPTS40		EQU	$
		STA	>WTCHPT
		CLC
		ADC	#WTRCHBF
		STA	!WTCBFPT	; water char. buffer point set
CCPTS60		EQU	$
;
;
;
		LDA	>EICHCT
		DEC	A
		STA	>EICHCT
		BNE	CCPT180		; char. change ?
;					; yes
		LDA	>EICHPT
		TAX
		INX
		INX
		CPX	#0000CH
		BNE	CCPT100		; limit ?
;					; yes
		LDX	#00000H
CCPT100		EQU	$
		TXA
		STA	>EICHPT
		LDA	EIFLCD,X
		STA	>EICHCT		; next count set
;
		LDA	#EICHBF
		CLC
		ADC	EICPTD0,X
		STA	!EICBFP0
		CLC
		ADC	#00060H
		STA	!EICBFP1	; coin char. point set
;
;// 03.07.03 //		LDY	!EIPONT
;// 03.07.03 //		LDA	EIDPNT,Y
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	EICPTD1,X
;// 03.07.03 //		STA	!EICBFP2
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	#00040H*9
;// 03.07.03 //		STA	!EICBFP3	; 4x4 
CCPT180		EQU	$
		LDA	!OPTHPT
		ASL	A
		ADC	#OPTCHBF
		STA	!OPTCHP0
		ADC	#00200H
		STA	!OPTCHP1	; option HEAD
		LDA	!OPTBPT
		ASL	A
		ADC	#OPTCHBF
		STA	!OPTCBP0
		ADC	#00200H
		STA	!OPTCBP1	; option BODY
;
		LDA	!TORICFG
		ASL	A
		ADC	#TRICHBF
		STA	!TRICHP0
		ADC	#00200H
		STA	!TRICHP1	; tori
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		Subroutine index call			(JSRSUB)	*
;************************************************************************
JSRSUB		EQU	$
		STY	<WORK3		; (Y) push
;
		PLY
		STY	<WORK0
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		AND	#000FFH
		ASL	A
		TAY
		PLA
		STA	<WORK1
;
		INY
		LDA	[<WORK0],Y
		STA	<WORK0
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDY	<WORK3		; (Y) pull
		JML	(!WORK0)
;
;
;************************************************************************
;*		Long Subroutine index call		(JSRSUBL)	*
;************************************************************************
JSRSUBL		EQU	$
		STY	<WORK5		; (Y) push
;
		PLY
		STY	<WORK2
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		AND	#000FFH
		STA	<WORK3		; A*3
		ASL	A
		ADC	<WORK3
		TAY
		PLA
		STA	<WORK3
;
		INY
		LDA	[<WORK2],Y
		STA	<WORK0
;
		INY
		LDA	[<WORK2],Y
		STA	<WORK1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDY	<WORK5		; (Y) pull
		JML	(!WORK0)
;
;
;************************************************************************
;*		RAM clear				(RAMCLR)	*
;************************************************************************
RAMCLR		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDY	!STACK+0FEH		; Stack data push
;
;// 03.06.28 //		LDX	#01FFEH
;// 03.06.28 //RMR040		EQU	$
;// 03.06.28 //		STZ	<WORK0,X
;// 03.06.28 //		DEX
;// 03.06.28 //		DEX
;// 03.06.28 //		CPX	#00200H
;// 03.06.28 //		BCS	RMR040		; 0200H ~ 1FFFH clear end ?
;// 03.06.28 //;					; yes
;// 03.06.28 //		LDX	#0003EH
;// 03.06.28 //RMR060		EQU	$
;// 03.06.28 //		STZ	<WORK0+000H,X
;// 03.06.28 //		STZ	<WORK0+040H,X
;// 03.06.28 //		STZ	<WORK0+080H,X
;// 03.06.28 //		STZ	<WORK0+0C0H,X
;// 03.06.28 //		DEX
;// 03.06.28 //		DEX
;// 03.06.28 //		BPL	RMR060		; RAM clear end ?
;// 03.06.28 //;					; yes
;*** 03.07.03 ***		LDX	#01FFEH
;*** 03.07.03 ***		LDA	#00000H
;*** 03.07.03 ***RMR080		EQU	$
;*** 03.07.03 ***		STA	<WORK,X
;*** 03.07.03 ***		STA	>7E2000H,X
;*** 03.07.03 ***		STA	>7E4000H,X
;*** 03.07.03 ***		STA	>7E6000H,X
;*** 03.07.03 ***		STA	>7E8000H,X
;*** 03.07.03 ***		STA	>7EA000H,X
;*** 03.07.03 ***		STA	>7EC000H,X
;*** 03.07.03 ***		STA	>7EE000H,X
;*** 03.07.03 ***		STA	>7F0000H,X
;*** 03.07.03 ***		STA	>7F2000H,X
;*** 03.07.03 ***		STA	>7F4000H,X
;*** 03.07.03 ***		STA	>7F6000H,X
;*** 03.07.03 ***		STA	>7F8000H,X
;*** 03.07.03 ***		STA	>7FA000H,X
;*** 03.07.03 ***		STA	>7FC000H,X
;*** 03.07.03 ***		STA	>7FE000H,X
;*** 03.07.03 ***		DEX
;*** 03.07.03 ***		DEX
;*** 03.07.03 ***		BNE	RMR080		; end ?
;*** 03.07.03 ***;					; yes
		LDX	#003FEH
		LDA	#00000H
RMR080		EQU	$
		STA	00000H,X
		STA	00400H,X
		STA	00800H,X
		STA	00C00H,X
		STA	01000H,X
		STA	01400H,X
		STA	01800H,X
		STA	01C00H,X
;*** 03.07.03 ***		STA	<WORK,X
;*** 03.07.03 ***		STA	>7E2000H,X
;*** 03.07.03 ***		STA	>7E4000H,X
;*** 03.07.03 ***		STA	>7E6000H,X
;*** 03.07.03 ***		STA	>7E8000H,X
;*** 03.07.03 ***		STA	>7EA000H,X
;*** 03.07.03 ***		STA	>7EC000H,X
;*** 03.07.03 ***		STA	>7EE000H,X
;*** 03.07.03 ***		STA	>7F0000H,X
;*** 03.07.03 ***		STA	>7F2000H,X
;*** 03.07.03 ***		STA	>7F4000H,X
;*** 03.07.03 ***		STA	>7F6000H,X
;*** 03.07.03 ***		STA	>7F8000H,X
;*** 03.07.03 ***		STA	>7FA000H,X
;*** 03.07.03 ***		STA	>7FC000H,X
;*** 03.07.03 ***		STA	>7FE000H,X
		DEX
		DEX
		BNE	RMR080		; end ?
;					; yes
		STA	>CGWORK+000H
;
		STA	>DTSVPT		; data save pointer off
		LDA	>BUCKSUM0
		CMP	#055AAH
		BEQ	RMR100		; back-up init ?
;					; yes
		LDA	#00000H
		STA	>BUCKSUM0
RMR100		EQU	$
		LDA	>BUCKSUM1
		CMP	#055AAH
		BEQ	RMR120		; back-up init ?
;					; yes
		LDA	#00000H
		STA	>BUCKSUM1
RMR120		EQU	$
		LDA	>BUCKSUM2
		CMP	#055AAH
		BEQ	RMR140		; back-up init ?
;					; yes
		LDA	#00000H
		STA	>BUCKSUM2
RMR140		EQU	$
		STY	!STACK+0FEH	; Stack data pull
;
;// 02.12.14 //		LDA	#0FFFFH
;// 02.12.14 //		STA	!B1CWF0
;// 02.12.14 //		STA	!B1CWF1
;
		STZ	212EH		; window off
;
;// 03.06.28 //		LDX	#STACKED-STACK
;// 03.06.28 //RMR200		EQU	$
;// 03.06.28 //		STZ	!STACK,X
;// 03.06.28 //		DEX
;// 03.06.28 //		DEX
;// 03.06.28 //		BPL	RMR200		; ram clear end ?
;// 03.06.28 //;					; yes
;;;;;;;;		STZ	!GOVRFG		; game-over check flag
;;;;;;;;		STZ	!SPMCFG		; special magic flag
;;;;;;;;		STZ	!YUREXD
;;;;;;;;		STZ	!YUREYD		; yure x,y-data
;;;;;;;;		STZ	!SSCCH2
;;;;;;;;		STZ	!SSCCH1
;;;;;;;;		STZ	!SSCCV2
;;;;;;;;		STZ	!SSCCV1		; SCCH,V clear
;;;;;;;;		STZ	!PSCCCT		; player scroll counter
;;;;;;;;		STZ	!IRQSWFG	; IRQ swich off
;;;;;;;;		STZ	!POLYCFG	; polygon check flag off
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#10000000B
		STA	<BLKFLG		; blanking flag set
		INC	<CGVMAF
		RTS
;
;
;
;
;************************************************************************
;*		Ground character check			(GDCHCK)	*
;*		[in]	work0,1 <-- y-pos.				*
;*			work2,3 <-- x-pos.				*
;*									*
;*		[out]	(A)						*
;************************************************************************
;// 02.12.12 //PREPDT		EQU	$		; Player pos. replace data
;// 02.12.12 //		WORD	00000H,00000H,00000H
;// 02.12.12 //		WORD	00060H,00060H,00060H
;// 02.12.12 //		WORD	000C0H,000C0H,000C0H
;// 02.12.12 //		WORD	00120H,00120H,00120H
;// 02.12.12 //;
;// 02.12.12 //PREPD0		EQU	$		; Player pos. replace data
;// 02.12.12 //		WORD	00000H,00000H,00000H
;// 02.12.12 //		WORD	00300H,00300H,00300H
;// 02.12.12 //		WORD	00600H,00600H,00600H
;// 02.12.12 //		WORD	00900H,00900H,00900H
;// 02.12.12 //;
;// 02.12.12 //;
;// 02.12.12 //PREPD1		EQU	$		; Player pos. replace data
;// 02.12.12 //		WORD	00000H,00000H,00000H,00000H
;// 02.12.12 //		WORD	00080H,00080H,00080H,00080H
;// 02.12.12 //		WORD	00100H,00100H,00100H,00100H
;// 02.12.12 //		WORD	00180H,00180H,00180H,00180H
;// 02.12.12 //;
;// 02.12.12 //PREPD2		EQU	$		; Player pos. replace data
;// 02.12.12 //		WORD	00000H,00000H,00000H,00000H
;// 02.12.12 //		WORD	00400H,00400H,00400H,00400H
;// 02.12.12 //		WORD	00800H,00800H,00800H,00800H
;// 02.12.12 //		WORD	00C00H,00C00H,00C00H,00C00H
;// 02.12.12 //;
;// 02.12.12 //;
GDCHCK		EQU	$
;// 02.12.12 //		BRA	EVCHCK
;// 02.12.12 //;
;// 02.12.12 //		LDA	<SLMODE
;// 02.12.12 //		CMP	#MD_evply
;// 02.12.12 //		BEQ	EVCHCK		; event ?
;// 02.12.12 //;					; no
;// 02.12.12 //		MEM16
;// 02.12.12 //		IDX16
;// 02.12.12 //		REP	#00110000B	; memory,index 16bit mode
;// 02.12.12 //;
;// 02.12.12 //		LDA	<WORK0
;// 02.12.12 //		AND	#00F00H
;// 02.12.12 //		ASL	A
;// 02.12.12 //		XBA
;// 02.12.12 //		TAX
;// 02.12.12 //		LDA	<WORK0
;// 02.12.12 //		SEC
;// 02.12.12 //		SBC	>PREPD0,X
;// 02.12.12 //		AND	#0FFF0H
;// 02.12.12 //		ASL	A
;// 02.12.12 //		STA	<WORK6
;// 02.12.12 //		ASL	A
;// 02.12.12 //		ASL	A
;// 02.12.12 //		SEC
;// 02.12.12 //		SBC	<WORK6
;// 02.12.12 //		STA	<WORK6
;// 02.12.12 //;
;// 02.12.12 //		LDA	<WORK2
;// 02.12.12 //		AND	#001E0H
;// 02.12.12 //		LSR	A
;// 02.12.12 //		LSR	A
;// 02.12.12 //		LSR	A
;// 02.12.12 //		LSR	A
;// 02.12.12 //		TAX
;// 02.12.12 //		LDA	<WORK2
;// 02.12.12 //		SEC
;// 02.12.12 //		SBC	>PREPDT,X
;// 02.12.12 //		AND	#0FFFEH
;// 02.12.12 //		CLC
;// 02.12.12 //		ADC	<WORK6
;// 02.12.12 //		CMP	#00900H
;// 02.12.12 //		BCC	EVCK40		; buffer-0 ?
;// 02.12.12 //;					; no
;// 02.12.12 //		SEC
;// 02.12.12 //		SBC	#00900H
;// 02.12.12 //		ORA	#02000H
;// 02.12.12 //		BRA	EVCK40
;// 02.12.12 //; 
;// 02.12.12 //;
;// 02.12.12 //;
;// 02.12.12 //;************************************************************************
;// 02.12.12 //;*		Event character check			(EVCHCK)	*
;// 02.12.12 //;*		[in]	work0,1 <-- y-pos.				*
;// 02.12.12 //;*			work2,3 <-- x-pos.				*
;// 02.12.12 //;*									*
;// 02.12.12 //;*		[out]	(A)						*
;// 02.12.12 //;************************************************************************
;// 02.12.12 //EVCHCK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 02.11.16 //		LDA	<WORK0
;// 02.11.16 //		AND	#00F00H
;// 02.11.16 //		ASL	A
;// 02.11.16 //		XBA
;// 02.11.16 //		TAX
		LDA	<WORK0
		SEC
		SBC	!GCCKY0
		AND	!GCCKY1
;// 02.11.16 //		SBC	>PREPD2,X
;// 02.11.16 //		AND	#0FFF0H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
;
;// 02.11.16 //		LDA	<WORK2
;// 02.11.16 //		AND	#001E0H
;// 02.11.16 //		LSR	A
;// 02.11.16 //		LSR	A
;// 02.11.16 //		LSR	A
;// 02.11.16 //		LSR	A
;// 02.11.16 //		TAX
		LDA	<WORK2
		SEC
		SBC	!GCCKX0
		AND	!GCCKX1
;// 02.11.16 //		SBC	>PREPD1,X
;// 02.11.16 //		AND	#0FFFEH
;/**/ 03.06.27 /**/		CLC
;/**/ 03.06.27 /**/		ADC	<WORK6
		ORA	<WORK6
;// 02.12.11 //		CMP	#01000H
;// 02.12.11 //		BCC	EVCK40		; buffer-0 ?
;// 02.12.11 //;					; no
;// 02.12.11 //;// 02.11.21 //		SEC
;// 02.12.11 //		SBC	#01000H
;// 02.12.11 //		ORA	#02000H
;// 02.12.11 //EVCK40		EQU	$
		TAX
		LDA	>GDBUF0,X
		ASL	A
		ASL	A
		STA	<WORK6
;
		LDA	<WORK0
		AND	#00008H
		LSR	A
		LSR	A
		TSB	<WORK6
		LDA	<WORK2
		AND	#00001H
		ORA	<WORK6
		ASL	A
		TAX
;// 02.12.17 //		STZ	<WORK6
;// 02.12.17 //		LDA	>MPUNIT,X
;// 02.12.17 //		AND	#001FFH
;// 02.12.17 //		CMP	#00042H
;// 02.12.17 //		BEQ	EVCK40		; slanting ?
;// 02.12.17 //;					; no
;// 02.12.17 //		CMP	#00063H
;// 02.12.17 //		BEQ	EVCK40		; slanting ?
;// 02.12.17 //;					; no
;// 02.12.17 //		CMP	#00065H
;// 02.12.17 //		BEQ	EVCK40		; slanting ?
;// 02.12.17 //;					; no
;// 02.12.17 //		CMP	#00064H
;// 02.12.17 //		BNE	EVCK80		; slanting ?
;// 02.12.17 //;					; yes
;// 02.12.17 //EVCK40		EQU	$
;// 03.06.27 //		LDA	>MPUNIT,X
;// 03.06.27 //		AND	#0100000000000000B
;// 03.06.27 //		ASL	A
;// 03.06.27 //		ROL	A
;// 03.06.27 //		ROL	A
;// 03.06.27 //		STA	<WORK6
;
		LDA	>MPUNIT,X
		STA	<WORK6
		AND	#001FFH
;// 02.12.17 //EVCK80		EQU	$
		TAX
		LDA	>GRDCDD,X	; (A) <-- return code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		CMP	#010H
		BCC	EVCK40		; naname ?
;					; yes
		CMP	#01CH
		BCS	EVCK40		; naname ?
;					; yes
		STA	<WORK6
		LDA	<WORK6+1
		AND	#01000000B
		ASL	A
		ROL	A
		ROL	A
		ORA	<WORK6
EVCK40		EQU	$
		RTL
;
;
;
;
;*********************************************************************
;*       Sound boot loader  V1.1                                     *
;*********************************************************************
; 
;-------------------------------------------------
APU_port0      EQU      02140H
APU_port1      EQU      02141H
APU_port2      EQU      02142H
APU_port3      EQU      02143H
address        EQU      00000H
;-------------------------------------------------
; 
Boot_APU       EQU      $ 
               PHP
               REP      #00110000B
               IDX16
               MEM16
               LDY      #00 
               LDA      #0BBAAH 
boot_initial   EQU      $ 
               CMP      !APU_port0     ;m16 
               BNE      boot_initial
               SEP      #00100000B
               MEM8 
               LDA      #0CCH 
               BRA      boot_entry1 
; 
boot_repeat    EQU      $ 
               LDA      [<address],Y 
               INY
               XBA
               LDA      #00 
               BRA      boot_entry2 
; 
boot_loop      EQU      $ 
               XBA
               LDA      [<address],Y 
               INY
		CPY	#08000H
		BNE	LMT_OVC00	;
;					;
		LDY	#00000H
		INC	<address+2
LMT_OVC00	EQU	$
               XBA
boot_wait1     EQU      $ 
               CMP      !APU_port0
               BNE      boot_wait1
               INC      A 
boot_entry2    EQU      $ 
               REP      #00100000B
               STA      !APU_port0     ;m16 
               SEP      #00100000B
; 
               DEX
               BNE      boot_loop 
; 
boot_wait2     EQU      $ 
               CMP      !APU_port0
               BNE      boot_wait2
boot_zero      EQU      $ 
               ADC      #03 
               BEQ      boot_zero 
boot_entry1    EQU      $ 
               PHA                     ;> 
               REP      #00100000B
               LDA      [<address],Y    ;m16 
               INY
               INY
               TAX
;;;;;;;;		CPY	#08000H
;;;;;;;;		BNE	LMT_OVC20	;
;;;;;;;;					;
;;;;;;;;		LDY	#00000H
;;;;;;;;		INC	<address+2
;;;;;;;;LMT_OVC20	EQU	$
               LDA      [<address],Y    ;m16 
               INY
               INY
;;;;;;;;		CPY	#08000H
;;;;;;;;		BNE	LMT_OVC40	;
;;;;;;;;					;
;;;;;;;;		LDY	#00000H
;;;;;;;;		INC	<address+2
;;;;;;;;LMT_OVC40	EQU	$
               STA      !APU_port2     ;m16 
               SEP      #00100000B
               CPX      #01 
               LDA      #00 
               ROL      A 
               STA      !APU_port1
               ADC      #07FH 
               PLA                     ;< 
               STA      !APU_port0
boot_wait3     EQU      $ 
               CMP      !APU_port0
               BNE      boot_wait3
               BVS      boot_repeat 
; 
               STZ      !APU_port0     ;port reset !! 
               STZ      !APU_port1
               STZ      !APU_port2
               STZ      !APU_port3
; 
               PLP
               RTS
; 
;
;
               MEM8 
               IDX8 
;***********************************************************
;*       sound transfer ( main )                           *
;***********************************************************
SNDTR0		EQU	$ 
		LDA	#LOW (198000H)   ;sound address set 
		STA	<address 
		LDA	#HIGH (198000H) 
		STA	<address+1 
		LDA	#BANK (198000H) 
		STA	<address+2 
SNDTR    	EQU	$ 
		SEI			;IRQ disable !! 
SNDJSR   	EQU	$ 
		JSR	Boot_APU	;sound transfer 
		CLI			;IRQ enable !!
		RTS
;
; 
;***********************************************************
;*       sound transfer ( main )                           *
;***********************************************************
SNDTR1		EQU	$ 
		LDA	#LOW (198000H+09EF5H+08000H)   ;sound address set 
		STA	<address
		LDA	#HIGH (198000H+09EF5H+08000H) 
		STA	<address+1 
		LDA	#BANK (198000H+09EF5H+08000H) 
SNDCNG		EQU	$
		STA	<address+2 
;
		SEI			;IRQ disable !! 
		JSR	Boot_APU	;sound transfer 
		CLI			;IRQ enable !!
		RTL
;
;
;***********************************************************
;*       sound transfer ( main )                           *
;***********************************************************
SNDTR2		EQU	$ 
		LDA	#LOW (1B8000H)   ;sound address set 
		STA	<address 
		LDA	#HIGH (1B8000H) 
		STA	<address+1 
		LDA	#BANK (1B8000H) 
		BRA	SNDCNG
;
;
;***********************************************************
;*       sound transfer ( main )                           *
;***********************************************************
SNDTR3		EQU	$ 
		LDA	#LOW (1AD380H)   ;sound address set 
		STA	<address 
		LDA	#HIGH (1AD380H) 
		STA	<address+1 
		LDA	#BANK (1AD380H) 
		BRA	SNDCNG
;
;
;
;
;
;
;
;************************************************************************
;*		Blanking on				(BLANKING)	*
;************************************************************************
BLANKING	EQU	$
		LDA	#10000000B
		STA	2100H
		STA	<BLKFLG		; blanking on
		STZ	420CH
		STZ	<WD420C		; H-DMA disable
		RTL
; 
;
;
;
;
;************************************************************************
;*		Data  SAVE				(DTSAVE)	*
;************************************************************************
DTSAVE		EQU	$
		PHB
		LDA	#BANK DTSVPT
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	DTSVPT
		LDA	>DTSVPD,X
;// 03.07.15 //		BMI	DTSV999		; data save ?
;// 03.07.15 //;					; yes
;// 03.07.15 //;
		TAY
		PHY			; (Y) push
		LDX	#00000H
DTSV020		EQU	$
		LDA	>ZEL_DATA+000H,X
		STA	BKUP_RAM0+000H,Y
		STA	BKUP_RAM3+000H,Y
		LDA	>ZEL_DATA+100H,X
		STA	BKUP_RAM0+100H,Y
		STA	BKUP_RAM3+100H,Y
		LDA	>ZEL_DATA+200H,X
		STA	BKUP_RAM0+200H,Y
		STA	BKUP_RAM3+200H,Y
		LDA	>ZEL_DATA+300H,X
		STA	BKUP_RAM0+300H,Y
		STA	BKUP_RAM3+300H,Y
		LDA	>ZEL_DATA+400H,X
		STA	BKUP_RAM0+400H,Y
		STA	BKUP_RAM3+400H,Y
		INY
		INY
		INX
		INX
		CPX	#00100H
		BNE	DTSV020		; save end ?
;					; yes
		LDX	#00000H
		TXA
DTSV040		EQU	$
		CLC
		ADC	>ZEL_DATA,X
		INX
		INX
		CPX	#004FEH
		BNE	DTSV040		;
;					;
		STA	<WORK0
		PLY			; (Y) pull
		LDA	#05A5AH
		SEC
		SBC	<WORK0
		STA	>ZEL_DATA+04FEH
		TYX			; (X) <-- (Y)
		STA	>BKUP_RAM0+04FEH,X
		STA	>BKUP_RAM3+04FEH,X
DTSV999		EQU	$
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
;
;
;************************************************************************
;*									*
;************************************************************************
		ORG	0FFC0H
;
		BYTE	'Z','E','L','D','A','N','O','D','E','N','S','E','T','S','U',' ',' ',' ',' ',' ',' ',' '
		HEX	02,0a,03,00,01,00,FF,FF,FF,FF
;
;
;
;
;
;
;************************************************************************
;*		VECTOR							*
;************************************************************************
;===============  Native mode vector  ===================================
		ORG	0FFE4H
;
		WORD	RTISUB		;COP
		ORG	0FFE8H
		WORD	RTISUB		;Abort
		WORD	INTSUB		;NMI
		WORD	GSTART		;(???)RESET?
		WORD	IRQSUB		;IRQ
;
;===============  Emulation mode vector  ================================
		ORG	0FFF4H
;
		WORD	RTISUB		;COP
		WORD	RTISUB		;(???)
		WORD	RTISUB		;About
		WORD	RTISUB		;NMI
		WORD	GSTART		;Reset
		WORD	IRQSUB		;IRQ
;
;
;
		END

