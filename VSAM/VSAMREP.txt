//**********************************************************************
//*** VSAM REPRO & PRINT
//**********************************************************************
//REPRO    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//INPUT    DD DISP=SHR,DSN=VSAM.IN
//SYSIN    DD *
  REPRO INFILE(INPUT) ODS(VSAM.REPRO) REPLACE
//
//PRINT    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//INPUT    DD DISP=SHR,DSN=VSAM.IN
//SYSIN    DD *
  PRINT INFILE(INPUT)
//
