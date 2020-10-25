//**************************************************************
//*** COPY WITH WILDCARD
//**************************************************************
//DSCOPY   EXEC PGM=IEBCOPY
//SYSPRINT DD SYSOUT=*
//INDD     DD DISP=SHR,DSN=AAA.IN
//OUTDD    DD DISP=SHR,DSN=BBB.OUT
//SYSIN   DD *
     COPYGROUP INDD=INDD,OUTDD=OUTDD
     SELECT MEMBER=(L20*)
/*                                          
