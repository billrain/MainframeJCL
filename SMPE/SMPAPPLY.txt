//**********************************************************************
//***  SMPE APPLY PTF CHECK                                          ***
//**********************************************************************
//STEP1    EXEC PGM=GIMSMP
//SMPCSI    DD DISP=SHR,DSN=SMPE.CICS.GLOBAL.CSI
//SMPOUT    DD SYSOUT=*
//SMPHRPT   DD SYSOUT=*
//SMPRPT    DD SYSOUT=*
//SMPLOG    DD DUMMY
//SMPLOGA   DD DUMMY
//SMPLIST   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SMPCNTL   DD *
SET BDY (target zone).
APPLY CHECK GEXT BYPASS(HOLDSYS)
   S(
     RO31202
     RO33061).
//
//
