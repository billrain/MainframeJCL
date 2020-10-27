//**************************************************************
//*** TO MERGE SMF 70 AND 89 FROM DIFF LPAR
//*** THE DUMP OUT DS SHOULD BE VBS 32760
//**************************************************************
//STEP1  EXEC  PGM=IFASMFDP
//SYSPRINT  DD  SYSOUT=*
//SYSUDUMP  DD  SYSOUT=*
//INDD1     DD  DISP=SHR,DSN=SMF7089.LPAR1
//          DD  DISP=SHR,VOL=SER=VOL001,UNIT=3390,
//          DSN=SMF7089.LPAR2
//OUTDD1    DD  DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(200,200),RLSE),
//          DSN=SMF7089.LPARALL,
//          DCB=SMF.DUMP.OUT
//SYSIN DD *
  INDD(INDD1,OPTIONS(DUMP))
  OUTDD(OUTDD1,TYPE(70,89))
/*
