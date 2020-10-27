//**********************************************************************
//***  SMPE RESTORE PTF FROM TARGET                                  ***
//**********************************************************************
//RECEIVE   EXEC PGM=GIMSMP
//SYSPRINT  DD SYSOUT=*
//SMPCSI    DD DISP=SHR,DSN=SMPE.GLOBAL.CSI
//SMPOUT    DD SYSOUT=*
//SMPRPT    DD SYSOUT=*
//SMPLOG    DD DUMMY
//SMPLOGA   DD DUMMY
//SMPHOLD   DD DUMMY
//SMPCNTL  DD *
  SET BOUNDARY (TARGET) .
  RESTORE S(UA11111).
/*         
