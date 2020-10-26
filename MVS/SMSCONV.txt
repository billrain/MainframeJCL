//**********************************************************************
//*** CONVERT VOLUME AND ALL DS TO SMS / NONSMS                      ***
//**********************************************************************
//SMSCON EXEC PGM=ADRDSSU,REGION=8M,DYNAMNBR=10
//CONV  DD UNIT=3390,DISP=SHR,VOL=SER=VOL001
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD *
  CONVERTV SMS DDNAME(CONV)
//
  CONVERTV NOSMS DDNAME(CONV)  TEST
