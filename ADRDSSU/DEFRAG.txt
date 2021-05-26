//STEP1  EXEC  PGM=ADRDSSU                                
//OUT1   DD UNIT=3390,DISP=OLD,VOL=(PRIVATE,SER=volser)   
//SYSPRINT  DD  SYSOUT=*                                  
//SYSIN DD *                                              
  DEFRAG DDNAME(OUT1) 
//
