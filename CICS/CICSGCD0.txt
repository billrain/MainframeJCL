//**********************************************************************
//* DELETE AND DEFINE GLOBAL & LOCAL CATALOG, NEED TO INIT THEM
//**********************************************************************
// EXPORT SYMLIST=(REG)
//DELDEF   PROC REG=
//DELETE   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *,SYMBOLS=JCLONLY
 DELETE HLQ.CICS&REG..DFHGCD
 DELETE HLQ.CICS&REG..DFHLCD
 SET MAXCC=0
/*
//DEFINE   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *,SYMBOLS=JCLONLY
 /*                              */
 /* DEFINE A CICS GLOBAL CATALOG */
 /*                              */
 DEFINE CLUSTER(NAME(HLQ.CICS&REG..DFHGCD)         -
          INDEXED                                 -
          CYL(20 5)                               -
          SHR(2)                                  -
          FREESPACE(10 10)                        -
          REUSE)                   -
        DATA(NAME(HLQ.CICS&REG..DFHGCD.DATA)      -
          RECORDSIZE(4089,32760)-
          CISZ(32768)-
          KEYS(52 0)) -
       INDEX(NAME(HLQ.CICS&REG..DFHGCD.INDEX))
 /*                             */
 /* DEFINE A CICS LOCAL CATALOG */
 /*                             */
 DEFINE CLUSTER(NAME(HLQ.CICS&REG..DFHLCD)        -
          INDEXED                                 -
          CYL(10 2)                               -
          SHR(2)                                  -
          FREESPACE(10 10)                        -
          REUSE)                   -
        DATA(NAME(HLQ.CICS&REG..DFHLCD.DATA)      -
          KEYS(52 0)-
          RECORDSIZE(70 2041)-
          CISZ(2048)) -
       INDEX(NAME(HLQ.CICS&REG..DFHLCD.INDEX))
//   PEND
//CICS1 EXEC DELDEF,REG=PRD1
//CICS2 EXEC DELDEF,REG=PRD2
