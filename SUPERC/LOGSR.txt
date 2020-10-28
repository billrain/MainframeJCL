//**********************************************************************
//*** SEARCH FOR STRINGS IN PDS - RC=1 SCAN HIT ; RC=0 NO HIT        ***
//*** CMPCOLM - START COLUMN                                         ***
//*** DPLINE  - OMIT LINES CONTAINING 'X' AT COLUMN N                ***
//**********************************************************************
//SEARCH  EXEC PGM=ISRSUPC,PARM=(SRCHCMP,'ANYC')
//OUTDD  DD SYSOUT=*,DCB=(LRECL=140)
//NEWDD  DD DISP=SHR,DSN=INPUT
//*      DD DISP=SHR,DSN=INPUT2
//SYSIN  DD *
  CMPCOLM 1:137
  SRCHFOR  'ACF2 VIOLATION'
/*
