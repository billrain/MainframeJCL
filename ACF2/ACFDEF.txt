//* DEFINE ACF2 PRIMARY DB
//DEFINE  EXEC PGM=IDCAMS,REGION=4096K
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE HLQ.ACF2.INFOSTG    CLUSTER
  DELETE HLQ.ACF2.LOGONIDS   CLUSTER
  DELETE HLQ.ACF2.RULES      CLUSTER

 DEFINE CLUSTER(NAME(HLQ.ACF2.LOGONIDS)          -
         VOL(A11111)                  -
         RECORDSIZE(512,1024)                    -
         FREESPACE(30,30)                        -
         UNIQUE OWNER(ACF)                       -
         KEYS(8,0)                               -
         SHAREOPTIONS(1,3))                      -
    DATA(NAME(HLQ.ACF2.LOGONIDS.DATA)            -
         CYLINDERS(35,5)                         -
         CONTROLINTERVALSIZE(4096))              -
    INDEX(NAME(HLQ.ACF2.LOGONIDS.INDEX)          -
         TRACKS(30,15)                           -
         CONTROLINTERVALSIZE(4096))
                                               /* */
 DEFINE CLUSTER(NAME(HLQ.ACF2.RULES)             -
         VOL(A11111)                  -
         RECORDSIZE(400,16376)                   -
         FREESPACE(30,30)                        -
         UNIQUE OWNER(ACF)                       -
         KEYS(8,0)                               -
         SHAREOPTIONS(1,3))                      -
    DATA(NAME(HLQ.ACF2.RULES.DATA)               -
         CYLINDERS(45,5)                         -
         CONTROLINTERVALSIZE(16384))             -
    INDEX(NAME(HLQ.ACF2.RULES.INDEX)             -
         TRACKS(30,15)                           -
         CONTROLINTERVALSIZE(4096))
                                               /* */
 DEFINE CLUSTER(NAME(HLQ.ACF2.INFOSTG)           -
         VOL(A11111)                  -
         RECORDSIZE(400,16376)                   -
         FREESPACE(30,30)                        -
         UNIQUE OWNER(ACF)                       -
         KEYS(44,32)                             -
         SHAREOPTIONS(1,3))                      -
    DATA(NAME(HLQ.ACF2.INFOSTG.DATA)             -
         CYLINDERS(30,5)                         -
         CONTROLINTERVALSIZE(16384))             -
    INDEX(NAME(HLQ.ACF2.INFOSTG.INDEX)           -
         TRACKS(30,15)                           -
         CONTROLINTERVALSIZE(4096))
/*
