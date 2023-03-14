ui_print "开始解压"
unzip -o "$ZIPFILE" -x 'META-INF/*' -x 'README.md' -x '.gitignore' -x '.git/*' -d $MODPATH >&2
# 创建证书目录
mkdir -p $MODPATH/system/etc/security/cacerts
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm $MODPATH/system/xbin/frida-server-16.0.11-android-arm64 0 0 0755
set_perm $MODPATH/post-fs-data.sh 0 0 0755
ls -lR $MODPATH
ui_print "安装完成"