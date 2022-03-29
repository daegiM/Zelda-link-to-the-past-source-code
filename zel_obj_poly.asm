;************************************************************************
;*	    Super Famicom 3D Polygon Package for ZELDA 3		*
;*		      Programmed by Y.Nishida				*
;*						[ Mar.06, 1991 ]	*
;************************************************************************

		native
		extend

;;;;Object_Polygon	sect		rel
;;;;PACKAGE		group		Object_Polygon
		dpage		local_variable

;===============  Cross Reference  ======================================

		extern		_CLEAR
		extern		_COLOR
		extern		_POLYGON
		extern		_SHAPES

;------------------------------------------------------------------------

		global		polygon_flag
		global		shading_switch
		global		object_size
		global		object_type
		global		rotate_angle_x
		global		rotate_angle_y
		global		center_point_x
		global		center_point_y
		global		center_point_z
		global		stack_pointer
		global		transfer_flag

;===============  Cross Definition  =====================================

		global		INITIAL_POLYGON

;===============  Define CPU Registers  =================================

Multiplicand	equ		4202H
Multiplier	equ		4203H
Dividend	equ		4204H
Divisor		equ		4206H
Divide		equ		4214H
Multiply	equ		4216H

;===============  Define PPU Registers  =================================

Rotation_matrix	equ		00211BH
PPU_multiply	equ		002134H

;************************************************************************
;*		Define local variable					*
;************************************************************************

local_variable	equ		1F00H

;===============  Polygon Control Work  =================================

polygon_flag	equ		local_variable+000H	;  1 bytes : Polygon draw request flag
shading_switch	equ		local_variable+001H	;  1 bytes : Light source shading switch
object_size	equ		local_variable+002H	;  1 byte  : Object size
object_type	equ		local_variable+003H	;  1 byte  : Object type
rotate_angle_x	equ		local_variable+004H	;  1 byte  : Object rotation angle x
rotate_angle_y	equ		local_variable+005H	;  1 byte  : Object rotation angle y
center_point_x	equ		local_variable+006H	;  1 byte  : Object center point x
center_point_y	equ		local_variable+007H	;  1 byte  : Object center point y
center_point_z	equ		local_variable+008H	;  2 bytes : Object center point z
stack_pointer	equ		local_variable+00AH	;  2 bytes : Stack pointer
transfer_flag	equ		local_variable+00CH	;  1 byte  : Bitmap transfer request

;===============  Polygon stack memory ==================================

stack_memory	equ		local_variable+00DH	; 34 bytes : Stack memory
initial_SP	equ		local_variable+031H
initial_DBR	equ		local_variable+032H
initial_D	equ		local_variable+033H
initial_IY	equ		local_variable+035H
initial_IX	equ		local_variable+037H
initial_C	equ		local_variable+039H
initial_P	equ		local_variable+03BH
initial_PC	equ		local_variable+03CH
initial_PBR	equ		local_variable+03EH

;===============  Object data work  =====================================

point_counter	equ		local_variable+03FH	;  1 byte  : The number of points
face_counter	equ		local_variable+040H	;  1 byte  : The number of faces
point_pointer	equ		local_variable+041H	;  2 bytes : Pointer of points
face_pointer	equ		local_variable+043H	;  2 bytes : Pointer of faces

;===============  Polygon Rotation Work  ================================

origin_point_x	equ		local_variable+045H	;  1 byte  : Point X before rotation
origin_point_y	equ		local_variable+046H	;  1 byte  : Point Y before rotation
origin_point_z	equ		local_variable+047H	;  1 byte  : Point Z before rotation
rotate_point_x	equ		local_variable+048H	;  2 bytes : Point X after rotation
rotate_point_y	equ		local_variable+04AH	;  2 bytes : Point Y after rotation
rotate_point_z	equ		local_variable+04CH	;  2 bytes : Point Z after rotation
visible_flag	equ		local_variable+04EH	;  1 byte  : Polygon back visible flag
polygon_color	equ		local_variable+04FH	;  1 byte  : Polygon write coolor
;------------------------------------------------------------------------
object_sinX	equ		local_variable+050H	;  2 bytes : sin( object_angx )
object_cosX	equ		local_variable+052H	;  2 bytes : cos( object_angx )
object_sinY	equ		local_variable+054H	;  2 bytes : sin( object_angy )
object_cosY	equ		local_variable+056H	;  2 bytes : cos( object_angy )
object_sinXsinY	equ		local_variable+058H	;  2 bytes : sin( object_angx ) * sin( object_angy )
object_sinXcosY	equ		local_variable+05AH	;  2 bytes : sin( object_angx ) * cos( object_angy )
object_cosXsinY	equ		local_variable+05CH	;  2 bytes : cos( object_angx ) * sin( object_angy )
object_cosXcosY	equ		local_variable+05EH	;  2 bytes : cos( object_angx ) * cos( object_angy )
;------------------------------------------------------------------------
object_point_x	equ		local_variable+060H	; 40 bytes : Point X after rotation ( 40 points )
object_point_y	equ		local_variable+088H	; 40 bytes : Point Y after rotation ( 40 points )

;=============== etc. ===================================================

graph_tempolary	equ		local_variable+0B0H	; 16 bytes : Graphic tempolary work area
graph_parameter	equ		local_variable+0C0H	; 64 bytes : Graphic parameter buffer
;------------------------------------------------------------------------
work0		equ		local_variable+0B0H	;  2 bytes : Tempolary work #0
work1		equ		local_variable+0B2H	;  2 bytes : Tempolary work #1


;************************************************************************
;*	INITIAL_POLYGON : Initialize polygon draw task			*
;*									*
;*		ENTRY	nothing						*
;*		EXIT	nothing ( all registers is preserved )		*
;************************************************************************

		mem16
		idx16
;
;
		ORG		09F500H+02D6H+08H
;
;
INITIAL_POLYGON
		php
		phb
		rep		#00110000B		; Memory,Index 16 bit mode
;------------------------------------------------------------------------
		pha
		phx
		phy
;------------------------------------------------------------------------
		lda		#0000H
		sta		>local_variable
		ldx		#local_variable+0
		ldy		#local_variable+2
		lda		#100H-3
		mvn		#00H,#00H		; Clear all of local variables
;------------------------------------------------------------------------
		lda		#initial_SP
		sta		stack_pointer		; Set Stack pointer
		lda		#12
		ldx		#Initial_data$
		ldy		#initial_DBR
This$		mvn		#bank This$,#00H	; Set Register initial data
;------------------------------------------------------------------------
		ply
		plx
		pla
		plb
		plp
		rtl

;===============  Register initial data  ================================

Initial_data$	byte		bank Polygon_task	; initial Data Bank Register
		word		local_variable		; initial Direct Register
		word		0			; initial Index Y register
		word		0			; initial Index X register
		word		0			; initial Accumulator
		byte		00110000B		; initial Status Register
		word		Polygon_task		; initial Program Counter
		byte		bank Polygon_task	; initial Program Bank Register

;************************************************************************
;*	Polygon_task : Polygon draw task				*
;*									*
;*	Multi Task Process entry					*
;************************************************************************

		mem8
		idx8
Polygon_task
		lda		<polygon_flag		; Polygon draw request ?
		beq		Polygon_task		; no.
		lda		<transfer_flag		; Transfer flag disable ?
		bne		Polygon_task		; no.
;------------------------------------------------------------------------
		jsl		>_CLEAR			; Clear Bitmap buffer
		jsr		Object_pointer		; Set Object pointer
		jsr		Rotation_param		; Set Object rotation matrix
		jsr		Object_rotation		; Rotate and Project all points
		jsr		Draw_polygon		; Draw polygon
;------------------------------------------------------------------------
		stz		<polygon_flag		; Disable Polygon draw request flag
		lda		#0FFH
		sta		<transfer_flag		; Enable Transfer request flag
		bra		Polygon_task

;************************************************************************
;*		Set Object Pointer					*
;************************************************************************

		mem16
		idx16
Object_pointer
		rep		#00110000B		; Memory,Index 8 bit mode

;===============  Set object parameters  ================================
Obj_pointer_10
		lda		<object_size
		and		#00FFH
		asl		a
		adc		#0080H
		sta		<center_point_z		; Set position z

;===============  Set object pointers  ==================================
Obj_pointer_20
		lda		object_type
		and		#00FFH
		asl		a
		sta		<work0
		asl		a
		adc		<work0
		adc		#_SHAPES
		tax
		ldy		#point_counter
		lda		#0005H
This$		MVN		#bank _SHAPES,#bank This$		; Transfer object pointers
		rts

;************************************************************************
;*		Set object rotation matrix				*
;************************************************************************

		mem8
		idx8
Rotation_param
		sep		#00110000B		; Memory,Index 8 bit mode
;-----------------------------------------------------------------------
		ldy		<rotate_angle_x
		lda		sin_data,y
		sta		<object_sinX+0
		cmp		#10000000B
		sbc		<object_sinX+0
		eor		#11111111B
		sta		<object_sinX+1		; Set sin( object_angx )
;------------------------------------------------------------------------
		lda		cos_data,y
		sta		<object_cosX+0
		cmp		#10000000B
		sbc		<object_cosX+0
		eor		#11111111B
		sta		<object_cosX+1		; Set cos( object_angx )
;------------------------------------------------------------------------
		ldy		<rotate_angle_y
		lda		sin_data,y
		sta		<object_sinY+0
		cmp		#10000000B
		sbc		<object_sinY+0
		eor		#11111111B
		sta		<object_sinY+1		; Set sin( object_angy )
;------------------------------------------------------------------------
		lda		cos_data,y
		sta		<object_cosY+0
		cmp		#10000000B
		sbc		<object_cosY+0
		eor		#11111111B
		sta		<object_cosY+1		; Set cos( object_angy )
;-------------------------------------------------------------------------
		mem16
		rep		#00100000B		; Memory 16 bit mode
		sei					; Disable IRQ
;-----------------------------------------------------------------------
		ldx		<object_sinY+0
		stx		Rotation_matrix+0
		ldx		<object_sinY+1
		stx		Rotation_matrix+0
		ldx		<object_sinX+0
		stx		Rotation_matrix+1
		lda		PPU_multiply+1
		asl		a
		asl		a
		sta		<object_sinXsinY	; Set sin( object_angx ) * sin( object_angy )
;-------------------------------------------------------------------------
		ldx		<object_cosY+0
		stx		Rotation_matrix+0
		ldx		<object_cosY+1
		stx		Rotation_matrix+0
		ldx		<object_cosX+0
		stx		Rotation_matrix+1
		lda		PPU_multiply+1
		asl		a
		asl		a
		sta		<object_cosXcosY	; Set cos( object_angx ) * cos( object_angy )
;-------------------------------------------------------------------------
		ldx		<object_cosY+0
		stx		Rotation_matrix+0
		ldx		<object_cosY+1
		stx		Rotation_matrix+0
		ldx		<object_sinX+0
		stx		Rotation_matrix+1
		lda		PPU_multiply+1
		asl		a
		asl		a
		sta		<object_sinXcosY	; Set sin( object_angx ) * cos( object_angy )
;-------------------------------------------------------------------------
		ldx		<object_sinY+0
		stx		Rotation_matrix+0
		ldx		<object_sinY+1
		stx		Rotation_matrix+0
		ldx		<object_cosX+0
		stx		Rotation_matrix+1
		lda		PPU_multiply+1
		asl		a
		asl		a
		sta		<object_cosXsinY	; Set cos( object_angx ) * sin( object_angy )
;------------------------------------------------------------------------
		cli					; Enable IRQ
		rts

;************************************************************************
;*		Object rotation						*
;************************************************************************

		mem8
		idx8
Object_rotation
		sep		#00110000B		; Memory,Index 8 bit mode
		lda		<point_counter
		tax					; IX = rotation point index
		asl		a
		adc		<point_counter
		tay					; IY = original point index

;===============  Calculate rotation points  ===========================
Obj_rotation_10
		dex
		dey
		lda		(<point_pointer),y
		sta		<origin_point_z		; Set original point z
		dey
		lda		(<point_pointer),y
		sta		<origin_point_y		; Set original point y
		dey
		lda		(<point_pointer),y
		sta		<origin_point_x		; Set original point x
;------------------------------------------------------------------------
		phy
		rep		#00100000B		; Memory 16 bit mode
		jsr		Point_rotation
		jsr		Projection
		sep		#00100000B		; Memory 8 bit mode
		clc
		lda		<center_point_x
		adc		<rotate_point_x
		sta		<object_point_x,x
		sec
		lda		<center_point_y
		sbc		<rotate_point_y
		sta		<object_point_y,x
;------------------------------------------------------------------------
		ply
		bne		Obj_rotation_10
		rts

;************************************************************************
;*		Point rotation						*
;************************************************************************

		mem16
		idx8

;===============  Set rotation point x  ================================
Point_rotation
		ldy		<object_cosY+0
		sei					; Disable IRQ
		sty		Rotation_matrix+0
		ldy		<object_cosY+1
		sty		Rotation_matrix+0
		ldy		<origin_point_x
		sty		Rotation_matrix+1
		lda		PPU_multiply
;------------------------------------------------------------------------
		ldy		<object_sinY+0
		sty		Rotation_matrix+0
		ldy		<object_sinY+1
		sty		Rotation_matrix+0
		ldy		<origin_point_z
		sty		Rotation_matrix+1
		sec
		sbc		PPU_multiply
		cli					; Enable IRQ
		sta		<rotate_point_x

;===============  Set rotation point y  ================================
Point_rotate_20
		ldy		<object_sinXsinY+0
		sei					; Disable IRQ
		sty		Rotation_matrix+0
		ldy		<object_sinXsinY+1
		sty		Rotation_matrix+0
		ldy		<origin_point_x
		sty		Rotation_matrix+1
		lda		PPU_multiply
;------------------------------------------------------------------------
		ldy		<object_cosX+0
		sty		Rotation_matrix+0
		ldy		<object_cosX+1
		sty		Rotation_matrix+0
		ldy		<origin_point_y
		sty		Rotation_matrix+1
		clc
		adc		PPU_multiply
;------------------------------------------------------------------------
		ldy		<object_sinXcosY+0
		sty		Rotation_matrix+0
		ldy		<object_sinXcosY+1
		sty		Rotation_matrix+0
		ldy		<origin_point_z
		sty		Rotation_matrix+1
		clc
		adc		PPU_multiply
		cli					; Enable IRQ
		sta		<rotate_point_y

;===============  Set rotation point z  ================================
Point_rotate_30
		ldy		<object_cosXsinY+0
		sei					; Disable IRQ
		sty		Rotation_matrix+0
		ldy		<object_cosXsinY+1
		sty		Rotation_matrix+0
		ldy		<origin_point_x
		sty		Rotation_matrix+1
		lda		PPU_multiply+1
;------------------------------------------------------------------------
		ldy		<object_sinX+0
		sty		Rotation_matrix+0
		ldy		<object_sinX+1
		sty		Rotation_matrix+0
		ldy		<origin_point_y
		sty		Rotation_matrix+1
		sec
		sbc		PPU_multiply+1
;------------------------------------------------------------------------
		ldy		<object_cosXcosY+0
		sty		Rotation_matrix+0
		ldy		<object_cosXcosY+1
		sty		Rotation_matrix+0
		ldy		<origin_point_z
		sty		Rotation_matrix+1
		clc
		adc		PPU_multiply+1
;------------------------------------------------------------------------
		REP		#00000101B		; Reset Carry & Enable IRQ
		adc		<center_point_z
		sta		<rotate_point_z
		rts

;************************************************************************
;*		Projection						*
;************************************************************************

		mem16
		idx8
Projection
;===============  Set screen point x  ===================================
Projection_10
		lda		<rotate_point_x
		bpl		skip1$
		eor		#0FFFFH
		inc		a
;------------------------------------------------------------------------
skip1$		sta		<work1
		lda		<rotate_point_z
		sta		<work0
		xba
		and		#00FFH
		beq		skip2$
;------------------------------------------------------------------------
repeat$		lsr		<work1
		lsr		<work0
		lsr		a
		bne		repeat$
;------------------------------------------------------------------------
skip2$		sei					; Disable IRQ
		lda		<work1
		sta		Dividend
		ldy		<work0
		sty		Divisor
		nop					; 2
		nop					; 2
		lda		#0000H			; 3
		ldy		<rotate_point_x+1	; 3
		sec					; 2
		bmi		skip3$			; 3/4
		nop					; 2
		lda		Divide
		bra		skip4$
skip3$		sbc		Divide
skip4$		cli					; Enable IRQ
		sta		<rotate_point_x

;===============  Set screen point y  ===================================
Projection_20
		lda		<rotate_point_y
		bpl		skip1$
		eor		#0FFFFH
		inc		a
;------------------------------------------------------------------------
skip1$		sta		<work1
		lda		<rotate_point_z
		sta		<work0
		xba
		and		#00FFH
		beq		skip2$
;------------------------------------------------------------------------
repeat$		lsr		<work1
		lsr		<work0
		lsr		a
		bne		repeat$
;------------------------------------------------------------------------
skip2$		sei					; Disable IRQ
		lda		<work1
		sta		Dividend
		ldy		<work0
		sty		Divisor
		nop					; 2
		nop					; 2
		lda		#0000H			; 3
		ldy		<rotate_point_y+1	; 3
		sec					; 2
		bmi		skip3$			; 3/4
		nop					; 2
		lda		Divide
		bra		skip4$
skip3$		sbc		Divide
skip4$		cli					; Enable IRQ
		sta		<rotate_point_y
		rts

;************************************************************************
;*		Draw polygon						*
;************************************************************************

		mem8
		idx8
Draw_polygon
		sep		#00110000B		; Memory,Index 8 bit mode
		ldy		#00H			; IY = pointer of priority

;===============  Set polygon parameter  ================================
Draw_polygon_10
		lda		(<face_pointer),y	; Get the number of points
		sta		<visible_flag
		and		#7FH
		sta		<work0
		asl		a
		sta		<graph_parameter	; Set data length
		iny
		ldx		#01H			; IX = pointer of graphic parameter
;------------------------------------------------------------------------
repeat$		phy
		lda		(<face_pointer),y	; Get point index
		tay
		lda		object_point_x,y
		sta		<graph_parameter,x	; Set polygon point x
		inx
		lda		object_point_y,y
		sta		<graph_parameter,x	; Set polygon point y
		inx
		ply
		iny
		dec		<work0
		bne		repeat$
;------------------------------------------------------------------------
		lda		(<face_pointer),y
		iny
		sta		<polygon_color		; Set polygon color
;------------------------------------------------------------------------
		phy
		lda		<graph_parameter
		cmp		#06H			; Number of points < 3 ?
		bcc		Draw_polygon_50		; yes.

;===============  Draw polygon  =========================================
Draw_polygon_30
		jsr		Cross_product		; Check cross product
		bmi		Back_visible		; if ( cross product  < 0 )
		beq		Draw_polygon_50		; if ( cross product == 0 )
;------------------------------------------------------------------------
		jsr		Set_fore_color
		jsl		>_POLYGON

;===============  Check face counter  ===================================
Draw_polygon_50
		ply
		dec		<face_counter
		bne		Draw_polygon_10
		rts

;************************************************************************
;*		Back face visible check					*
;************************************************************************

		mem16
		idx8
Back_visible
		lda		<visible_flag
		bpl		Draw_polygon_50
		rep		#00100000B		; Memory 16 bit mode

;===============  Overturn polygon  ====================================== 
Back_visible_10
		lda		<graph_parameter
		and		#00FFH
		tay
		dey
		ldx		#1
		lsr		a
		lsr		a
		sta		<work0
;-------------------------------------------------------------------------
repeat$		lda		<graph_parameter,x
		pha
		lda		graph_parameter,y
		sta		<graph_parameter,x
		pla
		sta		graph_parameter,y
		inx
		inx
		dey
		dey
		dec		<work0
		bne		repeat$

;===============  Display polygon  =======================================
Back_visible_20
		mem8
		sep		#00100000B		; Memory 8 bit mode
		jsr		Set_back_color
		jsl		>_POLYGON		; Polygon filling
		jmp		Draw_polygon_50

;************************************************************************
;*		Set color						*
;************************************************************************

		mem8
		idx8

;=============== Set fore color =========================================
Set_fore_color
		lda		<shading_switch
		bne		Set_shade_col_2
;------------------------------------------------------------------------
		lda		<polygon_color
;;;;		and		#0FH
		and		#07H
		jsl		>_COLOR			; Set color mask pattern
		rts

;=============== Set back color =========================================
Set_back_color
		lda		<shading_switch
		bne		Set_shade_col_1
;------------------------------------------------------------------------
		lda		<polygon_color
		lsr		a
		lsr		a
		lsr		a
		lsr		a
;;;;		and		#0FH
		and		#07H
		jsl		>_COLOR
		rts

;=============== Set shade color ========================================
Set_shade_col_1
		mem16
		rep		#00100000B		; Memory 16 bit mode
		lda		<work0
		eor		#0FFFFH
		inc		a
		bra		Set_shade_col_3
;------------------------------------------------------------------------
Set_shade_col_2	rep		#00100000B		; Memory 16 bit mode
		lda		<work0
;------------------------------------------------------------------------
Set_shade_col_3
		pha
		lda	object_type
		and	#00ffh
		beq	loop2
		lda	object_size
		and	#00ffh
		lsr	a
		lsr	a
		lsr	a
		lsr	a
		lsr	a
loop2		equ	$
		tax
		pla
loop1		equ	$
		asl	a
		dex
		bpl	loop1
		mem8
		sep		#00100000B		; Memory 8 bit mode
		xba
		bne		skip1$
		lda		#01H
		bra		skip2$
;;;;skip1$		cmp		#10H
skip1$		cmp		#08H
		bcc		skip2$
;;;;		lda		#0FH
		lda		#07H
skip2$		jsl		>_COLOR
		rts

;************************************************************************
;*		Check cross product					*
;************************************************************************

		mem8
		idx8
Cross_product
;-----------------------------------------------------------------------
set_ux$		sep		#00000101B			; Set Carry & Disable IRQ
		lda		<graph_parameter+3
		sbc		<graph_parameter+1
		sta		Rotation_matrix+0
		lda		#00H
		sbc		#00H
		sta		Rotation_matrix+0
;-----------------------------------------------------------------------
set_vy$		sec
		lda		<graph_parameter+6
		sbc		<graph_parameter+4
		sta		Rotation_matrix+1
		lda		PPU_multiply+0
		sta		<work0+0
		lda		PPU_multiply+1
		cli						; Enable IRQ
		sta		<work0+1
;-----------------------------------------------------------------------
set_vx$		sep		#00000101B			; Set Carry & DIsable IRQ
		lda		<graph_parameter+5
		sbc		<graph_parameter+3
		sta		Rotation_matrix+0
		lda		#00H
		sbc		#00H
		sta		Rotation_matrix+0
;-----------------------------------------------------------------------
set_uy$		sec
		lda		<graph_parameter+4
		sbc		<graph_parameter+2
		sta		Rotation_matrix+1
;-----------------------------------------------------------------------
		rep		#00100000B		; Memory 16 bit mode
		sec
		lda		<work0
		sbc		PPU_multiply+0
		sta		<work0
		sep		#00100000B		; Memory 8 bit mode
		cli					; Enable IRQ
		rts

;************************************************************************
;*		SIN,COS function table					*
;************************************************************************

sin_data	byte		000H,002H,003H,005H,006H,008H,009H,00BH
		byte		00CH,00EH,010H,011H,013H,014H,016H,017H
		byte		018H,01AH,01BH,01DH,01EH,020H,021H,022H
		byte		024H,025H,026H,027H,029H,02AH,02BH,02CH
		byte		02DH,02EH,02FH,030H,031H,032H,033H,034H
		byte		035H,036H,037H,038H,038H,039H,03AH,03BH
		byte		03BH,03CH,03CH,03DH,03DH,03EH,03EH,03EH
		byte		03FH,03FH,03FH,040H,040H,040H,040H,040H

cos_data	byte		040H,040H,040H,040H,040H,040H,03FH,03FH
		byte		03FH,03EH,03EH,03EH,03DH,03DH,03CH,03CH
		byte		03BH,03BH,03AH,039H,038H,038H,037H,036H
		byte		035H,034H,033H,032H,031H,030H,02FH,02EH
		byte		02DH,02CH,02BH,02AH,029H,027H,026H,025H
		byte		024H,022H,021H,020H,01EH,01DH,01BH,01AH
		byte		018H,017H,016H,014H,013H,011H,010H,00EH
		byte		00CH,00BH,009H,008H,006H,005H,003H,002H

		byte		000H,0FEH,0FDH,0FBH,0FAH,0F8H,0F7H,0F5H
		byte		0F4H,0F2H,0F0H,0EFH,0EDH,0ECH,0EAH,0E9H
		byte		0E8H,0E6H,0E5H,0E3H,0E2H,0E0H,0DFH,0DEH
		byte		0DCH,0DBH,0DAH,0D9H,0D7H,0D6H,0D5H,0D4H
		byte		0D3H,0D2H,0D1H,0D0H,0CFH,0CEH,0CDH,0CCH
		byte		0CBH,0CAH,0C9H,0C8H,0C8H,0C7H,0C6H,0C5H
		byte		0C5H,0C4H,0C4H,0C3H,0C3H,0C2H,0C2H,0C2H
		byte		0C1H,0C1H,0C1H,0C0H,0C0H,0C0H,0C0H,0C0H

		byte		0C0H,0C0H,0C0H,0C0H,0C0H,0C0H,0C1H,0C1H
		byte		0C1H,0C2H,0C2H,0C2H,0C3H,0C3H,0C4H,0C4H
		byte		0C5H,0C5H,0C6H,0C7H,0C8H,0C8H,0C9H,0CAH
		byte		0CBH,0CCH,0CDH,0CEH,0CFH,0D0H,0D1H,0D2H
		byte		0D3H,0D4H,0D5H,0D6H,0D7H,0D9H,0DAH,0DBH
		byte		0DCH,0DEH,0DFH,0E0H,0E2H,0E3H,0E5H,0E6H
		byte		0E8H,0E9H,0EAH,0ECH,0EDH,0EFH,0F0H,0F2H
		byte		0F4H,0F5H,0F7H,0F8H,0FAH,0FBH,0FDH,0FEH

		byte		000H,002H,003H,005H,006H,008H,009H,00BH
		byte		00CH,00EH,010H,011H,013H,014H,016H,017H
		byte		018H,01AH,01BH,01DH,01EH,020H,021H,022H
		byte		024H,025H,026H,027H,029H,02AH,02BH,02CH
		byte		02DH,02EH,02FH,030H,031H,032H,033H,034H
		byte		035H,036H,037H,038H,038H,039H,03AH,03BH
		byte		03BH,03CH,03CH,03DH,03DH,03EH,03EH,03EH
		byte		03FH,03FH,03FH,040H,040H,040H,040H,040H

		end
