//**********************************************************************
//***  IEFBR14 TO ALLOCATE DSN                                       ***
//**********************************************************************
//STEP1   EXEC PGM=IEFBR14
//SYSPRINT  DD SYSOUT=*
//TAPE  DD  DISP=(MOD,CATLG),DSN=USER.TEST,
//    UNIT=3390,DCB=USER.OLD,
//    SPACE=(TRK,(10,5))
//
