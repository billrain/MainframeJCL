//DELALIS  JOB  CLASS=A,MSGCLASS=H,NOTIFY=&SYSUID,MSGLEVEL=(1,1)
//**************************************************************
//*** USED TO DELETE ALIAS ***
//**************************************************************
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
   DELETE MIKE         ALIAS -
          CATALOG(MCAT.Z12SYS)
/*

