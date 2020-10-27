//**********************************************************************
//***  SMPE RECEIVE PTF INTO GLOBAL                                  ***
//**********************************************************************
//RECEIVE  EXEC PGM=GIMSMP,REGION=6M,PARM='DATE=U',TIME=1440
//SMPCSI   DD DISP=SHR,DSN=SMPE.GLOBAL.CSI
//SMPPTFIN DD DISP=SHR,DSN=PTF.IN
//SMPOUT   DD SYSOUT=*
//SMPPUNCH DD SYSOUT=*
//SMPRPT   DD SYSOUT=*
//SMPLIST  DD SYSOUT=*
//SMPSNAP  DD SYSOUT=*
//SMPHOLD  DD DUMMY
//SYSPRINT DD SYSOUT=*
//SMPCNTL  DD *
 SET     BOUNDARY(GLOBAL).
 RECEIVE SYSMODS
 LIST HOLDDATA.
//
