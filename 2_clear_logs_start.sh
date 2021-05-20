    #!/bin/bash
adb shell "su -c 'logcat -c'"
adb shell "su -c 'am start -n "com.example.mynativeapplication/com.example.mynativeapplication.MainActivity" -a android.intent.action.MAIN'"