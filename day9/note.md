## Day9 早上 Docker 基础
1. 安装docker-ce，添加官方源；usermod -aG docker tian 免sudo，重开终端生效
2. 三概念：
镜像：只读模板；容器：运行实例；仓库：存放镜像
3. 镜像命令：
docker pull、docker images、docker rmi
4. 容器命令：
docker run -d --name -p 端口映射
docker ps / ps -a
start / stop / restart / rm
docker exec -it 进入容器
## Day9 下午 Docker数据卷 & Dockerfile
1. 容器默认无持久化，volume 用于保存数据，容器删卷还在
2. -v 两种用法：volume名称:容器路径 / 宿主机路径:容器路径
3. Dockerfile：FROM基础镜像，COPY复制文件，RUN构建执行，CMD启动命令
4. docker build -t 名字:版本 . 构建镜像
## Day9 晚上 Docker网络 & Compose
1. bridge 默认桥接；自定义网络支持容器名称域名互通
2. docker compose 用于多容器编排，一个 yaml 管理一堆服务
3. up -d 后台启动；down 停止；-v 会删除数据卷
4. compose 可以统一管理 volumes、networks、环境变量、端口
