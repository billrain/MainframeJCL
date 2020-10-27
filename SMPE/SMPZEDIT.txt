//**********************************************************************
//***  SMPE DDDEF EDIT                                               ***
//**********************************************************************
//STEP1    EXEC PGM=GIMSMP
//SMPCSI   DD DISP=SHR,DSN=SMPE.GLOBAL.CSI
//SYSPRINT DD  SYSOUT=*
//SMPLOG   DD  DUMMY
//SMPLOGA  DD  DUMMY
//SMPCNTL  DD *
  SET BDY(target).
  ZONEEDIT DDDEF .
      CHANGE VOLUME(MT1111,MTAAAA) .
      CHANGE VOLUME(MT2222,MTBBBB) .
      CHANGE VOLUME(MT3333,MTCCCC) .
  ENDZEDIT .
//
  ZONEEDIT DDDEF .
  CHANGE PATH('//'*,
              '/'*) .
  ENDZONEEDIT.
  CHANGE DATASET(SYS1.CEE.*,
                 SYS1.LE.*).
  ENDZONEEDIT.
//
