//**********************************************************************
//***   SMPE RECEIVE HOLDDATA TO GLOBAL ZONE                         ***
//**********************************************************************
//RECHOLD   EXEC PGM=GIMSMP
//SYSPRINT  DD SYSOUT=*
//SMPCSI    DD DISP=SHR,DSN=SMPE.DB2.GLOBAL.CSI
//SMPHOLD   DD DISP=SHR,DSN=HOLDDATA.INPUT
//SMPOUT    DD SYSOUT=*
//SMPRPT    DD SYSOUT=*
//SMPLOG    DD DUMMY
//SMPLOGA   DD DUMMY
//SMPHOLD   DD DUMMY
//SMPCNTL  DD *
  SET  BOUNDARY (GLOBAL) .
  RECEIVE HOLDDATA.    
//
