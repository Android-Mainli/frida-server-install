frida-server-install.zip:
	zip -r frida-server-install.zip . -x ".git/*" -x ".gitignore" \
		-x "Makefile" -x "*/.DS_Store" -x ".DS_Store" -x "frida-server-install.zip"
zip:frida-server-install.zip

push: zip
	adb push frida-server-install.zip /sdcard/Download/

clean:
	rm -rf frida-server-install.zip

install:clean push
	rm -rf frida-server-install.zip