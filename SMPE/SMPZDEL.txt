//**********************************************************************
//*** DELETE SMPE ZONES                                              ***
//*** BACKUP SMPE FIRST!                                             ***
//**********************************************************************
//STEP1  EXEC PGM=GIMSMP,REGION=0M
//SMPCSI   DD DISP=SHR,DSN=SMPE.GLOBAL.CSI
//SMPRPT   DD SYSOUT=*
//SMPLOG   DD SYSOUT=*
//SMPLOGA  DD SYSOUT=*
//SMPCNTL  DD *
  SET  BDY(target).
  ZDEL TZONE(target).
  SET  BDY(dlib).
  ZDEL DZONE(dlib).
//
