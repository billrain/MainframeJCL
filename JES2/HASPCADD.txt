//*=================================================================
//*      JES2 ALLOC SPOOL DS
//*=================================================================
//STEP    EXEC PGM=IEFBR14
//SYSPRINT  DD SYSOUT=*
//SPL     DD DSN=CPAC.HASPACE.V21,
//           DISP=(NEW,UNCATLG),DCB=(DSORG=PSU),
//           UNIT=SYSDA,VOL=SER=volser,SPACE=(TRK,(49500))
