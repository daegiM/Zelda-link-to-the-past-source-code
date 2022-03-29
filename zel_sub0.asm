;
		INCLUDE	zel_ram.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.10.07(MON)
;
;------------------------------------------------------------------------
;
		ORG	00F800H
;
;=============================================== (zel_init) =============
		GLB	PLMAINZ,DJEXTCK,UROJCST,ROBJCST,DIECSET
;
		GLB	RBGCDT,CGPTDT
;
		GLB	SWYKCNG0,SWYKCNG
		GLB	KAGEIT,KAGEI20,KAGEMV,KAGEMV1,KAGEMV2
;
		GLB	p3_sitm,p3_msge,p3_mapd,p3_life,p3_pray,p3_cgrs
		GLB	p3_gmpd,p3_mpup,p3_lmup,p3_warp,p3_prst
;=============================================== (zel_main) =============
		EXT	JSRSUBL
;
		EXT	MD_gdint,MD_djply,MD_bcfot,MD_bckgr,MD_ubsfo,MD_usscl
		EXT	MD_psrst
;=============================================== (zel_vma) ==============
		EXT	VT01,bgw18
;=============================================== (zel_init) =============
		EXT	PLMN2000,MPBTSET1,CGWSET0,CGWSET1,CGWSET2,KCOLSET,DJKYSV
;=============================================== (zel_bgwt) =============
		EXT	BLKPLY
;=============================================== (zel_char) =============
		EXT	CGCNG1
;=============================================== (zel_bg30) =============
		EXT	SLITEM,MTRDSP,KAIHUKU,KAIMP
;=============================================== (zel_comn) =============
		EXT	LGTWPMV,FLNODSP,CTPCCNG,YMCGCNG
;=============================================== (zel_dmap) =============
		EXT	MAPDSP
;=============================================== (zel_gmap) =============
		EXT	GMAPDP,MPWARP
;=============================================== (zel_play) =============
		EXT	PYOMST,INWDIT,INWDMV,BMCLER
;=============================================== (zel_enmy) =============
		EXT	ENEMY
;=============================================== (zel_msge) =============
		EXT	MSGE_I
;========================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;
;========================================================================
;************************************************************************
;*		Play  main				(PLMAINZ)	*
;************************************************************************
PLMAINZ		EQU	$
		LDA	<GMMODE
		BEQ	PLMZ100		; danjyon ?
;					; yes
		LDA	<GAMEMD
		CMP	#p3_mapd
		BNE	PLMZ20		; map ?
;					; no
		LDA	!MAPDMD
		BEQ	PLMZ200		; fade out ?
;					; no
		CMP	#007H
		BEQ	PLMZ200		; fade in ?
;					; no
		BRA	PLMNZ300
;
PLMZ20		EQU	$
		JSL	>BLKPLY		; block play
		BRA	PLMZ200
;
PLMZ100		EQU	$
		LDA	<GAMEMD
		CMP	#p3_gmpd
		BEQ	PLMZ140		; ground-map ?
;					; no
		CMP	#p3_warp
		BNE	PLMZ200		; map warp ?
;					; yes
PLMZ140		EQU	$
		LDA	!MAPDMD
		BNE	PLMNZ300	; fade out ?
;					; yes
PLMZ200		EQU	$
		JSL	>ENEMY		; enemy move
;
 		JSL	>PYOMST		; character set
;
		LDA	<GMMODE
		BNE	PLMZ240		; ground ?
;					; yes
		JSL	>PLMN2000	; rain
PLMZ240		EQU	$
		JSL	>MTRDSP		; mater display
;
		LDA	<GAMEMD
		CMP	#p3_msge
		BEQ	PLMNZ300	; message ?
;					; no
		JSL	>LGTWPMV	; wipe move
PLMNZ300		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		JSL	>PLMSZ00
;
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		LDA	<SCCH2
		ADC	!YUREXD
		STA	!SSCCH2
		LDA	<SCCV2
		CLC
		ADC	!YUREYD
		STA	!SSCCV2
;
		LDA	<SCCH1
		CLC
		ADC	!YUREXD
		STA	!SSCCH1
		LDA	<SCCV1
		CLC
		ADC	!YUREYD
		STA	!SSCCV1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
NOTRTL		EQU	$
		RTL
;
;
;
PLZTBLL		EQU	$
p3not		BYTE	LOW  NOTRTL	; 0 : nothing
p3sitm		BYTE	LOW  SLITEM	; 1 : select item main
p3msge		BYTE	LOW  MSGE_I	; 2 : message
p3mapd		BYTE	LOW  MAPDSP	; 3 : map display
p3life		BYTE	LOW  LIFEUP	; 4 : life kaifuku
p3pray		BYTE	LOW  PRAYMV	; 5 : pray
p3cgrs		BYTE	LOW  CGRSET	; 6 : CG. reset
p3gmpd		BYTE	LOW  GMAPDP	; 7 : Ground map
p3mpup		BYTE	LOW  MPUP	; 8 : MP kaifuku
p3lmup		BYTE	LOW  LFMPUP	; 9 : life,MP kaifuku
p3warp		BYTE	LOW  MPWARP	; A : map warp
p3prst		BYTE	LOW  PSRSCK	; B : pause-reset check
;
PLZTBLH		EQU	$
		BYTE	HIGH NOTRTL
		BYTE	HIGH SLITEM
		BYTE	HIGH MSGE_I
		BYTE	HIGH MAPDSP
		BYTE	HIGH LIFEUP
		BYTE	HIGH PRAYMV
		BYTE	HIGH CGRSET
		BYTE	HIGH GMAPDP
		BYTE	HIGH MPUP
		BYTE	HIGH LFMPUP
		BYTE	HIGH MPWARP
		BYTE	HIGH PSRSCK
;
PLZTBLB		EQU	$
		BYTE	BANK NOTRTL
		BYTE	BANK SLITEM
		BYTE	BANK MSGE_I
		BYTE	BANK MAPDSP
		BYTE	BANK LIFEUP
		BYTE	BANK PRAYMV
		BYTE	BANK CGRSET
		BYTE	BANK GMAPDP
		BYTE	BANK MPUP
		BYTE	BANK LFMPUP
		BYTE	BANK MPWARP
		BYTE	BANK PSRSCK
;
;
p3_sitm		EQU	(p3sitm-p3not)
p3_msge 	EQU	(p3msge-p3not)
p3_mapd		EQU	(p3mapd-p3not)
p3_life		EQU	(p3life-p3not)
p3_pray		EQU	(p3pray-p3not)
p3_cgrs		EQU	(p3cgrs-p3not)
p3_gmpd		EQU	(p3gmpd-p3not)
p3_mpup		EQU	(p3mpup-p3not)
p3_lmup		EQU	(p3lmup-p3not)
p3_warp		EQU	(p3warp-p3not)
p3_prst		EQU	(p3prst-p3not)
;
;
PLMSZ00		EQU	$
		LDX	<GAMEMD
		LDA	>PLZTBLL,X
		STA	<WORK0
		LDA	>PLZTBLH,X
		STA	<WORK1
		LDA	>PLZTBLB,X
		STA	<WORK2
		JML	(!WORK0)
;
;
;
;************************************************************************
;*		Pray move				(PRAYMV)	*
;************************************************************************
PRAYMV		EQU	$
		LDA	<JRSBPT
		JSR	>JSRSUBL
		LWORD	CGWSET0		; 0 : CG. work set
		LWORD	CGCNG1		; 1 : CG. change (fade out)
		LWORD	PRAY000		; 2 : window init. set
		LWORD	PRAY100		; 3 : CG. change (fade in)
		LWORD	PRAY200		; 4 : pray window move
;
;
PRAY000		EQU	$
		JSL	>INWDIT		; window init. set
;
		LDA	>CCNGED
		DEC	A
		STA	>CCNGCT
		LDA	#000H
		STA	>CCNGED
		LDA	#002H
		STA	>CCNGFG		; fade-in set
		RTL
;
;
PRAY100		EQU	$
		JSL	>CGCNG1		; CG. change (fade in)
;
PRAY200		EQU	$
		JSL	>INWDMV		; pray window move
		RTL
;
;
;
;************************************************************************
;*		CG. reset				(CGRSET)	*
;************************************************************************
CGRSET		EQU	$
		LDA	<JRSBPT
		JSL	>JSRSUBL
		LWORD	CGWSET0		; 0 : CG. reset-0
		LWORD	CGCNG1		; 1 : CG. change (fade out)
		LWORD	CGWSET1		; 2 : new CG. point
		LWORD	CGWSET2		; 3 : CG. change (fade in)
;
;
;
;************************************************************************
;*		Life kaifuku				(LIFEUP)	*
;************************************************************************
LIFEUP		EQU	$
		JSL	>KAIHUKU	; life up
		BCC	LFUP40		; end ?
;					; yes
LFUP20		EQU	$
		LDA	<KENKY
		AND	#10111111B
		STA	<KENKY
		INC	<B3CHFG
		STZ	<GAMEMD
		LDA	!NXSLMD
		STA	<SLMODE
LFUP40		EQU	$
		RTL
;
;
;************************************************************************
;*		MP kaifuku				(MPUP)		*
;************************************************************************
MPUP		EQU	$
		JSL	>KAIMP
		BCS	LFUP20		; end ?
;					; no
		RTL
;
;
;************************************************************************
;*		Life,MP kaifuku				(LFMPUP)	*
;************************************************************************
LFMPUP		EQU	$
		JSL	>KAIHUKU	; life up
		BCC	LMUP20		; end ?
;					;
		LDA	#p3_mpup
		STA	<GAMEMD
LMUP20		EQU	$
		JSL	>KAIMP		; MP up
		BCC	LMUP40		; end ?
;					; yes
		LDA	#p3_life
		STA	<GAMEMD
LMUP40		EQU	$
		RTL
;
;
;
;
;
;
;************************************************************************
;*		Danjyon exit check			(DJEXTCK)	*
;************************************************************************
BOSSDT		EQU	$
;			shid saba yama ssai
		BYTE	0C8H,033H,007H,020H
;
;			hkra sndn mori numa  ice kame mchi
		BYTE	006H,05AH,029H,090H,0DEH,0A4H,0ACH,00DH
EXITDT		EQU	$
		BYTE	0C9H,063H,077H,020H
;
		BYTE	028H,04AH,059H,098H,00EH,0D6H,0DBH,00DH
;
;
;
DJEXTCK		EQU	$
;// 03.07.24 //		LDA	<SLMODE
;// 03.07.24 //		CMP	#MD_djply
;// 03.07.24 //		BEQ	DECK100		; danjyon ?
;// 03.07.24 //;					; no
;// 03.07.24 //		LDA	#0FFH
;// 03.07.24 //		STA	<RMXYCT
;// 03.07.24 //		STA	<RMXYCT+1
;// 03.07.24 //		LDA	>GNDTBL+081H
;// 03.07.24 //		ORA	#00100000B
;// 03.07.24 //		STA	>GNDTBL+081H
;// 03.07.24 //		BRA	DECK200
;// 03.07.24 //;
;// 03.07.24 //DECK100		EQU	$
		JSL	>DIECSET	; die count set
		JSL	>DJKYSV		; danjyon key save
;
		LDA	!EMYSTT+1
		ORA	#10000000B
		STA	!EMYSTT+1
;
		JSL	>MPBTSET1	; map on/off bit set
;
		LDX	#EXITDT-BOSSDT
		LDA	<RMXYCT
;// 03.07.15 //		BNE	DECK120		; polygon-room ?
;// 03.07.15 //;					; yes
;// 03.07.15 //		LDA	<BKRMPT
DECK120		EQU	$
		DEX
		CMP	>BOSSDT,X
		BNE	DECK120		; boss room ?
;					; yes
		LDA	>EXITDT,X
		STA	<RMXYCT
		CMP	#0020H
		BNE	DECK180		; shisai-room ?
;					; yes
		LDA	#003H
		STA	>MODTBL0	; kouhan set
		LDA	>GNDTBL+2
		ORA	#00100000B
		STA	>GNDTBL+2
;
		LDA	>GDTRPF
		EOR	#01000000B
		STA	>GDTRPF
;
		JSL	>ROBJCST	; Obj. character table set (Ground table)
;
		JSL	>BMCLER
		STZ	!MRTKFG
		STZ	<KENMD
		STZ	<KENKY
		STZ	!KNPASFG
		LDA	#001H
		STA	!PYALSP
;
		LDA	#MD_gdint
		STA	!NXSLMD
		LDA	#MD_bckgr
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
		RTL
;
;
DECK180		EQU	$
		CMP	#00DH
		BNE	DECK190		; ura-shisai ?
;					; yes
		LDA	#MD_usscl
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	!MAPDMD
		LDA	#00100000B
		STA	<WD2131
		RTL
;
;
DECK190		EQU	$
		CPX	#003H
		BCC	DECK200		; omote-danjyon ?
;					; no
		LDA	#0F1H
		STA	!SOUND0
		STA	!SVSND0		; <sound0>
;
		LDA	#MD_ubsfo
		BRA	DECK220
;
DECK200		EQU	$
		LDA	#MD_bcfot
DECK220		EQU	$
		STA	<SLMODE
DECK240		EQU	$
		LDA	#MD_gdint
		STA	!NXSLMD
		STZ	<GAMEMD
		STZ	<JRSBPT
		RTL
;
;
;
;************************************************************************
;*		Die count set				(DIECSET)	*
;************************************************************************
DIECSET		EQU	$
		PHX			; (X) push
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	!DJNNO
		LDA	>DIECONT
		STA	>DIECT00,X	; die count save
;
		CPX	#008H
		BEQ	DIEC80		; shisai ?
;					; no
		LDA	#00000H
		STA	>DIECONT
DIEC80		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		PLX			; (X) pull
		RTL
;
;
;
;
;************************************************************************
;*		Pause-reset check			(PSRSCK)	*
;************************************************************************
PSRSCK		EQU	$
		LDA	<GMMODE
		BNE	PSRSC20		; ground ?
;					; yes
		JSL	>YMCGCNG	; yama flashing
PSRSC20		EQU	$
		JSL	>MSGE_I
		STZ	<B3CHFG
		STZ	!GMAPDF
		LDA	<JRSBPT
		CMP	#003H
		BCS	PSRSC30		;
;					;
		INC	<JRSBPT
		BRA	PSRSC40
;
PSRSC30		EQU	$
		STZ	<VRFLG
PSRSC40		EQU	$
		LDA	<GAMEMD
		BNE	PSRSC80		; check ?
;					; yes
		STZ	<JRSBPT
		LDA	#VT01
		STA	<VRFLG
		LDA	!MSG_RTS
		BEQ	PSRSC60		; pause-reset ?
;					; yes
;// 03.10.01 //		MEM16
;// 03.10.01 //		REP	#00100000B	; memory 16bit mode
;// 03.10.01 //;
;// 03.10.01 //		LDA	#00000H
;// 03.10.01 //		STA	>CGWORK+000H
;// 03.10.01 //		LDA	>CGRAM+040H
;// 03.10.01 //		STA	>CGWORK+040H
;// 03.10.01 //;
;// 03.10.01 //		STZ	!ITEMMD
;// 03.10.01 //;
;// 03.10.01 //		MEM8
;// 03.10.01 //		SEP	#00100000B	; memory 8bit mode
;// 03.10.01 //;
;// 03.10.01 //		LDA	#000H
;// 03.10.01 //		STA	>LFNWCT		; heart off
;// 03.10.01 //		JSL	>MTRDSP
;// 03.10.01 //;
;// 03.10.01 //		STZ	!FLNODFG
;// 03.10.01 //		JSL	>FLNODSP	; floor no. off
;// 03.10.01 //		INC	<B3CHFG
;
		LDA	#00FH
		STA	!SOUND1		; <sound1>
		LDA	#MD_psrst
		STA	<SLMODE
		LDA	#001H
		STA	<GAMEMD
;
		STZ	!BLKMODE+0
		STZ	!BLKMODE+1
;// 03.10.01 //		STZ	<SCCV3
;// 03.10.01 //		STZ	<SCCV31
;// 03.10.01 //		STZ	!BMMODE
		RTL
;
;
PSRSC60		EQU	$
		LDA	!MRTS_BK
		STA	!MSG_RTS
PSRSC80		EQU	$
		RTL
;
;
;
;
;
;
;************************************************************************
;*		Enemy character point set		(ROBJCST)	*
;************************************************************************
ROBJCDT		EQU	$		; character table
		HEX	00,00,00,00,00,00,00,00		; zenhan
		HEX	00,00,00,00,00,00,00,00
		HEX	00,00,00,00,00,00,00,00
		HEX	00,00,00,02,02,00,00,00
		HEX	00,00,00,02,02,00,00,00
		HEX	00,00,00,02,02,00,00,00
		HEX	00,00,00,00,00,00,00,00
		HEX	00,00,00,00,00,00,00,00
ROBJCD0		EQU	$
		HEX	07,07,07,10,10,10,10,10		; chuban
		HEX	07,07,07,10,10,10,10,04
		HEX	06,06,00,03,03,00,0D,0A
		HEX	06,06,01,01,01,04,05,05
		HEX	06,06,06,01,01,04,05,05
		HEX	06,09,0F,00,00,0B,0B,05
		HEX	08,08,0A,04,04,04,04,04
		HEX	08,08,0A,04,04,04,04,04
ROBJCD1		EQU	$
		HEX	07,07,1A,10,10,10,10,10		; kouhan
		HEX	07,07,1A,10,10,10,10,04
		HEX	06,06,00,03,03,00,0D,0A
		HEX	06,06,1C,1C,1C,02,05,05
		HEX	06,06,06,1C,1C,00,05,05
		HEX	06,00,0F,00,00,23,23,05
		HEX	1F,1F,0A,20,20,20,20,20
		HEX	1F,1F,0A,20,20,20,20,20
;;;;;;;;		HEX	25,25,1A,21,21,21,21,21		; kouhan
;;;;;;;;		HEX	25,25,1A,21,21,21,21,20
;;;;;;;;		HEX	1B,1B,12,1D,1D,12,24,22
;;;;;;;;		HEX	1B,1B,1C,1C,1C,1C,1E,1E
;;;;;;;;		HEX	1B,1B,1B,1C,1C,12,1E,1E
;;;;;;;;		HEX	1B,12,0F,12,12,23,23,1E
;;;;;;;;		HEX	1F,1F,22,20,20,20,20,20
;;;;;;;;		HEX	1F,1F,22,20,20,20,20,20
ROBJCD2		EQU	$
		HEX	13,13,17,14,14,14,14,14		; URA
		HEX	13,13,17,14,14,14,14,16
		HEX	15,15,12,13,13,18,16,16
		HEX	15,15,13,26,26,13,17,17
		HEX	15,15,15,26,26,13,17,17
		HEX	1B,1D,11,13,13,18,18,17
		HEX	16,16,13,13,13,19,19,19
		HEX	16,16,18,13,18,19,19,19
UROJCDT		EQU	$		; URA
;
;
ROJCCDT		EQU	$		; color table
		HEX	01,01,01,01,01,01,01,01
		HEX	01,01,01,01,01,01,01,01
		HEX	01,01,01,01,01,01,01,01
		HEX	01,01,01,01,01,01,01,01
		HEX	01,01,01,01,01,01,01,01
		HEX	01,01,01,01,01,01,01,01
		HEX	01,01,01,01,01,01,01,01
		HEX	01,01,01,01,01,01,01,01
ROJCCD0		EQU	$
		HEX	05,05,06,09,09,09,09,09
		HEX	05,05,06,09,09,09,09,03
		HEX	01,01,00,02,02,00,06,03
		HEX	01,01,01,03,03,03,07,07
		HEX	01,01,01,03,03,03,07,07
		HEX	01,00,01,00,00,03,03,07
		HEX	04,04,00,03,03,03,03,03
		HEX	04,04,00,03,03,03,03,03
ROJCCD1		EQU	$
		HEX	05,05,06,09,09,09,09,09
		HEX	05,05,06,09,09,09,09,03
		HEX	01,01,00,02,02,00,06,03
		HEX	01,01,01,01,01,03,07,07
		HEX	01,01,01,01,01,03,07,07
		HEX	01,00,01,00,00,03,03,07
		HEX	04,04,00,03,03,03,03,03
		HEX	04,04,00,03,03,03,03,03
ROJCCD2		EQU	$
		HEX	0E,0E,10,0C,0C,0C,0C,0C
		HEX	0E,0E,10,0C,0C,0C,0C,0A
		HEX	10,10,00,0E,0E,00,0D,0A
		HEX	10,10,10,0E,0E,0E,0D,0D
		HEX	10,10,10,0E,0E,0E,0D,0D
		HEX	12,00,0B,0E,0E,0E,0E,0D
		HEX	0F,0F,00,0E,0E,0E,0E,0E
		HEX	0F,0F,00,0E,0E,0E,0E,0E
UROJCCD		EQU	$		; URA
;
;
;
;
UROJCST		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDY	#(UROJCDT-ROBJCDT)-2
		LDX	#(8*8)-2
ROJCS60		EQU	$
		LDA	ROBJCDT+000H,Y
		STA	>ROBJTBL+040H,X
		LDA	ROJCCDT+000H,Y
		STA	>ROJCTBL+040H,X
		DEY
		DEY
		DEX
		DEX
		BPL	ROJCS60		; set end ?
;					; yes
		BRA	ROJCS00
;
;
ROBJCST		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
ROJCS00		EQU	$
		LDY	#(ROBJCD0-ROBJCDT)-2
		LDA	>MODTBL0
		AND	#000FFH
		CMP	#00002H
		BCC	ROJCS20		; zenhan ?
;					; no
		LDY	#(ROBJCD1-ROBJCDT)-2
		CMP	#00003H
		BNE	ROJCS20		; kouhan ?
;					; yes
		LDY	#(ROBJCD2-ROBJCDT)-2
ROJCS20		EQU	$
		LDX	#(8*8)-2
ROJCS40		EQU	$
		LDA	ROBJCDT+000H,Y
		STA	>ROBJTBL+000H,X
		LDA	ROJCCDT+000H,Y
		STA	>ROJCTBL+000H,X
		DEY
		DEY
		DEX
		DEX
		BPL	ROJCS40		; set end ?
;					; yes
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
;************************************************************************
;*		Ground BG. character & CG. point data			*
;************************************************************************
RBGCDT		EQU	$
		HEX	21,21,21,22,22,22,22,22
		HEX	21,21,21,22,22,22,22,27
		HEX	23,23,20,29,29,20,29,29
		HEX	23,23,20,24,24,27,25,25
		HEX	23,23,23,24,24,20,25,25
		HEX	23,2A,21,20,20,27,20,25
		HEX	2B,2B,20,27,27,27,27,27
		HEX	2B,2B,20,27,27,27,27,27
;
		HEX	3E,3E,3E,41,41,41,41,3C
		HEX	3E,3E,3E,41,41,41,41,40
		HEX	3F,3F,30,40,40,30,40,30
		HEX	3F,3F,30,3B,3B,40,3D,3D
		HEX	3F,3F,3F,3B,3B,30,3D,3D
		HEX	3F,3F,30,30,30,40,30,3D
		HEX	42,42,30,40,40,42,42,40
		HEX	42,42,30,40,40,42,42,30
;
;
CGPTDT		EQU	$
		HEX	06,06,08,07,07,07,07,07
		HEX	06,06,08,07,07,07,07,04
		HEX	08,08,00,01,01,00,09,00
		HEX	08,08,00,02,02,04,09,09
		HEX	08,08,08,02,02,00,09,09
		HEX	08,08,01,00,00,04,00,09
		HEX	09,00,00,04,04,04,04,04
		HEX	09,09,00,04,04,04,04,04
;
		HEX	1B,1B,1E,17,17,17,17,18
		HEX	1B,1B,1E,17,17,17,17,1D
		HEX	1E,1E,10,1E,1E,10,1E,10
		HEX	1E,1E,10,12,12,10,1A,1A
		HEX	1E,1E,1E,12,12,10,1A,1A
		HEX	1E,10,12,10,10,1D,10,1A
		HEX	1C,1C,10,1D,1D,1C,1C,1D
		HEX	1C,1C,10,1D,1D,1C,1C,10
;
		HEX	0A,0A,0A,0A,02,02,02,0A
;
;
;
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;************************************************************************
;************************************************************************
;************************************************************************
;*		Swich-yuka change			(SWYKCNG)	*
;************************************************************************
SWYKCNG0	EQU	$
		STZ	!SWYKPT
SWYKCNG		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00020H*0
		LDY	#00020H*1
		LDA	!SWYKPT
		BEQ	SWCN20		;
;					;
		TYX
		LDY	#00020H*0
SWCN20		EQU	$
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
SWCN100		EQU	$
		LDA	>SWYCHBF,X
		STA	RSETCBF,Y
		INX
		INX
		INY
		INY
		CPY	#00020H*1
		BNE	SWCN100		;
;					;
		LDX	<WORKE
SWCN140		EQU	$
		LDA	>SWYCHBF,X
		STA	RSETCBF,Y
		INX
		INX
		INY
		INY
		CPY	#00020H*2
		BNE	SWCN140		;
;					;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB			; (DBR) pull
;
		LDA	#bgw18
		STA	<BGWTFG
		RTL
;
;
;
;
;
;
;
;************************************************************************
;*		Kagerou init.				(KAGEIT)	*
;************************************************************************
KAGEIT		EQU	$
		STZ	<WD420C		; H-DMA off
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	!KGMUKI
		STZ	!KGXPBF
		STZ	!KGXPOS
		STZ	!KGXPCT
		STZ	!KGCALF
		LDA	#00008H
		STA	!KGOVLD
		STA	!KGOVLC
		LDA	#00015H
		STA	!KGOVLF
;
		LDA	#0FFC0H
		STA	!KGPOWR
		LDA	#00040H
		STA	!KGPOWR+2	; G-power
		LDA	#0FE00H
		STA	!KGLMTD
		LDA	#00200H
		STA	!KGLMTD+2	; limit data
		STZ	!KGXPBF
		STZ	!KGXPCT
;;;;;;;;		LDA	#0FF20H
;;;;;;;;		STA	!KGPOWR
;;;;;;;;		LDA	#000E0H
;;;;;;;;		STA	!KGPOWR+2	; G-power
;;;;;;;;		LDA	#0F400H
;;;;;;;;		STA	!KGLMTD
;;;;;;;;		LDA	#00C00H
;;;;;;;;		STA	!KGLMTD+2	; limit data
;
;// 03.02.27 //		LDA	#00000010B
;// 03.02.27 //		STA	<WD2130
;// 03.02.27 //		LDA	#00100001B
;// 03.02.27 //		STA	<WD2131
;
		LDA	#00F42H
		STA	4370H		; BG.2 move
		LDA	#00D42H
		STA	4360H		; BG.1 move
;
		LDX	#03EH
		LDA	<SCCH2
KAGEI20		EQU	$
		STA	!HDMABF+000H,X
		STA	!HDMABF+040H,X
		STA	!HDMABF+080H,X
		STA	!HDMABF+0C0H,X
		STA	!HDMABF+100H,X
		STA	!HDMABF+140H,X
		STA	!HDMABF+180H,X
		DEX
		DEX
		BPL	KAGEI20		; H-DMA buffer clear end ?
;					; yes
;// 03.03.13 //		LDX	#HDMADR
;// 03.03.13 //		STX	4372H
;// 03.03.13 //		STX	4362H
;// 03.03.13 //		LDA	#BANK HDMADR
;// 03.03.13 //		STA	4374H
;// 03.03.13 //		STA	4364H
;// 03.03.13 //		LDA	#BANK HDMABF
;// 03.03.13 //		STA	4377H		; data bank
;// 03.03.13 //		STA	4367H		; data bank
;
;;;;;;;;		INC	<JRSBPT
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#11000000B
		STA	<WD420C		; H-DMA on
KAGEI80		EQU	$
		RTL
;
;
;
;************************************************************************
;*		Kagerou move				(KAGEMV)	*
;************************************************************************
KAGEMV		EQU	$
		INC	<JRSBPT
;
		LDA	#11000000B
		STA	<WD420C		; H-DMA on
KAGEMV1		EQU	$
		JSL	>CTPCCNG	; trip CG. chnge
;
		LDA	<FCNT
		LSR	A
		BCS	KAGEI80		; move ok ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#001A0H
		LDY	#001B0H
		LDA	#00002H
		STA	<WORK0
		LDA	#00003H
		STA	<WORK2
KGMV20		EQU	$
		LDA	!HDMABF+00H,X
		STA	!HDMABF+00H,Y
		STA	!HDMABF+04H,Y
		STA	!HDMABF+08H,Y
		STA	!HDMABF+0CH,Y
		TXA
		SEC
		SBC	#00010H
		TAX
		DEC	<WORK0
		BNE	KGMV40		; next buffer ?
;					; yes
		LDA	#00008H
		STA	<WORK0
KGMV40		EQU	$
		TYA
		SEC
		SBC	#00010H
		TAY
		DEC	<WORK2
		BNE	KGMV60		; next buffer ?
;					; yes
		LDA	#00008H
		STA	<WORK2
KGMV60		EQU	$
		CPY	#00000H
		BNE	KGMV20		; end ?
;					; yes
		LDX	!KGMUKI
		LDA	!KGXPBF
		CLC
		ADC	!KGPOWR,X
		PHA			; (A) push
		SEC
		SBC	!KGLMTD,X
		EOR	!KGLMTD,X
		BMI	KGMV140		; limit ?
;					; yes
		STZ	!KGXPOS
		STZ	!KGXPCT
		LDA	!KGMUKI
		EOR	#00002H
		STA	!KGMUKI
;
		PLA			; (A) pull
		LDA	!KGLMTD,X
		PHA			; (A) push
KGMV140		EQU	$
		PLA			; (A) pull
		STA	!KGXPBF
		CLC
		ADC	!KGXPCT
		PHA			; (A) push
		AND	#000FFH
		STA	!KGXPCT
		PLA			; (A) pull
		BPL	KGMV180		;
;					;
		ORA	#000FFH
		BRA	KGMV200
;
KGMV180		EQU	$
		AND	#0FF00H
KGMV200		EQU	$
		XBA
		CLC
		ADC	!KGXPOS
		STA	!KGXPOS
		TAX
		LDA	>CCNGCT
		CMP	#00030H
		BCC	KGMV240		; ending ?
;					; yes
		TXA
		AND	#0FFF8H
		BNE	KGMV240		; end ?
;					; yes
		LDA	#0FF00H
		STA	!KGLMTD+0
		LDA	#00100H
		STA	!KGLMTD+2
		LDX	#00000H
		INC	<JRSBPT
KGMV240		EQU	$
		TXA
		CLC
		ADC	<SCCH2
		STA	!HDMABF+00H
		STA	!HDMABF+04H
		STA	!HDMABF+08H
		STA	!HDMABF+0CH
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
KGM2999		EQU	$
		RTL
;
;
;
KAGEMV2		EQU	$
		JSL	>CTPCCNG	; trip CG. chnge
;
		LDA	<FCNT
		LSR	A
		BCS	KGM2999		; move ok ?
;					; yes
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#001A0H
		LDY	#001B0H
		LDA	#00002H
		STA	<WORK0
		LDA	#00003H
		STA	<WORK2
KGM2020		EQU	$
		LDA	!HDMABF+00H,X
		STA	!HDMABF+00H,Y
		STA	!HDMABF+04H,Y
		STA	!HDMABF+08H,Y
		STA	!HDMABF+0CH,Y
		TXA
		SEC
		SBC	#00010H
		TAX
		DEC	<WORK0
		BNE	KGM2040		; next buffer ?
;					; yes
		LDA	#00008H
		STA	<WORK0
KGM2040		EQU	$
		TYA
		SEC
		SBC	#00010H
		TAY
		DEC	<WORK2
		BNE	KGM2060		; next buffer ?
;					; yes
		LDA	#00008H
		STA	<WORK2
KGM2060		EQU	$
		CPY	#00000H
		BNE	KGM2020		; end ?
;					; yes
		LDA	!HDMABF+180H
		ORA	!HDMABF+190H
		ORA	!HDMABF+1A0H
		ORA	!HDMABF+1B0H
		CMP	<SCCH2
		BNE	KGM2080		; kagerou end ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	<WD420C
		INC	<JRSBPT
;
		JSL	>KCOLSET	; kotei-color set
;
		LDA	<MPDTNO
		AND	#03FH
		CMP	#01BH
		BEQ	KGM2080		; piramido ?
;					; no
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<SCCH2
		STA	<SCCH1
		STA	!SSCCH1
		STA	!SSCCH2
		LDA	<SCCV2
		STA	<SCCV1
		STA	!SSCCV2
		STA	!SSCCV1
KGM2080		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
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
