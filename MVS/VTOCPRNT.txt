//**********************************************************************
//***  PRINT VTOC
//**********************************************************************
//DSS    EXEC PGM=ADRDSSU,REGION=0M
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
     PRINT INDY(QAP107)
     PRINT INDY(QAP107) DS(SYS1.VTOCIX.QAP107)
/*
