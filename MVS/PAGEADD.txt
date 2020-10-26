//**********************************************************************
//***  ALLOCATE LOCAL PAGE DSN                                       ***
//**********************************************************************
//ALCPACE  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//PAGELOC  DD UNIT=3390,VOL=SER=DPGE11,DISP=SHR,STORCLAS=NONSMS
//SYSIN    DD *
  DEFINE PAGESPACE(  -
      FILE(PAGELOC)  -
      NAME(PAGE.VPAGE01.LOCALB) -
      CYLINDERS(3300) -
      VOLUME(PAGE01) )
/*
//
  DELETE PAGE.VPAGE5.LOCAL5 PURGE
  SET MAXCC=0
