//DELDREP  EXEC PGM=IDCAMS                                     
//SYSPRINT  DD  SYSOUT=*                                       
//SYSIN     DD  *                                              
 DELETE  CMAS.EYUDREP                                          
 SET MAXCC=0                                                   
//DEFDREP  EXEC PGM=IDCAMS                                     
//SYSPRINT  DD  SYSOUT=*                                       
//SYSIN     DD  *                                              
 DEFINE  CLUSTER -                                             
   (NAME(CMAS.EYUDREP) -                                       
 RECORDS(500,3000) -                                           
    CISZ(8192) -                                               
   RECSZ(200,6550) -                                           
    KEYS(64,0) -                                               
     SHR(2) -                                                  
 INDEXED -                                                     
 SPEED -                                                       
 REUSE)                                                        
/*    
//*-----------------------------------------------------------  
//*        Initialize a new Data Repository data set            
//*-----------------------------------------------------------  
//DREPINIT EXEC PGM=EYU9XDUT,                                   
//             COND=(8,LT),                                     
//             PARM=('CMASNAME=CICSCMST',                       
//             'DAYLIGHT=N',                                    
//             'TIMEZONE=H',                                    
//             'SYSID=CMST',                                    
//             'ZONEOFFSET=0')                                  
//EYUXDPRM  DD *                                                
 WUI=YES                                                        
 WUIPLEX=WUIPLXDE                                               
 WUINAME=CICSWUI                                              
 WUIAPPLID=CICSWUI                                             
 WUISYSID=WUI                                                
/*                                                              
//STEPLIB   DD  DISP=SHR,                                       
//             DSN=CICSHLQ.CPSM.SEYUAUTH 
//EYUDREP   DD  DISP=OLD,                                       
//             DSN=CMAS.EYUDREP                                 
//SYSPRINT  DD  SYSOUT=*                                        
