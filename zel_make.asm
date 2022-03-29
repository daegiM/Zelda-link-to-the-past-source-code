;
		INCLUDE	zel_ram.asm
		INCLUDE zel_label.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.10.03(THU)
;
;------------------------------------------------------------------------
;
		ORG	018000H
;
;=============================================== (zel_make) =============
		GLB	MKROOM,HISIST
;=============================================== (zel_main) =============
		EXT	MD_endg1
;=============================================== (zel_bgwt) =============
		EXT	HINFDST,REWTST
;
		EXT	inf_not
		EXT	inf_ee0,inf_ee1,inf_ee2,inf_ee3,inf_ee4
		EXT	inf_ee5,inf_ee6,inf_ee7,inf_ee8,inf_ee9
		EXT	inf_bs0,inf_bs1,inf_bs2,inf_bs3,inf_bs4
		EXT	inf_bs5,inf_bs6,inf_bs7,inf_bs8
		EXT	inf_ssd,inf_bsd,inf_sd0,inf_sd1
		EXT	inf_wdn,inf_wup,inf_wgt,inf_gwr
		EXT	inf_wre,inf_wle,inf_wde,inf_wue,inf_cwy
		EXT	inf_tp0,inf_tp1,inf_tp2,inf_bcw,inf_ebl
		EXT	inf_stk,inf_cws
		EXT	inf_et0,inf_et1,inf_et2,inf_et3,inf_et4
		EXT	inf_et5,inf_et6,inf_et7,inf_et8,inf_et9
		EXT	inf_btk,inf_trt
;=============================================== (zel_rmdt) =============
		EXT	DJNDT
;=============================================== (zel_djdt) =============
		EXT	BASICDT,WRRSD0
		EXT	DJNBEN,DJNLEN
;=============================================== (zel_data0) ============
		EXT	UNITDT,FLORDT,UDRTBL,DDRTBL,LDRTBL,RDRTBL
;
		EXT	BITCD0,BITCD1,TBITCD
		EXT	DRADRD,UPADR0,DNADR0,LFADR0,RTADR0,UPADR1,DNADR1,LFADR1,RTADR1
		EXT	OPDRCD
		EXT	FLRSAD
		EXT	MWLDT0,MWLDT1,WRWPPD0,WRWPPD1,WRWPPD2,djdordt,dkdordt
;---------------------------------------------------------------  unit data
		EXT	wtfldt,nukidt,cnulld,stopyk,watrd0,watrd1,iceykd,iceyd1
		EXT	beltyd,dngryd,colyk0,colyk1,rupyyk,crshy0,crshy1,crshy2
		EXT	eraykd,watrd2,sbkykd
;
		EXT	lfwld0,rtwld0,upwld0,dnwld0,lfwld8,rtwld8,upwld8,dnwld8
		EXT	ulfwld,urtwld,uupwld,udnwld
		EXT	ceildt,uarchd,darchd,larchd,rarchd
		EXT	luswd0,ldswd0,ruswd0,rdswd0,luswd1,ldswd1,ruswd1,rdswd1
		EXT	luswd2,ldswd2,ruswd2,rdswd2
		EXT	luswd8,ldswd8,ruswd8,rdswd8,luswd9,ldswd9,ruswd9,rdswd9
		EXT	luswdA,ldswdA,ruswdA,rdswdA
		EXT	sidndt,sidnmk,sdstpd,holedt,holed9,holed0
		EXT	fance0,fance1,fance4,fance5
		EXT	wakls0,wakls1,wakrs0,wakrs1,wakud0,wakud1,wakud2,wakud3
		EXT	wakud4,wakud5,wakud6,wakud7,wakud8,wakud9,lbrgdt,wbrgdt
		EXT	uscrbd,dscrbd,lscrbd,rscrbd,uscrd1,dscrd1,lscrd1,rscrd1
		EXT	ushdwd,dshdwd,lshdwd,rshdwd,crptdt,cedged		;;;;;;;;,lroadd,wroadd
		EXT	mwald0,mwald1,mwald2,mwald3,mwalc0,mwalc1
		EXT	crtnd0,crtnd1,crtnd2,crtnd3,crtnd8,crtnd9,crtndA,crtndB
		EXT	yoroid,pillrd,tldaid,uwndwd,dwndwd,lwndwd,rwndwd
		EXT	twcrdt,btbldt,spild0,spild1,spild2,spild3
		EXT	wwaku0,wwaku1,wwaku2,wwaku3,wwaku4,wwaku5,wwaku6,wwaku7,wwaku8,wwaku9
		EXT	btakid,stakid,bltwd0,bltwd1,stand0,stand1,chmnyd,ovend0,rackdt
		EXT	tlifdt,ylifdt,clifd0,clifd1,clifd2,clifd3
		EXT	tlifd0,tlifd1,tlifd2,tlifd3,clifdt,slifdt,slifdd,clifdd
		EXT	timtd0,timtd1,timtd2,timtd3
		EXT	cwndw0,cwndw1,cwndw2,cwndw3,cwndw4,cwndw5,cwndw6,cwndw7
		EXT	cstged,lfwldc,rtwldc,upwldc,dnwldc,tgblkd,dkan10,dkan11
		EXT	jytnd0,jytnd1,jytnd2,jytnd3,jytnd4,trmkdt
		EXT	ygkbd0,ygkbd1,ygkbd2,ygkbd3
;
		EXT	lucrd0,ldcrd0,rucrd0,rdcrd0,lupld0,ldpld0,rupld0,rdpld0
		EXT	lucrd8,ldcrd8,rucrd8,rdcrd8,lupld8,ldpld8,rupld8,rdpld8
		EXT	lucpl0,ldcpl0,rucpl0,rdcpl0,lucpl1,ldcpl1,rucpl1,rdcpl1
		EXT	monod0,monod1,mblokd,mblkd0,mblkd1,mblkd2,mblkd3,mblkd4
		EXT	onswhd,ofswhd,smldid,firedt,tarudt,opnykd
		EXT	tabled,beddat,kchird,qchird,bchird,schird
		EXT	danrod,kzripd,kzrisd,kzribd
		EXT	upstep,dnstep,kdnstp,udstep,udstp1,wrsstp,ustep1,dstep1
		EXT	cwlkzd,bblmpd,rouyad,roukyd,tkbox0,tkbox1,tkbox2,tkbox3
		EXT	tthld0,tthld1,tthld2,tthld3,tthld4,tthld5,tthld6,tthld7
		EXT	lucrdc,ldcrdc,rucrdc,rdcrdc,lupldc,ldpldc,rupldc,rdpldc
		EXT	slstp0,slstp1,slstp2,slstp3,slstp4,slstp5,slstp6,slstp7
		EXT	ttbod0,ttbod1,ttbog0,ttbog1,ttbog2,ttbog3
		EXT	wgated,tbrstp,ustepd,dstepd,cplisd,dvldid
		EXT	tapdt0,tapdt1,tapdt2,kntrdt0,kntrdt1,kntrdt2,kntrdt3
		EXT	ssidid,ssrmd0,ssrmd1,ssrmd2,ssrmd3,ssrmd4,ssrmd5
		EXT	wgatop0,wgatop1,wgatop2,wgatop3,haisui
		EXT	dkan00,dkan01,dkan02,dkan03,dkan20,dkan21,dkan22,dkan23
		EXT	dkan30,dkan31,dkan32,dkan33,dkan40,bosice,djwpyk
		EXT	rupydt,kbana0,kbana1,skband,entrd0,kuidt0,kuidt1
		EXT	kjtand,kjrodt,kjmizd,kjdaid
		EXT	onswh1,ofswh1,djwpy1,inriyk,cngyk0,cngyk1
		EXT	urnidt,polydd,stand2,stand3,stand4,stand5
		EXT	saradt,tmizud,booktd,konrod,musikd,botldt
		EXT	slmbsd,slmbs1,dmswhd,emyykd,emyblk,cngana
		EXT	udmbmb,ddmbmb,ldmbmb,rdmbmb
		EXT	monod2,hisui0,hisui1,hisui2,hisui3
		EXT	hkrid0,hkrid1,hkrid2,ykcnv0,ykcnv1,ykcnv2,ykcnv3,boskme,bsentr
		EXT	gnnkz0,gnnkz1,gnnkz2,iceat2,honeyk,numayk,ykmrk0,ykmrk1,ykmrk2
;========================================================================
		EXT	p1_scl1
;========================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;************************************************************************
;*		Make  ROOM  main			(MKROOM)	*
;************************************************************************
;
;======================================================== CHANGE data
DATA0		EQU	$
;			    00     01     02     03     04     05     06     07
		WORD	ceildt,upwld0,dnwld0,upwld8,dnwld8,uarchd,darchd,upwldc
;			    08     09     0A     0B     0C     0D     0E     0F
		WORD	dnwldc,luswd0,ldswd0,ruswd0,rdswd0,luswd1,ldswd1,ruswd1
;			    10     11     12     13     14     15     16     17
		WORD	rdswd1,luswd2,ldswd2,ruswd2,rdswd2,luswd8,ldswd8,ruswd8
;			    18     19     1A     1B     1C     1D     1E     1F
		WORD	rdswd8,luswd9,ldswd9,ruswd9,rdswd9,luswdA,ldswdA,ruswdA
;			    20     21     22     23     24     25     26     27
		WORD	rdswdA,sdstpd,fance1,wakls0,wakls1,wakrs0,wakrs1,wakud0
;			    28     29     2A     2B     2C     2D     2E     2F
		WORD	wakud1,wakud4,wakud5,wakud6,wakud7,wakud8,wakud9,uscrbd
;			    30     31     32     33     34     35     36     37
		word	dscrbd,ushdwd,dshdwd,crptdt,cedged,00000H,crtnd0,crtnd1
;			    38     39     3A     3B     3C     3D     3E     3F
		WORD	yoroid,pillrd,uwndwd,dwndwd,twcrdt,tldaid,spild0,wwaku0
;			    40     41     42     43     44     45     46     47
		WORD	wwaku1,wwaku4,wwaku5,wwaku6,wwaku7,wwaku8,wwaku9,btakid
;			    48     49     4A     4B     4C     4D     4E     4F
		WORD	stakid,bltwd0,bltwd1,spild1,stand0,chmnyd,ovend0,rackdt
;			    50     51     52     53     54     55     56     57
		WORD	ylifdt,tthld4,tthld5,dkan11,00000H,timtd0,timtd1,cwndw0
;			    58     59     5A     5B     5C     5D     5E     5F
		WORD	cwndw1,cwndw4,cwndw5,tthld0,tthld1,fance5,mblokd,fance1
;
;			    60     61     62     63     64     65     66     67
		WORD	ceildt,lfwld0,rtwld0,lfwld8,rtwld8,larchd,rarchd,lfwldc
;			    68     69     6A     6B     6C     6D     6E     6F
		WORD	rtwldc,fance0,wakud2,wakud3,lscrbd,rscrbd,lshdwd,rshdwd
;			    70     71     72     73     74     75     76     77
		WORD	crptdt,cedged,00000H,crtnd2,crtnd3,pillrd,lwndwd,rwndwd
;			    78     79     7A     7B     7C     7D     7E     7F
		WORD	spild2,wwaku2,wwaku3,spild3,tlifdt,dkan10,00000H,timtd2
;			    80     81     82     83     84     85     86     87
		WORD	timtd3,cwndw2,cwndw3,cwndw6,cwndw7,tthld2,tthld3,tldaid
;			    88     89     8A     8B     8C     8D     8E     8F
		WORD	fance4,mblokd,fance0,lscrd1,rscrd1,jytnd3,jytnd4,stand1
;			    90     91     92     93     94     95     96     97
		WORD	ygkbd2,ygkbd3,cngyk0,cngyk1,eraykd,mblkd2,kuidt0,00000H
;			    98     99     9A     9B     9C     9D     9E     9F
		WORD	00000H,00000H,00000H,00000H,00000H,00000H,00000H,00000H
;			    A0     A1     A2     A3     A4     A5     A6     A7
		WORD	ceildt,ceildt,ceildt,ceildt,holedt,holed0,holed0,holed0
;			    A8     A9     AA     AB     AC     AD     AE     AF
		WORD	holed0,nukidt,nukidt,nukidt,nukidt,watrd1,00000H,00000H
;			    B0     B1     B2     B3     B4     B5     B6     B7
		WORD	uscrd1,dscrd1,jytnd0,jytnd1,jytnd2,trmkdt,ygkbd0,ygkbd1
;			    B8     B9     BA     BB     BC     BD     BE     BF
		WORD	cngyk0,cngyk1,eraykd,dmswhd,mblkd2,kuidt0,00000H,00000H
;
;			    C0     C1     C2     C3     C4     C5     C6     C7
		WORD	ceildt,sidndt,holedt,holedt,00000H,wtfldt,nukidt,stopyk
;			    C8     C9     CA     CB     CC     CD     CE     CF
		WORD	watrd0,watrd1,beltyd,mwald0,mwald1,mwald2,mwald3,lbrgdt
;			    D0     D1     D2     D3     D4     D5     D6     D7
		WORD	wbrgdt,iceykd,iceyd1,mwald0,mwald1,mwald2,mwald3,nukidt
;			    D8     D9     DA     DB     DC     DD     DE     DF
		WORD	watrd1,cnulld,watrd1,00000H,cstged,btbldt,tgblkd,dngryd
;			    E0     E1     E2     E3     E4     E5     E6     E7
		WORD	colyk0,colyk1,rupyyk,ykcnv0,ykcnv1,ykcnv2,ykcnv3,watrd2
;			    E8     E9     EF     EB     EC     ED     EE     EF
		WORD	sbkykd,00000H,00000H,00000H,00000H,00000H,00000H,00000H
;			    F0     F1     F2     F3     F4     F5     F6     F7
		WORD	00000H,00000H,00000H,00000H,00000H,00000H,00000H,00000H
;			    F8     F9     FA     FB     FC     FD     FE     FF
		WORD	00000H,00000H,00000H,00000H,00000H,00000H,00000H,00000H
;
;
;
;
CNGUTBL		EQU	$		; change unit table
;----------------------------------------------------------- yoko
		WORD	CEILST1		; 00 : ceiling yoko
;
		WORD	UWALST0		; 01 : upper-wall up
		WORD	DWALST0		; 02 :            down
;
		WORD	UWALST8		; 03 : lower-wall up
		WORD	DWALST8		; 04 :            down
;
		WORD	UARCHST		; 05 : upper-arch up
		WORD	DARCHST		; 06 :            down
;
		WORD	UUWALST		; 07 : under-wall up
		WORD	UDWALST		; 08 :            down
;
		WORD	LUSWST0		; 09 : 45" wall left-up    (UP - 3F)
		WORD	LDSWST0		; 0A :               down
		WORD	RUSWST0		; 0B :          right-up
		WORD	RDSWST0		; 0C :                down
;
		WORD	LUSWST1		; 0D :          left-up    (UP - 2F)
		WORD	LDSWST1		; 0E :               down
		WORD	RUSWST1		; 0F :          right-up
		WORD	RDSWST1		; 10 :                down
;
		WORD	LUSWST2		; 11 :          left-up    (UP - 1F)
		WORD	LDSWST2		; 12 :          down
		WORD	RUSWST2		; 13 :          right-up
		WORD	RDSWST2		; 14 :          down
;
		WORD	LUSWST8		; 15 : 45" wall left-up   (DOWN - 3F)
		WORD	LDSWST8		; 16 :          down
		WORD	RUSWST8		; 17 :          right-up
		WORD	RDSWST8		; 18 :                down
;
		WORD	LUSWST9		; 19 : 45" wall left-up   (DOWN - 2F)
		WORD	LDSWST9		; 1A :               down
		WORD	RUSWST9		; 1B :          right-up
		WORD	RDSWST9		; 1C :                down
;
		WORD	LUSWSTA		; 1D : 45" wall left-up   (DOWN - 1F)
		WORD	LDSWSTA		; 1E :               down
		WORD	RUSWSTA		; 1F :          right-up
		WORD	RDSWSTA		; 20 :                down
;
		WORD	SDSTEP		; 21 : Saidan step
;
		WORD	WFNCST		; 22 : fance width
;
		WORD	LUWKST		; 23 : waku left-up
		WORD	LDWKST		; 24 :           down
		WORD	RUWKST		; 25 :      right-up
		WORD	RDWKST		; 26 :            down
;
		WORD	WAKUST0		; 27 : waku - 0
		WORD	WAKUST1		; 28 :      - 1
		WORD	WAKUST4		; 29 :      - 4
		WORD	WAKUST5		; 2A :      - 5
		WORD	WAKUST6		; 2B :      - 6
		WORD	WAKUST7		; 2C :      - 7
		WORD	WAKUST8		; 2D :      - 8
		WORD	WAKUST9		; 2E :      - 9
;
		WORD	USCRBST		; 2F : scramble up
		WORD	DSCRBST		; 30 :          down
;
		WORD	USHDWST		; 31 : shadow up
		WORD	DSHDWST		; 32 :        down
;
		WORD	WCRPTST		; 33 : cerpet width
;
		WORD	WCEDGST		; 34 : cerpet-edge width
;
		WORD	WRDSET		; 35 : road width
;
		WORD	CRTNST0		; 36 : certen up
		WORD	CRTNST0		; 37 :        down
;
		WORD	YRISET		; 38 : yoroi
;
		WORD	PILRST1		; 39 : pillar
;
		WORD	UWNDWST		; 3A : up   window
		WORD	DWNDWST		; 3B : down
;
		WORD	TWCIRST		; 3C : twin chair
;
		WORD	TLDAIS1		; 3D : tall dai
;
		WORD	SPILRS0		; 3E : small pillar (upper)
;
		WORD	WWAKST0		; 3F : water waku- 0
		WORD	WWAKST1		; 40 :           - 1
		WORD	WWAKST4		; 41 :           - 4
		WORD	WWAKST5		; 42 :           - 5
		WORD	WWAKST6		; 43 :           - 6
		WORD	WWAKST7		; 44 :           - 7
		WORD	WWAKST8		; 45 :           - 8
		WORD	WWAKST9		; 46 :           - 9
;
		WORD	BTAKIST		; 47 : big   taki
		WORD	STAKIST		; 48 : small
;
		WORD	BLTWKS0		; 49 : beltconver waku-0
		WORD	BLTWKS1		; 4A :                -1
;
		WORD	SPILRS1		; 4B : small pillar (lower)
;
		WORD	STAND0ST	; 4C : stand
		WORD	CHMNYST		; 4D : chimney
		WORD	OVENST0		; 4E : oven
		WORD	RACKST		; 4F : rack
;
		WORD	LFTYOKST	; 50 : lift yoko
;
		WORD	TTHLST4		; 51 : tetsuball hole up
		WORD	TTHLST5		; 52 :                down
;
		WORD	DKANST11	; 53 : dokan yoko
;
		WORD	NOTHING		; 54 : 
;
		WORD	TIMTST0		; 55 : taimatsu up
		WORD	TIMTST1		; 56 :          down
;
		WORD	CWNDST0		; 57 : chapel up-window up
		WORD	CWNDST1		; 58 :                  down
		WORD	CWNDST4		; 59 : chapel down-window up
		WORD	CWNDST5		; 5A :                    down
;
		WORD	TTHLST0		; 5B : tetsuball hole up
		WORD	TTHLST1		; 5C :                down
;
		WORD	BWFNCST		; 5D : bif width fance
;
		WORD	WNMVBLKST	; 5E : width non-move block
;
		WORD	LWFNCST		; 5F : long-width fance
;
;
;----------------------------------------------------------- tate
		WORD	CEILST0		; 60 : ceiling tate
;
		WORD	LWALST0		; 61 : upper-wall left
		WORD	RWALST0		; 62 :            right
;
		WORD	LWALST8		; 63 : lower-wall left
		WORD	RWALST8		; 64 :            right
;
		WORD	LARCHST		; 65 : upper-arch left
		WORD	RARCHST		; 66 :            right
;
		WORD	ULWALST		; 67 : under-wall left
		WORD	URWALST		; 68 :            right
;
		WORD	LFNCST		; 69 : fance length
;
		WORD	WAKUST2		; 6A : waku - 2
		WORD	WAKUST3		; 6B :      - 3
;
		WORD	LSCRBST		; 6C : scramble left
		WORD	RSCRBST		; 6D :          right
;
		WORD	LSHDWST		; 6E : shadow left
		WORD	RSHDWST		; 6F :        right
;
		WORD	LCRPTST		; 70 : carpet length
		WORD	LCEDGST		; 71 : carpet-edge length
;
		WORD	NOTHING		; 72 : 
;
		WORD	CRTNST1		; 73 : certen left
		WORD	CRTNST1		; 74 :        right
;
		WORD	PILRST0		; 75 : pillar
;
		WORD	LWNDWST		; 76 : left  window
		WORD	RWNDWST		; 77 : right
;
		WORD	SPILRS2		; 78 : small pillar (left)
;
		WORD	WWAKST2		; 79 : water waku - 2
		WORD	WWAKST3		; 7A :            - 3
;
		WORD	SPILRS3		; 7B : small pillar (right)
;
		WORD	LFTTATST	; 7C : lift tate
;
		WORD	DKANST10	; 7D : dokan tate
;
		WORD	NOTHING		; 7E : 
;
		WORD	TIMTST2		; 7F : taimatsu up
		WORD	TIMTST3		; 80 :          down
;
		WORD	CWNDST2		; 81 : chapel up-window up
		WORD	CWNDST3		; 82 :                  down
		WORD	CWNDST6		; 83 : chapel down-window up
		WORD	CWNDST7		; 84 :                    down
;
		WORD	TTHLST2		; 85 : tetsuball hole left
		WORD	TTHLST3		; 86 :                right
;
		WORD	TLDAIS0		; 87 : tall dai
;
		WORD	BLFNCST		; 88 : big fance length
;
		WORD	LNMVBLKST	; 89 : length non-move block
;
		WORD	LLFNCST		; 8A : long-length fance
;
		WORD	LSCRBS1		; 8B : tobiori fuchi left
		WORD	RSCRBS1		; 8C :               right
;
		WORD	JYTNST3		; 8D : jyutan fuchi left
		WORD	JYTNST4		; 8E :              right
;
		WORD	STAND1ST	; 8F : stand
;
		WORD	YGKBST2		; 90 : yogore-kage left
		WORD	YGKBST3		; 91 :             right
;
		WORD	CNGYKST2	; 92 : change-yuka (A)
		WORD	CNGYKST3	; 93 : change-yuka (B)
;
		WORD	ERAYKST1	; 94 : erase-yuka
;
		WORD	MTUBOST1	; 95 : mochiage-tubo
;
		WORD	HMKUIST1	; 96 : hummer-kui
;
		WORD	NOTHING		; 97 : 
		WORD	NOTHING		; 98 : 
		WORD	NOTHING		; 99 : 
		WORD	NOTHING		; 9A : 
		WORD	NOTHING		; 9B : 
		WORD	NOTHING		; 9C : 
		WORD	NOTHING		; 9D : 
		WORD	NOTHING		; 9E : 
		WORD	NOTHING		; 9F : 
;
;
;----------------------------------------------------------- kintou
		WORD	LUCEIL		; A0 : ceiling left-up
		WORD	LDCEIL		; A1 :              down
		WORD	RUCEIL		; A2 :         right-up
		WORD	RDCEIL		; A3 :               down
;
		WORD	HOLEST2		; A4 : hole 4x4 (waku)
		WORD	LUHOLE		; A5 :         left-up
		WORD	LDHOLE		; A6 :              down
		WORD	RUHOLE		; A7 :         right-up
		WORD	RDHOLE		; A8 :               down
;
		WORD	LUNUKI		; A9 : nuki left-up
		WORD	LDNUKI		; AA :           down
		WORD	RUNUKI		; AB :      right-up
		WORD	RDNUKI		; AC :            down
;
		WORD	NOTHING		; AD : 
		WORD	NOTHING		; AE : 
		WORD	NOTHING		; AF : 
;
;
;----------------------------------------------------------- yoko
		WORD	USCRBS1		; B0 : tobiori fuchi up
		WORD	DSCRBS1		; B1 :               down
;
		WORD	JYTNST0		; B2 : jyutan
		WORD	JYTNST1		; B3 :        fuchi up
		WORD	JYTNST2		; B4 :              down
;
		WORD	TRMAKST		; B5 : tare-maku
;
		WORD	YGKBST0		; B6 : yogore-kabe up
		WORD	YGKBST1		; B7 :             down
;
		WORD	CNGYKST4	; B8 : change-yuka (A)
		WORD	CNGYKST5	; B9 : change-yuka (B)
;
		WORD	ERAYKST0	; BA : erase-yuka
;
		WORD	DMYSWST		; BB : dammy-swich
;
		WORD	MTUBOST0	; BC : mochiage-tubo
;
		WORD	HMKUIST0	; BD : hummer-kui
;
		WORD	NOTHING		; BE : 
		WORD	NOTHING		; BF : 
;
;
;----------------------------------------------------------- ryouhou
		WORD	CEILST2		; C0 : ceiling
;
		WORD	SIDNST		; C1 : Saidan
;
		WORD	HOLEST0		; C2 : hole 4x4
		WORD	HOLEST1		; C3 :      3x3
;
		WORD	STYUKA		; C4 : 4x4 yuka (BG.2)
		WORD	WTRYUKA		; C5 :     water yuka
		WORD	NUKIST		; C6 :     nuki
		WORD	STPYUKA		; C7 :     stop yuka
		WORD	WATRST0		; C8 :     water - 0
		WORD	WATRST1		; C9 :           - 1
		WORD	BELTYST		; CA :     move yuka
;
		WORD	MVWLST0		; CB : move wall (up)   : erase
		WORD	MVWLST1		; CC :           (down)
		WORD	MVWLST2		; CD :           (left)
		WORD	MVWLST3		; CE :           (right)
;
		WORD	LBRGEST		; CF : brige length
		WORD	WBRGEST		; D0 :       wideth
;
		WORD	ICEYUKA		; D1 : ice yuka
		WORD	ICEYUK1		; D2 : ice yuka (little)
;
		WORD	MVWLST4		; D3 : move wall (up)   : write
		WORD	MVWLST5		; D4 :           (down)
		WORD	MVWLST6		; D5 :           (left)
		WORD	MVWLST7		; D6 :           (right)
;
		WORD	NUKIST1		; D7 : nuki 3x3
;
		WORD	WPWTRST		; D8 : down wipe-water set
;
		WORD	CNULLST		; D9 : cross null set
;
		WORD	WPWTRS1		; DA : up wipe-watre set
;
		WORD	STYUKA1		; DB : 4x4 yuka (BG.1)
;
		WORD	CSTGEST		; DC : chapel stage
;
		WORD	BGTBLST		; DD : big table
;
		WORD	TGBLKST		; DE : toge-block
;
		WORD	DNGRYST		; DF : danger yuka
;
		WORD	STYUKA2		; E0 : color yuka-0
		WORD	STYUKA3		; E1 :           -1
;
		WORD	RUPYYKST	; E2 : rupy yuka
;
		WORD	YKCNVST0	; E3 : yuka-conver up
		WORD	YKCNVST1	; E4 :             down
		WORD	YKCNVST2	; E5 :             left
		WORD	YKCNVST3	; E6 :             right
;
		WORD	WATRST2		; E7 : 4x4 water - 2
;
		WORD	SBKYKST		; E8 : sabaku-yuka
;
		WORD	NOTHING		; E9 : 
		WORD	NOTHING		; EA : 
		WORD	NOTHING		; EB : 
		WORD	NOTHING		; EC : 
		WORD	NOTHING		; ED : 
		WORD	NOTHING		; EE : 
		WORD	NOTHING		; EF : 
;
		WORD	NOTHING		; F0 : 
		WORD	NOTHING		; F1 : 
		WORD	NOTHING		; F2 : 
		WORD	NOTHING		; F3 : 
		WORD	NOTHING		; F4 : 
		WORD	NOTHING		; F5 : 
		WORD	NOTHING		; F6 : 
		WORD	NOTHING		; F7 : 
;// special FIX		WORD	NOTHING		; F8 : 
;// special FIX		WORD	NOTHING		; F9 : 
;// special FIX		WORD	NOTHING		; FA : 
;// special FIX		WORD	NOTHING		; FB : 
;// special FIX		WORD	NOTHING		; FC : 
;// special FIX		WORD	NOTHING		; FD : 
;// special FIX		WORD	NOTHING		; FE : 
;// special FIX		WORD	NOTHING		; FF : 
;
;
;
;
;************************************************************************
;======================================================== FIX data
DATA1		EQU	$
;			    00     01     02     03     04     05     06     07
		WORD	lucrd0,ldcrd0,rucrd0,rdcrd0,lupld0,ldpld0,rupld0,rdpld0
;			    08     09     0A     0B     0C     0D     0E     0F    
		WORD	lucrd8,ldcrd8,rucrd8,rdcrd8,lupld8,ldpld8,rupld8,rdpld8
;			    10     11     12     13     14     15     16     17
		WORD	lucpl0,ldcpl0,rucpl0,rdcpl0,lucpl1,ldcpl1,rucpl1,rdcpl1
;			    18     19     1A     1B     1C     1D     1E     1F    
		WORD	lucrdc,ldcrdc,rucrdc,rdcrdc,monod0,monod1,onswhd,ofswhd
;			    20     21     22     23     24     25     26     27
		WORD	firedt,tarudt,opnykd,tabled,kchird,qchird,bchird,schird
;			    28     29     2A     2B     2C     2D     2E     2F    
		WORD	beddat,danrod,kzripd,kzrisd,kzribd,upstep,dnstep,kdnstp
;			    30     31     32     33     34     35     36     37
		WORD	udstep,udstep,udstep,udstep,mblokd,wrsstp,tbrstp,wgated
;			    38     39     3A     3B     3C     3D     3E     3F    
		WORD	ustepd,dstepd,ustep1,dstep1,cwlkzd,bblmpd,cplisd,dvldid
;
;
;
FIXUTBL		EQU	$		; fix unit table
		WORD	LUCRST0		; 00 : left-up    coner
		WORD	LDCRST0		; 01 : left-down
		WORD	RUCRST0		; 02 : right-up
		WORD	RDCRST0		; 03 : right-down
;
		WORD	LUPLST0		; 04 : left-up   pillar
		WORD	LDPLST0		; 05 :      down
		WORD	RUPLST0		; 06 : right-up
		WORD	RDPLST0		; 07 :       down
;
		WORD	LUCRST8		; 08 : left-up    down coner
		WORD	LDCRST8		; 09 : left-down
		WORD	RUCRST8		; 0A : right-up
		WORD	RDCRST8		; 0B : right-down
;
		WORD	LUPLST8		; 0C : left-up   down pillar
		WORD	LDPLST8		; 0D :      down
		WORD	RUPLST8		; 0E : right-up
		WORD	RDPLST8		; 0F :       down
;
		WORD	LUCPLS0		; 10 : left-up   coner pillar (length)
		WORD	LDCPLS0		; 11 :      down
		WORD	RUCPLS0		; 12 : right-up
		WORD	RDCPLS0		; 13 :       down
;
		WORD	LUCPLS1		; 14 : left-up   coner pillar (width)
		WORD	LDCPLS1		; 15 :      down
		WORD	RUCPLS1		; 16 : right-up
		WORD	RDCPLS1		; 17 :       down
;
		WORD	ULUCRST		; 18 : left-up    under coner
		WORD	ULDCRST		; 19 : left-down
		WORD	URUCRST		; 1A : right-up
		WORD	URDCRST		; 1B : right-down
;
		WORD	MONOST0		; 1C : mono-0 (4x4 sekizou)
		WORD	MONOST1		; 1D :     -1 (2x3 sekizou)
		WORD	ONSWHST		; 1E : on  swich
		WORD	OFSWHST		; 1F : off
		WORD	SMLDIST		; 20 : fire dai
		WORD	TARUST		; 21 : taru
		WORD	OPNYKST		; 22 : open yuka
		WORD	TABLEST		; 23 : table
		WORD	KCHIRST		; 24 : chair king
		WORD	QCHIRST		; 25 :       queen
		WORD	BCHIRST		; 26 :       big
		WORD	SCHIRST		; 27 :       small
		WORD	BEDST		; 28 : bed
		WORD	DANROST		; 29 : danro
		WORD	KZRPCST		; 2A : kazari picture
		WORD	KZRSDST		; 2B :        sword
		WORD	KZRBDST		; 2C :        bed
;
		WORD	USTPST		; 2D : up-step
		WORD	DSTPST		; 2E : down-step
		WORD	KDSPST		; 2F : kakushi down-step
		WORD	UDSTPS0		; 30 : up,down-step (floor change)
		WORD	UDSTPS1		; 31 : up,down-step
		WORD	UDSTPS2		; 32 : normal step
		WORD	WTRSTP		; 33 : water step
;
		WORD	NMVBLKST	; 34 : not-move block
;
		WORD	WRSDSTP		; 35 : water side step
		WORD	TBRSTEP		; 36 : tobiori step
;
		WORD	WTRGATE		; 37 : water gate
;
		WORD	USTEPST		; 38 : rasen up-step
		WORD	DSTEPST		; 39 :       down-step
		WORD	USTEPS1		; 3A :       up-step   (down)
		WORD	DSTEPS1		; 3B :       down-step (down)
;
		WORD	CWLKZST		; 3C : chapel wall kazari
		WORD	BBLMPST		; 3D : baba lamp
;
		WORD	CPLISUST	; 3E : chapel chair
;
		WORD	DVLDIST		; 3F : devil-dai
;
;
;
;======================================================== special FIX data
DATA2		EQU	$
;			    00     01     02     03     04     05     06     07
		WORD	tapdt0,tapdt1,tapdt2,slifdt,clifdt,clifd0,clifd1,clifd2
;			    08     09     0A     0B     0C     0D     0E     0F
		WORD	clifd3,tlifd0,tlifd1,tlifd2,tlifd3,00000H,slifdd,clifdd
;			    10     11     12     13     14     15     16     17
		WORD	kbana0,kbana1,rupydt,skband,entrd0,bosice,kuidt0,rouyad
;			    18     19     1A     1B     1C     1D     1E     1F
		WORD	roukyd,tkbox0,tkbox1,udstp1,udstp1,udstp1,slstp0,slstp1
;			    20     21     22     23     24     25     26     27
		WORD	slstp2,slstp3,lupldc,ldpldc,rupldc,rdpldc,slstp4,slstp5
;			    28     29     2A     2B     2C     2D     2E     2F
		WORD	slstp6,slstp7,00000H,mblkd0,mblkd1,00000H,00000H,mblkd2
;			    30     31     32     33     34     35     36     37
		WORD	mblkd3,tkbox2,tkbox3,udstp1,ttbod0,ttbod1,ttbog0,ttbog1
;			    38     39     3A     3B     3C     3D     3E     3F
		WORD	ttbog2,ttbog3,dkan00,dkan01,dkan02,dkan03,dkan20,dkan21
;			    40     41     42     43     44     45     46     47
		WORD	dkan22,dkan23,dkan30,dkan31,dkan32,dkan33,dkan40,crshy0
;			    48     49     4A     4B     4C     4D     4E     4F
		WORD	crshy1,crshy2,djwpyk,kjtand,kjrodt,kjmizd,kjdaid,djwpy1
;			    50     51     52     53     54     55     56     57
		WORD	ofswh1,inriyk,cngyk0,cngyk1,urnidt,polydd,stand2,stand3
;			    58     59     5A     5B     5C     5D     5E     5F
		WORD	stand4,stand5,saradt,tmizud,booktd,konrod,musikd,botldt
;			    60     61     62     63     64     65     66     67
		WORD	tthld6,tthld7,slmbsd,dmswhd,emyykd,emyblk,cngana,udmbmb
;			    68     69     6A     6B     6C     6D     6E     6F
		WORD	ddmbmb,ldmbmb,rdmbmb,monod2,hisui0,hisui1,hisui2,hisui3
;			    70     71     72     73     74     75     76     77
		WORD	hkrid0,hkrid2,boskme,00000H,bsentr,tkbox0,gnnkz0,gnnkz1
;			    78     79     7A     7B     7C     7D     7E     7F
		WORD	gnnkz2,iceat2,honeyk,numayk,ykmrk0,ykmrk1,ykmrk2,00000H
;
;
FIXUTB2		EQU	$		; fix unit table
		WORD	TAPSET0		; 00 : tap - 0
		WORD	TAPSET1		; 01 :     - 1 (small water)
		WORD	TAPSET2		; 02 :     - 2 (long  water)
;
		WORD	LFTSTPST	; 03 : lift stoper
		WORD	LFTCRSST	; 04 :      +cross
		WORD	LFTCR0ST	; 05 :      coner left-up
		WORD	LFTCR1ST	; 06 :                -down
		WORD	LFTCR2ST	; 07 :            right-up
		WORD	LFTCR3ST	; 08 :                 -down
		WORD	LFTTT0ST	; 09 :      T up
		WORD	LFTTT1ST	; 0A :        down
		WORD	LFTTT2ST	; 0B :        left
		WORD	LFTTT3ST	; 0C :        right
;
		WORD	POLYGST		; 0D : poly-gon
;
		WORD	LFTSTPS1	; 0E : lift ichigi-stop
		WORD	LFTCRSS1	; 0F :      cross
;
		WORD	KBANAST0	; 10 : kabe-ana up
		WORD	KBANAST1	; 11 :          down
;
		WORD	RUPYST		; 12 : rupy
;
		WORD	SKBANST		; 13 : seki-ban
;
		WORD	ENTRST0		; 14 : dammy enter 
;
		WORD	BOSSICE		; 15 : boss ice
;
		WORD	HMKUIST		; 16 : kui
;
		WORD	ROUYAST		; 17 : rou-ya
		WORD	ROUKYST		; 18 :         key
;
		WORD	TKBOXST0	; 19 : takara-box 0 (close)
		WORD	TKBOXST1	; 1A :            1 (open)
;
		WORD	UDSTPS8		; 1B : up,down-step (floor change)
		WORD	UDSTPS9		; 1C : up,down-step
		WORD	UDSTPSA		; 1D : normal step
;
		WORD	SUSTPS0		; 1E : scroll-step(up:ue)
		WORD	SDSTPS0		; 1F :            (up:ue)
		WORD	SUSTPS1		; 20 :            (up:sita)
		WORD	SDSTPS1		; 21 :            (up:sita)
;
		WORD	ULUPLST		; 22 : left-up    under piller
		WORD	ULDPLST		; 23 : left-down
		WORD	URUPLST		; 24 : right-up
		WORD	URDPLST		; 25 : right-down
;
		WORD	SUSTPS2		; 26 : scroll-step(down:ue)
		WORD	SDSTPS2		; 27 :            (down:ue)
		WORD	SUSTPS3		; 28 :            (down:sita)
		WORD	SDSTPS3		; 29 :            (down:sita)
;
		WORD	KNTERAST	; 2A : kantera
;
		WORD	MCBLKS0		; 2B : mochiage block-0
		WORD	MCBLKS1		; 2C :               -1 (BIG)
;
		WORD	SSDAIST		; 2D : shisai-dai
		WORD	SSRMST		; 2E : shisai-room
;
		WORD	MCBLKS2		; 2F : mochiage block-2 (tubo)
;
		WORD	MCBLKS3		; 30 : mochiage block-3
		WORD	TKBOXST2	; 31 : specoal-tkara-box (close)
		WORD	TKBOXST3	; 32 :                   (open)
;
		WORD	WTRSTP1		; 33 : water step
;
		WORD	TTBOST0		; 34 : tetsu-bou (tate)
		WORD	TTBOST1		; 35 :           (yoko)
		WORD	TTBGTS0		; 36 : tetsu-bou gate (up)
		WORD	TTBGTS1		; 37 :                (down)
		WORD	TTBGTS2		; 38 :                (left)
		WORD	TTBGTS3		; 39 :                (right)
;
		WORD	DKANST00	; 3A : dokan enter up
		WORD	DKANST01	; 3B :             down
		WORD	DKANST02	; 3C :             left
		WORD	DKANST03	; 3D :             right
		WORD	DKANST20	; 3E :       coner left-up
		WORD	DKANST21	; 3F :             left-down
		WORD	DKANST22	; 40 :             right-up
		WORD	DKANST23	; 41 :             right-down
		WORD	DKANST30	; 42 :       tsunagi up
		WORD	DKANST31	; 43 :               down
		WORD	DKANST32	; 44 :               left
		WORD	DKANST33	; 45 :               right
		WORD	DKANST40	; 46 :       kousa
;
		WORD	CRSHYKS0	; 47 : crush yuka
		WORD	CRSHYKS1	; 48 : hibi-yuka (BIG)
		WORD	CRSHYKS2	; 49 :           (SMALL)
;
		WORD	DJWPYKST	; 4A : danjyon warp yuka (enter)
;
		WORD	KJTANAST	; 4B : kajiya tana
		WORD	KJROST		; 4C :        ro
		WORD	KJMIZUST	; 4D :        mizu
		WORD	KJDAIST		; 4E :        dai
;
		WORD	DJWPYKS1	; 4F : danjyon warp yuka (exit)
;
		WORD	OFSWHS1		; 50 : off swich
		WORD	INRIYKST	; 51 : inori-yuka
		WORD	CNGYKST0	; 52 : change-yuka0 (A)
		WORD	CNGYKST1	; 53 :            1 (B)
;
		WORD	URNIST		; 54 : uranai yakata
		WORD	POLYDIST	; 55 : polygon dai
;
		WORD	STAND2ST	; 56 : stand coner left-up
		WORD	STAND3ST	; 57 :                  down
		WORD	STAND4ST	; 58 :             right-up
		WORD	STAND5ST	; 59 :                   down
;
		WORD	SARAST		; 5A : sara
		WORD	TMIZUST		; 5B : tate-mizu
		WORD	BOOKTST		; 5C : book-tana
		WORD	KONROST		; 5D : konro
		WORD	MUSIKST		; 5E : musi-kago
		WORD	BOTLST		; 5F : bottle
;
		WORD	TTHLST6		; 60 : matoate-gate (left)
		WORD	TTHLST7		; 61 :              (right)
;
		WORD	SLMBSBST	; 62 : slime-boss BG.
;
		WORD	DMYSWHST	; 63 : dammy swich
;
		WORD	EMYYKST		; 64 : enemy yuka
		WORD	EMYBLKST	; 65 :       block
;
		WORD	CNGANAST	; 66 : change-ana
;
		WORD	DMBMBST0	; 67 : dammy bomb-door up
		WORD	DMBMBST1	; 68 :                 down
		WORD	DMBMBST2	; 69 :                 left
		WORD	DMBMBST3	; 6A :                 right
;
		WORD	MONOST2		; 6B : 4x4 syougai-butsu
;
		WORD	HISUIST0	; 6C : haisui-kou up
		WORD	HISUIST1	; 6D :            down
		WORD	HISUIST2	; 6E :            left
		WORD	HISUIST3	; 6F :            right
;
		WORD	HKRIST0		; 70 : room hikari
		WORD	HKRIST1		; 71 : boss-room hikari
;
		WORD	BOSKMEST	; 72 : kame-iwa boss set
;
		WORD	BG1CLEAR	; 73 : BG.1 clear
;
		WORD	BSENTRST	; 74 : boss-room enter
;
		WORD	TKBOXST9	; 75 : atamon-takara-box 0 (close)
;
		WORD	GNNKZST0	; 76 : ganon-room kazari - 0
		WORD	GNNKZST1	; 77 :                     1
		WORD	GNNKZST2	; 78 :                     2
;
		WORD	ICEATST2	; 79 : ice-man ato
;
		WORD	HONEYKST	; 7A : hone-yuka
;
		WORD	NUMAYKST	; 7B ; numa-yuka
;
		WORD	MRKYKST0	; 7C : mark-yuka (up)
		WORD	MRKYKST1	; 7D :           (down)
		WORD	MRKYKST2	; 7E :           (left)
;
		WORD	NOTHING		; 7F : 
;
;
;
DOORTBL		EQU	$
		WORD	UDOORST		; 00 : up    door
		WORD	DDOORST		; 01 : down
		WORD	LDOORST		; 02 : left
		WORD	RDOORST		; 03 : right
;
;
;
BFADTBL0	EQU	$
		BYTE	LOW ROOMBF+000H,HIGH ROOMBF+000H,BANK ROOMBF+000H
		BYTE	LOW ROOMBF+002H,HIGH ROOMBF+002H,BANK ROOMBF+002H
		BYTE	LOW ROOMBF+004H,HIGH ROOMBF+004H,BANK ROOMBF+004H
		BYTE	LOW ROOMBF+006H,HIGH ROOMBF+006H,BANK ROOMBF+006H
		BYTE	LOW ROOMBF+080H,HIGH ROOMBF+080H,BANK ROOMBF+080H
		BYTE	LOW ROOMBF+082H,HIGH ROOMBF+082H,BANK ROOMBF+082H
		BYTE	LOW ROOMBF+084H,HIGH ROOMBF+084H,BANK ROOMBF+084H
		BYTE	LOW ROOMBF+086H,HIGH ROOMBF+086H,BANK ROOMBF+086H
		BYTE	LOW ROOMBF+100H,HIGH ROOMBF+100H,BANK ROOMBF+100H
		BYTE	LOW ROOMBF+180H,HIGH ROOMBF+180H,BANK ROOMBF+180H
		BYTE	LOW ROOMBF+200H,HIGH ROOMBF+200H,BANK ROOMBF+200H
BFAD0EN		EQU	$
;
;
BFADTBL1	EQU	$
		BYTE	LOW BG1RBF+000H,HIGH BG1RBF+000H,BANK BG1RBF+000H
		BYTE	LOW BG1RBF+002H,HIGH BG1RBF+002H,BANK BG1RBF+002H
		BYTE	LOW BG1RBF+004H,HIGH BG1RBF+004H,BANK BG1RBF+004H
		BYTE	LOW BG1RBF+006H,HIGH BG1RBF+006H,BANK BG1RBF+006H
		BYTE	LOW BG1RBF+080H,HIGH BG1RBF+080H,BANK BG1RBF+080H
		BYTE	LOW BG1RBF+082H,HIGH BG1RBF+082H,BANK BG1RBF+082H
		BYTE	LOW BG1RBF+084H,HIGH BG1RBF+084H,BANK BG1RBF+084H
		BYTE	LOW BG1RBF+086H,HIGH BG1RBF+086H,BANK BG1RBF+086H
		BYTE	LOW BG1RBF+100H,HIGH BG1RBF+100H,BANK BG1RBF+100H
		BYTE	LOW BG1RBF+180H,HIGH BG1RBF+180H,BANK BG1RBF+180H
		BYTE	LOW BG1RBF+200H,HIGH BG1RBF+200H,BANK BG1RBF+200H
BFAD1EN		EQU	$
;
;
;
MKROOM		EQU	$
		JSR	HINFDST		; house information data set
;///////		JSR	IDROPCK		; initial door open check
;
		STZ	!SRMNFG
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	!RMDTPT
		LDA	>DJNDT+1,X
		STA	<DTBFWK+1	; room data address (B)
		LDA	>DJNDT,X
		STA	<DTBFWK		; room data address (H,L) set
;
;// 03.03.07 //		LDX	!DJNNO
;// 03.03.07 //		LDA	>DJDTBL,X
;// 03.03.07 //		AND	#0000000000000010B
;// 03.03.07 //		BEQ	MKRM10		; rewite room ?
;// 03.03.07 //;					; yes
;// 03.03.07 //		MEM8
;// 03.03.07 //		SEP	#00100000B	; memory 8bit mode
;// 03.03.07 //;
;// 03.03.07 //		LDA	!GSUBFG
;// 03.03.07 //		CMP	#006H
;// 03.03.07 //		BCC	MKRM05		; change ?
;// 03.03.07 //;					; yes
;// 03.03.07 //;;;;;;;;		LDA	!GSUBFG
;// 03.03.07 //		EOR	#001H
;// 03.03.07 //		STA	!GSUBFG
;// 03.03.07 //MKRM05		EQU	$
;// 03.03.07 //		MEM16
;// 03.03.07 //		REP	#00100000B	; memory 16bit mode
;// 03.03.07 //;
;// 03.03.07 //		LDX	!RMDTPT
;// 03.03.07 //		LDA	>RDJNDT,X
;// 03.03.07 //		STA	<DTBFWK		; room data address (H,L) set
;// 03.03.07 //MKRM10		EQU	$
		LDA	<BGMVFG
		STA	!B1MFLG		; BG.1 move flag set
;
		LDA	#0FF30H
		STA	!BG1MBF
		STZ	!BG1MFG
		STZ	!BG1YCT
		STZ	!BG1HMC
		STZ	!BG1VMC
		STZ	!BGMVC0
		STZ	!BGMVC1		; BG.1 move ram clear
		LDA	#0FFFFH
;*** /03.07.30/ ***		STA	!SWDRFG		; swich door flag off
		STA	!ERDRFG		; erase door flag off
;// 02.10.09 //		STA	!BLKSTT
;// 02.10.09 //		STA	!BLKSTT+2	; block off
		STZ	!CWLXYF		; crush wall x,y on/off flag
		STZ	!CWLFLG
		STZ	!CWLPNT
		STZ	!OYKADR		; open yuka off
		STZ	!MDCCKPT	; mode change check point off
		STZ	!DJCCKPT	; danjyon change check point off
;
		STZ	<RSXYCKF	; reset x,y check flag off
		STZ	!WBFPNT
		STZ	!USCKPT		; Up-STEP
		STZ	!DSCKPT		; Dn-STEP
		STZ	!UDSCKP0	; UD-STEP (floor change)
		STZ	!UDSCKP1	; UD-STEP (same floor)
		STZ	!UDSCKP2	; UD-STEP (normal)
		STZ	!UDSCKP3	; UD-STEP (water)
		STZ	!UDSCKP4	; water-side STEP (water)
		STZ	!UDSCKP5	; tobiori-STEP
		STZ	!UDSCKP6	; water-side STEP (kirikae)
		STZ	!UDSCKP8	; UD-STEP (floor change)
		STZ	!UDSCKP9	; UD-STEP (same floor)
		STZ	!UDSCKPA	; UD-STEP (normal)
		STZ	!UDSCKPB	; UD-STEP (water)
		STZ	!UPCKPT		; up-step
		STZ	!DNCKPT		; down-step
		STZ	!UPCKP1		; up-step   (down)
		STZ	!DNCKP1		; down-step (down)
		STZ	!SUPCP0
		STZ	!SUPCP1
		STZ	!SDNCP0
		STZ	!SDNCP1		; scroll-step
		STZ	!EXTADR0
		STZ	!EXTADR1
		STZ	!EXTADR2
		STZ	!EXTADR3
		STZ	!EXTPNT		; exit door
;// 03.03.15 //		STZ	!FLCKFG
		STZ	!TPCKFG
		STZ	!TPCKPT		; TRAP check flag off
		STZ	!BLKPNT
		STZ	!LMPPNT		; lamp pointer off
		STZ	!TBXCPT		; takara-bpx pointer off
		STZ	!RKYCPT		; rouya-key pointer off
		STZ	!WRDADR		; width road off
;
		LDX	#0001EH
		STZ	!DORPNT
MKRM20		EQU	$
		STZ	!DORADR,X
		STZ	!DRSTAT,X
		STZ	!DORFLG,X	; door position off
;
		STZ	!LMPTMR,X
		STZ	!BLKSTT,X
		STZ	!BLKDPT,X
		STZ	!BLKADR,X	; block,lamp ram claer
		DEX
		DEX
		BPL	MKRM20		; end ?
;					; yes
;
;--------------------------------------- Floor data set
		STZ	<DTRDPT
		JSR	FLRSET		; floor set
;
;
;--------------------------------------- Basic data set
		LDY	<DTRDPT
		PHY			; (Y) push
		LDA	[<DTBFWK],Y
		AND	#000FFH
		STA	!ROOMNO		; basic room no. set
		LSR	A
		LSR	A
		STA	<WORK0
		ASL	A
		CLC
		ADC	<WORK0
		TAX
		LDA	>BASICDT+1,X
		STA	<DTBFWK+1	;                         (B)
		LDA	>BASICDT,X
		STA	<DTBFWK		; BASIC-room data address (H,L) set
;
		STZ	<DTRDPT
		JSR	BG2MAKE		; room basic unit set
;
		PLY			; (Y) pull
		INY
		STY	<DTRDPT
;
;
;--------------------------------------- BG.2 data set
		LDX	!RMDTPT
		LDA	>DJNDT+1,X
		STA	<DTBFWK+1	; room data address (B)
		LDA	>DJNDT,X
		STA	<DTBFWK		; room data address (H,L) set
;
;// 03.03.07 //		LDX	!DJNNO
;// 03.03.07 //		LDA	>DJDTBL,X
;// 03.03.07 //		AND	#0000000000000010B
;// 03.03.07 //		BEQ	MKRM60		; rewite room ?
;// 03.03.07 //;					; yes
;// 03.03.07 //		LDX	!RMDTPT
;// 03.03.07 //		LDA	>RDJNDT,X
;// 03.03.07 //		STA	<DTBFWK		; room data address (H,L) set
;// 03.03.07 //MKRM60		EQU	$
		JSR	BG2MAKE		; BG.2 house making
		INC	<DTRDPT
		INC	<DTRDPT
;
;
;--------------------------------------- BG.1 data set
		LDX	#BFAD1EN-BFADTBL1-3
MKRM100		EQU	$
		LDA	>BFADTBL1+01,X
		STA	<BFP000+01,X
		DEX
		DEX
		DEX
		BPL	MKRM100		; set end ?
;					; yes
		JSR	BG1MAKE		; BG.1 house makeing
;
		INC	<DTRDPT
		INC	<DTRDPT
;
;
;--------------------------------------- BG.2 data set
		LDX	#BFAD0EN-BFADTBL0-3
MKRM160		EQU	$
		LDA	>BFADTBL0+01,X
		STA	<BFP000+01,X
		DEX
		DEX
		DEX
		BPL	MKRM160		; set end ?
;					; yes
		JSR	BG2MAKE		; door set
;
;
;// 03.02.25 //;--------------------------------------- Block data set
;// 03.02.25 //		STZ	<DTRDPT
;// 03.02.25 //MKRM200		EQU	$
;// 03.02.25 //		LDX	<DTRDPT
;// 03.02.25 //;
;// 03.02.25 //MKRM210		EQU	$
;// 03.02.25 //		LDA	>BLKTBUF,X
;// 03.02.25 //		CMP	<RMXYCT
;// 03.02.25 //		BEQ	MKRM240		; room ok ?
;// 03.02.25 //;					; yes
;// 03.02.25 //		INX
;// 03.02.25 //		INX
;// 03.02.25 //MKRM220		EQU	$
;// 03.02.25 //		LDA	>BLKTBUF,X
;// 03.02.25 //		INX
;// 03.02.25 //		INX
;// 03.02.25 //		STX	<DTRDPT
;// 03.02.25 //		CMP	#0FFFFH
;// 03.02.25 //		BNE	MKRM220		; 1-room data end ?
;// 03.02.25 //;					; yes
;// 03.02.25 //		CPX	#DJNBEN
;// 03.02.25 //		BNE	MKRM200		; data end ?
;// 03.02.25 //;					; yes
;// 03.02.25 //		BRA	MKRM300
;// 03.02.25 //;
;// 03.02.25 //MKRM240		EQU	$
;// 03.02.25 //		INX
;// 03.02.25 //		INX
;// 03.02.25 //MKRM260		EQU	$
;// 03.02.25 //		LDA	>BLKTBUF,X
;// 03.02.25 //		STA	<WORK8		; (WORK8),(WORK9) <-- set address
;// 03.02.25 //		TAY
;// 03.02.25 //		INX
;// 03.02.25 //		INX
;// 03.02.25 //		STX	<DTRDPT
;// 03.02.25 //		JSR	MBLOKST		; block set
;// 03.02.25 //;
;// 03.02.25 //		LDX	<DTRDPT
;// 03.02.25 //		LDA	>BLKTBUF,X
;// 03.02.25 //		CMP	#0FFFFH
;// 03.02.25 //		BNE	MKRM260		; data end ?
;// 03.02.25 //;					; yes
;// 03.02.25 //		INX
;// 03.02.25 //		INX
;// 03.02.25 //		STX	<DTRDPT
;// 03.02.25 //		CPX	#DJNBEN
;// 03.02.25 //		BNE	MKRM210		; data end ?
;// 03.02.25 //;					; yes
;
;--------------------------------------- Block data set
		STZ	<DTRDPT
MKRM200		EQU	$
		LDX	<DTRDPT
;
		LDA	>BLKTBUF,X
		CMP	<RMXYCT
		BNE	MKRM240		; room ok ?
;					; yes
		LDA	>BLKTBUF+2,X
		STA	<WORK8		; (WORK8),(WORK9) <-- set address
		TAY
		JSR	MBLOKST		; block set
MKRM240		EQU	$
		LDA	<DTRDPT
		CLC
		ADC	#00004H
		STA	<DTRDPT
		CMP	#DJNBEN
		BNE	MKRM200		; data end ?
;					; yes
;
;
;--------------------------------------- lamp set
MKRM300		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	!BLKPNT
		STA	!LMPPNT
		STA	!LMPDGP
		STZ	<DTRDPT
MKRM310		EQU	$
		LDX	<DTRDPT
		LDA	>LMPTBUF,X
		CMP	<RMXYCT
		BEQ	MKRM340		; room ok ?
;					; no
		INX
		INX
MKRM320		EQU	$
		LDA	>LMPTBUF,X
		INX
		INX
		STX	<DTRDPT
		CMP	#0FFFFH
		BNE	MKRM320		; 1-room data end ?
;					; yes
		CPX	#DJNLEN
		BNE	MKRM310		; data end ?
;					; yes
		BRA	MKRM380
;
MKRM340		EQU	$
		INX
		INX
MKRM350		EQU	$
		LDA	>LMPTBUF,X
		STA	<WORK8		; (WORK8),(WORK9) <-- set address
		INX
		INX
		STX	<DTRDPT
		JSR	LAMPST		; small dai
;
		LDX	<DTRDPT
		LDA	>LMPTBUF,X
		CMP	#0FFFFH
		BNE	MKRM350		; data end ?
;					; yes
MKRM380		EQU	$
MKRM999		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		BG.1 House making			(BG1MAKE)	*
;*		BG.2					(BG2MAKE)	*
;************************************************************************
BG1MAKE		EQU	$
BG2MAKE		EQU	$
B2MK040		EQU	$
		STZ	<XSTCNT
		STZ	<YSTCNT
;
		LDY	<DTRDPT		; (Y) <-- data read pointer
		LDA	[<DTBFWK],Y
		CMP	#0FFFFH
		BEQ	B2MK999		; data end ?
;					; no
		STA	<WORK0
		CMP	#0FFF0H
		BEQ	B2MK100		; door data ?
;					; no
		JSR	B2MK200
;
		BRA	B2MK040
;
B2MK999		EQU	$
		RTS
;
;
;======================================= Door data set
B2MK100		EQU	$
		INC	<DTRDPT
		INC	<DTRDPT
B2MK120		EQU	$
		LDY	<DTRDPT		; (Y) <-- data read pointer
		LDA	[<DTBFWK],Y
		CMP	#0FFFFH
		BEQ	B2MK999		; data end ?
;					; no
		STA	<WORK0
		JSR	B2MK140
		INC	<DTRDPT
		INC	<DTRDPT
		BRA	B2MK120
;
B2MK140		EQU	$
		AND	#0000000011110000B
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2		; (work2) <-- address pointer
		LDA	<WORK0
		XBA
		AND	#000FFH
		STA	<WORKA
		STA	<WORK4		; (work4),(WORKA)  <-- door status
;
		LDA	<WORK0
		AND	#0000000000000011B
		ASL	A
		TAX
		LDA	>DOORTBL,X
		STA	<WORKE		; change unit address (H,L) set
;
		LDX	<WORK2
		LDA	<WORK4
		JMP	(!WORKE)
;
;
;
B2MK200		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		AND	#11111100B
		CMP	#11111100B
		BEQ	B2MK400		; fix unit ?
;					; no
;
;
;======================================= Change data set
		STA	<WORK8
;
		LDA	<WORK0
		AND	#00000011B
		STA	<XSTCNT		; x-set counter
		LDA	<WORK1
		AND	#00000011B
		STA	<YSTCNT		; y-set counter
		INY
		INY
		LDA	[<DTBFWK],Y
		STA	<WORK4
		INY
		STY	<DTRDPT
		LDA	<WORK1
		LSR	A
		LSR	A
		LSR	A
		ROR	<WORK8
		STA	<WORK9		; (WORK8),(WORK9) <-- set address
;
		STZ	<WORK3
		STZ	<WORK5
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<WORK4
		ASL	A
		CMP	#000F8H*2
		BCS	B2MK500		; special FIX data ?
;					; no
		TAX
		LDA	>CNGUTBL,X
		STA	<WORKE		; change unit address (H,L) set
;
		LDA	>DATA0,X
		TAX			; (X) <-- unit data point
		LDY	<WORK8		; (Y) <-- set address
		JMP	(!WORKE)
;
;
;
;======================================= Fix data set
B2MK400		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<WORK0
		XBA
		AND	#0000001111110000B
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK8
		INY
		LDA	[<DTBFWK],Y
		XBA
		AND	#0000111111000000B
		ASL	A
		ORA	<WORK8
		STA	<WORK8		; (WORK8),(WORK9) <-- set address
;
		LDA	[<DTBFWK],Y
		XBA
		AND	#0000000000111111B
		INY
		INY
		STY	<DTRDPT
;
		ASL	A
		TAX
		LDA	>FIXUTBL,X
		STA	<WORKE		; fix unit address (H,L) set
;
		LDA	>DATA1,X
		TAX			; (X) <-- unit data point
		LDY	<WORK8		; (Y) <-- set address
		JMP	(!WORKE)
;
;
;======================================= special Fix data set
B2MK500		EQU	$
		AND	#0000000000001110B
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK4
		LDA	<YSTCNT
		ASL	A
		ASL	A
		ORA	<XSTCNT
		TSB	<WORK4
		LDA	<WORK4
		ASL	A
		TAX
;
		LDA	>FIXUTB2,X
		STA	<WORKE		; fix unit address (H,L) set
;
		LDA	>DATA2,X
		TAX			; (X) <-- unit data point
		LDY	<WORK8		; (Y) <-- set address
		JMP	(!WORKE)
;
;
;
;************************************************************************
;*		Floor set				(FLRSET)	*
;************************************************************************
FLRSET		EQU	$
;--------------------------------------- BG.1 floor set
		LDX	#BFAD1EN-BFADTBL1-3
FLRS20		EQU	$
		LDA	>BFADTBL1+00,X
		STA	<BFP000+00,X	; (L) set
		LDA	>BFADTBL1+01,X
		STA	<BFP000+01,X	; (H),(B) set
		DEX
		DEX
		DEX
		BPL	FLRS20		; set end ?
;					; yes
		LDY	<DTRDPT
		INC	<DTRDPT
		STZ	<WORKC
;
		LDA	[<DTBFWK],Y
		PHA			; (A) push
		AND	#000F0H
;// 03.06.20 //		ASL	A
		STA	!B1FLNO
		TAX
		JSR	FLRS100		; BG.1 floor init. set
;
;
;--------------------------------------- BG.2 data set
		LDX	#BFAD0EN-BFADTBL0-3
FLRS40		EQU	$
		LDA	>BFADTBL0+01,X
		STA	<BFP000+01,X	; (H),(B) set
		DEX
		DEX
		DEX
		BPL	FLRS40		; set end ?
;					; yes
		STZ	<WORKC
;
		PLA			; (A) pull
		AND	#0000FH
		ASL	A
		ASL	A
		ASL	A
		ASL	A
;// 03.06.20 //		ASL	A
		STA	!B2FLNO		; BG.2 floor no.
		TAX
FLRS100		EQU	$
		LDY	<WORKC
		LDA	FLRSAD,Y
		TAY			; (Y) <-- set address
		LDA	#00008H
		STA	<WORKE
FLRS140		EQU	$
		LDA	#00008H
		JSR	FLST200		; floor set
		ADC	#001C0H
		TAY
		DEC	<WORKE
		BNE	FLRS140		; floor init. set end ?
;					; yes
		INC	<WORKC
		INC	<WORKC
		LDA	<WORKC
		CMP	#00008H
		BNE	FLRS100		; floor set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Floor set sub.				(FLST200)	*
;************************************************************************
FLST200		EQU	$
		STA	<WORKA
FLST240		EQU	$
		LDA	#00002H
		STA	<WORK4
FLST280		EQU	$
		LDA	FLORDT+000H,X
		STA	[<BFP000],Y
		LDA	FLORDT+002H,X
		STA	[<BFP002],Y
		LDA	FLORDT+004H,X
		STA	[<BFP004],Y
		LDA	FLORDT+006H,X
		STA	[<BFP006],Y
;
		LDA	FLORDT+008H,X
		STA	[<BFP080],Y
		LDA	FLORDT+00AH,X
		STA	[<BFP082],Y
		LDA	FLORDT+00CH,X
		STA	[<BFP084],Y
		LDA	FLORDT+00EH,X
		STA	[<BFP086],Y
		TYA
		CLC
		ADC	#00100H
		TAY			; (y) <-- (y) + #00100H
;// 03.06.20 //		TXA
;// 03.06.20 //		CLC
;// 03.06.20 //		ADC	#00010H
;// 03.06.20 //		TAX
		DEC	<WORK4
		BNE	FLST280		; 1 unit end ?
;					; yes
;// 03.06.20 //		TXA
;// 03.06.20 //		SEC
;// 03.06.20 //		SBC	#00020H
;// 03.06.20 //		TAX
		TYA
		SEC
		SBC	#001F8H
		TAY
		DEC	<WORKA
		BNE	FLST240		; 1 line end ?
;					; yes
		CLC
		RTS
;
;
;
;==========================  CHANGE UNIT  ===============================
;************************************************************************
;*		Left wall set				(LWALST0)	*
;************************************************************************
LWALST0		EQU	$
;
;************************************************************************
;*		Right wall set				(RWALST0)	*
;************************************************************************
RWALST0		EQU	$
;
;************************************************************************
;*		Yogore-kabe set	(left)			(YGKBST2)	*
;************************************************************************
YGKBST2		EQU	$
;
;************************************************************************
;*		Yogore-kabe set	(right)			(YGKBST3)	*
;************************************************************************
YGKBST3		EQU	$
;
LWLS040		EQU	$
		JSR	STCTSY		; set counter reset
LWLS060		EQU	$
		LDA	#00100H		;
		JMP	UNITST3		; 4x2 unit set
;
;
;
;************************************************************************
;*		Up wall set				(UWALST0)	*
;************************************************************************
UWALST0		EQU	$
;
;************************************************************************
;*		Down wall set				(DWALST0)	*
;************************************************************************
DWALST0		EQU	$
;
;************************************************************************
;*		Yogore-kabe set	(up)			(YGKBST0)	*
;************************************************************************
YGKBST0		EQU	$
;
;************************************************************************
;*		Yogore-kabe set	(down)			(YGKBST1)	*
;************************************************************************
YGKBST1		EQU	$
;
UWLS040		EQU	$
		JSR	STCTSY		; set counter reset
UWLS060		EQU	$
		STX	<WORKA
UWLS080		EQU	$
		LDA	#00002H
		JSR	UNITST2		; 2x4 unit set
;
		LDX	<WORKA
		DEC	<XSTCNT
		BNE	UWLS080		; set end ?
;					; yes
NOTHING		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Left wall set				(LWALST8)	*
;************************************************************************
LWALST8		EQU	$
;
;************************************************************************
;*		Right wall set				(RWALST8)	*
;************************************************************************
RWALST8		EQU	$
;
LWLS840		EQU	$
		TXA			; (A) <-- (X)
		TYX			; (X) <-- (Y)
		TAY			; (Y) <-- (A)
;
		JSR	STCTST		; set counter reset
LWLS880		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+002H,X
		STA	>ROOMBF+002H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+004H,X
		STA	>ROOMBF+004H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+006H,X
		STA	>ROOMBF+006H,X
;
		LDA	UNITDT+008H,Y
		STA	>BG1RBF+080H,X
		STA	>ROOMBF+080H,X
		LDA	UNITDT+00AH,Y
		STA	>BG1RBF+082H,X
		STA	>ROOMBF+082H,X
		LDA	UNITDT+00CH,Y
		STA	>BG1RBF+084H,X
		STA	>ROOMBF+084H,X
		LDA	UNITDT+00EH,Y
		STA	>BG1RBF+086H,X
		STA	>ROOMBF+086H,X
;
		TXA
		CLC
		ADC	#00100H
		TAX
		DEC	<XSTCNT
		BNE	LWLS880		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Up wall set				(UWALST8)	*
;************************************************************************
UWALST8		EQU	$
;
;************************************************************************
;*		Down wall set				(DWALST8)	*
;************************************************************************
DWALST8		EQU	$
;
UWLS840		EQU	$
		TXA			; (A) <-- (X)
		TYX			; (X) <-- (Y)
		TAY			; (Y) <-- (A)
;
		JSR	STCTST		; set counter reset
UWLS880		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+180H,X
		STA	>ROOMBF+180H,X
;
		LDA	UNITDT+008H,Y
		STA	>BG1RBF+002H,X
		STA	>ROOMBF+002H,X
		LDA	UNITDT+00AH,Y
		STA	>BG1RBF+082H,X
		STA	>ROOMBF+082H,X
		LDA	UNITDT+00CH,Y
		STA	>BG1RBF+102H,X
		STA	>ROOMBF+102H,X
		LDA	UNITDT+00EH,Y
		STA	>BG1RBF+182H,X
		STA	>ROOMBF+182H,X
;
		INX
		INX
		INX
		INX
		DEC	<XSTCNT
		BNE	UWLS880		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Under left wall set			(ULWALST)	*
;************************************************************************
ULWALST		EQU	$
;
;************************************************************************
;*		Under right wall set			(URWALST)	*
;************************************************************************
URWALST		EQU	$
;
;************************************************************************
;*		Dokan tate set				(DKANST10)	*
;************************************************************************
DKANST10	EQU	$
		JSR	STCTST		; set counter reset
		BRA	CLST040
;// 03.06.14 //ULWLS80		EQU	$
;// 03.06.14 //		JSR	UNITSTB		; 2x2 unit set
;// 03.06.14 //		DEC	<XSTCNT
;// 03.06.14 //		BNE	ULWLS80		; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		RTS
;// 03.06.14 //;
;
;
;************************************************************************
;*		Under up wall set			(UUWALST)	*
;************************************************************************
UUWALST		EQU	$
;
;************************************************************************
;*		Under down wall set			(UDWALST)	*
;************************************************************************
UDWALST		EQU	$
;
;************************************************************************
;*		Dokan yoko set				(DKANST11)	*
;************************************************************************
DKANST11	EQU	$
UUWLS40		EQU	$
		JSR	STCTST		; set counter reset
		BRA	CLST140
;// 03.06.14 //UUWLS80		EQU	$
;// 03.06.14 //		JSR	UNITST7		; 2x2 unit set
;// 03.06.14 //		DEC	<XSTCNT
;// 03.06.14 //		BNE	UUWLS80		; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		RTS
;// 03.06.14 //;
;
;
;
;************************************************************************
;*		Tate Ceiling set			(CEILST0)	*
;************************************************************************
CEILST0		EQU	$
;
;************************************************************************
;*		Change-yuka (A) set 2			(CNGYKST2)	*
;************************************************************************
CNGYKST2	EQU	$
;
;************************************************************************
;*		Change-yuka (B) set 3			(CNGYKST3)	*
;************************************************************************
CNGYKST3	EQU	$
		JSR	STCTSZ		; set counter reset
CLST040		EQU	$
		JSR	UNITSTB		; 2x2 unit set
		DEC	<XSTCNT
		BNE	CLST040		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Yoko Ceiling set			(CEILST1)	*
;************************************************************************
CEILST1		EQU	$
;
;************************************************************************
;*		Change-yuka (A) set 4			(CNGYKST4)	*
;************************************************************************
CNGYKST4	EQU	$
;
;************************************************************************
;*		Change-yuka (B) set 5			(CNGYKST5)	*
;************************************************************************
CNGYKST5	EQU	$
		JSR	STCTSZ		; set counter reset
CLST140		EQU	$
		JSR	UNITST7		; 2x2 unit set
		DEC	<XSTCNT
		BNE	CLST140		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		4x4 Ceiling set				(CEILST2)	*
;************************************************************************
CEILST2		EQU	$
;
;************************************************************************
;*		4x4 Hole set				(HOLEST0)	*
;************************************************************************
HOLEST0		EQU	$
;
CLST220		EQU	$
		INC	<XSTCNT
		INC	<YSTCNT
CLST240		EQU	$
		LDA	<XSTCNT
		STA	<WORKA
CLST280		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		STA	[<BFP002],Y
		STA	[<BFP004],Y
		STA	[<BFP006],Y
		STA	[<BFP080],Y
		STA	[<BFP082],Y
		STA	[<BFP084],Y
		STA	[<BFP086],Y
		TYA
		CLC
		ADC	#00100H
		TAY
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		STA	[<BFP002],Y
		STA	[<BFP004],Y
		STA	[<BFP006],Y
		STA	[<BFP080],Y
		STA	[<BFP082],Y
		STA	[<BFP084],Y
		STA	[<BFP086],Y
		TYA
		SEC
		SBC	#000F8H
		TAY
		DEC	<WORKA
		BNE	CLST280		; set end ?
;					;
		LDA	<WORK8
		CLC
		ADC	#00200H
		STA	<WORK8
		TAY
		DEC	<YSTCNT
		BNE	CLST240		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Left-up Ceiling set			(LUCEIL)	*
;************************************************************************
LUCEIL		EQU	$
LUCL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
LUCL40		EQU	$
		JSR	UTSTC00		; unit set
		ADC	#00080H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	LUCL40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Left-down Ceiling set			(LDCEIL)	*
;************************************************************************
LDCEIL		EQU	$
LDCL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
		INC	<YSTCNT
LDCL40		EQU	$
		LDA	<YSTCNT
		JSR	UTSTC40		; unit set
		ADC	#00080H
		STA	<WORK8
		TAY
		INC	<YSTCNT
		DEC	<XSTCNT
		BNE	LDCL40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Right-up Ceiling set			(RUCEIL)	*
;************************************************************************
RUCEIL		EQU	$
RUCL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
RUCL40		EQU	$
		JSR	UTSTC00		; unit set
		ADC	#00082H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	RUCL40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Right-down Ceiling set			(RDCEIL)	*
;************************************************************************
RDCEIL		EQU	$
RDCL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
RDCL40		EQU	$
		JSR	UTSTC00		; unit set
		SEC
		SBC	#0007EH
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	RDCL40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Up arch set				(UARCHST)	*
;************************************************************************
UARCHST		EQU	$
;
;************************************************************************
;*		Down arch set				(DARCHST)	*
;************************************************************************
DARCHST		EQU	$
;
UACST40		EQU	$
		JSR	STCTST		; set count reset
		STX	<WORKA
UACST80		EQU	$
		LDA	#00002H
		JSR	UNITST2		; 4x2 unit set
		TYA
		CLC
		ADC	#00008H
		TAY
		LDX	<WORKA
		DEC	<XSTCNT
		BNE	UACST80		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Left arch set				(LARCHST)	*
;************************************************************************
LARCHST		EQU	$
;
;************************************************************************
;*		Right arch set				(RARCHST)	*
;************************************************************************
RARCHST		EQU	$
;
LACST40		EQU	$
		JSR	STCTST		; set count reset
LACST80		EQU	$
		LDA	#00300H
		JMP	UNITST3		; 4x2 unit set
;
;
;
;
;************************************************************************
;*		Left-up 45" wall set			(LUSWST0)	*
;************************************************************************
LUSWST0		EQU	$
;
;************************************************************************
;*		Right-down 45" wall set			(RDSWST0)	*
;************************************************************************
RDSWST0		EQU	$
;
;************************************************************************
;*		Left-up 45" wall set			(LUSWST1)	*
;************************************************************************
LUSWST1		EQU	$
;
;************************************************************************
;*		Right-down 45" wall set			(RDSWST1)	*
;************************************************************************
RDSWST1		EQU	$
;
;************************************************************************
;*		Left-up 45" wall set			(LUSWST2)	*
;************************************************************************
LUSWST2		EQU	$
;
;************************************************************************
;*		Right-down 45" wall set			(RDSWST2)	*
;************************************************************************
RDSWST2		EQU	$
;
LUSWS40		EQU	$
		LDA	#00007H
		JSR	STCTS0		; set counter reset
;
		JMP	UNITSTA		; 5x1 unit set
;
;
;
;************************************************************************
;*		Left-down 45" wall set			(LDSWST0)	*
;************************************************************************
LDSWST0		EQU	$
;
;************************************************************************
;*		Right-up 45" wall set			(RUSWST0)	*
;************************************************************************
RUSWST0		EQU	$
;
;************************************************************************
;*		Left-down 45" wall set			(LDSWST1)	*
;************************************************************************
LDSWST1		EQU	$
;
;************************************************************************
;*		Right-up 45" wall set			(RUSWST1)	*
;************************************************************************
RUSWST1		EQU	$
;
;************************************************************************
;*		Left-down 45" wall set			(LDSWST2)	*
;************************************************************************
LDSWST2		EQU	$
;
;************************************************************************
;*		Right-up 45" wall set			(RUSWST2)	*
;************************************************************************
RUSWST2		EQU	$
;
LDSWS40		EQU	$
		LDA	#00007H
		JSR	STCTS0		; set counter reset
;
		JMP	UNITST9		; 5x1 unit set
;
;
;
;
;************************************************************************
;*		Left-up 45" wall set			(LUSWST8)	*
;************************************************************************
LUSWST8		EQU	$
;
;************************************************************************
;*		Right-down 45" wall set			(RDSWST8)	*
;************************************************************************
RDSWST8		EQU	$
;
;************************************************************************
;*		Left-up 45" wall set			(LUSWST9)	*
;************************************************************************
LUSWST9		EQU	$
;
;************************************************************************
;*		Right-down 45" wall set			(RDSWST9)	*
;************************************************************************
RDSWST9		EQU	$
;
;************************************************************************
;*		Left-up 45" wall set			(LUSWSTA)	*
;************************************************************************
LUSWSTA		EQU	$
;
;************************************************************************
;*		Right-down 45" wall set			(RDSWSTA)	*
;************************************************************************
RDSWSTA		EQU	$
;
LUSW820		EQU	$
		TXA			; (A) <-- (X)
		TYX			; (X) <-- (Y)
		TAY			; (Y) <-- (A)
;
		LDA	#00006H
		JSR	STCTS0		; set counter reset
		LDA	#0FF82H
LUSW840		EQU	$
		STA	<WORKE
LUSW880		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+180H,X
		STA	>ROOMBF+180H,X
		LDA	UNITDT+008H,Y
		STA	>BG1RBF+200H,X
		STA	>ROOMBF+200H,X
		TXA
		CLC
		ADC	<WORKE
		TAX
		DEC	<XSTCNT
		BNE	LUSW880		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Left-down 45" wall set			(LDSWST8)	*
;************************************************************************
LDSWST8		EQU	$
;
;************************************************************************
;*		Right-up 45" wall set			(RUSWST8)	*
;************************************************************************
RUSWST8		EQU	$
;
;************************************************************************
;*		Left-down 45" wall set			(LDSWST9)	*
;************************************************************************
LDSWST9		EQU	$
;
;************************************************************************
;*		Right-up 45" wall set			(RUSWST9)	*
;************************************************************************
RUSWST9		EQU	$
;
;************************************************************************
;*		Left-down 45" wall set			(LDSWSTA)	*
;************************************************************************
LDSWSTA		EQU	$
;
;************************************************************************
;*		Right-up 45" wall set			(RUSWSTA)	*
;************************************************************************
RUSWSTA		EQU	$
;
LDSW840		EQU	$
		TXA			; (A) <-- (X)
		TYX			; (X) <-- (Y)
		TAY			; (Y) <-- (A)
;
		LDA	#00006H
		JSR	STCTS0		; set counter reset
		LDA	#00082H
		BRA	LUSW840
;
;
;
;
;************************************************************************
;*		Saidan set				(SIDNST)	*
;************************************************************************
SIDNST		EQU	$
		LDA	<XSTCNT
		CLC
		ADC	#00004H
		STA	<XSTCNT		; x-set count reset
		STA	<WORKA
		INC	<YSTCNT		; y-set count reset
;
		JSR	SDNS200		; 1 line set
		STX	WORK6
		LDA	<WORK8
		STA	<WORK4
		CLC
		ADC	#00180H
		STA	<WORK8
		LDA	<YSTCNT
		STA	<WORKE
SDNS40		EQU	$
		LDA	<XSTCNT
		STA	<WORKA
;
		LDY	<WORK8		; (Y) <-- set address
		LDX	<WORK6
		JSR	UNITST6		; 2x3 unit set
		TXA
		CLC
		ADC	#0000CH
		TAX
		TYA
		CLC
		ADC	#00006H
		TAY
SNDS80		EQU	$
		JSR	UNITST7		; 2x2 unit set
		DEC	<WORKA
		BNE	SNDS80		; set end ?
;					; yes
		TXA
		CLC
		ADC	#00008H
		TAX
		JSR	UNITST6		; 2x3 unit set
		LDA	<WORK8
		CLC
		ADC	#00100H
		STA	<WORK8
		DEC	<WORKE
		BNE	SDNS40		; set end ?
;					; yes
		TXA
		CLC
		ADC	#0000CH
		TAX
		LDY	<WORK8
		LDA	<XSTCNT
		STA	<WORKA
		JSR	SDNS200		;
;
		LDA	#0FF80H
SNDS100		EQU	$
		SEC
		SBC	#00080H
		DEC	<YSTCNT
		BNE	SNDS100		;
;					;
		CLC
		ADC	<WORK8
		INC	<XSTCNT
		INC	<XSTCNT
		ASL	<XSTCNT
		CLC
		ADC	<XSTCNT
		TAY
		LDX	#sidnmk
		JMP	UNITST7
;
;
SDNS200		EQU	$
		JSR	UTST040		; 3x3 unit set
SDNS240		EQU	$
		LDA	#00002H
		JSR	UNITST0		; 3x2 unit set
		TXA
		SEC
		SBC	#0000CH
		TAX
		DEC	<WORKA
		BNE	SDNS240		; set end ?
;					; yes
		JMP	UTST030		; 3x3 unit set
;
;
;************************************************************************
;*		Saidan Step set				(SDSTEP)	*
;************************************************************************
SDSTEP		EQU	$
		LDA	<XSTCNT
		ASL	A
		ASL	A
		ORA	<YSTCNT
		ASL	A
		INC	A
		STA	<XSTCNT
SDSP40		EQU	$
		LDA	#00002H
		JSR	UNITST0		; 2x3 unit set
SDSP80		EQU	$
		TXA
		SEC
		SBC	#00006H
		TAX
		LDA	#00001H
		JSR	UNITST0		; 1x3 unit set
		DEC	<XSTCNT
		BNE	SDSP80		; set end ?
;					; yes
		LDA	#00001H
;
;************************************************************************
;*		Unit set (?x3)				(UNITST0)	*
;************************************************************************
UNITST0		EQU	$
		STA	<WORKE
UTST080		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		TXA
		CLC
		ADC	#00006H
		TAX
		INY
		INY
		DEC	<WORKE
		BNE	UTST080		; unit set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		3x3 Hole set				(HOLEST1)	*
;************************************************************************
;
;************************************************************************
;*		3x3 Nuki set				(NUKIST1)	*
;************************************************************************
NUKIST1		EQU	$
;
HOLEST1		EQU	$
		INC	<XSTCNT
		INC	<YSTCNT
HLST140		EQU	$
		LDA	<XSTCNT
		STA	<WORKA
;
HLST180		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		STA	[<BFP002],Y
		STA	[<BFP004],Y
		STA	[<BFP080],Y
		STA	[<BFP082],Y
		STA	[<BFP084],Y
		TYA
		CLC
		ADC	#00100H
		TAY
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		STA	[<BFP002],Y
		STA	[<BFP004],Y
		TYA
		SEC
		SBC	#000FAH
		TAY
		DEC	<WORKA
		BNE	HLST180		; set end ?
;					;
		LDA	<WORK8
		CLC
		ADC	#00180H
		STA	<WORK8
		TAY
		DEC	<YSTCNT
		BNE	HLST140		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		4x4 Hole set (WAKU)			(HOLEST2)	*
;************************************************************************
HOLEST2		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set count reset
		STA	<YSTCNT
		STA	<WORKE
;
		PHY			; (Y) push
HLST210		EQU	$
		JSR	UTSTC00		; unit set
		STA	<WORKC
		ADC	#00080H
		STA	<WORK8
		TAY
		DEC	<WORKE
		BNE	HLST210		; hole set end ?
;					; yes
		PLY			; (Y) pull
		STY	<WORK8
;
		LDA	#00002H
		STA	<WORKE
		LDX	#wakud0
HLST230		EQU	$
		LDA	<XSTCNT
		DEC	A
		DEC	A
		STA	<WORKA
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
HLST240		EQU	$
		STA	[<BFP002],Y
		INY
		INY
		DEC	<WORKA
		BNE	HLST240
;
		LDA	UNITDT+004H,X
		STA	[<BFP002],Y	; upper,down waku set
;
		TXA
		CLC
		ADC	#00006H
		TAX
		LDY	<WORKC
		DEC	<WORKE
		BNE	HLST230		; set end ?
;					; yes
;
		LDA	<WORK8
		CLC
		ADC	#00080H
		LDY	<XSTCNT
		DEY
		STY	<YSTCNT
		DEC	<YSTCNT
HLST250		EQU	$
		INC	A
		INC	A
		DEY
		BNE	HLST250		;
;					;
		STA	<WORKC
		LDA	#00002H
		STA	<WORKE
		LDA	<WORK8
		CLC
		ADC	#00080H
		TAY
		LDX	#wakud2
HLST260		EQU	$
		LDA	<YSTCNT
		STA	<WORKA
HLST270		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKA
		BNE	HLST270
;
		INX
		INX
		LDY	<WORKC
		DEC	<WORKE
		BNE	HLST260		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Left-up Hole set			(LUHOLE)	*
;************************************************************************
LUHOLE		EQU	$
;
;************************************************************************
;*		Left-up Nuki set			(LUNUKI)	*
;************************************************************************
LUNUKI		EQU	$
;
LUHL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
LUHL40		EQU	$
		JSR	UTSTC00		; unit set
		ADC	#00080H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	LUHL40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Left-down Hole set			(LDHOLE)	*
;************************************************************************
LDHOLE		EQU	$
;
;************************************************************************
;*		Left-down Nuki set			(LDNUKI)	*
;************************************************************************
LDNUKI		EQU	$
;
LDHL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
		INC	<YSTCNT
LDHL40		EQU	$
		LDA	<YSTCNT
		JSR	UTSTC40		; unit set
		ADC	#00080H
		STA	<WORK8
		TAY
		INC	<YSTCNT
		DEC	<XSTCNT
		BNE	LDHL40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Right-up Hole set			(RUHOLE)	*
;************************************************************************
RUHOLE		EQU	$
;
;************************************************************************
;*		Right-up Nuki set			(RUNUKI)	*
;************************************************************************
RUNUKI		EQU	$
;
RUHL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
RUHL40		EQU	$
		JSR	UTSTC00		; unit set
		ADC	#00082H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	RUHL40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Right-down Hole set			(RDHOLE)	*
;************************************************************************
RDHOLE		EQU	$
;
;************************************************************************
;*		Right-down Nuki set			(RDNUKI)	*
;************************************************************************
RDNUKI		EQU	$
;
RDHL20		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set counter reset
RDHL40		EQU	$
		JSR	UTSTC00		; unit set
		SEC
		SBC	#0007EH
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	RDHL40		; set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Long-Fance  length set			(LLFNCST)	*
;************************************************************************
LLFNCST		EQU	$
		LDA	#00015H
		BRA	LFCST00
;
;************************************************************************
;*		Fance  length set			(LFNCST)	*
;************************************************************************
LFNCST		EQU	$
		LDA	#00002H
LFCST00		EQU	$
		JSR	STCTS0		; set count reset
;
		LDA	#000E3H
		JSR	WKSTCK		; waku set check
		BCC	LFCST40		; set ok ?
;					; yes
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
LFCST40		EQU	$
		TYA
		CLC
		ADC	#00080H
		TAY
		LDA	UNITDT+002H,X
		STA	[<BFP000],Y
		DEC	<XSTCNT
		BNE	LFCST40		; set end ?
;					; yes
		LDA	UNITDT+004H,X
		STA	[<BFP080],Y
		RTS
;
;
;
;
;************************************************************************
;*		Long-Fance  wideth set			(LWFNCST)	*
;************************************************************************
LWFNCST		EQU	$
		LDA	#00015H
		BRA	WFCST00
;
;************************************************************************
;*		Fance  wideth set			(WFNCST)	*
;************************************************************************
WFNCST		EQU	$
		LDA	#00002H
WFCST00		EQU	$
		JSR	STCTS0		; set count reset
;
		LDA	#000E2H
		JSR	WKSTCK		; waku set check
		BCC	WFCST40		; set ok ?
;					; yes
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
WFCST40		EQU	$
		JSR	UNITSTC		; ?x1 unit set
;
		LDA	UNITDT+002H,X
		STA	[<BFP000],Y
		RTS
;
;
;
;************************************************************************
;*		Big Fance length set			(BLFNCST)	*
;************************************************************************
BLFNCST		EQU	$
		JSR	STCTST		; set count reset
;
		JSR	UNITSTB		; 2x2 unit set
		TXA
		CLC
		ADC	#00008H
		TAX
BLFS40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	BLFS40		;
;					;
		INX
		INX
		INX
		INX
;
;************************************************************************
;*		Taru					(TARUST)	*
;************************************************************************
TARUST		EQU	$
;
;************************************************************************
;*		Mono set - 1 (2x3 sekizou)		(MONOST1)	*
;************************************************************************
MONOST1		EQU	$
;
;************************************************************************
;*		Yoroi set				(YOROIST)	*
;************************************************************************
YOROIST		EQU	$
;
;************************************************************************
;*		Big chair set				(BCHIRST)	*
;************************************************************************
BCHIRST		EQU	$
		LDA	#00002H
		JMP	UNITST0		; 2x3 unit set
;
;
;
;************************************************************************
;*		Big Fance wideth set			(BWFNCST)	*
;************************************************************************
BWFNCST		EQU	$
		JSR	STCTST		; set count reset
		INC	<XSTCNT
;
		LDA	#00002H
		JSR	UNITST0		; 2x3 unit set
BWFS40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		INY
		INY
		DEC	<XSTCNT
		BNE	BWFS40		;
;					;
		INX
		INX
		INX
		INX
		INX
		INX
		LDA	#00002H
		JMP	UNITST0		; 2x3 unit set
;
;
;
;
;
;************************************************************************
;*		Left-up waku set			(LUWKST)	*
;************************************************************************
LUWKST		EQU	$
;
;************************************************************************
;*		Right-down waku set			(RDWKST)	*
;************************************************************************
RDWKST		EQU	$
;// 03.07.09 //;
;// 03.07.09 //LUWKS20		EQU	$
;// 03.07.09 //		JSR	STCTST		; set count reset
;// 03.07.09 //		INC	<XSTCNT
;// 03.07.09 //LUWKS40		EQU	$
;// 03.07.09 //		LDA	UNITDT+000H,X
;// 03.07.09 //		STA	[<BFP000],Y
;// 03.07.09 //		LDA	UNITDT+002H,X
;// 03.07.09 //		STA	[<BFP080],Y
;// 03.07.09 //		TYA
;// 03.07.09 //		SEC
;// 03.07.09 //		SBC	#0007EH
;// 03.07.09 //		TAY
;// 03.07.09 //		DEC	<XSTCNT
;// 03.07.09 //		BNE	LUWKS40		; set end ?
;// 03.07.09 //;					; yes
;// 03.07.09 //		RTS
;// 03.07.09 //;
;
;************************************************************************
;*		Left-down waku set			(LDWKST)	*
;************************************************************************
LDWKST		EQU	$
;
;************************************************************************
;*		Right-up waku set			(RUWKST)	*
;************************************************************************
RUWKST		EQU	$
;// 03.07.09 //;
;// 03.07.09 //LDWKS20		EQU	$
;// 03.07.09 //		JSR	STCTST		; set count reset
;// 03.07.09 //		INC	<XSTCNT
;// 03.07.09 //LDWKS40		EQU	$
;// 03.07.09 //		LDA	UNITDT+000H,X
;// 03.07.09 //		STA	[<BFP000],Y
;// 03.07.09 //		LDA	UNITDT+002H,X
;// 03.07.09 //		STA	[<BFP080],Y
;// 03.07.09 //		TYA
;// 03.07.09 //		CLC
;// 03.07.09 //		ADC	#00082H
;// 03.07.09 //		TAY
;// 03.07.09 //		DEC	<XSTCNT
;// 03.07.09 //		BNE	LDWKS40		; set end ?
;// 03.07.09 //;					; yes
;// 03.07.09 //		RTS
;// 03.07.09 //;
;
;
;************************************************************************
;*		Waku - 0  set				(WAKUST0)	*
;************************************************************************
WAKUST0		EQU	$
;
;************************************************************************
;*		Waku - 1  set				(WAKUST1)	*
;************************************************************************
WAKUST1		EQU	$
;
;************************************************************************
;*		Waku - 4  set				(WAKUST4)	*
;************************************************************************
WAKUST4		EQU	$
;
;************************************************************************
;*		Waku - 5  set				(WAKUST5)	*
;************************************************************************
WAKUST5		EQU	$
;
;************************************************************************
;*		Water waku - 0				(WWAKST0)	*
;************************************************************************
WWAKST0		EQU	$
;
;************************************************************************
;*		Water waku - 1				(WWAKST1)	*
;************************************************************************
WWAKST1		EQU	$
;
;************************************************************************
;*		Water waku - 4				(WWAKST4)	*
;************************************************************************
WWAKST4		EQU	$
;
;************************************************************************
;*		Water waku - 5				(WWAKST5)	*
;************************************************************************
WWAKST5		EQU	$
;
;************************************************************************
;*		Waku - 6  set				(WAKUST6)	*
;************************************************************************
WAKUST6		EQU	$
;
;************************************************************************
;*		Waku - 7  set				(WAKUST7)	*
;************************************************************************
WAKUST7		EQU	$
;
;************************************************************************
;*		Waku - 8  set				(WAKUST8)	*
;************************************************************************
WAKUST8		EQU	$
;
;************************************************************************
;*		Waku - 9  set				(WAKUST9)	*
;************************************************************************
WAKUST9		EQU	$
;
;************************************************************************
;*		Water waku - 6				(WWAKST6)	*
;************************************************************************
WWAKST6		EQU	$
;
;************************************************************************
;*		Water waku - 7				(WWAKST7)	*
;************************************************************************
WWAKST7		EQU	$
;
;************************************************************************
;*		Water waku - 8				(WWAKST8)	*
;************************************************************************
WWAKST8		EQU	$
;
;************************************************************************
;*		Water waku - 9				(WWAKST9)	*
;************************************************************************
WWAKST9		EQU	$
;
;************************************************************************
;*		Jyutan fuchi (up)			(JYTNST1)	*
;************************************************************************
JYTNST1		EQU	$
;
;************************************************************************
;*		Jyutan fuchi (down)			(JYTNST2)	*
;************************************************************************
JYTNST2		EQU	$
;
WKST020		EQU	$
		JSR	STCTST		; set count reset
;
		LDA	#001DBH
		JSR	WKSTCK		; waku set check
		BCC	WKST040		; set ok ?
;					; yes
		CMP	#001A6H
		BEQ	WKST040		; set ok ?
;					; yes
		CMP	#001DDH
		BEQ	WKST040		; set ok ?
;					; yes
		CMP	#001FCH
		BEQ	WKST040		; set ok ?
;					; yes
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
WKST040		EQU	$
		JSR	UNITSTC		; ?x1 unit set
;
		LDA	UNITDT+002H,X
		STA	[<BFP000],Y
		RTS
;
;
;
;************************************************************************
;*		Waku - 2  set				(WAKUST2)	*
;************************************************************************
WAKUST2		EQU	$
;
;************************************************************************
;*		Waku - 3  set				(WAKUST3)	*
;************************************************************************
WAKUST3		EQU	$
;
;************************************************************************
;*		Water waku - 2				(WWAKST2)	*
;************************************************************************
WWAKST2		EQU	$
;
;************************************************************************
;*		Water waku - 3				(WWAKST3)	*
;************************************************************************
WWAKST3		EQU	$
;
;************************************************************************
;*		Jyutan fuchi (left)			(JYTNST3)	*
;************************************************************************
JYTNST3		EQU	$
;
;************************************************************************
;*		Jyutan fuchi (right)			(JYTNST4)	*
;************************************************************************
JYTNST4		EQU	$
;
WKST220		EQU	$
		JSR	STCTST		; set count reset
WKST240		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	WKST240		; set end ?
;					; yes
		RTS
;
;
;
;
;
;************************************************************************
;*		4x4 yuka  (BG.1)			(STYUKA1)	*
;************************************************************************
STYUKA1		EQU	$
		LDX	!B1FLNO
		BRA	STYK40
;
;************************************************************************
;*		4x4 yuka  (BG.2)			(STYUKA)	*
;************************************************************************
STYUKA		EQU	$
		LDX	!B2FLNO
;
;************************************************************************
;*		4x4 water yuka				(WTRYUKA)	*
;************************************************************************
WTRYUKA		EQU	$
;
;************************************************************************
;*		Nuki set				(NUKIST)	*
;************************************************************************
NUKIST		EQU	$
;
;************************************************************************
;*		Stop yuka				(STPYUKA)	*
;************************************************************************
STPYUKA		EQU	$
;
;************************************************************************
;*		Water - 0				(WATRST0)	*
;************************************************************************
WATRST0		EQU	$
;
;************************************************************************
;*		Water - 1				(WATRST1)	*
;************************************************************************
WATRST1		EQU	$
;
;************************************************************************
;*		Water - 2				(WATRST2)	*
;************************************************************************
WATRST2		EQU	$
;
;************************************************************************
;*		Beltcover yuka				(BELTYST)	*
;************************************************************************
BELTYST		EQU	$
;
;************************************************************************
;*		Ice yuka				(ICEYUKA)	*
;************************************************************************
ICEYUKA		EQU	$
;
;************************************************************************
;*		Ice yuka (little)			(ICEYUK1)	*
;************************************************************************
ICEYUK1		EQU	$
;
;************************************************************************
;*		Cross null set				(CNULLST)	*
;************************************************************************
CNULLST		EQU	$
;
;************************************************************************
;*		Danger yuka 				(DNGRYST)	*
;************************************************************************
DNGRYST		EQU	$
;
;************************************************************************
;*		Color yuka - 0				(STYUKA2)	*
;************************************************************************
STYUKA2		EQU	$
;
;************************************************************************
;*		Color yuka - 1				(STYUKA3)	*
;************************************************************************
STYUKA3		EQU	$
;
;************************************************************************
;*		Rupy-yuka				(RUPYYKST)	*
;************************************************************************
RUPYYKST	EQU	$
;
;************************************************************************
;*		Yuka-conver				(YKCNVST0)	*
;************************************************************************
YKCNVST0	EQU	$
;
;************************************************************************
;*		Yuka-conver				(YKCNVST1)	*
;************************************************************************
YKCNVST1	EQU	$
;
;************************************************************************
;*		Yuka-conver				(YKCNVST2)	*
;************************************************************************
YKCNVST2	EQU	$
;
;************************************************************************
;*		Yuka-conver				(YKCNVST3)	*
;************************************************************************
YKCNVST3	EQU	$
;
;************************************************************************
;*		Sabaku-yuka				(SBKYKST)	*
;************************************************************************
SBKYKST		EQU	$
;
STYK40		EQU	$
		INC	<XSTCNT
		INC	<YSTCNT
STYK80		EQU	$
		LDA	<XSTCNT
		JSR	FLST200		; yuka set
		LDA	<WORK8
		CLC
		ADC	#00200H
		STA	<WORK8
		TAY
		DEC	<YSTCNT
		BNE	STYK80		; end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Length Brige set			(LBRGEST)	*
;************************************************************************
LBRGEST		EQU	$
;// 03.06.14 //		INC	<XSTCNT
;// 03.06.14 //		ASL	<XSTCNT
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#0000AH
;// 03.06.14 //		STA	<YSTCNT
;// 03.06.14 //LBRG40		EQU	$
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //;
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //LBRG80		EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	LBRG80		; center set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		STA	<WORK8
;// 03.06.14 //		TAY
;// 03.06.14 //		DEC	<YSTCNT
;// 03.06.14 //		BNE	LBRG40		; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		RTS
;// 03.06.14 //;
;
;************************************************************************
;*		Wideth Brige set			(WBRGEST)	*
;************************************************************************
WBRGEST		EQU	$
;// 03.06.14 //		INC	<YSTCNT
;// 03.06.14 //		ASL	<YSTCNT
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#0000AH
;// 03.06.14 //		STA	<XSTCNT
;// 03.06.14 //WBRG40		EQU	$
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //;
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //WBRG80		EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		TYA
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		TAY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	WBRG80		; center set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //;
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		STY	<WORK8
;// 03.06.14 //		DEC	<XSTCNT
;// 03.06.14 //		BNE	WBRG40		; set end ?
;// 03.06.14 //;					; yes
		RTS
;
;
;
;************************************************************************
;*		Scramble UP set				(USCRBST)	*
;************************************************************************
USCRBST		EQU	$
		LDA	#0000AH
		JSR	STCTS0		; set count reset
;
		LDA	UNITDT+000H,X
		STA	<WORKE
		INX
		INX
;
		LDA	[<BFP000],Y
		AND	#003FFH
		CMP	#000E2H
		BEQ	USCRB20		; set ok ?
;					; yes
		JSR	USCRB100	;
USCRB20		EQU	$
		INX
		INX
		INX
		INX
USCRB40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	<WORKE
		STA	[<BFP080],Y
		INY
		INY
		DEC	<XSTCNT
		BNE	USCRB40		; set end ?
;					; yes
		INX
		INX
USCRB100	EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	<WORKE
		STA	[<BFP080],Y
		STA	[<BFP082],Y
		INY
		INY
		INY
		INY
		RTS
;
;
;************************************************************************
;*		Scramble DOWN set			(DSCRBST)	*
;************************************************************************
DSCRBST		EQU	$
		LDA	#0000AH
		JSR	STCTS0		; set count reset
;
		LDA	UNITDT+000H,X
		STA	<WORKE
		INX
		INX
;
		LDA	[<BFP080],Y
		AND	#003FFH
		CMP	#000E2H
		BEQ	DSCRB20		; set ok ?
;					; yes
		JSR	DSCRB100	;
DSCRB20		EQU	$
		INX
		INX
		INX
		INX
DSCRB40		EQU	$
		LDA	<WORKE
		STA	[<BFP000],Y
		LDA	UNITDT+000H,X
		STA	[<BFP080],Y
		INY
		INY
		DEC	<XSTCNT
		BNE	DSCRB40		; set end ?
;					; yes
		INX
		INX
DSCRB100	EQU	$
		LDA	<WORKE
		STA	[<BFP000],Y
		STA	[<BFP002],Y
		LDA	UNITDT+000H,X
		STA	[<BFP080],Y
		LDA	UNITDT+002H,X
		STA	[<BFP082],Y
		INY
		INY
		INY
		INY
		RTS
;
;
;************************************************************************
;*		Scramble LEFT set			(LSCRBST)	*
;************************************************************************
LSCRBST		EQU	$
		LDA	#0000AH
		JSR	STCTS0		; set count reset
;
		LDA	UNITDT+000H,X
		STA	<WORKE
		INX
		INX
;
		LDA	[<BFP000],Y
		AND	#003FFH
		CMP	#000E3H
		BEQ	LSCRB20		; set ok ?
;					; yes
		JSR	LSCRB100	;
LSCRB20		EQU	$
		INX
		INX
		INX
		INX
LSCRB40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	<WORKE
		STA	[<BFP002],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	LSCRB40		; set end ?
;					; yes
		INX
		INX
LSCRB100	EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	<WORKE
		STA	[<BFP002],Y
		STA	[<BFP082],Y
		TYA
		CLC
		ADC	#00100H
		TAY
		RTS
;
;
;************************************************************************
;*		Scramble RIGHT set			(RSCRBST)	*
;************************************************************************
RSCRBST		EQU	$
		LDA	#0000AH
		JSR	STCTS0		; set count reset
;
		LDA	UNITDT+000H,X
		STA	<WORKE
		INX
		INX
;
		LDA	[<BFP002],Y
		AND	#003FFH
		CMP	#000E3H
		BEQ	RSCRB20		; set ok ?
;					; yes
		JSR	RSCRB100	;
RSCRB20		EQU	$
		INX
		INX
		INX
		INX
RSCRB40		EQU	$
		LDA	<WORKE
		STA	[<BFP000],Y
		LDA	UNITDT+000H,X
		STA	[<BFP002],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	RSCRB40		; set end ?
;					; yes
		INX
		INX
RSCRB100	EQU	$
		LDA	<WORKE
		STA	[<BFP000],Y
		STA	[<BFP080],Y
		LDA	UNITDT+000H,X
		STA	[<BFP002],Y
		LDA	UNITDT+002H,X
		STA	[<BFP082],Y
		TYA
		CLC
		ADC	#00100H
		TAY
		RTS
;
;
;
;************************************************************************
;*		Tobiori-fuchi UP set			(USCRBS1)	*
;************************************************************************
USCRBS1		EQU	$
;
;************************************************************************
;*		Tobiori-fuchi DOWN set			(DSCRBS1)	*
;************************************************************************
DSCRBS1		EQU	$
		LDA	#00008H
		JSR	STCTS0		; set count reset
;
		JMP	UTSTC00
;
;
;
;************************************************************************
;*		Tobiori-fuchi LEFT set			(LSCRBS1)	*
;************************************************************************
LSCRBS1		EQU	$
;
;************************************************************************
;*		Tobiori-fuchi RIGHT set			(RSCRBS1)	*
;************************************************************************
RSCRBS1		EQU	$
		LDA	#00008H
		JSR	STCTS0		; set count reset
LSCR140		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	LSCR140		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Shadow UP set				(USHDWST)	*
;************************************************************************
USHDWST		EQU	$
;
;************************************************************************
;*		Shadow DOWN set				(DSHDWST)	*
;************************************************************************
DSHDWST		EQU	$
;// 03.06.14 //;
;// 03.06.14 //USHDW20		EQU	$
;// 03.06.14 //		LDA	#00004H
;// 03.06.14 //		JSR	STCTS0		; set count reset
;// 03.06.14 //;
;// 03.06.14 //		LDA	[<BFP000],Y
;// 03.06.14 //		AND	#003FFH
;// 03.06.14 //		CMP	#001EEH
;// 03.06.14 //		BEQ	USHDW40		; set ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //USHDW40		EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //USHDW60		EQU	$
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<XSTCNT
;// 03.06.14 //		BNE	USHDW60		; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //		RTS
;// 03.06.14 //;
;// 03.06.14 //;
;
;************************************************************************
;*		Shadow LEFT set				(LSHDWST)	*
;************************************************************************
LSHDWST		EQU	$
;
;************************************************************************
;*		Shadow RIGHT set			(RSHDWST)	*
;************************************************************************
RSHDWST		EQU	$
;// 03.06.14 //;
;// 03.06.14 //LSHDW20		EQU	$
;// 03.06.14 //		LDA	#00004H
;// 03.06.14 //		JSR	STCTS0		; set count reset
;// 03.06.14 //;
;// 03.06.14 //		LDA	[<BFP000],Y
;// 03.06.14 //		AND	#003FFH
;// 03.06.14 //		CMP	#001EEH
;// 03.06.14 //		BEQ	LSHDW40		; set ok ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //LSHDW40		EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		TYA
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		TAY
;// 03.06.14 //		DEC	<XSTCNT
;// 03.06.14 //		BNE	LSHDW40		; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP080],Y
		RTS
;
;
;
;
;************************************************************************
;*		Erase-yuka  length set			(ERAYKST1)	*
;************************************************************************
ERAYKST1	EQU	$
;
;************************************************************************
;*		Carpet  length set			(LCRPTST)	*
;************************************************************************
LCRPTST		EQU	$
		STX	<WORKA
;
		JSR	STCTST		; set count reset
LCPST40		EQU	$
		LDX	<WORKA
		JSR	UNITST1		; 4x4 unit set
		LDA	<WORK8
		CLC
		ADC	#00200H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	LCPST40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Jyutan set				(JYTNST0)	*
;************************************************************************
JYTNST0		EQU	$
;
;************************************************************************
;*		Erase-yuka width set			(ERAYKST0)	*
;************************************************************************
ERAYKST0	EQU	$
;
;************************************************************************
;*		Carpet  width set			(WCRPTST)	*
;************************************************************************
WCRPTST		EQU	$
		STX	<WORKA
;
		JSR	STCTST		; set count reset
WCPST40		EQU	$
		LDX	<WORKA
		JSR	UNITST1		; 4x4 unit set
		DEC	<XSTCNT
		BNE	WCPST40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Carpet-Edge  length set			(LCEDGST)	*
;************************************************************************
LCEDGST		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set count reset
LCEGS40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	LCEGS40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Carpet-Edge  width set			(WCEDGST)	*
;************************************************************************
WCEDGST		EQU	$
		LDA	#00004H
		JSR	STCTS0		; set count reset
		JMP	UTSTC00
;
;
;
;************************************************************************
;*		Width  road  set			(WRDSET)	*
;************************************************************************
WRDSET		EQU	$
		STY	!WRDADR
		LDA	<BFP000
		CMP	#04000H
		BNE	WRDS40		; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		STA	!WRDADR
		TAY
WRDS40		EQU	$
		LDA	!EMYSTT
		AND	#0001000000000000B
		BEQ	WRDS999		; open ?
;					; yes
		STY	<WORK8
		LDY	#00052H
		LDY	<WORK8
		LDA	#00003H
		STA	<WORKE
		JSR	RDRS140
;
		LDY	#00052H
		LDA	<WORK8
		CLC
		ADC	#0000AH
		LDY	<BFP000
		CPY	#04000H
		BNE	WRDS80		;
;					;
		CLC
		ADC	#00004H
WRDS80		EQU	$
		LDA	#00003H
		STA	<WORKE
		JSR	LDRS140
		RTS
;
WRDS999		EQU	$
		LDA	!WRDADR
		ORA	#08000H
		STA	!WRDADR
		RTS
;
;
;
;// 03.05.09 //;
;// 03.05.09 //;************************************************************************
;// 03.05.09 //;*		Length road set				(LRDSET)	*
;// 03.05.09 //;************************************************************************
;// 03.05.09 //LRDSET		EQU	$
;// 03.05.09 //		LDA	#00008H
;// 03.05.09 //		JSR	STCTS0		; set count reset
;// 03.05.09 //;
;// 03.05.09 //		JSR	LRDS100
;// 03.05.09 //		TXA
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#0000EH
;// 03.05.09 //		TAX
;// 03.05.09 //LRDS40		EQU	$
;// 03.05.09 //		LDA	<WORK8
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#00080H
;// 03.05.09 //		STA	<WORK8
;// 03.05.09 //		TAY
;// 03.05.09 //		JSR	LRDS100
;// 03.05.09 //		DEC	<XSTCNT
;// 03.05.09 //		BNE	LRDS40		;
;// 03.05.09 //;					; yes
;// 03.05.09 //		TXA
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#0000EH
;// 03.05.09 //		TAX
;// 03.05.09 //		LDA	<WORK8
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#00080H
;// 03.05.09 //		TAY
;// 03.05.09 //LRDS100		EQU	$
;// 03.05.09 //		LDA	UNITDT+000H,X
;// 03.05.09 //		STA	[<BFP000],Y
;// 03.05.09 //		LDA	UNITDT+002H,X
;// 03.05.09 //		STA	[<BFP002],Y
;// 03.05.09 //		LDA	UNITDT+004H,X
;// 03.05.09 //		STA	[<BFP004],Y
;// 03.05.09 //		LDA	#00004H
;// 03.05.09 //		STA	<WORKE
;// 03.05.09 //LRDS140		EQU	$
;// 03.05.09 //		LDA	UNITDT+006H,X
;// 03.05.09 //		STA	[<BFP006],Y
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //		DEC	<WORKE
;// 03.05.09 //		BNE	LRDS140		;
;// 03.05.09 //;					; yes
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //		LDA	UNITDT+008H,X
;// 03.05.09 //		STA	[<BFP000],Y
;// 03.05.09 //		LDA	UNITDT+00AH,X
;// 03.05.09 //		STA	[<BFP002],Y
;// 03.05.09 //		LDA	UNITDT+00CH,X
;// 03.05.09 //		STA	[<BFP004],Y
;// 03.05.09 //		RTS
;// 03.05.09 //;
;// 03.05.09 //;
;// 03.05.09 //;************************************************************************
;// 03.05.09 //;*		Width road set				(WRDSET)	*
;// 03.05.09 //;************************************************************************
;// 03.05.09 //WRDSET		EQU	$
;// 03.05.09 //		LDA	#00008H
;// 03.05.09 //		JSR	STCTS0		; set count reset
;// 03.05.09 //;
;// 03.05.09 //		JSR	WRDS100
;// 03.05.09 //		TXA
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#0000EH
;// 03.05.09 //		TAX
;// 03.05.09 //WRDS40		EQU	$
;// 03.05.09 //		LDY	<WORK8
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //		STY	<WORK8
;// 03.05.09 //		JSR	WRDS100
;// 03.05.09 //		DEC	<XSTCNT
;// 03.05.09 //		BNE	WRDS40		;
;// 03.05.09 //;					; yes
;// 03.05.09 //		TXA
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#0000EH
;// 03.05.09 //		TAX
;// 03.05.09 //		LDY	<WORK8
;// 03.05.09 //		INY
;// 03.05.09 //		INY
;// 03.05.09 //WRDS100		EQU	$
;// 03.05.09 //		LDA	UNITDT+000H,X
;// 03.05.09 //		STA	[<BFP000],Y
;// 03.05.09 //		LDA	UNITDT+002H,X
;// 03.05.09 //		STA	[<BFP080],Y
;// 03.05.09 //		LDA	UNITDT+004H,X
;// 03.05.09 //		STA	[<BFP100],Y
;// 03.05.09 //		LDA	#00004H
;// 03.05.09 //		STA	<WORKE
;// 03.05.09 //WRDS140		EQU	$
;// 03.05.09 //		LDA	UNITDT+006H,X
;// 03.05.09 //		STA	[<BFP180],Y
;// 03.05.09 //		TYA
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#00080H
;// 03.05.09 //		TAY
;// 03.05.09 //		DEC	<WORKE
;// 03.05.09 //		BNE	WRDS140		;
;// 03.05.09 //;					; yes
;// 03.05.09 //		TYA
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	#000180H
;// 03.05.09 //		TAY
;// 03.05.09 //		LDA	UNITDT+008H,X
;// 03.05.09 //		STA	[<BFP000],Y
;// 03.05.09 //		LDA	UNITDT+00AH,X
;// 03.05.09 //		STA	[<BFP080],Y
;// 03.05.09 //		LDA	UNITDT+00CH,X
;// 03.05.09 //		STA	[<BFP100],Y
;// 03.05.09 //		RTS
;// 03.05.09 //;
;
;
;
;************************************************************************
;*		Move wall : ERASE (up)			(MVWLST0)	*
;************************************************************************
MVWLST0		EQU	$
;// 03.06.14 //		JSR	MWST000		; check
;// 03.06.14 //		BCS	MWLST010	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		RTS
;// 03.06.14 //;
;// 03.06.14 //MWLST010	EQU	$
;// 03.06.14 //		INC	!B1MFLG		; BG.1 move flag on
;// 03.06.14 //;
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT0,Y
;// 03.06.14 //		PHA			; (A) push
;// 03.06.14 //;
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ADC	#00006H-2
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		STA	!BG1MPT		; move dot pointer set
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT1,Y
;// 03.06.14 //		STA	<WORKC
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //MWLST020	EQU	$
;// 03.06.14 //		SEC
;// 03.06.14 //		SBC	#00080H
;// 03.06.14 //		DEY
;// 03.06.14 //		BNE	MWLST020	; end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		PHA			; (A) push
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		LDX	#mwalc0
;// 03.06.14 //MWLST040	EQU	$
;// 03.06.14 //		LDA	<WORKE
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //		LDY	<WORK6
;// 03.06.14 //;
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //MWLST060	EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	MWLST060	;
;// 03.06.14 //;					;
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK6
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		DEC	<WORKC
;// 03.06.14 //		BNE	MWLST040	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		PLA			; (A) pull
;// 03.06.14 //		SEC
;// 03.06.14 //		SBC	#00080H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		TAY
;// 03.06.14 //		JSR	MWST700		; up,down buffer set
;// 03.06.14 //;
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		LDX	#mwald0
;// 03.06.14 //		JSR	UTST040		; 3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		PLA			; (A) pull
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //MWLST080	EQU	$
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		LDA	UNITDT+006H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+008H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+00AH,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKE
;// 03.06.14 //		BNE	MWLST080	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //UTST020		EQU	$
;// 03.06.14 //		TXA
;// 03.06.14 //UTST030		EQU	$
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#0000CH
;// 03.06.14 //		TAX
;// 03.06.14 //UTST040		EQU	$
;// 03.06.14 //		LDA	#00003H
;// 03.06.14 //		JMP	UNITST0		; 3x3 unit set
;// 03.06.14 //;
;
;
;************************************************************************
;*		Move wall : ERASE (down)		(MVWLST1)	*
;************************************************************************
MVWLST1		EQU	$
;// 03.06.14 //		JSR	MWST000		; check
;// 03.06.14 //		BCS	MWLST110	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		RTS
;// 03.06.14 //;
;// 03.06.14 //MWLST110	EQU	$
;// 03.06.14 //		INC	!B1MFLG		; BG.1 move flag on
;// 03.06.14 //;
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		LDX	#mwald1
;// 03.06.14 //		JSR	UTST040		;3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT0,Y
;// 03.06.14 //		STA	<WORKE		; wall counter set
;// 03.06.14 //		PHA			; (A) push
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00006H
;// 03.06.14 //		TAY
;// 03.06.14 //MWLST120	EQU	$
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		LDA	UNITDT+006H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+008H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+00AH,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKE
;// 03.06.14 //		BNE	MWLST120	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		JSR	UTST020		; 3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		PLA			; (A) pull
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ADC	#00006H-2
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		STA	!BG1MPT		; move dot pointer set
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT1,Y
;// 03.06.14 //		STA	<WORKC
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00180H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		LDX	#mwalc0
;// 03.06.14 //MWLST140	EQU	$
;// 03.06.14 //		LDA	<WORKE
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //		LDY	<WORK6
;// 03.06.14 //;
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //MWLST160	EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	MWLST160	;
;// 03.06.14 //;					;
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK6
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		DEC	<WORKC
;// 03.06.14 //		BNE	MWLST140	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		TAY
;// 03.06.14 //		JMP	MWST700		; up,down buffer set
		RTS
;
;
;************************************************************************
;*		Move wall : ERASE (left)		(MVWLST2)	*
;************************************************************************
MVWLST2		EQU	$
		JSR	MWST000		; check
		BCS	MWLST210	; set ok ?
;					; no
		RTS
;
MWLST210	EQU	$
		INC	!B1MFLG		; BG.1 move flag on
;
		LDA	<XSTCNT
		ASL	A
		TAY
		LDA	MWLDT0,Y
		PHA			; (A) push
;
		ASL	A
		ADC	#00006H-2
		STA	<WORKE
		LDA	<YSTCNT
		ASL	A
		STA	!BG1MPT		; move dot pointer set
		TAY
		LDA	MWLDT1,Y
		STA	<WORKC
		TAY
		LDA	<WORK8
MWLST220	EQU	$
		DEC	A
		DEC	A
		DEY
		BNE	MWLST220	; end ?
;					; yes
		PHA			; (A) push
		STA	<WORK6
		LDX	#mwalc1
MWLST240	EQU	$
		LDA	<WORKE
		STA	<WORKA
		LDY	<WORK6
;
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
MWLST260	EQU	$
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKA
		BNE	MWLST260	;
;					;
		LDA	UNITDT+004H,X
		STA	[<BFP080],Y
;
		INC	<WORK6
		INC	<WORK6
		DEC	<WORKC
		BNE	MWLST240	; set end ?
;					; yes
		PLA			; (A) pull
		DEC	A
		DEC	A
		STA	<WORK6
		TAY
		JSR	MWST800		; left,right buffer set
;
		LDY	<WORK8
		LDX	#mwald2
		JSR	UTST040		;3x3 unit set (coner)
;
		PLA			; (A) pull
		STA	<WORKE		; wall counter set
		LDA	<WORK8
		CLC
		ADC	#00180H
		TAY
MWLST280	EQU	$
		JSR	UNITST6		; 3x2 unit set (wall)
		TYA
		CLC
		ADC	#00100H
		TAY
		DEC	<WORKE
		BNE	MWLST280	; set end ?
;					; yes
UTST020		EQU	$
		TXA
UTST030		EQU	$
		CLC
		ADC	#0000CH
		TAX
UTST040		EQU	$
		LDA	#00003H
		JMP	UNITST0		; 3x3 unit set
;
;
;************************************************************************
;*		Move wall : ERASE (right)		(MVWLST3)	*
;************************************************************************
MVWLST3		EQU	$
		JSR	MWST000		; check
		BCS	MWLST310	; set ok ?
;					; no
		RTS
;
MWLST310	EQU	$
		INC	!B1MFLG		; BG.1 move flag on
;
		LDY	<WORK8
		LDX	#mwald3
		JSR	UTST040		;3x3 unit set (coner)
;
		LDA	<XSTCNT
		ASL	A
		TAY
		LDA	MWLDT0,Y
		STA	<WORKE		; wall counter set
		PHA			; (A) push
;
		LDA	<WORK8
		CLC
		ADC	#00180H
		TAY
MWLST320	EQU	$
		JSR	UNITST6		; 3x2 unit set (wall)
		TYA
		CLC
		ADC	#00100H
		TAY
		DEC	<WORKE
		BNE	MWLST320	; set end ?
;					; yes
		JSR	UTST020		; 3x3 unit set (coner)
;
		PLA			; (A) pull
		ASL	A
		ADC	#00006H-2
		STA	<WORKE
		LDA	<YSTCNT
		ASL	A
		STA	!BG1MPT		; move dot pointer set
		TAY
		LDA	MWLDT1,Y
		STA	<WORKC
		LDA	<WORK8
		CLC
		ADC	#00006H
		STA	<WORK6
		LDX	#mwalc1
MWLST340	EQU	$
		LDA	<WORKE
		STA	<WORKA
		LDY	<WORK6
;
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
MWLST360	EQU	$
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKA
		BNE	MWLST360	;
;					;
		LDA	UNITDT+004H,X
		STA	[<BFP080],Y
;
		INC	<WORK6
		INC	<WORK6
		DEC	<WORKC
		BNE	MWLST340	; set end ?
;					; yes
		LDY	<WORK6
		JMP	MWST800		; left,right buffer set
;
;
;
;
;
;************************************************************************
;*		Move wall : WRITE (Up)			(MVWLST4)	*
;************************************************************************
MVWLST4		EQU	$
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		STY	!BG1MPT		; move dot pointer set
;// 03.06.14 //		LDA	MWLDT1,Y
;// 03.06.14 //		STA	<WORKC
;// 03.06.14 //;
;// 03.06.14 //		JSR	MWST200		; check
;// 03.06.14 //		BCS	MWLST415	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		LDY	<WORKC
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //MWLST410	EQU	$
;// 03.06.14 //		SEC
;// 03.06.14 //		SBC	#00080H
;// 03.06.14 //		DEY
;// 03.06.14 //		BNE	MWLST410	; end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		STA	<WORK8
;// 03.06.14 //MWLST415	EQU	$
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		LDX	#mwald1
;// 03.06.14 //		JSR	UTST040		;3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT0,Y
;// 03.06.14 //		STA	<WORKE		; wall counter set
;// 03.06.14 //		PHA			; (A) push
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00006H
;// 03.06.14 //		TAY
;// 03.06.14 //MWLST420	EQU	$
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		LDA	UNITDT+006H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+008H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+00AH,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKE
;// 03.06.14 //		BNE	MWLST420	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		JSR	UTST020		; 3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		PLA			; (A) pull
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ADC	#00006H-2
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00200H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //;// 03.04.24 //		LDA	!INFSTT
;// 03.06.14 //;// 03.04.24 //		AND	BITCD0
;// 03.06.14 //		LDA	!EMYSTT
;// 03.06.14 //		AND	BITCD0+6
;// 03.06.14 //		BEQ	MWLST480	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00180H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		LDX	#mwalc0
;// 03.06.14 //MWLST440	EQU	$
;// 03.06.14 //		LDA	<WORKE
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //		LDY	<WORK6
;// 03.06.14 //;
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //MWLST460	EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	MWLST460	;
;// 03.06.14 //;					;
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK6
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		DEC	<WORKC
;// 03.06.14 //		BNE	MWLST440	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //MWLST480	EQU	$
;// 03.06.14 //		LDA	<WORK6
;// 03.06.14 //		SEC
;// 03.06.14 //		SBC	#00080H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		TAY
;// 03.06.14 //		JMP	MWST700		; up,down buffer set
;// 03.06.14 //;
;
;************************************************************************
;*		Move wall : WRITE (Down)		(MVWLST5)	*
;************************************************************************
MVWLST5		EQU	$
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT0,Y
;// 03.06.14 //		PHA			; (A) push
;// 03.06.14 //;
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ADC	#00006H-2
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		STY	!BG1MPT		; move dot pointer set
;// 03.06.14 //		LDA	MWLDT1,Y
;// 03.06.14 //		STA	<WORKC
;// 03.06.14 //;
;// 03.06.14 //		JSR	MWST200		; check
;// 03.06.14 //		BCS	MWLST570	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		LDX	#mwalc0
;// 03.06.14 //MWLST540	EQU	$
;// 03.06.14 //		LDA	<WORKE
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //;
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //MWLST560	EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	MWLST560	;
;// 03.06.14 //;					;
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP002],Y
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		STA	<WORK8
;// 03.06.14 //		DEC	<WORKC
;// 03.06.14 //		BNE	MWLST540	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //MWLST570	EQU	$
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		SEC
;// 03.06.14 //		SBC	#00080H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		TAY
;// 03.06.14 //		JSR	MWST700		; up,down buffer set
;// 03.06.14 //;
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		LDX	#mwald0
;// 03.06.14 //		JSR	UTST040		; 3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		PLA			; (A) pull
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //MWLST580	EQU	$
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		LDA	UNITDT+006H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //		LDA	UNITDT+008H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		LDA	UNITDT+00AH,X
;// 03.06.14 //		STA	[<BFP100],Y
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //		DEC	<WORKE
;// 03.06.14 //		BNE	MWLST580	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		JMP	UTST020		; 3x3 unit set (coner)
;// 03.06.14 //;
;
;************************************************************************
;*		Move wall : WRITE (Left)		(MVWLST6)	*
;************************************************************************
MVWLST6		EQU	$
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		STY	!BG1MPT		; move dot pointer set
;// 03.06.14 //		LDA	MWLDT1,Y
;// 03.06.14 //		STA	<WORKC
;// 03.06.14 //;
;// 03.06.14 //		JSR	MWST200		; check
;// 03.06.14 //		BCS	MWLST615	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		LDY	<WORKC
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //MWLST610	EQU	$
;// 03.06.14 //		DEC	A
;// 03.06.14 //		DEC	A
;// 03.06.14 //		DEY
;// 03.06.14 //		BNE	MWLST610	; end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		STA	<WORK8
;// 03.06.14 //MWLST615	EQU	$
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		LDX	#mwald3
;// 03.06.14 //		JSR	UTST040		;3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT0,Y
;// 03.06.14 //		STA	<WORKE		; wall counter set
;// 03.06.14 //		PHA			; (A) push
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00180H
;// 03.06.14 //		TAY
;// 03.06.14 //MWLST620	EQU	$
;// 03.06.14 //		JSR	UNITST6		; 3x2 unit set (wall)
;// 03.06.14 //		TYA
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00100H
;// 03.06.14 //		TAY
;// 03.06.14 //		DEC	<WORKE
;// 03.06.14 //		BNE	MWLST620	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		JSR	UTST020		; 3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		PLA			; (A) pull
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ADC	#00006H-2
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00008H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //;// 03.04.24 //		LDA	!INFSTT
;// 03.06.14 //;// 03.04.24 //		AND	BITCD0
;// 03.06.14 //		LDA	!EMYSTT
;// 03.06.14 //		AND	BITCD0+6
;// 03.06.14 //		BEQ	MWLST680	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00006H
;// 03.06.14 //		STA	<WORK6
;// 03.06.14 //		LDX	#mwalc1
;// 03.06.14 //MWLST640	EQU	$
;// 03.06.14 //		LDA	<WORKE
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //		LDY	<WORK6
;// 03.06.14 //;
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //MWLST660	EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		TYA
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		TAY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	MWLST660	;
;// 03.06.14 //;					;
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //;
;// 03.06.14 //		INC	<WORK6
;// 03.06.14 //		INC	<WORK6
;// 03.06.14 //		DEC	<WORKC
;// 03.06.14 //		BNE	MWLST640	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //MWLST680	EQU	$
;// 03.06.14 //		JMP	MWST800		; left,right buffer set
;// 03.06.14 //;
;
;************************************************************************
;*		Move wall : WRITE (Right)		(MVWLST7)	*
;************************************************************************
MVWLST7		EQU	$
;// 03.06.14 //		LDA	<XSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		LDA	MWLDT0,Y
;// 03.06.14 //		PHA			; (A) push
;// 03.06.14 //;
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ADC	#00006H-2
;// 03.06.14 //		STA	<WORKE
;// 03.06.14 //		LDA	<YSTCNT
;// 03.06.14 //		ASL	A
;// 03.06.14 //		TAY
;// 03.06.14 //		STY	!BG1MPT		; move dot pointer set
;// 03.06.14 //		LDA	MWLDT1,Y
;// 03.06.14 //		STA	<WORKC
;// 03.06.14 //;
;// 03.06.14 //		JSR	MWST200		; check
;// 03.06.14 //		BCS	MWLST770	; set ok ?
;// 03.06.14 //;					; no
;// 03.06.14 //		LDX	#mwalc1
;// 03.06.14 //MWLST740	EQU	$
;// 03.06.14 //		LDA	<WORKE
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //;
;// 03.06.14 //		LDA	UNITDT+000H,X
;// 03.06.14 //		STA	[<BFP000],Y
;// 03.06.14 //MWLST760	EQU	$
;// 03.06.14 //		LDA	UNITDT+002H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //		TYA
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00080H
;// 03.06.14 //		TAY
;// 03.06.14 //		DEC	<WORKA
;// 03.06.14 //		BNE	MWLST760	;
;// 03.06.14 //;					;
;// 03.06.14 //		LDA	UNITDT+004H,X
;// 03.06.14 //		STA	[<BFP080],Y
;// 03.06.14 //;
;// 03.06.14 //		INC	<WORK8
;// 03.06.14 //		INC	<WORK8
;// 03.06.14 //		DEC	<WORKC
;// 03.06.14 //		BNE	MWLST740	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //MWLST770	EQU	$
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		DEY
;// 03.06.14 //		DEY
;// 03.06.14 //		STY	<WORK6
;// 03.06.14 //		JSR	MWST800		; left,right buffer set
;// 03.06.14 //;
;// 03.06.14 //		LDY	<WORK8
;// 03.06.14 //		LDX	#mwald2
;// 03.06.14 //		JSR	UTST040		;3x3 unit set (coner)
;// 03.06.14 //;
;// 03.06.14 //		PLA			; (A) pull
;// 03.06.14 //		STA	<WORKE		; wall counter set
;// 03.06.14 //		LDA	<WORK8
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00180H
;// 03.06.14 //		TAY
;// 03.06.14 //MWLST780	EQU	$
;// 03.06.14 //		JSR	UNITST6		; 3x2 unit set (wall)
;// 03.06.14 //		TYA
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	#00100H
;// 03.06.14 //		TAY
;// 03.06.14 //		DEC	<WORKE
;// 03.06.14 //		BNE	MWLST780	; set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		JMP	UTST020		; 3x3 unit set (coner)
;
;
;
;
;
MWST000		EQU	$
		STZ	!BG1MBF
		STZ	!BG1MFG
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	#000H
		TXY
		LDA	<INFDF0
		CMP	#inf_wre
		BCC	MWST020		; move wall ?
;					; yes
		CMP	#inf_wue+1
		BCC	MWST040		; move wall ?
;					; no
MWST020		EQU	$
		LDY	#002H
		INX
		LDA	<INFDF1
		CMP	#inf_wre
		BCC	MWST080		; move wall ?
;					; yes
		CMP	#inf_wue+1
		BCS	MWST080		; move wall ?
;					; yes
MWST040		EQU	$
;//03.04.05 //		LDA	!INFSTT+1
;// 03.04.05 //		AND	BITCD0+1,Y
;// 03.04.05 //		BEQ	MWST080		; open ?
;// 03.04.05 //;					; yes
;<<< 03.09.05 >>>		LDA	!INFONFG
;<<< 03.09.05 >>>		BEQ	MWST080		; open ?
;<<< 03.09.05 >>>;					; yes
		LDA	!EMYSTT+1
		AND	BITCD0+6+1,Y
		BEQ	MWST080		; open ?
;					; yes
		STZ	!BGALCKF
		STZ	<INFDF0,X
		STZ	!GSUBFG
;
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
		RTS
;
MWST080		EQU	$
MWST280		EQU	$
		REP	#00110000B	; memory,index 16bit mode
		SEC
		RTS
;
;
;// 03.06.14 //;
;// 03.06.14 //MWST200		EQU	$
;// 03.06.14 //		STZ	!BG1MBF
;// 03.06.14 //		INC	!B1MFLG
;// 03.06.14 //;
;// 03.06.14 //		MEM8
;// 03.06.14 //		IDX8
;// 03.06.14 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.06.14 //;
;// 03.06.14 //		LDX	#000H
;// 03.06.14 //		TXY
;// 03.06.14 //		LDA	<INFDF0
;// 03.06.14 //		CMP	#inf_wre
;// 03.06.14 //		BCC	MWST220		; move wall ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		CMP	#inf_wue+1
;// 03.06.14 //		BCC	MWST240		; move wall ?
;// 03.06.14 //;					; no
;// 03.06.14 //MWST220		EQU	$
;// 03.06.14 //		LDY	#002H
;// 03.06.14 //		INX
;// 03.06.14 //		LDA	<INFDF1
;// 03.06.14 //		CMP	#inf_wre
;// 03.06.14 //		BCC	MWST280		; move wall ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		CMP	#inf_wue+1
;// 03.06.14 //		BCS	MWST280		; move wall ?
;// 03.06.14 //;					; yes
;// 03.06.14 //MWST240		EQU	$
;// 03.06.14 //;// 03.04.05 //		LDA	!INFSTT+1
;// 03.06.14 //;// 03.04.05 //		AND	BITCD0+1,Y
;// 03.06.14 //;// 03.04.05 //		BEQ	MWST280		; open ?
;// 03.06.14 //;// 03.04.05 //;					; yes
;// 03.06.14 //		LDA	!INFONFG
;// 03.06.14 //		BEQ	MWST280		; open ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		STZ	<INFDF0,X
;// 03.06.14 //;
;// 03.06.14 //		MEM16
;// 03.06.14 //		IDX16
;// 03.06.14 //		REP	#00110001B	; memory,index 16bit mode & CLC
;// 03.06.14 //		RTS
;// 03.06.14 //;
;
;// 03.06.14 //;
;// 03.06.14 //MWST700		EQU	$		; up,down buffer set
;// 03.06.14 //		LDX	#0007EH
;// 03.06.14 //		LDA	#001ECH
;// 03.06.14 //MWST720		EQU	$
;// 03.06.14 //		STA	>B1CWBF,X	; BG.1 write buffer null set
;// 03.06.14 //		DEX
;// 03.06.14 //		DEX
;// 03.06.14 //		BPL	MWST720		; end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	<WORK6
;// 03.06.14 //		AND	#0000111110000000B
;// 03.06.14 //		LSR	A
;// 03.06.14 //		LSR	A
;// 03.06.14 //		STA	<WORKA
;// 03.06.14 //		TYA
;// 03.06.14 //		AND	#01000H
;// 03.06.14 //		BEQ	MWST740		; 
;// 03.06.14 //;					;
;// 03.06.14 //		LDA	#00800H
;// 03.06.14 //		TSB	<WORKA
;// 03.06.14 //MWST740		EQU	$
;// 03.06.14 //		LDA	<WORKA
;// 03.06.14 //		ORA	#01000H		;// 02.09.21 //
;// 03.06.14 //		STA	!B1CWPT		; write point set
;// 03.06.14 //;
;// 03.06.14 //		LDA	<WORK4
;// 03.06.14 //		CMP	#MVWL4
;// 03.06.14 //		BCC	MWST780		; write ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	<WORK6
;// 03.06.14 //		AND	#0000000001111111B
;// 03.06.14 //		TAX
;// 03.06.14 //		LDY	<WORKE
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //;
;// 03.06.14 //		LDA	#0289DH
;// 03.06.14 //MWST760		EQU	$
;// 03.06.14 //		STA	>B1CWBF,X
;// 03.06.14 //		INX
;// 03.06.14 //		INX
;// 03.06.14 //		DEY
;// 03.06.14 //		BNE	MWST760		; data set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //MWST780		EQU	$
;// 03.06.14 //		RTS
;// 03.06.14 //;
;
MWST800		EQU	$		; left,right buffer set
		LDX	#0007EH
		LDA	#001ECH
MWST820		EQU	$
		STA	>B1CWBF,X	; BG.1 write buffer null set
		DEX
		DEX
		BPL	MWST820		; end ?
;					; yes
		LDA	<WORK6
		AND	#0000000000111111B
		LSR	A
		STA	<WORKA
		TYA
		AND	#00040H
		BEQ	MWST840		;
;					;
		LDA	#00400H
		TSB	<WORKA
MWST840		EQU	$
		LDA	<WORKA
		ORA	#01000H		;// 02.09.21 //
		STA	!B1CWPT		; write point set
;
;// 03.06.14 //		LDA	<WORK4
;// 03.06.14 //		CMP	#MVWL4
;// 03.06.14 //		BCC	MWST880		; write ?
;// 03.06.14 //;					; yes
;// 03.06.14 //		LDA	<WORK6
;// 03.06.14 //		AND	#0001111110000000B
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ASL	A
;// 03.06.14 //		XBA
;// 03.06.14 //		TAX
;// 03.06.14 //		LDY	<WORKE
;// 03.06.14 //		INY
;// 03.06.14 //		INY
;// 03.06.14 //;
;// 03.06.14 //		LDA	#0289DH
;// 03.06.14 //MWST860		EQU	$
;// 03.06.14 //		STA	>B1CWBF,X
;// 03.06.14 //		INX
;// 03.06.14 //		INX
;// 03.06.14 //		DEY
;// 03.06.14 //		BNE	MWST860		; data set end ?
;// 03.06.14 //;					; yes
;// 03.06.14 //MWST880		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Certen set				(CRTNST0)	*
;************************************************************************
CRTNST0		EQU	$
		JSR	STCTST		; counter reset
;
		STX	<WORKA
CTNS040		EQU	$
		LDX	<WORKA
		JSR	UNITST1		; 4x4 unit set
		INY
		INY
		INY
		INY
		DEC	<XSTCNT
		BNE	CTNS040		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Certen set				(CRTNST1)	*
;************************************************************************
CRTNST1		EQU	$
		JSR	STCTST		; counter reset
;
		STX	<WORKA
CTNS140		EQU	$
		LDX	<WORKA
		JSR	UNITST1		; 4x4 unit set
		TYA
		CLC
		ADC	#002F8H
		TAY
		DEC	<XSTCNT
		BNE	CTNS140		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Yoroi set				(YRISET)	*
;************************************************************************
YRISET		EQU	$
		JSR	STCTST		; counter reset
YRIS40		EQU	$
		LDX	#yoroid
		LDA	#00002H
		JSR	UNITST0		; 2x3 unit set
		INY
		INY
		INY
		INY
		DEC	<XSTCNT
		BNE	YRIS40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Width Dammy-swich set			(DMYSWST)	*
;************************************************************************
DMYSWST		EQU	$
;
;************************************************************************
;*		Width Non-move block set		(WNMVBLKST)	*
;************************************************************************
WNMVBLKST	EQU	$
		JSR	STCTST		; counter reset
WNMBS40		EQU	$
		JSR	UNITST7		; 2x2 unit set
		INY
		INY
		INY
		INY
		DEC	<XSTCNT
		BNE	WNMBS40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Length Non-move block set		(LNMVBLKST)	*
;************************************************************************
LNMVBLKST	EQU	$
		JSR	STCTST		; counter reset
LNMBS40		EQU	$
		JSR	UNITSTB		; 2x2 unit set
		CLC
		ADC	#00100H
		TAY
		DEC	<XSTCNT
		BNE	LNMBS40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Pillar set  (length)			(PILRST0)	*
;************************************************************************
PILRST0		EQU	$
;
;************************************************************************
;*		Tall dai set  (length)			(TLDAIS0)	*
;************************************************************************
TLDAIS0		EQU	$
		JSR	STCTST		; counter reset
		STX	<WORKC
PLRS040		EQU	$
		LDX	<WORKC
		LDA	#00002H
		JSR	UNITST2		; 2x4 unit set
		TYA
		CLC
		ADC	#002FCH
		TAY
		DEC	<XSTCNT
		BNE	PLRS040		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Pillar set  (width)			(PILRST1)	*
;************************************************************************
PILRST1		EQU	$
;
;************************************************************************
;*		Tall dai set  (width)			(TLDAIS1)	*
;************************************************************************
TLDAIS1		EQU	$
		JSR	STCTST		; counter reset
		STX	<WORKC
PLRS140		EQU	$
		LDX	<WORKC
		LDA	#00002H
		JSR	UNITST2		; 2x4 unit set
		TYA
		CLC
		ADC	#00008H
		TAY
		DEC	<XSTCNT
		BNE	PLRS140		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		UP-Window set				(UWNDWST)	*
;************************************************************************
UWNDWST		EQU	$
;
;************************************************************************
;*		DOWN-Window set				(DWNDWST)	*
;************************************************************************
DWNDWST		EQU	$
		STX	<WORKA
;
		JSR	STCTST		; counter reset
UWNWS40		EQU	$
		LDX	<WORKA
		LDA	#00004H
		JSR	UNITST0		; 4x3 unit set
		TYA
		CLC
		ADC	#00008H
		TAY
		DEC	<XSTCNT
		BNE	UWNWS40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		LEFT-Window set				(LWNDWST)	*
;************************************************************************
LWNDWST		EQU	$
;
;************************************************************************
;*		RIGHT-Window set			(RWNDWST)	*
;************************************************************************
RWNDWST		EQU	$
		STX	<WORKA
;
		JSR	STCTST		; set counter set
LWNWS40		EQU	$
		LDX	<WORKA
		LDA	#00003H
		JSR	UNITST2		; 3x4 unit set
		TYA
		CLC
		ADC	#003FAH
		TAY
		DEC	<XSTCNT
		BNE	LWNWS40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Twin chir set				(TWCIRST)	*
;************************************************************************
TWCIRST		EQU	$
		JSR	STCTST		; counter reset
TWCS40		EQU	$
		LDX	#twcrdt
		JSR	UNITSTB		; 2x2 unit set
		CLC
		ADC	#00200H
		TAY
		TXA
		CLC
		ADC	#00008H
		TAX
		JSR	UNITSTB		; 2x2 unit set
;
		LDA	<WORK8
		CLC
		ADC	#00008H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	TWCS40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Big table set				(BGTBLST)	*
;************************************************************************
BGTBLST		EQU	$
		INC	<XSTCNT
		ASL	<YSTCNT
		INC	<YSTCNT
;
		JSR	BTBLS220	;
		INX
		INX
		INX
		INX
		INX
		INX
		INX
		INX
BTBLS40		EQU	$
		JSR	BTBLS220	;
		DEC	<YSTCNT
		BNE	BTBLS40		;
;					;
		JSR	BTBLS200	;
BTBLS200	EQU	$
		INX
		INX
		INX
		INX
		INX
		INX
		INX
		INX
BTBLS220	EQU	$
		LDA	<XSTCNT
		STA	<WORKE
;
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
BTBLS240	EQU	$
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	UNITDT+004H,X
		STA	[<BFP004],Y
		INY
		INY
		INY
		INY
		DEC	<WORKE
		BNE	BTBLS240	;
;					;
		LDA	UNITDT+006H,X
		STA	[<BFP002],Y
;
		LDA	<WORK8
		CLC
		ADC	#00080H
		STA	<WORK8
		TAY
		RTS
;
;
;
;************************************************************************
;*		Toge-block set				(TGBLKST)	*
;************************************************************************
TGBLKST		EQU	$
		INC	<XSTCNT
		INC	<YSTCNT
TGBKS20		EQU	$
		LDA	<XSTCNT
		STA	<WORKE
TGBKS40		EQU	$
		JSR	UNITST7		; 2x2 unit set
		DEC	<WORKE
		BNE	TGBKS40		; 1-line end ?
;					; yes
		LDA	<WORK8
		CLC
		ADC	#00100H
		STA	<WORK8
		TAY
		DEC	<YSTCNT
		BNE	TGBKS20		; end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Small pillar  (left)			(SPILRS2)	*
;*			      (right)			(SPILRS3)	*
;************************************************************************
SPILRS2		EQU	$
SPILRS3		EQU	$
		JSR	STCTST		; counter reset
SPLR240		EQU	$
		JSR	UNITSTB		; 2x2 unit set
		CLC
		ADC	#00080H*12
		TAY
		DEC	<XSTCNT
		BNE	SPLR240		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Small pillar  (up)			(SPILRS0)	*
;*			      (down)			(SPILRS1)	*
;************************************************************************
SPILRS0		EQU	$
SPILRS1		EQU	$
		JSR	STCTST		; counter reset
SPLR040		EQU	$
		JSR	UNITSTB		; 2x2 unit set
		CLC
		ADC	#00002H*12+4-100H
		TAY
		DEC	<XSTCNT
		BNE	SPLR040		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Big taki				(BTAKIST)	*
;************************************************************************
BTAKIST		EQU	$
		JSR	STCTST		; counter reset
		ASL	<XSTCNT
;
		JSR	UNITST8		; 1x5 unit set
		TXA
		CLC
		ADC	#0000AH
		TAX
		INY
		INY
BTKS40		EQU	$
		JSR	UNITST8		; 1x5 unit set
		INY
		INY
		DEC	<XSTCNT
		BNE	BTKS40		; center set end ?
;					; yes
		TXA
		CLC
		ADC	#0000AH
		TAX
		JMP	UNITST8		; 1x5 unit set
;
;
;************************************************************************
;*		Small taki				(STAKIST)	*
;************************************************************************
STAKIST		EQU	$
		JSR	STCTST		; counter reset
		ASL	<XSTCNT
;
		LDA	#00001H
		JSR	UNITST0		; 1x3 unit set
STKS40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		INY
		INY
		DEC	<XSTCNT
		BNE	STKS40		; center set end ?
;					; yes
		INX
		INX
		INX
		INX
		INX
		INX
		LDA	#00001H
		JMP	UNITST0		; 1x3 unit set
;
;
;
;************************************************************************
;*		Beltconver waku	- 0			(BLTWKS0)	*
;************************************************************************
BLTWKS0		EQU	$
;
;************************************************************************
;*		Beltconver waku	- 1			(BLTWKS0)	*
;************************************************************************
BLTWKS1		EQU	$
		JSR	STCTST		; counter reset
		LDA	#00008H
		JMP	UNITST3		; unit set
;
;
;
;************************************************************************
;*		STAND					(STAND0ST)	*
;************************************************************************
STAND0ST	EQU	$
		JSR	STCTST		; counter reset
		ASL	<XSTCNT
;
		JSR	UNITSTE		; 1x3 unit set
		INY
		INY
		TXA
		CLC
		ADC	#00006H
		TAX
STDS20		EQU	$
		JSR	UNITSTE		; 1x3 unit set
		INY
		INY
		DEC	<XSTCNT
		BNE	STDS20		; set end ?
;					; yes
		TXA
		CLC
		ADC	#00006H
		TAX
		JMP	UNITSTE		; 1x3 unit set
;
;
;
;************************************************************************
;*		Chimney					(CHMNYST)	*
;************************************************************************
CHMNYST		EQU	$
;// 03.06.20 //		JSR	STCTST		; counter reset
;// 03.06.20 //CHMY40		EQU	$
;// 03.06.20 //		LDX	#chmnyd
;// 03.06.20 //		JSR	UNITSTE		; 1x3 unit set
;// 03.06.20 //		TYA
;// 03.06.20 //		CLC
;// 03.06.20 //		ADC	#00200H
;// 03.06.20 //		TAY
;// 03.06.20 //		LDA	UNITDT+006H,X
;// 03.06.20 //		STA	[<BFP000],Y
;// 03.06.20 //		TYA
;// 03.06.20 //		SEC
;// 03.06.20 //		SBC	#001FEH
;// 03.06.20 //		TAY
;// 03.06.20 //		TXA
;// 03.06.20 //		CLC
;// 03.06.20 //		ADC	#00008H
;// 03.06.20 //		TAX
;// 03.06.20 //		JSR	UNITSTE		; 1x3 unit set
;// 03.06.20 //		TYA
;// 03.06.20 //		CLC
;// 03.06.20 //		ADC	#00200H
;// 03.06.20 //		TAY
;// 03.06.20 //		LDA	UNITDT+006H,X
;// 03.06.20 //		STA	[<BFP000],Y
;// 03.06.20 //		TYA
;// 03.06.20 //		SEC
;// 03.06.20 //		SBC	#001FAH
;// 03.06.20 //		TAY
;// 03.06.20 //		DEC	<XSTCNT
;// 03.06.20 //		BNE	CHMY40		; set end ?
;// 03.06.20 //;					; yes
;// 03.06.20 //		RTS
;// 03.06.20 //;
;
;
;
;************************************************************************
;*		Oven					(OVENST0)	*
;************************************************************************
OVENST0		EQU	$
;// 03.06.20 //		JSR	STCTST		; counter reset
;// 03.06.20 //OVEN040		EQU	$
;// 03.06.20 //		LDX	#ovend0
;// 03.06.20 //		JSR	UNITSTE		; 1x3 unit set
;// 03.06.20 //		TXA
;// 03.06.20 //		CLC
;// 03.06.20 //		ADC	#00006H
;// 03.06.20 //		TAX
;// 03.06.20 //		INY
;// 03.06.20 //		INY
;// 03.06.20 //		JSR	UNITSTE		; 1x3 unit set
;// 03.06.20 //		TYA
;// 03.06.20 //		CLC
;// 03.06.20 //		ADC	#00006H
;// 03.06.20 //		TAY
;// 03.06.20 //		DEC	<XSTCNT
;// 03.06.20 //		BNE	OVEN040		; set end ?
;// 03.06.20 //;					; yes
;// 03.06.20 //		RTS
;// 03.06.20 //;
;
;
;************************************************************************
;*		Rack					(RACKST)	*
;************************************************************************
RACKST		EQU	$
		JSR	STCTST		; counter reset
;
		LDA	#00001H
		JSR	UNITST2		; 1x4 unit set
RACKS20		EQU	$
		LDA	#00002H
		JSR	UNITST2		; 2x4 unit set
		TXA
		SEC
		SBC	#00010H
		TAX
		DEC	<XSTCNT
		BNE	RACKS20		; set end ?
;					; yes
		TXA
		CLC
		ADC	#00010H
		TAX
		JMP	UNITSTD		; 1x4 unit set
;
;
;
;************************************************************************
;*		Down Wipe-water set			(WPWTRST)	*
;************************************************************************
WPWTRST		EQU	$
		LDA	<XSTCNT
		ASL	A
		TAX
		LDA	WRWPPD0,X
		STA	<XSTCNT
		LDA	WRWPPD1,X
		STA	!WRWPH1		; y-hankei set
		LDA	<YSTCNT
		ASL	A
		TAX
		LDA	WRWPPD0,X
		STA	<YSTCNT
		LDA	WRWPPD1,X
		STA	!WRWPH0		; x-hankei set
		SEC
		SBC	#00018H
		STA	!WRWPED		; end point set
;
		TYA
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
		STA	!WRWPXP
		TYA
		AND	#0001111110000000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	!WRWPYP
		LDA	<YSTCNT
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	!SCVCT
		CLC
		ADC	!WRWPYP
		STA	!WRWPYP
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;// 03.04.24 //		LDA	!INFSTT+1
;// 03.04.24 //		AND	BITCD0+11
		LDA	!EMYSTT+1
		AND	BITCD0+9
		BEQ	WWRS40		; off ?
;					; yes
		STZ	<INFDF1
		STZ	!GSUBFG		; sub-gamen off
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!UDSCKP3
		STA	!UDSCKP2
;// 03.05.09 //		STA	!UDSCKP5
		LDA	!UDSCKP4
;// 03.05.09 //		CMP	!UDSCKP3
;// 03.05.09 //		BEQ	WWRS10		; water-side SETP on ?
;// 03.05.09 //;					; no
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	!UDSCKP3
;// 03.05.09 //WWRS10		EQU	$
		STA	!UDSCKP6
		STZ	!UDSCKP4
		STZ	!UDSCKP3	; water-setp ==> normal-setp change
;
		LDA	!UDSCKPB
		STA	!UDSCKPA
		STZ	!UDSCKPB
WWRS15		EQU	$
		LDA	<XSTCNT
		DEC	A
		ASL	A
		ASL	A
		STA	<WORKE
		LDA	<WORK8
		ADC	<WORKE
		STA	<WORK8
		LDA	<YSTCNT
		DEC	A
		XBA
		STA	<WORKE
		LDA	<WORK8
		ADC	<WORKE
		TAX
HISIST		EQU	$
		LDY	#haisui
		LDA	#0004H
		STA	<WORKE
WWRS20		EQU	$
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
		BNE	WWRS20		; unit set end ?
;					; yes
		RTS
;
;
WWRS40		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#watrd1
		LDY	<WORK8
WWRS190		EQU	$
		LDA	<XSTCNT
		JSR	FLST200		; yuka set
		LDA	<WORK8
		CLC
		ADC	#00200H
		STA	<WORK8
		TAY
		DEC	<YSTCNT
		BNE	WWRS190		; end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		UP Wipe-water set			(WPWTRS1)	*
;************************************************************************
WPWTRS1		EQU	$
		LDA	<XSTCNT
		ASL	A
		TAX
		LDA	WRWPPD0,X
		STA	<XSTCNT
		LDA	WRWPPD1,X
		SEC
		SBC	#00018H
		STA	!WRWPH1		; x-hankei set
		LDA	<YSTCNT
		ASL	A
		TAX
		LDA	WRWPPD0,X
		STA	<YSTCNT
		LDA	WRWPPD1,X
		SEC
		SBC	#00008H
		STA	!WRWPED		; end point set
		SEC
		SBC	#00018H
		STA	!WRWPH0		; y-hankei set
		STZ	!WRWPH2
;
		TYA
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
		STA	!WRWPXP
		TYA
		AND	#0001111110000000B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	!WRWPYP
		LDA	<YSTCNT
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	!SCVCT
		CLC
		ADC	!WRWPYP
		SEC
		SBC	#00008H
		STA	!WRWPYP
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;// 03.04.24 //		LDA	!INFSTT+1
;// 03.04.24 //		AND	BITCD0+11
		LDA	!EMYSTT+1
		AND	BITCD0+9
		BEQ	WWR140		; off ?
;					; yes
		STZ	<INFDF1
		BRA	WWRS200
;
;
WWR140		EQU	$
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!UDSCKP3
		STA	!UDSCKP2
;// 03.05.09 //		STA	!UDSCKP5
		LDA	!UDSCKP4
;// 03.05.09 //		CMP	!UDSCKP3
;// 03.05.09 //		BEQ	WWR160		; water-side SETP on ?
;// 03.05.09 //;					; no
;// 03.05.09 //		CLC
;// 03.05.09 //		ADC	!UDSCKP3
;// 03.05.09 //WWR160		EQU	$
		STA	!UDSCKP6
		STZ	!UDSCKP4
		STZ	!UDSCKP3	; water-setp ==> normal-setp change
;
		LDA	!UDSCKPB
		STA	!UDSCKPA
		STZ	!UDSCKPB
;
		STZ	!GSUBFG		; sub-gamen off
WWRS200		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
WWRS220		EQU	$
		LDA	<YSTCNT
		ASL	A
		TAX
		LDA	WRWPPD2,X
		STA	<WORK4
;
		LDX	#watrd1
WWRS240		EQU	$
		LDY	<WORK8
		LDA	<XSTCNT
		STA	<WORKA
WWRS260		EQU	$
		LDA	FLORDT+000H,X
		STA	[<BFP000],Y
		LDA	FLORDT+002H,X
		STA	[<BFP002],Y
		LDA	FLORDT+004H,X
		STA	[<BFP004],Y
		LDA	FLORDT+006H,X
		STA	[<BFP006],Y
;
		LDA	FLORDT+008H,X
		STA	[<BFP080],Y
		LDA	FLORDT+00AH,X
		STA	[<BFP082],Y
		LDA	FLORDT+00CH,X
		STA	[<BFP084],Y
		LDA	FLORDT+00EH,X
		STA	[<BFP086],Y
		INY
		INY
		INY
		INY
		INY
		INY
		INY
		INY
		DEC	<WORKA
		BNE	WWRS260		; 1 unit end ?
;					; yes
		LDA	<WORK8
		CLC
		ADC	#00100H
		STA	<WORK8
		DEC	<WORK4
		BNE	WWRS240		; 1 line end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Lift yoko set				(LFTYOKST)	*
;************************************************************************
LFTYOKST	EQU	$
		JSR	STCTST		; set counter reset
		INC	<XSTCNT
;
		JMP	UTSTC00		; ?x1 unit set
;
;
;************************************************************************
;*		Lift tate set				(LFTTATST)	*
;************************************************************************
LFTTATST	EQU	$
		JSR	STCTST		; set counter reset
		INC	<XSTCNT
LFTT40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	LFTT40		; set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Taimatsu up set				(TIMTST0)	*
;************************************************************************
TIMTST0		EQU	$
;
;************************************************************************
;*		Taimatsu down set			(TIMTST1)	*
;************************************************************************
TIMTST1		EQU	$
		JSR	STCTST		; counter reset
;
		LDA	#00002H*(4+8)
		JMP	UNITST3
;
;
;************************************************************************
;*		Taimatsu left set			(TIMTST2)	*
;************************************************************************
TIMTST2		EQU	$
;
;************************************************************************
;*		Taimatsu right set			(TIMTST3)	*
;************************************************************************
TIMTST3		EQU	$
		STX	<WORKA
;
		JSR	STCTST		; counter reset
TIMT240		EQU	$
		LDX	<WORKA
		LDA	#00002H
		JSR	UNITST2		; 4x2 unit set
;
		TYA
		CLC
		ADC	#001FCH+00400H
		TAY
		DEC	<XSTCNT
		BNE	TIMT240		; set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Chapel up-window up set			(CWNDST0)	*
;************************************************************************
CWNDST0		EQU	$
;
;************************************************************************
;*		Chapel up-window down set		(CWNDST1)	*
;************************************************************************
CWNDST1		EQU	$
;
;************************************************************************
;*		Chapel down-window up set		(CWNDST4)	*
;************************************************************************
CWNDST4		EQU	$
;
;************************************************************************
;*		Chapel down-window down set		(CWNDST5)	*
;************************************************************************
CWNDST5		EQU	$
;// 03.07.05 //		STX	<WORKA
;// 03.07.05 //;
;// 03.07.05 //		JSR	STCTST		; counter reset
;// 03.07.05 //CWND040		EQU	$
;// 03.07.05 //		LDX	<WORKA
;// 03.07.05 //		LDA	#00004H
;// 03.07.05 //		JSR	UNITST0		; 4x3 unit set
;// 03.07.05 //		INY
;// 03.07.05 //		INY
;// 03.07.05 //		INY
;// 03.07.05 //		INY
;// 03.07.05 //		DEC	<XSTCNT
;// 03.07.05 //		BNE	CWND040		; set end ?
;// 03.07.05 //;					; yes
		RTS
;
;
;************************************************************************
;*		Chapel up-window left set		(CWNDST2)	*
;************************************************************************
CWNDST2		EQU	$
;
;************************************************************************
;*		Chapel up-window right set		(CWNDST3)	*
;************************************************************************
CWNDST3		EQU	$
;
;************************************************************************
;*		Chapel down-window left set		(CWNDST6)	*
;************************************************************************
CWNDST6		EQU	$
;
;************************************************************************
;*		Chapel down-window right set		(CWNDST7)	*
;************************************************************************
CWNDST7		EQU	$
		STX	<WORKA
;
		JSR	STCTST		; counter reset
CWND240		EQU	$
		LDX	<WORKA
		LDA	#00003H
		JSR	UNITST2		; 3x4 unit set
		TYA
		CLC
		ADC	#001FAH+00100H
		TAY
		DEC	<XSTCNT
		BNE	CWND240		; set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Chapel stage set			(CSTGEST)	*
;************************************************************************
CSTGEST		EQU	$
		LDA	<BFP000
		CMP	#04000H
		BNE	CSTGS10		; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		TAY
CSTGS10		EQU	$
		TYX			; (X) <-- (Y) : set address
		LDY	#cstged
		INC	<XSTCNT
		LDA	<YSTCNT
		ASL	A
		CLC
		ADC	#00005H
		STA	<YSTCNT
CSTGS20		EQU	$
		JSR	CSTGS100	; unit set
		DEC	<YSTCNT
		BNE	CSTGS20		;
;					;
		INY
		INY
		JSR	CSTGS100	; unit set
		INY
		INY
CSTGS100	EQU	$
		PHX			; (X) push
;
		LDA	<XSTCNT
		STA	<WORKA
;
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+006H,Y
CSTGS120	EQU	$
		STA	>ROOMBF+002H,X
		INX
		INX
		DEC	<WORKA
		BNE	CSTGS120	;
;					;
		LDA	UNITDT+00CH,Y
		STA	>ROOMBF+002H,X
;
		LDA	UNITDT+012H,Y
		STA	>ROOMBF+004H,X
		STA	>ROOMBF+006H,X
		STA	>ROOMBF+008H,X
		STA	>ROOMBF+00AH,X
;
		LDA	<XSTCNT
		STA	<WORKA
;
		LDA	UNITDT+018H,Y
		STA	>ROOMBF+00CH,X
		LDA	UNITDT+01EH,Y
CSTGS140	EQU	$
		STA	>ROOMBF+00EH,X
		INX
		INX
		DEC	<WORKA
		BNE	CSTGS140	;
;					;
		LDA	UNITDT+024H,Y
		STA	>ROOMBF+00EH,X
;
		PLA			; (X) pull
		CLC
		ADC	#00080H
		TAX
		RTS
;
;// 03.04.01 //CSTGEST		EQU	$
;// 03.04.01 //		LDA	<BFP000
;// 03.04.01 //		CMP	#04000H
;// 03.04.01 //		BNE	CSTGS10		; BG1. set ?
;// 03.04.01 //;					; yes
;// 03.04.01 //		TYA
;// 03.04.01 //		ORA	#02000H
;// 03.04.01 //		TAY
;// 03.04.01 //CSTGS10		EQU	$
;// 03.04.01 //		TYX			; (X) <-- (Y) : set address
;// 03.04.01 //		LDY	#cstged
;// 03.04.01 //		LDA	<XSTCNT
;// 03.04.01 //		ASL	A
;// 03.04.01 //		INC	A
;// 03.04.01 //		INC	A
;// 03.04.01 //		STA	<XSTCNT
;// 03.04.01 //		LDA	<YSTCNT
;// 03.04.01 //		ASL	A
;// 03.04.01 //		CLC
;// 03.04.01 //		ADC	#00005H
;// 03.04.01 //		STA	<YSTCNT
;// 03.04.01 //CSTGS20		EQU	$
;// 03.04.01 //		JSR	CSTGS100	; unit set
;// 03.04.01 //		DEC	<YSTCNT
;// 03.04.01 //		BNE	CSTGS20		;
;// 03.04.01 //;					;
;// 03.04.01 //		INY
;// 03.04.01 //		INY
;// 03.04.01 //		JSR	CSTGS100	; unit set
;// 03.04.01 //		INY
;// 03.04.01 //		INY
;// 03.04.01 //CSTGS100	EQU	$
;// 03.04.01 //		PHX			; (X) push
;// 03.04.01 //;
;// 03.04.01 //		LDA	<XSTCNT
;// 03.04.01 //		STA	<WORKA
;// 03.04.01 //;
;// 03.04.01 //		LDA	UNITDT+000H,Y
;// 03.04.01 //		STA	>ROOMBF+000H,X
;// 03.04.01 //		LDA	UNITDT+006H,Y
;// 03.04.01 //		STA	>ROOMBF+002H,X
;// 03.04.01 //		STA	>ROOMBF+004H,X
;// 03.04.01 //		LDA	UNITDT+00CH,Y
;// 03.04.01 //		STA	>ROOMBF+006H,X
;// 03.04.01 //;
;// 03.04.01 //		LDA	UNITDT+012H,Y
;// 03.04.01 //CSTGS140	EQU	$
;// 03.04.01 //		STA	>ROOMBF+008H,X
;// 03.04.01 //		INX
;// 03.04.01 //		INX
;// 03.04.01 //		DEC	<WORKA
;// 03.04.01 //		BNE	CSTGS140	;
;// 03.04.01 //;					;
;// 03.04.01 //		LDA	UNITDT+018H,Y
;// 03.04.01 //		STA	>ROOMBF+008H,X
;// 03.04.01 //		LDA	UNITDT+01EH,Y
;// 03.04.01 //		STA	>ROOMBF+00AH,X
;// 03.04.01 //		STA	>ROOMBF+00CH,X
;// 03.04.01 //		LDA	UNITDT+024H,Y
;// 03.04.01 //		STA	>ROOMBF+00EH,X
;// 03.04.01 //;
;// 03.04.01 //		PLA			; (X) pull
;// 03.04.01 //		CLC
;// 03.04.01 //		ADC	#00080H
;// 03.04.01 //		TAX
;// 03.04.01 //		RTS
;
;
;
;
;************************************************************************
;*		Stand tate set				(STAND1ST)	*
;************************************************************************
STAND1ST	EQU	$
		LDA	#00002H
		JSR	STCTS0		; set count set
		ASL	<XSTCNT
;
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
STD1S40		EQU	$
		LDA	UNITDT+004H,X
		STA	[<BFP080],Y
		LDA	UNITDT+006H,X
		STA	[<BFP082],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<XSTCNT
		BNE	STD1S40		;
;					;
		RTS
;
;
;
;
;************************************************************************
;*		Tare-maku set				(TRMAKST)	*
;************************************************************************
TRMAKST		EQU	$
		JSR	STCTST		; set count set
TRMAK40		EQU	$
		LDX	#trmkdt
		LDA	#00002H
		JSR	UNITST2		; 2x4 unit set
		DEC	<XSTCNT
		BNE	TRMAK40		; set end ?
;					; yes
		RTS
;
;
;
;
;========================================================================
;========================================================================
;========================================================================
;==========================  FIX UNIT  ==================================
;========================================================================
;========================================================================
;========================================================================
;
;************************************************************************
;*		Left up coner set			(LUCRST0)	*
;************************************************************************
LUCRST0		EQU	$
;
;************************************************************************
;*		Left down coner set			(LDCRST0)	*
;************************************************************************
LDCRST0		EQU	$
;
;************************************************************************
;*		Right up coner set			(RUCRST0)	*
;************************************************************************
RUCRST0		EQU	$
;
;************************************************************************
;*		Right down coner set			(RDCRST0)	*
;************************************************************************
RDCRST0		EQU	$
;
;************************************************************************
;*		Left up pillar set			(LUPLST0)	*
;************************************************************************
LUPLST0		EQU	$
;
;************************************************************************
;*		Left down pillar set			(LDPLST0)	*
;************************************************************************
LDPLST0		EQU	$
;
;************************************************************************
;*		Right up pillar set			(RUPLST0)	*
;************************************************************************
RUPLST0		EQU	$
;
;************************************************************************
;*		Right down pillar set			(RDPLST0)	*
;************************************************************************
RDPLST0		EQU	$
;
;************************************************************************
;*		Mono set - 0 (4x4 sekizou)		(MONOST0)	*
;************************************************************************
MONOST0		EQU	$
;
;************************************************************************
;*		King chair set				(KCHIRST)	*
;************************************************************************
KCHIRST		EQU	$
;
;************************************************************************
;*		Queen chair set				(QCHIRST)	*
;************************************************************************
QCHIRST		EQU	$
;
;************************************************************************
;*		Danro set				(DANROST)	*
;************************************************************************
DANROST		EQU	$
;
;************************************************************************
;*		Hibi-yuka set (BIG)			(CRSHYKS1)	*
;************************************************************************
CRSHYKS1	EQU	$
;
;************************************************************************
;*		Change-ana				(CNGANAST)	*
;************************************************************************
CNGANAST	EQU	$
;
;************************************************************************
;*		4x4 syougai-butsu			(MONOST2)	*
;************************************************************************
MONOST2		EQU	$
;
;************************************************************************
;*		4x4 hone-yuka				(HONEYKST)	*
;************************************************************************
HONEYKST	EQU	$
;
;************************************************************************
;*		Unit set (4x4)				(UNITST1)	*
;************************************************************************
UNITST1		EQU	$
		LDA	#0004H
;************************************************************************
;*		Unit set (?x4)				(UNITST2)	*
;************************************************************************
UNITST2		EQU	$
		STA	<WORKE
UTST240		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		LDA	UNITDT+006H,X
		STA	[<BFP180],Y
		TXA
		CLC
		ADC	#00008H
		TAX
		INY
		INY
		DEC	<WORKE
		BNE	UTST240		; unit set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Left-up down coner set			(LUCRST8)	*
;************************************************************************
LUCRST8		EQU	$
;
;************************************************************************
;*		Left-down down coner set		(LDCRST8)	*
;************************************************************************
LDCRST8		EQU	$
;
;************************************************************************
;*		Right-up down coner set			(RUCRST8)	*
;************************************************************************
RUCRST8		EQU	$
;
;************************************************************************
;*		Right-down down coner set		(RDCRST8)	*
;************************************************************************
RDCRST8		EQU	$
;
;************************************************************************
;*		Left up down pillar set			(LUPLST8)	*
;************************************************************************
LUPLST8		EQU	$
;
;************************************************************************
;*		Left down down pillar set		(LDPLST8)	*
;************************************************************************
LDPLST8		EQU	$
;
;************************************************************************
;*		Right up down pillar set		(RUPLST8)	*
;************************************************************************
RUPLST8		EQU	$
;
;************************************************************************
;*		Right down down pillar set		(RDPLST8)	*
;************************************************************************
RDPLST8		EQU	$
;
LUCR840		EQU	$
		TXA			; (A) <-- (X)
		TYX			; (X) <-- (Y)
		TAY			; (Y) <-- (A)
;
		LDA	#00004H
LUCR860		EQU	$
		STA	<WORKE
LUCR880		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+180H,X
		STA	>ROOMBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	LUCR880		; unit set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Left up coner pillar set		(LUCPLS0)	*
;************************************************************************
LUCPLS0		EQU	$
;
;************************************************************************
;*		Left down coner pillar set		(LDCPLS0)	*
;************************************************************************
LDCPLS0		EQU	$
;
;************************************************************************
;*		Right up coner pillar set		(RUCPLS0)	*
;************************************************************************
RUCPLS0		EQU	$
;
;************************************************************************
;*		Right down coner pillar set		(RDCPLS0)	*
;************************************************************************
RDCPLS0		EQU	$
		TXA			; (A) <-- (X)
		TYX			; (X) <-- (Y)
		TAY			; (Y) <-- (A)
;
		LDA	#00003H
		BRA	LUCR860
;
;
;
;************************************************************************
;*		Left up coner pillar set		(LUCPLS1)	*
;************************************************************************
LUCPLS1		EQU	$
;
;************************************************************************
;*		Left down coner pillar set		(LDCPLS1)	*
;************************************************************************
LDCPLS1		EQU	$
;
;************************************************************************
;*		Right up coner pillar set		(RUCPLS1)	*
;************************************************************************
RUCPLS1		EQU	$
;
;************************************************************************
;*		Right down coner pillar set		(RDCPLS1)	*
;************************************************************************
RDCPLS1		EQU	$
;
LUCP140		EQU	$
		TXA			; (A) <-- (X)
		TYX			; (X) <-- (Y)
		TAY			; (Y) <-- (A)
;
		LDA	#00004H
		STA	<WORKE
LUCP180		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		STA	>ROOMBF+100H,X
		TYA
		CLC
		ADC	#00006H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	LUCP180		; unit set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Small dai				(SMLDIST)	*
;************************************************************************
SMLDIST		EQU	$
		INC	!LGTWST		; light-wipe flag nothing
;
;************************************************************************
;*		Small chair set				(SCHIRST)	*
;************************************************************************
SCHIRST		EQU	$
;
;************************************************************************
;*		Kazari Sword set			(KZRSDST)	*
;************************************************************************
KZRSDST		EQU	$
;
;************************************************************************
;*		Not-move block set			(NMVBLKST)	*
;************************************************************************
NMVBLKST	EQU	$
;
;************************************************************************
;*		Under Left-up coner set			(ULUCRST)	*
;************************************************************************
ULUCRST		EQU	$
;
;************************************************************************
;*		Under Left-down coner set		(ULDCRST)	*
;************************************************************************
ULDCRST		EQU	$
;
;************************************************************************
;*		Under Right-up coner set		(URUCRST)	*
;************************************************************************
URUCRST		EQU	$
;
;************************************************************************
;*		Under Right-down coner set		(URDCRST)	*
;************************************************************************
URDCRST		EQU	$
;
;************************************************************************
;*		Under Left-up piller set		(ULUPLST)	*
;************************************************************************
ULUPLST		EQU	$
;
;************************************************************************
;*		Under Left-down piller set		(ULDPLST)	*
;************************************************************************
ULDPLST		EQU	$
;
;************************************************************************
;*		Under Right-up piller set		(URUPLST)	*
;************************************************************************
URUPLST		EQU	$
;
;************************************************************************
;*		Under Right-down piller set		(URDPLST)	*
;************************************************************************
URDPLST		EQU	$
;
;************************************************************************
;*		Dokan Left-up coner set			(DKANST20)	*
;************************************************************************
DKANST20	EQU	$
;
;************************************************************************
;*		Dokan Left-down coner set		(DKANST21)	*
;************************************************************************
DKANST21	EQU	$
;
;************************************************************************
;*		Dokan Right-up coner set		(DKANST22)	*
;************************************************************************
DKANST22	EQU	$
;
;************************************************************************
;*		Dokan Right-down coner set		(DKANST23)	*
;************************************************************************
DKANST23	EQU	$
;
;************************************************************************
;*		Dokan up tsunagi set			(DKANST30)	*
;************************************************************************
DKANST30	EQU	$
;
;************************************************************************
;*		Dokan down tsunagi set			(DKANST31)	*
;************************************************************************
DKANST31	EQU	$
;
;************************************************************************
;*		Dokan left tsunagi set			(DKANST32)	*
;************************************************************************
DKANST32	EQU	$
;
;************************************************************************
;*		Dokan right tsunagi set			(DKANST33)	*
;************************************************************************
DKANST33	EQU	$
;
;************************************************************************
;*		Dokan kousa set				(DKANST40)	*
;************************************************************************
DKANST40	EQU	$
;
;************************************************************************
;*		Kabe-ana up set				(KBANAST0)	*
;************************************************************************
KBANAST0	EQU	$
;
;************************************************************************
;*		Kabe-ana down set			(KBANAST1)	*
;************************************************************************
KBANAST1	EQU	$
;
;************************************************************************
;*		Seki-ban set				(SKBANST)	*
;************************************************************************
SKBANST		EQU	$
;
;************************************************************************
;*		Hibi-yuka set				(CRSHYKS2)	*
;************************************************************************
CRSHYKS2	EQU	$
;
;************************************************************************
;*		Danjyon warp yuka set (enter)		(DJWPYKST)	*
;************************************************************************
DJWPYKST	EQU	$
;
;************************************************************************
;*		Danjyon warp yuka set (exit)		(DJWPYKS1)	*
;************************************************************************
DJWPYKS1	EQU	$
;
;************************************************************************
;*		Inori- yuka set				(INRIYKST)	*
;************************************************************************
INRIYKST	EQU	$
;
;************************************************************************
;*		Change-yuka set	0			(CNGYKST0)	*
;************************************************************************
CNGYKST0	EQU	$
;
;************************************************************************
;*		Change-yuka set	1			(CNGYKST1)	*
;************************************************************************
CNGYKST1	EQU	$
;
;************************************************************************
;*		Stand coner left-up			(STAND2ST)	*
;************************************************************************
STAND2ST	EQU	$
;
;************************************************************************
;*		Stand coner left-down			(STAND3ST)	*
;************************************************************************
STAND3ST	EQU	$
;
;************************************************************************
;*		Stand coner right-up			(STAND4ST)	*
;************************************************************************
STAND4ST	EQU	$
;
;************************************************************************
;*		Stand coner right-down			(STAND5ST)	*
;************************************************************************
STAND5ST	EQU	$
;
;************************************************************************
;*		Mushi-kago set				(MUSIKST)	*
;************************************************************************
MUSIKST		EQU	$
;
;************************************************************************
;*		Bottle set				(BOTLST)	*
;************************************************************************
BOTLST		EQU	$
;
;************************************************************************
;*		Dammy swich set				(DMYSWHST)	*
;************************************************************************
DMYSWHST	EQU	$
;
;************************************************************************
;*		Enemy yuka set				(EMYYKST)	*
;************************************************************************
EMYYKST		EQU	$
;
;************************************************************************
;*		Enemy block set				(EMYBLKST)	*
;************************************************************************
EMYBLKST	EQU	$
;
;************************************************************************
;*		Atemon-Takara-box set (close)		(TKBOXST9)	*
;************************************************************************
TKBOXST9	EQU	$
;
;************************************************************************
;*		Mark-yuka (up)				(MRKYKST0)	*
;************************************************************************
MRKYKST0	EQU	$
;
;************************************************************************
;*		Mark-yuka (down)			(MRKYKST1)	*
;************************************************************************
MRKYKST1	EQU	$
;
;************************************************************************
;*		Mark-yuka (left)			(MRKYKST2)	*
;************************************************************************
MRKYKST2	EQU	$
;
;************************************************************************
;*		Unit set (2x2)				(UNITST7)	*
;************************************************************************
UNITST7		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP002],Y
		LDA	UNITDT+006H,X
		STA	[<BFP082],Y
		INY
		INY
		INY
		INY
		RTS
;
;
;
;
;************************************************************************
;*		Rou-ya key set				(ROUKYST)	*
;************************************************************************
ROUKYST		EQU	$
		LDX	!RKYCPT
		TYA
		STA	!TBXADR,X
;;;;;;;;		LDA	<BFP000
;;;;;;;;		CMP	#04000H
;;;;;;;;		BNE	RKYS040		; BG1. set ?
;;;;;;;;;					; yes
;;;;;;;;		TYA
;;;;;;;;		ORA	#02000H
;;;;;;;;		STA	!TBXADR,X
;;;;;;;;RKYS040		EQU	$
;// 03.04.24 //		LDA	!INFSTT
;// 03.04.24 //		AND	BITCD0,X
		LDA	!EMYSTT
		AND	TBITCD,X
		BNE	RKYS080		; open ?
;					; no
		INX
		INX
		STX	!RKYCPT
;
		LDX	#roukyd
		BRA	UNITST7		; 2x2 unit set
;
RKYS080		EQU	$
		STZ	!TBXADR,X
		INX
		INX
		STX	!RKYCPT
TKBX099		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Takara-box set	(close)			(TKBOXST0)	*
;************************************************************************
TKBOXST0	EQU	$
		LDA	<SLMODE
		AND	#000FFH
		CMP	#MD_endg1
		BEQ	TKBX099		; ending ?
;					; no
		LDX	!TBXCPT
		TYA
		STA	!TBXADR,X
		LDA	<BFP000
		CMP	#04000H
		BNE	TKBX020		; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		STA	!TBXADR,X
TKBX020		EQU	$
		LDA	!EMYSTT
		AND	TBITCD,X
		BNE	TKBX090		; open ?
;					; no
		INX
		INX
		STX	!TBXCPT		; Takara-box check data set
		STX	!RKYCPT
;
		LDY	#0FF00H
		LDX	#00000H
		LDA	<INFDF0
		AND	#000FFH
		CMP	#inf_stk
		BEQ	TKBX040		; swich takara-box check ?
;					; yes
		CMP	#inf_btk
		BEQ	TKBX040		; block takara-box check ?
;					; yes
		CMP	#inf_trt
		BEQ	TKBX040		; tourou takara-box check ?
;					; yes
		CMP	#inf_et0
		BCC	TKBX030		; enemy-zenmetsu takakra-box ?
;					; yes
		CMP	#inf_et9+1
		BCC	TKBX040		; enemy-zenmetsu takakra-box ?
;					; no
TKBX030		EQU	$
		LDA	<INFDF1
		AND	#000FFH
		CMP	#inf_stk
		BEQ	TKBX035		; swich takara-box check ?
;					; no
		CMP	#inf_btk
		BEQ	TKBX035		; block takara-box check ?
;					; yes
		CMP	#inf_trt
		BEQ	TKBX035		; tourou takara-box check ?
;					; yes
		CMP	#inf_et0
		BCC	TKBX080		; enemy-zenmetsu takakra-box ?
;					; yes
		CMP	#inf_et9+1
		BCS	TKBX080		; enemy-zenmetsu takakra-box ?
;					; yes
TKBX035		EQU	$
		LDY	#000FFH
		INX
		INX
TKBX040		EQU	$
		LDA	!EMYSTT
		AND	>TBITCD,X
		BEQ	TKBX099		; set ok ?
;					; yes
		TYA
		AND	<INFDF0
		STA	<INFDF0
TKBX080		EQU	$
		LDY	<WORK8
		LDX	#tkbox0
		JMP	UNITST7		; 2x2 unit set
;
;
;************************************************************************
;*		Takara-box set	(open)			(TKBOXST1)	*
;************************************************************************
TKBX090		EQU	$
		STZ	!TBXADR,X	; takara-box off
		INX
		INX
		STX	!TBXCPT		; Takara-box check data set
		STX	!RKYCPT
;
		LDY	#0FF00H
		LDX	#00000H
		LDA	<INFDF0
		AND	#000FFH
		CMP	#inf_stk
		BEQ	TKBX140		; swich takara-box check ?
;					; yes
		CMP	#inf_btk
		BEQ	TKBX140		; block takara-box check ?
;					; yes
		CMP	#inf_trt
		BEQ	TKBX140		; tourou takara-box check ?
;					; yes
		CMP	#inf_et0
		BCC	TKBX130		; enemy-zenmetsu takakra-box ?
;					; yes
		CMP	#inf_et9+1
		BCC	TKBX140		; enemy-zenmetsu takakra-box ?
;					; no
TKBX130		EQU	$
		LDA	<INFDF1
		AND	#000FFH
		CMP	#inf_stk
		BEQ	TKBX135		; swich takara-box check ?
;					; no
		CMP	#inf_btk
		BEQ	TKBX135		; block takara-box check ?
;					; no
		CMP	#inf_trt
		BEQ	TKBX135		; tourou takara-box check ?
;					; yes
		CMP	#inf_et0
		BCC	TKBX180		; enemy-zenmetsu takakra-box ?
;					; yes
		CMP	#inf_et9+1
		BCS	TKBX180		; enemy-zenmetsu takakra-box ?
;					; yes
TKBX135		EQU	$
		LDY	#000FFH
		INX
		INX
TKBX140		EQU	$
		TYA
		AND	<INFDF0
		STA	<INFDF0
TKBX180		EQU	$
		LDY	<WORK8
		LDX	#tkbox1
TKBOXST1	EQU	$
		JMP	UNITST7		; 2x2 unit set
;
;
;
;************************************************************************
;*		Special Takara-box set  (close)		(TKBOXST2)	*
;************************************************************************
TKBOXST2	EQU	$
		LDX	!TBXCPT
		TYA
		ORA	#08000H
		STA	!TBXADR,X
		LDA	<BFP000
		CMP	#04000H
		BNE	TKBX240		; BG1. set ?
;					; yes
		TYA
		ORA	#0A000H
		STA	!TBXADR,X
TKBX240		EQU	$
		LDA	!EMYSTT
		AND	TBITCD,X
		BNE	TKBX280		; open ?
;					; no
		INX
		INX
		STX	!TBXCPT		; Takara-box check data set
		STX	!RKYCPT
;
		LDX	#tkbox2
;
;************************************************************************
;*		Table set				(TABLEST)	*
;************************************************************************
TABLEST		EQU	$
;
;************************************************************************
;*		Window set				(WINDWST)	*
;************************************************************************
WINDWST		EQU	$
;
;************************************************************************
;*		Baba lamp set				(BBLMPST)	*
;************************************************************************
BBLMPST		EQU	$
;
;************************************************************************
;*		Dammy enter set				(ENTRST0)	*
;************************************************************************
ENTRST0		EQU	$
;
;************************************************************************
;*		Kajiya dai set				(KJDAIST)	*
;************************************************************************
KJDAIST		EQU	$
;
;************************************************************************
;*		Dammy Bmb-door UP			(DMBMBST0)	*
;************************************************************************
DMBMBST0	EQU	$
;
;************************************************************************
;*		Dammy Bmb-door DOWN			(DMBMBST1)	*
;************************************************************************
DMBMBST1	EQU	$
;
;************************************************************************
;*		Haisui-kou UP				(HISUIST0)	*
;************************************************************************
HISUIST0	EQU	$
;
;************************************************************************
;*		Haisui-kou DOWN				(HISUIST1)	*
;************************************************************************
HISUIST1	EQU	$
;
;************************************************************************
;*		Ice-man ato				(ICEATST2)	*
;************************************************************************
ICEATST2	EQU	$
		LDA	#00004H
		JMP	UNITST0		; 4x3 unit set
;
;
;
;
;************************************************************************
;*		Dammy Bmb-door LEFT			(DMBMBST2)	*
;************************************************************************
DMBMBST2	EQU	$
;
;************************************************************************
;*		Dammy Bmb-door RIGHT			(DMBMBST3)	*
;************************************************************************
DMBMBST3	EQU	$
;
;************************************************************************
;*		Haisui-kou LEFT				(HISUIST2)	*
;************************************************************************
HISUIST2	EQU	$
;
;************************************************************************
;*		Haisui-kou RIGHT			(HISUIST3)	*
;************************************************************************
HISUIST3	EQU	$
		LDA	#00003H
		JMP	UNITST2		; 3x4 unit set
;
;
;
;
;************************************************************************
;*		Special Takara-box set	(open)		(TKBOXST3)	*
;************************************************************************
TKBX280		EQU	$
		STZ	!TBXADR,X	; takara-box off
		INX
		INX
		STX	!TBXCPT		; Takara-box check data set
		STX	!RKYCPT
		LDX	#tkbox3
TKBOXST3	EQU	$
		LDA	#00004H
		JMP	UNITST0		; 4x3 unit set
;
;
;
;
;
;************************************************************************
;*		Ganon-Room kazari			(GNNKZST0)	*
;************************************************************************
GNNKZST0	EQU	$
;
;************************************************************************
;*		Ganon-Room kazari			(GNNKZST1)	*
;************************************************************************
GNNKZST1	EQU	$
;
;************************************************************************
;*		Kajiya tana set				(KJTANAST)	*
;************************************************************************
KJTANAST	EQU	$
		LDA	#00008H
		JMP	UNITST0		; 4x3 unit set
;
;
;
;
;************************************************************************
;*		Kajiya mizu set				(KJMIZUST)	*
;************************************************************************
KJMIZUST	EQU	$
;
;************************************************************************
;*		Konro set				(KONROST)	*
;************************************************************************
KONROST		EQU	$
;
;************************************************************************
;*		Chapel chair set			(CPLISUST)	*
;************************************************************************
CPLISUST	EQU	$
		LDA	#00006H
		JMP	UNITST0		; 4x3 unit set
;
;
;
;
;************************************************************************
;*		Devil-dai set				(DVLDIST)	*
;************************************************************************
DVLDIST		EQU	$
		TXY			; (Y) <-- (X)
		LDA	<BFP000
		CMP	#04000H
		BNE	DVLD20		; BG.1 set ?
;					; yes
		LDA	<WORK8
		ORA	#02000H
		STA	<WORK8
DVLD20		EQU	$
		LDX	<WORK8
		LDA	#00008H
		STA	<WORKE
DVLD40		EQU	$
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
		TYA
		CLC
		ADC	#0000EH
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	DVLD40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Kajiya ro set				(KJROUST)	*
;************************************************************************
KJROST		EQU	$
		LDY	#kjrodt
		LDA	#00006H
		JMP	UNITSTX8	; unit set Xx8
;
;
;
;
;************************************************************************
;*		Off swich				(OFSWHST)	*
;************************************************************************
OFSWHST		EQU	$
		PHX			; (X) push
;
		LDX	!TPCKPT
		TYA
		LSR	A
		STA	!TPCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	OFSWS40		; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!TPCKBF,X
OFSWS40		EQU	$
		INX
		INX
		STX	!TPCKPT		; TRAP check data set
;
		PLX			; (X) pull
;
;
;************************************************************************
;*		Off swich				(OFSWHS1)	*
;************************************************************************
OFSWHS1		EQU	$
;
;************************************************************************
;*		On  swich				(ONSWHST)	*
;************************************************************************
ONSWHST		EQU	$
		JMP	UNITSTB
;
;
;
;************************************************************************
;*		Dokan enter up set			(DKANST00)	*
;************************************************************************
DKANST00	EQU	$
;
;************************************************************************
;*		Dokan enter down set			(DKANST01)	*
;************************************************************************
DKANST01	EQU	$
		LDA	#00004H
		JSR	UNITST0		; 4x3 unit set
		LDA	<WORK8
		CLC
		ADC	#00180H
		TAY
		LDA	#00004H
		JMP	UNITST0		; 4x3 unit set
;
;
;
;************************************************************************
;*		Dokan enter left set			(DKANST02)	*
;************************************************************************
DKANST02	EQU	$
;
;************************************************************************
;*		Dokan enter right set			(DKANST03)	*
;************************************************************************
DKANST03	EQU	$
;
;************************************************************************
;*		Book-tana set				(BOOKTST)	*
;************************************************************************
BOOKTST		EQU	$
		LDA	#00006H
		JMP	UNITST2		; 6x4 unit set
;
;
;
;************************************************************************
;*		Rupy set				(RUPYST)	*
;************************************************************************
RUPYST		EQU	$
		LDA	!EMYSTT
		AND	#01000H
		BNE	RPST080		; rupy set ok ?
;					; yes
		LDA	#00003H
		STA	<WORKE
;
		LDY	#rupydt
		LDX	<WORK8
		LDA	<BFP000
		CMP	#04000H
		BNE	RPST040		; BG.1 set ?
;					; yes
		TXA
		ORA	#02000H
		TAX
RPST040		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	>ROOMBF+180H,X
		STA	>ROOMBF+300H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		STA	>ROOMBF+200H,X
		STA	>ROOMBF+380H,X
		INX
		INX
		INX
		INX
		DEC	<WORKE
		BNE	RPST040		; set end ?
;					; yes
RPST080		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Open yuka				(OPNYKST)	*
;************************************************************************
OPNYKST		EQU	$
;// 03.06.14 //		TYA
;// 03.06.14 //		STA	!OYKADR
;// 03.06.14 //		AND	#0000000001111110B
;// 03.06.14 //		ASL	A
;// 03.06.14 //		ASL	A
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	!SCHCT
;// 03.06.14 //		STA	!OYKXAD
;// 03.06.14 //		TYA
;// 03.06.14 //		AND	#0001111110000000B
;// 03.06.14 //		LSR	A
;// 03.06.14 //		LSR	A
;// 03.06.14 //		LSR	A
;// 03.06.14 //		LSR	A
;// 03.06.14 //		CLC
;// 03.06.14 //		ADC	!SCVCT
;// 03.06.14 //		STA	!OYKYAD
;// 03.06.14 //;
;// 03.06.14 //;// 03.04.24 //		LDA	!INFSTT
;// 03.06.14 //;// 03.04.24 //		AND	BITCD0
;// 03.06.14 //		LDA	!EMYSTT
;// 03.06.14 //		AND	BITCD0+6
;// 03.06.14 //		BNE	OPNY40		; yuka open ?
;// 03.06.14 //;					; no
;// 03.06.14 //		LDA	#00019H
;// 03.06.14 //		STA	!OYKXPS
;// 03.06.14 //		LDA	#00004H
;// 03.06.14 //		STA	!OYKCFG
;// 03.06.14 //		LDA	#00001H
;// 03.06.14 //		STA	!OYKMOD
;// 03.06.14 //;
;// 03.06.14 //		LDX	#opnykd
;// 03.06.14 //		JMP	UNITST1		; 4x4 unit set
;// 03.06.14 //;
;// 03.06.14 //OPNY40		EQU	$
;// 03.06.14 //		LDA	#0FFF9H
;// 03.06.14 //		STA	!OYKXPS
;// 03.06.14 //		LDA	#0FFFFH
;// 03.06.14 //		STA	!OYKCFG
;// 03.06.14 //		STZ	!OYKMOD
;// 03.06.14 //;
;// 03.06.14 //		LDX	#holedt
;// 03.06.14 //		JMP	HOLEST0
;
;
;
;************************************************************************
;*		Bed set					(BEDST)		*
;************************************************************************
BEDST		EQU	$
		LDA	#000005H
		STA	<WORKE
BEDS40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	UNITDT+004H,X
		STA	[<BFP004],Y
		LDA	UNITDT+006H,X
		STA	[<BFP006],Y
;
		TXA
		CLC
		ADC	#00008H
		TAX
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKE
		BNE	BEDS40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Pillar set				(PILLRST)	*
;************************************************************************
PILLRST		EQU	$
		LDA	#00002H
		JMP	UNITST2		; 2x4 unit set
;
;
;************************************************************************
;*		Water side step				(WRSDSTP)	*
;************************************************************************
WRSDSTP		EQU	$
		LDA	<INFDF1
		AND	#000FFH
		CMP	#inf_gwr
		BNE	WRSDS40		; ground water check ?
;					; yes
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>DJNTBL,X
		AND	#00100H
		BNE	WRSDS40		; water on ?
;					; yes
		JMP	TBRSTEP
;
WRSDS40		EQU	$
		LDX	!UDSCKP4
		TYA
		LSR	A
		STA	!UDSCKB4,X
		INX
		INX
		STX	!UDSCKP4	; water-side STEP check data set
;
		LDX	#wrsstp
;
;************************************************************************
;*		Kazari Pictuer set			(KZRPCST)	*
;************************************************************************
KZRPCST		EQU	$
		LDA	#00001H
		STA	<XSTCNT
		JMP	UNITST3		; 4x2 unit set
;
;
;************************************************************************
;*		Kazari bed set				(KZRBDST)	*
;************************************************************************
KZRBDST		EQU	$
;
;************************************************************************
;*		Tetsu-bou gate (up) set			(TTBGTS0)	*
;************************************************************************
TTBGTS0		EQU	$
;
;************************************************************************
;*		Tetsu-bou gate (down) set		(TTBGTS1)	*
;************************************************************************
TTBGTS1		EQU	$
		LDA	#00006H
		JMP	UNITST0		; 6x3 unit set
;
;
;
;
;************************************************************************
;*		Chapel wall kazari set			(CWLKZST)	*
;************************************************************************
CWLKZST		EQU	$
		TXY			; (Y) <-- (X)
		LDX	<WORK8
		LDA	#00006H
		STA	<WORKE
CWLK20		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	>ROOMBF+008H,X
		STA	>ROOMBF+010H,X
		STA	>ROOMBF+01CH,X
		STA	>ROOMBF+024H,X
		STA	>ROOMBF+02CH,X
		ORA	#04000H
		STA	>ROOMBF+002H,X
		STA	>ROOMBF+00AH,X
		STA	>ROOMBF+012H,X
		STA	>ROOMBF+01EH,X
		STA	>ROOMBF+026H,X
		STA	>ROOMBF+02EH,X
;
		LDA	UNITDT+00CH,Y
		STA	>ROOMBF+004H,X
		STA	>ROOMBF+00CH,X
		STA	>ROOMBF+020H,X
		STA	>ROOMBF+028H,X
		ORA	#04000H
		STA	>ROOMBF+006H,X
		STA	>ROOMBF+00EH,X
		STA	>ROOMBF+022H,X
		STA	>ROOMBF+02AH,X
		INY
		INY
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BNE	CWLK20		;
;					;
		TYA
		CLC
		ADC	#0000CH
		TAX
		LDA	<WORK8
		CLC
		ADC	#00014H
		TAY
		LDA	#00004H
		JMP	UNITST0		; 4x3 unit set
;
;
;
;
;************************************************************************
;*		Tetsu-bou (tate) set			(TTBOST0)	*
;************************************************************************
TTBOST0		EQU	$
;// 03.07.04 //		PHX			; (X) push
;// 03.07.04 //		TYX			; (X) <-- (Y)
;// 03.07.04 //		PLY			; (Y) <-- (X) pull
;// 03.07.04 //;
;// 03.07.04 //		LDA	#00028-2
;// 03.07.04 //		STA	<WORKE
;// 03.07.04 //;
;// 03.07.04 //		LDA	UNITDT+000H,Y
;// 03.07.04 //		STA	>BG1RBF+002H,X
;// 03.07.04 //		LDA	UNITDT+002H,Y
;// 03.07.04 //		STA	>BG1RBF+004H,X
;// 03.07.04 //TTBS040		EQU	$
;// 03.07.04 //		LDA	UNITDT+004H,Y
;// 03.07.04 //		STA	>BG1RBF+080H,X
;// 03.07.04 //		LDA	UNITDT+006H,Y
;// 03.07.04 //		STA	>BG1RBF+082H,X
;// 03.07.04 //		LDA	UNITDT+008H,Y
;// 03.07.04 //		STA	>BG1RBF+084H,X
;// 03.07.04 //		LDA	UNITDT+00AH,Y
;// 03.07.04 //		STA	>BG1RBF+086H,X
;// 03.07.04 //		TXA
;// 03.07.04 //		CLC
;// 03.07.04 //		ADC	#00080H
;// 03.07.04 //		TAX
;// 03.07.04 //		DEC	<WORKE
;// 03.07.04 //		BNE	TTBS040		; set end ?
;// 03.07.04 //;					; yes
;// 03.07.04 //		LDA	UNITDT+00CH,Y
;// 03.07.04 //		STA	>BG1RBF+082H,X
;// 03.07.04 //		LDA	UNITDT+00EH,Y
;// 03.07.04 //		STA	>BG1RBF+084H,X
;// 03.07.04 //		RTS
;
;
;************************************************************************
;*		Tetsu-bou (yoko) set			(TTBOST1)	*
;************************************************************************
TTBOST1		EQU	$
;// 03.07.04 //		PHX			; (X) push
;// 03.07.04 //		TYX			; (X) <-- (Y)
;// 03.07.04 //		PLY			; (Y) <-- (X) pull
;// 03.07.04 //;
;// 03.07.04 //		LDA	#00030-2
;// 03.07.04 //		STA	<WORKE
;// 03.07.04 //;
;// 03.07.04 //		LDA	UNITDT+000H,Y
;// 03.07.04 //		STA	>BG1RBF+080H,X
;// 03.07.04 //		LDA	UNITDT+002H,Y
;// 03.07.04 //		STA	>BG1RBF+100H,X
;// 03.07.04 //TTBS140		EQU	$
;// 03.07.04 //		LDA	UNITDT+004H,Y
;// 03.07.04 //		STA	>BG1RBF+002H,X
;// 03.07.04 //		LDA	UNITDT+006H,Y
;// 03.07.04 //		STA	>BG1RBF+102H,X
;// 03.07.04 //		LDA	UNITDT+008H,Y
;// 03.07.04 //		STA	>BG1RBF+182H,X
;// 03.07.04 //		LDA	UNITDT+00AH,Y
;// 03.07.04 //		STA	>BG1RBF+202H,X
;// 03.07.04 //		INX
;// 03.07.04 //		INX
;// 03.07.04 //		DEC	<WORKE
;// 03.07.04 //		BNE	TTBS140		; set end ?
;// 03.07.04 //;					; yes
;// 03.07.04 //		LDA	UNITDT+00CH,Y
;// 03.07.04 //		STA	>BG1RBF+082H,X
;// 03.07.04 //		LDA	UNITDT+00EH,Y
;// 03.07.04 //		STA	>BG1RBF+102H,X
;// 03.07.04 //		RTS
;
;
;************************************************************************
;*		Tetsu-bou gate (left) set		(TTBGTS2)	*
;************************************************************************
TTBGTS2		EQU	$
;
;************************************************************************
;*		Tetsu-bou gate (right) set		(TTBGTS3)	*
;************************************************************************
TTBGTS3		EQU	$
;// 03.07.04 //		JSR	UNITST6
;// 03.07.04 //		TXA
;// 03.07.04 //		CLC
;// 03.07.04 //		ADC	#00100H
;// 03.07.04 //		TAX
;// 03.07.04 //		INY
;// 03.07.04 //		INY
;// 03.07.04 //		INY
;// 03.07.04 //		INY
;// 03.07.04 //		INY
;// 03.07.04 //		INY
;
;************************************************************************
;*		Unit set (3x2)				(UNITST6)	*
;************************************************************************
UNITST6		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	UNITDT+004H,X
		STA	[<BFP004],Y
;
		LDA	UNITDT+006H,X
		STA	[<BFP080],Y
		LDA	UNITDT+008H,X
		STA	[<BFP082],Y
		LDA	UNITDT+00AH,X
		STA	[<BFP084],Y
		RTS
;
;
;
;
;
;
;************************************************************************
;*		Water gate set				(WTRGATE)	*
;************************************************************************
WTRGATE		EQU	$
		LDA	!EMYSTT
		AND	#0000100000000000B
		BNE	WTGT200		; gate open ?
;					; no
;// 03.05.08 //		TYA
;// 03.05.08 //		AND	#0000000001111110B
;// 03.05.08 //		ASL	A
;// 03.05.08 //		ASL	A
;// 03.05.08 //		STA	!WRWPXP
;// 03.05.08 //		LDA	<XSTCNT
;// 03.05.08 //		ASL	A
;// 03.05.08 //		ASL	A
;// 03.05.08 //		ASL	A
;// 03.05.08 //		ASL	A
;// 03.05.08 //		CLC
;// 03.05.08 //		ADC	!SCHCT
;// 03.05.08 //		CLC
;// 03.05.08 //		ADC	!WRWPXP
;// 03.05.08 //		CLC
;// 03.05.08 //		ADC	#00028H
;// 03.05.08 //		STA	!WRWPXP		; center x-pos.
;// 03.05.08 //		TYA
;// 03.05.08 //		AND	#0001111110000000B
;// 03.05.08 //		LSR	A
;// 03.05.08 //		LSR	A
;// 03.05.08 //		LSR	A
;// 03.05.08 //		LSR	A
;// 03.05.08 //		STA	!WNYPL1
;// 03.05.08 //		STA	!WNXBUF		; end y-pos.
;// 03.05.08 //		CLC
;// 03.05.08 //		ADC	!SCVCT
;// 03.05.08 //		STA	!WRWPYP		; start y-pos.
;// 03.05.08 //;
;// 03.05.08 //		STZ	!WRWPH1		; y-hankei set
;
		LDA	#0000AH
		JSR	UNITST2		; 10x4 unit set
;
		LDA	#0000FH
		STA	!WGTPNT
		LDA	<WORK8
		STA	!WGTADR
;// 03.05.07 //		CLC
;// 03.05.07 //		ADC	#00008H
;// 03.05.07 //		TAY
;// 03.05.07 //		AND	#0000000001111110B
;// 03.05.07 //		ASL	A
;// 03.05.07 //		ASL	A
;// 03.05.07 //		CLC
;// 03.05.07 //		ADC	!SCHCT
;// 03.05.07 //		STA	!WINXPS
;// 03.05.07 //		TYA
;// 03.05.07 //		AND	#0001111110000000B
;// 03.05.07 //		LSR	A
;// 03.05.07 //		LSR	A
;// 03.05.07 //		LSR	A
;// 03.05.07 //		LSR	A
;// 03.05.07 //		CLC
;// 03.05.07 //		ADC	!SCVCT
;// 03.05.07 //		STA	!WINYPS		; water x,y-pos. set
		RTS
;
;
WTGT200		EQU	$
		LDX	#wgatop3
		LDA	#0000AH
		JSR	UNITST2		; 10x4 unit set
;
		LDA	<DTBFWK
		PHA			; (A) push
		LDA	<DTBFWK+1
		PHA			; (A) push
		LDA	<DTRDPT
		PHA			; (A) push
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
		PLA			; (A) pull
		STA	<DTRDPT
		PLA			; (A) pull
		STA	<DTBFWK+1
		PLA			; (A) pull
		STA	<DTBFWK
		RTS
;
;
;
;
;************************************************************************
;*		Lift stopper set			(LFTSTPST)	*
;************************************************************************
LFTSTPST	EQU	$
;
;************************************************************************
;*		Lift ichigi-stop set			(LFTSTPS1)	*
;************************************************************************
LFTSTPS1	EQU	$
		INC	!SRMNFG
;
;************************************************************************
;*		Lift +cross set				(LFTCRSST)	*
;************************************************************************
LFTCRSST	EQU	$
;
;************************************************************************
;*		Lift coner left-up set			(LFTCR0ST)	*
;************************************************************************
LFTCR0ST	EQU	$
;
;************************************************************************
;*		Lift coner left-down set		(LFTCR1ST)	*
;************************************************************************
LFTCR1ST	EQU	$
;
;************************************************************************
;*		Lift coner right-up set			(LFTCR2ST)	*
;************************************************************************
LFTCR2ST	EQU	$
;
;************************************************************************
;*		Lift coner right-down set		(LFTCR3ST)	*
;************************************************************************
LFTCR3ST	EQU	$
;
;************************************************************************
;*		Lift T up set				(LFTTT0ST)	*
;************************************************************************
LFTTT0ST	EQU	$
;
;************************************************************************
;*		Lift T down set				(LFTTT1ST)	*
;************************************************************************
LFTTT1ST	EQU	$
;
;************************************************************************
;*		Lift T left set				(LFTTT2ST)	*
;************************************************************************
LFTTT2ST	EQU	$
;
;************************************************************************
;*		Lift T right set			(LFTTT3ST)	*
;************************************************************************
LFTTT3ST	EQU	$
;
;************************************************************************
;*		Lift cross set				(LFTCRSS1)	*
;************************************************************************
LFTCRSS1	EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		RTS
;
;
;
;************************************************************************
;*		Poly-gon set				(POLYGST)	*
;************************************************************************
POLYGST		EQU	$
;// 03.07.16 //		LDA	#00004H
;// 03.07.16 //		STA	<WORKC
;// 03.07.16 //		STZ	<WORKE
;// 03.07.16 //POLYG20		EQU	$
;// 03.07.16 //		LDY	#00007H
;// 03.07.16 //		LDX	<WORK8
;// 03.07.16 //POLYG40		EQU	$
;// 03.07.16 //		LDA	<WORKE
;// 03.07.16 //		ORA	#01F80H
;// 03.07.16 //		STA	>BG1RBF+000H,X
;// 03.07.16 //		ORA	#01F88H
;// 03.07.16 //		STA	>BG1RBF+200H,X
;// 03.07.16 //		INC	<WORKE
;// 03.07.16 //		INX
;// 03.07.16 //		INX
;// 03.07.16 //		DEY
;// 03.07.16 //		BPL	POLYG40		;
;// 03.07.16 //;					;
;// 03.07.16 //		LDA	<WORKE
;// 03.07.16 //		CLC
;// 03.07.16 //		ADC	#00008H
;// 03.07.16 //		STA	<WORKE
;// 03.07.16 //		LDA	<WORK8
;// 03.07.16 //		CLC
;// 03.07.16 //		ADC	#00080H
;// 03.07.16 //		STA	<WORK8
;// 03.07.16 //		DEC	<WORKC
;// 03.07.16 //		BNE	POLYG20		; end ?
;// 03.07.16 //;					; yes
;// 03.07.16 //		RTS
;
;
;
;************************************************************************
;*		Rou-ya set				(ROUYAST)	*
;************************************************************************
ROUYAST		EQU	$
		TYX			; (X) <-- (Y)
		LDA	<BFP000
		CMP	#04000H
		BNE	RUYAS20		; BG1. set ?
;					; yes
		TXA
		ORA	#02000H
		TAX
RUYAS20		EQU	$
		PHX			; (X) push
;
		LDY	#rouyad
		LDA	#00005H
		STA	<WORKC
RUYAS40		EQU	$
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+004H+000H,X
		STA	>ROOMBF+012H+000H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+004H+080H,X
		ORA	#04000H
		STA	>ROOMBF+012H+080H,X
		LDA	UNITDT+008H,Y
		STA	>ROOMBF+004H+100H,X
		ORA	#04000H
		STA	>ROOMBF+012H+100H,X
		LDA	UNITDT+00AH,Y
		STA	>ROOMBF+004H+180H,X
		ORA	#04000H
		STA	>ROOMBF+012H+180H,X
		INX
		INX
		DEC	<WORKC
		BNE	RUYAS40		; set end ?
;					; yes
		PLX			; (X) pull
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		ORA	#04000H
		STA	>ROOMBF+01EH,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+002H,X
		STA	>ROOMBF+00EH,X
		STA	>ROOMBF+010H,X
		STA	>ROOMBF+01CH,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+002H+100H,X
		ORA	#04000H
		STA	>ROOMBF+01CH+100H,X
		RTS
;
;
;
;************************************************************************
;*		tetsuball hole set (up)			(TTHLST0)	*
;************************************************************************
TTHLST0		EQU	$
;
;************************************************************************
;*		tetsuball hole set (down)		(TTHLST1)	*
;************************************************************************
TTHLST1		EQU	$
;
;************************************************************************
;*		Down tetsuball hole set (up)		(TTHLST4)	*
;************************************************************************
TTHLST4		EQU	$
;
;************************************************************************
;*		Down tetsuball hole set (down)		(TTHLST5)	*
;************************************************************************
TTHLST5		EQU	$
		JSR	STCTST
;
		LDA	#00002H
		JSR	UNITST0		; 2x3 unit set
;
		DEC	<XSTCNT
		BEQ	TTHS140		; set ?
;					; yes
TTHS120		EQU	$
		PHX			; (X) push
		LDA	#00002H
		JSR	UNITST0		; 2x3 unit set
		PLX			; (X) pull
		DEC	<XSTCNT
		BNE	TTHS120		; set end ?
;					; yes
TTHS140		EQU	$
		TXA
		CLC
		ADC	#0000CH
		TAX
		LDA	#00002H
		JMP	UNITST0		; 2x3 unit set
;
;
;
;************************************************************************
;*		tetsuball hole set (left)		(TTHLST2)	*
;************************************************************************
TTHLST2		EQU	$
;
;************************************************************************
;*		tetsuball hole set (right)		(TTHLST3)	*
;************************************************************************
TTHLST3		EQU	$
		JSR	STCTST
;
		JSR	TTHS380		; 3x2 
;
		DEC	<XSTCNT
		BEQ	TTHS340		; set ?
;					; yes
TTHS320		EQU	$
		PHX			; (X) push
		JSR	TTHS380		; 3x2 unit set
		PLX			; (X) pull
		DEC	<XSTCNT
		BNE	TTHS320		; set end ?
;					; yes
TTHS340		EQU	$
		TXA
		CLC
		ADC	#0000CH
		TAX
TTHS380		EQU	$
		LDA	#00002H
		STA	<WORKA
TTHS390		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	UNITDT+004H,X
		STA	[<BFP004],Y
;
		INX
		INX
		INX
		INX
		INX
		INX
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKA
		BNE	TTHS390		; set end ?
;					; yes
		RTS
;
;
;
;
;
;
;
;========================================================================
;========================================================================
;----------------------------  FIX2  ------------------------------------
;************************************************************************
;*		Tap set - 0				(TAPSET0)	*
;************************************************************************
TAPSET0		EQU	$
		LDA	<INFDF1
		AND	#000FFH
		CMP	#inf_gwr
		BNE	TAPS020		; ground-water check ?
;					; yes
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>DJNTBL,X
		AND	#00100H
		BNE	TAPSET1		; water on ?
;					; no
		LDX	#tapdt0
TAPS020		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#inf_wup
		CMP	<INFDF1
		BNE	TAPS040		; water-down ?
;					; yes
;// 03.04.24 //		LDA	!INFSTT+1
;// 03.04.24 //		AND	BITCD0+11
		LDA	!EMYSTT+1
		AND	BITCD0+9
		BNE	TAPSET1		; off ?
;					; yes
TAPS040		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STY	!TAPADR		; tap address set
		LDA	#00003H
		BRA	UNITSTF		; 4x3 unit set
;
;
;************************************************************************
;*		Tap set - 1				(TAPSET1)	*
;************************************************************************
TAPSET1		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#tapdt1
		LDA	#00005H
		BRA	UNITSTF		; 4x4 unit set
;
;
;************************************************************************
;*		Tap set - 2				(TAPSET2)	*
;************************************************************************
TAPSET2		EQU	$
		LDA	#00007H
		BRA	UNITSTF
;
;
;************************************************************************
;*		Sara set				(SARAST)	*
;************************************************************************
SARAST		EQU	$
		LDA	#00002H
;
;************************************************************************
;*		Unit set (4x?)				(UNITSTF)	*
;************************************************************************
UNITSTF		EQU	$
		STA	<WORKE
UTSTF40		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	UNITDT+004H,X
		STA	[<BFP004],Y
		LDA	UNITDT+006H,X
		STA	[<BFP006],Y
;
		TXA
		CLC
		ADC	#00008H
		TAX
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKE
		BNE	UTSTF40		; set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Boss ice set				(BOSSICE)	*
;************************************************************************
BOSSICE		EQU	$
;// 03.09.20 //		LDA	<GAMEMD
;// 03.09.20 //		AND	#000FFH
;// 03.09.20 //		CMP	#p1_scl1
;// 03.09.20 //		BNE	BSICE20		;
;// 03.09.20 //;					;
;// 03.09.20 //		PHX			; (X) push
;// 03.09.20 //		LDX	#0000EH
;// 03.09.20 //BSICE10		EQU	$
;// 03.09.20 //		LDA	>CGRAM+080H,X
;// 03.09.20 //		STA	>CGWORK+080H,X
;// 03.09.20 //		DEX
;// 03.09.20 //		DEX
;// 03.09.20 //		BPL	BSICE10
;// 03.09.20 //;
;// 03.09.20 //		INC	<CGVMAF
;// 03.09.20 //		PLX			; (X) pull
;// 03.09.20 //BSICE20		EQU	$
		LDA	!EMYSTT
		ASL	A
		BCS	BOSSI80		; boss die ?
;					; no
		LDY	#bosice
		LDA	#0000AH
UNITSTX8	EQU	$
		STA	<WORKA
;
		LDA	<BFP000
		CMP	#04000H
		BNE	UTST8X20	; BG.1 set ?
;					; yes
		LDA	<WORK8
		ORA	#02000H
		STA	<WORK8
UTST8X20	EQU	$
		LDA	#00008H
		STA	<WORKC
UTST8X40	EQU	$
		LDA	<WORKA
		STA	<WORKE
;
		LDX	<WORK8
UTST8X80	EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		INY
		INY
		INX
		INX
		DEC	<WORKE
		BNE	UTST8X80	;
;					;
		LDA	<WORK8
		CLC
		ADC	#00080H
		STA	<WORK8
		DEC	<WORKC
		BNE	UTST8X40	; end ?
;					; yes
BOSSI80		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Boss Kame-iwa set			(BOSKMEST)	*
;************************************************************************
BOSKMEST	EQU	$
		LDA	!EMYSTT
		ASL	A
		BCS	BOSSI80		; boss die ?
;					; no
		TXY			; (Y) <-- (X)
		LDA	#0000AH
		BRA	UNITSTX8	; 10x8 unit set
;
;
;
;
;************************************************************************
;*		Kantera set				(KNTERAST)	*
;************************************************************************
KNTERAST	EQU	$
		LDY	#kntrdt0
		LDA	#00514H
		JSR	KNTRS100	;
;
		LDY	#kntrdt1
		LDA	#00554H
		JSR	KNTRS100	;
;
		LDY	#kntrdt2
		LDA	#01514H
		JSR	KNTRS100	;
;
		LDY	#kntrdt3
		LDA	#1554H
KNTRS100	EQU	$
		STA	<WORK0
		LDA	#0000CH
		STA	<WORK2
KNTRS120	EQU	$
		LDA	#0000CH
		STA	<WORKC
		LDX	<WORK0
KNTRS140	EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		INY
		INY
		INX
		INX
		DEC	<WORKC
		BNE	KNTRS140	;
;					;
		LDA	<WORK0
		CLC
		ADC	#00080H
		STA	<WORK0
		DEC	<WORK2
		BNE	KNTRS120	;
;					;
		RTS
;
;
;
;
;
;************************************************************************
;*		Shisai-dai set				(SSDAIST)	*
;************************************************************************
SSDAIST		EQU	$
		LDA	#00014
		STA	<WORKE
		LDY	#ssidid
		LDX	<WORK8
SSDS40		EQU	$
		LDA	UNITDT+01CH*0,Y
		STA	>ROOMBF+000H,X
		ORA	#04000H
		STA	>ROOMBF+01AH,X
;
		LDA	UNITDT+01CH*1,Y
		STA	>ROOMBF+002H,X
		STA	>ROOMBF+004H,X
		EOR	#04000H
		STA	>ROOMBF+016H,X
		STA	>ROOMBF+018H,X
;
		LDA	UNITDT+01CH*2,Y
		STA	>ROOMBF+006H,X
		EOR	#04000H
		STA	>ROOMBF+014H,X
;
		LDA	UNITDT+01CH*3,Y
		STA	>ROOMBF+008H,X
		EOR	#04000H
		STA	>ROOMBF+012H,X
;
		LDA	UNITDT+01CH*4,Y
		STA	>ROOMBF+00AH,X
		EOR	#04000H
		STA	>ROOMBF+010H,X
;
		LDA	UNITDT+01CH*5,Y
		STA	>ROOMBF+00CH,X
		EOR	#04000H
		STA	>ROOMBF+00EH,X
;
		TXA
		CLC
		ADC	#00080H
		TAX
		INY
		INY
		DEC	<WORKE
		BNE	SSDS40		; end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Shisai-room set				(SSRMST)	*
;************************************************************************
SSRMST		EQU	$
		LDA	#00006H
		STA	<WORKE
		LDY	#ssrmd0
		LDX	<WORK8
SSRS20		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+020EH,X
		STA	>ROOMBF+021AH,X
		STA	>ROOMBF+0226H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+028EH,X
		STA	>ROOMBF+029AH,X
		STA	>ROOMBF+02A6H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+030EH,X
		STA	>ROOMBF+031AH,X
		STA	>ROOMBF+0326H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+038EH,X
		STA	>ROOMBF+039AH,X
		STA	>ROOMBF+03A6H,X
		INY
		INY
		INY
		INY
		INY
		INY
		INY
		INY
		INX
		INX
		DEC	<WORKE
		BNE	SSRS20		; set end ?
;					; yes
		LDA	#00005H
		STA	<WORKE
		LDY	#ssrmd1
		LDX	<WORK8
SSRS40		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+0504H,X
		STA	>ROOMBF+0486H,X
		STA	>ROOMBF+0408H,X
		STA	>ROOMBF+038AH,X
		STA	>ROOMBF+030CH,X
		STA	>ROOMBF+028EH,X
		STA	>ROOMBF+0210H,X
		ORA	#04000H
		STA	>ROOMBF+022EH,X
		STA	>ROOMBF+02B0H,X
		STA	>ROOMBF+0332H,X
		STA	>ROOMBF+03B4H,X
		STA	>ROOMBF+0436H,X
		STA	>ROOMBF+04B8H,X
		STA	>ROOMBF+053AH,X
		INY
		INY
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BNE	SSRS40		;
;					;
		LDA	#00006H
		STA	<WORKE
		LDY	#ssrmd2
		LDX	<WORK8
SSRS60		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+0584H,X
		STA	>ROOMBF+0884H,X
		STA	>ROOMBF+0B84H,X
		ORA	#04000H
		STA	>ROOMBF+05BAH,X
		STA	>ROOMBF+08BAH,X
		STA	>ROOMBF+0BBAH,X
;
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+0586H,X
		STA	>ROOMBF+0886H,X
		STA	>ROOMBF+0B86H,X
		ORA	#04000H
		STA	>ROOMBF+05B8H,X
		STA	>ROOMBF+08B8H,X
		STA	>ROOMBF+0BB8H,X
;
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+0588H,X
		STA	>ROOMBF+0888H,X
		STA	>ROOMBF+0B88H,X
		ORA	#04000H
		STA	>ROOMBF+05B6H,X
		STA	>ROOMBF+08B6H,X
		STA	>ROOMBF+0BB6H,X
;
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+058AH,X
		STA	>ROOMBF+088AH,X
		STA	>ROOMBF+0B8AH,X
		ORA	#04000H
		STA	>ROOMBF+05B4H,X
		STA	>ROOMBF+08B4H,X
		STA	>ROOMBF+0BB4H,X
		INY
		INY
		INY
		INY
		INY
		INY
		INY
		INY
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BEQ	SSRS80		; set end ?
;					; no
		JMP	SSRS60
;
SSRS80		EQU	$
;
		LDA	#00006H
		STA	<WORKE
		LDY	#ssrmd3
		LDX	<WORK8
SSRS100		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+0498H,X
		STA	>ROOMBF+04A4H,X
		LDA	UNITDT+00CH,Y
		STA	>ROOMBF+0518h,X
		STA	>ROOMBF+0524H,X
		INY
		INY
		INX
		INX
		DEC	<WORKE
		BNE	SSRS100		; set end ?
;					; yes
		LDA	#00006H
		STA	<WORKE
		LDY	#ssrmd4
		LDX	<WORK8
SSRS120		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+070EH,X
		STA	>ROOMBF+0A0EH,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+0710H,X
		STA	>ROOMBF+0A10H,X
		INY
		INY
		INY
		INY
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BNE	SSRS120		; set end ?
;					; yes
		LDA	#00005H
		STA	<WORKE
		LDY	#ssrmd5
		LDX	<WORK8
SSRS140		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+048EH,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+050EH,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+058EH,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+060EH,X
		LDA	UNITDT+008H,Y
		STA	>ROOMBF+068EH,X
		TYA
		CLC
		ADC	#0000AH
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	SSRS140		; set end ?
;					; yes
;
		LDA	#00004H
		STA	<WORKE
		LDX	<WORK8
SSRS200		EQU	$
		LDA	>ROOMBF+0E1CH,X
		ORA	#02000H
		STA	>ROOMBF+0E1CH,X
		LDA	>ROOMBF+0E9CH,X
		ORA	#02000H
		STA	>ROOMBF+0E9CH,X
		INX
		INX
		DEC	<WORKE
		BNE	SSRS200		; end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Uranai yakata room set			(URNIST)	*
;************************************************************************
URNIST		EQU	$
		LDA	#00006H
		STA	<WORKE
		LDY	#urnidt
		LDX	<WORK8
URNI20		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+002H,X
		STA	>ROOMBF+004H,X
		STA	>ROOMBF+082H,X
		STA	>ROOMBF+084H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+102H,X
		ORA	#04000H
		STA	>ROOMBF+104H,X
		INX
		INX
		INX
		INX
		DEC	<WORKE
		BNE	URNI20		;
;					;
		LDA	#00003H
		STA	<WORKE
		LDX	<WORK8
URNI40		EQU	$
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+180H,X
		STA	>ROOMBF+184H,X
		STA	>ROOMBF+194H,X
		STA	>ROOMBF+198H,X
		ORA	#04000H
		STA	>ROOMBF+182H,X
		STA	>ROOMBF+186H,X
		STA	>ROOMBF+196H,X
		STA	>ROOMBF+19AH,X
;
		LDA	UNITDT+00AH,Y
		STA	>ROOMBF+188H,X
		STA	>ROOMBF+18CH,X
		STA	>ROOMBF+190H,X
		ORA	#04000H
		STA	>ROOMBF+18AH,X
		STA	>ROOMBF+18EH,X
		STA	>ROOMBF+192H,X
		INY
		INY
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BNE	URNI40		;
;					;
		LDX	<WORK8
		LDA	UNITDT+00AH,Y
		STA	>ROOMBF+000H,X
		STA	>ROOMBF+080H,X
		ORA	#04000H
		STA	>ROOMBF+01AH,X
		STA	>ROOMBF+09AH,X
		LDA	UNITDT+00CH,Y
		STA	>ROOMBF+100H,X
		ORA	#04000H
		STA	>ROOMBF+11AH,X
;
;
		LDA	#00004H
		STA	<WORKE
		LDY	#urnidt
		LDX	<WORK8
URNI60		EQU	$
		LDA	UNITDT+014H,Y
		STA	>ROOMBF+506H,X
		EOR	#04000H
		STA	>ROOMBF+514H,X
;
		LDA	UNITDT+014H+08H,Y
		STA	>ROOMBF+508H,X
		EOR	#04000H
		STA	>ROOMBF+512H,X
;
		LDA	UNITDT+014H+10H,Y
		STA	>ROOMBF+50AH,X
		EOR	#04000H
		STA	>ROOMBF+510H,X
;
		LDA	UNITDT+014H+18H,Y
		STA	>ROOMBF+50CH,X
		EOR	#04000H
		STA	>ROOMBF+50EH,X
		INY
		INY
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BNE	URNI60		;
;					;
		RTS
;
;
;
;
;************************************************************************
;*		Polygon dai set				(POLYDIST)	*
;************************************************************************
POLYDIST	EQU	$
;// 03.07.16 //		LDA	#0000CH
;// 03.07.16 //		STA	<WORKE
;// 03.07.16 //		LDY	#polydd
;// 03.07.16 //		LDX	<WORK8
;// 03.07.16 //POLYDS40	EQU	$
;// 03.07.16 //		LDA	UNITDT+000H+18H*0,Y
;// 03.07.16 //		STA	>ROOMBF+000H,X
;// 03.07.16 //		ORA	#04000H
;// 03.07.16 //		STA	>ROOMBF+016H,X
;// 03.07.16 //;
;// 03.07.16 //		LDA	UNITDT+000H+18H*1,Y
;// 03.07.16 //		STA	>ROOMBF+002H,X
;// 03.07.16 //		ORA	#04000H
;// 03.07.16 //		STA	>ROOMBF+014H,X
;// 03.07.16 //;
;// 03.07.16 //		LDA	UNITDT+000H+18H*2,Y
;// 03.07.16 //		STA	>ROOMBF+004H,X
;// 03.07.16 //		ORA	#04000H
;// 03.07.16 //		STA	>ROOMBF+012H,X
;// 03.07.16 //;
;// 03.07.16 //		LDA	UNITDT+000H+18H*3,Y
;// 03.07.16 //		STA	>ROOMBF+006H,X
;// 03.07.16 //		ORA	#04000H
;// 03.07.16 //		STA	>ROOMBF+010H,X
;// 03.07.16 //;
;// 03.07.16 //		LDA	UNITDT+000H+18H*4,Y
;// 03.07.16 //		STA	>ROOMBF+008H,X
;// 03.07.16 //		ORA	#04000H
;// 03.07.16 //		STA	>ROOMBF+00EH,X
;// 03.07.16 //;
;// 03.07.16 //		LDA	UNITDT+000H+18H*5,Y
;// 03.07.16 //		STA	>ROOMBF+00AH,X
;// 03.07.16 //		ORA	#04000H
;// 03.07.16 //		STA	>ROOMBF+00CH,X
;// 03.07.16 //		INY
;// 03.07.16 //		INY
;// 03.07.16 //		TXA
;// 03.07.16 //		CLC
;// 03.07.16 //		ADC	#00080H
;// 03.07.16 //		TAX
;// 03.07.16 //		DEC	<WORKE
;// 03.07.16 //		BNE	POLYDS40		; set end ?
;// 03.07.16 //;						; yes
;// 03.07.16 //		RTS
;// 03.07.16 //;
;
;
;
;************************************************************************
;*		Tate-mizu set				(TMIZUST)	*
;************************************************************************
TMIZUST		EQU	$
		LDA	#00003H
		STA	<WORKE
;
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	UNITDT+004H,X
		STA	[<BFP004],Y
TMZS40		EQU	$
		LDA	UNITDT+006H,X
		STA	[<BFP080],Y
		LDA	UNITDT+008H,X
		STA	[<BFP082],Y
		LDA	UNITDT+00AH,X
		STA	[<BFP084],Y
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKE
		BNE	TMZS40		;
;					;
		LDA	UNITDT+00CH,X
		STA	[<BFP080],Y
		LDA	UNITDT+00EH,X
		STA	[<BFP082],Y
		LDA	UNITDT+010H,X
		STA	[<BFP084],Y
		RTS
;
;
;
;
;************************************************************************
;*		Slime-Boss BG.set			(SLMBSBST)	*
;************************************************************************
SLMBSBST	EQU	$
		LDY	#slmbsd
		LDX	<WORK8
		LDA	#00016H
		STA	<WORKE
SLMB40		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+180H,X
		LDA	UNITDT+008H,Y
		STA	>BG1RBF+200H,X
		LDA	UNITDT+00AH,Y
		STA	>BG1RBF+280H,X
		LDA	UNITDT+00CH,Y
		STA	>BG1RBF+300H,X
		LDA	UNITDT+00EH,Y
		STA	>BG1RBF+380H,X
		LDA	UNITDT+010H,Y
		STA	>BG1RBF+400H,X
		LDA	UNITDT+012H,Y
		STA	>BG1RBF+480H,X
		LDA	UNITDT+014H,Y
		STA	>BG1RBF+500H,X
		TYA
		CLC
		ADC	#00016H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	SLMB40		; set end ?
;					; yes
		LDY	#slmbs1
		LDX	<WORK8
		LDA	#00003H
		STA	<WORKE
SLMB80		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+592H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+612H,X
		INY
		INY
		INX
		INX
		DEC	<WORKE
		BNE	SLMB80		; set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		BG.1 clear				(BG1CLEAR)	*
;************************************************************************
BG1CLEAR	EQU	$
		STZ	<WORKC
		LDX	#000E0H
		JMP	FLRS100		; Bg.1 clear
;
;
;
;
;
;=============================  STEP  ===================================
;************************************************************************
;*		Up,Down-step set [floor change]		(UDSTPS0)	*
;************************************************************************
UDSTPS0		EQU	$
		PHX			; (X) push
;
		LDX	!UDSCKP0
		TYA
		LSR	A
		STA	!UDSCKB0,X
		INX
		INX
		STX	!UDSCKP0	; UD-STEP check data set
		BRA	UDST120
;
;
;************************************************************************
;*		Up,Down-step set 			(UDSTPS1)	*
;************************************************************************
UDSTPS1		EQU	$
		PHX			; (X) push
		LDX	!UDSCKP1
		TYA
		LSR	A
		STA	!UDSCKB1,X
		INX
		INX
		STX	!UDSCKP1	; UD-STEP check data set
UDST120		EQU	$
		STX	!UDSCKP5	; tobiori-STEP check point set
		STX	!UDSCKP6
;
		TYX			; (X) <-- (Y)
		PLY			; (Y) <-- (X) pull
		LDA	#00004H
		STA	<WORKE
UDST140		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		STA	>BG1RBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
		STA	>BG1RBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	UDST140		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Normal Up,Down-step set			(UDSTPS2)	*
;************************************************************************
WTRSP80		EQU	$
		STZ	!GSUBFG
		LDX	#udstep
UDSTPS2		EQU	$
		PHX			; (X) push
;
		LDX	!UDSCKP2
		TYA
		LSR	A
		STA	!UDSCKB2,X
		INX
		INX
		STX	!UDSCKP2	; UD-STEP check data set
		STX	!UDSCKP5	; tobiori-STEP check point set
		STX	!UDSCKP6
;
		PLX			; (X) pull
		JMP	UNITST1		; 4x4 unit set
;
;
;************************************************************************
;*		Water step set	 			(WTRSTP)	*
;************************************************************************
WTRSTP		EQU	$
		LDA	<INFDF1
		AND	#000FFH
		CMP	#inf_gwr
		BNE	WTRSP40		; ground water check ?
;					; yes
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>DJNTBL,X
		AND	#00100H
		BEQ	WTRSP80		; water on ?
;					; yes
;// 03.05.08 //		LDA	#06202H
;// 03.05.08 //		STA	<WD2130
WTRSP40		EQU	$
		LDX	!UDSCKP3
		TYA
		LSR	A
		STA	!UDSCKB3,X
		INX
		INX
		STX	!UDSCKP3	; UD-STEP check data set
		STX	!UDSCKP4	; water-side STEP set pointer set
;
		LDX	#udstep
		JMP	UNITST1		; 4x4 unit set
;
;
;************************************************************************
;*		Up,Down-step set [floor change]		(UDSTPS8)	*
;************************************************************************
UDSTPS8		EQU	$
		PHX			; (X) push
;
		LDX	!UDSCKP8
		TYA
		LSR	A
		STA	!UDSCKB4,X
		INX
		INX
		STX	!UDSCKP8	; UD-STEP check data set
		BRA	UDST920
;
;
;************************************************************************
;*		Up,Down-step set 			(UDSTPS9)	*
;************************************************************************
UDSTPS9		EQU	$
		PHX			; (X) push
;
		LDX	!UDSCKP9
		TYA
		LSR	A
		STA	!UDSCKB9,X
		INX
		INX
		STX	!UDSCKP9	; UD-STEP check data set
UDST920		EQU	$
		TYX			; (X) <-- (Y)
		PLY			; (Y) <-- (X) pull
		LDA	#00004H
		STA	<WORKE
UDST940		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		STA	>BG1RBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
		STA	>BG1RBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	UDST940		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Normal Up,Down-step set			(UDSTPSA)	*
;************************************************************************
WTRSP180	EQU	$
		STZ	!GSUBFG
		PLX			; (X) pull
UDSTPSA		EQU	$
		PHX			; (X) push
;
		LDX	!UDSCKPA
		TYA
		LSR	A
		STA	!UDSCKBA,X
		INX
		INX
		STX	!UDSCKPA	; UD-STEP check data set
;
		PLX			; (X) pull
		JMP	UNITST1		; 4x4 unit set
;
;
;************************************************************************
;*		Water step set	 			(WTRSTP1)	*
;************************************************************************
WTRSTP1		EQU	$
		PHX			; (X) push
;
		LDA	<INFDF1
		AND	#000FFH
		CMP	#inf_gwr
		BNE	WTRSP140	; ground water check ?
;					; yes
		LDA	<RMXYCT
		ASL	A
		TAX
		LDA	>DJNTBL,X
		AND	#00100H
		BEQ	WTRSP180	; water on ?
;					; yes
		LDA	#06202H
		STA	<WD2130
WTRSP140	EQU	$
		LDX	!UDSCKPB
		TYA
		LSR	A
		STA	!UDSCKBB,X
		INX
		INX
		STX	!UDSCKPB	; UD-STEP check data set
;
		PLX			; (X) pull
		JMP	UNITST1		; 4x4 unit set
;
;
;
;************************************************************************
;*		Tobiori step				(TBRSTEP)	*
;************************************************************************
TBRSTEP		EQU	$
		LDX	!UDSCKP5
		TYA
		LSR	A
		STA	!UDSCKB5,X
		INX
		INX
		STX	!UDSCKP5	; water-side STEP check data set
		STX	!UDSCKP6
;
		TYX			; (X) <-- (Y)
		LDY	#tbrstp
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+002H,X
		STA	>BG1RBF+002H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+004H,X
		STA	>BG1RBF+004H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+006H,X
		STA	>BG1RBF+006H,X
;
		LDA	UNITDT+008H,Y
		STA	>ROOMBF+080H,X
		STA	>BG1RBF+080H,X
		LDA	UNITDT+00AH,Y
		STA	>ROOMBF+082H,X
		STA	>BG1RBF+082H,X
		LDA	UNITDT+00CH,Y
		STA	>ROOMBF+084H,X
		STA	>BG1RBF+084H,X
		LDA	UNITDT+00EH,Y
		STA	>ROOMBF+086H,X
		STA	>BG1RBF+086H,X
		RTS
;
;
;
;
;************************************************************************
;*		Up-step set				(USTPST)	*
;************************************************************************
USTPST		EQU	$
		LDX	!USCKPT
		TYA
		LSR	A
		STA	!USCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	USTP40		; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!USCKBF,X
USTP40		EQU	$
		INX
		INX
		STX	!USCKPT		; Up-STEP set pointer set
		STX	!UPCKPT		;                         (BG.2:rasen)
		STX	!UPCKP1		;                         (BG.1:rasen)
		STX	!SUPCP0		;                         (scroll-step)
		STX	!SUPCP1		;                         (scroll-step)
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
;
		LDX	#upstep
		JMP	UNITST1		; 4x4 unit set
;
;
;************************************************************************
;*		Down-step set				(DSTPST)	*
;************************************************************************
DSTPST		EQU	$
		LDX	!DSCKPT
		TYA
		LSR	A
		STA	!DSCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	DSTP40		; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!DSCKBF,X
DSTP40		EQU	$
		INX
		INX
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
;
		LDX	#dnstep
		JMP	UNITST1		; 4x4 unit set
;
;
;************************************************************************
;*		Kakushi Down-step set			(DSTPST)	*
;************************************************************************
KDSPST		EQU	$
		LDX	!DSCKPT
		TYA
		LSR	A
		STA	!DSCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	KDSP40		; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!DSCKBF,X
KDSP40		EQU	$
		INX
		INX
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
;
		LDX	#kdnstp
		JMP	UNITST1		; 4x4 unit set
;
;
;
;************************************************************************
;*		Rasen Up-step set			(USTEPST)	*
;************************************************************************
USTEPST		EQU	$
		LDX	!UPCKPT
		TYA
		SEC
		SBC	#00080H
		LSR	A
		STA	!USCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	UPSP40		; BG1. set ?
;					; yes
		TYA
		SEC
		SBC	#00080H
		ORA	#02000H
		LSR	A
		STA	!USCKBF,X
UPSP40		EQU	$
		INX
		INX
		STX	!UPCKPT		; Up-STEP set pointer set (BG.2:rasen)
		STX	!UPCKP1		;                         (BG.1:rasen)
		STX	!SUPCP0		;                         (scroll-step)
		STX	!SUPCP1		;                         (scroll-step)
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
;
		LDX	#ustepd
		BRA	RASNST0
;// 03.06.13 //		LDA	#00004H
;// 03.06.13 //		JSR	UNITST0		; 4x3 unit set
;// 03.06.13 //;
;// 03.06.13 //		LDX	<WORK8
;// 03.06.13 //		DEX
;// 03.06.13 //		DEX
;// 03.06.13 //		LDA	>ROOMBF+000H,X
;// 03.06.13 //		ORA	#02000H
;// 03.06.13 //		STA	>ROOMBF+000H,X
;// 03.06.13 //		LDA	>ROOMBF+00AH,X
;// 03.06.13 //		ORA	#02000H
;// 03.06.13 //		STA	>ROOMBF+00AH,X
;// 03.06.13 //		RTS
;
;
;
;************************************************************************
;*		Rasen Up-step set	(down)		(USTEPS1)	*
;************************************************************************
USTEPS1		EQU	$
		LDX	!UPCKP1
		TYA
		SEC
		SBC	#00080H
		LSR	A
		STA	!USCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	UPS140		; BG1. set ?
;					; yes
		TYA
		SEC
		SBC	#00080H
		ORA	#02000H
		LSR	A
		STA	!USCKBF,X
UPS140		EQU	$
		INX
		INX
		STX	!UPCKP1		; Up-STEP set pointer set (BG.1:rasen)
		STX	!SUPCP0		;                         (scroll-step)
		STX	!SUPCP1		;                         (scroll-step)
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
;
		LDX	#ustep1
		BRA	RASNST1
;// 03.06.13 //		LDA	#00004H
;// 03.06.13 //		JSR	UNITST0		; 4x3 unit set
;// 03.06.13 //;
;// 03.06.13 //		LDX	<WORK8
;// 03.06.13 //		DEX
;// 03.06.13 //		DEX
;// 03.06.13 //		LDA	>BG1RBF+000H,X
;// 03.06.13 //		ORA	#02000H
;// 03.06.13 //		STA	>BG1RBF+000H,X
;// 03.06.13 //		LDA	>BG1RBF+00AH,X
;// 03.06.13 //		ORA	#02000H
;// 03.06.13 //		STA	>BG1RBF+00AH,X
;// 03.06.13 //		RTS
;
;
;
;************************************************************************
;*		Rasen Down-step set			(DSTEPST)	*
;************************************************************************
DSTEPST		EQU	$
		LDX	!DNCKPT
		TYA
		SEC
		SBC	#00080H
		LSR	A
		STA	!DSCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	DNSP40		; BG1. set ?
;					; yes
		TYA
		SEC
		SBC	#00080H
		ORA	#02000H
		LSR	A
		STA	!DSCKBF,X
DNSP40		EQU	$
		INX
		INX
		STX	!DNCKPT		; Dn-STEP set pointer set (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
;
		LDX	#dstepd
RASNST0		EQU	$
		LDA	#00004H
		JSR	UNITST0		; 4x3 unit set
;
		LDX	<WORK8
		DEX
		DEX
		LDA	>ROOMBF+000H,X
		ORA	#02000H
		STA	>ROOMBF+000H,X
		LDA	>ROOMBF+00AH,X
		ORA	#02000H
		STA	>ROOMBF+00AH,X
		RTS
;
;
;************************************************************************
;*		Rasen Down-step set	(down)			(DSTEPS1)	*
;************************************************************************
DSTEPS1		EQU	$
		LDX	!DNCKP1
		TYA
		SEC
		SBC	#00080H
		LSR	A
		STA	!DSCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	DNS140		; BG1. set ?
;					; yes
		TYA
		SEC
		SBC	#00080H
		ORA	#02000H
		LSR	A
		STA	!DSCKBF,X
DNS140		EQU	$
		INX
		INX
		STX	!DNCKP1		; Dn-STEP set pointer set
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
;
		LDX	#dstep1
RASNST1		EQU	$
		LDA	#00004H
		JSR	UNITST0		; 4x3 unit set
;
		LDX	<WORK8
		DEX
		DEX
		LDA	>BG1RBF+000H,X
		ORA	#02000H
		STA	>BG1RBF+000H,X
		LDA	>BG1RBF+00AH,X
		ORA	#02000H
		STA	>BG1RBF+00AH,X
		RTS
;
;
;
;
;
;
;************************************************************************
;*		Scroll Up-step set (up:ue)		(SUSTPS0)	*
;************************************************************************
SUSTPS0		EQU	$
		PHX			; (X) push
;
		LDX	!SUPCP0
		TYA
		LSR	A
		STA	!USCKBF,X
		INX
		INX
		STX	!SUPCP0		;                         (scroll-step)
		STX	!SUPCP1		;                         (scroll-step)
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
		BRA	SUPS000
;
;
;************************************************************************
;*		Scroll Down-step set (up:ue)		(SDUSTPS0)	*
;************************************************************************
SDSTPS0		EQU	$
		PHX			; (X) push
;
		LDX	!SDNCP0
		TYA
		LSR	A
		STA	!DSCKBF,X
		INX
		INX
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
		BRA	SUPS000
;
;
;************************************************************************
;*		Scroll Up-step set (up:sita)		(SUSTPS1)	*
;************************************************************************
SUSTPS1		EQU	$
		PHX			; (X) push
;
		LDX	!SUPCP1
		TYA
		LSR	A
		STA	!USCKBF,X
		INX
		INX
		STX	!SUPCP1		;                         (scroll-step)
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
		BRA	SUPS000
;
;************************************************************************
;*		Scroll Down-step set (up:sita)		(SDUSTPS1)	*
;************************************************************************
SDSTPS1		EQU	$
		PHX			; (X) push
;
		LDX	!SDNCP1
		TYA
		LSR	A
		STA	!DSCKBF,X
		INX
		INX
		STX	!SDNCP1		;                         (scroll-step)
SUPS000		EQU	$
		TYX			; (X) <-- (Y)
		PLY			; (Y) <-- (X) pull
		LDA	#00004H
		STA	<WORKE
SUPS040		EQU	$
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
		BNE	SUPS040		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Scroll Up-step set (down:ue)		(SUSTPS2)	*
;************************************************************************
SUSTPS2		EQU	$
		PHX			; (X) push
;
		LDX	!SUPCP0
		TYA
		LSR	A
		STA	!USCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	SUPS2140	; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!USCKBF,X
SUPS2140	EQU	$
		INX
		INX
		STX	!SUPCP0		;                         (scroll-step)
		STX	!SUPCP1		;                         (scroll-step)
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
		BRA	SUPS200
;
;************************************************************************
;*		Scroll Down-step set (down:ue)		(SDSTPS2)	*
;************************************************************************
SDSTPS2		EQU	$
		PHX			; (X) push
;
		LDX	!SDNCP0
		TYA
		LSR	A
		STA	!DSCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	SDNS2140	; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!DSCKBF,X
SDNS2140	EQU	$
		INX
		INX
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
SUPS200		EQU	$
		TYX			; (X) <-- (Y)
		PLY			; (Y) <-- (X) pull
		LDA	#00004H
		STA	<WORKE
SUPS240		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	SUPS240		; set end ?
;					; yes
		LDA	<WORK8
		SEC
		SBC	#00200H
SUPS280		EQU	$
		TAX
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
		RTS
;
;
;************************************************************************
;*		Scroll Up-step set (down:sita)		(SUSTPS3)	*
;************************************************************************
SUSTPS3		EQU	$
		PHX			; (X) push
;
		LDX	!SUPCP1
		TYA
		LSR	A
		STA	!USCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	SUPS3140	; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!USCKBF,X
SUPS3140	EQU	$
		INX
		INX
		STX	!SUPCP1		;                         (scroll-step)
		STX	!DSCKPT		; Dn-STEP set pointer set
		STX	!DNCKPT		;                         (BG.2:rasen)
		STX	!DNCKP1		;                         (BG.1:rasen)
		STX	!SDNCP0		;                         (scroll-step)
		STX	!SDNCP1		;                         (scroll-step)
		BRA	SUPS300
;
;************************************************************************
;*		Scroll Down-step set (down:sita)	(SDSTPS3)	*
;************************************************************************
SDSTPS3		EQU	$
		PHX			; (X) push
;
		LDX	!SDNCP1
		TYA
		LSR	A
		STA	!DSCKBF,X
		LDA	<BFP000
		CMP	#04000H
		BNE	SDNS3140	; BG1. set ?
;					; yes
		TYA
		ORA	#02000H
		LSR	A
		STA	!DSCKBF,X
SDNS3140	EQU	$
		INX
		INX
		STX	!SDNCP1		;                         (scroll-step)
SUPS300		EQU	$
		TYX			; (X) <-- (Y)
		PLY			; (Y) <-- (X) pull
		LDA	#00004H
		STA	<WORKE
SUPS340		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
		STA	>BG1RBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	SUPS340		; set end ?
;					; yes
		LDA	<WORK8
		CLC
		ADC	#00200H
		JMP	SUPS280
;// 03.08.29 //		TAX
;// 03.08.29 //		LDA	>ROOMBF+000H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+000H,X
;// 03.08.29 //		LDA	>ROOMBF+080H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+080H,X
;// 03.08.29 //		LDA	>ROOMBF+100H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+100H,X
;// 03.08.29 //		LDA	>ROOMBF+180H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+180H,X
;// 03.08.29 //		RTS
;
;
;
;************************************************************************
;*		Matoate gate (left) set			(TTHLST6)	*
;************************************************************************
TTHLST6		EQU	$
;
;************************************************************************
;*		Matoate gate (right) set		(TTHLST7)	*
;************************************************************************
TTHLST7		EQU	$
		LDA	#00003H
		JSR	UNITST0		; 3x3 unit set
		LDA	<WORK8
		CLC
		ADC	#00180H
		TAY
		LDA	#00003H
		JMP	UNITST0		; 3x3 unit set
;
;
;
;
;************************************************************************
;*		Room Hikari				(HKRIST0)	*
;************************************************************************
HKRIST0		EQU	$
		JSR	UNITST1		; 4x4 unit set
		LDA	<WORK8
		CLC
		ADC	#00100H
		TAY
		LDX	#hkrid0
		JSR	UNITST1		; 4x4 unit set
;
		LDA	<WORK8
		CLC
		ADC	#00300H
		TAY
		LDX	#hkrid1
		JMP	UNITST1		; 4x4 unit set
;
;
;
;
;************************************************************************
;*		Boss-Room Hikari			(HKRIST1)	*
;************************************************************************
HKRIST1		EQU	$
		LDA	>DJNTBL+065H*2
		AND	#00100H
		BEQ	HKRS80		; set ok ?
;					; yes
;
;************************************************************************
;*		Boss-Room Enter				(BSENTRST)	*
;************************************************************************
BSENTRST	EQU	$
		JSR	UNITST1		; 4x4 unit set
		JSR	UNITST1		; 4x4 unit set
		LDA	<WORK8
		CLC
		ADC	#00200H
		TAY
		JSR	UNITST1		; 4x4 unit set
		JSR	UNITST1		; 4x4 unit set
HKRS80		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Ganon-Room kazari			(GNNKZST2)	*
;************************************************************************
GNNKZST2	EQU	$
		JSR	UNITST1		; 4x4 unit set
		LDA	<WORK8
		CLC
		ADC	#00200H-4
		TAY
		PHX			; (X) push
		JSR	UNITST1		; 4x4 unit set
		PLX			; (X) pull
		LDA	<WORK8
		CLC
		ADC	#00200H+4
		TAY
		JMP	UNITST1		; 4x4 unit set
;
;
;
;************************************************************************
;*		Numa-yuka set				(NUMAYKST)	*
;************************************************************************
NUMAYKST	EQU	$
		LDA	#000005H
		JSR	FLST200
		LDA	<WORK8
		CLC
		ADC	#00200H
		TAY
		LDA	#000005H
		JMP	FLST200
;
;
;
;
;
;
;========================================================================
;========================================================================
;========================================================================
;----------------------------  DOOR  ------------------------------------
;************************************************************************
;*		Up door set				(UDOORST)	*
;************************************************************************
UDOORST		EQU	$
		LDY	UPADR0,X	; (Y) <-- up door address
		STY	<WORK8
;
		CMP	#crh_dr
		BNE	UDRS00		; crush wall ?
;					; yes
		JMP	UCSWALL
;
UDRS00		EQU	$
		CMP	#cng_dr
		BNE	UDRS10		; mode change ?
;					; yes
		TYA
		SEC
		SBC	#000FEH
		JMP	MDCCKST		; mode change check
;
UDRS10		EQU	$
		CMP	#ctn_dr
		BNE	UDRS20		; certen-door ?
;					; yes
		JMP	UCTNDRST	; certen-door set
;
UDRS20		EQU	$
		CMP	#wal_dr
		BNE	UDRS30		; wall ?
;					; yes
		JMP	UWLDRST		; wall set
;
UDRS30		EQU	$
		CMP	#djc_dr
		BNE	UDRS40		; danjyon change-door ?
;					; yes
		TYA
		SEC
		SBC	#000FEH
		JMP	DJCDRST		; danjyon change-door set
;
UDRS40		EQU	$
		CMP	#udr_dr
		BNE	UDRS50		; under door ?
;					; yes
		TYA
		AND	#0F07FH
		JSR	UDDRST0		; under-door data reset-0
		JMP	UDRS100
;
UDRS50		EQU	$
		CMP	#ext_dr
		BNE	UDRS60		; exit-door ?
;					; yes
		LDX	!EXTPNT
		TYA
		STA	!EXTADR0,X
		INX
		INX
		STX	!EXTPNT
		RTS
;
;// 03.02.21 //		CMP	#wrp_dr
;// 03.02.21 //		BNE	UDRS60		; warp-door ?
;// 03.02.21 //;					; yes
;// 03.02.21 //		TYA
;// 03.02.21 //		SEC
;// 03.02.21 //		SBC	#000FEH
;// 03.02.21 //		JMP	WRPDRST		; warp-door set
;
UDRS60		EQU	$
		CMP	#nul_dr
		BNE	UDRS70		; null door ?
;					; yes
;// 03.08.07 //		TYA
;// 03.08.07 //		AND	#0F07FH
;// 03.08.07 //		JSR	UDDRST2		; under-door data reset-2
		JSR	UDRS100
		BRA	UDRS87
;
;
UDRS70		EQU	$
		CMP	#ky2_dr
		BEQ	UDRS80		; rasen-door ?
;					; no
		CMP	#ky3_dr
		BEQ	UDRS80		; rasen-door ?
;					; no
		CMP	#ky4_dr
		BEQ	UDRS80		; rasen-door ?
;					; no
		CMP	#ky5_dr
		BNE	UDRS90		; rasen-door ?
;					; yes
UDRS80		EQU	$
		LDX	!DORPNT
		LDA	#00000H
		STA	!DORFLG,X
		TYA
		STA	!DORADR,X
		TXA
		LSR	A
		XBA
		ORA	<WORK4
		STA	!DRSTAT,X
		TXA
		AND	#0000FH
		TAY
		LDA	BITCD0,Y
		LDY	<WORK8
		AND	!DOPNBT
		BEQ	UDRS83		; door open ?
;					; yes
		INX
		INX
		STX	!DORPNT
		RTS
;
UDRS83		EQU	$
		LDA	<WORK4
		CMP	#ky4_dr
		BCC	UDRS120		; down rase-door ?
;					; yes
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00000H
		JSR	DRDTGT		; door data get
		LDA	UDRTBL,Y
		TAY
		LDX	<WORK8
		LDA	#00004H
		STA	<WORKE
UDRS85		EQU	$
		LDA	UNITDT+000H,Y
;// 03.08.19 //		STA	>ROOMBF+000H,X
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		TYA
		CLC
		ADC	#00006H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	UDRS85		; unit set end ?
;					; yes
UDRS87		EQU	$
		LDX	!DORPNT
		LDA	!DORADR-2,X
		ORA	#02000H
		STA	!DORADR-2,X
		RTS
;
UDRS90		EQU	$
		CMP	#ud_nor
		BCC	UDRS100		; BG.1 door set ?
;					; yes
		JMP	UDOORS1		; BG.1 up door set
;
;
UDRS100		EQU	$
		LDX	<WORK2
		CPX	#0000CH
		BCC	UDRS120		; down door set ?
;					; yes
		PHY			; (Y) push
		LDA	!DORPNT
		PHA			; (A) push
		ORA	#00010H
		STA	!DORPNT
		LDY	UPADR0+00CH,X
		LDA	<WORK4
		JSR	DDRS100		; down door write
		PLA			; (A) pull
		STA	!DORPNT
		PLY			; (Y) pull
		LDA	<WORK4
		STA	<WORKA
UDRS120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00000H
		JSR	DRDTGT		; door data get
		BCC	UDRS180		; door set ?
;					; yes
		LDA	#sht_dr
		CPY	#st0_dr
		BEQ	UDRS125		;
;					;
		LDA	#nor_dr
		CPY	#st1_dr
		BNE	UDRS130		;
;					;
UDRS125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
UDRS130		EQU	$
		LDX	UDRTBL,Y
		LDY	<WORK8
		LDA	#0004H
		STA	<WORKE
UDRS140		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		TXA
		CLC
		ADC	#00006H
		TAX
		INY
		INY
		DEC	<WORKE
		BNE	UDRS140		; unit set end ?
;					; yes
UDRS180		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Down door set				(DDOORST)	*
;************************************************************************
DDOORST		EQU	$
		LDY	DNADR0,X	; (Y) <-- down door address
		STY	<WORK8
;
		CMP	#cng_dr
		BNE	DDRS00		; mode change ?
;					; yes
		TYA
		CLC
		ADC	#00202H
		JMP	MDCCKST		; mode change check
;
DDRS00		EQU	$
;// 03.08.29 //		CMP	#ctn_dr
;// 03.08.29 //		BNE	DDRS10		; certen-door ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		JMP	DCTNDRST	; certen-door set
;// 03.08.29 //;
;// 03.08.29 //DDRS10		EQU	$
		CMP	#wal_dr
		BNE	DDRS20		; wall ?
;					; yes
		JMP	DWLDRST		; wall set
;
DDRS20		EQU	$
		CMP	#djc_dr
		BNE	DDRS30		; danjyon change-door ?
;					; yes
		TYA
		CLC
		ADC	#00202H
		JMP	DJCDRST		; danjyon change-door set
;
DDRS30		EQU	$
		CMP	#ext_dr
		BNE	DDRS40		; exit-door ?
;					; yes
		LDX	!EXTPNT
		TYA
		STA	!EXTADR0,X
		INX
		INX
		STX	!EXTPNT
		RTS
;
DDRS40		EQU	$
;// 03.02.21 //		CMP	#wrp_dr
;// 03.02.21 //		BNE	DDRS90		; warp-door ?
;// 03.02.21 //;					; yes
;// 03.02.21 //		TYA
;// 03.02.21 //		SEC
;// 03.02.21 //		SBC	#000FEH
;// 03.02.21 //		JMP	WRPDRST		; warp-door set
;// 03.03.14 //DDRS90		EQU	$
		CMP	#ud_nor
		BCC	DDRS50		; BG.1 door ?
;					; yes
		JMP	DDOORS1		; BG.1 down door set
;
;
DDRS50		EQU	$
		CMP	#djn_dr
		BNE	DDRS60		; danjyon-enter-door ?
;					; yes
		LDX	!DORPNT
		LDA	#00001H
		JSR	DRDTGT		; door data get
		LDA	<WORK8
		SEC
		SBC	#00200H+006H
		STA	<WORK8
		LDY	#djdordt
		LDA	#0000AH
		JMP	UNITSTX8	; unit set Xx8
;
;
DDRS60		EQU	$
		CMP	#dj1_dr
		BNE	DDRS80		; danjyon-enter-door ?
;					; yes
		TYA
		ORA	#02000H
		STA	<WORK8
		TAY
		LDX	!DORPNT
		LDA	#00001H
		JSR	DRDTGT		; door data get
		LDA	<WORK8
		SEC
		SBC	#00200H+006H
		STA	<WORK8
		LDY	#djdordt
		LDA	#0000AH
		JSR	UNITSTX8	; unit set Xx8
;
		LDA	<WORK8
		SEC
		SBC	#02080H
		TAX
		LDY	#0000AH
DDRS70		EQU	$
		LDA	>BG1RBF+000H,X
		ORA	#02000H
		STA	>ROOMBF+000H,X
		INX
		INX
		DEY
		BNE	DDRS70		;
;					;
		RTS
;
;
DDRS80		EQU	$
		CMP	#dkt_dr
		BEQ	DDRS90		; doukutsu-enter-door ?
;					; yes
		CMP	#dk1_dr
		BNE	DDRS95		; doukutsu-enter-door ?
;					; yes
DDRS85		EQU	$
		TYA
		CLC
		ADC	#00200H
		JSR	UDDRST0		; under-door data reset-0
DDRS90		EQU	$
		LDX	!DORPNT
		LDA	#00001H
		JSR	DRDTGT		; door data get
		LDY	<WORK8
		LDX	#dkdordt
		LDA	#0000AH
		JMP	UNITST1
;
;
DDRS95		EQU	$
		CMP	#dk2_dr
		BNE	DDRS100		; doukutsu-enter-door ?
;					; yes
		TYA
		PHY			; (Y) push
		ORA	#02000H
		STA	<WORK8
		TAY
		JSR	DDRS85		; door set
		PLA			; (A) <-- (Y) pull
		CLC
		ADC	#00180H
		TAX
		LDY	#00004H
		BRA	DDRS70
;
;
DDRS100		EQU	$
		CMP	#udr_dr
		BNE	DDRS110		; under door ?
;					; yes
		TYA
		CLC
		ADC	#00200H
		JSR	UDDRST0		; under-door data reset-0
		BRA	DDRS120
;
DDRS110		EQU	$
		CMP	#nul_dr
		BNE	DDRS120		; null door ?
;					; yes
;// 03.08.07 //		TYA
;// 03.08.07 //		CLC
;// 03.08.07 //		ADC	#00100H
;// 03.08.07 //		JSR	UDDRST2		; under-door data reset-2
		JSR	DDRS120
		JMP	UDRS87
;
;
DDRS120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00001H
		JSR	DRDTGT		; door data get
		BCC	DDRS180		; door set ?
;					; yes
		LDA	#nor_dr
		CPY	#ky1_dr
		BEQ	DDRS125		;
;					;
		CPY	#st0_dr
		BEQ	DDRS125		;
;					;
		LDA	#sht_dr
		CPY	#st1_dr
		BNE	DDRS130		;
;					;
DDRS125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
DDRS130		EQU	$
		LDX	DDRTBL,Y
		LDY	<WORK8
		LDA	#0004H
		STA	<WORKE
DDRS140		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP080],Y
		LDA	UNITDT+002H,X
		STA	[<BFP100],Y
		LDA	UNITDT+004H,X
		STA	[<BFP180],Y
		TXA
		CLC
		ADC	#00006H
		TAX
		INY
		INY
		DEC	<WORKE
		BNE	DDRS140		; unit set end ?
;					; yes
DDRS180		EQU	$
		RTS
;
;
;************************************************************************
;*		Left door set				(LDOORST)	*
;************************************************************************
LDOORST		EQU	$
		LDY	LFADR0,X	; (Y) <-- left door address
		STY	<WORK8
;
;// 03.08.29 //		CMP	#crh_dr
;// 03.08.29 //		BNE	LDRS00		; crush wall ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		JMP	LCSWALL
;// 03.08.29 //;
;// 03.08.29 //LDRS00		EQU	$
		CMP	#cng_dr
		BNE	LDRS10		; mode change ?
;					; yes
		TYA
		CLC
		ADC	#0007CH
		JMP	MDCCKST		; mode change check
;
LDRS10		EQU	$
;// 03.08.29 //		CMP	#ctn_dr
;// 03.08.29 //		BNE	LDRS20		; certen-door ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		JMP	LCTNDRST	; certen-door set
;// 03.08.29 //;
;// 03.08.29 //LDRS20		EQU	$
		CMP	#wal_dr
		BNE	LDRS30		; wall ?
;					; yes
		JMP	LWLDRST		; wall set
;
LDRS30		EQU	$
		CMP	#djc_dr
		BNE	LDRS40		; danjyon change-door ?
;					; yes
		TYA
		CLC
		ADC	#0007CH
		JMP	DJCDRST		; danjyon change-door set
;
LDRS40		EQU	$
		CMP	#udr_dr
		BNE	LDRS50		; under door ?
;					; yes
		TYA
		AND	#0FFC0H
		JSR	UDDRST1		; under-door data reset-1
		BRA	LDRS100
;
LDRS50		EQU	$
;// 03.02.21 //		CMP	#wrp_dr
;// 03.02.21 //		BNE	LDRS60		; warp-door ?
;// 03.02.21 //;					; yes
;// 03.02.21 //		TYA
;// 03.02.21 //		SEC
;// 03.02.21 //		SBC	#000FEH
;// 03.02.21 //		JMP	WRPDRST		; warp-door set
;
LDRS60		EQU	$
		CMP	#nul_dr
		BNE	LDRS90		; null door ?
;					; yes
;// 03.08.07 //		TYA
;// 03.08.07 //		AND	#0FFC0H
;// 03.08.07 //		JSR	UDDRST3		; under-door data reset-3
		JSR	LDRS100
		JMP	UDRS87
;
LDRS90		EQU	$
		CMP	#ud_nor
		BCC	LDRS100		; BG.1 door ?
;					; yes
		JMP	LDOORS1		; BG.1 left door set
;
;
LDRS100		EQU	$
		LDX	<WORK2
		CPX	#0000CH
		BCC	LDRS120		; right door set ?
;					; yes
		PHY			; (X) push
		LDA	!DORPNT
		PHA			; (A) push
		ORA	#00010H
		STA	!DORPNT
		LDY	LFADR0+00CH,X
		LDA	<WORK4
		JSR	RDRS100		; right door write
		PLA			; (A) pull
		STA	!DORPNT
		PLY			; (Y) pull
		LDA	<WORK4
		STA	<WORKA
LDRS120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00002H
		JSR	DRDTGT		; door data get
		BCC	LDRS180		; door set ?
;					; yes
		LDA	#sht_dr
		CPY	#st0_dr
		BEQ	LDRS125		;
;					;
		LDA	#nor_dr
		CPY	#st1_dr
		BNE	LDRS130		;
;					;
LDRS125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
LDRS130		EQU	$
		LDX	LDRTBL,Y
		LDY	<WORK8
		LDA	#0003H
		STA	<WORKE
LDRS140		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		LDA	UNITDT+006H,X
		STA	[<BFP180],Y
		TXA
		CLC
		ADC	#00008H
		TAX
		INY
		INY
		DEC	<WORKE
		BNE	LDRS140		; unit set end ?
;					; yes
LDRS180		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Right door set				(RDOORST)	*
;************************************************************************
RDOORST		EQU	$
		LDY	RTADR0,X	; (Y) <-- right door address
		STY	<WORK8
;
		CMP	#cng_dr
		BNE	RDRS00		; mode change ?
;					; yes
		TYA
		CLC
		ADC	#00088H
		JMP	MDCCKST		; mode change check
;
RDRS00		EQU	$
;// 03.08.29 //		CMP	#ctn_dr
;// 03.08.29 //		BNE	RDRS10		; certen-door ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		JMP	RCTNDRST	; certen-door set
;// 03.08.29 //;
;// 03.08.29 //RDRS10		EQU	$
		CMP	#wal_dr
		BNE	RDRS20		; wall ?
;					; yes
		JMP	RWLDRST		; wall set
;
RDRS20		EQU	$
		CMP	#djc_dr
		BNE	RDRS30		; danjyon change-door ?
;					; yes
		TYA
		CLC
		ADC	#00088H
		JMP	DJCDRST		; danjyon change-door set
;
RDRS30		EQU	$
;// 03.02.21 //		CMP	#wrp_dr
;// 03.02.21 //		BNE	RDRS90		; warp-door ?
;// 03.02.21 //;					; yes
;// 03.02.21 //		TYA
;// 03.02.21 //		SEC
;// 03.02.21 //		SBC	#000FEH
;// 03.02.21 //		JMP	WRPDRST		; warp-door set
;
RDRS90		EQU	$
		CMP	#ud_nor
		BCC	RDRS100		; BG.1 door ?
;					; yes
		JMP	RDOORS1		; BG.1 right door set
;
;
RDRS100		EQU	$
		CMP	#udr_dr
		BNE	RDRS110		; under door ?
;					; yes
		TYA
		CLC
		ADC	#00008H
		JSR	UDDRST1		; under-door data reset-1
		BRA	RDRS110
;
RDRS110		EQU	$
		CMP	#nul_dr
		BNE	RDRS120		; null door ?
;					; yes
;// 03.08.07 //		TYA
;// 03.08.07 //		CLC
;// 03.08.07 //		ADC	#00008H
;// 03.08.07 //		JSR	UDDRST3		; under-door data reset-3
		JSR	RDRS120
		JMP	UDRS87
;
;
RDRS120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00003H
		JSR	DRDTGT		; door data get
		BCC	RDRS180		; door set ?
;					; yes
		LDA	#nor_dr
		CPY	#st0_dr
		BEQ	RDRS125		;
;					;
		LDA	#sht_dr
		CPY	#st1_dr
		BNE	RDRS130		;
;					;
RDRS125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
RDRS130		EQU	$
		LDX	RDRTBL,Y
		LDY	<WORK8
		INY
		INY
		LDA	#0003H
		STA	<WORKE
RDRS140		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		LDA	UNITDT+006H,X
		STA	[<BFP180],Y
		TXA
		CLC
		ADC	#00008H
		TAX
		INY
		INY
		DEC	<WORKE
		BNE	RDRS140		; unit set end ?
;					; yes
RDRS180		EQU	$
		RTS
;
;
;
;
;----------------------------  Certen  ----------------------------------
;************************************************************************
;*		Up-Certen-door				(UCTNDRST)	*
;************************************************************************
UCTNDRST	EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00000H
		JSR	DRDTGT		; door data get
		BCC	UCTND40		; door set ?
;					; yes
		LDX	UDRTBL,Y
		BRA	RCTDS40
;
UCTND40		EQU	$
		LDY	<WORK8
		LDX	#crtnd0
		JMP	UNITST1		; 4x4 unit set
;
;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Dwon-Certen-door			(DCTNDRST)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //DCTNDRST	EQU	$
;// 03.08.29 //		STY	<WORK8
;// 03.08.29 //;
;// 03.08.29 //		LDX	!DORPNT
;// 03.08.29 //		LDA	#00001H
;// 03.08.29 //		JSR	DRDTGT		; door data get
;// 03.08.29 //		BCC	RCTDS80		; door set ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		LDX	DDRTBL,Y
;// 03.08.29 //		BRA	RCTDS40
;// 03.08.29 //;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Left-Certen-door			(LCTNDRST)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //LCTNDRST	EQU	$
;// 03.08.29 //		STY	<WORK8
;// 03.08.29 //;
;// 03.08.29 //		LDX	!DORPNT
;// 03.08.29 //		LDA	#00002H
;// 03.08.29 //		JSR	DRDTGT		; door data get
;// 03.08.29 //		BCC	RCTDS80		; door set ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		LDX	LDRTBL,Y
;// 03.08.29 //		BRA	RCTDS40
;// 03.08.29 //;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Right-Certen-door			(RCTNDRST)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //RCTNDRST	EQU	$
;// 03.08.29 //		STY	<WORK8
;// 03.08.29 //;
;// 03.08.29 //		LDX	!DORPNT
;// 03.08.29 //		LDA	#00003H
;// 03.08.29 //		JSR	DRDTGT		; door data get
;// 03.08.29 //		BCC	RCTDS80		; door set ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		LDX	RDRTBL,Y
RCTDS40		EQU	$
		LDY	<WORK8
		JSR	UNITST1		; 4x4 unit set
RCTDS80		EQU	$
		RTS
;
;
;
;
;----------------------------  Crush WALL  ------------------------------
;************************************************************************
;*		Crush wall  UP,DOWN			(UCSWALL)	*
;************************************************************************
UCWL400		EQU	$
		LDX	!DORPNT
		STZ	!DORFLG,X
;
;// 03.05.31 //		LDA	<WORK8
;// 03.05.31 //		CLC
;// 03.05.31 //		ADC	#00014H
;// 03.05.31 //		STA	!DORADR,X
;
		TXA
		LSR	A
		XBA
		ORA	#crh_dr
		STA	!DRSTAT,X
;
		INX
		INX
		STX	!DORPNT
		RTS
;
;
UCSWALL		EQU	$
		LDY	UPADR1,X	; (Y) <-- crush wall address
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	<WORK8
		CLC
		ADC	#00014H
		STA	!DORADR,X
;
		TXA
		LSR	A
		XBA
		ORA	#crh_dr
		STA	!DRSTAT,X
;
		TXA
		AND	#0000FH
		TAY
		LDA	!DOPNBT
		AND	BITCD0,Y

;// 03.03.11 //		BNE	UCWL400		; door open ?
		BEQ	UCWL400		; door open ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	#000H
		LDA	<INFDF0
		CMP	#inf_cwy
		BEQ	UCWL20		;
;					;
		CMP	#inf_bcw
		BEQ	UCWL20		;
;					;
		CMP	#inf_cws
		BEQ	UCWL20		;
;					;
		INX
UCWL20		EQU	$
		STZ	<INFDF0,X
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<WORK8
		PHA			; (A) push
;
		LDA	<RMCKYF
		ORA	#00002H
		STA	<RMCKYF		;
		LDA	!CWLXYF
		ORA	#00100H
		STA	!CWLXYF
;
		LDY	#00054H
		LDX	DDRTBL,Y
		JSR	UCWL100		; down crush wall write
;
		PLA			; (A) pull
		CLC
		ADC	#00300H
		STA	<WORK8
;
		INC	!DORPNT
		INC	!DORPNT
		LDA	<RSXYCKF
		ORA	#00200H
		STA	<RSXYCKF
;
		LDY	#00054H
		LDX	UDRTBL,Y
UCWL100		EQU	$
		LDA	#00012H
		STA	<XSTCNT
;
		LDY	<WORK8
		JSR	UCWL200		; side wall set
		LDA	<WORK8
		CLC
		ADC	#00004H
		STA	<WORK8
		TXA
		CLC
		ADC	#0000CH
		TAX
		PHX			; (X) push
		TXY			; (Y) <-- (X)
		LDX	<WORK8
		LDA	UNITDT+000H,Y
UCWL120		EQU	$
		STA	>ROOMBF+000H,X
		STA	>ROOMBF+080H,X
		STA	>ROOMBF+100H,X
		STA	>ROOMBF+180H,X
		STA	>ROOMBF+200H,X
		STA	>ROOMBF+280H,X
		INX
		INX
		DEC	<XSTCNT
		BNE	UCWL120		;
;					;
		TXY			; (Y) <-- (X)
		PLX			; (X) pull
		INX
		INX
UCWL200		EQU	$
		LDA	#00006H
		STA	<WORKA
UCWL220		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+00CH,X
		STA	[<BFP002],Y
		INX
		INX
		TYA
		CLC
		ADC	#00080H
		TAY
		DEC	<WORKA
		BNE	UCWL220		; set end ?
;					; yes
		RTS
;
;
;// 03.08.29 //;
;// 03.08.29 //;************************************************************************
;// 03.08.29 //;*		Crush wall  LEFT,RIGHT			(LCSWALL)	*
;// 03.08.29 //;************************************************************************
;// 03.08.29 //LCWL400		EQU	$
;// 03.08.29 //		LDX	!DORPNT
;// 03.08.29 //		LDA	#00002H
;// 03.08.29 //		STA	!DORFLG,X
;// 03.08.29 //;
;// 03.08.29 //;// 03.05.31 //		LDA	<WORK8
;// 03.08.29 //;// 03.05.31 //		CLC
;// 03.08.29 //;// 03.05.31 //		ADC	#00480H
;// 03.08.29 //;// 03.05.31 //		STA	!DORADR,X
;// 03.08.29 //;
;// 03.08.29 //		TXA
;// 03.08.29 //		LSR	A
;// 03.08.29 //		XBA
;// 03.08.29 //		ORA	#crh_dr
;// 03.08.29 //		STA	!DRSTAT,X
;// 03.08.29 //;
;// 03.08.29 //		INX
;// 03.08.29 //		INX
;// 03.08.29 //		STX	!DORPNT
;// 03.08.29 //		RTS
;// 03.08.29 //;
;// 03.08.29 //;
;// 03.08.29 //LCSWALL		EQU	$
;// 03.08.29 //		LDY	LFADR1,X	; (Y) <-- crush wall address
;// 03.08.29 //		STY	<WORK8
;// 03.08.29 //;
;// 03.08.29 //		LDX	!DORPNT
;// 03.08.29 //		LDA	<WORK8
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00480H
;// 03.08.29 //		STA	!DORADR,X
;// 03.08.29 //;
;// 03.08.29 //		TXA
;// 03.08.29 //		AND	#0000FH
;// 03.08.29 //		TAY
;// 03.08.29 //		LDA	!DOPNBT
;// 03.08.29 //		AND	BITCD0,Y
;// 03.08.29 //;// 03.03.11 //		BNE	LCWL400		; door open ?
;// 03.08.29 //		BEQ	LCWL400		; door open ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		MEM8
;// 03.08.29 //		IDX8
;// 03.08.29 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.08.29 //;
;// 03.08.29 //		LDX	#000H
;// 03.08.29 //		LDA	<INFDF0
;// 03.08.29 //		CMP	#inf_cwy
;// 03.08.29 //		BEQ	LCWL20		;
;// 03.08.29 //;					;
;// 03.08.29 //		CMP	#inf_bcw
;// 03.08.29 //		BEQ	LCWL20		;
;// 03.08.29 //;					;
;// 03.08.29 //		CMP	#inf_cws
;// 03.08.29 //		BEQ	LCWL20		;
;// 03.08.29 //;					;
;// 03.08.29 //		INX
;// 03.08.29 //LCWL20		EQU	$
;// 03.08.29 //		STZ	<INFDF0,X
;// 03.08.29 //;
;// 03.08.29 //		MEM16
;// 03.08.29 //		IDX16
;// 03.08.29 //		REP	#00110000B	; memory,index 16bit mode
;// 03.08.29 //;
;// 03.08.29 //		LDA	<WORK8
;// 03.08.29 //		PHA			; (A) push
;// 03.08.29 //;
;// 03.08.29 //		LDA	<RMCKXF
;// 03.08.29 //		ORA	#00002H
;// 03.08.29 //		STA	<RMCKXF		;
;// 03.08.29 //		LDA	!CWLXYF
;// 03.08.29 //		ORA	#00001H
;// 03.08.29 //		STA	!CWLXYF
;// 03.08.29 //;
;// 03.08.29 //		LDY	#00054H
;// 03.08.29 //		LDX	RDRTBL,Y
;// 03.08.29 //		JSR	LCWL100		; right crush wall write
;// 03.08.29 //;
;// 03.08.29 //		PLA			; (A) pull
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#0000AH
;// 03.08.29 //		STA	<WORK8
;// 03.08.29 //;
;// 03.08.29 //		INC	!DORPNT
;// 03.08.29 //		INC	!DORPNT
;// 03.08.29 //		LDA	<RSXYCKF
;// 03.08.29 //		ORA	#00002H
;// 03.08.29 //		STA	<RSXYCKF
;// 03.08.29 //;
;// 03.08.29 //		LDY	#00034H
;// 03.08.29 //		LDX	LDRTBL,Y
;// 03.08.29 //LCWL100		EQU	$
;// 03.08.29 //		LDA	#00012H
;// 03.08.29 //		STA	<XSTCNT
;// 03.08.29 //;
;// 03.08.29 //		LDY	<WORK8
;// 03.08.29 //		JSR	LCWL200		; side wall set
;// 03.08.29 //		LDA	<WORK8
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00100H
;// 03.08.29 //		STA	<WORK8
;// 03.08.29 //		TAY
;// 03.08.29 //		TXA
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#0000AH
;// 03.08.29 //		TAX
;// 03.08.29 //LCWL120		EQU	$		
;// 03.08.29 //		LDA	#00005H
;// 03.08.29 //		JSR	UTSTC40		; 5x1 unit set
;// 03.08.29 //		ADC	#00080H
;// 03.08.29 //		TAY
;// 03.08.29 //		STY	<WORK8
;// 03.08.29 //		DEC	<XSTCNT
;// 03.08.29 //		BNE	LCWL120		;
;// 03.08.29 //;					;
;// 03.08.29 //		TXA
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#0000AH
;// 03.08.29 //		TAX
;// 03.08.29 //LCWL200		EQU	$
;// 03.08.29 //		LDA	#00005H
;// 03.08.29 //		STA	<WORKA
;// 03.08.29 //LCWL220		EQU	$
;// 03.08.29 //		LDA	UNITDT+000H,X
;// 03.08.29 //		STA	[<BFP000],Y
;// 03.08.29 //		LDA	UNITDT+00AH,X
;// 03.08.29 //		STA	[<BFP080],Y
;// 03.08.29 //		INX
;// 03.08.29 //		INX
;// 03.08.29 //		INY
;// 03.08.29 //		INY
;// 03.08.29 //		DEC	<WORKA
;// 03.08.29 //		BNE	LCWL220		; set end ?
;// 03.08.29 //;					; yes
;// 03.08.29 //		RTS
;// 03.08.29 //;
;
;
;
;----------------------------  BG.1 door  -------------------------------
;************************************************************************
;*		BG.1 Up door set			(UDOORS1)	*
;************************************************************************
UDOORS1		EQU	$
		LDX	<WORK2
		CPX	#0000CH
		BCC	UDR120		; down door set ?
;					; yes
		LDA	<WORK4
		CMP	#ud_wrp
		BEQ	UDR120		; under-warp ?
;					; no
		PHY			; (Y) push
		LDA	!DORPNT
		PHA			; (A) push
		ORA	#00010H
		STA	!DORPNT
		LDY	UPADR0+00CH,X
		JSR	DDR120		; down door write
		PLA			; (A) pull
		STA	!DORPNT
		PLY			; (Y) pull
UDR120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00000H
		JSR	DRDTGT		; door data get
		LDA	#ud_sht
		CPY	#ud_st0
		BEQ	UDR125		;
;					;
		LDA	#ud_nor
		CPY	#ud_st1
		BNE	UDR130		;
;					;
UDR125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
UDR130		EQU	$
		LDA	UDRTBL,Y
		TAY
		LDX	<WORK8
		LDA	#00004H
		STA	<WORKE
UDR140		EQU	$
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		TYA
		CLC
		ADC	#00006H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	UDR140		; unit set end ?
;					; yes
		LDA	<WORK4
		CMP	#ud_wrp
		BEQ	UDR180		; under-warp ?
;					; no
		LDA	<WORK8
		JSR	UWDS000		; wall up
;// 03.08.29 //		STA	<WORK2		; (WORK2) <-- set end address
;// 03.08.29 //		AND	#0F07FH
;// 03.08.29 //		TAX
;// 03.08.29 //UDR160		EQU	$
;// 03.08.29 //		LDA	>ROOMBF+000H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+000H,X
;// 03.08.29 //		LDA	>ROOMBF+002H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+002H,X
;// 03.08.29 //		LDA	>ROOMBF+004H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+004H,X
;// 03.08.29 //		LDA	>ROOMBF+006H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+006H,X
;// 03.08.29 //		TXA
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00080H
;// 03.08.29 //		TAX
;// 03.08.29 //		CPX	<WORK2
;// 03.08.29 //		BNE	UDR160		; set end ?
;// 03.08.29 //;					; yes
UDR180		EQU	$
		LDX	!DORPNT
		LDA	!DORADR-2,X
		ORA	#02000H
		STA	!DORADR-2,X
		RTS
;
;
;************************************************************************
;*		BG.1 Down door set			(DDOORS1)	*
;************************************************************************
DDOORS1		EQU	$
DDR120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00001H
		JSR	DRDTGT		; door data get
		LDA	#ud_nor
		CPY	#ud_st0
		BEQ	DDR125		;
;					;
		LDA	#ud_sht
		CPY	#ud_st1
		BNE	DDR130		;
;					;
DDR125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
DDR130		EQU	$
		LDA	DDRTBL,Y
		TAY
		LDX	<WORK8
		LDA	#00004H
		STA	<WORKE
DDR140		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+080H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+100H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+180H,X
		TYA
		CLC
		ADC	#00006H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	DDR140		; unit set end ?
;					; yes
		LDA	<WORK8
		CLC
		ADC	#00200H
		JSR	DWDS000		; wall up
;// 03.08.29 //		TAX
;// 03.08.29 //DDR160		EQU	$
;// 03.08.29 //		LDA	>ROOMBF+000H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+000H,X
;// 03.08.29 //		LDA	>ROOMBF+002H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+002H,X
;// 03.08.29 //		LDA	>ROOMBF+004H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+004H,X
;// 03.08.29 //		LDA	>ROOMBF+006H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+006H,X
;// 03.08.29 //		TXA
;// 03.08.29 //		CLC
;// 03.08.29 //		ADC	#00080H
;// 03.08.29 //		TAX
;// 03.08.29 //		AND	#00F80H
;// 03.08.29 //		BNE	DDR160		; set end ?
;// 03.08.29 //;					; yes
		LDX	!DORPNT
		LDA	!DORADR-2,X
		ORA	#02000H
		STA	!DORADR-2,X
		RTS
;
;
;************************************************************************
;*		BG.1 Left door set			(LDOORS1)	*
;************************************************************************
LDOORS1		EQU	$
		LDX	<WORK2
		CPX	#0000CH
		BCC	LDR120		; right door set ?
;					; yes
		PHY			; (Y) push
		LDA	!DORPNT
		PHA			; (A) push
		ORA	#00010H
		STA	!DORPNT
		LDY	LFADR0+00CH,X
		JSR	RDR120		; right door write
		PLA			; (A) pull
		STA	!DORPNT
		PLY			; (Y) pull
LDR120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00002H
		JSR	DRDTGT		; door data get
		LDA	#ud_sht
		CPY	#ud_st0
		BEQ	LDR125		;
;					;
		LDA	#ud_nor
		CPY	#ud_st1
		BNE	LDR130		;
;					;
LDR125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
LDR130		EQU	$
		LDA	LDRTBL,Y
		TAY
		LDX	<WORK8
;
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+180H,X
;
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		LDA	#00002H
		STA	<WORKE
LDR140		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+000H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+080H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+100H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+180H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	LDR140		; unit set end ?
;					; yes
		LDA	<WORK8
		JSR	LWDS000		; wall up
;// 03.08.29 //		STA	<WORK2		; (WORK2) <-- set end address
;// 03.08.29 //		AND	#0FFC0H
;// 03.08.29 //		TAX
;// 03.08.29 //LDR160		EQU	$
;// 03.08.29 //		LDA	>ROOMBF+000H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+000H,X
;// 03.08.29 //		LDA	>ROOMBF+080H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+080H,X
;// 03.08.29 //		LDA	>ROOMBF+100H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+100H,X
;// 03.08.29 //		LDA	>ROOMBF+180H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+180H,X
;// 03.08.29 //		INX
;// 03.08.29 //		INX
;// 03.08.29 //		CPX	<WORK2
;// 03.08.29 //		BNE	LDR160		; set end ?
;// 03.08.29 //;					; yes
		LDX	!DORPNT
		LDA	!DORADR-2,X
		ORA	#02000H
		STA	!DORADR-2,X
		RTS
;
;
;************************************************************************
;*		BG.1 Right door set			(RDOORS1)	*
;************************************************************************
RDOORS1		EQU	$
RDR120		EQU	$
		STY	<WORK8
;
		LDX	!DORPNT
		LDA	#00003H
		JSR	DRDTGT		; door data get
		LDA	#ud_nor
		CPY	#ud_st0
		BEQ	RDR125		;
;					;
		LDA	#ud_sht
		CPY	#ud_st1
		BNE	RDR130		;
;					;
RDR125		EQU	$
		STA	<WORKE
		LDA	!DRSTAT-2,X
		AND	#0FF00H
		ORA	<WORKE
		STA	!DRSTAT-2,X
;
		LDY	<WORKE
RDR130		EQU	$
		LDA	RDRTBL,Y
		TAY
		LDX	<WORK8
		LDA	#00002H
		STA	<WORKE
RDR140		EQU	$
		LDA	UNITDT+000H,Y
		STA	>BG1RBF+002H,X
		LDA	UNITDT+002H,Y
		STA	>BG1RBF+082H,X
		LDA	UNITDT+004H,Y
		STA	>BG1RBF+102H,X
		LDA	UNITDT+006H,Y
		STA	>BG1RBF+182H,X
		TYA
		CLC
		ADC	#00008H
		TAY
		INX
		INX
		DEC	<WORKE
		BNE	RDR140		; unit set end ?
;					; yes
		LDA	UNITDT+000H,Y
		STA	>ROOMBF+002H,X
		LDA	UNITDT+002H,Y
		STA	>ROOMBF+082H,X
		LDA	UNITDT+004H,Y
		STA	>ROOMBF+102H,X
		LDA	UNITDT+006H,Y
		STA	>ROOMBF+182H,X
;
		LDA	<WORK8
		CLC
		ADC	#00008H
		JSR	RWDS000		; wall up
;// 03.08.29 //		TAX
;// 03.08.29 //RDR160		EQU	$
;// 03.08.29 //		LDA	>ROOMBF+000H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+000H,X
;// 03.08.29 //		LDA	>ROOMBF+080H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+080H,X
;// 03.08.29 //		LDA	>ROOMBF+100H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+100H,X
;// 03.08.29 //		LDA	>ROOMBF+180H,X
;// 03.08.29 //		ORA	#02000H
;// 03.08.29 //		STA	>ROOMBF+180H,X
;// 03.08.29 //		INX
;// 03.08.29 //		INX
;// 03.08.29 //		TXA
;// 03.08.29 //		AND	#0003FH
;// 03.08.29 //		BNE	RDR160		; set end ?
;// 03.08.29 //;					; yes
		LDX	!DORPNT
		LDA	!DORADR-2,X
		ORA	#02000H
		STA	!DORADR-2,X
		RTS
;
;
;
;
;----------------------------  WALL  ------------------------------------
;************************************************************************
;*		Wall  UP				(UWLDRST)	*
;************************************************************************
UWLDRST		EQU	$
		LDA	#00000H
		JSR	DRDTGT		; door data get
;
		LDA	<WORK8
		CLC
		ADC	#00080H
UWDS000		EQU	$
		STA	<WORK2
		AND	#0F07FH
		TAX
UWDS40		EQU	$
		LDA	>ROOMBF+000H,X
		ORA	#02000H
		STA	>ROOMBF+000H,X
		LDA	>ROOMBF+002H,X
		ORA	#02000H
		STA	>ROOMBF+002H,X
		LDA	>ROOMBF+004H,X
		ORA	#02000H
		STA	>ROOMBF+004H,X
		LDA	>ROOMBF+006H,X
		ORA	#02000H
		STA	>ROOMBF+006H,X
		TXA
		CLC
		ADC	#00080H
		TAX
		CPX	<WORK2
		BNE	UWDS40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Wall  DOWN				(DWLDRST)	*
;************************************************************************
DWLDRST		EQU	$
		LDA	#00001H
		JSR	DRDTGT		; door data get
;
		LDA	<WORK8
		CLC
		ADC	#00100H
DWDS000		EQU	$
		TAX
DWDS40		EQU	$
		LDA	>ROOMBF+000H,X
		ORA	#02000H
		STA	>ROOMBF+000H,X
		LDA	>ROOMBF+002H,X
		ORA	#02000H
		STA	>ROOMBF+002H,X
		LDA	>ROOMBF+004H,X
		ORA	#02000H
		STA	>ROOMBF+004H,X
		LDA	>ROOMBF+006H,X
		ORA	#02000H
		STA	>ROOMBF+006H,X
		TXA
		CLC
		ADC	#00080H
		TAX
		AND	#00F80H
		BNE	DWDS40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Wall  LEFT				(LWLDRST)	*
;************************************************************************
LWLDRST		EQU	$
		LDA	#00002H
		JSR	DRDTGT		; door data get
;
		LDA	<WORK8
		INC	A
		INC	A
LWDS000		EQU	$
		STA	<WORK2		; (WORK2) <-- set end address
		AND	#0FFC0H
		TAX
LWDS40		EQU	$
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
		CPX	<WORK2
		BNE	LWDS40		; set end ?
;					; yes
		RTS
;
;
;************************************************************************
;*		Wall  RIGHT				(RWLDRST)	*
;************************************************************************
RWLDRST		EQU	$
		LDA	#00003H
		JSR	DRDTGT		; door data get
;
		LDA	<WORK8
		CLC
		ADC	#00004H
RWDS000		EQU	$
		TAX
RWDS40		EQU	$
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
		TXA
		AND	#0003FH
		BNE	RWDS40		; set end ?
;					; yes
		RTS
;
;
;
;
;----------------------------  DANJYON  ---------------------------------
;************************************************************************
;*		Danjyon change check			(DJCDRST)	*
;************************************************************************
DJCDRST		EQU	$
		LDX	!DJCCKPT
		LSR	A
		STA	!DJCCKBF,X
		INX
		INX
		STX	!DJCCKPT	; danjyon change check
		RTS
;
;
;
;
;----------------------------  SPECIAL  ---------------------------------
;************************************************************************
;*		Mode change check			(MDCCKST)	*
;************************************************************************
MDCCKST		EQU	$
		LDX	!MDCCKPT
		LSR	A
		STA	!MDCCKBF,X
		INX
		INX
		STX	!MDCCKPT	; mode change check
		RTS
;
;
;
;// 03.02.22 //;
;// 03.02.22 //;----------------------------  WARP  ------------------------------------
;// 03.02.22 //;************************************************************************
;// 03.02.22 //;*		Warp check				(WRPDRST)	*
;// 03.02.22 //;************************************************************************
;// 03.02.22 //WRPDRST		EQU	$
;// 03.02.22 //		LDX	!WRPCKPT
;// 03.02.22 //		LSR	A
;// 03.02.22 //		STA	!WRPCKBF,X
;// 03.02.22 //		INX
;// 03.02.22 //		INX
;// 03.02.22 //		STX	!WRPCKPT	; warp check
;// 03.02.22 //		RTS
;// 03.02.22 //;
;
;
;
;
;======================  Unit set Subroutine  ===========================
;************************************************************************
;*		Count reset				(STCTST)	*
;************************************************************************
STCTST		EQU	$
		LDA	#00001H
;
;************************************************************************
;*		Count reset				(STCTS0)	*
;************************************************************************
STCTS0		EQU	$
		STA	<WORKE
;
		LDA	<XSTCNT
		ASL	A
		ASL	A
		ORA	<YSTCNT
		ADC	<WORKE
		STA	<XSTCNT
;
		STZ	<YSTCNT
		RTS
;
;
;************************************************************************
;*		Count reset				(STCTSY)	*
;************************************************************************
STCTSY		EQU	$
		LDA	<XSTCNT
		ASL	A
		ASL	A
		ORA	<YSTCNT
		BNE	SCSTY40		; reset ?
;					; yes
		LDA	#0001AH
SCSTY40		EQU	$
		STA	<XSTCNT
		RTS
;
;
;************************************************************************
;*		Count reset				(STCTSZ)	*
;************************************************************************
STCTSZ		EQU	$
		LDA	<XSTCNT
		ASL	A
		ASL	A
		ORA	<YSTCNT
		BNE	SCSTZ40		; reset ?
;					; yes
		LDA	#00020H
SCSTZ40		EQU	$
		STA	<XSTCNT
		RTS
;
;
;
;************************************************************************
;*		Door data get				(DRDTGT)	*
;************************************************************************
DRDTGT		EQU	$
		STA	!DORFLG,X
		TYA
		STA	!DORADR,X
		TXA
		LSR	A
		XBA
		ORA	<WORK4
		STA	!DRSTAT,X
		TXA
		AND	#0000FH
		TAY
		CPY	#00008H
		BCS	DDGT20		; open bit check ?
;					; yes
		LDA	!DOPNBT
		AND	BITCD0,Y
;// 03.03.11 //		BNE	DDGT20		; door open ?
		BEQ	DDGT20		; door open ?
;					; yes
		LDA	!DRSTAT,X
		AND	#000FFH
		CMP	#sht_dr
		BEQ	DDGT10		; shutter door ?
;					; no
		CMP	#ud_sht
		BNE	DDGT15		; under-shutter ?
;					; yes
DDGT10		EQU	$
		LDA	!TRAPMD
		BNE	DDGT20		; shutter open ok ?
;					; yes
DDGT15		EQU	$
		PHX			; (X) push
		LDX	<WORK4
		LDA	OPDRCD,X
		STA	<WORKA		; (A) <-- open door data
		PLX			; (X) pull
;
		LDA	!DRSTAT,X
		AND	#000FFH
		CMP	#sht_dr
		BEQ	DDGT20		; shutter door ?
;					; no
		CMP	#ud_sht
		BEQ	DDGT20		; under-shutter ?
;					; no
		CMP	#era_dr
		BCC	DDGT20		; door open bit on ?
;					; yes
		CMP	#ud_nor
		BEQ	DDGT20		; under-normal ?
;					; no
		CMP	#ud_wrp
		BEQ	DDGT20		; under-warp ?
;					; no
		LDA	!RMSTTT
;// 03.03.11 //		AND	BITCD1,Y
		ORA	BITCD0,X
		STA	!RMSTTT
DDGT20		EQU	$
		LDY	<WORKA
		INX
		INX
		STX	!DORPNT
;// 03.06.13 //		CPY	#bmb_dr
;// 03.06.13 //		BEQ	DDGT180		; bomb door ?
;// 03.06.13 //;					; no
		CPY	#ctn_dr
		BEQ	DDGT180		; certen door ?
;					; no
		CPY	#nul_dr
		BEQ	DDGT180		; null door ?
;					; no
;*** /03.07.30/ ***		CPY	#swh_dr
;*** /03.07.30/ ***		BEQ	DDGT100		; swich door ?
;*** /03.07.30/ ***;					; no
		LDA	<WORK4
		CMP	#era_dr
		BNE	DDGT60		; erase door ?
;					; yes
		LDA	<PLMKCH
		AND	#000FFH
		STA	<WORKA
;// 02.08.24 //		LDX	!DORPNT
		DEX
		DEX
		TXA
		XBA
		STA	!ERDRFG
		LDA	<WORK0
		AND	#00003H
		ASL	A
		ORA	!ERDRFG
		STA	!ERDRFG		; erase door flag on
		AND	#000FFH
		CMP	<WORKA
		BNE	DDGT40		; door display ?
;					; no
		EOR	#00002H
		CMP	<WORKA
		BEQ	DDGT180		; door display ?
;					; yes
DDGT40		EQU	$
		LDA	!DOPNBT
;// 03.03.11 //		AND	BITCD1,X
		ORA	BITCD0,X
		STA	!DOPNBT		; erase door open
		LDY	#00000H
DDGT60		EQU	$
		SEC
		RTS
;
;
;*** /03.07.30/ ***DDGT100		EQU	$
;*** /03.07.30/ ***		DEX
;*** /03.07.30/ ***		DEX
;*** /03.07.30/ ***		LDA	!DOPNBT
;*** /03.07.30/ ***		AND	BITCD0,X
;*** /03.07.30/ ***;// 03.03.11 //		BEQ	DDGT60		; door open ?
;*** /03.07.30/ ***		BNE	DDGT60		; door open
;*** /03.07.30/ ***;					; no
;*** /03.07.30/ ***		TXA
;*** /03.07.30/ ***		XBA
;*** /03.07.30/ ***		STA	!SWDRFG
;*** /03.07.30/ ***		LDA	<WORK0
;*** /03.07.30/ ***		AND	#00003H
;*** /03.07.30/ ***		ASL	A
;*** /03.07.30/ ***		ORA	!SWDRFG
;*** /03.07.30/ ***		STA	!SWDRFG		; swich door flag on
DDGT180		EQU	$
WSTCK80		EQU	$
		CLC
		RTS
;
;
;
;************************************************************************
;*		Waku set check				(WKSTCK)	*
;************************************************************************
WKSTCK		EQU	$
		STA	<WORKE
;
		LDA	[<BFP000],Y
		AND	#003FFH
		CMP	<WORKE
		BEQ	WSTCK80		; set ok ?
;					; yes
		SEC
		RTS
;
;
;
;************************************************************************
;*		Under-Door data reset			(UDDRST2)	*
;************************************************************************
UDDRST2		EQU	$
		TAX
		LDA	#00007H
		BRA	UDRT010
;
;
;
;************************************************************************
;*		Under-Door data reset			(UDDRST0)	*
;************************************************************************
UDDRST0		EQU	$
		TAX
		LDA	#00007H
UDRT010		EQU	$
		STA	<WORKE
UDRT020		EQU	$
		LDA	>ROOMBF+000H,X
		ORA	#02000H
		STA	>ROOMBF+000H,X
		LDA	>ROOMBF+002H,X
		ORA	#02000H
		STA	>ROOMBF+002H,X
		LDA	>ROOMBF+004H,X
		ORA	#02000H
		STA	>ROOMBF+004H,X
		LDA	>ROOMBF+006H,X
		ORA	#02000H
		STA	>ROOMBF+006H,X
		TXA
		CLC
		ADC	#00080H
		TAX
		DEC	<WORKE
		BNE	UDRT020		; reset end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Under-Door data reset			(UDDRST3)	*
;************************************************************************
UDDRST3		EQU	$
		TAX
		LDA	#00007H
		BRA	UDRT110
;
;
;
;************************************************************************
;*		Under-Door data reset			(UDDRST1)	*
;************************************************************************
UDDRST1		EQU	$
		TAX
		LDA	#00005H
UDRT110		EQU	$
		STA	<WORKE
UDRT120		EQU	$
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
		DEC	<WORKE
		BNE	UDRT120		; reset end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Unit set (4x2)				(UNITST3)	*
;************************************************************************
UNITST3		EQU	$
		STA	<WORKE
UTST340		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP002],Y
		LDA	UNITDT+004H,X
		STA	[<BFP004],Y
		LDA	UNITDT+006H,X
		STA	[<BFP006],Y
;
		LDA	UNITDT+008H,X
		STA	[<BFP080],Y
		LDA	UNITDT+00AH,X
		STA	[<BFP082],Y
		LDA	UNITDT+00CH,X
		STA	[<BFP084],Y
		LDA	UNITDT+00EH,X
		STA	[<BFP086],Y
;
		TYA
		CLC
		ADC	<WORKE
		TAY
		DEC	<XSTCNT
		BNE	UTST340		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Unit set (2x2)				(UNITST4)	*
;************************************************************************
UNITST4		EQU	$
		STA	<WORKE
UTST440		EQU	$
		JSR	UNITSTB		; 2x2 unit set
		TXA
		CLC
		ADC	#00008H
		TAX
		DEC	<WORKE
		BNE	UTST440		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Unit set (4x2)				(UNITST5)	*
;************************************************************************
UNITST5		EQU	$
		LDA	<XSTCNT
		BEQ	UTST580		; set ?
;					; yes
UTST540		EQU	$
		LDA	#00002H
		JSR	UNITST2		; 4x2 unit set
		TXA
		SEC
		SBC	#00010H
		TAX
		DEC	<XSTCNT
		BNE	UTST540		; set end ?
;					; yes
UTST580		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Unit set (1x5)				(UNITST8)	*
;************************************************************************
UNITST8		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		LDA	UNITDT+006H,X
		STA	[<BFP180],Y
		LDA	UNITDT+008H,X
		STA	[<BFP200],Y
		RTS
;
;
;
;************************************************************************
;*		Unit set (?x5)				(UNITST9)	*
;************************************************************************
UTST940		EQU	$
		JSR	UNITST8		; 5x1 unit set
		TYA
		CLC
		ADC	#00082H
		TAY
UNITST9		EQU	$
		DEC	<XSTCNT
		BNE	UTST940		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Unit set (?x5)				(UNITSTA)	*
;************************************************************************
UTSTA40		EQU	$
		JSR	UNITST8		; 5x1 unit set
		TYA
		SEC
		SBC	#0007EH
		TAY
UNITSTA		EQU	$
		DEC	<XSTCNT
		BNE	UTSTA40		; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Unit set (2x2)				(UNITSTB)	*
;************************************************************************
UNITSTB		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP002],Y
		LDA	UNITDT+006H,X
		STA	[<BFP082],Y
;
		TYA
		CLC
		ADC	#00100H
		TAY
		RTS
;
;
;
;************************************************************************
;*		Unit set (?x1)				(UNITSTC)	*
;************************************************************************
UNITSTC		EQU	$
		INX
		INX
		INY
		INY
UTSTC00		EQU	$
		LDA	<XSTCNT
UTSTC40		EQU	$
		STA	<WORKA
;
		LDA	UNITDT+000H,X
UTSTC80		EQU	$
		STA	[<BFP000],Y
		INY
		INY
		DEC	<WORKA
		BNE	UTSTC80		; set end ?
;					; yes
		LDA	<WORK8
		CLC
		RTS
;
;
;
;************************************************************************
;*		Unit set (1x4)				(UNITSTD)	*
;************************************************************************
UNITSTD		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		LDA	UNITDT+006H,X
		STA	[<BFP180],Y
		RTS
;
;
;
;************************************************************************
;*		Unit set (1x3)				(UNITSTE)	*
;************************************************************************
UNITSTE		EQU	$
		LDA	UNITDT+000H,X
		STA	[<BFP000],Y
		LDA	UNITDT+002H,X
		STA	[<BFP080],Y
		LDA	UNITDT+004H,X
		STA	[<BFP100],Y
		RTS
;
;
;
;
;
;************************************************************************
;*		Mochiage block-0			(MCBLKS0)	*
;************************************************************************
MCBLKS0		EQU	$
		LDA	#01010H
;// 03.08.02 //		BRA	MCBL020
		BRA	MCBL100
;
;************************************************************************
;*		Mochiage block-3			(MCBLKS3)	*
;************************************************************************
MCBLKS3		EQU	$
		LDA	#01212H
		BRA	MCBL100
;// 03.08.02 //MCBL020		EQU	$
;// 03.08.02 //		PHX			; (X) push
;// 03.08.02 //;
;// 03.08.02 //		LDX	!BLKPNT
;// 03.08.02 //		STA	!BLKSTT,X	; block status off
;// 03.08.02 //		INC	!BLKPNT
;// 03.08.02 //		INC	!BLKPNT
;// 03.08.02 //;
;// 03.08.02 //		LDA	<DTRDPT
;// 03.08.02 //		STA	!BLKDPT,X	; block data pointer set
;// 03.08.02 //		TYA
;// 03.08.02 //		STA	!BLKADR,X	; address set
;// 03.08.02 //		LDA	<BFP000
;// 03.08.02 //		CMP	#04000H
;// 03.08.02 //		BNE	MCBL040		; BG.1 set ?
;// 03.08.02 //;					; yes
;// 03.08.02 //		TYA
;// 03.08.02 //		ORA	#02000H
;// 03.08.02 //		STA	!BLKADR,X	; address set
;// 03.08.02 //MCBL040		EQU	$
;// 03.08.02 //		LDA	[<BFP000],Y
;// 03.08.02 //		STA	!BLKDT0,X
;// 03.08.02 //		LDA	[<BFP080],Y
;// 03.08.02 //		STA	!BLKDT1,X
;// 03.08.02 //		LDA	[<BFP002],Y
;// 03.08.02 //		STA	!BLKDT2,X
;// 03.08.02 //		LDA	[<BFP082],Y
;// 03.08.02 //		STA	!BLKDT3,X	; rewrite data set
;// 03.08.02 //;
;// 03.08.02 //		PLX			; (X) pull
;// 03.08.02 //		JMP	UNITST7		; 2x2 unit set
;// 03.08.02 //;
;
;
;************************************************************************
;*		Mochiage block-1 (BIG)			(MCBLKS1)	*
;************************************************************************
MCBLKS1		EQU	$
		STY	<WORK8		; (work8) <-- address
		LDX	#mblkd1+8*0
		LDA	#02020H
		JSR	MCBL100		;
		LDX	#mblkd1+8*1
		LDA	#02121H
		JSR	MCBL100		;
		LDA	<WORK8
		CLC
		ADC	#00100H
		TAY
		LDX	#mblkd1+8*2
		LDA	#02222H
		JSR	MCBL100		;
		LDX	#mblkd1+8*3
		LDA	#02323H
MCBL100		EQU	$
		PHX			; (X) push
		LDX	!BLKPNT
		STA	!BLKSTT,X	; block status off
		INC	!BLKPNT
		INC	!BLKPNT
;
		LDA	<DTRDPT
		STA	!BLKDPT,X	; block data pointer set
		TYA
		STA	!BLKADR,X	; address set
		LDA	<BFP000
		CMP	#04000H
		BNE	MCBL140		; BG.1 set ?
;					; yes
		TYA
		ORA	#02000H
		STA	!BLKADR,X	; address set
MCBL140		EQU	$
		LDA	[<BFP000],Y
		STA	!BLKDT0,X
		LDA	[<BFP080],Y
		STA	!BLKDT1,X
		LDA	[<BFP002],Y
		STA	!BLKDT2,X
		LDA	[<BFP082],Y
		STA	!BLKDT3,X	; rewrite data set
;
		PLX			; (X) pull
		JMP	UNITST7		; 2x2 unit set
;
;
;
;
;************************************************************************
;*		Mochiage-tubo set (width)		(MTUBOST0)	*
;************************************************************************
MTUBOST0	EQU	$
		JSR	STCTST
MTBST040	EQU	$
		JSR	MCBLKS2		; mochiage-tubo set
		DEC	<XSTCNT
		BNE	MTBST040	; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Mochiage-tubo set (length)		(MTUBOST1)	*
;************************************************************************
MTUBOST1	EQU	$
		JSR	STCTST
MTBST140	EQU	$
		JSR	MCBLKS2		; mochiage-tubo set
		LDA	<WORK8
		CLC
		ADC	#00100H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	MTBST140	; set end ?
;					; yes
		RTS
;
;
;
;
;************************************************************************
;*		Mochiage block-2 (tubo)			(MCBLKS2)	*
;************************************************************************
MCBLKS2		EQU	$
		PHX			; (X) push
;
		LDX	!BLKPNT
		INC	!BLKPNT
		INC	!BLKPNT
;
		LDA	#01111H
		STA	!BLKSTT,X	; block status off
		LDA	<DTRDPT
		STA	!BLKDPT,X	; block data pointer set
		TYA
		STA	!BLKADR,X	; address set
		LDA	<BFP000
		CMP	#04000H
		BNE	MCBL240		; BG.1 set ?
;					; yes
		TYA
		ORA	#02000H
		STA	!BLKADR,X	; address set
MCBL240		EQU	$
		LDA	#00D0EH
		STA	!BLKDT0,X
		LDA	#00D1EH
		STA	!BLKDT1,X
		LDA	#04D0EH
		STA	!BLKDT2,X
		LDA	#04D1EH
		STA	!BLKDT3,X	; rewrite data set
;
		PLX			; (X) pull
		LDA	>GDTRPF
		BEQ	MCBL280		; ura ?
;					; yes
		LDX	#mblkd4
MCBL280		EQU	$
		JMP	UNITST7		; 2x2 unit set
;
;
;
;
;************************************************************************
;*		Crush yuka set				(CRSHYKS0)	*
;************************************************************************
CRSHYKS0	EQU	$
		LDA	<RMXYCT
		CMP	#00065H
		BNE	CRHY0080	; ura-danjyon(machi-sita) hikari-room ?
;					; yes
		LDA	!EMYSTT
		AND	#01000H
		BEQ	CRHY0080	; yuka crush ?
;					; yes
		STZ	<XSTCNT
		STZ	<YSTCNT
		LDX	#holedt
		JMP	HOLEST2		; 4x4 hole set
;
;
CRHY0080	EQU	$
		STY	<WORK8		; (work8) <-- address
		LDA	#holed9
		STA	<WORKE
		LDX	#crshy0+8*0
		LDA	#03030H
		JSR	CRHY0100	;
		LDX	#crshy0+8*1
		LDA	#03131H
		JSR	CRHY0100	;
		LDA	<WORK8
		CLC
		ADC	#00100H
		TAY
		LDX	#crshy0+8*2
		LDA	#03232H
		JSR	CRHY0100	;
		LDX	#crshy0+8*3
		LDA	#03333H
CRHY0100	EQU	$
		PHX			; (X) push
		LDX	!BLKPNT
		STA	!BLKSTT,X	; block status off
		INC	!BLKPNT
		INC	!BLKPNT
;
		LDA	<DTRDPT
		STA	!BLKDPT,X	; block data pointer set
		TYA
		STA	!BLKADR,X	; address set
		LDA	<BFP000
		CMP	#04000H
		BNE	CRHY0140	; BG.1 set ?
;					; yes
		TYA
		ORA	#02000H
		STA	!BLKADR,X	; address set
CRHY0140	EQU	$
		PHY			; (Y) push
;
		LDY	<WORKE
		LDA	UNITDT+000H,Y
		STA	!BLKDT0,X
		LDA	UNITDT+002H,Y
		STA	!BLKDT1,X
		LDA	UNITDT+004H,Y
		STA	!BLKDT2,X
		LDA	UNITDT+006H,Y
		STA	!BLKDT3,X	; rewrite data set
;
		TYA
		CLC
		ADC	#00008H
		STA	<WORKE
;
		PLY			; (Y) pull
		PLX			; (X) pull
		JMP	UNITST7		; 2x2 unit set
;
;
;
;
;************************************************************************
;*		Hummer-kui set (width)			(HMKUIST0)	*
;************************************************************************
HMKUIST0	EQU	$
		JSR	STCTST
HMKIS040	EQU	$
		JSR	HMKUIST		; hummer-kui set
		DEC	<XSTCNT
		BNE	HMKIS040	; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Hummer-kui set (length)			(HMKUIST1)	*
;************************************************************************
HMKUIST1	EQU	$
		JSR	STCTST
HMKIS140	EQU	$
		JSR	HMKUIST		; hummer-kui set
		LDA	<WORK8
		CLC
		ADC	#00100H
		STA	<WORK8
		TAY
		DEC	<XSTCNT
		BNE	HMKIS140	; set end ?
;					; yes
		RTS
;
;
;
;************************************************************************
;*		Hammer Kui set				(HMKUIST)	*
;************************************************************************
HMKUIST		EQU	$
		PHX			; (X) push
;
		LDX	!BLKPNT
		INC	!BLKPNT
		INC	!BLKPNT
;
		LDA	#04040H
		STA	!BLKSTT,X	; block status off
		LDA	<DTRDPT
		STA	!BLKDPT,X	; block data pointer set
		TYA
		STA	!BLKADR,X	; address set
		LDA	<BFP000
		CMP	#04000H
		BNE	HMKIS40		; BG.1 set ?
;					; yes
		TYA
		ORA	#02000H
		STA	!BLKADR,X	; address set
HMKIS40		EQU	$
		LDA	#019D8H
		STA	!BLKDT0,X
		LDA	#019D9H
		STA	!BLKDT1,X
		LDA	#059D8H
		STA	!BLKDT2,X
		LDA	#059D9H
		STA	!BLKDT3,X	; rewrite data set
;
		PLX			; (X) pull
		JMP	UNITST7		; 2x2 unit set
;
;
;
;
;
;************************************************************************
;*		Move block				(MBLOKST)	*
;************************************************************************
MBLOKST		EQU	$
		LDX	!BLKPNT
		INC	!BLKPNT
		INC	!BLKPNT
;
		STZ	!BLKSTT,X	; block status off
		LDA	<DTRDPT
		STA	!BLKDPT,X	; block data pointer set
		TYA
		STA	!BLKADR,X	; address set
		AND	#03FFFH
		TAY
		LDA	[<BFP000],Y
		STA	!BLKDT0,X
		LDA	[<BFP080],Y
		STA	!BLKDT1,X
		LDA	[<BFP002],Y
		STA	!BLKDT2,X
		LDA	[<BFP082],Y
		STA	!BLKDT3,X	; rewrite data set
;
;// 02.10.09 //		LDA	#0FFFFH
;// 02.10.09 //		STA	!BLKSTT+2,X
;
		LDX	#mblokd
		JMP	UNITST7		; 2x2 unit set
;
;
;
;************************************************************************
;*		Lamp					(LAMPST)	*
;************************************************************************
LAMPST		EQU	$
		LDY	!LMPPNT
		STA	!LMPADR,Y	; address push
		DEX
		DEX
		TXA
		STA	!LMPDPT,Y	; data buffer pointer push
		INC	!LMPPNT
		INC	!LMPPNT
;
		LDX	#smldid
		LDA	<WORK8
		ASL	A
		BCC	LMPS20		; lamp on ?
;					; yes
		LDX	#firedt
		LDA	!LGTWST
		CMP	#00003H
		BCS	LMPS20		; light on ok ?
;					; yes
		INC	!LGTWST		; light-wipe flag nothing
LMPS20		EQU	$
		STX	<WORKC
;
		LDA	<WORK8
		AND	#03FFFH
		TAY
		JMP	UNITST7		; 2x2 unit set
;
;// 03.07.03 //		JSR	UNITST7		; 2x2 unit set
;// 03.07.03 //;
;// 03.07.03 //		LDA	<WORK8
;// 03.07.03 //		ASL	A
;// 03.07.03 //		ASL	A
;// 03.07.03 //		BCC	LMPS80		; swich set ?
;// 03.07.03 //;					; yes
;// 03.07.03 //		LDX	#0FFF4H
;// 03.07.03 //		LDA	!LMPPNT
;// 03.07.03 //		LSR	A
;// 03.07.03 //		LSR	A
;// 03.07.03 //		BCC	LMPS40		;
;// 03.07.03 //;					;
;// 03.07.03 //		LDX	#0000CH
;// 03.07.03 //LMPS40		EQU	$
;// 03.07.03 //		STX	<WORKC
;// 03.07.03 //		LDA	<WORK8
;// 03.07.03 //		AND	#03FFFH
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	<WORKC
;// 03.07.03 //		TAY
;// 03.07.03 //		LDX	#ofswhd
;// 03.07.03 //		JSR	UNITSTB		; swich set
;// 03.07.03 //LMPS80		EQU	$
;// 03.07.03 //		RTS
;
;
;
;
;
;
		END
