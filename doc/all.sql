# 电子书表
drop table if exists `ebook`;
create table `ebook`(
    `id` bigint not null comment 'id',
    `name` varchar(50) comment '名称',
    `category1_id` bigint comment  '分类1',
    `category2_id` bigint comment '分类2',
    `description` varchar(200) comment '描述',
    `cover` varchar(200) comment '封面',
    `doc_count` int comment '文档数',
    `view_count` int comment '阅读数',
    `vote_count` int comment '点赞数',
    primary key (`id`)
)engine=innodb default charset=utf8mb4 comment ='电子书';

insert into `ebook`(id,name,description) values (1,'Spring Boot 入门教程','零基础入门，Java开发，企业级应用开发最佳首选框架');
insert into `ebook`(id,name,description) values (2,'Vue 入门教程','零基础入门，Vue开发，企业级应用开发最佳首选框架');
insert into `ebook`(id,name,description) values (3,'Python 入门教程','零基础入门，Python开发，企业级应用开发最佳首选框架');
insert into `ebook`(id,name,description) values (4,'Mysql 入门教程','零基础入门，Mysql开发，企业级应用开发最佳首选框架');
insert into `ebook`(id,name,description) values (5,'Oracle 入门教程','零基础入门，Oracle开发，企业级应用开发最佳首选框架');
# 分类
drop table if exists `category`;
create table `category`(
    `id` bigint not null comment 'id',
    `parent` bigint not null default 0 comment '父id',
    `name` varchar(50) not null comment '名称',
    `sort` int comment '顺序',
    primary key (`id`)
)engine =innodb default charset=utf8mb4 comment='分类';

insert into `category` (id,parent,name,sort) values (100,000,'前端开发',100);
insert into `category` (id,parent,name,sort) values (101,100,'Vue',101);
insert into `category` (id,parent,name,sort) values (102,100,'HTML&CSS',102);
insert into `category` (id,parent,name,sort) values (200,000,'Java',200);
insert into `category` (id,parent,name,sort) values (201,200,'基础应用',201);
insert into `category` (id,parent,name,sort) values (202,200,'框架应用',202);
insert into `category` (id,parent,name,sort) values (300,000,'Python',300);
insert into `category` (id,parent,name,sort) values (301,300,'计算机网络',301);
insert into `category` (id,parent,name,sort) values (302,300,'进阶方向应用',302);
insert into `category` (id,parent,name,sort) values (400,000,'数据库',400);
insert into `category` (id,parent,name,sort) values (401,400,'MySQL',401);
insert into `category` (id,parent,name,sort) values (402,400,'其它',402);