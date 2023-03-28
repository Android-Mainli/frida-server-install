SKIPUNZIP=1

unzip -o "$ZIPFILE" -x 'META-INF/*' -x 'README.md' -x '.gitignore' -x '.git/*' -d $MODPATH >&2
set_perm_recursive $MODPATH 0 0 0755 0644

# 目录文件挨个添加执行权限
set_perm_recursive $MODPATH/system/xbin 0 0 0755 0755

# 创建证书目录,并添加证书挪动脚本
mkdir -p $MODPATH/system/etc/security/cacerts
set_perm $MODPATH/post-fs-data.sh 0 0 0755
ls -alR $MODPATH

ui_print "安装完成"