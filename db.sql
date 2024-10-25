/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - guoshuzuowujibingfangzhi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`guoshuzuowujibingfangzhi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `guoshuzuowujibingfangzhi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-15 10:49:28'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-15 10:49:28'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-15 10:49:28'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-15 10:49:28'),(5,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-03-15 10:49:28'),(6,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-03-15 10:49:28'),(7,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-03-15 10:49:28'),(8,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-15 10:49:28'),(9,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-15 10:49:28'),(10,'yujing_types','预警类型',1,'预警类型1',NULL,NULL,'2023-03-15 10:49:28'),(11,'yujing_types','预警类型',2,'预警类型2',NULL,NULL,'2023-03-15 10:49:28'),(12,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-15 10:49:28'),(13,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-15 10:49:28'),(14,'guoshu_types','果蔬类型',1,'果蔬类型1',NULL,NULL,'2023-03-15 10:49:28'),(15,'guoshu_types','果蔬类型',2,'果蔬类型2',NULL,NULL,'2023-03-15 10:49:28'),(16,'guoshu_erji_types','二级类型',1,'果蔬类型11',1,NULL,'2023-03-15 10:49:28'),(17,'guoshu_erji_types','二级类型',2,'果蔬类型12',1,NULL,'2023-03-15 10:49:28'),(18,'guoshu_erji_types','二级类型',3,'果蔬类型21',2,NULL,'2023-03-15 10:49:28'),(19,'guoshu_erji_types','二级类型',4,'果蔬类型222',2,NULL,'2023-03-15 10:49:28'),(20,'guoshu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-15 10:49:28'),(21,'yanjiufangxiang_types','研究方向',1,'研究方向1',NULL,NULL,'2023-03-15 10:49:28'),(22,'yanjiufangxiang_types','研究方向',2,'研究方向2',NULL,NULL,'2023-03-15 10:49:29'),(23,'zhuanjia_chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-15 10:49:29'),(24,'zhuanjia_chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-15 10:49:29'),(25,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-15 10:49:29'),(26,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-15 10:49:29'),(27,'guoshu_erji_types','二级类型',5,'二级111',2,'','2023-03-15 11:30:28');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhuanjia_id` int(11) DEFAULT NULL COMMENT '专家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`zhuanjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子1',1,NULL,NULL,'<p>该活动反倒是感受到固定死</p>',NULL,2,1,'2023-03-15 11:19:13',NULL,'2023-03-15 11:19:13'),(2,NULL,1,NULL,NULL,'斤斤计较',1,NULL,2,'2023-03-15 11:19:19',NULL,'2023-03-15 11:19:19'),(3,NULL,4,NULL,NULL,'和哼哼唧唧',1,NULL,2,'2023-03-15 11:29:06',NULL,'2023-03-15 11:29:06'),(4,NULL,NULL,NULL,1,'高公公',1,NULL,2,'2023-03-15 11:30:42',NULL,'2023-03-15 11:30:42'),(5,NULL,NULL,1,NULL,'很好',1,NULL,2,'2023-03-15 11:31:51',NULL,'2023-03-15 11:31:51');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-15 10:49:31','公告详情1','2023-03-15 10:49:31'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-15 10:49:31','公告详情2','2023-03-15 10:49:31'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-15 10:49:31','公告详情3','2023-03-15 10:49:31'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-15 10:49:31','公告详情4','2023-03-15 10:49:31'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-15 10:49:31','公告详情5','2023-03-15 10:49:31'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-15 10:49:31','公告详情6','2023-03-15 10:49:31'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-15 10:49:31','公告详情7','2023-03-15 10:49:31'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-15 10:49:31','公告详情8','2023-03-15 10:49:31'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-15 10:49:31','公告详情9','2023-03-15 10:49:31'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-15 10:49:31','公告详情10','2023-03-15 10:49:31'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-15 10:49:31','公告详情11','2023-03-15 10:49:31'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-15 10:49:31','公告详情12','2023-03-15 10:49:31'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-15 10:49:31','公告详情13','2023-03-15 10:49:31'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-15 10:49:31','公告详情14','2023-03-15 10:49:31');

/*Table structure for table `guoshu` */

DROP TABLE IF EXISTS `guoshu`;

CREATE TABLE `guoshu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guoshu_name` varchar(200) DEFAULT NULL COMMENT '果蔬名称  Search111 ',
  `guoshu_uuid_number` varchar(200) DEFAULT NULL COMMENT '果蔬编号',
  `guoshu_photo` varchar(200) DEFAULT NULL COMMENT '果蔬照片',
  `guoshu_types` int(11) DEFAULT NULL COMMENT '果蔬类型 Search111',
  `guoshu_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `guoshu_chandi` varchar(200) DEFAULT NULL COMMENT '果蔬产地 Search111',
  `guoshu_qihou` varchar(200) DEFAULT NULL COMMENT '气候 Search111',
  `guoshu_jijie` varchar(200) DEFAULT NULL COMMENT '季节 Search111',
  `guoshu_clicknum` int(11) DEFAULT NULL COMMENT '果蔬热度',
  `guoshu_content` text COMMENT '果蔬介绍',
  `guoshu_bingchonghai_content` text COMMENT '常见病虫害 Search111',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `guoshu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='果蔬百科';

/*Data for the table `guoshu` */

insert  into `guoshu`(`id`,`guoshu_name`,`guoshu_uuid_number`,`guoshu_photo`,`guoshu_types`,`guoshu_erji_types`,`guoshu_chandi`,`guoshu_qihou`,`guoshu_jijie`,`guoshu_clicknum`,`guoshu_content`,`guoshu_bingchonghai_content`,`shangxia_types`,`guoshu_delete`,`insert_time`,`create_time`) values (1,'果蔬名称1','1678848571186','upload/guoshu1.jpg',1,1,'果蔬产地1','气候1','季节1',191,'果蔬介绍1','常见病虫害1',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(2,'果蔬名称2','1678848571189','upload/guoshu2.jpg',1,1,'果蔬产地2','气候2','季节2',305,'果蔬介绍2','常见病虫害2',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(3,'果蔬名称3','1678848571213','upload/guoshu3.jpg',1,1,'果蔬产地3','气候3','季节3',24,'果蔬介绍3','常见病虫害3',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(4,'果蔬名称4','1678848571190','upload/guoshu4.jpg',1,2,'果蔬产地4','气候4','季节4',50,'果蔬介绍4','常见病虫害4',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(5,'果蔬名称5','1678848571214','upload/guoshu5.jpg',1,2,'果蔬产地5','气候5','季节5',324,'果蔬介绍5','常见病虫害5',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(6,'果蔬名称6','1678848571257','upload/guoshu6.jpg',1,2,'果蔬产地6','气候6','季节6',478,'果蔬介绍6','常见病虫害6',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(7,'果蔬名称7','1678848571209','upload/guoshu7.jpg',2,3,'果蔬产地7','气候7','季节7',56,'果蔬介绍7','常见病虫害7',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(8,'果蔬名称8','1678848571188','upload/guoshu8.jpg',2,3,'果蔬产地8','气候8','季节8',369,'果蔬介绍8','常见病虫害8',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(9,'果蔬名称9','1678848571263','upload/guoshu9.jpg',2,3,'果蔬产地9','气候9','季节9',238,'果蔬介绍9','常见病虫害9',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(10,'果蔬名称10','1678848571223','upload/guoshu10.jpg',2,3,'果蔬产地10','气候10','季节10',236,'果蔬介绍10','常见病虫害10',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(11,'果蔬名称11','1678848571282','upload/guoshu11.jpg',2,4,'果蔬产地11','气候11','季节11',335,'果蔬介绍11','常见病虫害11',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(12,'果蔬名称12','1678848571203','upload/guoshu12.jpg',2,4,'果蔬产地12','气候12','季节12',281,'果蔬介绍12','常见病虫害12',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(13,'果蔬名称13','1678848571284','upload/guoshu13.jpg',2,4,'果蔬产地13','气候13','季节13',283,'果蔬介绍13','常见病虫害13',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(14,'果蔬名称14','1678848571286','upload/guoshu14.jpg',1,1,'果蔬产地14','气候14','季节14',17,'<p>果蔬介绍14</p>','<p>常见病虫害14广东佛山</p>',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31');

/*Table structure for table `guoshu_collection` */

DROP TABLE IF EXISTS `guoshu_collection`;

CREATE TABLE `guoshu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoshu_id` int(11) DEFAULT NULL COMMENT '果蔬百科',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guoshu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='果蔬百科收藏';

/*Data for the table `guoshu_collection` */

insert  into `guoshu_collection`(`id`,`guoshu_id`,`yonghu_id`,`guoshu_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(2,2,3,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(3,3,3,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(4,4,2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(5,5,2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(6,6,2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(7,7,1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(8,8,3,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(9,9,1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(10,10,1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(11,11,1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(12,12,2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(13,13,3,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(14,14,2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(15,11,4,1,'2023-03-15 11:29:14','2023-03-15 11:29:14');

/*Table structure for table `guoshu_liuyan` */

DROP TABLE IF EXISTS `guoshu_liuyan`;

CREATE TABLE `guoshu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoshu_id` int(11) DEFAULT NULL COMMENT '果蔬百科',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guoshu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='果蔬百科留言';

/*Data for the table `guoshu_liuyan` */

insert  into `guoshu_liuyan`(`id`,`guoshu_id`,`yonghu_id`,`guoshu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-15 10:49:31','回复信息1','2023-03-15 10:49:31','2023-03-15 10:49:31'),(2,2,3,'留言内容2','2023-03-15 10:49:31','回复信息2','2023-03-15 10:49:31','2023-03-15 10:49:31'),(3,3,3,'留言内容3','2023-03-15 10:49:31','回复信息3','2023-03-15 10:49:31','2023-03-15 10:49:31'),(4,4,3,'留言内容4','2023-03-15 10:49:31','回复信息4','2023-03-15 10:49:31','2023-03-15 10:49:31'),(5,5,3,'留言内容5','2023-03-15 10:49:31','回复信息5','2023-03-15 10:49:31','2023-03-15 10:49:31'),(6,6,1,'留言内容6','2023-03-15 10:49:31','回复信息6','2023-03-15 10:49:31','2023-03-15 10:49:31'),(7,7,2,'留言内容7','2023-03-15 10:49:31','回复信息7','2023-03-15 10:49:31','2023-03-15 10:49:31'),(8,8,1,'留言内容8','2023-03-15 10:49:31','回复信息8','2023-03-15 10:49:31','2023-03-15 10:49:31'),(9,9,1,'留言内容9','2023-03-15 10:49:31','回复信息9','2023-03-15 10:49:31','2023-03-15 10:49:31'),(10,10,1,'留言内容10','2023-03-15 10:49:31','回复信息10','2023-03-15 10:49:31','2023-03-15 10:49:31'),(11,11,3,'留言内容11','2023-03-15 10:49:31','回复信息11','2023-03-15 10:49:31','2023-03-15 10:49:31'),(12,12,3,'留言内容12','2023-03-15 10:49:31','回复信息12','2023-03-15 10:49:31','2023-03-15 10:49:31'),(13,13,1,'留言内容13','2023-03-15 10:49:31','回复信息13','2023-03-15 10:49:31','2023-03-15 10:49:31'),(14,14,1,'留言内容14','2023-03-15 10:49:31','回复信息14','2023-03-15 10:49:31','2023-03-15 10:49:31'),(15,11,4,'活动范德萨范德萨第三个号','2023-03-15 11:29:21','个哈哈哈','2023-03-15 11:31:11','2023-03-15 11:29:21');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','o3o89altx268h95xj5wfxpxtpzeyjkut','2023-03-15 10:49:44','2023-03-15 11:49:44'),(2,1,'admin','users','管理员','rmpssmmt7hc36ik6bverl8ynxkvdqenf','2023-03-15 11:06:59','2023-03-15 12:35:31'),(3,1,'a1','zhuanjia','专家','jaik4aj8mtieu8tzifl5d5g7opw01kgl','2023-03-15 11:15:33','2023-03-15 12:31:35'),(4,4,'a5','yonghu','用户','ute9dry1jkz8ipra3z7xoytxq05wb1ic','2023-03-15 11:28:06','2023-03-15 12:28:06'),(5,2,'a2','zhuanjia','专家','mneui8ahyamuzmm244o5w7c9vyuy8z1p','2023-03-15 11:28:35','2023-03-15 12:28:35');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-15 10:49:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-15 10:49:31'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-15 10:49:31'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-15 10:49:31'),(4,'a5','123456','张5','17788889999','111111222233332222','upload/1678850989428.jpg',2,'5@qq.com','2023-03-15 11:28:01');

/*Table structure for table `yujing` */

DROP TABLE IF EXISTS `yujing`;

CREATE TABLE `yujing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yujing_name` varchar(200) DEFAULT NULL COMMENT '预警名称 Search111  ',
  `yujing_photo` varchar(200) DEFAULT NULL COMMENT '预警图片 ',
  `yujing_types` int(11) NOT NULL COMMENT '预警类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预警发布时间 ',
  `yujing_content` text COMMENT '预警内容 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='预警';

/*Data for the table `yujing` */

insert  into `yujing`(`id`,`yujing_name`,`yujing_photo`,`yujing_types`,`insert_time`,`yujing_content`,`create_time`) values (1,'预警名称1','upload/yujing1.jpg',1,'2023-03-15 10:49:31','预警内容1','2023-03-15 10:49:31'),(2,'预警名称2','upload/yujing2.jpg',2,'2023-03-15 10:49:31','预警内容2','2023-03-15 10:49:31'),(3,'预警名称3','upload/yujing3.jpg',1,'2023-03-15 10:49:31','预警内容3','2023-03-15 10:49:31'),(4,'预警名称4','upload/yujing4.jpg',2,'2023-03-15 10:49:31','预警内容4','2023-03-15 10:49:31'),(5,'预警名称5','upload/yujing5.jpg',2,'2023-03-15 10:49:31','预警内容5','2023-03-15 10:49:31'),(6,'预警名称6','upload/yujing6.jpg',2,'2023-03-15 10:49:31','预警内容6','2023-03-15 10:49:31'),(7,'预警名称7','upload/yujing7.jpg',2,'2023-03-15 10:49:31','预警内容7','2023-03-15 10:49:31'),(8,'预警名称8','upload/yujing8.jpg',1,'2023-03-15 10:49:31','预警内容8','2023-03-15 10:49:31'),(9,'预警名称9','upload/yujing9.jpg',1,'2023-03-15 10:49:31','预警内容9','2023-03-15 10:49:31'),(10,'预警名称10','upload/yujing10.jpg',1,'2023-03-15 10:49:31','预警内容10','2023-03-15 10:49:31'),(11,'预警名称11','upload/yujing11.jpg',2,'2023-03-15 10:49:31','预警内容11','2023-03-15 10:49:31'),(12,'预警名称12','upload/yujing12.jpg',2,'2023-03-15 10:49:31','预警内容12','2023-03-15 10:49:31'),(13,'预警名称13','upload/yujing13.jpg',2,'2023-03-15 10:49:31','预警内容13','2023-03-15 10:49:31'),(14,'预警名称14','upload/yujing14.jpg',2,'2023-03-15 10:49:31','预警内容14','2023-03-15 10:49:31');

/*Table structure for table `zhuanjia` */

DROP TABLE IF EXISTS `zhuanjia`;

CREATE TABLE `zhuanjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuanjia_name` varchar(200) DEFAULT NULL COMMENT '专家姓名 Search111 ',
  `zhuanjia_phone` varchar(200) DEFAULT NULL COMMENT '专家手机号',
  `zhuanjia_id_number` varchar(200) DEFAULT NULL COMMENT '专家身份证号',
  `zhuanjia_photo` varchar(200) DEFAULT NULL COMMENT '专家头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yanjiufangxiang_types` int(11) DEFAULT NULL COMMENT '研究方向 Search111 ',
  `zhuanjia_email` varchar(200) DEFAULT NULL COMMENT '专家邮箱',
  `zhuanjia_content` text COMMENT '专家介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='专家';

/*Data for the table `zhuanjia` */

insert  into `zhuanjia`(`id`,`username`,`password`,`zhuanjia_name`,`zhuanjia_phone`,`zhuanjia_id_number`,`zhuanjia_photo`,`sex_types`,`yanjiufangxiang_types`,`zhuanjia_email`,`zhuanjia_content`,`create_time`) values (1,'a1','123456','专家姓名1','17703786901','410224199010102001','upload/zhuanjia1.jpg',2,1,'1@qq.com','<p>专家介绍1固定士大夫第三个</p>','2023-03-15 10:49:31'),(2,'a2','123456','专家姓名2','17703786902','410224199010102002','upload/zhuanjia2.jpg',1,1,'2@qq.com','专家介绍2','2023-03-15 10:49:31'),(3,'a3','123456','专家姓名3','17703786903','410224199010102003','upload/zhuanjia3.jpg',1,2,'3@qq.com','专家介绍3','2023-03-15 10:49:31');

/*Table structure for table `zhuanjia_chat` */

DROP TABLE IF EXISTS `zhuanjia_chat`;

CREATE TABLE `zhuanjia_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `zhuanjia_id` int(11) DEFAULT NULL COMMENT '回答人',
  `zhuanjia_chat_issue_text` text COMMENT '问题',
  `zhuanjia_chat_issue_photo` varchar(200) DEFAULT NULL COMMENT '问题图片 ',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `zhuanjia_chat_reply_text` text COMMENT '回复',
  `zhuanjia_chat_reply_photo` varchar(200) DEFAULT NULL COMMENT '回复图片 ',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `zhuanjia_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='专家咨询';

/*Data for the table `zhuanjia_chat` */

insert  into `zhuanjia_chat`(`id`,`yonghu_id`,`zhuanjia_id`,`zhuanjia_chat_issue_text`,`zhuanjia_chat_issue_photo`,`issue_time`,`zhuanjia_chat_reply_text`,`zhuanjia_chat_reply_photo`,`reply_time`,`zhuangtai_types`,`zhuanjia_chat_types`,`insert_time`,`create_time`) values (1,2,2,'问题1','upload/zhuanjia_chat_issue1.jpg','2023-03-15 10:49:31','回复1','upload/zhuanjia_chat_reply1.jpg','2023-03-15 10:49:31',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(2,3,2,'问题2','upload/zhuanjia_chat_issue2.jpg','2023-03-15 10:49:31','回复2','upload/zhuanjia_chat_reply2.jpg','2023-03-15 10:49:31',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(3,1,1,'问题3','upload/zhuanjia_chat_issue3.jpg','2023-03-15 10:49:31','回复3','upload/zhuanjia_chat_reply3.jpg','2023-03-15 10:49:31',1,2,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(4,2,1,'问题4','upload/zhuanjia_chat_issue4.jpg','2023-03-15 10:49:31','回复4','upload/zhuanjia_chat_reply4.jpg','2023-03-15 10:49:31',2,2,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(5,3,3,'问题5','upload/zhuanjia_chat_issue5.jpg','2023-03-15 10:49:31','回复5','upload/zhuanjia_chat_reply5.jpg','2023-03-15 10:49:31',2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(6,1,2,'问题6','upload/zhuanjia_chat_issue6.jpg','2023-03-15 10:49:31','回复6','upload/zhuanjia_chat_reply6.jpg','2023-03-15 10:49:31',1,2,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(7,3,2,'问题7','upload/zhuanjia_chat_issue7.jpg','2023-03-15 10:49:31','回复7','upload/zhuanjia_chat_reply7.jpg','2023-03-15 10:49:31',2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(8,1,2,'问题8','upload/zhuanjia_chat_issue8.jpg','2023-03-15 10:49:31','回复8','upload/zhuanjia_chat_reply8.jpg','2023-03-15 10:49:31',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(9,1,2,'问题9','upload/zhuanjia_chat_issue9.jpg','2023-03-15 10:49:31','回复9','upload/zhuanjia_chat_reply9.jpg','2023-03-15 10:49:31',1,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(10,2,2,'问题10','upload/zhuanjia_chat_issue10.jpg','2023-03-15 10:49:31','回复10','upload/zhuanjia_chat_reply10.jpg','2023-03-15 10:49:31',2,2,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(11,3,2,'问题11','upload/zhuanjia_chat_issue11.jpg','2023-03-15 10:49:31','回复11','upload/zhuanjia_chat_reply11.jpg','2023-03-15 10:49:31',1,2,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(12,3,1,'问题12','upload/zhuanjia_chat_issue12.jpg','2023-03-15 10:49:31','回复12','upload/zhuanjia_chat_reply12.jpg','2023-03-15 10:49:31',1,2,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(13,3,2,'问题13','upload/zhuanjia_chat_issue13.jpg','2023-03-15 10:49:31','回复13','upload/zhuanjia_chat_reply13.jpg','2023-03-15 10:49:31',2,2,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(14,3,2,'问题14','upload/zhuanjia_chat_issue14.jpg','2023-03-15 10:49:31','回复14','upload/zhuanjia_chat_reply14.jpg','2023-03-15 10:49:31',2,1,'2023-03-15 10:49:31','2023-03-15 10:49:31'),(15,1,1,'哈哈哈','upload/1678848633437.jpg','2023-03-15 10:50:38',NULL,NULL,NULL,1,1,'2023-03-15 10:50:39','2023-03-15 10:50:39'),(16,1,1,'个哈哈哈或','upload/1678848652352.jpg','2023-03-15 10:51:07',NULL,NULL,NULL,2,1,'2023-03-15 10:51:07','2023-03-15 10:51:07'),(17,1,1,'123','upload/1678848984193.jpg','2023-03-15 10:56:37',NULL,NULL,NULL,1,1,'2023-03-15 10:56:37','2023-03-15 10:56:37'),(18,1,1,'123',NULL,'2023-03-15 10:58:54',NULL,NULL,NULL,1,1,'2023-03-15 10:58:54','2023-03-15 10:58:54'),(19,1,1,'123123123',NULL,'2023-03-15 10:59:02',NULL,NULL,NULL,1,1,'2023-03-15 10:59:03','2023-03-15 10:59:03'),(20,1,1,'12312','upload/1678849228368.jpg','2023-03-15 11:00:34',NULL,NULL,NULL,1,1,'2023-03-15 11:00:35','2023-03-15 11:00:35'),(21,1,1,'ghh','upload/1678849520374.jpg','2023-03-15 11:05:34',NULL,NULL,NULL,1,1,'2023-03-15 11:05:34','2023-03-15 11:05:34'),(22,1,1,'烦都烦死','upload/1678849539248.jpg','2023-03-15 11:05:54',NULL,NULL,NULL,2,1,'2023-03-15 11:05:54','2023-03-15 11:05:54'),(23,1,1,'高公公','upload/1678849560674.jpg','2023-03-15 11:06:07',NULL,NULL,NULL,2,1,'2023-03-15 11:06:08','2023-03-15 11:06:08'),(24,1,1,'是是是','upload/1678849572044.jpg','2023-03-15 11:06:14',NULL,NULL,NULL,2,1,'2023-03-15 11:06:14','2023-03-15 11:06:14'),(25,1,1,'哈哈哈','upload/1678849599600.jpg','2023-03-15 11:06:53',NULL,NULL,NULL,2,1,'2023-03-15 11:06:53','2023-03-15 11:06:53'),(26,1,NULL,NULL,NULL,NULL,'沟沟壑壑',NULL,'2023-03-15 11:12:13',NULL,2,'2023-03-15 11:12:13','2023-03-15 11:12:13'),(27,1,NULL,NULL,NULL,NULL,'1111','','2023-03-15 11:12:21',NULL,2,'2023-03-15 11:12:21','2023-03-15 11:12:21'),(28,1,NULL,NULL,NULL,NULL,'个哈哈哈或','','2023-03-15 11:14:55',NULL,2,'2023-03-15 11:14:55','2023-03-15 11:14:55'),(29,1,NULL,NULL,NULL,NULL,'哈哈哈','','2023-03-15 11:15:16',NULL,2,'2023-03-15 11:15:17','2023-03-15 11:15:17'),(30,1,1,NULL,NULL,NULL,'哈哈哈',NULL,'2023-03-15 11:15:43',NULL,2,'2023-03-15 11:15:46','2023-03-15 11:15:46'),(31,1,1,NULL,NULL,NULL,'哈哈哈',NULL,'2023-03-15 11:17:40',NULL,2,'2023-03-15 11:17:40','2023-03-15 11:17:40'),(32,1,1,NULL,NULL,NULL,'坎坎坷坷','','2023-03-15 11:17:45',NULL,2,'2023-03-15 11:17:45','2023-03-15 11:17:45'),(33,1,1,NULL,NULL,NULL,'健康',NULL,'2023-03-15 11:18:42',NULL,2,'2023-03-15 11:18:42','2023-03-15 11:18:42'),(34,4,2,'gggg ','upload/1678850896099.jpg','2023-03-15 11:28:19',NULL,NULL,NULL,1,1,'2023-03-15 11:28:19','2023-03-15 11:28:19'),(35,4,2,'hfgfsg法大使馆第三个',NULL,'2023-03-15 11:28:23',NULL,NULL,NULL,2,1,'2023-03-15 11:28:23','2023-03-15 11:28:23'),(36,4,2,NULL,NULL,NULL,'刚刚好很好',NULL,'2023-03-15 11:28:43',NULL,2,'2023-03-15 11:28:43','2023-03-15 11:28:43'),(37,1,1,NULL,NULL,NULL,'回复等多个',NULL,'2023-03-15 11:32:12',NULL,2,'2023-03-15 11:32:12','2023-03-15 11:32:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
