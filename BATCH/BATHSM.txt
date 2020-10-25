//XLMBHSM  JOB USER,'TST',NOTIFY=&SYSUID,CLASS=A,MSGCLASS=X
//TSOBAT EXEC PGM=IKJEFT01,DYNAMNBR=1000
//**********************************************************************
//***  TO EXEC HSM CMD  IN BATCH                                     ***
//**********************************************************************
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSTSIN   DD *
  HRECALL 'SV2SML.**' NOWAIT
//
//
  HDELETE 'NCSPGS.**' NOWAIT
