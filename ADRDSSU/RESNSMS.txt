//**************************************************************
//*** USED TO RESTORE DS TO NONSMS
//**************************************************************
//STEPT01  EXEC PGM=ADRDSSU
//SYSPRINT DD SYSOUT=*
//INDD     DD DISP=SHR,UNIT=CART,VOL=SER=T11111,
//          DSN=T.MY.DUMP
//OUTDD    DD UNIT=3390,DISP=SHR,
//          STORCLAS=NONSMS,VOL=SER=VOL001
//SYSIN    DD *
  RESTORE INDDNAME(INDD)  OUTDDNAME(OUTDD) -
  DATASET(INCLUDE( -
         **.**   -
                  )) -
  CATALOG ADMIN SPHERE
/*
