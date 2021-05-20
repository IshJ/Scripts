    #!/bin/bash
	
	cd /home/ishadi/Documents/AndroidCFI/app-code/weather/weather/app/release
	mv app-release.apk weather1.apk
	adb uninstall org.woheller69.weather
	adb shell settings put global package_verifier_enable 0
	adb install weather1.apk

    adb shell "su -c 'find /data/app/ -name *woheller69* -type d -print'"
    base_folder_path=$(adb shell "su -c 'find /data/app/ -name *woheller69* -type d -print'")	



