# Android fstab file.
#<src>                                         <mnt_point>  <type>  <mnt_flags and options>  <fs_mgr_flags>
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

/dev/block/platform/msm_sdcc.1/by-name/system       /system         ext4    ro,barrier=0                                                   wait
/dev/block/platform/msm_sdcc.1/by-name/cache        /cache          ext4    noatime,nodiratime,nosuid,nodev,barrier=0,data=ordered,errors=panic                     wait,check
/dev/block/platform/msm_sdcc.1/by-name/userdata     /data           ext4    noatime,nodiratime,nosuid,nodev,barrier=0,data=ordered,noauto_da_alloc,errors=panic     wait,check,encryptable=/dev/block/platform/msm_sdcc.1/by-name/encrypt
/dev/block/platform/msm_sdcc.1/by-name/persist      /persist        ext4    nosuid,nodev,barrier=1,data=ordered,nodelalloc                  wait
/dev/block/platform/msm_sdcc.1/by-name/modem        /firmware       vfat    ro,uid=1000,gid=1000,dmask=227,fmask=337                        wait
/dev/block/platform/msm_sdcc.1/by-name/boot         /boot           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/recovery     /recovery       emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/sns          /sns            ext4    nosuid,nodev,barrier=1,data=ordered                             wait,check
/dev/block/platform/msm_sdcc.1/by-name/misc         /misc           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/modem        /radio          emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/sbl1         /sbl1           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/sbl2         /sbl2           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/sbl3         /sbl3           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/tz           /tz             emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/rpm          /rpm            emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/aboot        /aboot          emmc    defaults                                                        defaults
/devices/platform/msm_sdcc.3/mmc_host/mmc1/         auto            auto    defaults                                                        voldmanaged=sdcard1:auto