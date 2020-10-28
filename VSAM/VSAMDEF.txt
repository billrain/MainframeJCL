//**********************************************************************
//*** VSAM DEFINE CLUSTER DATA AND INDEX
//**********************************************************************
//VSAMDEF   EXEC PGM=IDCAMS
//SYSPRINT  DD   SYSOUT=A
//SYSIN     DD   *
     DEFINE CLUSTER(NAME(VSAM.NAME) -
                INDEXED -
                CYL(10 2) -
                RECORDSIZE(384 384) -
                KEYS(13 20) -
                FREESPACE(0 50) -
                SHAREOPTIONS(2 3) -
                LOG(NONE) -
                CISZ(512)) -
             DATA  (NAME(VSAM.NAME.DATA) -
               CISZ(512)) -
             INDEX (NAME(VSAM.NAME.INDEX) -
               CISZ(512))
//
