;
		INCLUDE	zel_ram.asm
;
;------------------------------------------------------------------------
;
;		ZELDA-3			1991.10.07(MON)
;
;------------------------------------------------------------------------
;
		ORG	1BB800H
;
;=============================================== (zel_grnd) =============
		GLB	GDHLDNCK,GDRCHK,CTDGCHK,GPULLCK,TTIWACK,TTIWACK1
		GLB	BOMBCHK,MKDRPLY,GDRW0400,GDINFCK
		GLB	KZBDERS,UGGILWT,KMWWST,PRMDHST
;
		GLB	gif1,gif2,gif3,gif4,gif5
;=============================================== (zel_main1) ============
		EXT	MD_title,MD_djint,MD_djply,MD_gdint,MD_gdply
		EXT	MD_evint,MD_evply
		EXT	MD_fdout,MD_fdin,MD_etcpl
		EXT	MD_wpout,MD_wpin
;=============================================== (zel_vma) ==============
		EXT	VT01
;=============================================== (zel_init) =============
		EXT	UT4RWT,UT4RWT
;
		EXT	p1_move,p1_scl0,p1_scl1,p1_bchg,p1_dopn,p1_sdop
		EXT	p1_stpc,p1_hldn,p1_mcng,p1_opyk,p1_bmbd
;
		EXT	p2_move,p2_atmv,p2_doet,p2_dext,p2_dwrt
		EXT	p2_fout,p2_fin1,p2_fot1,p2_fot2,p2_fot3
		EXT	p2_bgwt,p2_kage,p2_fot4,p2_kmww
;
		EXT	p3_sitm,p3_msge,p3_mapd,p3_life,p3_pray,p3_cgrs
		EXT	p3_wint
;
		EXT	ut4p02,ut4p07,ut4p0C
;=============================================== (zel_bgwt) =============
		EXT	DJHMCK,BWYRXD,BWYRYD
;=============================================== (zel_data0) ============
		EXT	BITCD0,GRDCDD
;=============================================== (zel_vma) ==============
		EXT	VT01
;=============================================== (zel_gsub) =============
		EXT	YTWRCCNG,KMKUICK
;=============================================== (zel_comn) =============
		EXT	K_I_CCNG,WD2132ST
;=============================================== (zel_play) =============
		EXT	DOKYDT,DOKXDT
;=============================================== (zel_exst) =============
		EXT	MESWIT,KNKMIT
;
		EXT	MS_0005,prnce,kajya,kajy1,bakud,mesmv,mesm1
;=============================================== (zel_bms1) =============
		EXT	KMKMIT
;=============================================== (zel_enmy) =============
		EXT	KUSAST
;=============================================== (zel_gnd1) =============
		EXT	GDMMSET
;=============================================== (zel_munt) =============
		EXT	MPUNIT
;
;
		EXT	grasut,turfut,turfu1,turfu2,turfu3
		EXT	turfu4,turfu5,turfu6,turfu7,turfu8,turfu9
		EXT	plgrs0,plgrs1,plisi0,plisi1,plknb0,plkui0
		EXT	plbiw0,plbiw1,plbiw2,plbiw3
		EXT	plbiw4,plbiw5,plbiw6,plbiw7
		EXT	plbiw8,plbiw9,plbiwA,plbiwB
;
;
		EXT	drut0,drut1
		EXT	drut2,drut3,drut4,drut5,drut6,drut7,drut8,drut9,drutA,drutB,drutC,drutD
		EXT	drutE,drutF
		EXT	dru10,dru11,dru12,dru13,dru14,dru15,dru16,dru17,dru18,dru19,dru1A,dru1B
;
		EXT	atsib0,atdig0,atkan0,atkus0,atkus1,atana0
		EXT	atisi0,atkui0,atbiw0,atbiw1,atbiw2,atbiw3,atbiw4,atbiw5,atbiw6,atbiw7
;
		EXT	hakut0,hakut1,hakut2,hakut3,hakut4,hakut5
		EXT	hakut6,hakut7,hakut8,hakut9
		EXT	warput
;
		EXT	umgtu0,umgtu1,umgtu2,umgtu3,umgtu4,umgtu5
		EXT	umgtu6,umgtu7,umgtu8,umgtu9,umgtuA,umgtuB,umgtuC
		EXT	umgt10,umgt11,umgt12,umgt13,umgt14,umgt15,umgt16,umgt17
;
		EXT	kzbdu0,kzbdu4
;
		EXT	hakut0,hakut1,hakut6,hakut7,hakut8,hakut9
		EXT	sgtu05,sgtu06,sgtu07,sgtu08,sgtu09,sgtu0A
;
		EXT	mizu00,mizu01,mizu02,mizu03,mizu04,mizu05,mizu06
		EXT	mizu07,mizu08,mizu09,mizu0A,mizu0B,mizu0C,mizu0D
		EXT	mizu0E,mizu0F,mizu10,mizu11,mizu12,mizu13,mizu14
		EXT	mizu15,mizu16,mizu17,mizu18,mizu19,mizu1A,mizu1B
		EXT	mizu1C,mizu1D,mizu1E,mizu1F,mizu20,mizu21,mizu22
		EXT	mizu23,mizu24,mizu25,mizu26
;
		EXT	umgtu0,umgtu1,umgtu2,umgtu3,umgtu4
		EXT	umgtu5,umgtu6,umgtu7,umgtu8,umgtu9
		EXT	umgt10,umgt11
;
		EXT	torid0,torid1,torid2,torid3,torid4
		EXT	torid5,torid6,torid7,torid8
;
		EXT	kzbdu0,kzbdu1,kzbdu2,kzbdu3,kzbdu4
;
		EXT	ushdu0,ushdu1,ushdu2,ushdu3,ushdu4,ushdu5,ushdu6
		EXT	ushdu7,ushdu8,ushdu9,ushduA,ushduB
;
		EXT	krkbu0,krkbu1,krkbu2,krkbu3,krkbu4,krkbu5,krkbu6
		EXT	krkbu7,krkbu8,krkbu9,krkbuA,krkbuB
;
		EXT	prmdu0,prmdu1,prmdu2,prmdu3,prmdu4,prmdu5,prmdu6,prmdu7,prmdu8
;
		EXT	numu00,numu01,numu02,numu03,numu04,numu05,numu06,numu07,numu08,numu09,numu0A,numu0B
		EXT	numu10,numu11,numu12,numu13,numu14,numu15,numu16,numu17
		EXT	numu18,numu19,numu1A,numu1B,numu1C,numu1D,numu1E,numu1F
		EXT	numu20,numu21,numu22,numu23,numu24,numu25,numu26,numu27,numu28,numu29
		EXT	numu2A,numu2B,numu2C,numu2D,numu2E,numu2F,numu30,numu31,numu32,numu33
;
		EXT	kamu10,kamu11,kamu12,kamu13,kamu14,kamu15,kamu16,kamu17
		EXT	kamu18,kamu19,kamu1A,kamu1B,kamu1C,kamu1D,kamu1E,kamu1F
;
		EXT	ytwu00,ytwu01,ytwu02,ytwu03,ytwu04,ytwu05,ytwu06,ytwu07
		EXT	ytwu08,ytwu09,ytwu0A,ytwu0B,ytwu0C,ytwu0D,ytwu0E,ytwu0F
		EXT	ytwu10,ytwu11,ytwu12,ytwu13,ytwu14,ytwu15,ytwu16,ytwu17
		EXT	ytwu18,ytwu19,ytwu1A,ytwu1B
;========================================================================
;
		EXTEND
		MEM8
		IDX8
;
;
;
;
;
;
;************************************************************************
;*		Ground Hole-down check			(GDHLDNCK)	*
;************************************************************************
HLGODD		EQU	$
		WORD	00CE0H,0124EH,012CEH,01162H
		WORD	011E2H,0073CH,007BCH,00CE0H
		WORD	0003CH,000BEH,0003EH,00388H
		WORD	00170H,003A4H,00424H,00518H
		WORD	0028AH,0020AH,00108H
; 
HLGODJ		EQU	$
		WORD	00040H,00040H,00040H,00040H
		WORD	00040H,00040H,00040H,00000H
		WORD	0005BH,0005BH,0005BH,00015H
		WORD	0001BH,00022H,00022H,00002H
		WORD	00018H,00018H,00014H
;
;// 03.08.28 //HLGDNO		EQU	$
;// 03.08.28 //		WORD	00097H,00098H,00098H,00099H
;// 03.08.28 //		WORD	00099H,0009AH,0009AH,0009BH
;// 03.08.28 //		WORD	0009EH,0009FH,0009FH,000A0H
;// 03.08.28 //		WORD	000A1H,000A1H,000A1H,00000H
;// 03.08.28 //		WORD	00000H,00000H,00000H,00000H
;
HLGDNO		EQU	$
		BYTE	076H,077H,077H,078H
		BYTE	078H,079H,079H,07AH
		BYTE	07BH,07BH,07BH,07CH
		BYTE	07DH,07EH,07EH,07FH
		BYTE	080H,080H,081H,082H
;
;
;// 03.09.30 //HLGDNO		EQU	$
;// 03.09.30 //		BYTE	097H,098H,098H,099H
;// 03.09.30 //		BYTE	099H,09AH,09AH,09BH
;// 03.09.30 //		BYTE	09CH,09CH,09CH,09DH
;// 03.09.30 //		BYTE	09EH,09FH,09FH,0A0H
;// 03.09.30 //		BYTE	0A1H,0A1H,0A2H,0A3H
;
GDHLDNCK	EQU	$
		PHB
		PHK
		PLB			; (DBR) set
;
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDA	<PLYPS1
		AND	#0FFF8H
		STA	<WORK0
		SEC
		SBC	!GCCKY0
		AND	!GCCKY1
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
;
		LDA	<PLXPS1
		AND	#0FFF8H
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2
		SEC
		SBC	!GCCKX0
		AND	!GCCKX1
		CLC
		ADC	<WORK6
		STA	<WORK0
;
		LDX	#HLGODJ-HLGODD-2
GHDC100		EQU	$
		LDA	<WORK0
		CMP	HLGODD,X
		BNE	GHDC120		;
;					;
		LDA	!GRNDNO
		CMP	HLGODJ,X
		BEQ	GHDC200		; ok ?
;					; no
GHDC120		EQU	$
		DEX
		DEX
		BPL	GHDC100		; check end ?
;					; yes	
;
		LDX	#HLGODJ-HLGODD	; (X) <-- special-room set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#000H
		STA	>GDTRPF		; omote set
GHDC200		EQU	$
;// 03.08.28 //		LDA	>HLGDNO,X
;// 03.08.28 //		STA	!GOPOSF
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		TXA
		LSR	A
		TAX
		LDA	HLGDNO,X
		STA	!GOPOSF
		STZ	!GOPOSF+1
;
		PLB			; (DBR) reset
		RTL
;
;
;
;
;
;************************************************************************
;*		Ground Door check			(GDRCHK)	*
;************************************************************************
DRCKD0		EQU	$		; door-in code check data-0
		WORD	000FEH
		WORD	000C5H,000FEH,00114H,00115H,00175H,00156H,000F5H,000E2H,001EFH
		WORD	00119H,000FEH,00172H,00177H,0013FH,00172H,00112H,00161H,00172H
		WORD	0014CH,00156H,001EFH,000FEH,000FEH,000FEH,0010BH,00173H,00143H
		WORD	00149H,00175H,00103H,00100H,001CCH,0015EH,00167H,00128H,00131H
		WORD	00112H,0016DH,00163H,00173H,000FEH,00113H,00177H
DRCKD1		EQU	$		;                        -1
		WORD	0014AH
		WORD	000C4H,0014FH,00115H,00114H,00174H,00155H,000F5H,000EEH,001EBH
		WORD	00118H,00146H,00171H,00155H,00137H,00174H,00173H,00121H,00164H
		WORD	00155H,00157H,00128H,00114H,00123H,00113H,00109H,00118H,00161H
		WORD	00149H,00117H,00174H,00101H,001CCH,00131H,00051H,0014EH,00131H
		WORD	00112H,0017AH,00163H,00172H,001BDH,00152H,00167H
DRCKDE		EQU	$
;
DRCKEN		EQU	DRCKDE-DRCKD1-2
;
;
GOTODN		EQU	$
		WORD	0002CH
;// 03.05.24 //		WORD	0001AH
		WORD	00013H,0001BH,0001BH,0001BH
;
		WORD	0000AH,00003H,0001EH,00030H,00030H,00030H,00030H,00018H
		WORD	00018H,00028H,00029H,00022H,00002H,00045H,00045H,00045H
		WORD	0004AH,0004AH,00045H,00045H,00005H,00005H,00005H,00005H
		WORD	00005H,00005H,00005H,00003H,00003H,00003H,0001BH,0007BH
		WORD	0005EH,00070H,00040H,00040H,00040H,00040H,00000H,00075H
		WORD	0000AH,00003H,00003H,00003H,0001BH,00003H,00058H,00047H
		WORD	0005BH,00043H,00015H,00018H,00045H,00045H
DJCHDT		EQU	$
		WORD	00000H,00074H,00018H,00018H,00018H,00043H,00018H,00018H,00018H
		WORD	0001EH,00018H,00058H,00058H,00029H,00018H,00018H,00016H
;// 03.05.24 //		WORD	00018H,00011H,0002CH,00029H,00029H,00018H,00018H,00016H,00037H
		WORD	00030H,0003BH,00005H,00005H,00032H,00014H,0006CH,00058H
		WORD	0002FH,00070H,00042H,00035H,00069H,00053H,00014H,0000FH
		WORD	00035H,0002EH,00070H,00058H,00018H,00070H,0005BH,00022H
		WORD	00011H,00051H,00029H,0005EH,0006FH,00077H,00037H,00034H
		WORD	0006EH,00045H,00056H,00043H,00030H,0003AH,00035H,00075H
		WORD	0005AH,00002H,0002BH,0006BH,0003AH,00013H,00037H,00077H
		WORD    00035H,00030H,00062H,00037H,00077H
;
;
;// 03.09.30 //		GOTODN		EQU	$
;// 03.09.30 //				WORD	0002CH
;// 03.09.30 //		;// 03.05.24 //		WORD	0001AH
;// 03.09.30 //				WORD	00013H,0001BH,0001BH,0001BH
;// 03.09.30 //		;
;// 03.09.30 //				WORD	0000AH,00003H,0001EH,00030H,00030H,00030H,00030H,00018H
;// 03.09.30 //				WORD	00018H,00028H,00029H,00022H,00002H,00045H,00045H,00045H
;// 03.09.30 //				WORD	0004AH,0004AH,00045H,00045H,00005H,00005H,00005H,00005H
;// 03.09.30 //				WORD	00005H,00005H,00005H,00003H,00003H,00003H,0001BH,0007BH
;// 03.09.30 //				WORD	0005EH,00070H,00040H,00040H,00040H,00040H,00000H,00075H
;// 03.09.30 //				WORD	0000AH,00003H,00003H,00003H,0001BH,00003H,00058H,00047H
;// 03.09.30 //				WORD	0005BH,00043H,00015H,00018H,00045H,00045H,00000H,00000H
;// 03.09.30 //				WORD	00000H,00000H,00000H,00000H,00000H,00000H,00000H,00000H
;// 03.09.30 //		DJCHDT		EQU	$
;// 03.09.30 //				WORD	00000H,00074H,00018H,00018H,00018H,00043H,00018H,00018H,00018H
;// 03.09.30 //				WORD	0001EH,00018H,00058H,00058H,00029H,00018H,00018H,00016H
;// 03.09.30 //		;// 03.05.24 //		WORD	00018H,00011H,0002CH,00029H,00029H,00018H,00018H,00016H,00037H
;// 03.09.30 //				WORD	00030H,0003BH,00005H,00005H,00032H,00014H,0006CH,00058H
;// 03.09.30 //				WORD	0002FH,00070H,00042H,00035H,00069H,00053H,00014H,0000FH
;// 03.09.30 //				WORD	00035H,0002EH,00070H,00058H,00018H,00070H,0005BH,00022H
;// 03.09.30 //				WORD	00011H,00051H,00029H,0005EH,0006FH,00077H,00037H,00034H
;// 03.09.30 //				WORD	0006EH,00045H,00056H,00043H,00030H,0003AH,00035H,00075H
;// 03.09.30 //				WORD	0005AH,00002H,0002BH,0006BH,0003AH,00013H,00037H,00077H
;// 03.09.30 //				WORD    00035H,00030H
;
GOTODD		EQU	$
		WORD	00796H
;// 03.05.24 //		WORD	00A28H
		WORD	001AAH,00124H,007BEH,00158H
;
		WORD	00634H,0178EH,0016AH,005A4H,00538H,00510H,001A4H,0054CH
		WORD	00554H,00B36H,00B06H,006A0H,003A8H,0126EH,007F6H,00B56H
		WORD	00634H,00336H,00E62H,00B6EH,01162H,00E62H,01058H,00B56H
		WORD	01274H,01B78H,007F6H,01128H,01238H,00CB8H,002BEH,0072EH
		WORD	001EAH,006A4H,0101CH,01248H,012DCH,00612H,012DCH,00E56H
		WORD	00336H,01108H,01DA4H,01450H,006D8H,003DEH,00DBEH,009A0H
		WORD	00D9CH,001DEH,00294H,00616H,00868H,001D8H
;
;			   0L    1ER     1L     1R     2L     17    3Ld    3Lu    3R
		WORD	000DEH,00330H,00D68H,00B18H,0144EH,01264H,01BD0H,018D0H,013E6H
;			   5L    1FR     6L     6R     7L     7R      8     9L 
		WORD	0099EH,01A36H,00B18H,01A36H,0038EH,01B8CH,014B0H,00A18H
;// 03.05.24 //		WORD	013E6H,0089EH,00796H,0061EH,0099AH,01B8CH,013ACH,00A18H,00212H
;			    A      B     CL     CR    1BL    1BR    1CL    1CR  
        	WORD	00964H,0072EH,00B6EH,0126EH,00906H,002A2H,00796H,00D68H
;			  1EL    15R     FL    12R     11     12L    13L    14L
		WORD	00934H,00636H,006AAH,001B2H,0092CH,002AAH,005B2H,0008CH
;			  15L    15R     DL     FL     19     14R    16R    21L
		WORD	00CD4H,00224H,00612H,013E6H,00540H,00964H,00DAEH,0039AH
;			 22L    22R     18R     1AR     EL     ER    20R    15R
		WORD	0089EH,0089EH,0092CH,00FB2H,00934H,00212H,00212H,00330H
;			 15R    12R      FL    15R      A    15R    22L     FL
		WORD	00224H,01274H,00A9AH,0178EH,00964H,0018CH,0060AH,0060AH
;			 10L    1FL     23L    23L    24L    24R    25L    25R   
		WORD	00A28H,0072AH,00330H,00330H,00A1EH,00506H,0040CH,0040CH
;			 26L    26R     27L    20L    15R
		WORD	0178CH,00358H,00D20H,00208H,00208H   
;
;
;// 03.09.30 //		GOTODD		EQU	$
;// 03.09.30 //				WORD	00796H
;// 03.09.30 //		;// 03.05.24 //		WORD	00A28H
;// 03.09.30 //				WORD	001AAH,00124H,007BEH,00158H
;// 03.09.30 //		;
;// 03.09.30 //				WORD	00634H,0178EH,0016AH,005A4H,00538H,00510H,001A4H,0054CH
;// 03.09.30 //				WORD	00554H,00B36H,00B06H,006A0H,003A8H,0126EH,007F6H,00B56H
;// 03.09.30 //				WORD	00634H,00336H,00E62H,00B6EH,01162H,00E62H,01058H,00B56H
;// 03.09.30 //				WORD	01274H,01B78H,007F6H,01128H,01238H,00CB8H,002BEH,0072EH
;// 03.09.30 //				WORD	001EAH,006A4H,0101CH,01248H,012DCH,00612H,012DCH,00E56H
;// 03.09.30 //				WORD	00336H,01108H,01DA4H,01450H,006D8H,003DEH,00DBEH,009A0H
;// 03.09.30 //				WORD	00D9CH,001DEH,00294H,00616H,00868H,001D8H,00000H,00000H
;// 03.09.30 //				WORD	00000H,00000H,00000H,00000H,00000H,00000H,00000H,00000H
;// 03.09.30 //		;
;// 03.09.30 //	;				   0L    1ER     1L     1R     2L     17    3Ld    3Lu    3R
;// 03.09.30 //					WORD	000DEH,00330H,00D68H,00B18H,0144EH,01264H,01BD0H,018D0H,013E6H
;// 03.09.30 //	;				   5L    1FR     6L     6R     7L     7R      8     9L 
;// 03.09.30 //			WORD	0099EH,01A36H,00B18H,01A36H,0038EH,01B8CH,014B0H,00A18H
;// 03.09.30 //		;// 03.05.24 //		WORD	013E6H,0089EH,00796H,0061EH,0099AH,01B8CH,013ACH,00A18H,00212H
;// 03.09.30 //	;				    A      B     CL     CR    1BL    1BR    1CL    1CR  
;// 03.09.30 //	       	 	WORD	00964H,0072EH,00B6EH,0126EH,00906H,002A2H,00796H,00D68H
;// 03.09.30 //	;				  1EL    15R     FL    12R     11     12L    13L    14L
;// 03.09.30 //				WORD	00934H,00636H,006AAH,001B2H,0092CH,002AAH,005B2H,0008CH
;// 03.09.30 //	;				  15L    15R     DL     FL     19     14R    16R    21L
;// 03.09.30 //				WORD	00CD4H,00224H,00612H,013E6H,00540H,00964H,00DAEH,0039AH
;// 03.09.30 //	;				 22L    22R     18R     1AR     EL     ER    20R    15R
;// 03.09.30 //				WORD	0089EH,0089EH,0092CH,00FB2H,00934H,00212H,00212H,00330H
;// 03.09.30 //	;				 15R    12R      FL    15R      A    15R    22L     FL
;// 03.09.30 //				WORD	00224H,01274H,00A9AH,0178EH,00964H,0018CH,0060AH,0060AH
;// 03.09.30 //	;				 10L    1FL     23L    23L    24L    24R    25L    25R   
;// 03.09.30 //				WORD	00A28H,0072AH,00330H,00330H,00A1EH,00506H,0040CH,0040CH
;// 03.09.30 //	;				 26L    26R
;// 03.09.30 //				WORD	0178CH,00358H      
;
GOTODJ		EQU	$		; goto danjyon no. (IIT1000 no pointer)
		BYTE	001H
		BYTE	002H,003H,004H,005H
;
		BYTE	006H,007H,008H,009H,00AH,00BH,00CH,00DH
		BYTE	00EH,00FH,010H,011H,012H,013H,014H,015H
		BYTE	016H,017H,018H,019H,01AH,01BH,01CH,01DH
		BYTE	01EH,01FH,020H,021H,022H,023H,024H,025H
		BYTE	026H,027H,028H,029H,02AH,02BH,02CH,02DH
		BYTE	02EH,02FH,030H,031H,032H,033H,034H,035H
		BYTE	036H,037H,038H,039H,03AH,03BH
;
;			 0L  1ER   1L   1R   2L   17  3Ld  3Lu 
		BYTE	03CH,03DH,03EH,03FH,040H,041H,042H,043H
;			 3R   5L  1FR   6L   6R   7L   7R    8 
		BYTE	044H,045H,046H,047H,048H,049H,04AH,04BH
;			 9L    A    B   CL   CR   1BL  1BR  1CL 
		BYTE	04CH,04DH,04EH,04FH,050H,051H,052H,053H
;			 1CR  1EL  15R  FL  12R   11  12L  13L  
		BYTE	054H,055H,05EH,060H,058H,059H,05AH,05BH
;			 14L  15L  15R  DL   FL   19  14R  16R
		BYTE	05CH,05DH,05EH,05FH,060H,061H,062H,063H
;			 21L  22L  22R  18R  1AR  EL   ER  20R
		BYTE	064H,065H,066H,067H,068H,069H,06AH,056H
;			 15R  15R  12R  FL   15R   A   15R  22L
		BYTE	05EH,05EH,058H,060H,05EH,04DH,05EH,065H
;			 FL   10L  1FL  26L  26L  24L  24R  25L    
		BYTE	060H,057H,06BH,071H,071H,06DH,06EH,06FH
;			 25R  23L  26R  27L  20L  15R
		BYTE	070H,06CH,072H,083H,084H,05EH   
;
;
;// 03.09.30 //		GOTODJ		EQU	$		; goto danjyon no. (IIT1000 no pointer)
;// 03.09.30 //				BYTE	001H
;// 03.09.30 //				BYTE	002H,003H,004H,005H
;// 03.09.30 //		;
;// 03.09.30 //				BYTE	006H,007H,008H,009H,00AH,00BH,00CH,00DH
;// 03.09.30 //				BYTE	00EH,00FH,010H,011H,012H,013H,014H,015H
;// 03.09.30 //				BYTE	016H,017H,018H,019H,01AH,01BH,01CH,01DH
;// 03.09.30 //				BYTE	01EH,01FH,020H,021H,022H,023H,024H,025H
;// 03.09.30 //				BYTE	026H,027H,028H,029H,02AH,02BH,02CH,02DH
;// 03.09.30 //				BYTE	02EH,02FH,030H,031H,032H,033H,034H,035H
;// 03.09.30 //				BYTE	036H,037H,038H,039H,03AH,03BH,000H,000H
;// 03.09.30 //				BYTE	000H,000H,000H,000H,000H,000H,000H,000H
;// 03.09.30 //		;
;// 03.09.30 //		;			 0L  1ER   1L   1R   2L   17  3Ld  3Lu 
;// 03.09.30 //				BYTE	046H,047H,048H,049H,04AH,04BH,04CH,04DH
;// 03.09.30 //		;			 3R   5L  1FR   6L   6R   7L   7R    8 
;// 03.09.30 //				BYTE	04EH,04FH,050H,051H,052H,053H,054H,055H
;// 03.09.30 //		;			 9L    A    B   CL   CR   1BL  1BR  1CL 
;// 03.09.30 //				BYTE	056H,057H,058H,059H,05AH,05BH,05CH,05DH
;// 03.09.30 //		;			 1CR  1EL  15R  FL  12R   11  12L  13L  
;// 03.09.30 //				BYTE	05EH,05FH,068H,06AH,062H,063H,064H,065H
;// 03.09.30 //		;			 14L  15L  15R  DL   FL   19  14R  16R
;// 03.09.30 //				BYTE	066H,067H,068H,069H,06AH,06BH,06CH,06DH
;// 03.09.30 //		;			 21L  22L  22R  18R   1AR  EL   ER 20R
;// 03.09.30 //				BYTE	06EH,06FH,070H,071H,072H,073H,074H,060H
;// 03.09.30 //		;			 15R  15R  12R  FL   15R   A   15R  22L
;// 03.09.30 //				BYTE	068H,068H,062H,06AH,068H,057H,068H,06FH
;// 03.09.30 //		;			 FL   10L  1FL  26L  26L  24L  24R  25L    
;// 03.09.30 //				BYTE	06AH,061H,075H,07BH,07BH,077H,078H,079H
;// 03.09.30 //		;			 25R  23L  26R
;// 03.09.30 //				BYTE	07AH,076H,07CH     
;
;
GOTODP		EQU	GOTODD-GOTODN
;
;
GDRCHK		EQU	$
		MEM16
		IDX16
		REP	#00110001B	; memory,index 16bit mode & CLC
;
		LDA	<PLYPS1
		CLC
		ADC	#00007H
		STA	<WORK0
		SEC
		SBC	!GCCKY0
		AND	!GCCKY1
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
;
		LDA	<PLXPS1
		LSR	A
		LSR	A
		LSR	A
		STA	<WORK2
		SEC
		SBC	!GCCKX0
		AND	!GCCKX1
		CLC
		ADC	<WORK6
		TAY
		TAX
		LDA	>GDBUF0,X
		ASL	A
		ASL	A
		ASL	A
		TAX
		LDA	<PLMKCH
		AND	#000FFH
		BNE	GDRC190		; player muki = up ?
;					; yes
		LDA	>MPUNIT+2,X
		AND	#041FFH
		CMP	#000E9H
		BEQ	GDRC100		; door ?
;					; no
		CMP	#00149H
		BEQ	GDRC220		; (chapel)door ?
;					; no
		CMP	#00169H
		BEQ	GDRC220		; (shiro)door ?
;					; no
		TYX			; (X) <-- (Y)
		LDA	>GDBUF0+2,X
		ASL	A
		ASL	A
		ASL	A
		TAX
		LDA	>MPUNIT+0,X
		AND	#041FFH
		CMP	#04149H
		BEQ	GDRC200		; (chapel)door ?
;					; no
		CMP	#04169H
		BEQ	GDRC200		; (shiro)door ?
;					; no
		CMP	#040E9H
		BNE	GDRC400		; door ?
;					; no
		DEY
		DEY
GDRC100		EQU	$
		TYX
		LDA	#drut0		; minka door open
		JSL	>GDRWRT00Z	; Vramd data set
;
		LDA	#drut1
		STA	>GDBUF0+2,X
		LDY	#00002H
		JSL	>GDRWRT01	; Vramd data set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#015H
		STA	!SOUND3
;
		LDA	#VT01
		STA	<VRFLG
		RTL
;
GDRC190		EQU	$
		BRA	GDRC400
;
;
		MEM16
		IDX16
GDRC200		EQU	$
		DEY
		DEY
GDRC220		EQU	$
		STZ	!DOPCNO
		AND	#003FFH
		CMP	#00169H
		BNE	GDRC230		; (shiro) door ?
;					; yes
		LDA	>MODTBL0
		AND	#0000FH
		CMP	#00003H
		BCS	GDRC400		; kou-han ?
;					; no
		LDA	#00018H
		STA	!DOPCNO
GDRC230		EQU	$
		TYA			; (chapel,shiro) door open
		SEC
		SBC	#00080H
		STA	!GDRBF1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#015H
		STA	!SOUND3		; <sound3>
;
		STZ	<JRSBPT
		STZ	!DOPNCT
;// 03.03.13 //		STZ	!DOPCNO
		LDA	#p2_dwrt
		STA	<GAMEMD
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
		MEM16
GDRC400		EQU	$
		LDA	>MPUNIT+4,X
		AND	#001FFH
		STA	<WORK0
		LDA	>MPUNIT+6,X
		AND	#001FFH
		STA	<WORK2
;
		LDX	#DRCKEN
GDRC420		EQU	$
		LDA	<WORK0
		CMP	>DRCKD0,X
		BNE	GDRC440		; door in ?
;					; no
		LDA	<WORK2
		CMP	>DRCKD1,X
		BEQ	GDRC500		; door in ?
;					; no
GDRC440		EQU	$
		DEX
		DEX
		BPL	GDRC420		; check end ?
;					; yes
		STZ	!OPDRCFG
GDRC460		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
GDRC480		EQU	$
		LDA	!OPDRCFG
		BNE	GDRC460		;
;					;
		INC	!OPDRCFG
		LDA	#MS_0005
		STA	!MSGENOL
;
		SEP	#00110000B	; memory,index 8bit mode
;
		JMP	>MESWIT		; message init.
;
;
;
GDRC500		EQU	$
		TYA
		STA	<WORK0
		LDX	#GOTODP
GDRC520		EQU	$
		LDA	<WORK0
GDRC540		EQU	$
		DEX
		DEX
		BMI	GDRC580		; check end ?
;					; yes
		CMP	>GOTODD,X
		BNE	GDRC540		;
;					;
		LDA	!GRNDNO
		CMP	>GOTODN,X
		BNE	GDRC520		; ok ?
;					; yes
		LDA	>OPKYFG
		AND	#000FFH
		BNE	GDRC560		; danjyon in ok ?
;					; yes
		LDA	!ATMTHK
		AND	#000FFH
		CMP	#00001H
		BEQ	GDRC480		; player tori-catch ?
;					; no
		LDA	>OPMODE
		AND	#000FFH
		BEQ	GDRC560		; option on ?
;					; yes
		CMP	#mesmv
		BEQ	GDRC560		; message ?
;					; no
		CMP	#mesm1
		BEQ	GDRC560		; message ?
;					; no
		CMP	#prnce
		BEQ	GDRC560		; prince ?
;					; no
		CMP	#kajy1
		BEQ	GDRC550		; ura-kajiya ?
;					; yes
		CMP	#kajya
		BNE	GDRC480		; kajiya ?
;					; yes
GDRC550		EQU	$
		CPX	#DJCHDT-GOTODN
		BCC	GDRC480		; danjyon ?
;					; no
GDRC560		EQU	$
		TXA
		LSR	A
		TAX
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	>GOTODJ,X
		STA	!GOPOSF
;
		STZ	<DIEFG
		STZ	<HANEFG
;
		LDA	#MD_wpout
		STA	<SLMODE
		LDA	#MD_djint
		STA	!NXSLMD
		STZ	<GAMEMD
		STZ	<JRSBPT
;
;// 02.08.16 //		LDA	!CHARBK
;// 02.08.16 //		STA	>CHBKRM
;// 02.08.16 //		LDA	!CHIKNO
;// 02.08.16 //		STA	>CHNORM
;// 02.08.16 //		LDA	!RBGCPT
;// 02.08.16 //		STA	>RBGPRM
;// 02.08.16 //		LDA	!ROBJCPT
;// 02.08.16 //		STA	>ROJPRM		;
;// 02.08.17 //		INC	!GDATFG
GDRC580		EQU	$
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
;
;
;
;
;************************************************************************
;*		Ground cut&dig check			(CTDGCHK)	*
;*		[in]	work0,1 <-- y-pos.				*
;*			work2,3 <-- x-pos.				*
;************************************************************************
CTDGCHK		EQU	$
		LDA	<GMMODE
		BEQ	CTDGC00		; danjyon ?
;					; no
		JMP	>DJHMCK		; danjyon hammer check
;
;
CTDGC00		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	!OKRNFLG
		STZ	<BMWORK+4
;// 02.11.22 //		LDA	<WORK0
;// 02.11.22 //		AND	#00F00H
;// 02.11.22 //		ASL	A
;// 02.11.22 //		XBA
;// 02.11.22 //		TAX
;// 02.11.22 //		LDA	<WORK0
;// 02.11.22 //		SEC
;// 02.11.22 //		SBC	>PREPD0,X
;// 02.11.22 //		AND	#0FFF0H
;// 02.11.22 //		ASL	A
;// 02.11.22 //;// 02.11.13 //		STA	<WORK6
;// 02.11.22 //		ASL	A
;// 02.11.22 //		ASL	A
;// 02.11.22 //;// 02.11.13 //		SEC
;// 02.11.22 //;// 02.11.13 //		SBC	<WORK6
;// 02.11.22 //		STA	<WORK6
;// 02.11.22 //;
;// 02.11.22 //;// 02.10.01 //		LDA	<WORK0
;// 02.11.22 //;// 02.10.01 //		AND	#001E0H
;// 02.11.22 //;// 02.10.01 //		LSR	A
;// 02.11.22 //;// 02.10.01 //		LSR	A
;// 02.11.22 //;// 02.10.01 //		LSR	A
;// 02.11.22 //;// 02.10.01 //		LSR	A
;// 02.11.22 //;// 02.10.01 //		TAX
;// 02.11.22 //;// 02.10.01 //		LDA	<WORK0
;// 02.11.22 //;// 02.10.01 //		SEC
;// 02.11.22 //;// 02.10.01 //		SBC	>PREPDT,X
;// 02.11.22 //;// 02.10.01 //		AND	#0FFFEH
;// 02.11.22 //;// 02.10.01 //		ASL	A
;// 02.11.22 //;// 02.10.01 //		ASL	A
;// 02.11.22 //;// 02.10.01 //		ASL	A
;// 02.11.22 //;// 02.10.01 //		ASL	A
;// 02.11.22 //;// 02.10.01 //		STA	<WORK6
;// 02.11.22 //;// 02.10.01 //		ASL	A
;// 02.11.22 //;// 02.10.01 //		ASL	A
;// 02.11.22 //;// 02.10.01 //		SEC
;// 02.11.22 //;// 02.10.01 //		SBC	<WORK6
;// 02.11.22 //;// 02.10.01 //		STA	<WORK6
;// 02.11.22 //;// 02.10.01 //;
		LDA	<WORK0
		SEC
		SBC	!GCCKY0
		AND	!GCCKY1
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
;
;// 02.11.22 //		LDA	<WORK2
;// 02.11.22 //		AND	#001E0H
;// 02.11.22 //		LSR	A
;// 02.11.22 //		LSR	A
;// 02.11.22 //		LSR	A
;// 02.11.22 //		LSR	A
;// 02.11.22 //		TAX
;// 02.11.22 //		LDA	<WORK2
;// 02.11.22 //		SEC
;// 02.11.22 //		SBC	>PREPDT,X
;// 02.11.22 //		AND	#0FFFEH
;// 02.11.22 //		CLC
;// 02.11.22 //		ADC	<WORK6
		LDA	<WORK2
		SEC
		SBC	!GCCKX0
		AND	!GCCKX1
		CLC
		ADC	<WORK6
;// 02.12.11 //		CMP	#01000H
;// 02.12.11 //;// 02.11.13 //		CMP	#00900H
;// 02.12.11 //		BCC	CTDGC40		; buffer-0 ?
;// 02.12.11 //;					; no
;// 02.12.11 //;;;;;;;;		SEC
;// 02.12.11 //		SBC	#01000H
;// 02.12.11 //;// 02.11.13 //		SBC	#00900H
;// 02.12.11 //		ORA	#02000H
;// 02.12.11 //CTDGC40		EQU	$
		TAX
		LDA	!AITMBT
		AND	#00002H
		BNE	CTDGC60		; tonkachi ?
;					; no
		LDA	!AITMBT
		AND	#00040H
;// 03.09.18 //		BNE	CTDGC50		; kona ?
;// 03.09.18 //;					; no
		BEQ	CTDGC30		; kona ?
;					; yes
		LDA	>GDBUF0,X
		PHA			; (A) push
;
		LDY	#00002H
		CMP	#plgrs0
		BEQ	CTDGC55		; pull grass ?
;					; no
		LDY	#00004H
		CMP	#plgrs1
		BNE	CTDGC77		; pull kusa ?
;					; yes
CTDGC55		EQU	$
		JMP	CTDGC120
;
CTDGC60		EQU	$
		LDA	>GDBUF0,X
		PHA			; (A) push
		CMP	#plkui0
		BNE	CTDGC70		; kui ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#011H
		STA	!SOUND2		; <sound2>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		JSL	>KMKUICK	; kame-iwa kui check
;
		LDA	#atkui0
		JMP	CTDGC240
;
CTDGC70		EQU	$
		JSR	HMSNDCK		; hummer sound check
CTDGC77		EQU	$
		JMP	CTDGC600
;
;
CTDGC30		EQU	$
		LDA	>GDBUF0,X
		PHA			; (A) push
;
;// 03.09.17 //		CMP	#atsib0
;// 03.09.17 //		BEQ	CTDGC80		; cut turf ?
;// 03.09.17 //;					; no
;// 03.09.17 //		CMP	#atkan0
;// 03.09.17 //		BEQ	CTDGC80		; pull ato(kanban) ?
;// 03.09.17 //;					; no
;// 03.09.17 //		CMP	#atkus0
;// 03.09.17 //		BEQ	CTDGC80		; pull ato(grass) ?
;// 03.09.17 //;					; no
;// 03.09.17 //		CMP	#atisi0
;// 03.09.17 //		BEQ	CTDGC80		; pull ato(stone) ?
;// 03.09.17 //;					; no
;// 03.09.17 //		CMP	#atkus1
;// 03.09.17 //		BEQ	CTDGC80		; pull ato(grass-1) ?
;// 03.09.17 //;					; no
		CMP	#turfut
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu1
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu2
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu3
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu4
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu5
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu6
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu7
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu8
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#turfu9
		BEQ	CTDGC80		; turf ?
;					; yes
		CMP	#grasut
		BEQ	CTDGC100	; grass ?
;					; no
		LDY	#00002H
		CMP	#plgrs0
		BEQ	CTDGC120	; pull grass ?
;					; no
		LDY	#00004H
		CMP	#plgrs1
		BEQ	CTDGC120	; pull kusa ?
;					; no
CTDGC40		EQU	$
		JMP	CTDGC600
;
;
;
CTDGC80		EQU	$
;// 03.07.26 //		LDA	<KENKY
;// 03.07.26 //		AND	#0000000001000000B
;// 03.07.26 //		BEQ	CTDGC40		; dig ?
;// 03.07.26 //;					; yes
		LDA	!AITMBT1
		AND	#000FFH
		CMP	#00001H
		BNE	CTDGC40		; dig ?
;					; yes
		LDA	<MPDTNO
		CMP	#0002AH
		BNE	CTDGC90		; okarina room ?
;					; yes
		CPX	#00492H
		BNE	CTDGC90		; position ok ?
;					; yes
		STX	!OKRNFLG
CTDGC90		EQU	$
		LDY	#atdig0
		BRA	CTDGC200
;
;
CTDGC100	EQU	$
;// 03.07.26 //		LDA	<KENKY
;// 03.07.26 //		AND	#0000000001000000B
;// 03.07.26 //		BEQ	CTDGC110	; dig ?
;// 03.07.26 //;					; yes
		LDA	!AITMBT1
		AND	#000FFH
		CMP	#00001H
		BNE	CTDGC110	; dig ?
;					; yes
		JMP	CTDGC600
;
CTDGC110	EQU	$
		LDA	<WORK2
		ASL	A
		ASL	A
		ASL	A
		SEC
		SBC	#00008H
		PHA			; (A) push
		LDA	<WORK0
		SEC
		SBC	#00008H
		AND	#0FFF8H
		STA	<BMWORK+2	; (work2) <-- y-pos.
		PLA			; (A) pull
		STA	<BMWORK+0	; (work0) <-- x-pos.
;
;// 03.04.30 //		PHX			; (X) push
;// 03.04.30 //;
;// 03.04.30 //		MEM8
;// 03.04.30 //		IDX8
;// 03.04.30 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.04.30 //;
;// 03.04.30 //		LDA	#003H
;// 03.04.30 //		JSL	>KUSAST		
;// 03.04.30 //;
;// 03.04.30 //		MEM16
;// 03.04.30 //		IDX16
;// 03.04.30 //		REP	#00110000B	; memory,index 16bit mode
;// 03.04.30 //;
;// 03.04.30 //		PLX			; (X) pull
		LDA	#00003H
		STA	<BMWORK+4
;
		LDY	#atsib0
		BRA	CTDGC200
;
CTDGC120	EQU	$
;// 03.07.26 //		LDA	<KENKY
;// 03.07.26 //		AND	#0000000001000000B
;// 03.07.26 //		BNE	CTDGC400	; dig ?
;// 03.07.26 //;					; no
		LDA	!AITMBT1
		AND	#000FFH
		CMP	#00001H
		BEQ	CTDGC400	; dig ?
;					; yes
		LDA	<WORK2
		AND	#0FFFEH
		ASL	A
		ASL	A
		ASL	A
		PHA			; (A) push
		LDA	<WORK0
		AND	#0FFF0H
		STA	<BMWORK+2	; (work2) <-- y-pos.
		PLA			; (A) pull
		STA	<BMWORK+0	; (work0) <-- x-pos.
;
;// 03.04.30 //		PHX			; (X) push
;// 03.04.30 //;
;// 03.04.30 //		MEM8
;// 03.04.30 //		IDX8
;// 03.04.30 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.04.30 //;
;// 03.04.30 //		TYA
;// 03.04.30 //		JSL	>KUSAST		
;// 03.04.30 //;
;// 03.04.30 //		MEM16
;// 03.04.30 //		IDX16
;// 03.04.30 //		REP	#00110000B	; memory,index 16bit mode
;// 03.04.30 //;
;// 03.04.30 //		PLX			; (X) pull
		STY	<BMWORK+4
;		
		PLA			; (A) pull
		PHA			; (A) push
		LDY	#atkus0
		CMP	#plgrs1
		BNE	CTDGC200	; pull grass-1 ?
;					; yes
		LDY	#atkus1
CTDGC200	EQU	$
		STY	<WORKE
;
		JSR	PONTCHK		; point check
		BCS	CTDGC240	;
;					;
		LDA	<WORKE
CTDGC240	EQU	$
		STA	>GDBUF0,X
		JSL	>GDMMSET	; ground memory set
;
		JSL	>GDRWRT00Z1	; Vramd data set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
;// 02.11.22 //		MEM8
;// 02.11.22 //		SEP	#00100000B	; memory 8bit mode
;// 02.11.22 //;
;// 02.11.22 //;// 02.08.17 //		LDA	#008H
;// 02.11.22 //		LDA	#p2_rwt0
;// 02.11.22 //		STA	<GAMEMD
;// 02.11.22 //;// 02.08.27 //		LDA	#001H
;// 02.11.22 //;// 02.08.27 //		STA	!SCRLFG		; BG. rewrite
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		PLA			; (A) pull
		BRA	CTDGC500
;
CTDGC400	EQU	$
		PLA			; (A) pull
;
		LDA	>GDBUF0,X
CTDGC500	EQU	$
		ASL	A
		ASL	A
		STA	<WORK6
;
;// 02.10.01 //		LDA	<WORK0
;// 02.10.01 //		AND	#00001H
;// 02.10.01 //		ASL	A
;// 02.10.01 //;
		LDA	<WORK0
		AND	#00008H
		LSR	A
		LSR	A
		TSB	<WORK6
		LDA	<WORK2
		AND	#00001H
		ORA	<WORK6
		ASL	A
		TAX
		LDA	>MPUNIT,X
		AND	#001FFH
		TAX
		LDA	>GRDCDD,X	; (A) <-- return code
;
		PHA			; (A) push
;
		LDA	<BMWORK+0
		STA	<WORK0
		LDA	<BMWORK+2
		STA	<WORK2
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<BMWORK+4
		BEQ	CTDGC540	; cut on ?
;					; yes
		JSL	>KUSAST
		JSL	>KNKMIT		; kona kemuri init.
CTDGC540	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
CTDGC600	EQU	$
		PLA			; (A) pull
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
		MEM16
		IDX16
HMSNDCK		EQU	$
		ASL	A
		ASL	A
		ASL	A
		TAX
		LDA	>MPUNIT,X
		AND	#001FFH
		TAX
		LDA	>GRDCDD,X
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		CMP	#050H
		BCC	HMSND80		; sound check ?
;					; yes
		LDY	#01AH
		CMP	#052H
		BCC	HMSND40		; mochiage-kusa ?
;					; no
		LDY	#011H
		CMP	#054H
		BEQ	HMSND40		; mochiage-kanban ?
;					; no
		LDY	#005H
		CMP	#058H
		BCS	HMSND80		; mochiage-iwa & big-iwa & taiatari-iwa ?
;					; yes
HMSND40		EQU	$
		STY	!SOUND2		; <sound2>
HMSND80		EQU	$
		REP	#00110000B	; memory,index 16bit mode
		RTS
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Pull check				(GPULLCK)	*
;************************************************************************
;// 03.09.18 //GPULYPD		EQU	$
;// 03.09.18 //		WORD	0FFFCH,00024H,0000CH,0000CH
;// 03.09.18 //GPULXPD		EQU	$
;// 03.09.18 //		WORD	00007H,00007H,0FFF0H,00010H
;// 03.09.18 //;
BIWRPD0		EQU	$
		WORD	000H-00000H,000H-00002H,000H-00080H,000H-00082H
BIWRPD1		EQU	$
		WORD	000H-00000H,000H-00000H,000H-00080H,000H-00080H
BIWRPD2		EQU	$
		WORD	000H-00000H,000H-00002H,000H-00000H,000H-00002H
;
;
		MEM16
		IDX16
ADRGET		EQU	$
		LDA	<PLMKCH
		AND	#000FFH
		TAX
		LDA	<PLYPS1
		CLC
;// 03.09.18 //		ADC	>GPULYPD,X
		ADC	>DOKYDT,X
		AND	#0FFF0H
		STA	<WORK0
;// 03.09.21 //		PHA			; (A) push
		SEC
		SBC	!GCCKY0
		AND	!GCCKY1
		ASL	A
		ASL	A
		ASL	A
		STA	<WORK6
;
		LDA	<PLXPS1
		CLC
;// 03.09.18 //		ADC	>GPULXPD,X
		ADC	>DOKXDT,X
		AND	#0FFF0H
		STA	<WORK2
;// 03.09.21 //		PHA			; (A) push
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	!GCCKX0
		AND	!GCCKX1
		CLC
		ADC	<WORK6
		TAX
		RTS
;
;
;
;
GPULLCK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.09.21 //		LDA	<PLMKCH
;// 03.09.21 //		AND	#000FFH
;// 03.09.21 //		TAX
;// 03.09.21 //		LDA	<PLYPS1
;// 03.09.21 //		CLC
;// 03.09.21 //;// 03.09.18 //		ADC	>GPULYPD,X
;// 03.09.21 //		ADC	>DOKYDT,X
;// 03.09.21 //		AND	#0FFF0H
;// 03.09.21 //		STA	<WORK0
;// 03.09.21 //		PHA			; (A) push
;// 03.09.21 //		SEC
;// 03.09.21 //		SBC	!GCCKY0
;// 03.09.21 //		AND	!GCCKY1
;// 03.09.21 //		ASL	A
;// 03.09.21 //		ASL	A
;// 03.09.21 //		ASL	A
;// 03.09.21 //		STA	<WORK6
;// 03.09.21 //;
;// 03.09.21 //		LDA	<PLXPS1
;// 03.09.21 //		CLC
;// 03.09.21 //;// 03.09.18 //		ADC	>GPULXPD,X
;// 03.09.21 //		ADC	>DOKXDT,X
;// 03.09.21 //		AND	#0FFF0H
;// 03.09.21 //		STA	<WORK2
;// 03.09.21 //		PHA			; (A) push
;// 03.09.21 //		LSR	A
;// 03.09.21 //		LSR	A
;// 03.09.21 //		LSR	A
;// 03.09.21 //		SEC
;// 03.09.21 //		SBC	!GCCKX0
;// 03.09.21 //		AND	!GCCKX1
;// 03.09.21 //		CLC
;// 03.09.21 //		ADC	<WORK6
;// 03.09.21 //;// 02.12.11 //		CMP	#01000H
;// 03.09.21 //;// 02.12.11 //		BCC	GPULC40		; buffer-0 ?
;// 03.09.21 //;// 02.12.11 //;					; no
;// 03.09.21 //;// 02.12.11 //;;;;;;;;		SEC
;// 03.09.21 //;// 02.12.11 //		SBC	#01000H
;// 03.09.21 //;// 02.12.11 //		ORA	#02000H
;// 03.09.21 //;// 02.12.11 //GPULC40		EQU	$
;// 03.09.21 //		TAX
		JSR	ADRGET
		LDA	<WORK0
		PHA			; (A) push
		LDA	<WORK2
		PHA			; (A) push
		LDA	>GDBUF0,X
		LDY	#00000H
		CMP	#plbiw0
		BEQ	GPULC60		; pull big-iwa ?
;					; no
		INY
		CMP	#plbiw1
		BEQ	GPULC60		; pull big-iwa ?
;					; no
		INY
		CMP	#plbiw2
		BEQ	GPULC60		; pull big-iwa ?
;					; no
		INY
		CMP	#plbiw3
		BEQ	GPULC60		; pull big-iwa ?
;					; yes
		LDY	#00000H
		CMP	#plbiw4
		BEQ	GPULC60		; pull big-iwa ?
;					; no
		INY
		CMP	#plbiw5
		BEQ	GPULC60		; pull big-iwa ?
;					; no
		INY
		CMP	#plbiw6
		BEQ	GPULC60		; pull big-iwa ?
;					; no
		CMP	#plbiw7
		BNE	GPULC70		; pull big-iwa ?
;					; yes
		INY
GPULC60		EQU	$
		JMP	TTIWC20
;// 03.09.21 //		STY	<WORKC
;// 03.09.21 //		PHA			; (A) push
;// 03.09.21 //;
;// 03.09.21 //		PHX			; (X) push
;// 03.09.21 //;
;// 03.09.21 //		LDA	#ut4p02
;// 03.09.21 //		STA	!DOPCNO
;// 03.09.21 //		STZ	<WORKE
;// 03.09.21 //		JSR	PONTCHK
;// 03.09.21 //		LDA	<WORKE
;// 03.09.21 //		CMP	#0FFFFH
;// 03.09.21 //		BNE	GPULC65		; kaidan set ?
;// 03.09.21 //;					; yes
;// 03.09.21 //		LDX	<MPDTNO
;// 03.09.21 //		LDA	>GNDTBL,X
;// 03.09.21 //		ORA	#00100000B
;// 03.09.21 //		STA	>GNDTBL,X
;// 03.09.21 //		LDA	#ut4p07
;// 03.09.21 //		STA	!DOPCNO
;// 03.09.21 //GPULC65		EQU	$
;// 03.09.21 //		ASL	<WORKC
;// 03.09.21 //		LDX	<WORKC
;// 03.09.21 //		LDA	<WORK0
;// 03.09.21 //		CLC
;// 03.09.21 //		ADC	>BIWRPD1,X
;// 03.09.21 //		STA	<WORK0
;// 03.09.21 //		LDA	<WORK2
;// 03.09.21 //		CLC
;// 03.09.21 //		ADC	>BIWRPD2,X
;// 03.09.21 //		STA	<WORK2		; x,y-pos. replace
;// 03.09.21 //;
;// 03.09.21 //		PLA			; (A) <-- (X)
;// 03.09.21 //		CLC
;// 03.09.21 //		ADC	>BIWRPD0,X
;// 03.09.21 //		TAX
;// 03.09.21 //		STX	!GDRBF1
;// 03.09.21 //		JSL	>UT4RWT		; unit4 rewrite
;// 03.09.21 //;
;// 03.09.21 //		REP	#00110000B	; memory,index 16bit mode
;// 03.09.21 //		PLA			; (A) pull
;// 03.09.21 //		BRA	GPULC100
;
GPULC70		EQU	$
		LDY	#atkus0
		CMP	#plgrs0
		BEQ	GPULC80		; pull grass ?
;					; no
		LDY	#atkus1
		CMP	#plgrs1
		BEQ	GPULC80		; pull kusa ?
;					; no
		LDY	#atisi0
		CMP	#plisi0
		BEQ	GPULC80		; pull stone ?
;					; no
		CMP	#plisi1
		BEQ	GPULC80		; pull stone-1 ?
;					; no
		CMP	#plknb0
		BNE	GPULC100	; pull kanban ?
;					; no
		LDY	#atkan0
GPULC80		EQU	$
		STY	<WORKE
		PHA			; (A) push
;
		JSR	PONTCHK		; point check
		BCS	GPULC90		;
;					;
		LDA	<WORKE
GPULC90		EQU	$
		STA	>GDBUF0,X
		JSL	>GDMMSET	; ground memory
;
		JSL	>GDRWRT00Z1	; Vramd data set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
GPULC99		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		PLA			; (A) pull
GPULC100	EQU	$
		ASL	A
		ASL	A
		STA	<WORK6
;
		LDA	<WORK2
		AND	#00008H
		LSR	A
		LSR	A
		TSB	<WORK6
		LDA	<WORK0
		LSR	A
		LSR	A
		LSR	A
		AND	#00001H
		ORA	<WORK6
		ASL	A
		TAX
		LDA	>MPUNIT,X
		AND	#001FFH
		TAX
;
		PLA			; (A) pull
		STA	<WORK0		; check x-pos.
		PLA			; (A) pull
		STA	<WORK2		; check y-pos.
;
		LDA	>GRDCDD,X
;
		MEM8
		IDX8
		SEP	#00110001B	; memory,index 8bit mode
		RTL
;
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		Taiatari-iwa check			(TTIWACK)	*
;************************************************************************
TTIWC80		EQU	$
		LDY	#atkus0
		CMP	#plgrs0
		BEQ	GPULC80		; pull kusa ?
;					; no
;// 03.10.03 //		PLA			; (A) pull
;// 03.10.03 //		STA	<WORK0
;// 03.10.03 //		PLA			; (A) pull
;// 03.10.03 //		CLC
;// 03.10.03 //		ADC	#00010H
;// 03.10.03 //		PHA			; (A) push
;// 03.10.03 //		LDA	<WORK0
;// 03.10.03 //		PHA			; (A) push
;// 03.10.03 //		TXA
;// 03.10.03 //		CLC
;// 03.10.03 //		ADC	#00080H
;// 03.10.03 //		TAX
;// 03.10.03 //		LDA	>GDBUF0,X
;// 03.10.03 //		CMP	#plgrs0
;// 03.10.03 //		BEQ	GPULC80		; pull kusa ?
;// 03.10.03 //;					; no
		PLA			; (A) pull
		PLA			; (A) pull
		SEP	#00110000B	; memory,index 8bit mode
		CLC
		RTL
;
;
TTIWACK1	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	<PLYPS1
		PHA			; (A) push
		CLC
		ADC	#00008H
		STA	<PLYPS1
		JSR	ADRGET
;
		PLA			; (A) pull
		STA	<PLYPS1
		BRA	TTIWC00
;
;
TTIWACK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
;// 03.09.21 //		LDA	<PLMKCH
;// 03.09.21 //		AND	#000FFH
;// 03.09.21 //		TAX
;// 03.09.21 //		LDA	<PLYPS1
;// 03.09.21 //		CLC
;// 03.09.21 //;// 03.09.18 //		ADC	>GPULYPD,X
;// 03.09.21 //		ADC	>DOKYDT,X
;// 03.09.21 //		AND	#0FFF0H
;// 03.09.21 //		STA	<WORK0
;// 03.09.21 //		PHA			; (A) push
;// 03.09.21 //		SEC
;// 03.09.21 //		SBC	!GCCKY0
;// 03.09.21 //		AND	!GCCKY1
;// 03.09.21 //		ASL	A
;// 03.09.21 //		ASL	A
;// 03.09.21 //		ASL	A
;// 03.09.21 //		STA	<WORK6
;// 03.09.21 //;
;// 03.09.21 //		LDA	<PLXPS1
;// 03.09.21 //		CLC
;// 03.09.21 //;// 03.09.18 //		ADC	>GPULXPD,X
;// 03.09.21 //		ADC	>DOKXDT,X
;// 03.09.21 //		AND	#0FFF0H
;// 03.09.21 //		STA	<WORK2
;// 03.09.21 //		PHA			; (A) push
;// 03.09.21 //		LSR	A
;// 03.09.21 //		LSR	A
;// 03.09.21 //		LSR	A
;// 03.09.21 //		SEC
;// 03.09.21 //		SBC	!GCCKX0
;// 03.09.21 //		AND	!GCCKX1
;// 03.09.21 //		CLC
;// 03.09.21 //		ADC	<WORK6
;// 03.09.21 //		TAX
		JSR	ADRGET
TTIWC00		EQU	$
		LDA	<WORK0
		PHA			; (A) push
		LDA	<WORK2
		PHA			; (A) push
		LDA	>GDBUF0,X
		LDY	#00000H
		CMP	#plbiw8
		BEQ	TTIWC20		; pull big-iwa ?
;					; no
		INY
		CMP	#plbiw9
		BEQ	TTIWC20		; pull big-iwa ?
;					; no
		INY
		CMP	#plbiwA
		BEQ	TTIWC20		; pull big-iwa ?
;					; no
		CMP	#plbiwB
		BNE	TTIWC80		; pull big-iwa ?
;					; no
		INY
TTIWC20		EQU	$
		STY	<WORKC
		PHA			; (A) push
;// 03.09.18 //		PHX			; (X) push
		ASL	<WORKC
		TXA
		CLC
		LDX	<WORKC
		ADC	>BIWRPD0,X
		STA	!GDRBF1
		TAX
;
		LDA	#ut4p02
		STA	!DOPCNO
		STZ	<WORKE
		JSR	PONTCHK
		LDA	<WORKE
		CMP	#0FFFFH
		BNE	TTIWC40		; kaidan set ?
;					; yes
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		ORA	#00100000B
		STA	>GNDTBL,X
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#ut4p07
		STA	!DOPCNO
TTIWC40		EQU	$
;// 03.09.18 //		ASL	<WORKC
		LDX	<WORKC
		LDA	<WORK0
		CLC
		ADC	>BIWRPD1,X
		STA	<WORK0
		LDA	<WORK2
		CLC
		ADC	>BIWRPD2,X
		STA	<WORK2		; x,y-pos. replace
;
;// 03.09.18 //		PLA			; (A) <-- (X)
;// 03.09.18 //		CLC
;// 03.09.18 //		ADC	>BIWRPD0,X
;// 03.09.18 //		TAX
;// 03.09.18 //		STX	!GDRBF1
		JSL	>UT4RWT		; unit4 rewrite
;
		JMP	GPULC99
;// 03.09.21 //		REP	#00110000B	; memory,index 16bit mode
;// 03.09.21 //;
;// 03.09.21 //		PLA			; (A) pull
;// 03.09.21 //		ASL	A
;// 03.09.21 //		ASL	A
;// 03.09.21 //		STA	<WORK6
;// 03.09.21 //;
;// 03.09.21 //		LDA	<WORK2
;// 03.09.21 //		AND	#00008H
;// 03.09.21 //		LSR	A
;// 03.09.21 //		LSR	A
;// 03.09.21 //		TSB	<WORK6
;// 03.09.21 //		LDA	<WORK0
;// 03.09.21 //		LSR	A
;// 03.09.21 //		LSR	A
;// 03.09.21 //		LSR	A
;// 03.09.21 //		AND	#00001H
;// 03.09.21 //		ORA	<WORK6
;// 03.09.21 //		ASL	A
;// 03.09.21 //		TAX
;// 03.09.21 //		LDA	>MPUNIT,X
;// 03.09.21 //		AND	#001FFH
;// 03.09.21 //		TAX
;// 03.09.21 //;
;// 03.09.21 //		PLA			; (A) pull
;// 03.09.21 //		STA	<WORK0		; check x-pos.
;// 03.09.21 //		PLA			; (A) pull
;// 03.09.21 //		STA	<WORK2		; check y-pos.
;// 03.09.21 //;
;// 03.09.21 //		LDA	>GRDCDD,X
;// 03.09.21 //;
;// 03.09.21 //		MEM8
;// 03.09.21 //		IDX8
;// 03.09.21 //		SEP	#00110001B	; memory,index 8bit mode & SEC
;// 03.09.21 //		RTL
;
;
;
;
;
;************************************************************************
;*		Bomb check				(BOMBCHK)	*
;************************************************************************
BOMBCHK		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		STZ	<WORKE
		STZ	<WORK8
		LDA	#00003H
		STA	<CWORK0
;
		LDA	<WORK0
		SEC
		SBC	#00014H
		AND	#0FFF8H
		STA	!GBBYPS
		LDA	<WORK2
		SEC
		SBC	#00017H
		AND	#0FFF8H
		STA	!GBBXPS
BBCK20		EQU	$
		LDA	!GBBYPS
		SEC
		SBC	!GCCKY0
		AND	!GCCKY1
		ASL	A
		ASL	A
		ASL	A
		STA	<CWORK2
		LDA	!GBBXPS
		JSR	BBCK000		; 1st. check
;
		LDA	!GBBXPS
		CLC
		ADC	#00010H
		JSR	BBCK000		; 2nd. check
;
		LDA	!GBBXPS
		CLC
		ADC	#00020H
		JSR	BBCK000		; 3rd. check
;
		LDA	!GBBYPS
		CLC
		ADC	#00010H
		STA	!GBBYPS
		DEC	<CWORK0
		BNE	BBCK20		; end ?
;					; yes
		SEP	#00110000B	; memory,index 8bit mode
		RTL
;
;
BBCK000		EQU	$
		PHA			; (A) push
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	!GCCKX0
		AND	!GCCKX1
		CLC
		ADC	<CWORK2
		TAX
;
;// 03.05.01 //		STZ	<WORKC
;// 03.05.01 //		JSR	PONTCHK		; position check
;// 03.05.01 //		BCC	BBCK100		; crush ?
;// 03.05.01 //;					; yes
;// 03.05.01 //		STA	<WORKC
;// 03.05.01 //		LDA	[<WORK0],Y
;// 03.05.01 //		ASL	A
;// 03.05.01 //		BCC	BBCK100		; crush ok ?
;// 03.05.01 //;					; yes
;// 03.05.01 //		PLA			; (A) pull
;// 03.05.01 //;
;// 03.05.01 //		LDA	#drutE
;// 03.05.01 //		STA	>GDBUF0,X
;// 03.05.01 //		LDY	#00000H
;// 03.05.01 //		JSR	GDRWRT01	; Vramd data set
;// 03.05.01 //		LDA	#drutF
;// 03.05.01 //		STA	>GDBUF0+2,X
;// 03.05.01 //		LDY	#00002H
;// 03.05.01 //		JSR	GDRWRT01	; Vramd data set
;// 03.05.01 //;
;// 03.05.01 //		MEM8
;// 03.05.01 //		SEP	#00100000B	; memory 8bit mode
;// 03.05.01 //;
;// 03.05.01 //		LDA	#VT01
;// 03.05.01 //		STA	<VRFLG
;// 03.05.01 //;
;// 03.05.01 //		REP	#00110000B	; memory,index 16bit mode
;// 03.05.01 //		RTS
;// 03.05.01 //;
;// 03.05.01 //;
;// 03.05.01 //		MEM16
;// 03.05.01 //		IDX16
;// 03.05.01 //BBCK100		EQU	$
		STX	<WORK4
		LDA	>OPMODE
		AND	#000FFH
		CMP	#bakud
		BEQ	BBCK180		; option-bomb ?
;					; no
		LDA	>GDBUF0,X
		LDY	#atkus0
		LDX	#00002H
		CMP	#plgrs0
		BEQ	BBCK140		; pull grass ?
;					; no
		LDX	#00004H
		LDY	#atkus1
		CMP	#plgrs1
		BEQ	BBCK140		; pull grass-1 ?
;					; no
;// 03.07.11 //		LDY	#atisi0
;// 03.07.11 //		LDX	#00001H
;// 03.07.11 //		CMP	#plisi0
;// 03.07.11 //		BEQ	BBCK140		; pull stone ?
;// 03.07.11 //;					; no
;// 03.06.19 //		LDX	#00005H
;// 03.06.19 //		CMP	#plisi1
;// 03.06.19 //		BEQ	BBCK140		; pull stone-1 ?
;// 03.06.19 //;					; no
		CMP	#grasut
		BNE	BBCK180		; grass ?
;					; yes
		LDY	#atsib0
		LDX	#00003H
BBCK140		EQU	$
		STX	<WORKA
		STY	<WORKE
;
;// 03.05.01 //		LDA	<WORKC
;// 03.05.01 //		BNE	BBCK160		; atari ?
;// 03.05.01 //;					; no
;// 03.05.01 //		TYA
		LDX	<WORK4
		JSR	PONTCHK		; point check
		BCS	BBCK160		;
;					;
		LDA	<WORKE
BBCK160		EQU	$
;// 03.05.01 //		LDX	<WORK4
		STA	>GDBUF0,X
		JSL	>GDMMSET	; ground memory
;
		LDY	#00000H
		JSL	>GDRWRT01	; Vramd data set
;
		PLA			; (A) pull
		AND	#0FFF8H
		STA	<WORK0
		LDA	!GBBYPS
		AND	#0FFF8H
		STA	<WORK2		; (work0) <--> (work2)
;
		LDA	<WORK8
		PHA			; (A) push
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	<WORKA
		JSL	>KUSAST		
;
		LDA	#VT01
		STA	<VRFLG
;
		REP	#00110000B	; memory,index 16bit mode
;
		PLA			; (A) pull
		STA	<WORK8
		RTS
;
;
		MEM16
		IDX16
BBCK180		EQU	$
		LDX	<WORK4
		JSR	PONTCHK		; point check
;// 03.07.22 //		BCS	BBCK200		;
;// 03.07.22 //;					;
		LDA	<WORKE
		CMP	#drutE
		BEQ	BBCK200		; bomb-door ?
;					; no
;// 03.09.28 //		MEM8
;// 03.09.28 //		SEP	#00100000B	; memory 8bit mode
;// 03.09.28 //;
;// 03.09.28 //		LDA	!SOUND3
;// 03.09.28 //		CMP	#01BH
;// 03.09.28 //		BNE	BBCK185		; sound off
;// 03.09.28 //;					;
;// 03.09.28 //		STZ	!SOUND3
;// 03.09.28 //BBCK185		EQU	$
;// 03.09.28 //		MEM16
;// 03.09.28 //		REP	#00100000B	; memory 16bit mode
BBCK190		EQU	$
		PLA			; (A) pull
		RTS
;
;
BBCK200		EQU	$
		STA	>GDBUF0,X
		JSL	>GDMMSET	; ground memory
		LDY	#00000H
		JSL	>GDRWRT01	; Vramd data set
		LDA	#drutF
		STA	>GDBUF0+2,X
		JSL	>GDMMSET	; ground memory
		LDY	#00002H
		JSL	>GDRWRT01	; Vramd data set
;
		STZ	<WORKE
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
;
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		ORA	#00000010B
		STA	>GNDTBL,X	; bomb-door open memory!!
BBCK280		EQU	$
		REP	#00110000B	; memory,index 16bit mode
		PLA			; (A) pull
		RTS
;
;
;
;
;// 03.08.09 //		MEM8
;// 03.08.09 //		IDX8
;// 03.08.09 //;************************************************************************
;// 03.08.09 //;*		Shiro gate open	check			(SGTOPCK)	*
;// 03.08.09 //;************************************************************************
;// 03.08.09 //SGTOPCK		EQU	$
;// 03.08.09 //		LDX	<MPDTNO
;// 03.08.09 //		CPX	#01BH
;// 03.08.09 //		BNE	SGOPC40		; shiro-gate open check ?
;// 03.08.09 //;					; yes
;// 03.08.09 //		LDA	>GNDTBL,X
;// 03.08.09 //		AND	#00100000B
;// 03.08.09 //		BNE	SGOPC40		; gate opend ?
;// 03.08.09 //;					; no
;// 03.08.09 //		LDA	!SWCHFG
;// 03.08.09 //		BEQ	SGOPC40		; open ?
;// 03.08.09 //;					; yes
;// 03.08.09 //		LDA	#p2_sgop
;// 03.08.09 //		STA	<GAMEMD
;// 03.08.09 //		LDA	#001H
;// 03.08.09 //		STA	<JRSBPT
;// 03.08.09 //		STA	!GMAPDF
;// 03.08.09 //		STZ	!SWCHFG
;// 03.08.09 //SGOPC40		EQU	$
;// 03.08.09 //		RTL
;// 03.08.09 //;
;// 03.08.09 //;
;// 03.08.09 //;
;// 03.08.09 //;
;// 03.08.09 //;************************************************************************
;// 03.08.09 //;*		Shiro gate open				(SGTOPEN)	*
;// 03.08.09 //;************************************************************************
;// 03.08.09 //SGTDDT		EQU	$
;// 03.08.09 //		WORD	ut4p07,ut4p08,ut4p09
;// 03.08.09 //;
;// 03.08.09 //;
;// 03.08.09 //SGTOPEN		EQU	$
;// 03.08.09 //		LDA	<JRSBPT
;// 03.08.09 //		DEC	A
;// 03.08.09 //		AND	#00001111B
;// 03.08.09 //		BNE	SGOP200		; open ?
;// 03.08.09 //;					; yes
;// 03.08.09 //		LDA	#018H
;// 03.08.09 //		STA	!SOUND3		; <sound3>
;// 03.08.09 //;
;// 03.08.09 //		MEM16
;// 03.08.09 //		IDX16
;// 03.08.09 //		REP	#00110000B	; memory,index 16bit mode
;// 03.08.09 //;
;// 03.08.09 //		LDA	<JRSBPT
;// 03.08.09 //		AND	#000E0H
;// 03.08.09 //		LSR	A
;// 03.08.09 //		LSR	A
;// 03.08.09 //		LSR	A
;// 03.08.09 //		LSR	A
;// 03.08.09 //		TAX
;// 03.08.09 //		LDA	>SGTDDT,X
;// 03.08.09 //		STA	!DOPCNO
;// 03.08.09 //		PHA			; (A) push
;// 03.08.09 //		LDA	#13BCH
;// 03.08.09 //		STA	!GDRBF1
;// 03.08.09 //		JSL	>UT4RWT		; write
;// 03.08.09 //;
;// 03.08.09 //		REP	#00110000B	; memory,index 16bit mode
;// 03.08.09 //;
;// 03.08.09 //		PLA			; (A) pull
;// 03.08.09 //		CLC
;// 03.08.09 //		ADC	#00008H
;// 03.08.09 //		STA	!DOPCNO
;// 03.08.09 //		LDA	#013C0H
;// 03.08.09 //		STA	!GDRBF1
;// 03.08.09 //		JSL	>UT4RWT1	; write
;// 03.08.09 //;
;// 03.08.09 //		MEM8
;// 03.08.09 //		IDX8
;// 03.08.09 //SGOP200		EQU	$
;// 03.08.09 //		INC	<JRSBPT
;// 03.08.09 //		LDA	<JRSBPT
;// 03.08.09 //		CMP	#044H
;// 03.08.09 //		BNE	SGOP400		; end ?
;// 03.08.09 //;					; yes
;// 03.08.09 //		LDX	<MPDTNO
;// 03.08.09 //		LDA	>GNDTBL,X
;// 03.08.09 //		ORA	#00100000B
;// 03.08.09 //		STA	>GNDTBL,X
;// 03.08.09 //		STZ	<GAMEMD
;// 03.08.09 //		STZ	<JRSBPT
;// 03.08.09 //		STZ	!GMAPDF
;// 03.08.09 //SGOP400		EQU	$
;// 03.08.09 //		RTL
;// 03.08.09 //;
;// 03.08.09 //;
;
;
;
;
;************************************************************************
;*		Kazamidori erase			(KZBDERS)	*
;************************************************************************
KZBDERS		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#ut4p0C
		STA	!DOPCNO
		LDA	#00C3EH
		STA	!GDRBF1
		JSL	>UT4RWT		; write
;
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00C42H
		LDA	#kzbdu0
		STA	>GDBUF0,X
		LDY	#00000H
		JSL	>GDRWRT01	; Vramd data set
;
		LDX	#00CC0H
		LDA	#kzbdu4
		STA	>GDBUF0+2,X
		LDY	#00002H
		JSL	>GDRWRT01	; Vramd data set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	>GNDTBL+018H
		ORA	#00100000B
		STA	>GNDTBL+018H
;;;;;;;;		LDA	>GNDTBL+058H
;;;;;;;;		ORA	#00100000B
;;;;;;;;		STA	>GNDTBL+058H	; shikake on!!
;
		LDA	#VT01
		STA	<VRFLG
		RTL
;
;
;
;
;************************************************************************
;*		Ura-machi Ga-goil enter set		(UGGILWT)	*
;************************************************************************
UGGILWT		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00D3EH
		LDA	#torid0
		JSL	>GDRWRT00Z	; Vramd data set
		LDX	#00D40H
		LDA	#torid1
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00DBEH
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00E3EH
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
;;;;;;;;		LDA	>GNDTBL+018H
;;;;;;;;		ORA	#00100000B
;;;;;;;;		STA	>GNDTBL+018H
		LDA	>GNDTBL+058H
		ORA	#00100000B
		STA	>GNDTBL+058H	; shikake on!!
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		LDA	#VT01
		STA	<VRFLG
		RTL
;
;
;
;
;
;************************************************************************
;*		Piramido hole write			(PRMDHST)	*
;************************************************************************
PRMDHST		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#003BCH
		LDA	#prmdu0
		JSL	>GDRWRT00Z	; Vramd data set
		LDX	#003BEH
		LDA	#prmdu1
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#0043CH
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#004BCH
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		LDA	#03515H
		STA	!SOUND1		; <sound1> , <sound2>
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	>GNDTBL+05BH
		ORA	#00100000B
		STA	>GNDTBL+05BH
;
		LDA	#003H
		STA	!SOUND3		; <sound3>
;
		LDA	#VT01
		STA	<VRFLG
		RTL
;
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		Point check				(PONTCHK)	*
;************************************************************************
CKDTBL		EQU	$
		WORD	PTCHCD00,PTCHCD01,PTCHCD02,PTCHCD03
		WORD	PTCHCD04,PTCHCD05,PTCHCD06,PTCHCD07
		WORD	PTCHCD08,PTCHCD09,PTCHCD0A,PTCHCD0B
		WORD	PTCHCD0C,PTCHCD0D,PTCHCD0E,PTCHCD0F
		WORD	PTCHCD10,PTCHCD11,PTCHCD12,PTCHCD13
		WORD	PTCHCD14,PTCHCD15,PTCHCD16,PTCHCD17
		WORD	PTCHCD18,PTCHCD19,PTCHCD1A,PTCHCD1B
		WORD	PTCHCD1C,PTCHCD1D,PTCHCD1E,PTCHCD1F
		WORD	PTCHCD20,PTCHCD21,PTCHCD22,PTCHCD23
		WORD	PTCHCD24,PTCHCD25,PTCHCD26,PTCHCD27
		WORD	PTCHCD28,PTCHCD29,PTCHCD2A,PTCHCD2B
		WORD	PTCHCD2C,PTCHCD2D,PTCHCD2E,PTCHCD2F
		WORD	PTCHCD30,PTCHCD31,PTCHCD32,PTCHCD33
		WORD	PTCHCD34,PTCHCD35,PTCHCD36,PTCHCD37
		WORD	PTCHCD38,PTCHCD39,PTCHCD3A,PTCHCD3B
		WORD	PTCHCD3C,PTCHCD3D,PTCHCD3E,PTCHCD3F
;
		WORD	PTCHCD40,PTCHCD41,PTCHCD42,PTCHCD43
		WORD	PTCHCD44,PTCHCD45,PTCHCD46,PTCHCD47
		WORD	PTCHCD48,PTCHCD49,PTCHCD4A,PTCHCD4B
		WORD	PTCHCD4C,PTCHCD4D,PTCHCD4E,PTCHCD4F
		WORD	PTCHCD50,PTCHCD51,PTCHCD52,PTCHCD53
		WORD	PTCHCD54,PTCHCD55,PTCHCD56,PTCHCD57
		WORD	PTCHCD58,PTCHCD59,PTCHCD5A,PTCHCD5B
		WORD	PTCHCD5C,PTCHCD5D,PTCHCD5E,PTCHCD5F
		WORD	PTCHCD60,PTCHCD61,PTCHCD62,PTCHCD63
		WORD	PTCHCD64,PTCHCD65,PTCHCD66,PTCHCD67
		WORD	PTCHCD68,PTCHCD69,PTCHCD6A,PTCHCD6B
		WORD	PTCHCD6C,PTCHCD6D,PTCHCD6E,PTCHCD6F
		WORD	PTCHCD70,PTCHCD71,PTCHCD72,PTCHCD73
		WORD	PTCHCD74,PTCHCD75,PTCHCD76,PTCHCD77
		WORD	PTCHCD78,PTCHCD79,PTCHCD7A,PTCHCD7B
		WORD	PTCHCD7C,PTCHCD7D,PTCHCD7E,PTCHCD7F
;
;
PTCHCD00	EQU	$		; position check data
PTCHCD01	EQU	$
PTCHCD08	EQU	$
PTCHCD09	EQU	$
		WORD	00300H+0002AH+00040H
		HEX	04		; ?
		WORD	00900H+00014H+01000H
		HEX	04		; ?
		WORD	00080H+00020H+00040H+01000H
		HEX	80		; hole
		WORD	00A80H+00010H+00040H+01000H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD02	EQU	$
		WORD	00480H+0002EH
		HEX	01		; 1 ruppy
		WORD	00D00H+00016H
		HEX	03		; hachi
		WORD	00D80H+00024H
		HEX	01		; 1 ruppy
		WORD	00E80H+00020H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD03	EQU	$
PTCHCD04	EQU	$
PTCHCD0B	EQU	$
PTCHCD0C	EQU	$
		WORD	00800H+0002AH+00040H+01000H
		HEX	05		; bomb
		WORD	00800H+00032H+00040H+01000H
		HEX	05		; bomb
		WORD	00900H+0002EH+00040H+01000H
		HEX	04		; ?
		WORD	00A00H+0002AH+00040H+01000H
		HEX	05		; bomb
		WORD	00A00H+00032H+00040H+01000H
		HEX	05		; bomb
;
		WORD	0FFFFH
;
PTCHCD05	EQU	$
PTCHCD06	EQU	$
PTCHCD0D	EQU	$
PTCHCD0E	EQU	$
		WORD	00D00H+0000AH+00040H+01000H
		HEX	82		; mahoujin
PTCHCD07	EQU	$
;
		WORD	0FFFFH
;
PTCHCD0A	EQU	$
		WORD	00700H+00030H
		HEX	02		; ishi mochi
;
		WORD	0FFFFH
;
PTCHCD0F	EQU	$
		WORD	00600H+00018H
		HEX	06		; heart
;
		WORD	0FFFFH
;
;
PTCHCD10	EQU	$
		WORD	00B00H+00028H
		HEX	04		; ?
		WORD	00B00H+0002EH
		HEX	82		; mahoujin
;
		WORD	0FFFFH
;
PTCHCD11	EQU	$
		WORD	00A00H+00034H
		HEX	05		; bomb
		WORD	00D80H+0000EH
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD12	EQU	$
		WORD	00500H+00030H
		HEX	06		; heart
		WORD	00800H+00008H
		HEX	04		; ?
		WORD	00980H+00032H
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD13	EQU	$
		WORD	00500H+00006H
		HEX	84		; kaidan
		WORD	00780H+00020H
		HEX	03		; hachi
		WORD	00800H+00034H
		HEX	04		; ?
		WORD	00880H+00028H
		HEX	04		; ?
		WORD	00980H+00022H
		HEX	06		; heart
		WORD	00980H+00036H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD14	EQU	$
		WORD	00480H+00010H
		HEX	01		; 1 ruppy
		WORD	00480H+00012H
		HEX	01		; 1 ruppy
		WORD	00700H+0001CH
		HEX	03		; hachi
		WORD	00780H+00038H
		HEX	04		; ?
		WORD	00A00H+00008H
		HEX	04		; ?
		WORD	00A80H+0000CH
		HEX	03		; hachi
;
		WORD	0FFFFH
;
PTCHCD15	EQU	$
		WORD	00380H+00010H
		HEX	05		; bomb
		WORD	00780H+00008H
		HEX	80		; hole
;
		WORD	0FFFFH
;
PTCHCD16	EQU	$
		WORD	00780H+0001CH
		HEX	01		; 1 ruppy
		WORD	00800H+00026H
		HEX	03		; hachi
		WORD	00900H+00028H
		HEX	04		; ?
		WORD	00980H+00028H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD17	EQU	$
		WORD	00E00H+0001CH
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD18	EQU	$
PTCHCD19	EQU	$
PTCHCD20	EQU	$
PTCHCD21	EQU	$
;
		WORD	00A80H+00038H+00040H
		HEX	04		; ?
		WORD	00A80H+0003AH+00040H
		HEX	05		; bomb
		WORD	00E80H+0002EH+00040H
		HEX	01		; 1 ruppy
;
		WORD	00100H+00012H+01000H
		HEX	03		; hachi
		WORD	00100H+0001EH+01000H
		HEX	04		; ?
		WORD	00200H+00016H+01000H
		HEX	01		; 1 ruppy
		WORD	00280H+00020H+01000H
		HEX	01		; 1 ruppy
		WORD	00380H+00012H+01000H
		HEX	01		; 1 ruppy
		WORD	00380H+0001EH+01000H
		HEX	01		; 1 ruppy
		WORD	00A00H+00018H+01000H
		HEX     04              ; ?
		WORD	00A80H+00016H+01000H
		HEX     04              ; ?
		WORD	00A80H+0001AH+01000H
		HEX	05		; bomb
		WORD	00B00H+00014H+01000H
		HEX     04              ; ?
		WORD	00C00H+0000CH+01000H
		HEX	086		; kowareru kabe
		WORD	00C80H+00032H+01000H
		HEX	03		; hachi
;
		WORD	00500H+0002AH+00040H+01000H
		HEX	06		; heart
		WORD	00580H+00022H+00040H+01000H
		HEX	04		; ?
		WORD	00580H+0002EH+00040H+01000H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD1A	EQU	$
		WORD	00480H+0002AH
		HEX	03		; hachi
		WORD	00A80H+00018H
		HEX	05		; bomb
		WORD	00D80H+0002AH
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD1B	EQU	$
PTCHCD1C	EQU	$
PTCHCD23	EQU	$
PTCHCD24	EQU	$
		WORD	00280H+0000CH
		HEX	01		; 1 ruppy
		WORD	00400H+0000CH
		HEX	04		; ?
		WORD	00400H+0000EH
		HEX	04		; ?
		WORD	00700H+00024H
		HEX	03		; hachi
;
		WORD	00280H+0002CH+00040H
		HEX	04		; ?
		WORD	00500H+00030H+00040H
		HEX	080		; hole
		WORD	00600H+0001CH+00040H
		HEX	06		; heart
		WORD	00880H+00030H+00040H
		HEX	01		; 1 ruppy
		WORD	00980H+0002CH+00040H
		HEX	06		; heart
		WORD	00E00H+0000AH+00040H
		HEX	01		; 1 ruppy
		WORD	00E80H+00018H+00040H
		HEX	01		; 1 ruppy
		WORD	00F00H+0001AH+00040H
		HEX	01		; 1 ruppy
		WORD	00F80H+00018H+00040H
		HEX	01		; 1 ruppy
;
		WORD	00080H+00034H+01000H
		HEX	03		; hachi
		WORD	00680H+0001CH+01000H
		HEX	04		; ?
		WORD	00680H+00020H+01000H
		HEX	01		; 1 ruppy
		WORD	00680H+00022H+01000H
		HEX	01		; 1 ruppy
		WORD	00C80H+00008H+01000H
		HEX	01		; 1 ruppy
		WORD	00D80H+00012H+01000H
		HEX	04		; ?
;
		WORD	00080H+00014H+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00500H+00014H+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00580H+0001AH+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00580H+0001EH+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00600H+00012H+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00600H+00026H+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00D00H+00030H+00040H+01000H
		HEX	05		; bomb
		WORD	00D80H+0001AH+00040H+01000H
		HEX	04		; ?
		WORD	00D80H+00020H+00040H+01000H
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD1D	EQU	$
		WORD	00200H+00030H
		HEX	01		; 1 ruppy
		WORD	00200H+00034H
		HEX	05		; bomb
PTCHCD1E	EQU	$
PTCHCD1F	EQU	$
PTCHCD26	EQU	$
PTCHCD27	EQU	$
;
		WORD	0FFFFH
;
PTCHCD22	EQU	$
		WORD	00400H+00028H
		HEX	05		; bomb
		WORD	00B00H+0000EH
		HEX	01		; 1 ruppy
		WORD	00B00H+00010H
		HEX	01		; 1 ruppy
		WORD	00B00H+00016H
		HEX	01		; 1 ruppy
		WORD	00C00H+00016H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD25	EQU	$
		WORD	00900H+00008H
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD28	EQU	$
		WORD	00700H+0002AH
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD29	EQU	$
		WORD	00300H+00008H
		HEX	01		; 1 ruppy
		WORD	00700H+00028H
		HEX	03		; hachi
		WORD	00800H+00008H
		HEX	04		; ?
		WORD	00900H+00026H
		HEX	04		; ?
PTCHCD2A	EQU	$
;
		WORD	0FFFFH
;
PTCHCD2B	EQU	$
		WORD	00300H+0001EH
		HEX	01		; 1 ruppy
		WORD	00300H+00030H
		HEX	84		; kaidan
		WORD	00C00H+00010H
		HEX	01		; 1 ruppy
		WORD	00C00H+00018H
		HEX	04		; ?
		WORD	00C00H+0001AH
		HEX	06		; heart
		WORD	00C80H+0000EH
		HEX	01		; 1 ruppy
		WORD	00C80H+00016H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD2C	EQU	$
		WORD	00200H+00014H
		HEX	01		; 1 ruppy
		WORD	00880H+0001EH
		HEX	01		; 1 ruppy
		WORD	00880H+00010H
		HEX	01		; 1 ruppy
		WORD	00900H+00006H
		HEX	01		; 1 ruppy
		WORD	00980H+00004H
		HEX	04		; ?
		WORD	00A00H+0001CH
		HEX	05		; bomb
		WORD	00A80H+00034H
		HEX	06		; heart
		WORD	00B80H+00036H
		HEX	01		; 1 ruppy
PTCHCD2D	EQU	$
;
PTCHCD2E	EQU	$
;
		WORD	0FFFFH
;
PTCHCD2F	EQU	$
		WORD	00B80H+00032H
		HEX	082		;  mahoujin
		WORD	00D00H+00012H
		HEX	05		; bomb
;
		WORD	0FFFFH
;
;
PTCHCD30	EQU	$
PTCHCD31	EQU	$
PTCHCD38	EQU	$
PTCHCD39	EQU	$
		WORD	00300H+00018H+00040H
		HEX	84		; kaidan
		WORD	00A00H+00010H+00040H
		HEX	04		; ?
;
		WORD	00400H+00006H+01000H
		HEX	06		; heart
		WORD	00D80H+00014H+01000H
		HEX	082		; mahoujin
;
		WORD	0FFFFH
;
PTCHCD32	EQU	$
		WORD	00500H+0001EH
		HEX	05		; bomb
		WORD	00500H+0002AH
		HEX	04		; ?
		WORD	00580H+0001CH
		HEX	05		; bomb
;
		WORD	0FFFFH
;
PTCHCD33	EQU	$
		WORD	00280H+00028H
		HEX	082		; mahoujin
		WORD	00B00H+00014H
		HEX	02		; ishi mochi
;
		WORD	0FFFFH
;
PTCHCD34	EQU	$
		WORD	00380H+00030H
		HEX	86		; kowareru kabe
		WORD	00480H+0000CH
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD35	EQU	$
PTCHCD36	EQU	$
PTCHCD3D	EQU	$
PTCHCD3E	EQU	$
		WORD	00A00H+00030H
		HEX	04		; ?
		WORD	00C00H+00010H
		HEX	06		; heart
;
		WORD	00F00H+00016H+00040H
		HEX	082		; mahoujin
;
		WORD	00800H+0000CH+01000H
		HEX	86		; kowareru kabe
;
		WORD	00C80H+0001EH+00040H+01000H
		HEX	03		; hachi
;
		WORD	0FFFFH
;
PTCHCD37	EQU	$
		WORD	00280H+00008H
		HEX	86		; kowareru kabe
		WORD	00380H+0002AH
		HEX	05		; bomb
		WORD	00400H+0000CH
		HEX	84		; kaidan
;
		WORD	0FFFFH
;
PTCHCD3A	EQU	$
		WORD	00800H+0001EH
		HEX	02		; ishi mochi
		WORD	00980H+0002CH
		HEX	06		; heart
		WORD	00A00H+0001EH
		HEX	84		; kaidan
;
		WORD	0FFFFH
;
PTCHCD3B	EQU	$
		WORD	00600H+0001AH
		HEX	03		; hachi
;
		WORD	0FFFFH
;
PTCHCD3C	EQU	$
		WORD	00680H+00016H
		HEX	03		; hachi
		WORD	00700H+00010H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD3F	EQU	$
		WORD	00C00H+00028H
		HEX	04		; ?
;
		WORD	0FFFFH
;
;
;------- ura
;
PTCHCD40	EQU	$
PTCHCD41	EQU	$
PTCHCD48	EQU	$
PTCHCD49	EQU	$
		WORD	00300H+00038H
		HEX	04		; ?
;
		WORD	00300H+0002AH+00040H
		HEX	01		; 1 ruppy
		WORD	00500H+00030H+00040H
		HEX	03		; hachi
		WORD	00580H+00032H+00040H
		HEX	04		; ?
;
		WORD	00900H+00014H+01000H
		HEX	03		; hachi
		WORD	00D00H+00038H+01000H
		HEX	06		; heart
		WORD	00D80H+0003CH+01000H
		HEX	05		; bomb
;
		WORD	00000H+0001EH+00040H+01000H
		HEX	04		; ?
		WORD	00080H+00020H+00040H+01000H
		HEX	080		; hole
		WORD	00100H+00022H+00040H+01000H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD42	EQU	$
		WORD	00480H+0002CH
		HEX	01		; 1 ruppy
		WORD	00580H+00034H
		HEX	01		; 1 ruppy
		WORD	00900H+0000AH
		HEX	03		; hachi
		WORD	00D80H+00018H
		HEX	01		; 1 ruppy
		WORD	00D80H+00024H
		HEX	01		; 1 ruppy
		WORD	00E00H+0001EH
		HEX	01		; 1 ruppy
		WORD	00E80H+00028H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD43	EQU	$
PTCHCD44	EQU	$
PTCHCD4B	EQU	$
PTCHCD4C	EQU	$
		WORD	00A00H+00020H+00040H
		HEX	04		; ?
		WORD	00B80H+0001AH+00040H
		HEX	04		; ?
		WORD	00B80H+00026H+00040H
		HEX	04		; ?
		WORD	00D00H+00020H+00040H
		HEX	04		; ?
;
		WORD	00900H+00020H+01000H
		HEX	01		; 1 ruppy
		WORD	00A00H+00004H+01000H
		HEX	04		; ?
;
		WORD	00780H+0002EH+00040H+01000H
		HEX	06		; heart
		WORD	00900H+00028H+00040H+01000H
		HEX	06		; heart
		WORD	00900H+00034H+00040H+01000H
		HEX	06		; heart
		WORD	00A80H+0002EH+00040H+01000H
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD45	EQU	$
PTCHCD46	EQU	$
PTCHCD4D	EQU	$
PTCHCD4E	EQU	$
		WORD	00800H+00028H+00040H
		HEX	84		; kaidan
;
		WORD	00380H+00018H+00040H+01000H
		HEX	05		; bomb
		WORD	00400H+0001AH+00040H+01000H
		HEX	05		; bomb
PTCHCD47	EQU	$
;
PTCHCD4A	EQU	$
;
		WORD	0FFFFH
;
PTCHCD4F	EQU	$
		WORD	00680H+0002EH
		HEX	05		; bomb
		WORD	00680H+00034H
		HEX	05		; bomb
		WORD	00800H+00032H
		HEX	06		; heart
		WORD	00A00H+00032H
		HEX	06		; heart
		WORD	00B00H+0001CH
		HEX	06		; heart
;
		WORD	0FFFFH
;
;
PTCHCD50	EQU	$
		WORD	00400H+0000CH
		HEX	01		; 1 ruppy
		WORD	00780H+00012H
		HEX	01		; 1 ruppy
		WORD	00780H+00018H
		HEX	04		; ?
		WORD	00780H+0001EH
		HEX	04		; ?
		WORD	00780H+00024H
		HEX	01		; 1 ruppy
		WORD	00A00H+00034H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD51	EQU	$
		WORD	00700H+00016H
		HEX	03		; hachi
		WORD	00900H+0002AH
		HEX	01		; 1 ruppy
		WORD	00A00H+00034H
		HEX	05		; bomb
		WORD	00A80H+00024H
		HEX	01		; 1 ruppy
		WORD	00B80H+00018H
		HEX	01		; 1 ruppy
		WORD	00C00H+0001AH
		HEX	01		; 1 ruppy
		WORD	00D00H+00018H
		HEX	01		; 1 ruppy
		WORD	00D80H+0000EH
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD52	EQU	$
		WORD	00480H+00032H
		HEX	06		; heart
		WORD	00500H+00030H
		HEX	06		; heart
		WORD	00580H+0002EH
		HEX	06		; heart
		WORD	00780H+00008H
		HEX	01		; 1 ruppy
		WORD	00800H+00008H
		HEX	01		; 1 ruppy
		WORD	00880H+00008H
		HEX	01		; 1 ruppy
		WORD	00980H+00032H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD53	EQU	$
		WORD	00580H+00004H
		HEX	05		; bomb
		WORD	00580H+00038H
		HEX	04		; ?
		WORD	00600H+00006H
		HEX	05		; bomb
		WORD	00680H+00008H
		HEX	05		; bomb
		WORD	00700H+0000AH
		HEX	05		; bomb
		WORD	00780H+0000CH
		HEX	05		; bomb
		WORD	00780H+00020H
		HEX	01		; 1 ruppy
		WORD	00780H+00036H
		HEX	03		; hachi
		WORD	00800H+00022H
		HEX	01		; 1 ruppy
		WORD	00800H+0002EH
		HEX	01		; 1 ruppy
		WORD	00880H+00026H
		HEX	01		; 1 ruppy
		WORD	00880H+00030H
		HEX	01		; 1 ruppy
		WORD	00900H+00020H
		HEX	04		; ?
		WORD	00900H+00028H
		HEX	01		; 1 ruppy
		WORD	00900H+00034H
		HEX	01		; 1 ruppy
		WORD	00980H+00036H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD54	EQU	$
		WORD	00480H+00010H
		HEX	04		; ?
		WORD	00480H+00012H
		HEX	04		; ?
		WORD	00580H+0002EH
		HEX	01		; 1 ruppy
		WORD	00780H+00038H
		HEX	03		; hachi
;
		WORD	0FFFFH
;
PTCHCD55	EQU	$
		WORD	00380H+0000AH
		HEX	05		; bomb
		WORD	00780H+00008H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD56	EQU	$
		WORD	00780H+0001CH
		HEX	04		; ?
		WORD	00880H+00026H
		HEX	01		; 1 ruppy
		WORD	00900H+00026H
		HEX	01		; 1 ruppy
		WORD	00980H+00026H
		HEX	01		; 1 ruppy
		WORD	00A00H+00026H
		HEX	01		; 1 ruppy
		WORD	00C80H+00018H
		HEX	01		; 1 ruppy
		WORD	00D00H+0001AH
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD57	EQU	$
		WORD	00E00H+0001CH
		HEX	06		; heart
		WORD	00E00H+00020H
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD58	EQU	$
PTCHCD59	EQU	$
PTCHCD60	EQU	$
PTCHCD61	EQU	$
		WORD	00480H+0001AH
		HEX	04		; ?
		WORD	00C80H+00016H
		HEX	03		; hachi
;
		WORD	00600H+00014H+00040H
		HEX	01		; 1 ruppy
		WORD	00600H+00016H+00040H
		HEX	01		; 1 ruppy
		WORD	00A80H+00038H+00040H
		HEX	04		; ?
		WORD	00A80H+0003AH+00040H
		HEX	04		; ?
		WORD	00C80H+00016H+00040H
		HEX	01		; 1 ruppy
		WORD	00E00H+00024H+00040H
		HEX	01		; 1 ruppy
		WORD	00F00H+00026H+00040H
		HEX	01		; 1 ruppy
;
		WORD	00080H+00012H+01000H
		HEX	01		; 1 ruppy
		WORD	00080H+00020H+01000H
		HEX	04		; ?
		WORD	00100H+00014H+01000H
		HEX	01		; 1 ruppy
		WORD	00200H+00012H+01000H
		HEX	01		; 1 ruppy
		WORD	00200H+0001EH+01000H
		HEX	04		; ?
		WORD	00280H+00016H+01000H
		HEX	01		; 1 ruppy
		WORD	00980H+0001CH+01000H
		HEX	04		; ?
		WORD	00A00H+00014H+01000H
		HEX	04		; ?
		WORD	00A80H+00018H+01000H
		HEX	04		; ?
		WORD	00B00H+0001EH+01000H
		HEX	04		; ?
		WORD	00C00H+00034H+01000H
		HEX	05		; bomb
		WORD	00C80H+00026H+01000H
		HEX	05		; bomb
		WORD	00A80H+00036H+01000H
		HEX	086		; kowareru kabe
;
		WORD	00480H+0002CH+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00580H+00022H+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00A00H+0000AH+00040H+01000H
		HEX	04		; ?
		WORD	00B00H+00008H+00040H+01000H
		HEX	03		; hachi
;
		WORD	0FFFFH
;
PTCHCD5A	EQU	$
		WORD	00400H+0001AH
		HEX	06		; heart
		WORD	00880H+00034H
		HEX	01		; 1 ruppy
		WORD	00A00H+00032H
		HEX	01		; 1 ruppy
		WORD	00B00H+00032H
		HEX	01		; 1 ruppy
		WORD	00C00H+00022H
		HEX	01		; 1 ruppy
		WORD	00C00H+00026H
		HEX	01		; 1 ruppy
		WORD	00C00H+0002CH
		HEX	01		; 1 ruppy
		WORD	00C00H+00030H
		HEX	01		; 1 ruppy
		WORD	00C80H+0000EH
		HEX	05		; bomb
		WORD	00C80H+00034H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD5B	EQU	$
PTCHCD5C	EQU	$
PTCHCD63	EQU	$
PTCHCD64	EQU	$
		WORD	00E00H+0002EH
		HEX	086		; kowareru kabe
;
		WORD	00C80H+00008H+01000H
		HEX	04		; ?
		WORD	00E00H+0000EH+01000H
		HEX	01		; 1 ruppy
		WORD	00E00H+00012H+01000H
		HEX	01		; 1 ruppy
;
		WORD	00D80H+0001AH+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00E00H+00020H+00040H+01000H
		HEX	01		; 1 ruppy
		WORD	00E00H+00032H+00040H+01000H
		HEX	03		; hachi
;.'91/10/.3.[THU]	;
;.'91/10/.3.[THU]			WORD	0FFFFH
;
PTCHCD5D	EQU	$
;.'91/10/.3.[THU]			WORD	00200H+00034H
;.'91/10/.3.[THU]			HEX	05		; bomb
;.'91/10/.3.[THU]			WORD	00380H+00030H
;.'91/10/.3.[THU]			HEX	05		; bomb
;
PTCHCD5E	EQU	$
PTCHCD5F	EQU	$
PTCHCD66	EQU	$
PTCHCD67	EQU	$
;
		WORD	0FFFFH
;
PTCHCD62	EQU	$
		WORD	00400H+00028H
		HEX	04		; ?
		WORD	00B80H+00012H
		HEX	01		; 1 ruppy
		WORD	00C80H+00012H
		HEX	01		; 1 ruppy
		WORD	00C80H+00016H
		HEX	01		; 1 ruppy
		WORD	00D80H+00012H
		HEX	01		; 1 ruppy
		WORD	00E00H+00010H
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD65	EQU	$
		WORD	00900H+00008H
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD68	EQU	$
		WORD	00400H+00020H
		HEX	01		; 1 ruppy
		WORD	00400H+00028H
		HEX	01		; 1 ruppy
		WORD	00900H+00020H
		HEX	03		; hachi
		WORD	00A80H+00032H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD69	EQU	$
		WORD	00400H+00008H
		HEX	01		; 1 ruppy
		WORD	00400H+0000CH
		HEX	01		; 1 ruppy
		WORD	00700H+00028H
		HEX	04		; ?
		WORD	00900H+00026H
		HEX	01		; 1 ruppy
		WORD	00980H+00024H
		HEX	01		; 1 ruppy
		WORD	00980H+00026H
		HEX	01		; 1 ruppy
PTCHCD6A	EQU	$
;
		WORD	0FFFFH
;
PTCHCD6B	EQU	$
		WORD	00300H+00020H
		HEX	04		; ?
		WORD	00300H+00030H
		HEX	84		; kaidan
		WORD	00C00H+0000EH
		HEX	01		; 1 ruppy
		WORD	00C00H+00012H
		HEX	01		; 1 ruppy
		WORD	00C80H+00016H
		HEX	01		; 1 ruppy
		WORD	00C80H+0001AH
		HEX	01		; 1 ruppy
;
		WORD	0FFFFH
;
PTCHCD6C	EQU	$
		WORD	00200H+00026H
		HEX	01		; 1 ruppy
		WORD	00880H+00010H
		HEX	01		; 1 ruppy
		WORD	00880H+0001CH
		HEX	01		; 1 ruppy
		WORD	00900H+00006H
		HEX	01		; 1 ruppy
		WORD	00900H+00012H
		HEX	01		; 1 ruppy
		WORD	00900H+0001EH
		HEX	01		; 1 ruppy
		WORD	00980H+00004H
		HEX	04		; ?
		WORD	00A80H+00034H
		HEX	04		; ?
		WORD	00B00H+00036H
		HEX	04		; ?
		WORD	00B80H+00038H
		HEX	04		; ?
PTCHCD6D	EQU	$
;
PTCHCD6E	EQU	$
;
		WORD	0FFFFH
;
PTCHCD6F	EQU	$
		WORD	00B00H+00024H
		HEX	05		; bomb
		WORD	00B80H+0000CH
		HEX	05		; bomb
		WORD	00B80H+00016H
		HEX	05		; bomb
		WORD	00D00H+00012H
		HEX	05		; bomb
;
		WORD	0FFFFH
;
;
PTCHCD70	EQU	$
PTCHCD71	EQU	$
PTCHCD78	EQU	$
PTCHCD79	EQU	$
		WORD	00400H+00006H+01000H
		HEX	06		; heart
		WORD	00480H+00006H+01000H
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD72	EQU	$
		WORD	00500H+0001CH
		HEX	04		; ?
		WORD	00500H+0001EH
		HEX	04		; ?
		WORD	00580H+0001CH
		HEX	04		; ?
		WORD	00580H+0001EH
		HEX	04		; ?
		WORD	00600H+00026H
		HEX	03		; hachi
		WORD	00A80H+0000CH
		HEX	01		; 1 ruppy
		WORD	00B80H+00010H
		HEX	01		; 1 ruppy
		WORD	00C00H+00008H
		HEX	01		; 1 ruppy
		WORD	00D00H+0000CH
		HEX	01		; 1 ruppy
PTCHCD73	EQU	$
;
		WORD	0FFFFH
;
PTCHCD74	EQU	$
		WORD	00380H+00030H
		HEX	86		; kowareru kabe
		WORD	00400H+0000CH
		HEX	01		; 1 ruppy
		WORD	00580H+00010H
		HEX	01		; 1 ruppy
		WORD	00600H+00014H
		HEX	01		; 1 ruppy
		WORD	00700H+00028H
		HEX	06		; heart
		WORD	00900H+0000AH
		HEX	01		; 1 ruppy
		WORD	00D80H+0001EH
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD75	EQU	$
PTCHCD76	EQU	$
PTCHCD7D	EQU	$
PTCHCD7E	EQU	$
		WORD	00280H+00018H
		HEX	06		; heart
		WORD	00C00H+00010H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD77	EQU	$
		WORD	00280H+00008H
		HEX	86		; kowareru kabe
		WORD	00380H+0002AH
		HEX	06		; heart
		WORD	00400H+0000CH
		HEX	84		; kaidan
		WORD	00500H+00018H
		HEX	05		; bomb
;
		WORD	0FFFFH
;
PTCHCD7A	EQU	$
		WORD	00500H+00026H
		HEX	05		; bomb
		WORD	00500H+0002AH
		HEX	05		; bomb
		WORD	00500H+0002EH
		HEX	05		; bomb
		WORD	00980H+0002CH
		HEX	06		; heart
;
		WORD	0FFFFH
;
PTCHCD7B	EQU	$
		WORD	00400H+00020H
		HEX	06		; heart
		WORD	00600H+0001AH
		HEX	04		; ?
		WORD	00680H+00016H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD7C	EQU	$
		WORD	00280H+00028H
		HEX	05		; bomb
		WORD	00300H+00016H
		HEX	06		; heart
		WORD	00680H+00018H
		HEX	06		; heart
		WORD	00700H+00014H
		HEX	04		; ?
;
		WORD	0FFFFH
;
PTCHCD7F	EQU	$
		WORD	00280H+0002EH
		HEX	04		; ?
		WORD	00C00H+00028H
		HEX	04		; ?
;
		WORD	0FFFFH
;
;
;
;
;
;
BGRSTD		EQU	$
		WORD	atana0,warput,0FFFFH,drutE
;
;
PONTCHK		EQU	$
		STX	<WORK4
;
		LDA	!OSETFG		; obj flag clear
		AND	#0FF00H
		STA	!OSETFG
;
		LDA	<MPDTNO
		CMP	#00080H
		BCS	POCK90		; spot ?
;					; no
		ASL	A
		TAX
		LDA	>CKDTBL,X
		STA	<WORK0
		LDA	#BANK CKDTBL
		STA	<WORK2
		LDY	#0FFFDH
POCK20		EQU	$
		INY
		INY
		INY
		LDA	[<WORK0],Y
		CMP	#0FFFFH
		BEQ	POCK90		; data end ?
;					; no
		AND	#07FFFH
		CMP	<WORK4
		BNE	POCK20		; position ok ?
;					; yes
		INY
		INY
;
		LDA	[<WORK0],Y
		AND	#000FFH
		BEQ	POCK40
		CMP	#00080H
		BCS	POCK40
		TSB	!OSETFG
;
POCK40		EQU	$
		AND	#000FFH
		CMP	#00080H
		BCC	POCK60		;
;					;
		PHA			; (A) push
;
		LDA	!OSETFG		; obj flag clear
		ORA	#000FFH
		STA	!OSETFG
;
		PLA			; (A) puul
		CMP	#00084H
		BEQ	POCK50		; kaidan ?
;					; no
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		AND	#00000010B
		BNE	POCK50		;
;					;
		LDA	<MPDTNO
		CMP	#0005BH
		BNE	POCK47		; piramido ?
;					; yes
		LDA	>OPMODE
		AND	#000FFH
		CMP	#bakud
		BNE	POCK90		; option-bomb ?
;					; yes
POCK47		EQU	$
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		MEM16
		REP	#00100000B	; memory 16bit mode
POCK50		EQU	$
		LDA	[<WORK0],Y
;// 03.10.03 //		AND	#000FFH
;// 03.10.03 //		PHA			; (A) push
;// 03.10.03 //;
;// 03.10.03 //		PLA			; (A) pull
		AND	#0000FH
		TAX
		LDA	>BGRSTD,X
		STA	<WORKE
;
POCK90		EQU	$
		JSR	PCKCHK		; kona maki hart set sub
		LDX	<WORK4
		CLC
		RTS
;
;
POCK60		EQU	$
		JSR	PCKCHK		; kona maki hart set sub
		LDX	<WORK4
		LDA	<WORKE
		SEC
		RTS
;
;---------------------------------------------------------------
PCKCHK		EQU	$		; kona maki hart set sub
		LDA	!AITMBT
		AND	#01000000B
		BEQ	PCKC100
		LDA	#004H
		STA	!OSETFG
PCKC100		EQU	$
		RTS
;
;
		MEM16
		IDX16
;************************************************************************
;*		Minka door open/close			(MKDRPLY)	*
;************************************************************************
MKDRPLY		EQU	$
		BCS	MKDRP40		; open ?
;					; yes
		LDA	#drut0		; minka door open
		JSL	>GDRWRT00Z	; Vramd data set
		LDA	#drut1
		BRA	MKDRP80
;
MKDRP40		EQU	$
		LDA	#drut0+1	; minka door open
		JSL	>GDRWRT00Z	; Vramd data set
		LDA	#drut1+1
MKDRP80		EQU	$
		STA	>GDBUF0+2,X
		LDY	#00002H
		JSL	>GDRWRT01	; Vramd data set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
		RTL
;
;
;
		MEM16
		IDX16
;************************************************************************
;*		Ground  Door write - 0			(GDRWRT00)	*
;************************************************************************
GDRWRT00Z	EQU	$
		STA	>GDBUF0+0,X
GDRWRT00Z1	EQU	$
		LDY	#00000H
GDRWRT00	EQU	$
;// 03.09.25 //		STZ	<WORK8
GDRWRT01	EQU	$
GDRW0400	EQU	$
		PHX			; (X) push
;
		ASL	A
		ASL	A
		ASL	A
		STA	<WORKC
		STY	<WORK0
		TXA
		CLC
		ADC	<WORK0
		STA	<WORK0
		JSR	GRNDOON
;// 03.09.25 //		LDY	<WORK8
		LDY	!VRAMD
		LDA	<WORK2
		XBA
		STA	!VRAMD+002H,Y
		LDA	<WORK2
		CLC
		ADC	#00020H
		XBA
		STA	!VRAMD+00AH,Y
		LDA	#00300H
		STA	!VRAMD+004H,Y
		STA	!VRAMD+00CH,Y
		LDX	<WORKC
		LDA	>MPUNIT+0,X
		STA	!VRAMD+006H,Y
		LDA	>MPUNIT+2,X
		STA	!VRAMD+008H,Y
		LDA	>MPUNIT+4,X
		STA	!VRAMD+00EH,Y
		LDA	>MPUNIT+6,X
		STA	!VRAMD+010H,Y
;
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		TYA
		CLC
		ADC	#00010H
;// 03.09.25 //		STA	<WORK8
		STA	!VRAMD
;
		PLX			; (X) pull
		RTL
;
;
;
;************************************************************************
;*		Ground write subrouyine			(GDRWRT08)	*
;************************************************************************
GDRWRT08	EQU	$
		PHA			; (A) push
		STA	>GDBUF0+0,X
;
		PHX			; (X) push
;
		ASL	A
		ASL	A
		ASL	A
		STA	<WORKC
		TXA
		CLC
		ADC	#00000H
		STA	<WORK0
;
		STZ	<WORK2		;WORK0,1     WORK2,3
		AND	#0003FH
		CMP	#00020H
		BCC	GDRW8020	;
;					;
		LDA	#00400H
		STA	<WORK2
GDRW8020	EQU	$
		LDA	<WORK0
		AND	#00FFFH
		CMP	#00800H
		BCC	GDRW8040	;
;					;
		LDA	<WORK2
		ADC	#00800H-1	;-1(CLC no bun)
		STA	<WORK2
GDRW8040	EQU	$
		LDA	<WORK0
		AND	#0001FH
		ADC	<WORK2
		STA	<WORK2
		LDA	<WORK0
		AND	#00780H
		LSR	A
		ADC	<WORK2
		STA	<WORK2
;
;// 03.09.25 //		LDY	<WORK8
		LDY	!VRAMD
		XBA
		STA	!VRAMD+002H,Y
		LDA	<WORK2
		CLC
		ADC	#00020H
		XBA
		STA	!VRAMD+00AH,Y
		LDA	#00300H
		STA	!VRAMD+004H,Y
		STA	!VRAMD+00CH,Y
		LDX	<WORKC
		LDA	>MPUNIT+0,X
		STA	!VRAMD+006H,Y
		LDA	>MPUNIT+2,X
		STA	!VRAMD+008H,Y
		LDA	>MPUNIT+4,X
		STA	!VRAMD+00EH,Y
		LDA	>MPUNIT+6,X
		STA	!VRAMD+010H,Y
;
;;;;;;;;		LDA	#0FFFFH
;;;;;;;;		STA	!VRAMD+012H,Y	; end code
;
		TYA
		CLC
		ADC	#00010H
;// 03.09.25 //		STA	<WORK8
		STA	!VRAMD
;
		PLX			; (X) pull
		INX
		INX
		PLA			; (A) pull
		INC	A
		RTS
;
;
;
;
;************************************************************************
;*		Ground vram address get			(GRNDOON)	*
;************************************************************************
GRNDOON		EQU	$		;SCRPNT ---> VRAM ADR
		STZ	<WORK2		;WORK0,1     WORK2,3
		LDA	<WORK0
		AND	#0003FH
		CMP	#00020H
		BCC	GRNDO10
		LDA	#00400H
		STA	<WORK2
GRNDO10		EQU	$
		LDA	<WORK0
		AND	#00FFFH
		CMP	#00800H
		BCC	GRNDO20
		LDA	<WORK2
		ADC	#00800H-1		;-1(CLC no bun)
		STA	<WORK2
GRNDO20		EQU	$
		LDA	<WORK0
		AND	#0001FH
		ADC	<WORK2
		STA	<WORK2
		LDA	<WORK0
		AND	#00780H
		LSR	A
		ADC	<WORK2
		STA	<WORK2
		RTS
;
;
;
;
;
;
;************************************************************************
;*		Kame-iwa warp unit set			(KMWWST)	*
;************************************************************************
KMWWST		EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDA	#warput
		LDX	#00720H
		STA	>GDBUF0,X
		JSL	>GDMMSET	; ground memory
;
		JSL	>GDRWRT00Z1	; Vramd data set
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
		RTL
;
;
;
;
;** 03.03.06 **;
;** 03.03.06 **;************************************************************************
;** 03.03.06 **;*		Kagerou move				(KAGEMV)	*
;** 03.03.06 **;************************************************************************
;** 03.03.06 **KAGEMV		EQU	$
;** 03.03.06 **		INC	<JRSBPT
;** 03.03.06 **;
;** 03.03.06 **		LDA	#11000000B
;** 03.03.06 **		STA	<WD420C		; H-DMA on
;** 03.03.06 **KAGEMV1		EQU	$
;** 03.03.06 **		JSL	>CTPCCNG	; trip CG. chnge
;** 03.03.06 **;
;** 03.03.06 **		LDA	<FCNT
;** 03.03.06 **		LSR	A
;** 03.03.06 **		BCS	KAGEI80		; move ok ?
;** 03.03.06 **;					; yes
;** 03.03.06 **		MEM16
;** 03.03.06 **		IDX16
;** 03.03.06 **		REP	#00110000B	; memory,index 16bit mode
;** 03.03.06 **;
;** 03.03.06 **		LDX	#001A0H
;** 03.03.06 **		LDY	#001B0H
;** 03.03.06 **		LDA	#00002H
;** 03.03.06 **		STA	<WORK0
;** 03.03.06 **		LDA	#00003H
;** 03.03.06 **		STA	<WORK2
;** 03.03.06 **KGMV20		EQU	$
;** 03.03.06 **		LDA	!HDMABF+00H,X
;** 03.03.06 **		STA	!HDMABF+00H,Y
;** 03.03.06 **		STA	!HDMABF+04H,Y
;** 03.03.06 **		STA	!HDMABF+08H,Y
;** 03.03.06 **		STA	!HDMABF+0CH,Y
;** 03.03.06 **		TXA
;** 03.03.06 **		SEC
;** 03.03.06 **		SBC	#00010H
;** 03.03.06 **		TAX
;** 03.03.06 **		DEC	<WORK0
;** 03.03.06 **		BNE	KGMV40		; next buffer ?
;** 03.03.06 **;					; yes
;** 03.03.06 **		LDA	#00008H
;** 03.03.06 **		STA	<WORK0
;** 03.03.06 **KGMV40		EQU	$
;** 03.03.06 **		TYA
;** 03.03.06 **		SEC
;** 03.03.06 **		SBC	#00010H
;** 03.03.06 **		TAY
;** 03.03.06 **		DEC	<WORK2
;** 03.03.06 **		BNE	KGMV60		; next buffer ?
;** 03.03.06 **;					; yes
;** 03.03.06 **		LDA	#00008H
;** 03.03.06 **		STA	<WORK2
;** 03.03.06 **KGMV60		EQU	$
;** 03.03.06 **		CPY	#00000H
;** 03.03.06 **		BNE	KGMV20		; end ?
;** 03.03.06 **;					; yes
;** 03.03.06 **		LDX	!KGMUKI
;** 03.03.06 **		LDA	!KGXPBF
;** 03.03.06 **		CLC
;** 03.03.06 **		ADC	!KGPOWR,X
;** 03.03.06 **		PHA			; (A) push
;** 03.03.06 **		SEC
;** 03.03.06 **		SBC	!KGLMTD,X
;** 03.03.06 **		EOR	!KGLMTD,X
;** 03.03.06 **		BMI	KGMV140		; limit ?
;** 03.03.06 **;					; yes
;** 03.03.06 **		STZ	!KGXPOS
;** 03.03.06 **		STZ	!KGXPCT
;** 03.03.06 **		LDA	!KGMUKI
;** 03.03.06 **		EOR	#00002H
;** 03.03.06 **		STA	!KGMUKI
;** 03.03.06 **;;;;;;;;		CMP	<SCCH2
;** 03.03.06 **		BNE	KGMV100		; 
;** 03.03.06 **;					;
;** 03.03.06 **		LDA	#00004H
;** 03.03.06 **		LDY	#00040H
;** 03.03.06 **		LDX	!KGOVLF
;** 03.03.06 **		CPX	#00016H
;** 03.03.06 **		BNE	KGMV80		;
;** 03.03.06 **;					;
;** 03.03.06 **		LDA	#0FFFCH
;** 03.03.06 **		LDY	#0FFC0H
;** 03.03.06 **KGMV80		EQU	$
;** 03.03.06 **		STA	<WORK0
;** 03.03.06 **		STY	<WORK2
;** 03.03.06 **		LDX	!KGMUKI
;** 03.03.06 **;
;** 03.03.06 **		LDA	!KGPOWR+2
;** 03.03.06 **;;;;;;;;		CMP	#000E0H
;** 03.03.06 **;;;;;;;;		BNE	KGMV80		; limit ?
;** 03.03.06 **;;;;;;;;;					; yes
;** 03.03.06 **;;;;;;;;		PLA			; (A) pull
;** 03.03.06 **;;;;;;;;;
;** 03.03.06 **;;;;;;;;		LDA	#00016H
;** 03.03.06 **;;;;;;;;		STA	<DPMAIN
;** 03.03.06 **;;;;;;;;		STZ	<WDMAIN
;** 03.03.06 **;;;;;;;;;
;** 03.03.06 **;;;;;;;;		SEP	#00110000B	; memory,index 8bit mode
;** 03.03.06 **;;;;;;;;;
;** 03.03.06 **;;;;;;;;		STZ	<WD420C		; H-DMA off
;** 03.03.06 **;;;;;;;;		INC	<JRSBPT
;** 03.03.06 **;;;;;;;;		RTL
;** 03.03.06 **;;;;;;;;;
;** 03.03.06 **;;;;;;;;KGMV80		EQU	$
;** 03.03.06 **		CLC
;** 03.03.06 **		ADC	<WORK0
;** 03.03.06 **		STA	!KGPOWR+2
;** 03.03.06 **		EOR	#0FFFFH
;** 03.03.06 **		INC	A
;** 03.03.06 **		STA	!KGPOWR
;** 03.03.06 **		LDA	!KGLMTD+2
;** 03.03.06 **		CLC
;** 03.03.06 **		ADC	<WORK2
;** 03.03.06 **		STA	!KGLMTD+2
;** 03.03.06 **		EOR	#0FFFFH
;** 03.03.06 **		INC	A
;** 03.03.06 **		STA	!KGLMTD
;** 03.03.06 **KGMV100		EQU	$
;** 03.03.06 **		PLA			; (A) pull
;** 03.03.06 **		LDA	!KGLMTD,X
;** 03.03.06 **		PHA			; (A) push
;** 03.03.06 **KGMV140		EQU	$
;** 03.03.06 **		PLA			; (A) pull
;** 03.03.06 **		STA	!KGXPBF
;** 03.03.06 **		CLC
;** 03.03.06 **		ADC	!KGXPCT
;** 03.03.06 **		PHA			; (A) push
;** 03.03.06 **		AND	#000FFH
;** 03.03.06 **		STA	!KGXPCT
;** 03.03.06 **		PLA			; (A) pull
;** 03.03.06 **		BPL	KGMV180		;
;** 03.03.06 **;					;
;** 03.03.06 **		ORA	#000FFH
;** 03.03.06 **		BRA	KGMV200
;** 03.03.06 **;
;** 03.03.06 **KGMV180		EQU	$
;** 03.03.06 **		AND	#0FF00H
;** 03.03.06 **KGMV200		EQU	$
;** 03.03.06 **		XBA
;** 03.03.06 **		CLC
;** 03.03.06 **		ADC	!KGXPOS
;** 03.03.06 **		STA	!KGXPOS
;** 03.03.06 **		CLC
;** 03.03.06 **		ADC	<SCCH2
;** 03.03.06 **		STA	!HDMABF+00H
;** 03.03.06 **		STA	!HDMABF+04H
;** 03.03.06 **		STA	!HDMABF+08H
;** 03.03.06 **		STA	!HDMABF+0CH
;** 03.03.06 **;
;** 03.03.06 **		IDX8
;** 03.03.06 **		SEP	#00010000B	; index 8bit mode
;** 03.03.06 **;
;** 03.03.06 **		LDA	!KGOVLF
;** 03.03.06 **		LDX	!KGOVLP
;** 03.03.06 **		BEQ	KGMV300		;
;** 03.03.06 **;					;
;** 03.03.06 **		EOR	#00003H
;** 03.03.06 **		XBA
;** 03.03.06 **		ORA	!KGOVLF
;** 03.03.06 **KGMV300		EQU	$
;** 03.03.06 **;// 03.02.05 //		LDA	#00215H		;// 02.12.06 //
;** 03.03.06 **;// 03.02.05 //		STA	<DPMAIN
;** 03.03.06 **		DEC	!KGOVLC
;** 03.03.06 **		BNE	KGMV380		;
;** 03.03.06 **;					;
;** 03.03.06 **		LDA	!KGOVLF
;** 03.03.06 **		CMP	#00016H
;** 03.03.06 **		BEQ	KGMV400		;
;** 03.03.06 **;					;
;** 03.03.06 **		CMP	#00215H
;** 03.03.06 **		BEQ	KGMV320		;
;** 03.03.06 **;					;
;** 03.03.06 **		LDA	!KGOVLP
;** 03.03.06 **		EOR	#00001H
;** 03.03.06 **		STA	!KGOVLP
;** 03.03.06 **		BEQ	KGMV340		;
;** 03.03.06 **;					;
;** 03.03.06 **		DEC	!KGOVLD
;** 03.03.06 **		BNE	KGMV340		; over-lap change ?
;** 03.03.06 **;					; yes
;** 03.03.06 **		LDA	#00215H
;** 03.03.06 **		STA	!KGOVLF
;** 03.03.06 **		LDA	#00008H
;** 03.03.06 **		STA	!KGOVLC
;** 03.03.06 **		BRA	KGMV380
;** 03.03.06 **;
;** 03.03.06 **KGMV320		EQU	$
;** 03.03.06 **;// 02.12.06 //		LDX	#01100010B
;** 03.03.06 **;// 02.12.06 //		STX	<WD2131
;** 03.03.06 **;
;** 03.03.06 **		LDA	#00016H
;** 03.03.06 **		STA	!KGOVLF
;** 03.03.06 **		LDA	#00001H
;** 03.03.06 **		STA	!KGOVLD
;** 03.03.06 **KGMV340		EQU	$
;** 03.03.06 **		LDA	!KGOVLD
;** 03.03.06 **		STA	!KGOVLC
;** 03.03.06 **KGMV380		EQU	$
;** 03.03.06 **		MEM8
;** 03.03.06 **		IDX8
;** 03.03.06 **		SEP	#00110000B	; memory,index 8bit mode
;** 03.03.06 **;
;** 03.03.06 **;// 03.03.06 //		LDA	!KGOVLD
;** 03.03.06 **;// 03.03.06 //		CMP	#005H
;** 03.03.06 **;// 03.03.06 //		BNE	KGMV390		; character change ?
;** 03.03.06 **;// 03.03.06 //;					; yes
;** 03.03.06 **;// 03.03.06 //		JSL	>WGBGCNG
;** 03.03.06 **KGMV390		EQU	$
;** 03.03.06 **		RTL
;** 03.03.06 **;
;** 03.03.06 **;
;** 03.03.06 **		MEM16
;** 03.03.06 **		IDX16
;** 03.03.06 **KGMV400		EQU	$
;** 03.03.06 **		LDA	!KGOVLP
;** 03.03.06 **		EOR	#00001H
;** 03.03.06 **		STA	!KGOVLP
;** 03.03.06 **		BEQ	KGMV340		;
;** 03.03.06 **;					;
;** 03.03.06 **		LDA	!KGOVLD
;** 03.03.06 **		INC	A
;** 03.03.06 **		STA	!KGOVLD
;** 03.03.06 **		STA	!KGOVLC
;** 03.03.06 **;// 03.01.30 //		CMP	#00004H
;** 03.03.06 **;// 03.01.30 //		BNE	KGMV420		;
;** 03.03.06 **;// 03.01.30 //;					; 
;** 03.03.06 **;// 03.01.30 //		STZ	!KGOVLP
;** 03.03.06 **;// 03.01.30 //		LDA	#0000CH
;** 03.03.06 **;// 03.01.30 //		STA	!KGOVLC
;** 03.03.06 **;// 03.01.30 //;
;** 03.03.06 **;// 03.01.30 //		SEP	#00110000B	; memory,index 8bit mode
;** 03.03.06 **;// 03.01.30 //		RTL
;** 03.03.06 **;// 03.01.30 //;
;** 03.03.06 **;// 03.01.30 //KGMV420		EQU	$
;** 03.03.06 **;// 03.03.06 //		CMP	#00002H
;** 03.03.06 **;// 03.03.06 //		BNE	KGMV340		; end ?
;** 03.03.06 **;					; yes
;** 03.03.06 **;*** 03.02.05 ***		LDA	#00016H
;** 03.03.06 **;*** 03.02.05 ***		STA	<DPMAIN
;** 03.03.06 **;*** 03.02.05 ***		STZ	<WDMAIN
;** 03.03.06 **;
;** 03.03.06 **		MEM8
;** 03.03.06 **		IDX8
;** 03.03.06 **		SEP	#00110000B	; memory,index 8bit mode
;** 03.03.06 **;
;** 03.03.06 **;// 02.12.11 //		LDA	#10000000B
;** 03.03.06 **;// 02.12.11 //		STA	<WD2130
;** 03.03.06 **;// 02.12.11 //		LDA	#00000010B
;** 03.03.06 **;// 02.12.11 //		STA	<WD2131
;** 03.03.06 **;// 02.12.11 //		STZ	<WD420C
;** 03.03.06 **;// 03.03.06 //		INC	<JRSBPT
;** 03.03.06 **		RTL
;** 03.03.06 **;
;// 02.11.30 //		IDX8
;// 02.11.30 //		SEP	#00010000B	; index 8bit mode
;// 02.11.30 //;
;// 02.11.30 //		LDA	!KGOVLF
;// 02.11.30 //		STA	<DPMAIN
;// 02.11.30 //		DEC	!KGOVLC
;// 02.11.30 //		BNE	KGMV380		;
;// 02.11.30 //;					;
;// 02.11.30 //		CMP	#00016H
;// 02.11.30 //		BEQ	KGMV400		;
;// 02.11.30 //;					;
;// 02.11.30 //		CMP	#00215H
;// 02.11.30 //		BEQ	KGMV320		;
;// 02.11.30 //;					;
;// 02.11.30 //		LDA	#00200H
;// 02.11.30 //		TSB	<DPMAIN
;// 02.11.30 //		DEC	!KGOVLD
;// 02.11.30 //		BNE	KGMV340		; over-lap change ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	#00215H
;// 02.11.30 //		STA	!KGOVLF
;// 02.11.30 //		LDA	#00008H
;// 02.11.30 //		STA	!KGOVLC
;// 02.11.30 //		BRA	KGMV380
;// 02.11.30 //;
;// 02.11.30 //KGMV320		EQU	$
;// 02.11.30 //		LDX	#01100010B
;// 02.11.30 //		STX	<WD2131
;// 02.11.30 //;
;// 02.11.30 //		LDA	#00016H
;// 02.11.30 //		STA	!KGOVLF
;// 02.11.30 //		LDA	#00001H
;// 02.11.30 //		STA	!KGOVLD
;// 02.11.30 //KGMV340		EQU	$
;// 02.11.30 //		LDA	!KGOVLD
;// 02.11.30 //		STA	!KGOVLC
;// 02.11.30 //KGMV380		EQU	$
;// 02.11.30 //		SEP	#00110000B	; memory,index 8bit mode
;// 02.11.30 //		RTL
;// 02.11.30 //;
;// 02.11.30 //;
;// 02.11.30 //KGMV400		EQU	$
;// 02.11.30 //		LDA	#00100H
;// 02.11.30 //		TSB	<DPMAIN
;// 02.11.30 //		LDA	!KGOVLD
;// 02.11.30 //		INC	A
;// 02.11.30 //		STA	!KGOVLD
;// 02.11.30 //		STA	!KGOVLC
;// 02.11.30 //		CMP	#00018H
;// 02.11.30 //		BNE	KGMV440		;
;// 02.11.30 //;					; 
;// 02.11.30 //		LDA	#00030H
;// 02.11.30 //		STA	!KGOVLC
;// 02.11.30 //		BRA	KGMV380
;// 02.11.30 //;
;// 02.11.30 //KGMV440		EQU	$
;// 02.11.30 //		CMP	#00019H
;// 02.11.30 //		BNE	KGMV340		; end ?
;// 02.11.30 //;					; yes
;// 02.11.30 //		LDA	#00016H
;// 02.11.30 //		STA	<DPMAIN
;// 02.11.30 //		STZ	<WDMAIN
;// 02.11.30 //;
;// 02.11.30 //		SEP	#00110000B	; memory,index 8bit mode
;// 02.11.30 //;
;// 02.11.30 //		STZ	<WD420C
;// 02.11.30 //		INC	<JRSBPT
;// 02.11.30 //		RTL
;
;
;
;
;************************************************************************
;************************************************************************
;************************************************************************
;*		Ground information check		(GDINFCK)	*
;************************************************************************
GDINFTBL	EQU	$
gdi000		WORD	SHDNOPEN	; 0 : ura-shinden
gdi100		WORD	MORIOPEN	; 1 : ura-mori
gdi200		WORD	NUMAOPEN	; 2 : ura-numa
gdi300		WORD	KAMEOPEN	; 3 : ura-kame-iwa
gdi400		WORD	GTWROPEN	; 4 : ura-yama-tower
;
gif1		EQU	(gdi000-gdi000)/2+1
gif2		EQU	(gdi100-gdi000)/2+1
gif3		EQU	(gdi200-gdi000)/2+1
gif4		EQU	(gdi300-gdi000)/2+1
gif5		EQU	(gdi400-gdi000)/2+1
;
;
;
GDINFCK		EQU	$
		STA	!PYALSP
		STA	!ENSTFG		; player,enemy stop
		STA	!GMAPDF
;
		DEC	A
		ASL	A
		TAX
		JSR	(GDINFTBL,X)
		RTL
;
;
;
;
;************************************************************************
;*		Ura-shinden enter write			(SHDNOPEN)	*
;************************************************************************
SDNTBL		EQU	$
		WORD	SDNOP000	; 0 :
		WORD	SDNOP100	; 1 :
		WORD	SDNOP200	; 2 :
		WORD	SDNOP300	; 3 :
		WORD	SDNOP400	; 4 :
;
;
SHDNOPEN	EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(SDNTBL,X)
;
;
SDNOP000	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#040H
		BNE	SDNOP90		; wait end ?
;					; yes
		JSR	GTROP090
;
		LDA	>GNDTBL+05EH
		ORA	#00100000B
		STA	>GNDTBL+05EH
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#001E6H
		LDA	#ushduB
		JSL	>GDRWRT00Z	; data write
;
		LDX	#002EAH
		LDA	#ushduA
		JSR	GDRWRT08	; data write
;
		LDX	#0026AH
		LDA	#ushdu0
		JSR	GDRWRT08	; data write
SDNOP40		EQU	$
		LDX	#002EAH
SDNOP80		EQU	$
		JSR	GDRWRT08	; data write
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
SDNOP90		EQU	$
		RTS
;
;
SDNOP100	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	SDNOP90		; wait end ?
;					; yes
		JSR	GTROP090
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0026AH
		LDA	#ushdu2
		JSL	>GDRWRT00Z	; data write
;
		LDA	#ushdu3
		BRA	SDNOP40
;
;
		MEM8
		IDX8
SDNOP200	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	SDNOP90		; wait end ?
;					; yes
		JSR	GTROP090
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0026AH
		LDA	#ushdu4
		JSL	>GDRWRT00Z	; data write
;
		LDX	#002EAH
		LDA	#ushdu5
		JSR	GDRWRT08	; data write
;
		LDX	#0036AH
		BRA	SDNOP80
;
;
		MEM8
		IDX8
SDNOP300	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	SDNOP90		; wait end ?
;					; yes
		JSR	GTROP090
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0026AH
		LDA	#ushdu7
		JSL	>GDRWRT00Z	; data write
;
		LDX	#002EAH
		LDA	#ushdu8
		JSR	GDRWRT08	; data write
;
		LDX	#0036AH
		BRA	SDNOP80
;
;
		MEM8
		IDX8
SDNOP400	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	SDNOP90		; wait end ?
;					; yes
		JMP	KMEOP500	; END set
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ura-mori enter write			(MORIOPEN)	*
;************************************************************************
MRITBL		EQU	$
		WORD	MRIOP000	; 0 :
		WORD	MRIOP100	; 1 :
		WORD	MRIOP200	; 2 :
		WORD	MRIOP300	; 3 :
		WORD	MRIOP400	; 4 :
;
;
;
MORIOPEN	EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(MRITBL,X)
;
;
MRIOP000	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#004H
		BNE	MRIOP099	; wait end ?
;					; yes
		INC	<JRSBPT
		STZ	<CWORK0
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00812H
		LDA	#umgtu0
		JSL	>GDRWRT00Z	; Vramd data set
;
		LDX	#00814H
		LDA	#umgtu0
		JSR	GDRWRT08	; Vramd data set
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		ORA	#00100000B
		STA	>GNDTBL,X
MRIOP90		EQU	$
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
;
		LDA	#016H
		STA	!SOUND3		; <sound3>
MRIOP099	EQU	$
		RTS
;
;
MRIOP100	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#00CH
		BNE	MRIOP099	; wait end ?
;					; yes
		INC	<JRSBPT
		STZ	<CWORK0
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00790H
		LDA	#umgtu1
		JSL	>GDRWRT00Z	; Vramd data set
;
		LDX	#00792H
		LDA	#umgtu2
		JSR	GDRWRT08	; Vramd data set
;
		JSR	GDRWRT08	; Vramd data set
;
MRIOP140	EQU	$
		JSR	GDRWRT08	; Vramd data set
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
;
		LDA	#016H
		STA	!SOUND3		; <sound3>
MRIOP190	EQU	$
		RTS
;
;
MRIOP200	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#00CH
		BNE	MRIOP099	; wait end ?
;					; yes
		INC	<JRSBPT
		STZ	<CWORK0
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00710H
		LDA	#umgtu1
		JSL	>GDRWRT00Z	; Vramd data set
;
		LDX	#00712H
		LDA	#umgtu2
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		BRA	MRIOP140
;
;
		MEM8
		IDX8
MRIOP300	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#00CH
		BNE	MRIOP099	; wait end ?
;					; yes
		INC	<JRSBPT
		STZ	<CWORK0
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00590H
		LDA	#umgtuB
		JSL	>GDRWRT00Z	; Vramd data set
;
		LDX	#00596H
		LDA	#umgtuC
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00610H
		LDA	#umgtu7
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00692H
		LDA	#umgtu5
		JSR	GDRWRT08	; Vramd data set
		JMP	MRIOP140
;
;
		MEM8
		IDX8
MRIOP400	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#00CH
		BNE	MRIOP190	; wait end ?
;					; yes
		INC	<JRSBPT
		STZ	<CWORK0
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00590H
		LDA	#umgt10
		JSL	>GDRWRT00Z	; Vramd data set
;
		LDX	#00596H
		LDA	#umgt11
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00610H
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00692H
		JSR	GDRWRT08	; Vramd data set
		JSR	MRIOP140
;
		JMP	KMEOP500	; END set
;

;
;
;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ura-numa enter write			(NUMAOPEN)	*
;************************************************************************
NMATBL		EQU	$
		WORD	NMAOP000	; 0 :
		WORD	NMAOP100	; 1 :
		WORD	NMAOP100	; 2 :
		WORD	NMAOP200	; 3 :
		WORD	NMAOP300	; 4 :
		WORD	NMAOP400	; 5 :
;
;
;
NUMAOPEN	EQU	$
		LDA	<JRSBPT
		CMP	#002H
		BCC	NUMA040		; yure ok ?
;					; yes
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<FCNT
		AND	#00001H
		ASL	A
		TAX
		LDA	>BWYRXD,X
		STA	!YUREXD
		LDA	>BWYRYD,X
		STA	!YUREYD
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
NUMA040		EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(NMATBL,X)
;
;
;
NMARNBT		EQU	$
		BYTE	11111111B,11110111B
		BYTE	11110111B,11111011B
		BYTE	11101110B,11101110B
		BYTE	11101110B,11101110B
		BYTE	11101110B,11101110B
		BYTE	10101010B,10101010B
		BYTE	10101010B,10101010B
		BYTE	10101010B,10101010B
		BYTE	10101010B,10001000B
		BYTE	10001000B,10001000B
		BYTE	10001000B,10000000B
		BYTE	10000000B,10000000B
		BYTE	10000000B,10000000B
;
;
NMAOP000	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BCC	NMAOP080	;
;					;
		SEC
		SBC	#020H
		CMP	#0CFH
		BNE	NMAOP020	; end ?
;					; yes
		INC	<JRSBPT
		STZ	<CWORK0
NMAOP020	EQU	$
		PHA			; (A) push
		AND	#00000111B
		ASL	A
		TAY
		PLA			; (A) pull
		AND	#11111000B
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	BITCD0+1,Y
		STZ	<DPSUB
		AND	>NMARNBT,X
		BEQ	NMAOP080	;
;					;
		INC	<DPSUB
NMAOP080	EQU	$
		RTS
;
;
;
NMAOP100	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#010H
		BNE	NMAOP120	;
;					;
		INC	<JRSBPT
		LDY	#007H
		STY	!SOUND1
;// 03.09.16 //		STY	!SVSND1
NMAOP120	EQU	$
		CMP	#048H
		BNE	NMAOP180	; wait end ?
;					; yes
		JSR	GTROP090
;
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		ORA	#00100000B
		STA	>GNDTBL,X
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00622H
		LDA	#numu00
		JSL	>GDRWRT00Z	; Vramd data set
		LDX	#00624H
		LDA	#numu01
NMAOP130	EQU	$
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#006A2H
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00722H
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
NMAOP140	EQU	$
		JSR	GDRWRT08	; Vramd data set
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
NMAOP180	EQU	$
		RTS
;
;
NMAOP200	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#048H
		BNE	NMAOP180	; wait end ?
;					; yes
		JSR	GTROP090
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#005A2H
		LDA	#numu10
		JSL	>GDRWRT00Z	; Vramd data set
		LDX	#005A4H
		LDA	#numu11
NMAOP240	EQU	$
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00622H
		JSR	GDRWRT08	; Vramd data set
		BRA	NMAOP130
;
;
		MEM8
		IDX8
NMAOP300	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#050H
		BNE	NMAOP180	; wait end ?
;					; yes
		JSR	GTROP090
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00522H
		LDA	#numu20
		JSL	>GDRWRT00Z	; Vramd data set
		LDX	#00524H
		LDA	#numu21
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#005A2H
		JSR	GDRWRT08	; Vramd data set
		BRA	NMAOP240
;
;
		MEM8
		IDX8
NMAOP400	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#080H
		BNE	NMAOP480	; wait end ?
;					; yes
		JSR	KMEOP500	; END set
;
		LDA	#005H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1
NMAOP480	EQU	$
		RTS
;
;
;
;
;************************************************************************
;*		Ura-kame-iwa enter write		(KAMEOPEN)	*
;************************************************************************
KMETBL		EQU	$
		WORD	KMEOP000	; 0 :
		WORD	KMEOP020	; 1 :
		WORD	KMEOP040	; 2 :
		WORD	KMEOP060	; 3 :
		WORD	KMEOP100	; 4 :
		WORD	KMEOP200	; 5 :
		WORD	KMEOP300	; 6 :
		WORD	KMEOP400	; 7 :
		WORD	KMEOP500	; 7 :
;
;
;
KAMEOPEN	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	<FCNT
		AND	#00001H
		ASL	A
		TAX
		LDA	>BWYRXD,X
		STA	!YUREXD
		LDA	>BWYRYD,X
		STA	!YUREYD
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(KMETBL,X)
;
;
;
KMEOP000	EQU	$
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		ORA	#00100000B
		STA	>GNDTBL,X
;
		LDA	#00000000B
		JSL	>WD2132ST	; R.G.B clear
;
		LDA	#010H
		BRA	KMEOP080
;
KMEOP020	EQU	$
		LDA	#014H
		BRA	KMEOP080
;
KMEOP040	EQU	$
		LDA	#018H
		BRA	KMEOP080
;
KMEOP060	EQU	$
		LDA	#01CH
KMEOP080	EQU	$
		STA	!VRAMD2+0
		STZ	!VRAMD2+1	; Vram address set
;
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDA	#0FE47H
		STA	!VRAMD2+2	; count set
;
		LDA	#001E3H
		STA	!VRAMD2+4	; data set
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		LDA	#0FFH
		STA	!VRAMD2+6
;
		INC	<JRSBPT
		LDA	#VT01
		STA	<VRFLG		; BG.1 clear
		RTS
;
;
KMEOP100	EQU	$
		MEM16
		REP	#00100000B	; memory 16bit mode
;
		LDX	#00EH
		LDA	#00000H
KMEOP140	EQU	$
		STA	>CGWORK+0B0H,X
		STA	>CGRAM+0D0H,X
		DEX
		DEX
		BPL	KMEOP140	;
;					;
		LDA	<SCCV2
		STA	<SCCV1
		LDA	<SCCH2
		STA	<SCCH1
;
		MEM8
		SEP	#00100000B	; memory 8bit mode
;
		INC	<JRSBPT
		INC	<CGVMAF
		RTS
;
;
;
KMEOP200	EQU	$
		JSR	KMEOP800
;
		LDA	#00000001B
		STA	<DPSUB
		LDA	#00000010B
		STA	<WD2130
		LDA	#00100010B
		STA	<WD2131
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#00000H
KMEOP220	EQU	$
		LDA	!VRAMD2+0,X
		ORA	#00010H
		STA	!VRAMD2+0,X
;
		LDA	!VRAMD2+4,X
		CMP	#008AAH
		BNE	KMEOP240	;
;
		LDA	#001E3H
		STA	!VRAMD2+4,X
KMEOP240	EQU	$
		LDA	!VRAMD2+6,X
		CMP	#008AAH
		BNE	KMEOP260	;
;
		LDA	#001E3H
		STA	!VRAMD2+6,X
KMEOP260	EQU	$
		INX
		INX
		INX
		INX
		INX
		INX
		INX
		INX
		CPX	<WORK0
		BNE	KMEOP220	;
;					;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		STZ	<CWORK0
		INC	<JRSBPT
		RTS
;
;
;
KMEOP300	EQU	$
		LDA	<FCNT
		LSR	A
		BCS	KMEOP380	;
;					;
		LDA	<CWORK0
		AND	#00000111B
		BNE	KMEOP360	; fade in ?
;					; yes
		JSL	>K_I_CCNG	; kame-iwa fade in
;
		LDA	#002H
		STA	!SOUND3		; <sound3>
KMEOP360	EQU	$
		DEC	<CWORK0
		BNE	KMEOP380	; fade in end ?
;					; yes
		LDA	#030H
		STA	<CWORK0
;
		INC	<JRSBPT
KMEOP380	EQU	$
		RTS
;
;
;
KMEOP400	EQU	$
		LDA	<FCNT
		LSR	A
		BCS	KMEOP420	;
;					;
		LDA	<CWORK0
		AND	#00000111B
		BNE	KMEOP420	; fade in ?
;					; yes
		LDA	#002H
		STA	!SOUND3		; <sound3>
KMEOP420	EQU	$
		DEC	<CWORK0
		BNE	KMEOP380	; wait end ?
;					; yes
		JSR	KMEOP800
;
		STZ	<DPSUB
		LDA	#10000010B
		STA	<WD2130
		LDA	#00100000B
		STA	<WD2131
;
		INC	<JRSBPT
;
		LDA	#005H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1
		RTS
;
;
;
KMEOP500	EQU	$
		LDA	#01BH
		STA	!SOUND3		; <sound3>
;
		STZ	!GDINFF
		STZ	<JRSBPT
		STZ	!GMAPDF
;
		STZ	!PYALSP
		STZ	!ENSTFG
;
		STZ	!YUREXD
		STZ	!YUREXD+1
		STZ	!YUREYD
		STZ	!YUREYD+1
		RTS
;
;
;
KMEOP800	EQU	$
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0099EH
		LDA	#kamu10
		JSL	>GDRWRT00Z	; Vramd data set
		LDX	#009A0H
		LDA	#kamu11
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00A1EH
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00A9EH
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
;
		LDX	#00B1EH
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		JSR	GDRWRT08	; Vramd data set
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		TYA
		CLC
		ADC	#00010H
		STA	<WORK0
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
		STA	!GMAPDF
		RTS
;
;
;
;
;// 03.09.10 //;
;// 03.09.10 //;************************************************************************
;// 03.09.10 //;*		Ura-kame-iwa enter write		(KAMEOPEN)	*
;// 03.09.10 //;************************************************************************
;// 03.09.10 //KAMEOPEN	EQU	$
;// 03.09.10 //		MEM16
;// 03.09.10 //		REP	#00100000B	; memory 16bit mode
;// 03.09.10 //;
;// 03.09.10 //		LDA	<FCNT
;// 03.09.10 //		AND	#00001H
;// 03.09.10 //		ASL	A
;// 03.09.10 //		TAX
;// 03.09.10 //		LDA	>BWYRXD,X
;// 03.09.10 //		STA	!YUREXD
;// 03.09.10 //		LDA	>BWYRYD,X
;// 03.09.10 //		STA	!YUREYD
;// 03.09.10 //;
;// 03.09.10 //		MEM8
;// 03.09.10 //		SEP	#00100000B	; memory 8bit mode
;// 03.09.10 //;
;// 03.09.10 //		LDA	<FCNT
;// 03.09.10 //		AND	#00000111B
;// 03.09.10 //		BEQ	KMEOP000	;
;// 03.09.10 //;					;
;// 03.09.10 //		RTS
;// 03.09.10 //;
;// 03.09.10 //;
;// 03.09.10 //KMEOP000	EQU	$
;// 03.09.10 //		LDA	<FCNT
;// 03.09.10 //		AND	#00001000B
;// 03.09.10 //		BNE	KMEOP100	;
;// 03.09.10 //;					;
;// 03.09.10 //		MEM16
;// 03.09.10 //		IDX16
;// 03.09.10 //		REP	#00110000B	; memory,index 16bit mode
;// 03.09.10 //;
;// 03.09.10 //		LDX	#0091EH
;// 03.09.10 //		LDA	#kamu01
;// 03.09.10 //		JSL	>GDRWRT00Z	; Vramd data set
;// 03.09.10 //		LDX	#00920H
;// 03.09.10 //		LDA	#kamu07
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		LDA	#kamu01
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#0099EH
;// 03.09.10 //		LDA	#kamu02
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#00A1EH
;// 03.09.10 //		LDA	#kamu01
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#00A9EH
;// 03.09.10 //		LDA	#kamu03
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JMP	NMAOP140
;// 03.09.10 //;
;// 03.09.10 //;
;// 03.09.10 //		MEM8
;// 03.09.10 //		IDX8
;// 03.09.10 //KMEOP100	EQU	$
;// 03.09.10 //		INC	<JRSBPT
;// 03.09.10 //		LDA	<JRSBPT
;// 03.09.10 //		CMP	#00CH
;// 03.09.10 //		BNE	KMEOP200	; end ?
;// 03.09.10 //;					; yes
;// 03.09.10 //		LDX	<MPDTNO
;// 03.09.10 //		LDA	>GNDTBL,X
;// 03.09.10 //		ORA	#00100000B
;// 03.09.10 //		STA	>GNDTBL,X
;// 03.09.10 //;
;// 03.09.10 //		LDA	#01BH
;// 03.09.10 //		STA	!SOUND3		; <sound3>
;// 03.09.10 //;
;// 03.09.10 //		STZ	!GDINFF
;// 03.09.10 //		STZ	<JRSBPT
;// 03.09.10 //		STZ	!GMAPDF
;// 03.09.10 //;
;// 03.09.10 //		STZ	!PYALSP
;// 03.09.10 //		STZ	!ENSTFG
;// 03.09.10 //;
;// 03.09.10 //		LDA	#005H
;// 03.09.10 //		STA	!SOUND1
;// 03.09.10 //		STA	!SVSND1
;// 03.09.10 //;
;// 03.09.10 //		MEM16
;// 03.09.10 //		IDX16
;// 03.09.10 //		REP	#00110000B	; memory,index 16bit mode
;// 03.09.10 //;
;// 03.09.10 //		STZ	!YUREXD
;// 03.09.10 //		STZ	!YUREYD
;// 03.09.10 //;
;// 03.09.10 //		LDX	#0099EH
;// 03.09.10 //		LDA	#kamu10
;// 03.09.10 //		JSL	>GDRWRT00Z	; Vramd data set
;// 03.09.10 //		LDX	#009A0H
;// 03.09.10 //		LDA	#kamu11
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#00A1EH
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#00A9EH
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		LDA	#0FFFFH
;// 03.09.10 //		STA	!VRAMD+012H,Y	; end code
;// 03.09.10 //;
;// 03.09.10 //		MEM8
;// 03.09.10 //		IDX8
;// 03.09.10 //		SEP	#00110000B	; memory,index 8bit mode
;// 03.09.10 //;
;// 03.09.10 //		LDA	#VT01
;// 03.09.10 //		STA	<VRFLG
;// 03.09.10 //		RTS
;// 03.09.10 //;
;// 03.09.10 //;
;// 03.09.10 //;
;// 03.09.10 //KMEOP200	EQU	$
;// 03.09.10 //		CMP	#00BH
;// 03.09.10 //		BNE	KMEOP240	;
;// 03.09.10 //;					;
;// 03.09.10 //		JSL	>KMKMIT		; kemuri init.
;// 03.09.10 //KMEOP240	EQU	$
;// 03.09.10 //		MEM16
;// 03.09.10 //		IDX16
;// 03.09.10 //		REP	#00110000B	; memory,index 16bit mode
;// 03.09.10 //;
;// 03.09.10 //		LDX	#0091EH
;// 03.09.10 //		LDA	#kamu04
;// 03.09.10 //		JSL	>GDRWRT00Z	; Vramd data set
;// 03.09.10 //		LDX	#00920H
;// 03.09.10 //		LDA	#kamu04
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#0099EH
;// 03.09.10 //		LDA	#kamu05
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#00A1EH
;// 03.09.10 //		LDA	#kamu04
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //;
;// 03.09.10 //		LDX	#00A9EH
;// 03.09.10 //		LDA	#kamu06
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JSR	GDRWRT08	; Vramd data set
;// 03.09.10 //		DEC	A
;// 03.09.10 //		JMP	NMAOP140
;// 03.09.10 //;
;
;
;
		MEM8
		IDX8
;************************************************************************
;*		Ura-yama-tower enter write		(GTWROPEN)	*
;************************************************************************
GTWRTBL		EQU	$
		WORD	GTROP000	; 0 :
		WORD	GTROP000	; 1 :
		WORD	GTROP050	; 2 :
		WORD	GTROP100	; 3 :
		WORD	GTROP200	; 4 :
		WORD	GTROP300	; 5 :
		WORD	GTROP400	; 6 :
		WORD	GTROP500	; 7 :
		WORD	GTROP600	; 8 :
		WORD	GTROP700	; 9 :
		WORD	GTROP800	; A :
		WORD	GTROP900	; B :
		WORD	GTROPA00	; C :
;
;
GTWROPEN	EQU	$
		LDA	<JRSBPT
		ASL	A
		TAX
		JMP	(GTWRTBL,X)
;
;
GTROP000	EQU	$
		LDX	<MPDTNO
		LDA	>GNDTBL,X
		ORA	#00100000B
		STA	>GNDTBL,X
;
		JSL	>YTWRCCNG
		RTS
;
;
GTROP050	EQU	$
		JSL	>YTWRCCNG
		LDA	<DPSUB
		BNE	GTROP080	;
;					;
		INC	<DPSUB
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#003H
		BNE	GTROP070	;
;					; yes
		STZ	<CWORK0
		LDA	#007H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1
		RTS
;
GTROP070	EQU	$
		STZ	<JRSBPT
GTROP080	EQU	$
		RTS
;
;
GTROP090	EQU	$
		INC	<JRSBPT
		STZ	<CWORK0
;
		LDA	#00CH
		STA	!SOUND2		; <sound2>
		LDA	#007H
		STA	!SOUND3		; <sound3>
		RTS
;
;
;
GTROP100	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#030H
		BNE	GTROP180	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0045EH
		LDA	#ytwu00
		JSL	>GDRWRT00Z	; data write
		LDX	#00460H
		LDA	#ytwu01
		JSR	GDRWRT08	; data write
;
		LDX	#004DEH
		LDA	#ytwu1A
		JSR	GDRWRT08	; data write
		JSR	GDRWRT08	; data write
;
		LDA	#ytwu02
GTROP140	EQU	$
		LDX	#0055EH
GTROP160	EQU	$
		JSR	GDRWRT08	; data write
GTROP170	EQU	$
		JSR	GDRWRT08	; data write
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
GTROP180	EQU	$
GTROP280	EQU	$
		RTS
;
;
GTROP200	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#030H
		BNE	GTROP280	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0045EH
		LDA	#ytwu04
		JSL	>GDRWRT00Z	; data write
		LDX	#00460H
		LDA	#ytwu05
		JSR	GDRWRT08	; data write
;
		LDX	#004DEH
		LDA	#ytwu06
		JSR	GDRWRT08	; data write
		JSR	GDRWRT08	; data write
;
		LDA	#ytwu08
		BRA	GTROP140
;
;
		MEM8
		IDX8
GTROP300	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#034H
		BNE	GTROP380	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0045EH
		LDA	#ytwu0A
		JSL	>GDRWRT00Z	; data write
		LDX	#00460H
		LDA	#ytwu0B
		JSR	GDRWRT08	; data write
;
		LDX	#004DEH
		LDA	#ytwu0C
		JSR	GDRWRT08	; data write
		LDA	#ytwu0C
		JSR	GDRWRT08	; data write
;
		LDX	#0055EH
		LDA	#ytwu0D
		JSR	GDRWRT08	; data write
		LDA	#ytwu0D
		JSR	GDRWRT08	; data write
		LDA	#0FFFFH
		STA	!VRAMD+012H,Y	; end code
;
		MEM8
		IDX8
		SEP	#00110000B	; memory,index 8bit mode
;
		LDA	#VT01
		STA	<VRFLG
GTROP380	EQU	$
GTROP480	EQU	$
GTROP580	EQU	$
GTROP680	EQU	$
GTROP780	EQU	$
		RTS
;
;
GTROP400	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	GTROP480	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0045EH
		LDA	#ytwu0E
		JSL	>GDRWRT00Z	; data write
		LDX	#00460H
		LDA	#ytwu0F
		JSR	GDRWRT08	; data write
;
		LDX	#004DEH
		LDA	#ytwu10
		JMP	GTROP160
;
;
		MEM8
		IDX8
GTROP500	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	GTROP580	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#004DEH
		LDA	#ytwu12
		JSL	>GDRWRT00Z	; data write
		LDX	#004E0H
		LDA	#ytwu13
		JMP	GTROP170
;
;
		MEM8
		IDX8
GTROP600	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	GTROP680	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#004DEH
		LDA	#ytwu14
		JSL	>GDRWRT00Z	; data write
		LDX	#004E0H
		LDA	#ytwu15
		JSR	GDRWRT08	; data write
;
		LDA	#ytwu16
		JMP	GTROP140
;
;
		MEM8
		IDX8
GTROP700	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	GTROP780	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0055EH
		LDA	#ytwu12
		JSL	>GDRWRT00Z	; data write
		LDX	#00560H
		LDA	#ytwu13
		JMP	GTROP170
;
;
		MEM8
		IDX8
GTROP800	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	GTROP880	; open ?
;					; yes
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#0055EH
		LDA	#ytwu14
		JSL	>GDRWRT00Z	; data write
		LDX	#00560H
		LDA	#ytwu15
		JSR	GDRWRT08	; data write
;
		LDX	#005DEH
		LDA	#ytwu18
		JSR	GDRWRT08	; data write
		LDA	#ytwu19
GTROP840	EQU	$
		LDX	#005E0H
		JMP	GTROP170
;
;
;
		MEM8
		IDX8
GTROP900	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#020H
		BNE	GTROP980	; open ?
;					; yes
		LDA	#005H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1
		JSR	GTROP090	;
;
		MEM16
		IDX16
		REP	#00110000B	; memory,index 16bit mode
;
		LDX	#005DEH
		LDA	#ytwu12
		JSL	>GDRWRT00Z	; data write
		LDA	#ytwu13
		BRA	GTROP840
;
;
		MEM8
		IDX8
GTROPA00	EQU	$
		INC	<CWORK0
		LDA	<CWORK0
		CMP	#048H
		BNE	GTROPA80	; open ?
;					; yes
		JSR	KMEOP500	; END set
;
		STZ	<CWORK0
;
		LDA	#00DH
		STA	!SOUND0
		LDA	#009H
		STA	!SOUND1
;// 03.09.16 //		STA	!SVSND1
GTROP880	EQU	$
GTROP980	EQU	$
GTROPA80	EQU	$
		RTS
;
;
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
