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

---
## Ubuntu speedtest.cli
```
$ wget -O speedtest-cli https://raw.github.com/sivel/speedtest-cli/master/speedtest_cli.py
$ chmod +x speedtest-cli
$ ./speedtest-cli
```
---
## Ubuntu apt-get proxied
Conf file `/etc/apt/apt.conf`
Add : `Acquire::http::Proxy "http://x.x.x.x:8080";`
---
## EC2 add swap/increase swap space
```
$ sudo mount /dev/xvdb /mnt
mount: /dev/xvdb already mounted or /mnt busy
mount: according to mtab, /dev/xvdb is already mounted on /mnt
$ sudo dd if=/dev/zero of=/mnt/swapfile bs=1M count=4096
4096+0 records in
4096+0 records out
4294967296 bytes (4.3 GB) copied, 18.5423 s, 232 MB/s
$ sudo chown root:root /mnt/swapfile
$ sudo chmod 600 /mnt/swapfile
$ sudo mkswap /mnt/swapfile
Setting up swapspace version 1, size = 4194300 KiB
no label, UUID=8e8b3d90-7cb2-4c8c-a976-da442582fbb5
$ sudo swapon /mnt/swapfile
$ cat /etc/fstab
$ vim /etc/fstab
** Add following
  /dev/xvda2      /mnt    auto    defaults,nobootwait,comment=cloudconfig 0   2
  /mnt/swapfile swap swap defaults 0 0
$ sudo swapon -a
```

---
## Ubuntu telnet test email
```
mail from:swapnila@example.com
rcpt to:secretproject.example@example.io
data
subject: Testting email io
Hello,
How are you doing?
```

---
### Debug CPU utlization

pidstat -u 600 >/var/log/pidstats.log & disown $!

```
accton on
/var/log/account/pacct
```

http://serverfault.com/questions/387268/linux-cpu-usage-and-process-execution-history
