//**********************************************************************
//***  SRCHFOR STRING PROC                                           ***
//**********************************************************************
//DSSR    PROC INDSN=                                                   
//SEARCH  EXEC PGM=ISRSUPC,PARM=(SRCHCMP,'ANYC')                        
//NEWDD  DD DISP=SHR,DSN=&INDSN                                         
//OUTDD  DD SYSOUT=*                                                    
//SYSIN  DD *                                                           
SRCHFOR  'DFHSJxxxx'                                                    
//       PEND                                                           
//**********************************************************************
//STEP1  EXEC DSSR,INDSN=                          
//STEP2  EXEC DSSR,INDSN=                            
