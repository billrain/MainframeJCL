//**********************************************************************
//*** REPORT PTF NEEDED BUT NOT YET INSTALLED                        ***
//**********************************************************************
//STEP0  EXEC PGM=GIMSMP,REGION=0M
//SMPCSI   DD DISP=SHR,DSN=SMPE.ZOS.GLOBAL.CSI
//SMPRPT   DD SYSOUT=*
//SMPPUNCH DD SYSOUT=*
//SMPLOG   DD SYSOUT=*
//SMPLOGA  DD SYSOUT=*
//SMPCNTL  DD *
  SET BDY(GLOBAL).
  REPORT MISSINGFIX ZONES(TSTTZN)
  FIXCAT(IBM.Coexistence.z/OS.V2R4)
  .
/*
//
  FIXCAT(IBM.TargetSystem-RequiredService.z/OS.V2R4)                   
