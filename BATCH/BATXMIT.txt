//**********************************************************************
//***  TO EXEC TSO XMIT IN BATCH                                     ***
//**********************************************************************
//RECVSTEP EXEC PGM=IKJEFT01,REGION=2M
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
  RECEIVE INDATASET('PDS.XMIT')
  DATASET('PDS.OUT') RESTORE NEW -
  UNIT(3390)
//
