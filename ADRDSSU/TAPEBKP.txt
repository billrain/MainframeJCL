//**********************************************************************
//*** FULL VOL DUMP TO TAPE AS MUTIPLE FILES                         ***
//**********************************************************************
//TAPEDUMP PROC INVOL=,N=
//DASDDUMP EXEC PGM=ADRDSSU
//SYSPRINT DD SYSOUT=*
//INDISK   DD UNIT=SYSDA,DISP=SHR,VOL=SER=&INVOL
//OUTTAPE  DD UNIT=EE0,LABEL=(&N,SL,EXPDT=98000),DSN=T.DUMP.&INVOL,
//         DISP=(,CATLG),VOL=SER=VOLOUT
//SYSIN    DD *
  DUMP INDD(INDISK) OUTDD(OUTTAPE) ALLDATA(*) ALLEXCP COMP
//       PEND
//**********************************************************************
//TAPE01   EXEC TAPEDUMP,INVOL=VOL001,N=01
//TAPE02   EXEC TAPEDUMP,INVOL=VOL002,N=02
//TAPE03   EXEC TAPEDUMP,INVOL=VOL003,N=03
//
