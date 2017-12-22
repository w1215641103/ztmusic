/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.20-log : Database - music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`music` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `music`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`name`,`pass`) values ('admin','123456');

/*Table structure for table `admin_music` */

DROP TABLE IF EXISTS `admin_music`;

CREATE TABLE `admin_music` (
  `music` varchar(50) NOT NULL,
  `album` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin_music` */

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `name` varchar(50) NOT NULL,
  `writer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `album` */

insert  into `album`(`name`,`writer`) values ('Libyus','DJ Okawari'),('陈奕迅国语精选','陈奕迅'),('穿越三部曲','张杰'),('渡','薛之谦'),('鸽子','杨宗纬'),('青年晚报','许嵩'),('天生李荣浩','李荣浩'),('新地球','林俊杰'),('异类','华晨宇'),('周杰伦','周杰伦'),('Music-Man','王力宏');

/*Table structure for table `music` */

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `name` varchar(50) NOT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `album` varchar(50) DEFAULT NULL,
  `style` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `music` */

insert  into `music`(`name`,`writer`,`album`,`style`) values ('DJ Okawari - Flower Dance','DJ Okawari','Libyus','纯音乐'),('DJ Okawari - Amiman','DJ Okawari','Libyus','纯音乐'),('DJ Okawari - A Little More','DJ Okawari','Libyus','纯音乐'),('DJ Okawari - Menina','DJ Okawari','Libyus','纯音乐'),('DJ Okawari,Jumelles - Bluebird Story','DJ Okawari','Libyus','纯音乐'),('你的背包','陈奕迅','陈奕迅国语精选','流行'),('十年','陈奕迅','陈奕迅国语精选','流行'),('我们都寂寞','陈奕迅','陈奕迅国语精选','流行'),('谢谢侬','陈奕迅','陈奕迅国语精选','流行'),('兄妹','陈奕迅','陈奕迅国语精选','流行'),('穿越人海','张杰','穿越三部曲','流行'),('何必在一起','张杰','穿越三部曲','流行'),('看月亮爬上来','张杰','穿越三部曲','流行'),('量身订做','张杰','穿越三部曲','流行'),('微笑','张杰','穿越三部曲','流行'),('暧昧','薛之谦','渡','流行'),('动物世界','薛之谦','渡','流行'),('高尚','薛之谦','渡','流行'),('骆驼','薛之谦','渡','流行'),('像风一样','薛之谦','渡','流行'),('鸽子','杨宗纬','鸽子','流行'),('让','杨宗纬','鸽子','流行'),('幸福的风','杨宗纬','鸽子','流行'),('洋葱','杨宗纬','鸽子','流行'),('重来好不好','杨宗纬','鸽子','流行'),('幻胖','许嵩','青年晚报','流行'),('奇谈','许嵩','青年晚报','流行'),('摄影艺术','许嵩','青年晚报','流行'),('雅俗共赏','许嵩','青年晚报','流行'),('最佳歌手','许嵩','青年晚报','流行'),('快让我在这雪地上撒点野','李荣浩','天生李荣浩','流行'),('老街','李荣浩','天生李荣浩','流行'),('天生','李荣浩','天生李荣浩','流行'),('喜剧之王','李荣浩','天生李荣浩','流行'),('作曲家','李荣浩','天生李荣浩','流行'),('黑键','林俊杰','新地球','流行'),('回','林俊杰','新地球','流行'),('浪漫血液','林俊杰','新地球','流行'),('水仙','林俊杰','新地球','流行'),('新地球','林俊杰','新地球','流行'),('反义词','华晨宇','异类','流行'),('蜉蝣','华晨宇','异类','流行'),('国王与乞丐','华晨宇','异类','流行'),('我管你','华晨宇','异类','流行'),('异类','华晨宇','异类','流行'),('比较大的大提琴','周杰伦','周杰伦','摇滚'),('惊叹号','周杰伦','周杰伦','摇滚'),('龙拳','周杰伦','周杰伦','摇滚'),('天台','周杰伦','周杰伦','摇滚'),('最后的战役','周杰伦','周杰伦','摇滚'),('爱的就是你','王力宏','Music-Man','流行'),('不完整的旋律','王力宏','Music-Man','流行'),('改变自己','王力宏','Music-Man','流行'),('你是我心内的一首歌','王力宏','Music-Man','流行'),('我们的歌','王力宏','Music-Man','流行');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `album` varchar(1000) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`name`,`pass`,`phone`,`email`,`album`) values ('admin','49ba59abbe56e057','12345678990','sdf@sdf','我喜欢%');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
