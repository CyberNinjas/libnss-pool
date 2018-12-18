# libnss-pool

# What is the functionality of pool service?
The general idea behind the pool service is to use uid's from a predefined pool
as a precofigured set of accounts with yet unknown names, so up to the number of
preconfigured accounts `getpwnam()` calls, happening as a result 
of `getent passwd username` or`su` will not fail but will return `struct passwd`
results matching the name provided as `getpwnam` argument with the 
uid,gid,gecos,dir,shell details preconfigured for the used pool. 

# How to use it?
Simply compile like specified for nsswitch libraries:

```terminal
./bootstrap.sh
./configure
make
```
Then copy the `.so.2` file to the location used on your system,

```terminal
cp ./libnss_pool.so.2 /usr/x86_64-linux-gnu/
```

Finally, add it to passwd database configuration of nsswitch.conf:

```terminal
[root@localhost ~]# grep passwd /etc/nsswitch.conf
passwd:     files systemd pool
```
