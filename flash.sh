#!/bin/bash
echo starting process at `date`
adb kill-server
adb devices
adb wait-for-device
adb reboot bootloader

echo start flash aboot at `date`
fastboot flash aboot emmc_appsboot.mbn
echo end flash aboot at `date`

echo start flash boot at `date`
fastboot flash boot boot.img
echo end boot at `date`

echo start flash system at `date`
fastboot flash system system.img
echo end flash system at `date`

echo start flash recovery at `date`
fastboot flash recovery recovery.img
echo end flash recovery at `date`

echo start flash cache at `date`
fastboot flash cache cache.img
echo end flash cache at `date`
 
 
#fastboot flash modem  radio\NON-HLOS.bin
#fastboot flash sbl1          radio\sbl1.mbn
#fastboot flash rpm          radio\rpm.mbn
#fastboot flash tz               radio\tz.mbn
 
fastboot reboot      
echo end process at `date`
