//******************************************************************
//**  FTP FILE FROM SERVER TO MAINFRAME                           **
//******************************************************************
//FTP      EXEC PGM=FTP,PARM='(Exit'
//INPUT    DD DSN=FTP.IN(@FTP),DISP=SHR --> your FTP IP ID PW
//         DD DDNAME=SYSIN
//OUTPUT   DD SYSOUT=*
//SYSIN    DD   *
  cd /AAA/BBB/CCC
  ls
  get testfile.txt 'HLQ.LOG(TEST)' (REPLACE
  QUIT
/*
