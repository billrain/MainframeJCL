//JOBCARD
//STEP1   EXEC PGM=IEFBR14
//**********************************************************************
//***    TO PASS MVS COMMAND AND WAIT 3 SEC                          ***
//**********************************************************************
//SYSPRINT  DD SYSOUT=*
// COMMAND 'F CICSA,CEMT I TA'
//WAIT1   EXEC PGM=BPXBATCH,PARM='sh sleep 003'
//SYSPRINT  DD SYSOUT=*
//STEP2   EXEC PGM=IEFBR14
//SYSPRINT  DD SYSOUT=*
// COMMAND 'F TDP,D SESSIONS'
//WAIT2   EXEC PGM=BPXBATCH,PARM='sh sleep 003'
//SYSPRINT  DD SYSOUT=*
//STEP3   EXEC PGM=IEFBR14
//SYSPRINT  DD SYSOUT=*
// COMMAND 'F TDP,D CP'
