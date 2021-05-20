    #!/bin/bash

    vdex_loc="/oat/arm64/base.vdex"

    adb shell "su -c 'cmd package compile -m speed -f com.example.mynativeapplication'"
    adb shell "su -c 'find /data/app/ -name *native* -type d -print'"
    folder_path=$(adb shell "su -c 'find /data/app/ -name *native* -type d -print'")
    folder_path="${folder_path}${vdex_loc}"
    # folder_path = "$( adb shell "su -c 'find /data/app/ -name *native* -type d -print'")"
    echo $folder_path
    adb shell "su -c 'cp $folder_path /sdcard/Documents'"
    adb pull /sdcard/Documents/base.vdex /home/ishadi/Documents/AndroidCFI/apps/nativeapp/v1_1
    /home/ishadi/Documents/AndroidCFI/vdexEx/vdexExtractor/bin/vdexExtractor -i /home/ishadi/Documents/AndroidCFI/apps/nativeapp/v1_1/base.vdex -o /home/ishadi/Documents -f --dis -l /home/ishadi/Documents/dis.log
    ls


