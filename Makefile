#SHELL := /bin/bash
#PATH := /usr/local/bin:$(PATH)


default: upload_and_log

upload_and_log: upload log

reupload:
	pio run -t nobuild -t upload
	$(MAKE) log

ide:
	pio run -t idedata

all:
	pio -f -c vim run

upload:
	#platformio run --target upload
	echo hold down boot button
	pio -f -c vim run --target upload
	echo release boot button
	echo press and release EN button

clean:
	pio -f -c vim run --target clean

program:
	pio -f -c vim run --target program

uploadfs:
	pio -f -c vim run --target uploadfs

update:
	pio -f -c vim update

log:
	platformio device monitor
	
