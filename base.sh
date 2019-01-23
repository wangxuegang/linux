Ps(#：符号 管理员  $：符号 普通用户)

##创建目录
mkdir test1
##删除空目录
rmdir test1 
##删除非空目录
rm -f test1
##创建文件


vi test.txt
#输入内容
wangxuegang
#写入
:w
#退出
:q


##tar压缩目录
tar -zcvf test1.tar.gz test1

##tar解缩目录
tar -zxvf test.tar.gz

##zip压缩文件或目录
zip test1.zip test1.txt

##zip解压
unzip test1.zip

##关机
shutdown -h now

##打印信息
echo "wangxuegang"

##打印环境变量,liunx下分大小写
echo $LANG
echo $HOME

##打印目录和文件名
dir
##将打印目录和文件名，写入文件中
dir > 123.txt
##将打印目录和文件名，追加写入文件中
dir >> 123.txt

##显示详情（隐藏文件）
ls -a
##显示详情（列表）
ls -l

##查询当前登录用户
whoami
##查看当前登录用户的组内成员
groups

##创建用户
sudo adduser wangxuegang

##用户设置密码
sudo passwd wangxuegang
#提示：输入密码、重复密码

##删除用户
sudo userdel -r wangxuegang

##安装命令 yun(自动安装) 和 rmp （手动安装，不会处理依赖关系）
yum -y install epel-release

##卸载命令 
yum -y remove epel-release

##查询软件是否安装
yum list installed | grep epel-release

##查看linux内核版本
uname -r

##查找文件或目录
find / -name wangxuegang.txt
find / -name wangxuegang

##内容查询
grep -i hello wangxuegang.txt

##查看文件
cat wangxuegang.txt
tac wangxuegang.txt

##查看实时文档，如日志文件
tail -f wangxuegang.txt

