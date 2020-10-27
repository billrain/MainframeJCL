//**********************************************************************
//* THIS JOB IS TO CLEAR SYS1.MANX WHICH IS FULL
//* AND DUMP THE SMF TO WEEKLY AND DAILY DS
//**********************************************************************
//**********************************************************************
//* STEP1 DUMP SYS1.MAN DS TO TEMP SMF DUMP DS
//**********************************************************************
//DMPSMF1 EXEC PGM=SMFDUMP,REGION=2048K
//DUMPOUT  DD  DSN=SMF.OUT.TEMP,DISP=(MOD,PASS)
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//**********************************************************************
//* STEP2 APPEND TEMP DS TO WEEKLY BACKUP
//**********************************************************************
//DMPSMF2 EXEC PGM=IEBGENER,COND=(0,LT)
//SYSUT1   DD  DSN=SMF.OUT.TEMP,DISP=SHR
//SYSUT2   DD  DSN=SMF.OUT.WEEK,DISP=(MOD,PASS)
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//**********************************************************************
//* STEP3 COPY TEMP DS TO DAILY FILE
//**********************************************************************
//DMPSMF31 EXEC PGM=IEBGENER,COND=(0,LT)
//SYSUT1   DD  DSN=SMF.OUT.TEMP,DISP=SHR
//SYSUT2   DD  DSN=SMF.OUT.DAY,DISP=MOD
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//**********************************************************************
//* STEP4 NULLIFY THE TEMP FILE
//**********************************************************************
//DMPSMF4 EXEC PGM=IEBGENER,COND=(0,LT)
//SYSUT1   DD  DSN=NULLFILE,DCB=SMF.OUT.TEMP
//SYSUT2   DD  DSN=SMF.OUT.TEMP,DISP=OLD
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//                                                                                  
