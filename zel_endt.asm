;
        	INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3		1989.09.05(TUE)
;1991 5/28
;--------------------------------------------------------------------
;
		ORG	09AE40H
;
;=============================================== (zel_enmy) =========
		EXT	BGDTRD2,EXBCHK2,ENRMCL,ENEMY,RNDSET,ITMGET,CGFLSH
		EXT	ENCRST2,OAMENT1,OAMENT2,ENMDST 
		EXT	CROJCK2,ENDMST,ENDMST2,OAMENT3,OAMENT6
		EXT	OAMENT4,ENIDSH2,PSERC2L
		EXT	EINIT,EMOVE,EICE,ECACH
		EXT	ENENSET,EBAKU,ENMY4
		EXT	ENMDD5,SETOAML2,ENMOVE2
		EXT	NOMOSCT,SETOAML22,BOMBST
;--- Enmyno --
		EXT	TTN01,SKL01,SKHED,MOTS0,UTUWA,AYASI
		EXT	OCTA1,OCTA2,OCTA3,OCTBL,SLIME
		EXT	NYORO,SDEMO 
		EXT	KWAUS,KWAU1,SHIGE,KAJIY,SEKZ4
		EXT	REBA1,JIJII,BABAA,HEITI,BMBST,KTOBJ
		EXT	NOKOG,PENKI,KUTUU,MEIR0,MEIR1,HEIT1
		EXT	NOPPO,PLHIK,ONNAA,HIGEE,MAJOO,JIJI2,KIANA,BUBUU,BARI0
		EXT	MURON,MURYA,BABA1,ESW02,ESW03,ISHI0,HEIS0,TEKU0,TAIHO
		EXT	HEIS1,HEIS2,HEYA0,HEYA1,HEYA2,NEZU0,HEBI0,KOMO0
		EXT	MONOR,OOISU,HEBO0,OYAGI,HEIS3
		EXT	ZAKO0,HEYA3,KAGI0,HESET,HANA0,HANA1,USAG0,SUNA0,NIWAT
		EXT	DOOOR,TAMA0,BOUSI,HELP0,SYOBY,DOZOO,ESW12,ZORAS,SEKMV
		EXT	NOMOS,RANEM,KINOK,SUKAS,MJSY1,BABUL,JITON,BIGBL,ZORAB
		EXT	ZORA2,NL777,KANI0,ATARS,RISU0,TORI0,YASAN,SKELT
		EXT	CHAN0,CHAN1,CHAN2,CHAN3,RIVER,ARI00,ARI01,JOHBB
		EXT	ESW04,HODIR,HODIL,HODID,HODIU,BWAKO,HACHI,SHSAI,MOTS1
		EXT	TELSA,TRAP0,HBTAM,BAAR0,BAAR1,ZOOL1,ZOOL2
		EXT	RINGO,YOSEI,TUBO1,TUBO2,TUBO3,RUPYR,RUPYY,RUPYB,HART1
		EXT	BOMB1,BOMB2,BOMB3,BOSET,POLIW,AMENB,KAGI1,BABU2
		EXT	MEDAM,SKST0,SKST1,CHIBI,HELP1,HEBST,BIGKO,BCONT,PATAR,PATAM
		EXT	MIIRA,KAM01,SLIME,SLST0,HARI0,HANDS,MOTSB,D_0_9
		EXT	SPARK,YKDW0,YKDW1,HNDST,BYOYN,HEI00,SKELB,ICTAM
		EXT	AYAS0,AYAS1,AYAS2,AYAS3,TILST,MAGIC,KUROR,KUROD,KUROS
		EXT	DACHO,USAGI,OOOMU,PENGI,SLEEP,SKCHK,BARI1,ICMAN,ICBOS,ICEBG
		EXT	MEDA2,TEKI0,TEKI1,SKEL2,SKCH2,MGSET,HINO0,LOPAA,PAKKN,BUTA0
		EXT	HAYAM,GOST0,NAME0,TAAMA,ULANI,IWABO,MEMEL,MEMER,MEMED,MEMEU
		EXT	PATA0,PATA1,SAKAS,SINUB,JOHOY,LIKE0,DEMON,SEKBN,TAKAR,EYEBS
		EXT	BAKDN,SARKK,NAMAZ,KARAS,HAGE0,NOMCT,HAYAB,BOOK0,TKBOY,FISH0
		EXT	AMEBA,Theft,BGBM0,BGBM1,UTUBK,IZUMI,DARUM,SITO0,TEKBB,TEKTA
		EXT	SPARL,WANWAN,UZUMK,KAMBS,KAMBR,KAMBB,CTBOS,SAMTM,MDARM
		EXT	GANON,BMBST,PLCHK,SDLRCK,RYOKI,BEE00,RINEL,DOOMO,BEECK,WOOD1
		EXT	ABATA,PLHIN,ANAHO,JFISH,ZIRAI
;-------------- item
                EXT     HART1,RUPYR,RUPYY,RUPYB,BOMB1,BOMB2,BOMB3
                EXT     TUBO1,TUBO2
                EXT     YAAA1,YAAA2,YOSEI,HYUUU,IWAGO,IWAST
;-------------- 
		EXT	ESET0,ESET2,TAMS0,TAMS1,EFAIL
;--------------- line
		EXT	LINE0,LINE1,LINE2,LINE3
		EXT	DOKN0,DOKN1,DOKN2,DOKN3
;
;=============================================== (zel_char) =========
		EXT	spoj5,spoj0
;=============================================== (zel_enst) =========
		GLB	ENDTST,ENEMY2,ENBTON,ENEMY20,HEICAL
		GLB	HYUSET,ENBAKU,ETCLER,ENCLER
		GLB	GREDST,GRENST,ALCLER,GREDS2
		GLB 	EST0SB,ENGRCK,EFLCHK,EFLCHK2,ZSZNZST
		GLB	KEMR1ST,KEMR2ST,ENIDPS,DEMBMST,ENALFL 
		GLB	BADBRST
;
		GLB	KSFL
;=============================================== (zel_main) =========
		EXT     TGBLKWT,DJEXTCK,BSITEM,SDLRCE,SDLRE1,SDLRE2,SDLRE3
		EXT	JSRSUB,ENIDSH,ITMCBFST
                EXT     MD_title,MD_djint,MD_djply,MD_gdint,MD_gdply
                EXT     MD_fdout,MD_fdin,MD_etcpl
                EXT     MD_wpout,MD_wpin,bakud
;;///////		EXT	RDCHCK
;=============================================== (zel_bgwt) =========
		EXT	BDRCHCK
;====================================================================
;
		EXTEND
;
		MEM8
		IDX8
;
;==============================================================
KEMR1ST		EQU	$
		LDA	#HEBO0
		JSL	>ENIDSH
		BMI	K1S010
;
		LDA	#EFAIL
		STA	ENMODE,Y
		LDA	#1FH
		STA	ENTIM1,Y
   		LDA	#03H
		STA	ENWRK2,Y
		STA	ENMOD0,Y
;;		LDA	#04H
		INC	A
		STA	ENCLOR,Y
;
;;		JSL	>SDLRCE
;;		ORA	#15H
;;		STA	SOUND2	;(S)	
		LDA	#15H
		JSL	>SDLRE2	;(S)
ENIDPS		EQU	$
		LDA	<WORK0
		STA	ENXPSL,Y
		LDA	<WORK1
		STA	ENXPSH,Y
		LDA	<WORK2
		STA	ENYPSL,Y
		LDA	<WORK3
		STA	ENYPSH,Y
		LDA	<WORK4
		STA	ENZPSL,Y
K1S010		EQU	$
		RTL		
;==============================================================
KEMR2ST		EQU	$
		LDA	#NIWAT
		JSL	>ENIDSH
		BMI	K2S010
;
		JSL	>ENIDPS
;
		LDA	#EFAIL
		STA	ENMODE,Y
;
		LDA	#0FH
		STA	ENTIM0,Y
;
;;		JSL	>SDLRCE
;;		ORA	#14H
;;		STA	SOUND2	;(S)	
		LDA	#14H
		JSL	>SDLRE2	;(S)
;
		LDA	#02H
		STA	ENKAIF,Y
K2S010		EQU	$
		RTL
;==============================================================
DBSXSD		EQU	$
		HEX	F8,FC,04,08
DBSCNT		EQU	$
		HEX	00,11,22,33
;
DEMBMST		EQU	$
		JSL	>DS00
		JSL	>DS00
		JSL	>DS00
DS00		EQU	$
		LDA	#DEMON
		JSL	>ENIDSH
		BMI	DBS010
;
;;		JSL	>SDLRCE
;;		ORA	#01H
;;		STA	SOUND3	;(S)
		LDA	#01H
		JSL	>SDLRE3	;(S)
;
		JSL	>ENIDPS
		LDA	<WORK0
		CLC
		ADC	#04H
		STA	ENXPSL,Y
		LDA	<WORK1
		ADC	#00H
		STA	ENXPSH,Y
		LDA	<WORK2
		CLC
		ADC	#0CH
		PHP
		SEC
		SBC	ENZPSL,X
		STA	ENYPSL,Y
		LDA	<WORK3
		SBC	#00H
		PLP
		ADC	#00H
		STA	ENYPSH,Y
		LDA	#00H
		STA	ENZPSL,Y
;
		LDA	#18H
		STA	ENYSPD,Y
		STA	ENKBMK,Y
		STA	ENNOCR,Y
		LDA	#10000000B
		STA	ENMOD0,Y
		LDA	#00000011B
		STA	ENMOD2,Y
		AND	#00000011B
		STA	ENCLOR,Y
		LDA	#20H
		STA	ENTIM0,Y
		LDA	#02H
		STA	ENCHPT,Y
		PHX
		LDA	ENCTCT,X
		TAX
		LDA	>DBSXSD,X
		STA	ENXSPD,Y
		LDA	>DBSCNT,X
		STA	ENCONT,Y
		LDA	#02H
		STA	ENKAIF,Y
		PLX
		INC	ENCTCT,X
DBS010		EQU	$
		RTL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		ENEMY ALL FAIL CHECK  !               	      %	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EFLCHK		EQU	$
;;		LDA	EFLCHF
;;		BNE	EFCRTS
;
		PHX
		LDX	#ENNO-1
EFC010		EQU	$
		LDA	ENMODE,X
		BEQ	WW
;
		LDA	ENMOD3,X
		AND	#01000000B
		BNE	WW
;
		LDA	ENXPSL,X
		CMP	<SCCH2
		LDA	ENXPSH,X
		SBC	<SCCH2+1
		BNE	WW
		LDA	ENYPSL,X
		CMP	<SCCV2
		LDA	ENYPSH,X
		SBC	<SCCV2+1
		BNE	WW
;
		PLX
EFCRTS		EQU	$
		CLC
		RTL
;
WW		EQU	$
		DEX
		BPL	EFC010
		BRA	ESCHK
;;		PLX
;;		SEC
;;		RTL
;- - DISPLAY CHECK NOTHING !
EFLCHK2		EQU	$
;;		LDA	EFLCHF
;;		BNE	EF2RTS
;
		PHX
		LDX	#ENNO-1
EFC210		EQU	$
		LDA	ENMODE,X
		BEQ	WW2
;
		LDA	ENMOD3,X
		AND	#01000000B
		BNE	WW2
;
EF2RTS2		EQU	$
		PLX
EF2RTS		EQU	$
		CLC
		RTL
;
WW2		EQU	$
		DEX
		BPL	EFC210
;
ESCHK		EQU	$
		LDX	#ESNO-1
WW3		EQU	$
		LDA	ESMODE,X
		CMP	#TILST
		BEQ	EF2RTS2
		CMP	#SKCH2
		BEQ	EF2RTS2
		DEX
		BPL	WW3
;
		PLX
		SEC
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
;
;
;
;
;
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		on map strange obj set !               	      %	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HYUSET		EQU	$
		PHB
;
		PHK
		PLB
;
		LDX	#ENNO-1
HYU008		EQU	$
		LDA	ENMODE,X
		BEQ	HYU00C
		LDA	ENMYNO,X
		CMP	#HYUUU
		BNE	HYU00C		; already set ?
;					; yes !
		STZ	ENMODE,X
HYU00C		EQU	$
		DEX
		BPL	HYU008
;
		LDA	#HYUUU
		JSL	>ENIDSH
		BPL	HYU010
		LDY	#00H
HYU010		EQU	$
		LDA	>MEMXPSL+0FH
		STA	ENXPSL,Y
		LDA	>MEMXPSH+0FH
		STA	ENXPSH,Y
		LDA	>MEMYPSL+0FH
		CLC
		ADC	#008H
		STA	ENYPSL,Y
		LDA	>MEMYPSH+0FH
		ADC	#000H
		STA	ENYPSH,Y
		LDA	#000H
		STA	ENKAIF,Y
		INC	A
		STA	ENNOCR,Y
		PLB
		RTL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		enemy ground chenge check         	      %	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENGRCK		EQU	$
		PHB
		PHK
		PLB
;
		LDX	#ENNO-1
EGC010		EQU	$
		LDA	ENMODE,X
		BEQ	EGC020
;
		LDY	ENMYNO,X
		CMP	#ECACH
		BNE	EGC018
;;		BEQ	EGC020
;
		CPY	#KTOBJ
		BEQ	EGC020
		CPY	#JFISH
		BEQ	EGC020
;
;;		CPY	#SUKAS
;;		BNE	EGC01C 
;;		BNE	EGC020
;		
;;		LDA	#02H
		STZ	PYDMBT1		; cach reset !
		STZ	PYDMBT		; cach reset !
		BRA	EGC01C
EGC018		EQU	$
		CPY	#HYUUU
		BEQ	EGC020
;
		LDA	ENGRNO,X
		CMP	GRNDNO
		BEQ	EGC020		; chenge ground ?
;					; yes ! clear !
EGC01C		EQU	$
		STZ	ENMODE,X
EGC020		EQU	$
		DEX
		BPL	EGC010
;
		LDX	#ESNO-1
ESC010		EQU	$
		LDA	ESMODE,X
		BEQ	ESC020
;
		LDA	ESGRNO,X
		CMP	GRNDNO
		BEQ	ESC020		; chenge ground ?
;					; yes ! clear !
		STZ	ESMODE,X
ESC020		EQU	$
		DEX
		BPL	ESC010
		PLB
		RTL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		many many obj                   	      %	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;- Zora tama zanzoo set !- - - - - - - - - - - -
ZSZNZST		EQU	$
		TXA
		EOR	<FRCNT
		AND	#03H
;;		ORA	<DJFLG
		BNE	IZS090
;
		PHX
		LDX	#E2NO-1
ICZS10		EQU	$
		LDA	>E2MODE,X
		BEQ	ICZS20
		DEX
		BPL	ICZS10
		PLX
IZS090		EQU	$
		RTL
;- - - - - - - - - - - - - - - - - - -
ICZS20		EQU	$		
		LDA	#08H
		STA	>E2MODE,X
		STA	EN2FLG
;			
		LDA	#0BH
		STA	>E2TIM0,X
;
		LDA	ENXP2L
		STA	>E2XPSL,X
		LDA	ENXP2H
		STA	>E2XPSH,X
;
		LDA	ENYP2L
		CLC
		ADC	#10H
		STA	>E2YPSL,X
		LDA	ENYP2H
		ADC	#00H
		STA	>E2YPSH,X
;
		LDA	ENINDX
		STA	>E2STAT,X
		PLX
		RTL
;==============================================
ENEMY20		EQU	$
		JSL	>CGFLSH
;
		LDA	EN2FLG
		BEQ	E2M290
		PHB
		PHK
		PLB
		JSR	E22000
		PLB
E2M290		EQU	$
		RTL
;===================================================================
ENEMY2		EQU	$
		LDA	EN2FLG
		BEQ	E2M090
		PHB
		PHK
		PLB
		JSR	E20000
		PLB
E2M090		EQU	$
		RTL
;=====================================================
;- - - - - - - - - - - - -
E22000		EQU	$
		LDX	#E2NO-1
E22010		EQU	$
		JSR	E2SUB
		DEX
		CPX	#E2HF-1
		BNE	E22010
		RTS
;- - - - - - - - - - - - -
E20000		EQU	$
		LDX	#E2HF-1
E20010		EQU	$
		JSR	E2SUB
		DEX
		BPL	E20010
		RTS
;==================================================
E2OMNO		EQU	$
		HEX	4	;1
		HEX	4	;2
		HEX	4	;3
		HEX	4	;4
		HEX	4	;5
		HEX	4	;6
		HEX	4	;7
		HEX	4	;8
		HEX	4	;9
		HEX	4	;A
		HEX	4	;B
		BYTE	4	;C
		HEX	4	;D
		HEX	4	;E
		HEX	4	;F
		HEX	4	;10
		BYTE	4*2	;11
		BYTE	4	;12
		BYTE	4	;13
		BYTE	4	;14
		BYTE	4*2	;15
		BYTE	4*4	;KUSAFL
;
E2SUB		EQU	$
		STX	ENINDX
;	
		LDA	>E2MODE,X
		BEQ	E20020
;
		CMP	#05H
		BEQ	E20017
;
		LDA	<GAMEMD
		ORA	ENSTFG
		BNE	E20018
;
E20017		EQU	$
		LDA	>E2TIM0,X
		BEQ	E20018
;
		DEC	A
		STA	>E2TIM0,X
		BNE	E20018
;
		STA	>E2MODE,X
		BRA	E20020
E20018		EQU	$
                LDY     OAMTYP
                BEQ     ES0022          ; cross road room ?
;                                       ; yes ! kai check !
                LDA     >E2WRK0,X
                BEQ     ES0021
;
;;		LDA	#01H*4
		LDA	>E2MODE,X
		TAY
		LDA	E2OMNO-1,Y
                JSL     >OAMENT6
                BRA     ES0023
ES0021          EQU     $
;;		LDA	#01H*4
		LDA	>E2MODE,X
		TAY
		LDA	E2OMNO-1,Y
                JSL     >OAMENT4
                BRA     ES0023
ES0022          EQU     $
		LDA	>E2MODE,X
		TAY
		LDA	E2OMNO-1,Y
;;		CMP	#0CH
;;		BCC	ES0212
;;		CMP	#0EH
;;		BCS	ES0212
;;;
;;		LDA	#05H*4
;;		BRA	ES0213
;;ES0212		EQU	$
;;		LDA	#01H*4
;;ES0213		EQU	$
                JSL     >OAMENT1
ES0023          EQU     $
                LDA     >E2MODE,X
		DEC	A
                MEM16
                IDX16
                REP     #00110000B
                AND     #00FFH
                ASL     A
                TAY
                LDA     E2MVAD,Y
                DEC     A
                PHA
                MEM8
                IDX8
                SEP     #00110000B
E20020		EQU	$
                RTS
;============================================
E2MVAD          EQU     $
E2AD		WORD	HBTZNMV	  ;1; Hebi tama zanzoo !
		WORD	BKFIRMV	  ;2; Big komori fire zanzoo !
		WORD	BYUKAMV	  ;3; BG yuka down !
		WORD	MBZNZMV   ;4; MEME beam zanzoo !
		WORD	ICEFLMV	  ;5; Ice flash kira kira !
		WORD	KRZNZMV	  ;6; Kuro zanzo!c
		WORD	IBZNZMV	  ;7; Ice boss zanzo!
		WORD	ZSZNZMV	  ;8; Zora tama zanzo!
		WORD	EBZNZMV	  ;9; EYEBS BEAM zanzo!
		WORD	KEMRIMV	  ;A; Kemri zanzo!
		WORD	AYAFLMV	  ;B; Ayashi yatsu zanzo!
		WORD	KIZNZMV	  ;C; Kame kubi ice beam zanzo!
		WORD	00H   ; No use ! KFZNZMV	  ;D; Kame kubi FIRE beam zanzo!
		WORD	FIRFLMV	  ;E; Fire flash kira kira !
		WORD	CBZNZMV	  ;F; Cyty boss beam zanzo !
		WORD	GFZNZMV	  ;10; GANON FIRE  zanzo !
		WORD	GFZN2MV	  ;11; GANON FIRE  zanzo Last !
		WORD	ICEF2MV	  ;12 Ice flash kira kira !(Fast)
		WORD	BADBRMV	  ;13 Ganon bad hole break 
		WORD	ASZNZMV	  ;14 People ashi zanzoo !s
		WORD	PTZNZMV	  ;15 Patara boss water zanzoo !
;- - - - - -
KSFLAD		WORD	KUSAFLMV	; KTOBJ break !!		
;- - - - - - - - - - - - - - - -
KSFL		EQU	(KSFLAD-E2AD)/2+1
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%							     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PTZXAD		EQU	$
		HEX	F4,14
		HEX	F6,0A
		HEX	F8,08
		HEX	FC,04
PTZYAD		EQU	$
		HEX	FC,FC
		HEX	FE,FE
		HEX	00,00
		HEX	00,00
PTZCDT		EQU	$
		HEX	AE,AE
		HEX	AE,AE
		HEX	AE,AE
		HEX	AC,AC
PTZADT		EQU	$
		HEX	34,74
		HEX	34,74
		HEX	34,74
		HEX	34,74
PTZSBT		EQU	$
		HEX	0,0
		HEX	2,2
		HEX	2,2
		HEX	2,2
;- - - - - - - - - - - - -
PTZNZMV		EQU	$
		JSR	E2OMCK 
;
		LDA	>E2TIM0,X
		LSR	A
;;		LSR	A
		AND	#00000110B
		STA	<WORK6
;
		LDA	#01H
		STA	<WORK7
		PHX
PTZ010		EQU	$
		LDA	<WORK6
		ORA	<WORK7
		TAX
		LDA	<WORK0
		CLC
		ADC	PTZXAD,X
		STA	(<OAMADR),Y
		LDA	<WORK2
		CLC
		ADC	PTZYAD,X
		INY
		STA	(<OAMADR),Y
		LDA	PTZCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	PTZADT,X
		INY
		STA	(<OAMADR),Y
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
		LDA	PTZSBT,X 
		STA	(<OSBADR),Y
		PLY
		INY
		DEC	<WORK7
		BPL	PTZ010
		PLX
		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%							     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BADBRST		EQU	$
		LDA	#03H
		STA	SOUND3	;(S)
		LDA	#1FH
		STA	SOUND2	;(S)
		LDA	#05H
		STA	SOUND1	:(S)
;
		PHX
		TXY
		LDX	#E2NO-1
BBS010		EQU	$
		LDA	>E2MODE,X
		BEQ	BBS020
		DEX
		BPL	BBS010
		INX
BBS020		EQU	$
		LDA	#13H
		STA	>E2MODE,X
		STA	EN2FLG
;
;;;		LDA	ENXPSL,Y
		LDA	#0E8H
		CLC
		ADC	<WORK0
		STA	>E2XPSL,X
;
;;		LDA	ENYPSL,Y
		LDA	#60H
		CLC
		ADC	<WORK1
		STA	>E2YPSL,X
;
		LDA	<WORK2
		STA	>E2XSPD,X
		LDA	<WORK3
		STA	>E2YSPD,X
		JSL	>RNDSET
		AND	#1FH
		ADC	#30H
		STA	>E2TIM0,X
		PLX
		RTL
;-------------------------------------------------------
BDB000		EQU	$
		LDA	#00H
		STA	>E2MODE,X
		RTS
BADBRMV		EQU	$
		JSR	E2MVCL
;
		LDA	>E2YSPD,X
		CLC
		ADC	#03H
		STA	>E2YSPD,X
;
		LDY	#00H
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		CMP	#0F8H
		BCS	BDB000
		STA	(<OAMADR),Y
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		CMP	#0F0H
		BCS	BDB000
		INY
		STA	(<OAMADR),Y
		LDA	#5CH
		INY
		STA	(<OAMADR),Y
		LDA	<FRCNT
		ASL	A
		ASL	A
		ASL	A
		AND	#11000000B
		ORA	#34H
		JMP	OSB0ST
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#00H
;;		STA	(<OSBADR)
;;
;		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E2XCLC		EQU	$
E2MVCL		EQU	$
		PHX
		TXA
		CLC
		ADC	#E2NO
		TAX
		JSR	E2YCLC
		PLX
;============================================
E2YCLC		EQU     $
		LDA	>E2YSPD,X
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	>E2YSDR,X
		STA	>E2YSDR,X
;
		LDA	>E2YSPD,X
		PHP
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		PLP
		BPL	E2CY60
;
		ORA	#11110000B
E2CY60		EQU	$
		ADC	>E2YPSL,X
		STA	>E2YPSL,X
		RTS
;=======================================================
GFZCDT		EQU	$
		HEX	AC,AC,66,66,8E,A0,A2  ;,8E
GFZADT		EQU	$
		HEX	01,41,01,41,00,00,00  ;,01
GFZCMD		EQU	$
		HEX	7,6,5,4
		HEX	5,4,5,4
		HEX	5,4,5,4
		HEX	5,4,5,4
		HEX	5,4,5,4
		HEX	5,4,5,4
		HEX	5,4,5,4
		HEX	5,4,5,4
;
;;		HEX	1,0,1,0
;
;=========================================================
GFZN2MV		EQU	$
		LDA	<GAMEMD
		ORA	ENSTFG
		BNE	GFZ0F0
;
		LDA	>E2YPSL,X
		SEC
		SBC	#01H
		STA	>E2YPSL,X
		LDA	>E2YPSH,X
		SBC	#00H
		STA	>E2YPSH,X
;
GFZ0F0		EQU	$
		JSR	E2OMCK
;
		IDX16
		REP	#10H
		LDY	<OAMADR
;
		LDA	<WORK0
		STA	00H+0,Y
		CLC
		ADC	#08H
		STA	00H+4,Y
;
		LDA	<WORK2
;;		SEC
;;		SBC	#10H
		STA	00H+1,Y
		STA	00H+5,Y
;
		LDA	#0A4H
		STA	00H+2,Y
		INC	A
		STA	00H+6,Y
;
		LDA	#022H
		STA	00H+3,Y
		STA	00H+7,Y
;
		LDY	<OSBADR
		LDA	#00H
		STA	00H+0,Y
		STA	00H+1,Y
		IDX8
		SEP	#10H
		RTS
;=========================================================
GFZNZMV		EQU	$
		LDA	>E2TIM0,X
		CMP	#08H
		BNE	GFZ000		; Owari ?
;					; yes ! up !
		LDA	#11H	
		STA	>E2MODE,X
GFZ000		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
		LSR	A
		PHX
		TAX
		LDA	GFZCMD,X
		TAX		
		LDA	GFZCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	#22H
		ORA	GFZADT,X
		PLX
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#02H
;;		STA	(<OSBADR)
		JSR	OSB2ST
		JMP	CRE2PL 
;=================================================
;KFZYAD		EQU	$
;		HEX	00,00
;		HEX	00,00
;		HEX	00,00
;		HEX	00,00
;		HEX	00,00
;		HEX	00,00
;		HEX	F0,00
;		HEX	F0,00
;KFZCDT		EQU	$
;		HEX	E8,E8
;		HEX	E8,E8
;		HEX	2E,2E
;		HEX	2E,2E
;		HEX	0E,0E
;		HEX	0E,0E
;		HEX	C6,E6
;		HEX	C6,E6
;KFZADT		EQU	$
;		HEX	00,00
;		HEX	40,40
;		HEX	00,00
;		HEX	40,40
;		HEX	00,00
;		HEX	40,40
;		HEX	00,00
;		HEX	40,40
;KFZCMD		EQU	$
;		HEX	0,1,0,1
;		HEX	2,3,2,3
;		HEX	4,5,4,5
;;
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;		HEX	6,7,6,7
;;
;		HEX	4,5,4,5
;		HEX	2,3,2,3
;		HEX	0,1,0,1
;;- - - -- - - - - - - - - - - - - - - - - - - - - -
;KFZNZMV		EQU	$
;		JSR	E2OMCK
;;
;		LDA	>E2TIM0,X
;		LSR	A
;		LSR	A
;		TAY
;		LDA	KFZCMD,Y
;		ASL	A
;		STA	<WORK6
;		PHX
;		LDX	#01H
;		LDY	#00H
;KFZ010		EQU	$
;		PHX
;		TXA
;		CLC
;		ADC	<WORK6
;		TAX
;		LDA	<WORK0
;		STA	(<OAMADR),Y
;		LDA	<WORK2
;		SEC
;		SBC	#10H  
;		CLC
;		ADC	KFZYAD,X
;		INY
;		STA	(<OAMADR),Y
;		LDA	KFZCDT,X
;		INY
;		STA	(<OAMADR),Y
;		LDA	#03FH
;		ORA	KFZADT,X
;		INY
;		STA	(<OAMADR),Y
;		PHY
;		TYA
;		LSR	A
;		LSR	A
;		TAY
;		LDA	#02H
;		STA	(<OSBADR),Y
;		PLY
;		INY
;		PLX
;		DEX
;		BPL	KFZ010
;		PLX
;		JMP	CRE2PL
;;		RTS
;==================================================================
;KIZXAD		EQU	$
;		HEX	00,10,00,10,06
;		HEX	02,11,0C,FF,08
;		HEX	FE,08,12,08,0A
;		HEX	11,02,FF,0C,08
;KIZYAD		EQU	$
;		HEX	00,00,10,10,08
;		HEX	FF,02,11,0C,06
;		HEX	08,FE,08,12,08
;		HEX	02,FF,0C,11,0A
;KIZCDT		EQU	$
;		HEX	80,B6,B7,A6,80
;		HEX	B6,B7,A6,80,B6
;		HEX	B7,A6,80,B6,B7
;		HEX	A6,80,B6,B7,A6
KIZCDT		EQU	$
		HEX	E8,E8,E6,E6
		HEX	E4,E4,E4,E4
		HEX	E4,E4,E4,E4
;
KIZADT		EQU	$
		HEX	00,40,C0,80
;- - - -- - - - - - - - - - - - - - - - - - - - - -
KIZNZMV		EQU	$
		LDA	>E2TIM0,X
		CMP	#050H
		BNE	KIZ000
;
		LDA	<GAMEMD
		ORA	ENSTFG
		BNE	KIZ000
;
		PHA
;
		LDA	>E2XPSL,X
		STA	<WORK0
		LDA	>E2XPSH,X
		STA	<WORK1
		LDA	>E2YPSL,X
		SEC
		SBC	#10H
		STA	<WORK2
		LDA	>E2YPSH,X
		SBC	#00H
		STA	<WORK3
		LDY	#12H   ;-2
		JSL	>TGBLKWT
		PLA
KIZ000		EQU	$
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
		AND	#03H
		TAY
		LDA	KIZADT,Y
		STA	<WORK4
;
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		NOP
		PHX
		TAX
		LDA	KIZCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	#35H
		ORA	<WORK4
		PLX
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#02H
;;		STA	(<OSBADR)
		JMP	OSB2ST
;
;		LDA	>E2TIM0,X
;		LSR	A
;		LSR	A
;		NOP
;		AND	#03H
;		STA	<WORK6
;		ASL	A
;		ASL	A
;		ADC	<WORK6
;		STA	<WORK6	
;		PHX
;		LDX	#04H
;KIZ010		EQU	$
;		PHX
;		TXA
;		CLC
;		ADC	<WORK6
;		TAX
;		LDA	<WORK0
;		SEC
;		SBC	#04H
;		CLC
;		ADC	KIZXAD,X
;		STA	(<OAMADR),Y
;		LDA	<WORK2
;		CLC
;		ADC	KIZYAD,X
;		SEC
;		SBC	#10H+4
;		INY
;		STA	(<OAMADR),Y
;		LDA	KIZCDT,X
;		INY
;		STA	(<OAMADR),Y
;		LDA	#034H
;		INY
;		STA	(<OAMADR),Y
;		PHY
;		TYA
;		LSR	A
;		LSR	A
;		TAY
;		LDA	#00H
;		STA	(<OSBADR),Y
;		PLY
;		INY
;		PLX
;		DEX
;		BPL	KIZ010
;		PLX
		JMP	CRE2PL
;;		RTS
;==================================================================
AFZCDT		EQU	$
		HEX	DF,CF,A9
;
ASZNZMV		EQU	$	; People ashi zanzoo !
		LDA	>E2TIM0,X
		BRA	AYF001
AYAFLMV		EQU	$	; Ayashi yatsu zanzoo !
		LDA	>E2TIM0,X
		LSR	A
AYF001		EQU	$
		LSR	A
  		LSR	A
		STA	ENHELP
;
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
;
		PHX
;
;
		LDX	ENHELP
		LDA	AFZCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	#24H
		PLX
		JMP	OSB0ST
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#00H
;;		STA	(<OSBADR)
;;		RTS
;==================================================================
KMZCDT		EQU	$
		HEX	8A,86
KMATDT		EQU	$
		HEX	20,10,30,30
;
KEMRIMV		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
		LSR	A
		PHX
		TAX
		LDA	KMZCDT,X
		INY
		STA	(<OAMADR),Y
		PLX
		PHX
		LDA	>E2STAT,X	; Pri !!
		TAX
		LDA	KMATDT,X
		ORA	#04H
		PLX
		JMP	OSB2ST
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#02H
;;		STA	(<OSBADR)
;;		RTS
;==================================================================
EBZCDT		EQU	$
		HEX	CC,EC,CE,EE
		HEX	CC,EC,CE,EE
EBZADT		EQU	$
		HEX	31,31,31,31
		HEX	71,71,71,71
;;		HEX	3B,3B,3B,3B
;;		HEX	7B,7B,7B,7B
;
EBZNZMV		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		LDA	>E2STAT,X
		PHX
		TAX
		LDA	EBZCDT,X
		PHX
		LDX	ERXYCT
		CPX	#20H
		BNE	EBZ008		; shisai room ?
		SEC
		SBC	#80H		; yes ! bank revise !
EBZ008		EQU	$
		PLX
		INY
		STA	(<OAMADR),Y
;
                LDA     <FRCNT
                ASL     A
                AND     #00001110B
		ORA	EBZADT,X
		PLX
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#02H
;;		STA	(<OSBADR)
		JSR	OSB2ST
;
CRE2PL		EQU	$
		TXA
		EOR	<FRCNT
		AND	#07H
		ORA	PYFLASH
		ORA	MRTKFG
		BNE	EBZM10
;
		LDA	<PLXPS1
		SBC	<SCCH2
		SBC	<WORK0
		ADC	#0CH
		CMP	#18H
		BCS	EBZM10		
;
		LDA	<PLYPS1
		SBC	<SCCV2
;;		ADC	#10H
;;		ADC	#08H
		SBC	<WORK2
		ADC	#0CH+08H+2
		CMP	#18H+4
		BCS	EBZM10		
;
		LDA	#01H
		STA	<DIEFG
;
		LDA	#10H
		STA	<HANEFG
		STA	DAMEFG
;
		LDA	<PLXSPD
		EOR	#0FFH
		STA	<PLXSPD
		LDA	<PLYSPD
		EOR	#0FFH
		STA	<PLYSPD
EBZM10		EQU	$
		RTS
;==================================================================
;==================================================================
IBZCDT		EQU	$
		HEX	A8,8A,86,86
IBZADT		EQU	$
		HEX	2D,2C,2C,2C
;
IBZNZMV		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
		LSR	A
;;		LSR	A
		PHX
		TAX
		LDA	IBZCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	IBZADT,X
		PLX
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#02H
;;		STA	(<OSBADR)
;;		RTS
		JMP	OSB2ST
;;
;;		LDA	>E2MODE,X
;;		CMP	#01H
;;		BEQ	E20220
;;		CMP	#02H
;;		BEQ	E20121
;;		CMP	#06H
;;		BEQ	E20621
;;		CMP	#05H
;;		BEQ	E20321
;;		CMP	#03H
;;		BEQ	E20221
;;;----------------------------------------------------------------
;;		JSR	MBZNZMV   ;4	; MEME beam zanzoo !
;;		BRA	E20020
;;;----------------------------------------------------------------
;;E20321		EQU	$
;;		JSR	ICEFLMV		; Ice flash kira kira !
;;		BRA	E20020
;;;----------------------------------------------------------------
;;E20621		EQU	$
;;		JSR	KRZNZMV		; Kuro zanzo!c
;;		BRA	E20020
;;;----------------------------------------------------------------
;;E20121		EQU	$
;;		JSR	BKFIRMV		; Big komori fire zanzoo !
;;		BRA	E20020
;;;----------------------------------------------------------------
;;E20221		EQU	$
;;		JSR	BYUKAMV		; BG yuka down !
;;		BRA	E20020
;;;----------------------------------------------------------------
;;E20220		EQU	$
;;;----------------------------------------------------------------
;;		JSR	HBTZNMV		; Hebi tama zanzoo !
;;;----------------------------------------------------------------
;;E20020		EQU	$
;;		RTS
;=====================================================
ZSZXAD		EQU	$
ZSZYAD		EQU	$
		HEX	FF,FF,00		
;;		HEX	0,0,0,0,0
;ZSZYAD		EQU	$
;		HEX	EF,EF,F0
;;		HEX	0,0,0,0,0
;
ZSZCDT		EQU	$
		HEX	9C,9D,8D  ;;,8D
;;		HEX	0,0,0,0,0
;
ZSZNZMV		EQU	$
		JSR	E2OMCK
;
		PHX
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
;;		NOP
;;		NOP
;;		NOP
		TAX		
		LDA	<WORK0	
		CLC
		ADC	ZSZXAD,X
		STA	(<OAMADR),Y
		LDA	<WORK2	
		CLC
		ADC	ZSZYAD,X
		INY
		STA	(<OAMADR),Y
		LDA	ZSZCDT,X
		INY
		STA	(<OAMADR),Y
;
		PLX
		PHY
		LDA	>E2STAT,X
		TAY
		LDA	ENCLOR,Y
		ORA	ENFLCL,Y
		AND	#11111110B
		PLY
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#00H
;;		STA	(<OSBADR)
;;		RTS
		JMP	OSB0ST
;
;=====================================================
KRZNZMV		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		LDA	#75H
		INY
		STA	(<OAMADR),Y
		PHY
		LDA	>E2STAT,X
		TAY
		LDA	ENCLOR,Y
		ORA	ENFLCL,Y
;;		AND	#11110000B
;;		ORA	#00001010B
		PLY
		JMP	OSB0ST
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#00H
;;		STA	(<OSBADR)
;;		RTS
;=====================================================
;
ICFLCD		EQU	$
		HEX	83,C7,80,B7
;
ICEF2MV		EQU	$
		LDA	>E2TIM0,X
		BRA	IFL000
;
ICEFLMV		EQU	$
		LDA	>E2TIM0,X
		LSR	A
IFL000		EQU	$
		LSR	A
		LSR	A
		STA	<WORKF
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		PHX
		LDX	<WORKF
		LDA	ICFLCD,X
		PLX
		INY
		STA	(<OAMADR),Y
		PHY
		LDA	>E2STAT,X
		TAY
		LDA	ENCLOR,Y
		ORA	ENFLCL,Y
		AND	#11110000B
		ORA	#00000100B
		PLY
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#00H
;;		STA	(<OSBADR)
;;		RTS
		JMP	OSB0ST
;=====================================================
;=====================================================
;
FRFLCD		EQU	$
		HEX	83,C7,80,9D
;
FIRFLMV		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
		LSR	A
		PHX
		TAX
		LDA	FRFLCD,X
		PLX
		INY
		STA	(<OAMADR),Y
		PHY
		LDA	>E2STAT,X
		TAY
		LDA	ENCLOR,Y
		ORA	ENFLCL,Y
		AND	#11110000B
		ORA	#00001110B
		PLY
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#00H
;;		STA	(<OSBADR)
;;		RTS
		JMP	OSB0ST
;=====================================================
;=====================================================
;=====================================================
;=====================================================
CBZCDT		EQU	$
		HEX	61,71,70,60
;
CBZNZMV		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		PHY
		LDA	>E2CHPT,X
		TAY
		LDA	CBZCDT-7,Y
		PLY
		INY
		STA	(<OAMADR),Y
		PHY
		LDA	>E2STAT,X
		TAY
		LDA	ENCLOR,Y
		ORA	ENFLCL,Y
		PLY
		BRA	OSB0ST	
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#00H
;;		STA	(<OSBADR)
;;		RTS
;=====================================================
;=====================================================
MBZCDT		EQU	$
		HEX	D2,F3
;
MBZNZMV		EQU	$
		JSR	E2OMCK
;
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		PHY
		LDA	>E2CHPT,X
		TAY
		LDA	MBZCDT,Y
		PLY
		INY
		STA	(<OAMADR),Y
;;		PHY
;;		LDA	>E2STAT,X
;;		TAY
;;		LDA	ENCLOR,Y
;;		ORA	ENFLCL,Y
;;		PLY
		LDA	#25H
OSB0ST		EQU	$
		INY
		STA	(<OAMADR),Y
		LDA	#00H
		STA	(<OSBADR)
		RTS
;- - - - - - - - - - - - - - - - - - - - - - - -
E2OMCK		EQU	$
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA	<WORK0
		LDA	>E2XPSH,X
		SBC	<SCCH2+1
		STA	<WORK1
		BNE	MBZ010
;
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		PHA
		LDA	>E2YPSH,X
		SBC	<SCCV2+1
		BEQ	MBZ020
		PLA
;
MBZ010		EQU	$
		LDA	#00H
		STA	>E2MODE,X
		PLA
		PLA
		RTS
MBZ020		EQU	$
		PLA
		SBC	#10H
		STA	<WORK2
		LDY	#00H
		RTS
;- - - - - - - - - - - - - - - - - - - - - - - -
;=====================================================
BYCHDT		EQU	$
		HEX	80,CC,CC,EA,CA
BYATDT		EQU	$
		HEX	30,31,31,31,31
BYSBDT		EQU	$
		HEX	00,02,02,02,02 
BYXADT		EQU	$
BYYADT		EQU	$
		HEX	04,00,00,00,00
;
BYUKAMV		EQU	$
		LDA	>E2TIM0,X
		CMP	#1EH
		BNE	BYK008
;
		LDA	<GAMEMD
		ORA	ENSTFG
		BNE	BYK008
;
		PHA
		LDA	>E2XPSL,X
		STA	<WORK0
		LDA	>E2XPSH,X
		STA	<WORK1
		LDA	>E2YPSL,X
		SEC
		SBC	#10H
		STA	<WORK2
		LDA	>E2YPSH,X
		SBC	#00H
		STA	<WORK3
;
		PHX
		LDY	#04H
		JSL	>TGBLKWT	; Hole BG set !
		PLX
		PLA
BYK008		EQU	$
		LSR	A
		LSR	A
		LSR	A
		TAY
		LDA	BYCHDT,Y
		STA	<WORK3
		LDA	BYATDT,Y
		STA	<WORK5
		LDA	BYSBDT,Y
		STA	<WORK6
;
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		PHP
		CLC
		ADC	BYXADT,Y
		STA	<WORK0
;
		LDA	>E2XPSH,X
		ADC	#00H
		PLP
		SBC	<SCCH2+1
		BNE	BYK010
;
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		PHP
		CLC
		ADC	BYYADT,Y
		STA	<WORK2
		LDA	>E2YPSH,X
		ADC	#00H
		PLP
		SBC	<SCCV2+1
		BEQ	BYK020
BYK010		EQU	$
;;		LDA	#00H
;;		STA	>E2MODE,X
		RTS
BYK020		EQU	$
		LDY	#00H
		LDA	<WORK0
;;		LDA	>E2XPSL,X
;;		SEC
;;		SBC	<SCCH2
		STA	(<OAMADR),Y
		LDA	<WORK2
		SEC
		SBC	#010H
;;		LDA	>E2YPSL,X
;;		SEC
;;		SBC	<SCCV2
;;		STA	<WORK2
		INY
		STA	(<OAMADR),Y
		INY
		LDA	<WORK3
		STA	(<OAMADR),Y
		INY
;;		LDA	#030H
		LDA	<WORK5
		STA	(<OAMADR),Y
;;		LDA	#02H
		LDA	<WORK6
		STA	(<OSBADR)
		RTS
;=====================================================
HBTZNMV		EQU	$
		JSR	E2OMCK
;
;;		LDA	>E2XPSL,X
;;		SEC
;;		SBC	<SCCH2
;;		STA	<WORK0
;;		LDA	>E2XPSH,X
;;		SBC	<SCCH2+1
;;		BNE	HBT010
;;;
;;		LDA	>E2YPSL,X
;;		SEC
;;		SBC	<SCCV2
;;		STA	<WORK2
;;		LDA	>E2YPSH,X
;;		SBC	<SCCV2+1
;;		BEQ	HBT020
;;HBT010		EQU	$
;;		LDA	#00H
;;		STA	>E2MODE,X
;;		RTS
;;HBT020		EQU	$
;;		LDY	#00H
		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		INY
		LDA	#28H
		STA	(<OAMADR),Y
;;		LDA	>E2STAT,X
		PHY
		LDA	>E2STAT,X
		TAY
		LDA	ENCLOR,Y
		ORA	ENFLCL,Y
		PLY
		JMP	OSB2ST
;;		INY
;;		STA	(<OAMADR),Y
;;		LDA	#02H
;;		STA	(<OSBADR)
;;		RTS
;=====================================================
BKFIRMV		EQU	$
;;		LDA	>E2XPSL,X
;;		SEC
;;		SBC	<SCCH2
;;		STA	<WORK0
;;		LDA	>E2XPSH,X
;;		SBC	<SCCH2+1
;;		BNE	BKF010
;;;
;;		LDA	>E2YPSL,X
;;		SEC
;;		SBC	<SCCV2
;;		STA	<WORK2
;;		LDA	>E2YPSH,X
;;		SBC	<SCCV2+1
;;		BEQ	BKF020
;;BKF010		EQU	$
;;		LDA	#00H
;;		STA	>E2MODE,X
;;		RTS
;;BKF020		EQU	$
		LDY	#00H
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
;;		LDA	<WORK0
		STA	(<OAMADR),Y
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
;;		LDA	<WORK2
		INY
;;		SEC
;;		SBC	#10H
		STA	(<OAMADR),Y
		INY
		LDA	#0AAH
		STA	(<OAMADR),Y
		LDA	>E2STAT,X
		PHY
		LDA	>E2STAT,X
		TAY
		LDA	ENCLOR,Y
		ORA	ENFLCL,Y
		PLY
OSB2ST		EQU	$
		INY
		STA	(<OAMADR),Y
		LDA	#02H
		STA	(<OSBADR)
		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		Enemy flag set position in       	      %		
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-------- Iwa goro goro check -------
IWACHK		EQU	$
		LDA	<DJFLG
		BNE	IWC090
;
		LDA	IWAFLG
		BEQ	IWC090
;
		LDA	<GAMEMD
		ORA	ENSTFG
		BNE	IWC090
;
		INC	IWACNT
		LDA	IWACNT
		AND	#3FH
		BNE	IWC090
;
		LDA	<SCCV2+1
		SEC
		SBC	GRRMYH
		CMP	#02H
		BMI	IWC090		
;
		LDA	#IWAGO
		LDY	#ENNO-1-2
		JSL	>ENIDSH
		BMI	IWC090
;
		JSL	>RNDSET
		AND	#7FH
		CLC
		ADC	#40H
		CLC
		ADC	<SCCH2
		STA	ENXPSL,Y
		LDA	<SCCH2+1
		ADC	#00H
		STA	ENXPSH,Y
;
		LDA	<SCCV2
		SEC
		SBC	#030H
		STA	ENYPSL,Y
		LDA	<SCCV2+1
		SBC	#000H
		STA	ENYPSH,Y
;
		LDA	#00H
		STA	ENKAIF,Y
		STA	ENMUKI,Y
		STA	ENZPSL,Y
;
IWC090		EQU	$
		RTS
;=====================================
EST0SB		EQU	$
		PHB
		PHK
		PLB
		JSR	EST000
		JSR	IWACHK
		PLB
		RTL
;---------------------------------------------------
EST000		EQU	$
		LDA	<GAMEMD
		ORA	ENSTFG
		BNE	EST050
;
		LDX	#ESNO-1
EST010		EQU	$
		LDA	ESMODE,X
		BEQ	EST030
;
		JSR	EST020
;
EST030		EQU	$
		DEX
		BPL	EST010
EST050		EQU	$
		RTS
;- - - - - - - - - - - - - - - - - - - - 
EST020		EQU	$
		PHA
;
;;		LDA	<SLMODE
;;		CMP	#MD_djply
;;		BNE	EST080
;;;
;;		JSR	ESCLCK
;;		BEQ	EST090
EST080		EQU	$
		JSR	ESSAVE
EST090		EQU	$
;
		PLA
		DEC	A
;;		SEC
;;		SBC	#ESET0 
;
                MEM16
                IDX16
                REP     #00110000B
                AND     #00FFH
                ASL     A
                TAY
                LDA     ESMVAD,Y
                DEC     A
                PHA
                MEM8
                IDX8
                SEP     #00110000B
                RTS
;;
;;		JSL	>JSRSUB
ESMVAD		EQU	$
;;		WORD	ES1000
;;		WORD	ES2000
;;		WORD	MANY2C
;;		WORD	HEIS0ST
		WORD	DOOORMV
;
		WORD	TAMS0MV		;ROOM MANY RANDAM SET TAMA
		WORD	TAMS1MV		;ONLY DOWN SMALL OR BIG SET !
		WORD	SKST0MV		;Skelton set ! (randam set)
		WORD	SKST1MV		;   " Kotei set !
		WORD	HEBSTMV		; Hebi down ! (hazure swich)
		WORD	BCONTMV		; BG controle !
		WORD	SLST0MV		; Slime set ! (randam set)
;;;;;	            	WORD	SLST1MV		;   " Kotei set !
		WORD	HNDSTMV		; Hands set !
		WORD	YKDW0MV		; BG yuka down 1
		WORD	YKDW1MV		;     "        2
		WORD	GAYK0MV		; Ganon room yuka down 1
		WORD	GAYK1MV		;     "        2
		WORD	GAYK2MV		;     "        3
		WORD	GAYK3MV		;     "        4
		WORD	AYAS0MV		; Ayashii yatsu set R!
		WORD	AYAS1MV		; Ayashii yatsu set L!
		WORD	AYAS2MV		; Ayashii yatsu set D!
		WORD	AYAS3MV		; Ayashii yatsu set U!
		WORD	TILSTMV		; Tail set !
		WORD	MGSETMV		; Magician set !
		WORD	KUROSMV		; Kurokuro set !
		WORD	SKCHKMV		; Skelton set check !
		WORD	SKCH2MV		; Skelton (WALK)set check !
		WORD	NOMCTMV		; Nomos cont.
		WORD	BMBSTMV		; Bomb down (hazure swich)
;====================================================
NOMCTMV		EQU	$
		JSL	>NOMOSCT
		RTS
;====================================================
;- - - - - - - - - - - -
S2SXAL		EQU	$
		HEX	00,00,D0,30
S2SXAH		EQU	$
		HEX	00,00,FF,00
S2SYAL		EQU	$
		HEX	D8,38,08,08
S2SYAH		EQU	$
		HEX	FF,00,00,00
S2STIM		EQU	$
		HEX	30,50,70,90
;========
SKCH2MV		EQU	$
		LDA	ESXPSL,X
		STA	<WORK0
		LDA	ESXPSH,X
		STA	<WORK1
		LDA	ESYPSL,X
		STA	<WORK2
		LDA	ESYPSH,X
		STA	<WORK3
;
		MEM16
		REP	#00100000B
;
		LDA	<WORK0
		SEC
		SBC	<PLXPS1
		CLC
		ADC	#0018H
		CMP	#0030H
		BCS	S2C010
		LDA	<WORK2
		SEC
		SBC	<PLYPS1
		CLC
		ADC	#0018H
		CMP	#0030H
		BCS	S2C010		; Player area in ?
;					; yes !
		MEM8
		SEP	#00100000B
;
		STZ	ESMODE,X
;
;;SKEL2ST		EQU	$
		LDA	#03H
		STA	ENHELP
;
S2S020		EQU	$
		LDA	#SKEL2
		LDY	#0CH
		JSL	>ENIDSH2
		BMI	S2S050
;
		PHX
		LDX	ENHELP
		LDA	<PLXPS1
		CLC
		ADC	S2SXAL,X
		STA	ENXPSL,Y
		LDA	<PLXPS0
		ADC	S2SXAH,X
		STA	ENXPSH,Y
		LDA	<PLYPS1
		CLC
		ADC	S2SYAL,X
		STA	ENYPSL,Y
		LDA	<PLYPS0
		ADC	S2SYAH,X
		STA	ENYPSH,Y
		LDA	S2STIM,X
		STA	ENTIM0,Y
		PLX
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
		LDA	#01H
		STA	ENWRK3,Y
;;;		STA	ENCTCT,Y
;
;;		LDA	#00000111B
		LDA	#03H
		STA	ENMOD0,Y
		DEC	A
		STA	ENMUKI,Y
S2S050		EQU	$
		DEC	ENHELP
		BPL	S2S020
S2C010		EQU	$
		MEM8
		SEP	#00100000B
		RTS
;====================================
SKCHKMV		EQU	$
		LDA	ESXPSL,X
		STA	<WORK0
		LDA	ESXPSH,X
		STA	<WORK1
		LDA	ESYPSL,X
		STA	<WORK2
		LDA	ESYPSH,X
		STA	<WORK3
;
		MEM16
		REP	#00100000B
;
		LDA	<WORK0
		SEC
		SBC	<PLXPS1
		CLC
		ADC	#0020H
		CMP	#0040H
		BCS	SKC010
		LDA	<WORK2
		SEC
		SBC	<PLYPS1
		CLC
		ADC	#0020H
		CMP	#0040H
		BCS	SKC010		; Player area in ?
;					; yes !
		MEM8
		SEP	#00100000B
;
		STZ	ESMODE,X
;
		INC	BXOPEN
SKC010		EQU	$
		MEM8
		SEP	#00100000B
		RTS
;
;====================================================
KRSXAL		EQU	$
		HEX	FC,FE,00,02,04,06,08,0C
KRSXAH		EQU	$
		HEX	FF,FF,00,00,00,00,00,00
;
KUROSMV		EQU	$
		DEC	ESTIM0,X
;
                LDA     ESYPSL,X
                CLC
                ADC     #08H
                STA     <WORK0
                LDA     ESYPSH,X
                ADC     #00H
                STA     <WORK1
                LDA     ESXPSL,X
                CLC
                ADC     #08H
                STA     <WORK2
                LDA     ESXPSH,X
                ADC     #00H
                STA     <WORK3
		LDA	ESKAIF,X
		JSL	>BGDTRD2
		CMP	#82H
		BNE	KS0020		; Ana on ?
;					; yes !
		LDA	ESTIM0,X
		CMP	#18H
		BCS	KS0020
;
		AND	#03H
		BNE	KS0020
;
		LDA	#KUROR
		LDY	#0CH
		JSL	>ENIDSH2
		BMI	KS0020
;
		PHX
		JSL	>RNDSET
		AND	#07H
		TAX
;
		LDA	<WORK5
		CLC
		ADC	KRSXAL,X
		PHP
		CLC
		ADC	#08H
		STA	ENXPSL,Y
;
		LDA	<WORK6
		ADC	#00H
		PLP
		ADC	KRSXAH,X
		STA	ENXPSH,Y
;
		LDA	<WORK7
		CLC
		ADC	#08H
		STA	ENYPSL,Y
		LDA	<WORK8
		STA	ENYPSH,Y
		PLX
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
		LDA	#01H
		STA	ENMOD3,Y
		STA	ENWRK3,Y
		STA	ENNOCR,Y
;
		LDA	#010H
		STA	ENYSPD,Y
;
		LDA	#00100000B
		STA	ENMOD0,Y
;
		LDA	#00001101B
		STA	ENCLOR,Y
		JSL	>RNDSET
		STA	ENCONT,Y
;
		LDA	#30H
		STA	ENTIM0,Y
;
		LDA	#03H
		STA	ENMOD6,Y
KS0020		EQU	$
		RTS
;====================================================
MGSXAL		EQU	$
		HEX	30,D0,00,00
MGSXAH		EQU	$
		HEX	00,FF,00,00
MGSYAL		EQU	$
		HEX	10,10,40,E0
MGSYAH		EQU	$
		HEX	00,00,00,FF
MGSTIM		EQU	$
		HEX	00,10,20,30
;
;- - - - - - - - - - - - - -
MGSETMV		EQU	$
		LDA	ESTIM0,X
		CMP	#80H
		BEQ	MS0010
;
		LDA	<FRCNT
		LSR	A
		BCC	MGS000
;
		DEC	ESTIM0,X
MGS000		EQU	$
		RTS
;- - - - - - - - - - - - - - - - - - -
MS0010		EQU	$
		LDA	#07FH
		STA	ESTIM0,X
;
		LDA	#03H
		STA	ENHELP
;
MS0020		EQU	$
		LDA	#MAGIC
		LDY	#0CH
		JSL	>ENIDSH2
		BMI	MS0050
;
		PHX
		LDX	ENHELP
		LDA	<PLXPS1
		CLC
		ADC	MGSXAL,X
		STA	ENXPSL,Y
		LDA	<PLXPS0
		ADC	MGSXAH,X
		STA	ENXPSH,Y
		LDA	<PLYPS1
		CLC
		ADC	MGSYAL,X
		STA	ENYPSL,Y
		LDA	<PLYPS0
		ADC	MGSYAH,X
		STA	ENYPSH,Y
		LDA	MGSTIM,X
		STA	ENTIM0,Y
		PLX
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
		LDA	#01H
		STA	ENWRK1,Y
MS0050		EQU	$
		DEC	ENHELP
		BPL	MS0020
		RTS
;====================================================
TILSTMV		EQU	$
		LDA	ESXPSL,X
		CMP	<SCCH2
		LDA	ESXPSH,X
		SBC	<SCCH2+1
		BNE	TLM038
;
		LDA	ESYPSL,X
		CMP	<SCCV2
		LDA	ESYPSH,X
		SBC	<SCCV2+1
		BNE	TLM038		; Display in ?
;					; yes !
		DEC	ESTIM0,X
		LDA	ESTIM0,X
		CMP	#80H
		BEQ	TLM010	
;	
		RTS
TLM008		EQU	$
		LDA	#81H
		STA	ESTIM0,X
		RTS
;
TLM010		EQU	$
		JSR	TAILST
		BMI	TLM008
;
		INC	ESSTAT,X
		LDA	ESSTAT,X
		CMP	#22
		BEQ	TLM028
		LDA	#60H+80H
		STA	ESTIM0,X
		RTS
TLM028		EQU	$
		STZ	ESMODE,X
;;		RTS
TLM038		EQU	$
;;		LDA	#0C0H
;;		STA	ESTIM0,X
		RTS
;============================================
TLSXAL		EQU	$
		HEX	70,80,60,90,90,60,70,80,80,70
		HEX	50,A0,A0,50,50,A0,A0,50,70,80
		HEX	80,70
TLSYAL		EQU	$
		HEX	80,80,70,90,70,90,60,A0,60,A0
		HEX	60,B0,60,B0,80,90,80,90,70,90
		HEX	70,90
;- - - - - - - - - - - - - - - - - - - - -
TAILST		EQU	$
		LDA	#AYASI
;;		LDY	#0FH
		JSL	>ENIDSH
		BMI	TLS010
;
		LDA	#01H
		STA	ENWRK3,Y
;
		PHX
		LDA	ESSTAT,X
		TAX
		LDA	TLSXAL,X
		STA	ENXPSL,Y
;;		LDA	#01H
;;		CLC
;;		ADC	NOWRMX
		LDA	TLSYAL,X
		SEC
		SBC	#08H
		STA	ENYPSL,Y
;
;;		LDA	#01H
;;		CLC
;;		ADC	NOWRMY
;
		PLX
;
		LDA	ESYPSH,X
		STA	ENYPSH,Y
		LDA	ESXPSH,X
		STA	ENXPSH,Y
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
		LDA	#04H
		STA	ENMOD1,Y
		LDA	#00H
		STA	ENMOD4,Y
		STA	ENLIFE,Y
		LDA	#08H
		STA	ENMOD5,Y
		LDA	#04H
		STA	ENMOD0,Y
		LDA	#00000001B
		STA	ENCLOR,Y
		LDA	#04H
		STA	ENMOD6,Y
;;		LDA	#01000000B
;;		STA	ENMOD3,Y
TLS010		EQU	$
		RTS
;353535353535353535353535353535353535353535353535353535
;3		Ayashii yatsu set  		      5
;353535353535353535353535353535353535353535353535353535
AYAS0MV		EQU	$
AYAS1MV		EQU	$
AYAS2MV		EQU	$
AYAS3MV		EQU	$
		LDA	ESMODE,X
		SEC
		SBC	#AYAS0
		STA	ENHELP
;
		LDA	ESTIM0,X
		CMP	#80H
		BEQ	AS0010
;
		DEC	ESTIM0,X
		RTS
;-------------------------------------------
AYS0PT		EQU	$
		HEX	2,3,0,1
;
AS0010		EQU	$
		JSL	>RNDSET
		AND	#1FH
		CLC
		ADC	#60H
;;;		LDA	#07FH
		STA	ESTIM0,X
;
		STZ	<WORK0
;
		LDY	#ENNO-1
AS0011		EQU	$
		LDA	ENMODE,Y
		BEQ	AS0012
;
		LDA	ENMYNO,Y
		CMP	#AYAS0
		BNE	AS0012
;
		INC	<WORK0
AS0012		EQU	$
		DEY
		BPL	AS0011
;
		LDA	<WORK0
		CMP	#05H
		BCS	AS0090		; Max 5 set !
;
		LDY	#0CH
		LDA	#AYASI
		JSL	>ENIDSH2
		BMI	AS0090
;
		LDA	<WORK5
		STA	ENXPSL,Y
		LDA	<WORK6
		STA	ENXPSH,Y
		LDA	<WORK7
		STA	ENYPSL,Y
		LDA	<WORK8
		STA	ENYPSH,Y
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
		LDA	#20H
		STA	ENTIM0,Y
;
		LDA	ENHELP
		STA	ENMUKI,Y
		PHX
		TAX
		LDA	AYS0PT,X
		STA	ENWRK0,Y
		PLX
AS0090		EQU	$
		RTS
;353535353535353535353535353535353535353535353535353535
;3		Yuka down      	 		      5
;353535353535353535353535353535353535353535353535353535
YDNXMK		EQU	$
YD0		EQU	$
		HEX	2,2,2,2,2,2
		HEX	1,1,1,1,1,1,1
		HEX	3,3,3,3,3,3
		HEX	0,0,0,0,0,0
;
YD1		EQU	$
;---------------------------------------------
YDNXM2		EQU	$
Y20		EQU	$
;;			1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0
		HEX	  0,3,1,3,0,3,1,3,0,3,1,3,0,3,1,3,0,3,1
		HEX	3,0,3,1,3,0,3,1,3,0,3,1,3,0,3,1,3,0,3,1,3,0
;
;
Y21		EQU	$
;----------------------------------------------
YDNXM3		EQU	$
Y30		EQU	$
		HEX	0,0,0,0,0,0,0,0,0,0,0
Y31		EQU	$
;----------------------------------------------
YDNXM4		EQU	$
Y40		EQU	$
		HEX	2,2,2,2,2,2,2,2,2,2
Y41		EQU	$
;----------------------------------------------
YDNXM5		EQU	$
Y50		EQU	$
		HEX	1,1,1,1,1,1,1,1,1,1,1
Y51		EQU	$
;----------------------------------------------
YDNXM6		EQU	$
Y60		EQU	$
		HEX	3,3,3,3,3,3,3,3,3,3
Y61		EQU	$
;- - - - -
YDNXXL		EQU	$
		HEX	10,F0,00,00
YDNXXH		EQU	$
		HEX	00,FF,00,00
YDNXYL		EQU	$
		HEX	00,00,10,F0
YDNXYH		EQU	$
		HEX	00,00,00,FF
;- - - - - - - - - - - -
YKDWLM		EQU	$
		BYTE	YD1-YD0+1
		BYTE	Y21-Y20+1
		BYTE	Y31-Y30+1
		BYTE	Y41-Y40+1
		BYTE	Y51-Y50+1
		BYTE	Y61-Y60+1
YKDWAL		EQU	$
		BYTE	LOW YDNXMK
		BYTE	LOW YDNXM2
		BYTE	LOW YDNXM3
		BYTE	LOW YDNXM4
		BYTE	LOW YDNXM5
		BYTE	LOW YDNXM6
YKDWAH		EQU	$
		BYTE	HIGH YDNXMK
		BYTE	HIGH YDNXM2
		BYTE	HIGH YDNXM3
		BYTE	HIGH YDNXM4
		BYTE	HIGH YDNXM5
		BYTE	HIGH YDNXM6
;- - - - - - - - - - - -
YKDW0MV		EQU	$
YKDW1MV		EQU	$
GAYK0MV		EQU	$
GAYK1MV		EQU	$
GAYK2MV		EQU	$
GAYK3MV		EQU	$
		LDA	ESTIM0,X
		BEQ	YKD000
;
		LDA	ESWRK0,X
		BEQ	YKD0F0
;
		DEC	ESTIM0,X
		RTS
YKD0F0		EQU	$
		LDA	ESXPSL,X
		CMP	<SCCH2
		LDA	ESXPSH,X
		SBC	<SCCH2+1
		BNE	YKD0F8
;
		LDA	ESYPSL,X
		CMP	<SCCV2
		LDA	ESYPSH,X
		SBC	<SCCV2+1
		BNE	YKD0F8
;
		INC	ESWRK0,X
YKD0F8		EQU	$
		RTS
;----------------------------------------------
YKD000		EQU	$
		LDA	#10H
		STA	ESTIM0,X				
;
		JSR	YUKADW
;
		INC	ESSTAT,X
;;		LDY	ESSTAT,X
;
		LDA	ESMODE,X
		SEC
		SBC	#YKDW0
		TAY
;
		LDA	YKDWAL,Y
		STA	<WORK0
		LDA	YKDWAH,Y
		STA	<WORK1
;
		LDA	YKDWLM,Y
		CMP	ESSTAT,X
		BNE	YKD090
;
;;		CMP	#YKDW1
;;		BEQ	YKD1000
;;;
;;		CPY	#YD1-YD0+1
;;		BNE	YKD090
;
		STZ	ESMODE,X
YKD090		EQU	$
		LDY	ESSTAT,X
		DEY
;;		LDA	YDNXMK,Y
		LDA	(<WORK0),Y
;;;;;;;;;;;;YKDWSB		EQU	$
		TAY
		LDA	ESXPSL,X
		CLC
		ADC	YDNXXL,Y
		STA	ESXPSL,X
		LDA	ESXPSH,X
		ADC	YDNXXH,Y
		STA	ESXPSH,X
;
		LDA	ESYPSL,X
		CLC
		ADC	YDNXYL,Y
		STA	ESYPSL,X
		LDA	ESYPSH,X
		ADC	YDNXYH,Y
		STA	ESYPSH,X
;
		RTS
;- - - - - - - - - - - - - - - - - -
;;YKDW1MV		EQU	$
;;		LDA	ESTIM0,X
;;		BEQ	YK1010
;;		DEC	ESTIM0,X
;;		RTS
;;YK1010		EQU	$
;;		LDA	#30H
;;		STA	ESTIM0,X				
;;;
;;		JSR	YUKADW
;;		INC	ESSTAT,X
;;		LDY	ESSTAT,X
;- - - - - - - - - - - - - - - - - -
;;YKD1000		EQU	$
;;		CPY	#Y21-Y20+1
;;		BNE	YK1090
;;;
;;		STZ	ESMODE,X
;;		RTS
;;YK1090		EQU	$
;;		DEY
;;		LDA	YDNXM2,Y
;;		BRA	YKDWSB
;---------------------------------------------
;;		TAY
;;		LDA	ESXPSL,X
;;		CLC
;;		ADC	YDNXXL,Y
;;		STA	ESXPSL,X
;;		LDA	ESXPSH,X
;;		ADC	YDNXXH,Y
;;		STA	ESXPSH,X
;;;
;;		LDA	ESYPSL,X
;;		CLC
;;		ADC	YDNXYL,Y
;;		STA	ESYPSL,X
;;		LDA	ESYPSH,X
;;		ADC	YDNXYH,Y
;;		STA	ESYPSH,X
;;;
;;		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%			      %	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YUKADW		EQU	$
		TXY
		PHX
		LDX	#E2NO-1
YKD010		EQU	$
		LDA	>E2MODE,X
		BNE	YKD020
;
		LDA	#03H
		STA	>E2MODE,X
;
		LDA	ESXPSL,Y
		STA	>E2XPSL,X
;		
		JSL	>SDLRCK
		ORA	#1FH
		STA	SOUND2	;(S)
;
		LDA	ESXPSH,Y
		STA	>E2XPSH,X
;
		LDA	ESYPSL,Y
		CLC
		ADC	#10H
		STA	>E2YPSL,X
;
		LDA	ESYPSH,Y
		ADC	#00H
		STA	>E2YPSH,X
;
		LDA	#1FH
		STA	>E2TIM0,X
;
		STA	EN2FLG
		BRA	YKD030
YKD020		EQU	$
		DEX
		BPL	YKD010
YKD030		EQU	$
		PLX
		RTS
;353535353535353535353535353535353535353535353535353535
;3		Hand     	 		      5
;353535353535353535353535353535353535353535353535353535
HNDSTMV		EQU	$
		LDA	ESTIM0,X
		CMP	#80H
		BEQ	HD0010
;
		LDA	<FRCNT
		AND	#01H
		BNE	HD0008
;
		DEC	ESTIM0,X
HD0008		EQU	$
		RTS
;- - - - - - - - - - - - - - - - - -
HD0010		EQU	$
		LDA	#07FH
		STA	ESTIM0,X
;
		LDA	#HANDS
		LDY	#0CH
		JSL	>ENIDSH2
		BMI	HD0090
;
;;		PHX
;;		LDA	<PLMKCH
;;		LSR	A
;;		TAX
		LDA	<PLXPS1
;;		CLC
;;		ADC	SKSXAL,X
		STA	ENXPSL,Y
		LDA	<PLXPS0
;;		ADC	SKSXAH,X
		STA	ENXPSH,Y
;
		LDA	<PLYPS1
;;		CLC
;;		ADC	SKSYAL,X
		STA	ENYPSL,Y
		LDA	<PLYPS0
;;		ADC	SKSYAH,X
		STA	ENYPSH,Y
;
;;		PLX
		LDA	#0D0H
		STA	ENZPSL,Y
;
		PHX
		TYX
;;		JSL	>SDLRCE
;;		ORA	#20H
;;		STA	SOUND2	;(S)
		LDA	#20H
		JSL	>SDLRE2	;(S)
		PLX
;
		LDA	<PLBGCKF
		STA	ENKAIF,Y
HD0090		EQU	$
		RTS
;353535353535353535353535353535353535353535353535353535
;3		Slime set     	 		      5
;353535353535353535353535353535353535353535353535353535
;- - Randam address Slime SET - - - - - - - - - - - - - - - - - - - - - - - - -
SLST0MV		EQU	$
		LDA	ESTIM0,X
		BEQ	SL0010
		DEC	ESTIM0,X
		RTS
SL0010		EQU	$
		LDA	#0A0H
		STA	ESTIM0,X
;
		STZ	<WORK0
;
		LDY	#ENNO-1
SLS011		EQU	$
		LDA	ENMODE,Y
		BEQ	SLS012
;
		LDA	ENMYNO,Y
		CMP	#SLIME
		BNE	SLS012
;
		INC	<WORK0
SLS012		EQU	$
		DEY
		BPL	SLS011
;
		LDA	<WORK0
		CMP	#05H
		BCS	SL0090		; Max 5 set !
;
		LDA	#SLIME
		LDY	#0CH	
		JSL	>ENIDSH2
		BMI	SL0090
;
		PHX
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	<PLXPS1
		CLC
		ADC	SKSXAL,X
		STA	ENXPSL,Y
		LDA	<PLXPS0
		ADC	SKSXAH,X
		STA	ENXPSH,Y
;
		LDA	<PLYPS1
		CLC
		ADC	SKSYAL,X
		STA	ENYPSL,Y
		LDA	<PLYPS0
		ADC	SKSYAH,X
		STA	ENYPSH,Y
;
		PLX
		LDA	#0C0H
		STA	ENZPSL,Y
;
		LDA	<PLBGCKF
		STA	ENKAIF,Y
;
		LDA	#02H
		STA	ENSTAT,Y
;
		STA	ENWRK3,Y
		STA	ENWRK2,Y
;
		JSL	>RNDSET
		AND	#1FH
		ORA	#10H
		STA	ENKBMK,Y
;
;;		JSR	DWSDST
SL0090		EQU	$
		RTS
;;;=======================================================
;;SLST1MV		EQU	$
;;		RTS
;353535353535353535353535353535353535353535353535353535
;3		Komori boss BG move 		      5
;353535353535353535353535353535353535353535353535353535
BCONTMV		EQU	$		
		LDA	ENMODE+00H
		CMP	#EBAKU
		BNE     BCO003		; Boss fail ?
;					; yes !				
		STZ	ESMODE,X
;
		BRA	BCO008
BCO003		EQU	$
;- - - BG 1 move controle - - -
		LDA	ESSTAT,X
		BNE	BCO010
;
		INC	ESTIM0,X
		LDA	ESTIM0,X
		CMP	#20H
		BNE	BCO008
;
		STZ	ESTIM0,X
;
		JSL	>RNDSET
		AND	#03H
		LDY	ESXPSL,X
		BNE	BCO002	; Only L R ?
		AND	#01H	; YES !
BCO002		EQU	$
		ASL	A
		STA	BG1MFG
;
		JSL	>RNDSET
		AND	#7FH
		ADC	#80H
		STA	ESTIM0,X
		INC	ESSTAT,X
		RTS
BCO008		EQU	$
		LDA	#01H
		STA	BG1MFG		; Stop !
;
		RTS
;- - - - - - - - - - - - - - - - - - 
BCO010		EQU	$
		DEC	ESTIM0,X
		BNE	BCO020
;
		STZ	ESSTAT,X
;
;;		LDA	#30H+80H
;;		STA	ESTIM0,X
BCO020		EQU	$
		RTS
;
;
;
;
;
;
		RTS
;353535353535353535353535353535353535353535353535353535
;3		Skelton set			      5
;353535353535353535353535353535353535353535353535353535
SKSXAL		EQU	$
		HEX	00,00,D0,30
SKSYAL		EQU	$
		HEX	D8,38,08,08
SKSXAH		EQU	$
		HEX	00,00,FF,00
SKSYAH		EQU	$
		HEX	FF,00,00,00
;- - Randam address shitei skelton- - - - - - - - - - - - - - - - - - - - - - - - -
SKST0MV		EQU	$
		LDA	ESTIM0,X
		BEQ	SS0010
;         
		LDA	<FRCNT
		AND	#01H
		BNE	SS000F
;
		DEC	ESTIM0,X
SS000F		EQU	$
		RTS
;
SS0010		EQU	$
		LDA	#030H
;
		INC	ESSTAT,X
		LDY	ESSTAT,X
		CPY	#04H
		BNE	SS0011
;
		STZ	ESSTAT,X
;
		LDA	#0D0H
SS0011		EQU	$
		STA	ESTIM0,X
;
		LDA	#SKELT
		LDY	#0CH
		JSL	>ENIDSH2
		BMI	SS0090
;
		PHX
		LDA	<PLMKCH
		LSR	A
		TAX
		LDA	<PLXPS1
		CLC
		ADC	SKSXAL,X
		STA	ENXPSL,Y
		LDA	<PLXPS0
		ADC	SKSXAH,X
		STA	ENXPSH,Y
;
		LDA	<PLYPS1
		CLC
		ADC	SKSYAL,X
		STA	ENYPSL,Y
		LDA	<PLYPS0
		ADC	SKSYAH,X
		STA	ENYPSH,Y
;
		PLX
		LDA	#090H
		STA	ENZPSL,Y
;
		LDA	<PLBGCKF
		STA	ENKAIF,Y
;
		RTS
;
DWSDST		EQU	$
		PHX
		TYX
;;		JSL	>SDLRCE
;;		ORA	#20H
;;		STA	SOUND2		; (S)
		LDA	#20H
		JSL	>SDLRE2	;(S)
		PLX
SS0090		EQU	$
		RTS
;;;
;======Kotei address set skelton===========================================
S1CKTM		EQU	$
		HEX	FF,E0,C0,A0,80,60,40,20
;;		HEX	20,40,60,80,A0,C0,E0,FF
;
SKST1MV		EQU	$
		LDA	ESXPSL,X
		CMP	<SCCH2
		LDA	ESXPSH,X
		SBC	<SCCH2+1
		BNE	S10008
;
		LDA	ESYPSL,X
		CMP	<SCCV2
		LDA	ESYPSH,X
		SBC	<SCCV2+1
		BNE	S10008		; Display in ?
;					; yes !
		LDA	ESSTAT,X
		BNE	S10010
;
;;		LDA	<KEYA2
;;		BPL	S10008
		LDA	BXOPEN
		BEQ	S10008		; Item box open ?
		INC	ESSTAT,X
S10008		EQU	$
		RTS
;
S10010		EQU	$
		INC	ESSTAT,X
		CMP	S1CKTM,X
		BNE	S10020
;
		STZ	ESMODE,X
;
		LDA	#SKELT
		LDY	#0CH
		JSL	>ENIDSH2
		BMI	S10090
;
		LDA	<WORK5
		STA	ENXPSL,Y
		LDA	<WORK6
		STA	ENXPSH,Y
;
		LDA	<WORK7
		STA	ENYPSL,Y
		LDA	<WORK8
		STA	ENYPSH,Y
;
		LDA	#0E0H
		STA	ENZPSL,Y
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
		JSR	DWSDST
S10090		EQU	$
S10020		EQU	$
		RTS
;======Swich on hebi down (hazure swich)===========================================
HSCKTM		EQU	$
		HEX	20,30,40,50,60,70,80,90 
;
HEBSTMV		EQU	$
BMBSTMV		EQU	$
		LDA	ESSTAT,X
		BNE	HS0010
;
;;		LDA	<KEYA2
;;		BPL	S10008
		LDA	SWCHFG2
		BEQ	HS0008		; Item box open ?
		INC	ESSTAT,X
HS0008		EQU	$
		RTS
;
HS0010		EQU	$
		INC	ESSTAT,X
		CMP	HSCKTM,X
		BNE	HS0020
;
		LDA	#HEBI0
		JSL	>ENIDSH
		BMI	HS0090
;
		LDA	<WORK5
		STA	ENXPSL,Y
		LDA	<WORK6
		STA	ENXPSH,Y
;
		LDA	<WORK7
		STA	ENYPSL,Y
		LDA	<WORK8
		STA	ENYPSH,Y
;
		LDA	#0C0H
		STA	ENZPSL,Y
		STA	ENWRK3,Y
;
		LDA	ENMOD2,Y
		ORA	#00010000B
		STA	ENMOD2,Y
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
		JSR	DWSDST
;
		LDA	ESMODE,X
		STZ	ESMODE,X
		CMP	#BMBST
		BNE	HS0070
;
		LDA	#HEBO0
		STA	ENMYNO,Y
;
                JSL     >BOMBST
;
                LDA     #70H
                STA     ENTIM1,Y
NBS010          EQU     $
;;                RTS
;------------------------------------------------
HS0070		EQU	$
;
HS0090		EQU	$
HS0020		EQU	$
		RTS
;=================================================
TM0SMK		EQU	$
		HEX	02,02,02,02,01,01,01,01
		HEX	03,03,03,03,00,00,00,00
TM0SXL		EQU	$
		HEX	40,60,90,B0,F0,F0,F0,F0
		HEX	B0,90,60,40,00,00,00,00
;
;		HEX	38,58,98,B8,F0,F0,F0,F0
;		HEX	B8,98,58,38,00,00,00,00
;TM0SXH		EQU	$
TM0SYL		EQU	$
		HEX	10,10,10,10,40,60,A0,C0
		HEX	F0,F0,F0,F0,C0,A0,60,40
;TM0SYH		EQU	$
;- - - - - - - - - - - - - - - - - - - - - - - -
TAMS0MV		EQU	$
		LDA	ESXPSL,X
		CMP	<SCCH2
		LDA	ESXPSH,X
		SBC	<SCCH2+1
		BNE	TS0000
		LDA	ESYPSL,X
		CMP	<SCCV2
		LDA	ESYPSH,X
		SBC	<SCCV2+1
		BNE	TS0000
;
		LDA	<FRCNT
		AND	#0FH
		BNE	TS0000
;
		STZ	<WORKE		; (x) Hosei nashi
		STZ	ENHELP2		; small size !
;
		JSL	>RNDSET
		AND	#0FH
		TAY
		LDA	TM0SMK,Y
		STA	ENHELP
		LDA	TM0SXL,Y
		STA	ESXPSL,X
;;		LDA	TM0SXH,Y
		LDA	#00H
		CLC
		ADC	NOWRMX
		STA	ESXPSH,X
		LDA	TM0SYL,Y
		STA	ESYPSL,X
;;		LDA	TM0SYH,Y
		LDA	#01H
		CLC
		ADC	NOWRMY
		STA	ESYPSH,X
;
		JSR	TAMA0ST
TS0000		EQU	$
		RTS
;;		LDA	ESTIM0,X
;;		BEQ	TMS000
;;		DEC	ESTIM0,X
;;;
;;		CMP	#0A0H
;;		BCS	TMS090
;;;
;;		AND	#1FH
;;		BNE	TMS090
;;;
;;		JMP	TAMA0ST
;;TMS000		EQU	$
;;		LDA	#0B0H
;;		STA	ESTIM0,X		
;;TMS090		EQU	$
;;		RTS
;;TMS097		EQU	$
;;		LDA	#0FFH
;;		STA	ESTIM0,X		
;;		RTS
;=================================================
TAMS1MV		EQU	$
		LDA	ESXPSL,X
		CMP	<SCCH2
		LDA	ESXPSH,X
		SBC	<SCCH2+1
		BNE	TS1060
;
		LDA	<FRCNT
		AND	#01H
		BNE	TS1000
;
		LDA	ESTIM0,X
		BEQ	TS1000
		DEC	ESTIM0,X
TS1000		EQU	$
		LDA	#02H
		STA	ENHELP		; Move muki (DOWN)
;
		STZ	ENHELP2
;
		DEC	ESSTAT,X
		BPL	TS1050
;
		LDA	#38H
		STA	ESSTAT,X
;
		LDA	ESTIM0,X
		BNE	TS1010		; Big tama set ?
;					; yes !
		LDA	#0A0H	
   		STA	ESTIM0,X	; Next BIG set time set !
		STA	ENHELP2
		LDA	#08H
		STA	<WORKE		;(x) hosei !
		BRA	TS1030
TS1010		EQU	$
		JSL	>RNDSET
		AND	#02H
;;		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	<WORKE		; L or R set !		
TS1030		EQU	$
		JSR	TAMA0ST
TS1050		EQU	$
		RTS
TS1060		EQU	$
		LDA	#0FFH
		STA	ESTIM0,X
		RTS
;
;
;
;
;;		LDA	ESTIM0,X
;;		BEQ	TMS097
;;		DEC	ESTIM0,X
;;;
;;		CMP	#0D0H
;;		BCS	TMS090
;;;
;;		AND	#3FH
;;		BNE	TMS090 
;
;===================================
TAMA0ST		EQU	$
		LDA	#TAMA0
		JSL	>ENIDSH
		BMI	TMS0A0
;
		PHX
;;		LDA	ESSTAT,X
;;		TAX
		LDA	<WORK5
		CLC
		ADC	<WORKE
		STA	ENXPSL,Y
		LDA	<WORK6
		ADC	#00H
		STA	ENXPSH,Y
		LDA	<WORK7
		SEC
		SBC	#01H
		STA	ENYPSL,Y
		LDA	<WORK8
		SBC	#00H
		STA	ENYPSH,Y
;
		LDX	ENHELP
		LDA	TMSXSD,X
		STA	ENXSPD,Y
		LDA	TMSYSD,X
		STA	ENYSPD,Y
		PLX
;
		LDA	ESKAIF,X
		STA	ENKAIF,Y
;
;;		LDA	ESMODE,X
;;		CMP	#TAMS1
;;		BNE	TMS098
		LDA	ENHELP2
		BEQ	TMS098
;
		STA	ENSTAT,Y	; big size set !
;
		LDA	ENYPSL,Y
		CLC
		ADC	#08H
		STA	ENYPSL,Y
;
		LDA	#03H
		STA	ENMOD0,Y	; 4 TSU
		LDA	#09H
		STA	ENMOD3,Y
TMS098		EQU	$
		LDA	#40H
		STA	ENTIM2,Y
		PHX
		TYX
;;		JSL	>SDLRCE
;;		ORA	#07H
;;		STA	SOUND3	;(S)
		LDA	#07H
		JSL	>SDLRE3	;(S)
		PLX
TMS0A0		EQU	$
		RTS
;- - - - - - - - - - - - - - - - - - - - -
TMSXSD		EQU	$
		HEX	18,E8,00,00
TMSYSD		EQU	$
		HEX	00,00,18,E8
;=================================================
DOOORMV		EQU	$
		TXA
		STA	DOORID
		RTS
;=================================================
HICLXL		EQU	$
		HEX	20,40,E0
HICLXH		EQU	$
		HEX	01,03,02
HICLYL		EQU	$
		HEX	00,B0,60
HICLYH		EQU	$
		HEX	01,03,01
HEICAL		EQU	$
		PHB
		PHK
		PLB
;
		LDA	#HEIS3		; 
		LDY	#00H
		JSL	>ENIDSH2
		BMI	HIC020
;
;;		JSL	>SDLRCE
;;		LDA	#0CH
;;		STA	SOUND0	;(S)	; BGM set 
;
		PHX
		LDA	ENMYNO,X
		LDX	#00H
		CMP	#BABA1
		BEQ	HIC010
		INX
		CMP	#HIGEE
		BEQ	HIC010
		INX
HIC010		EQU	$
		LDA	HICLXL,X
		STA	ENXPSL,Y
		LDA	HICLXH,X
		CLC
		ADC	GRRMXH
		STA	ENXPSH,Y
		LDA	HICLYL,X
		STA	ENYPSL,Y
		LDA	HICLYH,X
		CLC
		ADC	GRRMYH
		STA	ENYPSH,Y
		PLX
;
		LDA	#00H
		STA	ENKAIF,Y
		LDA	#04H
		STA	ENLIFE,Y
;
		LDA	#80H
		STA	ENMOD5,Y
		LDA	#80H+10H	; 10H yarare sound !!
		STA	ENMOD4,Y
;
		LDA	#00001011B
		STA	ENCLOR,Y
HIC020		EQU	$
		PLB
		RTL
;=================================================
;HEIS0ST		EQU	$
;		RTS
;L		LDA	CALFLG
;L		BEQ     H0S010		; called ?
;L;					
;;L;		LDA	<KEYA1L
;L;;		CMP	#11000000B
;L;;		BNE	H0S010
;L;;;
;LH0S008		EQU	$		; yes !
;L		LDA	ESXPSL,X
;L		CMP	<SCCH2
;L		LDA	ESXPSH,X
;L		SBC	<SCCH2+1
;L		BEQ	H0S010
;L		LDA	ESYPSL,X
;L		CMP	<SCCV2
;L		LDA	ESYPSH,X
;L		SBC	<SCCV2+1
;L		BEQ	H0S010		; out display ?
;L;					; yes !
;L;		LDY	#ENNO-1
;L;HS0000		EQU	$
;L;		LDA	ENMODE,Y
;L;		BEQ	HS0002
;L;;
;L;		LDA	ENMYNO,Y
;L;		CMP	#HEIS3
;L;		BNE	HS0002
;L;;
;L;		LDA	ENXPSL,Y
;L;		CMP	<SCCH2
;L;		LDA	ENXPSH,Y
;L;		SBC	<SCCH2+1
;L;		BNE	HS0002
;L;;
;L;		LDA	ENYPSL,Y
;L;		CMP	<SCCV2
;L;		LDA	ENYPSH,Y
;L;		SBC	<SCCV2+1
;L;		BEQ	H0S00C8		; Already set ?
;L;;
;L;HS0002		EQU	$		; no !
;L;		DEY
;L;		BPL	HS0000		
;L;
;L		LDA	#HEIS3		; 
;L		JSL	>ENIDSH
;L		BMI	H0S010
;L;
;L		LDA	ESXPSL,X
;L		STA	ENXPSL,Y
;L		LDA	ESXPSH,X
;L		STA	ENXPSH,Y
;L		LDA	ESYPSL,X
;L		STA	ENYPSL,Y
;L		LDA	ESYPSH,X
;L		STA	ENYPSH,Y
;L;
;L;;		LDA	ESKAIF,X
;L		LDA	#00H
;L		STA	ENKAIF,Y
;L;
;L		LDA	#80H
;L		STA	ENMOD5,Y
;L;
;LH0S00C8		EQU	$
;L		DEC	CALFLG
;L		STZ	ESMODE,X
;L;
;LH0S010		EQU	$
;L		RTS
;=================================================
;=================================================
;=================================================
;ESSXAD		EQU	$
;		BYTE	0F0H,010H,0F0H,010H
;ESSXAH		EQU	$
;		BYTE	0FFH,000H,0FFH,000H
;ESSYAD		EQU	$
;		BYTE	0F0H,0F0H,010H,010H
;ESSYAH		EQU	$
;		BYTE	0FFH,0FFH,000H,000H
;;
;ES1000		EQU	$
;ES2000		EQU	$
;ES3000		EQU	$
;		LDA	<PLXPS1
;		SEC
;		SBC	#02H
;		STA	<WORK0
;		LDA	<PLXPS0
;		SBC	#00H
;		STA	<WORK8
;		LDA	<PLYPS1
;		SEC
;		SBC	#02H
;		STA	<WORK1
;		LDA	<PLYPS0
;		SBC	#00H
;		STA	<WORK9
;		LDA	#04H
;		STA	<WORK2
;		STA	<WORK3
;;	
;		LDA	ESXPSL,X
;		SEC
;		SBC	#02H
;		STA	<WORK4
;		LDA	ESXPSH,X
;		SBC	#00H
;		STA	<WORKA
;		LDA	ESYPSL,X
;		SEC
;		SBC	#02H
;		STA	<WORK5
;		LDA	ESYPSH,X
;		SBC	#00H
;		STA	<WORKB
;		LDA	#04H
;		STA	<WORK6
;		STA	<WORK7
;		JSL	>CROJCK2
;		BCC	ES10A0		; player area in ?
;;					; yes !
;		LDA	ESSTAT,X
;		BNE	ES1090
;;
;		INC	ESSTAT,X
;;	
;;;		LDA	<FRCNT
;;;		AND	#07FH
;;;		BNE	ES1090
;		LDA	ESXPSL,X
;		STA	<WORK0
;		LDA	ESXPSH,X
;		STA	<WORK1
;		LDA	ESYPSL,X
;		STA	<WORK2
;		LDA	ESYPSH,X
;		STA	<WORK3
;;
;		LDA	#03H
;		STA	<WORK4
;ES1002		EQU	$
;		LDY	#ENNO-1
;ES1008		EQU	$
;		LDA	ENMODE,Y
;		BEQ	ES1010
;		DEY
;		BPL	ES1008
;		RTS
;ES1010		EQU	$	
;		LDA	#EINIT
;		STA	ENMODE,Y
;		LDA	#OCTA1
;		STA	ENMYNO,Y
;		LDA	ESKAIF,X
;		STA	ENKAIF,Y
;		PHX
;;
;		LDX	<WORK4
;		LDA	<WORK0
;		CLC
;		ADC	ESSXAD,X
;		STA	ENXPSL,Y
;		LDA	<WORK1
;		ADC	ESSXAH,X
;		STA	ENXPSH,Y
;		LDA	<WORK2
;       	CLC
;		ADC	ESSYAD,X
;		STA	ENYPSL,Y
;		LDA	<WORK3
;		ADC	ESSYAH,X
;		STA	ENYPSH,Y
;;
;		TYX
;		JSL	>ENMDST
;		PLX
;		DEC	<WORK4
;		BPL	ES1002	     ; 4 of set
;ES1090		EQU	$
;		RTS
;ES10A0		EQU	$
;		STZ	ESSTAT,X
;		RTS
;=================================================================================================
ENOXDL		EQU	$
		BYTE	030H,0C0H
ENOXDH		EQU	$
		BYTE	001H,0FFH
;
EOT0A0R		EQU	$
ESSRTS		EQU	$
		RTS
;
ESSAVE		EQU	$
		LDA	<DJFLG
		BNE	ESSRTS
;
;;		LDA	ESMODE,X
;;		CMP	#HESET
;;		BEQ	ESSRTS
;---- X check ---
		LDA	<FRCNT
		AND	#01H
		STA	<WORK1
		STA	<WORK2
		TAY
		LDA	<SCCH2
		CLC
		ADC	ENOXDL,Y
		ROL	<WORK0
		CMP	ESXPSL,X
;
		PHP
;
		LDA	<SCCH2+1
		LSR	<WORK0
		ADC	ENOXDH,Y
;
		PLP
		SBC	ESXPSH,X
		STA	<WORK0
;
		LSR	<WORK1
		BCC	ENOT10
;
		EOR	#80H
		STA	<WORK0
ENOT10		EQU	$
		LDA	<WORK0
		BMI	ESCLER
;---- Y check ---
		LDA	<SCCV2
		CLC
		ADC	ENOXDL,Y
		ROL	<WORK0
		CMP	ESYPSL,X
;
		PHP
;
		LDA	<SCCV2+1
		LSR	<WORK0
		ADC	ENOXDH,Y
;
		PLP
		SBC	ESYPSH,X
		STA	<WORK0
;
		LSR	<WORK2
		BCC	ENOT30
;
		EOR	#80H
		STA	<WORK0
ENOT30		EQU	$
		LDA	<WORK0
		BPL	EOT0A0S
;- - - - RESET ----
ESCLER		EQU	$
		STZ	ESMODE,X
;
		TXA
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	ESSWAD,Y
		STA	<WORK0
		CMP	#0FFFFH
		PHP
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	#ENITSW
		STA	<WORK1
		PLP
		MEM8
		SEP	#00100000B
;
		BCS	EOT0A0S			; data set enemy ?
;						; yes ! on off bit clear !
		LDA	#BANK ENITSW
		STA	<WORK3
;
                LDA     <WORK0		; x pos !
                AND     #07H
                TAY 
                LDA     [<WORK1] 
                AND     GONOF2,Y
                STA     [<WORK1] 
EOT0A0S		EQU	$
		RTS
;- - - - - - - 
;GONOF2		EQU	$
;		BYTE	01111111B
;		BYTE	10111111B
;		BYTE	11011111B
;		BYTE	11101111B
;		BYTE	11110111B
;		BYTE	11111011B
;		BYTE	11111101B
;		BYTE	11111110B
;=================================================================================================
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;ESCLCK		EQU	$
;;		LDA	<GAMEMD
;		BNE	ESCL90          ; Scroll ?
;;
;		LDA	ESXPSH,X	; no!
;		AND	#11111110B
;		CMP	NOWRMX
;		BNE	ESCL80
;		LDA	ESYPSH,X
;		AND	#11111110B
;		CMP     NOWRMY
;		BEQ	ESCL90
;ESCL80		EQU	$
;		STZ	ESMODE,X
;ESCL90		EQU	$
;		RTS
;----------------------------------------
;;****************************************************************
;;*		MANY2 EN SET					*
;;****************************************************************
;MA2CDT		EQU	$
;		BYTE	0FFH,001H
;MA2CD1		EQU	$
;		BYTE	0FFH,000H
;;
;MANY2C		EQU	$
;;
;		JSR	MAN2CE			;EN SET
;;
;		LDA	<PLXPS0
;		CMP	ESXPSH,X
;		BNE	MA2C010
;		LDA	<PLXPS1
;		CMP	ESXPSL,X
;		BEQ	MA2C020
;MA2C010		EQU	$
;		LDA	#000H
;		ROL	A
;		TAY
;;
;		LDA	ESXPSL,X
;		CLC
;		ADC	MA2CDT,Y
;		STA	ESXPSL,X
;		LDA	ESXPSH,X
;		ADC	MA2CD1,Y
;		STA	ESXPSH,X
;
;MA2C020		EQU	$
;		LDA	<PLYPS0
;		CMP	ESYPSH,X
;		BNE	MA2C030
;		LDA	<PLYPS1
;		CMP	ESYPSL,X
;		BEQ	MA2C040
;MA2C030		EQU	$
;		LDA	#000H
;		ROL	A
;		TAY
;;
;		LDA	ESYPSL,X
;		CLC
;		ADC	MA2CDT,Y
;		STA	ESYPSL,X
;		LDA	ESYPSH,X
;		ADC	MA2CD1,Y
;		STA	ESYPSH,X
;;
;MA2C040		EQU	$
;		LDA	#000H
;		STA	>KRYBUF+20H
;		JSL	>RNDSET
;		ORA	<FRCNT
;		AND	#03FH
;		BNE	MA2C050
;		LDA	#001
;		STA	>KRYBUF+20H
;MA2C050		EQU	$
;		RTS
;;
;;----------------------------------------
;MAN2CE		EQU	$
;		LDA	ESXPSL,X		;P(X,Y)
;		STA	<WORK0
;		LDA	ESXPSH,X
;		STA	<WORK1
;;
;		LDA	ESYPSL,X
;		STA	<WORK2
;		LDA	ESYPSH,X
;		STA	<WORK3
;;
;		LDA	#040H			;R
;		STA	<WORK4
;		STZ	<WORK5
;;
;		LDA	ESTIM0,X			;
;		CLC
;		ADC	#001H
;		STA	ESTIM0,X
;		BCC	MAN2C20
;		INC	ESWRK0,X
;;
;MAN2C20		EQU	$
;		JSR	MAN2C10
;;
;		LDA	ESSTAT,X		;NEXT POINT
;		DEC	A
;		AND	#00FH
;		STA	ESSTAT,X
;		BNE	MAN2C20			;END?
;;		LDA	#008H			;Y
;;		STA	ESSTAT,X
;;
;		RTS
;MAN2C10		EQU	$
;		LDA	ESSTAT,X
;		STA	<WORKE
;		STZ	<WORKF
;		LDA	#006			;HABA
;		STA	<WORKD
;MAN2C30		EQU	$
;		ASL	<WORKE
;		ROL	<WORKF
;		DEC	<WORKD
;		BNE	MAN2C30
;;
;		LDA	<WORKE
;		CLC
;		ADC	ESTIM0,X
;		STA	<WORK6
;		LDA	ESWRK0,X
;		ADC	<WORKF
;		STA	<WORK7
;;
;		JSL	>ENENSET		;EN KEISAN
;;
;		PHX				;SET POINT
;		LDA	ESSTAT,X
;		TAX
;		LDA	<WORK8
;		STA	>KRXBUF,X
;		LDA	<WORK9
;		STA	>KRXBUF+10H,X
;		LDA	<WORKA
;		STA	>KRYBUF,X
;		LDA	<WORKB
;		STA	>KRYBUF+10H,X
;		PLX
;
;		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		Enemy data set   			      %		
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENDTST		EQU	$
		PHB
		PHK
		PLB
;
		JSR	ENSVST		; for scroll c set save !
;
		STZ	PYDMBT1		; cach reset !
		STZ	PYDMBT		; cach reset !
;;		LDA	#02H
;;		STA	PYDMBT1		; cach reset !
;
		JSL	>ETCLER     ;2
;
		MEM16
		REP	#20H
;
                LDA	#0FFFFH
		STA     GRRMLY		; For ground display limit check (not use)
		STA     GRRMLX
;;		STA     GRRMLY+1
;;		STA     GRRMLX+1
;
		LDX	#00H
		LDA	ERXYCT
DCK010		EQU	$
		CMP	DJCKBF,X
		BEQ	DCK020		
		INX
		INX
		CPX	#06H+1
		BCC	DCK010		; New room in ?
;					; yes !
		LDA	DJCKBF+6	; old buffer reset !
		STA	<WORK0
;
		LDA	DJCKBF+4	; next buffer set !
		STA	DJCKBF+6
		LDA	DJCKBF+2
		STA	DJCKBF+4
		LDA	DJCKBF+0
		STA	DJCKBF+2
		LDA	ERXYCT
		STA	DJCKBF+0
;
;;		LDY	#00H
;;		LDX	#00H
;;DCK010		EQU	$
;;		LDA	DJCKBF,Y
;;		CMP	DJCKBF+2,X
;;		BEQ	DCK020		
;;		INX
;;		INX
;;		CPX	#04H+1
;;		BCC	DCK010
;;		INY
;;		INY
;;		TYX
;;		CPY	#04H+1
;;;		BCC	DCK010		; chigau room 4 kai in ?	
;- - - - OLD BUFFER CLER - - - -	; yes !
		IDX16
		REP	#10H
;
;;                LDA     DJCKBF+6
		LDA	<WORK0
		CMP	#0FFFFH
		BEQ	DCK020
                ASL     A
                TAX
                LDA     #0000000000000000B
                STA     >ENDTBF,X
DCK020		EQU	$
		MEM8
		IDX8
		SEP	#30H
;- - - - -
		JSR	ENDS00
;- - - - -
		PLB
		RTL
;==================================
ESS090		EQU	$
		RTS
;
ENSVST		EQU	$
		LDA	<DJFLG
		BEQ	ESS090
;
		STA	ESVFLG
;
		LDX	#ENNO-1
ESV010		EQU	$
		STZ	ENMODES,X
;
		LDA	ENMYNO,X
		STA	ENMYNOS,X
		LDA	ENXPSL,X
		STA	ENXPSLS,X
		LDA	ENCHPT,X
		STA	ENCHPTS,X
;
		LDA	ENXPSH,X
		STA	ENXPSHS,X
;
		LDA	ENYPSL,X
		STA	ENYPSLS,X
;
		LDA	ENYPSH,X
		STA	ENYPSHS,X
;
		LDA	ENDSPL,X
		BNE	ESV070
;
		LDA	ENMODE,X
		CMP	#EBAKU
		BEQ	ESV070
		CMP	#ECACH
		BEQ	ESV070
;
		STA	ENMODES,X
;
		LDA	ENWRK0,X
		STA	ENWRK0S,X
		LDA	ENKBMK,X
		STA	ENKBMKS,X
		LDA	ENCLOR,X
		STA	ENCLORS,X
		LDA	ENFLCL,X
		STA	ENFLCLS,X
		LDA	ENMUKI,X
		STA	ENMUKIS,X
		LDA	ENMOD0,X
		STA	ENMOD0S,X
		LDA	ENKAIF,X
		STA	ENKAIFS,X
		LDA	ENSTAT,X
		STA	ENSTATS,X
		LDA	ENMOD2,X
		STA	ENMOD2S,X
		LDA	ENWRK1,X
		STA	>ENWRK1S,X
		LDA	ENWRK2,X
		STA	>ENWRK2S,X
		LDA	ENWRK3,X
		STA	>ENWRK3S,X
		LDA	ENCONT,X
		STA	>ENCONTS,X
		LDA	ENZPSL,X
		STA	>ENZPSLS,X
		LDA	ENTIM0,X
		STA	>ENTIM0S,X
		LDA	>ENFRNO,X
		STA	>ENFRNOS,X
		LDA	ENNOCR,X
		STA	>ENNOCRS,X
;
ESV070		EQU	$
		DEX
		BMI	ESV080
;
		JMP	ESV010
;
ESV080		EQU	$
		RTS
;==================================
ETCLER		EQU	$
		LDX	#ENNO-1
ECL010		EQU	$
		LDA	ENMODE,X
		BEQ	ECL012
;
;;		LDY	<DJFLG
;;		BEQ	ECL0110
;;;
;;		CMP	#ECACH
;;		BEQ	ECL012
;;		BRA	ECL011
;;ECL0110		EQU	$
		LDA	<DJFLG
		BNE	ECL011
;
		LDA	ENMYNO,X
		CMP	#HYUUU
		BEQ	ECL012		; Map enemy ?
;					; no. !
ECL011		EQU	$
		STZ	ENMODE,X
ECL012		EQU	$
		DEX
		BPL	ECL010
;
		LDX	#BMNO-1
ECL030		EQU	$
		STZ	BMMODE,X
		DEX
		BPL	ECL030
;
		STZ	BMCHOK
;
		STZ	MDBMCT		; Medusa beam set count !
		STZ	KAGIID		; Kagi save data index !
		STZ	YAHTCT
		STZ	YAAACT
		STZ	EN2FLG		; Enemy2 FLAG !
		STZ	BXOPEN		; Item box open flag !
		STZ	SWCHFG2		; Hazure swich flag !
		STZ	CGFLTM		; BG flash time !
		STZ	E2STCT		; Enemy2 set counter !
		STZ	PLSTTM		; Player stop time reset !
;;		STZ	BRMSCT		; Barikade heishi msg count.
		STZ	BSFLFG		; Boss fail flag !
		STZ	IWAFLG		; Iwa gororo flag clear !
		STZ	OJBKFG		; Obj bank flag !
		STZ	DOKATA		; Muriyari item flag off !
;;		LDA	#01H
;;		STA	EFLCHF		; All enemy fail check protect !
;- - - - - - - - - - - - - - - - - - - -
ETCLER2		EQU	$
		LDX	#ESNO-1
ECL020		EQU	$
		STZ	ESMODE,X
		DEX
		BPL	ECL020
;
;
		LDX	#E2NO-1
ALCR10		EQU	$
		LDA	#00H
		STA	>E2MODE,X
		DEX
		BPL	ALCR10
		RTL
;
;		RTS
;
;------------------------------------------------
ENDS00		EQU	$
;;;		ASL	A
;;;		TAY
		MEM16
		IDX16
		REP	#00110000B
                LDA	ERXYCT
;;;                LDA	<RMXYCT
		ASL	A
		TAY
		LDA	EDADAD,Y
		STA	<WORK0
;;		LDA	RMXYCT
                LDA	ERXYCT
		LSR	A
		LSR	A
		LSR	A
		MEM8
		IDX8
		SEP	#00110000B	
;
		AND	#11111110B
		STA	NOWRMY
                LDA	ERXYCT
;;		LDA	RMXYCT
		AND	#00001111B
		ASL	A
		STA	NOWRMX
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
		LDA	(<WORK0)
		STA	OAMTYP
;
		LDA	#01H
		STA	<WORK4
		STZ	<WORK2		; set count !
		STZ	<WORK3		; set count !
ENDS10		EQU	$
		LDY	<WORK4
		LDA	(<WORK0),Y
		CMP	#0FFH
		BEQ	ENDS90
;
		JSR	ENITST
;
                INC	<WORK2		; Enemy set count
;
;;		LDA	ENSTCT		; Enemy set index 
;;		STA	<WORK6		; save !
;;		INC	A
;;		CMP	#ENNO
;;		BCC	ENDS23
;;		LDA	#00H
;;ENDS23		EQU	$
;;		STA	ENSTCT
;
;;		LDA	<WORK2
;;		CMP	#ENNO
;;		BCS	ENDS90
;
		INC	<WORK4
		INC	<WORK4
		INC	<WORK4
		BRA	ENDS10
ENDS90		EQU	$
		RTS
;----------------------------------------------
EICBIT		EQU	$
		WORD	0000000000000001B
		WORD	0000000000000010B
		WORD	0000000000000100B
		WORD	0000000000001000B
		WORD	0000000000010000B
		WORD	0000000000100000B
		WORD	0000000001000000B
		WORD	0000000010000000B
		WORD	0000000100000000B
		WORD	0000001000000000B
		WORD	0000010000000000B
		WORD	0000100000000000B
		WORD	0001000000000000B
		WORD	0010000000000000B
		WORD	0100000000000000B
		WORD	1000000000000000B
;- - - - - - - - - - - - - - - - - -
;- - - - - - - - - - - - - - - - - - - - - - - - -
ENBTON          EQU     $
                PHB
                PHK
                PLB
;
                LDA     <DJFLG
                BEQ     EBO010
;
		LDA	ENMOD5,X
		LSR	A
		BCS	EBO010		; Not set ?
;					; yes !
                LDA     ENSWAD,X
                BMI     EBO010		; Data set enemy ?
;					; yes !
                STA     <WORK2
                STZ     <WORK3
                MEM16
                IDX16
                REP     #00110000B
                PHX
                LDA     ERXYCT
                ASL     A
                TAX
                LDA     <WORK2
                ASL     A
                TAY
                LDA     >ENDTBF,X
                ORA     EICBIT,Y
                STA     >ENDTBF,X
                PLX
                MEM8
                IDX8
                SEP     #00110000B
EBO010          EQU     $
                PLB
                RTL
;===============================================
ENITST		EQU	$
		INY
		INY
		LDA	(<WORK0),Y
		TAX
;;		LDA	>ENMDD5,X
;;		AND	#01H
;;		BNE	EIS001		; on off check ?
;;;					; yes !	
;;		MEM16
;;		IDX16
;;		REP	#00110000B
;;		PHY
;;		PHX
;;		LDA	ERXYCT
;;		ASL	A
;;		TAX
;;		LDA	<WORK2
;;		ASL	A
;;		TAY
;;		LDA	>ENDTBF,X
;;		AND	EICBIT,Y
;;		PLX
;;		PLY
;;		CMP	#0000000000000000B
;;		MEM8
;;		IDX8
;;		SEP	#00110000B
;;		BEQ	EIS001		; set ok ?
;;;					; no !
;;		RTS
;;;- - - - - - - - - - - - - - - - - - - - - - -
;;EIS001		EQU	$
		CPX	#KAGI0
		BNE	EIS002
;
		DEY
		DEY
		LDA	(<WORK0),Y
		INY
		INY
		CMP	#0FEH
		BEQ	EIS011
		CMP	#0FDH
		BNE	ENIS00
;
		JSR	EIS011
;
		INC	KAGIFG,X	; Magical key !
;
;;		PHX
;;		PHY
;;		LDA	#22H
;;		JSL	>ITMCBFST	;Key character TR.
;;		PLY
;;		PLX
;
		RTS
;- - - - - - - - - - - - - - - - - -
EIS011		EQU	$
		DEC	<WORK2
;
         	LDX	<WORK2
;					; Enemy have key !!
		LDA	#01H
		STA	KAGIFG,X
		RTS
;
EIS002		EQU	$
		DEY
		LDA	(<WORK0),Y
		INY
		CMP	#0E0H
		BCC	ENIS00		; Flag set enemy ?
;					; yes !
;
;
;
;
;
;;		CPX	#PORT1
;;		BEQ	POS010
;;		CPX	#PORT2
;;		BNE	POS012
;;POS010		EQU	$
;;		JSR	PORTSET
;;		RTS
;;POS012		EQU	$
;KK		CPX	#ESET0
;KK		BCC	ENIS00
;
		JSR	ESMSET
		DEC	<WORK2
		RTS
;-- Normal enemy set ----
ENIS00		EQU	$
		LDA	>ENMDD5,X
		AND	#01H
		BNE	EIS001		; on off check ?
;					; yes !	
		MEM16
		IDX16
		REP	#00110000B
		PHY
		PHX
		LDA	ERXYCT
		ASL	A
		TAX
		LDA	<WORK2
		ASL	A
		TAY
		LDA	>ENDTBF,X
		AND	EICBIT,Y
		PLX
		PLY
		CMP	#0000000000000000B
		MEM8
		IDX8
		SEP	#00110000B
		BEQ	EIS001		; set ok ?
;					; no !
		RTS
;- - - - - - - - - - - - - - - - - - - - - - -
EIS001		EQU	$
;;		LDX	ENSTCT
		LDX	<WORK2
		DEY
		DEY
;
;;		LDX	#ENNO-1
;;ENIS10		EQU	$
;;		LDA	ENMODE,X
;;		BEQ	ENIS30
;;		DEX
;;		BPL	ENIS10
;;;
;;		RTS
;;;-  -  -  -  -  -  -  -  -  -  -  -  -  -
;;ENIS30		EQU	$
		LDA	#EINIT
		STA	ENMODE,X
		LDA	(<WORK0),Y
		STA	ENHELP
		AND	#10000000B
		ASL	A
		ROL	A
		STA	ENKAIF,X
		LDA	(<WORK0),Y
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	ENYPSL,X
		LDA	NOWRMY
		ADC	#00H
		STA	ENYPSH,X
		INY
		LDA	(<WORK0),Y
		STA	ENHELP2
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	ENXPSL,X
		LDA	NOWRMX
		ADC	#00H
		STA	ENXPSH,X
		INY	
		LDA	(<WORK0),Y
		STA	ENMYNO,X
;
		STZ	HEMODE,X
;
		LDA	ENHELP
		AND	#01100000B
		LSR	A
		LSR	A
		STA	ENHELP
		LDA	ENHELP2
		LSR	A 
		LSR	A 
		LSR	A 
		LSR	A 
		LSR	A 
		ORA	ENHELP
		STA	HEMODE,X	; for heishi move mode !
;;;		TXA	
		LDA	<WORK2
		STA	ENSWAD,X
		STZ	KAGIFG,X
;;		LDA	ERXYCT
;;		STA	ENGRNO,X
;;;;;;		JSL	>ENRMCL
		RTS
;======== enemy flag set posotion in =====
ESMSET		EQU	$

		LDX	#ESNO-1
ESIS10		EQU	$
		LDA	ESMODE,X
		BEQ	ESIS30
		DEX
		BPL	ESIS10
		RTS
;-  -  -  -  -  -  -  -  -  -  -  -  -  -
ESIS30		EQU	$
;
;;              LDX	<WORK2
;;		LDX	ENSTCT
		LDA	(<WORK0),Y
;;		SEC
;;		SBC	#ESET0-1
;;		INC	A
		NOP
		STA	ESMODE,X
		DEY
		DEY
		LDA	(<WORK0),Y
		AND	#10000000B
		ASL	A
		ROL	A
		STA	ESKAIF,X
		LDA	(<WORK0),Y
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	ESYPSL,X
		LDA	NOWRMY
		ADC	#00H
		STA	ESYPSH,X
		INY
		LDA	(<WORK0),Y
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	ESXPSL,X
		LDA	NOWRMX
		ADC	#00H
		STA	ESXPSH,X
;
;;		TXA	
;;		LDA	<WORK2
;;		STA	ESSWAD,X
		JSR	ESRMCL		; ram clear
;
		LDA	ESMODE,X
		CMP	#YKDW0
		BEQ	YKDS10
		CMP	#YKDW1
		BEQ	YKDS10
;
		CMP	#TAMS1
		BNE	ESS0D0		; shiro tama ?
;
		LDA	#0FFH
		STA	ESTIM0,X
;
		LDA	ESXPSL,X
		SEC
		SBC	#08H
		STA	ESXPSL,X
;
;		LDA	ESMODE,X
;		CMP	#TAMS0
;		BCC	ESS0D0		; shiro tama ?
;;					; yes ! muki set !
;		LDA	ESXPSL,X
;		AND	#10H
;		LSR	A
;		LSR	A
;		LSR	A
;		LSR	A
;		STA	<WORKF
;		LDA	ESYPSL,X
;		AND	#010H
;		LSR	A
;		LSR	A
;		LSR	A
;		ORA	<WORKF
;		STA	ESSTAT,X
ESS0D0		EQU	$
		RTS
;- - - - - -
YKDS10		EQU	$
;;		LDA	ESMODE+ESNO-1
;;		BEQ	YKDS18		; Aleady set ?
;;;					; yes !
;;		STZ	ESMODE,X
;;		RTS
;;YKDS18		EQU	$
		LDA	#0A0H
		STA	ESTIM0,X
;
;;		LDA	ESXPSL,X
;;		CLC
;;		ADC	#08H
;;		STA	ESXPSL,X
;;		LDA	ESYPSL,X
;;		CLC
;;		ADC	#08H
;;		STA	ESYPSL,X
		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
;%       poltargaist set                                    % 
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
;ISUU		EQU	001H
;NATA		EQU	002H
;SARA    	EQU	003H
;FOOK		EQU	004H
;KNIF		EQU	005H
;MADO		EQU	006H
;GAKU		EQU	007H
;BADD		EQU	008H
;TABL		EQU	009H
;GOST		EQU	00AH
;POSTNO		EQU	$
;		BYTE	TABL,FOOK,SARA,KNIF,KNIF,SARA,FOOK,FOOK,SARA,KNIF
;		BYTE	ISUU,ISUU,ISUU,BEDD,ISUU
;		BYTE	GAKU,GAKU,NATA,NATA
;;
;;		BYTE	GAKU,MADO,BEDD,ISUU,NATA,SARA,FOOK,KNIF,TABL
;POSTXL		EQU	$
;		BYTE	028H,032H,032H,032H,041H,049H,053H,041H,049H,053H
;		BYTE	018H,048H,048H,098H,0C8H
;		BYTE	09CH,040H,0D0H,020H
;
;;		BYTE	0A0H,030H,0E0H,090H,0B0H,0D0H,0F0H,010H,030H
;POSTXH		EQU	$
;		BYTE	001H,001H,001H,001H,001H,001H,001H,001H,001H,001H
;		BYTE	001H,001H,001H,000H,000H
;		BYTE	000H,001H,000H,001H
;
;;		BYTE	000H,001H,000H,000H,000H,000H,000H,001H,001H
;POSTYL		EQU	$
;		BYTE	050H,04EH,056H,060H,051H,051H,051H,060H,060H,060H
;		BYTE	056H,038H,074H,028H,030H
;		BYTE	0E8H,0E8H,0ECH,0ECH
;
;;		BYTE	090H,030H,030H,020H,040H,060H,080H,0A0H,0C0H
;POSTYH		EQU	$
;		BYTE	001H,001H,001H,001H,001H,001H,001H,001H,001H,001H
;		BYTE	001H,001H,001H,001H,001H
;		BYTE	000H,000H,000H,000H
;
;;		BYTE	001H,001H,001H,001H,001H,001H,001H,001H,001H
;POSTMD		EQU	$
;		BYTE	000H,006H,000H,006H,000H,000H,000H,004H,000H,004H
;		BYTE	000H,000H,000H,000H,000H
;		BYTE	000H,000H,000H,000H
;-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
;PORTSET		EQU	$
;		LDA	#01H
;		STA	EN2FLG
;;
;		LDX 	#POSTXL-POSTNO-1
;;;		LDX 	#00H
;PRS010		EQU	$
;		LDA	#00H
;		STA	>E2CONT,X
;		STA	E2TIM0,X
;;
;		LDA	POSTMD,X
;		STA	>E2CHPT,X
;		LDA	POSTNO,X
;		STA	>E2MODE,X
;		LDA	POSTXL,X
;		STA	>E2XPSL,X
;		LDA	POSTXH,X
;		CLC
;		ADC	NOWRMX
;		STA	>E2XPSH,X
;		LDA	POSTYL,X
;		STA	>E2YPSL,X
;		LDA	POSTYH,X
;		CLC
;		ADC	NOWRMY
;		STA	>E2YPSH,X
;		DEX
;		BPL	PRS010
;		RTS
;;
;;;		DEY
;;;		DEY
;;;;
;;;		LDX	#00H
;;;		LDA	#NATA
;;;		STA	>E2MODE,X
;;;		LDA	(<WORK0),Y
;;;		ASL	A
;;;		ASL	A
;;;		ASL	A
;;;		ASL	A
;;;		STA	>E2YPSL,X
;;;		LDA	NOWRMY
;;;		ADC	#00H
;;;		STA	>E2YPSH,X
;;;		INY
;;;		LDA	(<WORK0),Y
;;;		ASL	A
;;;		ASL	A
;;;		ASL	A
;;;		ASL	A
;;;		STA	>E2XPSL,X
;;;		LDA	NOWRMX
;;;		ADC	#00H
;;;		STA	>E2XPSH,X
;		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
;%                                                          % 
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
ALCLER		EQU	$
;BFCLER		EQU	$
		JSL	>ETCLER
;== Old enemy clear  =======
;		LDX 	#ENNO-1
;GED0F2		EQU	$
;		LDA	ENMYNO,X
;		CMP	#HYUUU
;		BEQ	GED0F8
;
;		LDA	ENDSPL,X
;		BEQ	GED0F8
;		STZ	ENMODE,X
;GED0F8		EQU	$
;		DEX
;		BPL	GED0F2
BFCLER		EQU	$
;== Initial Buffer clear =======
		STZ	CALFLG
		STZ	OTOFLG
;;		STZ	BRMSCT		; Barikade heishi  msg count.
		STZ	IWAFLG		; Iwa gorogoro flag !
		STZ	INTEKI		; Inori !
		STZ	OJBKFG		; Obj bank flag !
		STZ	MDBMCT
		STZ	OAMTYP		; OAM type !
;
		LDA	>OPMODE
		CMP	#bakud
		BEQ	GED0FC		; Option bomb with ?
;		
		LDA	#0FEH	; no!
		STA	BMTMER		; Timer display clear !(for anahori) 
GED0FC		EQU	$
;
                IDX16 
                REP     #00010000B
                LDX     #01000H-1
                LDA     #00H
GED000          EQU     $ 
                STA     >ENDTBF,X 
                DEX 
                BPL     GED000
; 
                LDX     #01000H/8-1
GED008          EQU     $ 
                STA     >ENITSW,X 
                DEX 
                BPL     GED008
                IDX8
                SEP     #00010000B
;
		LDY	#07H
		LDA	#0FFH
GED009		EQU	$
		STA	DJCKBF,Y	; danjyon bit on off check checker !
		DEY
		BPL	GED009
		RTL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
;%                                                          % 
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
GREDS2          EQU     $
		JSL	>ETCLER
;;		PHB
;;		PHK
;;		PLB
;;;
;;		JSR	GED0F0		; data set !
;;;
;;		JSR	GRENIT		; all enemy initial !;
;;		PLB
;;		RTL
;- - - - - - - - - -
GREDST          EQU     $
		JSL	>BFCLER
;
		PHB
		PHK
		PLB
		JSR	GED0F0		; data set !
;
		JSR	GRENIT		; all enemy initial !
		PLB
		RTL
;------------------------------------------------------ 
;GRCKYL		EQU	$
;		BYTE	0E0H,0,0C0H
;
GED0F0		EQU	$
;;;		JSL	>ALCLER
;===============================
		LDA	GRNDNO
;;		AND	#3FH
		AND	#00000111B
		ASL	A
		STZ	GRRMXL
		STA	GRRMXH
;
		LDA	GRNDNO
		AND	#3FH
		LSR	A
		LSR	A
		AND	#00001110B
		STA	GRRMYH
		STZ	GRRMYL
;
                LDA     GRNDNO
;;		AND	#3FH
		TAY
		LDX	GRRMCK,Y
		STX	GRRMLX+1
		STZ	GRRMLX
;;		DEX
		STX	GRRMLY+1
;
;;		LDA	GRCKYL-2,X		
		STZ	GRRMLY
;
;;		TYA
		MEM16
		IDX16
		REP	#00110000B
		LDA	GRNDNO
                ASL     A 
                TAY 
;
		MEM8
		SEP	#00100000B
		LDA	>MODTBL0
		CMP	#03H
		BEQ	GED00D		; ENEMY data adress set !	
		CMP	#02H
		BEQ	GED00E		; ENEMY data adress set !	
;
                LDA     GRE0ADR,Y	; zenhan !
                STA     <WORK0
                LDA     GRE0ADR+1,Y
		BRA	GED00F
;
GED00D		EQU	$
                LDA     GRE2ADR,Y	; Koohan !
                STA     <WORK0
                LDA     GRE2ADR+1,Y
		BRA	GED00F
GED00E		EQU	$
;
                LDA     GRE1ADR,Y	; chyuban
                STA     <WORK0
                LDA     GRE1ADR+1,Y
GED00F		EQU	$
                STA     <WORK1
; 
;;		IDX16
;;		REP	#00010000B
;
                LDY     #0000H
GED010          EQU     $ 
                LDA     (<WORK0),Y 
                CMP     #0FFH 
                BEQ     GED080
;
		INY
		INY
		LDA	(<WORK0),Y
		DEY
		DEY
		CMP	#IWAST 
		BNE	GED012
;
		INC	IWAFLG
;
		INY
		INY
		INY
		BRA	GED010
;
GED012		EQU	$
;;		CMP	#HESET 
;;		BNE	GED012
;;;
;;		PHY
;;		JSR	HESETST
;;		PLY
;;		INY
;;		INY
;;		INY
;;		BRA	GED010
;;;
;;GED012		EQU	$
                LDA     (<WORK0),Y 
                PHA 
                LSR     A 
                LSR     A 
                LSR     A 
                LSR     A               ; Ypos (H)
;;                STA     <WORK2
;;                ASL     A 
;;                CLC 
;;                ADC     <WORK2
;;                STA     <WORK2
		ASL	A
		ASL	A
		STA	<WORK2
;
                INY 
                LDA     (<WORK0),Y 
                LSR     A 
                LSR     A 
                LSR     A 
                LSR     A               ; Xpos (H)
                CLC 
                ADC     <WORK2
                STA     <WORK6          ; Buffer (H)
                PLA 
                ASL     A 
                ASL     A 
                ASL     A 
                ASL     A 
                STA     <WORK7
                LDA     (<WORK0),Y 
                AND     #0FH
                ORA     <WORK7
                STA     <WORK5          ; Buffer (L)
; 
                INY 
                LDA     (<WORK0),Y 
;;                IDX16 
;;                REP     #00010000B
                LDX     <WORK5
		INC	A
                STA     >ENDTBF,X 
;::::::::::::::11/20 RAM KOWASU!!!                STA     >ENDTBF,X 
;;                IDX8
;;                SEP     #00010000B
; 
                INY 
                BRA     GED010
; 
GED080          EQU     $ 
		IDX8
		SEP	#00010000B
                RTS
;L;============================================== 
;LHESETST	        EQU	$
;L		IDX16
;L;
;L		LDX	#ESNO-1
;LHESS10		EQU	$
;L		LDA	ESMODE,X
;L		BEQ	HESS20
;L		DEX
;L		BPL	HESS10
;L		BRA	HESS90
;LHESS20		EQU	$
;L		JSR	ESRMCL
;;L
;L		LDA	#HESET
;L		STA	ESMODE,X
;L;
;L;;LDA	GRNDNO
;L;;STA	ESGRNO,X
;L;
;L		LDA	(<WORK0),Y
;L		PHA
;L		ASL	A	
;L		ASL	A
;L		ASL	A
;L		ASL	A
;L		STA	ESYPSL,X		
;L		PLA
;L		LSR	A
;L		LSR	A
;L		LSR	A
;L		LSR	A
;L		CLC
;L		ADC	GRRMYH
;L		STA	ESYPSH,X
;L;
;L		INY
;L		LDA	(<WORK0),Y
;L		PHA
;L		ASL	A	
;L		ASL	A
;L		ASL	A
;L		ASL	A
;L		STA	ESXPSL,X		
;L		PLA
;L		LSR	A
;L		LSR	A
;L		LSR	A
;L		LSR	A
;L		CLC
;L		ADC	GRRMXH
;L		STA	ESXPSH,X
;L;
;LHESS90		EQU	$
;L		IDX8
;L		RTS
;============================================== 
;============================================== 
;============================================== 
;============================================== 
;============================================== 
GRENIT          EQU     $ 
		LDA	<SCCH2
		PHA
		LDA	<SCCH2+1
		PHA
		LDA	SCRMVX
		PHA
		LDA	#0FFH
		STA	SCRMVX
		LDY	#15H
GEI010		EQU	$
		PHY
		JSR	GEXSET
		PLY
;
		LDA	<SCCH2
		CLC
		ADC	#10H
		STA	<SCCH2
		LDA	<SCCH2+1
		ADC	#00H
		STA	<SCCH2+1
;
		DEY
		BPL	GEI010
		PLA
		STA	SCRMVX
		PLA
		STA	<SCCH2+1
		PLA
		STA	<SCCH2
		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
;%              Scroll enemy mode set !                     % 
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
;GECKXD          EQU     $ 
;                BYTE   0,3,6
;                BYTE   0,3,6
;                BYTE   0,3,6
;GECKYD          EQU     $ 
;                BYTE   0,0,0
;                BYTE   3,3,3
;                BYTE   6,6,6
; 
GRENST          EQU     $
		PHB
		PHK
		PLB
;
		LDA	<GAMEMD
		BEQ	GES0W8 
;
                JSR     GEXSET
                JSR     GEYSET
		PLB
		RTL
;---------------------------------
GES0W8		EQU	$
		LDA	GRESCT
		AND	#01H
		BNE	GES0W9
;
                JSR     GEXSET
GES0W9		EQU	$
		LDA	GRESCT
		AND	#01H
		BEQ	GES0WA
;
                JSR     GEYSET
GES0WA		EQU	$
		INC	GRESCT
		PLB
                RTL 
;------------------------------------------------------------ 
;                                                           | 
;------------------------------------------------------------ 
GXSETL          EQU     $ 
                BYTE   010H,0F0H
;;                BYTE   020H,0D0H
GXSETH          EQU     $ 
                BYTE   001H,0FFH
; 
GEXSET          EQU     $ 
;L		LDA	GRNDNO
;L;;		AND	#3FH
;L		AND	#00000111B
;L		ASL	A
;L		STA	GRRMXH
;L;;		STA	ENHELP
;L		LDA	GRNDNO
;L		AND	#3FH
;L		LSR	A
;L		LSR	A
;L		AND	#00001110B
;L		STA	GRRMYH
;L;;		STA	ENHELP2
;
                LDY     #00H
                LDA     SCRMVX
                BEQ     GX0090
                BPL     GX0010
                INY 
GX0010          EQU     $ 
                LDA     <SCCH2
                CLC 
                ADC     GXSETL,Y
                STA     <WORKE
                LDA     <SCCH2+1
                ADC     GXSETH,Y
                STA     <WORKF
; 
                LDA     <SCCV2
                SEC 
                SBC     #30H
                STA     <WORKC
                LDA     <SCCV2+1
                SBC     #00H
                STA     <WORKD
; 
                LDX     #015H 
GX0020          EQU     $ 
                JSR     GXYSUB
; 
                MEM16 
                REP     #00100000B
                LDA     <WORKC
                CLC 
                ADC     #0010H
                STA     <WORKC
                MEM8
                SEP     #00100000B
; 
                DEX 
                BPL     GX0020
; 
GX0090          EQU     $ 
                RTS 
;------------------------------------------------------------ 
;                                                           | 
;------------------------------------------------------------ 
GYSETL          EQU     $ 
                BYTE   010H,0F0H
;;              BYTE   020H,0D0H
GYSETH          EQU     $ 
                BYTE   001H,0FFH
; 
GEYSET          EQU     $ 
                LDY     #00H
                LDA     SCRMVY
                BEQ     GY0090
                BPL     GY0010
                INY 
GY0010          EQU     $ 
                LDA     <SCCV2
                CLC 
                ADC     GYSETL,Y
                STA     <WORKC
                LDA     <SCCV2+1
                ADC     GYSETH,Y
                STA     <WORKD
; 
                LDA     <SCCH2
                SEC 
                SBC     #30H
                STA     <WORKE
                LDA     <SCCH2+1
                SBC     #00H
                STA     <WORKF
; 
                LDX     #015H 
GY0020          EQU     $ 
                JSR     GXYSUB
; 
                MEM16 
                REP     #00100000B
                LDA     <WORKE
                CLC 
                ADC     #0010H
                STA     <WORKE
                MEM8
                SEP     #00100000B
; 
                DEX 
                BPL     GY0020
; 
GY0090          EQU     $ 
                RTS 
;------------------------------------------------------------ 
;                                                           | 
;------------------------------------------------------------ 
GRRMCK		EQU	$	; data of max rom no.
;;			0 1 2 3 4 5 6 7
;; 			8 9 A B C E D F
;
;--zenhan--
		BYTE	4,4,2,4,4,4,4,2
		BYTE	4,4,4,4,4,4,4,4
		BYTE	2,2,2,2,2,2,2,2
		BYTE	4,4,2,4,4,2,4,4
		BYTE	4,4,2,4,4,2,4,4
		BYTE	2,2,2,2,2,2,2,2
		BYTE	4,4,2,2,2,4,4,2
		BYTE	4,4,2,2,2,4,4,2
;- - - - - - - -- -
;-- chyuban-
		BYTE	4,4,2,4,4,4,4,2
		BYTE	4,4,4,4,4,4,4,4
		BYTE	2,2,2,2,2,2,2,2
		BYTE	4,4,2,4,4,2,4,4
		BYTE	4,4,2,4,4,2,4,4
		BYTE	2,2,2,2,2,2,2,2
		BYTE	4,4,2,2,2,4,4,2
		BYTE	4,4,2,2,2,4,4,2
;- - - - - - - -- -
;-- SPOT-
		BYTE	4,4,2,4,4,4,4,2
		BYTE	4,4,4,4,4,4,4,4
		BYTE	2,2,2,2,2,2,2,2
		BYTE	4,4,2,4,4,2,4,4
		BYTE	4,4,2,4,4,2,4,4
		BYTE	2,2,2,2,2,2,2,2
		BYTE	4,4,2,2,2,4,4,2
		BYTE	4,4,2,2,2,4,4,2
;- - - - - - - -- -
GXYSUB          EQU     $ 
		MEM16
		REP	#00100000B
;
                LDA     <WORKE
                SEC 
		SBC	GRRMXL
		CMP	GRRMLX
                BCS     GXYRTS
		XBA
                STA     <WORK0
; 
                LDA     <WORKC
                SEC 
		SBC	GRRMYL
		CMP	GRRMLY
                BCS     GXYRTS
; 
		MEM8
		SEP	#00100000B
		XBA     
		ASL	A
		ASL	A
		ORA	<WORK0
		STA	<WORK1
; 
                LDA     <WORKC
                AND     #0F0H 
                STA     <WORK0
                LDA     <WORKE
                LSR     A 
                LSR     A 
                LSR     A 
                LSR     A 
                ORA     <WORK0
                STA     <WORK0
; 
                PHX 
                JSR     GRES00
                PLX 
GXYRTS		EQU	$
		MEM8
		SEP	#00100000B
                RTS 
;------------------------------------------------------------ 
;                                                           | 
;------------------------------------------------------------ 
GONOFB          EQU     $ 
                BYTE   10000000B
                BYTE   01000000B
                BYTE   00100000B
                BYTE   00010000B
                BYTE   00001000B
                BYTE   00000100B
                BYTE   00000010B
                BYTE   00000001B
; 
GRES00          EQU     $ 
                MEM16 
                REP     #00100000B
                LDA     <WORK0
                CLC 
                ADC     #ENDTBF 
                STA     <WORK5
                MEM8
                SEP     #00100000B
;
		LDA	#BANK ENDTBF
		STA	<WORK7
; 
		LDA	[<WORK5]
		BEQ	GES090		; enemy on ?
;
                MEM16 
                REP     #00100000B
; 					; yes !
                LDA     <WORK0          ; Adress L,H
                LSR     A 
                LSR     A 
                LSR     A 
                CLC 
                ADC     #ENITSW 
                STA     <WORK2
                MEM8
                SEP     #00100000B
; 
		LDA	#BANK ENITSW
		STA	<WORK4
;
                LDA     <WORK0
                AND     #07H
                TAY 
                LDA     [<WORK2] 
                AND     GONOFB,Y
                BNE     GES090          ; Already set ? 
;                                       ; No. 
                JSR     ENMYST          ; Enemy set ! 
; 
GES090          EQU     $ 
                RTS 
;------------------------------------------------------------ 
;                                                           | 
;------------------------------------------------------------ 
;;ENXHDT          EQU     $ 
;;                BYTE   0,1,2,0,1,2,0,1,2
;;ENYHDT          EQU     $ 
;;                BYTE   0,0,0,1,1,1,2,2,2
; 
ENMYST          EQU     $
		LDA	[<WORK5]
;KK        	CMP	#ESET0+1
;KK		BCC	ENS0F0
        	CMP	#DOOOR+1
		BCC	ENS0F0
;
		JSR	ESMSET2
		RTS
;
ENS0F0		EQU	$
		LDX	#04H
;
		CMP	#SEKMV+1
		BEQ	ENS000 
		LDX	#05H
		CMP	#MDARM+1
		BEQ	ENS000		; Index 0,1,2,3,4,5  only set !
;
                LDX     #ENNO-1-2 
		CMP	#SEKMV+1
		BEQ	ENS0F8
		CMP	#UTUWA+1
		BEQ	ENS0F8
		CMP	#ZORAB+1
		BEQ	ENS0F8
		CMP	#MONOR+1
		BNE	ENS000
;
ENS0F8          EQU     $ 
                LDX     #ENNO-1-1
ENS000          EQU     $ 
                LDA     ENMODE,X
                BEQ     ENS010
		LDA	ENMYNO,X
		CMP	#HEIS0
		BNE	ENS001
		LDA	ENWRK2,X
		BNE	ENS010		; serch beam is revise !
ENS001		EQU	$
                DEX 
                BPL     ENS000
                RTS 
; 
ENS010          EQU     $ 
                LDA     [<WORK2] 
                ORA     GONOFB,Y        ; Set bit on !
                STA     [<WORK2] 
; 
                PHX 
                TXA 
                ASL     A 
                TAX 
                MEM16 
                REP     #00100000B
                LDA     <WORK0
                STA     ENSWAD,X        ; On off data adress set !
                MEM8
                SEP     #00100000B
                PLX 
; 
                LDA     [<WORK5]
		DEC     A 
                STA     ENMYNO,X
;
                LDA     #EINIT
                STA     ENMODE,X
; 
                LDA     <WORK0
                ASL     A 
                ASL     A 
                ASL     A 
                ASL     A 
                STA     ENXPSL,X
;
                LDA     <WORK0
                AND     #0F0H 
                STA     ENYPSL,X
;
                LDA     <WORK1
		AND	#03H
		STA	ENXPSH,X
		LDA	<WORK1
		LSR	A
		LSR	A
		STA	ENYPSH,X
;;                LDA     ENXHDT,Y
;;                STA     ENXPSH,X
;;                LDA     ENYHDT,Y
;;                STA     ENYPSH,X
;
;;;                LDY     GRNDNO
                LDA     ENXPSH,X
                CLC 
;;                ADC     GECKXD,Y
		ADC	GRRMXH
;;		ADC	ENHELP
                STA     ENXPSH,X
; 
                LDA     ENYPSH,X
                CLC 
;;                ADC     GECKYD,Y
		ADC	GRRMYH
;;		ADC	ENHELP2
                STA     ENYPSH,X
;
; 
;;;;                JSL     >ENMDST 
		STZ	ENKAIF,X
		STZ	HEMODE,X
		STZ	KAGIFG,X
                RTS
;============================================
ESMSET2		EQU	$
                LDX     #ESNO-1 
ESS000          EQU     $ 
                LDA     ESMODE,X
                BEQ     ESS010
                DEX 
                BPL     ESS000
                RTS 
; 
ESS010          EQU     $ 
                LDA     [<WORK2] 
                ORA     GONOFB,Y        ; Set bit on !
                STA     [<WORK2] 
; 
                PHX 
                TXA 
                ASL     A 
                TAX 
                MEM16 
                REP     #00100000B
                LDA     <WORK0
                STA     ESSWAD,X        ; On off data adress set !
                MEM8
                SEP     #00100000B
                PLX 
; 
                LDA     [<WORK5]
		SEC
		SBC	#DOOOR
;KK		DEC     A
;;		SEC
;;		SBC	#ESET0 
                STA     ESMODE,X
;
		PHA
                LDA     <WORK0
                ASL     A 
                ASL     A 
                ASL     A 
                ASL     A 
		PLY
;KK		CPY	#DOOOR
		CPY	#001H
		BNE	DS0010		; DOOOR ?
		CLC
		ADC	#08H
DS0010		EQU	$
                STA     ESXPSL,X
                LDA     <WORK0
                AND     #0F0H 
                STA     ESYPSL,X
;
                LDA     <WORK1
		AND	#03H
		STA	ESXPSH,X
		LDA	<WORK1
		LSR	A
		LSR	A
		STA	ESYPSH,X
;;                LDY     <WORK1
;;                LDA     ENXHDT,Y
;;                STA     ESXPSH,X
;;                LDA     ENYHDT,Y
;;                STA     ESYPSH,X
;
;;                LDY     GRNDNO
                LDA     ESXPSH,X
                CLC 
;;                ADC     GECKXD,Y
		ADC	GRRMXH
;;		ADC	ENHELP
                STA     ESXPSH,X
; 
                LDA     ESYPSH,X
                CLC 
;;                ADC     GECKYD,Y
		ADC	GRRMYH
;;		ADC	ENHELP2
                STA     ESYPSH,X
;
		STZ	ESKAIF,X
ESRMCL		EQU	$
		LDA	GRNDNO
		STA	ESGRNO,X
;
		STZ	ESTIM0,X
		STZ	ESSTAT,X
		STZ	ESWRK0,X
                RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		Enemy data  (ground)   			      %		
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GRE0ADR		EQU	$
;--- zen han --
		WORD	GRE000,GRE001,GRE002,GRE003,GRE004,GRE005,GRE006,GRE007
		WORD	GRE008,GRE009,GRE00A,GRE00B,GRE00C,GRE00D,GRE00E,GRE00F
		WORD	GRE010,GRE011,GRE012,GRE013,GRE014,GRE015,GRE016,GRE017
		WORD	GRE018,GRE019,GRE01A,GRE01B,GRE01C,GRE01D,GRE01E,GRE01F
		WORD	GRE020,GRE021,GRE022,GRE023,GRE024,GRE025,GRE026,GRE027
		WORD	GRE028,GRE029,GRE02A,GRE02B,GRE02C,GRE02D,GRE02E,GRE02F
		WORD	GRE030,GRE031,GRE032,GRE033,GRE034,GRE035,GRE036,GRE037
		WORD	GRE038,GRE039,GRE03A,GRE03B,GRE03C,GRE03D,GRE03E,GRE03F
;-- URA --
;;		WORD	GRE040,GRE041,GRE042,GRE043,GRE044,GRE045,GRE046,GRE047
;;		WORD	GRE048,GRE049,GRE04A,GRE04B,GRE04C,GRE04D,GRE04E,GRE04F
;;		WORD	GRE050,GRE051,GRE052,GRE053,GRE054,GRE055,GRE056,GRE057
;;		WORD	GRE058,GRE059,GRE05A,GRE05B,GRE05C,GRE05D,GRE05E,GRE05F
;;		WORD	GRE060,GRE061,GRE062,GRE063,GRE064,GRE065,GRE066,GRE067
;;		WORD	GRE068,GRE069,GRE06A,GRE06B,GRE06C,GRE06D,GRE06E,GRE06F
;;		WORD	GRE070,GRE071,GRE072,GRE073,GRE074,GRE075,GRE076,GRE077
;;		WORD	GRE078,GRE079,GRE07A,GRE07B,GRE07C,GRE07D,GRE07E,GRE07F
;-- SPOT--
;;		WORD	GRE080,GRE081,GRE082,GRE083,GRE084,GRE085,GRE086,GRE087
;;		WORD	GRE088,GRE089,GRE08A,GRE08B,GRE08C,GRE08D,GRE08E,GRE08F
;;		WORD	GRE090,GRE091,GRE092,GRE093,GRE094,GRE095,GRE096,GRE097
;;		WORD	GRE098,GRE099,GRE09A,GRE09B,GRE09C,GRE09D,GRE09E,GRE09F
;;		WORD	GRE0A0,GRE0A1,GRE0A2,GRE0A3,GRE0A4,GRE0A5,GRE0A6,GRE0A7
;;		WORD	GRE0A8,GRE0A9,GRE0AA,GRE0AB,GRE0AC,GRE0AD,GRE0AE,GRE0AF
;;		WORD	GRE0B0,GRE0B1,GRE0B2,GRE0B3,GRE0B4,GRE0B5,GRE0B6,GRE0B7
;;		WORD	GRE0B8,GRE0B9,GRE0BA,GRE0BB,GRE0BC,GRE0BD,GRE0BE,GRE0BF
;----chyuu ban --
GRE1ADR		EQU	$
		WORD	GRE100,GRE101,GRE102,GRE103,GRE104,GRE105,GRE106,GRE107
		WORD	GRE108,GRE109,GRE10A,GRE10B,GRE10C,GRE10D,GRE10E,GRE10F
		WORD	GRE110,GRE111,GRE112,GRE113,GRE114,GRE115,GRE116,GRE117
		WORD	GRE118,GRE119,GRE11A,GRE11B,GRE11C,GRE11D,GRE11E,GRE11F
		WORD	GRE120,GRE121,GRE122,GRE123,GRE124,GRE125,GRE126,GRE127
		WORD	GRE128,GRE129,GRE12A,GRE12B,GRE12C,GRE12D,GRE12E,GRE12F
		WORD	GRE130,GRE131,GRE132,GRE133,GRE134,GRE135,GRE136,GRE137
		WORD	GRE138,GRE139,GRE13A,GRE13B,GRE13C,GRE13D,GRE13E,GRE13F
;
;-- URA --
		WORD	GRE040,GRE041,GRE042,GRE043,GRE044,GRE045,GRE046,GRE047
		WORD	GRE048,GRE049,GRE04A,GRE04B,GRE04C,GRE04D,GRE04E,GRE04F
		WORD	GRE050,GRE051,GRE052,GRE053,GRE054,GRE055,GRE056,GRE057
		WORD	GRE058,GRE059,GRE05A,GRE05B,GRE05C,GRE05D,GRE05E,GRE05F
		WORD	GRE060,GRE061,GRE062,GRE063,GRE064,GRE065,GRE066,GRE067
		WORD	GRE068,GRE069,GRE06A,GRE06B,GRE06C,GRE06D,GRE06E,GRE06F
		WORD	GRE070,GRE071,GRE072,GRE073,GRE074,GRE075,GRE076,GRE077
		WORD	GRE078,GRE079,GRE07A,GRE07B,GRE07C,GRE07D,GRE07E,GRE07F
;-- SPOT--
		WORD	GRE080,GRE081,GRE082,GRE083,GRE084,GRE085,GRE086,GRE087
		WORD	GRE088,GRE089,GRE08A,GRE08B,GRE08C,GRE08D,GRE08E,GRE08F
;;		WORD	GRE090,GRE091,GRE092,GRE093,GRE094,GRE095,GRE096,GRE097
;;		WORD	GRE098,GRE099,GRE09A,GRE09B,GRE09C,GRE09D,GRE09E,GRE09F
;
;;		WORD	GRE0A0,GRE0A1,GRE0A2,GRE0A3,GRE0A4,GRE0A5,GRE0A6,GRE0A7
;;		WORD	GRE0A8,GRE0A9,GRE0AA,GRE0AB,GRE0AC,GRE0AD,GRE0AE,GRE0AF
;;		WORD	GRE0B0,GRE0B1,GRE0B2,GRE0B3,GRE0B4,GRE0B5,GRE0B6,GRE0B7
;;		WORD	GRE0B8,GRE0B9,GRE0BA,GRE0BB,GRE0BC,GRE0BD,GRE0BE,GRE0BF
;----KOO ban --
GRE2ADR		EQU	$
		WORD	GRE200,GRE201,GRE202,GRE203,GRE204,GRE205,GRE206,GRE207
		WORD	GRE208,GRE209,GRE20A,GRE20B,GRE20C,GRE20D,GRE20E,GRE20F
		WORD	GRE210,GRE211,GRE212,GRE213,GRE214,GRE215,GRE216,GRE217
		WORD	GRE218,GRE219,GRE21A,GRE21B,GRE21C,GRE21D,GRE21E,GRE21F
		WORD	GRE220,GRE221,GRE222,GRE223,GRE224,GRE225,GRE226,GRE227
		WORD	GRE228,GRE229,GRE22A,GRE22B,GRE22C,GRE22D,GRE22E,GRE22F
		WORD	GRE230,GRE231,GRE232,GRE233,GRE234,GRE235,GRE236,GRE237
		WORD	GRE238,GRE239,GRE23A,GRE23B,GRE23C,GRE23D,GRE23E,GRE23F
;
;-- URA --
		WORD	GRE040,GRE041,GRE042,GRE043,GRE044,GRE045,GRE046,GRE047
		WORD	GRE048,GRE049,GRE04A,GRE04B,GRE04C,GRE04D,GRE04E,GRE04F
		WORD	GRE050,GRE051,GRE052,GRE053,GRE054,GRE055,GRE056,GRE057
		WORD	GRE058,GRE059,GRE05A,GRE05B,GRE05C,GRE05D,GRE05E,GRE05F
		WORD	GRE060,GRE061,GRE062,GRE063,GRE064,GRE065,GRE066,GRE067
		WORD	GRE068,GRE069,GRE06A,GRE06B,GRE06C,GRE06D,GRE06E,GRE06F
		WORD	GRE070,GRE071,GRE072,GRE073,GRE074,GRE075,GRE076,GRE077
		WORD	GRE078,GRE079,GRE07A,GRE07B,GRE07C,GRE07D,GRE07E,GRE07F
;-- SPOT--
		WORD	GRE080,GRE081,GRE082,GRE083,GRE084,GRE085,GRE086,GRE087
		WORD	GRE088,GRE089,GRE08A,GRE08B,GRE08C,GRE08D,GRE08E,GRE08F
;;		WORD	GRE090,GRE091,GRE092,GRE093,GRE094,GRE095,GRE096,GRE097
;;		WORD	GRE098,GRE099,GRE09A,GRE09B,GRE09C,GRE09D,GRE09E,GRE09F
;
;;		WORD	GRE0A0,GRE0A1,GRE0A2,GRE0A3,GRE0A4,GRE0A5,GRE0A6,GRE0A7
;;		WORD	GRE0A8,GRE0A9,GRE0AA,GRE0AB,GRE0AC,GRE0AD,GRE0AE,GRE0AF
;;		WORD	GRE0B0,GRE0B1,GRE0B2,GRE0B3,GRE0B4,GRE0B5,GRE0B6,GRE0B7
;;		WORD	GRE0B8,GRE0B9,GRE0BA,GRE0BB,GRE0BC,GRE0BD,GRE0BE,GRE0BF
;==============================================
;
GRE010		EQU	$
; 1991/09/26		BYTE	00CH,007H,RINGO
; 1991/09/26		BYTE	00FH,017H,TUBO2
;		BYTE	0FFH
GRE011		EQU	$
; 1991/05/23		BYTE	002H,018H,BARI0
; 1991/05/23		BYTE	002H,019H,BARI0
; 1991/05/23		BYTE	013H,00FH,BARI0
; 1991/05/23		BYTE	013H,010H,BARI0
; 1991/05/23		BYTE	01CH,018H,BARI0
;		BYTE	0FFH
GRE012		EQU	$
; 1991/05/23		BYTE	007H,001H,BARI0
; 1991/05/23		BYTE	009H,001H,BARI0
; 1991/05/23		BYTE	018H,001H,BARI0
; 1991/05/23		BYTE	01AH,001H,BARI0
;		BYTE	0FFH
GRE013		EQU	$
GRE000		EQU	$
GRE001		EQU	$
GRE002		EQU	$
GRE003		EQU	$
GRE004		EQU	$
GRE005		EQU	$
GRE006		EQU	$
GRE007		EQU	$
GRE008		EQU	$
GRE009		EQU	$
GRE00A		EQU	$
GRE00B		EQU	$
GRE00C		EQU	$
GRE00D		EQU	$
GRE00E		EQU	$
GRE00F		EQU	$
GRE014		EQU	$
; 1991/05/23		BYTE	018H,013H,BARI0
; 1991/05/23		BYTE	01AH,013H,BARI0
GRE015		EQU	$
GRE016		EQU	$
GRE017		EQU	$
GRE018		EQU	$
GRE019		EQU	$
GRE01A		EQU	$
GRE01C		EQU	$
GRE01E		EQU	$
GRE01F		EQU	$
GRE020		EQU	$
GRE021		EQU	$
GRE022		EQU	$
GRE023		EQU	$
GRE024		EQU	$
GRE025		EQU	$
GRE026		EQU	$
GRE027		EQU	$
GRE028		EQU	$
GRE029		EQU	$
GRE02A		EQU	$
GRE02D		EQU	$
; 1991/05/23		BYTE	015H,00FH,BARI0
; 1991/05/23		BYTE	015H,011H,BARI0
; 1991/05/23		BYTE	015H,013H,BARI0
GRE02E		EQU	$
GRE02F		EQU	$
GRE030		EQU	$
GRE031		EQU	$
GRE033		EQU	$
; 1991/05/23		BYTE	01BH,00CH,BARI0
GRE034		EQU	$
GRE035		EQU	$
; 1991/05/23		BYTE	00CH,002H,BARI0
; 1991/05/23		BYTE	00EH,002H,BARI0
GRE036		EQU	$
GRE037		EQU	$
GRE038		EQU	$
GRE039		EQU	$
GRE03A		EQU	$
GRE03B		EQU	$
GRE03C		EQU	$
GRE03D		EQU	$
GRE03E		EQU	$
GRE03F		EQU	$
GRE046		EQU	$
GRE048		EQU	$
GRE049		EQU	$
GRE04B		EQU	$
GRE04C		EQU	$
GRE04D		EQU	$
GRE04E		EQU	$
GRE059		EQU	$
GRE082		EQU	$
GRE083		EQU	$
GRE084		EQU	$
GRE085		EQU	$
GRE086		EQU	$
GRE087		EQU	$
GRE07D		EQU	$
GRE07E		EQU	$
GRE078		EQU	$
GRE079		EQU	$
GRE066		EQU	$
GRE067		EQU	$
GRE063		EQU	$
GRE064		EQU	$
GRE05F		EQU	$
GRE060		EQU	$
GRE061		EQU	$
GRE05C		EQU	$
GRE088		EQU	$
;;;		BYTE	008H,018H,ZORAB
GRE089		EQU	$
GRE08A		EQU	$
GRE08B		EQU	$
GRE08C		EQU	$
GRE08D		EQU	$
GRE08E		EQU	$
GRE08F		EQU	$
GRE090		EQU	$
GRE091		EQU	$
GRE092		EQU	$
GRE093		EQU	$
GRE094		EQU	$
GRE095		EQU	$
GRE096		EQU	$
GRE097		EQU	$
GRE098		EQU	$
GRE099		EQU	$
GRE09A		EQU	$
GRE09B		EQU	$
GRE09C		EQU	$
GRE09D		EQU	$
GRE09E		EQU	$
GRE09F		EQU	$
GRE0A0		EQU	$
GRE0A1		EQU	$
GRE0A2		EQU	$
GRE0A3		EQU	$
GRE0A4		EQU	$
GRE0A5		EQU	$
GRE0A6		EQU	$
GRE0A7		EQU	$
GRE0A8		EQU	$
GRE0A9		EQU	$
GRE0AA		EQU	$
GRE0AB		EQU	$
GRE0AC		EQU	$
GRE0AD		EQU	$
GRE0AE		EQU	$
GRE0AF		EQU	$
GRE0B0		EQU	$
GRE0B1		EQU	$
GRE0B2		EQU	$
GRE0B3		EQU	$
GRE0B4		EQU	$
GRE0B5		EQU	$
GRE0B6		EQU	$
GRE0B7		EQU	$
GRE0B8		EQU	$
GRE0B9		EQU	$
GRE0BA		EQU	$
GRE0BB		EQU	$
GRE0BC		EQU	$
GRE0BD		EQU	$
GRE0BE		EQU	$
GRE0BF		EQU	$
GRE21F		EQU	$
GRE21C		EQU	$
GRE219		EQU	$
GRE20B		EQU	$
GRE208		EQU	$
GRE206		EQU	$
GRE204		EQU	$
GRE201		EQU	$
GRE13D		EQU	$
GRE138		EQU	$
GRE139		EQU	$
GRE136		EQU	$
GRE131		EQU	$
GRE129		EQU	$
;;;;		BYTE	00CH,00CH,HEIS0
;;;;		BYTE	014H,00BH,HEIS0
GRE126		EQU	$
GRE123		EQU	$
GRE11F		EQU	$
GRE11C		EQU	$
GRE119		EQU	$
GRE10B		EQU	$
GRE109		EQU	$
GRE108		EQU	$
GRE106		EQU	$
GRE104		EQU	$
GRE101		EQU	$
GRE10C		EQU	$
GRE10D		EQU	$
GRE10E		EQU	$
GRE120		EQU	$
GRE121		EQU	$
GRE124		EQU	$
GRE127		EQU	$
GRE13E		EQU	$
GRE209		EQU	$
GRE20C		EQU	$
GRE20D		EQU	$
GRE20E		EQU	$
GRE220		EQU	$
GRE221		EQU	$
GRE231		EQU	$
GRE226		EQU	$
GRE223		EQU	$
GRE224		EQU	$
GRE227		EQU	$
		BYTE	0FFH
;-----------------------------------------------------
GRE01B		EQU	$
		BYTE	006H,01FH,BARI1
		BYTE	012H,001H,BARI0
		BYTE	014H,001H,BARI0
		BYTE	013H,01FH,HEI00
		BYTE	01AH,01FH,ZAKO0
;
;(01C)
		BYTE	01AH,000H+020H,ZAKO0
;
;(023)
;		BYTE	009H+020H,01FH,BARI0
;
;(024)
		BYTE	005H+020H,00DH+020H,BARI0
;;;		BYTE	008H+020H,005H+020H,ESW04
		BYTE	009H+020H,000H+020H,BARI0
		BYTE	0FFH
GRE01D		EQU	$
		BYTE	006H,00BH,RINGO
; 1991/05/23		BYTE	00CH,00DH,BARI0
; 1991/05/23		BYTE	00EH,00DH,BARI0
		BYTE	0FFH
GRE02B		EQU	$
		BYTE	01EH,009H,BARI0
		BYTE	01EH,00BH,BARI0
		BYTE	0FFH
GRE02C		EQU	$
		BYTE	018H,01EH,BARI0
		BYTE	01AH,01EH,BARI0
		BYTE	01EH,00DH,BARI0
		BYTE	01EH,00FH,BARI0
		BYTE	0FFH
GRE032		EQU	$
; 1991/05/23		BYTE	005H,001H,BARI0
; 1991/05/23		BYTE	007H,001H,BARI0
		BYTE	009H,01AH,BOMB1
		BYTE	012H,018H,BOSET
		BYTE	0FFH
;-- URA
GRE040		EQU	$
		BYTE	007H,01AH,LOPAA
		BYTE	011H,012H,LOPAA
		BYTE	01EH,00AH,LOPAA
;
;(041)
		BYTE	009H,00FH+020H,LOPAA
		BYTE	00AH,011H+020H,PAKKN
		BYTE	00BH,013H+020H,LOPAA
		BYTE	014H,009H+020H,LOPAA
		BYTE	016H,003H+020H,LOPAA
		BYTE	017H,019H+020H,LIKE0
;		
;(048)
		BYTE	001H+020H,00AH,LOPAA
		BYTE	005H+020H,01AH,LOPAA
		BYTE	008H+020H,00BH,LIKE0
		BYTE	010H+020H,01EH,LOPAA
		BYTE	018H+020H,00EH,LOPAA
		BYTE	018H+020H,011H,LOPAA
		BYTE	019H+020H,01AH,LOPAA
;
;(049)
		BYTE	001H+020H,00DH+020H,LOPAA
		BYTE	008H+020H,012H+020H,LOPAA
		BYTE	012H+020H,017H+020H,LOPAA
		BYTE	017H+020H,008H+020H,LIKE0
		BYTE	0FFH
GRE041		EQU	$
GRE042		EQU	$
		BYTE	011H,00CH,PAKKN
		BYTE	013H,00CH,PAKKN
		BYTE	016H,006H,YOSEI
		BYTE	019H,00EH,BUTA0
		BYTE	0FFH
GRE043		EQU	$
;
;(044)
		BYTE	00CH,00FH+020H,PLCHK
		BYTE	018H,000H+020H,SITO0
		BYTE	0FFH
;		
GRE044		EQU	$
GRE045		EQU	$
		BYTE	00CH,006H,RINEL
		BYTE	00EH,01DH,RINEL
;
;(046)
		BYTE	00BH,000H+020H,RINEL
		BYTE	0FFH
GRE047		EQU	$
		BYTE	014H,016H,PLHIK
		BYTE	0FFH
GRE04A		EQU	$
		BYTE	006H,00EH,PLHIK
		BYTE	008H,018H,UTUBK
		BYTE	00FH,00BH,BUTA0
		BYTE	010H,008H,BUTA0
		BYTE	013H,016H,BUTA0
		BYTE	013H,013H,KARAS
		BYTE	014H,013H,KARAS
		BYTE	018H,00EH,LOPAA
		BYTE	01AH,014H,ABATA
		BYTE	0FFH
GRE04F		EQU	$
		BYTE	008H,019H,ZORAS
		BYTE	00BH,004H,NAMAZ
		BYTE	00DH,018H,ABATA
		BYTE	011H,01AH,LOPAA
		BYTE	0FFH
GRE050		EQU	$
		BYTE	00BH,016H,GOST0
		BYTE	00CH,005H,BUTA0
		BYTE	00EH,008H,WOOD1
		BYTE	013H,019H,NIWAT
		BYTE	018H,008H,BUTA0
		BYTE	0FFH
GRE051		EQU	$
		BYTE	00EH,017H,HEIS3
		BYTE	010H,008H,YOSEI
		BYTE	010H,009H,YOSEI
		BYTE	015H,01CH,ABATA
		BYTE	016H,014H,BUTA0
;;;;		BYTE	016H,019H,PAKKN
		BYTE	017H,00EH,BUTA0
		BYTE	0FFH
GRE052		EQU	$
		BYTE	009H,012H,ABATA
		BYTE	00DH,015H,BUTA0
		BYTE	010H,007H,HEIS0
		BYTE	017H,014H,HEIS0
		BYTE	018H,00EH,BUTA0
		BYTE	0FFH
GRE053		EQU	$
		BYTE	00BH,006H,ABATA
		BYTE	00CH,015H,HINO0
		BYTE	00DH,008H,LOPAA
		BYTE	015H,00DH,BUTA0
		BYTE	018H,016H,PAKKN
		BYTE	0FFH
GRE054		EQU	$
		BYTE	00DH,014H,LOPAA
		BYTE	00BH,005H,BOMB1
		BYTE	00BH,019H,RUPYB
		BYTE	00FH,007H,LOPAA
		BYTE	00EH,00FH,YOSEI
		BYTE	010H,019H,LOPAA
		BYTE	014H,00DH,LOPAA
		BYTE	019H,011H,HINO0
		BYTE	0FFH
GRE055		EQU	$
		BYTE	009H,011H,UZUMK
		BYTE	00EH,016H,HINO0
		BYTE	00EH,018H,ABATA
		BYTE	00FH,01BH,RUPYY
		BYTE	017H,007H,HINO0
		BYTE	01AH,00AH,HACHI
		BYTE	01BH,01AH,LOPAA
		BYTE	0FFH
GRE056		EQU	$
		BYTE	006H,00AH,ZORAS
		BYTE	00AH,013H,ZORAS
		BYTE	00EH,004H,HACHI
		BYTE	017H,011H,LOPAA
		BYTE	01AH,005H,LOPAA
		BYTE	0FFH
GRE057		EQU	$
		BYTE	004H,00CH,ZORAS
		BYTE	008H,016H,OCTA1
		BYTE	00AH,018H,OCTA1
		BYTE	00EH,00EH,OCTA1
		BYTE	010H,00EH,ABATA
		BYTE	01AH,00EH,OCTA1
		BYTE	01BH,00DH,OCTA1
		BYTE	0FFH
GRE058		EQU	$
		BYTE	006H,013H,BUTA0
		BYTE	00CH,018H,WOOD1
		BYTE	01CH,007H,HEIS0
;
;(059)
		BYTE	00AH,015H+020H,BUTA0
		BYTE	00CH,00BH+020H,GOST0
		BYTE	017H,00EH+020H,Theft
		BYTE	01CH,000H+020H,PLHIN
;
;(060)
		BYTE	005H+020H,018H,GOST0
		BYTE	007H+020H,00DH,Theft
		BYTE	008H+020H,01DH,GOST0
		BYTE	00EH+020H,012H,BUTA0
		BYTE	014H+020H,016H,NIWAT
		BYTE	017H+020H,015H,NIWAT
;
;(061)
		BYTE	007H+020H,008H+020H,NIWAT
		BYTE	00FH+020H,013H+020H,HEIS0
		BYTE	014H+020H,00CH+020H,GOST0
		BYTE	015H+020H,017H+020H,WOOD1
		BYTE	0FFH
GRE05A		EQU	$
		BYTE	008H,00FH,BUTA0
		BYTE	008H,012H,WOOD1
		BYTE	00DH,012H,ABATA
		BYTE	00CH,015H,BUTA0
		BYTE	00FH,00BH,HINO0
		BYTE	019H,00EH,BUTA0
		BYTE	0FFH
GRE05B		EQU	$
		BYTE	017H,015H,LOPAA
;
;(5C)
		BYTE	012H,014H+020H,UTUBK
;
;(63)
		BYTE	004H+020H,013H,PLHIK
		BYTE	007H+020H,00FH,BUTA0
		BYTE	00AH+020H,017H,YOSEI
		BYTE	00AH+020H,00CH,BUTA0
		BYTE	00CH+020H,01EH,HINO0
;
;(64)
		BYTE	005H+020H,014H+020H,PAKKN
		BYTE	007H+020H,012H+020H,BUTA0
		BYTE	009H+020H,010H+020H,BUTA0
		BYTE	00CH+020H,001H+020H,HINO0
		BYTE	0FFH
GRE05D		EQU	$
		BYTE	008H,00BH,WOOD1
		BYTE	009H,007H,HINO0
		BYTE	00BH,006H,PAKKN
		BYTE	00BH,018H,BUTA0
		BYTE	00EH,017H,ABATA
		BYTE	010H,01AH,BUTA0
		BYTE	011H,008H,HEIS0
		BYTE	0FFH
GRE05E		EQU	$
;;;		BYTE	002H,019H,SARKK		; WARU SARU
		BYTE	004H,00DH,LOPAA
		BYTE	011H,003H,LOPAA
		BYTE	011H,015H,SARKK
		BYTE	01AH,012H,LOPAA
;
;(5F)
		BYTE	009H,007H+020H,LOPAA
		BYTE	010H,00FH+020H,LOPAA
		BYTE	015H,005H+020H,BUTA0
		BYTE	017H,006H+020H,HINO0
		BYTE	018H,015H+020H,LOPAA
		BYTE	01EH,00AH+020H,LOPAA
;;;		BYTE	01EH,018H,SARKK		; WARU SARU
;
;(66)
		BYTE	006H+020H,00AH,BUTA0
;;;		BYTE	008H+020H,013H,SARKK	; WARU SARU
		BYTE	00BH+020H,00CH,BUTA0
		BYTE	015H+020H,007H,LOPAA
		BYTE	017H+020H,016H,HINO0
		BYTE	018H+020H,009H,PAKKN
;
;(67)
;;;		BYTE	003H+020H,004H+020H,SARKK	; WARU SARU
		BYTE	004H+020H,012H+020H,BUTA0
		BYTE	008H+020H,015H+020H,PAKKN
		BYTE	010H+020H,004H+020H,LOPAA
		BYTE	010H+020H,010H+020H,YOSEI
		BYTE	016H+020H,015H+020H,HINO0
		BYTE	017H+020H,009H+020H,KARAS
		BYTE	0FFH
GRE062		EQU	$
		BYTE	005H,00DH,TAKAR
		BYTE	011H,013H,NIWAT
		BYTE	013H,011H,NIWAT
		BYTE	015H,015H,NIWAT
		BYTE	016H,009H,NIWAT
		BYTE	017H,011H,NIWAT
		BYTE	0FFH
GRE065		EQU	$
		BYTE	007H,013H,BUTA0
		BYTE	00AH,00FH,ABATA
		BYTE	00CH,00EH,BUTA0
		BYTE	011H,005H,HINO0
;;;;		BYTE	011H,00FH,ZIRAI
		BYTE	016H,00AH,BUTA0
		BYTE	016H,013H,BUTA0
		BYTE	0FFH
GRE068		EQU	$
;;		BYTE	00AH,018H,GOST0
;;		BYTE	00EH,013H,GOST0
;;		BYTE	010H,00EH,GOST0
;;		BYTE	018H,00EH,GOST0
;
		BYTE	011H,00EH,ANAHO		; Anahori game
		BYTE	0FFH
GRE069		EQU	$
		BYTE	009H,006H,KAJIY		; Lonely kajiya
		BYTE	0FFH
GRE06A		EQU	$
		BYTE	00FH,00EH,KUTUU
		BYTE	0FFH
GRE06B		EQU	$
		BYTE	008H,016H,WOOD1
		BYTE	009H,008H,LOPAA
		BYTE	00FH,017H,WOOD1
		BYTE	016H,013H,BUTA0
		BYTE	019H,00FH,BUTA0
		BYTE	0FFH
GRE06C		EQU	$
		BYTE	006H,015H,PAKKN
		BYTE	00AH,015H,BUTA0
		BYTE	00DH,014H,BUTA0
		BYTE	016H,014H,HINO0
		BYTE	019H,009H,LOPAA
		BYTE	0FFH
GRE06D		EQU	$
		BYTE	005H,00FH,LOPAA
		BYTE	007H,00DH,HINO0
		BYTE	008H,012H,HEIS0
		BYTE	00AH,010H,HEIS0
		BYTE	01AH,010H,ABATA
		BYTE	01BH,013H,ABATA
		BYTE	0FFH
GRE06E		EQU	$
		BYTE	008H,00CH,RUPYY
		BYTE	009H,010H,HACHI
		BYTE	00AH,014H,RINGO
		BYTE	00BH,008H,HEIS0
		BYTE	00EH,010H,HEIS0
		BYTE	018H,01AH,LOPAA
		BYTE	0FFH
GRE06F		EQU	$
		BYTE	008H,00DH,PAKKN
		BYTE	008H,00FH,PAKKN
		BYTE	00BH,00EH,PAKKN
		BYTE	00CH,017H,KARAS
;;;		BYTE	016H,008H,SARKK		; WARU SARU
;;;		BYTE	016H,00AH,SARKK		; WARU SARU
		BYTE	017H,009H,ABATA
		BYTE	0FFH
GRE070		EQU	$
;
;(071)
		BYTE	01BH,001H+020H,KARAS
		BYTE	01CH,00BH+020H,ZORAS
;
;(078)
		BYTE	001H+020H,012H,ZORAS
		BYTE	004H+020H,01BH,MDARM
		BYTE	007H+020H,010H,MDARM
		BYTE	008H+020H,007H,KARAS
		BYTE	00BH+020H,016H,ZORAS
		BYTE	00EH+020H,01EH,ZORAS
		BYTE	013H+020H,017H,MDARM
		BYTE	018H+020H,011H,ZORAS
;
;(079)
		BYTE	00BH+020H,003H+020H,ZORAS
		BYTE	00CH+020H,007H+020H,MDARM
		BYTE	0FFH
GRE071		EQU	$
GRE072		EQU	$
		BYTE	00BH,01BH,WOOD1
		BYTE	00DH,010H,HEIS0
		BYTE	00EH,013H,HEIS0
		BYTE	014H,01AH,WOOD1
		BYTE	017H,00BH,LOPAA
		BYTE	0FFH
GRE073		EQU	$
		BYTE	00CH,017H,LIKE0
		BYTE	00DH,009H,BUTA0
		BYTE	00EH,014H,PATA0
		BYTE	01AH,015H,PATA0
		BYTE	01BH,01BH,PATA1
		BYTE	0FFH
GRE074		EQU	$
		BYTE	00DH,00BH,BUTA0
		BYTE	00EH,017H,PLHIK
		BYTE	011H,010H,PATA0
		BYTE	011H,015H,BUTA0
		BYTE	012H,00AH,LIKE0
		BYTE	014H,00EH,RINGO
		BYTE	017H,011H,BUTA0
		BYTE	0FFH
GRE075		EQU	$
		BYTE	005H,00AH,ABATA
		BYTE	007H,009H,HEIS0
		BYTE	009H,00BH,HEIS0
		BYTE	013H,007H,OCTA1
		BYTE	016H,018H,PATA0
		BYTE	017H,009H,LIKE0
;
;(76)
		BYTE	00CH,010H+020H,ZORAS
		BYTE	011H,009H+020H,PATA1
		BYTE	015H,016H+020H,PATA0
		BYTE	01FH,011H+020H,LIKE0
;
;(7D)
		BYTE	002H+020H,01BH,ZORAS
		BYTE	008H+020H,014H,PATA0
		BYTE	00EH+020H,016H,LIKE0
		BYTE	012H+020H,019H,PATA0
		BYTE	015H+020H,00AH,PATA1
		BYTE	019H+020H,008H,LOPAA
		BYTE	019H+020H,01BH,ZORAS
;
;(7E)
		BYTE	006H+020H,00AH+020H,LIKE0
		BYTE	008H+020H,012H+020H,PATA0
		BYTE	00CH+020H,00AH+020H,ZORAS
		BYTE	015H+020H,012H+020H,ZORAS
		BYTE	019H+020H,017H+020H,OCTA1
		BYTE	0FFH
GRE076		EQU	$
GRE077		EQU	$
		BYTE	008H,011H,OCTA1
		BYTE	00AH,009H,ABATA
		BYTE	00BH,00DH,PATA1
		BYTE	011H,018H,OCTA1
		BYTE	012H,007H,ZORAS
		BYTE	019H,012H,ZORAS
		BYTE	0FFH
GRE07A		EQU	$
		BYTE	007H,006H,HINO0
		BYTE	009H,016H,LOPAA
		BYTE	00BH,014H,LOPAA
		BYTE	00BH,016H,LOPAA
		BYTE	0FFH
GRE07B		EQU	$
;;;;		BYTE	006H,009H,ZIRAI
		BYTE	006H,012H,PATA1
		BYTE	00AH,016H,LIKE0
		BYTE	00FH,00DH,BUTA0
		BYTE	010H,00AH,ABATA
		BYTE	014H,013H,BUTA0
		BYTE	018H,016H,LOPAA
		BYTE	0FFH
GRE07C		EQU	$
		BYTE	005H,003H,ABATA
		BYTE	006H,007H,HEIS0
		BYTE	006H,00FH,PLHIK
		BYTE	011H,011H,HINO0
;;;;		BYTE	015H,014H,ZIRAI
		BYTE	015H,018H,LOPAA
		BYTE	019H,016H,LOPAA
		BYTE	0FFH
GRE07F		EQU	$
		BYTE	006H,010H,PATA0
		BYTE	006H,016H,OCTA1
		BYTE	00CH,007H,UZUMK
		BYTE	00EH,007H,ZORAS
		BYTE	013H,00DH,PATA0
		BYTE	014H,016H,LIKE0
		BYTE	017H,00FH,OCTA1
		BYTE	0FFH
;-- SPOT-
GRE080		EQU	$
;(mori spot)
		BYTE	008H,007H,ATARS
		BYTE	00AH,007H,SEKBN
		BYTE	014H,00FH,RISU0
		BYTE	016H,000H,TORI0
		BYTE	018H,002H,RISU0
		BYTE	01AH,00EH,TORI0
		BYTE	01BH,00FH,RISU0
;
;(hashi spot)
		BYTE	004H,016H,SLEEP
		BYTE	0FFH
GRE081		EQU	$
;
		BYTE	006H+020H,01BH,UTUBK
;
;;T		BYTE	006H+020H,01CH,UTUWA
;; E		BYTE	007H+020H,01BH,UTUWA
;;  S		BYTE	007H+020H,01CH,UTUWA
;;   T		BYTE	008H+020H,01BH,UTUWA
;;		BYTE	008H+020H,01CH,UTUWA
;
;(hidari ue)
		BYTE	006H,00AH,ZORA2
		BYTE	006H,01CH,ZORA2
		BYTE	007H,011H,ZORAS
		BYTE	00AH,016H,ZORA2
		BYTE	00AH,01AH,ZORAS
		BYTE	00CH,009H,ZORAS
		BYTE	00DH,012H,ZORAS
		BYTE	012H,01AH,ZORA2
		BYTE	013H,007H,ZORA2
		BYTE	013H,014H,ZORA2
		BYTE	018H,008H,ZORA2
		BYTE	01CH,004H,ZORA2
;
;(migi ue)
		BYTE	004H,01BH+020H,ZORAB
		BYTE	008H,007H+020H,ZORAS
		BYTE	008H,00DH+020H,ZORAS
		BYTE	00EH,002H+020H,ZORA2
; 1991/07/23		BYTE	00EH,007H+020H,ZORA2
		BYTE	00EH,00DH+020H,ZORAS
; 1991/07/23		BYTE	013H,010H+020H,ZORA2
		BYTE	014H,001H+020H,ZORAS
; 1991/07/23		BYTE	017H,004H+020H,ZORA2
;
;(hidari shita)
		BYTE	000H+020H,00DH,ZORA2
; 1991/07/23		BYTE	003H+020H,010H,ZORA2
; 1991/07/23		BYTE	008H+020H,013H,ZORA2
; 1991/07/23		BYTE	00CH+020H,010H,ZORAS
		BYTE	011H+020H,008H,ZORA2
		BYTE	011H+020H,014H,ZORAS
		BYTE	013H+020H,00CH,ZORA2
		BYTE	015H+020H,00EH,ZORAS
		BYTE	018H+020H,008H,ZORA2
;
;(migi shita)
		BYTE	008H+020H,01BH+020H,ZORA2
		BYTE	00BH+020H,01AH+020H,ZORA2
		BYTE	015H+020H,00DH+020H,ZORA2
; 1991/07/23		BYTE	016H+020H,008H+020H,ZORA2
		BYTE	016H+020H,017H+020H,ZORA2
		BYTE	0FFH
;--- chyuu ban ---
GRE100		EQU	$
		BYTE	012H,007H,SUKAS
		BYTE	00BH,012H,KARAS
		BYTE	015H,01EH,KINOK
;
;(101)
		BYTE	006H,008H+020H,SUKAS
		BYTE	00AH,011H+020H,NYORO
		BYTE	00AH,00DH+020H,KARAS
		BYTE	010H,00AH+020H,SHIGE
		BYTE	015H,019H+020H,SUKAS
;
;(108)
		BYTE	002H+020H,00EH,Theft
		BYTE	00DH+020H,01EH,SHIGE
;;;		BYTE	012H+020H,01FH,UTUBK
;
;(109)
		BYTE	005H+020H,009H+020H,HACHI
		BYTE	007H+020H,00AH+020H,PLHIK
		BYTE	00DH+020H,016H+020H,KARAS
		BYTE	015H+020H,005H+020H,SUKAS
		BYTE	015H+020H,009H+020H,Theft
		BYTE	0FFH
GRE102		EQU	$
		BYTE	013H,004H,NYORO
		BYTE	013H,00CH,NOKOG
		BYTE	01AH,00DH,SHIGE
		BYTE	0FFH
GRE103		EQU	$
		BYTE	000H,000H,IWAST
		BYTE	004H,00BH,MONOR		; ETELE
;
;(104)
		BYTE	00CH,007H+020H,IWABO
		BYTE	016H,002H+020H,UTUBK
;
;(10B)
		BYTE	015H+020H,00AH,IWABO
		BYTE	016H+020H,006H,IWABO
		BYTE	01BH+020H,00DH,IWABO
		BYTE	01BH+020H,012H,DOOOR
;
;(10C)
		BYTE	00DH+020H,00CH+020H,IWABO
		BYTE	013H+020H,014H+020H,IWABO
		BYTE	014H+020H,00FH+020H,IWABO
		BYTE	0FFH
GRE105		EQU	$
		BYTE	00EH,01EH,IWABO
		BYTE	00FH,01FH,TEKTA
;
;(106)
		BYTE	003H,00FH+020H,UTUBK
		BYTE	00DH,015H+020H,IWABO
		BYTE	00FH,009H+020H,TEKTA
		BYTE	00FH,015H+020H,IWABO
		BYTE	010H,014H+020H,YOSEI
;(10D)
		BYTE	011H+020H,01EH,TEKTA
;(10E)
		BYTE	00AH+020H,015H+020H,TEKTA
		BYTE	00FH+020H,00AH+020H,IWABO
		BYTE	00FH+020H,00FH+020H,TEKTA
		BYTE	016H+020H,009H+020H,IWABO
		BYTE	016H+020H,016H+020H,IWABO
		BYTE	0FFH
GRE107		EQU	$
		BYTE	007H,00EH,IWABO
		BYTE	00DH,00AH,IWABO
		BYTE	015H,017H,IWABO
		BYTE	016H,00FH,IWABO
		BYTE	016H,012H,IWABO
		BYTE	0FFH
GRE10A		EQU	$
		BYTE	004H,00EH,HACHI
		BYTE	006H,00EH,PLHIK
		BYTE	009H,005H,KARAS
		BYTE	00DH,010H,NYORO
		BYTE	00EH,00BH,NYORO
		BYTE	016H,013H,KARAS
		BYTE	016H,00EH,SHIGE
		BYTE	016H,016H,NYORO
		BYTE	017H,011H,KARAS
		BYTE	01AH,019H,RINGO
		BYTE	0FFH
GRE10F		EQU	$
		BYTE	002H,006H,PLCHK		; TAKI
;
		BYTE	00DH,00DH,KANI0
		BYTE	010H,005H,ZORAS
		BYTE	012H,011H,KANI0
		BYTE	013H,008H,UZUMK
		BYTE	015H,01CH,KARAS
		BYTE	017H,00EH,OCTA3
		BYTE	0FFH
GRE110		EQU	$
		BYTE	00CH,005H,HEI00
		BYTE	00CH,007H,RINGO
		BYTE	00FH,017H,TUBO2
		BYTE	018H,008H,HEI00
		BYTE	0FFH
GRE111		EQU	$
		BYTE	00CH,017H,HEI00
		BYTE	00DH,01AH,HEI00
		BYTE	010H,008H,BOMB1
		BYTE	017H,008H,NIWAT
		BYTE	0FFH
GRE112		EQU	$
		BYTE	00EH,015H,HEI00
		BYTE	010H,007H,HEI00
		BYTE	010H,00FH,UZUMK
		BYTE	015H,015H,HEI00
		BYTE	0FFH
GRE113		EQU	$
		BYTE	009H,018H,RINGO
		BYTE	017H,011H,HEI00
		BYTE	0FFH
GRE114		EQU	$
		BYTE	011H,015H,HEYA2
		BYTE	019H,011H,HEI00
;
		BYTE	00CH,008H,BGBM0	; Haka gost set ! 9/30 !
		BYTE	011H,017H,BGBM0	; Haka gost set ! 9/30 !
		BYTE	00EH,012H,BGBM0	; Haka gost set ! 9/30 !
		BYTE	0FFH
GRE115		EQU	$
		BYTE	009H,011H,UZUMK
		BYTE	00EH,016H,HEIS0
		BYTE	00FH,01BH,YOSEI
		BYTE	017H,00BH,HEIS0
		BYTE	0FFH
GRE116		EQU	$
		BYTE	00AH,00DH,NYORO
		BYTE	015H,00FH,MAJOO
		BYTE	018H,006H,NYORO
		BYTE	0FFH
GRE117		EQU	$
		BYTE	008H,018H,NYORO
		BYTE	00AH,017H,NYORO
		BYTE	00BH,00DH,NYORO
		BYTE	00CH,016H,NYORO
		BYTE	016H,008H,NYORO
		BYTE	0FFH
GRE118		EQU	$
		BYTE	00AH,018H,YOSEI
		BYTE	017H,00CH,DOOOR
		BYTE	016H,018H,SYOBY
		BYTE	01CH,00EH,BABA1
;;		BYTE	01CH,016H,HESET
;
;(119)
;;		BYTE	00CH,009H+020H,JIJI2
;;		BYTE	014H,006H+020H,HESET
		BYTE	018H,000H+020H,BEECK
		BYTE	01BH,014H+020H,DOOOR
;
;(120)
		BYTE	00EH+020H,01DH,BOUSI
		BYTE	00CH+020H,019H,BABAA
		BYTE	011H+020H,018H,TKBOY
		BYTE	015H+020H,016H,NIWAT
		BYTE	016H+020H,018H,NIWAT
;;		BYTE	01BH+020H,01FH,HESET
;
;(121)
;;		BYTE	000H+020H,008H+020H,HESET
		BYTE	000H+020H,013H+020H,ONNAA
;;		BYTE	009H+020H,009H+020H,PENKI
		BYTE	013H+020H,016H+020H,RUPYY
;;		BYTE	018H+020H,008H+020H,DOOOR
;;		BYTE	01BH+020H,014H+020H,HESET
		BYTE	0FFH
GRE11A		EQU	$
		BYTE	00CH,014H,HEIS0
      		BYTE	00EH,00CH,HEI00
		BYTE	011H,00DH,YOSEI
		BYTE	017H,017H,RUPYY
		BYTE	018H,00AH,BOSET
		BYTE	018H,00FH,HEIS1
		BYTE	0FFH
GRE11B		EQU	$
		BYTE	006H,01FH,BARI1
		BYTE	011H,009H,HEYA3
		BYTE	013H,00AH,HEYA3
		BYTE	014H,016H,RINGO
		BYTE	019H,00EH,HEBO0
		BYTE	01AH,01FH,HEIS0
;
;(11C)
		BYTE	017H,009H+020H,PLHIK
		BYTE	019H,011H+020H,HEBO0
		BYTE	01AH,000H+020H,HEIS0
;
;(123)
		BYTE	005H+020H,00EH,HEBO0
		BYTE	00DH+020H,014H,HEI00
;
;(124)
;;;		BYTE	008H+020H,005H+020H,ESW04
		BYTE	00DH+020H,006H+020H,HEYA2
		BYTE	012H+020H,001H+020H,HEYA2
		BYTE	0FFH
GRE11D		EQU	$
		BYTE	006H,00BH,RINGO
		BYTE	00CH,01BH,HEYA0
		BYTE	00DH,007H,HEIS0
		BYTE	00FH,01BH,HEYA0
		BYTE	012H,007H,KANI0
		BYTE	0FFH
GRE11E		EQU	$
		BYTE	008H,013H,DOZOO
		BYTE	00EH,00EH,DOZOO
		BYTE	01AH,011H,OCTA1
		BYTE	01AH,019H,DOZOO
;
;(11F)
		BYTE	009H,013H+020H,DOZOO
		BYTE	009H,017H+020H,DOZOO
		BYTE	010H,011H+020H,HEIS0
		BYTE	017H,00FH+020H,DOZOO
		BYTE	01DH,015H+020H,OCTA3
;
;(126)
		BYTE	005H+020H,00FH,OCTA3
		BYTE	008H+020H,009H,OCTA1
		BYTE	00CH+020H,015H,OCTA1
		BYTE	013H+020H,014H,DOZOO
		BYTE	013H+020H,017H,DOZOO
		BYTE	016H+020H,009H,OCTA1
;
;(127)
		BYTE	005H+020H,004H+020H,DOZOO
		BYTE	009H+020H,008H+020H,DOZOO
		BYTE	009H+020H,01DH+020H,DOZOO
		BYTE	01BH+020H,00EH+020H,OCTA1
		BYTE	0FFH
GRE122		EQU	$
		BYTE	004H,00CH,DOOMO
		BYTE	012H,017H,HEI00
		BYTE	014H,012H,NIWAT
		BYTE	0FFH
GRE125		EQU	$
		BYTE	008H,00FH,OCTA1
		BYTE	00CH,005H,OCTA1
		BYTE	00CH,014H,OCTA1
		BYTE	00DH,010H,OCTA1
		BYTE	011H,00CH,OCTA1
		BYTE	016H,018H,OCTA1
		BYTE	017H,008H,OCTA1
		BYTE	017H,010H,OCTA1
		BYTE	0FFH
GRE128		EQU	$
		BYTE	013H,007H,UTUBK
		BYTE	012H,008H,MEIR1
		BYTE	018H,019H,MEIR0
		BYTE	0FFH
GRE12A		EQU	$
		BYTE	009H,009H,BEECK
		BYTE	00CH,00EH,DACHO
		BYTE	00EH,00DH,OOOMU
		BYTE	00EH,00EH,KUTUU
		BYTE	00EH,011H,OOOMU
		BYTE	00FH,00CH,USAGI
		BYTE	010H,011H,USAGI
		BYTE	0FFH
GRE12B		EQU	$
		BYTE	00DH,016H,YOSEI
		BYTE	011H,014H,HEI00
		BYTE	015H,014H,HEI00
		BYTE	017H,010H,HEI00
		BYTE	0FFH
GRE12C		EQU	$
;		BYTE	008H,015H,HEIS0
;		BYTE	009H,015H,HEIS0
;		BYTE	008H,016H,HEIS0
;		BYTE	009H,016H,HEIS0
;		HEX	FF
;
;		BYTE	009H,015H,HEI00
;
		BYTE	014H,018H,HEI00
		BYTE	019H,009H,HEIS0
		BYTE	0FFH
GRE12D		EQU	$
		BYTE	00BH,013H,HEI00
		BYTE	010H,010H,HEYA0
		BYTE	016H,012H,HEIS0
		BYTE	0FFH
GRE12E		EQU	$
		BYTE	00CH,00EH,HEIS0
		BYTE	00EH,017H,HEIS0
		BYTE	012H,005H,ZORAS
		BYTE	017H,019H,OCTA1
		BYTE	0FFH
GRE12F		EQU	$
		BYTE	00CH,00FH,HEIS0
		BYTE	017H,007H,DOZOO
		BYTE	017H,00CH,DOZOO
		BYTE	0FFH
GRE130		EQU	$
;		BYTE	014H,00EH,SEKMV
		BYTE	014H,012H,SEKMV
;		BYTE	014H,016H,SEKMV
;		BYTE	018H,00EH,SEKMV
;		BYTE	018H,016H,SEKMV
		BYTE	019H,012H,SEKBN
		BYTE	01CH,00EH,SEKMV
		BYTE	01CH,016H,SEKMV
;
;(131)
		BYTE	019H,007H+020H,SUNA0
		BYTE	01CH,002H+020H,HAGE0
		BYTE	01FH,00AH+020H,SUNA0
;
;(138)
		BYTE	006H+020H,01DH,SUNA0
		BYTE	009H+020H,007H,HAGE0
		BYTE	009H+020H,00FH,SUNA0
		BYTE	00AH+020H,006H,UTUBK
		BYTE	00CH+020H,01BH,SUNA0
		BYTE	010H+020H,00AH,SUNA0
		BYTE	015H+020H,014H,SUNA0
;
;(139)
		BYTE	00BH+020H,017H+020H,MONOR	; BOMBER
;
		BYTE	001H+020H,016H+020H,ZIRAI
		BYTE	004H+020H,002H+020H,SUNA0
		BYTE	005H+020H,009H+020H,ZIRAI
		BYTE	00CH+020H,000H+020H,SUNA0
		BYTE	012H+020H,003H+020H,SUNA0
		BYTE	012H+020H,010H+020H,ZIRAI
		BYTE	013H+020H,014H+020H,HAGE0
		BYTE	01BH+020H,00DH+020H,ZIRAI
		BYTE	0FFH
GRE132		EQU	$
		BYTE	009H,01AH,BOSET
		BYTE	00BH,00BH,HEIS0
		BYTE	00BH,012H,HEIS0
		BYTE	012H,019H,YOSEI
		BYTE	0FFH
GRE133		EQU	$
		BYTE	00BH,015H,HEYA1
		BYTE	00EH,009H,HEYA0
		BYTE	012H,017H,UZUMK
		BYTE	01BH,01AH,OCTA1
		BYTE	0FFH
GRE134		EQU	$
		BYTE	00DH,00BH,HEYA0
		BYTE	011H,015H,USAG0
		BYTE	012H,011H,HEYA1
		BYTE	013H,008H,KARAS
		BYTE	013H,00EH,YOSEI
		BYTE	017H,015H,HEYA1
		BYTE	018H,00CH,HEYA0
		BYTE	0FFH
GRE135		EQU	$
		BYTE	007H,00EH,KARAS
		BYTE	009H,00DH,OCTA1
		BYTE	00CH,00AH,HEYA0
		BYTE	013H,019H,UTUBK
		BYTE	014H,019H,NYORO
		BYTE	017H,007H,KANI0
		BYTE	017H,011H,ZORAS
;
;(136)
		BYTE	00DH,005H+020H,ZORAS
		BYTE	01FH,007H+020H,NYORO
		BYTE	01FH,00FH+020H,NYORO
;
;(13D)
		BYTE	015H+020H,00AH,OCTA1
		BYTE	015H+020H,014H,ZORAS
		BYTE	015H+020H,00FH,KARAS
		BYTE	019H+020H,00BH,OCTA1
		BYTE	01AH+020H,019H,NYORO
		BYTE	01BH+020H,011H,KANI0
;
;(13E)
		BYTE	00BH+020H,004H+020H,ZORAS
		BYTE	00BH+020H,009H+020H,UZUMK
		BYTE	011H+020H,019H+020H,ZORAS
		BYTE	016H+020H,001H+020H,ZORAS
		BYTE	017H+020H,012H+020H,NYORO
		BYTE	019H+020H,014H+020H,NYORO
		BYTE	01AH+020H,00EH+020H,KANI0
		BYTE	0FFH
GRE137		EQU	$
		BYTE	008H,008H,KANI0
		BYTE	008H,010H,KANI0
		BYTE	00BH,00FH,KANI0
		BYTE	011H,016H,KANI0
		BYTE	015H,00CH,KARAS
		BYTE	019H,012H,ZORAS
		BYTE	0FFH
GRE13A		EQU	$
		BYTE	005H,017H,SAKAS
		BYTE	009H,00EH,KARAS
		BYTE	00AH,00BH,ISHI0
		BYTE	00EH,018H,ISHI0
		BYTE	0FFH
GRE13B		EQU	$
		BYTE	006H,013H,HEYA1
		BYTE	00AH,00CH,HEYA0
		BYTE	00DH,013H,JFISH
		BYTE	00BH,008H,KARAS
		BYTE	00EH,014H,UTUBK
		BYTE	010H,01BH,JFISH
		BYTE	014H,00FH,USAG0
		BYTE	01BH,014H,KARAS
;;;;		BYTE	018H,017H,HEYA0
		BYTE	0FFH
GRE13C		EQU	$
		BYTE	00CH,008H,HEYA1
		BYTE	00FH,014H,OCTA1
		BYTE	00FH,00EH,KARAS
		BYTE	011H,009H,SHIGE
		BYTE	015H,014H,OCTA3
		BYTE	017H,016H,KANI0
		BYTE	018H,00BH,OCTA1
		BYTE	0FFH
GRE13F		EQU	$
		BYTE	004H,011H,OCTA1
		BYTE	005H,016H,OCTA1
		BYTE	00BH,008H,ZORAS
		BYTE	00CH,007H,UZUMK
		BYTE	016H,010H,OCTBL
		BYTE	0FFH
;- - Koo han - -
GRE200		EQU	$
		BYTE	011H,00FH,HEIS0
		BYTE	012H,007H,SUKAS
		BYTE	015H,01EH,KINOK
		BYTE	01FH,00DH,Theft
;
;(201)
		BYTE	006H,008H+020H,SUKAS
		BYTE	008H,00BH+020H,PLHIK
		BYTE	008H,013H+020H,HEIS0
		BYTE	00AH,00BH+020H,Theft
		BYTE	00AH,011H+020H,NYORO
		BYTE	010H,00AH+020H,SHIGE
;
;(208)
		BYTE	00CH+020H,00DH,SHIGE
;;;		BYTE	012H+020H,01FH,UTUBK
		BYTE	013H+020H,009H,HEIS0
;
;(209)
		BYTE	005H+020H,009H+020H,HACHI
		BYTE	00FH+020H,008H+020H,SHIGE
		BYTE	0FFH
GRE202		EQU	$
		BYTE	012H,00DH,BOOK0
		BYTE	0FFH
GRE203		EQU	$
		BYTE	000H,000H,IWAST
		BYTE	004H,00BH,MONOR		; ETELE
;;		BYTE	004H,012H,IWABO
;;		BYTE	008H,010H,IWABO
		BYTE	01AH,010H,TEKTA
		BYTE	01EH,01AH,TEKTA
;
;(204)
		BYTE	00CH,007H+020H,IWABO
		BYTE	015H,00CH+020H,TEKTA
		BYTE	016H,002H+020H,UTUBK
		BYTE	019H,008H+020H,TEKTA
;
;(20B)
		BYTE	015H+020H,00AH,IWABO
		BYTE	016H+020H,006H,IWABO
		BYTE	01BH+020H,00DH,IWABO
		BYTE	01BH+020H,012H,DOOOR
;
;(20C)
		BYTE	00DH+020H,00CH+020H,IWABO
		BYTE	013H+020H,014H+020H,IWABO
		BYTE	014H+020H,00FH+020H,IWABO
		BYTE	0FFH
GRE205		EQU	$
		BYTE	00BH,007H,IWABO
		BYTE	00DH,008H,TEKTA
		BYTE	00EH,01EH,IWABO
		BYTE	00FH,01FH,TEKTA
;
;(206)
		BYTE	003H,00FH+020H,UTUBK
		BYTE	00DH,015H+020H,IWABO
		BYTE	00FH,009H+020H,TEKTA
		BYTE	00FH,015H+020H,IWABO
		BYTE	010H,014H+020H,YOSEI
;(20D)
		BYTE	011H+020H,01EH,TEKTA
;(20E)
		BYTE	00AH+020H,015H+020H,TEKTA
		BYTE	00FH+020H,00AH+020H,IWABO
		BYTE	00FH+020H,00FH+020H,TEKTA
		BYTE	016H+020H,009H+020H,IWABO
		BYTE	016H+020H,016H+020H,IWABO
		BYTE	0FFH
GRE207		EQU	$
		BYTE	007H,00EH,IWABO
		BYTE	00DH,00AH,IWABO
		BYTE	015H,017H,IWABO
		BYTE	016H,00FH,IWABO
		BYTE	016H,012H,IWABO
		BYTE	0FFH
GRE20A		EQU	$
		BYTE	004H,00EH,HACHI
		BYTE	00DH,010H,HEIS0
		BYTE	016H,011H,KARAS
		BYTE	016H,013H,KARAS
		BYTE	016H,00EH,SHIGE
		BYTE	017H,011H,KARAS
		BYTE	01AH,019H,RINGO
		BYTE	0FFH
GRE20F		EQU	$
		BYTE	002H,006H,PLCHK		; TAKI
;
		BYTE	00DH,00DH,KANI0
		BYTE	010H,005H,ZORAS
		BYTE	011H,00AH,ZORAS
		BYTE	012H,011H,KANI0
		BYTE	013H,008H,UZUMK
		BYTE	017H,00EH,OCTA3
		BYTE	0FFH
GRE210		EQU	$
		BYTE	00CH,005H,HEIS0
		BYTE	00CH,007H,RINGO
		BYTE	00FH,017H,TUBO2
		BYTE	012H,007H,HEIS0
		BYTE	018H,008H,HEIS0
		BYTE	0FFH
GRE211		EQU	$
		BYTE	00CH,017H,HEIS0
		BYTE	00DH,01AH,HEIS0
		BYTE	010H,008H,BOMB1
		BYTE	017H,008H,NIWAT
		BYTE	0FFH
GRE212		EQU	$
		BYTE	00AH,014H,YOSEI
		BYTE	00EH,015H,HEIS0
		BYTE	010H,00FH,UZUMK
		BYTE	015H,015H,HEI00
		BYTE	0FFH
GRE213		EQU	$
		BYTE	009H,018H,HACHI
		BYTE	00CH,007H,BOMB3
		BYTE	017H,00DH,HEIS0
		BYTE	01AH,012H,HEIS0
		BYTE	0FFH
GRE214		EQU	$
		BYTE	00DH,00DH,GOST0
		BYTE	00FH,019H,GOST0
		BYTE	010H,008H,GOST0
		BYTE	011H,014H,GOST0
		BYTE	014H,013H,GOST0
		BYTE	019H,011H,HEIS0
		BYTE	0FFH
GRE215		EQU	$
		BYTE	009H,011H,UZUMK
		BYTE	00EH,016H,HEIS3
		BYTE	00FH,01BH,YOSEI
		BYTE	017H,00BH,HEIS1
		BYTE	01AH,004H,RINGO
		BYTE	0FFH
GRE216		EQU	$
		BYTE	00AH,00DH,NYORO
		BYTE	015H,00FH,MAJOO
		BYTE	018H,006H,NYORO
		BYTE	0FFH
GRE217		EQU	$
		BYTE	008H,018H,NYORO
		BYTE	00AH,017H,NYORO
		BYTE	00BH,00DH,HEIS3
		BYTE	00CH,016H,NYORO
		BYTE	016H,008H,NYORO
		BYTE	0FFH
GRE218		EQU	$
		BYTE	008H,012H,HEIS0
		BYTE	00AH,018H,RUPYB
		BYTE	016H,018H,SYOBY
		BYTE	01CH,007H,HEIS0
;
;(219)
		BYTE	00BH,015H+020H,HEIS0
		BYTE	018H,000H+020H,BEECK
;;;;		BYTE	018H,00CH+020H,HEIS3
;;;;		BYTE	01DH,01AH+020H,HEIS0
;
;(220)
		BYTE	00EH+020H,012H,HEIS0
		BYTE	014H+020H,014H,NIWAT
		BYTE	015H+020H,016H,NIWAT
;;;;		BYTE	01BH+020H,01DH,HEIS3
;
;(221)
		BYTE	002H+020H,019H+020H,HEIS1
		BYTE	00EH+020H,000H+020H,HEIS0
		BYTE	013H+020H,016H+020H,HACHI
		BYTE	0FFH
GRE21A		EQU	$
 		BYTE	008H,00FH,HEIS0
     		BYTE	00EH,00CH,HEIS0
		BYTE	011H,00DH,YOSEI
		BYTE	018H,00AH,BOSET
		BYTE	018H,00FH,HEIS3
		BYTE	0FFH
GRE21B		EQU	$
		BYTE	00DH,006H,HEIS3
		BYTE	014H,016H,RINGO
		BYTE	01AH,01FH,HEIS3
;
;(21C)
		BYTE	013H,017H+020H,HEIS0
;
;(223)
		BYTE	005H+020H,01EH,UZUMK
		BYTE	008H+020H,008H,HEIS1
		BYTE	00BH+020H,01FH,HEI00
;
;(224)
;;;		BYTE	008H+020H,005H+020H,ESW04
		BYTE	009H+020H,018H+020H,HEIS0
		BYTE	00DH+020H,001H+020H,HEIS0
		BYTE	012H+020H,001H+020H,HEIS3
		BYTE	0FFH
GRE21D		EQU	$
		BYTE	006H,00BH,HACHI
		BYTE	00CH,01BH,HEYA0
		BYTE	00DH,007H,HEIS3
		BYTE	00FH,01BH,HEYA0
		BYTE	0FFH
GRE21E		EQU	$
		BYTE	00EH,00EH,DOZOO
		BYTE	01AH,011H,HEIS3
		BYTE	01AH,019H,DOZOO
;
;(21F)
		BYTE	004H,013H+020H,PLHIK
		BYTE	009H,013H+020H,DOZOO
		BYTE	009H,017H+020H,DOZOO
		BYTE	010H,011H+020H,HEIS3
		BYTE	017H,00FH+020H,DOZOO
;
;(226)
		BYTE	005H+020H,00FH,HEIS0
		BYTE	008H+020H,009H,HEIS3
		BYTE	00CH+020H,015H,HEIS1
		BYTE	013H+020H,014H,DOZOO
		BYTE	013H+020H,017H,DOZOO
;
;(227)
		BYTE	005H+020H,004H+020H,DOZOO
		BYTE	008H+020H,011H+020H,DOZOO
		BYTE	009H+020H,008H+020H,DOZOO
		BYTE	009H+020H,01AH+020H,DOZOO
		BYTE	009H+020H,01DH+020H,DOZOO
		BYTE	017H+020H,002H+020H,YOSEI
		BYTE	01AH+020H,00DH+020H,HEIS3
		BYTE	0FFH
GRE222		EQU	$
		BYTE	004H,00CH,DOOMO
		BYTE	014H,00CH,NIWAT
		BYTE	014H,012H,NIWAT
		BYTE	0FFH
GRE225		EQU	$
		BYTE	008H,00EH,HEIS0
		BYTE	00CH,005H,HEIS0
		BYTE	011H,009H,HEIS0
		BYTE	016H,019H,HEIS3
		BYTE	0FFH
GRE228		EQU	$
		BYTE	00CH,012H,HEIS0
		BYTE	013H,007H,UTUBK
		BYTE	012H,008H,MEIR1
		BYTE	018H,019H,MEIR0
		BYTE	019H,00CH,HEIS0
		BYTE	0FFH
GRE229		EQU	$
		BYTE	005H,00EH,HEIS0
		BYTE	00CH,00CH,HEIS3
		BYTE	014H,00BH,HEIS0
		BYTE	0FFH
GRE22A		EQU	$
		BYTE	009H,009H,BEECK
		BYTE	00CH,00EH,DACHO
		BYTE	00EH,00DH,OOOMU
		BYTE	00EH,00EH,KUTUU
		BYTE	00EH,011H,OOOMU
		BYTE	00FH,00CH,USAGI
		BYTE	010H,011H,USAGI
		BYTE	014H,015H,RUPYB
		BYTE	018H,00FH,RUPYB
		BYTE	0FFH
GRE22B		EQU	$
		BYTE	006H,008H,HEIS0
		BYTE	00DH,016H,YOSEI
		BYTE	011H,014H,HEIS0
		BYTE	015H,014H,HEIS0
		BYTE	017H,010H,HEIS0
		BYTE	0FFH
GRE22C		EQU	$
;;;		BYTE	009H,015H,HEIS3
;;;		BYTE	00FH,017H,HEIS0
		BYTE	014H,018H,HEIS0
		BYTE	019H,009H,HEIS0
		BYTE	0FFH
GRE22D		EQU	$
		BYTE	008H,00FH,OCTA3
		BYTE	00BH,012H,HEIS0
		BYTE	016H,012H,HEIS3
		BYTE	017H,01CH,ZORAS
		BYTE	0FFH
GRE22E		EQU	$
		BYTE	009H,00CH,YOSEI
		BYTE	00BH,014H,HACHI
		BYTE	00CH,00EH,HEIS3
		BYTE	00EH,017H,HEIS0
		BYTE	012H,005H,ZORAS
		BYTE	017H,019H,OCTA1
		BYTE	0FFH
GRE22F		EQU	$
		BYTE	00CH,00FH,HEIS3
		BYTE	017H,007H,DOZOO
		BYTE	017H,00CH,DOZOO
		BYTE	0FFH
GRE230		EQU	$
;;;		BYTE	014H,00EH,SEKMV
		BYTE	014H,012H,SEKMV
;;;		BYTE	014H,016H,SEKMV
;;;		BYTE	018H,00EH,SEKMV
;;;		BYTE	018H,016H,SEKMV
		BYTE	019H,012H,SEKBN
		BYTE	01CH,00EH,SEKMV
		BYTE	01CH,016H,SEKMV
;
;(231)
		BYTE	019H,007H+020H,SUNA0
		BYTE	01CH,002H+020H,HAGE0
		BYTE	01FH,00AH+020H,SUNA0
;
;(238)
		BYTE	003H+020H,00CH,ZIRAI
		BYTE	006H+020H,01DH,SUNA0
		BYTE	009H+020H,007H,HAGE0
		BYTE	009H+020H,00FH,SUNA0
		BYTE	00AH+020H,006H,UTUBK
		BYTE	00CH+020H,01BH,SUNA0
		BYTE	010H+020H,00AH,SUNA0
		BYTE	015H+020H,014H,SUNA0
;
;(239)
		BYTE	00BH+020H,017H+020H,MONOR	; BOMBER
;
		BYTE	004H+020H,002H+020H,SUNA0
		BYTE	00AH+020H,008H+020H,SUNA0
		BYTE	012H+020H,003H+020H,SUNA0
		BYTE	013H+020H,014H+020H,HAGE0
		BYTE	0FFH
GRE232		EQU	$
		BYTE	009H,01AH,BOSET
		BYTE	00CH,00BH,HEI00
		BYTE	00CH,012H,HEIS0
		BYTE	010H,013H,HEI00
		BYTE	012H,019H,BOMB2
		BYTE	015H,008H,ZIRAI
		BYTE	0FFH
GRE233		EQU	$
		BYTE	006H,013H,OCTA1
		BYTE	00BH,014H,OCTA3
		BYTE	012H,017H,UZUMK
		BYTE	016H,012H,OCTA1
		BYTE	01BH,01AH,OCTA1
		BYTE	0FFH
GRE234		EQU	$
		BYTE	00EH,017H,PLHIK
		BYTE	013H,008H,KARAS
		BYTE	012H,011H,HEIS0
		BYTE	013H,006H,OCTA1
		BYTE	018H,00CH,OCTA1
		BYTE	0FFH
GRE235		EQU	$
		BYTE	007H,00EH,KARAS
		BYTE	009H,00DH,OCTA1
		BYTE	00CH,00AH,HEIS3
		BYTE	013H,019H,UTUBK
		BYTE	014H,019H,NYORO
		BYTE	017H,011H,ZORAS
;
;(236)
		BYTE	00AH,018H+020H,OCTA3
		BYTE	00DH,005H+020H,ZORAS
		BYTE	019H,017H+020H,ZORAS
		BYTE	01FH,007H+020H,NYORO
		BYTE	01FH,00FH+020H,NYORO
;
;(23D)
		BYTE	006H+020H,01BH,ZORAS
		BYTE	00FH+020H,00DH,KARAS
		BYTE	014H+020H,006H,OCTA1
		BYTE	015H+020H,00AH,OCTA1
		BYTE	015H+020H,014H,ZORAS
		BYTE	019H+020H,00BH,OCTA1
		BYTE	01AH+020H,019H,NYORO
;
;(23E)
		BYTE	00BH+020H,009H+020H,UZUMK
		BYTE	011H+020H,019H+020H,ZORAS
		BYTE	016H+020H,001H+020H,ZORAS
		BYTE	017H+020H,012H+020H,NYORO
		BYTE	019H+020H,014H+020H,NYORO
		BYTE	0FFH
GRE236		EQU	$
GRE237		EQU	$
		BYTE	008H,008H,KANI0
		BYTE	008H,010H,KANI0
		BYTE	00BH,00FH,KANI0
		BYTE	011H,016H,KANI0
		BYTE	019H,012H,ZORAS
		BYTE	0FFH
GRE238		EQU	$
GRE239		EQU	$
GRE23A		EQU	$
		BYTE	005H,017H,SAKAS
		BYTE	00AH,00BH,ISHI0
		BYTE	00DH,014H,KARAS
		BYTE	00EH,013H,KARAS
		BYTE	00FH,014H,KARAS
		BYTE	010H,013H,KARAS
		BYTE	00FH,011H,HEIS3
		BYTE	017H,017H,ISHI0
		BYTE	0FFH
GRE23B		EQU	$
		BYTE	00DH,013H,JFISH
		BYTE	00FH,00CH,OCTA1
		BYTE	00EH,014H,UTUBK
		BYTE	014H,00FH,OCTA3
		BYTE	018H,017H,HEIS0
		BYTE	01BH,014H,KARAS
		BYTE	0FFH
GRE23C		EQU	$
		BYTE	009H,00BH,KARAS
		BYTE	00AH,008H,HEIS0
		BYTE	00FH,014H,OCTA1
		BYTE	011H,009H,HEIS3
		BYTE	015H,014H,OCTA3
		BYTE	0FFH
GRE23D		EQU	$
GRE23E		EQU	$
GRE23F		EQU	$
		BYTE	005H,016H,OCTA3
		BYTE	00CH,007H,UZUMK
		BYTE	013H,006H,ZORAS
		BYTE	016H,011H,OCTBL
		BYTE	0FFH
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		Enemy data      			      %		
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EDADAD		EQU	$
		WORD	ED00,ED01,ED02,ED03,ED04,ED05,ED06,ED07
		WORD	ED08,ED09,ED0A,ED0B,ED0C,ED0D,ED0E,ED0F
		WORD	ED10,ED11,ED12,ED13,ED14,ED15,ED16,ED17
		WORD	ED18,ED19,ED1A,ED1B,ED1C,ED1D,ED1E,ED1F
		WORD	ED20,ED21,ED22,ED23,ED24,ED25,ED26,ED27
		WORD	ED28,ED29,ED2A,ED2B,ED2C,ED2D,ED2E,ED2F
		WORD	ED30,ED31,ED32,ED33,ED34,ED35,ED36,ED37
		WORD	ED38,ED39,ED3A,ED3B,ED3C,ED3D,ED3E,ED3F
		WORD	ED40,ED41,ED42,ED43,ED44,ED45,ED46,ED47
		WORD	ED48,ED49,ED4A,ED4B,ED4C,ED4D,ED4E,ED4F
		WORD	ED50,ED51,ED52,ED53,ED54,ED55,ED56,ED57
		WORD	ED58,ED59,ED5A,ED5B,ED5C,ED5D,ED5E,ED5F
		WORD	ED60,ED61,ED62,ED63,ED64,ED65,ED66,ED67
		WORD	ED68,ED69,ED6A,ED6B,ED6C,ED6D,ED6E,ED6F
		WORD	ED70,ED71,ED72,ED73,ED74,ED75,ED76,ED77
		WORD	ED78,ED79,ED7A,ED7B,ED7C,ED7D,ED7E,ED7F
		WORD	ED80,ED81,ED82,ED83,ED84,ED85,ED86,ED87
		WORD	ED88,ED89,ED8A,ED8B,ED8C,ED8D,ED8E,ED8F
		WORD	ED90,ED91,ED92,ED93,ED94,ED95,ED96,ED97
		WORD	ED98,ED99,ED9A,ED9B,ED9C,ED9D,ED9E,ED9F
		WORD	EDA0,EDA1,EDA2,EDA3,EDA4,EDA5,EDA6,EDA7
		WORD	EDA8,EDA9,EDAA,EDAB,EDAC,EDAD,EDAE,EDAF
		WORD	EDB0,EDB1,EDB2,EDB3,EDB4,EDB5,EDB6,EDB7
		WORD	EDB8,EDB9,EDBA,EDBB,EDBC,EDBD,EDBE,EDBF
		WORD	EDC0,EDC1,EDC2,EDC3,EDC4,EDC5,EDC6,EDC7
		WORD	EDC8,EDC9,EDCA,EDCB,EDCC,EDCD,EDCE,EDCF
		WORD	EDD0,EDD1,EDD2,EDD3,EDD4,EDD5,EDD6,EDD7
		WORD	EDD8,EDD9,EDDA,EDDB,EDDC,EDDD,EDDE,EDDF
		WORD	EDE0,EDE1,EDE2,EDE3,EDE4,EDE5,EDE6,EDE7
		WORD	EDE8,EDE9,EDEA,EDEB,EDEC,EDED,EDEE,EDEF
		WORD	EDF0,EDF1,EDF2,EDF3,EDF4,EDF5,EDF6,EDF7
		WORD	EDF8,EDF9,EDFA,EDFB,EDFC,EDFD,EDFE,EDFF
;
		WORD	E100,E101,E102,E103,E104,E105,E106,E107
		WORD	E108,E109,E10A,E10B,E10C,E10D,E10E,E10F
		WORD	E110,E111,E112,E113,E114,E115,E116,E117
		WORD	E118,E119,E11A,E11B,E11C,E11D,E11E,E11F
		WORD	E120,E121,E122,E123,E124,E125,E126,E127
		WORD	E128,E129,E12A,E12B,E12C,E12D,E12E,E12F
		WORD	E130,E131,E132,E133,E134,E135,E136,E137
		WORD	E138,E139,E13A,E13B,E13C,E13D,E13E,E13F
		WORD	E140,E141,E142,E143,E144,E145,E146,E147
		WORD	E148,E149,E14A,E14B,E14C,E14D,E14E,E14F
		WORD	E150,E151,E152,E153,E154,E155,E156,E157
		WORD	E158,E159,E15A,E15B,E15C,E15D,E15E,E15F
		WORD	E160,E161,E162,E163,E164,E165,E166,E167
		WORD	E168,E169,E16A,E16B,E16C,E16D,E16E,E16F
		WORD	E170,E171,E172,E173,E174,E175,E176,E177
		WORD	E178,E179,E17A,E17B,E17C,E17D,E17E,E17F
;===========================================
;-- For heishi move paturn !! --
RIGT		EQU	00100000B	;--> <-- Ittsutari kitari 
LEFT		EQU	01000000B	;<-- -->
DOWN		EQU	01100000B	; V ^
UPUP		EQU	10000000B	; ^ V
KAB0		EQU	10100000B	; Kabe R mawari !
KAB1		EQU	11000000B	; Kabe L mawari !
;
HAB1		EQU	00000000B	; Ittsutari kitari  Move range 1
HAB2		EQU	00100000B	;     "      2
HAB3		EQU	01000000B	;     "      3
HAB4		EQU	01100000B	;     "      4
;
KABR		EQU	00000000B	; Kabe mawari first muki R 
KABL		EQU	00100000B	;	  "		 L
KABD		EQU	01000000B	;	  "		 D
KABU		EQU	01100000B	;	  "		 U
;- - - - - - - - - - - - - -
ED00		EQU	$
		BYTE    000H
		BYTE	005H,017H,GANON
		BYTE	0FFH
ED02		EQU	$
		BYTE	000H
		BYTE	005H+080H,012H,NEZU0
		BYTE	006H+080H,015H,NEZU0
		BYTE	008H+080H,00FH,NEZU0
		BYTE	008H+080H,010H,NEZU0
		BYTE	009H+080H,018H,NEZU0
;
		BYTE	017H+080H,00FH+0E0H,HEBST
		BYTE	018H+080H,009H+0E0H,HEBST
		BYTE	018H+080H,00BH+0E0H,HEBST
		BYTE	019H+080H,00AH+0E0H,HEBST
		BYTE	019H+080H,00CH+0E0H,HEBST
		BYTE	01AH+080H,009H+0E0H,HEBST
		BYTE	01BH+080H,00BH+0E0H,HEBST
;
		BYTE	017H+080H,00AH,ESW12
		BYTE	017H+080H,015H,ESW02
;
		BYTE	01AH+080H,00DH,NEZU0
		BYTE	01AH+080H,012H,NEZU0
		BYTE	0FFH
ED04		EQU	$
		BYTE	000H
		BYTE	004H,009H,TAAMA
		BYTE	004H,014H,CHAN0
		BYTE	004H,01BH,CHAN3
		BYTE	007H,005H,CHAN2
		BYTE	009H,015H,CHAN2
		BYTE	012H,007H+0E0H,KUROS
		BYTE	015H,015H,ESW02
		BYTE	015H,01AH,ESW12
		BYTE	015H,018H+0E0H,BMBST
		BYTE	015H,01CH,SLIME
		BYTE	017H,016H+0E0H,BMBST
		BYTE	017H,01AH+0E0H,BMBST
		BYTE	018H,018H+0E0H,BMBST
		BYTE	01AH,01AH,SLIME
		BYTE	01BH,015H,SLIME
		BYTE	018H,007H,DARUM
		BYTE	0FFH
ED06		EQU	$
		BYTE	000H
		BYTE	017H,007H,PATAR
;
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
		BYTE	017H,007H,PATAM
;
;;		BYTE	017H,007H,PATAR
;
		BYTE	0FFH
ED07		EQU	$
		BYTE	000H
		BYTE	00EH,012H,HAYAB
		BYTE	0FFH
ED08		EQU	$
		BYTE	000H
		BYTE	016H,007H,IZUMI
		BYTE	0FFH
ED09		EQU	$
		BYTE	000H
		BYTE	008H,007H,BGBM0
		BYTE	008H,008H,BGBM0
		BYTE	00BH,017H,BABUL
		BYTE	0FFH
ED0A		EQU	$
		BYTE	000H
		BYTE	008H,017H,KAM01
		BYTE	009H,017H,KAM01
		BYTE	009H,00DH+0E0H,SKST1
		BYTE	009H,011H+0E0H,SKST1
		BYTE	00BH,013H+0E0H,SKCHK
		BYTE	00EH,00DH+0E0H,SKST1
		BYTE	00EH,011H+0E0H,SKST1
		BYTE	0FFH
ED0B		EQU	$
		BYTE	000H
		BYTE	004H,01CH,TAAMA
		BYTE	008H,007H,KAM01
		BYTE	00BH,016H,KAM01
		BYTE	00BH,01BH,KAM01
		BYTE	016H,005H,KAM01
		BYTE	016H,00AH,KAM01
		BYTE	019H,007H,KAM01
		BYTE	019H,008H,KAM01
		BYTE	01BH,006H,KAM01
		BYTE	01BH,009H,KAM01
		BYTE	0FFH
ED0D		EQU	$
		BYTE	000H
		BYTE	015H,007H,SHSAI
		BYTE	0FFH
ED0E		EQU	$
		BYTE	000H
		BYTE	012H,016H,ICMAN
		BYTE	016H,005H,ZOOL2
		BYTE	018H,005H,ZOOL2
		BYTE	01AH,005H,ZOOL2
		BYTE	0FEH,000H,KAGI0
		BYTE	0FFH
ED11		EQU	$
		BYTE	000H
		BYTE	00AH,017H,NEZU0
		BYTE	00AH,018H,NEZU0
		BYTE	00CH,017H,KOMO0
		BYTE	00CH,018H,KOMO0
		BYTE	011H,01CH,NEZU0
		BYTE	012H,01CH,NEZU0
		BYTE	016H,01AH,NEZU0
		BYTE	016H,01BH,NEZU0
		BYTE    0FFH
ED12		EQU	$
		BYTE	000H
		BYTE	007H,00FH,OYAGI
		BYTE	006H,010H,HELP0
;;;;		BYTE	007H,00AH,D_0_9		; Osyaberi shinpu
;;;;		BYTE	00AH,018H,PLHIK		; Hipparu aitem
		BYTE	0FFH
ED13		EQU	$
		BYTE	000H
		BYTE	011H,014H,TAAMA
		BYTE	004H,018H,BABUL
		BYTE	004H,01AH,BABUL
		BYTE	005H,018H,BABUL
		BYTE	005H,01AH,BABUL
		BYTE	016H,01BH,TELSA
		BYTE	018H,016H,DARUM
		BYTE	0FEH,000H,KAGI0
		BYTE	018H,01EH,MEMEL
		BYTE	01AH,014H,TELSA
		BYTE	01BH,01BH,DOOMO
		BYTE	0FFH
ED14		EQU	$
		BYTE	001H
		BYTE	004H+080H,00CH,DOKN2
		BYTE	00AH+080H,00FH,DOKN1
		BYTE	00AH+080H,019H,DOKN0
		BYTE	00DH+080H,003H,DOKN0
		BYTE	00DH+080H,01BH,DOKN0
		BYTE	013H+080H,00FH,DOKN0
		BYTE	018H+080H,008H,DOKN2
		BYTE	018H+080H,017H,DOKN3
		BYTE	01BH+080H,00CH,DOKN2
		BYTE	01BH+080H,013H,DOKN3
		BYTE	0FFH
ED15		EQU	$
		BYTE	001H
		BYTE	00CH+080H,004H,DOKN0
		BYTE	011H+080H,011H,DOKN0
		BYTE	017H+080H,004H,DOKN1
		BYTE	01BH+080H,016H,DOKN3
;
		BYTE	009H+080H,00AH,SLIME
		BYTE	009H+080H,015H,SLIME
		BYTE	00AH+080H,009H,BABUL
		BYTE	016H+080H,018H,DARUM
		BYTE	017H+080H,008H,BABUL
		BYTE	017H+080H,017H,BABUL
		BYTE	0FFH
ED16		EQU	$
		BYTE	000H
		BYTE	007H,015H,SLIME
		BYTE	008H,015H,SLIME
		BYTE	009H,015H,ZOOL2
		BYTE	00AH,010H,SLIME
		BYTE	018H+080H,00CH,AMENB
		BYTE	01BH+080H,007H,AMENB
		BYTE	01BH+080H,014H,AMENB
		BYTE	0FFH
ED17		EQU	$
		BYTE	000H
		BYTE	00BH,007H,BYOYN
		BYTE	00EH,010H,BYOYN
		BYTE	016H,007H,BYOYN
;
		BYTE	007H,015H,MOTS0
		BYTE	009H,00BH,MOTS0
		BYTE	011H,006H,BAAR0
		BYTE	011H,012H,MOTS0
		BYTE	017H,00BH,MOTS0
		BYTE	017H,017H,MOTS0
		BYTE	0FFH
ED19		EQU	$
		BYTE	000H
		BYTE	00AH,016H,CHIBI
		BYTE	00EH,01AH,CHIBI
		BYTE	010H,016H,CHIBI
		BYTE	016H,018H,CHIBI
		BYTE	0FFH
ED1A		EQU	$
		BYTE	000H
		BYTE	006H,008H,MOTS1
		BYTE	006H,016H,KAM01
		BYTE	006H,019H,KAM01
		BYTE	00AH,016H,KAM01
		BYTE	00AH,019H,KAM01
		BYTE	010H,007H,MOTS1
		BYTE	015H,016H,HARI0
		BYTE	017H,016H,HARI0
		BYTE	019H,015H,SEKZ4
		BYTE	019H,016H,HARI0
		BYTE	01AH,007H+0E0H,YKDW1
		BYTE	0FFH
ED1B		EQU	$
		BYTE	000H
		BYTE	004H,007H,TAAMA
		BYTE	004H,010H,KIANA
		BYTE	00CH,003H,HARI0
		BYTE	014H,007H,MEDA2
		BYTE	01CH,003H,MEDAM
		BYTE	01CH,00CH,MEDAM
		BYTE	0FFH
ED1C		EQU	$
		BYTE	000H
		BYTE	015H,014H,NOMOS
		BYTE	015H,017H,NOMOS
		BYTE	015H,01AH,NOMOS
		BYTE	018H,01AH,NOMOS
		BYTE	018H,017H,NOMOS
		BYTE	018H,014H,NOMOS
;
		BYTE	018H,017H+0E0H,NOMCT
;
		BYTE	007H,007H,YOSEI
		BYTE	007H,008H,YOSEI
		BYTE	008H,007H,YOSEI
		BYTE	008H,008H,YOSEI
;
		BYTE	0FFH
ED1E		EQU	$
		BYTE	000H
		BYTE	009H,01AH,TAAMA
;
		BYTE	005H,016H,ZOOL1
		BYTE	005H,019H,ZOOL1
		BYTE	00AH,016H,ZOOL1
		BYTE	00AH,019H,ZOOL1
		BYTE	018H,008H,SLIME
		BYTE	01CH,005H,SLIME
		BYTE	0FFH
ED1F		EQU	$
		BYTE	000H
		BYTE	015H,004H,PENGI
		BYTE	015H,009H,PENGI
		BYTE	016H,006H,BABUL
		BYTE	017H,007H,DOOMO
		BYTE	017H,00AH,PENGI
		BYTE	019H,00AH,PENGI
		BYTE	01BH,004H,PENGI
		BYTE	01BH,009H,PENGI
		BYTE	0FFH
ED20		EQU	$
	        BYTE    000H
		BYTE	015H,007H,SHSAI
		BYTE	0FFH
ED21		EQU	$
	        BYTE    000H
	        BYTE    006H,005H,NEZU0
		BYTE	0FEH,000H,KAGI0
	        BYTE    006H,017H,KOMO0
	        BYTE    006H,018H,KOMO0
	        BYTE    009H,011H,NEZU0
	        BYTE    00AH,00DH,NEZU0
	        BYTE    014H,007H,NEZU0
	        BYTE    014H,00DH,KOMO0
	        BYTE    014H,012H,KOMO0
		BYTE    018H,00DH,NEZU0
		BYTE    01CH,00AH,NEZU0
		BYTE    01CH,013H,NEZU0
		BYTE	0FFH
ED22		EQU	$
		BYTE	000H
		BYTE	014H,006H,NEZU0
		BYTE	014H,008H,NEZU0
		BYTE	014H,011H,NEZU0
		BYTE	014H,012H,NEZU0
		BYTE	015H,011H,NEZU0
		BYTE	015H,012H,NEZU0
		BYTE	018H,009H,NEZU0
		BYTE	0FFH
ED23		EQU	$
		BYTE	000H
		BYTE	014H,015H,MEMED
		BYTE	014H,016H,MEMED
		BYTE	014H,017H,MEMED
		BYTE	014H,018H,MEMED
		BYTE	014H,019H,MEMED
		BYTE	0FFH
ED24		EQU	$
		BYTE	000H
		BYTE	004H,013H,BGBM0
		BYTE	004H,01CH,BGBM0
		BYTE	006H,01BH,CHAN3
		BYTE	008H,005H,DARUM
		BYTE	008H,007H,BGBM0
		BYTE	008H,00AH,DARUM
		BYTE	00CH,00CH,DOOMO
		BYTE	0FFH
ED25		EQU	$
		BYTE	000H
;		BYTE	004H,01AH,ZOOL2
;		BYTE	006H,004H+0E0H,AYAS0
;		BYTE	009H,00BH+0E0H,AYAS1
;		BYTE	009H,013H+0E0H,AYAS0
;		BYTE	015H,01AH,AMENB
;		BYTE	016H,010H,AMENB
;		BYTE	016H,012H,AMENB
;		BYTE	018H,018H,AMENB
;		BYTE	019H,014H,AMENB
;		BYTE	01AH,01BH,AMENB
;		BYTE	01BH,00FH,AMENB
		BYTE	0FFH
ED26		EQU	$
		BYTE	000H
		BYTE	004H,003H,BGBM0
		BYTE	005H,01AH,ZOOL1
		BYTE	006H,005H,ZOOL1
		BYTE	006H,009H,SKEL2
		BYTE	009H,004H,SKEL2
		BYTE	00CH,00CH,BGBM0
		BYTE	017H,006H,SEKZ4
		BYTE	017H,019H,BGBM1
		BYTE	018H,007H,ZOOL1
		BYTE	018H,015H,FISH0
		BYTE	019H,018H,ZOOL2
		BYTE	01AH,01CH,HBTAM
		BYTE	0FFH
ED27		EQU	$
		BYTE	000H
		BYTE	009H,017H,HAYAM
		BYTE	013H,018H,HAYAM
		BYTE	013H,01BH,HAYAM
		BYTE	01AH,00CH,HAYAM
;
		BYTE	006H,00FH,SPARK
		BYTE	00EH,005H,CHIBI
		BYTE	016H,004H,CHIBI
		BYTE	0FFH
ED28		EQU	$
		BYTE	000H
		BYTE	006H,00AH,FISH0
		BYTE	008H,008H,AMENB
		BYTE	00AH,00BH,AMENB
		BYTE	00DH,007H,AMENB
		BYTE	010H,008H,HARI0
		BYTE	0FFH
ED29		EQU	$
		BYTE	000H
		BYTE	016H,008H+010H,BIGKO
		BYTE	016H,007H+0E0H,BCONT		; BG1 move !
		BYTE	0FFH
ED2A		EQU	$
		BYTE	000H
		BYTE	017H,010H,TAAMA
		BYTE	00FH,00FH,BYOYN
;
		BYTE	008H,00DH,MOTS0
		BYTE	00CH,007H,MOTS0
		BYTE	00CH,010H,MOTS0
		BYTE	00FH,00DH,MOTS0
		BYTE	011H,013H,MOTS0
		BYTE	013H,00FH,MOTS0
		BYTE	0FFH
ED2B		EQU	$
		BYTE	000H
		BYTE	011H,00AH,TAAMA
;
		BYTE	00AH,00AH,SEKZ4
		BYTE	017H,007H,ZOOL1
		BYTE	017H,016H,YOSEI
		BYTE	018H,018H,YOSEI
		BYTE	01AH,005H,ZOOL1
		BYTE	01AH,00AH,ZOOL1
		BYTE	01AH,017H,YOSEI
		BYTE	0FFH
ED2C		EQU	$
		BYTE	000H
		BYTE	005H,017H,IZUMI
;
		BYTE	004H,009H,YOSEI
		BYTE	005H,006H,YOSEI
		BYTE	007H,008H,YOSEI
		BYTE	0FFH
ED2E		EQU	$
		BYTE	000H
		BYTE	006H,014H,PENGI
		BYTE	006H,01CH,PENGI
		BYTE	008H,016H,PENGI
		BYTE	008H,019H,PENGI
		BYTE	00BH,014H,PENGI
		BYTE	00BH,01BH,PENGI
		BYTE	0FFH
ED30		EQU	$
		BYTE	000H
		BYTE	005H,007H,SDEMO
		BYTE	0FFH
ED31		EQU	$
		BYTE	000H
		BYTE	01AH,018H,TAAMA
		BYTE	00BH,016H,TAAMA
		BYTE	005H,015H,MOTS0
		BYTE	006H,005H,MOTS0
		BYTE	009H,003H,MOTS0
		BYTE	00CH,00BH,MOTS0
		BYTE	015H,003H,MOTS0
		BYTE	015H,01BH,MOTS0
		BYTE	016H,013H,MOTS0
		BYTE	018H,003H,MOTS0
		BYTE	019H,017H,MOTS0
		BYTE	01CH,009H,MOTS0
		BYTE	0FFH
ED32		EQU	$
		BYTE	000H
		BYTE	00DH,00BH,KOMO0
		BYTE	00DH,00FH,HEBI0
		BYTE	00DH,013H,KOMO0
		BYTE	00EH,010H,HEBI0
		BYTE	00FH,012H,HEBI0
		BYTE	0FFH
ED33		EQU	$
		BYTE	000H
		BYTE	017H,006H,RANEM
		BYTE	017H,009H,RANEM
		BYTE	019H,007H,RANEM
		BYTE	0FFH
ED34		EQU	$
		BYTE	000H
		BYTE	00BH,00FH,AMENB
		BYTE	012H,010H,AMENB
		BYTE	015H,00FH,FISH0
		BYTE	017H,019H,HBTAM
		BYTE	018H,003H,SLIME
		BYTE	018H,014H,ZOOL2
		BYTE	01AH,016H,SKEL2
		BYTE	0FFH
ED35		EQU	$
		BYTE	000H
		BYTE	006H,016H,TAAMA
		BYTE	005H,014H,REBA1
		BYTE	005H,018H,ZOOL1
		BYTE	009H,013H,HARI0
		BYTE	00BH,014H,SKEL2
		BYTE	014H,007H,SLIME
		BYTE	018H,014H,SKEL2
		BYTE	019H,016H,HBTAM
		BYTE	01AH,017H,BGBM1
		BYTE	01BH,014H,ZOOL2
		BYTE	01CH,01BH,SKEL2
		BYTE	0FFH
ED36		EQU	$
		BYTE	000H
		BYTE	002H,017H+0E0H,AYAS2
		BYTE	00AH,00BH,AMENB
		BYTE	00AH,014H,AMENB
		BYTE	00BH,015H,BGBM0
		BYTE	00DH,001H+0E0H,AYAS0
		BYTE	013H,014H,FISH0
		BYTE	013H,01EH+0E0H,AYAS1
		BYTE	014H,009H,AMENB
		BYTE	017H,012H,AMENB
		BYTE	01EH,00AH+0E0H,AYAS3
		BYTE	01EH,014H+0E0H,AYAS3
		BYTE	0FFH
ED37		EQU	$
		BYTE	000H
		BYTE	004H,00BH,REBA1
		BYTE	006H,005H,SKEL2
		BYTE	008H,017H,SLIME
		BYTE	008H,01AH,SLIME
		BYTE	009H,00CH,SKEL2
		BYTE	014H,015H,HBTAM
		BYTE	017H,017H,SKEL2
		BYTE	019H,013H,ZOOL2
		BYTE	01AH,017H,BGBM1
		BYTE	01CH,015H,ZOOL1
		BYTE	0FFH
ED38		EQU	$
		BYTE	000H
		BYTE	006H,00CH,AMENB
		BYTE	00AH,007H,AMENB
		BYTE	00CH,00CH,FISH0
		BYTE	010H,00CH,BGBM0
		BYTE	014H,006H,FISH0
		BYTE	018H,00CH,FISH0
		BYTE	01AH,007H,AMENB
		BYTE	0FFH
ED39		EQU	$
		BYTE	000H
		BYTE	018H,004H,HAYAM
;
		BYTE	00FH,00FH+0E0H,HNDST
		BYTE	015H,005H,MIIRA
		BYTE	0FEH,000H,KAGI0
		BYTE	015H,009H,MOTS1
		BYTE	016H,017H,HARI0
		BYTE	018H,00BH,MOTS0
		BYTE	01AH,017H,HARI0
		BYTE	0FFH
ED3A		EQU	$
		BYTE	000H
		BYTE	011H,00EH,KAM01
		BYTE	011H,011H,KAM01
		BYTE	014H,004H,BGBM0
		BYTE	014H,00AH,ZOOL2
		BYTE	014H,015H,ZOOL2
		BYTE	014H,01BH,BGBM0
		BYTE	0FFH
ED3B		EQU	$
		BYTE	000H
		BYTE	006H,003H,HARI0
		BYTE	009H,007H,ZOOL1
		BYTE	00DH,00CH,HARI0
		BYTE	00FH,008H,ZOOL2
		BYTE	013H,003H,HARI0
		BYTE	016H,007H,ZOOL2
		BYTE	01AH,00CH,HARI0
		BYTE	0FFH
ED3C		EQU	$
		BYTE	000H
		BYTE	008H,009H,MOTS0
		BYTE	014H,00AH,ZOOL2
		BYTE	014H,012H,ZOOL2
		BYTE	0FFH
ED3D		EQU	$
		BYTE	000H
		BYTE	017H,005H,TAAMA
		BYTE	019H,00AH,TAAMA
		BYTE	007H,017H,MOTS1
		BYTE	0FEH,000H,KAGI0
		BYTE	007H,018H,MOTS1
		BYTE	008H,015H,BGBM0
		BYTE	008H,01AH,BGBM0
		BYTE	00AH,004H,HARI0
		BYTE	00BH,003H,TRAP0
		BYTE	015H,01BH+0E0H,YKDW0
		BYTE	016H,013H,SPARL
		BYTE	016H,01CH,SPARK
		BYTE	016H,009H,SPARK
		BYTE	017H,007H,DOOMO
		BYTE	017H,008H,BABUL
		BYTE	0FFH
ED3E		EQU	$
		BYTE	000H
		BYTE	015H,006H,TAAMA
		BYTE	004H,019H,SKELB
		BYTE	00BH,016H,SKELB
		BYTE	012H,005H,KUROD
		BYTE	012H,00EH,KUROD
		BYTE	012H,010H+0E0H,BCONT
		BYTE	012H,012H,KUROD
		BYTE	012H,015H,KUROD
		BYTE	016H,007H,ZOOL2
		BYTE	018H,011H,ZOOL2
		BYTE	0FEH,000H,KAGI0
		BYTE	019H,015H,ZOOL2
		BYTE	01AH,00BH,ZOOL2
		BYTE	0FFH
ED3F		EQU	$
		BYTE	000H
		BYTE	015H,004H,ESW02
		BYTE	016H,00CH,SKELB
		BYTE	015H,013H,ESW02
		BYTE	017H,004H,SKELB
		BYTE	018H,008H,DOOMO
		BYTE	0FFH
ED40		EQU	$
		BYTE	000H
		BYTE	008H+080H,009H,HEIS0
		BYTE	00FH+080H+HAB4,009H+DOWN,HEIS0
		BYTE	015H+080H,018H,SEKZ4
		BYTE	018H+080H,01BH,HEIS1
		BYTE	01AH+080H,017H,HEYA0
		BYTE	01AH+080H,019H,HEYA0
		BYTE	0FFH
ED400		EQU	$
		BYTE	000H
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;		BYTE	00FH+080H,010H,PATAM
;
;		BYTE	00FH+080H,010H,PATAR
;
		HEX	FF
ED41		EQU	$
		BYTE	000H
		BYTE	00AH,011H,NEZU0
		BYTE	00BH,01BH,NEZU0
		BYTE	00DH,00FH,NEZU0
		BYTE	015H,006H,NEZU0
		BYTE	0FFH
ED42		EQU	$
		BYTE	000H
		BYTE	006H,012H,HEBI0
		BYTE	006H,013H,HEBI0
		BYTE	006H,014H,HEBI0
		BYTE	007H,012H,HEBI0
		BYTE	007H,013H,HEBI0
		BYTE	007H,014H,HEBI0
		BYTE	0FFH
ED43		EQU	$
		BYTE	000H
		BYTE	006H,00CH,MEDA2
		BYTE	018H,017H+0E0H,TILST
		BYTE	0FFH
ED44		EQU	$
		BYTE	000H
		BYTE	006H,009H,BYOYN
		BYTE	008H,005H,BYOYN
;
		BYTE	004H,008H,ZOOL2
		BYTE	008H,003H,ZOOL2
		BYTE	008H,017H,SLIME
		BYTE	00CH,008H,ZOOL2
		BYTE	00FH,017H,ZOOL1
		BYTE	015H,00BH+0E0H,YKDW0
		BYTE	016H,018H,ZOOL2
		BYTE	0FFH
ED45		EQU	$
		BYTE	000H
		BYTE	006H,019H,TEKBB		; NISE ZELDA
;
		BYTE	006H,006H,TEKI1
;;;;		BYTE	006H,009H,SKEL2
		BYTE	00BH,004H,TEKI0
		BYTE	00BH,00BH,SKEL2
		BYTE	00BH,017H,DOOMO
		BYTE	00CH,018H,TEKI0
		BYTE	00CH,01AH,TEKI0
		BYTE	011H,018H,TEKI0
;;;;		BYTE	012H,019H,SLIME
		BYTE	018H,016H,SLIME
;;;;		BYTE	019H,009H,SPARL
;;;;		BYTE	01AH,006H,SPARL
		BYTE	01BH,019H,TEKI1
		BYTE	01CH,007H,TEKI1
		BYTE	0FFH
ED46		EQU	$
		BYTE	000H
		BYTE	005H,016H,AMENB
		BYTE	006H,01BH+0E0H,AYAS1
		BYTE	01AH,009H,AMENB
		BYTE	01AH,01BH+0E0H,AYAS1
		BYTE	01BH,011H,AMENB
		BYTE	0FFH
ED47		EQU	$
		BYTE	000H
;		BYTE	005H,015H,MOTS0
;		BYTE	006H,005H,MOTS0
;		BYTE	009H,003H,MOTS0
;		BYTE	00BH,016H,TAAMA
;		BYTE	00CH,00BH,MOTS0
;		BYTE	015H,003H,MOTS0
;		BYTE	015H,01BH,MOTS0
;		BYTE	016H,013H,MOTS0
;		BYTE	018H,003H,MOTS0
;		BYTE	01AH,017H,MOTS0
;		BYTE	01AH,019H,TAAMA
;		BYTE	01CH,009H,MOTS0
		BYTE	0FFH
ED49		EQU	$
		BYTE	000H
		BYTE	005H,00BH,HAYAM
		BYTE	00BH,004H,HAYAM
		BYTE	00CH,009H,HAYAM
;
		BYTE	006H,008H,DOOMO
		BYTE	008H,007H,MIIRA
		BYTE	00BH,017H,MIIRA
		BYTE	00FH,00FH+0E0H,HNDST
		BYTE	010H,017H,MIIRA
		BYTE	014H,016H,MIIRA
		BYTE	016H,009H,ZOOL2
		BYTE	017H,00AH,ZOOL1
		BYTE	018H,007H,ZOOL2
		BYTE	018H,01AH,MIIRA
		BYTE	0FFH
ED4A		EQU	$
		BYTE	000H
		BYTE	007H,014H,SEKZ4
		BYTE	008H,008H,MOTS1
		BYTE	008H,018H,MOTS1
		BYTE	0FFH
ED4B		EQU	$
		BYTE	000H
		BYTE	004H,007H,MEDA2
		BYTE	005H,017H,BABUL
		BYTE	006H,018H,BABUL
		BYTE	008H,004H,MEDAM
		BYTE	008H,00BH,MEDAM
		BYTE	018H,00FH,ZOOL2
		BYTE	019H,00BH,ZOOL2
		BYTE	019H,012H,ZOOL2
		BYTE	0FFH
ED4C		EQU	$
		BYTE	000H
		BYTE	011H,015H,BYOYN
		BYTE	012H,019H,BYOYN
;
		BYTE	005H,015H,MOTS1
		BYTE	005H,01AH,MOTS1
		BYTE	006H,017H,MOTS1
		BYTE	00AH,018H,MOTS1
		BYTE	015H,014H,MOTS1
		BYTE	018H,013H,HARI0
		BYTE	0FFH
ED4D		EQU	$
		BYTE	000H
		BYTE	00EH,00EH,HAYAB
		BYTE	0FFH
ED4E		EQU	$
		BYTE	000H
		BYTE	008H,014H,SLIME
		BYTE	008H,016H,SLIME
		BYTE	008H,018H,SLIME
		BYTE	009H,007H,BAAR0
		BYTE	0FFH
ED4F		EQU	$
		BYTE	000H
		BYTE	006H,017H,YOSEI
		BYTE	008H,014H,YOSEI
		BYTE	008H,01AH,YOSEI
		BYTE	0FFH
ED50		EQU	$
		BYTE	000H
		BYTE	00EH+080H,017H,HEI00
		BYTE	010H+080H,018H,ZAKO0
		BYTE	012H+080H,017H,ZAKO0
		BYTE	0FFH
ED51		EQU	$
		BYTE	001H
		BYTE	002H,00EH,OOISU
		BYTE	017H+080H+HAB1,009H+RIGT,HEIS0
		BYTE	017H+080H+HAB1,016H+LEFT,HEIS0
		BYTE	0FFH
ED52		EQU	$
		BYTE	000H
		BYTE	00DH+080H,007H,HEI00
		BYTE	00FH+080H,008H,ZAKO0
		BYTE	012H+080H,007H,ZAKO0
		BYTE	0FFH
ED53		EQU	$
		BYTE	000H
		BYTE	007H,017H,HANA0
		BYTE	009H,01CH,NL777
		BYTE	00CH,017H,HANA1
		BYTE	00CH,01AH,HANA1
		BYTE	00EH,013H,NL777
		BYTE	015H,005H,HANA0
		BYTE	016H,00BH,HANA0
		BYTE	017H,01AH,HANA0
		BYTE	019H,007H,NL777
		BYTE	01AH,004H,HANA0
		BYTE	01AH,00BH,HANA0
		BYTE	01AH,01BH,NL777
		BYTE	01BH,01AH,HANA0
		BYTE	0FFH
ED54		EQU	$
		BYTE	000H
		BYTE	005H,00EH,FISH0
		BYTE	00BH,00CH,AMENB
		BYTE	00EH,00BH,BGBM0
		BYTE	00EH,00FH,BAAR0
		BYTE	00FH,010H,AMENB
		BYTE	014H,012H,FISH0
		BYTE	015H,00FH,AMENB
		BYTE	017H,00CH,FISH0
		BYTE	0FFH
ED55		EQU	$
		BYTE	000H
		BYTE	008H,00EH,OYAGI
		BYTE	015H,014H,ZAKO0
		BYTE	016H,00DH,ZAKO0
		BYTE	0FFH
ED56		EQU	$
		BYTE	000H
		BYTE	005H,00BH+0E0H,YKDW0
		BYTE	019H,007H,BYOYN
		BYTE	019H,017H,BYOYN
;
		BYTE	004H,007H,MOTS1
		BYTE	005H,01BH,MOTS0
		BYTE	006H,003H,MOTS1
		BYTE	006H,00CH,MOTS1
		BYTE	00FH,00FH+0E0H,HNDST
		BYTE	011H,013H,MOTS0
		BYTE	012H,018H,HARI0
		BYTE	01BH,003H,MOTS0
		BYTE	01CH,013H,HBTAM
		BYTE	01CH,019H,MOTS0
		BYTE	0FFH
ED57		EQU	$
		BYTE	000H
		BYTE	004H,008H,DOOMO
		BYTE	004H,00CH,ZOOL1
		BYTE	005H,008H,HARI0
		BYTE	007H,004H,SKEL2
		BYTE	00CH,003H,SKEL2
		BYTE	00CH,00CH,MIIRA
		BYTE	00FH,00FH+0E0H,HNDST
		BYTE	014H,005H,MIIRA
		BYTE	014H,00AH,MIIRA
		BYTE	014H,017H,MIIRA
		BYTE	014H,019H,MIIRA
		BYTE	015H,015H,SKEL2
		BYTE	017H,013H,MIIRA
		BYTE	018H,007H,ZOOL2
		BYTE	018H,008H,ZOOL2
		BYTE	018H,00BH,SEKZ4
		BYTE	0FFH
ED58		EQU	$
		BYTE	000H
		BYTE	014H,00CH,HAYAM
		BYTE	016H,006H,HAYAM
		BYTE	016H,016H,BYOYN
;
		BYTE	004H,014H,MOTS1
		BYTE	006H,016H,SPARK
		BYTE	00AH,008H,ESW02
		BYTE	00BH,01BH,MOTS0
		BYTE	019H,016H,MOTS0
		BYTE	01AH,00AH,ZOOL1
		BYTE	0FFH
ED59		EQU	$
		BYTE	001H
		BYTE	010H,007H,HAYAM
		BYTE	016H,008H,HAYAM
		BYTE	00FH+080H,014H,BYOYN
		BYTE	00FH+080H,01AH,BYOYN
;
		BYTE	00AH+080H,01AH,HARI0
		BYTE	00BH,008H,HBTAM
		BYTE	00DH+080H,015H,HARI0
		BYTE	00EH+080H,005H,SPARK
		BYTE	013H+080H,01AH,DOOMO
		BYTE	014H,017H,MIIRA
		BYTE	015H+080H,015H,MIIRA
		BYTE	015H+080H,01AH,MIIRA
		BYTE	0FFH
ED5A		EQU	$
		BYTE	000H
		BYTE	016H,017H,MOTSB
		BYTE	0FFH
ED5B		EQU	$
		BYTE	001H
		BYTE	00CH+080H,017H,TAAMA
		BYTE	013H+080H,018H,TAAMA
		BYTE	015H+080H,017H,HARI0
		BYTE	008H+080H,016H,MEDAM
		BYTE	008H+080H,019H,MEDA2
		BYTE	00EH+080H,014H,HARI0
		BYTE	010H+080H,01BH,HARI0
		BYTE	011H+080H,017H,HARI0
		BYTE	012H+080H,014H,HARI0
		BYTE	0FFH
ED5C		EQU	$
		BYTE	000H
		BYTE	002H,00BH,HODID
		BYTE	00EH,005H,HODIU
		BYTE	00EH,00EH,HODIU
		BYTE	018H,017H,YOSEI
		BYTE	018H,018H,YOSEI
		BYTE	0FFH
ED5D		EQU	$
		BYTE	000H
		BYTE	005H,007H,SKEL2
		BYTE	006H,008H,NL777
		BYTE	008H,003H,SKEL2
		BYTE	008H,015H,TEKI1
		BYTE	008H,017H,SKEL2
		BYTE	008H,019H,TEKI0
		BYTE	008H,01BH,SKEL2
		BYTE	00BH,007H,SKEL2
		BYTE	015H,004H,NL777
		BYTE	015H,00BH,TEKI0
		BYTE	01AH,004H,TEKI0
		BYTE	01AH,008H,TEKI0
		BYTE	01AH,00BH,NL777
		BYTE	0FFH
ED5E		EQU	$
		BYTE	000H
		BYTE	005H,01BH+0E0H,YKDW0
		BYTE	005H,01CH,BGBM0
		BYTE	00BH,013H,BGBM0
		BYTE	014H,017H,TRAP0
		BYTE	018H,008H,BAAR0
		BYTE	0FFH
ED5F		EQU	$
		BYTE	000H
                BYTE    018H,004H,ZOOL2
                BYTE    018H,00BH,ZOOL2
                BYTE    01BH,008H,ZOOL2
		BYTE	0FFH
ED60		EQU	$
		BYTE	001H
		BYTE	008H+HAB3,013H+DOWN,HEIS0
		BYTE	0FFH
ED61		EQU	$
		BYTE	000H
		BYTE	00EH+HAB1,00CH+RIGT,HEI00
		BYTE	012H,00DH,ZAKO0
		BYTE	012H,012H,ZAKO0
		BYTE	0FFH
ED62		EQU	$
		BYTE	001H
		BYTE	008H+HAB3,00CH+DOWN,HEIS0
		BYTE	00DH+080H,00AH,HEI00
		BYTE	00EH+080H,011H,HEI00
		BYTE	0FFH
ED63		EQU	$
		BYTE	000H
		BYTE	008H,007H+0E0H,TILST
		BYTE	018H,007H,NL777
		BYTE	0FFH
ED64		EQU	$
		BYTE	000H
		BYTE	012H,005H,KOMO0
		BYTE	013H,00BH,ESW12
		BYTE	013H,005H,KOMO0
		BYTE	016H,003H,DOOMO
		BYTE	017H,017H,NEZU0
		BYTE	019H,019H,NEZU0
		BYTE	01AH,005H,NEZU0
;
		BYTE	015H,009H+0E0H,HEBST
		BYTE	017H,007H+0E0H,HEBST
		BYTE	017H,009H+0E0H,HEBST
		BYTE	017H,00BH+0E0H,HEBST
		BYTE	019H,009H+0E0H,HEBST
		BYTE	01BH,00CH+0E0H,HEBST
		BYTE	0FFH
ED65		EQU	$
		BYTE	000H
		BYTE	015H,013H,NEZU0
		BYTE	017H,009H,NEZU0
		BYTE	018H,006H,NEZU0
		BYTE	019H,016H,NEZU0
		BYTE	01CH,016H,NEZU0
		BYTE	0FFH
ED66		EQU	$
		BYTE	000H
		BYTE	005H+080H,00BH,AMENB
		BYTE	006H+080H,004H+0E0H,AYAS0
		BYTE	006H,016H,ZOOL2
		BYTE	007H,01AH,ZOOL2
		BYTE	014H+080H,017H,PLCHK		; TAKI
		BYTE	016H+080H,001H+0E0H,AYAS0
		BYTE	016H+080H,00FH,FISH0
		BYTE	016H+080H,013H,AMENB
		BYTE	018H+080H,00BH,AMENB
		BYTE	019H+080H,00DH,AMENB
		BYTE	019H+080H,01EH+0E0H,AYAS1
		BYTE	01BH+080H,017H,AMENB
		BYTE	0FFH
ED67		EQU	$
		BYTE	000H
		BYTE	00CH,007H,BYOYN
;
		BYTE	006H,004H,ZOOL2
		BYTE	006H,00BH,ZOOL2
		BYTE	00CH,005H,MOTS0
		BYTE	00FH,013H,MOTS0
		BYTE	013H,005H,MOTS0
		BYTE	013H,009H,MOTS0
		BYTE	014H,018H,BAAR0
		BYTE	017H,007H,BAAR1
		BYTE	01AH,018H,MOTS0
		BYTE	0FFH
ED68		EQU	$
		BYTE	000H
		BYTE	007H,00EH,BYOYN
		BYTE	007H,011H,BYOYN
		BYTE	00BH,00CH,BYOYN
		BYTE	00BH,013H,BYOYN
;
		BYTE	008H,014H,MIIRA
		BYTE	00FH,00FH+0E0H,HNDST
		BYTE	012H,00EH,MIIRA
		BYTE	012H,012H,MIIRA
		BYTE	0FFH
ED6A		EQU	$
		BYTE	000H
		BYTE	00AH,017H,KAM01
		BYTE	00AH,018H,KAM01
		BYTE	00BH,014H,BABUL
		BYTE	00BH,01CH,BABUL
		BYTE	00EH,017H,KAM01
		BYTE	00EH,018H,KAM01
		BYTE	0FFH
ED6B		EQU	$
		BYTE	000H
		BYTE	004H,007H,TAAMA
		BYTE	004H,00BH,TAAMA
;
		BYTE	006H,00AH,MEDAM
		BYTE	009H,006H,MEDA2
		BYTE	00AH,00CH,BABUL
		BYTE	015H,006H,SEKZ4
		BYTE	018H,003H,MEDA2
		BYTE	018H,004H,HARI0
		BYTE	01BH,004H,HARI0
		BYTE	01BH,00CH,MEDA2
;
		BYTE	015H,017H,MEDA2
		BYTE	015H,01BH,NL777
		BYTE	01BH,014H,NL777
		BYTE	01BH,018H,MEDA2
		BYTE	0FFH
ED6C		EQU	$
		BYTE	000H
		BYTE	017H,006H,RANEM
		BYTE	017H,009H,RANEM
		BYTE	019H,007H,RANEM
;
;;		BYTE	017H,006H,RANEM
;;		BYTE	017H,009H,RANEM
;;		BYTE	019H,006H,RANEM
;;		BYTE	019H,009H,RANEM
;
		BYTE	018H,017H,DOOMO
		BYTE	01CH,003H,BGBM0
		BYTE	0FFH
ED6D		EQU	$
		BYTE	000H
		BYTE	006H,005H,TEKI1
		BYTE	006H,00BH,NL777
		BYTE	009H,004H,NL777
		BYTE	00BH,00AH,TEKI1
		BYTE	015H,004H,BGBM0
		BYTE	015H,00BH,NL777
		BYTE	018H,005H,SKEL2
		BYTE	018H,00AH,TEKI1
		BYTE	01AH,006H,SPARL
		BYTE	0FFH
ED6E		EQU	$
		BYTE	000H
		BYTE	008H,013H,PENGI
		BYTE	009H,013H,PENGI
		BYTE	00AH,013H,PENGI
		BYTE	00BH,013H,PENGI
		BYTE	00CH,013H,PENGI
		BYTE	0FFH
ED71		EQU	$
		BYTE	000H
		BYTE	018H+080H,006H,HEI00
		BYTE	018H+080H+KABD,01AH+KAB0,HEIS0
		BYTE	0FEH,000H,KAGI0
		BYTE	0FFH
ED72		EQU	$
		BYTE	000H
		BYTE	006H+KABR,011H+KAB0,HEIS0
		BYTE	0FEH,000H,KAGI0
;
; '91/ 4/ 5		BYTE	00BH+KABL,00EH+KAB0,HEIS0
		BYTE	019H+080H+HAB1,00AH+RIGT,HEIS0
		BYTE	0FFH
ED73		EQU	$
		BYTE	000H
		BYTE	018H,018H,ARI01
;
		BYTE	009H,017H,NL777
		BYTE	015H,015H,RIVER
		BYTE	018H,01BH,RIVER
		BYTE	019H,007H,NL777
		BYTE	01BH,016H,RIVER
;
		BYTE	006H,014H,BOOK0
		BYTE	0FFH
ED74		EQU	$
		BYTE	000H
		BYTE	018H,008H,ARI01
		BYTE	018H,017H,ARI01
;
		BYTE	005H,00CH,MEDAM
		BYTE	005H,013H,MEDAM
		BYTE	00AH,00CH,RIVER
		BYTE	00AH,013H,RIVER
		BYTE	01BH,00EH,RIVER
		BYTE	01BH,012H,RIVER
		BYTE	0FFH
ED75		EQU	$
		BYTE	000H
		BYTE	007H,008H,ARI01
		BYTE	01BH,004H,ARI01
;
		BYTE	005H,006H,RIVER
		BYTE	005H,00AH,RIVER
		BYTE	00AH,006H,RIVER
		BYTE	00AH,00AH,RIVER
		BYTE	00BH,011H,HODIR
		BYTE	00BH,01EH,HODIL
		BYTE	019H,007H,RIVER
		BYTE	019H,009H,RIVER
		BYTE	0FFH
ED76		EQU	$
		BYTE	000H
		BYTE	003H,019H,REBA1
		BYTE	00AH,007H,AMENB
		BYTE	00FH,007H,FISH0
		BYTE	011H,008H,AMENB
		BYTE	019H,01BH,SLIME
		BYTE	01CH,008H+0E0H,AYAS3
		BYTE	01CH,01BH,ZOOL2
		BYTE	0FFH
ED77		EQU	$
		BYTE	000H
		BYTE	009H+080H,00BH,HAYAM
		BYTE	018H+080H,010H,TAAMA
		BYTE	01AH+080H,009H,TAAMA
		BYTE	01AH+080H,016H,TAAMA
;
		BYTE	00AH+080H,007H,CHIBI
		BYTE	00AH+080H,017H,CHIBI
		BYTE	0FFH
ED7B		EQU	$
		BYTE	000H
		BYTE	007H,00BH,ZOOL2
;;;		BYTE	009H,00FH,ZOOL2
		BYTE	009H,016H,ZOOL2
		BYTE	015H,004H,BGBM1
		BYTE	015H,00BH,SKEL2
		BYTE	017H,007H,SKEL2
		BYTE	017H,009H,BGBM1
		BYTE	018H,013H,SEKZ4
		BYTE	018H,017H,MOTS0
		BYTE	019H,009H,SKEL2
		BYTE	01AH,005H,BGBM1
		BYTE	01BH,00BH,BGBM1
		BYTE	0FFH
ED7C		EQU	$
		BYTE	000H
		BYTE	01CH,019H,HAYAM
;
		BYTE	00CH,006H,BAAR1
		BYTE	010H,007H,HARI0
		BYTE	014H,009H,BAAR0
		BYTE	018H,00BH,MOTS0
		BYTE	018H,017H,ZOOL2
		BYTE	01AH,007H+0E0H,YKDW1
		BYTE	0FFH
ED7D		EQU	$
		BYTE	000H
		BYTE	006H,011H,HBTAM
		BYTE	008H,011H,HBTAM
		BYTE	00AH,011H,HBTAM
		BYTE	00CH,011H,HBTAM
		BYTE	016H,015H,SKEL2
		BYTE	017H,018H,BGBM1
		BYTE	019H,01CH,HBTAM
		BYTE	01AH,014H,MOTS1
		BYTE	01AH,017H,ZOOL1
		BYTE	01CH,00AH,HBTAM
		BYTE	01CH,01BH,MOTS0
		BYTE	0FFH
ED7E		EQU	$
		BYTE	000H
		BYTE	011H,017H,BYOYN
;
		BYTE	00EH,018H,BAAR1
		BYTE	00FH,014H,PENGI
		BYTE	012H,007H,ICMAN
		BYTE	012H,00AH,ICMAN
		BYTE	016H,01BH,PENGI
		BYTE	017H,017H,BAAR1
		BYTE	0FFH
ED7F		EQU	$
		BYTE	000H
		BYTE	007H,006H,ZOOL1
		BYTE	007H,008H,ZOOL1
		BYTE	008H,00AH,ZOOL1
		BYTE	009H,007H,ZOOL1
		BYTE	014H,00BH,TRAP0
		BYTE	017H,003H,TRAP0
		BYTE	019H,00BH,TRAP0
		BYTE	01BH,003H,TRAP0
		BYTE	0FFH
ED80		EQU	$
		BYTE	000H
		BYTE	003H,016H,HELP0
		BYTE	009H,007H,HEI00
		BYTE	009H,01AH,TEKU0
		BYTE	0FDH,000H,KAGI0
;;		BYTE	0FEH,000H,KAGI0
		BYTE	0FFH
ED81		EQU	$
		BYTE	001H
		BYTE	00BH+080H+HAB4,00BH+DOWN,HEI00
		BYTE	00BH+080H+HAB1,00EH+DOWN,HEI00
		BYTE	0FFH
ED82		EQU	$
		BYTE	000H
		BYTE	005H+080H+HAB4,009H+DOWN,HEIS0
		BYTE	006H+080H+HAB1,010H+DOWN,HEIS0
		BYTE	011H+080H+HAB1,015H+DOWN,HEIS0
		BYTE	0FFH
ED83		EQU	$
		BYTE	000H
		BYTE	008H,01BH,ARI00
		BYTE	010H,014H,ARI00
;
		BYTE	005H,014H,RIVER
		BYTE	006H,007H,YOSEI
		BYTE	008H,008H,YOSEI
		BYTE	00BH,01BH,RIVER
		BYTE	010H,017H,RIVER
		BYTE	017H,008H,NL777
		BYTE	018H,018H,RIVER
		BYTE	01BH,014H,RIVER
		BYTE	0FFH
ED84		EQU	$
		BYTE	000H
		BYTE	005H,003H,RIVER
		BYTE	005H,01BH,RIVER
		BYTE	007H,00FH,NL777
		BYTE	012H,009H,RIVER
		BYTE	012H,015H,RIVER
		BYTE	01BH,009H,RIVER
		BYTE	01BH,015H,RIVER
		BYTE	0FFH
ED85		EQU	$
		BYTE	000H
		BYTE	00EH,007H,ARI00
		BYTE	01BH,009H,ARI01
;
		BYTE	005H,014H,HANA1
		BYTE	005H,01BH,HANA1
		BYTE	008H,016H,HANA1
		BYTE	00AH,018H,NL777
		BYTE	00EH,003H,RIVER
		BYTE	015H,00CH,RIVER
		BYTE	018H,018H,NL777
		BYTE	01CH,007H,RIVER
		BYTE	0FFH
ED86		EQU	$
		BYTE	001H
;		BYTE	004H+080H,005H,LINE3
;		BYTE	00BH+080H,01AH,LINE2
;		BYTE	00CH+080H,00AH,LINE2
;		BYTE	016H+080H,003H,LINE0
;		BYTE	01AH+080H,018H,LINE3
		BYTE	0FFH
ED87		EQU	$
		BYTE	000H
		BYTE	005H,014H,HAYAM
		BYTE	007H,01AH,HAYAM
		BYTE	00BH,013H,HAYAM
		BYTE	019H,006H,HAYAM
;
		BYTE	008H,007H+0E0H,TILST
		BYTE	004H,017H,TAAMA
		BYTE	00CH,003H,TAAMA
		BYTE	015H,004H,TAAMA
		BYTE	017H,00BH,SKEL2
		BYTE	018H,019H,SKEL2
		BYTE	019H,004H,SKEL2
		BYTE	01AH,008H,KAGI0
		BYTE	01CH,015H,SKEL2
		BYTE	0FFH
ED89		EQU	$
		BYTE	000H
		BYTE	00AH,010H,YOSEI
		BYTE	00BH,00FH,YOSEI
		BYTE	0FFH
ED8B		EQU	$
		BYTE	000H
		BYTE	007H,015H,BYOYN
		BYTE	018H,004H,TAAMA
		BYTE	018H,00BH,TAAMA
;
		BYTE	004H,01AH,ZOOL2
		BYTE	012H,003H,HARI0
		BYTE	018H,007H,SKEL2
		BYTE	018H,018H,BAAR0
		BYTE	018H,018H,BAAR1
		BYTE	0FFH
ED8C		EQU	$
		BYTE	000H
		BYTE	003H,01AH,ESW12
		BYTE	005H,018H+0E0H,BMBST
		BYTE	006H,015H+0E0H,BMBST
		BYTE	006H,01AH+0E0H,BMBST
		BYTE	00AH,015H+0E0H,BMBST
		BYTE	00AH,01AH+0E0H,BMBST
;
		BYTE	008H,008H,SPARK
		BYTE	008H,017H,HARI0
		BYTE	009H,00BH,SKEL2
		BYTE	00BH,003H,SKEL2
		BYTE	017H,005H,HBTAM
		BYTE	017H,016H,SPARK
		BYTE	018H,014H,BABUL
		BYTE	01BH,00BH,HBTAM
		BYTE	01CH,01AH,BABUL
;
		BYTE	007H,009H,BOOK0
		BYTE	0FFH
ED8D		EQU	$
		BYTE	000H
		BYTE	008H,007H+0E0H,TILST
		BYTE	004H,007H,BGBM1
		BYTE	008H,009H,BABUL
		BYTE	009H,008H,DOOMO
		BYTE	00CH,009H,BGBM1
		BYTE	00DH,013H,MIIRA
		BYTE	00FH,00FH+0E0H,HNDST
		BYTE	010H,017H,HARI0
		BYTE	014H,017H,SKEL2
		BYTE	018H,007H,BAAR0
		BYTE	01BH,014H,ZOOL2
		BYTE	01CH,013H,BGBM0
		BYTE	01CH,014H,ZOOL2
		BYTE	0FFH
ED8E		EQU	$
		BYTE	000H
		BYTE	002H,01BH,ICMAN
		BYTE	005H,018H,SLIME
		BYTE	006H,014H,DOOMO
		BYTE	008H,01BH,SLIME
		BYTE	009H,014H,SLIME
		BYTE	00AH,016H,SLIME
		BYTE	00BH,014H,SLIME
		BYTE	00BH,018H,SLIME
		BYTE	0FFH
ED90		EQU	$
		BYTE	000H
		BYTE	015H,007H,EYEBS
		BYTE	0FFH
ED91		EQU	$
		BYTE	000H
		BYTE	004H,018H,TAAMA
		BYTE	00EH,01BH,HARI0
		BYTE	00FH,017H+0E0H,SLST0
		BYTE	012H,017H,BGBM0
		BYTE	012H,018H,DOOMO
		BYTE	012H,019H,BABUL
		BYTE	018H,018H,BABUL
		BYTE	0FFH
ED92		EQU	$
		BYTE	000H
		BYTE	009H,018H,TAAMA
		BYTE	00CH,003H,TAAMA
		BYTE	004H,018H,BABUL
		BYTE	005H,00BH,BGBM0
		BYTE	008H,009H,BABUL
		BYTE	009H,017H,BGBM0
		BYTE	00FH,015H,BGBM1
		BYTE	012H,007H+0E0H,KUROS
		BYTE	012H,019H,HARI0
		BYTE	014H,003H,BABUL
		BYTE	016H,00AH,SKEL2
		BYTE	01BH,003H,BABUL
		BYTE	0FFH
ED93		EQU	$
		BYTE	000H
		BYTE	009H,009H,BGBM0
		BYTE	009H,016H,BGBM0
		BYTE	00CH,00CH,BGBM0
		BYTE	00CH,013H,BGBM0
		BYTE	00CH,017H,SLIME
		BYTE	015H,004H,SKEL2
		BYTE	01CH,00CH,SKEL2
		BYTE	01CH,004H,BABUL
		BYTE	0FFH
ED95		EQU	$
		BYTE	000H
		BYTE	00CH,016H,HEIS1
		BYTE	00CH,017H,HEIS1
		BYTE	00CH,018H,HEIS1
		BYTE	00CH,019H,HEIS1
		BYTE	01AH,017H+0E0H,YKDW1
		BYTE	0FFH
ED96		EQU	$
		BYTE	000H
		BYTE	00BH,008H,BAAR0
		BYTE	015H,01EH,MEMEL
		BYTE	017H,01EH,MEMEL
		BYTE	019H,01EH,MEMEL
		BYTE	01BH,01EH,MEMEL
		BYTE	0FFH
ED97		EQU	$
		BYTE	000H
		BYTE	00FH,00FH+0E0H,MGSET
		BYTE	0FFH
ED98		EQU	$
		BYTE	000H
		BYTE	013H,010H,SLIME
		BYTE	014H,009H,SLIME
		BYTE	014H,00CH,SLIME
		BYTE	014H,00FH,SLIME
		BYTE	017H,008H,SLIME
		BYTE	0FFH
ED99		EQU	$
		BYTE	000H
		BYTE	006H,015H,BABUL
		BYTE	008H,01AH,BABUL
		BYTE	017H,00EH,MEDAM
		BYTE	017H,011H,MEDAM
		BYTE	0FEH,000H,KAGI0
		BYTE	018H,00DH,HANA0
		BYTE	018H,012H,HANA0
		BYTE	019H,00EH,HANA1
		BYTE	019H,00FH,HANA1
		BYTE	019H,010H,HANA1
		BYTE	019H,011H,HANA1
		BYTE	0FFH
ED9B		EQU	$
		BYTE	000H
		BYTE	008H,006H,TAAMA
		BYTE	008H,007H,TAAMA
		BYTE	008H,014H,TAAMA
;
		BYTE	005H,01CH,HARI0
		BYTE	006H,01CH,HARI0
		BYTE	007H,01CH,HARI0
		BYTE	008H,003H,BGBM1
		BYTE	008H,01CH,HARI0
		BYTE	009H,01CH,HARI0
		BYTE	00AH,01CH,HARI0
		BYTE	00BH,01CH,HARI0
		BYTE	01AH,017H,MOTS0
		BYTE	01BH,013H,MOTS0
		BYTE	0FFH
ED9C		EQU	$
		BYTE	000H
		BYTE	009H,013H,MOTS0
		BYTE	00AH,00BH,MOTS1
		BYTE	00FH,011H,MOTS0
		BYTE	00EH,017H,MOTS0
		BYTE	012H,00DH,MOTS0
		BYTE	013H,009H,MOTS0
		BYTE	01CH,00FH,HBTAM
		BYTE	0FFH
ED9D		EQU	$
		BYTE	000H
		BYTE	006H,01CH,TAAMA
;
		BYTE	004H,006H,MOTS0
		BYTE	004H,014H,MIIRA
		BYTE	009H,018H,MIIRA
		BYTE	00CH,005H,MOTS0
		BYTE	00CH,013H,MIIRA
;
		BYTE	014H,010H,ZOOL2
		BYTE	018H,00BH,ZOOL2
		BYTE	01CH,011H,ZOOL2
		BYTE	0FFH
ED9E		EQU	$
		BYTE	000H
		BYTE	005H,018H,ZOOL1
		BYTE	008H,016H,ZOOL1
		BYTE	008H,018H,SKELB
		BYTE	008H,019H,ZOOL1
		BYTE	012H,014H,ICMAN
		BYTE	0FFH
ED9F		EQU	$
		BYTE	000H
		BYTE	012H,004H,KUROD
		BYTE	012H,006H,KUROD
		BYTE	012H,009H,KUROD
		BYTE	012H,00BH,KUROD
		BYTE	017H,007H,BABUL
		BYTE	018H,008H,BAAR0
		BYTE	0FFH
EDA0		EQU	$
		BYTE	000H
		BYTE	008H,003H,BGBM0
		BYTE	008H,00EH,BABUL
		BYTE	00CH,014H,HBTAM
		BYTE	0FFH
EDA1		EQU	$
		BYTE	000H
		BYTE	008H,00AH,TAAMA
		BYTE	007H,018H,SPARK
		BYTE	00BH,016H,SPARK
		BYTE	010H,019H,MAGIC
		BYTE	015H,015H,BGBM0
		BYTE	015H,01AH,BGBM0
		BYTE	019H,015H,SKEL2
		BYTE	019H,017H,DOOMO
		BYTE	019H,01BH,SKEL2
		BYTE	0FFH
EDA3		EQU	$
		BYTE	000H
;		BYTE	013H,007H,BABUL
;		BYTE	017H,008H,BABUL
		BYTE	0FFH
EDA4		EQU	$
		BYTE	000H
		BYTE	015H,007H,KAMBS
		BYTE	015H,007H,KAMBR
		BYTE	015H,007H,KAMBB
		BYTE	0FFH
EDA5		EQU	$
		BYTE	000H
		BYTE	005H,016H,MAGIC
		BYTE	005H,019H,MAGIC
		BYTE	007H,004H,MAGIC
		BYTE	007H,00BH,MAGIC
		BYTE	008H,017H,HARI0
		BYTE	009H,015H,MAGIC
		BYTE	009H,01AH,MAGIC
		BYTE	00AH,008H,MAGIC
		BYTE	012H,00CH,MEMED
		BYTE	012H,012H,MEMED
		BYTE	017H,012H,HEIS1
		BYTE	018H,013H,HEIS0
		BYTE	0FFH
EDA6		EQU	$
		BYTE	000H
		BYTE	00FH,00FH+0E0H,MGSET
;
		BYTE	00EH,00CH,BABUL
;;;;		BYTE	00EH,013H,DOOMO		; 10/10 !!
		BYTE	0FFH
EDA7		EQU	$
		BYTE	000H
		BYTE	008H,006H,YOSEI
		BYTE	009H,006H,YOSEI
		BYTE	0FFH
EDA8		EQU	$
		BYTE	001H
		BYTE	00EH,016H,SKEL2
		BYTE	00EH,01AH,SKEL2
		BYTE	012H,016H,SKEL2
		BYTE	012H,01AH,SKEL2
		BYTE	016H,008H+0E0H,SKCH2
		BYTE	0FFH
EDA9		EQU	$
		BYTE	000H
		BYTE	005H+080H,009H,MEDAM
		BYTE	005H+080H,016H,MEDAM
		BYTE	00CH+080H,00DH+0E0H,SKST1
		BYTE	00CH+080H,012H+0E0H,SKST1
		BYTE	012H+080H,00DH+0E0H,SKST1
		BYTE	012H+080H,012H+0E0H,SKST1
		BYTE	010H+080H,00AH,SKEL2
		BYTE	010H+080H,014H,SKEL2
		BYTE	0FFH
EDAA		EQU	$
		BYTE	001H
		BYTE	006H,018H,BABUL
		BYTE	007H,00AH,HANA1
		BYTE	00BH,006H,SKEL2
		BYTE	00CH,00CH,SKEL2
		BYTE	013H,00CH,SKEL2
		BYTE	014H,00AH,HANA1
		BYTE	0FFH
EDAB		EQU	$
		BYTE	000H
		BYTE	018H,004H,TAAMA
		BYTE	015H,003H,HARI0
		BYTE	016H,00CH,HARI0
		BYTE	017H,003H,HARI0
		BYTE	018H,006H,SLIME
		BYTE	019H,003H,HARI0
		BYTE	01AH,00CH,HARI0
		BYTE	01BH,003H,HARI0
		BYTE	0FFH
EDAC		EQU	$
		BYTE	000H
		BYTE	015H,019H,CTBOS
		BYTE	0FFH
EDAE		EQU	$
		BYTE	000H
		BYTE	007H,013H,ZOOL2
		BYTE	007H,015H,ZOOL2
		BYTE	0FFH
EDAF		EQU	$
		BYTE	000H
		BYTE	008H,00AH,BAAR0
		BYTE	0FFH
EDB0		EQU	$
		BYTE	000H
		BYTE	007H,007H,HEIS1
		BYTE	007H,017H,KOMO0
		BYTE	007H,018H,KOMO0
		BYTE	008H,014H,HEYA2
		BYTE	008H,01BH,HEYA2
		BYTE	00BH,005H,HEIS1
		BYTE	014H,016H,TEKU0
		BYTE	016H,004H,KOMO0
		BYTE	016H,00BH,KOMO0
		BYTE	016H,00AH,HEIS1
		BYTE	018H,008H,HEIS1
		BYTE	0FEH,000H,KAGI0
		BYTE	01AH,01BH,HEIS2
		BYTE	01CH,017H,HEYA2
		BYTE	0FFH
EDB1		EQU	$
		BYTE	000H
		BYTE	007H,015H,BGBM0
		BYTE	007H,01AH,BGBM0
		BYTE	00EH,016H,HARI0
		BYTE	011H,019H,HARI0
		BYTE	017H,00CH,MAGIC
		BYTE	017H,01AH,TRAP0
		BYTE	018H,007H,BGBM1
		BYTE	01AH,003H,MAGIC
		BYTE	01AH,015H,BABUL
		BYTE	01CH,008H,MAGIC
		BYTE	0FFH
EDB2		EQU	$
		BYTE	001H
		BYTE	008H+080H,014H,MAGIC
		BYTE	00AH+080H,00CH,DOOMO
		BYTE	00AH+080H,012H,BABUL
		BYTE	00AH+080H,013H,DOOMO
		BYTE	00BH+080H,007H,BABUL
		BYTE	015H,004H,NAME0
		BYTE	015H,00BH,NAME0
		BYTE	016H,003H,BABUL
		BYTE	018H,015H,BGBM0
		BYTE	018H,01AH,BGBM0
		BYTE	01BH,004H,NAME0
		BYTE	01BH,00BH,NAME0
		BYTE	01BH,014H,HANA0
		BYTE	01BH,01BH,HANA0
		BYTE	0FFH
EDB3		EQU	$
		BYTE	000H
		BYTE	015H,003H,SKEL2
		BYTE	015H,00BH,SKEL2
		BYTE	018H,006H,NL777
		BYTE	01AH,00AH,BGBM1
		BYTE	01CH,007H,SKEL2
		BYTE	0FFH
EDB5		EQU	$
		BYTE	000H
		BYTE	00AH,016H,BAAR0
		BYTE	00FH,009H,BAAR0
		BYTE	016H,016H,BAAR0
		BYTE	0FFH
EDB6		EQU	$
		BYTE	000H
		BYTE	007H,006H,WANWAN
		BYTE	007H,00AH,WANWAN
		BYTE	004H,003H,TAAMA
		BYTE	004H,00CH,TAAMA
;
		BYTE	007H,017H,YOSEI
		BYTE	015H,007H,DARUM
		BYTE	0FEH,000H,KAGI0
		BYTE	018H,017H+0E0H,TILST
		BYTE	01BH,007H,SLIME
		BYTE	01BH,008H,SLIME
		BYTE	0FFH
EDB7		EQU	$
		BYTE	000H
		BYTE	009H,004H,CHAN2
		BYTE	011H,004H,CHAN0
		BYTE	0FFH
EDB8		EQU	$
		BYTE	000H
		BYTE	00BH,015H,HANA0
		BYTE	00BH,01BH,HANA0
		BYTE	00DH,018H,BABU2
		BYTE	013H,018H,MEDAM
		BYTE	016H,014H,SKEL2
		BYTE	016H,01CH,SKEL2
		BYTE	0FFH
EDB9		EQU	$
		BYTE	001H
		BYTE	005H+80H,011H+0E0H,TAMS1
		BYTE	0FFH
EDBA		EQU	$
		BYTE	000H
		BYTE	004H,014H,SKEL2
		BYTE	006H,003H,BABUL
		BYTE	006H,018H,SKEL2
		BYTE	009H,003H,BABUL
		BYTE	009H,00CH,HANA1
		BYTE	00AH,018H,SKEL2
		BYTE	00CH,008H,HANA1
		BYTE	0FFH
EDBB		EQU	$
		BYTE	000H
		BYTE	004H,01BH,TEKI1
		BYTE	00AH,006H,AMEBA
		BYTE	00AH,016H,TEKI1
		BYTE	00AH,019H,AMEBA
		BYTE	00CH,008H,BABUL
		BYTE	00EH,009H,AMEBA
		BYTE	010H,007H,HBTAM
		BYTE	014H,008H,AMEBA
		BYTE	015H,019H,AMEBA
		BYTE	016H,015H,BABUL
		BYTE	01AH,017H,AMEBA
		BYTE	0FFH
EDBC		EQU	$
		BYTE	000H
		BYTE	005H,006H,TEKI0
		BYTE	005H,00CH,SKEL2
		BYTE	006H,008H,HARI0
		BYTE	009H,00AH,TEKI1
		BYTE	00AH,009H,HARI0
		BYTE	00BH,005H,TEKI0
		BYTE	00AH,017H,SKEL2
		BYTE	011H,018H,SKEL2
		BYTE	016H,016H,SKEL2
		BYTE	017H,008H,TEKI0
		BYTE	018H,007H,HBTAM
		BYTE	019H,008H,TEKI1
		BYTE	0FFH
EDBD		EQU	$
		BYTE	000H
;;		BYTE	010H,008H,ESET2
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	0FFH,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
;;		BYTE	010H,008H,OHYES
		BYTE	0FFH
EDBE		EQU	$
		BYTE	000H
		BYTE	008H,017H,BABUL
		BYTE	012H,014H,ICMAN
		BYTE	015H,014H,ZOOL2
		BYTE	015H,01BH,ZOOL2
		BYTE	016H,018H,SKELB
		BYTE	01AH,014H,ZOOL2
		BYTE	01AH,01BH,ZOOL2
		BYTE	0FFH
EDBF		EQU	$
		BYTE	000H
		BYTE	018H,00BH,TAAMA
		BYTE	015H,00CH,DOOMO
		BYTE	0FFH
EDC0		EQU	$
		BYTE	000H
		BYTE	005H,017H,HEIS0
		BYTE	007H,01AH,HEYA0
		BYTE	009H,00BH,HEIS0
		BYTE	00BH,014H,HEYA0
		BYTE	0FEH,000H,KAGI0
		BYTE	00EH,006H,HEIS0
		BYTE	018H,004H,HEIS0
		BYTE	01BH,014H,HEYA0
		BYTE	01BH,01BH,HEIS0
		BYTE	0FFH
EDC1		EQU	$
		BYTE	000H
		BYTE	017H,015H,TAAMA
		BYTE	005H,014H,BGBM0
		BYTE	005H,01BH,BGBM0
		BYTE	00BH,006H,SKEL2
		BYTE	00BH,015H,SKEL2
		BYTE	015H,017H,TELSA
		BYTE	016H,009H,BGBM0
		BYTE	018H,007H+0E0H,TILST
		BYTE	019H,014H,BABUL
		BYTE	01AH,018H,BGBM1
		BYTE	01BH,013H,ZOOL2
		BYTE	0FEH,000H,KAGI0
		BYTE	01BH,01BH,TELSA
		BYTE	0FFH
EDC2		EQU	$
		BYTE	001H
		BYTE	00BH+080H,015H,HBTAM
		BYTE	00CH,00BH,HBTAM
		BYTE	010H,008H,BGBM0
		BYTE	012H+080H,010H,SPARK
		BYTE	012H+080H,019H,SPARK
		BYTE	014H+080H,010H,DOOMO
		BYTE	016H+080H,008H,HBTAM
		BYTE	016H+080H,016H,SPARK
		BYTE	0FFH
EDC3		EQU	$
		BYTE	000H
		BYTE	006H,005H,BGBM0
		BYTE	009H,01EH,MEMEL
		BYTE	00DH,011H,MEMER
		BYTE	011H,01EH,MEMEL
		BYTE	015H,011H,MEMER
		BYTE	01AH,017H+0E0H,YKDW1
		BYTE	01BH,00AH,BABUL
		BYTE	01CH,007H,BGBM0
		BYTE	0FFH
EDC4		EQU	$
		BYTE	000H
		BYTE	00AH,00BH,TAAMA
		BYTE	00FH,018H,TAAMA
		BYTE	01BH,01CH,TAAMA
		BYTE	015H,00FH,TAAMA
		BYTE	00EH,00FH,DARUM
		BYTE	00FH,00BH,BABUL
		BYTE	014H,007H,MOTS1
		BYTE	014H,018H,MOTS1
		BYTE	01AH,00BH,BABUL
		BYTE	01AH,014H,BABUL
		BYTE	0FFH
EDC5		EQU	$
		BYTE	000H
		BYTE	009H,00EH,MEMEL
		BYTE	00BH,001H,MEMER
		BYTE	00DH,00EH,MEMEL
		BYTE	00FH,001H,MEMER
		BYTE	011H,00EH,MEMEL
		BYTE	013H,001H,MEMER
		BYTE	015H,007H,MOTS1
		BYTE	015H,00EH,MEMEL
		BYTE	0FFH
EDC6		EQU	$
		BYTE	000H
		BYTE	004H,00BH,SKEL2
		BYTE	004H,015H,SKEL2
		BYTE	009H,008H,ZOOL2
		BYTE	009H,017H,ZOOL2
		BYTE	00EH,010H,TELSA
		BYTE	014H,018H,ZOOL2
		BYTE	017H,008H,ZOOL2
		BYTE	0FFH
EDC8		EQU	$
		BYTE	000H
		BYTE	015H,014H,NOMOS
		BYTE	015H,017H,NOMOS
		BYTE	015H,01AH,NOMOS
		BYTE	018H,01AH,NOMOS
		BYTE	018H,017H,NOMOS
		BYTE	018H,014H,NOMOS
;
		BYTE	018H,017H+0E0H,NOMCT
;
		BYTE	0FFH
EDC9		EQU	$
		BYTE	000H
		BYTE	005H,010H,HANA1
		BYTE	006H,00FH,HANA1
		BYTE	007H,010H,HANA1
		BYTE	0FFH
EDCB		EQU	$
		BYTE	001H
		BYTE	004H,014H,DOOMO
		BYTE	009H+080H,008H,HBTAM
		BYTE	00AH+080H,010H,TEKI0
		BYTE	00AH,013H,SLIME
		BYTE	00AH+080H,016H,SPARK
		BYTE	00AH,01CH,SLIME
		BYTE	010H,00CH,SKEL2
		BYTE	015H+080H,018H,TEKI1
		BYTE	017H+080H,008H,TEKI1
		BYTE	017H,00BH,SLIME
		BYTE	018H,00CH,SLIME
		BYTE	01CH,014H,DOOMO
		BYTE	0FFH
EDCC		EQU	$
		BYTE	001H
		BYTE	004H,013H,HBTAM
		BYTE	009H+080H,00BH,DOOMO
		BYTE	00AH+080H,008H,TEKI0
		BYTE	00AH+080H,00EH,SPARK
		BYTE	00BH,00CH,SLIME
		BYTE	00CH+080H,010H,TEKI1
		BYTE	00CH+080H,018H,TEKI0
		BYTE	014H+080H,00EH,HBTAM
		BYTE	015H,01CH,SLIME
		BYTE	016H+080H,006H,SPARK
		BYTE	016H+080H,009H,SPARK
		BYTE	018H+080H,009H,TEKI1
		BYTE	016H,01CH,SLIME
		BYTE	01CH+080H,007H,DOOMO
		BYTE	0FFH
EDCE		EQU	$
		BYTE	000H
		BYTE	005H,016H,ZOOL1
		BYTE	005H,019H,ZOOL1
		BYTE	005H,01CH,ESW02
		BYTE	009H,014H,SEKZ4
;
		BYTE	008H,01BH,ZOOL2
		BYTE	008H,01CH,ZOOL2
		BYTE	009H,01BH,ZOOL2
		BYTE	009H,01CH,ZOOL2
		BYTE	0FFH
EDD0		EQU	$
		BYTE	000H
		BYTE	005H,00BH,KOMO0
		BYTE	007H,009H,HEIS0
		BYTE	007H,017H,KOMO0
		BYTE	00BH,015H,HEIS2
		BYTE	00CH,009H,KOMO0
		BYTE	00FH,008H,KOMO0
		BYTE	010H+HAB1,003H+DOWN,HEIS0
		BYTE	014H,009H,HEIS0
		BYTE	016H,01BH,HEIS2
		BYTE	019H,006H,KOMO0
		BYTE	019H,01AH,HEIS2
		BYTE	0FFH
EDD1		EQU	$
		BYTE	000H
		BYTE	006H,014H,NL777
		BYTE	006H,01BH,NL777
		BYTE	007H,004H,MAGIC
		BYTE	008H,00CH,ZOOL1
		BYTE	009H,005H,BGBM1
		BYTE	00BH,004H,NAME0
		BYTE	00BH,00BH,NAME0
		BYTE	00BH,01BH,NAME0
		BYTE	0FFH
EDD2		EQU	$
		BYTE	000H
		BYTE	006H,018H,MAGIC
		BYTE	007H,01AH,HANA0
		BYTE	008H,013H,MAGIC
		BYTE	008H,01CH,MAGIC
		BYTE	00AH,018H,NL777
		BYTE	00CH,016H,HANA0
		BYTE	00DH,013H,HANA0
		BYTE	010H,013H,MAGIC
		BYTE	014H,014H,HANA0
		BYTE	014H,01CH,HANA0
		BYTE	0FFH
EDD5		EQU	$
		BYTE	000H
		BYTE	009H,00EH,MEMEL
		BYTE	00DH,001H,MEMER
		BYTE	011H,00EH,MEMEL
		BYTE	015H,001H,MEMER
		BYTE	015H,004H,MOTS0
		BYTE	0FFH
EDD6		EQU	$
		BYTE	000H
		BYTE	002H,007H,MEMED
		BYTE	016H,003H,BGBM0
		BYTE	016H,00CH,BGBM0
		BYTE	0FFH
EDD8		EQU	$
		BYTE	000H
		BYTE	005H,017H,MEDA2
		BYTE	005H,018H,MEDA2
		BYTE	009H,017H,HANA1
		BYTE	009H,018H,HANA1
		BYTE	00AH,016H,HANA1
		BYTE	00AH,019H,HANA1
		BYTE	00BH,016H,HANA0
		BYTE	00BH,019H,HANA0
		BYTE	014H,017H,MEDA2
		BYTE	016H,018H,SKEL2
		BYTE	01BH,018H,SKEL2
		BYTE	0FFH
EDD9		EQU	$
		BYTE	000H
		BYTE	014H,00CH+0E0H,TAMS0
		BYTE	015H,018H,MEDAM
		BYTE	018H,018H,MEDAM
		BYTE	01BH,018H,MEDAM
		BYTE	0FFH
EDDA		EQU	$
		BYTE	000H
		BYTE	018H,007H,BABUL
		BYTE	018H,008H,BABUL
		BYTE	0FFH
EDDB		EQU	$
		BYTE	001H
		BYTE	004H,003H,DOOMO
		BYTE	00AH+080H,00EH,SPARK
		BYTE	00BH+080H,017H,TEKI1
		BYTE	00CH+080H,00FH,TEKI0
		BYTE	010H,00BH,SLIME
		BYTE	010H,014H,HBTAM
		BYTE	015H+080H,00FH,TEKI0
		BYTE	0FFH
EDDC		EQU	$
		BYTE	001H
		BYTE	00AH+080H,009H,TEKI0
		BYTE	00AH+080H,00EH,SPARL
		BYTE	00CH+080H,00FH,TEKI1
		BYTE	010H,00BH,SLIME
		BYTE	010H,016H,SLIME
		BYTE	016H+080H,00CH,DOOMO
		BYTE	016H+080H,00FH,TEKI1
		BYTE	017H+080H,009H,TEKI0
		BYTE	017H+080H,016H,HBTAM
		BYTE	01CH,005H,HBTAM
		BYTE	01CH,00FH,SLIME
		BYTE	0FFH
EDDE		EQU	$
		BYTE	000H
		BYTE	005H,017H,ICEBG
		BYTE	005H,017H,ICTAM
		BYTE	005H,017H,ICBOS
		BYTE	0FFH
EDDF		EQU	$
		BYTE	000H
		BYTE	015H+080H,00CH,HAYAM
		BYTE	016H+080H,00CH,HAYAM
		BYTE	0FFH
EDE0		EQU	$
		BYTE	000H
		BYTE	006H,004H,TEKU0
		BYTE	006H,00BH,TEKU0
		BYTE	006H,01AH,HEIS2
		BYTE	009H,01AH,HEIS2
		BYTE	0FFH
EDE1		EQU	$
		BYTE	000H
		BYTE	00DH,017H,UTUBK
		BYTE	012H+080H,007H,JIJII	; MURABITO B
		BYTE	0FFH
EDE2		EQU	$
		BYTE	000H
		BYTE	006H,007H,YOSEI
		BYTE	006H,008H,YOSEI
		BYTE	007H,007H,YOSEI
		BYTE	007H,008H,YOSEI
		BYTE	010H,013H,UTUBK
		BYTE	0FFH
EDE3		EQU	$
		BYTE	000H
		BYTE	005H+080H,017H,DEMON
		BYTE	0FFH
EDE4		EQU	$
		BYTE	000H
		BYTE	007H,019H,KOMO0
		BYTE	008H,018H,KOMO0
		BYTE	009H,017H,KOMO0
		BYTE	016H,006H,HELP1
		BYTE	0FFH
EDE5		EQU	$
		BYTE	000H
		BYTE	009H,00FH,KOMO0
		BYTE	009H,010H,KOMO0
		BYTE	009H,011H,KOMO0
		BYTE	00EH,01BH,KOMO0
		BYTE	012H,00FH,KOMO0
		BYTE	012H,011H,KOMO0
		BYTE	0FFH
EDE6		EQU	$
		BYTE	000H
		BYTE	00BH,01BH,KOMO0
		BYTE	00FH,017H,KOMO0
		BYTE	013H,013H,KOMO0
		BYTE	017H,00FH,KOMO0
		BYTE	01BH,00BH,KOMO0
		BYTE	0FFH
EDE7		EQU	$
		BYTE	000H
		BYTE	004H,010H,KOMO0
		BYTE	004H,013H,KOMO0
		BYTE	00BH,015H,KOMO0
		BYTE	00CH,00BH,KOMO0
		BYTE	00DH,00BH,KOMO0
		BYTE	00DH,015H,KOMO0
		BYTE	00FH,015H,KOMO0
		BYTE	0FFH
EDE8		EQU	$
		BYTE	000H
		BYTE	005H,007H,MOTS0
		BYTE	008H,017H,MOTS0
		BYTE	00CH,007H,MOTS0
		BYTE	00CH,019H,MOTS0
		BYTE	0FFH
EDEA		EQU	$
		BYTE	000H
		BYTE	00BH,00BH,UTUBK
		BYTE	0FFH
EDEB		EQU	$
		BYTE	000H
		BYTE	014H,017H,BYOYN
		BYTE	0FFH
EDEE		EQU	$
		BYTE	000H
		BYTE	004H,010H,HAYAM
		BYTE	00EH,00BH,HAYAM
		BYTE	01CH,009H,HAYAM
;
		BYTE	00BH,003H,ZOOL2
		BYTE	00CH,01CH,ZOOL2
		BYTE	0FFH
EDEF		EQU	$
		BYTE	000H
		BYTE	009H,017H,HAYAM
		BYTE	00AH,014H,HAYAM
		BYTE	00AH,01BH,HAYAM
;
		BYTE	006H,018H,TAAMA
		BYTE	0FFH
EDF0		EQU	$
		BYTE	000H
		BYTE	003H,009H,KOMO0
		BYTE	003H,010H,KOMO0
		BYTE	004H,008H,KOMO0
		BYTE	004H,00AH,KOMO0
		BYTE	007H,009H,KOMO0
		BYTE	00AH,003H,KOMO0
		BYTE	00AH,005H,KOMO0
		BYTE	00CH,00EH,KOMO0
		BYTE	010H,01BH,HELP1
		BYTE	013H,013H,KOMO0
		BYTE	0FFH
EDF1		EQU	$
		BYTE	000H
		BYTE	010H,019H,KOMO0
		BYTE	010H,01CH,KOMO0
		BYTE	011H,018H,KOMO0
		BYTE	011H,01DH,KOMO0
		BYTE	012H,017H,KOMO0
		BYTE	012H,01EH,KOMO0
		BYTE	01BH,006H,KOMO0
		BYTE	01BH,009H,KOMO0
		BYTE	01CH,007H,KOMO0
		BYTE	01CH,008H,KOMO0
;
;		BYTE	013H+080H,00EH,OCTBL
;		BYTE	013H+080H,011H,OCTBL
;		BYTE	015H+080H,00EH,OCTBL
;		BYTE	015H+080H,011H,OCTBL
;		BYTE	017H+080H,00EH,OCTBL
;		BYTE	017H+080H,011H,OCTBL
;		BYTE	019H+080H,00EH,OCTBL
;		BYTE	019H+080H,011H,OCTBL
;		BYTE	012H+080H,00EH,OCTBL
;		BYTE	012H+080H,011H,OCTBL
;		BYTE	014H+080H,00EH,OCTBL
;		BYTE	014H+080H,011H,OCTBL
;		BYTE	012H+80H,010H,FOOD1
;		BYTE	014H+80H,011H,FOOD2
;		BYTE	016H+80H,012H,FOOD3
;		BYTE	018H+80H,013H,FOOD4
;;		BYTE	010H+80H,010H,OCTA1
;;		BYTE	014H+80H,014H,OCTA4
;;		BYTE	012H+80H,012H,OCTA2
;;		BYTE	010H+80H,016H,SEKZ1
		BYTE	0FFH
EDF3		EQU	$
		BYTE	000H
		BYTE	014H,006H,JOHBB
;		BYTE	015H,00EH,TOTUG
;		BYTE	013H,014H,KAJIY
;		BYTE	013H,014H,SARU3
		BYTE	0FFH
EDF4		EQU	$
		BYTE	000H
		BYTE	014H,017H,NOPPO
		BYTE	0FFH
EDF5		EQU	$
		BYTE	000H
		BYTE	014H,008H,NOPPO
		BYTE	0FFH
EDF9		EQU	$
		BYTE	000H
		BYTE	005H,01AH,HAYAM
		BYTE	00FH,015H,HAYAM
		BYTE	013H,011H,HAYAM
		BYTE	017H,00CH,HAYAM
;
;;		BYTE	00CH,00CH,ESW01
;;		BYTE	00FH,00FH,TTN01
;;		BYTE	010H,010H,OCTA1
;;		BYTE	012H,012H,OCTBL
;;		BYTE	014H,011H,IWAOO
;;		BYTE	015H,010H,BATTA
;;		BYTE	016H,00FH,OCTA2
;;		BYTE	017H,00EH,OCTA1
;;		BYTE	00CH,012H,NYORO
;		BYTE	012H,012H,KWAUS
;		BYTE	013H,013H,KWAU1
;		BYTE	013H,014H,SHIGE
;		BYTE	014H,014H,SEKZ4
;		BYTE	013H,012H,SEKZ4
;		BYTE	013H,014H,KAJIY
;		BYTE	013H,014H,SARU3
;		BYTE	015H,00EH,TOTUG
;		BYTE	012H,010H,SEKZ4
;		BYTE	012H,008H,TAAM1
;		BYTE	012H,009H,TAAM1
;		BYTE	012H,00AH,TAAM1
;		BYTE	012H,00BH,TAAM1
;		BYTE	012H,00CH,TAAM1
;		BYTE	012H,00DH,TAAM1
;		BYTE	012H,00EH,TAAM1
;		BYTE	012H,00FH,TAAM1
		BYTE	0FFH
EDFA		EQU	$
		BYTE	000H
		BYTE	00EH,017H,YOSEI
		BYTE	010H,018H,YOSEI
		BYTE	011H,015H,YOSEI
		BYTE	0FFH
EDFB		EQU	$
		BYTE	000H
		BYTE	00DH,017H,BYOYN
;
		BYTE	00AH,019H,MOTS0
		BYTE	012H,015H,MOTS0
		BYTE	0FFH
EDFC		EQU	$
		BYTE	000H
;
;		BYTE	001H
;		BYTE	019H,005H,JIJII
;		BYTE	019H,008H,BABAA
;		BYTE	019H,00CH,HEITI
;		BYTE	019H,010H,PENKI
;		BYTE	019H,014H,NOKOG
;		BYTE	019H,018H,KUTUU
;		BYTE	019H,01BH,GAKII
;		BYTE	010H,008H,ESET2
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	0FFH,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	010H,008H,OHYES
;		BYTE	0FFH
;
		BYTE	0FFH
EDFD		EQU	$
		BYTE	000H
		BYTE	00EH,009H,HAYAM
;
		BYTE	008H,005H,ZOOL2
		BYTE	008H,016H,YOSEI
		BYTE	008H,018H,YOSEI
		BYTE	011H,00FH,ZOOL2
		BYTE	0FFH
;
EDFE		EQU	$
		BYTE	000H
		BYTE	012H,016H,HAYAM
		BYTE	016H,014H,HAYAM
		BYTE	016H,01AH,HAYAM
;
		BYTE	012H,018H,ZOOL2
		BYTE	018H,018H,ZOOL2
		BYTE	0FFH
EDFF		EQU	$
		BYTE	000H
		BYTE	004H,007H,SAMTM
		BYTE	0FFH
;
;- - - - - - - - - - - - - -
E100		EQU	$
		BYTE	000H
		BYTE	01BH,00BH,SAMTM		; SHOP D
		BYTE	0FFH
E101		EQU	$
		BYTE	000H
		BYTE	013H,008H,PLHIK
		BYTE	0FFH
E102		EQU	$
		BYTE	000H
		BYTE	018H,003H,SINUB
		BYTE	0FFH
E103		EQU	$
		BYTE	000H
		BYTE	015H,006H,RYOKI		; SAKE
		BYTE	01BH,00AH,JIJII
;
		BYTE	017H,017H,HIGEE
		BYTE	0FFH
E104		EQU	$
		BYTE	000H
		BYTE	017H,01AH,OYAGI
		BYTE	0FFH
E105		EQU	$
		BYTE	000H
		BYTE	018H,007H,JITON
		BYTE	0FFH
E106		EQU	$
		BYTE	000H
		BYTE	01BH,008H,SAMTM		; TAKARABAKO YA
		BYTE	0FFH
E107		EQU	$
		BYTE	000H
;(BOOK)
		BYTE	015H,003H,BOOK0
;(BOMB)
		BYTE	01BH,017H,NEZU0
		BYTE	01BH,018H,NEZU0
		BYTE	0FFH
E108		EQU	$
		BYTE	000H
		BYTE	016H,009H,NIWAT
		BYTE	016H,00CH,NIWAT
		BYTE	019H,009H,NIWAT
		BYTE	01AH,006H,NIWAT
		BYTE	0FFH
E109		EQU	$
		BYTE	000H
		BYTE	01BH,00AH,MJSY1
		BYTE	0FFH
E10A		EQU	$
		BYTE	000H
		BYTE	004H,019H,JITON
		BYTE	0FFH
E10B		EQU	$
		BYTE	000H
		BYTE	003H,00FH,ESW12
		BYTE	006H,00DH+0E0H,BMBST
		BYTE	006H,010H+0E0H,BMBST
		BYTE	007H,012H+0E0H,BMBST
		BYTE	009H,00FH+0E0H,BMBST
;
		BYTE	003H,012H,ESW02
		BYTE	007H,00DH,BABUL
		BYTE	0FFH
E10C		EQU	$
		BYTE	000H
		BYTE	007H,017H,YOSEI
		BYTE	007H,018H,YOSEI
		BYTE	008H,017H,YOSEI
		BYTE	008H,018H,YOSEI
;
		BYTE	014H,007H,MEDAM
		BYTE	014H,008H,MEDAM
		BYTE	014H,00CH,MEDAM
		BYTE	01AH,00CH,MEDAM
		BYTE	0FFH
E10D		EQU	$
		BYTE	000H
		BYTE	016H,005H,SPARK
		BYTE	016H,00AH,SPARL
		BYTE	0FFH
E10E		EQU	$
		BYTE	000H
		BYTE	006H,006H,JOHOY		; JYOHOYA A
;
		BYTE	006H,018H,JOHOY		; JYOHOYA B
		BYTE	0FFH
E10F		EQU	$
		BYTE	000H
		BYTE	015H,007H,SAMTM		; SHOP A
		BYTE	0FFH
E110		EQU	$
		BYTE	000H
		BYTE	015H,007H,SAMTM		; SHOP B
		BYTE	0FFH
E111		EQU	$
		BYTE	000H
		BYTE	01BH,00BH,YASAN
		BYTE	0FFH
E112		EQU	$
		BYTE	000H
		BYTE	00AH,007H,JOHOY		; JYOHOYA C
;
		BYTE	014H,017H,SAMTM		; KUSURI YA
		BYTE	0FFH
E114		EQU	$
		BYTE	000H
		BYTE	018H,007H,BWAKO
;
		BYTE	014H,019H,JOHOY		; JYOHOYA D
		BYTE	0FFH
E115		EQU	$
		BYTE	000H
		BYTE	016H,017H,IZUMI
;
		BYTE	007H,017H,YOSEI
		BYTE	007H,018H,YOSEI
		BYTE	008H,017H,YOSEI
		BYTE	008H,018H,YOSEI
		BYTE	009H,007H,BWAKO
;
		BYTE	0FFH
E116		EQU	$
		BYTE	000H
		BYTE	018H,017H,BWAKO		; DEBU
		BYTE 	0FFH
E118		EQU	$
		BYTE	000H
		BYTE	01BH,019H,SAMTM		; SHOP C
		BYTE 	0FFH
E119		EQU	$
		BYTE	000H
		BYTE	018H,00EH,JIJII		; MURABITO A
		BYTE 	0FFH
E11A		EQU	$
		BYTE	000H
		BYTE	017H,018H,JOHOY
		BYTE 	0FFH
E11B		EQU	$
		BYTE	000H
		BYTE	009H,018H,UTUBK
		BYTE	016H+080H,005H,UTUBK
		BYTE 	0FFH
E11C		EQU	$
		BYTE	000H
		BYTE	019H,009H,BAKDN
		BYTE 	0FFH
E11E		EQU	$
		BYTE	000H
		BYTE	007H,005H,YOSEI
		BYTE	007H,006H,YOSEI
		BYTE	008H,005H,YOSEI
		BYTE	008H,006H,YOSEI
;
		BYTE	016H,018H,SAMTM		; NAISYO money 1
		BYTE 	0FFH
E11F		EQU	$
		BYTE	000H
		BYTE	016H,017H,SAMTM		; KUSURI YA
		BYTE 	0FFH
E120		EQU	$
		BYTE	000H
		BYTE	007H,017H,BEE00		; GOLD BEE
		BYTE	008H,01BH,YOSEI
		BYTE	009H,01AH,YOSEI
		BYTE 	0FFH
E121		EQU	$
		BYTE	000H
		BYTE	017H,004H,KAJIY
		BYTE 	0FFH
E122		EQU	$
		BYTE	000H
		BYTE	018H,007H,ULANI		; OMOTE
		BYTE	018H,017H,ULANI		; URA
		BYTE 	0FFH
E123		EQU	$
		BYTE	000H
		BYTE	016H,003H,HAYAM
		BYTE	016H,00CH,HAYAM
		BYTE	017H,008H,HAYAM
		BYTE	01AH,003H,HAYAM
;
		BYTE	005H,008H,SAMTM		; NAISYO money 2
		BYTE 	0FFH
E124		EQU	$
		BYTE	000H
		BYTE	016H,008H,SAMTM		; NAISYO msge 1
		BYTE 	0FFH
E125		EQU	$
		BYTE	000H
		BYTE	016H,008H,SAMTM		; NAISYO msge 2
		BYTE 	0FFH
E126		EQU	$
		BYTE	000H
		BYTE	015H,007H,YOSEI
		BYTE	015H,008H,YOSEI
		BYTE	016H,007H,YOSEI
		BYTE	016H,008H,YOSEI
;
		BYTE	014H,01CH,UTUBK
		BYTE 	0FFH
E127		EQU	$
		BYTE	000H
		BYTE	016H,007H,UTUBK
;;;;;;		BYTE	016H,008H,SAMTM		; NAISYO money 3
		BYTE 	0FFH
E171		EQU	$
E172		EQU	$
E173		EQU	$
E174		EQU	$
E175		EQU	$
E176		EQU	$
E177		EQU	$
E178		EQU	$
E179		EQU	$
E17A		EQU	$
E17B		EQU	$
E17C		EQU	$
E17D		EQU	$
E17E		EQU	$
E17F		EQU	$
E12D		EQU	$
E128		EQU	$
E129		EQU	$
E12A		EQU	$
E12B		EQU	$
E12C		EQU	$
E11D		EQU	$
E117		EQU	$
E113		EQU	$
EDF7		EQU	$
EDF6		EQU	$
EDF2		EQU	$
EDED		EQU	$
EDEC		EQU	$
EDE9		EQU	$
EDDD		EQU	$
EDD7		EQU	$
EDD4		EQU	$
EDD3		EQU	$
EDCF		EQU	$
EDCD		EQU	$
EDCA		EQU	$
EDC7		EQU	$
EDB4		EQU	$
EDAD		EQU	$
EDA2		EQU	$
ED9A		EQU	$
ED94		EQU	$
ED8F		EQU	$
ED8A		EQU	$
ED88		EQU	$
ED78		EQU	$
ED7A		EQU	$
ED79		EQU	$
ED70		EQU	$
ED6F		EQU	$
ED69		EQU	$
ED48		EQU	$
ED2F		EQU	$
ED2D		EQU	$
ED1D		EQU	$
ED18		EQU	$
ED10		EQU	$
ED0F		EQU	$
ED0C		EQU	$
ED05		EQU	$
ED03		EQU	$
ED01		EQU	$
EDF8		EQU	$
E12E		EQU	$
E12F		EQU	$
E130		EQU	$
E131		EQU	$
E132		EQU	$
E133		EQU	$
E134		EQU	$
E135		EQU	$
E136		EQU	$
E137		EQU	$
E138		EQU	$
E139		EQU	$
E13A		EQU	$
E13B		EQU	$
E13C		EQU	$
E13D		EQU	$
E13E		EQU	$
E13F		EQU	$
E140		EQU	$
E141		EQU	$
E142		EQU	$
E143		EQU	$
E144		EQU	$
E145		EQU	$
E146		EQU	$
E147		EQU	$
E148		EQU	$
E149		EQU	$
E14A		EQU	$
E14B		EQU	$
E14C		EQU	$
E14D		EQU	$
E14E		EQU	$
E14F		EQU	$
E150		EQU	$
E151		EQU	$
E152		EQU	$
E153		EQU	$
E154		EQU	$
E155		EQU	$
E156		EQU	$
E157		EQU	$
E158		EQU	$
E159		EQU	$
E15A		EQU	$
E15B		EQU	$
E15C		EQU	$
E15D		EQU	$
E15E		EQU	$
E15F		EQU	$
E160		EQU	$
E161		EQU	$
E162		EQU	$
E163		EQU	$
E164		EQU	$
E165		EQU	$
E166		EQU	$
E167		EQU	$
E168		EQU	$
E169		EQU	$
E16A		EQU	$
E16B		EQU	$
E16C		EQU	$
E16D		EQU	$
E16E		EQU	$
E16F		EQU	$
E170		EQU	$
		BYTE	000H
		BYTE	0FFH
;==============================================
ENBAKUCD	EQU	$
		WORD	0,0
		HEX	60,00,00,02
		WORD	0,0
		HEX	60,00,00,02
		WORD	0,0
		HEX	60,00,00,02
		WORD	0,0
		HEX	60,00,00,02
;
		WORD	0FFFBH,0FFFBH
		HEX	62,00,00,02
		WORD	00005H,0FFFBH
		HEX	62,40,00,02
		WORD	0FFFBH,00005H
		HEX	62,80,00,02
		WORD	00005H,00005H
		HEX	62,C0,00,02
;
		WORD	0FFF8H,0FFF8H
		HEX	62,00,00,02
		WORD	00008H,0FFF8H
		HEX	62,40,00,02
		WORD	0FFF8H,00008H
		HEX	62,80,00,02
		WORD	00008H,00008H
		HEX	62,C0,00,02
;
		WORD	0FFF8H,0FFF8H
		HEX	64,00,00,02
		WORD	00008H,0FFF8H
		HEX	64,40,00,02
		WORD	0FFF8H,00008H
		HEX	64,80,00,02
		WORD	00008H,00008H
		HEX	64,C0,00,02
;
		WORD	0FFF8H,0FFF8H
		HEX	66,00,00,02
		WORD	00008H,0FFF8H
		HEX	66,40,00,02
		WORD	0FFF8H,00008H
		HEX	66,80,00,02
		WORD	00008H,00008H
		HEX	66,C0,00,02
;
		WORD	0FFF8H,0FFF8H
		HEX	68,00,00,02
		WORD	00008H,0FFF8H
		HEX	68,00,00,02
		WORD	0FFF8H,00008H
		HEX	68,00,00,02
		WORD	00008H,00008H
		HEX	68,00,00,02
;
		WORD	0FFF8H,0FFF8H
		HEX	6A,00,00,02
		WORD	00008H,0FFF8H
		HEX	6A,40,00,02
		WORD	0FFF8H,00008H
		HEX	6A,80,00,02
		WORD	00008H,00008H
		HEX	6A,C0,00,02
;
		WORD	0FFF8H,0FFF8H
		HEX	4E,00,00,02
		WORD	00008H,0FFF8H
		HEX	4E,40,00,02
		WORD	0FFF8H,00008H
		HEX	4E,80,00,02
		WORD	00008H,00008H
		HEX	4E,C0,00,02
;
;
;
ENBAKU		EQU	$
		PHB
		PHK
		PLB
		JSR	EB0000
		PLB
		RTL
;-----------------------------
EB0000		EQU	$
		LDA	ENWRK0,X
		BEQ	EBKSET
;
		LDA	ENTIM0,X
		BNE	EBK010
;
		STZ	ENMODE,X
;;		PHA
;
		LDY	#ENNO-1
EBK0E0		EQU	$
;		LDA	ENWRK0,Y
;		BNE	EBK0E2
;;
;		LDA	ENMYNO,Y
;		CMP	#ICBOS
;		BEQ	EBK0E8		
;;
;EBK0E2		EQU	$
		LDA	ENMODE,Y
		CMP	#EBAKU
		BEQ	EBK0F0
;EBK0E8		EQU	$
		DEY
		BPL	EBK0E0		; Another EBAKU ?
;
		LDY	#spoj0
		STY	SPOJFG		; Bank recover !
;
		JSL	>EFLCHK
		BCS	EBK0F0		; All enemy failed ?
;
		STZ	BSFLFG		; NO !!
EBK0F0		EQU	$
;;		PLA
		RTS
EBK010		EQU	$
		LSR	A
		LSR	A
		EOR	#00000111B
		STA	<WORK0
                LDA     #00H
                XBA
                LDA     <WORK0
                MEM16
                REP     #00100000B
                ASL     A
                ASL     A
                ASL     A
;
                ASL     A
                ASL     A
                ADC     #ENBAKUCD
                STA     <WORK8
;
                MEM8
                SEP     #00100000B
;
                LDA     #04H
;;              STA     <WORK6
;;              STZ     <WORK7
;
                JSL     >SETOAML22
		RTS
;==============================================
EBSXAL		EQU	$
EBSYAL		EQU	$
		HEX	00,04,08,0C,FC,F8,F4,00
		HEX	00,08,10,18,E8,F0,F8,00
EBSXAH		EQU	$
EBSYAH		EQU	$
		HEX	00,00,00,00,FF,FF,FF,00
		HEX	00,00,00,00,FF,FF,FF,00
;- - - - - - - - - - - - - - - - -
EBKSET		EQU	$
;;;		INC	SPMCFG		;OBJ bank cover !
;
		LDA	#02H
		STA	ENKAIF,X
;
		LDA	ENTIM0,X
		CMP	#20H
		BEQ	EBSFFF
;
		JMP	EBS0F0
; - - - - FAIL END - - -
EBSFFF		EQU	$
;
		STZ	ENMODE,X
;
;		LDY	#ENNO-1
;EBSFE0		EQU	$
;		LDA	ENMODE,Y
;		CMP	#EBAKU
;		BEQ	EBSFF0
;		DEY
;		BPL	EBSFE0		; Another EBAKU ?
;;					; NO.
;;		LDY	#spoj0
;;		STY	SPOJFG		; Bank recover !
;
EBSFF0		EQU	$
		STZ	PYALSP
;
;;		STZ	BSFLFG
;;		STZ	SPMCFG		; OBJ bank recover !
;
		LDA	<HOLEFG2
		CMP	#02H
		BEQ	EBS0F9		; Player hole down ?(HAYAB room)
;					; no !
		JSL	>EFLCHK
		BCC	EBS0F9		; All enemy failed ?
;;;					; yes !
;;		LDA	#13H
;;		STA	SOUND0	;(S)
;;		LDA	#0A0H
;;		STA	PLSTTM		; Player stop time !
;
		LDY	ENMYNO,X
		CPY	#GANON
		BCS	EBS0FG
;
		CPY	#SHSAI
		BNE	EBS0E0
;
		PHX
		JSL	>DJEXTCK
		PLX
;
EBS0F9		EQU	$
		JMP	EBS0F0
;;		RTS
;--------------------------------------------------
EBS0FG		EQU	$
		LDA	#13H
		STA	SOUND0	;(S)
		JMP	EBS0F0
;;		RTS
;--------------------------------------------------
EBS0E0		EQU	$
;;		LDA	ENMYNO,X
		STY	ENHELP
;
		LDA	#UTUWA		; Heart utsuwa set !
		LDY	#0EH
		JSR	>ENIDSH2
		JSL	>ENIDPS
		LDA	#020H
		STA	ENZSPD,Y
;
		LDA	<PLBGCKF
		STA	ENKAIF,Y
;
;';;		LDA	#02H	; Mizukaki !
;';;		CPY	#ZORAB
;';;		BEQ	EBS0E8
;';;;
;';
		LDA	#02H	; Pendant
		CPY	#HAYAB
		BEQ	EBS0E8
;
		LDA	#06H	; Poligon
EBS0E8		EQU	$
		STA	ENWRK0,Y
;
		LDA	<WORK2
		CLC
		ADC	#03H
		STA	ENYPSL,Y
;
		LDA	<WORK3
		ADC	#00H
		STA	ENYPSH,Y
;
		LDA	ENHELP
		CMP	#CTBOS
		BNE	EBS0EC		; City Boss ?
;					; YPOS rivise !
		LDA	<WORK2
		CLC
		ADC	#10H
		STA	ENYPSL,Y
;
		LDA	<WORK3
		ADC	#00H
		STA	ENYPSH,Y
		RTS
;
;;;;		JSL	>BSITEM
;
EBS0EC		EQU	$
		CMP	#KAMBS
		BNE	EBS0EE
;
		LDA	#78H
		STA	ENXPSL,Y
		STA	ENYPSL,Y
;
		LDA	<PLXPS0
		STA	ENXPSH,Y
		LDA	<PLYPS0
		STA	ENYPSH,Y
EBS0EE		EQU	$
		RTS
;- - - - - - - - - - - - - - - - - - - - - - - - - - -
EBS0F0		EQU	$
;		CMP	#0C0H
;		BNE	EBS0F2
;;
;		LDA	ENMODE,X
;		PHA
;		STZ	ENMODE,X
;		JSL	>EFLCHK
;		PLA
;		STA	ENMODE,X
;		BCC	EBS0F2		; All enemy failed ?
;;
;		LDY	#01H
;		STY	PYALSP
;EBS0F2		EQU	$
		CMP	#40H
		BCC	EBS000
		CMP	#70H
		BCS	EBS0F8
;
		AND	#01H
		BNE	EBS000
;
EBS0F8		EQU	$
		JSL	>ENMOVE2
;;		CMP	#0FEH
;;		BNE	EBS000
;;		PHA
;;		JSL	>ENALFL
;;		PLA
EBS000		EQU	$
		LDA	#07H
		STA	<WORKE
;
		LDA	ENMYNO,X
		STA	<WORKF		
		CMP	#MOTSB
		BNE	EBS011
;
		LSR	<WORKE
EBS011		EQU	$
;
		LDA	ENTIM0,X
;;		CMP	#20H
;;		BCC	EBS0EE
		CMP	#0C0H
;;		BNE	EBS001
;;;		
;;		LDY	#spoj5
;;		STY	SPOJFG		; OBJ bank set !
;;EBS001		EQU	$
		BCC	EBS110
;
		RTS
;---------------------------------------------
EBS110		EQU	$
		PHA
		AND	#03H
		BNE	EBS002
;
;;		JSL	>SDLRCE
;;		ORA	#0CH
;;		STA	SOUND2		;(S)
		LDA	#0CH
		JSL	>SDLRE2	;(S)
;
EBS002		EQU	$
		PLA
		AND	<WORKE
		BNE	EBS010
;
		LDA	#SEKZ4 
		JSL	>ENIDSH
		BMI	EBS010
;
		LDA	#spoj5
		STA	SPOJFG		; OBJ bank set !
;
		LDA	#EBAKU
		STA	ENMODE,Y
;
		LDA	#03H
		STA	ENMOD0,Y
		LDA	#0CH
		STA	ENCLOR,Y
;
		PHX
		JSL	>RNDSET
		AND	#07H
		TAX
		LDA	<WORKF
		CMP	#MOTSB
		BNE	EBS100
		TXA
		ORA	#08H
		TAX
EBS100		EQU	$
		LDA	<WORK0
		CLC
		ADC	EBSXAL,X
		STA	ENXPSL,Y
		LDA	<WORK1
		ADC	EBSXAH,X
		STA	ENXPSH,Y
;
		JSL	>RNDSET
		AND	#07H
		TAX
		LDA	<WORKF
		CMP	#MOTSB
		BNE	EBS1010
		TXA
		ORA	#08H
		TAX
EBS1010		EQU	$
		LDA	<WORK2
		CLC
		ADC	EBSYAL,X
		PHP
		SEC
		SBC	<WORK4
		STA	ENYPSL,Y
		LDA	<WORK3
		SBC	#00H
		PLP
		ADC	EBSYAH,X
		STA	ENYPSH,Y
		PLX
;
		LDA	#1FH
		STA	ENTIM0,Y
		STA	ENWRK0,Y
EBS010		EQU	$
		RTS
;- - - - - - - - - - - - - - - - - - -
ENALFL		EQU	$
                LDY     #ENNO-1
ZRBM08          EQU     $
		CPY	ENINDX
		BEQ	ZRBM09
;
                LDA     ENMODE,Y
                BEQ     ZRBM09
;
		LDA	ENMOD5,Y
		AND	#00000010B
;;		LDA	ENMOD2,Y
;;		AND	#01000000B
		BNE	ZRBM09
;
		LDA	ENMYNO,Y
		CMP	#SHSAI
		BEQ	ZRBM09
;
                LDA     #EFAIL
                STA     ENMODE,Y
                LDA     #0FH
                STA     ENTIM0,Y
;
                LDA     #00H
                STA     ENMOD2,Y
		STA	ENMOD4,Y
                LDA     #03H
                STA     ENMOD0,Y
;
ZRBM09          EQU     $
                DEY
                BPL     ZRBM08
;
                RTL
;
;==============================================
;==============================================
KTFXAD		EQU	$
;-- ishi --
		WORD	000H,008H,000H,008H
		WORD	0FFFEH,009H,0FFFFH,009H
		WORD	0FFFCH,009H,0FFFFH,00AH
		WORD	0FFFAH,009H,0FFFFH,00CH
		WORD	0FFF9H,009H,0FFFEH,00DH
		WORD	0FFF7H,009H,0FFFDH,00EH
		WORD	0FFFCH,0FFFCH,009H,00FH
		WORD	0FFFDH,0FFFDH,0FFFDH,009H
;-- kusa --
		WORD	0FFFCH,004H,006H,00AH
		WORD	0FFFFH,004H,006H,007H
		WORD	000H,002H,004H,007H
		WORD	001H,001H,005H,007H
		WORD	000H,0FFFEH,008H,009H
		WORD	0FFFFH,0FFFAH,009H,00AH
		WORD	0FFFEH,0FFF9H,00CH,00BH
		WORD	0FFFDH,0FFF7H,004H,006H
KTFYAD		EQU	$
		BYTE	000H,000H,008H,008H
		BYTE	000H,0FFH,00AH,00AH
		BYTE	000H,0FDH,00BH,007H
		BYTE	001H,0FCH,00CH,008H
		BYTE	001H,0FCH,00DH,009H
		BYTE	002H,0FCH,010H,00AH
		BYTE	010H-2,010H-2,0FEH-2,00DH-2
		BYTE	012H-2,012H-2,012H-2,001H-2
;
		BYTE	002H,0FBH,005H,001H
		BYTE	003H,0F9H,008H,002H
		BYTE	004H,0F8H,004H,00AH
		BYTE	0F7H,004H,004H,00CH
		BYTE	0F6H,004H,008H,00EH
		BYTE	0F4H,004H,008H,00FH
		BYTE	0F1H,003H,008H,011H
		BYTE	0EFH,001H,012H,00FH
KTFCDT		EQU	$
		BYTE	0FAH-0A2H,0FAH-0A2H,0FAH-0A2H,0FAH-0A2H
		BYTE	0FAH-0A2H,0FAH-0A2H,0FAH-0A2H,0FAH-0A2H ;,0FAH-0A2H
		BYTE	0FAH-0A2H,0FAH-0A2H,0FAH-0A2H,0FAH-0A2H ;,0FAH-0A2H
		BYTE	0FAH-0A2H,0FAH-0A2H,0FAH-0A2H,0FAH-0A2H ;,0FAH-0A2H
		BYTE	0EAH-0A2H,0FAH-0A2H,0FAH-0A2H,0FAH-0A2H ;,0FAH-0A2H
		BYTE	0EAH-0A2H,0FAH-0A2H,0FAH-0A2H,0EAH-0A2H ;,0EAH-0A2H
		BYTE	0EAH-0A2H,0EAH-0A2H,0FAH-0A2H,0EAH-0A2H ;,0EAH-0A2H
		BYTE	0EAH-0A2H,0EAH-0A2H,0EAH-0A2H,0EAH-0A2H ;,0EAH-0A2H
;
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H ;,0FBH-0A2H
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H ;,0FBH-0A2H
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H ;,0FBH-0A2H
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H ;,0FBH-0A2H
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H ;,0FBH-0A2H
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H ;,0FBH-0A2H
		BYTE	0FBH-0A2H,0FBH-0A2H,0FBH-0A2H,0FBH-0A2H ;,0FBH-0A2H
KTFADT		EQU	$
		BYTE	080H,000H,080H,040H
		BYTE	080H,040H,080H,000H
		BYTE	000H,0C0H,000H,080H
		BYTE	080H,040H,080H,000H
		BYTE	080H,0C0H,000H,080H
		BYTE	000H,000H,080H,000H
		BYTE	080H,080H,080H,080H
		BYTE	000H,000H,000H,000H
;
		BYTE	040H,040H,040H,000H
		BYTE	040H,040H,040H,000H
		BYTE	040H,040H,000H,000H
		BYTE	080H,000H,040H,040H
		BYTE	040H,000H,040H,040H
		BYTE	040H,040H,040H,040H
		BYTE	040H,040H,000H,000H
		BYTE	040H,000H,000H,000H
;KTFSBD		EQU	$
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;;
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;		BYTE	0,0,0,0
;- - - - -- - - - - 
;KDFXAD		EQU	$
;		HEX	F8,08,F8,08
;KDFXAH		EQU	$
;		HEX	FF,00,FF,00
;KDFYAD		EQU	$
;		HEX	F8,F8,08,08
;KDFYAH		EQU	$
;		HEX	FF,FF,00,00
;;KDFXSD		EQU	$
;;		HEX	E0,20,E0,20
;;KDFYSD		EQU	$
;;		HEX	E0,E0,20,20
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
KUSAFLMV	EQU	$
;L		LDA	<FRCNT
;L		AND	#01H
;L		ORA	<GAMEMD
;L		ORA	ENSTFG
;L		BNE	KOF002
;;L
;L		LDA	>E2TIM0,X
;L		INC	A
;L		STA	>E2TIM0,X
;;L		LDA	>E2TIM0,X
;;L		BNE	KOF002
;;;L
;;L		STZ	>E2MODE,X
;LKOF002		EQU	$
		JSR	E2OMCK
;
		LDA	>E2CHPT,X
		STA	<WORK5
;
		LDA	OJBKFG
		CMP	#03H
		BCS	KFC010
;
		LDA	>E2STAT,X    ;;ENWRK2,X
		CMP	#03H
		BNE	KTOFF0		; small kusa ?
;
		JSR	KUSAFL
KFC010		EQU	$
		RTS
;
KTOFF0		EQU	$
		STA	ENHELP
		TAY
		LDA	>E2TIM0,X
		LSR	A
		LSR	A
		EOR	#00000111B
		ASL	A
		ASL	A
		CPY	#04H
		BEQ	KTF006
		CPY	#02H
		BNE	KTFC08	; kusa ?
;
		LDY	<DJFLG
		BNE	KTFC08	; Danjyon tubo ?
KTF006		EQU	$	; no
		CLC
		ADC	#04H*8
KTFC08		EQU	$
		STA	<WORK6
;
		LDY	#00H
		PHX
		LDX	#03H
KOF010		EQU	$
		PHX
		TXA
		CLC
		ADC	<WORK6
		PHA
		ASL	A
		TAX
		MEM16
		REP	#20H
		LDA	<WORK0
		CLC
		ADC	KTFXAD,X
		STA	(<OAMADR),Y
		AND	#0100H
		STA	<WORKE
		MEM8
		SEP	#20H
;
		PLX
		LDA	<WORK2
;;		SEC
;;		SBC	#10H
		CLC
		ADC	KTFYAD,X
		INY
		STA	(<OAMADR),Y
;
		LDA	ENHELP
		BNE	KFS077	; Kanban ?
;				; yes !
		LDA	#4EH
		BRA	KFS078
;		
KFS077		EQU	$
		CMP	#80H
		LDA	KTFCDT,X
		BCC	KFS078		; Tail break ?
;					; yes !
		LDA	#0F2H
KFS078		EQU	$
		INY
		STA	(<OAMADR),Y
		LDA	KTFADT,X
		INY
		ORA	<WORK5
		STA	(<OAMADR),Y
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
;;		LDA	#00H 
		LDA	<WORKF
		STA	(<OSBADR),Y
		PLY
		INY
		PLX
		DEX
		BPL	KOF010
;
		PLX
;;		LDY	#00H
;;		LDA	#03H
;;		JSR	ALOMCK
		RTS
;==============================================
;==============================================
KSFXAD		EQU	$
		WORD	0FFF8H,008H,010H
		WORD	0FFFBH,008H,00FH
		WORD	0FFFFH,007H,00BH
		WORD	001H,003H,008H
KSFYAD		EQU	$
		BYTE	007H,002H,00CH
		BYTE	009H,002H,00AH
		BYTE	00BH,002H,00BH
		BYTE	007H,003H,008H
KSFCDT		EQU	$
		HEX	E2,E2,E2
		HEX	E2,F2,F2
		HEX	F2,E2,E2
		HEX	F2,E2,E2
;
;;		HEX	49,49,49
;;		HEX	49,59,59
;;		HEX	59,49,49
;;		HEX	59,49,49
;
;;		BYTE	0E2H-0A2H,0E2H-0A2H,0E2H-0A2H
;;		BYTE	0E2H-0A2H,0F2H-0A2H,0F2H-0A2H
;;		BYTE	0F2H-0A2H,0E2H-0A2H,0E2H-0A2H
;;		BYTE	0F2H-0A2H,0E2H-0A2H,0E2H-0A2H
KSFADT		EQU	$
		BYTE	000H,000H,000H
		BYTE	000H,080H,040H
		BYTE	000H,080H,040H
		BYTE	000H,000H,000H
;- - - - - - - - - - - - - - - - - - - - - - - - - -

KUSAFL		EQU	$
		LDA	>E2TIM0,X
		CMP	#10H
		BNE	KSF000
;
		LDA	#00H
		STA	>E2MODE,X
KSF000		EQU	$	
		AND	#0FH
		LSR	A
		LSR	A
		STA	<WORK6
		ASL	A
		ADC	<WORK6
		STA	<WORK6
;
		LDY	#00H
		PHX
		LDX	#02H
KSF010		EQU	$
		PHX
		TXA
		CLC
		ADC	<WORK6
		PHA
		ASL	A
		TAX
		MEM16
		REP	#20H
		LDA	<WORK0
		CLC
		ADC	KSFXAD,X
		STA	(<OAMADR),Y
		AND	#0100H
		STA	<WORKE
;
		MEM8
		SEP	#20H
;
		PLX
		LDA	<WORK2
;;		SEC
;;		SBC	#10H
		CLC
		ADC	KSFYAD,X
		INY
		STA	(<OAMADR),Y
		LDA	KSFCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	KSFADT,X
		INY
		ORA	#22H
		STA	(<OAMADR),Y
;
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
;;		LDA	#00H 
		LDA	<WORKF
		STA	(<OSBADR),Y
		PLY
;
		INY
		PLX
		DEX
		BPL	KSF010
;
		PLX
;;		LDY	#000H
;;		LDA	#02H
;;		JSR	ALOMCK
		RTS
;
;*********************************************************
;*		Enemy clear 				 *
;*********************************************************
;- - - - RESET ----
ENCLER		EQU	$
;;		LDA	SLMODE
;;		CMP	#MD_djply
;;		BEQ	EOT0A0
;;		LDA	ENMOD5,X
;;		AND	#80H
		LDA	ENMOD5,X
		AND	#01000000B
		BNE	ENCLER2		; Mujouken clear !
;
		LDA	<DJFLG
		BNE	EOT0B0
;
ENCLER2		EQU	$
		STZ	ENMODE,X
;
		TXA
		ASL	A
		TAY
		MEM16
		REP	#00100000B
		LDA	ENSWAD,Y
		STA	<WORK0
		CMP	#0FFFFH
		PHP
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	#ENITSW
		STA	<WORK1
		PLP
		MEM8
		SEP	#00100000B
;
		BCS	EOT0A0			; data set enemy ?
;						; yes ! on off bit clear !
		LDA	#BANK ENITSW
		STA	<WORK3
;
		PHX
                LDA     <WORK0		; x pos !
                AND     #07H
                TAX 
                LDA     [<WORK1] 
                AND     >GONOF2,X
                STA     [<WORK1] 
		PLX
EOT0A0		EQU	$
		LDA	<DJFLG
		BNE	EOT0A8
;
		TXA
		ASL	A
		TAY
		LDA	#0FFH
		STA	ENSWAD,Y
		STA	ENSWAD+1,Y
		RTL
;
EOT0A8		EQU	$
		LDA	#0FFH
		STA	ENSWAD,X
EOT0B0		EQU	$
		RTL
;- - - - - - - 
GONOF2		EQU	$
		BYTE	01111111B
		BYTE	10111111B
		BYTE	11011111B
		BYTE	11101111B
		BYTE	11110111B
		BYTE	11111011B
		BYTE	11111101B
		BYTE	11111110B
; OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
		END	; owari
;
;=====================================================
E2MAIN		EQU	$
		DEC	A
		JSL	>JSRSUB
		WORD	ISUUMV
		WORD	NATAMV
		WORD	SARAMV
		WORD	FOOKMV
		WORD	KNIFMV
		WORD	MADOMV
		WORD	GAKUMV
		WORD	BEDDMV
		WORD	TABLMV
		WORD	GOSTMV
;- - - - - - - - - - - - - - - - - - - - - - -
ISUU		EQU	001H
NATA		EQU	002H
SARA    	EQU	003H
FOOK		EQU	004H
KNIF		EQU	005H
MADO		EQU	006H
GAKU		EQU	007H
BEDD		EQU	008H
TABL		EQU	009H
GOST		EQU	00AH
;
E2OMID		EQU	$
		BYTE	6*4
		BYTE	2*4
		BYTE	6*4
		BYTE	2*4
		BYTE	2*4
		BYTE	2*4
		BYTE	6*4
		BYTE	10*4
		BYTE	10*4
		BYTE	1*4
;===================================
ISUUMV		EQU	$
;       	LDA	KEYA2
;		AND	#00001100B
;		BEQ	WQWQA
;		LDA	<FRCNT
;		AND	#03H
;		BNE	WQWQA
;;
;		LDA	>E2CHPT,X
;		INC	A
;		CMP	#0AH
;		BNE	WEWEA
;		LDA	#000H
;WEWEA		EQU	$
;		STA	>E2CHPT,X
;WQWQA      	EQU	$
		JMP	ISUUCS
;
ISCXAD		EQU	$
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,004H,004H,004H,004H
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,004H,004H,004H,004H
;
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,0FDH,009H,009H,009H
		BYTE	000H,000H,0FBH,0FBH,00AH,00DH
		BYTE	000H,000H,0FAH,0F9H,00EH,00FH
		BYTE	000H,000H,0F5H,013H,012H,012H
		BYTE	000H,000H,000H,000H,000H,000H
ISCYAD		EQU	$
		BYTE	001H,000H,000H,000H,000H,000H
		BYTE	004H,0FCH,00CH,00CH,00CH,00CH
		BYTE	001H,000H,000H,000H,000H,000H
		BYTE	004H,0FCH,00CH,00CH,00CH,00CH
;
		BYTE	001H,0FDH,0FDH,0FDH,0FDH,0FDH
		BYTE	001H,0FDH,007H,0FCH,0FCH,0FCH
		BYTE	001H,0FDH,0FAH,008H,0FAH,00AH
		BYTE	0FEH,0FEH,0FAH,00AH,0FAH,00CH
		BYTE	0FFH,0FFH,0FAH,0FBH,00FH,00FH
		BYTE	000H,000H,000H,000H,000H,000H
ISCCDT		EQU	$
		BYTE	024H,080H,080H,080H,080H,080H
		BYTE	026H,084H,02FH,02FH,02FH,02FH
		BYTE	024H,082H,082H,082H,082H,082H
		BYTE	026H,084H,02FH,02FH,02FH,02FH
;
		BYTE	024H,080H,080H,080H,080H,080H
		BYTE	024H,000H,098H,088H,088H,088H
		BYTE	024H,000H,088H,089H,089H,098H
		BYTE	000H,000H,089H,099H,099H,089H
		BYTE	000H,000H,099H,03FH,099H,099H
		BYTE	000H,000H,000H,000H,000H,000H
ISCADT		EQU	$
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	040H,040H,040H,040H,040H,040H
;
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,000H,000H,040H,000H
		BYTE	000H,000H,040H,000H,040H,040H
		BYTE	000H,000H,000H,000H,040H,040H
		BYTE	000H,000H,000H,000H,000H,000H
ISCSBD		EQU	$
		BYTE	2,2,2,2,2,2
		BYTE	2,2,0,0,0,0
		BYTE	2,2,2,2,2,2
		BYTE	2,2,0,0,0,0
;
		BYTE	2,2,0,0,0,0
		BYTE	2,2,0,0,0,0
		BYTE	2,2,0,0,0,0
		BYTE	2,2,0,0,0,0
		BYTE 	2,2,0,0,0,0
		BYTE	2,2,2,2,2,2
;
ISUUCS		EQU	$
		JSR	OAMCHK
;
		LDA	>E2CHPT,X
		STA	<WORK0
		ASL	A
		ASL	A
		ADC	<WORK0
		ADC	<WORK0
		STA	<WORK2
;
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA     <WORK0
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		STA	<WORK1
;
		PHX
		LDX	#05H
ISC010		EQU	$
		TXA
		PHA
		CLC
		ADC	<WORK2
		TAX
		LDA	<WORK0
		CLC
		ADC	ISCXAD,X
		STA	(<OAMADR),Y
		LDA	<WORK1
		CLC
		ADC	ISCYAD,X
		INY
		STA	(<OAMADR),Y
		LDA	ISCCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	ISCADT,X
		ORA	#33H
		INY
		STA	(<OAMADR),Y
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
		LDA	ISCSBD,X
		STA	(<OSBADR),Y
		PLY
		INY
		PLX
		DEX
		BPL	ISC010
;
		PLX
		LDY	#0FFH
		LDA	#05H
		JSR	E2ALCK
		RTS
;====================================
NATAMV		EQU	$
;;              LDA	KEYA2
;;              AND	#00001100B
;;		BEQ	WEWE2
;		LDA	<FRCNT
;		AND	#03H
;		BNE	WEWE2
;;
;		LDA	>E2CHPT,X
;		INC	A
;		CMP	#08H
;		BNE	WEWE1
;		LDA	#000H
;WEWE1		EQU	$
;		STA	>E2CHPT,X
WEWE2		EQU	$
		JSR	E21CST
;;;;;;;;		JSR	E2SWST
		RTS
;====================================
SARAMV		EQU	$
		JSR	SARACS
;
;;		LDA	KEYA2
;;		AND	#00001100B
;;		BEQ	WQWQ
;		LDA	<FRCNT
;		AND	#03H
;		BNE	WQWQ
;;
;		LDA	>E2CHPT,X
;		INC	A
;		CMP	#06H
;		BNE	WEWE
;		LDA	#000H
WEWE		EQU	$
;		STA	>E2CHPT,X
WQWQ		EQU	$
;----------------------------------
SARACS		EQU	$
		LDA	>E2CHPT,X
		BEQ	SRC0F0
;
		JSR	SARAC0
		RTS
SRC0F0		EQU	$
		JSR	E21CST
;;;		JSR	E2SWST
		RTS
;- - - - - - - - - - - - - - -
SRCXAD		EQU	$
		BYTE	000H,0FEH,0FCH,008H,007H,005H
		BYTE	0FEH,0FFH,0FAH,00AH,008H,003H
		BYTE	0FDH,0FAH,0F8H,00DH,009H,007H
		BYTE	0FDH,0FBH,0F6H,00FH,008H,008H
		BYTE	0F6H,0F6H,0F6H,00FH,00FH,00FH
SRCYAD		EQU	$
		BYTE	000H,0FBH,006H,0FCH,006H,009H
		BYTE	0FFH,0F8H,006H,0FDH,008H,00CH
		BYTE	0FCH,0FBH,003H,0FAH,006H,00DH
		BYTE	000H,0F9H,008H,0FBH,00AH,00AH
		BYTE	00CH,00CH,00CH,0FCH,0FCH,0FCH
SRCCDT		EQU	$
		BYTE	0D5H,0C2H,0D2H,0C3H,0D3H,0D5H
		BYTE	0D5H,0D4H,0D2H,0C3H,0D4H,0D5H
		BYTE	03FH,0D5H,0D4H,0D4H,0D5H,03FH
		BYTE	03FH,03FH,0D5H,0D5H,03FH,03FH
		BYTE	03FH,03FH,03FH,03FH,03FH,03FH
SRCADT		EQU	$
		BYTE	000H,000H,000H,000H,000H,000H
		BYTE	000H,000H,000H,000H,0C0H,000H
		BYTE	000H,000H,000H,040H,0C0H,000H
		BYTE	080H,000H,080H,040H,000H,000H
		BYTE	000H,000H,000H,040H,040H,040H
SARAC0		EQU	$
		JSR	OAMCHK
;
		LDA	>E2CHPT,X
		DEC	A
		STA	<WORK0
		ASL	A
		ASL	A
		ADC	<WORK0
		ADC	<WORK0
		STA	<WORK2
;
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA     <WORK0
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		STA	<WORK1
;
		PHX
		LDX	#05H
SRC010		EQU	$
		TXA
		PHA
		CLC
		ADC	<WORK2
		TAX
		LDA	<WORK0
		CLC
		ADC	SRCXAD,X
		STA	(<OAMADR),Y
		LDA	<WORK1
		CLC
		ADC	SRCYAD,X
		INY
		STA	(<OAMADR),Y
		LDA	SRCCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	SRCADT,X
		ORA	#33H
		INY
		STA	(<OAMADR),Y
		INY
		PLX
		DEX
		BPL	SRC010
		PLX
		LDY	#00H
		LDA	#05H
		JSR	E2ALCK
		RTS
;===================================
FOOKMV		EQU	$
;====================================
KNIFMV		EQU	$
;		LDA	>E2CONT,X
;		INC	A
;		STA	>E2CONT,X
;;;;		LSR	A
;		LSR	A
;		LSR	A
;		AND	#07H
;		STA	>E2CHPT,X
;		AND	#01H
		LDA	>E2CHPT,X
		AND	#01H
		BNE	KF0090
		JSR	KNIFCS
		RTS
KF0090		EQU	$
		JSR	E21CST
		RTS
;- - - - - - - - - - - -
KFCXAD		EQU	$
		BYTE	004H,004H
		BYTE	000H,008H
		BYTE	004H,004H
		BYTE	000H,008H
KFCYAD		EQU	$
		BYTE	000H,008H
		BYTE	004H,004H
		BYTE	000H,008H
		BYTE	004H,004H
KFCCDT		EQU	$
		BYTE	0C7H,0D7H
		BYTE	0D8H,0D9H
		BYTE	0D7H,0C7H
		BYTE	0D9H,0D8H		
;
		BYTE	0C6H,0D6H
		BYTE	0C8H,0C9H
		BYTE	0D6H,0C6H
		BYTE	0C9H,0C8H
KFCADT		EQU	$
		BYTE	00110001B,00110001B
		BYTE	00110001B,00110001B
		BYTE	10110001B,10110001B
		BYTE	01110001B,01110001B
;
KNIFCS		EQU	$
		JSR	OAMCHK
;
		LDA	>E2MODE,X
		STA	<WORK3
;
		LDA	>E2CHPT,X
		AND	#11111110B
		STA	<WORK2
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA     <WORK0
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		STA	<WORK1
;		
		PHX
		LDX	#01H
;;;		LDY	#00H
KFC010		EQU	$
		PHX
		TXA
		CLC
		ADC	<WORK2
		TAX
		LDA	<WORK0
		CLC
		ADC	KFCXAD,X
		STA	(<OAMADR),Y
		LDA	<WORK1
		CLC
		ADC	KFCYAD,X
		INY
		STA	(<OAMADR),Y
		PHX
		LDA	<WORK3
		CMP	#FOOK
		BEQ	KFC008
		TXA
		CLC
		ADC	#08H
		TAX
KFC008		EQU	$
		LDA	KFCCDT,X
		INY
		STA	(<OAMADR),Y
		PLX
		LDA	KFCADT,X
		INY
		STA	(<OAMADR),Y
		INY
		PLX
		DEX
                BPL	KFC010
		PLX
;
		LDY	#00H
		LDA	#01H
		JSR	E2ALCK
		RTS
;====================================
MADOMV		EQU	$
;;LDA	KEYA2
;;AND	#00001100B
;;BEQ	WQWQA1
		LDA	<FRCNT
		AND	#07H
		BNE	WQWQA1
;
		LDA	>E2CHPT,X
		INC	A
		CMP	#06H
		BNE	WEWEA1
		LDA	#000H
WEWEA1		EQU	$
		STA	>E2CHPT,X
WQWQA1		EQU	$
		JSR	MADOCS
		RTS
;------------------------------------------
MDCCD0		EQU	$
MDCCD1		EQU	$
		BYTE	08AH,08CH,08EH,08AH,08CH,08EH
MDCAD0		EQU	$
		BYTE	0B5H,0B5H,0B5H,0F5H,0F5H,0F5H
MDCAD1		EQU	$
		BYTE	035H,035H,035H,075H,075H,075H
;- - - - - - - - - - - - - - -
MADOCS		EQU	$
		JSR	OAMCHK
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA	(<OAMADR),Y
		LDY	#04H
		STA	(<OAMADR),Y
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		LDY	#01H
		STA	(<OAMADR),Y
		CLC
		ADC	#10H
		LDY	#05H
		STA	(<OAMADR),Y
		LDA	>E2CHPT,X
		PHX
		TAX
		LDA	MDCCD0,X
		LDY	#02H
		STA	(<OAMADR),Y
;;;;;;		LDA	MDCCD1,X
		LDY	#06H
		STA	(<OAMADR),Y
		LDA	MDCAD0,X
		LDY	#03H
		STA	(<OAMADR),Y
		LDA	MDCAD1,X
		LDY	#07H
		STA	(<OAMADR),Y
		PLX
		LDY	#02H
		LDA	#01H
		JSR	E2ALCK
		RTS
;====================================
GAKUMV		EQU	$
;;              LDA	KEYA2
;;             AND	#00001100B
;;              BEQ	WQWQAA
;		LDA	<FRCNT
;		AND	#03H
;		BNE	WQWQAA
;
;		LDA	>E2CHPT,X
;		INC	A
;		CMP	#0EH
;		BNE	WEWEAA
;		LDA	#000H
;WEWEAA		EQU	$
;		STA	>E2CHPT,X
WQWQAA		EQU	$
		JSR	GAKUCS
		RTS
;-------- ----------- ------------- ------------- 
GAKXAD		EQU	$
		BYTE	000H,010H,010H,010H,010H,010H
		BYTE	004H,00CH,000H,010H,010H,010H
		BYTE	005H,00CH,014H,000H,010H,010H
		BYTE	005H,00CH,014H,000H,010H,010H
		BYTE	004H,00CH,000H,010H,010H,010H
		BYTE	004H,00CH,000H,010H,010H,010H
;
		BYTE	004H,00CH,000H,010H,010H,010H
		BYTE	004H,00CH,000H,010H,010H,010H
		BYTE	004H,00CH,000H,010H,010H,010H
		BYTE	004H,00CH,004H,014H,007H,00FH
		BYTE	004H,00CH,0FCH,00CH,004H,012H
		BYTE	004H,00CH,004H,014H,002H,016H
		BYTE	004H,00CH,004H,014H,000H,000H
		BYTE	004H,00CH,004H,00CH,00CH,00CH
GAKYAD		EQU	$
		BYTE	000H,000H,000H,000H,000H,0
		BYTE	00CH,00CH,000H,000H,000H,0
		BYTE	00EH,00EH,00EH,000H,000H,0
		BYTE	00EH,00EH,00EH,000H,000H,0
		BYTE	00CH,00CH,000H,000H,000H,0
		BYTE	008H,008H,000H,000H,000H,0
;
		BYTE	008H,008H,002H,002H,002H,2
		BYTE	008H,008H,005H,005H,005H,5
		BYTE	008H,008H,007H,007H,007H,7
		BYTE	008H,008H,004H,004H,0FEH,010H
		BYTE	008H,008H,003H,003H,0FCH,014H
		BYTE	008H,008H,005H,005H,0FAH,014H
		BYTE	008H,008H,006H,006H,0F7H,0F7H
		BYTE	008H,008H,007H,007H,007H,007H
GAKCDT		EQU	$
		BYTE	0ACH,0ACH,0ACH,0ACH,0ACH,0ACH
		BYTE	024H,024H,0ACH,0ACH,0ACH,0ACH
		BYTE	034H,034H,035H,0AEH,0AEH,0AEH
		BYTE	034H,034H,035H,0AEH,0AEH,0AEH
		BYTE	024H,024H,0C0H,0C0H,0C0H,0C0H
		BYTE	024H,024H,0AAH,0AAH,0AAH,0AAH
;
		BYTE	024H,024H,0AAH,0AAH,0AAH,0AAH
		BYTE	024H,024H,0AAH,0AAH,0AAH,0AAH
		BYTE	024H,024H,0AAH,0AAH,0AAH,0AAH
		BYTE	024H,024H,028H,02AH,089H,099H
		BYTE	024H,024H,02AH,028H,089H,099H
		BYTE	024H,024H,028H,02AH,099H,03FH
		BYTE	024H,024H,028H,02AH,03FH,03FH
		BYTE	024H,024H,028H,028H,028H,028H
GAKADT		EQU	$
		BYTE	000H,040H,040H,040H,040H,040H
		BYTE	000H,040H,000H,040H,040H,040H
		BYTE	000H,000H,000H,000H,040H,040H
		BYTE	000H,000H,000H,080H,0C0H,0C0H
		BYTE	000H,040H,000H,040H,040H,040H
		BYTE	000H,040H,000H,040H,040H,040H
;
		BYTE	000H,040H,000H,040H,040H,040H
		BYTE	000H,040H,000H,040H,040H,040H
		BYTE	000H,040H,000H,040H,040H,040H
		BYTE	000H,040H,000H,000H,000H,000H
		BYTE	000H,040H,040H,040H,040H,000H
		BYTE	000H,040H,000H,000H,000H,000H
		BYTE	000H,040H,000H,000H,000H,000H
		BYTE	000H,040H,040H,040H,040H,040H
GAKSBD		EQU	$
		BYTE	2,2,2,2,2,2
		BYTE	2,2,2,2,2,2
		BYTE	0,0,0,2,2,2
		BYTE	0,0,0,2,2,2
		BYTE	2,2,2,2,2,2
		BYTE	2,2,2,2,2,2
;
		BYTE	2,2,2,2,2,2
		BYTE	2,2,2,2,2,2
		BYTE	2,2,2,2,2,2
		BYTE	2,2,2,2,0,0
		BYTE	2,2,2,2,0,0
		BYTE	2,2,2,2,0,0
		BYTE	2,2,2,2,0,0
		BYTE	2,2,2,2,2,2
GAKUCS		EQU	$
		JSR	OAMCHK
;
		LDA	>E2CHPT,X
		ASL	A
		ASL	A
		ADC	>E2CHPT,X
		ADC	>E2CHPT,X
		STA	<WORK2
;
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA	<WORK0
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		STA	<WORK1
		PHX
		LDX	#06H-1
GKC010		EQU	$
		PHX
		TXA
		CLC
		ADC	<WORK2
		TAX
		LDA	<WORK0
		CLC
		ADC	GAKXAD,X
		STA	(<OAMADR),Y
		LDA	<WORK1
		CLC
		ADC	GAKYAD,X
		INY
		STA	(<OAMADR),Y
		LDA	GAKCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	GAKADT,X
		INY
		ORA	#33H
		STA	(<OAMADR),Y
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
		LDA	GAKSBD,X
		STA	(<OSBADR),Y
		PLY
		INY
		PLX
		DEX
		BPL	GKC010
;
		PLX
		LDY	#0FFH
		LDA	#06-1
		JSR	E2ALCK
		RTS
;====================================
BEDDMV		EQU	$
;		LDA	<FRCNT
;		AND	#03H
;		BNE	BDM010
;
;		LDA	<KEYA2
;		AND	#00001000B
;		BEQ	BDM010
;
;		LDA	>E2CHPT,X
;		INC	A
;		STA	>E2CHPT,X
;
;		LDA	>E2CHPT,X
;		CMP	#07H
;		BNE	BDM010
;
;		LDA	#00H
;		STA	>E2CHPT,X
BDM010		EQU	$
		JSR	BEDDCS
		RTS
;---------------------------------
BDCXAD		EQU	$
		BYTE	000H,010H,000H,010H,000H,010H
		BYTE	000H,000H,000H,000H
;
		BYTE	000H,010H,000H,010H,000H,010H
		BYTE	0F9H,008H,008H,01DH
;
		BYTE	000H,010H,000H,010H,000H,010H
		BYTE	0F6H,005H,005H,021H
;
		BYTE	000H,010H,000H,010H,000H,010H
		BYTE	0F4H,003H,005H,023H
;
		BYTE	000H,010H,000H,010H,000H,010H
		BYTE	0F1H,000H,001H,025H
;
		BYTE	000H,010H,000H,010H,000H,010H
		BYTE	0EDH,0FDH,000H,028H
;
		BYTE	000H,010H,000H,010H,000H,010H
		BYTE	000H,000H,000H,000H
BDCYAD		EQU	$
		BYTE	000H,000H,010H,010H,020H,020H
		BYTE	000H,000H,000H,000H
		BYTE	000H,000H,010H,010H,020H,020H
		BYTE	017H,0FFH,01BH,011H
		BYTE	002H,002H,010H,010H,01EH,01EH
		BYTE	017H,0FFH,01BH,011H
		BYTE	000H,000H,010H,010H,020H,020H
		BYTE	00FH,0F8H,013H,00DH
		BYTE	000H,000H,010H,010H,020H,020H
		BYTE	010H,0F7H,012H,00CH
		BYTE	000H,000H,010H,010H,020H,020H
		BYTE	011H,0F5H,010H,00CH
		BYTE	000H,000H,010H,010H,020H,020H
		BYTE	000H,000H,000H,000H,000H,000H
BDCCDT		EQU	$
		BYTE	0A0H,0A0H,0A2H,0A2H,0A4H,0A4H
		BYTE	0A0H,0A0H,0A0H,0A0H
		BYTE	002H,002H,004H,004H,006H,006H
		BYTE	098H,088H,088H,098H
		BYTE	002H,002H,004H,004H,006H,006H
		BYTE	098H,088H,088H,098H
		BYTE	002H,002H,004H,004H,006H,006H
		BYTE	089H,089H,089H,089H
		BYTE	002H,002H,004H,004H,006H,006H
		BYTE	099H,099H,099H,099H
		BYTE	002H,002H,004H,004H,006H,006H
		BYTE	03FH,03FH,03FH,03FH
		BYTE	002H,002H,004H,004H,006H,006H
		BYTE	002H,002H,002H,002H														
BDCADT		EQU	$									
		BYTE	000H,040H,000H,040H,000H,040H
		BYTE	000H,000H,000H,000H
		BYTE	000H,040H,000H,040H,000H,040H
		BYTE	000H,000H,080H,040H
		BYTE	000H,040H,000H,040H,000H,040H
		BYTE	080H,080H,000H,000H
		BYTE	000H,040H,000H,040H,000H,040H
		BYTE	080H,000H,080H,000H
		BYTE	000H,040H,000H,040H,000H,040H
		BYTE	040H,000H,080H,000H
		BYTE	000H,040H,000H,040H,000H,040H
		BYTE	040H,000H,040H,000H
		BYTE	000H,040H,000H,040H,000H,040H
		BYTE	000H,000H,000H,000H
BDCSBD		EQU	$
		BYTE	2,2,2,2,2,2
		BYTE	2,2,2,2
		BYTE	2,2,2,2,2,2
		BYTE	0,0,0,0
		BYTE	2,2,2,2,2,2
		BYTE	0,0,0,0
		BYTE	2,2,2,2,2,2
		BYTE	0,0,0,0
		BYTE	2,2,2,2,2,2
		BYTE	0,0,0,0
		BYTE	2,2,2,2,2,2
		BYTE	0,0,0,0
		BYTE	2,2,2,2,2,2
		BYTE	2,2,2,2
;====================================
BEDDCS		EQU	$
		JSR	OAMCHK
;
		LDA	>E2CHPT,X
		ASL	A
		ASL	A
		ASL	A
		ADC	>E2CHPT,X
		ADC	>E2CHPT,X
		STA	<WORK2
;
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA	<WORK0
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		STA	<WORK1
		PHX
		LDX	#09H
BDC010		EQU	$
		PHX
		TXA
		CLC
		ADC	<WORK2
		TAX
		LDA	<WORK0
		CLC
		ADC	BDCXAD,X
		STA	(<OAMADR),Y
		LDA	<WORK1
		CLC
		ADC	BDCYAD,X
		INY
		STA	(<OAMADR),Y
		LDA	BDCCDT,X
		INY
		STA	(<OAMADR),Y
		LDA	BDCADT,X
		INY
		ORA	#33H
		STA	(<OAMADR),Y
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
		LDA	BDCSBD,X
		STA	(<OSBADR),Y
		PLY
		INY
		PLX
		DEX
		BPL	BDC010
;
		PLX
		LDY	#0FFH
		LDA	#010-1
		JSR	E2ALCK
		RTS
;====================================
TABLMV		EQU	$
;;		LDA	<FRCNT
;;		AND	#03H
;;		BNE	TBM010
;;;
;;		LDA	>E2CHPT,X
;;		INC	A
;;		STA	>E2CHPT,X
;;;
;;		LDA	>E2CHPT,X
;;		CMP	#07H
;;		BNE	TBM010
;;		LDA	#00H
;;		STA	>E2CHPT,X
TBM010		EQU	$
		JSR	TABLCS
		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TABCXD		EQU	$
		BYTE	000H,010H,020H,030H
		BYTE	000H,010H,020H,030H
		BYTE	000H,000H
;
		BYTE	006H,01AH,028H,031H
		BYTE    008H,018H,028H
		BYTE    008H,018H,028H
;
		BYTE	002H,019H,02FH,034H
		BYTE    008H,018H,028H
		BYTE    008H,018H,028H
;
		BYTE	000H,017H,031H,035H
		BYTE    008H,018H,028H
		BYTE    008H,018H,028H
;
		BYTE	0FEH,015H,036H,037H
		BYTE    008H,018H,028H
		BYTE    008H,018H,028H
;
		BYTE	0FCH,012H,03CH,03AH
		BYTE    008H,018H,028H
		BYTE    008H,018H,028H
;
		BYTE    008H,018H,028H
		BYTE    008H,018H,028H
		BYTE	008H,008H,008H,008H
;
TABCYD		EQU	$
		BYTE	000H,000H,000H,000H
		BYTE	010H,010H,010H,010H
		BYTE	000H,000H
;
		BYTE	019H,0FBH,001H,00EH
		BYTE	000H,000H,000H
		BYTE	010H,010H,010H
;
		BYTE	01BH,0F7H,00BH,0FEH
		BYTE	000H,000H,000H
		BYTE	010H,010H,010H
;
		BYTE	01CH,0F5H,008H,0FDH
		BYTE	000H,000H,000H
		BYTE	010H,010H,010H
;
		BYTE	01FH,0F1H,006H,0FBH
		BYTE	000H,000H,000H
		BYTE	010H,010H,010H
;
		BYTE	021H,0F0H,007H,0FBH
		BYTE	000H,000H,000H
		BYTE	010H,010H,010H
;
		BYTE	000H,000H,000H
		BYTE	010H,010H,010H
		BYTE	000H,000H,000H,000H
TABCCD		EQU	$
		BYTE	02DH,0A8H,0A8H,02DH
		BYTE	02BH,0A6H,0A6H,02BH
		BYTE	02DH,02DH
;
		BYTE	098H,088H,088H,098H
		BYTE	008H,00AH,00CH
		BYTE	00EH,020H,022H
;
		BYTE	098H,089H,089H,098H
		BYTE	008H,00AH,00CH
		BYTE	00EH,020H,022H
;
		BYTE	099H,089H,089H,099H
		BYTE	008H,00AH,00CH
		BYTE	00EH,020H,022H
;
		BYTE	099H,099H,099H,099H
		BYTE	008H,00AH,00CH
		BYTE	00EH,020H,022H
;
		BYTE	03FH,03FH,03FH,03FH
		BYTE	008H,00AH,00CH
		BYTE	00EH,020H,022H
;
		BYTE	008H,00AH,00CH
		BYTE	00EH,020H,022H
		BYTE	008H,008H,008H,008H
;
TABCAD		EQU	$
		BYTE	040H,000H,000H,000H
		BYTE	000H,000H,000H,040H
		BYTE	040H,040H
;
		BYTE	000H,040H,000H,0C0H
		BYTE	000H,000H,000H		
		BYTE	000H,000H,000H		
;
		BYTE	080H,000H,080H,040H
		BYTE	000H,000H,000H		
		BYTE	000H,000H,000H		
;
		BYTE	000H,080H,000H,000H
		BYTE	000H,000H,000H		
		BYTE	000H,000H,000H		
;
		BYTE	040H,080H,040H,080H
		BYTE	000H,000H,000H		
		BYTE	000H,000H,000H		
;
		BYTE	000H,040H,000H,040H
		BYTE	000H,000H,000H		
		BYTE	000H,000H,000H		
;
		BYTE	000H,000H,000H		
		BYTE	000H,000H,000H		
		BYTE	000H,000H,000H,000H
;
TABCSD		EQU	$
		BYTE	2,2,2,2
		BYTE	2,2,2,2
		BYTE	2,2
;
		BYTE	0,0,0,0
		BYTE	2,2,2
		BYTE	2,2,2
;
		BYTE	0,0,0,0
		BYTE	2,2,2
		BYTE	2,2,2
;
		BYTE	0,0,0,0
		BYTE	2,2,2
		BYTE	2,2,2
;
		BYTE	0,0,0,0
		BYTE	2,2,2
		BYTE	2,2,2
;
		BYTE	0,0,0,0
		BYTE	2,2,2
		BYTE	2,2,2
;
		BYTE	2,2,2
		BYTE	2,2,2
		BYTE	2,2,2,2
TABLCS		EQU	$
		JSR	OAMCHK
;
		LDA	>E2CHPT,X
		ASL	A
		ASL	A
		ASL	A
		ADC	>E2CHPT,X
		ADC	>E2CHPT,X
		STA	<WORK2
;
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA	<WORK0
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		STA	<WORK1
		PHX
		LDX	#09H
TBC010		EQU	$
		PHX
		TXA
		CLC
		ADC	<WORK2
		TAX
		LDA	<WORK0
		CLC
		ADC	TABCXD,X
		STA	(<OAMADR),Y
		LDA	<WORK1
		CLC
		ADC	TABCYD,X
		INY
		STA	(<OAMADR),Y
		LDA	TABCCD,X
		INY
		STA	(<OAMADR),Y
		LDA	TABCAD,X
		INY
		ORA	#33H
		STA	(<OAMADR),Y
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
		LDA	TABCSD,X
		STA	(<OSBADR),Y
		PLY
		INY
		PLX
		DEX
		BPL	TBC010
		PLX
		LDY	#0FFH
		LDA	#010-1
		JSR	E2ALCK
		RTS
;====================================
GOSTMV		EQU	$
		RTS
;SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
OAMCHK		EQU	$
		LDA	#00H
		STA	>E2DSPL,X
;
		LDA	>E2YPSL,X
		SEC
		SBC	>E2ZPSL,X
		SEC
		SBC	<SCCV2
		LDA	>E2YPSL,X
		CLC
		ADC	#10H
		PHP
		SEC
		SBC	<SCCV2
		LDA	>E2YPSH,X
		SBC	<SCCV21
		PLP
		ADC	#00H
		BEQ 	OMCK10
OMCK0F		EQU	$
		PLA
		PLA
		BRA	OMCK18
OMCK10		EQU	$
		LDA	>E2XPSH,X
		XBA
		LDA	>E2XPSL,X
		MEM16
		REP	#00100000B
		SEC
		SBC	<SCCH2
		CLC
		ADC	#0040H
		CMP	#0180H
		MEM8
		SEP	#00100000B
		BCS	OMCK0F
;
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		LDA	>E2XPSH,X
		SBC	<SCCH21
		BEQ	OMCK20
OMCK18		EQU	$
		LDA	#01H
		STA	>E2DSPL,X
OMCK20		EQU	$
		LDY	#00H
		RTS
;===================
;--------------------------------------------
E2ALCK		EQU	$
		JSR	ALCKSB
		LDY	#00H
GSCL00		EQU	$
		PHY
		TYA
		LSR	A
		LSR	A
		TAY		
		LDA	<WORKB
		BPL	GSCL08
		LDA	(<OSBADR),Y
		AND	#00000010B
GSCL08		EQU	$
		STA	(<OSBADR),Y
		PLY
GSCL09		EQU	$
;-- X Check ---
		LDX	#00H
		LDA	(<OAMADR),Y
		SEC
		SBC	<WORK7
		BPL	GSCL10
		DEX
GSCL10		EQU	$
		CLC
		ADC	<WORK2
		STA	<WORK4
		TXA
		ADC	<WORK3
		STA	<WORK5
		JSR	ONOMCK
		BCC	GSCL11
		PHY
		TYA
		LSR	A
		LSR	A
		TAY
		LDA	(<OSBADR),Y
		ORA	#00000001B
		STA	(<OSBADR),Y
		PLY
GSCL11		EQU	$
;-- Y check --
		LDX	#00H
		INY
		LDA	(<OAMADR),Y
		SEC
		SBC	<WORK6
		BPL	GSCL12
		DEX
GSCL12		EQU	$
		CLC
		ADC	<WORK0
		STA	<WORK9
		TXA
		ADC	<WORK1
		STA	<WORKA
		JSR	ONOMCV
		BCC	GSCL20
GSCL18		EQU	$
		LDA	#0F0H
		STA	(<OAMADR),Y
GSCL20		EQU	$
;;;		INY
		INY
		INY
		INY
		DEC	<WORK8
		BPL	GSCL00
		LDX	ENINDX
		RTS
;--------------------------------------------
;---------------------------------------------
ALCKSB		EQU	$
		STY	<WORKB
		STA	<WORK8
		LDA	>E2YPSL,X
		STA	<WORK0
		SEC
		SBC	<SCCV2
		STA	<WORK6
		LDA	>E2YPSH,X
		STA	<WORK1
		LDA	>E2XPSL,X
		STA	<WORK2
		SEC
		SBC	<SCCH2
		STA	<WORK7
		LDA	>E2XPSH,X
		STA	<WORK3
		RTS
;------------------------------
ONOMCK		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK4
		SEC
		SBC	<SCCH2
		CMP	#0100H
		MEM8
		SEP	#00100000B
		RTS
;-------------------------------
ONOMCV		EQU	$
		MEM16
		REP	#00100000B
		LDA	<WORK9
		PHA
		CLC
		ADC	#10H
		STA	<WORK9
		SEC
		SBC	<SCCV2
		CMP	#0100H
		PLA
		STA	<WORK9
		MEM8
		SEP	#00100000B
		RTS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%							     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E2CD00		EQU	$
ISUUCD		EQU	$
		BYTE	080H,082H,084H,082H,086H
NATACD		EQU	$
		BYTE	0E4H,0EAH,0E6H,0E8H,0E4H,0EAH,0E6H,0E8H
		BYTE	0E0H,0E0H,0E2H,0E2H
SARACD		EQU	$
		BYTE	0C2H
FOOKCD		EQU	$
		BYTE	0,0EEH,0,0EEH,0,0EEH,0,0EEH
KNIFCD		EQU	$
		BYTE	0,0CEH,0,0CEH,0,0CEH,0,0CEH
;- - - - - - - - - - - - - - - - - - 
E2AD00		EQU	$
		BYTE	000H,000H,000H,040H,000H
;
		BYTE	000H,000H,000H,0C0H,0C0H,0C0H,0C0H,000H
		BYTE	000H,040H,000H,080H
;
		BYTE	000H
;
		BYTE	0,000H,0,080H,0,0C0H,0,040H
;
		BYTE	0,000H,0,080H,0,0C0H,0,040H
;- - - - - - - - - - - - - - - - - - - - - - - - -
E2CDAD		EQU	$
		BYTE	ISUUCD-E2CD00
		BYTE	NATACD-E2CD00
		BYTE	SARACD-E2CD00
		BYTE	FOOKCD-E2CD00
		BYTE	KNIFCD-E2CD00
;- - - - - - - - - - - - - - - - - - - - - -
E21CST		EQU	$
		JSR	OAMCHK
;
;;;		LDY	#00H
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA	(<OAMADR),Y
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		INY
		STA	(<OAMADR),Y
;
		LDA	>E2MODE,X
		TAY
		LDA	E2CDAD-1,Y
		CLC
		ADC	>E2CHPT,X
		TAY
		PHY
		LDA	E2CD00,Y
		LDY	#02H
		STA	(<OAMADR),Y
		PLY
		LDA	E2AD00,Y
		LDY	#03H
		ORA	#31H
		STA	(<OAMADR),Y
;
		LDA	#02H
		ORA	>E2DSPL,X
		STA	(<OSBADR)
        	RTS	
;==============================================
E2SWST		EQU	$
		JSR	OAMCHK
;
		LDY	#04H
		LDA	>E2XPSL,X
		SEC
		SBC	<SCCH2
		STA	(<OAMADR),Y
		LDA	>E2YPSL,X
		SEC
		SBC	<SCCV2
		CLC
		ADC	#0AH
		INY
		STA	(<OAMADR),Y
;
		LDA	#0CAH
		INY
		STA	(<OAMADR),Y
		LDA	#33H
		INY
		STA	(<OAMADR),Y
;
		LDY	#01H
		LDA	#02H
		ORA	>E2DSPL,X
		STA	(<OSBADR),Y
        	RTS	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E2XCLC		EQU	$
		TXA
		CLC
		ADC	#E2NO
		TAX
		JSR	E2YCLC
		LDX	ENINDX
       	        RTS
;============================================
E2YCLC		EQU     $
		LDA	>E2YSPD,X
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	>E2YSDR,X
		STA	>E2YSDR,X
;
		LDA	>E2YSPD,X
		PHP
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LDY	#00H
		PLP
		BPL	E2CY60
;
		ORA	#11110000B
		DEY
E2CY60		EQU	$
		ADC	>E2YPSL,X
		STA	>E2YPSL,X
;
		TYA
		ADC	>E2YPSH,X
		STA	>E2YPSH,X
		RTS
;============================================
E2ZCLC		EQU	$
		LDA	>E2ZSPD,X
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	>E2ZSDR,X
		STA	>E2ZSDR,X
;
		LDA	>E2ZSPD,X
		PHP
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		PLP
		BPL	E2CZ60
;
		ORA	#11110000B
E2CZ60		EQU	$
		ADC	>E2ZPSL,X
		STA	>E2ZPSL,X
;
		RTS
