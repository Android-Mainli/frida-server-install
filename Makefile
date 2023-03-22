zip:frida-server-install.zip
frida-server-install.zip:
	zip -r frida-server-install.zip . -x ".git/*" -x ".gitignore" -x "Makefile" -x "*/.DS_Store" -x ".DS_Store"
push: zip
	adb push frida-server-install.zip /sdcard/Downloads/

install:push clean

clean:
	rm -rf frida-server-install.zip