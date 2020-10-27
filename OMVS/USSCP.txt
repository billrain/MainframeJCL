//**********************************************************************
//*** OMVS MAKE DIR AND COPY FILES                                   ***
//**********************************************************************
//UNPAXDIR  EXEC PGM=BPXBATCH
//STDOUT    DD   SYSOUT=*
//STDERR    DD   SYSOUT=*
//STDPARM   DD   *
sh
mkdir -m 755 /usr/lpp/agent.java.bk ;
cp -R /usr/lpp/agent.java/*  /usr/lpp/agent.java.bk;
//
