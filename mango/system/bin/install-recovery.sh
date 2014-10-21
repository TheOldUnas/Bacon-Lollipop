#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9809920:23ff2954490d27f85ffef0032cf28da25e024d48; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9246720:06f2740786ba17ba2f4bbe8ee0e2f4eb399a0c1e EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 23ff2954490d27f85ffef0032cf28da25e024d48 9809920 06f2740786ba17ba2f4bbe8ee0e2f4eb399a0c1e:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
