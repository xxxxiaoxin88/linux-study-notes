# Day2 早上 Linux 权限 & 进程
r=4 w=2 x=1
ls -l 看权限串
chmod u/g/o +/- r/w/x
chmod 数字权限 644 755
chown 用户:组 文件
id whoami
ps ps aux
top （q退出）
kill PID
## Day2 下午 重定向 管道 文本三剑客
> 覆盖 >> 追加
2> 错误重定向 &> 全部输出
| 管道，传递输出
grep 过滤
  -v 反向 -n 行号 -i 忽略大小写 -r 递归
sed 's/原/新/g' 替换；-i 修改原文件
awk -F分隔符 '{print $N}' 按列处理
## Day2 晚上 shell 基础
#!/bin/bash 头部声明
chmod +x xxx.sh 加执行权限
./xxx.sh / bash xxx.sh 运行脚本
变量：var="val"  $var
$0脚本名 $1 $2 参数 $*全部 $#参数数量
if [ 条件 ];then ... else ... fi
[ ] 两边要有空格
-f 文件 -d 目录 -e 存在
