//**********************************************************************
//***  DISK SNAP COPY FROM X* TO Y* VOLUMES                          ***
//***  NOTE:                                                         ***
//***        SOURCE VOL - XXXXXX                                     ***
//***        TARGET VOL - YYYYYY                                     ***
//**********************************************************************
//RUNSNAP  EXEC PGM=EMCSNAP
//STEPLIB  DD DISP=SHR,DSN=HLQ.EMC.LINKLIB
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//QCOUTPUT DD SYSOUT=*
//QCINPUT  DD *
  GLOBAL MAXRC(4),REPLACE(NO), -
    COPYVOLID(NO),DIFFERENTIAL(YES)
  SNAP VOL(SOURCE(VOL(XXXXXX)) TARGET(VOL(YYYYYY)))
  ACTIVATE (CONSISTENT(YES))
/*
