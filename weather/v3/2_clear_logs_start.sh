    #!/bin/bash
adb shell "am force-stop com.example.methodautomator"
adb shell "am force-stop org.woheller69.weather"
adb shell "su -c 'logcat -c'"
adb shell "su -c 'am start -n "org.woheller69.weather/org.woheller69.weather.activities.SplashActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER'"
# waiting till the automation is over
#/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/lib/idea_rt.jar=37087:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/bin -Dfile.encoding=UTF-8 -classpath /home/ishadi/Documents/AndroidCFI/java-oathacker/LogcatReader/target/classes LogcatReader
