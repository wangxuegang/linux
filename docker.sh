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
docker pull nginx

##查看docker镜像
docker image ls

##docker心得：
docker相当于一个应用，在该应用中可以获取多个镜像，在容器里实例化，类似VmWare应用



##创建tomcat镜像
docker pull tomcat

##查看镜像
docker image ls 

##启动tomcat服务器
docker run -d -p 16000:8080 tomcat

##查看当前执行的容器
docker ps -a

##停止指定id容器
docker stop ******

##删除指定
docker rm ******

##搜索镜像
docker search ******

##查看容器地址
docker exec -it ****** /bin/bash

##路径
pwd

##将war包拷贝容器Tomcat webapps目录下
docker cp wangxuegang.war *******/pwd/webapps




