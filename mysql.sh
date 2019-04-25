## 下载MySQL
wget http://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.22-linux-glibc2.12-x86_64.tar.gz

## copy 到 software 目录

## 安装目录，data目录
mkdir software

## 解压
tar xzvf mysql-5.7.22-linux-glibc2.12-x86_64.tar.gz

## data 目录
mkdir /data/mysql

groupadd dev
useradd -g dev dev
passwd dev

chown -R dev:dev  /software/mysql/
chown -R dev:dev  /data/mysql/
chown -R dev  /software/mysql/
chown -R dev  /data/mysql

chmod -R 755 /software/mysql/

cd /software/mysql/bin
./mysqld --user=dev --basedir=/software/mysql --datadir=/data/mysql --initialize
