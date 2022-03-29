;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3		1991.08.28(WED)
;
;--------------------------------------------------------------------
;
		ORG	078000H
;
;=============================================== (zel_play) =========
		GLB	PLMOVE,PYCRCN,PYSPST,HOLEDM,PLAFHL
		GLB	WPMSCK,PLYCLR,PLYCLR1
		GLB	INWDIT,INWDMV,BLOKMV,BKHLMV,HPMV400,EDPYDM0
		GLB	EATSET,PYDMCLR,BLCKOM,RABHEN,MGPTSB2
		GLB	RASINT,RASNIN,RASNOT,OPNINT,STEINT
		GLB	STRTIN,STRTOT,DASCLR1,DASHON,PLRCHK
		GLB	BGCHCKA,ATMSIT,SWSPCL1,PLYCLR3
		GLB	DASIMD,SWSPCL2,PLOTCK1,PLJSCK
		GLB	PYKNSP1,PLJTCK,MNSRIT,MNBBIT,MNIRIT,FUEMOVL
		GLB	DOKYDT,DOKXDT,DKHDCK,PYCRCN1
		GLB	LNMD,SWMD,JPMV,KNSP,SDSP,BBSP,JNSP,OPNG
		GLB	ATDM,BOGN,JWMV,RABT,TRFS,DASH,HLDM,JMDM
		GLB	MNBB,MNSR,KNS1,RAB1
		GLB	DAMGI,DAMG3,MCAGE
		GLB	BKYTD0
		GLB	kakof,lkdie
;=============================================== (zel_ply1) =========
		EXT	PLOTCK,PLGMOV,KNENIT1,MESWIT
;=============================================== (zel_pysb) =========
		EXT	PYOMST
		EXT	OMS000,KNMV,DIFN,LNPYIN,PYINDX,ENMYDT,ENMXDT
		EXT	LVKNYPD,LVKNXPD,NWKN,LVKNCRD
;=============================================== (zel_endt) ========
		EXT	HYUSET
;=============================================== (zel_data0) ========
		EXT	HLRMDT,HLRMPT
;=============================================== (zel_init) =========
		EXT	MPBTSET1,STPC800,UDJRTNCK,MOZAIKU
;
		EXT	XCALC0,XCALC1,XCALC2,XCALC3
		EXT	YCALC0,YCALC1,YCALC2,YCALC3
;
		EXT	p1_move,p1_scl0,p1_scl1,p1_bchg,p1_dopn,p1_sdop
		EXT	p1_stpc,p1_hldn,p1_mcng,p1_opyk,p1_bmbd,p1_ltwp
		EXT	p1_wtrd,p1_wtru,p1_wgop,p1_kstp,p1_fdin,p1_mcg1
		EXT	p1_warp,p1_sls0,p1_sls1,p1_hlrs,p1_dwrp
;
		EXT	p2_move,p2_atmv,p2_doet,p2_dext,p2_dex1,p2_dwrt
		EXT	p2_fout,p2_awt1,p2_fin1,p2_fot1,p2_fot2,p2_fot3
		EXT	p2_mprs,p2_kage,p2_fot4,p2_hlrs,p2_kiri,p2_kgrs
		EXT	p2_kzbd
;
		EXT	p3_sitm,p3_msge,p3_mapd,p3_life,p3_pray,p3_cgrs
		EXT	p3_mpup,p3_lmup,p3_warp
;=============================================== (zel_main) =========
		EXT	JSRSUB,JSRSUBL,GDCHCK
;
		EXT	MD_title,MD_djint,MD_djply,MD_gdint,MD_gdply
		EXT	MD_fdout,MD_fdin,MD_etcpl,MD_gover
		EXT	MD_wpout,MD_wpin,MD_ghldn,MD_evply
;=============================================== (zel_enmy) =========
		EXT	OAMENT,OAMENT2,OAMENT3,OAMENT5
		EXT	BGCRDT,KATOBJ,CRTLCK,KUSAST,MTEST
		EXT	EMOVE
;=============================================== (zel_enmy2) ========
;=============================================== (zel_enmy3) ========
		EXT	HACHISTL,YOSEISTL
;=============================================== (zel_enmy4) ========
		EXT	ANAITST
;=============================================== (zel_char) =========
		EXT	PWTRCGS0,PLCGCN0,PWTRCGS1,PLCGCN1,PLCGCN2
		EXT	OPTCBFST
;=============================================== (zel_comn) =========
		EXT	TOBIORI,PPOSKP,TBKCHK,TBKCHK1
		EXT	HDMAOFF,MZKRST
;=============================================== (zel_exst) =========
		EXT	BLPHMOV,TKSVRM
		EXT	BEAMST,BEAMS2,JPIMIT,BOMINT,YAIMIT
		EXT	DTMVIT,WTIMIT,SCPINT
		EXT	SNDINT,SPBMINT,KONINT,KNHBIT,JISNINT
		EXT	YURINT,DAKINT,FOTINT,IBIMIT
		EXT	OPTNMV,OPINIT,RAOPIT,TTKINT
		EXT	TTKINT1,HAKAINT,HAKAMOV1,KNFSINT
		EXT	WARPINT,KNSOINT,BOALINT,KTFRINT,SBARINT
		EXT	BEAM1,BEAM2,BUME1,BOMBM,YAMOV
		EXT	DTMOV,OPMOV,WTMV0,HIBA2,SCPMV
		EXT	DTMV3,SODMV,SPBMV,KONMV,HIBA3,JISMV,YURMV
		EXT	KMRMV,FTMOV,FUTON,IBIKI,TAKARA,OPTIM,TORKM
		EXT	HAKMV,KNTMV,WAPMV,KNSOM,BOLMV,KANTR,SBAMV,BRSEN
		EXT	OKARN,KAZMV,TKDOW,TORK1,KNSEN,JPKF0
		EXT	prnce,jjmov,jjwat,jjsmv,mesmv,prnc1,kajya,hnoji
		EXT	nashi,kajy1,monky,monwt,bakud,takar
		EXT	pinpn
;=============================================== (zel_bms1) =========
		EXT	HBINT0,FUTNINT,IBIMIT,TAKAINT,OKIMIT,TKDINT
		EXT	KAZAINT,TTKINT2,KKTRIT,KNKIIT,DAKINT1
;=============================================== (zel_end2) =========
		EXT	SDLRCK,SDLRCP,SDLRCB
;=============================================== (zel_isub) =========
		EXT	INHDMA2
;=============================================== (zel_bgwt) =========
		EXT	LAMPPL,LAMPPL1,TKBXPL,MCBLKCK,BLKSCHK
		EXT	CDBGCD,PLBGCD,COINCK
;
		EXT	inf_ebl,bmd_blt
;=============================================== (zel_bg3) ==========
		EXT	MTRSUB,ITEM0ST
;=============================================== (zel_grnd) =========
		EXT	GDHLDNCK,CTDGCHK,GPULLCK,TTIWACK,TTIWACK1
;=============================================== (zel_msge) =========
		EXT	MS_0080,MS_0081,MS_0082,MS_0083,MS_0084,MS_0085,MS_0086,MS_0087
		EXT	MS_0088,MS_0089,MS_008A,MS_008B,MS_008C,MS_008D,MS_008E,MS_008F
		EXT	MS_00B2
		EXT	MS_00DE
		EXT	MS_01B0
		EXT	MS_01C0,MS_01C1,MS_01C2,MS_01C3,MS_01C4,MS_01C5,MS_01C6
		EXT	MS_01C7,MS_01C8,MS_01C9
		EXT	MS_0240,MS_0241,MS_0244,MS_0245,MS_0246,MS_0247,MS_0248
		EXT	MS_024B,MS_024C,MS_024D,MS_024E,MS_024F,MS_0250,MS_0251
		EXT	MS_0252,MS_0253,MS_0254,MS_0255,MS_0256
		EXT	MS_0457,MS_05B3
;====================================================================
;
		EXTEND
;
		MEM8
		IDX8
;
;************************************************************************
;*		Player move main			(PLMOVE)	*
;************************************************************************
PLMOVE		EQU	$
		PHB
		PHK
		PLB
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		STA	PLSVX1
		LDA	<PLYPS1
		STA	PLSVY1
		MEM8
		SEP	#00100000B
		STZ	ENSTFG
		LDA	!PYALSP		; player all stop ? [YES:PLME100]
		BNE	PLME100
;
		JSR	PLMVSB		; player move
;;;;;;;;;		JSL	>OPTNMV		; option move
PLME100		EQU	$
		JSR	HKPYMV		; haka move
		PLB
		RTL
;
;===============================================================
SDLP11		EQU	$
		JSR	SDLRSB1
		STA	SOUND1	;(S)
		RTS
SDLP12		EQU	$
		JSR	SDLRSB1
		STA	SOUND2	;(S)
		RTS
SDLP13		EQU	$
		JSR	SDLRSB1
		STA	SOUND3	;(S)
		RTS
;- - - - - - - - - - - - - - - - - - - - - - - -
SDLRSB1		EQU	$
		STA	ENHELP3
		JSL	>SDLRCP
		ORA	ENHELP3
		RTS
;
;************************************************************************
;*		Player move sub				(PLMVSB)	*
;************************************************************************
PLMVTBL		EQU	$
MVS000		WORD	LNMOVE 		; [0] link move shori
MVS010		WORD	HLDEMO		; [1] hole down demo
MVS020		WORD	JUMPDM		; [2] jump demo
MVS030		WORD	KNSPAL		; [3] ken special move
MVS040		WORD	SWMOVE		; [4] link swim move shori
MVS050		WORD	JUMPMV		; [5] jump move shori
MVS060		WORD	JPDWMV		; [6] jump down move shori
MVS070		WORD	PRPRMV		; [7] piri piri move shori
MVS080		WORD	SNDRSP		; [8] sounder special move shori
MVS090		WORD	BOBRSP		; [9] bomber special move shori
MVS0A0		WORD	JISNSP		; [A] jishin special move shori
MVS0B0		WORD	GKJPDM		; [B] down gake jump demo
MVS0C0		WORD	GKYODM		; [C] yoko gake jump demo
MVS0D0		WORD	YONYMV		; [D] up naname gake jump demo
MVS0E0		WORD	YODNMV		; [E] down naname gake jump demo
MVS0F0		WORD	GKYODM1		; [F] yoko gake 1 jump demo
MVS100		WORD	GKYODM2		; [10] yoko gake 2 jump demo
MVS110		WORD	DASHMV		; [11] dashu move demo
MVS120		WORD	DASHED		; [12] dashu move end demo
MVS130		WORD	BOGNMV		; [13] fook shot move demo
MVS140		WORD	TRBGCK		; [14] tryfose BG check demo
MVS150		WORD	ATMSDM		; [15] aitem motsu porze demo
MVS160		WORD	OPNGDM		; [16] oopning demo
MVS170		WORD	USGIMV		; [17] usagi move shori
MVS180		WORD	BGISMV		; [18] big isi move shori
MVS190		WORD	MONOSR		; [19] sunder monorisu shori
MVS1A0		WORD	MONOBB		; [1A] bomber monorisu shori
MVS1B0		WORD	MONOIR		; [1B] inoru monorisu shori
MVS1C0		WORD	USGIM1		; [1C] enmy usagi shori
MVS1D0		WORD	ITMHKM		; [1D] item hiku shori
MVS1E0		WORD	KNSPL1		; [1E] ken special move 1
;
;
LNMD		EQU	(MVS000-MVS000)/2
HLDM		EQU	(MVS010-MVS000)/2
JMDM		EQU	(MVS020-MVS000)/2
KNSP		EQU	(MVS030-MVS000)/2
SWMD		EQU	(MVS040-MVS000)/2
JPMV		EQU	(MVS050-MVS000)/2
JWMV		EQU	(MVS060-MVS000)/2
PRMV		EQU	(MVS070-MVS000)/2
SDSP		EQU	(MVS080-MVS000)/2
BBSP		EQU	(MVS090-MVS000)/2
JNSP		EQU	(MVS0A0-MVS000)/2
GKJM		EQU	(MVS0B0-MVS000)/2
GKYM		EQU	(MVS0C0-MVS000)/2
GKNY		EQU	(MVS0D0-MVS000)/2
GKDN		EQU	(MVS0E0-MVS000)/2
GKY1		EQU	(MVS0F0-MVS000)/2
GKY2		EQU	(MVS100-MVS000)/2
DASH		EQU	(MVS110-MVS000)/2
DAED		EQU	(MVS120-MVS000)/2
BOGN		EQU	(MVS130-MVS000)/2
TRFS		EQU	(MVS140-MVS000)/2
ATDM		EQU	(MVS150-MVS000)/2
OPNG		EQU	(MVS160-MVS000)/2
RABT		EQU	(MVS170-MVS000)/2
BGIS		EQU	(MVS180-MVS000)/2
MNSR		EQU	(MVS190-MVS000)/2
MNBB		EQU	(MVS1A0-MVS000)/2
MNIR		EQU	(MVS1B0-MVS000)/2
RAB1		EQU	(MVS1C0-MVS000)/2
ITMK		EQU	(MVS1D0-MVS000)/2
KNS1		EQU	(MVS1E0-MVS000)/2
;
DAMGI		EQU	03AH		; player flash time
DAMG3		EQU	090H		; player flash time
JTIME		EQU	013H		; player gake jump time lag
MCAGE		EQU	060H		; player aitem mochiage time
BKTIM		EQU	015H		; player block wait timer
;
PLMVSB		EQU	$
		LDA	DAMEFG
		BEQ	PLSB300
;
		LDA	<KAKUMD		; kakuremino ? [NO:PLSB040]
		BEQ	PLSB040
		STZ	DAMEFG
		STZ	<DIEFG
		STZ	<HANEFG
		BRA	PLSB300
;
PLSB040		EQU	$
		LDA	MRTKFG		; muteki flag on ? [YES:PLSB300]
		BNE	PLSB300
		LDA	DAMEFG
		STA	<WORK0
		STZ	DAMEFG
;
		LDA	BMMODE+0
		CMP	#BUME1
		BNE	PLSB080
		LDA	AITMMD
		BNE	PLSB080
		LDA	<KENFM
		BEQ	PLSB080
		STZ	BMMODE+0
		STZ	BMRMOV
;
PLSB080		EQU	$
		LDA	PYFLASH
		BNE	PLSB100
		LDA	#DAMGI		; flash flem set
		STA	PYFLASH
PLSB100		EQU	$
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#damgi
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#damgi
		JSR	SDLP12
;
		INC	HIMIFG 		; Damege count ! (fufufu)
;
		LDA	>LFNWCT		; dec life gerji
		SEC
		SBC	<WORK0
		CMP	#000H
		BEQ	PLSB180
		CMP	#0A8H
		BCC	PLSB200
PLSB180		EQU	$
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
		LDA	#000H
		STA	PYFLASH
		STA	>UPLFCT
;
PLSB200		EQU	$
		STA	>LFNWCT
;
PLSB300		EQU	$
		LDA	<LNMODE
		BEQ	PLSB400
		JSR	KAKU740
PLSB400		EQU	$
		LDA	<LNMODE
		ASL	A
		TAX
		JMP	(PLMVTBL,X)
;
;
;************************************************************************
;*		Player move				(LNMOVE)	*
;************************************************************************
LNMOVE		EQU	$
		JSR	PYRETUN		; player return hozon sub
;
;************ player deback mode check
		LDA	<KEYB2
		AND	#10000000B
		BEQ	LNMV002
		LDA	BGOFFG
		EOR	#001H
		STA	BGOFFG
LNMV002		EQU	$
;
;************* player move
LNMV008		EQU	$
		JSR	USGIM2		; enmy rabit henshin sub
		BCC	LNMV018
		LDA	<LNMODE
		CMP	#RABT
		BNE	LNMV010
		BRL	USGIMV
LNMV010		EQU	$
		RTS
;
LNMV018		EQU	$
		STZ	HLMKCT		; hole zlzl couter clear !
		LDA	<DIEFG		; yarare ? [NO:LNMV050]
		BEQ	LNMV050
;
LNMV01C		EQU	$
;;;;;;;;;		STZ	TMDTFG
		STZ	AITMBT
		STZ	AITMBT1
		STZ	TMBMCT		; meta flag clear
		STZ	DKYHZN
		STZ	PYDMNO		; y-key move clear
		STZ	PYDMNO1		; y-key move clear
		STZ	PYDMMD
		STZ	<KENKYL
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<HANIFG1
		JSL	>SWSPCL1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		STZ	<PLZPS0
		LDA	PIPIFG		; piri piri ? [NO:LNMV030]
		BEQ	LNMV030
		LDA	<KAKUMD		; kakuremino check
		BEQ	LNMV020
		JSR	KAKU200		; kakuremino clear !!
LNMV020		EQU	$
		JSR	PLKW0C0		; ken move clear !!
		LDA	#001H
		STA	MRTKFG		; muteki flag on ? [
		STZ	AITMMD
		LDA	#002H
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		LDA	#02BH
		JSR	SDLP13
		LDA	#PRMV
		STA	<LNMODE
		BRL	PRPRMV
LNMV030		EQU	$
		LDA	<GMMODE
		BNE	LNMV040
;;;;;;;;		JSL	>PPOSKP         ; y,x pos hozon
LNMV040		EQU	$
		STZ	<PWORK5
		LDA	#JMDM		; jump demo shori set
		STA	<LNMODE
		BRL	JUMPDM		; TO jump shori [BRA;JUMPDM]
;
LNMV050		EQU	$
		LDA	#0FFH
		STA     <PLZPS1         ; hozon
		STA	<PLZPS0
		STA     <PLZSPD         ; now z-speed
     		STZ	JMPTIM		; jump timer clear
;
		JSR	YKYCH1		; 2 times key check
		BCS	LNMV052
		JSR	YKYPSB		; Y key push sub
;
		LDA	PYDMBT		; DO push ?
		ORA	DODMBT
		BNE	LNMV052
		LDA	HIKUFG		; swichi hiku ?
		BNE	LNMV052
		LDA	<LNMODE
		CMP	#DASH
		BEQ	LNMV052
		JSR	BKYPSB		; B key push sub
;
		LDA	>MODTBL0	; oopning demo ?[YES:LNMV052]
		BEQ	LNMV052
;
		JSR	AKYPSB		; A key push sub
		LDA	<LNMODE
		CMP	#KNSP
		BNE	LNMV052
		STZ	<PLYMVC
		STZ	<PLXMVC
		BRL	LNMV300
;
LNMV052		EQU	$
		JSR	KAKU700		; kakulemino magic sub
		LDA	<HANEFG		; hane kaeri ? [NO:LNMV054]
		BEQ	LNMV054
		LDA	<PWORK5
		BEQ	LNMV0524
		STZ	<PWORK5
LNMV0524	EQU	$
		STZ	PYDMNO
		STZ	PYDMNO1
		STZ	PYDMMD
		STZ	<KENKYL
		STZ	PYDMBT1
		STZ	PYDMBT
		STZ	DODMBT
		LDA	<KENKY
		AND	#10000000B
		BNE	LNMV053
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
LNMV053		EQU	$
		BRL	JMDM200		; TO hanekaeri shori [JMP:JMDM200]
;
LNMV054		EQU	$
		LDA	HIKUFG		; hiku on ? [YES;LNMV058]
		BEQ	LNMV0540
		STZ	<PWORK1
		BRA	LNMV058
LNMV0540	EQU	$
		LDA	PYSTOP
		BNE	LNMV058
		LDA	DODMBT
		AND	#11111101B
		BNE	LNMV058
		LDA	PYDMBT
		AND	#01111111B
		BNE	LNMV058
		LDA	PYDMBT
		AND	#10000000B
		BEQ	LNMV055
		LDA	PYDMBT1
		AND	#00000001B
		BNE	LNMV058
LNMV055		EQU	$
		LDA	AITMBT
		BNE	LNMV058
;;;;;;;;		AND	#00000100B
;;;;;;;;		BEQ	LNMV058
;;;;;;;;		LDA	TMDTFG		; tame dot ?
;;;;;;;;		CMP	#001H
;;;;;;;;		BEQ	LNMV058
;;;;;;;;		LDA	AITMMD		; dot move ? [NO:LNMV058]
;;;;;;;;		CMP	#03H
;;;;;;;;		BNE	LNMV058
;;;;;;;;LNMV056		EQU	$
		LDA	AITMBT1
		BNE	LNMV058
;
		LDA	<KENMD		; mode 4 player stop
		CMP	#09H
		BCS	LNMV060
		LDA	<KENKY
		AND	#00100000B
		BNE	LNMV060
		LDA	<KENKY		; key in ?
		AND	#10000000B
		BEQ	LNMV060
LNMV058		EQU	$
		BRA	LNMV200
;
LNMV060		EQU	$
		LDA	ICEFLAG		; ice ? [NO:LNMV070]
		BEQ	LNMV070
;
		LDA	#001H
		STA	SWMXSY+1
		STA	SWMXSX+1
		LDA	#080H
		STA	SWMXSY
		STA	SWMXSX
		BRL	ICMOVE		; ice move set
LNMV070		EQU	$
		JSR	SWSPCL		; ice flag clear
;
		LDA	<DRATMV		; door auto move flag check !
		AND	#00001111B
		BNE	LNMV080
;
		LDA	DODMBT		; douzou hiku ?
		AND	#00000010B
		BNE	LNMV200
;
		LDA	<KEYA1		; key in ?
		AND	#00001111B
		BNE	LNMV080		; move ?
		STA	<PLYMVC		; player houkou
		STA	<PLXMVC		; player houkou
		STA	<PWORK1		; player houkou
		STA	<PLMUKI
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<HANIFG1
		AND	#11110000B
		STA	<HANIFG1
		LDX	#020H
		STX	RASNFM
		LDX	#JTIME		; time lag set
		STX	TMLGFG
		BRA	LNMV200
LNMV080		EQU	$
		STA	<PWORK1		; (ORA) key set
		CMP	<PLMUKI
		BEQ	LNMV100		; ditto key ?
		STZ	<PLYBUF		; buff clear
		STZ	<PLXBUF
		STZ	<PWORK5
		STZ	<HANIFG1
		LDX	#020H
		STX	RASNFM
		LDX	#JTIME		; time lag set
		STX	TMLGFG
LNMV100		EQU	$
		STA	<PLMUKI
;
LNMV200		EQU	$
		JSR	PYNACK		; player naname BG check
		JSL	>PYSPST		; player speed set
		JSR	PYBGCK		; player BG check
		JSL	>PYCRCN		; player chara henkan sub
		LDA	HIKUFG		; swich on ? [NO:LNMV300]
		BEQ	LNMV300
		STZ	<PLYMVC
		STZ	<PLXMVC
LNMV300		EQU	$
		STZ	PKYNOT
		JSR	DORSCR
LNMV500		EQU	$
		CLC
		RTS
;
;************************************************************************
;*		Usagi enmy henshin on move		(USGIM2)	*
;************************************************************************
USGIM2		EQU	$
		LDA	USAGTM
		ORA	USAGTM+1
		BEQ	LNMV500
;
		LDA	USGOFN
		BNE	US2M100
		LDA	<LNMODE
		CMP	#RABT
		BEQ	US2M300
		CMP	#RAB1
		BEQ	US2M300
;
		LDA	PYDMBT1
		AND	#00000010B
		BEQ	US2M040
		STZ	PYDMBT
US2M040		EQU	$
		LDA	PYDMBT
		AND	#10000000B
		PHA
		JSL	>PLYCLR1
		PLA
		STA	PYDMBT
;
		LDX	#004H
US2M080		EQU	$
		LDA	BMMODE,X
		CMP	#SBAMV
		BEQ	US2M0A0
		CMP	#BRSEN
		BNE	US2M0C0
US2M0A0		EQU	$
		STZ	BMMODE,X
US2M0C0		EQU	$
		DEX
		BPL	US2M080
;
		JSR	DASCLR
		LDY	#004H		; max 6 set
		LDA	#TORKM		; kemuri set
		JSL	>TTKINT1
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#kakon
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#kakon
		JSR	SDLP12
		LDA	#014H
		STA	KAKUFM1
		LDA	#001H
		STA	MRTKFG
		STA	USGOFN
		LDA	#OMS000
		STA	<OMSBMD
;
US2M100		EQU	$
		DEC	KAKUFM1
		BPL	US2M500
		LDA	#RAB1
		STA	<LNMODE
		LDA	#001H
		STA	RABFLG
		STA	<RABIFG
		JSL	>PLCGCN2
		STZ	<OMSBMD
		STZ	MRTKFG
		STZ	USGOFN
		BRA	US2M500
;
US2M300		EQU	$
		STZ	USAGTM
		STZ	USAGTM+1
;
US2M400		EQU	$
		CLC
		RTS
;
US2M500		EQU	$		; player stop !!
		SEC
		RTS
;
;************************************************************************
;*		Usagi enmy henshin off move		(USGIM1)	*
;************************************************************************
USGIM1		EQU	$
		LDA	USAGTM
		ORA	USAGTM+1
		BNE	USIM400
;
		LDY	#004H		; max 6 set
		LDA	#TORKM		; kemuri set
		JSL	>TTKINT1
		LDA	#kakof
		JSR	SDLP12
		LDA	#020H
		STA	KAKUFM1
		LDA	#LNMD
		STA	<LNMODE
		JSL	>PLYCLR3
		STZ	USGOFN
		STZ	<RABIFG
		STZ	RABFLG
		JSL	>PLCGCN0	; player coler chenge set
;
USIM100		EQU	$
		STZ	USGOFN
		BRL	LNMOVE
USIM200		EQU	$
		RTS
;
USIM400		EQU	$
		MEM16
		REP	#00100000B
		DEC	USAGTM
		MEM8
		SEP	#00100000B
;
;************************************************************************
;*		Usagi move				(USGIMV)	*
;************************************************************************
USGIMV		EQU	$
		JSR	PYRETUN		; player return hozon sub
;************ player deback mode check
		LDA	<KEYB2
		AND	#10000000B
		BEQ	USGI040
		LDA	BGOFFG
		EOR	#001H
		STA	BGOFFG
;
;************ usagi move 
USGI040		EQU	$
		STZ	HLMKCT		; hole zlzl couter clear !
;
		LDA	WATRFG
		BNE	USGI094
		LDA	<DIEFG		; yarare ? [NO:LNMV050]
		BEQ	USGI100
;
		LDA	>ITMTBL4
		BEQ	USGI094
		STZ	RABFLG
;
USGI094		EQU	$
		STZ	USGOFN
		STZ	USAGTM
		STZ	USAGTM+1
		LDA	>ITMTBL4	; suiusho dama on ?
		BEQ	USGO0A0
		STZ	<RABIFG
		STZ	<DIEFG
;
USGO0A0		EQU	$
		STZ	<PYCRCH
		STZ	PYSTOP
		STZ	<PYMKFG
		JSL	>SWSPCL1
		LDA	#JMDM
		STA	<LNMODE
		LDA	>ITMTBL4	; suiusho dama on ?
		BEQ	USGO0C0
		LDA	#LNMD
		STA	<LNMODE
		JSL	>PLCGCN0
USGO0C0		EQU	$
		BRL	USGI700
;
USGI100		EQU	$
		LDA	<HANEFG
		BEQ	USGI180
		BRL	JMDM200
USGI180		EQU	$
		LDA	#0FFH
		STA     <PLZPS1         ; hozon
		STA     <PLZPS0         ; hozon
		STA     <PLZSPD         ; now z-speed
     		STZ	JMPTIM		; jump timer clear
;
		LDA	ICEFLAG		; ice ? [NO:LNMV070]
		BEQ	USGI200
;
		LDA	#001H
		STA	SWMXSY+1
		STA	SWMXSX+1
		LDA	#080H
		STA	SWMXSY
		STA	SWMXSX
		BRL	ICMOVE		; ice move set
USGI200		EQU	$
		JSR	SWSPCL		; ice flag clear
;
		JSR	BKYPSB		; b key check
		LDA	<DRATMV		; door auto move flag check !
		AND	#00001111B
		BNE	USGI300
;
		LDA	<KEYA1		; key in ?
		AND	#00001111B
		BNE	USGI300		; move ?
		STA	<PLYMVC		; player houkou
		STA	<PLXMVC		; player houkou
		STA	<PWORK1		; player houkou
		STA	<PLMUKI
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<HANIFG1
		AND	#11110110B
		STA	<HANIFG1
		LDX	#020H
		STX	RASNFM
		LDX	#JTIME		; time lag set
		STX	TMLGFG
		BRA	USGI500
USGI300		EQU	$
		STA	<PWORK1		; (ORA) key set
		CMP	<PLMUKI
		BEQ	USGI400		; ditto key ?
		STZ	<PLYBUF		; buff clear
		STZ	<PLXBUF
		STZ	<PWORK5
		STZ	<HANIFG1
		LDX	#020H
		STX	RASNFM
		LDX	#JTIME		; time lag set
		STX	TMLGFG
USGI400		EQU	$
		STA	<PLMUKI
;
USGI500		EQU	$
		JSR	PYNACK		; player naname BG check
		JSL	>PYSPST		; player speed set
		JSR	PYBGCK		; player BG check
		JSL	>PYCRCN		; player chara henkan sub
		STZ	PKYNOT
		JSR	DORSCR
USGI700		EQU	$
		RTS
;
;************************************************************************
;*		big ishi move				(BGISMV)	*
;************************************************************************
BGISMV		EQU	$
		LDA	<DIEFG		; yarare ? [NO:LNMV050]
		BEQ	BGIS100
;
;;;;;;;;		STZ	TMDTFG
		STZ	AITMBT
		STZ	AITMBT1
		STZ	TMBMCT		; meta flag clear
		STZ	DKYHZN
		STZ	PYDMNO		; y-key move clear
		STZ	PYDMNO1		; y-key move clear
		STZ	PYDMMD
		STZ	<KENKYL
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<HANIFG1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		STZ	<PLZPS0
		LDA	PIPIFG		; piri piri ? [NO:BGIS000]
		BEQ	BGIS000
		JSR	PLKW0C0		; ken move clear !!
		LDA	#001H
		STA	MRTKFG		; muteki flag on ? [
		STZ	AITMMD
		LDA	#002H
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;;;;;;;;		JSR	>SDLRCP
;;;;;;;;		ORA	#02BH
;;;;;;;;		STA	!SOUND3
		LDA	#02BH
		JSR	SDLP13
		LDA	#PRMV
		STA	<LNMODE
		BRL	PRPRMV
BGIS000		EQU	$
;;;;;;;;		JSL	>PPOSKP         ; y,x pos hozon
		LDA	#JMDM		; jump demo shori set
		STA	<LNMODE
		BRL	JUMPDM		; TO jump shori [BRA;JUMPDM]
;
BGIS100		EQU	$
		LDA	#0FFH
		STA     <PLZPS1         ; hozon
		STA     <PLZPS0         ; hozon
		STA     <PLZSPD         ; now z-speed
     		STZ	JMPTIM		; jump timer clear
;
		LDA	<HANEFG		; hane kaeri ? [NO:BGIS200]
		BEQ	BGIS200
		STZ	PYDMNO
		STZ	PYDMNO1
		STZ	PYDMMD
		STZ	<KENKYL
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		LDA	<KENKY
		AND	#10000000B
		BNE	BGIS180
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
BGIS180		EQU	$
		BRL	JMDM200		; TO hanekaeri shori [JMP:JMDM200]
;
BGIS200		EQU	$
		JSR	YKYPSB		; Y key push sub
;
		LDA	<KEYA1		; key in ?
		AND	#00001111B
		BNE	BGIS400		; move ?
		STA	<PLYMVC		; player houkou
		STA	<PLXMVC		; player houkou
		STA	<PWORK1		; player houkou
		STA	<PLMUKI
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<HANIFG1
		AND	#11110110B
		STA	<HANIFG1
		LDX	#020H
		STX	RASNFM
		LDX	#JTIME		; time lag set
		STX	TMLGFG
		BRA	BGIS600
BGIS400		EQU	$
		STA	<PWORK1		; (ORA) key set
		CMP	<PLMUKI
		BEQ	BGIS500		; ditto key ?
		STZ	<PLYBUF		; buff clear
		STZ	<PLXBUF
		STZ	<PWORK5
		STZ	<HANIFG1
		LDX	#020H
		STX	RASNFM
		LDX	#JTIME		; time lag set
		STX	TMLGFG
BGIS500		EQU	$
		STA	<PLMUKI
;
BGIS600		EQU	$
		JSL	>PYCRCN		; player chara henkan sub
		STZ	PKYNOT
		JSR	DORSCR
BGIS700		EQU	$
		RTS
;
;************************************************************************
;*		monorisu sunder move demo init.		(MNBBIT)	*
;************************************************************************
MNSRIT		EQU	$
		MEM16
		REP	#00100000B
		LDA	#000C0H
		STA	<KENMD
		MEM8
		SEP	#00100000B
		LDA	#MNSR
		STA	<LNMODE
		LDA	#001H
		STA	MRTKFG
		STA	BSFLFG
		RTL
;
;************************************************************************
;*		monorisu sunder move demo		(MONOSR)	*
;************************************************************************
MONOSR		EQU	$
		STZ	<DIEFG
		STZ	<HANEFG
		STZ	DAMEFG
;
		MEM16
		REP	#00100000B
		DEC	<KENMD
		LDA	<KENMD
		BMI	MNSR040
		BEQ	MNSR180
		CMP	#000A0H		; magic shori
		BEQ	MNSR200
		CMP	#000BFH
		BEQ	MNSR080
		MEM8
		SEP	#00100000B
		RTS
;
MNSR040		EQU	$
		MEM8
		SEP	#00100000B
		STZ	<KENMD
		STZ	<KENMD+1
		RTS
;
MNSR080		EQU	$
		MEM8
		SEP	#00100000B
		LDA	#001H
		STA	!KNPASFG
		RTS
;
MNSR180		EQU	$
		MEM8
		SEP	#00100000B
		LDX	#000H
		LDY	#004H
		LDA	#TKDOW
		JSL	>TKDINT
		LDA	#001H
		STA	PYALSP
		STZ	BSFLFG
		RTS
;
MNSR200		EQU	$
		MEM8
		SEP	#00100000B
		LDA	<PLYPS1
		PHA
		LDA	<PLYPS0
		PHA
		LDA	<PLXPS1
		PHA
		LDA	<PLXPS0
		PHA
		LDA	#037H
		STA	<PLYPS1
		LDA	#000H
		STA	<PLYPS0
		LDA	#0B0H
		STA	<PLXPS1
		LDA	#006H
		STA	<PLXPS0
		LDY	#000H
		LDA	#SODMV
		JSL	>SNDINT
		PLA
		STA	<PLXPS0
		PLA
		STA	<PLXPS1
		PLA
		STA	<PLYPS0
		PLA
		STA	<PLYPS1
		RTS
;
;************************************************************************
;*		monorisu bomber move demo init.		(MNBBIT)	*
;************************************************************************
MNBBIT		EQU	$
		MEM16
		REP	#00100000B
		LDA	#000E0H
		STA	<KENMD
		MEM8
		SEP	#00100000B
		LDA	#MNBB
		STA	<LNMODE
		LDA	#001H
		STA	MRTKFG
		STA	!SPMCFG
		RTL
;
;************************************************************************
;*		monorisu bomber move demo		(MONOBB)	*
;************************************************************************
MONOBB		EQU	$
		STZ	<DIEFG
		STZ	<HANEFG
		STZ	DAMEFG
;
		MEM16
		REP	#00100000B
		DEC	<KENMD
		LDA	<KENMD
		BMI	MNBB100
		BEQ	MNBB180
		CMP	#000A0H		; magic shori
		BEQ	MNBB200
		CMP	#000DFH
		BEQ	MNBB080
		MEM8
		SEP	#00100000B
		RTS
;
MNBB080		EQU	$
		MEM8
		SEP	#00100000B
		LDA	#001H
		STA	!KNPASFG
		RTS
;
MNBB100		EQU	$
		MEM8
		SEP	#00100000B
		STZ	<KENMD
		STZ	<KENMD+1
		RTS
;
MNBB180		EQU	$
		MEM8
		SEP	#00100000B
		LDY	#004H
		LDX	#005H
		LDA	#TKDOW
		JSL	>TKDINT
		LDA	#001H
		STA	PYALSP
		RTS
;
MNBB200		EQU	$
		MEM8
		SEP	#00100000B
		LDA	<PLYPS1
		PHA
		LDA	<PLYPS0
		PHA
		LDA	<PLXPS1
		PHA
		LDA	<PLXPS0
		PHA
		LDA	#0B0H
		STA	<PLYPS1
		LDA	#00EH
		STA	<PLYPS0
		LDA	#078H
		STA	<PLXPS1
		LDA	#003H
		STA	<PLXPS0
		LDY	#000H		; max 1 set
		LDA	#SPBMV		; bomber move sub
		JSL	>SPBMINT
		PLA
		STA	<PLXPS0
		PLA
		STA	<PLXPS1
		PLA
		STA	<PLYPS0
		PLA
		STA	<PLYPS1
		RTS
;
;************************************************************************
;*		monorisu inoru move demo init.		(MNIRIT)	*
;************************************************************************
MNIRIT		EQU	$
		MEM16
		REP	#00100000B
		LDA	#00001H
		STA	<KENMD
		MEM8
		SEP	#00100000B
		LDA	#MNIR
		STA	<LNMODE
		RTL
;
;************************************************************************
;*		monorisu inoru move demo		(MONOIR)	*
;************************************************************************
MONOIR		EQU	$
		DEC	<KENMD
		LDA	<KENMD
		BNE	MNIR100
;
		LDA	#LNMD
		STA	<LNMODE
		JSR	INRINT
MNIR100		EQU	$
		RTS
;
;************************************************************************
;*		HAKA move 				(HKPYMV)	*
;************************************************************************
HKPYMV		EQU	$
		LDA	<GMMODE		; 0 <-- chijoo 1 <---danjon
		BNE	HKPY300
		LDA	HKMVON
		BEQ	HKPY300
;
		LDX	#004H
HKPY100		EQU	$
		LDA	BMMODE,X
		CMP	#HAKMV
		BNE	HKPY200
		JSL	>HAKAMOV1
HKPY200		EQU	$
		DEX
		BPL	HKPY100
;
HKPY300		EQU	$
;
;************************************************************************
;*		BOAL push move 				(BLPYMV)	*
;************************************************************************
BLPYMV		EQU	$
		LDX	#004H
BLPY100		EQU	$
		LDA	BMMODE,X
		CMP	#BOLMV
		BNE	BLPY200
		JSL	>BLPHMOV	; boal move shori
		BRA	BLPY300
BLPY200		EQU	$
		DEX
		BPL	BLPY100
;
BLPY300		EQU	$
		RTS
;
;********************************************************************
;*		player JUMP move demo			(JUMPDM)    *
;********************************************************************
JUMPDM		EQU	$
JPDWMV		EQU	$
		LDA	<PLYPS1		; position hozon set
		STA	<PLYHN0
		LDA	<PLYPS0
		STA	<PLYHN1
		LDA	<PLXPS1
		STA	<PLXHN0
		LDA	<PLXPS0
		STA	<PLXHN1
;
		JSR	JPDEMO		; jump shori sub !!
		STZ	<PYMKFG
		STZ	ASWFLG
;
		LDA	<PLZPS1		; now z-pos < 0 ? [YES:JMDM200]
		BPL	JMDM200
		LDA	<PLZSPD		; now z-speed < 0 ? [YES:JMDM200]
		BPL	JMDM200
;
		LDY	#005H
		JSR	BGCHCK6
		LDA	PWATER
		AND	#00000001B
		BEQ	JMDM080
		LDA	#SWMD
		STA	<LNMODE
		JSR	GK2T380
		JSR	PLKW0C0
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
		BRL	JMDM239
;
JMDM080		EQU	$
		INC 	JMPTIM		; next jump times inc
		LDA	JMPTIM
		CMP	#04H
		BEQ	JMDM140
		TAX
		LDA	PLZSPD1		; hozon z-speed 
JMDM100		EQU	$
		LSR	A
		DEX
		BEQ	JMDM100
		STA	<PLZSPD		; next jump set
		BNE	JMDM200
;
JMDM140		EQU	$
		LDA	#03H
		STA	JMPTIM
;
JMDM200		EQU	$
		STZ	<PWORK2
		STZ	<PWORK3
		STZ	<PWORK4
		JSR	PYHNFG		; speed flag henkan sub
;
		DEC	<HANEFG		; hanekaeri end ? [NO:JMDM300]
		LDA	<HANEFG
		BEQ	JMDM210
JMDM208		EQU	$
		BRL	JMDM300
JMDM210		EQU	$
		INC	A
		STA	<HANEFG		; hanekaeri flag clear
		LDA	<PLZPS1		; hozon z-pos < 0 ? [YES:JMDM200]
		AND	#0FEH
		BEQ	JMDM220
		BPL	JMDM208
JMDM220		EQU	$
		LDA	<PLZSPD		; now z-pos < 0 ? [YES:JMDM200]
		BPL	JMDM208
		LDA	<DIEFG
		BNE	JMDM230
		BRL	JMDM240
;
JMDM230		EQU	$
		STZ	MRTKFG
		LDA	<LNMODE
		STA	<BMWORK+0
		LDA	<LNMODE
		CMP	#JWMV
		BEQ	JMDM2301
		STZ	<KENMD		; ken mode clear !
		STZ	<KENKY
		STZ	<KENFM
		STZ	<KENTIM
;
JMDM2301	EQU	$
		JSR	JNXMDSB		; player next mode set sub
		LDA	RABFLG
		BEQ	JMDM2302
		LDA	WATRFG
		BEQ	JMDM2302
		BRL	JMDM23C
;
JMDM2302	EQU	$
		LDA	CHKONS
		BEQ	JMDM2304
		STZ	CHKONS
		BRA	JMDM2308
JMDM2304	EQU	$
		LDA	<BMWORK+0
		CMP	#JMDM
		BEQ	JMDM231
		LDA	<LNMODE
		CMP	#SWMD
		BEQ	JMDM231
JMDM2308	EQU	$
		LDA	#jpeds
		JSR	SDLP12
;
JMDM231		EQU	$
		LDY	<LNMODE
		CPY	#SWMD
		BNE	JMDM234
;
		JSR	KAKU200		; kakuremino clear
;
		LDA	<GMMODE
		BEQ	JMDM232
;
		LDA	<BMWORK+0
		CMP	#JMDM
		BEQ	JMDM232
;
		LDA	>ITEMR23	; ashihire on ? [NO:JMDM232]
		BEQ	JMDM232
;
		LDA	#00000001B
		STA	<PLBGCKF	; player BG.1 check
;
JMDM232		EQU	$
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
;
JMDM234		EQU	$
JMDM238		EQU	$
		LDY	#000H
		JSR	BGCHCK6
;
		LDA	KUSAFG		; kusa check
		AND	#00000001B
		BEQ	JMDM2382
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#kusas
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#kusas
		JSR	SDLP12
JMDM2382	EQU	$
		LDA	WTASFG		; asase check !!
		AND	#00000001B
		BEQ	JMDM2384
		LDA	!SOUND2
		CMP	#dobun
		BEQ	JMDM2384
		LDA	#watrs
		JSR	SDLP12
;
JMDM2384	EQU	$
		LDA	PWATER
		AND	#00000001B
		BEQ	JMDM239
		LDA	#SWMD
		STA	<LNMODE
		JSR	GK2T380
		JSR	PLKW0C0
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
;
JMDM239		EQU	$
		LDA	<PLBGCKF
		CMP	#002H
		BNE	JMDM23A
		STZ	<PLBGCKF
JMDM23A		EQU	$
		LDA	TBRCFG
		BEQ	JMDM23C
		JSL	>TOBIORI
;
JMDM23C		EQU	$
		STZ	<PLZPS1
		STZ	<PLZPS0
		STZ	<DIEFG		; yarare flag clear !
		STZ	<PYSPFG		; speed clear !
		STZ	<PYMKFG
		STZ	AITMBT
		STZ	AITMBT1
		STZ	AITMMD
		STZ	MRTKFG
		STZ	PIPIFG
		STZ	<PLYSPD
		STZ	<PLXSPD
JMDM240		EQU	$
		STZ	<PYCRCH
		STZ	<HANEFG		; hanekaeri flag clear
JMDM300		EQU	$
		LDA	<LNMODE
		CMP	#JPMV
		BEQ	JMDM400
;
		LDA	<HANEFG
		CMP	#021H
		BCC	JMDM400
		DEC	HANEFM
		BPL	JMDM500
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	HANEFM		; next flem set
JMDM400		EQU	$
		JSR	PYNAKY		; player naname key set
		LDA	<LNMODE
		CMP	#JWMV
		BEQ	JMDM480
		JSR	PYNACK		; player naname BG check
		LDA	<PWORK1
		AND	#00000011B
		BNE	JMDM440
		STZ	<PLXSPD
JMDM440		EQU	$
		LDA	<PWORK1
		AND	#00001100B
		BNE	JMDM480
		STZ	<PLYSPD
JMDM480		EQU	$
		JSL	>HNSPST		; henakaeri speed set sub
;
JMDM500		EQU	$
		LDA	<LNMODE
		CMP	#JWMV
		BEQ	JMDM600
		JSR	PYBGCK		; player BG check
		STZ	PKYNOT
		
JMDM600		EQU	$
		JSR	DORSCR
JMDM999		EQU	$
		LDA	<PLZPS1		; hozon z-pos < 0 ? [YES:JMDM200]
		BEQ	JMDMA00
		CMP	#0E0H
		BCC	JMDMC00
JMDMA00		EQU	$
		JSR	BGCHCK4		; hole bg check
		LDA	<HOLEFG
		AND	#00001111B	; no hole ?
		CMP	#00001111B
		BNE	JMDMC00
		LDA	#HLDM
		STA	<LNMODE
		LDA	#004H
		STA	<PYSPFG
JMDMC00		EQU	$
		STZ	<PLZPS0
		RTS
;
;********************************************************************
;*		player danjon JUMP move shori		(JUMPMV)    *
;********************************************************************
JUMPMV		EQU	$
		LDA	<GMMODE
		BNE	JMOM080
		BRL	JPCJMV
;
JMOM080		EQU	$
		LDX	#000H
		LDA	<PLBGCKF	; BG 2 ? [YES:
		BEQ	JMOM100
		STZ	<PLBGCKF
		JSR	BGCHCK5		; head 2 ten check sub
		LDX	#000H
		LDA	#001H
		STA	<PLBGCKF
		LDA	NUKIFG
		AND	#00000011B
		CMP	#00000011B
		BEQ	JMOM100
		LDX	#001H
JMOM100		EQU	$
		STX	PRIONF
;
JMOM200		EQU	$
		DEC	<KENFM
		BPL	JMOM400
		LDA	#03H
		STA	<KENFM
		LDA	AITMMD
		EOR	#001H
		STA	AITMMD
;
JMOM400		EQU	$
		LDA	<KEYA1		; key in ?
		AND	#00001111B
		BNE	JMOM500		; move ?
		STA	<PLYMVC		; player houkou
		STA	<PLXMVC		; player houkou
		STA	<PWORK1		; player houkou
		STA	<PLMUKI
		STZ	<PYCRCH		; player stop pouse set !
		BRA	JMOM700
JMOM500		EQU	$
		STA	<PWORK1		; (ORA) key set
		CMP	<PLMUKI
		BEQ	JMOM600		; ditto key ?
		STZ	<PLYBUF		; buff clear
		STZ	<PLXBUF
		STZ	<PWORK5
JMOM600		EQU	$
		STA	<PLMUKI
;
JMOM700		EQU	$
		LDX	#010H
		LDA	<PWORK1
		AND	#00001111B
		BEQ	JMOMC00
		AND	#00001100B
		BEQ	JMOM800
		LDA	<PWORK1
		AND	#00000011B
		BEQ	JMOM800
		LDX	#00AH
;
JMOM800		EQU	$
		STX	<WORK0
		LDA	<PWORK1
		AND	#00001100B
		BEQ	JMOMA00
		AND	#00001000B
		BEQ	JMOM900
		TXA
		EOR	#0FFH
		INC	A
		TAX
JMOM900		EQU	$
		STX	<PLYSPD
;
JMOMA00		EQU	$
		LDX	<WORK0
		LDA	<PWORK1
		AND	#00000011B
		BEQ	JMOMC00
		AND	#00000010B
		BEQ	JMOMB00
		TXA
		EOR	#0FFH
		INC	A
		TAX
JMOMB00		EQU	$
		STX	<PLXSPD
JMOMC00		EQU	$
		JSL	>PYCRCN		; player chara henkan sub
		BRL	JUMPDM
;
;********************************************************************
;*		player chijoo JUMP move shori		(JPCJMV)    *
;********************************************************************
JPCJMV		EQU	$
		LDY	#000H
		JSR	BGCHCK6		; foot 1 ten check sub
		LDA	SHIBFG
		AND	#00000001B
		BEQ	JPCJ100
		LDA	#002H
		STA	<PLBGCKF
		BRA	JPCJ200
JPCJ100		EQU	$
		STZ	PLBGCKF
JPCJ200		EQU	$
		LDA	#001H
		STA	PRIONF
		BRL	JMOM200
;
;********************************************************************
;*		player JUMP move demo			(JPDEMO)    *
;********************************************************************
JPDEMO		EQU	$		; jump demo shori
		LDX	#002H
		LDA	<LNMODE
		CMP	#JPMV
		BNE	JPDM080
		LDX	#001H
JPDM080		EQU	$
		STX	<WORK0
;
JPDM0A0		EQU	$
		LDA	<PLZSPD		; z-speed >= 0 ?
		BPL	JPDM100
		LDA	<PLZPS1		; z-pos >= 0 ?
		BEQ	JPDM200
		BPL	JPDM100
;
		LDA	#0FFH
		STA	<PLZPS1		; z-pos clear
		STA	<PLZPS0		; z-pos clear
		STA	<PLZSPD		; z-speed clear
		BRA	JPDM200
JPDM100		EQU	$
		LDA	<PLZSPD		; speed angle set
		SEC
		SBC	<WORK0
		STA	<PLZSPD
JPDM200		EQU	$
		RTS
;
;********************************************************************
;*		player gake JUMP move demo		(GKJPDM)    *
;********************************************************************
GKJPDM		EQU	$
		LDA	#001H
		STA	<PWORK0
		STZ	<PYMKFG
		STZ	<PLYSPD
		STZ	<PLXSPD
		STZ	ASWFLG
;
GKJP010		EQU	$
		LDA	<HANEFG
		BNE	GKJP020
		LDA	JMPZSP
		BNE	GKJP020
		LDA	#jumps
		JSR	SDLP12
		JSR	GKIMIT
		LDA	<GMMODE
		BNE	GKJP020
		LDA	#002H
		STA	<PLBGCKF
;
GKJP020		EQU	$
		LDA	JMPZSP		; z-speed set
		STA	<PLZSPD
		LDA	JMPZSP1
		STA	PLZSPD1
		LDA	JMPZPS1
		STA	<PLZPS1
		LDA	JMPZPS1+1
		STA	<PLZPS0
		LDA	#002H		; jump kasoku set
		STA	<WORK0
		JSR	JPDM100		; jump demo set
		JSL	>HNSPST		; henakaeri speed set sub
;
		LDA	<PLZSPD		; z-speed >= 0 ?
		BPL	GKJP060
		CMP	#0A0H
		BCS	GKJP040
		LDA	#0A0H		; speed set
		STA	<PLZSPD
;
GKJP040		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLZPS1
		CMP	#0FFF0H
		BCC	GKJP060
		STZ	<PLZPS1
		MEM8
		SEP	#00100000B
		JSR	JNXMDSB		; player next mode set sub
;
		LDA	<HOLEFG2
		BEQ	GKJP046
		LDA	#HLDM
		STA	<LNMODE
;
GKJP046		EQU	$
		LDA	<LNMODE
		CMP	#SWMD
		BEQ	GKJP050
		CMP	#HLDM
		BEQ	GKJP050
		LDA	WATRFG
		BNE	GKJP050
		LDA	#jpeds
		JSR	SDLP12
;
GKJP050		EQU	$
		STZ	MRTKFG
		STZ	<PTBIFG
		STZ	<DIEFG
		LDA	#0FFH
		STA	<PLZSPD
		STA	<PLZPS1
		STA	<PLZPS0
		STZ	<HANEFG
GKJP054		EQU	$
		LDA	<GMMODE
		BNE	GKJP058
		STZ	<PLBGCKF
GKJP058		EQU	$
		BRA	GKJP070
;
GKJP060		EQU	$
		MEM8
		SEP	#00100000B
		LDA	JMPZPS1		; move counter set
		SEC
		SBC	<PLZPS1
		STA	<PLYMVC
;
GKJP070		EQU	$
		LDA	<PLZSPD
		STA	JMPZSP
		LDA	PLZSPD1
		STA	JMPZSP1
		LDA	<PLZPS1
		STA	JMPZPS1
		LDA	<PLZPS0
		STA	JMPZPS1+1
		RTS
;
;
;********************************************************************
;*		player gake JUMP move sub		(GKJPJM)    *
;********************************************************************
GKJPJM		EQU	$
		LDA	JMPZSP		; z-speed set
		STA	<PLZSPD
		LDA	JMPZSP1
		STA	PLZSPD1
		LDA	JMPZPS1
		STA	<PLZPS1
;;;;;;;;		LDA	#0FFH
;;;;;;;;		STA	<PLZPS0
		LDA	#002H		; jump kasoku set
		STA	<WORK0
		JSR	JPDM100		; jump demo set
		JSL	>HNSPST		; henakaeri speed set sub
;
		LDA	<PLZSPD		; z-speed >= 0 ?
		BMI	GKJM020
		BRL	GKJM060
GKJM020		EQU	$
		CMP	#0A0H
		BCS	GKJM040
		LDA	#0A0H		; speed set
		STA	<PLZSPD
;
GKJM040		EQU	$
		LDA	<PLZPS1
		CMP	#0F0H
		BCC	GKJM060
;
		STZ	<PLZPS1
		STZ	<PLZPS0
		LDA	<LNMODE
		CMP	#GKYM
		BEQ	GKJM044
		CMP	#GKDN
		BNE	GKJM050
GKJM044		EQU	$
		LDY	#000H
		JSR	BGCHCK6		; bg check !!
		LDA	PWATER		; water check !!
		AND	#00000001B
		BEQ	GKJM048
		LDA	#SWMD
		STA	<LNMODE
		JSR	GK2T380
		JSR	PLKW0C0
		LDA	#WTMV0		; water hahen set
		LDY	#000H
		JSL	>WTIMIT
		BRA	GKJM050
;
GKJM048		EQU	$
		LDA	<HOLEFG
		AND	#00000001B
		BEQ	GKJM050
		LDA	#009H
		STA	<PLHLFM
		STZ	<HOLEFG1
		LDA	#001H
		STA	<HOLEFG2
		LDA	#HLDM
		STA	<LNMODE
		BRA	GKJM055
;
GKJM050		EQU	$
		JSR	JNXMDSB		; player next mode set sub
		LDA	<LNMODE
		CMP	#SWMD
		BEQ	GKJM055
		LDA	WATRFG
		BNE	GKJM055
		LDA	#jpeds
		JSR	SDLP12
;
GKJM055		EQU	$
		LDA	<LNMODE
		CMP	#SWMD
		BNE	GKJM058
		LDA	RABFLG
		BNE	GKJM05C
GKJM058		EQU	$
		STZ	MRTKFG
GKJM05C		EQU	$
		STZ	<PTBIFG
		STZ	<DIEFG
		LDA	#0FFH
		STA	<PLZSPD
		STA	<PLZPS1
		STA	<PLZPS0
		STZ	<HANEFG
		LDA	<GMMODE
		BNE	GKJM05E
		STZ	<PLBGCKF
GKJM05E		EQU	$
		BRA	GKJM070
;
GKJM060		EQU	$
		LDA	JMPZPS1		; move counter set
		SEC
		SBC	<PLZPS1
		STA	<PLYMVC
;
GKJM070		EQU	$
		LDA	<PLZSPD
		STA	JMPZSP
		LDA	PLZSPD1
		STA	JMPZSP1
		LDA	<PLZPS1
		STA	JMPZPS1
		RTS
;
;********************************************************************
;*		player gake JUMP init. 			(GKIMIT)    *
;********************************************************************
GKIMDT		EQU	$
		WORD	0FFF8H,00008H
GKIMHB		EQU	$
		WORD	0FFF0H,00010H
GKIMIT		EQU	$
		LDA	<PLYPS0
		STA	<PLHYBF1
		LDA	<PLYPS1
		STA	<PLHYBF0
		SEC
		SBC	<PLYHN0
		STA	<PLYMVC
GKIT100		EQU	$
		LDA	<PWORK0
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	!GKIMDT,Y
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		JSR	BGCHCK
;
		LDA	WTRSID		; no check
		ORA	<HOLEFG		; hole check !!
		ORA	SHIBFG		; shibafu check
		ORA	KUSAFG		; kusa check
		ORA	PWATER		; water check
		AND	#00000111B
		CMP	#00000111B
		BNE	GKIT100
;
		LDA	PWATER
		AND	#00000111B
		BEQ	GKIT200
		LDA	#001H
		STA	WATRFG
		LDA	<DIEFG
		CMP	#004H
		BEQ	GKIT1C0
		LDA	#002H
		STA	<DIEFG
GKIT1C0		EQU	$
		LDA	PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1
;;;;;;;;		STZ	PYDMBT		; katsugu clear
;;;;;;;;		LDA	#002H
;;;;;;;;		STA	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
;
GKIT200		EQU	$
		LDA	<HOLEFG
		AND	#00000111B
		BEQ	GKIT300
		LDA	#009H
		STA	<PLHLFM
		STZ	<HOLEFG1
		LDA	#001H
		STA	<HOLEFG2
;
GKIT300		EQU	$
		LDA	<PWORK0
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	!GKIMHB,Y
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	<PLYPS1
		STA	<PLYHN0
		LDA	<PLYPS0
		STA	<PLYHN1
		LDA	#001H
		STA	<HANEFG
;
		LDA	<PLZPS1
		CMP	#0F0H
		BCC	GKIT400
		LDA	#000H
GKIT400		EQU	$
		STA	<WORK0
		STZ	<WORK1
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	<PLHYBF0
		CLC
		ADC	<WORK0
		STA	JMPZPS1
		STA	<PLZPS1
		MEM8
		SEP	#00100000B
		RTS
;
;********************************************************************
;*		player yoko gake JUMP move demo		(GKYODM)    *
;********************************************************************
GKYODM		EQU	$
		LDX	#00000001B
		LDA	<PLXSPD
		BPL	GKYO100
		LDX	#00000010B
GKYO100		EQU	$
		TXA
		ORA	#00000100B
		STA	<PWORK1
		STZ	<PYMKFG	
		STZ	<PLYSPD
		STZ	ASWFLG
;
		BRL	GKJPJM
;
;********************************************************************
;*		player yoko gake JUMP init.		(GKIMIT2)   *
;********************************************************************
ZSPDDT		EQU	$		; z-speed data
		HEX	020,020,020,028,030,038,040,048
GXXSPD		EQU	$
		HEX	010,01C,01C,01C,01C,01C,01C,01C
GKIMIT2		EQU	$
		LDA	<PLYPS0
		STA	<PLHYBF1
		LDA	<PLYPS1
		STA	<PLHYBF0
		SEC
		SBC	<PLYHN0
		STA	<PLYMVC
		LDA	<PWORK0
		ASL	A
		TAY
;
		MEM16
		REP	#00100000B
		LDA	!GKIMDT,Y
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		JSR	BGCHCK
;
		LDA	WTRSID		; no check
		ORA	SHIBFG		; shibafu check
		ORA	KUSAFG		; kusa check
		ORA	PWATER		; water check
		AND	#00000111B
		CMP	#00000111B
		BEQ	GK2T200
;
		LDA	<PLHYBF1
		STA	<PLYPS0
		LDA	<PLHYBF0
		STA	<PLYPS1
		LDY	#00H
		LDA	#001H
		STA	<HANEFG
		LDA	<PLXSPD
		BPL	GK2T180
		LDY	#0FFH
		EOR	#0FFH
		INC	A
GK2T180		EQU	$
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	!ZSPDDT,X
		STA	JMPZSP
		STA	JMPZSP1
		LDA	!GXXSPD,X
		CPY	#0FFH
		BNE	GK2T1C0
		EOR	#0FFH
		INC	A
GK2T1C0		EQU	$
		STA	<PLXSPD
		BRA	GK2T300
;
GK2T200		EQU	$
		LDA	<PWORK0
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	!GKIMHB,Y
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	<PLYPS1
		STA	<PLYHN0
		LDA	<PLYPS0
		STA	<PLYHN1
		LDA	#001H
		STA	<HANEFG
;
		LDA	<PLZPS1
		CMP	#0FFH
		BNE	GK2T280
		LDA	#000H
GK2T280		EQU	$
		STA	<WORK0
		STZ	<WORK1
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	<PLHYBF0
		CLC
		ADC	<WORK0
		STA	JMPZPS1
		STA	<PLZPS1
		MEM8
		SEP	#00100000B
GK2T300		EQU	$
		LDA	PWATER
		AND	#00000111B
		BEQ	GK2T400
		LDA	#002H
		STA	<DIEFG
GK2T380		EQU	$
		LDA	#001H
		STA	WATRFG
		LDA	PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1
;;;;;;;;		STZ	PYDMBT		; katsugu clear
;;;;;;;;		LDA	#002H
;;;;;;;;		STA	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
GK2T400		EQU	$
		RTS
;
;********************************************************************
;*		player yoko gake JUMP 1 move demo	(GKYODM1)   *
;********************************************************************
GKYO1DT		EQU	$
		WORD	0FFE8H,00018H	;0
		WORD	0FFE8H,00018H	;1
GZY1PS		EQU	$
		WORD	00020H,00050H
GYY1SPD		EQU	$
		HEX	010H,018H
GZZ1SPD		EQU	$
		HEX	020H,050H

GKYODM1		EQU	$
GKYODM2		EQU	$
		LDY	#003H
		LDA	<PLXSPD
		BPL	GK1Y100
		LDY	#002H
GK1Y100		EQU	$
		STY	<PWORK0
		STZ	<PYMKFG	
		STZ	<PLYSPD
		STZ	ASWFLG
;
		LDA	<HANEFG
		BNE	GK1Y200
		LDA	JMPZSP
		BNE	GK1Y200
		LDA	<LNMODE
		SEC
		SBC	#GKY1
		ASL	A
		ASL	A
		STA	<WORK0
		TYA
		AND	#11111101B
		ASL	A
		CLC
		ADC	<WORK0
		TAX
		LDA	<PLXPS1
		PHA
		LDA	<PLXPS0
		PHA
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		CLC
		ADC	!GKYO1DT,X
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		TXA
		LSR	A
		LSR	A
		TAX
;
		LDA	!GYY1SPD,X
		CPY	#002H
		BNE	GK1Y180
		EOR	#0FFH
		INC	A
GK1Y180		EQU	$
		STA	<PLXSPD
;
		LDA	<PLZPS1
		CMP	#0FFH
		BNE	GK1Y1C0
		LDA	#000H
GK1Y1C0		EQU	$
		CLC
		ADC	!GZZ1SPD,X
		STA	JMPZPS1
		STA	<PLZPS1
;
		TXA
		ASL	A
		TAX
		MEM16
		REP	#00100000B
		LDA	!GZY1PS,X
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	<PLYPS1
		STA	<PLYHN0
		LDA	<PLYPS0
		STA	<PLYHN1
;
		PLA
		STA	<PLXPS0
		PLA
		STA	<PLXPS1
;
		LDA	<GMMODE
		BNE	GK1Y200
		LDA	#002H
		STA	<PLBGCKF

GK1Y200		EQU	$
		BRL	GKJPJM
;
;********************************************************************
;*		player yoko gake JUMP init.		(YOGKIT)    *
;********************************************************************
GKYODT		EQU	$
		WORD	0FFF8H,00008H
GYHABA		EQU	$
		WORD	0FFE0H,00020H
GYHABA0		EQU	$
		WORD	0FFF0H,00010H
GYYSPD		EQU	$
		HEX	014,014,014,018,018,018,018,01C
		HEX	01C,024,024,024,024,024,024,026
		HEX	026,026,026,026,026,026,028,028
GYZSPD		EQU	$
		HEX	014,014,014,014,014,014,014,018
		HEX	018,020,020,020,024,024,024,026
		HEX	026,026,026,026,026,026,028,028
YOGKIT		EQU	$
		LDA	<PLXPS0
		STA	<PLHYBF1
		LDA	<PLXPS1
		STA	<PLHYBF0
		LDX	#0007H
YOGK100		EQU	$
		PHX
		PHY
		MEM16
		REP	#00100000B
		LDA	!GKYODT,Y
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		LDA	<PWORK0
		ASL	A
		TAY
		JSR	BGCHCK1
		PLY
		PLX
;
		LDA	WTRSID		; no check
		ORA	SHIBFG		; shibafu check
		ORA	KUSAFG		; kusa check
		ORA	PWATER		; water check
		ORA	<HOLEFG		; hole check 
		AND	#00000111B
		CMP	#00000111B
		BNE	YOGK180
		LDA	PWATER
		AND	#00000111B
		CMP	#00000111B
		BNE	YOGK200
		LDA	#001H
		STA	WATRFG
		INC	A
		STA	<DIEFG
		LDA	PLMUKI
		STA	SWMUKI
		STZ	SWFLFM
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	#002H
;;;;;;;;		STA	PYDMBT1
		STZ	<PYSPFG
		STZ	DODMBT
		JSR	SWSPCL
		BRA	YOGK200
;
YOGK180		EQU	$
		DEX
		BPL	YOGK100
;
		MEM16
		REP	#00100000B
		LDA	!GYHABA,Y
		CLC
		ADC	<PLHYBF0
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
;
YOGK200		EQU	$
		PHX
		MEM16
		REP	#00100000B
		LDA	!GYHABA0,Y
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
;
		LDA	<PLHYBF0
		SEC
		SBC	<PLXPS1
		BPL	YOGK300
		EOR	#0FFFFH
		INC	A
YOGK300		EQU	$
		LSR	A
		LSR	A
		LSR	A
		TAX
		MEM8
		SEP	#00100000B
		LDA	!GYYSPD,X
		CPY	#002H
		BEQ	YOGK400
		EOR	#0FFH
		INC	A
YOGK400		EQU	$
		STA	<PLXSPD
		LDA	!GYZSPD,X
		STA	JMPZSP
		STA	JMPZSP1
		PLX
		RTS
;
;********************************************************************
;*		player yoko UP naname gake JUMP		(YONYMV)    *
;********************************************************************
YONYMV		EQU	$
		STZ	ASWFLG
		LDA	#002H
		STA	<WORK0
		JSR	JPDM0A0
		JSL	>HNSPST
;
		LDA	<PLZPS1
		BPL	YONY200
;
		JSR	JNXMDSB		; player next mode set sub
		LDA	<LNMODE
		CMP	#SWMD
		BEQ	YONY100
		LDA	WATRFG
		BNE	YONY100
		LDA	#jpeds
		JSR	SDLP12
YONY100		EQU	$
		STZ	MRTKFG
		STZ	<DIEFG
		LDA	#0FFH
		STA	<PLZSPD
		STA	<PLZPS1
		STA	<PLZPS0
		STZ	<HANEFG
		STZ	<PYMKFG
;
YONY200		EQU	$
		RTS
;
;********************************************************************
;*		player yoko down naname gake JUMP	(YODNMV)    *
;********************************************************************
DNXSPD		EQU	$
		HEX	004,004,004,00A,00A,00A,00B,012
		HEX	012,012,014,014,014,014,016,016
		HEX	01A,01A,01A,01A,01C,01C,01C,01C
;
YODNMV		EQU	$
		LDY	#003H
		LDA	<PLXSPD
		BPL	GKDN100
		LDY	#002H
GKDN100		EQU	$
		STY	<PWORK0
		STZ	<PYMKFG	
		STZ	<PLYSPD
		STZ	ASWFLG
;
		LDA	<HANEFG
		BNE	GKDN200
		LDA	JMPZSP
		BNE	GKDN200
		LDA	#001H
		STA	<PWORK0
		PHY
		LDA	<PLXPS1
		PHA
		LDA	<PLXPS0
		PHA
;;;;;;;;		JSL	>SDLRCP
;;;;;;;;		ORA	#jumps
;;;;;;;;		STA	!SOUND2
		LDA	#jumps
		JSR	SDLP12
		JSR	GKIMIT1
		PLA
		STA	<PLXPS0
		PLA
		STA	<PLXPS1
		PLX
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	<PLHYBF0
		LSR	A
		LSR	A
		LSR	A
		TAY
		MEM8
		SEP	#00100000B
		LDA	!DNXSPD,Y
		CPX	#002H
		BNE	GKDN140
		EOR	#0FFH
		INC	A
GKDN140		EQU	$
		STA	<PLXSPD
		LDA	<GMMODE
		BNE	GKDN200
		LDA	#002H
		STA	<PLBGCKF
;
GKDN200		EQU	$
		BRL	GKJPJM
;
;********************************************************************
;*		player gake JUMP init. 			(GKIMIT)    *
;********************************************************************
GKIMDT1		EQU	$
		WORD	0FFF8H,00008H
GKYPIM1		EQU	$
		WORD	0FFF7H,00009H
GKIMHB1		EQU	$
		WORD	0FFE8H,00018H
GKBITD		EQU	$
		BYTE	00000110B,00000011B
GKIMIT1		EQU	$
		LDA	<PLYPS0
		STA	<PLHYBF1
		LDA	<PLYPS1
		STA	<PLHYBF0
		SEC
		SBC	<PLYHN0
		STA	<PLYMVC
GK1T100		EQU	$
		LDY	#000H
		LDA	<PLXSPD
		BMI	GKIT140
		LDY	#002H
GKIT140		EQU	$
		PHY
		MEM16
		REP	#00100000B
		LDA	!GKIMDT1,Y
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
;
		LDA	<PWORK0
		AND	#00FFH
		ASL	A
		TAY
		LDA	!GKYPIM1,Y
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		JSR	BGCHCK
;
		PLY
		TYA
		LSR	A
		TAY
		LDA	!GKBITD,Y
		STA	<BMWORK+0
		LDA	WTRSID		; no check
		ORA	SHIBFG		; shibafu check
		ORA	KUSAFG		; kusa check
		ORA	PWATER		; water check
		AND	<BMWORK+0
		CMP	<BMWORK+0
		BNE	GK1T100
;
		LDA	PWATER
		AND	<BMWORK+0
		BEQ	GK1T200
		LDA	#001H
		STA	WATRFG
		LDA	#002H
		STA	<DIEFG
		LDA	PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1
;;;;;;;;		STZ	PYDMBT		; katsugu clear
;;;;;;;;		LDA	#002H
;;;;;;;;		STA	PYDMBT1
		STZ	<PYSPFG
		STZ	DODMBT
;
GK1T200		EQU	$
		LDA	<PWORK0
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	!GKIMHB1,Y
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	<PLYPS1
		STA	<PLYHN0
		LDA	<PLYPS0
		STA	<PLYHN1
		LDA	#001H
		STA	<HANEFG
;
		LDA	<PLZPS1
		STA	<WORK0
		STZ	<WORK1
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	<PLHYBF0
		CLC
		ADC	<WORK0
		STA	JMPZPS1
		STA	<PLZPS1
		MEM8
		SEP	#00100000B
		RTS
;
;********************************************************************
;*		player JUMP next mode set sub		(JNXMDSB)   *
;********************************************************************
JNXMDSB		EQU	$
		PHX
		PHY
;
		LDA	RABFLG
		BEQ	JNXM200
		LDA	WATRFG
		BEQ	JNXM100
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
		PLY
		PLX
		BRL	USGI094		; game over set
;
JNXM100		EQU	$
		LDX	#RABT
		LDA	>ITMTBL4
		BEQ	JNXM300
		LDX	#RAB1
		BRA	JNXM300
;
JNXM200		EQU	$
		LDX	#LNMD		; player move shori set
		LDA	WATRFG
		BEQ	JNXM300
		LDA	<LNMODE
		CMP	#JWMV
		BEQ	JNXM280
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
JNXM280		EQU	$
		JSR	KAKU200		; kakuremino clear
		LDX	#SWMD		; player swim move shori set
JNXM300		EQU	$
		STX	<LNMODE
;
		PLY
		PLX
		RTS
;
;********************************************************************
;*		dashu move demo				(DASHMV)    *
;********************************************************************
DSHKDT		EQU	$		; houkou data
		BYTE	00001000B,00000100B,00000010B,00000001B
DASHTIM		EQU	$
		HEX	007,00F,00F
OPCKD0		EQU	$
		BYTE	0FFH,nashi,jjmov,nashi,nashi,nashi,nashi,nashi
		BYTE	nashi,nashi,nashi,nashi,nashi,nashi,nashi
OPCKD1		EQU	$
		BYTE	0FFH,nashi,jjwat,nashi,nashi,nashi,nashi,nashi
		BYTE	nashi,nashi,nashi,nashi,nashi,nashi,nashi
;
DASHMV		EQU	$
		JSR	PYRETUN		; player return hozon sub
;
		JSR	USGIM2		; enmy rabit henshin sub
		BCC	DASH040
		LDA	<LNMODE
		CMP	#RABT
		BNE	DASH020
		BRL	USGIMV
DASH020		EQU	$
		RTS
;
DASH040		EQU	$
		LDA	DASHFG
		BNE	DASH080
;
		STZ	MRTKFG
		STZ	DASHFM
		STZ	<PYSPFG
		LDA	#LNMD
		STA	<LNMODE
		STZ	<PYMKFG
		BRL	DASH500
;
DASH080		EQU	$
		BIT	<KENKY		; 0 --> bpl 1 --> bmi
		BPL	DASH0C0
		LDA	<KENMD
		CMP	#009H
		BCC	DASH0C0
		LDA	#009H
		STA	<KENMD
DASH0C0		EQU	$
		STZ	HLMKCT		; hole zlzl couter clear !
;
		LDA	<DIEFG		; yarare ? [NO:LNMV050]
		BEQ	DASH100
;
		STZ	MRTKFG
		STZ	DASHFM
		STZ	<PYSPFG
;;;;;;;;		STZ	<PLZPS0
		STZ	<PYMKFG
		STZ	DASHFG
		STZ	<HANIFG1
;
		LDA	PIPIFG		; piri piri ? [NO:LNMV030]
		BEQ	DASH0E0
		LDA	<KAKUMD		; kakuremino check
		BEQ	DASH0D0
		JSR	KAKU200		; kakuremino clear !!
DASH0D0		EQU	$
		JSR	PLKW0C0		; ken move clear !!
		LDA	#001H
		STA	MRTKFG		; muteki flag on ? [
		STZ	AITMMD
		LDA	#002H
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;;;;;;;;		JSR	>SDLRCP
;;;;;;;;		ORA	#02BH
;;;;;;;;		STA	!SOUND3
		LDA	#02BH
		JSR	SDLP13
		LDA	#PRMV
		STA	<LNMODE
		BRL	PRPRMV
DASH0E0		EQU	$
		LDA	#JMDM		; jump demo shori set
		STA	<LNMODE
		BRL	JUMPDM		; TO jump shori [BRA;JUMPDM]
;
DASH100		EQU	$
		LDA	DASHFM		; sound kasoku shori !!
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	DASHFM
		BNE	DASH108
		LDA	<DSTMFM
		DEC	<DSTMFM
DASH108		EQU	$
		AND	!DASHTIM,X
		BNE	DASH110
		LDA	#dashs
		JSR	SDLP12
;
DASH110		EQU	$
		DEC	DASHFM
		BPL	DASH140
		STZ	DASHFM
DASH120		EQU	$
		LDA	>OPMODE+0
		TAX
		CMP	!OPCKD0,X
		BNE	DASH130
		LDA	!OPCKD1,X
		STA	>OPMODE+0
DASH130		EQU	$
		BRL	DASH200
;
DASH140		EQU	$
		LDA	#000H
		STA	<DSTMFM
		BIT	<KEYA1L		; 0 --> bpl 1 --> bmi
		BMI	DASH1C0
;
DASH180		EQU	$
		STZ	<PYCRCH		; player porzu clear 
		STZ	DASHFM
		STZ	<PYSPFG
		LDA	#LNMD
		STA	<LNMODE
		STZ	DASHFG
;
		BIT	<KENKY		; 0 --> bpl 1 --> bmi
		BMI	DASH1A0
		STZ	<PYMKFG
DASH1A0		EQU	$
		BRL	DASH500
;
DASH1C0		EQU	$
		LDY	#000H		; max 1 set
		LDA	#KMRMV		; dash kemuri move sub
		JSL	>DAKINT
;
		STZ	<PLYMVC
		STZ	<PLXMVC
		LDA	#040H		; move timer set
		STA	DASFLM
		LDA	#010H		; speed flag set
		STA	<PYSPFG
		LDA	<KENKY
		AND	#10000000B
		BNE	DASH1C8
		LDA	<PWORK6
		BNE	DASH1C8
		LDA	<KEYA1		; key in ?
		AND	#00001111B
		BNE	DASH1D0
DASH1C8		EQU	$
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	!DSHKDT,X
DASH1D0		EQU	$
		STA	<PLMUKI
		STA	<PWORK1		; (ORA) key set
		STA	SWMUKI
		STZ	<PWORK5
DASH1E0		EQU	$
		JSL	>PYCRCN		; player chara henkan sub
;
		LDA	<PLYPS1
		STA	<WORK0
		STA	<PLYHN0
		LDA	<PLXPS1
		STA	<WORK1
		STA	<PLXHN0
		LDA	<PLYPS0
		STA	<WORK2
		STA	<PLYHN1
		LDA	<PLXPS0
		STA	<WORK3
		STA	<PLXHN1
		JSR	PYBTSP		; beltconbear set !!
		JSR	MYSPST		; move yuka set !!
		LDA	PSSTOP
		BEQ	DASH1E8
		JSL	>PYSP640
DASH1E8		EQU	$
		LDA	<PLYPS1
		SEC
		SBC	<PLYHN0
		STA	<PLYMVC
		LDA	<PLXPS1
		SEC
		SBC	<PLXHN0
		STA	<PLXMVC
		JSR	PYBGCK		; BG check sub
DASH1F0		EQU	$
		JSR	DORSCR
		BRL	DASH500
;
DASH200		EQU	$
		LDA	<PYCRCH
		CMP	#006H
		BCC	DASH220
		STZ	<PYCRCH
DASH220		EQU	$
		DEC	DASFLM		; move ? [NO:DASH180]
		LDA	DASFLM
		CMP	#020H
		BCS	DASH240
		LDA	#020H
		STA	DASFLM
;
DASH240		EQU	$
		LDY	#000H		; max 1 set
		LDA	#KMRMV		; dash kemuri move sub
		JSL	>DAKINT1
		STZ	<KENTIM
;
		LDA	>ITMTBL6
		INC	A
		AND	#11111110B
		BEQ	DASH242
		LDY	#007H
		JSR	BGCHCK6		; ken 1 ten check
;
DASH242		EQU	$
		LDA	>MODTBL0	; oopning demo ?[YES:LNMV052]
		BEQ	DASH248
		LDA	#10000000B
		TSB	<KENKY
		LDA	#009H
		STA	<KENMD
DASH248		EQU	$
		STZ	<HANEFG		; hanekaeri flag clear !!
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	!DSHKDT,X
		STA	<WORK0
;
DASH250		EQU	$
		LDA	<KEYA1
		AND	#00001111B
		BEQ	DASH280
		CMP	<WORK0
		BEQ	DASH280
DASH260		EQU	$
		LDA	#DAED
		STA	<LNMODE
		LDA	<KENKY
		AND	#01111111B
		STA	<KENKY
		STZ	<KENMD
		STZ	<KENFM
		BRL	DASHED
;
DASH280		EQU	$
		LDA	<DRATMV
		AND	#00001111B
		BNE	DASH300
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	!DSHKDT,X
DASH300		EQU	$
		STA	<PWORK1
		STA	<PLMUKI
;
;;;;;;;;		LDA	ICEFLAG		; ice ? [NO:LNMV070]
;;;;;;;;		BEQ	DASH400
;;;;;;;;		BRL	ICMOVE		; ice move set
;
DASH400		EQU	$
		JSR	PYNACK		; player naname BG check
		JSL	>PYSPST		; player speed set
		JSR	PYBGCK		; player BG check
		JSL	>PYCRCN		; player chara henkan sub
		STZ	PKYNOT
		JSR	DORSCR
DASH500		EQU	$
		RTS
;
;********************************************************************
;*		dashu move end demo			(DASHED)    *
;********************************************************************
DASHED		EQU	$
		JSR	PYRETUN		; player return hozon sub
		LDA	<KEYA1
		AND	#00001111B
		BNE	DAED100
;
		LDA	DASHFM
		CMP	#010H
		BCC	DAED200
;
DAED100		EQU	$
		STZ	DASHFM
		STZ	<PYSPFG
		LDA	#LNMD
		STA	<LNMODE
		STZ	DASHFG
		STZ	SWADFY		; gensoku flag clear
		LDA	<KENMD
		CMP	#009H
		BCS	DAED300
		STZ	<PYMKFG
		BRA	DAED300
;
DAED200		EQU	$
		LDA	DASHFM
		CLC
		ADC	#001H
		STA	DASHFM
DAED300		EQU	$
		JSL	>PYCRCN		; player chara henkan sub
;
		RTS
;
;********************************************************************
;*		dashu move clear			(DASCLR)    *
;********************************************************************
DASCLR		EQU	$
		LDA	DASHFG
		BEQ	DACL100
;
		PHX
;
		LDX	#004H
DACL040		EQU	$
		LDA	BMMODE,X
		CMP	#KMRMV
		BNE	DACL080
		STZ	BMMODE,X
DACL080		EQU	$
		DEX
		BPL	DACL040
;
		PLX
		STZ	DASHFM
		STZ	<PYSPFG
		STZ	DASHFG
		STZ	<PYMKFG
		STZ	SWADFY		; gensoku flag clear
DACL100		EQU	$
		RTS
;
;********************************************************************
;*		dashu move clear			(DASCLR1)   *
;********************************************************************
DASCLR1		EQU	$
		JSR	DASCLR
		RTL
;
;********************************************************************
;*		dashu BG atari hanekaeri set		(DASHNE)    *
;********************************************************************
HANYSD		EQU	$
		HEX	018,0E8,000,000
HANXSD		EQU	$
		HEX	000,000,018,0E8
SHKYDT		EQU	$
		HEX	001,000,000,000
SHKXDT		EQU	$
		HEX	000,000,001,000
ICNEYL		EQU	$
		WORD	00180H,00180H,00000H,00000H	; fast
		WORD	00100H,00100H,00000H,00000H	; slow
ICNEXL		EQU	$
		WORD	00000H,00000H,00180H,00180H	; fast
		WORD	00000H,00000H,00100H,00100H	; slow
SWHODT		EQU	$
		BYTE	00001000B,00000100B,00000010B,00000001B
DASHNE		EQU	$
		LDA	DASHFG
		BEQ	DSNE500
;
		LDA	DASFLM
		CMP	#040H
		BNE	DSNE600
DSNE500		EQU	$
		BRL	DSNE800
;
DSNE600		EQU	$
		JSL	>SWSPCL1
;
		LDY	#001H		; max 2 set
		LDA	#YURMV		; gatagata move sub
		JSL	>YURINT
		JSL	>CRTLCK		; teki move sub
;
		LDA	!SOUND3
		AND	#03FH
		CMP	#pinpn
		BEQ	DSNE700
		CMP	#032H
		BEQ	DSNE700
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#dsbom
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#dsbom
		JSR	SDLP13
;
DSNE700		EQU	$
		LDX	<PWORK0
		LDA	!HANYSD,X
		STA	<PLYSPD
		LDA	!HANXSD,X
		STA	<PLXSPD
		LDA	#018H
		STA	<HANEFG
		LDA	#024H
		STA	<PLZSPD
		STA	PLZSPD1
;
		LDA	ICEFLAG
		BEQ	DSNE720
		LDA	!SWHODT,X
		STA	SWMUKI
		STA	<PWORK1
		LDA	!SHKYDT,X
		STA	SWYHKU
		LDA	!SHKXDT,X
		STA	SWXHKU
		PHX
		LDA	ICEFLAG
		DEC	A
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK8
		TXA
		ASL	A
		CLC
		ADC	<WORK8
		TAX
		MEM16
		REP	#00100000B
		LDA	!ICNEYL,X
		STA	SWKASY
		LDA	!ICNEXL,X
		STA	SWKASX
		MEM8
		SEP	#00100000B
		PLX
;
DSNE720		EQU	$
		LDA	#001H
		STA	<DIEFG
		STA	CHKONS		; chakushi sound on flag
		STZ	<DASHFM
		STZ	PIPIFG
		STZ	<PYSPFG
		STZ	<PYMKFG
		STZ	<PWORK5
		TXA
		AND	#00000010B
		BNE	DSNE740
		STZ	<PLXMVC
		BRA	DSNE800
DSNE740		EQU	$
		STZ	<PLYMVC
DSNE800		EQU	$
		RTS
;
;********************************************************************
;*		dashu teki atari hanekaeri set		(DASHON)    *
;********************************************************************
DASHON		EQU	$
		PHB
		PHK
		PLB
;
		PHX
		LDA	<PLMKCH
		LSR	A
		STA	<PWORK0
		JSR	DASHNE
		PLX
;
		PLB
		RTL
;
;********************************************************************
;*		naname check key set			(PYNAKY)    *
;********************************************************************
PYNAKY		EQU	$
		STZ	<PWORK1
		LDY	#00H
		LDA	<PLYSPD
		BEQ	PYNK200
		BMI	PYNK100
		LDY	#01H
PYNK100		EQU	$
		JSR	PYAS300
PYNK200		EQU	$
		LDY	#02H
		LDA	<PLXSPD
		BEQ	PYNK400
		BMI	PYNK300
		LDY	#03H
PYNK300		EQU	$
PYAS300		EQU	$
		LDA	!SWHODT,Y
		TSB	<PWORK1		; (M) <--- (A) ORA (M)
PYNK400		EQU	$
		RTS
;
;********************************************************************
;*		auto scrool key set			(PYASKY)    *
;********************************************************************
;;;;;;;;PYASKY		EQU	$
;;;;;;;;		LDA	BGALCKF		; BG2,BG1 check ?[NO:PYAS400]
;;;;;;;;		AND	#00FFH
;;;;;;;;		BEQ	PYAS400
;;;;;;;;;
;;;;;;;;		LDY	#00H
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#00001100B
;;;;;;;;		BNE	PYAS200
;;;;;;;;		LDA	BG1VMC
;;;;;;;;		BEQ	PYAS200
;;;;;;;;		BMI	PYNK100
;;;;;;;;		LDY	#01H
;;;;;;;;PYAS100		EQU	$
;;;;;;;;		JSR	PYAS300
;;;;;;;;PYAS200		EQU	$
;;;;;;;;		LDY	#02H
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#00000011B
;;;;;;;;		BNE	PYAS400
;;;;;;;;		LDA	BG1HMC
;;;;;;;;		BEQ	PYAS400
;;;;;;;;		BMI	PYAS300
;;;;;;;;		LDY	#03H
;;;;;;;;PYAS300		EQU	$
;;;;;;;;		LDA	!PYKYST,Y
;;;;;;;;		TSB	<PWORK1		; (M) <--- (A) ORA (M)
;;;;;;;;PYAS400		EQU	$
;;;;;;;;		RTS
;
;********************************************************************
;*		hole down demo				(HLDEMO)    *
;********************************************************************
HLMKDT		EQU	$		; hole houkou data
		BYTE	00001010B	; up,left
		BYTE	00001001B	; up,right
		BYTE	00000110B	; down,left
		BYTE	00000101B	; down,right
		BYTE	00001000B	; up
		BYTE	00000100B	; down
		BYTE	00000010B	; left
		BYTE	00000001B	; right
HLMKDT1		EQU	$		; hole houkou data
		BYTE	00000101B	; up,left
		BYTE	00000110B	; up,right
		BYTE	00001001B	; down,left
		BYTE	00001010B	; down,right
		BYTE	00000100B	; up
		BYTE	00001000B	; down
		BYTE	00000001B	; left
		BYTE	00000010B	; right
HLCKDT		EQU	$
		BYTE	00001100B	; up check
		BYTE	00000011B	; down check
		BYTE	00001010B	; left check
		BYTE	00000101B	; right check
;
HLDEMO		EQU	$
HOLEDM		EQU	$
		STZ	<PWORK1
		LDA	PKYNOT
		BEQ	HLDM040
		INC	HLMKCT
		LDA	HLMKCT
		CMP	#020H
		BNE	HLDM040
		LDA	#01FH
		STA	HLMKCT
		BRA	HLDM080
HLDM040		EQU	$
		LDA	DASHFG
		BEQ	HLDM060
		LDA	DASHFM
		BEQ	HLDM050
		BRL	DASHMV
HLDM050		EQU	$
		LDA	<KEYA1
		AND	#00001111B
		BEQ	HLDM080
		AND	<PWORK1
		BNE	HLDM080
		JSR	DASCLR		; DASH clear check sub
;
HLDM060		EQU	$
		LDA	<DIEFG
		CMP	#001H
		BEQ	HLDM080
;
		LDA	<KEYA1
		AND	#00001111B
		STA	<PWORK1
;
HLDM080		EQU	$
		LDY	#004H
		JSR	BGCHCK6
		LDA	<HOLEFG
		AND	#00000001B
		BNE	HLDM0C0
;
		LDA	DASHFG
		BEQ	HLDM090
		BRL	DASHMV
;
HLDM090		EQU	$
		STZ	<PYSPFG
		JSR	DASCLR
		LDA	<KENKY
		AND	#10000000B
		BNE	HLDM094
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
HLDM094		EQU	$
		STZ	<HOLEFG2
		LDY	#LNMD
		LDA	RABFLG
		BEQ	HLDM098
		LDY	#RABT
		LDA	>ITMTBL4
		BEQ	HLDM098
		LDY	#RAB1
HLDM098		EQU	$
		STY	<LNMODE
		CPY	#RABT
		BEQ	HLDM0A4
		CPY	#RAB1
		BEQ	HLDM0A6
		BRL	LNMOVE
;
HLDM0A4		EQU	$
		BRL	USGIMV
HLDM0A6		EQU	$
		BRL	USGIM1

;
HLDM0C0		EQU	$
		JSR	BGCHCK4		; hole bg check
;
		LDA	#04H
		STA	<PYSPFG
		LDA	<HOLEFG
		AND	#00001111B	; no hole ?
		BNE	HLDM100
		STZ	<HOLEFG2
		STZ	<PYSPFG		; walk speed index set
		LDY	#LNMD
		LDA	RABFLG		; rabit ? [YES:HLDM0E0]
		BEQ	HLDM0D0
		LDY	#RABT
		LDA	>ITMTBL4
		BEQ	HLDM0D0
		LDY	#RAB1
HLDM0D0		EQU	$
		STY	<LNMODE
;
		JSR	DASCLR
		LDA	<KENKY
		AND	#10000000B
		BNE	HLDM0E0
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
HLDM0E0		EQU	$
		BRL	HLDM700
;
HLDM100		EQU	$
		CMP	#00001111B	; hole down ?
		BNE	HLDM140
;
		LDA	<HOLEFG2
		CMP	#002H
		BEQ	HLDM120
;
		LDA	>ITMTBL4
		BEQ	HLDM110
		STZ	USGOFN
		STZ	<RABIFG
		STZ	RABFLG
		STZ	USAGTM
		STZ	USAGTM+1
;
HLDM110		EQU	$
		STZ	<PWORK1		; keya1 clear !
		STZ	<WORK0		
		LDA	#02H
		STA	<HOLEFG2
		LDA	#001H		; muteki on !
		STA	MRTKFG
		STZ	<KENKY
		STZ	<KENMD
		STZ	AITMBT
		STZ	AITMBT1
		STZ	<HANEFG
		STZ	<DIEFG
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#holes
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#holes
		JSR	SDLP13
HLDM120		EQU	$
		BRA	PLHDMV
;
HLDM140		EQU	$
		LDX	#03H		; 4 houkou check !
HLDM200		EQU	$
		LDA	<HOLEFG
		AND	#00001111B
		CMP	!HLCKDT,X	; 1 houkou ?
		BNE	HLDM300
		TXA			; houkou data point set
		CLC
		ADC	#04H
		TAX
		BRA	HLDM600
HLDM300		EQU	$
		DEX
		BPL	HLDM200
;
HLDM400		EQU	$
		LDX	#03H		; 1 ten check
		LDA	<HOLEFG
HLDM500		EQU	$
		LSR	A
		BCS	HLDM600		; 
		DEX
		BPL	HLDM500
;
HLDM600		EQU	$
		STX	HLMKFG
		LDA	<PWORK1		; hosei ?
		AND	!HLMKDT1,X
		BEQ	HLDM640
		LDA	<PWORK1		; no hosei !!
		STA	<PLMUKI
		LDA	#06H		; speed index set
		STA	<PYSPFG
		BRA	HLDM6A0
;
HLDM640		EQU	$
		LDA	<PWORK1		; <keya1> hozon
		STA	<WORK+0	
HLDM680		EQU	$
		LDX	HLMKFG		; hole muki set
		LDA	!HLMKDT,X	; houkou set
		TSB	<PWORK1		; (M) <--- (A) ORA (M)
		LDA	<WORK+0		; character kirikae ?
		BEQ	HLDM6C0
HLDM6A0		EQU	$
		JSL	>PYCRCN
HLDM6C0		EQU	$
		JSR	PYNACK		; player naname BG check
		JSL	>PYSPST		; player speed set
		JSR	PYBGCK		; player BG check
		JSL	>HPMV400	; scrool check sub
HLDM700		EQU	$
		RTS
;
;********************************************************************
;*		player hole down sub			(PLHDMV)    *
;********************************************************************
PLHDMV		EQU	$
		STZ	<PYMKFG
		STZ	<HANEFG
		STZ	<PLZPS1		; hozon z-pos < 0 ? [YES:JMDM200]
		STZ	<PLZPS0		; hozon z-pos < 0 ? [YES:JMDM200]
		STZ	<PLZSPD		; now z-pos < 0 ? [YES:JMDM200]
		STZ	<DIEFG		; yarare ? [NO:LNMV050]
		STZ	DAMEFG		; 
		STZ	PYSTOP		; player stop clear 
		JSR	KAKU200		; kakulemino clear !!
		INC	MRTKFG
;
		DEC	<PLHLFM		; timer
		BPL	HLDM700
		INC	<HOLEFG1	; next chara set 
		LDX	<HOLEFG1
		LDA	#009H
		STA	<PLHLFM		; next flem set
		LDA	>OPMODE+0
		CMP	#bakud
		BEQ	PLHD020
		CPX	#01H
		BNE	PLHD020
		STX	!OPNOSI
PLHD020		EQU	$
		CPX	#06H		; hole down end ?
		BNE	HLDM700
;
		JSR	DASCLR		; dash clear !!
		LDY	#p1_hldn
		STY	<GAMEMD
		LDA	#06H
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
		STZ	DODMBT
		STZ	PYDMFM
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<GMMODE
		AND	#000FFH
		BEQ	PLHD090		; danjyon ?
;					; yes
		LDA	<WORK0
		PHA			; (A) psuh
;
		SEP	#00110000B	; memory,index 8bit mode
		LDA	<RMXYCT
		STA	<BKRMPT
		JSL	>MPBTSET1	; map on/off bit set
		REP	#00110000B	; memory,index 16bit mode
;
		PLA			; (A) pull
		STA	<WORK0
;
		LDX	#HLRMPT
		LDA	<RMXYCT
PLHD080		EQU	$
		CMP	>HLRMDT,X
		BEQ	PLHD200		; HL-reset ?
;					; no
		DEX
		DEX
		BPL	PLHD080		; check end ?
;					; yes
PLHD090		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<RMXYCT
		STA	<BKRMPT
		LDA	>HLGOTO		; chikei goto set
		STA	<RMXYCT
;;;;;;;;		STA	<NXRMCT
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#0010H		; y-pos dyoo set
		CLC
		ADC	<WORK0
		STA	<WORK0
		LDA	<PLYPS1		; gamen soto set
		STA	<PLHNL0
		SEC
		SBC	<WORK0
		STA	<PLYPS1
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<GMMODE		; 2,4
		BNE	PLHD100		; ground ?
;					; yes
		LDA	<MPDTNO		; hole futsukatsu check !!
		CMP	#005H
		BNE	PLHD0C0
		JSL	>TBKCHK1
		RTS
PLHD0C0		EQU	$
		JSL	>GDHLDNCK	; hole-down check
		LDA	#MD_ghldn
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
		RTS
;
PLHD100		EQU	$
		LDX	!HLINFF
		LDA	>CDBGCD,X
		STA	!CDBGCKF
		LDA	>PLBGCD,X
		STA	<PLBGCKF
		RTS
;
;
PLHD200		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#p1_hlrs
		STA	<GAMEMD
;
		LDA	>LFNWCT
		SEC
		SBC	#008H
		STA	>LFNWCT
		CMP	#0A8H
		BCC	PLHD280		; life limit ?
;					; yes
		LDA	#000H
		STA	>LFNWCT
;// 03.07.16 //		BEQ	PLHD220		; game over ?
;// 03.07.16 //;					; no
;// 03.07.16 //		BPL	PLHD280		; game over ?
;// 03.07.16 //;					; yes
;// 03.07.16 //PLHD220		EQU	$
;// 03.07.16 //		LDA	#000H
;// 03.07.16 //		STA	>LFNWCT
;// 03.07.16 //		LDA	<DPMAIN
;// 03.07.16 //		STA	>BKDPMN
;// 03.07.16 //		LDA	<DPSUB
;// 03.07.16 //		STA	>BKDPMN+1
;// 03.07.16 //		LDA	<SLMODE
;// 03.07.16 //		STA	!NXSLMD
;// 03.07.16 //		LDA	#MD_gover
;// 03.07.16 //		STA	<SLMODE
;// 03.07.16 //		STZ	<GAMEMD
;// 03.07.16 //		STZ	!PYFLASH
PLHD280		EQU	$
		RTS
;
;
;
;********************************************************************
;*		after hole down shori			(PLAFHL)    *
;********************************************************************
HLSDDT		EQU	$
		BYTE	jpeds,dobun
PLAFHL		EQU	$
		PHB
		PHK
		PLB
		JSL	>PYOMST
;
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		STA	PLSVX1
		LDA	<PLYPS1
		STA	PLSVY1
		MEM8
		SEP	#00100000B
;
		LDA	<GAMEMD
		CMP	#p1_hldn
		BNE	PLAF050
		STZ	<OMSBMD
;
PLAF050		EQU	$
		LDA	<FCNT		; flem conter
		AND	#00000011B
		BNE	PLAF100
;
		INC	<HOLEFG1	; after hole down ? 
		LDA	<HOLEFG1
		CMP	#00AH
		BNE	PLAF100
		LDA	#006H
		STA	<HOLEFG1
;
PLAF100		EQU	$
		LDA	#00000100B	; houkou set
		STA	<PWORK1
		JSL	>PYSPST		; down speed set
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		BPL	PLAF108
		LDA	<PLHNL0
		BMI	PLAF108
;
		LDA	<PLYPS1
		EOR	#0FFFFH
		INC	A
		CLC
		ADC	<PLHNL0
		BMI	PLAF110
		BRL	PLAF300
;
PLAF108		EQU	$
		LDA	<PLHNL0
		CMP	<PLYPS1
		BCC	PLAF110
		BRL	PLAF300
PLAF110		EQU	$
		LDA	<PLHNL0		; (L) hosei
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		STZ	<PYCRCH
		STZ	<PSTPFG
		STZ	<HOLEFG1
		STZ	<HOLEFG2
		STZ	<PYSPFG
		STZ	<JRSBPT
		STZ	<GAMEMD		; game mode reset
		STZ	MRTKFG		; muteki flag clear !
		LDA	>OPMODE+0
		BEQ	PLAF120
		CMP	#jjwat
		BEQ	PLAF120
		STZ	!OPNOSI
		CMP	#bakud
		BNE	PLAF118
		LDA	#000H
		STA	>OPMODE+0
		STA	BMTMER
		STA	BMTMCT
		STA	>OPKYFG
		BRA	PLAF120
PLAF118		EQU	$
		JSL	>RAOPIT		; option init.
;
PLAF120		EQU	$
		LDY	#000H
		JSR	BGCHCK6
		LDA	WTASFG
		AND	#00000001B
		BEQ	PLAF122
		LDA	#dobun
		JSR	SDLP12
PLAF122		EQU	$
		JSR	BGCHCK4		; 4 ten BG check
;
		LDA	!SOUND2
		AND	#00111111B
		CMP	#dobun
		BEQ	PLAF128
;
		LDA	#jpeds
		JSR	SDLP12
;
PLAF128		EQU	$
		LDA	<BGMVFG
		CMP	#bmd_blt
		BNE	PLAF130
		LDA	NUKIFG		; belt conbere ? [NO:PLAF130]
		AND	#00001111B
		BEQ	PLAF130
		LDA	#003H
		STA	BELTCN
;
PLAF130		EQU	$
		LDA	PWATER		; water ? [NO:PLAF140]
		AND	#00001111B
		CMP	#00001111B
		BNE	PLAF140
		LDA	#001H		; water flag set
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1		; swim flag all clear !
;// 03.08.09 //		JSL	>PWTRCGS0	; coler set
		LDA	#00000001B
		STA	<PLBGCKF	; player BG.1 check
		LDA	#WTMV0		; water shibuki set
		LDY	#000H
		JSL	>WTIMIT
		LDA	#SWMD		; swim mode set
		STA	<LNMODE
		JSR	KAKU200		; kakuremino clear
		STZ	PYDMBT		; katsugu clear
		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
		BRA	PLAF200
;
PLAF140		EQU	$
		LDA	<HOLEFG
		AND	#00001111B	; no hole ?
		BNE	PLAF180
		LDA	#LNMD		; mode back !
		STA	<LNMODE
		BRA	PLAF200
PLAF180		EQU	$
		LDA	#HLDM
		STA	<LNMODE
PLAF200		EQU	$
PLAF300		EQU	$
		MEM8
		SEP	#00100000B
;
		PLB
		RTL
;
;************************************************************************
;*		swim Player move			(SWMOVE)	*
;************************************************************************
DASIMD		EQU	$		; dasei chara mode data
		HEX	002,000,001,000
SWMNDT		EQU	$
		WORD	000F0H
SWMOVE		EQU	$
		LDA	<DIEFG		; yarare ? [NO:SWMV010]
		BEQ	SWMV010
;
		LDA	#JMDM		; jump demo shori set
		STA	<LNMODE
		STZ	<PLZPS0
		JSR	SWSPCL		; swim flag all clear !!
		STZ	SWMODE		; swim mode flag clear
		STZ	SWAKEY
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		BRL	JUMPDM		; TO jump shori [BRA;JUMPDM]
;
SWMV010		EQU	$
		STZ	<KENKY
		STZ	<KENMD
		STZ	<KENFM
		STZ	<KENTIM
		STZ	PYDMBT
		STZ	PYDMBT1
		LDA	>ITEMR23	; ashihire on ?
		BNE	SWMV018
		RTS
;
SWMV018		EQU	$
		LDA	SWKASY		; speed not = 0 ? [YES:SWMV040]
		ORA	SWKASY+1
		ORA	SWKASX
		ORA	SWKASX+1
		BNE	SWMV040
;
		LDA	SWADFY		; kasoku flag	
		CMP	#002H
		BEQ	SWMV020
		LDA	SWADFX		; kasoku flag	
		CMP	#002H
		BEQ	SWMV020
		JSR	SWSPCL		; swim all flag clear sub
;
SWMV020		EQU	$
		LDA	<PYCRCH
		AND	#00000001B
		STA	<PYCRCH
;
		INC	<PYFLCH		; stop set
		LDA	<PYFLCH
		CMP	#010H
		BCC	SWMV100
		STZ	<PYFLCH
		STZ	SWDSMD
;
		LDA	<PYCRCH		; stop chara chenge
		AND	#00000001B
		EOR	#00000001B
		STA	<PYCRCH
		BRA	SWMV100
;
SWMV040		EQU	$		; dasei set
;;;;;;;;		LDA	<FCNT
;;;;;;;;		AND	#00001111B
;;;;;;;;		BNE	SWMV080
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check sub
;;;;;;;;		ORA	#watrs
;;;;;;;;		STA	!SOUND2         ; <sound>
;
SWMV080		EQU	$
		INC	<PYFLCH
		LDA	<PYFLCH
		CMP	#008H
		BCC	SWMV100
		STZ	<PYFLCH
;
		LDA	<PYCRCH
		INC	A
		AND	#003H
		STA	<PYCRCH
		TAX
		LDA	!DASIMD,X
		STA	SWDSMD
;
SWMV100		EQU	$
		LDA	SWAKEY		; continue a key ? [YES:SWMV300]
		BNE	SWMV300
;
		LDA	SWKASY		; speed not = 0 ? [YES:SWMV400]
		ORA	SWKASY+1
		ORA	SWKASX
		ORA	SWKASX+1
		BEQ	SWMV400
;
		LDA	<KEYA2L
		AND	#10000000B
		STA	<WORK0
		LDA	<KEYA2		; a,b,y key push ? [NO:SWMV400]
		ORA	<WORK0
		AND	#11000000B
		BEQ	SWMV400
		STA	SWAKEY
;
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check sub
;;;;;;;;		ORA	#swims
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#swims
		JSR	SDLP12
		LDA	#001H
		STA	SWMODE		; swim mode initial set
		LDA	#07H
		STA	SWFLFM		; flem initial set
;
		JSR	SWMXSB
;
SWMV300		EQU	$
		DEC	SWFLFM
		BPL	SWMV400
;
		LDA	#07H
		STA	SWFLFM		; flem set
		INC	SWMODE
		LDA	SWMODE
		CMP	#05H
		BNE	SWMV400
;
		STZ	SWMODE 		; purse end set
		LDA	SWAKEY		; key off !!
		AND	#00111111B
		STA	SWAKEY
;
ICMOVE		EQU	$
SWMV400		EQU	$
		LDA	<DRATMV		; door auto move flag check !
		AND	#00001111B
		BNE	SWMV500
;
		LDA	<KEYA1		; key in ?
		AND	#00001111B
		BNE	SWMV500		; move ?
		STZ	<PLYMVC		; move counter clear
		STZ	<PLXMVC
;
		JSR	ICSPCK		; ice speed check cub
		LDA	ICEFLAG
		BEQ	SWMV440
		LDA	DASHFG
		BEQ	SWMV420
		LDA	SWMUKI
		BRA	SWMV500
SWMV420		EQU	$
		LDA	SWKASY		; speed not = 0 ? [YES:SWMV400]
		ORA	SWKASY+1
		ORA	SWKASX
		ORA	SWKASX+1
		BNE	SWMV700
		STZ	<HANIFG1
		JSL	>SWSPCL1
		BRA	SWMV700
SWMV440		EQU	$
		LDA	<LNMODE
		CMP	#SWMD
		BEQ	SWMV700
		STZ	<PYCRCH
		BRA	SWMV700
;
SWMV500		EQU	$
		CMP	SWMUKI
		BEQ	SWMV600		; ditto key ? [YES:SWMV600]
		STZ	<PLYBUF		; buff clear
		STZ	<PLXBUF
		STZ	<PWORK5
		STZ	<HANIFG1
SWMV600		EQU	$
		STA	SWMUKI
;
		JSR	ICMXCK		; ice speed max set sub
		JSR	SWSPIT
		JSR	SWMNSB		; swim gensoku sub
;
SWMV700		EQU	$
		JSR	PYNACK		; player naname BG check 
		JSL	>PYSPST		; player speed set
		JSR	PYBGCK		; player BG check
		JSL	>PYCRCN		; player chara henkan sub
		STZ	PKYNOT
		JSR	DORSCR
SWMV800		EQU	$
		RTS
;
;********************************************************************
;*		ICE speed checksub			(ICSPCK)    *
;********************************************************************
ICSPCK		EQU	$
		MEM16
		REP	#00100000B
		LDA	ICEFLAG
		AND	#00FFH
		BEQ	ICSP300
;
		LDX	#002H
ICSP100		EQU	$
		LDA	SWKASY,X
		BEQ	ICSP200
		STA	SWMXSY,X
		LDA	#001H
		STA	SWADFY,X
ICSP200		EQU	$
		DEX
		DEX
		BPL	ICSP100
;
ICSP300		EQU	$
		MEM8
		SEP	#00100000B
		RTS
;
;********************************************************************
;*		ICE MAX speed check sub			(ICMXCK)    *
;********************************************************************
ICMXCK		EQU	$
		MEM16
		REP	#00100000B
		LDA	ICEFLAG
		AND	#00FFH
		BEQ	ICMX300
		LDX	#002H
ICMX100		EQU	$
		LDA	#0180H
		STA	SWMXSY,X
		DEX
		DEX
		BPL	ICMX100
ICMX300		EQU	$
		MEM8
		SEP	#00100000B
		RTS
;
;
;********************************************************************
;*		swim init. speed set sub		(SWSPIT)    *
;********************************************************************
SWKYDT		EQU	$	; swim key data
		BYTE	00001000B,00000100B,00000010B,00000001B
ICKSFM		EQU	$
		WORD	0020H,0008H
SWSPIT		EQU	$
		MEM8
		SEP	#00100000B
		LDA	<KEYA1
		AND	#00001111B
		STA	<WORK0		; key set
		STZ	<WORK1
;
		MEM16
		IDX16
		REP	#00110000B
		LDA	#0003H		; key check set
		STA	<WORK2
		LDX	#0002H		; loop counter set
		STX	<WORK4
SWSI200		EQU	$
		LDY	#0000H
		LDA	<WORK0		; key in ? [NO:SWSI900]
		AND	<WORK2
		BEQ	SWSI900
		AND	<WORK4		; up,left ? [YES:SWSI300]
		BNE	SWSI300
		LDY	#0001H
;
SWSI300		EQU	$
		LDA	#020H		; swim kasoku flem counter set
		STA	SWFLMY,X
;
		LDA	ICEFLAG		; ice ? [no:SWSI340]
		AND	#00FFH
		BEQ	SWSI340
		PHY
		DEC	A
		ASL	A
		TAY
		LDA	!ICKSFM,Y	; ice kasoku flem counter set
		STA	SWFLMY,X
		PLY
;
SWSI340		EQU	$
		LDA	SWMUKI		; srip check !!
		ORA	<PWORK1
		AND	<WORK2
		CMP	<WORK2
		BNE	SWSI400
;
		LDA	#002H
		STA	SWADFY,X
		BRA	SWSI500
;
SWSI400		EQU	$
		TYA
		STA	SWYHKU,X	; houkou set
		STZ	SWADFY,X	; kasoku flag clear
;
SWSI500		EQU	$
		LDA	SWMXSY,X
		BNE	SWSI900
		LDA	!SWMNDT
		STA	SWMXSY,X
;
SWSI900		EQU	$
		ASL	<WORK2
		ASL	<WORK2
		ASL	<WORK4
		ASL	<WORK4
		DEX
		DEX
		BPL	SWSI200
;
		MEM8
		IDX8
		SEP	#00110000B
SWSIA00		EQU	$
		RTS
;
;********************************************************************
;*		swim speed flag clear			(SWSPCL1)   *
;********************************************************************
SWSPCL1		EQU	$
		PHB
		PHK
		PLB
		STZ	SWFLFM
		STZ	SWAKEY
		STZ	SWMODE
		JSR	SWSPCL
		PLB
		RTL
;
;********************************************************************
;*		swim speed flag clear			(SWSPCL2)   *
;********************************************************************
SWSPCL2		EQU	$
		PHB
		PHK
		PLB
		JSL	>SWSPCL1
		LDY	#LNMD
		LDA	<RABIFG
		BEQ	SW2S100
		LDA	>ITMTBL4
		BNE	SW2S100
		LDY	#RABT
SW2S100		EQU	$
		STY	<LNMODE
		LDA	SWMUKI
		STA	<PLMUKI
		STZ	WATRFG
		STZ	MRTKFG
		STZ	<HOLEFG1
		STZ	<HOLEFG2
		PLB
		RTL
;
;
;********************************************************************
;*		swim speed flag clear			(SWSPCL)    *
;********************************************************************
SWSPCL		EQU	$
		MEM16
		REP	#00100000B
		STZ	SWSPFY		; speed flag clear
		STZ	SWSPFX
		STZ	SWFLMY		; kasoku timer clear
		STZ	SWFLMX
		STZ	SWADFY		; kasoku flag clear
		STZ	SWADFX
		STZ	SWKASY		; kasoku speed clear
		STZ	SWKASX
		STZ	SWMXSY		; MAX speed clear
		STZ	SWMXSX
		MEM8
		SEP	#00100000B
		RTS
;
;********************************************************************
;*		swim max speed set sub			(SWMXSB)    *
;********************************************************************
SWMXDT		EQU	$		; speed max data
		WORD   	0080H,00A0H,00C0H,00E0H,0100H,0120H
		WORD	0140H,0160H,0180H
SWMXED		EQU	$
SWMXSB		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	#0002H
		LDA	#0003H		; key check set
		STA	<WORK2
;
SWMX100		EQU	$
		LDA	<KEYA1
		AND	<WORK2
		BEQ	SWMX700
;
		LDA	SWKASY,X
		BEQ	SWMX400
;
		LDA	SWMXSY,X		; max ? dasei check
		CMP	#0180H
		BCC	SWMX400
;
		LDY	#0000H
SWMX200		EQU	$
		LDA	!SWMXDT,Y		; now speed < max ? [no:SWMX080]
		CMP	SWKASY,X
		BCS	SWMX600
		INY
		INY
		CPY	#SWMXED-SWMXDT
		BNE	SWMX200
;
		BRA	SWMX600
;
SWMX400		EQU	$
		LDA	SWMXSY,X
		BEQ	SWMX500
		CLC
		ADC	#00A0H			; #0048H
		CMP	#0180H
		BCC	SWMX600
		LDA	#0180H
		BRA	SWMX600
SWMX500		EQU	$
		LDA	#0001H
		STA	SWKASY,X
		LDA	!SWMNDT
SWMX600		EQU	$
		STA	SWMXSY,X
;
SWMX700		EQU	$
		ASL	<WORK2
		ASL	<WORK2
		DEX
		DEX
		BPL	SWMX100
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;********************************************************************
;*		swim min speed set sub			(SWMNSB)    *
;********************************************************************
SWMNSB		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	ICEFLAG
		AND	#00FFH
		BNE	SWMN800
;
		LDA	SWAKEY
		AND	#00FFH
		BNE	SWMN800
;
		LDX	#0002H
		LDA	#0003H		; key check set
		STA	<WORK2
;
SWMN100		EQU	$
		LDA	<KEYA1		; key in ? [NO:SWMN700]
		AND	<WORK2
		BEQ	SWMN700
;
		LDA	SWADFY,X
		CMP	#002H
		BEQ	SWMN700
;
		LDA	SWSPFY,X
		BNE	SWMN200
;
		STZ	SWSPFY,X
		LDA	SWKASY,X	; kasoku ?
		CMP	!SWMNDT
		BCC	SWMN740
		CMP	SWMXSY,X
		BEQ	SWMN200
		BCC	SWMN740
;
SWMN200		EQU	$
		STZ	SWADFY,X
		LDA	SWKASY,X
		CMP	!SWMNDT
		BCC	SWMN700
		LDA	#001H
		STA	SWADFY,X
		STA	SWSPFY,X
		BRA	SWMN740
;
SWMN700		EQU	$
		LDA	!SWMNDT
		STA	SWMXSY,X
		STZ	SWSPFY,X
SWMN740		EQU	$
		ASL	<WORK2
		ASL	<WORK2
		DEX
		DEX
		BPL	SWMN100
SWMN800		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;************************************************************************
;*		Player piri piri move			(PRPRMV)	*
;************************************************************************
PRPRMV		EQU	$
		JSR	PYRETUN		; player return hozon sub
		JSL	>MOZAIKU	; mozaiku shori sub
;
		DEC	<KENFM
		BPL	PRPR400
		LDA	#002H		; next flem set
		STA	<KENFM
		LDA	AITMMD
		INC	A
		STA	AITMMD
		AND	#00000001B
		BEQ	PRPR100
		JSL	>PLCGCN1	; player coler set sub
		BRA	PRPR200
PRPR100		EQU	$
		JSL     >PLCGCN0        ; player corler reset sub
PRPR200		EQU	$
		LDA	AITMMD
		CMP	#008H
		BNE	PRPR400
		STZ	AITMMD
		LDA	#LNMD		; return walk mode
		STA	<LNMODE
		STZ	MRTKFG		; muteki flag on ? [
		STZ	PIPIFG
		STZ	<DIEFG
		LDA	#000H		; mozaiku clear sub !!
		JSL	>MZKRST
PRPR400		EQU	$
ATMSDM		EQU	$
		RTS
;
;********************************************************************
;*		player aitem mochi porzu demo init.	(ATMSIT)    *
;********************************************************************
ATMSIT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	<DIEFG		; die mode ?
		BEQ	ATIT040
		STZ	<DIEFG		; die flag clear !!
		STZ	<HANEFG
		STZ	PYFLASH
		STZ	PYDMBT
;
ATIT040		EQU	$
		STY	ATMTFG		; aitem NO
;
		CPY	#03EH		; hart utsuwa (boss) ?
		BNE	ATIT060
;;;;;;;;		JSR	>SDLRCP
;;;;;;;;		ORA	#02EH		; sound on !!
;;;;;;;;		STA	!SOUND3
		LDA	#02EH
		JSR	SDLP13
;
ATIT060		EQU	$
		LDA	#MCAGE
		STA	ATMTTM
		LDA	ITMVFG
		BEQ	ATIT080
		CMP	#003H
		BNE	ATIT100
ATIT080		EQU	$
		STZ	PYDMBT
		STZ	<KENKY
		STZ	<KENKYL
		STZ	<KENMD
		STZ	<PYSPFG
		STZ	<PYMKFG
		STZ	AITMBT
		STZ	AITMBT1
		STZ	AITMMD
		LDA	#ATDM
		STA	<LNMODE
		LDA	#001H		; mochiage porzu on !!
		STA	ATMTHK
		STA	MRTKFG		; muteki flag on !!
		CPY	#020H
		BNE	ATIT100
		INC	A		; mochiage porzu on !!
		STA	ATMTHK
;
ATIT100		EQU	$
		PHX
		LDY	#004H
		LDA	#TAKARA		; takara set
		JSL	>TAKAINT
		LDA	ATMTFG
		CMP	#020H
		BEQ	ATIT180
		CMP	#037H
		BEQ	ATIT180
		CMP	#038H
		BEQ	ATIT180
		CMP	#039H
		BEQ	ATIT180
		JSL	>ITEM0ST	; aitem set
ATIT180		EQU	$
		JSR	DASCLR
		PLX
;
ATIT200		EQU	$
		CLC
		PLB
		RTL
;
ATIT900		EQU	$
		SEC
		PLB
		RTL
;
;********************************************************************
;*		player oopning demo init.		(OPNINT)    *
;********************************************************************
OPNINT		EQU	$
		PHB
		PHK
		PLB
;
		MEM16
		REP	#00100000B
		LDA	#0215AH
		STA	<PLYPS1
		LDA	#00940H
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		LDA	#OPNG
		STA	<LNMODE
		STZ	OPNGMD
		STZ	OPNGFG
		LDA	#003H
		STA	DASHFM
;
		LDA	#FUTON
		JSL	>FUTNINT	; futon init.
;
		PLB
		RTL
;
;********************************************************************
;*		player oopning demo			(OPNGDM)    *
;********************************************************************
OOPNTBL		EQU	$
		WORD	OPNGNR		; neru wait
		WORD	OPNGUP		; oyaji wait
		WORD	OPNGJP		; jump wait
;
;
OPNGDM		EQU	$
		LDA	OPNGMD
		ASL	A
		TAX
		JMP	(OOPNTBL,X)
;
;********************************************************************
;*		player oopning demo neru wait		(OPNGNR)    *
;********************************************************************
OPNGNR		EQU	$
		LDA	<FCNT		; ibiki timer
		AND	#00011111B
		BNE	OPNT100
;
		LDY	#001H
		LDA	#IBIKI		; ibiki set
		JSL	>IBIMIT
;
OPNT100		EQU	$
		RTS
;
;********************************************************************
;*		player oopning demo oyaji wait		(OPNGUP)    *
;********************************************************************
OPNGUP		EQU	$
		LDA	<GAMEMD		; window check
		BNE	OPUP100
;
		DEC	DASHFM
		BPL	OPUP100
		STZ	DASHFM
;
		LDA	<KEYA2		; any key check 
		AND	#11100000B
		STA	<WORK0
		LDA	<KEYA2
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ORA	<WORK0
		ORA	<KEYA2L
		AND	#11110000B
		BEQ	OPUP100
		INC	OPNGFG
		LDA	#006H		; right set
		STA	<PLMKCH
		INC	OPNGMD		; next oopning mode set
		LDA	#004H
		STA	DASHFM
OPUP100		EQU	$
		RTS
;
;
;********************************************************************
;*		player oopning demo jump		(OPNGJP)    *
;********************************************************************
OPNGJP		EQU	$
		DEC	DASHFM
		BPL	ONJP100
		LDA	#004H
		STA	<PLYSPD		; jump init.
		LDA	#015H
		STA	<PLXSPD
		LDA	#018H
		STA	<PLZSPD
		STA	PLZSPD1
		LDA	#010H
		STA	<HANEFG
		LDA	#002H
		STA	<DIEFG
		LDA	#JWMV
		STA	<LNMODE
;
ONJP100		EQU	$
		RTS
;
;
;********************************************************************
;*		player A push sub			(AKYPSB)    *
;********************************************************************
AKYPSB		EQU	$
		DEC	KNSTOP		; ken stop flag
		BPL	AKYP200
		STZ	KNSTOP
;
;;;;;;;;		LDA	PYDMBT
;;;;;;;;		ORA	DODMBT
;;;;;;;;		BNE	AKYP200
;
		LDA	AITMBT
		ORA	AITMBT1
		BNE	AKYP200
		LDA	<KENMD		; ken mode 4 ? (ken end)
		CMP	#09H
		BCS	AKYP100
		LDA	DASHFG
		BNE	AKYP200
		JSR	PLKNMV		; ken move check sub
		BRA	AKYP200
AKYP100		EQU	$
		JSR	PLKNWT		; ken move wait sub
AKYP200		EQU	$
BKYP200		EQU	$
		RTS
;
;********************************************************************
;*		player B push sub			(BKYPSB)  V*
;********************************************************************
BKYTBL		EQU	$
BKT10		WORD	BOMBST		; [1] bomb move shoki set
BKT20		WORD	BMERST		; [2] bumeran move shoki set
BKT30		WORD	YMIMV0		; [3] yumiya
BKT40		WORD	HNMRMV		; [4] hanmer move shori
BKT50		WORD	DOTMV0		; [5] lot move shori 0 (FIRE)
BKT60		WORD	DOTMV0		; [6] lot move shori 1 (ICE)
BKT70		WORD	AMIMOV		; [7] ami move shori
BKT80		WORD	SOKCHK		; [8] scop,okarina shori
BKT90		WORD	LAMPMV		; [9] kantera move shori
BKTA0		WORD	FIREMV		; [A] magic kona
BKTB0		WORD	DRAGMV0		; [B] drag 0
BKTC0		WORD	CROSMV		; [C] book shori
BKTD0		WORD	BARMOV		; [D] soromon (baria) move
BKTE0		WORD	FOTSOT		; [E] fook shot
BKTF0		WORD	PYBMSP		; [F] special bomber
BKT100		WORD	PLSISP		; [10] special sunder
BKT110		WORD	PYJNSP		; [11] special jishin
BKT120		WORD	TAMAST		; [12] soromon stick
BKT130		WORD	KAKUMV		; [13] kakuremino
BKT140		WORD	TRIFMV		; [14] traihorse
;;;;;;;;		WORD	BUTSMV		; [4] jump buutsu
;;;;;;;;		WORD	DOTMV0		; [8] lot move shori 2 (FER)
;;;;;;;;		WORD	CROSMV		; [d] inoru (cross)
;
BKYT10		EQU	(BKT10-BKYTBL)/2+1
BKYT20		EQU	(BKT20-BKYTBL)/2+1
BKYT30		EQU	(BKT30-BKYTBL)/2+1
BKYT40		EQU	(BKT40-BKYTBL)/2+1
BKYT50		EQU	(BKT50-BKYTBL)/2+1
BKYT60		EQU	(BKT60-BKYTBL)/2+1
BKYT70		EQU	(BKT70-BKYTBL)/2+1
BKYT80		EQU	(BKT80-BKYTBL)/2+1
BKYT90		EQU	(BKT90-BKYTBL)/2+1
BKYTA0		EQU	(BKTA0-BKYTBL)/2+1
BKYTB0		EQU	(BKTB0-BKYTBL)/2+1
BKYTC0		EQU	(BKTC0-BKYTBL)/2+1
BKYTD0		EQU	(BKTD0-BKYTBL)/2+1
BKYTE0		EQU	(BKTE0-BKYTBL)/2+1
BKYTF0		EQU	(BKTF0-BKYTBL)/2+1
BKYT100		EQU	(BKT100-BKYTBL)/2+1
BKYT110		EQU	(BKT110-BKYTBL)/2+1
BKYT120		EQU	(BKT120-BKYTBL)/2+1
BKYT130		EQU	(BKT130-BKYTBL)/2+1
BKYT140		EQU	(BKT140-BKYTBL)/2+1
;
BKYPSB		EQU	$
		LDA	<KENMD		; ken move ? [YES:BKYP200]
		BEQ	BKYP100
		CMP	#09H
		BCC	BKYP200
BKYP100		EQU	$
;;;;;;;;		LDA	PYDMBT		; y key move ? [YES:BKYP200]
;;;;;;;;		ORA	DODMBT
;;;;;;;;		BNE	BKYP200
;
		LDA	RABFLG		; rabit check  !!
		BEQ	BKYP110
;
		LDA	BPSHMD
		CMP	#BKYTB0
		BEQ	BKYP110
		CMP	#BKYT140
		BEQ	BKYP110
		RTS
;
BKYP110		EQU	$
		LDY	DOKATA
		BEQ	BKYP112
		LDA	RABFLG
		BNE	BKYP112
		CPY	#002H
		BEQ	BKYP111
		BRL	SCPMOV		; 1: scop move
BKYP111		EQU	$
		BRL	YMIMV0		; 2: yumi move
;
BKYP112		EQU	$
		LDY	BPSHZN		; b key hozon set
		CPY	BPSHMD
		BEQ	BKYP120
		LDA	BPSHZN
		CMP	#BKYT80
		BNE	BKYP118
		LDA	>ITEMR13
		AND	#00000010B
		BEQ	BKYP118
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
BKYP118		EQU	$
		LDA	BPSHZN
		CMP	#BKYT130
		BNE	BKYP120
		LDA	<KAKUMD
		BEQ	BKYP120
		JSR	KAKU1C0
BKYP120		EQU	$
		LDA	AITMBT
		ORA	AITMBT1
		BNE	BKYP140
		LDY	BPSHMD
		STY	BPSHZN
BKYP140		EQU	$
		BEQ	BKYP400
		CPY	#BKYT50
		BEQ	BKYP180
		CPY	#BKYT60
		BNE	BKYP300
BKYP180		EQU	$
		LDA	BPSHZN		; b key hozon set
		SEC
		SBC	#BKYT50
		INC	A
		STA	LOTITM
BKYP300		EQU	$
		DEY
		BMI	BKYP400
		TYA
		ASL	A
		TAX
		JMP	(BKYTBL,X)
;
BKYP400		EQU	$
		RTS
;
;
;********************************************************************
;*		player y push sub			(YKYPSB)    *
;********************************************************************
YKYTBL		EQU	$
YKT000		WORD	PYDMINR		; [0] inoru
YKT020		WORD	PYDMHAD		; [1] tsukamu
YKT030		WORD	PYDMDAS		; [2] dash
YKT040		WORD	PYDMHIK		; [3] hiku
YKT050		WORD	PYDMYOM		; [4] yomu
YKT060		WORD	PYDMOPN		; [5] takara open
YKT070		WORD	PYDMDHK		; [6] douzou hiku
YKT080		WORD	PYDMAHK		; [7] aitem hiku
;
INOR0		EQU	(YKT000-YKYTBL)/2		; 0
TSUK0		EQU	(YKT020-YKYTBL)/2		; 1
DASH0		EQU	(YKT030-YKYTBL)/2		; 2
HIKU0		EQU	(YKT040-YKYTBL)/2		; 3
YOMU0		EQU	(YKT050-YKYTBL)/2		; 4
OPEN0		EQU	(YKT060-YKYTBL)/2		; 5
DZHK0		EQU	(YKT070-YKYTBL)/2		; 6
ATHK0		EQU	(YKT080-YKYTBL)/2		; 7
;
SLONDT		EQU	$
		BYTE	11100000B		; 0
		BYTE	01000000B		; 1
		BYTE	00000100B		; 2
		BYTE	11100000B		; 3
		BYTE	11100000B		; 4
		BYTE	11100000B		; 5
		BYTE	11100000B		; 6
		BYTE	11100000B		; 7
;
YKYPSB		EQU	$
		STZ	CACHON
		LDA	AITMBT		; b-aitem move ? [YES:YKYP104]
		BNE	YKYP104
		LDA	AITMBT1		; scop move ? [YES:YKYP104]
		AND	#00011111B
		BNE	YKYP104
;;;;;;;;		LDA	<PWORK6		; door in ? [YES:YKYP200]
;;;;;;;;		BNE	YKYP104
;
YKYP100		EQU	$
		LDA	KINSHI		; kinshi flag on ?
		BNE	YKYP104
;
		LDA	<KENMD		; ken move ? [NO:YKYP108]
		CMP	#009H
		BCS	YKYP108
		LDA	<KENKY
		AND	#10000000B
		BEQ	YKYP108
YKYP104		EQU	$
		RTS
;
YKYP108		EQU	$
		LDX	PLAYDO
		LDA	PYDMBT		; move ? [yes:PYDO100]
		ORA	DODMBT
		BNE	YKYP700
;
		JSR	YKYCHK		; DO key on ? [NO:YKYP800]
		BCC	YKYP800
;
;************** obj check
		LDA	!ATHKOK
		BEQ	YKYP10A
		LDA	<PLMKCH
		BNE	YKYP10A
		LDX	#ATHK0
		BRL	YKYP300
YKYP10A		EQU	$
		LDA	!DZHKOK		; douzou hiku ?
		BEQ	YKYP10E
		LDX	#DZHK0
		BRL	YKYP300
YKYP10E		EQU	$
		LDA	BMCHOK
		BNE	YKYP10F
		LDA	CACHOK		; obj chach ? [NO:YKYP140]
		BEQ	YKYP140
		LDA	CACHOK
		STA	CACHON
YKYP10F		EQU	$
		LDA	<KENMD
		BEQ	YKYP110
		JSR	PLKW0C0
YKYP110		EQU	$
		LDA	AITMBT
		ORA	AITMBT1
		BEQ	YKYP120
		STZ	AITMBT
		STZ	AITMBT1
		JSR	BMER800		; bumeran clear !!
		STZ	BMRMOV
		LDA	BMMODE
		CMP	#BUME1
		BNE	YKYP120
		STZ	BMMODE
YKYP120		EQU	$
		LDX	#TSUK0
		BRA	YKYP300
;
YKYP140		EQU	$
;************** BG check
		JSR	BGCHCK8
;
YKYP200		EQU	$
;;;;;;;;		CPX	#HIKU0
;;;;;;;;		BEQ	YKYP300
;;;;;;;;		LDA	<HANIFG1
;;;;;;;;		AND	#00000010B
;;;;;;;;		BNE	YKYP300
;;;;;;;;		LDX	#DASH0
YKYP300		EQU	$
		LDA	!SLONDT,X	; select bit check
		AND	>ITMTBL1+1
		BEQ	YKYP800
;
		STX	PLAYDO
		TXA
		ASL	A
		TAX
		JSR	YKYINT		; do init sub
;;;;;;;;		LDA	PLAYDO
;;;;;;;;		CMP	#NERU0
;;;;;;;;		BEQ	YKYP800
;
YKYP700		EQU	$
		LDA	PLAYDO
		STA	YPSHZN		; b key hozon set
		ASL	A
		TAX
		JMP	(YKYTBL,X)
;
YKYP800		EQU	$
		STZ	<KENKYL
		RTS
;
;********************************************************************
;*		player y push init sub			(YKYINT)    *
;********************************************************************
YKITBL		EQU	$
		WORD	INRINT		; [0] inoru
		WORD	HADINT		; [1] tsukamu
		WORD	DASINT		; [2] dash
		WORD	HIKINT		; [3] hiku
		WORD	YOMINT		; [4] yomu
		WORD	TAKINT		; [5] takara open
		WORD	DZUINT		; [6] douzou hiku
		WORD	AHKINT		; [7] aitem hiku
YKYINT		EQU	$
		JMP	(YKITBL,X)
;
YKYI100		EQU	$
		RTS
;
;********************************************************************
;*		player ken move init.			(PLKNIT)    *
;********************************************************************
KNBEMD		EQU	$		; ken beam kosuu data
		HEX	000,001,001
PLKNIT		EQU	$
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		STZ	<KENMD
		STZ	<KENTIM
;
		LDA	>LFITCT
		SEC
		SBC	#004H
		CMP	>LFNWCT		; life full ? [NO:PLKN080]
		BCS	KNIT080
;
		LDA	>ITMTBL6
		INC	A
		AND	#11111110B
		BEQ	KNIT080
		LDA	>ITMTBL6
		CMP	#002H
		BCC	KNIT080
;;;;;;;;		DEC	A
;;;;;;;;		DEC	A
;;;;;;;;		TAX
;;;;;;;;		LDY	!KNBEMD,X
;;;;;;;;		LDA	#BEAM1		; beam set sub
;;;;;;;;		JSL	>BEAMST
		LDX	#004H
KNIT020		EQU	$
		LDA	BMMODE,X
		CMP	#BRSEN
		BEQ	KNIT080
		DEX
		BPL	KNIT020
;
		LDY	#000H
		JSL	>KNENIT1
;
KNIT080		EQU	$
		JSL	>SDLRCP		; sound (L,R) check sub
		PHA
		LDA	>ITMTBL6
		DEC	A
		TAX
		PLA
		CPX	#0FEH
		BEQ	KNIT0A0
		CPX	#0FFH
		BEQ	KNIT0A0
		ORA	!KNSDDT,X
		STA	!SOUND2
;
KNIT0A0		EQU	$
		LDX	#001H
;;;;;;;;		LDA	>LFNWCT
;;;;;;;;		CMP	#030H
;;;;;;;;		BCS	KNIT0C0
;;;;;;;;		LDX	#001H
KNIT0C0		EQU	$
		STX	<KENFM
KNIT0E0		EQU	$
		RTS
;
;********************************************************************
;*		player ken move sub			(PLKNMV)    *
;********************************************************************
KNFMCT		EQU	$		; ken move flem counter
		BYTE	01H,00H,00H,00H,00H,03H,00H,00H,001H,000H
		BYTE	03H,03H,03H,03H,04H,04H
;;;;;;;;KNFMCT		EQU	$		; ken move flem counter
;;;;;;;;		BYTE	01H,00H,00H,00H,00H,00H,00H,00H,006H,000H
;;;;;;;;		BYTE	03H,03H,03H,03H,04H,04H
KNTOBI		EQU	$
		HEX	001,005
KNSDDT		EQU	$		; sound data
		BYTE	kens0,kens1,kens2,kens3
KNFMFG		EQU	$
		HEX	000,009,012,01B
PLKNMV		EQU	$
		LDA	<KENKYL
		AND	#00010000B
		BNE	KNIT0E0
;
		BIT	<KENKY		; 0 --> bpl 1 --> bmi
		BMI	PLKN100
		BIT	<KEYA2		; 0 --> bpl 1 --> bmi
		BPL	KNIT0E0
;
		LDX	<PWORK6		; door in ? [yes:PLKN200]
		BEQ	PLKN0C0
;
		JSR	BGCHCKD		; ken furi door in check !!
		LDA	<WORKE
		AND	#00110000B
		EOR	#00110000B
		BEQ	KNIT0E0
PLKN0C0		EQU	$
		LDA	#080H
		TSB	<KENKY		; (M) <--- (A) ORA (M)
		JSR	PLKNIT		; ken init.
		LDA	#00000001B	; (M) <--- (A) ORA (M)
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
;
PLKN100		EQU	$
		BIT	<KEYA1		; 0 --> bpl 1 --> bmi
		BMI	PLKN1C0
		LDA	#00000001B
		TSB	<KENKY
PLKN1C0		EQU	$
		JSR	KAKU400		; conbear ram clear !!
;
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM
		BPL	PLKNF00
;
		INC	<KENMD
;
;;;;;;;;		LDA	>LFNWCT		; player hart > 6 ? [NO:PLKN400]
;;;;;;;;		CMP	#030H
;;;;;;;;		BCC	PLKN400
;;;;;;;;;
;;;;;;;;		LDX	#001H
;;;;;;;;PLKN200		EQU	$
;;;;;;;;		LDA	!KNTOBI,X
;;;;;;;;		CMP	<KENMD
;;;;;;;;		BNE	PLKN300
;;;;;;;;		INC	<KENMD
;;;;;;;;		BRA	PLKN400
;;;;;;;;PLKN300		EQU	$
;;;;;;;;		DEX
;;;;;;;;		BPL	PLKN200
;;;;;;;;;
PLKN400		EQU	$
		LDA	<KENMD
		CMP	#009H		; ken furi end ?
		BCS	PLKNWT
		TAX
		LDA	!KNFMCT,X
		STA	<KENFM
		CPX	#005H
		BNE	PLKN500
		LDA	>ITMTBL6
		BEQ	PLKN420
		CMP	#001H
		BEQ	PLKN420
		CMP	#0FFH
		BEQ	PLKN420
		LDY	#004H
		LDA	#KNTMV
		JSL	>KNFSINT
PLKN420		EQU	$
		LDY	#001H
		LDA	>ITMTBL6
		BEQ	PLKNF00
		CMP	#0FFH
		BEQ	PLKNF00
		CMP	#001H
		BEQ	PLKN440
		LDY	#006H
PLKN440		EQU	$
		JSR	BGCHCK6		; ken 1 ten check
		BRA	PLKNF00
;
PLKN500		EQU	$
		CPX	#004H
		BCC	PLKNF00
		LDA	<KENKY
		AND	#00000001B
		BEQ	PLKNF00
		BIT	<KEYA1		; 0 --> bpl 1 --> bmi
		BPL	PLKNF00
;
		LDA	<KENKY
		AND	#11111110B
		STA	<KENKY
		BRL	PLKNIT		; ken init.
;
PLKNF00		EQU	$
		JSR	EMKNCK
PLKNF40		EQU	$
		RTS
;
;********************************************************************
;*		player ken wait				(PLKNWT)    *
;********************************************************************
PLKNWT		EQU	$
		BIT	<KEYA1		; A key continue ? [YES:PLKW100]
		BMI	PLKW100		; 0 --> bpl 1 --> bmi
;
PLKW080		EQU	$
		LDA	<KENTIM
		CMP	#030H
		BCC	PLKW0C0
		JSR	PLKW0C0
		STZ	<KENTIM
;;;;;;;;		JSL	>SDLRCP
;;;;;;;;		ORA	#03AH
;;;;;;;;		STA	!SOUND2
;;;;;;;;		LDA	#03AH
;;;;;;;;		JSR	SDLP12
		BRL	PYKNIT		; ken kaiten init.
;;;;;;;;		BRL	PYKNIT1		; ken kaiten init.
;
PLKW0C0		EQU	$
		STZ	<PYSPFG
		LDA	<HANIFG1
		AND	#11110110B
		STA	<HANIFG1
		STZ	<KENFM		; 
		STZ	<KENMD
		LDA	<KENKY		; ken kay clear !
		AND	#01111110B
		STA	<KENKY
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		BRL	PLKW300
;
PLKW100		EQU	$
		BIT	<HANIFG1	; 0 --> bpl 1 --> bmi
		BMI	PLKW108
		LDA	<HANIFG1
		AND	#00001001B
		BNE	PLKW110
PLKW108		EQU	$
		LDA	<HANIFG		; teki cross ? 
		BEQ	PLKW140
		CMP	#001H
		BEQ	PLKW0C0
PLKW110		EQU	$
		LDA	<KENMD		; ken mode set
		CMP	#09H
		BNE	PLKW120
		LDX	#0AH
		STX	<KENMD		; ken mode clear !
		LDA	!KNFMCT,X
		STA	<KENFM
;
PLKW120		EQU	$
		DEC	<KENFM
		BPL	PLKW132
;
;;;;;;;;		STZ	<KENTIM
;
		LDA	<KENMD		; tochu furi stop set
		INC	A
		CMP	#00DH
		BNE	PLKW130
;
		LDA	>ITMTBL6	; ken nashi ?
		INC	A
		AND	#11111110B
		BEQ	PLKW128
;
		LDA	<HANIFG1
		AND	#00001001B
		BEQ	PLKW128
		LDY	#001H
		LDA	#HIBA3		; hibana set sub
		JSL	>KNHBIT
;
		LDA	<HANIFG1
		AND	#00001000B
		BNE	PLKW124
		LDA	#kens4
		JSR	SDLP12
		BRA	PLKW126
PLKW124		EQU	$		; door sound !!
		LDA	#tate1
		JSR	SDLP12
;
PLKW126		EQU	$
		LDY	#001H
		JSR	BGCHCK6		; ken 1 ten check
PLKW128		EQU	$
		LDA	#0AH
PLKW130		EQU	$
		STA	<KENMD
		TAX
		LDA	!KNFMCT,X
		STA	<KENFM
PLKW132		EQU	$
		BRA	PLKW200
;
PLKW140		EQU	$
		LDA	#09H
		STA	<KENMD
		LDA	#00000001B	; (M) <--- (A) ORA (M)
		TSB	<PYMKFG
		STZ	<KENFM
;
		LDA	<PYSPFG
		CMP	#004H
		BEQ	PLKW200
		CMP	#010H
		BEQ	PLKW200
		LDA	#00CH		; player speed set
		STA	<PYSPFG
;
		LDA	>ITMTBL6	; ken nashi ?
		INC	A
		AND	#11111110B
		BEQ	PLKW300
;
		LDX	#004H
PLKW148		EQU	$
		LDA	BMMODE,X
		CMP	#SBAMV
		BEQ	PLKW300
		CMP	#BRSEN
		BEQ	PLKW300
		DEX
		BPL	PLKW148
;
		LDA	<KENTIM
		CMP	#006H
		BCC	PLKW180
		LDA	<FCNT
		AND	#00000011B
		BNE	PLKW180
		JSL	>KKTRIT		; kira kira set
;
PLKW180		EQU	$
		LDA	<KENTIM
		CMP	#040H
		BCS	PLKW300
		INC	<KENTIM
		LDA	<KENTIM
		CMP	#030H
		BNE	PLKW300
		LDA	#037H
		JSR	SDLP12
		JSL	>KNKIIT
		BRA	PLKW300
PLKW200		EQU	$
		JSR	EMKNCK
PLKW300		EQU	$
		RTS
;
;********************************************************************
;*		enmy ken hani set sub			(EMKNCK)    *
;********************************************************************
EMKNCK		EQU	$
		LDA	>ITMTBL6
		BEQ	PLKW300
		CMP	#0FFH
		BEQ	PLKW300
		CMP	#002H
		BCS	EMKN200
;
EMKN080		EQU	$
		LDY	#NWKN
		LDA	<KENMD
		STA	<WORK2
		STZ	<WORK3
		CMP	#009H
		BEQ	PLKW300
		BCC	EMKN100
		LDA	<WORK2
		SEC
		SBC	#00AH
		STA	<WORK2
		LDY	#DIFN
EMKN100		EQU	$
		MEM16
		IDX16
		REP	#00110000B
		LDA	<PLMKCH
		AND	#00FFH
		TAX
		LDA	>LNPYIN,X
		STA	<WORK4
		TYA
		AND	#00FFH
		ASL	A
		CLC
		ADC	<WORK4
		TAX
		LDA	>PYINDX,X
		CLC
		ADC	<WORK2
		TAX
		MEM8
		SEP	#00100000B
		LDA	>ENMYDT,X
		STA	<KNCRYP
		LDA	>ENMXDT,X
		STA	<KNCRXP
		IDX8
		SEP	#00010000B
		RTS
;
EMKN200		EQU	$
		LDA	<KENMD
		CMP	#009H
		BCS	EMKN080
		ASL	A
		STA	<WORK4
		LDA	<PLMKCH
		LSR	A
		STA	<WORKE
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	<WORKE
		ASL	A
		CLC
		ADC	<WORK4
		TAX
		LDA	>LVKNCRD,X
		CMP	#0FFH
		BEQ	EMKN400
		TXA
		LSR	A
		TAX
		LDA	>LVKNYPD,X
		STA	<KNCRYP
		LDA	>LVKNXPD,X
		STA	<KNCRXP
EMKN300		EQU	$
		RTS
;
EMKN400		EQU	$
		BRL	EMKN080
;
;***************** B KEY SHORI *******************
;********************************************************************
;*		player dot move sub			(DOTMV0)    *
;********************************************************************
DTFLEM		EQU	$		; dot furi flem counter
		BYTE	003H,003H,005H
DOTMV0		EQU	$		; dot move shori
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	DTMV100
;
		LDA	<PWORK6		; door in ? [YES:PLKW200]
		BNE	EMKN300
;
		JSR	BKYCHK		; b key check set
		BCC	EMKN300
;
		LDX	#000H
		JSR	MGPTSB
		BCC	DTMV180
;
		LDA	TMBMCT		; meta 0 ? [NO:PLKW200]
		BNE	DTMV180
;
		LDA	#001H		; b key on flag set
		STA	DKYHZN
;
		JSR	DTMGSB		; beam initail set
		LDA	!DTFLEM
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		STZ	AITMMD
		STZ	AITMBT		; player porse bit clear
		LDA	#00000001B	; DOT bit on !
		TSB	AITMBT		; (M) <--- (A) ORA (M)
;
DTMV100		EQU	$
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM		; dot furi timer
		BPL	DTMV200
;
		LDA	AITMMD		; next mode set
		INC	A
		STA	AITMMD
		TAX
		LDA	!DTFLEM,X	; next flem counter set
		STA	<KENFM
		CPX	#03H
		BNE	DTMV200
;
		STZ	<PYSPFG
		STZ	AITMMD
		STZ	<KENFM
		STZ	DKYHZN
		LDA	AITMBT		; DOT bit off !
		AND	#11111110B
		STA	AITMBT
DTMV180		EQU	$
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
DTMV200		EQU	$
		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		player dot move sub			(DOTMV1)    *
;;;;;;;;;********************************************************************
;;;;;;;;DOTMV1		EQU	$
;;;;;;;;		LDA	TMDTFG		; tame dot ?
;;;;;;;;		CMP	#001H
;;;;;;;;		BEQ	DOTM100
;;;;;;;;		CMP	#002H
;;;;;;;;		BEQ	DOTM200
;;;;;;;;;
;;;;;;;;		LDA	>MPNWCT
;;;;;;;;		CMP	#020H
;;;;;;;;		BNE	DOTM200
;;;;;;;;;
;;;;;;;;		JSR	DTMGSB1		; tame dot sub
;;;;;;;;;
;;;;;;;;		LDA	<KEYA1		; B key on ? [YES:DOTM100]
;;;;;;;;		AND	#01000000B
;;;;;;;;		BNE	DOTM100
;;;;;;;;;
;;;;;;;;		STA	DKYHZN
;;;;;;;;		LDA	<PWORK1		; key stop 
;;;;;;;;		AND	#11110000B
;;;;;;;;		STA	<PWORK1
;;;;;;;;		LDA	#00000001B
;;;;;;;;		TSB	<PYMKFG		; (M) <--- (A) ORA (M)
;;;;;;;;		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;;
;;;;;;;;		LDA	#001H		; tate dot ON
;;;;;;;;		STA	TMDTFG
;;;;;;;;		LDA	BMMODE+0
;;;;;;;;		CMP	#DTMV3
;;;;;;;;		BNE	DOTM200
;;;;;;;;;
;;;;;;;;DOTM100		EQU	$
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;DOTM200		EQU	$
;;;;;;;;		STZ	DKYHZN
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG
;;;;;;;;		LDA	AITMBT		; DOT bit off !
;;;;;;;;		AND	#11111011B
;;;;;;;;		STA	AITMBT
;;;;;;;;		STZ	<PYSPFG
;;;;;;;;		BRL	DTMV140
;
;********************************************************************
;*		player dot magic beam int. sub		(DTMGSB)    *
;********************************************************************
DTMGTBL		EQU	$	; nomal dot beam data
		WORD	LTBEAM1		; magic 0
		WORD	LTBEAM0		; magic 1
;;;;;;;;;		WORD	LTBEAM0		; magic 2
;;;;;;;;;		WORD	LTBEAM3		; magic 3
;;;;;;;;;		WORD	LTBEAM1		; magic 4
;;;;;;;;;		WORD	LTBEAM0		; magic 5
;
;				tame dot beam data
;;;;;;;;;DTFLMGL		EQU	$
;;;;;;;;;		WORD	LTBMEND		; magic 0
;;;;;;;;;		WORD	LTBEAM2		; magic 1
;;;;;;;;;		WORD	LTBEAM2		; magic 2
;;;;;;;;;		WORD	LTBEAM2		; magic 3
;;;;;;;;;		WORD	LTBEAM2		; magic 4
;;;;;;;;;		WORD	LTBEAM2		; magic 5
;;;;;;;;;;
DTMGSB		EQU	$
		LDA	LOTITM		; MAGIC flag
		DEC	A
		ASL	A
		TAX
		JMP	(DTMGTBL,X)
;
;;;;;;;;;DTMGSB1		EQU	$
;;;;;;;;;		LDA	LOTITM		; MAGIC flag
;;;;;;;;;		ASL	A
;;;;;;;;;		TAX
;;;;;;;;;		JMP	(DTFLMGL,X)
;
;
;********************************************************************
;*		player dot magic 0 beam int. sub	(LTBEAM0)    *
;********************************************************************
LTBEAM0		EQU	$
;;;;;		JSR	LTMGSUB
;;;;;		BCC	LTBM100
		LDA	#DTMOV		; beam set sub
		LDY	#01H		; max 2
		JSL	>DTMVIT
		RTS
;
;********************************************************************
;*		player dot magic 1 beam int. sub	(LTBEAM1)    *
;********************************************************************
LTBEAM1		EQU	$
;;;;;;		JSR	LTMGSUB
;;;;;;		BCC	LTBM100
		LDA	#BEAM2		; beam set sub
		LDY	#01H
		JSL	>BEAMS2
LTMG300		EQU	$
		RTS
;;;;;;;;;;
;;;;;;;;;;********************************************************************
;;;;;;;;;;*		player dot magic 2 beam int. sub	(LTBEAM2)    *
;;;;;;;;;;********************************************************************
;;;;;;;;;LTBEAM2		EQU	$
;;;;;;;;;;		JSR	LTMGSUB
;;;;;;;;;;		BCC	LTBM100
;;;;;;;;;		LDA	#DTMV3		; beam set sub
;;;;;;;;;		LDY	#00H		; max 1
;;;;;;;;;		JSL	>DTMVIT
;;;;;;;;;		RTS
;;;;;;;;;;
;;;;;;;;;;********************************************************************
;;;;;;;;;;*		player dot magic 3 beam int. sub	(LTBEAM3)    *
;;;;;;;;;;********************************************************************
;;;;;;;;;LTBEAM3		EQU	$
;;;;;;;;;;		JSR	LTMGSUB
;;;;;;;;;;		BCC	LTBM100
;;;;;;;;;		LDA	#DTMV2		; beam set sub
;;;;;;;;;		LDY	#01H		; max 2
;;;;;;;;;		JSL	>DTMVIT
;;;;;;;;;LTBM100		EQU	$
;;;;;;;;;		RTS
;;;;;;;;;;
;;;;;;;;;;********************************************************************
;;;;;;;;;;*		player dot magic END beam int. sub	(LTBMEND)   *
;;;;;;;;;;********************************************************************
;;;;;;;;;LTBMEND		EQU	$
;;;;;;;;;		CLC
;;;;;;;;;		RTS
;;;;;;;;;;
;;;;;;;;;;********************************************************************
;;;;;;;;;;*		dot magic meta set sub  	       (LTMGSUB)    *
;;;;;;;;;;********************************************************************
;;;;;;;;;MGPTDT		EQU	$
;;;;;;;;;		HEX	001,001,001,001,001,001
;;;;;;;;;LTMGSUB		EQU	$
;;;;;;;;;		LDA	LOTITM
;;;;;;;;;		LSR	A
;;;;;;;;;		TAX
;;;;;;;;;		LDA	>MPNWCT
;;;;;;;;;		BEQ	LTMG200
;;;;;;;;;		SEC
;;;;;;;;;		SBC	MGPTDT,X
;;;;;;;;;		BMI	LTMG200
;;;;;;;;;		STA	>MPNWCT
;;;;;;;;;LTMG100		EQU	$
;;;;;;;;;		SEC
;;;;;;;;;		RTS
;;;;;;;;;;
;;;;;;;;;LTMG200		EQU	$
;;;;;;;;;		CLC
;;;;;;;;;LTMG300		EQU	$
;;;;;;;;;		RTS
;;;;;;;;;
;
;********************************************************************
;*		player hanmer move sub			(HNMRMV)    *
;********************************************************************
HMFLEM		EQU	$
		BYTE	003H,003H,010H
HNMRMV		EQU	$		; hanmer move shori
		LDA	AITMBT		; yumi ?
		AND	#00010000B
		BNE	HNMR020
;
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	HNMR100
;
		LDA	<PWORK6		; door in ? [YES:LTMG300]
		BNE	HNMR020
;
		JSR	BKYC100		; b key check set
		BCS	HNMR040
HNMR020		EQU	$
		BRL	DTMV200
;
HNMR040		EQU	$
		LDA	!HMFLEM
		STA	<KENFM
		LDA	#00000001B
		TSB	<PYMKFG		; (M) <--- (A) ORA (M)
		STZ	<PYCRCH		; player stop pouse set !
		LDA	AITMBT		; DOT bit on !
		AND	#00000000B
		ORA	#00000010B
		STA	AITMBT
		STZ	AITMMD
;
HNMR100		EQU	$
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM
		BPL	HNMR200
;
		LDA	AITMMD
		INC	A
		STA	AITMMD
		TAX
		LDA	!HMFLEM,X
		STA	<KENFM
;
		CPX	#001H
		BNE	HNMR140
;
		PHX
		LDY	#003H
		JSR	BGCHCK6
		LDY	#000H		; max 1 set
		LDA	#HIBA2		; hibana move sub
		JSL	>HBINT0
		PLX
		LDA	!SOUND2
		BNE	HNMR140
		LDA	#hanms
		JSR	SDLP12
		JSL	>MTEST
;
HNMR140		EQU	$
		CPX	#03H
		BNE	HNMR200
;
		STZ	AITMMD
		STZ	<KENFM
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	AITMBT		; DOT bit off !
		AND	#11111101B
		STA	AITMBT
;;;;;;;;		LDA	<KENMD
;;;;;;;;		CMP	#09H
;;;;;;;;		BCC	HNMR200
;;;;;;;;		LDA	AITMBT		; DOT bit off !
;;;;;;;;		AND	#11110111B
;;;;;;;;		STA	AITMBT
;;;;;;;;		LDA	#09H
;;;;;;;;		STA	<KENMD	
HNMR200		EQU	$
		RTS
;
;********************************************************************
;*		player yumi move sub			(YMIMV0)    *
;********************************************************************
YMFLEM		EQU	$
		BYTE	003H,003H,008H
YMIMV0		EQU	$		; yumi move shori
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	YMMV100
;
		LDA	<PWORK6		; door in ? [YES:HNMR200]
		BNE	HNMR200
;
		JSR	BKYCHK		; b key check set
		BCC	HNMR200
;
		LDA	#00000001B
		TSB	<PYMKFG		; (M) <--- (A) ORA (M)
		LDA	!YMFLEM
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		STZ	AITMMD
		LDA	AITMBT		; yumi bit on !
		AND	#00000000B
		ORA	#00010000B
		STA	AITMBT
;
YMMV100		EQU	$
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM
		BPL	HNMR200
;
		LDA	AITMMD
		INC	A
		STA	AITMMD
		TAX
		LDA	!YMFLEM,X
		STA	<KENFM
		CPX	#03H
		BNE	YMMV200
;
		LDA	<PLYPS1
		STA	<BMWORK+0
		LDA	<PLYPS0
		STA	<BMWORK+1
		LDA	<PLXPS1
		STA	<BMWORK+2
		LDA	<PLXPS0
		STA	<BMWORK+3
		LDX	<PLMKCH		; muki set
		LDY	#002H		; max 3 set
		LDA	#YAMOV		; beam set sub
		JSL	>YAIMIT
		BCC	YMMV180
;
;---- Mato ate ya count dec ! --
		LDA	YAAACT		; matoate shop !!
		BEQ	YS0000
;
		DEC	YAAACT
		LDA	>ARWCNT
		INC	A
		INC	A
		STA	>ARWCNT
YS0000		EQU	$
		LDA	YAAOFF
		BNE	YMMV140		; Can not ya shot ?
;					; no !
		LDA	>ARWCNT
		BEQ	YMMV140
		DEC	A
		STA	>ARWCNT
		BNE	YMMV180
;
		JSL	>ITEM0ST	; meter set sub
		BRA	YMMV180
;
YMMV140		EQU	$
		STZ	BMMODE,X
		LDA	#03CH
		JSR	SDLP12
;
YMMV180		EQU	$
		STZ	AITMMD
		STZ	<KENFM
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	AITMBT		; YUMI bit off !
		AND	#11101111B
		STA	AITMBT
		LDA	<KENMD
		CMP	#09H
		BCC	YMMV200
		LDA	#09H
		STA	<KENMD	
YMMV200		EQU	$
		RTS
;
;********************************************************************
;*		player bumeran move shoki set sub	(BMERST)    *
;********************************************************************
BMERST		EQU	$		; bumeran move shoki set
		BIT	<KENKY		; b key on ? [YES:BMER700]
		BVS	BMER700		; 0 --> bvc 1 --> bvs
;
		LDA	<PWORK6		; door in ? [YES:BMER900]
		BNE	YMMV200
;
		JSR	BKYCHK		; b key check set
		BCC	BMER900
;
		LDA	BMRMOV		; bumeran move ? [YES:BMER900]
		BNE	BMER900
		STZ	<PYCRCH		; player stop pouse set !
		LDA	AITMBT		; yumi bit on !
		AND	#00000000B
		ORA	#10000000B
		STA	AITMBT
		STZ	AITMMD
		LDA	#007H
		STA	<KENFM
;
		LDY	#000H		; max 1 set	
		LDA	#BUME1		; bumeran move sub
		JSL	>JPIMIT
		LDA	<KENMD		; ken kamae ? [YES:BMER800]
		CMP	#009H
		BCS	BMER800
		LDA	<BMWORK+0
		BNE	BMER700		; naname ? [YES:BMER700]
		LDA	<KEYA1
		AND	#00001111B
		STA	<PLMUKI
		BRA	BMER740
BMER700		EQU	$
		LDA	#00000001B
		TSB	<PYMKFG		; (M) <--- (A) ORA (M)
BMER740		EQU	$
		LDA	AITMBT
		BEQ	BMER800
;
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
;
		DEC	<KENFM
		BPL	BMER900
		LDA	#005H
		STA	<KENFM
		LDA	AITMMD
		INC	A
		STA	AITMMD
		CMP	#002H
		BNE	BMER900
BMER800		EQU	$
		STZ	AITMBT
		STZ	AITMMD
		STZ	<KENFM
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		AND	#10000000B
		BNE	BMER900
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
;
BMER900		EQU	$
		RTS
;
;********************************************************************
;*		player bomb move shoki set sub		(BOMBST)    *
;********************************************************************
BOMBST		EQU	$		; bomb move shoki set
		LDA	<PWORK6
		BNE	BOMB100
		LDA	>OPMODE+0
		CMP	#bakud
		BEQ	BOMB100
;
		JSR	BKYCHK		; b key check set
		BCC	BOMB100
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
;
		LDY	#001H		; max 2 set
		LDA	#BOMBM		; bumeran move sub
		JSL	>BOMINT
;;;;;;;;		JSL	>MTRSUB		; metar gage sub (BY kawauso)  
		STZ	AITMBT		; player porse bit clear
BOMB100		EQU	$
		RTS
;
;********************************************************************
;*		player drag move shoki set sub         (DARGMV0)    *
;********************************************************************
DRAGMV0		EQU	$
		JSR	BKYCHK
		BCC	BOMB100
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	>ITEMR16
		DEC	A
		TAX
		LDA	>BINCT0,X 
		BEQ	BOMB100
		CMP	#003H
		BCC	DRAG0A0
		CMP	#003H		; 1-->kinoko 2-->kara 3-->red
		BEQ	DRAG080		; 4-->green 5-->bule 6-->yousei
		CMP	#004H		; 7-->hachi
		BEQ	DRAG100
		CMP	#005H
		BEQ	DRAG200
		CMP	#006H
		BEQ	DRAG040
		BRL	DRAG400
DRAG040		EQU	$
		BRL	DRAG300
;
DRAG080		EQU	$
		LDA	>LFITCT		; hart full ?
		CMP	>LFNWCT
		BNE	DRAG0C0
DRAG0A0		EQU	$
		BRL	TRIF070
DRAG0C0		EQU	$
		LDA	#002H
		STA	>BINCT0,X	; red shori set
		STZ	AITMBT		; player porse bit clear
		LDA	#p3_life
		STA	<GAMEMD
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_etcpl
		STA	<SLMODE
		LDA	#007H
		STA	!KAICNT
		JSL	>MTRSUB		; meter write
		RTS
;
DRAG100		EQU	$		; green shori set
		LDA	>MPNWCT
		CMP	#080H
		BNE	DRAG120
		BRL	TRIF070
DRAG120		EQU	$
		LDA	#002H
		STA	>BINCT0,X	; red shori set
		STZ	AITMBT		; player porse bit clear
		LDA	#p3_mpup
		STA	<GAMEMD
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_etcpl
		STA	<SLMODE
		LDA	#007H
		STA	!KAICNT
		JSL	>MTRSUB		; meter write
		BRA	DRAGF00
;
DRAG200		EQU	$
		LDA	>LFITCT		; hart full ?
		CMP	>LFNWCT
		BNE	DRAG280
		LDA	>MPNWCT
		CMP	#080H
		BNE	DRAG280
		BRL	TRIF070
DRAG280		EQU	$
		LDA	#002H
		STA	>BINCT0,X	; bule shori set
		STZ	AITMBT		; player porse bit clear
		LDA	#p3_lmup
		STA	<GAMEMD
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_etcpl
		STA	<SLMODE
		LDA	#007H
		STA	!KAICNT
		JSL	>MTRSUB		; meter write
		BRA	DRAGF00
;
DRAG300		EQU	$
		STZ	AITMBT		; player porse bit clear
		JSL	>YOSEISTL	; yosei set sub
		BPL	DRAG340
		BRL	TRIF070
DRAG340		EQU	$
		LDA	#002H
		STA	>BINCT0,X	; yousei shori set
		JSL	>MTRSUB		; meter write
		BRA	DRAGF00
;
DRAG400		EQU	$
		STZ	AITMBT		; player porse bit clear
		JSL	>HACHISTL	; hachi set sub
		BPL	DRAG440
		BRL	TRIF070
DRAG440		EQU	$
		LDA	#002H
		STA	>BINCT0,X	; hachi shori set
		JSL	>MTRSUB		; meter write
;
DRAGF00		EQU	$
		RTS
;
;********************************************************************
;*		player lamp move shoki set sub         (LAMPMV)    *
;********************************************************************
CGEDPT		EQU	$		; CCNGED data
		HEX	18,10,00
;
;
LAMPMV		EQU	$
		LDA	<PWORK6		; door in ? [YES:DRAG200]
		BNE	LAMP200
		JSR	BKYCHK
		BCC	LAMP200		; [B] on ?
;					; yes
		LDA	>ITEMR11
		BEQ	LAMP100
;
		LDX	#006H
		JSR	MGPTSB
		BCC	LAMP100
;
		LDY	#000H		; max 1 set	
		LDA	#KONMV		; lamp move sub
		JSL	>KONINT
		JSL	>LAMPPL		; fire set sub
;
		LDY	#002H		; max 2 set
		LDA	#KANTR		; tama move sub
		JSL	>KTFRINT
;
;
;// 02.09.18 //		LDA	>DARKFG
;// 02.09.18 //		BEQ	LAMP100		; NOW DARK ?
;// 02.09.18 //;					; yes
;// 02.09.18 //		LDA	!LGTWST
;// 02.09.18 //		CMP	#003H
;// 02.09.18 //		BCS	LAMP100		; light-wipe on ?
;// 02.09.18 //;					; yes
;// 02.09.18 //		TAX
;// 02.09.18 //		LDA	>CCNGED
;// 02.09.18 //		DEC	A
;// 02.09.18 //		STA	>CCNGCT
;// 02.09.18 //		LDA	>CGEDPT,X
;// 02.09.18 //		STA	>CCNGED
;// 02.09.18 //		LDA	#p1_ltwp
;// 02.09.18 //		STA	<GAMEMD
;// 02.09.18 //		STZ	<JRSBPT
;// 02.09.18 //		LDA	#002H
;// 02.09.18 //		STA	>CCNGFG
;// 02.09.18 //		INC	!LGTWFG		; light-wipe on !!
;// 02.09.18 //		LDA	#00010000B
;// 02.09.18 //		STA	2130H
;// 02.09.18 //		LDA	#01100010B
;// 02.09.18 //		STA	2131H		; color-add. mode set
;// 02.09.13 //		LDA	#p3_cgrs
;// 02.09.13 //		STA	<GAMEMD
;// 02.09.13 //		LDA	<SLMODE
;// 02.09.13 //		STA	!NXSLMD
;// 02.09.13 //		LDA	#MD_etcpl
;// 02.09.13 //		STA	<SLMODE
LAMP100		EQU	$
		STZ	AITMBT		; player porse bit clear
		STZ	<KENKY
		STZ	<KENMD
		STZ	<PYMKFG
		LDA	<KENMD
		CMP	#009H
		BNE	LAMP200
		STZ	<PYSPFG
LAMP200		EQU	$
		RTS
;
;********************************************************************
;*		player fire drag move shoki set sub    (FIREMV)     *
;********************************************************************
FRFMCT		EQU	$		; ken move flem counter
		BYTE	02H,01H,01H,03H,02H,02H,02H,02H,006H,000H
;
FIREMV		EQU	$
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	FIRE100
		LDA	<PWORK6		; door in ? [YES:LAMP200]
		BNE	LAMP200
;
		JSR	BKYCHK
		BCC	FIREF00
		LDA	>ITEMR05
		CMP	#002H
		BEQ	FIRE080
		LDA	#03CH
		JSR	SDLP12
		BRA	FIRE300
FIRE080		EQU	$
		LDX	#002H
		JSR	MGPTSB
		BCC	FIRE300
;
		LDA	!FRFMCT
		STA	<KENFM
		STZ	AITMMD
		STZ	<PYCRCH
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		STZ	AITMBT
		LDA	#01000000B
		TSB	AITMBT
;
FIRE100		EQU	$
		STZ	<PLYMVC
		STZ	<PLXMVC
		STZ	<PWORK1
		STZ	<PLYBUF
		STZ	<PLXBUF
		STZ	<PWORK5
;
		DEC	<KENFM
		BPL	FIREF00
		LDA	AITMMD
		INC	A
		STA	AITMMD
		TAX
		LDA	!FRFMCT,X
		STA	<KENFM
		CPX	#004H
		BNE	FIRE200
;
		LDY	#000H		; max 1 set	
		LDA	#KONMV		; fire kona move sub
		JSL	>KONINT
;
FIRE200		EQU	$
		CPX	#009H
		BNE	FIREF00
;
		LDA	<GAMEMD
		BNE	FIRE280
		LDY	#001H		; bg check !!
		JSR	BGCHCK6
		BRA	FIRE300
FIRE280		EQU	$
;;;;;;;;		JSL	>LAMPPL1	; fire set sub
;
FIRE300		EQU	$
		STZ	AITMBT		; player porse bit clear
		STZ	AITMMD
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
;
FIREF00		EQU	$
		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		player jump buutsu move shoki set sub   (BUTSMV)    *
;;;;;;;;;********************************************************************
;;;;;;;;BUTSMV		EQU	$
;;;;;;;;		LDA	<PWORK6		; door ? [YES:FIREF00]
;;;;;;;;		BNE	FIREF00
;;;;;;;;;
;;;;;;;;		LDA	<KENKY
;;;;;;;;		AND	#10000000B
;;;;;;;;		BNE	BUTS500
;;;;;;;;;
;;;;;;;;		JSR	BKYCHK
;;;;;;;;		BCC	BUTS500
;;;;;;;;;
;;;;;;;;		STZ	<PLYSPD
;;;;;;;;		STZ	<PLXSPD
;;;;;;;;		LDA	#02CH
;;;;;;;;		STA	<HANEFG
;;;;;;;;		LDA	#001H
;;;;;;;;		STA	<DIEFG
;;;;;;;;		LDA	#001H
;;;;;;;;		STA	HANEFM
;;;;;;;;		LDA	#016H
;;;;;;;;		STA	<PLZSPD
;;;;;;;;		STA	PLZSPD1
;;;;;;;;		LDA	#03H
;;;;;;;;		STA	<KENFM
;;;;;;;;		STZ	AITMMD
;;;;;;;;		LDA	AITMBT
;;;;;;;;		AND	#11011111B
;;;;;;;;		ORA	#00100000B
;;;;;;;;		STA	AITMBT
;;;;;;;;		LDA	#JPMV
;;;;;;;;		STA	<LNMODE
;;;;;;;;;
;;;;;;;;;
;;;;;;;;BUTS500		EQU	$
;;;;;;;;		RTS
;
;********************************************************************
;*		scop,okarina check sub			 (SOKCHK)   *
;********************************************************************
SOKCHK		EQU	$
		LDA	>ITEMR13	; habe check !!
		BEQ	FIREF00
		CMP	#001H		; scop ? [YES:SCPMOV]
		BEQ	SCPMOV
		BRL	FUEMOV		; To FUEMOV
;
;********************************************************************
;*		scop horu move				(SCPMOV)   *
;********************************************************************
SCPFLM		EQU	$		; horu flem counter
		BYTE	007H,012H,010H,007H,012H,010H
SCPUMD		EQU	$		; horu mode
		BYTE	000H,001H,002H,000H,001H,002H
SCPMOV		EQU	$		; [3] horu
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	SCPM400
		LDA	<PWORK6		; door in ? [YES:BUTS500]
		BNE	FIREF00
		JSR	BKYCHK		; y key in check 
		BCC	FIREF00
;
		LDA	!SCPFLM
		STA	<KENFM
		STZ	PYDMNO
		STZ	AITMMD
		LDA	#00000001B
		STA	AITMBT1
		LDA	#00000001B
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
;
SCPM400		EQU	$
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM
		BMI	SCPM408
		RTS
SCPM408		EQU	$
		LDX	PYDMNO
		INX
		STX	PYDMNO
		LDA	!SCPFLM,X
		STA	<KENFM
		LDA	!SCPUMD,X
		STA	AITMMD
;
		CMP	#001H
		BNE	SCPM440
;
		LDY	#002H
		PHX
		JSR	BGCHCK6
		PLX
;
		LDA	!OKRNFLG	; okarina set ?
		BEQ	SCPM410
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#pinpn
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#pinpn
		JSR	SDLP13
		PHX			; okarina set sub
		LDY	#000H
		LDA	#OKARN
		JSL	>OKIMIT
		PLX
;
SCPM410		EQU	$
		LDA	KUSAFG
		ORA	SHIBFG
		AND	#00000001B
		BNE	SCPM420
;
		PHX
		LDY	#000H		; max 1 set
		LDA	#HIBA2		; hibana move sub
		JSL	>HBINT0
		PLX
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#kens4
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#kens4
		JSR	SDLP12
		BRA	SCPM440
;
SCPM420		EQU	$
		PHX
		LDY	#000H		; max 1 set
		LDA	#SCPMV		; hibana suna move sub
		JSL	>SCPINT
		LDA	DOKATA
		BEQ	SCPM430
		JSL	>ANAITST	; dokara item set sub
SCPM430		EQU	$
		PLX
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#scps0
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#scps0
		JSR	SDLP12
;
SCPM440		EQU	$
		CPX	#03H
		BNE	SCPM500
		STZ	PYDMNO
		STZ	AITMMD
		LDA	<KENKY
		AND	#10000000B
		STA	<KENKY
		STZ	AITMBT1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
SCPM500		EQU	$
		RTS
;
;********************************************************************
;*		okarina move shori			(FUEMOV)    *
;********************************************************************
FUEMOV		EQU	$		; [7] okarina move
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVC	FUEM040
;
		DEC	WRAFLM
		LDA	WRAFLM
		BNE	SCPM500
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
FUEM040		EQU	$
		JSR	BKYCHK		; b key in check 
		BCC	SCPM500
;
		LDA	#080H
		STA	WRAFLM
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check
;;;;;;;;		ORA	#okara
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#okara
		JSR	SDLP12
;
		LDA	<GMMODE		; chika check
		BNE	SCPM500
		LDA	<MPDTNO		; chijoo ura ?
		AND	#040H
		BNE	SCPM500
		LDA	<SLMODE
		CMP	#MD_evply
		BEQ	SCPM500
;
		LDX	#004H		; 2 times check 
FUEM080		EQU	$
		LDA	BMMODE,X
		CMP	#WAPMV
		BEQ	SCPM500
		DEX
		BPL	FUEM080
;
		LDA	>ITEMR13	; fue on check !!
		CMP	#002H
		BNE	FUEM100
		MEM16
		REP	#00100000B
		LDA	<MPDTNO		; map edia ? [NO:FUEM0C0]
		CMP	#0018H
		BNE	FUEM0C0
		LDA	<PLYPS1
		CMP	#00760H
		BCC	FUEM0C0
		CMP	#007E0H
		BCS	FUEM0C0
		LDA	<PLXPS1
		CMP	#001CFH
		BCC	FUEM0C0
		CMP	#00230H
		BCS	FUEM0C0
		MEM8
		SEP	#00100000B
		LDA	#p2_kzbd	;
		STA	<GAMEMD
		LDY	#000H		; kazamirori shometsu set sub
		LDA	#KAZMV
		JSL	>KAZAINT
FUEM0C0		EQU	$
		MEM8
		SEP	#00100000B
		BRA	FUEM900
FUEM100		EQU	$
;;;;;;;;		LDX	#003H		; magic point check sub
;;;;;;;;		JSR	MGPTSB1
;;;;;;;;		BCC	FUEM900
;
		LDY	#004H		; tori set sub
		LDA	#WAPMV
		JSL	>WARPINT
		STZ	!ATHKOK
;
FUEM900		EQU	$
		RTS
;
;********************************************************************
;*		danjon okarina move shori	       (FUEMOVL)    *
;********************************************************************
FUEMOVL		EQU	$
		PHB
		PHK
		PLB
;
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check
;;;;;;;;		ORA	#okara
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#okara
		JSR	SDLP12
		LDY	#004H		; tori set sub
		LDA	#WAPMV
		JSL	>WARPINT
;
		PLB
		RTL
;
;********************************************************************
;*		inoru MOVE demo 		       	(CROSMV)    *
;********************************************************************
CROSMV		EQU	$
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	CROS100
		LDA	<PWORK6		; door in ? [YES:SCPM500]
		BNE	FUEM900
;
		JSR	BKYCHK		; y key in check 
		BCC	CROS100
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	INORON
		BNE	CROS080
;;;;;;;;		JSL	>SDLRCP
;;;;;;;;		ORA	#03CH
;;;;;;;;		STA	!SOUND2
		LDA	#03CH
		JSR	SDLP12
		BRA	CROS100
;
CROS080		EQU	$
		BRL	INRINT		; inoru shoki set
CROS100		EQU	$
		RTS
;
;********************************************************************
;*		R,A push SANDER special	init.		(PYSDSP)    *
;********************************************************************
PLSISP		EQU	$
		JSR	BKYCHK		; r,a key check sub
		BCC	PLSI100
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
;
		LDA	<PWORK6		; door in ? [YES:CROS100]
		BNE	PLSI040
		LDA	BSFLFG		; boss die ?
		BNE	PLSI040
		LDA	!EMYSTT+1
		AND	#10000000B
		BNE	PLSI040
		LDA	>ITMTBL6
		INC	A
		AND	#11111110B
		BEQ	PLSI040
		LDA	>OPKYFG
		BEQ	PLSI080
		LDA	>OPMODE+0
		CMP	#bakud
		BNE	PLSI080
PLSI040		EQU	$
		BRL	TRIF070
;
PLSI080		EQU	$
		LDA	BMMODE+0
		ORA	BMMODE+1
		ORA	BMMODE+2
		BNE	PLSI100
;
		LDX	#001H
		JSR	MGPTSB1
		BCC	PLSI100
;
		LDA	#SDSP
		STA	<LNMODE
		LDA	#00000001B	; (M) <--- (A) ORA (M)
		TSB	<PYMKFG
		LDA	!SDMFMD
		STA	<KENFM
		STZ	KNSPMD
		STZ	KNSPMD+1
		STZ	KNTMFG		; 2 times check flag
		LDA	#mgckn
		JSR	SDLP13
PLSI100		EQU	$
		RTS
;
;********************************************************************
;*		R,A push SANDER special move		(SNDRSP)    *
;********************************************************************
SDMDDT		EQU	$		; sander mode data
		HEX	000,001,002,003
		HEX	000,001,002,003
		HEX	004,005,006,007
SDMFMD		EQU	$		; sander flem data
		HEX	005,005,005,005
		HEX	005,005,005,005
		HEX	007,007,003,003
SNDRSP		EQU	$
		INC	ENSTFG
;
		DEC	<KENFM
		BPL	SNDR200
		INC	KNSPMD+1
		LDX	KNSPMD+1
		CPX	#00BH
		BNE	SNDR080
		LDX	#00BH
		BRA	SNDR100
SNDR080		EQU	$
		CPX	#004H
		BNE	SNDR0A0
		PHX
		LDA	#mgckn
		JSR	SDLP13
		PLX
SNDR0A0		EQU	$
		CPX	#009H
		BNE	SNDR0C0
		LDA	#mgck1
		JSR	SDLP12
SNDR0C0		EQU	$
		CPX	#00CH
		BNE	SNDR100
		LDA	#00AH
		STA	KNSPMD+1
		TAX
SNDR100		EQU	$		
		LDA	!SDMFMD,X
		STA	<KENFM
		LDA	!SDMDDT,X
		STA	KNSPMD
;
		LDA	KNTMFG		; 2 times ? [YES:SNDR200]
		BNE	SNDR200
;
		CPX	#00AH
		BNE	SNDR200
;
		LDA	#001H
		STA	KNTMFG		; ken kaiten times flag
		LDY	#000H		; max 1 set	
		LDA	#SODMV		; sunder move sub
		JSL	>SNDINT
		STZ	<DIEFG		; yarare ? [NO:LNMV050]
		STZ	HANEFG
;
SNDR200		EQU	$
		RTS
;
;********************************************************************
;*		R,A push BOMBER special	init.		(PYBMSP)    *
;********************************************************************
PYBMSP		EQU	$		; bomber special
		JSR	BKYCHK		; y key in check 
		BCC	PYBM100
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
;
		LDA	<PWORK6		; door in ? [YES:SNDR200]
		BNE	PYBM050
		LDA	BSFLFG		; boss die ?
		BNE	PYBM050
		LDA	!EMYSTT+1
		AND	#10000000B
		BNE	PYBM050
		LDA	>ITMTBL6
		INC	A
		AND	#11111110B
		BEQ	PYBM050
		LDA	>OPKYFG
		BEQ	PYBM060
		LDA	>OPMODE+0
		CMP	#bakud
		BNE	PYBM060
PYBM050		EQU	$
		BRL	TRIF070
;
PYBM060		EQU	$
		LDA	BMMODE+0
		ORA	BMMODE+1
		ORA	BMMODE+2
		BNE	PYBM100
;
		LDX	#001H
		JSR	MGPTSB1
		BCC	PYBM100
;;;;;;;;		BRL	PYKNIT
;
PYBM080		EQU	$
		LDA	#BBSP
		STA	<LNMODE
		LDA	#00000001B	; (M) <--- (A) ORA (M)
		TSB	<PYMKFG
		LDA	!BDMFMD
		STA	<KENFM
		LDA	!BDMDDT
		STA	KNSPMD
		STZ	KNSPMD+1
		STZ	KNTMFG		; 2 times check flag
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#mgckn
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#mgckn
		JSR	SDLP13
PYBM100		EQU	$
		RTS
;
;********************************************************************
;*		R,A push BOMBER special move		(BOBRSP)    *
;********************************************************************
BDMDDT		EQU	$		; bomber mode data
		HEX	000,001,002,003
		HEX	000,001,002,003
		HEX	008,009,00A,00B
		HEX	00C,00A,008,00D
		HEX	00E,00F,010,011
BDMFMD		EQU	$		; bomber flem data
		HEX	005,005,005,005
		HEX	005,005,005,005
		HEX	003,003,003,003
		HEX	003,007,001,001
		HEX	001,001,001,00D
BOBRSP		EQU	$
		INC	ENSTFG
;
		DEC	<KENFM
		BPL	BOBR200
;
		INC	KNSPMD+1
		LDX	KNSPMD+1
		CPX	#004H
		BNE	BOBR040
		PHX
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#mgckn
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#mgckn
		JSR	SDLP13
		PLX
BOBR040		EQU	$
		CPX	#00AH
		BNE	BOBR080
		PHX
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#mgck1
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#mgck1
		JSR	SDLP12
		PLX
BOBR080		EQU	$
		CPX	#014H
		BNE	BOBR100
		LDA	#013H
		STA	KNSPMD+1
		TAX
BOBR100		EQU	$		
		LDA	!BDMFMD,X
		STA	<KENFM
		LDA	!BDMDDT,X
		STA	KNSPMD
;
		LDA	KNTMFG		; 2 times ? [YES:SNDR200]
		BNE	BOBR200
;
		CPX	#013H
		BNE	BOBR200
;
		LDA	#001H
		STA	KNTMFG		; ken kaiten times flag
		LDY	#000H		; max 1 set
		LDA	#SPBMV		; bomber move sub
		JSL	>SPBMINT
		STZ	<DIEFG		; yarare flag reset
		STZ	HANEFG		; hanekaeri flag reset
;
BOBR200		EQU	$
		RTS
;
;
;********************************************************************
;*		R,A push JISHIN special	init.		(PYJNSP)    *
;********************************************************************
PYJNSP		EQU	$		; [3] jishin special init.
		JSR	BKYCHK		; y key in check 
		BCC	PYJN100
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
;
		LDA	<PWORK6		; door in ? [YES:BOBR200]
		BNE	PYJN020
		LDA	BSFLFG		; boss die ?
		BNE	PYJN020
		LDA	!EMYSTT+1
		AND	#10000000B
		BNE	PYJN020
		LDA	>ITMTBL6
		INC	A
		AND	#11111110B
		BEQ	PYJN020
		LDA	>OPKYFG
		BEQ	PYJN040
		LDA	>OPMODE+0
		CMP	#bakud
		BNE	PYJN040
PYJN020		EQU	$
		BRL	TRIF070
;
PYJN040		EQU	$
		LDA	BMMODE+0
		ORA	BMMODE+1
		ORA	BMMODE+2
		BNE	PYJN100
;
;
		LDX	#001H
		JSR	MGPTSB1
		BCC	PYJN100
;;;;;;;;		BRL	PYKNIT
;
PYJN080		EQU	$
		LDA	#JNSP
		STA	<LNMODE
		LDA	#00000001B	; (M) <--- (A) ORA (M)
		TSB	<PYMKFG
		LDA	!JDMFMD
		STA	<KENFM
		LDA	!JDMDDT
		STA	KNSPMD
		STZ	KNSPMD+1
		STZ	KNTMFG		; 2 times check flag
		STZ	<HANEFG
		LDA	#028H
		STA	JMPZSP
		STA	JMPZSP1
		STZ	JMPZPS1
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#mgckn
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#mgckn
		JSR	SDLP13
PYJN100		EQU	$
		RTS
;
;********************************************************************
;*		R,A push JISHIN special move		(JISNSP)    *
;********************************************************************
JDMDDT		EQU	$		; bomber mode data
		HEX	000,001,002,003
		HEX	000,001,002,003
		HEX	012,013,014,016
JDMFMD		EQU	$		; bomber flem data
		HEX	005,005,005,005
		HEX	005,005,005,005
		HEX	005,005,005,013
JISNSP		EQU	$
		INC	ENSTFG
;
		STZ	<PLYSPD
		STZ	<PLXSPD
;
		LDA	KNSPMD+1
		CMP	#00AH
		BNE	JISN0C0
;
JISN020		EQU	$
		LDA	JMPZSP
		STA	<PLZSPD
		LDA	JMPZSP1
		STA	PLZSPD1
		LDA	JMPZPS1
		STA	<PLZPS1
		LDA	#002H
		STA	<WORK0
		STA	<DIEFG
		JSR	JPDM0A0
		JSL	>HNSPST
;
		LDA	<PLZSPD
		STA	JMPZSP
		LDA	PLZSPD1
		STA	JMPZSP1
		LDA	<PLZPS1
		STA	JMPZPS1
		BMI	JISN0E0
;
		LDY	#014H
		LDA	<PLZSPD
		BPL	JISN040
		LDY	#015H
JISN040		EQU	$
		STY	KNSPMD
		BRA	JISN200
;
JISN0C0		EQU	$
		DEC	<KENFM
		BPL	JISN200
;
JISN0E0		EQU	$
		INC	KNSPMD+1
		LDX	KNSPMD+1
		CPX	#004H
		BNE	JISN0E4
		PHX
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#mgckn
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#mgckn
		JSR	SDLP13
		PLX
JISN0E4		EQU	$
		CPX	#00AH
		BNE	JISN0E8
		PHX
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#mgck1
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#mgck1
		JSR	SDLP12
		PLX
JISN0E8		EQU	$
		CPX	#00BH
		BNE	JISN0EC
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#baku2
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#baku2
		JSR	SDLP12
JISN0EC		EQU	$
		CPX	#00CH
		BNE	JISN100
		LDA	#00BH
		STA	KNSPMD+1
		TAX
JISN100		EQU	$		
		LDA	!JDMFMD,X
		STA	<KENFM
		LDA	!JDMDDT,X
		STA	KNSPMD
;
		LDA	KNTMFG		; 2 times ? [YES:SNDR200]
		BNE	JISN200
;
		CPX	#00BH
		BNE	JISN200
;
		LDA	#001H
		STA	KNTMFG		; ken kaiten times flag
		LDY	#000H		; max 1 set	
		LDA	#JISMV		; jishin move sub
		JSL	>JISNINT
		STZ	<DIEFG		; yarare flag reset
		STZ	HANEFG		; hanekaeri flag reset
;
JISN200		EQU	$
		RTS
;
;********************************************************************
;*		ken kaiten special			(PYKNSP)    *
;********************************************************************
PYKNIT		EQU	$
		LDY	#000H		; max 1 set	
		TYX
		LDA	#KNSOM		; fire kona move sub
		JSL	>KNSOINT
;
PYKNSP		EQU	$
		LDA	#KNSP 
		STA	<LNMODE
		LDA 	<PLMKCH
		LSR	A
		TAX
		LDA	!KNIDXD,X	; index set
		STA	PLMKPH
		TAX
		LDA	!KNFLDT		; flem counter set
		STA	<KENFM
		LDA	!KNMDDT,X	; mode set
		STA	KNSPMD
		STZ	KNSPMD+1
		LDA	#090H
		STA	<KENMD
		LDA	#00000001B	; (M) <--- (A) ORA (M)
		TSB	<PYMKFG
		LDA	#10000000B
		STA	<KENKY
		BRL	KNSPAL
PYKL100		EQU	$
		RTS
;
;********************************************************************
;*		ken kaiten special			(PYKNSP1)   *
;********************************************************************
PYKNSP1		EQU	$
		PHB
		PHK
		PLB
		JSR	PYKNSP
		PLB
		RTL
;
;********************************************************************
;*		R,A push ken special move		(KNSPAL)    *
;********************************************************************
KNMDDT		EQU	$		; ken mode data
		HEX	00A,00B,00A,006,007,008,009,002	; up
		HEX	003,004,005,00A
		HEX	000,001,000,002,003,004,005,006	; down
		HEX	007,008,009,000
		HEX	00C,00D,00C,004,005,006,007,008	; left
		HEX	009,002,003,00C
		HEX	00E,00F,00E,008,009,002,003,004	; right
		HEX	005,006,007,00E
KNFLDT		EQU	$		; ken mode flem counter
		HEX	003,009,003,001,001,001,001,001	; 1 shuu 
		HEX	001,001,001,005
KNFLDT1		EQU	$		; ken mode flem counter
		HEX	001,005,001,001,001,001,001,001	; 1 shuu 
		HEX	001,001,001,005
KNIDXD		EQU	$
		HEX	000,00C,018,024
;
KNSPAL		EQU	$
KNSPL1		EQU	$
		JSR	PYRETUN		; player return hozon sub
		LDA	<DIEFG		; yarare ? [NO:LNMV050]
		BEQ	KNSP040
		LDX	#004H
KNSP010		EQU	$
		LDA	BMMODE,X
		CMP	#KNSOM
		BEQ	KNSP012
		CMP	#KNSEN
		BNE	KNSP014
KNSP012		EQU	$
		STZ	BMMODE,X
KNSP014		EQU	$
		DEX
		BPL	KNSP010
;
		STZ	<PLZPS0
		LDA	<PYMKFG
		AND	#0FEH
		STA	<PYMKFG
		STZ	<KENFM
		STZ	<KENMD
		STZ	<KENKY
		STZ	<KENKYL
		STZ	KNSPMD
		STZ	KNSPMD+1
		STZ	<PYSPFG
		LDA	<GMMODE
		BNE	KNSP018
;;;;;;;;;		JSL	>PPOSKP         ; y,x pos hozon
KNSP018		EQU	$
		LDA	PIPIFG		; piri piri ? [NO:LNMV030]
		BEQ	KNSP030
		LDA	<KAKUMD		; kakuremino check
		BEQ	KNSP020
		JSR	KAKU200		; kakuremino clear !!
KNSP020		EQU	$
		JSR	PLKW0C0		; ken move clear !!
		LDA	#001H
		STA	MRTKFG		; muteki flag on ? [
		STZ	AITMMD
		LDA	#002H
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		LDA	#02BH
		JSR	SDLP13
		LDA	#PRMV
		STA	<LNMODE
		BRL	PRPRMV
;
KNSP030		EQU	$
		LDA	#JMDM		; jump demo shori set
		STA	<LNMODE
		BRL	JUMPDM		; TO jump shori [BRA;JUMPDM]
;
KNSP040		EQU	$
		LDA	<HANEFG		; hane kaeri ? [NO:LNMV054]
		BEQ	KNSP080
		JSR	JMDM200		; TO hanekaeri shori [JMP:JMDM200]
		BRA	KNSP0A0
;
KNSP080		EQU	$
		STZ	<PWORK1
		JSL	>PYSPST
		JSR	PYBGCK
		LDA	#KNSP
		STA	<LNMODE
		STZ	PKYNOT
		JSR	DORSCR
;
KNSP0A0		EQU	$
		DEC	<KENFM
		BPL	KNSP400
;
		LDA	KNSPMD+1
		INC	A
		STA	KNSPMD+1
		CMP	#002H
		BNE	KNSP100
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#mgckn
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#mgckn
		JSR	SDLP13
;
KNSP100		EQU	$
		LDA	KNSPMD+1
		CMP	#0CH
		BNE	KNSP200
;
		LDA	<PYMKFG		; end shori !!
		AND	#0FEH
		STA	<PYMKFG
		STZ	<KENFM
		STZ	<KENMD
		STZ	KNSPMD
		STZ	KNSPMD+1
		LDA	<LNMODE
		CMP	#KNS1
		BEQ	KNSP180
		LDX	#000H
		LDA	<KENMD
		BEQ	KNSP140
		LDA	<KEYA1
		AND	#10000000B
		TAX
KNSP140		EQU	$
		STX	<KENKY
KNSP180		EQU	$
		LDA	#LNMD
		STA	<LNMODE
		BRA	KNSP400
;
KNSP200		EQU	$
		LDA	KNSPMD+1
		CLC
		ADC	PLMKPH
		TAX
		LDA	!KNMDDT,X	; mode set
		STA	KNSPMD
;
		LDX	KNSPMD+1
;;;;;;;;		LDY	!KNFLDT,X	; flem counter set
;;;;;;;;		LDA	<LNMODE
;;;;;;;;		CMP	#KNS1
;;;;;;;;		BNE	KNSP300
		LDY	!KNFLDT1,X	; flem counter set
;;;;;;;;KNSP300		EQU	$
		STY	<KENFM
		LDY	#008H
		JSR	BGCHCK6
;
KNSP400		EQU	$
		RTS
;
;********************************************************************
;*		ken kaiten special 1			(PYKNIT1)   *
;********************************************************************
PYKNIT1		EQU	$
		LDY	#000H		; max 1 set	
		LDX	#001H
		LDA	#KNSOM		; fire kona move sub
		JSL	>KNSOINT
;
		LDA	#KNS1
		STA	<LNMODE
		LDA 	<PLMKCH
		LSR	A
		TAX
		LDA	!KNIDXD,X	; index set
		STA	PLMKPH
		TAX
		LDA	!KNFLDT		; flem counter set
		STA	<KENFM
		LDA	!KNMDDT,X	; mode set
		STA	KNSPMD
		STZ	KNSPMD+1
		LDA	#00000001B	; (M) <--- (A) ORA (M)
		TSB	<PYMKFG
		BRL	KNSPL1
;
;********************************************************************
;*		traiforse move shori			(TRIFMV)    *
;********************************************************************
TRIFMV		EQU	$		; [14] traiforse move
		BIT	<KENKY
		BVS	TRIF060		; 0 --> bvc 1 --> bvs
;
		JSR	BKYCHK		; b key in check 
		BCC	KNSP400
;
		LDA	>OPMODE
		CMP	#monky
		BNE	TRIF060
		MEM16
		REP	#00100000B
		LDA	#MS_0457
		STA	!MSGENOL
		MEM8
		SEP	#00100000B
		JSL	>MESWIT
		BRL	TRIF100
;
TRIF060		EQU	$
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	<PWORK6
		BNE	TRIF070
		LDA	BGOFFG		; debug mode ? [YES:TRIF040]
		BNE	TRIF080
		LDA	<GMMODE		; danjon ?
		BNE	TRIF080
		LDA	<MPDTNO		; chijoo ura ?
		AND	#040H
		BNE	TRIF080
TRIF070		EQU	$
		LDA	#03CH
		JSR	SDLP12
		BRA	TRIF100
;
TRIF080		EQU	$
		LDA	<GMMODE		; chika check
		BEQ	TRIF084
		LDA	BSFLFG		; boss die ?
		BNE	TRIF100
		JSL	>UDJRTNCK
		LDA	!SOUND2
		CMP	#03CH
		BEQ	TRIF100
		STZ	!BLKMODE+0
		STZ	!BLKMODE+1
		BRA	TRIF100
;
TRIF084		EQU	$
		LDA	<SLMODE		; event gamen ?
		CMP	#MD_evply
		BEQ	TRIF100
		LDA	<MPDTNO		; chijoo ura ?
		AND	#040H
		STA	<OMPHZN
		BEQ	TRIF090
;
		LDA	<PLYPS1
		STA	MEMYPSL+0FH
		LDA	<PLYPS0
		STA	MEMYPSH+0FH
		LDA	<PLXPS1
		STA	MEMXPSL+0FH
		LDA	<PLXPS0
		STA	MEMXPSH+0FH
;
TRIF090		EQU	$
		LDA	#p2_kage
TRIF0A0		EQU	$
		STA	<GAMEMD
;
		STZ	!ATHKOK
		LDA	#001H
		STA	TRIFFG
		STZ	<JRSBPT
		STZ	<PLYSPD
		STZ	<PLXSPD
		LDA	#TRFS
		STA	<LNMODE
TRIF100		EQU	$
		RTS
;
;********************************************************************
;*		traiforse bg check shori		(TRBGCK)    *
;********************************************************************
TRBGCK		EQU	$		; [14] traiforse move
		JSL	>PLYCLR2
;
		JSR	BGCHCKC		; BG check sub
;
		LDA	<MPDTNO
		AND	#040H
		CMP	<OMPHZN
		BNE	TRBG020
		BRL	TRBG100
TRBG020		EQU	$
		LDA	<WORKC
		ORA	<WORKE
		STA	<WORK0
		AND	#00001100B
		BEQ	TRBG100
		LDA	<WORK0
		AND	#00000011B
		BNE	TRBG0E0
;
TRBG040		EQU	$
		LDA	<WORK0
		AND	#00001111B
		BEQ	TRBG100
		LDX	#003H
		LDY	#000H
TRBG080		EQU	$
		LSR	A
		BCC	TRBG0C0
		INY
TRBG0C0		EQU	$
		DEX
		BPL	TRBG080
		CPY	#002H
		BCC	TRBG100
;
TRBG0E0		EQU	$
		LDA	#p2_kgrs
		BRA	TRIF0A0
;
TRBG100		EQU	$
		LDY	#000H
		LDX	#003H
		LDA	!PWATER		; water in ?
TRBG140		EQU	$
		LSR	A
		BCC	TRBG160
		INY
TRBG160		EQU	$
		DEX
		BPL	TRBG140
		CPY	#002H
		BCC	TRBG200
;
		LDA	>ITEMR23
		BNE	TRBG180
		LDA	<MPDTNO
		AND	#040H
		CMP	<OMPHZN
		BNE	TRBG0E0
		JSL	>TBKCHK
		BRA	TRBG200
;
TRBG180		EQU	$
		LDA	#001H		; water flag set
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1	; swim flag all clear !
		LDA	#SWMD		; swim mode set
		STA	<LNMODE
		JSR	KAKU200		; kakuremino clear
		STZ	<PYSPFG
		BRA	TRBG400
;
TRBG200		EQU	$
		LDA	WATRFG
		BEQ	TRBG300
		STZ	WATRFG
		LDA	SWMUKI
		STA	<PLMUKI
TRBG300		EQU	$
		STZ	DASHFM
		STZ	DASHFG
		STZ	<PYSPFG
		STZ	<KENKY
		STZ	<KENMD
		STZ	<PYMKFG
		STZ	SWADFY
		STZ	<PLYSPD
;
		LDA	<MPDTNO
		AND	#040H
		CMP	<OMPHZN
		BEQ	TRBG310
		STZ	!GDMMPT
		STZ	!GDMMPT+1		
;;;;;;;;		JSL	>KGRSCK
;
TRBG310		EQU	$
		LDY	#LNMD
		LDA	>ITMTBL4	; no suishodama ? [NO:TRBG320]
		BNE	TRBG320		; 0-->NO 1-->HAVE
		LDA	<MPDTNO		; chijoo omote ? [no:TRBG340]
		AND	#040H
		BEQ	TRBG320
		LDY	#RABT
TRBG320		EQU	$
		STY	<LNMODE
;
TRBG400		EQU	$
		RTS
;
;********************************************************************
;*		Y push inoru demo init,move	(INRINT)(PYDMINR)   *
;********************************************************************
INRINT		EQU	$
		LDA	#p3_pray
		STA	<GAMEMD
		LDA	<SLMODE
		STA	!NXSLMD
		LDA	#MD_etcpl
		STA	<SLMODE
;
		LDA	#001H		; teki all stop
		STA	!ENSTFG
		LDA	#016H
		STA	PYDMFM
		STZ	PYDMMD
		LDA	#00000010B
		STA	PYDMBT
		LDA	#00000001B
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
		LDA	#011H
		STA	!SOUND1
		LDA	#0F2H
		STA	!SOUND0		; <sound>
PYDMINR		EQU	$
		RTS
;
;********************************************************************
;*		player usagi henshin shori		(RABHEN)    *
;********************************************************************
RABHEN		EQU	$
		PHB
		PHK
		PLB
;
		LDY	#000H
		JSR	BGCHCK6
		STZ	<PYCRCH
;
		LDA	>OPMODE		; option saru ?
		CMP	#takar
		BEQ	RABH020
		CMP	#bakud
		BNE	RABH040
		LDA	#0FEH
		STA	!BMTMER
		STZ	!BMTMCT
RABH020		EQU	$
		LDA	>OPKYFG
		BEQ	RABH300
		LDA	#00H
		STA	>OPKYFG
		BRA	RABH060
RABH040		EQU	$
		LDA	>OPMODE
		CMP	#hnoji
		BEQ	RABH060
		CMP	#monky
		BNE	RABH080
RABH060		EQU	$
		LDA	#000H
		STA	>OPMODE		; kill saru !!
		BRA	RABH300
;
RABH080		EQU	$
		LDY	#kajy1		; option check set
		LDA	>OPMODE
		CMP	#kajya
		BEQ	RABH100
		LDY	#kajya
		CMP	#kajy1
		BNE	RABH300
RABH100		EQU	$
		TYA
		STA	>OPMODE
		JSL	>OPTCBFST	; character henkan
		LDY	#004H		; max 6 set
		LDA	#TORK1		; kemuri set
		JSL	>TTKINT2
;
RABH300		EQU	$
		LDA	>ITMTBL4	; no pendant ? [yes:RABH400]
		BNE	RABH400		; 0-->NO 1-->HAVE
;
		LDY	#004H		; max 6 set
		LDA	#TORKM		; kemuri set
		JSL	>TTKINT
		JSR	KAKU200
		STZ	KAKUFM1
		BRA	RABH420
;
RABH400		EQU	$
		LDA	<KAKUMD
		BEQ	RABH420
		JSR	KAKU1C0		; kakulemino clear !!
		STZ	KAKUFM1
RABH420		EQU	$
		PLB
		RTL
;
;********************************************************************
;*		player foot shot init.			(FOTSOT)    *
;********************************************************************
FOTSOT		EQU	$		; yumi move shori
		LDA	<KENKY
		AND	#01000000B
		BNE	FOTS100
		LDA	<PWORK6		; door in ? [YES:FOTS100]
		BNE	FOTS100
;
		LDA	<HANIFG1
		AND	#00000010B
		BNE	FOTS100
;
		JSR	BKYCHK		; b key check set
		BCC	FOTS100
;
		JSR	SWSPCL		; ice flag clear
;
		STZ	AITMMD
		LDA	#00000001B
		TSB	<PYMKFG		; (M) <--- (A) ORA (M)
		LDA	#007H
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		LDA	AITMBT1		; yumi bit on !
		AND	#00000000B
		ORA	#00000100B
		STA	AITMBT1
;
		LDA	#BOGN
		STA	<LNMODE
		LDA	#001H		; muteki flag on !
		STA	MRTKFG
		LDY	#003H		; max 1 set
		LDA	#FTMOV		; hibana move sub
		JSL	>FOTINT
FOTS100		EQU	$
		RTS
;
;
;********************************************************************
;*		player foot shot move sub		(BOGNMV)    *
;********************************************************************
BGADYP		EQU	$		; add y-pos data
		HEX	0F8,0F0,000,000
BGADXP		EQU	$		; add x-pos data
		HEX	000,000,004,0F4
BGSPYD		EQU	$		; y-speed data
		HEX	0C0,040,000,000
BGSPXD		EQU	$		; x-speed data
		HEX	000,000,0C0,040
BOGNMV		EQU	$
		STZ	DAMEFG
		STZ	<DIEFG
		STZ	<HANEFG
;
		LDX	#004H
BOGN100		EQU	$
		LDA	BMMODE,X
		CMP	#FTMOV
		BEQ	BOGN200
		DEX
		BPL	BOGN100
		DEC	<KENFM
		LDA	<KENFM
		BPL	FOTS100
;
		STZ	AITMMD
		STZ	MRTKFG		; muteki flag clear
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	AITMBT1
		AND	#11111011B
		STA	AITMBT1
		LDA	#LNMD
		STA	<LNMODE
		LDA	<KENMD
		CMP	#009H
		BCC	BOGN120
		LDA	#009H
		STA	<KENMD
BOGN120		EQU	$
		RTS
;
BOGN200		EQU	$
		DEC	<KENFM
		BPL	BOGN220
		STZ	<KENFM
BOGN220		EQU	$
		LDA	BOGMOV		; BG hit demo ? [YES:BOGN300]
		BNE	BOGN300
;
		LDA	<PLYPS1
		STA	<PLYHN0
		LDA	<PLXPS1
		STA	<PLXHN0
		STZ	<PLYMVC
		STZ	<PLXMVC
		BRL	PYBGCK		; bg check set
;
BOGN300		EQU	$
		STZ	PSSTOP		; player speed stop clear !!
		LDX	HBMUKI
		DEC	BMCONT,X
		BPL	BOGN310
		STZ	BMCONT,X
		BRL	BOGN740
;
BOGN310		EQU	$
		LDA	BMYPSL,X
		STA	<WORK0
		LDA	BMYPSH,X
		STA	<WORK1
		LDA	BMXPSL,X
		STA	<WORK2
		LDA	BMXPSH,X
		STA	<WORK3
		LDY	BMMUKI,X
		STZ	<WORK5
		LDA	!BGADYP,Y
		STA	<WORK4
		BPL	BOGN320
		LDA	#0FFH
		STA	<WORK5
BOGN320		EQU	$
		STZ	<WORK7
		LDA	!BGADXP,Y
		STA	<WORK6
		BPL	BOGN340
		LDA	#0FFH
		STA	<WORK7
BOGN340		EQU	$
		STZ	<PLYSPD
		STZ	<PLXSPD
		LDA	!BGSPYD,Y
		STA	<WORK8
		STZ	<WORK9
		LDA	!BGSPXD,Y
		STA	<WORKA
		STZ	<WORKB
;
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	<WORK4
		SEC
		SBC	<PLYPS1
		BPL	BOGN400
		EOR	#0FFFFH
		INC	A
BOGN400		EQU	$
		CMP	#0002H
		BCC	BOGN500
		LDA	<PLYSPD
		AND	#0FF00H
		ORA	<WORK8
		STA	<PLYSPD
;
BOGN500		EQU	$
		LDA	<WORK2
		CLC
		ADC	<WORK6
		SEC
		SBC	<PLXPS1
		BPL	BOGN600
		EOR	#0FFFFH
		INC	A
BOGN600		EQU	$
		CMP	#002H
		BCC	BOGN700
		LDA	<PLXSPD
		AND	#0FF00H
		ORA	<WORKA
		STA	<PLXSPD
;
BOGN700		EQU	$
		MEM8
		SEP	#00100000B
		LDA	<PLYSPD
		ORA	<PLXSPD
		BEQ	BOGN740
BOGN720		EQU	$
		BRL	BOGN800
;
BOGN740		EQU	$
		LDX	HBMUKI
		STZ	BMMODE,X
		LDA	OPINDX+4
		STA	OPINDX+2
		LDA	#LNMD
		STA	<LNMODE
		STZ	AITMMD
		STZ	<KENFM
		STZ	BOGMOV
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	AITMBT1		; YUMI bit off !
		AND	#11111011B
		STA	AITMBT1
		STZ	MRTKFG
;
		LDA	BUMODE,X
		BEQ	BOGN780
;
		LDA	!CDBGCKF
		EOR	#00000001B
		STA	!CDBGCKF
		DEC	<FLORNO
		LDA	!FLCKFG
		BNE	BOGN750		; normal step ?
;					;
		LDA	<RMXYCT
		STA	!ERXYCT
		CLC
		ADC	#010H
		STA	<RMXYCT
BOGN750		EQU	$
		LDA	!FLCKFG
		CMP	#002H
		BEQ	BOGN760
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
BOGN760		EQU	$
		JSL	>MPBTSET1	; map on/off bit set
;
BOGN780		EQU	$
		JSR	BGCHCK4
;
		LDA	PWATER		; water in ?
		AND	#00001111B
		BEQ	BOGN7A0
		LDA	WATRFG
		BNE	BOGN7A0
		LDA	#001H		; water flag set
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1	; swim flag all clear !
		LDA	#WTMV0		; water shibuki set
		LDY	#000H
		JSL	>WTIMIT
		LDA	#SWMD		; swim mode set
		STA	<LNMODE
		JSR	KAKU200		; kakuremino clear
		STZ	PYDMBT		; katsugu clear
		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
		LDA	<GMMODE
		BEQ	BOGN790
;// 03.08.09 //		JSL	>PWTRCGS0	; coler set
		LDA	#00000001B
		STA	<PLBGCKF	; player BG.1 check
BOGN790		EQU	$
		BRA	BOGN7C0
;
BOGN7A0		EQU	$
		LDA	<HOLEFG
		AND	#00001111B
		BEQ	BOGN7B0
		LDA	#009H
		STA	<PLHLFM
		STZ	<HOLEFG1
		LDA	#001H
		STA	<HOLEFG2
		LDA	#HLDM
		STA	<LNMODE
		BRA	BOGN7C0
BOGN7B0		EQU	$
		LDA	<PLYPS1		; Y-pos
		STA	<PLYHN0
		LDA	<PLXPS1		; X-pos
		STA	<PLXHN0
		LDA	<PLYPS0		; Y-pos (H)
		STA	<PLYHN1
		LDA	<PLXPS0		; X-pos (H)
		STA	<PLXHN1
		JSR	PYBGCK
		BRL	BOGN870
;
BOGN7C0		EQU	$
		LDA	<KENMD
		CMP	#009H
		BCC	BOGN7E0
		LDA	#009H
		STA	<KENMD
BOGN7E0		EQU	$
		BRL	BOGN900
BOGN800		EQU	$
		JSL	>HNSPST		; speed y,x pos set
;
		LDY	#005H
		JSR	BGCHCK6
		LDA	<GMMODE
		BEQ	BOGN802
;
		LDA	GAKEFG
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		ORA	GAKEFG
		ORA	GAKEFG+1
		AND	#00000001B
		BEQ	BOGN802
;
		DEC	BOGNTM
		BPL	BOGN802
		LDA	#003H
		STA	BOGNTM
		LDA	BOGMOV		
		EOR	#00000010B
		STA	BOGMOV
;
BOGN802		EQU	$
		STZ	ASWFLG
;
		LDA	BOGMOV
		AND	#00000010B
		BNE	BOGN870
;
		LDA	KUSAFG
		AND	#00000001B
		BEQ	BOGN810
		LDA	#002H
		STA	ASWFLG
		JSR	BG6SUND
		BCS	BOGN870
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check sub
;;;;;;;;		ORA	#kusas
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#kusas
		JSR	SDLP12
		BRA	BOGN870
BOGN810		EQU	$
		LDA	WTASFG
		ORA	PWATER
		AND	#00000001B
		BEQ	BOGN870
		INC	ASWFLG
		LDA	<MPDTNO		; numa sound ? [NO:BG6K428]
		CMP	#070H
		BNE	BOGN820
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check sub
;;;;;;;;		ORA	#numas
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#numas
		JSR	SDLP12
		BRA	BOGN870
BOGN820		EQU	$
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check sub
;;;;;;;;		ORA	#watrs
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#watrs
		JSR	SDLP12
BOGN870		EQU	$
		JSR	DORSCR		; door set
BOGN900		EQU	$
		RTS
;
;********************************************************************
;*		kakulemino move shori			(KAKUMV)    *
;********************************************************************
KAKUPT		EQU	$		; magic point data
		HEX	004,008,008
KAKUMV		EQU	$		; [14] traiforse move
		LDA	<KAKUMD
		BNE	KAKU100
		DEC	KAKUFM1
		BMI	KAKU080
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		BRL	KAKU400
KAKU080		EQU	$
		STZ	KAKUFM1
;
		LDA	<PWORK6		; door in ? [YES:BMER900]
		BNE	BOGN900
		JSR	BKYCHK		; b key in check 
		BCC	BOGN900
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	>MPNWCT
		BEQ	KAKU320
;
		STZ	AITMMD
		LDA	#001H
		STA	<KAKUMD
;
		LDA	>MPLVFG
		TAY
		LDA	!KAKUPT,Y
		STA	<KAKUFM
;
		LDA	#014H
		STA	KAKUFM1
		LDY	#004H		; max 6 set
		LDA	#TORKM		; kemuri set
		JSL	>TTKINT1
		LDA	#kakon
		JSR	SDLP12
		BRA	KAKU300
;
KAKU100		EQU	$
		LDA	#001H		; muteki on !!
		STA	MRTKFG
;
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KAKUFM
		LDA	<KAKUFM
		BNE	KAKU180
		LDA	>MPLVFG
		TAY
		LDA	!KAKUPT,Y
		STA	<KAKUFM
		LDA	>MPNWCT
		DEC	A
		STA	>MPNWCT
		BEQ	KAKU1C0
KAKU180		EQU	$
		DEC	KAKUFM1
		BPL	KAKU300
		STZ	KAKUFM1
		LDA	<KEYA2
		AND	#01000000B
		BEQ	KAKU300
KAKU1C0		EQU	$
		LDY	#004H		; max 6 set
		LDA	#TORKM		; kemuri set
		JSL	>TTKINT1
		LDA	#kakof
		JSR	SDLP12
KAKU200		EQU	$
		LDA	#020H
		STA	KAKUFM1
		STZ	MRTKFG		; muteki off !!
		STZ	<KAKUMD
		STZ	PIPIFG
KAKU300		EQU	$
		RTS
;
;*************  magic point 0 messji set
KAKU320		EQU	$
		BRL	MGPT320
;
;*************  belt conbere ram clear
KAKU400		EQU	$
		LDA	<BGMVFG		; belt conbear ? [YES:KAKU500]
		CMP	#bmd_blt
		BNE	KAKU500
		LDA	BELTCN		; belt conbere on ?
		AND	#00000011B
		CMP	#00000011B
		BNE	KAKU500
		STZ	<PLYMVC
		STZ	<PLXMVC
		STZ	<PWORK1
		STZ	<PLYBUF
		STZ	<PLXBUF
		STZ	<PWORK5
KAKU500		EQU	$
		LDA	PSSTOP		; player stop ? [NO:PYSP480]
		BEQ	KAKU600
		STZ	<PWORK1
KAKU600		EQU	$
		RTS
;
;*************  kakuremino magic point dec 
KAKU700		EQU	$
		LDA	PYDMBT
		AND	#10000000B
		BEQ	KAKU600
KAKU740		EQU	$
		LDA	<KAKUMD
		BEQ	KAKU600
		LDA	BPSHZN
		CMP	#BKYT130
		BNE	KAKU600
		CMP	BPSHMD
		BNE	KAKU900
KAKU800		EQU	$
		DEC	<KAKUFM
		LDA	<KAKUFM
		BNE	KAKUA00
		LDA	>MPLVFG
		TAY
		LDA	!KAKUPT,Y
		STA	<KAKUFM
		LDA	>MPNWCT
		BEQ	KAKUA00
		DEC	A
		STA	>MPNWCT
		BNE	KAKUA00
;
KAKU900		EQU	$
		JSR	KAKU1C0		; kakuremino off !!
;
KAKUA00		EQU	$
		RTS
;
;********************************************************************
;*		player tama move shoki set sub		(TAMAST)    *
;********************************************************************
TAMAST		EQU	$		; tama rod move shoki set
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	TAST100
		LDA	PSSTOP		; lift on ? [YES:KAKU600]
		BNE	KAKU600
		LDA	<PWORK6
		BNE	KAKU600
		JSR	BKYCHK		; b key check set
		BCC	KAKU600
;
		LDX	#004H
TAST040		EQU	$
		LDA	BMMODE,X
		CMP	#BOLMV
		BEQ	TAST080
		DEX
		BPL	TAST040
;
		LDX	#004H		; magic point sub
		JSR	MGPTSB
		BCC	KAKU600
;
TAST080		EQU	$
		LDA	#001H		; b key on flag set
		STA	DKYHZN
;
		LDY	#001H		; max 2 set
		LDA	#BOLMV		; tama move sub
		JSL	>BOALINT
;
		LDA	!DTFLEM
		STA	<KENFM
		STZ	<PYCRCH		; player stop pouse set !
		STZ	AITMMD
		STZ	AITMBT		; player porse bit clear
		LDA	#00001000B	; DOT bit on !
		TSB	AITMBT1		; (M) <--- (A) ORA (M)
;
TAST100		EQU	$
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM		; dot furi timer
		BPL	TAST200
;
		LDA	AITMMD		; next mode set
		INC	A
		STA	AITMMD
		TAX
		LDA	!DTFLEM,X	; next flem counter set
		STA	<KENFM
		CPX	#003H
		BNE	TAST200
;
		STZ	<PYSPFG
;;;;;;;;		STZ	TMDTFG
		STZ	AITMMD
		STZ	<KENFM
		STZ	DKYHZN
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	AITMBT1		; DOT bit off !
		AND	#11110111B
		STA	AITMBT1
TAST200		EQU	$
		RTS
;
;********************************************************************
;*		soromon (baria) move			(BARMOV)   *
;********************************************************************
BARFLM		EQU	$		; baria flem counter
		BYTE	013H,007H,00DH
BARMOV		EQU	$		; BARIA move
		JSR	BRMVCK		; baria move ? [yes:TAST200]
		BCS	TAST200
;
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	BARM200
		LDA	<PWORK6		; door in ? [YES:BUTS500]
		BNE	TAST200
;
		JSR	BKYCHK		; y key in check 
		BCC	TAST200
		LDX	#008H
		JSR	MGPTSB
		BCC	BARM280
;
		LDY	#000H		; max 1 set
		LDA	#SBAMV		; bariya move sub
		JSL	>SBARINT
		STZ	<KENTIM
		LDA	!BARFLM
		STA	<KENFM
		STZ	PYDMNO
		STZ	AITMMD
		LDA	#00001000B
		STA	AITMBT1
		LDA	#00000001B
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
;
BARM200		EQU	$
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM
		BPL	BARM400
		LDX	AITMMD
		INX
		STX	AITMMD
		LDA	!BARFLM,X
		STA	<KENFM
		CPX	#001H
		BNE	BARM240
		PHX
		LDA	#02AH
		JSR	SDLP13
		PLX
;
BARM240		EQU	$
		CPX	#03H
		BNE	BARM400
BARM280		EQU	$
		STZ	PYDMNO
		STZ	AITMMD
		LDA	<KENKY
		AND	#10000000B
		STA	<KENKY
		STZ	AITMBT1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
BARM400		EQU	$
		RTS
;
;********************************************************************
;*		soromon (baria) move check	(BRMVCK)   *
;********************************************************************
BRMVCK		EQU	$
		LDA	AITMBT1		; (M) <--- (A) ORA (M)
		AND	#00001000B
		BNE	BRMV200
;
		LDX	#004H		; baria move ? [YES:TAST200]
BRMV100		EQU	$
		LDA	BMMODE,X
		CMP	#BRSEN
		BEQ	BRMV300
		DEX
		BPL	BRMV100
;
BRMV200		EQU	$
		CLC
		RTS
;
BRMV300		EQU	$
		SEC
		RTS
;
;********************************************************************
;*		ami move				(AMIMOV)   *
;********************************************************************
AMIMDT		EQU	$
		HEX	00B,006,007,008,001,002,003,004,005,006
		HEX	001,002,003,004,005,006,007,008,001,002
		HEX	009,004,005,006,007,008,001,002,003,004
		HEX	00A,008,001,002,003,004,005,006,007,008
AMIINX		EQU	$
		HEX	000,00A,014,01E
AMIMOV		EQU	$		; BARIA move
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	AMIM200
		LDA	<PWORK6		; door in ? [YES:BARM400]
		BNE	BARM400
		JSR	BKYCHK		; y key in check 
		BCC	BARM400
;;;;;;;;;		LDX	#008H
;;;;;;;;;		JSR	MGPTSB
;;;;;;;;;		BCC	AMIM300
;
		LDA	<PLMKCH
		LSR	A
		TAY
		LDX	AMIINX,Y
		LDA	!AMIMDT,X
		STA	AITMMD
		LDA	#003H
		STA	<KENFM
		STZ	PYDMNO
		LDA	#00010000B
		STA	AITMBT1
		LDA	#00000001B
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;		JSL	>SDLRCP
;;;;;;;;		ORA	#032H
;;;;;;;;		STA	!SOUND2
		LDA	#032H
		JSR	SDLP12
;
AMIM200		EQU	$
		JSR	KAKU400		; conbear ram clear !!
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		DEC	<KENFM
		BPL	AMIM400
		LDX	PYDMNO
		INX
		STX	PYDMNO
		LDA	#003H
		STA	<KENFM
		LDA	<PLMKCH
		LSR	A
		TAY
		LDA	AMIINX,Y
		CLC
		ADC	PYDMNO
		TAY
		LDA	!AMIMDT,Y
		STA	AITMMD
;
		CPX	#0AH
		BNE	AMIM400
;
AMIM300		EQU	$
		STZ	PYDMNO
		STZ	AITMMD
		LDA	<KENKY
		AND	#10000000B
		STA	<KENKY
		STZ	AITMBT1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	#080H
		STA	<KNCRYP
		STA	<KNCRXP
AMIM400		EQU	$
		RTS
;
;********************************************************************
;*		B push key check sub			(BKYCHK)    *
;********************************************************************
BKYCHK		EQU	$		; bomb move shoki set
		BIT	<KENKY		; 0 --> bvc 1 --> bvs
		BVS	BKYC200
		LDA	<HANEFG
		BNE	BKYC200
;
BKYC100		EQU	$
		LDA	<KEYA2
		AND	#01000000B
		BEQ	BKYC200
		TSB	<KENKY		; (M) <--- (A) ORA (M)
;
		SEC
		RTS
;
BKYC200		EQU	$
		CLC
		RTS
;
;********************************************************************
;*		magic point check sub			(MGPTSB)    *
;********************************************************************
DTMGPT		EQU	$
;			 L1  L2  L3
		HEX	010,008,004	; dot magic point
		HEX	020,010,008	; special magic point
		HEX	008,004,002	; kona magic point
		HEX	008,004,002	; okarina magic point
		HEX	008,004,002	; soromon 1 magic point
		HEX	010,008,004	; soromon 2 magic point
		HEX	004,002,002	; kantera magic point
		HEX	008,004,002	; YA magic point
		HEX	010,008,004	; soromon baria magic point
DTMCDT		EQU	$
		HEX	000,003,006,009,00C,00F,012,015,018
MGPTSB		EQU	$		; dot sub
MGPTSB1		EQU	$		; spcial sub
		STX	<WORK2
		LDA	!DTMCDT,X
		CLC
		ADC	>MPLVFG
		TAX
		LDA	!DTMGPT,X
		STA	<WORK0
;
		LDA	>MPNWCT
		BEQ	MGPT300
		SEC
		SBC	<WORK0
		CMP	#080H
		BCS	MGPT300
		STA	>MPNWCT
		SEC
		RTS
;
MGPT300		EQU	$
		LDA	<WORK2		; spcial magic ? [YES:MGPT400]
;;;;;;;;		CMP	#001H
;;;;;;;;		BEQ	MGPT400
		CMP	#003H		; okarina ? [YES:MGPT400]
		BEQ	MGPT400
MGPT320		EQU	$
;;;;;;;;		JSL	>SDLRCP
;;;;;;;;		ORA	#03CH
;;;;;;;;		STA	!SOUND2
		LDA	#03CH
		JSR	SDLP12
		MEM16			; magic point nashi messeji set
		REP	#00100000B
		LDA	#MS_00DE
		STA	!MSGENOL
		MEM8
		SEP	#00100000B
		JSL	>MESWIT
MGPT400		EQU	$
		CLC
		RTS
;
MGPTSB2		EQU	$		; spcial sub
		PHB
		PHK
		PLB
		LDA	!DTMCDT,X
		CLC
		ADC	>MPLVFG
		TAX
		LDA	!DTMGPT,X
		STA	<WORK0
;
		LDA	>MPNWCT
		CLC
		ADC	<WORK0
		STA	>MPNWCT
		PLB
		RTL
;
;
;********************************************************************
;*		Y push demo clear			(PYDMCLR)   *
;********************************************************************
PYDMCLR		EQU	$
		STZ	PYDMMD
		STZ	<KENKYL
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		RTL
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push aisatsu demo init.		(AISINT)   *
;;;;;;;;;********************************************************************
;;;;;;;;AISINT		EQU	$
;;;;;;;;		LDA	!AISFLM
;;;;;;;;		STA	PYDMFM
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		LDA	#00000001B
;;;;;;;;		STA	PYDMBT
;;;;;;;;		LDA	#00000001B
;;;;;;;;		TSB	<PYMKFG		; (M) <--- (A) ORA (M)
;;;;;;;;		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#11110000B
;;;;;;;;		STA	<PWORK1
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push aisatsu demo			(PYDMAIS)   *
;;;;;;;;;********************************************************************
;;;;;;;;AISFLM		EQU	$		; flem counter
;;;;;;;;		BYTE	004H,028H
;;;;;;;;PYDMAIS		EQU	$		; [0] aisatsu
;;;;;;;;		DEC	PYDMFM
;;;;;;;;		BPL	PDAI500
;;;;;;;;		LDX	PYDMMD
;;;;;;;;		INX
;;;;;;;;		STX	PYDMMD
;;;;;;;;		LDA	!AISFLM,X
;;;;;;;;		STA	PYDMFM
;;;;;;;;		CPX	#02H
;;;;;;;;		BNE	PDAI500
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		STZ	<KENKYL
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG
;;;;;;;;PDAI500		EQU	$	
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push neru demo init.			(NERINT)   *
;;;;;;;;;********************************************************************
;;;;;;;;NERINT		EQU	$
;;;;;;;;		LDA	!NERFLM
;;;;;;;;		STA	PYDMFM
;;;;;;;;		LDA	!ZZZFLM
;;;;;;;;		STA	PYDMFM1
;;;;;;;;		STZ	PYDMNO1
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		LDA	#00000100B
;;;;;;;;		STA	PYDMBT
;;;;;;;;		STA	PYDMBT1
;;;;;;;;		LDA	#00000001B
;;;;;;;;		TSB	<PYMKFG
;;;;;;;;		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#11110000B
;;;;;;;;		STA	<PWORK1
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push neru demo			(PYDMNER)   *
;;;;;;;;;********************************************************************
;;;;;;;;NERMDE		EQU	$		; player mode data
;;;;;;;;		BYTE	000H,001H,000H,001H 
;;;;;;;;NERFLM		EQU	$		; player neru flem counter
;;;;;;;;		BYTE	011H,010H,00BH,02CH
;;;;;;;;ZZZFLM		EQU	$		; zzz flem counter
;;;;;;;;		BYTE	02CH,00BH,00BH,016H
;;;;;;;;PYDMNER		EQU	$		; [2] neru
;;;;;;;;		LDA	<KEYA2L
;;;;;;;;		AND	#10000000B
;;;;;;;;		CMP	<KENKYL
;;;;;;;;		BNE	PDNR450
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		STZ	PYDMNO1
;;;;;;;;		STZ	KENKYL
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG
;;;;;;;;		BRA	PDNR500
;;;;;;;;;	
;;;;;;;;PDNR450		EQU	$
;;;;;;;;		DEC	PYDMFM
;;;;;;;;		BPL	PDNR480
;;;;;;;;		LDA	PYDMNO
;;;;;;;;		INC	A
;;;;;;;;		AND	#00000011B
;;;;;;;;		STA	PYDMNO
;;;;;;;;		TAX
;;;;;;;;		LDA	!NERMDE,X
;;;;;;;;		STA	PYDMMD
;;;;;;;;		LDA	!NERFLM,X
;;;;;;;;		STA	PYDMFM
;;;;;;;;;
;;;;;;;;PDNR480		EQU	$
;;;;;;;;		DEC	PYDMFM1
;;;;;;;;		BPL	PDNR500
;;;;;;;;		LDA	PYDMNO1
;;;;;;;;		INC	A
;;;;;;;;		AND	#00000011B
;;;;;;;;		STA	PYDMNO1
;;;;;;;;		TAX
;;;;;;;;		LDA	!ZZZFLM,X
;;;;;;;;		STA	PYDMFM1
;;;;;;;;PDNR500		EQU	$	
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push horu demo init.			(HORINT)   *
;;;;;;;;;********************************************************************
;;;;;;;;HORINT		EQU	$
;;;;;;;;		LDA	!HORFLM
;;;;;;;;		STA	PYDMFM
;;;;;;;;		STZ	PYDMNO
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		LDA	#00001000B
;;;;;;;;		STA	PYDMBT
;;;;;;;;		STZ	PYDMBT1
;;;;;;;;		LDA	#00000001B
;;;;;;;;		TSB	<PYMKFG
;;;;;;;;		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#11110000B
;;;;;;;;		STA	<PWORK1
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push horu demo			(PYDMHOR)   *
;;;;;;;;;********************************************************************
;;;;;;;;HORFLM		EQU	$		; horu flem counter
;;;;;;;;		BYTE	007H,012H,018H,007H,012H,018H
;;;;;;;;HORUMD		EQU	$		; horu mode
;;;;;;;;		BYTE	000H,001H,002H,000H,001H,002H
;;;;;;;;PYDMHOR		EQU	$		; [3] horu
;;;;;;;;		DEC	PYDMFM
;;;;;;;;		BPL	PDHO500
;;;;;;;;		LDX	PYDMNO
;;;;;;;;		INX
;;;;;;;;		STX	PYDMNO
;;;;;;;;		LDA	!HORFLM,X
;;;;;;;;		STA	PYDMFM
;;;;;;;;		LDA	!HORUMD,X
;;;;;;;;		STA	PYDMMD
;;;;;;;;;
;;;;;;;;		CMP	#001H
;;;;;;;;		BNE	PDHO440
;;;;;;;;;
;;;;;;;;		LDY	#002H
;;;;;;;;		PHX
;;;;;;;;		JSR	BGCHCK6
;;;;;;;;		PLX
;;;;;;;;		LDA	KUSAFG
;;;;;;;;		ORA	SHIBFG
;;;;;;;;		AND	#00000001B
;;;;;;;;		BNE	PDHO420
;;;;;;;;;
;;;;;;;;		PHX
;;;;;;;;		LDY	#000H		; max 1 set
;;;;;;;;		LDA	#HIBA2		; hibana move sub
;;;;;;;;		JSL	>HBINT0
;;;;;;;;		PLX
;;;;;;;;		BRA	PDHO440
;;;;;;;;;
;;;;;;;;PDHO420		EQU	$
;;;;;;;;		PHX
;;;;;;;;		LDY	#000H		; max 1 set
;;;;;;;;		LDA	#SCPMV		; hibana suna move sub
;;;;;;;;		JSL	>SCPINT
;;;;;;;;		PLX
;;;;;;;;;
;;;;;;;;PDHO440		EQU	$
;;;;;;;;		CPX	#03H
;;;;;;;;		BNE	PDHO500
;;;;;;;;		STZ	PYDMNO
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		STZ	<KENKYL
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG
;;;;;;;;PDHO500		EQU	$
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push utau demo init.			(UTAINT)   *
;;;;;;;;;********************************************************************
;;;;;;;;UTAINT		EQU	$
;;;;;;;;		LDA	!UTAFLM
;;;;;;;;		STA	PYDMFM
;;;;;;;;		STZ	PYDMNO
;;;;;;;;		STZ	PYDMNO1
;;;;;;;;		STZ	PYDMTM
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		LDA	#00010000B
;;;;;;;;		STA	PYDMBT
;;;;;;;;		LDA	#00000001B
;;;;;;;;		TSB	<PYMKFG
;;;;;;;;		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#11110000B
;;;;;;;;		STA	<PWORK1
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push utau demo			(PYDMUTA)   *
;;;;;;;;;********************************************************************
;;;;;;;;UTAFLM		EQU	$		; horu flem counter
;;;;;;;;		BYTE	010H,010H,010H,010H
;;;;;;;;UTAUMD		EQU	$		; horu mode
;;;;;;;;		BYTE	000H,001H,002H,003H
;;;;;;;;PYDMUTA		EQU	$		; [4] utau
;;;;;;;;		DEC	PYDMFM
;;;;;;;;		BPL	PDUT500
;;;;;;;;		LDA	PYDMNO
;;;;;;;;		INC	A
;;;;;;;;		AND	#00000011B
;;;;;;;;		STA	PYDMNO
;;;;;;;;		TAX
;;;;;;;;		LDA	!UTAFLM,X
;;;;;;;;		STA	PYDMFM
;;;;;;;;		LDA	!UTAUMD,X
;;;;;;;;		STA	PYDMMD
;;;;;;;;		CMP	#01H		; onpu go ? [NO:PDUT440]
;;;;;;;;		BNE	PDUT440
;;;;;;;;		LDY	#004H		; max 4 set
;;;;;;;;		LDA	#OPMOV		
;;;;;;;;		JSL	>OPIMIT		; onpu init. set
;;;;;;;;PDUT440		EQU	$
;;;;;;;;		INC	PYDMTM		; loop timer
;;;;;;;;		LDA	PYDMTM
;;;;;;;;		CMP	#018H
;;;;;;;;		BNE	PDUT500
;;;;;;;;		STZ	PYDMNO
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		STZ	<KENKYL
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG
;;;;;;;;;
;;;;;;;;PDUT500		EQU	$	
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push odoru demo init.			(DANINT)   *
;;;;;;;;;********************************************************************
;;;;;;;;DANINT		EQU	$
;;;;;;;;		LDA	!DANFLM
;;;;;;;;		STA	PYDMFM
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		LDA	#00100000B
;;;;;;;;		STA	PYDMBT
;;;;;;;;		LDA	#00000001B
;;;;;;;;		TSB	<PYMKFG
;;;;;;;;		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#11110000B
;;;;;;;;		STA	<PWORK1
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push odoru demo			(PYDMDAN)   *
;;;;;;;;;********************************************************************
;;;;;;;;DANFLM		EQU	$		; odoru flem counter
;;;;;;;;		BYTE	007H,007H,007H,007H
;;;;;;;;PYDMDAN		EQU	$		; [5] odoru
;;;;;;;;		LDA	KEYA2L
;;;;;;;;		AND	#10000000B
;;;;;;;;		CMP	<KENKYL
;;;;;;;;		BNE	PDDN450
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		STZ	KENKYL
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG
;;;;;;;;		BRA	PDDN500
;;;;;;;;;
;;;;;;;;PDDN450		EQU	$
;;;;;;;;		DEC	PYDMFM
;;;;;;;;		BPL	PDDN500
;;;;;;;;		LDA	PYDMMD
;;;;;;;;		INC	A
;;;;;;;;		AND	#00000011B
;;;;;;;;		STA	PYDMMD
;;;;;;;;		TAX
;;;;;;;;		LDA	!DANFLM,X
;;;;;;;;		STA	PYDMFM
;;;;;;;;PDDN500		EQU	$
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push taberu demo			(PYDMEAT)   *
;;;;;;;;;********************************************************************
;;;;;;;;METFLM		EQU	$		; taberu flem counter
;;;;;;;;		BYTE	00CH,020H,00CH,00CH,00CH,00CH,00CH,00CH
;;;;;;;;		BYTE	00CH,00CH,00CH
;;;;;;;;METMOD		EQU	$		; taberu mode
;;;;;;;;		BYTE	000H,001H,002H,003H,002H,003H,002H,003H
;;;;;;;;		BYTE	002H,003H,002H
;;;;;;;;PYDMEAT		EQU	$		; [6] taberu
;;;;;;;;		LDA	<KENKYL
;;;;;;;;		AND	#10000000B
;;;;;;;;		BEQ	PDMT500
;;;;;;;;;
;;;;;;;;		DEC	PYDMFM
;;;;;;;;		BPL	PDMT500
;;;;;;;;		LDX	PYDMNO
;;;;;;;;		INX
;;;;;;;;		CPX	#00BH
;;;;;;;;		BNE	PDMT440
;;;;;;;;		LDX	#01H
;;;;;;;;		DEC	PYDMFM1
;;;;;;;;		BPL	PDMT440
;;;;;;;;		STZ	PYDMNO
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		STZ	<KENKYL
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG
;;;;;;;;		BRA	PDMT500
;;;;;;;;PDMT440		EQU	$
;;;;;;;;		STX	PYDMNO
;;;;;;;;		LDA	!METMOD,X
;;;;;;;;		STA	PYDMMD
;;;;;;;;		LDA	!METFLM,X
;;;;;;;;		STA	PYDMFM
;;;;;;;;;
;;;;;;;;PDMT500		EQU	$	
;;;;;;;;EATINT		EQU	$
;;;;;;;;		RTS
;;;;;;;;;
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		Y push taberu demo shoki set		(EATSET)    *
;;;;;;;;;********************************************************************
EATSET		EQU	$		; eat shoki set
;;;;;;;;		PHB
;;;;;;;;		PHK
;;;;;;;;		PLB
;;;;;;;;		LDA	#10000000B
;;;;;;;;		STA	<KENKYL
;;;;;;;;		LDA	!METFLM
;;;;;;;;		STA	PYDMFM
;;;;;;;;		STZ	PYDMNO
;;;;;;;;		STZ	PYDMTM
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		LDA	#002H
;;;;;;;;		STA	PYDMFM1
;;;;;;;;		LDA	#01000000B
;;;;;;;;		STA	PYDMBT
;;;;;;;;		LDA	#00000001B
;;;;;;;;		TSB	<PYMKFG
;;;;;;;;		STZ	<PYCRCH		; player stop pouse set !
;;;;;;;;		LDA	<PWORK1
;;;;;;;;		AND	#11110000B
;;;;;;;;		STA	<PWORK1
;;;;;;;;		LDA	#TABE0
;;;;;;;;		STA	PLAYDO
;;;;;;;;		PLB
;;;;;;;;		RTL
;
;********************************************************************
;*		Y push tsukamu demo init.		(HADINT)   *
;********************************************************************
HADINT		EQU	$
		LDA	CACHOK		; enemy cross ?
		ORA	BMCHOK
		BNE	PDHN300		; [YES:PDHN300]
;
		JSR	PLKW0C0		; ken flag clear
		STZ	<KENKYL		; key in clear
;
		LDX	#00FH
PDHN120		EQU	$
		LDA	ENMODE,X
		BEQ	PDHN140
		DEX
		BPL	PDHN120
		BRA	PDHN170
;
PDHN140		EQU	$
		LDA	MTKSNO
		CMP	#005H
		BEQ	PDHN142
		CMP	#006H
		BNE	PDHN144
PDHN142		EQU	$
		LDA	#001H
		STA	AITMMD
		BRA	PDHN340
;
PDHN144		EQU	$
		LDA	<GMMODE		; chika check
		BEQ	PDHN150
		JSL	>MCBLKCK	; danjon block mochiage
		BRA	PDHN154
PDHN150		EQU	$
		JSL	>GPULLCK	; chijoo block mochiage
;
PDHN154		EQU	$
		LDX	#MOTUED-MOTUDT-1
PDHN160		EQU	$
		CMP	!MOTUDT,X
		BEQ	PDHN180
		DEX
		BPL	PDHN160
PDHN170		EQU	$
		BRL	PDHN700
;
PDHN180		EQU	$
		LDA	#001H
		STA	CACHOK
		TXA
		JSL	>KATOBJ		; enmy set sub
		ASL	<KEYA2L		; y-key reset
		LSR	<KEYA2L
;
PDHN300		EQU	$
		STZ	AITMMD
PDHN340		EQU	$
		STZ	<KENKY		; a key clear
		LDA	!HADFLM		; catch shoki set
		STA	PYDMFM		; catch flem set
		LDA	#00000001B
		STA	PYDMBT1		; tsukamu demo set
		LDA	#10000000B
		STA	PYDMBT
		STZ	PYDMMD		; mode clear
		LDA	#00CH		; speed set
		STA	<PYSPFG
		STZ	<PYCRCH		; player stop pouse set !
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		LDA	#00000001B
		TSB	<PYMKFG
PDHN400		EQU	$
		RTS
;
;********************************************************************
;*		Y push tsukamu demo			(PYDMHAD)   *
;********************************************************************
HADFLM		EQU	$		; motsu flem counter
		HEX	006,007,007	; (1)
		HEX	005		; (2)
MTYPSD		EQU	$		; motsu y-pos data
		WORD	0000AH,00017H,00012H,00012H
MTXPSD		EQU	$		; motsu x-pos data
		WORD	00008H,00008H,0FFFEH,00011H
MOTUDT		EQU	$
		HEX	054,052,050,0FF,051,053,055,056,057
MOTUED		EQU	$
BIGFLM		EQU	$
		HEX	008,018,008,018,008,020,006,008,00D,00D
BIGCNT		EQU	$
		HEX	000,001,000,001,000,001,000,001,002,003
;
PYDMHAD		EQU	$
		LDA	PYDMBT		; GO ? [NO:PDHN700]
		BEQ	PDHN400
;
		LDA	PYDMBT1		; catch ? [YES:PDHN500]
		AND	#00000010B
		BEQ	PDHN500
;
		LDA	PYDMFM
		CMP	#005H
		BCC	PDHN500
;
		LDA	!HADFLM+3
		STA	PYDMFM
;
PDHN500		EQU	$
		LDA	PYDMBT1		; dousa check !!
		BEQ	PDHN540
		JSR	KAKU400		; conbear ram clear !!
;
PDHN540		EQU	$
		LDA	PYDMBT1
		AND	#00000001B
		BEQ	PDHN560
		STZ	<PYCRCH
		STZ	<PYFLCH
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
PDHN560		EQU	$
		DEC	PYDMFM
		LDA	PYDMFM
		BNE	PDHN400
;
		LDA	PYDMBT1
		AND	#00000010B
		BEQ	PDHN600
;
		STZ	PYDMBT
		STZ	<HANIFG1
		STZ	<PYSPFG
		LDA	<LNMODE
		CMP	#BGIS
		BNE	PDHN680
		LDA	#LNMD
		STA	<LNMODE
		BRL	PDHN680
;
PDHN600		EQU	$
		LDA	AITMMD
		BEQ	PDHN640
;
		INC	A
		CMP	#009H
		BEQ	PDHN680
		STA	AITMMD
		TAX
		LDA	!BIGFLM,X
		STA	PYDMFM
		LDA	!BIGCNT,X
		STA	PYDMMD
;
		CPX	#006H
		BNE	PDHN700
;
		STZ	!OSETFG
		LDA	<GMMODE		; chika check
		BEQ	PDHN620
		JSL	>MCBLKCK	; danjon block mochiage
		BRA	PDHN630
PDHN620		EQU	$
		JSL	>GPULLCK	; chijoo block mochiage
PDHN630		EQU	$
		AND	#00FH
		INC	A
		PHA
		LDA	#BGIS
		STA	<LNMODE
		LDA	#001H
		STA	CACHOK
		PLA
		JSL	>KATOBJ		; enmy set sub
		ASL	<KEYA2L		; y-key reset
		LSR	<KEYA2L
		BRA	PDHN700
;
PDHN640		EQU	$
		LDX	PYDMMD
		INX
		LDA	!HADFLM,X
		STA	PYDMFM
		STX	PYDMMD
		CPX	#003H
		BNE	PDHN700
;
PDHN680		EQU	$
		STZ	PYDMBT1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
;
PDHN700		EQU	$
		RTS
;
;********************************************************************
;*		player taiatari move,init	(DASINT)(PYDMDAS)   *
;********************************************************************
DASINT		EQU	$
		LDA	PSSTOP		; lift ?
		BNE	PDHN700
;
		LDA	CACHOK		; katsugu ? [yes:PDHN700]
		ORA	BMCHOK		; katsugu ? [yes:PDHN700]
		BNE	PDHN700
;
		BIT	PYDMBT		; 0 --> bpl 1 --> bmi
		BMI	PDHN700
;
		LDA	<GMMODE		; danjon ?
		BNE	DASI100
;;;;;;;;		JSL	>PPOSKP		; y,x pos hozon set
DASI100		EQU	$
		STZ	<KENKYL
;;;;;;;;;		LDA	#03CH
;;;;;;;;		LDA	#02CH		; wait timer set
;;;;;;;;		LDA	#014H		; wait timer set
		LDA	#01DH
		STA	DASHFM
		LDA	#040H
		STA	DASFLM
		LDA	#DASH
		STA	<LNMODE
		LDA	#001H
		STA	DASHFG
		LDA	<KENKY
		AND	#10000000B
		STA	<KENKY
;;;;;;;;		STZ	<KENKY
;;;;;;;;		STZ	<KENMD
		STZ	PYDMBT
		STZ	AITMBT
		STZ	<HANIFG+1
		STZ	<PWORK5
;
		LDA	>OPMODE+0
		TAX
		CMP	!OPCKD0,X
		BNE	PYDMDAS
;
		STZ	<PYSPFG
		LDX	OPINDX+0	; jiisan set
		LDA	OPYPSL,X
		STA	OPJIYP
		LDA	OPYPSH,X
		STA	OPJIYP+1
		LDA	OPXPSL,X
		STA	OPJIXP
		LDA	OPXPSH,X
		STA	OPJIXP+1
		LDA	<PLBGCKF
		STA	OPBGCKF
		LDA	#OPTIM
		STA	OPINDX+3
;
PYDMDAS		EQU	$
		RTS
;
;********************************************************************
;*		Y push hiku demo init.			(HIKINT)   *
;********************************************************************
HIKINT		EQU	$
;;;;;;;;		LDA	<HANIFG1
;;;;;;;;		AND	#00000010B
;;;;;;;;		BEQ	PHIK100
;
		LDA	<KENKY
		AND	#10000000B
		BEQ	HIKI100
		LDA	<KENMD
		CMP	#009H
		BCS	PYDMDAS
HIKI100		EQU	$
		LDA	#00000001B
		STA 	DODMBT
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
		STZ	PYDMMD
		LDA	!HIKFLM
		STA	PYDMFM
		STZ	PYDMNO
		RTS
;
;********************************************************************
;*		Y push hiku demo			(PYDMHIK)   *
;********************************************************************
HIKMKD		EQU	$
		HEX	004,008,001,002
HIKFLM		EQU	$
		HEX	000,005,005,00C,005,005,00C
HIKMOD		EQU	$
		HEX	000,001,002,003,001,002,003
PYDMHIK		EQU	$		; [9] hiku
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
;
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	<KEYA1
		AND	#00001111B
		BEQ	PHIK080
		AND	!HIKMKD,X
		BNE	PHIK100
PHIK080		EQU	$
		LDX	#000H
		BRA	PHIK200
;
PHIK100		EQU	$
		DEC	PYDMFM
		BPL	PHIK500
		LDX	PYDMNO
		INX
		CPX	#007H
		BNE	PHIK200
		LDX	#001H
PHIK200		EQU	$
		STX	PYDMNO
		LDA	!HIKMOD,X
		STA	PYDMMD
		LDA	!HIKFLM,X
		STA	PYDMFM
;
PHIK500		EQU	$
		LDA	<KEYA1L
		AND	#10000000B
		BNE	PHIK800
;
		STZ	PYDMNO
		STZ	PYDMMD
		STZ	DODMBT
		STZ	<KENKYL
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
PHIK800		EQU	$
		RTS
;
;********************************************************************
;*		Y push douzou hiku demo init.	      	(DZUINT)   *
;********************************************************************
DZUINT		EQU	$
		LDA	#00000010B
		STA 	DODMBT
		LDA	#00000001B
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
		STZ	PYDMMD
		LDA	!HIKFLM
		STA	PYDMFM
		STZ	PYDMNO
		RTS
;
;********************************************************************
;*		Y push douzou hiku demo			(PYDMDHK)   *
;********************************************************************
PYDMDHK		EQU	$		; [9] hiku
		LDA	#014H
		STA	<PYSPFG
;
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	<KEYA1
		AND	#00001111B
		BEQ	PDHK080
		AND	!HIKMKD,X
		BNE	PDHK100
PDHK080		EQU	$
		STZ	<PWORK1
		STZ	<PLYMVC
		STZ	<PLXMVC
		STZ	<PYCRCH
		LDX	#000H
		BRA	PDHK200
;
PDHK100		EQU	$
		STA	<PWORK1
;
		DEC	PYDMFM
		BPL	PDHK500
		LDX	PYDMNO
		INX
		CPX	#007H
		BNE	PDHK200
		LDX	#001H
PDHK200		EQU	$
		STX	PYDMNO
		LDA	!HIKMOD,X
		STA	PYDMMD
		LDA	!HIKFLM,X
		STA	PYDMFM
;
PDHK500		EQU	$
		LDA	<KEYA1L
		AND	#10000000B
		BNE	PDHK800
;
		STZ	<PYSPFG
		STZ	DZHKOK
		STZ	PYDMNO
		STZ	PYDMMD
		STZ	DODMBT
		STZ	<KENKYL
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
PDHK800		EQU	$
		RTS
;
;********************************************************************
;*		Y push aitem hiku demo init.	      	(AHKINT)   *
;********************************************************************
AHKINT		EQU	$
		LDA	<PLMKCH
		BNE	PYDMAHK
;;;;;;;;		LDA	<KEYA1		; down key ?
;;;;;;;;		AND	#00000100B
;;;;;;;;		BEQ	PYDMAHK
;
		JSL	>PLYCLR1
		LDA	#00000010B
		STA 	DODMBT
		TSB	<PYMKFG
		STZ	<PYCRCH		; player stop pouse set !
		STZ	PYDMMD
		LDA	!HIKFLM
		STA	PYDMFM
		STZ	PYDMNO
		LDA	#ITMK
		STA	<LNMODE
		STZ	<PLYSPD
		STZ	<PLXSPD
		STZ	<KENKY
PYDMAHK		EQU	$		; [9] hiku
		RTS
;
;********************************************************************
;*		player item hiku demo move		(ITMHKM)    *
;********************************************************************
ITMKMD		EQU	$
		HEX	000,001,002,003,004,000,001,002,003
ITMHKM		EQU	$
		JSR	PYRETUN		; player return hozon sub
		LDA	<DIEFG
		BEQ	ITMH100
		BRL	LNMV01C
;
ITMH100		EQU	$
		LDA	DODMBT
		BEQ	ITMH2C0
;
		LDA	<KENKY
		BNE	ITMH180
;
		BIT	<KEYA1L		; 0 --> bpl 1 --> bmi
		BPL	ITMH140
		LDA	<KEYA1
		AND	#00000100B
		BEQ	ITMH200
		STA	<KENKY
		LDA	#022H
		JSR	SDLP12
		BRA	ITMH180
;
ITMH140		EQU	$		; clear !!
		STZ	DODMBT
		STZ	PYDMNO
		LDA	#002H
		STA	PYDMFM
		STZ	PYDMMD
		STZ	<PYMKFG
		LDA	#LNMD
		STA	<LNMODE
		BRA	ITMH2C8
;
ITMH180		EQU	$
		DEC	PYDMFM
		BPL	ITMH200
		INC	PYDMNO
		LDX	PYDMNO
		LDA	!HIKMOD,X
		STA	PYDMMD
		LDA	!HIKFLM,X
		STA	PYDMFM
		CPX	#007H
		BNE	ITMH200
;
		STZ	DODMBT
		STZ	PYDMNO
		LDA	#002H
		STA	PYDMFM
		STZ	PYDMMD
		LDA	#00000001B
		STA 	PYDMBT
		STZ 	PYDMBT1
		BRA	ITMH2C0		
;
ITMH200		EQU	$
		BRA	ITMH500
;
ITMH2C0		EQU	$
		LDA	<HANIFG1	; BG atatri ?
		AND	#00001001B
		BNE	ITMH2E0
;
		LDA	PYDMNO
		CMP	#009H
		BNE	ITMH2D0
;
		LDA	<KEYA2
		AND	#00001111B
		BEQ	ITMH540
;
ITMH2C8		EQU	$
		LDA	#LNMD
		STA	<LNMODE
		BRL	LNMOVE

ITMH2D0		EQU	$
		LDY	#000H
		LDA	#KMRMV
		JSL	>DAKINT
;
		DEC	PYDMFM
		BPL	ITMH300
		INC	PYDMNO
		LDX	PYDMNO
		LDA	#002H
		STA	PYDMFM
		LDA	!ITMKMD,X		
		STA	PYDMMD
		LDA	#030H
		STA	<PLYSPD
		CPX	#009H
		BNE	ITMH300
;
ITMH2E0		EQU	$
		STZ	<PLMKCH
		STZ	PYDMBT
		STZ	<PYMKFG
		LDA	#LNMD
		STA	<LNMODE
		BRA	ITMH600
;
ITMH300		EQU	$
		JSR	PYNAKY		; player naname key set
		LDA	<PWORK1
		AND	#00000011B
		BNE	ITMH400
		STZ	<PLXSPD
ITMH400		EQU	$
		LDA	<PWORK1
		AND	#00001100B
		BNE	ITMH500
		STZ	<PLYSPD
;
ITMH500		EQU	$
		JSL	>HNSPST		; henakaeri speed set sub
ITMH540		EQU	$
		JSR	PYBGCK
		JSR	DORSCR
ITMH600		EQU	$
		RTS
;
;********************************************************************
;*		Y push yomu demo init.		(YOMINT)(PYDMYOM)   *
;********************************************************************
YOMINT		EQU	$
		MEM16
		IDX16
		REP	#00110000B
;
		LDA	<GMMODE		; chijoo ? [YES:YOMI080]
		AND	#00FFH
		BEQ	YOMI080
		LDA	<RMXYCT		; danjon shori
		ASL	A
		TAY
		LDA	!YOMMES1,Y
		BRA	YOMI200
;
YOMI080		EQU	$
		LDA	>MODTBL0	; rain ? [NO:YOMI100]
		AND	#00FFH
		CMP	#0002H
		BCS	YOMI100
		LDA	#MS_0080
		BRA	YOMI200
YOMI100		EQU	$
		LDA	<MPDTNO
		ASL	A
		TAY
		LDA	!YOMMES,Y
YOMI200		EQU	$
		STA	!MSGENOL
		MEM8
		IDX8
		SEP	#00110000B
		JSL	>MESWIT		; messegi init. sub
;
		STZ	<KENKYL		; key off !!
;
PYDMYOM		EQU	$
		RTS
;
;********************************************************************
;*		Y push takara open demo init.	       	(TAKINT)   *
;********************************************************************
OPNDAT		EQU	$		; takara aitem chenge data
;			  0   1   2   3   4   5   6   7
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FF,0FF
;			  8   9   A   B   C   D   E   F
		HEX	0FF,0FF,0FF,0FF,044,0FF,0FF,0FF
;			 10  11  12  13  14  15  16  17
		HEX	0FF,0FF,035,0FF,0FF,0FF,0FF,0FF
;			 18  19  1A  1B  1C  1D  1E  1F
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FF,0FF
;			 20  21  22  23  24  25  26  27
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FF,0FF
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	0FF,0FF,046,0FF,0FF,0FF,0FF,0FF
;			 30  31  32  33  34  35  36  37
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FF,0FF
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FF,0FF
;			 40  41  42  43  44  45  46  47
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FF,0FF
;			 48  49  4A  4B
		HEX	0FF,0FF,0FF,0FF
TAKINT		EQU	$
		LDA	<PLMKCH
		BNE	TAKIF00
;;;;;;;;		LDA	>ITMTBL9	; have key ? [NO:TAKIF00]
;;;;;;;;		BEQ	TAKIF00
;
		LDA	ITMVFG
		BNE	TAKIF00
;
		LDA	<DIEFG
		BNE	TAKIF00
		STZ	<KENKYL		; key off !!
		LDA	<BMWORK+4
		JSL	>TKBXPL		; open takarabako !!
		BCC	TAKI100
		LDA	#001H
		STA	ITMVFG
		LDY	<WORKC		; karabako ? [YES:TAKIF00]
		BMI	TAKI100
;
		LDA	!OPNDAT,Y	; aitem shurui on ? [NO:TAKI040]
		STA	<WORK3
		CMP	#0FFH
		BEQ	TAKI040
		TYA
		ASL	A
		TAX
		LDA	>TKSVRM,X	; ram (L) set
		STA	<WORK0
		LDA	>TKSVRM+1,X	; ram (H) set
		STA	<WORK1
		LDA	#07EH		; ram (B) set
		STA	<WORK2
		LDA	[WORK0]		; aitem in ? [YES:TAKI040]
		BEQ	TAKI040
		LDY	<WORK3
;
TAKI040		EQU	$
		JSL	>ATMSIT		; mochiage init. set
		BRA	TAKIF00
TAKI100		EQU	$
		STZ	ITMVFG
;
PYDMOPN		EQU	$
TAKIF00		EQU	$
		RTS
;
;********************************************************************
;*		Y push key check sub			(YKYCHK)    *
;********************************************************************
YKYCHK		EQU	$		; bomb move shoki set
		LDA	<KENKYL
		AND	#10000000B
		BNE	YKYC200
		LDA	<HANEFG
		BNE	YKYC200
;
		LDA	<KEYA2L
		AND	#10000000B
		BEQ	YKYC200
		TSB	<KENKYL
;
		SEC
		RTS
;
YKYC200		EQU	$
		CLC
		RTS
;
;********************************************************************
;*		Y push 2 times key check sub		(YKYCHK)    *
;********************************************************************
YKYCH1		EQU	$		; bomb move shoki set
		LDA	<KENKYL
		AND	#10000000B
		BEQ	Y2YC200
;
;;;;;;;;		LDA	<KEYA2
;;;;;;;;		LSR	A
;;;;;;;;		ORA	<KEYA2L
;;;;;;;;		AND	#11000000B
		LDA	<KEYA2L
		AND	#10000000B
		BEQ	Y2YC200
;;;;;;;;		LDA	YPSHMD
;;;;;;;;		CMP	#007H		; tsukamu shori ? [YES:Y2YC200]
;;;;;;;;		BEQ	Y2YC200
		LDA	PYDMBT1
		AND	#00000001B
		BNE	Y2YC200
;
		STZ	PYDMNO		; flag all clear
		STZ	PYDMNO1
		STZ	PYDMMD
		STZ	<KENKYL
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		STZ	PYDMBT1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	YPSHMD		; inoru ? [NO:Y2YC100]
		CMP	#001H
		BNE	Y2YC100
		STZ	<WDMAIN		; window clear
		STZ	<WDSUB
Y2YC100		EQU	$
		SEC
		RTS
;
Y2YC200		EQU	$
		CLC
		RTS
;
;********************************************************************
;*		R,A push key check sub			(RAYCHK)    *
;********************************************************************
RAYCHK		EQU	$		; r,a key check sub
		LDA	<KEYA1L
		AND	#00010000B
		BNE	RAYC040
		STZ	<KENKYL
RAYC040		EQU	$
		BIT	<KEYA1		; 0 --> bpl 1 --> bmi
		BMI	RAYC080
		LDA	<KENKY
		AND	#11011111B
		STA	<KENKY
;
RAYC080		EQU	$
		LDA	<KENKYL
		AND	#00010000B
		STA	<WORK0
		LDA	<KENKY
		AND	#10100000B
		ORA	<WORK0
		AND	#10110000B
		CMP	#00110000B
		BEQ	RAYC200
		CMP	#10010000B
		BEQ	RAYC200
;
RAYC100		EQU	$
		LDA	<KEYA1L
		AND	#00010000B
		BEQ	RAYC200
		STA	<WORK0
		LDA	<KEYA1
		AND	#10000000B
		BEQ	RAYC200
		LSR	A
		LSR	A
		STA	<KENKY
;
		LDA	<WORK0
		TSB	<KENKYL
;
		SEC
		RTS
;
RAYC200		EQU	$
		CLC
		RTS
;
;
;********************************************************************
;*		player naname BG check main		(PYNACK)    *
;********************************************************************
KYOFDT		EQU	$		; key off data 
		BYTE	007H,00BH,00DH,00EH
PYNACK		EQU	$
		JSR	TIMCHK		; auto scrool check
		BCC	PYNC100
		JSR	PYNA000
		JSR	TIMRETN
PYNC100		EQU	$
		LDA	<PWORK1
		AND	#00001111B
		STA	<PWORK1
;
PYNA000		EQU	$
		LDA	#0FH
		STA	<PLMVKY		; tate key flag
		STA	<PLMVKY1	; yoko key flag
		STZ	<PWORK4		; neneme move flag
;
PYNA040		EQU	$
		LDA	<PWORK1		; player move counter = 0 ?
		AND	#00001100B
		BNE	PYNA050
		BRL	PYNA500
PYNA050		EQU	$
		INC	<PWORK4
		LDY	#000H		; up,down ?
		AND	#00001000B
		BNE	PYNA100
		LDY	#002H
PYNA100		EQU	$
		TYA
		LSR	A
		STA	<PWORK0
;
		JSR	BGCHCK2		; BG check sub
;
		LDA	<WORKE
		AND	#00110000B
		BEQ	PYNA120
		LDA	<DRMKFG			; door muki flag set
		AND	#00000010B
		BNE	PYNA120
		LDA	<WORKE
		AND	#00110000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		AND	<PWORK1
		BNE	PYNA120
		LDY	#02H
		LDA	<PWORK1
		AND	#00000011B
		BEQ	PYNA120
		AND	#00000010B
		BNE	PYNA140
		LDY	#03H
		BRA	PYNA140
PYNA120		EQU	$
		LDA	BGALCKF		; AUTO SCROOL ? [NO:PYNA130]
		BEQ	PYNA130
		LDA	<WORKE
		AND	#00000011B
		BNE	PYNA134
		BRA	PYNA200
PYNA130		EQU	$
		LDA	<DIEFG		; hanekaeri ?
		BEQ	PYNA134
		LDA	<WORKC		; NANAME check
		AND	#00000011B
		BEQ	PYNA134
		BRA	PYNA138
PYNA134		EQU	$
		LDA	<WORKE		; atari check 
		AND	#00000011B
		BEQ	PYNA200
		STZ	<PWORK5
		LDA	ICEFLAG
		BEQ	PYNA138
		LDA	HAKAFG+1
		AND	#00000011B
		BNE	PYNA138
		LDA	<PWORK1
		AND	#00000011B
		BEQ	PYNA138
		STZ	SWKASY
		STZ	SWKASY+1
		STZ	SWSPFY
		STZ	SWSPFY+1
		STZ	SWADFY
		STZ	SWADFY+1
		STZ	SWMXSY
		STZ	SWMXSY+1
PYNA138		EQU	$
		LDA	#01H
		STA	PKYNOT
		LDY	<PWORK0
PYNA140		EQU	$
		LDA	!KYOFDT,Y
		STA	<PLMVKY
;
PYNA200		EQU	$
		LDA	<PWORK1
		AND	#00000011B
		BNE	PYNA240
		BRL	PYNA500
PYNA240		EQU	$
		INC	<PWORK4
		LDY	#004H		; left,right ?
		AND	#00000010B
		BNE	PYNA300
		LDY	#006H
PYNA300		EQU	$
		TYA
		LSR	A
		STA	<PWORK0
;
		JSR	BGCHCK3		; BG check sub
;
		LDA	<WORKE
		AND	#00110000B
		BEQ	PYNA310
		LDA	<DRMKFG			; door muki flag set
		AND	#00000010B
		BEQ	PYNA310
		LDA	<WORKE
		AND	#00110000B
		LSR	A
		LSR	A
		AND	<PWORK1
		BNE	PYNA310
		LDY	#00H
		LDA	<PWORK1
		AND	#00001100B
		BEQ	PYNA310
		AND	#00001000B
		BNE	PYNA320
		LDY	#01H
		BRA	PYNA320
;
PYNA310		EQU	$
		LDA	BGALCKF		; BG2,BG1 check ?[NO:PYNA400]
		BEQ	PYNA316
		LDA	<WORKE
		AND	#00000011B
		BNE	PYNA317
		BRA	PYNA400
PYNA316		EQU	$
		LDA	<DIEFG
		BEQ	PYNA317
		LDA	<WORKC
		AND	#00000011B
		BEQ	PYNA317
		BRA	PYNA318
PYNA317		EQU	$
		LDA	<WORKE
		AND	#00000011B
		BEQ	PYNA400
		STZ	<PWORK5
		LDA	ICEFLAG
		BEQ	PYNA318
		LDA	HAKAFG+1
		AND	#00000011B
		BNE	PYNA318
		LDA	<PWORK1
		AND	#00001100B
		BEQ	PYNA318
		STZ	SWKASX
		STZ	SWKASX+1
		STZ	SWSPFX
		STZ	SWSPFX+1
		STZ	SWADFX
		STZ	SWADFX+1
		STZ	SWMXSX
		STZ	SWMXSX+1
PYNA318		EQU	$
		LDA	#01H
		STA	PKYNOT
		LDY	<PWORK0
PYNA320		EQU	$
		LDA	!KYOFDT,Y
		STA	<PLMVKY1
;
PYNA400		EQU	$
		LDA	<PWORK1
		AND	<PLMVKY
		AND	<PLMVKY1
		STA	<PWORK1
;
PYNA500		EQU	$
		LDA	<PWORK1
		AND	#00FH
		BEQ	PYNA520
		LDA	<PWORK5		; special BG key on ?
		AND	#0FH
		BEQ	PYNA520
		STA	<PWORK1
PYNA520		EQU	$
		LDA	<PWORK4		; naname kuikomi shori
		STZ	<PWORK4		; naname counter reset
		CMP	#02H
		BNE	PYNA800
		LDY	#01H
		LDA	<PLMKCH
		AND	#00000100B
		BEQ	PYNA600
		LDY	#02H
PYNA600		EQU	$
		STY	<PWORK4		; muki houkou set
PYNA800		EQU	$
		RTS
;
;
;********************************************************************
;*		player BG check	main			(PYBGCK)    *
;********************************************************************
PLMVDT		EQU	$		; auto idou data 
		BYTE	008H,004H,002H,001H
;
PYBGCK		EQU	$
		STZ	<PWORK8
		STZ	<BGCRNO		; BG chara counter
;
		LDA	<PWORK5
		AND	#00110000B
		BNE	PYCK100
		JSR	PYSPCK		; BG naname special check
		LDA	<PWORK7		; naname check
		BEQ	PYCK100
		BRL 	PYCK900
;
PYCK100		EQU	$
;*********** auto scrool BG check shori
		JSR	TIMCHK		; auto scrool 2 times bg check sub
		BCC	PYCK900		; auto scrool ? [NO:PYCK900]
;
		LDA	BGALCKF		; auto scrool ? [NO:PYCK600]
		CMP	#002H
		BCC	PYCK600
;
		LDA	BGALCKF
		CMP	#03H
		BEQ	PYCK600
;
		LDA	#00000010B	; difence ken bit on !!
		STA	KNBTFG
		MEM16
		REP	#00100000B
		JSR	BGCHCK4		; 4 ten bg check sub
		MEM8
		SEP	#00100000B
		LDA	<WORKE
		STA	PYHAMI		; BG2 atari ? [NO:ALBH900]
		BEQ	PYCK600		; BG1 atari ? [NO:PYCK800]
;
		LDA	<PLYMVC		; player y-pos move ? [NO:PYCK200]
		STA	<WORK0		; player y-move hozon
		CLC
		ADC	BG1VMC
		STA	<PLYMVC
		LDA	<PLXMVC		; player x-pos move ? [NO:PYCK300]
		STA	<WORK1		; player x-move hozon
		CLC
		ADC	BG1HMC
		STA	<PLXMVC
;
PYCK300		EQU	$
		LDA	<WORKE 
		CMP	#00001100B	; tate 2 ten atari ? [YES:PYCK600]
		BEQ	PYCK600
		CMP	#00000011B	; tate 2 ten atari ? [YES:PYCK600]
		BEQ	PYCK600
		CMP	#00001010B	; yoko 2 ten atari ? [YES:PYCK700]
		BEQ	PYCK700
		CMP	#00000101B	; yoko 2 ten atari ? [YES:PYCK700]
		BEQ	PYCK700
		AND	#00001100B	; tate 1 ten atari ? [YES:PYCK500]
		BNE	PYCK500
		LDA	<WORKE
		AND	#00000011B	; yako 1 ten atari ? [YES:PYCK500]
		BNE	PYCK500
		BRA	PYCK600
;
PYCK500		EQU	$		; 1 ten move check !!
		LDA	<WORK0		; player y-move ? [YES:PYCK700] 
		BNE	PYCK700
		LDA	<WORK1		; player x-move ? [YES:PYCK700]
		BEQ	PYCK600
		LDA	BG1VMC
		BPL	PYCK700
PYCK600		EQU	$
		JSR	BGTYCK		; tate check , yoko check
		BRA	PYCK800
PYCK700		EQU	$
		JSR	BGTYCK1		; yoko check , tate check
PYCK800		EQU	$
		JSR	TIMRETN
;
;*********** kotei BG check
PYCK900		EQU	$
		LDA	BGALCKF		; BG2,BG1 check ?[NO:PYCK140]
		CMP	#002H
		BEQ	PYCK901
		CMP	#003H
		BEQ	PYCK909
		CMP	#004H
		BEQ	PYCK908
;
		LDA	<PLYMVC
		ORA	<PLXMVC
		BNE	PYCK908
;
		LDA	<LNMODE		; bogun move ? 
		CMP	#BOGN
		BEQ	PYCK9004
		CMP	#SDSP
		BEQ	PYCK9004
		CMP	#BBSP
		BEQ	PYCK9004
		CMP	#JNSP
		BEQ	PYCK9004
		CMP	#KNSP
		BEQ	PYCK9004
;
		JSR	BGCHCK4
;
		LDA	<HOLEFG
		AND	#00001111B
		BEQ	PYCK9004
		LDA	#HLDM
		STA	<LNMODE
		LDA	DASHFG
		BNE	PYCK9004
		LDA	#004H
		STA	<PYSPFG
PYCK9004	EQU	$
		BRL	PYCK90A
;
PYCK901		EQU	$
		JSR	BGCHCK4		; 4 ten bg check sub
;
		LDA	<WORKE		; BG2 atari ? [NO:ALBH900]
		ORA	PYHAMI
		CMP	#00FH
		BNE	PYCK908
;
		LDA	PYFLASH
		BNE	PYCK902
		LDA	#DAMGI
		STA	PYFLASH
;;;;;;;;		LDA	#008H		; player flash flem set
;;;;;;;;		STA	DAMEFG
PYCK902		EQU	$
		LDA	<PWORK1
		BNE	PYCK908
		LDA	BG1VMC
		BEQ	PYCK904
		LDA	<PLYMVC
		EOR	#0FFH
		INC	A
		STA	<PLYMVC
PYCK904		EQU	$
		LDA	BG1HMC
		BEQ	PYCK908
		LDA	<PLXMVC
		EOR	#0FFH
		INC	A
		STA	<PLXMVC
;
PYCK908		EQU	$
		LDA	#00000001B
		STA	KNBTFG		; difence ken bit on !!
		JSR	BGTYCK		; BG tate,yoko check
		BRA	PYCK90A
;
PYCK909		EQU	$
		LDA	#00000001B
		STA	KNBTFG
		JSR	BGTYCK1		; BG tate,yoko check
;
;***********  kusa,water  1ten bg check
PYCK90A		EQU	$
		LDY	#000H
		JSR	BGCHCK6
;
;*********** naname BG check
PYCK90E		EQU	$
		LDA	<PWORK4		; naname check !
		BEQ	PYCK910
		STZ	<PWORK5		; flag clear !
;
;*********** move counter set
PYCK910		EQU	$
		LDA	<LNMODE
		CMP	#GKJM
		BEQ	PYCK940
;
		LDY	#08H
		LDA	<PLYPS1		; Y-pos move counter set
		SEC
		SBC	<PLYHN0
		STA	<PLYMVC
		BEQ	PYCK940
		BMI	PYCK920
		LDY	#04H
PYCK920		EQU	$
		LDA	<PWORK1
		AND	#003H
		STA	<PWORK1
		TYA
		TSB	<PWORK1		; (M) <--- (A) ORA (M)
;
PYCK940		EQU	$
		LDY	#02H
		LDA	<PLXPS1		; X-pos move counter set
		SEC
		SBC	<PLXHN0
		STA	<PLXMVC
		BEQ	PYCK980
		BMI	PYCK960
		LDY	#01H
PYCK960		EQU	$
		LDA	<PWORK1
		AND	#00CH
		STA	<PWORK1
		TYA
		TSB	<PWORK1		; (M) <--- (A) ORA (M)
;
;************* swim key off shori
PYCK980		EQU	$
		LDA	<GMMODE		; chijoo check ? [YES:PYCKA00]
		BEQ	PYCKA00
		LDA	BGALCKF		; water scrool ? [NO:PYCKA00]
		CMP	#004H
		BNE	PYCKA00
		LDA	<LNMODE		; swim mode ? [NO:PYCKA00]
		CMP	#SWMD
		BNE	PYCKA00
;
		LDY	#0F7H		; up key off
		LDA	BG1VMC		; V scrool on ?
		BEQ	PYCK9A0
		BMI	PYCK990
		LDY	#0FBH		; down key off
PYCK990		EQU	$
		EOR	#0FFH
		INC	A
		CLC
		ADC	<PLYMVC
		BNE	PYCK9A0
		TYA
		AND	<PWORK1
		STA	<PWORK1
;
PYCK9A0		EQU	$
		LDY	#0FDH
		LDA	BG1HMC		; H scrool on ?
		BEQ	PYCKA00
		BMI	PYCK9B0
		LDY	#0FEH
PYCK9B0		EQU	$
		EOR	#0FFH
		INC	A
		CLC
		ADC	<PLXMVC
		BNE	PYCKA00
		TYA
		AND	<PWORK1
		STA	<PWORK1
;
PYCKA00		EQU	$
		RTS
;
;********************************************************************
;*		player tate yoko BG sheck		(BGTYCK)    *
;********************************************************************
BGTYCK		EQU	$
		LDA	<PWORK5
		AND	#00100000B
		BNE	BGTY100
		JSR	PYTACK		; BG tate check
BGTY100		EQU	$
		LDA	<PWORK5		; tate ?
		AND	#00010000B
		BNE	BGTY200
		JSR	PYYOCK		; BG yoko check
BGTY200		EQU	$
		RTS
;
BGTYCK1		EQU	$
		LDA	<PWORK5		; tate ?
		AND	#00010000B
		BNE	BGTYC10
		JSR	PYYOCK		; BG yoko check
BGTYC10		EQU	$
		LDA	<PWORK5
		AND	#00100000B
		BNE	BGTYC20
		JSR	PYTACK		; BG tate check
BGTYC20		EQU	$
		RTS
;
;********************************************************************
;*		player 2 times bg check sub		(TIMCHK)    *
;********************************************************************
TIMCHK		EQU	$
		LDA	BGALCKF		; BG2,BG1 check ?[NO:TIMC900]
		BEQ	TIMC900
		CMP	#004H
		BEQ	TIMC900
;
		CMP	#002H		; BG2,BG1 ONLY ? [YES:TIMC400]
		BCC	TIMC400
;
		CMP	#003H
		BNE	TIMC300
;;;;;;;;		LDA	BELTCN
;;;;;;;;		BEQ	TIMC900
TIMC300		EQU	$
		MEM16
		REP	#00100000B
;
		LDA	<SCCV1		; (Y-scr 2) - (Y-scr 1)
		SEC
		SBC	<SCCV2
		CLC			; player y-pos set
		ADC	<PLYPS1
		STA	<PLYPS1
		STA	YPSCZN
;
		LDA	<SCCH1		; (X-scr 2) - (X-scr 1)
		SEC
		SBC	<SCCH2
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		STA	XPSCZN
		MEM8
		SEP	#00100000B
;
TIMC400		EQU	$
		LDA	#01H
		STA	<PLBGCKF	; 0:BG2 1:BG1 check
;
		SEC
		RTS
TIMC900		EQU	$
		CLC
		RTS
;
;************************************************************************
;*		2 times bg check pop sub		(TIMRETN)	*
;************************************************************************
TIMRETN		EQU	$
		LDA	BGALCKF		; NO auto scrool ? [YES:TIMR100]
		CMP	#01H
		BEQ	TIMR100
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	YPSCZN
		STA	<WORK0
		LDA	<PLXPS1
		SEC
		SBC	XPSCZN
		STA	<WORK2
;
		LDA	<SCCV2		; (Y-scr 2) - (Y-scr 1)
		SEC
		SBC	<SCCV1
		CLC			; player y-pos set
		ADC	<PLYPS1
		STA	<PLYPS1
;
		LDA	<SCCH2		; (X-scr 2) - (X-scr 1)
		SEC
		SBC	<SCCH1
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
;
		LDA	<PWORK1		; key in ? [NO:TIMR100]
		BEQ	TIMR100
		LDA	<PLYMVC		; BG1 HOSEI SET
		CLC
		ADC	<WORK0
		STA	<PLYMVC
		LDA	<PLXMVC
		CLC
		ADC	<WORK2
		STA	<PLXMVC		; player x-pos move ? [NO:PYCK300]
;
TIMR100		EQU	$
		STZ	<PLBGCKF	; 0:BG2 1:BG1 check
		RTS
;
;********************************************************************
;*		player BG tate check			(PYTACK)    *
;********************************************************************
CINYP		EQU	$	; coin y-pos
		WORD	00008H,00018H,00010H,00010H
CINXP		EQU	$	; coin x-pos
		WORD	00008H,00008H,00000H,0000FH
TOGTDT		EQU	$
		HEX	008,008,008
PYTACK		EQU	$
		LDA	<PLYMVC		; player move counter = 0 ?
		BNE	PYTA040
		RTS
PYTA040		EQU	$
		LDA	<PWORK6		; door check
		CMP	#01H
		BNE	PYTA100
		LDY	#000H		; up,down ?
		LDA	<PLYPS1
		CMP	#080H
		BCC	PYTA200
		BRA	PYTA120
;
PYTA100		EQU	$		; tate ON !
		LDY	#000H		; up,down ?
		LDA	<PLYMVC
		BMI	PYTA200
PYTA120		EQU	$
		LDY	#002H
PYTA200		EQU	$
		TYA
		LSR	A
		STA	<PWORK0
;
		JSR	BGCHCK		; BG check sub
;
;************  danjon,chijoo check
		LDA	<GMMODE
		BNE	PYTA202
		BRL	PYCTCK
;
;************  door BG check hosei set
PYTA202		EQU	$
		LDA	PYDMBT
		BMI	PYTA203
		LDA	<HANEFG		; hane kaeri ? [NO:PYTA204]
		BEQ	PYTA204
PYTA203		EQU	$
		LDA	<WORKE
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TSB	<WORKE		; (WORKE) <--- (A) ORA (WORKE)
		BRL	PYTA400
;
PYTA204		EQU	$
		LDA	<PWORK6		; yoko door ?
		CMP	#02H
		BNE	PYTA214
		LDA	<PWORK4		; naname key ?
		BNE	PYTA210
;
		LDA	BGALCKF
		CMP	#003H
		BNE	PYTA208
		LDA	<PLBGCKF
		BEQ	PYTA208
		BRL	PYTA460
;
PYTA208		EQU	$
		JSR	PTDS700		; kuikomi hosei sub
		BRL	PTDS000		; not door kyousei hosei sub
PYTA210		EQU	$
		LDA	<DRMKFG		; yoko door ?
		BEQ	PYTA214
		JSR	PTDS700		; kuikomi hosei sub
		BRA	PYTA440
;
PYTA214		EQU	$
		LDA	<WORKE		; door ?
		AND	#01110000B
		BEQ	PYTA400
;
		STZ	<WORK5
		LDA	<WORKF		; auto move ?
		AND	#00000111B
		BEQ	PYTA240
		LDY	#000H		; yes ! up,down ?
		LDA	<PLYMVC
		BMI	PYTA220
		LDY	#001H
PYTA220		EQU	$
		LDA	!PLMVDT,Y
		STA	<DRATMV		; auto door move flag set
;
PYTA240		EQU	$
		LDA	#01H		; door flag set
		STA	<PWORK6
		STZ	BELFCN
		LDA	<WORKE		; 3 ten door ?
		AND	#01110000B
		CMP	#01110000B
		BEQ	PYTA280
;
		LDA	<WORKE		; hashi 2 ten atari ?
		AND	#00000101B
		BNE	PYTA260
		LDA	<WORKE		; naka 1 ten door ?
		AND	#00100000B
		BNE	PYTA280
		BRA	PYTA400
;
PYTA260		EQU	$
		STZ	<PWORK5		; saka clear !!
		JSR	PTHS000		; y-pos kuikomi hosei set sub
		JSR	PTHS200		; x-pos kyosei hosei set sub
		STZ	<PWORK6		; hosei flag clear
;
PYTA270		EQU	$
		LDA	<WORKE		; naka 1 ten door ?
		AND	#00100000B
		BEQ	PYTA280
;
		LDA	<WORKE
		AND	#00000001B
		BNE	PYTA280
;
		LDA	<PLXPS1		; x-pos hosei set
		AND	#07H
		CMP	#01H
		BNE	PYTA280
		LDA	<PLXPS1		; x-pos kai 3 bit 0 clear !
		AND	#0F8H
		STA	<PLXPS1
;
PYTA280		EQU	$
		LDA	KNBTFG		; difence ken bit on !!
		AND	#00000010B
		BNE	PYTA300
		LDA	<PYMKFG
		AND	#11111101B
		STA	<PYMKFG
PYTA300		EQU	$
PYTA320		EQU	$
		RTS
;
;************  special BG check hosei set
PYTA400		EQU	$
		LDA	KNBTFG		; difence ken bit on !!
		AND	#00000010B
		BNE	PYTA440
		STZ	<PWORK6
PYTA440		EQU	$
		LDA	KNBTFG		; difence ken bit on !!
		AND	#00000010B
		BNE	PYTA460
		LDA	<PYMKFG
		AND	#11111101B	; muki kotei flag clear !
		STA	<PYMKFG
		STZ	<DRATMV		; door move flag set
		STZ	<PLMDCCF	; player BG mode chenge check flag
;
PYTA460		EQU	$
		LDA	<WORKE
		AND	#00000111B
		BNE	PYTA470
		LDA	<WORKC		; specilal BG ?
		AND	#00000101B
		BEQ	PYTA470
		STZ	BELFCN
		JSR	SPBGCK		; special BG hosei sub
		LDA	<PWORK5
		AND	#00FH
		BEQ	PYTA470
		RTS
;
;********** ori bg check
PYTA470		EQU	$
		STZ	<PWORK5
		LDA	HAKAFG
		AND	#00100000B
		BEQ	PYTA480
;
		LDA	<WORKE
		PHA
		LDA	<WORKF
		PHA
		LDA	RUYAFG		; rouya no set !!
		JSL	>TKBXPL		; open rouya !!
		STZ	RUYAFG
		PLA
		STA	<WORKF
		PLA
		STA	<WORKE
;
;********** belt conbear bg check
PYTA480		EQU	$
		LDA	<PLBGCKF
		BNE	PYTA481
		LDA	NUKIFG
		AND	#00000111B
		BEQ	PYTA4802
		LDA	#001H
		TSB	BELTCN
		BRA	PYTA482
;
PYTA4802	EQU	$
		LDA	HAKAFG+1	; nuki belt clear !!
		AND	#00000111B
		BNE	PYTA482
		LDA	<WORKE
		AND	#00000010B
		BNE	PYTA482
		LDA	BELTCN
		AND	#0FEH
		STA	BELTCN
		BRA	PYTA482
;
PYTA481		EQU	$
		LDA	BELTFG
		AND	#00000111B
		BEQ	PYTA4812
		LDA	#002H
		TSB	BELTCN
		BRA	PYTA482
;
PYTA4812	EQU	$
		LDA	BELTCN
		AND	#0FDH
		STA	BELTCN
;
;********** coin bg check !!
PYTA482		EQU	$
		LDA	FTBGON+1
		AND	#00100010B
		BEQ	PYTA48A
		LDX	#000H
		AND	#00100000B
		BEQ	PYTA486
		LDX	#008H
PYTA486		EQU	$
		STX	<WORK0
		STZ	<WORK1
		LDA	<PWORK0
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	>CONCNT		; coin up !!
		CLC
		ADC	#0005H
		STA	>CONCNT
		LDA	<PLYPS1
		CLC
		ADC	!CINYP,Y
		SEC
		SBC	<WORK0
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	!CINXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JSL	>COINCK		; BG chenge sub
;
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#coins
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#coins
		JSR	SDLP13
;
;********** 	move yuka BG check
PYTA48A		EQU	$
		LDY	#001H
		LDA	BELFLG
		AND	#00100010B
		BEQ	PYTA48C
		AND	#00100000B
		BEQ	PYTA48B
		LDY	#002H
PYTA48B		EQU	$
		STY	BELFCN
		BRA	PYTA490
;
PYTA48C		EQU	$
		LDY	#003H
		LDA	BELFLG+1
		AND	#00100010B
		BEQ	PYTA48E
		AND	#00100000B
		BEQ	PYTA48D
		LDY	#004H
PYTA48D		EQU	$
		STY	BELFCN
		BRA	PYTA490
;
PYTA48E		EQU	$
		LDA	HAKAFG+1	; toge block ?
		AND	#00000111B
		BNE	PYTA490
		LDA	<WORKE
		AND	#00000010B
		BNE	PYTA490
		STZ	BELFCN
;
;********** tobiori BG check
PYTA490		EQU	$
		LDA	GAKEFG
		AND	#00000111B
		CMP	#00000111B
		BNE	PYTA494
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYTA494
;
		JSR	DASCLR		; DASH clear check sub
		INC	TBRCFG
		LDA	#001H		; muteki set
		STA	MRTKFG
		LDA	#002H
		STA	<DIEFG
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#jumps
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#jumps
		JSR	SDLP12
		BRA	PYTA49A
;
;********** water BG check
PYTA494		EQU	$
		LDA	PWATER
		AND	#00000111B
		CMP	#00000111B
		BNE	PYTA49C
		LDA	WATRFG
		BNE	PYTA49C
;
		JSR	DASCLR		; DASH clear check sub
		LDA	<DPSUB		; BG1 check (0-off 1-on)
		BNE	PYTA498
;;;;;;;;		INC	!NSTPFG
		JSL	>TOBIORI	; code henkan
		BRA	PYTA49A
;
PYTA498		EQU	$
		LDA	#001H		; water flag set
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		STZ	PYDMBT		; katsugu clear
		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
;
		JSL	>SWSPCL1	; swim flag clear
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#jumps
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#jumps
		JSR	SDLP12
;
PYTA49A		EQU	$
		LDA	#001H		; muteki set
		STA	MRTKFG
		JSR	PYTAJP
;
		BRA	PYTA500
;********** water side BG check
PYTA49C		EQU	$
		LDA	WTRSID
		AND	#00000010B
		BEQ	PYTA500
;
		LDA	WATRFG
		BEQ	PYTA500
		LDA	<DIEFG
		BEQ	PYTA49E
		LDA	#00000111B
		STA	<WORKE
		BRA	PYTA500
PYTA49E		EQU	$
		JSR	DASCLR		; DASH clear check sub
;
		STZ	WATRFG
		LDA	SWMUKI
		STA	<PLMUKI
;
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
		BCC	PYTA49F
		LDA	#001H
		STA	WATRFG
		LDA	#00000111B
		STA	<WORKE
		BRA	PYTA500
;
PYTA49F		EQU	$
		LDA	#001H		; muteki set
		STA	MRTKFG
		JSR	PYTAJP
;
;************  Y-pos kaidan check
PYTA500		EQU	$
		LDA	<KDFGST		; kaidan flag clear
		AND	#00000111B
		CMP	#00000111B
		BNE	PYTA540
;
		LDA	<HANEFG		; hane kaeri ? [NO:PYTA510]
		BEQ	PYTA510
		LDA	<KDFGST		; BG atari set
		AND	#00000111B
		STA	<WORKE
		BRL	PYTA620		; [GO:PYTA620]
;
PYTA510		EQU	$
		LDA	KDATFG
		AND	#01110111B
		BEQ	PYTA520
;
		LDY	#p1_mcng
		AND	#01110000B
		BEQ	PYTA51C
		LDY	#p1_mcg1
PYTA51C		EQU	$
		STY	<GAMEMD		; kaidan auto walk mode change
		LDA	#MD_djply
		STA	<SLMODE
		JSR	DASCLR		; DASH clear check sub
;
PYTA520		EQU	$
		LDA	<PWORK0
		AND	#00000010B
		BNE	PYTA540
		LDA	#02H
		STA	<PYSPFG		; speed index set
		LDA	#01H		; kaidan shori set
		STA	<PSTPFG
		RTS
;
;************  Y-pos hole check
PYTA540		EQU	$
		LDA	<PYSPFG
		CMP	#002H
		BNE	PYTA560
		LDX	#010H
		LDA	DASHFG
		BNE	PYTA544
		LDX	#000H
PYTA544		EQU	$
		STX	<PYSPFG
;
PYTA560		EQU	$
		LDA	<PSTPFG
		CMP	#01H
		BNE	PYTA580
		LDX	#02H
		STX	<PSTPFG
;
PYTA580		EQU	$
		LDA	<HOLEFG
		AND	#00000101B
		BEQ	PYTA5C0
		LDA	<WORKE
		AND	#00000010B
		BNE	PYTA5C0
;
		LDA	<LNMODE
		CMP	#JPMV
		BEQ	PYTA5A0
		CMP	#JMDM
		BEQ	PYTA5A0
;
;;;;;;;;		JSR	DASCLR		; DASH clear check sub
		LDA	#09H
		STA	<PLHLFM		; hole down flem set
		STZ	<HOLEFG1
		LDA	#01H
		STA	<HOLEFG2
		LDA	#HLDM
		STA	<LNMODE		; next mode set (to hole shori)
PYTA5A0		EQU	$
		RTS
;
;************  toge block check
PYTA5C0		EQU	$
		STZ	<HOLEFG1	; bg check hole flag clear
		LDA	HAKAFG+1
		AND	#00000111B
		BEQ	PYTA600
;
		LDA	<HANEFG
		ORA	PYFLASH
		ORA	<KAKUMD
		BNE	PYTA5E8
;
		LDA	<PLYPS1		; up shori !!
		LDY	<PWORK0		; up,down check
		BNE	PYTA5D0
		AND	#00000100B
		BEQ	PYTA5E0
		BRA	PYTA600
PYTA5D0		EQU	$
		AND	#00000100B
		BEQ	PYTA600
PYTA5E0		EQU	$
		LDA	PYFLASH
		BNE	PYTA600
		LDA	>ITMTBL8
		TAY
		LDA	!TOGTDT,Y
		STA	!DAMEFG
		JSR	DASCLR
		JSR	KAKU200		; kakuremino clear
		BRL	DSNE700		; hanekaeri flag on !
;
PYTA5E8		EQU	$
		LDA	HAKAFG+1
		AND	#00000111B
		STA	<WORKE
;
;************  Y-pos block check
PYTA600		EQU	$
		LDA	BGALCKF
		BEQ	PYTA602
		CMP	#004H
		BEQ	PYTA602
		LDA	<PLBGCKF
		BNE	PYTA620
;
PYTA602		EQU	$
		LDA	<BKONFG		; block on check
		ORA	<BKONFG+1
		BEQ	PYTA618
;
		LDA	<PWORK4		; naname check !
		BNE	PYTA618		
;
		LDA	<BKONFG		; pull block on check
		STA	PLBKFG
;
		DEC	<BLKFLM		; 8 flem ?
		BPL	PYTA620
;
PYTA604		EQU	$
		MEM16
		REP	#00100000B
		LDY	#0FH		; flem init. set
		LDA	<BKONFG
PYTA610		EQU	$
		ASL	A
		BCC	PYTA614
		PHA
		PHY
		MEM8
		SEP	#00100000B
		JSR	BKONCK		; block max check
		BCS	PYTA613
		STX	<WORKE
		TYA
		ASL	A
		TAX
		JSR	PYBLST		; block pos initial set
		BCS	PYTA613
;
		LDA	<WORKE
		ASL	A
		TAY
		JSR	BLOMST		; block oam set
		TYX
		LDY	<PWORK0		; houkou set
		TYA
		ASL	A
		STA	BLKMUKI,X
		STA	BMUKI
		LDA	BLKYPS1,X	; y-pos hozon
		CPY	#01H
		BNE	PYTA612
		DEC	A
PYTA612		EQU	$
		AND	#00FH
		STA	BLKXPS2,X
PYTA613		EQU	$
		MEM16
		REP	#00100000B
		PLY
		PLA
PYTA614		EQU	$
		DEY
		BPL	PYTA610
		MEM8
		SEP	#00100000B
;
PYTA618		EQU	$
		LDA	#BKTIM
		STA	<BLKFLM
;
;************  Y-pos kuikomi hosei set
PYTA620		EQU	$
		LDA	<WORKE		; atari ?
		AND	#00000111B
		BNE	PYTA628
		BRL	PYTAA00
;
PYTA628		EQU	$
		LDA	<LNMODE		; swim mode ? [NO:PYTA630]
		CMP	#SWMD
		BNE	PYTA630
;
		LDA	BG1VMC
		BNE	PYTA62C
		JSR	SWSPCL		; swim flag clear sub
PYTA62C		EQU	$
		LDA	<PWORK4
		BEQ	PYTA630
		JSR	PTHS000
		BRA	PYTA640
;
PYTA630		EQU	$
		LDA	<WORKE
		AND	#00000010B
		BNE	PYTA632
		LDA	<WORKE
		AND	#00000101B
		CMP	#00000101B
		BNE	PYTA634
PYTA632		EQU	$
		LDA	<WORKE
		PHA
		JSR	TIOICK		; taiatari ooiwa check !!
		JSR	DASHNE		; dash BG atatri check
		PLA
		STA	<WORKE
;
PYTA634		EQU	$
		LDA	#01H		; hole down atari flag set
		STA	PKYNOT
;
		LDA	<WORKE		; all atari ? [NO:PYTA638]
		AND	#00000010B
		CMP	#00000010B
		BNE	PYTA638
		JSR	PTHS000
		BRA	PYTA640
;
PYTA638		EQU	$
		LDA	<PWORK4
		CMP	#01H
		BNE	PYTA63C
PYTA63A		EQU	$
		BRL	PYTAE00
;
PYTA63C		EQU	$
		JSR	PTHS000		; kuikomi hosei set sub
;
		LDA	<PWORK4
		CMP	#02H
		BEQ	PYTA63A
;
;************ block hosei check ( X-pos hosei set )
PYTA640		EQU	$
		LDA	<WORKE		; player stop ?
		AND	#00000101B
		CMP	#00000101B
		BEQ	PYTA778
;
		AND	#00000100B	; right atari ?
		BEQ	PYTA740
;
		LDY	#001H
		LDA	<PLYMVC		; left houkou hosei set
		BMI	PYTA700
		EOR	#0FFH
		INC	A
PYTA700		EQU	$
		BPL	PYTA720
		LDY	#0FFH
PYTA720		EQU	$
		STY	<WORK0
		STZ	<WORK1
		LDA	<WORKE		; naka atari ?
		AND	#00000010B
		BNE	PYTA800
		LDA	<PLXPS1		; hasuu ?
		AND	#00000111B
		BNE	PYTA780
		JSR	TIOICK		; taiatari ooiwa check !!
		JSR	DASHNE		; dash BG atatri check
		BRA	PYTA800
;
PYTA740		EQU	$
		LDY	#001H
		LDA	<PLYMVC		; right houkou hosei set
		BPL	PYTA760
		EOR	#0FFH
		INC	A
PYTA760		EQU	$
		BPL	PYTA770
		LDY	#0FFH
PYTA770		EQU	$
		STY	<WORK0
		STZ	<WORK1
		LDA	<WORKE		; naka atari ?
		AND	#00000010B
		BNE	PYTA800
		LDA	<PLXPS1
		AND	#00000111B
		BNE	PYTA780
PYTA778		EQU	$
		JSR	TIOICK		; taiatari ooiwa check !!
		JSR	DASHNE		; dash BG atatri check
		BRA	PYTA800
;
PYTA780		EQU	$
		JSR	PTHS600		; x-pos hosei set sub
		JMP	BGCHCK9		; hoei BG check
;
;************ atari ken difence flag set
PYTA800		EQU	$
		LDA	<PWORK0		; atari ken furi shori
		ASL	A
		CMP	<PLMKCH		; chara houkou check
		BNE	PYTAE00
;
		LDA	KNBTFG
		AND	#00000001B
		ASL	A
		TSB	<HANIFG1
;
		LDA	<KENMD
		BNE	PYTA900
		DEC	RASNFM
		BPL	PYTAF00
;
PYTA900		EQU	$
		LDY	KNBTFG
		LDA	FTBGON
		AND	#00100000B
		BEQ	PYTA980
		LDA	KNBTFG		; atari ken difence flag set !
		ASL	A
		ASL	A
		ASL	A
		TAY
PYTA980		EQU	$
		TYA
		TSB	<HANIFG1	; (HANIFG1) <--- (A) ORA (HANIFG1)
		BRA	PYTAE00
PYTAA00		EQU	$
		LDA	<PLBGCKF
		BNE	PYTAF00
		LDA	<HANIFG1
		AND	#11110110B
		STA	<HANIFG1
;
PYTAE00		EQU	$
		LDA	#020H
		STA	RASNFM
		LDA	<HANIFG1
		AND	#11111101B
		STA	<HANIFG1
PYTAF00		EQU	$
		RTS
;
;********************************************************************
;*		player chijoo BG tate check		(PYCTCK)    *
;********************************************************************
PYCTCK		EQU	$
;************ hole bg check shori
		LDA	<PYSPFG
		CMP	#002H
		BNE	PYCT0C0
		LDX	#010H
		LDA	DASHFG
		BNE	PYCT080
		LDX	#000H
PYCT080		EQU	$
		STX	<PYSPFG
;
PYCT0C0		EQU	$
		LDA	<HOLEFG
		AND	#00000101B
		BEQ	PYCT200
		LDA	<WORKE
		AND	#00000010B
		BNE	PYCT200
		LDA	<LNMODE
		CMP	#JPMV
		BEQ	PYCT100
		CMP	#JMDM
		BEQ	PYCT100
;
;;;;;;;;		JSR	DASCLR		; DASH clear check sub
		LDA	#09H
		STA	<PLHLFM		; hole down flem set
		STZ	<HOLEFG1
		LDA	#01H
		STA	<HOLEFG2
		LDA	#HLDM
		STA	<LNMODE		; next mode set (to hole shori)
PYCT100		EQU	$
		RTS
;************ motsu aitem bg check shori
PYCT200		EQU	$
		LDA	MTKSFG
		AND	#00000010B
		BEQ	PYCT280
		LDA	MTIXFG
		LSR	A
		STA	MTKSNO
		BRA	PYCT300
PYCT280		EQU	$
		STZ	MTKSNO
;
PYCT300		EQU	$
;********** water BG check
PYCT400		EQU	$
		LDA	PWATER
		AND	#00000010B
		BEQ	PYCT450
		BRA	PYCT420
PYCT410		EQU	$
		LDA	PWATER
		AND	#00000111B
		CMP	#00000111B
		BNE	PYCT450
;
PYCT420		EQU	$
		LDA	WATRFG		; water in ?
		BNE	PYCT450
;
		LDA	<DIEFG
		BNE	PYCT450
;
		JSR	PLKW0C0		; ken move clear !!
		JSR	DASCLR		; DASH clear check sub
		LDA	#001H		; water flag set
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		STZ	DODMBT
		STZ	<PYSPFG
		JSL	>SWSPCL1	; swim flag clear
;
		LDA	ASWFLG		; asase ?
		CMP	#001H
		BNE	PYCT440
		JSR	KAKU200		; kakuremino clear
		LDA	>ITEMR23
		BEQ	PYCT440
		LDA	RABFLG		; usagi ? [YES:PYCJ400]
		BNE	PYCT450
		LDA	#SWMD
		STA	<LNMODE
		BRA	PYCT450
;
PYCT440		EQU	$
		LDA	#jumps
		JSR	SDLP12
		LDA	<PLYHN0
		STA	<PLYPS1
		LDA	<PLYHN1
		STA	<PLYPS0
		LDA	<PLXHN0
		STA	<PLXPS1
		LDA	<PLXHN1
		STA	<PLXPS0
;;;;;;;;;		JSL	>PPOSKP		; y,x pos hozon sub
		LDA	#001H		; muteki set
		STA	MRTKFG
		JSR	PYTAJP
;
;********** water side check
PYCT450		EQU	$
		LDA	WATRFG
		BEQ	PYCT500
;
		LDA	GAKEFG
		AND	#00000111B
		BEQ	PYCT460
		STA	<WORKE
		BRL	PYTA620		; to kuikomi hosei set
;
PYCT460		EQU	$
		LDA	<KDFGST		; kaidan flag clear
		AND	#00000111B
		CMP	#00000111B
		BEQ	PYCT480
;
		LDA	WTRSID
		AND	#00000111B
		CMP	#00000111B
		BNE	PYCT500
;
PYCT480		EQU	$
		JSR	DASCLR		; DASH clear check sub
		STZ	WATRFG
		LDA	<DIEFG
		BNE	PYCT500
		LDA	SWMUKI
		STA	<PLMUKI
		LDA	#001H		; muteki set
		STA	MRTKFG
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
		BRL	PYTAJP
;
PYCT500		EQU	$
		LDA	GAKEFG+1
		AND	#00000010B
		BNE	PYCT540
		LDA	GAKEFG+3
		AND	#00100010B
		BEQ	PYCT580
PYCT540		EQU	$
		LDA	#00000111B
		STA	<WORKE
		BRL	PYTA620
;
;********** down gake jump bg check
PYCT580		EQU	$
		LDA	GAKEFG
		AND	#01110000B
		BEQ	PYCT600
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCT600
		JSR	DASCLR		; DASH clear check sub
		LDA	#001H		; muteki set
		STA	MRTKFG
		STA	<PTBIFG
		LDA	#GKJM
		STA	<LNMODE
		STZ	<HANEFG
		LDA	#0FFH
		STA	JMPZPS1
		STA	JMPZPS1+1
		STZ	<HANIFG1
		STZ	<PYSPFG
;
		LDY	#002H
		LDX	#014H
		LDA	WATRFG
		BEQ	PYCT5A0
		LDY	#004H
		LDX	#00EH
PYCT5A0		EQU	$
		STX	JMPZSP		; z-speed set
		STX	JMPZSP1
		STY	<DIEFG
		RTS
;
;********** up gake jump bg check
PYCT600		EQU	$
		LDA	GAKEFG
		AND	#00000111B
		BEQ	PYCT700
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCT700
		LDA	#jumps
		JSR	SDLP12
		LDA	#001H		; muteki set
		STA	MRTKFG
		JSR	DASCLR		; DASH clear check sub
		STZ	<HANIFG1
		STZ	<PYSPFG
		BRL	PYTAJP1		; up gake jump shori
;
PYCT700		EQU	$
;************ naname down gake bg check shori
		LDA	WATRFG
		BEQ	PYCT708
		BRL	PYCT800
;
PYCT708		EQU	$
		LDA	GAKEFG+2
		AND	#00000111B
		BEQ	PYCT740
;
		LDA	GAKEFG		; teta uusen check !
		AND	#01110111B
		BNE	PYCT740
		LDX	#00000100B
		LDA	<BMWORK+4
		CMP	#02FH
		BEQ	PYCT710
		LDX	#00000001B
PYCT710		EQU	$
		TXA
		AND	GAKEFG+2
		BEQ	PYCT740
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCT740
		JSR	DASCLR		; DASH clear check sub
		LDX	#010H
		LDA	GAKEFG+2
		AND	#00000100B
		BNE	PYCT720
		TXA
		EOR	#0FFH
		INC	A
		TAX
PYCT720		EQU	$
		LDA	#001H		; muteki set
		STA	MRTKFG
		STX	<PLXSPD
		STZ	<HANIFG1
		STZ	<PYSPFG
		LDA	#001H		; muteki set
		STA	MRTKFG
		STA	<PTBIFG
		LDA	#002H
		STA	<DIEFG
		LDA	#014H
		STA	JMPZSP
		STA	JMPZSP1
		LDA	#0FFH
		STA	JMPZPS1
		STZ	<HANEFG
		LDA	#GKDN
		STA	<LNMODE
		RTS
;
;************ naname up gake bg check shori
PYCT740		EQU	$
		LDA	GAKEFG+1
		AND	#01110000B
		BEQ	PYCT800
;
		LDA	GAKEFG		; teta uusen check !
		AND	#01110111B
		BNE	PYCT800
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCT800
		JSR	DASCLR		; DASH clear check sub
		LDA	#jumps
		JSR	SDLP12
		LDY	#003H
		LDA	GAKEFG+1
		AND	#01000000B
		BNE	PYCT760
		LDY	#002H
PYCT760		EQU	$
		STY	<PWORK0
		LDA	#001H		; muteki set
		STA	MRTKFG
		STZ	<HANIFG1
		STZ	<PYSPFG
		BRL	PYTAJP2
;************  Y-pos kaidan check
PYCT800		EQU	$
		LDA	<KDFGST		; kaidan flag clear
		AND	#00000111B
		CMP	#00000111B
		BNE	PYCT840
;
		LDA	<HANEFG		; hane kaeri ? [NO:PYTA510]
		BEQ	PYCT820
		LDA	<KDFGST		; BG atari set
		AND	#00000111B
		STA	<WORKE
		BRL	PYTA620		; [GO:PYTA620]
;
PYCT820		EQU	$
;;;;;;;;		JSR	DASCLR		; DASH clear check sub
		LDA	<PWORK0
		AND	#00000010B
		BNE	PYCT840
		LDA	#02H
		STA	<PYSPFG		; speed index set
		LDA	#01H		; kaidan shori set
		STA	<PSTPFG
		RTS
;
PYCT840		EQU	$
		LDA	<PYSPFG
		CMP	#002H
		BNE	PYCT880
		LDX	#010H
		LDA	DASHFG
		BNE	PYCT844
		LDX	#000H
PYCT844		EQU	$
		STX	<PYSPFG
;
PYCT880		EQU	$
		LDA	<PSTPFG
		CMP	#01H
		BNE	PYCT900
		LDX	#02H
		STX	<PSTPFG
;
;************  special BG check hosei set
PYCT900		EQU	$
		LDA	<WORKC		; specilal BG ?
		AND	#00000101B
		BEQ	PYCTA00
		LDA	<WORKE
		AND	#00000111B
		BNE	PYCTA00
;
		JSR	SPBGCK		; special BG hosei sub
		LDA	<PWORK5
		AND	#00FH
		BEQ	PYCTA00
		RTS
;
;************  haka BG check shori
PYCTA00		EQU	$
		STZ	<PWORK5
		LDA	HAKAFG
		AND	#00000010B
		BEQ	PYCTAC0
		LDA	<PWORK0
		BNE	PYCTAC0
		LDA	DASHFG
		BNE	PYCTA80
		DEC	<BLKFLM
		BPL	PYCTB00
PYCTA80		EQU	$
		LDA	<WORKE
		PHA
		LDY	#004H
		LDA	#HAKMV
		JSL	>HAKAINT
		PLA
		STA	<WORKE
PYCTAC0		EQU	$
		LDA	#034H
		STA	<BLKFLM
;
;************ toge block bg check shori
PYCTB00		EQU	$
		LDA	HAKAFG+1
		AND	#00000111B
		BEQ	PYCTC00
;
		LDA	<HANEFG
		ORA	PYFLASH
		ORA	<KAKUMD
		BNE	PYCTBC0
;
		LDA	<PLYPS1		; up shori !!
		LDY	<PWORK0		; up,down check
		BNE	PYCTB40
		AND	#00000100B
		BEQ	PYCTB80
		BRA	PYCTC00
PYCTB40		EQU	$
		AND	#00000100B
		BEQ	PYCTC00
PYCTB80		EQU	$
;;;;;;;;		LDA	PYFLASH
;;;;;;;;		BNE	PYCTBC0
		LDA	>ITMTBL8
		TAY
		LDA	!TOGTDT,Y
		STA	!DAMEFG
		JSR	DASCLR
		JSR	KAKU200		; kakuremino clear
		BRL	DSNE700		; hanekaeri flag on !
;
PYCTBC0		EQU	$
		LDA	HAKAFG+1
		AND	#00000111B
		STA	<WORKE
;
;************ kuikomim bg check shori
PYCTC00		EQU	$
		BRL	PYTA620		; to kuikomi hosei set
;
;********************************************************************
;*		player JUMP time lag sub		(PJTMLG)  *
;********************************************************************
PJTMLG		EQU	$
		LDA	<DIEFG
		CMP	#001H
		BEQ	PJTM200
;
		LDA	DASHFG
		BNE	PJTM100
;
		DEC	TMLGFG		; time lag timer
		BPL	PJTM200
		LDA	#JTIME
		STA	TMLGFG
		BRA	PJTM180
PJTM100		EQU	$
		JSR	PJTM200
PJTM180		EQU	$
		SEC
		RTS
;
PJTM200		EQU	$
		MEM16
		REP	#00100000B
		LDA	PLSVY1
		STA	<PLYPS1
		LDA	PLSVX1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		STZ	<PLYBUF
		STZ	<PLXBUF
		LDA	<GMMODE
		BNE	PJTM300
;;;;;;;;;		JSL	>PPOSKP		; y,x pos hozon sub
PJTM300		EQU	$
		CLC
		RTS
;
;********************************************************************
;*		taiatari  ooiwa check sub	       	(TIOICK)    *
;********************************************************************
TIOICK		EQU	$
		LDA	DASHFG
		BEQ	PJTM300
		LDA	DASFLM
		CMP	#040H
		BEQ	PJTM300
		LDA	!INORNO+1
		AND	#01110000B
		BEQ	PJTM300
;
		JSL	>TTIWACK
		BCC	TIOI020
		JSR	TIOI040
TIOI020		EQU	$
		JSL	>TTIWACK1
		BCC	TIOI300
		
TIOI040		EQU	$
		LDX	#MOTUED-MOTUDT-1
TIOI100		EQU	$
		CMP	!MOTUDT,X
		BEQ	TIOI200
		DEX
		BPL	TIOI100
		BRA	TIOI300
TIOI200		EQU	$
		CPX	#002H
		BEQ	TIOI240
		CPX	#004H
		BNE	TIOI280
TIOI240		EQU	$
		PHX
;;;;;;;;		JSL	>SDLRCP
;;;;;;;;		ORA	#032H
;;;;;;;;		STA	!SOUND3
		LDA	#032H
		JSR	SDLP13
		PLX
TIOI280		EQU	$
		TXA
		JSL	>KUSAST
;
TIOI300		EQU	$
		RTS
;
;********************************************************************
;*		player door BG tate hosei check	(PTHS000)(PTHS200)  *
;********************************************************************
PTHS000		EQU	$
		MEM16			; kuikomi hosei set
		REP	#00100000B
		LDA	<PLHNL0		; read-pos hozon 
		AND	#0007H
		LDY	<PLYMVC		; y-move counter < 0 ?
		BPL	PTHS100
		SEC
		SBC	#0008H
PTHS100		EQU	$
		EOR	#0FFFFH
		INC	A
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		RTS
;
;
PTHS200		EQU	$		; kyousei hosei shori
		LDA	<WORKE
		AND	#00000100B	; hashi atari ?
		BEQ	PTHS400
;
		LDY	#001H
		LDA	<PLYMVC
		BMI	PTHS300
		EOR	#0FFH
		INC	A
PTHS300		EQU	$
		BPL	PTHS340
		LDY	#0FFH
PTHS340		EQU	$
		STY	<WORK0
		STZ	<WORK1
		BRA	PTHS600
;
PTHS400		EQU	$
		LDY	#001H
		LDA	<PLYMVC
		BPL	PTHS500
		EOR	#0FFH
		INC	A
PTHS500		EQU	$
		BPL	PTHS540
		LDY	#0FFH
PTHS540		EQU	$
		STY	<WORK0
		STZ	<WORK1
;
PTHS600		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CMP	#0080H
		BCC	PTHS700
		ORA	#0FF00H
PTHS700		EQU	$
		CLC			; hosei set
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		RTS
;
;********************************************************************
;*		player not door BG tate hosei check	(PTDS000)   *
;********************************************************************
PTDS000		EQU	$		; kyousei hosei shori
		LDA	#00000010B	; houkou kotei set
		TSB	<PYMKFG		; (PYMKFG) <--- (A) ORA (PYMKFG)
;
		LDA	<WORKE		; door flag to kai 4 bit
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORKE		; marge atari flag
		AND	#00FH
		STA	<WORK0		; work0 set
;
		AND	#00000111B	; door soto ?
		BNE	PTDS040
		STZ	<PWORK6		; door flag clear
		BRA	PTDS600		; <RTS>
;
PTDS040		EQU	$
		LDA	<PLXPS1		; hosei left or right ?
		CMP	#080H
		BCC	PTDS200
;
		LDY	#001H
		LDA	<PLYMVC
		BMI	PTDS100
		EOR	#0FFH
		INC	A
PTDS100		EQU	$
		BPL	PTDS120
		LDY	#0FFH
PTDS120		EQU	$
		STY	<WORK0
		STZ	<WORK1
		LDY	#04H		; muki left set
		BRA	PTDS400
;
PTDS200		EQU	$
		LDY	#001H
		LDA	<PLYMVC
		BPL	PTDS300
		EOR	#0FFH
		INC	A
PTDS300		EQU	$
		BPL	PTDS320
		LDY	#0FFH
PTDS320		EQU	$
		STY	<WORK0
		STZ	<WORK1
		LDY	#06H		; muki right set
;
PTDS400		EQU	$
		LDA	<PYMKFG
		AND	#00000001B
		BNE	PTDS440
		STY	<PLMKCH		; left,right muki set
;
PTDS440		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CMP	#0080H
		BCC	PTDS500
		ORA	#0FF00H
PTDS500		EQU	$
		CLC			; hosei set
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
PTDS600		EQU	$
		RTS
;
PTDS700		EQU	$		; door in kuikomi hosei sub
 		MEM16			; kuikomi hosei set
		REP	#00100000B
		LDA	<PLYMVC
		AND	#00FFH
		CMP	#0080H
		BCC	PTDS800
		ORA	#0FF00H
PTDS800		EQU	$
		EOR	#0FFFFH
		INC	A
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		RTS
;
;
;********************************************************************
;*		player jump shori set sub		(PYTAJP)    *
;********************************************************************
JPTADT		EQU	$		; jump kyori data
		BYTE	018H,010H	; 0,1
;;;;;;;;		BYTE	00EH,010H	; 0,1
		BYTE	010H		; chijoo
JPZPDT		EQU	$		; jump takasa data
		BYTE	024H,018H	; 0,1
		BYTE	018H		; chijoo
JPHNDT		EQU	$		; jump haneru data
		BYTE	010H,010H
		BYTE	010H
;
PYTAJP		EQU	$
		LDA	<GMMODE
		BNE	PYJP040
		LDX	#002H
		BRA	PYJP080
;
PYJP040		EQU	$
		LDX	<DPSUB
		LDA	TBRCFG
		BEQ	PYJP080
		LDX	#000H
PYJP080		EQU	$
		STX	<WORK0
;		
		LDA	!JPTADT,X
		TAX
		LDA	<PWORK0
		BNE	PYJP100
		TXA
		EOR	#0FFH
		INC	A
		TAX
PYJP100		EQU	$
		STX	<PLYSPD
		STZ	<PLXSPD
		LDX	<WORK0
		LDA	!JPZPDT,X
		STA	<PLZSPD
		STA	PLZSPD1
		STZ	<PLZPS1
		STZ	<PLZPS0
		LDA	!JPHNDT,X
		STA	<HANEFG
		LDA	<DIEFG
		CMP	#002H
		BEQ	PYJP200
		LDA	#001H
		STA	<DIEFG
		STZ	PIPIFG
;;;;;;;;;		LDA	#JMDM
PYJP200		EQU	$
		LDA	#JWMV
		STA	<LNMODE
		RTS
;
;********************************************************************
;*		player chijoo jump shori set sub	(PYTAJP1)   *
;********************************************************************
PTYSDT		EQU	$
		HEX	010,010,014,014,018,018,01C,01C
		HEX	020,020,024,024,028,028,02C,02C
		HEX	030,030,030,030,030,030,030,030
		HEX	030,030,030,030,030,030,030,030
PTZSDT		EQU	$
		HEX	018,018,018,018,01C,01C,01C,01C
		HEX	020,020,020,020,024,024,024,024
		HEX	028,028,028,028,02C,02C,02C,02C
		HEX	030,030,030,030,034,034,034,034
PTHEDT		EQU	$
		HEX	010,010,014,014,018,018,01C,01C
		HEX	020,020,024,024,028,028,02C,02C
		HEX	030,030,030,030,030,030,030,030
		HEX	030,030,030,030,030,030,030,030
PYTAJP1		EQU	$
		LDA	<PLYPS1
		STA	<PLHYBF0
		PHA
		LDA	<PLYPS0
		STA	<PLHYBF1
		PHA
PTJP100		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	#0010H
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	<PWORK0
		ASL	A
		TAY
		JSR	BGCHCK
;
		LDA	WTRSID		; no check
		ORA	SHIBFG		; shibafu check
		ORA	KUSAFG		; kusa check
		ORA	PWATER		; water check
		AND	#00000111B
		CMP	#00000111B
		BNE	PTJP100
;
		LDA	PWATER
		AND	#00000111B
		BEQ	PTJP200
;
		LDA	#001H
		STA	<DIEFG
		STZ	PIPIFG
		LDA	#001H		; water flag set
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1	; swim flag clear
;;;;;;;;		STZ	PYDMBT		; katsugu clear
;;;;;;;;		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
PTJP200		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	#0010H
		STA	<PLYPS1
		LDA	<PLHYBF0
		SEC
		SBC	<PLYPS1
		STA	<PLHYBF0
		MEM8
		SEP	#00100000B
		PLA
		STA	<PLYPS0
		PLA
		STA	<PLYPS1
;
		LDA	<PLHYBF0
		LSR	A
		LSR	A
		LSR	A
		TAY
		LDA	!PTYSDT,Y
		TAX
		LDA	<PWORK0
		BNE	PTJP300
		TXA
		EOR	#0FFH
		INC	A
		TAX
PTJP300		EQU	$
		STX	<PLYSPD
		STZ	<PLXSPD
		LDA	!PTZSDT,Y
		STA	<PLZSPD
		STA	PLZSPD1
		STZ	<PLZPS1
		STZ	<PLZPS0
		LDA	!PTHEDT,Y
		STA	<HANEFG
		LDA	#002H
		STA	<DIEFG
		STZ	PIPIFG
		LDA	#JWMV
		STA	<LNMODE
		RTS
;
;********************************************************************
;*		player chijoo jump shori set sub	(PYTAJP2)   *
;********************************************************************
PTYSDT1		EQU	$
;			                  2   2
		HEX	008,008,008,008,010,010,014,014
		HEX	018,018,018,018,020,020,020,020
		HEX	008,014,014,014,018,018,018,018
		HEX	01C,01C,01C,01C,020,020,020,020
PTXSDT1		EQU	$
		HEX	008,008,008,008,010,010,010,010
		HEX	018,018,018,018,010,010,010,010
		HEX	008,014,014,014,018,018,018,018
		HEX	01C,01C,01C,01C,020,020,020,020
PTZSDT1		EQU	$
		HEX	020,020,020,020,020,020,020,020
		HEX	024,024,024,024,028,028,028,028
		HEX	020,028,028,028,02C,02C,02C,02C
		HEX	030,030,030,030,034,034,034,034
GYHABA1		EQU	$
		WORD	0FFE0H,00020H
PYTAJP2		EQU	$
		LDA	<PLYHN0
		PHA
		LDA	<PLXPS1
		PHA
		LDA	<PLXPS0
		PHA
		LDX	<PWORK0
		PHX
		LDY	#001H
		CPX	#002H
		BNE	PY2J100
		LDY	#0FFH
PY2J100		EQU	$
		STY	<PLXSPD
;
		LDA	#000H
		STA	<PWORK0
		JSR	GKIMIT1
;
		PLX
		PLA
		STA	<PLXPS0
		PLA
		STA	<PLXPS1
		PLA
		STA	<PLYHN0
		MEM16
		REP	#00100000B
		LDA	<PLHYBF0
		SEC
		SBC	<PLYPS1
		LSR	A
		LSR	A
		LSR	A
		TAY
		LDA	<PLHYBF0
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	!PTYSDT1,Y
		EOR	#0FFH
		INC	A
		STA	<PLYSPD
;
		LDA	!PTXSDT1,Y
		CPX	#002H
		BNE	PY2J200
		EOR	#0FFH
		INC	A
PY2J200		EQU	$
		STA	<PLXSPD
;
		LDA	!PTZSDT1,Y
		STA	<PLZSPD
		STA	PLZSPD1
		STZ	<PLZPS1
		STZ	<PLZPS0
		STZ	JMPZPS1
;
		LDA	#002H
		STA	<DIEFG
		STZ	PIPIFG
		LDA	#GKNY
		STA	<LNMODE
		RTS
;
;
;
;********************************************************************
;*		player danjon BG yoko check		(PYYOCK)    *
;********************************************************************
;************ yoko bg check 
PYYOCK		EQU	$
		LDA	<PLXMVC
		BNE	PYYO040
		RTS
PYYO040		EQU	$
		LDA	<PWORK6		; yoko door ?
		CMP	#02H
		BNE	PYYO100
		LDY	#004H		; door in point kotei set
		LDA	<PLXPS1
		CMP	#080H
		BCC	PYYO200
		BRA	PYYO120
;
PYYO100		EQU	$
		LDY	#004H
		LDA	<PLXMVC
		BMI	PYYO200
PYYO120		EQU	$
		LDY	#006H
PYYO200		EQU	$
		TYA
		LSR	A
		STA	<PWORK0
;
		JSR	BGCHCK1		; Y-pos BG check sub
;
;************ danjon , chijoo check
		LDA	<GMMODE
		BNE	PYYO201
		BRL	PYCJCK		; chijoo check set
;
;************ door BG check hosei set
PYYO201		EQU	$
		LDA	PYDMBT
		BMI	PYYO2018
		LDA	<HANEFG		; hane kaeri ?
		BEQ	PYYO202
PYYO2018	EQU	$
		LDA	<WORKE		; [yes:PYYO400]
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TSB	<WORKE
		BRL	PYYO400
;
PYYO202		EQU	$
		LDA	<PWORK4
		BNE	PYYO205
		STZ	<PSTPFG		; kaidan flag clear
PYYO205		EQU	$
		LDA	<PWORK6		; tate door ?
		CMP	#01H
		BNE	PYYO210
		LDA	<PWORK4		; naname key ?
		BNE	PYYO210
;
		LDA	BGALCKF
		CMP	#003H
		BNE	PYYO208
		LDA	<PLBGCKF
		BEQ	PYYO208
		BRL	PYYO420
;
PYYO208		EQU	$
		JSR	PYHS000		; kuikomi hosei sub
		JSR	PYDS000		; not door kyousei hosei sub
		BRL	BGCHCKB		; bg check
;
PYYO210		EQU	$
		LDA	<WORKE
		AND	#01110000B
		BEQ	PYYO400
;
		STZ	<WORK5
		LDA	<WORKF
		AND	#00000111B
		BEQ	PYYO240
		LDY	#002H
		LDA	<PLXMVC
		BMI	PYYO220
		LDY	#003H
PYYO220		EQU	$
		LDA	!PLMVDT,Y
		STA	<DRATMV
;
PYYO240		EQU	$
		LDA	#02H		; door flag set 
		STA	<PWORK6
		STZ	BELFCN
		LDA	<WORKE
		AND	#01110000B
		CMP	#01110000B
		BEQ	PYYO280
		LDA	<WORKE		; naka 2 ten go ?
		AND	#00000111B
		BNE	PYYO260
		LDA	<WORKE		; naka 2 ten door ?
		AND	#01110000B
		BNE	PYYO280
		BRA	PYYO400
PYYO260		EQU	$
;;;;;;;;		JSR	DASHNE		; dash hanekaeri sub
;;;;;;;;		LDA	<PLYMVC
;;;;;;;;		BNE	PYYO280
;;;;;;;;		STZ	<PWORK6
PYYO270		EQU	$
		STZ	<PWORK5		; saka clear !!
		STZ	<PWORK6		; 
		JSR	PYHS000		; x-pos kuikomi hosei set sub
		JMP	>PYHS200	; y-pos kyosei hosei set sub
PYYO280		EQU	$
		LDA	KNBTFG		; difence ken bit on !!
		AND	#00000010B
		BNE	PYYO288
		LDA	<PYMKFG		; muki kotei flag clear
		AND	#11111101B
		STA	<PYMKFG
PYYO288		EQU	$
;
PYYO290		EQU	$
		RTS
;
;************  special BG check hosei set
PYYO400		EQU	$
		LDA	KNBTFG		; difence ken bit on !!
		AND	#00000010B
		BNE	PYYO420
		LDA	<PYMKFG		; muki kotei flag clear
		AND	#11111101B
		STA	<PYMKFG
		STZ	<PWORK6
		STZ	<PLMDCCF	; player BG mode chenge check flag
		STZ	<DRATMV		; door move flag set
PYYO420		EQU	$
		LDA	<WORKE
		AND	#00000010B
		BNE	PYYO440
		LDA	<WORKC		; specilal BG ?
		AND	#00000101B
		BEQ	PYYO440
		STZ	BELFCN
		JSR	SPBGCK1		; special BG hosei sub
		LDA	<PWORK5
		AND	#00FH
		BEQ	PYYO440
		RTS
;
;********** belt conbear bg check
PYYO440		EQU	$
		STZ	<PWORK5
		LDA	<PLBGCKF
		BNE	PYYO448
		LDA	NUKIFG
		AND	#00000111B
		BEQ	PYYO442
		LDA	#001H
		TSB	BELTCN
		BRA	PYYO450
;
PYYO442		EQU	$
		LDA	HAKAFG+1	; nuki belt clear !!
		AND	#00000111B
		BNE	PYYO450
		LDA	<WORKE
		AND	#00000010B
		BNE	PYYO450
		LDA	BELTCN
		AND	#0FEH
		STA	BELTCN
		BRA	PYYO450
;
PYYO448		EQU	$
		LDA	BELTFG
		AND	#00000111B
		BEQ	PYYO44C
		LDA	#002H
		TSB	BELTCN
		BRA	PYYO450
;
PYYO44C		EQU	$
		LDA	BELTCN		; belt clear
		AND	#0FDH
		STA	BELTCN
;
;********** 	coin BG check
PYYO450		EQU	$
		LDA	FTBGON+1
		AND	#00100010B
		BEQ	PYYO45A
		LDX	#000H
		AND	#00100000B
		BEQ	PYYO456
		LDX	#008H
PYYO456		EQU	$
		STX	<WORK0
		STZ	<WORK1
		LDA	<PWORK0
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	>CONCNT		; coin up !!
		CLC
		ADC	#0005H
		STA	>CONCNT
		LDA	<PLYPS1
		CLC
		ADC	!CINYP,Y
		SEC
		SBC	<WORK0
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	!CINXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JSL	>COINCK		; BG chenge sub
;;;;;;;;		JSL	>SDLRCP		; sound (L,R) check sub
;;;;;;;;		ORA	#coins
;;;;;;;;		STA	!SOUND3		; <sound>
		LDA	#coins
		JSR	SDLP13
;
;**********  	move yuka BG check 
PYYO45A		EQU	$
		LDY	#001H
		LDA	BELFLG
		AND	#00100010B
		BEQ	PYYO45C
		AND	#00100000B
		BEQ	PYYO45B
		LDY	#002H
PYYO45B		EQU	$
		STY	BELFCN
		BRA	PYYO460
;
PYYO45C		EQU	$
		LDY	#003H
		LDA	BELFLG+1
		AND	#00100010B
		BEQ	PYYO45E
		AND	#00100000B
		BEQ	PYYO45D
		LDY	#004H
PYYO45D		EQU	$
		STY	BELFCN
		BRA	PYYO460
;
PYYO45E		EQU	$
		LDA	HAKAFG+1
		AND	#00000111B
		BNE	PYYO460
		LDA	<WORKE
		AND	#00000010B
		BNE	PYYO460
		STZ	BELFCN
;
;********** tobiori bg check
PYYO460		EQU	$
		LDA	GAKEFG+1
		AND	#00000111B
		CMP	#00000111B
		BNE	PYYO472
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYYO472
;
		JSR	DASCLR		; DASH clear check sub
		INC	TBRCFG
		LDA	#002H
		STA	<DIEFG
		BRA	PYYO478
;
;********** water bg check
PYYO472		EQU	$
		LDA	PWATER
		AND	#00000111B
		CMP	#00000111B
		BNE	PYYO480
		LDA	WATRFG
		BNE	PYYO480
		LDA	<LNMODE		; tate jump ?
		CMP	#JWMV
		BEQ	PYYO480
;
		LDA	<PLYHN0
		STA	<PLYPS1
		LDA	<PLYHN1
		STA	<PLYPS0
		LDA	<PLXHN0
		STA	<PLXPS1
		LDA	<PLXHN1
		STA	<PLXPS0
;;;;;;;;;		JSL	>PPOSKP		; y,x pos hozon sub
		JSR	DASCLR		; DASH clear check sub
		LDA	<DPSUB		; BG1 check (0-off 1-on)
		BNE	PYYO474
;;;;;;;;		INC	!NSTPFG
		JSL	>TOBIORI	; code henkan
		BRA	PYYO478
;
PYYO474		EQU	$
		LDA	#001H
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		STZ	PYDMBT		; katsugu clear
		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
;
		JSL	>SWSPCL1	; swim flag clear
PYYO478		EQU	$
		LDA	#001H		; muteki set
		STA	MRTKFG
		JSR	PYYOJP		; jump in init. sub
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#jumps
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#jumps
		JSR	SDLP12
		BRA	PYYO500
;
;********** water side bg check
PYYO480		EQU	$
		LDA	WTRSID
		AND	#00000111B
		CMP	#00000111B
		BNE	PYYO500
;
		LDA	WATRFG
		BEQ	PYYO500
		LDA	<DIEFG
		BEQ	PYYO4C0
		LDA	#00000111B
		STA	<WORKE
		BRA	PYYO500
;
PYYO4C0		EQU	$
		JSR	DASCLR		; DASH clear check sub
		LDA	<DIEFG
		BNE	PYYO500
;
		LDA	SWMUKI
		STA	<PLMUKI
		STZ	WATRFG
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
		LDA	#001H		; muteki set
		STA	MRTKFG
		JSR	PYYOJP		; jump in init. sub
;
;********** HOLE bg check
PYYO500		EQU	$
		LDA	<HOLEFG
		AND	#00000101B
		BEQ	PYYO530
		LDA	<WORKE
		AND	#00000010B
		BNE	PYYO530
;
		LDA	<LNMODE
		CMP	#JPMV
		BEQ	PYYO520
		CMP	#JMDM
		BEQ	PYYO520
;
;;;;;;;;		JSR	DASCLR		; DASH clear check sub
		LDA	#09H
		STA	<PLHLFM		; hole down flem set
		STZ	<HOLEFG1	; hole down flag clear
		LDA	#01H
		STA	<HOLEFG2
		LDA	#HLDM
		STA	<LNMODE		; next mode set (to hole shori)
PYYO520		EQU	$
		RTS
;
;************  toge block BG check
PYYO530		EQU	$
		STZ	<HOLEFG2	; hole flag clear
;
		LDA	HAKAFG+1
		AND	#00000111B
		BEQ	PYYO540
;
		LDA	<HANEFG
		ORA	PYFLASH
		ORA	<KAKUMD
		BNE	PYYO53A
;
		LDA	<PLXPS1
		LDY	<PWORK0
		CPY	#002H
		BNE	PYYO536
		AND	#00000100B	; left shori !!
		BEQ	PYYO538
		BRA	PYYO540
PYYO536		EQU	$
		AND	#00000100B
		BEQ	PYYO540
PYYO538		EQU	$
		LDA	PYFLASH
		BNE	PYYO540
		LDA	>ITMTBL8
		TAY
		LDA	!TOGTDT,Y
		STA	!DAMEFG
		JSR	DASCLR
		JSR	KAKU200		; kakuremino clear
		BRL	DSNE700		; hanekaeri flag on !
;
PYYO53A		EQU	$
		LDA	HAKAFG+1
		AND	#00000111B
		STA	<WORKE
;
;************  block BG check
PYYO540		EQU	$ 
		LDA	BGALCKF
		BEQ	PYYO542
		CMP	#004H
		BEQ	PYYO542
		LDA	<PLBGCKF
		BNE	PYYO600
;
PYYO542		EQU	$
		LDA	<BKONFG		; block check
		ORA	<BKONFG+1
		BEQ	PYYO5E0
;
		LDA	<PWORK4		; naname check
		BNE	PYYO5E0
;
		LDA	<BKONFG		; pull block on check
		STA	PLBKFG
;
		DEC	<BLKFLM		; 8 flem ?
		BPL	PYYO600
;
PYYO544		EQU	$
		MEM16
		REP	#00100000B
		LDY	#0FH
		LDA	<BKONFG
PYYO580		EQU	$
		ASL	A
		BCC	PYYO5C0
		PHA
		PHY
		MEM8
		SEP	#00100000B
		JSR	BKONCK		; block max check
		BCS	PYYO58C
		STX	<WORKE
		TYA
		ASL	A
		TAX
		JSR	PYBLST		; initial pos set
		BCS	PYYO58C
		LDA	<WORKE
		ASL	A
		TAY
		JSR	BLOMST		; block oam set
		TYX
		LDY	<PWORK0		; houkou set
		TYA
		ASL	A
		STA	BLKMUKI,X
		STA	BMUKI
		LDA	BLKXPS1,X	; x-pos hozon
		CPY	#02H
		BEQ	PYYO584
		DEC	A
PYYO584		EQU	$
		AND	#00FH
		STA	BLKXPS2,X
PYYO58C		EQU	$
		MEM16
		REP	#00100000B
		PLY
		PLA
PYYO5C0		EQU	$
		DEY
		BPL	PYYO580
		MEM8
		SEP	#00100000B
;
PYYO5E0		EQU	$
		LDA	#BKTIM		; flem init. set
		STA	<BLKFLM
;
;************ X-pos kaidan clear set 
PYYO600		EQU	$
		LDA	<PWORK4
		BNE	PYYO700
		STZ	<PSTPFG
		LDA	<PYSPFG
		CMP	#002H
		BNE	PYYO700
		STZ	<PYSPFG
;
;************ X-pos kuikomi hosei set 
PYYO700		EQU	$
		LDA	<WORKE		; atari ?
		AND	#00000111B
		BNE	PYYO710
		BRL	PYYOA00
;
PYYO710		EQU	$
		LDA	<LNMODE		; swim mode ? [NO:PYYO718]
		CMP	#SWMD
		BNE	PYYO718
;
		LDA	BG1HMC		; scrool ?
		BNE	PYYO718
		JSR	SWSPCL		; swim flag clear sub
;
PYYO718		EQU	$
		LDA	<WORKE
		AND	#00000010B
		BEQ	PYYO71A
		LDA	<WORKE
		PHA
		JSR	TIOICK		; taiatari ooiwa check !!
		JSR	DASHNE		; dash BG atatri check
		PLA
		STA	<WORKE
PYYO71A		EQU	$
		LDA	#01H		; hole down atari flag set
		STA	PKYNOT
		LDA	<WORKE		; all atari ? [NO:PYYO71C]
		AND	#00000111B
		CMP	#00000111B
		BNE	PYYO71C
		JSR	PYHS000
		BRA	PYYO720
;
PYYO71C		EQU	$
		LDA	<PWORK4
		CMP	#02H
		BNE	PYYO71E
PYYO71D		EQU	$
		BRL	PYYOE00
;
PYYO71E		EQU	$
		JSR	PYHS000		; kuikomi hosei set sub
		LDA	<PWORK4
		CMP	#01H
		BEQ	PYYO71D
;
;************ Y-pos hosei check 
PYYO720		EQU	$
		LDA	<WORKE		; yoko atari stop check
		AND	#00000101B
		CMP	#00000101B
		BEQ	PYYO7A0
;
		AND	#00000100B	; up,down hosei check
		BEQ	PYYO760
;
		LDY	#001H
		LDA	<PLXMVC		; up hosei set
		BMI	PYYO730
		EOR	#0FFH
		INC	A
PYYO730		EQU	$
		BPL	PYYO740
		LDY	#0FFH
PYYO740		EQU	$
		STY	<WORK0
		STZ	<WORK1
;
		LDA	<WORKE
		AND	#00000010B
		BNE	PYYO900
		LDA	<PLYPS1		; up dyoo check
		AND	#007H
		BNE	PYYO800
		JSR	TIOICK		; taiatari ooiwa check !!
		JSR	DASHNE		; dash BG atatri check
		BRA	PYYO900
;
PYYO760		EQU	$
		LDY	#001H
		LDA	<PLXMVC		; down hosei set
		BPL	PYYO770
		EOR	#0FFH
		INC	A
PYYO770		EQU	$
		BPL	PYYO780
		LDY	#0FFH
PYYO780		EQU	$
		STY	<WORK0
		STZ	<WORK1
;
		LDA	<WORKE		; player center flag
		AND	#00000010B	; x-pos naka atari ?
		BNE	PYYO900
		LDA	<PLYPS1		; down dyoo check
		AND	#007H
		BNE	PYYO800
PYYO7A0		EQU	$
		JSR	TIOICK		; taiatari ooiwa check !!
		JSR	DASHNE		; dash BG atatri check
		BRA	PYYO900
;
PYYO800		EQU	$
		JSR	PYHS600		; kyosei hosei set sub
		JMP	BGCHCK9		; hoei BG check
;************ atari difence flag set
PYYO900		EQU	$
		LDA	<PWORK0
		ASL	A
		CMP	<PLMKCH		; chara houkou check !
		BNE	PYYOE00
;
		LDA	KNBTFG
		AND	#00000001B
		ASL	A
		TSB	<HANIFG1
;
		LDA	<KENMD
		BNE	PYYO980
		DEC	RASNFM
		BPL	PYYOF00
;
PYYO980		EQU	$
		LDY	KNBTFG
		LDA	FTBGON
		AND	#00100000B
		BEQ	PYYO9C0
		LDA	KNBTFG		; atari ken difence flag set !
		ASL	A
		ASL	A
		ASL	A
		TAY
PYYO9C0		EQU	$
		TYA
		TSB	<HANIFG1	; (M) <--- (A) ORA (M)
		BRA	PYYOE00
;
PYYOA00		EQU	$
		LDA	<PLBGCKF
		BNE	PYYOF00
		LDA	<HANIFG1
		AND	#11110110B
		STA	<HANIFG1	; (M) <--- (A) AND (M)
;
PYYOE00		EQU	$
		LDA	#020H
		STA	RASNFM
		LDA	<HANIFG1
		AND	#11111101B
		STA	<HANIFG1
;
PYYOF00		EQU	$
		RTS
;
;********************************************************************
;*		player chijoo BG yoko check		(PYCJCK)    *
;********************************************************************
PYCJCK		EQU	$
;************ X-pos kaidan clear set 
		LDA	<PWORK4
		BNE	PYCJ080
		STZ	<PSTPFG
		LDA	<PYSPFG
		CMP	#002H
		BNE	PYCJ080
		STZ	<PYSPFG
;************ hole bg check shori
PYCJ080		EQU	$
		LDA	<HOLEFG
		AND	#00000101B
		BEQ	PYCJ200
		LDA	<WORKE
		AND	#00000010B
		BNE	PYCJ200

		LDA	<LNMODE
		CMP	#JPMV
		BEQ	PYCJ100
		CMP	#JMDM
		BEQ	PYCJ100
;
;;;;;;;;		JSR	DASCLR		; DASH clear check sub
		LDA	#09H
		STA	<PLHLFM		; hole down flem set
		STZ	<HOLEFG1	; hole down flag clear
		LDA	#01H
		STA	<HOLEFG2
		LDA	#HLDM
		STA	<LNMODE		; next mode set (to hole shori)
PYCJ100		EQU	$
		RTS
;************ motsu aitem  bg check shori
PYCJ200		EQU	$
		LDA	MTKSFG		; center check
		AND	#00000010B
		BEQ	PYCJ280
		LDA	MTIXFG
		LSR	A
		STA	MTKSNO+1
		BRA	PYCJ2A0
PYCJ280		EQU	$
		STZ	MTKSNO+1
;
PYCJ2A0		EQU	$
;************ water bg check shori
PYCJ300		EQU	$
;;;;;;;;		LDA	ASWFLG
;;;;;;;;		CMP	#001H
;;;;;;;;		BNE	PYCJ320
		LDA	PWATER
		AND	#00000100B
		BEQ	PYCJ400
		BRA	PYCJ340
PYCJ320		EQU	$
		LDA	PWATER
		AND	#00000111B
		CMP	#00000111B
		BNE	PYCJ400
;
PYCJ340		EQU	$
		LDA	WATRFG
		BNE	PYCJ400
		LDA	<DIEFG
		BNE	PYCJ400
;
		JSR	DASCLR		; DASH clear check sub
		JSR	PLKW0C0		; ken move clear !!
		LDA	#001H
		STA	WATRFG
		LDA	<PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1	; swim flag clear
;;;;;;;;		STZ	PYDMBT		; katsugu clear
;;;;;;;;		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<PYSPFG
;
		LDA	ASWFLG		; asase ?
		CMP	#001H
		BNE	PYCJ380
		JSR	KAKU200		; kakuremino clear
		LDA	>ITEMR23
		BEQ	PYCJ380
		LDA	RABFLG		; usagi ? [YES:PYCJ400]
		BNE	PYCJ400
;
		LDA	#SWMD
		STA	<LNMODE
		BRA	PYCJ400
;
PYCJ380		EQU	$
		LDA	<PLYHN0
		STA	<PLYPS1
		LDA	<PLYHN1
		STA	<PLYPS0
		LDA	<PLXHN0
		STA	<PLXPS1
		LDA	<PLXHN1
		STA	<PLXPS0
;;;;;;;;		JSL	>PPOSKP		; y,x pos hozon sub
		LDA	#001H		; muteki set
		STA	MRTKFG
		JSR	PYYOJP		; jump in init. sub
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#jumps
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#jumps
		JSR	SDLP12
;
;************ water side bg check shori
PYCJ400		EQU	$
		LDA	WATRFG
		BEQ	PYCJ420
;
		LDA	GAKEFG+1
		AND	#00000111B
		CMP	#00000111B
		BEQ	PYCJ430
		BRA	PYCJ440
;
PYCJ420		EQU	$
		LDA	GAKEFG
		AND	#01000010B
		BEQ	PYCJ440
PYCJ430		EQU	$
		LDA	#00000111B
		STA	<WORKE
		BRL	PYYO700		; to kuikomi hosei set
;
PYCJ440		EQU	$
		LDA	WTRSID
		AND	#00000111B
		CMP	#00000111B
		BNE	PYCJ500
		LDA	WATRFG
		BEQ	PYCJ500
;
		JSR	DASCLR		; DASH clear check sub
		LDA	<DIEFG
		BNE	PYCJ500
		LDA	SWMUKI
		STA	<PLMUKI
		STZ	WATRFG
		LDA	#WTMV0		; water hahen  set sub
		LDY	#00H		; max 1
		JSL	>WTIMIT
		LDA	#001H		; muteki set
		STA	MRTKFG
		BRL	PYYOJP
;
;************ yoko gake 0 jump shori
PYCJ500		EQU	$
		LDA	GAKEFG+1
		AND	#00000111B
		BEQ	PYCJ600
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCJ600
;
;;;;;;;;		JSL	>PPOSKP		; y,x pos hozon sub
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#jumps
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#jumps
		JSR	SDLP12
;
		LDX	#010H
		LDA	<PWORK0
		AND	#00000001B
		BNE	PYCJ540
		TXA
		EOR	#0FFH
		INC	A
		TAX
PYCJ540		EQU	$
		STX	<PLXSPD
		JSR	DASCLR		; DASH clear check sub
		LDA	#002H
		STA	<DIEFG
		LDA	#014H
		STA	JMPZSP
		STA	JMPZSP1
		LDA	#0FFH
		STA	JMPZPS1
		LDA	#GKYM
		STA	<LNMODE
		LDA	#001H		; muteki set
		STA	MRTKFG
		STA	<PTBIFG
		STZ	<HANIFG1
		STZ	<PYSPFG
		LDA	<GMMODE
		BNE	PYCJ550
		LDA	#002H
		STA	<PLBGCKF
;
PYCJ550		EQU	$
		LDA	<PWORK0
		AND	#11111101B
		ASL	A
		TAY
		LDA	<PLXPS1
		PHA
		LDA	<PLXPS0
		PHA
		JSR	YOGKIT
		LDA	#001H
		STA	<PWORK0
;
		CPX	#0FFH		; kuuhaku noting ? [yes:GKYO180]
		BEQ	PYCJ580
		JSR	GKIMIT2		; y-houkou serch 2 sub
		BRL	PYCJ5C0
PYCJ580		EQU	$
		JSR	GKIMIT		; y-houkou serch 0 sub
PYCJ5C0		EQU	$
		PLA
		STA	<PLXPS0
		PLA
		STA	<PLXPS1
;;;;;;;;		STZ	<PLZPS0
;
		RTS
;
;************ yoko gake jump 1,2 shori
PYCJ600		EQU	$
		LDA	GAKEFG+3
		AND	#01110111B
		BEQ	PYCJ6C0
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCJ6C0
;
;;;;;;;;		JSL	>PPOSKP		; y,x pos hozon sub
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#jumps
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#jumps
		JSR	SDLP12
;
		LDX	#GKY1
		AND	#00000111B
		BNE	PYCJ640
		LDX	#GKY2
PYCJ640		EQU	$
		STX	<LNMODE
;
		LDX	#010H
		LDA	<PWORK0
		AND	#00000001B
		BNE	PYCJ680
		LDX	#0F0H
PYCJ680		EQU	$
		STX	<PLXSPD
		JSR	DASCLR		; DASH clear check sub
		LDA	#002H
		STA	<DIEFG
		LDA	#014H
		STA	JMPZSP
		STA	JMPZSP1
		LDA	#0FFH
		STA	JMPZPS1
		STZ	<HANEFG
		LDA	#001H		; muteki set
		STA	MRTKFG
		STA	<PTBIFG
;;;;;;;;;		STZ	<PLZPS0
		STZ	<HANIFG1
		STZ	<PYSPFG
		RTS
;
;************ yoko naname up gake jump shori
PYCJ6C0		EQU	$
		LDA	GAKEFG+1
		AND	#01110000B
		BEQ	PYCJ700
;
		LDA	GAKEFG+1	; yoko uusen check
		AND	#00000111B
		BNE	PYCJ700
		LDA	GAKEFG+3
		AND	#01110111B
		BNE	PYCJ700
;
		LDA	<LNMODE
		CMP	#GKNY
		BEQ	PYCJ700
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCJ700
;
		LDA	#jumps
		JSR	SDLP12
		JSR	DASCLR		; DASH clear check sub
		LDA	#001H		; muteki set
		STA	MRTKFG
		STZ	<HANIFG1
		STZ	<PYSPFG
		BRL	PYTAJP2
;
;************ yoko naname down gake jump shori
PYCJ700		EQU	$
		LDA	GAKEFG+2
		AND	#00000111B
		BEQ	PYCJ800
;
		LDA	GAKEFG+1	; yoko uusen check
		AND	#00000111B
		BNE	PYCJ800
		LDA	GAKEFG+3
		AND	#01110111B
		BNE	PYCJ800
;
		JSR	PJTMLG		; time lag set SUB
		BCC	PYCJ800
;
		LDX	#010H
		LDA	<PWORK0
		AND	#00000001B
		BNE	PYCJ740
		TXA
		EOR	#0FFH
		INC	A
		TAX
PYCJ740		EQU	$
		STX	<PLXSPD
		JSR	DASCLR		; DASH clear check sub
		LDA	#002H
		STA	<DIEFG
		LDA	#014H
		STA	JMPZSP
		STA	JMPZSP1
		LDA	#0FFH
		STA	JMPZPS1
		LDA	#GKDN
		STA	<LNMODE
		STZ	<HANEFG
		LDA	#001H		; muteki set
		STA	MRTKFG
		STA	<PTBIFG
		STZ	<HANIFG1
		STZ	<PYSPFG
		RTS
;
;************  special BG check hosei set
PYCJ800		EQU	$
		LDA	<WORKE
		AND	#00000010B
		BNE	PYCJ900
;
		LDA	<WORKC		; specilal BG ?
		AND	#00000101B
		BEQ	PYCJ900
		LDA	DASHFG
		BEQ	PYCJ840
		LDA	<PLMKCH
		AND	#00000100B
		BEQ	PYCJ900
PYCJ840		EQU	$
		JSR	SPBGCK1		; special BG hosei sub
		LDA	<PWORK5
		AND	#00FH
		BEQ	PYCJ900
		RTS
;
;************ tege block bg check shori
PYCJ900		EQU	$
		STZ	<PWORK5
;
		LDA	HAKAFG+1
		AND	#00000111B
		BEQ	PYCJA00
;
		LDA	<HANEFG
		ORA	PYFLASH
		ORA	<KAKUMD
		BNE	PYCJ9C0
;
		LDA	<PLXPS1
		LDY	<PWORK0
		CPY	#002H
		BNE	PYCJ940
		AND	#00000100B	; left shori !!
		BEQ	PYCJ980
		BRA	PYCJA00
PYCJ940		EQU	$
		AND	#00000100B
		BEQ	PYCJA00
PYCJ980		EQU	$
		LDA	>ITMTBL8
		TAY
		LDA	!TOGTDT,Y
		STA	!DAMEFG
		JSR	DASCLR
		BRL	DSNE700		; hanekaeri flag on !
;
PYCJ9C0		EQU	$
		LDA	HAKAFG+1
		AND	#00000111B
		STA	<WORKE
;
;************ atari bg check shori
PYCJA00		EQU	$
		BRL	PYYO700		; to kuikomi hosei set
;
;********************************************************************
;*		player BG yoko hosei check	(PYHS000)(PYHS200)  *
;********************************************************************
PYHS000		EQU	$
		MEM16			; kuikomi hosei set
		REP	#00100000B
		LDA	<PLXPS1
		AND	#0007H
		LDY	<PLXMVC
		BPL	PYHS100
		SEC 
		SBC	#0008H
PYHS100		EQU	$
		EOR	#0FFFFH
		INC	A
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		RTS
;
PYHS200		EQU	$		; kyosei hosei set
		LDA	<WORKE
		AND	#00000100B
		BEQ	PYHS400
;
		LDY	#001H
		LDA	<PLXMVC
		BMI	PYHS300
		EOR	#0FFH
		INC	A
PYHS300		EQU	$
		BPL	PYHS340
		LDY	#0FFH
PYHS340		EQU	$
		STY	<WORK0
		STZ	<WORK1
		BRA	PYHS600
;
PYHS400		EQU	$
		LDY	#001H
		LDA	<PLXMVC
		BPL	PYHS500
		EOR	#0FFH
		INC	A
PYHS500		EQU	$
		BPL	PYHS540
		LDY	#0FFH
PYHS540		EQU	$
		STY	<WORK0
		STZ	<WORK1
;
PYHS600		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CMP	#0080H
		BCC	PYHS700
		ORA	#0FF00H
PYHS700		EQU	$
		CLC			; hosei set
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
;
		RTS
;
;********************************************************************
;*		player BG yoko hosei check		(PYDS000)   *
;********************************************************************
PYDS000		EQU	$		; kyosei hosei set
		LDA	#00000010B	; houkou kotei set
		TSB	<PYMKFG		; (M) <--- (A) ORA (M)
;
		LDA	<WORKE		; door bit kai 4 set
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		ORA	<WORKE		; atari bit set
		AND	#0FH
		STA	<WORK0		; atar,door bit set
;
		AND	#00000111B
		BNE	PYDS100
		STZ	<PWORK6		; soto door flag clear !
		BRA	PYDS800
;
PYDS100		EQU	$
		LDA	<PLYPS1		; hosei up or down ?
		CMP	#080H
		BCC	PYDS400
;
		LDA	<PLXMVC
		BMI	PYDS300
		EOR	#0FFH
		INC	A
PYDS300		EQU	$
		STA	<WORK0
		STZ	<WORK1
		LDY	#00H		; muki up set
		BRA	PYDS600
;
PYDS400		EQU	$
		LDA	<PLXMVC
		BPL	PYDS500
		EOR	#0FFH
		INC	A
PYDS500		EQU	$
		STA	<WORK0
		STZ	<WORK1
		LDY	#02H		; muki down set
;
PYDS600		EQU	$
		LDA	<PYMKFG
		AND	#00000001B
		BNE	PYDS640
		STY	<PLMKCH		; up,down muki set
PYDS640		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CMP	#0080H
		BCC	PYDS700
		ORA	#0FF00H
PYDS700		EQU	$
		CLC			; hosei set
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
;
PYDS800		EQU	$
		RTS
;
;********************************************************************
;*		player jump shori set sub		(PYYOJP)    *
;********************************************************************
JPYODT		EQU	$		; jump kyori data
		BYTE	01CH,018H	; 0,1
;;;;;;;;		BYTE	010H,018H	; 0,1
		BYTE	010H		; chijoo
JPZPDT1		EQU	$		; jump takasa data
		BYTE	020H,018H	; 0,1
;;;;;;;;		BYTE	018H,018H	; 0,1
		BYTE	018H		; chijoo
JPHNDT1		EQU	$		; jump haneru data
		BYTE	010H,010H
		BYTE	010H		; chijoo
PYYOJP		EQU	$
		LDA	<GMMODE		; chijoo ? [NO:PYYP040]
		BNE	PYYP040
		LDX	#002H
		BRA	PYYP080
;
PYYP040		EQU	$
		LDX	<DPSUB
		LDA	TBRCFG
		BEQ	PYYP080
		LDX	#000H
PYYP080		EQU	$
		STX	<WORK0
;
		LDA	!JPYODT,X
		TAX
		LDA	<PWORK0
		AND	#00000001B
		BNE	PYYP100
		TXA
		EOR	#0FFH
		INC	A
		TAX
PYYP100		EQU	$
		STX	<PLXSPD
		STZ	<PLYSPD
		LDX	<WORK0
		LDA	!JPZPDT1,X
		STA	<PLZSPD
		STA	PLZSPD1
		LDA	!JPHNDT1,X
		STA	<HANEFG
		LDA	<DIEFG
		CMP	#002H
		BEQ	PYYP200
		LDA	#001H
		STA	<DIEFG
		STZ	PIPIFG
;;;;;;;;		LDA	#JMDM
PYYP200		EQU	$
		LDA	#JWMV
		STA	<LNMODE
		RTS
;
;
;********************************************************************
;*		player BG special check			(PYSPCK)    *
;********************************************************************
SPLXDT		EQU	$		; hosei ryoo + x-data
;					   0	1	 2	  3	   4	5    6	 7	   8    9
		BYTE	000H,001H,001H,001H,002H,002H,002H,003H,003H,003H
SPLXDT1		EQU	$		; hasei ryoo - x-data
		BYTE	000H,0FFH,0FFH,0FFH,0FEH,0FEH,0FEH,0FDH,0FDH,0FDH
SPLYDT		EQU	$		; hasei ryoo + y-data
		BYTE	000H,000H,000H,001H,001H,001H,002H,002H,002H,003H
SPLYDT1		EQU	$		; hasei dyoo - y-data
		BYTE	000H,001H,001H,002H,002H,002H,003H,003H,003H,003H
;
PYSPCK		EQU	$
		LDA	<PLYMVC		; naname check
		BEQ	PYSL010
		LDA	<PLXMVC
		BNE	PYSL050
PYSL010		EQU	$
		BRL	PYSL900
;
PYSL050		EQU	$
		LDA	<PLYPS1		; Y-pos hozon
		STA	PYHZN1
		LDA	<PLYPS0
		STA	PYHZN0
		LDA	<PLXPS1		; X-pos hozon 
		STA	PXHZN1
		LDA	<PLXPS0
		STA	PXHZN0
;
		LDY	#004H
		LDA	<PLXMVC
		BMI	PYSL100
		LDY	#006H
;
PYSL100		EQU	$
		JSR	BGCHCK1		; Y-pos BG check sub
;
		LDA	<WORKC		; specilal BG ?
    		AND	#00000101B
		BEQ	PYSL120
		JSR	SPBGCK1		; special BG hosei sub
		LDA	<PWORK5
		AND	#0FH
		BNE	PYSL140
PYSL120		EQU	$
		BRL	PYSL900
;
PYSL140		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		SEC
		SBC	PXHZN1
		STA	<WORK0
		LDA	PXHZN1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		LDA	<WORK0
		STA	<PLXMVC
;
PYSL200		EQU	$		; tate ON !
		LDY	#000H		; up,down ?
		LDA	<PLYMVC
		BMI	PYSL300
		LDY	#002H
;
PYSL300		EQU	$
		JSR	BGCHCK		; BG check sub
;
		LDA	<WORKC		; specilal BG ?
		AND	#00000101B
		BEQ	PYSL900
		JSR	SPBGCK		; special BG hosei sub
		LDA	<PWORK5
		AND	#0FH
		BEQ	PYSL900
		LDA	<PWORK5
		STA	<PWORK7
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	PYHZN1
		STA	<WORK0
		MEM8
		SEP	#00100000B
;
		LDA	<WORK0
		STA	<PLYMVC
;
		LDY	<PLXMVC
		BMI	PYSL400
		LDA	!SPLXDT,Y
		BRA	PYSL500
PYSL400		EQU	$
		TYA
		EOR	#0FFH
		INC	A
		TAY
		LDA	!SPLXDT1,Y
PYSL500		EQU	$
		MEM16
		REP	#00100000B
		AND	#00FFH
		CMP	#0080H
		BCC	PYSL540
		ORA	#0FF00H
PYSL540		EQU	$
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
;
		LDY	<PLYMVC
		BMI	PYSL600
		LDA	!SPLYDT,Y
		BRA	PYSL700
PYSL600		EQU	$
		TYA
		EOR	#0FFH
		INC	A
		TAY
		LDA	!SPLYDT1,Y
PYSL700		EQU	$
		MEM16
		REP	#00100000B
		AND	#00FFH
		CMP	#0080H
		BCC	PYSL740
		ORA	#0FF00H
PYSL740		EQU	$
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		BRA	PYSLA00
;
PYSL900		EQU	$
		STZ	<PWORK7
PYSLA00		EQU	$
		STZ	<PWORK5
		RTS
;
;										
;********************************************************************
;*		BG check sub				(BGCHCK)    *
;********************************************************************
CHKPT1		EQU	$		; Y-pos add data
		WORD	00008H,00018H,00000H,0000FH
CHKPT2		EQU	$		; X-pos add data 1
		WORD	00000H,00000H,00008H,00008H
CHKPT3		EQU	$		; X-pos add data 2
		WORD	00008H,00008H,00010H,00010H
CHKPT4		EQU	$		; X-pos add data 3
		WORD	0000FH,0000FH,00017H,00017H
CHKPT5		EQU	$		; X-pos add data 4
		WORD	00000H,00000H,0001FH,0001FH
;										; naname add data
CHKPT6		EQU	$		; Y-pos add data 1
		WORD	00007H,00018H,0FFFFH,00010H
CHKPT7		EQU	$		; X-pos add data 2
		WORD	00000H,00000H,00008H,00008H
CHKPT8		EQU	$		; X-pos add data 3
		WORD	0000FH,0000FH,00017H,00017H
;										; yoko center bg check
CHKPT9		EQU	$		; X-pos add data
		WORD	00000H,00000H,00000H,0000FH
CHKPT10		EQU	$		; Y-pos add data 1
		WORD	00000H,00000H,00012H,00012H
;
BGCHCK		EQU	$
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		STZ	<HOLEFG		; hole flag clear
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan
		CLC
		ADC	!CHKPT1,Y	; add surch Y-point
		STA	<PLHNL0		; y-pos hozon
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room Y-pos set
;
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!CHKPT2,Y	; add surch X-point 1
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set 1
		LDA	<PLXPS1
		CLC
		ADC	!CHKPT3,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK4		; room X-pos set 2
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 3
		CLC
		ADC	!CHKPT4,Y	; add surch X-point 3
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<BMWORK+2
;
		IDX16
		REP	#00010000B
		LDA	#0001H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK2
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		LDA	<BMWORK+2
		STA	<WORK2
		LDA	#004H
		STA	<WORKA
		JSR	SRPTGT		; surch point BG check
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;										
;************************************************************************
;*		X-pos BG check sub			(BGCHCK1)	*
;************************************************************************
BGCHCK1		EQU	$
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		STZ	<HOLEFG		; hole flag clear
;
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!CHKPT1,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 1
		CLC
		ADC	!CHKPT2,Y	; add surch Y-point 1
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room Y-pos set 1
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!CHKPT3,Y	; add surch X-point 2
		STA	<PLHNL0		; y-pos hozon
		AND	<PSCKRM
		STA	<WORK4		; room X-pos set 2
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 3
		CLC
		ADC	!CHKPT4,Y	; add surch Y-point 3
		STA	<PLHNL1		; y-pos hozon
		AND	<PSCKRM
		STA	<WORK8
;
		IDX16
		REP	#00010000B
		LDA	#0001H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK0
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		LDA	<WORK8
		STA	<WORK0
		LDA	#0004H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;										
;************************************************************************
;*		tate naname BG check sub		(BGCHCK2)	*
;************************************************************************
BGCHCK2		EQU	$
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		STZ	<HOLEFG
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan
		CLC
		ADC	!CHKPT6,Y	; add surch Y-point
		AND	<PSCKRM		; position check ram
;
		STA	<WORK0		; room Y-pos set
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!CHKPT7,Y	; add surch X-point 1
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set 1
		LDA	<PLXPS1
		CLC
		ADC	!CHKPT8,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK4		; room X-pos set 2
;
		IDX16
		REP	#00010000B
		LDA	#0001H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK2
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;										
;************************************************************************
;*		naname yoko BG check sub		(BGCHCK3)	*
;************************************************************************
BGCHCK3		EQU	$
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		STZ	<HOLEFG		; hole flag clear
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!CHKPT6,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 1
		CLC
		ADC	!CHKPT7,Y	; add surch Y-point 1
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room Y-pos set 1
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!CHKPT8,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK4		; room X-pos set 2
;
		IDX16
		REP	#00010000B
		LDA	#0001H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK0
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;************************************************************************
;*		HOLE 4 ten BG check sub			(PLRCHK)	*
;************************************************************************
PLRCHK		EQU	$
		PHB
		PHK
		PLB
;
		JSR	BGCHCK4
;
		PLB
		RTL
;
;************************************************************************
;*		HOLE 4 ten BG check sub			(BGCHCK4)	*
;************************************************************************
BGCHCK4		EQU	$
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!CHKPT2		; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLXPS1		; X-pos ---> room Y-pos henkan 1
		CLC
		ADC	!CHKPT4		; add surch Y-point 1
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK4		; room Y-pos set 1
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!CHKPT2+4	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
		STA	<BMWORK+2
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 3
		CLC
		ADC	!CHKPT4+4	; add surch Y-point 3
		AND	<PSCKRM		; position check ram
		STA	<WORK8
;
BG4K100		EQU	$
		IDX16
		REP	#00010000B
		LDA	#0008H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK8
		STA	<WORK0
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		LDA	<BMWORK+2
		STA	<WORK0
		LDA	<WORK4
		STA	<WORK2
		LDA	#0004H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		LDA	<WORK8
		STA	<WORK0
		LDA	#0001H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;										
;************************************************************************
;*		head 2 ten BG check sub			(BGCHCK5)	*
;************************************************************************
BGCHCK5		EQU	$
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
;
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	#00000H		; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLXPS1		; X-pos ---> room Y-pos henkan 1
		CLC
		ADC	#00008H		; add surch Y-point 1
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK4		; room Y-pos set 1
;
		LDA	<PLZPS1		; z-pos clear
		AND	#00FFH
		CMP	#00FFH
		BNE	BG5C100
		LDA	#0000H
BG5C100		EQU	$
		CLC
		ADC	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
;
		IDX16
		REP	#00010000B
		LDA	#0001H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK2
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
BG5C200		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;************************************************************************
;*		foot 1 ten BG check sub			(BGCHCK6)	*
;*		Y <---- 0     foot check				*
;*		Y <---- 1     ken saki  check				*
;*		Y <---- 2     scop saki  check				*
;*		Y <---- 3     hanmer saki  check			*
;*		Y <---- 4     player center check			*
;*		Y <---- 5     foot check (bg surch)			*
;*		Y <---- 6     level up ken saki check			*
;*		Y <---- 7     dash ken saki check			*
;*		Y <---- 8     kaiten ken saki check			*
;************************************************************************
FTYPSD		EQU	$
;			    up   down   left  right
		WORD	00014H,00014H,00014H,00014H	;0 foot check
		WORD	00004H,0001CH,00010H,00010H	;1 ken check
		WORD	00016H,00016H,00016H,00016H	;2 scop check
		WORD	00004H,00018H,00010H,00010H	;3 hanmer  check
		WORD	00010H,00010H,00010H,00010H	;4 player center check
		WORD	00014H,00014H,00017H,00017H	;5 foot center check
		WORD	0FFFCH,00024H,00010H,00010H	;6 level up ken check
		WORD	00004H,0001CH,00010H,00010H	;7 dash ken check
		WORD	00004H,0001CH,00010H,00010H	;8 kaiten ken check
		WORD	00004H,00004H,0001CH,0001CH	;      "      naname check 
FTXPSD		EQU	$
		WORD	00008H,00008H,00008H,00008H
		WORD	00006H,00008H,0FFFFH,00016H
		WORD	00013H,00013H,00000H,00013H
		WORD	00006H,00008H,0FFFFH,00016H
		WORD	00008H,00008H,00008H,00008H
		WORD	00008H,00008H,00000H,0000FH
		WORD	00006H,00008H,0FFF6H,0001DH
		WORD	00006H,00008H,0FFFAH,00016H
		WORD	00006H,00008H,0FFFCH,00016H
		WORD	0FFFCH,00016H,0FFFCH,00016H
DYUKDT		EQU	$
		HEX	008,008,008
KAIHKD		EQU	$
;			  2   3   4   5   6   7   8   9   
		HEX	00A,006,00E,002,00C,004,008,000
BGCHCK6		EQU	$
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
;
		STY	<WORK0
		CPY	#008H
		BNE	BG6K040
		LDA	KNSPMD
		AND	#00FFH
		DEC	A
		DEC	A
		BMI	BG6K110
		CMP	#008H
		BCS	BG6K110
		PHY
		TAY
		LDA	!KAIHKD,Y
		AND	#00FFH
		CLC
		ADC	#0040H
		TAY
		BRA	BG6K080		
BG6K040		EQU	$
		PHY
		LDA	<WORK0
		AND	#00FFH
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	<PLMKCH
		TAY
;				
BG6K080		EQU	$
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!FTXPSD,Y		; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	FTYPSD,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
		LDA	#0001H		; check on,off flag set
		STA	<WORKA
		PLY
		IDX16
		REP	#00010000B
		TYA
		CMP	#0001H
		BEQ	BG6K100
		CMP	#0002H
		BEQ	BG6K100
		CMP	#0003H
		BEQ	BG6K100
		CMP	#0006H
		BEQ	BG6K100
		CMP	#0007H
		BEQ	BG6K100
		CMP	#0008H
		BEQ	BG6K100
;
		PHY
		JSR	SRPTGT		; surch point get, bg check
		PLY
		BRA	BG6K200
;
BG6K100		EQU	$
		IDX8
		MEM8
		SEP	#00110000B
		JSR	SRPTGT2		; ken,scop point get,bg check sub
BG6K110		EQU	$
		IDX8
		MEM8
		SEP	#00110000B
BG6K120		EQU	$
		BRL	BG6KF00
;
BG6K200		EQU	$
		IDX8
		MEM8
		SEP	#00110000B
;
		CPY	#005H
		BEQ	BG6K120
;
		LDA	KUSAFG
		AND	#00010000B
		BEQ	BG6K300
		LDA	<PLYPS1		; player pos check 
		CLC
		ADC	#008H
		AND	#00001111B
		CMP	#004H
		BCC	BG6K220
		CMP	#00BH
		BCC	BG6K280
BG6K220		EQU	$
		LDA	<PLXPS1
		AND	#00001111B
		CMP	#004H
		BCC	BG6K240
		CMP	#00CH
		BCC	BG6K280
;
BG6K240		EQU	$
		LDA	PYFLASH
		BNE	BG6K280
		LDA	<DIEFG
		BNE	BG6K280
		LDA	<GMMODE		; chijoo ? [yes:BG6K260]
		BEQ	BG6K260
		JSL	>MPBTSET1	; map on/off bit set
		LDA	#033H
		JSR	SDLP12
		STZ	<PYSPFG
		LDA	#p1_dwrp	; danjon warp set
		STA	<GAMEMD
		LDA	<RMXYCT
		STA	<BKRMPT
		LDA	>HLGOTO		; chikei goto set
		STA	<RMXYCT
		JSR	PLHD100
		BRA	BG6K280
BG6K260		EQU	$
		LDA	TRIFFG
		BNE	BG6K280
		JSR	TRIF080		; warp init. set
BG6K280		EQU	$
		BRL	BG6K900
;
BG6K300		EQU	$
		STZ	TRIFFG
		LDA	KUSAFG		; kusa check 
		AND	#00000001B
		BEQ	BG6K400
		LDA	#002H		; kusa flag set
		STA	ASWFLG
		JSR	BG6SUND
		BCS	BG6K340
		LDA	<DIEFG
		BNE	BG6K340
		LDA	#kusas
		JSR	SDLP12
BG6K340		EQU	$
		BRL	BG6KF00
;
BG6K400		EQU	$
		LDA	WTASFG		; asai water check
		AND	#00000001B
		BEQ	BG6K500
		LDA	#001H		; asai water flag set
		STA	ASWFLG
		LDA	<GMMODE
		BNE	BG6K420
		LDA	WATRFG		; water in ?
		BEQ	BG6K420
		LDA	RABFLG		; usagi ? [yes:BG6K420]
		BNE	BG6K420
		LDA	>ITEMR23
		BEQ	BG6K340
		STZ	WATRFG
		LDA	SWMUKI
		STA	<PLMUKI
		LDA	#LNMD
		STA	<LNMODE
		BRL	BG6KF00
BG6K420		EQU	$
		JSR	BG6SUND
		BCS	BG6K430
		LDA	<MPDTNO		; numa sound ? [NO:BG6K428]
		CMP	#070H
		BNE	BG6K428
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check sub
;;;;;;;;		ORA	#numas
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#numas
		JSR	SDLP12
		BRA	BG6K430
BG6K428		EQU	$
		LDA	<DIEFG
		BNE	BG6K430
;;;;;;;;		JSL	>SDLRCP         ; sound (L,R) check sub
;;;;;;;;		ORA	#watrs
;;;;;;;;		STA	!SOUND2         ; <sound>
		LDA	#watrs
		JSR	SDLP12
BG6K430		EQU	$
		BRL	BG6KF00
;
BG6K500		EQU	$
		LDA	<GMMODE
		BNE	BG6K900
		LDA	WATRFG
		BNE	BG6K900
		LDA	PWATER
		AND	#00000001B
		BEQ	BG6K900
		LDA	#001H		; asai water flag set
		STA	ASWFLG
;
		JSR	BG6SUND
		BCS	BG6K600
		LDA	<MPDTNO		; numa sound ? [NO:BG6K580]
		CMP	#070H
		BNE	BG6K580
		LDA	#numas
		JSR	SDLP12
		BRA	BG6K600
BG6K580		EQU	$
		LDA	<DIEFG
		BNE	BG6K600
		LDA	#watrs
		JSR	SDLP12
BG6K600		EQU	$
		BRL	BG6KF00
;
BG6K900		EQU	$
		STZ	ASWFLG
		LDA	INORNO		; inoru bg check !
		AND	#00000001B
		BEQ	BG6KA00
		LDA	#001H
		STA	INORON
		BRL	BG6KF00
;
BG6KA00		EQU	$
		STZ	INORON
		LDA	INORNO		; damegi yuka check !
		AND	#00010000B
		BEQ	BG6KB00
		STZ	!DAMEFG
		LDA	<KAKUMD
		BNE	BG6KB00
		JSR	BRMVCK		; baria move ? [yes:TAST200]
		BCS	BG6KB00
		LDA	PYFLASH
		BNE	BG6KB00
		STZ	USGOFN
		STZ	USAGTM
		STZ	USAGTM+1
		LDA	>ITMTBL4
		BEQ	BG6KA40
		STZ	<RABIFG
		STZ	RABFLG
BG6KA40		EQU	$
		LDA	>ITMTBL8
		TAY
		LDA	!DYUKDT,Y
		STA	!DAMEFG
		BRL	DASCLR
;
BG6KB00		EQU	$		; ice check
		LDA	PICEFG
		AND	#00010001B
		BEQ	BG6KB80
		LDA	ICEFLAG
		BEQ	BG6KB10
		LDA	<PWORK4
		BEQ	BG6KC00
		LDA	SWMUKI
		STA	<PLMUKI
		BRL	BG6KC00
BG6KB10		EQU	$
		LDA	<PWORK1
		AND	#00001100B
		BEQ	BG6KB20
		LDA	#001H
		STA	SWKASY+1
		LDA	#080H
		STA	SWKASY
BG6KB20		EQU	$
		LDA	<PWORK1
		AND	#00000011B
		BEQ	BG6KB40
		LDA	#001H
		STA	SWKASY+1
		LDA	#080H
		STA	SWKASY
BG6KB40		EQU	$
		LDY	#001H
		LDA	PICEFG
		AND	#00000001B
		BNE	BG6KB60
		LDY	#002H
BG6KB60		EQU	$
		STY	ICEFLAG
		LDA	<PLMUKI
		STA	SWMUKI
		JSL	>SWSPCL1
		BRL	BG6KC00
BG6KB80		EQU	$
		LDA	<LNMODE
		CMP	#SWMD
		BEQ	BG6KBC0
		LDA	ICEFLAG
		BEQ	BG6KBA0
		LDA	SWMUKI
		STA	<PLMUKI
BG6KBA0		EQU	$
		JSL	>SWSPCL1
BG6KBC0		EQU	$
		STZ	ICEFLAG
;
BG6KC00		EQU	$
		LDA	HAKAFG+1
		AND	#00010000B
		BEQ	BG6KD00
		LDA	PYFLASH
		BNE	BG6KD00
		LDA	#DAMGI
		STA	PYFLASH
BG6KD00		EQU	$
;
BG6KF00		EQU	$
		RTS
;
;************************************************************************
;*		sound on,off check sub			(BG6SUND)	*
;************************************************************************
BG6SUND		EQU	$
		LDA	<PWORK1
		AND	#00001111B
		BEQ	BGSDF00
		LDA	<LNMODE
		CMP	#DASH
		BEQ	BGSD100
		LDA	<FCNT
		AND	#00001111B
		BEQ	BGSDE00
		BRA	BGSDF00
BGSD100		EQU	$
		LDA	<FCNT
		AND	#00000111B
		BNE	BGSDF00
;
BGSDE00		EQU	$
		CLC
		RTS
;
BGSDF00		EQU	$
		SEC
		RTS
;
;************************************************************************
;*		1 ten BG check sub			(BGCHCK7)	*
;*		Y <---- 0     block check				*
;************************************************************************
BKYPSD		EQU	$
;			    up   down   left  right
		WORD	0FFFCH,00014H,00004H,00004H	;0 foot check
BKYPSD1		EQU	$
		WORD	0FFFCH,00014H,0000CH,0000CH	;0 foot check
BKXPSD		EQU	$
		WORD	00004H,00004H,0FFFCH,00014H
BKXPSD1		EQU	$
		WORD	0000CH,0000CH,0FFFCH,00014H
BGCHCK7		EQU	$
		MEM16
		REP	#00100000B
		TYA
		ASL	A				
		ASL	A
		ASL	A
		STA	<WORKA
		LDA	<PWORK0
		ASL	A
		CLC
		ADC	<WORKA
		TAY
;		
		LDA	<WORK0		
		STA	<WORK8
		LDA	<WORK2
		STA	<WORK4
;
		LDA	<WORK8
		CLC
		ADC	!BKXPSD,Y		; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<WORK4		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!BKYPSD,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room Y-pos set 2
;
		IDX16
;
		JSR	SRPTGT3		; surch point get, bg check
		BEQ	BG7K100
		CPX	#0009H
		BNE	BG7K400
;
BG7K100		EQU	$
		LDA	<WORK8
		CLC
		ADC	!BKXPSD1,Y		; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<WORK4		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!BKYPSD1,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room Y-pos set 2
		JSR	SRPTGT3		; surch point get, bg check
		BEQ	BG7K300
		CPX	#0009H
		BNE	BG7K400
;
BG7K300		EQU	$
		IDX8
		MEM8
		SEP	#00110000B
		CLC
		RTS
;
BG7K400		EQU	$
		IDX8
		MEM8
		SEP	#00110000B
		SEC
		RTS
;
;************************************************************************
;*		DO key on BG check sub			(BGCHCK8)	*
;************************************************************************
DOKYDT		EQU	$
;			    up   down   left  right
		WORD	00006H,00018H,0000CH,0000CH
;;;;;;;;		WORD	0FFFCH,00024H,0000CH,0000CH
DOKXDT		EQU	$
		WORD	00007H,00007H,0FFFDH,00010H
;;;;;;;;		WORD	00007H,00007H,0FFF4H,0001CH
MOTCHK		EQU	$			; mochiage check
;			 54  52  50  51  53  55  56
		HEX	000,001,000,000,002,001,002
MOTCHK1		EQU	$
		HEX	002,003,001,004,000,005,006
BGCHCK8		EQU	$
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
;
		LDA	<PLMKCH
		TAY
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!DOKYDT,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
;					center y-pos set
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	#00014H		; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK4		; room X-pos set 2
;
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!DOKXDT,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;					center x-pos set
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	#00008H		; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK8		; room X-pos set
;
		LDA	#0001H		; check on,off flag set
		STA	<WORKA
		IDX16
		REP	#00010000B
;
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK0
		LDA	<WORK8
		STA	<WORK2
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
;
		IDX8
		MEM8
		SEP	#00110000B
		LDX	#DASH0		; dash set
;;;;;;;;		LDA	KUSAFG		; horu check
;;;;;;;;		ORA	SHIBFG
;;;;;;;;		AND	#00000001B
;;;;;;;;		BEQ	BG8K300
;;;;;;;;		LDX	#HORU0
;;;;;;;;BG8K300		EQU	$
;;;;;;;;		LDA	<HANIFG1
;;;;;;;;		AND	#00000010B
;;;;;;;;		BNE	BG8K340
		LDA	<WORKE		; hiku set
		ORA	GAKEFG
		AND	#00000001B
		BEQ	BG8K400
BG8K340		EQU	$
		LDX	#HIKU0
;
BG8K400		EQU	$
		LDA	<GMMODE
		BEQ	BG8K430
		PHX
		JSL	>BLKSCHK	; mochoage check
		BCC	BG8K420
		PLX
		AND	#00FH
		TAY
		LDA	!MOTCHK1,Y
		STA	MTKSNO
		TAY
BG8K410		EQU	$
		BRA	BG8K480
;
BG8K420		EQU	$
		PLX
		LDA	MTKSFG
		AND	#00000001B
		BEQ	BG8K42C
		LDA	<PLMKCH		; yomu ?
		BNE	BG8K42C
		LDA	MTIXFG
		BNE	BG8K42C
		LDX	#YOMU0
BG8K42C		EQU	$
		BRA	BG8KC00
;
BG8K430		EQU	$
		LDA	MTKSFG		; katsugu check
		AND	#00000001B
		BEQ	BG8KC00
;
		LDA	<PLMKCH		; yomu ?
		BNE	BG8K440
		LDA	MTIXFG
		BNE	BG8K440
		LDX	#YOMU0
		BRA	BG8KC00
BG8K440		EQU	$
		LDA	MTIXFG
		LSR	A
		STA	MTKSNO
		TAY
BG8K480		EQU	$
		LDA	!MOTCHK,Y
		SEC
		SBC	>ITEMR21
		BEQ	BG8K500
		BPL	BG8KC00
BG8K500		EQU	$
		LDX	#TSUK0
;
BG8KC00		EQU	$
		LDA	BATMFG
		AND	#00000001B
		BEQ	BG8KD00
		LDX	#OPEN0
;
BG8KD00		EQU	$
		RTS
;
;************************************************************************
;*		hosei BG check sub			(BGCHCK9)	*
;************************************************************************
HOKYDT		EQU	$		; hosei data
;			           up          down
		WORD	00008H,00008H,00017H,00017H	; left,right
;				 left	      right
		WORD	00008H,00017H,00008H,00017H	; up,down
HOKXDT		EQU	$
		WORD	00000H,0000FH,00000H,0000FH
		WORD	00000H,00000H,0000FH,0000FH
HOKYDT1		EQU	$
		WORD	00017H,00017H,00008H,00008H
		WORD	00008H,00017H,00008H,00017H
HOKXDT1		EQU	$
		WORD	00000H,0000FH,00000H,0000FH
		WORD	0000FH,0000FH,00000H,00000H
BGCHCK9		EQU	$
		LDA	<WORK0
		PHA
		LDA	<PWORK0
		AND	#00000010B
		BNE	BG9K120
;
		LDX	#000H
		LDA	<PWORK0
		AND	#00000001B
		BEQ	BG9K020
		LDX	#004H
;
BG9K020		EQU	$
		LDY	#000H
		LDA	<WORKE
		AND	#00000100B
		BNE	BG9K100
		LDY	#002H
BG9K100		EQU	$
		STY	<WORK0
		BRA	BG9K170
;
BG9K120		EQU	$
		LDX	#008H
		LDA	<PWORK0
		AND	#00000001B
		BEQ	BG9K140
		LDX	#00CH
;
BG9K140		EQU	$
		LDY	#000H
		LDA	<WORKE
		AND	#00000100B
		BNE	BG9K160
		LDY	#002H
BG9K160		EQU	$
		STY	<WORK0
		
BG9K170		EQU	$
		TXA
		CLC
		ADC	<WORK0
		TAY
;
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!HOKYDT,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
;					center y-pos set
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!HOKXDT,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!HOKYDT1,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK4		; room X-pos set 2
;					center y-pos set
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!HOKXDT1,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK8		; room X-pos set
;
		LDA	#0001H		; check on,off flag set
		STA	<WORKA
		IDX16
		REP	#00010000B
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK0
		LDA	<WORK8
		STA	<WORK2
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		IDX8
		MEM8
		SEP	#00110000B
		PLA
		STA	<WORK0
;
		LDA	<WORKE
		ORA	GAKEFG+1
		AND	#00000011B
		BNE	BG9K180
		LDA	GAKEFG
		ORA	GAKEFG+3
		AND	#00110011B
		BEQ	BG9K800
;
BG9K180		EQU	$
		LDY	#000H
		LDA	<WORK0
		EOR	#0FFH
		INC	A
		STA	<WORK0
		CMP	#080H
		BCC	BG9K200
		LDY	#0FFH
BG9K200		EQU	$
		STY	<WORK1
;
		LDA	<PWORK0
		AND	#00000010B
		BEQ	BG9K300
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		BRA	BG9K800
BG9K300		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
;
BG9K800		EQU	$
		MEM8
		SEP	#00100000B
		RTS
;
;************************************************************************
;*		foot stick bg check sub			(BGCHCKA)	*
;************************************************************************
FSIKYD		EQU	$
;			           up          down
		WORD	00000H,00000H,00007H,00007H
;				 left 	      right
		WORD	00000H,0000FH,00000H,0000FH
FSIKXD		EQU	$
		WORD	00000H,0000FH,00000H,0000FH
		WORD	00000H,00000H,00008H,00008H
BGCHCKA		EQU	$
		PHB
		PHK
		PLB
		LDA	<RMXYCT
		PHA
		LDA	<PLBGCKF
		PHA
		LDA	BUMODE,X
		BEQ	BGAK400
;
		LDA	!FLCKFG
		BNE	BGAK200
		LDA	<RMXYCT
		CLC
		ADC	#010H
		STA	<RMXYCT
BGAK200		EQU	$
		LDA	<PLBGCKF
		EOR	#00000001B
		STA	<PLBGCKF
;
BGAK400		EQU	$
		LDA	BMYPSL,X
		STA	<WORK4
		LDA	BMYPSH,X
		STA	<WORK5
		LDA	BMXPSL,X
		STA	<WORK8
		LDA	BMXPSH,X
		STA	<WORK9
		LDA	BMMUKI,X
		ASL	A
		ASL	A
		STA	<BMWORK+1
;
		PHX
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		MEM8
		SEP	#00100000B
		LDA	!BGALCKF
		CMP	#002H
		BNE	BGAK500
		LDA	<WORK4
		PHA
		LDA	<WORK5
		PHA
		LDA	<WORK8
		PHA
		LDA	<WORK9
		PHA
		LDA	#001H
		STA	<PLBGCKF
		MEM16
		REP	#00100000B
		LDA	<SCCV1
		SEC
		SBC	<SCCV2
		CLC
		ADC	<WORK4
		STA	<WORK4
		LDA	<SCCH1
		SEC
		SBC	<SCCH2
		CLC
		ADC	<WORK8
		STA	<WORK8
		MEM8
		SEP	#00100000B
		JSR	BGAPGT
		PLA
		STA	<WORK9
		PLA
		STA	<WORK8
		PLA
		STA	<WORK5
		PLA
		STA	<WORK4
		STZ	<PLBGCKF
;
BGAK500		EQU	$
		JSR	BGAPGT
;
		PLX
		PLA
		STA	<PLBGCKF
		PLA
		STA	<RMXYCT
;
		PLB
		RTL
;
;
;************************************************************************
;*		foot stick bg check sub			(BGCHCKA)	*
;************************************************************************
BGAPGT		EQU	$
		MEM16
		REP	#00100000B
		LDA	<BMWORK+1
		TAY
;
		LDA	<WORK4		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!FSIKYD,Y		; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
;					center y-pos set
		LDA	<WORK4		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!FSIKYD+2,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK4		; room X-pos set 2
;
		LDA	<WORK8		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!FSIKXD,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;					center x-pos set
		LDA	<WORK8		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!FSIKXD+2,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK8		; room X-pos set
;
		IDX16
		REP	#00010000B
;
		LDA	#0001H		; check on,off flag set
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
		LDA	<WORK4
		STA	<WORK0
		LDA	<WORK8
		STA	<WORK2
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
;
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;************************************************************************
;*		DOOR hosei BG check sub			(BGCHCKB)	*
;************************************************************************
HOYDRDT		EQU	$		
		WORD	00008H,00017H,00010H,00010H
HOXDRDT		EQU	$
		WORD	00008H,00008H,00000H,0000FH
BGCHCKB		EQU	$
		LDA	<WORK0
		PHA
		LDA	<PWORK0
		AND	#00000010B
		BEQ	BGBK020
		LDY	#002H
		LDA	<PLYPS1
		CMP	#080H
		BCC	BGBK040
		LDY	#000H
		BRA	BGBK040
;
BGBK020		EQU	$
		LDY	#006H
		LDA	<PLXPS1
		CMP	#080H
		BCC	BGBK040
		LDY	#004H
;
BGBK040		EQU	$
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!HOYDRDT,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
;					center y-pos set
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!HOXDRDT,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	#0001H		; check on,off flag set
		STA	<WORKA
		IDX16
		REP	#00010000B
		JSR	SRPTGT		; surch point get, bg check
		IDX8
		MEM8
		SEP	#00110000B
;
		PLA
		STA	<WORK0
;
		LDA	<WORKE
		ORA	GAKEFG+1
		AND	#00000011B
		BNE	BGBK180
		LDA	GAKEFG
		ORA	GAKEFG+3
		AND	#00110011B
		BEQ	BGBK800
;
BGBK180		EQU	$
		LDY	#000H
		LDA	<WORK0
		EOR	#0FFH
		INC	A
		STA	<WORK0
		CMP	#080H
		BCC	BGBK200
		LDY	#0FFH
BGBK200		EQU	$
		STY	<WORK1
;
		LDA	<PWORK0
		AND	#00000010B
		BEQ	BGBK300
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		BRA	BGBK800
BGBK300		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
;
BGBK800		EQU	$
		MEM8
		SEP	#00100000B
		RTS
;
;************************************************************************
;*		traiforse warp 4 ten BG check sub	(BGCHCKC)	*
;************************************************************************
BGCHCKC		EQU	$
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	#00002H		; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLXPS1		; X-pos ---> room Y-pos henkan 1
		CLC
		ADC	#0000DH		; add surch Y-point 1
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK4		; room Y-pos set 1
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	#0000AH		; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
		STA	<BMWORK+2
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 3
		CLC
		ADC	#00015H		; add surch Y-point 3
		AND	<PSCKRM		; position check ram
		STA	<WORK8
;
		BRL	BG4K100
;
		MEM8
;
;************************************************************************
;*		door ken check BG check sub		(BGCHCKD)	*
;************************************************************************
BGDCYPD		EQU	$
		WORD	0FFFFH,00018H		; up,down
		WORD	00010H,00010H		; left,right
BGDCXPD		EQU	$
		WORD	00008H,00008H		; up,down
		WORD	0FFFFH,00010H		; left,right
BGCHCKD		EQU	$
		STZ	<HOLEFG		; hole flag clear
		MEM16
		REP	#00100000B
		JSR	CKFGCR		; check flag all clear sub  
		TXA
		AND	#00FFH
		DEC	A
		ASL	A
		ASL	A
		TAY
		LDA	<PLXPS1		; X-pos ---> room X-pos henkan 1
		CLC
		ADC	!BGDCXPD,Y	; surch point add
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; room X-pos set
;
		LDA	<PLXPS1		; X-pos ---> room Y-pos henkan 1
		CLC
		ADC	!BGDCXPD+2,Y	; add surch Y-point 1
		AND	<PSCKRM		; position check ram
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK4		; room Y-pos set 1
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 2
		CLC
		ADC	!BGDCYPD,Y	; add surch X-point 2
		AND	<PSCKRM		; position check ram
		STA	<WORK0		; room X-pos set 2
;
		LDA	<PLYPS1		; Y-pos ---> room Y-pos henkan 3
		CLC
		ADC	!BGDCYPD+2,Y	; add surch Y-point 3
		AND	<PSCKRM		; position check ram
		STA	<WORK8
;
		IDX16
		REP	#00010000B
		LDA	#0001H
		STA	<WORKA
		JSR	SRPTGT		; surch point get, bg check
;
		LDA	<WORK4
		STA	<WORK2
		LDA	<WORK8
		STA	<WORK0
		LDA	#0002H
		STA	<WORKA
		JSR	SRPTGT		; surch point get. bg check
;
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;************************************************************************
;*		check flag all clear			(CKFGCR)	*
;************************************************************************
CKFGCR		EQU	$
		MEM16
		STZ	<WORKC
		STZ	<WORKE		; check flag clear
		STZ	<BGCRNO		; special BG sub flag clear
		STZ	<KDFGST		; kaidan flag clear
		STZ	KDATFG		; auto kaidan flag clear
		STZ	<BKONFG		; block bit on flag clear
		STZ	<DRMKFG		; door muki flag clear
		STZ	BELTFG		; belt conbear flag clear
		STZ	PWATER		; water flag clear
		STZ	WTRSID		; water side flag clear
		STZ	PICEFG		; ice flag clear
		STZ	NUKIFG		; nuki flag clear
		STZ	KUSAFG		; kusa flag clear
		STZ	WTASFG		; asai water flag clear
		STZ	SHIBFG		; shibafu flag clear
		STZ	MTKSFG		; motsu aitem flag clear
		STZ	GAKEFG		; gake flag clear
		STZ	GAKEFG+2	; gake flag clear
		STZ	BATMFG		; takara bako flag clear
		STZ	HAKAFG		; haka flag clear
		STZ	INORNO		; haka flag clear
		STZ	FTBGON		; fotshot flag clear
		STZ	BELFLG		; move yuka flag clear
		MEM8
		RTS
;
;
;
;************************************************************************
;*		surch point get, BG check		(SRPTGT)	*
;************************************************************************
SRPTTBL		EQU	$
;		00	     0      1      2      3      4      5      6      7
		WORD	SRB000,SRB001,SRB001,SRB001,SRB001,SRB000,SRB000,SRB000
		WORD	SRB00D,SRB016,SRB00E,SRB001,SRB009,SRB01D,SRB00A,SRB00B
;		10
		WORD	SRB003,SRB003,SRB003,SRB003,SRB000,SRB000,SRB000,SRB000
		WORD	SRB002,SRB002,SRB002,SRB002,SRB00F,SRB004,SRB005,SRB005
;		20
		WORD	SRB008,SRB000,SRB006,SRB000,SRB000,SRB000,SRB001,SRB01E
		WORD	SRB505,SRB504,SRB506,SRB506,SRB507,SRB508,SRB507,SRB508
;		30
		WORD	SRB007,SRB007,SRB007,SRB007,SRB007,SRB007,SRB007,SRB007
		WORD	SRB000,SRB000,SRB000,SRB000,SRB000,SRB01A,SRB01B,SRB01B
;		40
		WORD	SRB501,SRB000,SRB000,SRB001,SRB01C,SRB000,SRB50D,SRB000
		WORD	SRB502,SRB000,SRB502,SRB50B,SRB000,SRB000,SRB000,SRB000
;		50
		WORD	SRB503,SRB503,SRB503,SRB503,SRB503,SRB503,SRB503,SRB50E
		WORD	SRB019,SRB019,SRB019,SRB019,SRB019,SRB019,SRB000,SRB000
;		60
		WORD	SRB020,SRB000,SRB000,SRB026,SRB000,SRB000,SRB000,SRB021
		WORD	SRB022,SRB023,SRB024,SRB025,SRB001,SRB001,SRB001,SRB001
;		70
		WORD	SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017
		WORD	SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017
;		80
		WORD	SRB015,SRB015,SRB013,SRB013,SRB015,SRB015,SRB015,SRB015
		WORD	SRB015,SRB015,SRB015,SRB015,SRB015,SRB015,SRB027,SRB027
;		90
		WORD	SRB010,SRB010,SRB010,SRB010,SRB010,SRB010,SRB010,SRB010
		WORD	SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011
;		A0
		WORD	SRB014,SRB014,SRB012,SRB012,SRB014,SRB014,SRB000,SRB000
		WORD	SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011
;		B0
		WORD	SRB008,SRB008,SRB008,SRB008,SRB008,SRB008,SRB008,SRB008
		WORD	SRB008,SRB008,SRB008,SRB008,SRB008,SRB008,SRB000,SRB000
;		C0
		WORD	SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C
		WORD	SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C
;		D0
		WORD	SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000
		WORD	SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000
;		E0
		WORD	SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000
		WORD	SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000,SRB000
;		F0
		WORD	SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F
		WORD	SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F
;
SRPTGT		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		LDA	<GMMODE		; chika check
		BNE	SRP0080
		BRL	SRPTGT1
SRP0080		EQU	$
		IDX8
		MEM16
		REP	#00100000B
		LDA	<DRATMV
		AND	#00FFH		; (DRATMV) <--- (A) AND (DRATMV) 
		STA	<DRATMV		; door auto move flag (b) clear
;
		LDA	<WORK0
		AND	#0FFF8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6		; Y-pos set
;
		LDA	<WORK2		; X-pos set
		AND	#003FH
		CLC
		ADC	<WORK6
		LDX	<PLBGCKF	; 0:BG2 1:BG1 check
		BEQ	SRP0100
		CLC
		ADC	#01000H		; >READBF1
SRP0100		EQU	$
		IDX16
		REP	#00010000B
		TAX
		LDA	>READBF,X
;
SRP0200		EQU	$
		PHA
		LDA	BGOFFG
		AND	#00FFH
		BEQ	SRP0300
		PLA
		LDA	#0000H
		BRA	SRP0400
SRP0300		EQU	$
		PLA
SRP0400		EQU	$
		AND	#00FFH
		STA	<WORK6
		STA	!EXITFG
		STX	<WORKZ
		ASL	A
		TAX
		JMP	(SRPTTBL,X)
;
;************************************************************************
;*		chijoo surch point get, BG check	(SRPTGT1)	*
;************************************************************************
SRPTTBL1	EQU	$
;		00	     0      1      2      3      4      5      6      7
		WORD	SRB500,SRB001,SRB001,SRB001,SRB501,SRB500,SRB500,SRB500
		WORD	SRB00D,SRB016,SRB00E,SRB018,SRB009,SRB01D,SRB00A,SRB00B
;		10
		WORD	SRB003,SRB003,SRB003,SRB003,SRB500,SRB500,SRB500,SRB500
		WORD	SRB002,SRB002,SRB002,SRB002,SRB00F,SRB004,SRB005,SRB005
;		20
		WORD	SRB008,SRB500,SRB006,SRB500,SRB500,SRB500,SRB001,SRB01E
		WORD	SRB505,SRB504,SRB506,SRB506,SRB507,SRB508,SRB507,SRB508
;		30
		WORD	SRB007,SRB007,SRB007,SRB007,SRB007,SRB007,SRB007,SRB007
		WORD	SRB500,SRB500,SRB500,SRB500,SRB500,SRB01A,SRB01B,SRB01B
;		40
		WORD	SRB501,SRB500,SRB50C,SRB001,SRB01C,SRB500,SRB50D,SRB500
		WORD	SRB502,SRB500,SRB502,SRB50B,SRB509,SRB509,SRB50A,SRB50A
;		50
		WORD	SRB503,SRB503,SRB503,SRB503,SRB503,SRB503,SRB503,SRB50E
		WORD	SRB019,SRB019,SRB019,SRB019,SRB019,SRB019,SRB500,SRB500
;		60
		WORD	SRB500,SRB500,SRB500,SRB026,SRB500,SRB500,SRB500,SRB021
		WORD	SRB022,SRB023,SRB024,SRB025,SRB500,SRB500,SRB500,SRB500
;		70
		WORD	SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017
		WORD	SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017,SRB017
;		80
		WORD	SRB015,SRB015,SRB013,SRB013,SRB015,SRB015,SRB015,SRB015
		WORD	SRB015,SRB015,SRB015,SRB015,SRB015,SRB015,SRB027,SRB027
;		90
		WORD	SRB010,SRB010,SRB010,SRB010,SRB010,SRB010,SRB010,SRB010
		WORD	SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011
;		A0
		WORD	SRB014,SRB014,SRB012,SRB012,SRB014,SRB014,SRB500,SRB500
		WORD	SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011,SRB011
;		B0
		WORD	SRB008,SRB008,SRB008,SRB008,SRB008,SRB008,SRB008,SRB008
		WORD	SRB008,SRB008,SRB008,SRB008,SRB008,SRB008,SRB500,SRB500
;		C0
		WORD	SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C
		WORD	SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C,SRB00C
;		D0
		WORD	SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500
		WORD	SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500
;		E0
		WORD	SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500
		WORD	SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500,SRB500
;		F0
		WORD	SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F
		WORD	SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F,SRB01F
;
SRPTGT1		EQU	$
		JSL	>GDCHCK		; ground chara check sub 
;
SRT0080		EQU	$
		MEM16
		IDX16
		REP	#00110000B
		PHA
		LDA	BGOFFG
		AND	#00FFH
		BEQ	SRT0100
		PLA
		LDA	#0000H
		BRA	SRT0200
SRT0100		EQU	$
		PLA
SRT0200		EQU	$
		AND	#00FFH
		STA	<WORK6
		ASL	A
		TAX
		JMP	(SRPTTBL1,X)
;
;
;************************************************************************
;*		ken,scop chijoo surch point get, BG check(SRPTGT2)	*
;************************************************************************
SRPTGT2		EQU	$
		JSL	>CTDGCHK	; ground chara check sub
		BRA	SRT0080		; To BG check
;
;************************************************************************
;*		no atari set            		(SRB000)	*
;*		code 0							*
;*		atari flag set				(SRB001)	*
;*		code 1,2,3,26,f0~ff					*
;************************************************************************
SRB001		EQU	$
		LDA	<WORKA
		TSB	<WORKE
SRB000		EQU	$
		RTS
;
;************************************************************************
;*		saka hosoku atari flag set		(SRB002)	*
;*		code 19,1b,18,1a					*
;*		SAKA atari flag set			(SRB003)	*
;*		code 11,13,10,12					*
;************************************************************************
SAKADT		EQU	$
		WORD	00004H,00000H,00006H,00002H
SRB002		EQU	$
		LDA	<WORKA
		TSB	<BGCRNO
SRB003		EQU	$
		LDA	<WORKA
		TSB	<WORKC
		LDA	<WORK6
		AND	#0003H
		ASL	A
		TAY
		LDA	!SAKADT,Y
		STA	<PWORK8
		RTS
;
;************************************************************************
;*		nomal step auto kaidan flag set		(SRB004)	*
;*		code 1d							*
;************************************************************************
SRB004		EQU	$
;;;;;;;;		STZ	!NSTPFG
;;;;;;;;		INC	!NSTPFG
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		TSB	KDATFG
		BRA	SRB007
;
;************************************************************************
;*		auto kaidan flag set			(SRB005)	*
;*		code 1e,1f						*
;*		saidan kaidan flag set			(SRB006)	*
;*		code 22							*
;*		next kai kaidan flag set		(SRB007)	*
;*		code 30~3f						*
;************************************************************************
SRB005		EQU	$
;;;;;;;;		LDY	#00000H
		LDA	<WORK6
;;;;;;;;		CMP	#0001FH
;;;;;;;;		BEQ	SR5100
;;;;;;;;		INY
;;;;;;;;SR5100		EQU	$
;;;;;;;;;		STY	!FLCKFG
		STA	<BMWORK+4
		LDA	<WORKA
		TSB	KDATFG
SRB006		EQU	$
;;;;;;;;		STZ	!NSTPFG
SRB007		EQU	$
		LDA	<WORKA
		TSB	<KDFGST
		RTS
;
;************************************************************************
;*		hole BG atari flag set			(SRB008)	*
;*		code 20							*
;************************************************************************
SRB008		EQU	$
		LDA	PSSTOP		; player stop ? [NO:PYSP480]
		AND	#00FFH
		BNE	SR8100
;
		LDA	<WORKA
		TSB	<HOLEFG
SR8100		EQU	$
		RTS
;
;
;************************************************************************
;*		belt conbere flag set			(SRB009)	*
;*		code 0c
;************************************************************************
SRB009		EQU	$
		LDA	<WORKA
		TSB	BELTFG
		RTS
;
;************************************************************************
;*		big ice flag set			(SRB00A)	*
;*		code 0e							*
;************************************************************************
SRB00A		EQU	$
		LDA	<WORKA
		TSB	PICEFG
		RTS
;
;************************************************************************
;*		smoll ice flag set			(SRB00B)	*
;*		code 0f
;************************************************************************
SRB00B		EQU	$
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	PICEFG
		RTS
;
;************************************************************************
;*		fire flag set				(SRB00C)	*
;*		code A0~AF						*
;************************************************************************
SRB00C		EQU	$
;;;;;;;;		LDA	<WORK6
;;;;;;;;		STA	FIRENO
		LDA	<WORKA
		TSB	<WORKE
		TSB	FTBGON
		RTS
;
;************************************************************************
;*		water flag set				(SRB00D)	*
;*		code 08							*
;************************************************************************
SRB00D		EQU	$
		LDA	<WORKA
		TSB	PWATER
		RTS
;
;************************************************************************
;*		water side flag set			(SRB00E)	*
;*		code 0a
;************************************************************************
SRB00E		EQU	$
		LDA	<WORKA
		TSB	WTRSID
		RTS
;
;************************************************************************
;*		BG2 nuki flag set			(SRB00F)	*
;*		code 1c
;************************************************************************
SRB00F		EQU	$
		LDA	<WORKA
		TSB	NUKIFG
		RTS
;
;************************************************************************
;*		door bg chenge flag set			(SRB010)	*
;*		code 88~8f						*
;************************************************************************
SRB010		EQU	$
		LDA	<PLMDCCF
		AND	#0FF00H
		ORA	#00001H
		STA	<PLMDCCF
		BRA	SRB013
;
;************************************************************************
;*		door bg chnge flag set			(SRB011)	*
;*		code 98~9f						*
;************************************************************************
SRB011		EQU	$
		LDA	<PLMDCCF
		AND	#0FF00H
		ORA	#00003H
		STA	<PLMDCCF
		BRA	SRB013
;
;************************************************************************
;*		ana door ,bg chnge flag set		(SRB012)	*
;*		code 92,93						*
;*		ana door flag set			(SRB013)	*
;*		code 82,83						*
;************************************************************************
SRB012		EQU	$
		LDA	<PLMDCCF
		AND	#0FF00H
		ORA	#00002H
		STA	<PLMDCCF
SRB013		EQU	$
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	<WORKE
		LDA	<WORKA
		XBA
		TSB	<WORKE
		LDA	<WORK6
		AND	#00001H
		ASL	A
		STA	<DRMKFG
		RTS
;
;************************************************************************
;*		door flag set				(SRB014)	*
;*		code 90,91,94,95					*
;*		door flag set				(SRB015)	*
;*		code 80,81,84,85					*
;************************************************************************
SRB014		EQU	$
		LDA	<PLMDCCF
		AND	#0FF00H
		ORA	#00002H
		STA	<PLMDCCF
SRB015		EQU	$
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	<WORKE
		LDA	<WORK6
		AND	#00001H
		ASL	A
		STA	<DRMKFG
		RTS
;
;************************************************************************
;*		asai water flag set			(SRB016)	*
;*		code 09							*
;************************************************************************
SRB016		EQU	$
		LDA	<WORKA
		TSB	WTASFG
		RTS
;
;************************************************************************
;*		block flag set				(SRB017)	*
;*		code 70~7F						*
;************************************************************************
BKBTDT		EQU	$		; block bit data
		WORD	00001H,00002H,00004H,00008H
		WORD	00010H,00020H,00040H,00080H
		WORD	00100H,00200H,00400H,00800H
		WORD	01000H,02000H,04000H,08000H
;
SRB017		EQU	$
		LDA	<WORKA
		AND	#00000010B
		BEQ	S17040
		LDA	<WORK6
		AND	#0000FH
		ASL	A
		TAY
		LDA	!BKBTDT,Y
		TSB	<BKONFG
S17040		EQU	$
		LDA	<WORKA
		TSB	<WORKE
		JSR	SR1E100		; fotshot flag on 
		RTS
;
;************************************************************************
;*		tobiori flag set			(SRB018)	*
;*		code 0B							*
;************************************************************************
SRB018		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	PWATER
		RTS
;
;************************************************************************
;*		takara bako flag set			(SRB019)	*
;*		code 58,59,5A,5B,5C					*
;************************************************************************
SRB019		EQU	$
		JSR	SR1E100		; fotshot flag on 
		LDA	<WORK6
		STA	<BMWORK+4
		SEC
		SBC	#0058H
		ASL	A
		TAX
		LDA	!TBXADR,X
		CMP	#08000H
		BCC	S19100
		LDA	<WORKA		; douya set
		TSB	<WORKE
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	HAKAFG
		AND	#00100000B
		BEQ	S19080
		LDA	<WORK6
		STA	RUYAFG
S19080		EQU	$
		RTS
;
S19100		EQU	$
		LDA	<WORKA		; takarabako set
		TSB	BATMFG
		TSB	<WORKE
		RTS
;
;************************************************************************
;*		nomal step auto kaidan flag set		(SRB01A)	*
;*		code 3d							*
;************************************************************************
SRB01A		EQU	$
;;;;;;;;		STZ	!NSTPFG
;;;;;;;;		INC	!NSTPFG
		LDA	<WORK6
		BRA	S1B200
;
;************************************************************************
;*		auto kaidan flag set			(SRB01B)	*
;*		code 3e,3f						*
;************************************************************************
SRB01B		EQU	$
;;;;;;;;		LDY	#00000H
		LDA	<WORK6
;;;;;;;;		CMP	#0003FH
;;;;;;;;		BEQ	S1B100
;;;;;;;;		INY
S1B100		EQU	$
;;;;;;;;		STY	!FLCKFG
;;;;;;;;		STZ	!NSTPFG
S1B200		EQU	$
		STA	<BMWORK+4
		LDA	<WORKA
		TSB	<KDFGST
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	KDATFG
		RTS
;
;************************************************************************
;*		toge block flag set			(SRB01C)	*
;*		code 44							*
;************************************************************************
SRB01C		EQU	$
		LDA	!BSFLFG		; boss yarare ? [NO:S1C100]
		BNE	S1C080
		LDA	!EMYSTT+1
		AND	#10000000B
		BEQ	S1C100
S1C080		EQU	$
		LDA	<WORKA
		TSB	<WORKE
		RTS
;
S1C100		EQU	$
		LDA	<WORKA
		XBA
		TSB	HAKAFG
		RTS
;
;************************************************************************
;*		damege yuka flag set    		     (SRB01D)   *
;*		code 0D							*
;************************************************************************
SRB01D		EQU	$
		LDA	!BSFLFG		; boss yarare ? [NO:S1C100]
		BNE	S1D100
		LDA	!EMYSTT+1
		AND	#10000000B
		BNE	S1D100
;
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	INORNO
S1D100		EQU	$
		RTS
;
;************************************************************************
;*		fotshot flag set    		     	     (SRB01E)   *
;*		code 27							*
;************************************************************************
SRB01E		EQU	$
		LDA	<WORKA
		TSB	<WORKE
SR1E100		EQU	$
		LDA	<WORKA
		TSB	FTBGON
		RTS
;
;************************************************************************
;*		break door flag set		             (SRB01F)   *
;*		code F0							*
;************************************************************************
SRB01F		EQU	$
		LDA	<WORKA
		TSB	<WORKE
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	FTBGON
		RTS
;
;************************************************************************
;*		coin flag set		            	     (SRB020)   *
;*		code 60							*
;************************************************************************
SRB020		EQU	$
		LDX	<WORKZ
		LDA	>READBF+040H,X
		AND	#00FFH
		CMP	#0060H
		BNE	SR20B10
		LDA	<WORKA
		XBA
		TSB	FTBGON
		RTS
;
SR20B10		EQU	$
		LDA	<WORKA
		XBA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	FTBGON
		RTS
;
;************************************************************************
;*		atari yuka flag set  			     (SRB021)   *
;*		code 67							*
;************************************************************************
SRB021		EQU	$
;;;;;;;;		LDA	PYFLASH
;;;;;;;;		AND	#00FFH
;;;;;;;;		BNE	SR21B10
		LDA	<WORKA
		TSB	<WORKE
		TSB	FTBGON
SR21B10		EQU	$
		LDA	<WORKA
		XBA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	HAKAFG
		RTS
;
;************************************************************************
;*		move yuka flag set					*
;*		SRB022	(68)	UP					*
;*		SRB023	(69)	DOWN					*
;*		SRB024	(6A)	LEFT					*
;*		SRB025	(6B)	RIGHT					*
;************************************************************************
SRB022		EQU	$
		LDA	<WORKA		; up
		BRA	SR22B10
SRB023		EQU	$
		LDA	<WORKA		; down
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		BRA	SR22B10
SRB024		EQU	$
		LDA	<WORKA		; left
		XBA
		BRA	SR22B10
SRB025		EQU	$
		LDA	<WORKA		; right
		XBA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
SR22B10		EQU	$
		TSB	BELFLG
		RTS
;
;************************************************************************
;*		atemono takara bako flag set		(SRB026)	*
;*		code 63							*
;************************************************************************
SRB026		EQU	$
		JSR	SR1E100		; fotshot flag on 
		LDA	<WORK6
		STA	<BMWORK+4
		BRL	S19100
;
;************************************************************************
;*		atemono takara bako flag set		(SRB027)	*
;*		code 63							*
;************************************************************************
SRB027		EQU	$
		JSR	SRB015
;
		LDA	<WORKA
		XBA
		TSB	INORNO
		STZ	<DRMKFG
		RTS
;
;
;*************** chijoo BG check shori 
;************************************************************************
;*		chijoo no atatri			(SRB500)	*
;*		code 00							*
;************************************************************************
SRB500		EQU	$
		LDA	<WORKA
		TSB	WTRSID
		RTS
;
;************************************************************************
;*		chijoo kusa flag set			(SRB501)	*
;*		code 40							*
;************************************************************************
SRB501		EQU	$
		LDA	<WORKA
		TSB	KUSAFG
		RTS
;
;************************************************************************
;*		chijoo shibafu flag set			(SRB502)	*
;*		code 48,4A						*
;************************************************************************
SRB502		EQU	$
		LDA	<WORKA
		TSB	SHIBFG
		TSB	WTRSID
		RTS
;
;************************************************************************
;*		chijoo motsu aitem flag set		(SRB503)	*
;*		code 54,52,50						*
;************************************************************************
MTKSDT		EQU	$
		WORD	0054H,0052H,0050H,0051H,0053H,0055H,0056H
MTKSED		EQU	$
;
SRB503		EQU	$
		LDX	#MTKSED-MTKSDT-2
SRB5034		EQU	$
		LDA	<WORK6
		CMP	!MTKSDT,X
		BNE	SRB5038
		CMP	#0050H
		BEQ	SRB5035
		CMP	#0051H
		BNE	SRB5036
SRB5035		EQU	$
		LDA	<WORKA
		XBA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	INORNO
SRB5036		EQU	$
		LDA	<WORKA
		TSB	MTKSFG		; motsu aitem flag clear
		STX	MTIXFG
		JSR	SRB01E		; fotshot flag on 
		RTS
SRB5038		EQU	$
		DEX
		DEX
		BPL	SRB5034
		RTS
;
;************************************************************************
;*		chijoo down gake jump flag set		(SRB504)	*
;*		code 29							*
;************************************************************************
SRB504		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	GAKEFG
		RTS
;
;************************************************************************
;*		chijoo up gake jump flag set		(SRB505)	*
;*		code 28							*
;************************************************************************
SRB505		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		TSB	GAKEFG
		RTS
;
;************************************************************************
;*		chijoo left,right gake jump flag set	(SRB506)	*
;*		code 2A,2B						*
;************************************************************************
SRB506		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		TSB	GAKEFG+1
		RTS
;
;************************************************************************
;*		chijoo naname left,right gake jump flag set  (SRB507)   *
;*		code 2C,2E						*
;************************************************************************
SRB507		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	GAKEFG+1
		RTS
;
;************************************************************************
;*		chijoo naname left,right gake jump flag set  (SRB508)   *
;*		code 2D,2F						*
;************************************************************************
SRB508		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		TSB	GAKEFG+2
		RTS
;
;************************************************************************
;*		chijoo left,right gake 1 jump flag set 	     (SRB509)   *
;*		code 4C,4D						*
;************************************************************************
SRB509		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		TSB	GAKEFG+3
		RTS
;
;************************************************************************
;*		chijoo left,right gake 2 jump flag set 	     (SRB50A)   *
;*		code 4E,4F						*
;************************************************************************
SRB50A		EQU	$
		LDA	<WORK6
		STA	<BMWORK+4
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	GAKEFG+3
		RTS
;
;************************************************************************
;*		chijoo,danjon traifoce flag set  	     (SRB50B)   *
;*		code 4B							*
;************************************************************************
SRB50B		EQU	$
		LDA	<WORKA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	KUSAFG
		RTS
;
;************************************************************************
;*		haka flag set 	  	    		     (SRB50C)   *
;*		code 42							*
;************************************************************************
SRB50C		EQU	$
		LDA	<WORKA
		TSB	HAKAFG
		TSB	<WORKE
		RTS
;
;************************************************************************
;*		inoru flag set  	    		     (SRB50D)   *
;*		code 46							*
;************************************************************************
SRB50D		EQU	$
		LDA	<WORKA
		TSB	INORNO
		TSB	<WORKE
		RTS
;
;************************************************************************
;*		taiatari iwa  flag set			     (SRB50E)   *
;*		code 57							*
;************************************************************************
SRB50E		EQU	$
		LDA	<WORKA
		TSB	<WORKE
		XBA
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		TSB	INORNO
		RTS
;
		MEM8
		IDX8
;
;
;
;
;
;
;
;
;
;************************************************************************
;*		1 ten surch point get, BG check		(SRPTGT3)	*
;************************************************************************
BLKBGDT		EQU	$
;;;                     0 1 2 3 4 5 6 7 8 9 A B C D E F
		HEX	0,1,2,3,2,0,0,0,0,1,0,1,0,0,0,0	;0
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1 ;1
		HEX	0,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1 ;2
		HEX	1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1 ;3
		HEX	0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1 ;4
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;5
		HEX	0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1 ;6
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;7
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;8
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;9
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;A
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;B
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;C
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;D
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;E
		HEX	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;F
SRPTGT3		EQU	$
		MEM16
		IDX8
		LDA	<WORK0
		AND	#0FFF8H
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6		; Y-pos set
;
		LDA	<WORK2		; X-pos set
		AND	#003FH
		CLC
		ADC	<WORK6
		LDX	<PLBGCKF	; 0:BG2 1:BG1 check
		BEQ	SR3P100
		CLC
		ADC	#01000H		; >READBF1
SR3P100		EQU	$
		IDX16
		REP	#00010000B
		TAX
		LDA	>READBF,X
		AND	#00FFH
		TAX
		LDA	!BLKBGDT,X
		AND	#00FFH
		RTS
;
		MEM8
		IDX8
;
;************************************************************************
;*		special BG y-pos hosei set sub		(SPBGCK)	*
;************************************************************************
SPSDT		EQU	$		; bit atari data
		BYTE	00H,01H,02H,03H,04H,05H,06H,07H; BG no (3)
		BYTE	07H,06H,05H,04H,03H,02H,01H,00H; 
		BYTE	07H,06H,05H,04H,03H,02H,01H,00H; 
		BYTE	00H,01H,02H,03H,04H,05H,06H,07H; 
SKHKDT		EQU	$		; houkou data
		BYTE	008H,004H,002H,001H
;
SPBGCK		EQU	$
		LDA	<PLHNL0
		AND	#07H
		STA	<WORK0		; Y-pos kai 3 bit set
;
		LDY	<PLXPS1
		LDA	<WORKC
		AND	#00000100B
		BEQ	SPBG020
		DEY
SPBG020		EQU	$
		LDA	<PWORK8		; y data counter set
		ASL	A
		ASL	A
		STA	<WORK1
		TYA
		AND	#07H
		CLC
		ADC	<WORK1
		TAX
;
		LDA	<BGCRNO		; special BG sub ?
		AND	#00000101B
		BEQ	SPBG060
;
		LDA	<PLHNL0		; special bg sub shori
		AND	#00000111B
		STA	<WORK2
		LDA	<PWORK8		; saka wake
		AND	#00000010B
		BNE	SPBG024
		LDA	#08H
		SEC
		SBC	<WORK2
		BRA	SPBG028
SPBG024		EQU	$
		LDA	<WORK2
		CLC
		ADC	#08H
SPBG028		EQU	$
		STA	<WORK2
;
		LDA	!SPSDT,X
		SEC
		SBC	<WORK2
		LDY	<PLYMVC
		BEQ	SPBG200
		BPL	SPBG040
		EOR	#0FFH
		INC	A
SPBG040		EQU	$
		STA	<WORK0
		BRA	SPBG080
;
SPBG060		EQU	$
		LDA	!SPSDT,X
		SEC
		SBC	<WORK0
		STA	<WORK0
;
SPBG080		EQU	$
		LDA	<PLYMVC		; up ?
		BEQ	SPBG200
		BPL	SPBG100
;
		LDA	<WORK0		; yes ! up shori 
		BEQ	SPBG200
		BMI	SPBG200
		MEM16
		REP	#00100000B
		AND	#00FFH
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	#00001000B
		BRA	SPBG150
;
SPBG100		EQU	$
		LDA	<WORK0		; down shori
		BPL	SPBG200
		MEM16
		REP	#00100000B
		AND	#00FFH
		ORA	#0FF00H
		CLC
		ADC	<PLYPS1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
		LDA	#00000100B
SPBG150		EQU	$		; houkoun set
		STA	<PWORK5
		LDY	#02H
		LDA	<WORKC
		AND	#00000100B
		BNE	SPBG180
		LDY	#03H
SPBG180		EQU	$
		LDA	!SKHKDT,Y
		ORA	#00010000B
		TSB	<PWORK5		; (M) <--- (A) ORA (M)
SPBG200		EQU	$
		RTS
;										
;************************************************************************
;*		special BG x-pos hosei set sub		(SPBGCK1)	*
;************************************************************************
SPBGCK1		EQU	$
		LDA	<PLXPS1
		LDY	<PWORK8
		CPY	#06H
		BNE	SPBK002
		DEC	A
SPBK002		EQU	$
		AND	#07H
		STA	<WORK0
;
		LDX	#00H
		LDA	<WORKC
		AND	#00000100B
		BEQ	SPBK005
		LDX	#02H
SPBK005		EQU	$
		LDA	<PWORK8		; y data counter set
		ASL	A
		ASL	A
		STA	<WORK1
		LDA	<PLHNL0,X
		AND	#00000111B
		CLC
		ADC	<WORK1
		TAX
;
		LDA	<BGCRNO		; special BG sub ?
		AND	#00000101B
		BEQ	SPBK060
;
		LDA	<PLXPS1		; special bg sub shori
		AND	#00000111B
		LDY	<PWORK8
		CPY	#004H
		BEQ	SPBK023
		CPY	#006H
		BEQ	SPBK023
		XBA
		TXA
		EOR	#00000111B
		TAX
		XBA
		EOR	#0FFH
		INC	A
		BRA	SPBK025
;
SPBK023		EQU	$
		SEC
		SBC	#008H
		EOR	#0FFH
		INC	A
		STA	<WORK2
		LDA	!SPSDT,X
		SEC
		SBC	<WORK2
;
SPBK025		EQU	$
		LDY	<PLXMVC
		BEQ	SPBK200
		BPL	SPBK040
		EOR	#0FFH
		INC	A
SPBK040		EQU	$
		STA	<WORK0
		BRA	SPBK080
;
SPBK060		EQU	$
		LDA	!SPSDT,X
		SEC
		SBC	<WORK0
		STA	<WORK0
;
SPBK080		EQU	$
		LDA	<PLXMVC		; left ?
		BEQ	SPBK200
		BPL	SPBK100
;
		LDA	<WORK0		; yes ! left shori 
		BEQ	SPBK200
		BMI	SPBK200
		MEM16
		REP	#00100000B
		AND	#00FFH
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		LDA	#00000010B
		BRA	SPBK150
;
SPBK100		EQU	$
		LDA	<WORK0		; right shori
		BPL	SPBK200
		MEM16
		REP	#00100000B
		AND	#00FFH
		ORA	#0FF00H
		CLC
		ADC	<PLXPS1
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
		LDA	#00000001B
SPBK150		EQU	$		; houkoun set
		STA	<PWORK5
		LDY	#00H
		LDA	<PWORK8
		AND	#00000010B
		BNE	SPBK180
		LDY	#01H
SPBK180		EQU	$
		LDA	!SKHKDT,Y
		ORA	#00100000B
		TSB	<PWORK5		; (M) <--- (A) ORA (M)
SPBK200		EQU	$
		RTS
;
;
;************************************************************************
;*		hanekaeri player speed flag henkan	(PYHNFG)	*
;************************************************************************
PYHNFG		EQU	$
		STZ	<PWORK1
		LDY	#00001000B
		LDA	<PLYSPD
		BEQ	PYHN200
		BMI	PYHN100
		LDY	#00000100B
PYHN100		EQU	$
		JSR	PYHN300
PYHN200		EQU	$
		LDY	#00000010B
		LDA	<PLXSPD
		BEQ	PYHN400
		BMI	PYHN300
		LDY	#00000001B
PYHN300		EQU	$
		TYA
		ORA	<PWORK1
		STA	<PWORK1
		STA	<PLMUKI
;
PYHN400		EQU	$
		LDA	<PWORK5
		AND	#00001100B
		BEQ	PYHN500
		LDA	<PWORK5
		AND	#00000011B
		BEQ	PYHN500
;
		LDA	<LNMODE		; teki croos ? [NO:PYHN500]
		CMP	#JMDM
		BNE	PYHN500
;
		LDA	<PLXSPD
		EOR	#0FFH
		INC	A
		STA	<PLXSPD
		LDA	<PLYSPD
		EOR	#0FFH
		INC	A
		STA	<PLYSPD
PYHN500		EQU	$
;;;;;;;;		LDA	<DRATMV
;;;;;;;;		BEQ	PYHN600
;;;;;;;;		STA	<PWORK1
;;;;;;;;		STA	<PLMUKI
;;;;;;;;;
;;;;;;;;		AND	#00000011B	; door idou houkou check
;;;;;;;;		BEQ	PYHN520
;;;;;;;;		LDA	<PLXSPD
;;;;;;;;		BNE	PYHN540
;;;;;;;;		LDA	!PLAYSP
;;;;;;;;		STA	<PLXSPD		; x-speed set
PYHN520		EQU	$
;;;;;;;;		STZ	<PLYSPD		; y-speed clear set
;;;;;;;;		BRA	PYHN600
PYHN540		EQU	$
;;;;;;;;		LDA	<PLYSPD
;;;;;;;;		BNE	PYHN560
;;;;;;;;		LDA	!PLAYSP		; y-speed set
;;;;;;;;		STA	<PLYSPD
PYHN560		EQU	$
;;;;;;;;		STZ	<PLXSPD		; x-speed clear set
;
PYHN600		EQU	$
		LDA	<PWORK6
		CMP	#01H
		BNE	PYHN640
PYHN620		EQU	$
		LDA	<PLMUKI
		AND	#00001100B
		STA	<PLMUKI		; (M) <--- (A) AND (M)
		LDA	<PWORK1
		AND	#00001100B
		STA	<PWORK1		; (M) <--- (A) AND (M)
		STZ	<PLXSPD
PYHN640		EQU	$
		LDA	<PWORK6
		CMP	#02H
		BNE	PYHN680
PYHN660		EQU	$
		LDA	<PLMUKI
		AND	#00000011B
		STA	<PLMUKI		; (M) <--- (A) AND (M)
		LDA	<PWORK1
		AND	#00000011B
		STA	<PWORK1		; (M) <--- (A) AND (M)
		STZ	<PLYSPD
PYHN680		EQU	$
		RTS
;
;
;************************************************************************
;*		player speed set			( PYSPST)	*
;************************************************************************
PLAYSP		EQU	$		; player speed data
		BYTE	018H,010H	; player run speed data (4,n)	
;;;;;;;;;		BYTE	020H,015H	; player run speed data (4,n)	
		BYTE	00AH,018H	; player kaidan speed data (up,down)
		BYTE	010H,008H	; player hole hosei speed data(4,n)
		BYTE	008H,004H	; player hole dashitsu speed data(4,n)
		BYTE	00CH,010H	; player block oshi speed data(4,n)
		BYTE	009H,019H	; player auto kaidan speed data(up,down)
		BYTE	014H,00DH	; ken and dot walk speed data (4,n)
;;;;;;;;		BYTE	018H,010H	; ken and dot walk speed data (4,n)
		BYTE	010H,008H	; water,kusa speed data (4,n)
;;;;;;;;		BYTE	013H,00CH	; water,kusa speed data (4,n)
		BYTE	040H,02AH	; player taiatari speed data (4,n)	
		BYTE	010H,008H	; player boal osuspeed data (4,n)	
		BYTE	004H,002H	; player douzou speed data (4,n)	
		BYTE	030H,018H	; dash asase speed data (4,n)	
		BYTE	020H,015H	; dash ice speed data (4,n)	
PLCKDT		EQU	$		; scroll check data(4,n)
		WORD	00F0H,01F0H
;
PYSPST		EQU	$
		PHB
		PHK
		PLB
		LDA	<GAMEMD
		CMP	#p3_msge
		BNE	PYSP0004
		LDA	<SLMODE
		CMP	#MD_etcpl
		BEQ	PYSP0008
PYSP0004	EQU	$
		LDA	!PLSTOP
		BEQ	PYSP001
PYSP0008	EQU	$
		LDA	<PLYPS1		; Y-pos
		STA	<WORK0
		STA	<PLYHN0
		LDA	<PLXPS1		; X-pos
		STA	<WORK1
		STA	<PLXHN0
		LDA	<PLYPS0		; Y-pos (H)
		STA	<WORK2
		STA	<PLYHN1
		LDA	<PLXPS0		; X-pos (H)
		STA	<WORK3
		STA	<PLXHN1
		BRL	PYSP700
;- - - - - - - - - - - - - - - - - -
PYSP001		EQU	$
		LDA	<LNMODE		; swimming ? [NO:PYSP004]
		CMP	#SWMD
		BEQ	PYSP002
;
		LDA	ICEFLAG
		BEQ	PYSP004
		LDA	DASHFG
		BEQ	PYSP002
		LDA	#018H
		STA	<WORK0
		BRA	PYSP018
PYSP002		EQU	$
		BRL	SWSPST
;
PYSP004		EQU	$
		LDA	DASHFG		; dash ? [NO:PYSP008]
		BEQ	PYSP008
		STZ	<PSTPFG		; kaidan speed ?
		LDA	DASFLM
		CMP	#010H
		BCS	PYSP008
		BRL	DASPST		; dash gensoku speed set
PYSP008		EQU	$
		LDA	PYHAMI		; BG1,BG2 hasami ?
		ORA	PYHAMI+1
		CMP	#0FH
		BNE	PYSP010
		BRL	PYSP800
PYSP010		EQU	$
		LDA	<PYSPFG
		STA	<WORK0
;
		LDA	ASWFLG		; asase ?
		BEQ	PYSP018
		LDA	<PYSPFG		; dash ?
		CMP	#010H
		BNE	PYSP012
		LDX	#016H
		BRA	PYSP016
;
PYSP012		EQU	$
		LDX	#00CH
		LDA	<PYSPFG
		CMP	#00CH
		BNE	PYSP016
		LDX	#00EH
PYSP016		EQU	$
		STX	<WORK0
;
PYSP018		EQU	$
		STZ	<PLYSPD		; Y-speed 0 set
		STZ	<PLXSPD		; X-speed 0 set
		STZ	<PWORK2		; Y-scr 0 set
		STZ	<PWORK3		; X-scr 0 set
;
		LDX	#00H		; no naname set
		LDA	<PWORK1		; (KEYA1)
		TAY
		AND	#00001100B	; naname check
		BEQ	PYSP020
		TYA
		AND	#00000011B
		BEQ	PYSP020
		LDX	#01H		; naname set
PYSP020		EQU	$
		TXA
		CLC
		ADC	<WORK0
		TAX
;
		LDA	<HOLEFG2	; hole hosei speed check
		BEQ	PYSP080
		CMP	#03H
		BNE	PYSP100
		LDA	<PSTPFG
		CMP	#030H
		BCS	PYSP040
		ADC	#008H
		STA	<PSTPFG
		BRA	PYSP100
PYSP040		EQU	$
		LDA	#020H
		STA	<PSTPFG
		BRA	PYSP100
;
PYSP080		EQU	$
		LDA	<PSTPFG		; kaidan speed ?
		BEQ	PYSP100
		LDX	#0AH		; auto kaidan index set
		LDA	<GAMEMD		; auto kaidan ?
;// 02.08.17 //		CMP	#008H
		CMP	#p1_mcng
		BEQ	PYSP0A0
		CMP	#p1_mcg1
		BEQ	PYSP0A0
		LDX	#02H		; no ! kaidan index set
PYSP0A0		EQU	$
		LDA	<PWORK1
;;;;;;;;		AND	#00000100B	; down ?
		AND	#00000000B
		BEQ	PYSP0B0
		INX			; yes !! index inc
PYSP0B0		EQU	$
		LDA	<PSTPFG
		CMP	#01H
		BEQ	PYSP100
		CMP	#010H
		BCS	PYSP0C0
		ADC	#001H
		STA	<PSTPFG
		LDA	#000H
		BRA	PYSP120
PYSP0C0		EQU	$
		STZ	<PSTPFG		; kaidan speed clear
		STZ	<PYSPFG		; kaidan speed shurui flag clear
;
;
PYSP100		EQU	$
		LDA	!PLAYSP,X
PYSP120		EQU	$
		CLC
		ADC	<PSTPFG		; kaidan speed add
		STA	<WORKA		; Y-speed set
		STA	<WORKB		; X-speed set
		LDA	#00000011B	; key check 0
		STA	<WORKC
		LDA	#00000010B	; key check 1
		STA	<WORKD
;
		LDX	#01H		; loop counter
PYSP200		EQU	$
		LDA	<PWORK1		;(KEYA1)
		AND	<WORKC
		BEQ	PYSP400		; tate,yoko check
		AND	<WORKD
		BEQ	PYSP300		; speed < 0 ?
		LDA	<WORKA,X	; YES !!
		EOR	#0FFH
		INC	A
		STA	<WORKA,X
PYSP300		EQU	$
		LDA	<WORKA,X
		STA	<PLYSPD,X	; speed set
PYSP400		EQU	$
		ASL	<WORKC
		ASL	<WORKC
		ASL	<WORKD
		ASL	<WORKD
		DEX
		BPL	PYSP200
		LDA	#0FFH	
		STA	<PLZSPD
		STA	<PLZPS1
		STA	<PLZPS0
		STZ	<PLZBUF
;;;;;;;;		STZ	<PLZPS0
		BRA	PYSP450
;
HNSPST		EQU	$		; hane kaeri speed set
		PHB
		PHK
		PLB
PYSP450		EQU	$
		LDA	<PLYPS1		; Y-pos
		STA	<WORK0
		STA	<PLYHN0
		LDA	<PLXPS1		; X-pos
		STA	<WORK1
		STA	<PLXHN0
		LDA	<PLYPS0		; Y-pos (H)
		STA	<WORK2
		STA	<PLYHN1
		LDA	<PLXPS0		; X-pos (H)
		STA	<WORK3
		STA	<PLXHN1
;
		LDA	<LNMODE		; jishin special ?
		CMP	#JNSP
		BEQ	PYSP480
;
		LDA	PSSTOP
		CMP	#002H
		BEQ	PYSP700
;
PYSP480		EQU	$
		LDY	#02H
		LDX	#04H		; X,Y idou dyoo set
		LDA	<DIEFG		; yarare flag ?
		BNE	PYSP500
		LDY	#01H		; z-idou ryoo set
		LDX	#02H	
PYSP500		EQU	$
		LDA	PLYSPD,Y	; buff set
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	PLYBUF,Y
		STA	PLYBUF,Y
		PHY
		PHP			; carry ---> M
		LDA	PLYSPD,Y	; speed set
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CMP	#08H		; speed < 0 ?
		LDY	#00H
		BCC	PYSP600
		ORA	#0F0H		; yes !!
		LDY	#0FFH
PYSP600		EQU	$
		PLP			; M ---> carry
		ADC	<PLYPS1,X	; position (L) set
		STA	<PLYPS1,X
		TYA
		ADC	<PLYPS0,X
		STA	<PLYPS0,X	; positon (H) set
		PLY
		DEY
		DEX
		DEX
		BPL	PYSP500
;
		JSR	PYBTSP		; belt conbere speed set sub
		JSR	MYSPST		; move yuka speed set sub
		BRA	PYSP700
;
PYSP640		EQU	$
		PHB
		PHK
		PLB
;
PYSP700		EQU	$
		MEM16
		REP	#20H
		LDA	<PLYPS1
		CLC
		ADC	PLYMVD
		STA	<PLYPS1
		LDA	<PLXPS1
		CLC
		ADC	PLXMVD
		STA	<PLXPS1
		MEM8
		SEP	#20H
;
		LDA	<PLYPS1		; Y-pos move counter set
		SEC
		SBC	<WORK0
		STA	<PLYMVC
		LDA	<PLXPS1		; X-pos move counter set
		SEC
		SBC	<WORK1
		STA	<PLXMVC
;
PYSP800		EQU	$
		MEM8
		SEP	#00100000B
		PLB
		RTL
;
;
;************************************************************************
;*		player swim speed set			(SWSPST)	*
;************************************************************************
SWASDT		EQU	$		; speed add,sub data
;			add    sub    A srip 4 srip
		WORD	00008H,0FFF4H,0FFF8H,0FFF0H	; swim
		WORD	00004H,0FFFAH,0FFF4H,0FFFAH	; ice
		WORD	0000AH,0FFF0H,0FFF4H,0FFFAH	; ice slow
SWKYOF		EQU	$
		WORD	0FFF3H,0FFFCH
SWKYON		EQU	$
		WORD	00008H,00004H,00002H,00001H
SWSPST		EQU	$
		STZ	<PLYSPD		; Y-speed 0 set
		STZ	<PLXSPD		; X-speed 0 set
;
		MEM16
		REP	#00100000B
		LDX	#002H
SWSP100		EQU	$
		STZ	<WORK8,X	; speed clear !!
;
		DEC	SWFLMY,X	; kasoku timer
		BPL	SWSP200
		LDA	#0001H		; gensoku flag on !!
		STA	SWADFY,X
		STZ	SWFLMY,X	; timer reset
;
SWSP200		EQU	$
		LDA	SWADFY,X
		ASL	A
		TAY
		LDA	ICEFLAG
		AND	#00FFH
		BEQ	SWSP210
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK0
		TYA
		CLC
		ADC	<WORK0
		TAY
SWSP210		EQU	$
		LDA	!SWASDT,Y
		CLC
		ADC	SWKASY,X
		BEQ	SWSP220
		BPL	SWSP300
SWSP220		EQU	$
		LDA	!SWKYOF,X	; key off set
		AND	<PWORK1
		STA	<PWORK1
		STA	<PLMUKI
;
		LDA	SWADFY,X	; swim continue ? [NO:SWSP240]
		CMP	#0002H
		BNE	SWSP240
;
		STZ	SWADFY,X
		LDA	!SWMNDT
		STA	SWMXSY,X
		LDA	#0002H		; new speed set
		BRA	SWSP340
;
SWSP240		EQU	$
		LDA	#0000H
		STA	SWMXSY,X
		STA	SWADFY,X	; gensoku flag reset
		BRA	SWSP340
;
SWSP300		EQU	$
		PHA
		TXA
		CLC
		ADC	SWYHKU,X
		ASL	A
		TAY
		LDA	!SWKYON,Y
		ORA	<PWORK1
		STA	<PWORK1
		PLA
;
		CMP	SWMXSY,X
		BCC	SWSP340
		LDA	SWMXSY,X
SWSP340		EQU	$
		STA	SWKASY,X
SWSP380		EQU	$
		STA	<WORK8,X
;
		LDA	<PWORK4		; neneme key ? [NO:SWSP400]
		BEQ	SWSP400
		LDA	<WORK8,X	; speed 3/4 shori
		LSR	A
		LSR	A
		STA	<WORK0
		LDA	<WORK8,X
		SEC
		SBC	<WORK0
		STA	<WORK8,X
;
SWSP400		EQU	$		; houkou check
		LDA	SWYHKU,X
		AND	#00FFH
		BNE	SWSP440
		LDA	<WORK8,X
		EOR	#0FFFFH
		INC	A
		STA	<WORK8,X
;
SWSP440		EQU	$
		DEX
		DEX
		BMI	SWSP500
		BRL	SWSP100
;
SWSP500		EQU	$
		MEM8
		SEP	#00100000B
;
		LDA	<PLYPS1		; Y-pos
		STA	<WORK0
		STA	<PLYHN0
		LDA	<PLXPS1		; X-pos
		STA	<WORK1
		STA	<PLXHN0
		LDA	<PLYPS0		; Y-pos (H)
		STA	<WORK2
		STA	<PLYHN1
		LDA	<PLXPS0		; X-pos (H)
		STA	<WORK3
		STA	<PLXHN1
;
		LDY	#01H	
		LDX	#02H	
SWSP600		EQU	$
		LDA	<WORK8,X	; buff set
		CLC
		ADC	PLYBUF,Y
		STA	PLYBUF,Y
		PHY
		PHP			; carry ---> M
		LDA	<WORK9,X	; speed set
		CMP	#08H		; speed < 0 ?
		LDY	#00H
		BCC	SWSP700
		ORA	#0F0H		; yes !!
		LDY	#0FFH
SWSP700		EQU	$
		PLP			; M ---> carry
		ADC	<PLYPS1,X	; position (L) set
		STA	<PLYPS1,X
		TYA
		ADC	<PLYPS0,X
		STA	<PLYPS0,X	; positon (H) set
		PLY
;
		LDA	<WORK8,X	; speed flag set
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK8,X
		LDA	<WORK9,X
		BPL	SWSP800
		EOR	#0FFH
		INC	A
SWSP800		EQU	$
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ORA	<WORK8,X
		STA	PLYSPD,Y
;
		DEY
		DEX
		DEX
		BPL	SWSP600
		LDA	BGALCKF
		CMP	#004H
		BNE	SWSP900
;
		JSR	PYBTSP1		; belt conber set
;
SWSP900		EQU	$
		STZ	<PWORK2		; Y-scr 0 set
		STZ	<PWORK3		; X-scr 0 set
		BRL	PYSP700
;
;************************************************************************
;*		player dash gensoku speed set		(DASPST)	*
;************************************************************************
DASPGN		EQU	$		; gensoku data
		WORD	00040H,00010H
DASPST		EQU	$
		STZ	<WORK0
		STZ	<WORK1
		LDA	<KEYA1
		AND	#00001111B
		BEQ	DASP080
		LDX	#080H
		LDA	ASWFLG
		BEQ	DASP040
		LDX	#050H
DASP040		EQU	$
		STX	<WORK0
		LDA	#001H
		STA	<WORK1
DASP080		EQU	$
		STZ	<PLYSPD
		STZ	<PLXSPD
		STZ	<WORK8		; Y speed clear
		STZ	<WORK9
		STZ	<WORKA		; X speed clear
		STZ	<WORKB
;
		LDX	#003H
		LDA	<PWORK1
DASP100		EQU	$
		LSR	A
		BCS	DASP200
		DEX
		BPL	DASP100
;					; no key return
		PLB
		RTL	
;
DASP200		EQU	$
		TXY
;
;
;;;;;;;;		LDX	#000H
;;;;;;;;		LDA	ASWFLG
;;;;;;;;		BEQ	DASP240
;;;;;;;;		LDX	#002H
;;;;;;;;DASP240		EQU	$
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B
;;;;;;;;		LDA	SWMXSY,X	; gensoku ryoo
;;;;;;;;		SEC
;;;;;;;;		SBC	!DASPGN,X
;;;;;;;;		STA	SWMXSY,X
;;;;;;;;		BMI	DASP260
;;;;;;;;		CMP	<WORK0
;;;;;;;;		BCS	DASP280
;;;;;;;;DASP260		EQU	$
;;;;;;;;		MEM8	
;;;;;;;;		SEP	#00100000B
;;;;;;;;		JSR	DASCLR		; dash clear
;
;
		MEM16
		REP	#00100000B
		LDA	<WORK0
DASP280		EQU	$
		CPY	#00H
		BEQ	DASP300
		CPY	#02H
		BNE	DASP400
DASP300		EQU	$
		EOR	#0FFFFH
		INC	A
DASP400		EQU	$
		PHA
		TYA
		AND	#00000010B
		TAX
		PLA
		STA	<WORK+8,X		
		MEM8
		SEP	#00100000B
		BRL	SWSP500		; speed set
;
;************************************************************************
;*		belt conbere speed set			(PYBTSP)	*
;************************************************************************
PYBTSP		EQU	$
		LDA	BGALCKF		; auto scrool ?
		BEQ	PYBS500
;
		LDA	<PLZPS1
		BEQ	PYBS080
		CMP	#0FFH
		BNE	PYBS500
;
PYBS080		EQU	$
		LDA	BELTCN		; belt conbere on ?
		AND	#00000011B
		CMP	#00000011B
		BNE	PYBS500
;
		LDA	<LNMODE
		CMP	#BOGN
		BEQ	PYBS500
;
		LDY	#008H
		LDA	BG1VMC
		BEQ	PYBS200
		BMI	PYBS100
		LDY	#004H
PYBS100		EQU	$
		TYA
		TSB	<PWORK1
;
PYBS200		EQU	$
		LDY	#002H
		LDA	BG1HMC
		BEQ	PYBS400
		BMI	PYBS300
		LDY	#001H
PYBS300		EQU	$
		TYA
		TSB	<PWORK1
;
PYBS400		EQU	$
PYBTSP1		EQU	$
		STZ	<PWORK4
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; y position (L) set
		CLC
		ADC	BG1VMC
		STA	<PLYPS1
		LDA	<PLXPS1		; x position (L) set
		CLC
		ADC	BG1HMC
		STA	<PLXPS1
		MEM8
		SEP	#00100000B
PYBS500		EQU	$
		RTS
;
;************************************************************************
;*		move yuka speed set			(MYSPST)	*
;************************************************************************
MYHKDT		EQU	$		; houkou key data
		HEX	008,004,002,001
MYSYDT		EQU	$
		HEX	0F8,008,000,000
MYSXDT		EQU	$
		HEX	000,000,0F8,008
MYSPST		EQU	$
		LDA	BELFCN		; move yuka on ?
		BEQ	PYBS500
;
		LDA	<PLZPS1
		BEQ	MYSP080
		CMP	#0FFH
		BNE	PYBS500
;
MYSP080		EQU	$
		LDA	DODMBT
		AND	#00000001B
		BNE	PYBS500
;
		LDA	<LNMODE
		CMP	#BOGN
		BEQ	PYBS500
;
		LDA	<DIEFG
		BNE	PYBS500
;
		LDA	DASHFG		; dash ?
		BEQ	MYSP100
		LDA	DASFLM
		CMP	#020H
		BNE	MYSP100
		LDY	BELFCN		; houkou ditto check !!
		DEY
		LDA	!MYHKDT,Y	
		AND	<PWORK1
		BNE	PYBS500
;
MYSP100		EQU	$
		STZ	<PWORK4
		LDY	BELFCN		; houkou key set
		DEY
		LDA	!MYHKDT,Y
		TSB	<PWORK1
		LDA	!MYSYDT,Y
		STA	<BMWORK+0
		LDA	!MYSXDT,Y
		STA	<BMWORK+1
;
		LDX	#001H
		LDY	#002H
MYSP180		EQU	$
		PHX
		LDA	<BMWORK+0,X
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	!BG1MBF,X
		STA	!BG1MBF,X
		LDA	<BMWORK+0,X
		PHP
		LDX	#000H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		PLP
		BPL	MYSP200
		ORA	#0F0H
		DEX
MYSP200		EQU	$
		ADC	PLYPS1,Y
		STA	PLYPS1,Y
		TXA
		ADC	PLYPS0,Y
		STA	PLYPS0,Y
		PLX
		DEY
		DEY
		DEX
		BPL	MYSP180
;		
		MEM8
		SEP	#00100000B
		RTS
;;
;************************************************************************
;*		character houkou,chenge			(PYCRCN)	*
;*		0-up 2-down 4-left 6-right				*
;************************************************************************
PLMKDT		EQU	$		; player muki check data
		BYTE	00001000B,00000100B,00000010B,00000001B
PLFLDT		EQU	$		; player flem counter data
		BYTE	004H,004H,004H,004H
;;;;;;;;		BYTE	005H,005H,005H,005H
		BYTE	001H,001H,001H,001H
		BYTE	002H,002H,002H,002H
		BYTE	008H,008H,008H,008H
PLFLDT1		EQU	$		; player flem counter data
		BYTE	001H,002H,003H,002H,002H,002H,003H,002H
;;;;;;;;		BYTE	001H,002H,002H,002H,002H,002H,002H,002H
;;;;;;;;		BYTE	002H,002H,003H,002H,002H,002H,003H,002H
;;;;;;;;		BYTE	003H,003H,005H,003H,003H,003H,005H,003H
		BYTE	001H,001H,002H,001H,001H,001H,002H,001H
		BYTE	002H,002H,003H,002H,002H,002H,003H,002H
;
PYCRCN1		EQU	$
		PHB
		PHK
		PLB
		LDA	#00000100B
		STA	<PLMUKI
		BRA	PYCR008
;
PYCRCN		EQU	$
		PHB
		PHK
		PLB
;
PYCR008		EQU	$
		LDA	<LNMODE		; swim mode ? [YES:SWCRCN]
		CMP	#SWMD
		BNE	PYCR010
		BRL	SWCRCN
;		
PYCR010		EQU	$
		LDA	<PLMUKI		;
		BNE	PYCR014
		BRL	PYCR400
PYCR014		EQU	$
		STA	<WORK0
;
		LDA	ICEFLAG
		BEQ	PYCR020
		LDA	SWMUKI
		STA	<WORK0
PYCR020		EQU	$
		LDA	<PYMKFG		; muki kotei ?  
		BNE	PYCR300
;
PYCR030		EQU	$
		LDA	<PWORK4		; naname ?
		BEQ	PYCR050
;
		LDA	<PWORK6		; door tate,yoko check
		BEQ	PYCR040
		ASL	A
		AND	#11111100B
		TAY
		BRA	PYCR100
;
PYCR040		EQU	$
		LDA	<PLMKCH		; yes !
		LSR	A		; ditto muki ?
		TAX
		LDA	<WORK0
		AND	!PLMKDT,X
		BNE	PYCR300
;
PYCR050		EQU	$
		LDY	#04H		; NO !!
		LDA	<WORK0		; (KEYA1)
		AND	#00001100B
		BEQ	PYCR100
		LDY	#00H
PYCR100		EQU	$
		CPY	#04H
		BEQ	PYCR140
		LDA	<WORK0		; (KEYA1)
		AND	#00000100B	; up,down check
		BNE	PYCR180
		BRA	PYCR200
PYCR140		EQU	$
		LDA	<WORK0		; (KEYA1)
		AND	#00000001B	; left,right check
		BEQ	PYCR200
PYCR180		EQU	$
		INY
		INY
PYCR200		EQU	$
		STY	<PLMKCH		; muki set
		BRA	PYCR300
;
PYCR280		EQU	$
		PHB
		PHK
		PLB
PYCR300		EQU	$
		LDA	DASHFG
		BEQ	PYCR308
		BRL	DSCRCN
PYCR308		EQU	$
		LDA	<PLMKCH		; flem counter set
		LSR	A
		TAX
		LDA	<PYSPFG
		CMP	#06H		; hole dashi ?
		BNE	PYCR310
		TXA
		CLC
		ADC	#04H
		TAX
		BRA	PYCR320
PYCR310		EQU	$
;;;;;;;;		LDA	TMDTFG		; tame dot ?
;;;;;;;;		CMP	#001H
;;;;;;;;		BEQ	PYCR400
;
		LDA	ICEFLAG
		BEQ	PYCR320
		LDA	<KEYA1
		AND	#00001111B
		BEQ	PYCR340
		TXA
		CLC
		ADC	#004H
		TAX
PYCR320		EQU	$
		LDA	<LNMODE		; usagi ? [yes:USCRST]
		CMP	#RABT
		BNE	PYCR324
		BRL	USCRST
PYCR324		EQU	$
		LDA	<GAMEMD
		CMP	#p1_kstp
		BEQ	PYCR330
		CMP	#p1_sls0
		BEQ	PYCR326
		CMP	#p1_sls1
		BNE	PYCR327
PYCR326		EQU	$
		LDX	#00CH
		BRA	PYCR330
PYCR327		EQU	$
		LDA	PYDMBT		; tsukamu ?
		AND	#10000000B
		BNE	PYCR330
;;;;;;;;		LDA	AITMMD		; DOT kamae ? []
;;;;;;;;		AND	#00000101B
;;;;;;;;		BNE	PYCR330
		LDA	<HANIFG1
		AND	#10001101B
		BEQ	PYCR328
		LDX	#00CH
		BRA	PYCR330
PYCR328		EQU	$
		LDA	ASWFLG		; kusa & water in ?
		BNE	PYCR330
		LDA	<KENMD		; ken kamae ? []
		BEQ	PYCR500
;
PYCR330		EQU	$
		LDA	<PYCRCH
		CMP	#006H
		BCS	PYCR340
;
		LDA	PSSTOP
		CMP	#002H
		BEQ	PYCR340
;
		LDA	!PLFLDT,X
		STA	<WORK0
;
		LDA	<PYFLCH		; chara chenge flem
		CLC
		ADC	#001H
		STA	<PYFLCH
		CMP	<WORK0		; flem chenge ?
		BCC	PYCR400
		STZ	<PYFLCH		; yes !!
		LDA	<PYCRCH		; chara mode set
		INC	A
		CMP	#006H
		BNE	PYCR350
PYCR340		EQU	$
		LDA	#000H
PYCR350		EQU	$
		STA	<PYCRCH
PYCR400		EQU	$
		PLB
		RTL
;
;
PYCR500		EQU	$
		LDX	<PYCRCH
		LDA	<PYSPFG
		CMP	#006H
		BNE	PYCR520
		TXA
		CLC
		ADC	#008H
		TAX
PYCR520		EQU	$
		LDA	ICEFLAG
		BEQ	PYCR530
		TXA
		CLC
		ADC	#008H
		TAX
;
PYCR530		EQU	$
		LDA	PSSTOP
		CMP	#002H
		BEQ	USCR300

		LDA	!PLFLDT1,X
		STA	<WORK0
		LDA	<PYFLCH		; chara chenge flem
		CLC
		ADC	#001H
		STA	<PYFLCH
		CMP	<WORK0		; flem chenge ?
		BCC	PYCR600
		STZ	<PYFLCH		; yes !!
		LDA	<PYCRCH		; chara mode set
		INC	A
		CMP	#009H
		BNE	PYCR540
		LDA	#001H
PYCR540		EQU	$
		STA	<PYCRCH
;
PYCR600		EQU	$
		PLB
		RTL
;
USCRST		EQU	$
		LDA	<PYCRCH
		CMP	#004H
		BCS	USCR100
;
		LDA	PSSTOP
		CMP	#002H
		BEQ	USCR100
;
		LDA	!PLFLDT,X
		STA	<WORK0
		LDA	<PYFLCH		; chara chenge flem
		CLC
		ADC	#001H
		STA	<PYFLCH
		CMP	<WORK0		; flem chenge ?
		BCC	USCR300
		STZ	<PYFLCH		; yes !!
		LDA	<PYCRCH		; chara mode set
		INC	A
		CMP	#004H
		BNE	USCR200
USCR100		EQU	$
		LDA	#000H
USCR200		EQU	$
		STA	<PYCRCH
;
USCR300		EQU	$
		PLB
		RTL
;
;************************************************************************
;*		swim character houkou,chenge		(SWCRCN)	*
;*		0-up 2-down 4-left 6-right				*
;************************************************************************
SWCRCN		EQU	$
		LDA	SWMUKI		;
		BEQ	SWCR300
;
		LDA	<PYMKFG		; muki kotei ?  
		BNE	SWCR300
;
SWCR030		EQU	$
		LDA	<PWORK4		; naname ?
		BEQ	SWCR050
;
		LDA	<PWORK6		; door tate,yoko check
		BEQ	SWCR040
		ASL	A
		AND	#11111100B
		TAY
		BRA	SWCR100
;
SWCR040		EQU	$
		LDA	<PLMKCH		; yes !
		LSR	A		; ditto muki ?
		TAX
		LDA	SWMUKI
		AND	!PLMKDT,X
		BNE	SWCR300
;
SWCR050		EQU	$
		LDY	#04H		; NO !!
		LDA	SWMUKI		; (KEYA1)
		AND	#00001100B
		BEQ	SWCR100
		LDY	#00H
SWCR100		EQU	$
		CPY	#04H
		BEQ	SWCR140
		LDA	SWMUKI		; (KEYA1)
		AND	#00000100B	; up,down check
		BNE	SWCR180
		BRA	SWCR200
SWCR140		EQU	$
		LDA	SWMUKI		; (KEYA1)
		AND	#00000001B	; left,right check
		BEQ	SWCR200
SWCR180		EQU	$
		INY
		INY
SWCR200		EQU	$
		STY	<PLMKCH		; muki set
;
SWCR300		EQU	$
		PLB
		RTL
;
;************************************************************************
;*		dash character houkou,chenge		(DSCRCN)	*
;*		0-up 2-down 4-left 6-right				*
;************************************************************************
DSFLDT0		EQU	$		; player flem counter data
		HEX	003,003,005,003,003,003,005,003	;0
		HEX	002,002,004,002,002,002,004,002	;1
		HEX	002,002,003,002,002,002,003,002	;2
		HEX	001,001,002,001,001,001,002,001	;3
		HEX	001,001,001,001,001,001,001,001	;4
		HEX	000,000,001,000,000,000,001,000	;5
		HEX	000,000,000,000,000,000,000,000	;6
DSFLDT1		EQU	$
		HEX	001,002,002,002,002,002,002
;;;;;;;;		HEX	005,004,003,002,001,000,000
;
DRTIMD		EQU	$		; timer data
		HEX	030,024,018,010,00C,008,004
DRTIMD1		EQU	$		; timer data
		HEX	004,006,008,00A,00C,00E,010
;
DSCRCN		EQU	$
		LDX	#006H
		LDA	DASHFM
		BEQ	DSCR400
DSCR100		EQU	$
		LDA	DASHFM
		CMP	!DRTIMD,X
		BCC	DSCR400
		DEX
		BPL	DSCR100
		INX
;
DSCR400		EQU	$
		LDA	<KENMD
		CMP	#009H
		BCS	DSCR700
;
		LDA	ASWFLG		; kusa & water in ?
		BNE	DSCR700
;
		TXA
		ASL	A
		ASL	A
		ASL	A
		TAX
		LDA	!DSFLDT0,X
		STA	<WORK0
		LDA	<PYFLCH		; chara chenge flem
		CLC
		ADC	#001H
		STA	<PYFLCH
		CMP	<WORK0		; flem chenge ?
		BCC	DSCR600
		STZ	<PYFLCH		; yes !!
		LDA	<PYCRCH		; chara mode set
		INC	A
		CMP	#009H
		BNE	DSCR500
		LDA	#001H
DSCR500		EQU	$
		BRA	DSCR800
;
DSCR600		EQU	$
		BRA	DSCR900
;
DSCR700		EQU	$
		LDA	!DSFLDT1,X
		STA	<WORK0
		LDA	<PYFLCH		; chara chenge flem
		CLC
		ADC	#001H
		STA	<PYFLCH
		CMP	<WORK0		; flem chenge ?
		BCC	DSCR900
		STZ	<PYFLCH		; yes !!
		LDA	<PYCRCH		; chara mode set
		INC	A
		CMP	#006H
		BCC	DSCR800
		LDA	#000H
DSCR800		EQU	$
		STA	<PYCRCH
;
DSCR900		EQU	$
		PLB
		RTL
;
;************************************************************************
;*		door and not door scrool bunki		(DORSCR)	*
;************************************************************************
DORSCR		EQU	$
		LDA	<GMMODE		; chika check
		BEQ	DORS600
;
		LDA	<PWORK6		; door check
		BEQ	DORS500		; 0-no,1-tate,2-yoko door
;
DORS200		EQU	$
		JMP	>HPMV000   	; H,V scroll initial set
DORS500		EQU	$
		JSL	>HPMV400
DORS600		EQU	$
		RTS
;
;************************************************************************
;*		H,V-door move set			(HPMV000)	*
;************************************************************************
HPMV000		EQU	$
		STZ	<PWORK2
		STZ	<PWORK3
		LDA	<PLMUKI		; shita check !
		AND	#00001100B
		BEQ	HPMV040		; up,down check !
;
		LDX	<PWORK6		; tate door ?
		CPX	#01H
		BNE	HPMV040
;
		AND	#00000100B
		BEQ	HPMV020
		MEM16			; yes ! down sa shori
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	#001CH
		STA	<WORK0
		AND	#00FCH
		BNE	HPMV040
		MEM8
		SEP	#00100000B
		LDA	<WORK1
		SEC
		SBC	<PLYHN1
		STA	<PWORK2
		BRA	HPMV040
HPMV020		EQU	$
		MEM16			; up sa shori
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	#0012H
		STA	<WORK0
		MEM8
		SEP	#00100000B
		LDA	<WORK1
		SEC
		SBC	<PLYHN1
		STA	<PWORK2
;
HPMV040		EQU	$
		MEM8
		SEP	#00100000B
;
		LDA	<PLMUKI		; right check !
		AND	#00000011B
		BEQ	HPMV080
;
		LDX	<PWORK6		; tate door ?
		CPX	#02H
		BNE	HPMV080
;
		AND	#00000001B	;  yes !! left,right check
		BEQ	HPMV060
		MEM16			; right sa shori !
		REP	#00100000B
		LDA	<PLXPS1
		CLC
;// 03.05.08 //		ADC	#0011H
		ADC	#00015H
		STA	<WORK0
		AND	#00FCH
		BNE	HPMV080
		MEM8
		SEP	#00100000B
		LDA	<WORK1
		SEC
		SBC	<PLXHN1
		STA	<PWORK3
		BRA	HPMV080
HPMV060		EQU	$
		MEM16			; left sa check !
		REP	#00100000B
		LDA	<PLXPS1
		SEC
;// 03.05.08 //		SBC	#0002H
		SBC	#00008H
		STA	<WORK0
		MEM8
		SEP	#00100000B
		LDA	<WORK1		; X-pox (H) counter set
		SEC
		SBC	<PLXHN1
		STA	<PWORK3
;
HPMV080		EQU	$
		MEM8
		SEP	#00100000B
;
		LDA	<PWORK3
		BEQ	HPMV100
		BMI	HPMV0A0
		STZ	PYDMFM
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		JSL	>XCALC0		; X-move (+)
		RTS
HPMV0A0		EQU	$
		STZ	PYDMFM
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		JSL	>XCALC1		; X-move (-)
		RTS
HPMV100		EQU	$
		LDA	<PWORK2
		BEQ	HPMV300
		BPL	HPMV200
		STZ	PYDMFM
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		JSL	>YCALC1		; Y-move (-)
		RTS
HPMV200		EQU	$
		STZ	PYDMFM
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		JSL	>YCALC0		; Y-move (+)
HPMV300		EQU	$
		RTS
;
;************************************************************************
;*		H,V-not door move set			(HPMV400)	*
;************************************************************************
HPMV400		EQU	$
		PHB
		PHK
		PLB
		LDA	<PLYPS0		; Y-pos (H) counter set
		SEC
		SBC	<PLYHN1
		STA	<PWORK2
;
		LDA	<PLXPS0		; X-pox (H) counter set
		SEC
		SBC	<PLXHN1
		STA	<PWORK3
;
HPMV480		EQU	$
		LDA	<PWORK3
		BEQ	HPMV500
		BMI	HPMV4A0
		JSL	>XCALC2		; X-move (+)
		BRA	HPMV500
;
HPMV4A0		EQU	$
		JSL	>XCALC3		; X-move (-)
;
HPMV500		EQU	$
		LDA	<PWORK2
		BEQ	HPMV700
		BPL	HPMV600
		JSL	>YCALC3		; Y-move (-)
		PLB
		RTL
HPMV600		EQU	$
		JSL	>YCALC2		; Y-move (+)
HPMV700		EQU	$
		PLB
		RTL
;
;********************************************************************
;*		INORU WINDOW initial set		(INWDIT)    *
;********************************************************************
INWDIT		EQU	$
		JSL	>INHDMA2	; H-DMA inital set
;
		PHB
		PHK
		PLB
;
		MEM16
		REP	#00100000B
		LDA	#0026H		; hankei initial set
		STA	WNHNKI
		MEM8
		SEP	#00100000B
		STZ	WNSTAT		; window waip start clear
		JSL	>INWDMV		; window move sub
;
;// 03.02.04 //		LDA	#00110011B
;// 03.02.04 //		STA	<WD2123		; window mask bg2,bg1 set
;// 03.02.04 //		STZ	<WD2124		; window mask bg4,bg3 set
;// 03.02.04 //		LDA	#00000011B	; window mask col,obj set
;// 03.02.04 //		STA	<WD2125
;// 03.02.04 //;
;// 03.02.04 //		LDA	<DPMAIN		; main window set
;// 03.02.04 //		AND	#00010011B
;// 03.02.04 //		STA	<WDMAIN
;// 03.02.04 //		LDA	<DPSUB		; sub window set
;// 03.02.04 //		AND	#00010011B
;// 03.02.04 //		STA	<WDSUB
;
		INC	<JRSBPT
		PLB
		RTL
;
;
;********************************************************************
;*		INORU WINDOW move sub			(INWDMV)    *
;********************************************************************
INOFLM		EQU	$
		BYTE	016H,016H,016H,040H,001H
;
INWDMV		EQU	$
		PHB
		PHK
		PLB
;
		MEM16
		IDX16
		REP	#00110000B
		STZ	<WORK4		; y-pos clear
;
		LDA	<PLYPS1		; player Y-pos
		SEC
		SBC	<SCCV2		; Y-acr hosei
		CLC
		ADC	#000CH
		STA	<WORKE		; y-pos center set
		SEC
		SBC	WNHNKI
		STA	WNYPL0		; y-pos start pos set
		BPL	INMFF00
		STA	<WORK4
INMFF00		EQU	$
		CLC
		ADC	WNHNKI
		CLC
		ADC	WNHNKI
		STA	WNYPL1		; y-pos end pos set
;
		LDA	<PLXPS1		; player X-pos
		SEC
		SBC	<SCCH2		; X-acr hosei
		CLC
		ADC	#0008H
		STA	WNXPL0		; x-pos center set
;
		LDA	#0001H
		STA	WNYBUF
;
;
INMV000		EQU	$
		LDA	#00100H
		STA	<WORK0		; x-pos 1 clear
		STA	<WORK2		; x-pos 2 clear
;
		LDA	WNYPL0		; bigin start ? [YES:INMV020]
		BMI	INMV020
;
		LDA	<WORK4		; en window start ? [NO:INMV100]
		CMP	WNYPL0
		BCC	INMV100
		CMP	WNYPL1
		BCS	INMV100
;		
INMV020		EQU	$
		LDA	WNHNKI
		CMP	WNYBUF
		BCS	INMV040
		LDA	#0001H
		STA	WNYBUF
		STZ	WNYPL0
		LDA	WNYPL1
		STA	<WORK4
		CMP	#00E1H		; window end ?
		BCC	INMV100
		BRL	INMV600
;
INMV040		EQU	$
		JSR	WDENZN		; da en enzan sub
;
		LDA	<WORK6
		BNE	INMV080
		STZ	WNYPL0
		BRA	INMV0C0
;
INMV080		EQU	$
		LDA	<WORK8
		CLC
		ADC	WNXPL0
		STA	<WORK2
		LDA	WNXPL0		; window x-pos 1 set
		SEC
		SBC	<WORK8
		STA	<WORK0
;
INMV0C0		EQU	$
		LDA	WNYBUF		; window h-dma buff index ---> x
		AND	#00FFH
		STA	<WORKA
		LDA	<WORKE
		SEC
		SBC	<WORKA
		DEC	A
		ASL	A
		TAX
		BRA	INMV140
;
INMV100		EQU	$
		LDA	<WORK4		; h-dma buff index ---> x
		DEC	A
		ASL	A
		TAX
INMV140		EQU	$
		LDA	<WORK0		; (L) x-pos 1 set
		TAY
		BMI	INMV200
		AND	#0FF00H
		BEQ	INMV300
		CMP	#00100H
		BNE	INMV200
		LDY	#00FFH
		BRA	INMV300
INMV200		EQU	$
		LDY	#0000H
INMV300		EQU	$
		TYA
		AND	#00FFH
		STA	<WORK6
;
		LDA	<WORK2		; (H) x-pos 2 set
		TAY
		AND	#0FF00H
		BEQ	INMV500
		AND	#0FF00H
		BEQ	INMV400
		LDY	#00FFH
		BRA	INMV500
INMV400		EQU	$
		LDY	#0000H
INMV500		EQU	$
		TYA
		AND	#00FFH
		XBA
		ORA	<WORK6
		STA	<WORK6
		CPX	#001C0H
		BCS	INMV540
		CMP	#0FFFFH
		BNE	INMV520
		LDA	#000FFH
INMV520		EQU	$
		STA	HDMABF,X	; h-dma (h),(l) 0 set
;
INMV540		EQU	$
		LDA	WNYPL0
		BMI	INMV560
		LDA	<WORK4		; en window start ? [NO:INMV100]
		CMP	WNYPL0
		BCC	INMV580
		CMP	WNYPL1
		BCS	INMV580
;
INMV560		EQU	$
;;;;;;;;;		LDA	WNYBUF
;;;;;;;;;		CMP	WNHNKI
;;;;;;;;		BEQ	INMV580
;
		LDA	WNYBUF
		AND	#00FFH
		DEC	A
		CLC
		ADC	<WORKE
		TAX
		DEC	A
		ASL	A
		CMP	#001C0H
		BCS	INMV570
		TAX
;
		LDA	<WORK6
		CMP	#0FFFFH
		BNE	INMV562
		LDA	#000FFH
INMV562		EQU	$
		STA	HDMABF,X	; h-dma (h),(l) 1 set
;
INMV570		EQU	$
		INC	WNYBUF
;
INMV580		EQU	$
		INC	<WORK4
		LDA	<WORK4		; window end ?
		BMI	INMV5C0
		CMP	#00E1H
		BCS	INMV600
INMV5C0		EQU	$
		BRL	INMV000
;
INMV600		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		LDA	<JRSBPT
		CMP	#004H
		BNE	INMV900		; player play ok ?
;					; yes
		LDA	WNSTAT		; window move start ? [yes:INMV640] 
		CMP	#01H
		BEQ	INMV640
;
		LDA	<KEYA2
		ORA	<KEYA2L
		AND	#11000000B
		BEQ	INMV640
		LDA	#01H
		STA	WNSTAT
		LSR	WNHNKI		; hankei  / 2
;
INMV640		EQU	$
		LDA	WNSTAT
		BEQ	INMV800
;
		LDA	WNHNKI
		CLC
		ADC	#008H
		STA	WNHNKI
		CMP	#0C0H
		BCC	INMV800
;
		LDA	!INTEKI
		EOR	#001H		; teki move on set
		STA	!INTEKI
;
		LDA	#0F3H
		STA	!SOUND0		; <sound>
		LDA	#000H		; sound off
		STA	!SOUND1
		STZ	!ENSTFG
		STZ	PYDMMD
		STZ	<KENKY
		STZ	PYDMBT
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG		; (M) <--- (A) AND (M)
;
		STZ	<JRSBPT
		STZ	<GAMEMD
		LDA	!NXSLMD
		STA	<SLMODE
;
;// 02.11.02 //		STZ	420CH
		STZ	<WDMAIN
		STZ	<WDSUB
		STZ	<WD2123
		STZ	<WD2124
		STZ	<WD2125		; window off
		JSL	>HDMAOFF	; H-DMA off
		BRA	INMV900
;
INMV800		EQU	$
		DEC	<KENFM
		BPL	INMV900
		LDX	PYDMMD
		INX
		CPX	#004H
		BEQ	INMV8C0
		STX	PYDMMD
INMV8C0		EQU	$
		LDA	!INOFLM,X
		STA	<KENFM
INMV900		EQU	$
		PLB
		RTL
;
;********************************************************************
;*		INORU WINDOW enzan sub			(WDENZN)    *
;********************************************************************
WINDAT0		EQU	$		; da en data (R 0FFH)
;			  0   1   2   3   4   5   6   7
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FF,0FF
		HEX	0FF,0FF,0FF,0FF,0FE,0FE,0FE,0FE
		HEX	0FD,0FD,0FD,0FD,0FC,0FC,0FC,0FB
		HEX	0FB,0FB,0FA,0FA,0F9,0F9,0F8,0F8
		HEX	0F7,0F7,0F6,0F6,0F5,0F5,0F4,0F3
		HEX	0F3,0F2,0F1,0F1,0F0,0EF,0EE,0EE
		HEX	0ED,0EC,0EB,0EA,0E9,0E9,0E8,0E7
		HEX	0E6,0E5,0E4,0E3,0E2,0E1,0DF,0DE
		HEX	0DD,0DC,0DB,0DA,0D8,0D7,0D6,0D5
		HEX	0D3,0D2,0D0,0CF,0CD,0CC,0CA,0C9
		HEX	0C7,0C6,0C4,0C2,0C1,0BF,0BD,0BB
		HEX	0B9,0B7,0B6,0B4,0B1,0AF,0AD,0AB
		HEX	0A9,0A7,0A4,0A2,09F,09D,09A,097
		HEX	095,092,08F,08C,089,086,082,07F
		HEX	07B,078,074,070,06C,067,063,05E
		HEX	059,053,04D,046,03F,037,02D,01F	
		HEX	000
WINDAT1		EQU	$		; da en data (R 026H)
;			  0   1   2   3   4   5   6   7
		HEX	0FF,0FF,0FF,0FF,0FF,0FF,0FE,0FE
		HEX	0FD,0FD,0FC,0FC,0FB,0FA,0F9,0F8
		HEX	0F7,0F6,0F5,0F4,0F3,0F1,0F0,0EE
		HEX	0ED,0EB,0E9,0E8,0E6,0E4,0E2,0DF
		HEX	0DD,0DB,0D8,0D6,0D3,0D0,0CD,0CA
		HEX	0C7,0C4,0C1,0BD,0B9,0B6,0B1,0AD
		HEX	0A9,0A4,09F,09A,095,08F,089,082
		HEX	07B,074,06C,063,059,04D,03F,02D	
		HEX	000,000,000,000,000,000,000,000
		HEX	000,000,000,000,000,000,000,000
		HEX	000,000,000,000,000,000,000,000
		HEX	000,000,000,000,000,000,000,000
		HEX	000,000,000,000,000,000,000,000
		HEX	000,000,000,000,000,000,000,000
		HEX	000,000,000,000,000,000,000,000
		HEX	000,000,000,000,000,000,000,000
		HEX	000
;
WDENZN		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		LDA	WNYBUF
		STA	4205H
		STZ	4204H
		LDA	WNHNKI
		STA	4206H
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		MEM16
		REP	#00100000B
		LDA	4214H
		LSR	A
		MEM8
		SEP	#00100000B
		TAX
		LDY	!WINDAT1,X
		LDA	WNSTAT
		BEQ	WDEN100
		LDY	!WINDAT0,X
WDEN100		EQU	$
		STY	<WORK6
		STY	4202H
		LDA	WNHNKI
		STA	4203H
		NOP
		NOP
		NOP
		NOP
		LDA	4217H
		STA	<WORK8
		STZ	<WORK9
		STZ	<WORK7
		MEM16
		IDX16
		REP	#00110000B
		LDA	WNSTAT
		AND	#00FFH
		BEQ	WDEN200
		ASL	<WORK8
WDEN200		EQU	$
		RTS
;
		MEM8
		IDX8
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		 hishigata WINDOW initial set		(HSWDIT)    *
;;;;;;;;;********************************************************************
HSWDIT		EQU	$
;;;;;;;;		JSL	>INHDMA2	; H-DMA inital set
;;;;;;;;;
;;;;;;;;		PHB
;;;;;;;;		PHK
;;;;;;;;		PLB
;;;;;;;;;
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B
;;;;;;;;		LDA	#0000H		; hankei initial set
;;;;;;;;		STA	WNHNKI
;;;;;;;;		MEM8
;;;;;;;;		SEP	#00100000B
;;;;;;;;		STZ	WNSTAT		; window waip start clear
;;;;;;;;		JSL	>INWDMV		; window move sub
;;;;;;;;;
;// 03.02.04 //		LDA	#00110011B
;// 03.02.04 //		STA	<WD2123		; window mask bg2,bg1 set
;// 03.02.04 //		STZ	<WD2124		; window mask bg4,bg3 set
;// 03.02.04 //		LDA	#00000011B	; window mask col,obj set
;// 03.02.04 //		STA	<WD2125
;// 03.02.04 //;
;// 03.02.04 //		LDA	<DPMAIN		; main window set
;// 03.02.04 //		AND	#00010011B
;// 03.02.04 //		STA	<WDMAIN
;// 03.02.04 //		LDA	<DPSUB		; sub window set
;// 03.02.04 //		AND	#00010011B
;// 03.02.04 //		STA	<WDSUB
;;;;;;;;;
;;;;;;;;		INC	<JRSBPT
;;;;;;;;		PLB
;;;;;;;;		RTL
;;;;;;;;;
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		hishigata WINDOW move sub		(HSWDMV)    *
;;;;;;;;;********************************************************************
;;;;;;;;HSWDMV		EQU	$
;;;;;;;;		PHB
;;;;;;;;		PHK
;;;;;;;;		PLB
;;;;;;;;;
;;;;;;;;;*************  window y,x center,y-start,end pos set
;;;;;;;;		MEM16
;;;;;;;;		IDX16
;;;;;;;;		REP	#00110000B
;;;;;;;;;
;;;;;;;;		STZ	WNYBUF		; y-keisan counter clear
;;;;;;;;		STZ	<WORK4		; y-pos clear
;;;;;;;;;
;;;;;;;;		LDA	<PLYPS1		; player Y-pos
;;;;;;;;		SEC
;;;;;;;;		SBC	<SCCV2		; Y-acr hosei
;;;;;;;;		CLC
;;;;;;;;		ADC	#000CH
;;;;;;;;		STA	<WORKE		; y-pos center set
;;;;;;;;		SEC
;;;;;;;;		SBC	WNHNKI
;;;;;;;;		STA	WNYPL0		; y-pos start pos set
;;;;;;;;		BPL	HSWFF00
;;;;;;;;		LDA	#00000H
;;;;;;;;		SEC
;;;;;;;;		SBC	WNYPL0
;;;;;;;;		STA	WNYBUF
;;;;;;;;HSWFF00		EQU	$
;;;;;;;;		LDA	WNHNKI		; hankei * 2
;;;;;;;;		ASL	A
;;;;;;;;		CLC
;;;;;;;;		ADC	WNYPL0
;;;;;;;;		STA	WNYPL1		; y-pos end pos set
;;;;;;;;;
;;;;;;;;		LDA	<PLXPS1		; player X-pos
;;;;;;;;		SEC
;;;;;;;;		SBC	<SCCH2		; X-acr hosei
;;;;;;;;		CLC
;;;;;;;;		ADC	#0008H
;;;;;;;;		STA	WNXPL0		; x-pos center set
;;;;;;;;;
;;;;;;;;;*************  window y-start,end check
;;;;;;;;HSWD000		EQU	$
;;;;;;;;		LDA	#00100H
;;;;;;;;		STA	<WORK0		; x-pos 1 clear
;;;;;;;;		STA	<WORK2		; x-pos 2 clear
;;;;;;;;;
;;;;;;;;		LDA	WNYPL0		; y-start gamen gai ? [NO:HSWD0A0]
;;;;;;;;		BPL	HSWD0A0
;;;;;;;;		LDA	<WORK4		; hishigata hani ? [NO:HSWD1C0]
;;;;;;;;		CMP	WNYPL0
;;;;;;;;		BCS	HSWD1C0
;;;;;;;;		CMP	WNYPL1
;;;;;;;;		BCS	HSWD1C0
;;;;;;;;		BRA	HSWD0B0
;;;;;;;;;
;;;;;;;;HSWD0A0		EQU	$
;;;;;;;;		LDA	<WORK4		; hishigata hani ? [NO:HSWD1C0]
;;;;;;;;		CMP	WNYPL0		
;;;;;;;;		BCC	HSWD1C0
;;;;;;;;		CMP	WNYPL1
;;;;;;;;		BCS	HSWD1C0
;;;;;;;;;
;;;;;;;;;*************  window x-pos keisan shori
;;;;;;;;HSWD0B0		EQU	$
;;;;;;;;		LDA	WNYBUF
;;;;;;;;		CMP	WNHNKI
;;;;;;;;		BCC	HSWD0C0
;;;;;;;;		LDA	WNYBUF
;;;;;;;;		SEC
;;;;;;;;		SBC	WNHNKI
;;;;;;;;		STA	<WORKA
;;;;;;;;		LDA	WNHNKI
;;;;;;;;		SEC
;;;;;;;;		SBC	<WORKA
;;;;;;;;HSWD0C0		EQU	$
;;;;;;;;		ASL	A
;;;;;;;;		STA	<WORK8
;;;;;;;;		CLC
;;;;;;;;		ADC	WNXPL0
;;;;;;;;		STA	<WORK2		; X-pos (H) set
;;;;;;;;		LDA	WNXPL0
;;;;;;;;		SEC
;;;;;;;;		SBC	<WORK8
;;;;;;;;		STA	<WORK0		; X-pos (L) set
;;;;;;;;		INC	WNYBUF		; next x-pos set
;;;;;;;;;
;;;;;;;;;*************  window h-dma set
;;;;;;;;HSWD1C0		EQU	$
;;;;;;;;		LDA	<WORK4		; h-dma buff index ---> x
;;;;;;;;		DEC	A
;;;;;;;;		ASL	A
;;;;;;;;		CMP	#001C0H
;;;;;;;;		BCS	HSWD540
;;;;;;;;		TAX
;;;;;;;;;
;;;;;;;;		LDA	<WORK0		; (L) x-pos 1 set
;;;;;;;;		TAY
;;;;;;;;		BMI	HSWD200
;;;;;;;;		AND	#0FF00H
;;;;;;;;		BEQ	HSWD300
;;;;;;;;		CMP	#00100H
;;;;;;;;		BNE	HSWD200
;;;;;;;;		LDY	#00FFH
;;;;;;;;		BRA	HSWD300
;;;;;;;;HSWD200		EQU	$
;;;;;;;;		LDY	#0000H
;;;;;;;;HSWD300		EQU	$
;;;;;;;;		TYA
;;;;;;;;		AND	#00FFH
;;;;;;;;		STA	<WORK6
;;;;;;;;;
;;;;;;;;		LDA	<WORK2		; (H) x-pos 2 set
;;;;;;;;		TAY
;;;;;;;;		AND	#0FF00H
;;;;;;;;		BEQ	HSWD500
;;;;;;;;		CMP	#00100H
;;;;;;;;		BCC	HSWD400
;;;;;;;;		LDY	#00FFH
;;;;;;;;		BRA	HSWD500
;;;;;;;;HSWD400		EQU	$
;;;;;;;;		LDY	#0000H
;;;;;;;;HSWD500		EQU	$
;;;;;;;;		TYA
;;;;;;;;		AND	#00FFH
;;;;;;;;		XBA
;;;;;;;;		ORA	<WORK6
;;;;;;;;		STA	<WORK6
;;;;;;;;		CMP	#0FFFFH
;;;;;;;;		BNE	HSWD520
;;;;;;;;		LDA	#000FFH
;;;;;;;;HSWD520		EQU	$
;;;;;;;;		STA	HDMABF,X	; h-dma (h),(l) 0 set
;;;;;;;;;
;;;;;;;;HSWD540		EQU	$
;;;;;;;;		INC	<WORK4
;;;;;;;;		LDA	<WORK4		; window end ?
;;;;;;;;		CMP	#00E1H
;;;;;;;;		BCS	HSWD600
;;;;;;;;		BRL	HSWD000
;;;;;;;;;
;;;;;;;;;*************  window end shori 
;;;;;;;;HSWD600		EQU	$
;;;;;;;;		MEM8
;;;;;;;;		IDX8
;;;;;;;;		SEP	#00110000B
;;;;;;;;;
;;;;;;;;		LDY	#0F4H
;;;;;;;;		LDA	WNSTAT
;;;;;;;;		BNE	HSWD700
;;;;;;;;		LDY	#00CH
;;;;;;;;HSWD700		EQU	$
;;;;;;;;		TYA
;;;;;;;;		CLC
;;;;;;;;		ADC	WNHNKI
;;;;;;;;		STA	WNHNKI
;;;;;;;;		CMP	#0C0H
;;;;;;;;		BCC	HSWD800
;;;;;;;;		CMP	#0F0H
;;;;;;;;		BCC	HSWD780
;;;;;;;;		STZ	WNHNKI
;;;;;;;;;
;;;;;;;;HSWD780		EQU	$
;;;;;;;;		LDA	WNSTAT
;;;;;;;;		EOR	#01H
;;;;;;;;		STA	WNSTAT
;;;;;;;;		BRA	HSWD800
;;;;;;;;;
;;;;;;;;		STZ	!ENSTFG
;;;;;;;;		STZ	PYDMMD
;;;;;;;;		STZ	<KENKY
;;;;;;;;		STZ	PYDMBT
;;;;;;;;		LDA	<PYMKFG
;;;;;;;;		AND	#11111110B
;;;;;;;;		STA	<PYMKFG		; (M) <--- (A) AND (M)
;;;;;;;;;
;;;;;;;;		STZ	<JRSBPT
;;;;;;;;		STZ	<GAMEMD
;;;;;;;;		LDA	!NXSLMD
;;;;;;;;		STA	<SLMODE
;;;;;;;;;
;;;;;;;;		STZ	<WDMAIN
;;;;;;;;		STZ	<WDSUB
;;;;;;;;		STZ	<WD2123
;;;;;;;;		STZ	<WD2124
;;;;;;;;		STZ	<WD2125		; window off
;;;;;;;;		JSL	>HDMAOFF	; H-DMA off
;;;;;;;;;
;;;;;;;;HSWD800		EQU	$
;;;;;;;;		PLB
;;;;;;;;		RTL
;
		MEM8
		IDX8
;
;********************************************************************
;*		player BLOCK max check sub   		(BKONCK)    *
;********************************************************************
BKONCK		EQU	$
		LDX	#01H
BKON100		EQU	$
		LDA	BLKMODE,X
		BNE	BKON200
		TYA
		INC	A
		STA	BLKMODE,X
		CLC		
		RTS
;
BKON200		EQU	$
		DEX
		BPL	BKON100
		SEC
		RTS
;
;********************************************************************
;*		player BLOCK shoki set			(PYBLST)    *
;********************************************************************
PYBLST		EQU	$
		PHX
		STX	<BMWORK+0
		LDA	<WORKE
		PHA
		MEM16
		REP	#00100000B
		LDA	!BLKADR,X
		AND	#007EH
		ASL	A
		ASL	A
		STA	<WORK0
		LDA	!BLKADR,X
		AND	#01F80H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2
		MEM8
		SEP	#00100000B
		LDA	<WORKE
		ASL	A
		TAX
		LDA	<WORK0
		STA	!BLKXPS1,X
		LDA	<WORK1
		CLC
		ADC	SCHCT+1
		STA	!BLKXPS0,X
		STA	<WORK1
		LDA	<WORK2
		STA	!BLKYPS1,X
		LDA	<WORK3
		CLC
		ADC	SCVCT+1
		STA	!BLKYPS0,X
		STA	<WORK3
		STZ	!BLKXPS2,X
		STZ	!BLKYPS2,X
;;;;;;;;		LDA	<PLMKCH
;;;;;;;;		STA	!BLKMUKI,X
		LDA	<INFDF0
		CMP	#inf_ebl
		BEQ	PYBL080		; block move ok ?
		LDX	<BMWORK+0
		LDA	BLKSTT,X
		BNE	PYBL080
;					; yes
		LDY	#000H
		JSR	BGCHCK7		; next BG check
		BCC	PYBL100
;
PYBL080		EQU	$
		PLA
		TAX
		STZ	BLKMODE,X
		PLX
		SEC
		RTS
;
PYBL100		EQU	$
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#bloks
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#bloks
		JSR	SDLP12
		PLA
		STA	<WORKE
		PLX
		LDA	#001H
		STA	BLKSTT,X
		CLC
		RTS
;
;********************************************************************
;*		BLOCK OBJ MOVE sub			(BLOKMV)    *
;********************************************************************
BLOKMV		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		PHB
		PHK
		PLB
;
		LDA	<GAMEMD		; purse ? [YES:BLMV600]
		BNE	BLMV999
;
		STY	<WORK0
		LDX	#001H
		LDA	BLKMODE,X
		DEC	A
		ASL	A
		CMP	<WORK0
		BEQ	BLMV200
		LDX	#000H
BLMV200		EQU	$
		TXA
		ASL	A
		TAY
		LDA	#09H
		STA	BLHLFM
		STZ	BKMODE
		JSR	BLSPST		; block speed set
		LDA	BLKYPS1,Y
		STA	<BMWORK+0	; y-pos (L) hozon
		LDA	BLKYPS0,Y
		STA	<BMWORK+1	; y-pos (H) hozon
		LDA	BLKXPS1,Y
		STA	<BMWORK+2	; x-pos (L) hozon
		LDA	BLKXPS0,Y
		STA	<BMWORK+3	; x-pos (H) hozon
		JSR	BLCHCK		; block oam check sub
;
BLMV999		EQU	$
		PLB
		RTL
;;;;;;;;;
;;;;;;;;;********************************************************************
;;;;;;;;;*		PULL BLOCK OBJ MOVE sub			(PLBLMV)    *
;;;;;;;;;********************************************************************
;;;;;;;;BLHKDT		EQU	$		; block houkou data
;;;;;;;;		BYTE	00H,02H,04H,06H
;;;;;;;;PLBLMV		EQU	$
;;;;;;;;		LDA	BLKXPS2,Y
;;;;;;;;		CMP	#010H
;;;;;;;;		BNE	PLBL400
;;;;;;;;		LDA	<KEYA1
;;;;;;;;		AND	#00001111B
;;;;;;;;		BEQ	PLBL999
;;;;;;;;;
;;;;;;;;		LDX	#03H
;;;;;;;;PLBL200		EQU	$
;;;;;;;;		LSR	A
;;;;;;;;		BCS 	PLBL300
;;;;;;;;		DEX
;;;;;;;;		BPL	PLBL200
;;;;;;;;PLBL300		EQU	$
;;;;;;;;		LDA	!BLHKDT,X
;;;;;;;;		STA	BLKMUKI,Y	; muki set
;;;;;;;;;
;;;;;;;;		LDA	BLKYPS1,Y	; y-pos hozon
;;;;;;;;		CPX	#02H
;;;;;;;;		BCC	PLBL340
;;;;;;;;		LDA	BLKXPS1,Y
;;;;;;;;PLBL340		EQU	$
;;;;;;;;		CPX	#01H
;;;;;;;;		BEQ	PLBL380
;;;;;;;;		CPX	#02H
;;;;;;;;		BEQ	PLBL380
;;;;;;;;		DEC	A
;;;;;;;;PLBL380		EQU	$
;;;;;;;;		AND	#00FH
;;;;;;;;		STA	BLKXPS2,Y
;;;;;;;;;
;;;;;;;;PLBL400		EQU	$
;;;;;;;;		LDA	#09H
;;;;;;;;		STA	BLHLFM
;;;;;;;;		STA	<BLKFLM		; 8 flem ?
;;;;;;;;		STZ	BKMODE		; clear
;;;;;;;;		JSR	BLSPST		; block speed set		
;;;;;;;;		LDA	BLKYPS1,Y
;;;;;;;;		STA	<PLYSPD		; y-pos hozon
;;;;;;;;		LDA	BLKXPS1,Y
;;;;;;;;		STA	<PLXSPD		; x-pos hozon
;;;;;;;;		JSR	BLCHCK		; block oam check sub
;;;;;;;;PLBL999		EQU	$
;;;;;;;;		JSR	BLOMST		; block oam set
;;;;;;;;		PLB
;;;;;;;;		RTL
;
;********************************************************************		EQU	$
;*		BLOCK HOLE OBJ MOVE sub			(BKHLMV)    *
;********************************************************************
BKHFMDT		EQU	$
		BYTE	009H,009H,009H,009H,009H
BKHLMV		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		PHB
		PHK
		PLB
		PHY
;
		STY	<WORKE
;
		DEC	BLHLFM
		BPL	BKHL200
		INC	BKMODE
		LDX	BKMODE
		LDA	!BKHFMDT,X
		STA	BLHLFM
		CPX	#04H
		BNE	BKHL200
		TYX
		STZ	BLKSTT,X
		STZ	BKMODE
		LDX	#001H
		LDA	BLKMODE,X
		DEC	A
		ASL	A
		CMP	<WORKE
		BEQ	BKHL100
		LDX	#000H
BKHL100		EQU	$
		STZ	BLKMODE,X
;
BKHL200		EQU	$
		PLY
		PLB
		RTL
;
;
;************************************************************************
;*		BLOCK speed set				(BLSPST)	*
;************************************************************************
BLOKSP		EQU	$		; block speed data
;			   0
		BYTE	00CH
BKMKDT		EQU	$		; block houkou henkan data
		BYTE	00001000B,00000100B,00000010B,00000001B
BLSPST		EQU	$
		STZ	<PLYSPD		; Y-speed 0 set
		STZ	<PLXSPD		; X-speed 0 set
;
		LDA	!BLOKSP		; block speed set
		STA	<WORKA		; Y-speed set
		STA	<WORKB		; X-speed set
		LDA	#00000011B	; key check 0
		STA	<WORKC
		LDA	#00000010B	; key check 1
		STA	<WORKD
		LDA	BLKMUKI,Y	; muki read
		LSR	A
		TAX
		LDA	!BKMKDT,X	; henkan muki set
		STA	<WORK0
;
		LDX	#01H		; loop counter
BLSP200		EQU	$
		LDA	<WORK0		;(KEYA1)
		AND	<WORKC
		BEQ	BLSP400		; tate,yoko check
		AND	<WORKD
		BEQ	BLSP300		; speed < 0 ?
		LDA	<WORKA,X	; YES !!
		EOR	#0FFH
		INC	A
		STA	<WORKA,X
BLSP300		EQU	$
		LDA	<WORKA,X
		STA	<PLYSPD,X	; speed set
		BRA	BLSP500
BLSP400		EQU	$
		ASL	<WORKC
		ASL	<WORKC
		ASL	<WORKD
		ASL	<WORKD
		DEX
		BPL	BLSP200
;
BLSP500		EQU	$
		LDA	<PLYSPD,X	; buff set
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	BLKYPS2,Y
		STA	BLKYPS2,Y
		PHP			; carry ---> M
		CPX	#01H		; X,Y check
		BEQ	BLSP700
;					; y-pos set
		LDX	#000H
		LDA	<PLYSPD		; speed set
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CMP	#08H		; speed < 0 ?
		BCC	BLSP600
		ORA	#0F0H		; yes !!
		LDX	#0FFH
BLSP600		EQU	$
		PLP			; M ---> carry
		ADC	BLKYPS1,Y	; position (L) set
		STA	BLKYPS1,Y
		TXA
		ADC	BLKYPS0,Y
		STA	BLKYPS0,Y	; positon (H) set
		LDA	BLKYPS1,Y
		AND	#00FH
		BRA	BLSP800
;
BLSP700		EQU	$		; x-pos set
		LDX	#000H
		LDA	<PLXSPD		; speed set
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CMP	#08H		; speed < 0 ?
		BCC	BLSP750
		ORA	#0F0H		; yes !!
		LDX	#0FFH
BLSP750		EQU	$
		PLP			; M ---> carry
		ADC	BLKXPS1,Y	; position (L) set
		STA	BLKXPS1,Y
		TXA
		ADC	BLKXPS0,Y
		STA	BLKXPS0,Y	; positon (H) set
		LDA	BLKXPS1,Y
		AND	#00FH
BLSP800		EQU	$
		TYX
		CMP	BLKXPS2,X	; hozon ichi ?
		BNE	BLSP900
;
		TXA
		LSR	A
		TAX
		LDA	BLKMODE,X
;;;;;;;;		STZ	BLKMODE,X
		DEC	A
		ASL	A
		TAX
		INC	BLKSTT,X	; yes !! next mode set
		LDA	<PYMKFG
		AND	#11111011B
		STA	<PYMKFG		; (M) <--- (A) AND (M)  
		LDA	<HANIFG1
		AND	#0FFFBH
		STA	<HANIFG1
BLSP900		EQU	$
		MEM8
		SEP	#00100000B
;
		LDA	BLKXPS1,Y	; position (L) set
		STA	<WORK0
		LDA	BLKXPS0,Y	; position (H) set
		STA	<WORK1
		LDA	BLKYPS1,Y	; position (L) set
		STA	<WORK2
		LDA	BLKYPS0,Y	; position (H) set
		STA	<WORK3
;
		PHX
		LDX	#ENNO-1
BCR010		EQU	$
		LDA	ENMODE,X
		CMP	#EMOVE
		BCC	BCR020
;
		LDA	ENXPSL,X
		STA	<WORK4
		LDA	ENXPSH,X
		STA	<WORK5
		LDA	ENYPSL,X
		STA	<WORK6
		LDA	ENYPSH,X
		STA	<WORK7
;
		MEM16
		REP	#00100000B
;
		LDA	<WORK0
		SEC
		SBC	<WORK4
		CLC
		ADC	#0010H
		CMP	#0020H
		BCS	BCR020
		LDA	<WORK2
		SEC
		SBC	<WORK6
		CLC
		ADC	#0010H
		CMP	#0020H
		BCS	BCR020
		MEM8
		SEP	#00100000B
;
		LDA	#08H
		STA	ENHNFG,X
;
		PHY
		LDA	BLKMUKI,Y
		LSR	A
		TAY
		LDA	BLHNXS,Y
		STA	ENHNXS,X
		LDA	BLHNYS,Y
		STA	ENHNYS,X
		PLY
BCR020		EQU	$
		MEM8
		SEP	#00100000B
		DEX
		BPL	BCR010
;
		PLX
;
		RTS
;- - - - - - - - - - - - - - - - -
BLHNXS		EQU	$
		HEX	00,00,E0,20
BLHNYS		EQU	$
		HEX	E0,20,00,00
;********************************************************************
;*		BLOCK oam check sub			(BLCHCK)    *
;********************************************************************
BCKPT1		EQU	$		; player hosei kihon data
;			   (y)    (y)    (x)    (x)
		WORD	00008H,00018H,00000H,00010H
BCKPT2		EQU	$		; player haba data 1
;                          (x)    (x)    (y)    (y)
		WORD	00000H,00000H,00008H,00008H
BCKPT3		EQU	$		; player haba data 2 
;                          (x)    (x)    (y)    (y)
		WORD	0000FH,0000FH,00017H,00017H
BCKPT4		EQU	$		; block hosei kihon data
;                          (y)    (y)    (x)    (x)
		WORD	0000FH,00000H,0000FH,00000H
BCKPT5		EQU	$		; block haba data 1
;                          (x)    (x)    (y)    (y)
		WORD	00000H,00000H,00000H,00000H
BCKPT6		EQU	$		; block haba data 2
;                          (x)    (x)    (y)    (y)
		WORD	0000FH,0000FH,0000FH,0000FH
PYKIHON		EQU	$
		WORD	PLYPS1,PLYPS1,PLXPS1,PLXPS1
PYKIHON1	EQU	$
		WORD	PLXPS1,PLXPS1,PLYPS1,PLYPS1
PYKIHON2	EQU	$
		WORD	BMWORK+0,BMWORK+0,BMWORK+2,BMWORK+2
PYKIHON3	EQU	$
		WORD	BMWORK+2,BMWORK+2,BMWORK+0,BMWORK+0
;
BLCHCK		EQU	$
		PHY
		STY	<WORKE
		STZ	<WORKF
		LDA	<PLYPS0
		STA	<PLYHN1
		LDA	<PLXPS0
		STA	<PLXHN1
		MEM16
		REP	#00100000B
;
		LDA	<PWORK1
		AND	#000FH
;
		LDY	#06H		; houkou check
BLCK100		EQU	$
		LSR	A
		BCS	BLCK200
		DEY
		DEY
		BPL	BLCK100
		BRL	BLCKE00
;
BLCK200		EQU	$
		LDA	<WORKE
		PHA
		LDA	PYKIHON1,Y
		STA	<WORKC
		LDA	PYKIHON3,Y
		STA	<WORKE
;
		LDA	(<WORKC)	; player haba check ram set
		CLC
		ADC	!BCKPT2,Y
		STA	<WORK0
		LDA	(<WORKC)
		CLC
		ADC	!BCKPT3,Y
		STA	<WORK2
;
		LDA	(<WORKE)	; block haba check ram set
		CLC
		ADC	!BCKPT5,Y
		STA	<WORK4
		LDA	(<WORKE)
		CLC
		ADC	!BCKPT6,Y
		STA	<WORK6
;
		LDA	PYKIHON,Y
		STA	<WORKC
		LDA	PYKIHON2,Y
		STA	<WORKE
;
		LDA	(<WORKC)	; player kihon check ram set
		CLC
		ADC	!BCKPT1,Y
		STA	<WORK8	
 		LDA	(<WORKE)	; block kihon check ram set
		CLC
		ADC	!BCKPT4,Y
		STA	<WORKA
;
		LDA	<HANIFG1
		AND	#0FFFBH
		STA	<HANIFG1
;
		PLA
		STA	<WORKE
;
		LDA	<WORK0		; atati haba check
		CMP	<WORK4
		BCC	BLCK240
		CMP	<WORK6
		BCC	BLCK280
BLCK240		EQU	$
		LDA	<WORK2
		CMP	<WORK4
		BCC	BLCKE00
		CMP	<WORK6
		BCS	BLCKE00
;
BLCK280		EQU	$
		PHY
		PHX
		LDX	<WORKE
		LDA	<PLMKCH
		AND	#00FFH
		CMP	BLKMUKI,X
		BNE	BLCK2E0
;
		LDY	#001H
		TXA
		LSR	A
		TAX
		LDA	BLKMODE,X
		BEQ	BLCK2C0
		LDY	#004H
BLCK2C0		EQU	$
		TYA
		AND	#00FFH
		TSB	<HANIFG1
BLCK2E0		EQU	$
		PLX
		PLY
		TYA			; houkou check
		AND	#0002H
		BEQ	BLCK300
;
		LDA	<WORK8
		SEC
		SBC	<WORKA
		BCC	BLCKE00
		CMP	#0008H
		BCS	BLCKE00
		EOR	#0FFFFH
		INC	A
		STA	<WORK0
		CLC
		ADC	(<WORKC)
		STA	(<WORKC)
		BRA	BLCK400
;
BLCK300		EQU	$
		LDA	<WORK8
		SEC
		SBC	<WORKA
		CMP	#0FFF8H
		BCC	BLCKE00
		EOR	#0FFFFH
		INC	A
		STA	<WORK0
		CLC
		ADC	(<WORKC)
		STA	(<WORKC)
;
BLCK400		EQU	$
		MEM8
		SEP	#00100000B	; move counter set
		LDX	#000H
		TYA
		AND	#00000100B
		BEQ	BLCK500
		INX
BLCK500		EQU	$
		LDA	<PLYMVC,X
		CLC
		ADC	<WORK0
		STA	<PLYMVC,X
;
BLCKE00		EQU	$
		MEM8
		SEP	#00100000B
		JSR	DORSCR
		PLY
		RTS
;
;********************************************************************
;*		BLOCK OAM set sub			(BLCKOM)    *
;********************************************************************
BLCKOM		EQU	$		; block oam set main
		PHB
		PHK
		PLB
;
		LDA	BLKMODE+0
		ORA	BLKMODE+1
		BEQ	BLCM400
;
		LDX	#001H
BLCM100		EQU	$
		LDA	BLKMODE+0,X
		BEQ	BLCM200
		TXA
		ASL	A
		TAY
		PHX
		JSR	BLOMST
		PLX
BLCM200		EQU	$
		DEX
		BPL	BLCM100
;
BLCM400		EQU	$
		PLB
		RTL
;
;********************************************************************
;*		BLOCK OAM set sub			(BLOMST)    *
;********************************************************************
BLCRDT		EQU	$	; block chara no data
		HEX	00C		;0	(E0)
		HEX	00C		;1	(E6)
		HEX	00C		;2	(E8)
		HEX	00C		;3	(EA)
		HEX	0FF		;4
BLMDDT		EQU	$	; block mode data
		BYTE	000H,001H,002H,003H,004H
		BYTE	000H,000H,000H,000H	
BLOMST		EQU	$
		PHY
		LDA	#004H		; block oam kosuu set
		JSL	>OAMENT2
		PLY
		LDA	BLKYPS1,Y	; ude kihon y-pos set
		STA	<WORK0
		LDA	BLKYPS0,Y
		STA	<WORK1
		LDA	BLKXPS1,Y	; ude kihon y-pos set
		STA	<WORK2
		LDA	BLKXPS0,Y
		STA	<WORK3
;
		MEM16
		REP	#00100000B
		LDA	<WORK0
		SEC
		SBC	<SCCV2		; Y-scr 2hosei
		DEC	A
		STA	<WORK0		; ude y-pos set
		LDA	<WORK2		; ude kihon x-pos set
		SEC
		SBC	<SCCH2		; X-acr hosei
		STA	<WORK2		; ude x-pos set
		MEM8
		SEP	#00100000B
;
		PHY
		LDY	BKMODE		; block mode set
		LDA	!BLMDDT,Y
		TAX
		LDY	#000H
BLOM400		EQU	$
		LDA	!BLCRDT+1,X
		CMP	#0FFH
		BNE	PLOM420
;;;;;;;;		STZ	BKMODE
		BRA	PLOM450
PLOM420		EQU	$
		XBA
		LDA	<WORK2
		STA	(<OAMADR),Y
		INY
		LDA	<WORK0
		STA	(<OAMADR),Y
		INY
		XBA
		STA	(<OAMADR),Y
		INY
		LDA	#020H
		STA	(<OAMADR),Y
		INY
		TYA
		SEC
		SBC	#004H
		LSR	A
		LSR	A
		TAY
		LDA	#02H		; block oam sub set
		STA	(<OSBADR),Y
PLOM450		EQU	$
		PLY
		RTS
;
;************************************************************************
;*		Player all flag clear sub		(PLYCLR)	*
;************************************************************************
PLYCLR		EQU	$
		PHB
		PHK
		PLB
;
		LDA	#002H
		STA	<PLMKCH		; yes !
		STZ	<PLMUKI
;;;;;;;;		STZ	TMDTFG
		STZ	AITMBT
		STZ	AITMBT1
		STZ	TMBMCT		; meta flag clear
		STZ	DKYHZN
		STZ	PYDMNO		; y-key move clear
		STZ	PYDMNO1		; y-key move clear
		STZ	PYDMMD
		STZ	PYSTOP
		STZ	<KENKYL
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		JSL	>SWSPCL1
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		STZ	<PLZPS0
		STZ	<DIEFG
		STZ	<HANEFG
		STZ	PYFLASH
		STZ	PIPIFG		; piri piri ? [NO:LNMV030]
		STZ	ATMTHK
		STZ	<KAKUMD		; kakuremino check
		JSR	KAKU200		; kakuremino clear !!
		JSR	PLKW0C0		; ken move clear !!
		STZ	MRTKFG		; muteki flag on ? [
		STZ	AITMMD
		LDA	<PWORK1
		AND	#11110000B
		STA	<PWORK1
		STZ	PSSTOP
		STZ	KENTIM
;
		PLB
		RTL
;
;************************************************************************
;*		Player all flag clear sub		(PLYCLR1)	*
;************************************************************************
PLYCLR1		EQU	$
		STZ	<PLMUKI
		STZ	<PWORK1
		STZ	!PYFLASH
		STZ	!ICEFLAG
		JSL	>SWSPCL1
		STZ	!PYSTOP
		STZ	PYFLASH
		STZ	TMSWON
		STZ	RABFLG
		STZ	<RABIFG
		STZ	USAGTM
		STZ	USGOFN
		STZ	DOKATA
		STZ	ATHKOK
		STZ	XRHIFG
		STZ	HKMVON
		STZ	DAMEFG
		STZ	PLMKPH
		STZ	OPMSFG
		STZ	CHKONS
		STZ	RUYAFG
		STZ	ITMVFG
		STZ	TRIFFG
PLYCLR2		EQU	$
		STZ	PSSTOP
		STZ	KENTIM
		STZ	PKYNOT
		STZ	CACHON
		STZ	<HANIFG1
		STZ	<HOLEFG1
		STZ	<HOLEFG2
		STZ	<HOLEFG2
;
PLYCLR3		EQU	$
		STZ	PLAYDO
		STZ	KNSPMD
		STZ	KNSPMD+1
		STZ	!KNBTFG
		STZ	!KNPASFG
		STZ	!KNSTOP
		STZ	FTBGON
		STZ	AITMBT
		STZ	AITMBT1
		STZ	TMBMCT		; meta flag clear
		STZ	DKYHZN
		STZ	PYDMNO		; y-key move clear
		STZ	PYDMNO1		; y-key move clear
		STZ	PYDMMD
		STZ	<KENKYL
		STZ	<KENKY
		STZ	<KENMD
		STZ	PYDMBT
		STZ	PYDMBT1
		STZ	DODMBT
		STZ	<PYMKFG
		STZ	<DIEFG
		STZ	<HANEFG
		STZ	PIPIFG		; piri piri ? [NO:LNMV030]
		STZ	ATMTHK
		STZ	<KAKUMD		; kakuremino check
		JSR	PLKW0C0		; ken move clear !!
		STZ	MRTKFG		; muteki flag on ? [
		STZ	AITMMD
		STZ	BOGMOV
		STZ	BMCHOK
		STZ	CACHOK
		STZ	ATHKOK
		STZ	DZHKOK
		RTL
;
;********************************************************************
;*		rasen kaidan move			(RASINT)    *
;********************************************************************
RASINT		EQU	$
		PHB
		PHK
		PLB
;
		LDX	#009H
RASI040		EQU	$
		LDA	BMMODE,X
		CMP	#JPKF0
		BNE	RASI060
		STZ	BMMODE,X
RASI060		EQU	$
		DEX
		BPL	RASI040
;
		LDA	<PYCRCH
		CMP	#005H
		BCC	RASI080
		STZ	<PYCRCH
RASI080		EQU	$
		STZ	<PLYBUF		; buffer clear
		STZ	<PLXBUF
		STZ	PYDMMD		; mode set
		LDA	#01CH		; timer set
		STA	RASNFM
		LDA	#020H
		STA	RASNYK
		LDA	#001H
		STA	MRTKFG
;
		LDA	!STPFLG		; 
		AND	#004H
		BEQ	RASI0A0
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#kidn2
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#kidn2
		JSR	SDLP12
		BRA	RASI0C0
RASI0A0		EQU	$
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#kidn0
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#kidn0
		JSR	SDLP12
;
RASI0C0		EQU	$
		STZ	<WORK1
		LDX	#010H
		LDA	!STPFLG		; 0---> up 0 NOT ---> down
		AND	#004H
		BEQ	RASI100
		LDX	#0F1H
		LDA	#0FFH
		STA	<WORK1
;;;;;;;;		LDA	#001H
;;;;;;;;		STA	<PLBGCKF
RASI100		EQU	$
		STX	<WORK0
		MEM16
		REP	#00100000B
		LDA	<PLXPS1		; x-pos hozon
		CLC
		ADC	<WORK0
		STA	<PLHNL1
		LDA	<PLYPS1		; y-pos hozon
		STA	<PLHNL0
		MEM8
		SEP	#00100000B
;
		PLB
		RTL
;
;********************************************************************
;*		rasen kaidan IN move			(RASNIN)    *
;********************************************************************
RASNIN		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		STA	PLSVX1
		LDA	<PLYPS1
		STA	PLSVY1
		MEM8
		SEP	#00100000B
;
		LDA	PYDMMD
		BEQ	RASN080
		RTL
;
RASN080		EQU	$
		STZ	DAMEFG
		STZ	<HANEFG
		STZ	<DIEFG
		PHB
		PHK
		PLB
;
		LDA	!STPFLG		; 0---> up 0 NOT ---> down
		AND	#004H
		BEQ	RASN200
;
		LDA	#0FEH		;
		STA	<PLYSPD
		DEC	RASNFM
		BPL	RASN100
		STZ	RASNFM
;;;;;;;;		LDA	<PLYBUF
;;;;;;;;		STA	<PLXBUF
		LDA	#000H
		STA	<PLYSPD
		LDA	#0FEH
		STA	<PLXSPD
RASN100		EQU	$
		BRA	RASN300
;
RASN200		EQU	$
		LDA	#0FEH
		STA	<PLYSPD
		DEC	RASNFM
		BPL	RASN300
		STZ	RASNFM
		LDA	#0FEH
		STA	<PLYSPD
		LDA	#002H
		STA	<PLXSPD
;
RASN300		EQU	$
		JSL	>HNSPST		; player speed set
		JSL	>PYCR280
;
		LDA	RASNFM
		BNE	RASN360
		DEC	RASNYK
		BPL	RASN360
		STZ	RASNYK
		LDX	#004H
		LDA	!STPFLG		; 0---> up 0 NOT ---> down
		AND	#004H
		BNE	RASN320
		LDX	#006H
RASN320		EQU	$
		STX	<PLMKCH
;
RASN360		EQU	$
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B
		LDA	<PLXPS1
		SEC
		SBC	<PLHNL1
		BPL	RASN400
		EOR	#0FFH
		INC	A
RASN400		EQU	$
		BNE	RASN500
;
		MEM16
		REP	#00100000B
		JSL	>STPC800
		MEM8
		SEP	#00100000B
;
		LDA	>OPMODE+0
		BEQ	RASN410
		JSL	>RAOPIT
;
RASN410		EQU	$
;;;;;;;;		STZ	<PLBGCKF
;;;;;;;;		LDA	#0FFFCH
		LDA	#0F8H
		STA	<WORK0
		LDA	#0FFH
		STA	<WORK1
		LDA	!STPFLG		; 0---> up 0 NOT ---> down
		AND	#004H
		BNE	RASN420
;;;;;;;;		LDA	#001H
;;;;;;;;		STA	<PLBGCKF
		LDA	#00CH
		STA	<WORK0
		STZ	<WORK1
;
RASN420		EQU	$
;;;;;;;;		LDA	<PLYPS1
;;;;;;;;		STA	<PLHNL0
;;;;;;;;		CLC
;;;;;;;;		ADC	<WORK2
;;;;;;;;;		STA	<PLYPS1
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		CLC
		ADC	<WORK0
		STA	<PLHNL1
		MEM8
		SEP	#00100000B
		LDA	#001H
		STA	PYDMMD
		LDA	#006H
		STA	RASNYK
;
		LDA	!STPFLG         ; 0---> up 0 NOT ---> down
		AND	#004H
		BNE	RASN440
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#kidn1
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#kidn1
		JSR	SDLP12
		BRA	RASN500
RASN440		EQU	$
;;;;;;;;		JSL	>SDLRCP		; sound (L,R)check
;;;;;;;;		ORA	#kidn3
;;;;;;;;		STA	!SOUND2		; <sound>
		LDA	#kidn3
		JSR	SDLP12
;
RASN500		EQU	$
		MEM8
		SEP	#00100000B
		PLB
		RTL
;
;********************************************************************
;*		rasen kaidan  OUT move			(RASNOT)    *
;********************************************************************
RASNOT		EQU	$
		PHB
		PHK
		PLB
;
		STZ	DAMEFG
		STZ	<HANEFG
		STZ	<DIEFG
		STZ	MRTKFG		; muteki clear !!
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		STA	PLSVX1
		LDA	<PLYPS1
		STA	PLSVY1
		MEM8
		SEP	#00100000B
;
		DEC	RASNYK
		BPL	RAOT080
		STZ	RASNYK
		LDA	#002H
		STA	<PLMKCH
RAOT080		EQU	$
;;;;;;;;		LDA	#01H
;;;;;;;;		STA	<PLBGCKF
		LDA	#000H
		STA	<PLYSPD
		LDA	#004H
		STA	<PLXSPD
;
		LDA	!STPFLG		; 0---> up 0 NOT ---> down
		AND	#004H
		BEQ	RAOT100
;
;;;;;;;;		STZ	<PLBGCKF
		LDA	#002H
		STA	<PLYSPD
		LDA	#0FCH
		STA	<PLXSPD
;
RAOT100		EQU	$
		LDA	PYDMMD
		CMP	#002H
		BNE	RAOT200
		LDA	#010H
		STA	<PLYSPD
		STZ	<PLXSPD
;;;;;;;;		STZ	<PLBGCKF
RAOT200		EQU	$
		JSL	>HNSPST		; player speed set
		JSL	>PYCR280
;
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B
		LDA	<PLXPS1
		CMP	<PLHNL1
		BNE	RAOT300
		LDA	#002H
		STA	PYDMMD
RAOT300		EQU	$
		MEM8
		SEP	#00100000B
		PLB
		RTL
;
;********************************************************************
;*		street kaidan init. 			(STRINT)    *
;********************************************************************
STEINT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	#007H		; timer set
		STA	RASNFM
;
;
		PLB
		RTL
;
;********************************************************************
;*		street kaidan IN move			(STRTIN)    *
;********************************************************************
STRTIN		EQU	$
STRTOT		EQU	$
		PHB
		PHK
		PLB
		MEM16
		REP	#00100000B
		LDA	<PLXPS1
		STA	PLSVX1
		LDA	<PLYPS1
		STA	PLSVY1
		MEM8
		SEP	#00100000B
;
		STZ	<PLXSPD
;
		LDY	#008H
		LDA	<GAMEMD
		CMP	#p1_sls0
		BNE	STIN100
		LDY	#0FEH
		LDA	!STPFLG
		AND	#004H
		BEQ	STIN100
		LDY	#0FAH
STIN100		EQU	$
		STY	<PLYSPD
;
		JSL	>HNSPST		; player speed set
		JSL	>PYCR280
;
		PLB
		RTL
;
;************************************************************************
;*		Player out hosei check sub		(PLOTCK1)	*
;************************************************************************
PLOTCK1		EQU	$
		PHB
		PHK
		PLB
		PHX
;
		JSR	DORSCR
;
		PLX
		PLB
		RTL
;
;************************************************************************
;*		Player jump scrool check sub		(PLJSCK)	*
;************************************************************************
PLJSCK		EQU	$
		PHB
		PHK
		PLB
;
		LDA	<LNMODE
		CMP	#KNSP
		BEQ	PLJS100
		CMP	#SDSP
		BEQ	PLJS100
		CMP	#BBSP
		BEQ	PLJS100
		CMP	#JNSP
		BEQ	PLJS100
;
		LDA	<HANEFG
		BEQ	PLJSF00
;
PLJS100		EQU	$
		STZ	<PLYSPD
		STZ	<PLXSPD
		LDA	#003H
		STA	JMPTIM
;
		MEM16
		REP	#00100000B
		LDA	PLSVX1
		STA	<PLXPS1
		LDA	PLSVY1
		STA	<PLYPS1
		MEM8
		SEP	#00100000B
;
		SEC
		PLB
		RTL
;
PLJSF00		EQU	$
		CLC
		PLB
		RTL
;
;************************************************************************
;*		Player joutai check sub			(PLJTCK)	*
;************************************************************************
PLJTCK		EQU	$
		LDA	<LNMODE
		CMP	#LNMD
		BEQ	PLJT100
		CMP	#SWMD
		BEQ	PLJT100
		CMP	#DASH
		BNE	PLJT900
;
PLJT100		EQU	$
		LDA	<KENKY
		AND	#10000000B
		ORA	HIKUFG
		ORA	AITMBT
		ORA	AITMBT1
		ORA	BMCHOK
		ORA	CACHOK
		ORA	PYDMBT
		ORA	DODMBT
		BNE	PLJT900		
;
PLJT800		EQU	$
		SEC
		RTL
;
PLJT900		EQU	$
		CLC
		RTL
;
;
;************************************************************************
;*		ending player auto demo			(EDPYDM0)	*
;************************************************************************
EDPYDM0		EQU	$
		PHB
		PHK
		PLB
;
		LDA	<PLYPS1
		CMP	#098H
		BCC	EDPY200
		CMP	#0A9H
		BCS	EDPY100
;
		LDA	#014H		; slow walk !!
		STA	<PYSPFG
;
EDPY100		EQU	$
		LDA	#00001000B
		STA	<PWORK1
		STA	<PLMUKI
		STZ	<PLMKCH
		LDA	#040H		; mochiage timer !!
		STA	<KENFM
		BRA	EDPY400
;
EDPY200		EQU	$
		STZ	<PYCRCH
		STZ	<PWORK1
		STZ	<PLMUKI
		DEC	<KENFM
		LDA	<KENFM
		BNE	EDPY400
;
		LDA	#002H
		STA	ATMTHK
		INC	<JRSBPT
EDPY400		EQU	$
		PLB
		RTL
;
;************************************************************************
;*		warp mushi check sub			(WPMSCK)	*
;************************************************************************
WPMSCK		EQU	$
		PHX
;
		LDA	<DIEFG
		ORA	ATMTHK
		BNE	WPMS300
		LDA	PYDMBT
		AND	#10000000B
		BNE	WPMS300
;
		LDX	#004H
WPMS100		EQU	$
		LDA	BMMODE,X
		CMP	#WAPMV
		BEQ	WPMS300
		DEX
		BPL	WPMS100

WPMS200		EQU	$
		PLX
		CLC
		RTL
;
WPMS300		EQU	$
		PLX
		SEC
		RTL
;
;************************************************************************
;*		dokan katsugi check sub			(DKHDCK)	*
;************************************************************************
DKHDCK		EQU	$
		LDX	#004H
DKHD100		EQU	$
		LDA	BMMODE,X
		CMP	#BRSEN
		BNE	DKHD200
		STZ	AITMBT1
		STZ	<PYMKFG
		STZ	BMMODE,X
		BRA	DKHD300
DKHD200		EQU	$
		DEX
		BPL	DKHD100
;
DKHD300		EQU	$
		LDA	PYDMBT
		AND	#10000000B
		ORA	<DIEFG
		BNE	DKHD900
;
		CLC
		RTL
;
DKHD900		EQU	$
		SEC
		RTL
;
;**************************************************************
;*		messege window set init.	(MESWIT)      *
;**************************************************************
PYRETUN		EQU	$
		LDA	<GMMODE
		BNE	PYRE100
		JSL	>PPOSKP
PYRE100		EQU	$
		RTS
;
;************************************************************************
;*		kanban messji data		        (YOMMES)       *
;************************************************************************
YOMMES		EQU	$		; chijoo messege data
		WORD	MS_01B0,MS_01B0,MS_008E,MS_0086,MS_0086,MS_01B0,MS_01B0,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_0082,MS_0086,MS_0086,MS_01B0,MS_01B0,MS_0084
		WORD	MS_0083,MS_008F,MS_0088,MS_0088,MS_01B0,MS_01B0,MS_0085,MS_01C8
		WORD	MS_0081,MS_0081,MS_01B0,MS_0081,MS_0081,MS_008A,MS_01B0,MS_01B0
		WORD	MS_0081,MS_0081,MS_01B0,MS_0081,MS_0081,MS_008B,MS_01B0,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_0087,MS_01B0,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_01B0,MS_0088,MS_01B0,MS_008C,MS_008C,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_008D,MS_0089,MS_01B0,MS_008C,MS_008C,MS_01B0
;
		WORD	MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_01C0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01C1
		WORD	MS_01B0,MS_01C2,MS_01C3,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01C9
		WORD	MS_01C7,MS_01C7,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0
		WORD	MS_01C7,MS_01C7,MS_01B0,MS_01B0,MS_01B0,MS_01C4,MS_01B0,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01C5,MS_01B0,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0,MS_01B0
		WORD	MS_01B0,MS_01B0,MS_01B0,MS_01C6,MS_01B0,MS_01B0,MS_01B0,MS_01B0
;
YOMMES1		EQU	$		; danjon messege data
		WORD	MS_0240,MS_0240,MS_0240,MS_0256,MS_0240,MS_0240,MS_0240,MS_0240;0
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0253,MS_0240
		WORD	MS_024B,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0241
		WORD	MS_0246,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0254,MS_0240
;
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240; 40
		WORD	MS_0240,MS_0240,MS_0240,MS_024C,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0245,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0247,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_024C,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_024E,MS_0240,MS_0240,MS_0240,MS_0255
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_024D,MS_0240,MS_0250,MS_0240
;
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240; 80
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0248
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_024F,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
;
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0251,MS_0240,MS_0240,MS_0240 ; c0
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0252,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0244,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
;
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240 ;100
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0241,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_05B3,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
		WORD	MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240,MS_0240
;
;
;************************************************************************
;*		sound data		        		       *
;************************************************************************
;************* port 2
kens0		EQU	001H		; ken furi sound (1)
kens1		EQU	002H		; ken furi sound (2)
kens2		EQU	003H		; ken furi sound (3)
kens3		EQU	004H		; ken furi sound (4)
kens4		EQU	005H		; ken chari sound (0)
tate1		EQU	006H		; ken chari sound (1)
baku1		EQU	00BH		; bomb sound
baku2		EQU	00CH		; bomb sound 1
hanms		EQU	010H		; hunmer sound
scps0		EQU	012H		; scop tsuchi sound
okara		EQU	013H		; okarina sound ! 
kakon		EQU	014H		; player kakuremino on ! 
kakof		EQU	015H		; player kakuremino off ! 
kidn0		EQU	016H		; player kaidan up start
kidn1		EQU	017H		; player kaidan up end 
kidn2		EQU	018H		; player kaidan down start 
kidn3		EQU	019H		; player kaidan down end 
kusas		EQU	01AH		; player walk kusa sound
numas		EQU	01BH		; player walk numa sound
watrs		EQU	01CH		; player walk water sound
jumps		EQU	020H		; player jump sound
jpeds		EQU	021H		; player jump end sound
;
bloks		EQU	022H		; player brock push
dashs		EQU	023H		; player dash sound
dobun		EQU	024H		; player water in !!
swims		EQU	025H		; player swim sound !!
damgi		EQU	026H		; player damegi sound
lkdie		EQU	027H		; player die sound
mgck1		EQU	02CH		; magic ken age sound
;************* port 3
dsbom		EQU	003H		; dash butsukari sound
coins		EQU	00AH		; coin chachi sound
atcak		EQU	00FH		; aitem chachi fanfare
holes		EQU	01FH		; player hole down sound
mgckn		EQU	023H		; magic ken furi sound
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
