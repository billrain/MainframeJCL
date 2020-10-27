//**************************************************************        
//* RACF LIST GENERAL CLASS
//**************************************************************
//RACFTSOU EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSTSIN DD *
  RLIST   DATASET    *  ALL
  RLIST   USER       *  ALL
  RLIST   GROUP      *  ALL
  RLIST   ACCTNUM    *  ALL
  RLIST   CIMS       *  ALL
  RLIST   DIMS       *  ALL
  RLIST   FACILITY   *  ALL
  RLIST   GSDSF      *  ALL
  RLIST   GXFACILI   *  ALL
  RLIST   IMSMOPC    *  ALL
  RLIST   IMSTOPC    *  ALL
  RLIST   LIMS       *  ALL
  RLIST   LOGSTRM    *  ALL
  RLIST   MIMS       *  ALL
  RLIST   OPERCMDS   *  ALL
  RLIST   SDSF       *  ALL
  RLIST   STARTED    *  ALL
  RLIST   SURROGAT   *  ALL
  RLIST   TAPEVOL    *  ALL
  RLIST   TSOAUTH    *  ALL
  RLIST   TSOPROC    *  ALL
  RLIST   UNIXPRIV   *  ALL
  RLIST   XFACILIT   *  ALL
//
