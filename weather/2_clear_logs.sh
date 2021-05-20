    #!/bin/bash
adb shell "su -c 'logcat -c'"
adb shell "su -c 'am force-stop org.woheller69.weather'"