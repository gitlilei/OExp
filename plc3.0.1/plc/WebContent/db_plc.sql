/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.49-community : Database - db_plc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_plc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_plc`;

/*Table structure for table `plc_appointment` */

DROP TABLE IF EXISTS `plc_appointment`;

CREATE TABLE `plc_appointment` (
  `a_id` int(10) NOT NULL DEFAULT '0',
  `a_experimentid` int(10) DEFAULT NULL,
  `a_studentid` varchar(20) DEFAULT NULL,
  `a_date` date DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_appointment` */

/*Table structure for table `plc_appointment_status` */

DROP TABLE IF EXISTS `plc_appointment_status`;

CREATE TABLE `plc_appointment_status` (
  `as_id` int(10) NOT NULL DEFAULT '0',
  `as_appointmentid` int(10) DEFAULT NULL,
  `as_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`as_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_appointment_status` */

/*Table structure for table `plc_appointment_total` */

DROP TABLE IF EXISTS `plc_appointment_total`;

CREATE TABLE `plc_appointment_total` (
  `at_id` int(10) NOT NULL DEFAULT '0',
  `at_experimentid` int(10) DEFAULT NULL,
  `at_totalpeople` int(20) DEFAULT NULL,
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_appointment_total` */

/*Table structure for table `plc_control_url` */

DROP TABLE IF EXISTS `plc_control_url`;

CREATE TABLE `plc_control_url` (
  `cu_id` int(10) NOT NULL DEFAULT '0',
  `cu_url` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_control_url` */

/*Table structure for table `plc_department` */

DROP TABLE IF EXISTS `plc_department`;

CREATE TABLE `plc_department` (
  `d_id` int(10) NOT NULL DEFAULT '0',
  `d_name` varchar(20) DEFAULT NULL,
  `d_schoolid` int(10) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_department` */

/*Table structure for table `plc_experiment` */

DROP TABLE IF EXISTS `plc_experiment`;

CREATE TABLE `plc_experiment` (
  `e_id` int(10) NOT NULL DEFAULT '0',
  `e_name` varchar(20) DEFAULT NULL,
  `e_teacherid` int(10) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_experiment` */

/*Table structure for table `plc_experiment_record` */

DROP TABLE IF EXISTS `plc_experiment_record`;

CREATE TABLE `plc_experiment_record` (
  `er_id` int(10) NOT NULL DEFAULT '0',
  `er_code` text,
  `er_result` varchar(20) DEFAULT NULL,
  `er_studentid` int(10) DEFAULT NULL,
  `er_experimentid` int(10) DEFAULT NULL,
  `er_date` date DEFAULT NULL,
  PRIMARY KEY (`er_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_experiment_record` */

/*Table structure for table `plc_forum` */

DROP TABLE IF EXISTS `plc_forum`;

CREATE TABLE `plc_forum` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_title` varchar(20) DEFAULT NULL,
  `f_content` text NOT NULL,
  `f_userid` varchar(20) DEFAULT NULL,
  `f_publishdate` date DEFAULT NULL,
  `f_type` varchar(20) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_forum` */

/*Table structure for table `plc_forum_reply` */

DROP TABLE IF EXISTS `plc_forum_reply`;

CREATE TABLE `plc_forum_reply` (
  `fr_id` int(10) NOT NULL AUTO_INCREMENT,
  `fr_forumid` int(10) NOT NULL,
  `fr_reply` text NOT NULL,
  `fr_replyuserid` varchar(20) DEFAULT NULL,
  `fr_date` date DEFAULT NULL,
  PRIMARY KEY (`fr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_forum_reply` */

/*Table structure for table `plc_major` */

DROP TABLE IF EXISTS `plc_major`;

CREATE TABLE `plc_major` (
  `m_id` int(10) NOT NULL DEFAULT '0',
  `m_name` varchar(20) DEFAULT NULL,
  `m_schoolid` int(10) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_major` */

/*Table structure for table `plc_right` */

DROP TABLE IF EXISTS `plc_right`;

CREATE TABLE `plc_right` (
  `r_id` int(10) NOT NULL DEFAULT '0',
  `r_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_right` */

/*Table structure for table `plc_right_control` */

DROP TABLE IF EXISTS `plc_right_control`;

CREATE TABLE `plc_right_control` (
  `rc_rightid` int(10) DEFAULT NULL,
  `rc_controlurl` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_right_control` */

/*Table structure for table `plc_right_role` */

DROP TABLE IF EXISTS `plc_right_role`;

CREATE TABLE `plc_right_role` (
  `rr_roleid` int(10) DEFAULT NULL,
  `rr_right_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_right_role` */

/*Table structure for table `plc_right_source` */

DROP TABLE IF EXISTS `plc_right_source`;

CREATE TABLE `plc_right_source` (
  `rs_rightid` int(10) DEFAULT NULL,
  `rc_sourceid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_right_source` */

/*Table structure for table `plc_role` */

DROP TABLE IF EXISTS `plc_role`;

CREATE TABLE `plc_role` (
  `r_id` int(10) NOT NULL DEFAULT '0',
  `r_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_role` */

/*Table structure for table `plc_role_user` */

DROP TABLE IF EXISTS `plc_role_user`;

CREATE TABLE `plc_role_user` (
  `rr_userid` int(10) DEFAULT NULL,
  `rr_roleid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_role_user` */

/*Table structure for table `plc_school` */

DROP TABLE IF EXISTS `plc_school`;

CREATE TABLE `plc_school` (
  `s_id` int(10) NOT NULL DEFAULT '0',
  `s_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_school` */

/*Table structure for table `plc_score` */

DROP TABLE IF EXISTS `plc_score`;

CREATE TABLE `plc_score` (
  `s_id` int(10) NOT NULL DEFAULT '0',
  `s_experimentid` int(10) DEFAULT NULL,
  `s_score` int(10) DEFAULT NULL,
  `s_studentid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_score` */

/*Table structure for table `plc_source` */

DROP TABLE IF EXISTS `plc_source`;

CREATE TABLE `plc_source` (
  `s_id` int(10) NOT NULL DEFAULT '0',
  `s_url` varchar(30) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_teacherid` varchar(20) DEFAULT NULL,
  `s_sourcetypeid` int(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_source` */

/*Table structure for table `plc_source_type` */

DROP TABLE IF EXISTS `plc_source_type`;

CREATE TABLE `plc_source_type` (
  `st_id` int(10) NOT NULL DEFAULT '0',
  `st_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_source_type` */

/*Table structure for table `plc_student` */

DROP TABLE IF EXISTS `plc_student`;

CREATE TABLE `plc_student` (
  `std_number` varchar(20) NOT NULL,
  `std_name` varchar(20) NOT NULL,
  `std_majorid` int(10) NOT NULL,
  `std_userid` varchar(20) NOT NULL,
  PRIMARY KEY (`std_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_student` */

insert  into `plc_student`(`std_number`,`std_name`,`std_majorid`,`std_userid`) values ('123123','陈沉',1,'a');

/*Table structure for table `plc_student_login_number` */

DROP TABLE IF EXISTS `plc_student_login_number`;

CREATE TABLE `plc_student_login_number` (
  `ss_id` int(10) NOT NULL DEFAULT '0',
  `ss_numer` int(10) DEFAULT NULL,
  `ss_studentid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_student_login_number` */

/*Table structure for table `plc_teacher` */

DROP TABLE IF EXISTS `plc_teacher`;

CREATE TABLE `plc_teacher` (
  `t_id` varchar(20) NOT NULL DEFAULT '',
  `t_name` varchar(20) DEFAULT NULL,
  `t_gender` varchar(10) DEFAULT NULL,
  `t_email` varchar(30) DEFAULT NULL,
  `t_roleid` int(10) DEFAULT NULL,
  `t_majorid` int(10) DEFAULT NULL,
  `t_userid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_teacher` */

insert  into `plc_teacher`(`t_id`,`t_name`,`t_gender`,`t_email`,`t_roleid`,`t_majorid`,`t_userid`) values ('12','陈迪','男','chenzhijun@126.com',1,1,'admin');

/*Table structure for table `plc_userinfo` */

DROP TABLE IF EXISTS `plc_userinfo`;

CREATE TABLE `plc_userinfo` (
  `userid` varchar(20) NOT NULL,
  `userpwd` varchar(20) DEFAULT NULL,
  `security` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `plc_userinfo` */

insert  into `plc_userinfo`(`userid`,`userpwd`,`security`) values ('201250080324','195611','chen'),('a','a','a'),('admin','admin','chen');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
