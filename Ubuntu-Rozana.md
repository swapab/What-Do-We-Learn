---
## Adjust Brightness on startup
1. First find out max brightness value

  `cat /sys/class/backlight/acpi_video0/max_brightness`

2. Adjust Brightness on boot
   
   `sudo gedit /etc/rc.local`

  > => Before exit 0

  `echo 0 > /sys/class/backlight/acpi_video0/brightness`

---
## List Drives

`sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL`
