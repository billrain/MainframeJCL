//**************************************************************        
//*** USED TO DEFINE DFSMS DS
//**************************************************************
//ALCVSAM  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DEFINE CLUSTER( -
      NAME(TIMES0D.DFSMS.SCDS) LINEAR -
      VOL(Z1ASPL) KILOBYTES(200) -
      SHAREOPTIONS(2 3) )
  DEFINE CLUSTER( -
      NAME(TIMES0D.DFSMS.ACDS) LINEAR -
      VOL(Z1ASPL) KILOBYTES(200) -
      SHAREOPTIONS(3 3) )
  DEFINE CLUSTER( -
      NAME(TIMES0D.DFSMS.COMMDS) LINEAR -
      VOL(Z1ASPL) KILOBYTES(200) -
      SHAREOPTIONS(3 3) )
/*
//
