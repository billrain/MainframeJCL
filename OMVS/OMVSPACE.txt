//**********************************************************************
//*** LIST OMVS DIR SPACE USAGE AND FILES                            ***
//**********************************************************************
//STEPN1 EXEC PGM=BPXBATCH
//STDOUT DD SYSOUT=*
//STDERR DD SYSOUT=*
//STDPARM DD *
SH df -Pk /usr/cicsts/                  ;
   ls -Rl /usr/cicsts/                  ;
//
