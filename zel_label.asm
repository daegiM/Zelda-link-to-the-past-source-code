;
		NOLIST
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.08.30(FRI)
;
;--------------------------------------------------------------------
;
;
;************************************************************************
;*		BASIC ROOM  data					*
;************************************************************************
rm00		EQU	000H
rm01		EQU	004H
rm02		EQU	008H
rm03		EQU	00CH
rm04		EQU	010H
rm05		EQU	014H
rm06		EQU	018H
rm07		EQU	01CH
rm08		EQU	020H
rm09		EQU	024H
rm0A		EQU	028H
rm0B		EQU	02CH
rm0C		EQU	030H
rm0D		EQU	034H
rm0E		EQU	038H
rm0F		EQU	03CH
rm10		EQU	040H
rm11		EQU	044H
rm12		EQU	048H
rm13		EQU	04CH
rm14		EQU	050H
rm15		EQU	054H
rm16		EQU	058H
rm17		EQU	05CH
rm18		EQU	060H
rm19		EQU	064H
rm1A		EQU	068H
rm1B		EQU	06CH
rm1C		EQU	070H
rm1D		EQU	074H
rm1E		EQU	078H
rm1F		EQU	07CH
rm20		EQU	080H
rm21		EQU	084H
rm22		EQU	088H
rm23		EQU	08CH
rm24		EQU	090H
rm25		EQU	094H
rm26		EQU	098H
rm27		EQU	09CH
rm28		EQU	0A0H
rm29		EQU	0A4H
rm2A		EQU	0A8H
rm2B		EQU	0ACH
rm2C		EQU	0B0H
rm2D		EQU	0B4H
rm2E		EQU	0B8H
rm2F		EQU	0BCH
rm30		EQU	0C0H
rm31		EQU	0C4H
rm32		EQU	0C8H
rm33		EQU	0CCH
rm34		EQU	0D0H
rm35		EQU	0D4H
rm36		EQU	0D8H
rm37		EQU	0DCH
;
;
;
;************************************************************************
;************************************************************************
;----------------------------  Address  ---------------------------------
AD00		EQU	00000000B
AD01		EQU	00000100B
AD02		EQU	00001000B
AD03		EQU	00001100B
AD04		EQU	00010000B
AD05		EQU	00010100B
AD06		EQU	00011000B
AD07		EQU	00011100B
AD08		EQU	00100000B
AD09		EQU	00100100B
AD0A		EQU	00101000B
AD0B		EQU	00101100B
AD0C		EQU	00110000B
AD0D		EQU	00110100B
AD0E		EQU	00111000B
AD0F		EQU	00111100B
AD10		EQU	01000000B
AD11		EQU	01000100B
AD12		EQU	01001000B
AD13		EQU	01001100B
AD14		EQU	01010000B
AD15		EQU	01010100B
AD16		EQU	01011000B
AD17		EQU	01011100B
AD18		EQU	01100000B
AD19		EQU	01100100B
AD1A		EQU	01101000B
AD1B		EQU	01101100B
AD1C		EQU	01110000B
AD1D		EQU	01110100B
AD1E		EQU	01111000B
AD1F		EQU	01111100B
AD20		EQU	10000000B
AD21		EQU	10000100B
AD22		EQU	10001000B
AD23		EQU	10001100B
AD24		EQU	10010000B
AD25		EQU	10010100B
AD26		EQU	10011000B
AD27		EQU	10011100B
AD28		EQU	10100000B
AD29		EQU	10100100B
AD2A		EQU	10101000B
AD2B		EQU	10101100B
AD2C		EQU	10110000B
AD2D		EQU	10110100B
AD2E		EQU	10111000B
AD2F		EQU	10111100B
AD30		EQU	11000000B
AD31		EQU	11000100B
AD32		EQU	11001000B
AD33		EQU	11001100B
AD34		EQU	11010000B
AD35		EQU	11010100B
AD36		EQU	11011000B
AD37		EQU	11011100B
AD38		EQU	11100000B
AD39		EQU	11100100B
AD3A		EQU	11101000B
AD3B		EQU	11101100B
AD3C		EQU	11110000B
AD3D		EQU	11110100B
AD3E		EQU	11111000B
AD3F		EQU	11111100B
;
;
;
;\\\\\\\\\\\\\\\\\\\\\\\\  BG.2  unit  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;========================================================================
;=		Change  unit  no.					=
;========================================================================
CEILY		EQU	000H		; ceiling yoko
UPWL0		EQU	001H		; upper-wall up
DNWL0		EQU	002H		;            down
UPWL8		EQU	003H		; lower-wall up
DNWL8		EQU	004H		;            down
UPACH		EQU	005H		; upper-arch up
DNACH		EQU	006H		;            down
UUPWL		EQU	007H		; under-wall up
UDNWL		EQU	008H		;            down
LUSL0		EQU	009H		; 45"wall left-up   (UP - 3F)
LDSL0		EQU	00AH		;         left-down
RUSL0		EQU	00BH		;         right-up
RDSL0		EQU	00CH		;         right-down
LUSL1		EQU	00DH		; 45"wall left-up   (UP - 2F)
LDSL1		EQU	00EH		;         left-down
RUSL1		EQU	00FH		;         right-up
RDSL1		EQU	010H		;         right-down
LUSL2		EQU	011H		; 45"wall left-up   (UP - 1F)
LDSL2		EQU	012H		;         left-down
RUSL2		EQU	013H		;         right-up
RDSL2		EQU	014H		;         right-down
LUSL8		EQU	015H		; 45"wall left-up   (DOWN - 3F)
LDSL8		EQU	016H		;           left-down
RUSL8		EQU	017H		;           right-up
RDSL8		EQU	018H		;           right-down
LUSL9		EQU	019H		; 45"wall left-up   (DOWN - 2F)
LDSL9		EQU	01AH		;           left-down
RUSL9		EQU	01BH		;           right-up
RDSL9		EQU	01CH		;           right-down
LUSLA		EQU	01DH		; 45"wall left-up   (DOWN - 1F)
LDSLA		EQU	01EH		;           left-down
RUSLA		EQU	01FH		;           right-up
RDSLA		EQU	020H		;           right-down
SDSTP		EQU	021H		; saidan step
FNCE1		EQU	022H		; fance width
LUWAK		EQU	023H		; waku left-up
LDWAK		EQU	024H		;      left-down
RUWAK		EQU	025H		;      right-up
RDWAK		EQU	026H		;      right-down
WAKU0		EQU	027H		; waku - 0
WAKU1		EQU	028H		;      - 1
WAKU4		EQU	029H		;      - 4
WAKU5		EQU	02AH		;      - 5
WAKU6		EQU	02BH		;      - 6
WAKU7		EQU	02CH		;      - 7
WAKU8		EQU	02DH		;      - 8
WAKU9		EQU	02EH		;      - 9
USCRB		EQU	02FH		; scramble up
DSCRB		EQU	030H		;          down
USHDW		EQU	031H		; shadow up
DSHDW		EQU	032H		;        down
WCRPT		EQU	033H		; cerpet width
WCEDG		EQU	034H		; cerpet-edge width
WROAD		EQU	035H		; road width
CRTNU		EQU	036H		; certen up
CRTND		EQU	037H		;        down
YOROI		EQU	038H		; yoroi
PILR1		EQU	039H		; pillar
UWNDW		EQU	03AH		; window up
DWNDW		EQU	03BH		;        down
TWCIR		EQU	03CH		; twin-chair
TLDI0		EQU	03DH		; tall dai
SPLR1		EQU	03EH		; small pillar (upller)
WWAK0		EQU	03FH		; water waku - 0
WWAK1		EQU	040H		;            - 1
WWAK4		EQU	041H		;            - 4
WWAK5		EQU	042H		;            - 5
WWAK6		EQU	043H		;            - 6
WWAK7		EQU	044H		;            - 7
WWAK8		EQU	045H		;            - 8
WWAK9		EQU	046H		;            - 9
BTAKI		EQU	047H		; big   taki
STAKI		EQU	048H		; small
BLTW0		EQU	049H		; beltconver waku - 0
BLTW1		EQU	04AH		;                 - 1
SPLR3		EQU	04BH		; small pillar (lower)
STAND		EQU	04CH		; stand
CHMNY		EQU	04DH		; chimney
OVEN0		EQU	04EH		; oven
RACKD		EQU	04FH		; rack
LFYOK		EQU	050H		; lift yoko
TTHL4		EQU	051H		; tetsu-ball hole 4
TTHL5		EQU	052H		;                 5
DKN11		EQU	053H		; dokan yoko
;spce		EQU	054H		; 
TTMS0		EQU	055H		; taimatsu up
TTMS1		EQU	056H		;          down
CWND0		EQU	057H		; chapel up-window up
CWND1		EQU	058H		;                  down
CWND4		EQU	059H		; chapel down-window up
CWND5		EQU	05AH		;                    down
TTHL0		EQU	05BH		; tetsu-ball hole 0
TTHL1		EQU	05CH		;                 1
FNCE3		EQU	05DH		; big fance width
WNMBL		EQU	05EH		; width non-move block
LWFNC		EQU	05FH		; long-width fance
;
;========================================================================
CEILT		EQU	060H		; ceiling tate
LFWL0		EQU	061H		; upper-wall left  
RTWL0		EQU	062H		;            right
LFWL8		EQU	063H		; lower-wall left  
RTWL8		EQU	064H		;            right
LFACH		EQU	065H		; upper-arch left
RTACH		EQU	066H		;            right
ULFWL		EQU	067H		; under-wall left  
URTWL		EQU	068H		;            right
FNCE0		EQU	069H		; fance length
WAKU2		EQU	06AH		; waku - 2
WAKU3		EQU	06BH		;      - 3
LSCRB		EQU	06CH		; scramble left
RSCRB		EQU	06DH		;          right
LSHDW		EQU	06EH		; shadow left
RSHDW		EQU	06FH		;        right
LCRPT		EQU	070H		; carpet length
LCEDG		EQU	071H		; carpet-edge length
LROAD		EQU	072H		; road length
CRTNL		EQU	073H		; certen left
CRTNR		EQU	074H		;        right
PILR0		EQU	075H		; pillar
LWNDW		EQU	076H		; window left
RWNDW		EQU	077H		;        right
SPLR0		EQU	078H		; small pillar (left)
WWAK2		EQU	079H		; water waku - 2
WWAK3		EQU	07AH		;            - 3
SPLR2		EQU	07BH		; small pillar (right)
LFTAT		EQU	07CH		; lift tate
DKN10		EQU	07DH		; dokan tate
;spce		EQU	07EH		; 
TTMS2		EQU	07FH		; taimatsu left
TTMS3		EQU	080H		;          right
CWND2		EQU	081H		; chapel up-window left
CWND3		EQU	082H		;                  right
CWND6		EQU	083H		; chapel down-window left
CWND7		EQU	084H		;                    right
TTHL2		EQU	085H		; tetsu-ball hole 2
TTHL3		EQU	086H		;                 3
TLDI1		EQU	087H		; tall dai
FNCE2		EQU	088H		; big fance langth
LNMBL		EQU	089H		; length non-move block
LLFNC		EQU	08AH		; long-length fance
LSCR1		EQU	08BH		; tobiori-fuchi left
RSCR1		EQU	08CH		;               right
JYTN3		EQU	08DH		; jyutan fuchi left
JYTN4		EQU	08EH		;              right
STND1		EQU	08FH		; stand
YGKB2		EQU	090H		; yogore-kabe left
YGKB3		EQU	091H		;             right
CNGY2		EQU	092H		; change-yuka (A)
CNGY3		EQU	093H		; change-yuka (B)
ERAY1		EQU	094H		; erase-yuka
MTBO1		EQU	095H		; mochiage-tubo
HMYK1		EQU	096H		; hummer-kui
;spce		equ	097h		;
;spce		equ	098h		;
;spce		equ	099h		;
;spce		equ	09ah		;
;spce		equ	09bh		;
;spce		equ	09ch		;
;spce		equ	09dh		;
;spce		equ	09eh		;
;spce		equ	09fh		;
;
;========================================================================
LUCEL		EQU	0A0H		; ceiling left-up
LDCEL		EQU	0A1H		;              down
RUCEL		EQU	0A2H		;         right-up
RDCEL		EQU	0A3H		;               down
HLWK0		EQU	0A4H		; hole 4x4 (waku)
LUHOL		EQU	0A5H		;      left-up
LDHOL		EQU	0A6H		;           down
RUHOL		EQU	0A7H		;      right-up
RDHOL		EQU	0A8H		;            down
LUNUK		EQU	0A9H		; nuki left-up
LDNUK		EQU	0AAH		;           down
RUNUK		EQU	0ABH		;      right-up
RDNUK		EQU	0ACH		;            down
;spce		equ	0adh		;
;spce		equ	0aeh		;
;spce		equ	0afh		;
;
;========================================================================
USCR1		EQU	0B0H		; tobiori-fuchi up
DSCR1		EQU	0B1H		;               down
JYTN0		EQU	0B2H		; jyutan
JYTN1		EQU	0B3H		;        fuchi up
JYTN2		EQU	0B4H		;              down
TRMKD		EQU	0B5H		; tare-maku
YGKB0		EQU	0B6H		; yogore-kabe up
YGKB1		EQU	0B7H		;             down
CNGY4		EQU	0B8H		; change-yuka (A)
CNGY5		EQU	0B9H		; change-yuka (B)
ERAY0		EQU	0BAH		; erase-yuka
DMYSW		EQU	0BBH		; dammy-swich
MTBO0		EQU	0BCH		; mochiage-tubo
HMYK0		EQU	0BDH		; hummer-kui
;spce		equ	0beh		;
;spce		equ	0bfh		;
;
;========================================================================
CEIL4		EQU	0C0H		; ceiling
SIDAN		EQU	0C1H		; saidan
HOLE4		EQU	0C2H		; hole 4x4
HOLE3		EQU	0C3H		;      3x3
STYUK		EQU	0C4H		; 4x4 yuka
WTYUK		EQU	0C5H		;     water yuka
NUKID		EQU	0C6H		;     nuki
STPYK		EQU	0C7H		;     stop yuka
WATR0		EQU	0C8H		;     water-0
WATR1		EQU	0C9H		;          -1
MVYKD		EQU	0CAH		;     move yuka
MVWL0		EQU	0CBH		; move wall (up)   : ERASE
MVWL1		EQU	0CCH		;           (down)
MVWL2		EQU	0CDH		;           (left)
MVWL3		EQU	0CEH		;           (right)
LBRGE		EQU	0CFH		; brige length
WBRGE		EQU	0D0H		;       wideth
ICEYK		EQU	0D1H		; 4x4 ice
ICEY1		EQU	0D2H		; 4x4 ice (little)
MVWL4		EQU	0D3H		; move wall (up)   : WRITE
MVWL5		EQU	0D4H		;           (down)
MVWL6		EQU	0D5H		;           (left)
MVWL7		EQU	0D6H		;           (right)
NUKI3		EQU	0D7H		; 3x3 nuki
DNWTR		EQU	0D8H		; down wipe-water
CSNKI		EQU	0D9H		; cross nuki
UPWTR		EQU	0DAH		; up wipe-water
B1YUK		EQU	0DBH		; BG.1 yuka
CSTGE		EQU	0DCH		; chapel stage
BTBLE		EQU	0DDH		; big table
TGBLK		EQU	0DEH		; toge-block
DGRYK		EQU	0DFH		; danger yuka
CLYK0		EQU	0E0H		; color yuka - 0
CLYK1		EQU	0E1H		;              1
RPYYK		EQU	0E2H		; rupy-yuka
CNVY0		EQU	0E3H		; yuka-conver up
CNVY1		EQU	0E4H		;             down
CNVY2		EQU	0E5H		;             left
CNVY3		EQU	0E6H		;             right
WATR2		EQU	0E7H		; 4x4 water-2
SBKYK		EQU	0E8H		; sabaku yuka
;spce		equ	0e9h		;
;spce		equ	0eah		;
;spce		equ	0ebh		;
;spce		equ	0ech		;
;spce		equ	0edh		;
;spce		equ	0eeh		;
;spce		equ	0efh		;
;spce		equ	0f0h		;
;spce		equ	0f1h		;
;spce		equ	0f2h		;
;spce		equ	0f3h		;
;spce		equ	0f4h		;
;spce		equ	0f5h		;
;spce		equ	0f6h		;
;spce		equ	0f7h		;
;
;========================================================================
SFIX0		EQU	0F8H		; special FIX - 0
SFIX1		EQU	0F9H		;               1
SFIX2		EQU	0FAH		;               2
SFIX3		EQU	0FBH		;               3
SFIX4		EQU	0FCH		;               4
SFIX5		EQU	0FDH		;               5
SFIX6		EQU	0FEH		;               6
SFIX7		EQU	0FFH		;               7
;
;
;
;========================================================================
;=		Fix  unit  no.						=
;========================================================================
LUCR0		EQU	000H		; coner left-up
LDCR0		EQU	001H		;       left-down
RUCR0		EQU	002H		;       right-up
RDCR0		EQU	003H		;       right-down
LUPL0		EQU	004H		; pillar left-up
LDPL0		EQU	005H		;        left-down
RUPL0		EQU	006H		;        right-up
RDPL0		EQU	007H		;        right-down
LUCR8		EQU	008H		; down coner left-up
LDCR8		EQU	009H		;            left-down
RUCR8		EQU	00AH		;            right-up
RDCR8		EQU	00BH		;            right-down
LUPL8		EQU	00CH		; down pillar left-up
LDPL8		EQU	00DH		;             left-down
RUPL8		EQU	00EH		;             right-up
RDPL8		EQU	00FH		;             right-down
LUCP0		EQU	010H		; length coner pillar left-up
LDCP0		EQU	011H		;                     left-down
RUCP0		EQU	012H		;                     right-up
RDCP0		EQU	013H		;                     right-down
LUCP1		EQU	014H		; width coner pillar left-up
LDCP1		EQU	015H		;                    left-down
RUCP1		EQU	016H		;                    right-up
RDCP1		EQU	017H		;                    right-down
ULUCR		EQU	018H		; under coner left-up
ULDCR		EQU	019H		;             left-down
URUCR		EQU	01AH		;             right-up
URDCR		EQU	01BH		;             right-down
MONO0		EQU	01CH		; mono - 0 (4x4 sekizo)
MONO1		EQU	01DH		;      - 1 (2x4    "  )
ONSWH		EQU	01EH		; on  swich
OFSWH		EQU	01FH		; off
SMLDI		EQU	020H		; small dai
TARUD		EQU	021H		; taru
OPNYK		EQU	022H		; open yuka
TABLE		EQU	023H		; table
KCHIR		EQU	024H		; chair king
QCHIR		EQU	025H		;       queen
BCHIR		EQU	026H		;       big
SCHIR		EQU	027H		;       small
BEDDT		EQU	028H		; bed
DANRO		EQU	029H		; danro
KZRPC		EQU	02AH		; kazari picture
KZRSD		EQU	02BH		;        sword
KZRBD		EQU	02CH		;        bed
UPSTP		EQU	02DH		; step up
DNSTP		EQU	02EH		;      down
KDNSP		EQU	02FH		;      kakushi down
UDST0		EQU	030H		;      up,down (floor change)
UDST1		EQU	031H		;      up,down
NSTEP		EQU	032H		;      normal
WSTEP		EQU	033H		;      water
NMBLK		EQU	034H		; not-move block
WSSTP		EQU	035H		; water side setp
TBRSP		EQU	036H		; tobiori step
WGATE		EQU	037H		; water gate
USTEP		EQU	038H		; up step
DSTEP		EQU	039H		; down step
USTE1		EQU	03AH		; up step   (down)
DSTE1		EQU	03BH		; down step (down)
CWLKZ		EQU	03CH		; chapel wall kazari
BBLMP		EQU	03DH		; baba lamp
CCHIR		EQU	03EH		; chapel chair
DVLDI		EQU	03FH		; devil dai
;
;
;
;
;
;\\\\\\\\\\\\\\\\\\\\\\\\  BG.2  unit  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;========================================================================
;=		Rewrite Fix  unit  no.					=
;========================================================================
RWHL0		EQU	000H		; hole (waku)
RWYUK		EQU	001H		; yuka
;
;
;
;
;
;\\\\\\\\\\\\\\\\\\\\\\\\  DOOR  unit  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;========================================================================
;========================================================================
nordr		EQU	0000000000000000B
udrdr		EQU	0000001000000000B
dk2dr		EQU	0000010000000000B
waldr		EQU	0000011000000000B
nuldr		EQU	0000100000000000B
djndr		EQU	0000101000000000B
dj1dr		EQU	0000110000000000B
dktdr		EQU	0000111000000000B
dk1dr		EQU	0001000000000000B
extdr		EQU	0001001000000000B
djcdr		EQU	0001010000000000B
cngdr		EQU	0001011000000000B	; on/off not-check door
;
shtdr		EQU	0001100000000000B
eradr		EQU	0001101000000000B
ky0dr 		EQU	0001110000000000B
ky1dr 		EQU	0001111000000000B
ky2dr 		EQU	0010000000000000B
ky3dr 		EQU	0010001000000000B
ky4dr 		EQU	0010010000000000B
ky5dr 		EQU	0010011000000000B
ky6dr 		EQU	0010100000000000B
ky7dr 		EQU	0010101000000000B
dordr		EQU	0010110000000000B
bmbdr		EQU	0010111000000000B
crhdr		EQU	0011000000000000B
ctndr		EQU	0011001000000000B
swhdr		EQU	0011010000000000B
st0dr		EQU	0011011000000000B
st1dr		EQU	0011100000000000B
;spce		EQU	0011101000000000B
;spce		EQU	0011110000000000B
;spce		EQU	0011111000000000B
udnor		EQU	0100000000000000B
uddor		EQU	0100001000000000B
udsht		EQU	0100010000000000B
udwrp		EQU	0100011000000000B
udst0		EQU	0100100000000000B
udst1		EQU	0100101000000000B
;spce		EQU	0100110000000000B
;spce		EQU	0100111000000000B	; on/off check door
;
;
p0		EQU	0000000000000000B
p1		EQU	0000000000010000B
p2		EQU	0000000000100000B
p3		EQU	0000000000110000B
p4		EQU	0000000001000000B
p5		EQU	0000000001010000B
p6		EQU	0000000001100000B
p7		EQU	0000000001110000B
p8		EQU	0000000010000000B
p9		EQU	0000000010010000B
pA		EQU	0000000010100000B
pB		EQU	0000000010110000B
;
;
updor		EQU	0000000000000000B
dndor		EQU	0000000000000001B
lfdor		EQU	0000000000000010B
rtdor		EQU	0000000000000011B
;
;
;
nor_dr		EQU	0000000000000000B
udr_dr		EQU	0000000000000010B
dk2_dr		EQU	0000000000000100B
wal_dr		EQU	0000000000000110B
nul_dr		EQU	0000000000001000B
djn_dr		EQU	0000000000001010B
dj1_dr		EQU	0000000000001100B
dkt_dr		EQU	0000000000001110B
dk1_dr		EQU	0000000000010000B
ext_dr		EQU	0000000000010010B
djc_dr		EQU	0000000000010100B
cng_dr		EQU	0000000000010110B	; on/off not-check door
;
sht_dr		EQU	0000000000011000B
era_dr		EQU	0000000000011010B
ky0_dr 		EQU	0000000000011100B
ky1_dr 		EQU	0000000000011110B
ky2_dr 		EQU	0000000000100000B
ky3_dr 		EQU	0000000000100010B
ky4_dr 		EQU	0000000000100100B
ky5_dr 		EQU	0000000000100110B
ky6_dr 		EQU	0000000000101000B
ky7_dr 		EQU	0000000000101010B
dor_dr		EQU	0000000000101100B
bmb_dr		EQU	0000000000101110B
crh_dr		EQU	0000000000110000B
ctn_dr		EQU	0000000000110010B
swh_dr		EQU	0000000000110100B
st0_dr		EQU	0000000000110110B
st1_dr		EQU	0000000000111000B
;spce		EQU	0000000000111010B
;spce		EQU	0000000000111100B
;spce		EQU	0000000000111110B
ud_nor		EQU	0000000001000000B
ud_dor		EQU	0000000001000010B
ud_sht		EQU	0000000001000100B
ud_wrp		EQU	0000000001000110B
ud_st0		EQU	0000000001001000B
ud_st1		EQU	0000000001001010B
;spce		EQU	0000000001001100B
;spce		EQU	0000000001001110B	; on/off check door
;
;
;
;
;
;
;		END
		LIST
