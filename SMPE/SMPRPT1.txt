//STEP0  EXEC PGM=GIMSMP,REGION=0M
//**********************************************************************
//*** SMPE ZONE COMPARE                                              ***
//**********************************************************************
//SMPCSI   DD DISP=SHR,DSN=SMPE.GLOBAL.CSI
//SMPRPT   DD SYSOUT=*
//SMPPUNCH DD SYSOUT=*
//SMPLOG   DD SYSOUT=*
//SMPLOGA  DD SYSOUT=*
//SMPCNTL  DD *
  SET BDY(GLOBAL).
  REPORT SYSMODS
         INZONE(TSTTZN)
     COMPAREDTO(PRDTZN)
         .
/*
