//STEP0010 EXEC PGM=GSVXBAT,PARM='LINECNT=99,SHOWINP=YES'               
//SYSPRINT DD  SYSOUT=*                                                 
//SYSIN    DD    *                                                      
  PRINTOFF                                                              
  COMMAND=(JOBSUM   AAAD103)                                            
  DATA=(1,S)                                                            
  COMMAND=(SET COPYDSN '.USER.JOBLOG')                                  
  COMMAND=(PRINT OPEN)                                                  
  COMMAND=(PRINT 9999,ME AAA)                                           
  COMMAND=(PRINT CLOSE)                                                 
  COMMAND=(END)                                                         
//                                                                      
  PRINTOFF                                                              
  COMMAND=(ACTIVITY)                                                    
  COMMAND=(SET COPYDSN 'USER.JOBLOG.SYSV')                              
  COMMAND=(PRINT OPEN)                                                  
  COMMAND=(PRINT 9999,ME ACT)                                           
  COMMAND=(PRINT CLOSE)                                                 
  COMMAND=(END)                                                         
//                                                                      
  COMMAND=(JOBSUM ESP STC EXEC)                                         
  COMMAND=(LINECMD S)                                                   
  SCROLL                                                                
  COMMAND=END                                                           
  COMMAND=(SET COPYDSN 'USER.JOBLOG')                                   
  COMMAND=(SYSLOG)                                                      
  COMMAND=(LEFT)                                                        
  COMMAND=(PRINT OPEN CURLOG)                                           
  COMMAND=(PRINT FROM 228143 TO 99999999 NOH)                           
  COMMAND=(PRINT CLOSE)                                                 
  COMMAND=END                                                           
//
