/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.5.29 : Database - evoting
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`evoting` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `evoting`;

/*Table structure for table `analyzed` */

DROP TABLE IF EXISTS `analyzed`;

CREATE TABLE `analyzed` (
  `Candidates_Name` varchar(100) DEFAULT NULL,
  `Votes` varchar(100) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `analyzed` */

insert  into `analyzed`(`Candidates_Name`,`Votes`,`Category`) values 
('Lahari Sowmya','1','Class Representative'),
('Peddi Manisha','3','Class Representative');

/*Table structure for table `candidates` */

DROP TABLE IF EXISTS `candidates`;

CREATE TABLE `candidates` (
  `name` varchar(100) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `candidates` */

insert  into `candidates`(`name`,`info`,`branch`,`category`,`filename`,`path`) values 
('Lahari Sowmya','choose the right one','CSE','Class Representative','images\\Penguins.jpg','C:\\Users\\LENOVO\\Documents\\NetBeansProject\\Online Voting System\\build\\web\\images\\Penguins.jpg'),
('Peddi Manisha','choose the right one','CSE','Class Representative','images\\Chrysanthemum.jpg','C:\\Users\\LENOVO\\Documents\\NetBeansProject\\Online Voting System\\build\\web\\images\\Chrysanthemum.jpg'),
('NAVYA','chose the right one','CSE','Class Representative','images\\Desert.jpg','C:\\Users\\LENOVO\\Documents\\NetBeansProject\\Online Voting System\\build\\web\\images\\Desert.jpg');

/*Table structure for table `castedvotes` */

DROP TABLE IF EXISTS `castedvotes`;

CREATE TABLE `castedvotes` (
  `Student_Name` varchar(100) DEFAULT NULL,
  `Candidate_Name` varchar(100) DEFAULT NULL,
  `semail` varchar(100) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Analyzed` varchar(100) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `castedvotes` */

insert  into `castedvotes`(`Student_Name`,`Candidate_Name`,`semail`,`Category`,`Status`,`Analyzed`) values 
('',NULL,NULL,NULL,NULL,'No'),
('Anjali','Lahari Sowmya','123A101','Class Representative','Casted','Yes'),
('Bhavana','Peddi Manisha','123A102','Class Representative','Casted','Yes'),
('Chandana','Peddi Manisha','123A103','Class Representative','Casted','Yes'),
('dharani','Peddi Manisha','123A104','Class Representative','Casted','Yes');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`name`,`username`,`password`,`branch`,`year`,`semester`,`status`) values 
('Anjali','123A101','Monica12','CSE','1','1','Activated'),
('Bhavana','123A102','Monica13','CSE','1','1','Activated'),
('Chandana','123A103','Monica14','CSE','1','1','Activated'),
('dharani','123A104','Monica12','CSE','1','1','Activated'),
('eeeee','123A105','Monica12','CSE','1','1','Activated'),
('fathima','123A106','Monica12','CSE','1','1','Activated'),
('gayatri','123A107','Monica12','CSE','1','1','Activated'),
('Harini','123A108','Monica12','CSE','1','1','Pending'),
('jahnavi','123A109','Monica12','CSE','1','1','Pending'),
('Kaivalya','123A110','Monica12','CSE','1','1','Pending'),
('shafia','123A112','Monica12','CSE','1','1','Pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
