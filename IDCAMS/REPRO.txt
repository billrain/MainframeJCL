//**************************************************************
//*** REPRO COPY FIRST 9999 LINES
//**************************************************************
//STEP1 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//DDIN  DD DISP=SHR,DSN=USER.JVMTRACE
//DDOUT DD DISP=SHR,DSN=USER.JVMTRACE.F9999
//SYSIN DD *
  REPRO IFILE(DDIN) OFILE(DDOUT) COUNT(9999)
//
//
