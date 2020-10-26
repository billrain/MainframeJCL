//STEP1    EXEC PGM=ADRDSSU,PARM='UTILMSG=YES'
//**********************************************************************
//***  BUILD STAND ALONE CORE IMAGE ON TAPE                          ***
//***  TAPE LABEL MUST BE NON-LABELED                                ***
//**********************************************************************
//SAMODS   DD DISP=SHR,DSN=SYS1.SADRYLIB
//SYSPRINT DD SYSOUT=*
//TAPEDD   DD DSN=SYS1.SADRT,UNIT=/0AC0,
//         DISP=(NEW,KEEP),VOL=SER=999999,LABEL=(,NL,EXPDT=98000),
//         DCB=(DSORG=PS,RECFM=U,BLKSIZE=32760,LRECL=32760)
//SYSIN DD *
  BUILDSA          -
    INDD(SAMODS)   -
    OUTDD(TAPEDD)  -
    IPL(TAPE)
/*
