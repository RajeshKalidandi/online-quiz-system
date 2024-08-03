/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.22-community-nt : Database - quiz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`quiz` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `quiz`;

/*Table structure for table `feed` */

DROP TABLE IF EXISTS `feed`;

CREATE TABLE `feed` (
  `rollno` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `qot` varchar(50) default NULL,
  `dot` varchar(50) default NULL,
  `comment` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feed` */

insert  into `feed`(`rollno`,`email`,`qot`,`dot`,`comment`) values ('1234','vijji@gmail.com','Excellent','Easy','good'),('','','Medium','Normal',''),('1234','supraja.takeoff@gmail.com','Medium','Easy','djwkajfr'),('','','Excellent','Easy','');

/*Table structure for table `marks` */

DROP TABLE IF EXISTS `marks`;

CREATE TABLE `marks` (
  `name` varchar(20) default NULL,
  `marks` varchar(20) default NULL,
  `feedback` varchar(150) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marks` */

insert  into `marks`(`name`,`marks`,`feedback`) values ('1','sasi@gmail.com',NULL),('sasi@gmail.com','1',NULL),('sasi@gmail.com','2','It\'s good test..'),('guna@gmail.com','2','I got full marks'),('laxmi@gmail.com','2','it is good'),('laxmi@gmail.com','0','nice'),('laxmi@gmail.com','0','nicecccccccccc'),('laxmi@gmail.com','0','VERY GOOD'),('laxmi@gmail.com','0','it very good and simple test'),('laxmi@gmail.com','2','it is very good and easy test'),('laxmi@gmail.com','1','haiiiiiiiiiiiiiiiiiiiiiiiii'),('laxmi@gmail.com','1','it is too good'),('sasi@gmail.com',NULL,'hai'),('sasi@gmail.com',NULL,'hai'),('sasi@gmail.com',NULL,''),('sasi@gmail.com',NULL,''),('sasi@gmail.com','1','hello'),('sample@gmail.com','1',NULL);

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `questionid` varchar(10) default NULL,
  `subject` varchar(10) default NULL,
  `question` varchar(500) default NULL,
  `option1` varchar(20) default NULL,
  `option2` varchar(20) default NULL,
  `option3` varchar(20) default NULL,
  `option4` varchar(20) default NULL,
  `answer` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

insert  into `questions`(`questionid`,`subject`,`question`,`option1`,`option2`,`option3`,`option4`,`answer`) values ('1007','JAVA','  What is size of int in Java?','1','2','3','4','d'),('1011','JAVA','  What is String?','keyword','datatype','class','interface','c'),('2011','C','  What is the size of char in C.?','1 byte','2 byte','3 byte','4 byte','b'),('1025','C','  Who invented C.? ','Bilgates','Gosling','Dennis Ritchie','Stroustrop','c'),('1502','JAVA','  How many primitive datatypes in java.?','2','4','8','6','c'),('123','java','  what is java?','simple','robust','dynamic','languaue','a'),('12','c++','It is object oriented?','partially','fully','none','both','a'),('1','c','  what is c language?','language','portable','programming language','programming','c');

/*Table structure for table `sregister` */

DROP TABLE IF EXISTS `sregister`;

CREATE TABLE `sregister` (
  `username` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `pass` varchar(30) default NULL,
  `rpass` varchar(30) default NULL,
  `dob` varchar(20) default NULL,
  `gender` varchar(10) default NULL,
  `phno` decimal(10,0) default NULL,
  `addr1` varchar(50) default NULL,
  `addr2` varchar(50) default NULL,
  `city` varchar(20) default NULL,
  `state` varchar(20) default NULL,
  `pin` varchar(10) default NULL,
  `isubjects` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sregister` */

insert  into `sregister`(`username`,`email`,`pass`,`rpass`,`dob`,`gender`,`phno`,`addr1`,`addr2`,`city`,`state`,`pin`,`isubjects`) values ('sasi','sasi@gmail.com','sasi','sasi','1721914','Fe-Male','9966447788','tpt','tpt','tpt','ap','517506',NULL),('sasi','sasi@gmail.com','sasi','sasi','1721914','Fe-Male','9966447788','tpt','tpt','tpt','ap','517506',NULL),('sasi','sasi@gmail.com','sasi','sasi','15/3/1915','Fe-Male','9966447788','tpt','tpt','tpt','ap','517506',NULL),('supraja','supraja@gmail.com','supraja','supraja','15/4/1912','Fe-Male','8899665577','Peeleru','Tirupati','Tirupati','Andhra Pradesh','517192','Java,C++,null,null'),('guna','guna@gmail.com','guna','guna','12/4/1916','Male','9955223344','Nagari','Nagari','Tirupati','Andhra Pradesh','517506','Java,C++,null,Html'),('laxmi','laxmi@gmail.com','laxmi','laxmi','25/3/1912','Fe-Male','88554477','tpt','Tirupati','Tirupati','Andhra Pradesh','5014784','Java,C++,C,null'),('laxmi','laxmi@gmail.com','laxmi','laxmi','null/null/null',NULL,'9888888888','tpty','thirupathi','tpt','Andhra Pradesh','123456','null,null,null,null'),('takeoff@gmail.com','takeoff','takeoff','takeoff','9/4/1908','Fe-Male','9966447788','tpt','Tirupati','Tirupati','Andhra Pradesh','123456','Java,C++,C,null'),('sasi','sasi@gmail.com','sasi','sasi','14/8/1908','female','9966447788','tpt','tp','Tirupati','ap','123456','null,null,null,null'),(NULL,'vijji@gmail.com','123123','123123','2/2/1901','Male','9874563210','balaji','tpt','tpt','Andhra Pradesh','517501','Java,null,null,null'),(NULL,'vijji@gmail.com','123456','123456','1/1/1900','Male','8956235689','balaji','tpt','tpt','Andhra Pradesh','517501','Java,null,null,null'),('Anand','vijji@gmail.com','123123','123123','1/1/1900','Male','8956235689','balaji','tpt','tpt','Andhra Pradesh','517501','Java,null,null,null'),('supraja','sample@gmail.com','supraja','supraja','1/2/1900','Male','9874563210','balaji','tpt','tpt','ap','517501','Java,null,null,null');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
