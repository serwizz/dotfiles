#!/bin/bash

function date_formatted {
	date +%H:%M:%S
}

USERDATA=0;
RADIO=0;

while [[ "$#" > 0 ]]; do case $1 in
    -u) USERDATA=1;;
    -r) RADIO=1;;
    
    *);;
  esac; shift
done


echo -e "starting process at `date_formatted`"
# adb kill-server
# adb devices
# adb wait-for-device
# adb reboot bootloader

echo -e "\nstart flash aboot at `date_formatted`"
# fastboot flash aboot emmc_appsboot.mbn
echo -e "end flash aboot at `date_formatted` \n"

echo -e "start flash boot at `date_formatted`"
# fastboot flash boot boot.img
echo -e "end boot at `date_formatted` \n"

echo -e "start flash system at `date_formatted`"
# fastboot flash system system.img
echo -e "end flash system at `date_formatted` \n"

if [ $USERDATA -eq 1 ]
	then
		echo -e "start flash userdata at `date_formatted`"
		# fastboot flash userdata userdata.img
		echo -e "end flash userdata at `date_formatted` \n"
fi

echo -e "start flash recovery at `date_formatted`"
# fastboot flash recovery recovery.img
echo -e "end flash recovery at `date_formatted` \n"

echo -e "start flash cache at `date_formatted`"
# fastboot flash cache cache.img
echo -e "end flash cache at `date_formatted`\n"
 
 
if [ $RADIO -eq 1 ]
	then
		echo -e "start flash radio at `date_formatted`"
		# fastboot flash modem radio\NON-HLOS.bin
		# fastboot flash sbl1 radio\sbl1.mbn
		# fastboot flash rpm radio\rpm.mbn
		# fastboot flash tz radio\tz.mbn
		echo -e "end flash radio at `date_formatted` \n"
fi

# fastboot reboot      
echo -e "end process at `date_formatted` \n"


