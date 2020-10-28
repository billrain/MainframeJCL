//**************************************************************
//*** SORT COPY
//*** IMCOMPLETE RECORD WILL ABEND THE JOB
//**************************************************************
//SORT     EXEC  PGM=ICEMAN,REGION=0M,TIME=1440
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DISP=SHR,DSN=SORT.IN
//SORTOUT  DD  DISP=(NEW,CATLG),
//             SPACE=(CYL,(100,100),RLSE),
//             DSN=SORT.OUT
//SORTDIAG DD DUMMY
//DFSPARM  DD *
  OPTION MAINSIZE=MAX
//SYSIN    DD *
  SORT   FIELDS=COPY
/*
//
