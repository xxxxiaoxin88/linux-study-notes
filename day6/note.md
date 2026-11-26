## Day6 早上 源码编译安装 + PATH
### 编译依赖
gcc make 是C程序编译基础工具

### 源码标准流程
wget 下载源码 -> tar 解压
./configure --prefix=路径 配置
make 编译
sudo make install 安装

### PATH
系统搜索命令的目录，自定义安装后需要把bin目录加入PATH
临时：export PATH="xxx:/usr/local/hello/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin"
永久写 ~/.bashrc，source 刷新

### 源码卸载
优先 make uninstall；不支持就手动删除prefix目录

### 三种安装对比
apt：省事；源码：灵活；二进制：免编译
## Day6 下午 源码编译Nginx + 日志切割
### 依赖
pcre 正则，zlib gzip，openssl https

### 编译流程
wget 源码 -> tar解压
./configure --prefix=路径 --with-模块
make && sudo make install

### 源码nginx操作
nginx -v 版本
nginx -t 校验配置
nginx -s stop/quit/reload/reopen
配置：/usr/local/nginx/conf/nginx.conf

### 日志切割
mv 旧日志 + nginx -s reopen 生成新日志
配合crontab定时自动切割，防止日志文件过大
## Day6 晚上 Nginx 虚拟主机 + systemd自启
### 虚拟主机
一台服务器跑多个网站，可以按端口、域名区分
listen 监听端口，root 指定网页根目录
修改配置后 nginx -t 校验，再 reload

### 源码nginx配置systemd
新建 /etc/systemd/system/nginx.service
daemon-reload 重载单元，enable 开机自启
之后可用 systemctl start/stop/restart nginx

### hosts
/etc/hosts 本地域名映射，测试域名访问
