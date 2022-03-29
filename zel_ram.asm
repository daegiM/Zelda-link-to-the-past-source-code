;
		NOLIST
;--------------------------------------------------------------------
WORK		EQU	000H		; work area
WORK0		EQU	000H
WORK1		EQU	001H
WORK2		EQU	002H
WORK3		EQU	003H
WORK4		EQU	004H
WORK5		EQU	005H
WORK6		EQU	006H
WORK7		EQU	007H
WORK8		EQU	008H
WORK9		EQU	009H
WORKA		EQU	00AH
WORKB		EQU	00BH
WORKC		EQU	00CH
WORKD		EQU	00DH
WORKE		EQU	00EH
WORKF		EQU	00FH
;
;--------------------------------------------------------------------
SLMODE		EQU	010H		; select MODE
GAMEMD		EQU	011H		; Game Mode select no.
NMIFLG		EQU	012H		; NMI flag
BLKFLG		EQU	013H		; Blanking check flag
VRFLG		EQU	014H		; VMA pointer flag
CGVMAF		EQU	015H		; CG. VMA check flag
B3CHFG		EQU	016H		; BG.3 write flag
BGWTFG		EQU	017H		; BG. write point flag
BGCHFG		EQU	018H		; BG. change write flag
OBCCFG		EQU	019H		; OBJ. BG. character change flag
FCNT		EQU	01AH		; frame counter
FRCNT		EQU	FCNT		; ''
GMMODE		EQU	01BH		; ground/danjyon mode (0:ground , 1:danjyon)
DJFLG		EQU	GMMODE		; 0:ground 1:danjyon 
DPMAIN		EQU	01CH		; display mode main
DPSUB		EQU	01DH		;              sub
WDMAIN		EQU	01EH		; window display main
WDSUB		EQU	01FH		;                sub
;
;----------- player ram ----------------------------------------------
ZWORK		EQU	020H		; title demo ram
;
PLYPS1		EQU	020H		; Y-pos. low
PLYPS0		EQU	PLYPS1+1	;        hi
PLXPS1		EQU	PLYPS0+1	; X-pos. low
PLXPS0		EQU	PLXPS1+1	;        hi
PLZPS1		EQU	PLXPS0+1	; Z-pos. low
PLZPS0		EQU	PLZPS1+1	;        hi
PLMUKI		EQU	PLZPS0+1	; idou houkou
PLYSPD		EQU	PLMUKI+1	; Y-speed
PLXSPD		EQU	PLYSPD+1	; X-speed
PLZSPD		EQU	PLXSPD+1	; Z-speed
PLYBUF		EQU	PLZSPD+1	; Y-speed buff
PLXBUF		EQU	PLYBUF+1	; X-speed buff
PLZBUF		EQU	PLXBUF+1	; Z-speed buff
PYFLCH		EQU	PLZBUF+1	; player flem chenge
PYCRCH		EQU	PYFLCH+1	; player chara chenge
PLMKCH		EQU	PYCRCH+1	; player chara muki
PLYMVC		EQU	PLMKCH+1	;   "    Y-pos dyoo
PLXMVC		EQU	PLYMVC+1	;   "    X-pos dyoo  
PLHYBF0		EQU	PLXMVC+1	;   "    jump hozon work (l)
PLHYBF1		EQU	PLHYBF0+1	;   "    jump hozon work (h)
SPYPS		EQU	PLHYBF1+1	;   "    next Y-pos (L)
SPYPS1		EQU	SPYPS+1		;   "	 next Y-pos (H)	
SPXPS		EQU	SPYPS1+1	;   "    next X-pos (L)
SPXPS1		EQU	SPXPS+1		;   "    next X-pos (H)
BGCRNO		EQU	SPXPS1+1	;   "	 special BG sub flag (L)
BGCRNO1		EQU	BGCRNO+1	;   "	 special BG sub flag (H)
KENKY		EQU	BGCRNO1+1	;   "	 ken push key flag
KENKYL		EQU	KENKY+1		;   "    y key flag
KENMD		EQU	KENKYL+1	;   "	 ken mode
KENFM		EQU	KENMD+1		;   " 	 ken flem counter
PLYHN0		EQU	KENFM+1		;   "	 Y-pos hozon (H) 
PLXHN0		EQU	PLYHN0+1	;   "    X-pos hozon (H)
PLYHN1		EQU	PLXHN0+1	;   "	 Y-pos hozon (L)
PLXHN1		EQU	PLYHN1+1	;   "	 X-pos hozon (L)
PLMVKY		EQU	PLXHN1+1	;   "	 tate key flag
PLMVKY1		EQU	PLMVKY+1	;   "	 yoko key flag
KNCRYP		EQU	PLMVKY1+1	;   "	 enmy ken haba y-pos
KNCRXP		EQU	KNCRYP+1	;   "	 enmy ken haba x-pos
HANEFG		EQU	KNCRXP+1	;   "	 hanekaeri flag
HANIFG		EQU	HANEFG+1	;   "    In fight area flag 
HANIFG1		EQU	HANIFG+1	;   "	 ken difence flag
DRATMV		EQU	HANIFG1+1	;   "	 door auto move flag (L)
DRATMV1		EQU	DRATMV+1	;   "	 door auto move flag (H)
OMSBMD		EQU	DRATMV1+1	;   "	 oam sub mode flag
KAKUFM		EQU	OMSBMD+1	;   "	 kakuremino flem flag
DIEFG		EQU	KAKUFM+1	;   "	 die flag
PYATFG		EQU	DIEFG+1		;   "    auto flag
DSTMFM		EQU	PYATFG+1	;   "    dash sound timer flem conter
PYMKFG		EQU	DSTMFM+1	;   "    muki kotei flag
PLHNL0		EQU	PYMKFG+1	;   "    y-pos hozon (l) 0
PLHNH0		EQU	PLHNL0+1	;   "    y-pos hozon (H) 0
PLHNL1		EQU	PLHNH0+1	;   "    y-pos hozon (L) 1
PLHNH1		EQU	PLHNL1+1	;   "    y-pos hozon (H) 1
KAKUMD		EQU	PLHNH1+1	;   "	 kakuremino mode
RABIFG		EQU	KAKUMD+1	;   "    rabit hozon flag 
PSTPFG		EQU	RABIFG+1	;   "    step check flag
KDFGST		EQU	PSTPFG+1	;   "    kaidan BG check flag
HOLEFG		EQU	KDFGST+1	;   "	 hole BG check flag
HOLEFG1		EQU	HOLEFG+1	;   "	 hole data index flag
HOLEFG2		EQU	HOLEFG1+1	;   "    hole mode flag
PLHLFM		EQU	HOLEFG2+1	;   "    hole flem counter
LNMODE		EQU	PLHLFM+1	;   "    mode flag
PYSPFG		EQU	LNMODE+1	;   "	 speed index flag
BKONFG		EQU	PYSPFG+1	;   "	 block bit on flag (L)
BKONFG1		EQU	BKONFG+1	;   "    block bit on flag (H)
BLKFLM		EQU	BKONFG1+1	;   "	 block wait flem counter
DRMKFG		EQU	BLKFLM+1	;   "    door muki flag 
DRMKFG1		EQU	DRMKFG+1	;   "    door muki flag 1
PYBGUN		EQU	DRMKFG1+1	;   "    BG uusen juni flag
PYBGUN1		EQU	PYBGUN+1	;   "    BG uusen juni flag 1
;
PWORK0		EQU	PYBGUN1+1	; player work 0 (bg check flag)
PWORK1		EQU	PWORK0+1	;   "    work 1 (keya1)
PWORK2		EQU	PWORK1+1	;   "    work 2 (h-scr check flag)
PWORK3		EQU	PWORK2+1	;   "    work 3 (v-scr check flag)
PWORK4		EQU	PWORK3+1	;   "    work 4 (naname bg check counter)
PWORK5		EQU	PWORK4+1	;   "    work 5 (special bg hosei houkou)
PWORK6		EQU	PWORK5+1	;   "    work 6 (x,y-door flag)
PWORK7		EQU	PWORK6+1	;   "    work 7 (special naname check flag)
PWORK8		EQU	PWORK7+1	;   "    work 8 (special bg no flag)
PWORK9		EQU	PWORK8+1	;   "    work 9 (x,y-door hosei flag)
PWORKA		EQU	PWORK9+1	;   "    work A (special bg x-hosei dyoo)
PWORKB		EQU	PWORKA+1	;   "    work B (special bg y-hosei dyoo)
BMWORK		EQU	PWORKB+1	;   "    beam work 
BMWORK5		EQU	BMWORK+5	;
;
PTBIFG		EQU	BMWORK5+1	; player tobi flag
KENTIM		EQU	PTBIFG+1	; player ken kaiten timer
OMPHZN		EQU	KENTIM+2	; player omote,ura hozon flag 
;;;;;;		EQU	OMPHZN+1	;
;
SCRPNT		EQU	084H		;screen no kihon no iti
XWRITE		EQU	SCRPNT+2	;yoko no unit no iti
YWRITE		EQU	XWRITE+2	;tate no unit no iti
MPDTNO		EQU	YWRITE+2	;dono map ka o simesu 0--8
MPDTN1		EQU	MPDTNO+2	; BG.1 map no.
;
CGBFWK		EQU	08DH		; CG. buffer work
;--------------------------------------------------------------------
OAMADR		EQU	090H		; oam address
OSBADR		EQU	OAMADR+2	; oam-sub address
;
MD2105		EQU	OSBADR+2	; 2105H
MD2106		EQU	MD2105+1	; 2106H
WD2123		EQU	MD2106+1	; 2123H
WD2124		EQU	WD2123+1	; 2124H
WD2125		EQU	WD2124+1	; 2125H
WD2130		EQU	WD2125+1	; 2130H
WD2131		EQU	WD2130+1	; 2131H
WD420C		EQU	WD2131+1	; 420CH
WD2132R		EQU	WD420C+1	; 2132H(red)
WD2132G		EQU	WD2132R+1	;      (green)
WD2132B		EQU	WD2132G+1	;      (blue)
;
RMXYCT		EQU	0A0H		; room x,y-counter
BKRMPT		EQU	0A2H		;      befoer room pointer
FLORNO		EQU	0A4H		;      floor no.
RMCKXF		EQU	0A6H		;      x-check flag
RMCKYF		EQU	0A7H		;      y-check flag
RMCKPT		EQU	0A8H		;      check pointer
RMXCPT		EQU	0A9H		;      x-check pointer
RMYCPT		EQU	0AAH		;      y-
;NXRMCT		EQU	0ACH		; next room counter
;
BGMVFG		EQU	0ADH		; BG. move data flag
INFDF0		EQU	0AEH		; information data flag-0
INFDF1		EQU	0AFH		;                      -1
;
JRSBPT		EQU	0B0H		; JSRSUB pointer
XSTCNT		EQU	0B2H		; x-set counter
XSTCTH		EQU	0B3H		;
YSTCNT		EQU	0B4H		; y-set
YSTCTH		EQU	0B5H		;
;
DTBFWK		EQU	0B7H		; data buffer work
DTRDPT		EQU	0BAH		; data read pointer
;
WORKZ		EQU	0BDH		; work area
;
BFP000		EQU	0BFH		; buffer + 000H
BFP002		EQU	BFP000+3	;        + 002H
BFP004		EQU	BFP002+3	;        + 004H
BFP006		EQU	BFP004+3	;        + 006H
BFP080		EQU	BFP006+3	;        + 080H
BFP082		EQU	BFP080+3	;        + 082H
BFP084		EQU	BFP082+3	;        + 084H
BFP086		EQU	BFP084+3	;        + 086H
BFP100		EQU	BFP086+3	;        + 100H
BFP180		EQU	BFP100+3	;        + 180H
BFP200		EQU	BFP180+3	;        + 200H
BFPZZZ		EQU	BFP200+3	;
;
TATYOK		EQU	0C0H		;BG o tate ni kakuka yoko ni kakuka
MPCNT		EQU	TATYOK+2	;scrol no kaunto
SCRCTX		EQU	MPCNT+2		;yoko      "
SCRCTY		EQU	SCRCTX+2	;>GDBUF0 or >GDBUF1 ga hairu (kansetu syosyoko)
;
CWORK0		EQU	SCRCTY+2	; char. work - 0
CWORK1		EQU	CWORK0+1	;            - 1
CWORK2		EQU	CWORK1+1	;            - 2
CWORK3		EQU	CWORK2+1	;            - 3
CWORK4		EQU	CWORK3+1	;            - 4
CWORK5		EQU	CWORK4+1	;            - 5
CWORK6		EQU	CWORK5+1	;            - 6
CWORK7		EQU	CWORK6+1	;            - 7
CWORK8		EQU	CWORK7+1	;            - 89
;
;
SCCH1		EQU	BFPZZZ		; BG-1. H-scroll counter_L
SCCH11		EQU	0E1H		;                       _H
SCCH2		EQU	0E2H		; BG-2.
SCCH21		EQU	0E3H
SCCH3		EQU	0E4H		; BG-3.
SCCH31		EQU	0E5H
SCCV1		EQU	0E6H		; BG-1. V-scroll counter_L
SCCV11		EQU	0E7H		;                       _H
SCCV2		EQU	0E8H		; BG-2.
SCCV21		EQU	0E9H
SCCV3		EQU	0EAH		; BG-3.
SCCV31		EQU	0EBH
;
PSCKRM		EQU	0ECH		; position check ram (G=03F8H , D=01F8H)
PLBGCKF		EQU	0EEH		; player BG. check flag (0:BG2 , 1:BG1)
PLMDCCF		EQU	0EFH		;            mode change check flag
;
;
KEYA1		EQU	0F0H		; key repeat (A,B,sl,st,u,d,l,r)
KEYB1		EQU	0F1H		;
KEYA1L		EQU	0F2H		;            (X,Y,L,R          )
KEYB1L		EQU	0F3H		;
KEYA2		EQU	0F4H		;     triga
KEYB2		EQU	0F5H		;
KEYA2L		EQU	0F6H		;
KEYB2L		EQU	0F7H		;
KEYBF		EQU	0F8H		;     back_up
KEYBFL		EQU	0FAH		;
;
RSXYCKF		EQU	0FCH		; reset x,y check flag
;
;
POLYTIME	EQU	0FFH		; poly-gon time
;--------------------------------------------------------------------
;--------------------------------------------------------------------
PCHPT0		EQU	100H		; player character pointer
PCHPT1		EQU	PCHPT0+2	;
PCHPT2		EQU	PCHPT1+2	;
;
KENCPT		EQU	PCHPT2+3	; sword
TATCPT		EQU	KENCPT+1	; shild
ITMCPT		EQU	TATCPT+1	; [B],[Y]
;
;
GOVRCFG		EQU	10AH		; game-over check flag
;
NXSLMD		EQU	10CH		; next select MODE
;
GOPOSF		EQU	10EH		;
;
RMDTPT		EQU	110H		; room data pointer
;
SPMCFG		EQU	112H		; special magic flag
;
EXITFG		EQU	114H		; exit-door flag
;
NXBWFG		EQU	116H
B1CWF0		EQU	NXBWFG
B1CWF1		EQU	NXBWFG
;
CHADRF		EQU	118H		; chracter change Vram address
;
YUREXD		EQU	11AH		; yure x-data
YUREYD		EQU	11CH		;      y-data
SSCCH2		EQU	11EH		; set SCCH2
SSCCH1		EQU	120H		;     SCCH1
SSCCV2		EQU	122H		;     SCCV2
SSCCV1		EQU	124H		;     SCCV1
;
PSCCCT		EQU	126H		; player scroll counter
;
IRQSWFG		EQU	128H		; IRQ swich flag
;
POLYCFG		EQU	12AH		; polygon check flag
;
SOUND0		EQU	012CH		; sound port-0
SOUND1		EQU	SOUND0+1	;            1
SOUND2		EQU	SOUND1+1	;            2
SOUND3		EQU	SOUND2+1	;            3
SVSND0		EQU	SOUND3+1	;       check
SVCKF1		EQU	SVSND0+1	;       check
SNDSFG0		EQU	SVCKF1+1	; sound0 set flag
SVCKF0		EQU	SNDSFG0+1	;        check flag
;
WTRADR		EQU	SVCKF0+1	; water write address
;
SNDPCFG		EQU	WTRADR+2	; sound program check flag
;
STACK		EQU	100H		; Stack area
STACKED		EQU	SNDPCFG+1
;
;--------------------------------------------------------------------
ITEMMD		EQU	0200H		; item select check  mode
MAPDMD		EQU	ITEMMD		; map display mode
GETITM0		EQU	ITEMMD+2	; B no mmoteiru yatu
;GETITM1		EQU	GETITM0+2	; Y no yatu
;GETITM2		EQU	GETITM1+2	; Extra no yatu
;GETITM3		EQU	GETITM2+1	; spaceial no yatu
IWORK0		EQU	GETITM0+3	; item work 
MAPSCT		EQU	IWORK0		; map scroll counter
IFRCNT0		EQU	IWORK0+1	; item select frcnt 0
IFRCNT1		EQU	IFRCNT0+1	; item select frcnt 1 
KAICNT		EQU	IFRCNT1+1	; kaihuku no fram caunto
MAPNOW		EQU	KAICNT		; map main kaisu
KAIIDX		EQU	KAICNT+1	; kaihuku no print BG idx 
KAIFLG		EQU	KAIIDX+1	; kaihuku no flg
;
TMBMCT		EQU	KAIFLG+1	; tame beem cnt
;
MAPCFG		EQU	TMBMCT+2	; map check flag
MAPBGP		EQU	MAPCFG+1	; map next bg point
MAPLEV		EQU	MAPBGP+2	; map level
MAPWTA		EQU	MAPLEV+1	; map write adress
MAPSMK		EQU	MAPWTA+2	; map scrll muki
MPLKPX		EQU	MAPSMK+2	; map link obj set position x
MPLKPY		EQU	MPLKPX+2	;              "            y
;
MTRADR		EQU	MPLKPY+2	; mater address
MTRCBF		EQU	MTRADR+2	; mater clear buffer
;;;;;;		EQU	MTRCBF+8
;
MSGEFG		EQU	MTRCBF+8	; message write flag
;
;
BMCRFG		EQU	0280H		; BG. cross check flag
BMCRTM		EQU	BMCRFG+0AH	; hit on,off timer
BMZSPD		EQU	BMCRTM+0AH	; beam z-speed 
BMZPSL		EQU	BMZSPD+0AH	; beam z-pos (L)
BMZSDR		EQU	BMZPSL+0AH	; beam z-buff
;;;;;;		EQU	BMZSDR+0AH	;
;
;--------------------------------------------------------------------
KDATFG		EQU	02C0H		;   "    auto kaidan BG check flag
KDATFG1		EQU	KDATFG+1	;   "    auto kaidan bg check flag
PLBKFG		EQU	KDATFG1+1	;   "	 pull block flag
BKMODE		EQU	PLBKFG+1	;   "    block mode flag
BLHLFM		EQU	BKMODE+1	;   "    block holl flem counter
HANEFM		EQU	BLHLFM+1	;   "    hanekaeri flem counter
JMPTIM		EQU	HANEFM+1	;   "    jump times
PLZSPD1		EQU	JMPTIM+1	;   "    z-speed hozon
HLMKFG		EQU	PLZSPD1+2	;   "	 hole muki hozon
HLMKCT		EQU	HLMKFG+1	;   "    hole hosei timer
SWFLFM		EQU	HLMKCT+1	;   "    swim speed flem conter
SWDSMD		EQU	SWFLFM+1	;   "    swim dasei mode flag	
OPMTIM		EQU	SWDSMD+1	;   "    option timer flag
OPINDX		EQU	OPMTIM+2	;   "    option data index
OPJPFG		EQU	OPINDX+5	;   "	 option jump flag
OPJPIX		EQU	OPJPFG+1	;   "	 option jump index flag
OPJPTM		EQU	OPJPIX+1	;   "    option jump time flag
OPKGMD		EQU	OPJPTM+1	;   "    option kage mode flag
ATMTFG		EQU	OPKGMD+1	;   "    aitem moshi no flag
ATMTTM		EQU	ATMTFG+1	;   "    aitem mochi timer
ATMTHK		EQU	ATMTTM+1	;   "    aitem mochikata flag
TRIFFG		EQU	ATMTHK+1	;   "	 traiforce on,off flag
PXHZN1		EQU	TRIFFG+1	;   "	 player x-pos (L) hozon
PXHZN0		EQU	PXHZN1+1	;   "    player x-pos (H) hozon
PYHZN1		EQU	PXHZN0+1	;   "	 player y-pos (L) hozon
PYHZN0		EQU	PYHZN1+1	;   "	 player y-pos (H) hozon
RABFLG		EQU	PYHZN0+1	;   "    player rabit on,off flag
PYSTOP		EQU	RABFLG+1	;   "    stop flag
KAKUFM1		EQU	PYSTOP+1	;   "    kakuremino key wait
KNSTOP		EQU	KAKUFM1+1	;   "	 ken stop timer
PYALSP		EQU	KNSTOP+1	;   "    all stop flag
BATMFG		EQU	PYALSP+1	; takara bako bg check flag
HAKAFG		EQU	BATMFG+2	; haka bg check flag
ITMVFG		EQU	HAKAFG+2	; aitem move on flag
RUYAFG		EQU	ITMVFG+1	; rouya bg no flag
BMCHOK		EQU	RUYAFG+2	; bomb chach ok flag
INORON		EQU	BMCHOK+1	; inoru bg on,off flag
INORNO		EQU	INORON+1	; inoru bg check flag
INTEKI		EQU	INORNO+2	; inoru teki move on flag
DASFLM		EQU	INTEKI+1	; dash move flem counter
OPMSFG		EQU	DASFLM+1	; opiton messge on,off flag
CACHON		EQU	OPMSFG+2	; obj mochiage flag on 
PSSTOP		EQU	CACHON+1	; player speed stop flag
FTBGON		EQU	PSSTOP+1	; fot shot bg on flag
CHKONS		EQU	FTBGON+2	; chakushi sound on flag
OPNOSI		EQU	CHKONS+1	; option shouji nashi
DZHKOK		EQU	OPNOSI+1	; douzou hiku on flag
;
CRFLSH		EQU	PYFLASH		; player flash set
TMDTFG		EQU	USAGFG		; player tame dot flag
;
AITMMD		EQU	0300H		; player aitem mode flag
AITMBT		EQU	AITMMD+1	; player aitem bit flag
PKYNOT		EQU	AITMBT+1	; player key not flag
BPSHMD		EQU	PKYNOT+1	; player b key push mode flag
BPSHZN		EQU	BPSHMD+1	;    "   b key mode hozon flag
YPSHMD		EQU	BPSHZN+1	; player y key push mode flag
YPSHZN		EQU	YPSHMD+1	;        "     mode hozon flag
LOTITM		EQU	YPSHZN+1	; player magic flag
PYDMBT		EQU	LOTITM+1	;   "    y key in demo bit flag
PYDMBT1		EQU	PYDMBT+1	;  	"              bit flag 1 
PYDMMD		EQU	PYDMBT1+1	;     		"      mode
PYDMFM		EQU	PYDMMD+1	;  		"      flem counter
PYDMFM1		EQU	PYDMFM+1	;  		"      flem counter
PYDMNO		EQU	PYDMFM1+1	; 		"      times
PYDMNO1		EQU	PYDMNO+1	; 		"      times
PYDMTM		EQU	PYDMNO1+1	;		"      loop timer
BG1VMC		EQU	PYDMTM+1	; scrool move counter (v)
BG1HMC		EQU	BG1VMC+2	;         "           (h)
CACHOK		EQU	BG1HMC+2	; player katsugi flag 
KNBTFG		EQU	CACHOK+1	; ken bit flag
PYHAMI		EQU	KNBTFG+1	; player hasami flag
YPSCZN		EQU	PYHAMI+2	; player sccv y pos hozon flag
XPSCZN		EQU	YPSCZN+2	; player scch x pos hozon flag
KNSPMD		EQU	XPSCZN+2	; player ken special mode flag
PLMKPH		EQU	KNSPMD+2	; player muki hozon
PYFLASH		EQU	PLMKPH+1	; player flash flem counter
BELTFG		EQU	PYFLASH+1	; player belt conbear BG check flag
BELTCN		EQU	BELTFG+2	; player belt conbear on flag
KGHORM		EQU	BELTCN+1	; player kage houkou flag
KNTMFG		EQU	KGHORM+1	; player special ken times flag
SWFLMY		EQU	KNTMFG+2	; player swimming flem counter (X)
SWFLMX		EQU	SWFLMY+2	; player swimming flem counter (Y)
SWMODE		EQU	SWFLMX+2	; player swimming patarn flag
SWADFY		EQU	SWMODE+1	; swim add,sub flag (Y)
SWADFX		EQU	SWADFY+2	; swim add,sub flag (X)
SWSPFY		EQU	SWADFX+2	; swim speed on flag (Y)
SWSPFX		EQU	SWSPFY+2	; swim speed on flag (X)
FIRENO		EQU	SWSPFX+2	; fire BG no flag
SWMXSY		EQU	FIRENO+1	; swim speed max flag (Y)
SWMXSX		EQU	SWMXSY+2	; swim speed max flag (X)
SWYHKU		EQU	SWMXSX+2	; swim add,sub speed (Y)
SWXHKU		EQU	SWYHKU+2	; swim add,sub speed (X)
SWKASY		EQU	SWXHKU+2	; swim kasoku (Y)
SWKASX		EQU	SWKASY+2	; swim kasoku (X)
SWMUKI		EQU	SWKASX+2	; swim player muki flag
PWATER		EQU	SWMUKI+1	; water BG check flag
WTRSID		EQU	PWATER+2	; water side BG check flag
WATRFG		EQU	WTRSID+2	; water flag
PLCGRM		EQU	WATRFG+1	; player CG flag
PICEFG		EQU	PLCGRM+2	; ice BG check flag
ICEFLAG		EQU	PICEFG+2	; ice flag
USAGFG		EQU	ICEFLAG+1	; usagi hankan teki flag
NUKIFG		EQU	USAGFG+1	; nuki data flag
PRIONF		EQU	NUKIFG+2	; priority flag
SWAKEY		EQU	PRIONF+1	; swim a key flag
DKYHZN		EQU	SWAKEY+1	; DOT key hozon flag
ASWFLG		EQU	DKYHZN+1	; asase on,off flag
OMPTFG		EQU	ASWFLG+1	; oam point flag
PYMODE		EQU	OMPTFG+2	; oam mode set pointer
ASAMDE		EQU	PYMODE+1	; kusa mode flag
ASAFLM		EQU	ASAMDE+1	; kusa flem counter
KUSAFG		EQU	ASAFLM+1	; kusa bg check flag
WTASFG		EQU	KUSAFG+2	; asai water bg check flag
SHIBFG		EQU	WTASFG+2	; shibafu bg check flag
KGBGUN		EQU	SHIBFG+2	; kage bg uusen flag
BMRMOV		EQU	KGBGUN+2	; bumeran move flag
PIPIFG		EQU	BMRMOV+1	; piri piri on flag
OMCLCG		EQU	PIPIFG+1	; oam coler chenge flag
JMPZSP		EQU	OMCLCG+1	; jump z-speed hozon
JMPZSP1		EQU	JMPZSP+1	;	"
JMPZPS1		EQU	JMPZSP1+1	; jump z-pos hozon
MTKSFG		EQU	JMPZPS1+2	; motsu bg check flag
MTKSNO		EQU	MTKSFG+2	; motsu NO flag
MTIXFG		EQU	MTKSNO+2	; motsu index flag
DEMOFG		EQU	MTIXFG+1	; DEMO bit flag
PLAYDO		EQU	DEMOFG+1	; Do mode flag
GAKEFG		EQU	PLAYDO+1	; chijoo gake BG check flag
RASNFM		EQU	GAKEFG+4	; rasen timer 
DASHFG		EQU	RASNFM+1	; dash on flag !!
DAMEFG		EQU	DASHFG+1	; dameege flag
DASHFM		EQU	DAMEFG+1	; dash timer
TMLGFG		EQU	DASHFM+1	; jump time lag flag
DODMBT		EQU	TMLGFG+1	; DO demo bit flag
HIKUFG		EQU	DODMBT+1	; hiku no set flag
RASNYK		EQU	HIKUFG+1	; rasen yoko flem counter
KINSHI		EQU	RASNYK+1	; DO sousa kinshi flag
AITMBT1		EQU	KINSHI+1	; item bit check flag 1
MRTKFG		EQU	AITMBT1+1	; muteki flag
OPNGMD		EQU	MRTKFG+1	; oopning demo mode
OPNGFG		EQU	OPNGMD+1	; oopning demo player no flag
BOGMOV		EQU	OPNGFG+1	; bogan move bg hit flag
BGOFFG		EQU	BOGMOV+1	; bg check off flag
;;;;;;		EQU	BGOFFG+1	; 
;
BUADSB		EQU	0380H		; bumeran add,sub speed 
HIBSTAT		EQU	BUADSB+5	;    "    hibana on flag
BUPLYL		EQU	HIBSTAT+5	;    "    retrun y-pos (L) hozon
BUPLYH		EQU	BUPLYL+5	;    "    	       (H) hozon
HBFLEM		EQU 	BUPLYH+5	;    hibana flem counter
HBYPSL		EQU	HBFLEM+5	;    "           y-pos
HBXPSL		EQU	HBYPSL+2	;    "           x-pos
HBMUKI		EQU	HBXPSL+2	;    "		 muki
BUMFLM		EQU	HBMUKI+2	;    "	  kaiten flem counter
BUMODE		EQU	BUMFLM+5	;    "    kaiten mode no
BMKMHN		EQU	BUMODE+5	;    " 	  bumeran kaiten muki flag
BOMBYP		EQU	BMKMHN+5	; bomb    yarare y-pos
BOMBXP		EQU	BOMBYP+1	;    "    yarare x-pos
BOMINX		EQU	BOMBXP+1	;    "	  bomb index flag
BMFLFG		EQU	BOMINX+1	;    "    beam flem counter
BCDXPS		EQU	BMFLFG+5	;    "    kakera x-pos
BCDYPS		EQU	BCDXPS+4	;    "	  kakera y-pos
BCDMKI		EQU	BCDYPS+4	;    "	  kakera muki
BCDFLM		EQU	BCDMKI+2	;    "    kakera flem counter
BCDMNO		EQU	BCDFLM+2	;    "	  kake mode no
BMSTCT		EQU	BCDMNO+2	; aitem set index counter
YABGCK		EQU	BMSTCT+1	; ya	  scrool idou on flag
BMCDPR		EQU	YABGCK+5	; code 3 priorty flag
BMYINX		EQU	BMCDPR+5	; beam y-reji index flag
KMMODE		EQU	BMYINX+3	; tame dot kumo chara mode flag
KMYPMD		EQU	KMMODE+3	; tame dot kumo y pos mode flag
TMSWON		EQU	KMYPMD+6	; tama swichi on flag !!
KMFLEM		EQU	TMSWON+6	; tame dot kumo flem counter
BMBGNO		EQU	KMFLEM+3	; beam bg no counter
HKMVON		EQU	BMBGNO+5	; haka move on,off flag
BMDEFG		EQU	HKMVON+1	; bomb die flag
KNPASFG		EQU	BMDEFG+5	; ken pause flag
WRAFLM		EQU	KNPASFG+1	; warp wait timer
BELFLG		EQU	WRAFLM+1	; move yuka BG check flag
BELFCN		EQU	BELFLG+2	; move yuka on,off flag
SRMNFG		EQU	BELFCN+1	; sromon tama BG check on,off flag
USAGTM		EQU	SRMNFG+1	; usagi teki hankan timer
USGOFN		EQU	USAGTM+2	; usagi enmy on,off flag
ATHKOK		EQU	USGOFN+1	; aitem hiku on flag
BOGNTM		EQU	ATHKOK+1	; bogan BG check off timer flag
XRHIFG		EQU	BOGNTM+1	; player h-houkou gamen gai on flag
DOKATA		EQU	XRHIFG+2	; kousei scop move flag
TRCACH		EQU	DOKATA+1	; tori chach on flag
;
;--------------------------------------------------------------------
RMSTTT		EQU	0400H		; room door   on/off bit
EMYSTT		EQU	RMSTTT+2	;      enemy
INFSTT		EQU	EMYSTT+2	;      information
ITMSTT		EQU	INFSTT+2	;      item
MAPSTT		EQU	ITMSTT+2	;      map
;
GRNDNO		EQU	MAPSTT+2	; ground no.
DJNNO		EQU	GRNDNO+2	; danjyon no.
ROOMNO		EQU	DJNNO+2		; room no.
SCRLMD		EQU	ROOMNO+2	; mode flag
CCHGPT		EQU	SCRLMD+2	; character change pointer
GSUBFG		EQU	CCHGPT+2	; sub gamen check flag
GDWTFG		EQU	GSUBFG+2	; ground write flag
SCRLFG		EQU	GDWTFG+2	; Scroll check flag
;
BG1MFG		EQU	SCRLFG+2	; BG.1 move ram
BG1MBF		EQU	BG1MFG+2	;           calc. buffer
BG1MPT		EQU	BG1MBF+2	;           dot pointer
BG1YCT		EQU	BG1MPT+2	;
BGMVC0		EQU	BG1YCT+2	;           total counter-0
BGMVC1		EQU	BGMVC0+2	;                        -1
PBONFG		EQU	BGMVC1+2	;           player on check flag
B1MFLG		EQU	PBONFG+2	; BG.1 move flag
B1CWPT		EQU	B1MFLG+2	;      write point
;
BLKPNT		EQU	B1CWPT+2	; block set pointer
LMPPNT		EQU	BLKPNT+2	; lamp pointer
TPCKFG		EQU	LMPPNT+2	; trap check flag
TPCKPT		EQU	TPCKFG+2	; TRAP    check pointer
SWDRFG		EQU	TPCKPT+2	; swich door flag
ERDRFG		EQU	SWDRFG+2	; erase door flag
USCKPT		EQU	ERDRFG+2	; Up-STEP
DSCKPT		EQU	USCKPT+2	; Dn-STEP
UDSCKP0		EQU	DSCKPT+2	; UD-STEP (floor change)
UDSCKP1		EQU	UDSCKP0+2	; UD-STEP
UDSCKP2		EQU	UDSCKP1+2	; UD-STEP (normal)
UDSCKP3		EQU	UDSCKP2+2	; UD-STEP (water)
UDSCKP4		EQU	UDSCKP3+2	; water-side STEP
UDSCKP5		EQU	UDSCKP4+2	; Tobiori-STEP
UDSCKP6		EQU	UDSCKP5+2	; water-side STEP (kirikae)
FLCKFG		EQU	UDSCKP6+2	; floor up-down check flag
NSTPFG		EQU	FLCKFG+2	; normal step check flag
MDCCKPT		EQU	NSTPFG+2	; mode change check
DJCCKPT		EQU	MDCCKPT+2	; danjyon change check
CWLXYF		EQU	DJCCKPT+2	; crush wall x,y on/off flah
CWLFLG		EQU	CWLXYF+2	;            check flag
CWLPNT		EQU	CWLFLG+2	;                  pointer
LGTWFG		EQU	CWLPNT+2	; light-wipe flag
LGTWST		EQU	LGTWFG+2	;            status
WBFPNT		EQU	LGTWST+2	; write buffer set pointer
RWBFPT		EQU	WBFPNT+2	; rewrite buffer pointer
DORPNT		EQU	RWBFPT+2	; door set pointer
STPFLG		EQU	DORPNT+2	; step flag
SPMVCT		EQU	STPFLG+2	; step move counter
BLTRPF		EQU	SPMVCT+2	; block trap check flag
TRAPMD		EQU	BLTRPF+2	; trap mode
B2FLNO		EQU	TRAPMD+2	; BG.2 floor no.
BGALCKF		EQU	B2FLNO+2	; BG. all check flag
WRSDPT		EQU	BGALCKF+2	; water side set pointer
WGTPNT		EQU	WRSDPT+2	; water gate pointer
WGTADR		EQU	WGTPNT+2	;            address
BMUKI		EQU	WGTADR+2	; block init. move muki
CDBGCKF		EQU	BMUKI+2		; code BG. check flag (0:BG2 , 1:BG1)
LMPDGP		EQU	CDBGCKF+2	; lamp data get pointer
TBRCFG		EQU	LMPDGP+2	; tobiori check flag (1:tobiori)
TAPADR		EQU	TBRCFG+2	; tap address
UPCKPT		EQU	TAPADR+2	; Up-step
DNCKPT		EQU	UPCKPT+2	; Down-step
UPCKP1		EQU	DNCKPT+2	; Up-step   (down)
DNCKP1		EQU	UPCKP1+2	; Down-step (down)
GBBXPS		EQU	DNCKP1+2	; ground bomb check x-pos.
GBBYPS		EQU	GBBXPS+2	;                   y-pos.
STPDPT		EQU	GBBYPS+2	; step data pointer
RSNADR		EQU	STPDPT+2	; rasen address
ERXYCT		EQU	RSNADR+2	; enemy check room no.
B1FLNO		EQU	ERXYCT+2	; BG.1 floor no
BSTPPT		EQU	B1FLNO+2	; before rasen address
RAINPT		EQU	BSTPPT+2	; rain pointer
TBXCPT		EQU	RAINPT+2	; takara-box pointer
RKYCPT		EQU	TBXCPT+2	; rouya-key pointer
UDSCKP8		EQU	RKYCPT+2	; UD-STEP (floor change)
UDSCKP9		EQU	UDSCKP8+2	; UD-STEP
UDSCKPA		EQU	UDSCKP9+2	; UD-STEP (normal)
FLNODFG		EQU	UDSCKPA+2	; floor no. display counter
SUPCP0		EQU	FLNODFG+2	; scroll-step up
SUPCP1		EQU	SUPCP0+2	;
SDNCP0		EQU	SUPCP1+2	;             down
SDNCP1		EQU	SDNCP0+2	;
RESTSFG		EQU	SDNCP1+2	; restart check flag
GDMMPT		EQU	RESTSFG+2	; ground memory buffer pointer
UDSCKPB		EQU	GDMMPT+2	; UD-STEP (water)
WRDADR		EQU	UDSCKPB+2	; width road address
OKRNFLG		EQU	WRDADR+2	; okarina flag
BMTMER		EQU	OKRNFLG+2	; option-bomb timer
BMTMCT		EQU	BMTMER+1	;             counter
TRAPPT		EQU	BMTMCT+1	; trap read-address
OPDRCFG		EQU	TRAPPT+2	; option door check flag
TPCHPT		EQU	OPDRCFG+2	; trap change pointer
SWYKPT		EQU	TPCHPT+2	; swich-yuka pointer
KMBRCT		EQU	SWYKPT+2	; kame-iwa boss (R) counter
KMBBCT		EQU	KMBRCT+1	;               (B) counter
KMBRPT		EQU	KMBBCT+1	;               (R) pointer
KMBBPT		EQU	KMBRPT+1	;               (B) pointer
BSCLTMR		EQU	KMBBPT+1	; boss clear check timer
ATBXCT		EQU	BSCLTMR+2	; atemon-takara-box counter
GNNCFG		EQU	ATBXCT+1	; ganon check flag
GDINFF		EQU	GNNCFG+1	; ground information flag
INFCFG		EQU	GDINFF+1	; information check start check flag
KMKCPT		EQU	INFCFG+1	; kame-iwa kui check flag
HRTSCT		EQU	KMKCPT+2	; heart sound counter
;
hrtsct		EQU	HRTSCT+1
;
;
;--------------------------------------------------------------------
LMPTMR		EQU	04F0H		; lamp timer
;
BLKSTT		EQU	0500H		; block status
BLKDPT		EQU	BLKSTT+2*16	;       mode
BLKADR		EQU	BLKDPT+2*16	;       address
BLKDT0		EQU	BLKADR+2*16	;       rewrite data-0
BLKDT1		EQU	BLKDT0+2*16	;                   -1
BLKDT2		EQU	BLKDT1+2*16	;                   -2
BLKDT3		EQU	BLKDT2+2*16	;                   -3
LMPADR		EQU	BLKADR		; lamp address
LMPDPT		EQU	BLKDPT		;      data pointer
;
BLKXPS0		EQU	BLKDT3+2*16	;       x-pos. HI
BLKXPS1		EQU	BLKXPS0+2*2	;              LOW
BLKXPS2		EQU	BLKXPS1+2*2	;              calc
BLKYPS0		EQU	BLKXPS2+2*2	;       y-pos. HI
BLKYPS1		EQU	BLKYPS0+2*2	;              LOW
BLKYPS2		EQU	BLKYPS1+2*2	;              calc
BLKMUKI		EQU	BLKYPS2+2*2	;       move muki
BLKMODE		EQU	BLKMUKI+2*2	; 	max flag
;
;
DATBUF		EQU	BLKSTT		;]unit data no tenkaisuru toko (used 040H)
;
;--------------------------------------------------------------------
SCVU		EQU	0600H		; scroll limit V-counter
SCVU1		EQU	SCVU+2		;
SCVD		EQU	SCVU1+2		;
SCVD1		EQU	SCVD+2		;
SCHL		EQU	SCVD1+2		;              H-counter
SCHL1		EQU	SCHL+2		;
SCHR		EQU	SCHL1+2		;
SCHR1		EQU	SCHR+2		;
;
ESCCH0		EQU	SCVU		; ending SCCH0
ESCCH1		EQU	SCVU1		;        SCCH1
ESCCH2		EQU	SCVD		;        SCCH2
ESCCH3		EQU	SCVD1		;        SCCH3
ESCCH4		EQU	SCHL		;        SCCH4
ESCCH5		EQU	SCHL1		;        SCCH5
ESCCH6		EQU	SCHR		;        SCCH6
ESCCH7		EQU	SCHR1		;        SCCH7
;
;
SCKY00		EQU	SCHR1+2		; scroll check  Y(up)
SCKY10		EQU	SCKY00+2	;                (down)
SCKX00		EQU	SCKY10+2	;                (left)
SCKX10		EQU	SCKX00+2	;                (right)
PYUPCT		EQU	SCKX10+2	;
PYDWCT		EQU	PYUPCT+2	;
PXLFCT		EQU	PYDWCT+2	;
PXRTCT		EQU	PXLFCT+2	;
;
SCH1CT		EQU	PXRTCT+2	; SCCH1 counter
SCV1CT		EQU	SCH1CT+2	; SCCV1 counter
;
UPSLCT		EQU	SCV1CT+2	; up    scroll counter
DWSLCT		EQU	UPSLCT+2	; down
LFSLCT		EQU	DWSLCT+2	; left
RTSLCT		EQU	LFSLCT+2	; right
;
SCHCT		EQU	RTSLCT+2	; SCCH2 counter
SCVCT		EQU	SCHCT+2		; SCCV2
;
PSCH3		EQU	SCVCT+2		;
PSCH31		EQU	PSCH3+1		;
PSCH3C		EQU	PSCH31+2	;
;
HDMNO		EQU	PSCH3C+2	; mode-7 H-DMA no.
SCRNO		EQU	HDMNO+1		;        screen no.
ZOOM		EQU	SCRNO+1		;        zoom point
CENTX		EQU	ZOOM+1		;        center pos-X
CENTY		EQU	CENTX+2		;                   Y
;
;
HLINFF		EQU	CENTY+2		; hole down information flag
STPINF0		EQU	HLINFF+1	; step information flag-0
STPINF1		EQU	STPINF0+1	;                      -1
STPINF2		EQU	STPINF1+1	;                      -2
STPINF3		EQU	STPINF2+1	;                      -3
;
BLKSWF		EQU	STPINF3+1	; block swich flag
SWCHFG		EQU	BLKSWF+1	; swich flag
INFONFG		EQU	SWCHFG+2	; information on check flag
SWCHF1		EQU	INFONFG+2	; soromon-tama swich flag
MZKFLG		EQU	SWCHF1+1	; mozaiku flag
mzkflg		EQU	MZKFLG+1	;
;
;
WNXPL0		EQU	0670H		; window x-pos (L) 1  
WNXPH0		EQU	WNXPL0+1	; 	 x-pos (H) 1  
WNXPL1		EQU	WNXPL0+2	; 	 x-pos (L) 2  
WNXPH1		EQU	WNXPL1+1	; 	 x-pos (H) 2  
WNYPL0		EQU	WNXPL1+2	; 	 y-pos (L) 1
WNYPH0		EQU	WNYPL0+1	;        y-pos (H) 1
WNYPL1		EQU	WNYPL0+2	;        y-pos (L) 2
WNYPH1		EQU	WNYPL1+1	;        y-pos (H) 2
WNXBUF		EQU	WNYPL1+2	;	 x-pos speed buff
WNYBUF		EQU	WNXBUF+2	;        y-pos speed buff
WNHNKI		EQU	WNYBUF+2	;	 window hankei
WNSTAT		EQU	WNHNKI+2	; 	 waip start flag
;;;;;		EQU	WNSTAT+2
;
;--------------------------------------------------------------------
OYKMOD		EQU	0680H		; open yuka mode
OYKCFG		EQU	OYKMOD+2	;           count flag
OYKXPS		EQU	OYKCFG+2	;           obj. x-pos.
OYKXAD		EQU	OYKXPS+2	;           x-address
OYKYAD		EQU	OYKXAD+2	;           y-address
OYKADR		EQU	OYKYAD+2	;           address
;
WINXPS		EQU	OYKMOD		; water into x-pos.
WINYPS		EQU	WINXPS+2	;            y-pos.
WINMCT		EQU	WINYPS+2	;       move check counter
;
WRWPXP		EQU	OYKMOD		; water-wipe x-pos.
WRWPYP		EQU	WRWPXP+2	;            y-pos.
WRWPH0		EQU	WRWPYP+2	;            hankei-0
WRWPH1		EQU	WRWPH0+2	;                  -1
WRWPED		EQU	WRWPH1+2	;            end point
WRWPH2		EQU	WRWPED+2	;            hankei-2
;
;
DOPNBT		EQU	OYKADR+2	; door open check bit
DOPCPT		EQU	DOPNBT+2	;           character pointer
DOPNCT		EQU	DOPCPT+2	;           counter
DOPCNO		EQU	DOPNCT+2	;           character no.
DOPSPT		EQU	DOPCNO+2	;      position point
;
;
GDRBF0		EQU	DOPSPT+2	; ground open door buffer-0
GDRBF1		EQU	GDRBF0+2	;                  buffer-1
GATMCT		EQU	GDRBF1+2	; ground auto move counter
GATMFG		EQU	GATMCT+2	;                  flag
SCRMVY		EQU	GATMFG+2	;        y-scroll dot
SCRMVX		EQU	SCRMVY+1	;        x-scroll dor
;
;
;
TPCKBF		EQU	06A0H		; TRAP    check buffer
USCKBF		EQU	TPCKBF+2*8	; Up-STEP
DSCKBF		EQU	USCKBF		; Dn-STEP
UDSCKB0		EQU	DSCKBF+2*4	; UD-STEP (floor change)
UDSCKB1		EQU	UDSCKB0		; UD-STEP (same floor)
UDSCKB2		EQU	UDSCKB0		; UD-STEP (normal)
UDSCKB3		EQU	UDSCKB0		; UD-STEP (water)
UDSCKB4		EQU	UDSCKB0		; water-side SETP
UDSCKB5		EQU	UDSCKB0		; Tobiori-SETP
UDSCKB6		EQU	UDSCKB0		; water-side SETP (kirikae)
MDCCKBF		EQU	UDSCKB6+2*4	; mode change check
DJCCKBF		EQU	MDCCKBF+2*8	; danjyon change check
TBXADR		EQU	DJCCKBF+2*8	; takara-box address
UDSCKB8		EQU	TBXADR+2*6	; UD-STEP (floor change)
UDSCKB9		EQU	UDSCKB8		;         (same floor)
UDSCKBA		EQU	UDSCKB8		;         (normal)
UDSCKBB		EQU	UDSCKB8		;         (water)
;;;;;;;		EQU	UDSCKBA+2*4	;
;
KGMUKI		EQU	TPCKBF		; kagerou muki
KGLMTD		EQU	KGMUKI+2	;         limit check data
KGPOWR		EQU	KGLMTD+4	;         G-power data
KGXPOS		EQU	KGPOWR+4	;         x-pos.
KGXPBF		EQU	KGXPOS+2	;         x-pos. buffer
KGXPCT		EQU	KGXPBF+2	;                count
KGCALF		EQU	KGXPCT+2	;         calc. buffer
KGOVLF		EQU	KGCALF+2	;         over-lap flag
KGOVLD		EQU	KGOVLF+2	;                  count data
KGOVLC		EQU	KGOVLD+2	;                  counter
KGOVLP		EQU	KGOVLC+2	;                  point
KGCHCT		EQU	KGOVLP+2	;         Char counter
KGCHPT		EQU	KGCHCT+1	;              pointer
;--------------------------------------------------------------------
PLPTRM		EQU	700H		; player position ram
;
GCCKY0		EQU	708H		; character check y-pos. flag - 0
GCCKY1		EQU	70AH		;                             - 1
GCCKX0		EQU	70CH		;                 x-pos. flag - 0
GCCKX1		EQU	70EH		;                             - 1
;
GMAPDF		EQU	710H		; ground-map display check flag
GRMSZ0		EQU	712H		; ground room size flag (00:2x2 , 20:4x4)
GRMSZ0B		EQU	714H		;                       BACK
GRMSZ1		EQU	716H		;                  check flag
;
;--------------------------------------------------------------------
OAM		EQU	0800H		; OAM main
OAM2		EQU	0900H		;          + 100H
OAMSUB		EQU	0A00H		;     sub
OAMSB		EQU	0A20H		;     work sub
OAMSB2		EQU	0A60H		;              + 40H
;
POAM		EQU	0800H		; player OAM
POAMSB		EQU	0A20H		;   "    OAM sub
;
;
;
CHARBK		EQU	0AA0H		; character bank
CHIKNO		EQU	0AA1H		; chika no.
RBGCPT		EQU	0AA2H		; reset BG. chracter point
ROBJCPT		EQU	0AA3H		;       OBJ
OJBSPT		EQU	0AA4H		; Obj. basic pointer
CCNGPT		EQU	0AA6H		; CG. change check pointer
CGSTPT		EQU	0AA8H		; CG. set pointer
SPOJFG		EQU	0AAAH		; spacial OBJ flag
;
BOBOJC		EQU	0AACH		; BG. obj
EYOJC0		EQU	0AADH		; enemy - 0
EYOJC1		EQU	0AAEH		;         1
KABEJC		EQU	0AAFH		; kabe
CHOBJJC		EQU	0AB0H		; change obj
CHITEMJC	EQU	0AB1H		;        item
;
BG3BGC		EQU	0AB2H		; BG.3
GNDBGC		EQU	0AB3H		; ground
GNDBGC1		EQU	0AB4H		;         sousyoku - 1
GNDBGC2		EQU	0AB5H		;                  - 2
DANJC		EQU	0AB6H		; danjyon basic
SPGC		EQU	0AB7H		; special
KOKBGC		EQU	0AB8H		; kouka
;
PCGCKF		EQU	0ABDH		; player CG. check flag
;
SCLSFG		EQU	0ABFH		; scroll flag
;
;
KCHPT0		EQU	0AC0H		; sword - 0
KCHPT1		EQU	KCHPT0+2	;         1
TCHPT0		EQU	KCHPT1+2	; shild - 0
TCHPT1		EQU	TCHPT0+2	;         1
ICHPT0		EQU	TCHPT1+2	; [B],[Y] - 0
ICHPT1		EQU	ICHPT0+2	;         - 1
;
HCBFP0		EQU	ICHPT1+2	; HEAD char. address - 0
HCBFP1		EQU	HCBFP0+2	;                      1
BCBFP0		EQU	HCBFP1+2	; BODY char. address - 0
BCBFP1		EQU	BCBFP0+2	;                      1
ACBFP0		EQU	BCBFP1+2	; ARME char. address - 0
ACBFP1		EQU	ACBFP0+2	;                      1
;
BKCBFP0		EQU	ACBFP1+2	; block char. buffer point-0
BKCBFP1		EQU	BKCBFP0+2	;                         -1
WTCBFPT		EQU	BKCBFP1+2	; water char. buffer point
;
EIPONT		EQU	WTCBFPT+2	; enemy out item point
EICBFP0		EQU	EIPONT+2	; enemy out item char. buffer - 0
EICBFP1		EQU	EICBFP0+2	;                               1
EICBFP2		EQU	EICBFP1+2	;                               2
EICBFP3		EQU	EICBFP2+2	;                               3
;
OPTHPT		EQU	EICBFP3+2	; option HEAD pointer
OPTBPT		EQU	OPTHPT+2	;        BODY
OPTCHP0		EQU	OPTBPT+2	;        HEAD address - 0
OPTCHP1		EQU	OPTCHP0+2	;                       1
OPTCBP0		EQU	OPTCHP1+2	;        BODY address - 0
OPTCBP1		EQU	OPTCBP0+2	;                       1
;
TORICFG		EQU	OPTCBP1+2	; tori pointer
TRICHP0		EQU	TORICFG+2	;      address - 0
TRICHP1		EQU	TRICHP0+2	;              - 1
;--------------------------------------------------------------------
;
;--------------------------------------------------------------------
VRAMD		EQU	1000H		; VRAM_area
VRAMD1		EQU	1001H
VRAMD2		EQU	1002H
;
WBGBUF		EQU	1000H		; BG. write buffer
;
NRSTAT		EQU	1100H		; next room status
ODRADR		EQU	1110H		;          address
;
IWAKU1		EQU	WBGBUF+0142H	;item no waku 1 no iti
IWAKU2		EQU	WBGBUF+016AH	;	      2
IWAKU3		EQU	WBGBUF+0542H	;	      3
;IWAKU4		EQU	IWAKU3+0102H	;	      4
IWAKU5		EQU	WBGBUF+02EAH	;	      5
IWAKU6		EQU	WBGBUF+046AH	;	      6
;IWAKU7		EQU	IWAKU3+0198H	;	      7
;IWAKU8		EQU	IWAKU3+019EH	;	      8
IWAKU9		EQU	WBGBUF+056AH	;	      9
;IWAKUA		EQU	IWAKU9+0088H	;	      A
;IWAKUB		EQU	IWAKU9+008EH	;	      B
;IWAKUC		EQU	IWAKU9+0182H	;	      C
;IWAKUD		EQU	IWAKU9+018EH	;	      D
;
WITEM01		EQU	IWAKU1+0086H	;ITEM 01 no POS.
WITEM02		EQU	IWAKU1+008CH	;ITEM 02 no POS.
WITEM03		EQU	IWAKU1+0092H	;ITEM 03 no POS.
WITEM04		EQU	IWAKU1+0098H	;ITEM 04 no POS.
WITEM05		EQU	IWAKU1+009EH	;ITEM 05 no POS.
WITEM06		EQU	IWAKU1+0146H	;ITEM 06 no POS.
WITEM07		EQU	IWAKU1+014CH	;ITEM 07 no POS.
WITEM08		EQU	IWAKU1+0152H	;ITEM 08 no POS.
WITEM09		EQU	IWAKU1+0158H	;ITEM 09 no POS.
WITEM10		EQU	IWAKU1+015EH	;ITEM 10 no POS.
WITEM11		EQU	IWAKU1+0206H	;ITEM 11 no POS.
WITEM12		EQU	IWAKU1+020CH	;ITEM 12 no POS.
WITEM13		EQU	IWAKU1+0212H	;ITEM 13 no POS.
WITEM14		EQU	IWAKU1+0218H	;ITEM 14 no POS.
WITEM15		EQU	IWAKU1+021EH	;ITEM 15 no POS.
WITEM16		EQU	IWAKU1+02C6H	;ITEM 16 no POS.
WITEM17		EQU	IWAKU1+02CCH	;ITEM 17 no POS.
WITEM18		EQU	IWAKU1+02D2H	;ITEM 18 no POS.
WITEM19		EQU	IWAKU1+02D8H	;ITEM 19 no POS.
WITEM20		EQU	IWAKU1+02DEH	;ITEM 20 no POS.
;
WITEM21		EQU	IWAKU3+0186H	;ITEM 21 no POS.
WITEM22		EQU	IWAKU3+018CH	;ITEM 22 no POS.
WITEM23		EQU	IWAKU3+0192H	;ITEM 23 no POS.
WITEM24		EQU	IWAKU3+0198H	;ITEM 24 no POS.
WITEM25		EQU	IWAKU3+019EH	;ITEM 25 no POS.
;
WITEM26		EQU	IWAKU9+0082H	;ITEM 26 no POS.
WITEM27		EQU	IWAKU9+0088H	;ITEM 27 no POS.
WITEM28		EQU	IWAKU9+008EH	;ITEM 28 no POS.
WITEM29		EQU	IWAKU9+0182H	;ITEM 29 no POS.
WITEM37		EQU	IWAKU9+0188H	;ITEM 30 no POS.
;
IITEM		EQU	WBGBUF+0606H	;item 1 no iti
MAPSCR		EQU	WBGBUF+0244H	;map no iti
FLORPOS		EQU	MAPSCR+06AH	;flor no positon no iti
FLORPNW		EQU	MAPSCR+000H	;flor no positon no iti(NOW)
FLORLEV		EQU	MAPSCR+204H	;flor no level no iti
;
;--------------------------------------------------------------------
BGCWBF		EQU	1100H		; BG. change write buffer
;
;--------------------------------------------------------------------
MESBUF		EQU	1300H		; message buffer
MESBUF40	EQU	1328H
MESBUF198	EQU	13C6H
;;;;;;;		EQU	13FFH
;
;
RWBUFF		EQU	1600H		; rewrite data buffer (20H x 20H)
;
;
;--------------------------------------------------------------------
;--------------------------------------------------------------------
DRSTAT		EQU	1980H		; door status
DORADR		EQU	DRSTAT+2*(8+8)	;      address
DORFLG		EQU	DORADR+2*(8+8)	;      flag
;
EXTPNT		EQU	DORFLG+2*(8+8)	; exit-door check pointer
EXTADR0		EQU	EXTPNT+2	; exit-door address-0
EXTADR1		EQU	EXTADR0+2	;                  -1
EXTADR2		EQU	EXTADR1+2	;                  -2
EXTADR3		EQU	EXTADR2+2	;                  -3
;
next3		EQU	EXTADR3+2	;
;
;--------------------------------------------------------------------
OPYPSL		EQU	1A00H		;	"	y-pos (L)
OPYPSH		EQU	OPYPSL+14H	;	"	y-pos (H)
OPXPSL		EQU	OPYPSH+14H	;	"	x-pos (L)
OPXPSH		EQU	OPXPSL+14H	;	"	x-pos (H)
OPZPSL		EQU	OPXPSH+14H	;	"	z-pos (L)
OPMUKI		EQU	OPZPSL+14H	;	"	muki
;;;;;;		EQU	OPMUKI+14H	;
;
;
MEMXPSL		EQU	1AB0H		; map enemy x-pos. -L
MEMXPSH		EQU	1AC0H		;                  -H
MEMYPSL		EQU	1AD0H		;           y-pos. -L
MEMYPSH		EQU	1AE0H		;                  -H
MEMSTT		EQU	1AF0H		;           status
;--------------------------------------------------------------------
WINDOW		EQU	1B00H		; window data buffer
;
HDMABF		EQU	WINDOW		;
;
;;;;;;;		EQU	1CC0H
;
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MESSGE RAM
WNKEIS		EQU	1CD0H		; vram no adress low (keisan)
WNKEISH		EQU	1CD1H		;
WNADRS		EQU	1CD2H		; vram no adrwss low (moto)
WNADRSH		EQU	1CD3H		;
WIND_SYS	EQU	1CD4H		; jsrsub (0)w1 (1)w2 (2)s (3)c
MJISPD		EQU	1CD5H		; jsrsub moji speed syori
MJISPDBK	EQU	1CD6H		; mjispd BAK
WNWORK		EQU	1CD7H		; jsrsub slow window
INITAL		EQU	1CD8H		; jsrsub (0)inital (1)program
MOJIX		EQU	1CD9H		; moji data o totekuru tokoro l
MOJIXH		EQU	1CDAH		;
MJIDAT		EQU	1CDBH		; moji data o vramd you ni kaeu
MJIATR		EQU	1CDCH		; moji atori bute no hairu toko
MESBUFX		EQU	1CDDH		; mesbuf,x no x no hairutoko l
MESBUFH		EQU	1CDEH		; 
SCRLIN		EQU	1CDFH		; scrool line kazu
MSGWAIT		EQU	1CE0H		; jsrsub time wait L
MSGWAITH	EQU	1CE1H		;		   H
MSGCHCT		EQU	1CE2H		; messeg init char no count L
MSGCHCTH	EQU	1CE3H		;		   	    H
MSGCNT		EQU	1CE4H		; messeg hanyou cnt l
MSGCNTH		EQU	1CE5H		; messeg hanyou cnt h
ZURCNT		EQU	1CE6H		; messeg zure cnt
ZURCNTH		EQU	1CE7H		; messeg zure cnt
MSG_RTS		EQU	1CE8H		; messeg rts data
MSGIPTM		EQU	1CE9H		; inkey wait
MSGSCRD		EQU	1CEAH		; inkey wait
;					; 161BH -- 161FH msge yobi(zel_msge.asm in cls)
MSGENOL		EQU	1CF0H		; messeg NO. L.
MSGENOH		EQU	1CF1H		; messeg NO. H.
MSG_SU0		EQU	1CF2H		; messeg SUUGI 0,1
MSG_SU1		EQU	1CF3H		; messeg SUUGI 2,3
MRTS_BK		EQU	1CF4H		; MSG_RTS back-up
;
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		Dabjyon enemy save buffer				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENMODES		EQU	1D00H
ENMYNOS		EQU	1D10H
ENXPSLS		EQU	1D20H
ENXPSHS		EQU	1D30H
ENYPSLS		EQU	1D40H
ENYPSHS		EQU	1D50H
ENCHPTS		EQU	1D60H
ENWRK0S		EQU	1D70H
ENKBMKS		EQU	1D80H
ENCLORS		EQU	1D90H
ENFLCLS		EQU	1DA0H
ENMUKIS		EQU	1DB0H
ENMOD0S		EQU	1DC0H
ENKAIFS		EQU	1DD0H
ENSTATS		EQU	1DE0H
ENMOD2S		EQU	1DF0H
;- - - - - - - - - - - - - - - - -
KBANGL		EQU	1D10H
KBANGH		EQU	KBANGL+20H
KBHANK		EQU	KBANGH+20H
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
POLY_RAM	EQU	1F00H		; polygon used ram
POLY_RAM_END	EQU	1FFFH
;
;====================================================================
;====================================================================
;====================================================================
BKUP_RAM	EQU	700000H		; back-up RAM
BUDJNTBL	EQU	BKUP_RAM		; [DJNTBL]
BUDJSTBL	EQU	BUDJNTBL+(16*16*2)	; [DJSTBL]
BUGNDTBL	EQU	BUDJSTBL+(16*4*2)	; [GNDTBL]
BUGDSTBL	EQU	BUGNDTBL+(8*8*2)	; [GDSTBL]
BUITMTBL	EQU	BUGDSTBL+(8*4*2)	; [ITMTBL~]
BULFITCT	EQU	BUITMTBL+45-1		;    (LFITCT)
BUDKYTBL	EQU	BUITMTBL+60		; [DKYTBL]
BUNINTBL	EQU	BUDKYTBL+13		; [NINTBL]
BUMODTBL	EQU	BUNINTBL+(30*2)		; [MODTBL]
BUNAME		EQU	BUMODTBL+20		; [NAME]
BUCKSUM		EQU	BUNAME+(4*2)		; [CKSUM]
BUDIECONT	EQU	BUCKSUM+2		; [DIECONT]
;
;
BUCKSUM0	EQU	BUCKSUM
BUCKSUM1	EQU	BUCKSUM0+500H
BUCKSUM2	EQU	BUCKSUM1+500H
BUEND		EQU	BUDIECONT+40H
;
;
;
BKUP_RAM0	EQU	BKUP_RAM+0000H	; player-0 back-up
BKUP_RAM1	EQU	BKUP_RAM0+0500H	; player-1
BKUP_RAM2	EQU	BKUP_RAM1+0500H	; player-2
;
BKUP_RAM3	EQU	BKUP_RAM2+0500H	; player-0 back-up
BKUP_RAM4	EQU	BKUP_RAM3+0500H	; player-1
BKUP_RAM5	EQU	BKUP_RAM4+0500H	; player-2
;
BKUP_RAMZ	EQU	BKUP_RAM5+500H
;
DTSVPT		EQU	701FFEH		; data save check pointer
;
;====================================================================
;====================================================================
ROOMBF		EQU	7E2000H		; room data buffer
GDBUF0		EQU	ROOMBF 		; ground buffer-0
GDBUF1		EQU	GDBUF0+1000H	; ground buffer-1
;
;--------------------------------------------------------------------
BG1RBF		EQU	ROOMBF+2000H	; BG.-1 room buffer
GDBUF2		EQU	BG1RBF		; ground buffer-2
GDBUF3		EQU	GDBUF2+1000H	; ground buffer-3
;
;--------------------------------------------------------------------
CHCHBF		EQU	BG1RBF+2000H	; change character buffer
;
CNGCHBF		EQU	CHCHBF+600H*8	; change character data buffer
KNCHBF		EQU	CNGCHBF		; sword character data buffer-0
TTCHBF		EQU	KNCHBF+20H*12*2	; shild character data buffer-0
IMCHBF		EQU	TTCHBF+20H*6*2	; [B],[Y] character data buffer-0
BKCHBF		EQU	IMCHBF+40H*40H	; block character data buffer-0
WTRCHBF		EQU	BKCHBF+40H*8	; water character
EICHBF		EQU	WTRCHBF+20H*20H*3 ; enemy out item character data buffer
TYCHBF		EQU	EICHBF+20H*6	; tama-yuka character buffer
TRICHBF		EQU	TYCHBF+20H*10H	; tori character buffer
;
OPTCHBF		EQU	TRICHBF+20H*20H	; option charcter
;
ITMCHBF		EQU	OPTCHBF+20H*20H	; mochiage ITEM character buffer
;
SWYCHBF		EQU	ITMCHBF+20H*4	; swich-yuka character buffer
;
swychbf		EQU	SWYCHBF+20H*2	; next
;
;
MJFTBF		EQU	7EBFC0H		; moji font buffer
;
;
HLGOTO		EQU	7EC000H		; hole goto
SPGOTO		EQU	HLGOTO+1	; step goto - 0
;;;;;;;		EQU	SPGOTO+1	;           - 1
;;;;;;;		EQU	SPGOTO+2	;           - 2
;;;;;;;		EQU	SPGOYO+3	;           - 2
;
DARKFG		EQU	SPGOTO+4	; color DARK check flag
BKDARKF		EQU	DARKFG+1	; before color DARK check flag
;
CCNGCT		EQU	BKDARKF+1	; CG. change check counter
CCNGFG		EQU	CCNGCT+2	;                  flag (0:fade out , 1:fade in)
CCNGED		EQU	CCNGFG+2	;                  end data
WTCHCT		EQU	CCNGED+2	; water character counter
WTCHPT		EQU	WTCHCT+2	; water character pointer
MZKCNT		EQU	WTCHPT+2	; mozaiku counter
EICHCT		EQU	MZKCNT+2	; enemy out item counter
EICHPT		EQU	EICHCT+2	;                pointer
DKRMCG		EQU	EICHPT+2	; dark room CG.
SHSCCT		EQU	DKRMCG+2	; shisai CG. change check counter
SHSCFG		EQU	SHSCCT+2*3	;                   flag (0:fade out , 1:fade in)
shscfg		EQU	SHSCFG+2*3
;
GRNORM		EQU	7EC100H		; ground no.
DPMSRM		EQU	GRNORM+2	; ground DPMAIN,DPSUB  back-up
SCV2RM		EQU	DPMSRM+2	;        SCCV2
SCH2RM		EQU	SCV2RM+2	;        SCCH2
PLYPRM		EQU	SCH2RM+2	;        PLYPS1
PLXPRM		EQU	PLYPRM+2	;        PLXPS1       
MPDNRM		EQU	PLXPRM+2	;        MPDTNO
SRPTRM		EQU	MPDNRM+2	;        SCRPNT
UPCTRM		EQU	SRPTRM+2	;        PYUPCT
LFCTRM		EQU	UPCTRM+2	;        PXLFCT
SCVURM		EQU	LFCTRM+2	;        SCVU
SCKYRM		EQU	SCVURM+8	;        SCKY00
SCKXRM		EQU	SCKYRM+4	;        SCKX00
CHBKRM		EQU	SCKXRM+4	;        CHARBK
CHNORM		EQU	CHBKRM+1	;        CHIKNO
RBGPRM		EQU	CHNORM+1	;        RBGCPT
ROJPRM		EQU	RBGPRM+1	;        ROBJCPT
SLFGRM		EQU	ROJPRM+1	;        SCRLFG
USCTRM		EQU	SLFGRM+2	;        UPSLCT
DSCTRM		EQU	USCTRM+2	;        DWSLCT
LSCTRM		EQU	DSCTRM+2	;        LFSLCT
RSCTRM		EQU	LSCTRM+2	;        RTSLCT
;
GRNOBK		EQU	7EC140H		; ground no.
DPMSBK		EQU	GRNOBK+2	; ground DPMAIN,DPSUB  back-up
SCV2BK		EQU	DPMSBK+2	;        SCCV2
SCH2BK		EQU	SCV2BK+2	;        SCCH2
PLYPBK		EQU	SCH2BK+2	;        PLYPS1
PLXPBK		EQU	PLYPBK+2	;        PLXPS1       
MPDNBK		EQU	PLXPBK+2	;        MPDTNO
SRPTBK		EQU	MPDNBK+2	;        SCRPNT
UPCTBK		EQU	SRPTBK+2	;        PYUPCT
LFCTBK		EQU	UPCTBK+2	;        PXLFCT
SCVUBK		EQU	LFCTBK+2	;        SCVU
SCKYBK		EQU	SCVUBK+8	;        SCKY00
SCKXBK		EQU	SCKYBK+4	;        SCKX00
CHBKBK		EQU	SCKXBK+4	;        CHARBK
CHNOBK		EQU	CHBKBK+1	;        CHIKNO
RBGPBK		EQU	CHNOBK+1	;        RBGCPT
ROJPBK		EQU	RBGPBK+1	;        ROBJCPT
SLFGBK		EQU	ROJPBK+1	;        SCRLFG
USCTBK		EQU	SLFGBK+2	;        UPSLCT
DSCTBK		EQU	USCTBK+2	;        DWSLCT
LSCTBK		EQU	DSCTBK+2	;        LFSLCT
RSCTBK		EQU	LSCTBK+2	;        RTSLCT
;
SRPTSB		EQU	RSCTBK+2	; scroll SCRPNT
XWRTSB		EQU	SRPTSB+2	;        XWRITE
YWRTSB		EQU	XWRTSB+2	;        YWRITE
TAMAFLG		EQU	SRPTSB		; tama-check flag
;
;
HLSCH2		EQU	7EC180H		; hole-check SCCH2
HLSCV2		EQU	HLSCH2+2	;            SCCV2
HLYPS1		EQU	HLSCV2+2	;            PLYPS1
HLXPS1		EQU	HLYPS1+2	;            PLXPS1
HLSCVU		EQU	HLXPS1+2	;            SCVU
HLSCVD		EQU	HLSCVU+2	;            SCVD
HLSCHL		EQU	HLSCVD+2	;            SCHL
HLSCHR		EQU	HLSCHL+2	;            SCHR
HLSY00		EQU	HLSCHR+2	;            SCKY00
HLSY10		EQU	HLSY00+2	;            SCKY10
HLSX00		EQU	HLSY10+2	;            SCKX00
HLSX10		EQU	HLSX00+2	;            SCKX10
HLUPCT		EQU	HLSX10+2	;            PYUPCT
HLLFCT		EQU	HLUPCT+2	;            PXLFCT
HLCKXF		EQU	HLLFCT+2	;            RMCKXF,RMCKyF
HLXCPT		EQU	HLCKXF+2	;            RMXCPT,RMYCPT
HLUSLC		EQU	HLXCPT+2	;            UPSLCT
HLLSLC		EQU	HLUSLC+2	;            LFSLCT
HLSRPT		EQU	HLLSLC+2	;            SCRPNT
HLMKCH		EQU	HLSRPT+2	;            PLMKCH
HLPLBG		EQU	HLMKCH+1	;            PLBGCKF
HLCDBG		EQU	HLPLBG+1	;            CDBGCKF
HLPWK6		EQU	HLCDBG+1	;            PWORK6
HLFLNO		EQU	HLPWK6+1	;            FLORNO
;
;
BKSCH1		EQU	7EC200H		; BG-1. H-scroll counter_L
BKSCH2		EQU	BKSCH1+2	; BG-2.
BKSCV1		EQU	BKSCH2+2	; BG-1. V-scroll counter_L
BKSCV2		EQU	BKSCV1+2	; BG-2.
BKGSUBF		EQU	BKSCV2+2	; GSUBFG
BKDANC		EQU	BKGSUBF+2	; basic
BKKOKC		EQU	BKDANC+1	; kouka
BKSPCC		EQU	BKKOKC+1	; special
BKCHBK		EQU	BKSPCC+1	; CHARBK
BKCHNO		EQU	BKCHBK+1	; CHIKNO
BKROJC		EQU	BKCHNO+1	; ROBJCPT
BKRBGC		EQU	BKROJC+1	; RBGCPT
BKDPMN		EQU	BKRBGC+1	; DPMAIN
BKDPSB		EQU	BKDPMN+1	; DPSUB
BKMDNO		EQU	BKDPSB+1	; MPDTNO
BKSCPT		EQU	BKMDNO+2	; SCRPNT
BKYWRT		EQU	BKSCPT+2	; YWRITE
BKXWRT		EQU	BKYWRT+2	; XWRITE
BKSLFG		EQU	BKXWRT+2	; SCRLFG
BKSLMD		EQU	BKSLFG+2	; SCRLMD
BKGWTF		EQU	BKSLMD+2	; GDWTFG
BKYRXD		EQU	BKGWTF+2	; YUREXD
BKYRYD		EQU	BKYRXD+2	; YUREYD
BKWD2130	EQU	BKYRYD+2	; WD2130,WD2131
BKSOUND0	EQU	BKWD2130+2	; SOUND0,SOUND1
BKWD420C	EQU	BKSOUND0+2	; WD420C
;
bkwd420c	EQU	BKWD420C+1	;
;
CHCHTB		EQU	7EC2F8H		; character change table buffer
;
;--------------------------------------------------------------------
CGRAM		EQU	7EC300H		; CG. ram
CHGRAM		EQU	CGRAM
;
MNWDBF		EQU	CGRAM		; menu window buffer
;
;--------------------------------------------------------------------
CGWORK		EQU	CGRAM+200H	; CG. work
;
;--------------------------------------------------------------------
MTRBUF		EQU	CGWORK+200H	; mater buffer
;
ICOIN		EQU	MTRBUF+050H	;
IBOMB		EQU	MTRBUF+058H	;
IYA		EQU	MTRBUF+05EH	;
IKEY		EQU	MTRBUF+062H	;
IMP		EQU	MTRBUF+046H	;
ILIFE		EQU	MTRBUF+068H	;
MWAKU7		EQU	MTRBUF+006H	;
;
IFLNO		EQU	MTRBUF+40H*3+19H*2
;
;--------------------------------------------------------------------
B1CWBF		EQU	MTRBUF+180H	 ; BG.1 write buffer
CGBUF0		EQU	B1CWBF
CGBUF1		EQU	CGBUF0+20H*6
;
;		EQU	B1CWBF+80H
;--------------------------------------------------------------------
POLY_CHR_BUF	EQU	7EE800H		; polygon_character used ram
POLY_CHR_END	EQU	7EEFFFH		;
;--------------------------------------------------------------------
ZEL_DATA	EQU	7EF000H		; data used area
DJNTBL		EQU	ZEL_DATA	; [DJNTBL]
;
DJSTBL		EQU	DJNTBL+(16*16*2); [DJSTBL]
;
GNDTBL		EQU	DJSTBL+(16*4*2)	; [GNDTBL]
;
GDSTBL		EQU	GNDTBL+(8*8*2)	; [GDSTBL]
;
ITMTBL		EQU	GDSTBL+(8*4*2)	; [ITMTBL~]
ITMTBL0		EQU	ITMTBL		;
ITEMR01		EQU	ITMTBL		; yumi
ITEMR02		EQU	ITEMR01+1	; buumeran
ITEMR03		EQU	ITEMR02+1	; fuck-shot
ITEMR04		EQU	ITEMR03+1	; bomb
BMBCNT		EQU	ITEMR04		; bomb
ITEMR05		EQU	ITEMR04+1	; magic kona , kinoko
ITEMR06		EQU	ITEMR05+1	; fire lot
ITEMR07		EQU	ITEMR06+1	; ice lot
ITEMR08		EQU	ITEMR07+1	; sp-bomber
ITEMR09		EQU	ITEMR08+1	; sp-thunder
ITEMR10		EQU	ITEMR09+1	; sp-jishin
ITEMR11		EQU	ITEMR10+1	; kantera
ITEMR12		EQU	ITEMR11+1	; hanmer
ITEMR13		EQU	ITEMR12+1	; skope okarina
ITEMR14		EQU	ITEMR13+1	; ami
ITEMR15		EQU	ITEMR14+1	; jisyo
ITEMR16		EQU	ITEMR15+1	; bin-select
ITEMR17		EQU	ITEMR16+1	; soromon
ITEMR18		EQU	ITEMR17+1	;
ITEMR19		EQU	ITEMR18+1	; kakurenimo
ITEMR20		EQU	ITEMR19+1	; warp
ITEMR21		EQU	ITEMR20+1	; power grove
ITEMR22		EQU	ITEMR21+1	; power grove
ITEMR23		EQU	ITEMR22+1	; ashi hire
ITMTBL4		EQU	ITEMR23+1	; tama
ITMTBL5		EQU	ITMTBL4+1	; free
ITMTBL6		EQU	ITMTBL5+1	; ken
ITMTBL7		EQU	ITMTBL6+1	; tate
ITMTBL8		EQU	ITMTBL7+1	; fuku
BINCT0		EQU	ITMTBL8+1	; bin-1
BINCT1		EQU	BINCT0+1	; bin-2
BINCT2		EQU	BINCT1+1	; bin-3
BINCT3		EQU	BINCT2+1	; bin-4
CONCNT		EQU	BINCT3+1	; coin   counter-low
CONCNTH		EQU	CONCNT+1	;                -hi
CONPRT		EQU	CONCNTH+1	; coin print(l)
CONPRT1		EQU	CONPRT+1	; coin print(h)
ITMTBLA		EQU	CONPRT1+1	; hari
KEYCNT		EQU	ITMTBLA+2	; KEY TOKUSYU
MAPCNT		EQU	KEYCNT+2	; MAP TOKUSYU
ITEMR43		EQU	MAPCNT+2	; megami coin cnt
ITEMR44		EQU	ITEMR43+1	; tokei
LFITCT		EQU	ITEMR44+1	; LIFE basic mater counter
LFNWCT		EQU	LFITCT+1	; LIFE now
MPNWCT		EQU	LFNWCT+1	; MP
ITMTBL9		EQU	MPNWCT+1	; key
ITEMR49		EQU	ITMTBL9+1	; coin   counter-low
ITEMR50		EQU	ITEMR49+1	;               -hi
UPLFCT		EQU	ITEMR50+1	; up life counter
UPMPCT		EQU	UPLFCT+1	;    mp
ITEMR53		EQU	UPMPCT+1	; nekres
UPBMCT		EQU	ITEMR53+1	;    bomb
UPAWCT		EQU	UPBMCT+1	;    arrow
ARWCNT		EQU	UPAWCT+1	; arrow
ITMTBL1		EQU	ARWCNT+1	; [A]   do
ITMTBL3		EQU	ITMTBL1+2	; force coin
MPLVFG		EQU	ITMTBL3+1	; magic level
;MPITCT		EQU	MPLVFG+1	;
;;;;;;		EQU	MPITCT+1	;
;
DKYTBL		EQU	ITMTBL+60	; [DKYTBL]
;
NINTBL		EQU	DKYTBL+13	; [NINTBL]
;
MODTBL		EQU	NINTBL+(30*2)	; [MODTBL]
MODTBL0		EQU	MODTBL		; demo mode 
MODTBL1		EQU	MODTBL0+1	; 
MODTBL2		EQU	MODTBL1+1	;
MODTBL3		EQU	MODTBL2+1	; restart pointer
MODTBL4		EQU	MODTBL3+1	;
GDTRPF		EQU	MODTBL4+1	; ground trip flag (0:omote , 40:ura)
OPMODE		EQU	GDTRPF+2	; player option mode
OPJIYP		EQU	OPMODE+1	;               y-pos.
OPJIXP		EQU	OPJIYP+2	;               x-pos.
OPCDFG		EQU	OPJIXP+2	;               [CDBGCKF]
OPBGCKF		EQU	OPCDFG+1	;               [PYBGCKF]
OPKYFG		EQU	OPBGCKF+1	;               on/off flag
;
NAME		EQU	MODTBL+20	; [NAME]
;
CKSUM		EQU	NAME+(4*2)	; [CKSUM]
;
DIECT00		EQU	CKSUM+2		; DJNNO= 0 : die count
DIECT02		EQU	DIECT00+2	;      = 2 :
DIECT04		EQU	DIECT02+2	;      = 4 :
DIECT06		EQU	DIECT04+2	;      = 6 :
DIECT08		EQU	DIECT06+2	;      = 8 :
DIECT0A		EQU	DIECT08+2	;      = A :
DIECT0C		EQU	DIECT0A+2	;      = C :
DIECT0E		EQU	DIECT0C+2	;      = E :
DIECT10		EQU	DIECT0E+2	;      =10 :
DIECT12		EQU	DIECT10+2	;      =12 :
DIECT14		EQU	DIECT12+2	;      =14 :
DIECT16		EQU	DIECT14+2	;      =16 :
DIECT18		EQU	DIECT16+2	;      =18 :
DIECT1A		EQU	DIECT18+2	;      =1A :
DIECONT		EQU	DIECT1A+2	; die counter
DIETOTAL	EQU	DIECONT+2	;             total
;
dietotal	EQU	DIETOTAL+2
;
;
;
;
DJBITRM		EQU	7EF580H		; danjyon bit ram (140H*2)
;
GDMMBF		EQU	DJBITRM+140H*2	; ground memory buffer
;
DJINFTBL	EQU	GDMMBF		; danjyon information memory table
;
BLKTBUF		EQU	GDMMBF+16*(16+4) ; block data table
;
LMPTBUF		EQU	BLKTBUF+4*080H	; lamp data table buffer
;
ROBJTBL		EQU	LMPTBUF+3*080H	; OBJ. character point table
;
ROJCTBL		EQU	ROBJTBL+8*8*2	; Obj. color point table
;
rojctbl		EQU	ROJCTBL+8*8*2
;
;
;
RDCODE0		EQU	7EFE00H		; danjyon read code data
;
;--------------------------------------------------------------------
;--------------------------------------------------------------------
RSETCBF		EQU	7F0000H		; reset character buffer
;
;
MAPBUF		EQU	RSETCBF		;
MAPWAKU1	EQU	MAPBUF+076H	;flor no map no waku no iti(1)
FLORMAP1	EQU	MAPWAKU1+042H	;flor no map no iti
MAPWAKU2	EQU	MAPSCR+13CH	;flor no map no waku no iti(2)
FLORMAP2	EQU	MAPWAKU2+042H	;flor no map no iti
MAPWAKU3	EQU	MAPSCR+14EH	;flor no map no waku no iti(3)
FLORMAP3	EQU	MAPWAKU3+042H	;flor no map no iti
MAPWAKU4	EQU	MAPSCR+16AH	;flor no map no waku no iti(4)
FLORMAP4	EQU	MAPWAKU4+042H	;flor no map no iti
MAPWAKU5	EQU	MAPBUF+040H	;flor no map no waku no iti(5)
FLORMAP5	EQU	MAPWAKU5+042H	;flor no map no iti
;
;MAPBUF1		EQU	MAPBUF+800H	;
;
;MAPBUF2		EQU	MAPBUF1+800H	;
;
;
;;;;;;;;;MOJIBUF		EQU	MAPBUF2+09*2*7	; BG.3 message moji buffer
MOJIBUF		EQU	MAPBUF		; BG.3 message moji buffer
;
MJIBUF		EQU	MOJIBUF+120H*10H ; tenkai go no mesege 
;
MJPCBF		EQU	7F1F80H		; moji picture buffer
;-------- kabe bomb ram ---------------
KBBMNO		EQU	MAPBUF		; kabe bomb no
KBBMFM		EQU	KBBMNO+008H	; kabe bomb flem counter
KBMODE		EQU	KBBMFM+008H	; kabe bomb retarn flag
KBYPS0		EQU	KBMODE+008H	; kabe bomb kihon y-pos
KBXPS0		EQU	KBYPS0+002H	; kabe bomb kihon x-pos
KBMUKI		EQU	KBXPS0+002H	; kabe bomb muki
KBMINX		EQU	KBMUKI+2	; kabe bomb oam index
KABEYP		EQU	KBMINX+2	; kabe bomb y-pos
KABEXP		EQU	KABEYP+010H	; kabe bomb x-pos
KABEFM		EQU	KABEXP+010H	; kabe flem counter  
;;;;;;		EQU	KABEFM*010H	;
;
;
;--------------------------------------------------------------------
GRWRBF		EQU	RSETCBF+2000H	; ground rewrite buffer
READBF		EQU	GRWRBF		; BG.2 read data buffer
READBF1		EQU	READBF+1000H	; BG.1 read data buffer
;
;
MPCHBF		EQU	READBF1+1000H	; message picture buffer
GDBUF4		EQU	MPCHBF
GDBUF5		EQU	GDBUF4+0400H
;
;-------- spcial sunder ram
SNENMD		EQU	MPCHBF+0800H*3	; en mode flag
SNDHAN		EQU	SNENMD+8	; en hankei
SEDYPS		EQU	SNDHAN+2	; inazuma end y-pos hozon 
SHNYPS		EQU	SEDYPS+2	; inazuma begin y-pos hozon 
SNCXPS		EQU	SHNYPS+2	; en center x-pos
SNCYPS		EQU	SNCXPS+2	; en center y-pos
SNTIME		EQU	SNCYPS+2	; en stop timer
SNTYPO		EQU	SNTIME+1	; y-pos hozon ram
SNTXPO		EQU	SNTYPO+2	; x-pos hozon ram
KIRYPL		EQU	SNTXPO+2	; kira kira kihon y-pos (L)
KIRYPH		EQU	KIRYPL+8	;			(H)
KIRXPL		EQU	KIRYPH+8	; kira kira kihon x-pos (L)
KIRXPH		EQU	KIRXPL+8	;			(H)
KIRMOD		EQU	KIRXPH+8	; 	    mode
KRMYPL		EQU	KIRMOD+18H	;	    y-pos (L)
KRMYPH		EQU	KRMYPL+18H	;	    y-pos (H)
KRMXPL		EQU	KRMYPH+18H	;	    x-pos (L)
KRMXPH		EQU	KRMXPL+18H	;	    x-pos (H)
KRMTIM		EQU	KRMXPH+18H	;	    timer.
;;;;;;		EQU	KRMTIM+18H	;
;-------- spcial bomb ram
SPBMFM		EQU	SNENMD		; bomb flem counter
SPBMMD		EQU	SPBMFM+10H	; bomb mode flag
SPENMD		EQU	SPBMMD+10H	; bomb en mode flag
SPBYPL		EQU	SPENMD+4	; bomb y-pos (L)
SPBYPH		EQU	SPBYPL+40H	;            (H)
SPBXPL		EQU	SPBYPH+40H	;      x-pos (L)
SPBXPH		EQU	SPBXPL+40H	;            (H)
SPCNYL		EQU	SPBXPH+40H	; center y-pos (L)
SPCNYH		EQU	SPCNYL+4	;              (H)
SPCNXL		EQU	SPCNYH+4	;        x-pos (L)
SPCNXH		EQU	SPCNXL+4	;              (H)
SPMDCG		EQU	SPCNXH+4	; mode chenge flag
SPBKMD		EQU	SPMDCG+1	; bakuha mode flag
SPBKFM		EQU	SPBKMD+10H	; bakuha flem counter
SPBKYP		EQU	SPBKFM+10H	; bakuhatsu y-pos 
SPBKXP		EQU	SPBKYP+80H	; bakuhatsu x-pos
SPEDFM		EQU	SPBKXP+80H	; bakuhatsu end flem counter
SPEDFG		EQU	SPEDFM+1	; bakuhatsu end flag
SPHNKI		EQU	SPEDFG+1	; bomb hankei flag 
;;;;;;		EQU	SPHNKI+1	;
;-------- spcial jishin ram
SPJIFM		EQU	SNENMD		; jishin flem counter
SPJIMD		EQU	SPJIFM+5	;        mode
SPJILP		EQU	SPJIMD+5	;        loop counter
SPJIYP		EQU	SPJILP+1	;        ken initial y-pos
SPJIXP		EQU	SPJIYP+2	;            "       x-pos
SPWORK		EQU	SPJIXP+2	;	 work
SPVSR1		EQU	SPWORK+0FH	;        BG1 (V) scrool hozon
SPVSR2		EQU	SPVSR1+2	;        BG2 (V) scrool hozon
;;;;;;		EQU	SPVSR2+2	;
;-------- kazamirori shometsu ram
KZYSPD		EQU	SNENMD		; hahen y-speed
KZXSPD		EQU	KZYSPD+0CH	; 	x-speed
KZZSPD		EQU	KZXSPD+0CH	; 	z-speed
KZYPSL		EQU	KZZSPD+0CH	; 	y-pos (L)
KZYPSH		EQU	KZYPSL+0CH	; 	y-pos (H)
KZXPSL		EQU	KZYPSH+0CH	; 	x-pos (L)
KZXPSH		EQU	KZXPSL+0CH	; 	x-pos (H)
KZZPSL		EQU	KZXPSH+0CH      ;      	z-pos (L)
KZFLEM		EQU	KZZPSL+0CH	;	flem counter
KZMODE		EQU	KZFLEM+0CH	;	mode
KZINDX		EQU	KZMODE+0CH	;       index flag
KZOMID		EQU	KZINDX+01H	;       oam index flag
KZCONT		EQU	KZOMID+01H	;	counter
KZBUFF		EQU	KZCONT+0CH	;	y-speed buffer
KZXBUF		EQU	KZBUFF+0CH	;	x-speed buffer
KZZBUF		EQU	KZXBUF+0CH	;       z-speed buffer
KZSTAT		EQU	KZZBUF+0CH	;       start flag
KZTIM0		EQU	KZSTAT+0CH	;	sound timer
KZTMDS		EQU	KZTIM0+02H	;       sound end flag
;-------- kameiwa bomb ram
KMIWYL		EQU	SNENMD		;	y-pos (L)
KMIWYH		EQU	KMIWYL+020H	;	y-pos (H)
KMIWXL		EQU	KMIWYH+020H	;	x-pos (L)
KMIWXH		EQU	KMIWXL+020H	;	x-pos (H)
KMIWTM		EQU	KMIWXH+020H	; 	timer
KMIWCT		EQU	KMIWTM+020H	;	counter
;;;;;;		EQU	KMIWCT+020H	;
;
;
next4		EQU	SPHNKI+2
;
;
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
MJFTADR		EQU	7F5B00H		; moji font address buffer
;
EDMGDT		EQU	MJFTADR+0500H	; "end3" data
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WNDWBF		EQU	EDMGDT+1000H	; windown buffer
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;
MGARTBL		EQU	WNDWBF+1C0H
;
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
CGBKUP		EQU	ENDTBF-200H	; CGWORK back-up
;
;--------------------------------------------------------------------
ENDTBF		EQU	7FE000H-80H	; enemy data buffer
;
;    ground : enemy unit data table for 4x4 rooms
;
;    danjyon : enemy on off  bit for every room 
;
;
;
;
ENITSW		EQU	ENDTBF+1000H	; enemy data On off buffer
;;;;~~~~~~~~~
MBXLBF		EQU	7FFE00H-80H		; RANEMORA USE !!
MBXHBF		EQU	7FFE80H-80H
MBYLBF		EQU	7FFF00H-80H
MBYHBF		EQU	7FFF80H-80H
;;;;~~~~~~~~~
WAXBFL		EQU	RMXBUF		; For WAN WAN  !
WAYBFL		EQU	RMXBUF+100H
;;;;~~~~~~~~~
HYXBFL		EQU	RMXBUF		; For HAYA mushi !
HYXBFH		EQU	RMXBUF+080H	; 4 of !
HYYBFL		EQU	RMXBUF+100H
HYYBFH		EQU	RMXBUF+180H
;;;~~~~~~~~~
HBXBFL		EQU	RMXBUF		; HAYA boss 
HBXBFH		EQU	HBXBFL+80H		; HAYA boss 
HBYBFL		EQU	HBXBFH+80H
HBYBFH		EQU	HBYBFL+80H
;;;;~~~~~~~~~
KRXBUF		EQU	7FFE00H		; keronpa buffer !
KRYBUF		EQU	7FFF00H
;
RMXBUF		EQU	7FFC00H		; RANEMORA USE !!
RMYBUF		EQU	7FFD00H
RMZBUF		EQU	7FFE00H
RMCBUF		EQU	7FFF00H
;- - - - - - - - - - - -
E2NO		EQU	30
E2HF		EQU	30/2
E2MODE		EQU	7FF800H ;ENDTBF
RMCONT		EQU	E2MODE+E2NO
E2YPSL		EQU	E2MODE+E2NO
E2XPSL		EQU	E2YPSL+E2NO
E2YPSH		EQU	E2XPSL+E2NO
E2XPSH		EQU	E2YPSH+E2NO
E2YSPD		EQU	E2XPSH+E2NO
E2XSPD		EQU	E2YSPD+E2NO
E2YSDR		EQU	E2XSPD+E2NO
E2XSDR		EQU	E2YSDR+E2NO
E2TIM0		EQU	E2XSDR+E2NO
E2STAT		EQU	E2TIM0+E2NO
E2CONT		EQU	E2STAT+E2NO
E2WRK0		EQU	E2CONT+E2NO
E2WRK1		EQU	E2WRK0+E2NO
E2ZSPD		EQU	E2WRK1+E2NO
E2ZSDR		EQU	E2ZSPD+E2NO
E2ZPSL		EQU	E2ZSDR+E2NO
ENFRNO		EQU	E2ZSDR
E2CHPT		EQU	E2ZPSL+E2NO
ENCACT		EQU	E2CHPT+E2NO
ENCAMD		EQU	ENCACT+ENNO
ENICMD		EQU	ENCAMD+ENNO
ENDSFG		EQU	ENICMD+ENNO
ENWRK1S		EQU	ENDSFG+ENNO
ENWRK2S		EQU	ENWRK1S+ENNO
ENWRK3S		EQU	ENWRK2S+ENNO
ENCONTS		EQU	ENWRK3S+ENNO
ENZPSLS		EQU	ENCONTS+ENNO
ENTIM0S		EQU	ENZPSLS+ENNO
ENBG2NO		EQU	ENTIM0S+ENNO
ENFRNOS		EQU	ENBG2NO+ENNO
ENNOCRS		EQU	ENFRNOS+ENNO
;- - - Ground mordarm use ! - - - - - - - - - - -
MDXBFL		EQU	ENDSFG+ENNO 
MDXBFH		EQU	MDXBFL+20H*6
MDYBFL		EQU	MDXBFH+20H*6
MDYBFH		EQU 	MDYBFL+20H*6
;
MDSHXL		EQU	MDYBFH+20H*6
GASHXL		EQU	MDYBFH+20H*6
MDSHXH		EQU	MDSHXL+6
GASHXH		EQU	MDSHXL+6
MDSHYL		EQU	MDSHXH+6
GASHYL		EQU	MDSHXH+6
MDSHYH		EQU	MDSHYL+6
GASHYH		EQU	MDSHYL+6
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-- NL use ---(Name touroku)--
WDS3CT		EQU	0B10H
WDS3CX		EQU	WDS3CT
WDS3CY		EQU	WDS3CX+1
WDWTCT		EQU	WDS3CY+1
WDYFLG		EQU	WDWTCT+1
WDXFLG		EQU	WDYFLG+1
WDS3Y2		EQU	WDXFLG+1
WDXMKI		EQU	WDS3Y2+1
;== enemy flag set use ======
ESNO		EQU	008H
ESMODE		EQU	0B00H
;- Ptara angle - -
PTANGL		EQU	ESMODE+ESNO
;;PTANGL+1		EQU	ESMODE+ESNO
PTHANK		EQU	PTANGL+2
PTATTM		EQU	PTHANK+1
PTSPED		EQU	PTATTM+1
;- - Patara use - -
PTBFXL		EQU	0B10H
PTBFXH		EQU	0B20H  
PTBFYL		EQU	0B30H  
PTBFYH		EQU	0B40H  
;- - - - - - - - -
ESXPSL		EQU	ESMODE+ESNO
;- - - - - - - - -
MTFOTY		EQU	ESXPSL		; Motos boss foots y pos !
MTEYCT		EQU	MTFOTY+4	; Motos boss EYES TIMER  !
MTTLXD		EQU	MTEYCT+1	; Motos boss TAIL X ad
MTTLYD		EQU	MTTLXD+10H	; Motos boss TAIL Y ad
MTANGL		EQU	MTTLYD+10H	;     " tail angle
MTHANK		EQU	MTANGL+2	;     "      hankei
MTANSD		EQU	MTHANK+1	; Tail swing speed !
MTANG2		EQU	MTANSD+1	; Tail swing ATACK ANGLE !
MTTLCT		EQU	MTANG2+2	; Tail set count.
;- - - - - - - - -
KBSHXP		EQU	ESXPSL		; Kame boss serch point !
KBSHYP		EQU	ESXPSL+1
KBTLPT		EQU	KBSHYP+1	; Tail pt.
KBTLMK		EQU	KBTLPT+1	; tail muki
KBTLCT		EQU	KBTLMK+1	; tail speed
KBTLTM		EQU	KBTLCT+1	; tail timing
KBWTTM		EQU	KBTLTM+1	; Move wait timing
KBTLYD		EQU	KBWTTM+1	; tail Ypos add 
KBBSFG		EQU	KBTLYD+1	; 0:Normal 1:Snake move 
;- - - - - - - - -
ESXPSH		EQU	ESXPSL+ESNO
ESYPSL		EQU	ESXPSH+ESNO
ESYPSH		EQU	ESYPSL+ESNO
ESSTAT		EQU	ESYPSH+ESNO
ESTIM0		EQU	ESSTAT+ESNO
ESWRK0		EQU	ESTIM0+ESNO
ESKAIF		EQU	ESWRK0+ESNO
ESSWAD		EQU	ESKAIF+ESNO
ENSTTM		EQU	ESSWAD+ESNO*2
FLCLOR		EQU	ENSTTM+ENNO
BRMSCT		EQU	FLCLOR+1	;barikade mesege count !
MDBMCT		EQU	BRMSCT+1	;medusa beam set count !
ENMOD7		EQU	MDBMCT+1
PLSTOP		EQU	ENMOD7+ENNO	; Player move stop !!
PLXMVD		EQU	PLSTOP+1 
PLYMVD		EQU	PLXMVD+2 
DJCKBF		EQU	PLYMVD+2
;;;;;~~ 8 bytes
YAHTCT		EQU	DJCKBF+8	; Mato ate hit point !
ENFLCL		EQU	YAHTCT+1	; Enemy color flash buffer !
YAAACT		EQU	ENFLCL+ENNO	; Mato ate ya count !
YAAOFF		EQU	YAAACT+1	; Ya not shot flg !
KAGIID		EQU	YAAOFF+1	; obj Kagi save data index !
OSETFG		EQU	KAGIID+1	; BG katsugi OBJ set flag !
TLRAM		EQU	OSETFG+1	; Tl USE RAM ! (NAME REGISTRATION)
BXOPEN		EQU	TLRAM+1		; Item box open flag (skelton down!)
;- ENEMY --
ENNOCR		EQU	0BA0H 		; 
ENCRTM		EQU	0BB0H 		; 
ENSWAD		EQU	0BC0H 		; ~ 20h
;
;   ground : on off data adress
;
;   danjyon : data set no.
;
;
ENMOD4		EQU	0BE0H
;---beam-----------------------------------------------------------------
BMNO		EQU	10
BMWRK0		EQU	0BF0H
BMYPSL		EQU	BMWRK0+BMNO
BMXPSL		EQU	BMYPSL+BMNO
BMYPSH		EQU	BMXPSL+BMNO
BMXPSH		EQU	BMYPSH+BMNO
BMYSPD		EQU	BMXPSH+BMNO
BMXSPD		EQU	BMYSPD+BMNO
BMYSDR		EQU	BMXSPD+BMNO
BMXSDR		EQU	BMYSDR+BMNO
BMMODE		EQU	BMXSDR+BMNO
BMSTAT		EQU	BMMODE+BMNO
BMCONT		EQU	BMSTAT+BMNO
BMTIM0		EQU	BMCONT+BMNO
BMMUKI 		EQU	BMTIM0+BMNO
BMPRIO 		EQU	BMMUKI+BMNO
BMOMID 		EQU	BMPRIO+BMNO
BMOMNO 		EQU	BMOMID+BMNO
;=======enemy use=======
ENNO		EQU	16
ENGRNO		EQU	BMOMNO+BMNO	; enemy ground no. !
ENMOD5		EQU	ENGRNO+ENNO	; 
KAGIFG		EQU	ENMOD5+ENNO	; Kagi have flag ! 
ESGRNO		EQU	KAGIFG+ENNO
ENMOD6		EQU	ESGRNO+ESNO 
ENDMPW		EQU	ENMOD6+ENNO	; Damege ukeru power !
ITHTN0		EQU	ENDMPW+ENNO
ITHTN1		EQU	ITHTN0+1
SWCHFG2		EQU	ITHTN1+1
TLRAM2		EQU	SWCHFG2+1	; T.L use !
ITRNDCT		EQU	0CF7H	; Item kusa randam set count !
ENHELP3		EQU	0CF8H	; Enemy work !
URANAIF		EQU	0CF9H	; Uranai kekka
URANAIC		EQU	0CFAH	; count 
HIMICT		EQU	0CFBH		; Player enemy atack count !
HIMIFG		EQU	0CFCH		; Player damage flag!
COSDCT		EQU	0CFDH		; coin sound set count
EICECKF		EQU	0CFEH		; ENICE check flag ! (OAM color set)
;;;;		+1
;-------------------------------------
ENYPSL		EQU	0D00H
ENXPSL		EQU	0D10H
ENYPSH		EQU	0D20H
ENXPSH		EQU	0D30H
ENYSPD		EQU	0D40H
ENXSPD		EQU	0D50H
ENYSDR		EQU	0D60H
ENXSDR		EQU	0D70H
ENSTAT		EQU	0D80H
ENWRK0		EQU	0D90H
ENWRK1		EQU	0DA0H
ENWRK2		EQU	0DB0H
ENCHPT		EQU	0DC0H
ENMODE		EQU	0DD0H
ENMUKI		EQU	0DE0H
ENTIM0		EQU	0DF0H
ENTIM1		EQU	0E00H
ENTIM2		EQU	0E10H
ENMYNO		EQU	0E20H
ENOMID		EQU	0E30H		; not use !
HEMODE		EQU	ENOMID
ENMOD0		EQU	0E40H
ENMOD1		EQU	0E50H
ENLIFE		EQU	ENMOD1
ENMOD2		EQU	0E60H
ENCBFG		EQU	0E70H
ENCONT		EQU	0E80H
ENATCT		EQU	0E90H
ENWRK3		EQU	ENATCT
ENHNFG		EQU	0EA0H
ENCMKI		EQU	0EB0H
ENKBMK		EQU	ENCMKI
ENCTFG		EQU	0EC0H
ENCTCT		EQU	0ED0H
ENTUTM		EQU	0EE0H
ENFLSH		EQU	0EF0H
ENDSPL		EQU	0F00H
ENTIM3		EQU	0F10H
ENKAIF		EQU	0F20H
ENHNYS		EQU	0F30H
ENHNXS		EQU	0F40H
ENCLOR		EQU	0F50H
ENMOD3		EQU	0F60H
ENZPSL		EQU	0F70H
ENZSPD		EQU	0F80H
ENZSDR		EQU	0F90H
;
;-------------------------------------------------------
ENINDX		EQU	0FA0H
NRND		EQU	0FA1H
;;;;;		EQU		0F82H
ENRND		EQU	0FA3H
;;;;		EQU		0F84H	
UNITNO		EQU	0FA5H
;;;;		EQU		0F86H
ENITFG		EQU	0FA7H
;-------------------------------------
DMWRK0		EQU	ENDSXL		; Danjyon map work ram !
;;;;;		+4
;-------------------------------------
ENDSXL		EQU	0FA8H
ENDSYL		EQU	0FA9H
ENKNYP		EQU	0FAAH
ENKNXP		EQU	0FABH
FLMODE		EQU	0FACH
FLXPOS		EQU	0FADH
FLYPOS		EQU	0FAEH
FLTIME		EQU	0FAFH
NOWRMX		EQU	0FB0H
NOWRMY		EQU	0FB1H
WCACHOK		EQU	0FB2H
OAMTYP		EQU	WCACHOK+1
EN2FLG		EQU     OAMTYP+1
ENHELP		EQU     EN2FLG+1
ENHELP2		EQU     ENHELP+1
GRESCT		EQU     ENHELP2+1
GRRMLX		EQU	GRESCT+1
GRRMLY		EQU	GRRMLX+2
GRRMXL		EQU	GRRMLY+2
GRRMXH		EQU	GRRMXL+1
GRRMYL		EQU	GRRMXH+1
GRRMYH		EQU	GRRMYL+1
BUMECR		EQU	GRRMYH+1
ENSTFG		EQU	BUMECR+1
PLSVX1		EQU	ENSTFG+1
PLSVX0		EQU	PLSVX1+1
PLSVY1		EQU	PLSVX0+1
PLSVY0		EQU	PLSVY1+1
OJBKFG		EQU	PLSVY0+1	; Obj bank flag !	
ITSTCT		EQU	PLSVY0+2
PAUSEF          EQU     ITSTCT+16
ENXP2L		EQU	PAUSEF+1	; enemy save xpos !
ENXP2H		EQU	ENXP2L+1
ENYP2L		EQU	ENXP2H+1
ENYP2H		EQU	ENYP2L+1
OTOFLG		EQU	ENYP2H+1	; enemy player kizuki flag !
CALFLG		EQU	OTOFLG+1	      ; city heishi call flag !  
DOORID		EQU	CALFLG+1	; City door position index !
;----------------------------------
NXINDX		EQU	0FE0H
;;;;;  + B
OMECNT		EQU	NXINDX+06H*2
;;;;   + B 
E2STCT		EQU	OMECNT+06H*2	; Many obj set counter !!
NMFLCT		EQU	E2STCT
CGFLTM		EQU	E2STCT+1	; BG flash time !
ESVFLG		EQU	CGFLTM+1	; Enemy save c set flag !
PLSTTM		EQU	ESVFLG+1	; Player stop time !
BSFLFG		EQU	PLSTTM+1	; Boss fail flag !
IWAFLG		EQU	BSFLFG+1	; Iwa goro goro flag
IWACNT		EQU	IWAFLG+1	; Iwa goro goro Cunter
URAFLG		EQU	IWACNT+1	; 0:OMOTE 1:URA
;--------------------------------------------------------------------
;
;  		END
;
		LIST
