//**********************************************************************
//*** PROC TO CONVERT PDS TO PDSE
//**********************************************************************
//PDSE     PROC PDS=
//DSCOPY   EXEC PGM=IEBCOPY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=SHR,DSN=&PDS
//SYSUT2   DD DSN=&PDS..PDSE,
//           DISP=(NEW,CATLG),LIKE=&PDS,DSNTYPE=LIBRARY
//         PEND
//**********************************************************************
//STEP1   EXEC  PDSE,PDS=HLQ.CICSTS.SDFHEXCI
