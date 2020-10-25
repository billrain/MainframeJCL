//**********************************************************************
//*** PROC COPY SMS PDS TO NEW PDS AND COMPARE                       ***
//**********************************************************************
//LMCOPY   PROC INDSN=
//DSCOPY   EXEC PGM=IEBCOPY
//SYSPRINT DD SYSOUT=*
//INDSN    DD DISP=SHR,DSN=&INDSN
//*UTDSN   DD DSN=&OUTDSN,
//OUTDSN   DD DSN=&INDSN..BKP,
//           DISP=(NEW,CATLG),
//           LIKE=&INDSN,DCB=&INDSN
//SYSIN   DD *
     COPY INDD=INDSN,OUTDD=OUTDSN
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
//STEP1   EXEC  LMCOPY,INDSN=HLQ.APPLOAD
