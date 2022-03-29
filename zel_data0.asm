;
		INCLUDE	zel_label.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.10.05(SAT)
;
;--------------------------------------------------------------------
;
		ORG	0098C0H
;
;=============================================== (zel_data0) ============
		GLB	HLRMDT,HLRMPT
;
		GLB	UNITDT,FLORDT,UDRTBL,DDRTBL,LDRTBL,RDRTBL
		GLB	UDOPNDD,DDOPNDD,LDOPNDD,RDOPNDD,OYKBGD
;
		GLB	BITCD0,BITCD1,TBITCD
		GLB	DRADRD,UPADR0,DNADR0,LFADR0,RTADR0,UPADR1,DNADR1,LFADR1,RTADR1
		GLB	DCXRPD,DCYRPD,DCPRPD,OPDRCD,OPNDRNO,WRWPPD0,WRWPPD1,WRWPPD2
		GLB	IDOCD0,IDOCD1,FLRSAD
		GLB	MWLDT0,MWLDT1,BWLMTD0,BWLMTD1,nulldt,djdordt,dkdordt
;---------------------------------------------------------------  unit data
		GLB	wtfldt,nukidt,cnulld,stopyk,watrd0,watrd1,watrd2,iceykd,iceyd1,beltyd
		GLB	dngryd,flyykd,colyk0,colyk1,rupyyk,iceat0,iceat1,crshy0,crshy1,crshy2
		GLB	cngice,eraykd,sbkykd
;
		GLB	lfwld0,rtwld0,upwld0,dnwld0,lfwld8,rtwld8,upwld8,dnwld8
		GLB	ulfwld,urtwld,uupwld,udnwld
		GLB	ceildt,uarchd,darchd,larchd,rarchd
		GLB	luswd0,ldswd0,ruswd0,rdswd0,luswd1,ldswd1,ruswd1,rdswd1
		GLB	luswd2,ldswd2,ruswd2,rdswd2
		GLB	luswd8,ldswd8,ruswd8,rdswd8,luswd9,ldswd9,ruswd9,rdswd9
		GLB	luswdA,ldswdA,ruswdA,rdswdA
		GLB	sidndt,sidnmk,sdstpd,holedt,holed9,holed0
		GLB	fance0,fance1,fance4,fance5
		GLB	wakls0,wakls1,wakrs0,wakrs1,wakud0,wakud1,wakud2,wakud3
		GLB	wakud4,wakud5,wakud6,wakud7,wakud8,wakud9,lbrgdt,wbrgdt
		GLB	uscrbd,dscrbd,lscrbd,rscrbd,uscrd1,dscrd1,lscrd1,rscrd1
		GLB	ushdwd,dshdwd,lshdwd,rshdwd,crptdt,cedged,wroad0,wroad1
		GLB	mwald0,mwald1,mwald2,mwald3,mwalc0,mwalc1
		GLB	crtnd0,crtnd1,crtnd2,crtnd3,crtnd8,crtnd9,crtndA,crtndB
		GLB	yoroid,pillrd,tldaid,uwndwd,dwndwd,lwndwd,rwndwd
		GLB	twcrdt,btbldt,spild0,spild1,spild2,spild3
		GLB	wwaku0,wwaku1,wwaku2,wwaku3,wwaku4,wwaku5,wwaku6,wwaku7,wwaku8,wwaku9
		GLB	btakid,stakid,bltwd0,bltwd1,stand0,stand1,chmnyd,ovend0,rackdt
		GLB	wgated,ygkbd0,ygkbd1,ygkbd2,ygkbd3
		GLB	tlifdt,ylifdt,clifd0,clifd1,clifd2,clifd3
		GLB	tlifd0,tlifd1,tlifd2,tlifd3,clifdt,slifdt,slifdd,clifdd
		GLB	timtd0,timtd1,timtd2,timtd3
		GLB	cwndw0,cwndw1,cwndw2,cwndw3,cwndw4,cwndw5,cwndw6,cwndw7
		GLB	cstged,lfwldc,rtwldc,upwldc,dnwldc,tgblkd,dkan10,dkan11
		GLB	jytnd0,jytnd1,jytnd2,jytnd3,jytnd4,trmkdt
;
		GLB	lucrd0,ldcrd0,rucrd0,rdcrd0,lupld0,ldpld0,rupld0,rdpld0
		GLB	lucrd8,ldcrd8,rucrd8,rdcrd8,lupld8,ldpld8,rupld8,rdpld8
		GLB	lucpl0,ldcpl0,rucpl0,rdcpl0,lucpl1,ldcpl1,rucpl1,rdcpl1
		GLB	monod0,monod1,mblokd,mblkd0,mblkd1,mblkd2,mblkd3,mblkd4
		GLB	onswhd,ofswhd,smldid,firedt,tarudt,opnykd
		GLB	tabled,beddat,kchird,qchird,bchird,schird
		GLB	danrod,kzripd,kzrisd,kzribd
		GLB	upstep,dnstep,kdnstp,udstep,udstp1,wrsstp,tbrstp
		GLB	tbrst0,tbrst1,tbrst2,tbrst3,ustepd,dstepd,ustep1,dstep1
		GLB	cwlkzd,bblmpd,rouyad,roukyd,tkbox0,tkbox1,tkbox2,tkbox3
		GLB	tthld0,tthld1,tthld2,tthld3,tthld4,tthld5,tthld6,tthld7
		GLB	lucrdc,ldcrdc,rucrdc,rdcrdc,lupldc,ldpldc,rupldc,rdpldc
		GLB	slstp0,slstp1,slstp2,slstp3,slstp4,slstp5,slstp6,slstp7
		GLB	ttbod0,ttbod1,ttbog0,ttbog1,ttbog2,ttbog3
		GLB	tapdt0,tapdt1,tapdt2,kntrdt0,kntrdt1,kntrdt2,kntrdt3
		GLB	ssidid,ssrmd0,ssrmd1,ssrmd2,ssrmd3,ssrmd4,ssrmd5
		GLB	cwuddt,cwlrdt,wgatop0,wgatop1,wgatop2,wgatop3,haisui
		GLB	tapdt3,tapdt4,bosice,djwpyk,cplisd,dvldid
		GLB	dkan00,dkan01,dkan02,dkan03,dkan20,dkan21,dkan22,dkan23
		GLB	dkan30,dkan31,dkan32,dkan33,dkan40
		GLB	rupydt,kbana0,kbana1,skband,entrd0,kuidt0
		GLB	kjtand,kjrodt,kjmizd,kjdaid
		GLB	onswh1,ofswh1,djwpy1,inriyk,cngyk0,cngyk1
		GLB	urnidt,polydd,stand2,stand3,stand4,stand5
		GLB	saradt,tmizud,booktd,konrod,musikd,botldt
		GLB	slmbsd,slmbs1,dmswhd,emyykd,emyblk,cngana
		GLB	udmbmb,ddmbmb,ldmbmb,rdmbmb
		GLB	monod2,hisui0,hisui1,hisui2,hisui3
		GLB	hkrid0,hkrid1,hkrid2,ykcnv0,ykcnv1,ykcnv2,ykcnv3,boskme,bsentr
		GLB	gnnkz0,gnnkz1,gnnkz2
		GLB	gnnkz8,gnnkz9,gnnkzA,gnnkzB
		GLB	iceat2,honeyk,numayk,ykmrk0,ykmrk1,ykmrk2
;========================================================================
;
		EXTEND
;
;
;
;************************************************************************
;*		Bit  data						*
;************************************************************************
BITCD0		EQU	$		; Bit check data-0
		WORD	1000000000000000B
		WORD	0100000000000000B
		WORD	0010000000000000B
		WORD	0001000000000000B
		WORD	0000100000000000B
		WORD	0000010000000000B
		WORD	0000001000000000B
		WORD	0000000100000000B
		WORD	0000000010000000B
		WORD	0000000001000000B
		WORD	0000000000100000B
		WORD	0000000000010000B
		WORD	0000000000001000B
		WORD	0000000000000100B
		WORD	0000000000000010B
		WORD	0000000000000001B
;
BITCD1		EQU	$		; Bit check data-1
		WORD	0111111111111111B
		WORD	1011111111111111B
		WORD	1101111111111111B
		WORD	1110111111111111B
		WORD	1111011111111111B
		WORD	1111101111111111B
		WORD	1111110111111111B
		WORD	1111111011111111B
		WORD	1111111101111111B
		WORD	1111111110111111B
		WORD	1111111111011111B
		WORD	1111111111101111B
		WORD	1111111111110111B
		WORD	1111111111111011B
		WORD	1111111111111101B
		WORD	1111111111111110B
;
;
TBITCD		EQU	$
		WORD	0000000100000000B
		WORD	0000001000000000B
		WORD	0000010000000000B
		WORD	0000100000000000B
		WORD	0001000000000000B
		WORD	0010000000000000B
;
;
;
;
;************************************************************************
;*		Hole reset room data					*
;************************************************************************
HLRMDT		EQU	$
		WORD	00072H,00082H					; rou
		WORD	00040H,000C0H					; shisai
		WORD	00112H
		WORD	00056H,00057H,00058H,00067H,00068H,00049H	; ura mori
		WORD	00098H,000D1H,000C3H,000A3H,000A2H,00092H	; ura numa
		WORD	000A0H						;    "
;;;;;		WORD	00029H
		WORD	0004EH,0007FH,000AFH				; ura mizuumi
		WORD	000F0H,000F1H,000E6H,000E7H
		WORD	000C6H,000C7H,000D6H,000B4H,000B5H,000C5H	; kame
		WORD	00024H,000D5H					;  "
		WORD	000C9H						; omote shinden
		WORD	0002AH,0001AH,0004BH				; ura shinden
		WORD	000BCH,00044H					; machi
		WORD	000FBH						; ura yama nise iriguchi
		WORD	0007BH,0007CH,0008BH,0008DH,0009BH,0009CH	; ura yama no tou
		WORD	0009DH,000A5H,00095H,0001CH,0005CH,0007DH	;       "
		WORD	0004CH,00096H						;       "
		WORD	00120H						; ice rod (hachi no iru dokuthu)
		WORD	0003CH						; urayama futtobashi iwa in
		WORD	00123H						; minna niwa naisyo dayo
;;;;;		WORD	00114H						; jyouhouya D
;
HLRMDE		EQU	$
;
HLRMPT		EQU	HLRMDE-HLRMDT-2
;
;
;
;
;************************************************************************
;*		Door address data					*
;************************************************************************
DRADRD		EQU	$
UPADR0		EQU	$
		WORD	0021CH,0023CH,0025CH
		WORD	0039CH,003BCH,003DCH
		WORD	0121CH,0123CH,0125CH
		WORD	0139CH,013BCH,013DCH
;// 03.01.16 //		WORD	0011CH,0013CH,0015CH
;// 03.01.16 //		WORD	0029CH,002BCH,002DCH
;// 03.01.16 //		WORD	0111CH,0113CH,0115CH
;// 03.01.16 //		WORD	0129CH,012BCH,012DCH
;
DNADR0		EQU	$
		WORD	00D1CH,00D3CH,00D5CH
		WORD	00B9CH,00BBCH,00BDCH
		WORD	01D1CH,01D3CH,01D5CH
		WORD	01B9CH,01BBCH,01BDCH
;
LFADR0		EQU	$
		WORD	00784H,00F84H,01784H
		WORD	0078AH,00F8AH,0178AH
		WORD	007C4H,00FC4H,017C4H
		WORD	007CAH,00FCAH,017CAH
;// 03.01.16 //		WORD	00704H,00F04H,01704H
;// 03.01.16 //		WORD	0070AH,00F0AH,0170AH
;// 03.01.16 //		WORD	00744H,00F44H,01744H
;// 03.01.16 //		WORD	0074AH,00F4AH,0174AH
;
RTADR0		EQU	$
		WORD	007B4H,00FB4H,017B4H
		WORD	007AEH,00FAEH,017AEH
		WORD	007F4H,00FF4H,017F4H
		WORD	007EEH,00FEEH,017EEH
;// 03.01.16 //		WORD	00734H,00F34H,01734H
;// 03.01.16 //		WORD	0072EH,00F2EH,0172EH
;// 03.01.16 //		WORD	00774H,00F74H,01774H
;// 03.01.16 //		WORD	0076EH,00F6EH,0176EH
;
UPADR1		EQU	$
DNADR1		EQU	$
		WORD	00D8AH,00DAAH,00DCAH
LFADR1		EQU	$
RTADR1		EQU	$
		WORD	002B6H,00AB6H,012B6H
;
;
;
;************************************************************************
;*		Door check data						*
;************************************************************************
DCYRPD		EQU	$		; door check y-pos.   replace data
		WORD	00007H,00018H,00008H,00008H
DCXRPD		EQU	$		;            x-pos.
		WORD	00000H,00000H,0FFFFH,00011H
DCPRPD		EQU	$		;            position
		WORD	00002H,00002H,00080H,00080H
;
;
;
OPDRCD		EQU	$		; open door data ponit data
;			normal  under denter  wall   null  Denter Denter denter
		WORD	00000H,udr_dr,00000H,00000H,00000H,00000H,00000H,00000H
;			denter  exit danjyon change
		WORD	00000H,ext_dr,00000H,00000H
;			shutter erase  key0   key1
		WORD	00050H,00000H,00050H,00050H
;			 key2   key3   key4   key5  tiatri e-bomb  door   bomb
		WORD	00060H,00062H,00064H,00066H,00052H,0005AH,00050H,00052H
;			 crush certen  swich sht-nl nl-sht
		WORD	00054H,00056H,00000H,00050H,00050H,00000H,00000H,00000H
;                       u-nor  u-dor  u-sht  u-warp u-st-n u-n-st
		WORD	00040H,00058H,00058H,00000H,00058H,00058H,00000H,00000H
;			
;
OPNDRNO		EQU	$		; open door set data
;			normal  under         wall   null  dj-ext
		WORD	08080H,08484H,00000H,00101H,08484H,08E8EH,00000H,00000H
;			 warp   exit danjyon change
		WORD	08888H,08E8EH,08080H,08080H
;			shuuter erase  key0   key1
		WORD	08282H,08080H,08080H,08080H
;			 key2   key3   key4   key5  tiatri e-bomb  door   bomb
		WORD	08080H,08080H,08080H,08080H,08282H,08E8EH,08080H,08282H
;			 crush certen  swich sht-nl nl-sht
		WORD	08080H,08080H,08080H,08282H,08282H,08080H,08080H,08080H
;			u-nor  u-dor  u-sht  u-warp u-st-n u-n-st
		WORD	08484H,08484H,08686H,08888H,08686H,08686H,08080H,08080H
;			
;
;
;
;************************************************************************
;*		Initial Door open check			(IDROPCK)	*
;************************************************************************
IDOCD0		EQU	$		; door check address data-0
		WORD	00000H,00010H,00020H,00030H,00040H,00050H
		WORD	00061H,00071H,00081H,00091H,000A1H,000B1H
		WORD	00002H,00012H,00022H,00032H,00042H,00052H
		WORD	00063H,00073H,00083H,00093H,000A3H,000B3H
;// 02.10.31 //		WORD	0000000000000000B,0000000000010000B,0000000000100000B
;// 02.10.31 //		WORD	0000000000110000B,0000000001000000B,0000000001010000B
;// 02.10.31 //		WORD	0000000001100001B,0000000001110001B,0000000010000001B
;// 02.10.31 //		WORD	0000000010010001B,0000000010100001B,0000000010110001B
;// 02.10.31 //		WORD	0000000000000010B,0000000000010010B,0000000000100010B
;// 02.10.31 //		WORD	0000000000110010B,0000000001000010B,0000000001010010B
;// 02.10.31 //		WORD	0000000001100011B,0000000001110011B,0000000010000011B
;// 02.10.31 //		WORD	0000000010010011B,0000000010100011B,0000000010110011B
;
IDOCD1		EQU	$		;                        -1
		WORD	00061H,00071H,00081H,00091H,000A1H,000B1H
		WORD	00000H,00010H,00020H,00030H,00040H,00050H
		WORD	00063H,00073H,00083H,00093H,000A3H,000B3H
		WORD	00002H,00012H,00022H,00032H,00042H,00052H
;// 02.10.31 //		WORD	0000000001100001B,0000000001110001B,0000000010000001B
;// 02.10.31 //		WORD	0000000010010001B,0000000010100001B,0000000010110001B
;// 02.10.31 //		WORD	0000000000000000B,0000000000010000B,0000000000100000B
;// 02.10.31 //		WORD	0000000000110000B,0000000001000000B,0000000001010000B
;// 02.10.31 //		WORD	0000000001100011B,0000000001110011B,0000000010000011B
;// 02.10.31 //		WORD	0000000010010011B,0000000010100011B,0000000010110011B
;// 02.10.31 //		WORD	0000000000000010B,0000000000010010B,0000000000100010B
;// 02.10.31 //		WORD	0000000000110010B,0000000001000010B,0000000001010010B
;
;///////		WORD	0000000000110001B,0000000001000001B,0000000001010001B
;///////		WORD	0000000000000000B,0000000000010000B,0000000000100000B
;///////		WORD	0000000000110011B,0000000001000011B,0000000001010011B
;///////		WORD	0000000000000010B,0000000000010010B,0000000000100010B
;
;
;
;************************************************************************
;*		Floor set						*
;************************************************************************
FLRSAD		EQU	$		; floor set address
		WORD	00000H,00040H,01000H,01040H
;
;
;
;************************************************************************
;*		Wall move data						*
;************************************************************************
MWLDT0		EQU	$		; wall length
		WORD	00010/2,00014/2,00022/2,00030/2
;
MWLDT1		EQU	$		; ceiling width
		WORD	00004*2,00008*2,00012*2,00016*2		
;
;
BWLMTD0		EQU	$		; down,right move data
		WORD	0FFFFH-(08*8)+2		; write
		WORD	0FFFFH-(16*8)+2
		WORD	0FFFFH-(24*8)+2
		WORD	0FFFFH-(32*8)+2
;
		WORD	0FFFFH-((08+1)*8)+2	; erase
		WORD	0FFFFH-((16+1)*8)+2
		WORD	0FFFFH-((24+1)*8)+2
		WORD	0FFFFH-((32+1)*8)+2
;
;
BWLMTD1		EQU	$		; up,left move data
		WORD	00000H+(08*8)+2		; write
		WORD	00000H+(16*8)+2
		WORD	00000H+(24*8)+2
		WORD	00000H+(32*8)+2
;
		WORD	00000H+((08+1)*8)+2	; erase
		WORD	00000H+((16+1)*8)+2
		WORD	00000H+((24+1)*8)+2
		WORD	00000H+((32+1)*8)+2
;
;
;
;************************************************************************
;*		Wipe-water point data					*
;************************************************************************
WRWPPD0		EQU	$		; wipe-water size
		WORD	00002H,00003H,00004H,00005H
;
WRWPPD1		EQU	$
		WORD	00020H,00030H,00040H,00050H
;
WRWPPD2		EQU	$-4
		WORD	0006/2,0010/2,0014/2,0018/2
;
;
;
;
;==========================  Unit data  =================================
;************************************************************************
;*		UNIT  DATA						*
;************************************************************************
UNITDT		EQU	$
;=======================  CHANGE UNIT  ==================================
;************************************************************************
;*		Floor data sub.						*
;************************************************************************
FLORDT		EQU	$		; floor data
		WORD	014EEH,014EFH,014EEH,014EFH	; 0
		WORD	014FEH,014FFH,014FEH,014FFH
;// 03.06.20 //		WORD	014EEH,014EFH,014EEH,014EFH
;// 03.06.20 //		WORD	014FEH,014FFH,014FEH,014FFH
;
		WORD	00CEEH,00CEFH,00CEEH,00CEFH	; 1
		WORD	00CFEH,00CFFH,00CFEH,00CFFH
;// 03.06.20 //		WORD	00CEEH,00CEFH,00CEEH,00CEFH
;// 03.06.20 //		WORD	00CFEH,00CFFH,00CFEH,00CFFH
;
		WORD	00CECH,00CEDH,00CECH,00CEDH	; 2
		WORD	00CFCH,00CFDH,00CFCH,00CFDH
;// 03.06.20 //		WORD	00CECH,00CEDH,00CECH,00CEDH
;// 03.06.20 //		WORD	00CFCH,00CFDH,00CFCH,00CFDH
;
		WORD	014ECH,014EDH,014ECH,014EDH	; 3
		WORD	014FCH,014FDH,014FCH,014FDH
;// 03.06.20 //		WORD	014ECH,014EDH,014ECH,014EDH
;// 03.06.20 //		WORD	014FCH,014FDH,014FCH,014FDH
;
		WORD	018EEH,018EFH,018EEH,018EFH	; 4
		WORD	018FEH,018FFH,018FEH,018FFH
;// 03.06.20 //		WORD	018EEH,018EFH,018EEH,018EFH
;// 03.06.20 //		WORD	018FEH,018FFH,018FEH,018FFH
;
		WORD	010EEH,010EFH,010EEH,010EFH	; 5
		WORD	010FEH,010FFH,010FEH,010FFH
;// 03.06.20 //		WORD	010EEH,010EFH,010EEH,010EFH
;// 03.06.20 //		WORD	010FEH,010FFH,010FEH,010FFH
;
		WORD	010ECH,010EDH,010ECH,010EDH	; 6
		WORD	010FCH,010FDH,010FCH,010FDH
;// 03.06.20 //		WORD	010ECH,010EDH,010ECH,010EDH
;// 03.06.20 //		WORD	010FCH,010FDH,010FCH,010FDH
;
		WORD	018ECH,018EDH,018ECH,018EDH	; 7
		WORD	018FCH,018FDH,018FCH,018FDH
;// 03.06.20 //		WORD	018ECH,018EDH,018ECH,018EDH
;// 03.06.20 //		WORD	018FCH,018FDH,018FCH,018FDH
;
		WORD	010C1H,010C1H,010C1H,010C1H	; 8
		WORD	010C1H,010C1H,010C1H,010C1H
;// 03.06.20 //		WORD	010C1H,010C1H,010C1H,010C1H
;// 03.06.20 //		WORD	010C1H,010C1H,010C1H,010C1H
;
		WORD	018CAH,018CBH,018CAH,018CBH	; 9
		WORD	018DAH,018DBH,018DAH,018DBH
;// 03.06.20 //		WORD	018CAH,018CBH,018CAH,018CBH
;// 03.06.20 //		WORD	018DAH,018DBH,018DAH,018DBH
;
		WORD	018C9H,018C9H,018C9H,018C9H	; A
		WORD	018C9H,018C9H,018C9H,018C9H
;// 03.06.20 //		WORD	018C9H,018C9H,018C9H,018C9H
;// 03.06.20 //		WORD	018C9H,018C9H,018C9H,018C9H
;
		WORD	01DB6H,01DB7H,01DB6H,01DB7H	; B
		WORD	01DB8H,01DB9H,01DB8H,01DB9H
;// 03.06.20 //		WORD	01DB6H,01DB7H,01DB6H,01DB7H
;// 03.06.20 //		WORD	01DB8H,01DB9H,01DB8H,01DB9H
;
		WORD	01DAEH,01DAFH,01DAEH,01DAFH	; C
		WORD	01DBEH,01DBFH,01DBEH,01DBFH
;// 03.06.20 //		WORD	01DAEH,01DAFH,01DAEH,01DAFH
;// 03.06.20 //		WORD	01DBEH,01DBFH,01DBEH,01DBFH
;
		WORD	0090CH,0490CH,0090CH,0490CH	; D
		WORD	0890CH,0C90CH,0890CH,0C90CH
;// 03.06.20 //		WORD	0090CH,0490CH,0090CH,0490CH
;// 03.06.20 //		WORD	0890CH,0C90CH,0890CH,0C90CH
;
;
NUKIDT		EQU	$
		WORD	001ECH,001ECH,001ECH,001ECH	; E : null
		WORD	001ECH,001ECH,001ECH,001ECH
;// 03.06.20 //		WORD	001ECH,001ECH,001ECH,001ECH
;// 03.06.20 //		WORD	001ECH,001ECH,001ECH,001ECH
nulldt		EQU	001ECH
;
CNULLD		EQU	$
		WORD	001EBH,001EBH,001EBH,001EBH	; F : Cross null
		WORD	001EBH,001EBH,001EBH,001EBH
;// 03.06.20 //		WORD	001EBH,001EBH,001EBH,001EBH
;// 03.06.20 //		WORD	001EBH,001EBH,001EBH,001EBH
;
;
;
WATRD0		EQU	$				; water - 0 (asai)
		WORD	01DBAH,01DBBH,01DBAH,01DBBH
		WORD	01DBCH,01DBDH,01DBCH,01DBDH
;// 03.06.20 //		WORD	01DBAH,01DBBH,01DBAH,01DBBH
;// 03.06.20 //		WORD	01DBCH,01DBDH,01DBCH,01DBDH
;
WATRD1		EQU	$				; water - 1 (fukai)
		WORD	01DB6H,01DB7H,01DB6H,01DB7H
		WORD	01DB8H,01DB9H,01DB8H,01DB9H
;// 03.06.20 //		WORD	01DB6H,01DB7H,01DB6H,01DB7H
;// 03.06.20 //		WORD	01DB8H,01DB9H,01DB8H,01DB9H
;
WATRD2		EQU	$				; water - 2 (nagareru)
		WORD	01DB0H,01DB1H,01DB0H,01DB1H
		WORD	09DB0H,09DB1H,09DB0H,09DB1H
;// 03.06.20 //		WORD	01DB0H,01DB1H,01DB0H,01DB1H
;// 03.06.20 //		WORD	09DB0H,09DB1H,09DB0H,09DB1H
;
;
ICEYKD		EQU	$				; ice
		WORD	01DBAH,01DBBH,01DBAH,01DBBH
		WORD	01DBCH,01DBDH,01DBCH,01DBDH
;// 03.06.20 //		WORD	01DBAH,01DBBH,01DBAH,01DBBH
;// 03.06.20 //		WORD	01DBCH,01DBDH,01DBCH,01DBDH
;
CNGICE		EQU	$
		WORD	01DB5H,01DB5H
		WORD	01DB5H,01DB5H
;
ICEYD1		EQU	$				; ice (little)
		WORD	01DA6H,05DA6H,01DA6H,05DA6H
		WORD	09DA6H,0DDA6H,09DA6H,0DDA6H
;// 03.06.20 //		WORD	01DA6H,05DA6H,01DA6H,05DA6H
;// 03.06.20 //		WORD	09DA6H,0DDA6H,09DA6H,0DDA6H
;
;
;
STOPYK		EQU	$				; stop floor data
		WORD	008D0H,008D0H,008D0H,008D0H
		WORD	008D0H,008D0H,008D0H,008D0H
;// 03.06.20 //		WORD	008D0H,008D0H,008D0H,008D0H
;// 03.06.20 //		WORD	008D0H,008D0H,008D0H,008D0H
;
WTFLDT		EQU	$				; water floor data
		WORD	018CAH,018CBH,018CAH,018CBH
		WORD	018DAH,018DBH,018DAH,018DBH
;// 03.06.20 //		WORD	018CAH,018CBH,018CAH,018CBH
;// 03.06.20 //		WORD	018DAH,018DBH,018DAH,018DBH
;
BELTYD		EQU	$				; moving yuka
		WORD	00C62H,00C63H,00C62H,00C63H
		WORD	00C62H,00C63H,00C62H,00C63H
;// 03.06.20 //		WORD	00C62H,00C63H,00C62H,00C63H
;// 03.06.20 //		WORD	00C62H,00C63H,00C62H,00C63H
;
DNGRYD		EQU	$				; danger yuka
		WORD	00DCCH,00DCCH,00DCCH,00DCCH
		WORD	00DCCH,00DCCH,00DCCH,00DCCH
;// 03.06.20 //		WORD	00DCCH,00DCCH,00DCCH,00DCCH
;// 03.06.20 //		WORD	00DCCH,00DCCH,00DCCH,00DCCH
;
FLYYKD		EQU	$
		WORD	0090DH,0091DH
		WORD	0490DH,0491DH
;
COLYK0		EQU	$				; color floor data
		WORD	010ECH,010EDH,010ECH,010EDH
		WORD	010FCH,010FDH,010FCH,010FDH
;// 03.06.20 //		WORD	010ECH,010EDH,010ECH,010EDH
;// 03.06.20 //		WORD	010FCH,010FDH,010FCH,010FDH
;
COLYK1		EQU	$				; color floor data
		WORD	0090CH,0490CH,0090CH,0490CH
		WORD	0890CH,0C90CH,0890CH,0C90CH
;// 03.06.20 //		WORD	0090CH,0490CH,0090CH,0490CH
;// 03.06.20 //		WORD	0890CH,0C90CH,0890CH,0C90CH
;
RUPYYK		EQU	$				; rupy-yuka
		WORD	0190FH,0190FH,0190FH,0190FH
		WORD	0190FH,0190FH,0190FH,0190FH
;// 03.06.20 //		WORD	0190FH,0190FH,0190FH,0190FH
;// 03.06.20 //		WORD	0190FH,0190FH,0190FH,0190FH
;
YKCNV0		EQU	$				; yuka-conver up
		WORD	009BEH,049BEH,009BEH,049BEH
		WORD	009BEH,049BEH,009BEH,049BEH
;// 03.06.20 //		WORD	009BEH,009BEH,009BEH,009BEH
;// 03.06.20 //		WORD	009BEH,009BEH,009BEH,009BEH
;
YKCNV1		EQU	$				; yuka-conver down
		WORD	009BFH,049BFH,009BFH,049BFH
		WORD	009BFH,049BFH,009BFH,049BFH
;// 03.06.20 //		WORD	009BFH,009BFH,009BFH,009BFH
;// 03.06.20 //		WORD	009BFH,009BFH,009BFH,009BFH
;
YKCNV2		EQU	$				; yuka-conver left
		WORD	009B1H,009B1H,009B1H,009B1H
		WORD	089B1H,089B1H,089B1H,089B1H
;// 03.06.20 //		WORD	009B1H,009B1H,009B1H,009B1H
;// 03.06.20 //		WORD	009B1H,009B1H,009B1H,009B1H
;
YKCNV3		EQU	$				; yuka-conver right
		WORD	009B0H,009B0H,009B0H,009B0H
		WORD	089B0H,089B0H,089B0H,089B0H
;// 03.06.20 //		WORD	009B0H,009B0H,009B0H,009B0H
;// 03.06.20 //		WORD	009B0H,009B0H,009B0H,009B0H
;
;
;
ICEAT0		EQU	$
		WORD	00982H,00992H			; ice-man enter (left)
		WORD	00983H,00993H
;
ICEAT1		EQU	$
		WORD	04983H,04993H			;               (right)
		WORD	04982H,04992H
;
CRSHY0		EQU	$
		WORD	00CCCH,00CCDH,00CDCH,00CCEH	; crush yuka
		WORD	00CCCH,00CCFH,00CDCH,00CDDH
		WORD	00CCCH,00CCDH,00CDEH,00CDDH
		WORD	00CDFH,00CCDH,00CDCH,00CDDH
;
		WORD	00CCCH,00CDCH,00CCDH,00CCEH	; crush yuka
		WORD	00CCCH,00CDCH,00CCFH,00CDDH
		WORD	00CCCH,00CDEH,00CCDH,00CDDH
		WORD	00CDFH,00CDCH,00CCDH,00CDDH
;
CRSHY1		EQU	$
		WORD	00CCCH,00CCDH,00CCCH,00CCDH	; not-crush yuka (BIG)
		WORD	00CDCH,00CDDH,00CDCH,00CDDH
		WORD	00CCCH,00CCDH,00CCCH,00CCDH
		WORD	00CDCH,00CDDH,00CDCH,00CDDH
;
CRSHY2		EQU	$
		WORD	00CCCH,00CDCH			; not-crush yuka (SMALL)
		WORD	00CCDH,00CDDH
;
;
ERAYKD		EQU	$
		WORD	01C13H,01C41H,01C13H,01C41H
		WORD	01C40H,01C42H,01C40H,01C42H
		WORD	01C13H,01C41H,01C13H,01C41H
		WORD	01C40H,01C42H,01C40H,01C42H
;
;
SBKYKD		EQU	$			; sabaku-yuka
		WORD	01576H,01577H,01576H,01577H
		WORD	01578H,01579H,01578H,01579H
		WORD	01576H,01577H,01576H,01577H
		WORD	01578H,01579H,01578H,01579H
;
;
nukidt		EQU	NUKIDT-UNITDT
cnulld		EQU	CNULLD-UNITDT
watrd0		EQU	WATRD0-UNITDT
watrd1		EQU	WATRD1-UNITDT
watrd2		EQU	WATRD2-UNITDT
iceykd		EQU	ICEYKD-UNITDT
iceyd1		EQU	ICEYD1-UNITDT
stopyk		EQU	STOPYK-UNITDT
wtfldt		EQU	WTFLDT-UNITDT
beltyd		EQU	BELTYD-UNITDT
dngryd		EQU	DNGRYD-UNITDT
flyykd		EQU	FLYYKD-UNITDT
colyk0		EQU	COLYK0-UNITDT
colyk1		EQU	COLYK1-UNITDT
rupyyk		EQU	RUPYYK-UNITDT
iceat0		EQU	ICEAT0-UNITDT
iceat1		EQU	ICEAT1-UNITDT
crshy0		EQU	CRSHY0-UNITDT
crshy1		EQU	CRSHY1-UNITDT
crshy2		EQU	CRSHY2-UNITDT
ykcnv0		EQU	YKCNV0-UNITDT
ykcnv1		EQU	YKCNV1-UNITDT
ykcnv2		EQU	YKCNV2-UNITDT
ykcnv3		EQU	YKCNV3-UNITDT
;
cngice		EQU	CNGICE-UNITDT
eraykd		EQU	ERAYKD-UNITDT
sbkykd		EQU	SBKYKD-UNITDT
;
;
;************************************************************************
;*		Wall  data  ( UP )					*
;************************************************************************
LFWLD0		EQU	$		; left wall
		WORD	00892H,00898H,008A4H,00CADH
		WORD	00893H,00899H,008A5H,08CADH
;
RTWLD0		EQU	$		; right wall
		WORD	04CADH,048A4H,04898H,04892H
		WORD	0CCADH,048A5H,04899H,04893H
;
UPWLD0		EQU	$		; up wall
		WORD	00890H,00896H,008A2H,00CACH
		WORD	00891H,00897H,008A3H,04CACH
;
DNWLD0		EQU	$		; down wall
		WORD	08CACH,088A2H,08896H,08890H
		WORD	0CCACH,088A3H,08897H,08891H
;
;
;
;************************************************************************
;*		Wall  data  ( DOWN )					*
;************************************************************************
LFWLD8		EQU	$		; left wall
		WORD	00843H,00844H,00871H,090ADH
		WORD	00853H,00854H,00871H,010ADH
;
RTWLD8		EQU	$		; right wall
		WORD	0D0ADH,04871H,04844H,04843H
		WORD	050ADH,04871H,04854H,04853H
;
UPWLD8		EQU	$		; up wall
		WORD	00850H,00860H,00870H,050ACH
		WORD	00851H,00861H,00870H,010ACH
;
DNWLD8		EQU	$		; down wall
		WORD	0D0ACH,08870H,08860H,08850H
		WORD	090ACH,08870H,08861H,08851H
;
;
;
;************************************************************************
;*		Wall  data  ( UNDER )					*
;************************************************************************
ULFWLD		EQU	$		; left wall
		WORD	01C6BH,01C6BH,01C6BH,01C6BH,01C6CH,01C8DH
;
URTWLD		EQU	$		; right wall
		WORD	05C8DH,05C6CH,05C6BH,05C6BH,05C6BH,05C6BH
;
UUPWLD		EQU	$		; up wall
		WORD	01C6AH,01C6AH,01C6AH,01C6AH,01C7AH,01C8EH
;
UDNWLD		EQU	$		; down wall
		WORD	09C8EH,09C7AH,09C6AH,09C6AH,09C6AH,09C6AH
;
;
;
;************************************************************************
;*		Under wall data						*
;************************************************************************
LFWLDC		EQU	$		; left wall
		WORD	01C6BH,01C6BH
		WORD	01C6CH,01C6CH
;
RTWLDC		EQU	$		; right wall
		WORD	05C6CH,05C6CH
		WORD	05C6BH,05C6BH
;
UPWLDC		EQU	$		; up wall
		WORD	01C6AH,01C7AH
		WORD	01C6AH,01C7AH
;
DNWLDC		EQU	$		; down wall
		WORD	09C7AH,09C6AH
		WORD	09C7AH,09C6AH
;
;
LUCRDC		EQU	$		; coner left-up
		WORD	01C7BH,01C6BH
		WORD	01C6AH,01C45H
LDCRDC		EQU	$		;       left-down
		WORD	01C6BH,09C7BH
		WORD	09C45H,09C6AH
RUCRDC		EQU	$		;       right-up
		WORD	01C6AH,05C45H
		WORD	05C7BH,05C6BH
RDCRDC		EQU	$		;       right-down
		WORD	0DC45H,09C6AH
		WORD	05C6BH,0DC7BH
;
;
LUPLDC		EQU	$		; piller left-up
		WORD	01C7CH,01C7AH
		WORD	01C6CH,01C55H
LDPLDC		EQU	$		;        left-down
		WORD	09C7AH,09C7CH
		WORD	09C55H,01C6CH
RUPLDC		EQU	$		;        right-up
		WORD	05C6CH,05C55H
		WORD	05C7CH,01C7AH
RDPLDC		EQU	$		;        right-down
		WORD	0DC55H,05C6CH
		WORD	09C7AH,0DC7CH
;
;
;
;************************************************************************
;*		Ceiling data						*
;************************************************************************
CEILDT		EQU	$		; door ceiling data
MWALC0		EQU	$		; ceiling up-down
MWALC1		EQU	$		; ceiling left-right
		WORD	03C15H,03C15H,03C15H,03C15H
;
;
;
;************************************************************************
;*		Arch data						*
;************************************************************************
LARCHD		EQU	$		; left-arch
		WORD	00951H,00961H,00941H,00971H
		WORD	08951H,08961H,08941H,08971H
;
RARCHD		EQU	$		; right-arch
		WORD	04971H,04941H,04961H,04951H
		WORD	0C971H,0C941H,0C961H,0C951H
;
UARCHD		EQU	$		; up-arch
		WORD	00950H,00960H,00940H,00970H
		WORD	04950H,04960H,04940H,04970H
;
DARCHD		EQU	$		; down-arch
		WORD	08970H,08940H,08960H,08950H
		WORD	0C970H,0C940H,0C960H,0C950H
;
;
;
;************************************************************************
;*		45" Wall data  ( UP - 3F )				*
;************************************************************************
LUSWD0		EQU	$		; left-up 45" wall
		WORD	00880H,00881H,0089AH,0089BH,014ABH
;
LDSWD0		EQU	$		; left-down 45" wall
		WORD	094ABH,0889BH,0889AH,08881H,08880H
;
RUSWD0		EQU	$		; right-up 45" wall
		WORD	04880H,04881H,0489AH,0489BH,054ABH
;
RDSWD0		EQU	$		; right-down 45" wall
		WORD	0D4ABH,0C89BH,0C89AH,0C881H,0C880H
;
;
;
;************************************************************************
;*		45" Wall data  ( UP - 2F )				*
;************************************************************************
LUSWD1		EQU	$		; left-up 45" wall
		WORD	00880H,00881H,0089AH,0089BH,00CABH
;
LDSWD1		EQU	$		; left-down 45" wall
		WORD	08CABH,0889BH,0889AH,08881H,08880H
;
RUSWD1		EQU	$		; right-up 45" wall
		WORD	04880H,04881H,0489AH,0489BH,04CABH
;
RDSWD1		EQU	$		; right-down 45" wall
		WORD	0CCABH,0C89BH,0C89AH,0C881H,0C880H
;
;
;
;************************************************************************
;*		45" Wall data  ( UP - 1F )				*
;************************************************************************
LUSWD2		EQU	$		; left-up 45" wall
		WORD	00880H,00881H,0089AH,0089BH,010ABH
;
LDSWD2		EQU	$		; left-down 45" wall
		WORD	090ABH,0889BH,0889AH,08881H,08880H
;
RUSWD2		EQU	$		; right-up 45" wall
		WORD	04880H,04881H,0489AH,0489BH,050ABH
;
RDSWD2		EQU	$		; right-down 45" wall
		WORD	0D0ABH,0C89BH,0C89AH,0C881H,0C880H
;
;
;
;************************************************************************
;*		45" Wall data  ( DOWN - 3F )				*
;************************************************************************
LUSWD8		EQU	$		; left-up 45" wall
		WORD	00849H,0084AH,0084BH,0089CH,018ABH
;
LDSWD8		EQU	$		; left-down 45" wall
		WORD	098ABH,0889CH,0884BH,0884AH,08849H
;
RUSWD8		EQU	$		; right-up 45" wall
		WORD	04849H,0484AH,0484BH,0489CH,058ABH
;
RDSWD8		EQU	$		; right-down 45" wall
		WORD	0D8ABH,0C89CH,0C84BH,0C84AH,0C849H
;
;
;
;************************************************************************
;*		45" Wall data  ( DOWN - 2F )				*
;************************************************************************
LUSWD9		EQU	$		; left-up 45" wall
		WORD	00849H,0084AH,0084BH,0089CH,010ABH
;
LDSWD9		EQU	$		; left-down 45" wall
		WORD	090ABH,0889CH,0884BH,0884AH,08849H
;
RUSWD9		EQU	$		; right-up 45" wall
		WORD	04849H,0484AH,0484BH,0489CH,050ABH
;
RDSWD9		EQU	$		; right-down 45" wall
		WORD	0D0ABH,0C89CH,0C84BH,0C84AH,0C849H
;
;
;
;************************************************************************
;*		45" Wall data  ( DOWN - 1F )				*
;************************************************************************
LUSWDA		EQU	$		; left-up 45" wall
		WORD	00849H,0084AH,0084BH,0089CH,010ABH
;
LDSWDA		EQU	$		; left-down 45" wall
		WORD	090ABH,0889CH,0884BH,0884AH,08849H
;
RUSWDA		EQU	$		; right-up 45" wall
		WORD	04849H,0484AH,0484BH,0489CH,050ABH
;
RDSWDA		EQU	$		; right-down 45" wall
		WORD	0D0ABH,0C89CH,0C84BH,0C84AH,0C849H
;
;
;
;************************************************************************
;*		Saidan data						*
;************************************************************************
SIDNDT		EQU	$
		WORD	01DAAH,01DACH,01DACH
		WORD	01D8BH,01DADH,01D8CH
		WORD	01D8BH,01DAFH,01DA5H
;
		WORD	01D8BH,01DAFH,01DA6H
		WORD	01D8BH,01DAFH,01DA6H
;
		WORD	01D8BH,01DAFH,05DA5H
		WORD	01D8BH,05DADH,05D8CH
		WORD	05DAAH,05DACH,05DACH
;
		WORD	01DACH,01D8CH,01DA7H
		WORD	01DACH,01D8CH,01DA7H
;
		WORD	01DA9H,01DA9H,01DA9H,01DA9H
;
		WORD	05DA7H,05D8CH,05DACH
		WORD	05DA7H,05D8CH,05DACH
;
		WORD	01DACH,01DACH,01DABH
		WORD	01D8CH,01D9CH,01D9BH
		WORD	09DA5H,01DAEH,01D9BH
;
		WORD	09DA6H,01DAEH,01D9BH
		WORD	09DA6H,01DAEH,01D9BH
;
		WORD	0DDA5H,01DAEH,01D9BH
		WORD	05D8CH,05D9CH,01D9BH
		WORD	05DACH,05DACH,05DABH
;
SIDNMK		EQU	$		; Saidan mark
		WORD	01DA8H,09DA8H,05DA8H,0DDA8H
;
;
;
;************************************************************************
;*		Saidan Step data					*
;************************************************************************
SDSTPD		EQU	$
		WORD	01D9DH,01D8DH,01D8DH
		WORD	01D72H,01D72H,01D72H
		WORD	05D9DH,05D8DH,05D8DH
;
;
;
;************************************************************************
;*		Hole data						*
;************************************************************************
HOLEDT		EQU	$
		WORD	001E9H,001E9H
		WORD	001E9H,001E9H
;
;
HOLED0		EQU	$
		WORD	018C9H,018C9H
		WORD	018C9H,018C9H
;
;
HOLED9		EQU	$
		WORD	009DAH,009DEH,009DBH,001E9H
		WORD	009DBH,001E9H,049DAH,049DEH
		WORD	009DEH,009DCH,001E9H,009DDH
		WORD	001E9H,009DDH,049DEH,049DCH
;
;
CNGANA		EQU	$
		WORD	009DBH,001E9H,001E9H,009DDH
		WORD	009DBH,001E9H,001E9H,009DDH
		WORD	009DBH,001E9H,001E9H,009DDH
		WORD	009DBH,001E9H,001E9H,009DDH
;
;
;************************************************************************
;*		Fance data						*
;************************************************************************
FANCE0		EQU	$		; length
		WORD	008E1H,008E3H,008E1H
;
FANCE1		EQU	$		; width
		WORD	008E1H,008E2H,008E1H
;
;
FANCE4		EQU	$		; big length-1
		WORD	008E0H,008F0H
		WORD	048E0H,048F0H
;
		WORD	008F3H,048F3H
;
		WORD	008E0H,008F1H,008E4H
		WORD	048E0H,048F1H,048E4H
;
FANCE5		EQU	$		; big width-1
		WORD	008E0H,008F1H,008E4H
		WORD	048E0H,048F1H,048E4H
;
		WORD	008F4H,008F2H,008E5H
;
		WORD	008E0H,008F1H,008E4H
		WORD	048E0H,048F1H,048E4H
;
;
;
;
;************************************************************************
;*		45" Wall ana waku data					*
;************************************************************************
WAKLS0		EQU	$		; left-up 45" wall
;// 03.07.09 //		WORD	008EBH,00CFBH
;
WAKLS1		EQU	$		; left-down 45" wall
;// 03.07.09 //		WORD	08CFBH,088EBH
;
WAKRS0		EQU	$		; right-up 45" wall
;// 03.07.09 //		WORD	048EBH,04CFBH
;
WAKRS1		EQU	$		; right-down 45" wall
;// 03.07.09 //		WORD	0CCFBH,0C8EBH
;
;
;
;************************************************************************
;*		Waku data						*
;************************************************************************
WAKUD0		EQU	$
		WORD	009DAH,009DBH,049DAH
;
WAKUD1		EQU	$
		WORD	009DCH,009DDH,049DCH
;
WAKUD2		EQU	$
		WORD	009DEH
;
WAKUD3		EQU	$
		WORD	049DEH
;
;
WAKUD4		EQU	$
		WORD	009DFH,009DDH,049DFH
;
WAKUD5		EQU	$
		WORD	089DFH,009DBH,0C9DFH
;
;
WAKUD6		EQU	$		; coner
		WORD	009DFH,009DDH,049DCH
;
WAKUD7		EQU	$
		WORD	009DCH,009DDH,049DFH
;
WAKUD8		EQU	$
		WORD	089DFH,009DBH,049DAH
;
WAKUD9		EQU	$
		WORD	009DAH,009DBH,0C9DFH
;
;
;
;************************************************************************
;*		Brige data						*
;************************************************************************
LBRGDT		EQU	$
;// 03.06.18 //		WORD	0097CH,00972H,0497CH
;
WBRGDT		EQU	$
;// 03.06.18 //		WORD	0097DH,00973H,0897DH
;
;
;
;************************************************************************
;*		Scramble data						*
;************************************************************************
LSCRBD		EQU	$
		WORD	008E3H
		WORD	04846H,04843H,04869H,04853H,0C846H
;
RSCRBD		EQU	$
		WORD	008E3H
		WORD	00846H,00843H,00869H,00853H,08846H
;
USCRBD		EQU	$
		WORD	008E2H
		WORD	08846H,08850H,08868H,08851H,0C846H
;
DSCRBD		EQU	$
		WORD	008E2H
		WORD	00846H,00850H,00868H,00851H,04846H
;
;
LSCRD1		EQU	$
		WORD	00852H
RSCRD1		EQU	$
		WORD	04852H
USCRD1		EQU	$
		WORD	0085CH
DSCRD1		EQU	$
		WORD	0885CH
;
;
;
;************************************************************************
;*		Shadow data						*
;************************************************************************
LSHDWD		EQU	$
;// 03.06.18 //		WORD	011EDH,011EEH,091EDH
;
RSHDWD		EQU	$
;// 03.06.18 //		WORD	051EDH,051EEH,0D1EDH
;
USHDWD		EQU	$
;// 03.06.18 //		WORD	011EDH,011EEH,051EDH
;
DSHDWD		EQU	$
;// 03.06.18 //		WORD	091EDH,091EEH,0D1EDH
;
;
;
;************************************************************************
;*		Carpet data						*
;************************************************************************
CRPTDT		EQU	$		; carpet data
		WORD	01CC6H,01CC6H,01CC6H,01CC6H
		WORD	01CC6H,01CC6H,01CC6H,01CC6H
		WORD	01CC6H,01CC6H,01CC6H,01CC6H
		WORD	01CC6H,01CC6H,01CC6H,01CC6H
;
CEDGED		EQU	$		; carpet edge data
		WORD	00973H
;
;
;
;*************************************************************************
;*		Road  data						*
;************************************************************************
WROAD0		EQU	$		; width road (up)
		WORD	028A0H,028A1H,0A8A1H,0A8A0H
		WORD	00867H,009EFH,009EFH,08867H
		WORD	00865H,0085AH,0885AH,08865H
;
		WORD	04865H,0485AH,0C85AH,0C865H
		WORD	04867H,009EFH,009EFH,0C867H
		WORD	068A0H,068A1H,0E8A1H,0E8A0H
;
WROAD1		EQU	$		; width road (down)
		WORD	028A0H,028A1H,0A8A1H,0A8A0H
		WORD	00867H,009EFH,009EFH,08867H
		WORD	00865H,0085AH,0885AH,08865H
;
		WORD	04865H,0485AH,0C85AH,0C865H
		WORD	04867H,009EFH,009EFH,0C867H
		WORD	068A0H,068A1H,0E8A1H,0E8A0H
;
;
;
;
;************************************************************************
;*		Move wall data						*
;************************************************************************
MWALD0		EQU	$		; up
;// 03.06.18 //		WORD	0296FH,001ECH,001ECH
;// 03.06.18 //		WORD	02891H,0294FH,001ECH
;// 03.06.18 //		WORD	00890H,00896H,0095FH
;// 03.06.18 //;
;// 03.06.18 //		WORD	00891H,00897H,008A3H
;// 03.06.18 //		WORD	00890H,00896H,008A2H
;// 03.06.18 //;
;// 03.06.18 //		WORD	00891H,00897H,0495FH
;// 03.06.18 //		WORD	02890H,0694FH,001ECH
;// 03.06.18 //		WORD	0696FH,001ECH,001ECH
;
;
MWALD1		EQU	$		; down
;// 03.06.18 //		WORD	001ECH,001ECH,0A96FH
;// 03.06.18 //		WORD	001ECH,0A94FH,0A891H
;// 03.06.18 //		WORD	0895FH,08896H,08890H
;// 03.06.18 //;
;// 03.06.18 //		WORD	088A3H,08897H,08891H
;// 03.06.18 //		WORD	08822H,08896H,08890H
;// 03.06.18 //;
;// 03.06.18 //		WORD	0C95FH,08897H,08891H
;// 03.06.18 //		WORD	001ECH,0E94FH,0A890H
;// 03.06.18 //		WORD	001ECH,001ECH,0E96FH
;
;
MWALD2		EQU	$		; left
		WORD	0294EH,02893H,00892H
		WORD	001ECH,0295EH,00898H
		WORD	001ECH,001ECH,0096EH
;
		WORD	00893H,00899H,008A5H
		WORD	00892H,00898H,008A4H
;
		WORD	00893H,0A893H,0A94EH
		WORD	00899H,0A95EH,001ECH
		WORD	0896EH,001ECH,001ECH
;
;
MWALD3		EQU	$		; right
		WORD	001ECH,001ECH,0496EH
		WORD	001ECH,0695EH,04898H
		WORD	0694EH,06893H,04892H
;
		WORD	048A5H,04899H,04893H
		WORD	048A4H,04898H,04892H
;
		WORD	0C96EH,001ECH,001ECH
		WORD	04899H,0E95EH,001ECH
		WORD	04893H,0E893H,0E94EH
;
;
;// 03.07.10 //MWALC0		EQU	$		; ceiling up-down
;// 03.07.10 //MWALC1		EQU	$		; ceiling left-right
;// 03.07.10 //		WORD	029E8H,029E8H,029E8H
;
;
;
;
;************************************************************************
;*		Certen data						*
;************************************************************************
CRTND0		EQU	$		; up
		WORD	0096EH,01148H,01168H,01159H
		WORD	0496EH,01149H,01169H,05159H
		WORD	0096EH,05149H,05169H,01159H
		WORD	0496EH,05148H,05168H,05159H
;
CRTND1		EQU	$		; down
;// 03.08.29 //		WORD	09159H,09168H,09148H,0896EH
;// 03.08.29 //		WORD	0D159H,09169H,0D149H,0C96EH
;// 03.08.29 //		WORD	09159H,0D169H,0D149H,0896EH
;// 03.08.29 //		WORD	0D159H,0D168H,0D148H,0C96EH
;
CRTND2		EQU	$		; left
		WORD	0097EH,0897EH,0097EH,0897EH
		WORD	011AEH,01146H,09146H,091AEH
		WORD	011AFH,01166H,09166H,091AFH
		WORD	01156H,09156H,01156H,09156H
;
CRTND3		EQU	$		; right
		WORD	05156H,0D156H,05156H,0D156H
		WORD	051AFH,01167H,09167H,0D1AFH
		WORD	051AEH,01147H,09147H,0D1AEH
		WORD	0497EH,0C97EH,0497EH,0C97EH
;
;
CRTND8		EQU	$		; (UP-cut open)
		WORD	0096EH,0115EH,01178H,01158H
		WORD	0496EH,0114EH,01177H,01174H
		WORD	0096EH,0114EH,05177H,05174H
		WORD	0496EH,0515EH,05178H,05158H
;
CRTND9		EQU	$		; (DOWN-cut open)
;// 03.08.29 //		WORD	09158H,09178H,0915EH,0896EH
;// 03.08.29 //		WORD	09174H,09177H,0914EH,0C96EH
;// 03.08.29 //		WORD	0D174H,0D177H,0914EH,0896EH
;// 03.08.29 //		WORD	0D158H,0D178H,0D15EH,0C96EH
;
CRTNDA		EQU	$		; (LEFT-cut open)
		WORD	0097EH,0897EH,0097EH,0897EH
		WORD	011ACH,011ADH,011ADH,091ACH
		WORD	01179H,01176H,09176H,09179H
		WORD	01157H,01175H,09175H,09157H
;
CRTNDB		EQU	$		; (RIGHT-cut open)
		WORD	05157H,05175H,0D175H,0D157H
		WORD	05179H,05176H,0D176H,0D179H
		WORD	051ACH,051ADH,051ADH,0D1ACH
		WORD	0497EH,0C97EH,0497EH,0C97EH
;
;
;
;************************************************************************
;*		Pillar data						*
;************************************************************************
PILLRD		EQU	$		; pillar
		WORD	028E7H,028F7H,028E6H,008F6H
		WORD	068E7H,068F7H,068E6H,048F6H
;
TLDAID		EQU	$		; tall dai
		WORD	02DC2H,02DC3H,02D2CH,00D3CH
		WORD	06DC2H,06DC3H,06D2CH,04D3CH
;
;
;
;************************************************************************
;*		Window data						*
;************************************************************************
UWNDWD		EQU	$		; window up
		WORD	00942H,01162H,01152H
		WORD	00943H,01163H,01153H
		WORD	04943H,05163H,05153H
		WORD	04942H,05162H,05152H
;
DWNDWD		EQU	$		; window down
		WORD	09152H,09162H,08942H
		WORD	09153H,09163H,08943H
		WORD	0D153H,0D163H,0C943H
		WORD	0D152H,0D162H,0C942H
;
LWNDWD		EQU	$		; window left
		WORD	00944H,00954H,08954H,08944H
		WORD	01164H,01165H,09165H,09164H
		WORD	01145H,01155H,09155H,09145H
;
RWNDWD		EQU	$		; window right
		WORD	05145H,05155H,0D155H,0D145H
		WORD	05164H,05165H,0D165H,0D164H
		WORD	04944H,04954H,0C954H,0C944H
;
;
;
;************************************************************************
;*		Twin chair data						*
;************************************************************************
TWCRDT		EQU	$
		WORD	01548H,01549H
		WORD	05548H,05549H
;
		WORD	01548H,01549H
		WORD	05548H,05549H
;
;
;
;************************************************************************
;*		Big table data						*
;************************************************************************
BTBLDT		EQU	$
		WORD	01587H,01588H,05588H,05587H
;
		WORD	01597H,01598H,05598H,05597H
;
		WORD	01589H,0158AH,0558AH,05589H
;
		WORD	01599H,0159AH,0559AH,05599H
;
;
;
;
;************************************************************************
;*		Small pillar data					*
;************************************************************************
SPILD0		EQU	$			; up
		WORD	00980H,00990H
		WORD	04980H,04990H
;
SPILD1		EQU	$			; down
		WORD	08990H,08980H
		WORD	0C990H,0C980H
;
SPILD2		EQU	$			; left
		WORD	00981H,08981H
		WORD	00991H,08991H
;
SPILD3		EQU	$			; right
		WORD	04991H,0C991H
		WORD	04981H,0C981H
;
;
;
;************************************************************************
;*		Water waku data						*
;************************************************************************
WWAKU0		EQU	$
		WORD	01DFEH,01DFCH,05DFEH
;
WWAKU1		EQU	$
		WORD	09DFEH,09DFCH,0DDFEH
;
WWAKU2		EQU	$
		WORD	01DFDH
;
WWAKU3		EQU	$
		WORD	05DFDH
;
;
WWAKU4		EQU	$
		WORD	0DDFFH,09DFCH,09DFFH
;
WWAKU5		EQU	$
		WORD	05DFFH,01DFCH,01DFFH
;
;
WWAKU6		EQU	$
		WORD	0DDFFH,09DFCH,0DDFEH
;
WWAKU7		EQU	$
		WORD	09DFEH,09DFCH,09DFFH
;
WWAKU8		EQU	$
		WORD	05DFFH,01DFCH,05DFEH
;
WWAKU9		EQU	$
		WORD	01DFEH,01DFCH,01DFFH
;
;
;
;************************************************************************
;*		Taki data						*
;************************************************************************
BTAKID		EQU	$		; big taki
		WORD	01DF7H,01C40H,01C41H,01C42H,01DB5H
;
		WORD	01DB2H,01DB3H,01DB3H,01DB4H,01DB5H
;
		WORD	05DF7H,05C40H,05C41H,05C42H,05DB5H
;
;
STAKID		EQU	$		; small taki
		WORD	01DF7H,01C40H,01DB5H
;
		WORD	01DB2H,01DB3H,01DB5H
;
		WORD	05DF7H,05C40H,05DB5H
;
;
;
;************************************************************************
;*		Beltconver waku data					*
;************************************************************************
BLTWD0		EQU	$		; fuchi
		WORD	00C14H,00C14H,00C14H,00C14H
		WORD	08C14H,08C14H,08C14H,08C14H
;
BLTWD1		EQU	$		; dammy beltconver
		WORD	00C64H,00C66H,00C64H,00C66H
		WORD	00C64H,00C66H,00C64H,00C66H
;
;
;
;************************************************************************
;*		Stand data						*
;************************************************************************
STAND0		EQU	$
		WORD	00D46H,00D56H,0157EH
		WORD	00D47H,00D57H,0157FH
		WORD	04D46H,04D56H,0557EH
;
STAND1		EQU	$
		WORD	00D46H,04D46H
		WORD	08DABH,04DABH
;
STAND2		EQU	$
		WORD	00D46H,00DABH
		WORD	00D47H,04DADH
;
STAND3		EQU	$
		WORD	00DABH,00D56H
		WORD	04DACH,00D57H
;
STAND4		EQU	$
		WORD	00D47H,00DADH
		WORD	04D46H,04DABH
;
STAND5		EQU	$
		WORD	00DACH,00D57H
		WORD	04DABH,04D56H
;
;
;
;************************************************************************
;*		Chimney data						*
;************************************************************************
CHMNYD		EQU	$
;// 03.06.20 //		WORD	0091AH,00924H,00934H,008FCH
;// 03.06.20 //		WORD	0491AH,04924H,04934H,048FCH
;
;
;
;************************************************************************
;*		Oven data						*
;************************************************************************
OVEND0		EQU	$
;// 03.06.20 //		WORD	00D28H,00D38H,0091AH
;// 03.06.20 //		WORD	04D28H,04D38H,0491AH
;
;
;
;************************************************************************
;*		Rack data						*
;************************************************************************
RACKDT		EQU	$
		WORD	00940H,00960H,00950H,00970H
		WORD	00941H,00961H,00951H,00971H
		WORD	04941H,04961H,04951H,04971H
		WORD	04940H,04960H,04950H,04970H
;
;
;
;************************************************************************
;*		Lift data						*
;************************************************************************
TLIFDT		EQU	$		; senro tate
		WORD	00D42H
YLIFDT		EQU	$		;       yoko
		WORD	00D52H
;
CLIFD0		EQU	$		; Coner left-up
		WORD	00D40H
CLIFD1		EQU	$		;           -down
		WORD	00D50H
CLIFD2		EQU	$		;       right-up
		WORD	00D41H
CLIFD3		EQU	$		;            -down
		WORD	00D51H
;
TLIFD0		EQU	$		; T up
		WORD	00D8EH
TLIFD1		EQU	$		;   down
		WORD	00D8FH
TLIFD2		EQU	$		;   left
		WORD	00D9EH
TLIFD3		EQU	$		;   right
		WORD	00D9FH
;
CLIFDT		EQU	$		; senro +cross
		WORD	00D43H
SLIFDT		EQU	$		;       stop
		WORD	00D53H
SLIFDD		EQU	$		;       ichigi-stop
		WORD	00DA9H
CLIFDD		EQU	$		;       cross
		WORD	00DA8H
;
;
;
;
;************************************************************************
;*		Taimatsu data						*
;************************************************************************
TIMTD0		EQU	$		; taimatsu up
		WORD	009C8H,00DC6H,04DC6H,049C8H
		WORD	009CAH,00D02H,04D02H,049CAH
;
TIMTD1		EQU	$		; taimatsu down
		WORD	089CAH,08D02H,0CD02H,0C9CAH
		WORD	089C8H,08DC6H,0CDC6H,0C9C8H
;
TIMTD2		EQU	$		; taimatsu left
		WORD	009C9H,00DC7H,08DC7H,089C9H
		WORD	009CBH,00D03H,08D03H,089CBH
;
TIMTD3		EQU	$		; taimatsu right
		WORD	049CBH,04D03H,0CD03H,0C9CBH
		WORD	049C9H,04DC7H,0CDC7H,0C9C9H
;
;
;
;************************************************************************
;*		Chapel Window data					*
;************************************************************************
CWNDW0		EQU	$		; window up
;// 03.07.05 //		WORD	0094CH,0115CH,0116CH
;// 03.07.05 //		WORD	0094DH,0115DH,0116DH
;// 03.07.05 //		WORD	0494DH,0515DH,0516DH
;// 03.07.05 //		WORD	0494CH,0515CH,0516CH
;
CWNDW1		EQU	$		; window down
;// 03.07.05 //		WORD	0916CH,0915CH,0894CH
;// 03.07.05 //		WORD	0916DH,0915DH,0894DH
;// 03.07.05 //		WORD	0D16DH,0D15DH,0C94DH
;// 03.07.05 //		WORD	0D16CH,0D15CH,0C94CH
;
CWNDW2		EQU	$		; window left
		WORD	00944H,00954H,08954H,08944H
		WORD	01164H,01165H,09165H,09164H
		WORD	01145H,01155H,09155H,09145H
;
CWNDW3		EQU	$		; window right
		WORD	05145H,05155H,0D155H,0D145H
		WORD	05164H,05165H,0D165H,0D164H
		WORD	04944H,04954H,0C954H,0C944H
;
;
CWNDW4		EQU	$		; window up
;// 03.07.05 //		WORD	00945H,01965H,01955H
;// 03.07.05 //		WORD	00946H,01966H,01956H
;// 03.07.05 //		WORD	04946H,05966H,05956H
;// 03.07.05 //		WORD	04945H,05965H,05955H
;
CWNDW5		EQU	$		; window down
;// 03.07.05 //		WORD	09955H,09965H,08945H
;// 03.07.05 //		WORD	09956H,09966H,08946H
;// 03.07.05 //		WORD	0D956H,0D966H,0C946H
;// 03.07.05 //		WORD	0D955H,0D965H,0C945H
;
CWNDW6		EQU	$		; window left
		WORD	01146H,01147H,09147H,09146H
		WORD	01166H,01167H,09167H,09166H
		WORD	01156H,01157H,09157H,09156H
;
CWNDW7		EQU	$		; window right
		WORD	05156H,05157H,0D157H,0D156H
		WORD	05166H,05167H,0D167H,0D166H
		WORD	05146H,05147H,0D147H,0D146H
;
;
;
;************************************************************************
;*		Chapel stage data					*
;************************************************************************
CSTGED		EQU	$
		WORD	0098EH,0098EH,0099EH
;
		WORD	01CC6H,01CC6H,0099FH
;
		WORD	01CC6H,0498FH,0499EH
;
		WORD	01CC6H,00972H,00972H
;
		WORD	01CC6H,0098FH,0099EH
;
		WORD	01CC6H,01CC6H,0099FH
;
		WORD	0498EH,0498EH,0499EH
;
;
;
;************************************************************************
;*		Toge block data						*
;************************************************************************
TGBLKD		EQU	$
		WORD	00DE6H,00DF6H
		WORD	04DE6H,04DF6H
;
;
;
;
;************************************************************************
;*		Jyutan data						*
;************************************************************************
JYTND0		EQU	$		; carpet data
		WORD	01DA9H,01DA9H,01DA9H,01DA9H
		WORD	01DA9H,01DA9H,01DA9H,01DA9H
		WORD	01DA9H,01DA9H,01DA9H,01DA9H
		WORD	01DA9H,01DA9H,01DA9H,01DA9H
;
JYTND1		EQU	$
		WORD	09DA8H,09DA6H,0DDA8H
;
JYTND2		EQU	$
		WORD	01DA8H,01DA6H,05DA8H
;
JYTND3		EQU	$
		WORD	01DA7H
;
JYTND4		EQU	$
		WORD	05DA7H
;
;
;
;
;************************************************************************
;*		Tare-maku data						*
;************************************************************************
TRMKDT		EQU	$
		WORD	04D66H,01D64H,01D44H,01D54H
		WORD	00D66H,05D64H,05D44H,05D54H
;
;
;
;
;************************************************************************
;*		Yogore-kabe data					*
;************************************************************************
YGKBD0		EQU	$		; up
		WORD	00946H,00966H,00956H,00CACH
		WORD	00947H,00967H,00957H,04CACH
YGKBD1		EQU	$		; down
		WORD	08CACH,08956H,08966H,08946H
		WORD	0CCACH,08957H,08967H,08947H
YGKBD2		EQU	$		; left
		WORD	00948H,00968H,00958H,00CADH
		WORD	00949H,00969H,00959H,08CADH
YGKBD3		EQU	$		; right
		WORD	04CADH,04958H,04968H,04948H
		WORD	0CCADH,04959H,04969H,04949H
;
;
;
;
;
;==========================  FIX UNIT  ==================================
;************************************************************************
;*		Coner data						*
;************************************************************************
LUCRD0		EQU	$		; left-up coner data
		WORD	00894H,00893H,00892H,00893H
		WORD	00891H,0089EH,00898H,00899H
		WORD	00890H,00896H,008A6H,008A5H
		WORD	00891H,00897H,008A3H,00CAEH
;
LDCRD0		EQU	$		; left-down coner data
		WORD	00892H,00893H,00892H,08894H
		WORD	00898H,00899H,0889EH,08891H
		WORD	008A4H,088A6H,08896H,08890H
		WORD	08CAEH,088A3H,08897H,08891H
;
RUCRD0		EQU	$		; right-up coner data
		WORD	00890H,00896H,008A2H,04CAEH
		WORD	00891H,00897H,048A6H,048A5H
		WORD	00890H,0489EH,04898H,04899H
		WORD	04894H,04893H,04892H,04893H
;
RDCRD0		EQU	$		; right-down coner data
		WORD	0CCAEH,088A2H,08896H,08890H
		WORD	048A4H,0C8A6H,08897H,08891H
		WORD	04898H,04899H,0C89EH,08890H
		WORD	04892H,04893H,04892H,0C894H
;
;
;
;************************************************************************
;*		Down Coner data						*
;************************************************************************
LUCRD8		EQU	$		; left-up coner data
		WORD	00846H,00843H,00853H,00843H
		WORD	00850H,00847H,00854H,00844H
		WORD	00851H,00861H,00848H,00871H
		WORD	00850H,00860H,00870H,010AEH
;
LDCRD8		EQU	$		; left-down coner data
		WORD	00853H,00843H,00853H,08846H
		WORD	00854H,00844H,08847H,08850H
		WORD	00871H,08848H,08861H,08851H
		WORD	090AEH,08870H,08860H,08850H
;
RUCRD8		EQU	$		; right-up coner data
		WORD	00851H,00861H,00870H,050AEH
		WORD	00850H,00860H,04848H,04871H
		WORD	00851H,04847H,04854H,04844H
		WORD	04846H,04843H,04853H,04843H
;
RDCRD8		EQU	$		; right-down coner data
		WORD	0D0AEH,08870H,08861H,08851H
		WORD	04871H,0C848H,08860H,08850H
		WORD	04854H,04844H,0C847H,08851H
		WORD	04853H,04843H,04853H,0C846H
;
;
;
;************************************************************************
;*		Pillar data						*
;************************************************************************
LUPLD0		EQU	$		; left-up pillar data
		WORD	00895H,00896H,008A2H,00CACH
		WORD	00898H,0089FH,008A3H,04CACH
		WORD	008A4H,008A5H,008A7H,00CACH
		WORD	00CADH,08CADH,00CADH,00CAFH
;
LDPLD0		EQU	$		; left-down pillar data
		WORD	08CACH,088A2H,08896H,08895H
		WORD	0CCACH,088A3H,0889FH,00899H
		WORD	08CACH,088A7H,008A4H,008A5H
		WORD	08CAFH,08CADH,00CADH,00CADH
;
RUPLD0		EQU	$		; right-up pillar data
		WORD	04CADH,0CCADH,04CADH,04CAFH
		WORD	048A4H,048A5H,048A7H,04CACH
		WORD	04898H,0489FH,008A2H,00CACH
		WORD	04895H,00897H,008A3H,04CACH
;
RDPLD0		EQU	$		; right-down pillar data
		WORD	0CCAFH,0CCADH,04CADH,0CCADH
		WORD	0CCACH,0C8A7H,048A4H,048A5H
		WORD	08CACH,088A2H,0C89FH,04899H
		WORD	0CCACH,088A3H,08897H,0C895H
;
;
;
;************************************************************************
;*		Under Pillar data					*
;************************************************************************
LUPLD8		EQU	$		; left-up pillar data
		WORD	00856H,00861H,00870H,010ACH
		WORD	00854H,00857H,00870H,050ACH
		WORD	00871H,00871H,00858H,010ACH
		WORD	010ADH,090ADH,010ADH,010AFH
;
LDPLD8		EQU	$		; left-down pillar data
		WORD	090ACH,08870H,08861H,08856H
		WORD	0D0ACH,08870H,08857H,00844H
		WORD	090ACH,08858H,00871H,00871H
		WORD	090AFH,090ADH,010ADH,090ADH
;
RUPLD8		EQU	$	; right-up pillar data
		WORD	050ADH,0D0ADH,050ADH,050AFH
		WORD	04871H,04871H,04858H,050ACH
		WORD	04854H,04857H,00870H,010ACH
		WORD	04856H,00860H,00870H,050ACH
;
RDPLD8		EQU	$		; right-down pillar data
		WORD	0D0AFH,0D0ADH,050ADH,0D0ADH
		WORD	0D0ACH,0C858H,04871H,04871H
		WORD	090ACH,08870H,0C857H,04844H
		WORD	0D0ACH,08870H,08860H,0C856H
;
;
;
;
;************************************************************************
;*		Scrumble length Coner Pillar data			*
;************************************************************************
LUCPL0		EQU	$		; left-up pillar data
		WORD	00861H,00870H,050AEH,050AFH
		WORD	00860H,04848H,04858H,010ACH
		WORD	04847H,04857H,00870H,050ACH
;
LDCPL0		EQU	$		; left-down pillar data
		WORD	0D0AFH,0D0AEH,08870H,08861H
		WORD	090ACH,0C858H,0C848H,08860H
		WORD	0D0ACH,08870H,0C857H,0C847H
;
RUCPL0		EQU	$		; right-up pillar data
		WORD	00847H,00857H,00870H,050ACH
		WORD	00861H,00848H,00858H,010ACH
		WORD	00860H,00870H,010AEH,010AFH
;
RDCPL0		EQU	$		; right-down pillar data
		WORD	0D0ACH,08870H,08857H,08847H
		WORD	090ACH,08858H,08848H,08861H
		WORD	090AFH,090AEH,08870H,08860H
;
;
;
;************************************************************************
;*		Scrumble width Coner Pillar data			*
;************************************************************************
LUCPL1		EQU	$		; left-up pillar data
		WORD	00854H,00844H,08847H
		WORD	00871H,08848H,08857H
		WORD	090AEH,08858H,00871H
		WORD	090AFH,090ADH,010ADH
;
LDCPL1		EQU	$		; left-down pillar data
		WORD	00847H,00854H,00844H
		WORD	00857H,00848H,00871H
		WORD	00871H,00858H,010AEH
		WORD	090ADH,010ADH,010AFH
;
RUCPL1		EQU	$		; right-up pillar data
		WORD	0D0AFH,0D0ADH,050ADH
		WORD	0D0AEH,0C858H,04871H
		WORD	04871H,0C848H,0C857H
		WORD	04854H,04844H,0C847H
;
RDCPL1		EQU	$		; right-down pillar data
		WORD	0D0ADH,050ADH,050AFH
		WORD	04871H,04858H,050AEH
		WORD	04857H,04848H,04871H
		WORD	04847H,04854H,04844H
;
;
;
;
;************************************************************************
;*		Yoroi data						*
;************************************************************************
YOROID		EQU	$		; yoroi
MONOD1		EQU	$		; 2x3sekizou
		WORD	00D00H,00D10H,00D12H
		WORD	04D00H,00D11H,00D13H
;
;
;
;************************************************************************
;*		Mono data						*
;************************************************************************
MONOD0		EQU	$		; 4x4 sekizou
		WORD	00D04H,00D14H,00D24H,00D34H
		WORD	00D05H,00D15H,00D25H,00D35H
		WORD	04D05H,04D15H,04D25H,04D35H
		WORD	04D04H,04D14H,04D24H,04D34H
;
;
;// 03.06.17 //MONOD1		EQU	$		; 2x3sekizou
;// 03.06.17 //		WORD	00D4DH,00D5DH,00D6DH
;// 03.06.17 //		WORD	04D4DH,04D5DH,04D6DH
;
;
MBLOKD		EQU	$		; move block
		WORD	00922H,00932H
		WORD	00923H,00933H
;
MBLKD0		EQU	$		; mochiage block-0
		WORD	00DE5H,00DF5H
		WORD	04DE5H,04DF5H
;
MBLKD1		EQU	$		; mochiage block-1
		WORD	00DE3H,00DF3H,00DE4H,00DF4H
		WORD	04DE4H,04DF4H,04DE3H,04DF3H
		WORD	08DF3H,08DE3H,08DF4H,08DE4H
		WORD	0CDF4H,0CDE4H,0CDF3H,0CDE3H
;
MBLKD2		EQU	$		; mochiage block-2 (tubo)
		WORD	00D28H,00D38H
		WORD	04D28H,04D38H
;
MBLKD3		EQU	$		; mochiage block-3
		WORD	00D2AH,00D3AH
		WORD	00D2BH,00D3BH
;
MBLKD4		EQU	$		; mochiage block-4 (ura-tubo)
		WORD	00D01H,00D1CH
		WORD	04D01H,04D1CH
;
;
;
OFSWHD		EQU	$		; off swich  (yuka [A] <-->[B])
		WORD	00DEEH,08DEEH
		WORD	04DEEH,0CDEEH
ONSWHD		EQU	$		; on  swich
		WORD	00DEDH,08DEDH
		WORD	04DEDH,0CDEDH
;
;
OFSWH1		EQU	$		; off swich (hitsukomu-swich)
		WORD	00CD2H,00CEBH
		WORD	00CD3H,00CFBH
ONSWH1		EQU	$		; on  swich
		WORD	00CEEH,00CFEH
		WORD	00CEFH,00CFFH
;
;;;;;;;;OFSWH2		EQU	$		; off swich
;;;;;;;;		WORD	00D0BH,00D1BH
;;;;;;;;		WORD	04D0BH,04D1BH
;;;;;;;;ONSWH2		EQU	$		; on  swich
;;;;;;;;		WORD	00D0BH,00D1BH
;;;;;;;;		WORD	04D0BH,04D1BH
;
DMSWHD		EQU	$		; dammy swich
		WORD	00CD4H,00CD6H
		WORD	00CD5H,00CD7H
;
;
SMLDID		EQU	$		; small dai
		WORD	00DE0H,00DF0H
		WORD	04DE0H,04DF0H
FIREDT		EQU	$		; lamp fire
		WORD	00DC0H,00DC1H
		WORD	04DC0H,04DC1H
;
;
TARUDT		EQU	$		; taru
		WORD	0094DH,0095DH,0096DH
		WORD	0494DH,0495DH,0496DH
;
;
OYKBGD		EQU	$		; open yuka BG. data
;// 03.06.20 //		WORD	001DDH,001DDH,001DDH,001DDH
OPNYKD		EQU	$		; open yuka
;// 03.06.20 //		WORD	00B07H,00B19H,00B09H,00B18H
;// 03.06.20 //		WORD	00B07H,00B17H,00B17H,00B18H
;// 03.06.20 //		WORD	00B07H,00B09H,00B19H,00B18H
;// 03.06.20 //		WORD	00B06H,00B16H,00B16H,00B08H
;
;
TABLED		EQU	$		; table
		WORD	01587H,01589H,01599H
		WORD	01588H,0158AH,0159AH
		WORD	05588H,0558AH,0559AH
		WORD	05587H,05589H,05599H
;
;
BEDDAT		EQU	$		; bed
		WORD	0158CH,0158DH,0558DH,0558CH
		WORD	0159CH,0159DH,0559DH,0559CH
		WORD	0159CH,0159DH,0559DH,0559CH
		WORD	0159CH,0159DH,0559DH,0559CH
		WORD	0158BH,0159BH,0559BH,0558BH
;
;
KCHIRD		EQU	$		; king chair
		WORD	0154AH,0155AH,0156AH,0157AH
		WORD	0154BH,0155BH,0156BH,0157BH
		WORD	0554BH,0555BH,0556BH,0557BH
		WORD	0554AH,0555AH,0556AH,0557AH
;
;
QCHIRD		EQU	$		; queen chair
		WORD	01525H,01563H,01553H,01555H
		WORD	01526H,01564H,01554H,01556H
		WORD	05526H,05564H,05554H,05556H
		WORD	05525H,05563H,05553H,05555H
;
;
BCHIRD		EQU	$		; big chair
		WORD	0151DH,0151EH,0151FH
		WORD	0551DH,0551EH,0551FH
;
;
SCHIRD		EQU	$		; small chair
		WORD	01548H,01549H
		WORD	05548H,05549H
;
;
DANROD		EQU	$		; danro
		WORD	0094AH,0095AH,0096AH,0097AH
		WORD	0094BH,0095BH,0096BH,0097BH
		WORD	0494BH,0495BH,0496BH,0497BH
		WORD	0494AH,0495AH,0496AH,0497AH
;
;
KZRIPD		EQU	$		; kazari picture
		WORD	00968H,00969H,04969H,04968H
		WORD	00958H,00959H,04959H,04958H
;
;
KZRISD		EQU	$		; kazari sword
;// 03.06.20 //		WORD	008E8H,008F8H
;// 03.06.20 //		WORD	008E9H,008F9H
;
;
KZRIBD		EQU	$		; kazari bed
;// 03.06.20 //		WORD	008CBH,01135H,01127H
;// 03.06.20 //		WORD	008CCH,01136H,011EFH
;// 03.06.20 //		WORD	008CCH,011EFH,011EFH
;// 03.06.20 //		WORD	048CCH,051EFH,051EFH
;// 03.06.20 //		WORD	048CCH,05136H,051EFH
;// 03.06.20 //		WORD	048CBH,05135H,05127H
;
;
;
SARADT		EQU	$
		WORD	01588H,0156CH,0556CH,05588H
		WORD	0157DH,0157CH,0557CH,0557DH
;
;
TMIZUD		EQU	$
		WORD	011A0H,011A1H,051A0H
;
		WORD	011A2H,011A3H,051A2H
;
		WORD	01194H,01195H,05194H
;
;
BOOKTD		EQU	$
		WORD	0094EH,0095EH,0096EH,009AEH
		WORD	0094FH,0095FH,0096FH,009AFH
		WORD	0094FH,0095FH,0096FH,009AFH
		WORD	0094FH,0095FH,0496FH,009AFH
		WORD	0094FH,0095FH,0096FH,009AFH
		WORD	0494EH,0495EH,0496EH,049AEH
;
;
KONROD		EQU	$
		WORD	08D84H,00D84H,00976H
		WORD	08D85H,00D85H,00977H
		WORD	00D86H,00D96H,00977H
		WORD	04D86H,04D96H,04977H
		WORD	0CD85H,04D85H,04977H
		WORD	0CD84H,04D84H,04976H
;
;
MUSIKD		EQU	$
		WORD	00978H,00979H
		WORD	04978H,04979H
;
;
BOTLDT		EQU	$
		WORD	00D92H,00DAAH
		WORD	00D92H,00DAAH
;
;
ICEAT2		EQU	$
		WORD	00942H,00982H,00992H
		WORD	00943H,00983H,00993H
		WORD	04943H,04983H,04993H
		WORD	04942H,04982H,04992H
;
;
;
HONEYK		EQU	$
		WORD	00CEEH,018D8H,00CEEH,00CFEH
		WORD	018C8H,018D9H,058D9H,00CFFH
		WORD	018C9H,00CFEH,00CEEH,018D9H
		WORD	00CEFH,058D9H,058D8H,00CFFH
;
;
;
NUMAYK		EQU	$
		WORD	01197H,01198H,01197H,01198H
		WORD	01187H,01188H,01187H,01188H
;
;
;
;
YKMRK0		EQU	$		; mark-yuka (up)
		WORD	01D76H,01D77H
		WORD	05D76H,05D77H
;
YKMRK1		EQU	$		; mark-yuka (down)
		WORD	09D77H,09D76H
		WORD	0DD77H,0DD76H
;
YKMRK2		EQU	$		; mark-yuka (left)
		WORD	05D79H,0DD79H
		WORD	05D78H,0DD78H
;
;
;
;
;************************************************************************
;*		Step data						*
;************************************************************************
UPSTEP		EQU	$		; up step
		WORD	0084CH,0085DH,0086DH,0087DH
		WORD	0084FH,0085EH,0086EH,0087EH
		WORD	0484FH,0485EH,0486EH,0487EH
		WORD	0484CH,0485DH,0486DH,0487DH
;
DNSTEP		EQU	$		; down step
KDNSTP		EQU	$		; kakushi down step
		WORD	00864H,00866H,00866H,009F8H
		WORD	0085FH,0086FH,0087FH,009F9H
		WORD	0485FH,0486FH,0487FH,049F9H
		WORD	04864H,04866H,04866H,049F8H
;
;// 03.07.10 //KDNSTP		EQU	$		; kakushi down step
;// 03.07.10 //		WORD	008E4H,008E4H,008E4H,088E5H
;// 03.07.10 //		WORD	0085FH,0086FH,0087FH,008E6H
;// 03.07.10 //		WORD	0485FH,0486FH,0487FH,048E6H
;// 03.07.10 //		WORD	048E4H,048E4H,048E4H,0C8E5H
;
;
UDSTEP		EQU	$		; up,down step
		WORD	0084DH,0085DH,0086DH,0087DH
		WORD	0084EH,0085EH,0086EH,0087EH
		WORD	0484EH,0485EH,0486EH,0487EH
		WORD	0484DH,0485DH,0486DH,0487DH
;
UDSTP1		EQU	$		; up,down step
		WORD	0887DH,0886DH,0885DH,0884DH
		WORD	0887EH,0886EH,0885EH,0884EH
		WORD	0C87EH,0C86EH,0C85EH,0C84EH
		WORD	0C87DH,0C86DH,0C85DH,0C84DH
;
;
WRSSTP		EQU	$		; water-side step
;// 03.08.06 //		WORD	00982H,00983H,04983H,04982H
;// 03.08.06 //		WORD	00992H,00993H,04993H,04992H
;// 03.08.06 //;
TBRST0		EQU	$		; tobiori step(up)
		WORD	00982H,00983H,04983H,04982H
		WORD	00992H,00993H,04993H,04992H
;
TBRST1		EQU	$		; tobiori step(down)
		WORD	008C9H,008F4H,048F4H,048C9H
		WORD	008CAH,008F5H,048F5H,048CAH
;
TBRST2		EQU	$		; tobiori step(left)
		WORD	00841H,00845H,08845H,08841H
		WORD	00842H,00855H,08845H,08842H
;
TBRST3		EQU	$		; tobiori step(right)
		WORD	04842H,04855H,0C855H,0C842H
		WORD	04841H,04845H,0C845H,0C841H
;
;
USTEPD		EQU	$		; U-up step : RASEN
		WORD	028B8H,02808H,00818H
		WORD	0289DH,0082EH,0083EH
		WORD	0689DH,0082FH,0083FH
		WORD	068B8H,06808H,04818H
;
DSTEPD		EQU	$		; U-down step
		WORD	028B8H,02808H,00818H
		WORD	028B9H,009EFH,00819H
		WORD	068B9H,009EFH,0081AH
		WORD	068B8H,06808H,04818H
;
;
USTEP1		EQU	$		; D-up step : RASEN
		WORD	028B5H,02808H,0080DH
		WORD	028B7H,0082EH,0083EH
		WORD	068B7H,0082FH,0083FH
		WORD	068B5H,06808H,0480DH
;
DSTEP1		EQU	$		; D-down step : RASEN
		WORD	028B5H,02808H,0080DH
		WORD	028B6H,009EFH,00819H
		WORD	068B6H,009EFH,0081AH
		WORD	068B5H,06808H,0480DH
;
;// 03.05.09 //USTEPD		EQU	$		; U-up step : RASEN
;// 03.05.09 //		WORD	028B8H,02808H,00818H,04CACH
;// 03.05.09 //		WORD	0289DH,0082EH,0083EH,00CACH
;// 03.05.09 //		WORD	0689DH,0082FH,0083FH,04CACH
;// 03.05.09 //		WORD	068B8H,06808H,04818H,00CACH
;// 03.05.09 //;
;// 03.05.09 //DSTEPD		EQU	$		; U-down step
;// 03.05.09 //		WORD	028B8H,02808H,00818H,04CACH
;// 03.05.09 //		WORD	028B9H,009EFH,00819H,00CACH
;// 03.05.09 //		WORD	068B9H,009EFH,0081AH,04CACH
;// 03.05.09 //		WORD	068B8H,06808H,04818H,00CACH
;// 03.05.09 //;
;// 03.05.09 //;
;// 03.05.09 //USTEP1		EQU	$		; D-up step : RASEN
;// 03.05.09 //		WORD	028B5H,02808H,0080DH,050ACH
;// 03.05.09 //		WORD	028B7H,0082EH,0083EH,010ACH
;// 03.05.09 //		WORD	068B7H,0082FH,0083FH,050ACH
;// 03.05.09 //		WORD	068B5H,06808H,0480DH,010ACH
;// 03.05.09 //;
;// 03.05.09 //DSTEP1		EQU	$		; D-down step : RASEN
;// 03.05.09 //		WORD	028B5H,02808H,0080DH,050ACH
;// 03.05.09 //		WORD	028B6H,009EFH,00819H,010ACH
;// 03.05.09 //		WORD	068B6H,009EFH,0081AH,050ACH
;// 03.05.09 //		WORD	068B5H,06808H,0480DH,010ACH
;
;
SLSTP0		EQU	$		; scroll-step (U-ue : up)
		WORD	028B8H,00808H,00818H,04CACH
		WORD	0289DH,00807H,00817H,00CACH
		WORD	0689DH,04807H,04817H,04CACH
		WORD	068B8H,04808H,04818H,00CACH
;
SLSTP1		EQU	$		; scroll-step (U-ue : down)
		WORD	028B8H,02808H,00818H,04CACH
		WORD	028B9H,009EFH,00816H,00CACH
		WORD	068B9H,009EFH,04816H,04CACH
		WORD	068B8H,06808H,04818H,00CACH
;
SLSTP2		EQU	$		; scroll-step (U-sita : up)
		WORD	08CACH,08818H,08808H,0A8B8H
		WORD	0CCACH,08817H,08807H,0A89DH
		WORD	08CACH,0C817H,0C807H,0E89DH
		WORD	0CCACH,0C818H,0C808H,0E8B8H
;
SLSTP3		EQU	$		; scroll-step (U-sita : down)
		WORD	08CACH,0880DH,08808H,0A8B8H
		WORD	0CCACH,08816H,089EFH,0A8B9H
		WORD	08CACH,0C816H,0C9EFH,0E8B9H
		WORD	0CCACH,0C80DH,0C808H,0E8B8H
;
SLSTP4		EQU	$		; scroll-step (D-ue : up)
		WORD	028B5H,00808H,0080DH,050ACH
		WORD	028B7H,00807H,00817H,010ACH
		WORD	068B7H,04807H,04817H,050ACH
		WORD	068B5H,04808H,0480DH,010ACH
;
SLSTP5		EQU	$		; scroll-step (D-ue : down)
		WORD	028B5H,00818H,0080DH,050ACH
		WORD	028B6H,009EFH,00816H,010ACH
		WORD	068B6H,009EFH,04816H,050ACH
		WORD	068B7H,04810H,0480DH,010ACH
;
SLSTP6		EQU	$		; scroll-step (D-sita : up)
		WORD	090ACH,0880DH,08808H,0A8B5H
		WORD	0D0ACH,08817H,08807H,0A8B7H
		WORD	090ACH,0C817H,0C807H,0E8B7H
		WORD	0D0ACH,0C80DH,0C808H,0E8B5H
;
SLSTP7		EQU	$		; scroll-step (D-sita : down
		WORD	090ACH,0880DH,08808H,0A8B5H
		WORD	0D0ACH,08816H,089EFH,0A8B6H
		WORD	090ACH,0C816H,0C9EFH,0E8B6H
		WORD	0D0ACH,0C80DH,0C808H,0E8B5H
;
;
;
;
;************************************************************************
;*		Water gate data						*
;************************************************************************
WGATED		EQU	$
		WORD	00984H,009A7H,00843H,00853H
		WORD	00984H,009A4H,009A8H,00854H
		WORD	00984H,00994H,009A4H,009A8H
		WORD	00985H,00995H,009A5H,009A9H
		WORD	00986H,00996H,009A6H,0099CH
		WORD	04986H,04996H,049A6H,0499CH
		WORD	04985H,04995H,049A5H,049A9H
		WORD	04984H,04994H,049A4H,049A8H
		WORD	04984H,049A4H,049A8H,04854H
		WORD	04984H,049A7H,04843H,04853H
;
;
WGATOP0		EQU	$
		WORD	00984H,009A7H,00843H,00853H
		WORD	00984H,00994H,009A8H,00854H
		WORD	00985H,00995H,009A5H,009A8H
		WORD	00986H,00996H,009A6H,0099CH
		WORD	018CBH,018DBH,018CBH,018DBH
		WORD	018CAH,018DAH,018CAH,018DAH
		WORD	04986H,04996H,049A6H,0499CH
		WORD	04985H,04995H,049A5H,049A8H
		WORD	04984H,04994H,049A8H,04854H
		WORD	04984H,049A7H,04843H,04853H
;
WGATOP1		EQU	$
		WORD	00984H,009A7H,00843H,00853H
		WORD	00985H,00995H,009A8H,00854H
		WORD	00986H,00996H,009A6H,009A8H
		WORD	018CAH,018DAH,018CAH,018DAH
		WORD	018CBH,018DBH,018CBH,018DBH
		WORD	018CAH,018DAH,018CAH,018DAH
		WORD	018CBH,018DBH,018CBH,018DBH
		WORD	04986H,04996H,049A6H,049A8H
		WORD	04985H,04995H,049A8H,04854H
		WORD	04984H,049A7H,04843H,04853H
;
WGATOP2		EQU	$
		WORD	00985H,009A7H,00843H,00853H
		WORD	00986H,00996H,009A8H,00854H
		WORD	00871H,00871H,0098BH,0099BH
		WORD	018CAH,018DAH,018CAH,018DAH
		WORD	018CBH,018DBH,018CBH,018DBH
		WORD	018CAH,018DAH,018CAH,018DAH
		WORD	018CBH,018DBH,018CBH,018DBH
		WORD	04871H,04871H,0498BH,0499BH
		WORD	04986H,04996H,049A8H,04854H
		WORD	04985H,049A7H,04843H,04853H
;
WGATOP3		EQU	$
		WORD	00986H,009A7H,00843H,00853H
		WORD	00871H,0098BH,0099BH,00854H
		WORD	00871H,00871H,0098BH,0099BH
		WORD	018CAH,018DAH,018CAH,018DAH
		WORD	018CBH,018DBH,018CBH,018DBH
		WORD	018CAH,018DAH,018CAH,018DAH
		WORD	018CBH,018DBH,018CBH,018DBH
		WORD	04871H,04871H,0498BH,0499BH
		WORD	04871H,0498BH,0499BH,04854H
		WORD	04986H,049A7H,04843H,04853H
;
;
;
;************************************************************************
;*		Haisui kou data						*
;************************************************************************
HAISUI		EQU	$
		WORD	018CAH,018CBH,018CAH,018CBH
		WORD	018DAH,00974H,04974H,018DBH
		WORD	018CAH,08974H,0C974H,018CBH
		WORD	018DAH,018DBH,018DAH,018DBH
;
;
;
;************************************************************************
;*		Chapel wall kazari data					*
;************************************************************************
CWLKZD		EQU	$
;// 03.07.08 //		WORD	009A0H,009A3H,009A6H
;// 03.07.08 //		WORD	009A1H,015A4H,015A7H
;// 03.07.08 //		WORD	009A2H,015A5H,015A8H
;// 03.07.08 //		WORD	049A2H,055A5H,055A8H
;// 03.07.08 //		WORD	049A1H,055A4H,055A7H
;// 03.07.08 //		WORD	049A0H,049A3H,049A6H
		WORD	01D48H,01D58H,01568H,01542H,01562H,01552H
;
		WORD	01D49H,01D59H,01D69H,01D43H,01D63H,01D53H
;
		WORD	01D60H,01D70H,01D78H
		WORD	01D61H,01D71H,01D79H
		WORD	05D61H,05D71H,05D79H
		WORD	05D60H,05D70H,05D78H
;
;
;
;
;************************************************************************
;*		Baba lamp data						*
;************************************************************************
BBLMPD		EQU	$
;// 03.06.20 //		WORD	01524H,01536H,01526H
;// 03.06.20 //		WORD	01525H,01537H,01527H
;// 03.06.20 //		WORD	05525H,05537H,05527H
;// 03.06.20 //		WORD	05524H,05536H,05526H
;
;
;
;************************************************************************
;*		Rou-ya data						*
;************************************************************************
ROUYAD		EQU	$
		WORD	0298DH,0298EH
		WORD	       0299EH
		WORD	0298FH,0299FH
		WORD	       0299DH
;
ROUKYD		EQU	$
		WORD	009A2H,009A3H
		WORD	049A2H,049A3H
;
;
;
;************************************************************************
;*		Takara-box data						*
;************************************************************************
TKBOX0		EQU	$		; close
		WORD	019E1H,019F1H
		WORD	059E1H,059F1H
;
TKBOX1		EQU	$		; open
		WORD	019E2H,019F2H
		WORD	059E2H,059F2H
;
;
TKBOX2		EQU	$		; BIG : close
		WORD	01920H,01930H,01926H
		WORD	01921H,01931H,01927H
		WORD	05921H,05931H,05927H
		WORD	05920H,05930H,05926H
;
TKBOX3		EQU	$		; BIG : open
		WORD	01906H,01916H,01926H
		WORD	01907H,01917H,01927H
		WORD	05907H,05917H,05927H
		WORD	05906H,05916H,05926H
;
;
;
;************************************************************************
;*		Testuball hole data					*
;************************************************************************
TTHLD0		EQU	$		; hole up
		WORD	02980H,00990H,009A0H
		WORD	02981H,00991H,009A1H
		WORD	02981H,00991H,009A1H
		WORD	06981H,04991H,049A1H
		WORD	06981H,04991H,049A1H
		WORD	06980H,04990H,049A1H
;
TTHLD1		EQU	$		; hole down
		WORD	089A0H,08990H,0A980H
		WORD	089A1H,08991H,0A981H
		WORD	089A1H,08991H,0A981H
		WORD	0C9A1H,0C991H,0E981H
		WORD	0C9A1H,0C991H,0E981H
		WORD	0C9A0H,0C990H,0E980H
;
TTHLD2		EQU	$		; hole left
		WORD	02982H,00983H,009A2H
		WORD	02992H,00993H,009A3H
		WORD	02992H,00993H,009A3H
		WORD	0A992H,08993H,089A3H
		WORD	0A992H,08993H,089A3H
		WORD	0A982H,08983H,089A2H
;
TTHLD3		EQU	$		; hole right
		WORD	049A2H,04983H,06982H
		WORD	049A3H,04993H,06992H
		WORD	049A3H,04993H,06992H
		WORD	0C9A3H,0C993H,0E992H
		WORD	0C9A3H,0C993H,0E992H
		WORD	0C9A2H,0C983H,0E982H
;
;
TTHLD4		EQU	$		; Down hole up
		WORD	02984H,00990H,009A0H
		WORD	02994H,00991H,009A1H
		WORD	02994H,00991H,009A1H
		WORD	06994H,04991H,049A1H
		WORD	06994H,04991H,049A1H
		WORD	06984H,04990H,049A0H
;
TTHLD5		EQU	$		; Down hole down
		WORD	089A0H,08990H,0A984H
		WORD	089A1H,08991H,0A994H
		WORD	089A1H,08991H,0A994H
		WORD	0C9A1H,0C991H,0E994H
		WORD	0C9A1H,0C991H,0E994H
		WORD	0C9A0H,0C990H,0E984H
;
;
TTHLD6		EQU	$		; matoate-hole left
		WORD	0288AH,0288BH,0288BH
		WORD	00809H,009EFH,009EFH
		WORD	0080AH,00879H,00879H
		WORD	0288AH,0A88BH,0A88BH
		WORD	009EFH,089EFH,08809H
		WORD	00879H,08879H,0880AH
;
TTHLD7		EQU	$		; matoate-hole right
		WORD	0480AH,04879H,04879H
		WORD	04809H,049EFH,049EFH
		WORD	0688AH,0688BH,0688BH
		WORD	04879H,0C879H,0C80AH
		WORD	049EFH,0C9EFH,0C809H
		WORD	0688BH,0E88BH,0E88AH
;
;
;
;************************************************************************
;*		Dammy enter data					*
;************************************************************************
ENTRD0		EQU	$		; enter down
		WORD	0880DH,08808H,0A82CH
		WORD	08878H,009EFH,0A82DH
		WORD	0C878H,009EFH,0E82DH
		WORD	0C80DH,0C808H,0E82CH
;
;
;
;************************************************************************
;*		Testu-bou data						*
;************************************************************************
TTBOD0		EQU	$		; tate
;// 03.07.04 //		WORD	       09539H,0D539H
;// 03.07.04 //		WORD	01529H,01501H,05501H,05529H
;// 03.07.04 //		WORD	       01539H,05539H
;
TTBOD1		EQU	$		; yoko
;// 03.07.04 //		WORD	       01529H,01529H
;// 03.07.04 //		WORD	09529H,01501H,01501H,01539H
;// 03.07.04 //		WORD	       05539H,05539H
;
;
TTBOG0		EQU	$		; up
;// 03.07.04 //		WORD	00948H,00968H,00958H
;// 03.07.04 //		WORD	009EFH,009EFH,00878H
;// 03.07.04 //		WORD	04948H,04968H,04958H
;
TTBOG1		EQU	$		; down
;// 03.07.04 //		WORD	08958H,08968H,08948H
;// 03.07.04 //		WORD	08978H,089EFH,088EFH
;// 03.07.04 //		WORD	0C958H,0C968H,0C948H
;
TTBOG2		EQU	$		; left
;// 03.07.04 //		WORD	00949H,00969H,00959H
;// 03.07.04 //		WORD	009EFH,009EFH,00879H
;// 03.07.04 //		WORD	08949H,08969H,08959H
;
TTBOG3		EQU	$		; right
;// 03.07.04 //		WORD	04959H,04969H,04949H
;// 03.07.04 //		WORD	04979H,049EFH,048EFH
;// 03.07.04 //		WORD	0C959H,0C969H,0C949H
;
;
;
;
;========================================================================
;
;************************************************************************
;*		Tap data						*
;************************************************************************
TAPDT0		EQU	$
		WORD	00980H,00981H,04981H,04980H
		WORD	00990H,00991H,04991H,04990H
		WORD	009A0H,009A1H,049A1H,049A0H
;
TAPDT1		EQU	$
		WORD	00980H,00981H,04981H,04980H
		WORD	00990H,00991H,04991H,04990H
		WORD	009A0H,01DB2H,01DB2H,049A0H
		WORD	01DB3H,01DB3H,01DB3H,01DB3H
		WORD	01DB5H,01DB5H,01DB5H,01DB5H
;
TAPDT2		EQU	$
		WORD	02980H,02981H,06981H,06980H
		WORD	02990H,02991H,06991H,06990H
		WORD	029A0H,03DB2H,03DB2H,069A0H
		WORD	03DB3H,03DB3H,03DB3H,03DB3H
		WORD	03DB3H,03DB3H,03DB3H,03DB3H
		WORD	01DB3H,01DB3H,01DB3H,01DB3H
		WORD	01DB5H,01DB5H,01DB5H,01DB5H
;
TAPDT3		EQU	$
		WORD	009A0H,01DB2H,05DB2H,049A0H
		WORD	01DB3H,01DB3H,01DB3H,01DB3H
		WORD	01DB3H,01DB3H,01DB3H,01DB3H
		WORD	01DB5H,01DB5H,01DB5H,01DB5H
		WORD	018CAH,018CBH,018CAH,018CBH
;
TAPDT4		EQU	$
		WORD	009A0H,01DB2H,05DB2H,049A0H
		WORD	01DB3H,01DB3H,01DB3H,01DB3H
		WORD	01DB5H,01DB5H,01DB5H,01DB5H
		WORD	00870H,00870H,00870H,00870H
		WORD	018CAH,018CBH,018CAH,018CBH
;
;
;
;************************************************************************
;*		Kantera data						*
;************************************************************************
KNTRDT0		EQU	$
		WORD	nulldt,0853EH,0853FH,0853DH,0853DH,0853DH,0C53DH,0C53DH,0C53DH,0C53FH,0C53EH,nulldt
		WORD	0052AH,0853DH,0853DH,0853DH,0853DH,0853DH,0C53DH,0C53DH,0C53DH,0C53DH,0C53DH,0452AH
		WORD	005E8H,0853DH,0853DH,0852EH,0852FH,0852DH,0C52DH,0C52FH,0C52EH,0C53DH,0C53DH,045E8H
		WORD	005E7H,0853DH,0052BH,0852DH,0852DH,0852DH,0C52DH,0C52DH,0C52DH,0452BH,0C53DH,045E7H
		WORD	005E7H,0853DH,0053BH,0852DH,0852DH,0852DH,0C52DH,0C52DH,0C52DH,0453BH,0C53DH,045E7H
		WORD	085E8H,0853DH,0853BH,0852DH,0852DH,0852DH,0C52DH,0C52DH,0C52DH,0C53BH,0C53DH,0C5E8H
		WORD	0852AH,0853DH,0852BH,0852DH,0852DH,0852DH,0C52DH,0C52DH,0C52DH,0C52BH,0C53DH,0C52AH
		WORD	nulldt,0853AH,0853DH,0853BH,0852DH,0852DH,0C52DH,0C52DH,0C53BH,0C53DH,0C53AH,nulldt
		WORD	nulldt,0852AH,0853DH,0852BH,0852DH,0852DH,0C52DH,0C52DH,0C52BH,0C53DH,0C52AH,nulldt
		WORD	nulldt,nulldt,0853AH,0853DH,0052EH,0052FH,0452FH,0452EH,0C53DH,0C53AH,nulldt,nulldt
		WORD	nulldt,nulldt,0852AH,0853DH,0853DH,0853DH,0C53DH,0C53DH,0C53DH,0C52AH,nulldt,nulldt
		WORD	nulldt,nulldt,nulldt,0053EH,0053FH,0853DH,0C53DH,0453FH,0453EH ;// 03.08.21 //,nulldt,nulldt,nulldt
;
KNTRDT1		EQU	$
		WORD	nulldt,nulldt,nulldt,0853EH,0853FH,0053DH,0453DH,0C53FH,0C53EH,nulldt,nulldt,nulldt
		WORD	nulldt,nulldt,0052AH,0053DH,0053DH,0053DH,0453DH,0453DH,0453DH,0452AH,nulldt,nulldt
		WORD	nulldt,nulldt,0053AH,0053DH,0852EH,0852FH,0C52FH,0C52EH,0453DH,0453AH,nulldt,nulldt
		WORD	nulldt,0052AH,0053DH,0052BH,0052DH,0052DH,0452DH,0452DH,0452BH,0453DH,0452AH,nulldt
		WORD	nulldt,0053AH,0053DH,0053BH,0052DH,0052DH,0452DH,0452DH,0453BH,0453DH,0453AH,nulldt
		WORD	0052AH,0053DH,0052BH,0052DH,0052DH,0052DH,0452DH,0452DH,0452DH,0452BH,0453DH,0452AH
		WORD	005E8H,0053DH,0053BH,0052DH,0052DH,0052DH,0452DH,0452DH,0452DH,0453BH,0453DH,045E8H
		WORD	005E7H,0053DH,0853BH,0052DH,0052DH,0052DH,0452DH,0452DH,0452DH,0C53BH,0453DH,045E7H
		WORD	005E7H,0053DH,0852BH,0052DH,0052DH,0052DH,0452DH,0452DH,0452DH,0C52BH,0453DH,045E7H
		WORD	085E8H,0053DH,0053DH,0052EH,0052FH,0052DH,0452DH,0452FH,0452EH,0453DH,0453DH,0C5E8H
		WORD	0852AH,0053DH,0053DH,0053DH,0053DH,0053DH,0453DH,0453DH,0453DH,0453DH,0453DH,0C52AH
		WORD	nulldt,0053EH,0053FH,0053DH,0053DH,0053DH,0453DH,0453DH,0453DH,0453FH,0453EH ;// 03.08.21 //,nulldt
;
KNTRDT2		EQU	$
		WORD	nulldt,0853EH,0853FH,0053DH,0053DH,0C53FH,0C53EH,nulldt,nulldt,nulldt,nulldt,nulldt
		WORD	0052AH,0053DH,0053DH,0053DH,0053DH,0053DH,0053DH,0C53FH,0C53EH,nulldt,nulldt,nulldt
		WORD	0053AH,0053DH,0053DH,0852EH,0852FH,0C52FH,0C52EH,0053DH,0053DH,0C53FH,0C53EH,nulldt
		WORD	0053DH,0053DH,0052BH,0052DH,0052DH,0052DH,0852DH,0C52FH,0C52EH,0053DH,0053DH,0452AH
		WORD	0053DH,0053DH,0053BH,0052DH,0052DH,0052DH,0052DH,0052DH,0052DH,0452BH,0053DH,0453AH
		WORD	0053DH,0053DH,0052DH,0052DH,0052DH,0052DH,0052DH,0052DH,0052DH,0453BH,0053DH,0053DH
		WORD	0853DH,0853DH,0852DH,0852DH,0852DH,0852DH,0852DH,0852DH,0852DH,0C53BH,0853DH,0853DH
		WORD	0853DH,0853DH,0853BH,0852DH,0852DH,0852DH,0852DH,0852DH,0852DH,0C52BH,0853DH,0C53AH
		WORD	0853DH,0853DH,0852BH,0852DH,0852DH,0852DH,0852DH,0452FH,0452EH,0853DH,0853DH,0C52AH
		WORD	0853AH,0853DH,0853DH,0052EH,0052FH,0452FH,0452EH,0853DH,0853DH,0453FH,0453EH,nulldt
		WORD	0852AH,0853DH,0853DH,0853DH,0853DH,0853DH,0853DH,0453FH,0453EH,nulldt,nulldt,nulldt
		WORD	nulldt,0053EH,0053FH,0853DH,0853DH,0453FH,0453EH ;// 03.08.21 //,nulldt,nulldt,nulldt,nulldt,nulldt
;
KNTRDT3		EQU	$
		WORD	nulldt,nulldt,nulldt,nulldt,nulldt,0853EH,0853FH,0453DH,0453DH,0C53FH,0C53EH,nulldt
		WORD	nulldt,nulldt,nulldt,0853EH,0853FH,0453DH,0453DH,0453DH,0453DH,0453DH,0453DH,0452AH
		WORD	nulldt,0853EH,0853FH,0453DH,0453DH,0852EH,0852FH,0C52FH,0C52EH,0453DH,0453DH,0453AH
		WORD	0052AH,0453DH,0453DH,0852EH,0852FH,0452DH,0452DH,0452DH,0452DH,0452BH,0453DH,0453DH
		WORD	0053AH,0453DH,0052BH,0452DH,0452DH,0452DH,0452DH,0452DH,0452DH,0453BH,0453DH,0453DH
		WORD	0453DH,0453DH,0053BH,0452DH,0452DH,0452DH,0452DH,0452DH,0452DH,0452DH,0453DH,0453DH
		WORD	0C53DH,0C53DH,0853BH,0C52DH,0C52DH,0C52DH,0C52DH,0C52DH,0C52DH,0C52DH,0C53DH,0C53DH
		WORD	0853AH,0C53DH,0852BH,0C52DH,0C52DH,0C52DH,0C52DH,0C52DH,0C52DH,0C53BH,0C53DH,0C53DH
		WORD	0852AH,0C53DH,0C53DH,0052EH,0052FH,0C52DH,0C52DH,0C52DH,0C52DH,0C52BH,0C53DH,0C53DH
		WORD	nulldt,0053EH,0053FH,0C53DH,0C53DH,0052EH,0052FH,0452FH,0452EH,0C53DH,0C53DH,0C53AH
		WORD	nulldt,nulldt,nulldt,0053EH,0053FH,0C53DH,0C53DH,0C53DH,0C53DH,0C53DH,0C53DH,0C52AH
		WORD	nulldt,nulldt,nulldt,nulldt,nulldt,0053EH,0053FH,0C53DH,0C53DH,0453FH,0453EH,nulldt
;
;
;
;
;
;************************************************************************
;*		Shisai dai data						*
;************************************************************************
SSIDID		EQU	$
		WORD	0099DH,0098EH,0098EH,0098EH,0098EH,0098EH,0098EH,0098EH,0098EH,0098EH,0098EH,0098EH,0098EH,0099EH
		WORD	0099FH,018C6H,018C6H,018C6H,018C6H,018C6H,018C6H,018C6H,018C6H,018C6H,018C6H,018C6H,018C6H,0099FH
		WORD	0099FH,018C6H,018C6H,018C6H,018C6H,0118AH,0119AH,0118BH,0119BH,011A0H,018C6H,018C6H,018C6H,0099FH
		WORD	0099FH,018C6H,018C6H,018C6H,018C6H,01183H,01193H,01182H,01192H,011A1H,018C6H,018C6H,0498FH,0499EH
		WORD	0099FH,018C6H,018D4H,098D4H,018C6H,01189H,01187H,01197H,0118CH,011A2H,018C6H,018C6H,00972H,00972H
		WORD	0099FH,018D6H,018D5H,098D5H,098D6H,0119CH,01188H,01198H,0118DH,011A3H,018C6H,018C6H,00972H,00972H
;
;
;
;************************************************************************
;*		Shisai room data					*
;************************************************************************
SSRMD0		EQU	$
		WORD	00995H,01D99H,00994H,00CACH
		WORD	00995H,01D99H,00994H,00CACH
		WORD	00980H,00990H,00986H,009A6H
		WORD	04980H,04990H,04986H,049A6H
		WORD	00995H,01D99H,00994H,00CACH
		WORD	00995H,01D99H,00994H,00CACH
;
SSRMD1		EQU	$
		WORD	01DA7H,01DA8H,01DA4H,008F5H,00CD8H
;
SSRMD2		EQU	$
		WORD	00981H,00991H,00985H,009A5H
		WORD	08981H,08991H,08985H,089A5H
		WORD	00996H,01D99H,00984H,00CADH
		WORD	00996H,01D99H,00984H,00CADH
		WORD	00996H,01D99H,00984H,00CADH
		WORD	00996H,01D99H,00984H,00CADH
;
SSRMD3		EQU	$
		WORD	098D9H,0D8C7H,098C7H,0D8C7H,098C8H,014DBH
		WORD	014CAH,058C8H,018C7H,058C7H,018C7H,058D9H
;
SSRMD4		EQU	$
		WORD	058D9H,014CAH
		WORD	0D8C7H,098C8H
		WORD	058C7H,018C7H
		WORD	0D8C7H,098C7H
		WORD	058C8H,018C7H
		WORD	014DBH,098D9H
;
SSRMD5		EQU	$
		WORD	00CD8H,014CBH,0D8C8H,058C8H,014DBH
		WORD	014DAH,018D9H,098C7H,018C7H,098D9H
		WORD	0D8C8H,058C7H,0D8C7H,058C7H,0D8D9H
		WORD	098C8H,018C7H,098C7H,018C8H,014DAH
		WORD	014DBH,058D9H,0D8D9H,014CBH,014DBH
;
;
;
;
;************************************************************************
;*		Dokan data						*
;************************************************************************
DKAN00		EQU	$		; enter up
		WORD	095A6H,0958DH,0B597H
		WORD	095A7H,0959CH,0B598H
		WORD	0D5A7H,0D59CH,0F598H
		WORD	0D5A6H,0D58DH,0F597H
;
		WORD	0B587H,0B595H,095A0H
		WORD	0B588H,0B596H,09586H
		WORD	0F588H,0F596H,0D586H
		WORD	0F587H,0F595H,0D5A0H
;
DKAN01		EQU	$		;       down
		WORD	015A0H,03595H,03587H
		WORD	03586H,03596H,03588H
		WORD	07586H,07596H,07588H
		WORD	055A0H,07595H,07587H
;
		WORD	03597H,0158DH,015A6H
		WORD	03598H,0159CH,015A7H
		WORD	07598H,0559CH,055A7H
		WORD	07597H,0558DH,055A6H
;
DKAN02		EQU	$		;       left
		WORD	055A4H,055A5H,0D5A5H,0D5A4H
		WORD	0558CH,0559CH,0D59CH,0D58CH
		WORD	0758BH,0759BH,0F59BH,0F58BH
		WORD	0758AH,0759AH,0F59AH,0F58AH
		WORD	07589H,07599H,0F599H,0F589H
		WORD	055A1H,07585H,0F585H,0D5A1H
;
DKAN03		EQU	$		;       right
		WORD	015A1H,03585H,0B585H,095A1H
		WORD	03589H,03599H,0B599H,0B589H
		WORD	0358AH,0359AH,0B59AH,0B58AH
		WORD	0358BH,0359BH,0B59BH,0B58BH
		WORD	0158CH,0159CH,0959CH,0958CH
		WORD	015A4H,015A5H,095A5H,095A4H
;
;
DKAN10		EQU	$		; tate
		WORD	01590H,01590H
		WORD	05590H,05590H
;
DKAN11		EQU	$		; yoko
		WORD	01580H,09580H
		WORD	01580H,09580H
;
;
DKAN20		EQU	$		; coner left-up
		WORD	01581H,01590H
		WORD	01580H,01591H
;
DKAN21		EQU	$		;       left-down
		WORD	01590H,01592H
		WORD	01582H,09580H
;
DKAN22		EQU	$		;       right-up
		WORD	01580H,01593H
		WORD	01583H,05590H
;
DKAN23		EQU	$		;       right-down
		WORD	01584H,09580H
		WORD	05590H,01594H
;
;
DKAN30		EQU	$		; tsunagi up
		WORD	015A3H,01590H
		WORD	055A3H,05590H
;
DKAN31		EQU	$		;         down
		WORD	01590H,095A3H
		WORD	05590H,0D5A3H
;
DKAN32		EQU	$		;         left
		WORD	095A2H,015A2H
		WORD	01580H,09580H
;
DKAN33		EQU	$		;         right
		WORD	01580H,09580H
		WORD	0D5A2H,055A2H
;
;
DKAN40		EQU	$		; kousa
		WORD	0159DH,0959DH
		WORD	0559DH,0D59DH
;
;
;
;
;************************************************************************
;*		Rupy data						*
;************************************************************************
RUPYDT		EQU	$
		WORD	019C4H,019C5H
;
;
;
;
;************************************************************************
;*		Kabe ana data						*
;************************************************************************
KBANA0		EQU	$
		WORD	00980H,00990H
		WORD	00981H,00991H
;
KBANA1		EQU	$
		WORD	08990H,08980H
		WORD	08991H,08981H
;
;
;
;************************************************************************
;*		Seki-ban data						*
;************************************************************************
SKBAND		EQU	$
		WORD	00D29H,00D39H
		WORD	04D29H,04D39H
;
;
;
;************************************************************************
;*		Kui data						*
;************************************************************************
KUIDT0		EQU	$
		WORD	019CDH,019CEH
		WORD	059CDH,059CEH
;
;
;
;************************************************************************
;*		Boss ice data						*
;************************************************************************
BOSICE		EQU	$
		WORD	nulldt,01585H,01586H,01587H,01588H,01589H,01578H,05586H,05585H,nulldt
		WORD	01594H,01595H,01596H,01597H,01598H,01599H,01579H,05596H,05595H,05594H
		WORD	0158AH,0158BH,0158CH,0158DH,0158EH,0158FH,01572H,0558CH,0558BH,0558AH
		WORD	0159AH,0159BH,0159CH,0159DH,0159EH,0159FH,0559DH,0559CH,0559BH,0559AH
		WORD	015AAH,015ABH,015ACH,015ADH,015AEH,015AFH,055ADH,055ACH,055ABH,055AAH
		WORD	015A0H,015A1H,015A2H,015A3H,015A4H,015A5H,055A3H,055A2H,055A1H,055A0H
		WORD	015A7H,015A8H,0154EH,0156EH,01576H,01577H,0556EH,0554EH,055A8H,055A7H
		WORD	nulldt,015A9H,0155EH,0157EH,01574H,01575H,0557EH,0555EH,055A9H,nulldt
;
;
;
;************************************************************************
;*		Boss Kame data						*
;************************************************************************
BOSKME		EQU	$
		WORD	nulldt,031AAH,03161H,03162H,03163H,07163H,07162H,07161H,071AAH,nulldt
		WORD	nulldt,03170H,03171H,03172H,0317EH,0717EH,07172H,07171H,07170H,nulldt
		WORD	03144H,03145H,03146H,03147H,03148H,07148H,07147H,07146H,07145H,07144H
		WORD	03154H,03155H,03156H,03157H,03158H,07158H,07157H,07156H,07155H,07154H
		WORD	03164H,03165H,03166H,03167H,03168H,07168H,07167H,07166H,07165H,07164H
		WORD	03174H,03175H,03176H,03177H,03178H,07178H,07177H,07176H,07175H,07174H
		WORD	03149H,03159H,03169H,03179H,031AFH,071AFH,07179H,07169H,07159H,07149H
		WORD	031AAH,031ABH,031ACH,031ADH,031AEH,071AEH,071ADH,071ACH,071ABH,071AAH
;
;
;
;************************************************************************
;*		Danjyon warp yuka data					*
;************************************************************************
DJWPYK		EQU	$		; enter
		WORD	00DCFH,08DCFH
		WORD	04DCFH,0CDCFH
;
DJWPY1		EQU	$		; exit
		WORD	00D1FH,08D1FH
		WORD	04D1FH,0CD1FH
;
;
;
;************************************************************************
;*		Inori-yuka data						*
;************************************************************************
INRIYK		EQU	$
		WORD	00D01H,08D01H
		WORD	04D01H,0CD01H
;
;
;
;************************************************************************
;*		Change yuka data					*
;************************************************************************
CNGYK0		EQU	$
		WORD	019D0H,019D2H
		WORD	019D1H,019D3H
;
CNGYK1		EQU	$
		WORD	00DD4H,00DD6H
		WORD	00DD5H,00DD7H
;
;
;
;************************************************************************
;*		Kajiya data						*
;************************************************************************
KJTAND		EQU	$
		WORD	00993H,00D82H,00D84H
		WORD	00890H,00D83H,00D85H
		WORD	00890H,00D92H,00D86H
		WORD	00890H,04D92H,04D86H
		WORD	00890H,00D92H,00D86H
		WORD	00890H,04D92H,04D86H
		WORD	00890H,04D83H,04D85H
		WORD	04993H,04D82H,04D84H
;
KJRODT		EQU	$
		WORD	0094AH,0094BH,0094BH,0494BH,0494BH,0494AH
		WORD	0094EH,00978H,00979H,04979H,04978H,0494EH
		WORD	0094EH,0094FH,01DB3H,05DB3H,0494FH,0494EH
		WORD	0094EH,0094FH,01DB4H,05DB4H,0494FH,0494EH
		WORD	0094EH,0094FH,01DB4H,05DB4H,0494FH,0494EH
		WORD	0094EH,0094FH,09DB3H,0DDB3H,0494FH,0494EH
		WORD	0096AH,0095EH,0095FH,0495FH,0495EH,0496AH
		WORD	0097AH,0096EH,0096FH,0496FH,0496EH,0497AH
;
KJMIZD		EQU	$
		WORD	011A0H,011A2H,01194H
		WORD	011A1H,011A3H,01195H
		WORD	051A1H,051A3H,05195H
		WORD	011A1H,011A3H,01195H
		WORD	051A1H,051A3H,05195H
		WORD	051A0H,051A2H,05194H
;
KJDAID		EQU	$
		WORD	00DAAH,00DACH,00DAEH
		WORD	00DABH,00DADH,00DAFH
		WORD	04DABH,04DADH,04DAFH
		WORD	04DAAH,04DACH,04DAEH
;
;
;
;************************************************************************
;*		Uranai yakata data					*
;************************************************************************
URNIDT		EQU	$
		WORD	00D51H,00D66H
;
		WORD	01D64H,01D44H,01D54H
;
		WORD	01D64H,01D54H,009EFH
;
		WORD	00D55H,00D65H
;
;
		WORD	0156BH,0157BH,0158BH,01D40H
		WORD	019B2H,0157CH,0158CH,01D41H
		WORD	0156CH,0157DH,0158CH,05D41H
		WORD	014E4H,014E5H,0158DH,01D41H
;
;
;
;************************************************************************
;*		Polygon dai data					*
;************************************************************************
POLYDD		EQU	$
;// 03.07.16 //		WORD	01542H,01552H,01562H,01548H,01548H,01548H,01548H,01548H,01545H,01555H,01565H,01575H
;// 03.07.16 //		WORD	01543H,01553H,01563H,01549H,01549H,01549H,01549H,01549H,01546H,01556H,01566H,01576H
;// 03.07.16 //		WORD	01544H,01554H,01564H,01573H,01573H,01573H,01573H,01573H,01547H,01557H,01567H,01577H
;// 03.07.16 //		WORD	0154AH,01573H,01573H,01573H,01573H,01573H,01573H,01573H,01573H,01558H,01568H,01578H
;// 03.07.16 //		WORD	0154AH,01573H,01573H,01573H,01573H,01573H,01573H,01573H,01573H,01559H,01569H,01579H
;// 03.07.16 //		WORD	0154AH,01573H,01573H,01573H,01573H,01573H,01573H,01573H,01573H,01572H,01572H,01572H
;
;
;
;************************************************************************
;*		Chapel chair data					*
;************************************************************************
CPLISD		EQU	$
		WORD	01540H,01550H,01576H
		WORD	01541H,01551H,01577H
		WORD	05541H,05551H,05577H
		WORD	01541H,01551H,01577H
		WORD	05541H,05551H,05577H
		WORD	05540H,05550H,05576H
;
;
;
;************************************************************************
;*		Devil-dai data						*
;************************************************************************
DVLDID		EQU	$
		WORD	01180H,01190H,01190H,01190H,01191H,01186H,01196H
		WORD	01181H,05190H,05190H,05190H,05191H,05186H,05196H
		WORD	01182H,01192H,01184H,01194H,011A4H,011A4H,011A4H
		WORD	01183H,01193H,01185H,01195H,011A4H,011A4H,011A4H
		WORD	05183H,05193H,05185H,05195H,051A4H,051A4H,051A4H
		WORD	05182H,05192H,05184H,05194H,051A4H,051A4H,051A4H
		WORD	05181H,01190H,01190H,01190H,01191H,01186H,01196H
		WORD	05180H,05190H,05190H,05190H,05191H,05186H,05196H
;
;
;
;************************************************************************
;*		Slaime BG. data						*
;************************************************************************
SLMBSD		EQU	$
		WORD	01593H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,015A1H
		WORD	01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01582H,015A3H
		WORD	01580H,05583H,05593H,01580H,01580H,01580H,01582H,01592H,01580H,01583H,01596H
		WORD	01580H,055A1H,0D5A1H,01580H,01580H,01580H,01583H,01593H,01580H,01580H,055A1H
		WORD	01580H,05582H,05592H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,055A0H
		WORD	01580H,01580H,01580H,015B4H,015B3H,095B3H,095B4H,01580H,01580H,01580H,05591H
		WORD	01580H,01580H,015B6H,015B5H,01581H,01581H,095B5H,095B6H,01580H,01580H,05590H
		WORD	095A0H,015B7H,015B5H,01581H,01581H,01581H,01581H,095B5H,095B7H,01580H,055A1H
		WORD	095A1H,015B8H,01581H,01595H,015A5H,095A5H,09595H,09581H,095B8H,01580H,055A0H
		WORD	0D5A1H,015B9H,01585H,015A4H,015A4H,015A4H,015A4H,09585H,095B9H,01580H,05591H
		WORD	0D5A0H,015B2H,01586H,015A4H,015A4H,015A4H,015A4H,09586H,095B2H,01580H,05590H
		WORD	01580H,055B2H,05586H,015A4H,015A4H,015A4H,015A4H,0D586H,0D5B2H,01580H,01590H
		WORD	01580H,055B9H,05585H,015A4H,015A4H,015A4H,015A4H,0D585H,0D5B9H,01580H,01591H
		WORD	01580H,055B8H,05581H,05595H,055A5H,0D5A5H,0D595H,0D581H,0D5B8H,01580H,015A0H
		WORD	01580H,055B7H,055B5H,05581H,05581H,05581H,05581H,0D5B5H,0D5B7H,01582H,01596H
		WORD	01580H,01580H,055B6H,055B5H,05581H,05581H,0D5B5H,0D5B6H,01580H,01583H,01596H
		WORD	095A0H,01580H,01580H,055B4H,055B3H,0D5B3H,0D5B4H,01580H,01580H,01580H,01590H
		WORD	095A1H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01591H
		WORD	09590H,01580H,05583H,05593H,01580H,01582H,01592H,01580H,01580H,01580H,015A0H
		WORD	09591H,01580H,055A1H,0D5A1H,01580H,01583H,01593H,01580H,01580H,01580H,015A1H
		WORD	095A0H,01580H,05582H,05592H,01580H,01580H,01580H,01580H,01580H,01580H,01590H
		WORD	095A1H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01580H,01591H
;
SLMBS1		EQU	$
		WORD	00CEEH,0D594H,01584H
		WORD	015A3H,05594H,01594H
;
;
;
;************************************************************************
;*		Enemy yuka & block data					*
;************************************************************************
EMYYKD		EQU	$
		WORD	00D09H,00D19H
		WORD	04D09H,04D19H
;
EMYBLK		EQU	$
		WORD	00D0AH,00D1AH
		WORD	04D0AH,04D1AH
;
;
;
;************************************************************************
;*		4x4 Syougai-butsu data					*
;************************************************************************
MONOD2		EQU	$
		WORD	00D4AH,00D5AH,00D6AH,00D7AH
		WORD	00D4BH,00D5BH,00D6BH,00D7BH
		WORD	04D4BH,04D5BH,04D6BH,04D7BH
		WORD	04D4AH,04D5AH,04D6AH,04D7AH
;
;
;
;************************************************************************
;*		Kabe-Haisui data					*
;************************************************************************
HISUI0		EQU	$		; up
		WORD	00966H,00956H,01D48H
		WORD	00967H,00957H,01DBEH
		WORD	04967H,04957H,05DBEH
		WORD	04966H,04956H,05D48H
;
HISUI1		EQU	$		; down
		WORD	09D48H,08956H,08966H
		WORD	09DBEH,08957H,08967H
		WORD	0DDBEH,0C957H,0C967H
		WORD	0DD48H,0C956H,0C966H
;
HISUI2		EQU	$		; left
		WORD	00968H,00969H,08969H,08968H
		WORD	00958H,00959H,08959H,08958H
		WORD	01D49H,01DBFH,09DBFH,09D49H
;
HISUI3		EQU	$		; right
		WORD	05D49H,05DBFH,0DDBFH,0DD49H
		WORD	04958H,04959H,0C959H,0C958H
		WORD	04968H,04969H,0C969H,0C968H
;
;
;
;************************************************************************
;*		Window hikari data					*
;************************************************************************
HKRID0		EQU	$
		WORD	0113DH,0113DH,0113DH,0113DH
		WORD	0113DH,0113DH,0113DH,0113DH
		WORD	0113DH,0113DH,0113DH,0113DH
		WORD	0113DH,0113DH,0113DH,0113DH
;
HKRID1		EQU	$
		WORD	01164H,01164H,01164H,01174H
		WORD	01165H,01165H,01165H,01175H
		WORD	05165H,05165H,05165H,05175H
		WORD	05164H,05164H,05164H,05174H
;
;
HKRID2		EQU	$
		WORD	01144H,01154H,01154H,01154H	; left-up
		WORD	01176H,0112DH,0112DH,0112DH
		WORD	01145H,01155H,01155H,01155H
		WORD	01176H,0112DH,0112DH,0112DH
;
		WORD	05176H,0512DH,0512DH,0512DH	; right-up
		WORD	05145H,05155H,05155H,05155H
		WORD	05176H,0512DH,0512DH,0512DH
		WORD	05144H,05154H,05154H,05154H
;
		WORD	01154H,01154H,01154H,09144H	; left-down
		WORD	0112DH,0112DH,0112DH,09176H
		WORD	01155H,01155H,01155H,09145H
		WORD	0112DH,0112DH,0112DH,09176H
;
		WORD	0512DH,0512DH,0512DH,0D176H	; right-down
		WORD	05155H,05155H,05155H,0D145H
		WORD	0512DH,0512DH,0512DH,0D176H
		WORD	05154H,05154H,05154H,0D144H
;
;
;
;************************************************************************
;*		Boss enter data						*
;************************************************************************
BSENTR		EQU	$
		WORD	009E5H,009F5H,00936H,009FAH
		WORD	049E5H,009F7H,00937H,009FBH
		WORD	00000H,00000H,00000H,00CACH
		WORD	00000H,00000H,00000H,04CACH
;
		WORD	00000H,00000H,00000H,00CACH
		WORD	00000H,00000H,00000H,04CACH
		WORD	009E5H,049F7H,04937H,049FBH
		WORD	049E5H,049F5H,04936H,049FAH
;
		WORD	01414H,09414H,01414H,09414H
		WORD	05414H,0D414H,05414H,0D414H
		WORD	01414H,014E9H,014F9H,09414H
		WORD	05414H,014EAH,014FAH,0D414H
;
		WORD	01414H,054EAH,054FAH,09414H
		WORD	05414H,054E9H,054F9H,0D414H
		WORD	01414H,09414H,01414H,09414H
		WORD	05414H,0D414H,05414H,0D414H
;
;
;
;************************************************************************
;*		Ganon-room kazari data					*
;************************************************************************
GNNKZ0		EQU	$
		WORD	02984H,009ACH,00994H
		WORD	02985H,015ADH,01595H
		WORD	02986H,015AEH,01596H
		WORD	02987H,009AFH,00997H
		WORD	06987H,049AFH,04997H
		WORD	06986H,055AEH,05596H
		WORD	06985H,055ADH,05595H
		WORD	06984H,049ACH,04994H
;
GNNKZ1		EQU	$
		WORD	00980H,00990H,009A0H
		WORD	00981H,00991H,009A1H
		WORD	00982H,00992H,011A2H
		WORD	01183H,01193H,011A3H
		WORD	05183H,05193H,051A3H
		WORD	04982H,04992H,051A2H
		WORD	04981H,04991H,049A1H
		WORD	04980H,04990H,049A0H
;
GNNKZ2		EQU	$
		WORD	0490CH,0C90CH,0099AH,009AAH
		WORD	0090CH,0098BH,0099BH,009ABH
		WORD	0490CH,0498BH,0499BH,049ABH
		WORD	0090CH,0890CH,0499AH,049AAH
;
		WORD	0490CH,009A8H,009A6H,0C90CH
		WORD	0098AH,009A9H,009A7H,0890CH
		WORD	0498AH,049A9H,049A7H,0C90CH
		WORD	0090CH,049A8H,049A6H,0890CH
;
;
GNNKZ8		EQU	$
		WORD	009ACH,00994H,01D8CH,nulldt
		WORD	015ADH,01595H,01D9CH,nulldt
		WORD	015AEH,01596H,01D9CH,nulldt
		WORD	009AFH,00997H,01D9CH,nulldt
		WORD	049AFH,04997H,01D9CH,nulldt
		WORD	055AEH,05596H,01D9CH,nulldt
		WORD	055ADH,05595H,01D9CH,nulldt
		WORD	049ACH,04994H,05D8CH,nulldt
;
GNNKZ9		EQU	$
		WORD	009ACH,00994H,01D8CH,01D8CH
		WORD	015ADH,01595H,01D9CH,01D9CH
		WORD	015AEH,01596H,01D9CH,01D9CH
		WORD	01D88H,01D98H,01D9CH,01D9CH
		WORD	01D88H,01D98H,01D9CH,01D9CH
		WORD	055AEH,05596H,01D9CH,01D9CH
		WORD	055ADH,05595H,01D9CH,01D9CH
		WORD	049ACH,04994H,05D8CH,05D8CH
;
GNNKZA		EQU	$
		WORD	009ACH,00994H,01D8CH,01D8CH
		WORD	015ADH,01595H,01D9CH,01D9CH
		WORD	01D88H,01D98H,01D9CH,01D9CH
		WORD	01D88H,01D98H,01D89H,01D99H
		WORD	01D88H,01D98H,01D89H,01D99H
		WORD	01D88H,01D98H,01D9CH,01D9CH
		WORD	055ADH,05595H,01D9CH,01D9CH
		WORD	049ACH,04994H,05D8CH,05D8CH
;
GNNKZB		EQU	$
		WORD	009ACH,00994H,01D8CH,01D8CH
		WORD	01D8DH,01D98H,01D89H,01D99H
		WORD	01D88H,01D98H,01D89H,01D99H
		WORD	01D88H,01D98H,01D89H,01D99H
		WORD	01D88H,01D98H,01D89H,01D99H
		WORD	01D88H,01D98H,01D89H,01D99H
		WORD	05D8DH,01D98H,01D89H,01D99H
		WORD	049ACH,04994H,05D8CH,05D8CH
;
;
;
;
;========================================================================
;=======================  DOOR  =========================================
;========================================================================
;************************************************************************
;*		Danjyon Enter Door data					*
;************************************************************************
DJDORDT		EQU	$
		WORD	008D0H,008D0H,008D0H,008D0H,008D0H,048D0H,048D0H,048D0H,048D0H,048D0H
		WORD	008D0H,014C0H,014C0H,014C0H,014C0H,054C0H,054C0H,054C0H,054C0H,048D0H
		WORD	008D0H,014C0H,014C0H,014C0H,014D1H,054D1H,054C0H,054C0H,054C0H,048D0H
		WORD	008D0H,014C0H,014C0H,014C2H,014C3H,054C3H,054C2H,054C0H,054C0H,048D0H
		WORD	0097CH,0097DH,0097FH,014C4H,014C5H,054C5H,054C4H,0497FH,0497DH,0497CH
		WORD	0096CH,0096DH,0096FH,00908H,014E8H,054E8H,04908H,0496FH,0496DH,0496CH
		WORD	0095CH,0095DH,0095FH,00918H,014F8H,054F8H,04918H,0495FH,0495DH,0495CH
		WORD	0094CH,0094DH,0094FH,0A888H,0A889H,0E889H,0E888H,0494FH,0494DH,0494CH
;
;
;************************************************************************
;*		Doukutsu Enter Door data				*
;************************************************************************
DKDORDT		EQU	$
		WORD	014C8H,0097EH,0096EH,0295EH
		WORD	014D8H,014C9H,014D9H,0294EH
		WORD	054D8H,054C9H,054D9H,0694EH
		WORD	054C8H,0497EH,0496EH,0695EH
;
;
;************************************************************************
;*		Door data						*
;************************************************************************
UDRDT00		EQU	$		; up-door
		WORD	02888H,00808H,00818H
		WORD	02889H,009EFH,00878H
		WORD	06889H,009EFH,04878H
		WORD	06888H,04808H,04818H
UDRDT01		EQU	$		;         (under)
UDRDT02		EQU	$		;         (stop)
		WORD	0282CH,00808H,0080DH
		WORD	0282DH,009EFH,00878H
		WORD	0682DH,009EFH,04878H
		WORD	0682CH,04808H,0480DH
UDRDT03		EQU	$		;         (wall)
UDRDT04		EQU	$		;         (null)
UDRDT05		EQU	$		;
UDRDT06		EQU	$		;
UDRDT07		EQU	$		;
UDRDT08		EQU	$		;         (warp)
		WORD	02888H,00808H,00818H
		WORD	02889H,009EFH,00878H
		WORD	06889H,009EFH,04878H
		WORD	06888H,04808H,04818H
UDRDT09		EQU	$		;         (exit)
UDRDT0A		EQU	$		;         (danjyon)
UDRDT0B		EQU	$		;         (change)
UDRDT0C		EQU	$		;         (shutter)
		WORD	00882H,00824H,00834H
		WORD	00883H,00825H,00835H
		WORD	04883H,04825H,04835H
		WORD	04882H,04824H,04834H
UDRDT0D		EQU	$		;         (erase)
		WORD	00890H,00896H,008A2H
		WORD	00891H,00897H,008A3H
		WORD	00890H,00896H,008A2H
		WORD	00891H,00897H,008A3H
UDRDT0E		EQU	$		;         (key0)
		WORD	00882H,00800H,00810H
		WORD	00883H,00802H,00812H
		WORD	04883H,04802H,04812H
		WORD	04882H,04800H,04810H
UDRDT0F		EQU	$		;         (key1)
		WORD	00882H,00800H,00810H
		WORD	00883H,00801H,00811H
		WORD	04883H,04801H,04811H
		WORD	04882H,04800H,04810H
UDRDT10		EQU	$		;         (key2:Urasen-up)
UDRDT11		EQU	$		;         (key3:Urasen-down)
		WORD	00882H,00800H,00810H
		WORD	00883H,00802H,00812H
		WORD	04883H,04802H,04812H
		WORD	04882H,04800H,04810H
UDRDT12		EQU	$		;         (key4:Drasen-up)
UDRDT13		EQU	$		;         (key5:Drasen-down)
		WORD	008B0H,00800H,0080BH
		WORD	008B1H,00802H,00812H
		WORD	048B1H,04802H,04812H
		WORD	048B0H,04800H,0480BH
UDRDT14		EQU	$		;         (taiatari)
		WORD	00890H,008BAH,008A9H
		WORD	008B4H,0088CH,0088EH
		WORD	048B4H,0088DH,0088FH
		WORD	00891H,048BAH,048A9H
UDRDT15		EQU	$		;         ()
UDRDT16		EQU	$		;         (door)
		WORD	00882H,00800H,00810H
		WORD	00883H,00801H,00811H
		WORD	04883H,04801H,04811H
		WORD	04882H,04800H,04810H
UDRDT17		EQU	$		;         (bomb)
UDMBMB		EQU	$
		WORD	00890H,00896H,008A2H
		WORD	00891H,0088CH,0088EH
		WORD	00890H,0088DH,0088FH
		WORD	00891H,00897H,008A3H
UDRDT18		EQU	$		;         (crush wall)
UDRDT19		EQU	$		;         (certen)
UDRDT1A		EQU	$		;         (swich)
UDRDT1B		EQU	$		;         (shutter-normal)
		WORD	00882H,00824H,00834H
		WORD	00883H,00825H,00835H
		WORD	04883H,04825H,04835H
		WORD	04882H,04824H,04834H
UDRDT1C		EQU	$		;         (normal-shutter)
		WORD	02888H,00808H,00818H
		WORD	02889H,009EFH,00878H
		WORD	06889H,009EFH,04878H
		WORD	06888H,04808H,04818H
UDRDT1D		EQU	$		;
UDRDT1E		EQU	$		;
UDRDT1F		EQU	$		;
UDRDT20		EQU	$		;	  (under-normal)
		WORD	0282CH,00808H,0080DH
		WORD	0282DH,009EFH,00878H
		WORD	0682DH,009EFH,04878H
		WORD	0682CH,04808H,0480DH
UDRDT21		EQU	$		;	  (under-door)
		WORD	008B0H,00800H,0080BH
		WORD	008B1H,00801H,00811H
		WORD	048B1H,04801H,04811H
		WORD	048B0H,04800H,0480BH
UDRDT22		EQU	$		;         (under-shutter)
		WORD	008B0H,00824H,0080CH
		WORD	008B1H,00825H,00835H
		WORD	048B1H,04825H,04835H
		WORD	048B0H,04824H,0480CH
UDRDT23		EQU	$		;         (under-warp)
		WORD	0282CH,00808H,0080DH
		WORD	0282DH,009EFH,00878H
		WORD	0682DH,009EFH,04878H
		WORD	0682CH,04808H,0480DH
UDRDT24		EQU	$		;         (under-shutter-normal)
		WORD	008B0H,00824H,0080CH
		WORD	008B1H,00825H,00835H
		WORD	048B1H,04825H,04835H
		WORD	048B0H,04824H,0480CH
UDRDT25		EQU	$		;	  (under-normal-shutter)
		WORD	0282CH,00808H,0080DH
		WORD	0282DH,009EFH,00878H
		WORD	0682DH,009EFH,04878H
		WORD	0682CH,04808H,0480DH
UDRDT26		EQU	$		;
UDRDT27		EQU	$		;
UDRDT28		EQU	$		;         (shutter,key,door open)
		WORD	02882H,00808H,00818H
		WORD	02883H,009EFH,00878H
		WORD	06883H,009EFH,04878H
		WORD	06882H,04808H,04818H
UDRDT29		EQU	$		;         (bomb crash,taiatati crush)
		WORD	02886H,00877H,00875H
		WORD	02887H,009EFH,00859H
		WORD	06887H,009EFH,04859H
		WORD	06886H,04877H,04875H
UDRDT2A		EQU	$		;         (crush wall open)
		WORD	00872H,00872H,00872H,00873H,00874H,00875H
		WORD	00876H,00876H,00876H,00876H,00876H,00876H
;
		WORD	0085BH
;
		WORD	04876H,04876H,04876H,04876H,04876H,04876H
		WORD	04872H,04872H,04872H,04873H,04874H,04875H
UDRDT2B		EQU	$		;         (certen open)
		WORD	0296EH,0115EH,01178H,01158H
		WORD	0696EH,009EFH,00878H,01174H
		WORD	0296EH,049EFH,04878H,05174H
		WORD	0696EH,0515EH,05178H,05158H
UDRDT2C		EQU	$		;         (under-door,shutter open)
		WORD	028B0H,00808H,0080DH
		WORD	028B1H,009EFH,00878H
		WORD	068B1H,009EFH,04878H
		WORD	068B0H,04808H,0480DH
UDRDT2D		EQU	$		;
UDRDT2E		EQU	$		;
UDRDT2F		EQU	$		;
UDRDT30		EQU	$		; Urasen-up
		WORD	028B8H,02808H,00818H
		WORD	0289DH,0082EH,0083EH
		WORD	0689DH,0082FH,0083FH
		WORD	068B8H,06808H,04818H
UDRDT31		EQU	$		; Urasen-down
		WORD	028B8H,02808H,00818H
		WORD	028B9H,009EFH,00819H
		WORD	068B9H,009EFH,0081AH
		WORD	068B8H,06808H,04818H
UDRDT32		EQU	$		; Drasen-up
		WORD	028B5H,02808H,0080DH
		WORD	028B7H,0082EH,0083EH
		WORD	068B7H,0082FH,0083FH
		WORD	068B5H,06808H,0480DH
UDRDT33		EQU	$		; Drasen-down
		WORD	028B5H,02808H,0080DH
		WORD	028B6H,009EFH,00819H
		WORD	068B6H,009EFH,0081AH
		WORD	068B5H,06808H,0480DH
;
;
;
;
DDRDT00		EQU	$		; down-door
		WORD	08818H,08808H,0A888H
		WORD	08878H,009EFH,0A889H
		WORD	08878H,009EFH,0E889H
		WORD	0C818H,0C808H,0E888H
DDRDT01		EQU	$		;           (under)
DDRDT02		EQU	$		;           (stop)
		WORD	0880DH,08808H,0A82CH
		WORD	08878H,009EFH,0A82DH
		WORD	0C878H,009EFH,0E82DH
		WORD	0C80DH,0C808H,0E82CH
DDRDT03		EQU	$		;           (wall)
DDRDT04		EQU	$		;           (null)
DDRDT05		EQU	$		;
DDRDT06		EQU	$		;
DDRDT07		EQU	$		;
DDRDT08		EQU	$		;           (warp)
		WORD	08818H,08808H,0A888H
		WORD	08878H,009EFH,0A889H
		WORD	08878H,009EFH,0E889H
		WORD	0C818H,0C808H,0E888H
DDRDT09		EQU	$		;           (exit)
DDRDT0A		EQU	$		;           (danjyon)
DDRDT0B		EQU	$		;           (change)
DDRDT0C		EQU	$		;           (shutter)
		WORD	08834H,08824H,08882H
		WORD	08835H,08825H,08883H
		WORD	0C835H,0C825H,0C883H
		WORD	0C834H,0C824H,0C882H
DDRDT0D		EQU	$		;           (erase)
		WORD	088A2H,08896H,08890H
		WORD	088A3H,08897H,08891H
		WORD	088A2H,08896H,08890H
		WORD	088A3H,08897H,08891H
DDRDT0E		EQU	$		;           (key0)
		WORD	08810H,08800H,08882H
		WORD	08812H,08802H,08883H
		WORD	0C812H,0C802H,0C883H
		WORD	0C810H,0C800H,0C882H
DDRDT0F		EQU	$		;           (key1)
		WORD	08818H,08808H,0A888H
		WORD	08878H,009EFH,0A889H
		WORD	08878H,009EFH,0E889H
		WORD	0C818H,0C808H,0E888H
DDRDT10		EQU	$		;           ()
DDRDT11		EQU	$		;           ()
DDRDT12		EQU	$		;           ()
DDRDT13		EQU	$		;           ()
DDRDT14		EQU	$		;           (taiatari)
		WORD	088A9H,088BAH,08890H
		WORD	0888EH,0888CH,088B4H
		WORD	0888FH,0888DH,0C8B4H
		WORD	0C8A9H,0C8BAH,08891H
DDRDT15		EQU	$		;           (exit-bomb)
		WORD	088A2H,08896H,08890H
		WORD	0888EH,0888CH,08891H
		WORD	0888FH,0888DH,08890H
		WORD	088A3H,08897H,08891H
DDRDT16		EQU	$		;           (door)
		WORD	08810H,08800H,08882H
		WORD	08811H,08801H,08883H
		WORD	0C811H,0C801H,0C883H
		WORD	0C810H,0C800H,0C882H
DDRDT17		EQU	$		;           (bomb)
DDMBMB		EQU	$
		WORD	088A2H,08896H,08890H
		WORD	0888EH,0888CH,08891H
		WORD	0888FH,0888DH,08890H
		WORD	088A3H,08897H,08891H
DDRDT18		EQU	$		;           (crush wall)
DDRDT19		EQU	$		;           (certen)
DDRDT1A		EQU	$		;           (swich)
DDRDT1B		EQU	$		;           (shutter-normal)
		WORD	08818H,08808H,0A888H
		WORD	08878H,009EFH,0A889H
		WORD	08878H,009EFH,0E889H
		WORD	0C818H,0C808H,0E888H
DDRDT1C		EQU	$		;           (normal-shutter)
		WORD	08834H,08824H,08882H
		WORD	08835H,08825H,08883H
		WORD	0C835H,0C825H,0C883H
		WORD	0C834H,0C824H,0C882H
DDRDT1D		EQU	$		;
DDRDT1E		EQU	$		;
DDRDT1F		EQU	$		;
DDRDT20		EQU	$		;           (under-normal)
		WORD	0880DH,08808H,0A82CH
		WORD	08878H,009EFH,0A82DH
		WORD	0C878H,009EFH,0E82DH
		WORD	0C80DH,0C808H,0E82CH
DDRDT21		EQU	$		;           (under-door)
		WORD	0880BH,08800H,088B0H
		WORD	08811H,08801H,088B1H
		WORD	0C811H,0C801H,0C8B1H
		WORD	0C80BH,0C800H,0C8B0H
DDRDT22		EQU	$		;           (under-shutter)
		WORD	0880CH,08824H,088B0H
		WORD	08835H,08825H,088B1H
		WORD	0C835H,0C825H,0C8B1H
		WORD	0C80CH,0C824H,0C8B0H
DDRDT23		EQU	$		;           (under-warp)
		WORD	0880DH,08808H,0A82CH
		WORD	08878H,009EFH,0A82DH
		WORD	0C878H,009EFH,0E82DH
		WORD	0C80DH,0C808H,0E82CH
DDRDT24		EQU	$		;           (under-shutter-normal)
		WORD	0880DH,08808H,0A82CH
		WORD	08878H,009EFH,0A82DH
		WORD	0C878H,009EFH,0E82DH
		WORD	0C80DH,0C808H,0E82CH
DDRDT25		EQU	$		;           (under-normal-shutter)
		WORD	0880CH,08824H,088B0H
		WORD	08835H,08825H,088B1H
		WORD	0C835H,0C825H,0C8B1H
		WORD	0C80CH,0C824H,0C8B0H
DDRDT26		EQU	$		;
DDRDT27		EQU	$		;
DDRDT28		EQU	$		;           (shutter,key,door open)
		WORD	08818H,08808H,0A882H
		WORD	08878H,009EFH,0A883H
		WORD	0C878H,009EFH,0E883H
		WORD	0C818H,0C808H,0E882H
DDRDT29		EQU	$		;           (bomb crash,taiatari crush)
		WORD	08875H,08877H,0A886H
		WORD	08859H,009EFH,0A887H
		WORD	0C859H,009EFH,0E887H
		WORD	0C875H,0C877H,0E886H
DDRDT2A		EQU	$		;           (crush wall open)
		WORD	08875H,08874H,08873H,08872H,08872H,08872H
		WORD	08876H,08876H,08876H,08876H,08876H,08876H
;
		WORD	0085BH
;
		WORD	0C876H,0C876H,0C876H,0C876H,0C876H,0C876H
		WORD	0C875H,0C874H,0C873H,0C872H,0C872H,0C872H
DDRDT2B		EQU	$		;           (certen open)
		WORD	09158H,09178H,0915EH,0A96EH
		WORD	09174H,08878H,089EFH,0E96EH
		WORD	0D174H,0C878H,0C9EFH,0A96EH
		WORD	0D158H,0D178H,0D15EH,0E96EH
DDRDT2C		EQU	$               ;           (under-door,shutter open)
		WORD	0880DH,08808H,0A8B0H
		WORD	08878H,009EFH,0A8B1H
		WORD	0C878H,009EFH,0E8B1H
		WORD	0C80DH,0C808H,0E8B0H
DDRDT2D		EQU	$		;           (bomb-enter)
		WORD	00960H,0296EH,0295EH
		WORD	014C9H,014D9H,0294EH
		WORD	054C9H,054D9H,0694EH
		WORD	04960H,0696EH,0695EH
DDRDT2E		EQU	$
DDRDT2F		EQU	$
;
;
;
LDRDT00		EQU	$		; left-door 
		WORD	0288AH,0288BH,0A88BH,0A88AH
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0080AH,00879H,08879H,0880AH
LDRDT01		EQU	$		;           (under)
LDRDT02		EQU	$		;           (stop)
		WORD	0283CH,0283DH,0A83DH,0A83CH
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0081DH,00879H,08879H,0881DH
LDRDT03		EQU	$		;           (wall)
LDRDT04		EQU	$		;           (null)
LDRDT05		EQU	$		;
LDRDT06		EQU	$		;
LDRDT07		EQU	$		;
LDRDT08		EQU	$		;           (warp)
		WORD	0288AH,0288BH,0A88BH,0A88AH
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0080AH,00879H,08879H,0880AH
LDRDT09		EQU	$		;           (exit)
LDRDT0A		EQU	$		;           (danjyon)
LDRDT0B		EQU	$		;           (change)
LDRDT0C		EQU	$		;           (shutter)
		WORD	00884H,00885H,08885H,08884H
		WORD	00826H,00836H,08836H,08826H
		WORD	00827H,00837H,08837H,08827H
LDRDT0D		EQU	$		;           (erase)
		WORD	00892H,00893H,00892H,00893H
		WORD	00898H,00899H,00898H,00899H
		WORD	0082DH,0083DH,0082DH,0083DH
LDRDT0E		EQU	$		;           (key0)
		WORD	00884H,00885H,08885H,08884H
		WORD	00803H,00805H,08805H,08803H
		WORD	00804H,00806H,08806H,08804H
LDRDT0F		EQU	$		;           ()
LDRDT10		EQU	$		;           ()
LDRDT11		EQU	$		;           ()
LDRDT12		EQU	$		;           ()
LDRDT13		EQU	$		;           ()
LDRDT14		EQU	$		;           (taiatari)
		WORD	00892H,008A8H,088A8H,00893H
		WORD	008BBH,008BCH,008BDH,088BBH
		WORD	008AAH,008BEH,008BFH,088AAH
LDRDT15		EQU	$		;           ()
LDRDT16		EQU	$		;           (door)
		WORD	00884H,00885H,08885H,08884H
		WORD	00803H,00813H,08813H,08803H
		WORD	00804H,00814H,08814H,08804H
LDRDT17		EQU	$		;           (bomb)
LDMBMB		EQU	$
		WORD	00892H,00893H,00892H,00893H
		WORD	00898H,008BCH,008BDH,00899H
		WORD	008A4H,008BEH,008BFH,008A5H
LDRDT18		EQU	$		;           (crush wall)
LDRDT19		EQU	$		;           (certen)
LDRDT1A		EQU	$		;           (swich)
LDRDT1B		EQU	$		;           (shutter-normal)
		WORD	00884H,00885H,08885H,08884H
		WORD	00826H,00836H,08836H,08826H
		WORD	00827H,00837H,08837H,08827H
LDRDT1C		EQU	$		;           (normal-shutter)
		WORD	0288AH,0288BH,0A88BH,0A88AH
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0080AH,00879H,08879H,0880AH
LDRDT1D		EQU	$		;
LDRDT1E		EQU	$		;
LDRDT1F		EQU	$		;
LDRDT20		EQU	$		;           (under-normal)
		WORD	0283CH,0283DH,0A83DH,0A83CH
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0081DH,00879H,08879H,0881DH
LDRDT21		EQU	$		;           (under-door)
		WORD	008B2H,008B3H,088B3H,088B2H
		WORD	00803H,00813H,08813H,08803H
		WORD	0081BH,00814H,08814H,0881BH
LDRDT22		EQU	$		;           (under-shutter)
		WORD	008B2H,008B3H,088B3H,088B2H
		WORD	00826H,00836H,08836H,08826H
		WORD	0081CH,00837H,08837H,0881CH
LDRDT23		EQU	$		;           (under-warp)
		WORD	0283CH,0283DH,0A83DH,0A83CH
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0081DH,00879H,08879H,0881DH
LDRDT24		EQU	$		;           (under-shutter-normal)
		WORD	008B2H,008B3H,088B3H,088B2H
		WORD	00826H,00836H,08836H,08826H
		WORD	0081CH,00837H,08837H,0881CH
LDRDT25		EQU	$		;           (under-normal-shutter)
		WORD	0283CH,0283DH,0A83DH,0A83CH
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0081DH,00879H,08879H,0881DH
LDRDT26		EQU	$		;
LDRDT27		EQU	$		;
LDRDT28		EQU	$		;           (shutter,key,door open)
		WORD	02884H,02885H,0A885H,0A884H
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0080AH,00879H,08879H,0880AH
LDRDT29		EQU	$		;           (bomb crash,taiatari crush)
		WORD	028A0H,028A1H,0A8A1H,0A8A0H
		WORD	00867H,009EFH,009EFH,08867H
		WORD	00865H,0085AH,0885AH,08865H
LDRDT2A		EQU	$		;           (crush wall open)
;// 03.08.29 //		WORD	00862H,00862H,00863H,00864H,00865H
;// 03.08.29 //		WORD	00866H,00866H,00866H,00866H,00866H
;// 03.08.29 //;
;// 03.08.29 //		WORD	0085CH,0085CH,0085CH,0085CH,0085CH
;// 03.08.29 //;
;// 03.08.29 //		WORD	08866H,08866H,08866H,08866H,08866H
;// 03.08.29 //		WORD	08862H,08862H,08863H,08864H,08865H
LDRDT2B		EQU	$		;           (certen open)
		WORD	0297EH,0A97EH,0297EH,0A97EH
		WORD	011ACH,009EFH,089EFH,091ACH
		WORD	01179H,00879H,08879H,09179H
		WORD	01157H,01175H,09175H,09157H
LDRDT2C		EQU	$               ;           (under-door,shutter open)
		WORD	028B2H,028B3H,0A8B3H,0A8B2H
		WORD	00809H,009EFH,009EFH,08809H
		WORD	0081DH,00879H,08879H,0881DH
LDRDT2D		EQU	$
LDRDT2E		EQU	$
LDRDT2F		EQU	$
;
;
;
RDRDT00		EQU	$		; right-door
		WORD	0480AH,04879H,0C879H,0C80AH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	0688AH,0688BH,0E88BH,0E88AH
RDRDT01		EQU	$		;            (under)
RDRDT02		EQU	$		;            (stop)
		WORD	0481DH,04879H,0C879H,0C81DH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	0683CH,0683DH,0E83DH,0E83CH
RDRDT03		EQU	$		;            (wall)
RDRDT04		EQU	$		;            (null)
RDRDT05		EQU	$		;
RDRDT06		EQU	$		;
RDRDT07		EQU	$		;
RDRDT08		EQU	$		;            (warp)
		WORD	0480AH,04879H,0C879H,0C80AH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	0688AH,0688BH,0E88BH,0E88AH
RDRDT09		EQU	$		;            (exit)
RDRDT0A		EQU	$		;            (danjyon)
RDRDT0B		EQU	$		;            (change)
RDRDT0C		EQU	$		;            (shutter)
		WORD	04827H,04837H,0C837H,0C827H
		WORD	04826H,04836H,0C836H,0C826H
		WORD	04884H,04885H,0C885H,0C884H
RDRDT0D		EQU	$		;            (erase)
		WORD	0482DH,0483DH,0482DH,0483DH
		WORD	04898H,04899H,04898H,04899H
		WORD	04892H,04893H,04892H,04893H
RDRDT0E		EQU	$		;            (key0)
		WORD	04804H,04806H,0C806H,0C804H
		WORD	04803H,04805H,0C805H,0C803H
		WORD	04884H,04885H,0C885H,0C884H
RDRDT0F		EQU	$		;            ()
RDRDT10		EQU	$		;            ()
RDRDT11		EQU	$		;            ()
RDRDT12		EQU	$		;            ()
RDRDT13		EQU	$		;            ()
RDRDT14		EQU	$		;            (taiatari)
		WORD	048AAH,048BEH,048BFH,0C8AAH
		WORD	048BBH,048BCH,048BDH,0C8BBH
		WORD	04892H,048A8H,0C8A8H,04893H
RDRDT15		EQU	$		;            ()
RDRDT16		EQU	$		;            (door)
		WORD	04804H,04814H,0C814H,0C804H
		WORD	04803H,04813H,0C813H,0C803H
		WORD	04884H,04885H,0C885H,0C884H
RDRDT17		EQU	$		;            (bomb)
RDMBMB		EQU	$
		WORD	048A4H,048BEH,048BFH,048A5H
		WORD	04898H,048BCH,048BDH,04899H
		WORD	04892H,04893H,04892H,04893H
RDRDT18		EQU	$		;            (crush wall)
RDRDT19		EQU	$		;            (certen)
RDRDT1A		EQU	$		;            (swich)
RDRDT1B		EQU	$		;            (shutter-normal)
		WORD	0480AH,04879H,0C879H,0C80AH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	0688AH,0688BH,0E88BH,0E88AH
RDRDT1C		EQU	$		;            (normal-shutter)
		WORD	04827H,04837H,0C837H,0C827H
		WORD	04826H,04836H,0C836H,0C826H
		WORD	04884H,04885H,0C885H,0C884H
RDRDT1D		EQU	$		;
RDRDT1E		EQU	$		;
RDRDT1F		EQU	$		;
RDRDT20		EQU	$		;            (under-normal)
		WORD	0481DH,04879H,0C879H,0C81DH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	0683CH,0683DH,0E83DH,0E83CH
RDRDT21		EQU	$		;            (under-door)
		WORD	0481BH,04814H,0C814H,0C81BH
		WORD	04803H,04813H,0C813H,0C803H
		WORD	048B2H,048B3H,0C8B3H,0C8B2H
RDRDT22		EQU	$		;            (under-shutter)
		WORD	0481CH,04837H,0C837H,0C81CH
		WORD	04826H,04836H,0C836H,0C826H
		WORD	048B2H,048B3H,0C8B3H,0C8B2H
RDRDT23		EQU	$		;            (under-warp)
		WORD	0481DH,04879H,0C879H,0C81DH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	0683CH,0683DH,0E83DH,0E83CH
RDRDT24		EQU	$		;            (under-shutter-normal)
		WORD	0481DH,04879H,0C879H,0C81DH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	0683CH,0683DH,0E83DH,0E83CH
RDRDT25		EQU	$		;            (under-normal-shutter)
		WORD	0481CH,04837H,0C837H,0C81CH
		WORD	04826H,04836H,0C836H,0C826H
		WORD	048B2H,048B3H,0C8B3H,0C8B2H
RDRDT26		EQU	$		;
RDRDT27		EQU	$		;
RDRDT28		EQU	$		;            (shutter,key,door open)
		WORD	0480AH,04879H,0C879H,0C80AH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	06884H,06885H,0E885H,0E884H
RDRDT29		EQU	$		;            (bomb crash,taiatari crush)
		WORD	04865H,0485AH,0C85AH,0C865H
		WORD	04867H,009EFH,009EFH,0C867H
		WORD	068A0H,068A1H,0E8A1H,0E8A0H
RDRDT2A		EQU	$		;            (crush wall open)
;// 03.08.29 //		WORD	04865H,04864H,04863H,04862H,04862H
;// 03.08.29 //		WORD	04866H,04866H,04866H,04866H,04866H
;// 03.08.29 //;
;// 03.08.29 //		WORD	0085CH,0085CH,0085CH,0085CH,0085CH
;// 03.08.29 //;
;// 03.08.29 //		WORD	0C866H,0C866H,0C866H,0C866H,0C866H
;// 03.08.29 //		WORD	0C865H,0C864H,0C863H,0C862H,0C862H
RDRDT2B		EQU	$		;            (certen open)
		WORD	05157H,05175H,0D175H,0D157H
		WORD	05179H,04879H,0C879H,0D179H
		WORD	051ACH,049EFH,0C9EFH,0D1ACH
		WORD	0697EH,0E97EH,0697EH,0E97EH
RDRDT2C		EQU	$		;            (under-door,shutter open)
		WORD	0481DH,04879H,0C879H,0C81DH
		WORD	04809H,009EFH,009EFH,0C809H
		WORD	068B2H,068B3H,0E8B3H,0E8B2H
RDRDT2D		EQU	$
RDRDT2E		EQU	$
RDRDT2F		EQU	$
;
;
;
;************************************************************************
;*		Door open  data						*
;************************************************************************
UDROPD0		EQU	$		;         (key,door open)
		WORD	02882H,00820H,00830H
		WORD	02883H,00821H,00831H
		WORD	06883H,04821H,04831H
		WORD	06882H,04820H,04830H
UDROPD1		EQU	$		;         (shutter open)
		WORD	02882H,00828H,00838H
		WORD	02883H,00829H,00839H
		WORD	06883H,04829H,04839H
		WORD	06882H,04828H,04838H
UDROPD2		EQU	$		;         (key,door open)
		WORD	028B0H,00820H,0080EH
		WORD	028B1H,00821H,00831H
		WORD	068B1H,04821H,04831H
		WORD	068B0H,04820H,0480EH
UDROPD3		EQU	$		;         (shutter)
		WORD	028B0H,00828H,0080FH
		WORD	028B1H,00829H,00839H
		WORD	068B1H,04829H,04839H
		WORD	068B0H,04828H,0480FH
;
;
DDROPD0		EQU	$		;           (key,door open)
		WORD	08830H,08820H,0A882H
		WORD	08831H,08821H,0A883H
		WORD	0C831H,0C821H,0E883H
		WORD	0C830H,0C820H,0E882H
DDROPD1		EQU	$		;           (shutter)
		WORD	08838H,08828H,0A882H
		WORD	08839H,08829H,0A883H
		WORD	0C839H,0C829H,0E883H
		WORD	0C838H,0C828H,0E882H
DDROPD2		EQU	$		;           (key,door open)
		WORD	0880EH,08820H,0A8B0H
		WORD	08831H,08821H,0A8B1H
		WORD	0C831H,0C821H,0E8B1H
		WORD	0C80EH,0C820H,0E8B0H
DDROPD3		EQU	$		;           (shutter)
		WORD	0880FH,08828H,0A8B0H
		WORD	08839H,08829H,0A8B1H
		WORD	0C839H,0C829H,0E8B1H
		WORD	0C80FH,0C828H,0E8B0H
;
;
LDROPD0		EQU	$		;           (key,door open)
		WORD	02884H,02885H,0A885H,0A884H
		WORD	00822H,00832H,08832H,08822H
		WORD	00823H,00833H,08833H,08823H
LDROPD1		EQU	$		;           (shutter)
		WORD	02884H,02885H,0A885H,0A884H
		WORD	0082AH,0083AH,0883AH,0882AH
		WORD	0082BH,0083BH,0883BH,0882BH
LDROPD2		EQU	$		;           (key,door open)
		WORD	028B2H,028B3H,0A8B3H,0A8B2H
		WORD	00822H,00832H,08832H,08822H
		WORD	0081EH,00833H,08833H,0881EH
LDROPD3		EQU	$		;           (shutter)
		WORD	028B2H,028B3H,0A8B3H,0A8B2H
		WORD	0082AH,0083AH,0883AH,0882AH
		WORD	0081FH,0083BH,0883BH,0881FH
;
;
RDROPD0		EQU	$		;            (key,door open)
		WORD	04823H,04833H,0C833H,0C823H
		WORD	04822H,04832H,0C832H,0C822H
		WORD	06884H,06885H,0E885H,0E884H
RDROPD1		EQU	$		;            (shutter)
		WORD	0482BH,0483BH,0C83BH,0C82BH
		WORD	0482AH,0483AH,0C83AH,0C82AH
		WORD	06884H,06885H,0E885H,0E884H
RDROPD2		EQU	$		;            (key,door open)
		WORD	0481EH,04833H,0C833H,0C81EH
		WORD	04822H,04832H,0C832H,0C822H
		WORD	068B2H,068B3H,0E8B3H,0E8B2H
RDROPD3		EQU	$		;            (shutter)
		WORD	0481FH,0483BH,0C83BH,0C81FH
		WORD	0482AH,0483AH,0C83AH,0C82AH
		WORD	068B2H,068B3H,0E8B3H,0E8B2H
;
;
CWUDDT		EQU	$		;            (crush wall up-down)
		WORD	08875H,08874H,08873H,08872H,08872H,08872H,00872H,08872H,08872H,00873H,00874H,00875H
		WORD	08876H,08876H,08876H,08876H,08876H,00876H,00876H,00876H,00876H,00876H,00876H,00876H
;
		WORD	0085BH
;
		WORD	0C876H,0C876H,0C876H,0C876H,0C876H,04876H,04876H,04876H,04876H,04876H,04876H,04876H
		WORD	0C875H,0C874H,0C873H,0C872H,0C872H,0C872H,04872H,04872H,04872H,04873H,04874H,04875H
;
CWLRDT		EQU	$		;            (crush wall left-right)
;// 03.08.29 //		WORD	04865H,04864H,04863H,04862H,04862H,00862H,00862H,00863H,00864H,00865H
;// 03.08.29 //		WORD	04866H,04866H,04866H,04866H,04866H,00866H,00866H,00866H,00866H,00866H
;// 03.08.29 //;
;// 03.08.29 //		WORD	0085CH
;// 03.08.29 //;
;// 03.08.29 //		WORD	0C866H,0C866H,0C866H,0C866H,0C866H,08866H,08866H,08866H,08866H,08866H
;// 03.08.29 //		WORD	0C865H,0C864H,0C863H,0C862H,0C862H,08862H,08862H,08863H,08864H,08865H
;
;
;
;************************************************************************
;*		Door data table						*
;************************************************************************
UDRTBL		EQU	$
		WORD	udrdt00,udrdt01,udrdt02,udrdt03
		WORD	udrdt04,udrdt05,udrdt06,udrdt07
		WORD	udrdt08,udrdt09,udrdt0A,udrdt0B	; not-check
		WORD	udrdt0C,udrdt0D,udrdt0E,udrdt0F
		WORD	udrdt10,udrdt11,udrdt12,udrdt13
		WORD	udrdt14,udrdt15,udrdt16,udrdt17
		WORD	udrdt18,udrdt19,udrdt1A,udrdt1B
		WORD	udrdt1C,udrdt1D,udrdt1E,udrdt1F
		WORD	udrdt20,udrdt21,udrdt22,udrdt23
		WORD	udrdt24,udrdt25,udrdt26,udrdt27	; check
;
		WORD	udrdt28,udrdt29,udrdt2A,udrdt2B
		WORD	udrdt2C,udrdt2D,udrdt2E,udrdt2F
		WORD	udrdt30,udrdt31,udrdt32,udrdt33	; open
;
;
DDRTBL		EQU	$
		WORD	ddrdt00,ddrdt01,ddrdt02,ddrdt03
		WORD	ddrdt04,ddrdt05,ddrdt06,ddrdt07
		WORD	ddrdt08,ddrdt09,ddrdt0A,ddrdt0B
		WORD	ddrdt0C,ddrdt0D,ddrdt0E,ddrdt0F
		WORD	ddrdt10,ddrdt11,ddrdt12,ddrdt13
		WORD	ddrdt14,ddrdt15,ddrdt16,ddrdt17
		WORD	ddrdt18,ddrdt19,ddrdt1A,ddrdt1B
		WORD	ddrdt1C,ddrdt1D,ddrdt1E,ddrdt1F
		WORD	ddrdt20,ddrdt21,ddrdt22,ddrdt23
		WORD	ddrdt24,ddrdt25,ddrdt26,ddrdt27
;
		WORD	ddrdt28,ddrdt29,ddrdt2A,ddrdt2B
		WORD	ddrdt2C,ddrdt2D,ddrdt2E,ddrdt2F
;
;
LDRTBL		EQU	$
		WORD	ldrdt00,ldrdt01,ldrdt02,ldrdt03
		WORD	ldrdt04,ldrdt05,ldrdt06,ldrdt07
		WORD	ldrdt08,ldrdt09,ldrdt0A,ldrdt0B
		WORD	ldrdt0C,ldrdt0D,ldrdt0E,ldrdt0F
		WORD	ldrdt10,ldrdt11,ldrdt12,ldrdt13
		WORD	ldrdt14,ldrdt15,ldrdt16,ldrdt17
		WORD	ldrdt18,ldrdt19,ldrdt1A,ldrdt1B
		WORD	ldrdt1C,ldrdt1D,ldrdt1E,ldrdt1F
		WORD	ldrdt20,ldrdt21,ldrdt22,ldrdt23
		WORD	ldrdt24,ldrdt25,ldrdt26,ldrdt27
;
		WORD	ldrdt28,ldrdt29,ldrdt2A,ldrdt2B
		WORD	ldrdt2C,ldrdt2D,ldrdt2E,ldrdt2F
;
;
RDRTBL		EQU	$
		WORD	rdrdt00,rdrdt01,rdrdt02,rdrdt03
		WORD	rdrdt04,rdrdt05,rdrdt06,rdrdt07
		WORD	rdrdt08,rdrdt09,rdrdt0A,rdrdt0B
		WORD	rdrdt0C,rdrdt0D,rdrdt0E,rdrdt0F
		WORD	rdrdt10,rdrdt11,rdrdt12,rdrdt13
		WORD	rdrdt14,rdrdt15,rdrdt16,rdrdt17
		WORD	rdrdt18,rdrdt19,rdrdt1A,rdrdt1B
		WORD	rdrdt1C,rdrdt1D,rdrdt1E,rdrdt1F
		WORD	rdrdt20,rdrdt21,rdrdt22,rdrdt23
		WORD	rdrdt24,rdrdt25,rdrdt26,rdrdt27
;
		WORD	rdrdt28,rdrdt29,rdrdt2A,rdrdt2B
		WORD	rdrdt2C,rdrdt2D,rdrdt2E,rdrdt2F
;
;
;
;
;************************************************************************
;*		Door OPEN data table					*
;************************************************************************
UDOPNDD		EQU	$-2
		WORD	UDROPD0-UNITDT
		WORD	UDROPD1-UNITDT
		WORD	UDROPD2-UNITDT
		WORD	UDROPD3-UNITDT
;
DDOPNDD		EQU	$-2
		WORD	DDROPD0-UNITDT
		WORD	DDROPD1-UNITDT
		WORD	DDROPD2-UNITDT
		WORD	DDROPD3-UNITDT
;
LDOPNDD		EQU	$-2
		WORD	LDROPD0-UNITDT
		WORD	LDROPD1-UNITDT
		WORD	LDROPD2-UNITDT
		WORD	LDROPD3-UNITDT
;
RDOPNDD		EQU	$-2
		WORD	RDROPD0-UNITDT
		WORD	RDROPD1-UNITDT
		WORD	RDROPD2-UNITDT
		WORD	RDROPD3-UNITDT
;
;
;
;
;
djdordt		EQU	DJDORDT-UNITDT
;
dkdordt		EQU	DKDORDT-UNITDT
;
udrdt00		EQU	UDRDT00-UNITDT
udrdt01		EQU	UDRDT01-UNITDT
udrdt02		EQU	UDRDT02-UNITDT
udrdt03		EQU	UDRDT03-UNITDT
udrdt04		EQU	UDRDT04-UNITDT
udrdt05		EQU	UDRDT05-UNITDT
udrdt06		EQU	UDRDT06-UNITDT
udrdt07		EQU	UDRDT07-UNITDT
udrdt08		EQU	UDRDT08-UNITDT
udrdt09		EQU	UDRDT09-UNITDT
udrdt0A		EQU	UDRDT0A-UNITDT
udrdt0B		EQU	UDRDT0B-UNITDT
udrdt0C		EQU	UDRDT0C-UNITDT
udrdt0D		EQU	UDRDT0D-UNITDT
udrdt0E		EQU	UDRDT0E-UNITDT
udrdt0F		EQU	UDRDT0F-UNITDT
udrdt10		EQU	UDRDT10-UNITDT
udrdt11		EQU	UDRDT11-UNITDT
udrdt12		EQU	UDRDT12-UNITDT
udrdt13		EQU	UDRDT13-UNITDT
udrdt14		EQU	UDRDT14-UNITDT
udrdt15		EQU	UDRDT15-UNITDT
udrdt16		EQU	UDRDT16-UNITDT
udrdt17		EQU	UDRDT17-UNITDT
udrdt18		EQU	UDRDT18-UNITDT
udrdt19		EQU	UDRDT19-UNITDT
udrdt1A		EQU	UDRDT1A-UNITDT
udrdt1B		EQU	UDRDT1B-UNITDT
udrdt1C		EQU	UDRDT1C-UNITDT
udrdt1D		EQU	UDRDT1D-UNITDT
udrdt1E		EQU	UDRDT1E-UNITDT
udrdt1F		EQU	UDRDT1F-UNITDT
udrdt20		EQU	UDRDT20-UNITDT
udrdt21		EQU	UDRDT21-UNITDT
udrdt22		EQU	UDRDT22-UNITDT
udrdt23		EQU	UDRDT23-UNITDT
udrdt24		EQU	UDRDT24-UNITDT
udrdt25		EQU	UDRDT25-UNITDT
udrdt26		EQU	UDRDT26-UNITDT
udrdt27		EQU	UDRDT27-UNITDT
udrdt28		EQU	UDRDT28-UNITDT
udrdt29		EQU	UDRDT29-UNITDT
udrdt2A		EQU	UDRDT2A-UNITDT
udrdt2B		EQU	UDRDT2B-UNITDT
udrdt2C		EQU	UDRDT2C-UNITDT
udrdt2D		EQU	UDRDT2D-UNITDT
udrdt2E		EQU	UDRDT2E-UNITDT
udrdt2F		EQU	UDRDT2F-UNITDT
udrdt30		EQU	UDRDT30-UNITDT
udrdt31		EQU	UDRDT31-UNITDT
udrdt32		EQU	UDRDT32-UNITDT
udrdt33		EQU	UDRDT33-UNITDT
;
ddrdt00		EQU	DDRDT00-UNITDT
ddrdt01		EQU	DDRDT01-UNITDT
ddrdt02		EQU	DDRDT02-UNITDT
ddrdt03		EQU	DDRDT03-UNITDT
ddrdt04		EQU	DDRDT04-UNITDT
ddrdt05		EQU	DDRDT05-UNITDT
ddrdt06		EQU	DDRDT06-UNITDT
ddrdt07		EQU	DDRDT07-UNITDT
ddrdt08		EQU	DDRDT08-UNITDT
ddrdt09		EQU	DDRDT09-UNITDT
ddrdt0A		EQU	DDRDT0A-UNITDT
ddrdt0B		EQU	DDRDT0B-UNITDT
ddrdt0C		EQU	DDRDT0C-UNITDT
ddrdt0D		EQU	DDRDT0D-UNITDT
ddrdt0E		EQU	DDRDT0E-UNITDT
ddrdt0F		EQU	DDRDT0F-UNITDT
ddrdt10		EQU	DDRDT10-UNITDT
ddrdt11		EQU	DDRDT11-UNITDT
ddrdt12		EQU	DDRDT12-UNITDT
ddrdt13		EQU	DDRDT13-UNITDT
ddrdt14		EQU	DDRDT14-UNITDT
ddrdt15		EQU	DDRDT15-UNITDT
ddrdt16		EQU	DDRDT16-UNITDT
ddrdt17		EQU	DDRDT17-UNITDT
ddrdt18		EQU	DDRDT18-UNITDT
ddrdt19		EQU	DDRDT19-UNITDT
ddrdt1A		EQU	DDRDT1A-UNITDT
ddrdt1B		EQU	DDRDT1B-UNITDT
ddrdt1C		EQU	DDRDT1C-UNITDT
ddrdt1D		EQU	DDRDT1D-UNITDT
ddrdt1E		EQU	DDRDT1E-UNITDT
ddrdt1F		EQU	DDRDT1F-UNITDT
ddrdt20		EQU	DDRDT20-UNITDT
ddrdt21		EQU	DDRDT21-UNITDT
ddrdt22		EQU	DDRDT22-UNITDT
ddrdt23		EQU	DDRDT23-UNITDT
ddrdt24		EQU	DDRDT24-UNITDT
ddrdt25		EQU	DDRDT25-UNITDT
ddrdt26		EQU	DDRDT26-UNITDT
ddrdt27		EQU	DDRDT27-UNITDT
ddrdt28		EQU	DDRDT28-UNITDT
ddrdt29		EQU	DDRDT29-UNITDT
ddrdt2A		EQU	DDRDT2A-UNITDT
ddrdt2B		EQU	DDRDT2B-UNITDT
ddrdt2C		EQU	DDRDT2C-UNITDT
ddrdt2D		EQU	DDRDT2D-UNITDT
ddrdt2E		EQU	DDRDT2E-UNITDT
ddrdt2F		EQU	DDRDT2F-UNITDT
;
ldrdt00		EQU	LDRDT00-UNITDT
ldrdt01		EQU	LDRDT01-UNITDT
ldrdt02		EQU	LDRDT02-UNITDT
ldrdt03		EQU	LDRDT03-UNITDT
ldrdt04		EQU	LDRDT04-UNITDT
ldrdt05		EQU	LDRDT05-UNITDT
ldrdt06		EQU	LDRDT06-UNITDT
ldrdt07		EQU	LDRDT07-UNITDT
ldrdt08		EQU	LDRDT08-UNITDT
ldrdt09		EQU	LDRDT09-UNITDT
ldrdt0A		EQU	LDRDT0A-UNITDT
ldrdt0B		EQU	LDRDT0B-UNITDT
ldrdt0C		EQU	LDRDT0C-UNITDT
ldrdt0D		EQU	LDRDT0D-UNITDT
ldrdt0E		EQU	LDRDT0E-UNITDT
ldrdt0F		EQU	LDRDT0F-UNITDT
ldrdt10		EQU	LDRDT10-UNITDT
ldrdt11		EQU	LDRDT11-UNITDT
ldrdt12		EQU	LDRDT12-UNITDT
ldrdt13		EQU	LDRDT13-UNITDT
ldrdt14		EQU	LDRDT14-UNITDT
ldrdt15		EQU	LDRDT15-UNITDT
ldrdt16		EQU	LDRDT16-UNITDT
ldrdt17		EQU	LDRDT17-UNITDT
ldrdt18		EQU	LDRDT18-UNITDT
ldrdt19		EQU	LDRDT19-UNITDT
ldrdt1A		EQU	LDRDT1A-UNITDT
ldrdt1B		EQU	LDRDT1B-UNITDT
ldrdt1C		EQU	LDRDT1C-UNITDT
ldrdt1D		EQU	LDRDT1D-UNITDT
ldrdt1E		EQU	LDRDT1E-UNITDT
ldrdt1F		EQU	LDRDT1F-UNITDT
ldrdt20		EQU	LDRDT20-UNITDT
ldrdt21		EQU	LDRDT21-UNITDT
ldrdt22		EQU	LDRDT22-UNITDT
ldrdt23		EQU	LDRDT23-UNITDT
ldrdt24		EQU	LDRDT24-UNITDT
ldrdt25		EQU	LDRDT25-UNITDT
ldrdt26		EQU	LDRDT26-UNITDT
ldrdt27		EQU	LDRDT27-UNITDT
ldrdt28		EQU	LDRDT28-UNITDT
ldrdt29		EQU	LDRDT29-UNITDT
ldrdt2A		EQU	LDRDT2A-UNITDT
ldrdt2B		EQU	LDRDT2B-UNITDT
ldrdt2C		EQU	LDRDT2C-UNITDT
ldrdt2D		EQU	LDRDT2D-UNITDT
ldrdt2E		EQU	LDRDT2E-UNITDT
ldrdt2F		EQU	LDRDT2F-UNITDT
;
rdrdt00		EQU	RDRDT00-UNITDT
rdrdt01		EQU	RDRDT01-UNITDT
rdrdt02		EQU	RDRDT02-UNITDT
rdrdt03		EQU	RDRDT03-UNITDT
rdrdt04		EQU	RDRDT04-UNITDT
rdrdt05		EQU	RDRDT05-UNITDT
rdrdt06		EQU	RDRDT06-UNITDT
rdrdt07		EQU	RDRDT07-UNITDT
rdrdt08		EQU	RDRDT08-UNITDT
rdrdt09		EQU	RDRDT09-UNITDT
rdrdt0A		EQU	RDRDT0A-UNITDT
rdrdt0B		EQU	RDRDT0B-UNITDT
rdrdt0C		EQU	RDRDT0C-UNITDT
rdrdt0D		EQU	RDRDT0D-UNITDT
rdrdt0E		EQU	RDRDT0E-UNITDT
rdrdt0F		EQU	RDRDT0F-UNITDT
rdrdt10		EQU	RDRDT10-UNITDT
rdrdt11		EQU	RDRDT11-UNITDT
rdrdt12		EQU	RDRDT12-UNITDT
rdrdt13		EQU	RDRDT13-UNITDT
rdrdt14		EQU	RDRDT14-UNITDT
rdrdt15		EQU	RDRDT15-UNITDT
rdrdt16		EQU	RDRDT16-UNITDT
rdrdt17		EQU	RDRDT17-UNITDT
rdrdt18		EQU	RDRDT18-UNITDT
rdrdt19		EQU	RDRDT19-UNITDT
rdrdt1A		EQU	RDRDT1A-UNITDT
rdrdt1B		EQU	RDRDT1B-UNITDT
rdrdt1C		EQU	RDRDT1C-UNITDT
rdrdt1D		EQU	RDRDT1D-UNITDT
rdrdt1E		EQU	RDRDT1E-UNITDT
rdrdt1F		EQU	RDRDT1F-UNITDT
rdrdt20		EQU	RDRDT20-UNITDT
rdrdt21		EQU	RDRDT21-UNITDT
rdrdt22		EQU	RDRDT22-UNITDT
rdrdt23		EQU	RDRDT23-UNITDT
rdrdt24		EQU	RDRDT24-UNITDT
rdrdt25		EQU	RDRDT25-UNITDT
rdrdt26		EQU	RDRDT26-UNITDT
rdrdt27		EQU	RDRDT27-UNITDT
rdrdt28		EQU	RDRDT28-UNITDT
rdrdt29		EQU	RDRDT29-UNITDT
rdrdt2A		EQU	RDRDT2A-UNITDT
rdrdt2B		EQU	RDRDT2B-UNITDT
rdrdt2C		EQU	RDRDT2C-UNITDT
rdrdt2D		EQU	RDRDT2D-UNITDT
rdrdt2E		EQU	RDRDT2E-UNITDT
rdrdt2F		EQU	RDRDT2F-UNITDT
;
;
;
;
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\  BG.2  unit  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
lfwld0		EQU	LFWLD0-UNITDT
rtwld0		EQU	RTWLD0-UNITDT
upwld0		EQU	UPWLD0-UNITDT
dnwld0		EQU	DNWLD0-UNITDT
lfwld8		EQU	LFWLD8-UNITDT
rtwld8		EQU	RTWLD8-UNITDT
upwld8		EQU	UPWLD8-UNITDT
dnwld8		EQU	DNWLD8-UNITDT
ulfwld		EQU	ULFWLD-UNITDT
urtwld		EQU	URTWLD-UNITDT
uupwld		EQU	UUPWLD-UNITDT
udnwld		EQU	UDNWLD-UNITDT
ceildt		EQU	CEILDT-UNITDT
uarchd		EQU	UARCHD-UNITDT
darchd		EQU	DARCHD-UNITDT
larchd		EQU	LARCHD-UNITDT
rarchd		EQU	RARCHD-UNITDT
luswd0		EQU	LUSWD0-UNITDT
ldswd0		EQU	LDSWD0-UNITDT
ruswd0		EQU	RUSWD0-UNITDT
rdswd0		EQU	RDSWD0-UNITDT
luswd1		EQU	LUSWD1-UNITDT
ldswd1		EQU	LDSWD1-UNITDT
ruswd1		EQU	RUSWD1-UNITDT
rdswd1		EQU	RDSWD1-UNITDT
luswd2		EQU	LUSWD2-UNITDT
ldswd2		EQU	LDSWD2-UNITDT
ruswd2		EQU	RUSWD2-UNITDT
rdswd2		EQU	RDSWD2-UNITDT
luswd8		EQU	LUSWD8-UNITDT
ldswd8		EQU	LDSWD8-UNITDT
ruswd8		EQU	RUSWD8-UNITDT
rdswd8		EQU	RDSWD8-UNITDT
luswd9		EQU	LUSWD9-UNITDT
ldswd9		EQU	LDSWD9-UNITDT
ruswd9		EQU	RUSWD9-UNITDT
rdswd9		EQU	RDSWD9-UNITDT
luswdA		EQU	LUSWDA-UNITDT
ldswdA		EQU	LDSWDA-UNITDT
ruswdA		EQU	RUSWDA-UNITDT
rdswdA		EQU	RDSWDA-UNITDT
sidndt		EQU	SIDNDT-UNITDT
sidnmk		EQU	SIDNMK-UNITDT
sdstpd		EQU	SDSTPD-UNITDT
holedt		EQU	HOLEDT-UNITDT
holed9		EQU	HOLED9-UNITDT
holed0		EQU	HOLED0-UNITDT
fance0		EQU	FANCE0-UNITDT
fance1		EQU	FANCE1-UNITDT
fance4		EQU	FANCE4-UNITDT
fance5		EQU	FANCE5-UNITDT
wakls0		EQU	WAKLS0-UNITDT
wakls1		EQU	WAKLS1-UNITDT
wakrs0		EQU	WAKRS0-UNITDT
wakrs1		EQU	WAKRS1-UNITDT
wakud0		EQU	WAKUD0-UNITDT
wakud1		EQU	WAKUD1-UNITDT
wakud2		EQU	WAKUD2-UNITDT
wakud3		EQU	WAKUD3-UNITDT
wakud4		EQU	WAKUD4-UNITDT
wakud5		EQU	WAKUD5-UNITDT
wakud6		EQU	WAKUD6-UNITDT
wakud7		EQU	WAKUD7-UNITDT
wakud8		EQU	WAKUD8-UNITDT
wakud9		EQU	WAKUD9-UNITDT
lbrgdt		EQU	LBRGDT-UNITDT
wbrgdt		EQU	WBRGDT-UNITDT
uscrbd		EQU	USCRBD-UNITDT
dscrbd		EQU	DSCRBD-UNITDT
lscrbd		EQU	LSCRBD-UNITDT
rscrbd		EQU	RSCRBD-UNITDT
uscrd1		EQU	USCRD1-UNITDT
dscrd1		EQU	DSCRD1-UNITDT
lscrd1		EQU	LSCRD1-UNITDT
rscrd1		EQU	RSCRD1-UNITDT
ushdwd		EQU	USHDWD-UNITDT
dshdwd		EQU	DSHDWD-UNITDT
lshdwd		EQU	LSHDWD-UNITDT
rshdwd		EQU	RSHDWD-UNITDT
crptdt		EQU	CRPTDT-UNITDT
cedged		EQU	CEDGED-UNITDT
wroad0		EQU	WROAD0-UNITDT
wroad1		EQU	WROAD1-UNITDT
;;;;;;;;lroadd		EQU	LROADD-UNITDT
;;;;;;;;wroadd		EQU	WROADD-UNITDT
mwald0		EQU	MWALD0-UNITDT
mwald1		EQU	MWALD1-UNITDT
mwald2		EQU	MWALD2-UNITDT
mwald3		EQU	MWALD3-UNITDT
mwalc0		EQU	MWALC0-UNITDT
mwalc1		EQU	MWALC1-UNITDT
crtnd0		EQU	CRTND0-UNITDT
crtnd1		EQU	CRTND1-UNITDT
crtnd2		EQU	CRTND2-UNITDT
crtnd3		EQU	CRTND3-UNITDT
crtnd8		EQU	CRTND8-UNITDT
crtnd9		EQU	CRTND9-UNITDT
crtndA		EQU	CRTNDA-UNITDT
crtndB		EQU	CRTNDB-UNITDT
yoroid		EQU	YOROID-UNITDT
pillrd		EQU	PILLRD-UNITDT
tldaid		EQU	TLDAID-UNITDT
uwndwd		EQU	UWNDWD-UNITDT
dwndwd		EQU	DWNDWD-UNITDT
lwndwd		EQU	LWNDWD-UNITDT
rwndwd		EQU	RWNDWD-UNITDT
twcrdt		EQU	TWCRDT-UNITDT
btbldt		EQU	BTBLDT-UNITDT
spild0		EQU	SPILD0-UNITDT
spild1		EQU	SPILD1-UNITDT
spild2		EQU	SPILD2-UNITDT
spild3		EQU	SPILD3-UNITDT
wwaku0		EQU	WWAKU0-UNITDT
wwaku1		EQU	WWAKU1-UNITDT
wwaku2		EQU	WWAKU2-UNITDT
wwaku3		EQU	WWAKU3-UNITDT
wwaku4		EQU	WWAKU4-UNITDT
wwaku5		EQU	WWAKU5-UNITDT
wwaku6		EQU	WWAKU6-UNITDT
wwaku7		EQU	WWAKU7-UNITDT
wwaku8		EQU	WWAKU8-UNITDT
wwaku9		EQU	WWAKU9-UNITDT
btakid		EQU	BTAKID-UNITDT
stakid		EQU	STAKID-UNITDT
bltwd0		EQU	BLTWD0-UNITDT
bltwd1		EQU	BLTWD1-UNITDT
stand0		EQU	STAND0-UNITDT
stand1		EQU	STAND1-UNITDT
chmnyd		EQU	CHMNYD-UNITDT
ovend0		EQU	OVEND0-UNITDT
rackdt		EQU	RACKDT-UNITDT
tlifdt		EQU	TLIFDT-UNITDT
ylifdt		EQU	YLIFDT-UNITDT
clifd0		EQU	CLIFD0-UNITDT
clifd1		EQU	CLIFD1-UNITDT
clifd2		EQU	CLIFD2-UNITDT
clifd3		EQU	CLIFD3-UNITDT
tlifd0		EQU	TLIFD0-UNITDT
tlifd1		EQU	TLIFD1-UNITDT
tlifd2		EQU	TLIFD2-UNITDT
tlifd3		EQU	TLIFD3-UNITDT
clifdt		EQU	CLIFDT-UNITDT
slifdt		EQU	SLIFDT-UNITDT
slifdd		EQU	SLIFDD-UNITDT
clifdd		EQU	CLIFDD-UNITDT
timtd0		EQU	TIMTD0-UNITDT
timtd1		EQU	TIMTD1-UNITDT
timtd2		EQU	TIMTD2-UNITDT
timtd3		EQU	TIMTD3-UNITDT
cwndw0		EQU	CWNDW0-UNITDT
cwndw1		EQU	CWNDW1-UNITDT
cwndw2		EQU	CWNDW2-UNITDT
cwndw3		EQU	CWNDW3-UNITDT
cwndw4		EQU	CWNDW4-UNITDT
cwndw5		EQU	CWNDW5-UNITDT
cwndw6		EQU	CWNDW6-UNITDT
cwndw7		EQU	CWNDW7-UNITDT
cstged		EQU	CSTGED-UNITDT
lfwldc		EQU	LFWLDC-UNITDT
rtwldc		EQU	RTWLDC-UNITDT
upwldc		EQU	UPWLDC-UNITDT
dnwldc		EQU	DNWLDC-UNITDT
tgblkd		EQU	TGBLKD-UNITDT
dkan10		EQU	DKAN10-UNITDT
dkan11		EQU	DKAN11-UNITDT
jytnd0		EQU	JYTND0-UNITDT
jytnd1		EQU	JYTND1-UNITDT
jytnd2		EQU	JYTND2-UNITDT
jytnd3		EQU	JYTND3-UNITDT
jytnd4		EQU	JYTND4-UNITDT
trmkdt		EQU	TRMKDT-UNITDT
ygkbd0		EQU	YGKBD0-UNITDT
ygkbd1		EQU	YGKBD1-UNITDT
ygkbd2		EQU	YGKBD2-UNITDT
ygkbd3		EQU	YGKBD3-UNITDT
;
;
;
;==========================  FIX UNIT  ==================================
lucrd0		EQU	LUCRD0-UNITDT
ldcrd0		EQU	LDCRD0-UNITDT
rucrd0		EQU	RUCRD0-UNITDT
rdcrd0		EQU	RDCRD0-UNITDT
lupld0		EQU	LUPLD0-UNITDT
ldpld0		EQU	LDPLD0-UNITDT
rupld0		EQU	RUPLD0-UNITDT
rdpld0		EQU	RDPLD0-UNITDT
lucrd8		EQU	LUCRD8-UNITDT
ldcrd8		EQU	LDCRD8-UNITDT
rucrd8		EQU	RUCRD8-UNITDT
rdcrd8		EQU	RDCRD8-UNITDT
lupld8		EQU	LUPLD8-UNITDT
ldpld8		EQU	LDPLD8-UNITDT
rupld8		EQU	RUPLD8-UNITDT
rdpld8		EQU	RDPLD8-UNITDT
lucpl0		EQU	LUCPL0-UNITDT
ldcpl0		EQU	LDCPL0-UNITDT
rucpl0		EQU	RUCPL0-UNITDT
rdcpl0		EQU	RDCPL0-UNITDT
lucpl1		EQU	LUCPL1-UNITDT
ldcpl1		EQU	LDCPL1-UNITDT
rucpl1		EQU	RUCPL1-UNITDT
rdcpl1		EQU	RDCPL1-UNITDT
monod0		EQU	MONOD0-UNITDT
monod1		EQU	MONOD1-UNITDT
mblokd		EQU	MBLOKD-UNITDT
mblkd0		EQU	MBLKD0-UNITDT
mblkd1		EQU	MBLKD1-UNITDT
mblkd2		EQU	MBLKD2-UNITDT
mblkd3		EQU	MBLKD3-UNITDT
mblkd4		EQU	MBLKD4-UNITDT
onswhd		EQU	ONSWHD-UNITDT
ofswhd		EQU	OFSWHD-UNITDT
smldid		EQU	SMLDID-UNITDT
firedt		EQU	FIREDT-UNITDT
tarudt		EQU	TARUDT-UNITDT
opnykd		EQU	OPNYKD-UNITDT
tabled		EQU	TABLED-UNITDT
beddat		EQU	BEDDAT-UNITDT
kchird		EQU	KCHIRD-UNITDT
qchird		EQU	QCHIRD-UNITDT
bchird		EQU	BCHIRD-UNITDT
schird		EQU	SCHIRD-UNITDT
danrod		EQU	DANROD-UNITDT
kzripd		EQU	KZRIPD-UNITDT
kzrisd		EQU	KZRISD-UNITDT
kzribd		EQU	KZRIBD-UNITDT
upstep		EQU	UPSTEP-UNITDT
dnstep		EQU	DNSTEP-UNITDT
kdnstp		EQU	KDNSTP-UNITDT
udstep		EQU	UDSTEP-UNITDT
udstp1		EQU	UDSTP1-UNITDT
wrsstp		EQU	WRSSTP-UNITDT
tbrstp		EQU	TBRST0-UNITDT
wgated		EQU	WGATED-UNITDT
ustepd		EQU	USTEPD-UNITDT
dstepd		EQU	DSTEPD-UNITDT
ustep1		EQU	USTEP1-UNITDT
dstep1		EQU	DSTEP1-UNITDT
cwlkzd		EQU	CWLKZD-UNITDT
bblmpd		EQU	BBLMPD-UNITDT
rouyad		EQU	ROUYAD-UNITDT
roukyd		EQU	ROUKYD-UNITDT
tkbox0		EQU	TKBOX0-UNITDT
tkbox1		EQU	TKBOX1-UNITDT
tkbox2		EQU	TKBOX2-UNITDT
tkbox3		EQU	TKBOX3-UNITDT
tthld0		EQU	TTHLD0-UNITDT
tthld1		EQU	TTHLD1-UNITDT
tthld2		EQU	TTHLD2-UNITDT
tthld3		EQU	TTHLD3-UNITDT
tthld4		EQU	TTHLD4-UNITDT
tthld5		EQU	TTHLD5-UNITDT
tthld6		EQU	TTHLD6-UNITDT
tthld7		EQU	TTHLD7-UNITDT
lucrdc		EQU	LUCRDC-UNITDT
ldcrdc		EQU	LDCRDC-UNITDT
rucrdc		EQU	RUCRDC-UNITDT
rdcrdc		EQU	RDCRDC-UNITDT
lupldc		EQU	LUPLDC-UNITDT
ldpldc		EQU	LDPLDC-UNITDT
rupldc		EQU	RUPLDC-UNITDT
rdpldc		EQU	RDPLDC-UNITDT
slstp0		EQU	SLSTP0-UNITDT
slstp1		EQU	SLSTP1-UNITDT
slstp2		EQU	SLSTP2-UNITDT
slstp3		EQU	SLSTP3-UNITDT
slstp4		EQU	SLSTP4-UNITDT
slstp5		EQU	SLSTP5-UNITDT
slstp6		EQU	SLSTP6-UNITDT
slstp7		EQU	SLSTP7-UNITDT
ttbod0		EQU	TTBOD0-UNITDT
ttbod1		EQU	TTBOD0-UNITDT
ttbog0		EQU	TTBOG0-UNITDT
ttbog1		EQU	TTBOG0-UNITDT
ttbog2		EQU	TTBOG0-UNITDT
ttbog3		EQU	TTBOG0-UNITDT
tbrst0		EQU	TBRST0-UNITDT
tbrst1		EQU	TBRST1-UNITDT
tbrst2		EQU	TBRST2-UNITDT
tbrst3		EQU	TBRST3-UNITDT
tapdt0		EQU	TAPDT0-UNITDT
tapdt1		EQU	TAPDT1-UNITDT
tapdt2		EQU	TAPDT2-UNITDT
kntrdt0		EQU	KNTRDT0-UNITDT
kntrdt1		EQU	KNTRDT1-UNITDT
kntrdt2		EQU	KNTRDT2-UNITDT
kntrdt3		EQU	KNTRDT3-UNITDT
ssidid		EQU	SSIDID-UNITDT
ssrmd0		EQU	SSRMD0-UNITDT
ssrmd1		EQU	SSRMD1-UNITDT
ssrmd2		EQU	SSRMD2-UNITDT
ssrmd3		EQU	SSRMD3-UNITDT
ssrmd4		EQU	SSRMD4-UNITDT
ssrmd5		EQU	SSRMD5-UNITDT
cwuddt		EQU	CWUDDT-UNITDT
cwlrdt		EQU	CWLRDT-UNITDT
wgatop0		EQU	WGATOP0-UNITDT
wgatop1		EQU	WGATOP1-UNITDT
wgatop2		EQU	WGATOP2-UNITDT
wgatop3		EQU	WGATOP3-UNITDT
haisui		EQU	HAISUI-UNITDT
tapdt3		EQU	TAPDT3-UNITDT
tapdt4		EQU	TAPDT4-UNITDT
dkan00		EQU	DKAN00-UNITDT
dkan01		EQU	DKAN01-UNITDT
dkan02		EQU	DKAN02-UNITDT
dkan03		EQU	DKAN03-UNITDT
dkan20		EQU	DKAN20-UNITDT
dkan21		EQU	DKAN21-UNITDT
dkan22		EQU	DKAN22-UNITDT
dkan23		EQU	DKAN23-UNITDT
dkan30		EQU	DKAN30-UNITDT
dkan31		EQU	DKAN31-UNITDT
dkan32		EQU	DKAN32-UNITDT
dkan33		EQU	DKAN33-UNITDT
dkan40		EQU	DKAN40-UNITDT
rupydt		EQU	RUPYDT-UNITDT
kbana0		EQU	KBANA0-UNITDT
kbana1		EQU	KBANA1-UNITDT
skband		EQU	SKBAND-UNITDT
entrd0		EQU	ENTRD0-UNITDT
kuidt0		EQU	KUIDT0-UNITDT
bosice		EQU	BOSICE-UNITDT
djwpyk		EQU	DJWPYK-UNITDT
kjtand		EQU	KJTAND-UNITDT
kjrodt		EQU	KJRODT-UNITDT
kjmizd		EQU	KJMIZD-UNITDT
kjdaid		EQU	KJDAID-UNITDT
onswh1		EQU	ONSWH1-UNITDT
ofswh1		EQU	OFSWH1-UNITDT
djwpy1		EQU	DJWPY1-UNITDT
inriyk		EQU	INRIYK-UNITDT
cngyk0		EQU	CNGYK0-UNITDT
cngyk1		EQU	CNGYK1-UNITDT
urnidt		EQU	URNIDT-UNITDT
polydd		EQU	POLYDD-UNITDT
stand2		EQU	STAND2-UNITDT
stand3		EQU	STAND3-UNITDT
stand4		EQU	STAND4-UNITDT
stand5		EQU	STAND5-UNITDT
saradt		EQU	SARADT-UNITDT
tmizud		EQU	TMIZUD-UNITDT
booktd		EQU	BOOKTD-UNITDT
konrod		EQU	KONROD-UNITDT
musikd		EQU	MUSIKD-UNITDT
botldt		EQU	BOTLDT-UNITDT
cplisd		EQU	CPLISD-UNITDT
dvldid		EQU	DVLDID-UNITDT
;;;;;onswh2		EQU	ONSWH2-UNITDT
;;;;;ofswh2		EQU	OFSWH2-UNITDT
slmbsd		EQU	SLMBSD-UNITDT
slmbs1		EQU	SLMBS1-UNITDT
dmswhd		EQU	DMSWHD-UNITDT
emyykd		EQU	EMYYKD-UNITDT
emyblk		EQU	EMYBLK-UNITDT
cngana		EQU	CNGANA-UNITDT
udmbmb		EQU	UDMBMB-UNITDT
ddmbmb		EQU	DDMBMB-UNITDT
ldmbmb		EQU	LDMBMB-UNITDT
rdmbmb		EQU	RDMBMB-UNITDT
monod2		EQU	MONOD2-UNITDT
hisui0		EQU	HISUI0-UNITDT
hisui1		EQU	HISUI1-UNITDT
hisui2		EQU	HISUI2-UNITDT
hisui3		EQU	HISUI3-UNITDT
hkrid0		EQU	HKRID0-UNITDT
hkrid1		EQU	HKRID1-UNITDT
hkrid2		EQU	HKRID2-UNITDT
boskme		EQU	BOSKME-UNITDT
bsentr		EQU	BSENTR-UNITDT
gnnkz0		EQU	GNNKZ0-UNITDT
gnnkz1		EQU	GNNKZ1-UNITDT
gnnkz2		EQU	GNNKZ2-UNITDT
gnnkz8		EQU	GNNKZ8-UNITDT
gnnkz9		EQU	GNNKZ9-UNITDT
gnnkzA		EQU	GNNKZA-UNITDT
gnnkzB		EQU	GNNKZB-UNITDT
iceat2		EQU	ICEAT2-UNITDT
honeyk		EQU	HONEYK-UNITDT
numayk		EQU	NUMAYK-UNITDT
ykmrk0		EQU	YKMRK0-UNITDT
ykmrk1		EQU	YKMRK1-UNITDT
ykmrk2		EQU	YKMRK2-UNITDT
;
;
;
;
;
;
;
		END
