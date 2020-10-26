//**********************************************************************
//***  CREATE STAND ALONE DUMP PGM                                   ***
//***  DELETE PAGEDUMP IF EXISTED                                    ***
//**********************************************************************
//SCRATCH EXEC PGM=IEHPROGM
//DD1      DD UNIT=3390,VOL=SER=MCAT01,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
   SCRATCH  DSNAME=SYS1.PAGEDUMP.VMCAT,PURGE,                        X
               VOL=3390=MTCAT1
/*
//BUILD    EXEC PGM=AMDSAOSG
//SYSLIB   DD   DISP=SHR,
//           DSN=SYS1.MACLIB
//         DD   DISP=SHR,
//           DSN=SYS1.MODGEN
//TRK0TEXT DD DSN=&TRK0TEXT,DISP=(,PASS),SPACE=(4096,(2,1)),UNIT=SYSDA
//DSFSYSIN DD DSN=&DSFSYSIN,DISP=(,PASS),SPACE=(80,(4,1)),UNIT=SYSDA
//DPLTEXT  DD   DISP=SHR,
//           DSN=SYS1.NUCLEUS(AMDSADPL)
//IPLTEXT  DD   DISP=SHR,
//           DSN=SYS1.NUCLEUS(AMDSAIPD)
//PGETEXT  DD   DISP=SHR,
//           DSN=SYS1.NUCLEUS(AMDSAPGE)
//IPITEXT  DD   DISP=SHR,
//           DSN=SYS1.NUCLEUS(AMDSAIPI)
//DVITEXT  DD   DISP=SHR,
//           DSN=SYS1.NUCLEUS(AMDSADVI)
//GENPRINT DD   SYSOUT=*
//GENPARMS DD   *
         AMDSADMP IPL=D3390,VOLSER=MCAT01,                             X
               MINASID=ALL,                                            X
               DDSPROMPT=YES,                                          X
               OUTPUT=(D3390,SYS1.SADMPD),                             X
               CONSOLE=(00B5,3278)
         END
//
