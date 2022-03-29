;************************************************************************
;*	    Super Famicom 2D Graphic Package for ZELDA 3		*
;*		      Programmed by Y.Nishida				*
;*						[ Mar.06, 1991 ]	*
;************************************************************************

		include	zel_ram.asm

		native
		extend

;;;;Object_Graphic	sect		rel
;;;;PACKAGE		group		Object_Graphic
		dpage		local_variable

;===============  Cross Definition  =====================================

		global		_COLOR
		global		_CLEAR
		global		_POLYGON

;===============  Define CPU Registers  =================================

Dividend	equ		4204H
Divisor		equ		4206H
Divide		equ		4214H

;===============  Define Constant  ======================================

srnbuf_address	equ		POLY_CHR_BUF		; Top address of Bitmap buffer

;************************************************************************
;*		Define local variable of Graphic Package		*
;************************************************************************

local_variable	equ		01F00H			; Graphic package zero page work area
;------------------------------------------------------------------------
bitmap_address	equ		local_variable+0B0H	;  2 bytes :Bitmap address
bitmap_mask	equ		local_variable+0B2H	;  2 bytes :Bitmap mask pattern
bitmap_xofs	equ		local_variable+0B4H	;  1 byte  :Bitmap x offset ( bit field location )
color_mask	equ		local_variable+0B5H	;  4 bytes :Color mask pattern
base_address	equ		local_variable+0B9H	;  3 bytes :Scan conversion base address
work		equ		local_variable+0BCH	;  4 bytes :Utility work
grph_parameter	equ		local_variable+0C0H	; 64 bytes :Graphic parameter buffer

;===============  Polygon filling parameters  ===========================

poly_parameter	equ		grph_parameter+00H	; 32 bytes :Polygon filling parameter
poly_count	equ		grph_parameter+20H	;  1 byte  :Polygon point counter
;------------------------------------------------------------------------
left_sx		equ		grph_parameter+21H	;  1 byte  :Polygon left side start point x
left_sy		equ		grph_parameter+22H	;  1 byte  :Polygon left side start point y
left_ex		equ		grph_parameter+23H	;  1 byte  :Polygon left side end point x
left_ey		equ		grph_parameter+24H	;  1 byte  :Polygon left side end point y
left_px		equ		grph_parameter+25H	;  2 bytes :SCan conversion left side point x
left_dx		equ		grph_parameter+27H	;  2 bytes :Scan conversion left point defference
left_ix		equ		grph_parameter+29H	;  1 byte  :Polygon left index
;------------------------------------------------------------------------
right_sx	equ		grph_parameter+2AH	;  1 byte  :Polygon left side start point x
right_sy	equ		grph_parameter+2BH	;  1 byte  :Polygon left side start point y
right_ex	equ		grph_parameter+2CH	;  1 byte  :Polygon left side end point x
right_ey	equ		grph_parameter+2DH	;  1 byte  :Polygon left side end point y
right_px	equ		grph_parameter+2EH	;  2 bytes :SCan conversion left side point x
right_dx	equ		grph_parameter+30H	;  2 bytes :Scan conversion left point defference
right_ix	equ		grph_parameter+32H	;  1 byte  :Polygon left index
;-------------------------------------------------------------------------
fill_left_ad	equ		grph_parameter+33H	; 2 bytes :Filling left address
fill_left_no	equ		grph_parameter+35H	; 1 byte  :Filling left bit number * 2
fill_right_ad	equ		grph_parameter+36H	; 2 bytes :Filling right address
fill_right_no	equ		grph_parameter+38H	; 1 byte  :Filling right bit number * 2
fill_offset_y	equ		grph_parameter+39H	; 1 byte  :Bit map write offset y
fill_count	equ		grph_parameter+3AH	; 2 bytes :Filling counter


;************************************************************************
;*	COLOR : Set color mask pattern					*
;*									*
;*		ENTRY	A reg. = color number				*
;*			D reg. = local_variabe				*
;*		EXIT	nothing						*
;************************************************************************

		mem16
		idx8
;
;
		ORG	09F9D8H+02D6H
;
;
_COLOR
		php
		sep		#00110000B		; Memory,Index 8 bit mode
;-----------------------------------------------------------------------
		asl		a
		asl		a
		tax
;-----------------------------------------------------------------------
		rep		#00100000B		; Memory 16 bit mode
		lda		>col_mask_patn+0,x
		sta		<color_mask+0		; Set color mask pattern 0,1
		lda		>col_mask_patn+2,x
		sta		<color_mask+2		; Set color mask pattern 2,3
;-----------------------------------------------------------------------
		plp
		rtl

;===============  Color mask pattern data  =============================

col_mask_patn	byte		000H,000H,000H,000H		; color  0
		byte		0FFH,000H,000H,000H		; color  1
		byte		000H,0FFH,000H,000H		; color  2
		byte		0FFH,0FFH,000H,000H		; color  3
		byte		000H,000H,0FFH,000H		; color  4
		byte		0FFH,000H,0FFH,000H		; color  5
		byte		000H,0FFH,0FFH,000H		; color  6
		byte		0FFH,0FFH,0FFH,000H		; color  7
		byte		000H,000H,000H,0FFH		; color  8
		byte		0FFH,000H,000H,0FFH		; color  9
		byte		000H,0FFH,000H,0FFH		; color 10
		byte		0FFH,0FFH,000H,0FFH		; color 11
		byte		000H,000H,0FFH,0FFH		; color 12
		byte		0FFH,000H,0FFH,0FFH		; color 13
		byte		000H,0FFH,0FFH,0FFH		; color 14
		byte		0FFH,0FFH,0FFH,0FFH		; color 15

;************************************************************************
;*	CLEAR : Clear Bit map buffer by CPU instruction			*
;*									*
;*		ENTRY	nothing						*
;*		EXIT	nothing						*
;************************************************************************

		mem16
		idx16
_CLEAR
		php
		phb
		rep		#00110000B			; Index 16 bit mode
;------------------------------------------------------------------------
		lda		#0000H
		sta		>srnbuf_address			; Clear first word
		ldx		#(srnbuf_address+0)&0FFFFH
		ldy		#(srnbuf_address+2)&0FFFFH
		lda		#800H-3
		mvn		#bank srnbuf_address,#bank srnbuf_address	; Clear all
;------------------------------------------------------------------------
		plb
		plp
		rtl

;************************************************************************
;*	POLYGIN : Draw polygon						*
;*									*
;*		ENTRY	param[   0] = n ; The number of points * 2	*
;*			param[1..n] = px(1),py(1) .. px(n/2),py(n/2)	*
;************************************************************************

		mem8
		idx8
_POLYGON
		php
		phb
		sep		#00110000B		; Memory,Index 8 bit mode
		lda		#bank srnbuf_address
		pha
		plb					; Set Data Bank Register

;=============== check minimam y position ===============================
Polygon_fill100
		ldy		<poly_parameter		; IY = index of max point y
		tyx
		lda		<poly_parameter,x	; Acc = min point y
Repeat$		dex
		dex
		beq		Polygon_fill200
		cmp		<poly_parameter,x	; Acc > point_y(IX) ?
		bcc		Repeat$			; no.
		beq		Repeat$			; no.
		txy
		lda		<poly_parameter,x
		bra		Repeat$

;=============== set base address ======================================
Polygon_fill200
		and		#00000111B
		asl		a
		sta		<base_address+0		; Set base address low
		lda		poly_parameter,y
		and		#00111000B
		bit		#00100000B
		beq		skip$
		eor		#00100100B
skip$		lsr		a
		lsr		a
;		clc
;;;;		ora		#high srnbuf_address
		adc		#high srnbuf_address
		sta		<base_address+1		; Set base address high

;===============  set start point index  ================================
Polygon_fill300
		sty		<left_ix
		sty		<right_ix
		lda		<poly_parameter
		lsr		a
		sta		<poly_count
;------------------------------------------------------------------------
		lda		poly_parameter+0,y
		sta		<left_sy		; Set  left start point y
		sta		<right_sy		; Set right start point y
		lda		poly_parameter-1,y
		sta		<left_sx		; Set  left start point x
		sta		<right_sx		; Set right start point x
;------------------------------------------------------------------------
		jsr		Set_left_param
		bcs		Poly_fill_exit
		jsr		Set_right_param
		bcc		Poly_fill_main
;------------------------------------------------------------------------
Poly_fill_exit	plb
		plp
		rtl

;************************************************************************
;*		Polygon filling main loop				*
;************************************************************************

		mem8
		idx8
Poly_fill_main
		jsr		Line_filling		; Fill one line

;=============== Set next base address ==================================
Poly_main_100
		lda		<base_address+0
		inc		a
		inc		a
		cmp		#10H
		beq		Inc_high$
		sta		<base_address+0
		bra		Poly_main_200
;------------------------------------------------------------------------
Inc_high$	lda		<base_address+1
		inc		a
		inc		a
		bit		#00001000B
		bne		Skip$
		eor		#00011001B
Skip$		sta		<base_address+1
		stz		<base_address+0

;=============== check left side ========================================
Poly_main_200
		ldx		<left_sy
		cpx		<left_ey		; SY = EY ?
		bne		Skip$			; no.
;------------------------------------------------------------------------
		ldx		<left_ex
		stx		<left_sx		; Set start point x
		jsr		Set_left_param		; Set left new line
		bcs		Poly_fill_exit		; if ( abort filling )
		ldx		<left_sy
;------------------------------------------------------------------------
Skip$		inx
		stx		<left_sy		; SY += 1

;=============== check right side =======================================
Poly_main_300
		ldx		<right_sy
		cpx		<right_ey		; SY = EY ?
		bne		Skip$			; no.
;------------------------------------------------------------------------
		ldx		<right_ex
		stx		<right_sx		; Set SX
		jsr		Set_right_param		; Set new line
		bcs		Poly_fill_exit		; if ( continue filling )
		ldx		<right_sy
;------------------------------------------------------------------------
Skip$		inx
		stx		<right_sy		; SY += 1

;=============== Set point x ============================================
Poly_main_400
		rep		#00100001B		; Memory 16 bit mode
		lda		<left_px
		adc		<left_dx
		sta		<left_px		; Left PX += DX
;------------------------------------------------------------------------
		clc
		lda		<right_px
		adc		<right_dx
		sta		<right_px		; Right PX += DX
;------------------------------------------------------------------------
		sep		#00100000B		; Memory 8 bit mode
		bra		Poly_fill_main
;------------------------------------------------------------------------
		plb
		plp
		rtl

;************************************************************************
;*		Polygon line filling					*
;************************************************************************

		mem8
		idx8
Line_filling
		lda		<left_px+1
		and		#00000111B
		asl		a
		tay					; IY = Set left bit number
;------------------------------------------------------------------------
		lda		<right_px+1
		and		#00000111B
		asl		a
		tax					; IX = Set right bit number
;------------------------------------------------------------------------
		lda		<left_px+1
		and		#00111000B
		sta		<work
		lda		<right_px+1
		and		#00111000B
		sec
		sbc		<work
		bne		Line_filling200		; if ( not one address )

;=============== Write one address ======================================
Line_filling100
		mem16
		idx16
		rep		#00110000B		; Memory,Index 16 bit mode
;------------------------------------------------------------------------
		lda		>Right_mask,x		; Get right mask pattern
		tyx
		and		>Left_mask,x		; And left mask pattern
		sta		<bitmap_mask		; Set bitmap mask pattern
;------------------------------------------------------------------------
		lda		<right_px+1
		and		#0000000000111000B
		asl		a
		asl		a
		ora		<base_address
		tay					; IY = Buffer address
;------------------------------------------------------------------------
		lda		<color_mask+0
		eor		0000H,y
		and		<bitmap_mask
		eor		0000H,y
		sta		0000H,y			; Write plane #0,#1
;------------------------------------------------------------------------
		lda		<color_mask+2
		eor		0010H,y
		and		<bitmap_mask
		eor		0010H,y
		sta		0010H,y			; Write plane #2,#3
;------------------------------------------------------------------------
Line_filling110	sep		#00110000B		; Memory,Index 8 bit mode
		rts

;=============== Write horizontal line ==================================
Line_filling200
		bcc		Line_filling110		; if ( reverse left and right )
		lsr		a
		lsr		a
		lsr		a
		sta		<fill_count+0		; Set counter
		stz		<fill_count+1		; Set counter

;=============== Write right side =======================================
Line_filling210
		mem16
		idx16
		rep		#00110000B		; Memory,Index 16 bit mode
		lda		>Right_mask,x		; Get right mask
		sta		<bitmap_mask		; Set bitmap mask pattern
		tyx
;------------------------------------------------------------------------
		lda		<right_px+1
		and		#0000000000111000B
		asl		a
		asl		a
		ora		<base_address
		tay					; IY = Buffer address
;------------------------------------------------------------------------
		lda		<color_mask+0
		eor		0000H,y
		and		<bitmap_mask
		eor		0000H,y
		sta		0000H,y			; Write plane #0,#1
;------------------------------------------------------------------------
		lda		<color_mask+2
		eor		0010H,y
		and		<bitmap_mask
		eor		0010H,y
		sta		0010H,y			; Write plane #2,#3
;------------------------------------------------------------------------
		sec					; CY = 1
		tya
		sbc		#0000000000100000B	; address -= 32
		tay

;=============== Write loop =============================================
Line_filling220
		dec		<fill_count
		beq		Line_filling230
;-------------------------------------------------------------------------
Repeat$		lda		<color_mask+0
		sta		0000H,y			; Write plane #0,#1
		lda		<color_mask+2
		sta		0010H,y			; Write plane #2,#3
;------------------------------------------------------------------------
;;;;		sec
		tya
		sbc		#0000000000100000B	; address -= 32
		tay
		dec		<fill_count
		bne		Repeat$

;=============== Write left side ========================================
Line_filling230
		lda		>Left_mask,x		; Get left mask
		sta		<bitmap_mask		; Set bitmap mask pattern
;------------------------------------------------------------------------
		lda		<color_mask+0
		eor		0000H,y
		and		<bitmap_mask
		eor		0000H,y
		sta		0000H,y			; Write plane #0,#1
;------------------------------------------------------------------------
		lda		<color_mask+2
		eor		0010H,y
		and		<bitmap_mask
		eor		0010H,y
		sta		0010H,y			; Write plane #2,#3
;------------------------------------------------------------------------
		sep		#00110000B		; Memory,Index 8 bit mode
		rts

;===============  bit map mask of left side  ============================

Left_mask	word		1111111111111111B
		word		0111111101111111B
		word		0011111100111111B
		word		0001111100011111B
		word		0000111100001111B
		word		0000011100000111B
		word		0000001100000011B
		word		0000000100000001B

;===============  bit map mask of right side  ===========================

Right_mask	word		1000000010000000B
		word		1100000011000000B
		word		1110000011100000B
		word		1111000011110000B
		word		1111100011111000B
		word		1111110011111100B
		word		1111111011111110B
		word		1111111111111111B

;************************************************************************
;*		Left line parameter set					*
;************************************************************************

		mem8
		idx8
Set_left_param
		dec		<poly_count
		bpl		Set_left_pa100
;------------------------------------------------------------------------
Set_left_abort	sec
		rts

;===============  Get next point  =======================================
Set_left_pa100
		ldx		<left_ix
		dex
		dex
		bne		Check_point$
		ldx		<poly_parameter
;------------------------------------------------------------------------
Check_point$	lda		<poly_parameter,x
		cmp		<left_sy
		bcc		Set_left_abort		; if ( EY < SY )
		bne		Set_point$		; if ( EY != SY )
;------------------------------------------------------------------------
Skip_point$	lda		<poly_parameter-1,x	; if ( EY == SY )
		sta		<left_sx		;     skip this point
		stx		<left_ix
		bra		Set_left_param
;------------------------------------------------------------------------
Set_point$	sta		<left_ey		; Set left end point y
		lda		<poly_parameter-1,x
		sta		<left_ex		; Set left end point x
		stx		<left_ix

;=============== calculate dx ===========================================
Set_left_pa200
		ldx		#00H			; IX = sign flag
		sec
		sbc		<left_sx		; ( Acc = EX - SX ) >= 0 ?
		bcs		Set_left_pa210		; yes.
		dex					; sign = minus
		eor		#0FFH
		inc		a			; Acc = -Acc
Set_left_pa210	sei					; Disable IRQ
		sta		>Dividend+1
		lda		#00H
		sta		>Dividend+0
;------------------------------------------------------------------------
		sec
		lda		<left_ey
		sbc		<left_sy
		sta		>Divisor		; Set PY2 - PY1
		mem16
		rep		#00100000B		; Memory 16 bit mode
		lda		<left_sx-1
		and		#0FF00H
		ora		#00080H
		sta		<left_px		; Set PX
		lda		#0000H
		cpx		#00H
		bne		Set_left_pa220
		lda		>Divide
		bra		Set_left_pa230
Set_left_pa220	sec		
		sbc		>Divide
Set_left_pa230	cli					; Enable IRQ
		sta		<left_dx		; Set DX
		sep		#00100000B		; Memory 8 bit mode
;------------------------------------------------------------------------
		clc
		rts

;************************************************************************
;*		Right line parameter set				*
;************************************************************************

		mem8
		idx8
Set_right_param
		dec		<poly_count
		bpl		Set_right_pa100
;------------------------------------------------------------------------
Set_right_abort	sec
		rts

;===============  Get next point  =======================================
Set_right_pa100
		ldx		<right_ix
		cpx		<poly_parameter
		bne		Skip$
		ldx		#02H
		bra		Check_point$
Skip$		inx
		inx
;------------------------------------------------------------------------
Check_point$	lda		<poly_parameter+0,x
		cmp		<right_sy
		bcc		Set_right_abort		; if ( EY < SY )
		bne		Set_point$		; if ( EY != SY )
;------------------------------------------------------------------------
Skip_point$	lda		<poly_parameter-1,x	; if ( EY == SY )
		sta		<right_sx		;     skip this point
		stx		<right_ix
		bra		Set_right_param
;------------------------------------------------------------------------
Set_point$	sta		<right_ey		; Set end point y
		lda		<poly_parameter-1,x
		sta		<right_ex		; Set end point x
		stx		<right_ix

;=============== calculate dx ===========================================
Set_right_pa200
		ldx		#00H			; IX = sign flag
		sec
		sbc		<right_sx		; ( Acc = EX - SX ) >= 0 ?
		bcs		Set_right_pa210		; yes.
		dex					; sign = minus
		eor		#0FFH
		inc		a			; Acc = -Acc
Set_right_pa210	sei					; Disable IRQ
		sta		>Dividend+1
		lda		#00H
		sta		>Dividend+0
;------------------------------------------------------------------------
		sec
		lda		<right_ey
		sbc		<right_sy
		sta		>Divisor		; Set EY - SY
		mem16
		rep		#00100000B		; Memory 16 bit mode
		lda		<right_sx-1
		and		#0FF00H
		ora		#00080H
		sta		<right_px		; Set PX
		lda		#0000H
		cpx		#00H
		bne		Set_right_pa220
		lda		>Divide
		bra		Set_right_pa230
Set_right_pa220	sec		
		sbc		>Divide
Set_right_pa230	cli					; Enable IRQ
		sta		<right_dx		; Set DX
		sep		#00100000B		; Memory 8 bit mode
;------------------------------------------------------------------------
		clc
		rts

		end
