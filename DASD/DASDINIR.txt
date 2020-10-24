//**********************************************************************
//*** INIT DISK WITH WTOR                                            ***
//**********************************************************************
//* UNIT   -> CURRENT DASD UNIT
//* VERIFY -> PRESENT VOLSER
//* VOIID  -> NEW VOLSER
//STEP01   EXEC PGM=ICKDSF,PARM='REPLYU'
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 INIT UNIT(A997) VFY(OLDVOL) VOLID(NEWVOL) PRG NVAL VTOC(0,1,90)
/*
