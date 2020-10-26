//**********************************************************************
//***  FULL VOL TAPE RESTORE                                         ***
//**********************************************************************
//STEP1    EXEC PGM=ADRDSSU,REGION=4M
//SYSPRINT DD SYSOUT=*
//IN    DD UNIT=EE0,VOL=SER=VOLOUT,DISP=OLD,
//         DSNAME=T.DUMP.VOL001
//OUT   DD UNIT=3390,VOL=SER=VOL001,DISP=SHR
//SYSIN DD *
  RESTORE INDD(IN) OUTDD(OUT) PURGE
/*
//
