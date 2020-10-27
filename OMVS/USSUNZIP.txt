//**********************************************************************
//*** OMVS UNZIP SMPE                                                ***
//**********************************************************************
//STEP1 EXEC PGM=GIMUNZIP,REGION=0M,PARM='HASH=NO'
//SMPDIR   DD  PATH='/tmp/140000SIQ00',
//             PATHDISP=KEEP
//*SMPJHOME DD PATH='/usr/lpp/java/J1.8/' <- JAVA z/OS must be at least
//*SMPCPATH DD PATH='/usr/lpp/smp/classes/',PATHDISP=KEEP  <-- JAVA
//*
//SMPOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSUT2   DD  UNIT=SYSALLDA,SPACE=(CYL,(200,20))
//SYSUT3   DD  UNIT=SYSALLDA,SPACE=(CYL,(50,10))
//SYSUT4   DD  UNIT=SYSALLDA,SPACE=(CYL,(25,5))
//SYSIN    DD  *
<GIMUNZIP>
<ARCHDEF archid="SAMPJCL"
         newname="HLQ.MVS.SAMPJCL"
         volume="*"
         replace="YES"
> </ARCHDEF>
<ARCHDEF archid="CAI.CSCME00.SMPMCS"
         newname="HLQ.MVS.CAI.CSCME00.SMPMCS"
         volume="*"
         replace="YES"
> </ARCHDEF>
<ARCHDEF archid="CAI.CHME000.F1"
         newname="HLQ.MVS.CAI.CHME000.F1"
         volume="*"
         replace="YES"
> </ARCHDEF>
</GIMUNZIP>
//
