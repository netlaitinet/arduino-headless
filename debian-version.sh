#!/usr/bin/env bash

PORT="/dev/ttyUSB0"
# PORT="/dev/ttyACM0"
lsusb
ls -l /dev/ttyUSB* /dev/ttyACM* 2>/dev/null


apt-get update
apt-get -y upgrade

curl -fsSL https://raw.githubusercontent.com/arduino/ac/master/install.sh | sh
apt-get install -y ac avrdude minicom usbutils


ac="bin/arduino-cli"

$ac config init
$ac core update-index
$ac core install arduino:avr

$ac compile --fqbn arduino:avr:uno nano

$ac upload -p "$PORT" --fqbn arduino:avr:uno nano
# $ac upload -p "$PORT" --fqbn arduino:avr:nano:cpu=atmega328old nano

minicom -D "$PORT" -b 9600

# https://arduino.github.io/ac/0.32/installation/
# tested on 64bit debian, not on arm yet.
