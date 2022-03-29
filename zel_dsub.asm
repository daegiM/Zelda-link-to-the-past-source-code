;
		INCLUDE	zel_ram.asm
;
;--------------------------------------------------------------------
;
;		ZELDA-3			1991.09.17(TUE)
;
;--------------------------------------------------------------------
;
		ORG	18BC00H
;
;=============================================== (zel_dsub) ==========
		GLB	MPDP000,MPDP400,MPDP900,MPDPC00
		GLB	MAPWAKU
;=============================================== (zel_main) ==========
		EXT	BLANKING
;
;=============================================== (zel_comn) ==========
		EXT	LGTWPMV
;=====================================================================
;
		EXTEND
		MEM8
		IDX8
;
;=====================================================================
;
;
;
;---------------------------------------; fade in
MPDP400		EQU	$
		INC	<BLKFLG
		LDA	<BLKFLG
		CMP	#00FH
		BNE	MPDP440		; fade in end ?
;					; yes
		INC	!MAPDMD
MPDP440		EQU	$
		RTL
;
;
;
;
MPDP000		EQU	$
		DEC	<BLKFLG
		BNE	MPDP440		; fade out ?
;					; yes
		LDA	#00000011B
		STA	<MD2106		; mozaiku off
;
		LDA	<WD420C
		STA	>BKWD420C
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	<BLKFLG		; blanking on
		INC	!MAPDMD
;
		STZ	!MAPCFG
		LDA	#00100000B
		STA	<WD2132R
		LDA	#01000000B
		STA	<WD2132G
		LDA	#10000000B
		STA	<WD2132B	; R.G.B. color set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#00128H*2
		STA	!PCHPT0		; map PLAYER char. point
;// 03.06.05 //		LDX	#03EH
;// 03.06.05 //		LDA	#0FF00H
;// 03.06.05 //MPDP020		EQU	$
;// 03.06.05 //;// 03.05.29 //		STA	!HDMABF+000H,X
;// 03.06.05 //;// 03.05.29 //		STA	!HDMABF+040H,X
;// 03.06.05 //;// 03.05.29 //		STA	!HDMABF+080H,X
;// 03.06.05 //;// 03.05.29 //		STA	!HDMABF+0C0H,X
;// 03.06.05 //;// 03.05.29 //		STA	!HDMABF+100H,X
;// 03.06.05 //;// 03.05.29 //		STA	!HDMABF+140H,X
;// 03.06.05 //;// 03.05.29 //		STA	!HDMABF+180H,X
;// 03.06.05 //;
;// 03.06.05 //		LDA	>CGWORK+000H,X
;// 03.06.05 //		STA	>CGRAM+000H,X
;// 03.06.05 //		LDA	>CGWORK+040H,X
;// 03.06.05 //		STA	>CGRAM+040H,X
;// 03.06.05 //		LDA	>CGWORK+080H,X
;// 03.06.05 //		STA	>CGRAM+080H,X
;// 03.06.05 //		LDA	>CGWORK+0C0H,X
;// 03.06.05 //		STA	>CGRAM+0C0H,X
;// 03.06.05 //		LDA	>CGWORK+100H,X
;// 03.06.05 //		STA	>CGRAM+100H,X
;// 03.06.05 //		LDA	>CGWORK+140H,X
;// 03.06.05 //		STA	>CGRAM+140H,X
;// 03.06.05 //		LDA	>CGWORK+180H,X
;// 03.06.05 //		STA	>CGRAM+180H,X
;// 03.06.05 //		LDA	>CGWORK+1C0H,X
;// 03.06.05 //		STA	>CGRAM+1C0H,X
;// 03.06.05 //		DEX
;// 03.06.05 //		DEX
;// 03.06.05 //		BPL	MPDP020		; wipe clear end ?
;// 03.06.05 //;					; yes
		LDX	#07EH
MPDP020		EQU	$
		LDA	>CGWORK+000H,X
		STA	>CGBKUP+000H,X
		LDA	>CGWORK+080H,X
		STA	>CGBKUP+080H,X
		LDA	>CGWORK+100H,X
		STA	>CGBKUP+100H,X
		LDA	>CGWORK+180H,X
		STA	>CGBKUP+180H,X
		DEX
		DEX
		BPL	MPDP020		; CGWORK back-up end ?
;					; yes
		LDA	!YUREXD
		STA	>BKYRXD
		LDA	!YUREYD
		STA	>BKYRYD
		STZ	!YUREXD
		STZ	!YUREYD
;
		LDA	<SCCH1
		STA	>BKSCH1
		LDA	<SCCH2
		STA	>BKSCH2
		LDA	<SCCV1
		STA	>BKSCV1
		LDA	<SCCV2
		STA	>BKSCV2		; SCCH,V push
		STZ	<SCCH1
		STZ	<SCCH2
		STZ	<SCCH3
		STZ	<SCCV1
		STZ	<SCCV2
		STZ	<SCCV3		; SCCH,V clear
;
		LDA	<WD2130
		STA	>BKWD2130
		LDA	#02002H
		STA	<WD2130
;
;
		LDX	#000H
		LDA	#00300H
MPDP040		EQU	$
		STA	>MAPBUF+000H,X
		STA	>MAPBUF+100H,X
		STA	>MAPBUF+200H,X
		STA	>MAPBUF+300H,X
		STA	>MAPBUF+400H,X
		STA	>MAPBUF+500H,X
		STA	>MAPBUF+600H,X
		STA	>MAPBUF+700H,X
;
		STA	>MAPBUF+0800H,X
		STA	>MAPBUF+0900H,X
		STA	>MAPBUF+0A00H,X
		STA	>MAPBUF+0B00H,X
		STA	>MAPBUF+0C00H,X
		STA	>MAPBUF+0D00H,X
		STA	>MAPBUF+0E00H,X
		STA	>MAPBUF+0F00H,X
;
		DEX
		DEX
		BNE	MPDP040		; map-buffer clear end ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#010H
		STA	!SOUND3		; <sound3>
		LDA	#0F2H
		STA	!SOUND0		; <sound0>
		RTL
;
;
;
;---------------------------------------; fade out
MPDP900		EQU	$
		DEC	<BLKFLG
		BNE	MPDP980		; fade out ?
;					; yes
		JSL	>BLANKING	; blanking on & H-DMA disable
;// 03.09.17 //		LDA	#10000000B
;// 03.09.17 //		STA	2100H
;// 03.09.17 //		STA	<BLKFLG		; blanking on
		INC	!MAPDMD
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	>BKWD2130
		STA	<WD2130
;
		LDA	>BKSCH1
		STA	<SCCH1
		LDA	>BKSCH2
		STA	<SCCH2
		LDA	>BKSCV1
		STA	<SCCV1
		LDA	>BKSCV2
		STA	<SCCV2		; SCCH,V pull
		STZ	<SCCH3
		STZ	<SCCV3
;
		LDA	>BKYRXD
		STA	!YUREXD
		LDA	>BKYRYD
		STA	!YUREYD
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		INC	<CGVMAF
MPDP980		EQU	$
		RTL
;
;
;
;---------------------------------------; fade in
MPDPC00		EQU	$
		JSL	>LGTWPMV	; light wipe
;
		INC	<BLKFLG
		LDA	<BLKFLG
		CMP	#00FH
		BNE	MPDPC40		; fade in end ?
;					; yes
		LDA	!NXSLMD
		STA	<SLMODE
		STZ	<GAMEMD
		STZ	!MAPDMD
		STZ	<JRSBPT
		LDA	#00FH
		STA	<BLKFLG		; blanking off
;
		LDA	>BKWD420C
		STA	<WD420C
MPDPC40		EQU	$
		RTL
;
;
;--------------------------------------------------------
;-							-
;--------------------------------------------------------
MAPWAKU		EQU	$
		BYTE	060H,042H,000H,001H
		WORD	     02100H
		BYTE	060H,043H,040H,00EH
		WORD	     02101H
		BYTE	060H,04BH,000H,001H
		WORD	     06100H
		BYTE	060H,062H,0C0H,02EH
		WORD	     02110H
		BYTE	060H,06BH,0C0H,02EH
		WORD	     06110H
		BYTE	063H,062H,000H,001H
		WORD	     0A100H
		BYTE	063H,063H,040H,00EH
		WORD	     0A101H
		BYTE	063H,06BH,000H,001H
		WORD	     0E100H
;
		BYTE	060H,084H,000H,00BH
		WORD	     02102H,02103H,02104H,02105H,02106H
		WORD	     02107H
		BYTE	060H,0A4H,000H,00BH
		WORD	     02112H,02113H,02114H,02115H,02116H
		WORD	     02117H
;
		BYTE	060H,04EH,000H,001H
		WORD	     02100H
		BYTE	060H,04FH,040H,01AH
		WORD	     02101H
		BYTE	060H,05DH,000H,001H
		WORD	     06100H
		BYTE	060H,06EH,0C0H,02EH
		WORD	     02110H
		BYTE	060H,07DH,0C0H,02EH
		WORD	     06110H
		BYTE	063H,06EH,000H,001H
		WORD	     0A100H
		BYTE	063H,06FH,040H,01AH
		WORD	     0A101H
		BYTE	063H,07DH,000H,001H
		WORD	     0E100H
;
		BYTE	060H,000H,040H,07EH
		WORD	     02111H
		BYTE	063H,080H,041H,03EH
		WORD	     02111H
		BYTE	060H,000H,0C0H,03EH
		WORD	     02111H
		BYTE	060H,001H,0C0H,03EH
		WORD	     02111H
		BYTE	060H,00CH,0C0H,03EH
		WORD	     02111H
		BYTE	060H,00DH,0C0H,03EH
		WORD	     02111H
		BYTE	060H,01EH,0C0H,03EH
		WORD	     02111H
		BYTE	060H,01FH,0C0H,03EH
		WORD	     02111H
;
;------------ waku tensen --------------------
;
		BYTE	010H,091H,0C0H,012H
		WORD	     00B12H
		BYTE	010H,092H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	010H,0B3H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	010H,0D2H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	010H,0F3H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	011H,012H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	011H,033H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	011H,052H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	011H,073H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	011H,092H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	011H,0B3H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	011H,0D2H,040H,012H
		WORD	     00B06H
;
		BYTE	012H,011H,0C0H,012H
		WORD	     00B12H
		BYTE	012H,012H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	012H,033H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	012H,052H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	012H,073H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	012H,092H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	012H,0B3H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	012H,0D2H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	012H,0F3H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	013H,012H,000H,013H
		WORD	     00B06H,00B30H,00B06H,00B30H,00B06H,00B30H
		WORD	     00B06H,00B30H,00B06H,00B30H
		BYTE	013H,033H,000H,011H
		WORD	     00B12H,00B00H,00B12H,00B00H,00B12H,00B00H
		WORD	     00B12H,00B00H,00B12H
		BYTE	013H,052H,040H,012H
		WORD	     00B06H
;
		BYTE	0FFH
;
;
;
;
		END
;
