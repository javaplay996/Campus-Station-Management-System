/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yz-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yz-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yz-ssmj`;

/*Table structure for table `cangkuxinxi` */

DROP TABLE IF EXISTS `cangkuxinxi`;

CREATE TABLE `cangkuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logistics` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `name` varchar(255) DEFAULT NULL COMMENT '快递名称 Search',
  `kd_types` tinyint(4) DEFAULT NULL COMMENT '快递类型 Search',
  `courier` varchar(255) DEFAULT NULL COMMENT '送件人',
  `cmobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `warehouse_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '入库时间',
  `recipients` varchar(255) DEFAULT NULL COMMENT '收件人',
  `rmobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `consigneeaddress` varchar(255) DEFAULT NULL COMMENT '收件地址',
  `express_types` tinyint(4) DEFAULT NULL COMMENT '快递状态 Search',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='快递仓库信息表';

/*Data for the table `cangkuxinxi` */

insert  into `cangkuxinxi`(`id`,`logistics`,`name`,`kd_types`,`courier`,`cmobile`,`warehouse_time`,`recipients`,`rmobile`,`consigneeaddress`,`express_types`,`notice_content`) values (2,'1613972207059','快递1',2,'123','123','2021-02-22 14:16:41','321','321','321123',1,'这里是描述信息\r\n');
insert  into `cangkuxinxi`(`id`,`logistics`,`name`,`kd_types`,`courier`,`cmobile`,`warehouse_time`,`recipients`,`rmobile`,`consigneeaddress`,`express_types`,`notice_content`) values (3,'1613972207058','快递2',2,'123','123','2021-02-22 14:16:33','321','321','321123',1,'这里是描述信息\r\n');
insert  into `cangkuxinxi`(`id`,`logistics`,`name`,`kd_types`,`courier`,`cmobile`,`warehouse_time`,`recipients`,`rmobile`,`consigneeaddress`,`express_types`,`notice_content`) values (4,'1613980789482','快递33',1,'123','123','2021-02-22 15:59:53','123','123','123',2,'');
insert  into `cangkuxinxi`(`id`,`logistics`,`name`,`kd_types`,`courier`,`cmobile`,`warehouse_time`,`recipients`,`rmobile`,`consigneeaddress`,`express_types`,`notice_content`) values (5,'1613980815812','快递44',3,'123','123','2021-02-22 16:00:16','31234','12515','61616',1,'5123\r\n');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fd-ssmj/upload/1613705295135.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/fd-ssmj/upload/1613705301525.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/fd-ssmj/upload/1613799912302.JPG');
insert  into `config`(`id`,`name`,`value`) values (4,'picture4','http://localhost:8080/fd-ssmj/upload/1613705325348.jpg');
insert  into `config`(`id`,`name`,`value`) values (5,'picture5','http://localhost:8080/fd-ssmj/upload/1613705332544.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','http://localhost:8080/fd-ssmj/upload/1613705342094.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'kd_types','快递类型',3,'小件',NULL,'2021-01-25 11:41:54');
insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (2,'kd_types','快递类型',2,'中件',NULL,'2021-01-25 11:41:54');
insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (3,'kd_types','快递类型',1,'大件',NULL,'2021-01-25 11:41:54');
insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (7,'express_types','快递状态',1,'已签收',NULL,'2021-02-22 11:33:04');
insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (8,'express_types','快递状态',2,'未签收',NULL,'2021-02-22 11:33:05');

/*Table structure for table `fahuoxinxi` */

DROP TABLE IF EXISTS `fahuoxinxi`;

CREATE TABLE `fahuoxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logistics` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `name` varchar(255) DEFAULT NULL COMMENT '快递名称 Search',
  `kd_types` tinyint(4) DEFAULT NULL COMMENT '快递类型 Search',
  `addresser` varchar(255) DEFAULT NULL COMMENT '发件人',
  `yhid` int(11) DEFAULT NULL COMMENT '用户id',
  `amobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `consigneeaddress` varchar(255) DEFAULT NULL COMMENT '收件地址',
  `recipients` varchar(255) DEFAULT NULL COMMENT '收件人',
  `rmobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `shipments_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发货时间',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='发货表';

/*Data for the table `fahuoxinxi` */

insert  into `fahuoxinxi`(`id`,`logistics`,`name`,`kd_types`,`addresser`,`yhid`,`amobile`,`consigneeaddress`,`recipients`,`rmobile`,`shipments_time`,`notice_content`,`update_time`) values (2,'1613977091565','快递11',3,'123',1,'123','123','123','123','2021-02-22 14:58:12','123\r\n',NULL);
insert  into `fahuoxinxi`(`id`,`logistics`,`name`,`kd_types`,`addresser`,`yhid`,`amobile`,`consigneeaddress`,`recipients`,`rmobile`,`shipments_time`,`notice_content`,`update_time`) values (3,'1613979260499','快递222',3,'123',2,'123','123','123','123','2021-02-22 15:34:21','123\r\n',NULL);
insert  into `fahuoxinxi`(`id`,`logistics`,`name`,`kd_types`,`addresser`,`yhid`,`amobile`,`consigneeaddress`,`recipients`,`rmobile`,`shipments_time`,`notice_content`,`update_time`) values (5,'1613981162336','快递222',3,'123',4,'132','132','132','13','2021-04-06 14:57:42','132\r\n','2021-04-06 15:01:19');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-22 17:34:43','只有管理员可以回复','admin','2021-02-22 17:34:43');
insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (6,'123123','小札','2021-02-22 17:34:43',NULL,NULL,'2021-02-22 17:34:43');
insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (7,'13132123','admin','2021-02-22 16:01:56','123231231','admin','2021-02-22 16:01:56');
insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (8,'123123','员工1','2021-02-22 16:02:49',NULL,NULL,NULL);
insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (9,'32312312','1','2021-02-22 16:06:15',NULL,NULL,NULL);

/*Table structure for table `shoujianxinxi` */

DROP TABLE IF EXISTS `shoujianxinxi`;

CREATE TABLE `shoujianxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logistics` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `name` varchar(255) DEFAULT NULL COMMENT '快递名称 Search',
  `kd_types` tinyint(4) DEFAULT NULL COMMENT '快递类型 Search',
  `yhid` int(11) DEFAULT NULL COMMENT '签收人',
  `recipients` varchar(255) DEFAULT NULL COMMENT '收件人',
  `rmobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `consigneeaddress` varchar(255) DEFAULT NULL COMMENT '收件地址',
  `addressee_time` timestamp(4) NULL DEFAULT NULL COMMENT '收件时间',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='快递仓库信息表';

/*Data for the table `shoujianxinxi` */

insert  into `shoujianxinxi`(`id`,`logistics`,`name`,`kd_types`,`yhid`,`recipients`,`rmobile`,`consigneeaddress`,`addressee_time`,`notice_content`,`update_time`) values (5,'1613972207059','快递1',2,1,'321','321','321123','2021-02-22 15:26:30.1240','暂无备注信息',NULL);
insert  into `shoujianxinxi`(`id`,`logistics`,`name`,`kd_types`,`yhid`,`recipients`,`rmobile`,`consigneeaddress`,`addressee_time`,`notice_content`,`update_time`) values (6,'1613980815812','快递44',3,4,'31234qqq','12515qq','61616q','2021-02-22 16:05:27.4170','暂无备注信息',NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','rjdgnep0c57qju2y37lpvkjeceqy0y80','2021-01-28 18:04:51','2021-04-06 15:45:20');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'小札','users','用户','774h9xjd9yg9d1zoy2d1wl7x0aj3x0tm','2021-02-03 16:33:33','2021-02-22 16:16:18');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'员工1','users','员工','apzc2ymlaidr1wsldenwbhiyvp7rwqp5','2021-02-22 15:14:58','2021-02-22 17:02:10');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,2,'小站','users','用户','tebjhfvztwgkeau95rxtflfr4jri091z','2021-02-22 15:30:49','2021-02-22 16:30:50');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,3,'333','users','用户','4s41lu4s0oo8pjp28rtjmrowmwz8rycu','2021-02-22 15:44:43','2021-02-22 16:44:43');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (6,4,'1','users','用户','a1jjda0tgc4xkh464jduzlqbesztlfbu','2021-02-22 16:03:07','2021-02-22 17:03:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `wuliuxinxi` */

DROP TABLE IF EXISTS `wuliuxinxi`;

CREATE TABLE `wuliuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logistics` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `wuliu` varchar(255) DEFAULT NULL COMMENT '物流信息',
  `yhid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `wuliuxinxi` */

insert  into `wuliuxinxi`(`id`,`logistics`,`name`,`wuliu`,`yhid`) values (2,'1613977091565','快递11','已到达xxx城市',1);
insert  into `wuliuxinxi`(`id`,`logistics`,`name`,`wuliu`,`yhid`) values (3,'1613979260499','快递222','已打包',2);
insert  into `wuliuxinxi`(`id`,`logistics`,`name`,`wuliu`,`yhid`) values (5,'1613981162336','快递222','暂无物流信息',4);
insert  into `wuliuxinxi`(`id`,`logistics`,`name`,`wuliu`,`yhid`) values (6,'1617692088644','421421','暂无物流信息',1);

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-02-22 17:34:43','公告标题1','日常公告','公告信息','2021-02-22 17:34:43');
insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (2,'2021-02-22 17:34:43','公告标题2','紧急公告','公告信息','2021-02-22 17:34:43');
insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (3,'2021-02-22 17:34:43','公告标题3','其他公告','公告信息','2021-02-22 17:34:43');

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`) values (1,'小札','111','111','http://localhost:8080/yz-ssmj/file/download?fileName=1613980226936.jpg','用户');
insert  into `yonghuxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`) values (2,'小站','222','222','http://localhost:8080/yz-ssmj/file/download?fileName=1613980368653.jpg','用户');
insert  into `yonghuxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`) values (4,'1','1','1','http://localhost:8080/yz-ssmj/file/download?fileName=1613980998106.JPG','用户');

/*Table structure for table `yuangongxinxi` */

DROP TABLE IF EXISTS `yuangongxinxi`;

CREATE TABLE `yuangongxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `yuangongxinxi` */

insert  into `yuangongxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`) values (1,'员工1','111','111','http://localhost:8080/yz-ssmj/file/download?fileName=1613980247357.JPG','员工');
insert  into `yuangongxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`) values (2,'员工2','222','222','http://localhost:8080/yz-ssmj/file/download?fileName=1613980241202.JPG','员工');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
