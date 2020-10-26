//STEP1    EXEC PGM=ADRDSSU,REGION=4M
//**********************************************************************
//***  PRINT CYL 0 TRK OF IPL VOL                                    ***
//**********************************************************************
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
  PRINT TRACKS((0,0,0,0)) INDY(MCAT01)
/*
