#!/bin/bash

# https://arvchristos.github.io/post/matching-dev-hidraw-devices-with-physical-devices/
#
# This script lists all hidraw devices and their corresponding physical devices.

FILES=/dev/hidraw*
for f in $FILES
do
  FILE=${f##*/}
  DEVICE="$(cat /sys/class/hidraw/${FILE}/device/uevent | grep HID_NAME | cut -d '=' -f2)"
  printf "%s \t %s\n" $FILE "$DEVICE"
done

