#!/bin/sh -e

# RUN AS SU
#install usbmount (automount usb drives)
apt install usbmount

#copy rc.local
cp etc/rc.local /etc/rc.local