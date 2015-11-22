# CM12.1 Device tree for GT-S7580

### Spec:
  - Platform: HAWAII (BROADCOM)
  - Family: KONA (BROADCOM)
  - Codename: KYLEPRO
  - SoC: BCM21664T (1.2Ghz)
  - CPU: Cortex-A9
  - GPU: Broadcom VideoCore IV
  - Screen Resolution: 480x800
  - RAM: 768M
  - Sensor: Accelerometer, proximity, compass
  - Misc: WIFI, Bluetooth, HSPA+, GPS
  - Memory: 4GB (Usable 2.2GB)

### Other resource:
  - Kernel source: https://github.com/SandPox/android_kernel_samsung_kyleproxx
  - Vendor blobs: https://github.com/SandPox/android_vendor_samsung_kyleproxx/tree/kylepro

### More Information:
```sh
$ cat /proc/cpuinfo
Processor       : ARMv7 Processor rev 0 (v7l)                    
processor       : 0                                              
BogoMIPS        : 1190.29                                        
                                                                 
processor       : 1                                              
BogoMIPS        : 1190.29                                        
                                                                 
Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls
CPU implementer : 0x41                                           
CPU architecture: 7                                              
CPU variant     : 0x3                                            
CPU part        : 0xc09                                          
CPU revision    : 0                                              
                                                                 
Hardware        : hawaii_ss_kylepro                              
Revision        : 0000                                           
Serial          : 0000000000000000                               
```

```sh
$ cat /proc/emmc
dev:         size       erasesize       name
mmcblk0p1: 00000800 00000400 "cal"
mmcblk0p2: 00000200 00000400 "sysparm_dep"
mmcblk0p3: 00000200 00000400 "parm-spml_dep"
mmcblk0p4: 00000200 00000400 "RF_CAL_FILE"
mmcblk0p5: 00004000 00000400 "KERNEL"
mmcblk0p6: 00004000 00000400 "RECOVERY"
mmcblk0p7: 00009600 00000400 "modem"
mmcblk0p8: 00000400 00000400 "reserved"
mmcblk0p9: 00001000 00000400 "SBL1"
mmcblk0p10: 00001000 00000400 "SBL2"
mmcblk0p11: 00004000 00000400 "PARAM"
mmcblk0p12: 00000400 00000400 "DTSBK"
mmcblk0p13: 00000400 00000400 "DTS"
mmcblk0p14: 00000200 00000400 "FOTA_SIG"
mmcblk0p15: 0000a000 00000400 "efs"
mmcblk0p16: 00064000 00000400 "CSC"
mmcblk0p17: 00241570 00000400 "system"
mmcblk0p18: 0000f000 00000400 "HIDDEN"
mmcblk0p19: 0046c000 00000400 "userdata"
```

### Credits (Sort by alphabetical order):
  - Pawitp
  - The CyanogenMod Team
  - Zim555
