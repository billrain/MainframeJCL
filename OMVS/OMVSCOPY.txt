//**********************************************************************
//*** OCOPY OMVS LOG TO DS - DOWNLOAD WITH BIN                       ***
//**********************************************************************
//COPY     EXEC PGM=IKJEFT01
//*NHFS    DD PATH='/usr/cicsts/work/cicsaaaa/CPFWLP/aaaaaaa/CPFWLP/wlp
//*            /usr/servers/defaultServer/logs/messages.log'
//INHFS    DD PATH='/usr/cicsts/work/cicsbbbb/CPFWLP/bbbbbbb/CPFWLP/wlp
//             /usr/servers/defaultServer/logs/messages_20.20.22_22.17.
//             18.0.log'
//OUTMVS   DD DISP=SHR,DSN=USER.MESSAGES.LOG
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
  OCOPY INDD(INHFS) OUTDD(OUTMVS) BIN CONVERT(YES)
/*
//
