# Zelda-link-to-the-past-source-code 


Zelda link to the past Japanese version was released 30 years ago 

and the source code released 

65 asm file and other data file I upload 

## how to compile 

The source was compiled by Ricoh SFX linker 

I could not find any information on that linker (insp, load, as65c , link etc ) 

I found win version remake of those tool 

You need following files 

1. github Mrl314 => project L => tool => as65c => single exe => as65c and link exe file 

2. Zelda no Densetsu - Kamigami no Triforce (Japan) (Rev 2).sfc rom file 

  = > need same version , other versions do not work 
  
  = > It is for copy and paste data hex 
  
3. reference read 

   https://tcrf.net/Proto:The_Legend_of_Zelda:_A_Link_to_the_Past 
   
   => see how to make rom playable 
   
4. python hex2bin_fixed.py script 

   https://pastebin.com/gERApBK7 
   
5. hex editor 

## as65c * asm file 

1. Put as65c and link exe file on asm file same directory 

2. Make batch file for command 

as65c zel_main.asm 
as65c  zel_vma.asm 
as65c  zel_data0.asm      
as65c  zel_code.asm     
as65c  zel_make.asm     
as65c  zel_bgwt.asm     
as65c  zel_bgmv.asm     
as65c  zel_init.asm     
as65c  zel_int0.asm     
as65c  zel_sub0.asm     
as65c  zel_isub.asm     
as65c  zel_comn.asm     
as65c  zel_com1.asm     
as65c  zel_msge0.asm    
as65c  zel_msge1.asm    
as65c  zel_bg30.asm     
as65c  zel_bg31.asm     
as65c  zel_dmap.asm     
as65c  zel_dsub.asm     
as65c  zel_char0.asm    
as65c  zel_char1.asm    
as65c  zel_char2.asm    
as65c  zel_char3.asm    
as65c  zel_grnd.asm     
as65c  zel_gnd1.asm     
as65c  zel_gsub.asm     
as65c  zel_gmap.asm     
as65c  zel_title.asm    
as65c  zel_ending.asm   
as65c  zel_gover.asm    
as65c  zel_enmy5.asm    
as65c  zel_enmy4.asm    
as65c  zel_enmy3.asm    
as65c  zel_enmy2.asm    
as65c  zel_enmy.asm     
as65c  zel_play.asm     
as65c  zel_ply1.asm     
as65c  zel_pysb.asm     
as65c  zel_exst.asm     
as65c  zel_bms1.asm     
as65c  zel_bms2.asm     
as65c  zel_endt.asm     
as65c  zel_sut0.asm     
as65c  zel_sut1.asm     
as65c  zel_sut2.asm     
as65c  zel_sut3.asm     
as65c  zel_mut1.asm     
as65c  zel_mpd0.asm     
as65c  zel_mpd1.asm     
as65c  zel_rmdt9.asm    
as65c  zel_rmdt09.asm   
as65c  zel_rmdt19.asm   
as65c  zel_djdt.asm     
as65c  zel_mjdt.asm     
as65c  zel_end2.asm     
as65c  zel_endz.asm    
as65c  zel_edmg.asm     
as65c  zel_sindt.asm    
as65c  zel_obj_poly.asm 
as65c  zel_obj_grph.asm 
as65c  zel_obj_data.asm 
as65c  zel_ram.asm
as65c  zel_label.asm

all the asm file assembled to rel file 

## link rel file 

1. rel file located address are refered by 

"zel_main.map" file . you can see the starting address on each rel file 

2. With that starting address information type this command from cmd 

> link zel_main.rel zel_vma.rel  zel_data0.rel  zel_code.rel  zel_sub0.rel zel_make.rel zel_bgwt.rel zel_bgmv.rel zel_init.rel zel_int0.rel zel_isub.rel zel_comn.rel zel_com1.rel zel_msge0.rel zel_msge1.rel zel_bg30.rel zel_bg31.rel zel_dmap.rel zel_dsub.rel zel_char0.rel zel_char1.rel zel_char2.rel zel_char3.rel zel_grnd.rel zel_gnd1.rel zel_gsub.rel zel_gmap.rel zel_title.rel zel_ending.rel zel_gover.rel zel_sindt.rel zel_enmy5.rel zel_enmy4.rel zel_enmy3.rel zel_enmy2.rel zel_enmy.rel zel_play.rel zel_ply1.rel zel_pysb.rel zel_exst.rel zel_bms1.rel zel_bms2.rel zel_endt.rel zel_sut0.rel zel_sut1.rel zel_sut2.rel zel_sut3.rel zel_mut1.rel zel_mpd0.rel zel_mpd1.rel zel_rmdt9.rel zel_rmdt09.rel zel_rmdt19.rel zel_djdt.rel zel_mjdt.rel zel_end2.rel zel_endz.rel zel_edmg.rel zel_obj_poly.rel zel_obj_grph.rel zel_obj_data.rel -o zel_main.hex -r Group_1=08000	Group_2=089e0	Group_3=098c0	Group_4=0cfc0	Group_5=0e8b0	Group_6=0f800	Group_7=0ffc0	Group_8=0ffe4	Group_9=0ffe8	Group_10=0fff4	Group_11=108000	Group_12=10b560	Group_13=10feb0	Group_14=208000	Group_15=20c270	Group_16=20fd00	Group_17=308000	Group_18=30b400	Group_19=30e800	Group_20=30eb90	Group_21=408000	Group_22=40b400	Group_23=40e800	Group_24=40fb40	Group_25=508000	Group_26=608000	Group_27=708000	Group_28=70f8a0	Group_29=808000	Group_30=908000	Group_31=90ae40	Group_32=90f270	Group_33=90f7de	Group_34=90fcae	Group_35=90ff8c	Group_36=a08000	Group_37=a0b750	Group_38=a0e0c0	Group_39=a0fd00	Group_40=a0fe70	Group_41=b08000	Group_42=b0fe70	Group_43=c08000	Group_44=c0c120	Group_45=c0fdd0	Group_46=d08000	Group_47=d0b080	Group_48=d0db40	Group_49=e08000	Group_50=e0c250	Group_51=e0ee10	Group_52=e0ffa0	Group_53=f08000	Group_54=f0f540	Group_55=f0f780	Group_56=180bc00	Group_57=1a0f500	Group_58=1b0b800	Group_59=1b0d218	Group_60=1b0f110	Group_61=1c08000	Group_62=1c0f500	Group_63=1d08000	Group_64=1e08000	Group_65=1f08000 -ls out02.map

It will make zel_main.hex file 

## python hex to bin 

with python script hex2bin_fixed.py 

you can type 

>python3 hex2bin_fixed.py zel_main.hex 

and it will make sfc playable rom binary zel_main.bin file 

As with the file , the file is not yet inserted data file 

## Open with hex editor both 

1. Open with hex editor both Zelda no Densetsu - Kamigami no Triforce (Japan) (Rev 2).sfc file and 

   zel_main.bin file 
   
2. Roughly , address 80000 below are data file , so copy address 80000 and below address hex value of 

   original Zelda no Densetsu - Kamigami no Triforce (Japan) (Rev 2).sfc file and paste to zel_main.bin file at address 
   
   80000 
   
3. delete the remained hex value after pasted last address from zel_main.bin file 

   This mean you can delete the hex value after address FFFFF

=> now zel_main.bin is playable rom with snes emulator 

## You can insert data from each file with hex editor 

 => This is referred to read  
 
 https://tcrf.net/Proto:The_Legend_of_Zelda:_A_Link_to_the_Past

1. insert rom data zl3.chr at 80000 

2. insert smap.ch7 to c4000

3. insert  zldsound0.lst at 0xc8000, zldsound1.lst at 0xd8000, zldsound2.lst at 0xd5380 each 

=> This means delete the value at the address and insert new data at the address 

## However though inserted correctly , game stop at open 

=> Though inserted correctly the data, it is not playable 

=> Below D0000 address some hex values are different between 

Zelda no Densetsu - Kamigami no Triforce (Japan) (Rev 2).sfc and 

data inserted zel_main.bin file 

=> You can correct those value and play the rom 

