# 习题1.1_创建表Addressbook_create
create table if not exists Addressbook(
regist_no 	integer 	not null primary key,		#每一行的列名,数据类型,约束之间没有标点符号,每一行最后加逗号,最后一行末不加符号
name 		varchar(128) 	not null,	#可变长度varchar
address 	varchar(256) 	not null,
tel_no		char(10),		#固定长度char
mail_address 	char(20)
);
show create table Addressbook;	#查看创建表的语句结构

# 习题1.2_修改表_添加一个字段_alter
alter table Addressbook
add postal_code char(8) not null;

# 习题1.3_删除表_drop
drop table if exists Addressbook;

# 习题1.4_恢复表
# 用drop语句删除表之后无法恢复，只能重新建表
CREATE TABLE IF NOT EXISTS Addressbook(
regist_no 	INTEGER 	NOT NULL PRIMARY KEY,		
NAME 		VARCHAR(128) 	NOT NULL,	
address 	VARCHAR(256) 	NOT NULL,
tel_no 		CHAR(10),		
mail_address 	CHAR(20),
postal_code 	char(8) 	not null
);
