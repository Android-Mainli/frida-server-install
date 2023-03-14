#声明SKIPUNZIP=1 完全自主安装
SKIPUNZIP=1

ui_print "开始解压"
unzip -o "$ZIPFILE" -x 'META-INF/*' -d $MODPATH >&2
mv -f $MODPATH/system/binpath $MODPATH/system/xbin
set_perm $MODPATH/system/xbin/frida-server-16.0.11-android-arm64 0 0 0755
ls -R $MODPATH
ui_print "安装完成"