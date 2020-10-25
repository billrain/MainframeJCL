//**********************************************************************
//***  SMPE GIM CSI                                                  ***
//**********************************************************************
//STEP1    EXEC PGM=GIMXSID,PARM='WAIT=10MIN,L=ENU'
//SYSPRINT DD SYSOUT=*
//SMPOUT   DD SYSOUT=*
//SMPXTOUT DD DSN=SMPE.CICS54.GIMXSID.BIN,DISP=(NEW,CATLG),
//            DCB=(RECFM=FB,LRECL=12560,BLKSIZE=25120),
//            SPACE=(TRK,(10,10)),UNIT=3390
//SYSIN    DD DATA,DLM=$$
CSI=SMPE.CICS54.GLOBAL.CSI
$$
