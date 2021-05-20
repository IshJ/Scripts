    #!/bin/bash

    vdex_loc="/oat/arm64/base.vdex"
    odex_loc="/oat/arm64/base.odex"


    adb shell "su -c 'cmd package compile -m speed -f org.woheller69.weather'"
    adb shell "su -c 'find /data/app/ -name *woheller69* -type d -print'"
    base_folder_path=$(adb shell "su -c 'find /data/app/ -name *woheller69* -type d -print'")

    vdex_folder_path="${base_folder_path}${vdex_loc}"
    odex_folder_path="${base_folder_path}${odex_loc}"
    
    # folder_path = "$( adb shell "su -c 'find /data/app/ -name *native* -type d -print'")"
    echo $vdex_folder_path
    adb shell "su -c 'cp $vdex_folder_path /sdcard/Documents'"
    # adb shell "su -c 'cp $odex_folder_path /sdcard/Documents'"
    
    adb shell "su -c 'oatdump --oat-file=$odex_folder_path  > /sdcard/Documents/oatdump.out'"

    adb pull /sdcard/Documents/base.vdex /home/ishadi/Documents/AndroidCFI/apps/weather/v1
    adb pull sdcard/Documents/oatdump.out /home/ishadi/Documents/AndroidCFI/apps/weather/v1
    
    /home/ishadi/Documents/AndroidCFI/vdexEx/vdexExtractor/bin/vdexExtractor -i /home/ishadi/Documents/AndroidCFI/apps/weather/v1/base.vdex -o /home/ishadi/Documents/AndroidCFI/apps/weather/v1 -f --dis -l /home/ishadi/Documents/AndroidCFI/apps/weather/v1/dis.log --no-unquicken
    /usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/lib/idea_rt.jar=43683:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/bin -Dfile.encoding=UTF-8 -classpath /home/ishadi/Documents/AndroidCFI/VdexParsser/out/production/VdexParsser VdexParser

    /usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/lib/idea_rt.jar=42479:/home/ishadi/Desktop/ideaIC-2021.1.1/idea-IC-211.7142.45/bin -Dfile.encoding=UTF-8 -classpath /home/ishadi/Documents/AndroidCFI/OdexParser/out/production/OdexParser OdexParser



