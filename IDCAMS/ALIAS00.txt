//JOBCARD
//**************************************************************
//*** USED TO DEFINE ALIAS ON zOS 2.1 and above
//**************************************************************
// EXPORT SYMLIST=(ANAME)
//DEFINE   PROC ANAME=
//ALIAS    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *,SYMBOLS=JCLONLY
  DEF ALIAS(NAME('&ANAME') -
  REL('CAT.UCAT')) CAT('CAT.MCAT')
  LISTCAT ENTRIES(&ANAME) ALL
/*
//        PEND
//STEP1   EXEC DEFINE,ANAME=AAA
//STEP2   EXEC DEFINE,ANAME=BBB
//STEP3   EXEC DEFINE,ANAME=CCC
