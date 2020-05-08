/*
SQLyog Ultimate v8.32 
MySQL - 5.5.49 : Database - library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `library`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` varchar(10) NOT NULL COMMENT '书本ID',
  `bookname` varchar(30) DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) DEFAULT NULL COMMENT '出版社',
  `price` int(11) DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) DEFAULT NULL COMMENT '书本类目',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(1000) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍数据库';

/*Data for the table `book` */

insert  into `book`(`id`,`bookname`,`author`,`publisher`,`price`,`category`,`store`,`bookdesc`,`location`) values ('000001','Java核心技术','凯 S. 霍斯特曼','机械工业出版社',30,'编程类',20,'《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。','图书馆六楼三排A面'),('000002','C++PrimaerPlus','Stephen Prata','中国邮电出版社',90,'编程类',15,'C++是在C语言基础上开发的一种集面向对象编程、通用编程和传统的过程化编程于一体的编程语言，是C语言的超集。本书是根据2003年的ISO/ANSI C++标准编写的。通过大量短小精悍的程序详细而全面地阐述了C++的基本概念和技术。全书分为18章和10个附录，分别介绍了C++程序的运行方式、基本数据类型、复合数据类型、循环和关系表达式、分支语句和逻辑操作符、函数重载和函数模板、内存模型和名称空间、类的设计和使用、多态、虚函数、动态内存分配、继承、代码重用、友元、异常处理技术、string类和标准模板库、输入/输出等内容。本书针对C++初学者，从C语言基础知识开始介绍，然后在此基础上详细阐述C++新增的特性，因此不要求读者有较多C语言方面的背景知识。本书可以作为高等院校C++课程的教材，也可以供初学者自学C++时使用。\r\n\r\n','图书馆六楼四排A面'),('000003','Python编程 从实践到精通','[美] 埃里克·马瑟斯','人民邮电出版社',89,'编程类',15,'本书是一本针对所有层次的Python 读者而作的Python 入门书。全书分两部分：第一部分介绍用Python 编程所必须了解的基本概念，包括matplotlib、NumPy 和Pygal 等强大的Python 库和工具介绍，以及列表、字典、if 语句、类、文件与异常、代码测试等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的Python 2D 游戏开发如何利用数据生成交互式的信息图，以及创建和定制简单的Web 应用，并帮读者解决常见编程问题和困惑。','图书馆六楼五排A面'),('000004','C语言从入门到精通','王娣//韩旭','清华大学出版社',49,'编程类',40,'《C语言从入门到精通》从初学者的角度出发，以通俗易懂的语言，丰富多彩的实例，详细介绍了使用C语言进行程序开发应该掌握的各方面知识。全书共分17章，包括C语言概述，算法，数据类型，运算符与表达式，常用的数据输入、输出函数，选择结构程序设计，循环控制，数组，函数，指针，结构体和共用体，位运算，预处理，文件，存储管理，网络套接字编程和学生成绩管理系统等。所有知识都结合具体实例进行介绍，涉及的程序代码给出了详细的注释，可以使读者轻松领会C语言程序开发的精髓，快速提高开发技能。','图书馆六楼六排B面'),('000005','高等数学（上册）','同济大学数学系','高等教育出版社',27,'数学类',20,'本书是同济大学数学系编《高等数学》的第六版，依据最新的“工科类本科数学基础课程教学基本要求”，为高等院校工科类各专业学生修订而成。\r\n\r\n本次修订时对教材的深广度进行了适度的调整，使学习本课程的学生都能达到合格的要求，并设置部分带*号的内容以适应分层次教学的需要；吸收国内外优秀教材的优点对习题的类型和数量进行了凋整和充实，以帮助学生提高数学素养、培养创新意识、掌握运用数学工具去解决实际问题的能力；对书中内容进一步锤炼和调整，将微分方程作为一元函数微积分的应用移到上册，更有利于学生的学习与掌握。','图书馆四楼四排A面');

/*Table structure for table `iolog` */

DROP TABLE IF EXISTS `iolog`;

CREATE TABLE `iolog` (
  `bookid` varchar(10) DEFAULT NULL,
  `readerid` varchar(45) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `borrowtime` varchar(45) NOT NULL,
  `borrowday` int(11) DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`borrowtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `iolog` */

insert  into `iolog`(`bookid`,`readerid`,`service`,`borrowtime`,`borrowday`,`complete`) values ('000002','20171514113',-1,'2020年05月07日 09时50分25秒',14,1),('000002','20171514113',1,'2020年05月07日 09时50分37秒',NULL,1),('000002','20171514113',1,'2020年05月07日 09时51分49秒',NULL,1),('000002','20171514113',1,'2020年05月07日 09时51分51秒',NULL,1);

/*Table structure for table `reader` */

DROP TABLE IF EXISTS `reader`;

CREATE TABLE `reader` (
  `username` varchar(50) NOT NULL COMMENT '读者用户名',
  `password` varchar(45) DEFAULT NULL COMMENT '读者密码',
  `name` varchar(45) DEFAULT NULL COMMENT '读者姓名',
  `sex` varchar(45) DEFAULT NULL COMMENT '读者性别',
  `status` int(11) DEFAULT NULL COMMENT '读者状态(1.正常 -1.黑名单)',
  `mail` varchar(45) DEFAULT NULL COMMENT '读者邮箱',
  `tel` varchar(45) DEFAULT NULL COMMENT '读者电话',
  `grade` int(11) DEFAULT '-1' COMMENT '读者年级',
  `classnum` int(11) DEFAULT '-1' COMMENT '读者班级',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='读者表';

/*Data for the table `reader` */

insert  into `reader`(`username`,`password`,`name`,`sex`,`status`,`mail`,`tel`,`grade`,`classnum`) values ('20171514113','123456','马文飞','男',1,'123456@qq.com','16637801122',3,1);

/*Table structure for table `tempadd` */

DROP TABLE IF EXISTS `tempadd`;

CREATE TABLE `tempadd` (
  `id` varchar(10) NOT NULL,
  `bookname` varchar(30) DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) DEFAULT NULL COMMENT '出版社',
  `price` int(11) DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) DEFAULT NULL COMMENT '书本类目',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tempadd` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user` varchar(15) NOT NULL COMMENT '用户名',
  `password` varchar(25) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(20) DEFAULT NULL COMMENT '用户真实姓名',
  `sex` varchar(5) DEFAULT NULL COMMENT '用户性别',
  `department` varchar(45) DEFAULT NULL COMMENT '用户部门',
  `tel` varchar(20) DEFAULT NULL COMMENT '用户电话',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user`,`password`,`name`,`sex`,`department`,`tel`) values ('123456','123456','测试','男','图书馆','12345678901');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
