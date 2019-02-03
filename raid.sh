#!/bin/bash
mdadm --create --verbose /dev/md0 -l 6 -n 5 /dev/sd{b,c,d,e,}
echo "DEVICE partitions" > /etc/mdadm.conf
mdadm --detail --scan --verbose | awk '/ARRAY/ {print}' >> /etc/mdadm/mdadm.conf
