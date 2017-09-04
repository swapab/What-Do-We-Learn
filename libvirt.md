* Libvirt new vm, no network, no internet connection
```
   nmtui
   Edit eth0
   Change Automatic to Manual
   assign-ip [192.168.122.96] # Example: 192.168.122.96
   assign-gateway [192.168.122.1]
   assign-dns [same as gateway]
```
