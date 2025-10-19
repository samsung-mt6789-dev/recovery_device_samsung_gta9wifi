# TWRP Device Tree for Galaxy Tab A9 

Bringing TWRP support to the Tab A9.

## To build TWRP :

```
. build/envsetup.sh
mka recoveryimage
```

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
