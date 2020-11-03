//**********************************************************************
//*** CICS STATISTICS REPORT                                         ***
//*** USE VERSION SPECIFIC SDFHLOAD FOR DIFF CICS VERSION SMF        ***
//**********************************************************************
//DFHSTUP EXEC PGM=DFHSTUP
//STEPLIB  DD DISP=SHR,DSN=HLQ.CICSTS.Vvvv.SDFHLOAD
//DFHSTATS DD DISP=SHR,DSN=SMF.CICS
//DFHSTWRK DD UNIT=SYSDA,SPACE=(CYL,(80,80))
//SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(80,80))
//SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(80,80))
//SORTWK03 DD UNIT=SYSDA,SPACE=(CYL,(80,80))
//SORTWK04 DD UNIT=SYSDA,SPACE=(CYL,(80,80))
//DFHPRINT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSOUT DD SYSOUT=*
//SYSIN  DD *
SELECT APPLID=(applid)
SELECT TYPE=TRANSACTION
SUMMARY
//
//
COLLECTION TYPE=ALL
SELECT TYPE=PROGRAM
SELECT TYPE=STORAGE
SELECT TYPE=DISPATCHER
SELECT TYPE=VTAM
SELECT TYPE=TCPIP
SELECT TYPE=URIMAP
SELECT TYPE=TCPIPSERV
SEMECT TYPE=WEBSERVICE
SELECT TYPE=PIPELINE
SELECT TYPE=DB2
//**********************************************************************
//*** BETWEEN 15-18HRS EACH DAY FROM 03/16 TO 03/18                  ***
//**********************************************************************
TIME START=15.00.00,STOP=18.00.00,DAILY
DATE START=03/16/2015,STOP=03/18/2015
//**********************************************************************
//*** FROM 15HRS 03/16 TO 18HRS 03/18                                ***
//**********************************************************************
TIME START=15.00.00,STOP=18.00.00
DATE START=03/16/2015,STOP=03/18/2015
