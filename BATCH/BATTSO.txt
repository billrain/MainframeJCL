//JC
//TSOBAT EXEC PGM=IKJEFT01,DYNAMNBR=1000
//**********************************************************************
//***  TO EXEC TSO PGM IN BATCH                                      ***
//**********************************************************************
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSTSIN   DD *
  STATUS
  XMIT NJENODE.ID DS('USER.JCL')
//
