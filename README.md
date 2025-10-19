# OFOX Device Tree for Galaxy Tab A9 

Bringing TWRP support to the Tab A9.

### How to install
> Flash the latest .tar release from [releases](https://github.com/samsung-mt6789-dev/recovery_device_samsung_gta9wifi/releases), it will require patched vbmeta.img
> 
> Hold the recovery combination (Volume Up + Power) while the .tar is flashing via the odin tool.
> 
> Flash any multidisabler that has been tested on a31. 
> 
> You can now boot into your system and do whatever you want.

### Working Features List
>
> - [x] Critial Partitions fail to unlock
>
> **Blocking checks**
> - [x] Correct screen/recovery size
> - [ ] Working Touch, screen  # [note](https://wiki.orangefox.tech/en/guides/recovery_no_touch)
> - [x] Backup to internal/microSD
> - [x] Restore from internal/microSD
> - [x] reboot to system
> - [x] ADB
>
> **Medium checks**
> - [ ] update.zip sideload
> - [x] UI colors (red/blue inversions)
> - [x] Screen goes off and on
> - [x] F2FS/EXT4 Support, exFAT/NTFS where supported
> - [x] all important partitions listed in mount/backup lists
> - [x] backup/restore to/from external (USB-OTG) storage
> - [x] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
> - [ ] decrypt /data
> - [x] Correct date
>
> **Minor checks**
> - [ ] MTP export
> - [x] reboot to bootloader (download)
> - [x] reboot to recovery
> - [x] poweroff
> - [x] battery level
> - [x] temperature
> - [ ] encrypted backups
> - [ ] input devices via USB (USB-OTG) - keyboard, mouse and disks
> - [ ] USB mass storage export
> - [x] set brightness
> - [ ] vibrate
> - [x] screenshot
> - [x] partition SD card

### Notes
- Boots into TWRP UI
- Touch does not work, yet.
  - with minimal patches to device touch drivers, some touch events are registered on device and dmesg logs some input events. 
  - no definitive clue to what is blocking TSP
  - temporary workaround is to build OFOX recovery
    - OFOX supports HW Key navigation for this exact reason.

#### Input Events 
```declarative
I: Bus=0000 Vendor=0000 Product=0000 Version=0000 N: Name="himax-touchscreen" P: Phys= S: Sysfs=/devices/virtual/input/input2 U: Uniq= H: Handlers=event2 sec_key_notifier B: PROP=2 B: EV=b B: KEY=400 10fff80 0 8000 168000000000 4d00081060000 B: ABS=667800000000000
```
```
gta9wifi:/ # getevent -lt /dev/input/event2  
=== /dev/input/event2 === 
[ 7320.274804] EV_ABS ABS_MT_POSITION_X 0000023f 
[ 7320.274804] EV_SYN SYN_REPORT 00000000 
[ 7320.283050] EV_ABS ABS_MT_POSITION_X 00000241 
[ 7320.283050] EV_SYN SYN_REPORT 00000000 
[ 7320.291482] EV_ABS ABS_MT_POSITION_X 00000243 
[ 7320.291482] EV_SYN SYN_REPORT 00000000 
[ 7320.299720] EV_ABS ABS_MT_POSITION_X 00000246 
[ 7320.299720] EV_SYN SYN_REPORT 00000000 
[ 7320.308291] EV_ABS ABS_MT_TOUCH_MAJOR 0000000d 
[ 7320.308291] EV_ABS ABS_MT_POSITION_X 00000248 
[ 7320.308291] EV_SYN SYN_REPORT 00000000
```
