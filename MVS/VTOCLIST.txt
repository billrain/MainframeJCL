//**********************************************************************
//***  LIST VTOC                                                     ***
//**********************************************************************
//IEHLIST EXEC PGM=IEHLIST
//SYSPRINT DD SYSOUT=*
//DASDVOL DD VOL=SER=VOL001,UNIT=SYSALLDA,DISP=SHR
//SYSIN DD *
  LISTVTOC VOL=SYSALLDA=VOL001
//
  LISTPDS  VOL=SYSDA=VOL001,DSNAME=USER.PDS           
