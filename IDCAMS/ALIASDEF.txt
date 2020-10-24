//JOBCARD
//**************************************************************
//*** USED TO DEFINE ALIAS ***
//*** F CATALOG,ALIASLEVEL(N) TO DEFINE MULTI LEVEL ALIAS
//*** F CATALOG,REPORT
//**************************************************************
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DEF ALIAS (NAME('SYS1.DB2.V9.SDSNLOAD') -
  REL('SYS1.DB2.V12.SDSNLOAD')) CAT('CAT.MCAT')
  LISTCAT ENTRIES(SYS1.DB2.V9.SDSNLOAD) ALL
/*
//

