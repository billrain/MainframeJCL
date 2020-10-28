//**********************************************************************
//*** TERSE (COMPRESS FILE)
//**********************************************************************
//     SET INDSN=INPUT.BIG
//STEP1   EXEC PGM=TRSMAIN,PARM='PACK'
//SYSPRINT DD  SYSOUT=*
//INFILE   DD  DISP=SHR,DSN=&INDSN
//OUTFILE  DD  DISP=(NEW,CATLG),
//             DSN=&INDSN..TRS,
//             SPACE=(CYL,(100,100),RLSE)
