;
		INCLUDE	zel_ram.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1992.01.22(WED)
;
;------------------------------------------------------------------------
;
		ORG	028000H
;
;=============================================== (zel_init) =============
		GLB	TILIT0,TILIT1,TILIT3,INIT0,INIT1,INIT2,INIT3
		GLB	PLMAIN1,PLMAIN2,PLMAIN3,SPSELCT,DJKYSV
		GLB	MZFDOUT,MZFDIN,WPFDOUT,WPFDIN,GHLFADE
		GLB	BCWFOUT,BCKGOUT,UBCWFOUT,USSCLER,ENDTRYF
		GLB	UT4RWT,UT4RWT1,RESTTST,PLMN2000,SCL540
		GLB	ENDINT0,ENDINT1,ENDGSCL,EIT800
;
		GLB	MPBTSET,MPBTSET1,MAPCDT,GDMCK800,GSLC400,GNDRWT2,GNDRWT3
		GLB	XCALC0,XCALC1,XCALC2,XCALC3
		GLB	YCALC0,YCALC1,YCALC2,YCALC3
		GLB	YCALC00,PFLGCL,SND1CHK,TYCNCST,UDJRTNCK,PRABCK,PRABC1
;
		GLB	STPC800,KGBG000,KGBG100,KGBG200,BCKG800
		GLB	CGWSET0,CGWSET1,CGWSET2
;
		GLB	PLRPDY,PLRPDX,DARKDT,UDJBITD
;
		GLB	p1_move,p1_scl0,p1_scl1,p1_bchg,p1_dopn,p1_sdop
		GLB	p1_stpc,p1_hldn,p1_mcng,p1_bmbd,p1_ltwp
		GLB	p1_wtrd,p1_wtru,p1_wgop,p1_kstp,p1_fdin,p1_mcg1
		GLB	p1_warp,p1_sls0,p1_sls1,p1_hlrs,p1_dwrp,p1_tmyk
		GLB	p1_swon,p1_plgn,p1_gnop
;
		GLB	p2_move,p2_atmv,p2_doet,p2_dext,p2_dex1,p2_dwrt
		GLB	p2_fout,p2_awt1,p2_fin1,p2_fot1,p2_fot2,p2_fot3
		GLB	p2_mprs,p2_kage,p2_fot4,p2_hlrs,p2_kiri,p2_kgrs
		GLB	p2_kzbd,p2_warp,p2_kmww
;
		GLB	ut4p00,ut4p01,ut4p02,ut4p03,ut4p04,ut4p05,ut4p06
		GLB	ut4p07,ut4p08,ut4p09,ut4p0C
;=============================================== (zel_main) =============
		EXT	VRAMCL,JSRSUB,JSRSUBL,SNDTR1,SNDTR2,SNDTR3,BLANKING
;
		EXT	MD_title,MD_selct,MD_pcopy,MD_pkill,MD_ptork
		EXT	MD_djit0,MD_djint,MD_djply,MD_gdint,MD_gdply
		EXT	MD_evint,MD_evply
		EXT	MD_fdout,MD_fdin,MD_etcpl
		EXT	MD_wpout,MD_wpin,MD_ghldn,MD_gover,MD_bcfot
		EXT	MD_bckgr,MD_ubsfo,MD_psrst,MD_usscl
		EXT	MD_endg1,MD_etryf,MD_spsel
;=============================================== (zel_data0) ============
		EXT	BITCD0,UPADR0,nulldt
;=============================================== (zel_code) =============
		EXT	DJCDITST,DJCODST
;=============================================== (zel_isub) =============
		EXT	BGMDST,INBGWT1,WD2132IT
		EXT	TINCLST,INCLST0,INCLST1,INCLS140,CGWKST,CGWKST1,CGWKST2
;
		EXT	IIT1000,IIT2000,IIT3000,IIT4000,IIT6000
;
		EXT	MPTOGD,MPINT0,MPALST,GDMMRST
		EXT	MPMAIN,GNXBGWT,WTVRAM,GSLBGWT
		EXT	MP1TOGD,GNDRWT0,GNDRWT1,MPSIZE,DJSNDD
;=============================================== (zel_sub0) =============
		EXT	UROJCST
;
		EXT	RBGCDT,CGPTDT
;
		EXT	p3_sitm,p3_msge,p3_mapd,p3_life,p3_pray,p3_cgrs
		EXT	p3_gmpd,p3_mpup,p3_lmup,p3_warp,p3_prst
;=============================================== (zel_play) =============
		EXT	PLMOVE,PYOMST,PYCRCN,PYCRCN1,PYSPST,PLAFHL,HPMV400,FUEMOVL
		EXT	OMS000,INWDIT,INWDMV,RASNIN,RASNOT,STRTIN,STRTOT
;
		EXT	PYDMCLR,BLCKOM,OPNINT,SWSPCL2,PLJSCK,PYKNSP1,EDPYDM0
		EXT	PLYCLR,PLYCLR1,DNJPYCL,HEDCHEG
;
		EXT	LNMD,RABT,TRFS,DAMG3,prnc1
;=============================================== (zel_exst) =============
		EXT	BMCLER,RAOPIT,BMCLER2,MESWIT
;
		EXT	bakud,CDKMV
;=============================================== (zel_bms1) =============
		EXT	CDKNINT,takar
;=============================================== (zel_vma) ==============
		EXT	GDBGWT,WBUFS0,WBUFS1
;
		EXT	VT01,VT03,VT04
;
		EXT	bgw4,bgw9,bgwA,bgwC,bgwD,bgw17,bgw18
;=============================================== (zel_bgwt) =============
		EXT	RCHRCK,BGMVCHK,INFDCHK,BGCHNG,CHRCNG1
		EXT	LMPTIMER,BDROPEN,DOPPLY,SDRPLY,GNNOPEN
		EXT	BLKPLY,CSWLPLY,WTRDOWN,WTRCLR0,WTRCLR1
		EXT	WTRUPP,WGTOPEN,RASENW0,RASENW1,TYCDCNG,TGBLKWT
;
		EXT	CDBGCD,PLBGCD,RCKED
;
		EXT	inf_not
;=============================================== (zel_make) =============
		EXT	MKROOM
;=============================================== (zel_grnd) =============
		EXT	GDRCHK,GEVTCHK1,EEVTCHK,GDINFCK,KMWWST
		EXT	KAGEIT,KAGEMV,KAGEMV1,KAGEMV2
;
		EXT	GDRW0400
;=============================================== (zel_bg3) ==============
		EXT	MTRON2,MTRON3,MTRON4,ITEMSET,BITMCKL,BMBTIMER
		EXT	MTRDSP,SLITEM,MAPDSP,KAIHUKU
		EXT	LMPCHCK,KAIMP,FLNODSP,FLNOCLS
;=============================================== (zel_gmap) =============
		EXT	GMAPDP,MPWARP,MWRP900,MWRPB00,MWRPC40
;=============================================== (zel_comn) =============
		EXT	CGCNG0,CGCNG1,DKRMCGST,KCGCNG,WD2132ST
		EXT	KCCNG0,CTPCZZZ
;
		EXT	WIPEIT0,WIPEIT1,WIPEMV,LGTWPMV
		EXT	CTPITST,YMCGCNG,GOVRCCNG,MGMCGRS2
		EXT	WPCCNG0,WPCCNG1,WPCCNG2,WPCCNG3
;=============================================== (zel_msge) =============
		EXT	MSGE_I,MSGADST,MSGETNP
;=============================================== (zel_char) =============
		EXT	CHSCHNG,CHSCHN0,CHRCHNG,CHRCBS0,CHRCBS1,CHRCBSZ
		EXT	BGCHCNG,OJCHCNG,GCGCHNG,KNCBFST,TTCBFST
		EXT	WTRCBFS0,WTRCBFS1,PWTRCGS2,PWTRCGS3,ITMCBFST,OPTCBFST
		EXT	SPOJCNG,MSGVRMS,ENDGVRMS
;
		EXT	DANCORST,KOUKAST,DJCGSET,MSCGST1,MSCGST2,NKCGST0,NKCGST1
		EXT	OBJYSET,CHITEMST,B3CGSET,USSCGST,DJNCGDT,PLCGCN2
;
		EXT	GDCGST,GDCGST2,BGCBDT0,spoj0,spoj7,spoj9
;
		EXT	C_0A0,C_4C0
		EXT	C_1F0,C_1X0,C_1Y0,C_2R1,C_2U0,C_2W0
		EXT	C_1W0,C_1Y1,C_1Z0,C_1Z1,C_2A0
;=============================================== (zel_enmy) =============
		EXT	ENEMY,EFLCHK
;=============================================== (zel_enmy4) ============
		EXT	PLCHKST
;=============================================== (zel_enmy3) ============
		EXT	POLIWCG
;=============================================== (zel_endt) =============
		EXT	ENDTST,GREDST,GREDS2,ENGRCK,ALCLER,HYUSET,ETCLER
;=============================================== (zel_munt) =============
		EXT	MPUNIT
;
		EXT	drut2,drut3,drut4,drut5
		EXT	drut6,drut7,drut8,drut9
		EXT	drutA,drutB,drutC,drutD
;
		EXT	dru10,dru11,dru12,dru13
		EXT	dru14,dru15,dru16,dru17
;
		EXT	atbiw0,atbiw1,atbiw2,atbiw3,atbiw4,atbiw5,atbiw6,atbiw7
;
		EXT	hakut0,hakut1,hakut2,hakut3,hakut4,hakut5
		EXT	hakut6,hakut7,hakut8,hakut9,hakutA,hakutB,hakutC,hakutD
;
		EXT	kzbdu0,kzbdu1,kzbdu2,kzbdu3,kzbdu4
;=============================================== (zel_title) ============
		EXT	POLGNED,TRYFS10
;=============================================== (zel_ending) ===========
		EXT	GGNDSCL,EDPLINT
;=============================================== (zel_msge) =============
		EXT	MS_0076,MS_0077,MS_0580,MS_05E0,MS_05E1,MS_05E2
;=============================================== (zel_int0) =============
		EXT	SWYKCNG0,SWYKCNG,KCOLSET,PFLGCL2
;=============================================== (zel_msge1) ============
		EXT	MSGCHG
;========================================================================
		EXT	transfer_flag,INITIAL_POLYGON
;========================================================================
;
		MEM8
		IDX8
		EXTEND
;
;
;
;************************************************************************
;*		Title paramater initial set		(TILIT0)	*
;************************************************************************
TILIT0		EQU	$
		LDA	#00010000B
		STA	<DPMAIN
		STZ	<DPSUB		; gamen disp. swich set
;
		JSR	BGMDST		; BG mode set
		LDA	#00100000B
		STA	<WD2130		; color-window on!!
;
		LDA	#00000010B
		STA	2101H		; obj size,address set
;
		LDA	#spoj9+1
		STA	!SPOJFG
		JSL	>SPOJCNG	;
		STZ	!SPOJFG
;
		JSR	SNDITST		; sound init. set
		RTL
;
;
;
;************************************************************************
;*		Title paramater initial set		(TILIT1)	*
;************************************************************************
TILIT1		EQU	$
		JSL	>MSGADST	; message font address set
;
		JSL	>MSGCHG
TILIT3		EQU	$
		JSR	TINCLST		; initial BG color set
		RTL
;// 03.07.03 //		LDA	#00010101B
;// 03.07.03 //		STA	<DPMAIN
;// 03.07.03 //;
;// 03.07.03 //		LDA	#001H
;// 03.07.03 //		STA	!SOUND0
;// 03.07.03 //		STA	!SVSND0		; <sound0>
;
;
;
;
;************************************************************************
;*		Initial - 1 (Danjyon)			(INIT1)		*
;************************************************************************
WTRPTDT		EQU	$
		BYTE	C_1Y1,C_1Y1,C_1Y1,C_1Y1,C_1Y1,C_1Y1,C_1Y1,C_1Z1
		BYTE	C_1Y1,C_1Z1,C_1Z1,C_1Z0,C_1Z1,C_1Z0,C_1Z0,C_1Y1
		BYTE	C_1Y1,C_1Z0,C_1Y1,C_1Y1,C_1Y1,C_1Y1,C_1Y1,C_1Y1
;
;
INIT0		EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		STZ	!ITEMMD
		STZ	!SRMNFG
		STZ	!OPJPFG
		STZ	!OPKGMD
		STZ	!OPNOSI
		STZ	!KINSHI
		STZ	!TRCACH		; init. ram clear
;
		JSL	>VRAMCL		; vram clear
;
;// 03.07.05 //		JSR	BGMDST		; BG mode set
;
		LDA	#00000010B
		STA	2101H		; obj size,address set
		JSL	>CHSCHN0	; Player & BG.3 character set
;
		JSL	>UROJCST	; URA Obj. character table set (Ground table)
;;;;;;;;		JSL	>ROBJCST	; Obj. character table set (Ground table)
;
		JSL	>DJCDITST	; danjyon code init. set
;
		JSL	>KNCBFST	; sword character buffer set
		JSL	>TTCBFST	; shild
;
		JSL	>PLYCLR		; player RAM clear
;
		JSL	>OPTCBFST	; option character buffer set
;// 03.05.31 //		LDA	#C_0A0
;// 03.05.31 //		STA	>CHCHTB+0
;// 03.05.31 //		STA	>CHCHTB+1
;// 03.05.31 //		STA	>CHCHTB+2
;// 03.05.31 //		STA	>CHCHTB+3
		LDA	#C_4C0
		STA	>CHCHTB+4
		STA	>CHCHTB+5
		STA	>CHCHTB+6
		STA	>CHCHTB+7
;
		STZ	!OPMTIM
		LDA	#002H
		STA	!OPMTIM+1	; option timer init. set
		LDA	#030H
		STA	<POLYTIME	; poly-gon time set
;
		LDA	>GDTRPF
		BEQ	IT040		; ura ?
;					; yes
		LDA	<GMMODE
		BNE	INIT10		; ground ?
;					; yes
		JSL	>BITMCKL	; [Y] item check
		JSL	>MTRON2		; initial BG3. write
		JSL	>ITEMSET	; item set
;
		STZ	!GOVRCFG
		LDA	#020H
		STA	<RMXYCT
		STZ	<RMXYCT+1
		LDA	#MD_gdint
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
		STZ	!RESTSFG
		RTL
;
;
IT040		EQU	$
		LDA	>MZKCNT
		BNE	INIT10		; danjyon return ?
;					; no
		LDA	!GOVRCFG
		BEQ	IT060		; game-over continue ?
;					; yes
		LDA	!RESTSFG
		BEQ	INIT10		; danjyon start ?
;					; no
IT060		EQU	$
		LDA	>MODTBL0
		CMP	#002H
		BCC	INIT10		; cyu-ban > ?
;					; yes
		LDA	>MODTBL3
		CMP	#005H
		BEQ	INIT10		; yama-jiji ?
;					; no
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#MS_05E1
		LDA	>ITEMR20
		CMP	#002H
		BEQ	IT080		; yama-jiji tasuketaka ?
;					; no
		LDX	#MS_05E0
IT080		EQU	$
		STX	!MSGENOL
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
		JSL	>MESWIT		; message init.
;
		JSR	INCLST0		; initial BG color set
		LDA	#00001111B
		STA	<BLKFLG
		LDA	#00000100B
		STA	<DPMAIN
		STZ	<DPSUB
		LDA	#MD_spsel
		STA	<SLMODE
		RTL
;
;
INIT10		EQU	$
		LDA	#000H
		STA	>MZKCNT
		ORA	#00000111B
		STA	<MD2106		; BG.1,2,3 mozaiku set
;
		JSL	>BITMCKL	; [Y] item check
		JSL	>MTRON2		; initial BG3. write
		JSL	>ITEMSET	; item set
INIT1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#005H
		STA	!SOUND1		; <sound1>    [[[ 03.11.29 ]]]
		STZ	<RMXYCT
		STZ	<BKRMPT
		STZ	!EMYSTT
;
		LDA	#00000H
		STA	>SHSCCT+0
		STA	>SHSCCT+2
		STA	>SHSCCT+4
		STA	>SHSCFG+0
		STA	>SHSCFG+2
		STA	>SHSCFG+4
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSR	IIT1000		; ram initial
;
		LDA	!DJNNO
		CMP	#0FFH
		BEQ	IT105		;
;					;
		CMP	#002H
		BNE	IT103		; shiro ?
;					; yes
		LDA	#000H
IT103		EQU	$
		LSR	A
		TAX
		LDA	>DKYTBL,X
IT105		EQU	$
;// 03.10.08 //		STA	>ITMTBL9	; key count load
;// 03.10.08 //		JSL	>MTRON2		; mater display
		JSL	>MTRON4		; mater display
;
		STZ	!LGTWST
		STZ	!LGTWFG
		JSR	INBGWT1		; initial BG data write
;
		JSL	>DJCODST	; read code change
;
		LDX	!CHIKNO
		LDA	>WTRPTDT,X
		TAY
		JSL	>WTRCBFS0	; water character buffer set
;
		JSL	>CHRCNG1	; character code set
;
		LDA	#C_2W0
		STA	!OJBSPT
;// 03.06.06 //		LDA	#00000010B
;// 03.06.06 //		STA	2101H		; obj size,address set
		JSL	>CHSCHNG	; character VRAM set
;// 03.05.29 //		JSL	>CHRCBS0	; character buffer set
;
;// 03.06.12 //		LDY	#C_1F0
		LDA	#00AH
		STA	!CHITEMJC
		JSR	INCLST0		; initial BG color set
;
		LDA	!RABFLG
		ORA	<RABIFG
		BEQ	IT107		; player rabit ?
;					; yes
		JSL	>PLCGCN2	; player CG. (rabit) set
IT107		EQU	$
;// 03.05.30 //		JSR	CGWKST		; (CGWORK) set
;
;// 02.07.24 //		LDA	#11110111B
;// 02.07.24 //		STA	2106H
;// 02.07.24 //		STA	>MZKCNT
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<RMXYCT
		AND	#0000FH
		ASL	A
		XBA
		STA	!SCHCT
;
		LDA	<RMXYCT
		AND	#00FF0H
		LSR	A
		LSR	A
		LSR	A
		XBA
		STA	!SCVCT
;
		LDA	<RMXYCT
		CMP	#00104H
		BNE	IT110		; link-room ?
;					; yes
		LDA	>MODTBL1
		AND	#00010000B
		BEQ	IT110		; oyagi demo ?
;					; no
		LDA	#00000H
		STA	>DARKFG
IT110		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory 8bit mode
;
		JSL	>MPBTSET	; map on/off bit set
;
		LDA	#00000010B
		STA	<WD2130
		LDA	#10110011B
		STA	<WD2131
		LDX	!LGTWST
		LDA	>DARKFG
		BNE	IT140		; color DARK set ?
;					; no
		LDX	#003H
		LDY	!GSUBFG
		BEQ	IT120		;
;					;
		LDA	#00110010B
		CPY	#007H
		BEQ	IT130		; gamen plus ?
;					; no
		LDA	#01100010B
		CPY	#004H
		BEQ	IT130		; gamen plus ?
;					; no
IT120		EQU	$
		LDA	#00100000B
IT130		EQU	$
		STA	<WD2131
IT140		EQU	$
		LDA	>DARKDT,X
		STA	>DKRMCG
		JSL	>WD2132ST	; R.G.B. set
;// 03.05.29 //		ORA	#00100000B
;// 03.05.29 //		STA	<WD2132R
;// 03.05.29 //		AND	#00011111B
;// 03.05.29 //		ORA	#01000000B
;// 03.05.29 //		STA	<WD2132G
;// 03.05.29 //		AND	#00011111B
;// 03.05.29 //		ORA	#10000000B
;// 03.05.29 //		STA	<WD2132B	; R.G.B
;
		LDA	#01FH
		STA	>CCNGCT
		LDA	#000H
		STA	>CCNGED
		LDA	#00002H
		STA	>CCNGFG
		STZ	!CGSTPT+1	; CG. (CGRAM) set
;
		STZ	<PSTPFG
		STZ	<KENKY
		STZ	<KENMD
		JSR	SCL540		; sub on/off check
		JSL	>DNJPYCL	; danjyon player ram clear
;
		JSR	SPCH420		;
;
		LDA	>OPMODE
		CMP	#bakud
		BNE	IT150		; option-bomb ?
;					; yes
		LDA	#000H
		STA	>OPMODE
		STZ	!BMTMER		; option-bomb clear
		JSL	>FLNOCLS	; clear
IT150		EQU	$
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
;
		JSL	>RAOPIT		; option init.
;
		JSL	>ALCLER		; enemy clear
;// 03.10.07 //		JSL	>ETCLER		; enemy clear
		JSL	>ENDTST		; enemy data set
		STZ	!INTEKI
		INC	!INFCFG
;
		LDA	>MODTBL0
		BNE	IT180		; start demo ?
;					; yes
		LDA	>MODTBL1
		AND	#00010000B
		BNE	IT180		; oyagi demo ?
;					; yes
		LDA	#00110000B
		STA	<WD2132R
		LDA	#01010000B
		STA	<WD2132G
;// 03.05.27 //		LDA	#10010000B
		LDA	#10000000B
		STA	<WD2132B
;
		LDA	#000H
		STA	>DARKFG
		STA	>DARKFG+1
		JSL	>OPNINT		; opening demo initial
IT180		EQU	$
		LDA	#MD_djply
		STA	!NXSLMD
		STA	<SLMODE
		LDA	#p1_fdin
		STA	<GAMEMD
;
		JSR	SND0CHK		; <sound0> check
;// 03.08.19 //		LDA	!SNDSFG0
;// 03.08.19 //		CMP	#0FFH
;// 03.08.19 //		BEQ	SND1CHK		; danjyon ?
;// 03.08.19 //;					; yes
;// 03.08.19 //		CMP	#0F2H
;// 03.08.19 //		BEQ	SND1CHK		; danjyon ?
;// 03.08.19 //;					; yes
;// 03.08.19 //		LDA	!SNDPCFG
;// 03.08.19 //		BNE	SND1CHK		; danjyon sound set ?
;// 03.08.19 //;					; yes
;// 03.08.19 //		INC	!SNDPCFG	; danjyon sound program
;// 03.08.19 //		LDA	#0FFH
;// 03.08.19 //		STA	!SOUND0		; <sound0> change
;// 03.08.19 //		JSL	>SNDTR2		; sound1 set
SND1CHK		EQU	$
		LDA	>MODTBL0
		CMP	#002H
		BCS	IT190		; ame on ?
;					; yes
		LDA	#005H
		STA	!SOUND1
		LDA	<FLORNO
		BMI	IT190		; B-floor ?
;					; no
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<RMXYCT
		CMP	#00002H
		BEQ	IT190		; chapel ?
;					; no
		CMP	#00012H
		BEQ	IT190		; chapel ?
;					; no
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#003H
		STA	!SOUND1
;// 03.09.26 //		STA	!SVSND1		; <sound1>
IT190		EQU	$
		SEP	#00100000B	; memory 8bit mode
		RTL
;
;
RESTTST		EQU	$
		JSR	SPCH430		; re-start position set
		RTL
;
;
;
;
;************************************************************************
;*		Initial - 2 (ground)			(INIT2)		*
;************************************************************************
INT3TBL		EQU	$
		WORD	MPINT21		;
		WORD	GB1WRT0		;
		WORD	MPINT0		;
;
;
INIT2		EQU	$
;
;************************************************************************
;*		Initial - 3 (Event --> Ground)		(INIT3)		*
;************************************************************************
INIT3		EQU	$
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(INT3TBL,X)
		RTL
;
;
MPINT21		EQU	$
		LDA	#10000010B
		STA	<WD2130		; color-window on!!
;
		STZ	!SRMNFG
;
		JSL	>PRABCK		; player rabit check
MPI2080		EQU	$
		LDA	<SLMODE
		CMP	#MD_gdint
		BNE	MPI2100		; ground ?
;					; yes
		JSR	IIT2000		; ground-ram initial
		BRA	MPI2120
;
MPI2100		EQU	$
		JSR	IIT4000		; event-ram initial
MPI2120		EQU	$
;// 02.08.16 //		LDA	>CHBKRM
;// 02.08.16 //		STA	!CHARBK
;// 02.08.16 //		LDA	>CHNORM
;// 02.08.16 //		STA	!CHIKNO
;// 02.08.16 //		LDA	>RBGPRM
;// 02.08.16 //		STA	!RBGCPT
;// 02.08.16 //		LDA	>ROJPRM
;// 02.08.16 //		STA	!ROBJCPT
;
		LDA	#0FFH
		STA	>ITMTBL9	; key count load
		JSL	>MTRDSP		; mater display
;
		LDY	#C_1W0
		LDX	#002H
		LDA	<MPDTNO
		CMP	#003H
		BEQ	MPI2130		; yama ?
;					; no
		CMP	#005H
		BEQ	MPI2130		; yama ?
;					; no
		CMP	#007H
		BEQ	MPI2130		; yama ?
;					; no
		LDX	#009H
		LDA	<MPDTNO
		CMP	#043H
		BEQ	MPI2130		; yama ?
;					; no
		CMP	#045H
		BEQ	MPI2130		; yama ?
;					; no
		CMP	#047H
		BEQ	MPI2130		; yama ?
;					; no
		LDY	#C_1X0
;// 03.10.01 //		LDX	#009H
		LDA	<MPDTNO
		CMP	#040H
;// 03.10.01 //		BCS	MPI2130		; ura ?
		BCS	MPI2125		; ura ?
;					; no
		LDX	#007H
		LDA	>MODTBL0
		CMP	#003H
		BCC	MPI2122		; kou-han ?
;					; yes
		LDX	#002H
MPI2122		EQU	$
		LDA	<RMXYCT
		CMP	#02FH
		BEQ	MPI2130		; machi-doukutsu ?
;					; no
		LDA	<RMXYCT
		CMP	#01FH
		BNE	MPI21222	; machi-mise ?
;					; no
		LDA	<MPDTNO
		CMP	#018H
		BEQ	MPI2130		; machi ?
;					; no
MPI21222	EQU	$
		LDX	#005H
		LDA	>GNDTBL+80H
		AND	#01000000B
		BEQ	MPI2123		; master-sword on ?
;					; yes
		LDX	#002H
MPI2123		EQU	$
		LDA	<RMXYCT
		BEQ	MPI2130		; mori-doukutsu ?
;					; no
		CMP	#0E1H
		BEQ	MPI2130		; mori-doukutsu ?
;					; no
MPI2125		EQU	$
		LDX	#0F3H
;// 03.10.01 //		LDA	<MPDTNO
;// 03.10.01 //		AND	#03FH
;// 03.10.01 //		CMP	#018H
;// 03.10.01 //		BEQ	MPI2130		; machi ?
;// 03.10.01 //;					; no
		LDA	!SNDSFG0
		CMP	#0F2H
		BEQ	MPI2135		; minka ?
;					; no
		LDX	#002H
		LDA	>MODTBL0
		CMP	#002H
		BCS	MPI2130		; ame on ?
;					; yes
		LDX	#003H
MPI2130		EQU	$
		LDA	>GDTRPF
		BEQ	MPI2135		; ura ?
;					; yes
		LDX	#00DH
		LDA	<MPDTNO
		CMP	#040H
		BEQ	MPI2133		; ura-mori ?
;					; no
		CMP	#043H
		BEQ	MPI2133		; ura-yama ?
;					; no
		CMP	#045H
		BEQ	MPI2133		; ura-yama ?
;					; no
		CMP	#047H
		BEQ	MPI2133		; ura-yama ?
;					; no
		LDX	#009H
MPI2133		EQU	$
		LDA	>ITMTBL4
		BNE	MPI2135		; suisyou-dama on ?
;					; no
		LDX	#004H
MPI2135		EQU	$
		STX	!SNDSFG0	; <sound0> set flag
		JSL	>WTRCBFS1	; water character buffer set
;
;// 03.06.06 //		LDA	#00000010B
;// 03.06.06 //		STA	2101H		; obj size,address set
		JSL	>CHSCHNG	; character VRAM set
;// 03.05.29 //		JSL	>CHRCBS0	; character buffer set
		JSR	INCLST1		; initial BG color set
		LDX	<MPDTNO
		LDA	>ROJCTBL,X
		STA	<WORK0		; (work0) <-- Obj. CG. pointer
		LDA	>CGPTDT,X
		JSL	>GCGCHNG	; ground cg. set
		JSL	>NKCGST0	; nuki
;
		LDA	<SLMODE
		CMP	#MD_gdint
		BNE	MPI2140		; ground ?
;					; yes
		JSR	CGWKST		; (CGWORK) set
		BRA	MPI2160
;
MPI2140		EQU	$
		JSR	CGWKST1		; (CGWORK) set
MPI2160		EQU	$
;// 03.07.31 //		MEM16
;// 03.07.31 //		IDX16
;// 03.07.31 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.31 //;
;// 03.07.31 //		LDX	#00000H
;// 03.07.31 //		LDA	<MPDTNO
;// 03.07.31 //		CMP	#0005BH
;// 03.07.31 //		BEQ	MPI2162		; piramido ?
;// 03.07.31 //;					; no
;// 03.07.31 //		AND	#000BFH
;// 03.07.31 //		CMP	#00003H
;// 03.07.31 //		BEQ	MPI2162		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00005H
;// 03.07.31 //		BEQ	MPI2162		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00007H
;// 03.07.31 //		BEQ	MPI2162		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		LDX	#01E87H
;// 03.07.31 //		LDA	<MPDTNO
;// 03.07.31 //		AND	#00040H
;// 03.07.31 //		BEQ	MPI2162		; omote ?
;// 03.07.31 //;					; no
;// 03.07.31 //		LDX	#00230H
;// 03.07.31 //MPI2162		EQU	$
;// 03.07.31 //		TXA
;// 03.07.31 //		STA	>CGWORK+000H
;// 03.07.31 //		STA	>CGRAM+000H
;// 03.07.31 //;
;// 03.07.31 //;// 03.07.15 //		LDA	<MPDTNO
;// 03.07.31 //;// 03.07.15 //		CMP	#05BH
;// 03.07.31 //;// 03.07.15 //		BEQ	MPI2165		; piramido ?
;// 03.07.31 //;// 03.07.15 //;					; no
;// 03.07.31 //;// 03.07.15 //		AND	#10111111B
;// 03.07.31 //;// 03.07.15 //		CMP	#003H
;// 03.07.31 //;// 03.07.15 //		BEQ	MPI2165		; yama ?
;// 03.07.31 //;// 03.07.15 //;					; no
;// 03.07.31 //;// 03.07.15 //		CMP	#005H
;// 03.07.31 //;// 03.07.15 //		BEQ	MPI2165		; yama ?
;// 03.07.31 //;// 03.07.15 //;					; no
;// 03.07.31 //;// 03.07.15 //		CMP	#007H
;// 03.07.31 //;// 03.07.15 //		BNE	MPI2170		; yama ?
;// 03.07.31 //;// 03.07.15 //;					; yes
;// 03.07.31 //;// 03.07.15 //MPI2165		EQU	$
;// 03.07.31 //;// 03.07.15 //		MEM16
;// 03.07.31 //;// 03.07.15 //		REP	#00100000B	; memory 16bit mode
;// 03.07.31 //;// 03.07.15 //;
;// 03.07.31 //;// 03.07.15 //		LDA	#00000H
;// 03.07.31 //;// 03.07.15 //		STA	>CGWORK+000H
;// 03.07.31 //;// 03.07.15 //		STA	>CGRAM+000H
;// 03.07.31 //;
;// 03.07.31 //		MEM8
;// 03.07.31 //		IDX8
;// 03.07.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.07.31 //MPI2170		EQU	$
;// 03.07.31 //		IDX8
;// 03.07.31 //		SEP	#00010000B	; index 8bit mode
		JSL	>KCOLSET	; kotei-color set
		LDA	#000H
		STA	>DKRMCG
;
		JSL	>RAOPIT		; option init.
;
		LDA	<MPDTNO
		AND	#00111111B
		BNE	MPI2170		; mori ?
;					; yes
		LDA	#01EH
		JSL	>ITMCBFST	; mochiage-kinoko set
MPI2170		EQU	$
		LDA	#MD_gdply
		STA	!NXSLMD		; next mode
;
;// 03.05.23 //		JSL	>ALCLER		; enemy clear
		JSL	>GREDS2		; ground enemy set
		LDA	<MPDTNO
		AND	#040H
		BNE	MPI2180		; omote ?
;					; yes
		JSL	>HYUSET
MPI2180		EQU	$
		LDX	#005H
		LDA	>MODTBL0
		CMP	#002H
		BCS	MPI2190		; ame on ?
;					; yes
		LDX	#001H
MPI2190		EQU	$
		STX	!SOUND1
;// 03.09.26 //		STX	!SVSND1		; <sound1>
;
		LDA	>OPMODE
		CMP	#prnc1
		BNE	MPI2193		; option-girl ?
;					; yes
		LDA	#000H
		STA	>OPMODE
MPI2193		EQU	$
		STZ	<PWORK6
		STZ	<KENKY
		STZ	<KENMD
		STZ	<PYMKFG
		STZ	<PYSPFG
		STZ	!ASWFLG
		JSR	PFLGCL		; player flag clear
;
		LDA	>ITMTBL4
		BNE	MPI2194		; suisyou-dama on ?
;					; no
		LDA	>GDTRPF
		BEQ	MPI2194		; ura ?
;					; yes
		LDA	#001H
		STA	!RABFLG
		STA	<RABIFG
		LDA	#RABT
		STA	<LNMODE		; rabit set
		JSL	>PLCGCN2	; player CG. (rabit) set
MPI2194		EQU	$
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
;
		LDA	#000H
		STA	>DARKFG
		STZ	!BGALCKF
		STZ	<PLBGCKF
		STZ	!CDBGCKF
		INC	<GAMEMD
		INC	<B3CHFG
;
		STZ	!EMYSTT
		STZ	!EMYSTT+1
SNDITST		EQU	$
		LDA	!SNDPCFG
		BEQ	MPI2195		; ground sound set ?
;					; yes
;
		SEI
		STZ	4200H		; NMI  disable
		STZ	420CH		; HDMA
;
		STZ	!SNDPCFG
		LDA	#0FFH
		STA	2140H
		JSL	>SNDTR1		; sound0 set
;
		LDA	#10000001B
		STA	4200H		; NMI enable
MPI2195		EQU	$
		RTS
;
;
;
;
PRABCK		EQU	$
		LDA	>ITMTBL4
		BEQ	PRBC80		;
;					;
PRABC1		EQU	$
		LDA	#LNMD
		STA	<LNMODE
		STZ	!USAGTM
		STZ	!USAGTM+1
		STZ	!USGOFN
		STZ	<RABIFG
		STZ	!RABFLG		; player rabit flag off
PRBC80		EQU	$
		RTL
;
;
;
;
;
;
;
;************************************************************************
;*		Re-start point select			(SPSELCT)	*
;************************************************************************
SSCTPD		EQU	$
;			  0   1   2
		HEX	000,001,006
;
;
SPSELCT		EQU	$
		JSL	>MSGE_I		; message
		LDA	<GAMEMD
		BNE	SSCT80		; select end ?
;					; yes
		STZ	<VRFLG
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		JSL	>VRAMCL
;
		LDA	>MODTBL3
		PHA			; (A) push
		LDX	!MSG_RTS
		LDA	>SSCTPD,X
		STA	>MODTBL3
		STZ	<JRSBPT
		JSL	>INIT10		; danjyon set
		PLA			; (A) pull
		STA	>MODTBL3
SSCT80		EQU	$
		RTL
;
;
;
;
;
;************************************************************************
;*		Ending Initial - 0 (ground)		(ENDINT0)	*
;************************************************************************
EIT0TBL		EQU	$
		WORD	EIT000		;
		WORD	EIT200		;
		WORD	EIT400		;
;
;
ENDINT0		EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JSR	(EIT0TBL,X)
		RTL
;
;
EGDPTD		EQU	$
;		 	    0      2      4      6      8      A      C      E
		WORD	01000H,00002H,01002H,01012H,01004H,01006H,01010H,01014H
;		   	   10     12     14     16     18     1A     1C     1E
		WORD	0100AH,01016H,0005DH,00064H,0100EH,01008H,01018H,00180H
;// 03.09.30 //		WORD	0100AH,01016H,00067H,0006EH,0100EH,01008H,01018H,00180H
;
ECGXPD		EQU	$
;			 0  2  4  6  8  A  C  E
		HEX	28,46,27,2E,2B,2B,0E,2C
;			10 12 14 16 18 1A 1C 1E 20
		HEX	1A,29,47,28,27,28,2A,28,2D
;
ECOLPD		EQU	$
;			 0  2  4  6  8  A  C  E
		HEX	01,40,01,04,01,01,01,11
;			10 12 14 16 18 1A 1C 1E 20
		HEX	01,01,47,40,01,01,01,01,01
;
;
;// 03.09.09 //;
;// 03.09.09 //EGDPTD		EQU	$
;// 03.09.09 //;		    0      2      4      6      8      A      C      E
;// 03.09.09 //		WORD	01000H,01002H,01004H,01006H,01008H,0100AH,00067H,0100EH
;// 03.09.09 //;		   10     12     14     16     18     1A     1C     1E
;// 03.09.09 //		WORD	01010H,0006EH,01012H,00002H,01014H,01016H,01018H,00180H
;// 03.09.09 //;
;// 03.09.09 //ECGXPD		EQU	$
;// 03.09.09 //;		 0  2  4  6  8  A  C  E
;// 03.09.09 //		HEX	28,27,27,2B,28,27,47,27
;// 03.09.09 //;		10 12 14 16 18 1A 1C 1E
;// 03.09.09 //		HEX	0E,28,08,46,2C,29,2A,28
;// 03.09.09 //;
;// 03.09.09 //ECOLPD		EQU	$
;// 03.09.09 //;		 0  2  4  6  8  A  C  E
;// 03.09.09 //		HEX	01,01,01,01,01,01,47,01
;// 03.09.09 //;		10 12 14 16 18 1A 1C 1E
;// 03.09.09 //		HEX	01,40,04,40,11,01,01,01
;// 03.09.09 //;
;
;
EIT000		EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		JSL	>VRAMCL		; vram clear
;
		LDA	#10000010B
		STA	<WD2130		; color-window on!!
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	<GAMEMD
		LDA	>EGDPTD,X
		STA	<RMXYCT
		MEM8
		SEP	#00100000B	; memory 8bit mode
;// 03.09.09 //		CPX	#010H
		CPX	#00CH
		BEQ	EIT020		; spot ?
;					; no
		CPX	#01EH
		BEQ	EIT020		; spot ?
;					; no
		JSR	IIT2000		; ground-ram initial
		BRA	EIT040
;
EIT020		EQU	$
		JSR	IIT3000		; ground-ram initial
EIT040		EQU	$
		STZ	!SOUND0
;// 03.09.16 //		STZ	!SVSND0
		STZ	!SOUND1
;// 03.09.16 //		STZ	!SVSND1
;
		LDY	#C_1W0
		LDA	<MPDTNO
		AND	#10111111B
		CMP	#003H
		BEQ	EIT060		; yama ?
;					; no
		CMP	#005H
		BEQ	EIT060		; yama ?
;					; no
		CMP	#007H
		BEQ	EIT060		; yama ?
;					; no
		LDY	#C_1X0
EIT060		EQU	$
		JSL	>WTRCBFS1	; water character buffer set
;
		LDA	<GAMEMD
		LSR	A
		TAX
		LDA	>ECGXPD,X
		STA	!ROBJCPT
		LDA	>ECOLPD,X
		PHA			; (A) push
		JSL	>CHSCHNG	; character VRAM set
		JSR	INCLST1		; initial BG color set
		PLA			; (A) pull
		STA	<WORK0		; (work0) <-- Obj. CG. pointer
		LDX	<MPDTNO
		LDA	>CGPTDT,X
		JSL	>GCGCHNG	; ground cg. set
		LDA	#001H
		STA	!BG3BGC
		JSL	>B3CGSET	; BG.3 CG. set
		LDA	<GAMEMD
		BNE	EIT070		; init-0 ?
;					; yes
		JSL	>MSGETNP	; message chara. buffer set
		JSL	>ENDGVRMS	; ending character set
EIT070		EQU	$
		JSR	CGWKST		; (CGWORK) set
;
		JSL	>KCOLSET	; kotei-color set
;
		LDA	<MPDTNO
		CMP	#080H
		BCC	EIT080		; spot ?
;					; yes
		JSL	>NKCGST0	; nuki
EIT080		EQU	$
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
		INC	<JRSBPT
		RTS
;
;
EIT200		EQU	$
		JSR	GB1WRT1		; BG.1 write
;
		STZ	!SOUND0
;// 03.09.16 //		STZ	!SVSND0
		STZ	!SOUND1
;// 03.09.16 //		STZ	!SVSND1
;
		DEC	<GAMEMD
		INC	<JRSBPT
		RTS
;
;
EIT400		EQU	$
		JSR	GNDRWT1		; BG. write
;
		JSL	>EDPLINT	; enemy init.
;
		STZ	<CWORK0
		STZ	<CWORK1
		STZ	<JRSBPT
		RTS
;
;
ENDGSCL		EQU	$
		JSL	>GGNDSCL	; gamen scroll check
		LDA	!GDWTFG
		BEQ	EDGSL40		; write ?
;					; yes
		JSR	MPMAIN
EDGSL40		EQU	$
		RTL
;
;
;
;
EIT800		EQU	$
		LDA	#021H
		STA	!CHIKNO
		LDA	#03BH
		STA	!RBGCPT
		LDA	#02DH
		STA	!ROBJCPT
		JSL	>CHSCHNG	; character set
		LDX	#05BH
		STX	<MPDTNO
		LDA	#013H
		STA	<WORK0
		LDA	>CGPTDT,X
		JSL	>GCGCHNG	; ground CG. set
		LDA	#003H
		STA	!GNDBGC2
		JSL	>GDCGST2
		JSR	CGWKST2		; (CGWORK) set
;
		JSR	GB1WRT1		; BG.1 write
;
		STZ	<SCCV1
		STZ	<SCCV1+1
		STZ	<SCCH1
		STZ	<SCCH1+1
		DEC	<GAMEMD
		RTL
;
;
;
;
;
;
;************************************************************************
;*		Ending Initial - 1 (Danjyon)		(ENDINT1)	*
;************************************************************************
ENDINT1		EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		JSL	>VRAMCL		; vram clear
;
		MEM16
		REP	#00100000B	; memory 16bit mode
		LDX	<GAMEMD
		LDA	>EGDPTD,X
		STA	!GOPOSF
		MEM8
		SEP	#00100000B	; memory 8bit mode
		JSR	IIT1000		; ram initial
;
		STZ	!LGTWST
		STZ	!LGTWFG
		JSR	INBGWT1		; initial BG data write
;
		LDX	!CHIKNO
		LDA	>WTRPTDT,X
		TAY
		JSL	>WTRCBFS0	; water character buffer set
;
		LDA	<GAMEMD
		LSR	A
		TAX
		LDA	>ECGXPD,X
		STA	!ROBJCPT
		LDA	>ECOLPD,X
		ASL	A
		ASL	A
		TAX
		LDA	>DJNCGDT+2,X
		STA	!EYOJC0
		LDA	>DJNCGDT+3,X
		STA	!EYOJC1		; color set
		LDA	#C_2W0
		STA	!OJBSPT
		JSL	>CHSCHNG	; character VRAM set
;
		LDA	#00AH
		STA	!CHITEMJC
		JSR	INCLST0		; initial BG color set
;
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
;
		STZ	<CWORK0
		STZ	<CWORK1
		STZ	<BLKFLG
		INC	<GAMEMD
;
		JSL	>EDPLINT	; enemy init.
		RTL
;
;
;
;
;************************************************************************
;*		Play  main				(PLMAIN1)	*
;************************************************************************
PM1TBL		EQU	$
p1move		WORD	MOVE		; 0 : move
p1scl0		WORD	SCROL0		; 1 : scroll
p1scl1		WORD	SCROL1		; 2 : scroll (& write)
p1bchg		WORD	BGCHMV		; 3 : BG. change
p1dopn		WORD	DOPNMV		; 4 : door open
p1sdop		WORD	SDRMOV		; 5 : shutter door
p1stpc		WORD	STPCHG		; 6 : step room change
p1hldn		WORD	HLDOWN		; 7 : hole down
p1mcng		WORD	MCSTPMV		; 8 : mode change step move
;// 03.06.11 //p1opyk		WORD	OPYKMV		; 9 : open yuka
p1bmbd		WORD	BDRMOV		; A : bomb-door open
p1ltwp		WORD	LGTWIPE		; B : light wipe
p1wtrd		WORD	WRDWNMV		; C : water down
p1wtru		WORD	WRUPMV		; D : watre up
p1wgop		WORD	WGTOPMV		; E : water gate open
p1kstp		WORD	STEPCN		; F : kabe step room change
p1fdin		WORD	DJFDIN		;10 : fade in
p1mcg1		WORD	MCSTPM1		;11 : mode change step move
p1warp		WORD	WRPSCRL		;12 : warp-scroll (& write)
p1sls0		WORD	SCLSTEP		;13 : scroll-step (up-scroll)
p1sls1		WORD	SCLSTEP		;14 : scroll-step (down-scroll)
p1hlrs		WORD	HLDRST		;15 : hole down reset
p1dwrp		WORD	DJWARP		;16 : danjyon warp
p1tmyk		WORD	TMYKCNG		;17 : tama-yuka change
p1swon		WORD	YSWCHON		;18 : yuka-swich on
p1plgn		WORD	PLGNDEMO	;19 : polygon demo
p1rtrn		WORD	DJRETRN		;1A : Ura-danjyon return
p1gnop		WORD	GNNDROP		;1B : ganon-door open
;
;
p1_move		EQU	(p1move-p1move)/2
p1_scl0		EQU	(p1scl0-p1move)/2
p1_scl1		EQU	(p1scl1-p1move)/2
p1_bchg		EQU	(p1bchg-p1move)/2
p1_dopn		EQU	(p1dopn-p1move)/2
p1_sdop		EQU	(p1sdop-p1move)/2
p1_stpc		EQU	(p1stpc-p1move)/2
p1_hldn		EQU	(p1hldn-p1move)/2
p1_mcng		EQU	(p1mcng-p1move)/2
;// 03.06.11 //p1_opyk		EQU	(p1opyk-p1move)/2
p1_bmbd		EQU	(p1bmbd-p1move)/2
p1_ltwp		EQU	(p1ltwp-p1move)/2
p1_wtrd		EQU	(p1wtrd-p1move)/2
p1_wtru		EQU	(p1wtru-p1move)/2
p1_wgop		EQU	(p1wgop-p1move)/2
p1_kstp		EQU	(p1kstp-p1move)/2
p1_fdin		EQU	(p1fdin-p1move)/2
p1_mcg1		EQU	(p1mcg1-p1move)/2
p1_warp		EQU	(p1warp-p1move)/2
p1_sls0		EQU	(p1sls0-p1move)/2
p1_sls1		EQU	(p1sls1-p1move)/2
p1_hlrs		EQU	(p1hlrs-p1move)/2
p1_dwrp		EQU	(p1dwrp-p1move)/2
p1_tmyk		EQU	(p1tmyk-p1move)/2
p1_swon		EQU	(p1swon-p1move)/2
p1_plgn		EQU	(p1plgn-p1move)/2
p1_rtrn		EQU	(p1rtrn-p1move)/2
p1_gnop		EQU	(p1gnop-p1move)/2
;
;
;
PLMAIN1		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		JSL	>BGMVCHK	; BG. move data check
;
;// 03.02.26 //		JSR	PLMS000
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(PM1TBL,X)
;
		STZ	!BLKPNT
		JSL	>BLKPLY		; block play
;
		LDA	<GAMEMD
		BNE	PLMN200		; scroll check ?
;					; yes
		JSL	>SPOJCNG	; spacial OBJ change check
;
		JSR	GMSLCK		; gamen scroll check
;
		LDA	<GAMEMD
		BNE	PLMN200		; scroll check ?
;					; yes
		JSL	>INFDCHK	; information data check
;
		LDA	<GAMEMD
		BNE	PLMN200		; scroll check ?
;					; yes
		JSL	>LMPTIMER	; lamp timer check
;;;;;;;;		JSL	>DRCHCK		; door open check
;;;;;;;;		JSR	>SWDRCK		; swich door check
;;;;;;;;		JSL	>ERDRCK		; erase door check
;;;;;;;;		JSL	>CDRCHCK	; certen check
;
		LDA	!CWLFLG
		BEQ	PLMN100		; crush wall on ?
;					; yes
		JSL	>CSWLPLY	; crush wall open
PLMN100		EQU	$
		LDA	<PWORK6
		BNE	PLMN200		; in door ?
;					; no
		JSR	PLMN400		; scroll check
PLMN200		EQU	$
;// 02.09.18 //		LDA	<GAMEMD
;// 02.09.18 //		CMP	#p1_ltwp
;// 02.09.18 //		BEQ	PLMN120		; light-wipe ?
;// 02.09.18 //;					; no
;// 02.09.18 //		LDA	!LGTWFG
;// 02.09.18 //		BEQ	PLMN120		; light-wipe on ?
;// 02.09.18 //;					; yes
		JSL	>LGTWPMV	; wipe move
;// 02.09.18 //PLMN120		EQU	$
;
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDA	<SCCH2
		PHA			; (A) push
		ADC	!YUREXD
		STA	<SCCH2
		STA	!SSCCH2
		LDA	<SCCV2
		PHA			; (A) push
		CLC
		ADC	!YUREYD
		STA	<SCCV2
		STA	!SSCCV2
;
		LDA	<SCCH1
		PHA			; (A) push
		CLC
		ADC	!YUREXD
		STA	<SCCH1
		STA	!SSCCH1
		LDA	<SCCV1
		PHA			; (A) push
		CLC
		ADC	!YUREYD
		STA	<SCCV1
		STA	!SSCCV1
;
		LDA	!B1MFLG
		AND	#000FFH
		BEQ	PLMN280		; BG.1 move ?
;					; yes
		PLA			; (A) pull
		PLA			; (A) pull
		LDA	!BGMVC0
		CLC
		ADC	<SCCH2
		STA	!SSCCH1
		STA	<SCCH1
		PHA			; (A) push
;
		LDA	!BGMVC1
		CLC
		ADC	<SCCV2
		STA	!SSCCV1
		STA	<SCCV1		; scroll move dot set
		PHA			; (A) push
PLMN280		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>BLCKOM		; block OAM set
;
		JSL	>ENEMY		; enemy move
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PLA			; (A) pull
		STA	<SCCV1
		PLA			; (A) pull
		STA	<SCCH1
		PLA			; (A) pull
		STA	<SCCV2
		PLA			; (A) pull
		STA	<SCCH2
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
 		JSL	>PYOMST		; character set
;
		JSL	>MTRDSP		; mater display
;
		JMP	>FLNODSP	; floor no. display
;
;
;
;--------------------------------------- scroll check
PLMN400		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYMVC
		AND	#000FFH
		BEQ	PLMN420		; y-move ?
;					; yes
		LDA	<PWORK1
		AND	#0000CH
		STA	<WORK0
		LDA	<PLYPS1
		AND	#001FFH
		LDX	#003H
		CMP	#00004H
		BCC	PLMN480		; up-scroll ?
;					; no
		LDX	#002H
		CMP	#001DCH
		BCS	PLMN480		; down-scroll ?
;					; no
PLMN420		EQU	$
		LDA	<PLXMVC
		AND	#000FFH
		BEQ	PLMN490		; x-move ?
;					; yes
		LDA	<PWORK1
		AND	#00003H
		STA	<WORK0
		LDA	<PLXPS1
		AND	#001FFH
		LDX	#001H
		CMP	#00008H
		BCC	PLMN480		; left-scroll ?
;					; no
		LDX	#000H
;// 03.02.27 //		CMP	#001F0H
		CMP	#001E9H
		BCC	PLMN490		; right-scroll ?
;					; yes
PLMN480		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>PLJSCK		; player haiin check
		BCS	PLMN490		; scroll ok ?
;					; yes
		LDA	<SLMODE
		CMP	#MD_djply
		BNE	PLMN490		; danjyon play ?
;					; yes
		JSL	>SCRLST		; scroll set
;
		LDA	<SLMODE
		CMP	#MD_djply
		BNE	PLMN490		; danjyon play ?
;					; yes
		LDA	#p1_scl1
		STA	<GAMEMD
PLMN490		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;
;
SCLCKDT		EQU	$
		HEX	03,03,0C,0C
;
;
SCRLST		EQU	$
		LDA	<PWORK1
		AND	>SCLCKDT,X
		STA	<PWORK1
		TXA
		JSL	>JSRSUBL
		LWORD	XCALC00		; right move
		LWORD	XCALC01		; left
		LWORD	YCALC00		; down
		LWORD	YCALC1		; up
;
;
;
;
;************************************************************************
;*		Move					(MOVE)		*
;************************************************************************
MOVE		EQU	$
		LDA	!SPMCFG
		ORA	!PYALSP
		ORA	!BSFLFG
		BEQ	MV00		; special magic on ?
;					; yes
		JMP	MV300
;
MV00		EQU	$
;// 03.02.15 //		LDA	!MSGEFG
;// 03.02.15 //		BNE	MV50		; message write ?
;// 03.02.15 //;					; no
		LDA	<KEYA2
		AND	#00010000B
		BEQ	MV20		; item select?
;					; yes
;;;;;		JSL	>ITMWIT		; window init.
;;;;;		JSR	INHDMA1		; initial H-DMA
;
		STZ	!ITEMMD
		LDA	#p3_sitm
		BRA	MV100
;
MV20		EQU	$
		LDA	<KEYA2L
		AND	#01000000B
		BEQ	MV200		; map display ?
;					; yes
		LDA	!DJNNO
		CMP	#0FFH
		BEQ	MV200		; display ok ?
;					; yes
		LDA	<RMXYCT
		BEQ	MV200		; ura-boss warp ?
;					; no
		STZ	!MAPDMD
		LDA	#p3_mapd
MV100		EQU	$
		STA	<GAMEMD		; goto message
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_etcpl
		STA	<SLMODE
		RTS
;
;
MV200		EQU	$
		LDA	<KEYA1
		AND	#00100000B
		BEQ	MV300		; select on ?
;					; yes
		LDA	>MODTBL0
		BEQ	MV300		; start-demo ?
;					; no
		LDA	!MSG_RTS
		STA	!MRTS_BK
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#MS_05E2
		STA	!MSGENOL
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<SLMODE
		PHA			; (A) push
		JSL	>MESWIT		; message init.
		PLA			; (A) pull
		STA	<SLMODE
;
		STZ	<JRSBPT
		LDA	#p3_prst
		BRA	MV100
;;;;;;;;;;;;;;;		LDA	<KEYA1L
;;;;;;;;;;;;;;;		AND	#01000000B
;;;;;;;;;;;;;;;		BEQ	MV300		; [X] key on ?
;;;;;;;;;;;;;;;;					; yes
;;;;;;;;;;;;;;;		LDA	<KEYA2L
;;;;;;;;;;;;;;;		AND	#020H
;;;;;;;;;;;;;;;		BEQ	MV300		; mater change ?
;;;;;;;;;;;;;;;;					; yes
;;;;;;;;;;;;;;;		MEM16
;;;;;;;;;;;;;;;		IDX16
;;;;;;;;;;;;;;;		REP	#00110000B	; memory,index 16bit mode
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;		LDX	#062C0H
;;;;;;;;;;;;;;;		LDA	!MTRADR
;;;;;;;;;;;;;;;		XBA
;;;;;;;;;;;;;;;		STA	!MTRCBF
;;;;;;;;;;;;;;;		CMP	#06040H
;;;;;;;;;;;;;;;		BEQ	MV260		;
;;;;;;;;;;;;;;;;					;
;;;;;;;;;;;;;;;		LDX	#06460H
;;;;;;;;;;;;;;;		CMP	#0C062H
;;;;;;;;;;;;;;;		BEQ	MV260		;
;;;;;;;;;;;;;;;;					;
;;;;;;;;;;;;;;;		LDX	#06040H
;;;;;;;;;;;;;;;MV260		EQU	$
;;;;;;;;;;;;;;;		STX	!MTRADR
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;		MEM8
;;;;;;;;;;;;;;;		IDX8
;;;;;;;;;;;;;;;		SEP	#00110000B	; memory,index 8bit mode
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;		LDA	#VT04
;;;;;;;;;;;;;;;		STA	<VRFLG
MV300		EQU	$
		JSL	>PLMOVE		; Player move
		RTS
;
;// 03.06.27 //PLTEST		EQU	$
;// 03.06.27 //		LDX	#008H
;// 03.06.27 //PLTS40		EQU	$
;// 03.06.27 //		LDY	#080H
;// 03.06.27 //PLTS80		EQU	$
;// 03.06.27 //		DEY
;// 03.06.27 //		BNE	PLTS80
;// 03.06.27 //		DEX
;// 03.06.27 //		BNE	PLTS40
;// 03.06.27 //;
;// 03.06.27 //		LDA	#000H
;// 03.06.27 //		STA	2100H
;// 03.06.27 //;
;// 03.06.27 //		JSL	>PLMOVE		; enemy move
;// 03.06.27 //;
;// 03.06.27 //		LDA	#00FH
;// 03.06.27 //		STA	2100H
;// 03.06.27 //;
;// 03.06.27 //		RTS
;
;
;
;************************************************************************
;*		Scrol0					(SCROL0)	*
;************************************************************************
SUBSTD		EQU	$		; sub. screen set data
;			  0    1    2    3    4    5    6    7
		BYTE	000H,001H,001H,0FFH,001H,001H,001H,001H
;
;
SBSRMD		EQU	$		; sound boss-room
		WORD	000C8H,00033H,00007H,00020H
UBOSSDT		EQU	$		; ura-danjyon boss-room no.
;			hokora shindn   mori   numa    ice   kame  machi shisai
		WORD	00006H,0005AH,00029H,00090H,000DEH,000A4H,000ACH,0000DH
SBSRED		EQU	$
;
yamabs0		EQU	00007H
yamabs1		EQU	00017H
;
;
SCRL0TBL	EQU	$
		WORD	SCL0000		; 0 : CG. set
		WORD	SCL0100		; 1 : fade-out check
		WORD	SHTDRCK		; 2 : shutter-door check
		WORD	SCRLCK		; 3 : 1st. scroll
		WORD	AUTOMV0		; 4 : auto move - 0
		WORD	AUTOMV2		; 5 :           - 1
		WORD	SCL0100		; 6 : fade-out check
		WORD	SCL0END		; 7 : end
;
;
SCROL0		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLXPS1
		STA	!PLSVX1
		LDA	<PLYPS1
		STA	!PLSVY1		; player pos. save
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>PYCRCN		; player character change
;
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(SCRL0TBL,X)
;
;
;
SHTDRCK		EQU	$
		STZ	!TRAPMD
		LDA	#007H
		STA	!DOPNCT
		LDA	<GAMEMD
		PHA			; (A) push
;
		JSL	>SDRPLY		; shutter door
;
		PLA			; (A) pull
		STA	<GAMEMD
;
		LDA	#01FH
		STA	>CCNGCT
		LDA	#000H
		STA	>CCNGED
		INC	<JRSBPT
		RTS
;
;
SCL0000		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00000H
		STA	>CCNGFG
		STA	>CCNGCT
		LDA	#0001FH
		STA	>CCNGED
		STZ	!CCNGPT		; fade-out set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	!SWCHF1
		STZ	!SWCHFG		; swich flag off
;
		INC	<JRSBPT
		RTS
;
;
SCL0100		EQU	$
		LDA	>DARKFG
		BEQ	SCL0180		; fade out ?
;					; yes
		JSL	>CGCNG1
		LDA	>CCNGCT
		BEQ	SCL0120		;
;					;
		JSL	>CGCNG1
SCL0120		EQU	$
		RTS
;
SCL0180		EQU	$
		INC	<JRSBPT
		RTS
;
;
SCL0END		EQU	$
		JSR	SPCH420		; end
;
		LDA	!TRAPMD
		BNE	SCL0E40		; shutter-door open ?
;					; yes
		INC	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT
		LDA	#p1_sdop
		STA	<GAMEMD
SCL0E40		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Scroll (& write)			(SCROL1)	*
;************************************************************************
SCRL1TBL	EQU	$
		WORD	SCL050		; 0 : CG. work set
		WORD	SCL000		; 1 : room making
;// 03.06.11 //		WORD	SCL100		; 2 : BG1. write
;// 03.06.11 //		WORD	SCL300		; 3 : BG2. write
;// 03.06.11 //		WORD	SCL200		; 4 : BG1. write
;// 03.06.11 //		WORD	SCL300		; 5 : BG2. write
;// 03.06.11 //		WORD	SCLC00		; 6 : fade out check
		WORD	SCLC00		; 2 : fade out check
		WORD	SCL100		; 3 : BG1. write
		WORD	SCL340		; 4 : BG2. write
		WORD	SCL240		; 5 : BG1. write
		WORD	SCL340		; 6 : BG2. write
		WORD	SCL600		; 7 : scroll & fade check
;// 03.03.29 //		WORD	SCL400		; 7 : dark check
		WORD	SCRLCK		; 8 : scroll
		WORD	SCL300		; 9 : BG2. write
		WORD	SCL200		; A : BG1. write
		WORD	SCL300		; B : BG2. write
		WORD	SCL500		; C : player auto move init.
;// 03.03.29 //		WORD	SCL800		; D : dark check
		WORD	AUTOMV1		; D : player auto move
		WORD	SCLC00		; E : fade out check
		WORD	SCLDRCK		; F : end
;
;
SCROL1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLXPS1
		STA	!PLSVX1
		LDA	<PLYPS1
		STA	!PLSVY1		; player pos. save
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<JRSBPT
		BEQ	SCL1140		; char. check ok ?
;					; yes
		CMP	#007H
		BCC	SCL1120		; charcater change ok ?
;					; yes
		JSL	>CHRCHNG	; OBJ. charcater change
SCL1120		EQU	$
		JSL	>RCHRCK		; character code set
SCL1140		EQU	$
		JSL	>PYCRCN		; player character change
;
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(SCRL1TBL,X)
;
;
;---------------------------------------- CG. work set
SCL050		EQU	$
		LDA	!LGTWFG
		PHA			; (A) push
;
		JSR	SPCH040		; CG. work set
;
		PLA			; (A) pull
		STA	!LGTWFG
		RTS
;
;
;---------------------------------------- room making
SCL000		EQU	$
		JSL	>MKROOM		; make room
;
		JSL	>SWYKCNG0	; swich-yuka reset
;
		JSL	>CHRCBS1	; Obj. change character buffer set
;
		INC	<JRSBPT
		STZ	!ITEMMD
;
		LDA	<BKRMPT
		PHA			; (A) psuh
		LDA	<RMXYCT
;// 03.07.11 //		LDX	!GSUBFG
;// 03.07.11 //		CPX	#002H
;// 03.07.11 //		BNE	SCL020		; 2kai date ?
;// 03.07.11 //;					; yes
;// 03.07.11 //		LDX	<PLBGCKF
;// 03.07.11 //		BEQ	SCL020		; player down-floor ?
;// 03.07.11 //;					; yes
;// 03.07.11 //		PHA			; (A) push
;// 03.07.11 //		STA	<BKRMPT
;// 03.07.11 //		SEC
;// 03.07.11 //		SBC	#010H
;// 03.07.11 //		STA	<RMXYCT
;// 03.07.11 //		JSR	HPSRST1         ; scroll Hi-pos.
;// 03.07.11 //		PLA			; (A) pull
;// 03.07.11 //		STA	<RMXYCT
;// 03.07.11 //		SEC
;// 03.07.11 //		SBC	#010H
;// 03.07.11 //SCL020		EQU	$
		STA	!ERXYCT
		PLA			; (A) pull
		STA	<BKRMPT
;
		JSL	>ENDTST		; enemy data set
;
		LDA	!LGTWFG
		BNE	SCL020		; light on ?
;					; no
		JSR	GSCK420		; SCCH,V reset
		MEM8
;// 03.09.30 //		MEM16
;// 03.09.30 //		REP	#00100000B	; memory 16bit mode
;// 03.09.30 //;
;// 03.09.30 //		LDA	<SCCH2
;// 03.09.30 //		STA	<SCCH1
;// 03.09.30 //		LDA	<SCCV2
;// 03.09.30 //		STA	<SCCV1
;// 03.09.30 //;
;// 03.09.30 //		MEM8
;// 03.09.30 //		SEP	#00100000B	; memory 8bit mode
SCL020		EQU	$
		STZ	!LGTWFG
SCL040		EQU	$
;// 02.12.18 //		JSL	>RCHRC1		; character code set
		RTS
;
;
;---------------------------------------- BG.1 write
SCL100		EQU	$
		LDA	>DARKFG
		ORA	>BKDARKF
		BEQ	SCL140		; fade out ?
;					; yes
		STZ	<DPSUB
SCL140		EQU	$
		JSL	>XYCALC		; X,Y-move
;
		JSL	>OJCHCNG	; OBJ. character buffer set
;
		JSR	GSCK420		; SCCH,V reset
		MEM8
;// 03.09.30 //		MEM16
;// 03.09.30 //		REP	#00100000B	; memory 16bit mode
;// 03.09.30 //;
;// 03.09.30 //		LDA	<SCCH2
;// 03.09.30 //		STA	<SCCH1
;// 03.09.30 //		LDA	<SCCV2
;// 03.09.30 //		STA	<SCCV1
;// 03.09.30 //;
;// 03.09.30 //		MEM8
;// 03.09.30 //		SEP	#00100000B	; memory 8bit mode
;
		JSL	>WBUFS1		; BG1. write buffer set
		INC	<JRSBPT
		RTS
;
;---------------------------------------- BG.1 write
SCL200		EQU	$
		LDA	>DARKFG
		ORA	>BKDARKF
		BEQ	SCL240		; fade out ?
;					; yes
SCL220		EQU	$
		JSL	>CGCNG1
SCL240		EQU	$
		JSL	>WBUFS1		; BG1. write buffer set
		INC	<JRSBPT
		RTS
;
;
;---------------------------------------- BG.2 write
SCL300		EQU	$
		LDA	>DARKFG
		ORA	>BKDARKF
		BEQ	SCL340		; fade out ?
;					; yes
SCL320		EQU	$
		JSL	>CGCNG1
SCL340		EQU	$
		JSL	>WBUFS0		; BG.2 write buffer set
		INC	<JRSBPT
		RTS
;
;
;// 03.03.29 //;---------------------------------------- dark check
;// 03.03.29 //SCL400		EQU	$
;// 03.03.29 //		LDA	>DKRMCG
;// 03.03.29 //		BEQ	SCL440		; dark ?
;// 03.03.29 //;					; yes
;// 03.03.29 //		JSL	>DKRMCGST	; fade
;// 03.03.29 //		AND	#00011111B
;// 03.03.29 //		CMP	>DKRMCG
;// 03.03.29 //		BNE	SCL480		; end ?
;// 03.03.29 //;					; yes
;// 03.03.29 //SCL440		EQU	$
;// 03.03.29 //		INC	<JRSBPT
;// 03.03.29 //SCL480		EQU	$
;// 03.03.29 //		RTS
;
;
;---------------------------------------- player auto move init
SCL500		EQU	$
		LDA	<GAMEMD
		CMP	#p1_scl1
		BNE	SCL520		; write scroll ?
;					; yes
		LDA	!ITEMMD
		CMP	#RCKED
		BNE	SCL590		; code set end ?
;					; yes
		JSR	ATMV000		; auto move - 0
;
		LDA	>DARKFG
		ORA	>BKDARKF
		BEQ	SCL520		; fade out ?
;					; yes
		JSL	>CGCNG1
SCL520		EQU	$
		INC	<JRSBPT
SCL540		EQU	$
		LDY	#00010110B
		LDX	!GSUBFG
		LDA	>SUBSTD,X
		BPL	SCL550		; BG.1 main-gamen ?
;					; yes
		LDY	#00010111B
		LDA	#00000000B
SCL550		EQU	$
		CPX	#002H
		BNE	SCL560		;
;					;
		LDA	#00000011B
SCL560		EQU	$
		STY	<DPMAIN
		STA	<DPSUB
;
		JSL	>LMPCHCK	; lamp on/off check
;
;// 03.03.19 //		LDA	>DARKFG
;// 03.03.19 //		BNE	SCL580		; dark-room ?
;// 03.03.19 //;					; no
;// 03.03.19 //		LDA	#01100010B
;// 03.03.19 //		CPX	#007H
;// 03.03.19 //		BEQ	SCL560		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //;// 02.10.16 //		CPX	#003H
;// 03.03.19 //		CPX	#004H
;// 03.03.19 //		BEQ	SCL560		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //		LDA	#00100000B
;// 03.03.19 //SCL560		EQU	$
;// 03.03.19 //		STA	<WD2131
SCL580		EQU	$
PFLGCL		EQU	$
		JSL	>BMCLER		; beam clear
		LDA	!DASHFG
		BEQ	SCL590		; dash ?
;					; yes
		STZ	<DIEFG
		STZ	<HANEFG
		LDA	#0FFH
		STA	<PLZSPD
		STA	<PLZSPD1
		STZ	<KENFM
		STZ	<PYSPFG
		STZ	!SWADFY
		STZ	!DASHFG
		LDA	#LNMD
		STA	<LNMODE
SCL590		EQU	$
		RTS
;
;
;---------------------------------------- scroll & fade check
SCL600		EQU	$
;// 02.10.04 //		MEM16
;// 02.10.04 //		REP	#00100000B	; memory 16bit mode
;// 02.10.04 //;
;// 02.10.04 //		LDA	<SCCH2
;// 02.10.04 //		STA	<SCCH1
;// 02.10.04 //		LDA	<SCCV2
;// 02.10.04 //		STA	<SCCV1
;// 02.10.04 //;
;// 02.10.04 //		MEM8
;// 02.10.04 //		SEP	#00100000B	; memory 8bit mode
;// 02.10.04 //;
;// 02.10.04 //		LDA	<DPSUB
;// 02.10.04 //		BNE	SCL630		; sub. gamen set ?
;// 02.10.04 //;					; yes
;// 02.10.04 //		LDY	#00010110B
;// 02.10.04 //		LDX	!GSUBFG
;// 02.10.04 //		LDA	>SUBSTD,X
;// 02.10.04 //		BPL	SCL610		; BG.1 main-gamen ?
;// 02.10.04 //;					; yes
;// 02.10.04 //		LDY	#00010111B
;// 02.10.04 //		LDA	#00000000B
;// 02.10.04 //SCL610		EQU	$
;// 02.10.04 //		STY	<DPMAIN
;// 02.10.04 //		STA	<DPSUB
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	<SCCH2
		STX	<SCCH1
		LDX	<SCCV2
		STX	<SCCV1
;
		LDX	<RMXYCT
		CPX	#00036H
		BEQ	SCL620		; mizu-hiki danjyon (special check) ?
;					; no
		CPX	#00038H
		BEQ	SCL620		; mizu-hiki danjyon (special check) ?
;					; no
		LDX	!GSUBFG
		LDY	#00016H
		LDA	>SUBSTD,X
		BEQ	SCL610		; sub on ?
;					; yes
		LDY	#00116H
;// 03.09.04 //		CMP	#0FFH
;// 03.09.04 //		BNE	SCL610		; BG.1 main-gamen ?
;// 03.09.04 //;					; yes
;// 03.09.04 //		LDY	#00017H
SCL610		EQU	$
		CPY	<DPMAIN
		BEQ	SCL620		; before = ?
;					; yes
		LDA	<DPMAIN
		CMP	#017H
		BEQ	SCL615		; set ok ?
;					; no
		ORA	<DPSUB
		CMP	#017H
		BEQ	SCL620		; set ok ?
;					; yes
SCL615		EQU	$
		STY	<DPMAIN
SCL620		EQU	$
		IDX8
		SEP	#00010000B	; index 8bit mode
;
;//// 03.05.24 ////;
;//// 03.05.24 ////		IDX8
;//// 03.05.24 ////		SEP	#00010000B	; index 8bit mode
;
;// 03.03.19 //		LDA	>BKGSUBF
;// 03.03.19 //		BEQ	SCL620		;
;// 03.03.19 //;					;
;// 03.03.19 //		CMP	#007H
;// 03.03.19 //		BEQ	SCL620		; before gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //		CMP	#004H
;// 03.03.19 //		BNE	SCL630		; before gamen plus ?
;// 03.03.19 //;					; yes
;// 03.03.19 //SCL620		EQU	$
;// 03.03.19 //		LDA	#01100010B
;// 03.03.19 //		CPX	#000H
;// 03.03.19 //		BEQ	SCL630		; 2131H set ?
;// 03.03.19 //;					; no
;// 03.03.19 //		CPX	#007H
;// 03.03.19 //		BEQ	SCL625		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //;// 02.10.16 //		CPX	#003H
;// 03.03.19 //		CPX	#004H
;// 03.03.19 //		BEQ	SCL625		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //		LDA	#00100000B
;// 03.03.19 //SCL625		EQU	$
;// 03.03.19 //		STA	<WD2131
SCL630		EQU	$
		LDA	>DARKFG
		ORA	>BKDARKF
		BEQ	SCL660		; CG. change ?
;					; yes
		LDX	#003H
		LDA	>DARKFG
		BEQ	SCL640		; dark CG. set ?
;					; yes
		LDX	!LGTWST
SCL640		EQU	$
		LDA	>DARKDT,X
		STA	>DKRMCG
		JSL	>WD2132ST	; R.G.B.
;// 03.05.29 //		ORA	#00100000B
;// 03.05.29 //		STA	<WD2132R
;// 03.05.29 //		AND	#00011111B
;// 03.05.29 //		ORA	#01000000B
;// 03.05.29 //		STA	<WD2132G
;// 03.05.29 //		AND	#00011111B
;// 03.05.29 //		ORA	#10000000B
;// 03.05.29 //		STA	<WD2132B
		LDA	#000H
		STA	>CCNGED
SCL660		EQU	$
;// 03.03.19 //		LDA	<WD2132R
;// 03.03.19 //		PHA			; (A) push
		JSR	DARK000		; new CG. set
;// 03.03.19 //		PLA			; (A) pull
;// 03.03.19 //		STA	<WD2132R
;// 03.03.19 //		AND	#00011111B
;// 03.03.19 //		ORA	#01000000B
;// 03.03.19 //		STA	<WD2132G
;// 03.03.19 //		AND	#00011111B
;// 03.03.19 //		ORA	#10000000B
;// 03.03.19 //		STA	<WD2132B	; R.G.B. reset
;;		LDA	>DARKFG
;;		ORA	>BKDARKF
;;		BEQ	SCL680		; fade out ?
;;;					; yes
;;		JSL	>CGCNG1
SCL680		EQU	$
		RTS
;
;// 03.08.06 //;
;// 03.08.06 //;---------------------------------------- scroll & fade check
;// 03.08.06 //SCL700		EQU	$
;// 03.08.06 //		JSR	SCRLCK		; scroll
;// 03.08.06 //		RTS
;// 03.08.06 //;
;
;// 03.03.29 //;---------------------------------------- dark check
;// 03.03.29 //SCL800		EQU	$
;// 03.03.29 //		LDA	>DKRMCG
;// 03.03.29 //		BNE	SCL840		; dark ?
;// 03.03.29 //;					; no
;// 03.03.29 //		JSL	>DKRMCGST	; fade
;// 03.03.29 //		AND	#00011111B
;// 03.03.29 //		BNE	SCL880		; end ?
;// 03.03.29 //;					; yes
;// 03.03.29 //SCL840		EQU	$
;// 03.03.29 //		INC	<JRSBPT
;// 03.03.29 //SCL880		EQU	$
;// 03.03.29 //		RTS
;
;
;---------------------------------------- fade-out check
SCLC00		EQU	$
		LDA	>DARKFG
		ORA	>BKDARKF
		BEQ	SCLC40		; fade out ?
;					; yes
		JSL	>CGCNG1
		LDA	>CCNGCT
		BEQ	SCLC20		;
;					;
		JSL	>CGCNG1
SCLC20		EQU	$
		RTS
;
SCLC40		EQU	$
		INC	<JRSBPT
		RTS
;
;
;---------------------------------------- scroll end check
SCLDRCK		EQU	$
		JSR	SPCH420		; end
;
		LDA	!TRAPMD
		BNE	SCLDC00		; shutter-door open ?
;					; yes
		LDA	<RMXYCT
		CMP	#0ACH
		BNE	SCLDC000	; ura-danjyon(machi-sita) boss-room ?
;					; yes
		LDA	!EMYSTT+1
		AND	#00100000B
		BNE	SCLDC000	; shutter close ok ?
;					; no
		LDA	!EMYSTT+1
		AND	#00010000B
		BEQ	SCLDC00		; shutter close ok ?
;					; yes
SCLDC000	EQU	$
		INC	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT
		LDA	#p1_sdop
		STA	<GAMEMD
SCLDC00		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#014H
		LDA	<RMXYCT
		CMP	#00012H
		BEQ	SCLDC20		; chapel ?
;					; no
		LDX	#010H
		CMP	#00002H
		BEQ	SCLDC20		; chapel up house ?
;					; no
		LDX	#SBSRED-SBSRMD
SCLDC10		EQU	$
		DEX
		DEX
		BMI	SCLDC40		; check end ?
;					; no
		CMP	>SBSRMD,X
		BNE	SCLDC10		; boss room ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>EFLCHK		;
		BCS	SCLDC40		; boss on ?
;					; yes
		LDX	#015H
SCLDC20		EQU	$
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0		; <sound0>
SCLDC40		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		BG. change move				(BGCHMV)	*
;************************************************************************
BGCHMV		EQU	$
		JSL	>BGCHNG		; BG. change
		RTS
;
;
;
;
;************************************************************************
;*		Door open				(DOPNMV)	*
;************************************************************************
DOPNMV		EQU	$
		JSL	>DOPPLY		; door open
		RTS
;
;
;
;
;************************************************************************
;*		Shutter door				(SDRMOV)	*
;************************************************************************
SDRMOV		EQU	$
		JSL	>SDRPLY		; shutter door
		RTS
;
;
;
;************************************************************************
;*		Step room change			(STPCHG)	*
;************************************************************************
STPCHG		EQU	$
		LDA	<JRSBPT
		CMP	#003H
		BCC	STCH10		; char. check ok ?
;					; yes
		JSL	>RCHRCK		; character code set
STCH10		EQU	$
;// 03.08.06 //		LDA	<JRSBPT
;// 03.08.06 //		CMP	#006H
;// 03.08.06 //		BCC	STCH15		; char. check ok ?
;// 03.08.06 //;					; yes
;// 03.08.06 //		JSL	>SCGCNG		; fade in
;// 03.08.06 //;
;// 03.08.06 //		JSL	>DKRMCGST	; fade
;// 03.08.06 //STCH15		EQU	$
		LDA	<JRSBPT
		CMP	#00DH
		BCC	STCH40		; player move ?
;					; yes
		JSL	>CHRCHNG	; OBJ. character change
;
		LDA	!SPMVCT
		BEQ	STCH60		; move end ?
;					; no
		DEC	!SPMVCT
		CMP	#010H
		BNE	STCH20		; step move ?
;					; yes
		LDA	#002H
		STA	<PSTPFG
STCH20		EQU	$
		LDX	#008H
		LDA	!STPFLG
		AND	#00000100B
		BEQ	STCH30		; up ?
;					; yes
		LDX	#004H
STCH30		EQU	$
		STX	<PWORK1		; player muki set
		JSL	>PYSPST		; player move
;
		JSR	GMSLCK		; gamen scroll check
STCH40		EQU	$
		JSL	>PYCRCN		; player character change
STCH60		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	SPCH000		; 0 : CG. work set
		WORD	SPCH150		; 1 : CG. change (fade out)
		WORD	SPCH100		; 2 : room making
		WORD	BGCCHG0		; 3 : BG. character change-0
		WORD	BGCCHG1		; 4 :                     -1
		WORD	SPCH200		; 5 : enemy data set & new color set
		WORD	SPCH300		; 6 : BG.1 write
		WORD	SCL340		; 7 : BG2. write
		WORD	SCL240		; 8 : BG1. write
		WORD	SCL340		; 9 : BG2. write
		WORD	SCL220		; A : BG1. write
		WORD	SCL320		; B : BG2. write
		WORD	SCL220		; C : BG1. write
		WORD	SCL320		; D : BG2. write
		WORD	STPC100		; E : fade in
		WORD	SCL520		; F : player auto move init.
		WORD	SPCH400		;10 : end check
;
;
;
STPC000		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<RMXYCT
		CMP	#yamabs0
		BEQ	STPC010		; yama-tower boss ?
;					; no
		CMP	#yamabs1
		BNE	STPC015		; yama-tower ?
;					; yes
		LDX	!SVSND0
		CPX	#011H
		BEQ	STPC015		; sound fade-out ?
;					; yes
STPC010		EQU	$
		LDA	>ITEMR53
		LSR	A
		BCS	STPC015		; boss on ?
;					; yes
		LDX	#0F1H
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0		; <sound0>
STPC015		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDX	#058H
		LDA	!STPFLG
		AND	#00000100B
		BEQ	STPC020		; up move ?
;					; no
		LDX	#06AH
STPC020		EQU	$
		STX	!SPMVCT
SPCH000		EQU	$
		STZ	!ITEMMD
;
;<< 03.03.29 >>		IDX8
;<< 03.03.29 >>		SEP	#00010000B	; index 8bit mode
;<< 03.03.29 >>;
;<< 03.03.29 >>		LDA	>CCNGED
;<< 03.03.29 >>		STA	>CCNGCT
;<< 03.03.29 >>		LDA	#01FH
;<< 03.03.29 >>		STA	>CCNGED
SPCH040		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#00000H
		STA	>MZKCNT
		STA	>CCNGFG
		STA	>CCNGCT
		LDA	#0001FH
		STA	>CCNGED
		STZ	!CCNGPT		; fade-out set
;
;// 02.09.17 //		PHB			; (DBR) push
;// 02.09.17 //		LDA	#001FFH
;// 02.09.17 //		LDX	#CGWORK
;// 02.09.17 //		LDY	#CGRAM
;// 02.09.17 //;// 02.04.17 //		MVN	#BANK CGWORK,#BANK CGRAM
;// 02.09.17 //		MVN	#07EH,#07EH
;// 02.09.17 //		PLB			; (DBR) PULL
;
		STZ	!LGTWST
		LDA	!LGTWFG
		BEQ	SPCH060		; light-wipe on ?
;					; yes
		LDA	#1011001100000010B
		STA	<WD2130		; 2130H <-- #002H , 2131H <-- #0B3H
;;;;;;;;		STA	<WD2131
SPCH060		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	!LGTWFG
		JSR	PFLGCL		; player flag clear
;
		JSR	CGWKST2		; (CGWORK) set
;// 02.10.04 //		LDA	#00000010B
;// 02.10.04 //		STA	2130H
;// 02.10.04 //		LDA	#00100000B
;// 02.10.04 //		STA	2131H
;
		INC	<JRSBPT
		RTS
;
;
SPCH100		EQU	$
		JSR	HPSRST1		; Hi-pos. reset
;
		JSL	>MKROOM		; make room
;
		JSL	>SWYKCNG0	; swich-yuka reset
;
		JSL	>CHRCBS0	; BG.Obj. change character buffer set
;
		JSL	>DJCODST	; read code change
;
		LDA	<RMXYCT
;// 03.03.22 //		LDX	<PLBGCKF
;// 03.03.22 //		BEQ	SPCH120		; player down-floor ?
;// 03.03.22 //;					; yes
;// 03.03.22 //		SEC
;// 03.03.22 //		SBC	#010H
;// 03.03.22 //SPCH120		EQU	$
		STA	!ERXYCT
;
		JSL	>RAOPIT		; option init.
;
		INC	<JRSBPT
		RTS
;
;
SPCH150		EQU	$
		JSL	>CGCNG1
		LDA	>CCNGCT
		BEQ	SPCH180		;
;					;
		JSL	>CGCNG1
SPCH180		EQU	$
		RTS
;
;
SPCH200		EQU	$
		JSL	>OJCHCNG	; OBJ. character buffer set
;
		JSL	>ENDTST		; enemy data set
;
;// 03.04.18 //		LDX	!STPDPT
;// 03.04.18 //		LDA	>CDBGCD,X
;// 03.04.18 //		STA	!CDBGCKF
;// 03.04.18 //		LDA	>PLBGCD,X
;// 03.04.18 //		STA	<PLBGCKF
;// 03.04.18 //;
;// 03.04.18 //		JMP	DARK000		; new CG. set
		JMP	SCL630		; new color set
;
;
SPCH300		EQU	$
		JSR	GSCK420		; SCCH,V reset
		MEM8
;// 03.09.30 //		MEM16
;// 03.09.30 //		REP	#00100000B	; memory 16bit mode
;// 03.09.30 //;
;// 03.09.30 //		LDA	<SCCH2
;// 03.09.30 //		STA	<SCCH1
;// 03.09.30 //		LDA	<SCCV2
;// 03.09.30 //		STA	<SCCV1
;// 03.09.30 //;
;// 03.09.30 //		MEM8
;// 03.09.30 //		SEP	#00100000B	; memory 8bit mode
;
		JSL	>XYCALC		; X,Y-move
;
		LDY	#00010110B
		LDX	!GSUBFG
		LDA	>SUBSTD,X
		BPL	SPCH320		; BG.1 main-gamen ?
;					; yes
		LDY	#00010111B
		LDA	#00000000B
SPCH320		EQU	$
		STY	<DPMAIN
		STA	<DPSUB
;
;/////		LDY	#00001000B
;/////		LDA	<PLYPS0
;/////		LSR	A
;/////		BCC	SPCH220		;
;/////;					;
;/////		LDY	#00000100B
;/////SPCH220		EQU	$
;/////		STY	<PWORK1
;/////;
;/////		LDY	#00000010B
;/////		LDA	<PLXPS0
;/////		LSR	A
;/////		BCC	SPCH240		;
;/////;					;
;/////		LDY	#00000001B
;/////SPCH240		EQU	$
;/////		TYA
;/////		ORA	<PWORK1
;/////		STA	<PWORK1
;/////		JSR	GMSLRS		; gamen scroll reset
;
;// 02.11.08 //		INC	<FLORNO
		INC	<FLORNO
		LDA	#001H
		STA	<PSTPFG
		LDY	#017H
		LDX	#030H
		LDA	!STPFLG
		AND	#00000100B
		BEQ	SPCH340		; up ?
;					; no
;// 02.11.08 //		DEC	<FLORNO
;// 02.11.08 //		DEC	<FLORNO
		LDY	#019H
		DEC	<FLORNO
		DEC	<FLORNO
		LDX	#020H
SPCH340		EQU	$
		STX	!SPMVCT
		STY	!SOUND2		; <sound2>
;
		LDA	#024H
		STA	!SOUND3		; <sound3>
		JSR	FLNODP		; fllor no. display flag on
;
		JMP	SCL240
;
;
;
SPCH400		EQU	$
		LDA	>CCNGFG
		ORA	>CCNGCT
		BEQ	SPCH410		; fade end ?
;					; no
SPCH405		EQU	$
		RTS
;
SPCH410		EQU	$
		LDA	!ITEMMD
		CMP	#RCKED
		BNE	SPCH405		; code set end ?
;					; yes
SPCH420		EQU	$
		STZ	!ITEMMD
		STZ	<JRSBPT
		STZ	!SCRLFG
		STZ	<GAMEMD
		STZ	!SWCHFG		; swich flag off
		STZ	!BLKSWF		; block swich off
SPCH430		EQU	$
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
SPCH440		EQU	$
		RTS
;
;
;
;----------------------------------------
BGCCHG0		EQU	$
		JSL	>BGCHCNG	; BG. character buffer set
;
		LDA	#bgw9
		STA	<BGWTFG
		STA	!GMAPDF
		INC	<JRSBPT
		RTS
;
;
;----------------------------------------
BGCCHG1		EQU	$
		LDA	#bgwA
		STA	<BGWTFG
		STA	!GMAPDF
		INC	<JRSBPT
;// 02.12.18 //		JSL	>RCHRC1		; character code set
		RTS
;
;
;
;************************************************************************
;*		Hole  down				(HLDOWN)	*
;************************************************************************
HLDOWN		EQU	$
		LDA	<JRSBPT
		CMP	#006H
		BCC	HLDWN40		; character code set ok ?
;					; yes
		JSL	>CHRCHNG	; OBJ. character change
;
		JSL	>RCHRCK		; character code set
;
		JSL	>DKRMCGST	; fade
HLDWN40		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	HLDN000		; 0 : CG. work set
		WORD	DKCGCG1		; 1 : CG. change (fade out)
		WORD	SPCH100		; 2 : room making
		WORD	BGCCHG0		; 3 : BG. character change-0
		WORD	BGCCHG1		; 4 :                     -1
		WORD	SPCH200		; 5 : enemy data set & new color set
		WORD	HLDN100		; 6 : BG.1 write
		WORD	SCL340		; 7 : BG2. write
		WORD	SCL240		; 8 : BG1. write
		WORD	SCL340		; 9 : BG2. write
		WORD	SCL240		; A : BG1. write
		WORD	SCL340		; B : BG2. write
		WORD	SCL240		; C : BG1. write
		WORD	SCL340		; D : BG2. write
		WORD	SCL520		; E : player auto move init.
		WORD	HLDN300		; F : fade in & player pos. reset
		WORD	HLDN500		;10 : player fade in
		WORD	HLDN800		;11 : end
;
;
HLDN000		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<RMXYCT
		CMP	#00010H
		BEQ	HLDN020		; ganon-room ?
;					; no
		CMP	#yamabs0
		BEQ	HLDN020		; yama-tower boss ?
;					; no
		CMP	#yamabs1
		BNE	HLDN040		; yama-tower ?
;					; yes
HLDN020		EQU	$
		LDX	#0F1H
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0		; <sound0>
HLDN040		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JMP	SPCH000
;
;
;
HLDN100		EQU	$
;;;;;;;;		LDX	HLINFF
;;;;;;;;		LDA	>CDBGCD,X
;;;;;;;;		STA	!CDBGCKF
;;;;;;;;		LDA	>PLBGCD,X
;;;;;;;;		STA	<PLBGCKF
;
		JSR	GSCK420		; SCCH,V reset
		MEM8
;// 03.09.30 //		MEM16
;// 03.09.30 //		REP	#00100000B	; memory 16bit mode
;// 03.09.30 //;
;// 03.09.30 //		LDA	<SCCH2
;// 03.09.30 //		STA	<SCCH1
;// 03.09.30 //		LDA	<SCCV2
;// 03.09.30 //		STA	<SCCV1
;// 03.09.30 //;
;// 03.09.30 //		MEM8
;// 03.09.30 //		SEP	#00100000B	; memory 8bit mode
;
		JSL	>XYCALC		; X,Y-move
;
		LDY	#00010110B
		LDX	!GSUBFG
		LDA	>SUBSTD,X
		BPL	HLDN130		; BG.1 main-gamen ?
;					; yes
		LDY	#00010111B
		LDA	#00000000B
HLDN130		EQU	$
		STY	<DPMAIN
		STA	<DPSUB
;
;// 03.03.19 //		LDA	#01100010B
;// 03.03.19 //		CPX	#007H
;// 03.03.19 //		BEQ	HLDN140		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //;// 02.10.16 //		CPX	#003H
;// 03.03.19 //		CPX	#004H
;// 03.03.19 //		BEQ	HLDN140		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //		LDA	#00100000B
;// 03.03.19 //HLDN140		EQU	$
;// 03.03.19 //		STA	<WD2131
;
		JSL	>WBUFS1		; BG1. write buffer set
		INC	<JRSBPT
		RTS
;
;
;
HLDN300		EQU	$
		JSL	>CGCNG1
		LDA	>CCNGFG
		BNE	HLDN360		;
;					;
		LDA	<PLYPS1+1
		LDY	<PLYPS1+0
		CPY	<PLHNL0+0
		BCC	HLDN340		;
;					;
		INC	A
HLDN340		EQU	$
		STA	<PLHNL0+1
;
		JSR	STPC385		; sound check
;
		LDA	<RMXYCT
		CMP	#089H
		BEQ	HLDN360		; tubo-down ?
;					; no
		CMP	#04FH
		BEQ	HLDN360		; tubo-down ?
;					; no
		CMP	#0A7H
		BEQ	HLDN380		; yama-tower ?
;					; no
		DEC	<FLORNO
FLNODP		EQU	$
		LDA	#001H
		STA	!FLNODFG	; fllor no. display flag on
		LDA	#024H
		STA	!SOUND3		; <sound3>
;
		JSL	>MPBTSET	; map on/off bit set
HLDN360		EQU	$
		RTS
;
HLDN380		EQU	$
		STZ	!FLNODFG	; fllor no. clear
		LDA	#001H
		STA	<FLORNO		; 2F set
		RTS
;
;
HLDN500		EQU	$
		JSL	>PLAFHL		; Player fade-in
		LDA	<GAMEMD
		BNE	HLDN580		; end ?
;					; yes
		LDA	#p1_hldn
		STA	<GAMEMD
		LDA	#011H
		STA	<JRSBPT
;
		LDA	#spoj0
		STA	!SPOJFG
		JSL	>SPOJCNG
HLDN580		EQU	$
		RTS
;
;
HLDN800		EQU	$
		LDA	!ITEMMD
		CMP	#RCKED
		BNE	HLDN880		; code set end ?
;					; yes
		JSR	SPCH420		; end
;
		JSR	SCLDC00		; end & BGM. check
;
		JSL	>SPOJCNG
HLDN880		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Mode change step move			(MCSTPMV)	*
;************************************************************************
MCSTPMV		EQU	$
		LDA	!SPMVCT
		BEQ	MSPM60		; move end ?
;					; no
		DEC	!SPMVCT
		CMP	#014H
		BNE	MSPM20		; step move ?
;					; yes
		LDA	#002H
		STA	<PSTPFG
MSPM20		EQU	$
		JSL	>PYSPST		; player move
;
		JSL	>HPMV400	; not door move set
;
		JSR	GMSLCK		; gamen scroll check
MSPM40		EQU	$
		JSL	>PYCRCN		; player character change
MSPM60		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	MSPM000		; 0 : init. set
		WORD	MSPM400		; 1 : move
;
;
;
MSPM000		EQU	$
		STZ	!ASWFLG		; asase flag off
;
		LDY	#019H
		LDX	#03CH
		LDA	<PWORK1
		AND	#00001000B
		BEQ	MSPM040		; up move ?
;					; yes
		LDY	#017H
		LDX	#038H
		STZ	!CDBGCKF
;
		LDA	!FLCKFG
		CMP	#002H
		BEQ	MSPM040		; normal step ?
;					; no
		STZ	<PLBGCKF
MSPM040		EQU	$
		STX	!SPMVCT
		STY	!SOUND2		; <sound2>
;
		LDA	#001H
		STA	<PSTPFG
		INC	<JRSBPT
MSPM080		EQU	$
		RTS
;
;
MSPM400		EQU	$
		LDA	!SPMVCT
		BNE	MSPM080		; end ?
;					; yes
		LDA	<PWORK1
		AND	#00000100B
		BEQ	MSPM420		; down move ?
;					; yes
		LDA	#00000001B
		STA	!CDBGCKF
;// 03.06.28 //		DEC	<FLORNO
;// 03.07.11 //		LDA	!FLCKFG
;// 03.07.11 //		BNE	MSPM410		;
;// 03.07.11 //;					;
;// 03.07.11 //		LDA	<RMXYCT
;// 03.07.11 //		STA	!ERXYCT
;// 03.07.11 //		CLC
;// 03.07.11 //		ADC	#010H
;// 03.07.11 //		STA	<RMXYCT
;// 03.07.11 //MSPM410		EQU	$
		LDA	!FLCKFG
		CMP	#002H
		BEQ	MSPM480		; normal step ?
;					; no
		LDA	#00000001B
		STA	<PLBGCKF
		BRA	MSPM480
;
MSPM420		EQU	$
;// 03.06.28 //		INC	<FLORNO
;// 03.07.11 //		LDA	!FLCKFG
;// 03.07.11 //		BNE	MSPM480		;
;// 03.07.11 //;					;
;// 03.07.11 //		LDA	<RMXYCT
;// 03.07.11 //		SEC
;// 03.07.11 //		SBC	#010H
;// 03.07.11 //		STA	<RMXYCT
MSPM480		EQU	$
		STZ	<JRSBPT
		STZ	!SCRLFG
		STZ	<GAMEMD
;
;// 03.06.28 //		JMP	FLNODP		; fllor no. display flag on
		JSL	>MPBTSET	; map on/off bit set
		RTS
;
;
;
;************************************************************************
;*		Mode change step move			(MCSTPM1)	*
;************************************************************************
MCSTPM1		EQU	$
		LDA	!SPMVCT
		BEQ	MSP160		; move end ?
;					; no
		DEC	!SPMVCT
		CMP	#014H
		BNE	MSP120		; step move ?
;					; yes
		LDA	#002H
		STA	<PSTPFG
MSP120		EQU	$
		JSL	>PYSPST		; player move
;
		JSL	>HPMV400	; not door move set
;
		JSR	GMSLCK		; gamen scroll check
MSP140		EQU	$
		JSL	>PYCRCN		; player character change
MSP160		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	MSP1000		; 0 : init. set
		WORD	MSP1400		; 1 : move
;
;
;
MSP1000		EQU	$
		LDY	#019H
		LDX	#03CH
		LDA	<PWORK1
		AND	#00000100B
		BEQ	MSP1040		; up move ?
;					; yes
		LDY	#017H
		LDX	#038H
		LDA	!CDBGCKF
		EOR	#00000001B
		STA	!CDBGCKF
;
		LDA	!FLCKFG
		CMP	#002H
		BEQ	MSP1040		; normal step ?
;					; no
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
MSP1040		EQU	$
		STX	!SPMVCT
		STY	!SOUND2		; <sound2>
;
		LDA	#001H
		STA	<PSTPFG
		INC	<JRSBPT
MSP1080		EQU	$
		RTS
;
;
MSP1400		EQU	$
		LDA	!SPMVCT
		BNE	MSP1080		; end ?
;					; yes
		LDA	<PWORK1
		AND	#00001000B
		BEQ	MSP1420		; down move ?
;					; yes
		LDA	!CDBGCKF
		EOR	#00000001B
		STA	!CDBGCKF
;// 03.06.28 //		DEC	<FLORNO
;// 03.07.11 //		LDA	!FLCKFG
;// 03.07.11 //		BNE	MSP1410		;
;// 03.07.11 //;					;
;// 03.07.11 //		LDA	<RMXYCT
;// 03.07.11 //		STA	!ERXYCT
;// 03.07.11 //		CLC
;// 03.07.11 //		ADC	#010H
;// 03.07.11 //		STA	<RMXYCT
;// 03.07.11 //MSP1410		EQU	$
		LDA	!FLCKFG
		CMP	#002H
		BEQ	MSP1480		; normal step ?
;					; no
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
		BRA	MSP1480
;
MSP1420		EQU	$
;// 03.06.28 //		INC	<FLORNO
;// 03.07.11 //		LDA	!FLCKFG
;// 03.07.11 //		BNE	MSP1480		;
;// 03.07.11 //;					;
;// 03.07.11 //		LDA	<RMXYCT
;// 03.07.11 //		SEC
;// 03.07.11 //		SBC	#010H
;// 03.07.11 //		STA	<RMXYCT
MSP1480		EQU	$
		STZ	<JRSBPT
		STZ	!SCRLFG
		STZ	<GAMEMD
;
;// 03.06.28 //		JSR	FLNODP		; fllor no. display flag on
		JSL	>MPBTSET	; map on/off bit set
MSP1440		EQU	$
		RTS
;
;
;
;;;MSPM000		EQU	$
;;;		LDX	#024H
;;;		LDA	<PWORK1
;;;		AND	#00001000B
;;;		BEQ	MSPM040		; up move ?
;;;;					; yes
;;;		LDA	!CDBGCKF
;;;		EOR	#00000001B
;;;		STA	!CDBGCKF
;;;		INC	<FLORNO		;// 02.11.08 //
;;;		JSL	>RSTSET		; room status set ;// 02.11.08 //
;;;		LDA	<RMXYCT		;// 02.11.08 //
;;;		SEC			;// 02.11.08 //
;;;		SBC	#040H		;// 02.11.08 //
;;;		STA	<RMXYCT		;// 02.11.08 //
;;;		LDX	#024H		;// 02.11.08 //
;;;		LDA	!NSTPFG
;;;		BNE	MSPM040		; normal step ?
;;;;					; no
;;;;// 02.11.08 //		INC	<FLORNO
;;;;// 02.11.08 //		LDA	!FLCKFG
;;;;// 02.11.08 //		BNE	MSPM030		;
;;;;// 02.11.08 //;					;
;;;;// 02.11.08 //		LDA	<RMXYCT
;;;;// 02.11.08 //;// 02.06.06 //		STA	<NXRMCT
;;;;// 02.11.08 //		SEC
;;;;// 02.11.08 //		SBC	#040H
;;;;// 02.11.08 //;// 02.11.05 //		CMP	#0C0H
;;;;// 02.11.08 //;// 02.11.05 //		BCC	MSPM020		; 
;;;;// 02.11.08 //;// 02.11.05 //;					;
;;;;// 02.11.08 //;// 02.11.05 //		SEC
;;;;// 02.11.08 //;// 02.11.05 //		SBC	#040H
;;;;// 02.11.08 //;// 02.11.05 //MSPM020		EQU	$
;;;;// 02.11.08 //		STA	<RMXYCT
;;;;// 02.11.08 //MSPM030		EQU	$
;;;		LDA	<PLBGCKF
;;;		EOR	#00000001B
;;;		STA	<PLBGCKF
;;;		LDX	#038H
;;;MSPM040		EQU	$
;;;		STX	!SPMVCT
;;;;
;;;		LDA	#001H
;;;		STA	<PSTPFG
;;;		INC	<JRSBPT
;;;		RTS
;;;;
;;;;
;;;MSPM400		EQU	$
;;;		LDA	!SPMVCT
;;;		BNE	MSPM440		; end ?
;;;;					; yes
;;;		LDA	<PWORK1
;;;		AND	#00000100B
;;;		BEQ	MSPM420		; down move ?
;;;;					; yes
;;;		LDA	!CDBGCKF
;;;		EOR	#00000001B
;;;		STA	!CDBGCKF
;;;		DEC	<FLORNO		;// 02.11.08 //
;;;		JSL	>RSTSET		; room status set
;;;		LDA	<RMXYCT		;// 02.11.08 //
;;;		CLC			;// 02.11.08 //
;;;		ADC	#040H		;// 02.11.08 //
;;;		STA	<RMXYCT		;// 02.11.08 //
;;;		LDA	!NSTPFG
;;;		BNE	MSPM420		; normal step ?
;;;;					; no
;;;;// 02.11.08 //		DEC	<FLORNO
;;;;// 02.11.08 //		LDA	!FLCKFG
;;;;// 02.11.08 //		BNE	MSPM430		;
;;;;// 02.11.08 //;					;
;;;;// 02.11.08 //		LDA	<RMXYCT
;;;;// 02.11.08 //;// 02.06.06 //		STA	<NXRMCT
;;;;// 02.11.08 //		CLC
;;;;// 02.11.08 //		ADC	#040H
;;;;// 02.11.08 //;// 02.11.05 //		CMP	#0C0H
;;;;// 02.11.08 //;// 02.11.05 //		BCC	MSPM410		;
;;;;// 02.11.08 //;// 02.11.05 //;					;
;;;;// 02.11.08 //;// 02.11.05 //		CLC
;;;;// 02.11.08 //;// 02.11.05 //		ADC	#040H
;;;;// 02.11.08 //;// 02.11.05 //MSPM410		EQU	$
;;;;// 02.11.08 //		STA	<RMXYCT	
;;;;// 02.11.08 //MSPM430		EQU	$
;;;		LDA	<PLBGCKF
;;;		EOR	#00000001B
;;;		STA	<PLBGCKF
;;;MSPM420		EQU	$
;;;		STZ	<JRSBPT
;;;		STZ	!SCRLFG
;;;		STZ	<GAMEMD
;;;;
;;;;///////		JSR	HPSRST		; Hi-pos. reset
;;;;
;;;		JSL	>MPBTSET	; map on/off bit set
;;;MSPM440		EQU	$
;;;		RTS
;;;;
;;;;
;
;// 03.06.11 //;
;// 03.06.11 //;************************************************************************
;// 03.06.11 //;*		Open yuka move				(OPYKMV)	*
;// 03.06.11 //;************************************************************************
;// 03.06.11 //OPYKMV		EQU	$
;// 03.06.11 //		JSL	>OPYKPL
;// 03.06.11 //		RTS
;// 03.06.11 //;
;
;
;
;************************************************************************
;*		Bomb-door open move			(BDRMOV)	*
;************************************************************************
BDRMOV		EQU	$
		JSL	>BDROPEN
		RTS
;
;
;
;
;************************************************************************
;*		Light wipe move				(LGTWIPE)	*
;************************************************************************
LGTWIPE		EQU	$
		JSL	>LGTWPMV
;
		JSL	>DKRMCGST	; fade
		LDA	>WD2132R
		AND	#00011111B
		CMP	>DKRMCG
		BNE	LTWP080		; end ?
;					; yes
		STZ	<GAMEMD
		STZ	<JRSBPT
LTWP080		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Water down move				(WRDWNMV)	*
;************************************************************************
WRDWNMV		EQU	$
		JSL	>WRDWN00
		RTS
;
;
WRDWN00		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUBL
		LWORD	WTRDOWN		; 0 : water down
		LWORD	WTRCLR0		; 1 : BG.1 water clear init.
		LWORD	WTRCLR1		; 2 :                  write-0
		LWORD	WTRCLR1		; 3 :                  write-1
		LWORD	WTRCLR1		; 4 :                  write-2
		LWORD	WTRCLR1		; 5 :                  write-3
;
;
;
;************************************************************************
;*		Water up move				(WRUPMV)	*
;************************************************************************
WRUPMV		EQU	$
		JSL	>WTRUPP		; water up
		RTS
;
;
;
;************************************************************************
;*		Water gate open move			(WGTOPMV)	*
;************************************************************************
WGTOPMV		EQU	$
		JSL	>WGTOPEN	; water gate open
		RTS
;
;
;
;************************************************************************
;*		Rasen Step room change			(STEPCN)	*
;************************************************************************
STEPCN		EQU	$
		LDA	<JRSBPT
		CMP	#007H
		BCC	STPC20		; char. check ok ?
;					; yes
		JSL	>CHRCHNG	; OBJ. character change
;
		JSL	>RCHRCK		; character code set
;// 03.08.05 //STPC20		EQU	$
;// 03.08.05 //		LDA	<JRSBPT
;// 03.08.05 //		CMP	#00BH
;// 03.08.05 //		BCC	STPC40		; char. check ok ?
;// 03.08.05 //;					; yes
;// 03.08.05 //		JSL	>DKRMCGST	; fade
;// 03.08.05 //;
;// 03.08.05 //		LDA	>CCNGFG
;// 03.08.05 //		BEQ	STPC40		; CG. change ?
;// 03.08.05 //;					; yes
;// 03.08.05 //		JSL	>SCGCNG		; fade in
;// 03.08.05 //STPC40		EQU	$
STPC20		EQU	$
		JSL	>RASNIN		; player move
STPC60		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	STPC600		;00 : BG. rewrite
		WORD	STPC000		;01 : CG. work set
		WORD	STPC200		;02 : CG. change (fade out)
		WORD	SPCH100		;03 : room making
		WORD	BGCCHG0		;04 : BG. character change-0
		WORD	BGCCHG1		;05 :                     -1
		WORD	SPCH200		;06 : enemy data set & new color set
		WORD	STPC300		;07 : BG.1 write
		WORD	SCL340		;08 : BG2. write
		WORD	SCL240		;09 : BG1. write
		WORD	SCL340		;0A : BG2. write
		WORD	SCL220		;0B : BG1. write
		WORD	SCL320		;0C : BG2. write
		WORD	SCL220		;0D : BG1. write
		WORD	SCL320		;0E : BG2. write
		WORD	STPC100		;0F : fade in
		WORD	STPC380		;10 : player auto move init.
		WORD	STPC400		;11 : end check
		WORD	STPC500		;12 : end move
		WORD	STPC700		;13 : end write
;
;
STPC100		EQU	$
		JSL	>CGCNG1		; fade in
		JSL	>CGCNG1		; fade in
;
		JSL	>DKRMCGST
		RTS
;
;
;
STPC200		EQU	$
		LDA	!SPMVCT
		CMP	#009H
		BCS	STPC240		; fade out ok ?
;					; yes
		JSL	>CGCNG1		; CG. change
		LDA	>CCNGCT
		BEQ	STPC240		;
;					;
		JSL	>CGCNG1		; CG. change
STPC240		EQU	$
		LDA	!SPMVCT
		BNE	STPC280		; fade out ok ?
;					; yes
		LDA	#OMS000
		STA	<OMSBMD		; player OAM clear on
		STA	!OPNOSI		; option OAM clear on
		RTS
;
STPC280		EQU	$
		DEC	!SPMVCT
		RTS
;
;
STPC300		EQU	$
		LDA	>OPMODE
		CMP	#prnc1
		BNE	STPC310		; option-girl ?
;					; yes
		LDA	<RMXYCT
		CMP	#064H
		BNE	STPC310		; option clear ?
;					; yes
		LDA	#000H
		STA	>OPMODE
STPC310		EQU	$
		LDA	<PLBGCKF
		PHA			; (A) push
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00030H
		LDA	!STPFLG
		AND	#00000100B
		BNE	STPC320		; up ?
;					; yes
		LDX	#0FFD0H
STPC320		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		TXA
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	!STPDPT
		LDA	>PLBGCD,X
		STA	<PLBGCKF
		JSR	STPCZ00		; 
;
		PLA			; (A) pull
		STA	<PLBGCKF
;
;// 03.08.05 //		JSL	>SCGCNG		; fade in
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#0FFD0H
		LDA	!STPFLG
		AND	#00000100B
		BNE	STPC330		; up ?
;					; yes
		LDX	#00030H
STPC330		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		TXA
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
;
		JSR	GSCK420		; SCCH,V reset
		MEM8
;// 03.09.30 //		LDA	<SCCH2
;// 03.09.30 //		STA	<SCCH1
;// 03.09.30 //		LDA	<SCCV2
;// 03.09.30 //		STA	<SCCV1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSL	>XYCALC		; X,Y-move
;
		LDY	#00010110B
		LDX	!GSUBFG
		LDA	>SUBSTD,X
		BPL	STPC335		; BG.1 main-gamen ?
;					; yes
		LDY	#00010111B
		LDA	#00000000B
STPC335		EQU	$
		CPX	#002H
		BNE	STPC337		;
;					;
		LDA	#00000011B
STPC337		EQU	$
		STY	<DPMAIN
		STA	<DPSUB
;
		INC	<FLORNO
		LDA	!STPFLG
		AND	#00000100B
		BEQ	STPC340		; up ?
;					; no
		DEC	<FLORNO
		DEC	<FLORNO
STPC340		EQU	$
		LDX	#018H
		STX	!SPMVCT
;
		JSR	FLNODP		; fllor no. display flag on
;
		JSL	>LMPCHCK	; lamp on/off check
;
		JMP	SCL240
;
;
STPC380		EQU	$
		JSR	PFLGCL		; player flag clear
;
		LDA	#038H
		STA	!SPMVCT
;
		INC	<JRSBPT
STPC385		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#01CH
		LDA	<RMXYCT
		CMP	#00010H
		BEQ	STPC390		; ganon-room ?
;					; no
		LDX	#015H
		CMP	#yamabs0
		BEQ	STPC387		; yama-tower ?
;					; no
		LDX	#011H
		CMP	#yamabs1
		BNE	STPC395		; yama-tower ?
;					; yes
		CPX	!SVSND0
		BEQ	STPC395		; sound set ok ?
;					; yes
STPC387		EQU	$
		LDA	!SVSND0
		AND	#000FFH
		CMP	#000F1H
		BEQ	STPC390		; sound set ?
;					; no
		LDA	>ITEMR53
		LSR	A
		BCS	STPC395		; boss on ?
;					; yes
STPC390		EQU	$
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0		; <sound0>
STPC395		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
STPC400		EQU	$
		JSL	>RASNOT		; move
STPC410		EQU	$
		DEC	!SPMVCT
		BNE	STPC440		; fade in end ?
;					; yes
;// 03.03.04 //		BCS	STPC440		; fade in end ?
;// 03.03.04 //;					; yes
		LDX	#00AH
		LDA	!STPFLG
		AND	#00000100B
		BNE	STPC420		; up move ?
;					; yes
		LDX	#018H
STPC420		EQU	$
		STX	!SPMVCT
		INC	<JRSBPT
STPC440		EQU	$
		RTS
;
;
STPC500		EQU	$
		JSL	>RASNOT		; move
;
		DEC	!SPMVCT
		BNE	STPC540		; end ?
;					; yes
		INC	<JRSBPT
		STZ	!ITEMMD
STPC540		EQU	$
		RTS
;
;
STPC600		EQU	$
		JSL	>RASENW0	; rasen rewrite-0
;
		LDA	<PLBGCKF
		BEQ	STPC640		; BG.1 ?
;					; yes
		LDA	<DPMAIN
		AND	#00001111B
		STA	<DPMAIN
		LDA	#00010000B
		TSB	<DPSUB
		LDA	#003H
		STA	<PLBGCKF
STPC640		EQU	$
		INC	<JRSBPT
		RTS
;
;
STPC700		EQU	$
		LDX	!STPDPT
		LDA	>CDBGCD,X
		STA	!CDBGCKF
		LDA	>PLBGCD,X
		STA	<PLBGCKF
;
		LDA	#00010000B
		TSB	<DPMAIN
		LDA	<DPSUB
		AND	#00001111B
		STA	<DPSUB
;
		LDA	!STPFLG
		AND	#00000100B
		BNE	STPC780		; down move ?
;					; no
		JSL	>RASENW1	; rasen rewrite-1
STPC780		EQU	$
		LDA	<RMXYCT
;// 03.03.22 //		LDX	<PLBGCKF
;// 03.03.22 //		BEQ	STPC740		; player down-floor ?
;// 03.03.22 //;					; yes
;// 03.03.22 //		SEC
;// 03.03.22 //		SBC	#010H
;// 03.03.22 //STPC740		EQU	$
		STA	!ERXYCT
		JMP	SPCH420
;
;
;
STPRPX		EQU	$
		WORD	0FFE4H,0FFE4H,00018H,00018H
;// 03.03.26 //		WORD	0FFE4H,0FFE0H,00018H,00018H
STPRPY		EQU	$
		WORD	00010H,0FFF6H,0FFF6H,0FFE0H
;// 03.03.26 //		WORD	00010H,00020H,0FFF6H,0FFE0H
;
STPC800		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<OMSBMD		; player OAM clear off
		STZ	!OPNOSI		; option OAM clear off
;
;// 03.02.05 //		LDA	!STPFLG
;// 03.02.05 //		AND	#00000111B
;// 03.02.05 //		TAX
;// 03.02.05 //		LDY	#000H
;// 03.02.05 //		LDA	!STPINF0,X
;// 03.02.05 //		BEQ	STPC810		; BG.2 normal ?
;// 03.02.05 //;					; no
;// 03.02.05 //		LDY	#002H
;// 03.02.05 //STPC810		EQU	$
;// 03.02.05 //		TYX			; (X) <-- (Y)
;// 03.02.25 //		LDX	#00000000B
		LDX	#000H
		LDA	!STPDPT
		BNE	STPC810		;
;					;
		CMP	!BSTPPT
		BEQ	STPC810		;
;					;
		LDX	#002H
STPC810		EQU	$
		LDA	!STPFLG
		AND	#00000100B
		BEQ	STPC820		; down-step ?
;					; yes
		TXA
		CLC
		ADC	#004H
		TAX
STPC820		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLXPS1
		CLC
		ADC	>STPRPX,X
		STA	<PLXPS1
		LDA	<PLYPS1
		CLC
		ADC	>STPRPY,X
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<DPMAIN
		AND	#010H
		BEQ	STPC860		; player BG.1 ?
;					; no
		LDA	!STPDPT
		CMP	#002H
		BNE	STPC840		; rasen under ?
;					; yes
		LDA	#003H
		STA	<PLBGCKF
		LDA	<DPMAIN
		AND	#00001111B
		STA	<DPMAIN
		LDA	#00010000B
		TSB	<DPSUB
;
		LDA	!BSTPPT
		CMP	#002H
		BEQ	STPC840		; before under ?
;					; no
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		CLC
		ADC	#00018H
		STA	<PLYPS1
STPC840		EQU	$
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>RAOPIT		; option init.
;
		REP	#00100000B	; memory 16bit mode
		RTL
;
;
		MEM8
STPC860		EQU	$
		LDA	!STPDPT
		CMP	#002H
		BEQ	STPC880		; rasen under ?
;					; no
		LDA	#00010000B
		TSB	<DPMAIN
		LDA	<DPSUB
		AND	#00001111B
		STA	<DPSUB
;
		LDA	!BSTPPT
		CMP	#002H
		BEQ	STPC840		; before under ?
;					; no
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		SEC
		SBC	#00018H
		STA	<PLYPS1
STPC880		EQU	$
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>RAOPIT		; option init.
;
		REP	#00100000B	; memory 16bit mode
		RTL
;
;
		MEM8
		IDX8
STPCZ00		EQU	$
		LDA	!STPFLG
		AND	#00000100B
		BNE	STPCZ80		; down move ?
;					; no
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.02.13 //		LDA	<PLYPS0
;// 03.02.13 //		AND	#00001H
;// 03.02.13 //		TAY
;// 03.02.13 //;
;// 03.02.13 //		LDA	<PLXPS1
;// 03.02.13 //		CLC
;// 03.02.13 //		ADC	#00020H
;// 03.02.13 //		AND	#00180H
;// 03.02.13 //		ASL	A
;// 03.02.13 //		XBA
;// 03.02.13 //		DEC	A
;// 03.02.13 //		ASL	A
;// 03.02.13 //		CPY	#00000H
;// 03.02.13 //		BEQ	STPCZ20		;
;// 03.02.13 //;					;
;// 03.02.13 //		CLC
;// 03.02.13 //		ADC	#0000CH
;// 03.02.13 //STPCZ20		EQU	$
;// 03.02.13 //		TAX
;// 03.02.13 //		LDA	>UPADR0,X
;// 03.02.13 //		SEC
;// 03.02.13 //		SBC	#00006H+00008H
;// 03.02.13 //		TAX
;// 03.02.13 //		LDA	!STPDPT
;// 03.02.13 //		AND	#0000FH
;// 03.02.13 //		BEQ	STPCZ30		; normal ?
;// 03.02.13 //;					; no
;// 03.02.13 //		TXA
;// 03.02.13 //		CLC
;// 03.02.13 //		ADC	#000180H
;// 03.02.13 //		TAX
;// 03.02.13 //		LDA	!STPDPT
;// 03.02.13 //		AND	#0000FH
;// 03.02.13 //		CMP	#00002H
;// 03.02.13 //		BNE	STPCZ30		; BG.1 ?
;// 03.02.13 //;					; yes
;// 03.02.13 //		TXA
;// 03.02.13 //		ORA	#02000H
;// 03.02.13 //		TAX
;// 03.02.13 //STPCZ30		EQU	$
;
;// 03.02.19 //		LDX	#00020H
;// 03.02.19 //		LDA	!STPFLG
;// 03.02.19 //		AND	#00008H
;// 03.02.19 //		BNE	STPCZ10		;
;// 03.02.19 //;					;
;// 03.02.19 //		LDX	#0FFE0H
;// 03.02.19 //STPCZ10		EQU	$
;// 03.02.19 //		STX	<WORK4
;// 03.02.19 //;
;// 03.02.19 //		LDA	<PLYPS1
;// 03.02.19 //		CLC
;// 03.02.19 //		ADC	<WORK4
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
;// 03.02.19 //		BEQ	STPCZ20		; BG.1 ?
;// 03.02.19 //;					; yes
;// 03.02.19 //		TXA
;// 03.02.19 //		CLC
;// 03.02.19 //		ADC	#02180H
;// 03.02.19 //		TAX
;// 03.02.19 //STPCZ20		EQU	$
;
		LDA	!RSNADR
		CLC
		ADC	#00006H+00002H
		AND	#0007FH
		STA	<WORK0
		LDX	#0FFFEH
STPCZ20		EQU	$
		INX
		INX
		LDA	!USCKBF,X
		ASL	A
		AND	#0007FH
		CMP	<WORK0
		BNE	STPCZ20		;
;					;
		LDA	!USCKBF,X
		ASL	A
		SEC
		SBC	#00006H+00002H
		STA	!RSNADR
;
		TAX
		LDY	#00004H
STPCZ40		EQU	$
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
		BPL	STPCZ40		;
;					;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
STPCZ80		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Danjyon fade-in				(DJFDIN)	*
;************************************************************************
DJFITBL		EQU	$
		WORD	DJFI000
		WORD	DJFI200
;
;
DJFDIN		EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JSR	(DJFITBL,X)
PLCHST0		EQU	$
		JSL	>PYCRCN		; player character change
;
 		JSL	>PYOMST		; character set
		RTS
;
;
;
DJFI000		EQU	$
		JSL	>WIPEIT1
		INC	<JRSBPT
		RTS
;
;
DJFI200		EQU	$
		JSL	>ENEMY		; enemy move
;
		JSL	>WIPEMV
;
		LDA	<GAMEMD
		BNE	DJFI240		; wipe end ?
;					; yes
		STZ	<WD2123
		STZ	<WD2124
		STZ	<WD2125
		STZ	<WDMAIN
		STZ	<WDSUB
		STZ	<JRSBPT
;
		LDA	!SNDSFG0
		CMP	#0FFH
		BEQ	DJFI240		; sound set ?
;					; yes
		STA	!SOUND0
;// 03.09.16 //		CMP	#0F0H
;// 03.09.16 //		BCS	DJFI240		;
;// 03.09.16 //;					;
;// 03.09.16 //		STA	!SVSND0		; <sound0>
DJFI240		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Warp-Scroll				(WRPSCRL)	*
;************************************************************************
WRPSCRL		EQU	$
;// 03.07.31 //		LDA	<JRSBPT
;// 03.07.31 //		CMP	#003H
;// 03.07.31 //		BCC	WRPS020		;
;// 03.07.31 //;					;
;// 03.07.31 //		JSL	>RCHRCK		; character code set
;// 03.07.31 //WRPS020		EQU	$
;// 03.07.31 //		LDA	<JRSBPT
;// 03.07.31 //		CMP	#00BH
;// 03.07.31 //		BCC	WRPS040		;
;// 03.07.31 //;					;
;// 03.07.31 //		LDA	>CCNGFG
;// 03.07.31 //		BEQ	WRPS040		;
;// 03.07.31 //;					;
;// 03.07.31 //		JSL	>CGCNG1
;// 03.07.31 //WRPS040		EQU	$
;// 03.07.31 //		LDA	<JRSBPT
;// 03.07.31 //		CMP	#00AH
;// 03.07.31 //		BCC	WRPS080		;
;// 03.07.31 //;					;
;// 03.07.31 //		JSL	>CHRCHNG
;// 03.07.31 //WRPS080		EQU	$
;// 03.07.31 //		JSL	>PYCRCN		; player character change
;// 03.07.31 //;
;// 03.07.31 //		LDA	<JRSBPT
;// 03.07.31 //		JSL	>JSRSUB
;// 03.07.31 //		WORD	SPCH000		;  0 : CG. work set
;// 03.07.31 //		WORD	WPSL000		;  1 : CG. change
;// 03.07.31 //		WORD	WPSL100		;  2 : room making
;// 03.07.31 //		WORD	WPSL200		;  3 : BG. character change-0
;// 03.07.31 //		WORD	WPSL300		;  4 :                     -1
;// 03.07.31 //		WORD	WPSL400		;  5 : BG. write
;// 03.07.31 //		WORD	WPSL500		;  6 : BG. write
;// 03.07.31 //		WORD	WPSL400		;  7 : BG. write
;// 03.07.31 //		WORD	WPSL500		;  8 : BG. write
;// 03.07.31 //		WORD	WPSL600		;  9 : enemy data set & new color set
;// 03.07.31 //		WORD	WPSRLCK		;  A : scroll
;// 03.07.31 //		WORD	SCL240		;  B : BG. write
;// 03.07.31 //		WORD	SCL340		;  C : BG. write
;// 03.07.31 //		WORD	SCL240		;  D : BG. write
;// 03.07.31 //		WORD	SCL340		;  E : BG. write
;// 03.07.31 //		WORD	WPSL700		;  F : character code set
;// 03.07.31 //		WORD	AUTOMV0		; 10 : auto move - 0
;// 03.07.31 //		WORD	AUTOMV2		; 11 :           - 1
;// 03.07.31 //		WORD	SPCH420		; 12 : end
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL000		EQU	$
;// 03.07.31 //		JSL	>CGCNG1		; CG. change
;// 03.07.31 //;
;// 03.07.31 //		LDA	>CCNGCT
;// 03.07.31 //		CMP	#017H
;// 03.07.31 //		BNE	WPSL040		; next ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		INC	<JRSBPT
;// 03.07.31 //WPSL040		EQU	$
;// 03.07.31 //		RTS
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL100		EQU	$
;// 03.07.31 //		JSL	>CGCNG1		; CG. change
;// 03.07.31 //;
;// 03.07.31 //		LDA	<RMXYCT
;// 03.07.31 //		AND	#00001111B
;// 03.07.31 //		ASL	A
;// 03.07.31 //		STA	<WORK0
;// 03.07.31 //		LDA	<PLXPS0
;// 03.07.31 //		AND	#00000001B
;// 03.07.31 //		ORA	<WORK0
;// 03.07.31 //		STA	<PLXPS0
;// 03.07.31 //		LDA	<SCCH21
;// 03.07.31 //		AND	#00000001B
;// 03.07.31 //		ORA	<WORK0
;// 03.07.31 //		STA	<SCCH21
;// 03.07.31 //;
;// 03.07.31 //		JSL	>MKROOM		; make room
;// 03.07.31 //;
;// 03.07.31 //		JSL	>CHRCBS0	; BG.Obj. chage character buffer set
;// 03.07.31 //;
;// 03.07.31 //		JSL	>DJCODST	; read code change
;// 03.07.31 //;
;// 03.07.31 //		JSL	>XYCALC		;
;// 03.07.31 //;
;// 03.07.31 //		INC	<JRSBPT
;// 03.07.31 //		RTS
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL200		EQU	$
;// 03.07.31 //		JSL	>CGCNG1		; CG. change
;// 03.07.31 //;
;// 03.07.31 //		JSR	BGCCHG0		; BG. character change-0
;// 03.07.31 //		RTS
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL300		EQU	$
;// 03.07.31 //		JSL	>CGCNG1		; CG. change
;// 03.07.31 //;
;// 03.07.31 //		JSR	BGCCHG1		; BG, character change-1
;// 03.07.31 //		RTS
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL400		EQU	$
;// 03.07.31 //		JSL	>CGCNG1		; CG. change
;// 03.07.31 //;
;// 03.07.31 //		JSR	SCL240		; BG. write
;// 03.07.31 //		RTS
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL500		EQU	$
;// 03.07.31 //		JSL	>CGCNG1		; CG. change
;// 03.07.31 //;
;// 03.07.31 //		JSR	SCL340		; BG. write
;// 03.07.31 //		RTS
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL600		EQU	$
;// 03.07.31 //		JSL	>CGCNG1		; CG. change
;// 03.07.31 //		DEC	<JRSBPT
;// 03.07.31 //;
;// 03.07.31 //		JSL	>OJCHCNG	; OBJ. character buffer set
;// 03.07.31 //;
;// 03.07.31 //		JSL	>ENDTST		; enemy data set
;// 03.07.31 //;
;// 03.07.31 //		JMP	DARK000		; new CG. set
;// 03.07.31 //;
;// 03.07.31 //;
;// 03.07.31 //WPSL700		EQU	$
;// 03.07.31 //		LDA	!ITEMMD
;// 03.07.31 //		CMP	#RCKED
;// 03.07.31 //		BNE	WPSL740		; character code set end ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		LDA	>CCNGFG
;// 03.07.31 //		BNE	WPSL740		;
;// 03.07.31 //;					;
;// 03.07.31 //		INC	<JRSBPT
;// 03.07.31 //WPSL740		EQU	$
;// 03.07.31 //		RTS
;// 03.07.31 //;
;
;
;
;************************************************************************
;*		Scroll-step 				(SCLSTEP)	*
;************************************************************************
SCLSTEP		EQU	$
		LDA	<JRSBPT
		CMP	#003H
		BCC	SCLST20		;
;					;
		JSL	>RCHRCK		; character code set
SCLST20		EQU	$
;// 03.08.06 //		LDA	<JRSBPT
;// 03.08.06 //		CMP	#00CH
;// 03.08.06 //		BCC	SCLST40		;
;// 03.08.06 //;					;
;// 03.08.06 //		LDA	>CCNGFG
;// 03.08.06 //		BEQ	SCLST40		;
;// 03.08.06 //;					;
;// 03.08.06 //		JSL	>SCGCNG
;// 03.08.06 //;
;// 03.08.06 //		JSL	>DKRMCGST	; fade
;// 03.08.06 //SCLST40		EQU	$
		LDA	<JRSBPT
		CMP	#00DH
		BCC	SCLST60		;
;					;
		JSL	>CHRCHNG
SCLST60		EQU	$
		LDA	!SPMVCT
		BEQ	SCLST200	; move end ?
;					; no
		DEC	!SPMVCT
		CMP	#010H
		BNE	SCLST70		; step move ?
;					; yes
		LDA	#002H
		STA	<PSTPFG
SCLST70		EQU	$
		LDX	#008H
		LDA	<GAMEMD
		CMP	#p1_sls0
		BEQ	SCLST80		; up ?
;					; no
		LDX	#004H
SCLST80		EQU	$
		STX	<PWORK1		; player muki set
;// 03.08.20 //		CPX	#008H
;// 03.08.20 //		BNE	SCLST120	; up move ?
;// 03.08.20 //;					;
;// 03.08.20 //		LDA	!STPFLG
;// 03.08.20 //		AND	#00000100B
;// 03.08.20 //		BEQ	SCLST140	; down ?
;// 03.08.20 //;					; yes
;// 03.08.20 //SCLST100	EQU	$
;// 03.08.20 //		LDA	<JRSBPT
;// 03.08.20 //		CMP	#00BH
;// 03.08.20 //		BCS	SCLST140	;
;// 03.08.20 //;					;
;// 03.08.20 //		JSL	>STRTIN		; scroll-step in
;// 03.08.20 //		BRA	SCLST200
;// 03.08.20 //;
;// 03.08.20 //SCLST120	EQU	$
;// 03.08.20 //		LDA	!STPFLG
;// 03.08.20 //		AND	#00000100B
;// 03.08.20 //		BNE	SCLST140	; up ?
;// 03.08.20 //;					; yes
;// 03.08.20 //		LDA	<JRSBPT
;// 03.08.20 //		CMP	#00BH
;// 03.08.20 //		BCC	SCLST140	;
;// 03.08.20 //;					;
;// 03.08.20 //		JSL	>STRTOT		; scroll-step out
;// 03.08.20 //		BRA	SCLST200
;
SCLST140	EQU	$
		JSL	>PYSPST		; player move
SCLST200	EQU	$
		JSL	>PYCRCN		; player character change
;
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	SLST000		;  0 : CG. work set
		WORD	SLST050		;  1 : CG. change (fade out)
		WORD	SLST100		;  2 : room making
		WORD	SLST200		;  3 : BG. character change-0
		WORD	SLST300		;  4 :                     -1
		WORD	SCL220		;  5 : BG. write
		WORD	SCL320		;  6 : BG. write
		WORD	SCL220		;  7 : BG. write
		WORD	SCL320		;  8 : BG. write
		WORD	SLST700		;  9 : enemy data set & new color set
		WORD	WPSRLCK		;  A : scroll
		WORD	SLST400		;  B : BG. write
		WORD	SCL340		;  C : BG. write
		WORD	SCL240		;  D : BG. write
		WORD	SCL340		;  E : BG. write
		WORD	STPC100		;  F : fade in
		WORD	SLST800		; 10 : character code set
		WORD	SLST900		; 11 : end check
		WORD	SPCH420		; 12 : end
;
;
;
SLST000		EQU	$
		LDA	!DASHFG
		BEQ	SLST010
		STZ	!DASHFG
		LDA	#002H
		STA	<PYSPFG
;
SLST010		EQU	$
		LDX	#016H
		LDA	!STPFLG
		AND	#00000100B
		BEQ	SLST020		; down ?
;					; yes
		LDX	#018H
SLST020		EQU	$
		STX	!SOUND2		; <sound2>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<RMXYCT
		CMP	#00030H
		BEQ	SLST030		; sahisai-room ?
;					; no
		CMP	#00040H
		BNE	SLST040		; sahisai-room ?
;					; yes
SLST030		EQU	$
		LDX	#0F1H
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0
SLST040		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JMP	SPCH000
;
;
SLST050		EQU	$
		LDA	!SPMVCT
		CMP	#009H
		BCS	SLST090		; fade out ok ?
;					; yes
		JSL	>CGCNG1		; CG. change
;
		LDA	>CCNGCT
		CMP	#017H
		BNE	SLST090		; next ?
;					; yes
		INC	<JRSBPT
SLST090		EQU	$
		RTS
;
;
SLST100		EQU	$
		JSL	>CGCNG1		; CG. change
;
		JSL	>MKROOM		; make room
;
		JSL	>SWYKCNG	; swich-yuka reset
;
		JSL	>CHRCBS0	; BG.Obj. chage character buffer set
;
		JSL	>DJCODST	; read code change
;
		JSL	>XYCALC		;
;
		JSL	>RAOPIT		; option init.
;
		INC	<JRSBPT
		RTS
;
;
SLST200		EQU	$
		JSL	>CGCNG1		; CG. change
;
		JSR	BGCCHG0		; BG. character change-0
		RTS
;
;
SLST300		EQU	$
		JSL	>CGCNG1		; CG. change
;
		JSR	BGCCHG1		; BG, character change-1
;
		LDA	<RMXYCT
		STA	!ERXYCT
		JSL	>ENDTST		; enemy data set
		RTS
;
;
SLST400		EQU	$
		LDY	#00010110B
		LDX	!GSUBFG
		LDA	>SUBSTD,X
		BPL	SLST410		;
;					;
		LDY	#00010111B
		LDA	#00000000B
SLST410		EQU	$
		STY	<DPMAIN
		STA	<DPSUB
;
		LDY	#017H
		INC	<FLORNO
		LDA	#001H
		STA	<PSTPFG
		LDX	#03CH
		LDA	!STPFLG
		AND	#00000100B
		BEQ	SLST420		; up ?
;					; no
		LDY	#019H
		DEC	<FLORNO
		DEC	<FLORNO
		LDX	#032H
SLST420		EQU	$
		STX	SPMVCT
		STY	!SOUND2		; <sound2>
;
		STZ	<WORK0
		LDY	<GAMEMD
		LDA	<PLBGCKF
		BEQ	SLST430		;
;					;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00020H
		CPY	#p1_sls0
		BNE	SLST425		;
;					;
		LDA	#0FFE0H
SLST425		EQU	$
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		INC	<WORK0
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
SLST430		EQU	$
		LDX	!STPDPT
		LDA	>CDBGCD,X
		STA	!CDBGCKF
		LDA	>PLBGCD,X
		STA	<PLBGCKF
		BEQ	SLST460		;
;					;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00020H
		CPY	#p1_sls0
		BNE	SLST440		;
;					;
		LDA	#0FFE0H
SLST440		EQU	$
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		INC	<WORK0
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
SLST460		EQU	$
		LDA	<WORK0
		BNE	SLST480		; BG.2 --> BG.2 ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#0000CH
		CPY	#p1_sls0
		BNE	SLST470		;
;					;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#0FFE8H
		LDA	!STPFLG
		AND	#00000100B
		BNE	SLST465		; up ?
;					; no
		LDX	#0FFF8H
SLST465		EQU	$
		TXA
SLST470		EQU	$
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
SLST480		EQU	$
		JSR	FLNODP		; floor no. display flag on
;
		JSL	>LMPCHCK	; lamp on/off check
;
		JMP	SCL240		; BG. write
;
;
;// 03.08.06 //;/
;// 03.08.06 //SLST500		EQU	$
;// 03.08.06 //		JSL	>CGCNG1		; CG. change
;// 03.08.06 //;
;// 03.08.06 //		JMP	SCL240		; BG. write
;// 03.08.06 //;
;// 03.08.06 //;
;// 03.08.06 //SLST600		EQU	$
;// 03.08.06 //		JSL	>CGCNG1		; CG. change
;// 03.08.06 //;
;// 03.08.06 //		JMP	SCL340		; BG. write
;// 03.08.06 //;
;
;
SLST700		EQU	$
		JSL	>CGCNG1		; CG. change
		DEC	<JRSBPT
;
		JSL	>OJCHCNG	; OBJ. character buffer set
;
		JMP	DARK000		; new CG. set
;
;
SLST800		EQU	$
		LDA	!ITEMMD
		CMP	#RCKED
		BNE	SLST840		; character code set end ?
;					; yes
		LDA	>CCNGFG
		BNE	SLST840		;
;					;
		INC	<JRSBPT
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#01CH
		LDA	<RMXYCT
		CMP	#00030H
		BEQ	SLST820		; sahisai-room ?
;					; no
		CMP	#00040H
		BNE	SLST830		; sahisai-room ?
;					; yes
		LDX	#010H
SLST820		EQU	$
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0
SLST830		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
SLST840		EQU	$
		JSL	>DKRMCGST	; fade
		RTS
;
;
SLST900		EQU	$
		LDA	!SPMVCT
		BNE	SLST840		; move end ?
;					; yes
		INC	<JRSBPT
		RTS
;
;
;
;************************************************************************
;*		Hole  down reset			(HLDRST)	*
;************************************************************************
HLDRST		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	HLDR000		; 0 : scroll
		WORD	HLDR200		; 1 : reset
;
;
HLDR000		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCCH2
		CMP	>HLSCH2
		BEQ	HLDR040		; H-move ?
;					; yes
		BCC	HLDR020		;
;					;
		DEC	A
		CMP	>HLSCH2
		BEQ	HLDR040		; = ?
;					; no
		DEC	A
		BRA	HLDR040
;
HLDR020		EQU	$
		INC	A
		CMP	>HLSCH2
		BEQ	HLDR040		; = ?
;					; no
		INC	A
HLDR040		EQU	$
		STA	<SCCH2
;
		LDA	<SCCV2
		CMP	>HLSCV2
		BEQ	HLDR080		; V-move ?
;					; yes
		BCC	HLDR060		;
;					;
		DEC	A
		CMP	>HLSCV2
		BEQ	HLDR080		; = ?
;					; no
		DEC	A
		BRA	HLDR080
;
HLDR060		EQU	$
		INC	A
		CMP	>HLSCV2
		BEQ	HLDR080		; = ?
;					; no
		INC	A
HLDR080		EQU	$
		STA	<SCCV2
		CMP	>HLSCV2
		BNE	HLDR090		; V = ?
;					; yes
		LDA	<SCCH2
		CMP	>HLSCH2
		BNE	HLDR090		; H = ?
;					; yes
		INC	<JRSBPT
HLDR090		EQU	$
		LDA	!LGTWFG
		BNE	HLDR099		; light-wipe on ?
;					; no
		JSR	GSCK420		; SCCH,V reset
		MEM8
;// 03.09.30 //		LDA	<SCCH2
;// 03.09.30 //		STA	<SCCH1
;// 03.09.30 //		LDA	<SCCV2
;// 03.09.30 //		STA	<SCCV1
HLDR099		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
HLDR200		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>HLYPS1
		STA	<PLYPS1
		LDA	>HLXPS1
		STA	<PLXPS1
		LDA	>HLSCVU
		STA	!SCVU
		LDA	>HLSCVD
		STA	!SCVD
		LDA	>HLSCHL
		STA	!SCHL
		LDA	>HLSCHR
		STA	!SCHR
		LDA	>HLSY00
		STA	!SCKY00
		LDA	>HLSY10
		STA	!SCKY10
		LDA	>HLSX00
		STA	!SCKX00
		LDA	>HLSX10
		STA	!SCKX10
;
		LDA	<GMMODE		;<<< 04.01.22 >>>
		AND	#000FFH		;<<< 04.01.22 >>>
		BEQ	HLDR220		;<<< 04.01.22 >>> ; ground ?
;					;<<< 04.01.22 >>> ; no
		LDA	>HLUPCT
		STA	!PYUPCT
;// 03.05.08 //		CLC
;// 03.05.08 //		ADC	#00010H
		INC	A
		INC	A
		STA	!PYDWCT
		LDA	>HLLFCT
		STA	!PXLFCT
;// 03.05.08 //		CLC
;// 03.05.08 //		ADC	#00010H
		INC	A
		INC	A
		STA	!PXRTCT
HLDR220		EQU	$		;<<< 04.01.22 >>>
		LDA	>HLCKXF
		STA	<RMCKXF
		LDA	>HLXCPT
		STA	<RMXCPT
;// 03.05.15 //		LDA	>HLUSLC
;// 03.05.15 //		STA	!UPSLCT
;// 03.05.15 //		LDA	#00000H
;// 03.05.15 //		SEC
;// 03.05.15 //		SBC	!UPSLCT
;// 03.05.15 //		STA	!DWSLCT
;// 03.05.15 //		LDA	>HLLSLC
;// 03.05.15 //		STA	!LFSLCT
;// 03.05.15 //		LDA	#00000H
;// 03.05.15 //		SEC
;// 03.05.15 //		SBC	!LFSLCT
;// 03.05.15 //		STA	!RTSLCT
;// 03.05.15 //		LDA	>HLSRPT
;// 03.05.15 //		STA	<SCRPNT
;// 03.05.15 //		SEC
;// 03.05.15 //		SBC	#00400H
;// 03.05.15 //		AND	#00F80H
;// 03.05.15 //		ASL	A
;// 03.05.15 //		XBA
;// 03.05.15 //		STA	<YWRITE
;// 03.05.15 //		LDA	<SCRPNT
;// 03.05.15 //		SEC
;// 03.05.15 //		SBC	#00010H
;// 03.05.15 //		AND	#0003EH
;// 03.05.15 //		LSR	A
;// 03.05.15 //		STA	<XWRITE
;
		LDA	<GMMODE
		AND	#000FFH
		BNE	HLDR240		; ground ?
;					; yes
		LDA	!PYUPCT
		DEC	A
		DEC	A
		STA	!PYDWCT
		LDA	!PXLFCT
		DEC	A
		DEC	A
		STA	!PXRTCT
HLDR240		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>HLMKCH
		STA	<PLMKCH
		LDA	>HLPLBG
		STA	<PLBGCKF
		LDA	>HLCDBG
		STA	!CDBGCKF
		LDA	>HLPWK6
		STA	<PWORK6
		LDA	>HLFLNO
		STA	<FLORNO
		STZ	<OMSBMD
;
		LDA	#DAMG3
		STA	!PYFLASH
		JSR	FLNODP
		STZ	!MRTKFG
;
		JSL	>SWSPCL2	; swimming clear
;
		STZ	!OPNOSI
		JSL	>RAOPIT		; option init.
;
		STZ	!SWCHFG		; swich flag off
		STZ	!ITEMMD
		STZ	<JRSBPT
		STZ	!SCRLFG
		STZ	<GAMEMD
;
		LDA	>LFNWCT
		BNE	HLDR280		; player out ?
;					; yes
		LDA	#000H
		STA	>LFNWCT
		LDA	<DPMAIN
		STA	>BKDPMN
		LDA	<DPSUB
		STA	>BKDPMN+1
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_gover
		STA	<SLMODE
		LDA	#001H
		STA	<GAMEMD
		STZ	!PYFLASH
HLDR280		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Danjyon warp				(DJWARP)	*
;************************************************************************
DJWARP		EQU	$
		LDA	<JRSBPT
		CMP	#003H
		BCC	DJWARP40	; character code set ok ?
;					; yes
		JSL	>CHRCHNG	; OBJ. character change
;
		JSL	>RCHRCK		; character code set
DJWARP40	EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	SPCH000		; 0 : CG. work set
		WORD	DJWRP050	; 1 : mozaiku-fade out
		WORD	SPCH100		; 2 : room making
		WORD	SPCH200		; 3 : enemy data set & new color set
		WORD	DJWRP100	; 4 : BG.1 write
		WORD	SCL340		; 5 : BG2. write
		WORD	SCL240		; 6 : BG1. write
		WORD	SCL340		; 7 : BG2. write
		WORD	SCL240		; 8 : BG1. write
		WORD	SCL340		; 9 : BG2. write
		WORD	SCL240		; A : BG1. write
		WORD	SCL340		; B : BG2. write
		WORD	SCL520		; C : player init.
;// 03.07.16 //		WORD	DJWRP200	; D : character change
		WORD	DJWRP400	; E : mozaiku-fade in
		WORD	DJWRP800	; F : end
;
;
;
;
DJWRP050	EQU	$
		JSR	MZKSET		; mozaiku set
;;;;;;;;		LDA	>CCNGCT
;;;;;;;;		LSR	A
;;;;;;;;		BCC	DJWRP070	;
;;;;;;;;;					;
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		CLC
;;;;;;;;		ADC	#00010000B
;;;;;;;;		STA	>MZKCNT
;;;;;;;;DJWRP070	EQU	$
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
		LDA	>MZKCNT
		ORA	#00000011B
		STA	<MD2106		; BG.1,2 mozaiku set
;
		JMP	DKCGCG1		; fade out
;
;
DJWRP100	EQU	$
;// 03.07.16 //		LDA	<RMXYCT
;// 03.07.16 //		BNE	DJWRP120	; polygon room ?
;// 03.07.16 //;					; yes
;// 03.07.16 //		LDA	#10000000B
;// 03.07.16 //		STA	<BLKFLG		; blanking on
;// 03.07.16 //		LDA	#013H
;// 03.07.16 //		STA	!CHIKNO		; BG.CHAR (polygon)
;// 03.07.16 //DJWRP120	EQU	$
		JSL	>DKRMCGST	; fade
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<RMXYCT
		CMP	#00017H
		BNE	DJWRP120	; yama-tower ?
;					; yes
		LDX	#004H
		STX	<FLORNO
DJWRP120	EQU	$
		JSR	GSCK420		; SCCH,V reset
		MEM8
;// 03.09.30 //		LDA	<SCCH2
;// 03.09.30 //		STA	<SCCH1
;// 03.09.30 //		LDA	<SCCV2
;// 03.09.30 //		STA	<SCCV1
;// 03.09.30 //;
;// 03.09.30 //		MEM8
;// 03.09.30 //		SEP	#00100000B	; memory 8bit mode
;
		JSL	>XYCALC		; X,Y-move
;
		LDY	#00010110B
		LDX	!GSUBFG
		LDA	>SUBSTD,X
		BPL	DJWRP130	; BG.1 main-gamen ?
;					; yes
		LDY	#00010111B
		LDA	#00000000B
DJWRP130	EQU	$
		STY	<DPMAIN
		STA	<DPSUB
;
		JSL	>WBUFS1		; BG1. write buffer set
		INC	<JRSBPT
		RTS
;
;// 03.07.16 //;
;// 03.07.16 //DJWRP200	EQU	$
;// 03.07.16 //		LDA	<RMXYCT
;// 03.07.16 //		BNE	DJWRP220	; polygon room ?
;// 03.07.16 //;					; yes
;// 03.07.16 //		JSL	>CHSCHNG	; character change
;// 03.07.16 //		LDA	#00001111B
;// 03.07.16 //		STA	BLKFLG		; blanking on
;// 03.07.16 //DJWRP220	EQU	$
;// 03.07.16 //		INC	<JRSBPT
;// 03.07.16 //		RTS
;// 03.07.16 //;
;
DJWRP400	EQU	$
		LDA	>CCNGCT
		LSR	A
		BCC	DJWRP420	; mozaiku change ok ?
;					; yes
		LDA	>MZKCNT
		BEQ	DJWRP420	; mozaiku end ?
;					; no
		SEC
		SBC	#00010000B
		STA	>MZKCNT
DJWRP420	EQU	$
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
		LDA	>MZKCNT
		ORA	#00000011B
		STA	<MD2106		; BG.1,2 mozaiku set
;
		JMP	DKCGCG1		; fade out
;
;
DJWRP800	EQU	$
		LDA	!ITEMMD
		CMP	#RCKED
		BNE	DJWRP840	; character code set end ?
;					; yes
		JSL	>MPBTSET	; map on/off bit set
		STZ	<GAMEMD
		JSR	SPCH420		;
DJWRP840	EQU	$
TMYKC80		EQU	$
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Tama-yuka change			(TMYKCNG)	*
;************************************************************************
TMYKTBL		EQU	$
		WORD	TYCN000		; char. change-1
		WORD	TYCN000		; char. change-1
		WORD	TYCN200		; char. change-2
		WORD	TYCN400		; char. change-3
		WORD	TYCN600		; char. change-3
;
;
TMYKCNG		EQU	$
		INC	<JRSBPT
		LDA	<JRSBPT
		AND	#003H
		BNE	TMYKC80		; character change ?
;					; yes
		LDA	<JRSBPT
		LSR	A
		TAX
		JMP	(TMYKTBL,X)
;
;
TYCN000		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00020H*8
		LDY	#00020H*4
		LDA	>TAMAFLG
		BEQ	TYCN020		;
;					;
		TYX
		LDY	#00020H*8
TYCN020		EQU	$
		BRA	TYCN800
;
;
TYCN200		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00020H*4
		LDY	#00020H*8
		LDA	>TAMAFLG
		BEQ	TYCN220		;
;					;
		TYX
		LDY	#00020H*4
TYCN220		EQU	$
		BRA	TYCN800
;
;
TYCN400		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00020H*0
		LDY	#00020H*12
		LDA	>TAMAFLG
		BEQ	TYCN420		;
;					;
		TYX
		LDY	#00020H*0
TYCN420		EQU	$
TYCN800		EQU	$
		STY	<WORKE
;
		PHB
		LDA	#BANK RSETCBF
		PHA
		PLB			; (DBR) set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDY	#00000H
TYCN840		EQU	$
		LDA	>TYCHBF,X
		STA	RSETCBF,Y
		INX
		INX
		INY
		INY
		CPY	#00020H*4
		BNE	TYCN840		;
;					;
		LDX	<WORKE
TYCN880		EQU	$
		LDA	>TYCHBF,X
		STA	RSETCBF,Y
		INX
		INX
		INY
		INY
		CPY	#00020H*8
		BNE	TYCN880		;
;					;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB			; (DBR) pull
;
		LDA	#bgw17
		STA	<BGWTFG
		RTS
;
;
TYCN600		EQU	$
		JSL	>TYCDCNG	; code change
		STZ	<JRSBPT
		STZ	<GAMEMD
		RTS
;
;
TYCNCST		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00020H*0
		LDY	#00020H*12
		LDA	>TAMAFLG
		BEQ	TYCC040		;
;					;
		TYX
		LDY	#00020H*0
TYCC040		EQU	$
		JSR	TYCN800
		RTL
;
;
;
;
;
;************************************************************************
;*		Yuka-swich on				(YSWCHON)	*
;************************************************************************
YSWCHON		EQU	$
		DEC	<JRSBPT
		BNE	YSWCO80		; timer end ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLYPS1
		SEC
		SBC	#00002H
		STA	<PLYPS1
;
		LDA	!TRAPPT
		LSR	A
		LSR	A
		LSR	A
		AND	#001F8H
		STA	<WORK2
		LDA	!TRAPPT
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
		LDY	#00EH
		JSL	>TGBLKWT
;
		LDA	!NXSLMD
		STA	<GAMEMD
YSWCO80		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Poly-gon demo				(PLGNDEMO)	*
;************************************************************************
PLGNADR		EQU	$		; poly-gon address
		WORD	01618H,01658H,01658H,01618H,00658H,01618H,01658H
PLGNEND		EQU	$
;
BGWRTPD		EQU	$
		WORD	00000H
;
;
PLGNDEMO	EQU	$
		LDA	<JRSBPT
		JSR	>JSRSUB
		WORD	PGNDM000	; fade out
		WORD	PGNDM100	; polygon BG. set
		WORD	SCL240		; BG1. write
		WORD	SCL340		; BG2. write
		WORD	SCL240		; BG1. write
		WORD	SCL340		; BG2. write
		WORD	SCL240		; BG1. write
		WORD	SCL340		; BG2. write
		WORD	SCL240		; BG1. write
		WORD	SCL340		; BG2. write
		WORD	PGNDM200	; end
;
;
PGNDM000	EQU	$
		JSL	>GOVRCCNG	; fade out
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
		LDA	>CGWORK+041H
		STA	>CGWORK+001H
;
		LDA	>CCNGFG
		CMP	#0FFH
		BNE	PGNDM080	; fade out end ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
		LDA	#nulldt
PGNDM020	EQU	$
		STA	>ROOMBF+0000H,X
		STA	>ROOMBF+0800H,X
		STA	>ROOMBF+1000H,X
		STA	>ROOMBF+1800H,X
		STA	>BG1RBF+0000H,X
		STA	>BG1RBF+0800H,X
		STA	>BG1RBF+1000H,X
		STA	>BG1RBF+1800H,X
		INX
		INX
		CPX	#00800H
		BNE	PGNDM020	;
;					;
		STZ	!YUREYD
		STZ	!YUREXD
		STZ	!BGMVC0
		STZ	!BGMVC1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	!SCRLFG
		STZ	!WBFPNT
;
		INC	<JRSBPT
PGNDM080	EQU	$
		RTS
;
;
PGNDM100	EQU	$
		JSL	>MGMCGRS2	; CG. reset
		LDA	#00000001B
		STA	<DPSUB
		LDA	#002H
		STA	!PYALSP		; player stop
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#PLGNEND-PLGNADR
		LDA	<RMXYCT
PGNDM140	EQU	$
		DEX
		DEX
		CMP	>UBOSSDT,X
		BNE	PGNDM140	; check ok ?
;					; yes
		LDA	>PLGNADR,X
		STA	<WORK8
;
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDA	#00004H
		STA	<WORKC
		STZ	<WORKE
PGNDM160	EQU	$
		LDY	#00007H
		LDX	<WORK8
PGNDM180	EQU	$
		LDA	<WORKE
		ORA	#01F80H
		STA	>BG1RBF+000H,X
		ORA	#01F88H
		STA	>BG1RBF+200H,X
		INC	<WORKE
		INX
		INX
		DEY
		BPL	PGNDM180	;
;					;
		LDA	<WORKE
		CLC
		ADC	#00008H
		STA	<WORKE
		LDA	<WORK8
		CLC
		ADC	#00080H
		STA	<WORK8
		DEC	<WORKC
		BNE	PGNDM160	; end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<JRSBPT
		RTS
;
;
PGNDM200	EQU	$
		INC	!POLYCFG
		JSL	>INITIAL_POLYGON
		JSL	>POLIWCG
;
		STZ	<GAMEMD
		STZ	<JRSBPT
		RTS
;
;
;
;
;************************************************************************
;*		Ura-danjyon return			(DJRETRN)	*
;************************************************************************
DJRETRN		EQU	$
		JSR	MZKSET0		; mozaiku set
;
		DEC	<BLKFLG
		BNE	DJRTRN80	;
;					;
		LDA	#MD_djit0
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<VRFLG
		LDA	!SVSND0
		STA	!SVCKF0		; sound reset
;
		LDA	!PCGCKF
		BEQ	DJRTRN80	; player CG. reset ?
;					; yes
		JSL	>PWTRCGS3
DJRTRN80	EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Ganon-door open				(GNNDROP)	*
;************************************************************************
GNNDROP		EQU	$
		JSL	>GNNOPEN	; ganon-door open
		RTS
;
;
;
;
;
;
;************************************************************************
;************************************************************************
;*		Mozaiku  Fade-out			(MZFDOUT)	*
;************************************************************************
MZFDOUT		EQU	$
		JSR	MZKSET		; mozaiku set
;;;;;;;;		LDA	>CCNGCT
;;;;;;;;		LSR	A
;;;;;;;;		BCC	MZFOT20		;
;;;;;;;;;					;
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		CLC
;;;;;;;;		ADC	#00010000B
;;;;;;;;		STA	>MZKCNT
;;;;;;;;MZFOT20		EQU	$
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		ORA	#00000111B
;;;;;;;;		STA	<MD2106		; mozaiku set
;
		JSR	MZFOT40
		RTL
;
MZFOT40		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	SPCH000		; 0 : CG. work set
		WORD	DKCGCG1		; 1 : CG. change (fade out)
		WORD	MZFD200		; 2 : end
;
;
;
MZFD200		EQU	$
		LDA	!NXSLMD
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
		RTS
;
;
;
;************************************************************************
;*		Mozaiku  Fade-in			(MZFDIN)	*
;************************************************************************
MZFDIN		EQU	$
		LDA	>CCNGCT
		LSR	A
		BCC	MZFIN20		;
;					;
		LDA	>MZKCNT
		SEC
		SBC	#00010000B
		STA	>MZKCNT
MZFIN20		EQU	$
		JSR	MZKSET1		; mozaiku set
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		ORA	#00000111B
;;;;;;;;		STA	<MD2106		; mozaiku set
;
		JSR	MZFIN40
		RTL
;
;
MZFIN40		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	DKCGCG1		; 0 : CG. change (fade in)
		WORD	MZFD300		; 1 : end
;
;
;
MZFD300		EQU	$
		STZ	<GAMEMD
		STZ	<JRSBPT
		LDA	!NXSLMD
		STA	<SLMODE
		CMP	#MD_gdply
		BNE	MZFD340		; ground ?
;					; yes
		LDA	!GDRBF0
		ORA	!GDRBF1
		BEQ	MZFD340		; door exit ?
;					; yes
		LDA	#p2_dext
		STA	<GAMEMD
		LDA	#010H
		STA	!GATMCT
;// 02.08.27 //		STA	!SCRLFG
MZFD340		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Wipe  Fade-out				(WPFDOUT)	*
;************************************************************************
PMKDAT		EQU	$
		HEX	08,04,02,01
;
;
WPFDOTBL	EQU	$
		WORD	WPFD000		; init
		WORD	WPFD300		; play
;
;
WPFDOUT		EQU	$
		JSL	>ENEMY		; enemy move
;
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(WPFDOTBL,X)
;
		LDA	<GMMODE
		BNE	WPFOT20		; ground ?
;					; yes
		LDA	<MPDTNO
		CMP	#00FH
		BNE	WPFOT10		; taki-danjyon ?
;					; yes
		LDA	#001H
		STA	!ASWFLG
WPFOT10		EQU	$
		LDA	#006H
		STA	<PYSPFG
		JSL	>PYSPST		; player speed set
		STZ	<PLXMVC
		STZ	<PLYMVC
WPFOT20		EQU	$
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	<GMMODE
		BNE	WPFOT40		; goto danjyon ?
;					; yes
		LDX	#000H
		LDA	!GOPOSF
		CMP	#043H
		BNE	WPFOT40		;
;					;
		INX
WPFOT40		EQU	$
		LDA	>PMKDAT,X
		STA	<PLMUKI
		STA	<PWORK1
;
		JSL	>PYCRCN		; player character change
;
 		JMP	>PYOMST		; character set
;
;
;
;
WPFD000		EQU	$
;// 03.05.15 //		LDA	#020H
;// 03.05.15 //		STA	<WD2132R
;// 03.05.15 //		LDA	#040H
;// 03.05.15 //		STA	<WD2132G
;// 03.05.15 //		LDA	#080H
;// 03.05.15 //		STA	<WD2132B
;
		STZ	!POLYCFG
		STZ	!transfer_flag
;
		LDA	<GMMODE
		BNE	WPFD010		; ground ?
;					; yes
		JSL	>HEDCHEG	; head check
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		STA	>PLYPBK
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
WPFD010		EQU	$
		LDX	!GOPOSF
		LDA	>DJSNDD,X
		CMP	#003H
		BNE	WPFD020		; shiro-nukemichi ?
;					; no
		LDA	>MODTBL0
		CMP	#002H
		BCC	WPFD090		; zenhan ?
;					; no
WPFD020		EQU	$
		CMP	#0F2H
		BNE	WPFD030		;
;					;
		LDX	!SVSND0
		CPX	#00CH
		BNE	WPFD040		; mura sound reset ?
;					; yes
		LDA	#007H
		BRA	WPFD040
;
WPFD030		EQU	$
		LDA	#0F1H
WPFD040		EQU	$
;// 03.09.16 //		CMP	#0F0H
;// 03.09.16 //		BCS	WPFD080		;
;// 03.09.16 //;					;
;// 03.09.16 //		STA	!SVSND0
WPFD080		EQU	$
		STA	!SOUND0		; <sound0>
WPFD090		EQU	$
		STZ	!FLNODFG
		JSL	>FLNODSP	; floor no. off
		INC	<B3CHFG
;
		JSL	>WIPEIT0
		INC	<GAMEMD
WPFD280		EQU	$
		RTS
;
;
;
WPFD300		EQU	$
;// 03.09.13 //		LDA	2140H
;// 03.09.13 //		CMP	#007H
;// 03.09.13 //		BNE	WPFD200		;
;// 03.09.13 //;					;
;// 03.09.13 //		LDA	#0F2H
;// 03.09.13 //		STA	!SOUND0
WPFD200		EQU	$
		JSL	>WIPEMV
;
		STZ	!POLYCFG
		STZ	!transfer_flag
;
		LDA	<GAMEMD
		BNE	WPFD280		; wipe end ?
;					; yes
		LDA	<SLMODE
		CMP	#MD_djint
		BNE	WPFD201		; goto danjyon ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>PLYPBK
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
WPFD201		EQU	$
		LDA	<SLMODE
		CMP	#MD_gdply
		BEQ	WPFD205		; wipe fade-out ?
;					; yes
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
;// 03.07.05 //		JSL	>VRAMCL		; vram clear
;// 03.07.05 //;
;// 03.07.05 //		JSR	BGMDST		; BG mode set
;
		JSL	>PYDMCLR	; player demo claer
WPFD205		EQU	$
		LDA	<SLMODE
		CMP	#MD_gdply
		BNE	WPFD240		; ground ?
;					; yes
;// 03.06.10 //		IDX16
;// 03.06.10 //		REP	#00010000B	; index 16bit mode
;// 03.06.10 //;
;// 03.06.10 //		LDX	#04F33H
;// 03.06.10 //		LDY	#0894FH
;// 03.06.10 //		LDA	<MPDTNO
;// 03.06.10 //		CMP	#05BH
;// 03.06.10 //		BEQ	WPFD205		; piramido ?
;// 03.06.10 //;					; no
;// 03.06.10 //		LDX	#05429H
;// 03.06.10 //		LDY	#09154H
;// 03.06.10 //		AND	#10111111B
;// 03.06.10 //		CMP	#003H
;// 03.06.10 //		BEQ	WPFD205		; yama ?
;// 03.06.10 //;					; no
;// 03.06.10 //		CMP	#005H
;// 03.06.10 //		BEQ	WPFD205		; yama ?
;// 03.06.10 //;					; no
;// 03.06.10 //		CMP	#007H
;// 03.06.10 //		BNE	WPFD207		; yama ?
;// 03.06.10 //;					; yes
;// 03.06.10 //WPFD205		EQU	$
;// 03.06.10 //		STX	<WD2132R
;// 03.06.10 //		STY	<WD2132G
;// 03.06.10 //WPFD207		EQU	$
;// 03.06.10 //		IDX8
;// 03.06.10 //		SEP	#00010000B	; index 8bit mode
;
		LDA	<RMXYCT+1
		BNE	WPFD207		; check ?
;					; yes
		LDA	<RMXYCT
		CMP	#020H
		BEQ	WPFD215		; piramido start ?
;					; no
WPFD207		EQU	$
		LDA	#p2_dext
		LDX	<PLMKCH
		BNE	WPFD210		;
;					;
		LDA	#p2_dex1
WPFD210		EQU	$
		STA	<GAMEMD
WPFD215		EQU	$
		LDA	#010H
		STA	!GATMCT
;// 02.08.27 //		STA	!SCRLFG
;
		LDA	!GDRBF0
		ORA	!GDRBF1
		BEQ	WPFD240		; door exit ?
;					; yes
;// 02.08.17 //		LDA	!GDATFG
;// 02.08.17 //		BEQ	WPFD240		; door exit ?
;// 02.08.17 //;					; yes
;// 02.08.17 //		STZ	!GDATFG
;
		LDA	!GDRBF1+1
		BEQ	WPFD240		; big-door ?
;					; yes
		LDX	#ut4p00
		ASL	A
		BCC	WPFD220		; shiro-door ?
;					; yes
		LDX	#ut4p01
WPFD220		EQU	$
		LDA	!GDRBF1+1
		AND	#01111111B
		STA	!GDRBF1+1
		STX	!DOPCNO
		STZ	!DOPNCT
;// 02.08.27 //		LDA	#001H
;// 02.08.27 //		STA	!SCRLFG
		LDA	#p2_doet
		STA	<GAMEMD
		STZ	<JRSBPT
;
		LDA	#015H
		STA	!SOUND3		; <sound3>
WPFD240		EQU	$
		STZ	<WD2123
		STZ	<WD2124
		STZ	<WD2125
		STZ	<WDMAIN
		STZ	<WDSUB
;
		STZ	!KNPASFG
;// 03.07.31 //GD2132SET	EQU	$
;// 03.07.31 //		MEM16
;// 03.07.31 //		IDX16
;// 03.07.31 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.31 //;
;// 03.07.31 //		LDX	#04C26H
;// 03.07.31 //		LDY	#08C4CH
;// 03.07.31 //		LDA	<MPDTNO
;// 03.07.31 //		CMP	#00003H
;// 03.07.31 //		BEQ	WPFD250		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00005H
;// 03.07.31 //		BEQ	WPFD250		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00007H
;// 03.07.31 //		BEQ	WPFD250		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		LDX	#04A26H
;// 03.07.31 //		LDY	#0874AH
;// 03.07.31 //		CMP	#00043H
;// 03.07.31 //		BEQ	WPFD250		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00045H
;// 03.07.31 //		BEQ	WPFD250		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00047H
;// 03.07.31 //		BEQ	WPFD250		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#0005BH
;// 03.07.31 //		BNE	WPFD260		; piramido ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		LDX	#04F33H
;// 03.07.31 //		LDY	#0894FH
;// 03.07.31 //WPFD250		EQU	$
;// 03.07.31 //		STX	<WD2132R
;// 03.07.31 //		STY	<WD2132G
;// 03.07.31 //;
;// 03.07.31 //		LDA	#00000H
;// 03.07.31 //		STA	>CGWORK+000H
;// 03.07.31 //		STA	>CGRAM+000H
;// 03.07.31 //WPFD260		EQU	$
;// 03.07.31 //		MEM8
;// 03.07.31 //		IDX8
;// 03.07.31 //		SEP	#00110000B	; memory,index 8bit mode
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.08.26 //		LDX	#04F2DH
;// 03.08.26 //		LDY	#0804FH
;// 03.08.26 //		LDA	<MPDTNO
;// 03.08.26 //		CMP	#0005BH
;// 03.08.26 //		BEQ	WPFD250		; piramido ?
;// 03.08.26 //;					; no
		LDX	#04C26H
		LDY	#08C4CH
		LDA	<MPDTNO
		CMP	#00003H
		BEQ	WPFD250		; yama ?
;					; no
		CMP	#00005H
		BEQ	WPFD250		; yama ?
;					; no
		CMP	#00007H
		BEQ	WPFD250		; yama ?
;					; no
		LDX	#04A26H
		LDY	#0874AH
		CMP	#00043H
		BEQ	WPFD250		; yama ?
;					; no
		CMP	#00045H
		BEQ	WPFD250		; yama ?
;					; no
		CMP	#00047H
		BNE	WPFD260		; yama ?
;					; no
WPFD250		EQU	$
		STX	<WD2132R
		STY	<WD2132G
WPFD260		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;************************************************************************
;*		Wipe  Fade-in				(WPFDIN)	*
;************************************************************************
WPFDITBL	EQU	$
		WORD	WPFD100		; init
		WORD	WPFD300		; play
;
;
;
WPFDIN		EQU	$
		JSL	>ENEMY		; enemy
;
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(WPFDITBL,X)
;
		JMP	>PYOMST		; player character set
;
;
;
WPFD100		EQU	$
		JSL	>WIPEIT1
		INC	<GAMEMD
		RTS
;
;
;
;
;
;
;************************************************************************
;*		Ground Hole down			(GHLFADE)	*
;************************************************************************
GHLFDTBL	EQU	$
		WORD	GHLF000		; 0 : CG. work set
		WORD	DKCGCG0		; 1 : CG. change (fade out)
		WORD	GHLF100		; 2 : room making
		WORD	SPCH200		; 3 : enemy data set & color set
		WORD	GHLF200		; 4 : fade in & player fade in
		WORD	GHLF240		; 5 : player fade in
;
;
GHLFADE		EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JSR	(GHLFDTBL,X)
		RTL
;
;
;
GHLF000		EQU	$
		LDX	!GOPOSF
		LDA	>DJSNDD,X
		CMP	#003H
		BNE	GHLF020		; shiro-nukemichi ?
;					; no
		LDA	>MODTBL0
		CMP	#002H
		BCC	GHLF090		; zenhan ?
;					; no
GHLF020		EQU	$
;;;;;;;;		CMP	#0F2H
;;;;;;;;		BEQ	GHLF040		;
;					;
		LDA	#0F1H
GHLF040		EQU	$
;// 03.09.16 //		CMP	#0F0H
;// 03.09.16 //		BCS	GHLF080		;
;// 03.09.16 //;					;
;// 03.09.16 //		STA	!SVSND0
GHLF080		EQU	$
		STA	!SOUND0		; <sound0>
GHLF090		EQU	$
		JMP	SPCH000		; CG. work set
;
;
GHLF100		EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
;// 03.07.05 //		JSL	>VRAMCL		; VRAM clear!!
;// 03.07.05 //;
;// 03.07.05 //		JSR	BGMDST		; BG mode set
		LDA	#00000010B
		STA	<WD2130		; color-window off!!
;
		JSR	IIT1000		; ram initial
;
		LDA	!DJNNO
		CMP	#0FFH
		BEQ	GHLF110		;
;					;
		CMP	#002H
		BNE	GHLF105		; shiro ?
;					; yes
		LDA	#000H
GHLF105		EQU	$
		LSR	A
		TAX
		LDA	>DKYTBL,X
GHLF110		EQU	$
;// 03.10.08 //		STA	>ITMTBL9	; key count load
;// 03.10.08 //		JSL	>MTRON2		; mater display
		JSL	>MTRON4		; mater display
;
		LDA	#04H
		STA	<HOLEFG1
		LDA	#03H		; chara shokyo set
		STA	<HOLEFG2
		LDA	#OMS000
		STA	<OMSBMD
		LDA	#010H
		STA	<PSTPFG
		LDA	<PLYPS1		; now gamen y-pos set
		SEC
		SBC	<SCCV2
		STA	<WORK0
		STZ	<WORK1
;
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	PYDMFM
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<RMXYCT
;// 03.05.07 //		SEC
;// 03.05.07 //		SBC	#00000H
		STA	<BKRMPT
;
		LDA	#0010H		; y-pod dyoo set
		CLC
		ADC	<WORK0
		STA	<WORK0
		LDA	<PLYPS1		; gamen soto set
		STA	<PLHNL0
		SEC
		SBC	<WORK0
		STA	<PLYPS1
;H3/5/2;		LDA	<PLYPS1		; gamen soto set
;H3/5/2;		SEC
;H3/5/2;		SBC	<WORK0
;H3/5/2;		STA	<PLYPS1
;H3/5/2;		SEC
;H3/5/2;		SBC	#00070H
;H3/5/2;		STA	<PLHNL0
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<JRSBPT
		PHA			; (A) push
		STZ	!LGTWST
		STZ	!LGTWFG
		JSR	INBGWT1		; initial BG data write
;
		JSL	>DJCODST	; read code change
;
		LDX	!CHIKNO
		LDA	>WTRPTDT,X
		TAY
		JSL	>WTRCBFS0	; water character buffer set
;
		JSL	>CHRCNG1	; character code set
;
		PLA			; (A) pull
		INC	A
		STA	<JRSBPT
;
		LDA	#C_2W0
		STA	!OJBSPT
		LDA	#00000010B
		STA	2101H		; obj size,address set
		JSL	>CHSCHNG	; character VRAM set
;// 03.05.29 //		JSL	>CHRCBS0	; character buffer set
		LDA	#00AH
		STA	!CHITEMJC
		JSR	INCLST0		; initial BG color set
;// 03.05.30 //		JSR	CGWKST		; (CGWORK) set
;
		JSL	>LMPCHCK	; light-wipe initial
;
		STZ	<KENKY
		STZ	<KENMD
		JSR	SCL540		; sub on/off check
;
		LDA	!RABFLG
		BEQ	GHL140		; player rabit ?
;					; yes
		JSL	>PLCGCN2	; player CG. (rabit) set
GHL140		EQU	$
		LDA	#10000000B
		STA	<WD420C		; H-DMA ch"on"
;
		JSL	>MTRDSP		; mater display
;
		JSL	>SND1CHK	; <sound1> check
;
		LDA	#p1_hldn
		STA	<GAMEMD
SND0CHK		EQU	$
		LDA	!SNDSFG0
		CMP	#0FFH
		BEQ	SND0C80		; danjyon ?
;					; yes
		CMP	#0F2H
		BEQ	SND0C80		; danjyon ?
;					; yes
		CMP	#003H
		BEQ	SND0C90		; shiro-nukemichi ?
;					; no
		CMP	#007H
		BEQ	SND0C90		; link-house ?
;					; no
		CMP	#00EH
		BEQ	SND0C90		; ganbule-house ?
;					; no
		LDA	!SNDPCFG
		BNE	SND0C80		; danjyon sound set ?
;					; yes
;
		SEI
		STZ	4200H		; NMI  disable
		STZ	420CH		; HDMA
;
		INC	!SNDPCFG	; danjyon sound program
		LDA	#0FFH
		STA	2140H
		JSL	>SNDTR2		; sound1 set
;
		LDA	#10000001B
		STA	4200H		; NMI enable
SND0C80		EQU	$
		RTS
;
SND0C90		EQU	$
		JMP	SNDITST
;
;
;
GHLF200		EQU	$
		LDA	<BLKFLG
		INC	A
		AND	#00001111B
		STA	<BLKFLG
		CMP	#00001111B
		BNE	GHLF240		; fade in ok ?
;					; yes
		INC	<JRSBPT
GHLF240		EQU	$
		JSL	>PLAFHL		; Player fade-in
		LDA	<GAMEMD
		BNE	GHLF290		; end ?
;					; yes
		LDA	#MD_djply
		STA	<SLMODE
		INC	!INFCFG
;
		JSR	FLNODP		; floor no. display
;
		JSR	SPCH420		;
;
		LDA	!SNDSFG0
		STA	!SOUND0
		LDA	!SVSND0
		STA	!SVCKF0
;// 03.09.16 //		STA	!SVSND0
GHLF290		EQU	$
		RTS
;
;
;
;
;
;
;************************************************************************
;*		Boss clear Wipe  Fade-out		(BCWFOUT)	*
;************************************************************************
BCWOTBL		EQU	$
		WORD	BCWO000		; life kaifuku
		WORD	BCWO200		; wait
		WORD	BCWO400		; player spin
		WORD	BCWO600		; wait
		WORD	WPFD000		; init
		WORD	WPFD200		; play
;
;
BCWFOUT		EQU	$
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(BCWOTBL,X)
;
		JSL	>ENEMY
;
 		JMP	>PYOMST		; character set
;
;
BCWO000		EQU	$
		JSL	>KAIMP		; MP up
		BCS	BCWO010		; MP max ?
;					; no
		INC	!ITEMMD
BCWO010		EQU	$
		JSL	>KAIHUKU	; life up
		BCS	BCWO020		; life max ?
;					; no
		INC	!ITEMMD
BCWO020		EQU	$
		LDA	!ITEMMD
		BNE	BCWO040		; up end ?
;					; yes
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
;// 03.05.22 //		STZ	!ASWFLG
		JSR	PFLGCL		; player flag clear
		LDA	#00000010B
		STA	<PLMKCH
		ASL	A
		STA	<PLMUKI
;
		INC	<B3CHFG
		INC	<GAMEMD
		LDA	#010H
		STA	<JRSBPT		; counter
		INC	!PYALSP
BCWO040		EQU	$
		STZ	!ITEMMD
		JSL	>MTRDSP		; mater display
		RTS
;
;
BCWO200		EQU	$
		DEC	<JRSBPT
		BNE	BCWO280		; wait end ?
;					; yes
		STZ	!PYALSP
		LDA	#002H
		STA	<PLMKCH
		JSL	>PYKNSP1
		JSL	>BMCLER
;
		JSL	>CDKNINT	; ken kirari
;
		INC	<GAMEMD
BCWO280		EQU	$
		RTS
;
;
BCWO400		EQU	$
		JSL	>PLMOVE		; player move
;
		LDA	<LNMODE
		CMP	#LNMD
		BNE	BCWO480		; spin end ?
;					; yes
		LDA	>ITMTBL6
		INC	A
		AND	#11111110B
		BEQ	BCWO420
;
		LDA	#02CH
		STA	!SOUND2		; <sound2>
;
BCWO420		EQU	$
		LDA	#001H
		STA	!KNPASFG
		LDA	#020H
		STA	<JRSBPT
		INC	<GAMEMD
BCWO480		EQU	$
		RTS
;
;
BCWO600		EQU	$
		DEC	<JRSBPT
		BNE	BCWO680		; wait end ?
;					; yes
		INC	<GAMEMD
		STZ	<PLYMVC
		STZ	<PLXMVC
;
		LDA	#000H
		STA	>DKRMCG
BCWO680		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Boss clear Kagarou  Fade-out		(BCKGOUT)	*
;************************************************************************
BCKGTBL		EQU	$
		WORD	BCKG000		; 00 : wait
		WORD	BCKG100		; 01 : kagerou init.
		WORD	BCKG400		; 02 : move
		WORD	BCKG420		; 03 : move
		WORD	BCKG440		; 04 : end move
		WORD	BCKG200		; 05 : kagerou end
bckg002		EQU	$
		WORD	BCKG280		; 06 : wait
		WORD	BCKG300		; 07 : message
		WORD	BCKG350		; 08 : message
bckg004		EQU	$
		WORD	BCWO000		; 09 : life kaifuku
		WORD	BCWO200		; 0A : wait
		WORD	BCWO400		; 0B : player spin
bckg006		EQU	$
		WORD	BCKG700		; 0C : end
;
;
BCKGOUT		EQU	$
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(BCKGTBL,X)
;
		LDA	<GAMEMD
		CMP	#002H
		BCC	BCKGO40		; character set ok ?
;					; no
		CMP	#005H
		BCC	BCKGO80		; character set ok ?
;					; yes
BCKGO40		EQU	$
		JSL	>ENEMY		; 
;
		JSL	>PYOMST		; charcater set
BCKGO80		EQU	$
		RTL
;
;
;
BCKG000		EQU	$
		STZ	!GMAPDF
		INC	!ITEMMD
		INC	<GAMEMD
;
		JSR	SNDITST		; sound init. set
BCKG040		EQU	$
		RTS
;
;
BCKG100		EQU	$
		LDA	#008H
		STA	!SOUND0		; <sound0>
		STA	!SCRLMD
;
		JSL	>KAGEIT		; kagerou init.
;
		STZ	!ITEMMD
;
		JSL	>CTPITST	; trip CG. init set
;
		JSR	GDMCK800	; information ram set
		INC	<GAMEMD
;
		LDA	#TRFS
		STA	<LNMODE
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	!YUREXD
		STZ	!YUREYD
		STZ	!EMYSTT
		STZ	<PLYMVC
;
		LDA	#07FFFH
		STA	>CGWORK+000H
		STA	>CGWORK+040H
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
;// 03.10.04 //		JSL	>PLYCLR1
;// 03.10.04 //		JSL	>BMCLER
		JSL	>PFLGCL2	; player ram all-clear
BCKG140		EQU	$
		RTS
;
;
;
BCKG200		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#02641H
		STA	4370H		; inc. mode & B-bus address set
;
		LDX	#0003EH
		LDA	#0FF00H
BCKG240		EQU	$
		STA	!HDMABF+000H,X
		STA	!HDMABF+040H,X
		STA	!HDMABF+080H,X
		STA	!HDMABF+0C0H,X
		STA	!HDMABF+100H,X
		STA	!HDMABF+140H,X
		STA	!HDMABF+180H,X
		DEX
		DEX
		BPL	BCKG240		; end ?
;					; yes
		LDA	#00000H
		STA	>CCNGCT
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDX	#MS_0076
;// 03.09.29 //		LDA	>ITMTBL4
;// 03.09.29 //		BNE	BCKG260		; suisyou-dama on ?
;// 03.09.29 //;					; no
;// 03.09.29 //		LDX	#MS_0077
;// 03.09.29 //BCKG260		EQU	$
		STX	!MSGENOL	; message set
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
		JSL	>MESWIT		; message init.
;
		JSL	>CHRCBSZ	; character buffer set
;
;// 03.10.08 //		LDA	#000H
;// 03.10.08 //		STA	>DKRMCG
;// 03.10.08 //		LDA	#0FFH
;// 03.10.08 //		STA	>ITMTBL9
;// 03.10.08 //		JSL	>MTRON2		; initial BG3. write
		JSL	>MTRON3		; initial BG3. write
;
		LDA	#10000000B
		STA	<WD420C
;
		LDA	#MD_bckgr
		STA	<SLMODE
		LDA	#(bckg002-BCKGTBL)/2
		STA	<GAMEMD
		LDA	#018H
		STA	<JRSBPT
		RTS
;
;
BCKG280		EQU	$
		DEC	<JRSBPT
		BNE	BCKG290		; wait end ?
;					; yes
		INC	<GAMEMD
;
		LDA	#009H
		STA	!SOUND1		; <sound1>
;// 03.09.16 //		STA	!SVSND1		; <sound1>
BCKG290		EQU	$
		RTS
;
;
BCKG300		EQU	$
		JSL	>MSGE_I		; message
		LDA	<GAMEMD
		BNE	BCKG340		; message end ?
;					; yes
		STZ	!ITEMMD
		LDA	#005H
		STA	!SOUND1
		LDX	#(bckg004-BCKGTBL)/2
		LDA	>ITMTBL4
		BNE	BCKG320		; suisyou-dama on ?
;					; no
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#MS_0077
		STA	!MSGENOL	; message set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>MESWIT		; message init.
;
		STZ	!SOUND1
		LDA	#MD_bckgr
		STA	<SLMODE
		LDX	#(bckg004-BCKGTBL)/2
		DEX
BCKG320		EQU	$
		STX	<GAMEMD
BCKG340		EQU	$
		RTS
;
;
BCKG350		EQU	$
		JSL	>MSGE_I		; message
		LDA	<GAMEMD
		BNE	BCKG390		; message end ?
;					; yes
		LDA	#020H
		STA	<JRSBPT
		LDX	#(bckg006-BCKGTBL)/2
		STX	<GAMEMD
BCKG390		EQU	$
		RTS
;
;
BCKG400		EQU	$
		JSL	>KAGEMV		; kagerou move
		INC	<GAMEMD
		STZ	<JRSBPT
		RTS
;
;
BCKG420		EQU	$
		JSL	>KAGEMV1	; kagerou move
		BRA	BCKG460
;
;
BCKG440		EQU	$
		JSL	>KAGEMV2	; kagerou move
BCKG460		EQU	$
		LDA	<JRSBPT
		BEQ	BCKG480		; next ?
;					; yes
		STZ	<JRSBPT
		INC	<GAMEMD
BCKG480		EQU	$
		RTS
;
;
BCKG700		EQU	$
		DEC	<JRSBPT
		BNE	BCKG740		;
;					;
		JSL	>BCKG820	; ram clear
;// 03.10.04 //		JSL	>BMCLER		; ram clear
;// 03.10.04 //		STZ	!MRTKFG
;// 03.10.04 //		STZ	<KENMD
;// 03.10.04 //		STZ	<KENKY
;// 03.10.04 //		STZ	!KNPASFG
;// 03.10.04 //		STZ	!PYALSP
;
		LDA	>GNDTBL+01BH
		ORA	#00100000B
		STA	>GNDTBL+01BH
;
		LDA	#0FFH
		STA	!DJNNO
		STZ	<GAMEMD
		STZ	!ITEMMD
		STZ	!GMAPDF
		LDA	#MD_gdply
		STA	<SLMODE
		STZ	<SCCV1
;
		LDX	#009H
		LDA	>ITMTBL4
		BNE	BCKG720		; suisyou-dama on ?
;					; no
		LDX	#004H
BCKG720		EQU	$
		STX	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
;
		LDA	#006H
		STA	>MODTBL2
BCKG740		EQU	$
		RTS
;
;
;
;
BCKG800		EQU	$
		LDA	<SLMODE
		CMP	#MD_bckgr
		BNE	BCKG840		;
;					;
		JSR	IIT2000		; ram init.
		LDY	#C_1X0
		JSL	>WTRCBFS1
BCKG820		EQU	$
		JSL	>BMCLER		; ram clear
		STZ	!MRTKFG
		STZ	<KENMD
		STZ	<KENKY
		STZ	!KNPASFG
		STZ	!PYALSP
BCKG840		EQU	$
		RTL
;
;
;
;
;************************************************************************
;*		Ura-Boss clear Wipe  Fade-out		(UBCWFOUT)	*
;************************************************************************
UBCWOTBL	EQU	$
		WORD	BCWO000		; life kaifuku
		WORD	BCWO200		; wait
		WORD	BCWO400		; player spin
		WORD	BCWO600		; wait
		WORD	UBCWO400	; fade out
;
;
UBCWFOUT	EQU	$
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(UBCWOTBL,X)
;
		JSL	>ENEMY
;
 		JMP	>PYOMST		; character set
;
;
;
UBCWO480	EQU	$
		RTS
;
;
UBCWO400	EQU	$
		DEC	<BLKFLG
		BNE	UBCWO480	; fade-out end ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	!YUREXD
		STZ	!YUREYD
		STZ	<PLYMVC
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	!PYALSP
;
		JSL	>PWTRCGS3	; CG. reset
;
		LDA	#LNMD
		STA	<LNMODE
		STZ	!ATMTFG
		STZ	!ATMTHK
		STZ	!MRTKFG
;
		LDA	!NXSLMD
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
		JMP	WPFD201
;
;
;
;
;************************************************************************
;*		Ura-Shisai clear Fade-out		(USSCLER)	*
;************************************************************************
USSCTBL		EQU	$
		WORD	USSC000		; 0 : fue&bird init
		WORD	USSC100		; 1 : wait
		WORD	USSC200		; 2 : fade-out
		WORD	USSC300		; 3 : piramid BG. set
		WORD	USSC400		; 4 : ground rewrite
		WORD	USSC450		; 5 : fade-in
		WORD	USSC500		; 6 : 
		WORD	USSC600		; 7 : wait
		WORD	USSC700		; 8 : player fade-in
;
;
USSCLER		EQU	$
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDA	<SCCH2
		PHA			; (A) push
		ADC	!YUREXD
		STA	<SCCH2
		STA	!SSCCH2
		LDA	<SCCV2
		PHA			; (A) push
		CLC
		ADC	!YUREYD
		STA	<SCCV2
		STA	!SSCCV2
;
		LDA	<SCCH1
		PHA			; (A) push
		CLC
		ADC	!YUREXD
		STA	<SCCH1
		STA	!SSCCH1
		LDA	<SCCV1
		PHA			; (A) push
		CLC
		ADC	!YUREYD
		STA	<SCCV1
		STA	!SSCCV1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>ENEMY		; enemy move
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PLA			; (A) pull
		STA	<SCCV1
		PLA			; (A) pull
		STA	<SCCH1
		PLA			; (A) pull
		STA	<SCCV2
		PLA			; (A) pull
		STA	<SCCH2
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	!MAPDMD
		ASL	A
		TAX
		JSR	(USSCTBL,X)
;
		JMP	>PYOMST		; character set
;
;
USSC000		EQU	$
		JSL	>BGMVCHK	; BG. move data check
;
		JSL	>FUEMOVL	; fue & bird set
;
		JSL	>DJKYSV		; key count save
;
		INC	!MAPDMD
		INC	!PYALSP
		RTS
;
;
USSC100		EQU	$
		JSL	>BGMVCHK	; BG. move data check
;
		LDA	<GAMEMD
		CMP	#p3_warp
		BNE	USSC180		; fade-out ?
;					; yes
		LDA	#05BH
		STA	<MPDTNO
		STZ	<GMMODE
;
		LDA	#MD_usscl
		STA	<SLMODE
		STZ	<GAMEMD
		LDA	#002H
		STA	!MAPDMD
USSC180		EQU	$
		RTS
;
;
USSC200		EQU	$
		JSL	>BGMVCHK	; BG. move data check
;
		DEC	<BLKFLG
		BNE	USSC220		; fade-out end ?
;					; yes
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	2100H
;// 03.09.17 //		STA	<BLKFLG		; blanking on
		INC	!MAPDMD
;
;// 03.10.08 //		LDA	#000H
;// 03.10.08 //		STA	>DKRMCG
;// 03.10.08 //		LDA	#0FFH
;// 03.10.08 //		STA	>ITMTBL9	; key count load
;// 03.10.08 //		JSL	>MTRON2		; initial BG3. write
		JSL	>MTRON3		; initial BG3. write
		STZ	<PLYMVC
		STZ	<PLXMVC
USSC220		EQU	$
		RTS
;
;
USSC300		EQU	$
		LDA	#008H
		STA	!MEMSTT
		STZ	!MEMSTT+1
		JSL	>MWRP900	; game BG. display
;
		JSR	SNDITST		; ground sound set
		LDA	#009H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
		RTS
;
;
USSC400		EQU	$
		JSL	>MWRPB00	; ground rewrite
;
		LDA	#000H
		STA	<JRSBPT
		RTS
;
;
USSC450		EQU	$
		INC	<BLKFLG
		LDA	<BLKFLG
		CMP	#00001111B
		BNE	USSC480		; fade-in end ?
;					; yes
		STZ	!EMYSTT
		STZ	!EMYSTT+1
		STZ	!ENSTFG		; enemy stop off
		JSL	>PLCHKST	;
		LDA	#002H
		STA	<PLMKCH
		LDA	#MD_gdply
		STA	!NXSLMD
		STZ	<GMMODE
		INC	!MAPDMD
		LDA	#080H
		STA	<JRSBPT
		LDA	#0FFH
		STA	!DJNNO
USSC480		EQU	$
;
;
USSC500		EQU	$
		RTS
;
;
USSC600		EQU	$
		DEC	<JRSBPT
		BNE	USSC480		; wait end ?
;					; yes
		INC	!MAPDMD
		RTS
;
;
USSC700		EQU	$
		JSL	>MWRPC40	; fade-in
		RTS
;
;
;
;
;************************************************************************
;*		Ending try-force set			(ENDTRYF)	*
;************************************************************************
ETRYFTBL	EQU	$
		WORD	EDTF000		; 0 : CG. work set
		WORD	EDTF100		; 1 : CG. change (fade out)
		WORD	EDTF200		; 2 : BG.1 set
		WORD	EDTF300		; 3 : character & CG. set
		WORD	EDTF400		; 4 : BG.2 set
		WORD	EDTF500		; 5 : player move
		WORD	EDTF600		; 6 : CG. change (fade in)
		WORD	EDTF700		; 7 : try-force init
		WORD	EDTF800		; 8 : try-force move
		WORD	EDTFA00		; 9 : message
		WORD	EDTF800		; A : try-force move
		WORD	EDTF900		; B : player walk
		WORD	EDTFB00		; C : wait end
		WORD	EDTFC00		; D : fade-out
		WORD	EDTFD00		; E : end fade-out
;
;
ENDTRYF		EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JSR	(ETRYFTBL,X)
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCCH1
		STA	!SSCCH1
		LDA	<SCCV1
		STA	!SSCCV1
;
		LDA	<SCCH2
		STA	!SSCCH2
		LDA	<SCCV2
		STA	!SSCCV2
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<JRSBPT
		CMP	#007H
		BCC	ETRYF40		; player move ?
;					; no
		CMP	#00BH
		BCC	ETRYF80		; player move ?
;					; yes
ETRYF40		EQU	$
		JSL	>PYSPST
		JSL	>PYCRCN
ETRYF80		EQU	$
		JMP	>PYOMST		; character set
;
;
;
EDTF000		EQU	$
		JSL	>PLYCLR1	; player ram clear
;
		STZ	<PWORK0
;
		LDA	#0F1H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
		JMP	SPCH000
;
;
EDTF100		EQU	$
		JSR	MZKSET		; mozaiku set
;
		JMP	DKCGCG1		; fade-out
;
;
EDTF200		EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	2100H
;// 03.09.17 //		STA	<BLKFLG		; blanking on
;
		SEI
		STZ	4200H		; NMI  disable
;
		LDA	#0FFH
		STA	2140H
		JSL	>SNDTR3		; sound2 set
;
		LDA	#10000001B
		STA	4200H		; NMI enable
;
;
		LDA	#089H
		STA	<RMXYCT
		LDA	#001H
		STA	<RMXYCT+1
;
		JSL	>VRAMCL
;
		JSL	>PWTRCGS3	; player color reset
;
		JSR	IIT3000		; RAM inital
;
		JSR	GB1WRT1		; BG.1 write
;
		INC	<JRSBPT
		BRA	EDTF480
;
;
EDTF300		EQU	$
		LDA	#024H
		STA	!CHIKNO
		LDA	#07DH
		STA	!ROBJCPT
		LDA	#051H
		STA	!RBGCPT
		JSL	>CHSCHNG	; charcater set
;
		LDX	#004H
		JSR	INCLS140	; initial BG color set
		LDA	#00EH
		JSL	>GCGCHNG
		JSR	CGWKST1		; CGWORK set
;
		INC	<JRSBPT
		RTS
;
;
EDTF400		EQU	$
		LDA	<JRSBPT
		PHA			; (A) push
;
		JSR	MPINT0		; BG.2 write
;
		PLA			; (A) pull
		INC	A
		STA	<JRSBPT
;
		LDA	#00001111B
		STA	<BLKFLG
		LDA	#01FH
		STA	>CCNGCT
		LDA	#000H
		STA	>CCNGED
;
		LDA	#001H
		STA	<SCCH11
		LDA	#00000010B
		STA	<WD2130
		LDA	#00110010B
		STA	<WD2131
		LDA	#11110000B
		STA	>MZKCNT
;
		LDA	#0ECH
		STA	<PLYPS1
		LDA	#078H
		STA	<PLXPS1
		LDA	#002H
		STA	<PLBGCKF
;
		LDA	#020H
		STA	!SOUND0		; <sound0>
EDTF480		EQU	$
		LDA	#MD_etryf
		STA	<SLMODE
		STZ	<GAMEMD
		RTS
;
;
EDTF500		EQU	$
		LDA	#00001000B
		STA	<PWORK1
		STA	<PLMUKI
		STZ	<PLMKCH
;
		LDA	<PLYPS1
		CMP	#0C0H
		BCS	EDTF580		;
;					;
		STZ	<PWORK1
		STZ	<PLMUKI
		STZ	<PYCRCH
		INC	<JRSBPT
EDTF580		EQU	$
		RTS
;
;
EDTF600		EQU	$
		LDA	>CCNGCT
		LSR	A
		BCS	EDTF620		;
;					;
		LDA	>MZKCNT
		BEQ	EDTF620		;
;					;
		SEC
		SBC	#00010000B
		STA	>MZKCNT
EDTF620		EQU	$
		JSR	MZKSET1		; mozaiku set
;
		JSL	>CGCNG1		; CG. change
		RTS
;
;
EDTF700		EQU	$
		JSL	>POLGNED
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#MS_0580
		STA	!MSGENOL	; message set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>MESWIT		; message init.
		JSL	>MSGE_I
;
		LDA	#080H
		STA	<CWORK0
;
		LDA	#MD_etryf
		STA	<SLMODE
		INC	<JRSBPT
		RTS
;
;
EDTFA00		EQU	$
		JSL	>TRYFS10
;
		JSL	>MSGE_I		; message
		LDA	<GAMEMD
		BNE	EDTFA80		; message end ?
;					; yes
		STZ	!ITEMMD
		LDA	#MD_etryf
		STA	<SLMODE
		INC	<JRSBPT
EDTFA80		EQU	$
		RTS
;
;
EDTF800		EQU	$
		JSL	>TRYFS10
		LDA	<JRSBPT
		CMP	#00BH
		BNE	EDTF840		;
;					;
		LDA	#021H
		STA	!SOUND0		; <sound0>
;
		LDA	#MD_etryf
		STA	<SLMODE
		STZ	<PWORK1
		STZ	<PLMUKI
		INC	<GAMEMD
EDTF840		EQU	$
		RTS
;
;
EDTF900		EQU	$
		JSL	>TRYFS10
;
		JSL	>EDPYDM0	; player walk
;
		LDA	<JRSBPT
		CMP	#00CH
		BNE	EDTF940		; walk end ?
;					; yes
		STZ	<PWORK1
		STZ	<PLMUKI
EDTF940		EQU	$
		RTS
;
;
EDTFB00		EQU	$
		JSL	>TRYFS10
;
		DEC	<CWORK0
		BNE	EDTFB80		; wait end ?
;					; yes
		JSL	>KCCNG0		; init.
		INC	<GAMEMD
EDTFB80		EQU	$
		RTS
;
;
EDTFC00		EQU	$
		JSL	>TRYFS10
;
		JSL	>CTPCZZZ
;
		LDA	>CCNGFG
		CMP	#0FFH
		BNE	EDTFC80		; end ?
;					; yes
		INC	<JRSBPT
EDTFC80		EQU	$
		RTS
;
;
EDTFD00		EQU	$
		DEC	<BLKFLG
		BNE	EDTFD80		; 
;					;
		LDA	#MD_endg1
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
;
		LDA	#0FFH
		STA	!IRQSWFG	; IRQ off
		STZ	!POLYCFG	; poly-gon off
		STZ	!transfer_flag
;
		LDA	#000H
		STA	>GDTRPF
EDTFD80		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Ura-danjyon return check		(UDJRTNCK)	*
;************************************************************************
UDJBITD		EQU	$
		BYTE	00000000B	; 00 :chapel
		BYTE	00000000B	; 02 :shiro
		BYTE	00000100B	; 04 :omote shinden
		BYTE	00000010B	; 06 :omote sabaku
		BYTE	00000000B	; 08 :shisai
		BYTE	00010000B	; 0A :ura-hokora
		BYTE	00000010B	; 0C :ura-shinden
		BYTE	00000001B	; 0E :ura-numa
		BYTE	01000000B	; 10 :ura-mori
		BYTE	00000100B	; 12 :ura-ice
		BYTE	00000001B	; 14 :omote-yama
		BYTE	00100000B	; 16 :ura-machi
		BYTE	00001000B	; 18 :ura-kame
;
;
UDJRTNCK	EQU	$
		LDA	!DJNNO
		CMP	#0FFH
		BEQ	UDRC80		; danjyon ?
;					; yes
;// 03.09.18 //		LSR	A
;// 03.09.18 //		TAX
;// 03.09.18 //		LDA	>GDTRPF
;// 03.09.18 //		BEQ	UDRC100		; ura-danjyon ?
;// 03.09.18 //;					; yes
;// 03.09.18 //		LDA	>ITMTBL3
;// 03.09.18 //		AND	>UDJBITD,X
;// 03.09.18 //		BEQ	UDRC80		; boss clear ?
;// 03.09.18 //;					; yes
;// 03.09.18 //UDRC40		EQU	$
		LDA	#p1_rtrn
		STA	<GAMEMD
		STZ	<JRSBPT
		LDA	#033H
		STA	!SOUND2		; <sound2>
;
		JSL	>MPBTSET1	; map on/off bit set
DJKYSV		EQU	$
		LDA	!DJNNO
		CMP	#0FFH
		BEQ	DKS040		; danjyon ?
;					; yes
		CMP	#002H
		BNE	DKS020		; shiro ?
;					; yes
		LDA	#000H
DKS020		EQU	$
		LSR	A
		TAX
		LDA	>ITMTBL9
		STA	>DKYTBL,X	; key count save
DKS040		EQU	$
		RTL
;
UDRC80		EQU	$
		LDA	#03CH
		STA	!SOUND2		; <sound2>
		RTL
;
;// 03.09.18 //UDRC100		EQU	$
;// 03.09.18 //		LDA	>ITEMR53
;// 03.09.18 //		AND	>UDJBITD,X
;// 03.09.18 //		BNE	UDRC40		; boss clear ?
;// 03.09.18 //;					; no
;// 03.09.18 //		RTL
;
;
;
;
;************************************************************************
;*		Color DARK check					*
;************************************************************************
DARKDT		EQU	$
		HEX	1F,08,04,00
;
;
DARK000		EQU	$
DARK600		EQU	$
		LDA	!PCGCKF
		BEQ	DARK610		;
;					;
		JSL	>PWTRCGS3	; player CG. reset
DARK610		EQU	$
		LDA	#00000010B
		STA	<WD2130
		LDA	#10110011B
		STA	<WD2131
		LDX	!LGTWST
;
		LDA	>DARKFG
		BNE	DARK640		; color DARK set ?
;					; no
		LDA	#00100000B
		LDX	#003H
		LDY	!GSUBFG
		BEQ	DARK620		;
;					;
		LDA	#00110010B
		CPY	#007H
		BEQ	DARK620		; gamen plus ?
;					; no
		LDA	#01100010B
		CPY	#004H
		BEQ	DARK620		; gamen plus ?
;					; no
		LDA	#00100000B
		CPY	#002H
		BNE	DARK620		; gamen plus ?
;					; yes
		PHX			; (X) push
		JSL	>PWTRCGS2	; player CG. set
		PLX			; (X) pull
		LDA	<RMXYCT
		CMP	#00DH
		BNE	DARK615		; ura-shisai ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00000H
		STA	>SHSCCT+0
		STA	>SHSCCT+2
		STA	>SHSCCT+4
		STA	>SHSCFG+0
		STA	>SHSCFG+2
		STA	>SHSCFG+4
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>USSCGST	; ura-shisai CG. set
DARK615		EQU	$
		LDA	#01110000B
DARK620		EQU	$
		STA	<WD2131
DARK640		EQU	$
		LDA	>DARKDT,X
		STA	>DKRMCG
;
		LDA	#01FH
		STA	>CCNGCT
		LDA	#000H
		STA	>CCNGED
		LDA	#00002H
		STA	>CCNGFG
		STZ	!CGSTPT+1	; CG. (CGRAM) set
;
		JSL	>DANCORST
;// 03.06.26 //		JSL	>KOUKAST	; BG. CG. (CGRAM) set
		JSL	>DJCGSET	; BG-OBJ
		JSL	>MSCGST1
		JSL	>MSCGST2	; enemy
;
;
		INC	<JRSBPT
		RTS
;// 03.03.19 //		LDA	>DARKFG
;// 03.03.19 //		BEQ	DARK600		; color DARK set ?
;// 03.03.19 //;					; yes
;// 03.03.19 //		LDA	#00000010B
;// 03.03.19 //		STA	<WD2130
;// 03.03.19 //		LDA	#10110011B
;// 03.03.19 //		STA	<WD2131
;// 03.03.19 //		LDX	!LGTWST
;// 03.03.19 //		LDA	>DARKDT,X
;// 03.03.19 //		STA	>DKRMCG
;// 03.03.19 //		ORA	#00100000B
;// 03.03.19 //		STA	<WD2132R
;// 03.03.19 //		LDA	>DARKDT,X
;// 03.03.19 //		ORA	#01000000B
;// 03.03.19 //		STA	<WD2132G
;// 03.03.19 //		LDA	>DARKDT,X
;// 03.03.19 //		ORA	#10000000B
;// 03.03.19 //		STA	<WD2132B
;// 03.03.19 //		BRA	DARK640
;// 03.03.19 //;
;// 03.03.19 //;
;// 03.03.19 //DARK600		EQU	$
;// 03.03.19 //		LDA	#00000010B
;// 03.03.19 //		STA	<WD2130
;// 03.03.19 //		LDA	#01100010B
;// 03.03.19 //		LDX	!GSUBFG
;// 03.03.19 //		CPX	#007H
;// 03.03.19 //		BEQ	DARK620		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //;// 02.10.16 //		CPX	#003H
;// 03.03.19 //		CPX	#004H
;// 03.03.19 //		BEQ	DARK620		; gamen plus ?
;// 03.03.19 //;					; no
;// 03.03.19 //		LDA	#00100000B
;// 03.03.19 //DARK620		EQU	$
;// 03.03.19 //		STA	<WD2131
;// 03.03.19 //;
;// 03.03.19 //		LDA	#00000000B
;// 03.03.19 //		STA	>DKRMCG
;// 03.03.19 //		LDA	#00100000B
;// 03.03.19 //		STA	<WD2132R
;// 03.03.19 //		LDA	#01000000B
;// 03.03.19 //		STA	<WD2132G
;// 03.03.19 //		LDA	#10000000B
;// 03.03.19 //		STA	<WD2132B
;// 03.03.19 //DARK640		EQU	$
;// 03.03.19 //		LDA	#01FH
;// 03.03.19 //		STA	>CCNGCT
;// 03.03.19 //		LDA	#000H
;// 03.03.19 //		STA	>CCNGED
;// 03.03.19 //		LDA	#00002H
;// 03.03.19 //		STA	>CCNGFG
;// 03.03.19 //		STZ	!CGSTPT+1	; CG. (CGRAM) set
;// 03.03.19 //;
;// 03.03.19 //		JSL	>DANCORST
;// 03.03.19 //		JSL	>KOUKAST	; BG. CG. (CGRAM) set
;// 03.03.19 //		JSL	>DJCGSET	; BG-OBJ
;// 03.03.19 //		JSL	>MSCGST1
;// 03.03.19 //		JSL	>MSCGST2	; enemy
;// 03.03.19 //;
;// 03.03.19 //		INC	<JRSBPT
;// 03.03.19 //		RTS
;
;
;
DARK800		EQU	$
		JSL	>CGCNG1		; CG. change (fade in)
		LDA	>CCNGCT
		BNE	DARK880		; end ?
;					; yes
		LDA	#000H
		STA	>DARKFG		; DARK flag off
DARK840		EQU	$
		LDA	!NXSLMD
		STA	<SLMODE
		STZ	<JRSBPT
		STZ	<GAMEMD
DARK880		EQU	$
		RTS
;
;
DKCGCG0		EQU	$
		JSL	>CGCNG0		; CG. change
		RTS
;
DKCGCG1		EQU	$
		JSL	>CGCNG1		; CG. change
		RTS
;
;
CGWSET0		EQU	$
		JSR	SPCH000		; CG. reset
		RTL
;
CGWSET1		EQU	$
		JSR	DARK600		; new CG. ser
		RTL
;
CGWSET2		EQU	$
		JSR	DARK800		; CG. change
		RTL
;
;
;
;
;************************************************************************
;*		Hi-posistion  Reset			(HPSRST)	*
;************************************************************************
HPSRST		EQU	$
		LDA	<RMXYCT
		AND	#11110000B
;// 03.02.21 //		LSR	A
;// 03.02.21 //		LSR	A
		STA	<WORK0
		LDA	<PLYPS0
		AND	#00001111B
		ORA	<WORK0
		STA	<PLYPS0
;
		LDA	<SCCV2+1
		AND	#00001111B
		ORA	<WORK0
		STA	<SCCV2+1
;
		LDA	!SCVD+1
		AND	#00001111B
		ORA	<WORK0
		STA	!SCVD+1
		LDA	!SCVD1+1
		AND	#00001111B
		ORA	<WORK0
		STA	!SCVD1+1
;
		LDA	!SCVU+1
		AND	#00001111B
		ORA	<WORK0
		STA	!SCVU+1
		LDA	!SCVU1+1
		AND	#00001111B
		ORA	<WORK0
		STA	!SCVU1+1
		RTS
;
;
;
;************************************************************************
;*		Hi-posistion  Reset			(HPSRST1)	*
;************************************************************************
HPSRST1		EQU	$
;==============================================	; H-pos. reset
;// 02.10.26 //		LDA	<BKRMPT
;// 02.10.26 //		AND	#00000111B
;// 02.10.26 //		ASL	A
;// 02.10.26 //		STA	<WORK0
;// 02.10.26 //		LDA	<RMXYCT
;// 02.10.26 //		AND	#00000111B
;// 02.10.26 //		ASL	A
;// 02.10.26 //		STA	<WORK2
;// 02.10.26 //;
;// 02.10.26 //		LDA	<WORK0
;// 02.10.26 //		SEC
;// 02.10.26 //		SBC	<PLXPS0
;// 02.10.26 //		AND	#00000001B
;// 02.10.26 //		CLC
;// 02.10.26 //		ADC	<WORK2
;// 02.10.26 //		STA	<PLXPS0
;// 02.10.26 //;
;// 02.10.26 //		LDA	<WORK0
;// 02.10.26 //		SEC
;// 02.10.26 //		SBC	<SCCH2+1
;// 02.10.26 //		CLC
;// 02.10.26 //		ADC	<WORK2
;// 02.10.26 //		STA	<SCCH2+1
;// 02.10.26 //;
;// 02.10.26 //		LDA	<WORK0
;// 02.10.26 //		SEC
;// 02.10.26 //		SBC	!SCHR+1
;// 02.10.26 //		CLC
;// 02.10.26 //		ADC	<WORK2
;// 02.10.26 //		STA	!SCHR+1
;// 02.10.26 //		LDA	<WORK0
;// 02.10.26 //		SEC
;// 02.10.26 //		SBC	!SCHR1+1
;// 02.10.26 //		CLC
;// 02.10.26 //		ADC	<WORK2
;// 02.10.26 //		STA	!SCHR1+1
;// 02.10.26 //;
;// 02.10.26 //		LDA	<WORK0
;// 02.10.26 //		SEC
;// 02.10.26 //		SBC	!SCHL+1
;// 02.10.26 //		CLC
;// 02.10.26 //		ADC	<WORK2
;// 02.10.26 //		STA	!SCHL+1
;// 02.10.26 //		LDA	<WORK0
;// 02.10.26 //		SEC
;// 02.10.26 //		SBC	!SCHL1+1
;// 02.10.26 //		CLC
;// 02.10.26 //		ADC	<WORK2
;// 02.10.26 //		STA	!SCHL1+1
;// 02.10.26 //;
		LDA	<BKRMPT
		AND	#00001111B
		STA	<WORK0
		LDA	<RMXYCT
		AND	#00001111B
		SEC
		SBC	<WORK0
		ASL	A
		STA	<WORK0
		LDA	<PLXPS0
		CLC
		ADC	<WORK0
		STA	<PLXPS0
;
		LDA	<SCCH2+1
		CLC
		ADC	<WORK0
		STA	<SCCH2+1
;
		LDA	!SCHR+1
		CLC
		ADC	<WORK0
		STA	!SCHR+1
		LDA	!SCHR1+1
		CLC
		ADC	<WORK0
		STA	!SCHR1+1
;
		LDA	!SCHL+1
		CLC
		ADC	<WORK0
		STA	!SCHL+1
		LDA	!SCHL1+1
		CLC
		ADC	<WORK0
		STA	!SCHL1+1
;
;==============================================	; V-pos.
		LDA	<BKRMPT
		AND	#11110000B
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK0
		LDA	<RMXYCT
		AND	#11110000B
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK1
		SEC
		SBC	<WORK0
;// 03.02.21 //		PHP			; (P) push
;// 03.02.21 //		LSR	A
;// 03.02.21 //		LSR	A
;// 03.02.21 //		PLP			; (P) pull
;// 03.02.21 //;// 02.10.09 //		CMP	#00110000B
;// 03.02.21 //		BCS	HPRS40		;
;// 03.02.21 //;					;
;// 03.02.21 //		ORA	#11000000B
;// 03.02.21 //;// 02.10.09 //		ORA	#11000000B
HPRS40		EQU	$
		STA	<WORK0
		LDA	<PLYPS0
		CLC
		ADC	<WORK0
		STA	<PLYPS0
;
		LDA	<SCCV2+1
		CLC
		ADC	<WORK0
		STA	<SCCV2+1
;
		LDA	!SCVD+1
		CLC
		ADC	<WORK0
		STA	!SCVD+1
		LDA	!SCVD1+1
		CLC
		ADC	<WORK0
		STA	!SCVD1+1
;
		LDA	!SCVU+1
		CLC
		ADC	<WORK0
		STA	!SCVU+1
		LDA	!SCVU1+1
		CLC
		ADC	<WORK0
		STA	!SCVU1+1
		RTS
;
;
;
;************************************************************************
;*		Hi-posistion  Reset			(WRPRMST)	*
;************************************************************************
;/** 03.07.31 **/WRPRMST1	EQU	$
;/** 03.07.31 **/		LDY	#000H
WRPRMST		EQU	$
		STY	<WORK0
		STA	!ERXYCT
		STA	<BKRMPT
;
;==============================================	; H-pos. reset
		LDA	<BKRMPT
		AND	#00001111B
		ASL	A
		SEC
		SBC	<PLXPS0
		CLC
		ADC	<WORK0
		STA	<WORK0
;
		LDA	<PLXPS0
		CLC
		ADC	<WORK0
		STA	<PLXPS0
;
		LDA	<SCCH2+1
		CLC
		ADC	<WORK0
		STA	<SCCH2+1
;
		LDA	!SCHR+1
		CLC
		ADC	<WORK0
		STA	!SCHR+1
		LDA	!SCHR1+1
		CLC
		ADC	<WORK0
		STA	!SCHR1+1
;
		LDA	!SCHL+1
		CLC
		ADC	<WORK0
		STA	!SCHL+1
		LDA	!SCHL1+1
		CLC
		ADC	<WORK0
		STA	!SCHL1+1
;
;==============================================	; V-pos.
		LDA	<BKRMPT
		AND	#11110000B
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	<PLYPS0
		STA	<WORK0
;
		LDA	<PLYPS0
		CLC
		ADC	<WORK0
		STA	<PLYPS0
;
		LDA	<SCCV2+1
		CLC
		ADC	<WORK0
		STA	<SCCV2+1
;
		LDA	!SCVD+1
		CLC
		ADC	<WORK0
		STA	!SCVD+1
		LDA	!SCVD1+1
		CLC
		ADC	<WORK0
		STA	!SCVD1+1
;
		LDA	!SCVU+1
		CLC
		ADC	<WORK0
		STA	!SCVU+1
		LDA	!SCVU1+1
		CLC
		ADC	<WORK0
		STA	!SCVU1+1
;
;
		LDY	#000H
WRPRMS20	EQU	$
;;;;;;;;		LDA	<PLXPS0
;;;;;;;;		STA	!OPXPSH+0,Y
		LDA	<PLYPS0
		STA	!OPYPSH+0,Y
		INY
		CPY	#014H
		BNE	WRPRMS20	; option hi-pos. reset end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Play  main (Ground)			(PLMAIN2)	*
;************************************************************************
PM2TBL		EQU	$
p2move		WORD	GNDMOV		; 0 : move
		WORD	BGCCHG8		; 1 : BG. character change-0
		WORD	BGCCHG9		; 2 :                     -1
		WORD	GNDAWT		; 3 : next data get
		WORD	GSCL100		; 4 :
		WORD	GSCL120		; 5 : 
		WORD	GDSCRL		; 6 : scroll
		WORD	GSCL400		; 7 : write
p2atmv		WORD	GATMOVE		; 8 : auto move
;
p2doet		WORD	GDDOPEXT	; 9 : door open exit
p2dext		WORD	GDEXTMV		; A : door exit
p2dex1		WORD	GDEXTM1		; B : door exit
;
p2dwrt		WORD	GDRWRTE		; C : door open
;
;// 02.11.22 //p2rwt0		WORD	MPINT0		; 9 :--+
;// 02.11.22 //		WORD	MPINT1		; A :  |
;// 02.11.22 //		WORD	MPINT1		; B :  |rewrite
;// 02.11.22 //		WORD	MPINT4		; C :--+
;
p2fout		WORD	GMFOT10		; D : fade out
		WORD	GB1WRT0		; E : BG.1 write-0
p2awt1		WORD	BGCCHG8		; F : BG. character change-0
		WORD	BGCCHG9		;10 :                     -1
		WORD	GNDAWT		;11 : next data get
p2mzsl		WORD	GSCL100		;12 :
		WORD	GSCL120		;13 : 
		WORD	GDSCRL		;14 : scroll
		WORD	GSCL400		;15 : write
p2fin1		WORD	GMFIN10		;16 : fade in
;
p2fot1		WORD	GMFOT10		;17 : fade out
		WORD	EVTWRT0		;18 : event write-0 (BG.1 write)
		WORD	EVTWRT1		;19 : event write-1
		WORD	BGCCHG8		;1A : BG. character change-0
		WORD	BGCCHG9		;1B :                     -1
		WORD	GMFIN20		;1C : fade in
;
p2fot2		WORD	GMFOT20		;1D ; fade out (event exit)
p2fot3		WORD	GMFOT30		;1E ; fade out (event exit scroll)
p2atm1		WORD	GATMOV1		;1F ; auto move-1 (event exit)
;
p2mprs		WORD	GB1WRT1		;20 : BG.1 write
		WORD	GNDRWT0		;21 : ground rewrite
		WORD	GMFIN40		;22 : fade in
;
p2kage		WORD	KAGEROU		;23 : kagerou
;
p2fot4		WORD	GMFOT10		;24 : fade out
		WORD	GB1WRT2		;25 : BG.1 write-0
		WORD	BGCCHG8		;26 : BG. character change-0
		WORD	BGCCHG9		;27 :                     -1
		WORD	GNDRWT1		;28 : ground rewrite
		WORD	GMFIN10		;29 : fade in
;
p2hlrs		WORD	GHLDRST		;2A : hole down reset
;
p2kiri		WORD	KIRIFD		;2B : kiri fade out
;
p2kgrs		WORD	KAGEROU		;2C : kagerou
;
p2kzbd		WORD	KZBIRD		;2D : kazamidori
;
p2warp		WORD	GDWARP		;2E : warp
;
p2kmww		WORD	KMWRPWT		;2F : kame-iwa warp unit write
;
;;;;;;;;p2sgop		WORD	SGTOPPL		;2E : shiro-gate open
;
;
RNSCHD		EQU	$
		BYTE	001H,000H,001H,000H
;
RNSCVD		EQU	$
		BYTE	000H,011H,000H,011H
;
;
;
PLMAIN2		EQU	$
;
;************************************************************************
;*		Play  main (Event)			(PLMAIN3)	*
;************************************************************************
PLMAIN3		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(PM2TBL,X)
;
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDA	<SCCH2
		PHA			; (A) push
		ADC	!YUREXD
		STA	<SCCH2
		STA	!SSCCH2
		LDA	<SCCV2
		PHA			; (A) push
		CLC
		ADC	!YUREYD
		STA	<SCCV2
		STA	!SSCCV2
;
		LDA	<SCCH1
		PHA			; (A) push
		CLC
		ADC	!YUREXD
		STA	<SCCH1
		STA	!SSCCH1
		LDA	<SCCV1
		PHA			; (A) push
		CLC
		ADC	!YUREYD
		STA	<SCCV1
		STA	!SSCCV1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>ENEMY		; enemy move
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PLA			; (A) pull
		STA	<SCCV1
		PLA			; (A) pull
		STA	<SCCH1
		PLA			; (A) pull
		STA	<SCCV2
		PLA			; (A) pull
		STA	<SCCH2
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
 		JSL	>PYOMST		; character set
;
		JSL	>MTRDSP		; mater display
PLMN2000	EQU	$
		LDA	<MPDTNO
		CMP	#070H
		BEQ	PLM2010		; ura-numa ?
;					; no
		LDA	>MODTBL0
		CMP	#002H
		BCS	PLM2080		; rain on ?
;					; yes
PLM2010		EQU	$
		LDA	>GNDTBL+070H
		AND	#00100000B
		BNE	PLM2080		;
;					;
		LDA	<FCNT
		CMP	#003H
		BEQ	PLM2040		; change ?
;					; no
		CMP	#005H
		BEQ	PLM2020		; change ?
;					; no
		CMP	#024H
		BEQ	PLM2030		; change ?
;					; no
		CMP	#02CH
		BEQ	PLM2020		; change ?
;					; no
		CMP	#058H
		BEQ	PLM2040		; change ?
;					; no
		CMP	#05AH
		BNE	PLM2070		; change ?
;					; yes
PLM2020		EQU	$
		LDA	#01110010B
		BRA	PLM2060
;
PLM2030		EQU	$
		LDX	#036H
		STX	!SOUND2		; <sound2>
PLM2040		EQU	$
		LDA	#00110010B
PLM2060		EQU	$
		STA	<WD2131
PLM2070		EQU	$
		LDA	<FCNT
		AND	#00000011B
		BNE	PLM2080		;
;					;
		LDA	!RAINPT
		INC	A
		AND	#00000011B
		STA	!RAINPT
		TAX
		LDA	<SCCH11
		CLC
		ADC	>RNSCHD,X
		STA	<SCCH11
		LDA	<SCCV11
		CLC
		ADC	>RNSCVD,X
		STA	<SCCV11
PLM2080		EQU	$
		RTL
;
;
;
;
;
p2_move		EQU	(p2move-p2move)/2
p2_atmv		EQU	(p2atmv-p2move)/2
;
p2_doet		EQU	(p2doet-p2move)/2
p2_dext		EQU	(p2dext-p2move)/2
p2_dex1		EQU	(p2dex1-p2move)/2
;
p2_dwrt		EQU	(p2dwrt-p2move)/2
;
p2_fout		EQU	(p2fout-p2move)/2
p2_awt1		EQU	(p2awt1-p2move)/2
p2_mzsl		EQU	(p2mzsl-p2move)/2
p2_fin1		EQU	(p2fin1-p2move)/2
;
p2_fot1		EQU	(p2fot1-p2move)/2
;
p2_fot2		EQU	(p2fot2-p2move)/2
p2_fot3		EQU	(p2fot3-p2move)/2
p2_atm1		EQU	(p2atm1-p2move)/2
;
p2_mprs		EQU	(p2mprs-p2move)/2
;
p2_kage		EQU	(p2kage-p2move)/2
;
p2_fot4		EQU	(p2fot4-p2move)/2
;
p2_hlrs		EQU	(p2hlrs-p2move)/2
;
p2_kiri		EQU	(p2kiri-p2move)/2
;
p2_kgrs		EQU	(p2kgrs-p2move)/2
;
p2_kzbd		EQU	(p2kzbd-p2move)/2
;
p2_warp		EQU	(p2warp-p2move)/2
;
p2_kmww		EQU	(p2kmww-p2move)/2
;
;
;;;;;;p2_sgop		EQU	(p2sgop-p2move)/2
;
;
;
;************************************************************************
;*		Ground  Move				(GNDMOV)	*
;************************************************************************
GOPOSFD		EQU	$-1
;			 1  2     4           8                    F
		HEX	08,09,02,04,02,02,02,02,02,02,02,02,02,02,02
;
;
;
GNDMOV		EQU	$
		LDA	!SPMCFG
		ORA	!PYALSP
		ORA	!BSFLFG
		ORA	!GDINFF
		BEQ	GDMV00		; special magic on ?
;					; yes
		JMP	GDMV250
;
GDMV00		EQU	$
		LDA	<KEYA2
		AND	#00010000B
		BEQ	GDMV20		; goto item select?
;					; yes
;;;;;		JSL	>ITMWIT		; window init.
;;;;;		JSR	INHDMA1		; initial H-DMA
;
		STZ	!ITEMMD
		LDA	#p3_sitm
		BRA	GDMV100
;
GDMV20		EQU	$
		LDA	<KEYA2L
		AND	#01000000B
		BEQ	GDMV200		; map display ?
;					; yes
		STZ	!MAPDMD
		LDA	#p3_gmpd
GDMV100		EQU	$
		STA	<GAMEMD		; goto message
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_etcpl
		STA	<SLMODE
		RTS
;
GDMV200		EQU	$
		LDA	<KEYA1
		AND	#00100000B
		BEQ	GDMV250		; select on ?
;					; yes
		LDA	!MSG_RTS
		STA	!MRTS_BK
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#MS_05E2
		STA	!MSGENOL
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<SLMODE
		PHA			; (A) push
		JSL	>MESWIT		; message init.
		PLA			; (A) pull
		STA	<SLMODE
;
		STZ	<JRSBPT
		LDA	#p3_prst
		BRA	GDMV100
;
;
GDMV250		EQU	$
		LDA	!GDINFF
		BEQ	GDMV300		; ground information on ?
;					; yes
		JSL	>GDINFCK
GDMV300		EQU	$
;;;;;;;;;;;;;;;		LDA	<KEYA1L
;;;;;;;;;;;;;;;		AND	#01000000B
;;;;;;;;;;;;;;;		BEQ	GDMV300		; [X] key on ?
;;;;;;;;;;;;;;;;					; yes
;;;;;;;;;;;;;;;		LDA	<KEYA2L
;;;;;;;;;;;;;;;		AND	#020H
;;;;;;;;;;;;;;;		BEQ	GDMV300		; mater change ?
;;;;;;;;;;;;;;;;					; yes
;;;;;;;;;;;;;;;		MEM16
;;;;;;;;;;;;;;;		IDX16
;;;;;;;;;;;;;;;		REP	#00110000B	; memory,index 16bit mode
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;		LDX	#062C0H
;;;;;;;;;;;;;;;		LDA	!MTRADR
;;;;;;;;;;;;;;;		XBA
;;;;;;;;;;;;;;;		STA	!MTRCBF
;;;;;;;;;;;;;;;		CMP	#06040H
;;;;;;;;;;;;;;;		BEQ	GDMV260		;
;;;;;;;;;;;;;;;;					;
;;;;;;;;;;;;;;;		LDX	#06460H
;;;;;;;;;;;;;;;		CMP	#0C062H
;;;;;;;;;;;;;;;		BEQ	GDMV260		;
;;;;;;;;;;;;;;;;					;
;;;;;;;;;;;;;;;		LDX	#06040H
;;;;;;;;;;;;;;;GDMV260		EQU	$
;;;;;;;;;;;;;;;		STX	!MTRADR
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;		MEM8
;;;;;;;;;;;;;;;		IDX8
;;;;;;;;;;;;;;;		SEP	#00110000B	; memory,index 8bit mode
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;		LDA	#VT04
;;;;;;;;;;;;;;;		STA	<VRFLG
;;;;;;;;;;;;;;;GDMV300		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;;;;;;;;		LDA	#008H
;;;;;;;;		STA	2100H
		JSL	>PLMOVE		; Player move
;;;;;;;;		LDA	#00FH
;;;;;;;;		STA	2100H
;
		LDA	!BMTMER
		CMP	#0FFH
		BEQ	GDMV340		; timer move ?
;					; yes
		JSL	>BMBTIMER	; bomb-timer
GDMV340		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		AND	#01E00H
		ASL	A
		ASL	A
		ASL	A
		STA	!PLPTRM
		LDA	<PLXPS1
		AND	#01E00H
		ORA	!PLPTRM
		XBA
		STA	!PLPTRM
;// 03.08.28 //		LSR	A
;// 03.08.28 //		STA	<WORK0
;// 03.08.28 //;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
;// 03.08.28 //		LDA	<MPDTNO
;// 03.08.28 //		AND	#01000000B
;// 03.08.28 //		ORA	<WORK0
;// 03.08.28 //		TAX
;// 03.08.28 //		LDA	>GNDTBL,X
;// 03.08.28 //		ORA	#080H
;// 03.08.28 //		STA	>GNDTBL,X	; grand map on/off table set
GDMV360		EQU	$
		JSL	>SPOJCNG	; spacial OBJ change check
;
		JSR	GNDSCL		; gamen scroll check
;
		LDA	<SLMODE
		CMP	#MD_evply
		BEQ	GDMV380		; event ?
;					; no
		JSL	>GDRCHK		; ground door check
;
;;;;;;;;;		JSL	>SGTOPCK	; shiro-gate open check
;
		JSL	>YMCGCNG	;
;
		JSR	GNDMVCK		; ground move check
		BRA	GDMV400
;
GDMV380		EQU	$
		JSR	EVTMVCK		; event move check
GDMV400		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;// 03.06.13 //;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;// 03.06.13 //		LDA	<KEYA1L+1
;// 03.06.13 //		AND	#00010000B
;// 03.06.13 //		BEQ	GDMV600		; [R] key on ?
;// 03.06.13 //;					; yes
;// 03.06.13 //		LDA	<KEYA1L+1
;// 03.06.13 //		ASL	A
;// 03.06.13 //		BCC	GDMV600		; [A] key on ?
;// 03.06.13 //;					; yes
;// 03.06.13 //		LDA	<KEYA2+1
;// 03.06.13 //		AND	#00001111B
;// 03.06.13 //		BEQ	GDMV600		; goto danjyon ?
;// 03.06.13 //;					; yes
;// 03.06.13 //		TAX
;// 03.06.13 //		LDA	>GOPOSFD,X
;// 03.06.13 //		STA	!GOPOSF		; goto pos. set
;// 03.06.13 //		LDA	#MD_wpout
;// 03.06.13 //		STA	<SLMODE
;// 03.06.13 //		LDA	#MD_djint
;// 03.06.13 //		STA	!NXSLMD
;// 03.06.13 //		STZ	<GAMEMD
;// 03.06.13 //		STZ	<JRSBPT
;// 03.06.13 //;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GDMV640		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Ground  move check			(GNDMVCK)	*
;************************************************************************
RMRSDT		EQU	$		; room point reset data
;			  0    1    2    3    4    5    6    7
		BYTE	000H,000H,002H,003H,003H,005H,005H,007H
		BYTE	000H,000H,00AH,003H,003H,005H,005H,00FH
		BYTE	010H,011H,012H,013H,014H,015H,016H,017H
		BYTE	018H,018H,01AH,01BH,01BH,01DH,01EH,01EH
		BYTE	018H,018H,022H,01BH,01BH,025H,01EH,01EH
		BYTE	028H,029H,02AH,02BH,02CH,02DH,02EH,02FH
		BYTE	030H,030H,032H,033H,034H,035H,035H,037H
		BYTE	030H,030H,03AH,03BH,03CH,035H,035H,03FH
;
;
SCRRD00		EQU	$		; SCRPNT reset data (right move)
		WORD	00F80H
SCRRD10		EQU	$		; SCRPNT reset data (left move)
		WORD	00F80H
SCRRD20		EQU	$		; SCRPNT reset data (down move)
		WORD	0003FH
SCRRD30		EQU	$		; SCRPNT reset data (up move)
		WORD	0003FH
;
SCRRD02		EQU	$		; SCRPNT reset data (right move)
		WORD	00060H,00060H,00060H,00060H,00060H,00060H,00060H,00060H
		WORD	00060H,00060H,00060H,01060H,01060H,01060H,01060H,00060H
		WORD	00060H,00060H,00060H,00060H,00060H,00060H,00060H,00060H
		WORD	00060H,00060H,00060H,00060H,00060H,00060H,00060H,00060H
		WORD	00060H,00060H,00060H,01060H,01060H,00060H,01060H,01060H
		WORD	00060H,00060H,00060H,00060H,00060H,00060H,00060H,00060H
		WORD	00060H,00060H,00060H,00060H,00060H,00060H,00060H,00060H
		WORD	00060H,00060H,00060H,00060H,00060H,01060H,01060H,00060H
;
SCRRD12		EQU	$		; SCRPNT reset data (left move)
		WORD	00080H,00080H,00040H,00080H,00080H,00080H,00080H,00040H
		WORD	01080H,01080H,00040H,01080H,01080H,01080H,01080H,00040H
		WORD	00040H,00040H,00040H,00040H,00040H,00040H,00040H,00040H
		WORD	00080H,00080H,00040H,00080H,00080H,00040H,00080H,00080H
		WORD	01080H,01080H,00040H,01080H,01080H,00040H,01080H,01080H
		WORD	00040H,00040H,00040H,00040H,00040H,00040H,00040H,00040H
		WORD	00080H,00080H,00040H,00040H,00040H,00080H,00080H,00040H
		WORD	01080H,01080H,00040H,00040H,00040H,01080H,01080H,00040H
;
SCRRD22		EQU	$		; SCRPNT reset data (down move)
		WORD	01800H,01840H,01800H,01800H,01840H,01800H,01840H,01800H
		WORD	01800H,01840H,01800H,01800H,01840H,01800H,01840H,01800H
		WORD	01800H,01800H,01800H,01800H,01800H,01800H,01800H,01800H
		WORD	01800H,01840H,01800H,01800H,01840H,01800H,01800H,01840H
		WORD	01800H,01840H,01800H,01800H,01840H,01800H,01800H,01840H
		WORD	01800H,01800H,01800H,01800H,01800H,01800H,01800H,01800H
		WORD	01800H,01840H,01800H,01800H,01800H,01800H,01840H,01800H
		WORD	01800H,01840H,01800H,01800H,01800H,01800H,01840H,01800H
;
SCRRD32		EQU	$		; SCRPNT reset data (up move)
		WORD	02000H,02040H,01000H,02000H,02040H,02000H,02040H,01000H
		WORD	02000H,02040H,01000H,02000H,02040H,02000H,02040H,01000H
		WORD	01000H,01000H,01000H,01000H,01000H,01000H,01000H,01000H
		WORD	02000H,02040H,01000H,02000H,02040H,01000H,02000H,02040H
		WORD	02000H,02040H,01000H,02000H,02040H,01000H,02000H,02040H
		WORD	01000H,01000H,01000H,01000H,01000H,01000H,01000H,01000H
		WORD	02000H,02040H,01000H,01000H,01000H,02000H,02040H,01000H
		WORD	02000H,02040H,01000H,01000H,01000H,02000H,02040H,01000H
;
;
GPTREPD0	EQU	$
		WORD	00002H,0FFFEH,00010H,0FFF0H
GPTREPD		EQU	$
		WORD	0FFF0H,00010H,0FFFEH,00002H
;
;
;
RMSZD0		EQU	$		; room size data-0
		BYTE	020H,020H,000H,020H,020H,020H,020H,000H
		BYTE	020H,020H,000H,020H,020H,020H,020H,000H
		BYTE	000H,000H,000H,000H,000H,000H,000H,000H
		BYTE	020H,020H,000H,020H,020H,000H,020H,020H
		BYTE	020H,020H,000H,020H,020H,000H,020H,020H
		BYTE	000H,000H,000H,000H,000H,000H,000H,000H
		BYTE	020H,020H,000H,000H,000H,020H,020H,000H
		BYTE	020H,020H,000H,000H,000H,020H,020H,000H
;
RMSZD1		EQU	$		; room size data-1
		BYTE	003H,003H,001H,003H,003H,003H,003H,001H
		BYTE	003H,003H,001H,003H,003H,003H,003H,001H
		BYTE	001H,001H,001H,001H,001H,001H,001H,001H
		BYTE	003H,003H,001H,003H,003H,001H,003H,003H
		BYTE	003H,003H,001H,003H,003H,001H,003H,003H
		BYTE	001H,001H,001H,001H,001H,001H,001H,001H
		BYTE	003H,003H,001H,001H,001H,003H,003H,001H
		BYTE	003H,003H,001H,001H,001H,003H,003H,001H
;
;
GCCKYD		EQU	$		; ground charcater y-pos. check data
PLRPDY		EQU	$
SCVU0DT		EQU	$
		WORD	00000H,00000H,00000H,00000H,00000H,00000H,00000H,00000H
		WORD	00000H,00000H,00200H,00000H,00000H,00000H,00000H,00200H
		WORD	00400H,00400H,00400H,00400H,00400H,00400H,00400H,00400H
		WORD	00600H,00600H,00600H,00600H,00600H,00600H,00600H,00600H
		WORD	00600H,00600H,00800H,00600H,00600H,00800H,00600H,00600H
		WORD	00A00H,00A00H,00A00H,00A00H,00A00H,00A00H,00A00H,00A00H
		WORD	00C00H,00C00H,00C00H,00C00H,00C00H,00C00H,00C00H,00C00H
		WORD	00C00H,00C00H,00E00H,00E00H,00E00H,00C00H,00C00H,00E00H
;
GCCKXD		EQU	$		;                  x-pos. check data
PLRPDX		EQU	$
SCVU4DT		EQU	$
		WORD	00000H,00000H,00400H,00600H,00600H,00A00H,00A00H,00E00H
		WORD	00000H,00000H,00400H,00600H,00600H,00A00H,00A00H,00E00H
		WORD	00000H,00200H,00400H,00600H,00800H,00A00H,00C00H,00E00H
		WORD	00000H,00000H,00400H,00600H,00600H,00A00H,00C00H,00C00H
		WORD	00000H,00000H,00400H,00600H,00600H,00A00H,00C00H,00C00H
		WORD	00000H,00200H,00400H,00600H,00800H,00A00H,00C00H,00E00H
		WORD	00000H,00000H,00400H,00600H,00800H,00A00H,00A00H,00E00H
		WORD	00000H,00000H,00400H,00600H,00800H,00A00H,00A00H,00E00H
;
;
;
GNDMVCK		EQU	$
		LDA	!GDWTFG
		BEQ	GDMCK20		; write ?
;					; yes
		JSR	MPMAIN
GDMCK20		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYMVC
		AND	#000FFH
		BEQ	GDMCK40		; y-move ?
;					; yes
		LDA	<PWORK1
		AND	#0000CH
		STA	<WORK0
		LDX	!PLPTRM
		LDA	<PLYPS1
		SEC
		SBC	>PLRPDY,X
		LDY	#006H
		LDX	#008H
		CMP	#00004H
		BCC	GDMCK80		; up-scroll ?
;					; no
		LDY	#004H
		LDX	#004H
		CMP	!GRMSZ1
		BCS	GDMCK80		; down-scroll ?
;					; no
GDMCK40		EQU	$
		LDA	<PLXMVC
		AND	#000FFH
		BEQ	GDMCK200	; x-move ?
;					; yes
GDMCK60		EQU	$
		LDA	!GRMSZ1
		CLC
		ADC	#00004H
		STA	<WORK2
		LDA	<PWORK1
		AND	#00003H
		STA	<WORK0
		LDX	!PLPTRM
		LDA	<PLXPS1
		SEC
		SBC	>PLRPDX,X
		LDY	#002H
		LDX	#002H
		CMP	#00006H
		BCC	GDMCK80		; left-scroll ?
;					; no
		LDY	#000H
		LDX	#001H
		CMP	<WORK2
		BCC	GDMCK200	; right-scroll ?
;					; yes
GDMCK80		EQU	$
		CPX	<WORK0
		BEQ	GDMCK300	; muki ok ?
;					; no
GDMCK200	EQU	$
		JSL	>GEVTCHK1	; goto event check
		RTS
;
;
GDMCK300	EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>PLJSCK		; player haiin check
		BCS	GDMCK200	; scroll ok ?
;					; yes
		STY	<WORK2
		STZ	<WORK3
;
		JSR	PFLGCL		; player flag clear
;
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDX	<WORK2
		LDA	<SCRPNT
		AND	>SCRRD00,X
		STA	<SCRPNT
		LDA	!PLPTRM
		CLC
		ADC	>GPTREPD0,X
		PHA			; (A) push
;
		STA	<WORK4
		TXA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ORA	<WORK4
		TAX
		LDA	<SCRPNT
		CLC
		ADC	>SCRRD02,X
		STA	<SCRPNT
;
		PLA			; (A) pull
		LSR	A
		TAX
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<MPDTNO
		PHA			; (A) push
		CMP	#02AH
		BNE	GDMCK310	; okarina ?
;					; yes
;// 03.09.25 //		LDA	!SVSND1
;// 03.09.25 //		CMP	#00BH
;// 03.09.25 //		BNE	GDMCK310	; sound off ?
;// 03.09.25 //;					; yes
		LDA	#080H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1		; <sound1>
GDMCK310	EQU	$
		LDA	<MPDTNO
		CMP	#068H
		BNE	GDMCK315	; anahori-ya ?
;					; yes
		LDA	!SVSND0
		CMP	#00EH
		BNE	GDMCK315	; sound change ?
;					; yes
		LDA	#009H
		STA	!SOUND0		; <sound0>
GDMCK315	EQU	$
		LDA	<MPDTNO
;;;;;;;;		AND	#10111111B
		CMP	#018H
		BNE	GDMCK320	; machi ?
;					; yes
		LDA	>MODTBL0
		CMP	#003H
		BCS	GDMCK320	; kou-han ?
;					; no
		LDA	#0F1H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
GDMCK320	EQU	$
		LDA	>RMRSDT,X
		ORA	>GDTRPF
		STA	<MPDTNO
		STA	!GRNDNO		; room point set
;;;;;;;;		AND	#10111111B
		CMP	#018H
		BNE	GDMCK330	; machi ?
;					; yes
		LDA	>MODTBL0
		CMP	#003H
		BCS	GDMCK330	; kou-han ?
;					; no
		LDA	#0F1H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0
GDMCK330	EQU	$
		JSR	GDMCK800	; information ram set
;
		LDA	#001H		;[[[  03.12.18  ]]]
		STA	<GAMEMD		;[[[  03.12.18  ]]]
;?? 03.12.18 ??		INC	<GAMEMD
;
		LDA	<WORK0
		STA	!SCRLMD
		STA	!GDWTFG
		LDX	#004H
GDMCK340	EQU	$
		DEX
		LSR	A
		BCC	GDMCK340	; (c) on ?
;					; yes
		STX	!SCRLFG
		STX	!GATMFG		;// 02.08.27 //
		STZ	!GDRBF0
		STZ	!GDRBF1		; ground door open point claer
		STZ	!PSCCCT
;
		PLA			; (A) pull
		AND	#00111111B
		BEQ	GDMCK360	; check ?
;					; no
		LDA	<MPDTNO
		AND	#10111111B
		BNE	GDMCK380	; mozaiku scroll ?
;					; yes
GDMCK360	EQU	$
		STZ	<JRSBPT
		LDA	#p2_fout
		STA	<GAMEMD		; mozaiku fade-out
		LDA	#00000H
		STA	<MD2106
		STA	>MZKCNT
		RTS
;
GDMCK380	EQU	$
		LDX	<MPDTNO
		LDA	>ROJCTBL,X
		STA	<WORK0		; (work0) <-- Obj. CG. pointer
		LDA	>CGPTDT,X
		JSL	>GCGCHNG	; CG. reset
		JSR	CGWKST2		; (CGWORK) set
		RTS
;
;
GDMCK800	EQU	$
		LDX	<MPDTNO
		STZ	!CCHGPT
		LDA	>ROBJTBL,X
		STA	!ROBJCPT
		LDA	>RBGCDT,X
		STA	!RBGCPT		; reset OBJ,BG. character point set
;
		TXA
		AND	#03FH
		TAX
		LDA	!GRMSZ0
		STA	!GRMSZ0B
		LDA	>RMSZD0,X
		STA	!GRMSZ0
		LDA	>RMSZD1,X
		STA	!GRMSZ1+1
;
		LDY	#020H
		LDX	#000H
		LDA	<MPDTNO
		AND	#01000000B
		BEQ	GDMCK820	; omote ?
;					; yes
		INY
		LDX	#008H
GDMCK820	EQU	$
		STY	!CHIKNO
		LDA	>BGCBDT0+6,X
		STA	!OJBSPT
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<MPDTNO
		AND	#000BFH
		ASL	A
		TAX
		LDA	>GCCKYD,X
		STA	!GCCKY0
		LDA	>GCCKXD,X
		LSR	A
		LSR	A
		LSR	A
		STA	!GCCKX0
;
		LDA	#003F0H
		LDX	!GRMSZ0
		BNE	GDMCK840	; 4x4 room ?
;					; no
		LDA	#001F0H
GDMCK840	EQU	$
		STA	!GCCKY1
		LSR	A
		LSR	A
		LSR	A
		STA	!GCCKX1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Event  move check			(EVTMVCK)	*
;************************************************************************
EVTMVCK		EQU	$
		LDA	!GDWTFG
		BEQ	EVMCK40		; write ?
;					; yes
		JSR	MPMAIN
EVMCK40		EQU	$
		JSL	>EEVTCHK	; exit event check
;
;// 03.08.08 //		LDA	<MPDTNO
;// 03.08.08 //		CMP	#081H
;// 03.08.08 //		BNE	EVMCK80		; goto event check ?
;// 03.08.08 //;					; yes
;// 03.08.08 //		JSL	>GEVTCHK1
;// 03.08.08 //EVMCK80		EQU	$
		RTS
;
;
;
;************************************************************************
;*		BG. character change - 0		(BGCCHG8)	*
;************************************************************************
BGCCHG8		EQU	$
		LDA	>GNDTBL+03BH
		AND	#11011111B
		STA	>GNDTBL+03BH
		LDA	>GNDTBL+03BH+040H
		AND	#11011111B
		STA	>GNDTBL+03BH+040H
;
		LDA	>DJNTBL+10BH*2
		AND	#01111111B
		STA	>DJNTBL+10BH*2
		LDA	>DJNTBL+028H*2+1
		AND	#11111110B
		STA	>DJNTBL+028H*2+1
;
		JSL	>CHRCBS0	; BG.Obj. change character buffer set
;
		JSL	>BGCHCNG	; BG. character buffer set
;
		LDA	#bgw9
		BRA	BGCCHGA
;
;
;************************************************************************
;*		BG. character change - 1		(BGCCHG9)	*
;************************************************************************
BGCCHG9		EQU	$
		LDA	#bgwA
BGCCHGA		EQU	$
		STA	<BGWTFG
		STA	!GMAPDF
		INC	<GAMEMD
		RTS
;
;
;
;************************************************************************
;*		Ground  next all write			(GNDAWT)	*
;************************************************************************
GNDAWT		EQU	$
		STZ	!KMKCPT
		STZ	!KMKCPT+1
		JSR	GNXBGWT		; gorund next data get
		INC	!GMAPDF
;
                JSR	WTVRAM          ; write
;
		JSL	>OJCHCNG	; BG. buffer set
;
		RTS
;
;
;
;************************************************************************
;*		Ground  scroll				(GDSCRL)	*
;************************************************************************
GDSCRL		EQU	$
		JSL	>PYCRCN		; player character change
;
		JSL	>CHRCHNG	; OBJ. character change
;
		JSR	GSLCHK		; scroll
		AND	#00FH
		BEQ	GSCL040		; BG. write ?
;					; no
		RTS
;
GSCL040		EQU	$
		JMP	GSCL140
;// 03.07.02 //		JSR	GSCL140
;// 03.07.02 //;
;// 03.07.02 //		REP	#00100000B	; memory 16bit mode
;// 03.07.02 //;
;// 03.07.02 //		LDA	<SCRPNT
;// 03.07.02 //		STA	>SRPTBK
;// 03.07.02 //;
;// 03.07.02 //		SEP	#00100000B	; memory 8bit mode
;// 03.07.02 //		RTS
;
;
GSCL100		EQU	$
		LDA	!SCRLFG
		CMP	#001H
		BNE	GSCL101		; down scroll ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCCV2
		CLC
		ADC	#00002H
		STA	<SCCV2
		LDA	<PLYPS1
		CLC
		ADC	#00002H
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
GSCL101		EQU	$
		JSL	>GREDST		; ground enemy set
;
		STZ	!GDMMPT
		STZ	!GDMMPT+1
;
		LDA	>MODTBL0
		CMP	#002H
		BCS	GSCL103		; rain ?
;					; yes
GSCL102		EQU	$
		JMP	GSCL120
;
;
;
GSCL103		EQU	$
		LDA	<GAMEMD
		CMP	#p2_mzsl
		BEQ	GSCL102		; mozaiku scroll ?
;					; no
;// 03.07.31 //		STZ	<DPSUB
;// 03.07.31 //;
;// 03.07.31 //		MEM16
;// 03.07.31 //		IDX16
;// 03.07.31 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.31 //;
;// 03.07.31 //		STZ	!GDMMPT		; ground memory buffer pointer clear
;// 03.07.31 //;
;// 03.07.31 //		LDX	#01D46H
;// 03.07.31 //		LDA	<MPDTN1
;// 03.07.31 //		CMP	#000B5H
;// 03.07.31 //		BEQ	GSCL105		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		LDX	#01E87H
;// 03.07.31 //		LDA	<MPDTNO
;// 03.07.31 //;// 03.04.18 //		CMP	#00080H
;// 03.07.31 //;// 03.04.18 //		BCC	GSCL103		; spot ?
;// 03.07.31 //;// 03.04.18 //;					; yes
;// 03.07.31 //;// 03.04.18 //		LDA	<RMXYCT
;// 03.07.31 //;// 03.04.18 //		CMP	#00180H
;// 03.07.31 //;// 03.04.18 //		BNE	GSCL105		; mori-spot ?
;// 03.07.31 //;// 03.04.18 //;					; no
;// 03.07.31 //;// 03.04.18 //		LDX	#015E5H
;// 03.07.31 //;// 03.04.18 //		BRA	GSCL105
;// 03.07.31 //;// 03.04.18 //;
;// 03.07.31 //;// 03.04.18 //GSCL103		EQU	$
;// 03.07.31 //		AND	#00040H
;// 03.07.31 //		BEQ	GSCL105		; omote ?
;// 03.07.31 //;					; no
;// 03.07.31 //		LDX	#00230H
;// 03.07.31 //GSCL105		EQU	$
;// 03.07.31 //		TXA
;// 03.07.31 //		STA	>CGWORK+000H
;// 03.07.31 //		STA	>CGRAM+000H
;// 03.07.31 //		LDA	#04020H
;// 03.07.31 //		STA	<WD2132R
;// 03.07.31 //		LDA	#08040H
;// 03.07.31 //		STA	<WD2132G
;// 03.07.31 //;
;// 03.07.31 //		JSR	GD2132SET	; ground 2132H set
		JSL	>KCOLSET	; kotei-color set
;
;// 03.07.31 //		MEM16
;// 03.07.31 //		IDX16
;// 03.07.31 //		REP	#00110000B	; memory,index 16bit mode
;// 03.07.31 //;
;// 03.07.31 //		LDA	<MPDTNO
;// 03.07.31 //		AND	#000BFH
;// 03.07.31 //		CMP	#00003H
;// 03.07.31 //		BEQ	GSCL106		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00005H
;// 03.07.31 //		BEQ	GSCL106		; yama ?
;// 03.07.31 //;					; no
;// 03.07.31 //		CMP	#00007H
;// 03.07.31 //		BNE	GSCL1061	; yama ?
;// 03.07.31 //;					; yes
;// 03.07.31 //GSCL106		EQU	$
;// 03.07.31 //		INC	<DPSUB
;// 03.07.31 //GSCL1061	EQU	$
;// 03.07.31 //		LDA	<MPDTNO
;// 03.07.31 //		CMP	#0005BH
;// 03.07.31 //		BNE	GSCL110		; piramido ?
;// 03.07.31 //;					; yes
;// 03.07.31 //		INC	<DPSUB
;// 03.07.31 //		LDA	!SCRLMD
;// 03.07.31 //		AND	#000FFH
;// 03.07.31 //		CMP	#00008H
;// 03.07.31 //		BEQ	GSCL110		; up scroll ?
;// 03.07.31 //;					; no
;// 03.07.31 //		LDA	<SCCH2
;// 03.07.31 //		AND	#000FFH
;// 03.07.31 //		LSR	A
;// 03.07.31 //		STA	<WORK0
;// 03.07.31 //		LDA	<SCCH2
;// 03.07.31 //		AND	#0FF00H
;// 03.07.31 //		ORA	<WORK0
;// 03.07.31 //		STA	<SCCH1
;// 03.07.31 //		LDA	#00640H
;// 03.07.31 //		STA	<SCCV1
;// 03.07.31 //;
;// 03.07.31 //		LDX	#04F33H
;// 03.07.31 //		LDY	#0894FH
;// 03.07.31 //GSCL107		EQU	$
;// 03.07.31 //		STX	<WD2132R
;// 03.07.31 //		STY	<WD2132G
;// 03.07.31 //;
;// 03.07.31 //		LDA	#00000H
;// 03.07.31 //		STA	>CGWORK+000H
;// 03.07.31 //		STA	>CGRAM+000H
;// 03.07.31 //;
;// 03.07.31 //GSCL110		EQU	$
;// 03.07.31 //		MEM8
;// 03.07.31 //		IDX8
;// 03.07.31 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.07.31 //;
;// 03.07.31 //		INC	<CGVMAF
GSCL120		EQU	$
		INC	<GAMEMD
;
		LDX	!SCRLMD
		CPX	#004H
		BCC	GSCL180		; up,down ?
;					; yes
GSCL140		EQU	$
		STX	!GDWTFG
		JSR	GSLBGWT		; scroll write
		STZ	!GDWTFG
GSCL180		EQU	$
		RTS
;
;
GSCL400		EQU	$
		LDX	<MPDTNO
		LDA	>MPSIZE,X
		BEQ	GSCL405		; small ?
;					; yes
		LDX	!SCRLMD
		STX	!GDWTFG
		JSR	GSLBGWT		; scroll write
		STZ	!GDWTFG
GSCL405		EQU	$
		INC	<JRSBPT
		LDA	<JRSBPT
		CMP	#008H
		BCC	GSCL440		; end ?
;					; yes
		LDX	!SCRLMD
		CPX	#008H
		BEQ	GSCL410		; up move ?
;					; no
		CPX	#002H
		BNE	GSCL420		; left move ?
;					; yes
GSCL410		EQU	$
		CMP	#009H
		BCC	GSCL440		; end ?
;					; yes
GSCL420		EQU	$
		STZ	<JRSBPT
		STZ	!SCRLMD
;
		LDX	<MPDTNO
		LDA	>MPSIZE,X
		BEQ	GSCL430		; small ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>SRPTSB
		STA	<SCRPNT
		LDA	>XWRTSB
		STA	<XWRITE
		LDA	>YWRTSB
		STA	<YWRITE
;// 03.07.02 //		LDA	>SRPTBK
;// 03.07.02 //		STA	<SCRPNT
;// 03.07.02 //		SEC
;// 03.07.02 //		SBC	#00400H
;// 03.07.02 //		AND	#00F80H
;// 03.07.02 //		ASL	A
;// 03.07.02 //		XBA
;// 03.07.02 //		STA	<YWRITE
;// 03.07.02 //		LDA	<SCRPNT
;// 03.07.02 //		SEC
;// 03.07.02 //		SBC	#00010H
;// 03.07.02 //		AND	#0003EH
;// 03.07.02 //		LSR	A
;// 03.07.02 //		STA	<XWRITE
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
GSCL430		EQU	$
		INC	<GAMEMD
;
		JSL	>BMCLER2	; option clear
GSCL440		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		GROUND Door exit move			(GDEXTMV)	*
;************************************************************************
GDEXTMV		EQU	$
		JSL	>PYCRCN1	; player character change
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		CLC
		ADC	#00001H
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
;// 03.03.14 //		LDA	#001H
;// 03.03.14 //		STA	<PLYMVC		; Y-move counter
;// 03.03.14 //		JSR	GNDSCL		; gamen scroll check
;// 03.03.14 //;
;// 03.03.14 //		LDA	!GDWTFG
;// 03.03.14 //		BEQ	GDETM60		; write ?
;// 03.03.14 //;					; yes
;// 03.03.14 //		LDA	<SLMODE
;// 03.03.14 //		CMP	#MD_evply
;// 03.03.14 //		BEQ	GDETM40		; event ?
;// 03.03.14 //;					; no
;// 03.03.14 //		JSR	MPMAIN		; ground write
;// 03.03.14 //		BRA	GDETM60
;// 03.03.14 //;
;// 03.03.14 //GDETM40		EQU	$
;// 03.03.14 //		JSR	MPMAIN		; event write
;// 03.03.14 //GDETM60		EQU	$
;// 02.08.27 //		DEC	!SCRLFG
		DEC	!GATMCT
		BNE	GDETM80		; end ?
;					; yes
		STZ	<GAMEMD
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		CLC
		ADC	#00003H
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#003H
		STA	<PLYMVC		; Y-move counter
		JSR	GNDSCL		; gamen scroll check
;
		LDA	!GDWTFG
		BEQ	GDETM80		; write ?
;					; yes
		JSR	MPMAIN		; ground write
GDETM80		EQU	$
		RTS
;
;
;************************************************************************
;*		GROUND Door exit move			(GDEXTM1)	*
;************************************************************************
GDEXTM1		EQU	$
		JSL	>PYCRCN		; player character change
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		SEC
		SBC	#00001H
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		DEC	!GATMCT
		BNE	GDEM180		; end ?
;					; yes
		STZ	<GAMEMD
GDEM180		EQU	$
		RTS
;
;
;
;************************************************************************
;*		GROUND Door open exit move		(GDDOPEXT)	*
;************************************************************************
OPDRDT		EQU	$		; open door code data
ut4pnt0		EQU	$
		WORD	drut2,drut3,drut4,drut5
		WORD	drut6,drut7,drut8,drut9
		WORD	drutA,drutB,drutC,drutD
;
ut4pnt1		EQU	$
		WORD	dru10,dru11,dru12,dru13
		WORD	dru14,dru15,dru16,dru17
;
ut4pnt2		EQU	$		; pull big-iwa ato
		WORD	atbiw0,atbiw1,atbiw2,atbiw3
;
ut4pnt3		EQU	$		; haka (gaikotsu)
		WORD	hakut2,hakut3,hakut4,hakut5
;
ut4pnt4		EQU	$		; haka (kaidan)
		WORD	hakut6,hakut7,hakut8,hakut9
;
ut4pnt5		EQU	$		; haka
		WORD	hakut0,hakut1,hakut2,hakut3
;
ut4pnt6		EQU	$		; haka
		WORD	hakut0,hakut1,hakut6,hakut7
;
ut4pnt7		EQU	$		; pull big-iwa kaidan
		WORD	atbiw4,atbiw5,atbiw6,atbiw7
;
ut4pnt8		EQU	$		; haka (ana)
		WORD	hakutA,hakutB,hakutC,hakutD
;
ut4pnt9		EQU	$		; haka
		WORD	hakut0,hakut1,hakutA,hakutB
;
ut4pntC		EQU	$		; kazamidori
		WORD	kzbdu0,kzbdu1,kzbdu2,kzbdu3
;
;
ut4p00		EQU	ut4pnt0-OPDRDT
ut4p01		EQU	ut4pnt1-OPDRDT
ut4p02		EQU	ut4pnt2-OPDRDT
ut4p03		EQU	ut4pnt3-OPDRDT
ut4p04		EQU	ut4pnt4-OPDRDT
ut4p05		EQU	ut4pnt5-OPDRDT
ut4p06		EQU	ut4pnt6-OPDRDT
ut4p07		EQU	ut4pnt7-OPDRDT
ut4p08		EQU	ut4pnt8-OPDRDT
ut4p09		EQU	ut4pnt9-OPDRDT
ut4p0C		EQU	ut4pntC-OPDRDT
;
;
;
GDDOPEXT	EQU	$
		LDA	!DOPNCT
		CMP	#003H
		BNE	GDRW0040	; door write end ?
;					; yes
		LDA	#024H
		STA	!GATMCT
;// 02.08.27 //		STA	!SCRLFG
		STZ	!GDWTFG
		INC	<GAMEMD
		RTS
;
;
;
;************************************************************************
;*		Ground  Door write 			(GDRWRTE)	*
;************************************************************************
UT4RWT		EQU	$
		JSR	GDRW1000
		STZ	!DOPCNO
		RTL
;
UT4RWT1		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		JSR	GDRW1100
		STZ	!DOPCNO
		RTL
;
;
		MEM8
		IDX8
GDRWRTE		EQU	$
		LDA	!DOPNCT
		CMP	#003H
		BNE	GDRW0040	; door write end ?
;					; yes
		STZ	<JRSBPT
		STZ	<GAMEMD
		STZ	!GDWTFG
		RTS
;
GDRW0040	EQU	$
		LDA	!DOPCNO
		AND	#00000111B
		BEQ	GDRW0080	; check ?
;					; no
		JMP	GDRW0100
;
GDRW0080	EQU	$
GDRW1000	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.09.25 //		STZ	<WORK8
GDRW1100	EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	!GDRBF1
		LDX	!GDMMPT
		STA	>GDMMBF+000H,X
		TAX
		LDY	!DOPCNO
		LDA	OPDRDT+0,Y
		STA	>GDBUF0+000H,X
		LDX	!GDMMPT
		STA	>GDMMBF+200H,X
		LDY	#00000H
		LDX	!GDRBF1
		JSL	>GDRW0400	; vramd data set
;
		LDA	!GDRBF1
		LDX	!GDMMPT
		INC	A
		INC	A
		STA	>GDMMBF+002H,X
		LDX	!GDRBF1
		LDY	!DOPCNO
		LDA	OPDRDT+2,Y
		STA	>GDBUF0+002H,X
		LDX	!GDMMPT
		STA	>GDMMBF+202H,X
		LDY	#00002H
		LDX	!GDRBF1
		JSL	>GDRW0400	; vramd data set
;
		LDA	!GDRBF1
		LDX	!GDMMPT
		CLC
		ADC	#00080H
		STA	>GDMMBF+004H,X
		LDX	!GDRBF1
		LDY	!DOPCNO
		LDA	OPDRDT+4,Y
		STA	>GDBUF0+080H,X
		LDX	!GDMMPT
		STA	>GDMMBF+204H,X
		LDY	#00080H
		LDX	!GDRBF1
		JSL	>GDRW0400	; vramd data set
;
		LDA	!GDRBF1
		LDX	!GDMMPT
		CLC
		ADC	#00082H
		STA	>GDMMBF+006H,X
		LDX	!GDRBF1
		LDY	!DOPCNO
		LDA	OPDRDT+6,Y
		STA	>GDBUF0+082H,X
		LDX	!GDMMPT
		STA	>GDMMBF+206H,X
		LDY	#00082H
		LDX	!GDRBF1
		JSL	>GDRW0400	; vramd data set
;
;// 03.09.25 //		LDY	<WORK8
		LDY	!VRAMD
		LDA	#0FFFFH
		STA	!VRAMD+2,Y	; end code set
;
		LDA	!GDMMPT
		CLC
		ADC	#00008H
		STA	!GDMMPT
;
		INC	!DOPNCT
;
		LDA	!DOPCNO
		CMP	#00020H
		BNE	GDRW1140	; shiro door ?
;					; yes
		INC	!DOPNCT
GDRW1140	EQU	$
		PLB			; (DBR) reset
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
GDRW0100	EQU	$
		INC	!DOPCNO
		RTS
;
;
;
;// 03.07.03 //		MEM16
;// 03.07.03 //		IDX16
;// 03.07.03 //GDRW0400	EQU	$
;// 03.07.03 //		ASL	A
;// 03.07.03 //		ASL	A
;// 03.07.03 //		ASL	A
;// 03.07.03 //		STA	<WORKC
;// 03.07.03 //		STY	<WORK0
;// 03.07.03 //		TXA
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	<WORK0
;// 03.07.03 //		STA	<WORK0
;// 03.07.03 //		JSL	>GRNDOON
;// 03.07.03 //		LDY	<WORK8
;// 03.07.03 //		LDA	<WORK2
;// 03.07.03 //		XBA
;// 03.07.03 //		STA	!VRAMD+002H,Y
;// 03.07.03 //		LDA	<WORK2
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	#00020H
;// 03.07.03 //		XBA
;// 03.07.03 //		STA	!VRAMD+00AH,Y
;// 03.07.03 //		LDA	#00300H
;// 03.07.03 //		STA	!VRAMD+004H,Y
;// 03.07.03 //		STA	!VRAMD+00CH,Y
;// 03.07.03 //		LDX	<WORKC
;// 03.07.03 //		LDA	>MPUNIT+0,X
;// 03.07.03 //		STA	!VRAMD+006H,Y
;// 03.07.03 //		LDA	>MPUNIT+2,X
;// 03.07.03 //		STA	!VRAMD+008H,Y
;// 03.07.03 //		LDA	>MPUNIT+4,X
;// 03.07.03 //		STA	!VRAMD+00EH,Y
;// 03.07.03 //		LDA	>MPUNIT+6,X
;// 03.07.03 //		STA	!VRAMD+010H,Y
;// 03.07.03 //		TYA
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	#00010H
;// 03.07.03 //		STA	<WORK8
;// 03.07.03 //		RTS
;
;
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ground Mozaiku  Fade-out		(GMFOT10)	*
;************************************************************************
GMFOT10		EQU	$
		JSR	MZKSET		; mozaiku set
;;;;;;;;		LDA	>CCNGCT
;;;;;;;;		LSR	A
;;;;;;;;		BCC	GFOT120		;
;;;;;;;;;					;
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		CLC
;;;;;;;;		ADC	#00010000B
;;;;;;;;		STA	>MZKCNT
;;;;;;;;GFOT120		EQU	$
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		ORA	#00000111B
;;;;;;;;		STA	<MD2106		; mozaiku set
;
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	GFOT1000	; 0 : CG. work set
		WORD	DKCGCG1		; 1 : CG. change (fade out)
		WORD	GFOT1200	; 2 : end
;
;
GFOT1000	EQU	$
		LDA	<GAMEMD
		CMP	#p2_fout
		BEQ	GFOT1020	;
;					;
		LDA	<MPDTNO
		BEQ	GFOT1040	; ken-spot ?
;					; no
GFOT1020	EQU	$
		LDA	<MPDTNO
		CMP	#02DH
		BEQ	GFOT1040	; hashi-spot ?
;					; no
		CMP	#00FH
		BEQ	GFOT1040	; taki-spot ?
;					; no
		CMP	#081H
		BEQ	GFOT1040	; taki-spot ?
;					; no
		CMP	#080H
		BEQ	GFOT1025	; ken-spot ?
;					; no
		CMP	#011H
		BEQ	GFOT1025	; mori ?
;					; no
		CMP	#010H
		BEQ	GFOT1025	; mori ?
;					; no
		CMP	#002H
		BEQ	GFOT1025	; mori ?
;					; no
		CMP	#000H
		BNE	GFOT1030	; mori ?
;					; yes
GFOT1025	EQU	$
		LDA	>GNDTBL+080H
		AND	#01000000B
		BNE	GFOT1040	; fade-out ?
;					; yes
GFOT1030	EQU	$
		LDA	#0F1H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
GFOT1040	EQU	$
		JMP	SPCH000
;
;
GFOT1200	EQU	$
		LDA	#10000000B
		STA	<BLKFLG		; blanking on
		STZ	<JRSBPT
;
		LDA	<MPDTNO
		AND	#00111111B
		BNE	GFOT1220	; mori ?
;					; yes
		LDA	#01EH
		JSL	>ITMCBFST	; mochiage-kinoko set
GFOT1220	EQU	$
		LDA	!GRNDNO
		BEQ	GFOT1240	; BG.1 write ?
;					; no
		LDA	<SLMODE
		CMP	#MD_evply
		BEQ	GFOT1240	; event ?
;					; no
		LDY	#00010110B
		LDA	#00000001B
		STY	<DPMAIN
		STA	<DPSUB
;// 03.04.17 //		LDA	#00100010B
		LDA	#10000010B
		STA	<WD2130
		LDA	#00100000B
		STA	<WD2131
;
		INC	<GAMEMD
		RTS
;
GFOT1240	EQU	$
		LDA	<GAMEMD
		CMP	#p2_fot4
		BNE	GFOT1280	; event exit ?
;					; yes
		JSR	IIT4000		; ram initial
;
		LDA	<MPDTNO
		AND	#00111111B
		BNE	GFOT1280	; mori ?
;					; yes
		LDA	#01EH
		JSL	>ITMCBFST	; mochiage-kinoko set
GFOT1280	EQU	$
		INC	<GAMEMD
		RTS
;
;
;
;************************************************************************
;*		Ground Mozaiku  Fade-out		(GMFOT20)	*
;************************************************************************
GMFOT20		EQU	$
		JSR	MZKSET		; mozaiku set
;;;;;;;;		LDA	>CCNGCT
;;;;;;;;		LSR	A
;;;;;;;;		BCC	GFOT220		;
;;;;;;;;;					;
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		CLC
;;;;;;;;		ADC	#00010000B
;;;;;;;;		STA	>MZKCNT
;;;;;;;;GFOT220		EQU	$
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		ORA	#00000111B
;;;;;;;;		STA	<MD2106		; mozaiku set
;
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	SPCH000		; 0 : CG. work set
		WORD	DKCGCG1		; 1 : CG. change (fade out)
		WORD	GFOT2200	; 2 : end
;
;
;
GFOT2200	EQU	$
		LDA	#10000000B
		STA	<BLKFLG		; blanking on
		STZ	<JRSBPT
;
		LDA	#MD_evint
		STA	<SLMODE
		STZ	<GAMEMD
		RTS
;
;
;
;************************************************************************
;*		Ground Mozaiku  Fade-out		(GMFOT30)	*
;************************************************************************
GMFOT30		EQU	$
		JSR	MZKSET		; mozaiku set
;;;;;;;;		LDA	>CCNGCT
;;;;;;;;		LSR	A
;;;;;;;;		BCC	GFOT320		;
;;;;;;;;;					;
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		CLC
;;;;;;;;		ADC	#00010000B
;;;;;;;;		STA	>MZKCNT
;;;;;;;;GFOT320		EQU	$
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		ORA	#00000111B
;;;;;;;;		STA	<MD2106		; mozaiku set
;
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	SPCH000		; 0 : CG. work set
		WORD	DKCGCG1		; 1 : CG. change (fade out)
		WORD	GFOT3200	; 2 : end
;
;
;
GFOT3200	EQU	$
		LDA	#10000000B
		STA	<BLKFLG		; blanking on
;
		JSR	IIT4000		; ram initial
;
		LDA	#MD_gdply
		STA	<SLMODE
		LDA	#p2_awt1
		STA	<GAMEMD
		STZ	<JRSBPT
		RTS
;
;
;
;************************************************************************
;*		Ground BG.1 write-0			(GB1WRT0)	*
;************************************************************************
GB1WRT2		EQU	$
		JSL	>ENGRCK		;
;
		JSL	>GREDS2		; ground enemy set
;
		STZ	!PYDMBT
		STZ	!PYDMBT1
GB1WRT0		EQU	$
		LDA	#005H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1		; <sound1>
;
;// 03.05.29 //		MEM16
;// 03.05.29 //		IDX16
;// 03.05.29 //		REP	#00110000B	; memory,index 16bit mode
;// 03.05.29 //;
;// 03.05.29 //		LDA	<MPDTNO
;// 03.05.29 //		STA	>BKMDNO
;// 03.05.29 //		LDA	<SCRPNT
;// 03.05.29 //		STA	>BKSCPT
;// 03.05.29 //		LDA	<YWRITE
;// 03.05.29 //		STA	>BKYWRT
;// 03.05.29 //		LDA	<XWRITE
;// 03.05.29 //		STA	>BKXWRT
;// 03.05.29 //		LDA	!SCRLFG
;// 03.05.29 //		STA	>BKSLFG
;// 03.05.29 //		LDA	!SCRLMD
;// 03.05.29 //		STA	>BKSLMD
;// 03.05.29 //		LDA	!GDWTFG
;// 03.05.29 //		STA	>BKGWTF
;// 03.05.29 //;
;// 03.05.29 //		STZ	<MPDTN1
;// 03.05.29 //		STZ	!SCV1CT
;// 03.05.29 //		STZ	!SCH1CT
;// 03.05.29 //;
;// 03.05.29 //		LDY	#00390H
;// 03.05.29 //		LDA	<MPDTNO
;// 03.05.29 //		CMP	#00080H
;// 03.05.29 //		BCC	GB1W040		; event ?
;// 03.05.29 //;					; yes
;// 03.05.29 //		LDX	#000B7H		; (X) <-- kiri
;// 03.05.29 //		LDA	<RMXYCT
;// 03.05.29 //		CMP	#00180H
;// 03.05.29 //		BNE	GB1W020		; mori spot ?
;// 03.05.29 //;					; yes
;// 03.05.29 //		LDX	<MPDTNO
;// 03.05.29 //		LDA	>GNDTBL,X
;// 03.05.29 //		LDX	#000B7H		; (X) <-- kiri
;// 03.05.29 //		AND	#00040H
;// 03.05.29 //		BEQ	GB1W080		; mori spot ken totsutaka ?
;// 03.05.29 //;					; yes
;// 03.05.29 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.29 //		STZ	<DPSUB
;// 03.05.29 //		INC	<GAMEMD
;// 03.05.29 //		RTS
;// 03.05.29 //;
;// 03.05.29 //GB1W020		EQU	$
;// 03.05.29 //;// 03.05.01 //		CMP	#00182H
;// 03.05.29 //;// 03.05.01 //		BEQ	GB1W080		; taki naka ?
;// 03.05.29 //;// 03.05.01 //;					; no
;// 03.05.29 //		LDY	#00430H
;// 03.05.29 //		LDX	#00088H		; (X) <-- hashi kage
;// 03.05.29 //		CMP	#00181H
;// 03.05.29 //		BEQ	GB1W080		; hashi kage ?
;// 03.05.29 //;					; no
;// 03.05.29 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.05.29 //		STZ	<DPSUB
;// 03.05.29 //		INC	<GAMEMD
;// 03.05.29 //		RTS
;// 03.05.29 //;
;// 03.05.29 //GB1W040		EQU	$
;// 03.05.29 //		AND	#0003FH
;// 03.05.29 //		BNE	GB1W060		; mori ?
;// 03.05.29 //;					; yes
;// 03.05.29 //		LDX	#00080H
;// 03.05.29 //		LDA	>GNDTBL,X
;// 03.05.29 //		LDX	#000BEH		; (X) <-- mori kokage
;// 03.05.29 //		AND	#00040H
;// 03.05.29 //		BNE	GB1W080		; mori spot ken totsutaka ?
;// 03.05.29 //;					; no
;// 03.05.29 //		LDX	#000BDH		; (X) <-- mori kiri
;// 03.05.29 //		BRA	GB1W080
;// 03.05.29 //;
;// 03.05.29 //GB1W060		EQU	$
;// 03.05.29 //		LDX	#000B5H
;// 03.05.29 //		CMP	#00003H
;// 03.05.29 //		BEQ	GB1W080		; yama ?
;// 03.05.29 //;					; no
;// 03.05.29 //		CMP	#00005H
;// 03.05.29 //		BEQ	GB1W080		; yama ?
;// 03.05.29 //;					; no
;// 03.05.29 //		CMP	#00007H
;// 03.05.29 //		BEQ	GB1W080		; yama ?
;// 03.05.29 //;					; no
;// 03.05.29 //		LDX	#000BFH		; (X) <-- rain
;// 03.05.29 //		LDA	>MODTBL0
;// 03.05.29 //		AND	#000FFH
;// 03.05.29 //		CMP	#00002H
;// 03.05.29 //		BCC	GB1W080		; rain ?
;// 03.05.29 //;					; no
;// 03.05.29 //		LDX	#000B6H		; (X) <-- piramido back
;// 03.05.29 //GB1W080		EQU	$
;// 03.05.29 //		STY	<SCRPNT
;// 03.05.29 //		STX	<MPDTNO
;// 03.05.29 //		STX	<MPDTN1
;// 03.05.29 //;
;// 03.05.29 //		LDA	<SCRPNT
;// 03.05.29 //		SEC
;// 03.05.29 //		SBC	#00400H
;// 03.05.29 //		AND	#00F80H
;// 03.05.29 //		ASL	A
;// 03.05.29 //		XBA
;// 03.05.29 //		STA	<YWRITE
;// 03.05.29 //		LDA	<SCRPNT
;// 03.05.29 //		SEC
;// 03.05.29 //		SBC	#00010H
;// 03.05.29 //		AND	#0003EH
;// 03.05.29 //		LSR	A
;// 03.05.29 //		STA	<XWRITE
;// 03.05.29 //;
;// 03.05.29 //		STZ	!SCRLFG
;// 03.05.29 //		STZ	!SCRLMD
;// 03.05.29 //		STZ	!GDWTFG
;// 03.05.29 //;
;// 03.05.29 //		MEM8
;// 03.05.29 //		IDX8
;// 03.05.29 //		SEP	#00110000B	; memory 8bit mode
;// 03.05.29 //;
;// 03.05.29 //		LDA	#10000010B
;// 03.05.29 //		STA	<WD2130
;// 03.05.29 //		LDA	#00010110B
;// 03.05.29 //		STA	<DPMAIN
;// 03.05.29 //		LDA	#00000001B
;// 03.05.29 //		STA	<DPSUB
;// 03.05.29 //		LDA	#00110010B
;// 03.05.29 //		CPX	#0B7H
;// 03.05.29 //		BEQ	GB1W090		; kiri ?
;// 03.05.29 //;					; no
;// 03.05.29 //		LDA	#01110010B
;// 03.05.29 //		CPX	#088H
;// 03.05.29 //		BEQ	GB1W090		; hashi kage ?
;// 03.05.29 //;					; no
;// 03.05.29 //		CPX	#0BDH
;// 03.05.29 //		BEQ	GB1W090		; kiri ?
;// 03.05.29 //;					; no
;// 03.05.29 //		CPX	#0BEH
;// 03.05.29 //		BEQ	GB1W090		; kiri ?
;// 03.05.29 //;					; no
;// 03.05.29 //		CPX	#0BFH
;// 03.05.29 //		BEQ	GB1W090		; kiri ?
;// 03.05.29 //;					; no
;// 03.05.29 //		LDA	#00100000B
;// 03.05.29 //		CPX	#0B5H
;// 03.05.29 //		BEQ	GB1W090		; yama ?
;// 03.05.29 //;					; no
;// 03.05.29 //		LDA	>BKMDNO
;// 03.05.29 //		TAX
;// 03.05.29 //		LDA	#00100000B
;// 03.05.29 //		CPX	#05BH
;// 03.05.29 //		BEQ	GB1W090		; piramido ?
;// 03.05.29 //;					; no
;// 03.05.29 //		STZ	<DPSUB
;// 03.05.29 //GB1W090		EQU	$
;// 03.05.29 //		STA	<WD2131
;// 03.05.29 //;
;// 03.05.29 //		JSR	MP1TOGD
;// 03.05.29 //;
;// 03.05.29 //		MEM16
;// 03.05.29 //		REP	#00100000B	; memory 16bit mode
;// 03.05.29 //;
;// 03.05.29 //		LDA	>BKMDNO
;// 03.05.29 //		STA	<MPDTNO
;// 03.05.29 //		LDA	>BKSCPT
;// 03.05.29 //		STA	<SCRPNT
;// 03.05.29 //		LDA	>BKYWRT
;// 03.05.29 //		STA	<YWRITE
;// 03.05.29 //		LDA	>BKXWRT
;// 03.05.29 //		STA	<XWRITE
;// 03.05.29 //		LDA	>BKSLFG
;// 03.05.29 //		STA	!SCRLFG
;// 03.05.29 //		LDA	>BKSLMD
;// 03.05.29 //		STA	!SCRLMD
;// 03.05.29 //		LDA	>BKGWTF
;// 03.05.29 //		STA	!GDWTFG
;// 03.05.29 //;
;// 03.05.29 //		MEM8
;// 03.05.29 //		SEP	#00100000B	; memory 8bit mode
;// 03.05.29 //		RTS
;// 03.05.29 //;
;// 03.05.29 //;
;// 03.05.29 //;
;************************************************************************
;*		Ground BG.1 write-1			(GB1WRT1)	*
;************************************************************************
GB1WRT1		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<MPDTNO
		STA	>BKMDNO
		LDA	<SCRPNT
		STA	>BKSCPT
		LDA	<YWRITE
		STA	>BKYWRT
		LDA	<XWRITE
		STA	>BKXWRT
		LDA	!SCRLFG
		STA	>BKSLFG
		LDA	!SCRLMD
		STA	>BKSLMD
		LDA	!GDWTFG
		STA	>BKGWTF
;
		STZ	<MPDTN1
		STZ	!SCV1CT
		STZ	!SCH1CT
;
		LDY	#00390H
		LDA	<MPDTNO
		CMP	#00080H
		BCC	GB1W140		; event ?
;					; yes
;// 03.08.19 //		LDX	#000B7H
		LDX	#00097H
		LDA	<RMXYCT
		CMP	#00180H
		BNE	GB1W120		; kiri ?
;					; yes
		LDX	#00080H
		LDA	>GNDTBL,X
;// 03.08.19 //		LDX	#000B7H
		LDX	#00097H
		AND	#00040H
		BNE	GB1W130		; mori spot ken totsutaka ?
;					; no
GB1W110		EQU	$
		JMP	GB1W180
;
GB1W120		EQU	$
;// 03.07.09 //		LDY	#00390H
;// 03.08.19 //		LDX	#000B4H
		LDX	#00094H
		CMP	#00181H
		BEQ	GB1W110		; hashi kage ?
;					; no
		LDX	#00093H
		CMP	#00189H
		BEQ	GB1W110		; end-polygon ?
;					; no
		CMP	#00182H
		BEQ	GB1W125		; taki ?
;					; no
		CMP	#00183H
		BNE	GB1W130		; taki ?
;					; yes
GB1W125		EQU	$
		MEM8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#001H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1		; <sound1>
GB1W130		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		STZ	<DPSUB
		INC	<GAMEMD
		RTS
;
		MEM16
GB1W140		EQU	$
		AND	#0003FH
		BNE	GB1W160		; mori ?
;					; yes
		LDA	<MPDTNO
		AND	#00040H
		BNE	GB1W150		; omote ?
;					; yes
		LDX	#00080H
		LDA	>GNDTBL,X
;// 03.08.19 //		LDX	#000BEH		; (X) <-- mori kokage
		LDX	#0009EH
		AND	#00040H
		BNE	GB1W180		; mori spot ken totsutaka ?
;					; no
GB1W150		EQU	$
;// 03.08.19 //		LDX	#000BDH		; (X) <-- mori kiri
		LDX	#0009DH
		BRA	GB1W180
;
GB1W160		EQU	$
;// 03.08.19 //		LDX	#000B5H
		LDX	#00095H
		LDA	<MPDTNO
		CMP	#00003H
		BEQ	GB1W180		; yama ?
;					; no
		CMP	#00005H
		BEQ	GB1W180		; yama ?
;					; no
		CMP	#00007H
		BEQ	GB1W180		; yama ?
;					; no
;// 03.08.19 //		LDX	#000BCH
		LDX	#0009CH
		CMP	#00043H
		BEQ	GB1W180		; yama ?
;					; no
		CMP	#00045H
		BEQ	GB1W180		; yama ?
;					; no
		CMP	#00047H
		BEQ	GB1W180		; yama ?
;					; no
		CMP	#00070H
		BNE	GB1W165		; ura-numa ?
;					; yes
		LDA	>GNDTBL+070H
		AND	#00020H
		BNE	GB1W180		; rain on ?
;					; yes
		BRA	GB1W170
;
GB1W165		EQU	$
;// 03.08.19 //		LDX	#000B6H
		LDX	#00096H
		LDA	>MODTBL0
		AND	#000FFH
		CMP	#00002H
		BCS	GB1W180		; rain ?
;					; yes
;// 03.08.19 //		LDX	#000BFH
GB1W170		EQU	$
		LDX	#0009FH
GB1W180		EQU	$
		STY	<SCRPNT
		STX	<MPDTNO
		STX	<MPDTN1
;
		LDA	<SCRPNT
		SEC
		SBC	#00400H
		AND	#00F80H
		ASL	A
		XBA
		STA	<YWRITE
		LDA	<SCRPNT
		SEC
		SBC	#00010H
		AND	#0003EH
		LSR	A
		STA	<XWRITE
;
		STZ	!SCRLFG
		STZ	!SCRLMD
		STZ	!GDWTFG
;
		MEM8
		IDX8
		SEP	#00110000B	; memory 8bit mode
;
		LDA	#10000010B
		STA	<WD2130
		LDA	#00010110B
		STA	<DPMAIN
		LDA	#00000001B
		STA	<DPSUB
		CPX	#09FH
		BNE	GB1W185		; rain ?
;					; yes
		LDA	#001H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1		; <sound1>
GB1W185		EQU	$
		LDA	#01110010B
;// 03.08.19 //		CPX	#0B7H
		CPX	#097H
		BEQ	GB1W190		; mori-spot-kiri ?
;					; no
;// 03.08.19 //		CPX	#0B4H
		CPX	#094H
		BEQ	GB1W190		; hashi kage ?
;					; no
		CPX	#093H
		BEQ	GB1W190		; end-polygon ?
;					; no
;// 03.08.19 //		CPX	#0BDH
		CPX	#09DH
		BEQ	GB1W190		; kiri ?
;					; no
;// 03.08.19 //		CPX	#0BEH
		CPX	#09EH
		BEQ	GB1W190		; kiri ?
;					; no
;// 03.08.19 //		CPX	#0BFH
		CPX	#09FH
		BEQ	GB1W190		; kiri ?
;					; no
		LDA	#00100000B
;// 03.08.19 //		CPX	#0B5H
		CPX	#095H
		BEQ	GB1W190		; yama ?
;					; no
;// 03.08.19 //		CPX	#0BCH
		CPX	#09CH
		BEQ	GB1W190		; ura-yama ?
;					; no
		LDA	>BKMDNO
		TAX
		LDA	#00100000B
		CPX	#05BH
		BEQ	GB1W190		; piramido ?
;					; no
		CPX	#01BH
		BNE	GB1W187		; piramido ?
;					; no
		LDX	<GAMEMD
		CPX	#p2_kage
		BEQ	GB1W190		;
;					;
		CPX	#p2_kgrs
		BEQ	GB1W190		;
;					;
GB1W187		EQU	$
		STZ	<DPSUB
GB1W190		EQU	$
		STA	<WD2131
;
		JSR	MP1TOGD
;
		LDA	<MPDTN1
;// 03.08.19 //		CMP	#0B4H
		CMP	#094H
		BNE	GB1W195		; hashi spot ?
;					; yes
		LDA	<SCCV1+1
		ORA	#00000001B
		STA	<SCCV1+1
GB1W195		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>BKMDNO
		STA	<MPDTNO
		LDA	>BKSCPT
		STA	<SCRPNT
		LDA	>BKYWRT
		STA	<YWRITE
		LDA	>BKXWRT
		STA	<XWRITE
		LDA	>BKSLFG
		STA	!SCRLFG
		LDA	>BKSLMD
		STA	!SCRLMD
		LDA	>BKGWTF
		STA	!GDWTFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		Ground mozaiku  Fade-in			(GMFIN10)	*
;************************************************************************
GMFIN10		EQU	$
		LDA	>CCNGCT
		LSR	A
		BCC	GFIN120		;
;					;
		LDA	>MZKCNT
		SEC
		SBC	#00010000B
		STA	>MZKCNT
GFIN120		EQU	$
		JSR	MZKSET1		; mozaiku set
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		ORA	#00000111B
;;;;;;;;		STA	<MD2106		; mozaiku set
;
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	GFIN1000	; 0 : init.
		WORD	GFIN2100	; 1 : CG. change (fade in)
		WORD	GFIN1300	; 2 : end
;
;
GFIN1000	EQU	$
		LDX	<MPDTNO
		LDA	>ROJCTBL,X
		STA	<WORK0		; (work0) <-- Obj. CG. pointer
		LDA	>CGPTDT,X
		JSL	>GCGCHNG	; CG. reset
		BRA	GFIN2000
;
;
GFIN1300	EQU	$
		LDA	!SVSND0
		STA	!SVCKF0
;
		LDA	<MPDTNO
		CMP	#080H
		BEQ	GFIN1340	; mori spot ?
;					; no
		CMP	#02AH
		BEQ	GFIN1340	; hashi spot ?
;					; no
		CMP	#00FH
		BEQ	GFIN1340	; taki spot ?
;					; no
		LDX	#002H
		CMP	#040H
		BCC	GFIN1310	; ura ?
;					; yes
		LDX	#009H
GFIN1310	EQU	$
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0		; <sound0>
		LDA	<MPDTNO
;// 03.10.03 //		AND	#01111111B
		AND	#00111111B
		BNE	GFIN1340	; mori ?
;					; yes
		LDX	#00DH
		LDA	>GDTRPF
		BNE	GFIN1330	; omote ?
;					; yes
		LDA	>GNDTBL+080H
		AND	#01000000B
		BEQ	GFIN1320	; master-sword on ?
;					; yes
		STZ	!SOUND0
		LDX	#002H
		BRA	GFIN1340
;
GFIN1320	EQU	$
		LDX	#005H
GFIN1330	EQU	$
		STX	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
GFIN1340	EQU	$
		STZ	<GAMEMD
;
		LDA	#p2_atmv
		STA	<GAMEMD
		STZ	<JRSBPT
;
		LDA	<SLMODE
		CMP	#MD_evply
		BNE	GFIN1380	; event exit ?
;					; yes
		LDA	#MD_gdply
		STA	<SLMODE
		LDA	#p2_atm1
		STA	<GAMEMD
		LDA	#00CH
		STA	!GATMCT
GFIN1380	EQU	$
		RTS
;
;
;
;************************************************************************
;		Ground mozaiku  Fade-in			(GMFIN20)	*
;************************************************************************
GMFIN20		EQU	$
		LDA	>CCNGCT
		LSR	A
		BCC	GFIN220		;
;					;
		LDA	>MZKCNT
		SEC
		SBC	#00010000B
		STA	>MZKCNT
GFIN220		EQU	$
		JSR	MZKSET1		; mozaiku set
;;;;;;;;		LDA	#00001001B
;;;;;;;;		STA	<MD2105		; BG. mode & char. size flag set
;;;;;;;;		LDA	>MZKCNT
;;;;;;;;		ORA	#00000111B
;;;;;;;;		STA	<MD2106		; mozaiku set
;
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	GFIN2000	; 0 : init.
		WORD	GFIN2100	; 1 : CG. change (fade in)
		WORD	GFIN2300	; 2 : end
;
;
GFIN2000	EQU	$
		JSL	>OJCHCNG	; Obj. character buffer set
;
		LDA	#00001111B
		STA	<BLKFLG		; blanking off
		LDA	#10000000B
		STA	<WD420C		; H-DMA ch"on"
;
		LDA	>CCNGED
		DEC	A
		STA	>CCNGCT
		LDA	#000H
		STA	>CCNGED
		LDA	#002H
		STA	>CCNGFG		; fade-in set
;
		INC	<JRSBPT
		RTS
;
;
GFIN2100	EQU	$
		JSL	>CHRCHNG	; charcater change
;
		JSL	>CGCNG1		; CG. change
		RTS
;
;
GFIN2300	EQU	$
		LDA	<MPDTNO
		CMP	#080H
		BCS	GFIN2340	; mori spot ?   [[[  03.11.29  ]]]
;					; no
		LDA	#002H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
		LDA	<MPDTNO
		AND	#00111111B
		BNE	GFIN2340	; mori ?
;					; yes
GFIN2320	EQU	$
		LDA	#005H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
GFIN2340	EQU	$
		LDA	#p2_atmv
		STA	<GAMEMD
GFIN2380	EQU	$
		STZ	<JRSBPT
		RTS
;
;
;
;************************************************************************
;		Ground Fade-in				(GMFIN40)	*
;************************************************************************
GMFIN40		EQU	$
		INC	<BLKFLG
		LDA	<BLKFLG
		CMP	#00FH
		BNE	GFIN480		; fade-in end ?
;					; yes
		STZ	<GAMEMD
		STZ	<JRSBPT
GFIN480		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Event  BG, write-0			(EVTWRT0)	*
;************************************************************************
EVTWRT0		EQU	$
		STZ	!SWMODE
;
		LDA	<SLMODE
		PHA			; (A) push
;
		LDA	<GAMEMD
		PHA			; (A) push
;
		JSR	IIT3000		; RAM initial
;
		JSR	GB1WRT2		; BG.1 write
;
		PLA			; (A) pull
		INC	A
		STA	<GAMEMD
;
		PLA			; (A) pull
		STA	<SLMODE
		RTS
;
;
;
;************************************************************************
;*		Event  BG, write-1			(EVTWRT1)	*
;************************************************************************
EVTWRT1		EQU	$
		LDA	<SLMODE
		PHA			; (A) push
;
		LDA	<GAMEMD
		PHA			; (A) push
;
		JSR	MPINT0
;
		PLA			; (A) pull
		INC	A
		STA	<GAMEMD
;
		PLA			; (A) pull
		STA	<SLMODE
		RTS
;
;
;
;
;************************************************************************
;*		Ground  BG. rewrite			(GNDRWT0)	*
;************************************************************************
GNDRWT2		EQU	$
		JSR	GNDRWT1
		RTL
;
;
GNDRWT3		EQU	$
		JSR	GB1WRT1
		DEC	<GAMEMD
		RTL
;
;
;
;
;************************************************************************
;*		Kagerou move				(KAGEROU)	*
;************************************************************************
KAGEROU		EQU	$
		JSL	>KAGE000
		RTS
;
;
KAGE000		EQU	$
		INC	!GMAPDF
;
		LDA	<JRSBPT
		JSL	>JSRSUBL
		LWORD	KAGE200		; kagerou init.
		LWORD	KAGEMV		; move
		LWORD	KAGEMV1		; move
		LWORD	KAGEMV2		; end move
		LWORD	KAGE500		; end
;
;
;
KAGE200		EQU	$
		LDA	<MPDTNO
		CMP	#080H
		BCC	KAGE240		; spot ?
;					; yes
		STZ	<GAMEMD
		STZ	<JRSBPT
		STZ	!ITEMMD
		RTL
;
KAGE240		EQU	$
		LDA	#008H
		STA	!SOUND0		; <sound0>
		STA	!SCLSFG		; scroll flag on!!
;
		LDA	#DAMG3
		STA	!PYFLASH
;
		JSL	>KAGEIT		; kagerou init.
;
		LDA	>GDTRPF
		EOR	#01000000B
		STA	>GDTRPF
		STZ	!KMKCPT
		STZ	!KMKCPT+1
;// 03.09.02 //		BEQ	KAGE260		; ura warp ?
;// 03.09.02 //;					; yes
;// 03.09.02 //		LDA	<GAMEMD
;// 03.09.02 //		CMP	#p2_kgrs
;// 03.09.02 //		BEQ	KAGE260		; reset warp ?
;// 03.09.02 //;					; no
;// 03.09.02 //		STZ	!GDMMPT
KAGE260		EQU	$
		LDA	<MPDTNO
		AND	#00111111B
		ORA	>GDTRPF
		STA	<MPDTNO
		STA	!GRNDNO		; new BG. pointer
;
		STZ	!ITEMMD
;
;;;;;;;;		JSR	MPTOGD
;
		JSL	>CTPITST	; trip CG. init set
;
		JSR	GDMCK800	; information ram set
		INC	<JRSBPT
		RTL
;
;
;
KAGE500		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#02641H
		STA	4370H		; inc. mode & B-bus address set
;
		LDX	#03EH
		LDA	#0FF00H
KAGE540		EQU	$
		STA	!HDMABF+000H,X
		STA	!HDMABF+040H,X
		STA	!HDMABF+080H,X
		STA	!HDMABF+0C0H,X
		STA	!HDMABF+100H,X
		STA	!HDMABF+140H,X
		STA	!HDMABF+180H,X
		DEX
		DEX
		BPL	KAGE540		; end ?
;					; yes
		LDA	#00000H
		STA	>CCNGCT
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>CHRCBSZ	; character buffer set
;
		LDA	#10000000B
		STA	<WD420C
;
		LDX	#004H
		LDA	>GDTRPF
		BEQ	KAGE545		; ura ?
;					; yes
		LDA	>ITMTBL4
		BEQ	KAGE550		; usagi change ?
;					; no
KAGE545		EQU	$
		LDX	#009H
		LDA	<MPDTNO
		CMP	#040H
		BCS	KAGE550		; ura ?
;					; no
;// 03.08.30 //		LDX	#004H
;// 03.08.30 //		CMP	#003H
;// 03.08.30 //		BEQ	KAGE550		; yama ?
;// 03.08.30 //;					; no
;// 03.08.30 //		CMP	#005H
;// 03.08.30 //		BEQ	KAGE550		; yama ?
;// 03.08.30 //;					; no
;// 03.08.30 //		CMP	#007H
;// 03.08.30 //		BEQ	KAGE550		; yama ?
;// 03.08.30 //;					; no
;
		LDX	#002H
		CMP	#018H
		BNE	KAGE550		; machi ?
;					; yes
		LDA	>MODTBL0
		CMP	#003H
		BCS	KAGE550		; kou-han ?
;					; no
		LDX	#007H
KAGE550		EQU	$
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0		; <sound0>
		LDA	<MPDTNO
		CMP	#040H
		BEQ	KAGE565		; ura-mori ?
;					; no
		CMP	#043H
		BEQ	KAGE560		; ura-yama ?
;					; no
		CMP	#045H
		BEQ	KAGE560		; ura-yama ?
;					; no
		CMP	#047H
		BNE	KAGE570		; ura-yama ?
;					;
KAGE560		EQU	$
		LDA	#009H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1		; <sound1>
KAGE565		EQU	$
		LDX	#00DH
		LDA	>ITMTBL4
		BNE	KAGE567		; usagi change ?
;					; yes
		LDX	#004H
KAGE567		EQU	$
		STX	!SOUND0		; <sound0>
KAGE570		EQU	$
		LDA	<GAMEMD
		STA	!NXSLMD
		STZ	<GAMEMD
		STZ	<JRSBPT
		STZ	!ITEMMD
		STZ	!GMAPDF
		RTL
;
;
;
KGBG000		EQU	$
		JSR	GB1WRT0
		LDA	<MPDTNO
		CMP	#01BH
		BEQ	KGBG040		;
;					;
		CMP	#05BH
		BNE	KGBG080		;
;					;
KGBG040		EQU	$
		LDA	#00000001B
		STA	<DPSUB
KGBG080		EQU	$
		RTL
;
;
KGBG100		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCRPNT
		PHA			; (A) push
		LDA	<XWRITE
		PHA			; (A) push
		LDA	<YWRITE
		PHA			; (A) push
;
		LDX	<MPDTNO
		LDA	>MPSIZE,X
		AND	#000FFH
		BEQ	KGBG120		; small ?
;					; yes
		LDA	#00390H
		STA	<SCRPNT
		SEC
		SBC	#00400H
		AND	#00F80H
		ASL	A
		XBA
		STA	<YWRITE
		LDA	<SCRPNT
		SEC
		SBC	#00010H
		AND	#0003EH
		LSR	A
		STA	<XWRITE
KGBG120		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSR	MPTOGD
;
		LDA	<GAMEMD
		CMP	#p2_kgrs
		BNE	KGBG140		; kagerou reset ?
;					; yes
		JSR	GDMMRST		; ground memory buffer reset
KGBG140		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PLA			; (A) pull
		STA	<YWRITE
		PLA			; (A) pull
		STA	<XWRITE
		PLA			; (A) pull
		STA	<SCRPNT
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTL
;
;
KGBG200		EQU	$
		LDA	#DAMG3
		STA	!PYFLASH
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCRPNT
		PHA			; (A) push
		LDA	<XWRITE
		PHA			; (A) push
		LDA	<YWRITE
		PHA			; (A) push
;
		LDA	#0FFFFH
		STA	<CWORK0
		STZ	<CWORK2
		STZ	<CWORK4
;
		LDX	<MPDTNO
		LDA	>MPSIZE,X
		AND	#000FFH
		BEQ	KGBG210		; small ?
;					; yes
		LDA	#00390H
		STA	<SCRPNT
		SEC
		SBC	#00400H
		AND	#00F80H
		ASL	A
		XBA
		STA	<YWRITE
		LDA	<SCRPNT
		SEC
		SBC	#00010H
		AND	#0003EH
		LSR	A
		STA	<XWRITE
KGBG210		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
;// 03.07.01 //		JSL	>ROBJCST	; Obj. character table set
;
		JSR	MPALST		; ground all write
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PLA			; (A) pull
		STA	<YWRITE
		PLA			; (A) pull
		STA	<XWRITE
		PLA			; (A) pull
		STA	<SCRPNT
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;// 03.05.29 //		JSL	>CHRCBS0	; character buffer set
;
		JSR	INCLST1		; initial BG color set
		LDX	<MPDTNO
		LDA	>ROJCTBL,X
		STA	<WORK0		; (work0) <-- Obj. CG. pointer
		LDA	>CGPTDT,X
		JSL	>GCGCHNG	; ground cg. set
;
		JSL	>NKCGST1	; nuki
;
		JSL	>KCOLSET	; kotei-color set
		LDA	<MPDTNO
		CMP	#01BH
		BEQ	KGBG240		;
;					;
		CMP	#05BH
		BNE	KGBG250		;
;					;
KGBG240		EQU	$
		LDA	#00000001B
		STA	<DPSUB
KGBG250		EQU	$
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
		LDA	#07FFFH
KGBG260		EQU	$
		STA	>CGWORK+040H,X
		STA	>CGWORK+060H,X
		STA	>CGWORK+080H,X
		STA	>CGWORK+0A0H,X
		STA	>CGWORK+0C0H,X
		STA	>CGWORK+0E0H,X
		INX
		INX
		CPX	#020H
		BNE	KGBG260		;
;					;
		STA	>CGWORK+000H
;
		LDA	<MPDTNO
		CMP	#0005BH
		BNE	KGBG270		; piramido ?
;					; yes
		LDA	#00000H
		STA	>CGWORK+000H
		STA	>CGWORK+040H
KGBG270		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
;
		JSL	>ALCLER		; enemy clear
		JSL	>GREDS2		; ground enemy set
;
		JSL	>PYDMCLR	; player demo claer
		JSR	PFLGCL		; player flag clear
;
		LDA	#TRFS
		STA	<LNMODE
;
		LDA	<MPDTNO
		AND	#040H
		BNE	KGBG280		; omote ?
;					; yes
		JSL	>HYUSET
KGBG280		EQU	$
		RTL
;
;
;// 03.10.07 //;-----------------------------------------
;// 03.10.07 //KGRSCK		EQU	$
;// 03.10.07 //		LDA	!NXSLMD
;// 03.10.07 //		CMP	#p2_kage
;// 03.10.07 //		BNE	KGRS80		; reset ?
;// 03.10.07 //;					; yes
;// 03.10.07 //		STZ	!GDMMPT
;// 03.10.07 //		STZ	!GDMMPT+1
;// 03.10.07 //KGRS80		EQU	$
;// 03.10.07 //		RTL
;
;
;
;
;
;************************************************************************
;*		Ground Kiri  Fade-out			(KIRIFD)	*
;************************************************************************
KIRIFD		EQU	$
		JSL	>KCGCNG		; kiri fade-out
;
;************************************************************************
;*		Kazamidori move				(KZBIRD)	*
;************************************************************************
KZBIRD		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Ground Warp				(GDWARP)	*
;************************************************************************
GDWARP		EQU	$
		INC	!GMAPDF
;
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	GWRP000		; 00 : warp init.
		WORD	GWRP200		; 01 : move
		WORD	GWRP250		; 02 : wait
		WORD	GWRP400		; 03 : next set
		WORD	GWRP450		; 04 : next set
		WORD	GWRP500		; 05 : BG. write
		WORD	GWRP550		; 06 : BG. write
		WORD	GWRP600		; 07 : character change
		WORD	GWRP700		; 08 : character change
		WORD	GWRP750		; 09 : character change
		WORD	GWRP350		; 0A : wait
		WORD	GWRP300		; 0B : move
		WORD	GWRP800		; 0C : end
;
;
;
GWRP000		EQU	$
		LDA	#034H
		STA	!SOUND2		; <sound2>
;
		STZ	!ITEMMD
;
		LDA	#000H
		STA	>CCNGCT
		STA	>CCNGCT+1
;
		INC	<JRSBPT
		RTS
;
;
GWRP200		EQU	$
		JSL	>WPCCNG0	; CG. change
		RTS
;
;
GWRP250		EQU	$
		JSL	>WPCCNG2	; CG. change
		RTS
;
;
GWRP300		EQU	$
		JSL	>CHRCHNG	; OBJ. character change
;
		JSL	>WPCCNG1	; CG. change
		RTS
;
;
GWRP350		EQU	$
		JSL	>WPCCNG3	; CG. change
		LDA	>CCNGCT
		BEQ	GWRP390		;
;					; no
		JSL	>WPCCNG3	; CG. change
GWRP390		EQU	$
		RTS
;
;
GWRP400		EQU	$
		LDA	#10011111B
		STA	<WD2132B
;
		STZ	!CGSTPT+1	; (CGRAM) set
		STZ	!BG3BGC
		JSL	>IIT6000	; warp point set
;
		STZ	<XSTCNT
		JSL	>GNDRWT3	; BG.1 write
		LDA	#bgwC
		STA	<BGWTFG
		STZ	<CGVMAF
		BRA	GWRP760
;
;
GWRP450		EQU	$
GWRP550		EQU	$
		LDA	#bgwD
		STA	<BGWTFG
		BRA	GWRP780
;
;
GWRP500		EQU	$
		JSL	>MWRPB00	; BG. write
		LDA	#bgwC
		STA	<BGWTFG
		BRA	GWRP770
;
;
GWRP600		EQU	$
		JSR	BGCCHG8		; BG. character change - 0
		BRA	GWRP740
;
;
GWRP700		EQU	$
		JSR	BGCCHG9		; BG. character change - 1
;
		LDA	#00001111B
		STA	<BLKFLG
		INC	!GMAPDF
GWRP740		EQU	$
		DEC	<GAMEMD
		INC	<JRSBPT
		RTS
;
;
GWRP750		EQU	$
;// 03.09.21 //		STZ	!GNDBGC
		STZ	!CGSTPT+1
		JSL	>OBJYSET
		JSL	>CHITEMST
;
		JSL	>DJCGSET
		JSL	>B3CGSET
		JSL	>GDCGST
;
		LDX	<MPDTNO
		LDA	>ROJCTBL,X
		STA	<WORK0
		LDA	>CGPTDT,X
		JSL	>GCGCHNG	; ground cg. set
		JSL	>NKCGST0	; nuki
;
		JSL	>KCOLSET	; kote-color set
;
		JSL	>OJCHCNG	; BG. buffer set
GWRP760		EQU	$
		LDA	#10000000B
		STA	<WD2132B
GWRP770		EQU	$
		LDA	#00001111B
		STA	<BLKFLG
GWRP780		EQU	$
		INC	!GMAPDF
		INC	<JRSBPT
		RTS
;
;
GWRP800		EQU	$
		LDA	#DAMG3
		STA	!PYFLASH
;
		JSL	>CHRCBSZ	; character buffer set
;
		LDA	#10000000B
		STA	<WD420C
;
;// 03.09.17 //		LDA	!SVSND0
		LDX	#002H
		LDA	>GDTRPF
		BEQ	GWRP840		; ura ?
;					; yes
		LDX	#009H
GWRP840		EQU	$
		STX	!SOUND0
;
		STZ	<GAMEMD
		STZ	<JRSBPT
		STZ	!ITEMMD
		STZ	!GMAPDF
		RTS
;
;
;
;
;************************************************************************
;*		Kame-iwa warp unit write		(KMWRPWT)	*
;************************************************************************
KMWRPWT		EQU	$
		JSL	>KMWWST		; kame-iwa warp unit set
;
		STZ	<GAMEMD
		RTS
;
;
;
;
;
;
;
;
;;;;;;;;;
;;;;;;;;;************************************************************************
;;;;;;;;;*		Shiro-gate open				(SGTOPPL)	*
;;;;;;;;;************************************************************************
;;;;;;;;SGTOPPL		EQU	$
;;;;;;;;		JSL	>SGTOPEN	; shiro-gate open
;;;;;;;;		RTS
;;;;;;;;;
;
;
;
;************************************************************************
;*		Ground Hole  down reset			(GHLDRST)	*
;************************************************************************
GHLDRST		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUB
		WORD	HLDR100		; 0 : scroll
		WORD	HLDR200		; 1 : reset
;
;
HLDR100		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	<WORK0
		STZ	<WORK2
		LDA	<PLXPS1
		CMP	>HLXPS1
		BEQ	HLDR140		; H-move ?
;					; yes
		BCC	HLDR120		;
;					;
		DEC	<WORK2
		DEC	A
		CMP	>HLXPS1
		BEQ	HLDR140		; = ?
;					; no
		DEC	<WORK2
		DEC	A
		BRA	HLDR140
;
HLDR120		EQU	$
		INC	<WORK2
		INC	A
		CMP	>HLXPS1
		BEQ	HLDR140		; = ?
;					; no
		INC	<WORK2
		INC	A
HLDR140		EQU	$
		STA	<PLXPS1
;
		LDA	<PLYPS1
		CMP	>HLYPS1
		BEQ	HLDR180		; V-move ?
;					; yes
		BCC	HLDR160		;
;					;
		DEC	<WORK0
		DEC	A
		CMP	>HLYPS1
		BEQ	HLDR180		; = ?
;					; no
		DEC	<WORK0
		DEC	A
		BRA	HLDR180
;
HLDR160		EQU	$
		INC	<WORK0
		INC	A
		CMP	>HLYPS1
		BEQ	HLDR180		; = ?
;					; no
		INC	<WORK0
		INC	A
HLDR180		EQU	$
		STA	<PLYPS1
		CMP	>HLYPS1
		BNE	HLDR190		; V = ?
;					; yes
		LDA	<PLXPS1
		CMP	>HLXPS1
		BNE	HLDR190		; H = ?
;					; yes
		INC	<JRSBPT
		STZ	<HANEFG
HLDR190		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<WORK0
		STA	<PLYMVC
		LDA	<WORK2
		STA	<PLXMVC
		JSR	GNDSCL		; ground scroll check
;
		LDA	!GDWTFG
		BEQ	HLDR195		; write ?
;					; yes
		JSR	MPMAIN		; ground write
HLDR195		EQU	$
		RTS
;
;
;
;
;
;
;
;************************************************************************
;*		X,Y-move				(XYCALC)	*
;************************************************************************
RMCKDT		EQU	$
		BYTE	00001111B	;  0 : 00
		BYTE	00001111B	;  1
		BYTE	00001111B	;  2
		BYTE	00001111B	;  3
;
		BYTE	00001011B	;  4 : 01
		BYTE	00001011B	;  5
		BYTE	00000111B	;  6
		BYTE	00000111B	;  7
;
		BYTE	00001111B	;  8 : 02
		BYTE	00001011B	;  9
		BYTE	00001111B	;  A
		BYTE	00000111B	;  B
;
		BYTE	00001011B	;  C : 03
		BYTE	00001111B	;  D
		BYTE	00000111B	;  E
		BYTE	00001111B	;  F
;
		BYTE	00001110B	; 10 : 04
		BYTE	00001101B	; 11
		BYTE	00001110B	; 12
		BYTE	00001101B	; 13
;
		BYTE	00001111B	; 14 : 05
		BYTE	00001111B	; 15
		BYTE	00001110B	; 16
		BYTE	00001101B	; 17
;
		BYTE	00001110B	; 18 : 06
		BYTE	00001101B	; 19
		BYTE	00001111B	; 1A
		BYTE	00001111B	; 1B
;
		BYTE	00001010B	; 1C : 07
		BYTE	00001001B	; 1D
		BYTE	00000110B	; 1E
		BYTE	00000101B	; 1F
;
;
;
MAPCDT		EQU	$		; map on/off check data
		BYTE	00001000B	; 0
		BYTE	00000100B	; 1
		BYTE	00000010B	; 2
		BYTE	00000001B	; 3
		BYTE	00001100B	; 4
		BYTE	00001100B	; 5
		BYTE	00000011B	; 6
		BYTE	00000011B	; 7
		BYTE	00001010B	; 8
		BYTE	00000101B	; 9
		BYTE	00001010B	; A
		BYTE	00000101B	; B
		BYTE	00001111B	; C
		BYTE	00001111B	; D
		BYTE	00001111B	; E
		BYTE	00001111B	; F
;
;
XYCALC		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSR	RMPTGT		; room point get
;
		STZ	<RMCKXF
		LDY	#00000010B
		LDA	<RMXCPT
		BNE	XYCL40		; left room ?
;					; yes
		LDY	#00000001B
XYCL40		EQU	$
		STY	<WORK0
		LDA	!CWLXYF
		BNE	XYCL80		; crush wall on ?
;					; no
		LDX	<RMCKPT
		LDA	RMCKDT,X
		AND	<WORK0
		BNE	XYCL100		;
;					; yes
XYCL80		EQU	$
		LDA	#002H
		STA	<RMCKXF
XYCL100		EQU	$
		STZ	<RMCKYF
		LDY	#00001000B
		LDA	<RMYCPT
		BNE	XYCL140		; upper room ?
;					; yes
		LDY	#00000100B
XYCL140		EQU	$
		STY	<WORK0
		LDA	!CWLXYF+1
		BNE	XYCL160		; crush wall on ?
;					; no
		LDX	<RMCKPT
		LDA	RMCKDT,X
		AND	<WORK0
		BNE	XYCL180		;
;					;
XYCL160		EQU	$
		LDA	#002H
		STA	<RMCKYF
XYCL180		EQU	$
		LDA	<RSXYCKF
		BEQ	XYCL190		; x-check flag reset ?
;					; yes
		STA	<RMCKXF
XYCL190		EQU	$
		LDA	<RSXYCKF+1
		BEQ	XYCL200		; y-check flag reset ?
;					; yes
		STA	<RMCKYF
XYCL200		EQU	$
		PLB			; (DBR) reset
		RTL
;
;  
;************************************************************************
;*		X-move (+)				(XCALC0)	*
;************************************************************************
XCALC0		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLXPS1
		CLC
		ADC	#00008H
		STA	<PLXPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
XCALC00		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	<RMXCPT
		EOR	#00000001B
		STA	<RMXCPT
		JSR	RMPTGT		; room point get
;
		LDX	#08H
		JSR	SLDC00		; scroll counter change
;
		JSR	RSTSET		; room status set
;
;// 03.03.11 //		LDX	<RMCKPT
;// 03.03.11 //		LDA	RMCKDT,X
;// 03.03.11 //		AND	#00000010B
;// 03.03.11 //		BEQ	XCL080		; next room ?
;// 03.03.11 //;					; yes
		LDA	<RMXCPT
		JSR	SLEDS0		; scroll end check data set
;
		LDY	#002H
		JSR	SLCTST		; scroll check counter set
;
		INC	<GAMEMD
		LDA	<RMXCPT
		BNE	XCL040		; room write ?
;					; yes
		LDX	#08H
		JSR	SLDC01		; scroll counter change
;
		LDA	<RMXYCT
		STA	<BKRMPT		; now room point push
;
		LDA	!EXITFG
		AND	#11001111B
		CMP	#089H
		BNE	XCL025		; warp door ?
;					; yes
		LDA	>SPGOTO+3
		STA	<RMXYCT
		DEC	A
		LDY	#001H
		JSR	WRPRMST
		BRA	XCL027
;
XCL025		EQU	$
		LDA	!ERXYCT
		CMP	<RMXYCT
		BEQ	XCL026		; ?
;					;
		STA	<BKRMPT
		JSR	HPSRST1         ; scroll Hi-pos.
XCL026		EQU	$
		INC	<RMXYCT
XCL027		EQU	$
		INC	<GAMEMD
		LDA	<PLMDCCF
		AND	#00000001B
		BEQ	XCL030		; player BG. mode change ?
;					; yes
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
		STA	!CDBGCKF
XCL030		EQU	$
		LDA	<PLMDCCF
		AND	#00000010B
		BEQ	XCL040		; player BG. mode change ?
;					; yes
		LDA	!DJNNO
		EOR	#00000010B
		STA	!DJNNO
XCL040		EQU	$
		STZ	<PLMDCCF
;
		STZ	<RMCKYF
		LDY	#00001000B
		LDA	<RMYCPT
		BNE	XCL060		; upper room ?
;					; yes
		LDY	#00000100B
XCL060		EQU	$
		STY	<WORK0
		LDA	!CWLXYF+1
		BNE	XCL070		; crush wall on ?
;					; no
		LDX	<RMCKPT
		LDA	RMCKDT,X
		AND	<WORK0
		BNE	XCL080		;
;					;
XCL070		EQU	$
		LDA	#002H
		STA	<RMCKYF
XCL080		EQU	$
;// 03.06.26 //		JSL	>MPBTSET	; map on/off bit set
;
		PLB			; (DBR) reset
		RTL
;
;
;************************************************************************
;*		X-move (-)				(XCALC1)	*
;************************************************************************
XCALC1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLXPS1
		SEC
		SBC	#00008H
		STA	<PLXPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
XCALC01		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	<RMXCPT
		EOR	#00000001B
		STA	<RMXCPT
		JSR	RMPTGT		; room point get
;
		LDX	#08H
		JSR	SLDC10		; scroll counter change
;
		JSR	RSTSET		; room status set
;// 03.03.11 //		LDX	<RMCKPT
;// 03.03.11 //		LDA	RMCKDT,X
;// 03.03.11 //		AND	#00000001B
;// 03.03.11 //;// 02.10.09 //		BEQ	XCL180		; next room ?
;// 03.03.11 //		BEQ	XCL080		; next room ?
;// 03.03.11 //;					; yes
		LDA	<RMXCPT
		EOR	#00000001B
		JSR	SLEDS0		; scroll end check data set
;
		LDY	#003H
		JSR	SLCTST		; scroll check counter set
;
		INC	<GAMEMD
		LDA	<RMXCPT
		BEQ	XCL140		; room write ?
;					; yes
		LDX	#08H
		JSR	SLDC11		; scroll counter change
;
		LDA	<RMXYCT
		STA	<BKRMPT		; now room point push
;
		LDA	!EXITFG
;// 03.02.21 //		CMP	#08EH
;// 03.02.21 //		BNE	XCL120		; return ground ?
;// 03.02.21 //;					; yes
;// 03.02.21 //;// 02.12.05 //		LDA	<RMXYCT
;// 03.02.21 //;// 02.12.05 //		AND	#00001111B
;// 03.02.21 //;// 02.12.05 //		CMP	#00001111B
;// 03.02.21 //;// 02.12.05 //		BNE	XCL120		; return ground ?
;// 03.02.21 //;// 02.12.05 //;					; yes
;// 03.02.21 //;// 02.12.05 //		INC	<RMXYCT
;// 03.02.21 //;// 02.06.06 //		INC	<NXRMCT
;// 03.02.21 //		LDA	#MD_gdint
;// 03.02.21 //		STA	!NXSLMD
;// 03.02.21 //		LDA	#MD_wpout
;// 03.02.21 //		STA	<SLMODE
;// 03.02.21 //		STZ	<GAMEMD
;// 03.02.21 //		STZ	<JRSBPT
;// 03.02.21 //		JSR	PFLGCL		; player flag clear
;// 03.02.21 //		PLB			; (DBR) reset
;// 03.02.21 //		RTL
;// 03.02.21 //;
;// 03.02.21 //XCL120		EQU	$
		AND	#11001111B
		CMP	#089H
		BNE	XCL125		; warp door ?
;					; yes
		LDA	>SPGOTO+2
		STA	<RMXYCT
		INC	A
		LDY	#0FFH
		JSR	WRPRMST
		BRA	XCL127
;
XCL125		EQU	$
		LDA	!ERXYCT
		CMP	<RMXYCT
		BEQ	XCL126		; ?
;					;
		STA	<BKRMPT
		JSR	HPSRST1         ; scroll Hi-pos.
XCL126		EQU	$
		DEC	<RMXYCT
;// 02.10.26 //		JSR	HPSRST		; Hi-pos. reset
;
;// 03.02.20 //		JSL	>ENDTST		; enemy data set
;
XCL127		EQU	$
		INC	<GAMEMD
;
		LDA	<PLMDCCF
		AND	#00000001B
		BEQ	XCL130		; player BG. mode change ?
;					; yes
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
		STA	!CDBGCKF
XCL130		EQU	$
		LDA	<PLMDCCF
		AND	#00000010B
		BEQ	XCL140		; player BG. mode change ?
;					; yes
		LDA	!DJNNO
		EOR	#00000010B
		STA	!DJNNO
XCL140		EQU	$
		STZ	<PLMDCCF
;
		STZ	<RMCKYF
		LDY	#00001000B
		LDA	<RMYCPT
		BNE	XCL160		; upper room ?
;					; yes
		LDY	#00000100B
XCL160		EQU	$
		STY	<WORK0
		LDA	!CWLXYF+1
		BNE	XCL170		; crush wall on ?
;					; no
		LDX	<RMCKPT
		LDA	RMCKDT,X
		AND	<WORK0
		BNE	XCL180		;
;					;
XCL170		EQU	$
		LDA	#002H
		STA	<RMCKYF
XCL180		EQU	$
;// 03.06.26 //		JSL	>MPBTSET	; map on/off bit set
;
		PLB			; (DBR) reset
		RTL
;
;
;************************************************************************
;*		Y-move (+)				(YCALC0)	*
;************************************************************************
YCALC0		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		CLC
;// 03.02.21 //		ADC	#00008H
		ADC	#00010H
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
YCALC00		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	<RMYCPT
		EOR	#00000010B
		STA	<RMYCPT
		JSR	RMPTGT		; room point get
;
		LDX	#00H
		JSR	SLDC00		; scroll counter change
;
		JSR	RSTSET		; room status set
;// 03.03.11 //		LDX	<RMCKPT
;// 03.03.11 //		LDA	RMCKDT,X
;// 03.03.11 //		AND	#00001000B
;// 03.03.11 //		BEQ	XCL180		; next room ?
;// 03.03.11 //;					; yes
		LDA	<RMYCPT
		JSR	SLEDS1		; scroll end check data set
;
		LDY	#000H
		JSR	SLCTST		; scroll check counter set
;
		INC	<GAMEMD
		LDA	<RMYCPT
;/** 03.07.31 **/		BEQ	YCL015		; room write ?
;/** 03.07.31 **/;					; no
;/** 03.07.31 **/		LDA	!EXITFG
;/** 03.07.31 **/		AND	#11001111B
;/** 03.07.31 **/		CMP	#088H
;/** 03.07.31 **/		BNE	YCL040		; warp door ?
;/** 03.07.31 **/;					; yes
;/** 03.07.31 **/		LDA	>SPGOTO+3
;/** 03.07.31 **/		STA	<RMXYCT
;/** 03.07.31 **/		STA	!ERXYCT
;/** 03.07.31 **/		LDA	#p1_warp
;/** 03.07.31 **/		STA	<GAMEMD
;/** 03.07.31 **/;
;/** 03.07.31 **/		LDA	<RMXYCT
;/** 03.07.31 **/		STA	<BKRMPT		; now room point push
;/** 03.07.31 **/		BRA	YCL040
		BNE	YCL040		; room write ?
;					; yes
;
YCL015		EQU	$
		LDX	#00H
		JSR	SLDC01		; scroll counter change
;
		LDA	<RMXYCT
		STA	<BKRMPT		; now room point push
;
;// 02.12.05 //		LDA	<RMXYCT
;// 02.12.05 //		CLC
;// 02.12.05 //		ADC	#008H
;// 02.12.05 //		STA	<RMXYCT
;// 02.06.06 //		STA	<NXRMCT
;
		LDA	!EXITFG
		CMP	#08EH
		BNE	YCL020		; return ground ?
;					; yes
YCL016		EQU	$
		JSL	>DJKYSV		; danjyon key save
;
;// 03.09.24 //		JSL	>MPBTSET	; map on/off bit set
		JSL	>MPBTSET0	; map on/off bit set
;
;// 02.12.05 //		AND	#00111000B
;// 02.12.05 //		BNE	YCL020		; return ground ?
;// 02.12.05 //;					; yes
;// 02.12.05 //		LDA	<RMXYCT
;// 02.12.05 //		SEC
;// 02.12.05 //		SBC	#008H
;// 02.12.05 //		STA	<RMXYCT
;// 02.06.06 //		STA	<NXRMCT
		LDA	#MD_gdint
		STA	!NXSLMD
		LDA	#MD_wpout
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
		JSR	PFLGCL		; player flag clear
		PLB			; (DBR) reset
		RTL
;
YCL020		EQU	$
;/** 03.07.31 **/		AND	#11001100B
;/** 03.07.31 **/		CMP	#088H
;/** 03.07.31 **/		BNE	YCL025		; warp door ?
;/** 03.07.31 **/;					; yes
;/** 03.07.31 **/		LDA	>SPGOTO+2
;/** 03.07.31 **/		JSR	WRPRMST1
;/** 03.07.31 **/		BRA	YCL027
;/** 03.07.31 **/;
;/** 03.07.31 **/YCL025		EQU	$
		LDA	!ERXYCT
		CMP	<RMXYCT
		BEQ	YCL026		; ?
;					;
		STA	<BKRMPT
		JSR	HPSRST1         ; scroll Hi-pos.
YCL026		EQU	$
		LDA	<RMXYCT
		CLC
;// 03.02.21 //		ADC	#008H
		ADC	#010H
		STA	<RMXYCT
;// 02.10.26 //		JSR	HPSRST		; Hi-pos. reset
;
;// 03.02.20 //		JSL	>ENDTST		; enemy data set
;
YCL027		EQU	$
		INC	<GAMEMD
;
		LDA	<PLMDCCF
		AND	#00000001B
		BEQ	YCL030		; player BG. mode change ?
;					; yes
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
		STA	!CDBGCKF
YCL030		EQU	$
		LDA	<PLMDCCF
		AND	#00000010B
		BEQ	YCL040		; player BG. mode change ?
;					; yes
		LDA	!DJNNO
		EOR	#00000010B
		STA	!DJNNO
YCL040		EQU	$
		STZ	<PLMDCCF
;
		STZ	<RMCKXF
		LDY	#00000010B
		LDA	<RMXCPT
		BNE	YCL060		; left room ?
;					; yes
		LDY	#00000001B
YCL060		EQU	$
		STY	<WORK0
		LDA	!CWLXYF
		BNE	YCL070		; crush wall on ?
;					; no
		LDX	<RMCKPT
		LDA	RMCKDT,X
		AND	<WORK0
		BNE	YCL080		;
;					; yes
YCL070		EQU	$
		LDA	#002H
		STA	<RMCKXF
YCL080		EQU	$
;// 03.06.26 //		JSL	>MPBTSET	; map on/off bit set
;
		PLB			; (DBR) reset
		RTL
;
;
;************************************************************************
;*		Y-move (-)				(YCALC1)	*
;************************************************************************
YCALC1		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	<RMYCPT
		EOR	#00000010B
		STA	<RMYCPT
		JSR	RMPTGT		; room point get
;
		LDX	#00H
		JSR	SLDC10		; scroll counter change
;
		JSR	RSTSET		; room status set
;// 03.03.11 //		LDX	<RMCKPT
;// 03.03.11 //		LDA	RMCKDT,X
;// 03.03.11 //		AND	#00000100B
;// 03.03.11 //		BEQ	YCL080		; next room ?
;// 03.03.11 //;					; yes
		LDA	<RMYCPT
		EOR	#00000010B
		JSR	SLEDS1		; scroll end check data set
;
		LDY	#001H
		JSR	SLCTST		; scroll check counter set
;
		INC	<GAMEMD
		LDA	<RMYCPT
;/** 03.07.31 **/		BNE	YCL115		; room write ?
;/** 03.07.31 **/;					; no
;/** 03.07.31 **/		LDA	!EXITFG
;/** 03.07.31 **/		AND	#11001111B
;/** 03.07.31 **/		CMP	#088H
;/** 03.07.31 **/		BNE	YCL140		; warp door ?
;/** 03.07.31 **/;					; yes
;/** 03.07.31 **/		LDA	>SPGOTO+2
;/** 03.07.31 **/		STA	<RMXYCT
;/** 03.07.31 **/		STA	!ERXYCT
;/** 03.07.31 **/		LDA	#p1_warp
;/** 03.07.31 **/		STA	<GAMEMD
;/** 03.07.31 **/		LDA	<RMXYCT
;/** 03.07.31 **/		STA	<BKRMPT		; now room point push
;/** 03.07.31 **/		BRA	YCL140
		BEQ	YCL140		; room write ?
;					; yes
;
YCL115		EQU	$
		LDX	#00H
		JSR	SLDC11		; scroll counter change
;
		LDA	<RMXYCT
		STA	<BKRMPT		; now room point push
;
		LDA	!EXITFG
		CMP	#08EH
		BNE	YCL120		; return ground ?
;					; yes
		JMP	YCL016
;<<< 03.09.06 >>>		LDA	!DJNNO
;<<< 03.09.06 >>>		CMP	#0FFH
;<<< 03.09.06 >>>		BEQ	YCL117		;
;<<< 03.09.06 >>>;					;
;<<< 03.09.06 >>>		LSR	A
;<<< 03.09.06 >>>		TAX
;<<< 03.09.06 >>>		LDA	>ITMTBL9
;<<< 03.09.06 >>>		STA	>DKYTBL,X	; key count save
;<<< 03.09.06 >>>YCL117		EQU	$
;<<< 03.09.06 >>>;// 02.12.05 //		LDA	<RMXYCT
;<<< 03.09.06 >>>;// 02.12.05 //		SEC
;<<< 03.09.06 >>>;// 02.12.05 //		SBC	#00008H
;<<< 03.09.06 >>>;// 02.12.05 //		STA	<RMXYCT
;<<< 03.09.06 >>>;// 02.06.06 //		STA	<NXRMCT
;<<< 03.09.06 >>>;// 02.12.05 //		AND	#00111000B
;<<< 03.09.06 >>>;// 02.12.05 //		CMP	#00111000B
;<<< 03.09.06 >>>;// 02.12.05 //		BNE	YCL120		; return ground ?
;<<< 03.09.06 >>>;// 02.12.05 //;					; yes
;<<< 03.09.06 >>>;// 02.12.05 //		LDA	<RMXYCT
;<<< 03.09.06 >>>;// 02.12.05 //		CLC
;<<< 03.09.06 >>>;// 02.12.05 //		ADC	#008H
;<<< 03.09.06 >>>;// 02.12.05 //		STA	<RMXYCT
;<<< 03.09.06 >>>;// 02.06.06 //		STA	<NXRMCT
;<<< 03.09.06 >>>		LDA	#MD_gdint
;<<< 03.09.06 >>>		STA	!NXSLMD
;<<< 03.09.06 >>>		LDA	#MD_wpout
;<<< 03.09.06 >>>		STA	<SLMODE
;<<< 03.09.06 >>>		STZ	<GAMEMD
;<<< 03.09.06 >>>		STZ	<JRSBPT
;<<< 03.09.06 >>>		JSR	PFLGCL		; player flag clear
;<<< 03.09.06 >>>		PLB			; (DBR) reset
;<<< 03.09.06 >>>		RTL
;
;
YCL120		EQU	$
		LDA	<RMXYCT
		ORA	<RMXYCT+1
		BNE	YCL125		; ganon-room exit
;					; yes
		JSL	>DJKYSV		; danjyon key save
;
		LDA	#MD_etryf
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
		PLB			; (DBR) reset
		RTL
;
;
YCL125		EQU	$
;/** 03.07.31 **/		AND	#11001100B
;/** 03.07.31 **/		CMP	#088H
;/** 03.07.31 **/		BNE	YCL125		; warp door ?
;/** 03.07.31 **/;					; yes
;/** 03.07.31 **/		LDA	>SPGOTO+3
;/** 03.07.31 **/		JSR	WRPRMST1
;/** 03.07.31 **/		BRA	YCL127
;/** 03.07.31 **/;
;/** 03.07.31 **/YCL125		EQU	$
		LDA	!ERXYCT
		CMP	<RMXYCT
		BEQ	YCL126		; ?
;					;
		STA	<BKRMPT
		JSR	HPSRST1         ; scroll Hi-pos.
YCL126		EQU	$
		LDA	<RMXYCT
		SEC
;// 03.02.21 //		SBC	#008H
		SBC	#010H
		STA	<RMXYCT
;// 02.10.26 //		JSR	HPSRST		; Hi-pos. reset
;
;// 03.02.20 //		JSL	>ENDTST		; enemy data set
;
YCL127		EQU	$
		INC	<GAMEMD
;
		LDA	<PLMDCCF
		AND	#00000001B
		BEQ	YCL130		; player BG. mode change ?
;					; yes
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
		STA	!CDBGCKF
YCL130		EQU	$
		LDA	<PLMDCCF
		AND	#00000010B
		BEQ	YCL140		; player BG. mode change ?
;					; yes
		LDA	!DJNNO
		EOR	#00000010B
		STA	!DJNNO
YCL140		EQU	$
		STZ	<PLMDCCF
;
		STZ	<RMCKXF
		LDY	#00000010B
		LDA	<RMXCPT
		BNE	YCL160		; left room ?
;					; yes
		LDY	#00000001B
YCL160		EQU	$
		STY	<WORK0
		LDA	!CWLXYF
		BNE	YCL170		; crush wall on ?
;					; no
		LDX	<RMCKPT
		LDA	RMCKDT,X
		AND	<WORK0
		BNE	YCL180		;
;					; yes
YCL170		EQU	$
		LDA	#002H
		STA	<RMCKXF
YCL180		EQU	$
;// 03.06.26 //		JSL	>MPBTSET	; map on/off bit set
;
		PLB			; (DBR) reset
		RTL
;
;  
;************************************************************************
;*		X-move (+)				(XCALC2)	*
;************************************************************************
XCALC2		EQU	$
		LDA	<RMXCPT
		EOR	#00000001B
		STA	<RMXCPT
		JSR	RMPTGT		; room point get
;
		LDX	#08H
		JSR	SLDC00		; scroll counter change
XCL240		EQU	$
;
;************************************************************************
;*		Map  on/off bit set			(MPBTSET)	*
;************************************************************************
MPBTSET		EQU	$
		LDA	<RMCKYF
		ASL	A
		ASL	A
		STA	<WORK0
		LDA	<RMCKXF
		ASL	A
		ORA	<WORK0
		ORA	<RMYCPT
		ORA	<RMXCPT
		TAX
		LDA	>MAPCDT,X
		ORA	!MAPSTT
		STA	!MAPSTT		; map on/off bit set
MPBTSET0	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>DJNTBL,X
		ORA	!MAPSTT
		STA	>DJNTBL,X	; map on/off bit set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
;
;
;************************************************************************
;		X-move (-)				(XCALC3)	*
;************************************************************************
XCALC3		EQU	$
		LDA	<RMXCPT
		EOR	#00000001B
		STA	<RMXCPT
		JSR	RMPTGT		; room point get
;
		LDX	#08H
		JSR	SLDC10		; scroll counter change
;
		BRA	XCL240		; map on/off bit set
;
;
;
;************************************************************************
;*		Y-move (+)				(YCALC2)	*
;************************************************************************
YCALC2		EQU	$
		LDA	<RMYCPT
		EOR	#00000010B
		STA	<RMYCPT
		JSR	RMPTGT		; room point get
;
		LDX	#00H
		JSR	SLDC00		; scroll counter change
;
		BRA	XCL240		; map on/off bit set
;
;
;
;************************************************************************
;*		Y-move (-)				(YCALC3)	*
;************************************************************************
YCALC3		EQU	$
		LDA	<RMYCPT
		EOR	#00000010B
		STA	<RMYCPT
		JSR	RMPTGT		; room point get
;
		LDX	#00H
		JSR	SLDC10		; scroll counter change
;
		BRA	XCL240		; map on/off bit set
;
;
;
;
;************************************************************************
;*		Map  on/off bit set			(MPBTSET1)	*
;************************************************************************
MPBTSET1	EQU	$
		LDA	<RMCKYF
		ASL	A
		ASL	A
		STA	<WORK0
		LDA	<RMCKXF
		ASL	A
		ORA	<WORK0
		ORA	<RMYCPT
		ORA	<RMXCPT
		TAX
		LDA	>MAPCDT,X
		ORA	!MAPSTT
		STA	!MAPSTT		; map on/off bit set
;
		JSR	RSTSET		; room status set
;
		RTL
;
;
;
;
;
;
;************************************************************************
;*		Room status set				(RSTSET)	*
;************************************************************************
RSTSET		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	!EMYSTT
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK6
		LDA	!RMSTTT
		AND	#0F000H
		ORA	!MAPSTT
		ORA	<WORK6
		STA	>DJNTBL,X
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Scroll check data change - 00		(SLDC00)	*
;************************************************************************
SLDC00		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!SCVU,X
		CLC
		ADC	#0100H
		STA	!SCVU,X
		LDA	!SCVD,X
		CLC
		ADC	#0100H
		STA	!SCVD,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;************************************************************************
;*		Scroll check data change - 01		(SLDC01)	*
;************************************************************************
SLDC01		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!SCVU1,X
		CLC
		ADC	#0200H
		STA	!SCVU1,X
		LDA	!SCVD1,X
		CLC
		ADC	#0200H
		STA	!SCVD1,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;************************************************************************
;*		Scroll check data change - 10		(SLDC10)	*
;************************************************************************
SLDC10		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!SCVU,X
		SEC
		SBC	#0100H
		STA	!SCVU,X
		LDA	!SCVD,X
		SEC
		SBC	#0100H
		STA	!SCVD,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;************************************************************************
;*		Scroll check data change - 11		(SLDC11)	*
;************************************************************************
SLDC11		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!SCVU1,X
		SEC
		SBC	#0200H
		STA	!SCVU1,X
		LDA	!SCVD1,X
		SEC
		SBC	#0200H
		STA	!SCVD1,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		Scroll check counter set		(SLCTST)	*
;************************************************************************
RMUSLD		EQU	$
		WORD	0078H,0178H
RMDSLD		EQU	$
		WORD	0088H,0188H
RMLSLD		EQU	$
		WORD	007FH,017FH
RMRSLD		EQU	$
		WORD	007FH,017FH

;
SLCTST		EQU	$
		STY	!SCRLFG		; scroll muki set
;
		LDA	<PWORK1
		AND	#00000011B
		BEQ	SCTS100		; left,right move ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#004H
		LDA	<PWORK1
		AND	#0000000000000001B
		BEQ	SCTS20		; right move ?
;					; yes
		LDX	#000H
SCTS20		EQU	$
		LDY	<RMXCPT
		BEQ	SCTS40		; ?
;					; yes
		INX
		INX
SCTS40		EQU	$
		LDA	RMLSLD,X
		STA	!PXLFCT
;// 03.05.08 //		CLC
;// 03.05.08 //		ADC	#00010H
		INC	A
		INC	A
		STA	!PXRTCT		; left,right check counter set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		RTS
;
SCTS100		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#004H
		LDA	<PWORK1
		AND	#0000000000000100B
		BEQ	SCTS120		; down move ?
;					; yes
		LDX	#000H
SCTS120		EQU	$
		LDY	<RMYCPT
		BEQ	SCTS140		; ?
;					; yes
		INX
		INX
SCTS140		EQU	$
		LDA	RMUSLD,X
		STA	!PYUPCT
;// 03.05.08 //		SEC
;// 03.05.08 //		SBC	#00010H
		INC	A
		INC	A
		STA	!PYDWCT		; up,down check counter set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		RTS
;
;
;/;
;/;************************************************************************
;/;*		Scroll check counter set		(SLCTST)	*
;/;************************************************************************
;/RMUSLD		EQU	$
;/		WORD	0063H,0163H
;/RMDSLD		EQU	$
;/		WORD	00ABH,01ADH
;/RMLSLD		EQU	$
;/		WORD	0077H,0179H
;/RMRSLD		EQU	$
;/		WORD	0087H,0189H
;/;
;/;
;/SLCTST		EQU	$
;/		STY	!SCRLFG		; scroll muki set
;/;
;/		LDA	<PWORK1
;/		AND	#00000011B
;/		BEQ	SCTS100		; left,right move ?
;/;					; yes
;/		MEM16
;/		REP	#00100000B	; memory 16bit mode
;/;
;/		LDA	<PLYPS1
;/		AND	#001FFH
;/		CLC
;/		ADC	#0000BH
;/		STA	!PYUPCT
;/		INC	A
;/		INC	A
;/		STA	!PYDWCT
;/;
;/		LDX	#004H
;/		LDA	<PWORK1
;/		AND	#0000000000000001B
;/		BEQ	SCTS20		; right move ?
;/;					; yes
;/		LDX	#000H
;/SCTS20		EQU	$
;/		LDY	<RMXCPT
;/		BEQ	SCTS40		; ?
;/;					; yes
;/		INX
;/		INX
;/SCTS40		EQU	$
;/		LDA	RMLSLD,X
;/		STA	!PXLFCT
;/		INC	A
;/		INC	A
;/		STA	!PXRTCT		; left,right check counter set
;/;
;/		MEM8
;/		SEP	#00100000B	; memory 8bit mode
;/;
;/		RTS
;/;
;/SCTS100		EQU	$
;/		MEM16
;/		REP	#00100000B	; memory 16bit mode
;/;
;/		LDA	<PLXPS1
;/		AND	#001FFH
;/		CLC
;/		ADC	#00007H
;/		STA	!PXLFCT
;/		INC	A
;/		INC	A
;/		STA	!PXRTCT
;/;
;/		LDX	#004H
;/		LDA	<PWORK1
;/		AND	#0000000000000100B
;/		BEQ	SCTS120		; down move ?
;/;					; yes
;/		LDX	#000H
;/SCTS120		EQU	$
;/		LDY	<RMYCPT
;/		BEQ	SCTS140		; ?
;/;					; yes
;/		INX
;/		INX
;/SCTS140		EQU	$
;/		LDA	RMUSLD,X
;/		STA	!PYUPCT
;/		INC	A
;/		INC	A
;/		STA	!PYDWCT		; up,down check counter set
;/;
;/		MEM8
;/		SEP	#00100000B	; memory 8bit mode
;/;
;/		RTS
;/;
;
;
;************************************************************************
;*		Room point get				(RMPTGT)	*
;************************************************************************
RMPTGT		EQU	$
		LDA	!ROOMNO
		ORA	<RMYCPT
		ORA	<RMXCPT
		STA	<RMCKPT
;
		RTS
;
;
;************************************************************************
;*		Gamen scroll check			(GMSLCK)	*
;************************************************************************
GMSLCK		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00001H
		STA	<WORK0
;// 03.09.17 //		STZ	<WORK4
;
		LDA	<PTBIFG
		AND	#000FFH
		BEQ	GSCK20		; player tobi ?
;					; yes
		LDA	<PLZPS1
		CMP	#0FFFFH
		BNE	GSCK20		;
;					;
		LDA	#00000H
GSCK20		EQU	$
		STA	<WORKE
		LDA	<PLYPS1
		SEC
		SBC	<WORKE
;// 03.09.27 //		LDA	<PLYPS1
;// 03.09.27 //		SEC
;// 03.09.27 //		SBC	<PLZPS1
		AND	#001FFH
		CLC
		ADC	#0000CH
		STA	<WORKE
;
;// 03.09.17 //		LDA	<PLYMVC
;// 03.09.17 //		AND	#000FFH
;// 03.09.17 //		BEQ	GSCK200		; y-move ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDX	<RMCKYF
;// 03.09.17 //		CMP	#00080H
;// 03.09.17 //		BCC	GSCK40		; (-) data ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		EOR	#000FFH
;// 03.09.17 //		INC	A
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		TAY
;// 03.09.17 //		LDA	!PYUPCT
;// 03.09.17 //		CMP	<WORKE
;// 03.09.17 //		BCS	GSCK80		; gamen scroll ?
;// 03.09.17 //;					; no
;// 03.09.17 //		BCC	GSCK200
;// 03.09.17 //;
;// 03.09.17 //GSCK40		EQU	$
;// 03.09.17 //		TAY
;// 03.09.17 //		LDA	<WORKE
;// 03.09.17 //		CMP	!PYDWCT
;// 03.09.17 //		BCC	GSCK200		; gamen scroll ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		INX
;// 03.09.17 //		INX
;// 03.09.17 //		INX
;// 03.09.17 //		INX
;// 03.09.17 //GSCK80		EQU	$
;// 03.09.17 //		LDA	<SCCV2
;// 03.09.17 //		CMP	!SCVU,X
;// 03.09.17 //		BEQ	GSCK120		; limit ?
;// 03.09.17 //;					; no
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK0
;// 03.09.17 //		STA	<SCCV2
;// 03.09.17 //;
;// 03.09.17 //		LDA	<WORK4
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK0
;// 03.09.17 //		STA	<WORK4
;// 03.09.17 //;
;// 03.09.17 //		DEY
;// 03.09.17 //		BNE	GSCK80		; move end ?
;// 03.09.17 //;					; yes
;// 03.09.17 //GSCK120		EQU	$
;// 03.09.17 //		LDA	<WORK4
;// 03.09.17 //		BEQ	GSCK200		; move ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDA	<RMXYCT
;// 03.09.17 //		CMP	#0FFFFH
;// 03.09.17 //		BEQ	GSCK200		; move ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		CMP	#0FFFFH
;// 03.09.17 //		BEQ	GSCK200		; move ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDA	<WORK4
;// 03.09.17 //		STZ	<WORK0
;// 03.09.17 //		LSR	A
;// 03.09.17 //		ROR	<WORK0
;// 03.09.17 //		CMP	#07000H
;// 03.09.17 //		BCC	GSCK160		; (-) data ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		ORA	#0F000H
;// 03.09.17 //GSCK160		EQU	$
;// 03.09.17 //		STA	<WORK6
;// 03.09.17 //;
;// 03.09.17 //		LDA	<WORK0
;// 03.09.17 //		LDA	!SCV1CT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK0
;// 03.09.17 //		STA	!SCV1CT
;// 03.09.17 //		LDA	<SCCV1
;// 03.09.17 //		ADC	<WORK6
;// 03.09.17 //		STA	<SCCV1
;// 03.09.17 //;
;// 03.09.17 //		LDA	!PYUPCT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK4
;// 03.09.17 //		STA	!PYUPCT
;// 03.09.17 //		INC	A
;// 03.09.17 //		INC	A
;// 03.09.17 //		STA	!PYDWCT
;// 03.09.17 //GSCK200		EQU	$
		LDA	<PLYMVC
		AND	#000FFH
		BEQ	GSCK205		; y-move ?
;					; yes
		LDX	<RMCKYF
		CMP	#00080H
		BCC	GSCK40		; (-) data ?
;					; yes
		EOR	#000FFH
		INC	A
		DEC	<WORK0
		DEC	<WORK0
GSCK40		EQU	$
		TAY
GSCK60		EQU	$
		LDX	<RMCKYF
		LDA	<PLYMVC
		AND	#000FFH
		CMP	#00080H
		BCC	GSCK70		; (-) data ?
;					; yes
		LDA	!PYUPCT
		CMP	<WORKE
		BCS	GSCK80		; gamen scroll ?
;					; no
		BCC	GSCK200
;
GSCK70		EQU	$
		LDA	<WORKE
		CMP	!PYDWCT
		BCC	GSCK200		; gamen scroll ?
;					; yes
		INX
		INX
		INX
		INX
GSCK80		EQU	$
		LDA	<SCCV2
		CMP	!SCVU,X
		BEQ	GSCK200		; limit ?
;					; no
		CLC
		ADC	<WORK0
		STA	<SCCV2
;
		LDA	<RMXYCT
		CMP	#0FFFFH
		BEQ	GSCK200		; move ok ?
;					; yes
		LDA	<WORK0
		STZ	<WORK4
		LSR	A
		ROR	<WORK4
		CMP	#07000H
		BCC	GSCK160		; (-) data ?
;					; yes
		ORA	#0F000H
GSCK160		EQU	$
		STA	<WORK6
;
		LDA	!SCV1CT
		CLC
		ADC	<WORK4
		STA	!SCV1CT
		LDA	<SCCV1
		ADC	<WORK6
		STA	<SCCV1
;
		LDA	!PYUPCT
		CLC
		ADC	<WORK0
		STA	!PYUPCT
		INC	A
		INC	A
		STA	!PYDWCT
GSCK200		EQU	$
		DEY
		BNE	GSCK60		; move end ?
;					; yes
GSCK205		EQU	$
		LDA	#00001H
		STA	<WORK0
;// 03.09.17 //		STZ	<WORK4
;
		LDA	<PLXPS1
		AND	#001FFH
		CLC
		ADC	#00008H
		STA	<WORKE
;
;// 03.09.17 //		LDA	<PLXMVC
;// 03.09.17 //		AND	#000FFH
;// 03.09.17 //		BEQ	GSCK400		; x-move ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDX	<RMCKXF
;// 03.09.17 //		CMP	#00080H
;// 03.09.17 //		BCC	GSCK240		; (-) data ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		EOR	#000FFH
;// 03.09.17 //		INC	A
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		TAY
;// 03.09.17 //		LDA	!PXLFCT
;// 03.09.17 //		CMP	<WORKE
;// 03.09.17 //		BCS	GSCK280		; gamen scroll ?
;// 03.09.17 //;					; no
;// 03.09.17 //		BCC	GSCK400
;// 03.09.17 //;
;// 03.09.17 //GSCK240		EQU	$
;// 03.09.17 //		TAY
;// 03.09.17 //		LDA	<WORKE
;// 03.09.17 //		CMP	!PXRTCT
;// 03.09.17 //		BCC	GSCK400		; gamen scroll ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		INX
;// 03.09.17 //		INX
;// 03.09.17 //		INX
;// 03.09.17 //		INX
;// 03.09.17 //GSCK280		EQU	$
;// 03.09.17 //		LDA	<SCCH2
;// 03.09.17 //		CMP	!SCHL,X
;// 03.09.17 //		BEQ	GSCK320		; limit ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK0
;// 03.09.17 //		STA	<SCCH2
;// 03.09.17 //;
;// 03.09.17 //		LDA	<WORK4
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK0
;// 03.09.17 //		STA	<WORK4
;// 03.09.17 //;
;// 03.09.17 //		DEY
;// 03.09.17 //		BNE	GSCK280		; move end ?
;// 03.09.17 //;					; yes
;// 03.09.17 //GSCK320		EQU	$
;// 03.09.17 //		LDA	<WORK4
;// 03.09.17 //		BEQ	GSCK400		; move ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDA	<RMXYCT
;// 03.09.17 //		CMP	#0FFFFH
;// 03.09.17 //		BEQ	GSCK400		; move ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		CMP	#0FFFFH
;// 03.09.17 //		BEQ	GSCK400		; move ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDA	<WORK4
;// 03.09.17 //		STZ	<WORK0
;// 03.09.17 //		LSR	A
;// 03.09.17 //		ROR	<WORK0
;// 03.09.17 //		CMP	#07000H
;// 03.09.17 //		BCC	GSCK360		; (-) data ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		ORA	#0F000H
;// 03.09.17 //GSCK360		EQU	$
;// 03.09.17 //		STA	<WORK6
;// 03.09.17 //;
;// 03.09.17 //		LDA	!SCH1CT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK0
;// 03.09.17 //		STA	!SCH1CT
;// 03.09.17 //		LDA	<SCCH1
;// 03.09.17 //		ADC	<WORK6
;// 03.09.17 //		STA	<SCCH1
;// 03.09.17 //;
;// 03.09.17 //		LDA	!PXLFCT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK4
;// 03.09.17 //		STA	!PXLFCT
;// 03.09.17 //		INC	A
;// 03.09.17 //		INC	A
;// 03.09.17 //		STA	!PXRTCT
;// 03.09.17 //GSCK400		EQU	$
		LDA	<PLXMVC
		AND	#000FFH
		BEQ	GSCK405		; x-move ?
;					; yes
		LDX	<RMCKXF
		CMP	#00080H
		BCC	GSCK240		; (-) data ?
;					; yes
		EOR	#000FFH
		INC	A
		DEC	<WORK0
		DEC	<WORK0
GSCK240		EQU	$
		TAY
GSCK260		EQU	$
		LDX	<RMCKXF
		LDA	<PLXMVC
		AND	#000FFH
		CMP	#00080H
		BCC	GSCK270		; (-) data ?
;					; yes
		LDA	!PXLFCT
		CMP	<WORKE
		BCS	GSCK280		; gamen scroll ?
;					; no
		BCC	GSCK400
;
GSCK270		EQU	$
		LDA	<WORKE
		CMP	!PXRTCT
		BCC	GSCK400		; gamen scroll ?
;					; yes
		INX
		INX
		INX
		INX
GSCK280		EQU	$
		LDA	<SCCH2
		CMP	!SCHL,X
		BEQ	GSCK400		; limit ?
;					; yes
		CLC
		ADC	<WORK0
		STA	<SCCH2
;
		LDA	<RMXYCT
		CMP	#0FFFFH
		BEQ	GSCK400		; move ok ?
;					; yes
		LDA	<WORK0
		STZ	<WORK4
		LSR	A
		ROR	<WORK4
		CMP	#07000H
		BCC	GSCK360		; (-) data ?
;					; yes
		ORA	#0F000H
GSCK360		EQU	$
		STA	<WORK6
;
		LDA	!SCH1CT
		CLC
		ADC	<WORK4
		STA	!SCH1CT
		LDA	<SCCH1
		ADC	<WORK6
		STA	<SCCH1
;
		LDA	!PXLFCT
		CLC
		ADC	<WORK0
		STA	!PXLFCT
		INC	A
		INC	A
		STA	!PXRTCT
GSCK400		EQU	$
		DEY
		BNE	GSCK260		; check end ?
;					; yes
GSCK405		EQU	$
		LDA	<RMXYCT
		CMP	#0FFFFH
		BEQ	GSCK440		; move ok ?
;					; yes
		LDX	!GSUBFG
		BEQ	GSCK420		;
;					;
		CPX	#006H
		BCS	GSCK420		;
;					;
		CPX	#004H
		BEQ	GSCK420		;
;					;
		CPX	#003H
		BEQ	GSCK420		;
;					;
		CPX	#002H
		BNE	GSCK440		;
;					;
GSCK420		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCCH2
		STA	<SCCH1
		LDA	<SCCV2
		STA	<SCCV1
GSCK440		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		GROUND Gamen scroll check		(GNDSCL)	*
;************************************************************************
GDWTPT		EQU	$		; write point data
		WORD	00008H,00004H,00002H,00001H
;
;
GNDSCL		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PTBIFG
		AND	#000FFH
		BEQ	GDSL05		; player tobi ?
;					; yes
		LDA	<PLZPS1
		CMP	#0FFFFH
		BNE	GDSL05		;
;					;
		LDA	#00000H
GDSL05		EQU	$
		STA	<WORKE
		LDA	<PLYPS1
		SEC
		SBC	<WORKE
;// 03.09.27 //		LDA	<PLYPS1
;// 03.09.27 //		SEC
;// 03.09.27 //		SBC	<PLZPS1
		CLC
		ADC	#0000CH
		STA	<WORKE
		LDA	#00001H
		STA	<WORK0
;
		LDA	<PLYMVC
		AND	#000FFH
		BNE	GDSL20		; y-move ?
;					; no
GDSL10		EQU	$
		JMP	GDSL200
;
GDSL20		EQU	$
;// 03.09.17 //		CMP	#00080H
;// 03.09.17 //		BCC	GDSL40		; (-) data ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		EOR	#000FFH
;// 03.09.17 //		INC	A
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		STA	<WORK2
;// 03.09.17 //;
;// 03.09.17 //		LDA	!PYUPCT
;// 03.09.17 //		CMP	<WORKE
;// 03.09.17 //		BCC	GDSL10		; scroll ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDY	#000H
;// 03.09.17 //		BRA	GDSL80
;// 03.09.17 //;
;// 03.09.17 //GDSL40		EQU	$
;// 03.09.17 //		STA	<WORK2
;// 03.09.17 //;
;// 03.09.17 //		LDA	<WORKE
;// 03.09.17 //		CMP	!PYDWCT
;// 03.09.17 //		BCC	GDSL10		; scroll ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDY	#002H
;// 03.09.17 //GDSL80		EQU	$
;// 03.09.17 //		LDX	#006H
;// 03.09.17 //		JSR	GDSL400		; y-move
		STZ	<WORK4
;
		CMP	#00080H
		BCC	GDSL40		; (-) data ?
;					; yes
		EOR	#000FFH
		INC	A
		DEC	<WORK0
		DEC	<WORK0
GDSL40		EQU	$
		STA	<WORK2
;
		STZ	<WORK8
GDSL50		EQU	$
		LDA	<PLYMVC
		AND	#000FFH
		CMP	#00080H
		BCC	GDSL60		; (-) data ?
;					; yes
		LDA	!PYUPCT
		CMP	<WORKE
		BCC	GDSL90		; scroll ok ?
;					; yes
		LDY	#000H
		BRA	GDSL70
;
GDSL60		EQU	$
		LDA	<WORKE
		CMP	!PYDWCT
		BCC	GDSL90		; scroll ok ?
;					; yes
		LDY	#002H
GDSL70		EQU	$
		LDX	#006H
		JSR	GDSL400		; y-move
GDSL90		EQU	$
		DEC	<WORK2
		BNE	GDSL50		;
;					;
		LDA	<WORK4
		STA	!SCRMVY		; Y-scroll dot
;
;// 03.09.17 //		LDA	!PYUPCT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK4
;// 03.09.17 //		STA	!PYUPCT
;// 03.09.17 //		LDA	!PYDWCT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK4
;// 03.09.17 //		STA	!PYDWCT
;
;// 03.02.25 //		LDA	!GRNDNO
;// 03.02.25 //		BNE	GDSL200		; BG.1 move ?
;// 03.02.25 //;					; yes
		LDX	<MPDTN1
;// 03.08.19 //		CPX	#0B7H
		CPX	#097H
		BEQ	GDSL200		; kiri ?
;					; no
;// 03.08.19 //		CPX	#0BDH
		CPX	#09DH
		BEQ	GDSL200		; kiri ?
;					; yes
		LDA	<WORK4
		BEQ	GDSL200		; move ?
;					; yes
		STZ	<WORK0
		LSR	A
		ROR	<WORK0
		LDX	<MPDTN1
;// 03.08.19 //		CPX	#0B5H
		CPX	#0B5H
		BEQ	GDSL140		; yama ?
;					; no
;// 03.08.19 //		CPX	#0BEH
		CPX	#0BEH
		BNE	GDSL160		; mori kokage ?
;					; yes
GDSL140		EQU	$
		LSR	A
		ROR	<WORK0
		CMP	#03000H
		BCC	GDSL180		; (-) data ?
;					; yes
		ORA	#0F000H
		BRA	GDSL180
;
GDSL160		EQU	$
		CMP	#07000H
		BCC	GDSL180		; (-) data ?
;					; yes
		ORA	#0F000H
GDSL180		EQU	$
		STA	<WORK6
;
		LDA	!SCV1CT
		CLC
		ADC	<WORK0
		STA	!SCV1CT
		LDA	<SCCV1
		ADC	<WORK6
		STA	<SCCV1
		LDA	<MPDTNO
		AND	#0003FH
		CMP	#0001BH
		BNE	GDSL200		; piramido ?
;					; yes
		LDA	#00600H
		CMP	<SCCV1
		BCC	GDSL190		; limit ?
;					; no
		STA	<SCCV1
GDSL190		EQU	$
		LDA	#006C0H
		CMP	<SCCV1
		BCS	GDSL200		; limit check ?
;					; yes
		STA	<SCCV1
GDSL200		EQU	$
		LDA	<PLXPS1
		CLC
		ADC	#00008H
		STA	<WORKE
		LDA	#00001H
		STA	<WORK0
;
		LDA	<PLXMVC
		AND	#000FFH
		BNE	GDSL220		; x-move ?
;					; no
		JMP	GDSL380
;
GDSL220		EQU	$
;// 03.09.17 //		CMP	#00080H
;// 03.09.17 //		BCC	GDSL240		; (-) data ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		EOR	#000FFH
;// 03.09.17 //		INC	A
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		DEC	<WORK0
;// 03.09.17 //		STA	<WORK2
;// 03.09.17 //;
;// 03.09.17 //		LDA	!PXLFCT
;// 03.09.17 //		CMP	<WORKE
;// 03.09.17 //		BCC	GDSL380		; scroll ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDY	#004H
;// 03.09.17 //		BRA	GDSL280
;// 03.09.17 //;
;// 03.09.17 //GDSL240		EQU	$
;// 03.09.17 //		STA	<WORK2
;// 03.09.17 //;
;// 03.09.17 //		LDA	<WORKE
;// 03.09.17 //		CMP	!PXRTCT
;// 03.09.17 //		BCC	GDSL380		; scroll ok ?
;// 03.09.17 //;					; yes
;// 03.09.17 //		LDY	#006H
;// 03.09.17 //GDSL280		EQU	$
;// 03.09.17 //		LDX	#000H
;// 03.09.17 //		JSR	GDSL400		; x-move
		STZ	<WORK4
;
		CMP	#00080H
		BCC	GDSL240		; (-) data ?
;					; yes
		EOR	#000FFH
		INC	A
		DEC	<WORK0
		DEC	<WORK0
GDSL240		EQU	$
		STA	<WORK2
;
		LDX	#004H
		STX	<WORK8
GDSL250		EQU	$
		LDA	<PLXMVC
		AND	#000FFH
		CMP	#00080H
		BCC	GDSL260		; (-) data ?
;					; yes
		LDA	!PXLFCT
		CMP	<WORKE
		BCC	GDSL290		; scroll ok ?
;					; yes
		LDY	#004H
		BRA	GDSL270
;
GDSL260		EQU	$
		LDA	<WORKE
		CMP	!PXRTCT
		BCC	GDSL290		; scroll ok ?
;					; yes
		LDY	#006H
GDSL270		EQU	$
		LDX	#000H
		JSR	GDSL400		; x-move
GDSL290		EQU	$
		DEC	<WORK2
		BNE	GDSL250		;
;					;
		LDA	<WORK4
		STA	!SCRMVX		; X-scroll dot
;
;// 03.09.17 //		LDA	!PXRTCT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK4
;// 03.09.17 //		STA	!PXRTCT
;// 03.09.17 //		LDA	!PXLFCT
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK4
;// 03.09.17 //		STA	!PXLFCT
;
;// 03.02.25 //		LDA	!GRNDNO
;// 03.02.25 //		BNE	GDSL380		; BG.1 move ?
;// 03.02.25 //;					; yes
		LDX	<MPDTN1
;// 03.08.19 //		CPX	#0B7H
		CPX	#097H
		BEQ	GDSL380		; kiri ?
;					; no
;// 03.08.19 //		CPX	#0BDH
		CPX	#09DH
		BEQ	GDSL380		; kiri ?
;					; yes
		LDA	<WORK4
		BEQ	GDSL380		; move ?
;					; yes
		STZ	<WORK0
		LSR	A
		ROR	<WORK0
		LDX	<MPDTN1
;// 03.08.19 //		CPX	#0B5H
		CPX	#095H
		BEQ	GDSL300		; yama ?
;					; no
;// 03.08.19 //		CPX	#0BEH
		CPX	#09EH
		BNE	GDSL350		; mori kokage ?
;					; yes
GDSL300		EQU	$
		LSR	A
		ROR	<WORK0
		CMP	#03000H
		BCC	GDSL360		; (-) data ?
;					; yes
		ORA	#0F000H
		BRA	GDSL360
;
GDSL350		EQU	$
		CMP	#07000H
		BCC	GDSL360		; (-) data ?
;					; yes
		ORA	#0F000H
GDSL360		EQU	$
		STA	<WORK6
;
		LDA	!SCH1CT
		CLC
		ADC	<WORK0
		STA	!SCH1CT
		LDA	<SCCH1
		ADC	<WORK6
		STA	<SCCH1
GDSL380		EQU	$
		LDX	<MPDTNO
		CPX	#047H
		BEQ	GDSL390		; ura-kame-iwa ?
;					; no
		LDX	<MPDTN1
;// 03.08.19 //		CPX	#0BCH
		CPX	#09CH
		BEQ	GDSL387		; ura-yama ?
;					; no
;// 03.08.19 //		CPX	#0B7H
		CPX	#097H
		BEQ	GDSL385		; kiri ?
;					; no
;// 03.08.19 //		CPX	#0BDH
		CPX	#09DH
		BNE	GDSL390		; kiri ?
;					; yes
GDSL385		EQU	$
		LDA	!SCV1CT
		CLC
		ADC	#02000H
		STA	!SCV1CT
		LDA	<SCCV1
		ADC	#00000H
		STA	<SCCV1
;
		LDA	!SCH1CT
		CLC
		ADC	#02000H
		STA	!SCH1CT
		LDA	<SCCH1
		ADC	#00000H
		STA	<SCCH1
		BRA	GDSL390
;
GDSL387		EQU	$
		LDA	!SCV1CT
		SEC
		SBC	#02000H
		STA	!SCV1CT
		LDA	<SCCV1
		SBC	#00000H
		CLC
		ADC	!SCRMVY		; Y-scroll dot
		STA	<SCCV1
;
		LDA	<SCCH2
		STA	<SCCH1
GDSL390		EQU	$
		LDA	<RMXYCT
		CMP	#00181H
		BNE	GDSL399		;
;					;
		LDA	<SCCV2
		ORA	#00100H
		STA	<SCCV1
		LDA	<SCCH2
		STA	<SCCH1
GDSL399		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		PLB			; (DBR) reset
		RTS
;
;
		MEM16
GDSL400		EQU	$
;// 03.09.17 //		STZ	<WORK4
;// 03.09.17 //		STZ	<WORK6
GDSL420		EQU	$
		LDA	<SCCH2,X
		CMP	!SCVU,Y
		BNE	GDSL440		; limit ?
;					; yes
;// 03.09.17 //		LDA	<WORK6
;// 03.09.17 //		BNE	GDSL500		; move ?
;// 03.09.17 //;					; no
		TYA
		EOR	#00002H
		TAX
		LDA	#00000H
		STA	!UPSLCT,Y
		STA	!UPSLCT,X
		RTS
;
GDSL440		EQU	$
		CLC
		ADC	<WORK0
		STA	<SCCH2,X
;
;// 03.09.17 //		INC	<WORK6
		LDA	<WORK4
		CLC
		ADC	<WORK0
		STA	<WORK4
;
;
		LDX	<WORK8
		LDA	!PYDWCT,X
		CLC
		ADC	<WORK0
		STA	!PYDWCT,X
		INC	A
		INC	A
		STA	!PYUPCT,X
;
;// 03.09.17 //		DEC	<WORK2
;// 03.09.17 //		BNE	GDSL420		; move end ?
;// 03.09.17 //;					; yes
GDSL500		EQU	$
		TYA
		EOR	#00002H
		TAX
;// 02.11.19 //		LDA	<WORK0
;// 02.11.19 //		BMI	GDSL600		; up,left ?
;// 02.11.19 //;					; no
;// 02.11.19 //		LDA	!UPSLCT,Y
;// 02.11.19 //		CMP	#00010H
;// 02.11.19 //		BNE	GDSL520		; write ?
;// 02.11.19 //;					; yes
;// 02.11.19 //		SEC
;// 02.11.19 //		SBC	#00010H
;// 02.11.19 //		STA	!UPSLCT,Y
;// 02.11.19 //;
;// 02.11.19 //		LDA	GDWTPT,Y
;// 02.11.19 //		ORA	!GDWTFG
;// 02.11.19 //		STA	!GDWTFG
;// 02.11.19 //GDSL520		EQU	$
		LDA	!UPSLCT,Y
;// 03.09.17 //		CLC
;// 03.09.17 //		ADC	<WORK6
		INC	A
		STA	!UPSLCT,Y
		CMP	#00010H
		BMI	GDSL540		; write ?
;					; yes
		SEC
		SBC	#00010H
		STA	!UPSLCT,Y
;
		LDA	GDWTPT,Y
		ORA	!GDWTFG
		STA	!GDWTFG
GDSL540		EQU	$
		LDA	#00000H
		SEC
		SBC	!UPSLCT,Y
		STA	!UPSLCT,X
		RTS
;
;// 02.11.19 //GDSL600		EQU	$
;// 02.11.19 //		LDA	!UPSLCT,Y
;// 02.11.19 //		CMP	#0FFF0H
;// 02.11.19 //		BNE	GDSL620		; write ?
;// 02.11.19 //;					; yes
;// 02.11.19 //		CLC
;// 02.11.19 //		ADC	#00010H
;// 02.11.19 //		STA	!UPSLCT,Y
;// 02.11.19 //;
;// 02.11.19 //		LDA	GDWTPT,Y
;// 02.11.19 //		ORA	!GDWTFG
;// 02.11.19 //		STA	!GDWTFG
;// 02.11.19 //GDSL620		EQU	$
;// 02.11.19 //		LDA	!UPSLCT,Y
;// 02.11.19 //		SEC
;// 02.11.19 //		SBC	<WORK6
;// 02.11.19 //		STA	!UPSLCT,Y
;// 02.11.19 //		CMP	#0FFF1H
;// 02.11.19 //		BCS	GDSL640		; write ?
;// 02.11.19 //;					; yes
;// 02.11.19 //		CLC
;// 02.11.19 //		ADC	#00010H
;// 02.11.19 //		STA	!UPSLCT,Y
;// 02.11.19 //;
;// 02.11.19 //		LDA	GDWTPT,Y
;// 02.11.19 //		ORA	!GDWTFG
;// 02.11.19 //		STA	!GDWTFG
;// 02.11.19 //GDSL640		EQU	$
;// 02.11.19 //		LDA	!UPSLCT,Y
;// 02.11.19 //		CLC
;// 02.11.19 //		ADC	#00010H
;// 02.11.19 //		STA	!UPSLCT,X
;// 02.11.19 //		RTS
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		X-Scroll end check data set		(SLEDS0)	*
;************************************************************************
SCLCD0		EQU	$
		WORD	00000H,00100H
		WORD	00100H,00000H
;
;
SLEDS0		EQU	$
		ASL	A
		ASL	A
		TAY
		LDX	#00000000B
SED040		EQU	$
		LDA	SCLCD0,Y
		STA	!SCKX00,X
		INY
		INX
		CPX	#04H
		BNE	SED040		;
;					;
		RTS
;
;
;************************************************************************
;*		Y-Scroll end check data set		(SLEDS1)	*
;************************************************************************
SCLCD1		EQU	$
		WORD	00000H,00110H
		WORD	00100H,00010H
;
;
SLEDS1		EQU	$
		ASL	A
		TAY
		LDX	#00000000B
SED140		EQU	$
		LDA	SCLCD1,Y
		STA	!SCKY00,X
		INY
		INX
		CPX	#04H
		BNE	SED140		;
;					;
		RTS
;
;
;************************************************************************
;*		Scroll check				(SCRLCK)	*
;************************************************************************
SCCAD0		EQU	$		; scroll counter add. data-0
;			   up   down   left  right
		WORD	00004H,0FFFCH,00004H,0FFFCH
;
GADDDT5		EQU	$
		WORD	00034H,00034H,0003BH,0003AH
;
;
SCRLCK		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
;// 03.05.08 //		LDA	<PWORK6
;// 03.05.08 //		BEQ	SLCK20		; player in-door ?
;// 03.05.08 //;					; yes
;// 03.05.08 //		LDA	#OMS000		; oam shokyo set
;// 03.05.08 //		STA	<OMSBMD
;// 03.05.08 //SLCK20		EQU	$
		INC	!PSCCCT
;
		LDA	!SCRLFG
		ASL	A
		TAY
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	!YUREXD
		STZ	!YUREYD
;
		LDX	#000H
		CPY	#004H
		BCS	SLCK40		; SCCH ?
;					; no
		LDX	#006H
SLCK40		EQU	$
;// 02.04.17 //		LDA	<SCCH1,X
;// 02.04.17 //		CLC
;// 02.04.17 //		ADC	SCCAD0,Y
;// 02.04.17 //		STA	<SCCH1,X
		LDA	<SCCH2,X
		CLC
		ADC	SCCAD0,Y
		AND	#0FFFEH
		STA	<SCCH2,X
		STA	<SCCH1,X
		STA	<WORK0
;
		LDX	#000H
		CPY	#004H
		BCC	SLCK60		; player y-pos. hosei ?
;					; no
		LDX	#002H		;        x-pos. hosei
SLCK60		EQU	$
		LDA	!PSCCCT
		AND	#000FFH
		CMP	GADDDT5,Y
		BCC	SLCK80		; player position replace ?
;					; yes
		LDA	<PLYPS1,X
		CLC
		ADC	SCCAD0,Y
		STA	<PLYPS1,X
SLCK80		EQU	$
		LDA	<WORK0
;// 03.03.20 //		AND	#01FEH
		AND	#001FCH
		CMP	!SCKY00,Y
		BNE	SLCK120		; scroll end ?
;					; yes
;// 02.12.05 //		LDA	SCCAD0,Y
;// 02.12.05 //		LDX	#000H
;// 02.12.05 //		CPY	#004H
;// 02.12.05 //		BCC	SLCK80		; player y-pos. hosei ?
;// 02.12.05 //;					; no
;// 02.12.05 //		LDX	#002H		;        x-pos. hosei
;// 02.12.05 //SLCK80		EQU	$
;// 02.12.05 //		CLC
;// 02.12.05 //		ADC	<PLYPS1,X
;// 02.12.05 //		STA	<PLYPS1,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>MPBTSET	; map on/off bit set
;
		PLB			; (DBR) reset
;
		INC	<JRSBPT
		STZ	!PSCCCT
;// 03.05.08 //		STZ	<OMSBMD
;
		LDA	<GAMEMD
		CMP	#p1_scl1
		BNE	SLCK160		;
;					;
		JSL	>WBUFS1		; BG.1 write buffer set
		RTS
;
SLCK120		EQU	$
		PLB			; (DBR) reset
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
SLCK160		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Scroll check				(WPSRLCK)	*
;************************************************************************
WSCAD0		EQU	$		; warp-scroll counter add. data-0
;			   up   down
		WORD	00020H,0FFC0H,00020H,0FFE0H
;
;
WPSRLCK 	EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		LDA	#OMS000		; oam shokyo set
		STA	<OMSBMD
		STA	!OPNOSI
;
		LDA	!SCRLFG
		ASL	A
		TAX
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCCV2
		CLC
		ADC	SCCAD0,X
		AND	#0FFFCH
		STA	<SCCV2
		STA	<SCCV1
		AND	#01FCH
		CMP	!SCKY00,X
		BNE	WPSC120		; scroll end ?
;					; yes
		LDY	<GAMEMD
		CPY	#p1_sls0
		BCC	WPSC020		;
;					;
		INX
		INX
		INX
		INX
WPSC020		EQU	$
		LDA	<PLYPS1
		CLC
		ADC	WSCAD0,X
		STA	<PLYPS1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<OMSBMD
		STZ	!OPNOSI
		INC	<JRSBPT
WPSC120		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		PLB			; (DBR) reset
		RTS
;
;
;
;************************************************************************
;*		Ground  Scroll check			(GSLCHK)	*
;************************************************************************
SCCAD1		EQU	$		; scroll counter add. data-0
;			   up   down   left  right
		WORD	0FFF8H,00008H,0FFF8H,00008H
SCCAD2		EQU	$		; player pos. hosei data
		WORD	0FFE8H,00018H,0FFD8H,00018H
SCCAD3		EQU	$
		WORD	0FF90H,00070H,0FF90H,00070H
SCCAD4		EQU	$
		WORD	0FE00H,00200H,0FE00H,00200H
SCCAD5		EQU	$
		WORD	00018H,000E8H,00008H,000E8H
;
;
SCKY0DT		EQU	$
		WORD	0FF20H,0FF20H,0FF20H,0FF20H,0FF20H,0FF20H,0FF20H,0FF20H
		WORD	0FF20H,0FF20H,00120H,0FF20H,0FF20H,0FF20H,0FF20H,00120H
		WORD	00320H,00320H,00320H,00320H,00320H,00320H,00320H,00320H
		WORD	00520H,00520H,00520H,00520H,00520H,00520H,00520H,00520H
		WORD	00520H,00520H,00720H,00520H,00520H,00720H,00520H,00520H
		WORD	00920H,00920H,00920H,00920H,00920H,00920H,00920H,00920H
		WORD	00B20H,00B20H,00B20H,00B20H,00B20H,00B20H,00B20H,00B20H
		WORD	00B20H,00B20H,00D20H,00D20H,00D20H,00B20H,00B20H,00D20H
;
SCKX0DT		EQU	$
		WORD	0FF00H,0FF00H,00300H,00500H,00500H,00900H,00900H,00D00H
		WORD	0FF00H,0FF00H,00300H,00500H,00500H,00900H,00900H,00D00H
		WORD	0FF00H,00100H,00300H,00500H,00700H,00900H,00B00H,00D00H
		WORD	0FF00H,0FF00H,00300H,00500H,00500H,00900H,00B00H,00B00H
		WORD	0FF00H,0FF00H,00300H,00500H,00500H,00900H,00B00H,00B00H
		WORD	0FF00H,00100H,00300H,00500H,00700H,00900H,00B00H,00D00H
		WORD	0FF00H,0FF00H,00300H,00500H,00700H,00900H,00900H,00D00H
		WORD	0FF00H,0FF00H,00300H,00500H,00700H,00900H,00900H,00D00H
;
;
GADDDT0		EQU	$
;;;;;;;;		WORD	00120H,00320H
		WORD	0011EH,0031EH
GADDDT1		EQU	$
		WORD	00100H,00300H
GADDDT2		EQU	$
		WORD	002E0H,004E0H
GADDDT3		EQU	$
		WORD	00300H,00500H
GADDDT4		EQU	$
		WORD	0001BH,0001BH,0001EH,0001EH
;
;
		MEM16
GSLC200		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		PLB			; (DBR) reset
;
		LDX	!SCRLMD
		RTS
;
GSLCHK		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		INC	!PSCCCT
;
		LDA	!SCRLFG
		ASL	A
		TAY
;
		LDX	#001H
		CPY	#004H
		BCS	GSLC20		; V-move ?
;					; yes
		LDX	#000H
GSLC20		EQU	$
		LDA	SCCAD1,Y
		STA	!SCRMVY,X	; move dot set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PHY			; (Y) push
		LDX	#000H
		CPY	#004H
		BCS	GSLC40		; SCCH ?
;					; no
		LDX	#006H
GSLC40		EQU	$
		LDA	<SCCH2,X
		CLC
		ADC	SCCAD1,Y
		STA	<SCCH2,X
		LDY	<MPDTNO
		CPY	#01BH
		BEQ	GSLC50		; piramido ?
;					; no
		CPY	#05BH
		BEQ	GSLC50		; piramido ?
;					; no
		STA	<SCCH1,X
GSLC50		EQU	$
		STA	<WORK0
		PLY			; (Y) pull
;
		LDX	#000H
		CPY	#004H
		BCC	GSLC60		; player y-pos. hosei ?
;					; no
		LDX	#002H		;        x-pos. hosei
GSLC60		EQU	$
		LDA	!PSCCCT
		AND	#000FFH
		CMP	GADDDT4,Y
		BCC	GSLC80		; player position replace ?
;					; yes
		LDA	<PLYPS1,X
		CLC
		ADC	SCCAD1,Y
		STA	<PLYPS1,X
GSLC80		EQU	$
		LDA	<WORK0
		CMP	!SCKY00,Y
		BNE	GSLC200		; scroll end ?
;					; yes
		LDA	!SCRLFG
		AND	#000FFH
		BNE	GSLC90		; up scroll ?
;					; yes
		LDA	<SCCV2
		SEC
		SBC	#00002H
		STA	<SCCV2
GSLC90		EQU	$
;;;;;;;;		LDX	#000H
;;;;;;;;		CPY	#004H
;;;;;;;;		BCC	GSLC80		; player y-pos. hosei ?
;;;;;;;;;					; no
;;;;;;;;		LDX	#002H		;        x-pos. hosei
;;;;;;;;GSLC80		EQU	$
		LDA	<PLYPS1,X
;// 02.12.04 //		AND	#0FF00H
;// 02.12.04 //		ORA	SCCAD5,Y
;// 02.12.04 //		CLC
;// 02.12.04 //		ADC	SCCAD2,Y
		AND	#0FFF8H
		STA	<PLYPS1,X
		CLC
		ADC	SCCAD3,Y
		PHA			; (A) push
;
		TXA
		ASL	A
		TAX
;
		PLA			; (A) pull
		CLC
		ADC	#0000BH
		STA	!PYDWCT,X
		INC	A
		INC	A
		STA	!PYUPCT,X
;
		PHX			; (X) push
;
		LDX	#000H
		LDA	!GRMSZ0
		BEQ	GSLC100		; 4x4 room ?
;					; yes
		INX
		INX
GSLC100		EQU	$
		LDA	!PLPTRM
		CLC
		ADC	GPTREPD,Y
		TAY
		JSR	GSLC400		; scroll check RAM set
		PLX			; (X) pull
;
		STZ	!UPSLCT,X
		STZ	!DWSLCT,X
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#001H
		STA	!SCLSFG		; scroll flag on!!
;
		LDX	!SCRLMD
;// 03.06.27 //		STZ	!SCRLMD
;
		INC	<GAMEMD
		STZ	<JRSBPT
		STZ	!PSCCCT
;
		PLB			; (DBR) reset
;
		LDA	<WORK0
		PHA			; (A) push
		PHX			; (X) push
;
		JSL	>ENGRCK		; enmey ground check
;
		PLX			; (X) pull
		PLA			; (A) pull
		RTS
;
;
		MEM16
GSLC400		EQU	$
		LDA	SCVU0DT,Y
		STA	!SCVU+0
		CLC
		ADC	GADDDT0,X
		STA	!SCVU+2
		LDA	SCVU4DT,Y
		STA	!SCVU+4
		CLC
		ADC	GADDDT1,X
		STA	!SCVU+6
;
		LDA	SCKY0DT,Y
		STA	!SCKY00
		CLC
		ADC	GADDDT2,X
		STA	!SCKY10
		LDA	SCKX0DT,Y
		STA	!SCKX00
		CLC
		ADC	GADDDT3,X
		STA	!SCKX10
		RTS
;
;
;
;
;************************************************************************
;*		Auto move				(AUTOMV0)	*
;************************************************************************
PTRPDT		EQU	$		; point replace data
;			  U    D    L    R
		BYTE	000H,005H,00AH,00FH
;
YAMCKD0		EQU	$		; Y(+) auto move check data
;// 03.06.25 //		BYTE	00CH,020H,030H,038H,040H
		BYTE	00CH,020H,030H,038H,048H
YAMCKD1		EQU	$		; Y(-)
		BYTE	0D4H,0D8H,0C0H,0C0H,0A8H
XAMCKD0		EQU	$		; X(+)
;// 03.06.25 //		BYTE	00CH,018H,028H,030H,038H
		BYTE	00CH,018H,028H,030H,040H
XAMCKD1		EQU	$		; X(-)
;// 03.06.25 //		BYTE	0E4H,0D8H,0C8H,0C0H,0B8H
		BYTE	0E4H,0D8H,0C8H,0C0H,0B0H
;
;
AUTOMV0		EQU	$
;///////		JSL	>PYCRCN		; player chara henkan sub
		JSR	PFLGCL		; player flag clear
;
		JSR	ATMV000
;
		INC	<JRSBPT
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 02.06.06 //		LDA	<NXRMCT
;// 02.06.06 //		ASL	A
;// 02.06.06 //		TAY
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>DJNTBL,X
		ORA	!MAPSTT
		STA	>DJNTBL,X	; map on/off bit set
;// 02.06.06 //		TYX			; (X) <-- (Y)
;// 02.06.06 //		STA	>DJNTBL,X	; map on/off bit set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
ATMV000		EQU	$
;// 02.12.05 //		LDX	!SCRLFG
;// 02.12.05 //		LDA	>PTRPDT,X
;// 02.12.05 //		TAX
		LDA	!SCRLFG
		AND	#00000010B
		PHA			; (A) push
;// 02.12.05 //		LDA	>YAMCKD0,X
;// 02.12.05 //		STA	PLYPS1,Y
;// 02.12.05 //		BMI	ATMV020		; (+) ?
;// 02.12.05 //;					; yes
;// 02.12.05 //		TYX			; (X) <-- (Y)
;// 02.12.05 //		INC	<PLYPS0,X
;// 02.12.05 //ATMV020		EQU	$
		JSR	PYATCK		; player auto move check
		LDX	!SCRLFG
;;;;;;;;		CMP	#003H
;;;;;;;;		BNE	ATMV020		; under ?
;;;;;;;;;					; yes
;;;;;;;;		PHA			; (A) push
;;;;;;;;		LDA	<PLBGCKF
;;;;;;;;		BNE	ATMV010		; player BG.2 ?
;;;;;;;;;					; yes
;;;;;;;;		INC	A
;;;;;;;;		STA	!CDBGCKF
;;;;;;;;ATMV010		EQU	$
;;;;;;;;		PLA			; (A) pull
;;;;;;;;ATMV020		EQU	$
		CMP	#002H
		BNE	ATMV030		; bomb,shutter ?
;					; yes
		LDA	#001H
ATMV030		EQU	$
		CMP	#004H
		BNE	ATMV035		; undet-bomb ?
;					; yes
		LDA	#002H
ATMV035		EQU	$
		CLC
		ADC	>PTRPDT,X
		TAX
		LDY	#008H
		LDA	>YAMCKD0,X
		BPL	ATMV040		; (-) data ?
;					; yes
		LDY	#0F8H
ATMV040		EQU	$
		STY	<WORK0
		SEC
		SBC	<WORK0
		PLY			; (Y) pull
		STA	PLYPS1,Y
;
		LDX	#000H
		STX	<OMSBMD		; oam shokyo clear !
;///////		INC	<JRSBPT
		RTS
;
;
;
AUTOMV1		EQU	$
		LDA	>DARKFG
		ORA	>BKDARKF
		BEQ	AUTOMV2		; fade out ?
;					; yes
		JSL	>CGCNG1
AUTOMV2		EQU	$
		JSL	>PYCRCN		; player chara henkan sub
;
		JSR	ATMV200		; auto move
		BCC	ATMV180		; auto move end ?
;					; yes
		LDX	<PYATFG
		CPX	#002H
		BEQ	ATMV120		; bomb door ?
;					; no
		CPX	#004H
		BNE	ATMV140		; shutter door ?
;					; yes
ATMV120		EQU	$
		STZ	<PWORK6
ATMV140		EQU	$
		STZ	<PWORK9
		STZ	<DRATMV
		STZ	<PYATFG
ATMVEND		EQU	$
		STZ	!SCRLFG
		INC	<JRSBPT
;///////		STZ	<GAMEMD
;///////		STZ	<JRSBPT
ATMV180		EQU	$
		RTS
;
;
;
ATMV200		EQU	$
		LDX	!SCRLFG
		LDA	<PYATFG		; (A) <-- door auto move check point
		CLC
		ADC	>PTRPDT,X
		TAX
;
		LDY	#002H
		LDA	!SCRLFG
		LSR	A
		BCC	ATMV210		; Y(+) ?
;					;
		LDY	#0FEH
ATMV210		EQU	$
		STY	<WORK0
		LSR	A
		BCS	ATMV240		; up,down ?
;					; yes
		LDY	#0FFH
		LDA	<WORK0
		BMI	ATMV220		;
;					;
		INY
ATMV220		EQU	$
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		TYA
		ADC	<PLYPS0
		STA	<PLYPS0
;
		LDA	<PLYPS1
		AND	#11111110B
		CMP	>YAMCKD0,X
		BEQ	ATMV280		; end ?
;					; no
ATMV230		EQU	$
		CLC
		RTS
;
ATMV240		EQU	$
		LDY	#0FFH
		LDA	<WORK0
		BMI	ATMV250		;
;					;
		INY
ATMV250		EQU	$
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		TYA
		ADC	<PLXPS0
		STA	<PLXPS0
;
		LDA	<PLXPS1
		AND	#11111110B
		CMP	>YAMCKD0,X
		BNE	ATMV230		; end ?
;					; yes
ATMV280		EQU	$
		SEC
		RTS
;
;
;************************************************************************
;*		Player auto move check			(PYATCK)	*
;************************************************************************
PYATCK		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<PLYPS1
		CLC
		ADC	#0000CH
		AND	#001F8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	#00008H
		AND	#001F8H
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORK0
		LDX	<PLBGCKF
		BEQ	PYAC20		; BG.1 check ?
;					; yes
		CLC
		ADC	#01000H
PYAC20		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		TAX
		LDA	>READBF+000H,X
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDY	#000H
		CMP	#000H
		BEQ	PYAC40		; tsuuro ?
;					; no
		CMP	#009H
		BEQ	PYAC40		; little water ?
;					; no
		INY
;// 03.02.22 //		AND	#0EEH
		AND	#10001110B
		CMP	#080H
		BEQ	PYAC40		; normal ?
;					; no
;// 03.02.22 //		CMP	#088H
;// 03.02.22 //		BEQ	PYAC40		; warp ?
;// 03.02.22 //;					; no
		INY
		CMP	#082H
		BEQ	PYAC40		; bomb,shutter ?
;					; no
;// 03.02.22 //		CMP	#08AH
;// 03.02.22 //		BEQ	PYAC40		; change bomb,shutter ?
;// 03.02.22 //;					; no
		INY
		CMP	#084H
		BEQ	PYAC40		; under ?
;					; no
		CMP	#088H
		BEQ	PYAC40		; warp ?
;					; no
;// 03.02.22 //		CMP	#08AH
;// 03.02.22 //		BEQ	PYAC40		; warp under ?
;// 03.02.22 //;					; no
		INY
		CMP	#086H
		BEQ	PYAC40		; under-shutter ?
;					; no
;// 03.02.22 //		CMP	#08EH
;// 03.02.22 //		BEQ	PYAC40		; change under-shutter ?
;// 03.02.22 //;					; no
		DEY
		DEY
PYAC40		EQU	$
		STY	<PYATFG
		TYA
		RTS
;
;
;
;************************************************************************
;*		GROUND Auto move			(GATMOVE)	*
;************************************************************************
GLMTDT		EQU	$
;// 03.05.20 //		BYTE	0E0H,008H,0E8H,008H
		BYTE	0E0H,008H,0E0H,010H
;
;
GATMOVE		EQU	$
		JSL	>PYCRCN		; player character change
;
		LDY	#002H
;// 02.08.27 //		LDA	!SCRLFG
		LDA	!GATMFG
		LSR	A
		BCS	GATM20		; (+) ?
;					; no
		LDY	#0FEH
GATM20		EQU	$
		STY	<WORK0
		LDX	#002H
		LSR	A
		BCS	GATM40		; up,down ?
;					; yes
		LDX	#000H
GATM40		EQU	$
		LDY	#0FFH
		LDA	<WORK0
		BMI	GATM60		;
;					;
		INY
GATM60		EQU	$
		CLC
		ADC	<PLYPS1,X
		STA	<PLYPS1,X
		TYA
		ADC	<PLYPS0,X
		STA	<PLYPS0,X
;
		LDA	<PLYPS1,X
;// 02.08.27 //		LDX	!SCRLFG
		LDX	!GATMFG
		AND	#11111110B
		CMP	>GLMTDT,X
		BNE	GATM80		; end ?
;					; yes
		STZ	<GAMEMD
		STZ	<JRSBPT
		LDA	!SVSND0
		CMP	#0F1H
		BNE	GATM80		; sound reset ?
;					; yes
		LDX	#002H
		LDA	<MPDTNO
;;;;;;;;		AND	#10111111B
		CMP	#018H
		BNE	GATM70		; machi ?
;					; yes
		LDA	>MODTBL0
		CMP	#003H
		BCS	GATM70		; kou-han ?
;					; no
		LDX	#007H
GATM70		EQU	$
		STX	!SOUND0
;// 03.09.16 //		STX	!SVSND0		; <sound0>
GATM80		EQU	$
		JSR	GNDSCL		; gamen scroll check
;
		LDA	!GDWTFG
		BEQ	GATM99		; write ?
;					; yes
;// 03.08.08 //		LDA	<SLMODE
;// 03.08.08 //		CMP	#MD_evply
;// 03.08.08 //		BEQ	GATM90		; event ?
;// 03.08.08 //;					; no
;// 03.08.08 //		JSR	MPMAIN		; ground write
;// 03.08.08 //		RTS
;// 03.08.08 //;
;// 03.08.08 //GATM90		EQU	$
		JSR	MPMAIN		; event write
GATM99		EQU	$
		RTS
;
;
;
;************************************************************************
;*		GROUND Auto move - 1			(GATMOV1)	*
;************************************************************************
GATMOV1		EQU	$
		JSL	>PYCRCN		; player character change
;
		LDY	#001H
;// 02.08.27 //		LDA	!SCRLFG
		LDA	!GATMFG
		LSR	A
		BCS	GATM120		; (+) ?
;					; no
		LDY	#0FFH
GATM120		EQU	$
		STY	<WORK0
		LDX	#002H
		LSR	A
		BCS	GATM140		; up,down ?
;					; yes
		LDX	#000H
GATM140		EQU	$
		LDY	#0FFH
		LDA	<WORK0
		BMI	GATM160		;
;					;
		INY
GATM160		EQU	$
		CLC
		ADC	<PLYPS1,X
		STA	<PLYPS1,X
		TYA
		ADC	<PLYPS0,X
		STA	<PLYPS0,X
;
		TXA
		LSR	A
		TAX
		LDA	<WORK0
		STA	<PLYMVC,X	;
;
		DEC	!GATMCT
		BNE	GATM180		; end ?
;					; yes
		LDA	#MD_gdply
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
GATM180		EQU	$
		JSR	GNDSCL		; gamen scroll check
;
;// 03.08.08 //		LDA	!GDWTFG
;// 03.08.08 //		BEQ	GATM199		; write ?
;// 03.08.08 //;					; yes
;// 03.08.08 //		JSR	MPMAIN		; ground write
;// 03.08.08 //GATM199		EQU	$
		RTS
;
;
;
;
;
;
;
;************************************************************************
;*		Mozaiku	set				(MZKSET)	*
;************************************************************************
MZKSET		EQU	$
		LDA	>CCNGCT
		LSR	A
		BCC	MZKSET1		;
;					;
MZKSET0		EQU	$
		LDA	>MZKCNT
		CLC
		ADC	#00010000B
		STA	>MZKCNT
MZKSET1		EQU	$
		LDA	#00001001B
		STA	<MD2105		; BG. mode & char. size flag set
		LDA	>MZKCNT
		ORA	#00000111B
		STA	<MD2106		; BG.1,2,3 mozaiku set
		RTS
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
