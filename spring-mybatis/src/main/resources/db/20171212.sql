/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.37-log : Database - spring-mybatis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring-mybatis` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `spring-mybatis`;

/*Table structure for table `t_class` */

DROP TABLE IF EXISTS `t_class`;

CREATE TABLE `t_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cls_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_class` */

insert  into `t_class`(`id`,`cls_name`) values (1,'J148');

/*Table structure for table `t_game` */

DROP TABLE IF EXISTS `t_game`;

CREATE TABLE `t_game` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_game` */

insert  into `t_game`(`id`,`game_name`) values (1,'绝地求生'),(2,'使命召唤'),(3,'上图卷轴'),(4,'战地');

/*Table structure for table `t_hus` */

DROP TABLE IF EXISTS `t_hus`;

CREATE TABLE `t_hus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hus_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_hus` */

insert  into `t_hus`(`id`,`hus_name`) values (2,'老宋'),(3,'文章');

/*Table structure for table `t_pet` */

DROP TABLE IF EXISTS `t_pet`;

CREATE TABLE `t_pet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0-猫，1-狗，2-猪',
  `bone` int(11) DEFAULT NULL,
  `fish` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_pet` */

insert  into `t_pet`(`id`,`name`,`type`,`bone`,`fish`) values (1,'小喵1只',2,NULL,10),(2,'小狗1只',1,20,NULL);

/*Table structure for table `t_player` */

DROP TABLE IF EXISTS `t_player`;

CREATE TABLE `t_player` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_player` */

insert  into `t_player`(`id`,`player_name`) values (1,'小明'),(2,'小马');

/*Table structure for table `t_player_game` */

DROP TABLE IF EXISTS `t_player_game`;

CREATE TABLE `t_player_game` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fk_player_id` bigint(20) DEFAULT NULL,
  `fk_game_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_player_game` */

insert  into `t_player_game`(`id`,`fk_player_id`,`fk_game_id`) values (1,2,1),(2,2,2),(3,2,3),(4,2,4);

/*Table structure for table `t_stus` */

DROP TABLE IF EXISTS `t_stus`;

CREATE TABLE `t_stus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `fk_cls_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_stus` */

insert  into `t_stus`(`id`,`stu_name`,`fk_cls_id`) values (1,'小明',1),(2,'大龙',1),(3,'小刚',1);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `login_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_index` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`user_name`,`password`,`age`,`login_name`) values (4,'变小了','123456',18,'a'),(7,'小妹','123456',18,'b'),(8,'小妹','123456',18,'c'),(15,'小马','123456',18,'e'),(16,'小马','123456',18,'d');

/*Table structure for table `t_wife` */

DROP TABLE IF EXISTS `t_wife`;

CREATE TABLE `t_wife` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wife_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `fk_hus_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_wife` */

insert  into `t_wife`(`id`,`wife_name`,`fk_hus_id`) values (2,'老马2',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
