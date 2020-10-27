//******************************************************************
//*  SMPE UPDATE OMVS PATH IN DDDEF
//******************************************************************
//SMPES1   EXEC PGM=GIMSMP
//SYSPRINT DD SYSOUT=*
//SMPRPT   DD SYSOUT=*
//SMPOUT   DD SYSOUT=*
//SMPLOG   DD DUMMY
//SMPLOGA  DD DUMMY
//SMPCSI   DD DISP=SHR,DSN=SMPE.ZOS.GLOBAL.CSI
//SMPCNTL  DD *
  SET BDY(TARGET) .
  ZONEEDIT DDDEF .
    CHANGE PATH('/usr/lpp/'*,'/Service/usr/lpp/'*) .
  ENDZONEEDIT .
/*
