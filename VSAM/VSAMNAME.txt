//**********************************************************************
//*** VSAM ALTER NAME
//**********************************************************************
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  ALTER -
  VSAM.OLD           -
  NEWNAME(VSAM.NEW)
  ALTER -
  VSAM.OLD.DATA      -
  NEWNAME(VSAM.NEW.DATA)
//
