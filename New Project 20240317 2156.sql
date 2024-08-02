-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.17-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bridal
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ bridal;
USE bridal;

--
-- Table structure for table `bridal`.`add_makeup_info`
--

DROP TABLE IF EXISTS `add_makeup_info`;
CREATE TABLE `add_makeup_info` (
  `id` int(10) unsigned default NULL,
  `parler_name` varchar(100) default NULL,
  `makeup_type` varchar(45) default NULL,
  `package_name` varchar(45) default NULL,
  `price` int(10) unsigned default NULL,
  `imagepath` text,
  `admin_name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `description` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`add_makeup_info`
--

/*!40000 ALTER TABLE `add_makeup_info` DISABLE KEYS */;
INSERT INTO `add_makeup_info` (`id`,`parler_name`,`makeup_type`,`package_name`,`price`,`imagepath`,`admin_name`,`mobile_no`,`description`) VALUES 
 (1,'Smile Beauty','Select','fecial,bleatch,Comprehensive',6000,'img68.jpg','Radhika','8767347690','mastering various makeup techniques'),
 (2,'Unic','HD Makeup','hydra fecial,bletch,fecial,body massage',5000,'img0.jpg','Manoj','9325345830','unforgettable wedding day glo'),
 (3,'Trisha','3D Makeup','NailArt,HairSpa,CleanUp,Fecial',4500,'f.jpg','Manasi','7985471101','MakeUp is like a Natural MakeUp'),
 (4,'Look','Waterproof Makeup','fecial,body massage',1000,'d.jpg','Priyanka','8010087291','Using Natural products and best qualities.'),
 (5,'OK','Shimmery Makeup','fecial,body massage,bleatch',2000,'img65.jpg','Manasi','7985471101','Best quality product using and best result'),
 (6,'Lucky','Natural Minimal Makeup','fecial,bleatch',500,'img4.jpg','Pallavii','7798322234','Natural Makeup');
/*!40000 ALTER TABLE `add_makeup_info` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`admin_registration`
--

DROP TABLE IF EXISTS `admin_registration`;
CREATE TABLE `admin_registration` (
  `name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `email_id` varchar(45) default NULL,
  `user_name` varchar(45) default NULL,
  `password` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`admin_registration`
--

/*!40000 ALTER TABLE `admin_registration` DISABLE KEYS */;
INSERT INTO `admin_registration` (`name`,`mobile_no`,`address`,`email_id`,`user_name`,`password`) VALUES 
 ('Manoj','9325345830','Mumbai','manu@gmail.com','manu','9325'),
 ('Radhika','8767347690','Undale','radhu@gmail.com','radhu','1111'),
 ('Manasi','7985471101','Wathar','manas@gmail.com','manas','1101'),
 ('Priyanka','8010087291','Nandgaon','priya@gmail.com','priya','80100'),
 ('Pallavii','7798322234','Pune','pallu@gmail.com','pallu','7798');
/*!40000 ALTER TABLE `admin_registration` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`appoinment_confirm`
--

DROP TABLE IF EXISTS `appoinment_confirm`;
CREATE TABLE `appoinment_confirm` (
  `order_id` int(10) unsigned default NULL,
  `order_date` text,
  `client_name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `id` int(10) unsigned default NULL,
  `parler_name` varchar(45) default NULL,
  `makeup_type` varchar(45) default NULL,
  `package_name` varchar(45) default NULL,
  `price` int(10) unsigned default NULL,
  `admin_name` varchar(45) default NULL,
  `mobile_no1` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`appoinment_confirm`
--

/*!40000 ALTER TABLE `appoinment_confirm` DISABLE KEYS */;
INSERT INTO `appoinment_confirm` (`order_id`,`order_date`,`client_name`,`mobile_no`,`address`,`id`,`parler_name`,`makeup_type`,`package_name`,`price`,`admin_name`,`mobile_no1`) VALUES 
 (1,'2024-03-13','Sarita','7415698326','Shenoli',1,'Smile Beauty','Select','fecial,bleatch,Comprehensive',6000,'Radhika','8767347690'),
 (2,'2024-03-15','Nikita','3256983269','Saidapur',2,'Unic','HD Makeup','hydra fecial,bletch,fecial,body massage',5000,'Manoj','9325345830'),
 (3,'2024-03-16','sanu','963258741','kavthe',3,'Trisha','3D Makeup','NailArt,HairSpa,CleanUp,Fecial',4500,'Manasi','7985471101'),
 (4,'2024-03-17','Pooja','7030775759','Kale',4,'Look','Waterproof Makeup','fecial,body massage',1000,'Priyanka','8010087291'),
 (5,'2024-03-20','Neha','4569637415','Karad',5,'OK','Shimmery Makeup','fecial,body massage,bleatch',2000,'Manasi','7985471101'),
 (6,'2024-03-22','Srushti','7894561239','Tadsar',6,'Lucky','Natural Minimal Makeup','fecial,bleatch',500,'Pallavii','7798322234'),
 (7,'2024-03-23','Janavi','1234567893','Nandgaon',5,'OK','Shimmery Makeup','fecial,body massage,bleatch',2000,'Manasi','7985471101'),
 (8,'2024-03-15','Dipti','7899631245','Nerli',5,'OK','Shimmery Makeup','fecial,body massage,bleatch',2000,'Manasi','7985471101');
INSERT INTO `appoinment_confirm` (`order_id`,`order_date`,`client_name`,`mobile_no`,`address`,`id`,`parler_name`,`makeup_type`,`package_name`,`price`,`admin_name`,`mobile_no1`) VALUES 
 (9,'2024-03-18','Krushna','9921634268','Shewalwadi',2,'Unic','HD Makeup','hydra fecial,bletch,fecial,body massage',5000,'Manoj','9325345830'),
 (10,'2024-03-26','shinu','7793983432','Pune',1,'Smile Beauty','Select','fecial,bleatch,Comprehensive',6000,'Radhika','8767347690'),
 (11,'2024-03-13','Nikita','3256983269','Saidapur',6,'Lucky','Natural Minimal Makeup','fecial,bleatch',500,'Pallavii','7798322234'),
 (12,'2024-03-13','Sarita','7415698326','Shenoli',6,'Lucky','Natural Minimal Makeup','fecial,bleatch',500,'Pallavii','7798322234'),
 (13,'2024-03-13','Srushti','7894561239','Tadsar',6,'Lucky','Natural Minimal Makeup','fecial,bleatch',500,'Pallavii','7798322234'),
 (14,'2024-03-13','Janavi','1234567893','Nandgaon',3,'Trisha','3D Makeup','NailArt,HairSpa,CleanUp,Fecial',4500,'Manasi','7985471101'),
 (15,'2024-03-13','shinu','7793983432','Pune',5,'OK','Shimmery Makeup','fecial,body massage,bleatch',2000,'Manasi','7985471101'),
 (16,'2024-03-13','Krushna','9921634268','Shewalwadi',3,'Trisha','3D Makeup','NailArt,HairSpa,CleanUp,Fecial',4500,'Manasi','7985471101');
INSERT INTO `appoinment_confirm` (`order_id`,`order_date`,`client_name`,`mobile_no`,`address`,`id`,`parler_name`,`makeup_type`,`package_name`,`price`,`admin_name`,`mobile_no1`) VALUES 
 (17,'2024-03-13','Janavi','1234567893','Nandgaon',5,'OK','Shimmery Makeup','fecial,body massage,bleatch',2000,'Manasi','7985471101'),
 (18,'2024-03-13','Nikita','3256983269','Saidapur',3,'Trisha','3D Makeup','NailArt,HairSpa,CleanUp,Fecial',4500,'Manasi','7985471101'),
 (19,'2024-03-13','shinu','7793983432','Pune',6,'Lucky','Natural Minimal Makeup','fecial,bleatch',500,'Pallavii','7798322234'),
 (20,'2024-03-13','Dipti','7899631245','Nerli',6,'Lucky','Natural Minimal Makeup','fecial,bleatch',500,'Pallavii','7798322234');
/*!40000 ALTER TABLE `appoinment_confirm` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`book_appoinment`
--

DROP TABLE IF EXISTS `book_appoinment`;
CREATE TABLE `book_appoinment` (
  `order_id` int(10) unsigned default NULL,
  `order_date` text,
  `client_name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `id` int(10) unsigned default NULL,
  `parler_name` varchar(45) default NULL,
  `makeup_type` varchar(45) default NULL,
  `package_name` varchar(45) default NULL,
  `price` int(10) unsigned default NULL,
  `admin_name` varchar(45) default NULL,
  `mobile_no1` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`book_appoinment`
--

/*!40000 ALTER TABLE `book_appoinment` DISABLE KEYS */;
INSERT INTO `book_appoinment` (`order_id`,`order_date`,`client_name`,`mobile_no`,`address`,`id`,`parler_name`,`makeup_type`,`package_name`,`price`,`admin_name`,`mobile_no1`) VALUES 
 (1,'01/01/2024',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (2,'01/01/2024','shinu','7793983432','Pune',NULL,'null','null','null',0,NULL,NULL),
 (3,'01/01/2024','shinu','7793983432','Pune',NULL,'null','null','null',0,NULL,NULL),
 (4,'01/01/2024','shinu','7793983432','Pune',NULL,'null','null','null',0,NULL,NULL),
 (5,'17/01/2024','sanu','963258741','kavthe',NULL,'null','null','null',0,NULL,NULL),
 (6,'null','sanu','963258741','kavthe',1,'Unic','3D Makeup','hydra fecial,bletch,fecial,body massage',5000,NULL,NULL),
 (7,'null','sanu','963258741','kavthe',1,'Unic','3D Makeup','hydra fecial,bletch,fecial,body massage',5000,NULL,NULL),
 (8,'17/01/2024','sanu','963258741','kavthe',NULL,'null','null','null',0,NULL,NULL),
 (9,'17/01/2024','sanu','963258741','kavthe',NULL,'null','null','null',0,NULL,NULL);
/*!40000 ALTER TABLE `book_appoinment` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`cancel_appoinment`
--

DROP TABLE IF EXISTS `cancel_appoinment`;
CREATE TABLE `cancel_appoinment` (
  `cancel_no` int(10) unsigned default NULL,
  `cancel_date` text,
  `order_id` int(10) unsigned default NULL,
  `order_date` text,
  `client_name` varchar(45) default NULL,
  `parler_name` varchar(45) default NULL,
  `makeup_type` varchar(45) default NULL,
  `reason` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`cancel_appoinment`
--

/*!40000 ALTER TABLE `cancel_appoinment` DISABLE KEYS */;
INSERT INTO `cancel_appoinment` (`cancel_no`,`cancel_date`,`order_id`,`order_date`,`client_name`,`parler_name`,`makeup_type`,`reason`) VALUES 
 (1,'30/01/2024',4,'null','null','null',NULL,NULL),
 (2,'02/02/2024',1,'01/01/2024','shinu','Unic','Waterproof Makeup',NULL),
 (3,'02/02/2024',1,'01/01/2024','shinu','Unic','Waterproof Makeup',NULL),
 (4,'2024-03-16',21,'2024-03-13','shinu','Smile Beauty','Select','program date has been extended .');
/*!40000 ALTER TABLE `cancel_appoinment` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`cancel_order`
--

DROP TABLE IF EXISTS `cancel_order`;
CREATE TABLE `cancel_order` (
  `cancel_no` int(10) unsigned default NULL,
  `cancel_date` text,
  `order_id` int(10) unsigned default NULL,
  `order_date` text,
  `customer_name` varchar(45) default NULL,
  `product_name` varchar(45) default NULL,
  `quantity` int(10) unsigned default NULL,
  `reason` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`cancel_order`
--

/*!40000 ALTER TABLE `cancel_order` DISABLE KEYS */;
INSERT INTO `cancel_order` (`cancel_no`,`cancel_date`,`order_id`,`order_date`,`customer_name`,`product_name`,`quantity`,`reason`) VALUES 
 (1,'29/01/2024',7,'29/01/2024','sanu','Green Bangles',4,NULL),
 (2,'29/01/2024',2,'15/01/2024','shinu','Sahitya',3,NULL),
 (3,'2024-03-16',14,'2024-03-13','shinu','Rajputana Jhumkas',1,NULL),
 (4,'2024-03-16',15,'2024-03-16','shinu','Rajputana Jhumkas',1,NULL),
 (5,'2024-03-16',14,'2024-03-16','shinu','Rajputana Jhumkas',1,'No any reason');
/*!40000 ALTER TABLE `cancel_order` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`client_registration`
--

DROP TABLE IF EXISTS `client_registration`;
CREATE TABLE `client_registration` (
  `client_name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `email_id` varchar(45) default NULL,
  `user_name` varchar(45) default NULL,
  `password` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`client_registration`
--

/*!40000 ALTER TABLE `client_registration` DISABLE KEYS */;
INSERT INTO `client_registration` (`client_name`,`mobile_no`,`address`,`email_id`,`user_name`,`password`) VALUES 
 ('Nikita','3256983269','Saidapur','nik@gmail.com','nik','999'),
 ('sanu','963258741','kavthe','sanu@gmail.com','sanu','666'),
 ('shinu','7793983432','Pune','shinu@gmail.com','shinu','7798'),
 ('Pooja','7030775759','Kale','pooja@gmail.com','pooja','7030'),
 ('Krushna','9921634268','Shewalwadi','krish@gmail.com','krish','123'),
 ('Dipti','7899631245','Nerli','dipu@gmail.com','dipu','222'),
 ('Janavi','1234567893','Nandgaon','janu@gmail.com','janu','1234'),
 ('Srushti','7894561239','Tadsar','srush@gmail.com','srush','333'),
 ('Neha','4569637415','Karad','neha@gmail.com','neha','444'),
 ('Sarita','7415698326','Shenoli','saru@gmail.com','saru','777');
/*!40000 ALTER TABLE `client_registration` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`confirm_order`
--

DROP TABLE IF EXISTS `confirm_order`;
CREATE TABLE `confirm_order` (
  `order_id` int(10) unsigned default NULL,
  `order_date` varchar(45) default NULL,
  `customer_name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `pin_code` int(10) unsigned default NULL,
  `id` int(10) unsigned default NULL,
  `product_category` varchar(45) default NULL,
  `product_name` varchar(45) default NULL,
  `price` int(10) unsigned default NULL,
  `quantity` int(10) unsigned default NULL,
  `admin_name` varchar(45) default NULL,
  `mobile_no2` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`confirm_order`
--

/*!40000 ALTER TABLE `confirm_order` DISABLE KEYS */;
INSERT INTO `confirm_order` (`order_id`,`order_date`,`customer_name`,`mobile_no`,`address`,`pin_code`,`id`,`product_category`,`product_name`,`price`,`quantity`,`admin_name`,`mobile_no2`) VALUES 
 (1,'2024-03-12','Nikita','3256983269','Saidapur',415111,4,'Jewellery','Golden Jwellery',1500,2,'Manasi','7985471101'),
 (2,'2024-03-13','sanu','963258741','kavthe',415109,2,'Jhumke','Rajputana Jhumkas',350,3,'Radhika','8767347690'),
 (3,'2024-03-11','shinu','7793983432','Pune',41187,5,'Others','Braided Bun',350,2,'Manasi','7985471101'),
 (4,'2024-03-10','Pooja','7030775759','Kale',41914,1,'Bangles','Chura',500,1,'Manoj','9325345830'),
 (5,'2024-03-09','Krushna','9921634268','Shewalwadi',41129,3,'Bangles','Chura',1200,3,'Priyanka','8010087291'),
 (6,'2024-03-13','Dipti','7899631245','Nerli',415111,6,'Makeup','Ruby Red',250,1,'Pallavii','7798322234'),
 (7,'2024-03-13','Janavi','1234567893','Nandgaon',41187,7,'Jhumke','Rajputana Jhumkas',150,2,'Pallavii','7798322234'),
 (8,'2024-03-14','Srushti','7894561239','Tadsar',41914,5,'Others','Braided Bun',350,1,'Manasi','7985471101'),
 (9,'2024-03-13','Neha','4569637415','Karad',41129,1,'Bangles','Chura',500,1,'Manoj','9325345830');
INSERT INTO `confirm_order` (`order_id`,`order_date`,`customer_name`,`mobile_no`,`address`,`pin_code`,`id`,`product_category`,`product_name`,`price`,`quantity`,`admin_name`,`mobile_no2`) VALUES 
 (10,'2024-03-14','Sarita','7415698326','Shenoli',415109,4,'Jewellery','Golden Jwellery',1500,1,'Manasi','7985471101'),
 (11,'2024-03-13','Sarita','7415698326','Shenoli',415109,6,'Makeup','Ruby Red',250,1,'Pallavii','7798322234'),
 (12,'2024-03-13','Krushna','9921634268','Shewalwadi',41129,9,'Makeup','Pink lipstick',250,2,'Pallavii','7798322234'),
 (13,'2024-03-13','Nikita','3256983269','Saidapur',41187,10,'Others','Messy Bun',300,1,'Pallavii','7798322234'),
 (14,'2024-03-16','shinu','7793983432','Pune',415111,2,'Jhumke','Rajputana Jhumkas',350,1,'Radhika','8767347690');
/*!40000 ALTER TABLE `confirm_order` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(45) default NULL,
  `email_id` varchar(45) default NULL,
  `feedback` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`email_id`,`feedback`) VALUES 
 ('Sanika','sanu@gmail.com','Captivating'),
 ('Krushna','krish@gmail.com','Sleek'),
 ('Janavi','janu@gmail.com','Responsive, engaging'),
 ('Shinu','shinu@gmail.com','Easy to use Website and best.'),
 ('Nikita','nik@gmail.com','Best Website.');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `user_id` varchar(45) NOT NULL default '',
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `customer_name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `id` int(10) unsigned default NULL,
  `product_category` varchar(45) default NULL,
  `product_name` varchar(45) default NULL,
  `price` int(10) unsigned default NULL,
  `admin_name` varchar(45) default NULL,
  `mobile_no1` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`order_product`
--

/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` (`customer_name`,`mobile_no`,`address`,`id`,`product_category`,`product_name`,`price`,`admin_name`,`mobile_no1`) VALUES 
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null'),
 ('Nikita','3256983269','Saidapur',NULL,'null','null',2,'null','null');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `recipt_no` int(10) unsigned default NULL,
  `date` text,
  `customer_name` varchar(45) default NULL,
  `product_name` varchar(45) default NULL,
  `quantity` int(10) unsigned default NULL,
  `price` int(10) unsigned default NULL,
  `amount` int(10) unsigned default NULL,
  `address` varchar(45) default NULL,
  `payment` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`recipt_no`,`date`,`customer_name`,`product_name`,`quantity`,`price`,`amount`,`address`,`payment`) VALUES 
 (1,'2024-03-16','Nikita','Golden Jwellery',2,1500,3000,'Saidapur','Cash On Delivery'),
 (2,'2024-03-18','sanu','Rajputana Jhumkas',3,350,1050,'kavthe','Cash On Delivery'),
 (3,'2024-03-20','shinu','Braided Bun',2,350,700,'Pune','Cash On Delivery'),
 (4,'2024-03-14','Pooja','Chura',1,500,500,'Kale','Cash On Delivery'),
 (5,'2024-03-12','Krushna','Chura',3,1200,3600,'Shewalwadi','Cash On Delivery'),
 (6,'2024-03-18','Dipti','Ruby Red',1,250,250,'Nerli','Cash On Delivery'),
 (7,'2024-03-18','Janavi','Rajputana Jhumkas',2,150,300,'Nandgaon','Cash On Delivery'),
 (8,'2024-03-19','Srushti','Braided Bun',1,350,350,'Tadsar','Cash On Delivery'),
 (9,'2024-03-16','Neha','Chura',1,500,500,'Karad','Cash On Delivery'),
 (10,'2024-03-19','Sarita','Golden Jwellery',1,1500,1500,'Shenoli','Cash On Delivery'),
 (11,'2024-03-15','Sarita','Ruby Red',1,250,250,'Shenoli','Cash On Delivery'),
 (12,'2024-03-20','Krushna','Pink lipstick',2,250,500,'Shewalwadi','Cash On Delivery');
INSERT INTO `payment` (`recipt_no`,`date`,`customer_name`,`product_name`,`quantity`,`price`,`amount`,`address`,`payment`) VALUES 
 (13,'2024-03-16','Nikita','Messy Bun',1,300,300,'Saidapur','Cash On Delivery'),
 (14,'2024-03-15','shinu','Rajputana Jhumkas',1,350,350,'Pune','Cash On Delivery'),
 (15,'2024-03-18','shinu','Rajputana Jhumkas',1,350,350,'Pune','Cash On Delivery'),
 (16,'2024-03-19','shinu','Rajputana Jhumkas',1,350,350,'Pune','Cash On Delivery');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Table structure for table `bridal`.`product_info`
--

DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `serial_no` int(10) unsigned default NULL,
  `product_category` varchar(45) default NULL,
  `product_name` varchar(45) default NULL,
  `imagepath` text,
  `price` int(10) unsigned default NULL,
  `product_info` varchar(45) default NULL,
  `admin_name` varchar(45) default NULL,
  `mobile_no` varchar(45) default NULL,
  `address` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bridal`.`product_info`
--

/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` (`serial_no`,`product_category`,`product_name`,`imagepath`,`price`,`product_info`,`admin_name`,`mobile_no`,`address`) VALUES 
 (1,'Bangles','Chura','images//b4.jpg',500,'Glass Bangles,Pure green colour','Manoj','9325345830','Mumbai'),
 (2,'Jhumke','Rajputana Jhumkas','images//j4.jpg',350,'Pure Golden Colour,with White Moti','Radhika','8767347690','Undale'),
 (3,'Bangles','Chura','images//b3.jpg',1200,'Golden Colour ,best qualities with dimonds','Priyanka','8010087291','Nandgaon'),
 (4,'Jewellery','Golden Jwellery','images//jw1.jpg',1500,'Pure Maharashtrian Thushi ','Manasi','7985471101','Wathar'),
 (5,'Others','Braided Bun','images//h1.jpg',350,'braided bun easy handled','Manasi','7985471101','Wathar'),
 (6,'Makeup','Ruby Red','images//g.jpg',250,'Waterproof and long-lasting best quality ','Pallavii','7798322234','Pune'),
 (7,'Jhumke','Rajputana Jhumkas','images//jw3.jpg',150,'Golden Colour ,best qualities with dimonds','Pallavii','7798322234','Pune'),
 (8,'Jewellery','Golden Jwellery','images//je1.jpg',1300,'Golden Colour ,best qualities with dimonds','Pallavii','7798322234','Pune'),
 (9,'Makeup','Pink lipstick','images//m1.jpg',250,'Solid Pink Lipstick','Pallavii','7798322234','Pune');
INSERT INTO `product_info` (`serial_no`,`product_category`,`product_name`,`imagepath`,`price`,`product_info`,`admin_name`,`mobile_no`,`address`) VALUES 
 (10,'Others','Messy Bun','images//h2.jpg',300,'Readymate Flower Messy Bun ','Pallavii','7798322234','Pune'),
 (11,'Jewellery','Golden Jwellery','images//j6',450,'Golden Colour ,best qualities ','Manoj','9325345830','Mumbai'),
 (12,'Jewellery','Golden Jwellery','images//j7.jpg',550,'Golden Colour ,with dimonds','Radhika','8767347690','Undale'),
 (13,'Jewellery','Golden Jwellery','images//j8.webp',650,'All Dimonds and pure quality','Priyanka','8010087291','Nandgaon');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
