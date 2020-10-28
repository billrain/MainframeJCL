//**********************************************************************
//*** UNTERSE (DECOMPRESS FILE)
//**********************************************************************
//STEPNAME  EXEC PGM=AMATERSE,PARM='UNPACK'
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DISP=SHR,DSN=INPUT.TRS
//SYSUT2    DD DISP=(NEW,CATLG),DSN=OUTPUT,
//          SPACE=(CYL,(100,100),RLSE)
