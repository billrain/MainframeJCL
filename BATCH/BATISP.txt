//TSOBAT EXEC PGM=IKJEFT01,DYNAMNBR=1000
//**********************************************************************
//***  TO EXEC ISP  PGM IN BATCH                                     ***
//**********************************************************************
//ISPPROF   DD DSN=USER.ISPF.ISPPROF,DISP=SHR
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSTSIN   DD *
  PROFILE PREFIX(USER)
  ISPSTART CMD(%TEMPNAME) NEWAPPL(ISR)
/*
