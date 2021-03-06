;************************************************************************
;*	    Super Famicom Polygon Shape Data for ZELDA			*
;*						[ Mar.04, 1991 ]	*
;************************************************************************

		extend

;;;;Object_Shape	sect		rel
;;;;PACKAGE		group		Object_Shape

;===============  Cross Definition  =====================================

		global		_SHAPES

;************************************************************************
;*	_SHAPES : Shape structure					*
;*									*
;*		byte		number  of points , number  of faces	*
;*		word		pointer of points , pointer of faces 	*
;************************************************************************
;
;
		ORG		09FCB6H+02D6H
;
;
_SHAPES		equ		$
;------------------------------------------------------------------------
POLIW00		EQU	$
		BYTE	6,8
		WORD	POLIW00_P,POLIW00_F
;
TRYFS00		EQU	$
		BYTE	6,5
		WORD	TRYFS00_P,TRYFS00_F
;
;************************************************************************
;*		POLIW0 datas						*
;************************************************************************
POLIW00_P	EQU	$
		BYTE	000,065,000	;0
		BYTE	000,-65,000	;1
		BYTE	000,000,-40	;2
		BYTE	-40,000,000	;3
		BYTE	000,000,040	;4
		BYTE	040,000,000	;5
;
POLIW00_F	EQU	$
		BYTE	3,0,5,2,4
		BYTE	3,0,2,3,1
		BYTE	3,0,3,4,2
		BYTE	3,0,4,5,3
;
		BYTE	3,1,2,5,4
		BYTE	3,1,3,2,1
		BYTE	3,1,4,3,2
		BYTE	3,1,5,4,3
;
TRYFS00_P	EQU	$
		BYTE	000,040,010	;0
		BYTE	040,-40,010	;1
		BYTE	-40,-40,010	;2
		BYTE	000,040,-10	;3
		BYTE	-40,-40,-10	;4
		BYTE	040,-40,-10	;5
;
TRYFS00_F	EQU	$
		BYTE	3,0,1,2,7
		BYTE	3,3,4,5,6
;
		BYTE	4,0,3,5,1,5
		BYTE	4,1,5,4,2,4
		BYTE	4,3,0,2,4,3
;
;----------------------------------------
		end
