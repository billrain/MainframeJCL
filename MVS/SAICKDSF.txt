//STEP1    EXEC PGM=IEBGENER
//**********************************************************************
//***  BUILD STAND ALONE ICKDSF CODE ON TAPE                         ***
//***  TAPE LABEL MUST BE NON-LABELED                                ***
//***  THERE SHOULD BE ONLY ONE FILE ON THE TAPE                     ***
//**********************************************************************
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=SHR,DSN=SYS1.SAMPLIB(ICKSADSF)
//SYSUT2   DD DSN=SYS1.ICKDSF,UNIT=/0BEF,LABEL=(,NL),
//         DISP=(NEW,KEEP),VOL=SER=999998,LABEL=(,NL,EXPDT=98000),
//         DCB=(RECFM=F,BLKSIZE=80,LRECL=80)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
