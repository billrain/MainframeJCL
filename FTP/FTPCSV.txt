//******************************************************************
//**  DOWNLOAD CSV FILE TO SERVER                                 **
//******************************************************************
//FTP      EXEC PGM=FTP,PARM='(Exit',COND=(0000,NE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSSNAP  DD SYSOUT=*
//SYSTERM  DD SYSOUT=*
//INPUT    DD DSN=FTP.IN(@FTP),DISP=SHR --> your FTP IP ID PW
//         DD DDNAME=SYSIN
//OUTPUT   DD SYSOUT=*
//SYSIN    DD *
  BINARY
  SENDSITE
  PUT 'D200519.CSV' AAA\BB\D200519.CSV
  PUT 'D200521.CSV' AAA\BB\D200521.CSV
  QUIT
//*
