##安装docker
yum -y install docker

##查看docker版本
docker version

##启动\重启docker
service docker start
service docker restart

##创建docker组，将docker用户放在docker组
groupadd docker
useradd -g docker docker
passwd ******

##docker运行hello-world镜像
docker run hello-world

##创建镜像
docker pull wangxuegang

##查看docker镜像
docker image ls

##docker心得：
docker相当于一个应用，在该应用中可以获取多个镜像，在容器里实例化，类似VmWare应用
