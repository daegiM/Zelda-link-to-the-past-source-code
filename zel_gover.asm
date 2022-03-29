;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1992.01.22(WED)
;
;--------------------------------------------------------------------
;
		ORG	09F270H
;
;=============================================== (zel_gover) ============
		GLB	GMOVER,PASRSET
;
		GLB	GOVHRTD
;=============================================== (zel_main1) ============
		EXT	DTSAVE,JSRSUB,DTSVPD,VRAMCL,SNDTR1
;
		EXT	MD_djit0,MD_ghldn,MD_gdint,MD_gover,MD_psrst
;=============================================== (zel_vma) ==============
		EXT	bgw16
;=============================================== (zel_init) =============
		EXT	TILIT1,MPBTSET1,KAIHUKU,KCOLSET,DJKYSV
;
		EXT	PRABCK,PRABC1
;=============================================== (zel_int0) =============
		EXT	PLRSET,PFLGCLR
;=============================================== (zel_char) =============
		EXT	CHSCHNG,MSGETNP
		EXT	SPOJCNG,CHITEMS0,OBJYSET
		EXT	spoj0,spoj7
;=============================================== (zel_play) =============
		EXT	PLGMIT,PLGMOV,BMCLER,SWSPCL2
		EXT	LNMD,DAMG3
;=============================================== (zel_pysb) =============
		EXT	PYOMST
;=============================================== (zel_enmy) =============
		EXT	ENEMY
;=============================================== (zel_endt) =============
		EXT	ALCLER
;=============================================== (zel_exst) =============
		EXT	GMDMINT,GMOVMV,YOUSIT
;
		EXT	nashi,hnoji,bakud,prnc1,monky
;=============================================== (zel_bms1) =============
		EXT	YOUSMV
;=============================================== (zel_comn) =============
		EXT	WIPEIT0,WIPEMV,HDMAOFF
		EXT	GOVRCCNG,WD2132ST,RSTRCCNG
;=============================================== (zel_bg3) ==============
		EXT	MTRDSP,FLNODSP
;=============================================== (zel_msge) ============
		EXT	MSGE_I
;=============================================== (zel_title) ============
		EXT	TILRETURN,SVDTREAD
;========================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;************************************************************************
;*		Game over				(GMOVER)	*
;************************************************************************
GMOVRTBL	EQU	$
		WORD	GOVRZZZ		; init.-1
		WORD	GOVR000		; init.-1
		WORD	GOVR050		; wait.
		WORD	GOVR100		; wipe close
		WORD	GOVR300		; player down
		WORD	GOVR400		; fade out
		WORD	GOVR500		; character set
		WORD	GOVR600		; "GAME OVER" move
		WORD	GOVR700		; select display
		WORD	GOVR800		; key check
RESTTBL		EQU	$
		WORD	RSTRT000	; re-start init
		WORD	RSTRT100	;          yousei move
		WORD	RSTRT200	;          life kaifuku
		WORD	RSTRT250	;          wait
		WORD	RSTRT300	;          character reset
		WORD	RSTRT400	;          fade in
;
;
;
GMOVER		EQU	$
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(GMOVRTBL,X)
;
;// 03.07.16 //		LDA	<GAMEMD
;// 03.07.16 //		CMP	#(RESTTBL-GMOVRTBL)/2
;// 03.07.16 //		BCS	GMOVR40		; player character set ok ?
;// 03.07.16 //;					; no
;// 03.07.16 //		CMP	#006H
;// 03.07.16 //		BCS	GMOVR80		; player character set ok ?
;// 03.07.16 //;					; yes
;// 03.07.16 //GMOVR40		EQU	$
;
		LDA	<GAMEMD
		CMP	#(RESTTBL-GMOVRTBL)/2-1
		BEQ	GMOVR80		; player display ?
;					; yes
		JSL	>PYOMST		; player OAM set
GMOVR80		EQU	$
		RTL
;
;
;
;
;--------------------------------------- init.
GOVRZZZ		EQU	$
		INC	<GAMEMD
GOVR000		EQU	$
		LDA	!SVSND0
		STA	>BKSOUND0
		LDA	!SVCKF1
		STA	>BKSOUND0+1	; <sound0>,<sound1> push
;
		LDA	#0F1H
		STA	!SOUND0
		LDA	#005H
		STA	!SOUND1		; BGM. off
		STA	!ITEMMD
;
		STZ	!BELFCN
		STZ	!BELTCN
		STZ	<KAKUMD
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>CCNGCT
		STA	>BKYRXD
		LDA	>CCNGFG
		STA	>BKYRYD
;
		LDX	#000H
GOVR040		EQU	$
;// 03.08.02 //		LDA	>CGWORK+000H,X
;// 03.08.02 //		STA	>CGBKUP+000H,X
;// 03.08.02 //		LDA	>CGWORK+040H,X
;// 03.08.02 //		STA	>CGBKUP+040H,X
;// 03.08.02 //		LDA	>CGWORK+080H,X
;// 03.08.02 //		STA	>CGBKUP+080H,X
;// 03.08.02 //		LDA	>CGWORK+0C0H,X
;// 03.08.02 //		STA	>CGBKUP+0C0H,X
		LDA	>CGRAM+000H,X
		STA	>CGBKUP+000H,X
		LDA	>CGRAM+040H,X
		STA	>CGBKUP+040H,X
		LDA	>CGRAM+080H,X
		STA	>CGBKUP+080H,X
		LDA	>CGRAM+0C0H,X
		STA	>CGBKUP+0C0H,X
;
		LDA	#00000H
		STA	>CGRAM+040H,X
		STA	>CGRAM+080H,X
		STA	>CGRAM+0C0H,X
		INX
		INX
		CPX	#040H
		BNE	GOVR040		; set end ?
;					; yes
		STA	>CCNGCT
		STA	>CCNGFG
;
		STZ	!YUREXD
		STZ	!YUREYD
;
		LDA	<WD2130
		STA	>BKWD2130
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#020H
		STA	<CWORK0		; wait counter
;
		STZ	!FLNODFG
		JSL	>FLNODSP	; floor no. off
		INC	<B3CHFG
;
		LDA	#005H
		STA	!SOUND1
		INC	<GAMEMD
		RTS
;
;
;--------------------------------------- wait
GOVR050		EQU	$
		DEC	<CWORK0
		BNE	GOVR090		; wait end ?
;					; yes
		JSL	>GMDMINT	; "GAME OVER" init.
;
		JSL	>WIPEIT0	; wipe init. (close)
		LDA	#00110000B
		STA	<WD2125		; window mask (COL:on  , OBJ:off)
		STZ	<WD2124		;             (BG4:off , BG3:off)
;
		INC	<GAMEMD
GOVR090		EQU	$
		RTS
;
;
;--------------------------------------- wipe close
GOVR100		EQU	$
		JSL	>GOVRCCNG	; fade out
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
		LDA	>CGWORK+041H
		STA	>CGWORK+001H
;
		LDA	<SLMODE
		PHA			; (A) push
		JSL	>WIPEMV		; wipe move
		PLA			; (A) pull
		STA	<SLMODE
;
		LDA	<GAMEMD
		BNE	GOVR180		; wipe end ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00018H
;// 03.10.05 //		LDX	<SLMODE
;// 03.10.05 //		CPX	#MD_psrst
;// 03.10.05 //		BNE	GOVR110		; pause-reset
;// 03.10.05 //;					; yes
;// 03.10.05 //		LDA	#00000H
;// 03.10.05 //GOVR110		EQU	$
		LDX	#000H
GOVR120		EQU	$
		STA	>CGWORK+040H,X
		STA	>CGWORK+060H,X
		STA	>CGWORK+080H,X
		STA	>CGWORK+0A0H,X
		STA	>CGWORK+0C0H,X
		STA	>CGWORK+0E0H,X
		INX
		INX
		CPX	#020H
		BNE	GOVR120		; set end ?
;					; yes
		STA	>CGWORK+000H
		STA	>CGWORK+040H	; nuki color reset
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>HDMAOFF	; H-DMA OFF
		LDA	#00100000B
		STA	<WD2132R
		LDA	#01000000B
		STA	<WD2132G
		LDA	#10000000B
		STA	<WD2132B
;
		STZ	<WD2123
		STZ	<WD2124
		STZ	<WD2125
;
		LDA	#004H
		STA	<GAMEMD
		INC	<CGVMAF
;
		LDA	#00001111B
		STA	<BLKFLG
		LDA	#00010100B
		STA	<DPMAIN
		STZ	<DPSUB
;
		LDA	#00100000B
		STA	<WD2131
		LDA	#040H
		STA	<CWORK0
		LDA	#000H
		STA	>CCNGCT
		STA	>CCNGFG
;
;// 03.10.05 //		LDA	<SLMODE
;// 03.10.05 //		CMP	#MD_psrst
;// 03.10.05 //		BEQ	GOVR180		; pause-reset ?
;// 03.10.05 //;					; no
		JSL	>PLGMIT		; player init
GOVR180		EQU	$
		RTS
;
;
;
;--------------------------------------- fade out
GOVR400		EQU	$
		LDA	<CWORK0
		BNE	GOVR460		; fade out ok ?
;					; yes
		JSL	>GOVRCCNG	; fade out
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
		LDA	>CGWORK+041H
		STA	>CGWORK+001H
;
		LDA	>CCNGFG
		CMP	#0FFH
		BNE	GOVR420		; end ?
;					; yes
		LDA	#000H
		STA	>MZKCNT
		STA	!MZKFLG
		LDA	#00000011B
		STA	<MD2106		; mozaiku init.
;
		LDX	#000H
		LDA	#006H
		CMP	>BINCT0
		BEQ	GOVR480		; yousei on ?
;					; no
		INX
		CMP	>BINCT1
		BEQ	GOVR480		; yousei on ?
;					; no
		INX
		CMP	>BINCT2
		BEQ	GOVR480		; yousei on ?
;					; no
		INX
		CMP	>BINCT3
		BEQ	GOVR480		; yousei on ?
;					; no
		STZ	!BLKMODE+0
		STZ	!BLKMODE+1
;
		JSL	>MSGETNP	; BG.3 char. buffer set
;
		LDA	#bgw16
		STA	<BGWTFG		; message character VMA
		STA	!GMAPDF
		INC	<GAMEMD
GOVR420		EQU	$
		RTS
;
GOVR460		EQU	$
		DEC	<CWORK0
		RTS
;
GOVR480		EQU	$
		LDA	#002H
		STA	>BINCT0,X	; yousei off
;
		LDA	#00CH
		STA	<CWORK0
		LDA	#spoj7
		STA	!SPOJFG
		JSL	>SPOJCNG	; "GAME OVER' character set
		STZ	!SPOJFG
;
		LDA	#(RESTTBL-GMOVRTBL)/2
		STA	<GAMEMD
		RTS
;
;
;--------------------------------------- character set("GAME OVER")
GOVR500		EQU	$
		LDA	#00CH
		STA	<CWORK0
		LDA	#spoj7
		STA	!SPOJFG
		JSL	>SPOJCNG	; "GAME OVER' character set
		STZ	!SPOJFG
;
		LDA	#005H
		STA	!CHITEMJC
		LDA	#002H
		STA	!CGSTPT+1
		JSL	>CHITEMS0	; special CG. set
		JSL	>OBJYSET	; basic OBJ. CG set
		INC	<CGVMAF
		INC	<GAMEMD
;
;// 03.10.07 //		JSL	>PLGMOV		; player move
;// 03.10.07 //		RTS
;// 03.10.07 //;
;
;--------------------------------------- player down
GOVR300		EQU	$
		JSL	>PLGMOV		; player move
		RTS
;
;
;
;--------------------------------------- ("GAME OVER") move
GOVR600		EQU	$
		JSL	>GMOVMV		; "GAME OVER" move
		RTS
;
;
;--------------------------------------- select display
GOVR700		EQU	$
		JSL	>GMOVMV		; "GAME OVER" move
GOVR720		EQU	$
		LDA	<SLMODE
		PHA			; (A) push
		LDA	<GAMEMD
		PHA			; (A) push
;
		LDA	#002H
		STA	!INITAL
		JSL	>MSGE_I
;
		PLA			; (A) pull
		INC	A
		STA	<GAMEMD
		PLA			; (A) pull
		STA	<SLMODE
		LDA	#002H
		STA	<CWORK0
;
		LDA	#00BH
		STA	!SOUND0		; <sound0>
GOVR780		EQU	$
		RTS
;
;
;--------------------------------------- check
GOVHRTD		EQU	$
;			   0     1     2     3     4     5     6     7     8     9
		BYTE	008*3,008*3,008*3,008*3,008*3,008*4,008*4,008*5,008*5,008*6
;			  10    11    12    13    14    15    16    17    18    19    20
		BYTE	008*6,008*7,008*7,008*7,008*8,008*8,008*8,008*9,008*9,008*9,008*10
;
;
GOVR800		EQU	$
		JSR	CSOAMST		; cursle set !!
;
		LDA	!BMMODE
		BEQ	GOVR810		; "GAME OVER" display ?
;					; yes
		JSL	>GMOVMV		; "GAME OVER" move
GOVR810		EQU	$
		LDA	<KEYA2
		AND	#00100000B
		BNE	GOVR820		; select on ?
;					; no
		DEC	<CWORK0
		BNE	GOVR840		; key check ?
;					; yes
		INC	<CWORK0
		LDA	<KEYA1
		AND	#00001100B
		BEQ	GOVR840		; up,down key on ?
;					; yes
		AND	#00000100B
		BEQ	GOVR830		; down key on ?
;					; yes
GOVR820		EQU	$
		INC	<JRSBPT
		LDA	<JRSBPT
		CMP	#003H
		BMI	GOVR835
;
		STZ	<JRSBPT
		BRA	GOVR835
;
GOVR830		EQU	$
		DEC	<JRSBPT
		BPL	GOVR835
;
		LDA	#002H
		STA	<JRSBPT
GOVR835		EQU	$
		LDA	#00CH
		STA	<CWORK0
;
		LDA	#020H
		STA	!SOUND3
GOVR840		EQU	$
	LDA	<KEYA2L
	AND	#0C0H
	ORA	<KEYA2
	AND	#11010000B
;;;		LDA	<KEYA2
;;;		AND	#10010000B
		BEQ	GOVR780		; start on ?
;					; yes
		LDA	#02CH
		STA	!SOUND2		; <sound2>
PSRSAVE		EQU	$
		LDA	#0F1H
		STA	!SOUND0		; <sound0>
		LDA	<GMMODE
		BEQ	GOVR841		; danjyon ?
;					; yes
		JSL	>MPBTSET1	; map on/off bit set
GOVR841		EQU	$
		JSL	>PRABCK		; player rabit check
;// 03.10.07 //		LDA	>ITMTBL4
;// 03.10.07 //		BEQ	GOVR843		; suisyou-dama on ?
;// 03.10.07 //;					; no
;// 03.10.07 //		LDA	#LNMD
;// 03.10.07 //		STA	<LNMODE
;// 03.10.07 //		STZ	!USAGTM
;// 03.10.07 //		STZ	!USAGTM+1
;// 03.10.07 //		STZ	!USGOFN
;// 03.10.07 //		STZ	<RABIFG
;// 03.10.07 //		STZ	!RABFLG		; player rabit flag off
;// 03.10.07 //GOVR843		EQU	$
;
		LDA	>MODTBL0
		CMP	#003H
		BCS	GOVR845		; kouhan ?
;					; no
		LDA	#000H
		STA	>GDTRPF
;
		LDA	>ITMTBL4
		BNE	GOVR845		; suisyou-dama on ?
;					; no
		JSL	>PRABC1		; player rabit off
;// 03.10.07 //		LDA	#LNMD
;// 03.10.07 //		STA	<LNMODE
;// 03.10.07 //		STZ	!USAGTM
;// 03.10.07 //		STZ	!USAGTM+1
;// 03.10.07 //		STZ	!USGOFN
;// 03.10.07 //		STZ	<RABIFG
;// 03.10.07 //		STZ	!RABFLG		; player rabit flag off
GOVR845		EQU	$
		LDA	<RMXYCT
		ORA	<RMXYCT+1
		BNE	GOVR850		; ganon-room ?
;					; yes
		STZ	<GMMODE
GOVR850		EQU	$
		JSL	>PFLGCLR	; player flag claer
;
;
		LDA	>OPMODE
		CMP	#prnc1
		BEQ	GOVR852		; option-machi-girl ?
;					; no
		CMP	#bakud
		BEQ	GOVR852		; option-bomb ?
;					; no
		CMP	#monky
		BEQ	GOVR852		; option-monkey ?
;					; no
		CMP	#hnoji
		BNE	GOVR855		; option-henna oyaji ?
;					; yes
GOVR852		EQU	$
		LDA	#nashi
		STA	>OPMODE		; option clear
GOVR855		EQU	$
		LDA	>LFITCT
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	>GOVHRTD,X
		STA	>LFNWCT		; life reset
		STA	!RESTSFG
;
		LDA	!DJNNO
		CMP	#0FFH
		BEQ	GOVR857		;
;					;
		CMP	#002H
		BNE	GOVR856		; shiro ?
;					; yes
		LDA	#000H
GOVR856		EQU	$
		LSR	A
		TAX
		LDA	>ITMTBL9
		STA	>DKYTBL,X	; key count save
GOVR857		EQU	$
		JSL	>ALCLER		; enemt clear
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>DIETOTAL
		CMP	#0FFFFH
		BNE	GOVR8577	; ending end ?
;					; no
		LDA	>DIECONT
		INC	A
		STA	>DIECONT	; die count +1
GOVR8577	EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	!GOVRCFG	; game-over check flag on!!
		LDA	<JRSBPT
		CMP	#001H
		BEQ	GOVR900		; CONTINUE ?
;					; yes
		LDA	<GMMODE
		BEQ	GOVR860		; danjyon ?
;					; yes
		LDA	>OPMODE
		CMP	#001H
		BEQ	GOVR870		; option on (girl) ?
;					; no
		LDA	!DJNNO
		CMP	#0FFH
		BEQ	GOVR858		; danjyon ?
;					; yes
		STZ	!RESTSFG
		BRA	GOVR870
;
GOVR858		EQU	$
		STZ	!SNDSFG0	;<<<  04.01.22  >>>
		STZ	<GMMODE
GOVR860		EQU	$
		LDA	>GDTRPF
		BEQ	GOVR870		; ura ?
;					; yes
		LDA	#020H
		STA	<RMXYCT
		STZ	<RMXYCT+1
GOVR870		EQU	$
		LDA	>MODTBL0
		BEQ	GOVR880		; zen-han ?
;					; no
		LDA	<JRSBPT
		BNE	GOVR875		; SAVE CONTINUE ?
;					; yes
		JSL	>DTSAVE		; data save
GOVR875		EQU	$
		LDA	#MD_djit0
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<VRFLG
		RTS
;
;
GOVR880		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode !!
;
		LDA	>DTSVPT		; data save pointer read !!
		TAX
		DEX
		DEX
		LDA	>DTSVPD+2,X
		STA	<WORK0
;
		MEM8
		SEP	#00100000B	; memory 8bit mode !!
;
		STZ	!GOVRCFG	; game-over check flag off!!
		JSL	>SVDTREAD	; save data read
;// 03.09.28 //;
;// 03.09.28 //		LDA	>GDTRPF
;// 03.09.28 //		BEQ	GOVRA40		; ura ?
;// 03.09.28 //;					; yes
;// 03.09.28 //		STZ	<GMMODE
;// 03.09.28 //GOVRA40		EQU	$
		RTS
;
;
;
;
GOVR900		EQU	$
;// 03.09.28 //		CMP	#001H
;// 03.09.28 //		BNE	GOVRA00		; END ?
;// 03.09.28 //;					; yes
		LDA	>MODTBL0
		BEQ	GOVR920		; zen-han ?
;					; no
		JSL	>DTSAVE		; data save
GOVR920		EQU	$
		LDA	#010H
		STA	<DPMAIN
		STZ	<GMMODE
;
		JSL	>TILRETURN	; title return
;
		STZ	!RESTSFG
		STZ	!GOVRCFG
;
		STZ	!SNDSFG0
;
;
		SEI
		STZ	4200H		; NMI  disable
		STZ	420CH		; HDMA
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<SCCH1
		STZ	<SCCH2
		STZ	<SCCH3
		STZ	<SCCV1
		STZ	<SCCV2
		STZ	<SCCV3
		STZ	!SSCCH1
		STZ	!SSCCH2
		STZ	!SSCCV1
		STZ	!SSCCV2
;
		LDX	#00000H
		TXA
GOVR940		EQU	$
		STA	>ZEL_DATA+000H,X
		STA	>ZEL_DATA+100H,X
		STA	>ZEL_DATA+200H,X
		STA	>ZEL_DATA+300H,X
		STA	>ZEL_DATA+400H,X
		INX
		INX
		CPX	#00100H
		BNE	GOVR940		;
;					;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	!SNDPCFG
		LDA	#0FFH
		STA	2140H
		JSL	>SNDTR1		; sound-0 set
;
		LDA	#10000001B
		STA	4200H		; NMI enable
		RTS
;
;
;
;
;--------------------------------------- cursol
CSCHRNO		EQU	$
	HEX	EA,EC
;;;		HEX	4B,4D,64,66
;
CSLYPDT		EQU	$
		HEX	081,091,A1
;
CSOAMST		EQU	$
		PHB
		PHK
		PLB			; PBR => DBR
;
		LDX	<JRSBPT
		LDA	#03CH
		STA	OAM+000H+050H	; X position set !!
		LDA	CSLYPDT,X
		STA	OAM+001H+050H	; Y position set !!
;
		LDA	<FCNT
		AND	#00001000B
		LSR	A
		LSR	A
		LSR	A
		TAX
;;;	LDA	<SLMODE
;;;	CMP	#MD_psrst
;;;	BNE	CSOM040		; player dead ? [ yes:CSOM040 ]
;;;;
;;;	INX
;;;	INX
CSOM040	EQU	$
		LDA	CSCHRNO,X
		STA	OAM+002H+050H	; character No. set !!
;;;		LDA	#01110100B
		LDA	#01111000B
		STA	OAM+003H+050H	; atoribuut set !!
;
		LDA	#002H
		STA	OAMSB+000H+014H	; oamsb set !!
;
		PLB			; DBR reset !!
;
		RTS
;
;
;
;
;--------------------------------------- re-start
RSTRT000	EQU	$
		JSL	>YOUSIT		; yousei init.
;
		LDA	#08*7
		STA	>UPLFCT
		INC	<GAMEMD
		STZ	!ITEMMD
		RTS
;
;
;--------------------------------------- re-start (yousei move)
RSTRT100	EQU	$
		JSL	>YOUSMV		; yousei move.
		RTS
;
;
;--------------------------------------- re-start (life kaifuku)
RSTRT200	EQU	$
;;;;;;;;		JSL	>KAIHUKU	; life up
;;;;;;;;		BCC	RSTRT280	; end ?
;;;;;;;;;					; yes
		LDA	>UPLFCT
		BNE	RSTRT280	; life up end ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#000H
RSTRT220	EQU	$
		LDA	>CGBKUP+000H,X
		STA	>CGRAM+000H,X
		LDA	>CGBKUP+040H,X
		STA	>CGRAM+040H,X
		LDA	>CGBKUP+080H,X
		STA	>CGRAM+080H,X
		LDA	>CGBKUP+0C0H,X
		STA	>CGRAM+0C0H,X
;
		LDA	#00000H
		STA	>CGWORK+040H,X
		STA	>CGWORK+080H,X
		STA	>CGWORK+0C0H,X
		INX
		INX
		CPX	#040H
		BNE	RSTRT220	; set end ?
;					; yes
		STA	>CGWORK+000H
;
		LDA	#00000H
		STA	>CCNGCT
		LDA	#00002H
		STA	>CCNGFG
;
		LDA	>BKWD2130
		STA	<WD2130
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
RSTRT260	EQU	$
		INC	<GAMEMD
RSTRT280	EQU	$
RSTRT255	EQU	$
		JSL	>YOUSMV		; yousei move.
;
		JSL	>MTRDSP		; mater display
		RTS
;
;
;--------------------------------------- wait
RSTRT250	EQU	$
		LDA	!KAIFLG
		BNE	RSTRT255	; wait end ?
;					; yes
		LDA	#spoj0
		STA	!SPOJFG
		JSL	>SPOJCNG
;
		LDA	>DKRMCG
		JSL	>WD2132ST	; 2132H set
;
		BRA	RSTRT260
;// 03.10.07 //		INC	<GAMEMD
;// 03.10.07 //		JSL	>YOUSMV		; yousei move.
;// 03.10.07 //;
;// 03.10.07 //		JSL	>MTRDSP		; mater display
;// 03.10.07 //		RTS
;
;
;--------------------------------------- character reset
RSTRT300	EQU	$
		JSL	>SPOJCNG
;
		LDA	>BKDPMN+1
		STA	<DPSUB
;
		INC	<GAMEMD
		RTS
;
;
;--------------------------------------- re-start (fade in)
RSTRT400	EQU	$
		JSL	>RSTRCCNG	; fade in
		LDA	>CGWORK+040H
		STA	>CGWORK+000H
		LDA	>CGWORK+041H
		STA	>CGWORK+001H
;
		LDA	>CCNGCT
		CMP	#020H
		BNE	RSTRT480	; end ?
;					; yes
		LDA	<GMMODE
		BNE	RSTRT440	; ground ?
;					; yes
		JSL	>KCOLSET	; kotei-color set
RSTRT440	EQU	$
		LDA	>BKDPMN+1
		STA	<DPSUB
;
		LDA	!NXSLMD
		STA	<SLMODE
		STZ	<GAMEMD
;
		LDA	#DAMG3
		STA	!PYFLASH
;
		LDA	>BKSOUND0
		STA	!SOUND0
		LDA	>BKSOUND0+1
		STA	!SOUND1		; <sound0>,<sound1> reset
;// 03.09.26 //		LDA	!SVCKF1
;// 03.09.26 //		STA	!SOUND1		; sound reset
;
;// 03.10.07 //		LDX	#001H
;// 03.10.07 //		LDA	<MPDTNO
;// 03.10.07 //		CMP	#081H
;// 03.10.07 //		BEQ	RSTRT420	; taki-spot ?
;// 03.10.07 //;					; no
;// 03.10.07 //		CMP	#070H
;// 03.10.07 //		BEQ	RSTRT420	; ura-numa ?
;// 03.10.07 //;					; no
;// 03.10.07 //		LDX	#009H
;// 03.10.07 //		CMP	#043H
;// 03.10.07 //		BEQ	RSTRT420	; ura-yama ?
;// 03.10.07 //;					; no
;// 03.10.07 //		CMP	#045H
;// 03.10.07 //		BEQ	RSTRT420	; ura-yama ?
;// 03.10.07 //;					; no
;// 03.10.07 //		CMP	#047H
;// 03.10.07 //		BNE	RSTRT440	; ura-yama ?
;// 03.10.07 //;					; yes
;// 03.10.07 //RSTRT420	EQU	$
;// 03.10.07 //		STX	!SOUND1		; <sound1>
;// 03.10.07 //RSTRT440	EQU	$
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>BKYRXD
		STA	>CCNGCT
		LDA	>BKYRYD
		STA	>CCNGFG
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
RSTRT480	EQU	$
PSRS240		EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Pause-reset				(PASRSET)	*
;************************************************************************
PASRTBL		EQU	$
		WORD	PSRS000		; init.-1
		WORD	PSRS200		; init.-1
;
;
;
PASRSET		EQU	$
		LDA	<GAMEMD
		ASL	A
		TAX
		JSR	(PASRTBL,X)
;
		JSL	>ENEMY		; enemy
		JSL	>PYOMST		; player OAM set
PASRS80		EQU	$
		RTL
;
;
;
;--------------------------------------- fade out
PSRS000		EQU	$
		INC	<GAMEMD
PSRS200		EQU	$
		DEC	<BLKFLG
		BNE	PSRS240		; fade-out end ?
;					; yes
		LDA	#00001111B
		STA	<MD2106		; mozaiku off
;
		LDA	#001H
		STA	<JRSBPT
		JMP	PSRSAVE
;
;
;
;
;
;
;
;// 03.10.01 //;
;// 03.10.01 //;
;// 03.10.01 //;************************************************************************
;// 03.10.01 //;*		Pause-reset				(PASRSET)	*
;// 03.10.01 //;************************************************************************
;// 03.10.01 //PASRTBL		EQU	$
;// 03.10.01 //		WORD	GOVRZZZ		; init.-1
;// 03.10.01 //		WORD	GOVR000		; init.-1
;// 03.10.01 //		WORD	GOVR050		; wait.
;// 03.10.01 //		WORD	GOVR100		; wipe close
;// 03.10.01 //		WORD	PSRS200		; fade out
;// 03.10.01 //		WORD	GOVR720		; select display
;// 03.10.01 //		WORD	GOVR800		; key check
;// 03.10.01 //;
;// 03.10.01 //;
;// 03.10.01 //;
;// 03.10.01 //PASRSET		EQU	$
;// 03.10.01 //		LDA	<GAMEMD
;// 03.10.01 //		ASL	A
;// 03.10.01 //		TAX
;// 03.10.01 //		JSR	(PASRTBL,X)
;// 03.10.01 //;
;// 03.10.01 //		JSL	>PYOMST		; player OAM set
;// 03.10.01 //PASRS80		EQU	$
;// 03.10.01 //		RTL
;// 03.10.01 //;
;// 03.10.01 //;
;// 03.10.01 //;
;// 03.10.01 //;--------------------------------------- fade out
;// 03.10.01 //PSRS200		EQU	$
;// 03.10.01 //;// 03.09.23 //		LDA	<CWORK0
;// 03.10.01 //;// 03.09.23 //		BNE	PSRS260		; fade out ok ?
;// 03.10.01 //;// 03.09.23 //;					; yes
;// 03.10.01 //;// 03.09.23 //		JSL	>GOVRCCNG	; fade out
;// 03.10.01 //;// 03.09.23 //		LDA	>CGWORK+040H
;// 03.10.01 //;// 03.09.23 //		STA	>CGWORK+000H
;// 03.10.01 //;// 03.09.23 //		LDA	>CGWORK+041H
;// 03.10.01 //;// 03.09.23 //		STA	>CGWORK+001H
;// 03.10.01 //;// 03.09.23 //;
;// 03.10.01 //;// 03.09.23 //		LDA	>CCNGFG
;// 03.10.01 //;// 03.09.23 //		CMP	#0FFH
;// 03.10.01 //;// 03.09.23 //		BNE	PSRS220		; end ?
;// 03.10.01 //;// 03.09.23 //;					; yes
;// 03.10.01 //		JSL	>MSGETNP	; BG.3 char. buffer set
;// 03.10.01 //;
;// 03.10.01 //		LDA	#bgw16
;// 03.10.01 //		STA	<BGWTFG		; message character VMA
;// 03.10.01 //		STA	!GMAPDF
;// 03.10.01 //		INC	<GAMEMD
;// 03.10.01 //		STZ	!BMMODE
;// 03.10.01 //PSRS220		EQU	$
;// 03.10.01 //		RTS
;// 03.10.01 //;
;// 03.10.01 //;// 03.09.23 //PSRS260		EQU	$
;// 03.10.01 //;// 03.09.23 //		DEC	<CWORK0
;// 03.10.01 //;// 03.09.23 //		RTS
;// 03.10.01 //;
;// 03.10.01 //;
;
;
;
;
;
;
;************************************************************************
;************************************************************************
;************************************************************************
;// 03.10.07 //GOVRMSG		EQU	$
;// 03.10.07 //		HEX	62,0C,00,13
;// 03.10.07 //;			        S      A      V      E      si     te     tu     zu     ke     ru
;// 03.10.07 //		WORD	     029CCH,029AAH,029CFH,029AEH,02921H,0292BH,0292AH,02965H,0290BH,0296AH
;// 03.10.07 //		HEX	62,2C,00,13
;// 03.10.07 //		WORD	     029DCH,029BAH,029DFH,029BEH,02931H,0293BH,0293AH,02975H,0291BH,0297AH
;// 03.10.07 //;
;// 03.10.07 //		HEX	62,4C,00,11
;// 03.10.07 //;			        S      A      V      E      si     te     ya     me     ru
;// 03.10.07 //		WORD	     029CCH,029AAH,029CFH,029AEH,02921H,0292BH,02905H,02963H,0296AH
;// 03.10.07 //		HEX	62,6C,00,11
;// 03.10.07 //		WORD	     029DCH,029BAH,029DFH,029BEH,02931H,0293BH,02915H,02973H,0297AH
;// 03.10.07 //;
;// 03.10.07 //		HEX	62,8C,00,09
;// 03.10.07 //;			        R      E      T      R      Y
;// 03.10.07 //		WORD	     029CBH,029AEH,029CDH,029CBH,029E2H
;// 03.10.07 //		HEX	62,AC,00,09
;// 03.10.07 //		WORD	     029DBH,029BEH,029DDH,029DBH,029F2H
;// 03.10.07 //		BYTE	0FFH
;// 03.10.07 //GOVRMEN		EQU	$
;
;
;
		END
