//*********************************************************************/
//*               DUMP DATA SET INTO GDG
//*********************************************************************/
//STEP3   EXEC PGM=ADRDSSU,REGION=4M
//IN1   DD  DISP=SHR,UNIT=3390,VOL=SER=COMUSR
//OUT1  DD  DSN=MIB.TEST.GDG(+01),
//            UNIT=3390,VOL=SER=Z19SPL,
//            SPACE=(CYL,(1,1),RLSE),DISP=(NEW,CATLG)
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
  DUMP  INDD(IN1) OUTDD(OUT1)  -
  DATASET(INCLUDE(MIB.TEST.JCL)) -
             ALLEXCP ALLDATA(*)
/*
//
//*********************************************************************/
//*               COPY DATA SET INTO GDG
//*********************************************************************/
//STEP4    EXEC PGM=ADRDSSU,REGION=4M
//SYSPRINT DD SYSOUT=*
//IN1  DD DISP=SHR,UNIT=3390,VOL=SER=COMUSR
//OUT1 DD DISP=SHR,UNIT=3390,VOL=SER=Z19SPL
//SYSIN DD *
  COPY INDD(IN1) OUTDD(OUT1) -
  DATASET(INCLUDE(MIB.TEST.INPUT)) -
           ALLEXCP ALLDATA(*)          -
  RENAMEU(MIB.TEST.INPUT,MIB.TEST.GDG.G0002V00) -
  CATALOG
/*
//
//*********************************************************************/
//*               GDG REPRO DATA G0001
//*********************************************************************/
//STEP4   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//OUTPUT   DD DSN=MIB.TEST.GDG(+02),DISP=(NEW,CATLG),
//         SPACE=(TRK,(1,1)),UNIT=3390,VOL=SER=Z19SPL,
//         LIKE=MIB.TEST.INPUT
//INPUT    DD DSN=MIB.TEST.INPUT,DISP=SHR
//SYSIN DD *
   REPRO INFILE(INPUT) OUTFILE(OUTPUT)
/*
//*********************************************************************/
//*               COPY DATA SET INTO GDG
//*********************************************************************/
//STEP4   EXEC PGM=ADRDSSU,REGION=4M
//IN1   DD  DISP=SHR,UNIT=3390,VOL=SER=COMUSR
//OUT1  DD  DSN=MIB.TEST.GDG(+02),
//            UNIT=3390,VOL=SER=Z19SPL,
//            SPACE=(CYL,(1,1),RLSE),DISP=(NEW,CATLG)
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
  COPY  INDD(IN1) OUTDD(OUT1)  -
  DATASET(INCLUDE(MIB.TEST.INPUT)) -
             ALLEXCP ALLDATA(*) TGTGDS(ACTIVE) CATALOG
//
//*********************************************************************
//*               GDG PRINT DATA TO SYSOUT
//*********************************************************************
//STEP5   EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MIB.TEST.GDG(+0),DISP=SHR
//SYSUT2   DD SYSOUT=*
//SYSIN DD DUMMY
