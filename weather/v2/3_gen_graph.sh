    #!/bin/bash
    adb shell "su -c 'logcat -d > /sdcard/Documents/log.out'"
    adb pull /sdcard/Documents/log.out /home/ishadi/Desktop/log/
    /usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/lib/idea_rt.jar=43805:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/bin -Dfile.encoding=UTF-8 -classpath /home/ishadi/Documents/AndroidCFI/LogParser/target/classes:/home/ishadi/.m2/repository/org/jfree/jfreechart/1.5.0/jfreechart-1.5.0.jar Parser


