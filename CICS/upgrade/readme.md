This chapter covers steps to upgrade CICS to a higher version, steps vary from version to version, refer to official migration manual for full workflow. Validated for upgrading CICS 5.6 from 5.4.

1. Check OS and SW compatibility with CICS 5.6
2. Order install package and download
3. Upload package to uss folder
4. Perform CBPDO installtion using SMPE
5. Create mountpoint for cicsts56
6. Update APF and LNKLST for CICS5.6
7. Update LPALST for CICS5.6
8. IPL or dynamic add CICS SVC
9. Define CICS logger for each region
10. Redefine and initialize the local and global catalogs
11. Upgrade CSD from older version to new
12. Upgrade your copies of CICS-supplied resource definitions
13. Define V5R6M0.DFHCMACD
14. Update CICS STC PROCs
15. Create DFHPLTIx and DFHPLTSx in DFHTABLE DD of CICS PROC
16. Update CICS SIT parm
17. Re-assember user modified option table
18. Update JVMprofile if any
19. Start CICS

For CICSPLEX CMAS and WUA:
1. Allocate 5.6 CMAS EYUDREP
2. Allocate 5.6 WUA EYUWREP
3. Create JVMprofile for CMCI
4. Start CMAS and WUA regions
5. Define SYSPLEX definition
6. Define workload scope using CICS Explroer 
7. Restart CICSPLEX regions
