//**********************************************************************
//***  IEFBR14 PROC TO ALLOCATE DSN                                  ***
//**********************************************************************
//CREATE  PROC SPACE=
//STEP1   EXEC PGM=IEFBR14
//SYSPRINT  DD SYSOUT=*
//DD1       DD DSN=USER.TEST,
//             DISP=(NEW,CATLG),UNIT=3390,
//             DCB=USER.INPUT,
//             SPACE=(&SPACE)
//        PEND
//**********************************************************************
//STEP1  EXEC CREATE,SPACE='TRK,(5,1)'
