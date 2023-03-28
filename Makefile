
frida-server-install.zip:
	zip -r frida-server-install.zip . -x ".git/*" -x ".gitignore" \
		-x "Makefile" -x "*/.DS_Store" -x ".DS_Store" -x "frida-server-install.zip"

push: frida-server-install.zip
	adb push frida-server-install.zip /sdcard/Download/

install:clean push clean

clean:
	rm -rf frida-server-install.zip