# Day4 早上 进程管理 & cron 定时任务
ps aux         # 列出全部进程
top            # 动态进程监控
htop           # 可视化进程
ps aux | grep  # 过滤进程
kill PID       # 正常终止进程
kill -9 PID    # 强制杀死进程
killall 名字   # 按程序名杀进程

sleep xxx &    # 后台运行
jobs           # 查看后台任务
fg %编号       # 后台切前台
bg %编号       # 暂停任务继续后台运行

crontab -l     # 查看定时任务
crontab -e     # 编辑定时任务
cron格式：分 时 日 月 周 命令
/etc/cron.daily  系统每日任务目录
## Day4 下午 用户组、权限、环境变量
whoami                  # 当前用户
id                      # 查看uid gid 附属组
cat /etc/passwd         # 全部用户
cat /etc/group           # 全部用户组

sudo useradd 用户名
sudo passwd 用户名
sudo groupadd 组名
sudo usermod -aG 组 用户名
su - 用户名              # 切换用户，加载环境
sudo userdel -r 用户名
sudo groupdel 组名

ls -l                   # 查看权限
r=4 w=2 x=1
chmod 数字 文件
chmod u+x 文件
chown 用户:组 文件
chown -R 用户:组 目录
umask                   # 默认权限掩码

env / printenv          # 查看环境变量
echo $变量名
echo $PATH              # 命令搜索路径
~/.bashrc 用户配置
/etc/profile 全局配置
## Day4 下午 用户组、权限、环境变量
whoami                  # 当前用户
id                      # 查看uid gid 附属组
cat /etc/passwd         # 全部用户
cat /etc/group           # 全部用户组

sudo useradd 用户名
sudo passwd 用户名
sudo groupadd 组名
sudo usermod -aG 组 用户名
su - 用户名              # 切换用户，加载环境
sudo userdel -r 用户名
sudo groupdel 组名

ls -l                   # 查看权限
r=4 w=2 x=1
chmod 数字 文件
chmod u+x 文件
chown 用户:组 文件
chown -R 用户:组 目录
umask                   # 默认权限掩码

env / printenv          # 查看环境变量
echo $变量名
echo $PATH              # 命令搜索路径
~/.bashrc 用户配置
/etc/profile 全局配置
