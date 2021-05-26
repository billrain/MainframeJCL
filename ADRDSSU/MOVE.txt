//**********************************************************************
//* TO MOVE DATASET FROM 1 VOLUME TO ANOTHER VOLUME                     
//**********************************************************************
//STEP1  EXEC PGM=ADRDSSU,REGION=8M                                     
//FRDASD DD  UNIT=3390,VOL=SER=VOL200,DISP=SHR                          
//TODASD DD  UNIT=3390,VOL=SER=VOL100,DISP=SHR                          
//SYSPRINT DD  SYSOUT=*                                                 
//SYSIN    DD  *                                                        
      COPY DATASET(INCLUDE(AAA.DSN)) -                     
           INDDNAME(FRDASD) -                                           
           OUTDDNAME(TODASD) -                                          
           ALLDATA(*) -                                                 
           ALLEXCP -                                                    
           DELETE PURGE CATALOG          
//
