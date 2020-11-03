//**********************************************************************
//*  DEFINE CICS LOGSTREAM
//**********************************************************************
//DFHLOGA  EXEC PGM=IXCMIAPU
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DATA TYPE(LOGR) REPORT(YES)
  /* CICS1                         */
  DEFINE LOGSTREAM NAME(CICS1.applid.DFHLOG)
         MODEL(NO)
         DASDONLY(YES)
         AUTODELETE(NO) RETPD(15)
         LOWOFFLOAD(40)
         HIGHOFFLOAD(80)
         MAXBUFSIZE(64000)
         HLQ(HLQ)
         STG_SIZE(1024)
         LS_SIZE(1024)
  DEFINE LOGSTREAM NAME(CICS1.applid.DFHSHUNT)
         HLQ(HLQ)
         MODEL(NO)
         DASDONLY(YES)
         AUTODELETE(NO) RETPD(15)
         MAXBUFSIZE(64000)
         STG_SIZE(1024)
         LS_SIZE(1024)
/*
