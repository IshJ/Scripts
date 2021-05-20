    #!/bin/bash
	
	cd /home/ishadi/Documents/AndroidCFI/app-code/weather/weather/app/release
	mv app-release.apk weather1.apk
	adb uninstall org.woheller69.weather
	adb shell settings put global package_verifier_enable 0
	adb install weather1.apk

    odex_loc="/oat/arm64/base.odex"

    
    adb shell "su -c 'find /data/app/ -name *woheller69* -type d -print'"
    base_folder_path=$(adb shell "su -c 'find /data/app/ -name *woheller69* -type d -print'")
	
	adb shell "su -c 'cd $base_folder_path && ls'"
    
    odex_folder_path="${base_folder_path}${odex_loc}"
	
	

    
    # folder_path = "$( adb shell "su -c 'find /data/app/ -name *native* -type d -print'")"
   # echo $odex_folder_path
	
	
	
    adb shell "su -c 'cp $odex_folder_path /sdcard/Documents'"
    # adb shell "su -c 'cp $odex_folder_path /sdcard/Documents'"
    
    adb shell "su -c 'oatdump --oat-file=$odex_folder_path  > /sdcard/Documents/oatdump.out'"

    adb pull sdcard/Documents/oatdump.out /home/ishadi/Documents/AndroidCFI/apps/weather/v1
    
    /usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/lib/idea_rt.jar=42205:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/bin -Dfile.encoding=UTF-8 -classpath /home/ishadi/Documents/AndroidCFI/OdexParser/out/production/OdexParser OdexParser

	
	



