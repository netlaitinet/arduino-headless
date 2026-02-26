### Instructions

arch linux with arduino board plugged in:
```
git clone https://github.com/netlaitinet/arduino-headless.git
cd arduino-headless
sudo su root
sh root.sh
```
not tested yet on arduino uno


### TODO
- [x] initial test to rule out potential hardware problems with the arduino on arch linux.
- [] version that can run as normal user without root. (currently everything runs as root)
- [] version that runs with arduino uno on debian. (currently arduino nano on arch)
