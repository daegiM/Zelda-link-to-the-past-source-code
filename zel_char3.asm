;
		INCLUDE	zel_ram.asm
;
;-----------------------------------------------------------------------
;
;		ZELDA-3			1991.10.05(SAT)
;
;------------------------------------------------------------------------
;
		ORG	0CFDD0H
;
;=============================================== (zel_char) =============
		GLB	GCGCHNG,DJNCGDT
;
		GLB	NKCGSET,NKCGST0,NKCGST1,RGBRSET
;=============================================== (zel_char) =============
		EXT	GDCGST,GDCGST1,GDCGST2,KOUKAST,MSCGST1,MSCGST2
;
		EXT	CORGENE,CGLPT3,CGLPT4,CGLPT8,PLAYCG,KENOBJ,TATEOBJ
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
;*		Danjyon change color data				*
;************************************************************************
DJNCGDT		EQU	$		; danjyon basic color data
;			 dj  bo  e1  e2
		BYTE	00*2,00,03H,01H		; 0 : normal shiro
		BYTE	01*2,00,03H,01H		; 1 : shiro chika
		BYTE	02*2,00,0AH,01H		; 2 : normal minka
		BYTE	03*2,00,01H,07H		; 3 : shinden (boss)
		BYTE	05*2,02,02H,07H		; 4 : sabaku-shinden (boss)
		BYTE	02*2,04,03H,0AH		; 5 : kusuri-baba mise
		BYTE	06*2,05,08H,14H		; 6 : yama no tou
		BYTE	07*2,00,03H,0AH		; 7 : doukutsu
		BYTE	01*2,00,0FH,14H		; 8 : hokora (boss)
		BYTE	05*2,02,00H,07H		; 9 : sabaku-shinden
		BYTE	01*2,00,0FH,0CH		; A : ura-hokora-mizu
		BYTE	03*2,00,06H,07H		; B : shinden
		BYTE	00*2,00,0EH,12H		; C : shisai-room
		BYTE	09*2,05,05H,0BH		; D : ura-mori danjyon
		BYTE	09*2,00,02H,0CH		; E :                  (boss)
		BYTE	08*2,05,0AH,07H		; F : ura-shinden
		BYTE	08*2,00,10H,0CH		;10 : ura-shinden(boss)
		BYTE	11*2,07,02H,07H		;11 : ura-numa danjyon
		BYTE	11*2,00,07H,0FH		;12 :                  (boss)
		BYTE	04*2,00,04H,0CH		;13 : ura-ice danjyon
		BYTE	04*2,00,04H,09H		;14 :                 (boss)
		BYTE	02*2,00,03H,01H		;15 : link-house
		BYTE	10*2,00,04H,04H		;16 : ura-machi
		BYTE	10*2,00,14H,0CH		;17 :           (boss)
		BYTE	12*2,05,07H,0BH		;18 : ura-kame-iwa
		BYTE	12*2,06,10H,0CH		;19 :              (boss)
		BYTE	13*2,05,08H,14H		;1A : ura-tower
		BYTE	13*2,02,00H,07H		;1B :           (boss)
		BYTE	03*2,00,03H,0AH		;1C : shinden-yoko ojiji
		BYTE	14*2,00,03H,01H		;1D : chapel
		BYTE	15*2,00,0BH,11H		;1E : ura-minka (kaji-ya)
		BYTE	02*2,00,0BH,11H		;1F : bomb-ya
		BYTE	07*2,00,00H,02H		;20 : devil-room
		BYTE	16*2,08,13H,0DH		;21 : ganon
		BYTE	05*2,00,03H,0AH		;22 : piramido megami
		BYTE	10*2,00,04H,04H		;23 : ura-machi (nezumi)
		BYTE	13*2,02,02H,07H		;24 : ura-yama-tower (4F)
		BYTE	13*2,10,00H,00H		;25 :                (5F)
		BYTE	00*2,00,03H,02H		;26 : shiro(2F)
		BYTE	07*2,00,03H,07H		;27 : mane-mane
		BYTE	13*2,05,05H,0BH		;28 : ura-yama-tower (B1)
;
;
;
;
; 
;************************************************************************
;*		Ground CG. change			(GCGCHNG)	*
;*		[in]	(A)	<-- set pointer				*
;************************************************************************
CGCGDT 		EQU	$
		HEX	000,0FF,007,0FF		; 0
;
		HEX	000,001,007,0FF		; 1
		HEX	000,002,007,0FF		; 2
		HEX	000,003,007,0FF		; 3
		HEX	000,004,007,0FF		; 4
		HEX	000,005,007,0FF		; 5
		HEX	000,006,007,0FF		; 6
		HEX	007,006,005,0FF		; 7
		HEX	000,008,007,0FF		; 8
		HEX	000,009,007,0FF		; 9
		HEX	000,00A,007,0FF		: A
;
		HEX	000,00B,007,0FF		: B
		HEX	000,0FF,007,0FF		: C
		HEX	000,0FF,007,0FF		: D
		HEX	003,004,007,0FF		: E
		HEX	004,004,003,0FF		: F
;
;
		HEX	010,0FF,006,0FF		;10
;
		HEX	010,001,006,0FF		;11
		HEX	010,011,006,0FF		;12
		HEX	010,003,006,0FF		;13
		HEX	010,004,006,0FF		;14
		HEX	010,005,006,0FF		;15
		HEX	010,006,006,0FF		;16
		HEX	012,013,004,0FF		;17
		HEX	012,005,004,0FF		;18
		HEX	010,009,006,0FF		;19
		HEX	010,00B,006,0FF		;1A
		HEX	010,00C,006,0FF		;1B
		HEX	010,00D,006,0FF		;1C
		HEX	010,00E,006,0FF		;1D
		HEX	010,00F,006,0FF		;1E
;
;
CGCGD1 		EQU	$
		HEX	0FF,0FF			; 0
;
		HEX	003,00A			; 1
		HEX	003,006			; 2
		HEX	003,001			; 3
		HEX	000,002			; 4
		HEX	003,00E			; 5
		HEX	003,002			; 6
		HEX	013,001			; 7
		HEX	00B,00C			; 8
		HEX	011,001			; 9
		HEX	007,005			; A
		HEX	011,000			; B
		HEX	009,00B			; C
		HEX	00F,005			; D
		HEX	003,005			; E
		HEX	003,007			; F
		HEX	00F,002			;10
		HEX	00A,002			;11
		HEX	005,001			;12
		HEX	00C,00E			;13
;
;
GCGCHNG		EQU	$
		ASL	A
		ASL	A
		TAX
		STZ	!CGSTPT+1
;
		LDA	>CGCGDT+0,X
		BMI	CGCG10		; set ok ?
;					; yes
		STA	!GNDBGC1
CGCG10		EQU	$
		LDA	>CGCGDT+1,X
		BMI	CGCG20		; set ok ?
;					; yes
		STA	!GNDBGC2
CGCG20		EQU	$
		LDA	>CGCGDT+2,X
		BMI	CGCG30		; set ok ?
;					; yes
		STA	!KOKBGC
CGCG30		EQU	$
		LDA	<WORK0
		ASL	A
		TAX
		LDA	>CGCGD1+0,X
		BMI	CGCG40		; set ok ?
;					; yes
		STA	!EYOJC0
CGCG40		EQU	$
		LDA	>CGCGD1+1,X
		BMI	CGCG50		; set ok ?
;					; yes
		STA	!EYOJC1
CGCG50		EQU	$
		JSL	>GDCGST1
		JSL	>GDCGST2
		JSL	>KOUKAST
;
		JSL	>MSCGST1
		JSL	>MSCGST2
		RTL
;
;
;
;
;
;*********************************************************************
;*	 siro & nuki color set sub				     *
;*	 X -----  0:nuki  1:siro				     *
;*********************************************************************
NKCGSET		EQU	$
		MEM16
	 	REP	#00100000B
;
	 	LDA	#00000H
NKCST40		EQU	$
		STA	>CGWORK+000H
;// 03.06.05 //		STA	>CGWORK+020H
		STA	>CGWORK+040H
;// 03.06.05 //		STA	>CGWORK+060H
;// 03.06.05 //		STA	>CGWORK+080H
;// 03.06.05 //		STA	>CGWORK+0A0H
;// 03.06.05 //		STA	>CGWORK+0C0H
;// 03.06.05 //		STA	>CGWORK+0E0H
;// 03.06.05 //		STA	>CGWORK+100H
;// 03.06.05 //		STA	>CGWORK+120H
;// 03.06.05 //		STA	>CGWORK+140H
;// 03.06.05 //		STA	>CGWORK+160H
;// 03.06.05 //		STA	>CGWORK+180H
;// 03.06.05 //		STA	>CGWORK+1A0H
;// 03.06.05 //		STA	>CGWORK+1C0H
;// 03.06.05 //		STA	>CGWORK+1E0H
NKCST80		EQU	$
		STA	>CGRAM+000H
;// 03.06.05 //		STA	>CGRAM+020H
		STA	>CGRAM+040H
;// 03.06.05 //		STA	>CGRAM+060H
;// 03.06.05 //		STA	>CGRAM+080H
;// 03.06.05 //		STA	>CGRAM+0A0H
;// 03.06.05 //		STA	>CGRAM+0C0H
;// 03.06.05 //		STA	>CGRAM+0E0H
;// 03.06.05 //		STA	>CGRAM+100H
;// 03.06.05 //		STA	>CGRAM+120H
;// 03.06.05 //		STA	>CGRAM+140H
;// 03.06.05 //		STA	>CGRAM+160H
;// 03.06.05 //		STA	>CGRAM+180H
;// 03.06.05 //		STA	>CGRAM+1A0H
;// 03.06.05 //		STA	>CGRAM+1C0H
;// 03.06.05 //		STA	>CGRAM+1E0H
;
		MEM8 
		IDX8 
		SEP	#00110000B
RGBRSET		EQU	$
		LDA	#00100000B
		STA	<WD2132R
		LDA	#01000000B
		STA	<WD2132G
		LDA	#10000000B
		STA	<WD2132B
		RTL
;
;
;
;*********************************************************************
;*	 Ground nuki color set sub				     *
;*	 X -----  0:nuki  1:siro				     *
;*********************************************************************
NKCGDTR		EQU	$
		BYTE	005H+020H,007H+020H,013H+020H
NKCGDTG		EQU	$
		BYTE	00FH+040H,014H+040H,00FH+040H
NKCGDTB		EQU	$
		BYTE	005H+080H,007H+080H,009H+080H
;
;
NKCGST0		EQU	$ 
		MEM16
		IDX16
		REP	#00110000B
;
		LDX	#02669H
		LDA	<MPDTNO
		CMP	#00080H
		BCC	NKCS020		; spot ?
;					; yes
		LDA	<RMXYCT
		CMP	#00183H
		BEQ	NKCS010		; taki boss ?
;					; no
		CMP	#00182H
		BEQ	NKCS010		; taki ?
;					; no
		CMP	#00180H
		BNE	NKCS040		; mori-spot ?
;					; no
NKCS010		EQU	$
		LDX	#019C6H
		BRA	NKCS040
;
NKCS020		EQU	$
		LDX	#02669H
		LDA	<MPDTNO
		AND	#00040H
		BEQ	NKCS040		; omote ?
;					; no
		LDX	#02A32H
NKCS040		EQU	$
		TXA
		BRA	NKCST40
;
;// 03.05.16 //		STX	<WORK0
;// 03.05.16 //	 LDY	  #0000FH
;// 03.05.16 //	 LDX	  #00000H
;// 03.05.16 //NKCS080  EQU	  $ 
;// 03.05.16 //		LDA	<WORK0
;// 03.05.16 //;// 03.04.17 //		LDA	#00000H
;// 03.05.16 //	 STA	  >CGRAM+000H,X
;// 03.05.16 //	 STA	  >CGWORK+000H,X
;// 03.05.16 //	 TXA
;// 03.05.16 //	 CLC
;// 03.05.16 //	 ADC	  #020H 
;// 03.05.16 //	 TAX
;// 03.05.16 //	 DEY
;// 03.05.16 //	 BPL	  NKCS080 
;// 03.05.16 //; 
;// 03.05.16 //	 MEM8 
;// 03.05.16 //	 IDX8 
;// 03.05.16 //	 SEP	  #00110000B
;// 03.05.16 //;
;// 03.05.16 //		LDA	#00100000B
;// 03.05.16 //;// 03.04.17 //		LDX	<WORK0
;// 03.05.16 //;// 03.04.17 //		LDA	>NKCGDTR,X
;// 03.05.16 //		STA	<WD2132R
;// 03.05.16 //		LDA	#01000000B
;// 03.05.16 //;// 03.04.17 //		LDA	>NKCGDTG,X
;// 03.05.16 //		STA	<WD2132G
;// 03.05.16 //		LDA	#10000000B
;// 03.05.16 //;// 03.04.17 //		LDA	>NKCGDTB,X
;// 03.05.16 //		STA	<WD2132B
;// 03.05.16 //	 RTL
; 
;
;
; 
;*********************************************************************
;*	 Ground nuki color set sub				     *
;*	 X -----  0:nuki  1:siro				     *
;*********************************************************************
NKCGST1		EQU	  $ 
		MEM16
		IDX16
		REP	  #00110000B
;
		LDX	#02669H
		LDA	<MPDTNO
		CMP	#00080H
		BCC	NKCS120		; spot ?
;					; yes
		LDA	<RMXYCT
		CMP	#00183H
		BEQ	NKCS110		; taki boss ?
;					; no
		CMP	#00182H
		BEQ	NKCS110		; taki ?
;					; no
		CMP	#00180H
		BNE	NKCS140		; mori-spot ?
;					; no
NKCS110		EQU	$
		LDX	#019C6H
		BRA	NKCS140
;
NKCS120		EQU	$
		LDX	#02669H
		LDA	<MPDTNO
		AND	#00040H
		BEQ	NKCS140		; omote ?
;					; no
		LDX	#02A32H
NKCS140		EQU	$
		TXA
		JMP	NKCST80
;// 03.05.30 //		STA	>CGRAM+000H
;// 03.05.30 //		STA	>CGRAM+020H
;// 03.05.30 //		STA	>CGRAM+040H
;// 03.05.30 //		STA	>CGRAM+060H
;// 03.05.30 //		STA	>CGRAM+080H
;// 03.05.30 //		STA	>CGRAM+0A0H
;// 03.05.30 //		STA	>CGRAM+0C0H
;// 03.05.30 //		STA	>CGRAM+0E0H
;// 03.05.30 //		STA	>CGRAM+100H
;// 03.05.30 //		STA	>CGRAM+120H
;// 03.05.30 //		STA	>CGRAM+140H
;// 03.05.30 //		STA	>CGRAM+160H
;// 03.05.30 //		STA	>CGRAM+180H
;// 03.05.30 //		STA	>CGRAM+1A0H
;// 03.05.30 //		STA	>CGRAM+1C0H
;// 03.05.30 //		STA	>CGRAM+1E0H
;// 03.05.30 //; 
;// 03.05.30 //		MEM8
;// 03.05.30 //		IDX8
;// 03.05.30 //		SEP	#00110000B
;// 03.05.30 //;
;// 03.05.30 //		LDA	#00100000B
;// 03.05.30 //		STA	<WD2132R
;// 03.05.30 //		LDA	#01000000B
;// 03.05.30 //		STA	<WD2132G
;// 03.05.30 //		LDA	#10000000B
;// 03.05.30 //		STA	<WD2132B
;// 03.05.30 //		RTL
;
;
;// 03.05.16 //		STX	<WORK0
;// 03.05.16 //	 LDY	  #0000FH
;// 03.05.16 //	 LDX	  #00000H
;// 03.05.16 //NKCS180  EQU	  $ 
;// 03.05.16 //		LDA	<WORK0
;// 03.05.16 //;// 03.04.17 //		LDA	#00000H
;// 03.05.16 //	 STA	  >CGRAM+000H,X
;// 03.05.16 //	 TXA
;// 03.05.16 //	 CLC
;// 03.05.16 //	 ADC	  #020H 
;// 03.05.16 //	 TAX
;// 03.05.16 //	 DEY
;// 03.05.16 //	 BPL	  NKCS180 
;// 03.05.16 //; 
;// 03.05.16 //	 MEM8 
;// 03.05.16 //	 IDX8 
;// 03.05.16 //	 SEP	  #00110000B
;// 03.05.16 //;
;// 03.05.16 //		LDA	#00100000B
;// 03.05.16 //;// 03.04.17 //		LDX	<WORK0
;// 03.05.16 //;// 03.04.17 //		LDA	>NKCGDTR,X
;// 03.05.16 //		STA	<WD2132R
;// 03.05.16 //		LDA	#01000000B
;// 03.05.16 //;// 03.04.17 //		LDA	>NKCGDTG,X
;// 03.05.16 //		STA	<WD2132G
;// 03.05.16 //		LDA	#10000000B
;// 03.05.16 //;// 03.04.17 //		LDA	>NKCGDTB,X
;// 03.05.16 //		STA	<WD2132B
;// 03.05.16 //	 RTL
;
;
;
;
;
;
; 
; 
		END
