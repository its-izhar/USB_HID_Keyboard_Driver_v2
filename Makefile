# Makefile for modified USB HID Keyboard driver
# Author: Izhar Shaikh

obj-m := usbkbd_v2.o

all:
	make -C /usr/src/linux-headers-$(shell uname -r) M=$(PWD) modules

clean:
	make -C /usr/src/linux-headers-$(shell uname -r) M=$(PWD) clean
	rm -f *.o.cmd *.symvers *.order *.gch
