//**********************************************************************
//***  PRINT DSN INFO                                                ***
//**********************************************************************
//STEP1  EXEC  PGM=ADRDSSU
//AAA100 DD DISP=SHR,DSN=USER.JCL
//SYSPRINT  DD  SYSOUT=*
//SYSIN DD *
  PRINT DATASET('USER.JCL') INDD(AAA100) SHR
/*
