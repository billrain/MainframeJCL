//**************************************************************
//*** TO DUMP SMF RECORDS TO DS
//*** THE DUMP OUT DS SHOULD BE VBS 32760
//**************************************************************
//STEP1  EXEC  PGM=IFASMFDP
//SYSPRINT  DD  SYSOUT=*
//SYSUDUMP  DD  SYSOUT=*
//INDD1     DD  DISP=SHR,DSN=SMF.IN1
//          DD  DISP=SHR,DSN=SMF.IN2
//OUTDD1    DD  DISP=(,CATLG),DSN=TAPE.SMF.OUT,
//    UNIT=CART,RECFM=VBS,LRECL=32760,RETPD=90
//SYSIN DD *
  INDD(INDD1,OPTIONS(DUMP))
  OUTDD(OUTDD1,TYPE(110))
/*
