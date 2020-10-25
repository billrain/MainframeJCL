//*=================================================================
//*      JES2 ALLOC CHECKPOINT DS
//*=================================================================
//STEP    EXEC PGM=IEFBR14
//SYSPRINT  DD SYSOUT=*
//CHECK1 DD DSN=CPAC.HASPCKPT.V24,
//       VOLUME=SER=vol001,DISP=(NEW,KEEP),UNIT=3390,
//       SPACE=(TRK,450),DCB=(DSORG=PSU)
//CHECK2 DD DSN=CPAC.HASPCKP2.V24,
//       VOLUME=SER=vol002,DISP=(NEW,KEEP),UNIT=3390,
//       SPACE=(TRK,450),DCB=(DSORG=PSU)
