for apkfile in /system/preinstall/*.apk; do
   /system/bin/pm install "$apkfile"
done
