    #!/bin/bash
adb shell "am force-stop com.example.methodautomator"
adb shell "am force-stop org.woheller69.weather"
adb shell "su -c 'logcat -c'"
adb shell "su -c 'am start -n "org.woheller69.weather/org.woheller69.weather.activities.SplashActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER'"