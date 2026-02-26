# initial test of the setup. run as root on arch linux.
# tested with arduino nano.
pacman -Syu --noconfirm

sudo pacman -S --needed arduino-cli avrdude --noconfirm
arduino-cli config init
arduino-cli core update-index
arduino-cli core install arduino:avr
arduino-cli compile --fqbn arduino:avr:nano nano

pacman -S --needed minicom --noconfirm
# lsusb
ls -l /dev/ttyUSB* /dev/ttyACM* 2>/dev/null

# arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:nano nano
arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:nano:cpu=atmega328old nano
minicom -D /dev/ttyUSB0 -b 9600
