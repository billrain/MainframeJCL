//*****************************************************************************
//***  SMPE ZONE RENAME                                                     ***
//*****************************************************************************
//STEP1  EXEC PGM=GIMSMP,REGION=0M
//SMPCSI   DD DISP=SHR,DSN=SMPE.GLOBAL.CSI
//SMPLOG   DD SYSOUT=*
//SMPRPT   DD SYSOUT=*
//SMPCNTL  DD *
 SET BDY(GLOBAL).
     ZONERENAME(DZONE) TO(DZOS1A0)  SAMEDATASET.
     ZONERENAME(TZONE) TO(TZOS1A0)  SAMEDATASET.
/*
//
