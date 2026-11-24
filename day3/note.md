# Day3 早上 磁盘、链接、tar
df -h 查看分区空间
du -sh 查看目录大小
ln 硬链接
ln -s 软链接（快捷方式）
tar -cvf 打包
tar -zcvf 打包+gzip压缩
tar -tvf 查看包内容
tar -zxvf 解压
## Day3 下午 apt 包管理 & systemd 服务管理
sudo apt update        # 更新软件源索引清单
sudo apt upgrade -y    # 升级已安装软件
apt search xxx         # 搜索软件
sudo apt install xxx -y # 安装软件
apt show xxx           # 查看软件详情
sudo apt remove xxx -y # 卸载，保留配置
sudo apt purge xxx -y  # 卸载+清除配置
sudo apt autoremove -y # 清理无用依赖
sudo apt clean         # 清理本地缓存包

dpkg -i xxx.deb        # 安装本地deb包
dpkg -l | grep xxx     # 过滤查看已安装包

systemctl list-units --type=service # 列出服务
systemctl status xxx    # 查看服务状态
sudo systemctl start xxx
sudo systemctl stop xxx
sudo systemctl restart xxx
sudo systemctl enable xxx  # 开机自启
sudo systemctl disable xxx # 关闭开机自启
systemctl is-enabled xxx   # 检查是否开机自启

nginx 日志位置：/var/log/nginx/
## Day3 晚上 网络 & 日志
ip a                  # 查看网卡、IP
ip route              # 查看路由
ping -c 4 域名/IP      # 测试连通，发指定次数包
ss -tulnp             # 查看监听端口与进程
nslookup 域名          # 域名解析
curl 地址              # http 访问测试

journalctl            # systemd 日志
journalctl -b          # 本次开机日志
journalctl -f          # 实时跟踪日志

/var/log/nginx/access.log  # nginx访问日志
/var/log/nginx/error.log   # nginx错误日志
