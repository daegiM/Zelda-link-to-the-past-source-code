;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3		1991.09.07(SAT)
;
;--------------------------------------------------------------------
;
		ORG	098000H
;
;=============================================== (zel_bms1) =========
		GLB	TAKVMAD,TKSVRM,ITBGCK,ITBGCK1,BMLRDT
		GLB	HBINT0,FUTNINT,IBIMIT,TAKAINT,TKGINT,TKDINT
		GLB	OKIMIT,KAZAINT,TORIINT,BLLIINT,OPBKINT
		GLB	BOMINT,JPIMIT,YOUSIT,SBARINT,KTFRINT,SCPINT
		GLB	TKFLIT,DAKINT,BHIMIT,CDKNINT,YAIMIT,PUYAIT
		GLB	TTKINT,TTKINT1,SNDINT,KONINT,KNHBIT,KNBMCLR
		GLB	KNFSINT,YURINT,BHBINT,WARPINT,WARPINT1,BALBKIT
		GLB	JISNINT,KNSOINT,KBDMIT,PUBNIT,DTMVIT,WTIMIT
		GLB	HAKAINT,FOTINT,RAOPIT,OPINIT,OPTNMV,BALBKIT
		GLB	RAOPIT1,MCNINT,KNKMIT,TTKINT2,TPHDIT,PLKTINT,RNDSKM
		GLB	KMKMIT,BMKRINT,RDBMINT,BMCLER,BMCLER2,BHBIT1,DAKINT1
		GLB	OPTIM,OTIM
		GLB	TAKASBD,TAKAATR,CINCNS,KNKIIT,JPRMS23,JPRMS33
		GLB	prnce,jjmov,jjwat,jjsmv,mesmv,prnc1,kajya,hnoji
		GLB	nashi,kajy1,bakud,takar,monky,monwt,mesm1,edcod
;=============================================== (zel_exst) =========
		EXT	BMIDSH,BMBCKL,BMBCKL1,OPPLSH
		EXT	BMITOC,OKZSDT,BMYXST31,ITMPSTL
		EXT	TKFLM,BOLCG,BOBFLM1,KNDTINX,KNMDDAT,MS_FFFF
		EXT	BRSEN,HIBA1,BRSEN,KBBOM,LVUBR,DTED0,BHMOV,YAEND
		EXT	OPBMV,TKNAG,KONRM,TPHDM,MCIMM,TORKM,PGKMV
		EXT	BOMBM,BOLMV,BOMBA,RDBOM,PORIG,BOLM2,JPKF0,LVUBR
		EXT	KNSOM,KNSEN,JPKM0,CDKMV,SBAMV,SODMV,SPBMV
		EXT	atckh,mono0,jisin,bomb1,bomb0,yasd0,usag0,usag1
		EXT	tate0,kins0,kona0,frod1,dobn1,fires,pinpn,hakas
		EXT	bsfan,kakof
;=============================================== (zel_ply1) =========
		EXT	MESWIT,PGKRITL
;=============================================== (zel_enmy) =========
		EXT	BGDTRD2,EXBCHK2,ENRMCL,ENEMY,RNDSET,ITMGET
		EXT	ENCRST2,OAMENT1,OAMENT2,SSERCH2,ESERCHL
		EXT	CROJCK2,SSERCH,ENDMST,ENDMST2,OAMENT3
		EXT	ALENDM,OAMENT4,OAMENT5,OAMENT6,CTBOSST
		EXT	EINIT,EMOVE,EICE,LINE0,PLCHK
;=============================================== (zel_enmy3) ========
		EXT	HELP1ST,SARKKST,SARKKST1,SARKKST2
;=============================================== (zel_end2) ========
		EXT	SDLRCK,SDLRCP,SDLRCB
;=============================================== (zel_main) =========
		EXT	JSRSUB
		EXT	MD_djply,MD_etcpl,MD_gdply
		EXT	GDCHCK
;///////		EXT	RDCHCK
;=============================================== (zel_bgwt) =========
		EXT	BDRCHCK
;=============================================== (zel_char) =========
		EXT	PWTRCGS1,OPTCBFST,PGRVCGST
		EXT	PLCGCN0,PLCGCN1,PLCGCN2,THCGCN0,THCGCN1
		EXT	THCGCN2,TTCBFST,KNCBFST,ITMCBFST,ITMCBFST1
		EXT	SPOJCNG,TATEST,KENST,CHITEMS0
;
		EXT	spoj0,spoj1,spoj2,spoj3,spoj4
		EXT	spoj5,spoj6,spoj7,spoj8
;================================================ (zel_play) ========
		EXT	BGCHCKA,ATMSIT,PLOTCK,DASCLR1,MGPTSB2
		EXT	PLRCHK,PLJTCK
		EXT	LNMD,SWMD,ATDM,BOGN,JWMV,HLDM,MCAGE,DAMGI
		EXT	BKYTD0,SDSP,BBSP,JNSP
;================================================ (zel_pysb) ========
		EXT	OMS000
;================================================ (zel_grnd) =========
		EXT	UMGTWRT0,gif2
;================================================ (zel_bg3) =========
		EXT	ITEM0ST
;================================================ (zel_init) ========
		EXT	PLRPDY,PLRPDX,UT4RWT,DJEXTCK
		EXT	ut4p03,ut4p04,ut4p05,ut4p06,ut4p08
		EXT	p1_mcng,p1_mcg1,p1_sls0,p1_sls1,p1_kstp,p1_bmbd
		EXT	p1_sdop,p1_ltwp,p1_plgn
		EXT	p2_kiri,p2_kage
		EXT	p3_msge,p3_warp,p3_sitm
;=============================================== (zel_comn) =========
		EXT	TBKCHK
;================================================ (zel_msge) ========
		EXT	MS_0044,MS_0045,MS_0046,MS_0047,MS_004C
		EXT	MS_004D,MS_004E
		EXT	MS_00B0,MS_00B1,MS_00B2,MS_00B3,MS_00B4
		EXT	MS_00B5,MS_00B6,MS_00B7,MS_00B8,MS_00B9
		EXT	MS_00BA,MS_00BB,MS_00BC,MS_00BD,MS_00BE
		EXT	MS_00BF,MS_00C0,MS_00C1,MS_00C2,MS_00C3
		EXT	MS_00C4,MS_00C5,MS_00C6,MS_00C7,MS_00C8
		EXT	MS_00C9,MS_00CA,MS_00CB,MS_00CC,MS_00CD
		EXT	MS_00CE,MS_00CF,MS_00D0,MS_00D1,MS_00D2
		EXT	MS_00D3,MS_00D4,MS_00D5,MS_00D6,MS_00D7
		EXT	MS_00D8,MS_00D9,MS_00DA,MS_00DB,MS_00DC
		EXT	MS_0146,MS_0147,MS_0148,MS_0149,MS_014A
		EXT	MS_0150,MS_0151,MS_0152,MS_0154
		EXT	MS_03F1
		EXT	MS_0452
		EXT	MS_0462
		EXT	MS_0520,MS_0521,MS_0522,MS_0523
;====================================================================
;
		EXTEND
;
		MEM8
		IDX8
;
;==============================================================
;
;**************************************************************
;*		scop hibana  move init.	        (HBINT0)      *
;**************************************************************
HBYXPS		EQU	$		; hibana initial y,x data
		WORD	00015H,0FFF5H	; horu left
		WORD	00015H,0000BH	; horu right
		WORD	00003H,0FFFAH	; hanmer up
		WORD	00015H,00005H	; hanmer down
		WORD	00010H,0FFF2H	; hanmer left
		WORD	00010H,0000EH	; hanmer right
HBKIXP		EQU	$		; hibana kihon x-pos data
		WORD	0FFFDH,00013H
		WORD	00002H,0000DH
		WORD	0FFFAH,00016H
HBINT0		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	HBIN200
;
		STZ	BMCONT,X	; hibana mode counter
		LDA	#02H		; hibana flem counter
		STA	BMFLFG,X
		LDA	#001H
		STA	BUMFLM,X
;
		STZ	BMYSPD,X
		STZ	BMXSPD,X
;
		LDA	AITMBT		; hanmer ? [NO:HBIN090]
		BEQ	HBIN090
		LDA	<PLMKCH
		LSR	A
		CLC
		ADC	#002H
		TAY
		BRA	HBIN100
HBIN090		EQU	$
		LDA	AITMBT1
		BEQ	HBIN100
		LDY	#000H
		LDA	<PLMKCH
		CMP	#004H
		BEQ	HBIN100
		LDY	#001H
HBIN100		EQU	$
		TYA
		STA	BMSTAT,X
		ASL	A
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	!HBYXPS,Y	; hibana y-pos set
		CLC
		ADC	<PLYPS1 
		STA	<WORK0
		LDA	!HBYXPS+2,Y	; hibana x-pos set
		CLC
		ADC	<PLXPS1
		STA	<WORK2
		TYA
		LSR	A
		TAY
		LDA	<PLXPS1		; kihon hibana x-pos set !!
		CLC
		ADC	!HBKIXP,Y
		STA	<WORK4
		MEM8
		SEP	#00100000B
		LDA	<WORK4
		STA	BUPLYL,X
		LDA	<WORK5
		STA	BUPLYH,X
;
		BRL	BMYXSET1
;
HBIN200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		futon set init. 		(FUTNINT)     *
;**************************************************************
FUTNINT		EQU	$
		PHB
		PHK
		PLB
;
		LDX	#000H
		STA	BMMODE,X
		PHX
		TAX
		LDA	>BMITOC-1,X
		STA	<WORKE
		PLX
		LDA	<WORKE
		STA	BMOMNO,X
		LDA	<PLBGCKF
		STA	BMPRIO,X
		LDA	CDBGCKF
		STA	BMCDPR,X
		STZ	BMCRFG,X
;;;;;;;;;		STZ	BMCONT,X
;
		MEM16
		REP	#00100000B
		LDA	#02162H
		STA	<WORK0
		LDA	#00938H
		STA	<WORK2
		MEM8
		SEP	#00100000B
BMYXSET1	EQU	$
		JSR	BMSTSB1		; beam y,x pos set sub
;
		PLB
		RTL

;
;**************************************************************
;*		ibiki move init.		(IBIMIT)      *
;**************************************************************
IBIMIT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	IBIM100
;
		STZ	BMCONT,X	; onpu conuter
;
		LDA	#0F8H		
		STA	BMYSPD,X
		LDA	#007H
		STA	BMFLFG,X
		INC	A
		STA	BMXSPD,X
		LDA	#0FFH
		STA	BMSTAT,X
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; onpu y-pos set 
		CLC
		ADC	#0004H
		STA	<WORK0
		LDA	<PLXPS1		; onpu x-pos set
		CLC
		ADC	#0010H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
IBIM100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		bomb item init.			(BOMINT)      *
;**************************************************************
BOMITY		EQU	$		; bomb int y-pos data
		WORD	00004H,0001CH,0000CH,0000CH
BOMITX		EQU	$		; bomb int x-pos data
		WORD	00008H,00008H,0FFFAH,00016H
BOMITY1		EQU	$		; bomb int y-pos data
		WORD	00000H,00018H,0000CH,0000CH
BOMITX1		EQU	$		; bomb int x-pos data
		WORD	00008H,00008H,00000H,00010H
BOMINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	IBIM100
;
		LDA	>BMBCNT
		BNE	BOM100
		STZ	BMMODE,X
		BRA	BOM200
BOM100		EQU	$
		DEC	A
		STA	>BMBCNT
		BNE	BOM140
		PHX
		JSL	>ITEM0ST	; metar set sub
		PLX
;
BOM140		EQU	$
		STZ	BMDEFG,X
		STZ	BMSTAT,X
		STZ	BMCONT,X	; retarn flag clear
		STZ	BCDMNO,X	; kakera mode no clear
		STZ	HIBSTAT,X
		LDA	>BOBFLM1	; bomb flem set
		STA	BUMFLM,X
		LDA	#007H		; kakera flem counter set
		STA	BCDFLM,X
		STZ	BMZPSL,X
		LDA	#008H
		STA	BMTIM0,X
		LDA	<PLMKCH		; 0,up 2,down 4,left 6,right
		LSR	A
		STA	BMMUKI,X
		STZ	KMYPMD,X
;
		JSL	>ITBGCK1
		BCC	BOM160
		LDY	<PLMKCH		; 0,up 2,down 4,left 6,right
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; bomb init. y-pos set 
		CLC
		ADC	!BOMITY1,Y
		STA	<WORK0
		LDA	<PLXPS1		; bomb init. x-pos set
		CLC
		ADC	!BOMITX1,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRA	BOM180
;
BOM160		EQU	$
		LDY	<PLMKCH		; 0,up 2,down 4,left 6,right
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; bomb init. y-pos set 
		CLC
		ADC	!BOMITY,Y
		STA	<WORK0
		LDA	<PLXPS1		; bomb init. x-pos set
		CLC
		ADC	!BOMITX,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
;
BOM180		EQU	$
		JSL	>SDLRCP		; sound (L,R) check
		ORA	#bomb0
		STA	!SOUND2		; <sound>
;
		BRL	BMYXSET1	; beam y,x pos est sub
BOM200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		Jump item init.			(JPIMIT)      *
;**************************************************************
JPSPDT		EQU	$		; item speed data
		HEX	020,018		; bumeran speed (4,N)
		HEX	030,028		; bumeran speed (4,N)
JPKYOR		EQU	$		; bumeran kyori data
		HEX	020,060
JPFLDT		EQU	$		; bumeran flem conter data
		HEX	003,002
JPKYDT		EQU	$		; houkou key data
		BYTE	00001000B,00000100B,00000010B,00000001B
BUHODT		EQU	$		; bumeran int. houkou data
		BYTE	008H,004H,002H,001H,009H,005H,00AH,006H
BMHOUK		EQU	$
		BYTE	002H,003H,003H,002H,002H,003H,003H,003H
BUINTY		EQU	$		; NAGE bumeran int y-pos data
		WORD	0FFF6H,0FFF8H,0FFF7H,0FFF7H
		WORD	0FFF6H,0FFF8H,0FFF7H,0FFF7H
BUINTX		EQU	$		; NAGE bumeran int x-pos data
		WORD	0FFF6H,0000BH,00008H,0FFF8H
		WORD	0FFF6H,0000BH,00008H,0FFF8H
BUINTY2		EQU	$		; bumeran int y-pos data
		WORD	0FFF0H,00006H,00000H,00000H
		WORD	0FFF8H,00008H,0FFF8H,00008H
BUINTX2		EQU	$		; bumeran int x-pos data
		WORD	00000H,00000H,0FFF8H,00008H
		WORD	00008H,00008H,0FFF8H,0FFF8H
JPIMIT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCC	JPIM020
		BRL	JPIM500
;
JPIM020		EQU	$
		STZ	BMFLFG,X	; bumeran start flag
		STZ	BMCONT,X	; retarn flag clear
		STZ	BUADSB,X	; add,sub speed clear
		STZ	BMZPSL,X
		STA	HIBSTAT,X
		LDA	#001H		; move on !!
		STA	BMRMOV
		LDA	>ITEMR02	; bumeran shurui set
		DEC	A
		STA	HBFLEM,X
		TAY
		LDA	!JPKYOR,Y	; kyori set
		STA	BMSTAT,X
		LDA	!JPFLDT,Y	; kaiten flem set
		STA	BUMFLM,X
;
		LDY	#000H
		LDA	<KEYA1		; naname key ? [NO:JPIM040]
		AND	#00001100B
		BEQ	JPIM040
		LDA	<KEYA1
		AND	#00000011B
		BEQ	JPIM040
		INY
JPIM040		EQU	$
		STY	<WORK0
		LDA	HBFLEM,X
		ASL	A
		CLC
		ADC	<WORK0
		TAY
		LDA	!JPSPDT,Y	; speed data set
		STA	<WORK0
		STA	YABGCK,X	; speed hozon !!
		STY	<BMWORK+0
;
		LDA	<KEYA1
		AND	#00001111B
		BNE	JPIM080
		LDA	<PLMKCH		; player houkou set
		LSR	A
		TAY
		LDA	!JPKYDT,Y
JPIM080		EQU	$
		STA	<WORK1		; key set
;
		STZ	HBMUKI
		LDY	<WORK0		; speed data
		LDA	<WORK1		; tate key in ? [NO:JPIM100]
		AND	#00001100B
		BEQ	JPIM200
		AND	#00001000B	; up ? [NO:JPIM100]		
		BEQ	JPIM100
		TYA			; speed < 0 set
		EOR	#0FFH
		INC	A
		TAY
JPIM100		EQU	$
		TYA
                STA     BMYSPD,X         ; y-speed set
		LDY	#000H
		LDA	BMYSPD,X
		BMI	JPIM140
		INY
JPIM140		EQU	$
		TYA
		STA	BMMUKI,X
		LDA	!JPKYDT,Y
		STA	HBMUKI
;
JPIM200		EQU	$
		STZ	BMKMHN,X	; bumeran kaiten muki flag
		LDY	<WORK0
		LDA	<WORK1
		AND	#00000011B
		BEQ	JPIM400
		AND	#00000010B
		BEQ	JPIM300
		TYA
		EOR	#0FFH
		INC	A
		TAY
		BRA	JPIM320
JPIM300		EQU	$
		INC	BMKMHN,X	; bumeran kaiten muki flag
JPIM320		EQU	$
		TYA
		STA	BMXSPD,X	; x-speed set
		LDY	#002H
		LDA	BMXSPD,X
		BMI	JPIM340
		LDY	#003H
JPIM340		EQU	$
		TYA
		STA	BMMUKI,X
		LDA	!JPKYDT,Y
		ORA	HBMUKI
		STA	HBMUKI
;
JPIM400		EQU	$
		LDY	#07H
JPIM440		EQU	$
		LDA	!BUHODT,Y
		CMP	<WORK1
		BEQ	JPIM480
		DEY
		BPL	JPIM440
		INY
;
JPIM480		EQU	$
		LDA	!BMHOUK,Y
		STA	BUMODE,X	; kaiten mode clear
		TYA
		ASL	A
		TAY
		STA	BMYINX,X
;
		LDA	<KENMD
		CMP	#009H
		BCC	JPIM490
		INC	BMFLFG,X
		BRA	JPIM4C0
;
JPIM490		EQU	$
		LDA	<BMWORK+0
		BNE	JPIM4A0
		LDA	<KEYA1
		AND	#00001111B
		BNE	JPIM4C0
JPIM4A0		EQU	$
		LDY	<PLMKCH
;
JPIM4C0		EQU	$
		JSL	>ITBGCK		; init. BG check sub
		BCS	JPIM600
		LDA	BMFLFG,X
		BEQ	JPIM4D0
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; bumeran y-pos set 
		CLC
		ADC	#08H
		CLC
		ADC	!BUINTY2,Y
		STA	<WORK0
		LDA	<PLXPS1		; bumeran x-pos set
		CLC
		ADC	!BUINTX2,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	JPIM4E0
;
JPIM4D0		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; bumeran y-pos set 
		CLC
		ADC	#08H
		CLC
		ADC	!BUINTY,Y
		STA	<WORK0
		LDA	<PLXPS1		; bumeran x-pos set
		CLC
		ADC	!BUINTX,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
;
JPIM4E0		EQU	$
		BRL	BMYXSET1	; beam y,x pos est sub
JPIM500		EQU	$
		PLB
		RTL
;
JPIM600		EQU	$
		STZ	BMMODE,X
		STZ	BMRMOV
;
		LDA	BMBGNO,X
		CMP	#0F0H
		BEQ	JPIM700
		JSL	>SDLRCB
		ORA	#kins0
		STA	!SOUND2
		BRA	JPIM800
JPIM700		EQU	$
		JSL	>SDLRCB
		ORA	#tate0
		STA	!SOUND2
JPIM800		EQU	$
		JSL	>BHBINT
;
		PLB
		RTL
;
;**************************************************************
;*		takara set init. 		(TAKAINT)     *
;**************************************************************
TAKAYPS1	EQU	$		; takara bako y-pos data
;			  0   1   2   3   4   5   6   7
		HEX	0FB,0FB,0FB,0FB,0FB,0FC,0FC,0FB
;			  8   9   A   B   C   D   E   F
		HEX	0FB,0FC,0FC,0FC,0FE,0FC,0FC,0FC
;			 10  11  12  13  14  15  16  17
		HEX	0FC,0FC,0FC,0FC,0FC,0FC,0FC,0FC
;			 18  19  1A  1B  1C  1D  1E  1F
		HEX	0FC,0FC,0FC,0FC,0FC,0FC,0FC,0FC
;			 20  21  22  23  24  25  26  27
		HEX	0FC,0FC,0FC,0FB,0FC,0FC,0FC,0FC
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	0FC,0FC,0FE,0FC,0FC,0FC,0FC,0FC
;			 30  31  32  33  34  35  36  37
		HEX	0FC,0FC,0FC,0FC,0FE,0FE,0FE,0FC
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	0FC,0FC,0FC,0FC,0FC,0FC,0FC,0FC
;			 40  41  42  43  44  45  46  47
		HEX	0FC,0FC,0FE,0FE,0FC,0FE,0FC,0FC
;			 48  49  4A  4B
		HEX	0FC,0FB,0FC,0FC
TAKAXPS1	EQU	$		; takara bako x-pos data
;			  0   1   2   3   4   5   6   7
		HEX	004,004,004,004,004,000,000,004
;			  8   9   A   B   C   D   E   F
		HEX	004,004,004,004,005,000,000,000
;			 10  11  12  13  14  15  16  17
		HEX	000,000,000,004,000,004,000,000
;			 18  19  1A  1B  1C  1D  1E  1F
		HEX	004,000,000,000,000,000,000,000
;			 20  21  22  23  24  25  26  27
		HEX	000,000,000,000,004,000,000,000
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	000,000,005,000,000,000,000,000
;			 30  31  32  33  34  35  36  37
		HEX	000,000,000,000,004,004,004,000
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	000,000,000,000,000,000,000,000
;			 40  41  42  43  44  45  46  47
		HEX	000,000,004,004,000,004,000,000
;			 48  49  4A  4B
		HEX	000,004,000,000
;
TAKVMAD		EQU	$
;		          0   1   2   3   4   5   6   7
		HEX	006,018,018,018,02D,020,02E,009
;		          8   9   A   B   C   D   E   F
		HEX	009,00A,008,005,010,00B,02C,01B
;		         10  11  12  13  14  15  16  17
		HEX	01A,01C,014,019,00C,007,01D,02F
;		         18  19  1A  1B  1C  1D  1E  1F
		HEX	007,015,012,00D,00D,00E,011,017
;		         20  21  22  23  24  25  26  27
		HEX	028,027,004,004,00F,016,003,013
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	001,01E,010,000,000,000,000,000
;			 30  31  32  33  34  35  36  37
		HEX	000,030,022,021,024,024,024,023
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	023,023,029,02A,02C,02B,003,003
;			 40  41  42  43  44  45  46  47
		HEX	034,035,031,033,002,032,036,037
;		         48  49  4A  4B
		HEX	02C,006,00C,038
TAKASBD		EQU	$
;		          0   1   2   3   4   5   6   7
		HEX	000,000,000,000,000,002,002,000
;		          8   9   A   B   C   D   E   F
		HEX	000,000,000,000,000,002,002,002
;		         10  11  12  13  14  15  16  17
		HEX	002,002,002,000,002,000,002,002
;		         18  19  1A  1B  1C  1D  1E  1F
		HEX	000,002,002,002,002,002,002,002
;		         20  21  22  23  24  25  26  27
		HEX	002,002,002,002,000,002,002,002
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	002,002,000,002,002,002,002,002
;			 30  31  32  33  34  35  36  37
		HEX	002,002,002,002,000,000,000,002
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	002,002,002,002,002,002,002,002
;			 40  41  42  43  44  45  46  47
		HEX	002,002,000,000,002,000,002,002
;			 48  49  4A  4B
		HEX	002,000,002,002
TAKAATR		EQU	$
;		          0   1   2   3   4   5   6   7
		HEX	005,0FF,005,005,005,005,005,001
;		          8   9   A   B   C   D   E   F
		HEX	002,001,001,001,002,002,002,004
;		         10  11  12  13  14  15  16  17
		HEX	004,004,001,001,002,001,001,001
;		         18  19  1A  1B  1C  1D  1E  1F
		HEX	002,001,002,001,004,004,002,001
;		         20  21  22  23  24  25  26  27
		HEX	006,001,002,001,002,002,001,002
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	002,004,001,001,004,002,001,004
;		         30  31  32  33  34  35  36  37
		HEX	002,002,004,004,004,002,001,004
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	001,002,002,001,002,002,001,001
;			 40  41  42  43  44  45  46  47
		HEX	004,004,001,002,002,004,004,004
;			 48  49  4A  4B
		HEX	002,005,002,001
TKSVRM		EQU	$
;			      0       1       2       3
		WORD	ITMTBL6,ITMTBL6,ITMTBL6,ITMTBL6
;			      4       5       6       7
		WORD	ITMTBL7,ITMTBL7,ITMTBL7,ITEMR06
;			      8       9       A       B
		WORD	ITEMR07,ITEMR12,ITEMR03,ITEMR01
;			      C       D       E       D
		WORD	ITEMR02,ITEMR05,BINCT0,ITEMR08
;			     10      11      12      13
		WORD	ITEMR09,ITEMR10,ITEMR11,ITEMR13
;			     14      15      16      17
		WORD	ITEMR13,ITEMR17,BINCT0,ITEMR44
;			     18      19      1A      1B
		WORD	ITEMR18,ITEMR19,ITEMR20,ITEMR21
;			     1C      1D      1E      1F
		WORD	ITEMR21,ITEMR15,ITEMR23,ITMTBL4
;			     20      21      22      23
		WORD	ITMTBL3,ITEMR14,ITMTBL8,ITMTBL8
;			     24      25      26      27
		WORD	ITMTBL9,ITMTBLA,LFITCT,UPBMCT
;			     28      29      2A      2B
		WORD	UPBMCT,ITEMR05,ITEMR02,BINCT0
;			     2C      2D      2E      2F
		WORD	BINCT0,BINCT0,LFNWCT,MPNWCT
; 			     30      31      32      33
		WORD	MPNWCT,UPBMCT,KEYCNT,MAPCNT
; 			     34      35      36      37
		WORD	CONCNT,CONCNT,CONCNT,ITEMR53
;			     38      39      3A      3B
		WORD	ITEMR53,ITEMR53,ITEMR01,ITEMR01
;			     3C      3D      3E      3F
		WORD	BINCT0,BINCT0,LFITCT,LFITCT
;			     40      41      42      43
		WORD	CONCNT,CONCNT,UPLFCT,UPAWCT
;			     44      45      46      47
		WORD	UPAWCT,UPMPCT,CONCNT,CONCNT
;			    48	     49      4A      4B
		WORD	BINCT0,ITMTBL6,ITEMR13,ITEMR22
TAKOND		EQU	$
;		          0   1   2   3   4   5   6   7
		HEX	001,002,003,004,001,002,003,001
;		          8   9   A   B   C   D   E   F
		HEX	001,001,001,001,001,002,0FF,001
;		         10  11  12  13  14  15  16  17
		HEX	001,001,001,001,002,001,0FF,0FF
;		         18  19  1A  1B  1C  1D  1E  1F
		HEX	001,001,002,001,002,001,001,001
;		         20  21  22  23  24  25  26  27
		HEX	0FF,001,0FF,002,0FF,0FF,0FF,0FF
;			 28  29  2A  2B  2C  2D  2E  2F
		HEX	0FF,0FF,002,0FF,0FF,0FF,0FF,0FF
;			 30  31  32  33  34  35  36  37
		HEX	0FF,0FF,0FF,0FF,0FF,0FB,0EC,0FF
;			 38  39  3A  3B  3C  3D  3E  3F
		HEX	0FF,0FF,001,003,0FF,0FF,0FF,0FF
;			 40  41  42  43  44  45  46  47
		HEX	09C,0CE,0FF,001,00A,0FF,0FF,0FF
;     		         48  49  4A  4B
		HEX	0FF,001,003,001
MKONDT		EQU	$		; danjon betsu kagi,map data
		WORD	08000H,04000H,02000H,01000H
		WORD	00800H,00400H,00200H,00100H
		WORD	00080H,00040H,00020H,00010H
		WORD	00008H,00004H
;
TAKAINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCC	TAKA000
		BRL	TAKA100
;
;************** takara bako y,x pos set !!
TAKA000		EQU	$
		LDA	ITMVFG
		CMP	#001H
		BNE	TAKA040
		LDA	<BMWORK+0
		PHA
		LDA	<BMWORK+1
		PHA
;
;************** takara bako player,teki stop set !!
TAKA040		EQU	$
		LDY	#001H
		LDA	ATMTFG
		CMP	#020H
		BNE	TAKA050
		LDY	#002H
TAKA050		EQU	$
		TYA
		STA	!PYALSP
;
;************** aitem bit on !!
TAKA0C0		EQU	$		
		PHX
		LDY	ATMTFG
		BNE	TAKA0D0
		LDX	#004*2		; bigin tate set
		LDA	!TKSVRM,X
		STA	<WORK0
		LDA	!TKSVRM+1,X
		STA	<WORK1
		LDA	#07EH
		STA	<WORK2
		LDA	!TAKOND,Y
		STA	[WORK0]
TAKA0D0		EQU	$
		TYA
		ASL	A
		TAX
		LDA	!TKSVRM,X	; (L) set
		STA	<WORK0
		LDA	!TKSVRM+1,X	; (H) set
		STA	<WORK1
		LDA	#07EH		; bank set
		STA	<WORK2
		LDA	!TAKOND,Y
		BMI	TAKA0D2
		STA	[WORK0]
;
TAKA0D2		EQU	$
		CPY	#01FH		; suishodama ?
		BNE	TAKA0D4
		STZ	<RABIFG		; rabit flag clear !!
;
TAKA0D4		EQU	$
		LDA	#00000100B
		CPY	#04BH		; bootu ?
		BEQ	TAKA0D8
		CPY	#01EH		; hire ?
		BNE	TAKA0DA
		LDA	#00000010B
TAKA0D8		EQU	$
		ORA	>ITMTBL1+1
		STA	>ITMTBL1+1
;
TAKA0DA		EQU	$		; grove ?
		CPY	#01BH
		BEQ	TAKA0DB
		CPY	#01CH
		BNE	TAKA0DC
TAKA0DB		EQU	$
		JSL	>PGRVCGST
TAKA0DB4	EQU	$
		BRL	TAKA0DF0
;
TAKA0DC		EQU	$
		LDX	#00000100B	; pendant ?
		CPY	#037H
		BEQ	TAKA0DC1
		LDX	#00000001B
		CPY	#038H
		BEQ	TAKA0DC1
		LDX	#00000010B
		CPY	#039H
		BNE	TAKA0DC3
TAKA0DC1	EQU	$
		TXA
		ORA	[WORK0]
		STA	[WORK0]
		INC	!ITEMMD
		AND	#00000111B
		CMP	#00000111B
		BNE	TAKA0DC3
		LDA	#004H		; shinden clear bit on !!
		STA	>MODTBL2
;
TAKA0DC3	EQU	$
		CPY	#022H		; blue fuku ?
		BNE	TAKA0DC8
		LDA	[WORK0]
		BNE	TAKA0DC4
		LDA	#001H
		STA	[WORK0]
TAKA0DC4	EQU	$
		BRA	TAKA0DB4
;
TAKA0DC8	EQU	$
		CPY	#025H		; conpasu ?
		BEQ	TAKA0DE
		CPY	#032H		; special kagi ?
		BEQ	TAKA0DE
		CPY	#033H		; map ?
		BNE	TAKA0DE4
TAKA0DE		EQU	$
		LDX	!DJNNO
		MEM16
		REP	#00100000B
		LDA	!MKONDT,X
		ORA	[WORK0]
		STA	[WORK0]
		MEM8
		SEP	#00100000B
		BRL	TAKA0DF0
;
TAKA0DE4	EQU	$
		CPY	#03EH		; boss hart utsuwa 
		BNE	TAK0DE41
;
		BIT	PYDMBT		; 0 --> bpl 1 --> bmi
		BPL	TAK0DE41
		LDA	#002H
		STA	PYDMBT1
;
TAK0DE41	EQU	$
		CPY	#020H		; poligon ?
		BNE	TAKA0DE6
		INC	!ITEMMD
;
TAK0DE42	EQU	$
		PHX
		LDX	#004H
TAK0DE44	EQU	$
		LDA	BMMODE,X
		CMP	#BOMBM
		BEQ	TAK0DE46
		CMP	#BOLMV
		BNE	TAK0DE48
TAK0DE46	EQU	$
		STZ	BMMODE,X
		STZ	PYDMBT
		STZ	PYDMBT1
TAK0DE48	EQU	$
		DEX
		BPL	TAK0DE44
		PLX
;
TAKA0DE5	EQU	$
		LDA	<KAKUMD
		BEQ	TAKA0DE6
		LDA	#020H
		STA	KAKUFM1
		STZ	MRTKFG
		STZ	<KAKUMD
		PHY
		PHX
		LDY	#004H
		LDA	#TORKM
		JSL	>TTKINT1
		JSL	>SDLRCP
		ORA	#kakof
		STA	!SOUND2
		PLX
		PLY
		BRL	TAKA0DF0
;
TAKA0DE6	EQU	$
		CPY	#029H		; kinoko ? [NO:TAKA0DE7]
		BNE	TAKA0DE7
		LDA	>ITEMR05	; magic kona have ? 
		CMP	#002H
		BEQ	TAKA0DE7
		LDA	#001H		; kinoko bit on !!
		STA	[WORK0]
		BRA	TAKA0DEC
TAKA0DE7	EQU	$
		LDX	#001H
		CPY	#024H		; key ? [YES:TAKA0DE8]
		BEQ	TAKA0DE8
		LDA	ITMVFG		; zujoo houji ? 
		CMP	#002H
		BEQ	TAKA0DEE
		CPY	#027H		; bakudan ? [YEA:TAKA0DE8]
		BEQ	TAKA0DE8
		LDX	#003H
		CPY	#028H
		BEQ	TAKA0DE8
		CPY	#031H
		BNE	TAKA0DEE
		LDX	#00AH
TAKA0DE8	EQU	$
		TXA
		CLC
		ADC	[WORK0]
		STA	[WORK0]
		CMP	#063H
		BCC	TAKA0DEC
		LDA	#063H
		STA	[WORK0]
TAKA0DEC	EQU	$
		JSL	>ITEM0ST
		BRA	TAKA0DF0
;
TAKA0DEE	EQU	$		; aki bin ? [NO:TAKA0DF0]
		CPY	#017H		; hart kakera ?
		BNE	TAKA0DEF
		LDA	[WORK0]
		INC	A
		AND	#00000011B
		STA	[WORK0]
		JSL	>SDLRCP		; sound (L,R) check
		ORA	#02DH
		STA	!SOUND3		; <sound>
;
TAKA0DEF	EQU	$
		JSR	BNSTSB		; bin set
;
TAKA0DEF8	EQU	$
;
;************** aitem buffer no set !!
TAKA0DF0	EQU	$
		LDY	ATMTFG
		LDA	!TAKVMAD,Y
		STA	<BMWORK+0
		CMP	#0FFH
		BEQ	TAKA0DF2
		CMP	#020H
		BEQ	TAKA0DF1
		CMP	#02DH
		BEQ	TAKA0DF1
		CMP	#02EH
		BNE	TAKA0DF4
TAKA0DF1	EQU	$
		JSL	>TTCBFST
		JSL	>TATEST		; coler set
		LDA	<BMWORK+0
		BRA	TAKA0DF4
TAKA0DF2	EQU	$
		LDA	#000H
TAKA0DF4	EQU	$
		JSL	>ITMCBFST
		LDA	<BMWORK+0
		CMP	#006H
		BEQ	TAKA0DF8
		CMP	#018H
		BNE	TAKA0E0
TAKA0DF8	EQU	$
		LDA	ATMTFG
		BEQ	TAKA0E0
		JSL	>KNCBFST
		JSL	>KENST		; coler set
;
;************** aitem y,x pos set !!
TAKA0E0		EQU	$
		PLX
		LDA	ATMTFG
		STA	BMCONT,X
		TAY
		STZ	BUMODE,X	; coin shurui set
		LDA	#009H
		CPY	#001H
		BNE	TAKA0E4
;
		STA	BUMFLM,X
		LDA	ITMVFG
		CMP	#002H
		BEQ	TAKA0E6
;
		LDA	#0A0H
		STA	BMTIM0,X
		LDA	#p2_kiri	; kiri hare set
		STA	<GAMEMD
		LDA	#000H
		STA	>CCNGCT
		PHX
		PHY
		LDY	#004H		; ken flash init.
		LDA	#TKFLM
		JSL	>TKFLIT
		PLY
		PLX
		LDA	#002H
TAKA0E4		EQU	$
		STA	BUMFLM,X
TAKA0E6		EQU	$
		LDA	#005H
		STA	BMWRK0,X
;
		PHY
		LDY	#MCAGE
		LDA	ITMVFG		; item move on !!
		STA	BMSTAT,X
		BEQ	TAKA0E8
		LDY	#038H
TAKA0E8		EQU	$
		LDA	BMCONT,X
		CMP	#020H
		BEQ	TAKA0EA
		CMP	#037H
		BEQ	TAKA0EA
		CMP	#038H
		BEQ	TAKA0EA
		CMP	#039H
		BEQ	TAKA0EA
		CMP	#026H
		BNE	TAKA0EC
		LDY	#002H
		BRA	TAKA0EC
TAKA0EA		EQU	$
		LDY	#068H
TAKA0EC		EQU	$
		TYA
		STA	BMFLFG,X
		PLY
;
		LDA	ITMVFG
		CMP	#001H
		BNE	TAKA0F0
		PLA
		STA	<BMWORK+1
		PLA
		STA	<BMWORK+0
		MEM16
		REP	#00100000B
		LDA	<BMWORK+0
		AND	#01F80H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK0
		LDA	<BMWORK+0
		AND	#0007EH
		ASL	A
		ASL	A
		STA	<WORK2
		MEM8
		SEP	#00100000B
		LDA	<WORK1
		CLC
		ADC	SCVCT+1
		STA	<WORK1
		LDA	<WORK3
		CLC
		ADC	SCHCT+1
		STA	<WORK3
		MEM16
		REP	#00100000B
		LDA	!TAKAYPS1,Y
		AND	#000FFH
		ORA	#0FF00H
		CLC
		ADC	<WORK0
		STA	<WORK0
		LDA	!TAKAXPS1,Y
		AND	#00FFH
		CLC
		ADC	<WORK2
		BRL	TAKA0F8
;
TAKA0F0		EQU	$
		MEM8
		PHY
		LDA	BMSTAT,X
		BNE	TAKA0F02
		LDA	BMCONT,X
		CMP	#001H
		BNE	TAKA0F02
		JSL	>SDLRCP		; sound (L,R) check sub
		ORA	#02CH
		STA	!SOUND2		; <sound>
		BRA	TAKA0F0C
;
TAKA0F02	EQU	$
		LDA	BMCONT,X
		CMP	#03EH
		BEQ	TAKA0F0C
		CMP	#017H
		BEQ	TAKA0F0C
		CMP	#020H
		BEQ	TAKA0F04
		CMP	#037H
		BEQ	TAKA0F04
		CMP	#038H
		BEQ	TAKA0F04
		CMP	#039H
		BNE	TAKA0F08
TAKA0F04	EQU	$
		JSL	>SDLRCP		; sound (L,R) check sub
		ORA	#bsfan
		STA	!SOUND0		; <sound>
		BRA	TAKA0F0C
TAKA0F08	EQU	$
		JSL	>SDLRCP		; sound (L,R) check sub
		ORA	#atckh
		STA	!SOUND3		; <sound>
;
TAKA0F0C	EQU	$
		LDA	#00AH
		STA	<WORK2
		STZ	<WORK3
		LDY	BMCONT,X
		LDA	!TAKASBD,Y
		BEQ	TAKA0F1
		CPY	#020H
		BNE	TAKA0F0E
		STZ	<WORK2
		BRA	TAKA0F1
TAKA0F0E	EQU	$
		LDA	#006H
		STA	<WORK2
;
TAKA0F1		EQU	$
		LDY	ITMVFG
		CPY	#003H
		BNE	TAKA0F2
		LDY	#000H
TAKA0F2		EQU	$
		STZ	<WORK8
		STZ	<WORK9
		CPY	#002H
		BNE	TAKA0F4
		LDA	#0F8H
		STA	<WORK8
		DEC	<WORK9
TAKA0F4		EQU	$
		STY	<WORK4
		STZ	<WORK5
		PLY
;
		MEM16
		REP	#00100000B
		LDA	#0FFF2H
		STA	<WORK0
		LDA	<WORK4
		BEQ	TAKA0F6
		LDA	!TAKAYPS1,Y
		AND	#00FFH
		ORA	#0FF00H
		STA	<WORK0
TAKA0F6		EQU	$
		LDA	<WORK0
		CLC
		ADC	<PLYPS1
		CLC
		ADC	<WORK8
		STA	<WORK0
;
		LDA	<WORK4
		BEQ	TAKA0F7
		LDA	!TAKAXPS1,Y
		AND	#000FFH
		STA	<WORK2
TAKA0F7		EQU	$
		LDA	<WORK2
		CLC
		ADC	<PLXPS1
TAKA0F8		EQU	$
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
TAKA100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		takara bin set sub		(BNSTSB)      *
;**************************************************************
BNSTDT		EQU	$		; bin and nakami data
;			  2   3   4   5   6   7   8
		HEX	016,02B,02C,02D,03D,03C,048
BNSTDT1		EQU	$		; nakami data
;			  3   4   5   6   7
		HEX	02E,02F,030,0FF,00E
BNSTSB		EQU	$
		STY	<WORKC
		LDX	#006H
BNST100		EQU	$
		LDA	!BNSTDT,X
		CMP	<WORKC
		BEQ	BNST200
		DEX
		BPL	BNST100
		BRA	BNST700
;
BNST200		EQU	$
		TXA
		CLC
		ADC	#002H
		STA	<WORKC
		LDX	#000H
BNST500		EQU	$
		LDA	>BINCT0,X
		CMP	#002H
		BCS	BNST600
		LDA	<WORKC
		STA	>BINCT0,X
		BRL	BNSTF00
BNST600		EQU	$
		INX
		CPX	#004H
		BNE	BNST500
;
BNST700		EQU	$
		STY	<WORKC
;
		LDX	#004H
BNST800		EQU	$
		LDA	!BNSTDT1,X
		CMP	<WORKC
		BEQ	BNST900
		DEX
		BPL	BNST800
		BRA	BNSTF00
;
BNST900		EQU	$
		TXA
		CLC
		ADC	#003H
		STA	<WORKC
;
		LDX	#000H
BNSTA00		EQU	$
		LDA	>BINCT0,X		
		CMP	#002H
		BNE	BNSTB00
		LDA	<WORKC
		STA	>BINCT0,X
		BRA	BNSTF00
BNSTB00		EQU	$
		INX
		CPX	#004H
		BNE	BNSTA00
BNSTF00		EQU	$
		RTS
;
;**************************************************************
;*		takara nage move init.		(TKGINT)      *
;**************************************************************
TKNYPD		EQU	$
;			     0      1      2      3
		HEX	0F3,0F3,0F3,0F3
;			     4      5      6      7
		HEX	0F3,0F4,0F4,0F3
;			     8      9      A      B
		HEX	0F3,0F4,0F4,0F4
;			     C      D      E      F
		HEX	0F6,0F4,0F4,0F4
;			    10     11     12     13
		HEX	0F4,0F4,0F4,0F4
;			    14     15     16     17
		HEX	0F4,0F4,0F4,0F4
;			    18     19     1A     1B
		HEX	0F4,0F4,0F4,0F4
;			    1C     1D     1E     1F
		HEX	0F4,0F4,0F4,0F4
;			    20     21     22     23
		HEX	0F4,0F4,0F4,0F3
;			    24     25     26     27
		HEX	0F4,0F4,0F4,0F4
;			    28     29     2A     2B
		HEX	0F4,0F4,0F6,0F4
;			    2C     2D     2E     2F
		HEX	0F4,0F4,0F4,0F4
;			    30     31     32     33
		HEX	0F4,0F4,0F4,0F4
;			    34     35     36     37
		HEX	0F4,0F4,0F4,0F4
;			    38     39     3A     3B
		HEX	0F4,0F4,0F4,0F4
;			    3C     3D     3E     3F
		HEX	0F4,0F4,0F4,0F4
;			    40     41     42     43
		HEX	0F4,0F4,0F4,0F4
;			    44     45     46     47
		HEX	0F4,0F4,0F4,0F4
;			    48	   49     4A	 4B
		HEX	0F4,0F3,0F4,0F4
;
TKNXPD		EQU	$
;			     0      1      2      3
		HEX	004,004,004,004
;			     4      5      6      7
		HEX	004,000,000,004
;			     8      9      A      B
		HEX	004,004,004,004
;			     C      D      E      F
		HEX	005,000,000,000
;			    10     11     12     13
		HEX	000,000,000,004
;			    14     15     16     17
		HEX	000,004,000,000
;			    18     19     1A     1B
		HEX	004,000,000,000
;			    1C     1D     1E     1F
		HEX	000,000,000,000
;			    20     21     22     23
		HEX	000,000,000,000
;			    24     25     26     27
		HEX	00B,000,000,000
;			    28     29     2A     2B
		HEX	002,000,005,000
;			    2C     2D     2E     2F
		HEX	000,000,000,000
;			    30     31     32     33
		HEX	000,000,000,000
;			    34     35     36     37
		HEX	004,004,004,000
;			    38     39     3A     3B
		HEX	000,000,000,000
;			    3C     3D     3E     3F
		HEX	000,000,000,000
;			    40     41     42     43
		HEX	000,000,004,004
;			    44     45     46     47
		HEX	000,004,000,000
;			    48	   49	  4A	 4B
		HEX	000,004,000,000
;
TKGINT		EQU	$
		PHB
		PHK
		PLB
		STX	ATMTFG
		JSR	JPRMSR2		; aki ram surch sub
		BCS	TKGIF00
;
;*************  aitem no buffer no set
		JSL	>SDLRCP		; sound (L,R) check sub
		ORA	#mono0
		STA	!SOUND3		; <sound>
;
		PHX
		LDY	ATMTFG
		LDA	!TAKVMAD,Y
		STA     <BMWORK+0
		CMP	#0FFH
		BEQ	TKGI100
		CMP	#020H
		BNE	TKGI200
		JSL	>TTCBFST
		LDA	<BMWORK+0
		BRA	TKGI200
TKGI100		EQU	$
		LDA	#000H
TKGI200		EQU	$
		JSL	>ITMCBFST
		LDA	<BMWORK+0
		CMP	#006H
		BNE	TKGI300
		JSL	>KNCBFST
;
;************** aitem y,x pos set !!
TKGI300		EQU	$
		PLX
		LDA	#080H
		STA	PYDMBT
		STZ	PYDMBT1
		STZ	<PLMKCH
		STZ	<PYCRCH
		LDA	#014H
		STA	BMZSPD,X
		LDA	#0D8H
		STA	BMYSPD,X
		STZ	BMXSPD,X
		STZ	BMZPSL,X
		LDA	#010H
		STA	BMTIM0,X
		LDA	ATMTFG
		STA	BMCONT,X
		TAY
		MEM16
		REP	#00100000B
		LDA	!TKNYPD,Y
		AND	#000FFH
		ORA	#0FF00H
		CLC
		ADC	<PLYPS1
		STA	<WORK0
		LDA	!TKNXPD,Y
		AND	#000FFH
		CLC
		ADC	<PLXPS1
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
TKGIF00		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		megami coin nage move init.	(MCNINT)      *
;**************************************************************
MCZSPD		EQU	$		; z-speed data
		HEX	014,014,014,014,014
		HEX	010,010,010,010,010
MCYSPD		EQU	$		; y-speed data
		HEX	0D8,0D8,0D8,0D8,0D8
		HEX	0E0,0E0,0E0,0E0,0E0
MCXSPD		EQU	$
		HEX	000,0F4,0FA,006,00C
		HEX	0F7,0FB,000,005,009
MCKOIX		EQU	$		; kosuu data
		HEX	000,004,004,009
MCEDIX		EQU	$		; kosuu data
		HEX	0FF,000,0FF,0FF
MCNINT		EQU	$
		PHB
		PHK
		PLB
		PHX
		PHA
;
		LDY	#009H
		LDA	#MCIMM
		JSR	JPRMSR2		; aki ram surch sub
		BCC	MCIT080
		PLA
		PLX
		BRA	TKGIF00
;
MCIT080		EQU	$
		JSL	>SDLRCP		; sound (L,R) check sub
		ORA	#mono0
		STA	!SOUND3		; <sound>
;
		LDY	#035H
		LDA	!TAKVMAD,Y
		STA     <BMWORK+0
		JSL	>ITMCBFST
;
;************** aitem y,x pos set !!
		LDA	#080H
		STA	PYDMBT
		STZ	PYDMBT1
		STZ	<PLMKCH
		STZ	<PYCRCH
;
		LDX	#009H
		LDA	#000H
MCIT0C0		EQU	$
		STA	>KZMODE+0,X
		DEX
		BPL	MCIT0C0
;
		PLA
		TAX
		LDA	!MCEDIX,X
		STA	<WORKF
		LDA	!MCKOIX,X
		TAY
;
		LDX	#009H
MCIT100		EQU	$
		LDA	#001H
		STA	>KZMODE,X
		LDA	!MCZSPD,Y
		STA	>KZZSPD,X
		LDA	!MCYSPD,Y
		STA	>KZYSPD,X
		LDA	!MCXSPD,Y
		STA	>KZXSPD,X
		LDA	#000H
		STA	>KZZPSL,X
		STA	>KZSTAT,X
;
		LDA	#010H
		STA	>KZFLEM,X
		LDA	#035H
		STA	>KZCONT,X
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	#0FFF4H
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	#0004H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		LDA	<WORK0
		STA	>KZYPSL,X
		LDA	<WORK1
		STA	>KZYPSH,X
		LDA	<WORK2
		STA	>KZXPSL,X
		LDA	<WORK3
		STA	>KZXPSH,X
;
		DEX
		DEY
		CPY	<WORKF
		BNE	MCIT100
;
		PLX
;
MCIT200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		takara down move init.		(TKDINT)      *
;*		0 ---> sunder				      *
;*		1 ---> grove (bulue)			      *
;*		2 ---> asihire				      *
;*		3 ---> jisho				      *
;*		4 ---> hart utsuwa			      *
;*		5 ---> bomber				      *
;*		6 ---> poligon				      *
;**************************************************************
TKDUNT		EQU	$
		HEX	010,037,039,038,026,00F,020
TDNZPD		EQU	$
		HEX	060,080,080,080,080,080,080
TDNYPD		EQU	$
		WORD	00048H,00078H,00078H,00078H,00078H
		WORD	00068H,00078H
TDNXPD		EQU	$
		WORD	00078H,00078H,00078H,00078H,00078H
		WORD	00080H,00078H
TDNFLM		EQU	$
		HEX	040,000,000,000,000,0FF,000
TKDINT		EQU	$
		PHB
		PHK
		PLB
;
		STX	ATMTFG
		JSR	JPRMSR2		; aki ram surch sub
		BCS	MCIT200
		PHX
		LDY     ATMTFG
		LDA	!TKDUNT,Y
		STA	BMCONT,X
		CMP	!TKDUNT+0
		BEQ	TKDI020
		CMP	!TKDUNT+5
		BNE	TKDI040
TKDI020		EQU	$
		TAY
		LDA	!TAKVMAD,Y	; buffer set
		STA	<BMWORK+0
		JSL	>ITMCBFST
TKDI040		EQU	$
		PLX
;
TKDI080		EQU	$
		LDA	#0D0H
		STA	BMZSPD,X
		STZ	BMYSPD,X
		STZ	BMXSPD,X
		STZ	BMSTAT,X
		LDY	ATMTFG
		LDA	!TDNZPD,Y
		STA	BMZPSL,X
		LDA	#009H
		STA	BMFLFG,X
		STZ	BUMFLM,X
		STZ	HIBSTAT,X
		LDA	!TDNFLM,Y
		STA	HBFLEM,X
		LDA	BMCONT,X
		STA     ATMTFG
;
TKDI0C0		EQU	$
		CPY	#000H
		BEQ	TKDI300
		CPY	#005H
		BEQ	TKDI300
		LDA	!DJNNO		; 4 gamen check !!
		CMP	#014H
		BNE	TKDI200
;
TKDI100		EQU	$
		LDA	<PLYPS0
		AND	#11111110B
		INC	A
		STA	<WORK1
		STZ	<WORK0
		LDA	<PLXPS0
		AND	#11111110B
		INC	A
		STA	<WORK3
		STZ	<WORK2
		BRL	BMYXSET1
;
TKDI200		EQU	$
		TYA			; kotei gamen !!
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	!TDNYPD,Y
		CLC
		ADC	<SCCV2
		STA	<WORK0
		LDA	!TDNXPD,Y
		CLC
		ADC	<SCCH2
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
TKDI300		EQU	$
		TYA			; kotei gamen !!
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	!TDNYPD,Y
		CLC
		ADC	<SCCV2
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	#00000H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
TKDIF00		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		oakrina move init.		(OKIMIT)      *
;**************************************************************
OKIMIT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	OKIM100
;
		STZ	BMSTAT,X
		STZ	BMZPSL,X
		LDA	>OKZSDT+0
		STA	BMZSPD,X
		LDY	#008H
		LDA	<PLMKCH
		CMP	#004H
		BNE	OKIM040
		LDY	#0F8H
OKIM040		EQU	$
		TYA
		STA	BMXSPD,X
;
		PHX
		LDA	#00CH		; chara vma set
		JSL	>ITMCBFST
		PLX
;
		MEM16
		REP	#00100000B
		LDA	#00A8AH		; kotei y-pos set 
		STA	<WORK0
		LDA	#00490H		; kotei x-pos set
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
OKIM100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		 ken kaiten flash init.		(KNKIIT)      *
;**************************************************************
KNKIIT		EQU	$
		PHB
		PHK
		PLB
;
		LDX	#009H
KNKI100		EQU	$
		LDA	BMMODE,X
		BEQ	KNKI200
		CMP	#LVUBR
		BEQ	KNKI200
		DEX
		BPL	KNKI100
		BRA	KNKI900
;
KNKI200		EQU	$
		LDA	#JPKF0
		STA	BMMODE,X
		LDA	<PLBGCKF
		STA	BMPRIO,X
		LDA	#006H
		STA	BMTIM0,X
;
KNKI900		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		tori shometsu move init.       (KAZAINT)      *
;**************************************************************
KZIXSP		EQU	$
		HEX	008,00A,009,004,00B,00C,0F6,0F8
		HEX	004,0FA,0F6,0FC
KZIZSP		EQU	$
		HEX	014,016,014,014,016,014,014,016
		HEX	014,016,014,014
KZIYPSL		EQU	$
		HEX	0B0,0A3,0A0,0A2,0A0,0A8,0A0,0A0
		HEX	0A8,0A1,0B0,0A0
KZIXPSL		EQU	$
		HEX	000,002,004,006,003,008,00E,008
		HEX	00C,007,00A,008
KZIZPSL		EQU	$
		HEX	030,012,020,014,016,018,020,014
		HEX	018,016,014,020
KAZAINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	KZIM900
		LDA	#00AH
		STA	BMFLFG,X
		LDA	#080H
		STA	HBFLEM,X
		STZ	BMSTAT,X
		STZ	BUMFLM,X
		STZ	!SOUND2
		LDA	#0F2H
		STA	!SOUND0
		LDA	#017H
		STA	!SOUND1
		LDA	#000H
		STA	>KZTMDS
		MEM16
		REP	#00100000B
		LDA	#00280H
		STA	>KZTIM0
		MEM8
		SEP	#00100000B
;
		LDX	#00BH		; position,speed set
KZIM100		EQU	$
		LDA	#000H
		STA	>KZYSPD,X
		LDA	!KZIXSP,X
		STA	>KZXSPD,X
		LDA	!KZIZSP,X
		STA	>KZZSPD,X
		LDA	!KZIYPSL,X
		STA	>KZYPSL,X
		LDA	#007H
		STA	>KZYPSH,X
		LDA	!KZIXPSL,X
		STA	>KZXPSL,X
		LDA	#002H
		STA	>KZXPSH,X
		LDA	!KZIZPSL,X
		STA	>KZZPSL,X
		LDA	#001H
		STA	>KZFLEM,X
		TXA
		AND	#00000001B
		STA	>KZMODE,X
		DEX
		BPL	KZIM100
;
KZIM900		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		tori move init.                (TORIINT)      *
;**************************************************************
TORIINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR3
		BCS	TRIM900
		JSR	JPRMSR2		; aki ram surch sub
		BCS	TRIM900
;
		LDA	#002H
		STA	BMMUKI,X
		INC	A
		STA	BUMFLM,X
		STZ	BMSTAT,X
;;;;;;;;		LDA	#060H		; wait timer set
		LDA	#020H
		STA	BMFLFG,X
;;;;;;;;		LDA	#00CH
		LDA	#074H
		STA	BMCONT,X
		STZ	BMZSPD,X
		STZ	HIBSTAT,X
		STZ	BMZPSL,X
		STZ	BMKMHN,X
;
		MEM16
		REP	#00100000B
		LDA	#00788H
		STA	<WORK0		; y-pos set
		LDA	#00200H
		STA	<WORK2		; x-pos set
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
TRIM900		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		boal lift chenge init.		(BLLIINT)     *
;**************************************************************
BLLIINT		EQU	$
		LDA	#BOLCG
		STA	BMMODE,X
		LDA	#007H
		STA	BMFLFG,X
;
		PHX
		PHY
		LDY	#00FH
BLIT100		EQU	$
		LDA	ENMYNO,Y
		CMP	#LINE0
		BNE	BLIT200
		LDA	#000H
		STA	ENMODE,Y
		STA	PSSTOP
BLIT200		EQU	$
		DEY
		BPL	BLIT100
;
;;;;;;;;		LDA	#001H
;;;;;;;;		STA	PSSTOP
		JSL	>PLRCHK
		PLY
		PLX
;
;;;;;;;;		LDA	<HOLEFG
;;;;;;;;		AND	#00001111B
;;;;;;;;		BEQ	BLIT300
;;;;;;;;		LDA	#HLDM
;;;;;;;;		STA	<LNMODE
;;;;;;;;		LDA	#004H
;;;;;;;;		STA	<PYSPFG
BLIT300		EQU	$
		RTL
;
;**************************************************************
;*		option bakudan bakuhatsu init.	(OPBKINT)    *
;**************************************************************
OPBKINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCC	OPBK100
		BRL	OPBK900
;
OPBK100		EQU	$
		STZ	BMDEFG,X
		STZ	BMSTAT,X
		STZ	BCDMNO,X
		STZ	HIBSTAT,X
		LDA	>BOBFLM1+1
		STA	BUMFLM,X
		LDA	#001H
		STA	BMCONT,X
;
		PHX
		LDX	OPINDX+0
		LDA	OPYPSL,X
		STA	<WORK0
		LDA	OPYPSH,X
		STA	<WORK1
		LDA	OPXPSL,X
		STA	<WORK2
		LDA	OPXPSH,X
		STA	<WORK3
		PLX
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	#0010H
		STA	<WORK0
		LDA	<WORK2
		CLC
		ADC	#0008H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
OPBK900		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		player yousei return init.	  (YOUSIT)    *
;**************************************************************
YOUSIT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	#050H		; chara chenge flag set
		STA	ITMCPT
;
		LDX	#000H
		LDA	#040H
		STA	BUMFLM,X
		STZ	BMSTAT,X
		LDA	#008H
		STA	BMZSPD,X
		STZ	HIBSTAT,X	; yousei GO flag
		LDA	#005H
		STA	HBFLEM,X
		STZ	BMCONT,X
		STZ	BUADSB,X
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		STA	<WORK0
		LDA	<PLXPS1
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JSR	BMSTSB1		; beam y,x pos set sub
		STZ	BMZPSL,X
;
		INX
		STZ	BMZPSL,X
		LDA	#0F0H
		STA	BUMFLM,X
		STZ	BMSTAT,X
		STZ	BUADSB,X
;
		INX
		LDA	#002H
		STA	BMCONT,X	; kona move counter
		STA	<WORK0
		INC	A
		STA	BMFLFG,X
		LDA	#008H
		STA	BUMFLM,X
		STZ	BMSTAT,X
		PHX
		LDA	#003H
		STA	BMMUKI,X
		TAX
		LDA	>KNDTINX,X
		CLC
		ADC	<WORK0
		TAX
		LDA	>KNMDDAT,X
		PLX
		STA	BCDMNO,X	; kona mode flag
		LDY	#006H
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	!KNITYP,Y
		CLC
		ADC	#0FFECH
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	#0FFF8H
		CLC
		ADC	!KNITXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
;**************************************************************
;*		soromon bariya move init.	(SBARINT)     *
;**************************************************************
SBARINT		EQU	$
		PHB
		PHK
		PLB
		PHA
;
		LDX	#004H
SBIT040		EQU	$
		LDA	BMMODE,X
		CMP	#BRSEN
		BNE	SBIT060
		STZ	BMMODE,X
SBIT060		EQU	$
		DEX
		BPL	SBIT040
;
		PLA
		JSR	JPRMSR2
		BCS	SBIT100
;
		STZ	BMCONT,X
		LDA	#009H
		STA	BMFLFG,X
		LDA	#001H
		STA	MRTKFG
		INC	A
		STA	BUMFLM,X
;
SBIT100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		kantera fier move init.		(KTFRINT)     *
;**************************************************************
KTFRYPD		EQU	$		; y-pos data
		WORD	0FFF0H,00018H,00004H,00004H
KTFRXPD		EQU	$		; x-pos data
		WORD	00000H,00000H,0FFECH,00012H
KTFRINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2
		BCS	KTFR100
;
		STZ	BMCONT,X
		STZ	BMFLFG,X
		LDA	#017H
		STA	BMTIM0,X
;
		LDA	<PLMKCH
		LSR	A
		STA	BMMUKI,X
;
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	!KTFRYPD,Y
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	!KTFRXPD,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JSR	BMSTSB1		; beam y,x pos set sub
		JSL	>SDLRCB
		ORA	#fires
		STA	!SOUND2
		PLB
		RTL
;
KTFR100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		scop suna move init.	        (SCPINT)      *
;**************************************************************
SCPINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	SPIN200
;
		STZ	BMCONT,X	; hibana mode counter
		LDA	#014H
		STA	BMTIM0,X
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1 
		STA	<WORK0
		LDA	<PLXPS1
		STA	<WORK2
		MEM8
		SEP	#00100000B
;
		BRL	BMYXSET1
;
SPIN200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		takara ken flash init.		(TKFLIT)      *
;**************************************************************
TKFLIT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	TKFI100
;
		STZ	BMCONT,X	; mode conuter
		LDA	#002H		; flem counter
		STA	BMFLFG,X
		LDA	#040H
		STA	BMTIM0,X
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; onpu y-pos set 
		CLC
		ADC	#0FFF8H
		STA	<WORK0
		LDA	<PLXPS1		; onpu x-pos set
		CLC
		ADC	#00008H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
TKFI100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		dash kemuru move init.	        (DAKINT)      *
;**************************************************************
DAKYPD		EQU	$
		WORD	00000H+00014H,0FFF0H+00014H
		WORD	0FFFCH+00014H,0FFFCH+00014H
DAKXPD		EQU	$
		WORD	00004H,00004H,00006H,00000H
;
DAKINT1		EQU	$
		PHB
		PHK
		PLB
		LDX	#001H
		BRA	DAKI100
DAKINT		EQU	$
		PHB
		PHK
		PLB
		LDX	#000H
;
DAKI100		EQU	$
		STX	<BMWORK+0
		JSR	JPRMSR2		; aki ram surch sub
		BCS	DAKI200
;
		LDA	<BMWORK+0
		STA	BMSTAT,X
		STZ	BMCONT,X	; kona move counter
		LDA	#003H		; kona flem counter set
		STA	BMTIM0,X
;
		LDY	<PLMKCH
		TYA
		LSR	A
		STA	BMMUKI,X
;
		LDA	<BMWORK+0
		BNE	DAKI180
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	#00014H
		STA	<WORK0
		LDA	<PLXPS1
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JMP	BMYXSET1
DAKI180		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	!DAKYPD,Y
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	!DAKXPD,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JMP	BMYXSET1

;
DAKI200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		bakuhatsu hahen move init.	(BHIMIT)      *
;**************************************************************
BHYXSP		EQU	$		; bakuhatsu hahen speed data
;			      0       1       2       3; y,x pos
 		HEX	0C0,000,0EA,02A,0DA,026,0D6,016;0~3
		HEX	000,040,016,02A,026,026,02A,016;4~7
		HEX	040,000,016,0D6,026,0DA,02A,0EA;8~C
		HEX	000,0C0,0EA,0D6,0DA,0DA,0D6,0EA;D~F
;
BHIMIT		EQU	$
		PHB
		PHK
		PLB
;
		LDX	#00AH
BHIM100		EQU	$
		LDA	BMMODE,X
		BEQ	BHIM200
		DEX
		CPX	#004H
		BNE	BHIM100
		LDX	#0FFH
		BRL	BHIM300
;
BHIM200		EQU	$
		LDA	#BHMOV
		STA	BMMODE,X
		LDA	<PLBGCKF	; BG uusen set
		STA	BMPRIO,X
;
		LDA	#010H		; kyori set
		STA	>KABEFM,X
;
		LDA	<FCNT		;  speed set
		AND	#0FH
		ASL	A
		TAY
		LDA	!BHYXSP,Y		
		STA	BMYSPD,X
		LDA	!BHYXSP+1,Y
		STA	BMXSPD,X
;
		MEM16
		REP	#00100000B
		PHX
		LDX	<WORK4
		LDA	>KABEYP,X		; onpu y-pos set 
		CLC
		ADC	#008H
		STA	<WORK0
		LDA	>KABEXP,X		; onpu x-pos set
		CLC
		ADC	#010H
		STA	<WORK2
		PLX
		MEM8
		SEP	#00100000B
;
		BRL	BMYXSET1	; beam y,x pos set
;
BHIM300		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		ya item init.			(YAIMIT)      *
;**************************************************************
YAYSPD		EQU	$		; item speed data
		HEX	0D0,030,000,000	; ya Y-speed
YAXSPD		EQU	$		; item speed data
		HEX	000,000,0D0,030	; ya X-speed
YAKYDT		EQU	$		; houkou key data
		BYTE	00001000B,00000100B,00000010B,00000001B
YAINTY		EQU	$		; ya int y-pos data
		WORD	0FFFCH,00003H,00004H,00004H
YAINTX		EQU	$		; ya int x-pos data
		WORD	00004H,00004H,00000H,00004H
YAIMIT		EQU	$
		PHB
		PHK
		PLB
		STX	<BMWORK+4	; muki set
;
		JSR	JPRMSR3		; ya move ? [YES:YAIM600]
		BCC	YAIM100
		BRL 	YAIM600
;
YAIM100		EQU	$
		JSR	JPRMSR4		; aki ram surch sub
		BCC	YAIM140
		BRL	YAIM600
;
YAIM140		EQU	$
		JSL	>SDLRCP		; sound (L,R) check
		ORA	#yasd0
		STA	!SOUND2		; <sound>
;
		STZ	YABGCK,X	; auto scrool BG hit flag clear
		LDA	#08H		; flem counter set
		STA	BMCONT,X
;
		LDA	<BMWORK+4	; player muki
		LSR	A
		TAY
		ORA	#00000100B
		STA	BMMUKI,X
		LDA	YAYSPD,Y
		STA	BMYSPD,X
		LDA	YAXSPD,Y
		STA	BMXSPD,X
;
		LDY	<BMWORK+4
		MEM16
		REP	#00100000B
		LDA	<BMWORK+0	; bumeran y-pos set 
		CLC
		ADC	#08H
		CLC
		ADC	!YAINTY,Y
		STA	<WORK0
		LDA	<BMWORK+2	; bumeran x-pos set
		CLC
		ADC	!YAINTX,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
;
		JSR	BMSTSB1		; beam y,x pos set sub
;
		SEC
		PLB
		RTL
;
YAIM600		EQU	$
		CLC
		PLB
		RTL
;
;**************************************************************
;*		toraiforce kemuri move init.(TTKINT)(TTKINT1) *
;**************************************************************
TTKINT		EQU	$
		PHB
		PHK
		PLB
		JSR	JPRMSR2
		BCS	TTKI100
		LDA	#OMS000
		STA	<OMSBMD		; player reset
		STZ	BMSTAT,X
		LDA	RABFLG
		BNE	TTKI000
		JSL	>SDLRCP
		ORA	#usag0
		STA	!SOUND2
		BRA	TTKI002
TTKI000		EQU	$
		JSL	>SDLRCP
		ORA	#usag1
		STA	!SOUND2
TTKI002		EQU	$
		BRA	TTKI080
;
TTKINT1		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	TTKI100
		LDA	#001H
		STA	BMSTAT,X
		STA	PYSTOP		; player stop flag
		TSB	<PYMKFG
		STZ	<PWORK1
		STZ	<PLMUKI
;
TTKI080		EQU	$
		STZ	BMCONT,X	; onpu conuter
		LDA	#007H
		STA	BMFLFG,X
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; onpu y-pos set 
		CLC
		ADC	#0004H
		STA	<WORK0
		LDA	<PLXPS1		; onpu x-pos set
;;;;;;;;		CLC
;;;;;;;;		ADC	#0000H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
TTKI100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		OP. toraiforce kemuri move init.    (TTKINT2) *
;**************************************************************
TTKINT2		EQU	$		; option 
		PHB
		PHK
		PLB
		JSR	JPRMSR2
		BCS	T2KI100
;
		LDA	>OPMODE
		CMP	#kajya
		BNE	T2KI000
		JSL	>SDLRCP
		ORA	#usag0
		STA	!SOUND2
		BRA	T2KI002
T2KI000		EQU	$
		JSL	>SDLRCP
		ORA	#usag1
		STA	!SOUND2
T2KI002		EQU	$
		STZ	BMCONT,X	; onpu conuter
		STZ	BMSTAT,X
		LDA	#007H
		STA	BMFLFG,X
		LDA	#001H
		STA	!OPNOSI
;
		LDY	OPINDX+0
		LDA	OPYPSL,Y
		STA	<WORK0
		LDA	OPYPSH,Y
		STA	<WORK1
		LDA	OPXPSL,Y
		STA	<WORK2
		LDA	OPXPSH,Y
		STA	<WORK3
		MEM16
		REP	#00100000B
		LDA	<WORK0		; onpu y-pos set 
		CLC
		ADC	#0004H
		STA	<WORK0
		LDA	<WORK2		; onpu x-pos set
		CLC
		ADC	#0000H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
T2KI100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		kona kemuru move init.	        (KNKMIT)      *
;**************************************************************
KNKMIT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	!AITMBT		; kona move ? [NO:KNKM200]
		AND	#01000000B
		BEQ	KNKM200
;
		LDY	#004H
		LDA	#KONRM
		JSR	JPRMSR2		; aki ram surch sub
		BCS	KNKM200
;
		STZ	BMCONT,X	; kona move counter
		LDA	#007H		; kona flem counter set
		STA	BMTIM0,X
;
		JSR	>SDLRCP
		ORA	#015H
		STA	!SOUND2
		MEM16
		REP	#00100000B
		LDA	<BMWORK+2
		CLC
		ADC	#0FFFEH
		STA	<WORK0
		LDA	<BMWORK+0
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JMP	BMYXSET1
;
KNKM200		EQU	$
		PLB
KMKMIT		EQU	$
		RTL
;
;**************************************************************
;*		kameiwa kemuru move init.	(KMKMIT)      *
;**************************************************************
;;;;;;;;KMKMXD		EQU	$
;;;;;;;;		HEX	008,010,020,028,002,010,020,030
;;;;;;;;		HEX	008,010,020,028,000,008,020,030
;;;;;;;;KMKMYD		EQU	$
;;;;;;;;		HEX	008,002,004,008,010,010,010,010
;;;;;;;;		HEX	018,020,020,018,010,024,01C,018
;;;;;;;;KMKMIT		EQU	$
;;;;;;;;		PHB
;;;;;;;;		PHK
;;;;;;;;		PLB
;;;;;;;;;
;;;;;;;;		LDY	#004H
;;;;;;;;		LDA	#KMKMV
;;;;;;;;		JSR	JPRMSR2		; aki ram surch sub
;;;;;;;;		BCS	KMKM400
;;;;;;;;;
;;;;;;;;		LDX	#010H
;;;;;;;;KMKM100		EQU	$
;;;;;;;;		LDA	#000H
;;;;;;;;		STA	>KMIWCT,X		; kona move counter
;;;;;;;;		LDA	#007H		; kona flem counter set
;;;;;;;;		STA	>KMIWTM,X
;;;;;;;;;
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B
;;;;;;;;		LDA	!KMKMYD,X
;;;;;;;;		AND	#000FFH
;;;;;;;;		CLC
;;;;;;;;		ADC	#0012CH
;;;;;;;;		STA	<WORK0
;;;;;;;;		LDA	!KMKMXD,X
;;;;;;;;		AND	#000FFH
;;;;;;;;		CLC
;;;;;;;;		ADC	#00EF0H
;;;;;;;;		STA	<WORK2
;;;;;;;;		MEM8
;;;;;;;;		SEP	#00100000B
;;;;;;;;		LDA	<WORK0
;;;;;;;;		STA	>KMIWYL,X
;;;;;;;;		LDA	<WORK1
;;;;;;;;		STA	>KMIWYH,X
;;;;;;;;		LDA	<WORK2
;;;;;;;;		STA	>KMIWXL,X
;;;;;;;;		LDA	<WORK3
;;;;;;;;		STA	>KMIWXH,X
;;;;;;;;		DEX
;;;;;;;;		BPL	KMKM100
;;;;;;;;;
;;;;;;;;KMKM400		EQU	$
;;;;;;;;		PLB
;;;;;;;;		RTL
;
;**************************************************************
;*		spcial magic (SOUNDER) move init.   (SNDINT)  *
;**************************************************************
SNDINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCC	SNDI100
		BRL	SNDI200
;
SNDI100		EQU	$
		STZ	BMCONT,X	; inazuma mode counter
		STZ	BCDMNO,X	; inazuma nagasa flag
		STZ	BMSTAT,X
		LDA	#001H
		STA	!SPMCFG
		INC	A
		STA	BMFLFG,X
		INC	A
		STA	BUMFLM,X
		LDA	#07FH
		STA	BMYSPD,X
		LDA	#028H
		STA	>SNDHAN		; en hankei set
		LDA	#spoj4
		STA	!SPOJFG
		LDA	#040H		; en stop timer 
		STA	>SNTIME
;
		JSL	>SDLRCP		; sound (L,R) check
		ORA	#026H
		STA	!SOUND3		; <sound>
;
		LDA	#000H
		STA	>SNENMD+0	; en mode flkag
		LDA	#008H
		STA	>SNENMD+1	; en mode flkag
		LDA	#010H
		STA	>SNENMD+2	; en mode flkag
		LDA	#018H
		STA	>SNENMD+3	; en mode flkag
		LDA	#020H
		STA	>SNENMD+4	; en mode flkag
		LDA	#028H
		STA	>SNENMD+5	; en mode flkag
		LDA	#030H
		STA	>SNENMD+6	; en mode flkag
		LDA	#038H
		STA	>SNENMD+7	; en mode flkag
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; tame y-pos hozon
		STA	>SNTYPO
		LDA	#0FFF0H		; inazuma y-pos set
		CLC
		ADC	<SCCV2
		STA	<WORK0
		AND	#00F0H
		STA	>SHNYPS		; inazuma y-pos hozon
		LDA	<PLXPS1		; inazuma x-pos set
		STA	<WORK2
		STA	>SNTXPO		; tame x-pos hozon
		CLC
		ADC	#0008H
		STA	>SNCXPS		; center x-pos set
		LDA	<PLYPS1
		SEC
		SBC	#00010H
		STA	>SEDYPS		; inazuma end y-pos set
		CLC
		ADC	#00024H
		STA	>SNCYPS		; center y-pos set
		MEM8
		SEP	#00100000B
;
		BRL	BMYXSET1
;
SNDI200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		clear demo ken flash move init.	(CDKNINT)     *
;**************************************************************
CDKNINT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	>ITMTBL6
		INC	A
		AND	#11111110B
		BEQ	CKIN100
;
		LDY	#000H
		LDA	#CDKMV
		JSR	JPRMSR2		; aki ram surch sub
		BCS	CKIN100
;
		STZ	BMCONT,X	; onpu conuter
		LDA	#001H
		STA	BUMFLM,X
		LDA	#022H
		STA	BMFLFG,X
;
CKIN100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		kona maki move init.	        (KONINT)      *
;**************************************************************
KNITYP		EQU	$		; y-pos inital data 
;			    up   down   left  right
		WORD	00001H,00028H,00016H,00016H
KNITXP		EQU	$		; x-pos inital data
		WORD	0000AH,0000AH,0FFF8H,0001CH
KNITYP1		EQU	$		; BG check y-pos data 
;			    up   down   left  right
		WORD	00000H,00014H,00010H,00010H
KNITXP1		EQU	$		; BG check x-pos data
		WORD	0FFFEH,0FFFEH,0FFF4H,0000CH
KONINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCC	KONI080
		BRL	KONI200
;
KONI080		EQU	$
		STZ	BMCONT,X	; kona move counter
		STZ	BMZPSL,X
		LDA	#001H		; kona flem counter set
		STA	BMFLFG,X
		LDA	#050H		; chara chenge flag set
		STA	ITMCPT
;
		PHX
		LDY	<PLMKCH
		TYA
		LSR	A
		STA	BMMUKI,X
		TAX
		LDA	>KNDTINX,X
		TAX
		LDA	>KNMDDAT,X
		PLX
		STA	BCDMNO,X	; kona mode flag
;
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	!KNITYP1,Y
		STA	<WORK4
		LDA	<PLXPS1
		CLC
		ADC	!KNITXP1,Y
		STA	<WORK6
		MEM8
		SEP	#00100000B
		LDA	<WORK4
		STA	BMYPSL,X
		LDA	<WORK5
		STA	BMYPSH,X
		LDA	<WORK6
		STA	BMXPSL,X
		LDA	<WORK7
		STA	BMXPSH,X
		JSL	>BMBCKL		; bg check sub
		LDA	BMBGNO,X
		STA	FIRENO
;
		LDA	BPSHZN
		CMP	#009H
		BNE	KONI100
		STZ	BMMODE,X
		BRA	KONI200
;
KONI100		EQU	$
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<PLYPS1 
		CLC
		ADC	!KNITYP,Y
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	!KNITXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JSL	>SDLRCP		; sound (L,R) check
		ORA	#kona0
		STA	!SOUND2		; <sound>
		JMP	BMYXSET1
;
KONI200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		ken hibana inital set		(KNHBIT)      *
;**************************************************************
KNHBYP		EQU	$		; hibana y-pos data
		WORD	0FFFCH,00020H,00011H,00011H
KNHBXP		EQU	$		; hibana x-pos data
		WORD	0000BH,0000AH,0FFF4H,0001DH
;
KNHBIT		EQU	$		; hibana initial set sub
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	KHB100
;
		LDA	#005H
		STA	BMCONT,X	; hibana conuter clear
		LDA	#001H		; hibana flem counter set
		STA	BMFLFG,X
;
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; hibana init. y-pos set 
		CLC
		ADC	!KNHBYP,Y
		STA	<WORK0
		LDA	<PLXPS1		; hibana init. x-pos set
		CLC
		ADC	!KNHBXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
;
		BRL	BMYXSET1	; beam y,x pos est sub
KHB100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		ken flash move init.		(KNFSINT)     *
;**************************************************************
KNFSINT		EQU	$
		PHB
		PHK
		PLB
		JSR	JPRMSR2
		BCS	KNFS100
		STZ	BMCONT,X	; onpu conuter
		LDA	#001H
		STA	BMFLFG,X
		LDA	<PLMKCH
		LSR	A
		STA	BMMUKI,X
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; onpu y-pos set 
		STA	<WORK0
		LDA	<PLXPS1		; onpu x-pos set
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
KNFS100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		DASH atari yure move	 	   (YURINT)   *
;**************************************************************
YURMUK		EQU	$		; yure muki data
		HEX	002,002,000,000
YURHOR		EQU	$		; yure houkou data
;			  L   H
		HEX	003,000	; up,down
		HEX	0FD,0FF ; left,right
YURCHK		EQU	$
		HEX	080,078
;;;;;;;;		HEX	006,000 ; left
;;;;;;;;		HEX	0FA,0FF ; right
;
YURINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR3		; aki ram surch sub
		BCS	YURI200
		JSR	JPRMSR2		; aki ram surch sub
		BCS	YURI200
;
		LDA	#010H
		STA	BMCONT,X	; kona move counter
		STZ	HIBSTAT,X
;
		LDA	<PLMKCH
		LSR	A
		TAY
		LDA	!YURMUK,Y
		STA	BMMUKI,X
		TAY
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	<SCCV2
		STA	<WORK2
		LDA	<PLXPS1
		SEC
		SBC	<SCCH2
		STA	<WORK0
		MEM8
		SEP	#00100000B
		PHX
		TYA
		LSR	A
		TAX
		LDA	!YURCHK,X
		STA	<WORK6
		TYX
		LDY	#000H
		LDA	<WORK0,X
		CMP	<WORK6
		BCC	YURI100
		LDY	#002H
YURI100		EQU	$
		PLX
;
		LDA	!YURHOR+0,Y
		STA	BMYPSL,X
		LDA	!YURHOR+1,Y
		STA	BMYPSH,X
;
YURI200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		bumeran hibana inital set	(BHBINT)      *
;**************************************************************
HIBAYP		EQU	$		; hibana y-pos data
		WORD	00000H,00008H,00008H,00008H
		WORD	00004H,00008H,0000CH,00008H
HIBAXP		EQU	$		; hibana x-pos data
		WORD	00008H,00008H,00000H,0000AH
		WORD	0000CH,00008H,00004H,00000H
HBMKDT		EQU	$
		HEX	000,006,004,000,002,00A,00C,000
		HEX	000,008,00E,000,000,000,000,000
;
BHBINT		EQU	$		; hibana initial set sub
		PHB
		PHK
		PLB
;
		LDA	BMYPSL,X
		STA	HBYPSL		; bomb init. y-pos set 
		LDA	BMYPSH,X
		STA	HBYPSL+1
		LDA	BMXPSL,X
		STA	HBXPSL		; bomb init. y-pos set 
		LDA	BMXPSH,X
		STA	HBXPSL+1
;
		LDY	#001H
		LDA	#HIBA1
		JSR	JPRMSR2		; aki ram surch sub
		BCS	BHB100
;
		STZ	BMCONT,X	; hibana conuter clear
		LDA	#001H		; hibana flem counter set
		STA	BUMFLM,X
;
		LDY	HBMUKI		; 0,up 2,down 4,left 6,right
		LDA	!HBMKDT,Y
		TAY
		MEM16
		REP	#00100000B
		LDA	HBYPSL		; bomb init. y-pos set 
		CLC
		ADC	!HIBAYP,Y
		STA	<WORK0
		LDA	HBXPSL		; bomb init. x-pos set
		CLC
		ADC	!HIBAXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
;
		BRL	BMYXSET1	; beam y,x pos est sub
BHB100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		fotshot hibana inital set	(BHBIT1)      *
;**************************************************************
BHBIT1		EQU	$		; hibana initial set sub
		PHB
		PHK
		PLB
;
		STX	<BMWORK+2
		JSR	JPRMSR2		; aki ram surch sub
		BCS	BHB100
;
		STZ	BMCONT,X	; hibana conuter clear
		LDA	#001H		; hibana flem counter set
		STA	BUMFLM,X
;
		PHX
		LDX	<BMWORK+2
		JSR	BMSTSB2		; y,x pos work0~3 set sub
		LDA	BMMUKI,X	; 0,up 2,down 4,left 6,right
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	<WORK0		; bomb init. y-pos set 
		CLC
		ADC	!HIBAYP,Y
		STA	<WORK0
		LDA	<WORK2		; bomb init. x-pos set
		CLC
		ADC	!HIBAXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		PLX
		BRL	BMYXSET1	; beam y,x pos est sub
;
;**************************************************************
;*		warp  move init.	(WARPINT)(WARPINT1)   *
;**************************************************************
WPIT000		EQU	$
		BRL	WPIT300
;
WARPINT		EQU	$
		PHB
		PHK
		PLB
		JSR	JPRMSR3
		BCS	WPIT000
		JSR	JPRMSR2
		BCS	WPIT000
;
		LDA	#078H		; sound wait timer
		STA	BMTIM0,X
		STZ	HIBSTAT,X
		STZ	BMZSPD,X
		STZ	BMZPSL,X
		LDY	#000H
		BRA	WPIT100
;
WARPINT1	EQU	$
		PHB
		PHK
		PLB
		JSR	JPRMSR3
		BCS	WPIT300
		JSR	JPRMSR2
		BCS	WPIT300
		LDA	#LNMD
		STA	<LNMODE
		STZ	<PYSPFG		; ken flag clear !!
		LDA	<KENKY
		AND	#01111110B
		STA	<KENKY
		STZ	<KENMD
		STZ	<KENFM
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	#001H
		STA	HIBSTAT,X
		LDA	#028H
		STA	BMZSPD,X
		LDA	#0CDH
		STA	BMZPSL,X
		LDY	#002H
;
WPIT100		EQU	$
		TYA
		STA	BMSTAT,X
		STZ	BMYSPD,X
		STZ	BMCONT,X
		LDA	#001H
		STA	BMFLFG,X
		LDA	#038H
		STA	BMXSPD,X
		LDA	#003H
		STA	BUMFLM,X
		STZ	BUADSB,X
		STZ	HBFLEM,X
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	#00008H
		STA	<WORK0
		LDA	#0FFF0H
		CLC
		ADC	<SCCH2
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
WPIT300		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		spcial magic (JISHIN) move init.   (JISNINT)  *
;**************************************************************
JISNINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCC	JIIT100
		BRL	JIIT200
;
JIIT100		EQU	$
		STZ	BMSTAT,X
		STZ	BMCONT,X
		LDA	#spoj6		; chara & coler chenge set
		STA	!SPOJFG
		LDA	#jisin		; jishin sound on 
		STA	!SOUND2		; <sound>
;
		LDA	#000H		; mode reset
		STA	>SPJIMD+0
		STA	>SPJIMD+1
		STA	>SPJIMD+2
		STA	>SPJIMD+3
		STA	>SPJIMD+4
		STA	>SPJILP		; loop counter
		INC	A
		STA	>SPJIFM+0	; flem counter set
		STA	>SPJIFM+1
		STA	>SPJIFM+2
		STA	>SPJIFM+3
		STA	>SPJIFM+4
		STA	!SPMCFG
		INC	A
		STA	BMTIM0,X
		MEM16
		REP	#00100000B
		LDA	<PLYPS1 
		CLC
		ADC	#0001AH
		STA	>SPJIYP
		LDA	<PLXPS1
		CLC
		ADC	#00008H
		STA	>SPJIXP
		LDA	#0003H
		STA	>SPVSR1
		MEM8
		SEP	#00100000B
;
JIIT200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		soromon ken move init.		(KNSOINT)     *
;**************************************************************
KNSMYP		EQU	$		; flash ken y-pos
		WORD	00020H,0FFF8H,0000AH,00014H
KNSMXP		EQU	$		; flash ken x-pos
		WORD	0000AH,00007H,0001CH,0FFF6H
KNSOINT		EQU	$
		PHB
		PHK
		PLB
		STX	<BMWORK+0
		JSR	JPRMSR2
		BCS	KNSI100
;
		STX	<WORK0
		LDX	#004H
KNSI080		EQU	$
		LDA	BMMODE,X
		CMP	#BRSEN
		BNE	KNSI0C0
		STZ	BMMODE,X
KNSI0C0		EQU	$
		DEX
		BPL	KNSI080
;
		LDX	<WORK0
		STZ	BMCONT,X	; onpu conuter
;
		LDY	#004H		; stop
		LDA	<BMWORK+0
		STA	BMSTAT,X
		BEQ	KNSI0D0
		LDY	#004H		; jump 
KNSI0D0		EQU	$
		TYA
		STA	BMTIM0,X
		LDA	#003H
		STA	BMFLFG,X
;
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; y-pos set 
		CLC
		ADC	!KNSMYP,Y
		STA	<WORK0
		LDA	<PLXPS1		; x-pos set
		CLC
		ADC	!KNSMXP,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
KNSI100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		kabe bomb demo init.		(KBDMIT)      *
;**************************************************************
KBDITD		EQU	$		; demo int y,x-pos data
		WORD	0FFF8H,00000H	;tate	0
		WORD	0FFF8H,00010H	;	1
		WORD	00010H,00000H	;	2
		WORD	00010H,00010H	;	3
		WORD	00000H,0FFF8H	;yoko	4
		WORD	00010H,0FFF8H	;	5
		WORD	00000H,00010H	;	6
		WORD	00010H,00010H	;	7
KBITYD		EQU	$
		WORD	0FFF0H,00010H,00000H,00000H
KBITXD		EQU	$
		WORD	00000H,00000H,0FFF0H,00010H
BMLRDT		EQU	$
		HEX	080,080,080,000,000,040,040,040
KBDMIT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	#KBBOM		; item mode set
		STA	BMMODE+0
		STA	BMMODE+1
;
		STZ	BMMODE+2	; item mode 2~ clear
		STZ	BMMODE+3
		STZ	BMMODE+4
		STZ	BMMODE+5
		STZ	BMCONT		; position mode clear
		STZ	BMCHOK
		STZ	PYDMBT
		STZ	<PYMKFG
		STZ	BUADSB
		LDA	<PLBGCKF	; BG uusen set
		STA	BMPRIO
		STA	BMPRIO+1
		LDA	CDBGCKF
		STA	BMCDPR+0
;
		LDA	#000H
		STA	>KBMODE+0
		STA	>KBBMFM+1
		STA	>KBBMNO+1	
		STA	>KBMODE+1
		INC	A
		STA	>KBBMNO+0
		STA	!SPMCFG
		LDA	#003H		; flem counter set
		STA	>KBBMFM+0
;
		LDA	>KBMUKI
		TAY
		MEM16
		REP	#00100000B
		LDA	!KBITYD,Y
		CLC
		ADC	>KBYPS0
		STA	>KBYPS0
		LDA	!KBITXD,Y
		CLC
		ADC	>KBXPS0
		STA	>KBXPS0
		MEM8
		SEP	#00100000B
;
		LDY	#000H
		LDA	>KBMUKI		; 0:up 2:down 4:left 6:right 
		CMP	#004H		; tate ? [NO:KBDM400]
		BCS	KBDM400
		LDY	#010H
KBDM400		EQU	$
;
		LDX	#006H
KBDM500		EQU	$
		MEM16
		REP	#00100000B
		LDA	!KBDITD,Y
		CLC
		ADC	>KBYPS0
		STA	>KABEYP,X
		LDA	!KBDITD+2,Y
		CLC
		ADC	>KBXPS0
		STA	>KABEXP,X
		SEC
		SBC	<SCCH2
		STA	<WORK0
		MEM8
		SEP	#00100000B
		LDA	<WORK1
		BNE	KBDM540
		PHY
		PHX
		LDA	<WORK0
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	!BMLRDT,X
		ORA	#bomb1
		STA	!SOUND2		; <sound>
		PLX
		PLY
KBDM540		EQU	$
		INY
		INY
		INY
		INY
		DEX
		DEX
		BPL	KBDM500
;		
		PLB
		RTL
;
;**************************************************************
;*		power up bumeran move init.	(PUBNIT)      *
;**************************************************************
PUBNIT		EQU	$
		PHB
		PHK
		PLB
		STX	<BMWORK+0
		LDX	#009H
PUIT100		EQU	$
		LDA	BMMODE,X
		BEQ	PUIT200
		DEX
		BPL	PUIT100
		BRL	PUIT900
;
PUIT200		EQU	$
		LDA	#LVUBR
		STA	BMMODE,X
		LDA	<PLBGCKF	; BG uusen set
		STA	BMPRIO,X
		STZ	BMCONT,X
		LDA	#004H
		STA	BMTIM0,X
		JSL	>RNDSET		; ranram set
		STA	<WORK8
		PHX
		LDX	<BMWORK+0
		JSR	BMSTSB2		; y,x pos work0~3 set sub
		STZ	<WORKB
		LDA	BMZPSL,X
		CMP	#0F8H
		BCC	PUIT300
		LDA	#000H
PUIT300		EQU	$
		STA	<WORKA
		PLX
;
PUIT400		EQU	$
		LDA	<WORK8
		AND	#00FH
		STA	<WORK4
		STZ	<WORK5
		LDA	<WORK8
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK6
		STZ	<WORK7
;
		MEM16
		REP	#00100000B
		LDA	<WORKA
		EOR	#0FFFFH
		INC	A
		CLC
		ADC	<WORK0
		CLC
		ADC	#0FFFEH
		CLC
		ADC	<WORK4
		STA	<WORK0
		LDA	<WORK2
		CLC
		ADC	<WORK6
		CLC
		ADC	#00002H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
PUIT900		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		power up ya move init.		(PUYAIT)      *
;**************************************************************
PUYYS		EQU	$
		WORD	00000H,00002H,0FFFCH,0FFFCH
PUYXS		EQU	$
		WORD	0FFFCH,0FFFCH,00000H,00002H
PUYAIT		EQU	$
		PHB
		PHK
		PLB
		STX	<BMWORK+0
		LDX	#009H
PUYA100		EQU	$
		LDA	BMMODE,X
		BEQ	PUYA200
		DEX
		BPL	PUYA100
		BRL	PUYA900
;
PUYA200		EQU	$
		LDA	#LVUBR
		STA	BMMODE,X
		STZ	BMCONT,X
		LDA	#004H
		STA	BMTIM0,X
		LDA	<PLBGCKF	; BG uusen set
		STA	BMPRIO,X
		JSL	>RNDSET		; ranram set
		STA	<WORK8
		PHX
		LDX	<BMWORK+0
		JSR	BMSTSB2		; y,x pos work0~3 set sub
		STZ	<WORKB
;
		LDA	<WORK8
		AND	#007H
		STA	<WORK4
		STZ	<WORK5
		LDA	<WORK8
		AND	#070H
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK6
		STZ	<WORK7
		LDA	BMMUKI,X
		AND	#003H
		ASL	A
		TAY
		PLX
;
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	!PUYYS,Y
		CLC
		ADC	<WORK4
		STA	<WORK0
		LDA	<WORK2
		CLC
		ADC	!PUYXS,Y
		CLC
		ADC	<WORK6
		STA	<WORK2
		MEM8
		SEP	#00100000B
		BRL	BMYXSET1
;
PUYA900		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		dot move init. 			(DTMVIT)     *
;**************************************************************
DTINTY		EQU	$		; initial y-pos
;			   up    down   left  right
		WORD	0FFF0H,00018H,00008H,00008H  ; DTMOV
DTINTX		EQU	$		; initial x-pos
		WORD	00000H,00000H,0FFECH,00014H  ; DTMOV
DTYSDT		EQU	$		; Y-speed data
		HEX	0D0,030,000,000
DTXSDT		EQU	$		; X-speed data
		HEX	000,000,0D0,030
DTMVIT		EQU	$		; dot move init.
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCC	DTIT100
		LDX	#000H
		JSL	>MGPTSB2
		BRA	PUYA900
;
DTIT100		EQU	$
		JSL	>SDLRCP		; sound (L,R) check
		ORA	#frod1
		STA	!SOUND2		; <sound>
;
		STZ	BMSTAT,X	; move start flag clear
		STZ	BCDMNO,X	; chara hanten flag clear
		LDA	#0FFH
		STA	BMCONT,X	; beam paturn counter
		LDA	#001H		; beam set
		STA	HIBSTAT,X
		LDA	#003H		; flem counter set
		STA	BMFLFG,X
		LDA	#006H		; dot wait counter
		STA	BUMFLM,X
;
		LDA	<PLMKCH		; player muki
		LSR	A
		STA	BMMUKI,X	; dot beam houkou set
		TAY
		LDA	!DTYSDT,Y
		STA	BMYSPD,X
		LDA	!DTXSDT,Y
		STA	BMXSPD,X
;
DTIT500		EQU	$
		PHY
		PHX
		JSL	>ITBGCK
		PLX
		PLY
		BCS	DTIT700
;
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		;dot beam y-pos set 
		CLC
		ADC	!DTINTY,Y
		STA	<WORK0
		SEC
		SBC	<SCCV2
		STA	<WORK4
		LDA	<PLXPS1		;dot beam x-pos set
		CLC
		ADC	!DTINTX,Y
		STA	<WORK2
		SEC
		SBC	<SCCH2
		STA	<WORK6
		MEM8
		SEP	#00100000B

		LDA	<WORK5
		ORA	<WORK7
		BEQ	DTIT540
		STZ	BMMODE,X
		BRA	DTIT600		
DTIT540		EQU	$
		BRL	BMYXSET1	; beam y,x pos est sub
;
DTIT600		EQU	$
		PLB
		RTL
;
DTIT700		EQU	$
		PHX
		LDA	#DTED0
		STA	BMMODE,X	; end dot beam set
		TAX
		LDA	>BMITOC-1,X	; dot beam oam suu set
		PLX
		STA	BMOMNO,X
		STZ	BMCONT,X
		LDA	#004H
		STA	BMFLFG,X
		PLB
		RTL
;
;**************************************************************
;*		water hahen  move init.	        (WTIMIT)      *
;**************************************************************
WTIMIT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	WTIM100
;
		JSR	>SDLRCP
		ORA	#dobn1
		STA	!SOUND2
		STZ	BMCONT,X	; water mode counter
		LDA	#02H		; water flem counter
		STA	BMFLFG,X
;
		LDA	<GMMODE
		BEQ	WTIM080		; danjyon ?
;					; yes
		LDA	WATRFG
		BNE	WTIM080
;// 03.08.09 //		PHX
;// 03.08.09 //		JSL	>PWTRCGS1	; player coler set
;// 03.08.09 //		PLX
		STZ	<PLBGCKF	; player BG.2 check
;
WTIM080		EQU	$
		MEM16
		REP	#00100000B
		LDA	<PLYPS1		; water y-pos set 
		CLC
		ADC	#0008H
		STA	<WORK0
		LDA	<PLXPS1		; water x-pos set
		CLC
		ADC	#0FFF5H
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JSR	BMSTSB1		; beam y,x pos set sub
;
		CLC
;
WTIM100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		haka move init.			(HAKAINT)     *
;**************************************************************
HKCMPYD		EQU	$		; haka y-pos cmp data
		WORD	00550H,00540H,00530H,00520H,00500H
		WORD	004E0H,004C0H,004B0H
HKCMPXD		EQU	$		; haka x-pos cmp data
HKCP0		WORD	008B0H
HKCP1		WORD	008F0H,00910H,00950H
HKCP2		WORD	00970H,009A0H
HKCP3		WORD	00850H,00870H
HKCP4		WORD	008B0H,008F0H,00920H,00950H
HKCP5		WORD	00880H
HKCP6		WORD	00990H		; atari kaidan
HKCP7		WORD	00840H		; atari hole
HKCP8		EQU	$
HAKAYD		EQU	$
		WORD	00540H
		WORD	00530H,00530H,00530H
		WORD	00520H,00520H
		WORD	00510H,00510H
		WORD	004F0H,004F0H,004F0H,004F0H
		WORD	004D0H
		WORD	004B0H		; atari kaidan
		WORD	004A0H		; atari hole
HAKAXD		EQU	$
		WORD	008B0H
		WORD	008F0H,00910H,00950H
		WORD	00970H,009A0H
		WORD	00850H,00870H
		WORD	008B0H,008F0H,00920H,00950H
		WORD	00880H
		WORD	00990H		; atari kaidan
		WORD	00840H		; atari hole
HAKAAD		EQU	$		; adress data
		WORD	00A16H
		WORD	0099EH,009A2H,009AAH
		WORD	0092EH,00934H
		WORD	0088AH,0088EH
		WORD	00796H,0079EH,007A4H,007AAH
		WORD	00690H
		WORD	005B2H		; atari kaidan
		WORD	00508H		; atari hole
HAKASH		EQU	$		; shurui data
		WORD	ut4p03
		WORD	ut4p03,ut4p03,ut4p03
		WORD	ut4p03,ut4p03
		WORD	ut4p03,ut4p03
		WORD	ut4p03,ut4p03,ut4p03,ut4p03
		WORD	ut4p03
		WORD	ut4p04		; atari kaidan
		WORD	ut4p08		; atari hole
HAKATBL		EQU	$
		BYTE	HKCP0-HKCP0
		BYTE	HKCP1-HKCP0
		BYTE	HKCP2-HKCP0
		BYTE	HKCP3-HKCP0
		BYTE	HKCP4-HKCP0
		BYTE	HKCP5-HKCP0
		BYTE	HKCP6-HKCP0
		BYTE	HKCP7-HKCP0
		BYTE	HKCP8-HKCP0
;
HAKAINT		EQU	$
		PHB
		PHK
		PLB
		JSR	JPRMSR2
		BCC	HAKI020
		BRL	HAKIF00		; (RTL)
;
HAKI020		EQU	$
		MEM16
		IDX16
		REP	#00110000B

		LDY	<PLYPS1
		TYA
		AND	#000FH
		CMP	#0007H
		BCS	HAKI040
		TYA
		BRA	HAKI080
HAKI040		EQU	$
		TYA
		CLC
		ADC	#00010H
HAKI080		EQU	$
		AND	#0FFF0H
		STA	<WORK0
;
		LDY	#HKCMPXD-HKCMPYD-2
HAKI100		EQU	$
		LDA	<WORK0
		CMP	!HKCMPYD,Y
		BEQ	HAKI200
		DEY
		DEY
		BPL	HAKI100
		BRA	HAKI500
;
HAKI200		EQU	$
		TYA
		LSR	A
		TAY
		LDA	!HAKATBL+1,Y
		AND	#00FFH
		STA	<WORK0
		LDA	!HAKATBL,Y
		AND	#00FFH
		TAY
HAKI300		EQU	$
		LDA	!HKCMPXD,Y
		CMP	<PLXPS1
		BCS	HAKI400
		CLC
		ADC	#000FH
		CMP	<PLXPS1
		BCC	HAKI400
		CPY	#HKCP6-HKCP0
		BNE	HAKI340
;;;;;;;;		LDA	>ITEMR21
;;;;;;;;		AND	#00FFH
;;;;;;;;		CMP	#0002H
;;;;;;;;		BNE	HAKI500
		LDA	DASHFG		; dash ? [no:HAKI500]
		AND	#00FFH
		BEQ	HAKI500
		BRA	HAKI600
HAKI340		EQU	$
		LDA	DASHFG
		AND	#00FFH
		BNE	HAKI500
		BRA	HAKI600
HAKI400		EQU	$
		INY
		INY
		CPY	<WORK0
		BNE	HAKI300
HAKI500		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		STZ	BMMODE,X
		BRL	HAKIF00
;
HAKI600		EQU	$
		MEM16
		IDX16
;
		LDA	!HAKAAD,Y
		STA	!GDRBF1		; write address set
		SEC
		SBC	#0080H
		STA	<BMWORK+0
		LDA	!HAKASH,Y
		STA	!DOPCNO		; shurui set
		CMP	#ut4p08		; hole ?
		BEQ	HAKI680
		CMP	#ut4p04		; kaidan ?
		BNE	HAKI700
;
		MEM8
		IDX8
		SEP	#00110000B
		PHX
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		ORA	#020H
		STA	>GNDTBL,X
		PLX
HAKI680		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		JSL	>SDLRCP
		ORA	#pinpn
		STA	!SOUND3
;
HAKI700		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		LDA	<BMWORK+0
		STA	BCDYPS,X
		LDA	<BMWORK+1
		STA	BCDXPS,X
		PHY
		PHX
		JSR	>UT4RWT
		PLX
		PLY
;
		MEM16
		IDX16
		REP	#00110000B
		TYA
		AND	#00FFH
		TAY
		LDA	!HAKAYD,Y
		CLC
		ADC	#0FFFEH
		STA	<WORK0
		CLC
		ADC	#0FFF0H
		STA	<WORK4
		LDA	!HAKAXD,Y
		STA	<WORK2
		MEM8
		IDX8
		SEP	#00110000B
		LDA	!SOUND3
		AND	#00111111B
		CMP	#pinpn
		BEQ	HAKI800
		JSL	>SDLRCP
		ORA	#hakas
		STA	!SOUND2
;
HAKI800		EQU	$
		LDA	#004H
		STA	<HANIFG1
		LDA	#001H
		STA	HKMVON
		LDA	<WORK4
		STA	BUPLYL,X
		LDA	<WORK5
		STA	BUPLYH,X
		BRL	BMYXSET1
;
HAKIF00		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		foot shoot move init. 		(FOTINT)      *
;**************************************************************
FSYSPD		EQU	$		; y-speed data
		HEX	0C0,040,000,000
FSXSPD		EQU	$		; x-speed data
		HEX	000,000,0C0,040
FOTYPS		EQU	$		; y-initial pos
		WORD	00004H,00014H,00008H,00008H
FOTXPS		EQU	$		; x-initial pos
		WORD	00000H,00000H,0FFFCH,0000BH
;
FOTINT		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2		; aki ram surch sub
		BCS	FOTI100
;
		LDA	#003H		; kona flem counter set
		STA	BMFLFG,X
		STZ	BMCONT,X
		STZ	BMSTAT,X
		STZ	HIBSTAT,X
		STZ	BOGMOV
		STX	HBMUKI
		STZ	BUADSB,X
		LDA	#0FFH
		STA	HBFLEM,X
		STZ	BUMODE,X
		STZ	BMTIM0,X
;
		LDA	<PLMKCH
		LSR	A
		STA	BMMUKI,X
		TAY
		LDA	!FSYSPD,Y
		STA	BMYSPD,X
		LDA	!FSXSPD,Y
		STA	BMXSPD,X
;
		LDY	<PLMKCH
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	!FOTYPS,Y
		STA	<WORK0
		LDA	<PLXPS1
		CLC
		ADC	!FOTXPS,Y
		STA	<WORK2
		MEM8
		SEP	#00100000B
		JMP	BMYXSET1
;
FOTI100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		taki player hed move init.	(TPHDIT)      *
;**************************************************************
TPHDIT		EQU	$
		PHB
		PHK
		PLB
;
		LDY	#004H
		LDA	#TPHDM
		JSR	JPRMSR3		; 2 times check !!
		BCS	TPIT100
		JSR	JPRMSR2		; aki ram surch sub
		BCS	TPIT100
;
		LDA	#002H		; kona flem counter set
		STA	BMTIM0,X
		STZ	BMCONT,X
;
TPIT100		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		poligon kaiten  move init.	   (PLKTINT)  *
;**************************************************************
PLKTINT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	PYDMBT
		AND	#10000000B
		ORA	<DIEFG
		BNE	TPIT100
;
		LDA	>ITMTBL3	; poligon=7 ?
		AND	#01111111B
		CMP	#01111111B
		BNE	TPIT100
;
		LDA	>GNDTBL+043H	; BG kakikae on !!
		AND	#020H
		BNE	TPIT100
		JSL	>KNBMCLR	; beam clear sub
;
		LDY	#004H
		LDA	#PGKMV
		JSR	JPRMSR3		; 2 times check !!
		BCS	TPIT100
		JSR	JPRMSR2		; aki ram surch sub
		BCS	TPIT100
;
		PHX
		LDX	#00FH
PKIT040		EQU	$
		LDA	ENMYNO,X
		CMP	#PLCHK
		BNE	PKIT080
		STZ	ENMODE,X
PKIT080		EQU	$
		DEX
		BPL	PKIT040
;
		LDX	#017H
		LDA	#0FFH
PKIT100		EQU	$
		STA	>KIRMOD,X
		DEX
		BPL	PKIT100
;
		LDA	#028H		; poligon kakikae !!
		STA	<BMWORK+0
		JSL	>ITMCBFST
		LDA	#004H
		STA	!CHITEMJC
		LDA	#002H
		STA	!CGSTPT+1
		JSL	>CHITEMS0
		INC	<CGVMAF
		PLX
;
		LDA	#001H
		STA	!PYALSP
		STZ	BMYSDR,X
		STZ	BMXSDR,X
		STZ	BMSTAT,X	; mode flag clear !!
;
		LDA	#0F0H		; en stop timer 
		STA	>SNTIME
		LDA	#000H
		STA	>SNENMD+0	; en mode flag
		STA	>SNDHAN		; en hankei set
		LDA	#00AH
		STA	>SNENMD+1	; en mode flag
		LDA	#016H
		STA	>SNENMD+2	; en mode flag
		LDA	#020H
		STA	>SNENMD+3	; en mode flag
		LDA	#02AH
		STA	>SNENMD+4	; en mode flag
		LDA	#036H
		STA	>SNENMD+5	; en mode flag
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		CLC
		ADC	#0FFF0H
		STA	<WORK0
		LDA	<PLXPS1
		STA	<WORK2
		MEM8
		SEP	#00100000B
;
		BRL	BMYXSET1
;
PKIT300		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		kakera move init.		(BMKRINT)     *
;**************************************************************
BMKRINT		EQU	$
		PHB
		PHK
		PLB
;
		LDY	#001H
		LDA	#BOMBA
		JSR	JPRMSR2
		BCS	KRINF00
;
		STZ	BCDMNO,X
		LDA	#007H
		STA	BCDFLM,X
;
		CLC
;
KRINF00		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		rod bomb move init.		(RDBMINT)     *
;**************************************************************
RDBMINT		EQU	$
		PHB
		PHK
		PLB
;
		LDA	<GMMODE
		BNE	KRINF00		; danjyon ?
;					; no
		LDA	<MPDTNO
		AND	#040H
		BEQ	KRINF00
;
		PHX
		LDY	#RDBOM
		STY	BMMODE+0
		STZ	BMMODE+1
		STZ	BMMODE+2
		STZ	BMMODE+3
		STZ	BMMODE+4
		STZ	BMMODE+5
		STZ	BMRMOV		; bumeran move flag off !!
		TYX
		LDA	>BMITOC-1,X
		STA	BMOMNO
		PLX
;
		LDA	#0FDH
		STA	>KBBMNO+0
		INC	A
		STA	>KBBMNO+1
		INC	A
		STA	>KBBMNO+2
		LDA	#000H
		STA	>KBBMNO+3
		STA	>KBMODE+0
		LDA	#005H
		STA	>KBBMFM+0
		STA	>KBBMFM+1
		STA	>KBBMFM+2
		STA	>KBBMFM+3
		STA	BMFLFG		; fire flem counter
		MEM16
		REP	#00100000B
		LDA	#00100H
		STA	>KBYPS0
		STA	>KABEYP+6
		LDA	#00098H
		STA	>KBXPS0
		STA	>KABEXP+6
		MEM8
		SEP	#00100000B
;
		LDA	#gif2
		STA	!GDINFF
		STZ	<JRSBPT
		STZ	<CWORK0
		LDA	<PLBGCKF
		STA	BMPRIO
		LDA	CDBGCKF
		STA	BMCDPR
;
		STZ	BMCONT
		STZ	BMSTAT
;
RDBMF00		EQU	$
		PLB
		RTL
;;;;;;;;;
;;;;;;;;;**************************************************************
;;;;;;;;;*		nusuto aitem move init.	        (NTATIT)      *
;;;;;;;;;**************************************************************
;;;;;;;;NTYPDT		EQU	$		; aitem y-pos data
;;;;;;;;		WORD	00018H,0FFF8H,00008H,00008H
;;;;;;;;NTXPDT		EQU	$		; aitem x-pos data
;;;;;;;;		WORD	00000H,00000H,00008H,00000H
;;;;;;;;NTYSDT		EQU	$		; Y-speed data
;;;;;;;;		HEX	008,0F8,000,000
;;;;;;;;NTXSDT		EQU	$		; X-speed data
;;;;;;;;		HEX	000,000,008,0F8
;;;;;;;;NTCTRM		EQU	$
;;;;;;;;		WORD	CONCNT,ARWCNT,BMBCNT
;;;;;;;;;
;;;;;;;;NTATIT		EQU	$
;;;;;;;;		PHB
;;;;;;;;		PHK
;;;;;;;;		PLB
;;;;;;;;;
;;;;;;;;		JSR	JPRMSR3		; 2 times check !!
;;;;;;;;		BCS	WTIM100
;;;;;;;;		JSR	JPRMSR2		; aki ram surch sub
;;;;;;;;		BCS	WTIM100
;;;;;;;;;
;;;;;;;;		LDA	>ARWCNT
;;;;;;;;		ORA	>BMBCNT		
;;;;;;;;		ORA	>CONCNT
;;;;;;;;		ORA	>CONCNT+1
;;;;;;;;		BEQ	NTAT060
;;;;;;;;;
;;;;;;;;NTAT040		EQU	$
;;;;;;;;		JSL	>RNDSET		; randam sub
;;;;;;;;		AND	#00000011B	; 1 -- > coin 2---> ya 3---> bomb
;;;;;;;;		BNE	NTAT080
;;;;;;;;NTAT060		EQU	$
;;;;;;;;		STZ	BMMODE,X
;;;;;;;;		BRL	NTAT900
;;;;;;;;NTAT080		EQU	$
;;;;;;;;		STA	<BMWORK+0
;;;;;;;;		DEC	A
;;;;;;;;		ASL	A
;;;;;;;;		TAY
;;;;;;;;		LDA	!NTCTRM,Y	; ram (L) set
;;;;;;;;		STA	<WORK0
;;;;;;;;		LDA	!NTCTRM+1,Y	; ram (H) set
;;;;;;;;		STA	<WORK1
;;;;;;;;		LDA	#07EH		; ram (B) set
;;;;;;;;		STA	<WORK2
;;;;;;;;		CPY	#000H
;;;;;;;;		BEQ	NTAT0A0
;;;;;;;;		LDA	[WORK0]
;;;;;;;;		BEQ	NTAT040
;;;;;;;;		DEC	A
;;;;;;;;		STA	[WORK0]
;;;;;;;;		BRA	NTAT0C0
;;;;;;;;NTAT0A0		EQU	$
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B
;;;;;;;;		LDA	[WORK0]
;;;;;;;;		BNE	NTAT0B0	
;;;;;;;;		MEM8
;;;;;;;;		SEP	#00100000B
;;;;;;;;		BRA	NTAT040
;;;;;;;;NTAT0B0		EQU	$
;;;;;;;;		MEM16
;;;;;;;;		DEC	A
;;;;;;;;		STA	[WORK0]
;;;;;;;;		MEM8
;;;;;;;;		SEP	#00100000B
;;;;;;;;;
;;;;;;;;NTAT0C0		EQU	$
;;;;;;;;		LDA	<BMWORK+0
;;;;;;;;		STA	BMCONT,X
;;;;;;;;		LDA	#020H
;;;;;;;;		STA	BMZPSL,X
;;;;;;;;		LDA	#010H
;;;;;;;;		STA	BMZSPD,X
;;;;;;;;		STZ	BMSTAT,X
;;;;;;;;;
;;;;;;;;		LDY	OPINDX+0
;;;;;;;;		BPL	NTAT100
;;;;;;;;		LDY	#000H
;;;;;;;;NTAT100		EQU	$
;;;;;;;;		STZ	<BMWORK+0
;;;;;;;;		STZ	<BMWORK+1
;;;;;;;;		LDA	OPYPSL,Y
;;;;;;;;		STA	<WORK0
;;;;;;;;		LDA	OPYPSH,Y
;;;;;;;;		STA	<WORK1
;;;;;;;;		LDA	OPXPSL,Y
;;;;;;;;		STA	<WORK2
;;;;;;;;		LDA	OPXPSH,Y
;;;;;;;;		STA	<WORK3
;;;;;;;;		LDA	OPMUKI,Y
;;;;;;;;		AND	#00000011B
;;;;;;;;		STA	BMMUKI,X
;;;;;;;;		TAY
;;;;;;;;		AND	#00000010B
;;;;;;;;		BNE	NTAT200
;;;;;;;;		LDA	BMCONT,X
;;;;;;;;		CMP	#003H
;;;;;;;;		BEQ	NTAT200
;;;;;;;;		LDA	#004H
;;;;;;;;		STA	<BMWORK+0
;;;;;;;;NTAT200		EQU	$
;;;;;;;;		LDA	!NTYSDT,Y
;;;;;;;;		STA	BMYSPD,X
;;;;;;;;		LDA	!NTXSDT,Y
;;;;;;;;		STA	BMXSPD,X
;;;;;;;;		TYA
;;;;;;;;		ASL	A
;;;;;;;;		TAY
;;;;;;;;		MEM16
;;;;;;;;		REP	#00100000B
;;;;;;;;		LDA	!NTYPDT,Y	; nusuto aitem y-pos set 
;;;;;;;;		CLC
;;;;;;;;		ADC	<WORK0
;;;;;;;;		STA	<WORK0
;;;;;;;;		LDA	!NTXPDT,Y	; nusuto aitem x-pos set
;;;;;;;;		CLC
;;;;;;;;		ADC	<BMWORK+0
;;;;;;;;		CLC
;;;;;;;;		ADC	<WORK2
;;;;;;;;		STA	<WORK2
;;;;;;;;		MEM8
;;;;;;;;		SEP	#00100000B
;;;;;;;;		BRL	BMYXSET1	; beam y,x pos est sub
;;;;;;;;;
;;;;;;;;NTAT900		EQU	$
;;;;;;;;		PLB
;;;;;;;;		RTL
;
;============== COMMON ROUTIN =================================
;**************************************************************
;*		Jump item aki ram surch shori	(JPRMSR)      *
;**************************************************************
JPRMSR2		EQU	$		; aki item ram surch
		PHA
;
		JSL	>BMIDSH
;
		PLA
		TYX
		BMI	JP2M100
		STA	BMMODE,X 	; beam mode set
		TAY
		LDA	<PLBGCKF	; BG uusen set
		STA	BMPRIO,X
		LDA	CDBGCKF
		STA	BMCDPR,X
                STZ     BMYSPD,X         ; y-speed clear
                STZ     BMXSPD,X         ; x-speed clear
		STZ	BMCRFG,X	 ; BG no check flag clear
		STZ	BMCRTM,X	 ; gake check timer clear
		PHX
		TYX
		LDA	>BMITOC-1,X	; use kosuu set
		STA	<WORKE
		PLX
		LDA	<WORKE
		STA	BMOMNO,X
		CLC
		RTS
;
JP2M100		EQU	$
		SEC
		RTS
;	
;**************************************************************
;*		Jump item aki ram surch shori	(JPRMS23)     *
;**************************************************************
JPRMS23		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR2
		PLB
		RTL
;
;**************************************************************
;*		Jump item aki ram surch shori	(JPRMSR3)      *
;**************************************************************
JPRMSR3		EQU	$		; aki item ram surch
		LDX	#005H
JP3R100		EQU	$
		CMP	BMMODE,X	 ; item mode set
		BEQ	JP3R200
		DEX
		BPL	JP3R100
		CLC
		RTS
;
JP3R200		EQU	$
		SEC
		RTS
;	
;**************************************************************
;*		Jump item aki ram surch shori	(JPRMS33)     *
;**************************************************************
JPRMS33		EQU	$
		PHB
		PHK
		PLB
;
		JSR	JPRMSR3
;
		PLB
		RTL
;
;**************************************************************
;*		Jump item aki ram surch shori	(JPRMSR4)     *
;**************************************************************
JPRMSR4		EQU	$		; aki item ram surch
		PHA
;
		INY
		STY	<WORKE
;
		LDY	#000H
		LDX	#004H
JP4M010		EQU	$
		LDA	#YAEND
		CMP	BMMODE,X
		BNE	JP4M030
		INY
JP4M030		EQU	$
		DEX
		BPL	JP4M010
		CPY	<WORKE
		BEQ	JP4M060
;
		LDY	#004H
JP4M040		EQU	$
		LDA	BMMODE,Y
		BEQ	JP4M0C0
		DEY
		BPL	JP4M040
		BRA	JP4M0C0
;
JP4M060		EQU	$
		DEC	BMSTCT
		BPL	JP4M070
JP4M064		EQU	$
		LDA	#004H
		STA	BMSTCT
JP4M070		EQU	$
		LDY	BMSTCT
		LDA	BMMODE,Y
		CMP	#YAEND
		BEQ	JP4M0C0
		DEY
		BPL	JP4M060		
		BRA	JP4M064
;
JP4M0C0		EQU	$
		PLA
		TYX
		BMI	JP4M100
		STA	BMMODE,X 	; beam mode set
		TAY
		LDA	<PLBGCKF	; BG uusen set
		STA	BMPRIO,X
		LDA	CDBGCKF
		STA	BMCDPR,X
                STZ     BMYSPD,X         ; y-speed clear
                STZ     BMXSPD,X         ; x-speed clear
		STZ	BMCRFG,X	 ; BG no check flag clear
		STZ	BMCRTM,X	 ; gake check timer clear
		PHX
		TYX
		LDA	>BMITOC-1,X	; use kosuu set
		STA	<WORKE
		PLX
		LDA	<WORKE
		STA	BMOMNO,X
		CLC
		RTS
;
JP4M100		EQU	$
		SEC
		RTS
;
;**************************************************************
;*		init. BG check shori		(ITBGCK)      *
;**************************************************************
BUBGYP		EQU	$		; BG check y-pos data
		WORD	00008H,00000H,0FFF8H	; up
		WORD	00008H,00010H,00018H	; down
		WORD	00008H,00008H,00008H	; left
		WORD	00008H,00008H,00008H	; right
BUBGXP		EQU	$		; BG check x-pos data
		WORD	00000H,00000H,00000H	; up
		WORD	00000H,00000H,00000H	; down
		WORD	00000H,0FFF8H,0FFF0H	; left
		WORD	00000H,00008H,00010H	; right
;
ITBGCK		EQU	$
		PHB
		PHK
		PLB
;
		PHY
		LDA	#002H
		STA	<BMWORK+0
		LDA	BMMUKI,X
		ASL	A
		STA	<WORK2
		ASL	A
		CLC
		ADC	<WORK2
		TAY
ITBG100		EQU	$
		MEM16
		REP	#00100000B
		LDA	!BUBGYP,Y
		CLC
		ADC	<PLYPS1
		STA	<WORK2
		LDA	!BUBGXP,Y
		CLC
		ADC	<PLXPS1
		STA	<WORK4
		MEM8
		SEP	#00100000B
		LDA	<WORK2
		STA	BMYPSL,X
		LDA	<WORK3
		STA	BMYPSH,X
		LDA	<WORK4
		STA	BMXPSL,X
		LDA	<WORK5
		STA	BMXPSH,X
		PHY
		JSL	>BMBCKL
		PLY
		BCS	ITBG300
		INY
		INY
		DEC	<BMWORK+0
		BPL	ITBG100
;
		PLY
		CLC
		PLB
		RTL
;
ITBG300		EQU	$
		PLY
		SEC
		PLB
		RTL
;
;**************************************************************
;*		init. BG check shori play atari (ITBGCK1)     *
;**************************************************************
BUBGYP1		EQU	$		; BG check y-pos data
		WORD	0000FH,00010H
		WORD	0001CH,00018H
		WORD	0000CH,0000CH
		WORD	0000CH,0000CH
BUBGXP1		EQU	$		; BG check x-pos data
		WORD	00008H,00008H
		WORD	00008H,00008H
		WORD	0FFFFH,00000H
		WORD	00011H,00010H
ITBGCK1		EQU	$
		PHB
		PHK
		PLB
;
		PHY
		LDA	#002H
		STA	<BMWORK+0
		LDA	BMMUKI,X
		ASL	A
;;;;;;;;		STA	<WORK2
		ASL	A
;;;;;;;;		CLC
;;;;;;;;		ADC	<WORK2
		TAY
ITBC100		EQU	$
		MEM16
		REP	#00100000B
		LDA	!BUBGYP1,Y
		CLC
		ADC	<PLYPS1
		STA	<WORK2
		LDA	!BUBGXP1,Y
		CLC
		ADC	<PLXPS1
		STA	<WORK4
		MEM8
		SEP	#00100000B
		LDA	<WORK2
		STA	BMYPSL,X
		LDA	<WORK3
		STA	BMYPSH,X
		LDA	<WORK4
		STA	BMXPSL,X
		LDA	<WORK5
		STA	BMXPSH,X
		PHY
		JSL	>BMBCKL1
		PLY
		BCS	ITBC300
		INY
		INY
		DEC	<BMWORK+0
		BPL	ITBC100
;
		PLY
		CLC
		PLB
		RTL
;
ITBC300		EQU	$
		PLY
		SEC
		PLB
		RTL
;
;**************************************************************
;*		option  Y,X pos hani check sub	(PYHICK2)     *
;**************************************************************
PYHICK2		EQU	$
		PHB
		PHK
		PLB
;
		LDX	OPINDX+0
		LDA	OPYPSL,X
		STA	<WORK0
		LDA	OPYPSH,X
		STA	<WORK1
		LDA	OPXPSL,X
		STA	<WORK2
		LDA	OPXPSH,X
		STA	<WORK3
;
		STZ	<WORKB
		LDA	OPZPSL,X
		STA	<WORKA
		BPL	P2HI100
		LDA	#0FFH
		STA	<WORKB
P2HI100		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	<WORKA
		CLC
		ADC	#000CH
		STA	<WORK0
		LDA	<WORK2
		CLC
		ADC	#0008H
		STA	<WORK2
;
		LDA	#01568H
		SEC
		SBC	<WORK0
		BPL	P2HI200
		EOR	#0FFFFH
		INC	A
P2HI200		EQU	$
		CMP	#00018H
		BCS	P2HI400
;
		LDA	#01980H
		SEC
		SBC	<WORK2
		BPL	P2HI300
		EOR	#0FFFFH
		INC	A
P2HI300		EQU	$
		CMP	#00018H
		BCS	P2HI400
;
		MEM8
		SEP	#00100000B
		PLB
		SEC
		RTL
;
P2HI400		EQU	$
		MEM8
		SEP	#00100000B
		PLB
		CLC
		RTL
;
;
;**************************************************************
;*		OPTION move init. sub(OPINIT)(RAOPIT)(RAOPIT1)*
;**************************************************************
;;;;;;;;OPNODT		EQU	$
;;;;;;;;		BYTE	jjmov,jjwat,mesmv,monwt,mesm1
ITUSNDT1	EQU	$
		HEX	020,010,030,020
OPINIT		EQU	$
;;;;;;;;		PHB
;;;;;;;;		PHK
;;;;;;;;		PLB
;;;;;;;;		LDA	>OPMODE+0
;;;;;;;;		CMP	#mesmv
;;;;;;;;		BEQ	OPIN100
;;;;;;;;		CMP	#jjwat
;;;;;;;;		BEQ	OPIN060
;;;;;;;;;
;;;;;;;;		INC	A
;;;;;;;;		CMP	#edcod
;;;;;;;;		BNE	OPIN010
;;;;;;;;OPIN008		EQU	$
;;;;;;;;		LDA	#000H
;;;;;;;;		BRA	OPIN060
;;;;;;;;;
;;;;;;;;OPIN010		EQU	$
;;;;;;;;		LDY	#OPINIT-OPNODT-1
;;;;;;;;OPIN020		EQU	$
;;;;;;;;		CMP	!OPNODT,Y
;;;;;;;;		BNE	OPIN040
;;;;;;;;		CMP	#mesm1
;;;;;;;;		BEQ	OPIN008
;;;;;;;;		INC	A
;;;;;;;;		BRA	OPIN010
;;;;;;;;OPIN040		EQU	$
;;;;;;;;		DEY
;;;;;;;;		BPL	OPIN020
;;;;;;;;;
;;;;;;;;OPIN060		EQU	$
;;;;;;;;		STA	>OPMODE+0
;;;;;;;;		JSL	>OPTCBFST	; option chara chenge sub
;;;;;;;;		LDA	#OTIM1
;;;;;;;;		STA	OPMTIM
;;;;;;;;		BRA	OPIN080
;;;;;;;;;
RAOPIT		EQU	$
		PHB
		PHK
		PLB
OPIN080		EQU	$
		LDA	<PLYPS1
		STA	OPYPSL
		LDA	<PLYPS0
		STA	OPYPSH
		LDA	<PLXPS1
		STA	OPXPSL
		LDA	<PLXPS0
		STA	OPXPSH
		LDA	<PLMKCH		; muki set
		LSR	A
		STA	<WORK0
		LDY	<PLBGCKF
		LDA	!ITUSNDT1,Y	; BG uusenjuni set
		LSR	A
		LSR	A
		ORA	<WORK0
		STA	OPMUKI
;
		LDA	#OPTIM
		STA	OPINDX+3
		STZ	OPINDX+0
		STZ	OPINDX+4
		STZ	OPINDX+1
		STZ	OPJPTM
		STZ	<PYSPFG
;
OPIN100		EQU	$
		PLB
		RTL
;
RAOPIT1		EQU	$		; enmy set sub
		PHB
		PHK
		PLB
		PHX
;
		STZ	!OPNOSI
		LDA	ENYPSL,X
		CLC
		ADC	#0FAH
		STA	OPYPSL+0
		LDA	ENYPSH,X
		ADC	#0FFH
		STA	OPYPSH+0
		LDA	ENXPSL,X
		CLC
		ADC	#001H
		STA	OPXPSL+0
		LDA	ENXPSH,X
		ADC	#000H
		STA	OPXPSH+0
		LDY	<PLBGCKF
		LDA	!ITUSNDT1,Y	; BG uusenjuni set
		LSR	A
		LSR	A
		ORA	#001H
		STA	OPMUKI
;
		LDA	#OPTIM
		STA	OPINDX+3
		STZ	OPINDX+4
		STZ	OPINDX+0
		STZ	OPINDX+1
		STZ	OPJPTM
		STZ	<PYSPFG
		STZ	!OPNOSI
		LDA	#00H
		STA	>OPKYFG
;
		JSL	>OPPLSH		; option y,x,pos set
;
		PLX
		PLB
		RTL
;
;
;**************************************************************
;*		OPTION move sub			   (OPTNMV)   *
;**************************************************************
OPTNMV		EQU	$
		PHB
		PHK
		PLB
;		
		JSR	OPTION
;
		PLB
		RTL
;
;
;**************************************************************
;*		OPTION move sub			   (OPTNMV)   *
;*		0     0     0     0    0 0   0 0 -->(OPMUKI)  *
;*		kusa  asase swim  bog  pri   muki	      *
;**************************************************************
OPMVTBL		EQU	$
PRINCE		WORD	PRENMV		; princess move (1)
JJMOV0		WORD	JIJIMV		; jijii move	(2)
JJMOV1		WORD	JIJIWT		; jijii wait	(3)
JJMOV2		WORD	JIJIMV		; jijii move(sp)(4)
MESMOV		WORD	OPTN0C0		; messji move 0	(5)
PRINC1		WORD	PRENMV		; princess move (6)
KAJIY1		WORD	PRENMV		; kajiya ura    (7)
KAJIYA		WORD	PRENMV		; kajiya omote  (8)
HENOJI		WORD	PRENMV		; h ojisan move (9)
SARUMV		WORD	PRENMV		; saru move 	(A)
SARUWT		WORD	JIJIWT		; saru move 	(B)
TKRAMV		WORD	PRENMV		; takara bako move (C)
BKDNMV		WORD	PRENMV		; bomb move 	(D)
MESMV1		WORD	OPTN0C0		; messji move 1	(E)
EDCODE		EQU	$
;
nashi		EQU	000H
prnce		EQU	(PRINCE-OPMVTBL)/2+1
jjmov		EQU	(JJMOV0-OPMVTBL)/2+1
jjwat		EQU	(JJMOV1-OPMVTBL)/2+1
jjsmv		EQU	(JJMOV2-OPMVTBL)/2+1
mesmv		EQU	(MESMOV-OPMVTBL)/2+1
prnc1		EQU	(PRINC1-OPMVTBL)/2+1
kajy1		EQU	(KAJIY1-OPMVTBL)/2+1
kajya		EQU	(KAJIYA-OPMVTBL)/2+1
hnoji		EQU	(HENOJI-OPMVTBL)/2+1
monky		EQU	(SARUMV-OPMVTBL)/2+1
monwt		EQU	(SARUWT-OPMVTBL)/2+1
takar		EQU	(TKRAMV-OPMVTBL)/2+1
bakud		EQU	(BKDNMV-OPMVTBL)/2+1
mesm1		EQU	(MESMV1-OPMVTBL)/2+1
edcod		EQU	(EDCODE-OPMVTBL)/2+1
;
OPTIM		EQU	040H		; timer
OTIM		EQU	00DF3H		; (60s') jijii messeji wait time
OTIM1		EQU	006F9H		; (30s') ojisan messeji wait time
;
TMMESD		EQU	$
		BYTE	mesmv,hnoji,monky
TMMSTM		EQU	$
		WORD	OTIM,OTIM1,OTIM
TMMSNO		EQU	$
		WORD	MS_0044,MS_03F1,MS_0452
;
OPTION		EQU	$
		LDA	>OPMODE+0
		BNE	OPTN080
		RTS
;
OPTN080		EQU	$
		CMP	#mesm1
		BNE	OPTN084
		BRL	OPMSST		; messji set sub !!
;
OPTN084		EQU	$
		LDY	#TMMSTM-TMMESD-1
OPTN090		EQU	$
		LDA	>OPMODE+0
		CMP	!TMMESD,Y
		BEQ	OPTN0A0
		DEY
		BPL	OPTN090
		BRL	OPTN0E0
;
OPTN0A0		EQU	$
		LDA	<GAMEMD		; porzu ? [YES:OPTN0C0]
		BNE	OPTN0C0
;
		CPY	#002H		; saru shijoo omote check !!
		BNE	OPTN0B0
		LDA	<MPDTNO
		AND	#040H
		BNE	OPTN0C0
OPTN0B0		EQU	$
		MEM16
		REP	#00100000B
		DEC	OPMTIM
		BPL	OPTN0C0
;
		MEM8
		SEP	#00100000B
		JSL	>PLJTCK		; player jootai check !!
		BCS	OPTN0B4
		STZ	OPMTIM
		STZ	OPMTIM+1
		BRA	OPTN0C0
;
OPTN0B4		EQU	$
		MEM16
		REP	#00100000B
		PHY
		TYA
		AND	#00FFH
		ASL	A
		TAY
		LDA	!TMMSTM,Y
		STA	OPMTIM
		LDA	!TMMSNO,Y
		STA	!MSGENOL
		MEM8
		SEP	#00100000B
		JSL	>MESWIT
		PLY
;
OPTN0C0		EQU	$
		MEM8
		SEP	#00100000B
		CPY	#000H
		BNE	OPTN0E0
OPTN0D0		EQU	$
		RTS
;
OPTN0E0		EQU	$
		MEM8
		SEP	#00100000B
		LDA	>OPKYFG
		BEQ	OPTN0E2
		BRL	OPTN0F0
;
OPTN0E2		EQU	$
		LDA	>OPMODE+0	; bomb shori
		CMP	#takar
		BNE	OPTN0E22
		LDA	<DIEFG
		BNE	OPTN0E24
		BRA	OPTN0E4
;		
OPTN0E22	EQU	$
		LDA	>OPMODE+0
		CMP	#bakud
		BEQ	OPTN0E3
OPTN0E24	EQU	$
		BRL	OPTN0F4
OPTN0E3		EQU	$
		LDA	<DIEFG		; jump ?
		CMP	#002H
		BEQ	OPTN0E5
		LDA	<HOLEFG2	; hole ? 
		CMP	#002H
		BEQ	OPTN0E5
OPTN0E4		EQU	$
		LDA	<GAMEMD
		BNE	OPTN0E24
		LDA	<DIEFG		; teki atari ?
		CMP	#001H
		BEQ	OPTN0F4
;
		BIT	PYDMBT		; player had ?
		BMI	OPTN0F4		; 0 --> bpl 1 --> bmi
		LDA	!OPNOSI
		BNE	OPTN0F4
		LDA	OPINDX+1	; optoin move on ?
		BNE	OPTN0F4
		LDX	OPINDX+0
		LDA	OPZPSL,X	; jump ?
		BEQ	OPTN0E44
		BPL	OPTN0F4
;
OPTN0E44	EQU	$
		LDA	<KEYA2L
		AND	#10000000B
		BEQ	OPTN0F4
OPTN0E5		EQU	$
		LDA	>OPMODE+0
		CMP	#bakud
		BNE	OPTN0E6
		LDA	<GMMODE
		BNE	OPTN0E6
		LDA	<LNMODE
		CMP	#SDSP
		BEQ	OPTN0F4
		CMP	#BBSP
		BEQ	OPTN0F4
		CMP	#JNSP
		BEQ	OPTN0F4
		LDA	#03
		STA	!BMTMER
		LDA	#0BBH
		STA	!BMTMCT
OPTN0E6		EQU	$
		LDA	#080H
		STA	>OPKYFG
		LDA	#OPTIM
		STA	OPINDX+3
		LDX	OPINDX+0
		LDA	OPYPSL,X
		STA	>OPJIYP
		LDA	OPYPSH,X
		STA	>OPJIYP+1
		LDA	OPXPSL,X
		STA	>OPJIXP
		LDA	OPXPSH,X
		STA	>OPJIXP+1
		LDA	<PLBGCKF
		STA	>OPBGCKF
		LDA	<GMMODE
		STA	>OPCDFG
;
OPTN0F0		EQU	$
		BRL	PRENWT
;
OPTN0F4		EQU	$
		MEM8
		SEP	#00100000B
		LDA	!PYALSP
		BNE	OPTN0F6
		LDX	<SLMODE
		LDY	<GAMEMD
		CPY	#p1_ltwp
		BEQ	OPTN0F6
		CPX	#MD_gdply
		BNE	OPTN0F5
		CPY	#p2_kage
		BEQ	OPTN0F6
OPTN0F5		EQU	$
		CPX	#MD_etcpl
		BNE	OPTN0F8
		CPY	#p3_sitm	; start key on ?
		BEQ	OPTN0F6
		CPY	#p3_msge
		BNE	OPTN0F8
OPTN0F6		EQU	$
		BRL	OPTN400
;
OPTN0F8		EQU	$
		LDA	<PLYMVC		; move ? [NO:OPTN400]
		ORA	<PLXMVC
		BEQ	OPTN400
;
		LDX	OPINDX+4
		INX
		CPX	#014H
		BNE	OPTN100
		LDX	#000H
OPTN100		EQU	$
		STX	OPINDX+4
;
		LDA	<PLZPS1
		CMP	#0F0H
		BCC	OPTN200
		LDA	#000H
OPTN200		EQU	$
		STA	<WORK0
		STZ	<WORK1
;
		LDA	<WORK0
		STA	OPZPSL,X
;
		MEM16
		REP	#00100000B
		LDA	<PLYPS1
		SEC
		SBC	<WORK0
		STA	<WORK0
		MEM8
		SEP	#00100000B
;
		LDA	<WORK0
		STA	OPYPSL,X
		LDA	<WORK1
		STA	OPYPSH,X
		LDA	<PLXPS1
		STA	OPXPSL,X
		LDA	<PLXPS0
		STA	OPXPSH,X
		LDA	<PLMKCH		; muki set
		LSR	A
		STA	OPMUKI,X
		LDY	<PLBGCKF
		LDA	!ITUSNDT1,Y	; BG uusenjuni set
		LSR	A
		LSR	A
		ORA	OPMUKI,X
		STA	OPMUKI,X
		LDA	<LNMODE
		CMP	#SWMD
		BNE	OPTN240
		LDY	#00100000B	; swim flag set
		BRA	OPTN300
OPTN240		EQU	$
		CMP	#BOGN		; bogan ?
		BNE	OPTN260
		LDA	BOGMOV
		BEQ	OPTN260
		LDA	#00010000B
		ORA	OPMUKI,X
		STA	OPMUKI,X
OPTN260		EQU	$
		LDY	#10000000B	; kusa set
		LDA	ASWFLG
		BEQ	OPTN400
		CMP	#001H
		BEQ	OPTN300
		LDY	#01000000B	; asase set
OPTN300		EQU	$
		TYA
		ORA	OPMUKI,X
		STA	OPMUKI,X
;
OPTN400		EQU	$
		LDA	>OPMODE+0
		DEC	A
		ASL	A
		TAX
		JMP	(OPMVTBL,X)
OPTNF00		EQU	$
		RTS
;
;**************************************************************
;*		prencess move sub		   (PRENMV)   *
;**************************************************************
PRENMV		EQU	$
		LDA	!PYALSP
		BNE	PREN008
		LDX	<SLMODE
		LDY	<GAMEMD
		CPY	#p1_ltwp
		BEQ	PREN008
		CPX	#MD_gdply	; triforce ?
		BNE	PREN006
		CPY	#p2_kage
		BEQ	PREN008
PREN006		EQU	$
		CPX	#MD_etcpl
		BNE	PREN010
		CPY     #p3_sitm
		BEQ	PREN008
		CPY	#p3_msge
		BNE	PREN010
PREN008		EQU	$
		BRL	PREN400		; To oam set
;************** messji shori
PREN010		EQU	$
		JSR	OPMSST		; messji set sub !!
;************** saru kiki shori
		LDA	>OPMODE+0
		CMP	#monky
		BNE	PREN016
		LDA	<DIEFG
		BEQ	PREN016
		LDA	PYFLASH
		BEQ	PREN016
		LDA	OPINDX+0
		INC	A
		CMP	#014H
		BNE	PREN012
		LDA	#000H
PREN012		EQU	$
		JSL	>SARKKST2
		LDA	#000H
		STA	>OPMODE+0
		RTS
;
;************** musume 2 shori
PREN016		EQU	$
		LDA	>OPMODE+0
		CMP	#prnc1
		BNE	PREN018
		MEM16
		REP	#00100000B
		LDA	<RMXYCT
		CMP	#000ACH
		BNE	PREN018
		LDA	>DJNTBL+65H*2
		AND	#00100H
		BEQ	PREN018
		MEM8
		SEP	#00100000B
		JSL	>PYHICK2
		BCC	PREN018
		LDX	OPINDX+0
		LDA	OPXPSL,X
		STA	<WORK0
		LDA	OPXPSH,X
		STA	<WORK1
		LDA	OPYPSL,X
		STA	<WORK2
		LDA	OPYPSH,X
		STA	<WORK3
		LDA	#000H
		STA	>OPMODE+0
		JSL	>CTBOSST
		INC	!TRAPMD
		STZ	!DOPCPT
		STZ	!DOPNCT
		LDA	#p1_sdop
		STA	<GAMEMD
		LDA	#015H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0
		RTS
;
;************** fotshot shori
PREN018		EQU	$
		MEM8
		SEP	#00100000B
		LDY	<LNMODE
		LDA	OPINDX+1	; option move on ? [YES:PREN020]
		BNE	PREN020
;
		CPY	#BOGN		; fotshot ? [NO:PREN080]
		BNE	PREN080
		LDA	BOGMOV		; fotshot BG on ? [NO:PREN080]
		BEQ	PREN080
		LDA	#001H		; option move flag set
		STA	OPINDX+1
		BRA	PREN0E0
;
PREN020		EQU	$
		CPY	#BOGN		; fotshot move ? [YES:PREN0E0]
		BEQ	PREN0E0
		LDA	OPINDX+2	; player = option point ? [NO:PREN200]
		CMP	OPINDX+0
		BNE	PREN200
;
		STZ	OPINDX+1	; optoin move off !!
;
;************** jump shori
PREN080		EQU	$
		LDX	OPINDX+0
		LDA	OPZPSL,X	; jump ?
		BEQ	PREN0C0
		BMI	PREN0C0
		LDA	OPINDX+4
		CMP	OPINDX+0
		BNE	PREN200
		STZ	OPZPSL,X
		LDA	<PLYPS1
		STA	OPYPSL,X
		LDA	<PLYPS0
		STA	OPYPSH,X
		LDA	<PLXPS1
		STA	OPXPSL,X
		LDA	<PLXPS0
		STA	OPXPSH,X
;
;************** move shori
PREN0C0		EQU	$
		LDA	<PLYMVC		; player no move ?
		ORA	<PLXMVC
		BEQ	PREN400
;
PREN0E0		EQU	$
		LDA	OPINDX+4	; player pos
		SEC
		SBC	#00FH
		BPL	PREN100
		CLC
		ADC	#014H
PREN100		EQU	$
		CMP	OPINDX+0
		BNE	PREN400
PREN200		EQU	$
		LDX	OPINDX+0
		INX
		CPX	#014H
		BNE	PREN300
		LDX	#000H
PREN300		EQU	$
		STX	OPINDX+0
PREN400		EQU	$
		BRL	OPOMST		; option oam sub
;
PRENF00		EQU	$
		RTS
;
;**************************************************************
;*		prencess wait sub		   (PRENWT)   *
;**************************************************************
PRENWT		EQU	$
		LDA	>OPCDFG
		CMP	<GMMODE
		BNE	PRENF00
;
		LDA	DASHFG
		BNE	PRWT100
;
		JSR	OKTCHK		; option hani check !!
		BCS	PRWT100
		JSL	>RAOPIT
		LDA	<GMMODE
		STA	>OPCDFG
		LDA	>OPMODE+0
		CMP	#bakud
		BNE	PRWT080
;
		LDA	#0FEH
		STA	!BMTMER
		STZ	!BMTMCT
PRWT080		EQU	$
		LDA	#000H
		STA	>OPKYFG
		BRL	OPOMST		; option oam sub
;
PRWT100		EQU	$
		LDA	>OPMODE+0
		CMP	#bakud
		BNE	PRWT400
		LDA	<GMMODE
		BNE	PRWT400
		LDA	!BMTMER
		BNE	PRWT400
		LDY	#000H
		LDA	#OPBMV
		JSL	>OPBKINT
		LDA	#000H
		STA	>OPKYFG
PRWT400		EQU	$
		BRL	JIWT700		; option oam sub
;
;**************************************************************
;*		jijii move sub		   	   (JIJIMV)   *
;**************************************************************
OPMDT0		EQU	$
		BYTE	nashi,nashi,jjwat,jjwat,jjsmv,nashi,nashi,nashi
		BYTE	nashi,nashi,nashi,nashi,nashi,nashi,nashi
JIJIMV		EQU	$
		LDA	!PYALSP
		BNE	JIJI000
		LDX	<SLMODE
		LDY	<GAMEMD
		CPY	#p1_ltwp
		BEQ	JIJI000
		CPX	#MD_gdply
		BNE	JIMM900
		CPY	#p2_kage
		BEQ	JIJI000
JIMM900		EQU	$
		CPX	#MD_etcpl
		BNE	JIJI001
		CPY	#p3_sitm
		BEQ	JIJI000
		CPY	#p3_msge
		BNE	JIJI001
JIJI000		EQU	$
		BRL	JIJI400
;
JIJI001		EQU	$
		LDA	<PYSPFG
		CMP	#004H
		BEQ	JIJI002
;
		LDA	#00CH		; player speed set
		STA	<PYSPFG
;
;************** messege window shori
JIJI002		EQU	$
		JSR	OPMSST		; messji set sub !!
;
JIJI004		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		LDA	>OPMODE+0
		BNE	JIJI006
		RTS
JIJI006		EQU	$
		CMP	#jjsmv
		BNE	JIJI007
;
;************** jijii (sp) jump shori
JIJI0062	EQU	$
		LDX	OPINDX+0
		LDA	OPZPSL,X	; jump ?
		BEQ	JIJI0064
		BMI	JIJI0064
;
		LDA	OPINDX+0
		CMP	OPINDX+4
		BEQ	JIJI0064
		BRL	JIJI200
;
JIJI0064	EQU	$
		BRL	JIJI020
;
;************** jijii jump shori
JIJI007		EQU	$
		LDA	<DIEFG
		AND	#00000001B
		BEQ	JIJI008
		LDA	<LNMODE
		CMP	#JWMV
		BNE	JIJI008
		LDA	OPINDX+4
		CMP	OPINDX+0
		BNE	JIJI010
		DEX
		STX	OPINDX+0
		BPL	JIJI010
		LDA	#013H
		STA	OPINDX+0
JIJI008		EQU	$
		LDA	<DIEFG		; jump ? [NO:JIJI020]
		AND	#00000010B
		BEQ	JIJI020
JIJI010		EQU	$
		LDA	>OPMODE+0
		TAX
		LDA	!OPMDT0,X
		STA	>OPMODE+0
		LDA	#OPTIM
		STA	OPINDX+3
		LDX	OPINDX+0
		LDA	OPYPSL,X	; jiisan set
		STA	>OPJIYP
		LDA	OPYPSH,X
		STA	>OPJIYP+1
		LDA	OPXPSL,X
		STA	>OPJIXP
		LDA	OPXPSH,X
		STA	>OPJIXP+1
		LDA	<PLBGCKF
		STA	>OPBGCKF
		BRA	JIJIWT
;
;************** move shori
JIJI020		EQU	$
		LDA	<PLYMVC		; player no move ?
		ORA	<PLXMVC
		BNE	JIJI080
;
		LDA	<FCNT
		AND	#00000011B
		BNE	JIJI400
;
		LDA	OPINDX+4
		CMP	OPINDX+0
		BEQ	JIJI400
		SEC
		SBC	#009H
		BPL	JIJI040
		CLC
		ADC	#014H
JIJI040		EQU	$
		CMP	OPINDX+0
		BNE	JIJI200
		BRL	JIJI400
;
JIJI080		EQU	$
		LDA	OPINDX+4
		SEC
		SBC	#014H
		BPL	JIJI100
		CLC
		ADC	#014H
JIJI100		EQU	$
		CMP	OPINDX+0
		BNE	JIJI400
JIJI200		EQU	$
		LDX	OPINDX+0
		INX
		CPX	#014H
		BCC	JIJI300
		LDX	#000H
JIJI300		EQU	$
		STX	OPINDX+0
;
;************** aitem down shori
JIJI400		EQU	$
;;;;;;;;		LDA	<GAMEMD
;;;;;;;;		BNE	JIJI500
;;;;;;;;		LDA	>OPMODE
;;;;;;;;		CMP	#002H
;;;;;;;;		BNE	JIJI500
;;;;;;;;		LDY	#000H		; aitem set sub
;;;;;;;;		LDA	#NTATM
;;;;;;;;		JSL	>NTATIT
;;;;;;;;;
;************** option oam set
JIJI500		EQU	$
		BRL	OPOMST		; option oam sub
;
JIJIF00		EQU	$
		RTS
;
;**************************************************************
;*		jijii wait sub		   	   (JIJIWT)   *
;**************************************************************
OPMDT1		EQU	$
		BYTE	nashi,nashi,nashi,jjmov,nashi,nashi,nashi,nashi
		BYTE	nashi,nashi,nashi,nashi,nashi,nashi,nashi
JIJIWT		EQU	$
		LDA	#010H
		STA	<PYSPFG
		LDA	DASHFG
		BNE	JIWT700
;
		LDA	<DIEFG
		BNE	JIWT700
		LDA	<LNMODE
		CMP	#SWMD
		BEQ	JIWT700
;
		STZ	<PYSPFG
		LDA	<LNMODE
		CMP	#BOGN
		BEQ	JIWT700
;
		JSR	OKTCHK		; player hani check !!
		BCS	JIWT700
;
		JSL	>RAOPIT
		LDA	>OPMODE+0
		TAX
		LDA	!OPMDT1,X
		STA	>OPMODE+0
		RTS
;
JIWT700		EQU	$
		LDA	>OPBGCKF
		TAX
		CPX	<PLBGCKF
		BNE	JIWT800
		LDX	<PLBGCKF
JIWT800		EQU	$
		LDA	!ITUSNDT1,X
		STA	<PYBGUN1
		STZ	<PYBGUN
		LDA	>OPJIYP
		STA	<WORK0
		LDA	>OPJIYP+1
		STA	<WORK1
		LDA	>OPJIXP
		STA	<WORK2
		LDA	>OPJIXP+1
		STA	<WORK3
		LDX	#002H
		LDA	>OPMODE+0
		CMP	#bakud
		BEQ	JIWT900
		CMP	#takar
		BEQ	JIWT900
		LDX	#001H
JIWT900		EQU	$
		TXA
		BRL	OPOMWT
;
;**************************************************************
;*		option kutsuki check sub  	   (OKTCHK)   *
;**************************************************************
OKTCHK		EQU	$
		DEC	OPINDX+3
		BPL	OKTC400
		STZ	OPINDX+3
		MEM16
		REP	#00100000B
		LDA	>OPJIYP
		SEC
		SBC	#001H
		CMP	<PLYPS1
		BCS	OKTC400
		CLC
		ADC	#0014H		; Y-player > Y-option ? [YES:JIWT700]
		CMP	<PLYPS1
		BCC	OKTC400
;
		LDA	>OPJIXP
		SEC
		SBC	#001H
		CMP	<PLXPS1
		BCS	OKTC400
		CLC
		ADC	#0014H		; X-player > X-option ? [YES:JIWT700]
		CMP	<PLXPS1
		BCC	OKTC400
		MEM8
		SEP	#00100000B
		CLC
		RTS
;
OKTC400		EQU	$
		MEM8
		SEP	#00100000B
		SEC
		RTS
;
;**************************************************************
;*		OPTION messji set sub	  	   (OPMSST)   *
;**************************************************************
JIITBL		EQU	$		; room no table
		WORD	00F1H,0061H,0051H,0002H,00DBH,00ABH,0022H
JIIDATA		EQU	$
JID000		EQU	$
;			     y      x    bit     no   op no
		WORD	01EF0H,00288H,00001H,MS_0150,jjsmv
		WORD	01E58H,002F0H,00002H,MS_0151,jjsmv
		WORD	01EA8H,003B8H,00004H,MS_0152,jjsmv
JID001		EQU	$
		WORD	00CF8H,0025BH,00001H,MS_0045,prnce
		WORD	00CF8H,0039DH,00002H,MS_0045,prnce
		WORD	00C78H,00238H,00004H,MS_0045,prnce
JID002		EQU	$
		WORD	00A30H,002F8H,00001H,MS_0046,prnce
JID003		EQU	$
		WORD	00178H,00550H,00001H,MS_0047,prnce
		WORD	00168H,004F8H,00002H,MS_004E,prnce
JID004		EQU	$
		WORD	01BD8H,016FCH,00001H,MS_0462,prnc1
JID005		EQU	$
		WORD	01520H,0167CH,00001H,MS_0462,prnc1
JID006		EQU	$
		WORD	005ACH,004FCH,00001H,MS_004D,prnce
JID007		EQU	$
JIITBL1		EQU	$		; room no table
		WORD	00003H,0005EH,00000H
JIIDATA1	EQU	$
JIT000		EQU	$
;			     y      x    bit     no   op no
		WORD	003C0H,00730H,00001H,MS_0154,jjsmv
JIT001		EQU	$
		WORD	00648H,00F50H,00000H,MS_FFFF,monky
		WORD	006C8H,00D78H,00001H,MS_FFFF,monky
		WORD	00688H,00C78H,00002H,MS_FFFF,monky
JIT002		EQU	$
		WORD	000E8H,00090H,00000H,MS_004C,mesm1
JIT003		EQU	$
WINTBL		EQU	$		; danjon data
		WORD	JID000-JID000
		WORD	JID001-JID000
		WORD	JID002-JID000
		WORD	JID003-JID000
		WORD	JID004-JID000
		WORD	JID005-JID000
		WORD	JID006-JID000
		WORD	JID007-JID000
WINTBL1		EQU	$		; chijoo data
		WORD	JIT000-JIT000
		WORD	JIT001-JIT000
		WORD	JIT002-JIT000
		WORD	JIT003-JIT000
OPMSST		EQU	$
		LDA	<GAMEMD
		BNE	OPMS440
;
		MEM16
		IDX16
		REP	#00110000B
		LDY	#0000H
		LDA	<GMMODE
		AND	#000FFH
		BEQ	OPMS300		; danjyon ? [YES:
;
		INY
		LDX	#JIIDATA-JIITBL-2
		LDA	<RMXYCT
OPMS100		EQU	$
		CMP	!JIITBL,X
		BEQ	OPMS500
		DEX
		DEX
		BPL	OPMS100
		BRA	OPMS440
;
OPMS300		EQU	$
		LDX	#JIIDATA1-JIITBL1-2
		LDA	<MPDTNO
OPMS400		EQU	$
		CMP	!JIITBL1,X
		BEQ	OPMS700
		DEX
		DEX
		BPL	OPMS400
OPMS440		EQU	$
		BRL	OPMSC00
;
OPMS500		EQU	$
		LDA	!WINTBL+2,X
		STA	<WORK8
		LDA	!WINTBL,X
		TAX
OPMS600		EQU	$
		STX	<WORKC
		STZ	<WORKA
		LDA	>OPMODE+0
		AND	#00FFH
		CMP	!JIIDATA+8,X
		BNE	OPMS640
		LDA	!JIIDATA,X	; y-pos set
		STA	<WORK0
		LDA	!JIIDATA+2,X	; x-pos set
		STA	<WORK2
		LDA	!JIIDATA+4,X	; messji no set
		STA	<WORK6
		LDA	!JIIDATA+6,X	; on bit set
		STA	<WORK4
		MEM8
		IDX8
		SEP	#00110000B
		JSR	PYHICK3		; hani check
		BCS	OPMS900
		MEM16
		IDX16
		REP	#00110000B
OPMS640		EQU	$
		LDA	<WORKC
		CLC
		ADC	#000AH
		TAX
		CPX	<WORK8
		BNE	OPMS600
		BRL	OPMSC00
;
OPMS700		EQU	$
		LDA	!WINTBL1+2,X
		STA	<WORK8
		LDA	!WINTBL1,X
		TAX
OPMS800		EQU	$
		STX	<WORKC
		STZ	<WORKA
		LDA	>OPMODE+0
		AND	#00FFH
		CMP	!JIIDATA1+8,X
		BNE	OPMS840
		LDA	!JIIDATA1,X	; y-pos set
		STA	<WORK0
		LDA	!JIIDATA1+2,X	; x-pos set
		STA	<WORK2
		LDA	!JIIDATA1+4,X	; on bit set
		STA	<WORK6
		LDA	!JIIDATA1+6,X	; messeji no set
		STA	<WORK4
		MEM8
		IDX8
		SEP	#00110000B
		JSR	PYHICK3		; hani check
		BCS	OPMS900
		MEM16
		IDX16
		REP	#00110000B
OPMS840		EQU	$
		LDA	<WORKC
		CLC
		ADC	#000AH
		TAX
		CPX	<WORK8
		BNE	OPMS800
		BRA	OPMSC00
OPMS900		EQU	$
		IDX8
		SEP	#00010000B
		MEM16
		REP	#00100000B
		LDA	!OPMSFG
		AND	<WORK6
		BNE	OPMSC00
		LDA	<WORK6
		TSB	!OPMSFG
;
		LDA	<WORK4
		STA	!MSGENOL
		CMP	#MS_FFFF
		BEQ	OPMSB40
		CMP	#MS_0154
		BEQ	OPMS940
		CMP	#MS_004C
		BNE	OPMSB00
		MEM8
		SEP	#00100000B
		LDA	#000H
		STA	>OPMODE+0
		BRA	OPMSB00
;
OPMS940		EQU	$
		MEM8
		SEP	#00100000B
		LDA	OPINDX+0
		INC	A
		CMP	#014H
		BNE	OPMSA00
		LDA	#000H
OPMSA00		EQU	$
		JSL	>HELP1ST	; enmy set (jijii set)
OPMSB00		EQU	$
		MEM8
		SEP	#00100000B
		JSL	>MESWIT
		BRA	OPMSC00
;
OPMSB40		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		LDA	OPINDX+0
		INC	A
		CMP	#014H
		BNE	OPMSB80
		LDA	#000H
OPMSB80		EQU	$
		PHA
		LDA	<WORK6
		AND	#00000011B
		BNE	OPMSBC0
		PLA
		JSL	>SARKKST	; saru sinden open !!
		BRA	OPMSC00
;
OPMSBC0		EQU	$
		PLA
		STA	<WORK0
		LDX	<MPDTNO
		LDA	>GNDTBL,X	; table on ? [YES:OPMSC00]
		AND	#00000001B
		BNE	OPMSC00
		LDA	<WORK0
		JSL	>SARKKST1	; saru messji sub

OPMSC00		EQU	$
		MEM8
		IDX8
		SEP	#00110000B
		RTS
;
;**************************************************************
;*		OPTION oam set sub	  	   (OPOMST)   *
;**************************************************************
OPVMDT		EQU	$
;			  H   B   A
		HEX	020,0C0,000	; up
		HEX	000,0A0,000	; down
		HEX	040,060,000	; left
		HEX	040,060,044	; right
		HEX	020,0C0,004	; up'
		HEX	000,0A0,004	; down'
		HEX	040,080,000	; left'
		HEX	040,080,044	; right'
;
		HEX	020,0E0,000	; swim up
		HEX	000,0E0,000	; swim down
		HEX	040,0E0,000	; swim left
		HEX	040,0E0,044	; swim right
		HEX	020,0E0,004	; swim up'
		HEX	000,0E0,004	; swim down'
		HEX	040,0E0,004	; swim left'
		HEX	040,0E0,040	; swim right'
OPYXDT		EQU	$		; garl
;				 head          body
;			     y	    x	   y	  x
		WORD	0FFFEH,00000H,00000H,00000H	;up
		WORD	0FFFEH,00000H,00000H,00000H	;down
		WORD	0FFFEH,00000H,00000H,00000H	;left
		WORD	0FFFEH,00000H,00000H,00000H	;right
		WORD	0FFFFH,00000H,00001H,00000H	;up'
		WORD	0FFFFH,00000H,00001H,00000H	;down'
		WORD	0FFFFH,00000H,00001H,00000H	;left'
		WORD	0FFFFH,00000H,00001H,00000H	;right'
;
		WORD	00000H,00000H,00000H,00000H	;swim up
		WORD	00000H,00000H,00000H,00000H	;swim down
		WORD	00000H,00000H,00000H,00000H	;swim left
		WORD	00000H,00000H,00000H,00000H	;swim right
		WORD	00001H,00000H,00000H,00000H	;swim up'
		WORD	00001H,00000H,00000H,00000H	;swim down'
		WORD	00001H,00000H,00000H,00000H	;swim left'
		WORD	00001H,00000H,00000H,00000H	;swim right'
;			     y	    x	   y	  x	; jijii data
		WORD	00000H,00000H,00000H,00000H	;up
		WORD	00000H,00000H,00000H,00000H	;down
		WORD	00000H,0FFFDH,00000H,00000H	;left
		WORD	00000H,00003H,00000H,00000H	;right
		WORD	00001H,00000H,00000H,00000H	;up'
		WORD	00001H,00000H,00000H,00000H	;down'
		WORD	00001H,0FFFDH,00001H,00000H	;left'
		WORD	00001H,00003H,00001H,00000H	;right'
;							; kajiya data
		WORD	00000H,00000H,00000H,00000H	;up
		WORD	00000H,00000H,00000H,00000H	;down
		WORD	00000H,00000H,00000H,00000H	;left
		WORD	00000H,00000H,00000H,00000H	;right
		WORD	00000H,00000H,00001H,00000H	;up'
		WORD	00000H,00000H,00001H,00000H	;down'
		WORD	00000H,00000H,00001H,00000H	;left'
		WORD	00000H,00000H,00001H,00000H	;right'
;							; hen na ojisan
		WORD	0FFFFH,00000H,00000H,00000H	;up
		WORD	0FFFFH,00000H,00000H,00000H	;down
		WORD	0FFFFH,00000H,00000H,00000H	;left
		WORD	0FFFFH,00000H,00000H,00000H	;right
		WORD	00000H,00000H,00001H,00000H	;up'
		WORD	00000H,00000H,00001H,00000H	;down'
		WORD	00000H,00000H,00001H,00000H	;left'
		WORD	00000H,00000H,00001H,00000H	;right'
;							; bakudan,box
		WORD	00000H,00000H,00000H,00000H	;up
		WORD	00000H,00000H,00000H,00000H	;down
		WORD	00000H,00000H,00000H,00000H	;left
		WORD	00000H,00000H,00000H,00000H	;right
		WORD	00000H,00000H,00000H,00000H	;up'
		WORD	00000H,00000H,00000H,00000H	;down'
		WORD	00000H,00000H,00000H,00000H	;left'
		WORD	00000H,00000H,00000H,00000H	;right'
;							; saru
		WORD	00002H,00000H,00000H,00000H	;up
		WORD	00002H,00000H,00000H,00000H	;down
		WORD	00002H,0FFFFH,00000H,00000H	;left
		WORD	00002H,00001H,00000H,00000H	;right
		WORD	00003H,00000H,00001H,00000H	;up'
		WORD	00003H,00000H,00001H,00000H	;down'
		WORD	00003H,0FFFFH,00001H,00000H	;left'
		WORD	00003H,00001H,00001H,00000H	;right'
;
OPPSID		EQU	$
		WORD	00000H,00000H,00080H,00080H
		WORD	00080H,00000H,00000H,000C0H
		WORD	000C0H,00100H,00180H,00180H
		WORD	00140H,00140H
;
OPKGCR		EQU	$
		WORD	024D8H,064D8H	; asase walk (0)
		WORD	024D9H,064D9H	; asase walk (1)
		WORD	024DAH,064DAH	; asase walk (2)
		WORD	022C8H,062C8H	; kusa (0)
		WORD	022C9H,062C9H	; kusa (1)
		WORD	022CAH,062CAH	; kusa (2)
OPUPPT		EQU	$	; option up oam point data
		WORD	00170H,000C0H
OPDNPT		EQU	$	; option down oam point data
		WORD	001C0H,00110H
OPCOLR		EQU	$
		HEX	000,004,004,004,004,000,007,004
		HEX	004,003,004,004,004,004
;
;*************** OAM set
OPOMST		EQU	$
		LDA	!OPNOSI		; option shouji nashi set
		BEQ	OPOM010
OPOM008		EQU	$
		RTS
;
OPOM010		EQU	$
		PHX
		PHY
		LDX	OPINDX+0
		LDA	OPZPSL,X	; jump ?
		BEQ	OPOM020
		LDA	<GMMODE
		BNE	OPOM020
		LDA	#020H
		BRA	OPOM040
;
OPOM020		EQU	$
		LDA	<GAMEMD
		CMP	#p1_kstp	; rasen kaidan ? [NO:OPOM030]
		BNE	OPOM030
		LDY	<PLBGCKF
		LDA	!ITUSNDT1,Y
		BRA	OPOM040
OPOM030		EQU	$
		LDA	OPMUKI,X
		AND	#00001100B
		ASL	A
		ASL	A
OPOM040		EQU	$
		STA	<PYBGUN1
		STZ	<PYBGUN
;
		LDX	OPINDX+0
		BPL	OPOM080
		LDX	#000H
;
OPOM080		EQU	$
		LDA	OPYPSL,X
		STA	<WORK0
		LDA	OPYPSH,X
		STA	<WORK1
		LDA	OPXPSL,X
		STA	<WORK2
		LDA	OPXPSH,X
		STA	<WORK3
		LDA	OPMUKI,X
		BRA	OPOM0C0
;
OPOMWT		EQU	$
		PHX
		PHY
OPOM0C0		EQU	$
		STA	<WORK5
		AND	#00100000B
		LSR	A
		LSR	A
		TAY
		LDA	<WORK5
		AND	#00000011B
		STA	<WORK4
		STZ	<BMWORK+0
;
		CPY	#008H		; swim ? [NO:OPOM0C02]
		BNE	OPOM0C02
		LDY	#000H
		LDA	>OPMODE
		CMP	#prnc1
		BEQ	OPOM0C08
		CMP	#prnce
		BNE	OPOM0C02
OPOM0C08	EQU	$
		LDY	#008H
		LDA	SWKASY
		ORA	SWKASY+1
		ORA	SWKASX
		ORA	SWKASX+1
		BEQ	OPOM0C01
		LDA	<FCNT
		AND	#00001000B
		LSR	A
		BRA	OPOM0C2
OPOM0C01	EQU	$
		LDA	<FCNT
		AND	#00010000B
		LSR	A
		LSR	A
		BRA	OPOM0C2
OPOM0C02	EQU	$
		LDA	<GAMEMD
		CMP	#p1_kstp	; rasen kaidan ? [YES:OPOM0C04]
		BEQ	OPOM0C04
		CMP	#p1_mcng	; auto kaidan ? [YES:OPOM0C04]
		BEQ	OPOM0C04
		CMP	#p1_mcg1	; auto kaidan ? [YES:OPOM0C04]
		BEQ	OPOM0C04
		LDA	>OPMODE
		CMP	#monwt
		BEQ	OPOM0C1
		CMP	#bakud
		BEQ	BAKDC000
		CMP	#takar
		BNE	OPOM0C020
BAKDC000	EQU	$
		LDA	>OPKYFG
		BNE	OPOM0C03
;
OPOM0C020	EQU	$
		LDA	!PYALSP
		BNE	OPOM0C03
		LDA	<GAMEMD
		CMP	#p1_ltwp
		BEQ	OPOM0C03
		LDA	<SLMODE
		CMP	#MD_gdply
		BNE	OPOM0C021
		LDA	<GAMEMD
		CMP	#p2_kage
		BEQ	OPOM0C03
OPOM0C021	EQU	$
		LDA	<SLMODE
		CMP	#MD_etcpl
		BNE	OPOM0C022
		LDA	<GAMEMD
		CMP	#p3_sitm
		BEQ	OPOM0C03
		CMP	#p3_msge
		BEQ	OPOM0C03
OPOM0C022	EQU	$
		LDA	<PLYMVC		; stop ? [NO:OPOM0C04]
		ORA	<PLXMVC
		BNE	OPOM0C04
OPOM0C03	EQU	$
		LDA	#004H
		STA	<BMWORK+0
		BRA	OPOM0C2
OPOM0C04	EQU	$
		LDA	DASHFG		; dash ? [NO:OPOM0C1]
		BEQ	OPOM0C1
		LDA	<FCNT
		AND	#00000100B
		BRA	OPOM0C2
OPOM0C1		EQU	$
		LDA	<FCNT
		AND	#00001000B
		LSR	A
OPOM0C2		EQU	$
		CLC
		ADC	<WORK4
		STA	<WORK4
		TYA
		CLC
		ADC	<WORK4
		STA	<WORK4
;
		MEM16
		REP	#00100000B
		LDA	OAMTYP
		AND	#00FFH
		ASL	A
		TAY
		LDA	<PLYPS1
		CMP	<WORK0
		BEQ	OPOM0C24
		BCS	OPOM0C4
		BRA	OPOM0C3
OPOM0C24	EQU	$
		LDA	<WORK5		; muki check !!
		AND	#00000011B
		BNE	OPOM0C4
OPOM0C3		EQU	$
		LDA	!OPUPPT,Y
		BRA	OPOM0C8
OPOM0C4		EQU	$
		LDA	!OPDNPT,Y
;
OPOM0C8		EQU	$
		PHA
		LSR	A
		LSR	A
		CLC
		ADC	#OAMSB
		STA	<OSBADR
;
		PLA
		CLC
		ADC	#OAM
		STA	<OAMADR
;
		LDA	<WORK0
		SEC
		SBC	<SCCV2
		STA	<WORK6
		LDA	<WORK2
		SEC
		SBC	<SCCH2
		STA	<WORK8
		MEM8
		SEP	#00100000B
;
		LDY	#000H
		LDX	#000H
		LDA	>OPMODE
		CMP	#prnce
		BEQ	OPOM0CC
		CMP	#prnc1
		BEQ	OPOM0CC
		LDA	<WORK5
		AND	#00100000B
		BEQ	OPOM0CC
		BRA	OPOM0D0
OPOM0CC		EQU	$
		LDA	<WORK5
		AND	#11000000B
		BNE	OPOM0CE
		BRL	OPOM0E0
OPOM0CE		EQU	$
		LDA	<WORK5
		AND	#10000000B
		BNE	OPOM0D0
		LDX	#00CH
		LDA	<BMWORK+0
		BEQ	OPOM0D0	
		LDA	#000H
		BRA	OPOM0D2
;
OPOM0D0		EQU	$
		LDA	<FCNT
		AND	#00000111B
		BNE	OPOM0D4
		LDA	OPKGMD
		INC	A
		CMP	#003H
		BNE	OPOM0D2
		LDA	#000H
OPOM0D2		EQU	$
		STA	OPKGMD
OPOM0D4		EQU	$
		LDA	OPKGMD
		ASL	A
		ASL	A
		STA	<WORK5
		TXA
		CLC
		ADC	<WORK5
		TAX
		MEM16
		REP	#00100000B
		LDA	<WORK6
		CLC
		ADC	#0010H
		STA	<WORK0
		LDA	<WORK8
		STA	<WORK2
		STZ	<BMWORK+2
		MEM8
		SEP	#00100000B
		JSR	BMYXST5
		LDA	!OPKGCR,X
		STA	(<OAMADR),Y
		INY
		LDA	!OPKGCR+1,X
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
		ORA	<BMWORK+3
		STA	(<OSBADR),Y
		PLY
		MEM16
		REP	#00100000B
		LDA	<WORK2
		CLC
		ADC	#0008H
		STA	<WORK2
		STZ	<BMWORK+2
		MEM8
		SEP	#00100000B
		JSR	BMYXST5
		LDA	!OPKGCR+2,X
		STA	(<OAMADR),Y
		INY
		LDA	!OPKGCR+3,X
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
		ORA	<BMWORK+3
		STA	(<OSBADR),Y
		PLY
;
OPOM0E0		EQU	$
		LDA	>OPMODE+0	; option coler set
		TAX
		LDA	!OPCOLR,X
		CMP	#007H
		BNE	OPOM0E2
		TAX
		LDA	!PCGCKF
		BEQ	OPOM0E1
		LDX	#000H
OPOM0E1		EQU	$
		TXA
OPOM0E2		EQU	$
		ASL	A
		STA	<BMWORK+0
		LDA	>OPMODE+0
		CMP	#bakud
		BNE	OPOM0E4
		LDA	!BMTMER
		CMP	#001H
		BNE	OPOM0E4
		LDA	<FCNT
		AND	#00000111B
		ASL	A
		STA	<BMWORK+0
;
OPOM0E4		EQU	$
		LDA	>OPMODE+0
		CMP	#bakud
		BEQ	OPOM0E8
		CMP	#takar
		BEQ	OPOM0E8
		MEM16
		IDX16
		REP	#00110000B
		PHY
		LDA	<WORK4
		AND	#00FFH
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	>OPMODE+0
		AND	#00FFH
		ASL	A
		TAX
		TYA
		CLC
		ADC	!OPPSID,X
		TAX
		LDA	!OPYXDT+0,X
		CLC
		ADC	<WORK6
		STA	<WORK0
		LDA	!OPYXDT+2,X
		CLC
		ADC	<WORK8
		STA	<WORK2	
		PLY
		MEM8
		IDX8
		SEP	#00110000B
;
		JSR	BMYXST5
;
		LDA	#020H
		STA	(<OAMADR),Y
		INY
		LDA	<WORK4
		ASL	A
		CLC
		ADC	<WORK4
		TAX
		LDA	!OPVMDT+0,X
		STA	!OPTHPT
;
		LDA	!OPVMDT+2,X
		AND	#0F0H
		ORA	<BMWORK+0
		ORA	<PYBGUN1
		STA	(<OAMADR),Y
		INY
		PHY
		TYA
		SEC
		SBC	#004H
		LSR	A
		LSR	A
		TAY
		LDA	#002H
		ORA	<BMWORK+3
		STA	(<OSBADR),Y
		PLY
;
OPOM0E8		EQU	$
		MEM16
		IDX16
		REP	#00110000B
		PHY
		LDA	<WORK4
		AND	#00FFH
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	>OPMODE+0
		AND	#00FFH
		ASL	A
		TAX
		TYA
		CLC
		ADC	!OPPSID,X
		TAX
		LDA	!OPYXDT+4,X
		CLC
		ADC	<WORK6
		CLC
		ADC	#008H
		STA	<WORK0		
		LDA	!OPYXDT+6,X
		CLC
		ADC	<WORK8
		STA	<WORK2
		PLY
		MEM8
		IDX8
		SEP	#00110000B
;
		JSR	BMYXST5
;
		LDA	#022H
		STA	(<OAMADR),Y
		INY
		LDA	<WORK4
		ASL	A
		CLC
		ADC	<WORK4
		TAX
		LDA	!OPVMDT+1,X
		STA	!OPTBPT
		LDA	!OPVMDT+2,X
		AND	#00FH
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ORA	<BMWORK+0
		ORA	<PYBGUN1
		STA	(<OAMADR),Y
		INY
;
		TYA
		SEC
		SBC	#004H
		LSR	A
		LSR	A
		TAY
		LDA	#002H
		ORA	<BMWORK+3
		STA	(<OSBADR),Y
;
		PLY
		PLX
		RTS
;
;**************************************************************
;*		beam Y,X pos oam set		(BMYXST5)     *
;**************************************************************
BMYXST5		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK2
		STA	(<OAMADR),Y
		INY
		CLC
		ADC	#080H
		CMP	#0180H
		BCS	BM4S0C0
;
		LDA	<WORK2
		AND	#0100H
		STA	<BMWORK+2
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		CLC
		ADC	#0010H
		CMP	#0100H
		BCC	BM4S100
BM4S0C0		EQU	$
		LDA	#00F0H
		STA	(<OAMADR),Y
BM4S100		EQU	$
		MEM8
		SEP	#00100000B
		INY
		RTS
;
;**************************************************************
;*		beam Y,X pos oam set		(PYHICK3)    *
;**************************************************************
PYHICK3		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK0
		CLC
		ADC	<WORKA
		CLC
		ADC	#00008H
		STA	<WORK0
		LDA	<WORK2
		CLC
		ADC	#00008H
		STA	<WORK2
;
		LDA	<PLYPS1
		CLC
		ADC	#0000CH
		SEC
		SBC	<WORK0
		BPL	P3HI200
		EOR	#0FFFFH
		INC	A
P3HI200		EQU	$
		CMP	#0001CH
		BCS	P3HI400
;
		LDA	<PLXPS1
		CLC
		ADC	#0000CH
		SEC
		SBC	<WORK2
		BPL	P3HI300
		EOR	#0FFFFH
		INC	A
P3HI300		EQU	$
		CMP	#00018H
		BCS	P3HI400
;
		MEM8
		SEP	#00100000B
		SEC
		RTS
;
P3HI400		EQU	$
		MEM8
		SEP	#00100000B
		CLC
		RTS
;
;**************************************************************
;*		beam clear sub 		 	   (BMCLER)   *
;**************************************************************
BMCLER		EQU	$
		PHB
		PHK
		PLB
;
;
BMCL040		EQU	$
		LDX	#005H
BMCL100		EQU	$
		LDA	BMMODE,X
		CMP	#PORIG
		BNE	BMCL110
		TXY
		BRA	BMCL120
BMCL110		EQU	$
		LDA	BMMODE,X
		CMP	#BOLMV
		BNE	BMCL120
		STZ	!SWCHF1		; swishi on 
		LDA	<HANIFG1
		AND	#10000000B
		BEQ	BMCL120
		STZ	<HANIFG1
		STZ	<PYSPFG
BMCL120		EQU	$
		LDA	PYDMBT
		BPL	BMCL140
		TXA
		INC	A
		CMP	BMCHOK
		BEQ	BMCL180
		BRA	BMCL160
BMCL140		EQU	$
		TXA
		INC	A
		CMP	BMCHOK
		BNE	BMCL160
		STZ	BMCHOK
BMCL160		EQU	$
		STZ	BMMODE,X
BMCL180		EQU	$
		DEX
		BPL	BMCL100
;
		LDA	AITMBT1
		AND	#00010000B
		BEQ	BMCL1A0
		STZ	<HANEFG
		STZ	AITMBT1
BMCL1A0		EQU	$
;;;;;;;;;		LDA	<KENKY
;;;;;;;;;		AND	#10111111B
;;;;;;;;;		STA	<KENKY
		STZ	WRAFLM
		STZ	OPMSFG
		STZ	OPMSFG+1
		STZ	BMRMOV		; bumeran move flag clear
		STZ	DOKATA
		STZ	MRTKFG
		STZ	TRCACH
		STZ	PIPIFG
;
BMCL1C0		EQU	$
		LDA	<LNMODE
		CMP	#BOGN
		BNE	BMCL200
		LDA	#LNMD		; bogan clear
		STA	<LNMODE
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		LDA	<PYMKFG
		AND	#11111110B
		STA	<PYMKFG
		LDA	AITMBT1
		AND	#11111011B
		STA	AITMBT1
		STZ	BOGMOV
BMCL200		EQU	$
		PLB
		RTL
;
;**************************************************************
;*		option clear sub   		 (BMCLER2)   *
;**************************************************************
BMCLER2		EQU	$
		LDA	>OPMODE+0
		CMP	#monky
		BEQ	BM2CL08
		CMP	#hnoji
		BNE	BM2CL10
BM2CL08		EQU	$
		LDA	#000H
		STA	>OPMODE+0
BM2CL10		EQU	$
		RTL
;
;**************************************************************
;*		beam y,x set sub   		 (BMSTSB1)   *
;**************************************************************
BMSTSB1		EQU	$
		LDA	<WORK0
		STA	BMYPSL,X
		LDA	<WORK1
		STA	BMYPSH,X
		LDA	<WORK2
		STA	BMXPSL,X
		LDA	<WORK3
		STA	BMXPSH,X
		RTS
;
;**************************************************************
;*		beam y,x set sub   		 (BMSTSB2)   *
;**************************************************************
BMSTSB2		EQU	$
		LDA	BMYPSL,X
		STA	<WORK0
		LDA	BMYPSH,X
		STA	<WORK1
		LDA	BMXPSL,X
		STA	<WORK2
		LDA	BMXPSH,X
		STA	<WORK3
		RTS
;
;**************************************************************
;*		boal shometsu init.		 (BALBKIT)    *
;**************************************************************
BALBKIT		EQU	$
		PHB
		PHK
		PLB
		LDA	#BOLM2
		STA	BMMODE,X
		PHX	
		TAX
		LDA	>BMITOC-1,X
		PLX
		STA	BMOMNO,X
		LDA	#003H
		STA	BMFLFG,X
		STZ	BMSTAT,X	; damegi count
		STZ	BMCONT,X
		STZ	BUMFLM,X
		STZ	BUMODE,X
		STZ	BMDEFG,X
		STZ	BMCRFG,X
		STZ	!SWCHF1		;swishi off
		JSL	>SDLRCB
		ORA	#001H
		STA	SOUND3
		PLB
		RTL
;
;**************************************************************
;*		coin count sub			(CINCNS)     *
;**************************************************************
CONMID		EQU	$
		HEX	001,005,014,064,032
CINCNS		EQU	$
		PHB
		PHK
		PLB
;
		LDA	BMCONT,X
		CMP	#034H		; coin ?
		BEQ	CINC300
		CMP	#035H
		BEQ	CINC300
		CMP	#036H
		BEQ	CINC300
		CMP	#040H
		BEQ	CINC200
		CMP	#041H
		BEQ	CINC200
		CMP	#046H
		BEQ	CINC100
		CMP	#047H
		BNE	CINC600
;
CINC100		EQU	$		; coin set
		LDY	#002H
		CMP	#047H
		BEQ	CINC400
		LDA	#02CH
		STA	<WORK0
		LDA	#001H
		STA	<WORK1
		BRA	CINC500
;
CINC200		EQU	$		; coin set
		SEC
		SBC	#040H
		CLC
		ADC	#003H
		TAY
		BRA	CINC400

CINC300		EQU	$		; coin set
		SEC
		SBC	#034H
		TAY
CINC400		EQU	$
		LDA	!CONMID,Y
		STA	<WORK0
		STZ	<WORK1
CINC500		EQU	$
		MEM16
		REP	#00100000B
		LDA	>CONCNT
		CLC
		ADC	<WORK0
		STA	>CONCNT
		MEM8
		SEP	#00100000B
		SEC
		PLB
		RTL
;
CINC600		EQU	$
		CLC
		PLB
		RTL
;
;**************************************************************
;*		kaiten beam clear sub	        (KNBMCLR)     *
;**************************************************************
KNBMCLR		EQU	$
		PHX
		LDX	#004H
KNBM100		EQU	$
		LDA	BMMODE,X
		CMP	#KNSOM
		BEQ	KNBM200
		CMP	#KNSEN
		BEQ	KNBM200
		CMP	#SBAMV
		BEQ	KNBM200
		CMP	#BRSEN
		BEQ	KNBM200
		CMP	#SODMV
		BEQ	KNBM200
		CMP	#SPBMV
		BEQ	KNBM200
		CMP	#JPKM0
		BNE	KNBM300
KNBM200		EQU	$
		STZ	BMMODE,X
KNBM300		EQU	$
		DEX
		BPL	KNBM100
		PLX
		RTL
;
;**************************************************************
;*		run dash kemuri move 		      (RNDSKM)*
;**************************************************************
RNKMCD		EQU	$
		HEX	0A9,0CF,0DF
RNDSKM		EQU	$
		PHB
		PHK
		PLB
		LDA	BMTIM0,X
		BNE	RNDS100
		LDA	#003H
		STA	BMTIM0,X
		INC	BMCONT,X
		LDA	BMCONT,X
		CMP	#003H
		BNE	RNDS100
		STZ	BMMODE,X
		BRA	RNDS200
;
RNDS100		EQU	$
		LDA	<PLMKCH
		CMP	#002H
		BNE	RNDS140
		LDA	#4*1
		JSL	>OAMENT2
RNDS140		EQU	$
		JSL	>ITMPSTL
		PHX
		LDA	BMCONT,X
		TAX
		LDY	#000H
		JSL	>BMYXST31
		LDA	!RNKMCD,X
		STA	(<OAMADR),Y
		INY
		LDA	#00000100B
		ORA	<PYBGUN1
		STA	(<OAMADR),Y
		LDA	#000H
		STA	(<OSBADR)
		PLX
;
RNDS200		EQU	$
		PLB
		RTL
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
