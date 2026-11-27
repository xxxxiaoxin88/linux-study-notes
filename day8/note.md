## Day8 早上 MySQL 基础
1. 安装：apt install mysql-server
2. 服务管理：systemctl start/stop/restart/enable mysql
3. 安全初始化：mysql_secure_installation，加固数据库
4. 登录：sudo mysql 或者 mysql -u用户 -p
5. 基础SQL：
show databases; create database; use; show tables;
create table、insert、select、update、delete
6. 用户：create user + grant 授权 + flush privileges
## Day8 下午 MySQL 远程、备份恢复、索引
1. 远程访问：
创建 user@'%' 用户，修改 bind-address=0.0.0.0，放行3306防火墙
2. mysqldump
mysqldump -u用户 -p 库名 > 备份.sql
mysql -u用户 -p 库名 < 备份.sql
--all-databases 备份所有库
3. 索引
create index 索引名 on 表(字段);
show index from 表; drop index
优点：查询更快；缺点：增删改开销变大，主键自带索引
4. 慢查询日志：记录执行时间超过阈值的SQL，用来优化
## Day8 晚上 MySQL 事务、表关联、执行计划
1. 事务 InnoDB 支持
start transaction; commit 提交; rollback 回滚
ACID：原子、一致、隔离、持久
2. join 关联
inner join 两边匹配；left join 左表全部
3. explain 查看SQL执行计划，判断有没有走索引
type=all 是全表扫描
4. revoke 回收权限，drop user 删除用户
