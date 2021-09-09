CREATE DATABASE  IF NOT EXISTS `k00254840_sd_arms2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `k00254840_sd_arms2`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: k00254840_sd_arms
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `bill_description` varchar(60) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_payments_customers_customer_id_idx` (`customer_id`),
  CONSTRAINT `fk_payments_customers_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (73,3,'Dinner',24.50),(74,15,'Breakfast',15.60),(75,12,'Dinner',25.00),(76,20,'Beer',5.50),(77,18,'Dinner',26.00),(78,17,'Lunch',23.10),(79,4,'Dinner',50.50),(80,6,'Beer',5.60),(81,9,'Dinner',21.50),(82,10,'Lunch',10.50),(84,13,'Room booking',89.00),(85,9,'Room booking',100.00);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `pass_word` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'ahounsham0@behance.net','RBp9QTbS','Abbe','Hounsham','9839576917'),(2,'kscrimshaw1@netvibes.com','M7W53V02XSq','Karoline','Scrimshaw','7237456463'),(3,'rpirazzi2@symantec.com','RQ7sk7wYwD','Reggie','Pirazzi','8563629684'),(4,'dyuryatin3@dropbox.com','zvEEZCF4yR','Duky','Yuryatin','9463903784'),(5,'atregensoe4@stumbleupon.com','9ly2J2','Alexandro','Tregensoe','8112427590'),(6,'jbygraves5@hubpages.com','8Pyg9ZZ6sm','Janessa','Bygraves','9925927782'),(7,'bkleinstub6@indiatimes.com','rQbXXix2iVG','Becky','Kleinstub','2796243375'),(8,'icaldwall7@toplist.cz','2GE14Jt','Izabel','Caldwall','3159849440'),(9,'mfittall8@yellowpages.com','nXzEX52RaHA','Micaela','Fittall','2577499322'),(10,'cwaddell9@tripod.com','Bg9d8T8c7','Catie','Waddell','2085503819'),(11,'hlarchera@globo.com','ZQcPDTcDSu','Hildy','Larcher','6465681758'),(12,'bcastanob@sciencedirect.com','uSkmUb','Brandi','Castano','8031881551'),(13,'sgandertonc@nymag.com','q6PlaFpY','Sauveur','Ganderton','4757735006'),(14,'pcockerd@macromedia.com','4pnlFbqIfIRA','Peggie','Cocker','1962154659'),(15,'dseaverse@mayoclinic.com','zyoO6DmZQW7','Dennis','Seavers','9542316917'),(16,'nchattawayf@blogger.com','UKFIQ6P','Nataline','Chattaway','7307866791'),(17,'jalamg@yale.edu','voabnbV','Julie','Alam','6603901934'),(18,'jbirdish@cocolog-nifty.com','uWTV1Csbxz','Jimmie','Birdis','7926482553'),(19,'clegieri@mapquest.com','q5TzWEzy','Carilyn','Legier','5069510342'),(20,'acasarilij@moonfruit.com','nSNNcVdZ','Adham','Casarili','2575239081'),(21,'joe.morais@gmail.com','joe123','Joe','Morais','0891234567'),(24,'elon.musk@gmail.com','1234','Elon','Musk','0891234567'),(26,'joe.morais2@gmail.com','testing','Joe','Morais','0894123698');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_rsv`
--

DROP TABLE IF EXISTS `restaurant_rsv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_rsv` (
  `booking_nr` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `num_of_people` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`booking_nr`),
  KEY `fk_restaurant_rsv_customers_customer_id_idx` (`customer_id`),
  CONSTRAINT `fk_restaurant_rsv_customers_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_rsv`
--

LOCK TABLES `restaurant_rsv` WRITE;
/*!40000 ALTER TABLE `restaurant_rsv` DISABLE KEYS */;
INSERT INTO `restaurant_rsv` VALUES (1,21,3,'2020-12-24 12:00:00'),(2,21,1,'2020-11-11 12:00:00'),(3,10,2,'2020-10-03 12:00:00'),(4,11,2,'2021-10-03 12:00:00'),(5,20,2,'2020-09-03 12:00:00'),(6,13,4,'2020-11-03 12:00:00'),(7,17,5,'2020-12-13 12:00:00'),(8,19,6,'2021-01-03 12:00:00'),(9,9,2,'2021-02-13 12:00:00'),(10,3,1,'2021-03-05 12:00:00');
/*!40000 ALTER TABLE `restaurant_rsv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_bookings`
--

DROP TABLE IF EXISTS `room_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_bookings` (
  `booking_num` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `room_type` int(11) DEFAULT NULL,
  `occupants` int(11) DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `needs_cot` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`booking_num`),
  KEY `fk_room_bookings_customers_customer_id_idx` (`customer_id`),
  KEY `fk_room_bookings_room_type_idx` (`room_type`),
  CONSTRAINT `fk_room_bookings_customers_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_bookings_room_type` FOREIGN KEY (`room_type`) REFERENCES `room_types` (`type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_bookings`
--

LOCK TABLES `room_bookings` WRITE;
/*!40000 ALTER TABLE `room_bookings` DISABLE KEYS */;
INSERT INTO `room_bookings` VALUES (102,21,2,2,'2020-12-24 12:00:00','2020-12-24 12:00:00',0),(103,13,1,1,'2020-12-24 12:00:00','2020-12-24 12:00:00',0),(104,9,2,2,'2021-01-10 12:00:00','2021-01-11 12:00:00',1),(107,21,2,2,'2020-12-24 12:00:00','2020-12-26 12:00:00',0),(108,24,2,2,'2020-12-24 12:00:00','2020-12-26 12:00:00',0);
/*!40000 ALTER TABLE `room_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_types` (
  `type` int(11) NOT NULL,
  `type_description` varchar(45) DEFAULT NULL,
  `price_per_night` decimal(10,2) DEFAULT NULL,
  `double_beds` int(11) DEFAULT NULL,
  `single_beds` int(11) DEFAULT NULL,
  `max_occupants` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (1,'Twin',89.00,0,2,2),(2,'Double',100.00,1,1,3),(3,'Family',125.00,1,2,4);
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_num` int(11) NOT NULL,
  `room_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_num`),
  KEY `fk_rooms_room_types_idx` (`room_type`),
  CONSTRAINT `fk_rooms_room_types` FOREIGN KEY (`room_type`) REFERENCES `room_types` (`type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (104,1),(105,1),(110,1),(204,1),(205,1),(209,1),(301,1),(302,1),(307,1),(308,1),(101,2),(102,2),(103,2),(108,2),(109,2),(201,2),(202,2),(203,2),(207,2),(208,2),(303,2),(304,2),(305,2),(306,2),(106,3),(107,3),(206,3),(210,3),(309,3),(310,3);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_rooms`
--

DROP TABLE IF EXISTS `total_rooms`;
/*!50001 DROP VIEW IF EXISTS `total_rooms`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_rooms` AS SELECT 
 1 AS `type_description`,
 1 AS `type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'k00254840_sd_arms'
--
/*!50003 DROP FUNCTION IF EXISTS `count_available_cots` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `count_available_cots`(check_in DATETIME,
    check_out DATETIME
) RETURNS int(11)
BEGIN	
	DECLARE available_cots INT;    
    SET available_cots = (    
		SELECT 
			4 - sum(needs_cot) 
        FROM 
			room_bookings rb
        WHERE 
			(rb.check_in BETWEEN check_in AND check_out)
			OR
            (rb.check_out BETWEEN check_in AND check_out));  
            
	IF(available_cots IS NULL) THEN
		SET available_cots = 4;
	END IF;
RETURN available_cots;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `count_available_rooms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `count_available_rooms`(room_type INT,
	check_in DATETIME,
    check_out DATETIME    
) RETURNS int(11)
BEGIN
	DECLARE available_rooms INT;
    SET available_rooms = (
		SELECT 			
			tr.count - count(rb.room_type)
		FROM
			room_bookings rb INNER JOIN total_rooms tr
			ON rb.room_type = tr.type    
		WHERE 
			rb.room_type = room_type
			AND(
			(rb.check_in BETWEEN check_in AND check_out)
			OR
			(rb.check_out BETWEEN check_in AND check_out))
		GROUP BY rb.room_type);
	IF (available_rooms IS NULL) THEN
		SET available_rooms = 
		(SELECT count FROM total_rooms tr WHERE tr.type = room_type);
	END IF;
RETURN available_rooms;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `book_a_room` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `book_a_room`(
	IN user_email VARCHAR(45),
    IN type_of_room INT,
    IN num_of_people INT,
    IN check_in_date DATETIME,
    IN check_out_date DATETIME,
    IN need_cot TINYINT)
BEGIN	     
	# Check room and cot availability
	IF ((count_available_cots(check_in_date, check_out_date) >= 1) AND 
	   (count_available_rooms(type_of_room, check_in_date, check_out_date) >= 1)) THEN
		# Add customer and booking details to room_bookings
		INSERT INTO room_bookings (customer_id, room_type, occupants, check_in, check_out, needs_cot)    
		VALUES (
			(SELECT customer_id FROM customers WHERE email = user_email),
			type_of_room,        
			num_of_people,
			check_in_date,
			check_out_date,
			need_cot);        
			
		# Add room price to customer bill
		INSERT INTO bills (customer_id, bill_description, price)  
		VALUES(
			(SELECT customer_id FROM customers WHERE email = user_email),
			'Room booking',
			(SELECT price_per_night FROM room_types WHERE type = type_of_room));
	END IF;
    # Print cot error message
	IF (count_available_cots(check_in_date, check_out_date) < 1) THEN
		SELECT ('There are not enough cots for this date range!') AS Console;
	END IF;
    # Print room error message
	IF (count_available_rooms(type_of_room, check_in_date, check_out_date) < 1) THEN
		SELECT ('There are not enough rooms of this type for this date range!') AS Console;
	END IF;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_restaurant_res` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_restaurant_res`(
	IN customer_email VARCHAR(45),
    IN num_of_people INT,
    IN date_time DATETIME
)
BEGIN
	

	INSERT INTO restaurant_rsv(customer_id, num_of_people, date_time)
    VALUES(
		(SELECT c.customer_id FROM customers c WHERE c.email = customer_email),
        num_of_people,
        date_time
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pay_bills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pay_bills`(
	IN customer_email VARCHAR(45))
BEGIN
	SELECT
		SUM(price) AS Total
	FROM
		bills b
	WHERE
		b.customer_id = (SELECT customer_id FROM customers WHERE email = customer_email);
	DELETE FROM bills WHERE customer_id = (SELECT customer_id FROM customers WHERE email = customer_email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register_new_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `register_new_user`(	
	IN user_email VARCHAR(45),
	IN user_pass_word VARCHAR(45),
    IN user_first_name VARCHAR(45),
    IN user_last_name VARCHAR(45),
    IN user_phone VARCHAR(45))
BEGIN
	IF (SELECT email FROM customers WHERE email = user_email) = user_email THEN
		SELECT 'Error: The email is already registered' AS Console;
    ELSE
		INSERT INTO customers (email, pass_word, first_name, last_name, phone)
		VALUES (user_email, user_pass_word, user_first_name, user_last_name, user_phone);
		SELECT 'The account was created successfully!' AS Console;
    END IF;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `room_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `room_details`()
BEGIN
	SELECT 
		type_description, price_per_night, double_beds, single_beds
	FROM
		room_types;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verify_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verify_login`(
	IN user_email VARCHAR(45),
	IN user_pass_word VARCHAR(45))
BEGIN
	IF 	(SELECT email FROM customers WHERE email = user_email) = user_email 
		AND 
		(SELECT pass_word FROM customers WHERE pass_word = user_pass_word) = user_pass_word 
		THEN
			SELECT 'Correct login details!' AS Console;
    ELSE		
		SELECT 'Wrong email or password.' AS Console;
    END IF;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `total_rooms`
--

/*!50001 DROP VIEW IF EXISTS `total_rooms`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_rooms` AS select `rt`.`type_description` AS `type_description`,`rt`.`type` AS `type`,count(`r`.`room_type`) AS `count` from (`rooms` `r` join `room_types` `rt` on(`r`.`room_type` = `rt`.`type`)) group by `r`.`room_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06 23:37:25
