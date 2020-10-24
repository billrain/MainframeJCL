//ALTER
//**************************************************************
//*** USED TO ALTER VSAM NAME
//**************************************************************
//ALTNAME  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  ALTER -
      HLQ.DEVT.DFHCSD     -
      NEWNM(HLQ.DEVB.DFHCSD)
  ALTER -
      HLQ.DEVT.DFHCSD.DATA     -
      NEWNM(HLQ.DEVB.DFHCSD.DATA)
/*
