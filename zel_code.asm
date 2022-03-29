;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.10.05(SAT)
;
;--------------------------------------------------------------------
;
		ORG	0FF780H
;
;=============================================== (zel_code) =============
		GLB	DJCDITST,DJCODST
;
		GLB	GRDCDD
;========================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;
;************************************************************************
;*			[ DANJYON ]					*
;*		Character code data					*
;*		(A:1 , a:3 , B:2 , C:0)					*
;************************************************************************
DRDCDTBL	EQU	$
		WORD	RDCOD00-RDCOD00,RDCOD01-RDCOD00,RDCOD02-RDCOD00,RDCOD03-RDCOD00
		WORD	RDCOD04-RDCOD00,RDCOD05-RDCOD00,RDCOD06-RDCOD00,RDCOD07-RDCOD00
		WORD	RDCOD08-RDCOD00,RDCOD09-RDCOD00,RDCOD0A-RDCOD00,RDCOD0B-RDCOD00
		WORD	RDCOD0C-RDCOD00,RDCOD0D-RDCOD00,RDCOD0E-RDCOD00,RDCOD0F-RDCOD00
		WORD	RDCOD10-RDCOD00,RDCOD11-RDCOD00,RDCOD12-RDCOD00,RDCOD13-RDCOD00
		WORD	RDCOD14-RDCOD00
;
;
RDCODE1		EQU	$		; read code data
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	01,01,01,00,02,01,02,00,01,01,02,02,02,02,02,02 ; 00
		HEX	02,02,02,00,00,01,00,00,02,00,00,02,02,02,02,02 ; 01
		HEX	02,02,02,02,01,01,01,02,02,02,02,02,01,01,00,00 ; 02
		HEX	02,02,02,02,02,02,01,02,02,02,02,02,01,01,00,00 ; 03
		HEX	00,00,00,2A,01,20,01,01,04,01,01,18,01,02,1C,01 ; 04
		HEX	28,28,2A,2A,01,02,01,01,04,00,00,00,28,01,0A,00 ; 05
		HEX	01,01,0C,0C,02,02,02,02,28,2A,20,20,20,02,08,00 ; 06
		HEX	04,04,01,01,01,02,02,02,00,00,20,20,00,02,00,00 ; 07
		HEX	01,01,01,01,01,01,01,01,01,01,01,01,01,01,02,02 ; 08
		HEX	01,01,01,01,01,01,01,01,01,01,18,10,10,01,01,01 ; 09
		HEX	01,01,04,04,04,04,04,04,01,02,02,00,00,00,00,00 ; 0A
		HEX	01,01,01,01,01,01,01,01,01,01,01,01,01,01,02,02 ; 0B
		HEX	00,00,00,00,00,00,00,00,00,00,00,00,00,00,62,62 ; 0C
		HEX	00,00,24,24,00,00,00,00,00,00,00,00,00,00,62,62 ; 0D
		HEX	27,02,02,02,27,27,01,00,00,00,00,24,00,00,00,00 ; 0E
		HEX	27,27,27,27,27,10,02,01,00,00,00,24,00,00,00,00 ; 0F
		HEX	27,02,02,02,27,27,27,27,02,02,02,24,00,00,00,00 ; 10
		HEX	27,27,27,27,27,20,02,02,01,02,02,23,02,00,00,00 ; 11
		HEX	27,27,27,27,27,20,02,27,02,54,00,00,27,02,02,02 ; 12
		HEX	27,27,27,27,27,27,02,27,02,54,00,00,27,02,02,02 ; 13
;;;;;;;;		HEX	01,01,02,02,02,02,6E,6F,02,6C,02,02,01,01,01,01 ; 14
;;;;;;;;		HEX	02,02,02,02,02,02,02,02,02,02,02,02,01,01,01,01 ; 15
;;;;;;;;		HEX	02,02,01,01,01,01,6E,6F,01,6C,01,01,02,02,02,02 ; 16
;;;;;;;;		HEX	00,00,22,00,00,02,02,02,02,02,02,02,02,02,02,02 ; 17
;;;;;;;;		HEX	01,01,01,01,02,02,02,02,02,18,00,00,00,00,00,00 ; 18
;;;;;;;;		HEX	01,01,01,01,02,02,02,02,02,00,00,00,00,00,00,00 ; 19
;;;;;;;;		HEX	02,02,02,02,02,02,02,02,02,00,00,00,00,00,00,00 ; 1A
;;;;;;;;		HEX	02,02,02,02,02,02,02,02,02,00,00,00,00,00,00,00 ; 1B
		HEX	27,27,00,27,60,60,01,01,01,01,02,02,0D,00,00,4B ; 1C
		HEX	67,67,67,67,66,66,66,66,00,00,20,20,20,20,20,20 ; 1D
		HEX	27,63,27,55,55,01,44,00,01,20,02,02,1C,3A,3B,00 ; 1E
		HEX	27,63,27,53,53,01,44,01,0D,00,00,00,09,09,09,09 ; 1F
;
;
RDCOD00		EQU	$		; shiro
RDCOD01		EQU	$		;       under
RDCOD02		EQU	$		; shisai-room
RDCOD09		EQU	$		; ura-danjyon (mori-shita)
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	02,02,02,02,02,02,6E,6F,01,6C,02,01,01,01,01,01 ; 14
		HEX	02,02,02,02,02,02,00,00,00,00,02,01,01,01,01,01 ; 15
		HEX	01,01,01,01,01,01,6E,6F,01,6C,02,02,02,02,01,02 ; 16
		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,01,00 ; 17
		HEX	01,01,01,01,01,01,01,02,02,02,02,02,02,02,02,02 ; 18
		HEX	01,01,01,01,01,01,01,02,02,02,02,02,02,02,02,02 ; 19
		HEX	02,02,02,02,18,00,00,00,00,00,02,02,01,01,01,01 ; 1A
		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
RDCOD03		EQU	$		; minka
RDCOD04		EQU	$		; chapel
RDCOD11		EQU	$		; kajiya , uranai
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
		HEX	00,00,22,00,00,00,02,02,02,02,02,02,02,02,02,02 ; 17
		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
		HEX	02,02,02,02,18,00,00,00,00,00,02,02,02,02,02,02 ; 1A
		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
RDCOD05		EQU	$		; shinden
RDCOD06		EQU	$		; doukutsu
RDCOD07		EQU	$		; ura-danjyon (shinden)
RDCOD0A		EQU	$		; ura-danjyon (machi-shita)
RDCOD0F		EQU	$		; shinden-jiji
RDCOD10		EQU	$		; shiro-nukemichi
RDCOD12		EQU	$		; sabaku
RDCOD14		EQU	$		; doukutsu-jiji
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
		HEX	00,00,22,00,00,00,00,00,00,00,02,02,00,00,02,00 ; 17
		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
		HEX	02,02,02,02,00,00,00,00,00,00,02,02,02,02,02,02 ; 1A
		HEX	6B,6A,02,01,02,02,08,08,08,08,09,09,09,09,68,69 ; 1B
;
;// 03.09.12 //RDCOD06		EQU	$		; doukutsu
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,02,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	02,02,02,02,00,00,00,00,00,00,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
;// 03.09.12 //RDCOD07		EQU	$		; ura-danjyon (shinden)
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	00,00,02,02,02,00,00,00,00,00,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	6B,6A,02,01,64,64,08,08,08,08,09,09,09,09,68,69 ; 1B
;
RDCOD08		EQU	$		; ura-danjyon (mizu hiki)
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	02,02,02,02,02,02,02,02,09,09,02,01,01,01,01,01 ; 14
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
		HEX	01,01,01,00,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
		HEX	01,01,01,08,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
		HEX	02,02,02,02,18,00,00,00,00,00,02,02,02,02,02,02 ; 1A
		HEX	08,08,02,01,01,09,08,08,08,08,09,09,09,09,09,09 ; 1B
;
;// 03.09.12 //RDCOD0A		EQU	$		; ura-danjyon (machi-shita)
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	02,02,02,02,02,00,00,00,02,02,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	6B,6A,02,01,02,02,08,08,08,08,09,09,09,09,68,69 ; 1B
;
RDCOD0B		EQU	$		; ura-danjyon (ice tower)
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
		HEX	02,02,02,02,02,00,0F,00,00,00,02,02,02,02,02,02 ; 1A
		HEX	02,02,02,01,02,02,08,08,08,08,0E,0E,0E,0E,00,00 ; 1B
;
RDCOD0C		EQU	$		; ura-danjyon (numa)
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
		HEX	01,01,01,01,01,01,02,02,01,02,02,02,02,02,02,02 ; 16
		HEX	00,00,22,00,00,00,00,00,00,00,02,02,00,00,00,00 ; 17
		HEX	01,01,01,01,02,02,02,0D,0D,02,02,02,02,02,02,02 ; 18
		HEX	01,01,01,01,02,02,02,0D,0D,02,02,02,02,02,02,02 ; 19
		HEX	02,02,02,02,02,00,00,00,00,00,02,02,02,02,02,02 ; 1A
		HEX	6B,6A,02,01,02,02,08,08,08,08,09,09,09,09,68,69 ; 1B
;
RDCOD0D		EQU	$		; ura-danjyon (kame-iwa)
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	B2,B4,B1,BB,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
		HEX	B3,B5,B0,B6,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
		HEX	02,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
		HEX	B1,B2,B3,B4,B5,B1,B0,02,BE,02,02,02,02,02,B7,B8 ; 18
		HEX	B0,B2,B3,B4,B5,02,B0,02,00,02,B1,BE,00,BD,B9,BA ; 19
		HEX	02,02,B1,B0,02,00,00,00,BD,BC,02,02,02,02,02,02 ; 1A
		HEX	00,00,00,00,00,0E,00,00,00,00,00,00,00,00,00,00 ; 1B
;// 03.09.26 //RDCOD0D		EQU	$		; ura-danjyon (kame-iwa)
;// 03.09.26 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.26 //		HEX	B2,B4,B1,BB,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.26 //		HEX	B3,B5,B0,B6,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.26 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.26 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
;// 03.09.26 //		HEX	B1,B2,B3,B4,B5,B1,B0,02,B0,02,02,02,02,02,B7,B8 ; 18
;// 03.09.26 //		HEX	B0,B2,B3,B4,B5,02,02,02,B0,02,B1,B1,BE,BD,B9,BA ; 19
;// 03.09.26 //		HEX	02,02,B1,B0,02,00,00,00,BD,BC,02,02,02,02,02,02 ; 1A
;// 03.09.26 //		HEX	00,00,00,00,00,0E,00,00,00,00,00,00,00,00,00,00 ; 
;
RDCOD0E		EQU	$		; ura-danjyon (tower)
RDCOD13		EQU	$		; ganon
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
		HEX	00,00,22,00,00,00,00,00,00,00,02,02,00,00,00,00 ; 17
		HEX	01,01,01,01,01,01,01,01,00,00,00,00,00,00,02,02 ; 18
		HEX	01,01,01,01,01,01,01,01,00,00,00,00,00,00,02,02 ; 19
		HEX	02,02,02,02,18,00,00,00,00,00,00,00,01,01,01,01 ; 1A
		HEX	6B,6A,02,01,02,02,08,08,08,08,0E,0E,0E,0E,68,69 ; 1B
;
;// 03.09.12 //RDCOD0F		EQU	$		; shinden-jiji
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	02,02,02,02,02,00,00,00,00,00,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
;// 03.09.12 //RDCOD10		EQU	$		; shiro-nukemichi
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	02,02,02,02,02,00,00,00,00,00,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
;// 03.09.12 //RDCOD11		EQU	$		; kajiya , uranai
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	02,02,02,02,02,00,00,00,00,00,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
;// 03.09.12 //RDCOD12		EQU	$		; sabaku
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,00,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	02,02,02,02,02,00,00,00,00,00,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
;// 03.09.12 //RDCOD14		EQU	$		; doukutsu-jiji
;// 03.09.12 //;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 14
;// 03.09.12 //		HEX	02,02,02,02,02,02,02,02,02,02,02,01,01,01,01,01 ; 15
;// 03.09.12 //		HEX	01,01,01,01,01,01,01,01,01,01,02,02,02,02,02,02 ; 16
;// 03.09.12 //		HEX	00,00,22,00,00,00,02,02,02,02,02,02,00,00,02,00 ; 17
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 18
;// 03.09.12 //		HEX	01,01,01,01,02,02,02,02,02,02,02,02,02,02,02,02 ; 19
;// 03.09.12 //		HEX	02,02,02,02,18,00,00,00,00,00,02,02,02,02,02,02 ; 1A
;// 03.09.12 //		HEX	02,02,02,01,02,02,08,08,08,08,09,09,09,09,09,09 ; 1B
;
;
;
;
;
;
;************************************************************************
;*		Danjyon code init. set			(DJCDITST)	*
;************************************************************************
DJCDITST	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#03EH
DCIS40		EQU	$
		LDA	>RDCODE1+000H,X
		STA	>RDCODE0+000H,X
		LDA	>RDCODE1+040H,X
		STA	>RDCODE0+040H,X
		LDA	>RDCODE1+080H,X
		STA	>RDCODE0+080H,X
		LDA	>RDCODE1+0C0H,X
		STA	>RDCODE0+0C0H,X
		LDA	>RDCODE1+100H,X
		STA	>RDCODE0+100H,X
		LDA	>RDCODE1+140H,X
		STA	>RDCODE0+1C0H,X
		DEX
		DEX
		BPL	DCIS40		;
;					;
		MEM8
		SEP	#00100000B	; memory 8bit mode
		RTL
;
;
;
;
;************************************************************************
;*		Danjyon code set			(DJCODST)	*
;************************************************************************
DJCODST		EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	!RBGCPT
		AND	#000FFH
		ASL	A
		TAX
		LDA	DRDCDTBL,X
		TAY
		LDX	#00000H
DCDS40		EQU	$
		LDA	RDCOD00+000H,Y
		STA	>RDCODE0+140H,X
		LDA	RDCOD00+040H,Y
		STA	>RDCODE0+180H,X
		INY
		INY
		INX
		INX
		CPX	#00040H
		BNE	DCDS40		; end ?
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
;
;
;
;************************************************************************
;*			[ GROUND ]					*
;*		Character code data					*
;*		(A:1 , a:3 , B:2 , C:0)					*
;************************************************************************
GRDCDD		EQU	$		; read code data
;			 0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
		HEX	27,27,27,27,27,27,02,02,01,01,01,00,00,00,00,00 ; 00
		HEX	27,01,01,01,01,01,02,02,27,27,27,00,00,00,00,00 ; 01
		HEX	27,01,01,01,20,01,02,02,27,27,27,00,00,00,00,00 ; 02
		HEX	27,01,01,01,01,20,02,02,02,02,02,00,00,00,00,00 ; 03
		HEX	01,01,01,01,1A,01,12,01,01,02,01,01,28,2E,2A,2B ; 04
		HEX	01,01,18,18,1A,01,12,01,01,2C,02,2D,29,2F,02,02 ; 05
		HEX	01,01,01,01,01,01,02,01,02,2E,00,00,2C,00,4E,4F ; 06
		HEX	01,01,01,01,01,01,02,01,02,00,2E,00,00,00,02,22 ; 07
		HEX	01,01,02,00,00,00,18,12,02,02,00,48,00,00,00,00 ; 08
		HEX	01,01,02,00,01,01,10,1A,02,00,00,48,00,00,00,00 ; 09
		HEX	10,10,02,00,01,01,01,01,00,00,48,00,00,09,00,00 ; 0A
		HEX	02,02,02,00,01,01,2B,00,00,09,00,00,00,00,00,00 ; 0B
		HEX	01,01,01,01,01,01,02,02,02,02,02,02,02,00,00,00 ; 0C
		HEX	01,01,01,01,01,01,02,02,02,02,02,02,02,00,00,00 ; 0D
		HEX	01,01,01,46,01,01,02,02,02,02,02,02,02,00,00,00 ; 0E
		HEX	01,01,01,01,01,01,02,02,02,02,02,02,02,00,00,00 ; 0F
		HEX	02,02,42,02,02,02,02,02,02,02,29,22,00,00,00,00 ; 10
		HEX	02,02,02,02,02,02,02,02,02,02,29,22,00,00,00,00 ; 11
		HEX	02,02,02,02,02,02,02,02,02,02,00,00,00,00,00,00 ; 12
		HEX	02,02,02,02,02,02,02,02,02,02,00,00,00,00,00,00 ; 13
		HEX	01,01,01,01,01,01,01,01,01,01,01,00,00,00,02,44 ; 14
		HEX	01,01,01,01,01,01,01,01,02,02,02,00,00,00,02,44 ; 15
		HEX	01,01,01,01,01,01,01,01,02,02,02,00,00,00,00,00 ; 16
		HEX	01,01,43,01,01,01,01,01,02,02,02,00,00,00,00,00 ; 17
		HEX	50,02,54,51,57,57,56,56,27,27,27,00,40,40,48,48 ; 18
		HEX	50,02,54,51,57,2A,56,56,27,27,27,00,40,40,57,48 ; 19
		HEX	27,02,52,53,02,01,12,18,55,55,00,00,48,02,02,00 ; 1A
		HEX	27,02,52,53,09,01,1A,10,55,55,00,00,48,02,02,00 ; 1B
		HEX	02,02,18,08,08,08,09,09,08,08,29,02,02,02,1A,02 ; 1C
		HEX	08,08,10,08,12,00,09,09,09,09,09,48,09,29,00,4B ; 1D
		HEX	02,02,02,00,08,02,02,00,00,00,00,01,00,00,20,00 ; 1E
		HEX	02,02,02,02,02,02,02,00,00,01,01,01,02,00,08,00 ; 1F
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
