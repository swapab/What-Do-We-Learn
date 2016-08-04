
```sh
##shut down VM/guest
sudo virsh shutdown forklift_centos7-devel
```

```sh
##start virt-manager
sudo virt-manager
```

[GUI: Edit -> Connection Details -> Storage -> default -> <create new qcow2 image with desired size of partition>]

```sh
##Find root partition of old image
➜ sudo virt-filesystems --long --parts --blkdevs -h -a /home/My-VM/forklift_centos7-devel.img    
Name       Type       MBR  Size  Parent
/dev/sda1  partition  83   512M  /dev/sda
/dev/sda2  partition  82   1.0G  /dev/sda
/dev/sda3  partition  83   38G   /dev/sda
/dev/sda   device     -    40G   -
```
In this case partition is `/dev/sda3`

```sh
## Copy content from old `img` to new `qcow2`
sudo virt-resize --expand /dev/sda3 forklift_centos7-devel.img forklift_centos7-devel-extended.qcow2
```

```sh
##Edit guest -> replace the old `img` name with new `qcow2` name
## i.e. replace forklift_centos7-devel.img with forklift_centos7-devel-extended.qcow2
sudo virsh edit forklift_centos7-devel
```

```sh
##verify new qcow2 image is working fine. 
➜ sudo virsh start forklift_centos7-devel
Domain forklift_centos7-devel started
```

Reference
http://libguestfs.org/virt-resize.1.html
