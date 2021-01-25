# mysql-on-vagrant

AsOfNow: 

mysql-community-server.x86_64 0:8.0.23-1.el7


## Initialization needed for mysql8

Afer the box started:

login with root and run below:

mysql -u root -p 


reset db user at the first login
```sql
alter user 'root'@'localhost' identified by '123456';
```

try sample sql:
```sql
use mysql; --#使用mysql库
 
create table developer (--创建一个表
d_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(40) NOT NULL,
title VARCHAR(100) NOT NULL,
PRIMARY KEY (d_id) );
 
select * from developer ; -- 查询数据
 
insert into developer (name,title) values ('Levin','Engineer'); -- 添加数据
select * from developer ;
```

