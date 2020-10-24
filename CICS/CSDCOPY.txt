//**********************************************************************
//*** NEED TO COLD START CICS AFTER BATCH CSD UPDATE !!!             ***
//**********************************************************************
//CSDUPD   PROC CICSID=
//UPDATE   EXEC PGM=DFHCSDUP,PARM='CSD(READWRITE)'
//STEPLIB  DD  DSN=HLQ.CICSTS.V5R4M0.CICS.SDFHLOAD,DISP=SHR
//DFHCSD   DD  DSN=HLQ.&CICSID..DFHCSD,DISP=SHR
//INCSD    DD  DSN=HLQ.CICSA.DFHCSD,DISP=SHR
//SYSPRINT DD  SYSOUT=A
//SYSIN    DD  *
  COPY GROUP(DB2RCT) TO (DB2RCT  ) FROM(INCSD) MERGE
  LIST ALL
//         PEND
//STEP1   EXEC CSDUPD,CICSID=CICSB
