//**********************************************************************
//***  IEFBR14 PROC TO ALLOCATE DSN                                  ***
//**********************************************************************
//CREATE  PROC ID=
//STEP1   EXEC PGM=IEFBR14
//SYSPRINT  DD SYSOUT=*
//DD1       DD DSN=USER.&ID..TRS,
//             DISP=(NEW,CATLG),
//             UNIT=3390,VOL=SER=&VOL,STORCLAS=NONSMS,
//             DCB=USER.TRS,
//             LIKE=USER.TRS
//        PEND
//**********************************************************************
//STEP1  EXEC CREATE,ID=AAA,VOL=VOL001
//STEP2  EXEC CREATE,ID=BBB,VOL=VOL002
