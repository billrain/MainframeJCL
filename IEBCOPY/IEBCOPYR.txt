//**********************************************************************
//*** PROC COPY AND REPLACE PDS AND COMPARE                          ***
//**********************************************************************
//LMCOPY   PROC INDSN=
//DSCOPY   EXEC PGM=IEBCOPY
//SYSPRINT DD SYSOUT=*
//INDSN    DD DISP=SHR,DSN=&INDSN..BK
//OUTDSN   DD DISP=SHR,DSN=&INDSN
//SYSIN    DD *
  COPYGROUP INDD=((INDSN,R)),OUTDD=OUTDSN
//SUPERC  EXEC PGM=ISRSUPC,
//            PARM=(DELTAL,FILECMP,
//            '',
//            '')
//NEWDD  DD DSN=*.DSCOPY.OUTDSN,
//          DISP=SHR
//OLDDD  DD DSN=*.DSCOPY.INDSN,
//          DISP=SHR
//OUTDD  DD SYSOUT=*
//       PEND
//*=====================================================
//STEP1   EXEC  LMCOPY,INDSN=HLQ.FOP.AFOPCLST
//STEP2   EXEC  LMCOPY,INDSN=HLQ.FOP.AFOPINST
