//**********************************************************************
//***  CHANGE GDG BASE LIMIT                                         ***
//**********************************************************************
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
   ALTER A.ABC.GDG   LIMIT(11)
/*
