//DEFWREP  EXEC PGM=IDCAMS                                   
//SYSPRINT DD SYSOUT=*                                       
//SYSIN    DD *                                              
                                                             
   DEFINE CLUSTER (                                -         
                    NAME( WUI.EYUWREP ) -                    
                    VOLUME(TPRO46)               -           
                    RECORDS( 5000 5000 )           -         
                    CONTROLINTERVALSIZE( 8192 )    -         
                    SPANNED                        -         
                    INDEXED                        -         
                    SHAREOPTIONS( 2 )              -         
                  )                                -         
          DATA    (                                -         
                    NAME( WUI.EYUWREP.DATA ) -               
                    KEYS( 20 20 )                  -         
                    RECORDSIZE( 8192 32000 )       -         
                  )                                -         
          INDEX   (                                -         
                    NAME( WUI.EYUWREP.INDEX ) -              
                  )                                          
/*                                                           
//DELCOVDS EXEC PGM=IDCAMS                                                 
//*---------------------------------------------------------------------   
//*  Delete existing WUA Import and Export data sets for rerun             
//*---------------------------------------------------------------------   
//SYSPRINT DD  SYSOUT=*                                                    
//SYSIN    DD  *                                                           
 DELETE WUI.EYUCOVI NONVSAM                                                
 DELETE WUI.EYUCOVE NONVSAM                                                
 SET MAXCC=0                                                               
/*                                                                         
//*---------------------------------------------------------------------   
//* Allocate WUA Import and Export data sets                               
//*---------------------------------------------------------------------   
//DEFCOVDS EXEC PGM=IEFBR14                                                
//DD1       DD  DISP=(NEW,CATLG,DELETE),                                   
//             SPACE=(CYL,(2,2)),                                          
//             UNIT=SYSALLDA,VOL=SER=vol,                               
//             DCB=(DSORG=PS,RECFM=VB,LRECL=32000),                        
//             DSN=WUI.EYUCOVI                                             
//*                                                                        
//DD2       DD  DISP=(NEW,CATLG,DELETE),                                   
//             SPACE=(CYL,(2,2)),                                          
//             UNIT=SYSALLDA,VOL=SER=vol,                               
//             DCB=(DSORG=PS,RECFM=VB,LRECL=32000),                        
//             DSN=WUI.EYUCOVE                                             
//*                                                                        
