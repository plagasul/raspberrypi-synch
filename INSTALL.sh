#!/bin/sh -e

# RUN AS SU
#install usbmount (automount usb drives)
sudo sed -i "s/\(PrivateMounts *= *\).*/\1no/" /lib/systemd/system/systemd-udevd.service
sudo apt install usbmount


#copy rc.local
sudo cp etc/rc.local /etc/rc.local
