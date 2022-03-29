;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.11.29(FRI)
;
;--------------------------------------------------------------------
;
		ORG	0CC120H
;
;=============================================== (zel_title) ============
		GLB	TITLE0,PLSELCT,PLCOPY,PLKILL,PLTORK,OPDEMO
;
		GLB	TILBGD,TOROKUST
;
		GLB	TILBGD1,TILBGD2,TICPBGD1
;
		GLB	TILRETURN,SVDTREAD
;
		GLB	POLGNED,TRYFS10
		GLB	PLGNED2,TRYFS20
;=============================================== (zel_main) =============
		EXT	DEBUGMD
		EXT	VRAMCL,VRAMCL2,JSRSUB,JSRSUBL,DTSVPD,BLANKING
;
		EXT	MD_title,MD_selct,MD_pcopy,MD_pkill,MD_ptork
		EXT	MD_gdint,MD_djit0,MD_tdemo
;=============================================== (zel_init) =============
		EXT	TILIT0,TILIT1,TILIT3
;=============================================== (zel_isub) =============
		EXT	TILBGWT0,TILBGWT1,TILBGWT2
;=============================================== (zel_char) =============
		EXT	CCBFIT,OPTCBFST,WTRCBFS0
		EXT	CHSCHNG,CHSCHN0,CHSCHN1,CHSCHN2
		EXT	PLCGSET,MSGETNP,MSGVRMS,B3CGSET
;
		EXT	DANCORST,KOUKAST,TPLCGST,RGBRSET
;
		EXT	C_1Y1,C_2V0,C_2W0
;=============================================== (zel_vma) ==============
		EXT	VT01,VT03,VT05,VT06,VT07,VT08
;
;=============================================== (zel_djdt) =============
		EXT	ITMTBDT,ITMSTP0,ITMSTP1,ITMSTCT
;=============================================== (zel_msge0) ============
		EXT	MSGE_I
;=============================================== (zel_msge1) ============
		EXT	MS_0420,MS_0421,MS_0422,MS_0423
;=============================================== (zel_gmap) =============
		EXT	MPDP200,MPDP880,HDMABF0
;=============================================== (zel_comn) =============
		EXT	CGCNG1
;=============================================== (zel_enmy2) ============
		EXT	ENRMCL,END3DST
;=============================================== (zel_enmy4) ============
		EXT	HEIS0CSL,CGFLSH
;=============================================== (zel_ending) ============
		EXT	TRYD
;========================================================================
;-----< obj_poly >-------------------------------------------------------
		extern		INITIAL_POLYGON
;------------------------------------------------------------------------
		extern		polygon_flag
		extern		shading_switch
		extern		object_size
		extern		object_type
		extern		rotate_angle_x
		extern		rotate_angle_y
		extern		center_point_x
		extern		center_point_y
		extern		center_point_z
		extern		stack_pointer
		extern		transfer_flag
;========================================================================
;
;
		EXTEND
		MEM8
		IDX8
;
;
;+++++++++++++++++++++++++++  TITLE  ++++++++++++++++++++++++++++++++++++
;************************************************************************
;*		Title					(TITLE0)	*
;************************************************************************
TITLE0		EQU	$
		LDA	<GAMEMD
		CMP	#004H
		BCC	TITLE040	; start check ?
;					; yes
		LDA	<KEYA2L
		AND	#11000000B
		ORA	<KEYA2
		AND	#11010000B
		BEQ	TITLE040	; [A],[B],[X],[Y],[start] on ?
;					; yes
		JMP	TILSTART
;
TITLE040	EQU	$
		LDA	<GAMEMD
		JSL	>JSRSUBL
tlp000		EQU	$
		LWORD	TILINT0		; 0 : RAM   initial
		LWORD	TILINT1		; 1 : GAMEN initial
		LWORD	POLGNIT		; 2 : polygon init.
		LWORD	TRYFS00		; 3 : polygon move
tlp100		EQU	$
		LWORD	TRYFS00		; 4 : polygon move1
		LWORD	TILFDIN		; 5 : fade-in
		LWORD	TILWAIT		; 6 : wait
		LWORD	TILPLAY		; 7 : play
tlp200		EQU	$
		LWORD	POLGNIT		; 8 : polygon init.
		LWORD	TRYFS00		; 9 : polygon move
;
tp1		EQU	(tlp100-tlp000)/3
tp2		EQU	(tlp200-tlp000)/3
;
;
;===============  Title initial	 ========================================
TILINT0		EQU	$
		LDA	#10000000B
		STA	!GMAPDF
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		JSL	>TILIT0		; initial-0
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#10000000B
		STX	2115H
;
		LDA	#027F0H
		STA	2116H
;
		LDX	#020H
		LDA	#07FFFH
TLIT040		EQU	$
		STZ	2118H
		STA	>CGWORK+120H,X
		DEX
		DEX
		BPL	TLIT040		;
;					;
		LDA	#01FFEH
		STA	<CWORK0
		LDA	#01FFEH-400H
		STA	<CWORK2
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#00001111B
		STA	<BLKFLG		; blanking flag off
;
		STZ	<JRSBPT
;
		INC	<CGVMAF
;
		INC	<GAMEMD
;
		LDA	#00AH
		STA	!SOUND3		; <sound3>
;
;
;===============  Title initial	 ========================================
TILINT1		EQU	$
		JSR	NAMEST
;
		LDA	<JRSBPT
		INC	<JRSBPT
		CMP	#00CH
		BCS	TLIT800		;
;					;
		JSL	>JSRSUBL
		LWORD	TLIT100		; 00 : ram clear
		LWORD	TLIT100		; 01 : ram clear
		LWORD	TLIT100		; 02 : ram clear
		LWORD	TLIT100		; 03 : ram clear
		LWORD	TLIT100		; 04 : ram clear
		LWORD	TLIT100		; 05 : ram clear
		LWORD	TLIT100		; 06 : ram clear
		LWORD	TLIT100		; 07 : ram clear
		LWORD	TILIT1		; 08 : initial-1
		LWORD	MSGETNP		; 09 : message buffer set
		LWORD	CCBFIT		; 0A : change char. buffer init. set
		LWORD	OPTCBFST	; 0B : option character buffer set
;
;
TLIT100		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	<CWORK0
		LDA	#00000H
TLIT120		EQU	$
		STA	>7E2000H,X
		STA	>7E4000H,X
		STA	>7E6000H,X
		STA	>7E8000H,X
		STA	>7EA000H,X
		STA	>7EC000H,X
		STA	>7EE000H,X
		STA	>7F0000H,X
		STA	>7F2000H,X
		STA	>7F4000H,X
		STA	>7F6000H,X
		STA	>7F8000H,X
		STA	>7FA000H,X
		STA	>7FC000H,X
		STA	>7FE000H,X
		DEX
		DEX
		CPX	<CWORK2
		BNE	TLIT120		; end ?
;					; yes
		STX	<CWORK0
		TXA
		SEC
		SBC	#00400H
		STA	<CWORK2
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
TLIT800		EQU	$
		DEC	<BLKFLG
		BNE	TLIT880		; fade out end ?
;					; yes
TLIT820		EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	2100H
;// 03.09.17 //		STA	<BLKFLG		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		JSL	>VRAMCL		; Vcl
;
		LDA	#00000010B
		STA	2101H		; obj size,address set
		LDA	#023H
		STA	!CHIKNO
		LDA	#07DH
		STA	!ROBJCPT
		LDA	#051H
		STA	!RBGCPT
		LDA	#C_2V0
		STA	!OJBSPT
		JSL	>CHSCHN0
		JSL	>CHSCHNG	; title character set
		LDY	#C_1Y1
		JSL	>WTRCBFS0	; 
		LDA	#002H
		STA	>WTCHCT
		LDA	#00H
		STA	>WTCHCT+1
;
		STZ	<MPDTNO
		STZ	!DANJC
		STZ	!KOKBGC
		STZ	<CWORK0
		STZ	<CWORK1
		STZ	<CWORK2
		STZ	<CWORK3
;
		LDA	#002H
		STA	>CCNGFG
		LDA	#01FH
		STA	>CCNGCT
		LDA	#000H
		STA	>CCNGED
		STZ	!CCNGPT
;
		INC	<GAMEMD
TLIT880		EQU	$
		RTL
;
;
;
;
;************************************************************************
;*		Title Fade-in				(TILFDIN)	*
;************************************************************************
TILFDIN		EQU	$
		JSL	>TRYFS00	; poly-gon move
;
;;;;;;;;		JSL	>CGCNG1		; fade in
;;;;;;;;		LDA	>CCNGCT
;;;;;;;;		BEQ	TLFIN40		; end ?
;;;;;;;;;					; no
		LDA	<FCNT
		LSR	A
		BCC	TLFIN90		;
;					;
		JSL	>CGCNG1		; fade in
		LDA	>CCNGCT
		BNE	TLFIN100	; end ?
;					; yes
TLFIN40		EQU	$
		LDA	#020H
		STA	<JRSBPT
		INC	<GAMEMD
TLFIN90		EQU	$
		RTL
;
TLFIN100	EQU	$
		CMP	#00DH
		BNE	TLFIN200	;
;					;
		LDA	#00010101B
		STA	<DPMAIN
		STZ	<DPSUB
TLFIN200	EQU	$
		RTL
;
;
;
;************************************************************************
;*		Title wait				(TILWAIT)	*
;************************************************************************
TILWAIT		EQU	$
		JSL	>TRYFS00	; poly-gon move
;
		DEC	<JRSBPT
		BNE	TLWIT80		; wait end ?
;					; yes
		LDA	#001H
		STA	!TFMODE+3	;OPJIS SET
		LDA	#OPJIS		;NO SET
		STA	!TFNAME+3	; "Kamigami no tryfoce" set
		INC	<GAMEMD
TLWIT80		EQU	$
		RTL
;
;
;
;************************************************************************
;*		Title play				(TILPLAY)	*
;************************************************************************
TILPLAY		EQU	$
		JSL	>TRYFS00	; poly-gon move
;
		DEC	<JRSBPT
		BNE	TLPL280		; demo start ?
;					; yes
		LDA	#MD_tdemo
		STA	<SLMODE
		STZ	<GAMEMD
;;;		STZ	<CWORK0
		STZ	<ZWORK+2
TLPL280		EQU	$
		RTL
;
;
;
TILSTART	EQU	$
		LDA	#0FFH
		STA	!IRQSWFG	; IRQ off
		LDA	#015H
		STA	<DPMAIN
		STZ	<DPSUB
		STZ	<GMMODE
;
		LDA	#0F1H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
;
		JSL	>RGBRSET	; R.G.B. reset
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#090H-20H-2
TILPLY10	EQU	$
		STZ	<WORK+20H,X
		DEX
		DEX
		BPL	TILPLY10	;
;					;
		LDX	#00000H
		TXA
TILPLY20	EQU	$
		STA	>ZEL_DATA+000H,X
		STA	>ZEL_DATA+100H,X
		STA	>ZEL_DATA+200H,X
		STA	>ZEL_DATA+300H,X
		STA	>ZEL_DATA+400H,X
		INX
		INX
		CPX	#00100H
		BNE	TILPLY20	; start data set end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;// 03.09.26 //		LDA	>BUCKSUM
;// 03.09.26 //		CMP	#0AAH
;// 03.09.26 //		BEQ	TILPLY90	;
;// 03.09.26 //;					;
;// 03.09.26 //		MEM16
;// 03.09.26 //		IDX16
;// 03.09.26 //		REP	#00110000B	; memory,index 16bit mode
;// 03.09.26 //;
;// 03.09.26 //		STZ	<CWORK0
;// 03.09.26 //		LDA	<CWORK0
;// 03.09.26 //		ASL	A
;// 03.09.26 //		INC	A
;// 03.09.26 //		INC	A
;// 03.09.26 //		STA	>DTSVPT		; data save pointer set
;// 03.09.26 //		TAX
;// 03.09.26 //		LDA	>DTSVPD,X
;// 03.09.26 //		TAX
;// 03.09.26 //		LDY	#00000H
;// 03.09.26 //		TYA
;// 03.09.26 //TILPLY40	EQU	$
;// 03.09.26 //		STA	>BKUP_RAM0+000H,X
;// 03.09.26 //		STA	>BKUP_RAM0+100H,X
;// 03.09.26 //		STA	>BKUP_RAM0+200H,X
;// 03.09.26 //		STA	>BKUP_RAM0+300H,X
;// 03.09.26 //		STA	>BKUP_RAM0+400H,X
;// 03.09.26 //		STA	>BKUP_RAM3+000H,X
;// 03.09.26 //		STA	>BKUP_RAM3+100H,X
;// 03.09.26 //		STA	>BKUP_RAM3+200H,X
;// 03.09.26 //		STA	>BKUP_RAM3+300H,X
;// 03.09.26 //		STA	>BKUP_RAM3+400H,X
;// 03.09.26 //		INX
;// 03.09.26 //		INX
;// 03.09.26 //		INY
;// 03.09.26 //		INY
;// 03.09.26 //		CPY	#00100H
;// 03.09.26 //		BNE	TILPLY40	; erase end ?
;// 03.09.26 //;					; yes
;// 03.09.26 //		MEM8
;// 03.09.26 //		IDX8
;// 03.09.26 //		SEP	#00110000B	; memory,index 8bit mode
TILPLY90	EQU	$
		LDA	#MD_selct
		STA	<SLMODE
		STA	!RESTSFG
		STZ	<GAMEMD
		RTL
;
;
;
;
;+++++++++++++++++++++++++++  OPENING  ++++++++++++++++++++++++++++++++++
;
;
;****************************************
;	KAZU				*
;****************************************
TRYFSSU		EQU	008H
;
;****************************************
;	RAM				*
;****************************************
PGMODE		EQU	01E00H
PGWORK		EQU	01E01H
PGMVOK		EQU	01E02H
;
TFOAMA		EQU	01E08H
TFFRT		EQU	01E0AH
TFCONT		EQU	01E0CH
;
TFMODE		EQU	01E10H
TFNAME		EQU	TFMODE+TRYFSSU
TFSTAT		EQU	TFNAME+TRYFSSU
TFXPSR		EQU	TFSTAT+TRYFSSU
TFXPSL		EQU	TFXPSR+TRYFSSU
TFXPSH		EQU	TFXPSL+TRYFSSU
TFYPSR		EQU	TFXPSH+TRYFSSU
TFYPSL		EQU	TFYPSR+TRYFSSU
TFYPSH		EQU	TFYPSL+TRYFSSU
TFXSPD		EQU	TFYPSH+TRYFSSU
TFYSPD		EQU	TFXSPD+TRYFSSU
;
;
;
;****************************************
;	NAME				*
;****************************************
TRYFS		EQU	000H
OPJIS		EQU	001H
OPJI1		EQU	002H
OPKRA		EQU	003H
TSED0		EQU	004H
TSED1		EQU	005H
TSED2		EQU	006H
TSED3		EQU	007H
;
;
;
;===============  Opening initial  ========================================
POLGNIT		EQU	$
		LDA	#C_2V0
		STA	!OJBSPT
		JSL	>CHSCHN2	; title character set
;
		JSR	PLNITSB
;
		LDA	#001H
		STA	TFMODE+0	;TRYFS SET
		STA	TFMODE+1
		STA	TFMODE+2
;
		LDA	#TRYFS		;NO SET
		STA	TFNAME+0
		STA	TFNAME+1
		STA	TFNAME+2
;
		LDA	#001H
		STA	TFMODE+4	;OPJI1 SET
		LDA	#OPJI1		;NO SET
		STA	TFNAME+4
;
		LDA	#00001111B
		STA	<BLKFLG
		INC	<GAMEMD
		RTL
;
;
;
;
;
;----------------------------------------
PLNITSB		EQU	$
		JSL	>INITIAL_POLYGON
;
		JSR	POLICG		;CG SET
;
		LDA	#090H		;POLYGON TIME
		STA	<POLYTIME
;
		LDA	#0FFH		;POLIW SIZE (S)
		STA	object_size
;
		LDA	#001H		;light shading
		STA	shading_switch
;
		LDA	#032		;CENTER X
		STA	center_point_x
;
		LDA	#032		;CENTER Y
		STA	center_point_y
;
		LDA	#032		;CENTER Z
		STA	center_point_z
;
		LDA	#001H
		STA	object_type
;
		LDA	#0A0H 
		STA	rotate_angle_x
;
		LDA	#060H 
		STA	rotate_angle_y
;
		LDA	#001H		;POLYGON WRITE FLG(MAIN)
		STA	POLYCFG
		STA	polygon_flag
;
		LDX	#00FH
PNTSB10		EQU	$
		STZ	PGMODE+00H,X
		STZ	PGMODE+10H,X
		STZ	PGMODE+20H,X
		STZ	PGMODE+30H,X
		STZ	PGMODE+40H,X
		STZ	PGMODE+50H,X
		STZ	PGMODE+60H,X
		DEX
		BPL	PNTSB10
;
		RTS
;
;
;
;
POLICG		EQU	$
		MEM16			;COLOR SET
		IDX8
		REP	#00100000B
;
		LDA	>CLRDT00+000H
		STA	>CGWORK+1A0H+000H
		LDA	>CLRDT00+002H
		STA	>CGWORK+1A0H+002H
		LDA	>CLRDT00+004H
		STA	>CGWORK+1A0H+004H
		LDA	>CLRDT00+006H
		STA	>CGWORK+1A0H+006H
		LDA	>CLRDT00+008H
		STA	>CGWORK+1A0H+008H
		LDA	>CLRDT00+00AH
		STA	>CGWORK+1A0H+00AH
		LDA	>CLRDT00+00CH
		STA	>CGWORK+1A0H+00CH
		LDA	>CLRDT00+00EH
		STA	>CGWORK+1A0H+00EH
;
		MEM8
		IDX8
		SEP	#00110000B
		INC	<CGVMAF		;CG SET
;
		RTS
;
;===============  Opening  ========================================
;****************************************
;	OPENING				*
;****************************************
TRYFS00		EQU	$
		PHB
		PHK
		PLB
;
		INC	TFFRT
;
		JSR	POLGNMV
;
		JSR	TRYFSCL		;TRF MV
;
		PLB
		RTL
;----------------------------------------
TRYFSCL		EQU	$
		LDA	#LOW  OAM
		STA	TFOAMA
		LDA	#HIGH OAM
		STA	TFOAMA+1
;
		LDX	#TRYFSSU-1
TYSCL10		EQU	$
		JSR	TRYFSMN
		DEX
		BPL	TYSCL10
;
		RTS
;---------------------------------------
;****************************************
;	POLYGON MOVE			*
;****************************************
;----------------------------------------
CLRDT00		EQU	$
		WORD	00000H
		WORD	0014DH
		WORD	001B0H
		WORD	001F3H
		WORD	00256H
		WORD	00279H
		WORD	002FDH
		WORD	0035FH
;
;
POLGNAX		EQU	003H
POLGNAY		EQU	005H
POLGNAZ		EQU	002H
;----------------------------------------
POLGNMV		EQU	$
		LDA	#001H		;POLYGON WRITE FLG(MAIN)
		STA	POLYCFG
;
		LDA	polygon_flag
		BNE	PLNMV10		;? POLIW MOVE OK
;					;Y
		JSR	POLGNMS		;POLYGON MAIN
;
		LDA	#001H		;POLYGON WRITE ON
		STA	polygon_flag
;
PLNMV10		EQU	$
;
		RTS
;----------------------------------------
POLGNMS		EQU	$
		LDA	PGMODE
		JSL	>JSRSUB
		WORD	POLGNM0
		WORD	POLGNM1
		WORD	POLGNM2
		WORD	POLGNM3
		WORD	POLGNM4
		WORD	POLGNM5
;
;----------------------------------------
POLGNM0		EQU	$
		INC	PGWORK
		LDA	PGWORK
		CMP	#040H		;WAIT TIME
		BNE	PLNM010
		INC	PGMODE		;NEXT
;
PLNM010		EQU	$
		LDA	rotate_angle_y	;KAITEN
		CLC
		ADC	#POLGNAY
		STA	rotate_angle_y
;
		LDA	rotate_angle_x	;KAITEN
		CLC
		ADC	#POLGNAX
		STA	rotate_angle_x
;
		RTS
;----------------------------------------
POLGNM1		EQU	$
		LDA	object_size
		CMP	#002H
		BCS	PLNM110
;
		STZ	object_size	;POLIW (BIG)
;
		INC	PGMODE		;NEXT
		LDA	#040H		;NEXT TIME
		STA	PGWORK
		RTS
;--
PLNM110		EQU	$
		SBC	#POLGNAZ
		STA	object_size
;
		LDA	rotate_angle_y	;KAITEN
		CLC
		ADC	#POLGNAY
		STA	rotate_angle_y
;
		LDA	rotate_angle_x	;KAITEN
		CLC
		ADC	#POLGNAX
		STA	rotate_angle_x
;
		LDA	object_size
;// 03.10.05 //		CMP	#037H
		CMP	#0E1H
		BCS	PLNM115		; start key check ok ?
;					; yes
		LDX	#tp1
		STX	<GAMEMD
PLNM115		EQU	$
		CMP	#071H
		BNE	PLNM120
;
		LDA	#001H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
PLNM120		EQU	$
		RTS
;----------------------------------------
POLGNM2		EQU	$
		DEC	PGWORK
		BNE	PLNM210
;
		INC	PGMODE
		RTS
;
PLNM210		EQU	$
		LDA	rotate_angle_y	;KAITEN
		CLC
		ADC	#POLGNAY
		STA	rotate_angle_y
;
		LDA	rotate_angle_x	;KAITEN
		CLC
		ADC	#POLGNAX
		STA	rotate_angle_x
;
		RTS
;----------------------------------------
POLGNM3		EQU	$
		LDA	rotate_angle_y
		CMP	#0FFH-POLGNAY
		BCC	PLNM310
;
		LDA	rotate_angle_x
		CMP	#0FFH-POLGNAX
		BCC	PLNM310
;
		INC	PGMODE
		LDA	#020H		;NEXT TIME
		STA	PGWORK
		RTS
;
PLNM310		EQU	$
		LDA	rotate_angle_y	;KAITEN
		CLC
		ADC	#POLGNAY
		STA	rotate_angle_y
;
		LDA	rotate_angle_x	;KAITEN
		CLC
		ADC	#POLGNAX
		STA	rotate_angle_x
;
		RTS
;----------------------------------------
POLGNM4		EQU	$
		STZ	rotate_angle_y
		STZ	rotate_angle_x
		DEC	PGWORK
		BNE	PLNM410
;
		INC	PGMODE
;
		LDA	#001H
		STA	TFMODE+5	;OPKRA SET
		LDA	#OPKRA		;NO SET
		STA	TFNAME+5
;
;
		LDA	#VT03
		STA	<VRFLG
		INC	<CGVMAF
		INC	<GAMEMD
;
		LDA	#00010000B
		STA	<DPMAIN
		LDA	#00000101B
		STA	<DPSUB
		LDA	#00000010B
		STA	<WD2130
		LDA	#00110001B
		STA	<WD2131
;
		STZ	<JRSBPT
PLNM410		EQU	$
		RTS
;
;----------------------------------------
POLGNM5		EQU	$
		RTS
;
;
;****************************************
;	TF MOVE MAIN			*
;****************************************
;----------------------------------------
TRYFSMN		EQU	$
		LDA	TFMODE,X
		BEQ	TYSMN10
;
		JSL	>JSRSUB
		WORD	TYSMN10
		WORD	TRYINIT
		WORD	TRYMAIN
;
TYSMN10		EQU	$
		RTS
;----------------------------------------
TRYINIT		EQU	$			;INIT
		LDA	TFNAME,X
		JSL	>JSRSUB
;--OPENING
		WORD	TRYFSIT
		WORD	OPJISIT
		WORD	OPJI1IT
		WORD	OPKRAIT
;--ENDING
		WORD	TSED0IT
		WORD	TSED1IT
		WORD	TSED2IT
		WORD	TSED3IT
;----------------------------------------
TRYMAIN		EQU	$			;MOVE
		LDA	TFNAME,X
		JSL	>JSRSUB
;--OPENING
		WORD	TRYFSMV
		WORD	OPJISMV
		WORD	OPJI1MV
		WORD	OPKRAMV
;--ENDING
		WORD	TSED0MV
		WORD	TSED1MV
		WORD	TSED2MV
		WORD	TSED3MV
;----------------------------------------
;****************************************
;	TRYFS INIT			*
;****************************************
TYSITPX		EQU	$
		WORD	0FFDAH,0005FH,000E6H
TYSITPY		EQU	$
		WORD	000C8H,0FFBDH,000C8H
;
TRYFSIT		EQU	$
		TXA
		ASL	A
		TAY
		LDA	TYSITPX,Y
		STA	TFXPSL,X
		LDA	TYSITPX+1,Y
		STA	TFXPSH,X
;
		LDA	TYSITPY,Y
		STA	TFYPSL,X
		LDA	TYSITPY+1,Y
		STA	TFYPSH,X
;
		LDA	TYSM0SX,X	;SPEED SET
		CLC
		ADC	TFXSPD,X
		STA	TFXSPD,X
		LDA	TYSM0SY,X
		CLC
		ADC	TFYSPD,X
		STA	TFYSPD,X
;
		INC	TFMODE,X
;
		RTS
;****************************************
;	TRYFS MOVE			*
;****************************************
;----------------------------------------
TRYFSMV		EQU	$
		JSR	TRYFSCS
;
		JSR	TFMVCL
;
		LDA	PGMODE
		JSL	>JSRSUB
		WORD	TRYFSM0
		WORD	TRYFSM1
		WORD	TRYFSM2
		WORD	TRYFSM3
		WORD	TRYFSM4
		WORD	TRYFSM5
;----------------------------------------
TYSM0SX		EQU	$
		BYTE	001,000,-01
TYSM0SY		EQU	$
		BYTE	-01,001,-01
;
TYM0PXL		EQU	$
		BYTE	04BH,05FH,075H
TYM0PYL		EQU	$
		BYTE	050H,028H,050H
;
;
TRYFSM0		EQU	$
TRYFSM1		EQU	$
TRYFSM2		EQU	$
TRYFSM3		EQU	$
TRYFSM4		EQU	$
		LDA	TFFRT
		AND	#01FH
		BNE	TYSM030
;
		LDA	TYSM0SX,X	;SPEED SET
		CLC
		ADC	TFXSPD,X
		STA	TFXSPD,X
		LDA	TYSM0SY,X
		CLC
		ADC	TFYSPD,X
		STA	TFYSPD,X
;
TYSM030		EQU	$
;
		LDA	TYM0PXL,X
		CMP	TFXPSL,X
		BNE	TYSM010
		STZ	TFXSPD,X
;
TYSM010		EQU	$
		LDA	TYM0PYL,X
		CMP	TFYPSL,X
		BNE	TYSM020
		STZ	TFYSPD,X
;
TYSM020		EQU	$
		RTS
;----------------------------------------
TRYFSM5		EQU	$
		STZ	TFXSPD,X
		STZ	TFYSPD,X
		RTS
;----------------------------------------
TRYFSCN		EQU	080H
;
TRYFSCD		EQU	$
		WORD	00000H,00000H
		BYTE	000H+TRYFSCN,02BH,000H,002H
		WORD	00010H,00000H
		BYTE	002H+TRYFSCN,02BH,000H,002H
		WORD	00020H,00000H
		BYTE	004H+TRYFSCN,02BH,000H,002H
		WORD	00030H,00000H
		BYTE	006H+TRYFSCN,02BH,000H,002H
;
		WORD	00000H,00010H
		BYTE	020H+TRYFSCN,02BH,000H,002H
		WORD	00010H,00010H
		BYTE	022H+TRYFSCN,02BH,000H,002H
		WORD	00020H,00010H
		BYTE	024H+TRYFSCN,02BH,000H,002H
		WORD	00030H,00010H
		BYTE	026H+TRYFSCN,02BH,000H,002H
;
		WORD	00000H,00020H
		BYTE	008H+TRYFSCN,02BH,000H,002H
		WORD	00010H,00020H
		BYTE	00AH+TRYFSCN,02BH,000H,002H
		WORD	00020H,00020H
		BYTE	00CH+TRYFSCN,02BH,000H,002H
		WORD	00030H,00020H
		BYTE	00EH+TRYFSCN,02BH,000H,002H
;
		WORD	00000H,00030H
		BYTE	028H+TRYFSCN,02BH,000H,002H
		WORD	00010H,00030H
		BYTE	02AH+TRYFSCN,02BH,000H,002H
		WORD	00020H,00030H
		BYTE	02CH+TRYFSCN,02BH,000H,002H
		WORD	00030H,00030H
		BYTE	02EH+TRYFSCN,02BH,000H,002H
;
TRYFSC1		EQU	$
		WORD	00030H,00000H
		BYTE	000H+TRYFSCN,06BH,000H,002H
		WORD	00020H,00000H
		BYTE	002H+TRYFSCN,06BH,000H,002H
		WORD	00010H,00000H
		BYTE	004H+TRYFSCN,06BH,000H,002H
		WORD	00000H,00000H
		BYTE	006H+TRYFSCN,06BH,000H,002H
;
		WORD	00030H,00010H
		BYTE	020H+TRYFSCN,06BH,000H,002H
		WORD	00020H,00010H
		BYTE	022H+TRYFSCN,06BH,000H,002H
		WORD	00010H,00010H
		BYTE	024H+TRYFSCN,06BH,000H,002H
		WORD	00000H,00010H
		BYTE	026H+TRYFSCN,06BH,000H,002H
;
		WORD	00030H,00020H
		BYTE	008H+TRYFSCN,06BH,000H,002H
		WORD	00020H,00020H
		BYTE	00AH+TRYFSCN,06BH,000H,002H
		WORD	00010H,00020H
		BYTE	00CH+TRYFSCN,06BH,000H,002H
		WORD	00000H,00020H
		BYTE	00EH+TRYFSCN,06BH,000H,002H
;
		WORD	00030H,00030H
		BYTE	028H+TRYFSCN,06BH,000H,002H
		WORD	00020H,00030H
		BYTE	02AH+TRYFSCN,06BH,000H,002H
		WORD	00010H,00030H
		BYTE	02CH+TRYFSCN,06BH,000H,002H
		WORD	00000H,00030H
		BYTE	02EH+TRYFSCN,06BH,000H,002H
;
TRYFSCS		EQU	$
		LDA	#010H
		STA	<WORK6
		STZ	<WORK7
;
		CPX	#002H
		BEQ	TYSCS10
;
		LDA	#LOW  TRYFSCD
		STA	<WORK8
		LDA	#HIGH TRYFSCD
		STA	<WORK9
		BRA	TYSCS20
TYSCS10		EQU	$
		LDA	#LOW  TRYFSC1
		STA	<WORK8
		LDA	#HIGH TRYFSC1
		STA	<WORK9
TYSCS20		EQU	$
		JSR	SETOAM2
;
		RTS
;----------------------------------------
;****************************************
;	OPJIS INIT			*
;****************************************
;----------------------------------------
OPJISIT		EQU	$
		LDA	#080H
		STA	TFXPSL,X
		STZ	TFXPSH,X
;
		LDA	#07EH
		STA	TFYPSL,X
		STZ	TFYPSH,X
;
		INC	TFMODE,X
		RTS
;----------------------------------------
;****************************************
;	OPJIS MOVE			*
;****************************************
;----------------------------------------
OPJISMV		EQU	$
		JSR	OPJISCS
;
		RTS
;----------------------------------------
OPJISCD		EQU	$
		WORD	00000H,00000H
		BYTE	046H,00CH,000H,002H
		WORD	00010H,00000H
		BYTE	048H,00CH,000H,002H
		WORD	00020H,00000H
		BYTE	04AH,00CH,000H,002H
		WORD	00030H,00000H
		BYTE	04CH,00CH,000H,002H
		WORD	00040H,00000H
		BYTE	04EH,00CH,000H,002H
		WORD	00050H,00000H
		BYTE	060H,00CH,000H,002H
;		WORD	00060H,00000H
;		BYTE	066H,00CH,000H,000H
;		WORD	00060H,00008H
;		BYTE	076H,00CH,000H,000H
;
OPJISCS		EQU	$
		LDA	#006H
		STA	<WORK6
		STZ	<WORK7
;
		LDA	#LOW  OPJISCD
		STA	<WORK8
		LDA	#HIGH OPJISCD
		STA	<WORK9
;
		JSR	SETOAM2
;
		RTS
;----------------------------------------
;****************************************
;	OPJI1 INIT			*
;****************************************
;----------------------------------------
OPJI1IT		EQU	$
		LDA	#058H
		STA	TFXPSL,X
		STZ	TFXPSH,X
;
		LDA	#0B8H
		STA	TFYPSL,X
		STZ	TFYPSH,X
;
		INC	TFMODE,X
		RTS
;----------------------------------------
;****************************************
;	OPJI1 MOVE			*
;****************************************
;----------------------------------------
OPJI1MV		EQU	$
		JSR	OPJI1CS
;
		RTS
;----------------------------------------
OPJI1CD		EQU	$
		WORD	00000H,00000H
		BYTE	040H,00AH,000H,000H
		WORD	00008H,00000H
		BYTE	041H,00AH,000H,000H
		WORD	00010H,00000H
		BYTE	042H,00AH,000H,000H
		WORD	00018H,00000H
		BYTE	043H,00AH,000H,000H
		WORD	00020H,00000H
		BYTE	044H,00AH,000H,000H
		WORD	00028H,00000H
		BYTE	050H,00AH,000H,000H
		WORD	00030H,00000H
		BYTE	051H,00AH,000H,000H
		WORD	00038H,00000H
		BYTE	052H,00AH,000H,000H
		WORD	00040H,00000H
		BYTE	053H,00AH,000H,000H
		WORD	00048H,00000H
		BYTE	054H,00AH,000H,000H
;
OPJI1CS		EQU	$
		LDA	#00AH
		STA	<WORK6
		STZ	<WORK7
;
		LDA	#LOW  OPJI1CD
		STA	<WORK8
		LDA	#HIGH OPJI1CD
		STA	<WORK9
;
		JSR	SETOAM2
;
		RTS
;----------------------------------------
;****************************************
;	OPKRA INIT			*
;****************************************
;----------------------------------------
OPKRAIT		EQU	$
		LDA	TFFRT
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		AND	#003H
		TAY
		LDA	OPKRAXP,Y
		STA	TFXPSL,X
		LDA	OPKRAYP,Y
		STA	TFYPSL,X
;
		INC	TFMODE,X
		RTS
;----------------------------------------
;****************************************
;	OPKRA MOVE			*
;****************************************
;----------------------------------------
OPKRAXP		EQU	$
		BYTE	0D0H,098H,06EH,02AH
OPKRAYP		EQU	$
		BYTE	06EH,04CH,071H,051H
OPKRADT		EQU	$
		BYTE	000H,001H,002H,003H,002H,001H,0FFH,0FFH
;
;
OPKRAMV		EQU	$
		JSR	OPKRACS
;
		LDA	TFFRT
		LSR	A
		LSR	A
		AND	#007H
		TAY
		LDA	OPKRADT,Y
		STA	TFSTAT,X
;
		LDA	TFFRT
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		AND	#003H
		TAY
		LDA	OPKRAXP,Y
		STA	TFXPSL,X
		LDA	OPKRAYP,Y
		STA	TFYPSL,X
;
		RTS
;----------------------------------------
OPKRACD		EQU	$
		WORD	00000,00000
		BYTE	080H,034H,000H,000H
;
		WORD	00000,00000
		BYTE	0B7H,034H,000H,000H
;
		WORD	-0004,-0003
		BYTE	064H,038H,000H,002H
;
		WORD	-0004,-0003
		BYTE	062H,034H,000H,002H
;
OPKRACS		EQU	$
		LDA	#001H
		STA	<WORK6
		STZ	<WORK7
;
		LDA	TFSTAT,X
		BMI	OKACS10
		ASL	A
		ASL	A
		ASL	A
		ADC	#LOW  OPKRACD
		STA	<WORK8
		LDA	#HIGH OPKRACD
		ADC	#000H
		STA	<WORK9
;
		JSR	SETOAM2
;
OKACS10		EQU	$
		RTS
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
SETOAM2		EQU	$
		LDA	TFXPSL,X
		STA	<WORK0
		LDA	TFXPSH,X
		STA	<WORK1
		LDA	TFYPSL,X
		STA	<WORK2
		LDA	TFYPSH,X
		STA	<WORK3
;
		STZ	<WORK4
		STZ	<WORK5
;
		PHX
;
		MEM16
		IDX16
		REP	#00110000B
;
		LDY	#00000H		;DATA READ POINT
		LDX	TFOAMA		;OAM ADR
;
		LDA	<WORK6		;NEXT OAM ADR
		ASL	A
		ASL	A
		ADC	TFOAMA
		STA	TFOAMA
;
STOAM20		EQU	$
;
		LDA	(<WORK8),Y	;X pos set
		CLC
		ADC	<WORK0
		STA	OAM-OAM,X
		AND	#00100H		;OAMSB DATA SET(JUNBI)
		STA	<WORKC
;
		INY			;NEXT READ POINT
		INY
;
		LDA	(<WORK8),Y	;Y pos set
		CLC
		ADC	<WORK2
		STA	OAM-OAM+1,X
		CLC
		ADC	#00010H
		CMP	#00100H
		BCC	STOAM30		;!(0FFF0H - 000F0H) = CLS
		LDA	#000F0H		;Y pos cls
		STA	OAM-OAM+1,X
;
STOAM30		EQU	$
		INY			;NEXT READ POINT
		INY
;
		LDA	(<WORK8),Y	;CHAR and ATR SET
		EOR	<WORK4
		STA	OAM-OAM+2,X
;
		PHX
		TXA
		SEC
		SBC	#OAM
		LSR	A
		LSR	A
		TAX
		MEM8
		SEP	#00100000B
;
		INY			;NEXT READ POINT
		INY
		INY
		LDA	(<WORK8),Y
		ORA	<WORKD
;
		STA	OAMSB,X
		PLX
;
		MEM16
		REP	#00100000B
;
		INY			;NEXT READ POINT
;
		INX
		INX
		INX
		INX
;
		DEC	<WORK6		;? ALL OVRE
		BNE	STOAM20
;					;Y
		MEM8
		IDX8
		SEP	#00110000B
;
		PLX
;
STOAM10		EQU	$
;
		RTS
;----------------------------------------
TFMVCL		EQU	$
		LDA	TFXSPD,X
		BEQ	TFMVL10
;
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	TFXPSR,X
		STA	TFXPSR,X
		LDA	TFXSPD,X
		PHP
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LDY	#000H
		PLP
		BPL	TFMVL15
		ORA	#11110000B
		DEY
TFMVL15		EQU	$
		ADC	TFXPSL,X
		STA	TFXPSL,X
		TYA
		ADC	TFXPSH,X
		STA	TFXPSH,X
;
TFMVL10		EQU	$
		LDA	TFYSPD,X
		BEQ	TFMVL20
;
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	TFYPSR,X
		STA	TFYPSR,X
		LDA	TFYSPD,X
		PHP
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LDY	#000H
		PLP
		BPL	TFMVL25
		ORA	#11110000B
		DEY
TFMVL25		EQU	$
		ADC	TFYPSL,X
		STA	TFYPSL,X
		TYA
		ADC	TFYPSH,X
		STA	TFYPSH,X
;
TFMVL20		EQU	$
		RTS
;========================================
TFSTCK		EQU	$
		LDA	PGMVOK
		BEQ	TSCK10
		PLA
		PLA
TSCK10		EQU	$
		RTS
;************************************************************************
;*									*
;*   ********	**	*   *****	***	**	*      *****	*
;*   *		* *	*   *	 *	 *	* *	*    *	     *	*
;*   *		*  *	*   *	  *	 *	*  *	*   *		*
;*   *******	*   *	*   *	  *	 *	*   *	*   *		*
;*   *		*    *	*   *	  *	 *	*    *	*   *	   ***	*
;*   *		*     *	*   *	 *	 *	*     *	*    *	    **	*
;*   ********	*      **   *****	***	*      **      ****  *	*
;*									*
;************************************************************************
;===============  Ending initial  ========================================
POLGNED		EQU	$
		LDA	#C_2V0
		STA	!OJBSPT
		JSL	>CHSCHN2	; title character set
;
		JSR	PLNITSB
;
		LDA	#001H
		STA	TFMODE+0	;TRYFS SET
		STA	TFMODE+1
		STA	TFMODE+2
;
		LDA	#TSED0		;NO SET
		STA	TFNAME+0
		LDA	#TSED1		;NO SET
		STA	TFNAME+1
		LDA	#TSED2		;NO SET
		STA	TFNAME+2
;
		LDA	#00001111B
		STA	<BLKFLG
		INC	<GAMEMD
		RTL
;
;
;
;
;
;===============  Ending  ========================================
PLGNED2		EQU	$
		LDA	#C_2V0
		STA	!OJBSPT
		JSL	>CHSCHN2	; title character set
;
		JSR	PLNITSB
;
		STZ	object_size
;
		LDA	#001H
		STA	TFMODE+0	;TRYFS SET
		STA	TFMODE+1
		STA	TFMODE+2
;
		LDA	#TSED3		;NO SET
		STA	TFNAME+0
		LDA	#TSED3		;NO SET
		STA	TFNAME+1
		LDA	#TSED3		;NO SET
		STA	TFNAME+2
;
		LDA	#00001111B
		STA	<BLKFLG
		INC	<GAMEMD
		RTL
;
;
;
;
;
;===============  Ending  ========================================
;****************************************
;	ENDING				*
;****************************************
TRYFS10		EQU	$
		PHB
		PHK
		PLB
;
		JSR	PLNEDMV
;
		JSR	TRYFSCL		;TRF MV
;
TYS1010		EQU	$
		PLB
		RTL
;----------------------------------------
PLNEDMV		EQU	$
		LDA	#001H		;POLYGON WRITE FLG(MAIN)
		STA	POLYCFG
		STA	PGMVOK		;POLYGON MOVE NOT
;
		LDA	polygon_flag
		BNE	PNDMV10		;? POLIW MOVE OK
;					;Y
		JSR	PLNEDMS		;POLYGON MAIN
;
		LDA	#001H		;POLYGON WRITE ON
		STA	polygon_flag
;
		STZ	PGMVOK		;POLYGON MOVE OK
;
		INC	TFFRT
;
PNDMV10		EQU	$
		RTS
;----------------------------------------
PLNEDMS		EQU	$
		LDA	PGMODE
		JSL	>JSRSUB
		WORD	PLNEDM0		;UP
		WORD	PLNEDM1		;KAITEN
		WORD	PLNEDM2		;MINI
		WORD	PLNEDM3		;STOP
		WORD	PLNEDM4		;STOP
;
;----------------------------------------
PNDMSAX		EQU	3
PNDMSAY		EQU	5
PLNEDM0		EQU	$
		LDA	object_size
		SEC
		SBC	#002H
		STA	object_size
		CMP	#002H
		BCS	PNDM010
		STZ	object_size
		INC	PGMODE
		INC	<JRSBPT
PNDM010		EQU	$
;----------------------------------------
PLNEDM1		EQU	$
		LDA	<JRSBPT
		CMP	#00AH
		BCC	PNDM110
		INC	PGMODE
		LDA	#005H
		STA	TFYSPD+1
PNDM110		EQU	$
		LDA	rotate_angle_y	;KAITEN
		CLC
		ADC	#PNDMSAY/2
		STA	rotate_angle_y
;
		LDA	rotate_angle_x	;KAITEN
		CLC
		ADC	#PNDMSAX/2
		STA	rotate_angle_x
;
		RTS
;----------------------------------------
PLNEDM2		EQU	$
		LDA	#0C0H		;TIMER SET
		STA	TFCONT
		LDA	#001H
		STA	TFCONT+1
;
		LDA	object_size
		CMP	#080H
		BCS	PNDM210
		ADC	#001H
		STA	object_size
		BRA	PNDM220
PNDM210		EQU	$
		LDA	rotate_angle_y
		SEC
		SBC	#00AH
		AND	#07FH
		CMP	#065H-009H
		BCC	PNDM220
;
		LDA	rotate_angle_x
		SEC
		SBC	#00BH
		CMP	#0E6H-00AH
		BCC	PNDM220
;
		STZ	rotate_angle_x
		STZ	rotate_angle_y
;
		INC	<JRSBPT
;
		INC	PGMODE		;NEXT MODE
;
		LDA	#02CH
		STA	SOUND2
;
		LDA	#0FFH
		STA	>CGWORK+1A0H+00EH
		LDA	#07FH
		STA	>CGWORK+1A0H+00EH+1
		INC	<CGVMAF		;CG SET
;
		LDA	#006H		;TIME SET
		STA	PGWORK
;
		RTS
PNDM220		EQU	$
		LDA	rotate_angle_y	;KAITEN
		CLC
		ADC	#PNDMSAY
		STA	rotate_angle_y
;
		LDA	rotate_angle_x	;KAITEN
		CLC
		ADC	#PNDMSAX
		STA	rotate_angle_x
		RTS
;
;----------------------------------------
PLNEDM3		EQU	$
		DEC	PGWORK
		LDA	PGWORK
		BNE	PNDM310
		LDA	>CLRDT00+00EH
		STA	>CGWORK+1A0H+00EH
		LDA	>CLRDT00+00EH+1
		STA	>CGWORK+1A0H+00EH+1
		INC	<CGVMAF		;CG SET
		INC	PGMODE		;NEXT MODE
PNDM310		EQU	$
;----------------------------------------
PLNEDM4		EQU	$
		RTS
;----------------------------------------		
TRYFS20		EQU	$
		PHB
		PHK
		PLB
;
		INC	TFFRT
;
		JSR	PNEDMV2
;
		JSR	TRYFSCL		;TRF MV
;
		PLB
		RTL
;----------------------------------------		
PNEDMV2		EQU	$
		LDA	#001H		;POLYGON WRITE FLG(MAIN)
		STA	POLYCFG
;
		LDA	polygon_flag
		BNE	PEMV210		;? POLIW MOVE OK
;					;Y
		JSR	PNEDMS2		;POLYGON MAIN
;
		LDA	#001H		;POLYGON WRITE ON
		STA	polygon_flag
;
PEMV210		EQU	$
;
		RTS
;----------------------------------------
PNEDMS2		EQU	$
		LDA	rotate_angle_y	;KAITEN
		CLC
		ADC	#003H
		STA	rotate_angle_y
;
		LDA	rotate_angle_x	;KAITEN
		CLC
		ADC	#001H
		STA	rotate_angle_x
;
		RTS
;----------------------------------------
;****************************************
;	TSED0 INIT			*
;	TSED1 INIT			*
;	TSED2 INIT			*
;****************************************
TE0ITPX		EQU	$
		WORD	0004EH,0005FH,00072H
TE0ITPY		EQU	$
		WORD	0009CH,0009CH,0009CH
TE0ITSX		EQU	$
		BYTE	0FEH,000H,002H
TE0ITSY		EQU	$
		BYTE	004H,0FCH,004H
;
TSED0IT		EQU	$
TSED1IT		EQU	$
TSED2IT		EQU	$
		TXA
		ASL	A
		TAY
		LDA	TE0ITPX,Y
		STA	TFXPSL,X
		LDA	TE0ITPX+1,Y
		STA	TFXPSH,X
;
		LDA	TE0ITPY,Y
		STA	TFYPSL,X
		LDA	TE0ITPY+1,Y
		STA	TFYPSH,X
;
		LDA	TE0ITSX,X	;SPEED SET
		STA	TFXSPD,X
		LDA	TE0ITSY,X
		STA	TFYSPD,X
;
		INC	TFMODE,X
;
		RTS
;****************************************
;	TRYFS MOVE			*
;****************************************
;----------------------------------------
TSED0MV		EQU	$
TSED1MV		EQU	$
TSED2MV		EQU	$
		JSR	TRYFSCS
		JSR	TFSTCK		;POLYGON MOVE WAIT
;
		JSR	TFMVCL
;
		LDA	PGMODE
		JSL	>JSRSUB
		WORD	TSED0M0		;MOVE
		WORD	TSED0M1
		WORD	TSED0M2
		WORD	TSED0M3
		WORD	TSED0M4
;----------------------------------------
TE0M0SX		EQU	$
		BYTE	-01,000,001
TE0M0SY		EQU	$
		BYTE	-01,-01,-01
;
TSED0M0		EQU	$
		LDA	TFFRT		;X SPEED
		AND	#007H
		BNE	TE0M010
		LDA	TE0M0SX,X
		CLC
		ADC	TFXSPD,X
		STA	TFXSPD,X
TE0M010		EQU	$
		LDA	TFFRT		;Y SPEED
		AND	#003H
		BNE	TE0M020
		LDA	TE0M0SY,X
		CLC
		ADC	TFYSPD,X
		STA	TFYSPD,X
TE0M020		EQU	$
		RTS
;----------------------------------------
TSED0M1		EQU	$
		STZ	TFXSPD,X
		STZ	TFYSPD,X
		RTS
;----------------------------------------
TYSM2S0		EQU	$
		BYTE	-01,-01,-01
TYSM2S1		EQU	$
		BYTE	001,001,001
TYSM2M0		EQU	$
		BYTE	0EFH
TYSM2M1		EQU	$
		BYTE	011H
;
TYS2SPX		EQU	$
		BYTE	059H,05FH,067H
TYS2SPY		EQU	$
		BYTE	074H,068H,074H
;
;
TSED0M2		EQU	$		;SEACH
		LDA	TFFRT
		AND	#003H
		BNE	TE0M250
;
		JSR	TE0M2SH
;
TE0M250		EQU	$
		LDA	TYS2SPX,X	;SEACH X
		CMP	TFXPSL,X
		BNE	TE0M210
		STZ	TFXSPD,X
TE0M210		EQU	$
		LDA	TYS2SPY,X	;SEACH Y
		CMP	TFYPSL,X
		BNE	TE0M230
		STZ	TFYSPD,X
TE0M230		EQU	$
		RTS
;----------------------------------------
TYS3SPY		EQU	$
		BYTE	072H,066H,072H
;
TSED0M3		EQU	$
TSED0M4		EQU	$
		LDA	TFCONT
		ORA	TFCONT+1
		BNE	TE0M310
		LDA	TYS3SPY,X
		STA	TFYPSL,X
		RTS
;
;
TE0M310		EQU	$
		LDA	TFCONT
		SEC
		SBC	#001H
		STA	TFCONT
		LDA	TFCONT+1
		SBC	#000H
		STA	TFCONT+1
		RTS
;----------------------------------------
TE0M2SH		EQU	$
		LDA	TYS2SPX,X	;SEACH X
		CMP	TFXPSL,X
		BCC	TE0M218
		LDA	TYSM2S1,X
		BRA	TE0M214
TE0M218		EQU	$
		LDA	TYSM2S0,X
TE0M214		EQU	$
		CLC
		ADC	TFXSPD,X
		STA	TFXSPD,X
		CMP	TYSM2M0
		BNE	TE0M212
		LDA	TYSM2M0
		INC	A
		BRA	TE0M213
TE0M212		EQU	$
		CMP	TYSM2M1
		BNE	TE0M220
		LDA	TYSM2M1
		DEC	A
TE0M213		EQU	$
		STA	TFXSPD,X
;
TE0M220		EQU	$
		LDA	TYS2SPY,X	;SEACH Y
		CMP	TFYPSL,X
		BCC	TE0M238
		LDA	TYSM2S1,X
		BRA	TE0M234
TE0M238		EQU	$
		LDA	TYSM2S0,X
TE0M234		EQU	$
		CLC
		ADC	TFYSPD,X
		STA	TFYSPD,X
		CMP	TYSM2M0
		BNE	TE0M232
		LDA	TYSM2M0
		INC	A
		BRA	TE0M233
TE0M232		EQU	$
		CMP	TYSM2M1
		BNE	TE0M240
		LDA	TYSM2M1
		DEC	A
TE0M233		EQU	$
		STA	TFYSPD,X
;
TE0M240		EQU	$
		RTS
;----------------------------------------
;****************************************
;	TSED3 INIT			*
;****************************************
TE3ITPX		EQU	$
		WORD	00029H,0005FH,00097H
TE3ITPY		EQU	$
		WORD	00070H,00020H,00070H
;
TSED3IT		EQU	$
		TXA
		ASL	A
		TAY
		LDA	TE3ITPX,Y
		STA	TFXPSL,X
		LDA	TE3ITPX+1,Y
		STA	TFXPSH,X
;
		LDA	TE3ITPY,Y
		STA	TFYPSL,X
		LDA	TE3ITPY+1,Y
		STA	TFYPSH,X
;
		INC	TFMODE,X
;
		RTS
;****************************************
;	TRYFS MOVE			*
;****************************************
TE3MVSX		EQU	$
		BYTE	-01,000,001
TE3MVSY		EQU	$
		BYTE	001,-01,001
;----------------------------------------
TSED3MV		EQU	$
		JSR	POLICG		;CG SET
		JSR	TRYFSCS
		JSR	TFMVCL
;
		LDA	<GAMEMD
		CMP	#TRYD
		BNE	TE3MV10
		LDA	TFSTAT,X
		CMP	#050H
		BEQ	TE3MV20
		INC	TFSTAT,X
		LDA	TE3MVSX,X
		CLC
		ADC	TFXSPD,X
		STA	TFXSPD,X
		LDA	TE3MVSY,X
		CLC
		ADC	TFYSPD,X
		STA	TFYSPD,X
TE3MV20		EQU	$
		RTS
TE3MV10		EQU	$
		STZ	TFSTAT,X
		RTS
;----------------------------------------
;+++++++++++++++++++++++++++  SELECT  +++++++++++++++++++++++++++++++++++
;************************************************************************
;*		Player select				(PLSELCT)	*
;************************************************************************
PLCRPD		EQU	$
		WORD	TLPL1-TLPL1
		WORD	TLPL2-TLPL1
		WORD	TLPL3-TLPL1
		WORD	TLPL4-TLPL1
;
PLSLCYDT	EQU	$
		BYTE	04AH,06AH,08AH,0A7H,0C7H
;
;
PLSELCT		EQU	$
		STZ	<SCCH3
		STZ	<SCCH3+1
		STZ	<SCCV3
		STZ	<SCCV3+1
;
		LDA	<GAMEMD
		JSL	>JSRSUBL
		LWORD	PSLCINT		; gamen init. clear
		LWORD	PSLC000		; gamen clear
		LWORD	PSLC100		; title BG 1
		LWORD	PSLC200		; title BG 2
		LWORD	PSLC300		; play
;
;
PSLCINT		EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		STZ	!POLYCFG	; poly-gon off
		STZ	!transfer_flag
;
		LDA	#00BH
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
		INC	<GAMEMD
;
		LDA	#002H
		STA	!CGSTPT+1
		STZ	!DANJC
		JSL	>DANCORST
		JSL	>KOUKAST	; CG. reset
		LDA	#001H
		STA	!BG3BGC
		JSL	>B3CGSET
;
		STZ	!GETITM0
		LDA	#001H
		STA	!OJBSPT
		LDA	#023H
		STA	!CHIKNO
		JSL	>CHSCHN0
		JSL	>CHSCHNG
		JSL	>MSGVRMS
;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<WORK0
PSLCI100	EQU	$
		LDX	<WORK0
		LDA	>DTSVPD+2,X
		TAX
		PHX			; (X) push
;
		LDY	#00000H
		TYA
PSLCI120	EQU	$
		CLC
		ADC	>BKUP_RAM0,X
		INX
		INX
		INY
		CPY	#00500H/2
		BNE	PSLCI120	;
;					;
		PLX			; (X) pull
		CMP	#05A5AH
		BEQ	PSLCI200	; check-sum ok ?
;					; no
		PHX			; (X) push
;
		LDY	#00000H
		TYA
PSLCI140	EQU	$
		CLC
		ADC	>BKUP_RAM3,X
		INX
		INX
		INY
		CPY	#00500H/2
		BNE	PSLCI140	;
;					;
		PLX			; (X) pull
		CMP	#05A5AH
		BNE	PSLCI300	; check-sum ok ?
;					; yes
		LDY	#00000H
PSLCI160	EQU	$
		LDA	>BKUP_RAM3+000H,X
		STA	>BKUP_RAM0+000H,X
		LDA	>BKUP_RAM3+100H,X
		STA	>BKUP_RAM0+100H,X
		LDA	>BKUP_RAM3+200H,X
		STA	>BKUP_RAM0+200H,X
		LDA	>BKUP_RAM3+300H,X
		STA	>BKUP_RAM0+300H,X
		LDA	>BKUP_RAM3+400H,X
		STA	>BKUP_RAM0+400H,X
		INX
		INX
		INY
		CPY	#00080H
		BNE	PSLCI160	; change end ok ?
;					; yes
PSLCI200	EQU	$
		INC	<WORK0
		INC	<WORK0
		LDX	<WORK0
		CPX	#00006H
		BNE	PSLCI100	; check end ?
;					; yes
		LDX	#000FEH
PSLCI240	EQU	$
		STZ	!0D00H,X
		STZ	!0E00H,X
		STZ	!0F00H,X
		DEX
		DEX
		BPL	PSLCI240	;
;					;
		SEP	#00110000B	; memory,index 8bit mode
;
		JMP	>END3DST	; "end3" data set
;
;
;
;
PSLCI300	EQU	$
		LDY	#00000H
		TYA
PSLCI320	EQU	$
		STA	>BKUP_RAM3+000H,X
		STA	>BKUP_RAM0+000H,X
		STA	>BKUP_RAM3+100H,X
		STA	>BKUP_RAM0+100H,X
		STA	>BKUP_RAM3+200H,X
		STA	>BKUP_RAM0+200H,X
		STA	>BKUP_RAM3+300H,X
		STA	>BKUP_RAM0+300H,X
		STA	>BKUP_RAM3+400H,X
		STA	>BKUP_RAM0+400H,X
		INX
		INX
		INY
		CPY	#00080H
		BNE	PSLCI320	; claer end ?
;					; yes
		BRA	PSLCI200
;
;
;
;
		MEM8
		IDX8
PSLC000		EQU	$
		LDX	#005H
PSLC005		EQU	$
		STZ	<BFP000,X
		DEX
		BPL	PSLC005
BLANK		EQU	$
		LDA	#10000000B
		STA	!GMAPDF
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		STA	<BLKFLG
;// 03.09.17 //		STA	2100H		; blanking on
;// 03.09.17 //		STZ	420CH		; H-DMA disable
;// 03.09.17 //		STZ	<WD420C
;
		JSL	>VRAMCL2	; VCL
;
		JSL	>TPLCGST	; obj. CG
		INC	<CGVMAF
		INC	<GAMEMD
		RTL
;
;
;
PSLC100		EQU	$
;.'91/.7/.5.[fri]::		PHB
;.'91/.7/.5.[fri]::		PHK
;.'91/.7/.5.[fri]::		PLB		; PBR=>DBR
;
		LDA	!TLRAM
		STA	<CWORK0
;
PSLC150		EQU	$
		INC	<GAMEMD
;
PSLC160		EQU	$
;
		LDA	#VT06
		STA	<VRFLG
;
;.'91/.7/.5.[fri]::		PLB
		RTL
;
;
;
;
PSLC200		EQU	$
;.'91/.7/.5.[fri]::		PHB
;.'91/.7/.5.[fri]::		PHK
;.'91/.7/.5.[fri]::		PLB		; PBR=>DBR
;.'91/.7/.5.[fri]::;
		JSR	PLSLSB2
;
		LDA	#00001111B
		STA	<BLKFLG
		STZ	!GMAPDF
;
		BRA	PSLC150
;
;
PSLC300		EQU	$
		PHB
		PHK
		PLB		; PBR=>DBR
;
		JSL	>PLSLSB
;
		JMP	PCP110
;
;
;
;===================================================
;
;
;
;
PLSLSB2		EQU	$
		PHB
		PHK
		PLB		; PBR=>DBR
;
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#TILBGE11-TLPL1
PLSL010		EQU	$
		LDA	TLPL1-1,X
		STA	!VRAMD2-1,X
		DEX
		BNE	PLSL010		; vramd set end ?
;					; yes
		IDX8
		SEP	#00010000B	; index 8bit mode
;
		PLB
		RTS
;
;
;
PLSLSB		EQU	$
		LDA	<CWORK0
		CMP	#003H
		BCS	PLSL105
;
		STA	TLRAM
PLSL105		EQU	$
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
PLSL011		EQU	$
		STX	<WORK0
		LDA	>DTSVPD+2,X
		TAX
		LDA	>BUCKSUM,X
		CMP	#055AAH
		BNE	PLSL018		; touroku on ?
;					; yes
		PHX			; (X) push
		LDX	<WORK0
		LDA	#00001H
		STA	<BFP000,X
;
		PLX			; (X) pull
		JSR	PLSEL
PLSL018		EQU	$
		LDX	<WORK0
		INX
		INX
		CPX	#00006H
		BCC	PLSL011
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	<CWORK0
		LDA	#014H
		STA	<WORK0
		LDA	PLSLCYDT,X
		STA	<WORK1
		JSR	CSLOAMSET	; oamset
;
		LDY	#002H
	LDA	<KEYA2L
	AND	#0C0H
	ORA	<KEYA2
;;;		LDA	<KEYA2
		AND	#11111100B	; a(x),b(y),select,start,up,down key on ?
		BEQ	PLSL200
;
		AND	#00101100B
		BEQ	PLSL070		; select,up,down key on ?
;					; yes
		AND	#00001000B
		BEQ	PLSL020		; up ?
;					; yes
		LDA	#020H
		STA	!SOUND3		; sound set !!
;
		DEC	<CWORK0
		BPL	PLSL060
;
		LDA	#004H
		STA	<CWORK0
		BRA	PLSL060
;
PLSL020		EQU	$
		LDA	#020H
		STA	!SOUND3		; sound set !!
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#005H
		BNE	PLSL060
;
		STZ	<CWORK0
PLSL060		EQU	$
		BRA	PLSL200
;
PLSL070		EQU	$
PLSL072		EQU	$
		LDA	#02CH
		STA	!SOUND2		; sound set !!
;
		LDA	<CWORK0
		CMP	#003H
		BEQ	PLSL073		; copy ?
;					; no
		BCS	PLSL074		; kill ?	
;					; no
		LDA	<CWORK0
		ASL	A
		TAX
		LDA	<BFP000,X
		BEQ	PLSL075		; touroku ?
;					; no
		LDA	#0F1H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
;
		STZ	<CWORK1
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	>DTSVPD+2,X
		STA	<WORK0
;
		LDA	<CWORK0
		ASL	A
		INC	A
		INC	A
		STA	>DTSVPT		; data save pointer set
;
		MEM8
		SEP	#00100000B	; memory bit mode
;
		BRL	PLSL410
;
PLSL075		EQU	$
		STZ	<CWORK1
		LDY	#MD_ptork
		BRA	PLSL079
;
PLSL073		EQU	$		; copy
		LDY	#MD_pcopy
		BRA	PLSL076
;
PLSL074		EQU	$		; kill
		LDY	#MD_pkill
PLSL076		EQU	$
		LDA	<BFP000
		ORA	<BFP000+2
		ORA	<BFP000+4
;;;		BEQ	PLSL200
	BNE	PLSL078
;
	LDA	#3CH
	STA	!SOUND2
	BRA	PLSL200
;
PLSL078		EQU	$
		STZ	<CWORK0
PLSL079		EQU	$
		STY	<SLMODE
		STZ	<GAMEMD
		STZ	<JRSBPT
PLSL200		EQU	$
		RTL
;
;
;
;
;
;
SVDTREAD	EQU	$
PLSL410		EQU	$
;--------- MAP ENMY INIT
		LDX	#00FH
		LDA	#000H
		STA	>MEMXPSH,X
		STA	>MEMYPSH,X
		LDA	#000H
		STA	>MEMXPSL,X
		STA	>MEMYPSL,X
		STA	>MEMSTT,X
;
;--------- MAP ENMY INIT END
;
		PHB
		LDA	#BANK ZEL_DATA
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDY	#00000H
		LDX	<WORK0
PLSL440		EQU	$
		LDA	>BKUP_RAM0+000H,X
		STA	ZEL_DATA+000H,Y
		LDA	>BKUP_RAM0+100H,X
		STA	ZEL_DATA+100H,Y
		LDA	>BKUP_RAM0+200H,X
		STA	ZEL_DATA+200H,Y
		LDA	>BKUP_RAM0+300H,X
		STA	ZEL_DATA+300H,Y
		LDA	>BKUP_RAM0+400H,X
		STA	ZEL_DATA+400H,Y
		INX
		INX
		INY
		INY
		CPY	#00100H
		BNE	PLSL440		; start data set end ?
;					; yes
		PLB			; (DBR) reset
;
		LDA	#00007H
		STA	>WTCHCT		; water char. change counter
		STA	>EICHCT		; enemy out item char. change counter
		LDA	#00000H
		STA	>WTCHPT		; water char. point
		STA	>EICHPT		; enemy out item char. point
;
		LDA	#06040H
		STA	!MTRADR		; mater address set
		LDA	#04841H
		STA	!MTRCBF+2
		LDA	#0007FH
		STA	!MTRCBF+4
		LDA	#0FFFFH
		STA	!MTRCBF+6	; mater clear buffer init. set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;
;
		LDA	#080H
		STA	!GETITM0+2
;		LDA	#001H
;		STA	!GETITM1+1
;
;
		LDA	#MD_djit0
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	!GOPOSF		; INIT. START ROOM
		STZ	!GMAPDF
		STZ	!BG3BGC
		RTL
;
;
;
;
;+++++++++++++++++++++++++++  COPY  +++++++++++++++++++++++++++++++++++++
;************************************************************************
;*		Player copy				(PLCOPY)	*
;************************************************************************
;
PLCOPY		EQU	$
		STZ	TLRAM
		LDA	<GAMEMD
		JSL	>JSRSUBL
;.'91/.7/.5.[fri]::			LWORD	PCOPC000		; gamen clear
		LWORD	BLANK			; gamen clear
		LWORD	PCOPC100		; gamen init.
		LWORD	PCOPC200		; copy 1
		LWORD	PCOPC300		; copy 2
		LWORD	PCOPC400		; copy 3
;
;
;.'91/.7/.5.[fri]::	PCOPC000	EQU	$
;.'91/.7/.5.[fri]::			LDA	#10000000B
;.'91/.7/.5.[fri]::			STA	!GMAPDF
;.'91/.7/.5.[fri]::			STA	<BLKFLG
;.'91/.7/.5.[fri]::			STA	2100H		; blanking on
;.'91/.7/.5.[fri]::			STZ	420CH		; H-DMA disable
;.'91/.7/.5.[fri]::			STZ	<WD420C
;.'91/.7/.5.[fri]::	;
;.'91/.7/.5.[fri]::			JSL	>VRAMCL2	; VCL
;.'91/.7/.5.[fri]::	;
;.'91/.7/.5.[fri]::	;
;.'91/.7/.5.[fri]::			INC	<GAMEMD
;.'91/.7/.5.[fri]::			RTL
;
PCOPC100	EQU	$
		LDA	#VT07
SCRCHG		EQU	$
		STA	<VRFLG
;.'91/.7/.5.[fri]::		PHB
;.'91/.7/.5.[fri]::		PHK
;.'91/.7/.5.[fri]::		PLB		; PBR=>DBR
;
;.'91/.7/.5.[fri]::		STZ	<CWORK0
		INC	<GAMEMD
		LDA	#00001111B
		STA	<BLKFLG
		STZ	!GMAPDF
;
;
;.'91/.7/.5.[fri]::		LDX	#000H
;.'91/.7/.5.[fri]::PCOPKO000	EQU	$
;.'91/.7/.5.[fri]::		LDA	<BFP000,X
;.'91/.7/.5.[fri]::		BNE	PCOPKO010
;.'91/.7/.5.[fri]::;
;.'91/.7/.5.[fri]::		INX
;.'91/.7/.5.[fri]::		INX
;.'91/.7/.5.[fri]::		BRA	PCOPKO000
;
		LDX	#0FEH
PCOPKO000	EQU	$
		INX
		INX
		LDA	<BFP000,X
		BEQ	PCOPKO000
;
PCOPKO010	EQU	$
		TXA
		LSR	A
		STA	<CWORK0
;
;.'91/.7/.5.[fri]::		PLB
		RTL
;
;
PCOPC200	EQU	$
		PHB
		PHK
		PLB		; PBR=>DBR
;
		JSR	PLCPMD
;
;
		LDA	<GAMEMD
		CMP	#002H
		BNE	PCP210
;
		LDA	<FCNT
		AND	#00110000B
		BNE	PCP210
;
		JSR	PCPCL
;		
PCP210		EQU	$
PCP110		EQU	$
		LDA	#VT01
		STA	<VRFLG
;
		PLB
		RTL
;
;
;
;
;
PCOPC300	EQU	$
		PHB
		PHK
		PLB		; PBR=>DBR
;
		JSR	PLCPMD2
;
;
		LDA	<GAMEMD
		CMP	#003H
		BNE	PCP310
;
		LDA	<FCNT
		AND	#00110000B
		BNE	PCP210
;
		JSR	PCPCL
;		
PCP310		EQU	$
		BRA	PCP110
;
;
PCOPC400	EQU	$
		PHB
		PHK
		PLB		; PBR=>DBR
;
		JSR	PLCPMD3
;
		JMP	PCP110
;
;
;
;
;************* tenmetu ********************
;
PLCPSPDT1	EQU	$
		WORD	00004H,00016H
;
PCPCL		EQU	$
;
		IDX16
		MEM16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00002H
		LDA	#00188H
PCPCL000	EQU	$
		LDY	#00007H
		STY	<WORK0
		LDY	PLCPSPDT1,X
PCPCL010	EQU	$
		STA	!VRAMD2,Y
		INY
		INY
		DEC	<WORK0
		BNE	PCPCL010	; vramd set end ?
;					; yes
		DEX
		DEX
		BPL	PCPCL000	; vramd set end ?
;					; yes
		IDX8
		MEM8
		SEP	#00110000B	; memory,index 8bit mode
;
		RTS
;
;******************************************
;
;
PLCPYDT1	EQU	$
		BYTE	047H,067H,087H,0C7H
;
;
CPSELCL1	EQU	$
		BYTE	061H,025H,040H,010H
		WORD	     00188H
		BYTE	061H,045H,040H,010H
		WORD	     00188H
;
CPSELCL2	EQU	$
		BYTE	061H,0A5H,040H,010H
		WORD	     00188H
		BYTE	061H,0C5H,040H,010H
		WORD	     00188H
;
;++++++++++ waku 3 +++++++++++++++++++++++++++++++++++++++++
;
		BYTE	010H,0F1H,000H,003H
		WORD	     04882H,00881H
;
		BYTE	010H,0FCH,000H,003H
		WORD	     00881H,00882H
;
		BYTE	011H,011H,0C0H,00CH
		WORD	     04883H
;
		BYTE	011H,01DH,0C0H,00CH
		WORD	     00883H
;
		BYTE	011H,0F1H,000H,001H
		WORD	     0C882H
;
		BYTE	011H,0F2H,040H,014H
		WORD	     08881H
;
		BYTE	011H,0FDH,000H,001H
		WORD	     08882H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
		BYTE	0FFH
;
CPSELADD1	EQU	$
		BYTE	CPSELCL1-CPSELCL1,CPSELCL2-CPSELCL1
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
CPNAMAD		EQU	$
		WORD	CPNAM11-TICPBGE1
		WORD	CPNAM21-TICPBGE1
		WORD	CPNAM31-TICPBGE1
;
;
PLCPMD		EQU	$
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#TICPBGE2-TICPBGE1-1
		STX	!VRAMD
PCOPKA		EQU	$
		LDA	TICPBGE1,X
		STA	!VRAMD2,X
		DEX
		BPL	PCOPKA		; vramd set end ?
;					; yes
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#00000H
PLCP000		EQU	$
		STX	<WORK0
		LDA	<BFP000,X
		AND	#00001H
		BEQ	PLCP010
;
		LDA	>DTSVPD+2,X
		TXY
		TAX
		LDA	CPNAMAD,Y
		TAY
		LDA	#00004H
		STA	<WORK2
PLCP005		EQU	$
		LDA	>BUNAME,X
		CLC
		ADC	#01C00H
		STA	!VRAMD2,Y	; save name input !!
		CLC
		ADC	#010H
		STA	!VRAMD2+016H,Y
		INX
		INX
		INY
		INY
		INY
		INY
		DEC	<WORK2
		BNE	PLCP005
;
PLCP010		EQU	$
		LDX	<WORK0
		INX
		INX
		CPX	#00006H
		BCC	PLCP000
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	<CWORK0
		LDA	#014H
		STA	<WORK0
		LDA	PLCPYDT1,X
		STA	<WORK1
		JSR     CSLOAMSET	; cursole set
;
	LDA	<KEYA2L
	AND	#0C0H
	ORA	<KEYA2
	AND	#11111100B
;;;		LDA	<KEYA2
;;;		AND	#10111100B
		BNE	PLCP013		; b(a),y(x),select,start,up,down key on ?
;					; no
		BRL     PLCP200
;
PLCP013		EQU	$
		AND	#00101100B
		BEQ	PLCP050		; select,up,down key on ?
;					; yes
		AND	#00001000B
		BEQ	PLCP020		; up key on ?
;					; yes
		LDX	<CWORK0
		DEX
		BMI	PLCP018
;
PLCP015         EQU     $
		TXA
		ASL	A
		TAY
		LDA	!BFP000,Y
		BNE	PLCP060
;
		DEX
		BPL	PLCP015
;
PLCP018         EQU     $
		LDX	#003H
		BRA     PLCP060
;
PLCP020         EQU     $
		LDX	<CWORK0
		INX
		CPX	#003H
		BCS	PLCP030
;
PLCP025         EQU     $
		TXA
		ASL	A
		TAY
		LDA     !BFP000,Y
                BNE     PLCP060
;
		INX
		CPX	#003H
		BNE	PLCP025
;
		BRA	PLCP060
;
PLCP030         EQU     $
		CPX	#004H
		BNE	PLCP060
;
		LDX	#000H
		BRA	PLCP025
;
PLCP060         EQU     $
		LDA	#020H
		STA	!SOUND3		; sound set !!
		STX	<CWORK0
		BRA	PLCP200
;
PLCP050         EQU     $		; a,b,x,y,start on !!
		LDA	#02CH
		STA	!SOUND2		; sound set !!
;
		LDA	<CWORK0
		CMP	#003H
		BEQ	PLCP100
;
		ASL	A
		STA	<CWORK4
		STZ	<CWORK5
		LDX	#CPSELADD1-CPSELCL1
PLCP080		EQU	$
		LDA	CPSELCL1-1,X
		STA	!VRAMD2-1+024H,X
		DEX
		BNE	PLCP080		; vramd set end ?
;					; yes
		LDX	<CWORK0
		CPX	#002H
		BEQ	PLCP085
;
		LDA	CPSELADD1,X
		TAX
		LDA	#062H
		STA	!VRAMD2+024H,X
		STA	!VRAMD2+6+024H,X
		LDA	#025H
		STA	!VRAMD2+1+024H,X
		CLC
		ADC	#020H
		STA	!VRAMD2+7+024H,X
PLCP085         EQU     $
		INC	<GAMEMD
		BRA     PLCP150
;	
PLCP100		EQU	$
		LDA	#MD_selct
		STA	<SLMODE
		LDA	#001H
		STA	<GAMEMD
		STZ	<JRSBPT
PLCP150		EQU	$
		STZ	<CWORK0
PLCP200		EQU	$
		RTS
;
;
;
;++++++++++ copy ok ++++++++++++++++++++++++++++++++++++++++
;
DSPCPMES	EQU	$
		BYTE	061H,034H,040H,010H
		WORD	     00188H
		BYTE	061H,054H,040H,010H
		WORD	     00188H
;
		BYTE	062H,0C5H,000H,011H
		WORD	     01CACH,00188H,01D23H,00188H,01D89H,00188H,01D68H,00188H
		WORD	     01D64H
;
		BYTE	062H,0E5H,000H,011H
		WORD	     01CBCH,00188H,01D33H,00188H,01D99H,00188H,01D78H,00188H
		WORD	     01D74H
;
		BYTE	0FFH
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
PLCPXDT2	EQU	$
		BYTE	08CH,08CH,014H
;
PLCPYDT2	EQU	$
		BYTE	047H,067H,0C7H
;
CPNAMAD2	EQU	$
		WORD	CPNAME01-TICPBGE2
		WORD	CPNAME03-TICPBGE2
;
CPNAMNO		EQU	$
		WORD	01D41H,01D42H,01D43H
;
PLCPMD2		EQU	$
		LDA	#004H
		LDX	#001H
CPSET000	EQU	$
		CMP	<CWORK4
		BEQ	CPSET010
;
		STA	<CWORK2,X
		DEX
CPSET010	EQU	$
		DEC	A
		DEC	A
		BPL	CPSET000
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#TICPBGE3-TICPBGE2-1
		STX	<WORKE
PCOPKA2		EQU	$
		LDA	TICPBGE2,X
		STA	!VRAMD2,X
		DEX
		BPL	PCOPKA2		; vramd set end ?
;					; yes
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#00000H
		STX	<WORK4
PLCP300		EQU	$
		STX	<WORK0
		CPX	<CWORK4
		BEQ	PLCP310
;
		LDY	<WORK4
		LDA	CPNAMAD2,Y
		TAY
		INC	<WORK4
		INC	<WORK4
		LDA	CPNAMNO,X
		STA	!VRAMD2,Y
		CLC
		ADC	#00010H
		STA	!VRAMD2+016H,Y
		LDA	<BFP000,X
		BEQ	PLCP310
;
		LDA	#00004H
		STA	<WORK2
		LDA	>DTSVPD+2,X
		TAX
PLCP305		EQU	$
		LDA	>BUNAME,X
		CLC
		ADC	#01C00H
		STA	!VRAMD2+004H,Y	; save name input !!
		CLC
		ADC	#010H
		STA	!VRAMD2+01AH,Y
		INX
		INX
		INY
		INY
		INY
		INY
		DEC	<WORK2
		BNE	PLCP305
;
PLCP310		EQU	$
		LDX	<WORK0
		INX
		INX
		CPX	#00006H
		BCC	PLCP300
;
		LDX	<WORKE
		STX	!VRAMD
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	<CWORK0
		LDA	PLCPXDT2,X
		STA	<WORK0
		LDA	PLCPYDT2,X
		STA	<WORK1
		JSR     CSLOAMSET	; cursole set
;
	LDA	<KEYA2L
	AND	#0C0H
	ORA	<KEYA2
;;;		LDA	<KEYA2
		AND	#11111100B
		BEQ	PLCP600		; a,b,x,y,select,start,up,down key on ?
;					; yes
		AND	#00101100B
		BEQ	PLCP350		; select,up,down key on ?
;					; yes
		AND	#00001000B
		BEQ	PLCP320		; up key on ?
;					; yes
		LDX	<CWORK0
		DEX
		BPL	PLCP330
;
		LDX	#002H
		BRA	PLCP330
;
PLCP320         EQU     $
		LDX	<CWORK0
		INX
		CPX	#003H
		BCC	PLCP330
;
		LDX	#000H
PLCP330         EQU     $
;
		LDA	#020H
		STA	!SOUND3		; sound set !!
;
		STX	<CWORK0
		BRA	PLCP600
;
PLCP350         EQU     $
;;;		LDA	<KEYA2
;;;		AND	#10010000B
;;;		BEQ	PLCP400		; b,start on ?
;					; yes
		LDA	#02CH
		STA	!SOUND2		; sound set !!
;
		LDX	<CWORK0
		CPX	#002H
		BEQ	PLCP500
;
		LDA	<CWORK2,X
		STA	<CWORK2
		STZ	<CWORK3
		LDX	#PLCPXDT2-DSPCPMES-1
PLCP370		EQU	$
		LDA	DSPCPMES,X
		STA	!VRAMD2+024H,X
		DEX
		BPL	PLCP370		; vramd set end ?
;					; yes
		LDA	<CWORK0
		BNE	PLCP380
;
		LDA	#0B4H
		STA	!VRAMD2+1+024H
		CLC
		ADC	#020H
		STA	!VRAMD2+7+024H
PLCP380		EQU	$
		INC	<GAMEMD
		BRA	PLCP590
;
;;;PLCP400         EQU     $		; y on !!
;;;		LDA	#020H
;;;		STA	!SOUND3		; sound set !!
;;;;
;;;		STZ	!VRAMD
;;;		STZ	!VRAMD+1
;;;;
;;;		IDX16
;;;		REP	#00010000B	; index 16bit mode
;;;;
;;;		LDX	#PLCPYDT3-CPNAMCL
;;;PLCP450		EQU	$
;;;		LDA	CPNAMCL-1,X
;;;		STA	!VRAMD2-1,X
;;;		DEX
;;;		BNE	PLCP450		; vramd set end ?
;;;;					; yes
;;;		IDX8
;;;		SEP	#00010000B	; index 8bit mode
;;;;
;;;		DEC	<GAMEMD
;;;		BRA	PLCP590
;;;;
PLCP500         EQU     $
		JSR	PLCP100
PLCP590		EQU	$
		STZ	<CWORK0
PLCP600		EQU	$
		RTS
;
;
;
;
;;;CPNAMCL		EQU	$
;;;		BYTE	060H,0D4H,040H,00CH
;;;		WORD	     00188H
;;;		BYTE	060H,0F4H,040H,00CH
;;;		WORD	     00188H
;;;;
;;;		BYTE	061H,034H,040H,010H
;;;		WORD	     00188H
;;;		BYTE	061H,054H,040H,010H
;;;		WORD	     00188H
;;;		BYTE	061H,0B4H,040H,010H
;;;		WORD	     00188H
;;;		BYTE	061H,0D4H,040H,010H
;;;		WORD	     00188H
;;;		BYTE	0FFH
;
;
;
;
PLCPYDT3	EQU	$
		BYTE	0AEH,0C7H
;
PLCPMD3		EQU	$
;
		LDX	<CWORK0
		LDA	#014H
		STA	<WORK0
		LDA	PLCPYDT3,X
		STA	<WORK1
		JSR     CSLOAMSET	; cursole set
;
	LDA	<KEYA2L
	AND	#0C0H
	ORA	<KEYA2
;;;		LDA	<KEYA2
		AND	#11111100B
		BEQ	PLCP900		; a,b,x,y,select,start,up,down key on ?
;					; yes
		AND	#00101100B
		BEQ	PLCP750		; select,up,down key on ?
;					; yes
		AND	#00100100B
		BEQ	PLCP700		; select,down on ?
;					; yes
		LDA	#020H
		STA	!SOUND3		; sound set !!
;
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#002H
		BCC	PLCP900
;
		STZ	<CWORK0
		BRA	PLCP900
;
PLCP700		EQU	$
;
		LDA	#020H
		STA	!SOUND3		; sound set !!
;
		DEC	<CWORK0
		BPL	PLCP900
;
		LDA	#001H
		STA	<CWORK0
		BRA	PLCP900
;
PLCP750		EQU	$
;;;		LDA	<KEYA2
;;;		AND     #10010000B
;;;                BEQ     PLCP800         ; b,start on ?
;;;;                                       ; yes
		LDA	#02CH
		STA	!SOUND2		; sound set !!
;
		LDA	<CWORK0
		BNE	PLCP880
;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	<CWORK2
		LDA	>DTSVPD+2,X
		TAY
		LDX	<CWORK4
		LDA	>DTSVPD+2,X
		TAX
;
		JSR	CPSTORE	
;
		LDX	<CWORK2
		LDA	#00001H
		STA	<BFP000,X
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;;;		BRA	PLCP880
;;;;
;;;PLCP800		EQU	$			; y on !!
;;;		LDA	#020H
;;;		STA	!SOUND3		; sound set !!
;;;;
;;;		LDX	#PLKLKABG2-PLCLEAR3-1
;;;PLCP850		EQU	$
;;;		LDA	PLCLEAR3,X
;;;		STA	!VRAMD2,X
;;;		DEX
;;;		BPL	PLCP850
;;;;
;;;		LDA	#0E5H
;;;		STA	!VRAMD2+1
;;;		DEC	<GAMEMD
;;;		BRA	PLCP890
;;;;
PLCP880		EQU	$
		JSR	PLCP100
PLCP890		EQU	$
		STZ	<CWORK0
PLCP900		EQU	$
		RTS
;
;
		IDX16
;
CPSTORE		EQU	$
;
		SEP	#00100000B		; memory 16bit mode
;
		PHB
		LDA	#BANK BKUP_RAM
		PHA
		PLB				; (DBR) set
;
;
		MEM16
		REP	#00100000B		; memory 16bit mode
;
		LDA	#00080H
		STA	<WORK0
CPST000		EQU	$
		LDA	BKUP_RAM+000H,X
		STA	BKUP_RAM+000H,Y
		LDA	BKUP_RAM+100H,X
		STA	BKUP_RAM+100H,Y
		LDA	BKUP_RAM+200H,X
		STA	BKUP_RAM+200H,Y
		LDA	BKUP_RAM+300H,X
		STA	BKUP_RAM+300H,Y
		LDA	BKUP_RAM+400H,X
		STA	BKUP_RAM+400H,Y
		INY
		INY
		INX
		INX
		DEC	<WORK0 
		BNE	CPST000
;
		MEM8
		SEP	#00100000B		; memory 16bit mode
;
		PLB
;
		MEM16
		REP	#00100000B		; memory 16bit mode
;
		RTS
;
;
		MEM8
		IDX8
;
;
;
;
;+++++++++++++++++++++++++++  KILL  +++++++++++++++++++++++++++++++++++++
;************************************************************************
;*		Player kill				(PLKILL)	*
;************************************************************************
PLKLCYDT1	EQU	$
		BYTE	04AH,06AH,08AH,0C7H
;
PLCLEAR		EQU	$
		BYTE	061H,028H,040H,02CH
		WORD	00188H
		BYTE	061H,048H,040H,02CH
		WORD	00188H
;
PLCLEAR2	EQU	$
		BYTE	061H,0A8H,040H,02CH
		WORD	00188H
		BYTE	061H,0C8H,040H,02CH
		WORD	00188H
;
;++++++++++ kill ok ++++++++++++++++++++++++++++++++++++++++
KILLOK		EQU	$	
;
		BYTE	062H,0A5H,000H,017H
		WORD	     01D64H,00188H,01D62H,00188H,01D65H,00188H,01D65H,00188H
		WORD	     00188H,01D68H,00188H,01D64H
;
		BYTE	062H,0C5H,000H,017H
		WORD	     01D74H,00188H,01D72H,00188H,01D75H,00188H,01D75H,00188H
		WORD	     00188H,01D78H,00188H,01D74H
;
		BYTE	0FFH
;
PLCLADD		EQU	$
		BYTE	PLCLEAR-PLCLEAR,PLCLEAR2-PLCLEAR
;
PLKILL		EQU	$
		LDA	<GAMEMD
		JSL	>JSRSUBL
;.'91/.7/.5.[fri]::			LWORD	PKILC000		; gamen clear
		LWORD	BLANK			; gamen clear
		LWORD	PKILC100		; gamen init.
		LWORD	PKILC200		; kill 1
		LWORD	PKILC300		; kill 2
;
;
;.'91/.7/.5.[fri]::	PKILC000	EQU	$
;.'91/.7/.5.[fri]::			LDA	#10000000B
;.'91/.7/.5.[fri]::			STA	<BLKFLG
;.'91/.7/.5.[fri]::			STA	2100H		; blanking on
;.'91/.7/.5.[fri]::			STZ	420CH		; H-DMA disable
;.'91/.7/.5.[fri]::			STZ	<WD420C
;.'91/.7/.5.[fri]::	;
;.'91/.7/.5.[fri]::			JSL	>VRAMCL2	; VCL
;.'91/.7/.5.[fri]::	;
;.'91/.7/.5.[fri]::	;
;.'91/.7/.5.[fri]::			INC	<GAMEMD
;.'91/.7/.5.[fri]::			RTL
;
PKILC100	EQU	$
;.'91/.7/.5.[fri]::		PHB
;.'91/.7/.5.[fri]::		PHK
;.'91/.7/.5.[fri]::		PLB		; PBR=>DBR
;.'91/.7/.5.[fri]::;
;.'91/.7/.5.[fri]::		STZ	<CWORK0
;.'91/.7/.5.[fri]::		INC	<GAMEMD
;.'91/.7/.5.[fri]::		LDA	#00001111B
;.'91/.7/.5.[fri]::		STA	<BLKFLG
;.'91/.7/.5.[fri]::;
		LDA	#VT08
		JMP	SCRCHG
;.'91/.7/.5.[fri]::		STA	<VRFLG
;.'91/.7/.5.[fri]::;
;.'91/.7/.5.[fri]::		LDX	#000H
;.'91/.7/.5.[fri]::PKILKO000	EQU	$
;.'91/.7/.5.[fri]::		LDA	<BFP000,X
;.'91/.7/.5.[fri]::		BNE	PKILKO010
;.'91/.7/.5.[fri]::;
;.'91/.7/.5.[fri]::		INX
;.'91/.7/.5.[fri]::		INX
;.'91/.7/.5.[fri]::		BRA	PKILKO000
;.'91/.7/.5.[fri]::;
;.'91/.7/.5.[fri]::PKILKO010	EQU	$
;.'91/.7/.5.[fri]::		TXA
;.'91/.7/.5.[fri]::		LSR	A
;.'91/.7/.5.[fri]::		STA	<CWORK0
;.'91/.7/.5.[fri]::;
;.'91/.7/.5.[fri]::		PLB
;.'91/.7/.5.[fri]::		RTL
;.'91/.7/.5.[fri]::;
;.'91/.7/.5.[fri]::;
;
;
PKILC200	EQU	$

		PHB
		PHK
		PLB		; PBR=>DBR
;
		LDA	<CWORK0
		CMP	#003H
		BCS	PKL210
;
		STA	TLRAM
PKL210		EQU	$
;
		JSR	PLKLKABG
;
		JMP	PCP110
;
;
PKILC300	EQU	$
		PHB
		PHK
		PLB		; PBR=>DBR
;
		JSR	PLKLKABG2
;
		JMP	PCP110
;
;
;
;
;
;
PLKLKABG	EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#TILBGE3-TILBGD3
PKIL010		EQU	$
		LDA	TILBGD3-1,X
		STA	!VRAMD2-1,X
		DEX
		BNE	PKIL010		; vramd set end ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#00000H
PKIL011		EQU	$
		STX	<WORK0
		LDA	<BFP000,X
		AND	#00001H
		BEQ	PKIL012
;
		LDA	>DTSVPD+2,X
		TAX
		JSR	PLSEL
;
PKIL012		EQU	$
		LDX	<WORK0
		INX
		INX
		CPX	#00006H
		BCC	PKIL011
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	<CWORK0
		LDA	#014H
		STA	<WORK0
		LDA	PLKLCYDT1,X
		STA	<WORK1
		JSR	CSLOAMSET	; oamset
;
		LDY	#002H
		LDA	<KEYA2
		AND	#00100000B
		BNE	PKIL020		; select on ?
;					; no
		LDA	<KEYA2
		AND	#00001100B
		BEQ	PKIL060		; up,down key on ?
;					; yes
		AND	#00000100B
		BNE	PKIL020		; down ?
;					; no
		LDA	#020H
		STA	!SOUND3		; sound set !!
;
		LDY	#0FEH
		LDX	<CWORK0
		DEX	
		BMI	PKIL018
;
PKIL013		EQU	$
		TXA
		ASL	A
		TAY
		LDA	!BFP000,Y
		BNE	PKIL060
;
		DEX	
		BPL	PKIL013
;
PKIL018		EQU	$
		LDX	#003H
		BRA	PKIL060
;
PKIL020		EQU	$
;
		LDA	#020H
		STA	!SOUND3		; sound set !!
;
		LDX	<CWORK0
		INX
		CPX	#003H
		BCS	PKIL028
;
PKIL025		EQU	$
		TXA
		ASL	A
		TAY
		LDA	!BFP000,Y
		BNE	PKIL060
;
		INX
		CPX	#003H
		BNE	PKIL025
;
		BRA	PKIL060
;
PKIL028		EQU	$
		CPX	#004H
		BNE	PKIL060
;
		LDX	#000H
		BRA	PKIL025
;
PKIL060		EQU	$
PKIL070		EQU	$
		STX	<CWORK0
	LDA	<KEYA2L
	AND	#0C0H
	ORA	<KEYA2
	AND	#11010000B
;;;		LDA	<KEYA2
;;;		AND	#10010000B
		BEQ	PKIL200		; start or B,a,x,y on ?
;					; yes
		LDA	#02CH
		STA	!SOUND2		; sound set !!
;
		LDA	<CWORK0
		CMP	#003H
		BEQ	PKIL074
;
		LDX	#PLCLADD-PLCLEAR-1
;
PKIL071		EQU	$
		LDA	PLCLEAR,X
		STA	!VRAMD2,X
		DEX
		BPL	PKIL071
;
		INC	<GAMEMD
		LDX	<CWORK0
		CPX	#002H
		BEQ	PKIL072
;
		LDA	PLCLADD,X
		TAX
		LDA	#062H
		STA	!VRAMD2,X
		STA	!VRAMD2+6,X
		LDA	#028H
		STA	!VRAMD2+1,X
		CLC
		ADC	#020H
		STA	!VRAMD2+7,X
PKIL072		EQU	$
		LDA	<CWORK0
		STA	<JRSBPT
		STZ	<CWORK0
		BRA	PKIL200
;
PKIL074		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		JSR	PLCP100
PKIL200		EQU	$
		RTS
;
;
;
;
;
;
PLKLCYDT2	EQU	$
		BYTE	0A7H,0C7H
;
;
;;;PLCLEAR3	EQU	$
;;;		BYTE	062H,0A5H,040H,022H
;;;		WORD	00188H
;;;		BYTE	062H,0C5H,040H,022H
;;;		WORD	00188H
;;;		BYTE	0FFH
;;;;
PLKLKABG2	EQU	$
		LDA	<JRSBPT
		ASL	A
		STA	<WORK0
;
		JSR	SELCHRSET
;
	JSR	SVCNTOM
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	<CWORK0
		LDA	#014H
		STA	<WORK0
		LDA	PLKLCYDT2,X
		STA	<WORK1
		JSR	CSLOAMSET	; oamset
;
		LDY	#002H
		LDA	<KEYA2
		AND	#00101100B
		BEQ	PKIL320		; select,up,down key on ?
;					; yes
		AND	#00100100B
		BNE	PKIL310		; down ?
;					; no
		DEX
		BRA	PKIL315
;
PKIL310		EQU	$
		INX
PKIL315		EQU	$
		TXA	
		AND	#001H
		STA	<CWORK0
;
		LDA	#020H
		STA	!SOUND3		; sound set !!
;
PKIL320		EQU	$
;;;		LDA	<KEYA2
;;;		AND	#01000000B
;;;		BEQ	PKIL330		; y on ?
;;;;					; yes
;;;PKIL323		EQU	$
;;;		LDA	#020H
;;;		STA	!SOUND3		; sound set !!
;;;;
;;;		LDX	#PLKLKABG2-PLCLEAR3-1
;;;PKIL325		EQU	$
;;;		LDA	PLCLEAR3,X
;;;		STA	!VRAMD2,X
;;;		DEX
;;;		BPL	PKIL325
;;;;
;;;		DEC	<GAMEMD
;;;		LDX	#000H
;;;PKILKO300	EQU	$
;;;		LDA	<BFP000,X
;;;		BNE	PKILKO310
;;;;
;;;		INX
;;;		INX
;;;		BRA	PKILKO300
;;;;
;;;PKILKO310	EQU	$
;;;		TXA
;;;		LSR	A
;;;		STA	<CWORK0
;;;		BRA	PKIL385
;;;;
PKIL330		EQU	$
	LDA	<KEYA2L
	AND	#0C0H
	ORA	<KEYA2
	AND	#11010000B
;;;		LDA	<KEYA2
;;;		AND	#10010000B
		BEQ	PKIL390		; a,b,x,y,start key on ?
;					; yes
		LDA	#02CH
		STA	!SOUND2		; sound set !!
;
		LDA	<CWORK0
		BNE	PKIL380
;
		LDA	#022H
		STA	!SOUND3		; SOUND SET !!
		STZ	!SOUND2		; sound set !!
;
PKIL080		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<JRSBPT
		AND	#000FFH
		ASL	A
		TAX
		STZ	<BFP000,X
		LDA	>DTSVPD+2,X
		TAX
		LDY	#00000H
		TYA
PKIL100		EQU	$
		STA	>BKUP_RAM0+000H,X
		STA	>BKUP_RAM0+100H,X
		STA	>BKUP_RAM0+200H,X
		STA	>BKUP_RAM0+300H,X
		STA	>BKUP_RAM0+400H,X
		STA	>BKUP_RAM3+000H,X
		STA	>BKUP_RAM3+100H,X
		STA	>BKUP_RAM3+200H,X
		STA	>BKUP_RAM3+300H,X
		STA	>BKUP_RAM3+400H,X
		INX
		INX
		INY
		INY
		CPY	#00100H
		BNE	PKIL100		; erase end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;
PKIL380		EQU	$
		JSR	PLCP100
PKIL385		EQU	$
		STZ	<JRSBPT
PKIL390		EQU	$
		RTS
;
;
;======================================================
;
PLSNPD		EQU	$
		WORD	TIPL11-TLPL1
		WORD	TIPL21-TLPL1
		WORD	TIPL31-TLPL1
;
;
PLSLPD		EQU	$
		WORD	TIPL12-TLPL1
		WORD	TIPL22-TLPL1
		WORD	TIPL32-TLPL1
;
;
		IDX16
		MEM16
; 
PLSEL		EQU	$
		PHX
;
		JSR	SELCHRSET
;
	JSR	SVCNTOM
;
		PLX
		PHX
		LDY	<WORK0
		LDA	PLSNPD,Y
		TAY
		LDA	#00004H
		STA	<WORK2	
PLSEL00		EQU	$
		LDA	>BUNAME,X
		CLC
		ADC	#01C00H
		STA	!VRAMD2,Y
		CLC
		ADC	#00010H
		STA	!VRAMD2+(TIPL13-TIPL11),Y
		INX
		INX
		INY
		INY
		INY
		INY
		DEC	<WORK2
		BNE	PLSEL00
;
		PLX
		LDY	#00001H
		LDA	>BULFITCT,X
		AND	#000FFH
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2
		LDX	<WORK0
		LDY	PLSLPD,X
		STY	<WORK4
		LDA	#005C0H		; heart
		LDX	#0000AH
PLSEL01		EQU	$
		STA	!VRAMD2,Y
		INY
		INY
		DEX
		BNE	PLSEL02
;
		PHA
		LDA	<WORK4
		CLC
		ADC	#(TIPL14-TIPL12)
		TAY
		PLA
PLSEL02		EQU	$
		DEC	<WORK2
		BNE	PLSEL01
;
		RTS
;
;
;
;
		IDX8
		MEM8
;
;
PLOBJADD	EQU	$
		BYTE	001H,006H,00BH
;
PLYDT		EQU	$		; player y-pos data
		HEX	045,065,085
;
SLPLIX		EQU	$		; oam address index data
		BYTE	004H*000H+4+((3*4)*3)
		BYTE	004H*005H+4+((3*4)*3)
		BYTE	004H*00AH+4+((3*4)*3)
;
;
KENDAT		EQU	$
		BYTE	085H,0A1H,0A1H,0A1H
;
SHIELDDAT	EQU	$
		BYTE	0C4H,0CAH,0E0H
;
KENATOR		EQU	$
		BYTE	01110010B,01110110B,01111010B
;
TATEATOR	EQU	$
		BYTE	00110010B,00110110B,00111010B
;
PLATOR		EQU	$
		BYTE	00110000B,00110100B,00111000B
;
;
SELCHRSET	EQU	$
;
		IDX16
		MEM16
		REP	#00110000B		; memory,index 16bit mode
;
		LDA	#00116H
		ASL	A
		STA	PCHPT0
;
		LDA	<WORK0
		AND	#000FFH
		TAX
		LDA	>DTSVPD+2,X
		STA	<WORKE
;
		MEM8
		IDX8
		SEP	#00110000B		; memory,index 8bit mode
;
		LDA	<WORK0
		LSR	A
		TAY
		LDA	!SLPLIX,Y
		TAX
SOCHRSET	EQU	$
		LDA	#028H+00CH		; ken xpos
		STA	!OAM+000H,X
		STA	!OAM+004H,X
		LDA	!PLYDT,Y		; ken ypos
		CLC
		ADC	#0FBH
		STA	!OAM+001H,X
		CLC
		ADC	#008H
		STA	!OAM+005H,X
;
		LDA	KENATOR,Y		; atoribuut ken
		STA	!OAM+003H,X
		STA	!OAM+007H,X
;
		PHY
		PHX
;
		IDX16
		REP	#00010000B		; index 16bit mode
;
		LDX	<WORKE
		LDA	>BUITMTBL+25,X
;
		IDX8
		SEP	#00010000B		; index 8bit mode
;
		PLX
;
		TAY
		DEY
;
		BPL	SOCH000
;
		LDA	#0F0H
		STA	!OAM+001H,X
		STA	!OAM+005H,X
		INY
SOCH000		EQU	$
		LDA	KENDAT,Y		; chara data ken
		STA	!OAM+002H,X
		CLC
		ADC	#010H
		STA	!OAM+006H,X
;.'91/.7/24.[WED]	;
;.'91/.7/24.[WED]			LDA	KENATOR,Y		; atoribuut ken
;.'91/.7/24.[WED]			STA	!OAM+003H,X
;.'91/.7/24.[WED]			STA	!OAM+007H,X
		PLY
;
		PHX
		TXA
		LSR	A
		LSR	A
		TAX
		LDA	#000H
		STA	!OAMSB+000H,X
		STA	!OAMSB+001H,X
		PLA
		CLC
		ADC	#008H
		TAX
;
SHCHRSET	EQU	$
		LDA	#028H+0FBH		; shield xpos
		STA	!OAM+000H,X
		LDA	!PLYDT,Y		; shield ypos
		CLC
		ADC	#00AH
		STA	!OAM+001H,X
;
		LDA	TATEATOR,Y		; atoribuut shield
		STA	!OAM+003H,X
;
		PHY
		PHX
;
		IDX16
		REP	#00010000B		; index 16bit mode
;
		LDX	<WORKE
		LDA	>BUITMTBL+26,X
;
		IDX8
		SEP	#00010000B		; index 8bit mode
;
		PLX
;
		TAY
		DEY
;
		BPL	SHCH000
;
		LDA	#0F0H
		STA	!OAM+001H,X
		INY
SHCH000		EQU	$
		LDA	SHIELDDAT,Y		; chara data shield
		STA	!OAM+002H,X
;.'91/.7/24.[WED]	;
;.'91/.7/24.[WED]			LDA	TATEATOR,Y		; atoribuut shield
;.'91/.7/24.[WED]			STA	!OAM+003H,X
		PLY
;
		PHX
		TXA
		LSR	A
		LSR	A
		TAX
		LDA	#002H
		STA	!OAMSB+000H,X
		PLA
		CLC
		ADC	#004H
		TAX
;
PLCHRSET	EQU	$
		LDA	#028H			; chara xpos
		STA	!OAM+000H,X
		STA	!OAM+004H,X
		LDA	#000H			; chara data head
		STA	!OAM+002H,X
		LDA	#002H			; chara data body
		STA	!OAM+006H,X
;
;.'91/.7/24.[WED]			PHX
;.'91/.7/24.[WED]			PHY
;.'91/.7/24.[WED]	;
;.'91/.7/24.[WED]			IDX16
;.'91/.7/24.[WED]			REP	#00010000B		; index 16bit mode
;.'91/.7/24.[WED]	;
;.'91/.7/24.[WED]			LDX	<WORKE
;.'91/.7/24.[WED]			LDA	>BUITMTBL+27,X
;.'91/.7/24.[WED]	;
;.'91/.7/24.[WED]			IDX8
;.'91/.7/24.[WED]			SEP	#00010000B		; index 8bit mode
;.'91/.7/24.[WED]	;
;.'91/.7/24.[WED]			TAY
;.'91/.7/24.[WED]			LDA	PLATOR,Y		; atoribuut head
;.'91/.7/24.[WED]			PLY
;.'91/.7/24.[WED]			PLX
		LDA	PLATOR,Y		; atoribuut head
		STA	!OAM+003H,X
		ORA	#01000000B		; atoribuut body
		STA	!OAM+007H,X
		LDA	!PLYDT,Y		; chara ypos
		STA	!OAM+001H,X
		CLC
		ADC	#008H
		STA	!OAM+005H,X
		TXA
		LSR	A
		LSR	A
		TAX
		LDA	#002H
		STA	!OAMSB+000H,X
		STA	!OAMSB+001H,X
;
		MEM16
		IDX16
		REP	#00110000B		; memory,index 16bit mode
;
		RTS
;
;
		IDX8
		MEM8
;
;
;
;
CSLCHNO		EQU	$
	HEX	A8,AA
;;;;	HEX	EA,EC
;;;;		BYTE	064H,066H
;
;
CSLOAMSET	EQU	$
		LDA	<WORK0
		STA	OAM+000H
		LDA	<WORK1
		STA	OAM+001H
		PHX
		LDX	#000H
		LDA	<FCNT
		AND	#00001000B
		BEQ	COS000
;
		INX
COS000		EQU	$
		LDA	CSLCHNO,X
		STA	OAM+002H
		PLX
		LDA	#01111110B
		STA	OAM+003H
;
		LDA	#002H
		STA	OAMSB+000H
SVCN0000	EQU	$
		RTS
;
;
SUUCHNO	EQU	$
;		 0  1  2  3  4  5  6  7  8  9
	HEX	D0,AC,AD,BC,BD,AE,AF,BE,BF,C0
;
SUUOMAD	EQU	$
	BYTE	0*(3*4)+4
	BYTE	1*(3*4)+4
	BYTE	2*(3*4)+4
;
SVXPAD	EQU	$
	HEX	34,2C,24
;
SVYPAD	EQU	$
	BYTE	45H+14H,65H+14H,85H+14H
;
SVCNTOM	EQU	$
	MEM16
	IDX16
	REP	#00110000B	; memory,index 16bit mode !!
;
	LDX	<WORKE
	LDA	>BUDIECONT+1EH,X
	CMP	#0FFFFH
	BEQ	SVCN0000	; save count write ? [ no:SVCN0000 ]
;
;
		CMP	#01000
		BCC	DEC000
;
		LDA	#00009H
		STA	<WORK2
		STA	<WORK4
		STA	<WORK6
		BRA	DEC250
;
DEC000		EQU	$
		LDY	#000H
;
DEC050		EQU	$
		CMP	#0000AH
		BCC	DEC100
;
		SEC
		SBC	#0000AH
		INY
		BRA	DEC050
;
DEC100		EQU	$
		STA	<WORK2
;
		TYA
		LDY	#000H
;
DEC150		EQU	$
		CMP	#0000AH
		BCC	DEC200
;
		SEC
		SBC	#0000AH
		INY
		BRA	DEC150
;
DEC200		EQU	$
		STA	<WORK4
		STY	<WORK6
;
DEC250		EQU	$
		LDX	#00004H
		LDA	<WORK6
		BNE	DEC300
;
		DEX
		DEX
		LDA	<WORK4
		BNE	DEC300
;
		DEX
		DEX
;
DEC300		EQU	$
	MEM8
	IDX8
	SEP	#00110000B	; memory,index 8bit mode !!
;
	LDA	<WORK0
	LSR	A
	TAY
	LDA	SUUOMAD,Y
	TAY
SVCN000	EQU	$
	PHX
	LDA	<WORK2,X
	TAX
	LDA	SUUCHNO,X
	STA	!OAM+2,Y	; chara No. set !!
	LDA	<WORK0
	LSR	A
	TAX
	LDA	SVYPAD,X
	STA	!OAM+1,Y	; y position set !!
	PLA
	PHA
	LSR	A
	TAX
	LDA	SVXPAD,X
	STA	!OAM+0,Y	; x position set !!
	LDA	#00111100B
	STA	!OAM+3,Y	; atoribuut set !!
	PHY
	TYA
	LSR	A
	LSR	A
	TAY
	LDA	#00
	STA	!OAMSB,Y	; oamsub set !!
	PLY
	INY
	INY
	INY
	INY
	PLX
	DEX
	DEX
	BPL	SVCN000		; loop end ? [ no:SVCN000 ]
;
	MEM16
	IDX16
	REP	#00110000B	; memory,index 16bit mode
;
	RTS
;
	IDX8
	MEM8
;
;+++++++++++++++++++++++++++  TOUROKU  ++++++++++++++++++++++++++++++++++
;************************************************************************
;*		Player touroku				(PLTORK)	*
;************************************************************************
PLTORK		EQU	$
		LDA	<GAMEMD
		JSL	>JSRSUBL
		LWORD	PTRK000		; 0 : RAM   initial
		LWORD	PTRK100		; 1 : GAMEN initial
		LWORD	PTRK200		; 2 : play
;
;
;
PTRK000		EQU	$
		JSL	>BLANK
;.'91/.7/.5.[fri]::			LDA	#10000000B
;.'91/.7/.5.[fri]::			STA	<BLKFLG
;.'91/.7/.5.[fri]::			STA	2100H		; blanking on
;.'91/.7/.5.[fri]::			STZ	420CH		; H-DMA disable
;.'91/.7/.5.[fri]::			STZ	<WD420C
;
		LDA	#001H
		STA	!IRQSWFG
		STZ	!WDWTCT
		STZ	!WDS3CX
                STZ     WDS3Y2
		STZ	CWORK2
		STZ	CWORK4
		LDA	#03EH
		STA	WDS3CY
;
;.'91/.7/.5.[fri]::			JSL	>VRAMCL2	; VCL
;
;// 03.06.27 //		JSL	>MSGVRMS1	; message char. VRAMD set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
		LDA	#0194H+8
		STA	PSCH3

; '91/ 6/18 [TUE] ::			LDA	#00000H
; '91/ 6/18 [TUE] ::			STA	<SCCH3
		STZ	<SCCH3
;;		STA	!PSCH3
;
		LDA	<CWORK0
		ASL	A
		TAX
		LDA	>DTSVPD+2,X
		STA	!ITEMMD
;
		TAX
		LDY	#00000H
; '91/ 6/18 [TUE] ::			LDA	#00000H
		TYA
PTRK040		EQU	$
		STA	>BKUP_RAM+000H,X
		STA	>BKUP_RAM+100H,X
		STA	>BKUP_RAM+200H,X
		STA	>BKUP_RAM+300H,X
		STA	>BKUP_RAM+400H,X
		INX
		INX
		INY
		INY
		CPY	#00100H
		BNE	PTRK040		; erase end ?
;					; yes
		LDX	!ITEMMD
		LDA	#018CH
		STA	>BUNAME,X
		STA	>BUNAME+2,X
		STA	>BUNAME+4,X
		STA	>BUNAME+6,X
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;.'91/.7/.5.[fri]::			INC	<GAMEMD
		RTL
;
;
PTRK100		EQU	$
		LDA	#VT05
		STA	<VRFLG
		INC	<GAMEMD
		LDA	#00001111B
		STA	<BLKFLG
		STZ	!GMAPDF
;	
		RTL
;
; ===== [ NEW DATA } ========================
;
MOJIDT		EQU	$
		BYTE	000H,001H,002H,003H,004H,0CCH,0CCH,015H	; 0 (a)	
		BYTE	016H,017H,01DH,01EH,0CCH,050H,051H
		BYTE	052H,053H,054H,0CCH,0CCH,065H,066H,067H
		BYTE	06DH,06EH,0CCH,0AAH,0ABH,0ACH,0ADH
		BYTE	0CCH,0CCH
;
		BYTE	008H,009H,00AH,00BH,00CH,0CCH,0CCH,01FH	; 1 (ka)
		BYTE	025H,026H,027H,02DH,0CCH,058H,059H
		BYTE	05AH,05BH,05CH,0CCH,0CCH,06FH,075H,076H
		BYTE	077H,07DH,0CCH,0AEH,0AFH,0B0H,0B1H
		BYTE	0CCH,0CCH
;
		BYTE	010H,011H,012H,013H,014H,0CCH,0CCH,02EH	; 2 (sa)
		BYTE	02FH,035H,036H,037H,0CCH,060H,061H
		BYTE	062H,063H,064H,0CCH,0CCH,07EH,07FH,085H
		BYTE	086H,087H,0CCH,0B2H,0B3H,0B4H,0B5H
		BYTE	0CCH,0CCH
;
		BYTE	018H,019H,01AH,01BH,01CH,0CCH,0CCH,03DH	; 3 (ta)
		BYTE	03EH,03FH,040H,041H,0CCH,068H,069H
		BYTE	06AH,06BH,06CH,0CCH,0CCH,08DH,08EH,08FH
		BYTE	090H,091H,0CCH,0B6H,0B7H,0B8H,0B9H
		BYTE    0CCH,0CCH
;
		BYTE	020H,021H,022H,023H,024H,0CCH,0CCH,042H	; 4 (na)
		BYTE	043H,044H,045H,046H,0CCH,070H,071H
		BYTE	072H,073H,074H,0CCH,0CCH,092H,093H,094H
		BYTE	095H,096H,0CCH,0BAH,0BBH,0BCH,0BDH
		BYTE    0CCH,0CCH
;
		BYTE	028H,029H,02AH,02BH,02CH,0CCH,0CCH,04BH	; 5 (ha)
		BYTE	04CH,04DH,04EH,04FH,0CCH,078H,079H
		BYTE	07AH,07BH,07CH,0CCH,0CCH,09BH,09CH,09DH
		BYTE	09EH,09FH,0CCH,0BEH,0BFH,0C0H,0C1H
		BYTE    0CCH,0CCH
;
		BYTE	030H,031H,032H,033H,034H,0CCH,0CCH,047H	; 6 (ma)
		BYTE	048H,049H,0CCH,04AH,0CCH,080H,081H
		BYTE	082H,083H,084H,0CCH,0CCH,097H,098H,099H
		BYTE	0CCH,09AH,0CCH,0C2H,0C3H,0C9H,0CEH
		BYTE    0CCH,0CCH
;
		BYTE	005H,0CCH,006H,0CCH,007H,0CCH,0CCH,0CCH	; 7 (ya)
		BYTE	0CCH,0CCH,0CCH,0CCH,0CCH,055H,0CCH
		BYTE	056H,0CCH,057H,0CCH,0CCH,0CCH,0CCH,0CCH
		BYTE	0CCH,0CCH,0CCH,0CCH,0CCH,0CCH,0CCH
		BYTE    0CCH,0CCH
;
		BYTE	038H,039H,03AH,03BH,03CH,0CCH,0CCH,0CAH	; 8 (ra)
		BYTE	0CBH,0CDH,0CDH,0CCH,0CCH,088H,089H
		BYTE	08AH,08BH,08CH,0CCH,0CCH,0CCH,0CCH,0CCH
		BYTE	0CCH,0CCH,0CCH,0CAH,0CBH,0CDH,0CDH
		BYTE    0CCH,0CCH
;
		BYTE	00DH,00EH,00FH,0CCH,0C9H,0CCH,0CCH,0CCH	; 9 (wa)
		BYTE	0CCH,0CCH,0CCH,0CCH,0CCH,05DH,05EH
		BYTE	05FH,0CCH,0C9H,0CCH,0CCH,0CCH,0CCH,0CCH
		BYTE	0CCH,0CCH,0CCH,0CCH,0CCH,0CCH,0CCH
		BYTE    0CCH,0CCH
;
;
WDS3HD		EQU	$
		WORD	019CH,01ACH,01BCH,01CCH,01DCH,01ECH,01FCH,000CH
		WORD	001CH,002CH,003CH,004CH,005CH,006CH,007CH
		WORD	008CH,009CH,00ACH,00BCH,00CCH,00DCH,00ECH,00FCH
		WORD	010CH,011CH,012CH,013CH,014CH,015CH,016CH
		WORD	017CH,018CH
;
WDSADT		EQU	$
		WORD	0001H,00FFH
WDSLMT		EQU	$
		WORD	0020H,00FFH
WDSRVD		EQU	$
		WORD	0000H,001FH
;
; ============================================
;
;;MOJIDT		EQU	$      
;;		BYTE	000H,001H,002H,003H,004H,015H,016H,017H	; 0 (a)
;;		BYTE	01DH,01EH,050H,051H,052H,053H,054H,065H
;;		BYTE	066H,067H,06DH,06EH,0AAH,0ABH,0ACH,0ADH
;;		BYTE	008H,009H,00AH,00BH,00CH,01FH,025H,026H	; 1 (ka)
;;		BYTE	027H,02DH,058H,059H,05AH,05BH,05CH,06FH
;;		BYTE	075H,076H,077H,07DH,0AEH,0AFH,0B0H,0B1H
;;		BYTE	010H,011H,012H,013H,014H,02EH,02FH,035H	; 2 (sa)
;;		BYTE	036H,037H,060H,061H,062H,063H,064H,07EH
;;		BYTE	07FH,085H,086H,087H,0B2H,0B3H,0B4H,0B5H
;;		BYTE	018H,019H,01AH,01BH,01CH,03DH,03EH,03FH	; 3 (ta)
;;		BYTE	040H,041H,068H,069H,06AH,06BH,06CH,08DH
;;		BYTE	08EH,08FH,090H,091H,0B6H,0B7H,0B8H,0B9H
;;		BYTE	020H,021H,022H,023H,024H,042H,043H,044H	; 4 (na)
;;		BYTE	045H,046H,070H,071H,072H,073H,074H,092H
;;		BYTE	093H,094H,095H,096H,0BAH,0BBH,0BCH,0BDH
;;		BYTE	028H,029H,02AH,02BH,02CH,04BH,04CH,04DH	; 5 (ha)
;;		BYTE	04EH,04FH,078H,079H,07AH,07BH,07CH,09BH
;;		BYTE	09CH,09DH,09EH,09FH,0BEH,0BFH,0C0H,0C1H
;;		BYTE	030H,031H,032H,033H,034H,047H,048H,049H	; 6 (ma)
;; 		BYTE	0CCH,04AH,080H,081H,082H,083H,084H,097H
;;		BYTE	098H,099H,0CCH,09AH,0C2H,0C3H,0FFH,0FFH
;;		BYTE	005H,0CCH,006H,0CCH,007H,0FFH,0FFH,0FFH	; 7 (ya)
;;		BYTE	0FFH,0FFH,055H,0CCH,056H,0CCH,057H,0CCH
;;		BYTE	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
;;		BYTE	038H,039H,03AH,03BH,03CH,0CAH,0CBH,0CDH ; 8 (ra)
;;		BYTE	0CDH,0FFH,088H,089H,08AH,08BH,08CH,0FFH
;;		BYTE	0FFH,0FFH,0FFH,0FFH,0CAH,0CBH,0CDH,0CDH
;;		BYTE	00DH,00EH,00FH,0FFH,0FFH,0FFH,0FFH,0FFH	; 9 (wa)
;;		BYTE	0FFH,0FFH,05DH,05EH,05FH,0FFH,0FFH,0FFH
;;		BYTE	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
;
;;WDS3HD		EQU	$
;;		WORD	0194H+8,01A4H+8,01B4H+8,01C4H+8,01D4H+8,000004H,000CH+8,001CH+8
;;		WORD	002CH+8,003CH+8,0064H+8,0074H+8,0084H+8,0094H+8,00A4H+8,00CCH+8
;;		WORD	00DCH+8,00ECH+8,00FCH+8,010CH+8,0134H+8,0144H+8,0154H+8,0164H+8
;;;
;;WDSADT		EQU	$
;;		BYTE	0001H,00FFH
;;WDSLMT		EQU	$
;;		BYTE	0018H,00FFH
;;WDSRVD		EQU	$
;;		BYTE	0000H,0017H
;;;
;
WKYPOS		EQU	$
		BYTE	040H-2,050H-2,060H-2,070H-2,080H-2,090H-2,0A0H-2,0B0H-2,0C0H-2,0D0H-2
WYSADT		EQU	$
		BYTE	001H,0FFH
WYSLMT		EQU	$
		BYTE	00AH,0FFH
WYSRVD		EQU	$
		BYTE	000H,009H
;
MULTDT		EQU	$
		WORD	0000H,0020H,0040H,0060H,0080H,00A0H,00C0H,00E0H
		WORD	0100H,0120H
;
CUXPOS		EQU	$
		BYTE    0A8H,0B8H,0C8H,0D8H
;
;WYSCPT		EQU	$
;		BYTE	0D8H,038H
;
;
; ==== < PLAYER TOROKU > ======================================
WDSYAD		EQU	$
		WORD	0FFFFH,0001H
		WORD	0FFFFH,0001H
		WORD	0FFFFH,0001H
		WORD	0FFFFH,0001H
		WORD	0FFFFH,0001H
		WORD	0FFFFH,0001H
		WORD	0FFFFH,0001H
		WORD	0FFFFH,0001H
;
		WORD	0FFFEH,0002H
		WORD	0FFFEH,0002H
		WORD	0FFFEH,0002H
		WORD	0FFFEH,0002H
		WORD	0FFFCH,0004H
;
PTRK200		EQU	$
		LDY	WDYFLG
		BEQ	WDS010
;
		TYA
		CMP	#0CH*4+1
		BEQ	PTRK208
		CLC
		ADC	#04H
		STA	WDYFLG
;
PTRK208		EQU	$
		LDA	!WDS3CX
		ASL	A
		TAX
;
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
		DEY     
		LDA	!PSCH3
;;;;		SEC
		CMP	>WDS3HD,X
		BNE	WDS008
;
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		LDA	#0CH*4
		STA	WDYFLG
;
		LDA	<KEYA1
		AND	#03H
		BNE	WQWQ		; Left,right key on ?
;					; No
		STZ	WDYFLG
WQWQ		EQU	$
		JSR	WDXSUB
		BRA	PTRK200
;
; ==========================================================
;
;		LDA	<KEYA1
;		AND	#03H
;		BNE	WQWQ
;;
;		STZ	CWORK2
;QEQE		EQU	$
;		STZ	WDYFLG
;		BRA	QWQW
;WQWQ		EQU	$
;		LDA	CWORK2
;		BNE	QWQW
;		INC	CWORK2
;;
;		BRA	QEQE
;QWQW		EQU	$
;		JSR	WDXSUB
;		BRA	PTRK200
; ==========================================================
;
WDS008		EQU	$
		MEM16
		REP	#00100000B	; Memory 16bit mode
;
		LDX	WDXMKI
		BNE	WDS00C
		INY
		INY
;
WDS00C		EQU	$
		LDA	!PSCH3
		TYX
		CLC
		ADC	>WDSYAD,X
		AND	#01FFH
		STA	PSCH3
;
WDS00E		EQU	$
		MEM8
		SEP	#00100000B	; Memory 8bit mode
		BRA	PLTK020
;
WDS010		EQU	$
;
; -------------------------------------------------------------
;
WDS012		EQU	$
;;		LDA	<KEYA1
;;		AND	#003H
;;		BEQ	PLTK01F		; Left,right key on ?
;;		BNE	PLTK005		; Left,right key on ?
;					: No
;;		LDA	<KEYA1
;;		AND	#003H
;;		BEQ	PLTK020		; Left,right key on ?
;;;					: Yes
;;		STA	<WORK0
;;		AND	<CWORK2
;;		BEQ	PLTK003		; New key == old key ?
;;					: Yes
;;		LDA	<CWORK3
;;		BEQ	PLTK002		; Timer = 0 ?
;;					: No
;;		DEC	<CWORK3		; Timer count dec
;;		BRA	PLTK020
;;
;;PLTK002		EQU	$
;;		LDA	#005H
;;		STA	<CWORK3		; Timer count set
;;		LDA	<WORK0
;;		BRA	PLTK005
;;;
;;PLTK003		EQU	$
;;		LDA	<WORK0
;;		STA	<CWORK2		; Old key ram set 
;;		LDA	#020H
;;		STA	<CWORK3		; Timer count set
;;		BRA	PLTK020
;
; -------------------------------------------------------------
;
;
		JSR	WDXSUB		; Key move ! L R
;
PLTK020		EQU	$
;;		LDA	!WDS3CX
;;		ASL	A
;;		TAX
;;;
;;		MEM16
;;		REP	#00100000B	; Memory 16bit mode
;;;
;;		LDA	>WDS3HD,X
;;		STA	!PSCH3
;;;
;;		MEM8
;;		SEP	#00100000B	; Memory 8bit mode
; -------------------------------------------------------------
;
		LDA	WDXFLG
		BEQ	WDX010
;
		LDX	!WDS3Y2
		LDY	#02H
		LDA	!WDS3CY
		CMP	>WKYPOS,X
		BNE	WDX008
;
		STZ	WDXFLG
		JSR	WDYSUB
;;		BRA	WDX010
		BRA	PLTK020
;
WDX008		EQU	$
		BMI	WDX00C
		LDY	#0FEH
;
WDX00C		EQU	$
		TYA
		CLC
		ADC	WDS3CY
		STA	WDS3CY
;
WDX00E		EQU	$
		BRA	PLTK040
;
WDX010		EQU	$
		JSR	WDYSUB
;
; ---- < LINE OAM SET > ---------------------------------------
;
PLTK040		EQU	$
		LDX	#00H
; '91/ 6/18 [TUE] ::			LDY	#00H
		TXY
		LDA	#18H
		STA	<WORK0		
;
WDOM010	        EQU	$
		LDA	<WORK0		
		STA	OAM+00H,Y
		CLC	
		ADC 	#008H
		STA	<WORK0	
;;		PHX
;;		LDX 	!WDS3CY
;;		LDA	>WKYPOS,X
		LDA	WDS3CY
		STA	OAM+01H,Y
;;		PLX	
		LDA	#02EH
		STA	OAM+02H,Y
		LDA	#03CH
		STA	OAM+03H,Y		
; '91/ 6/18 [TUE] ::			LDA	#000H
; '91/ 6/18 [TUE] ::			STA	OAMSB,X
		STZ	OAMSB,X
		INY
		INY
		INY
		INY
		INX
		CPX	#01AH
		BNE	WDOM010
;
; ---- < CURSOLE OAM SET > ------------------------------------
;
COAMST	        EQU	$
		PHX
		LDX	!WDWTCT
		LDA	>CUXPOS,X
		STA	OAM+00H,Y
		LDA	#014H		
		STA	OAM+01H,Y
		PLX	
		LDA	#029H
		STA	OAM+02H,Y
		LDA	#00CH
		STA	OAM+03H,Y		
; '91/ 6/18 [TUE] ::			LDA	#000H
; '91/ 6/18 [TUE] ::			STA	OAMSB,X
		STZ	OAMSB,X
;
;
; ===== < MOJI NYURYOKU > ===================================== 
;
TOMOJI		EQU	$
		LDA	WDYFLG
		ORA	WDXFLG
		BNE	TOM00E		; line moving ?
;					: No
		LDA	<KEYA2
		AND	#00010000B
		BNE	TOM090		; START on ?
;					: No
		LDA	<KEYA2
		AND	#11000000B
		BNE	TOM010		; A,B on ?
;					: No
		LDA	<KEYA2L
		AND	#11000000B
		BNE	TOM010		; X,Y on ?
;					: No
TOM00E		EQU	$
		JMP	TOM099
;
TOM010		EQU	$
		LDA	#02BH
		STA	!SOUND2		; sound set !!
;
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		LDA	!WDS3Y2		; Y position
		AND	#000FFH
		ASL	A
		TAX	
		LDA	>MULTDT,X
		CLC
		ADC	!WDS3CX		; X position		
		AND	#001FFH
		TAX
;
		MEM8
		SEP	#00100000B	; Memory 8bit mode
;
		LDA	>MOJIDT,X	
		CMP	#0CAH
		BEQ	TOM020		; Cursole left ? 	
;					: No
		CMP	#0CBH
		BEQ	TOM030		; Cursole right ?
;					: No
		CMP	#0CDH
		BEQ	TOM090		; END ?
;					: No
		STA	<WORK0
		STZ	<WORK1 
		BRA	TOM040
;
TOM020		EQU	$
		DEC	!WDWTCT	
		BRA	TOM035
;
TOM030		EQU	$
		INC	!WDWTCT
;
TOM035		EQU	$
		LDA	!WDWTCT		; Mojisu check
		AND	#003H
		STA	!WDWTCT
		BRA	TOM099
;
TOM040		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		AND	#0000FH
		STA	<WORK2
;				
		LDA	!WDWTCT
		AND	#000FFH
		ASL	A
		TAY
		CLC
		ADC	!ITEMMD
		TAX
;
		LDA	<WORK0
		AND	#0FFF0H 
		ASL	A
		ORA	<WORK2
		STA	>BUNAME,X
;
;;		MEM8
;;		IDX8
;;		SEP	#00110000B	; Memory,index 8bit mode
;
		JSR	TMVRAM		; VRAMD set
;
		BRA	TOM030
;
; --- < NEW  1991/05/28 > -------------------------
;
TOM090		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		STZ	<WORK2		; Index count clear
;
TOM091
		LDA	!ITEMMD
		CLC
		ADC	<WORK2
		TAX
;
		LDA	>BUNAME,X
		CMP	#0018CH
		BNE	TOM095		; Space ?
;					: Yes
;
		LDA	<WORK2
		CMP	#00006H
		BEQ	TOM099		; Space check 4 word ?
;					: No
;
		INC	A
		INC	A
		STA	<WORK2
		BRA	TOM091
;
TOM099		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		RTL
;
; -------------------------------------------------
;
;
TOM095		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;************************************************************************
;*		Player touroku				(PLITSET)	*
;************************************************************************
PLITSET		EQU	$
		PHB
		LDA	#BANK ITMTBDT
		PHA
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<CWORK0
		ASL	A
		INC	A
		INC	A
		STA	>DTSVPT		; data save pointer set
		TAX
		LDA	>DTSVPD,X
		STA	<WORK0
		TAX
;
;.'91/.7/.5.[fri]::		LDX	<WORK0
		LDA	#055AAH
		STA	>BUCKSUM,X	; check-sum set
		LDA	#0F000H
		STA	>BUDJNTBL+106H*2,X
		STA	>BUDJNTBL+107H*2,X
;
		LDA	#0FFFFH
		STA	>BUDIECONT+1EH,X	;
;
		LDA	#ITMSTCT
		STA	<WORK2
		LDY	#ITMSTP1
		CPX	#00000H
		BNE	PITS40		; <<DEBUG : BNE PLSL160 >>
;					;
		LDA	>DEBUGMD
		AND	#000FFH
		CMP	#00060H
		BEQ	PITS40		; debug mode ?
;					; yes
		LDA	>BUNAME
		CMP	#000AFH
		BNE	PITS40		; debug mode ?
;					; yes
;;;;;;;;		LDA	#00020H
;;;;;;;;		STA	>BUGNDTBL+058H
		LDA	#000F0H
		STA	>BUDJNTBL+109H*2,X
		LDA	#01502H
		STA	>BUMODTBL,X
		LDA	#00100H
		STA	>BUMODTBL+2,X
		LDY	#ITMSTP0
PITS40		EQU	$
		LDA	ITMTBDT,Y
		STA	>BUITMTBL,X
		INX
		INX
		INY
		INY
		DEC	<WORK2
		BPL	PITS40		; set end ?
;					; yes
		LDX	<WORK0
		LDY	#00000H
		TYA
PITS80		EQU	$
		CLC
		ADC	>BKUP_RAM0,X
		INX
		INX
		INY
		CPY	#004FEH/2
		BNE	PITS80		; 
;					;
		STA	<WORK2
		LDX	<WORK0
		LDA	#05A5AH
		SEC
		SBC	<WORK2
		STA	>BKUP_RAM0+04FEH,X	; check-sum set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		PLB			; (DBR) reset
;
;// 03.06.27 //		LDA	#MD_selct
;// 03.06.27 //		STA	<SLMODE
;// 03.06.27 //		LDA	#001H
;// 03.06.27 //		STA	<GAMEMD
;// 03.06.27 //		STZ	<JRSBPT
;// 03.06.27 //		STZ	<CWORK0
		JSR	PLCP100
;
		LDA	#0FFH
		STA	!IRQSWFG
;
		LDA	#02CH
		STA	!SOUND2		; sound set !!
;
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		RTL
;
;
;
;		
; =======================================================
WDXSUB		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		LDA	<KEYA1
		AND	#003H
		BEQ	PLTK01F		; Left,right key on ?
;					: Yes
		INC	WDYFLG
		DEC	A
		STA	WDXMKI
;
PLTK005		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; Memory,index 16bit mode
;
		AND	#000FFH		; 1991/03/26
		ASL	A
		TAX
		LDA	!WDS3CX
		AND	#000FFH		; 1991/03/26
		CLC
		ADC	>WDSADT,X
		CMP	>WDSLMT,X
		BNE	PLTK010
;
		LDA	>WDSRVD,X
;
PLTK010		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		STA	!WDS3CX
;
; --- < ERASE 1991/07/26 > ------------
;
;		STX	<WORK0		; Left,right key data store
;
;		MEM16
;		IDX16
;		REP	#00110000B	; Memory,index 16bit mode
;
;		LDA	!WDS3Y2		; Y position 
;;;
;		AND	#00FFH
;		ASL	A
;		TAX
;		LDA	>MULTDT,X
;		CLC
;		ADC	!WDS3CX		; X position		
;		TAX
;
;		LDA	>MOJIDT,X
;		CMP	#0FFH
;		BNE	PLTK018		; Space ? 	
;					: Yes
;;;		MEM8
;;;		IDX8
;;;		SEP	#00110000B	; Memory,index 8bit mode
;
;		LDA	<WORK0
;		BRA	PLTK005
;
; -------------------------------------
;
PLTK018		EQU	$
PLTK01F		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		RTS
;
; =======================================================
;WYSTOP		EQU	$
;		BYTE	019H,019H,019H,018H,018H,018H,018H,018H
;		BYTE	018H,016H,019H,019H,019H,018H,018H,016H
;		BYTE	016H,016H,016H,016H,018H,018H,018H,018H
;
;WYREPT		EQU	$
;		BYTE	0D8H,0D8H,0D8H,0C8H,0C8H,0C8H,0C8H,0C8H
;		BYTE	0C8H,0A8H,0D8H,0D8H,0D8H,0C8H,0C8H,0A8H
;		BYTE	0A8H,0A8H,098H,0A8H,0C8H,0C8H,0C8H,0C8H
;
;
WDYSUB		EQU	$
		LDA	<KEYA1
		AND	#00CH
;;		BEQ	PLTK03F		; Up,down key on ?
		BEQ	PLTK039		; Up,down key on ?
;					: Yes
;
 		STA	<WORK2		; Up,down data store		
;
; -------------------------------------------------------------
;;						
;;		BNE	PLTK024		; Up,down key on ?
;					: No
;;		LDA	<KEYA1
;;		AND	#00CH
;;		BEQ	PLTK040		; Up,down key on ?
;;;					: Yes
;;		STA	<WORK1
;;		AND	<CWORK4
;;		BEQ	PLTK023		; New key == old key ?
;;;					: Yes
;;		LDA	<CWORK5
;;		BEQ	PLTK022		; Timer = 0 ?
;;;					: No
;;		DEC	<CWORK5		; Timer count dec
;;		BRA	PLTK040
;;;
;;PLTK022		EQU	$
;;		LDA	#005H
;;		STA	<CWORK5		; Timer count set
;;		LDA	<WORK1
;;		BRA	PLTK024
;;;
;;PLTK023		EQU	$
;;		LDA	<WORK1
;;		STA	<CWORK4		; Old key ram set 
;;		LDA	#020H
;;		STA	<CWORK5		; Timer count set
;;		BRA	PLTK040
;
; -------------------------------------------------------------
;;
; ===== [ 1991/03/25 ] ===========  Up,down limit check
;
		ASL	A
		ORA	!WDS3Y2
		CMP 	#010H
		BEQ	PLTK03F		; Y pos limit up ?	
;					: No
		LDA	<WORK2
		ASL	A
		ASL	A
		ORA	!WDS3Y2
;
		LDX	!WDS3CX
;;;		CMP	>WYSTOP,X
		CMP	#019H
		BEQ	PLTK03F		; Y pos limit down ?
; 					: No
;
; ===== [ 1991/02/26 ] =========================
;
;;
;		INC	CWORK2		; Timmer inc
;		LDA	CWORK2
;;
;		AND	#002H
;		BEQ	PLTK03F		; Timmer 2 count over ?
;;					: Yes
;		LDA	<WORK2	
;		AND	CWORK3
;		BEQ	PLTK023		; Old key == new key ?
;;					: Yes
;;
;		LDA	#002H
;		STA	CWORK2		; Timmer reset		
;;
;PLTK023		EQU	$
;;
;
; ==============================================
;
;;
;;
;		LDA	<WORK2
;		ASL	A
;		ORA	!WDS3Y2
;		CMP 	#010H
;		BNE	PLTK023A	; Y pos limit up ?	
;					: Yes
;		LDX	!WDS3CX
;		LDA	>WYREPT,X
;		BRA	PLTK023B
;
;PLTK023A	EQU	$
;		LDA	<WORK2
;		ASL	A
;		ASL	A
;		ORA	!WDS3Y2
;
;		LDX	!WDS3CX
;		CMP	>WYSTOP,X
;		BNE	PLTK023F	; Y pos limit down ?
; 					: Yes
;		LDA	#032H
;;
;PLTK023B	EQU	$
;		STA	!WDS3CY
;;
PLTK023F	EQU	$
		LDA	<WORK2
;
PLTK024		EQU	$
		LSR	A
		LSR	A
;
PLTK025		EQU	$
		TAX
		LDA	!WDS3Y2
		CLC
		ADC	>WYSADT-1,X
		CMP	>WYSLMT-1,X
		BNE	PLTK030		: Y pos limit up or down ?
;					: Yes
;
		LDA	>WYSRVD-1,X
;
PLTK030		EQU	$
		STA	!WDS3Y2
		STX	<WORK1
;
		LDX	!WDS3Y2		; Y position 
		LDA	>MULTDT,X
		CLC
		ADC	!WDS3CX		; X position		
		TAX
;
		LDA	>MOJIDT,X	
		CMP	#0FFH
		BNE	PLTK038		; Space ? 	
;					: Yes
		LDA	<WORK1
		BRA	PLTK025
;
PLTK038		EQU	$
		INC	WDXFLG
		BRA	PLTK03F
;
PLTK039		EQU	$
;
		STZ	CWORK2		; Timmer clear
;
PLTK03F		EQU	$
		LDA	WORK2
		STA	CWORK3		; Old key set
		RTS
;
;
; ---- < MOJI VRAMD SET > -------------------------------------
;
BGXADD		EQU	$
		WORD	00075H,00077H,00079H,0007BH
;
		MEM16
		IDX16
TMVRAM		EQU	$
		PHB
		PHK
		PLB			; PBR=>DBR
;
		LDA	#06000H
		ORA 	!BGXADD,Y
		XBA
		STA	!VRAMD2
		XBA
		CLC
		ADC	#00020H
		XBA
		STA	!VRAMD2+06H
;
		LDA	#00100H
		STA	!VRAMD2+02H
		STA	!VRAMD2+08H
;
		LDA	>BUNAME,X
		ORA	#01C00H
		STA	!VRAMD2+04H
		CLC
		ADC	#00010H
		STA	!VRAMD2+0AH
;
		MEM8
		IDX8
		SEP	#00110000B	; Memory,index 8bit mode
;
		LDA	#0FFH		; End code
		STA	!VRAMD2+0CH
		LDA	#VT01
		STA	<VRFLG
;
		PLB
		RTS
;
;
;
;
;
;************************************************************************
;*		Title  BG. data				(TILBGD)	*
;************************************************************************
;;;TILBGD		EQU	$
;;;		BYTE	060H,0E8H,000H,021H
;;;		WORD	     00965H,0094EH,00960H,0094EH,00967H,0094DH,00988H,00968H,0094FH
;;;		WORD	     00988H,00983H,0094EH,00965H,0094DH,0094AH,00988H,00943H
;;;		BYTE	061H,008H,000H,021H
;;;		WORD	     00975H,0095EH,00970H,0095EH,00977H,0095DH,00988H,00978H,0095FH
;;;		WORD	     00988H,00993H,0095EH,00975H,0095DH,0095AH,00988H,00953H
;;;		BYTE	0FFH
;
TILBGD		EQU	$
		BYTE	010H,000H,047H,07EH
		WORD	     00976H
		BYTE	010H,0A0H,043H,07EH
		WORD	     00977H
		BYTE	011H,025H,000H,017H
		WORD	     03900H,03901H,03902H,03903H,03904H,03905H,03906H,03907H
		WORD	     03908H,03909H,0390AH,0390BH	
		BYTE	011H,039H,000H,003H
		WORD	     0397EH,0397FH
		BYTE	011H,045H,000H,02BH
		WORD	     0390CH,0390DH,0390EH,0390FH,03910H,03911H,03912H,03977H
		WORD	     03913H,03914H,03915H,03916H,03977H,03977H,03917H,03918H
		WORD	     03919H,0391AH,0391BH,0391CH,0391DH,0391EH	
		BYTE	011H,065H,000H,02BH
		WORD	     0391FH,03920H,03921H,03922H,03923H,03924H,03925H,03926H
		WORD	     03927H,03928H,03929H,0392AH,0392BH,0392CH,0392DH,0392EH
		WORD	     0392FH,03930H,03931H,03932H,03933H,03934H	
		BYTE	011H,085H,000H,02BH
		WORD	     03935H,03936H,03937H,03938H,03939H,0393AH,0393BH,0393CH
		WORD	     0393DH,0393EH,0393FH,03940H,03941H,03942H,03943H,03944H
		WORD	     03945H,03946H,03947H,03948H,03949H,0394AH	
		BYTE	011H,0A5H,000H,02BH
		WORD	     0394BH,0394CH,0394DH,0394EH,0394FH,03950H,03951H,03952H
		WORD	     03953H,03954H,03955H,03956H,03957H,03958H,03959H,0395AH
		WORD	     0395BH,0395CH,0395DH,0395EH,0395FH,03960H	
		BYTE	011H,0C5H,000H,02BH
		WORD	     03977H,03961H,03962H,03963H,03964H,03965H,03966H,03967H
		WORD	     03968H,03969H,0396AH,0396BH,0396CH,0396DH,0396EH,0396FH
		WORD	     03970H,03971H,03972H,03973H,03974H,03975H	
		BYTE	0FFH
;
;
;
TILBGD1		EQU	$	; PLAYER SELECT
		BYTE	060H,062H,000H,037H
		WORD	     01D8AH,00188H,01D69H,00188H,01D65H,00188H,01D4AH,00188H
		WORD	     01D82H,00188H,01D4EH,00188H,01D6BH,00188H,00188H
		WORD	     01D6CH,00188H,01D4EH,00188H,01D65H,00188H,01D4EH,00188H
		WORD	     01D4CH,00188H,01D6DH,00188H,01D8BH
		BYTE	060H,082H,000H,037H
		WORD	     01D9AH,00188H,01D79H,00188H,01D75H,00188H,01D5AH,00188H
		WORD	     01D92H,00188H,01D5EH,00188H,01D7BH,00188H,00188H
		WORD	     01D7CH,00188H,01D5EH,00188H,01D75H,00188H,01D5EH,00188H
		WORD	     01D5CH,00188H,01D7DH,00188H,01D9BH
;
TLPL4		EQU	$	; COPY MODE
		BYTE	062H,0A5H,000H,015H
		WORD	     01CACH,00188H,01D23H,00188H,01D89H,00188H,01D04H,00188H
		WORD	     01D89H,00188H,01D07H
		BYTE	062H,0C5H,000H,015H
		WORD	     01CBCH,00188H,01D33H,00188H,01D99H,00188H,01D14H,00188H
		WORD	     01D99H,00188H,01D17H
;
TLPL5		EQU	$	; KILL MODE
		BYTE	063H,025H,000H,019H
		WORD	     01D64H,00188H,01D62H,00188H,01D65H,00188H,01D65H,00188H
		WORD	     01D04H,00188H,01D89H,00188H,01D07H
		BYTE	063H,045H,000H,019H
		WORD	     01D74H,00188H,01D72H,00188H,01D75H,00188H,01D75H,00188H
		WORD	     01D14H,00188H,01D99H,00188H,01D17H
;
		BYTE	0FFH
;
;
;
TILBGE1		EQU	$
;
TLPL1		EQU	$	; 1
		BYTE	061H,028H,000H,02DH
		WORD	     01D41H,00188H,00188H
TIPL11		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
TIPL12		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
		BYTE	061H,048H,000H,02DH
		WORD	     01D51H,01D98H,00188H
TIPL13		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
TIPL14		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
;
TLPL2		EQU	$	; 2
		BYTE	061H,0A8H,000H,02DH
		WORD	     01D42H,00188H,00188H
TIPL21		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
TIPL22		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
		BYTE	061H,0C8H,000H,02DH
		WORD	     01D52H,01D98H,00188H
TIPL23		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
TIPL24		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
;
TLPL3		EQU	$	; 3
		BYTE	062H,028H,000H,02DH
		WORD	     01D43H,00188H,00188H
TIPL31		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
TIPL32		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
		BYTE	062H,048H,000H,02DH
		WORD	     01D53H,01D98H,00188H
TIPL33		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
TIPL34		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;

		BYTE	0FFH
TILBGE11	EQU	$
;
;
;+++++++++++++++++++++++++++++++++++++++++++++++
;
;+++++++++++++++++++++++++++++++++++++++++++++++
;
TILBGD2		EQU	$	; KILL MODE
		BYTE	060H,067H,000H,021H
		WORD	     01D8AH,00188H,01D64H
		WORD	     00188H,01D62H,00188H,01D65H,00188H,01D65H,00188H
		WORD	     01D04H,00188H,01D89H,00188H,01D07H,00188H,01D8BH
		BYTE	060H,087H,000H,021H
		WORD	     01D9AH,00188H,01D74H
		WORD	     00188H,01D72H,00188H,01D75H,00188H,01D75H,00188H
		WORD	     01D14H,00188H,01D99H,00188H,01D17H,00188H,01D9BH
;
;++++++++++ donodeetaa wo keshimasuka ? ++++++++++++++++++++
;
		BYTE	060H,0C3H,000H,031H
		WORD	     00C67H,00188H,00C44H,00188H,00D06H,00188H,00D89H,00188H
		WORD	     00CC8H,00188H,00D89H,00188H,00C0EH,00188H,00C0BH,00188H
		WORD	     00C21H,00188H,00C60H,00188H,00C22H,00188H,00C08H,00188H
		WORD	     00D86H
;
		BYTE	060H,0E3H,000H,031H
		WORD	     00C77H,00188H,00C54H,00188H,00D16H,00188H,00D99H,00188H
		WORD	     00CD8H,00188H,00D99H,00188H,00C1EH,00188H,00C1BH,00188H
		WORD	     00C31H,00188H,00C70H,00188H,00C32H,00188H,00C18H,00188H
		WORD	     00D96H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
KLPL4		EQU	$
		BYTE	063H,025H,000H,01BH
		WORD	     01C05H,00188H,01C8AH,00188H,01C82H,00188H,01C69H,00188H
		WORD	     00188H,01C05H,00188H,01C63H,00188H,01C6AH
		BYTE	063H,045H,000H,01BH
		WORD	     01C15H,00188H,01C9AH,00188H,01C92H,00188H,01C79H,00188H
		WORD	     00188H,01C15H,00188H,01C73H,00188H,01C7AH
;
		BYTE	0FFH
;
;
TILBGE2		EQU	$
;
;++++++++++++++++++++++++++++++++++++++
;
TILBGD3		EQU	$	; KILL MODE2
;
KLPL1		EQU	$	; 1
		BYTE	061H,028H,000H,02DH
		WORD	     01D41H,00188H,00188H
KLPL11		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
KLPL12		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
		BYTE	061H,048H,000H,02DH
		WORD	     01D51H,01D98H,00188H
KLPL13		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
KLPL14		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
KLPL2		EQU	$	; 2
		BYTE	061H,0A8H,000H,02DH
		WORD	     01D42H,00188H,00188H
KLPL21		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
KLPL22		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
		BYTE	061H,0C8H,000H,02DH
		WORD	     01D52H,01D98H,00188H
KLPL23		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
KLPL24		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
KLPL3		EQU	$	; 3
		BYTE	062H,028H,000H,02DH
		WORD	     01D43H,00188H,00188H
KLPL31		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
KLPL32		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
		BYTE	062H,048H,000H,02DH
		WORD	     01D53H,01D98H,00188H
KLPL33		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
KLPL34		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H,00188H
		WORD	     00188H,00188H
;
		BYTE	0FFH
;
TILBGE3		EQU	$
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ copy mode ++++++++++++++++++++++++++++++++++++++
;
TICPBGD1	EQU	$
		BYTE	060H,068H,000H,01DH
		WORD	     01D8AH,00188H,01CACH,00188H,01D23H,00188H,01D89H,00188H
		WORD	     01D04H,00188H,01D89H,00188H,01D07H,00188H,01D8BH
;
		BYTE	060H,088H,000H,01DH
		WORD	     01D9AH,00188H,01CBCH,00188H,01D33H,00188H,01D99H,00188H
		WORD	     01D14H,00188H,01D99H,00188H,01D17H,00188H,01D9BH
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ waku 1 +++++++++++++++++++++++++++++++++++++++++
;
		BYTE	010H,0E2H,000H,003H
		WORD	     04882H,00881H
;
		BYTE	010H,0EDH,000H,003H
		WORD	     00881H,00882H
;
		BYTE	011H,002H,0C0H,014H
		WORD	     04883H
;
		BYTE	011H,00EH,0C0H,014H
		WORD	     00883H
;
		BYTE	012H,062H,000H,001H
		WORD	     0C882H
;
		BYTE	012H,063H,040H,014H
		WORD	     08881H
;
		BYTE	012H,06EH,000H,001H
		WORD	     08882H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ waku 2 +++++++++++++++++++++++++++++++++++++++++
;
;.'91/.9/12.[THU]			BYTE	012H,0A2H,000H,001H
;.'91/.9/12.[THU]			WORD	     04882H
;.'91/.9/12.[THU]	;
;.'91/.9/12.[THU]			BYTE	012H,0A3H,040H,020H
;.'91/.9/12.[THU]			WORD	     00881H
;.'91/.9/12.[THU]	;
;.'91/.9/12.[THU]			BYTE	012H,0B4H,000H,001H
;.'91/.9/12.[THU]			WORD	     00882H
;.'91/.9/12.[THU]	;
;.'91/.9/12.[THU]			BYTE	012H,0C2H,0C0H,008H
;.'91/.9/12.[THU]			WORD	     04883H
;.'91/.9/12.[THU]	;
;.'91/.9/12.[THU]			BYTE	012H,0D4H,0C0H,008H
;.'91/.9/12.[THU]			WORD	     00883H
;.'91/.9/12.[THU]	;
;.'91/.9/12.[THU]			BYTE	013H,062H,000H,001H
;.'91/.9/12.[THU]			WORD	     0C882H
;.'91/.9/12.[THU]	;
;.'91/.9/12.[THU]			BYTE	013H,063H,040H,020H
;.'91/.9/12.[THU]			WORD	     08881H
;.'91/.9/12.[THU]	;
;.'91/.9/12.[THU]			BYTE	013H,074H,000H,001H
;.'91/.9/12.[THU]			WORD	     08882H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ yappari yameru +++++++++++++++++++++++++++++++++
;
		BYTE	063H,025H,000H,01BH
		WORD	     01C05H,00188H,01C8AH,00188H,01C82H,00188H,01C69H,00188H
		WORD	     00188H,01C05H,00188H,01C63H,00188H,01C6AH
;
		BYTE	063H,045H,000H,01BH
		WORD	     01C15H,00188H,01C9AH,00188H,01C92H,00188H,01C79H,00188H
		WORD	     00188H,01C15H,00188H,01C73H,00188H,01C7AH
;
		BYTE	0FFH
;
;
;
;
TICPBGE1	EQU	$
;
;
;++++++++++ dore wo ? ++++++++++++++++++++++++++++++++++++++
;
		BYTE	060H,0C5H,000H,00DH
		WORD	     00C67H,00188H,00C6BH,00188H,00C0EH,00188H,00D86H
;
		BYTE	060H,0E5H,000H,00DH
		WORD	     00C77H,00188H,00C7BH,00188H,00C1EH,00188H,00D96H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ 1.???? +++++++++++++++++++++++++++++++++++++++++
;
		BYTE	061H,025H,000H,011H
		WORD	     01D41H,00188H
;
CPNAM11		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
		BYTE	061H,045H,000H,011H
		WORD	     01D51H,01D98H
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ 2.???? +++++++++++++++++++++++++++++++++++++++++
;
		BYTE	061H,0A5H,000H,011H
		WORD	     01D42H,00188H
;
CPNAM21		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
		BYTE	061H,0C5H,000H,011H
		WORD	     01D52H,01D98H
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ 3.???? +++++++++++++++++++++++++++++++++++++++++
;
		BYTE	062H,025H,000H,011H
		WORD	     01D43H,00188H
;
CPNAM31		EQU	$
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
		BYTE	062H,045H,000H,011H
		WORD	     01D53H,01D98H
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
;
;++++++++++ waku 3 space +++++++++++++++++++++++++++++++++++
;
		BYTE	010H,0F1H,040H,018H
		WORD	     0087FH
;
		BYTE	011H,011H,0C0H,00CH
		WORD	     0087FH
;
		BYTE	011H,01DH,0C0H,00CH
		WORD	     0087FH
;
		BYTE	011H,0F1H,040H,018H
		WORD	     0087FH
;
		BYTE	0FFH
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
TICPBGE2        EQU     $
;
;++++++++++ doko ni ? ++++++++++++++++++++++++++++++++++++++
;
		BYTE	060H,0D4H,000H,00DH
		WORD	     00C67H,00188H,00C0CH,00188H,00C41H,00188H,00D86H
;
		BYTE	060H,0F4H,000H,00DH
		WORD	     00C77H,00188H,00C1CH,00188H,00C51H,00188H,00D96H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
		BYTE	061H,034H,000H,011H
CPNAME01	EQU	$
		WORD	     00188H,00188H
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
		BYTE	061H,054H,000H,011H
CPNAME02	EQU	$
		WORD	     00188H,01D98H
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
		BYTE	061H,0B4H,000H,011H
CPNAME03	EQU	$
		WORD	     00188H,00188H
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
		BYTE	061H,0D4H,000H,011H
CPNAME04	EQU	$
		WORD	     00188H,01D98H
		WORD	     00188H,00188H,00188H,00188H,00188H,00188H,00188H
;
		BYTE	0FFH
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;
TICPBGE3        EQU     $
;
; ------ < touroku gamen BG data > -------------------------
;
TOROKUST	EQU	$      
;						: BUCK COLOR
		HEX	10,00,41,7E
		WORD	0890H
		HEX	10,C0,C0,2C
		WORD	0890H
		HEX	10,C1,C0,2C		; New
		WORD	0890H
		HEX	10,DE,C0,2C		; New
		WORD	0890H
		HEX	10,DF,C0,2C
		WORD	0890H
		HEX	13,80,40,3E
		WORD	0890H
;						: SMALL WAKU
		HEX	10,33,80,09
		WORD	4882H,4883H,4883H,4883H,0C882H
		HEX	10,34,40,10
		WORD	0881H
		HEX	10,3D,80,09
		WORD	0882H,0883H,0883H,0883H,08882H
		HEX	10,54,40,10		; beta
		WORD	087FH
		HEX	10,74,40,10		; beta
		WORD	087FH
		HEX	10,94,40,10		; beta
		WORD	087FH
		HEX	10,B4,40,10
		WORD	8881H
;						: BIG WAKU
		HEX	10,C2,00,01		; kado
		WORD	4885H
		HEX	10,C3,40,32
		WORD	0884H
		HEX	10,DD,00,01		; kado
		WORD	0885H
		HEX	10,E2,C0,26
		WORD	4893H
		HEX	10,FD,C0,26
		WORD	0893H
		HEX	13,62,00,01		; kado
		WORD	0C885H
		HEX	13,63,40,32
		WORD	8884H
		HEX	13,7D,00,01		; kado
		WORD	8885H
;						: NAMAE TOROKU
		HEX	10,43,00,0F
		WORD	0886H,0887H,0888H,0889H,088AH,088BH,088CH,088DH
		HEX	10,63,00,0F
		WORD	0896H,0897H,0898H,0899H,089AH,089BH,089CH,089DH
;						: LINE
		HEX	10,EF,C0,26
		WORD	0495H
;						: CHIP ( Botsu )
;;		HEX	10,08,00,01
;;		WORD	0891H
;;		HEX	10,39,00,01
;;		WORD	0891H
;;		HEX	10,72,00,01
;;		WORD	8892H
;;		HEX	10,88,00,01
;;		WORD	0891H
;;		HEX	10,C4,00,01
;;		WORD	0894H
;;		HEX	10,CC,00,01
;;		WORD	0894H
;;		HEX	11,3F,00,01
;;		WORD	0891H
;;		HEX	11,80,00,01
;;		WORD	0892H
;;		HEX	13,64,00,01
;;		WORD	8894H
;;		HEX	13,7C,00,01
;;		WORD	8894H
;;		HEX	13,81,00,01
;;		WORD	0891H
;;		HEX	13,88,00,01
;;		WORD	0892H
;;		HEX	13,94,00,01
;;		WORD	0891H
;
;
;
NAMEINBG3	EQU	$      
;					: a
		HEX	60,E3,00,39
		WORD	01C00H,00188H,01C01H,00188H,01C02H,00188H,01C03H,00188H,01C04H
		WORD	00188H,00188H,00188H,00188H,00188H,01C25H,00188H,01C26H,00188H,01C27H
		WORD	00188H,01C2DH,00188H,01C2EH,00188H,00188H,00188H,01CA0H
		WORD	00188H,01CA1H
		HEX	61,03,00,39
		WORD	01C10H,00188H,01C11H,00188H,01C12H,00188H,01C13H,00188H,01C14H
		WORD	00188H,00188H,00188H,00188H,00188H,01C35H,00188H,01C36H,00188H,01C37H
		WORD	00188H,01C3DH,00188H,01C3EH,00188H,00188H,00188H,01CB0H
		WORD	00188H,01CB1H
;					: ka
		HEX	61,23,00,39
		WORD	01C08H,00188H,01C09H,00188H,01C0AH,00188H,01C0BH,00188H,01C0CH
		WORD	00188H,00188H,00188H,00188H,00188H,01C2FH,00188H,01C45H,00188H,01C46H
		WORD	00188H,01C47H,00188H,01C4DH,00188H,00188H,00188H,01CA8H
		WORD	00188H,01CA9H
		HEX	61,43,00,39
		WORD	01C18H,00188H,01C19H,00188H,01C1AH,00188H,01C1BH,00188H,01C1CH
		WORD	00188H,00188H,00188H,00188H,00188H,01C3FH,00188H,01C55H,00188H,01C56H
		WORD	00188H,01C57H,00188H,01C5DH,00188H,00188H,00188H,01CB8H
		WORD	00188H,01CB9H
;					: sa
		HEX	61,63,00,39
		WORD	01C20H,00188H,01C21H,00188H,01C22H,00188H,01C23H,00188H,01C24H
		WORD	00188H,00188H,00188H,00188H,00188H,01C4EH,00188H,01C4FH,00188H,01C65H
		WORD	00188H,01C66H,00188H,01C67H,00188H,00188H,00188H,01CC0H
		WORD	00188H,01CC1H
		HEX	61,83,00,39
		WORD	01C30H,00188H,01C31H,00188H,01C32H,00188H,01C33H,00188H,01C34H
		WORD	00188H,00188H,00188H,00188H,00188H,01C5EH,00188H,01C5FH,00188H,01C75H
		WORD	00188H,01C76H,00188H,01C77H,00188H,00188H,00188H,01CD0H
		WORD	00188H,01CD1H
;					: ta
		HEX	61,A3,00,39
		WORD	01C28H,00188H,01C29H,00188H,01C2AH,00188H,01C2BH,00188H,01C2CH
		WORD	00188H,00188H,00188H,00188H,00188H,01C6DH,00188H,01C6EH,00188H,01C6FH
		WORD	00188H,01C80H,00188H,01C81H,00188H,00188H,00188H,01CC8H
		WORD	00188H,01CC9H
		HEX	61,C3,00,39
		WORD	01C38H,00188H,01C39H,00188H,01C3AH,00188H,01C3BH,00188H,01C3CH
		WORD	00188H,00188H,00188H,00188H,00188H,01C7DH,00188H,01C7EH,00188H,01C7FH
		WORD	00188H,01C90H,00188H,01C91H,00188H,00188H,00188H,01CD8H
		WORD	00188H,01CD9H
; 					: na
		HEX	61,E3,00,39
		WORD	01C40H,00188H,01C41H,00188H,01C42H,00188H,01C43H,00188H,01C44H
		WORD	00188H,00188H,00188H,00188H,00188H,01C82H,00188H,01C83H,00188H,01C84H
		WORD	00188H,01C85H,00188H,01C86H,00188H,00188H,00188H,01CE0H
		WORD	00188H,01CE1H
		HEX	62,03,00,39
		WORD	01C50H,00188H,01C51H,00188H,01C52H,00188H,01C53H,00188H,01C54H
		WORD	00188H,00188H,00188H,00188H,00188H,01C92H,00188H,01C93H,00188H,01C94H
		WORD	00188H,01C95H,00188H,01C96H,00188H,00188H,00188H,01CF0H
		WORD	00188H,01CF1H
;					: ha 
		HEX	62,23,00,39
		WORD	01C48H,00188H,01C49H,00188H,01C4AH,00188H,01C4BH,00188H,01C4CH
		WORD	00188H,00188H,00188H,00188H,00188H,01C8BH,00188H,01C8CH,00188H,01C8DH
		WORD	00188H,01C8EH,00188H,01C8FH,00188H,00188H,00188H,01CE8H
		WORD	00188H,01CE9H
		HEX	62,43,00,39
		WORD	01C58H,00188H,01C59H,00188H,01C5AH,00188H,01C5BH,00188H,01C5CH
		WORD	00188H,00188H,00188H,00188H,00188H,01C9BH,00188H,01C9CH,00188H,01C9DH
		WORD	00188H,01C9EH,00188H,01C9FH,00188H,00188H,00188H,01CF8H
		WORD	00188H,01CF9H
;					: ma
		HEX	62,63,00,39
		WORD	01C60H,00188H,01C61H,00188H,01C62H,00188H,01C63H,00188H,01C64H
		WORD	00188H,00188H,00188H,00188H,00188H,01C87H,00188H,01C88H,00188H,01C89H
		WORD	00188H,00188H,00188H,01C8AH,00188H,00188H,00188H,01D00H
		WORD	00188H,01D01H
		HEX	62,83,00,39
		WORD	01C70H,00188H,01C71H,00188H,01C72H,00188H,01C73H,00188H,01C74H
		WORD	00188H,00188H,00188H,00188H,00188H,01C97H,00188H,01C98H,00188H,01C99H
		WORD	00188H,00188H,00188H,01C9AH,00188H,00188H,00188H,01D10H
		WORD	00188H,01D11H
;					: ya yu yo
		HEX	62,A3,00,11
		WORD	01C05H,00188H,00188H,00188H,01C06H,00188H,00188H,00188H,01C07H
		HEX	62,C3,00,11
		WORD	01C15H,00188H,00188H,00188H,01C16H,00188H,00188H,00188H,01C17H
;					: ya (ka)
		HEX	62,BD,00,01
		WORD	01CA5H
		HEX	62,DD,00,01
		WORD	01CB5H
;					: ra	
		HEX	62,E3,00,11
		WORD	01C68H,00188H,01C69H,00188H,01C6AH,00188H,01C6BH,00188H,01C6CH
		HEX	63,03,00,11
		WORD	01C78H,00188H,01C79H,00188H,01C7AH,00188H,01C7BH,00188H,01C7CH
;					: wa o n -
		HEX	63,23,00,11
		WORD	01C0DH,00188H,01C0EH,00188H,01C0FH,00188H,00188H,00188H,01D89H
		HEX	63,43,00,11
		WORD	01C1DH,00188H,01C1EH,00188H,01C1FH,00188H,00188H,00188H,01D99H
;					: ra (ka)
		HEX	62,FD,00,05
		WORD	01D08H,00188H,01D09H
		HEX	63,1D,00,05
		WORD	01D18H,00188H,01D19H
;					: wa o (ka)
		HEX	63,3d,00,05
		WORD	01CADH,00188H,01CAEH
		HEX	63,5d,00,05
		WORD	01CBDH,00188H,01CBEH
;					: end (left)
		HEX	62,F1,00,0D
		WORD	01D8AH,00188H,01D8BH,00188H,01D4EH,01D67H,01D4DH
		HEX	63,11,00,0D
		WORD	01D9AH,00188H,01D9BH,00188H,01D5EH,01D77H,01D5DH
;
;
NAMEINBG32	EQU	$      
;					: u
		HEX	64,E1,00,39
		WORD	01CA2H,00188H,01CA3H,00188H,01CA4H,00188H,00188H,00188H,00188H
		WORD	00188H,01CC5H,00188H,01CC6H,00188H,01CC7H,00188H,01CCDH,00188H,01CCEH
		WORD	00188H,00188H,00188H,01D4AH,00188H,01D4BH,00188H,01D4CH
		WORD	00188H,01D4DH
		HEX	65,01,00,39
		WORD	01CB2H,00188H,01CB3H,00188H,01CB4H,00188H,00188H,00188H,00188H
		WORD	00188H,01CD5H,00188H,01CD6H,00188H,01CD7H,00188H,01CDDH,00188H,01CDEH
		WORD	00188H,00188H,00188H,01D5AH,00188H,01D5BH,00188H,01D5CH
		WORD	00188H,01D5DH
;					: ku
		HEX	65,21,00,39
		WORD	01CAAH,00188H,01CABH,00188H,01CACH,00188H,00188H,00188H,00188H
		WORD	00188H,01CCFH,00188H,01CE5H,00188H,01CE6H,00188H,01CE7H,00188H,01CEDH
		WORD	00188H,00188H,00188H,01D4EH,00188H,01D4FH,00188H,01D60H
		WORD	00188H,01D61H
		HEX	65,41,00,39
		WORD	01CBAH,00188H,01CBBH,00188H,01CBCH,00188H,00188H,00188H,00188H
		WORD	00188H,01CDFH,00188H,01CF5H,00188H,01CF6H,00188H,01CF7H,00188H,01CFDH
		WORD	00188H,00188H,00188H,01D5EH,00188H,01D5FH,00188H,01D70H
		WORD	00188H,01D71H
;					: su
		HEX	65,61,00,39
		WORD	01CC2H,00188H,01CC3H,00188H,01CC4H,00188H,00188H,00188H,00188H
		WORD	00188H,01CEEH,00188H,01CEFH,00188H,01D05H,00188H,01D06H,00188H,01D07H
		WORD	00188H,00188H,00188H,01D62H,00188H,01D63H,00188H,01D64H
		WORD	00188H,01D65H
		HEX	65,81,00,39
		WORD	01CD2H,00188H,01CD3H,00188H,01CD4H,00188H,00188H,00188H,00188H
		WORD	00188H,01CFEH,00188H,01CFFH,00188H,01D15H,00188H,01D16H,00188H,01D17H
		WORD	00188H,00188H,00188H,01D72H,00188H,01D73H,00188H,01D74H
		WORD	00188H,01D75H
;					: tsu
		HEX	65,A1,00,39
		WORD	01CCAH,00188H,01CCBH,00188H,01CCCH,00188H,00188H,00188H,00188H
		WORD	00188H,01D0DH,00188H,01D0EH,00188H,01D0FH,00188H,01D20H,00188H,01D21H
		WORD	00188H,00188H,00188H,01D66H,00188H,01D67H,00188H,01D68H
		WORD	00188H,01D69H
		HEX	65,C1,00,39
		WORD	01CDAH,00188H,01CDBH,00188H,01CDCH,00188H,00188H,00188H,00188H
		WORD	00188H,01D1DH,00188H,01D1EH,00188H,01D1FH,00188H,01D30H,00188H,01D31H
		WORD	00188H,00188H,00188H,01D76H,00188H,01D77H,00188H,01D78H
		WORD	00188H,01D79H
;					: nu
		HEX	65,E1,00,39
		WORD	01CE2H,00188H,01CE3H,00188H,01CE4H,00188H,00188H,00188H,00188H
		WORD	00188H,01D22H,00188H,01D23H,00188H,01D24H,00188H,01D25H,00188H,01D26H
		WORD	00188H,01D88H,00188H,01D6AH,00188H,01D6BH,00188H,01D6CH
		WORD	00188H,01D6DH
		HEX	66,01,00,39
		WORD	01CF2H,00188H,01CF3H,00188H,01CF4H,00188H,00188H,00188H,00188H
		WORD	00188H,01D32H,00188H,01D33H,00188H,01D34H,00188H,01D35H,00188H,01D36H
		WORD	00188H,01D88H,00188H,01D7AH,00188H,01D7BH,00188H,01D7CH
		WORD	00188H,01D7DH
;					: fu
		HEX	66,21,00,39
		WORD	01CEAH,00188H,01CEBH,00188H,01CECH,00188H,00188H,00188H,00188H
		WORD	00188H,01D2BH,00188H,01D2CH,00188H,01D2DH,00188H,01D2EH,00188H,01D2FH
		WORD	00188H,01D88H,00188H,01D6EH,00188H,01D6FH,00188H,01D80H
		WORD	00188H,01D81H
		HEX	66,41,00,39
		WORD	01CFAH,00188H,01CFBH,00188H,01CFCH,00188H,00188H,00188H,00188H
		WORD	00188H,01D3BH,00188H,01D3CH,00188H,01D3DH,00188H,01D3EH,00188H,01D3FH
		WORD	00188H,01D88H,00188H,01D7EH,00188H,01D7FH,00188H,01D90H
		WORD	00188H,01D91H
;					: mu
		HEX	66,61,00,39
		WORD	01D02H,00188H,01D03H,00188H,01D04H,00188H,00188H,00188H,00188H
		WORD	00188H,01D27H,00188H,01D28H,00188H,01D29H,00188H,00188H,00188H,01D2AH
		WORD	01D88H,00188H,00188H,01D82H,00188H,01D83H
		WORD	00188H,01D89H,00188H,01D8EH
		HEX	66,81,00,39
		WORD	01D12H,00188H,01D13H,00188H,01D14H,00188H,00188H,00188H,00188H
		WORD	00188H,01D37H,00188H,01D38H,00188H,01D39H,00188H,00188H,00188H,01D3AH
		WORD	01D88H,00188H,00188H,01D92H,00188H,01D93H
		WORD	00188H,01D99H,00188H,01D9EH
;					: yu yo
		HEX	66,A1,00,09
		WORD	01CA6H,00188H,00188H,00188H,01CA7H
		HEX	66,C1,00,09
		WORD	01CB6H,00188H,00188H,00188H,01CB7H
;					: ru ro
		HEX	66,E1,00,09
		WORD	01D0AH,00188H,01D0BH,00188H,01D0CH
		HEX	67,01,00,09
		WORD	01D1AH,00188H,01D1BH,00188H,01D1CH
;					: n -
		HEX	67,21,00,09
		WORD	01CAFH,00188H,00188H,00188H,01D89H
		HEX	67,41,00,09
		WORD	01CBFH,00188H,00188H,00188H,01D99H
;					: end
		HEX	66,F7,00,0D
		WORD	01D8AH,00188H,01D8BH,00188H,01D4EH,01D67H,01D4DH
		HEX	67,17,00,0D
		WORD	01D9AH,00188H,01D9BH,00188H,01D5EH,01D77H,01D5DH
;
		BYTE	0FFH
;
;
;----------------------------------------------------------
;
NAMEXP	EQU	$
	HEX	060,070,080,088
;
NAMECH	EQU	$
;;;;;;;;	HEX	060,062,064,065
	HEX	069,06B,06D,06E
;
NAMEST	EQU	$
	PHB
	PHK
	PLB			; PBR => DBR
;
	LDY	#4-1
	LDX	#4*4-4
NAM000	EQU	$
	LDA	#2
	STA	!OAMSB,Y
	LDA	NAMEXP,Y
	STA	!OAM,X		; x position set !!
	LDA	#068H
	STA	!OAM+1,X	; y position set !!
	LDA	NAMECH,Y
	STA	!OAM+2,X	; chara No. set !!
	LDA	#00110010B
	STA	!OAM+3,X	; atoribuut set !!
	DEX
	DEX
	DEX
	DEX
	DEY
	BPL	NAM000
;
	PLB			; DBR reset !!
;
	RTS
;
;
;****************************************************************
;*	OPENING DEMO						*
;****************************************************************
;
OPDEMO	EQU	$
	LDA	<BLKFLG
	BEQ	OPDEMO40
;
	CMP	#080H
	BEQ	OPDEMO40
;
	LDA	<ZWORK+2
	BEQ	OPDEMO40
;
	CMP	#2
	BEQ	OPDEMO40
;
	CMP	#6
	BEQ	OPDEMO40
;
		LDA	<KEYA2
		AND	#10010000B
		BEQ	OPDEMO40		; start on ?
;					; yes
	LDA	#9
	STA	<ZWORK+2
;
;
OPDEMO40	EQU	$
	LDA	<ZWORK+2
	ASL	A
	TAX
	JMP	(OPADDR,X)
;
OPADDR	EQU	$
	WORD	FADEOT0
	WORD	DMINIT
;;;	WORD	FADEOT
;;;	WORD	FADEIN
;;;	WORD	OPD000
	WORD	FADEOT
	WORD	OPSCR
	WORD	FADEIN
	WORD	OPDM
	WORD	FADEOT
	WORD	OPSCR
	WORD	OPDM
	WORD	DMEND
;
;
FADEOT0	EQU	$
	LDA	<BLKFLG
	BEQ	FOT0040		; fade out ok ? [ yes:FOT040 ]
;
	DEC	<BLKFLG
	RTL
;
FOT0040	EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //	LDA	#080H
;// 03.09.17 //	STA	2100H
;// 03.09.17 //	STA	<BLKFLG		; blanking on
		LDA	#0FFH
		STA	!IRQSWFG	; IRQ off
		STZ	!POLYCFG	; poly-gon off
		STZ	!transfer_flag
	INC	<ZWORK+2
	RTL
;
;
;
DMINIT	EQU	$
	LDX	#050H
DMIT20	EQU	$
;---- ZWORK clear
	STZ	<ZWORK,X
	DEX
	BPL	DMIT20
;
		JSL	>VRAMCL	; Vcl
;
		JSL	>CHSCHN1	; title-demo charcater set
;
		LDA	#001H
		STA	!BG3BGC
		STZ	!CGSTPT+1
		JSL	>B3CGSET	;
		LDA	#002H
		STA	!CGSTPT+1
		JSL	>B3CGSET	;
		JSL	>PLCGSET	; 
		LDA	#000H
		STA	>CGWORK+03AH
		LDA	#038H
		STA	>CGWORK+03BH
;
		INC	<CGVMAF
;
		LDA	#014H
		STA	<SCCV3
;
	JSR	HAIWT1			; haikei data set sub
;
	IDX16
	REP	#00010000B		; index 16bit mode
;
	STZ	!INITAL			; messege initial
	LDX	#MS_0420
	STX	MSGENOL			;
;;;	LDA	#080H
;;;	STA	<ZWORK+0		;
;;;	STZ	<ZWORK+0		;
;;	STZ	<ZWORK+1		;
	STZ	<SCCV2
	STZ	<SCCV2+1
;
	LDX	#3740
	STX	!ITEMMD			; timer initial set !!	
;
;;;	STZ	<ZWORK+3
;;;	STZ	<ZWORK+4
;;;	STZ	<ZWORK+40H
	INC	<ZWORK+2
	INC	<ZWORK+2
	INC	<ZWORK+2
;
	IDX8
	SEP	#00010000B		; index 8bit mode
;
		JSR	TLHDIN		; title window set
		STZ	<WD2123		; window mask BG1.BG2 set
		STZ	<WD2124		;             BG4.Bg3
		LDA	#10110000B
		STA	<WD2125		;             COL,OBJ
		LDA	#00000011B
		STA	<WDMAIN
		STZ	<WDSUB
		LDA	#00100101B
		STA	<WD2132R
		LDA	#01000101B
		STA	<WD2132G
		LDA	#10000101B
		STA	<WD2132B	; color set
		LDA	#00010000B
		STA	<WD2130
		LDA	#10100011B
		STA	<WD2131
		STZ	212AH
		STZ	212BH
;
		LDA	#11000000B
		STA	<WD420C		; H-DMA ch"ON"
;
		LDA	#006H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
;
	INC	<ZWORK+7
	RTL
;
;
FADEIN0	EQU	$
	LDA	<BLKFLG
	CMP	#00FH
	BEQ	FI0040		; fade in ok ? [ yes:FIN040 ]
;
	DEC	<ZWORK+3EH
	BPL	FI0020
;
	INC	<BLKFLG
	LDA	#1
	STA	<ZWORK+3EH
FI0020	EQU	$
	RTS
;
;
FI0040	EQU	$
	INC	<ZWORK+3FH
	RTS
;
;
FADEIN	EQU	$
	LDA	<BLKFLG
	CMP	#00FH
	BEQ	FIN040		; fade in ok ? [ yes:FIN040 ]
;
	DEC	<ZWORK+3EH
	BPL	FIN020
;
	INC	<BLKFLG
	LDA	#1
	STA	<ZWORK+3EH
FIN020	EQU	$
	RTL
;
FADEOT	EQU	$
	LDA	<BLKFLG
	BEQ	FOT040		; fade out ok ? [ yes:FOT040 ]
;
	DEC	<ZWORK+3EH
	BPL	FOT020
;
	DEC	<BLKFLG
	LDA	#1
	STA	<ZWORK+3EH
FOT020	EQU	$
	RTL
;
FOT040	EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //	LDA	#080H
;// 03.09.17 //	STA	2100H
;// 03.09.17 //	STA	<BLKFLG		; blanking on
;
		JSL	>VRAMCL	; Vcl
;
;// 03.07.25 //	LDA	<ZWORK+3
;// 03.07.25 //	CMP	#6
;// 03.07.25 //	BNE	FOT060
;// 03.07.25 //;
;// 03.07.25 //	STZ	<ZWORK+3
;// 03.07.25 //	STZ	<SLMODE
;// 03.07.25 //	LDA	#2
;// 03.07.25 //	STA	<GAMEMD
;// 03.07.25 //	STA	<JRSBPT
;// 03.07.25 //	RTL
;
;
FOT060	EQU	$
FIN040	EQU	$
	INC	<ZWORK+2
	RTL
;
;
OPSCR	EQU	$
	LDA	<ZWORK+3
	ASL	A
	TAX
	JMP	(OPSCAD,X)
;
OPSCAD	EQU	$
	WORD	OPSCR0
	WORD	OPSCR1
	WORD	OPSCR2
	WORD	OPSCR3
	WORD	OPSCR4
	WORD	OPSCR8
;;;	WORD	OPSCR9
;;;	WORD	OPSCR9
;;;	WORD	OPSCR9
;;;	WORD	OPSCR9
;;;	WORD	OPSCR9
;;;	WORD	OPSCR9
;;;	WORD	OPSCR9
;;;	WORD	OPSCR9
;
;
OPSCR0	EQU	$
	STZ	<ZWORK+6
	INC	<ZWORK+2
	STZ	<BLKFLG
	RTL
;
;
OPSCR1	EQU	$
	LDA	#00010011B
	STA	2107H
	LDA	#00000011B
	STA	2108H
;
;------- mode change !!
	LDA	#080H
	STA	<WD2130
	LDA	#021H
	STA	<WD2131
	LDA	#00000111B
	STA	2105H
	STA	<MD2105			; mode<7> set
	LDA	#10000000B
	STA	211AH
	JSL	>MPDP200
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#000EDH
		STA	!CENTY
		LDA	#00100H
		STA	!CENTX
;
		LDA	#00080H
		STA	!SSCCH1
		LDA	#000C0H
		STA	!SSCCV1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
	LDA	#0FFH
	STA	!ZOOM
	JSR	ZOOMUP	
;
	LDA	#1
	STA	<ZWORK+5
	INC	<ZWORK+2
	STZ	<BLKFLG
	RTL
;
;
OPSCR2	EQU	$
		STZ	420CH
		STZ	<WD420C		; H-dma off
		LDA	#00000010B
		STA	<WD2130
		LDA	#00100000B
		STA	<WD2131
;
		LDA	#C_2W0
		STA	!OJBSPT
		JSL	>CHSCHN2	; title character set
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	<ZWORK+0
	PHA
	LDA	<ZWORK+2
	PHA			; Zwork2 push
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
		LDA	#074H
;;;;;;;;		LDA	#095H
		JSL	>TILBGWT0	; gyoku-za
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	PLA
	STA	<ZWORK+2	; Zwork2 reset
	PLA
	STA	<ZWORK+0
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
		LDA	#000H
		STA	!DANJC
		LDA	#000H
		STA	!BOBOJC
		LDA	#00EH
		STA	!EYOJC0
		LDA	#003H
		STA	!EYOJC1		; color point set
;
		LDX	#07EH
		LDA	#000H
		JSL	>TILBGWT1	; gyoku-za
		LDA	#000H
		STA	>CGWORK+03AH
		LDA	#038H
		STA	>CGWORK+03BH
;
;
	STZ	!INITAL			; messege initial
	LDA	#LOW MS_0421
	STA	MSGENOL			;
	LDA	#HIGH MS_0421
	STA	MSGENOL+1		;
;
	LDA	#2
	STA	<ZWORK+5
	LDA	#0E0H
	STA	<ZWORK+0CH
	LDA	#0C0H
	STA	<ZWORK+44H
OPSCR900	EQU	$
	INC	<ZWORK+2
	STZ	<BLKFLG
;
	STZ	<SCCV3
	LDA	!SSCCH2+1
	AND	#00000001B
	STA	!SSCCH2+1
	LDA	!SSCCV2+1
	AND	#00000001B
	STA	!SSCCV2+1
	LDA	<SCCH2+1
	AND	#00000001B
	STA	<SCCH2+1
	LDA	<SCCV2+1
	AND	#00000001B
	STA	<SCCV2+1
;
	RTL
;
;
OPSCR3	EQU	$
		STZ	<WD2130
		STZ	<WD2131
;
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	<ZWORK+0
	PHA
	LDA	<ZWORK+2
	PHA			; Zwork2 push
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
		LDA	#073H
;;;;;;;;		LDA	#094H
		JSL	>TILBGWT0	; gyoku-za
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	PLA
	STA	<ZWORK+2	; Zwork2 reset
	PLA
	STA	<ZWORK+0
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
		LDA	#002H
		STA	!DANJC
		LDA	#000H
		STA	!BOBOJC
		LDA	#00EH
		STA	!EYOJC0
		LDA	#003H
		STA	!EYOJC1		; color point set
;
		LDX	#07FH
		LDA	#001H
		JSL	>TILBGWT1	; rou-ya
		LDA	#000H
		STA	>CGWORK+03AH
		LDA	#038H
		STA	>CGWORK+03BH
;
;
	STZ	!INITAL			; messege initial
	LDA	#LOW MS_0422
	STA	MSGENOL			;
	LDA	#HIGH MS_0422
	STA	MSGENOL+1		;
;
	LDA	#094H
	STA	<ZWORK+0BH		; shisai y initial
	LDA	#068H
	STA	<ZWORK+10H
	STZ	<ZWORK+11H
	STZ	<ZWORK+12H
	STZ	<ZWORK+13H
	STZ	<ZWORK+20H
	STZ	<ZWORK+30H
	STZ	<ZWORK+3FH
	LDA	#0FFH
	STA	<ZWORK+5
	LDA	#0D0H
	STA	<ZWORK+44H
		JMP	OPSCR900
;
;
;
OPSCR4	EQU	$
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	<ZWORK+0
	PHA
	LDA	<ZWORK+2
	PHA			; Zwork2 push
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
		LDA	#075H
;;;;;;;;		LDA	#096H
		JSL	>TILBGWT0	; gyoku-za
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	PLA
	STA	<ZWORK+2	; Zwork2 reset
	PLA
	STA	<ZWORK+0
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
		LDA	#000H
		STA	!DANJC
		LDA	#000H
		STA	!BOBOJC
		LDA	#00EH
		STA	!EYOJC0
		LDA	#003H
		STA	!EYOJC1		; color point set
		STZ	!CGSTPT+1
		JSL	>TILBGWT2	; color set
;
		LDX	#07FH
		LDA	#002H
		JSL	>TILBGWT1	; shisai-room
		LDA	#000H
		STA	>CGRAM+03AH
		STA	>CGWORK+03AH
		LDA	#038H
		STA	>CGRAM+03BH
		STA	>CGWORK+03BH
;
	STZ	!INITAL			; messege initial
	LDA	#LOW MS_0423
	STA	MSGENOL			;
	LDA	#HIGH MS_0423
	STA	MSGENOL+1		;
;
	LDA	#0FFH
	STA	<ZWORK+5
	LDA	#070H
	STA	<ZWORK+10H
	STA	<ZWORK+42H
	LDA	#070H
	STA	<ZWORK+43H
	LDA	#8
	STA	<ZWORK+12H
	STZ	<ZWORK+30H
	STZ	<ZWORK+31H
	STZ	<ZWORK+32H
	STZ	<ZWORK+3FH
	STZ	<ZWORK+40H
	STZ	<ZWORK+41H
	LDA	#0C0H
	STA	<ZWORK+44H
;
		JMP	OPSCR900
;
;
OPSCR8	EQU	$
;------- mode change !!
		REP	#00100000B	; memory 16bit mode
		JSL	>MPDP880	; mode<1> set
TILRETURN	EQU	$
		INC	!GMAPDF
;
		JSL	>TLIT820	; character reset
;
		JSL	>TILIT3		;
;
		JSL	>MSGETNP	; message buffer set
;
		STZ	<SCCV3
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	!CENTY
		STZ	!CENTX
;
		STZ	!SSCCH1
		STZ	!SSCCV1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#0F1H
		STA	!SOUND0
;// 03.09.16 //		STA	!SVSND0		; <sound0>
;
	STZ	<ZWORK+3
	STZ	<SLMODE
	LDA	#tp2
	STA	<GAMEMD
	STA	<JRSBPT
;
OPSCR9	EQU	$
;;;	LDA	#VT19
;;;	SEC
;;;	SBC	<ZWORK+3
;;;;;;	LDA	#VT10
;;;;;;	CLC
;;;;;;	ADC	<ZWORK+3
;;;	STA	<VRFLG
;;;	LDA	#07FH
;;;	STA	<ZWORK+4
;;;	INC	<ZWORK+2
;;;	STZ	<BLKFLG
	RTL
;
;
;-------
;
OPDM	EQU	$
	LDA	<ZWORK+3
	ASL	A
	TAX
	JMP	(OPDMAD,X)
;
OPDMAD	EQU	$
	WORD	OPD000
	WORD	OPD100
	WORD	OPD200
	WORD	OPD300
	WORD	OPD400
;;;	WORD	OPD500
;;;	WORD	OPD600
;;;	WORD	OPD700
;;;	WORD	OPD800
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;;;	WORD	OPD900
;
OPD000	EQU	$
	LDA	<FRCNT
	AND	#03
	BNE	OPD003		; scrool ? [ no:OPD003 ]
;
	INC	!SSCCV1
	INC	!SSCCH1
	INC	!SSCCV2
	DEC	!SSCCH2
;
OPD003	EQU	$
	LDA	<ZWORK+7
	BEQ	OPD005		; [ :OPD005 ]
;
	JSR	OPBGWT
;
	STZ	<ZWORK+7
	INC	<ZWORK+6
	INC	<ZWORK+6
OPD005	EQU	$
		STZ	<KEYA1L
		STZ	<KEYA2L
		STZ	<KEYA2
	JSL	>MSGE_I
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	DEC	!ITEMMD		; timer dec !!
;
	BNE	OPD020
;
OPD010	EQU	$
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	INC	<ZWORK+3
	DEC	<ZWORK+2
	DEC	<ZWORK+2
	DEC	<ZWORK+2
	BRA	OPD040
;
OPD020	EQU	$
;
	MEM16
;
	LDA	!ITEMMD
	CMP	#00018H
	BCS	OPD040		; 
;
	AND	#00001H
	BEQ	OPD040		;
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	DEC	<BLKFLG
OPD040	EQU	$
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	RTL
;
;
;;;SBCDT	EQU	$
;;;	WORD	00001H,00002H,00003H,00004H
;
OPD100	EQU	$
	LDA	!ZOOM
	CMP	#000H
	BEQ	OPD190
;
	CMP	#00FH
	BCS	OPD105
;
	DEC	<BLKFLG
OPD105	EQU	$	
	LDY	#1
	DEC	<ZWORK+5
	BNE	OPD180
;
	STY	<ZWORK+5
	LDA	!ZOOM
	SEC
	SBC	#1
	STA	!ZOOM
;
;;;	LDX	#0
;;;	CMP	#0EFH
;;;	BCS	OPD110
;;;;
;;;	INX
;;;	INX
;;;	CMP	#088H
;;;	BCS	OPD110
;;;;
;;;	INX
;;;	INX
OPD110	EQU	$
;;;;
;;;	MEM16
;;;	REP	#00100000B	; memory 16bit mode !!
;;;;
;;;	LDA	!CENTY
;;;	SEC
;;;	SBC	>SBCDT,X
;;;	CMP	#000EEH
;;;	BCS	OPD120
;;;;
;;;	LDA	#000EEH
;;;OPD120	EQU	$
;;;	STA	!CENTY
;;;;
;;;	MEM8
;;;	SEP	#00100000B	; memory 8bit mode !!
;;;;
OPD140	EQU	$
	JSR	ZOOMUP	
;
OPD180	EQU	$
	RTL
;
OPD190	EQU	$
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //	LDA	#10000000B
;// 03.09.17 //	STA	2100H			; blanking on
;// 03.09.17 //	STA	<BLKFLG		; blanking on
;
;
	LDA	#00001001B
	STA	2105H
	STA	<MD2105			; mode<1> set
		JSL	>VRAMCL	; Vcl
;
OPD195	EQU	$
	INC	<ZWORK+3
	DEC	<ZWORK+2
	DEC	<ZWORK+2
;;;	DEC	<ZWORK+2
	RTL
;
;
;---------------------
OMSBAD	EQU	$
	WORD	HONESB
	WORD	TANASB
;
OMXAD	EQU	$
	WORD	HONEX
	WORD	TANAX
;
OMYAD	EQU	$
	WORD	HONEY
	WORD	TANAY
;
OMCHAD	EQU	$
	WORD	HONECH
	WORD	TANACH
;
OMATAD	EQU	$
	WORD	HONEAT
	WORD	TANAAT
;
XADD	EQU	$
	HEX	50,68
;
YADD	EQU	$
	HEX	58,20
;
IDXDT	EQU	$
	BYTE	4-1,6-1
;
;---------------------
OPD200	EQU	$
	STZ	<ZWORK+0AH
	LDA	<ZWORK+32H
	BNE	OPD260
;
	LDA	<BLKFLG
	CMP	#00FH
	BEQ	OPD220
;
	INC	<BLKFLG
	BRA	OPD260
;
OPD220	EQU	$
	INC	<ZWORK+32H
OPD260	EQU	$
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	!SSCCV2
	BNE	OPD2A0
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
;;;		STZ	<KEYA1L
;;;		STZ	<KEYA2L
;;;		STZ	<KEYA2
;;;	JSL	>MSGE_I		; messege
;;;;
	JSR	MSSUB
;
	LDA	<ZWORK+44H
	BNE	OPD2C0
;
	LDA	<ZWORK+0CH
	CMP	#01FH
	BCS	OPD280
;
	AND	#00000001B
	BNE	OPD280
;
	DEC	<BLKFLG
OPD280	EQU	$
	DEC	<ZWORK+0CH
	BNE	OPD2C0
;
;;;	JMP	OPD195
OPD290	EQU	$
	INC	<ZWORK+3
	INC	<ZWORK+2
	RTL
;
;
	MEM16
;
OPD2A0	EQU	$
;;;	LDY	<ZWORK+5
;;;	DEY
;;;	BNE	OPD2B0
;
;;;	LDY	#2
	DEC	!SSCCV2
	DEC	!SSCCV1
;
OPD2B0	EQU	$
;;;	STY	<ZWORK+5
OPD2C0	EQU	$
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDX	#(2-1)*2
OPD2E0	EQU	$
	PHX
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	>OMSBAD,X
	STA	<ZWORK+0DH	; oamsb address set
	LDA	>OMXAD,X
	STA	<WORK2
	LDA	>OMYAD,X
	STA	<WORK4
	LDA	>OMCHAD,X
	STA	<WORK6
	LDA	>OMATAD,X
	STA	<WORK8
	TXA
	AND	#000FFH
	LSR	A
	TAX
	LDA	>YADD,X
	AND	#000FFH
	SEC
	SBC	!SSCCV2
	STA	<WORK0
	CMP	#0FFE0H
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	BMI	OPD2F0	
;
	LDA	>XADD,X
	STA	<ZWORK+8
	LDA	<WORK0
	STA	<ZWORK+9
	LDA	>IDXDT,X
	TAY
;
	JSR	OMSET
;
OPD2F0	EQU	$
	PLX
	DEX
	DEX
	BPL	OPD2E0		; oam set end ? [ no:OPD240 ]
;
	RTL
;
;
HEIX	EQU	$
	WORD	00020H,0FFF4H
;
HEIY	EQU	$
	HEX	18,18
;
HEIMUK	EQU	$
	HEX	01,01
;
HEICOL	EQU	$
	BYTE	00001001B,00000111B
;
GIRLXP	EQU	$
	HEX	00,01,02,03,04,05,05,05,04,04,03,03,02,02,01,01
;
OPD300	EQU	$
	STZ	<ZWORK+0AH
	LDA	<ZWORK+3FH
	BNE	OPD340
;
	JSR	FADEIN0
;
OPD340	EQU	$
	LDA	#038H
	STA	<ZWORK+8
;
	JSR	ZLDAOM
;
	LDA	<ZWORK+5
	CMP	#0C0H
	BCS	OPD345
;
	JMP	OPD3E0
;
OPD345	EQU	$
	LDA	#070H
	STA	<ZWORK+9
	DEC	<ZWORK+30H
	BPL	OPD350
;
	LDA	#0FH
	STA	<ZWORK+30H
OPD350	EQU	$
	LDX	<ZWORK+30H
	LDA	<ZWORK+11H
	STA	<ZWORK+20H
	LDA	<ZWORK+10H
	CLC
	ADC	>GIRLXP,X
	STA	<ZWORK+8
	BCC	OPD355
;
	INC	<ZWORK+20H
OPD355	EQU	$
	JSR	GIRLOM
;
OPD360	EQU	$
	LDX	#2-1
OPD380	EQU	$
	STZ	<WORK3
	LDA	<ZWORK+13H
	STA	<WORK6
	LDA	<ZWORK+9
	CLC
	ADC	>HEIY,X
	STA	<WORK2
	LDA	>HEIMUK,X
	STA	<WORK4
	LDA	>HEICOL,X
	STA	<WORK5
;
	PHX
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	TXA
	ASL	A
	TAX
	LDA	<ZWORK+10H
	CLC
	ADC	#00100H
	CLC
	ADC	>HEIX,X
	STA	<WORK0
	TAY
	STY	<ZWORK+14H
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	JSL	>ENRMCL
;
	JSL	>HEIS0CSL
;
	PLX
	DEX
	BPL	OPD380
;
	INC	<ZWORK+12H
	LDA	<ZWORK+12H
	AND	#07H
	BNE	OPD3E0
;
	LDY	#0FFH
	LDA	<ZWORK+13H
	CMP	#2
	BNE	OPD3C0
;
	STY	<ZWORK+13H
	LDA	<ZWORK+11H
	BNE	OPD3C0
;
	LDA	<ZWORK+12H
	AND	#08H
	BEQ	OPD3C0
;
	LDA	#04H
	STA	!SOUND3		; sound set !!
;
OPD3C0	EQU	$
	INC	<ZWORK+13H
OPD3E0	EQU	$
	LDA	<ZWORK+40H
	ASL	A
	TAX
	JMP	(OPD3,X)
;
;
OPD3	EQU	$
	WORD	OP3000
	WORD	OP3100
;
;
OPD3F0	EQU	$
	INC	<ZWORK+3
	DEC	<ZWORK+2
	DEC	<ZWORK+2
	RTL
;
;
OP3000	EQU	$
	LDA	<ZWORK+14H
	BNE	OP3010
;
	INC	<ZWORK+40H
OP3010	EQU	$
;----- shisai
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	<FRCNT
	AND	#1
	BEQ	OP3020
;
	DEC	<ZWORK+10H	; heishi x idou
;
OP3020	EQU	$
	LDA	#SISSB
	STA	<ZWORK+0DH	; oamsb address set
	LDA	#SISXAD
	STA	<WORK2
	LDA	#SISYAD
	STA	<WORK4
	LDA	#SISICH4
	STA	<WORK6
	LDA	#SISIAT
	STA	<WORK8
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDA	#058H
	STA	<ZWORK+8
	LDA	<ZWORK+0BH
	STA	<ZWORK+9
	LDY	#6-1	
	JSR	OMSET
;
	RTL
;
;
SISADD1	EQU	$
	WORD	SISICH4
	WORD	SISICH5
	WORD	SISICH6
	WORD	SISICH
	WORD	SISICH3
;
SISADD2	EQU	$
	WORD	SISIAT
	WORD	SISIAT5
	WORD	SISIAT6
	WORD	SISIAT
	WORD	SISIAT
;
OP3100	EQU	$
	LDA	<ZWORK+5
	CMP	#080H
	BCS	OP3120
;
	JSR	MSSUB
;
	LDA	<ZWORK+44H
	BEQ	OP3120
;
	LDX	#8
	BRA	OP3180
;
;;;		STZ	<KEYA1L
;;;		STZ	<KEYA2L
;;;		STZ	<KEYA2
;;;	JSL	>MSGE_I		; messege
;;;;
OP3120	EQU	$
	LDX	#0
OP3130	EQU	$
	LDA	<ZWORK+0BH
	CMP	#06EH
	BEQ	OP3140
;
	DEC	<ZWORK+0BH
	BRA	OP3180
;
OP3140	EQU	$
	LDA	<ZWORK+5
	CMP	#01FH
	BCS	OP3145
;
	AND	#00000001B
	BNE	OP3145
;
	DEC	<BLKFLG
OP3145	EQU	$
	DEC	<ZWORK+5
	BNE	OP3150
;
	JMP	OPD3F0
;
OP3150	EQU	$
	LDA	<ZWORK+5
	CMP	#0C0H
	BCS	OP3180
;
	INX
	INX
	CMP	#0B8H
	BCS	OP3180
;
	INX
	INX
	CMP	#0B0H
	BCS	OP3180
;
	INX
	INX
	CMP	#0A0H
	BCS	OP3180
;
	INX
	INX
OP3180	EQU	$
	LDA	#0A8H
	STA	<ZWORK+8
;
;----- shisai
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	<FRCNT
	AND	#1
	BEQ	OP31A0
;
	DEC	<ZWORK+10H	; heishi x idou
OP31A0	EQU	$
;
	LDA	#SISSB
	STA	<ZWORK+0DH	; oamsb address set
	LDA	#SISXAD
	STA	<WORK2
	LDA	#SISYAD
	STA	<WORK4
	LDA	>SISADD1,X
	STA	<WORK6
	LDA	>SISADD2,X
	STA	<WORK8
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDA	#058H
	STA	<ZWORK+8
	LDA	<ZWORK+0BH
	STA	<ZWORK+9
	LDY	#6-1	
	JSR	OMSET
;
	RTL
;
;
HEIX2	EQU	$
	HEX	30,C0,30,C0,50,A0
;
HEIY2	EQU	$
	HEX	70,70,98,98,C0,C0
;
HEIMUK2	EQU	$
	HEX	00,01,00,01,03,03
;
HEICOL2	EQU	$
	BYTE	00001001B,00001001B,00001001B,00001001B
	BYTE	00000111B,00001001B
;
OPD4	EQU	$
	WORD	OP4000
	WORD	OP4100
	WORD	OP4200
	WORD	OP4300
	WORD	OP4400
;
;
OPD400	EQU	$
;;;	DEC	<ZWORK+5
;;;	BNE	OPD410
;
	LDA	<ZWORK+3DH
	BEQ	OPD410
;
	JMP	OPD3F0
;
OPD410	EQU	$
	STZ	<ZWORK+0AH
	JSL	>CGFLSH
;
	LDA	<ZWORK+3FH
	BNE	OPD415
;
	JSR	FADEIN0
;
OPD415	EQU	$
	LDA	<ZWORK+30H
	CMP	#0FFH
	BEQ	OPD420
;
	INC	<ZWORK+30H
OPD420	EQU	$
	LDA	CGFLTM
	BEQ	OPD430
;
	AND	#4
	BEQ	OPD430		; sound on ? [ no:OPD430 ]
;
	LDX	#2BH
	STX	!SOUND3		; sound set !!
;
OPD430	EQU	$	
	LDA	<ZWORK+40H
	ASL	A
	TAX
	JSR	(OPD4,X)
;
;
OPD440	EQU	$
	LDX	#6-1
OPD480	EQU	$
	STZ	<WORK1
	STZ	<WORK3
	STZ	<WORK6
	LDA	>HEIX2,X
	STA	<WORK0
	LDA	>HEIY2,X
	STA	<WORK2
	LDA	>HEIMUK2,X
	STA	<WORK4
	LDA	>HEICOL2,X
	STA	<WORK5
	PHX
	JSL	>ENRMCL
;
	JSL	>HEIS0CSL
;
	PLX
	DEX
	BPL	OPD480
;
	LDX	<ZWORK+30H
	CPX	#0A0H
	BCC	OPD4A0
;
	LDA	<ZWORK+10H
	CMP	#060H
	BEQ	OPD490
;
	DEC	<ZWORK+12H
	BNE	OPD4A0
;
	DEC	<ZWORK+10H	; girl's y position
	LDA	#8
	STA	<ZWORK+12H
	BRA	OPD4A0
;
OPD490	EQU	$
	INC	<ZWORK+41H	
OPD4A0	EQU	$
	LDA	<ZWORK+32H
	BNE	OPD4E0
;
;----- girl
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	#GAL2SB
	STA	<ZWORK+0DH	; oamsb address set
	LDA	#GAL2X
	STA	<WORK2
	LDA	#GAL2Y
	STA	<WORK4
	LDX	#0
	LDA	<ZWORK+10H
	AND	#000FFH
	CMP	#00070H
	BEQ	OPD4B0
;
;;;	CMP	#0006CH
;;;	BPL	OPD4B0
;;;;
	INX
	INX
OPD4B0	EQU	$
	LDA	>GAL2AD0,X
	STA	<WORK6
	LDA	#GRL2A
	STA	<WORK8
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDA	#074H
	STA	<ZWORK+8
	LDA	<ZWORK+10H
	STA	<ZWORK+9
	LDY	#2-1	
	JSR	OMSET
;
	LDX	#00EH
	LDA	<ZWORK+10H
	CMP	#068H
	BCS	OPD4C0
;
	SEC
	SBC	#068H
	ASL	A
	AND	#00EH
	TAX
OPD4C0	EQU	$
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	#KAGESB
	STA	<ZWORK+0DH	; oamsb address set
	LDA	>KAGEADD,X
	STA	<WORK2
	LDA	#KAGEY
	STA	<WORK4
	LDA	#KAGECH
	STA	<WORK6
	LDA	#KAGEAT
	STA	<WORK8
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	TXA
	LSR	A
	TAX
	LDA	#074H
	CLC
	ADC	>KAGEXAD,X
	STA	<ZWORK+8
	LDA	#076H
	STA	<ZWORK+9
	LDY	#2-1	
	JSR	OMSET
;
OPD4E0	EQU	$
	LDA	<ZWORK+30H
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	AND	#00001110B
	TAX
;----- shisai
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	#SISSB
	STA	<ZWORK+0DH	; oamsb address set
	LDA	#SISXAD
	STA	<WORK2
	LDA	#SISYAD
	STA	<WORK4
	LDA	>SISADD3,X
	STA	<WORK6
	LDA	#SISIAT
	STA	<WORK8
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDA	#070H
	STA	<ZWORK+8
	LDA	#046H
	STA	<ZWORK+9
	LDY	#6-1	
	JSR	OMSET
;
	RTL
;
;
KAGEADD	EQU	$
	WORD	KAGEX4
	WORD	KAGEX4
	WORD	KAGEX3
	WORD	KAGEX3
	WORD	KAGEX2
	WORD	KAGEX2
	WORD	KAGEX1
	WORD	KAGEX
;
KAGEXAD	EQU	$
	HEX	04,04,03,03,02,02,01,00
;
GAL2AD0	EQU	$
	WORD	GRL2C
	WORD	GRL2C1
;
;
SISADD3	EQU	$
	WORD	SISICH
	WORD	SISICH1
	WORD	SISICH
	WORD	SISICH2
	WORD	SISICH
	WORD	SISICH1
	WORD	SISICH
	WORD	SISICH3
;
;
OP4000	EQU	$
	LDA	<ZWORK+41H
	BEQ	OP4040
;
	INC	<ZWORK+40H
OP4040	EQU	$
	RTS
;
;
MAHCAD	EQU	$
	WORD	MAHOCH
	WORD	MAHOCH1
;
MAHAAD	EQU	$
	WORD	MAHOAT
	WORD	MAHOAT1
;
KAZUAD	EQU	$
	BYTE	02H-1,02H-1,02H-1,06H-1,06H-1,0AH-1,0AH-1,0EH-1
;
OP4100	EQU	$
	LDA	<FRCNT
	LSR	A
	AND	#02H
	TAX
;----- mahou
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	#MAHOSB
	STA	<ZWORK+0DH	; oamsb address set
	LDA	#MAHOX
	STA	<WORK2
	LDA	#MAHOY
	STA	<WORK4
	LDA	>MAHCAD,X
	STA	<WORK6
	LDA	>MAHAAD,X
	STA	<WORK8
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDA	#06EH
	STA	<ZWORK+8
	LDA	#048H
	STA	<ZWORK+9
	LDA	<ZWORK+31H
	LSR	A
;;;	LSR	A
	AND	#07H
	TAX
	LDA	>KAZUAD,X
	TAY
	JSR	OMSET
;
	LDA	<ZWORK+31H
	BNE	OP4110
;
	LDY	<ZWORK+43H
	CPY	#070H
	BNE	OP4110		; sound on ? [ no:OP4110 ]
;
	LDX	#27H
	STX	!SOUND3		; sound set !!
;
OP4110	EQU	$
	CMP	#00FH
	BEQ	OP4180
;
	CMP	#006H
	BNE	OP4120
;
	LDX	#090H
	STX	CGFLTM		; flash timer set !!
	LDX	#2BH
	STX	!SOUND3		; sound set !!
;
OP4120	EQU	$
	LDA	<ZWORK+43H
	BEQ	OP4140
;
	DEC	<ZWORK+43H
	RTS
;
;
OP4140	EQU	$
	INC	<ZWORK+31H
	RTS
;
;
OP4180	EQU	$
	INC	<ZWORK+40H
	RTS
;
;
KAZUAD2	EQU	$
	BYTE	04H-1,04H-1,08H-1,08H-1,0CH-1,0CH-1,0EH-1,0EH-1
;
MHCHAD	EQU	$
	WORD	0000AH,0000AH,00006H,00006H,00002H,00002H,00000H,00000H
;
OP4200	EQU	$
	PHB
	PHK
	PLB			; PBR => DBR
;
	LDA	<FRCNT
	LSR	A
	AND	#02H
	TAX
	LDA	<ZWORK+31H
	LSR	A
;;;	LSR	A
;;;	LSR	A
	AND	#07H
	STA	<WORK0
	ASL	A
	TAY
;----- mahou
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	#MAHOSB
	CLC
	ADC	MHCHAD,Y
	STA	<ZWORK+0DH	; oamsb address set
	LDA	#MAHOX
	CLC
	ADC	MHCHAD,Y
	STA	<WORK2
	LDA	#MAHOY
	CLC
	ADC	MHCHAD,Y
	STA	<WORK4
	LDA	MAHCAD,X
	CLC
	ADC	MHCHAD,Y
	STA	<WORK6
	LDA	MAHAAD,X
	CLC
	ADC	MHCHAD,Y
	STA	<WORK8
OP4230	EQU	$
OP4240	EQU	$
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	LDA	#06EH
	STA	<ZWORK+8
	LDA	#048H
	STA	<ZWORK+9
	LDX	<WORK0
	LDA	KAZUAD2,X
	TAY
	JSR	OMSET
;
	PLB			; DBR reset !!
;
	LDA	<ZWORK+31H
	BNE	OP4260
;
	DEC	<ZWORK+42H
	BEQ	OP4180
;
	BRA	OP4280
;
OP4260	EQU	$
	DEC	<ZWORK+31H
OP4280	EQU	$
	RTS
;
;
MHXADD	EQU	$
	WORD	MAH2X
	WORD	MAH3X
;
MHYADD	EQU	$
	WORD	MAH2Y
	WORD	MAH3Y
;
MHCADD	EQU	$
	WORD	MAH2CH
	WORD	MAH3CH
;
MHAADD	EQU	$
	WORD	MAH2AT
	WORD	MAH3AT
;
MHXAD	EQU	$
	HEX	78,70
;
MHIDX	EQU	$
	BYTE	1-1,2-1
;
OP4300	EQU	$
	LDA	<ZWORK+31H
	CMP	#06
	BNE	OP4340
;
	INC	<ZWORK+32H
	LDA	#33H
	STA	!SOUND2
OP4340	EQU	$
	CMP	#40H
	BNE	OP4380
;
	LDA	#0E0H
	STA	<ZWORK+31H
	INC	<ZWORK+40H
OP4380	EQU	$
	CMP	#0FH
	BCS	OP43A0
;
	LSR	A
	LSR	A
	AND	#00000010B
	TAX
;
	MEM16
	REP	#00100000B	; memory 16bit mode !!
;
	LDA	#MAH2SB
	STA	<ZWORK+0DH	; oamsb address set
	LDA	>MHXADD,X
	STA	<WORK2
	LDA	>MHYADD,X
	STA	<WORK4
	LDA	>MHCADD,X
	STA	<WORK6
	LDA	>MHAADD,X
	STA	<WORK8
;
	MEM8
	SEP	#00100000B	; memory 8bit mode !!
;
	TXA
	LSR	A
	TAX
	LDA	>MHXAD,X
	STA	<ZWORK+8
	LDA	#060H
	STA	<ZWORK+9
	LDA	>MHIDX,X
	TAY
;
	JSR	OMSET
;
OP43A0	EQU	$
	INC	<ZWORK+31H
	RTS
;
;
OP4400	EQU	$
;;;		STZ	<KEYA1L
;;;		STZ	<KEYA2L
;;;		STZ	<KEYA2
;;;	JSL	>MSGE_I		; messege
;;;;
	JSR	MSSUB
;
	LDA	<ZWORK+44H
	BNE	OP4440
;
	LDA	<ZWORK+31H
	CMP	#01FH
	BCS	OP4420
;
	AND	#00000001B
	BNE	OP4420
;
	DEC	<BLKFLG
OP4420	EQU	$
	DEC	<ZWORK+31H
	BNE	OP4440
;
	INC	<ZWORK+3DH
OP4440	EQU	$
	RTS
;
;
;
;
;;;OPD900	EQU	$
;;;	LDA	<ZWORK+4
;;;;;;	BEQ	OPD940
;;;	BEQ	OPD010
;;;;
;;;	DEC	<ZWORK+4
;;;	RTL
;;;;
;;;OPD940	EQU	$
;;;	INC	<ZWORK+3
;;;	DEC	<ZWORK+2
;;;	DEC	<ZWORK+2
;;;	DEC	<ZWORK+2
;;;	RTL
;
;
;
DMEND	EQU	$
	DEC	<BLKFLG
	BNE	DMED40
;
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //	LDA	#080H
;// 03.09.17 //	STA	2100H
;// 03.09.17 //	STA	<BLKFLG
;;;;;;;;	LDX	#050H
;;;;;;;;DMED20	EQU	$
;;;;;;;;;---- ZWORK clear
;;;;;;;;	STZ	<ZWORK,X
;;;;;;;;	DEX
;;;;;;;;	BPL	DMED20
;
		LDA	#00010011B
		STA	2107H
		LDA	#00000011B
		STA	2108H
;
;------- mode change !!
		REP	#00100000B	; memory 16bit mode
		JSL	>MPDP880	; mode<1> set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		STZ	!CENTY
		STZ	!CENTX
;
		STZ	!SSCCH1
		STZ	!SSCCV1
		STZ	<SCCV3
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		JSL	>MSGETNP	; message buffer set
;
		JMP	TILSTART
;
;
DMED40	EQU	$
	RTL
;
;
OPBGAD	EQU	$
	WORD	OP0
	WORD	OP1
	WORD	OP2
	WORD	OP3
;
OPBGSZ	EQU	$
	WORD	OP1-OP0-1
	WORD	OP2-OP1-1
	WORD	OP3-OP2-1
	WORD	OP4-OP3-1
;
OPBGWT	EQU	$
	MEM16
	REP	#00100000B		; memory 16bit mode
;
	LDX	<ZWORK+6
	LDA	>OPBGSZ,X
	STA	<WORK0
	LDA	>OPBGAD,X
	STA	<WORK2
	LDX	#BANK OP0
	STX	<WORK4
;
	IDX16
	REP	#00010000B		; index	16bit mode
;
	LDY	<WORK0
OPBW00	EQU	$
	LDA	[<WORK2],Y
	STA	!VRAMD2,Y
	DEY
	DEY
	BPL	OPBW00			; bg write end ? [ no:OPBW00 ]
;
	MEM8
	IDX8
	SEP	#00110000B
;
	LDA	#VT01
	STA	<VRFLG
;
	RTS	
;
;
;********************************************************
;*	messege sub					*
;********************************************************
;
MSSUB	EQU	$
	LDA	<SCCV2+0
	STA	<ZWORK+0
	LDA	<SCCV2+1
	STA	<ZWORK+1
		STZ	<KEYA1L
		STZ	<KEYA2L
		STZ	<KEYA2
	JSL	>MSGE_I		; messege
;
	LDA	<ZWORK+44H
	BEQ	MSS040
;
	DEC	<ZWORK+44H
MSS040	EQU	$
	RTS
;
;
;********************************************************
;*	mode 7 zoom up set				*
;********************************************************
;
ZOOMUP	EQU	$
;
	IDX16
	REP	#00010000B	;index 16 bit mode
;
	LDA	!ZOOM
	STA	4202H
	LDX	#(0E0H-1)*2
ZMUP10	EQU	$
	LDA	>HDMABF0,X
	STA	4203H
	NOP
	NOP
	NOP
	NOP
	LDA	4217H
	STA	<WORK
	LDA	>HDMABF0+1,X
	STA	4203H
	NOP
	LDA	<WORK
	CLC
	ADC	4216H
	STA	!HDMABF,X
	LDA	4217H
	ADC	#00
	STA	!HDMABF+1,X
	DEX
	DEX
	BPL	ZMUP10
;
	IDX8
	SEP	#00010000B	;index 8 bit mode
	RTS
;
;
;****************************************************************
;*	hiekei data set sub					*
;****************************************************************
HAIKE00	EQU	$
	WORD	001A0H,009A6H,089A5H,001A0H
	WORD	009A5H,001A0H,001A0H,089A6H
	WORD	049A5H,001A0H,001A0H,049A5H
	WORD	001A0H,089A5H,0C9A5H,001A0H
;
HAIKE10	EQU	$
	WORD	009A1H,009A2H
	WORD	009A3H,009A4H
;
HAIWT1	EQU	$
	LDA	#00001001B
	STA	<MD2105
	LDA	#00010111B
	STA	<DPMAIN
	STZ	<DPSUB
	LDA	#00010000B
	STA	2107H			; BG1 screen size set
	LDA	#00000000B
	STA	2108H			; BG2 screen size set
;
	PHB
	PHK
	PLB
;
	MEM16
	IDX16
	REP	#00110000B		; memory,index 16bit mode !!
;
	LDX	#00000H
	LDA	#HAIKE00
	STA	<ZWORK+10H
;
HA1050	EQU	$
	TXA
	AND	#00007H
	TAY
;
HA1100	EQU	$
	LDA	(<ZWORK+10H),Y
	STA	!VRAMD+6,X
	INY
	INY
	INX
	INX
	TYA
	AND	#00007H
	BNE	HA1100
;
	TXA
	AND	#0003FH
	BNE	HA1050
;
	LDA	<ZWORK+10H
	CLC
	ADC	#00008H
	STA	<ZWORK+10H
;
	CPX	#00100H
	BNE	HA1050
;
	LDA	#01000H			; V-RAM address set
	STA	<ZWORK+10H
	JSR	HAIKDMA
;
	MEM16
	IDX16
	REP	#00110000B		; memory,index 16bit mode !!
;
	LDX	#00000H
	LDA	#HAIKE10
	STA	<ZWORK+10H
;
HA1150	EQU	$
	TXA
	AND	#00003H
	TAY
;
HA1200	EQU	$
	LDA	(<ZWORK+10H),Y
	STA	!VRAMD+6,X
	INY
	INY
	INX
	INX
	TYA
	AND	#00003H
	BNE	HA1200
;
	TXA
	AND	#0003FH
	BNE	HA1150
;
	TXA
	AND	#00040H
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	#HAIKE10
	STA	<ZWORK+10H
;
	CPX	#00100H
	BNE	HA1150
;
	LDA	#00000H			; V-RAM address set
	STA	<ZWORK+10H
	JSR	HAIKDMA
;
	MEM8
	IDX8
	SEP	#00110000B		; memory,index 8 bit mode
;
	PLB
	RTS
;
;
	MEM16
HAIKDMA	EQU	$
	IDX8
	SEP	#00010000B		; index 8 bit mode
;
	LDX	#007H
	LDA	<ZWORK+10H
	STA	2116H
;
HKA050	EQU	$
	LDY	#080H
	STY	2115H
	LDA	#00000001B+(018H*100H)
	STA	4300H
	LDA	#VRAMD+6
	STA	4302H
	LDY	#BANK VRAMD+6
	STY	4304H
	LDA	#00100H
	STA	4305H
;
	LDY	#00000001B
	STY	420BH
;
	DEX
	BPL	HKA050
;
	RTS
;
;
;****************************************************************
;*	OAM SET							*
;****************************************************************
;----- oh no hakkotu
HONESB	EQU	$
	BYTE	2,2,2,2
;
HONEX	EQU	$
	HEX	10,00,10,00
;
HONEY	EQU	$
	HEX	10,10,00,00
;
HONECH	EQU	$
	HEX	2A,2A,0A,0A
;
HONEAT	EQU	$
	BYTE	01111011B,00111011B,01111011B,00111011B
;
;----- kazari dana
TANASB	EQU	$
	BYTE	2,2,2,2,2,2
;
TANAX	EQU	$
	HEX	00,10,20,00,10,20
;
TANAY	EQU	$
	HEX	00,00,00,10,10,10
;
TANACH	EQU	$
	HEX	0C,0E,0C,2C,2E,2C
;
TANAAT	EQU	$
	BYTE	00110001B,00110001B,01110001B
	BYTE	00110001B,00110001B,01110001B
;
;----- shisai
SISSB	EQU	$
	BYTE	2,2,2,2,2,2
;
SISXAD	EQU	$
	HEX	05,0B,00,10,00,10
;
SISYAD	EQU	$
	HEX	19,19,00,00,10,10
;
SISICH	EQU	$
	HEX	6C,6C,82,82,A2,A2
;
SISICH1	EQU	$
	HEX	6C,6C,80,82,A0,A2
;
SISICH2	EQU	$
	HEX	6C,6C,82,80,A2,A0
;
SISICH3	EQU	$
	HEX	6C,6C,80,80,A0,A0
;
SISICH4	EQU	$
	HEX	6C,6C,84,84,A4,A4
;
SISICH5	EQU	$
	HEX	6C,6C,C4,C2,E4,E6
;
SISICH6	EQU	$
	HEX	6C,6C,88,8A,A8,AA
;
SISIAT	EQU	$
	BYTE	00111000B,00111000B,00111011B,01111011B,00111011B,01111011B
;
SISIAT5	EQU	$
	BYTE	00111000B,00111000B,00111011B,00111011B,00111011B,00111011B
;
SISIAT6	EQU	$
	BYTE	00111000B,00111000B,00111011B,00111011B,00111011B,00111011B
;
;----- girl 2
GAL2SB	EQU	$
	BYTE	2,2
;
GAL2X	EQU	$
	HEX	00,08
;
GAL2Y	EQU	$
	HEX	00,00
;
GRL2C	EQU	$
	HEX	03,04
;
GRL2C1	EQU	$
	HEX	00,01
;
GRL2A	EQU	$
	BYTE	00111101B,00111101B
;
;----- kage
KAGESB	EQU	$
	BYTE	2,2
;
KAGEX	EQU	$
	HEX	00,08
;
KAGEX1	EQU	$
	HEX	00,06
;
KAGEX2	EQU	$
	HEX	00,04
;
KAGEX3	EQU	$
	HEX	00,02
;
KAGEX4	EQU	$
	HEX	00,00
;
KAGEY	EQU	$
	HEX	00,00
;
KAGECH	EQU	$
	HEX	6C,6C
;
KAGEAT	EQU	$
	BYTE	00111000B,00111000B
;
;----- mahou
MAHOSB	EQU	$
	BYTE	0,0,0,0,0,0,0,0,0,0,2,2,2,2
;
MAHOX	EQU	$
	HEX	00,1C,FE,1E,FE,1E,00,1C,00,1C,02,12,02,12
;
MAHOY	EQU	$
	HEX	00,00,03,03,0B,0B,10,10,18,18,10,10,20,20
;
MAHOCH	EQU	$
	HEX	CE,CE,26,26,36,36,26,26,36,36,20,20,20,20
;
MAHOCH1	EQU	$
	HEX	CE,CE,26,26,36,36,26,26,36,36,22,22,22,22
;
MAHOAT	EQU	$
	BYTE	00110101B,00110101B,01110101B,00110101B
	BYTE	01110101B,00110101B,01110101B,00110101B
	BYTE	01110101B,00110101B,00110101B,01110101B
	BYTE	10110101B,11110101B
;
MAHOAT1	EQU	$
	BYTE	00110111B,00110111B,01110111B,00110111B
	BYTE	01110111B,00110111B,01110111B,00110111B
	BYTE	01110111B,00110111B,00110111B,01110111B
	BYTE	10110111B,11110111B
;
;----- mahou 2
MAH2SB	EQU	$
	BYTE	2,2
;
MAH2X	EQU	$
	HEX	00
;
MAH2Y	EQU	$
	HEX	00
;
MAH2CH	EQU	$
	HEX	C6
;
MAH2AT	EQU	$
	BYTE	00111101B
;
;----- mahou 3
MAH3X	EQU	$
	HEX	00,10
;
MAH3Y	EQU	$
	HEX	00,00
;
MAH3CH	EQU	$
	HEX	24,24
;
MAH3AT	EQU	$
	BYTE	00110101B,01110101B
;
	MEM8
;
OMSET	EQU	$
	PHB
	PHK
	PLB			; PBR => DBR
;
OM000	EQU	$
	LDX	<ZWORK+0AH
	LDA	(<ZWORK+0DH),Y
	STA	!OAMSB+40H,X	; oamsb set !!
	TXA
	ASL	A
	ASL	A
	TAX
	LDA	(<WORK2),Y
	CLC
	ADC	<ZWORK+8
	STA	!OAM+100H,X	; x position set !!
	LDA	(<WORK4),Y
	CLC
	ADC	<ZWORK+9
	STA	!OAM+100H+1,X	; y position set !!
	LDA	(<WORK6),Y
	STA	!OAM+100H+2,X	; chara No. set !!
	LDA	(<WORK8),Y
	STA	!OAM+100H+3,X	; atoribuut set !!
	INC	<ZWORK+0AH
	DEY
	BPL	OM000		; oam set ok ? [ no:OM000 ]
;
	PLB			; DBR reset !!
	RTS
;
;
;----- zelda
ZLDACH	EQU	$
	HEX	28
;
ZLDACH2	EQU	$
	HEX	2A
;
ZLDAAT	EQU	$
	BYTE	00101001B
;
ZLDAAT2	EQU	$
	BYTE	00101001B
;
ZLDAOM	EQU	$
	LDX	<ZWORK+0AH
	LDA	#2
	STA	!OAMSB+40H,X	: oamsb set !!
	TXA
	ASL	A
	ASL	A
	TAX
	LDA	#060H
	STA	!OAM+100H,X	; x position set !!
	STA	!OAM+100H+4,X	; x position set !!
	LDA	<ZWORK+8
	STA	!OAM+100H+1,X	; y position set !!
	CLC
	ADC	#0E0H-0D6H
	STA	!OAM+100H+5,X	; y position set !!
	LDA	>ZLDACH
	STA	!OAM+100H+2,X	; chara No. set !!
	LDA	>ZLDACH2
	STA	!OAM+100H+6,X	; chara No. set !!
	LDA	>ZLDAAT
	STA	!OAM+100H+3,X	; atoribuut set !!
	LDA	>ZLDAAT2
	STA	!OAM+100H+7,X	; atoribuut set !!
	INC	<ZWORK+0AH
	INC	<ZWORK+0AH
	RTS
;
;
GIRLCH	EQU	$
	HEX	06
;
GIRLCH2	EQU	$
	HEX	08,0A
;
GRLYAD	EQU	$
	HEX	00,01
;
GRLYAD2	EQU	$
	BYTE	0F0H-0E6H,0F0H-0E6H-1
;
GIRLAT	EQU	$
	BYTE	00111101B
;
GIRLAT2	EQU	$
	BYTE	00111101B
;
GIRLOM	EQU	$
	PHB
	PHK
	PLB			; PBR => DBR
;
	PHY
	LDX	<ZWORK+0AH
	LDA	#2
	LDY	<ZWORK+20H
	BEQ	GIRL01
;
	ORA	#00000001B
GIRL01	EQU	$
	STA	!OAMSB+40H,X	: oamsb set !!
	STA	!OAMSB+40H+1,X	: oamsb set !!
	TXA
	ASL	A
	ASL	A
	TAX
	LDA	<ZWORK+8
	STA	!OAM+100H,X	; x position set !!
	STA	!OAM+100H+4,X	; x position set !!
	LDA	<ZWORK+12H
	LSR	A
	LSR	A
	LSR	A
	AND	#1
	TAY
	LDA	<ZWORK+9
	CLC
	ADC	GRLYAD,Y
	STA	!OAM+100H+1,X	; y position set !!
	CLC
	ADC	GRLYAD2,Y
	STA	!OAM+100H+5,X	; y position set !!
	LDA	GIRLCH
	STA	!OAM+100H+2,X	; chara No. set !!
	LDA	GIRLCH2,Y
	STA	!OAM+100H+6,X	; chara No. set !!
	LDA	GIRLAT
	STA	!OAM+100H+3,X	; atoribuut set !!
	LDA	GIRLAT2
	STA	!OAM+100H+7,X	; atoribuut set !!
	INC	<ZWORK+0AH
	INC	<ZWORK+0AH
;
	PLY
;
	PLB			; DBR reset !!
	RTS
;
;
;
;
;****************************************************************
;*	OPENING DEMO DATA					*
;****************************************************************
;****************************************************************
;*								*
;****************************************************************
TLW1DT	EQU	$
	BYTE	00H+20H
	BYTE	0FFH,000H
	BYTE	00H+050H
	BYTE	018H,018H+0C8H
	BYTE	00H+050H
	BYTE	018H,018H+0C8H
	BYTE	00H+01H
	BYTE	0FFH,000H
	BYTE	00H
;
TLW2DT	EQU	$
	BYTE	00H+48H
	BYTE	0FFH,000H
	BYTE	00H+30H
	BYTE	030H,030H+0A8H
	BYTE	00H+01H
	BYTE	0FFH,000H
	BYTE	00H
;
TLHDPR	EQU	$
	BYTE	00000001B
	BYTE	26H
	LWORD	TLW1DT
;
;
TLHDIN	EQU	$
	LDX	#04
THI010	EQU	$
	LDA	>TLHDPR,X
	STA	4360H,X	
	STA	4370H,X
	DEX
	BPL	THI010
;
	MEM16
	REP	#00100000B		;memory 16 bit mode 
;
	LDA	#TLW2DT
	STA	4372H
;
	MEM8
	SEP	#00100000B		;memory 8 bit mode set
;
	LDA	#28H			;window 2 B bus address set
	STA	4371H
	RTS	
;
;
;
;
;
;****************************************************************
;*	OPENING DEMO DATA					*
;****************************************************************
;
;;;OP0	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,ED,C0,10
;;;	WORD		00000H
;;;	HEX	10,F2,C0,10
;;;	WORD		00000H
;;;	HEX	12,0D,40,0A
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP1	EQU	$
;;;	HEX	10,D2,C0,14
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP2	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,F2,C0,06
;;;	WORD		00000H
;;;	HEX	11,6D,40,0A
;;;	WORD		00000H
;;;	HEX	11,8D,C0,06
;;;	WORD		00000H
;;;	HEX	12,0D,40,0A
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP3	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,F2,C0,10
;;;	WORD		00000H
;;;	HEX	11,6D,40,08
;;;	WORD		00000H
;;;	HEX	12,0D,40,0A
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP4	EQU	$
;;;	HEX	10,CD,C0,08
;;;	WORD		00000H
;;;	HEX	11,6D,40,08
;;;	WORD		00000H
;;;	HEX	10,D2,C0,14
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP5	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,ED,C0,06
;;;	WORD		00000H
;;;	HEX	11,6D,40,0A
;;;	WORD		00000H
;;;	HEX	11,92,C0,06
;;;	WORD		00000H
;;;	HEX	12,0D,40,0A
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP6	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,ED,C0,12
;;;	WORD		00000H
;;;	HEX	11,6E,40,08
;;;	WORD		00000H
;;;	HEX	11,92,C0,06
;;;	WORD		00000H
;;;	HEX	12,0E,40,08
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP7	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,F2,C0,10
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP8	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,ED,C0,10
;;;	WORD		00000H
;;;	HEX	10,F2,C0,10
;;;	WORD		00000H
;;;	HEX	11,6E,40,06
;;;	WORD		00000H
;;;	HEX	12,0D,40,0A
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;OP9	EQU	$
;;;	HEX	10,CD,40,0A
;;;	WORD		00000H
;;;	HEX	10,ED,C0,08
;;;	WORD		00000H
;;;	HEX	10,F2,C0,10
;;;	WORD		00000H
;;;	HEX	11,6E,40,06
;;;	WORD		00000H
;;;	HEX	12,0D,40,0A
;;;	WORD		00000H
;;;;
;;;	HEX		FF
;;;;
;;;;
;-------
;
OP0	EQU	$
	HEX	61,65,40,28
	WORD		03400H+00100H
	HEX	61,85,40,28
	WORD		03410H+00100H
	HEX	61,A5,00,29
	WORD		03401H+00100H,03402H+00100H,03401H+00100H,03402H+00100H
	WORD		03401H+00100H,03402H+00100H,03401H+00100H,03402H+00100H
	WORD		03401H+00100H,03003H+00100H,07003H+00100H,03402H+00100H
	WORD		03401H+00100H,03402H+00100H,03401H+00100H,03402H+00100H
	WORD		03401H+00100H,03402H+00100H,03401H+00100H,03402H+00100H
	WORD		03401H+00100H
	HEX	61,C5,00,29
	WORD		03411H+00100H,03412H+00100H,03411H+00100H,03412H+00100H
	WORD		03411H+00100H,03412H+00100H,03411H+00100H,03412H+00100H
	WORD		03411H+00100H,03413H+00100H,07413H+00100H,03412H+00100H
	WORD		03411H+00100H,03412H+00100H,03411H+00100H,03412H+00100H
	WORD		03411H+00100H,03412H+00100H,03411H+00100H,03412H+00100H
	WORD		03411H+00100H
	HEX	61,E5,00,29
	WORD		03420H+00100H,03421H+00100H,03420H+00100H,03421H+00100H
	WORD		03420H+00100H,03421H+00100H,03420H+00100H,03421H+00100H
	WORD		03420H+00100H,03421H+00100H,03420H+00100H,03421H+00100H
	WORD		03420H+00100H,03421H+00100H,03420H+00100H,03421H+00100H
	WORD		03420H+00100H,03421H+00100H,03420H+00100H,03421H+00100H
	WORD		03420H+00100H
	HEX	62,05,40,28
	WORD		0B400H+00100H
;
	HEX		FF
;
;
OP1	EQU	$
	HEX	61,65,40,28
	WORD		03400H+00100H
	HEX	61,85,00,13
	WORD		03410H+00100H,0744EH+00100H,0346EH+00100H,03410H+00100H
	WORD		0344EH+00100H,03410H+00100H,0344CH+00100H,03410H+00100H
	WORD		0744EH+00100H,03449H+00100H
	HEX	61,8F,40,08
	WORD		03410H+00100H
	HEX	61,94,00,0B
	WORD		0744EH+00100H,0346EH+00100H,03410H+00100H,0344EH+00100H
	WORD		03410H+00100H,0344CH+00100H
	HEX	61,A5,00,29
	WORD		0745FH+00100H,0745EH+00100H,0347EH+00100H,0347FH+00100H
	WORD		0345EH+00100H,0345FH+00100H,0344DH+00100H,0745FH+00100H
	WORD		0745EH+00100H,0344AH+00100H,0344BH+00100H,03410H+00100H
	WORD		07449H+00100H,03410H+00100H,0745FH+00100H,0745EH+00100H
	WORD		0347EH+00100H,0347FH+00100H,0345EH+00100H,0345FH+00100H
	WORD		0344DH+00100H
	HEX	61,C5,00,29
	WORD		03450H+00100H,03451H+00100H,03452H+00100H,03453H+00100H
	WORD		03454H+00100H,03455H+00100H,03456H+00100H,03457H+00100H
	WORD		03458H+00100H,03459H+00100H,0345AH+00100H,0345BH+00100H
	WORD		0345CH+00100H,0345DH+00100H,03450H+00100H,03451H+00100H
	WORD		03452H+00100H,03453H+00100H,03454H+00100H,03455H+00100H
	WORD		03456H+00100H
	HEX	61,E5,00,29
	WORD		03460H+00100H,03461H+00100H,03462H+00100H,03463H+00100H
	WORD		03464H+00100H,03465H+00100H,03466H+00100H,03467H+00100H
	WORD		03468H+00100H,03469H+00100H,0346AH+00100H,0346BH+00100H
	WORD		0346CH+00100H,0346DH+00100H,03460H+00100H,03461H+00100H
	WORD		03462H+00100H,03463H+00100H,03464H+00100H,03465H+00100H
	WORD		03466H+00100H
	HEX	62,05,00,29
	WORD		03470H+00100H,03471H+00100H,03472H+00100H,03473H+00100H
	WORD		03474H+00100H,03475H+00100H,03476H+00100H,03477H+00100H
	WORD		03478H+00100H,03479H+00100H,0347AH+00100H,0347BH+00100H
	WORD		0347CH+00100H,0347DH+00100H,03470H+00100H,03471H+00100H
	WORD		03472H+00100H,03473H+00100H,03474H+00100H,03475H+00100H
	WORD		03476H+00100H
;
	HEX		FF
;
;
OP2	EQU	$
	HEX	61,65,40,28
	WORD		03400H+00100H
	HEX	61,85,40,28
	WORD		03410H+00100H
	HEX	61,A5,00,1D
	WORD		03422H+00100H,03423H+00100H,03410H+00100H,03422H+00100H
	WORD		03423H+00100H,03410H+00100H,03422H+00100H,03423H+00100H
	WORD		03410H+00100H,03422H+00100H,03423H+00100H,03410H+00100H
	WORD		07410H+00100H,07423H+00100H,07422H+00100H
	HEX	61,B4,40,06
	WORD		03410H+00100H
	HEX	61,B8,00,03
	WORD		07423H+00100H,07422H+00100H
	HEX	61,C5,00,29
	WORD		03404H+00100H,03405H+00100H,03406H+00100H,03404H+00100H
	WORD		03405H+00100H,03406H+00100H,03404H+00100H,03405H+00100H
	WORD		03406H+00100H,03404H+00100H,03405H+00100H,03406H+00100H
	WORD		07406H+00100H,07405H+00100H,07404H+00100H,07410H+00100H
	WORD		07423H+00100H,07422H+00100H,07406H+00100H,07405H+00100H
	WORD		07404H+00100H
	HEX	61,E5,00,29
	WORD		03414H+00100H,03415H+00100H,03416H+00100H,03414H+00100H
	WORD		03415H+00100H,03416H+00100H,03414H+00100H,03415H+00100H
	WORD		03416H+00100H,03414H+00100H,03415H+00100H,03416H+00100H
	WORD		07416H+00100H,07415H+00100H,07414H+00100H,07406H+00100H
	WORD		07405H+00100H,07404H+00100H,07416H+00100H,07415H+00100H
	WORD		07414H+00100H
	HEX	62,05,00,29
	WORD		03424H+00100H,03425H+00100H,03426H+00100H,03424H+00100H
	WORD		03425H+00100H,03426H+00100H,03424H+00100H,03425H+00100H
	WORD		03426H+00100H,03424H+00100H,03425H+00100H,03426H+00100H
	WORD		07426H+00100H,07425H+00100H,07424H+00100H,07426H+00100H
	WORD		07425H+00100H,07424H+00100H,07426H+00100H,07425H+00100H
	WORD		07424H+00100H
;
	HEX		FF
;
;
OP3	EQU	$
	HEX	61,65,00,29
	WORD		03400H+00100H,03400H+00100H,0341BH+00100H,03430H+00100H
	WORD		03431H+00100H,03432H+00100H,03400H+00100H,03400H+00100H
	WORD		03400H+00100H,03433H+00100H,03441H+00100H,07441H+00100H
	WORD		07433H+00100H,07400H+00100H,07400H+00100H,07400H+00100H
	WORD		07432H+00100H,07431H+00100H,07430H+00100H,0741BH+00100H
	WORD		07400H+00100H
	HEX	61,85,40,1E
	WORD		03410H+00100H
	HEX	61,86,00,09
	WORD		03434H+00100H,0340BH+00100H,03440H+00100H,03441H+00100H
	WORD		03442H+00100H
	HEX	61,95,00,09
	WORD		07442H+00100H,07441H+00100H,07440H+00100H,0740BH+00100H
	WORD		07434H+00100H
	HEX	61,A5,00,29
	WORD		03443H+00100H,03444H+00100H,03407H+00100H,03408H+00100H
	WORD		03409H+00100H,0340AH+00100H,03410H+00100H,0340CH+00100H
	WORD		0340DH+00100H,0340EH+00100H,0340FH+00100H,0740FH+00100H
	WORD		0740EH+00100H,0740DH+00100H,0740CH+00100H,07410H+00100H
	WORD		0740AH+00100H,07409H+00100H,07408H+00100H,07407H+00100H
	WORD		07444H+00100H
	HEX	61,C5,00,29
	WORD		03435H+00100H,03436H+00100H,03417H+00100H,03418H+00100H
	WORD		03419H+00100H,0341AH+00100H,03410H+00100H,0341CH+00100H
	WORD		0341DH+00100H,0341EH+00100H,0341FH+00100H,0741FH+00100H
	WORD		0741EH+00100H,0741DH+00100H,0741CH+00100H,07410H+00100H
	WORD		0741AH+00100H,07419H+00100H,07418H+00100H,07417H+00100H
	WORD		07436H+00100H
	HEX	61,E5,00,29
	WORD		03445H+00100H,03446H+00100H,03427H+00100H,03428H+00100H
	WORD		03429H+00100H,0342AH+00100H,0342BH+00100H,0342CH+00100H
	WORD		0342DH+00100H,0342EH+00100H,0342FH+00100H,0742FH+00100H
	WORD		0742EH+00100H,0742DH+00100H,0742CH+00100H,0742BH+00100H
	WORD		0742AH+00100H,07429H+00100H,07428H+00100H,07427H+00100H
	WORD		07446H+00100H
	HEX	62,05,00,29
	WORD		03447H+00100H,03448H+00100H,03437H+00100H,03438H+00100H
	WORD		03439H+00100H,0343AH+00100H,0343BH+00100H,0343CH+00100H
	WORD		0343DH+00100H,0343EH+00100H,0343FH+00100H,0743FH+00100H
	WORD		0743EH+00100H,0743DH+00100H,0743CH+00100H,0743BH+00100H
	WORD		0743AH+00100H,07439H+00100H,07438H+00100H,07437H+00100H
	WORD		07448H+00100H
;
	HEX		FF
;
OP4	EQU	$
;
;
;
		END
