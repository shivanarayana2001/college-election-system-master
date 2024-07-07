-- Table structure for table `admin`
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 

-- Dumping data for table `admin`
INSERT INTO `admin` VALUES ('6303159756', 'susruth', 'admin1');
INSERT INTO `admin` VALUES ('8008216161', 'kaushik', 'siryala');
INSERT INTO `admin` VALUES ('8019496194', 'anurag', 'inguva');