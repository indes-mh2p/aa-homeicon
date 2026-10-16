#!/bin/ksh
# Licensed under CC BY-NC-SA 4.0.
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# See the LICENSE file in the project root for full license text.
# NOT FOR COMMERCIAL USE

[[ ! -e "/mnt/app" ]] && mount -t qnx6 /dev/mnanda0t177.1 /mnt/app
mount -uw /mnt/app


if [[ -e "/mnt/app/eso/hmi/lsd/jars/" ]]; then
	if [[ -f "$MOD_PATH/aa-homeicon.jar" ]]; then
		cp -Vf "$MOD_PATH/aa-homeicon.jar" "/mnt/app/eso/hmi/lsd/jars/aa-homeicon.jar"
		echo " aa-homeicon installed "
	fi
else
	echo "error: /mnt/app/eso/hmi/lsd/jars does not exist"
fi
