//**********************************************************************
//*** CREATE DIR IN OMVS AND MOUNT                                   ***
//**********************************************************************
//UNPAXDIR  EXEC PGM=BPXBATCH
//STDOUT    DD   SYSOUT=*
//STDERR    DD   SYSOUT=*
//STDPARM   DD   *
  sh  mkdir -m 755 /usr/interface;
//MOUNTHFS EXEC PGM=IKJEFT01,COND=(0,NE)
//SYSTSPRT DD   SYSOUT=*
//SYSTSIN  DD   *
 MOUNT FILESYSTEM('OMVS.INTFACE')
       MOUNTPOINT('/usr/interface')
       TYPE(ZFS) MODE(RDWR)                                             
/*
//
