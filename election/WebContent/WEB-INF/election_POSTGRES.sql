-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: election
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table admin
--

DROP TABLE IF EXISTS admin;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE admin (
  id varchar(100) NOT NULL,
  name varchar(100) DEFAULT NULL,
  password varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table admin
--

/*!40000 ALTER TABLE admin DISABLE KEYS */;
INSERT INTO admin VALUES ('6303159756','susruth','admin1'),('8008216161','kaushik','siryala'),('8019496194','anurag','inguva'),('admin','admin','admin');

-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: election
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table contestant
--

DROP TABLE IF EXISTS contestant;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE contestant (
  contestant_id varchar(100) NOT NULL,
  name varchar(45) DEFAULT NULL,
  age int DEFAULT NULL,
  branch varchar(45) DEFAULT NULL,
  category varchar(45) DEFAULT NULL,
  agenda varchar(1000) DEFAULT NULL,
  votes int DEFAULT '0',
  PRIMARY KEY (contestant_id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table contestant
--

/*!40000 ALTER TABLE contestant DISABLE KEYS */;
INSERT INTO contestant VALUES ('190330141','sudheendra murugula',19,'CSE','sports','ss',0),('190330185','patel vinay reddy',19,'CSE','sports','sssd',0),('190330213','SAI SRINIVASA SUBRAHMANYAM P',19,'CSE','department','ss',3),('190330214','Sakalabhaktula Pramod',19,'CSE','department','ds',4),('190330306','Jayanth Manthrigalla',19,'CSE','sports','aa',2);
/*!40000 ALTER TABLE contestant ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-02 16:52:42


-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: election
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table students
--

DROP TABLE IF EXISTS students;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE students (
  userId varchar(100) NOT NULL,
  name varchar(100) DEFAULT NULL,
  password varchar(100) DEFAULT 'Student@123',
  emailId varchar(100) DEFAULT NULL,
  departmentvote int DEFAULT '0',
  sportsvote int DEFAULT '0',
  culturalvote int DEFAULT '0',
  technicalvote int DEFAULT '0',
  PRIMARY KEY (userId)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table students
--

/*!40000 ALTER TABLE students DISABLE KEYS */;
INSERT INTO students VALUES ('1','s','Student@123','k',0,0,0,0),('12','shifu','Student@123','12@gmail.com',0,0,0,0),('1234','saketh','Student@123','saketh@gmail.com',0,0,0,0),('13','shifu','Student@123','13@gmail.com',0,0,0,0),('15','shifu','Student@123','13@gmail.com',0,0,0,0),('190030995','M.Sai Sumanth','Student@123','190030995@klh.edu.in',0,0,0,0),('190330001','ARUN CHOWDARY ARIBANDI','Student@123','190330001@klh.edu.in',0,0,0,0),('190330002','HARSHA AREPALLI','Student@123','190330002@klh.edu.in',0,0,0,0),('190330003','Jaya bavana Ayyapu','Student@123','190330003@klh.edu.in',0,0,0,0),('190330004','A Karthik Goud','Student@123','190330004@klh.edu.in',0,0,0,0),('190330005','ruthvik akula','Student@123','190330005@klh.edu.in',0,0,0,0),('190330006','Ande venkata sai sathvika','Student@123','190330006@klh.edu.in',0,0,0,0),('190330007','SAI VAMSHI KRISHNA ADDANKI','Student@123','190330007@klh.edu.in',0,0,0,0),('190330009','Sriharsha Asapu Baba','Student@123','190330009@klh.edu.in',0,0,0,0),('190330010','KAVYA ADUSUMALLI','Student@123','190330010@klh.edu.in',0,0,0,0),('190330011','AITHA RAVI CHANDRA','Student@123','190330011@klh.edu.in',0,0,0,0),('190330012','akhila chowdary polineni','Student@123','190330012@klh.edu.in',0,0,0,0),('190330013','AKULA SAI SINDHU SIVA MYTHILI','Student@123','190330013@klh.edu.in',0,0,0,0),('190330014','ANIRUDH VADALA','Student@123','190330014@klh.edu.in',0,0,0,0),('190330015','Anvesh Reddy Bemore','Student@123','190330015@klh.edu.in',0,0,0,0),('190330016','Dakshayene Arji','Student@123','190330016@klh.edu.in',0,0,0,0),('190330018','AVADHANAM SREE SHIVANI','Student@123','190330018@klh.edu.in',0,0,0,0),('190330019','AVIRENI CHANDAN','Student@123','190330019@klh.edu.in',0,0,0,0),('190330021','Mani kanta','Student@123','190330021@klh.edu.in',0,0,0,0),('190330022','bandari sai vikas','Student@123','190330022@klh.edu.in',0,0,0,0),('190330023','santhosh belida','Student@123','190330023@klh.edu.in',0,0,0,0),('190330024','BHUKYA SAPTHAGIRI NAYAK','Student@123','190330024@klh.edu.in',0,0,0,0),('190330025','Baru VenkataRaghavendra Sriharsha','Student@123','190330025@klh.edu.in',0,0,0,0),('190330027','bomma vijay kumar','Student@123','190330027@klh.edu.in',0,0,0,0),('190330028','keerthana beligini','Student@123','190330028@klh.edu.in',0,0,0,0),('190330029','satya narayana bandi','Student@123','190330029@klh.edu.in',0,0,0,0),('190330031','bathini sai sravan','Student@123','190330031@klh.edu.in',0,0,0,0),('190330032','MANASWINI BHADDIRRAJU','Student@123','190330032@klh.edu.in',0,0,0,0),('190330033','Bhagi Venkata sai Jayanth','Student@123','190330033@klh.edu.in',0,0,0,0),('190330034','BHUVAN MACHA','Student@123','190330034@klh.edu.in',0,0,0,0),('190330035','BOLLA ANURAAG','Student@123','190330035@klh.edu.in',0,0,0,0),('190330036','BOMMERA . rahul','Student@123','190330036@klh.edu.in',0,0,0,0),('190330037','BONDUGULA SHASHANK REDDY','Student@123','190330037@klh.edu.in',0,0,0,0),('190330038','bramaresh katkam','Student@123','190330038@klh.edu.in',0,0,0,0),('190330039','Chennaboina Prudhvi Raj','Student@123','190330039@klh.edu.in',0,0,0,0),('190330040','chevula Ajay Reddy','Student@123','190330040@klh.edu.in',0,0,0,0),('190330041','cherla gnana suvarchala sai roopa','Student@123','190330041@klh.edu.in',0,0,0,0),('190330042','chelamkuri sri venkata sai haranath','Student@123','190330042@klh.edu.in',0,0,0,0),('190330043','MANISH CHETLAPALLY','Student@123','190330043@klh.edu.in',0,0,0,0),('190330045','UMA MAHESH CHANDU','Student@123','190330045@klh.edu.in',0,0,0,0),('190330046','CHELEKAM NITHIN KUMAR REDDY','Student@123','190330046@klh.edu.in',0,0,0,0),('190330047','chilukuri sai srujana','Student@123','190330047@klh.edu.in',0,0,0,0),('190330048','BABAKAMAL DODDAPANENI','Student@123','190330048@klh.edu.in',0,0,0,0),('190330049','Dontukurti Divya Sai','Student@123','190330049@klh.edu.in',0,0,0,0),('190330050','Dudekula Haneef','Student@123','190330050@klh.edu.in',0,0,0,0),('190330051','DUPPATALA MAHESWAR','Student@123','190330051@klh.edu.in',0,0,0,0),('190330052','D Pavan','Student@123','190330052@klh.edu.in',0,0,0,0),('190330053','DUDEKULA SAMEER','Student@123','190330053@klh.edu.in',0,0,0,0),('190330055','Doma Shilpa Reddy','Student@123','190330055@klh.edu.in',0,0,0,0),('190330058','DHARAMKAR VIJAY CHANDRA','Student@123','190330058@klh.edu.in',0,0,0,0),('190330060','Dulam Srinivaslu Reddy','Student@123','190330060@klh.edu.in',0,0,0,0),('190330061','Dyavadi Sujith Reddy','Student@123','190330061@klh.edu.in',0,0,0,0),('190330062','EDMALA VINAY REDDY','Student@123','190330062@klh.edu.in',0,0,0,0),('190330063','Eletem Kowshik Sai','Student@123','190330063@klh.edu.in',0,0,0,0),('190330064','EMANI SAI SRIKAR','Student@123','190330064@klh.edu.in',0,0,0,0),('190330065','SHASHIKIRAN REDDY ENUKONDA','Student@123','190330065@klh.edu.in',0,0,0,0),('190330066','Anish Gandla','Student@123','190330066@klh.edu.in',0,0,0,0),('190330067','dhanush reddy gallipally','Student@123','190330067@klh.edu.in',0,0,0,0),('190330068','Hemanth Gampala','Student@123','190330068@klh.edu.in',0,0,0,0),('190330069','Gade Indra Anuraag','Student@123','190330069@klh.edu.in',0,0,0,0),('190330071','pranav naga gogineni','Student@123','190330071@klh.edu.in',0,0,0,0),('190330072','gopishetty rohith','Student@123','190330072@klh.edu.in',0,0,0,0),('190330073','Gangishetty Sai Kumar','Student@123','190330073@klh.edu.in',0,0,0,0),('190330074','SAI PRABHAT GOLIVI','Student@123','190330074@klh.edu.in',0,0,0,0),('190330075','GANUGAPATI V S S TALPA SAI','Student@123','190330075@klh.edu.in',0,0,0,0),('190330076','HARINI GIRINENI','Student@123','190330076@klh.edu.in',0,0,0,0),('190330077','Goli. Hari priya','Student@123','190330077@klh.edu.in',0,0,0,0),('190330079','Sai vamsi Gandham','Student@123','190330079@klh.edu.in',0,0,0,0),('190330080','GANGIREDDY VIGNESHWAR REDDY','Student@123','190330080@klh.edu.in',0,0,0,0),('190330081','GATLA SAI KIRAN REDDY','Student@123','190330081@klh.edu.in',0,0,0,0),('190330083','BHOOMIKA GORTHI','Student@123','190330083@klh.edu.in',0,0,0,0),('190330084','GOPINA SAI VENKAT AJITH','Student@123','190330084@klh.edu.in',0,0,0,0),('190330085','GUNDLA NRITHESH REDDY','Student@123','190330085@klh.edu.in',0,0,0,0),('190330086','HARSHITHA REDDY','Student@123','190330086@klh.edu.in',0,0,0,0),('190330087','HARI KRISHNA KARIKE','Student@123','190330087@klh.edu.in',0,0,0,0),('190330088','Harshit kumar sinha','Student@123','190330088@klh.edu.in',0,0,0,0),('190330089','DHARMAVARAPU LN HRISHITAA','Student@123','190330089@klh.edu.in',0,0,0,0),('190330090','Anurag sai inguva','123456','190330090@klh.edu.in',0,0,0,0),('190330091','ANUNAY SREERAJ JARUGU','Student@123','190330091@klh.edu.in',0,0,0,0),('190330092','JETTI CHARAN TEJA NAGA SAI','Student@123','190330092@klh.edu.in',0,0,0,0),('190330093','Keerthana Jakkanagari','Student@123','190330093@klh.edu.in',0,0,0,0),('190330094','Jaddu Keerthana Reddy','Student@123','190330094@klh.edu.in',0,0,0,0),('190330095','jaina sriram','Student@123','190330095@klh.edu.in',0,0,0,0),('190330096','jasti divya sri','Student@123','190330096@klh.edu.in',0,0,0,0),('190330097','sujeeth justin daivd','Student@123','190330097@klh.edu.in',0,0,0,0),('190330098','Kakarla Charan Sai','Student@123','190330098@klh.edu.in',0,0,0,0),('190330100','sai srinivas k m','Student@123','190330100@klh.edu.in',0,0,0,0),('190330101','Kancharla Mahendra Reddy','Student@123','190330101@klh.edu.in',0,0,0,0),('190330102','kosireddy Rohith Reddy','Student@123','190330102@klh.edu.in',0,0,0,0),('190330103','SAIMANOJ KUMAR KANKANALA','Student@123','190330103@klh.edu.in',0,0,0,0),('190330104','SAI PRADEEP KATAKAM','Student@123','190330104@klh.edu.in',0,0,0,0),('190330105','Kosaraju sai sohan','Student@123','190330105@klh.edu.in',0,0,0,0),('190330106','SAI NATH REDDY KOLAN','Student@123','190330106@klh.edu.in',0,0,0,0),('190330107','saketh reddy kongara','Student@123','190330107@klh.edu.in',0,0,0,0),('190330108','K. Sathvika','Student@123','190330108@klh.edu.in',0,0,0,0),('190330109','kazipet shivani','Student@123','190330109@klh.edu.in',0,0,0,0),('190330110','siva naga kalyan satwik kantipudi','Student@123','190330110@klh.edu.in',0,0,0,0),('190330111','THARUN REDDY KARRA','Student@123','190330111@klh.edu.in',0,0,0,0),('190330112','k ujwala reddy','Student@123','190330112@klh.edu.in',0,0,0,0),('190330113','sriram kariveda','Student@123','190330113@klh.edu.in',0,0,0,0),('190330114','Harini kottala','Student@123','190330114@klh.edu.in',0,0,0,0),('190330115','nikhil kappe','Student@123','190330115@klh.edu.in',0,0,0,0),('190330116','Kadarla Vikram','Student@123','190330116@klh.edu.in',0,0,0,0),('190330117','Kandi Anirudh Sai','Student@123','190330117@klh.edu.in',0,0,0,0),('190330118','kandula mahidhar reddy','Student@123','190330118@klh.edu.in',0,0,0,0),('190330121','kolli shyam chowdary','Student@123','190330121@klh.edu.in',0,0,0,0),('190330122','KOMATIGUNTA CHENNA KESAVA RAO','Student@123','190330122@klh.edu.in',0,0,0,0),('190330124','KONDURU PRANAV','Student@123','190330124@klh.edu.in',0,0,0,0),('190330125','Kongara Likhith','Student@123','190330125@klh.edu.in',0,0,0,0),('190330126','akash kopparapu','Student@123','190330126@klh.edu.in',0,0,0,0),('190330127','KOPPOLU PREM KUMAR','Student@123','190330127@klh.edu.in',0,0,0,0),('190330128','KOTTA DARSHAN RAJ KUMAR','Student@123','190330128@klh.edu.in',0,0,0,0),('190330130','Laxmareddygari Deekshitha Reddy','Student@123','190330130@klh.edu.in',0,0,0,0),('190330131','m akshaya','akshay','190330131@klh.edu.in',0,0,0,0),('190330132','DHEERAJ MANDAVA','1234','190330132@klh.edu.in',0,0,0,0),('190330133','MUDUNDI HARSHIT VARMA','Student@123','190330133@klh.edu.in',0,0,0,0),('190330134','Madipalli John Sathvik','Student@123','190330134@klh.edu.in',0,0,0,0),('190330135','MADHAN MAHESHWARAM','Student@123','190330135@klh.edu.in',99,0,0,0),('190330136','MANEESHA M','Student@123','190330136@klh.edu.in',0,0,0,0),('190330137','muppidi manisha reddy','Student@123','190330137@klh.edu.in',0,0,0,0),('190330138','M S R N SUSRUTH','fan@123','190330138@klh.edu.in',0,0,0,0),('190330139','sadvikha M','Student@123','190330139@klh.edu.in',0,0,0,0),('190330140','Sowmya Mahashetty','Student@123','190330140@klh.edu.in',0,0,0,0),('190330141','sudheendra murugula','Student@123','190330141@klh.edu.in',0,99,0,0),('190330142','M Sujith sujith','Student@123','190330142@klh.edu.in',0,0,0,0),('190330143','malkaram vinay kumar','Student@123','190330143@klh.edu.in',0,0,0,0),('190330144','MADDI ADITHYA YADAV','Student@123','190330144@klh.edu.in',0,0,0,0),('190330145','Ritish Reddy','Student@123','190330145@klh.edu.in',0,0,0,0),('190330147','Madepalli Karthikeya Sai','Student@123','190330147@klh.edu.in',0,0,0,0),('190330148','malladi anagha','Student@123','190330148@klh.edu.in',0,0,0,0),('190330149','RISHI MALLIKANTI','Student@123','190330149@klh.edu.in',0,0,0,0),('190330150','MANCHIKANTI REVANTH','Student@123','190330150@klh.edu.in',0,0,0,0),('190330151','MARATHI SOWMIKA','Student@123','190330151@klh.edu.in',0,0,0,0),('190330152','MD FAWAZ SABIL','Student@123','190330152@klh.edu.in',0,0,0,0),('190330153','MD K AMEER ALI','Student@123','190330153@klh.edu.in',0,0,0,0),('190330154','Mouni Medchal','Student@123','190330154@klh.edu.in',0,0,0,0),('190330155','MOHAMMED RIZWAN','Student@123','190330155@klh.edu.in',0,0,0,0),('190330157','pavan raju nagraju','Student@123','190330157@klh.edu.in',0,0,0,0),('190330158','PRANATHI NALLAPATI','Student@123','190330158@klh.edu.in',0,0,0,0),('190330159','NOOKALA SATHVIK REDDY','Student@123','190330159@klh.edu.in',0,0,0,0),('190330160','NYALAKONDA SHASHIDHAR REDDY','Student@123','190330160@klh.edu.in',0,0,0,0),('190330162','NALLANI MONISH CHANDRA','Student@123','190330162@klh.edu.in',0,0,0,0),('190330164','Ramkishore Namala','Student@123','190330164@klh.edu.in',0,0,0,0),('190330165','N.SANDEEP kumar reddy','Student@123','190330165@klh.edu.in',0,0,0,0),('190330166','NAGOLU MANASA REDDY','Student@123','190330166@klh.edu.in',0,0,0,0),('190330168','RAKESH NEELA','Student@123','190330168@klh.edu.in',0,0,0,0),('190330169','NEERAJ KONDAVEETI','Student@123','190330169@klh.edu.in',0,0,0,0),('190330171','Nikhila K','Student@123','190330171@klh.edu.in',0,0,0,0),('190330172','NORI SAI DEVI VAISHNAVI','Student@123','190330172@klh.edu.in',0,0,0,0),('190330175','peddamallagari naveen kumar','Student@123','190330175@klh.edu.in',0,0,0,0),('190330176','P Sri Venkata Lakshmi Narasimha','Student@123','190330176@klh.edu.in',0,0,0,0),('190330178','Pamula Venkat Kushaal','Student@123','190330178@klh.edu.in',0,0,0,0),('190330179','PUTTA GUNA SHEKAR','Student@123','190330179@klh.edu.in',0,0,0,0),('190330180','pilli sravani','Student@123','190330180@klh.edu.in',0,0,0,0),('190330181','PANDI SRI SAI RAVI TEJA','Student@123','190330181@klh.edu.in',0,0,0,0),('190330182','PANYALA PRANADEEP REDDY','Student@123','190330182@klh.edu.in',0,0,0,0),('190330183','PASALA AKHIL','Student@123','190330183@klh.edu.in',0,0,0,0),('190330184','Karthik Reddy Patel','Student@123','190330184@klh.edu.in',0,0,0,0),('190330185','patel vinay reddy','Student@123','190330185@klh.edu.in',99,0,0,0),('190330187','Poddaturi Sai Raj','Student@123','190330187@klh.edu.in',0,0,0,0),('190330188','praharsha reddy beemidi','Student@123','190330188@klh.edu.in',0,0,0,0),('190330189','rajput kunal singh','Student@123','190330189@klh.edu.in',0,0,0,0),('190330190','Ragam sai prashanth kartik','Student@123','190330190@klh.edu.in',0,0,0,0),('190330191','REKULA PRUDHVI RAJ','Student@123','190330191@klh.edu.in',0,0,0,0),('190330192','RUDRARAM RAM VAMSHI- KRISHNA','Student@123','190330192@klh.edu.in',0,0,0,0),('190330193','RACHA SAKETH','Student@123','190330193@klh.edu.in',0,0,0,0),('190330196','RAGHAVAPURAM LOVKIKA REDDY','Student@123','190330196@klh.edu.in',0,0,0,0),('190330198','RajaVamshi Sangaru','Student@123','190330198@klh.edu.in',0,0,0,0),('190330199','Rama krishna Harshit','Student@123','190330199@klh.edu.in',0,0,0,0),('190330200','Ramdev Sharma','Student@123','190330200@klh.edu.in',0,0,0,0),('190330201','RANGINENI KIRAN KUMAR','Student@123','190330201@klh.edu.in',0,0,0,0),('190330202','RAVITEJA KOMPALLI','Student@123','190330202@klh.edu.in',0,0,0,0),('190330204','Yeshwanth Reddy Reddybathuni','Student@123','190330204@klh.edu.in',0,0,0,0),('190330205','Rithvik Nayyar','Student@123','190330205@klh.edu.in',0,0,0,0),('190330206','ROHAN REDDY THOODI','Student@123','190330206@klh.edu.in',0,0,0,0),('190330207','d rohith varma','Student@123','190330207@klh.edu.in',0,0,0,0),('190330208','Abhinaya reddy surmpally','Student@123','190330208@klh.edu.in',0,0,0,0),('190330209','chaitanya suriti','Student@123','190330209@klh.edu.in',0,0,0,0),('190330210','S danvi Sai Sapthasw Reddy','Student@123','190330210@klh.edu.in',0,0,0,0),('190330211','SAHITHI BHIMAVARAPU','Student@123','190330211@klh.edu.in',0,0,0,0),('190330213','SAI SRINIVASA SUBRAHMANYAM P','Student@123','190330213@klh.edu.in',99,0,0,0),('190330214','Sakalabhaktula Pramod','Student@123','190330214@klh.edu.in',99,0,0,0),('190330215','SAKETH BHIMAVARAPU','Student@123','190330215@klh.edu.in',0,0,0,0),('190330216','bhanoori sandeep reddy','Student@123','190330216@klh.edu.in',0,0,0,0),('190330217','sankalamaddi indu','Student@123','190330217@klh.edu.in',0,0,0,0),('190330218','SARVESH JOSHI','Student@123','190330218@klh.edu.in',0,0,0,0),('190330219','sathvik goud gaddam','Student@123','190330219@klh.edu.in',0,0,0,0),('190330220','shayoba naz shaik','Student@123','190330220@klh.edu.in',0,0,0,0),('190330221','B SHASHANK REDDY','Student@123','190330221@klh.edu.in',0,0,0,0),('190330223','shivasai nath reddy sama','Student@123','190330223@klh.edu.in',0,0,0,0),('190330224','Shreya Peddireddy','Student@123','190330224@klh.edu.in',0,0,0,0),('190330225','SHREYA REDDY Patlolla','Student@123','190330225@klh.edu.in',0,0,0,0),('190330226','Siriyala Kaushik','kaushik','190330226@klh.edu.in',0,0,0,0),('190330227','SRIKAR SOMA','Student@123','190330227@klh.edu.in',0,0,0,0),('190330228','Anand Kathyay Somayajula V S L','Student@123','190330228@klh.edu.in',0,0,0,0),('190330229','NAGA SAI SRAVANI SURAPURAJU','Student@123','190330229@klh.edu.in',0,0,0,0),('190330230','Sreshta Kosaraju','Student@123','190330230@klh.edu.in',0,0,0,0),('190330231','SRILEKHA NAMPELLI','Student@123','190330231@klh.edu.in',0,0,0,0),('190330232','sriram Sanjeev tetali','Student@123','190330232@klh.edu.in',0,0,0,0),('190330233','Thimmapuram akshitha','Student@123','190330233@klh.edu.in',0,0,0,0),('190330234','HARI HARA NANDAN TATIKONDA','Student@123','190330234@klh.edu.in',0,0,0,0),('190330235','T S H SAI','Student@123','190330235@klh.edu.in',0,0,0,0),('190330238','Thammisetti sanjana','Student@123','190330238@klh.edu.in',0,0,0,0),('190330239','THOTTEMPUDI KIRAN PRASAD','Student@123','190330239@klh.edu.in',0,0,0,0),('190330240','THOTA SAI KUMAR','Student@123','190330240@klh.edu.in',0,0,0,0),('190330241','Tanmayee Lavu','Student@123','190330241@klh.edu.in',0,0,0,0),('190330242','T pragathi','Student@123','190330242@klh.edu.in',0,0,0,0),('190330243','TIRUMANI VARUN ADITHYA','Student@123','190330243@klh.edu.in',0,0,0,0),('190330244','arun kumar uppin','Student@123','190330244@klh.edu.in',0,0,0,0),('190330245','KURUVA UDAY KIRAN','Student@123','190330245@klh.edu.in',0,0,0,0),('190330246','UDAY SAI YARNAGULA','Student@123','190330246@klh.edu.in',0,0,0,0),('190330247','udayini inturi','Student@123','190330247@klh.edu.in',0,0,0,0),('190330248','Umesh Sai Cherukuru','Student@123','190330248@klh.edu.in',0,0,0,0),('190330249','NITYA SANTHOSHINI V','Student@123','190330249@klh.edu.in',0,0,0,0),('190330250','vanama prabhu shakthi','Student@123','190330250@klh.edu.in',0,0,0,0),('190330252','vadla sumanth raj','Student@123','190330252@klh.edu.in',0,0,0,0),('190330253','v.AKSHAY VADALA','Student@123','190330253@klh.edu.in',0,0,0,0),('190330254','Vadlamani Pranav','Student@123','190330254@klh.edu.in',0,0,0,0),('190330255','MANNEM VAMSHI KRISHNA','Student@123','190330255@klh.edu.in',0,0,0,0),('190330256','CHINNA CHINNAIAH GARI VAMSHI NATH REDDY','Student@123','190330256@klh.edu.in',0,0,0,0),('190330257','SAI MADHUKAR VANAM','Student@123','190330257@klh.edu.in',0,0,0,0),('190330258','VARUN REDDY MOGILI','Student@123','190330258@klh.edu.in',0,0,0,0),('190330260','Veerapaneni Bhargav Sai','Student@123','190330260@klh.edu.in',0,0,0,0),('190330261','veeravajhula sai manohar','Student@123','190330261@klh.edu.in',0,0,0,0),('190330262','Velivela Sai Hemanth','Student@123','190330262@klh.edu.in',0,0,0,0),('190330264','yellayolla aashritha reddy','Student@123','190330264@klh.edu.in',0,0,0,0),('190330265','kushal yalamanchi','Student@123','190330265@klh.edu.in',0,0,0,0),('190330266','SATHWIK YERRAPRAGADA','Student@123','190330266@klh.edu.in',0,0,0,0),('190330268','yeruva tharun teja','Student@123','190330268@klh.edu.in',0,0,0,0),('190330269','Yashveer Singh','Student@123','190330269@klh.edu.in',0,0,0,0),('190330270','YERUVA SIVA REDDY','Student@123','190330270@klh.edu.in',0,0,0,0),('190330271','chigullapally sushanth','Student@123','190330271@klh.edu.in',0,0,0,0),('190330272','VAMSHI Dasari','Student@123','190330272@klh.edu.in',0,0,0,0),('190330273','DASRAI SRI SAI KRISHNA NANDAN','Student@123','190330273@klh.edu.in',0,0,0,0),('190330274','PAVAN KALYAN REDDY','Student@123','190330274@klh.edu.in',0,0,0,0),('190330275','sai balaji reddy katam','Student@123','190330275@klh.edu.in',0,0,0,0),('190330276','bhogadi lokesh','Student@123','190330276@klh.edu.in',0,0,0,0),('190330278','Tarun Mundrathi','Student@123','190330278@klh.edu.in',0,0,0,0),('190330279','Likhith Nattuva','Student@123','190330279@klh.edu.in',0,0,0,0),('190330280','K SAI KIRAN','Student@123','190330280@klh.edu.in',0,0,0,0),('190330281','siddhartha goud palusa','Student@123','190330281@klh.edu.in',0,0,0,0),('190330282','ARE rohithkumar','Student@123','190330282@klh.edu.in',0,0,0,0),('190330283','bethi siddhartha reddy','Student@123','190330283@klh.edu.in',0,0,0,0),('190330284','ch akhil','Student@123','190330284@klh.edu.in',0,0,0,0),('190330287','korthiwada shiva prasad','Student@123','190330287@klh.edu.in',0,0,0,0),('190330288','Konda Ruthvik sai Venkat','Student@123','190330288@klh.edu.in',0,0,0,0),('190330289','karthik mamidishetti','Student@123','190330289@klh.edu.in',0,0,0,0),('190330290','Kota Sri krishna Teja','Student@123','190330290@klh.edu.in',0,0,0,0),('190330291','Marella Praveen Reddy','Student@123','190330291@klh.edu.in',0,0,0,0),('190330293','NIKHIL KUMAR POTHULAPALLY','Student@123','190330293@klh.edu.in',0,0,0,0),('190330294','TAPAN SAI PARUCHURI','Student@123','190330294@klh.edu.in',0,0,0,0),('190330296','Jerpla Ruthika pamar','Student@123','190330296@klh.edu.in',0,0,0,0),('190330297','Valipe Sai Kalyan','Student@123','190330297@klh.edu.in',0,0,0,0),('190330298','kundarapu snehan','Student@123','190330298@klh.edu.in',0,0,0,0),('190330300','YANAMADALA SAI CHINMAYEE','Student@123','190330300@klh.edu.in',0,0,0,0),('190330301','KURREY RAVIKANTH REDDY','Student@123','190330301@klh.edu.in',0,0,0,0),('190330302','kaithapuram ravi teja','Student@123','190330302@klh.edu.in',99,0,0,0),('190330303','Faraz Shaik','Student@123','190330303@klh.edu.in',0,0,0,0),('190330305','kyama vijay','Student@123','190330305@klh.edu.in',0,0,0,0),('190330306','Jayanth Manthrigalla','Student@123','190330306@klh.edu.in',99,99,0,0),('190330307','Rajesh Reddy Vempalla','1234567','190330307@klh.edu.in',0,0,0,0),('190330308','hemanth narla','Student@123','190330308@klh.edu.in',99,0,0,0),('190330309','JYOTHIKA DEVULAPALLY','Student@123','190330309@klh.edu.in',0,0,0,0),('190330314','Munjagalla nikhil ','Student@123','190330314@klh.edu.in',0,0,0,0),('190330315','TATIKONDA CHANAKYA','Student@123','190330315@klh.edu.in',0,0,0,0),('190330316','v.s.lekhan chowdary Atluri','Student@123','190330316@klh.edu.in',0,0,0,0),('190330317','bhavana veldhi','Student@123','190330317@klh.edu.in',0,0,0,0),('190330320','Rama Sai venkata Raghavendra','Student@123','190330320@klh.edu.in',0,0,0,0),('190339321','xxxx','Student@123','190339321@klh.edu.in',0,0,0,0),('1972','mani','Student@123','mani@gmail.com',0,0,0,0);
/*!40000 ALTER TABLE students ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-02 16:52:42


-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: election
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table voter
--

DROP TABLE IF EXISTS voter;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE voter (
  name varchar(100) DEFAULT NULL,
  id int DEFAULT NULL,
  password varchar(100) DEFAULT 'Student@123'
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table voter
--

/*!40000 ALTER TABLE voter DISABLE KEYS */;
/*!40000 ALTER TABLE voter ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-02 16:52:42
