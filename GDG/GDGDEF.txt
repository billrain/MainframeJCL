//*********************************************************************/
//* GDG DEFINE (GDG BASE)
//*********************************************************************/
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
   DEFINE GDG(NAME(S.TEST.GDG) -
           LIMIT(24) -
           NOEMPTY   -
           SCRATCH)
//
//*********************************************************************/
//* GDG DELETE GEN AND BASE
//*********************************************************************/
//STEP1   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
   DELETE MIB.TEST.GDG.* PURGE
   DELETE MIB.TEST.GDG   PURGE
