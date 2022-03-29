;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.10.08(TUE)
;
;--------------------------------------------------------------------
;
		ORG	089E0H
;
;=============================================== (zel_vma) ==============
		GLB	DMAVMA,DJBGWT,GDBGWT,VDTWT,WBUFS0,WBUFS1,WBFS120
		GLB	Object_transfer
;
		GLB	PCHDT0,PCHDT1,PCHDT2
;
		GLB	VT01,VT02,VT03,VT04,VT05,VT06,VT07,VT08,VT09
;
		GLB	bgw1,bgw2,bgw3,bgw4,bgw5,bgw6,bgw7
		GLB	bgw8,bgw9,bgwA,bgwB,bgwC,bgwD,bgwE,bgwF
		GLB	bgw10,bgw11,bgw12,bgw13,bgw14,bgw15,bgw16,bgw17
		GLB	bgw18
;=============================================== (zel_data0) ============
		EXT	UNITDT,BITCD0
;
		EXT	cnulld
;=============================================== (zel_gmap) =============
		EXT	SCRNDT
;=============================================== (zel_bgwt) =============
		EXT	inf_wup
;=============================================== (zel_title) ============
		EXT	TILBGD,TOROKUST
;
		EXT	TILBGD1,TILBGD2,TICPBGD1
;
;=============================================== (zel_dmap) ============
		EXT	MAPWAKU
;-----< obj_poly >-------------------------------------------------------
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
		EXTEND
		MEM8
		IDX8
;
;
;************************************************************************
;*		Character DMA & VMA			(DMAVMA)	*
;************************************************************************
DMAVMA		EQU	$
		IDX16
		REP	#00010000B	; index 16it mode
;
		LDA	#10000000B
		STA	2115H		; Vram address auto inc.
;
		LDA	!GMAPDF
		BEQ	PCHDMA		; character change ok ?
;					; no
;// 03.09.19 //		JMP	CGDVMA
		JMP	B3CHCNG
;
;************************************************************************
;*		Player character DMA			(PCHDMA)	*
;************************************************************************
PCHDMA		EQU	$
		LDX	#01801H
		STX	4300H
		STX	4310H
		STX	4320H
		STX	4330H
		STX	4340H		; inc. mode & B-bus address set
;
		LDA	#010H
		STA	4304H
		STA	4314H
		STA	4324H		; A-bus address (B)
;
;---------------------------------------- Head,Body,Arme - 2
		LDY	#04100H
		STY	2116H		; Vram address set
;
		LDY	!HCBFP1
		STY	4302H		; A-bus address (L,H)
		LDX	#00020H*2
		STX	4305H		; data count
;
		LDY	!BCBFP1
		STY	4312H		; A-bus address (L,H)
		STX	4315H		; data count
;
		LDY	!ACBFP1
		STY	4322H		; A-bus address (L,H)
		LDY	#00020H*1
		STY	4325H		; data count
		LDA	#00000111B
		STA	420BH		; HEAD , BODY , ARME DMA on!!
;
;---------------------------------------- Head,Body,Arme - 1
		STY	4325H		; data count
;
		LDY	#04000H
		STY	2116H		; Vram address set
;
		LDY	!HCBFP0
		STY	4302H		; A-bus address (L,H)
		STX	4305H		; data count
;
		LDY	!BCBFP0
		STY	4312H		; A-bus address (L,H)
		STX	4315H		; data count
;
		LDY	!ACBFP0
		STY	4322H		; A-bus address (L,H)
		STA	420BH		; HEAD , BODY , ARME DMA on!!
;
;
;==============================================================	sword,shild,[Y][A],rupy,block
		LDA	#BANK CNGCHBF
		STA	4304H
		STA	4314H
		STA	4324H
		STA	4334H
		STA	4344H		; A-bus address (B)
;
		LDY	!KCHPT0
		STY	4302H		; A-bus address (L,H)
		STX	4305H		; sword : data count
;
		LDY	!TCHPT0
		STY	4312H		; A-bus address (L,H)
		STX	4315H		; shild : data count
;
		LDY	!ICHPT0
		STY	4322H		; A-bus address (L,H)
		STX	4325H		; [Y][A] : data count
;
;
		LDY	!EICBFP0
		STY	4332H		; A-bus address (L,H)
		LDY	#00020H*1
		STY	4335H		; rupy : data count
;
		LDY	!BKCBFP0
		STY	4342H		; A-bus address (L,H)
		STX	4345H		; block : data count
		LDA	#00011111B
		STA	420BH		; DMA on!!
;
;
		LDY	#04150H
		STY	2116H		; Vram address set
		LDY	!KCHPT1
		STY	4302H		; A-bus address (L,H)
		STX	4305H		; sword : data count
;
		LDY	!TCHPT1
		STY	4312H		; A-bus address (L,H)
		STX	4315H		; shild : data count
;
		LDY	!ICHPT1
		STY	4322H		; A-bus address (L,H)
		STX	4325H		; [Y][A] : data count
;
;
		LDY	!EICBFP1
		STY	4332H		; A-bus address (L,H)
		LDY	#00020H*1
		STY	4335H		; rupy : data count
;
		LDY	!BKCBFP1
		STY	4342H		; A-bus address (L,H)
		STX	4345H		; block : data count
		STA	420BH		; DMA on!!
;
;
;==============================================================	option , mochiage-item
		LDY	#04200H
		STY	2116H		; Vram address set
		LDY	!OPTCHP0
		STY	4302H		; A-bus address (L,H)
		STX	4305H		; option HEAD
;
		LDY	!OPTCBP0
		STY	4312H		; A-bus address (L,H)
		STX	4315H		; option BODY
;
		LDY	#ITMCHBF
		STY	4322H		; A-bus address (L,H)
		STX	4325H		; mochiage ITEM
		LDA	#00000111B
		STA	420BH		; DMA on!!
;
;
		LDY	#04300H
		STY	2116H		; Vram address set
		LDY	!OPTCHP1		
		STY	4302H		; A-bus address (L,H)
		STX	4305H		; option HEAD
;
		LDY	!OPTCBP1
		STY	4312H		; A-bus address (L,H)
		STX	4315H		; option BODY
;
		LDY	#ITMCHBF+20H*2
		STY	4322H		; A-bus address (L,H)
		STX	4325H		; mochiage ITEM
		STA	420BH		; DMA on!!
;
;
;==============================================================	tori
		LDA	!TORICFG
		BEQ	WATRCNG		; tori character change ?
;					; yes
		LDY	#040E0H
		STY	2116H		; Vram address set
		LDY	!TRICHP0
		STY	4302H		; A-bus address (L,H)
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; DMA on!!
;
		LDY	#041E0H
		STY	2116H		; Vram address set
		LDY	!TRICHP1
		STY	4302H		; A-bus address (L,H)
		STX	4305H		; data count
		STA	420BH		; DMA on!!
;
;
;==============================================================	BG. water
WATRCNG		EQU	$
		LDX	!WTCBFPT
;;;;;;;;		BEQ	WATRC80		; water write ?
;;;;;;;;					; yes
		STX	4302H		; A-bus address (L,H)
;;;;;;;;		LDA	#BANK CNGCHBF
;;;;;;;;		STA	4304H		;               (B)
		LDX	!WTRADR
		STX	2116H		; Vram address set
		LDX	#00020H*20H
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; DMA on!!
;
;;;;;;;;WATRC80		EQU	$
;
;
;************************************************************************
;*		BG.3  mater write		(B3CHCNG)		*
;************************************************************************
B3CHCNG		EQU	$
		LDA	<B3CHFG
		BEQ	CGDVMA		; BG.3 character change ?
;					; yes
		LDX	!MTRADR
		STX	2116H		; Vram address set
		LDX	#MTRBUF
		STX	4302H		; A-bus address (L,H)
		LDA	#BANK MTRBUF
		STA	4304H		; A-bus address (B)
		LDX	#00040H*5+5*2
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; DMA ch "ON"
;
;
;
;************************************************************************
;*		CG. data VMA				(CGDVMA)	*
;************************************************************************
CGDVMA		EQU	$
		LDA	<CGVMAF
		BEQ	OBJDMA		; CG. VMA ?
;					; yes
		STZ	2121H		; CG. RAM address set
;
		LDY	#02200H
		STY	4310H		; inc. mode & B-bus address set
		LDY	#CGWORK
		STY	4312H		; A-bus address (L,H)
		LDA	#BANK CGWORK
		STA	4314H		; A-bus address (B)
		LDY	#00200H
		STY	4315H		; data count
;
		LDA	#00000010B
		STA	420BH		; DMA ch "on"
;
;
;
;************************************************************************
;*		OBJ_DMA					(OBJDMA)	*
;************************************************************************
OBJDMA		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
		IDX8
		SEP	#00010000B	; index 8bit mode
;
		STZ	<CGVMAF
;///////		STZ	<B3CHFG
;
		STZ	2102H		; OAM address set
		LDA	#00400H
		STA	4300H		; B-bus addess & control paramater
		LDA	#OAM
		STA	4302H		; A-bus address (L,H)
		STZ	4304H		;               (B)
		LDA	#00220H
		STA	4305H		; OBJ_DMA paramater set
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
;
;
;************************************************************************
;*		VMA					(VMADSP)	*
;************************************************************************
VMADSP		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDY	<VRFLG
		BEQ	OBCHCNG		; VRFLG on ?
;					; yes
		LDA	VTBLL,Y
		STA	<WORK		; BG data address (L) set
		LDA	VTBLH,Y
		STA	<WORK1		;                 (H)
		LDA	VTBLB,Y
		STA	<WORK2		;                 (B)
;;;;;;;;		LDA	<VRFLG
;;;;;;;;		BEQ	OBCHCNG		; VRFLG on ?
;;;;;;;;;					; yes
;;;;;;;;		ASL	A
;;;;;;;;		CLC
;;;;;;;;		ADC	<VRFLG
;;;;;;;;		TAY
;;;;;;;;		LDA	VTABLE,Y
;;;;;;;;		STA	<WORK		; BG data address (L) set
;;;;;;;;		LDA	VTABLE+1,Y
;;;;;;;;		STA	<WORK1		;                 (H)
;;;;;;;;		LDA	VTABLE+2,Y
;;;;;;;;		STA	<WORK2		;                 (B)
		JSR	VRAMTR		; VRAM write
;
		LDA	<VRFLG
		CMP	#001H
		BNE	VMD010		; VRAMD write?
;					; yes
		STZ	!VRAMD
		STZ	!VRAMD1
;///////		LDA	#0FFH
;///////		STA	!VRAMD2
VMD010		EQU	$
		STZ	<VRFLG
;
;
;
;
;************************************************************************
;*		OBJ. BG. character change		(OBCHCNG)	*
;************************************************************************
OBCHCNG		EQU	$
		LDA	<OBCCFG
		BEQ	BGCHWT		; OBJ. BG. character change ?
;					; yes
		STA	2117H		; Vram address set
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00080H
		STX	2115H		; Vram address auto inc. & Vram address (H)
		LDX	#01801H
		STX	4300H		; inc. mode & B-bus address set
		LDX	!CHADRF
		STX	4302H		; A-bus address (L,H)
		LDA	#BANK RSETCBF
		STA	4304H		; A-bus address (B)
		LDX	#00020H*(10H*1)
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; DMA ch "ON"
;
		STZ	<OBCCFG
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
;
;
;
;************************************************************************
;*		BG. change write			(BGCHWT)	*
;************************************************************************
BGCHWT		EQU	$
		LDX	<BGCHFG
		BEQ	BGWRITE		; BG. change write ?
;					; yes
		STZ	4314H		; A-bus address (B)
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#01801H
		STA	4310H		; DMA control paramater & B-bus address set
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00000H
		LDA	!BGCWBF,X
BGCW140		EQU	$
		STA	2116H		; Vram address set
;
		TXA
		CLC
		ADC	#BGCWBF+4
		STA	4312H		; A-bus address set
;
		LDA	!BGCWBF+3,X
		AND	#000FFH
		STA	4315H		; count set
		CLC
		ADC	#00004H
		STA	<WORK0
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	!BGCWBF+2,X
;// 02.06.05 //		ORA	#10000000B
		STA	2115H		; VRAM address auto inc
;
		LDA	#00000010B
		STA	420BH		; DMA ch "ON"
;
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		TXA
;///////		CLC
		ADC	<WORK0
		TAX
		LDA	!BGCWBF,X
		CMP	#0FFFFH
		BNE	BGCW140		; end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	<BGCHFG		; BG. change flag off
		STZ	!GMAPDF
;
;
;
;
;************************************************************************
;*		BG.  write				(BGWRITE)	*
;************************************************************************
BGWRITE		EQU	$
		LDA	<BGWTFG
		ASL	A
		TAX
		STZ	<BGWTFG
		JMP	(BGWTTBL,X)
;
;
BGWTTBL		EQU	$
bg0		WORD	NOTHING		; 0 :
bg1		WORD	NXBGWT		; 1 :
bg2		WORD	MMJIWT		; 2 :
bg3		WORD	GNDBGW		; 3 :
bg4		WORD	GNDBGRW		; 4 :
bg5		WORD	B1CLVMA		; 5 :
bg6		WORD	B1CLVMA1	; 6 :
bg7		WORD	GMAPWT		; 7 :
bg8		WORD	MPBGWT		; 8 :
bg9		WORD	BGCHCNG0	; 9 :
bgA		WORD	BGCHCNG1	; A :
bgB		WORD	SPOCCNG		; B :
bgC		WORD	GDABGRW0	; C :
bgD		WORD	GDABGRW1	; D :
bgE		WORD	BGCHCNG2	; E :
bgF		WORD	BGCHCNG3	; F :
bg10		WORD	BGCHCNG4	;10 :
bg11		WORD	BGCHCNG5	;11 :
bg12		WORD	OJCHCNG2	;12 :
bg13		WORD	OJCHCNG3	;13 :
bg14		WORD	OJCHCNG4	;14 :
bg15		WORD	GMAPWT1		;15 :
bg16		WORD	GOVMJWT		;16 :
bg17		WORD	TMYKCNG		;17 :
bg18		WORD	SWHCNG		;18 :
;
;
bgw1		EQU	(bg1-bg0)/2
bgw2		EQU	(bg2-bg0)/2
bgw3		EQU	(bg3-bg0)/2
bgw4		EQU	(bg4-bg0)/2
bgw5		EQU	(bg5-bg0)/2
bgw6		EQU	(bg6-bg0)/2
bgw7		EQU	(bg7-bg0)/2
bgw8		EQU	(bg8-bg0)/2
bgw9		EQU	(bg9-bg0)/2
bgwA		EQU	(bgA-bg0)/2
bgwB		EQU	(bgB-bg0)/2
bgwC		EQU	(bgC-bg0)/2
bgwD		EQU	(bgD-bg0)/2
bgwE		EQU	(bgE-bg0)/2
bgwF		EQU	(bgF-bg0)/2
bgw10		EQU	(bg10-bg0)/2
bgw11		EQU	(bg11-bg0)/2
bgw12		EQU	(bg12-bg0)/2
bgw13		EQU	(bg13-bg0)/2
bgw14		EQU	(bg14-bg0)/2
bgw15		EQU	(bg15-bg0)/2
bgw16		EQU	(bg16-bg0)/2
bgw17		EQU	(bg17-bg0)/2
bgw18		EQU	(bg18-bg0)/2
;
;
;
;************************************************************************
;*		Next BG. write				(NXBGWT)	*
;************************************************************************
NXBGWT		EQU	$
		LDX	!NXBWFG
		LDA	NVRADH,X	; VRAM address
		STA	2117H		; Vram address (H) set
;
		STZ	4304H		; A-bus address (B)
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00080H
		STA	2115H		; Vram address auto inc. & Vram address (L) set
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDA	#WBGBUF
		STA	4302H		; A-bus address (L,H)
		LDA	#00800H
		STA	4305H		; data count
;
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		STZ	!VRAMD
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	!GMAPDF
NOTHING		EQU	$
		RTS
;
;
;
;************************************************************************
;*		Message Moji character write		(MMJIWT)	*
;************************************************************************
MMJIWT		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDA	#10000000B
		STA	2115H		; Vram address auto inc.
		LDX	#01801H
		STX	4300H		; inc. mode & B-bus address set
;
		LDY	#07C00H
		STY	2116H		; Vram address set
;
		LDY	#MOJIBUF
		STY	4302H		; A-bus address (L,H)
		LDA	#BANK MOJIBUF
		STA	4304H		; A-bus address (B)
		LDX	#00010H*120
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; HEAD DMA on!!
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
		STZ	!GMAPDF
		RTS
;
;
;
;************************************************************************
;*		Ground BG. write			(GNDBGW)	*
;************************************************************************
GNDBGW		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#01801H
		STX	4300H		; inc. mode & B-bus address set
		STZ	4304H		; A-bus address (B)
;
;// 02.12.25 //		LDA	!VRAMD+3
		LDA	!BGCWBF+1
		AND	#10000000B
		ASL	A
		ROL	A
		ORA	#10000000B
		STA	2115H		; VRAM address auto inc.
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
;// 02.12.25 //		LDA	!VRAMD+2
		LDA	!BGCWBF
		AND	#03FFFH
;// 03.06.27 //		INC	A
		TAX
		INC	A		;// 02.12.10 //
		INC	A		;// 02.12.10 //
		STA	<WORK2
;
		LDY	#00000H
GBWT40		EQU	$
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
;// 02.12.25 //		LDA	!VRAMD+4,Y
		LDA	!BGCWBF+2,Y
		STA	2116H		; Vram address (L,H)
;
		TYA
;// 02.12.25 //		ADC	#VRAMD+6
		ADC	#BGCWBF+4	;// 02.12.10 //
		STA	4302H		; A-bus address (L,H)
;
		TYA
		ADC	<WORK2
		TAY
;
		STX	4305H		; count set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#00000001B
		STA	420BH		; DMA ch "ON"
;
;// 02.12.25 //		LDA	!VRAMD+5,Y
		LDA	!BGCWBF+3,Y
		BPL	GBWT40		; end ?
;					; yes
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	!GMAPDF
		RTS
;
;
;
;************************************************************************
;*		Ground BG. rewrite			(GNDBGRW)	*
;************************************************************************
GNDBGRW		EQU	$
		LDA	#BANK GRWRBF
		STA	4304H		; A-bus address (B)
;
		LDA	#10000000B
		STA	2115H		; VRAM address auto inc.
;
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDA	#GRWRBF
		STA	4302H
;
;// 03.02.01 //		LDX	#00002H*8*0
;// 03.02.01 //		LDA	#00002H*8*8
		LDX	#00002H*4*0
		LDA	#00002H*4*16
		BRA	GABRW00
;
;************************************************************************
;*		Ground after BG. rewrite - 1		(GDABGRW1)	*
;************************************************************************
		MEM8
		IDX8
GDABGRW1	EQU	$
		LDA	#BANK GRWRBF
		STA	4304H		; A-bus address (B)
;
		LDA	#10000000B
		STA	2115H		; VRAM address auto inc.
;
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
;// 03.02.01 //		LDA	#GRWRBF+080H*8*0
		LDA	#GRWRBF+080H*4*0
		STA	4302H
;
;// 03.02.01 //		LDX	#00002H*8*0
;// 03.02.01 //		LDA	#00002H*8*4
		LDX	#00002H*4*0
		LDA	#00002H*4*8
		BRA	GABRW00
;
;************************************************************************
;*		Ground BG. rewrite - 0			(GDABGRW0)	*
;************************************************************************
		MEM8
		IDX8
GDABGRW0	EQU	$
		LDA	#BANK GRWRBF
		STA	4304H		; A-bus address (B)
;
		LDA	#10000000B
		STA	2115H		; VRAM address auto inc.
;
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
;// 03.02.01 //		LDA	#GRWRBF+080H*8*4
		LDA	#GRWRBF+080H*4*8
		STA	4302H
;
;// 03.02.01 //		LDX	#00002H*8*4
;// 03.02.01 //		LDA	#00002H*8*8
		LDX	#00002H*4*8
		LDA	#00002H*4*16
GABRW00		EQU	$
		STA	<WORK2		; (work2) <-- end check data
;
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDA	#00001H
		STA	<WORK0
;
		LDY	#00080H
GABRW40		EQU	$
		LDA	>GRWRBF+2000H+2*0,X
		STA	2116H		; Vram address (L,H)
		STY	4305H		; count set
		LDA	<WORK0
		STA	420BH		; DMA ch "ON"
;
		LDA	>GRWRBF+2000H+2*1,X
		STA	2116H		; Vram address (L,H)
		STY	4305H		; count set
		LDA	<WORK0
		STA	420BH		; DMA ch "ON"
;
		LDA	>GRWRBF+2000H+2*2,X
		STA	2116H		; Vram address (L,H)
		STY	4305H		; count set
		LDA	<WORK0
		STA	420BH		; DMA ch "ON"
;
		LDA	>GRWRBF+2000H+2*3,X
		STA	2116H		; Vram address (L,H)
		STY	4305H		; count set
		LDA	<WORK0
		STA	420BH		; DMA ch "ON"
;
		TXA
		ADC	#00002H*4
		TAX
		CMP	<WORK2
		BNE	GABRW40		; data end ?
;					; yes
;// 03.02.01 //		LDA	>GRWRBF+2000H+2*4,X
;// 03.02.01 //		STA	2116H		; Vram address (L,H)
;// 03.02.01 //		STY	4305H		; count set
;// 03.02.01 //		LDA	<WORK0
;// 03.02.01 //		STA	420BH		; DMA ch "ON"
;// 03.02.01 //;
;// 03.02.01 //		LDA	>GRWRBF+2000H+2*5,X
;// 03.02.01 //		STA	2116H		; Vram address (L,H)
;// 03.02.01 //		STY	4305H		; count set
;// 03.02.01 //		LDA	<WORK0
;// 03.02.01 //		STA	420BH		; DMA ch "ON"
;// 03.02.01 //;
;// 03.02.01 //		LDA	>GRWRBF+2000H+2*6,X
;// 03.02.01 //		STA	2116H		; Vram address (L,H)
;// 03.02.01 //		STY	4305H		; count set
;// 03.02.01 //		LDA	<WORK0
;// 03.02.01 //		STA	420BH		; DMA ch "ON"
;// 03.02.01 //;
;// 03.02.01 //		LDA	>GRWRBF+2000H+2*7,X
;// 03.02.01 //		STA	2116H		; Vram address (L,H)
;// 03.02.01 //		STY	4305H		; count set
;// 03.02.01 //		LDA	<WORK0
;// 03.02.01 //		STA	420BH		; DMA ch "ON"
;// 03.02.01 //;
;// 03.02.01 //		TXA
;// 03.02.01 //		ADC	#00002H*8
;// 03.02.01 //		TAX
;// 03.02.01 //		CMP	<WORK2
;// 03.02.01 //		BEQ	GABRW80		; data end ?
;// 03.02.01 //;					; no
;// 03.02.01 //		JMP	GABRW40
;// 03.02.01 //;
;// 03.02.01 //GABRW80		EQU	$
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	!GMAPDF
		RTS
;
;
;
;************************************************************************
;*		BG.1 claer  VMA	(length)		(B1CLVMA)	*
;************************************************************************
B1CLVMA		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
;
		LDA	!B1CWF0
		STA	2116H		; Vram address set
		LDX	#10000001B
		STX	2115H		; Vram address auto inc. +32
		LDX	#BANK B1CWBF
		STX	4304H		; A-bus address (B)
		LDA	#B1CWBF
		STA	4302H		; A-bus address (L,H)
		LDA	#00040H
		STA	4305H		; data count
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		STA	4305H		; data count
		LDA	!B1CWF0
		CLC
		ADC	#00800H
		STA	2116H		; Vram address set
		LDA	#B1CWBF+40H
		STA	4302H		; A-bus address (L,H)
		STY	420BH		; DMA ch "ON"
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		BG.1 claer  VMA	(width)			(B1CLVMA1)	*
;************************************************************************
B1CLVMA1	EQU	$
;// 03.07.03 //		MEM16
;// 03.07.03 //		REP	#00100000B	; memory 16bit mode
;// 03.07.03 //;
;// 03.07.03 //		LDA	#01801H
;// 03.07.03 //		STA	4300H		; inc. mode & B-bus address set
;// 03.07.03 //;
;// 03.07.03 //		LDA	!B1CWF1
;// 03.07.03 //		STA	2116H		; Vram address set
;// 03.07.03 //		LDX	#10000000B
;// 03.07.03 //		STX	2115H		; Vram address auto inc.
;// 03.07.03 //		LDX	#BANK B1CWBF
;// 03.07.03 //		STX	4304H		; A-bus address (B)
;// 03.07.03 //		LDA	#B1CWBF
;// 03.07.03 //		STA	4302H		; A-bus address (L,H)
;// 03.07.03 //		LDA	#00040H
;// 03.07.03 //		STA	4305H		; data count
;// 03.07.03 //		LDY	#00000001B
;// 03.07.03 //		STY	420BH		; DMA ch "ON"
;// 03.07.03 //;
;// 03.07.03 //		STA	4305H		; data count
;// 03.07.03 //		LDA	!B1CWF1
;// 03.07.03 //		CLC
;// 03.07.03 //		ADC	#00400H
;// 03.07.03 //		STA	2116H		; Vram address set
;// 03.07.03 //		LDA	#B1CWBF+40H
;// 03.07.03 //		STA	4302H		; A-bus address (L,H)
;// 03.07.03 //		STY	420BH		; DMA ch "ON"
;// 03.07.03 //;
;// 03.07.03 //		MEM8
;// 03.07.03 //		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		Ground map (mode-7) BG. write		(GMAPWT)	*
;************************************************************************
GMPADD		EQU	$
		WORD	00000H,00020H,01000H,01020H
;
;
GMAPWT		EQU	$
		STZ	2115H
		LDA	#BANK SCRNDT
		STA	4304H		; A-bus address (B)
;// 03.01.09 //		STZ	4304H		; A-bus address (B)
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#01800H
		STA	4300H		; B-bus address & DMA control parameter set
		STZ	<WORK4
		STZ	<WORK2
		LDY	#00000001B
		LDX	#00000000B
GMPW20		EQU	$
		LDA	#00020H
		STA	<WORK6
		LDA	GMPADD,X
		STA	<WORK0
GMPW40		EQU	$
		LDA	<WORK0
		STA	2116H		; Vram address (L,H)
		CLC
		ADC	#00080H
		STA	<WORK0		; next Vram address
;
		LDA	<WORK2
		CLC
;// 03.01.09 //		ADC	#WBGBUF
		ADC	#SCRNDT
		STA	4302H		; A-bus address (L,H)
;
		LDA	#00020H
		STA	4305H		; count set
;
		STY	420BH		; DMA ch"on"
;
		CLC
		ADC	<WORK2
		STA	<WORK2
		DEC	<WORK6
		BNE	GMPW40		; data end ?
;					; yes
		INC	<WORK4
		INC	<WORK4
		LDX	<WORK4
		CPX	#008H
		BNE	GMPW20		; end ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		MAP BG. write				(MPBGWT)	*
;************************************************************************
MPBGWT		EQU	$
		LDA	#10000000B
		STA	2115H		; VRAM address auto inc
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDY	#00000H
		STY	2116H		; Vram address set
		LDY	#01801H
		STY	4310H
		LDY	#MAPBUF
		STY	4312H		; A-bus address (L,H)
		LDA	#BANK MAPBUF
		STA	4314H		;               (B)
		LDY	#00400H*2
		STY	4315H		; data count
		LDA	#00000010B
		STA	420BH		; DMA ch "ON"
;
		STY	4315H		; data count
		LDY	#00800H
		STY	2116H		; Vram address set
		LDY	#MAPBUF+0800H
		STY	4312H		; A-bus address (L,H)
		STA	420BH		; DMA ch "ON"
;
;
;
;// 03.03.06 //		LDY	#06304H
;// 03.03.06 //		STY	2116H		; Vram address set
;// 03.03.06 //		LDY	#MAPBUF2+14H*6
;// 03.03.06 //		STY	4312H		; A-bus address set
;// 03.03.06 //		LDY	#00008H*2
;// 03.03.06 //		STY	4315H		; data count
;// 03.03.06 //		STA	420BH		; DMA ch "ON"
;// 03.03.06 //;
;// 03.03.06 //;
;// 03.03.06 //;
;// 03.03.06 //		LDA	#10000001B
;// 03.03.06 //		STA	2115H		; Vram address auto inc. +32
;// 03.03.06 //		LDY	#011C3H
;// 03.03.06 //		STY	2116H		; Vram address set
;// 03.03.06 //		LDY	#MAPBUF2+14H*0
;// 03.03.06 //		STY	4312H		; A-bus address (L,H)
;// 03.03.06 //		LDX	#00009H*2
;// 03.03.06 //		STX	4315H		; data count
;// 03.03.06 //		LDA	#00000010B
;// 03.03.06 //		STA	420BH		; DMA ch "ON"
;// 03.03.06 //;
;// 03.03.06 //		LDY	#011C4H
;// 03.03.06 //		STY	2116H		; Vram address set
;// 03.03.06 //		LDY	#MAPBUF2+14H*1
;// 03.03.06 //		STY	4312H		; A-bus address (L,H)
;// 03.03.06 //		STX	4315H		; data count
;// 03.03.06 //		STA	420BH		; DMA ch "ON"
;// 03.03.06 //;
;// 03.03.06 //		LDY	#011C5H
;// 03.03.06 //		STY	2116H		; Vram address set
;// 03.03.06 //		LDY	#MAPBUF2+14H*2
;// 03.03.06 //		STY	4312H		; A-bus address (L,H)
;// 03.03.06 //		STX	4315H		; data count
;// 03.03.06 //		STA	420BH		; DMA ch "ON"
;// 03.03.06 //;
;// 03.03.06 //		LDY	#011C6H
;// 03.03.06 //		STY	2116H		; Vram address set
;// 03.03.06 //		LDY	#MAPBUF2+14H*3
;// 03.03.06 //		STY	4312H		; A-bus address (L,H)
;// 03.03.06 //		STX	4315H		; data count
;// 03.03.06 //		STA	420BH		; DMA ch "ON"
;// 03.03.06 //;
;// 03.03.06 //		LDY	#011C7H
;// 03.03.06 //		STY	2116H		; Vram address set
;// 03.03.06 //		LDY	#MAPBUF2+14H*4
;// 03.03.06 //		STY	4312H		; A-bus address (L,H)
;// 03.03.06 //		STX	4315H		; data count
;// 03.03.06 //		STA	420BH		; DMA ch "ON"
;// 03.03.06 //;
;// 03.03.06 //		LDY	#011C8H
;// 03.03.06 //		STY	2116H		; Vram address set
;// 03.03.06 //		LDY	#MAPBUF2+14H*5
;// 03.03.06 //		STY	4312H		; A-bus address (L,H)
;// 03.03.06 //		STX	4315H		; data count
;// 03.03.06 //		STA	420BH		; DMA ch "ON"
;
		IDX8
		SEP	#00010000B	; index 8bit mode
;
;// 03.03.15 //		STZ	!GMAPDF
		RTS
;
;
;
;************************************************************************
;*		BG. character change			(BGCHCNG0)	*
;************************************************************************
BGCHCNG0	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#02C00H
		STA	2116H		; Vram address set
		LDY	#080H
		STY	2115H		; Vram address auto inc. & Vram address (L) set
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDA	#RSETCBF
		STA	4302H		; A-bus address (L,H)
		LDY	#BANK RSETCBF
		STY	4304H		; A-bus address (B)
		LDA	#01000H
		STA	4305H		; data count
;
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	!GMAPDF
		RTS
;
;
;
;************************************************************************
;*		BG. character change			(BGCHCNG1)	*
;************************************************************************
BGCHCNG1	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#03400H
		STA	2116H		; Vram address set
		LDY	#080H
		STY	2115H		; Vram address auto inc. & Vram address (L) set
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDA	#RSETCBF+1000H
		STA	4302H		; A-bus address (L,H)
		LDY	#BANK RSETCBF+1000H
		STY	4304H		; A-bus address (B)
		LDA	#01000H
		STA	4305H		; data count
;
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	!GMAPDF
		RTS
;
;
;
;
;************************************************************************
;*		Special OBJ. character change		(SPOCCNG)	*
;************************************************************************
SPOCCNG		EQU	$
		LDA	!NXBWFG
		STA	2117H		; Vram address set
;
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#00080H
		STX	2115H		; Vram address auto inc. & Vram address (H)
		LDX	#01801H
		STX	4300H		; inc. mode & B-bus address set
		LDX	#RSETCBF+1000H
		STX	4302H		; A-bus address (L,H)
		LDA	#BANK RSETCBF+1000H
		STA	4304H		; A-bus address (B)
		LDX	#00020H*(10H*2)
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; DMA ch "ON"
;
		IDX8
		SEP	#00010000B	; index 8bit mode
		RTS
;
;
;
;************************************************************************
;*		BG. character change			(BGCHCNG2)	*
;************************************************************************
BGCHCNG2	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#02000H
		BRA	BGCHCNG9
;
;************************************************************************
;*		BG. character change			(BGCHCNG3)	*
;************************************************************************
BGCHCNG3	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#02800H
		BRA	BGCHCNG9
;
;************************************************************************
;*		BG. character change			(BGCHCNG4)	*
;************************************************************************
BGCHCNG4	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#03000H
		BRA	BGCHCNG9
;
;************************************************************************
;*		BG. character change			(BGCHCNG5)	*
;************************************************************************
BGCHCNG5	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#03800H
		BRA	BGCHCNG9
;
;************************************************************************
;*		OBJ. character change			(OJCHCNG2)	*
;************************************************************************
OJCHCNG2	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#04400H
		STA	2116H		; Vram address set
		LDA	#RSETCBF
		STA	4302H		; A-bus address (L,H)
		LDY	#080H
		STY	2115H		; Vram address auto inc. & Vram address (L) set
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDY	#BANK RSETCBF
		STY	4304H		; A-bus address (B)
		LDA	#00800H
		STA	4305H		; data count
;
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	!GMAPDF
		RTS
;
;
;
;************************************************************************
;*		OBJ. character change			(OJCHCNG3)	*
;************************************************************************
OJCHCNG3	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#05000H
		BRA	BGCHCNG9
;
;************************************************************************
;*		OBJ. character change			(OJCHCNG4)	*
;************************************************************************
OJCHCNG4	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#05800H
BGCHCNG9	EQU	$
		STA	2116H		; Vram address set
		LDA	#RSETCBF
		STA	4302H		; A-bus address (L,H)
		LDY	#080H
		STY	2115H		; Vram address auto inc. & Vram address (L) set
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDY	#BANK RSETCBF
		STY	4304H		; A-bus address (B)
		LDA	#01000H
		STA	4305H		; data count
;
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		STZ	!GMAPDF
		RTS
;
;
;
;************************************************************************
;*		UAR Ground map (mode-7) BG. write	(GMAPWT1)	*
;************************************************************************
GMAPWT1		EQU	$
		STZ	2115H
		STZ	4304H		; A-bus address (B)
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#01800H
		STA	4300H		; B-bus address & DMA control parameter set
		STZ	<WORK2
		LDA	#00020H
		STA	<WORK6
		LDA	#00810H
		STA	<WORK0
;
		LDY	#00000001B
GMPW140		EQU	$
		LDA	<WORK0
		STA	2116H		; Vram address (L,H)
		CLC
		ADC	#00080H
		STA	<WORK0		; next Vram address
;
		LDA	<WORK2
		CLC
		ADC	#WBGBUF
		STA	4302H		; A-bus address (L,H)
;
		LDA	#00020H
		STA	4305H		; count set
;
		STY	420BH		; DMA ch"on"
;
		CLC
		ADC	<WORK2
		STA	<WORK2
		DEC	<WORK6
		BNE	GMPW140		; data end ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;************************************************************************
;*		GameOver msaage character set		(GOVMJWT)	*
;************************************************************************
GOVMJWT		EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#07800H
		STA	2116H		; Vram address set
		LDA	#GDBUF0
		STA	4302H		; A-bus address (L,H)
		LDY	#080H
		STY	2115H		; Vram address auto inc. & Vram address (L) set
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDY	#BANK GDBUF0
		STY	4304H		; A-bus address (B)
		LDA	#00080H*10H
		STA	4305H		; data count
;
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		LDA	#07D00H
		STA	2116H		; Vram address set
		LDA	#GDBUF0+140H*10H
		STA	4302H		; A-bus address (L,H)
		LDY	#080H
		STY	2115H		; Vram address auto inc. & Vram address (L) set
		LDA	#01801H
		STA	4300H		; inc. mode & B-bus address set
		LDY	#BANK GDBUF0
		STY	4304H		; A-bus address (B)
		LDA	#00060H*10H
		STA	4305H		; data count
;
		LDY	#00000001B
		STY	420BH		; DMA ch "ON"
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Tama-yuka change			(TMYKCNG)	*
;************************************************************************
TMYKCNG		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#03D00H
		STX	2116H		; Vram address (L,H)
		LDA	#080H
		STA	2115H		; Vram address auto inc.
		LDX	#01801H
		STX	4300H		; inc. mode & B-bus address set
		LDX	#RSETCBF
		STX	4302H		; A-bus address (L,H)
		LDA	#BANK RSETCBF
		STA	4304H		; A-bus address (B)
		LDX	#00020H*8
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; DMA ch "ON"
;
		IDX8
		SEP	#00010000B	; index 8bit mode
		RTS
;
;
;
;
;************************************************************************
;*		Swich-yuka change			(SWHCNG)	*
;************************************************************************
SWHCNG		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		LDX	#03ED0H
		STX	2116H		; Vram address (L,H)
		LDA	#080H
		STA	2115H		; Vram address auto inc.
		LDX	#01801H
		STX	4300H		; inc. mode & B-bus address set
		LDX	#RSETCBF
		STX	4302H		; A-bus address (L,H)
		LDA	#BANK RSETCBF
		STA	4304H		; A-bus address (B)
		LDX	#00020H*2
		STX	4305H		; data count
		LDA	#00000001B
		STA	420BH		; DMA ch "ON"
;
		IDX8
		SEP	#00010000B	; index 8bit mode
		RTS
;
;
;
;
;
;
;========================================================================
;************************************************************************
;*		Danjyon BG. write			(DJBGWT)	*
;************************************************************************
DJBGWT		EQU	$
		JSR	NXBGWT		; BG. write
		RTL
;
;
;
;
;************************************************************************
;*		Ground BG. write			(GDBGWT)	*
;************************************************************************
GDBGWT		EQU	$
		JSR	GNDBGW		; BG. write
		RTL
;
;
;
;
;************************************************************************
;*		Vram data write				(VDTWT)		*
;************************************************************************
VDTWT		EQU	$
		STA	<VRFLG
		TAY
		LDA	!VTBLL,Y
		STA	<WORK		; BG data address (L) set
		LDA	!VTBLH,Y
		STA	<WORK1		;                 (H)
		LDA	!VTBLB,Y
		STA	<WORK2		;                 (B)
;;;;;;;;		STA	<VRFLG
;;;;;;;;		ASL	A
;;;;;;;;		CLC
;;;;;;;;		ADC	<VRFLG
;;;;;;;;		TAY
;;;;;;;;		LDA	!VTABLE,Y
;;;;;;;;		STA	<WORK		; BG data address (L) set
;;;;;;;;		LDA	!VTABLE+1,Y
;;;;;;;;		STA	<WORK1		;                 (H)
;;;;;;;;		LDA	!VTABLE+2,Y
;;;;;;;;		STA	<WORK2		;                 (B)
		JSR	VRAMTR		; VRAM write
;
		LDA	<VRFLG
		CMP	#001H
		BNE	VDW40		; VRAMD write?
;					; yes
		STZ	!VRAMD
		STZ	!VRAMD1
;///////		LDA	#0FFH
;///////		STA	!VRAMD2
VDW40		EQU	$
		STZ	<VRFLG
		RTL
;
;
;
;************************************************************************
;*		Next BG. buffer set - 0 [BG.2]		(WBUFS0)	*
;************************************************************************
DTGPNT		EQU	$		; data get point
		WORD	00000H,01000H,00000H,00040H
		WORD	00040H,01040H,01000H,01040H
		WORD	01000H,00000H,00040H,00000H
		WORD	01040H,00040H,01040H,01000H
;
WRTPT0		EQU	$		; write point data
		BYTE	001H,005H,009H,00DH
		BYTE	002H,006H,00AH,00EH
		BYTE	003H,007H,00BH,00FH
		BYTE	004H,008H,00CH,010H
;
;
;
WBUFS0		EQU	$
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDA	!SCRLFG
		AND	#0000FH
;///////		CLC
		ADC	!WBFPNT
		PHA			; (A) push
		ASL	A
		TAY
;
		LDX	DTGPNT,Y
		LDY	#00000H
WBFS040		EQU	$
		LDA	>ROOMBF+000H,X
		STA	!WBGBUF+000H,Y
		LDA	>ROOMBF+002H,X
		STA	!WBGBUF+002H,Y
;
		LDA	>ROOMBF+080H,X
		STA	!WBGBUF+040H,Y
		LDA	>ROOMBF+082H,X
		STA	!WBGBUF+042H,Y
;
		LDA	>ROOMBF+100H,X
		STA	!WBGBUF+080H,Y
		LDA	>ROOMBF+102H,X
		STA	!WBGBUF+082H,Y
;
		LDA	>ROOMBF+180H,X
		STA	!WBGBUF+0C0H,Y
		LDA	>ROOMBF+182H,X
		STA	!WBGBUF+0C2H,Y
;
		INX
		INX
		INX
		INX
		INY
		INY
		INY
		INY
		TYA
		AND	#0003FH
		BNE	WBFS040		; 1-line end ?
;					; yes
		TYA
		CLC
		ADC	#000C0H
		TAY
		TXA
		CLC
		ADC	#001C0H
		TAX
		CPY	#00800H
		BNE	WBFS040		; set end ?
;					; yes
		PLX			; (X) <-- (A) pull
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		LDA	!WBFPNT
		CLC
		ADC	#004H
		STA	!WBFPNT
;
		LDA	WRTPT0,X
		STA	!NXBWFG		; write point set
		LDA	#bgw1
		STA	<BGWTFG
		STA	!GMAPDF
		RTL
;
;
;
;************************************************************************
;*		Next BG. buffer set - 1 [BG.1]		(WBUFS1)	*
;************************************************************************
WBUFS1		EQU	$
		LDA	<INFDF0
		CMP	#inf_wup
		BNE	WBFS120		; water-up information ?
;					; yes
		LDA	!INFSTT+1
		AND	>BITCD0+1
		BEQ	WBFS200		; BG.1 write ok ?
;					; yes
WBFS120		EQU	$
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDA	!SCRLFG
		AND	#0000FH
;///////		CLC
		ADC	!WBFPNT
		PHA			; (A) push
		ASL	A
		TAY
;
		LDX	DTGPNT,Y
		LDY	#00000H
WBFS140		EQU	$
		LDA	>BG1RBF+000H,X
		STA	!WBGBUF+000H,Y
		LDA	>BG1RBF+002H,X
		STA	!WBGBUF+002H,Y
;
		LDA	>BG1RBF+080H,X
		STA	!WBGBUF+040H,Y
		LDA	>BG1RBF+082H,X
		STA	!WBGBUF+042H,Y
;
		LDA	>BG1RBF+100H,X
		STA	!WBGBUF+080H,Y
		LDA	>BG1RBF+102H,X
		STA	!WBGBUF+082H,Y
;
		LDA	>BG1RBF+180H,X
		STA	!WBGBUF+0C0H,Y
		LDA	>BG1RBF+182H,X
		STA	!WBGBUF+0C2H,Y
;
		INX
		INX
		INX
		INX
		INY
		INY
		INY
		INY
		TYA
		AND	#0003FH
		BNE	WBFS140		; 1-line end ?
;					; yes
		TYA
		CLC
		ADC	#000C0H
		TAY
		TXA
		CLC
		ADC	#001C0H
		TAX
		CPY	#00800H
		BNE	WBFS140		; set end ?
;					; yes
		PLX			; (X) <-- (A) pull
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		LDA	WRTPT0,X
		CLC
		ADC	#010H
		STA	!NXBWFG		; write point set
		LDA	#bgw1
		STA	<BGWTFG
		STA	!GMAPDF
		RTL
;
;
WBFS200		EQU	$
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDX	#cnulld
		LDY	#00000H
WBFS240		EQU	$
		LDA	!UNITDT,X
		STA	!WBGBUF+000H,Y
		STA	!WBGBUF+002H,Y
;
		STA	!WBGBUF+040H,Y
		STA	!WBGBUF+042H,Y
;
		STA	!WBGBUF+080H,Y
		STA	!WBGBUF+082H,Y
;
		STA	!WBGBUF+0C0H,Y
		STA	!WBGBUF+0C2H,Y
;
		INY
		INY
		INY
		INY
		TYA
		AND	#0003FH
		BNE	WBFS240		; 1-line end ?
;					; yes
		TYA
		CLC
		ADC	#000C0H
		TAY
		CPY	#00800H
		BNE	WBFS240		; set end ?
;					; yes
		LDA	!SCRLFG
		AND	#0000FH
		CLC
		ADC	!WBFPNT
		TAX
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 16bit mode
;
		LDA	WRTPT0,X
		CLC
		ADC	#010H
		STA	!NXBWFG		; write point set
		RTL
;
;
;
;
;************************************************************************
;*		Vram write				(VRAMTR)	*
;************************************************************************
VRAMTR		EQU	$
		IDX16
		REP	#00010000B	; index 16bit mode
;
		STA	4314H		; data address (B) set
		STZ	<WORK6
;
		LDY	#00000H
VMR050		EQU	$
		LDA	[<WORK0],Y
		BPL	VMR100		; end ?
;					; yes
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
VMR100		EQU	$
		STA	<WORK4
		INY
		LDA	[<WORK0],Y
		STA	<WORK3
		INY
		LDA	[<WORK0],Y
		AND	#10000000B
		ASL	A
		ROL	A
		STA	<WORK7
;
		LDA	[<WORK0],Y
		AND	#01000000B
		STA	<WORK5
		LSR	A
		LSR	A
		LSR	A
		ORA	#00000001B
		STA	4310H		; inc. mode set
;
		LDA	#018H
		STA	4311H		; B-bus address set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<WORK3
		STA	2116H		; Vram address set
;
		LDA	[<WORK0],Y
		XBA
		AND	#03FFFH
		TAX
		INX
		STX	4315H		; data count
;
		INY
		INY
		TYA
		CLC
		ADC	<WORK0
		STA	4312H		; data address (L,H) set
;
		LDA	<WORK5
		BEQ	VTR150		; kyotsu ?
;					; yes
		INX
		TXA
		LSR	A
		TAX
		STX	4315H		; data count reset
;
		MEM8
		SEP	#00100000B	; memory 8bit set
;
		LDA	<WORK5
		LSR	A
		LSR	A
		LSR	A
		STA	4310H
;
		LDA	<WORK7
		STA	2115H		; Vram address auto inc.
;
		LDA	#00000010B
		STA	420BH		; DMA ch "ON"
;
;
		LDA	#019H
		STA	4311H		; B-bus address set
;
		MEM16
		REP	#00100001B	; memory 16bit mode & CLC
;
		TYA
;///////		CLC
		ADC	<WORK0
		INC	A
		STA	4312H		; data address (L,H) set
;
		LDA	<WORK3
		STA	2116H		; Vram address set
;
		STX	4315H		; data count
;
		LDX	#0002H
VTR150		EQU	$
		STX	<WORK3
		TYA
		CLC
		ADC	<WORK3
		TAY
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<WORK7
		ORA	#10000000B
		STA	2115H		; VRAM address auto inc.
;
		LDA	#00000010B
		STA	420BH		; DMA ch "ON"
;
		LDA	[<WORK0],Y
;// 03.05.13 //		BPL	VMR100		; end ?
;// 03.05.13 //;					; yes
		BMI	VMR200		; end ?
;					; no
		JMP	VMR100
;
VMR200		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Polygon character DMA		(Object_transfer)	*
;************************************************************************
Object_transfer	EQU	$
		LDA	transfer_flag
		BEQ	Exit
;
		LDA	#10000000B
		STA	2115H		; inc mode set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
;// 03.06.03 //		LDA	#05C00H
		LDA	#05800H
		STA	2116H		; Vram address set
;
		LDA	#01801H
		STA	4300H		; DMA control & B-bus address set
		LDA	#POLY_CHR_BUF
		STA	4302H		; A-bus address (L,H)
		LDX	#BANK POLY_CHR_BUF
		STX	4304H		; A-bus address (B)
		LDA	#00800H
		STA	4305H		; count set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#00000001B
		STA	420BH		; DMA ch"on"
		STZ	transfer_flag
Exit		EQU	$
		RTS
;
;
;
;
;
;
;************************************************************************
;*		VMA  table						*
;************************************************************************
;;;;;;;;VTABLE		EQU	$-3
;;;;;;;;		LWORD	VRAMD2		; VT01
;;;;;;;;		LWORD	WBGBUF		; VT02 
;;;;;;;;		LWORD	TILBGD		; VT03
;;;;;;;;		LWORD	MTRCBF		; VT04
VTBLL		EQU	$-1
vramd2		BYTE	LOW VRAMD2
wbgbuf		BYTE	LOW WBGBUF
tilbgd		BYTE	LOW TILBGD
mtrcbf		BYTE	LOW MTRCBF
torokust	BYTE	LOW TOROKUST
tilbgd1		BYTE	LOW TILBGD1		; play select BG
ticpbgd1	BYTE	LOW TICPBGD1		; play copy BG
tilbgd2		BYTE	LOW TILBGD2		; play kill BG
mapwaku		BYTE	LOW MAPWAKU		; danjyon map
;
;
VTBLH		EQU	$-1
		BYTE	HIGH VRAMD2
		BYTE	HIGH WBGBUF
		BYTE	HIGH TILBGD
		BYTE	HIGH MTRCBF
		BYTE	HIGH TOROKUST
		BYTE	HIGH TILBGD1
		BYTE	HIGH TICPBGD1
		BYTE	HIGH TILBGD2
		BYTE	HIGH MAPWAKU
;
;
VTBLB		EQU	$-1
		BYTE	BANK VRAMD2
		BYTE	BANK WBGBUF
		BYTE	BANK TILBGD
		BYTE	BANK MTRCBF
		BYTE	BANK TOROKUST
		BYTE	BANK TILBGD1
		BYTE	BANK TICPBGD1
		BYTE	BANK TILBGD2
		BYTE	BANK MAPWAKU
;
;
;
;
VT01		EQU	vramd2-VTBLL
VT02		EQU	wbgbuf-VTBLL
VT03		EQU	tilbgd-VTBLL
VT04		EQU	mtrcbf-VTBLL
VT05		EQU	torokust-VTBLL
VT06		EQU	tilbgd1-VTBLL
VT07		EQU	ticpbgd1-VTBLL
VT08		EQU	tilbgd2-VTBLL
VT09		EQU	mapwaku-VTBLL
;
;
;************************************************************************
;*		Player character data					*
;************************************************************************
PCHDT0		EQU	$
		WORD	08080H,08080H,08080H,08080H,08080H,08040H,08040H,08040H
		WORD	08040H,08040H,08000H,08000H,08000H,08000H,08000H,08000H
		WORD	09440H,08080H,08080H,08080H,09400H,08040H,080C0H,080C0H
		WORD	08000H,08000H,08000H,08000H,08000H,08000H,08000H,08000H
		WORD	08080H,08080H,08080H,08080H,08080H,08040H,08040H,08040H
		WORD	08040H,08040H,08000H,0A8C0H,0A900H,08000H,0A8C0H,0A900H
		WORD	09100H,08080H,08080H,090C0H,08040H,08000H,08000H,08000H
		WORD	08000H,08000H,08000H,09A00H,09140H,09180H,08000H,09500H
		WORD	09480H,094C0H,094C0H,09AE0H,08080H,08080H,09A60H,080C0H
		WORD	080C0H,09AA0H,08000H,08000H,09AA0H,08000H,08000H,08080H
		WORD	08080H,08100H,08100H,085C0H,08000H,08000H,085C0H,08000H
		WORD	08000H,0ADC0H,0ADC0H,0ADC0H,0ADC0H,0ADC0H,0AD40H,0AD40H
		WORD	0AD40H,0AD40H,0AD40H,0AD80H,0AD80H,0AD80H,0AD80H,0AD80H
		WORD	0AD80H,08040H,09400H,08040H,08000H,08080H,08080H,09440H
		WORD	08000H,08000H,08000H,08000H,08080H,08040H,08040H,08000H
		WORD	08000H,08000H,08000H,08000H,08000H,0C440H,08140H,08140H
		WORD	0CA40H,08000H,08000H,08000H,08000H,08000H,08000H,08040H
		WORD	085C0H,08040H,085C0H,08100H,080C0H,091C0H,08080H,08080H
		WORD	08040H,08040H,08000H,08000H,08000H,08000H,08080H,08080H
		WORD	09100H,0A0C0H,0A100H,0A100H,0A1C0H,0A400H,0A440H,0A1C0H
		WORD	0A400H,0A440H,08080H,0C480H,08080H,08040H,08040H,0CA80H
		WORD	0CA80H,0CA00H,0C400H,0CA00H,0C400H,081C0H,08080H,08080H
		WORD	08080H,08080H,08080H,08080H,08080H,08080H,08040H,08040H
		WORD	08040H,08040H,08040H,08040H,08040H,08000H,0A8C0H,0A900H
		WORD	08000H,08000H,0A8C0H,0A900H,08000H,0A8C0H,0A900H,08000H
		WORD	08000H,0A8C0H,0A900H,08040H,08040H,08040H,08080H,08080H
		WORD	08040H,08040H,08040H,08040H,08000H,08000H,08000H,08000H
		WORD	0D080H,08080H,090C0H,0D000H,09080H,0D040H,09080H,0D040H
		WORD	0D080H,0D080H,0D080H,0D080H,0D080H,0D000H,0D000H,0D000H
		WORD	0D000H,0D000H,0D040H,0D040H,0D040H,0D040H,0D040H,0D040H
		WORD	08040H,0D000H,085C0H,085C0H,085C0H,0DC40H,0DC40H,0DC40H
		WORD	085C0H,085C0H,085C0H,0DC40H,0DC40H,0DC40H,0E1C0H,0D000H
		WORD	08000H,0E400H,0E400H,0E440H,090C0H,090C0H,0D000H,08000H
		WORD	08000H,0D040H,08000H,08000H,0D040H,0E400H,0E400H,0E400H
		WORD	09080H,0A5C0H,0AC40H,0E480H,08180H,090C0H,080C0H,0E180H
		WORD	0D000H,0E4C0H,0E4C0H,0E840H,0E840H,0E840H,0E540H,0E540H
		WORD	0E540H,0E900H,0E900H,0E900H,0E900H,08080H,08080H,08000H
		WORD	0A9C0H,08080H,08140H,091C0H,08040H,0A800H,0A840H
PCHDT1		EQU	$
		WORD	08840H,08800H,08580H,08800H,08580H,084C0H,08500H,08540H
		WORD	08500H,08540H,08400H,08440H,08480H,08400H,08440H,08480H
		WORD	09640H,08C40H,08C80H,0AD00H,09600H,08980H,08C00H,0ACC0H
		WORD	08880H,088C0H,08900H,08940H,08880H,088C0H,08900H,08940H
		WORD	0B0C0H,0B100H,0B140H,0B100H,0B140H,0B000H,0B040H,0B080H
		WORD	0EC80H,0ECC0H,0B180H,0D440H,0B1C0H,0B180H,0D440H,0B1C0H
		WORD	08C80H,0AD00H,095C0H,099C0H,0B440H,09580H,0B480H,0B4C0H
		WORD	09580H,0B480H,0B4C0H,09C20H,08000H,08000H,08000H,09700H
		WORD	09680H,096C0H,096C0H,09CE0H,08C80H,0B540H,09C60H,0B580H
		WORD	08C00H,09CA0H,08900H,0B500H,09CA0H,08900H,0B500H,08C40H
		WORD	0EC40H,08C00H,0EC00H,08DC0H,09540H,089C0H,08DC0H,09540H
		WORD	089C0H,0B940H,0B980H,0B9C0H,0B980H,0B9C0H,0B5C0H,0B800H
		WORD	0B840H,0B800H,0B840H,0B880H,0B8C0H,0B900H,0B880H,0B8C0H
		WORD	0B900H,08980H,09600H,0BCC0H,08400H,0BC80H,08C40H,09640H
		WORD	0A040H,0A080H,0A000H,0BC40H,0BD40H,08500H,0BD00H,0BD80H
		WORD	0BD80H,088C0H,08900H,0E9C0H,08900H,0C640H,0C040H,0C000H
		WORD	0CC40H,08940H,088C0H,08900H,0E9C0H,08900H,08940H,08D40H
		WORD	08D80H,08D40H,08D80H,0BD00H,0B000H,0B000H,0A480H,0A480H
		WORD	0A480H,0A480H,0AC00H,0AC00H,0AC00H,0AC00H,0A140H,0A180H
		WORD	0A180H,0A4C0H,0A4C0H,0A500H,09D40H,09D80H,09DC0H,09D40H
		WORD	09D80H,09DC0H,08D00H,0C680H,0C180H,0C140H,08C00H,0CC80H
		WORD	0CC80H,0CC00H,0C600H,0CC00H,0C600H,0BD00H,08580H,08800H
		WORD	0C9C0H,0CCC0H,0CDC0H,0CD00H,0CD40H,0CD80H,08500H,08540H
		WORD	0C940H,0C980H,08540H,0C940H,0C980H,08440H,08480H,0C1C0H
		WORD	0C900H,0C580H,0C5C0H,0C8C0H,08440H,08480H,0C1C0H,0C900H
		WORD	0C580H,0C5C0H,0C8C0H,0BD00H,0ACC0H,0C040H,0D540H,0D580H
		WORD	0D4C0H,0D500H,0D4C0H,0D500H,0D440H,0D480H,0D440H,0D480H
		WORD	0D1C0H,0D400H,0D100H,0D100H,0D140H,0D180H,0D140H,0D180H
		WORD	0B0C0H,0B100H,0B140H,0B100H,0B140H,0DD40H,0DD80H,0DDC0H
		WORD	0DD80H,0DDC0H,0DC80H,0DCC0H,0DD00H,0DC80H,0DCC0H,0DD00H
		WORD	0D100H,0D100H,0E000H,0E040H,0E080H,0E0C0H,0E100H,0E140H
		WORD	0E000H,0E040H,0E080H,0E0C0H,0E100H,0E140H,08000H,0D0C0H
		WORD	08000H,0B940H,0B980H,0B940H,0DD40H,0DD80H,0DD40H,0DC80H
		WORD	0DCC0H,0C0C0H,0DC80H,0DCC0H,0C0C0H,0B9C0H,0B980H,0B9C0H
		WORD	0A560H,0A5A0H,0AC80H,0ED00H,08000H,08CC0H,0BD00H,0E380H
		WORD	0BDC0H,0E500H,0E500H,0E880H,0E8C0H,0E8C0H,0E800H,0E5C0H
		WORD	0E5C0H,0E940H,0E980H,0E940H,0E980H,0BD40H,08C80H,0A080H
		WORD	08000H,0A980H,0BD00H,0BDC0H,0B400H,0A880H,0EDC0H
;
;
PCHDT2		EQU	$		; player ARME character address data
;			 (0d2)  (0f0)  (0e9)  (0f9)  (0d9)  (1e1)  (1e1)  (1f1)
		WORD	09A40H,09E00H,09D20H,09F20H,09B20H,0BC20H,0BC20H,0BE20H
;			 (1f1)  (1f0)  (1f0)  (1f0)  (1f0)  (12a)  (12a)  (12a)
		WORD	0BE20H,0BE00H,0BE00H,0BE00H,0BE00H,0A540H,0A540H,0A540H
;			 (12a)  (1e0)  (1e0)  (1e0)  (1e0)  (13a)  (13a)  (13a)
		WORD	0A540H,0BC00H,0BC00H,0BC00H,0BC00H,0A740H,0A740H,0A740H
;			 (13a)  (33c)  (33c)
		WORD	0A740H,0E780H,0E780H
;
;
;
;
;************************************************************************
;*		Next BG.write address data				*
;************************************************************************
NVRADH		EQU	$		; next write VRAM addres-H
		BYTE	000H		; dammy
		BYTE	000H,004H,008H,00CH	; down : BG.2
		BYTE	008H,00CH,000H,004H	; up
		BYTE	000H,008H,004H,00CH	; right
		BYTE	004H,00CH,000H,008H	; left
;
		BYTE	010H,014H,018H,01CH	; down : BG.1
		BYTE	018H,01CH,010H,014H	; up
		BYTE	010H,018H,014H,01CH	; right
		BYTE	014H,01CH,010H,018H	; left
;
		BYTE	060H,068H
;
;
;
;
;
;
		END
