# Docker.SSLTools
WebNIC SSL Tool Container, to enable easy management when dealing SSL Certificates.

Build with Alpine Linux (busybox, ash/sh shell environment).
Integrated with openssl and openjdk11.  

Do check the sample_scripts folder for sample of various commands.

---
WebNIC SSL 工具箱，一个可用于处理SSL证书的空间。

此工具箱以Alpine Linux (busybox, ash/sh shell 环境) 为基础。
加入了 openssl 和 openjdk11软件包。

其中的sample_scripts文件夹提供了一些常用的指令。

---

> Command to run the container
> 启动指令
>> docker run -it --name ContainerName -v "/d/my_folder":/root/my_folder --rm nelsonneoh/ssl_tools

> If wish to retain the container in Docker Desktop, remove the --rm will do.
> 让其常存于 Docker Desktop，去掉 --rm 即可

---
## ToDo List ##
Web service (Apache & Tomcat) with followings:
[] script to create new vhosts
[] script to deploy cert into vhosts
[] start service to enable test of SSL cert through localhost:8080

---
Developed and Maintained by WebNIC-Nelson.
Docker Hub repository: nelsonneoh/ssl_tools