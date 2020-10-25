//******************************************************************
//**  FTP FILE FROM MAINFRAME TO SERVER                           **
//******************************************************************
//STEPFTP  EXEC PGM=FTP
//FILEIN   DD DISP=SHR,DSN=USER.AA
//SYSMDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//OUTPUT   DD SYSOUT=*
//INPUT    DD DSN=FTP.IN(@FTP),DISP=SHR --> your FTP IP ID PW
//         DD *
  PUT //DD:FILEIN   +
  C:\Documents\AA.TXT
  QUIT
/*
