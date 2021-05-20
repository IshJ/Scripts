    #!/bin/bash
adb shell "am force-stop com.example.methodautomator"
adb shell "am force-stop org.woheller69.weather"
adb shell "su -c 'logcat -c'"
adb shell "su -c 'am start -n "com.example.methodautomator/com.example.methodautomator.MainActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER'"