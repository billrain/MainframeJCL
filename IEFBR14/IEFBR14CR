//AACCBR14 JOB (AACC,SCHE),'PRODUCAO',CLASS=S,MSGCLASS=A 
//*UQ ALLOW                                              
//*  -------------------------------------------------------                    
//*                       CREATE DATASET                 
//*  -------------------------------------------------------                    
//         EXEC PGM=IEFBR14                                  
//DD1      DD   DSN=XXX.S.XXXXXXXX.FTP,                      
//         DISP=(NEW,CATLG,DELETE),                          
//         UNIT=SYSDA,VOL=SER=XXXXXX,SPACE=(CYL,(X,X),RLSE), 
//         DCB=(LRECL=0,RECFM=FB,BLKSIZE=0,DSORG=PS)         
/*

Example

//AACCBR14 JOB (AACC,SCHE),'PRODUCAO',CLASS=S,MSGCLASS=A
//*UQ ALLOW                                              
//* ------------------------------------------------------------
//*                       CREATE DATASET                 
//* ------------------------------------------------------------
//S1       EXEC PGM=IEFBR14                                     
//CATLG1   DD DSN=ABI.S.CAP.TESTE.ODS.FTP,                 
//         DISP=(NEW,CATLG,DELETE),                             
//         DCB=(DSORG=PS,LRECL=1450,BLKSIZE=29000,RECFM=FB),                    
//         VOL=SER=PRD901,SPACE=(CYL,(1000,3),RLSE),UNIT=SYSDA                  
/*
