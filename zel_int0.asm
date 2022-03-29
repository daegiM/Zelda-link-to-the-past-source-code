;
		INCLUDE	zel_ram.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.10.09(WED)
;
;------------------------------------------------------------------------
;
		ORG	0BFE70H
;
;=============================================== (zel_int0) =============
		GLB	KCOLSET,PLRSET,PFLGCLR,PFLGCL2
;=============================================== (zel_main) =============
		EXT	MD_ghldn
;=============================================== (zel_init) =============
		EXT	MPBTSET1,DJKYSV
		EXT	p2_move
;=============================================== (zel_play) =============
		EXT	PLYCLR1,ALCLER,SWSPCL2,BMCLER,LNMD
;========================================================================
;
		MEM8
		IDX8
		EXTEND
;
;
;
;
;
;
;
;
;************************************************************************
;*		Kotei-Color set				(KCOLSET)	*
;************************************************************************
KCOLSET		EQU	$
		STZ	<DPSUB
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#019C6H
		LDA	<MPDTNO
		CMP	#00080H
		BNE	KCLS05		; ken-spot & hashi-spot ?
;					; yes
		LDA	<RMXYCT
		CMP	#00181H
		BNE	KCLS10		; hashi-shita ?
;					; yes
		INC	<DPSUB
		BRA	KCLS07
;
KCLS05		EQU	$
		CMP	#00081H
		BEQ	KCLS10		; taki-spot ?
;					; no
		LDX	#00000H
		CMP	#0005BH
		BEQ	KCLS10		; piramido ?
;					; no
		AND	#000BFH
		CMP	#00003H
		BEQ	KCLS10		; yama ?
;					; no
		CMP	#00005H
		BEQ	KCLS10		; yama ?
;					; no
		CMP	#00007H
		BEQ	KCLS10		; yama ?
;					; no
KCLS07		EQU	$
		LDX	#02669H
		LDA	<MPDTNO
		AND	#00040H
		BEQ	KCLS10		; omote ?
;					; no
		LDX	#02A32H
KCLS10		EQU	$
		TXA
		STA	>CGWORK+000H
		STA	>CGRAM+000H
		STA	>CGWORK+040H
		STA	>CGRAM+040H
;
;
		LDA	#04020H
		STA	<WD2132R
		LDA	#08040H
		STA	<WD2132G
;
		LDA	<MPDTNO
		BEQ	KCLS40		; mori ?
;					; no
		CMP	#00070H
		BNE	KCLS15		; ura-numa ?
;					; yes
		JMP	KCLS60
;
KCLS15		EQU	$
		CMP	#00040H
		BEQ	KCLS40		; ura-mori ?
;					; no
;// 03.08.26 //		LDX	#04F2DH
;// 03.08.26 //		LDY	#0804FH
		CMP	#0005BH
		BEQ	KCLS40		; piramido ?
;					; no
		LDX	#04C26H
		LDY	#08C4CH
		CMP	#00003H
		BEQ	KCLS20		; yama ?
;					; no
		CMP	#00005H
		BEQ	KCLS20		; yama ?
;					; no
		CMP	#00007H
		BEQ	KCLS20		; yama ?
;					; no
		LDX	#04A26H
		LDY	#0874AH
		CMP	#00043H
		BEQ	KCLS20		; yama ?
;					; no
		CMP	#00045H
;// 03.09.10 //		BEQ	KCLS20		; yama ?
;// 03.09.10 //;					; no
;// 03.09.10 //		CMP	#00047H
		BEQ	KCLS20		; yama ?
;					; yes
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF
		RTL
;
;
KCLS20		EQU	$
		STX	<WD2132R
		STY	<WD2132G
;// 03.07.31 //;
;// 03.07.31 //		LDA	#00000H
;// 03.07.31 //		STA	>CGRAM+040H
;// 03.07.31 //		STA	>CGRAM+000H
KCLS40		EQU	$
		LDA	<GAMEMD
		AND	#000FFH
		CMP	#p2_move+4
		BEQ	KCLS50		; scroll ?
;					; no
		LDA	<SCCV2
		STA	<SCCV1
		LDA	<SCCH2
		STA	<SCCH1
;
		LDA	<MPDTNO
		AND	#0003FH
		CMP	#0001BH
		BNE	KCLS60		; piramido ?
;					; yes
		LDA	<SCCH2
		SEC
		SBC	#00778H
		LSR	A
		TAY
		AND	#04000H
		BEQ	KCLS42		;
;					;
		TYA
		ORA	#08000H
		TAY
KCLS42		EQU	$
		STY	<WORK0
		LDA	<SCCH2
		SEC
		SBC	<WORK0
		STA	<SCCH1
;
		LDA	<SCCV1
		CMP	#006C0H
		BCC	KCLS45		; limit ?
;					; yes
		SEC
		SBC	#00600H
		AND	#003FFH
		CMP	#00180H
		BCS	KCLS44		;
;					;
		LSR	A
		ORA	#00600H
		BRA	KCLS47
;
KCLS44		EQU	$
		LDA	#006C0H
		BRA	KCLS47
;
KCLS45		EQU	$
		LDA	<SCCV1
		AND	#000FFH
		LSR	A
		ORA	#00600H
KCLS47		EQU	$
		STA	<SCCV1
		BRA	KCLS60
;
KCLS50		EQU	$
		LDA	<MPDTNO
		AND	#0003FH
		CMP	#0001BH
		BNE	KCLS60		; piramido ?
;					; yes
		LDA	<SCCV2
		STA	<SCCV1
		LDA	<SCCH2
		STA	<SCCH1
;
		LDA	!SCRLMD
		AND	#000FFH
		CMP	#00008H
;// 03.09.03 //		BEQ	KCLS60		; up scroll ?
		BEQ	KCLS55		; up scroll ?
;					; no
;;;;;;;;		LDA	<SCCH2
;;;;;;;;		AND	#000FFH
;;;;;;;;		LSR	A
;;;;;;;;		STA	<WORK0
;;;;;;;;		LDA	<SCCH2
;;;;;;;;		AND	#0FF00H
;;;;;;;;		ORA	<WORK0
		LDA	#00838H
		STA	<SCCH1
KCLS55		EQU	$
		LDA	#006C0H
		STA	<SCCV1
KCLS60		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#00000001B
		STA	<DPSUB
KCLS80		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF
		RTL
;
;
;
;
;
;************************************************************************
;*		Player danjyon reset			(PLRSET)	*
;************************************************************************
PLRSET		EQU	$
		JSL	>DJKYSV		; danjyon key save
;
		JSL	>MPBTSET1	; map on/off bit set
;
		JSL	>ALCLER		; enemt clear
;
		STZ	!RESTSFG
		LDA	#MD_ghldn
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	<VRFLG
PFLGCLR		EQU	$
		STZ	!WATRFG
		STA	!PYSPFG
		STZ	!BELFCN
		STZ	!BELTCN
		STZ	!PYALSP
		STZ	!PCGCKF
		STZ	!DEMOFG
		STZ	!DAMEFG
		STZ	<PLYSPD
		STZ	<PLXSPD
		STZ	<PLZSPD
		STZ	<PLZPS1
		STZ	!ASWFLG
		STZ	!PYHAMI
		STZ	!PYFLASH
		LDA	#LNMD
		STA	<LNMODE		; player flag off
		STZ	<OMSBMD		;
PFLGCL2		EQU	$
		JSL	>BMCLER		; beam clear
;
		JMP	>PLYCLR1	; player ram all-clear
;
;
;
;
;
;
;
;
		END
