//**************************************************************
//*** USED TO ALLOCATE SMF DS
//**************************************************************
//ALCVSAM  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DEFINE CLUSTER( -
      CONTROLINTERVALSIZE(4096) -
      CYLINDERS(400) -
      NAME(SYS1.MAN1) -
      NONINDEXED -
      RECORDSIZE(4086,32767) -
      REUSE -
      SHAREOPTIONS(2) -
      SPANNED -
      SPEED -
      VOLUME(MCAT01) ) -
    DATA( -
      NAME(SYS1.MAN1.DATA) )
  DEFINE CLUSTER( -
      CONTROLINTERVALSIZE(4096) -
      CYLINDERS(400) -
      NAME(SYS1.MAN2) -
      NONINDEXED -
      RECORDSIZE(4086,32767) -
      REUSE -
      SHAREOPTIONS(2) -
      SPANNED -
      SPEED -
      VOLUME(MCAT01) ) -
    DATA( -
      NAME(SYS1.MAN2.DATA) )
  DEFINE CLUSTER( -
      CONTROLINTERVALSIZE(4096) -
      CYLINDERS(400) -
      NAME(SYS1.MAN3) -
      NONINDEXED -
      RECORDSIZE(4086,32767) -
      REUSE -
      SHAREOPTIONS(2) -
      SPANNED -
      SPEED -
      VOLUME(MCAT01) ) -
    DATA( -
      NAME(SYS1.MAN3.DATA) )
/*
//
