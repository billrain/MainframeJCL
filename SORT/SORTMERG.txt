//**************************************************************
//*** SORT MERGE SAVE FORMAT INPUTS INTO ONE
//**************************************************************
//SORT     EXEC  SORTD
//SORTIN   DD DISP=SHR,DSN=SORT.IN1
//         DD DISP=SHR,DSN=SORT.IN2
//SORTOUT  DD DISP=SHR,DSN=SORT.OUT
//SYSIN    DD *
  SORT FIELDS=COPY
/*
