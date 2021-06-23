    #!/bin/bash

    adb shell "su -c 'cp /data/data/org.woheller69.weather/databases/SideScan.db /sdcard/Documents'"
	adb pull sdcard/Documents/SideScan.db /home/ishadi/Documents/AndroidCFI/apps/weather/v1/db/
	
	adb shell "su -c 'cp /data/data/org.woheller69.weather/databases/MainApp.db /sdcard/Documents'"
	adb pull sdcard/Documents/MainApp.db /home/ishadi/Documents/AndroidCFI/apps/weather/v1/db/
	
	
	cd /home/ishadi/Documents/AndroidCFI/apps/weather/v1/db/
	
	sqlite3 MainApp.db 'select * from Ground_Truth order by Count' > /home/ishadi/Documents/AndroidCFI/apps/weather/v1/db/ground_truth_full.out
	sqlite3 SideScan.db 'select * from Side_Channel_Info order by Count' > /home/ishadi/Documents/AndroidCFI/apps/weather/v1/db/side_channel_info_full.out
	/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/lib/idea_rt.jar=46391:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/bin -Dfile.encoding=UTF-8 -classpath /home/ishadi/Documents/AndroidCFI/java-oathacker/LogPreprocessor/target/classes LogPreprocessor

	#sqlite3 SideScan.db 'select * from Ground_Truth where (Ground_Truth.Count>(select min(Side_Channel_Info.Count) from Side_Channel_Info)) order by Count limit 20' > /home/ishadi/Documents/AndroidCFI/apps/weather/v1/db/ground_truth.out
	#sqlite3 SideScan.db 'select * from Side_Channel_Info where Count<(select max(ab.Count) from (select Ground_Truth.Count from Ground_Truth where (Ground_Truth.Count>(select min(Side_Channel_Info.Count) from Side_Channel_Info)) order by Count limit 20) as ab)' > /home/ishadi/Documents/AndroidCFI/apps/weather/v1/db/side_channel_info.out