//**************************************************************
//*** USED TO RESTORE FROM TAPE AND RENAME
//**************************************************************
//RESTORE EXEC PGM=ADRDSSU,REGION=0M
//SYSPRINT DD SYSOUT=*
//INDD   DD DISP=SHR,DSN=T.MY.DUMP
//SYSIN  DD *
  RESTORE INDDNAME(INDD)  -
  DATASET(INCLUDE( -
  OMVS.ZFS.OLD -
                 )) -
  RENAMEU(OMVS.ZFS.OLD,OMVS.ZFS.NEW) -
  CATALOG ADMIN
/*
//
