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

##在docker中安装zookeeper镜像
docker pull zookeeper

##查看镜像
docker image ls

##启动zookeeper容器
docker run -d -p 16000:2181 zookeeper

##查看容器
docker ps -a

##停止容器 id
docker stop ******

##删除容器 id
docker rm ******

## id进入容器，配置zookeeper
docker exec -it ****** /bin/bash

vi /conf/zoo.cfg
  #添加server.1 = 127.0.0.1:2888:3888

##开放端口号
firewall-cmd --zone=public --add-port=2181/tcp --permanent
firewall-cmd --zone=public --add-port=2888/tcp --permanent
firewall-cmd --zone=public --add-port=3888/tcp --permanent

#重启防火墙
firewall-cmd --reload

##查看开放端口是否生效
firewall-cmd --zone=public --query-port=2181/tcp

##查看当前系统打开的所有端口
firewall-cmd --zone=public --list-ports

##查看端口号
netstat -anp | grep 2181

##查看所有端口号使用情况
netstat -ntlp

##查看当前进程
ps -ef | grep zookeeper

##下载rabbitmq镜像
docker pull rabbitmq:3.7.7-management

##运行rabbitmq容器
docker run -d --name rabbitmq3.7.7 -p 5672:5672 -p 15672:15672 -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin rabbitmq:3.7.7-management

##安装redis镜像
docker pull redis

##运行redis容器
docker run -d -p 6379:6379 redis

##查看liunx磁盘使用情况
df -h

##查看文件大小
du -h --max-depth=1
