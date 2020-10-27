//******************************************************************
//*  SMPE LIST SYSMOD SOURCEID DDDEF                               *
//******************************************************************
//SMPES1   EXEC PGM=GIMSMP
//SYSPRINT DD SYSOUT=*
//SMPRPT   DD SYSOUT=*
//SMPCSI    DD DISP=SHR,DSN=SMPE.CICSTS.V5R4M0.GLOBAL.CSI
//SMPLIST  DD SYSOUT=*
//SMPOUT   DD SYSOUT=*
//SMPLOG   DD DUMMY
//SMPLOGA  DD DUMMY
//SMPCNTL  DD *
   SET BOUNDARY(TARGET).
   LIST SYSMOD (
                UI11111
                UI22222).
//
//
   LIST SYSMOD.
   LIST SOURCEID(SECINT).
   LIST DDDEF.
