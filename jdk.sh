##安装jdk,centos7自带openjdk,删除，下载java jdk
java -version

##卸载java-1.8.0-openjdk
yum -y remove java-1.8.0-openjdk

##查询java软件包
rpm -qa | grep java

##卸载java-1.8.0-openjdk
rpm -e --nodeps java-1.8.0-openjdk-headless-1.8.0.181-7.b13.el7.x86_64

#创建安装jdk目录
mkdir /software/java

#拷贝jdk到指定路径
cp jdk-8u191-linux-x64.tar.gz /software/java

#解压jdk
tar -zxvf jdk-8u191-linux-x64.tar.gz
#配置环境变量
vi /etc/profile
#配置生效
source /etc/profile
