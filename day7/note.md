## Day7 早上 Nginx 反向代理 & 负载均衡
### 反向代理
proxy_pass 转发请求到后端服务
proxy_set_header 传递客户端真实IP、Host
用户只访问nginx，后端对内隐藏

### upstream 负载均衡
upstream 定义后端服务组
默认策略：轮询，请求轮流分发
weight 设置权重；backup 备用节点

### 测试方式
python3 -m http.server 快速拉起简易后端
curl 反复访问验证分发效果
## Day7 下午 Nginx gzip、缓存、HTTPS、rewrite
### gzip 压缩
gzip on 开启；gzip_types 指定文件类型
gzip_min_length 最小文件大小，comp_level 压缩等级
作用：减少传输流量，加速页面加载

### 浏览器缓存
expires 设置缓存时长，Cache-Control 响应头
静态资源（图片、css、js）适合缓存

### HTTPS 自签名证书
openssl 生成 crt 证书、key 私钥
listen 443 ssl；ssl_certificate、ssl_certificate_key 加载文件
自签名浏览器会告警，仅测试学习使用
80 端口 return 301 跳转 https

### rewrite 重写
permanent 301 永久；redirect 302 临时
## Day7 晚上 Nginx 日志自定义、状态页、排错
### log_format
自定义访问日志字段，access_log 引用格式
error_log 设置日志级别，warn、error 常用

### stub_status 状态页
展示活跃连接、总请求，用于简单监控
allow/deny 控制访问来源，防止对外暴露

### 排错流程
1. nginx -t 校验配置
2. systemctl status nginx
3. 查看 error.log 错误日志
4. 检查端口占用、权限、防火墙、证书

### 限速
limit_req_zone 实现单IP请求限流，防护高频请求
