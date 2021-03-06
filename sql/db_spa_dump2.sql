-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: %    Database: db_spa
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_accounts`
--

DROP TABLE IF EXISTS `tb_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_accounts` (
  `idaccount` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `desaccountcode` varchar(22) DEFAULT NULL,
  `desaccesstoken` varchar(128) DEFAULT NULL,
  `deschannelid` varchar(22) DEFAULT NULL,
  `desname` varchar(128) DEFAULT NULL,
  `desemail` varchar(128) DEFAULT NULL,
  `nrcountryarea` int(4) DEFAULT NULL,
  `nrddd` int(2) DEFAULT NULL,
  `nrphone` bigint(20) DEFAULT NULL,
  `intypedoc` tinyint(4) DEFAULT NULL,
  `desdocument` varchar(14) DEFAULT NULL,
  `deszipcode` char(8) DEFAULT NULL,
  `desaddress` varchar(128) DEFAULT NULL,
  `desnumber` varchar(16) DEFAULT NULL,
  `descomplement` varchar(32) DEFAULT NULL,
  `desdistrict` varchar(32) DEFAULT NULL,
  `descity` varchar(32) DEFAULT NULL,
  `desstate` varchar(32) DEFAULT NULL,
  `descountry` varchar(4) DEFAULT NULL,
  `dtbirth` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idaccount`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_accounts`
--

LOCK TABLES `tb_accounts` WRITE;
/*!40000 ALTER TABLE `tb_accounts` DISABLE KEYS */;
INSERT INTO `tb_accounts` VALUES (1,1,'MPA-9AAB76A04936','54b79269a26d40da880fad2c489fbd65_v2','APP-9QI4DVF6A702','Jose Paulo de Carvalho Cambraia','paulowebphp@gmail.com',55,31,984050125,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','1980-02-23','2019-10-12 14:16:16'),(2,2,'MPA-3089025C3EA8','b01cd2881db24948b21d5129c3c5f84b_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar3@gmail.com',55,31,31313131,0,'01224202686','13465400','31313131','3131313','1313131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 14:38:11'),(3,3,'MPA-8395AC616678','ff2fa460c47b418ca0cf6079d14b5287_v2','APP-ONH6LKITVFQK','amar4 Casar','amarcasar4@gmail.com',55,31,31313131,0,'01224202686','13465400','31313','131313','1313131','31313131','Alvar??es','AM','BRA','2000-01-01','2019-10-12 14:39:48'),(4,4,'MPA-654D2E05DE44','983a8e99638a40ab9bf98a64406c8139_v2','APP-ONH6LKITVFQK','Amar5 Casar','amarcasar5@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','313131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 14:42:10'),(5,5,'MPA-137FB2653941','042b54fe714c4f99aaa4657bc2710fc6_v2','APP-ONH6LKITVFQK','amar6 Casar','amarcasar6@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 15:27:56'),(6,6,'MPA-AED3AD1DF4D5','c9651f592a5b41b08f1ece869de4c39a_v2','APP-ONH6LKITVFQK','amar7 casar','amarcasar7@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','13131313','1313131','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 15:31:30'),(7,7,'MPA-84AAAC3FFC90','76ae6c06efaa4e1d8058be53ac0981b9_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar8@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 15:34:18'),(8,8,'MPA-76687375FA36','7d8f6e0df1054bf081d75e0b6d2f2ec1_v2','APP-ONH6LKITVFQK','Amar8 Casar','amarcasar8@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','131313131','31313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 15:37:38'),(9,9,'MPA-DABC263475B7','2555fb6155d843fba3dc299226b8ba60_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar9@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','1313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 15:39:08'),(10,10,'MPA-E2988A3379FC','afa8daea1f714049a23543777f7e838e_v2','APP-ONH6LKITVFQK','amar11 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','31313131','31313131','31313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 15:42:39'),(11,11,'MPA-475BA7A8C557','f69f94f3bff54c1ead3874f9fa27280e_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 15:48:02'),(12,15,'MPA-EE0C44D29D4C','a62db4adb72b45e0b081499ccfcfa065_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar13@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','3131313','131313','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 17:46:59'),(13,16,'MPA-C04E0E01839D','99fe47d0d377450f928d8a31cf23cb58_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar14@gmail.com',55,13,31313131,0,'01224202686','13465400','313131','3131313','13131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 17:55:07'),(14,17,'MPA-205059E35D46','e938c3283a9b452b836bf3d55699aa82_v2','APP-ONH6LKITVFQK','amar15 casar','amarcasar15@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131','31313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 17:58:55'),(15,18,'MPA-9665B56B7DA0','5b5a96414b834e2492654d594d44b581_v2','APP-ONH6LKITVFQK','Amar16 Casar','amarcasar16@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-10-12 18:27:02'),(16,20,'MPA-3AC65080399C','6fc10bd459394b798d72361c3d80443d_v2','APP-ONH6LKITVFQK','Jose Paulo','amarcasar18@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','313131313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-23 20:08:17'),(17,22,'MPA-B32AFD17314D','ef6966a93fcd499e857071bfc0e7ef7a_v2','APP-ONH6LKITVFQK','Amar20 Casar','amarcasar20@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-10-26 21:15:00'),(18,23,'MPA-E04FEC8ECC87','24e16b86c6594dab98cf3ea7e4072606_v2','APP-ONH6LKITVFQK','Amar2 Casar','amarcasar@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','31313131','Bras??lia','DF','BRA','2000-01-01','2019-10-26 21:47:33'),(19,24,'MPA-F1DA9A26BC4F','12298522779d408d9dedb1b5cf89b6cd_v2','APP-ONH6LKITVFQK','Jose Paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','1313131','313131','3131313','131313','Acrel??ndia','AC','BRA','2000-01-01','2019-10-26 21:57:00'),(20,25,'MPA-12DA94577845','49c603a3c4124560926ff3761c4cef8f_v2','APP-ONH6LKITVFQK','Jose Paulo','amarcasar2@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','3131313','13313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-08 18:15:09'),(21,26,'MPA-E869C4893988','5482f8a22bf643ba951072f7e0cc68e5_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar3@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-08 23:36:13'),(22,27,'MPA-10C88A46B535','0a3b2c58d5d4426d92857af4a2104daf_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar4@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-08 23:38:22'),(23,28,'MPA-91A2A0FDDD12','3a93068d056b4459ac60254f05f3ce4b_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar5@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','1313131','31313131','3131313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-08 23:56:10'),(24,29,'MPA-74FBF06EB995','77849f1745c243a8b792480c741bc8e1_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar5@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','3131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 02:53:04'),(25,30,'MPA-CF7EE3D3886B','a96dffad091d40069aaa768b70431a9c_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar5@gmail.com',55,11,31313131,0,'01224202686','13465400','313131','313131313','13131313','13131313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 19:09:51'),(26,32,'MPA-5C79CB2455AA','89f6d4c39f3349ffa26388cb94cdf81a_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar7@gmail.com',55,31,31313131,0,'01224202686','13465400','131313','131313','1313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 21:18:03'),(27,33,'MPA-F0DC82E5ED93','9f188e7e712f4448b0bc4b52cf573b0b_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar8@gmail.com',55,31,31313131,0,'01224202686','13465400','31313','131313','131313','1313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 21:59:16'),(28,34,'MPA-E72ADF9B4ADF','b03332e26ba44c91879a07d93189fa55_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar9@gmail.com',55,31,31313131,0,'01224202686','13465400','31313131311','313131','3131313','31313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 22:04:41'),(29,35,'MPA-8C8AE812BB21','5acb399c54ad4a13820a36efe14a6fbc_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar10@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 22:06:18'),(30,36,'MPA-BB6691BBF65A','b6f3c596256f4c6783a166584bc83542_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 22:11:14'),(31,37,'MPA-C0C0114F7BAD','26e79d260cbd4c048125845fa12bf5ce_v2','APP-ONH6LKITVFQK','A2marR2 Casar','amar1@amarcasar.com',55,31,31313131,0,'01224202686','13465400','Rua dos Otoni','313131','313131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 22:18:07'),(32,38,'MPA-727BEA7B5F96','b17b5aff1fb040e1839323be954b9b04_v2','APP-ONH6LKITVFQK','Amar2 Casar','amar2@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 22:25:09'),(33,39,'MPA-A24CA537594E','e63be133a29f4d0bb38401b62469cf71_v2','APP-ONH6LKITVFQK','Amar3 Casar','amar3@amarcasar.com',55,31,31313131,0,'01224202686','13465400','31313','313131','313131','31313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-09 22:30:06'),(34,40,'MPA-1D94A6552A01','a79122fbc3254737af2ba2b4a11bea7e_v2','APP-ONH6LKITVFQK','Amar4 Casar','amar4@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-10 01:10:27'),(35,41,'MPA-6CB05553E743','3ac30cd314584fdda70714a9bfdcb24d_v2','APP-ONH6LKITVFQK','Amar5 Casar','amar5@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-10 01:12:02'),(36,42,'MPA-2708D2F5E57C','db0d6b70a408463abb707e195202168c_v2','APP-ONH6LKITVFQK','Amar6 Casar','amar6@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','1313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-10 01:13:26'),(37,43,'MPA-E087A57733BC','a99aad2c6127453a8cff73f8990d2f68_v2','APP-ONH6LKITVFQK','Amar7 Casar','amar7@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','3131313','131313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-10 14:43:40'),(38,44,'MPA-E7C4F6BA4B56','a004e2ad0e844c83b20615fd84eba0db_v2','APP-ONH6LKITVFQK','Amar8 Kasar','amar8@amarcasar.com',55,31,31313131,0,'01224202686','13465400','31313','13131','313131','3131313','Acrel??ndia','AC','BRA','2000-01-01','2019-11-11 14:58:04'),(39,45,'MPA-866DE654260F','4af5395fbb7c41d1b2db1280c4298cfc_v2','APP-YZYH82HWD36D','Bem1 Casei','jose1@bemcasei.com.br',55,13,31313131,0,'01224202686','13465400','313131','3131313','1313131','313131','??gua Branca','AL','BRA','2000-01-01','2019-11-12 03:48:20'),(40,46,'MPA-59B03D39374F','5335c81da8fc412d8f4fd9a5da8ed225_v2','APP-335B0VPAUCEH','Bem2 Casei','bem2@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-12 18:20:32'),(41,48,'MPA-ABB9A81167ED','c8468675bb214da0888e5c7053b4df67_v2','APP-335B0VPAUCEH','Bem4 Casei','bem4@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313','3131313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-24 18:58:14'),(42,49,'MPA-8E6E551864E2','d2a50631aca54d2cbfcf23a156d10d06_v2','APP-335B0VPAUCEH','Jose Cambraia','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-11-24 20:12:03'),(43,62,'MPA-F0FAFCCF8A7E','af0d9918494a4dfd88c68a7d89f4bbfe_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem9@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','31313131','Acrel??ndia','AC','BRA','2000-01-01','2019-12-12 14:42:29'),(44,63,'MPA-3EFD481E7919','2b52a2febc8d42c9bba203114080af1e_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem10@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Espirito Santo','313131','espiriyu','espiriiiiiiiiii','Acrel??ndia','AC','BRA','2000-01-01','2019-12-12 14:55:25'),(45,64,'MPA-FE4DDE1B7F13','4fd60443f25d40bea9ccfc70b8a59d74_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem11@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','espiriiiro','2','espiriiiro3','espiriiiro4','Acrel??ndia','AC','BRA','2000-01-01','2019-12-12 17:51:01'),(46,65,'MPA-6FD055483922','d2ffc98db5124aa49125d52573c2ab33_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem12@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','esapiiirioo','2','esapiiirioo3','esapiiirioo4','Abreu e Lima','PE','BRA','2000-01-01','2019-12-12 18:36:45'),(47,66,'MPA-E772CAC7154B','e034b916714947be8f9513af014bae5a_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem13@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','espiiiritoooo','2','espiiiritoooo3','espiiiritoooo4','Alvar??es','AM','BRA','2000-01-01','2019-12-15 14:45:27'),(48,67,'MPA-5D3768B4B54C','dbd3776d953048449ab233129faddb5f_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem14@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-12-15 21:34:59'),(49,68,'MPA-844A7F861C32','db06c5b5b0f94611b6901d3d96f4e358_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambrai??','bem15@bemcasei.com.br',55,32,31313131,0,'01224202686','13465400','3313131313','3131','31313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-12-15 23:13:37'),(50,69,'MPA-EA84544421F6','d868b54ce9ea47638d7fe32e6efa5762_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem16@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','31313','313131','313131','313131','Alvar??es','AM','BRA','2000-01-01','2019-12-16 12:50:23'),(51,70,'MPA-F14022E0EBC0','a9e27eabea0d43f2a2d5d7bd05ce65ad_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel??ndia','AC','BRA','2000-01-01','2019-12-16 12:53:17'),(52,71,'MPA-213A7DA1EEAC','30d4918d83c543878b230c916d76705d_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem18@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Espirito Santo','1757','ap 401','Lourdes','Acrel??ndia','AC','BRA','2000-01-01','2019-12-16 15:20:02'),(53,72,'MPA-CAB881D6E182','61379205d9e249888841ad216c3c5224_v2','APP-335B0VPAUCEH','Jos?? Paulo De C??rvalho Cambraia','bem19@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','2000-01-01','2019-12-16 15:26:38'),(54,73,'MPA-A0B86902024B','b49a1a5b65114b19b8f4e62ca1b46f4c_v2','APP-335B0VPAUCEH','Jos?? Paulo De Carvalho C??mbraia','bem20@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Major Rehder','401','','Vila Rehder','Americana','SP','BRA','2000-01-01','2019-12-16 17:16:04'),(55,74,'MPA-E6C43343F30C','acca1f2c19984712a81fbaba4beddbb9_v2','APP-335B0VPAUCEH','Amarr Casar','bem21@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','2000-01-01','2019-12-16 17:24:16'),(56,77,'MPA-B993D7177700','41d099950ef741efbfd3293e9bb14ec7_v2','APP-335B0VPAUCEH','Jos?? Paulo','bem24@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','2000-01-01','2020-02-12 02:51:55'),(57,78,'MPA-9D48A8212C78','711cf3e90d4b408a88ff268df40b7006_v2','APP-335B0VPAUCEH','Bem Casei','bem21@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap401','Lourdes','Belo Horizonte','MG','BRA','2000-01-01','2020-03-31 05:16:30'),(58,79,'MPA-6E5B23D0FD94','10b0a5f805a741a88075ed43cc09ae38_v2','APP-335B0VPAUCEH','Jos?? Paulo Cambraia','jpccambraia2@gmail.com',55,31,32229822,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','2000-01-01','2020-08-04 19:09:17'),(59,80,'MPA-CF5EA1AD8DFF','68723d2503404e0eae03289d7353b20f_v2','APP-335B0VPAUCEH','Jos?? Paulo','bem2020@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','2000-01-01','2020-08-04 23:06:44'),(60,81,'MPA-707CA28800AF','b4db28867f31446394e8ce775b4cdd34_v2','APP-335B0VPAUCEH','Jos?? Paulo Carvalho','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','2000-01-01','2020-08-05 23:24:16');
/*!40000 ALTER TABLE `tb_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_addresses`
--

DROP TABLE IF EXISTS `tb_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_addresses` (
  `idaddress` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `deszipcode` char(8) DEFAULT NULL,
  `desaddress` varchar(128) DEFAULT NULL,
  `desnumber` varchar(16) DEFAULT NULL,
  `descomplement` varchar(32) DEFAULT NULL,
  `desdistrict` varchar(32) DEFAULT NULL,
  `idcity` int(8) DEFAULT NULL,
  `descity` varchar(32) DEFAULT NULL,
  `idstate` int(2) DEFAULT NULL,
  `desstate` varchar(32) DEFAULT NULL,
  `desstatecode` varchar(2) DEFAULT NULL,
  `descountry` varchar(32) DEFAULT NULL,
  `descountrycode` varchar(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idaddress`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_addresses`
--

LOCK TABLES `tb_addresses` WRITE;
/*!40000 ALTER TABLE `tb_addresses` DISABLE KEYS */;
INSERT INTO `tb_addresses` VALUES (1,1,'30160037','Rua Espirito Santo','1757','ap 401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2019-10-12 14:16:17'),(2,2,'13465400','31313131','3131313','1313131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 14:38:13'),(3,3,'13465400','31313','131313','1313131','31313131',219,'Alvar??es',3,'Amazonas','AM','Brasil','BRA','2019-10-12 14:39:48'),(4,4,'13465400','313131','31313131','313131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 14:42:10'),(5,5,'13465400','313131','3131313','1313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 15:27:56'),(6,6,'13465400','313131','3131313','13131313','1313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 15:31:30'),(7,7,'13465400','313131','313131','313131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 15:34:18'),(8,8,'13465400','3131313','131313131','31313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 15:37:38'),(9,9,'13465400','313131','313131','3131313','1313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 15:39:08'),(10,10,'13465400','31313131','31313131','31313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 15:42:39'),(11,11,'13465400','313131','313131','3131313','131313',79,'',1,'Acre','AC','Brasil','BRA','2019-10-12 15:48:02'),(12,15,'13465400','3131313','3131313','131313','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 17:46:59'),(13,16,'13465400','313131','3131313','13131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 17:55:07'),(14,17,'13465400','313131','313131','3131','31313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 17:58:55'),(15,18,'13465400','313131','313131','313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-12 18:27:02'),(16,20,'13465400','313131','31313131','31313131','313131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-23 20:08:17'),(17,22,'13465400','313131','3131313','1313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-26 21:15:00'),(18,23,'13465400','313131','313131','313131','31313131',882,'Bras??lia',7,'Distrito Federal','DF','Brasil','BRA','2019-10-26 21:47:33'),(19,24,'13465400','1313131','313131','3131313','131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-10-26 21:57:00'),(20,25,'13465400','3131313','3131313','13313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-08 18:15:10'),(21,26,'13465400','313131','3131313','1313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-08 23:36:13'),(22,27,'13465400','313131','3131313','313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-08 23:38:22'),(23,28,'13465400','3131313','1313131','31313131','3131313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-08 23:56:10'),(24,29,'13465400','313131','3131313','1313131','3131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 02:53:04'),(25,30,'13465400','313131','313131313','13131313','13131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 19:09:51'),(26,32,'13465400','131313','131313','1313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 21:18:03'),(27,33,'13465400','31313','131313','131313','1313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 21:59:16'),(28,34,'13465400','31313131311','313131','3131313','31313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 22:04:41'),(29,35,'13465400','313131','3131313','1313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 22:06:18'),(30,36,'13465400','313131','31313131','313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 22:11:14'),(31,37,'13465400','Rua dos Otoni','313131','313131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 22:18:07'),(32,38,'13465400','313131','3131313','1313131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 22:25:09'),(33,39,'13465400','31313','313131','313131','31313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-09 22:30:06'),(34,40,'13465400','313131','3131313','1313131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-10 01:10:27'),(35,41,'13465400','313131','313131','313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-10 01:12:02'),(36,42,'13465400','313131','313131','3131313','1313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-10 01:13:26'),(37,43,'13465400','313131','31313131','3131313','131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-10 14:43:40'),(38,44,'13465400','31313','13131','313131','3131313',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-11 14:58:04'),(39,45,'13465400','313131','3131313','1313131','313131',101,'??gua Branca',2,'Alagoas','AL','Brasil','BRA','2019-11-12 03:48:20'),(40,46,'13465400','313131','31313131','31313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-12 18:20:32'),(41,48,'13465400','313131','31313131','31313','3131313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-24 18:58:14'),(42,49,'13465400','313131','31313131','313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-11-24 20:12:03'),(43,62,'13465400','313131','31313131','31313131','31313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-12-12 14:42:29'),(44,63,'13465400','Rua Espirito Santo','313131','espiriyu','espiriiiiiiiiii',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-12-12 14:55:25'),(45,64,'13465400','espiriiiro','2','espiriiiro3','espiriiiro4',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-12-12 17:51:01'),(46,65,'13465400','esapiiirioo','2','esapiiirioo3','esapiiirioo4',3183,'Abreu e Lima',16,'Pernambuco','PE','Brasil','BRA','2019-12-12 18:36:45'),(47,66,'13465400','espiiiritoooo','2','espiiiritoooo3','espiiiritoooo4',219,'Alvar??es',3,'Amazonas','AM','Brasil','BRA','2019-12-15 14:45:27'),(48,67,'13465400','313131','3131313','1313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-12-15 21:34:59'),(49,68,'13465400','3313131313','3131','31313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-12-15 23:13:37'),(50,69,'13465400','31313','313131','313131','313131',219,'Alvar??es',3,'Amazonas','AM','Brasil','BRA','2019-12-16 12:50:23'),(51,70,'13465400','3131','31313','1313131','313131',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-12-16 12:53:17'),(52,71,'13465400','Rua Espirito Santo','1757','ap 401','Lourdes',79,'Acrel??ndia',1,'Acre','AC','Brasil','BRA','2019-12-16 15:20:02'),(53,72,'30160037','Rua Espirito Santo','1757','ap 401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2019-12-16 15:26:38'),(54,73,'13465400','Rua Major Rehder','401','','Vila Rehder',4724,'Americana',26,'S??o Paulo','SP','Brasil','BRA','2019-12-16 17:16:04'),(55,74,'30160037','Rua Espirito Santo','1757','ap 401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2019-12-16 17:24:16'),(56,77,'30160037','Rua Espirito Santo','1757','ap 401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2020-02-12 02:51:55'),(57,78,'30160037','Rua Espirito Santo','1757','ap401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2020-03-31 05:16:30'),(58,79,'30160037','Rua Espirito Santo','1757','ap 401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2020-08-04 19:09:17'),(59,80,'30160037','Rua Espirito Santo','1757','ap 401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2020-08-04 23:06:44'),(60,81,'30160037','Rua Espirito Santo','1757','ap 401','Lourdes',1630,'Belo Horizonte',11,'Minas Gerais','MG','Brasil','BRA','2020-08-05 23:24:16');
/*!40000 ALTER TABLE `tb_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_albuns`
--

DROP TABLE IF EXISTS `tb_albuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_albuns` (
  `idalbum` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `instatus` tinyint(4) DEFAULT NULL,
  `inposition` tinyint(4) DEFAULT NULL,
  `inphotosize` int(11) DEFAULT NULL,
  `desalbum` varchar(128) DEFAULT NULL,
  `desdescription` text DEFAULT NULL,
  `desphoto` varchar(256) DEFAULT NULL,
  `desextension` varchar(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idalbum`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_albuns`
--

LOCK TABLES `tb_albuns` WRITE;
/*!40000 ALTER TABLE `tb_albuns` DISABLE KEYS */;
INSERT INTO `tb_albuns` VALUES (1,49,1,1,59345,'T??tulo da imagem 1','Minha linda imagem lorem ipsum Minha linda imagem lorem ipsum Minha linda imagem lorem ipsum Minha linda imagem lorem ipsum Minha linda imagem lorem ipsum','1.jpg','jpg','2019-11-29 22:26:04'),(2,49,1,0,693036,'Nome a??a??','??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum','2.jpg','jpg','2019-12-10 18:15:17'),(3,49,1,3,73374,'jos?? ??lbum ??i???? 8','??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum','3.jpg','jpg','2019-12-10 18:15:54'),(4,49,1,7,78886,'imagem','??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum ??lorem ipsum','4.jpg','jpg','2019-12-10 18:19:13'),(5,49,1,2,189806,'Neon Neght??','lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum','5.jpg','jpg','2019-12-10 18:25:15'),(6,66,1,0,498682,'T??tulo 1 ??','Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum','6.jpg','jpg','2019-12-15 19:22:14');
/*!40000 ALTER TABLE `tb_albuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_albunscategories`
--

DROP TABLE IF EXISTS `tb_albunscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_albunscategories` (
  `idalbumcategory` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `incategoryposition` int(4) DEFAULT NULL,
  `descategory` varchar(128) DEFAULT NULL,
  `desurl` varchar(256) DEFAULT NULL,
  `nrqtd` int(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idalbumcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_albunscategories`
--

LOCK TABLES `tb_albunscategories` WRITE;
/*!40000 ALTER TABLE `tb_albunscategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_albunscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_banks`
--

DROP TABLE IF EXISTS `tb_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_banks` (
  `idbank` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `desbankcode` varchar(22) DEFAULT NULL,
  `desbanknumber` varchar(4) DEFAULT NULL,
  `desagencynumber` varchar(11) DEFAULT NULL,
  `desagencycheck` varchar(2) DEFAULT NULL,
  `desaccounttype` varchar(11) DEFAULT NULL,
  `desaccountnumber` varchar(11) DEFAULT NULL,
  `desaccountcheck` varchar(2) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idbank`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_banks`
--

LOCK TABLES `tb_banks` WRITE;
/*!40000 ALTER TABLE `tb_banks` DISABLE KEYS */;
INSERT INTO `tb_banks` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 14:15:07'),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 14:37:36'),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 14:39:28'),(4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 14:41:25'),(5,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:27:31'),(6,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:31:04'),(7,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:33:45'),(8,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:37:11'),(9,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:38:51'),(10,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:42:13'),(11,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:47:30'),(12,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 17:30:53'),(13,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 17:32:44'),(14,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 17:34:12'),(15,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 17:46:13'),(16,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 17:54:32'),(17,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 17:58:38'),(18,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 18:01:54'),(19,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-23 19:59:29'),(20,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-23 20:00:20'),(21,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-26 20:51:06'),(22,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-26 21:12:23'),(23,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-26 21:46:52'),(24,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-26 21:56:26'),(25,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 18:09:54'),(26,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:35:51'),(27,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:37:51'),(28,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:49:51'),(29,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 02:12:46'),(30,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 19:08:33'),(31,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 21:10:09'),(32,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 21:10:41'),(33,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 21:57:51'),(34,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 22:04:06'),(35,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 22:05:52'),(36,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 22:10:24'),(37,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 22:17:22'),(38,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 22:24:19'),(39,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 22:28:27'),(40,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-10 01:09:38'),(41,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-10 01:11:35'),(42,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-10 01:13:00'),(43,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-10 14:40:49'),(44,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-11 14:29:23'),(45,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-12 03:47:37'),(46,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-12 18:19:26'),(47,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-19 16:42:44'),(48,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-24 18:55:17'),(49,49,'BKA-99DG8MFQ92VJ','1','3858','0','CHECKING','57509','7','2019-11-24 20:10:01'),(50,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-12 14:34:07'),(51,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-12 14:42:00'),(52,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-12 14:54:23'),(53,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-12 17:32:56'),(54,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-12 18:36:10'),(55,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-15 14:25:09'),(56,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-15 21:34:40'),(57,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-15 22:55:27'),(58,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 12:48:01'),(59,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 12:52:46'),(60,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 15:17:47'),(61,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 15:25:55'),(62,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 17:15:21'),(63,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 17:23:33'),(64,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 17:29:10'),(65,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 19:36:28'),(66,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-02-12 02:50:41'),(67,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-03-31 05:12:37'),(68,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-04 19:08:10'),(69,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-04 23:06:01'),(70,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-05 23:23:23');
/*!40000 ALTER TABLE `tb_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_campaigns`
--

DROP TABLE IF EXISTS `tb_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_campaigns` (
  `idcampaign` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idmachine` int(11) NOT NULL,
  `indeleted` tinyint(4) DEFAULT 0,
  `nrcampaign` tinyint(4) DEFAULT NULL,
  `dttrigger` datetime DEFAULT NULL,
  `dtregister` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcampaign`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_campaigns`
--

LOCK TABLES `tb_campaigns` WRITE;
/*!40000 ALTER TABLE `tb_campaigns` DISABLE KEYS */;
INSERT INTO `tb_campaigns` VALUES (1,81,0,0,0,NULL,'2021-05-30 17:34:04'),(2,81,1,0,0,NULL,'2021-05-30 21:41:03'),(3,89,6,0,0,'2021-09-06 07:50:00','2021-09-06 16:56:57'),(4,86,6,0,0,'2021-09-06 14:00:00','2021-09-06 17:38:10'),(5,92,7,0,0,'2021-09-06 05:44:00','2021-09-06 17:55:28'),(6,86,7,0,0,'2021-09-06 14:00:00','2021-09-06 17:56:23'),(7,93,7,0,0,'2021-09-06 08:53:00','2021-09-06 17:58:37'),(8,94,8,0,0,'2021-09-05 08:51:00','2021-09-06 18:06:21'),(9,86,8,0,0,'2021-09-06 18:00:00','2021-09-06 18:06:30'),(10,95,6,0,0,'2021-09-04 19:36:00','2021-09-06 18:11:12'),(11,96,6,0,0,'2021-09-04 13:15:00','2021-09-06 18:12:24');
/*!40000 ALTER TABLE `tb_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carts`
--

DROP TABLE IF EXISTS `tb_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_carts` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `dessessionid` varchar(64) NOT NULL,
  `iduser` int(11) NOT NULL,
  `incartstatus` tinyint(4) NOT NULL DEFAULT 0,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcart`),
  KEY `FK_carts_users_idx` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carts`
--

LOCK TABLES `tb_carts` WRITE;
/*!40000 ALTER TABLE `tb_carts` DISABLE KEYS */;
INSERT INTO `tb_carts` VALUES (1,'eutor17hg1vakklsvfdmhn47d6',1,1,'2019-10-12 14:16:37'),(2,'eutor17hg1vakklsvfdmhn47d6',2,1,'2019-10-12 14:38:19'),(3,'eutor17hg1vakklsvfdmhn47d6',3,1,'2019-10-12 14:40:25'),(4,'eutor17hg1vakklsvfdmhn47d6',4,1,'2019-10-12 14:47:03'),(5,'eutor17hg1vakklsvfdmhn47d6',5,1,'2019-10-12 15:28:31'),(6,'eutor17hg1vakklsvfdmhn47d6',6,1,'2019-10-12 15:31:54'),(7,'eutor17hg1vakklsvfdmhn47d6',7,1,'2019-10-12 15:34:54'),(8,'eutor17hg1vakklsvfdmhn47d6',8,1,'2019-10-12 15:37:51'),(9,'eutor17hg1vakklsvfdmhn47d6',9,1,'2019-10-12 15:39:25'),(10,'eutor17hg1vakklsvfdmhn47d6',10,0,'2019-10-12 15:42:56'),(11,'eutor17hg1vakklsvfdmhn47d6',10,1,'2019-10-12 15:45:39'),(12,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:48:48'),(13,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:49:28'),(14,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:49:47'),(15,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:50:34'),(16,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:51:42'),(17,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:52:53'),(18,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:53:10'),(19,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:53:42'),(20,'eutor17hg1vakklsvfdmhn47d6',11,0,'2019-10-12 15:54:08'),(21,'eutor17hg1vakklsvfdmhn47d6',11,1,'2019-10-12 17:27:18'),(22,'eutor17hg1vakklsvfdmhn47d6',15,1,'2019-10-12 17:47:34'),(23,'eutor17hg1vakklsvfdmhn47d6',16,1,'2019-10-12 17:55:26'),(24,'eutor17hg1vakklsvfdmhn47d6',17,1,'2019-10-12 17:59:40'),(25,'eutor17hg1vakklsvfdmhn47d6',18,1,'2019-10-12 18:34:49'),(26,'ndsji02np1a6hvhhbmtf0fhgqs',11,0,'2019-10-25 19:00:26'),(27,'quihshiofk08khdsdaijn90brh',22,1,'2019-10-26 21:22:23'),(28,'si8dmr5aic8jhf6bob6koq47k6',23,1,'2019-10-26 21:48:50'),(29,'si8dmr5aic8jhf6bob6koq47k6',24,1,'2019-10-26 21:57:27'),(30,'si8dmr5aic8jhf6bob6koq47k6',11,0,'2019-10-27 00:52:36'),(31,'aagoo7140v7ao1ige611l39kjg',11,0,'2019-10-27 01:51:47'),(32,'1r3c04fh8u7k1vslfhvhvbnmnf',11,0,'2019-10-27 01:51:47'),(33,'id0b9qrq8galvun8afkco89vrb',11,0,'2019-10-27 12:14:30'),(34,'88f3t62dkvs71cbgmektf250c9',21,0,'2019-11-01 13:10:34'),(35,'4ii1rg1km0jht2bv17n4giqppv',25,1,'2019-11-08 23:15:29'),(36,'4ii1rg1km0jht2bv17n4giqppv',25,1,'2019-11-08 23:17:45'),(37,'4ii1rg1km0jht2bv17n4giqppv',25,1,'2019-11-08 23:22:41'),(38,'4ii1rg1km0jht2bv17n4giqppv',26,1,'2019-11-08 23:37:10'),(39,'4ii1rg1km0jht2bv17n4giqppv',27,0,'2019-11-08 23:41:41'),(40,'4ii1rg1km0jht2bv17n4giqppv',27,0,'2019-11-08 23:42:21'),(41,'4ii1rg1km0jht2bv17n4giqppv',27,0,'2019-11-08 23:42:50'),(42,'4ii1rg1km0jht2bv17n4giqppv',27,1,'2019-11-08 23:47:52'),(43,'4ii1rg1km0jht2bv17n4giqppv',28,1,'2019-11-09 00:00:24'),(44,'4ii1rg1km0jht2bv17n4giqppv',29,1,'2019-11-09 03:21:15'),(45,'g5ktn4982itjbnicj2u0mm0kp6',30,1,'2019-11-09 19:12:46'),(46,'g5ktn4982itjbnicj2u0mm0kp6',32,1,'2019-11-09 21:38:05'),(47,'g5ktn4982itjbnicj2u0mm0kp6',32,1,'2019-11-09 21:40:21'),(48,'g5ktn4982itjbnicj2u0mm0kp6',32,1,'2019-11-09 21:53:07'),(49,'g5ktn4982itjbnicj2u0mm0kp6',33,1,'2019-11-09 21:59:29'),(50,'g5ktn4982itjbnicj2u0mm0kp6',34,1,'2019-11-09 22:04:53'),(51,'g5ktn4982itjbnicj2u0mm0kp6',35,1,'2019-11-09 22:06:50'),(52,'g5ktn4982itjbnicj2u0mm0kp6',39,0,'2019-11-10 01:06:18'),(53,'g5ktn4982itjbnicj2u0mm0kp6',39,1,'2019-11-10 01:06:51'),(54,'g5ktn4982itjbnicj2u0mm0kp6',40,1,'2019-11-10 01:10:36'),(55,'g5ktn4982itjbnicj2u0mm0kp6',41,1,'2019-11-10 01:12:16'),(56,'g5ktn4982itjbnicj2u0mm0kp6',42,1,'2019-11-10 01:13:48'),(57,'ce1dbfavl5231vblmqo8c8lt4b',43,1,'2019-11-10 14:53:51'),(58,'pinfrq95mbulfj70m07fcaoqrh',44,1,'2019-11-11 15:03:38'),(59,'pinfrq95mbulfj70m07fcaoqrh',44,1,'2019-11-11 15:08:44'),(60,'pinfrq95mbulfj70m07fcaoqrh',44,0,'2019-11-11 15:47:29'),(61,'9hjfujo07jj0tvgqe9vrmj0j82',45,1,'2019-11-12 03:48:32'),(62,'l7aj1er76rre11vmpmi9hp5vsl',46,0,'2019-11-12 18:20:50'),(63,'l7aj1er76rre11vmpmi9hp5vsl',46,0,'2019-11-12 18:21:52'),(64,'4rajo2a76gs2lj1f6k9c8ucara',46,1,'2019-11-12 18:24:36'),(65,'4rajo2a76gs2lj1f6k9c8ucara',46,0,'2019-11-12 18:25:18'),(66,'apuur151gk71ulcbvmb0he7iqt',46,0,'2019-11-12 18:32:28'),(67,'un7nkfm3l6906h348f6s7vda3j',46,1,'2019-11-12 18:45:15'),(68,'un7nkfm3l6906h348f6s7vda3j',46,0,'2019-11-12 19:03:28'),(69,'puc6e8pae55et4kcd6pb4kgc6j',47,0,'2019-11-19 17:44:06'),(70,'a4de1ioumujtn0ckl6ij2eih9k',11,0,'2019-11-20 23:36:34'),(71,'bubmu6pgjitp76heoqan8hr1uu',47,0,'2019-11-21 20:22:34'),(72,'bs5k43e58ij30713h2af27lfu2',47,0,'2019-11-24 18:18:48'),(73,'bs5k43e58ij30713h2af27lfu2',48,1,'2019-11-24 18:58:24'),(74,'bs5k43e58ij30713h2af27lfu2',48,1,'2019-11-24 19:02:17'),(75,'bs5k43e58ij30713h2af27lfu2',49,1,'2019-11-24 20:12:14'),(76,'bs5k43e58ij30713h2af27lfu2',49,0,'2019-11-24 22:01:31'),(77,'qvu3pb49sep4p29of60vqilfso',49,0,'2019-11-25 13:43:27'),(78,'3husr58reo6ls17a59vimviasb',49,0,'2019-11-26 23:07:25'),(79,'1t0unc2d4pecb0m6glnpmuqq4v',49,0,'2019-11-27 13:20:42'),(80,'so584cg9cdufgbqot4tr92ti5m',49,0,'2019-11-27 21:38:09'),(81,'qcipachsq5ipj7at2sced5bcfq',49,0,'2019-11-28 12:29:33'),(82,'m47cg1i7jus29tb9jchn62gdmg',49,0,'2019-11-28 17:29:25'),(83,'2d6rglmj7e7p93f14b64u02raf',49,0,'2019-11-29 22:04:23'),(84,'mfkcu1f1loo994md066m6vlt1o',49,0,'2019-11-30 19:34:00'),(85,'ukg32qj5d4j8lkqd82fh34en0c',49,0,'2019-12-01 14:18:50'),(86,'3a49u2i6lqjek8gc78eg4rb53f',49,0,'2019-12-10 14:38:23'),(87,'tli3os1gmj5ife6h1oi7gbfhah',49,0,'2019-12-10 23:37:42'),(88,'kui260vvain293vjihapibbto7',49,0,'2019-12-11 01:51:59'),(89,'ccou5jtcj1jujm5egm2pno1gbu',49,1,'2019-12-11 02:21:10'),(90,'ccou5jtcj1jujm5egm2pno1gbu',49,0,'2019-12-11 02:44:03'),(91,'frib4krrlmogpt3dq48efujm2d',49,1,'2019-12-11 17:58:02'),(92,'frib4krrlmogpt3dq48efujm2d',49,1,'2019-12-11 18:08:25'),(93,'frib4krrlmogpt3dq48efujm2d',49,1,'2019-12-11 19:10:39'),(94,'frib4krrlmogpt3dq48efujm2d',49,1,'2019-12-11 19:12:38'),(95,'frib4krrlmogpt3dq48efujm2d',49,0,'2019-12-12 01:44:28'),(96,'aem3a7k61nm7nsj7n5d07juh6t',62,1,'2019-12-12 14:43:58'),(97,'r6rmekoegig5p9o0s6nuq6l15i',63,1,'2019-12-12 15:04:02'),(98,'uile1cd8d8fc68evpunhvi3p73',64,1,'2019-12-12 17:51:45'),(99,'uile1cd8d8fc68evpunhvi3p73',64,1,'2019-12-12 18:02:13'),(100,'uile1cd8d8fc68evpunhvi3p73',64,1,'2019-12-12 18:10:40'),(101,'uile1cd8d8fc68evpunhvi3p73',65,1,'2019-12-12 18:37:18'),(102,'uile1cd8d8fc68evpunhvi3p73',65,1,'2019-12-12 18:43:49'),(103,'uile1cd8d8fc68evpunhvi3p73',65,1,'2019-12-12 20:04:30'),(104,'qg398aa0iv3mve6o0o14kvsn46',66,1,'2019-12-15 14:47:50'),(105,'qg398aa0iv3mve6o0o14kvsn46',66,1,'2019-12-15 14:58:54'),(106,'qg398aa0iv3mve6o0o14kvsn46',66,1,'2019-12-15 20:47:11'),(107,'qg398aa0iv3mve6o0o14kvsn46',66,0,'2019-12-15 21:33:37'),(108,'qg398aa0iv3mve6o0o14kvsn46',67,1,'2019-12-15 21:35:14'),(109,'qg398aa0iv3mve6o0o14kvsn46',67,1,'2019-12-15 21:35:46'),(110,'qg398aa0iv3mve6o0o14kvsn46',67,0,'2019-12-15 21:36:31'),(111,'qg398aa0iv3mve6o0o14kvsn46',68,1,'2019-12-15 23:14:02'),(112,'b6uf54hk6ug5bd9s50fs8a85bv',69,1,'2019-12-16 12:50:53'),(113,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 12:53:21'),(114,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 12:53:45'),(115,'b6uf54hk6ug5bd9s50fs8a85bv',70,1,'2019-12-16 12:54:11'),(116,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:02:15'),(117,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:06:46'),(118,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:07:48'),(119,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:09:06'),(120,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:10:02'),(121,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:10:25'),(122,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:10:35'),(123,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:12:18'),(124,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:13:19'),(125,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:13:42'),(126,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:14:05'),(127,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:14:21'),(128,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:14:41'),(129,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:14:52'),(130,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:15:26'),(131,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:16:56'),(132,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:17:19'),(133,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:18:13'),(134,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:19:10'),(135,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:21:03'),(136,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 13:21:35'),(137,'b6uf54hk6ug5bd9s50fs8a85bv',70,1,'2019-12-16 13:28:40'),(138,'b6uf54hk6ug5bd9s50fs8a85bv',70,1,'2019-12-16 13:32:06'),(139,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 14:58:29'),(140,'b6uf54hk6ug5bd9s50fs8a85bv',70,0,'2019-12-16 14:59:14'),(141,'b6uf54hk6ug5bd9s50fs8a85bv',71,0,'2019-12-16 15:20:49'),(142,'b6uf54hk6ug5bd9s50fs8a85bv',71,0,'2019-12-16 15:21:59'),(143,'b6uf54hk6ug5bd9s50fs8a85bv',71,0,'2019-12-16 15:23:37'),(144,'b6uf54hk6ug5bd9s50fs8a85bv',71,0,'2019-12-16 15:24:15'),(145,'b6uf54hk6ug5bd9s50fs8a85bv',71,0,'2019-12-16 15:25:11'),(146,'b6uf54hk6ug5bd9s50fs8a85bv',72,1,'2019-12-16 15:26:42'),(147,'b6uf54hk6ug5bd9s50fs8a85bv',73,1,'2019-12-16 17:16:16'),(148,'b6uf54hk6ug5bd9s50fs8a85bv',73,0,'2019-12-16 17:20:04'),(149,'b6uf54hk6ug5bd9s50fs8a85bv',74,1,'2019-12-16 17:24:25'),(150,'b6uf54hk6ug5bd9s50fs8a85bv',74,1,'2019-12-16 17:26:41'),(151,'b6uf54hk6ug5bd9s50fs8a85bv',74,0,'2019-12-16 17:27:34'),(152,'b6uf54hk6ug5bd9s50fs8a85bv',75,0,'2019-12-16 17:30:06'),(153,'0vkohkavil8qdn9v2derkin3gv',77,1,'2020-02-12 02:54:25'),(154,'73nh6m0m6ahc45oa8pvmgjcau6',75,0,'2020-05-27 17:39:30'),(155,'uvaer7l0a4ktq8sr8hm6kp4bbc',75,0,'2020-05-27 18:38:50'),(156,'et18364td9dguavkgo46tc0eo7',79,0,'2020-08-04 19:09:48'),(157,'et18364td9dguavkgo46tc0eo7',79,0,'2020-08-04 19:10:18'),(158,'et18364td9dguavkgo46tc0eo7',79,0,'2020-08-04 19:15:21'),(159,'et18364td9dguavkgo46tc0eo7',79,1,'2020-08-04 19:15:31'),(160,'et18364td9dguavkgo46tc0eo7',80,1,'2020-08-04 23:07:08'),(161,'qg3k97sh706c6fhnoajibd6b93',81,1,'2020-08-05 23:24:48');
/*!40000 ALTER TABLE `tb_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cartsitems`
--

DROP TABLE IF EXISTS `tb_cartsitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cartsitems` (
  `idcartitem` int(11) NOT NULL AUTO_INCREMENT,
  `idcart` int(11) NOT NULL,
  `iditem` int(11) NOT NULL,
  `initem` tinyint(4) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcartitem`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cartsitems`
--

LOCK TABLES `tb_cartsitems` WRITE;
/*!40000 ALTER TABLE `tb_cartsitems` DISABLE KEYS */;
INSERT INTO `tb_cartsitems` VALUES (1,1,1,0,'2019-10-12 14:16:39'),(2,2,2,0,'2019-10-12 14:38:20'),(3,3,3,0,'2019-10-12 14:40:26'),(4,4,4,0,'2019-10-12 14:47:06'),(5,5,5,0,'2019-10-12 15:28:34'),(6,6,6,0,'2019-10-12 15:31:56'),(7,7,7,0,'2019-10-12 15:34:57'),(8,8,8,0,'2019-10-12 15:37:54'),(9,9,9,0,'2019-10-12 15:39:27'),(10,10,10,0,'2019-10-12 15:42:58'),(11,11,11,0,'2019-10-12 15:45:42'),(12,12,12,0,'2019-10-12 15:48:50'),(13,13,13,0,'2019-10-12 15:49:30'),(14,14,14,0,'2019-10-12 15:49:50'),(15,15,15,0,'2019-10-12 15:50:36'),(16,16,16,0,'2019-10-12 15:51:46'),(17,17,17,0,'2019-10-12 15:52:55'),(18,18,18,0,'2019-10-12 15:53:13'),(19,19,19,0,'2019-10-12 15:53:44'),(20,20,20,0,'2019-10-12 15:54:13'),(21,21,21,0,'2019-10-12 17:27:20'),(22,22,25,0,'2019-10-12 17:47:36'),(23,23,26,0,'2019-10-12 17:55:27'),(24,24,27,0,'2019-10-12 17:59:42'),(25,25,29,0,'2019-10-12 18:34:52'),(26,27,33,0,'2019-10-26 21:22:25'),(27,28,35,0,'2019-10-26 21:48:52'),(28,29,37,0,'2019-10-26 21:57:28'),(29,34,1,1,'2019-11-01 13:11:13'),(30,35,38,0,'2019-11-08 23:15:29'),(31,36,39,0,'2019-11-08 23:17:45'),(32,37,40,0,'2019-11-08 23:22:41'),(33,38,41,0,'2019-11-08 23:37:10'),(34,42,42,0,'2019-11-08 23:47:52'),(35,43,43,0,'2019-11-09 00:00:24'),(36,44,44,0,'2019-11-09 03:21:16'),(37,45,45,0,'2019-11-09 19:12:46'),(38,46,47,0,'2019-11-09 21:38:10'),(39,47,48,0,'2019-11-09 21:40:26'),(40,48,49,0,'2019-11-09 21:53:07'),(41,49,50,0,'2019-11-09 21:59:30'),(42,50,51,0,'2019-11-09 22:04:55'),(43,51,52,0,'2019-11-09 22:06:53'),(44,53,57,0,'2019-11-10 01:06:51'),(45,54,59,0,'2019-11-10 01:10:38'),(46,55,61,0,'2019-11-10 01:12:18'),(47,56,63,0,'2019-11-10 01:13:50'),(48,57,64,0,'2019-11-10 14:53:54'),(49,58,65,0,'2019-11-11 15:03:44'),(50,59,2,1,'2019-11-11 15:09:34'),(51,61,66,0,'2019-11-12 03:48:34'),(52,62,67,0,'2019-11-12 18:20:57'),(53,64,68,0,'2019-11-12 18:24:39'),(54,65,3,1,'2019-11-12 18:26:04'),(55,66,3,1,'2019-11-12 18:32:36'),(56,67,3,1,'2019-11-12 18:45:30'),(57,73,70,0,'2019-11-24 18:58:26'),(58,74,71,0,'2019-11-24 19:02:20'),(59,75,72,0,'2019-11-24 20:12:17'),(60,86,10,1,'2019-12-10 23:19:20'),(61,87,10,1,'2019-12-10 23:37:51'),(62,88,10,1,'2019-12-11 01:52:24'),(63,88,9,1,'2019-12-11 01:55:17'),(64,89,4,1,'2019-12-11 02:21:12'),(65,89,10,1,'2019-12-11 02:21:31'),(66,91,4,1,'2019-12-11 17:58:16'),(67,92,10,1,'2019-12-11 19:02:37'),(68,93,9,1,'2019-12-11 19:11:10'),(69,94,4,1,'2019-12-12 01:42:57'),(70,96,73,0,'2019-12-12 14:44:01'),(71,97,74,0,'2019-12-12 15:04:05'),(72,98,76,0,'2019-12-12 17:51:47'),(73,99,77,0,'2019-12-12 18:02:15'),(74,100,78,0,'2019-12-12 18:10:42'),(75,101,80,0,'2019-12-12 18:37:21'),(76,102,81,0,'2019-12-12 18:43:51'),(77,103,82,0,'2019-12-12 20:04:33'),(78,104,83,0,'2019-12-15 14:47:52'),(79,105,11,1,'2019-12-15 20:45:18'),(80,106,12,1,'2019-12-15 21:32:49'),(81,108,84,0,'2019-12-15 21:35:16'),(82,109,13,1,'2019-12-15 21:35:50'),(83,111,86,0,'2019-12-15 23:14:05'),(84,112,88,0,'2019-12-16 12:50:56'),(85,113,90,0,'2019-12-16 12:53:23'),(86,114,91,0,'2019-12-16 12:53:46'),(87,115,92,0,'2019-12-16 12:54:14'),(88,122,93,0,'2019-12-16 13:10:36'),(89,123,94,0,'2019-12-16 13:12:19'),(90,124,95,0,'2019-12-16 13:13:21'),(91,125,96,0,'2019-12-16 13:13:43'),(92,126,97,0,'2019-12-16 13:14:07'),(93,127,98,0,'2019-12-16 13:14:23'),(94,128,99,0,'2019-12-16 13:14:43'),(95,129,100,0,'2019-12-16 13:14:54'),(96,130,101,0,'2019-12-16 13:15:27'),(97,131,102,0,'2019-12-16 13:16:57'),(98,132,103,0,'2019-12-16 13:17:21'),(99,133,104,0,'2019-12-16 13:18:14'),(100,134,105,0,'2019-12-16 13:19:12'),(101,135,106,0,'2019-12-16 13:21:04'),(102,136,107,0,'2019-12-16 13:21:37'),(103,137,108,0,'2019-12-16 13:28:42'),(104,138,109,0,'2019-12-16 13:32:08'),(105,141,111,0,'2019-12-16 15:20:50'),(106,142,112,0,'2019-12-16 15:22:00'),(107,143,113,0,'2019-12-16 15:23:39'),(108,144,114,0,'2019-12-16 15:24:16'),(109,145,115,0,'2019-12-16 15:25:12'),(110,146,117,0,'2019-12-16 15:26:43'),(111,147,118,0,'2019-12-16 17:16:19'),(112,148,14,1,'2019-12-16 17:20:09'),(113,149,119,0,'2019-12-16 17:24:26'),(114,150,15,1,'2019-12-16 17:26:44'),(115,153,122,0,'2020-02-12 02:54:27'),(116,159,123,0,'2020-08-04 19:15:32'),(117,160,124,0,'2020-08-04 23:07:10'),(118,161,126,0,'2020-08-05 23:24:50');
/*!40000 ALTER TABLE `tb_cartsitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categories`
--

DROP TABLE IF EXISTS `tb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categories` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `descategory` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categories`
--

LOCK TABLES `tb_categories` WRITE;
/*!40000 ALTER TABLE `tb_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cities`
--

DROP TABLE IF EXISTS `tb_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cities` (
  `idcity` int(2) NOT NULL,
  `descity` varchar(64) DEFAULT NULL,
  `idstate` int(2) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cities`
--

LOCK TABLES `tb_cities` WRITE;
/*!40000 ALTER TABLE `tb_cities` DISABLE KEYS */;
INSERT INTO `tb_cities` VALUES (1,'Afonso Cl??udio',8,'2019-06-12 18:10:11'),(2,'??gua Doce do Norte',8,'2019-06-12 18:10:11'),(3,'??guia Branca',8,'2019-06-12 18:10:11'),(4,'Alegre',8,'2019-06-12 18:10:11'),(5,'Alfredo Chaves',8,'2019-06-12 18:10:11'),(6,'Alto Rio Novo',8,'2019-06-12 18:10:11'),(7,'Anchieta',8,'2019-06-12 18:10:11'),(8,'Apiac??',8,'2019-06-12 18:10:11'),(9,'Aracruz',8,'2019-06-12 18:10:11'),(10,'Atilio Vivacqua',8,'2019-06-12 18:10:11'),(11,'Baixo Guandu',8,'2019-06-12 18:10:11'),(12,'Barra de S??o Francisco',8,'2019-06-12 18:10:11'),(13,'Boa Esperan??a',8,'2019-06-12 18:10:11'),(14,'Bom Jesus do Norte',8,'2019-06-12 18:10:11'),(15,'Brejetuba',8,'2019-06-12 18:10:11'),(16,'Cachoeiro de Itapemirim',8,'2019-06-12 18:10:11'),(17,'Cariacica',8,'2019-06-12 18:10:11'),(18,'Castelo',8,'2019-06-12 18:10:11'),(19,'Colatina',8,'2019-06-12 18:10:11'),(20,'Concei????o da Barra',8,'2019-06-12 18:10:11'),(21,'Concei????o do Castelo',8,'2019-06-12 18:10:11'),(22,'Divino de S??o Louren??o',8,'2019-06-12 18:10:11'),(23,'Domingos Martins',8,'2019-06-12 18:10:11'),(24,'Dores do Rio Preto',8,'2019-06-12 18:10:11'),(25,'Ecoporanga',8,'2019-06-12 18:10:11'),(26,'Fund??o',8,'2019-06-12 18:10:11'),(27,'Governador Lindenberg',8,'2019-06-12 18:10:11'),(28,'Gua??u??',8,'2019-06-12 18:10:11'),(29,'Guarapari',8,'2019-06-12 18:10:11'),(30,'Ibatiba',8,'2019-06-12 18:10:11'),(31,'Ibira??u',8,'2019-06-12 18:10:11'),(32,'Ibitirama',8,'2019-06-12 18:10:11'),(33,'Iconha',8,'2019-06-12 18:10:11'),(34,'Irupi',8,'2019-06-12 18:10:11'),(35,'Itagua??u',8,'2019-06-12 18:10:11'),(36,'Itapemirim',8,'2019-06-12 18:10:11'),(37,'Itarana',8,'2019-06-12 18:10:11'),(38,'I??na',8,'2019-06-12 18:10:11'),(39,'Jaguar??',8,'2019-06-12 18:10:11'),(40,'Jer??nimo Monteiro',8,'2019-06-12 18:10:11'),(41,'Jo??o Neiva',8,'2019-06-12 18:10:11'),(42,'Laranja da Terra',8,'2019-06-12 18:10:11'),(43,'Linhares',8,'2019-06-12 18:10:11'),(44,'Manten??polis',8,'2019-06-12 18:10:11'),(45,'Marata??zes',8,'2019-06-12 18:10:11'),(46,'Marechal Floriano',8,'2019-06-12 18:10:11'),(47,'Maril??ndia',8,'2019-06-12 18:10:11'),(48,'Mimoso do Sul',8,'2019-06-12 18:10:11'),(49,'Montanha',8,'2019-06-12 18:10:11'),(50,'Mucurici',8,'2019-06-12 18:10:11'),(51,'Muniz Freire',8,'2019-06-12 18:10:11'),(52,'Muqui',8,'2019-06-12 18:10:11'),(53,'Nova Ven??cia',8,'2019-06-12 18:10:11'),(54,'Pancas',8,'2019-06-12 18:10:11'),(55,'Pedro Can??rio',8,'2019-06-12 18:10:11'),(56,'Pinheiros',8,'2019-06-12 18:10:11'),(57,'Pi??ma',8,'2019-06-12 18:10:11'),(58,'Ponto Belo',8,'2019-06-12 18:10:11'),(59,'Presidente Kennedy',8,'2019-06-12 18:10:11'),(60,'Rio Bananal',8,'2019-06-12 18:10:11'),(61,'Rio Novo do Sul',8,'2019-06-12 18:10:11'),(62,'Santa Leopoldina',8,'2019-06-12 18:10:11'),(63,'Santa Maria de Jetib??',8,'2019-06-12 18:10:11'),(64,'Santa Teresa',8,'2019-06-12 18:10:11'),(65,'S??o Domingos do Norte',8,'2019-06-12 18:10:11'),(66,'S??o Gabriel da Palha',8,'2019-06-12 18:10:11'),(67,'S??o Jos?? do Cal??ado',8,'2019-06-12 18:10:11'),(68,'S??o Mateus',8,'2019-06-12 18:10:11'),(69,'S??o Roque do Cana??',8,'2019-06-12 18:10:11'),(70,'Serra',8,'2019-06-12 18:10:11'),(71,'Sooretama',8,'2019-06-12 18:10:11'),(72,'Vargem Alta',8,'2019-06-12 18:10:11'),(73,'Venda Nova do Imigrante',8,'2019-06-12 18:10:11'),(74,'Viana',8,'2019-06-12 18:10:11'),(75,'Vila Pav??o',8,'2019-06-12 18:10:11'),(76,'Vila Val??rio',8,'2019-06-12 18:10:11'),(77,'Vila Velha',8,'2019-06-12 18:10:11'),(78,'Vit??ria',8,'2019-06-12 18:10:11'),(79,'Acrel??ndia',1,'2019-06-12 18:10:11'),(80,'Assis Brasil',1,'2019-06-12 18:10:11'),(81,'Brasil??ia',1,'2019-06-12 18:10:11'),(82,'Bujari',1,'2019-06-12 18:10:11'),(83,'Capixaba',1,'2019-06-12 18:10:11'),(84,'Cruzeiro do Sul',1,'2019-06-12 18:10:11'),(85,'Epitaciol??ndia',1,'2019-06-12 18:10:11'),(86,'Feij??',1,'2019-06-12 18:10:11'),(87,'Jord??o',1,'2019-06-12 18:10:11'),(88,'M??ncio Lima',1,'2019-06-12 18:10:11'),(89,'Manoel Urbano',1,'2019-06-12 18:10:11'),(90,'Marechal Thaumaturgo',1,'2019-06-12 18:10:11'),(91,'Pl??cido de Castro',1,'2019-06-12 18:10:11'),(92,'Porto Acre',1,'2019-06-12 18:10:11'),(93,'Porto Walter',1,'2019-06-12 18:10:11'),(94,'Rio Branco',1,'2019-06-12 18:10:11'),(95,'Rodrigues Alves',1,'2019-06-12 18:10:11'),(96,'Santa Rosa do Purus',1,'2019-06-12 18:10:11'),(97,'Sena Madureira',1,'2019-06-12 18:10:11'),(98,'Senador Guiomard',1,'2019-06-12 18:10:11'),(99,'Tarauac??',1,'2019-06-12 18:10:11'),(100,'Xapuri',1,'2019-06-12 18:10:11'),(101,'??gua Branca',2,'2019-06-12 18:10:11'),(102,'Anadia',2,'2019-06-12 18:10:11'),(103,'Arapiraca',2,'2019-06-12 18:10:11'),(104,'Atalaia',2,'2019-06-12 18:10:11'),(105,'Barra de Santo Ant??nio',2,'2019-06-12 18:10:11'),(106,'Barra de S??o Miguel',2,'2019-06-12 18:10:11'),(107,'Batalha',2,'2019-06-12 18:10:11'),(108,'Bel??m',2,'2019-06-12 18:10:11'),(109,'Belo Monte',2,'2019-06-12 18:10:11'),(110,'Boca da Mata',2,'2019-06-12 18:10:11'),(111,'Branquinha',2,'2019-06-12 18:10:11'),(112,'Cacimbinhas',2,'2019-06-12 18:10:11'),(113,'Cajueiro',2,'2019-06-12 18:10:11'),(114,'Campestre',2,'2019-06-12 18:10:11'),(115,'Campo Alegre',2,'2019-06-12 18:10:11'),(116,'Campo Grande',2,'2019-06-12 18:10:11'),(117,'Canapi',2,'2019-06-12 18:10:11'),(118,'Capela',2,'2019-06-12 18:10:11'),(119,'Carneiros',2,'2019-06-12 18:10:11'),(120,'Ch?? Preta',2,'2019-06-12 18:10:11'),(121,'Coit?? do N??ia',2,'2019-06-12 18:10:11'),(122,'Col??nia Leopoldina',2,'2019-06-12 18:10:11'),(123,'Coqueiro Seco',2,'2019-06-12 18:10:11'),(124,'Coruripe',2,'2019-06-12 18:10:11'),(125,'Cra??bas',2,'2019-06-12 18:10:11'),(126,'Delmiro Gouveia',2,'2019-06-12 18:10:11'),(127,'Dois Riachos',2,'2019-06-12 18:10:11'),(128,'Estrela de Alagoas',2,'2019-06-12 18:10:11'),(129,'Feira Grande',2,'2019-06-12 18:10:11'),(130,'Feliz Deserto',2,'2019-06-12 18:10:11'),(131,'Flexeiras',2,'2019-06-12 18:10:11'),(132,'Girau do Ponciano',2,'2019-06-12 18:10:11'),(133,'Ibateguara',2,'2019-06-12 18:10:11'),(134,'Igaci',2,'2019-06-12 18:10:11'),(135,'Igreja Nova',2,'2019-06-12 18:10:11'),(136,'Inhapi',2,'2019-06-12 18:10:11'),(137,'Jacar?? dos Homens',2,'2019-06-12 18:10:11'),(138,'Jacu??pe',2,'2019-06-12 18:10:11'),(139,'Japaratinga',2,'2019-06-12 18:10:11'),(140,'Jaramataia',2,'2019-06-12 18:10:11'),(141,'Jequi?? da Praia',2,'2019-06-12 18:10:11'),(142,'Joaquim Gomes',2,'2019-06-12 18:10:11'),(143,'Jundi??',2,'2019-06-12 18:10:11'),(144,'Junqueiro',2,'2019-06-12 18:10:11'),(145,'Lagoa da Canoa',2,'2019-06-12 18:10:11'),(146,'Limoeiro de Anadia',2,'2019-06-12 18:10:11'),(147,'Macei??',2,'2019-06-12 18:10:11'),(148,'Major Isidoro',2,'2019-06-12 18:10:11'),(149,'Mar Vermelho',2,'2019-06-12 18:10:11'),(150,'Maragogi',2,'2019-06-12 18:10:11'),(151,'Maravilha',2,'2019-06-12 18:10:11'),(152,'Marechal Deodoro',2,'2019-06-12 18:10:11'),(153,'Maribondo',2,'2019-06-12 18:10:11'),(154,'Mata Grande',2,'2019-06-12 18:10:11'),(155,'Matriz de Camaragibe',2,'2019-06-12 18:10:11'),(156,'Messias',2,'2019-06-12 18:10:11'),(157,'Minador do Negr??o',2,'2019-06-12 18:10:11'),(158,'Monteir??polis',2,'2019-06-12 18:10:11'),(159,'Murici',2,'2019-06-12 18:10:11'),(160,'Novo Lino',2,'2019-06-12 18:10:11'),(161,'Olho d`??gua das Flores',2,'2019-06-12 18:10:11'),(162,'Olho d`??gua do Casado',2,'2019-06-12 18:10:11'),(163,'Olho d`??gua Grande',2,'2019-06-12 18:10:11'),(164,'Oliven??a',2,'2019-06-12 18:10:11'),(165,'Ouro Branco',2,'2019-06-12 18:10:11'),(166,'Palestina',2,'2019-06-12 18:10:11'),(167,'Palmeira dos ??ndios',2,'2019-06-12 18:10:11'),(168,'P??o de A????car',2,'2019-06-12 18:10:11'),(169,'Pariconha',2,'2019-06-12 18:10:11'),(170,'Paripueira',2,'2019-06-12 18:10:11'),(171,'Passo de Camaragibe',2,'2019-06-12 18:10:11'),(172,'Paulo Jacinto',2,'2019-06-12 18:10:11'),(173,'Penedo',2,'2019-06-12 18:10:11'),(174,'Pia??abu??u',2,'2019-06-12 18:10:11'),(175,'Pilar',2,'2019-06-12 18:10:11'),(176,'Pindoba',2,'2019-06-12 18:10:11'),(177,'Piranhas',2,'2019-06-12 18:10:11'),(178,'Po??o das Trincheiras',2,'2019-06-12 18:10:11'),(179,'Porto Calvo',2,'2019-06-12 18:10:11'),(180,'Porto de Pedras',2,'2019-06-12 18:10:11'),(181,'Porto Real do Col??gio',2,'2019-06-12 18:10:11'),(182,'Quebrangulo',2,'2019-06-12 18:10:11'),(183,'Rio Largo',2,'2019-06-12 18:10:11'),(184,'Roteiro',2,'2019-06-12 18:10:11'),(185,'Santa Luzia do Norte',2,'2019-06-12 18:10:11'),(186,'Santana do Ipanema',2,'2019-06-12 18:10:11'),(187,'Santana do Munda??',2,'2019-06-12 18:10:11'),(188,'S??o Br??s',2,'2019-06-12 18:10:11'),(189,'S??o Jos?? da Laje',2,'2019-06-12 18:10:11'),(190,'S??o Jos?? da Tapera',2,'2019-06-12 18:10:11'),(191,'S??o Lu??s do Quitunde',2,'2019-06-12 18:10:11'),(192,'S??o Miguel dos Campos',2,'2019-06-12 18:10:11'),(193,'S??o Miguel dos Milagres',2,'2019-06-12 18:10:11'),(194,'S??o Sebasti??o',2,'2019-06-12 18:10:11'),(195,'Satuba',2,'2019-06-12 18:10:11'),(196,'Senador Rui Palmeira',2,'2019-06-12 18:10:11'),(197,'Tanque d`Arca',2,'2019-06-12 18:10:11'),(198,'Taquarana',2,'2019-06-12 18:10:11'),(199,'Teot??nio Vilela',2,'2019-06-12 18:10:11'),(200,'Traipu',2,'2019-06-12 18:10:11'),(201,'Uni??o dos Palmares',2,'2019-06-12 18:10:11'),(202,'Vi??osa',2,'2019-06-12 18:10:11'),(203,'Amap??',4,'2019-06-12 18:10:11'),(204,'Cal??oene',4,'2019-06-12 18:10:11'),(205,'Cutias',4,'2019-06-12 18:10:11'),(206,'Ferreira Gomes',4,'2019-06-12 18:10:11'),(207,'Itaubal',4,'2019-06-12 18:10:11'),(208,'Laranjal do Jari',4,'2019-06-12 18:10:11'),(209,'Macap??',4,'2019-06-12 18:10:11'),(210,'Mazag??o',4,'2019-06-12 18:10:11'),(211,'Oiapoque',4,'2019-06-12 18:10:11'),(212,'Pedra Branca do Amapar??',4,'2019-06-12 18:10:11'),(213,'Porto Grande',4,'2019-06-12 18:10:11'),(214,'Pracu??ba',4,'2019-06-12 18:10:11'),(215,'Santana',4,'2019-06-12 18:10:11'),(216,'Serra do Navio',4,'2019-06-12 18:10:11'),(217,'Tartarugalzinho',4,'2019-06-12 18:10:11'),(218,'Vit??ria do Jari',4,'2019-06-12 18:10:11'),(219,'Alvar??es',3,'2019-06-12 18:10:11'),(220,'Amatur??',3,'2019-06-12 18:10:11'),(221,'Anam??',3,'2019-06-12 18:10:11'),(222,'Anori',3,'2019-06-12 18:10:11'),(223,'Apu??',3,'2019-06-12 18:10:11'),(224,'Atalaia do Norte',3,'2019-06-12 18:10:11'),(225,'Autazes',3,'2019-06-12 18:10:11'),(226,'Barcelos',3,'2019-06-12 18:10:11'),(227,'Barreirinha',3,'2019-06-12 18:10:11'),(228,'Benjamin Constant',3,'2019-06-12 18:10:11'),(229,'Beruri',3,'2019-06-12 18:10:11'),(230,'Boa Vista do Ramos',3,'2019-06-12 18:10:11'),(231,'Boca do Acre',3,'2019-06-12 18:10:11'),(232,'Borba',3,'2019-06-12 18:10:11'),(233,'Caapiranga',3,'2019-06-12 18:10:11'),(234,'Canutama',3,'2019-06-12 18:10:11'),(235,'Carauari',3,'2019-06-12 18:10:11'),(236,'Careiro',3,'2019-06-12 18:10:11'),(237,'Careiro da V??rzea',3,'2019-06-12 18:10:11'),(238,'Coari',3,'2019-06-12 18:10:11'),(239,'Codaj??s',3,'2019-06-12 18:10:11'),(240,'Eirunep??',3,'2019-06-12 18:10:11'),(241,'Envira',3,'2019-06-12 18:10:11'),(242,'Fonte Boa',3,'2019-06-12 18:10:11'),(243,'Guajar??',3,'2019-06-12 18:10:11'),(244,'Humait??',3,'2019-06-12 18:10:11'),(245,'Ipixuna',3,'2019-06-12 18:10:11'),(246,'Iranduba',3,'2019-06-12 18:10:11'),(247,'Itacoatiara',3,'2019-06-12 18:10:11'),(248,'Itamarati',3,'2019-06-12 18:10:11'),(249,'Itapiranga',3,'2019-06-12 18:10:11'),(250,'Japur??',3,'2019-06-12 18:10:11'),(251,'Juru??',3,'2019-06-12 18:10:11'),(252,'Juta??',3,'2019-06-12 18:10:11'),(253,'L??brea',3,'2019-06-12 18:10:11'),(254,'Manacapuru',3,'2019-06-12 18:10:11'),(255,'Manaquiri',3,'2019-06-12 18:10:11'),(256,'Manaus',3,'2019-06-12 18:10:11'),(257,'Manicor??',3,'2019-06-12 18:10:11'),(258,'Mara??',3,'2019-06-12 18:10:11'),(259,'Mau??s',3,'2019-06-12 18:10:11'),(260,'Nhamund??',3,'2019-06-12 18:10:11'),(261,'Nova Olinda do Norte',3,'2019-06-12 18:10:11'),(262,'Novo Air??o',3,'2019-06-12 18:10:11'),(263,'Novo Aripuan??',3,'2019-06-12 18:10:11'),(264,'Parintins',3,'2019-06-12 18:10:11'),(265,'Pauini',3,'2019-06-12 18:10:11'),(266,'Presidente Figueiredo',3,'2019-06-12 18:10:11'),(267,'Rio Preto da Eva',3,'2019-06-12 18:10:11'),(268,'Santa Isabel do Rio Negro',3,'2019-06-12 18:10:11'),(269,'Santo Ant??nio do I????',3,'2019-06-12 18:10:11'),(270,'S??o Gabriel da Cachoeira',3,'2019-06-12 18:10:11'),(271,'S??o Paulo de Oliven??a',3,'2019-06-12 18:10:11'),(272,'S??o Sebasti??o do Uatum??',3,'2019-06-12 18:10:11'),(273,'Silves',3,'2019-06-12 18:10:11'),(274,'Tabatinga',3,'2019-06-12 18:10:11'),(275,'Tapau??',3,'2019-06-12 18:10:11'),(276,'Tef??',3,'2019-06-12 18:10:11'),(277,'Tonantins',3,'2019-06-12 18:10:11'),(278,'Uarini',3,'2019-06-12 18:10:11'),(279,'Urucar??',3,'2019-06-12 18:10:11'),(280,'Urucurituba',3,'2019-06-12 18:10:11'),(281,'Aba??ra',5,'2019-06-12 18:10:11'),(282,'Abar??',5,'2019-06-12 18:10:11'),(283,'Acajutiba',5,'2019-06-12 18:10:11'),(284,'Adustina',5,'2019-06-12 18:10:11'),(285,'??gua Fria',5,'2019-06-12 18:10:11'),(286,'Aiquara',5,'2019-06-12 18:10:11'),(287,'Alagoinhas',5,'2019-06-12 18:10:11'),(288,'Alcoba??a',5,'2019-06-12 18:10:11'),(289,'Almadina',5,'2019-06-12 18:10:11'),(290,'Amargosa',5,'2019-06-12 18:10:11'),(291,'Am??lia Rodrigues',5,'2019-06-12 18:10:11'),(292,'Am??rica Dourada',5,'2019-06-12 18:10:11'),(293,'Anag??',5,'2019-06-12 18:10:11'),(294,'Andara??',5,'2019-06-12 18:10:11'),(295,'Andorinha',5,'2019-06-12 18:10:11'),(296,'Angical',5,'2019-06-12 18:10:11'),(297,'Anguera',5,'2019-06-12 18:10:11'),(298,'Antas',5,'2019-06-12 18:10:11'),(299,'Ant??nio Cardoso',5,'2019-06-12 18:10:11'),(300,'Ant??nio Gon??alves',5,'2019-06-12 18:10:11'),(301,'Apor??',5,'2019-06-12 18:10:11'),(302,'Apuarema',5,'2019-06-12 18:10:11'),(303,'Ara??as',5,'2019-06-12 18:10:11'),(304,'Aracatu',5,'2019-06-12 18:10:11'),(305,'Araci',5,'2019-06-12 18:10:11'),(306,'Aramari',5,'2019-06-12 18:10:11'),(307,'Arataca',5,'2019-06-12 18:10:11'),(308,'Aratu??pe',5,'2019-06-12 18:10:11'),(309,'Aurelino Leal',5,'2019-06-12 18:10:11'),(310,'Baian??polis',5,'2019-06-12 18:10:11'),(311,'Baixa Grande',5,'2019-06-12 18:10:11'),(312,'Banza??',5,'2019-06-12 18:10:11'),(313,'Barra',5,'2019-06-12 18:10:11'),(314,'Barra da Estiva',5,'2019-06-12 18:10:11'),(315,'Barra do Cho??a',5,'2019-06-12 18:10:11'),(316,'Barra do Mendes',5,'2019-06-12 18:10:11'),(317,'Barra do Rocha',5,'2019-06-12 18:10:11'),(318,'Barreiras',5,'2019-06-12 18:10:11'),(319,'Barro Alto',5,'2019-06-12 18:10:11'),(320,'Barro Preto',5,'2019-06-12 18:10:11'),(321,'Barrocas',5,'2019-06-12 18:10:11'),(322,'Belmonte',5,'2019-06-12 18:10:11'),(323,'Belo Campo',5,'2019-06-12 18:10:11'),(324,'Biritinga',5,'2019-06-12 18:10:11'),(325,'Boa Nova',5,'2019-06-12 18:10:11'),(326,'Boa Vista do Tupim',5,'2019-06-12 18:10:11'),(327,'Bom Jesus da Lapa',5,'2019-06-12 18:10:11'),(328,'Bom Jesus da Serra',5,'2019-06-12 18:10:11'),(329,'Boninal',5,'2019-06-12 18:10:11'),(330,'Bonito',5,'2019-06-12 18:10:11'),(331,'Boquira',5,'2019-06-12 18:10:11'),(332,'Botupor??',5,'2019-06-12 18:10:11'),(333,'Brej??es',5,'2019-06-12 18:10:11'),(334,'Brejol??ndia',5,'2019-06-12 18:10:11'),(335,'Brotas de Maca??bas',5,'2019-06-12 18:10:11'),(336,'Brumado',5,'2019-06-12 18:10:11'),(337,'Buerarema',5,'2019-06-12 18:10:11'),(338,'Buritirama',5,'2019-06-12 18:10:11'),(339,'Caatiba',5,'2019-06-12 18:10:11'),(340,'Cabaceiras do Paragua??u',5,'2019-06-12 18:10:11'),(341,'Cachoeira',5,'2019-06-12 18:10:11'),(342,'Cacul??',5,'2019-06-12 18:10:11'),(343,'Ca??m',5,'2019-06-12 18:10:11'),(344,'Caetanos',5,'2019-06-12 18:10:11'),(345,'Caetit??',5,'2019-06-12 18:10:11'),(346,'Cafarnaum',5,'2019-06-12 18:10:11'),(347,'Cairu',5,'2019-06-12 18:10:11'),(348,'Caldeir??o Grande',5,'2019-06-12 18:10:11'),(349,'Camacan',5,'2019-06-12 18:10:11'),(350,'Cama??ari',5,'2019-06-12 18:10:11'),(351,'Camamu',5,'2019-06-12 18:10:11'),(352,'Campo Alegre de Lourdes',5,'2019-06-12 18:10:11'),(353,'Campo Formoso',5,'2019-06-12 18:10:11'),(354,'Can??polis',5,'2019-06-12 18:10:11'),(355,'Canarana',5,'2019-06-12 18:10:11'),(356,'Canavieiras',5,'2019-06-12 18:10:11'),(357,'Candeal',5,'2019-06-12 18:10:11'),(358,'Candeias',5,'2019-06-12 18:10:11'),(359,'Candiba',5,'2019-06-12 18:10:11'),(360,'C??ndido Sales',5,'2019-06-12 18:10:11'),(361,'Cansan????o',5,'2019-06-12 18:10:11'),(362,'Canudos',5,'2019-06-12 18:10:11'),(363,'Capela do Alto Alegre',5,'2019-06-12 18:10:11'),(364,'Capim Grosso',5,'2019-06-12 18:10:11'),(365,'Cara??bas',5,'2019-06-12 18:10:11'),(366,'Caravelas',5,'2019-06-12 18:10:11'),(367,'Cardeal da Silva',5,'2019-06-12 18:10:11'),(368,'Carinhanha',5,'2019-06-12 18:10:11'),(369,'Casa Nova',5,'2019-06-12 18:10:11'),(370,'Castro Alves',5,'2019-06-12 18:10:11'),(371,'Catol??ndia',5,'2019-06-12 18:10:11'),(372,'Catu',5,'2019-06-12 18:10:11'),(373,'Caturama',5,'2019-06-12 18:10:11'),(374,'Central',5,'2019-06-12 18:10:11'),(375,'Chorroch??',5,'2019-06-12 18:10:11'),(376,'C??cero Dantas',5,'2019-06-12 18:10:11'),(377,'Cip??',5,'2019-06-12 18:10:11'),(378,'Coaraci',5,'2019-06-12 18:10:11'),(379,'Cocos',5,'2019-06-12 18:10:11'),(380,'Concei????o da Feira',5,'2019-06-12 18:10:11'),(381,'Concei????o do Almeida',5,'2019-06-12 18:10:11'),(382,'Concei????o do Coit??',5,'2019-06-12 18:10:11'),(383,'Concei????o do Jacu??pe',5,'2019-06-12 18:10:11'),(384,'Conde',5,'2019-06-12 18:10:11'),(385,'Conde??ba',5,'2019-06-12 18:10:11'),(386,'Contendas do Sincor??',5,'2019-06-12 18:10:11'),(387,'Cora????o de Maria',5,'2019-06-12 18:10:11'),(388,'Cordeiros',5,'2019-06-12 18:10:11'),(389,'Coribe',5,'2019-06-12 18:10:11'),(390,'Coronel Jo??o S??',5,'2019-06-12 18:10:11'),(391,'Correntina',5,'2019-06-12 18:10:11'),(392,'Cotegipe',5,'2019-06-12 18:10:11'),(393,'Cravol??ndia',5,'2019-06-12 18:10:11'),(394,'Cris??polis',5,'2019-06-12 18:10:11'),(395,'Crist??polis',5,'2019-06-12 18:10:11'),(396,'Cruz das Almas',5,'2019-06-12 18:10:11'),(397,'Cura????',5,'2019-06-12 18:10:11'),(398,'D??rio Meira',5,'2019-06-12 18:10:11'),(399,'Dias d`??vila',5,'2019-06-12 18:10:11'),(400,'Dom Bas??lio',5,'2019-06-12 18:10:11'),(401,'Dom Macedo Costa',5,'2019-06-12 18:10:11'),(402,'El??sio Medrado',5,'2019-06-12 18:10:11'),(403,'Encruzilhada',5,'2019-06-12 18:10:11'),(404,'Entre Rios',5,'2019-06-12 18:10:11'),(405,'??rico Cardoso',5,'2019-06-12 18:10:11'),(406,'Esplanada',5,'2019-06-12 18:10:11'),(407,'Euclides da Cunha',5,'2019-06-12 18:10:11'),(408,'Eun??polis',5,'2019-06-12 18:10:11'),(409,'F??tima',5,'2019-06-12 18:10:11'),(410,'Feira da Mata',5,'2019-06-12 18:10:11'),(411,'Feira de Santana',5,'2019-06-12 18:10:11'),(412,'Filad??lfia',5,'2019-06-12 18:10:11'),(413,'Firmino Alves',5,'2019-06-12 18:10:11'),(414,'Floresta Azul',5,'2019-06-12 18:10:11'),(415,'Formosa do Rio Preto',5,'2019-06-12 18:10:11'),(416,'Gandu',5,'2019-06-12 18:10:11'),(417,'Gavi??o',5,'2019-06-12 18:10:11'),(418,'Gentio do Ouro',5,'2019-06-12 18:10:11'),(419,'Gl??ria',5,'2019-06-12 18:10:11'),(420,'Gongogi',5,'2019-06-12 18:10:11'),(421,'Governador Mangabeira',5,'2019-06-12 18:10:11'),(422,'Guajeru',5,'2019-06-12 18:10:11'),(423,'Guanambi',5,'2019-06-12 18:10:11'),(424,'Guaratinga',5,'2019-06-12 18:10:11'),(425,'Heli??polis',5,'2019-06-12 18:10:11'),(426,'Ia??u',5,'2019-06-12 18:10:11'),(427,'Ibiassuc??',5,'2019-06-12 18:10:11'),(428,'Ibicara??',5,'2019-06-12 18:10:11'),(429,'Ibicoara',5,'2019-06-12 18:10:11'),(430,'Ibicu??',5,'2019-06-12 18:10:11'),(431,'Ibipeba',5,'2019-06-12 18:10:11'),(432,'Ibipitanga',5,'2019-06-12 18:10:11'),(433,'Ibiquera',5,'2019-06-12 18:10:11'),(434,'Ibirapitanga',5,'2019-06-12 18:10:11'),(435,'Ibirapu??',5,'2019-06-12 18:10:11'),(436,'Ibirataia',5,'2019-06-12 18:10:11'),(437,'Ibitiara',5,'2019-06-12 18:10:11'),(438,'Ibitit??',5,'2019-06-12 18:10:11'),(439,'Ibotirama',5,'2019-06-12 18:10:11'),(440,'Ichu',5,'2019-06-12 18:10:11'),(441,'Igapor??',5,'2019-06-12 18:10:11'),(442,'Igrapi??na',5,'2019-06-12 18:10:11'),(443,'Igua??',5,'2019-06-12 18:10:11'),(444,'Ilh??us',5,'2019-06-12 18:10:11'),(445,'Inhambupe',5,'2019-06-12 18:10:11'),(446,'Ipecaet??',5,'2019-06-12 18:10:11'),(447,'Ipia??',5,'2019-06-12 18:10:11'),(448,'Ipir??',5,'2019-06-12 18:10:11'),(449,'Ipupiara',5,'2019-06-12 18:10:11'),(450,'Irajuba',5,'2019-06-12 18:10:11'),(451,'Iramaia',5,'2019-06-12 18:10:11'),(452,'Iraquara',5,'2019-06-12 18:10:11'),(453,'Irar??',5,'2019-06-12 18:10:11'),(454,'Irec??',5,'2019-06-12 18:10:11'),(455,'Itabela',5,'2019-06-12 18:10:11'),(456,'Itaberaba',5,'2019-06-12 18:10:11'),(457,'Itabuna',5,'2019-06-12 18:10:11'),(458,'Itacar??',5,'2019-06-12 18:10:11'),(459,'Itaet??',5,'2019-06-12 18:10:11'),(460,'Itagi',5,'2019-06-12 18:10:11'),(461,'Itagib??',5,'2019-06-12 18:10:11'),(462,'Itagimirim',5,'2019-06-12 18:10:11'),(463,'Itagua??u da Bahia',5,'2019-06-12 18:10:11'),(464,'Itaju do Col??nia',5,'2019-06-12 18:10:11'),(465,'Itaju??pe',5,'2019-06-12 18:10:11'),(466,'Itamaraju',5,'2019-06-12 18:10:11'),(467,'Itamari',5,'2019-06-12 18:10:11'),(468,'Itamb??',5,'2019-06-12 18:10:11'),(469,'Itanagra',5,'2019-06-12 18:10:11'),(470,'Itanh??m',5,'2019-06-12 18:10:11'),(471,'Itaparica',5,'2019-06-12 18:10:11'),(472,'Itap??',5,'2019-06-12 18:10:11'),(473,'Itapebi',5,'2019-06-12 18:10:11'),(474,'Itapetinga',5,'2019-06-12 18:10:11'),(475,'Itapicuru',5,'2019-06-12 18:10:11'),(476,'Itapitanga',5,'2019-06-12 18:10:11'),(477,'Itaquara',5,'2019-06-12 18:10:11'),(478,'Itarantim',5,'2019-06-12 18:10:11'),(479,'Itatim',5,'2019-06-12 18:10:11'),(480,'Itiru??u',5,'2019-06-12 18:10:11'),(481,'Iti??ba',5,'2019-06-12 18:10:11'),(482,'Itoror??',5,'2019-06-12 18:10:11'),(483,'Itua??u',5,'2019-06-12 18:10:11'),(484,'Ituber??',5,'2019-06-12 18:10:11'),(485,'Iui??',5,'2019-06-12 18:10:11'),(486,'Jaborandi',5,'2019-06-12 18:10:11'),(487,'Jacaraci',5,'2019-06-12 18:10:11'),(488,'Jacobina',5,'2019-06-12 18:10:11'),(489,'Jaguaquara',5,'2019-06-12 18:10:11'),(490,'Jaguarari',5,'2019-06-12 18:10:11'),(491,'Jaguaripe',5,'2019-06-12 18:10:11'),(492,'Janda??ra',5,'2019-06-12 18:10:11'),(493,'Jequi??',5,'2019-06-12 18:10:11'),(494,'Jeremoabo',5,'2019-06-12 18:10:11'),(495,'Jiquiri????',5,'2019-06-12 18:10:11'),(496,'Jita??na',5,'2019-06-12 18:10:11'),(497,'Jo??o Dourado',5,'2019-06-12 18:10:11'),(498,'Juazeiro',5,'2019-06-12 18:10:11'),(499,'Jucuru??u',5,'2019-06-12 18:10:11'),(500,'Jussara',5,'2019-06-12 18:10:11'),(501,'Jussari',5,'2019-06-12 18:10:11'),(502,'Jussiape',5,'2019-06-12 18:10:11'),(503,'Lafaiete Coutinho',5,'2019-06-12 18:10:11'),(504,'Lagoa Real',5,'2019-06-12 18:10:11'),(505,'Laje',5,'2019-06-12 18:10:11'),(506,'Lajed??o',5,'2019-06-12 18:10:11'),(507,'Lajedinho',5,'2019-06-12 18:10:11'),(508,'Lajedo do Tabocal',5,'2019-06-12 18:10:11'),(509,'Lamar??o',5,'2019-06-12 18:10:11'),(510,'Lap??o',5,'2019-06-12 18:10:11'),(511,'Lauro de Freitas',5,'2019-06-12 18:10:11'),(512,'Len????is',5,'2019-06-12 18:10:11'),(513,'Lic??nio de Almeida',5,'2019-06-12 18:10:11'),(514,'Livramento de Nossa Senhora',5,'2019-06-12 18:10:11'),(515,'Lu??s Eduardo Magalh??es',5,'2019-06-12 18:10:11'),(516,'Macajuba',5,'2019-06-12 18:10:11'),(517,'Macarani',5,'2019-06-12 18:10:11'),(518,'Maca??bas',5,'2019-06-12 18:10:11'),(519,'Macurur??',5,'2019-06-12 18:10:11'),(520,'Madre de Deus',5,'2019-06-12 18:10:11'),(521,'Maetinga',5,'2019-06-12 18:10:11'),(522,'Maiquinique',5,'2019-06-12 18:10:11'),(523,'Mairi',5,'2019-06-12 18:10:11'),(524,'Malhada',5,'2019-06-12 18:10:11'),(525,'Malhada de Pedras',5,'2019-06-12 18:10:11'),(526,'Manoel Vitorino',5,'2019-06-12 18:10:11'),(527,'Mansid??o',5,'2019-06-12 18:10:11'),(528,'Marac??s',5,'2019-06-12 18:10:11'),(529,'Maragogipe',5,'2019-06-12 18:10:11'),(530,'Mara??',5,'2019-06-12 18:10:11'),(531,'Marcion??lio Souza',5,'2019-06-12 18:10:11'),(532,'Mascote',5,'2019-06-12 18:10:11'),(533,'Mata de S??o Jo??o',5,'2019-06-12 18:10:11'),(534,'Matina',5,'2019-06-12 18:10:11'),(535,'Medeiros Neto',5,'2019-06-12 18:10:11'),(536,'Miguel Calmon',5,'2019-06-12 18:10:11'),(537,'Milagres',5,'2019-06-12 18:10:11'),(538,'Mirangaba',5,'2019-06-12 18:10:11'),(539,'Mirante',5,'2019-06-12 18:10:11'),(540,'Monte Santo',5,'2019-06-12 18:10:11'),(541,'Morpar??',5,'2019-06-12 18:10:11'),(542,'Morro do Chap??u',5,'2019-06-12 18:10:11'),(543,'Mortugaba',5,'2019-06-12 18:10:11'),(544,'Mucug??',5,'2019-06-12 18:10:11'),(545,'Mucuri',5,'2019-06-12 18:10:11'),(546,'Mulungu do Morro',5,'2019-06-12 18:10:11'),(547,'Mundo Novo',5,'2019-06-12 18:10:11'),(548,'Muniz Ferreira',5,'2019-06-12 18:10:11'),(549,'Muqu??m de S??o Francisco',5,'2019-06-12 18:10:11'),(550,'Muritiba',5,'2019-06-12 18:10:11'),(551,'Mutu??pe',5,'2019-06-12 18:10:11'),(552,'Nazar??',5,'2019-06-12 18:10:11'),(553,'Nilo Pe??anha',5,'2019-06-12 18:10:11'),(554,'Nordestina',5,'2019-06-12 18:10:11'),(555,'Nova Cana??',5,'2019-06-12 18:10:11'),(556,'Nova F??tima',5,'2019-06-12 18:10:11'),(557,'Nova Ibi??',5,'2019-06-12 18:10:11'),(558,'Nova Itarana',5,'2019-06-12 18:10:11'),(559,'Nova Reden????o',5,'2019-06-12 18:10:11'),(560,'Nova Soure',5,'2019-06-12 18:10:11'),(561,'Nova Vi??osa',5,'2019-06-12 18:10:11'),(562,'Novo Horizonte',5,'2019-06-12 18:10:11'),(563,'Novo Triunfo',5,'2019-06-12 18:10:11'),(564,'Olindina',5,'2019-06-12 18:10:11'),(565,'Oliveira dos Brejinhos',5,'2019-06-12 18:10:11'),(566,'Ouri??angas',5,'2019-06-12 18:10:11'),(567,'Ourol??ndia',5,'2019-06-12 18:10:11'),(568,'Palmas de Monte Alto',5,'2019-06-12 18:10:11'),(569,'Palmeiras',5,'2019-06-12 18:10:11'),(570,'Paramirim',5,'2019-06-12 18:10:11'),(571,'Paratinga',5,'2019-06-12 18:10:11'),(572,'Paripiranga',5,'2019-06-12 18:10:11'),(573,'Pau Brasil',5,'2019-06-12 18:10:11'),(574,'Paulo Afonso',5,'2019-06-12 18:10:11'),(575,'P?? de Serra',5,'2019-06-12 18:10:11'),(576,'Pedr??o',5,'2019-06-12 18:10:11'),(577,'Pedro Alexandre',5,'2019-06-12 18:10:11'),(578,'Piat??',5,'2019-06-12 18:10:11'),(579,'Pil??o Arcado',5,'2019-06-12 18:10:11'),(580,'Pinda??',5,'2019-06-12 18:10:11'),(581,'Pindoba??u',5,'2019-06-12 18:10:11'),(582,'Pintadas',5,'2019-06-12 18:10:11'),(583,'Pira?? do Norte',5,'2019-06-12 18:10:11'),(584,'Pirip??',5,'2019-06-12 18:10:11'),(585,'Piritiba',5,'2019-06-12 18:10:11'),(586,'Planaltino',5,'2019-06-12 18:10:11'),(587,'Planalto',5,'2019-06-12 18:10:11'),(588,'Po????es',5,'2019-06-12 18:10:11'),(589,'Pojuca',5,'2019-06-12 18:10:11'),(590,'Ponto Novo',5,'2019-06-12 18:10:11'),(591,'Porto Seguro',5,'2019-06-12 18:10:11'),(592,'Potiragu??',5,'2019-06-12 18:10:11'),(593,'Prado',5,'2019-06-12 18:10:11'),(594,'Presidente Dutra',5,'2019-06-12 18:10:11'),(595,'Presidente J??nio Quadros',5,'2019-06-12 18:10:11'),(596,'Presidente Tancredo Neves',5,'2019-06-12 18:10:11'),(597,'Queimadas',5,'2019-06-12 18:10:11'),(598,'Quijingue',5,'2019-06-12 18:10:11'),(599,'Quixabeira',5,'2019-06-12 18:10:11'),(600,'Rafael Jambeiro',5,'2019-06-12 18:10:11'),(601,'Remanso',5,'2019-06-12 18:10:11'),(602,'Retirol??ndia',5,'2019-06-12 18:10:11'),(603,'Riach??o das Neves',5,'2019-06-12 18:10:11'),(604,'Riach??o do Jacu??pe',5,'2019-06-12 18:10:11'),(605,'Riacho de Santana',5,'2019-06-12 18:10:11'),(606,'Ribeira do Amparo',5,'2019-06-12 18:10:11'),(607,'Ribeira do Pombal',5,'2019-06-12 18:10:11'),(608,'Ribeir??o do Largo',5,'2019-06-12 18:10:11'),(609,'Rio de Contas',5,'2019-06-12 18:10:11'),(610,'Rio do Ant??nio',5,'2019-06-12 18:10:11'),(611,'Rio do Pires',5,'2019-06-12 18:10:11'),(612,'Rio Real',5,'2019-06-12 18:10:11'),(613,'Rodelas',5,'2019-06-12 18:10:11'),(614,'Ruy Barbosa',5,'2019-06-12 18:10:11'),(615,'Salinas da Margarida',5,'2019-06-12 18:10:11'),(616,'Salvador',5,'2019-06-12 18:10:11'),(617,'Santa B??rbara',5,'2019-06-12 18:10:11'),(618,'Santa Br??gida',5,'2019-06-12 18:10:11'),(619,'Santa Cruz Cabr??lia',5,'2019-06-12 18:10:11'),(620,'Santa Cruz da Vit??ria',5,'2019-06-12 18:10:11'),(621,'Santa In??s',5,'2019-06-12 18:10:11'),(622,'Santa Luzia',5,'2019-06-12 18:10:11'),(623,'Santa Maria da Vit??ria',5,'2019-06-12 18:10:11'),(624,'Santa Rita de C??ssia',5,'2019-06-12 18:10:11'),(625,'Santa Teresinha',5,'2019-06-12 18:10:11'),(626,'Santaluz',5,'2019-06-12 18:10:11'),(627,'Santana',5,'2019-06-12 18:10:11'),(628,'Santan??polis',5,'2019-06-12 18:10:11'),(629,'Santo Amaro',5,'2019-06-12 18:10:11'),(630,'Santo Ant??nio de Jesus',5,'2019-06-12 18:10:11'),(631,'Santo Est??v??o',5,'2019-06-12 18:10:11'),(632,'S??o Desid??rio',5,'2019-06-12 18:10:11'),(633,'S??o Domingos',5,'2019-06-12 18:10:11'),(634,'S??o Felipe',5,'2019-06-12 18:10:11'),(635,'S??o F??lix',5,'2019-06-12 18:10:11'),(636,'S??o F??lix do Coribe',5,'2019-06-12 18:10:11'),(637,'S??o Francisco do Conde',5,'2019-06-12 18:10:11'),(638,'S??o Gabriel',5,'2019-06-12 18:10:11'),(639,'S??o Gon??alo dos Campos',5,'2019-06-12 18:10:11'),(640,'S??o Jos?? da Vit??ria',5,'2019-06-12 18:10:11'),(641,'S??o Jos?? do Jacu??pe',5,'2019-06-12 18:10:11'),(642,'S??o Miguel das Matas',5,'2019-06-12 18:10:11'),(643,'S??o Sebasti??o do Pass??',5,'2019-06-12 18:10:11'),(644,'Sapea??u',5,'2019-06-12 18:10:11'),(645,'S??tiro Dias',5,'2019-06-12 18:10:11'),(646,'Saubara',5,'2019-06-12 18:10:11'),(647,'Sa??de',5,'2019-06-12 18:10:11'),(648,'Seabra',5,'2019-06-12 18:10:11'),(649,'Sebasti??o Laranjeiras',5,'2019-06-12 18:10:11'),(650,'Senhor do Bonfim',5,'2019-06-12 18:10:11'),(651,'Sento S??',5,'2019-06-12 18:10:11'),(652,'Serra do Ramalho',5,'2019-06-12 18:10:11'),(653,'Serra Dourada',5,'2019-06-12 18:10:11'),(654,'Serra Preta',5,'2019-06-12 18:10:11'),(655,'Serrinha',5,'2019-06-12 18:10:11'),(656,'Serrol??ndia',5,'2019-06-12 18:10:11'),(657,'Sim??es Filho',5,'2019-06-12 18:10:11'),(658,'S??tio do Mato',5,'2019-06-12 18:10:11'),(659,'S??tio do Quinto',5,'2019-06-12 18:10:11'),(660,'Sobradinho',5,'2019-06-12 18:10:11'),(661,'Souto Soares',5,'2019-06-12 18:10:11'),(662,'Tabocas do Brejo Velho',5,'2019-06-12 18:10:11'),(663,'Tanha??u',5,'2019-06-12 18:10:11'),(664,'Tanque Novo',5,'2019-06-12 18:10:11'),(665,'Tanquinho',5,'2019-06-12 18:10:11'),(666,'Tapero??',5,'2019-06-12 18:10:11'),(667,'Tapiramut??',5,'2019-06-12 18:10:11'),(668,'Teixeira de Freitas',5,'2019-06-12 18:10:11'),(669,'Teodoro Sampaio',5,'2019-06-12 18:10:11'),(670,'Teofil??ndia',5,'2019-06-12 18:10:11'),(671,'Teol??ndia',5,'2019-06-12 18:10:11'),(672,'Terra Nova',5,'2019-06-12 18:10:11'),(673,'Tremedal',5,'2019-06-12 18:10:11'),(674,'Tucano',5,'2019-06-12 18:10:11'),(675,'Uau??',5,'2019-06-12 18:10:11'),(676,'Uba??ra',5,'2019-06-12 18:10:11'),(677,'Ubaitaba',5,'2019-06-12 18:10:11'),(678,'Ubat??',5,'2019-06-12 18:10:11'),(679,'Uiba??',5,'2019-06-12 18:10:11'),(680,'Umburanas',5,'2019-06-12 18:10:11'),(681,'Una',5,'2019-06-12 18:10:11'),(682,'Urandi',5,'2019-06-12 18:10:11'),(683,'Uru??uca',5,'2019-06-12 18:10:11'),(684,'Utinga',5,'2019-06-12 18:10:11'),(685,'Valen??a',5,'2019-06-12 18:10:11'),(686,'Valente',5,'2019-06-12 18:10:11'),(687,'V??rzea da Ro??a',5,'2019-06-12 18:10:11'),(688,'V??rzea do Po??o',5,'2019-06-12 18:10:11'),(689,'V??rzea Nova',5,'2019-06-12 18:10:11'),(690,'Varzedo',5,'2019-06-12 18:10:11'),(691,'Vera Cruz',5,'2019-06-12 18:10:11'),(692,'Vereda',5,'2019-06-12 18:10:11'),(693,'Vit??ria da Conquista',5,'2019-06-12 18:10:11'),(694,'Wagner',5,'2019-06-12 18:10:11'),(695,'Wanderley',5,'2019-06-12 18:10:11'),(696,'Wenceslau Guimar??es',5,'2019-06-12 18:10:11'),(697,'Xique-Xique',5,'2019-06-12 18:10:11'),(698,'Abaiara',6,'2019-06-12 18:10:11'),(699,'Acarape',6,'2019-06-12 18:10:11'),(700,'Acara??',6,'2019-06-12 18:10:11'),(701,'Acopiara',6,'2019-06-12 18:10:11'),(702,'Aiuaba',6,'2019-06-12 18:10:11'),(703,'Alc??ntaras',6,'2019-06-12 18:10:11'),(704,'Altaneira',6,'2019-06-12 18:10:11'),(705,'Alto Santo',6,'2019-06-12 18:10:11'),(706,'Amontada',6,'2019-06-12 18:10:11'),(707,'Antonina do Norte',6,'2019-06-12 18:10:11'),(708,'Apuiar??s',6,'2019-06-12 18:10:11'),(709,'Aquiraz',6,'2019-06-12 18:10:11'),(710,'Aracati',6,'2019-06-12 18:10:11'),(711,'Aracoiaba',6,'2019-06-12 18:10:11'),(712,'Ararend??',6,'2019-06-12 18:10:11'),(713,'Araripe',6,'2019-06-12 18:10:11'),(714,'Aratuba',6,'2019-06-12 18:10:11'),(715,'Arneiroz',6,'2019-06-12 18:10:11'),(716,'Assar??',6,'2019-06-12 18:10:11'),(717,'Aurora',6,'2019-06-12 18:10:11'),(718,'Baixio',6,'2019-06-12 18:10:11'),(719,'Banabui??',6,'2019-06-12 18:10:11'),(720,'Barbalha',6,'2019-06-12 18:10:11'),(721,'Barreira',6,'2019-06-12 18:10:11'),(722,'Barro',6,'2019-06-12 18:10:11'),(723,'Barroquinha',6,'2019-06-12 18:10:11'),(724,'Baturit??',6,'2019-06-12 18:10:11'),(725,'Beberibe',6,'2019-06-12 18:10:11'),(726,'Bela Cruz',6,'2019-06-12 18:10:11'),(727,'Boa Viagem',6,'2019-06-12 18:10:11'),(728,'Brejo Santo',6,'2019-06-12 18:10:11'),(729,'Camocim',6,'2019-06-12 18:10:11'),(730,'Campos Sales',6,'2019-06-12 18:10:11'),(731,'Canind??',6,'2019-06-12 18:10:11'),(732,'Capistrano',6,'2019-06-12 18:10:11'),(733,'Caridade',6,'2019-06-12 18:10:11'),(734,'Carir??',6,'2019-06-12 18:10:11'),(735,'Cariria??u',6,'2019-06-12 18:10:11'),(736,'Cari??s',6,'2019-06-12 18:10:11'),(737,'Carnaubal',6,'2019-06-12 18:10:11'),(738,'Cascavel',6,'2019-06-12 18:10:11'),(739,'Catarina',6,'2019-06-12 18:10:11'),(740,'Catunda',6,'2019-06-12 18:10:11'),(741,'Caucaia',6,'2019-06-12 18:10:11'),(742,'Cedro',6,'2019-06-12 18:10:11'),(743,'Chaval',6,'2019-06-12 18:10:11'),(744,'Chor??',6,'2019-06-12 18:10:11'),(745,'Chorozinho',6,'2019-06-12 18:10:11'),(746,'Corea??',6,'2019-06-12 18:10:11'),(747,'Crate??s',6,'2019-06-12 18:10:11'),(748,'Crato',6,'2019-06-12 18:10:11'),(749,'Croat??',6,'2019-06-12 18:10:11'),(750,'Cruz',6,'2019-06-12 18:10:11'),(751,'Deputado Irapuan Pinheiro',6,'2019-06-12 18:10:11'),(752,'Erer??',6,'2019-06-12 18:10:11'),(753,'Eus??bio',6,'2019-06-12 18:10:11'),(754,'Farias Brito',6,'2019-06-12 18:10:11'),(755,'Forquilha',6,'2019-06-12 18:10:11'),(756,'Fortaleza',6,'2019-06-12 18:10:11'),(757,'Fortim',6,'2019-06-12 18:10:11'),(758,'Frecheirinha',6,'2019-06-12 18:10:11'),(759,'General Sampaio',6,'2019-06-12 18:10:11'),(760,'Gra??a',6,'2019-06-12 18:10:11'),(761,'Granja',6,'2019-06-12 18:10:11'),(762,'Granjeiro',6,'2019-06-12 18:10:11'),(763,'Groa??ras',6,'2019-06-12 18:10:11'),(764,'Guai??ba',6,'2019-06-12 18:10:11'),(765,'Guaraciaba do Norte',6,'2019-06-12 18:10:11'),(766,'Guaramiranga',6,'2019-06-12 18:10:11'),(767,'Hidrol??ndia',6,'2019-06-12 18:10:11'),(768,'Horizonte',6,'2019-06-12 18:10:11'),(769,'Ibaretama',6,'2019-06-12 18:10:11'),(770,'Ibiapina',6,'2019-06-12 18:10:11'),(771,'Ibicuitinga',6,'2019-06-12 18:10:11'),(772,'Icapu??',6,'2019-06-12 18:10:11'),(773,'Ic??',6,'2019-06-12 18:10:11'),(774,'Iguatu',6,'2019-06-12 18:10:11'),(775,'Independ??ncia',6,'2019-06-12 18:10:11'),(776,'Ipaporanga',6,'2019-06-12 18:10:11'),(777,'Ipaumirim',6,'2019-06-12 18:10:11'),(778,'Ipu',6,'2019-06-12 18:10:11'),(779,'Ipueiras',6,'2019-06-12 18:10:11'),(780,'Iracema',6,'2019-06-12 18:10:11'),(781,'Irau??uba',6,'2019-06-12 18:10:11'),(782,'Itai??aba',6,'2019-06-12 18:10:11'),(783,'Itaitinga',6,'2019-06-12 18:10:11'),(784,'Itapag??',6,'2019-06-12 18:10:11'),(785,'Itapipoca',6,'2019-06-12 18:10:11'),(786,'Itapi??na',6,'2019-06-12 18:10:11'),(787,'Itarema',6,'2019-06-12 18:10:11'),(788,'Itatira',6,'2019-06-12 18:10:11'),(789,'Jaguaretama',6,'2019-06-12 18:10:11'),(790,'Jaguaribara',6,'2019-06-12 18:10:11'),(791,'Jaguaribe',6,'2019-06-12 18:10:11'),(792,'Jaguaruana',6,'2019-06-12 18:10:11'),(793,'Jardim',6,'2019-06-12 18:10:11'),(794,'Jati',6,'2019-06-12 18:10:11'),(795,'Jijoca de Jericoacoara',6,'2019-06-12 18:10:11'),(796,'Juazeiro do Norte',6,'2019-06-12 18:10:11'),(797,'Juc??s',6,'2019-06-12 18:10:11'),(798,'Lavras da Mangabeira',6,'2019-06-12 18:10:11'),(799,'Limoeiro do Norte',6,'2019-06-12 18:10:11'),(800,'Madalena',6,'2019-06-12 18:10:11'),(801,'Maracana??',6,'2019-06-12 18:10:11'),(802,'Maranguape',6,'2019-06-12 18:10:11'),(803,'Marco',6,'2019-06-12 18:10:11'),(804,'Martin??pole',6,'2019-06-12 18:10:11'),(805,'Massap??',6,'2019-06-12 18:10:11'),(806,'Mauriti',6,'2019-06-12 18:10:11'),(807,'Meruoca',6,'2019-06-12 18:10:11'),(808,'Milagres',6,'2019-06-12 18:10:11'),(809,'Milh??',6,'2019-06-12 18:10:11'),(810,'Mira??ma',6,'2019-06-12 18:10:11'),(811,'Miss??o Velha',6,'2019-06-12 18:10:11'),(812,'Momba??a',6,'2019-06-12 18:10:11'),(813,'Monsenhor Tabosa',6,'2019-06-12 18:10:11'),(814,'Morada Nova',6,'2019-06-12 18:10:11'),(815,'Mora??jo',6,'2019-06-12 18:10:11'),(816,'Morrinhos',6,'2019-06-12 18:10:11'),(817,'Mucambo',6,'2019-06-12 18:10:11'),(818,'Mulungu',6,'2019-06-12 18:10:11'),(819,'Nova Olinda',6,'2019-06-12 18:10:11'),(820,'Nova Russas',6,'2019-06-12 18:10:11'),(821,'Novo Oriente',6,'2019-06-12 18:10:11'),(822,'Ocara',6,'2019-06-12 18:10:11'),(823,'Or??s',6,'2019-06-12 18:10:11'),(824,'Pacajus',6,'2019-06-12 18:10:11'),(825,'Pacatuba',6,'2019-06-12 18:10:11'),(826,'Pacoti',6,'2019-06-12 18:10:11'),(827,'Pacuj??',6,'2019-06-12 18:10:11'),(828,'Palhano',6,'2019-06-12 18:10:11'),(829,'Palm??cia',6,'2019-06-12 18:10:11'),(830,'Paracuru',6,'2019-06-12 18:10:11'),(831,'Paraipaba',6,'2019-06-12 18:10:11'),(832,'Parambu',6,'2019-06-12 18:10:11'),(833,'Paramoti',6,'2019-06-12 18:10:11'),(834,'Pedra Branca',6,'2019-06-12 18:10:11'),(835,'Penaforte',6,'2019-06-12 18:10:11'),(836,'Pentecoste',6,'2019-06-12 18:10:11'),(837,'Pereiro',6,'2019-06-12 18:10:11'),(838,'Pindoretama',6,'2019-06-12 18:10:11'),(839,'Piquet Carneiro',6,'2019-06-12 18:10:11'),(840,'Pires Ferreira',6,'2019-06-12 18:10:11'),(841,'Poranga',6,'2019-06-12 18:10:11'),(842,'Porteiras',6,'2019-06-12 18:10:11'),(843,'Potengi',6,'2019-06-12 18:10:11'),(844,'Potiretama',6,'2019-06-12 18:10:11'),(845,'Quiterian??polis',6,'2019-06-12 18:10:11'),(846,'Quixad??',6,'2019-06-12 18:10:11'),(847,'Quixel??',6,'2019-06-12 18:10:11'),(848,'Quixeramobim',6,'2019-06-12 18:10:11'),(849,'Quixer??',6,'2019-06-12 18:10:11'),(850,'Reden????o',6,'2019-06-12 18:10:11'),(851,'Reriutaba',6,'2019-06-12 18:10:11'),(852,'Russas',6,'2019-06-12 18:10:11'),(853,'Saboeiro',6,'2019-06-12 18:10:11'),(854,'Salitre',6,'2019-06-12 18:10:11'),(855,'Santa Quit??ria',6,'2019-06-12 18:10:11'),(856,'Santana do Acara??',6,'2019-06-12 18:10:11'),(857,'Santana do Cariri',6,'2019-06-12 18:10:11'),(858,'S??o Benedito',6,'2019-06-12 18:10:11'),(859,'S??o Gon??alo do Amarante',6,'2019-06-12 18:10:11'),(860,'S??o Jo??o do Jaguaribe',6,'2019-06-12 18:10:11'),(861,'S??o Lu??s do Curu',6,'2019-06-12 18:10:11'),(862,'Senador Pompeu',6,'2019-06-12 18:10:11'),(863,'Senador S??',6,'2019-06-12 18:10:11'),(864,'Sobral',6,'2019-06-12 18:10:11'),(865,'Solon??pole',6,'2019-06-12 18:10:11'),(866,'Tabuleiro do Norte',6,'2019-06-12 18:10:11'),(867,'Tamboril',6,'2019-06-12 18:10:11'),(868,'Tarrafas',6,'2019-06-12 18:10:11'),(869,'Tau??',6,'2019-06-12 18:10:11'),(870,'Teju??uoca',6,'2019-06-12 18:10:11'),(871,'Tiangu??',6,'2019-06-12 18:10:11'),(872,'Trairi',6,'2019-06-12 18:10:11'),(873,'Tururu',6,'2019-06-12 18:10:11'),(874,'Ubajara',6,'2019-06-12 18:10:11'),(875,'Umari',6,'2019-06-12 18:10:11'),(876,'Umirim',6,'2019-06-12 18:10:11'),(877,'Uruburetama',6,'2019-06-12 18:10:11'),(878,'Uruoca',6,'2019-06-12 18:10:11'),(879,'Varjota',6,'2019-06-12 18:10:11'),(880,'V??rzea Alegre',6,'2019-06-12 18:10:11'),(881,'Vi??osa do Cear??',6,'2019-06-12 18:10:11'),(882,'Bras??lia',7,'2019-06-12 18:10:11'),(883,'Abadia de Goi??s',9,'2019-06-12 18:10:11'),(884,'Abadi??nia',9,'2019-06-12 18:10:11'),(885,'Acre??na',9,'2019-06-12 18:10:11'),(886,'Adel??ndia',9,'2019-06-12 18:10:11'),(887,'??gua Fria de Goi??s',9,'2019-06-12 18:10:11'),(888,'??gua Limpa',9,'2019-06-12 18:10:11'),(889,'??guas Lindas de Goi??s',9,'2019-06-12 18:10:11'),(890,'Alex??nia',9,'2019-06-12 18:10:11'),(891,'Alo??ndia',9,'2019-06-12 18:10:11'),(892,'Alto Horizonte',9,'2019-06-12 18:10:11'),(893,'Alto Para??so de Goi??s',9,'2019-06-12 18:10:11'),(894,'Alvorada do Norte',9,'2019-06-12 18:10:11'),(895,'Amaralina',9,'2019-06-12 18:10:11'),(896,'Americano do Brasil',9,'2019-06-12 18:10:11'),(897,'Amorin??polis',9,'2019-06-12 18:10:11'),(898,'An??polis',9,'2019-06-12 18:10:11'),(899,'Anhanguera',9,'2019-06-12 18:10:11'),(900,'Anicuns',9,'2019-06-12 18:10:11'),(901,'Aparecida de Goi??nia',9,'2019-06-12 18:10:11'),(902,'Aparecida do Rio Doce',9,'2019-06-12 18:10:11'),(903,'Apor??',9,'2019-06-12 18:10:11'),(904,'Ara??u',9,'2019-06-12 18:10:11'),(905,'Aragar??as',9,'2019-06-12 18:10:11'),(906,'Aragoi??nia',9,'2019-06-12 18:10:11'),(907,'Araguapaz',9,'2019-06-12 18:10:11'),(908,'Aren??polis',9,'2019-06-12 18:10:11'),(909,'Aruan??',9,'2019-06-12 18:10:11'),(910,'Auril??ndia',9,'2019-06-12 18:10:11'),(911,'Avelin??polis',9,'2019-06-12 18:10:11'),(912,'Baliza',9,'2019-06-12 18:10:11'),(913,'Barro Alto',9,'2019-06-12 18:10:11'),(914,'Bela Vista de Goi??s',9,'2019-06-12 18:10:11'),(915,'Bom Jardim de Goi??s',9,'2019-06-12 18:10:11'),(916,'Bom Jesus de Goi??s',9,'2019-06-12 18:10:11'),(917,'Bonfin??polis',9,'2019-06-12 18:10:11'),(918,'Bon??polis',9,'2019-06-12 18:10:11'),(919,'Brazabrantes',9,'2019-06-12 18:10:11'),(920,'Brit??nia',9,'2019-06-12 18:10:11'),(921,'Buriti Alegre',9,'2019-06-12 18:10:11'),(922,'Buriti de Goi??s',9,'2019-06-12 18:10:11'),(923,'Buritin??polis',9,'2019-06-12 18:10:11'),(924,'Cabeceiras',9,'2019-06-12 18:10:11'),(925,'Cachoeira Alta',9,'2019-06-12 18:10:11'),(926,'Cachoeira de Goi??s',9,'2019-06-12 18:10:11'),(927,'Cachoeira Dourada',9,'2019-06-12 18:10:11'),(928,'Ca??u',9,'2019-06-12 18:10:11'),(929,'Caiap??nia',9,'2019-06-12 18:10:11'),(930,'Caldas Novas',9,'2019-06-12 18:10:11'),(931,'Caldazinha',9,'2019-06-12 18:10:11'),(932,'Campestre de Goi??s',9,'2019-06-12 18:10:11'),(933,'Campina??u',9,'2019-06-12 18:10:11'),(934,'Campinorte',9,'2019-06-12 18:10:11'),(935,'Campo Alegre de Goi??s',9,'2019-06-12 18:10:11'),(936,'Campo Limpo de Goi??s',9,'2019-06-12 18:10:11'),(937,'Campos Belos',9,'2019-06-12 18:10:11'),(938,'Campos Verdes',9,'2019-06-12 18:10:11'),(939,'Carmo do Rio Verde',9,'2019-06-12 18:10:11'),(940,'Castel??ndia',9,'2019-06-12 18:10:11'),(941,'Catal??o',9,'2019-06-12 18:10:11'),(942,'Catura??',9,'2019-06-12 18:10:11'),(943,'Cavalcante',9,'2019-06-12 18:10:11'),(944,'Ceres',9,'2019-06-12 18:10:11'),(945,'Cezarina',9,'2019-06-12 18:10:11'),(946,'Chapad??o do C??u',9,'2019-06-12 18:10:11'),(947,'Cidade Ocidental',9,'2019-06-12 18:10:11'),(948,'Cocalzinho de Goi??s',9,'2019-06-12 18:10:11'),(949,'Colinas do Sul',9,'2019-06-12 18:10:11'),(950,'C??rrego do Ouro',9,'2019-06-12 18:10:11'),(951,'Corumb?? de Goi??s',9,'2019-06-12 18:10:11'),(952,'Corumba??ba',9,'2019-06-12 18:10:11'),(953,'Cristalina',9,'2019-06-12 18:10:11'),(954,'Cristian??polis',9,'2019-06-12 18:10:11'),(955,'Crix??s',9,'2019-06-12 18:10:11'),(956,'Crom??nia',9,'2019-06-12 18:10:11'),(957,'Cumari',9,'2019-06-12 18:10:11'),(958,'Damian??polis',9,'2019-06-12 18:10:11'),(959,'Damol??ndia',9,'2019-06-12 18:10:11'),(960,'Davin??polis',9,'2019-06-12 18:10:11'),(961,'Diorama',9,'2019-06-12 18:10:11'),(962,'Divin??polis de Goi??s',9,'2019-06-12 18:10:11'),(963,'Doverl??ndia',9,'2019-06-12 18:10:11'),(964,'Edealina',9,'2019-06-12 18:10:11'),(965,'Ed??ia',9,'2019-06-12 18:10:11'),(966,'Estrela do Norte',9,'2019-06-12 18:10:11'),(967,'Faina',9,'2019-06-12 18:10:11'),(968,'Fazenda Nova',9,'2019-06-12 18:10:11'),(969,'Firmin??polis',9,'2019-06-12 18:10:11'),(970,'Flores de Goi??s',9,'2019-06-12 18:10:11'),(971,'Formosa',9,'2019-06-12 18:10:11'),(972,'Formoso',9,'2019-06-12 18:10:11'),(973,'Gameleira de Goi??s',9,'2019-06-12 18:10:11'),(974,'Goian??polis',9,'2019-06-12 18:10:11'),(975,'Goiandira',9,'2019-06-12 18:10:11'),(976,'Goian??sia',9,'2019-06-12 18:10:11'),(977,'Goi??nia',9,'2019-06-12 18:10:11'),(978,'Goianira',9,'2019-06-12 18:10:11'),(979,'Goi??s',9,'2019-06-12 18:10:11'),(980,'Goiatuba',9,'2019-06-12 18:10:11'),(981,'Gouvel??ndia',9,'2019-06-12 18:10:11'),(982,'Guap??',9,'2019-06-12 18:10:11'),(983,'Guara??ta',9,'2019-06-12 18:10:11'),(984,'Guarani de Goi??s',9,'2019-06-12 18:10:11'),(985,'Guarinos',9,'2019-06-12 18:10:11'),(986,'Heitora??',9,'2019-06-12 18:10:11'),(987,'Hidrol??ndia',9,'2019-06-12 18:10:11'),(988,'Hidrolina',9,'2019-06-12 18:10:11'),(989,'Iaciara',9,'2019-06-12 18:10:11'),(990,'Inaciol??ndia',9,'2019-06-12 18:10:11'),(991,'Indiara',9,'2019-06-12 18:10:11'),(992,'Inhumas',9,'2019-06-12 18:10:11'),(993,'Ipameri',9,'2019-06-12 18:10:11'),(994,'Ipiranga de Goi??s',9,'2019-06-12 18:10:11'),(995,'Ipor??',9,'2019-06-12 18:10:11'),(996,'Israel??ndia',9,'2019-06-12 18:10:11'),(997,'Itabera??',9,'2019-06-12 18:10:11'),(998,'Itaguari',9,'2019-06-12 18:10:11'),(999,'Itaguaru',9,'2019-06-12 18:10:11'),(1000,'Itaj??',9,'2019-06-12 18:10:11'),(1001,'Itapaci',9,'2019-06-12 18:10:11'),(1002,'Itapirapu??',9,'2019-06-12 18:10:11'),(1003,'Itapuranga',9,'2019-06-12 18:10:11'),(1004,'Itarum??',9,'2019-06-12 18:10:11'),(1005,'Itau??u',9,'2019-06-12 18:10:11'),(1006,'Itumbiara',9,'2019-06-12 18:10:11'),(1007,'Ivol??ndia',9,'2019-06-12 18:10:11'),(1008,'Jandaia',9,'2019-06-12 18:10:11'),(1009,'Jaragu??',9,'2019-06-12 18:10:11'),(1010,'Jata??',9,'2019-06-12 18:10:11'),(1011,'Jaupaci',9,'2019-06-12 18:10:11'),(1012,'Jes??polis',9,'2019-06-12 18:10:11'),(1013,'Jovi??nia',9,'2019-06-12 18:10:11'),(1014,'Jussara',9,'2019-06-12 18:10:11'),(1015,'Lagoa Santa',9,'2019-06-12 18:10:11'),(1016,'Leopoldo de Bulh??es',9,'2019-06-12 18:10:11'),(1017,'Luzi??nia',9,'2019-06-12 18:10:11'),(1018,'Mairipotaba',9,'2019-06-12 18:10:11'),(1019,'Mamba??',9,'2019-06-12 18:10:11'),(1020,'Mara Rosa',9,'2019-06-12 18:10:11'),(1021,'Marzag??o',9,'2019-06-12 18:10:11'),(1022,'Matrinch??',9,'2019-06-12 18:10:11'),(1023,'Mauril??ndia',9,'2019-06-12 18:10:11'),(1024,'Mimoso de Goi??s',9,'2019-06-12 18:10:11'),(1025,'Mina??u',9,'2019-06-12 18:10:11'),(1026,'Mineiros',9,'2019-06-12 18:10:11'),(1027,'Moipor??',9,'2019-06-12 18:10:11'),(1028,'Monte Alegre de Goi??s',9,'2019-06-12 18:10:11'),(1029,'Montes Claros de Goi??s',9,'2019-06-12 18:10:11'),(1030,'Montividiu',9,'2019-06-12 18:10:11'),(1031,'Montividiu do Norte',9,'2019-06-12 18:10:11'),(1032,'Morrinhos',9,'2019-06-12 18:10:11'),(1033,'Morro Agudo de Goi??s',9,'2019-06-12 18:10:11'),(1034,'Moss??medes',9,'2019-06-12 18:10:11'),(1035,'Mozarl??ndia',9,'2019-06-12 18:10:11'),(1036,'Mundo Novo',9,'2019-06-12 18:10:11'),(1037,'Mutun??polis',9,'2019-06-12 18:10:11'),(1038,'Naz??rio',9,'2019-06-12 18:10:11'),(1039,'Ner??polis',9,'2019-06-12 18:10:11'),(1040,'Niquel??ndia',9,'2019-06-12 18:10:11'),(1041,'Nova Am??rica',9,'2019-06-12 18:10:11'),(1042,'Nova Aurora',9,'2019-06-12 18:10:11'),(1043,'Nova Crix??s',9,'2019-06-12 18:10:11'),(1044,'Nova Gl??ria',9,'2019-06-12 18:10:11'),(1045,'Nova Igua??u de Goi??s',9,'2019-06-12 18:10:11'),(1046,'Nova Roma',9,'2019-06-12 18:10:11'),(1047,'Nova Veneza',9,'2019-06-12 18:10:11'),(1048,'Novo Brasil',9,'2019-06-12 18:10:11'),(1049,'Novo Gama',9,'2019-06-12 18:10:11'),(1050,'Novo Planalto',9,'2019-06-12 18:10:11'),(1051,'Orizona',9,'2019-06-12 18:10:11'),(1052,'Ouro Verde de Goi??s',9,'2019-06-12 18:10:11'),(1053,'Ouvidor',9,'2019-06-12 18:10:11'),(1054,'Padre Bernardo',9,'2019-06-12 18:10:11'),(1055,'Palestina de Goi??s',9,'2019-06-12 18:10:11'),(1056,'Palmeiras de Goi??s',9,'2019-06-12 18:10:11'),(1057,'Palmelo',9,'2019-06-12 18:10:11'),(1058,'Palmin??polis',9,'2019-06-12 18:10:11'),(1059,'Panam??',9,'2019-06-12 18:10:11'),(1060,'Paranaiguara',9,'2019-06-12 18:10:11'),(1061,'Para??na',9,'2019-06-12 18:10:11'),(1062,'Perol??ndia',9,'2019-06-12 18:10:11'),(1063,'Petrolina de Goi??s',9,'2019-06-12 18:10:11'),(1064,'Pilar de Goi??s',9,'2019-06-12 18:10:11'),(1065,'Piracanjuba',9,'2019-06-12 18:10:11'),(1066,'Piranhas',9,'2019-06-12 18:10:11'),(1067,'Piren??polis',9,'2019-06-12 18:10:11'),(1068,'Pires do Rio',9,'2019-06-12 18:10:11'),(1069,'Planaltina',9,'2019-06-12 18:10:11'),(1070,'Pontalina',9,'2019-06-12 18:10:11'),(1071,'Porangatu',9,'2019-06-12 18:10:11'),(1072,'Porteir??o',9,'2019-06-12 18:10:11'),(1073,'Portel??ndia',9,'2019-06-12 18:10:11'),(1074,'Posse',9,'2019-06-12 18:10:11'),(1075,'Professor Jamil',9,'2019-06-12 18:10:11'),(1076,'Quirin??polis',9,'2019-06-12 18:10:11'),(1077,'Rialma',9,'2019-06-12 18:10:11'),(1078,'Rian??polis',9,'2019-06-12 18:10:11'),(1079,'Rio Quente',9,'2019-06-12 18:10:11'),(1080,'Rio Verde',9,'2019-06-12 18:10:11'),(1081,'Rubiataba',9,'2019-06-12 18:10:11'),(1082,'Sanclerl??ndia',9,'2019-06-12 18:10:11'),(1083,'Santa B??rbara de Goi??s',9,'2019-06-12 18:10:11'),(1084,'Santa Cruz de Goi??s',9,'2019-06-12 18:10:11'),(1085,'Santa F?? de Goi??s',9,'2019-06-12 18:10:11'),(1086,'Santa Helena de Goi??s',9,'2019-06-12 18:10:11'),(1087,'Santa Isabel',9,'2019-06-12 18:10:11'),(1088,'Santa Rita do Araguaia',9,'2019-06-12 18:10:11'),(1089,'Santa Rita do Novo Destino',9,'2019-06-12 18:10:11'),(1090,'Santa Rosa de Goi??s',9,'2019-06-12 18:10:11'),(1091,'Santa Tereza de Goi??s',9,'2019-06-12 18:10:11'),(1092,'Santa Terezinha de Goi??s',9,'2019-06-12 18:10:11'),(1093,'Santo Ant??nio da Barra',9,'2019-06-12 18:10:11'),(1094,'Santo Ant??nio de Goi??s',9,'2019-06-12 18:10:11'),(1095,'Santo Ant??nio do Descoberto',9,'2019-06-12 18:10:11'),(1096,'S??o Domingos',9,'2019-06-12 18:10:11'),(1097,'S??o Francisco de Goi??s',9,'2019-06-12 18:10:11'),(1098,'S??o Jo??o d`Alian??a',9,'2019-06-12 18:10:11'),(1099,'S??o Jo??o da Para??na',9,'2019-06-12 18:10:11'),(1100,'S??o Lu??s de Montes Belos',9,'2019-06-12 18:10:11'),(1101,'S??o Lu??z do Norte',9,'2019-06-12 18:10:11'),(1102,'S??o Miguel do Araguaia',9,'2019-06-12 18:10:11'),(1103,'S??o Miguel do Passa Quatro',9,'2019-06-12 18:10:11'),(1104,'S??o Patr??cio',9,'2019-06-12 18:10:11'),(1105,'S??o Sim??o',9,'2019-06-12 18:10:11'),(1106,'Senador Canedo',9,'2019-06-12 18:10:11'),(1107,'Serran??polis',9,'2019-06-12 18:10:11'),(1108,'Silv??nia',9,'2019-06-12 18:10:11'),(1109,'Simol??ndia',9,'2019-06-12 18:10:11'),(1110,'S??tio d`Abadia',9,'2019-06-12 18:10:11'),(1111,'Taquaral de Goi??s',9,'2019-06-12 18:10:11'),(1112,'Teresina de Goi??s',9,'2019-06-12 18:10:11'),(1113,'Terez??polis de Goi??s',9,'2019-06-12 18:10:11'),(1114,'Tr??s Ranchos',9,'2019-06-12 18:10:11'),(1115,'Trindade',9,'2019-06-12 18:10:11'),(1116,'Trombas',9,'2019-06-12 18:10:11'),(1117,'Turv??nia',9,'2019-06-12 18:10:11'),(1118,'Turvel??ndia',9,'2019-06-12 18:10:11'),(1119,'Uirapuru',9,'2019-06-12 18:10:11'),(1120,'Urua??u',9,'2019-06-12 18:10:11'),(1121,'Uruana',9,'2019-06-12 18:10:11'),(1122,'Uruta??',9,'2019-06-12 18:10:11'),(1123,'Valpara??so de Goi??s',9,'2019-06-12 18:10:11'),(1124,'Varj??o',9,'2019-06-12 18:10:11'),(1125,'Vian??polis',9,'2019-06-12 18:10:11'),(1126,'Vicentin??polis',9,'2019-06-12 18:10:11'),(1127,'Vila Boa',9,'2019-06-12 18:10:11'),(1128,'Vila Prop??cio',9,'2019-06-12 18:10:11'),(1129,'A??ail??ndia',10,'2019-06-12 18:10:11'),(1130,'Afonso Cunha',10,'2019-06-12 18:10:11'),(1131,'??gua Doce do Maranh??o',10,'2019-06-12 18:10:11'),(1132,'Alc??ntara',10,'2019-06-12 18:10:11'),(1133,'Aldeias Altas',10,'2019-06-12 18:10:11'),(1134,'Altamira do Maranh??o',10,'2019-06-12 18:10:11'),(1135,'Alto Alegre do Maranh??o',10,'2019-06-12 18:10:11'),(1136,'Alto Alegre do Pindar??',10,'2019-06-12 18:10:11'),(1137,'Alto Parna??ba',10,'2019-06-12 18:10:11'),(1138,'Amap?? do Maranh??o',10,'2019-06-12 18:10:11'),(1139,'Amarante do Maranh??o',10,'2019-06-12 18:10:11'),(1140,'Anajatuba',10,'2019-06-12 18:10:11'),(1141,'Anapurus',10,'2019-06-12 18:10:11'),(1142,'Apicum-A??u',10,'2019-06-12 18:10:11'),(1143,'Araguan??',10,'2019-06-12 18:10:11'),(1144,'Araioses',10,'2019-06-12 18:10:11'),(1145,'Arame',10,'2019-06-12 18:10:11'),(1146,'Arari',10,'2019-06-12 18:10:11'),(1147,'Axix??',10,'2019-06-12 18:10:11'),(1148,'Bacabal',10,'2019-06-12 18:10:11'),(1149,'Bacabeira',10,'2019-06-12 18:10:11'),(1150,'Bacuri',10,'2019-06-12 18:10:11'),(1151,'Bacurituba',10,'2019-06-12 18:10:11'),(1152,'Balsas',10,'2019-06-12 18:10:11'),(1153,'Bar??o de Graja??',10,'2019-06-12 18:10:11'),(1154,'Barra do Corda',10,'2019-06-12 18:10:11'),(1155,'Barreirinhas',10,'2019-06-12 18:10:11'),(1156,'Bela Vista do Maranh??o',10,'2019-06-12 18:10:11'),(1157,'Bel??gua',10,'2019-06-12 18:10:11'),(1158,'Benedito Leite',10,'2019-06-12 18:10:11'),(1159,'Bequim??o',10,'2019-06-12 18:10:11'),(1160,'Bernardo do Mearim',10,'2019-06-12 18:10:11'),(1161,'Boa Vista do Gurupi',10,'2019-06-12 18:10:11'),(1162,'Bom Jardim',10,'2019-06-12 18:10:11'),(1163,'Bom Jesus das Selvas',10,'2019-06-12 18:10:11'),(1164,'Bom Lugar',10,'2019-06-12 18:10:11'),(1165,'Brejo',10,'2019-06-12 18:10:11'),(1166,'Brejo de Areia',10,'2019-06-12 18:10:11'),(1167,'Buriti',10,'2019-06-12 18:10:11'),(1168,'Buriti Bravo',10,'2019-06-12 18:10:11'),(1169,'Buriticupu',10,'2019-06-12 18:10:11'),(1170,'Buritirana',10,'2019-06-12 18:10:11'),(1171,'Cachoeira Grande',10,'2019-06-12 18:10:11'),(1172,'Cajapi??',10,'2019-06-12 18:10:11'),(1173,'Cajari',10,'2019-06-12 18:10:11'),(1174,'Campestre do Maranh??o',10,'2019-06-12 18:10:11'),(1175,'C??ndido Mendes',10,'2019-06-12 18:10:11'),(1176,'Cantanhede',10,'2019-06-12 18:10:11'),(1177,'Capinzal do Norte',10,'2019-06-12 18:10:11'),(1178,'Carolina',10,'2019-06-12 18:10:11'),(1179,'Carutapera',10,'2019-06-12 18:10:11'),(1180,'Caxias',10,'2019-06-12 18:10:11'),(1181,'Cedral',10,'2019-06-12 18:10:11'),(1182,'Central do Maranh??o',10,'2019-06-12 18:10:11'),(1183,'Centro do Guilherme',10,'2019-06-12 18:10:11'),(1184,'Centro Novo do Maranh??o',10,'2019-06-12 18:10:11'),(1185,'Chapadinha',10,'2019-06-12 18:10:11'),(1186,'Cidel??ndia',10,'2019-06-12 18:10:11'),(1187,'Cod??',10,'2019-06-12 18:10:11'),(1188,'Coelho Neto',10,'2019-06-12 18:10:11'),(1189,'Colinas',10,'2019-06-12 18:10:11'),(1190,'Concei????o do Lago-A??u',10,'2019-06-12 18:10:11'),(1191,'Coroat??',10,'2019-06-12 18:10:11'),(1192,'Cururupu',10,'2019-06-12 18:10:11'),(1193,'Davin??polis',10,'2019-06-12 18:10:11'),(1194,'Dom Pedro',10,'2019-06-12 18:10:11'),(1195,'Duque Bacelar',10,'2019-06-12 18:10:11'),(1196,'Esperantin??polis',10,'2019-06-12 18:10:11'),(1197,'Estreito',10,'2019-06-12 18:10:11'),(1198,'Feira Nova do Maranh??o',10,'2019-06-12 18:10:11'),(1199,'Fernando Falc??o',10,'2019-06-12 18:10:11'),(1200,'Formosa da Serra Negra',10,'2019-06-12 18:10:11'),(1201,'Fortaleza dos Nogueiras',10,'2019-06-12 18:10:11'),(1202,'Fortuna',10,'2019-06-12 18:10:11'),(1203,'Godofredo Viana',10,'2019-06-12 18:10:11'),(1204,'Gon??alves Dias',10,'2019-06-12 18:10:11'),(1205,'Governador Archer',10,'2019-06-12 18:10:11'),(1206,'Governador Edison Lob??o',10,'2019-06-12 18:10:11'),(1207,'Governador Eug??nio Barros',10,'2019-06-12 18:10:11'),(1208,'Governador Luiz Rocha',10,'2019-06-12 18:10:11'),(1209,'Governador Newton Bello',10,'2019-06-12 18:10:11'),(1210,'Governador Nunes Freire',10,'2019-06-12 18:10:11'),(1211,'Gra??a Aranha',10,'2019-06-12 18:10:11'),(1212,'Graja??',10,'2019-06-12 18:10:11'),(1213,'Guimar??es',10,'2019-06-12 18:10:11'),(1214,'Humberto de Campos',10,'2019-06-12 18:10:11'),(1215,'Icatu',10,'2019-06-12 18:10:11'),(1216,'Igarap?? do Meio',10,'2019-06-12 18:10:11'),(1217,'Igarap?? Grande',10,'2019-06-12 18:10:11'),(1218,'Imperatriz',10,'2019-06-12 18:10:11'),(1219,'Itaipava do Graja??',10,'2019-06-12 18:10:11'),(1220,'Itapecuru Mirim',10,'2019-06-12 18:10:11'),(1221,'Itinga do Maranh??o',10,'2019-06-12 18:10:11'),(1222,'Jatob??',10,'2019-06-12 18:10:11'),(1223,'Jenipapo dos Vieiras',10,'2019-06-12 18:10:11'),(1224,'Jo??o Lisboa',10,'2019-06-12 18:10:11'),(1225,'Josel??ndia',10,'2019-06-12 18:10:11'),(1226,'Junco do Maranh??o',10,'2019-06-12 18:10:11'),(1227,'Lago da Pedra',10,'2019-06-12 18:10:11'),(1228,'Lago do Junco',10,'2019-06-12 18:10:11'),(1229,'Lago dos Rodrigues',10,'2019-06-12 18:10:11'),(1230,'Lago Verde',10,'2019-06-12 18:10:11'),(1231,'Lagoa do Mato',10,'2019-06-12 18:10:11'),(1232,'Lagoa Grande do Maranh??o',10,'2019-06-12 18:10:11'),(1233,'Lajeado Novo',10,'2019-06-12 18:10:11'),(1234,'Lima Campos',10,'2019-06-12 18:10:11'),(1235,'Loreto',10,'2019-06-12 18:10:11'),(1236,'Lu??s Domingues',10,'2019-06-12 18:10:11'),(1237,'Magalh??es de Almeida',10,'2019-06-12 18:10:11'),(1238,'Maraca??um??',10,'2019-06-12 18:10:11'),(1239,'Maraj?? do Sena',10,'2019-06-12 18:10:11'),(1240,'Maranh??ozinho',10,'2019-06-12 18:10:11'),(1241,'Mata Roma',10,'2019-06-12 18:10:11'),(1242,'Matinha',10,'2019-06-12 18:10:11'),(1243,'Mat??es',10,'2019-06-12 18:10:11'),(1244,'Mat??es do Norte',10,'2019-06-12 18:10:11'),(1245,'Milagres do Maranh??o',10,'2019-06-12 18:10:11'),(1246,'Mirador',10,'2019-06-12 18:10:11'),(1247,'Miranda do Norte',10,'2019-06-12 18:10:11'),(1248,'Mirinzal',10,'2019-06-12 18:10:11'),(1249,'Mon????o',10,'2019-06-12 18:10:11'),(1250,'Montes Altos',10,'2019-06-12 18:10:11'),(1251,'Morros',10,'2019-06-12 18:10:11'),(1252,'Nina Rodrigues',10,'2019-06-12 18:10:11'),(1253,'Nova Colinas',10,'2019-06-12 18:10:11'),(1254,'Nova Iorque',10,'2019-06-12 18:10:11'),(1255,'Nova Olinda do Maranh??o',10,'2019-06-12 18:10:11'),(1256,'Olho d`??gua das Cunh??s',10,'2019-06-12 18:10:11'),(1257,'Olinda Nova do Maranh??o',10,'2019-06-12 18:10:11'),(1258,'Pa??o do Lumiar',10,'2019-06-12 18:10:11'),(1259,'Palmeir??ndia',10,'2019-06-12 18:10:11'),(1260,'Paraibano',10,'2019-06-12 18:10:11'),(1261,'Parnarama',10,'2019-06-12 18:10:11'),(1262,'Passagem Franca',10,'2019-06-12 18:10:11'),(1263,'Pastos Bons',10,'2019-06-12 18:10:11'),(1264,'Paulino Neves',10,'2019-06-12 18:10:11'),(1265,'Paulo Ramos',10,'2019-06-12 18:10:11'),(1266,'Pedreiras',10,'2019-06-12 18:10:11'),(1267,'Pedro do Ros??rio',10,'2019-06-12 18:10:11'),(1268,'Penalva',10,'2019-06-12 18:10:11'),(1269,'Peri Mirim',10,'2019-06-12 18:10:11'),(1270,'Peritor??',10,'2019-06-12 18:10:11'),(1271,'Pindar??-Mirim',10,'2019-06-12 18:10:11'),(1272,'Pinheiro',10,'2019-06-12 18:10:11'),(1273,'Pio XII',10,'2019-06-12 18:10:11'),(1274,'Pirapemas',10,'2019-06-12 18:10:11'),(1275,'Po????o de Pedras',10,'2019-06-12 18:10:11'),(1276,'Porto Franco',10,'2019-06-12 18:10:11'),(1277,'Porto Rico do Maranh??o',10,'2019-06-12 18:10:11'),(1278,'Presidente Dutra',10,'2019-06-12 18:10:11'),(1279,'Presidente Juscelino',10,'2019-06-12 18:10:11'),(1280,'Presidente M??dici',10,'2019-06-12 18:10:11'),(1281,'Presidente Sarney',10,'2019-06-12 18:10:11'),(1282,'Presidente Vargas',10,'2019-06-12 18:10:11'),(1283,'Primeira Cruz',10,'2019-06-12 18:10:11'),(1284,'Raposa',10,'2019-06-12 18:10:11'),(1285,'Riach??o',10,'2019-06-12 18:10:11'),(1286,'Ribamar Fiquene',10,'2019-06-12 18:10:11'),(1287,'Ros??rio',10,'2019-06-12 18:10:11'),(1288,'Samba??ba',10,'2019-06-12 18:10:11'),(1289,'Santa Filomena do Maranh??o',10,'2019-06-12 18:10:11'),(1290,'Santa Helena',10,'2019-06-12 18:10:11'),(1291,'Santa In??s',10,'2019-06-12 18:10:11'),(1292,'Santa Luzia',10,'2019-06-12 18:10:11'),(1293,'Santa Luzia do Paru??',10,'2019-06-12 18:10:11'),(1294,'Santa Quit??ria do Maranh??o',10,'2019-06-12 18:10:11'),(1295,'Santa Rita',10,'2019-06-12 18:10:11'),(1296,'Santana do Maranh??o',10,'2019-06-12 18:10:11'),(1297,'Santo Amaro do Maranh??o',10,'2019-06-12 18:10:11'),(1298,'Santo Ant??nio dos Lopes',10,'2019-06-12 18:10:11'),(1299,'S??o Benedito do Rio Preto',10,'2019-06-12 18:10:11'),(1300,'S??o Bento',10,'2019-06-12 18:10:11'),(1301,'S??o Bernardo',10,'2019-06-12 18:10:11'),(1302,'S??o Domingos do Azeit??o',10,'2019-06-12 18:10:11'),(1303,'S??o Domingos do Maranh??o',10,'2019-06-12 18:10:11'),(1304,'S??o F??lix de Balsas',10,'2019-06-12 18:10:11'),(1305,'S??o Francisco do Brej??o',10,'2019-06-12 18:10:11'),(1306,'S??o Francisco do Maranh??o',10,'2019-06-12 18:10:11'),(1307,'S??o Jo??o Batista',10,'2019-06-12 18:10:11'),(1308,'S??o Jo??o do Car??',10,'2019-06-12 18:10:11'),(1309,'S??o Jo??o do Para??so',10,'2019-06-12 18:10:11'),(1310,'S??o Jo??o do Soter',10,'2019-06-12 18:10:11'),(1311,'S??o Jo??o dos Patos',10,'2019-06-12 18:10:11'),(1312,'S??o Jos?? de Ribamar',10,'2019-06-12 18:10:11'),(1313,'S??o Jos?? dos Bas??lios',10,'2019-06-12 18:10:11'),(1314,'S??o Lu??s',10,'2019-06-12 18:10:11'),(1315,'S??o Lu??s Gonzaga do Maranh??o',10,'2019-06-12 18:10:11'),(1316,'S??o Mateus do Maranh??o',10,'2019-06-12 18:10:11'),(1317,'S??o Pedro da ??gua Branca',10,'2019-06-12 18:10:11'),(1318,'S??o Pedro dos Crentes',10,'2019-06-12 18:10:11'),(1319,'S??o Raimundo das Mangabeiras',10,'2019-06-12 18:10:11'),(1320,'S??o Raimundo do Doca Bezerra',10,'2019-06-12 18:10:11'),(1321,'S??o Roberto',10,'2019-06-12 18:10:11'),(1322,'S??o Vicente Ferrer',10,'2019-06-12 18:10:11'),(1323,'Satubinha',10,'2019-06-12 18:10:11'),(1324,'Senador Alexandre Costa',10,'2019-06-12 18:10:11'),(1325,'Senador La Rocque',10,'2019-06-12 18:10:11'),(1326,'Serrano do Maranh??o',10,'2019-06-12 18:10:11'),(1327,'S??tio Novo',10,'2019-06-12 18:10:11'),(1328,'Sucupira do Norte',10,'2019-06-12 18:10:11'),(1329,'Sucupira do Riach??o',10,'2019-06-12 18:10:11'),(1330,'Tasso Fragoso',10,'2019-06-12 18:10:11'),(1331,'Timbiras',10,'2019-06-12 18:10:11'),(1332,'Timon',10,'2019-06-12 18:10:11'),(1333,'Trizidela do Vale',10,'2019-06-12 18:10:11'),(1334,'Tufil??ndia',10,'2019-06-12 18:10:11'),(1335,'Tuntum',10,'2019-06-12 18:10:11'),(1336,'Turia??u',10,'2019-06-12 18:10:11'),(1337,'Turil??ndia',10,'2019-06-12 18:10:11'),(1338,'Tut??ia',10,'2019-06-12 18:10:11'),(1339,'Urbano Santos',10,'2019-06-12 18:10:11'),(1340,'Vargem Grande',10,'2019-06-12 18:10:11'),(1341,'Viana',10,'2019-06-12 18:10:11'),(1342,'Vila Nova dos Mart??rios',10,'2019-06-12 18:10:11'),(1343,'Vit??ria do Mearim',10,'2019-06-12 18:10:11'),(1344,'Vitorino Freire',10,'2019-06-12 18:10:11'),(1345,'Z?? Doca',10,'2019-06-12 18:10:11'),(1346,'Acorizal',13,'2019-06-12 18:10:11'),(1347,'??gua Boa',13,'2019-06-12 18:10:11'),(1348,'Alta Floresta',13,'2019-06-12 18:10:11'),(1349,'Alto Araguaia',13,'2019-06-12 18:10:11'),(1350,'Alto Boa Vista',13,'2019-06-12 18:10:11'),(1351,'Alto Gar??as',13,'2019-06-12 18:10:11'),(1352,'Alto Paraguai',13,'2019-06-12 18:10:11'),(1353,'Alto Taquari',13,'2019-06-12 18:10:11'),(1354,'Apiac??s',13,'2019-06-12 18:10:11'),(1355,'Araguaiana',13,'2019-06-12 18:10:11'),(1356,'Araguainha',13,'2019-06-12 18:10:11'),(1357,'Araputanga',13,'2019-06-12 18:10:11'),(1358,'Aren??polis',13,'2019-06-12 18:10:11'),(1359,'Aripuan??',13,'2019-06-12 18:10:11'),(1360,'Bar??o de Melga??o',13,'2019-06-12 18:10:11'),(1361,'Barra do Bugres',13,'2019-06-12 18:10:11'),(1362,'Barra do Gar??as',13,'2019-06-12 18:10:11'),(1363,'Bom Jesus do Araguaia',13,'2019-06-12 18:10:11'),(1364,'Brasnorte',13,'2019-06-12 18:10:11'),(1365,'C??ceres',13,'2019-06-12 18:10:11'),(1366,'Campin??polis',13,'2019-06-12 18:10:11'),(1367,'Campo Novo do Parecis',13,'2019-06-12 18:10:11'),(1368,'Campo Verde',13,'2019-06-12 18:10:11'),(1369,'Campos de J??lio',13,'2019-06-12 18:10:11'),(1370,'Canabrava do Norte',13,'2019-06-12 18:10:11'),(1371,'Canarana',13,'2019-06-12 18:10:11'),(1372,'Carlinda',13,'2019-06-12 18:10:11'),(1373,'Castanheira',13,'2019-06-12 18:10:11'),(1374,'Chapada dos Guimar??es',13,'2019-06-12 18:10:11'),(1375,'Cl??udia',13,'2019-06-12 18:10:11'),(1376,'Cocalinho',13,'2019-06-12 18:10:11'),(1377,'Col??der',13,'2019-06-12 18:10:11'),(1378,'Colniza',13,'2019-06-12 18:10:11'),(1379,'Comodoro',13,'2019-06-12 18:10:11'),(1380,'Confresa',13,'2019-06-12 18:10:11'),(1381,'Conquista d`Oeste',13,'2019-06-12 18:10:11'),(1382,'Cotrigua??u',13,'2019-06-12 18:10:11'),(1383,'Cuiab??',13,'2019-06-12 18:10:11'),(1384,'Curvel??ndia',13,'2019-06-12 18:10:11'),(1385,'Curvel??ndia',13,'2019-06-12 18:10:11'),(1386,'Denise',13,'2019-06-12 18:10:11'),(1387,'Diamantino',13,'2019-06-12 18:10:11'),(1388,'Dom Aquino',13,'2019-06-12 18:10:11'),(1389,'Feliz Natal',13,'2019-06-12 18:10:11'),(1390,'Figueir??polis d`Oeste',13,'2019-06-12 18:10:11'),(1391,'Ga??cha do Norte',13,'2019-06-12 18:10:11'),(1392,'General Carneiro',13,'2019-06-12 18:10:11'),(1393,'Gl??ria d`Oeste',13,'2019-06-12 18:10:11'),(1394,'Guarant?? do Norte',13,'2019-06-12 18:10:11'),(1395,'Guiratinga',13,'2019-06-12 18:10:11'),(1396,'Indiava??',13,'2019-06-12 18:10:11'),(1397,'Ipiranga do Norte',13,'2019-06-12 18:10:11'),(1398,'Itanhang??',13,'2019-06-12 18:10:11'),(1399,'Ita??ba',13,'2019-06-12 18:10:11'),(1400,'Itiquira',13,'2019-06-12 18:10:11'),(1401,'Jaciara',13,'2019-06-12 18:10:11'),(1402,'Jangada',13,'2019-06-12 18:10:11'),(1403,'Jauru',13,'2019-06-12 18:10:11'),(1404,'Juara',13,'2019-06-12 18:10:11'),(1405,'Ju??na',13,'2019-06-12 18:10:11'),(1406,'Juruena',13,'2019-06-12 18:10:11'),(1407,'Juscimeira',13,'2019-06-12 18:10:11'),(1408,'Lambari d`Oeste',13,'2019-06-12 18:10:11'),(1409,'Lucas do Rio Verde',13,'2019-06-12 18:10:11'),(1410,'Luci??ra',13,'2019-06-12 18:10:11'),(1411,'Marcel??ndia',13,'2019-06-12 18:10:11'),(1412,'Matup??',13,'2019-06-12 18:10:11'),(1413,'Mirassol d`Oeste',13,'2019-06-12 18:10:11'),(1414,'Nobres',13,'2019-06-12 18:10:11'),(1415,'Nortel??ndia',13,'2019-06-12 18:10:11'),(1416,'Nossa Senhora do Livramento',13,'2019-06-12 18:10:11'),(1417,'Nova Bandeirantes',13,'2019-06-12 18:10:11'),(1418,'Nova Brasil??ndia',13,'2019-06-12 18:10:11'),(1419,'Nova Cana?? do Norte',13,'2019-06-12 18:10:11'),(1420,'Nova Guarita',13,'2019-06-12 18:10:11'),(1421,'Nova Lacerda',13,'2019-06-12 18:10:11'),(1422,'Nova Maril??ndia',13,'2019-06-12 18:10:11'),(1423,'Nova Maring??',13,'2019-06-12 18:10:11'),(1424,'Nova Monte verde',13,'2019-06-12 18:10:11'),(1425,'Nova Mutum',13,'2019-06-12 18:10:11'),(1426,'Nova Ol??mpia',13,'2019-06-12 18:10:11'),(1427,'Nova Santa Helena',13,'2019-06-12 18:10:11'),(1428,'Nova Ubirat??',13,'2019-06-12 18:10:11'),(1429,'Nova Xavantina',13,'2019-06-12 18:10:11'),(1430,'Novo Horizonte do Norte',13,'2019-06-12 18:10:11'),(1431,'Novo Mundo',13,'2019-06-12 18:10:11'),(1432,'Novo Santo Ant??nio',13,'2019-06-12 18:10:11'),(1433,'Novo S??o Joaquim',13,'2019-06-12 18:10:11'),(1434,'Parana??ta',13,'2019-06-12 18:10:11'),(1435,'Paranatinga',13,'2019-06-12 18:10:11'),(1436,'Pedra Preta',13,'2019-06-12 18:10:11'),(1437,'Peixoto de Azevedo',13,'2019-06-12 18:10:11'),(1438,'Planalto da Serra',13,'2019-06-12 18:10:11'),(1439,'Pocon??',13,'2019-06-12 18:10:11'),(1440,'Pontal do Araguaia',13,'2019-06-12 18:10:11'),(1441,'Ponte Branca',13,'2019-06-12 18:10:11'),(1442,'Pontes e Lacerda',13,'2019-06-12 18:10:11'),(1443,'Porto Alegre do Norte',13,'2019-06-12 18:10:11'),(1444,'Porto dos Ga??chos',13,'2019-06-12 18:10:11'),(1445,'Porto Esperidi??o',13,'2019-06-12 18:10:11'),(1446,'Porto Estrela',13,'2019-06-12 18:10:11'),(1447,'Poxor??o',13,'2019-06-12 18:10:11'),(1448,'Primavera do Leste',13,'2019-06-12 18:10:11'),(1449,'Quer??ncia',13,'2019-06-12 18:10:11'),(1450,'Reserva do Caba??al',13,'2019-06-12 18:10:11'),(1451,'Ribeir??o Cascalheira',13,'2019-06-12 18:10:11'),(1452,'Ribeir??ozinho',13,'2019-06-12 18:10:11'),(1453,'Rio Branco',13,'2019-06-12 18:10:11'),(1454,'Rondol??ndia',13,'2019-06-12 18:10:11'),(1455,'Rondon??polis',13,'2019-06-12 18:10:11'),(1456,'Ros??rio Oeste',13,'2019-06-12 18:10:11'),(1457,'Salto do C??u',13,'2019-06-12 18:10:11'),(1458,'Santa Carmem',13,'2019-06-12 18:10:11'),(1459,'Santa Cruz do Xingu',13,'2019-06-12 18:10:11'),(1460,'Santa Rita do Trivelato',13,'2019-06-12 18:10:11'),(1461,'Santa Terezinha',13,'2019-06-12 18:10:11'),(1462,'Santo Afonso',13,'2019-06-12 18:10:11'),(1463,'Santo Ant??nio do Leste',13,'2019-06-12 18:10:11'),(1464,'Santo Ant??nio do Leverger',13,'2019-06-12 18:10:11'),(1465,'S??o F??lix do Araguaia',13,'2019-06-12 18:10:11'),(1466,'S??o Jos?? do Povo',13,'2019-06-12 18:10:11'),(1467,'S??o Jos?? do Rio Claro',13,'2019-06-12 18:10:11'),(1468,'S??o Jos?? do Xingu',13,'2019-06-12 18:10:11'),(1469,'S??o Jos?? dos Quatro Marcos',13,'2019-06-12 18:10:11'),(1470,'S??o Pedro da Cipa',13,'2019-06-12 18:10:11'),(1471,'Sapezal',13,'2019-06-12 18:10:11'),(1472,'Serra Nova Dourada',13,'2019-06-12 18:10:11'),(1473,'Sinop',13,'2019-06-12 18:10:11'),(1474,'Sorriso',13,'2019-06-12 18:10:11'),(1475,'Tabapor??',13,'2019-06-12 18:10:11'),(1476,'Tangar?? da Serra',13,'2019-06-12 18:10:11'),(1477,'Tapurah',13,'2019-06-12 18:10:11'),(1478,'Terra Nova do Norte',13,'2019-06-12 18:10:11'),(1479,'Tesouro',13,'2019-06-12 18:10:11'),(1480,'Torixor??u',13,'2019-06-12 18:10:11'),(1481,'Uni??o do Sul',13,'2019-06-12 18:10:11'),(1482,'Vale de S??o Domingos',13,'2019-06-12 18:10:11'),(1483,'V??rzea Grande',13,'2019-06-12 18:10:11'),(1484,'Vera',13,'2019-06-12 18:10:11'),(1485,'Vila Bela da Sant??ssima Trindade',13,'2019-06-12 18:10:11'),(1486,'Vila Rica',13,'2019-06-12 18:10:11'),(1487,'??gua Clara',12,'2019-06-12 18:10:11'),(1488,'Alcin??polis',12,'2019-06-12 18:10:11'),(1489,'Amamba??',12,'2019-06-12 18:10:11'),(1490,'Anast??cio',12,'2019-06-12 18:10:11'),(1491,'Anauril??ndia',12,'2019-06-12 18:10:11'),(1492,'Ang??lica',12,'2019-06-12 18:10:11'),(1493,'Ant??nio Jo??o',12,'2019-06-12 18:10:11'),(1494,'Aparecida do Taboado',12,'2019-06-12 18:10:11'),(1495,'Aquidauana',12,'2019-06-12 18:10:11'),(1496,'Aral Moreira',12,'2019-06-12 18:10:11'),(1497,'Bandeirantes',12,'2019-06-12 18:10:11'),(1498,'Bataguassu',12,'2019-06-12 18:10:11'),(1499,'Bataipor??',12,'2019-06-12 18:10:11'),(1500,'Bela Vista',12,'2019-06-12 18:10:11'),(1501,'Bodoquena',12,'2019-06-12 18:10:11'),(1502,'Bonito',12,'2019-06-12 18:10:11'),(1503,'Brasil??ndia',12,'2019-06-12 18:10:11'),(1504,'Caarap??',12,'2019-06-12 18:10:11'),(1505,'Camapu??',12,'2019-06-12 18:10:11'),(1506,'Campo Grande',12,'2019-06-12 18:10:11'),(1507,'Caracol',12,'2019-06-12 18:10:11'),(1508,'Cassil??ndia',12,'2019-06-12 18:10:11'),(1509,'Chapad??o do Sul',12,'2019-06-12 18:10:11'),(1510,'Corguinho',12,'2019-06-12 18:10:11'),(1511,'Coronel Sapucaia',12,'2019-06-12 18:10:11'),(1512,'Corumb??',12,'2019-06-12 18:10:11'),(1513,'Costa Rica',12,'2019-06-12 18:10:11'),(1514,'Coxim',12,'2019-06-12 18:10:11'),(1515,'Deod??polis',12,'2019-06-12 18:10:11'),(1516,'Dois Irm??os do Buriti',12,'2019-06-12 18:10:11'),(1517,'Douradina',12,'2019-06-12 18:10:11'),(1518,'Dourados',12,'2019-06-12 18:10:11'),(1519,'Eldorado',12,'2019-06-12 18:10:11'),(1520,'F??tima do Sul',12,'2019-06-12 18:10:11'),(1521,'Figueir??o',12,'2019-06-12 18:10:11'),(1522,'Gl??ria de Dourados',12,'2019-06-12 18:10:11'),(1523,'Guia Lopes da Laguna',12,'2019-06-12 18:10:11'),(1524,'Iguatemi',12,'2019-06-12 18:10:11'),(1525,'Inoc??ncia',12,'2019-06-12 18:10:11'),(1526,'Itapor??',12,'2019-06-12 18:10:11'),(1527,'Itaquira??',12,'2019-06-12 18:10:11'),(1528,'Ivinhema',12,'2019-06-12 18:10:11'),(1529,'Japor??',12,'2019-06-12 18:10:11'),(1530,'Jaraguari',12,'2019-06-12 18:10:11'),(1531,'Jardim',12,'2019-06-12 18:10:11'),(1532,'Jate??',12,'2019-06-12 18:10:11'),(1533,'Juti',12,'2019-06-12 18:10:11'),(1534,'Lad??rio',12,'2019-06-12 18:10:11'),(1535,'Laguna Carap??',12,'2019-06-12 18:10:11'),(1536,'Maracaju',12,'2019-06-12 18:10:11'),(1537,'Miranda',12,'2019-06-12 18:10:11'),(1538,'Mundo Novo',12,'2019-06-12 18:10:11'),(1539,'Navira??',12,'2019-06-12 18:10:11'),(1540,'Nioaque',12,'2019-06-12 18:10:11'),(1541,'Nova Alvorada do Sul',12,'2019-06-12 18:10:11'),(1542,'Nova Andradina',12,'2019-06-12 18:10:11'),(1543,'Novo Horizonte do Sul',12,'2019-06-12 18:10:11'),(1544,'Parana??ba',12,'2019-06-12 18:10:11'),(1545,'Paranhos',12,'2019-06-12 18:10:11'),(1546,'Pedro Gomes',12,'2019-06-12 18:10:11'),(1547,'Ponta Por??',12,'2019-06-12 18:10:11'),(1548,'Porto Murtinho',12,'2019-06-12 18:10:11'),(1549,'Ribas do Rio Pardo',12,'2019-06-12 18:10:11'),(1550,'Rio Brilhante',12,'2019-06-12 18:10:11'),(1551,'Rio Negro',12,'2019-06-12 18:10:11'),(1552,'Rio Verde de Mato Grosso',12,'2019-06-12 18:10:11'),(1553,'Rochedo',12,'2019-06-12 18:10:11'),(1554,'Santa Rita do Pardo',12,'2019-06-12 18:10:11'),(1555,'S??o Gabriel do Oeste',12,'2019-06-12 18:10:11'),(1556,'Selv??ria',12,'2019-06-12 18:10:11'),(1557,'Sete Quedas',12,'2019-06-12 18:10:11'),(1558,'Sidrol??ndia',12,'2019-06-12 18:10:11'),(1559,'Sonora',12,'2019-06-12 18:10:11'),(1560,'Tacuru',12,'2019-06-12 18:10:11'),(1561,'Taquarussu',12,'2019-06-12 18:10:11'),(1562,'Terenos',12,'2019-06-12 18:10:11'),(1563,'Tr??s Lagoas',12,'2019-06-12 18:10:11'),(1564,'Vicentina',12,'2019-06-12 18:10:11'),(1565,'Abadia dos Dourados',11,'2019-06-12 18:10:11'),(1566,'Abaet??',11,'2019-06-12 18:10:11'),(1567,'Abre Campo',11,'2019-06-12 18:10:11'),(1568,'Acaiaca',11,'2019-06-12 18:10:11'),(1569,'A??ucena',11,'2019-06-12 18:10:11'),(1570,'??gua Boa',11,'2019-06-12 18:10:11'),(1571,'??gua Comprida',11,'2019-06-12 18:10:11'),(1572,'Aguanil',11,'2019-06-12 18:10:11'),(1573,'??guas Formosas',11,'2019-06-12 18:10:11'),(1574,'??guas Vermelhas',11,'2019-06-12 18:10:11'),(1575,'Aimor??s',11,'2019-06-12 18:10:11'),(1576,'Aiuruoca',11,'2019-06-12 18:10:11'),(1577,'Alagoa',11,'2019-06-12 18:10:11'),(1578,'Albertina',11,'2019-06-12 18:10:11'),(1579,'Al??m Para??ba',11,'2019-06-12 18:10:11'),(1580,'Alfenas',11,'2019-06-12 18:10:11'),(1581,'Alfredo Vasconcelos',11,'2019-06-12 18:10:11'),(1582,'Almenara',11,'2019-06-12 18:10:11'),(1583,'Alpercata',11,'2019-06-12 18:10:11'),(1584,'Alpin??polis',11,'2019-06-12 18:10:11'),(1585,'Alterosa',11,'2019-06-12 18:10:11'),(1586,'Alto Capara??',11,'2019-06-12 18:10:11'),(1587,'Alto Jequitib??',11,'2019-06-12 18:10:11'),(1588,'Alto Rio Doce',11,'2019-06-12 18:10:11'),(1589,'Alvarenga',11,'2019-06-12 18:10:11'),(1590,'Alvin??polis',11,'2019-06-12 18:10:11'),(1591,'Alvorada de Minas',11,'2019-06-12 18:10:11'),(1592,'Amparo do Serra',11,'2019-06-12 18:10:11'),(1593,'Andradas',11,'2019-06-12 18:10:11'),(1594,'Andrel??ndia',11,'2019-06-12 18:10:11'),(1595,'Angel??ndia',11,'2019-06-12 18:10:11'),(1596,'Ant??nio Carlos',11,'2019-06-12 18:10:11'),(1597,'Ant??nio Dias',11,'2019-06-12 18:10:11'),(1598,'Ant??nio Prado de Minas',11,'2019-06-12 18:10:11'),(1599,'Ara??a??',11,'2019-06-12 18:10:11'),(1600,'Aracitaba',11,'2019-06-12 18:10:11'),(1601,'Ara??ua??',11,'2019-06-12 18:10:11'),(1602,'Araguari',11,'2019-06-12 18:10:11'),(1603,'Arantina',11,'2019-06-12 18:10:11'),(1604,'Araponga',11,'2019-06-12 18:10:11'),(1605,'Arapor??',11,'2019-06-12 18:10:11'),(1606,'Arapu??',11,'2019-06-12 18:10:11'),(1607,'Ara??jos',11,'2019-06-12 18:10:11'),(1608,'Arax??',11,'2019-06-12 18:10:11'),(1609,'Arceburgo',11,'2019-06-12 18:10:11'),(1610,'Arcos',11,'2019-06-12 18:10:11'),(1611,'Areado',11,'2019-06-12 18:10:11'),(1612,'Argirita',11,'2019-06-12 18:10:11'),(1613,'Aricanduva',11,'2019-06-12 18:10:11'),(1614,'Arinos',11,'2019-06-12 18:10:11'),(1615,'Astolfo Dutra',11,'2019-06-12 18:10:11'),(1616,'Atal??ia',11,'2019-06-12 18:10:11'),(1617,'Augusto de Lima',11,'2019-06-12 18:10:11'),(1618,'Baependi',11,'2019-06-12 18:10:11'),(1619,'Baldim',11,'2019-06-12 18:10:11'),(1620,'Bambu??',11,'2019-06-12 18:10:11'),(1621,'Bandeira',11,'2019-06-12 18:10:11'),(1622,'Bandeira do Sul',11,'2019-06-12 18:10:11'),(1623,'Bar??o de Cocais',11,'2019-06-12 18:10:11'),(1624,'Bar??o de Monte Alto',11,'2019-06-12 18:10:11'),(1625,'Barbacena',11,'2019-06-12 18:10:11'),(1626,'Barra Longa',11,'2019-06-12 18:10:11'),(1627,'Barroso',11,'2019-06-12 18:10:11'),(1628,'Bela Vista de Minas',11,'2019-06-12 18:10:11'),(1629,'Belmiro Braga',11,'2019-06-12 18:10:11'),(1630,'Belo Horizonte',11,'2019-06-12 18:10:11'),(1631,'Belo Oriente',11,'2019-06-12 18:10:11'),(1632,'Belo Vale',11,'2019-06-12 18:10:11'),(1633,'Berilo',11,'2019-06-12 18:10:11'),(1634,'Berizal',11,'2019-06-12 18:10:11'),(1635,'Bert??polis',11,'2019-06-12 18:10:11'),(1636,'Betim',11,'2019-06-12 18:10:11'),(1637,'Bias Fortes',11,'2019-06-12 18:10:11'),(1638,'Bicas',11,'2019-06-12 18:10:11'),(1639,'Biquinhas',11,'2019-06-12 18:10:11'),(1640,'Boa Esperan??a',11,'2019-06-12 18:10:11'),(1641,'Bocaina de Minas',11,'2019-06-12 18:10:11'),(1642,'Bocai??va',11,'2019-06-12 18:10:11'),(1643,'Bom Despacho',11,'2019-06-12 18:10:11'),(1644,'Bom Jardim de Minas',11,'2019-06-12 18:10:11'),(1645,'Bom Jesus da Penha',11,'2019-06-12 18:10:11'),(1646,'Bom Jesus do Amparo',11,'2019-06-12 18:10:11'),(1647,'Bom Jesus do Galho',11,'2019-06-12 18:10:11'),(1648,'Bom Repouso',11,'2019-06-12 18:10:11'),(1649,'Bom Sucesso',11,'2019-06-12 18:10:11'),(1650,'Bonfim',11,'2019-06-12 18:10:11'),(1651,'Bonfin??polis de Minas',11,'2019-06-12 18:10:11'),(1652,'Bonito de Minas',11,'2019-06-12 18:10:11'),(1653,'Borda da Mata',11,'2019-06-12 18:10:11'),(1654,'Botelhos',11,'2019-06-12 18:10:11'),(1655,'Botumirim',11,'2019-06-12 18:10:11'),(1656,'Br??s Pires',11,'2019-06-12 18:10:11'),(1657,'Brasil??ndia de Minas',11,'2019-06-12 18:10:11'),(1658,'Bras??lia de Minas',11,'2019-06-12 18:10:11'),(1659,'Bras??polis',11,'2019-06-12 18:10:11'),(1660,'Bra??nas',11,'2019-06-12 18:10:11'),(1661,'Brumadinho',11,'2019-06-12 18:10:11'),(1662,'Bueno Brand??o',11,'2019-06-12 18:10:11'),(1663,'Buen??polis',11,'2019-06-12 18:10:11'),(1664,'Bugre',11,'2019-06-12 18:10:11'),(1665,'Buritis',11,'2019-06-12 18:10:11'),(1666,'Buritizeiro',11,'2019-06-12 18:10:11'),(1667,'Cabeceira Grande',11,'2019-06-12 18:10:11'),(1668,'Cabo Verde',11,'2019-06-12 18:10:11'),(1669,'Cachoeira da Prata',11,'2019-06-12 18:10:11'),(1670,'Cachoeira de Minas',11,'2019-06-12 18:10:11'),(1671,'Cachoeira de Paje??',11,'2019-06-12 18:10:11'),(1672,'Cachoeira Dourada',11,'2019-06-12 18:10:11'),(1673,'Caetan??polis',11,'2019-06-12 18:10:11'),(1674,'Caet??',11,'2019-06-12 18:10:11'),(1675,'Caiana',11,'2019-06-12 18:10:11'),(1676,'Cajuri',11,'2019-06-12 18:10:11'),(1677,'Caldas',11,'2019-06-12 18:10:11'),(1678,'Camacho',11,'2019-06-12 18:10:11'),(1679,'Camanducaia',11,'2019-06-12 18:10:11'),(1680,'Cambu??',11,'2019-06-12 18:10:11'),(1681,'Cambuquira',11,'2019-06-12 18:10:11'),(1682,'Campan??rio',11,'2019-06-12 18:10:11'),(1683,'Campanha',11,'2019-06-12 18:10:11'),(1684,'Campestre',11,'2019-06-12 18:10:11'),(1685,'Campina Verde',11,'2019-06-12 18:10:11'),(1686,'Campo Azul',11,'2019-06-12 18:10:11'),(1687,'Campo Belo',11,'2019-06-12 18:10:11'),(1688,'Campo do Meio',11,'2019-06-12 18:10:11'),(1689,'Campo Florido',11,'2019-06-12 18:10:11'),(1690,'Campos Altos',11,'2019-06-12 18:10:11'),(1691,'Campos Gerais',11,'2019-06-12 18:10:11'),(1692,'Cana Verde',11,'2019-06-12 18:10:11'),(1693,'Cana??',11,'2019-06-12 18:10:11'),(1694,'Can??polis',11,'2019-06-12 18:10:11'),(1695,'Candeias',11,'2019-06-12 18:10:11'),(1696,'Cantagalo',11,'2019-06-12 18:10:11'),(1697,'Capara??',11,'2019-06-12 18:10:11'),(1698,'Capela Nova',11,'2019-06-12 18:10:11'),(1699,'Capelinha',11,'2019-06-12 18:10:11'),(1700,'Capetinga',11,'2019-06-12 18:10:11'),(1701,'Capim Branco',11,'2019-06-12 18:10:11'),(1702,'Capin??polis',11,'2019-06-12 18:10:11'),(1703,'Capit??o Andrade',11,'2019-06-12 18:10:11'),(1704,'Capit??o En??as',11,'2019-06-12 18:10:11'),(1705,'Capit??lio',11,'2019-06-12 18:10:11'),(1706,'Caputira',11,'2019-06-12 18:10:11'),(1707,'Cara??',11,'2019-06-12 18:10:11'),(1708,'Carana??ba',11,'2019-06-12 18:10:11'),(1709,'Caranda??',11,'2019-06-12 18:10:11'),(1710,'Carangola',11,'2019-06-12 18:10:11'),(1711,'Caratinga',11,'2019-06-12 18:10:11'),(1712,'Carbonita',11,'2019-06-12 18:10:11'),(1713,'Carea??u',11,'2019-06-12 18:10:11'),(1714,'Carlos Chagas',11,'2019-06-12 18:10:11'),(1715,'Carm??sia',11,'2019-06-12 18:10:11'),(1716,'Carmo da Cachoeira',11,'2019-06-12 18:10:11'),(1717,'Carmo da Mata',11,'2019-06-12 18:10:11'),(1718,'Carmo de Minas',11,'2019-06-12 18:10:11'),(1719,'Carmo do Cajuru',11,'2019-06-12 18:10:11'),(1720,'Carmo do Parana??ba',11,'2019-06-12 18:10:11'),(1721,'Carmo do Rio Claro',11,'2019-06-12 18:10:11'),(1722,'Carm??polis de Minas',11,'2019-06-12 18:10:11'),(1723,'Carneirinho',11,'2019-06-12 18:10:11'),(1724,'Carrancas',11,'2019-06-12 18:10:11'),(1725,'Carvalh??polis',11,'2019-06-12 18:10:11'),(1726,'Carvalhos',11,'2019-06-12 18:10:11'),(1727,'Casa Grande',11,'2019-06-12 18:10:11'),(1728,'Cascalho Rico',11,'2019-06-12 18:10:11'),(1729,'C??ssia',11,'2019-06-12 18:10:11'),(1730,'Cataguases',11,'2019-06-12 18:10:11'),(1731,'Catas Altas',11,'2019-06-12 18:10:11'),(1732,'Catas Altas da Noruega',11,'2019-06-12 18:10:11'),(1733,'Catuji',11,'2019-06-12 18:10:11'),(1734,'Catuti',11,'2019-06-12 18:10:11'),(1735,'Caxambu',11,'2019-06-12 18:10:11'),(1736,'Cedro do Abaet??',11,'2019-06-12 18:10:11'),(1737,'Central de Minas',11,'2019-06-12 18:10:11'),(1738,'Centralina',11,'2019-06-12 18:10:11'),(1739,'Ch??cara',11,'2019-06-12 18:10:11'),(1740,'Chal??',11,'2019-06-12 18:10:11'),(1741,'Chapada do Norte',11,'2019-06-12 18:10:11'),(1742,'Chapada Ga??cha',11,'2019-06-12 18:10:11'),(1743,'Chiador',11,'2019-06-12 18:10:11'),(1744,'Cipot??nea',11,'2019-06-12 18:10:11'),(1745,'Claraval',11,'2019-06-12 18:10:11'),(1746,'Claro dos Po????es',11,'2019-06-12 18:10:11'),(1747,'Cl??udio',11,'2019-06-12 18:10:11'),(1748,'Coimbra',11,'2019-06-12 18:10:11'),(1749,'Coluna',11,'2019-06-12 18:10:11'),(1750,'Comendador Gomes',11,'2019-06-12 18:10:11'),(1751,'Comercinho',11,'2019-06-12 18:10:11'),(1752,'Concei????o da Aparecida',11,'2019-06-12 18:10:11'),(1753,'Concei????o da Barra de Minas',11,'2019-06-12 18:10:11'),(1754,'Concei????o das Alagoas',11,'2019-06-12 18:10:11'),(1755,'Concei????o das Pedras',11,'2019-06-12 18:10:11'),(1756,'Concei????o de Ipanema',11,'2019-06-12 18:10:11'),(1757,'Concei????o do Mato Dentro',11,'2019-06-12 18:10:11'),(1758,'Concei????o do Par??',11,'2019-06-12 18:10:11'),(1759,'Concei????o do Rio Verde',11,'2019-06-12 18:10:11'),(1760,'Concei????o dos Ouros',11,'2019-06-12 18:10:11'),(1761,'C??nego Marinho',11,'2019-06-12 18:10:11'),(1762,'Confins',11,'2019-06-12 18:10:11'),(1763,'Congonhal',11,'2019-06-12 18:10:11'),(1764,'Congonhas',11,'2019-06-12 18:10:11'),(1765,'Congonhas do Norte',11,'2019-06-12 18:10:11'),(1766,'Conquista',11,'2019-06-12 18:10:11'),(1767,'Conselheiro Lafaiete',11,'2019-06-12 18:10:11'),(1768,'Conselheiro Pena',11,'2019-06-12 18:10:11'),(1769,'Consola????o',11,'2019-06-12 18:10:11'),(1770,'Contagem',11,'2019-06-12 18:10:11'),(1771,'Coqueiral',11,'2019-06-12 18:10:11'),(1772,'Cora????o de Jesus',11,'2019-06-12 18:10:11'),(1773,'Cordisburgo',11,'2019-06-12 18:10:11'),(1774,'Cordisl??ndia',11,'2019-06-12 18:10:11'),(1775,'Corinto',11,'2019-06-12 18:10:11'),(1776,'Coroaci',11,'2019-06-12 18:10:11'),(1777,'Coromandel',11,'2019-06-12 18:10:11'),(1778,'Coronel Fabriciano',11,'2019-06-12 18:10:11'),(1779,'Coronel Murta',11,'2019-06-12 18:10:11'),(1780,'Coronel Pacheco',11,'2019-06-12 18:10:11'),(1781,'Coronel Xavier Chaves',11,'2019-06-12 18:10:11'),(1782,'C??rrego Danta',11,'2019-06-12 18:10:11'),(1783,'C??rrego do Bom Jesus',11,'2019-06-12 18:10:11'),(1784,'C??rrego Fundo',11,'2019-06-12 18:10:11'),(1785,'C??rrego Novo',11,'2019-06-12 18:10:11'),(1786,'Couto de Magalh??es de Minas',11,'2019-06-12 18:10:11'),(1787,'Cris??lita',11,'2019-06-12 18:10:11'),(1788,'Cristais',11,'2019-06-12 18:10:11'),(1789,'Crist??lia',11,'2019-06-12 18:10:11'),(1790,'Cristiano Otoni',11,'2019-06-12 18:10:11'),(1791,'Cristina',11,'2019-06-12 18:10:11'),(1792,'Crucil??ndia',11,'2019-06-12 18:10:11'),(1793,'Cruzeiro da Fortaleza',11,'2019-06-12 18:10:11'),(1794,'Cruz??lia',11,'2019-06-12 18:10:11'),(1795,'Cuparaque',11,'2019-06-12 18:10:11'),(1796,'Curral de Dentro',11,'2019-06-12 18:10:11'),(1797,'Curvelo',11,'2019-06-12 18:10:11'),(1798,'Datas',11,'2019-06-12 18:10:11'),(1799,'Delfim Moreira',11,'2019-06-12 18:10:11'),(1800,'Delfin??polis',11,'2019-06-12 18:10:11'),(1801,'Delta',11,'2019-06-12 18:10:11'),(1802,'Descoberto',11,'2019-06-12 18:10:11'),(1803,'Desterro de Entre Rios',11,'2019-06-12 18:10:11'),(1804,'Desterro do Melo',11,'2019-06-12 18:10:11'),(1805,'Diamantina',11,'2019-06-12 18:10:11'),(1806,'Diogo de Vasconcelos',11,'2019-06-12 18:10:11'),(1807,'Dion??sio',11,'2019-06-12 18:10:11'),(1808,'Divin??sia',11,'2019-06-12 18:10:11'),(1809,'Divino',11,'2019-06-12 18:10:11'),(1810,'Divino das Laranjeiras',11,'2019-06-12 18:10:11'),(1811,'Divinol??ndia de Minas',11,'2019-06-12 18:10:11'),(1812,'Divin??polis',11,'2019-06-12 18:10:11'),(1813,'Divisa Alegre',11,'2019-06-12 18:10:11'),(1814,'Divisa Nova',11,'2019-06-12 18:10:11'),(1815,'Divis??polis',11,'2019-06-12 18:10:11'),(1816,'Dom Bosco',11,'2019-06-12 18:10:11'),(1817,'Dom Cavati',11,'2019-06-12 18:10:11'),(1818,'Dom Joaquim',11,'2019-06-12 18:10:11'),(1819,'Dom Silv??rio',11,'2019-06-12 18:10:11'),(1820,'Dom Vi??oso',11,'2019-06-12 18:10:11'),(1821,'Dona Eus??bia',11,'2019-06-12 18:10:11'),(1822,'Dores de Campos',11,'2019-06-12 18:10:11'),(1823,'Dores de Guanh??es',11,'2019-06-12 18:10:11'),(1824,'Dores do Indai??',11,'2019-06-12 18:10:11'),(1825,'Dores do Turvo',11,'2019-06-12 18:10:11'),(1826,'Dores??polis',11,'2019-06-12 18:10:11'),(1827,'Douradoquara',11,'2019-06-12 18:10:11'),(1828,'Durand??',11,'2019-06-12 18:10:11'),(1829,'El??i Mendes',11,'2019-06-12 18:10:11'),(1830,'Engenheiro Caldas',11,'2019-06-12 18:10:11'),(1831,'Engenheiro Navarro',11,'2019-06-12 18:10:11'),(1832,'Entre Folhas',11,'2019-06-12 18:10:11'),(1833,'Entre Rios de Minas',11,'2019-06-12 18:10:11'),(1834,'Erv??lia',11,'2019-06-12 18:10:11'),(1835,'Esmeraldas',11,'2019-06-12 18:10:11'),(1836,'Espera Feliz',11,'2019-06-12 18:10:11'),(1837,'Espinosa',11,'2019-06-12 18:10:11'),(1838,'Esp??rito Santo do Dourado',11,'2019-06-12 18:10:11'),(1839,'Estiva',11,'2019-06-12 18:10:11'),(1840,'Estrela Dalva',11,'2019-06-12 18:10:11'),(1841,'Estrela do Indai??',11,'2019-06-12 18:10:11'),(1842,'Estrela do Sul',11,'2019-06-12 18:10:11'),(1843,'Eugen??polis',11,'2019-06-12 18:10:11'),(1844,'Ewbank da C??mara',11,'2019-06-12 18:10:11'),(1845,'Extrema',11,'2019-06-12 18:10:11'),(1846,'Fama',11,'2019-06-12 18:10:11'),(1847,'Faria Lemos',11,'2019-06-12 18:10:11'),(1848,'Fel??cio dos Santos',11,'2019-06-12 18:10:11'),(1849,'Felisburgo',11,'2019-06-12 18:10:11'),(1850,'Felixl??ndia',11,'2019-06-12 18:10:11'),(1851,'Fernandes Tourinho',11,'2019-06-12 18:10:11'),(1852,'Ferros',11,'2019-06-12 18:10:11'),(1853,'Fervedouro',11,'2019-06-12 18:10:11'),(1854,'Florestal',11,'2019-06-12 18:10:11'),(1855,'Formiga',11,'2019-06-12 18:10:11'),(1856,'Formoso',11,'2019-06-12 18:10:11'),(1857,'Fortaleza de Minas',11,'2019-06-12 18:10:11'),(1858,'Fortuna de Minas',11,'2019-06-12 18:10:11'),(1859,'Francisco Badar??',11,'2019-06-12 18:10:11'),(1860,'Francisco Dumont',11,'2019-06-12 18:10:11'),(1861,'Francisco S??',11,'2019-06-12 18:10:11'),(1862,'Francisc??polis',11,'2019-06-12 18:10:11'),(1863,'Frei Gaspar',11,'2019-06-12 18:10:11'),(1864,'Frei Inoc??ncio',11,'2019-06-12 18:10:11'),(1865,'Frei Lagonegro',11,'2019-06-12 18:10:11'),(1866,'Fronteira',11,'2019-06-12 18:10:11'),(1867,'Fronteira dos Vales',11,'2019-06-12 18:10:11'),(1868,'Fruta de Leite',11,'2019-06-12 18:10:11'),(1869,'Frutal',11,'2019-06-12 18:10:11'),(1870,'Funil??ndia',11,'2019-06-12 18:10:11'),(1871,'Galil??ia',11,'2019-06-12 18:10:11'),(1872,'Gameleiras',11,'2019-06-12 18:10:11'),(1873,'Glaucil??ndia',11,'2019-06-12 18:10:11'),(1874,'Goiabeira',11,'2019-06-12 18:10:11'),(1875,'Goian??',11,'2019-06-12 18:10:11'),(1876,'Gon??alves',11,'2019-06-12 18:10:11'),(1877,'Gonzaga',11,'2019-06-12 18:10:11'),(1878,'Gouveia',11,'2019-06-12 18:10:11'),(1879,'Governador Valadares',11,'2019-06-12 18:10:11'),(1880,'Gr??o Mogol',11,'2019-06-12 18:10:11'),(1881,'Grupiara',11,'2019-06-12 18:10:11'),(1882,'Guanh??es',11,'2019-06-12 18:10:11'),(1883,'Guap??',11,'2019-06-12 18:10:11'),(1884,'Guaraciaba',11,'2019-06-12 18:10:11'),(1885,'Guaraciama',11,'2019-06-12 18:10:11'),(1886,'Guaran??sia',11,'2019-06-12 18:10:11'),(1887,'Guarani',11,'2019-06-12 18:10:11'),(1888,'Guarar??',11,'2019-06-12 18:10:11'),(1889,'Guarda-Mor',11,'2019-06-12 18:10:11'),(1890,'Guaxup??',11,'2019-06-12 18:10:11'),(1891,'Guidoval',11,'2019-06-12 18:10:11'),(1892,'Guimar??nia',11,'2019-06-12 18:10:11'),(1893,'Guiricema',11,'2019-06-12 18:10:11'),(1894,'Gurinhat??',11,'2019-06-12 18:10:11'),(1895,'Heliodora',11,'2019-06-12 18:10:11'),(1896,'Iapu',11,'2019-06-12 18:10:11'),(1897,'Ibertioga',11,'2019-06-12 18:10:11'),(1898,'Ibi??',11,'2019-06-12 18:10:11'),(1899,'Ibia??',11,'2019-06-12 18:10:11'),(1900,'Ibiracatu',11,'2019-06-12 18:10:11'),(1901,'Ibiraci',11,'2019-06-12 18:10:11'),(1902,'Ibirit??',11,'2019-06-12 18:10:11'),(1903,'Ibiti??ra de Minas',11,'2019-06-12 18:10:11'),(1904,'Ibituruna',11,'2019-06-12 18:10:11'),(1905,'Icara?? de Minas',11,'2019-06-12 18:10:11'),(1906,'Igarap??',11,'2019-06-12 18:10:11'),(1907,'Igaratinga',11,'2019-06-12 18:10:11'),(1908,'Iguatama',11,'2019-06-12 18:10:11'),(1909,'Ijaci',11,'2019-06-12 18:10:11'),(1910,'Ilic??nea',11,'2019-06-12 18:10:11'),(1911,'Imb?? de Minas',11,'2019-06-12 18:10:11'),(1912,'Inconfidentes',11,'2019-06-12 18:10:11'),(1913,'Indaiabira',11,'2019-06-12 18:10:11'),(1914,'Indian??polis',11,'2019-06-12 18:10:11'),(1915,'Inga??',11,'2019-06-12 18:10:11'),(1916,'Inhapim',11,'2019-06-12 18:10:11'),(1917,'Inha??ma',11,'2019-06-12 18:10:11'),(1918,'Inimutaba',11,'2019-06-12 18:10:11'),(1919,'Ipaba',11,'2019-06-12 18:10:11'),(1920,'Ipanema',11,'2019-06-12 18:10:11'),(1921,'Ipatinga',11,'2019-06-12 18:10:11'),(1922,'Ipia??u',11,'2019-06-12 18:10:11'),(1923,'Ipui??na',11,'2019-06-12 18:10:11'),(1924,'Ira?? de Minas',11,'2019-06-12 18:10:11'),(1925,'Itabira',11,'2019-06-12 18:10:11'),(1926,'Itabirinha de Mantena',11,'2019-06-12 18:10:11'),(1927,'Itabirito',11,'2019-06-12 18:10:11'),(1928,'Itacambira',11,'2019-06-12 18:10:11'),(1929,'Itacarambi',11,'2019-06-12 18:10:11'),(1930,'Itaguara',11,'2019-06-12 18:10:11'),(1931,'Itaip??',11,'2019-06-12 18:10:11'),(1932,'Itajub??',11,'2019-06-12 18:10:11'),(1933,'Itamarandiba',11,'2019-06-12 18:10:11'),(1934,'Itamarati de Minas',11,'2019-06-12 18:10:11'),(1935,'Itambacuri',11,'2019-06-12 18:10:11'),(1936,'Itamb?? do Mato Dentro',11,'2019-06-12 18:10:11'),(1937,'Itamogi',11,'2019-06-12 18:10:11'),(1938,'Itamonte',11,'2019-06-12 18:10:11'),(1939,'Itanhandu',11,'2019-06-12 18:10:11'),(1940,'Itanhomi',11,'2019-06-12 18:10:11'),(1941,'Itaobim',11,'2019-06-12 18:10:11'),(1942,'Itapagipe',11,'2019-06-12 18:10:11'),(1943,'Itapecerica',11,'2019-06-12 18:10:11'),(1944,'Itapeva',11,'2019-06-12 18:10:11'),(1945,'Itatiaiu??u',11,'2019-06-12 18:10:11'),(1946,'Ita?? de Minas',11,'2019-06-12 18:10:11'),(1947,'Ita??na',11,'2019-06-12 18:10:11'),(1948,'Itaverava',11,'2019-06-12 18:10:11'),(1949,'Itinga',11,'2019-06-12 18:10:11'),(1950,'Itueta',11,'2019-06-12 18:10:11'),(1951,'Ituiutaba',11,'2019-06-12 18:10:11'),(1952,'Itumirim',11,'2019-06-12 18:10:11'),(1953,'Iturama',11,'2019-06-12 18:10:11'),(1954,'Itutinga',11,'2019-06-12 18:10:11'),(1955,'Jaboticatubas',11,'2019-06-12 18:10:11'),(1956,'Jacinto',11,'2019-06-12 18:10:11'),(1957,'Jacu??',11,'2019-06-12 18:10:11'),(1958,'Jacutinga',11,'2019-06-12 18:10:11'),(1959,'Jaguara??u',11,'2019-06-12 18:10:11'),(1960,'Ja??ba',11,'2019-06-12 18:10:11'),(1961,'Jampruca',11,'2019-06-12 18:10:11'),(1962,'Jana??ba',11,'2019-06-12 18:10:11'),(1963,'Janu??ria',11,'2019-06-12 18:10:11'),(1964,'Japara??ba',11,'2019-06-12 18:10:11'),(1965,'Japonvar',11,'2019-06-12 18:10:11'),(1966,'Jeceaba',11,'2019-06-12 18:10:11'),(1967,'Jenipapo de Minas',11,'2019-06-12 18:10:11'),(1968,'Jequeri',11,'2019-06-12 18:10:11'),(1969,'Jequita??',11,'2019-06-12 18:10:11'),(1970,'Jequitib??',11,'2019-06-12 18:10:11'),(1971,'Jequitinhonha',11,'2019-06-12 18:10:11'),(1972,'Jesu??nia',11,'2019-06-12 18:10:11'),(1973,'Joa??ma',11,'2019-06-12 18:10:11'),(1974,'Joan??sia',11,'2019-06-12 18:10:11'),(1975,'Jo??o Monlevade',11,'2019-06-12 18:10:11'),(1976,'Jo??o Pinheiro',11,'2019-06-12 18:10:11'),(1977,'Joaquim Fel??cio',11,'2019-06-12 18:10:11'),(1978,'Jord??nia',11,'2019-06-12 18:10:11'),(1979,'Jos?? Gon??alves de Minas',11,'2019-06-12 18:10:11'),(1980,'Jos?? Raydan',11,'2019-06-12 18:10:11'),(1981,'Josen??polis',11,'2019-06-12 18:10:11'),(1982,'Juatuba',11,'2019-06-12 18:10:11'),(1983,'Juiz de Fora',11,'2019-06-12 18:10:11'),(1984,'Juramento',11,'2019-06-12 18:10:11'),(1985,'Juruaia',11,'2019-06-12 18:10:11'),(1986,'Juven??lia',11,'2019-06-12 18:10:11'),(1987,'Ladainha',11,'2019-06-12 18:10:11'),(1988,'Lagamar',11,'2019-06-12 18:10:11'),(1989,'Lagoa da Prata',11,'2019-06-12 18:10:11'),(1990,'Lagoa dos Patos',11,'2019-06-12 18:10:11'),(1991,'Lagoa Dourada',11,'2019-06-12 18:10:11'),(1992,'Lagoa Formosa',11,'2019-06-12 18:10:11'),(1993,'Lagoa Grande',11,'2019-06-12 18:10:11'),(1994,'Lagoa Santa',11,'2019-06-12 18:10:11'),(1995,'Lajinha',11,'2019-06-12 18:10:11'),(1996,'Lambari',11,'2019-06-12 18:10:11'),(1997,'Lamim',11,'2019-06-12 18:10:11'),(1998,'Laranjal',11,'2019-06-12 18:10:11'),(1999,'Lassance',11,'2019-06-12 18:10:11'),(2000,'Lavras',11,'2019-06-12 18:10:11'),(2001,'Leandro Ferreira',11,'2019-06-12 18:10:11'),(2002,'Leme do Prado',11,'2019-06-12 18:10:11'),(2003,'Leopoldina',11,'2019-06-12 18:10:11'),(2004,'Liberdade',11,'2019-06-12 18:10:11'),(2005,'Lima Duarte',11,'2019-06-12 18:10:11'),(2006,'Limeira do Oeste',11,'2019-06-12 18:10:11'),(2007,'Lontra',11,'2019-06-12 18:10:11'),(2008,'Luisburgo',11,'2019-06-12 18:10:11'),(2009,'Luisl??ndia',11,'2019-06-12 18:10:11'),(2010,'Lumin??rias',11,'2019-06-12 18:10:11'),(2011,'Luz',11,'2019-06-12 18:10:11'),(2012,'Machacalis',11,'2019-06-12 18:10:11'),(2013,'Machado',11,'2019-06-12 18:10:11'),(2014,'Madre de Deus de Minas',11,'2019-06-12 18:10:11'),(2015,'Malacacheta',11,'2019-06-12 18:10:11'),(2016,'Mamonas',11,'2019-06-12 18:10:11'),(2017,'Manga',11,'2019-06-12 18:10:11'),(2018,'Manhua??u',11,'2019-06-12 18:10:11'),(2019,'Manhumirim',11,'2019-06-12 18:10:11'),(2020,'Mantena',11,'2019-06-12 18:10:11'),(2021,'Mar de Espanha',11,'2019-06-12 18:10:11'),(2022,'Maravilhas',11,'2019-06-12 18:10:11'),(2023,'Maria da F??',11,'2019-06-12 18:10:11'),(2024,'Mariana',11,'2019-06-12 18:10:11'),(2025,'Marilac',11,'2019-06-12 18:10:11'),(2026,'M??rio Campos',11,'2019-06-12 18:10:11'),(2027,'Marip?? de Minas',11,'2019-06-12 18:10:11'),(2028,'Marli??ria',11,'2019-06-12 18:10:11'),(2029,'Marmel??polis',11,'2019-06-12 18:10:11'),(2030,'Martinho Campos',11,'2019-06-12 18:10:11'),(2031,'Martins Soares',11,'2019-06-12 18:10:11'),(2032,'Mata Verde',11,'2019-06-12 18:10:11'),(2033,'Materl??ndia',11,'2019-06-12 18:10:11'),(2034,'Mateus Leme',11,'2019-06-12 18:10:11'),(2035,'Mathias Lobato',11,'2019-06-12 18:10:11'),(2036,'Matias Barbosa',11,'2019-06-12 18:10:11'),(2037,'Matias Cardoso',11,'2019-06-12 18:10:11'),(2038,'Matip??',11,'2019-06-12 18:10:11'),(2039,'Mato Verde',11,'2019-06-12 18:10:11'),(2040,'Matozinhos',11,'2019-06-12 18:10:11'),(2041,'Matutina',11,'2019-06-12 18:10:11'),(2042,'Medeiros',11,'2019-06-12 18:10:11'),(2043,'Medina',11,'2019-06-12 18:10:11'),(2044,'Mendes Pimentel',11,'2019-06-12 18:10:11'),(2045,'Merc??s',11,'2019-06-12 18:10:11'),(2046,'Mesquita',11,'2019-06-12 18:10:11'),(2047,'Minas Novas',11,'2019-06-12 18:10:11'),(2048,'Minduri',11,'2019-06-12 18:10:11'),(2049,'Mirabela',11,'2019-06-12 18:10:11'),(2050,'Miradouro',11,'2019-06-12 18:10:11'),(2051,'Mira??',11,'2019-06-12 18:10:11'),(2052,'Mirav??nia',11,'2019-06-12 18:10:11'),(2053,'Moeda',11,'2019-06-12 18:10:11'),(2054,'Moema',11,'2019-06-12 18:10:11'),(2055,'Monjolos',11,'2019-06-12 18:10:11'),(2056,'Monsenhor Paulo',11,'2019-06-12 18:10:11'),(2057,'Montalv??nia',11,'2019-06-12 18:10:11'),(2058,'Monte Alegre de Minas',11,'2019-06-12 18:10:11'),(2059,'Monte Azul',11,'2019-06-12 18:10:11'),(2060,'Monte Belo',11,'2019-06-12 18:10:11'),(2061,'Monte Carmelo',11,'2019-06-12 18:10:11'),(2062,'Monte Formoso',11,'2019-06-12 18:10:11'),(2063,'Monte Santo de Minas',11,'2019-06-12 18:10:11'),(2064,'Monte Si??o',11,'2019-06-12 18:10:11'),(2065,'Montes Claros',11,'2019-06-12 18:10:11'),(2066,'Montezuma',11,'2019-06-12 18:10:11'),(2067,'Morada Nova de Minas',11,'2019-06-12 18:10:11'),(2068,'Morro da Gar??a',11,'2019-06-12 18:10:11'),(2069,'Morro do Pilar',11,'2019-06-12 18:10:11'),(2070,'Munhoz',11,'2019-06-12 18:10:11'),(2071,'Muria??',11,'2019-06-12 18:10:11'),(2072,'Mutum',11,'2019-06-12 18:10:11'),(2073,'Muzambinho',11,'2019-06-12 18:10:11'),(2074,'Nacip Raydan',11,'2019-06-12 18:10:11'),(2075,'Nanuque',11,'2019-06-12 18:10:11'),(2076,'Naque',11,'2019-06-12 18:10:11'),(2077,'Natal??ndia',11,'2019-06-12 18:10:11'),(2078,'Nat??rcia',11,'2019-06-12 18:10:11'),(2079,'Nazareno',11,'2019-06-12 18:10:11'),(2080,'Nepomuceno',11,'2019-06-12 18:10:11'),(2081,'Ninheira',11,'2019-06-12 18:10:11'),(2082,'Nova Bel??m',11,'2019-06-12 18:10:11'),(2083,'Nova Era',11,'2019-06-12 18:10:11'),(2084,'Nova Lima',11,'2019-06-12 18:10:11'),(2085,'Nova M??dica',11,'2019-06-12 18:10:11'),(2086,'Nova Ponte',11,'2019-06-12 18:10:11'),(2087,'Nova Porteirinha',11,'2019-06-12 18:10:11'),(2088,'Nova Resende',11,'2019-06-12 18:10:11'),(2089,'Nova Serrana',11,'2019-06-12 18:10:11'),(2090,'Nova Uni??o',11,'2019-06-12 18:10:11'),(2091,'Novo Cruzeiro',11,'2019-06-12 18:10:11'),(2092,'Novo Oriente de Minas',11,'2019-06-12 18:10:11'),(2093,'Novorizonte',11,'2019-06-12 18:10:11'),(2094,'Olaria',11,'2019-06-12 18:10:11'),(2095,'Olhos-d`??gua',11,'2019-06-12 18:10:11'),(2096,'Ol??mpio Noronha',11,'2019-06-12 18:10:11'),(2097,'Oliveira',11,'2019-06-12 18:10:11'),(2098,'Oliveira Fortes',11,'2019-06-12 18:10:11'),(2099,'On??a de Pitangui',11,'2019-06-12 18:10:11'),(2100,'Orat??rios',11,'2019-06-12 18:10:11'),(2101,'Oriz??nia',11,'2019-06-12 18:10:11'),(2102,'Ouro Branco',11,'2019-06-12 18:10:11'),(2103,'Ouro Fino',11,'2019-06-12 18:10:11'),(2104,'Ouro Preto',11,'2019-06-12 18:10:11'),(2105,'Ouro Verde de Minas',11,'2019-06-12 18:10:11'),(2106,'Padre Carvalho',11,'2019-06-12 18:10:11'),(2107,'Padre Para??so',11,'2019-06-12 18:10:11'),(2108,'Pai Pedro',11,'2019-06-12 18:10:11'),(2109,'Paineiras',11,'2019-06-12 18:10:11'),(2110,'Pains',11,'2019-06-12 18:10:11'),(2111,'Paiva',11,'2019-06-12 18:10:11'),(2112,'Palma',11,'2019-06-12 18:10:11'),(2113,'Palm??polis',11,'2019-06-12 18:10:11'),(2114,'Papagaios',11,'2019-06-12 18:10:11'),(2115,'Par?? de Minas',11,'2019-06-12 18:10:11'),(2116,'Paracatu',11,'2019-06-12 18:10:11'),(2117,'Paragua??u',11,'2019-06-12 18:10:11'),(2118,'Parais??polis',11,'2019-06-12 18:10:11'),(2119,'Paraopeba',11,'2019-06-12 18:10:11'),(2120,'Passa Quatro',11,'2019-06-12 18:10:11'),(2121,'Passa Tempo',11,'2019-06-12 18:10:11'),(2122,'Passab??m',11,'2019-06-12 18:10:11'),(2123,'Passa-Vinte',11,'2019-06-12 18:10:11'),(2124,'Passos',11,'2019-06-12 18:10:11'),(2125,'Patis',11,'2019-06-12 18:10:11'),(2126,'Patos de Minas',11,'2019-06-12 18:10:11'),(2127,'Patroc??nio',11,'2019-06-12 18:10:11'),(2128,'Patroc??nio do Muria??',11,'2019-06-12 18:10:11'),(2129,'Paula C??ndido',11,'2019-06-12 18:10:11'),(2130,'Paulistas',11,'2019-06-12 18:10:11'),(2131,'Pav??o',11,'2019-06-12 18:10:11'),(2132,'Pe??anha',11,'2019-06-12 18:10:11'),(2133,'Pedra Azul',11,'2019-06-12 18:10:11'),(2134,'Pedra Bonita',11,'2019-06-12 18:10:11'),(2135,'Pedra do Anta',11,'2019-06-12 18:10:11'),(2136,'Pedra do Indai??',11,'2019-06-12 18:10:11'),(2137,'Pedra Dourada',11,'2019-06-12 18:10:11'),(2138,'Pedralva',11,'2019-06-12 18:10:11'),(2139,'Pedras de Maria da Cruz',11,'2019-06-12 18:10:11'),(2140,'Pedrin??polis',11,'2019-06-12 18:10:11'),(2141,'Pedro Leopoldo',11,'2019-06-12 18:10:11'),(2142,'Pedro Teixeira',11,'2019-06-12 18:10:11'),(2143,'Pequeri',11,'2019-06-12 18:10:11'),(2144,'Pequi',11,'2019-06-12 18:10:11'),(2145,'Perdig??o',11,'2019-06-12 18:10:11'),(2146,'Perdizes',11,'2019-06-12 18:10:11'),(2147,'Perd??es',11,'2019-06-12 18:10:11'),(2148,'Periquito',11,'2019-06-12 18:10:11'),(2149,'Pescador',11,'2019-06-12 18:10:11'),(2150,'Piau',11,'2019-06-12 18:10:11'),(2151,'Piedade de Caratinga',11,'2019-06-12 18:10:11'),(2152,'Piedade de Ponte Nova',11,'2019-06-12 18:10:11'),(2153,'Piedade do Rio Grande',11,'2019-06-12 18:10:11'),(2154,'Piedade dos Gerais',11,'2019-06-12 18:10:11'),(2155,'Pimenta',11,'2019-06-12 18:10:11'),(2156,'Pingo-d`??gua',11,'2019-06-12 18:10:11'),(2157,'Pint??polis',11,'2019-06-12 18:10:11'),(2158,'Piracema',11,'2019-06-12 18:10:11'),(2159,'Pirajuba',11,'2019-06-12 18:10:11'),(2160,'Piranga',11,'2019-06-12 18:10:11'),(2161,'Pirangu??u',11,'2019-06-12 18:10:11'),(2162,'Piranguinho',11,'2019-06-12 18:10:11'),(2163,'Pirapetinga',11,'2019-06-12 18:10:11'),(2164,'Pirapora',11,'2019-06-12 18:10:11'),(2165,'Pira??ba',11,'2019-06-12 18:10:11'),(2166,'Pitangui',11,'2019-06-12 18:10:11'),(2167,'Piumhi',11,'2019-06-12 18:10:11'),(2168,'Planura',11,'2019-06-12 18:10:11'),(2169,'Po??o Fundo',11,'2019-06-12 18:10:11'),(2170,'Po??os de Caldas',11,'2019-06-12 18:10:11'),(2171,'Pocrane',11,'2019-06-12 18:10:11'),(2172,'Pomp??u',11,'2019-06-12 18:10:11'),(2173,'Ponte Nova',11,'2019-06-12 18:10:11'),(2174,'Ponto Chique',11,'2019-06-12 18:10:11'),(2175,'Ponto dos Volantes',11,'2019-06-12 18:10:11'),(2176,'Porteirinha',11,'2019-06-12 18:10:11'),(2177,'Porto Firme',11,'2019-06-12 18:10:11'),(2178,'Pot??',11,'2019-06-12 18:10:11'),(2179,'Pouso Alegre',11,'2019-06-12 18:10:11'),(2180,'Pouso Alto',11,'2019-06-12 18:10:11'),(2181,'Prados',11,'2019-06-12 18:10:11'),(2182,'Prata',11,'2019-06-12 18:10:11'),(2183,'Prat??polis',11,'2019-06-12 18:10:11'),(2184,'Pratinha',11,'2019-06-12 18:10:11'),(2185,'Presidente Bernardes',11,'2019-06-12 18:10:11'),(2186,'Presidente Juscelino',11,'2019-06-12 18:10:11'),(2187,'Presidente Kubitschek',11,'2019-06-12 18:10:11'),(2188,'Presidente Oleg??rio',11,'2019-06-12 18:10:11'),(2189,'Prudente de Morais',11,'2019-06-12 18:10:11'),(2190,'Quartel Geral',11,'2019-06-12 18:10:11'),(2191,'Queluzito',11,'2019-06-12 18:10:11'),(2192,'Raposos',11,'2019-06-12 18:10:11'),(2193,'Raul Soares',11,'2019-06-12 18:10:11'),(2194,'Recreio',11,'2019-06-12 18:10:11'),(2195,'Reduto',11,'2019-06-12 18:10:11'),(2196,'Resende Costa',11,'2019-06-12 18:10:11'),(2197,'Resplendor',11,'2019-06-12 18:10:11'),(2198,'Ressaquinha',11,'2019-06-12 18:10:11'),(2199,'Riachinho',11,'2019-06-12 18:10:11'),(2200,'Riacho dos Machados',11,'2019-06-12 18:10:11'),(2201,'Ribeir??o das Neves',11,'2019-06-12 18:10:11'),(2202,'Ribeir??o Vermelho',11,'2019-06-12 18:10:11'),(2203,'Rio Acima',11,'2019-06-12 18:10:11'),(2204,'Rio Casca',11,'2019-06-12 18:10:11'),(2205,'Rio do Prado',11,'2019-06-12 18:10:11'),(2206,'Rio Doce',11,'2019-06-12 18:10:11'),(2207,'Rio Espera',11,'2019-06-12 18:10:11'),(2208,'Rio Manso',11,'2019-06-12 18:10:11'),(2209,'Rio Novo',11,'2019-06-12 18:10:11'),(2210,'Rio Parana??ba',11,'2019-06-12 18:10:11'),(2211,'Rio Pardo de Minas',11,'2019-06-12 18:10:11'),(2212,'Rio Piracicaba',11,'2019-06-12 18:10:11'),(2213,'Rio Pomba',11,'2019-06-12 18:10:11'),(2214,'Rio Preto',11,'2019-06-12 18:10:11'),(2215,'Rio Vermelho',11,'2019-06-12 18:10:11'),(2216,'Rit??polis',11,'2019-06-12 18:10:11'),(2217,'Rochedo de Minas',11,'2019-06-12 18:10:11'),(2218,'Rodeiro',11,'2019-06-12 18:10:11'),(2219,'Romaria',11,'2019-06-12 18:10:11'),(2220,'Ros??rio da Limeira',11,'2019-06-12 18:10:11'),(2221,'Rubelita',11,'2019-06-12 18:10:11'),(2222,'Rubim',11,'2019-06-12 18:10:11'),(2223,'Sabar??',11,'2019-06-12 18:10:11'),(2224,'Sabin??polis',11,'2019-06-12 18:10:11'),(2225,'Sacramento',11,'2019-06-12 18:10:11'),(2226,'Salinas',11,'2019-06-12 18:10:11'),(2227,'Salto da Divisa',11,'2019-06-12 18:10:11'),(2228,'Santa B??rbara',11,'2019-06-12 18:10:11'),(2229,'Santa B??rbara do Leste',11,'2019-06-12 18:10:11'),(2230,'Santa B??rbara do Monte Verde',11,'2019-06-12 18:10:11'),(2231,'Santa B??rbara do Tug??rio',11,'2019-06-12 18:10:11'),(2232,'Santa Cruz de Minas',11,'2019-06-12 18:10:11'),(2233,'Santa Cruz de Salinas',11,'2019-06-12 18:10:11'),(2234,'Santa Cruz do Escalvado',11,'2019-06-12 18:10:11'),(2235,'Santa Efig??nia de Minas',11,'2019-06-12 18:10:11'),(2236,'Santa F?? de Minas',11,'2019-06-12 18:10:11'),(2237,'Santa Helena de Minas',11,'2019-06-12 18:10:11'),(2238,'Santa Juliana',11,'2019-06-12 18:10:11'),(2239,'Santa Luzia',11,'2019-06-12 18:10:11'),(2240,'Santa Margarida',11,'2019-06-12 18:10:11'),(2241,'Santa Maria de Itabira',11,'2019-06-12 18:10:11'),(2242,'Santa Maria do Salto',11,'2019-06-12 18:10:11'),(2243,'Santa Maria do Sua??u??',11,'2019-06-12 18:10:11'),(2244,'Santa Rita de Caldas',11,'2019-06-12 18:10:11'),(2245,'Santa Rita de Ibitipoca',11,'2019-06-12 18:10:11'),(2246,'Santa Rita de Jacutinga',11,'2019-06-12 18:10:11'),(2247,'Santa Rita de Minas',11,'2019-06-12 18:10:11'),(2248,'Santa Rita do Itueto',11,'2019-06-12 18:10:11'),(2249,'Santa Rita do Sapuca??',11,'2019-06-12 18:10:11'),(2250,'Santa Rosa da Serra',11,'2019-06-12 18:10:11'),(2251,'Santa Vit??ria',11,'2019-06-12 18:10:11'),(2252,'Santana da Vargem',11,'2019-06-12 18:10:11'),(2253,'Santana de Cataguases',11,'2019-06-12 18:10:11'),(2254,'Santana de Pirapama',11,'2019-06-12 18:10:11'),(2255,'Santana do Deserto',11,'2019-06-12 18:10:11'),(2256,'Santana do Garamb??u',11,'2019-06-12 18:10:11'),(2257,'Santana do Jacar??',11,'2019-06-12 18:10:11'),(2258,'Santana do Manhua??u',11,'2019-06-12 18:10:11'),(2259,'Santana do Para??so',11,'2019-06-12 18:10:11'),(2260,'Santana do Riacho',11,'2019-06-12 18:10:11'),(2261,'Santana dos Montes',11,'2019-06-12 18:10:11'),(2262,'Santo Ant??nio do Amparo',11,'2019-06-12 18:10:11'),(2263,'Santo Ant??nio do Aventureiro',11,'2019-06-12 18:10:11'),(2264,'Santo Ant??nio do Grama',11,'2019-06-12 18:10:11'),(2265,'Santo Ant??nio do Itamb??',11,'2019-06-12 18:10:11'),(2266,'Santo Ant??nio do Jacinto',11,'2019-06-12 18:10:11'),(2267,'Santo Ant??nio do Monte',11,'2019-06-12 18:10:11'),(2268,'Santo Ant??nio do Retiro',11,'2019-06-12 18:10:11'),(2269,'Santo Ant??nio do Rio Abaixo',11,'2019-06-12 18:10:11'),(2270,'Santo Hip??lito',11,'2019-06-12 18:10:11'),(2271,'Santos Dumont',11,'2019-06-12 18:10:11'),(2272,'S??o Bento Abade',11,'2019-06-12 18:10:11'),(2273,'S??o Br??s do Sua??u??',11,'2019-06-12 18:10:11'),(2274,'S??o Domingos das Dores',11,'2019-06-12 18:10:11'),(2275,'S??o Domingos do Prata',11,'2019-06-12 18:10:11'),(2276,'S??o F??lix de Minas',11,'2019-06-12 18:10:11'),(2277,'S??o Francisco',11,'2019-06-12 18:10:11'),(2278,'S??o Francisco de Paula',11,'2019-06-12 18:10:11'),(2279,'S??o Francisco de Sales',11,'2019-06-12 18:10:11'),(2280,'S??o Francisco do Gl??ria',11,'2019-06-12 18:10:11'),(2281,'S??o Geraldo',11,'2019-06-12 18:10:11'),(2282,'S??o Geraldo da Piedade',11,'2019-06-12 18:10:11'),(2283,'S??o Geraldo do Baixio',11,'2019-06-12 18:10:11'),(2284,'S??o Gon??alo do Abaet??',11,'2019-06-12 18:10:11'),(2285,'S??o Gon??alo do Par??',11,'2019-06-12 18:10:11'),(2286,'S??o Gon??alo do Rio Abaixo',11,'2019-06-12 18:10:11'),(2287,'S??o Gon??alo do Rio Preto',11,'2019-06-12 18:10:11'),(2288,'S??o Gon??alo do Sapuca??',11,'2019-06-12 18:10:11'),(2289,'S??o Gotardo',11,'2019-06-12 18:10:11'),(2290,'S??o Jo??o Batista do Gl??ria',11,'2019-06-12 18:10:11'),(2291,'S??o Jo??o da Lagoa',11,'2019-06-12 18:10:11'),(2292,'S??o Jo??o da Mata',11,'2019-06-12 18:10:11'),(2293,'S??o Jo??o da Ponte',11,'2019-06-12 18:10:11'),(2294,'S??o Jo??o das Miss??es',11,'2019-06-12 18:10:11'),(2295,'S??o Jo??o del Rei',11,'2019-06-12 18:10:11'),(2296,'S??o Jo??o do Manhua??u',11,'2019-06-12 18:10:11'),(2297,'S??o Jo??o do Manteninha',11,'2019-06-12 18:10:11'),(2298,'S??o Jo??o do Oriente',11,'2019-06-12 18:10:11'),(2299,'S??o Jo??o do Pacu??',11,'2019-06-12 18:10:11'),(2300,'S??o Jo??o do Para??so',11,'2019-06-12 18:10:11'),(2301,'S??o Jo??o Evangelista',11,'2019-06-12 18:10:11'),(2302,'S??o Jo??o Nepomuceno',11,'2019-06-12 18:10:11'),(2303,'S??o Joaquim de Bicas',11,'2019-06-12 18:10:11'),(2304,'S??o Jos?? da Barra',11,'2019-06-12 18:10:11'),(2305,'S??o Jos?? da Lapa',11,'2019-06-12 18:10:11'),(2306,'S??o Jos?? da Safira',11,'2019-06-12 18:10:11'),(2307,'S??o Jos?? da Varginha',11,'2019-06-12 18:10:11'),(2308,'S??o Jos?? do Alegre',11,'2019-06-12 18:10:11'),(2309,'S??o Jos?? do Divino',11,'2019-06-12 18:10:11'),(2310,'S??o Jos?? do Goiabal',11,'2019-06-12 18:10:11'),(2311,'S??o Jos?? do Jacuri',11,'2019-06-12 18:10:11'),(2312,'S??o Jos?? do Mantimento',11,'2019-06-12 18:10:11'),(2313,'S??o Louren??o',11,'2019-06-12 18:10:11'),(2314,'S??o Miguel do Anta',11,'2019-06-12 18:10:11'),(2315,'S??o Pedro da Uni??o',11,'2019-06-12 18:10:11'),(2316,'S??o Pedro do Sua??u??',11,'2019-06-12 18:10:11'),(2317,'S??o Pedro dos Ferros',11,'2019-06-12 18:10:11'),(2318,'S??o Rom??o',11,'2019-06-12 18:10:11'),(2319,'S??o Roque de Minas',11,'2019-06-12 18:10:11'),(2320,'S??o Sebasti??o da Bela Vista',11,'2019-06-12 18:10:11'),(2321,'S??o Sebasti??o da Vargem Alegre',11,'2019-06-12 18:10:11'),(2322,'S??o Sebasti??o do Anta',11,'2019-06-12 18:10:11'),(2323,'S??o Sebasti??o do Maranh??o',11,'2019-06-12 18:10:11'),(2324,'S??o Sebasti??o do Oeste',11,'2019-06-12 18:10:11'),(2325,'S??o Sebasti??o do Para??so',11,'2019-06-12 18:10:11'),(2326,'S??o Sebasti??o do Rio Preto',11,'2019-06-12 18:10:11'),(2327,'S??o Sebasti??o do Rio Verde',11,'2019-06-12 18:10:11'),(2328,'S??o Thom?? das Letras',11,'2019-06-12 18:10:11'),(2329,'S??o Tiago',11,'2019-06-12 18:10:11'),(2330,'S??o Tom??s de Aquino',11,'2019-06-12 18:10:11'),(2331,'S??o Vicente de Minas',11,'2019-06-12 18:10:11'),(2332,'Sapuca??-Mirim',11,'2019-06-12 18:10:11'),(2333,'Sardo??',11,'2019-06-12 18:10:11'),(2334,'Sarzedo',11,'2019-06-12 18:10:11'),(2335,'Sem-Peixe',11,'2019-06-12 18:10:11'),(2336,'Senador Amaral',11,'2019-06-12 18:10:11'),(2337,'Senador Cortes',11,'2019-06-12 18:10:11'),(2338,'Senador Firmino',11,'2019-06-12 18:10:11'),(2339,'Senador Jos?? Bento',11,'2019-06-12 18:10:11'),(2340,'Senador Modestino Gon??alves',11,'2019-06-12 18:10:11'),(2341,'Senhora de Oliveira',11,'2019-06-12 18:10:11'),(2342,'Senhora do Porto',11,'2019-06-12 18:10:11'),(2343,'Senhora dos Rem??dios',11,'2019-06-12 18:10:11'),(2344,'Sericita',11,'2019-06-12 18:10:11'),(2345,'Seritinga',11,'2019-06-12 18:10:11'),(2346,'Serra Azul de Minas',11,'2019-06-12 18:10:11'),(2347,'Serra da Saudade',11,'2019-06-12 18:10:11'),(2348,'Serra do Salitre',11,'2019-06-12 18:10:11'),(2349,'Serra dos Aimor??s',11,'2019-06-12 18:10:11'),(2350,'Serrania',11,'2019-06-12 18:10:11'),(2351,'Serran??polis de Minas',11,'2019-06-12 18:10:11'),(2352,'Serranos',11,'2019-06-12 18:10:11'),(2353,'Serro',11,'2019-06-12 18:10:11'),(2354,'Sete Lagoas',11,'2019-06-12 18:10:11'),(2355,'Setubinha',11,'2019-06-12 18:10:11'),(2356,'Silveir??nia',11,'2019-06-12 18:10:11'),(2357,'Silvian??polis',11,'2019-06-12 18:10:11'),(2358,'Sim??o Pereira',11,'2019-06-12 18:10:11'),(2359,'Simon??sia',11,'2019-06-12 18:10:11'),(2360,'Sobr??lia',11,'2019-06-12 18:10:11'),(2361,'Soledade de Minas',11,'2019-06-12 18:10:11'),(2362,'Tabuleiro',11,'2019-06-12 18:10:11'),(2363,'Taiobeiras',11,'2019-06-12 18:10:11'),(2364,'Taparuba',11,'2019-06-12 18:10:11'),(2365,'Tapira',11,'2019-06-12 18:10:11'),(2366,'Tapira??',11,'2019-06-12 18:10:11'),(2367,'Taquara??u de Minas',11,'2019-06-12 18:10:11'),(2368,'Tarumirim',11,'2019-06-12 18:10:11'),(2369,'Teixeiras',11,'2019-06-12 18:10:11'),(2370,'Te??filo Otoni',11,'2019-06-12 18:10:11'),(2371,'Tim??teo',11,'2019-06-12 18:10:11'),(2372,'Tiradentes',11,'2019-06-12 18:10:11'),(2373,'Tiros',11,'2019-06-12 18:10:11'),(2374,'Tocantins',11,'2019-06-12 18:10:11'),(2375,'Tocos do Moji',11,'2019-06-12 18:10:11'),(2376,'Toledo',11,'2019-06-12 18:10:11'),(2377,'Tombos',11,'2019-06-12 18:10:11'),(2378,'Tr??s Cora????es',11,'2019-06-12 18:10:11'),(2379,'Tr??s Marias',11,'2019-06-12 18:10:11'),(2380,'Tr??s Pontas',11,'2019-06-12 18:10:11'),(2381,'Tumiritinga',11,'2019-06-12 18:10:11'),(2382,'Tupaciguara',11,'2019-06-12 18:10:11'),(2383,'Turmalina',11,'2019-06-12 18:10:11'),(2384,'Turvol??ndia',11,'2019-06-12 18:10:11'),(2385,'Ub??',11,'2019-06-12 18:10:11'),(2386,'Uba??',11,'2019-06-12 18:10:11'),(2387,'Ubaporanga',11,'2019-06-12 18:10:11'),(2388,'Uberaba',11,'2019-06-12 18:10:11'),(2389,'Uberl??ndia',11,'2019-06-12 18:10:11'),(2390,'Umburatiba',11,'2019-06-12 18:10:11'),(2391,'Una??',11,'2019-06-12 18:10:11'),(2392,'Uni??o de Minas',11,'2019-06-12 18:10:11'),(2393,'Uruana de Minas',11,'2019-06-12 18:10:11'),(2394,'Uruc??nia',11,'2019-06-12 18:10:11'),(2395,'Urucuia',11,'2019-06-12 18:10:11'),(2396,'Vargem Alegre',11,'2019-06-12 18:10:11'),(2397,'Vargem Bonita',11,'2019-06-12 18:10:11'),(2398,'Vargem Grande do Rio Pardo',11,'2019-06-12 18:10:11'),(2399,'Varginha',11,'2019-06-12 18:10:11'),(2400,'Varj??o de Minas',11,'2019-06-12 18:10:11'),(2401,'V??rzea da Palma',11,'2019-06-12 18:10:11'),(2402,'Varzel??ndia',11,'2019-06-12 18:10:11'),(2403,'Vazante',11,'2019-06-12 18:10:11'),(2404,'Verdel??ndia',11,'2019-06-12 18:10:11'),(2405,'Veredinha',11,'2019-06-12 18:10:11'),(2406,'Ver??ssimo',11,'2019-06-12 18:10:11'),(2407,'Vermelho Novo',11,'2019-06-12 18:10:11'),(2408,'Vespasiano',11,'2019-06-12 18:10:11'),(2409,'Vi??osa',11,'2019-06-12 18:10:11'),(2410,'Vieiras',11,'2019-06-12 18:10:11'),(2411,'Virgem da Lapa',11,'2019-06-12 18:10:11'),(2412,'Virg??nia',11,'2019-06-12 18:10:11'),(2413,'Virgin??polis',11,'2019-06-12 18:10:11'),(2414,'Virgol??ndia',11,'2019-06-12 18:10:11'),(2415,'Visconde do Rio Branco',11,'2019-06-12 18:10:11'),(2416,'Volta Grande',11,'2019-06-12 18:10:11'),(2417,'Wenceslau Braz',11,'2019-06-12 18:10:11'),(2418,'Abaetetuba',14,'2019-06-12 18:10:11'),(2419,'Abel Figueiredo',14,'2019-06-12 18:10:11'),(2420,'Acar??',14,'2019-06-12 18:10:11'),(2421,'Afu??',14,'2019-06-12 18:10:11'),(2422,'??gua Azul do Norte',14,'2019-06-12 18:10:11'),(2423,'Alenquer',14,'2019-06-12 18:10:11'),(2424,'Almeirim',14,'2019-06-12 18:10:11'),(2425,'Altamira',14,'2019-06-12 18:10:11'),(2426,'Anaj??s',14,'2019-06-12 18:10:11'),(2427,'Ananindeua',14,'2019-06-12 18:10:11'),(2428,'Anapu',14,'2019-06-12 18:10:11'),(2429,'Augusto Corr??a',14,'2019-06-12 18:10:11'),(2430,'Aurora do Par??',14,'2019-06-12 18:10:11'),(2431,'Aveiro',14,'2019-06-12 18:10:11'),(2432,'Bagre',14,'2019-06-12 18:10:11'),(2433,'Bai??o',14,'2019-06-12 18:10:11'),(2434,'Bannach',14,'2019-06-12 18:10:11'),(2435,'Barcarena',14,'2019-06-12 18:10:11'),(2436,'Bel??m',14,'2019-06-12 18:10:11'),(2437,'Belterra',14,'2019-06-12 18:10:11'),(2438,'Benevides',14,'2019-06-12 18:10:11'),(2439,'Bom Jesus do Tocantins',14,'2019-06-12 18:10:11'),(2440,'Bonito',14,'2019-06-12 18:10:11'),(2441,'Bragan??a',14,'2019-06-12 18:10:11'),(2442,'Brasil Novo',14,'2019-06-12 18:10:11'),(2443,'Brejo Grande do Araguaia',14,'2019-06-12 18:10:11'),(2444,'Breu Branco',14,'2019-06-12 18:10:11'),(2445,'Breves',14,'2019-06-12 18:10:11'),(2446,'Bujaru',14,'2019-06-12 18:10:11'),(2447,'Cachoeira do Arari',14,'2019-06-12 18:10:11'),(2448,'Cachoeira do Piri??',14,'2019-06-12 18:10:11'),(2449,'Camet??',14,'2019-06-12 18:10:11'),(2450,'Cana?? dos Caraj??s',14,'2019-06-12 18:10:11'),(2451,'Capanema',14,'2019-06-12 18:10:11'),(2452,'Capit??o Po??o',14,'2019-06-12 18:10:11'),(2453,'Castanhal',14,'2019-06-12 18:10:11'),(2454,'Chaves',14,'2019-06-12 18:10:11'),(2455,'Colares',14,'2019-06-12 18:10:11'),(2456,'Concei????o do Araguaia',14,'2019-06-12 18:10:11'),(2457,'Conc??rdia do Par??',14,'2019-06-12 18:10:11'),(2458,'Cumaru do Norte',14,'2019-06-12 18:10:11'),(2459,'Curion??polis',14,'2019-06-12 18:10:11'),(2460,'Curralinho',14,'2019-06-12 18:10:11'),(2461,'Curu??',14,'2019-06-12 18:10:11'),(2462,'Curu????',14,'2019-06-12 18:10:11'),(2463,'Dom Eliseu',14,'2019-06-12 18:10:11'),(2464,'Eldorado dos Caraj??s',14,'2019-06-12 18:10:11'),(2465,'Faro',14,'2019-06-12 18:10:11'),(2466,'Floresta do Araguaia',14,'2019-06-12 18:10:11'),(2467,'Garraf??o do Norte',14,'2019-06-12 18:10:11'),(2468,'Goian??sia do Par??',14,'2019-06-12 18:10:11'),(2469,'Gurup??',14,'2019-06-12 18:10:11'),(2470,'Igarap??-A??u',14,'2019-06-12 18:10:11'),(2471,'Igarap??-Miri',14,'2019-06-12 18:10:11'),(2472,'Inhangapi',14,'2019-06-12 18:10:11'),(2473,'Ipixuna do Par??',14,'2019-06-12 18:10:11'),(2474,'Irituia',14,'2019-06-12 18:10:11'),(2475,'Itaituba',14,'2019-06-12 18:10:11'),(2476,'Itupiranga',14,'2019-06-12 18:10:11'),(2477,'Jacareacanga',14,'2019-06-12 18:10:11'),(2478,'Jacund??',14,'2019-06-12 18:10:11'),(2479,'Juruti',14,'2019-06-12 18:10:11'),(2480,'Limoeiro do Ajuru',14,'2019-06-12 18:10:11'),(2481,'M??e do Rio',14,'2019-06-12 18:10:11'),(2482,'Magalh??es Barata',14,'2019-06-12 18:10:11'),(2483,'Marab??',14,'2019-06-12 18:10:11'),(2484,'Maracan??',14,'2019-06-12 18:10:11'),(2485,'Marapanim',14,'2019-06-12 18:10:11'),(2486,'Marituba',14,'2019-06-12 18:10:11'),(2487,'Medicil??ndia',14,'2019-06-12 18:10:11'),(2488,'Melga??o',14,'2019-06-12 18:10:11'),(2489,'Mocajuba',14,'2019-06-12 18:10:11'),(2490,'Moju',14,'2019-06-12 18:10:11'),(2491,'Monte Alegre',14,'2019-06-12 18:10:11'),(2492,'Muan??',14,'2019-06-12 18:10:11'),(2493,'Nova Esperan??a do Piri??',14,'2019-06-12 18:10:11'),(2494,'Nova Ipixuna',14,'2019-06-12 18:10:11'),(2495,'Nova Timboteua',14,'2019-06-12 18:10:11'),(2496,'Novo Progresso',14,'2019-06-12 18:10:11'),(2497,'Novo Repartimento',14,'2019-06-12 18:10:11'),(2498,'??bidos',14,'2019-06-12 18:10:11'),(2499,'Oeiras do Par??',14,'2019-06-12 18:10:11'),(2500,'Oriximin??',14,'2019-06-12 18:10:11'),(2501,'Our??m',14,'2019-06-12 18:10:11'),(2502,'Ouril??ndia do Norte',14,'2019-06-12 18:10:11'),(2503,'Pacaj??',14,'2019-06-12 18:10:11'),(2504,'Palestina do Par??',14,'2019-06-12 18:10:11'),(2505,'Paragominas',14,'2019-06-12 18:10:11'),(2506,'Parauapebas',14,'2019-06-12 18:10:11'),(2507,'Pau d`Arco',14,'2019-06-12 18:10:11'),(2508,'Peixe-Boi',14,'2019-06-12 18:10:11'),(2509,'Pi??arra',14,'2019-06-12 18:10:11'),(2510,'Placas',14,'2019-06-12 18:10:11'),(2511,'Ponta de Pedras',14,'2019-06-12 18:10:11'),(2512,'Portel',14,'2019-06-12 18:10:11'),(2513,'Porto de Moz',14,'2019-06-12 18:10:11'),(2514,'Prainha',14,'2019-06-12 18:10:11'),(2515,'Primavera',14,'2019-06-12 18:10:11'),(2516,'Quatipuru',14,'2019-06-12 18:10:11'),(2517,'Reden????o',14,'2019-06-12 18:10:11'),(2518,'Rio Maria',14,'2019-06-12 18:10:11'),(2519,'Rondon do Par??',14,'2019-06-12 18:10:11'),(2520,'Rur??polis',14,'2019-06-12 18:10:11'),(2521,'Salin??polis',14,'2019-06-12 18:10:11'),(2522,'Salvaterra',14,'2019-06-12 18:10:11'),(2523,'Santa B??rbara do Par??',14,'2019-06-12 18:10:11'),(2524,'Santa Cruz do Arari',14,'2019-06-12 18:10:11'),(2525,'Santa Isabel do Par??',14,'2019-06-12 18:10:11'),(2526,'Santa Luzia do Par??',14,'2019-06-12 18:10:11'),(2527,'Santa Maria das Barreiras',14,'2019-06-12 18:10:11'),(2528,'Santa Maria do Par??',14,'2019-06-12 18:10:11'),(2529,'Santana do Araguaia',14,'2019-06-12 18:10:11'),(2530,'Santar??m',14,'2019-06-12 18:10:11'),(2531,'Santar??m Novo',14,'2019-06-12 18:10:11'),(2532,'Santo Ant??nio do Tau??',14,'2019-06-12 18:10:11'),(2533,'S??o Caetano de Odivelas',14,'2019-06-12 18:10:11'),(2534,'S??o Domingos do Araguaia',14,'2019-06-12 18:10:11'),(2535,'S??o Domingos do Capim',14,'2019-06-12 18:10:11'),(2536,'S??o F??lix do Xingu',14,'2019-06-12 18:10:11'),(2537,'S??o Francisco do Par??',14,'2019-06-12 18:10:11'),(2538,'S??o Geraldo do Araguaia',14,'2019-06-12 18:10:11'),(2539,'S??o Jo??o da Ponta',14,'2019-06-12 18:10:11'),(2540,'S??o Jo??o de Pirabas',14,'2019-06-12 18:10:11'),(2541,'S??o Jo??o do Araguaia',14,'2019-06-12 18:10:11'),(2542,'S??o Miguel do Guam??',14,'2019-06-12 18:10:11'),(2543,'S??o Sebasti??o da Boa Vista',14,'2019-06-12 18:10:11'),(2544,'Sapucaia',14,'2019-06-12 18:10:11'),(2545,'Senador Jos?? Porf??rio',14,'2019-06-12 18:10:11'),(2546,'Soure',14,'2019-06-12 18:10:11'),(2547,'Tail??ndia',14,'2019-06-12 18:10:11'),(2548,'Terra Alta',14,'2019-06-12 18:10:11'),(2549,'Terra Santa',14,'2019-06-12 18:10:11'),(2550,'Tom??-A??u',14,'2019-06-12 18:10:11'),(2551,'Tracuateua',14,'2019-06-12 18:10:11'),(2552,'Trair??o',14,'2019-06-12 18:10:11'),(2553,'Tucum??',14,'2019-06-12 18:10:11'),(2554,'Tucuru??',14,'2019-06-12 18:10:11'),(2555,'Ulian??polis',14,'2019-06-12 18:10:11'),(2556,'Uruar??',14,'2019-06-12 18:10:11'),(2557,'Vigia',14,'2019-06-12 18:10:11'),(2558,'Viseu',14,'2019-06-12 18:10:11'),(2559,'Vit??ria do Xingu',14,'2019-06-12 18:10:11'),(2560,'Xinguara',14,'2019-06-12 18:10:11'),(2561,'??gua Branca',15,'2019-06-12 18:10:11'),(2562,'Aguiar',15,'2019-06-12 18:10:11'),(2563,'Alagoa Grande',15,'2019-06-12 18:10:11'),(2564,'Alagoa Nova',15,'2019-06-12 18:10:11'),(2565,'Alagoinha',15,'2019-06-12 18:10:11'),(2566,'Alcantil',15,'2019-06-12 18:10:11'),(2567,'Algod??o de Janda??ra',15,'2019-06-12 18:10:11'),(2568,'Alhandra',15,'2019-06-12 18:10:11'),(2569,'Amparo',15,'2019-06-12 18:10:11'),(2570,'Aparecida',15,'2019-06-12 18:10:11'),(2571,'Ara??agi',15,'2019-06-12 18:10:11'),(2572,'Arara',15,'2019-06-12 18:10:11'),(2573,'Araruna',15,'2019-06-12 18:10:11'),(2574,'Areia',15,'2019-06-12 18:10:11'),(2575,'Areia de Bara??nas',15,'2019-06-12 18:10:11'),(2576,'Areial',15,'2019-06-12 18:10:11'),(2577,'Aroeiras',15,'2019-06-12 18:10:11'),(2578,'Assun????o',15,'2019-06-12 18:10:11'),(2579,'Ba??a da Trai????o',15,'2019-06-12 18:10:11'),(2580,'Bananeiras',15,'2019-06-12 18:10:11'),(2581,'Bara??na',15,'2019-06-12 18:10:11'),(2582,'Barra de Santa Rosa',15,'2019-06-12 18:10:11'),(2583,'Barra de Santana',15,'2019-06-12 18:10:11'),(2584,'Barra de S??o Miguel',15,'2019-06-12 18:10:11'),(2585,'Bayeux',15,'2019-06-12 18:10:11'),(2586,'Bel??m',15,'2019-06-12 18:10:11'),(2587,'Bel??m do Brejo do Cruz',15,'2019-06-12 18:10:11'),(2588,'Bernardino Batista',15,'2019-06-12 18:10:11'),(2589,'Boa Ventura',15,'2019-06-12 18:10:11'),(2590,'Boa Vista',15,'2019-06-12 18:10:11'),(2591,'Bom Jesus',15,'2019-06-12 18:10:11'),(2592,'Bom Sucesso',15,'2019-06-12 18:10:11'),(2593,'Bonito de Santa F??',15,'2019-06-12 18:10:11'),(2594,'Boqueir??o',15,'2019-06-12 18:10:11'),(2595,'Borborema',15,'2019-06-12 18:10:11'),(2596,'Brejo do Cruz',15,'2019-06-12 18:10:11'),(2597,'Brejo dos Santos',15,'2019-06-12 18:10:11'),(2598,'Caapor??',15,'2019-06-12 18:10:11'),(2599,'Cabaceiras',15,'2019-06-12 18:10:11'),(2600,'Cabedelo',15,'2019-06-12 18:10:11'),(2601,'Cachoeira dos ??ndios',15,'2019-06-12 18:10:11'),(2602,'Cacimba de Areia',15,'2019-06-12 18:10:11'),(2603,'Cacimba de Dentro',15,'2019-06-12 18:10:11'),(2604,'Cacimbas',15,'2019-06-12 18:10:11'),(2605,'Cai??ara',15,'2019-06-12 18:10:11'),(2606,'Cajazeiras',15,'2019-06-12 18:10:11'),(2607,'Cajazeirinhas',15,'2019-06-12 18:10:11'),(2608,'Caldas Brand??o',15,'2019-06-12 18:10:11'),(2609,'Camala??',15,'2019-06-12 18:10:11'),(2610,'Campina Grande',15,'2019-06-12 18:10:11'),(2611,'Campo de Santana',15,'2019-06-12 18:10:11'),(2612,'Capim',15,'2019-06-12 18:10:11'),(2613,'Cara??bas',15,'2019-06-12 18:10:11'),(2614,'Carrapateira',15,'2019-06-12 18:10:11'),(2615,'Casserengue',15,'2019-06-12 18:10:11'),(2616,'Catingueira',15,'2019-06-12 18:10:11'),(2617,'Catol?? do Rocha',15,'2019-06-12 18:10:11'),(2618,'Caturit??',15,'2019-06-12 18:10:11'),(2619,'Concei????o',15,'2019-06-12 18:10:11'),(2620,'Condado',15,'2019-06-12 18:10:11'),(2621,'Conde',15,'2019-06-12 18:10:11'),(2622,'Congo',15,'2019-06-12 18:10:11'),(2623,'Coremas',15,'2019-06-12 18:10:11'),(2624,'Coxixola',15,'2019-06-12 18:10:11'),(2625,'Cruz do Esp??rito Santo',15,'2019-06-12 18:10:11'),(2626,'Cubati',15,'2019-06-12 18:10:11'),(2627,'Cuit??',15,'2019-06-12 18:10:11'),(2628,'Cuit?? de Mamanguape',15,'2019-06-12 18:10:11'),(2629,'Cuitegi',15,'2019-06-12 18:10:11'),(2630,'Curral de Cima',15,'2019-06-12 18:10:11'),(2631,'Curral Velho',15,'2019-06-12 18:10:11'),(2632,'Dami??o',15,'2019-06-12 18:10:11'),(2633,'Desterro',15,'2019-06-12 18:10:11'),(2634,'Diamante',15,'2019-06-12 18:10:11'),(2635,'Dona In??s',15,'2019-06-12 18:10:11'),(2636,'Duas Estradas',15,'2019-06-12 18:10:11'),(2637,'Emas',15,'2019-06-12 18:10:11'),(2638,'Esperan??a',15,'2019-06-12 18:10:11'),(2639,'Fagundes',15,'2019-06-12 18:10:11'),(2640,'Frei Martinho',15,'2019-06-12 18:10:11'),(2641,'Gado Bravo',15,'2019-06-12 18:10:11'),(2642,'Guarabira',15,'2019-06-12 18:10:11'),(2643,'Gurinh??m',15,'2019-06-12 18:10:11'),(2644,'Gurj??o',15,'2019-06-12 18:10:11'),(2645,'Ibiara',15,'2019-06-12 18:10:11'),(2646,'Igaracy',15,'2019-06-12 18:10:11'),(2647,'Imaculada',15,'2019-06-12 18:10:11'),(2648,'Ing??',15,'2019-06-12 18:10:11'),(2649,'Itabaiana',15,'2019-06-12 18:10:11'),(2650,'Itaporanga',15,'2019-06-12 18:10:11'),(2651,'Itapororoca',15,'2019-06-12 18:10:11'),(2652,'Itatuba',15,'2019-06-12 18:10:11'),(2653,'Jacara??',15,'2019-06-12 18:10:11'),(2654,'Jeric??',15,'2019-06-12 18:10:11'),(2655,'Jo??o Pessoa',15,'2019-06-12 18:10:11'),(2656,'Juarez T??vora',15,'2019-06-12 18:10:11'),(2657,'Juazeirinho',15,'2019-06-12 18:10:11'),(2658,'Junco do Serid??',15,'2019-06-12 18:10:11'),(2659,'Juripiranga',15,'2019-06-12 18:10:11'),(2660,'Juru',15,'2019-06-12 18:10:11'),(2661,'Lagoa',15,'2019-06-12 18:10:11'),(2662,'Lagoa de Dentro',15,'2019-06-12 18:10:11'),(2663,'Lagoa Seca',15,'2019-06-12 18:10:11'),(2664,'Lastro',15,'2019-06-12 18:10:11'),(2665,'Livramento',15,'2019-06-12 18:10:11'),(2666,'Logradouro',15,'2019-06-12 18:10:11'),(2667,'Lucena',15,'2019-06-12 18:10:11'),(2668,'M??e d`??gua',15,'2019-06-12 18:10:11'),(2669,'Malta',15,'2019-06-12 18:10:11'),(2670,'Mamanguape',15,'2019-06-12 18:10:11'),(2671,'Mana??ra',15,'2019-06-12 18:10:11'),(2672,'Marca????o',15,'2019-06-12 18:10:11'),(2673,'Mari',15,'2019-06-12 18:10:11'),(2674,'Mariz??polis',15,'2019-06-12 18:10:11'),(2675,'Massaranduba',15,'2019-06-12 18:10:11'),(2676,'Mataraca',15,'2019-06-12 18:10:11'),(2677,'Matinhas',15,'2019-06-12 18:10:11'),(2678,'Mato Grosso',15,'2019-06-12 18:10:11'),(2679,'Matur??ia',15,'2019-06-12 18:10:11'),(2680,'Mogeiro',15,'2019-06-12 18:10:11'),(2681,'Montadas',15,'2019-06-12 18:10:11'),(2682,'Monte Horebe',15,'2019-06-12 18:10:11'),(2683,'Monteiro',15,'2019-06-12 18:10:11'),(2684,'Mulungu',15,'2019-06-12 18:10:11'),(2685,'Natuba',15,'2019-06-12 18:10:11'),(2686,'Nazarezinho',15,'2019-06-12 18:10:11'),(2687,'Nova Floresta',15,'2019-06-12 18:10:11'),(2688,'Nova Olinda',15,'2019-06-12 18:10:11'),(2689,'Nova Palmeira',15,'2019-06-12 18:10:11'),(2690,'Olho d`??gua',15,'2019-06-12 18:10:11'),(2691,'Olivedos',15,'2019-06-12 18:10:11'),(2692,'Ouro Velho',15,'2019-06-12 18:10:11'),(2693,'Parari',15,'2019-06-12 18:10:11'),(2694,'Passagem',15,'2019-06-12 18:10:11'),(2695,'Patos',15,'2019-06-12 18:10:11'),(2696,'Paulista',15,'2019-06-12 18:10:11'),(2697,'Pedra Branca',15,'2019-06-12 18:10:11'),(2698,'Pedra Lavrada',15,'2019-06-12 18:10:11'),(2699,'Pedras de Fogo',15,'2019-06-12 18:10:11'),(2700,'Pedro R??gis',15,'2019-06-12 18:10:11'),(2701,'Pianc??',15,'2019-06-12 18:10:11'),(2702,'Picu??',15,'2019-06-12 18:10:11'),(2703,'Pilar',15,'2019-06-12 18:10:11'),(2704,'Pil??es',15,'2019-06-12 18:10:11'),(2705,'Pil??ezinhos',15,'2019-06-12 18:10:11'),(2706,'Pirpirituba',15,'2019-06-12 18:10:11'),(2707,'Pitimbu',15,'2019-06-12 18:10:11'),(2708,'Pocinhos',15,'2019-06-12 18:10:11'),(2709,'Po??o Dantas',15,'2019-06-12 18:10:11'),(2710,'Po??o de Jos?? de Moura',15,'2019-06-12 18:10:11'),(2711,'Pombal',15,'2019-06-12 18:10:11'),(2712,'Prata',15,'2019-06-12 18:10:11'),(2713,'Princesa Isabel',15,'2019-06-12 18:10:11'),(2714,'Puxinan??',15,'2019-06-12 18:10:11'),(2715,'Queimadas',15,'2019-06-12 18:10:11'),(2716,'Quixab??',15,'2019-06-12 18:10:11'),(2717,'Rem??gio',15,'2019-06-12 18:10:11'),(2718,'Riach??o',15,'2019-06-12 18:10:11'),(2719,'Riach??o do Bacamarte',15,'2019-06-12 18:10:11'),(2720,'Riach??o do Po??o',15,'2019-06-12 18:10:11'),(2721,'Riacho de Santo Ant??nio',15,'2019-06-12 18:10:11'),(2722,'Riacho dos Cavalos',15,'2019-06-12 18:10:11'),(2723,'Rio Tinto',15,'2019-06-12 18:10:11'),(2724,'Salgadinho',15,'2019-06-12 18:10:11'),(2725,'Salgado de S??o F??lix',15,'2019-06-12 18:10:11'),(2726,'Santa Cec??lia',15,'2019-06-12 18:10:11'),(2727,'Santa Cruz',15,'2019-06-12 18:10:11'),(2728,'Santa Helena',15,'2019-06-12 18:10:11'),(2729,'Santa In??s',15,'2019-06-12 18:10:11'),(2730,'Santa Luzia',15,'2019-06-12 18:10:11'),(2731,'Santa Rita',15,'2019-06-12 18:10:11'),(2732,'Santa Teresinha',15,'2019-06-12 18:10:11'),(2733,'Santana de Mangueira',15,'2019-06-12 18:10:11'),(2734,'Santana dos Garrotes',15,'2019-06-12 18:10:11'),(2735,'Santar??m',15,'2019-06-12 18:10:11'),(2736,'Santo Andr??',15,'2019-06-12 18:10:11'),(2737,'S??o Bentinho',15,'2019-06-12 18:10:11'),(2738,'S??o Bento',15,'2019-06-12 18:10:11'),(2739,'S??o Domingos de Pombal',15,'2019-06-12 18:10:11'),(2740,'S??o Domingos do Cariri',15,'2019-06-12 18:10:11'),(2741,'S??o Francisco',15,'2019-06-12 18:10:11'),(2742,'S??o Jo??o do Cariri',15,'2019-06-12 18:10:11'),(2743,'S??o Jo??o do Rio do Peixe',15,'2019-06-12 18:10:11'),(2744,'S??o Jo??o do Tigre',15,'2019-06-12 18:10:11'),(2745,'S??o Jos?? da Lagoa Tapada',15,'2019-06-12 18:10:11'),(2746,'S??o Jos?? de Caiana',15,'2019-06-12 18:10:11'),(2747,'S??o Jos?? de Espinharas',15,'2019-06-12 18:10:11'),(2748,'S??o Jos?? de Piranhas',15,'2019-06-12 18:10:11'),(2749,'S??o Jos?? de Princesa',15,'2019-06-12 18:10:11'),(2750,'S??o Jos?? do Bonfim',15,'2019-06-12 18:10:11'),(2751,'S??o Jos?? do Brejo do Cruz',15,'2019-06-12 18:10:11'),(2752,'S??o Jos?? do Sabugi',15,'2019-06-12 18:10:11'),(2753,'S??o Jos?? dos Cordeiros',15,'2019-06-12 18:10:11'),(2754,'S??o Jos?? dos Ramos',15,'2019-06-12 18:10:11'),(2755,'S??o Mamede',15,'2019-06-12 18:10:11'),(2756,'S??o Miguel de Taipu',15,'2019-06-12 18:10:11'),(2757,'S??o Sebasti??o de Lagoa de Ro??a',15,'2019-06-12 18:10:11'),(2758,'S??o Sebasti??o do Umbuzeiro',15,'2019-06-12 18:10:11'),(2759,'Sap??',15,'2019-06-12 18:10:11'),(2760,'Serid??',15,'2019-06-12 18:10:11'),(2761,'Serra Branca',15,'2019-06-12 18:10:11'),(2762,'Serra da Raiz',15,'2019-06-12 18:10:11'),(2763,'Serra Grande',15,'2019-06-12 18:10:11'),(2764,'Serra Redonda',15,'2019-06-12 18:10:11'),(2765,'Serraria',15,'2019-06-12 18:10:11'),(2766,'Sert??ozinho',15,'2019-06-12 18:10:11'),(2767,'Sobrado',15,'2019-06-12 18:10:11'),(2768,'Sol??nea',15,'2019-06-12 18:10:11'),(2769,'Soledade',15,'2019-06-12 18:10:11'),(2770,'Soss??go',15,'2019-06-12 18:10:11'),(2771,'Sousa',15,'2019-06-12 18:10:11'),(2772,'Sum??',15,'2019-06-12 18:10:11'),(2773,'Tapero??',15,'2019-06-12 18:10:11'),(2774,'Tavares',15,'2019-06-12 18:10:11'),(2775,'Teixeira',15,'2019-06-12 18:10:11'),(2776,'Ten??rio',15,'2019-06-12 18:10:11'),(2777,'Triunfo',15,'2019-06-12 18:10:11'),(2778,'Uira??na',15,'2019-06-12 18:10:11'),(2779,'Umbuzeiro',15,'2019-06-12 18:10:11'),(2780,'V??rzea',15,'2019-06-12 18:10:11'),(2781,'Vieir??polis',15,'2019-06-12 18:10:11'),(2782,'Vista Serrana',15,'2019-06-12 18:10:11'),(2783,'Zabel??',15,'2019-06-12 18:10:11'),(2784,'Abati??',18,'2019-06-12 18:10:11'),(2785,'Adrian??polis',18,'2019-06-12 18:10:11'),(2786,'Agudos do Sul',18,'2019-06-12 18:10:11'),(2787,'Almirante Tamandar??',18,'2019-06-12 18:10:11'),(2788,'Altamira do Paran??',18,'2019-06-12 18:10:11'),(2789,'Alto Para??so',18,'2019-06-12 18:10:11'),(2790,'Alto Paran??',18,'2019-06-12 18:10:11'),(2791,'Alto Piquiri',18,'2019-06-12 18:10:11'),(2792,'Alt??nia',18,'2019-06-12 18:10:11'),(2793,'Alvorada do Sul',18,'2019-06-12 18:10:11'),(2794,'Amapor??',18,'2019-06-12 18:10:11'),(2795,'Amp??re',18,'2019-06-12 18:10:11'),(2796,'Anahy',18,'2019-06-12 18:10:11'),(2797,'Andir??',18,'2019-06-12 18:10:11'),(2798,'??ngulo',18,'2019-06-12 18:10:11'),(2799,'Antonina',18,'2019-06-12 18:10:11'),(2800,'Ant??nio Olinto',18,'2019-06-12 18:10:11'),(2801,'Apucarana',18,'2019-06-12 18:10:11'),(2802,'Arapongas',18,'2019-06-12 18:10:11'),(2803,'Arapoti',18,'2019-06-12 18:10:11'),(2804,'Arapu??',18,'2019-06-12 18:10:11'),(2805,'Araruna',18,'2019-06-12 18:10:11'),(2806,'Arauc??ria',18,'2019-06-12 18:10:11'),(2807,'Ariranha do Iva??',18,'2019-06-12 18:10:11'),(2808,'Assa??',18,'2019-06-12 18:10:11'),(2809,'Assis Chateaubriand',18,'2019-06-12 18:10:11'),(2810,'Astorga',18,'2019-06-12 18:10:11'),(2811,'Atalaia',18,'2019-06-12 18:10:11'),(2812,'Balsa Nova',18,'2019-06-12 18:10:11'),(2813,'Bandeirantes',18,'2019-06-12 18:10:11'),(2814,'Barbosa Ferraz',18,'2019-06-12 18:10:11'),(2815,'Barra do Jacar??',18,'2019-06-12 18:10:11'),(2816,'Barrac??o',18,'2019-06-12 18:10:11'),(2817,'Bela Vista da Caroba',18,'2019-06-12 18:10:11'),(2818,'Bela Vista do Para??so',18,'2019-06-12 18:10:11'),(2819,'Bituruna',18,'2019-06-12 18:10:11'),(2820,'Boa Esperan??a',18,'2019-06-12 18:10:11'),(2821,'Boa Esperan??a do Igua??u',18,'2019-06-12 18:10:11'),(2822,'Boa Ventura de S??o Roque',18,'2019-06-12 18:10:11'),(2823,'Boa Vista da Aparecida',18,'2019-06-12 18:10:11'),(2824,'Bocai??va do Sul',18,'2019-06-12 18:10:11'),(2825,'Bom Jesus do Sul',18,'2019-06-12 18:10:11'),(2826,'Bom Sucesso',18,'2019-06-12 18:10:11'),(2827,'Bom Sucesso do Sul',18,'2019-06-12 18:10:11'),(2828,'Borraz??polis',18,'2019-06-12 18:10:11'),(2829,'Braganey',18,'2019-06-12 18:10:11'),(2830,'Brasil??ndia do Sul',18,'2019-06-12 18:10:11'),(2831,'Cafeara',18,'2019-06-12 18:10:11'),(2832,'Cafel??ndia',18,'2019-06-12 18:10:11'),(2833,'Cafezal do Sul',18,'2019-06-12 18:10:11'),(2834,'Calif??rnia',18,'2019-06-12 18:10:11'),(2835,'Cambar??',18,'2019-06-12 18:10:11'),(2836,'Camb??',18,'2019-06-12 18:10:11'),(2837,'Cambira',18,'2019-06-12 18:10:11'),(2838,'Campina da Lagoa',18,'2019-06-12 18:10:11'),(2839,'Campina do Sim??o',18,'2019-06-12 18:10:11'),(2840,'Campina Grande do Sul',18,'2019-06-12 18:10:11'),(2841,'Campo Bonito',18,'2019-06-12 18:10:11'),(2842,'Campo do Tenente',18,'2019-06-12 18:10:11'),(2843,'Campo Largo',18,'2019-06-12 18:10:11'),(2844,'Campo Magro',18,'2019-06-12 18:10:11'),(2845,'Campo Mour??o',18,'2019-06-12 18:10:11'),(2846,'C??ndido de Abreu',18,'2019-06-12 18:10:11'),(2847,'Cand??i',18,'2019-06-12 18:10:11'),(2848,'Cantagalo',18,'2019-06-12 18:10:11'),(2849,'Capanema',18,'2019-06-12 18:10:11'),(2850,'Capit??o Le??nidas Marques',18,'2019-06-12 18:10:11'),(2851,'Carambe??',18,'2019-06-12 18:10:11'),(2852,'Carl??polis',18,'2019-06-12 18:10:11'),(2853,'Cascavel',18,'2019-06-12 18:10:11'),(2854,'Castro',18,'2019-06-12 18:10:11'),(2855,'Catanduvas',18,'2019-06-12 18:10:11'),(2856,'Centen??rio do Sul',18,'2019-06-12 18:10:11'),(2857,'Cerro Azul',18,'2019-06-12 18:10:11'),(2858,'C??u Azul',18,'2019-06-12 18:10:11'),(2859,'Chopinzinho',18,'2019-06-12 18:10:11'),(2860,'Cianorte',18,'2019-06-12 18:10:11'),(2861,'Cidade Ga??cha',18,'2019-06-12 18:10:11'),(2862,'Clevel??ndia',18,'2019-06-12 18:10:11'),(2863,'Colombo',18,'2019-06-12 18:10:11'),(2864,'Colorado',18,'2019-06-12 18:10:11'),(2865,'Congonhinhas',18,'2019-06-12 18:10:11'),(2866,'Conselheiro Mairinck',18,'2019-06-12 18:10:11'),(2867,'Contenda',18,'2019-06-12 18:10:11'),(2868,'Corb??lia',18,'2019-06-12 18:10:11'),(2869,'Corn??lio Proc??pio',18,'2019-06-12 18:10:11'),(2870,'Coronel Domingos Soares',18,'2019-06-12 18:10:11'),(2871,'Coronel Vivida',18,'2019-06-12 18:10:11'),(2872,'Corumbata?? do Sul',18,'2019-06-12 18:10:11'),(2873,'Cruz Machado',18,'2019-06-12 18:10:11'),(2874,'Cruzeiro do Igua??u',18,'2019-06-12 18:10:11'),(2875,'Cruzeiro do Oeste',18,'2019-06-12 18:10:11'),(2876,'Cruzeiro do Sul',18,'2019-06-12 18:10:11'),(2877,'Cruzmaltina',18,'2019-06-12 18:10:11'),(2878,'Curitiba',18,'2019-06-12 18:10:11'),(2879,'Curi??va',18,'2019-06-12 18:10:11'),(2880,'Diamante d`Oeste',18,'2019-06-12 18:10:11'),(2881,'Diamante do Norte',18,'2019-06-12 18:10:11'),(2882,'Diamante do Sul',18,'2019-06-12 18:10:11'),(2883,'Dois Vizinhos',18,'2019-06-12 18:10:11'),(2884,'Douradina',18,'2019-06-12 18:10:11'),(2885,'Doutor Camargo',18,'2019-06-12 18:10:11'),(2886,'Doutor Ulysses',18,'2019-06-12 18:10:11'),(2887,'En??as Marques',18,'2019-06-12 18:10:11'),(2888,'Engenheiro Beltr??o',18,'2019-06-12 18:10:11'),(2889,'Entre Rios do Oeste',18,'2019-06-12 18:10:11'),(2890,'Esperan??a Nova',18,'2019-06-12 18:10:11'),(2891,'Espig??o Alto do Igua??u',18,'2019-06-12 18:10:11'),(2892,'Farol',18,'2019-06-12 18:10:11'),(2893,'Faxinal',18,'2019-06-12 18:10:11'),(2894,'Fazenda Rio Grande',18,'2019-06-12 18:10:11'),(2895,'F??nix',18,'2019-06-12 18:10:11'),(2896,'Fernandes Pinheiro',18,'2019-06-12 18:10:11'),(2897,'Figueira',18,'2019-06-12 18:10:11'),(2898,'Flor da Serra do Sul',18,'2019-06-12 18:10:11'),(2899,'Flora??',18,'2019-06-12 18:10:11'),(2900,'Floresta',18,'2019-06-12 18:10:11'),(2901,'Florest??polis',18,'2019-06-12 18:10:11'),(2902,'Fl??rida',18,'2019-06-12 18:10:11'),(2903,'Formosa do Oeste',18,'2019-06-12 18:10:11'),(2904,'Foz do Igua??u',18,'2019-06-12 18:10:11'),(2905,'Foz do Jord??o',18,'2019-06-12 18:10:11'),(2906,'Francisco Alves',18,'2019-06-12 18:10:11'),(2907,'Francisco Beltr??o',18,'2019-06-12 18:10:11'),(2908,'General Carneiro',18,'2019-06-12 18:10:11'),(2909,'Godoy Moreira',18,'2019-06-12 18:10:11'),(2910,'Goioer??',18,'2019-06-12 18:10:11'),(2911,'Goioxim',18,'2019-06-12 18:10:11'),(2912,'Grandes Rios',18,'2019-06-12 18:10:11'),(2913,'Gua??ra',18,'2019-06-12 18:10:11'),(2914,'Guaira????',18,'2019-06-12 18:10:11'),(2915,'Guamiranga',18,'2019-06-12 18:10:11'),(2916,'Guapirama',18,'2019-06-12 18:10:11'),(2917,'Guaporema',18,'2019-06-12 18:10:11'),(2918,'Guaraci',18,'2019-06-12 18:10:11'),(2919,'Guarania??u',18,'2019-06-12 18:10:11'),(2920,'Guarapuava',18,'2019-06-12 18:10:11'),(2921,'Guaraque??aba',18,'2019-06-12 18:10:11'),(2922,'Guaratuba',18,'2019-06-12 18:10:11'),(2923,'Hon??rio Serpa',18,'2019-06-12 18:10:11'),(2924,'Ibaiti',18,'2019-06-12 18:10:11'),(2925,'Ibema',18,'2019-06-12 18:10:11'),(2926,'Ibipor??',18,'2019-06-12 18:10:11'),(2927,'Icara??ma',18,'2019-06-12 18:10:11'),(2928,'Iguara??u',18,'2019-06-12 18:10:11'),(2929,'Iguatu',18,'2019-06-12 18:10:11'),(2930,'Imba??',18,'2019-06-12 18:10:11'),(2931,'Imbituva',18,'2019-06-12 18:10:11'),(2932,'In??cio Martins',18,'2019-06-12 18:10:11'),(2933,'Inaj??',18,'2019-06-12 18:10:11'),(2934,'Indian??polis',18,'2019-06-12 18:10:11'),(2935,'Ipiranga',18,'2019-06-12 18:10:11'),(2936,'Ipor??',18,'2019-06-12 18:10:11'),(2937,'Iracema do Oeste',18,'2019-06-12 18:10:11'),(2938,'Irati',18,'2019-06-12 18:10:11'),(2939,'Iretama',18,'2019-06-12 18:10:11'),(2940,'Itaguaj??',18,'2019-06-12 18:10:11'),(2941,'Itaipul??ndia',18,'2019-06-12 18:10:11'),(2942,'Itambarac??',18,'2019-06-12 18:10:11'),(2943,'Itamb??',18,'2019-06-12 18:10:11'),(2944,'Itapejara d`Oeste',18,'2019-06-12 18:10:11'),(2945,'Itaperu??u',18,'2019-06-12 18:10:11'),(2946,'Ita??na do Sul',18,'2019-06-12 18:10:11'),(2947,'Iva??',18,'2019-06-12 18:10:11'),(2948,'Ivaipor??',18,'2019-06-12 18:10:11'),(2949,'Ivat??',18,'2019-06-12 18:10:11'),(2950,'Ivatuba',18,'2019-06-12 18:10:11'),(2951,'Jaboti',18,'2019-06-12 18:10:11'),(2952,'Jacarezinho',18,'2019-06-12 18:10:11'),(2953,'Jaguapit??',18,'2019-06-12 18:10:11'),(2954,'Jaguaria??va',18,'2019-06-12 18:10:11'),(2955,'Jandaia do Sul',18,'2019-06-12 18:10:11'),(2956,'Jani??polis',18,'2019-06-12 18:10:11'),(2957,'Japira',18,'2019-06-12 18:10:11'),(2958,'Japur??',18,'2019-06-12 18:10:11'),(2959,'Jardim Alegre',18,'2019-06-12 18:10:11'),(2960,'Jardim Olinda',18,'2019-06-12 18:10:11'),(2961,'Jataizinho',18,'2019-06-12 18:10:11'),(2962,'Jesu??tas',18,'2019-06-12 18:10:11'),(2963,'Joaquim T??vora',18,'2019-06-12 18:10:11'),(2964,'Jundia?? do Sul',18,'2019-06-12 18:10:11'),(2965,'Juranda',18,'2019-06-12 18:10:11'),(2966,'Jussara',18,'2019-06-12 18:10:11'),(2967,'Kalor??',18,'2019-06-12 18:10:11'),(2968,'Lapa',18,'2019-06-12 18:10:11'),(2969,'Laranjal',18,'2019-06-12 18:10:11'),(2970,'Laranjeiras do Sul',18,'2019-06-12 18:10:11'),(2971,'Le??polis',18,'2019-06-12 18:10:11'),(2972,'Lidian??polis',18,'2019-06-12 18:10:11'),(2973,'Lindoeste',18,'2019-06-12 18:10:11'),(2974,'Loanda',18,'2019-06-12 18:10:11'),(2975,'Lobato',18,'2019-06-12 18:10:11'),(2976,'Londrina',18,'2019-06-12 18:10:11'),(2977,'Luiziana',18,'2019-06-12 18:10:11'),(2978,'Lunardelli',18,'2019-06-12 18:10:11'),(2979,'Lupion??polis',18,'2019-06-12 18:10:11'),(2980,'Mallet',18,'2019-06-12 18:10:11'),(2981,'Mambor??',18,'2019-06-12 18:10:11'),(2982,'Mandagua??u',18,'2019-06-12 18:10:11'),(2983,'Mandaguari',18,'2019-06-12 18:10:11'),(2984,'Mandirituba',18,'2019-06-12 18:10:11'),(2985,'Manfrin??polis',18,'2019-06-12 18:10:11'),(2986,'Mangueirinha',18,'2019-06-12 18:10:11'),(2987,'Manoel Ribas',18,'2019-06-12 18:10:11'),(2988,'Marechal C??ndido Rondon',18,'2019-06-12 18:10:11'),(2989,'Maria Helena',18,'2019-06-12 18:10:11'),(2990,'Marialva',18,'2019-06-12 18:10:11'),(2991,'Maril??ndia do Sul',18,'2019-06-12 18:10:11'),(2992,'Marilena',18,'2019-06-12 18:10:11'),(2993,'Mariluz',18,'2019-06-12 18:10:11'),(2994,'Maring??',18,'2019-06-12 18:10:11'),(2995,'Mari??polis',18,'2019-06-12 18:10:11'),(2996,'Marip??',18,'2019-06-12 18:10:11'),(2997,'Marmeleiro',18,'2019-06-12 18:10:11'),(2998,'Marquinho',18,'2019-06-12 18:10:11'),(2999,'Marumbi',18,'2019-06-12 18:10:11'),(3000,'Matel??ndia',18,'2019-06-12 18:10:11'),(3001,'Matinhos',18,'2019-06-12 18:10:11'),(3002,'Mato Rico',18,'2019-06-12 18:10:11'),(3003,'Mau?? da Serra',18,'2019-06-12 18:10:11'),(3004,'Medianeira',18,'2019-06-12 18:10:11'),(3005,'Mercedes',18,'2019-06-12 18:10:11'),(3006,'Mirador',18,'2019-06-12 18:10:11'),(3007,'Miraselva',18,'2019-06-12 18:10:11'),(3008,'Missal',18,'2019-06-12 18:10:11'),(3009,'Moreira Sales',18,'2019-06-12 18:10:11'),(3010,'Morretes',18,'2019-06-12 18:10:11'),(3011,'Munhoz de Melo',18,'2019-06-12 18:10:11'),(3012,'Nossa Senhora das Gra??as',18,'2019-06-12 18:10:11'),(3013,'Nova Alian??a do Iva??',18,'2019-06-12 18:10:11'),(3014,'Nova Am??rica da Colina',18,'2019-06-12 18:10:11'),(3015,'Nova Aurora',18,'2019-06-12 18:10:11'),(3016,'Nova Cantu',18,'2019-06-12 18:10:11'),(3017,'Nova Esperan??a',18,'2019-06-12 18:10:11'),(3018,'Nova Esperan??a do Sudoeste',18,'2019-06-12 18:10:11'),(3019,'Nova F??tima',18,'2019-06-12 18:10:11'),(3020,'Nova Laranjeiras',18,'2019-06-12 18:10:11'),(3021,'Nova Londrina',18,'2019-06-12 18:10:11'),(3022,'Nova Ol??mpia',18,'2019-06-12 18:10:11'),(3023,'Nova Prata do Igua??u',18,'2019-06-12 18:10:11'),(3024,'Nova Santa B??rbara',18,'2019-06-12 18:10:11'),(3025,'Nova Santa Rosa',18,'2019-06-12 18:10:11'),(3026,'Nova Tebas',18,'2019-06-12 18:10:11'),(3027,'Novo Itacolomi',18,'2019-06-12 18:10:11'),(3028,'Ortigueira',18,'2019-06-12 18:10:11'),(3029,'Ourizona',18,'2019-06-12 18:10:11'),(3030,'Ouro Verde do Oeste',18,'2019-06-12 18:10:11'),(3031,'Pai??andu',18,'2019-06-12 18:10:11'),(3032,'Palmas',18,'2019-06-12 18:10:11'),(3033,'Palmeira',18,'2019-06-12 18:10:11'),(3034,'Palmital',18,'2019-06-12 18:10:11'),(3035,'Palotina',18,'2019-06-12 18:10:11'),(3036,'Para??so do Norte',18,'2019-06-12 18:10:11'),(3037,'Paranacity',18,'2019-06-12 18:10:11'),(3038,'Paranagu??',18,'2019-06-12 18:10:11'),(3039,'Paranapoema',18,'2019-06-12 18:10:11'),(3040,'Paranava??',18,'2019-06-12 18:10:11'),(3041,'Pato Bragado',18,'2019-06-12 18:10:11'),(3042,'Pato Branco',18,'2019-06-12 18:10:11'),(3043,'Paula Freitas',18,'2019-06-12 18:10:11'),(3044,'Paulo Frontin',18,'2019-06-12 18:10:11'),(3045,'Peabiru',18,'2019-06-12 18:10:11'),(3046,'Perobal',18,'2019-06-12 18:10:11'),(3047,'P??rola',18,'2019-06-12 18:10:11'),(3048,'P??rola d`Oeste',18,'2019-06-12 18:10:11'),(3049,'Pi??n',18,'2019-06-12 18:10:11'),(3050,'Pinhais',18,'2019-06-12 18:10:11'),(3051,'Pinhal de S??o Bento',18,'2019-06-12 18:10:11'),(3052,'Pinhal??o',18,'2019-06-12 18:10:11'),(3053,'Pinh??o',18,'2019-06-12 18:10:11'),(3054,'Pira?? do Sul',18,'2019-06-12 18:10:11'),(3055,'Piraquara',18,'2019-06-12 18:10:11'),(3056,'Pitanga',18,'2019-06-12 18:10:11'),(3057,'Pitangueiras',18,'2019-06-12 18:10:11'),(3058,'Planaltina do Paran??',18,'2019-06-12 18:10:11'),(3059,'Planalto',18,'2019-06-12 18:10:11'),(3060,'Ponta Grossa',18,'2019-06-12 18:10:11'),(3061,'Pontal do Paran??',18,'2019-06-12 18:10:11'),(3062,'Porecatu',18,'2019-06-12 18:10:11'),(3063,'Porto Amazonas',18,'2019-06-12 18:10:11'),(3064,'Porto Barreiro',18,'2019-06-12 18:10:11'),(3065,'Porto Rico',18,'2019-06-12 18:10:11'),(3066,'Porto Vit??ria',18,'2019-06-12 18:10:11'),(3067,'Prado Ferreira',18,'2019-06-12 18:10:11'),(3068,'Pranchita',18,'2019-06-12 18:10:11'),(3069,'Presidente Castelo Branco',18,'2019-06-12 18:10:11'),(3070,'Primeiro de Maio',18,'2019-06-12 18:10:11'),(3071,'Prudent??polis',18,'2019-06-12 18:10:11'),(3072,'Quarto Centen??rio',18,'2019-06-12 18:10:11'),(3073,'Quatigu??',18,'2019-06-12 18:10:11'),(3074,'Quatro Barras',18,'2019-06-12 18:10:11'),(3075,'Quatro Pontes',18,'2019-06-12 18:10:11'),(3076,'Quedas do Igua??u',18,'2019-06-12 18:10:11'),(3077,'Quer??ncia do Norte',18,'2019-06-12 18:10:11'),(3078,'Quinta do Sol',18,'2019-06-12 18:10:11'),(3079,'Quitandinha',18,'2019-06-12 18:10:11'),(3080,'Ramil??ndia',18,'2019-06-12 18:10:11'),(3081,'Rancho Alegre',18,'2019-06-12 18:10:11'),(3082,'Rancho Alegre d`Oeste',18,'2019-06-12 18:10:11'),(3083,'Realeza',18,'2019-06-12 18:10:11'),(3084,'Rebou??as',18,'2019-06-12 18:10:11'),(3085,'Renascen??a',18,'2019-06-12 18:10:11'),(3086,'Reserva',18,'2019-06-12 18:10:11'),(3087,'Reserva do Igua??u',18,'2019-06-12 18:10:11'),(3088,'Ribeir??o Claro',18,'2019-06-12 18:10:11'),(3089,'Ribeir??o do Pinhal',18,'2019-06-12 18:10:11'),(3090,'Rio Azul',18,'2019-06-12 18:10:11'),(3091,'Rio Bom',18,'2019-06-12 18:10:11'),(3092,'Rio Bonito do Igua??u',18,'2019-06-12 18:10:11'),(3093,'Rio Branco do Iva??',18,'2019-06-12 18:10:11'),(3094,'Rio Branco do Sul',18,'2019-06-12 18:10:11'),(3095,'Rio Negro',18,'2019-06-12 18:10:11'),(3096,'Rol??ndia',18,'2019-06-12 18:10:11'),(3097,'Roncador',18,'2019-06-12 18:10:11'),(3098,'Rondon',18,'2019-06-12 18:10:11'),(3099,'Ros??rio do Iva??',18,'2019-06-12 18:10:11'),(3100,'Sab??udia',18,'2019-06-12 18:10:11'),(3101,'Salgado Filho',18,'2019-06-12 18:10:11'),(3102,'Salto do Itarar??',18,'2019-06-12 18:10:11'),(3103,'Salto do Lontra',18,'2019-06-12 18:10:11'),(3104,'Santa Am??lia',18,'2019-06-12 18:10:11'),(3105,'Santa Cec??lia do Pav??o',18,'2019-06-12 18:10:11'),(3106,'Santa Cruz de Monte Castelo',18,'2019-06-12 18:10:11'),(3107,'Santa F??',18,'2019-06-12 18:10:11'),(3108,'Santa Helena',18,'2019-06-12 18:10:11'),(3109,'Santa In??s',18,'2019-06-12 18:10:11'),(3110,'Santa Isabel do Iva??',18,'2019-06-12 18:10:11'),(3111,'Santa Izabel do Oeste',18,'2019-06-12 18:10:11'),(3112,'Santa L??cia',18,'2019-06-12 18:10:11'),(3113,'Santa Maria do Oeste',18,'2019-06-12 18:10:11'),(3114,'Santa Mariana',18,'2019-06-12 18:10:11'),(3115,'Santa M??nica',18,'2019-06-12 18:10:11'),(3116,'Santa Tereza do Oeste',18,'2019-06-12 18:10:11'),(3117,'Santa Terezinha de Itaipu',18,'2019-06-12 18:10:11'),(3118,'Santana do Itarar??',18,'2019-06-12 18:10:11'),(3119,'Santo Ant??nio da Platina',18,'2019-06-12 18:10:11'),(3120,'Santo Ant??nio do Caiu??',18,'2019-06-12 18:10:11'),(3121,'Santo Ant??nio do Para??so',18,'2019-06-12 18:10:11'),(3122,'Santo Ant??nio do Sudoeste',18,'2019-06-12 18:10:11'),(3123,'Santo In??cio',18,'2019-06-12 18:10:11'),(3124,'S??o Carlos do Iva??',18,'2019-06-12 18:10:11'),(3125,'S??o Jer??nimo da Serra',18,'2019-06-12 18:10:11'),(3126,'S??o Jo??o',18,'2019-06-12 18:10:11'),(3127,'S??o Jo??o do Caiu??',18,'2019-06-12 18:10:11'),(3128,'S??o Jo??o do Iva??',18,'2019-06-12 18:10:11'),(3129,'S??o Jo??o do Triunfo',18,'2019-06-12 18:10:11'),(3130,'S??o Jorge d`Oeste',18,'2019-06-12 18:10:11'),(3131,'S??o Jorge do Iva??',18,'2019-06-12 18:10:11'),(3132,'S??o Jorge do Patroc??nio',18,'2019-06-12 18:10:11'),(3133,'S??o Jos?? da Boa Vista',18,'2019-06-12 18:10:11'),(3134,'S??o Jos?? das Palmeiras',18,'2019-06-12 18:10:11'),(3135,'S??o Jos?? dos Pinhais',18,'2019-06-12 18:10:11'),(3136,'S??o Manoel do Paran??',18,'2019-06-12 18:10:11'),(3137,'S??o Mateus do Sul',18,'2019-06-12 18:10:11'),(3138,'S??o Miguel do Igua??u',18,'2019-06-12 18:10:11'),(3139,'S??o Pedro do Igua??u',18,'2019-06-12 18:10:11'),(3140,'S??o Pedro do Iva??',18,'2019-06-12 18:10:11'),(3141,'S??o Pedro do Paran??',18,'2019-06-12 18:10:11'),(3142,'S??o Sebasti??o da Amoreira',18,'2019-06-12 18:10:11'),(3143,'S??o Tom??',18,'2019-06-12 18:10:11'),(3144,'Sapopema',18,'2019-06-12 18:10:11'),(3145,'Sarandi',18,'2019-06-12 18:10:11'),(3146,'Saudade do Igua??u',18,'2019-06-12 18:10:11'),(3147,'Seng??s',18,'2019-06-12 18:10:11'),(3148,'Serran??polis do Igua??u',18,'2019-06-12 18:10:11'),(3149,'Sertaneja',18,'2019-06-12 18:10:11'),(3150,'Sertan??polis',18,'2019-06-12 18:10:11'),(3151,'Siqueira Campos',18,'2019-06-12 18:10:11'),(3152,'Sulina',18,'2019-06-12 18:10:11'),(3153,'Tamarana',18,'2019-06-12 18:10:11'),(3154,'Tamboara',18,'2019-06-12 18:10:11'),(3155,'Tapejara',18,'2019-06-12 18:10:11'),(3156,'Tapira',18,'2019-06-12 18:10:11'),(3157,'Teixeira Soares',18,'2019-06-12 18:10:11'),(3158,'Tel??maco Borba',18,'2019-06-12 18:10:11'),(3159,'Terra Boa',18,'2019-06-12 18:10:11'),(3160,'Terra Rica',18,'2019-06-12 18:10:11'),(3161,'Terra Roxa',18,'2019-06-12 18:10:11'),(3162,'Tibagi',18,'2019-06-12 18:10:11'),(3163,'Tijucas do Sul',18,'2019-06-12 18:10:11'),(3164,'Toledo',18,'2019-06-12 18:10:11'),(3165,'Tomazina',18,'2019-06-12 18:10:11'),(3166,'Tr??s Barras do Paran??',18,'2019-06-12 18:10:11'),(3167,'Tunas do Paran??',18,'2019-06-12 18:10:11'),(3168,'Tuneiras do Oeste',18,'2019-06-12 18:10:11'),(3169,'Tup??ssi',18,'2019-06-12 18:10:11'),(3170,'Turvo',18,'2019-06-12 18:10:11'),(3171,'Ubirat??',18,'2019-06-12 18:10:11'),(3172,'Umuarama',18,'2019-06-12 18:10:11'),(3173,'Uni??o da Vit??ria',18,'2019-06-12 18:10:11'),(3174,'Uniflor',18,'2019-06-12 18:10:11'),(3175,'Ura??',18,'2019-06-12 18:10:11'),(3176,'Ventania',18,'2019-06-12 18:10:11'),(3177,'Vera Cruz do Oeste',18,'2019-06-12 18:10:11'),(3178,'Ver??',18,'2019-06-12 18:10:11'),(3179,'Virmond',18,'2019-06-12 18:10:11'),(3180,'Vitorino',18,'2019-06-12 18:10:11'),(3181,'Wenceslau Braz',18,'2019-06-12 18:10:11'),(3182,'Xambr??',18,'2019-06-12 18:10:11'),(3183,'Abreu e Lima',16,'2019-06-12 18:10:11'),(3184,'Afogados da Ingazeira',16,'2019-06-12 18:10:11'),(3185,'Afr??nio',16,'2019-06-12 18:10:11'),(3186,'Agrestina',16,'2019-06-12 18:10:11'),(3187,'??gua Preta',16,'2019-06-12 18:10:11'),(3188,'??guas Belas',16,'2019-06-12 18:10:11'),(3189,'Alagoinha',16,'2019-06-12 18:10:11'),(3190,'Alian??a',16,'2019-06-12 18:10:11'),(3191,'Altinho',16,'2019-06-12 18:10:11'),(3192,'Amaraji',16,'2019-06-12 18:10:11'),(3193,'Angelim',16,'2019-06-12 18:10:11'),(3194,'Ara??oiaba',16,'2019-06-12 18:10:11'),(3195,'Araripina',16,'2019-06-12 18:10:11'),(3196,'Arcoverde',16,'2019-06-12 18:10:11'),(3197,'Barra de Guabiraba',16,'2019-06-12 18:10:11'),(3198,'Barreiros',16,'2019-06-12 18:10:11'),(3199,'Bel??m de Maria',16,'2019-06-12 18:10:11'),(3200,'Bel??m de S??o Francisco',16,'2019-06-12 18:10:11'),(3201,'Belo Jardim',16,'2019-06-12 18:10:11'),(3202,'Bet??nia',16,'2019-06-12 18:10:11'),(3203,'Bezerros',16,'2019-06-12 18:10:11'),(3204,'Bodoc??',16,'2019-06-12 18:10:11'),(3205,'Bom Conselho',16,'2019-06-12 18:10:11'),(3206,'Bom Jardim',16,'2019-06-12 18:10:11'),(3207,'Bonito',16,'2019-06-12 18:10:11'),(3208,'Brej??o',16,'2019-06-12 18:10:11'),(3209,'Brejinho',16,'2019-06-12 18:10:11'),(3210,'Brejo da Madre de Deus',16,'2019-06-12 18:10:11'),(3211,'Buenos Aires',16,'2019-06-12 18:10:11'),(3212,'Bu??que',16,'2019-06-12 18:10:11'),(3213,'Cabo de Santo Agostinho',16,'2019-06-12 18:10:11'),(3214,'Cabrob??',16,'2019-06-12 18:10:11'),(3215,'Cachoeirinha',16,'2019-06-12 18:10:11'),(3216,'Caet??s',16,'2019-06-12 18:10:11'),(3217,'Cal??ado',16,'2019-06-12 18:10:11'),(3218,'Calumbi',16,'2019-06-12 18:10:11'),(3219,'Camaragibe',16,'2019-06-12 18:10:11'),(3220,'Camocim de S??o F??lix',16,'2019-06-12 18:10:11'),(3221,'Camutanga',16,'2019-06-12 18:10:11'),(3222,'Canhotinho',16,'2019-06-12 18:10:11'),(3223,'Capoeiras',16,'2019-06-12 18:10:11'),(3224,'Carna??ba',16,'2019-06-12 18:10:11'),(3225,'Carnaubeira da Penha',16,'2019-06-12 18:10:11'),(3226,'Carpina',16,'2019-06-12 18:10:11'),(3227,'Caruaru',16,'2019-06-12 18:10:11'),(3228,'Casinhas',16,'2019-06-12 18:10:11'),(3229,'Catende',16,'2019-06-12 18:10:11'),(3230,'Cedro',16,'2019-06-12 18:10:11'),(3231,'Ch?? de Alegria',16,'2019-06-12 18:10:11'),(3232,'Ch?? Grande',16,'2019-06-12 18:10:11'),(3233,'Condado',16,'2019-06-12 18:10:11'),(3234,'Correntes',16,'2019-06-12 18:10:11'),(3235,'Cort??s',16,'2019-06-12 18:10:11'),(3236,'Cumaru',16,'2019-06-12 18:10:11'),(3237,'Cupira',16,'2019-06-12 18:10:11'),(3238,'Cust??dia',16,'2019-06-12 18:10:11'),(3239,'Dormentes',16,'2019-06-12 18:10:11'),(3240,'Escada',16,'2019-06-12 18:10:11'),(3241,'Exu',16,'2019-06-12 18:10:11'),(3242,'Feira Nova',16,'2019-06-12 18:10:11'),(3243,'Fernando de Noronha',16,'2019-06-12 18:10:11'),(3244,'Ferreiros',16,'2019-06-12 18:10:11'),(3245,'Flores',16,'2019-06-12 18:10:11'),(3246,'Floresta',16,'2019-06-12 18:10:11'),(3247,'Frei Miguelinho',16,'2019-06-12 18:10:11'),(3248,'Gameleira',16,'2019-06-12 18:10:11'),(3249,'Garanhuns',16,'2019-06-12 18:10:11'),(3250,'Gl??ria do Goit??',16,'2019-06-12 18:10:11'),(3251,'Goiana',16,'2019-06-12 18:10:11'),(3252,'Granito',16,'2019-06-12 18:10:11'),(3253,'Gravat??',16,'2019-06-12 18:10:11'),(3254,'Iati',16,'2019-06-12 18:10:11'),(3255,'Ibimirim',16,'2019-06-12 18:10:11'),(3256,'Ibirajuba',16,'2019-06-12 18:10:11'),(3257,'Igarassu',16,'2019-06-12 18:10:11'),(3258,'Iguaraci',16,'2019-06-12 18:10:11'),(3259,'Ilha de Itamarac??',16,'2019-06-12 18:10:11'),(3260,'Inaj??',16,'2019-06-12 18:10:11'),(3261,'Ingazeira',16,'2019-06-12 18:10:11'),(3262,'Ipojuca',16,'2019-06-12 18:10:11'),(3263,'Ipubi',16,'2019-06-12 18:10:11'),(3264,'Itacuruba',16,'2019-06-12 18:10:11'),(3265,'Ita??ba',16,'2019-06-12 18:10:11'),(3266,'Itamb??',16,'2019-06-12 18:10:11'),(3267,'Itapetim',16,'2019-06-12 18:10:11'),(3268,'Itapissuma',16,'2019-06-12 18:10:11'),(3269,'Itaquitinga',16,'2019-06-12 18:10:11'),(3270,'Jaboat??o dos Guararapes',16,'2019-06-12 18:10:11'),(3271,'Jaqueira',16,'2019-06-12 18:10:11'),(3272,'Jata??ba',16,'2019-06-12 18:10:11'),(3273,'Jatob??',16,'2019-06-12 18:10:11'),(3274,'Jo??o Alfredo',16,'2019-06-12 18:10:11'),(3275,'Joaquim Nabuco',16,'2019-06-12 18:10:11'),(3276,'Jucati',16,'2019-06-12 18:10:11'),(3277,'Jupi',16,'2019-06-12 18:10:11'),(3278,'Jurema',16,'2019-06-12 18:10:11'),(3279,'Lagoa do Carro',16,'2019-06-12 18:10:11'),(3280,'Lagoa do Itaenga',16,'2019-06-12 18:10:11'),(3281,'Lagoa do Ouro',16,'2019-06-12 18:10:11'),(3282,'Lagoa dos Gatos',16,'2019-06-12 18:10:11'),(3283,'Lagoa Grande',16,'2019-06-12 18:10:11'),(3284,'Lajedo',16,'2019-06-12 18:10:11'),(3285,'Limoeiro',16,'2019-06-12 18:10:11'),(3286,'Macaparana',16,'2019-06-12 18:10:11'),(3287,'Machados',16,'2019-06-12 18:10:11'),(3288,'Manari',16,'2019-06-12 18:10:11'),(3289,'Maraial',16,'2019-06-12 18:10:11'),(3290,'Mirandiba',16,'2019-06-12 18:10:11'),(3291,'Moreil??ndia',16,'2019-06-12 18:10:11'),(3292,'Moreno',16,'2019-06-12 18:10:11'),(3293,'Nazar?? da Mata',16,'2019-06-12 18:10:11'),(3294,'Olinda',16,'2019-06-12 18:10:11'),(3295,'Orob??',16,'2019-06-12 18:10:11'),(3296,'Oroc??',16,'2019-06-12 18:10:11'),(3297,'Ouricuri',16,'2019-06-12 18:10:11'),(3298,'Palmares',16,'2019-06-12 18:10:11'),(3299,'Palmeirina',16,'2019-06-12 18:10:11'),(3300,'Panelas',16,'2019-06-12 18:10:11'),(3301,'Paranatama',16,'2019-06-12 18:10:11'),(3302,'Parnamirim',16,'2019-06-12 18:10:11'),(3303,'Passira',16,'2019-06-12 18:10:11'),(3304,'Paudalho',16,'2019-06-12 18:10:11'),(3305,'Paulista',16,'2019-06-12 18:10:11'),(3306,'Pedra',16,'2019-06-12 18:10:11'),(3307,'Pesqueira',16,'2019-06-12 18:10:11'),(3308,'Petrol??ndia',16,'2019-06-12 18:10:11'),(3309,'Petrolina',16,'2019-06-12 18:10:11'),(3310,'Po????o',16,'2019-06-12 18:10:11'),(3311,'Pombos',16,'2019-06-12 18:10:11'),(3312,'Primavera',16,'2019-06-12 18:10:11'),(3313,'Quipap??',16,'2019-06-12 18:10:11'),(3314,'Quixaba',16,'2019-06-12 18:10:11'),(3315,'Recife',16,'2019-06-12 18:10:11'),(3316,'Riacho das Almas',16,'2019-06-12 18:10:11'),(3317,'Ribeir??o',16,'2019-06-12 18:10:11'),(3318,'Rio Formoso',16,'2019-06-12 18:10:11'),(3319,'Sair??',16,'2019-06-12 18:10:11'),(3320,'Salgadinho',16,'2019-06-12 18:10:11'),(3321,'Salgueiro',16,'2019-06-12 18:10:11'),(3322,'Salo??',16,'2019-06-12 18:10:11'),(3323,'Sanhar??',16,'2019-06-12 18:10:11'),(3324,'Santa Cruz',16,'2019-06-12 18:10:11'),(3325,'Santa Cruz da Baixa Verde',16,'2019-06-12 18:10:11'),(3326,'Santa Cruz do Capibaribe',16,'2019-06-12 18:10:11'),(3327,'Santa Filomena',16,'2019-06-12 18:10:11'),(3328,'Santa Maria da Boa Vista',16,'2019-06-12 18:10:11'),(3329,'Santa Maria do Cambuc??',16,'2019-06-12 18:10:11'),(3330,'Santa Terezinha',16,'2019-06-12 18:10:11'),(3331,'S??o Benedito do Sul',16,'2019-06-12 18:10:11'),(3332,'S??o Bento do Una',16,'2019-06-12 18:10:11'),(3333,'S??o Caitano',16,'2019-06-12 18:10:11'),(3334,'S??o Jo??o',16,'2019-06-12 18:10:11'),(3335,'S??o Joaquim do Monte',16,'2019-06-12 18:10:11'),(3336,'S??o Jos?? da Coroa Grande',16,'2019-06-12 18:10:11'),(3337,'S??o Jos?? do Belmonte',16,'2019-06-12 18:10:11'),(3338,'S??o Jos?? do Egito',16,'2019-06-12 18:10:11'),(3339,'S??o Louren??o da Mata',16,'2019-06-12 18:10:11'),(3340,'S??o Vicente Ferrer',16,'2019-06-12 18:10:11'),(3341,'Serra Talhada',16,'2019-06-12 18:10:11'),(3342,'Serrita',16,'2019-06-12 18:10:11'),(3343,'Sert??nia',16,'2019-06-12 18:10:11'),(3344,'Sirinha??m',16,'2019-06-12 18:10:11'),(3345,'Solid??o',16,'2019-06-12 18:10:11'),(3346,'Surubim',16,'2019-06-12 18:10:11'),(3347,'Tabira',16,'2019-06-12 18:10:11'),(3348,'Tacaimb??',16,'2019-06-12 18:10:11'),(3349,'Tacaratu',16,'2019-06-12 18:10:11'),(3350,'Tamandar??',16,'2019-06-12 18:10:11'),(3351,'Taquaritinga do Norte',16,'2019-06-12 18:10:11'),(3352,'Terezinha',16,'2019-06-12 18:10:11'),(3353,'Terra Nova',16,'2019-06-12 18:10:11'),(3354,'Timba??ba',16,'2019-06-12 18:10:11'),(3355,'Toritama',16,'2019-06-12 18:10:11'),(3356,'Tracunha??m',16,'2019-06-12 18:10:11'),(3357,'Trindade',16,'2019-06-12 18:10:11'),(3358,'Triunfo',16,'2019-06-12 18:10:11'),(3359,'Tupanatinga',16,'2019-06-12 18:10:11'),(3360,'Tuparetama',16,'2019-06-12 18:10:11'),(3361,'Venturosa',16,'2019-06-12 18:10:11'),(3362,'Verdejante',16,'2019-06-12 18:10:11'),(3363,'Vertente do L??rio',16,'2019-06-12 18:10:11'),(3364,'Vertentes',16,'2019-06-12 18:10:11'),(3365,'Vic??ncia',16,'2019-06-12 18:10:11'),(3366,'Vit??ria de Santo Ant??o',16,'2019-06-12 18:10:11'),(3367,'Xex??u',16,'2019-06-12 18:10:11'),(3368,'Acau??',17,'2019-06-12 18:10:11'),(3369,'Agricol??ndia',17,'2019-06-12 18:10:11'),(3370,'??gua Branca',17,'2019-06-12 18:10:11'),(3371,'Alagoinha do Piau??',17,'2019-06-12 18:10:11'),(3372,'Alegrete do Piau??',17,'2019-06-12 18:10:11'),(3373,'Alto Long??',17,'2019-06-12 18:10:11'),(3374,'Altos',17,'2019-06-12 18:10:11'),(3375,'Alvorada do Gurgu??ia',17,'2019-06-12 18:10:11'),(3376,'Amarante',17,'2019-06-12 18:10:11'),(3377,'Angical do Piau??',17,'2019-06-12 18:10:11'),(3378,'An??sio de Abreu',17,'2019-06-12 18:10:11'),(3379,'Ant??nio Almeida',17,'2019-06-12 18:10:11'),(3380,'Aroazes',17,'2019-06-12 18:10:11'),(3381,'Aroeiras do Itaim',17,'2019-06-12 18:10:11'),(3382,'Arraial',17,'2019-06-12 18:10:11'),(3383,'Assun????o do Piau??',17,'2019-06-12 18:10:11'),(3384,'Avelino Lopes',17,'2019-06-12 18:10:11'),(3385,'Baixa Grande do Ribeiro',17,'2019-06-12 18:10:11'),(3386,'Barra d`Alc??ntara',17,'2019-06-12 18:10:11'),(3387,'Barras',17,'2019-06-12 18:10:11'),(3388,'Barreiras do Piau??',17,'2019-06-12 18:10:11'),(3389,'Barro Duro',17,'2019-06-12 18:10:11'),(3390,'Batalha',17,'2019-06-12 18:10:11'),(3391,'Bela Vista do Piau??',17,'2019-06-12 18:10:11'),(3392,'Bel??m do Piau??',17,'2019-06-12 18:10:11'),(3393,'Beneditinos',17,'2019-06-12 18:10:11'),(3394,'Bertol??nia',17,'2019-06-12 18:10:11'),(3395,'Bet??nia do Piau??',17,'2019-06-12 18:10:11'),(3396,'Boa Hora',17,'2019-06-12 18:10:11'),(3397,'Bocaina',17,'2019-06-12 18:10:11'),(3398,'Bom Jesus',17,'2019-06-12 18:10:11'),(3399,'Bom Princ??pio do Piau??',17,'2019-06-12 18:10:11'),(3400,'Bonfim do Piau??',17,'2019-06-12 18:10:11'),(3401,'Boqueir??o do Piau??',17,'2019-06-12 18:10:11'),(3402,'Brasileira',17,'2019-06-12 18:10:11'),(3403,'Brejo do Piau??',17,'2019-06-12 18:10:11'),(3404,'Buriti dos Lopes',17,'2019-06-12 18:10:11'),(3405,'Buriti dos Montes',17,'2019-06-12 18:10:11'),(3406,'Cabeceiras do Piau??',17,'2019-06-12 18:10:11'),(3407,'Cajazeiras do Piau??',17,'2019-06-12 18:10:11'),(3408,'Cajueiro da Praia',17,'2019-06-12 18:10:11'),(3409,'Caldeir??o Grande do Piau??',17,'2019-06-12 18:10:11'),(3410,'Campinas do Piau??',17,'2019-06-12 18:10:11'),(3411,'Campo Alegre do Fidalgo',17,'2019-06-12 18:10:11'),(3412,'Campo Grande do Piau??',17,'2019-06-12 18:10:11'),(3413,'Campo Largo do Piau??',17,'2019-06-12 18:10:11'),(3414,'Campo Maior',17,'2019-06-12 18:10:11'),(3415,'Canavieira',17,'2019-06-12 18:10:11'),(3416,'Canto do Buriti',17,'2019-06-12 18:10:11'),(3417,'Capit??o de Campos',17,'2019-06-12 18:10:11'),(3418,'Capit??o Gerv??sio Oliveira',17,'2019-06-12 18:10:11'),(3419,'Caracol',17,'2019-06-12 18:10:11'),(3420,'Cara??bas do Piau??',17,'2019-06-12 18:10:11'),(3421,'Caridade do Piau??',17,'2019-06-12 18:10:11'),(3422,'Castelo do Piau??',17,'2019-06-12 18:10:11'),(3423,'Caxing??',17,'2019-06-12 18:10:11'),(3424,'Cocal',17,'2019-06-12 18:10:11'),(3425,'Cocal de Telha',17,'2019-06-12 18:10:11'),(3426,'Cocal dos Alves',17,'2019-06-12 18:10:11'),(3427,'Coivaras',17,'2019-06-12 18:10:11'),(3428,'Col??nia do Gurgu??ia',17,'2019-06-12 18:10:11'),(3429,'Col??nia do Piau??',17,'2019-06-12 18:10:11'),(3430,'Concei????o do Canind??',17,'2019-06-12 18:10:11'),(3431,'Coronel Jos?? Dias',17,'2019-06-12 18:10:11'),(3432,'Corrente',17,'2019-06-12 18:10:11'),(3433,'Cristal??ndia do Piau??',17,'2019-06-12 18:10:11'),(3434,'Cristino Castro',17,'2019-06-12 18:10:11'),(3435,'Curimat??',17,'2019-06-12 18:10:11'),(3436,'Currais',17,'2019-06-12 18:10:11'),(3437,'Curral Novo do Piau??',17,'2019-06-12 18:10:11'),(3438,'Curralinhos',17,'2019-06-12 18:10:11'),(3439,'Demerval Lob??o',17,'2019-06-12 18:10:11'),(3440,'Dirceu Arcoverde',17,'2019-06-12 18:10:11'),(3441,'Dom Expedito Lopes',17,'2019-06-12 18:10:11'),(3442,'Dom Inoc??ncio',17,'2019-06-12 18:10:11'),(3443,'Domingos Mour??o',17,'2019-06-12 18:10:11'),(3444,'Elesb??o Veloso',17,'2019-06-12 18:10:11'),(3445,'Eliseu Martins',17,'2019-06-12 18:10:11'),(3446,'Esperantina',17,'2019-06-12 18:10:11'),(3447,'Fartura do Piau??',17,'2019-06-12 18:10:11'),(3448,'Flores do Piau??',17,'2019-06-12 18:10:11'),(3449,'Floresta do Piau??',17,'2019-06-12 18:10:11'),(3450,'Floriano',17,'2019-06-12 18:10:11'),(3451,'Francin??polis',17,'2019-06-12 18:10:11'),(3452,'Francisco Ayres',17,'2019-06-12 18:10:11'),(3453,'Francisco Macedo',17,'2019-06-12 18:10:11'),(3454,'Francisco Santos',17,'2019-06-12 18:10:11'),(3455,'Fronteiras',17,'2019-06-12 18:10:11'),(3456,'Geminiano',17,'2019-06-12 18:10:11'),(3457,'Gilbu??s',17,'2019-06-12 18:10:11'),(3458,'Guadalupe',17,'2019-06-12 18:10:11'),(3459,'Guaribas',17,'2019-06-12 18:10:11'),(3460,'Hugo Napole??o',17,'2019-06-12 18:10:11'),(3461,'Ilha Grande',17,'2019-06-12 18:10:11'),(3462,'Inhuma',17,'2019-06-12 18:10:11'),(3463,'Ipiranga do Piau??',17,'2019-06-12 18:10:11'),(3464,'Isa??as Coelho',17,'2019-06-12 18:10:11'),(3465,'Itain??polis',17,'2019-06-12 18:10:11'),(3466,'Itaueira',17,'2019-06-12 18:10:11'),(3467,'Jacobina do Piau??',17,'2019-06-12 18:10:11'),(3468,'Jaic??s',17,'2019-06-12 18:10:11'),(3469,'Jardim do Mulato',17,'2019-06-12 18:10:11'),(3470,'Jatob?? do Piau??',17,'2019-06-12 18:10:11'),(3471,'Jerumenha',17,'2019-06-12 18:10:11'),(3472,'Jo??o Costa',17,'2019-06-12 18:10:11'),(3473,'Joaquim Pires',17,'2019-06-12 18:10:11'),(3474,'Joca Marques',17,'2019-06-12 18:10:11'),(3475,'Jos?? de Freitas',17,'2019-06-12 18:10:11'),(3476,'Juazeiro do Piau??',17,'2019-06-12 18:10:11'),(3477,'J??lio Borges',17,'2019-06-12 18:10:11'),(3478,'Jurema',17,'2019-06-12 18:10:11'),(3479,'Lagoa Alegre',17,'2019-06-12 18:10:11'),(3480,'Lagoa de S??o Francisco',17,'2019-06-12 18:10:11'),(3481,'Lagoa do Barro do Piau??',17,'2019-06-12 18:10:11'),(3482,'Lagoa do Piau??',17,'2019-06-12 18:10:11'),(3483,'Lagoa do S??tio',17,'2019-06-12 18:10:11'),(3484,'Lagoinha do Piau??',17,'2019-06-12 18:10:11'),(3485,'Landri Sales',17,'2019-06-12 18:10:11'),(3486,'Lu??s Correia',17,'2019-06-12 18:10:11'),(3487,'Luzil??ndia',17,'2019-06-12 18:10:11'),(3488,'Madeiro',17,'2019-06-12 18:10:11'),(3489,'Manoel Em??dio',17,'2019-06-12 18:10:11'),(3490,'Marcol??ndia',17,'2019-06-12 18:10:11'),(3491,'Marcos Parente',17,'2019-06-12 18:10:11'),(3492,'Massap?? do Piau??',17,'2019-06-12 18:10:11'),(3493,'Matias Ol??mpio',17,'2019-06-12 18:10:11'),(3494,'Miguel Alves',17,'2019-06-12 18:10:11'),(3495,'Miguel Le??o',17,'2019-06-12 18:10:11'),(3496,'Milton Brand??o',17,'2019-06-12 18:10:11'),(3497,'Monsenhor Gil',17,'2019-06-12 18:10:11'),(3498,'Monsenhor Hip??lito',17,'2019-06-12 18:10:11'),(3499,'Monte Alegre do Piau??',17,'2019-06-12 18:10:11'),(3500,'Morro Cabe??a no Tempo',17,'2019-06-12 18:10:11'),(3501,'Morro do Chap??u do Piau??',17,'2019-06-12 18:10:11'),(3502,'Murici dos Portelas',17,'2019-06-12 18:10:11'),(3503,'Nazar?? do Piau??',17,'2019-06-12 18:10:11'),(3504,'Nossa Senhora de Nazar??',17,'2019-06-12 18:10:11'),(3505,'Nossa Senhora dos Rem??dios',17,'2019-06-12 18:10:11'),(3506,'Nova Santa Rita',17,'2019-06-12 18:10:11'),(3507,'Novo Oriente do Piau??',17,'2019-06-12 18:10:11'),(3508,'Novo Santo Ant??nio',17,'2019-06-12 18:10:11'),(3509,'Oeiras',17,'2019-06-12 18:10:11'),(3510,'Olho d`??gua do Piau??',17,'2019-06-12 18:10:11'),(3511,'Padre Marcos',17,'2019-06-12 18:10:11'),(3512,'Paes Landim',17,'2019-06-12 18:10:11'),(3513,'Paje?? do Piau??',17,'2019-06-12 18:10:11'),(3514,'Palmeira do Piau??',17,'2019-06-12 18:10:11'),(3515,'Palmeirais',17,'2019-06-12 18:10:11'),(3516,'Paquet??',17,'2019-06-12 18:10:11'),(3517,'Parnagu??',17,'2019-06-12 18:10:11'),(3518,'Parna??ba',17,'2019-06-12 18:10:11'),(3519,'Passagem Franca do Piau??',17,'2019-06-12 18:10:11'),(3520,'Patos do Piau??',17,'2019-06-12 18:10:11'),(3521,'Pau d`Arco do Piau??',17,'2019-06-12 18:10:11'),(3522,'Paulistana',17,'2019-06-12 18:10:11'),(3523,'Pavussu',17,'2019-06-12 18:10:11'),(3524,'Pedro II',17,'2019-06-12 18:10:11'),(3525,'Pedro Laurentino',17,'2019-06-12 18:10:11'),(3526,'Picos',17,'2019-06-12 18:10:11'),(3527,'Pimenteiras',17,'2019-06-12 18:10:11'),(3528,'Pio IX',17,'2019-06-12 18:10:11'),(3529,'Piracuruca',17,'2019-06-12 18:10:11'),(3530,'Piripiri',17,'2019-06-12 18:10:11'),(3531,'Porto',17,'2019-06-12 18:10:11'),(3532,'Porto Alegre do Piau??',17,'2019-06-12 18:10:11'),(3533,'Prata do Piau??',17,'2019-06-12 18:10:11'),(3534,'Queimada Nova',17,'2019-06-12 18:10:11'),(3535,'Reden????o do Gurgu??ia',17,'2019-06-12 18:10:11'),(3536,'Regenera????o',17,'2019-06-12 18:10:11'),(3537,'Riacho Frio',17,'2019-06-12 18:10:11'),(3538,'Ribeira do Piau??',17,'2019-06-12 18:10:11'),(3539,'Ribeiro Gon??alves',17,'2019-06-12 18:10:11'),(3540,'Rio Grande do Piau??',17,'2019-06-12 18:10:11'),(3541,'Santa Cruz do Piau??',17,'2019-06-12 18:10:11'),(3542,'Santa Cruz dos Milagres',17,'2019-06-12 18:10:11'),(3543,'Santa Filomena',17,'2019-06-12 18:10:11'),(3544,'Santa Luz',17,'2019-06-12 18:10:11'),(3545,'Santa Rosa do Piau??',17,'2019-06-12 18:10:11'),(3546,'Santana do Piau??',17,'2019-06-12 18:10:11'),(3547,'Santo Ant??nio de Lisboa',17,'2019-06-12 18:10:11'),(3548,'Santo Ant??nio dos Milagres',17,'2019-06-12 18:10:11'),(3549,'Santo In??cio do Piau??',17,'2019-06-12 18:10:11'),(3550,'S??o Braz do Piau??',17,'2019-06-12 18:10:11'),(3551,'S??o F??lix do Piau??',17,'2019-06-12 18:10:11'),(3552,'S??o Francisco de Assis do Piau??',17,'2019-06-12 18:10:11'),(3553,'S??o Francisco do Piau??',17,'2019-06-12 18:10:11'),(3554,'S??o Gon??alo do Gurgu??ia',17,'2019-06-12 18:10:11'),(3555,'S??o Gon??alo do Piau??',17,'2019-06-12 18:10:11'),(3556,'S??o Jo??o da Canabrava',17,'2019-06-12 18:10:11'),(3557,'S??o Jo??o da Fronteira',17,'2019-06-12 18:10:11'),(3558,'S??o Jo??o da Serra',17,'2019-06-12 18:10:11'),(3559,'S??o Jo??o da Varjota',17,'2019-06-12 18:10:11'),(3560,'S??o Jo??o do Arraial',17,'2019-06-12 18:10:11'),(3561,'S??o Jo??o do Piau??',17,'2019-06-12 18:10:11'),(3562,'S??o Jos?? do Divino',17,'2019-06-12 18:10:11'),(3563,'S??o Jos?? do Peixe',17,'2019-06-12 18:10:11'),(3564,'S??o Jos?? do Piau??',17,'2019-06-12 18:10:11'),(3565,'S??o Juli??o',17,'2019-06-12 18:10:11'),(3566,'S??o Louren??o do Piau??',17,'2019-06-12 18:10:11'),(3567,'S??o Luis do Piau??',17,'2019-06-12 18:10:11'),(3568,'S??o Miguel da Baixa Grande',17,'2019-06-12 18:10:11'),(3569,'S??o Miguel do Fidalgo',17,'2019-06-12 18:10:11'),(3570,'S??o Miguel do Tapuio',17,'2019-06-12 18:10:11'),(3571,'S??o Pedro do Piau??',17,'2019-06-12 18:10:11'),(3572,'S??o Raimundo Nonato',17,'2019-06-12 18:10:11'),(3573,'Sebasti??o Barros',17,'2019-06-12 18:10:11'),(3574,'Sebasti??o Leal',17,'2019-06-12 18:10:11'),(3575,'Sigefredo Pacheco',17,'2019-06-12 18:10:11'),(3576,'Sim??es',17,'2019-06-12 18:10:11'),(3577,'Simpl??cio Mendes',17,'2019-06-12 18:10:11'),(3578,'Socorro do Piau??',17,'2019-06-12 18:10:11'),(3579,'Sussuapara',17,'2019-06-12 18:10:11'),(3580,'Tamboril do Piau??',17,'2019-06-12 18:10:11'),(3581,'Tanque do Piau??',17,'2019-06-12 18:10:11'),(3582,'Teresina',17,'2019-06-12 18:10:11'),(3583,'Uni??o',17,'2019-06-12 18:10:11'),(3584,'Uru??u??',17,'2019-06-12 18:10:11'),(3585,'Valen??a do Piau??',17,'2019-06-12 18:10:11'),(3586,'V??rzea Branca',17,'2019-06-12 18:10:11'),(3587,'V??rzea Grande',17,'2019-06-12 18:10:11'),(3588,'Vera Mendes',17,'2019-06-12 18:10:11'),(3589,'Vila Nova do Piau??',17,'2019-06-12 18:10:11'),(3590,'Wall Ferraz',17,'2019-06-12 18:10:11'),(3591,'Angra dos Reis',19,'2019-06-12 18:10:11'),(3592,'Aperib??',19,'2019-06-12 18:10:11'),(3593,'Araruama',19,'2019-06-12 18:10:11'),(3594,'Areal',19,'2019-06-12 18:10:11'),(3595,'Arma????o dos B??zios',19,'2019-06-12 18:10:11'),(3596,'Arraial do Cabo',19,'2019-06-12 18:10:11'),(3597,'Barra do Pira??',19,'2019-06-12 18:10:11'),(3598,'Barra Mansa',19,'2019-06-12 18:10:11'),(3599,'Belford Roxo',19,'2019-06-12 18:10:11'),(3600,'Bom Jardim',19,'2019-06-12 18:10:11'),(3601,'Bom Jesus do Itabapoana',19,'2019-06-12 18:10:11'),(3602,'Cabo Frio',19,'2019-06-12 18:10:11'),(3603,'Cachoeiras de Macacu',19,'2019-06-12 18:10:11'),(3604,'Cambuci',19,'2019-06-12 18:10:11'),(3605,'Campos dos Goytacazes',19,'2019-06-12 18:10:11'),(3606,'Cantagalo',19,'2019-06-12 18:10:11'),(3607,'Carapebus',19,'2019-06-12 18:10:11'),(3608,'Cardoso Moreira',19,'2019-06-12 18:10:11'),(3609,'Carmo',19,'2019-06-12 18:10:11'),(3610,'Casimiro de Abreu',19,'2019-06-12 18:10:11'),(3611,'Comendador Levy Gasparian',19,'2019-06-12 18:10:11'),(3612,'Concei????o de Macabu',19,'2019-06-12 18:10:11'),(3613,'Cordeiro',19,'2019-06-12 18:10:11'),(3614,'Duas Barras',19,'2019-06-12 18:10:11'),(3615,'Duque de Caxias',19,'2019-06-12 18:10:11'),(3616,'Engenheiro Paulo de Frontin',19,'2019-06-12 18:10:11'),(3617,'Guapimirim',19,'2019-06-12 18:10:11'),(3618,'Iguaba Grande',19,'2019-06-12 18:10:11'),(3619,'Itabora??',19,'2019-06-12 18:10:11'),(3620,'Itagua??',19,'2019-06-12 18:10:11'),(3621,'Italva',19,'2019-06-12 18:10:11'),(3622,'Itaocara',19,'2019-06-12 18:10:11'),(3623,'Itaperuna',19,'2019-06-12 18:10:11'),(3624,'Itatiaia',19,'2019-06-12 18:10:11'),(3625,'Japeri',19,'2019-06-12 18:10:11'),(3626,'Laje do Muria??',19,'2019-06-12 18:10:11'),(3627,'Maca??',19,'2019-06-12 18:10:11'),(3628,'Macuco',19,'2019-06-12 18:10:11'),(3629,'Mag??',19,'2019-06-12 18:10:11'),(3630,'Mangaratiba',19,'2019-06-12 18:10:11'),(3631,'Maric??',19,'2019-06-12 18:10:11'),(3632,'Mendes',19,'2019-06-12 18:10:11'),(3633,'Mesquita',19,'2019-06-12 18:10:11'),(3634,'Miguel Pereira',19,'2019-06-12 18:10:11'),(3635,'Miracema',19,'2019-06-12 18:10:11'),(3636,'Natividade',19,'2019-06-12 18:10:11'),(3637,'Nil??polis',19,'2019-06-12 18:10:11'),(3638,'Niter??i',19,'2019-06-12 18:10:11'),(3639,'Nova Friburgo',19,'2019-06-12 18:10:11'),(3640,'Nova Igua??u',19,'2019-06-12 18:10:11'),(3641,'Paracambi',19,'2019-06-12 18:10:11'),(3642,'Para??ba do Sul',19,'2019-06-12 18:10:11'),(3643,'Parati',19,'2019-06-12 18:10:11'),(3644,'Paty do Alferes',19,'2019-06-12 18:10:11'),(3645,'Petr??polis',19,'2019-06-12 18:10:11'),(3646,'Pinheiral',19,'2019-06-12 18:10:11'),(3647,'Pira??',19,'2019-06-12 18:10:11'),(3648,'Porci??ncula',19,'2019-06-12 18:10:11'),(3649,'Porto Real',19,'2019-06-12 18:10:11'),(3650,'Quatis',19,'2019-06-12 18:10:11'),(3651,'Queimados',19,'2019-06-12 18:10:11'),(3652,'Quissam??',19,'2019-06-12 18:10:11'),(3653,'Resende',19,'2019-06-12 18:10:11'),(3654,'Rio Bonito',19,'2019-06-12 18:10:11'),(3655,'Rio Claro',19,'2019-06-12 18:10:11'),(3656,'Rio das Flores',19,'2019-06-12 18:10:11'),(3657,'Rio das Ostras',19,'2019-06-12 18:10:11'),(3658,'Rio de Janeiro',19,'2019-06-12 18:10:11'),(3659,'Santa Maria Madalena',19,'2019-06-12 18:10:11'),(3660,'Santo Ant??nio de P??dua',19,'2019-06-12 18:10:11'),(3661,'S??o Fid??lis',19,'2019-06-12 18:10:11'),(3662,'S??o Francisco de Itabapoana',19,'2019-06-12 18:10:11'),(3663,'S??o Gon??alo',19,'2019-06-12 18:10:11'),(3664,'S??o Jo??o da Barra',19,'2019-06-12 18:10:11'),(3665,'S??o Jo??o de Meriti',19,'2019-06-12 18:10:11'),(3666,'S??o Jos?? de Ub??',19,'2019-06-12 18:10:11'),(3667,'S??o Jos?? do Vale do Rio Pret',19,'2019-06-12 18:10:11'),(3668,'S??o Pedro da Aldeia',19,'2019-06-12 18:10:11'),(3669,'S??o Sebasti??o do Alto',19,'2019-06-12 18:10:11'),(3670,'Sapucaia',19,'2019-06-12 18:10:11'),(3671,'Saquarema',19,'2019-06-12 18:10:11'),(3672,'Serop??dica',19,'2019-06-12 18:10:11'),(3673,'Silva Jardim',19,'2019-06-12 18:10:11'),(3674,'Sumidouro',19,'2019-06-12 18:10:11'),(3675,'Tangu??',19,'2019-06-12 18:10:11'),(3676,'Teres??polis',19,'2019-06-12 18:10:11'),(3677,'Trajano de Morais',19,'2019-06-12 18:10:11'),(3678,'Tr??s Rios',19,'2019-06-12 18:10:11'),(3679,'Valen??a',19,'2019-06-12 18:10:11'),(3680,'Varre-Sai',19,'2019-06-12 18:10:11'),(3681,'Vassouras',19,'2019-06-12 18:10:11'),(3682,'Volta Redonda',19,'2019-06-12 18:10:11'),(3683,'Acari',20,'2019-06-12 18:10:11'),(3684,'A??u',20,'2019-06-12 18:10:11'),(3685,'Afonso Bezerra',20,'2019-06-12 18:10:11'),(3686,'??gua Nova',20,'2019-06-12 18:10:11'),(3687,'Alexandria',20,'2019-06-12 18:10:11'),(3688,'Almino Afonso',20,'2019-06-12 18:10:11'),(3689,'Alto do Rodrigues',20,'2019-06-12 18:10:11'),(3690,'Angicos',20,'2019-06-12 18:10:11'),(3691,'Ant??nio Martins',20,'2019-06-12 18:10:11'),(3692,'Apodi',20,'2019-06-12 18:10:11'),(3693,'Areia Branca',20,'2019-06-12 18:10:11'),(3694,'Ar??s',20,'2019-06-12 18:10:11'),(3695,'Augusto Severo',20,'2019-06-12 18:10:11'),(3696,'Ba??a Formosa',20,'2019-06-12 18:10:11'),(3697,'Bara??na',20,'2019-06-12 18:10:11'),(3698,'Barcelona',20,'2019-06-12 18:10:11'),(3699,'Bento Fernandes',20,'2019-06-12 18:10:11'),(3700,'Bod??',20,'2019-06-12 18:10:11'),(3701,'Bom Jesus',20,'2019-06-12 18:10:11'),(3702,'Brejinho',20,'2019-06-12 18:10:11'),(3703,'Cai??ara do Norte',20,'2019-06-12 18:10:11'),(3704,'Cai??ara do Rio do Vento',20,'2019-06-12 18:10:11'),(3705,'Caic??',20,'2019-06-12 18:10:11'),(3706,'Campo Redondo',20,'2019-06-12 18:10:11'),(3707,'Canguaretama',20,'2019-06-12 18:10:11'),(3708,'Cara??bas',20,'2019-06-12 18:10:11'),(3709,'Carna??ba dos Dantas',20,'2019-06-12 18:10:11'),(3710,'Carnaubais',20,'2019-06-12 18:10:11'),(3711,'Cear??-Mirim',20,'2019-06-12 18:10:11'),(3712,'Cerro Cor??',20,'2019-06-12 18:10:11'),(3713,'Coronel Ezequiel',20,'2019-06-12 18:10:11'),(3714,'Coronel Jo??o Pessoa',20,'2019-06-12 18:10:11'),(3715,'Cruzeta',20,'2019-06-12 18:10:11'),(3716,'Currais Novos',20,'2019-06-12 18:10:11'),(3717,'Doutor Severiano',20,'2019-06-12 18:10:11'),(3718,'Encanto',20,'2019-06-12 18:10:11'),(3719,'Equador',20,'2019-06-12 18:10:11'),(3720,'Esp??rito Santo',20,'2019-06-12 18:10:11'),(3721,'Extremoz',20,'2019-06-12 18:10:11'),(3722,'Felipe Guerra',20,'2019-06-12 18:10:11'),(3723,'Fernando Pedroza',20,'2019-06-12 18:10:11'),(3724,'Flor??nia',20,'2019-06-12 18:10:11'),(3725,'Francisco Dantas',20,'2019-06-12 18:10:11'),(3726,'Frutuoso Gomes',20,'2019-06-12 18:10:11'),(3727,'Galinhos',20,'2019-06-12 18:10:11'),(3728,'Goianinha',20,'2019-06-12 18:10:11'),(3729,'Governador Dix-Sept Rosado',20,'2019-06-12 18:10:11'),(3730,'Grossos',20,'2019-06-12 18:10:11'),(3731,'Guamar??',20,'2019-06-12 18:10:11'),(3732,'Ielmo Marinho',20,'2019-06-12 18:10:11'),(3733,'Ipangua??u',20,'2019-06-12 18:10:11'),(3734,'Ipueira',20,'2019-06-12 18:10:11'),(3735,'Itaj??',20,'2019-06-12 18:10:11'),(3736,'Ita??',20,'2019-06-12 18:10:11'),(3737,'Ja??an??',20,'2019-06-12 18:10:11'),(3738,'Janda??ra',20,'2019-06-12 18:10:11'),(3739,'Jandu??s',20,'2019-06-12 18:10:11'),(3740,'Janu??rio Cicco',20,'2019-06-12 18:10:11'),(3741,'Japi',20,'2019-06-12 18:10:11'),(3742,'Jardim de Angicos',20,'2019-06-12 18:10:11'),(3743,'Jardim de Piranhas',20,'2019-06-12 18:10:11'),(3744,'Jardim do Serid??',20,'2019-06-12 18:10:11'),(3745,'Jo??o C??mara',20,'2019-06-12 18:10:11'),(3746,'Jo??o Dias',20,'2019-06-12 18:10:11'),(3747,'Jos?? da Penha',20,'2019-06-12 18:10:11'),(3748,'Jucurutu',20,'2019-06-12 18:10:11'),(3749,'Jundi??',20,'2019-06-12 18:10:11'),(3750,'Lagoa d`Anta',20,'2019-06-12 18:10:11'),(3751,'Lagoa de Pedras',20,'2019-06-12 18:10:11'),(3752,'Lagoa de Velhos',20,'2019-06-12 18:10:11'),(3753,'Lagoa Nova',20,'2019-06-12 18:10:11'),(3754,'Lagoa Salgada',20,'2019-06-12 18:10:11'),(3755,'Lajes',20,'2019-06-12 18:10:11'),(3756,'Lajes Pintadas',20,'2019-06-12 18:10:11'),(3757,'Lucr??cia',20,'2019-06-12 18:10:11'),(3758,'Lu??s Gomes',20,'2019-06-12 18:10:11'),(3759,'Maca??ba',20,'2019-06-12 18:10:11'),(3760,'Macau',20,'2019-06-12 18:10:11'),(3761,'Major Sales',20,'2019-06-12 18:10:11'),(3762,'Marcelino Vieira',20,'2019-06-12 18:10:11'),(3763,'Martins',20,'2019-06-12 18:10:11'),(3764,'Maxaranguape',20,'2019-06-12 18:10:11'),(3765,'Messias Targino',20,'2019-06-12 18:10:11'),(3766,'Montanhas',20,'2019-06-12 18:10:11'),(3767,'Monte Alegre',20,'2019-06-12 18:10:11'),(3768,'Monte das Gameleiras',20,'2019-06-12 18:10:11'),(3769,'Mossor??',20,'2019-06-12 18:10:11'),(3770,'Natal',20,'2019-06-12 18:10:11'),(3771,'N??sia Floresta',20,'2019-06-12 18:10:11'),(3772,'Nova Cruz',20,'2019-06-12 18:10:11'),(3773,'Olho-d`??gua do Borges',20,'2019-06-12 18:10:11'),(3774,'Ouro Branco',20,'2019-06-12 18:10:11'),(3775,'Paran??',20,'2019-06-12 18:10:11'),(3776,'Para??',20,'2019-06-12 18:10:11'),(3777,'Parazinho',20,'2019-06-12 18:10:11'),(3778,'Parelhas',20,'2019-06-12 18:10:11'),(3779,'Parnamirim',20,'2019-06-12 18:10:11'),(3780,'Passa e Fica',20,'2019-06-12 18:10:11'),(3781,'Passagem',20,'2019-06-12 18:10:11'),(3782,'Patu',20,'2019-06-12 18:10:11'),(3783,'Pau dos Ferros',20,'2019-06-12 18:10:11'),(3784,'Pedra Grande',20,'2019-06-12 18:10:11'),(3785,'Pedra Preta',20,'2019-06-12 18:10:11'),(3786,'Pedro Avelino',20,'2019-06-12 18:10:11'),(3787,'Pedro Velho',20,'2019-06-12 18:10:11'),(3788,'Pend??ncias',20,'2019-06-12 18:10:11'),(3789,'Pil??es',20,'2019-06-12 18:10:11'),(3790,'Po??o Branco',20,'2019-06-12 18:10:11'),(3791,'Portalegre',20,'2019-06-12 18:10:11'),(3792,'Porto do Mangue',20,'2019-06-12 18:10:11'),(3793,'Presidente Juscelino',20,'2019-06-12 18:10:11'),(3794,'Pureza',20,'2019-06-12 18:10:11'),(3795,'Rafael Fernandes',20,'2019-06-12 18:10:11'),(3796,'Rafael Godeiro',20,'2019-06-12 18:10:11'),(3797,'Riacho da Cruz',20,'2019-06-12 18:10:11'),(3798,'Riacho de Santana',20,'2019-06-12 18:10:11'),(3799,'Riachuelo',20,'2019-06-12 18:10:11'),(3800,'Rio do Fogo',20,'2019-06-12 18:10:11'),(3801,'Rodolfo Fernandes',20,'2019-06-12 18:10:11'),(3802,'Ruy Barbosa',20,'2019-06-12 18:10:11'),(3803,'Santa Cruz',20,'2019-06-12 18:10:11'),(3804,'Santa Maria',20,'2019-06-12 18:10:11'),(3805,'Santana do Matos',20,'2019-06-12 18:10:11'),(3806,'Santana do Serid??',20,'2019-06-12 18:10:11'),(3807,'Santo Ant??nio',20,'2019-06-12 18:10:11'),(3808,'S??o Bento do Norte',20,'2019-06-12 18:10:11'),(3809,'S??o Bento do Trair??',20,'2019-06-12 18:10:11'),(3810,'S??o Fernando',20,'2019-06-12 18:10:11'),(3811,'S??o Francisco do Oeste',20,'2019-06-12 18:10:11'),(3812,'S??o Gon??alo do Amarante',20,'2019-06-12 18:10:11'),(3813,'S??o Jo??o do Sabugi',20,'2019-06-12 18:10:11'),(3814,'S??o Jos?? de Mipibu',20,'2019-06-12 18:10:11'),(3815,'S??o Jos?? do Campestre',20,'2019-06-12 18:10:11'),(3816,'S??o Jos?? do Serid??',20,'2019-06-12 18:10:11'),(3817,'S??o Miguel',20,'2019-06-12 18:10:11'),(3818,'S??o Miguel do Gostoso',20,'2019-06-12 18:10:11'),(3819,'S??o Paulo do Potengi',20,'2019-06-12 18:10:11'),(3820,'S??o Pedro',20,'2019-06-12 18:10:11'),(3821,'S??o Rafael',20,'2019-06-12 18:10:11'),(3822,'S??o Tom??',20,'2019-06-12 18:10:11'),(3823,'S??o Vicente',20,'2019-06-12 18:10:11'),(3824,'Senador El??i de Souza',20,'2019-06-12 18:10:11'),(3825,'Senador Georgino Avelino',20,'2019-06-12 18:10:11'),(3826,'Serra de S??o Bento',20,'2019-06-12 18:10:11'),(3827,'Serra do Mel',20,'2019-06-12 18:10:11'),(3828,'Serra Negra do Norte',20,'2019-06-12 18:10:11'),(3829,'Serrinha',20,'2019-06-12 18:10:11'),(3830,'Serrinha dos Pintos',20,'2019-06-12 18:10:11'),(3831,'Severiano Melo',20,'2019-06-12 18:10:11'),(3832,'S??tio Novo',20,'2019-06-12 18:10:11'),(3833,'Taboleiro Grande',20,'2019-06-12 18:10:11'),(3834,'Taipu',20,'2019-06-12 18:10:11'),(3835,'Tangar??',20,'2019-06-12 18:10:11'),(3836,'Tenente Ananias',20,'2019-06-12 18:10:11'),(3837,'Tenente Laurentino Cruz',20,'2019-06-12 18:10:11'),(3838,'Tibau',20,'2019-06-12 18:10:11'),(3839,'Tibau do Sul',20,'2019-06-12 18:10:11'),(3840,'Timba??ba dos Batistas',20,'2019-06-12 18:10:11'),(3841,'Touros',20,'2019-06-12 18:10:11'),(3842,'Triunfo Potiguar',20,'2019-06-12 18:10:11'),(3843,'Umarizal',20,'2019-06-12 18:10:11'),(3844,'Upanema',20,'2019-06-12 18:10:11'),(3845,'V??rzea',20,'2019-06-12 18:10:11'),(3846,'Venha-Ver',20,'2019-06-12 18:10:11'),(3847,'Vera Cruz',20,'2019-06-12 18:10:11'),(3848,'Vi??osa',20,'2019-06-12 18:10:11'),(3849,'Vila Flor',20,'2019-06-12 18:10:11'),(3850,'Acegu??',23,'2019-06-12 18:10:11'),(3851,'??gua Santa',23,'2019-06-12 18:10:11'),(3852,'Agudo',23,'2019-06-12 18:10:11'),(3853,'Ajuricaba',23,'2019-06-12 18:10:11'),(3854,'Alecrim',23,'2019-06-12 18:10:11'),(3855,'Alegrete',23,'2019-06-12 18:10:11'),(3856,'Alegria',23,'2019-06-12 18:10:11'),(3857,'Almirante Tamandar?? do Sul',23,'2019-06-12 18:10:11'),(3858,'Alpestre',23,'2019-06-12 18:10:11'),(3859,'Alto Alegre',23,'2019-06-12 18:10:11'),(3860,'Alto Feliz',23,'2019-06-12 18:10:11'),(3861,'Alvorada',23,'2019-06-12 18:10:11'),(3862,'Amaral Ferrador',23,'2019-06-12 18:10:11'),(3863,'Ametista do Sul',23,'2019-06-12 18:10:11'),(3864,'Andr?? da Rocha',23,'2019-06-12 18:10:11'),(3865,'Anta Gorda',23,'2019-06-12 18:10:11'),(3866,'Ant??nio Prado',23,'2019-06-12 18:10:11'),(3867,'Arambar??',23,'2019-06-12 18:10:11'),(3868,'Araric??',23,'2019-06-12 18:10:11'),(3869,'Aratiba',23,'2019-06-12 18:10:11'),(3870,'Arroio do Meio',23,'2019-06-12 18:10:11'),(3871,'Arroio do Padre',23,'2019-06-12 18:10:11'),(3872,'Arroio do Sal',23,'2019-06-12 18:10:11'),(3873,'Arroio do Tigre',23,'2019-06-12 18:10:11'),(3874,'Arroio dos Ratos',23,'2019-06-12 18:10:11'),(3875,'Arroio Grande',23,'2019-06-12 18:10:11'),(3876,'Arvorezinha',23,'2019-06-12 18:10:11'),(3877,'Augusto Pestana',23,'2019-06-12 18:10:11'),(3878,'??urea',23,'2019-06-12 18:10:11'),(3879,'Bag??',23,'2019-06-12 18:10:11'),(3880,'Balne??rio Pinhal',23,'2019-06-12 18:10:11'),(3881,'Bar??o',23,'2019-06-12 18:10:11'),(3882,'Bar??o de Cotegipe',23,'2019-06-12 18:10:11'),(3883,'Bar??o do Triunfo',23,'2019-06-12 18:10:11'),(3884,'Barra do Guarita',23,'2019-06-12 18:10:11'),(3885,'Barra do Quara??',23,'2019-06-12 18:10:11'),(3886,'Barra do Ribeiro',23,'2019-06-12 18:10:11'),(3887,'Barra do Rio Azul',23,'2019-06-12 18:10:11'),(3888,'Barra Funda',23,'2019-06-12 18:10:11'),(3889,'Barrac??o',23,'2019-06-12 18:10:11'),(3890,'Barros Cassal',23,'2019-06-12 18:10:11'),(3891,'Benjamin Constant do Sul',23,'2019-06-12 18:10:11'),(3892,'Bento Gon??alves',23,'2019-06-12 18:10:11'),(3893,'Boa Vista das Miss??es',23,'2019-06-12 18:10:11'),(3894,'Boa Vista do Buric??',23,'2019-06-12 18:10:11'),(3895,'Boa Vista do Cadeado',23,'2019-06-12 18:10:11'),(3896,'Boa Vista do Incra',23,'2019-06-12 18:10:11'),(3897,'Boa Vista do Sul',23,'2019-06-12 18:10:11'),(3898,'Bom Jesus',23,'2019-06-12 18:10:11'),(3899,'Bom Princ??pio',23,'2019-06-12 18:10:11'),(3900,'Bom Progresso',23,'2019-06-12 18:10:11'),(3901,'Bom Retiro do Sul',23,'2019-06-12 18:10:11'),(3902,'Boqueir??o do Le??o',23,'2019-06-12 18:10:11'),(3903,'Bossoroca',23,'2019-06-12 18:10:11'),(3904,'Bozano',23,'2019-06-12 18:10:11'),(3905,'Braga',23,'2019-06-12 18:10:11'),(3906,'Brochier',23,'2019-06-12 18:10:11'),(3907,'Buti??',23,'2019-06-12 18:10:11'),(3908,'Ca??apava do Sul',23,'2019-06-12 18:10:11'),(3909,'Cacequi',23,'2019-06-12 18:10:11'),(3910,'Cachoeira do Sul',23,'2019-06-12 18:10:11'),(3911,'Cachoeirinha',23,'2019-06-12 18:10:11'),(3912,'Cacique Doble',23,'2019-06-12 18:10:11'),(3913,'Caibat??',23,'2019-06-12 18:10:11'),(3914,'Cai??ara',23,'2019-06-12 18:10:11'),(3915,'Camaqu??',23,'2019-06-12 18:10:11'),(3916,'Camargo',23,'2019-06-12 18:10:11'),(3917,'Cambar?? do Sul',23,'2019-06-12 18:10:11'),(3918,'Campestre da Serra',23,'2019-06-12 18:10:11'),(3919,'Campina das Miss??es',23,'2019-06-12 18:10:11'),(3920,'Campinas do Sul',23,'2019-06-12 18:10:11'),(3921,'Campo Bom',23,'2019-06-12 18:10:11'),(3922,'Campo Novo',23,'2019-06-12 18:10:11'),(3923,'Campos Borges',23,'2019-06-12 18:10:11'),(3924,'Candel??ria',23,'2019-06-12 18:10:11'),(3925,'C??ndido God??i',23,'2019-06-12 18:10:11'),(3926,'Candiota',23,'2019-06-12 18:10:11'),(3927,'Canela',23,'2019-06-12 18:10:11'),(3928,'Cangu??u',23,'2019-06-12 18:10:11'),(3929,'Canoas',23,'2019-06-12 18:10:11'),(3930,'Canudos do Vale',23,'2019-06-12 18:10:11'),(3931,'Cap??o Bonito do Sul',23,'2019-06-12 18:10:11'),(3932,'Cap??o da Canoa',23,'2019-06-12 18:10:11'),(3933,'Cap??o do Cip??',23,'2019-06-12 18:10:11'),(3934,'Cap??o do Le??o',23,'2019-06-12 18:10:11'),(3935,'Capela de Santana',23,'2019-06-12 18:10:11'),(3936,'Capit??o',23,'2019-06-12 18:10:11'),(3937,'Capivari do Sul',23,'2019-06-12 18:10:11'),(3938,'Cara??',23,'2019-06-12 18:10:11'),(3939,'Carazinho',23,'2019-06-12 18:10:11'),(3940,'Carlos Barbosa',23,'2019-06-12 18:10:11'),(3941,'Carlos Gomes',23,'2019-06-12 18:10:11'),(3942,'Casca',23,'2019-06-12 18:10:11'),(3943,'Caseiros',23,'2019-06-12 18:10:11'),(3944,'Catu??pe',23,'2019-06-12 18:10:11'),(3945,'Caxias do Sul',23,'2019-06-12 18:10:11'),(3946,'Centen??rio',23,'2019-06-12 18:10:11'),(3947,'Cerrito',23,'2019-06-12 18:10:11'),(3948,'Cerro Branco',23,'2019-06-12 18:10:11'),(3949,'Cerro Grande',23,'2019-06-12 18:10:11'),(3950,'Cerro Grande do Sul',23,'2019-06-12 18:10:11'),(3951,'Cerro Largo',23,'2019-06-12 18:10:11'),(3952,'Chapada',23,'2019-06-12 18:10:11'),(3953,'Charqueadas',23,'2019-06-12 18:10:11'),(3954,'Charrua',23,'2019-06-12 18:10:11'),(3955,'Chiapeta',23,'2019-06-12 18:10:11'),(3956,'Chu??',23,'2019-06-12 18:10:11'),(3957,'Chuvisca',23,'2019-06-12 18:10:11'),(3958,'Cidreira',23,'2019-06-12 18:10:11'),(3959,'Cir??aco',23,'2019-06-12 18:10:11'),(3960,'Colinas',23,'2019-06-12 18:10:11'),(3961,'Colorado',23,'2019-06-12 18:10:11'),(3962,'Condor',23,'2019-06-12 18:10:11'),(3963,'Constantina',23,'2019-06-12 18:10:11'),(3964,'Coqueiro Baixo',23,'2019-06-12 18:10:11'),(3965,'Coqueiros do Sul',23,'2019-06-12 18:10:11'),(3966,'Coronel Barros',23,'2019-06-12 18:10:11'),(3967,'Coronel Bicaco',23,'2019-06-12 18:10:11'),(3968,'Coronel Pilar',23,'2019-06-12 18:10:11'),(3969,'Cotipor??',23,'2019-06-12 18:10:11'),(3970,'Coxilha',23,'2019-06-12 18:10:11'),(3971,'Crissiumal',23,'2019-06-12 18:10:11'),(3972,'Cristal',23,'2019-06-12 18:10:11'),(3973,'Cristal do Sul',23,'2019-06-12 18:10:11'),(3974,'Cruz Alta',23,'2019-06-12 18:10:11'),(3975,'Cruzaltense',23,'2019-06-12 18:10:11'),(3976,'Cruzeiro do Sul',23,'2019-06-12 18:10:11'),(3977,'David Canabarro',23,'2019-06-12 18:10:11'),(3978,'Derrubadas',23,'2019-06-12 18:10:11'),(3979,'Dezesseis de Novembro',23,'2019-06-12 18:10:11'),(3980,'Dilermando de Aguiar',23,'2019-06-12 18:10:11'),(3981,'Dois Irm??os',23,'2019-06-12 18:10:11'),(3982,'Dois Irm??os das Miss??es',23,'2019-06-12 18:10:11'),(3983,'Dois Lajeados',23,'2019-06-12 18:10:11'),(3984,'Dom Feliciano',23,'2019-06-12 18:10:11'),(3985,'Dom Pedrito',23,'2019-06-12 18:10:11'),(3986,'Dom Pedro de Alc??ntara',23,'2019-06-12 18:10:11'),(3987,'Dona Francisca',23,'2019-06-12 18:10:11'),(3988,'Doutor Maur??cio Cardoso',23,'2019-06-12 18:10:11'),(3989,'Doutor Ricardo',23,'2019-06-12 18:10:11'),(3990,'Eldorado do Sul',23,'2019-06-12 18:10:11'),(3991,'Encantado',23,'2019-06-12 18:10:11'),(3992,'Encruzilhada do Sul',23,'2019-06-12 18:10:11'),(3993,'Engenho Velho',23,'2019-06-12 18:10:11'),(3994,'Entre Rios do Sul',23,'2019-06-12 18:10:11'),(3995,'Entre-Iju??s',23,'2019-06-12 18:10:11'),(3996,'Erebango',23,'2019-06-12 18:10:11'),(3997,'Erechim',23,'2019-06-12 18:10:11'),(3998,'Ernestina',23,'2019-06-12 18:10:11'),(3999,'Erval Grande',23,'2019-06-12 18:10:11'),(4000,'Erval Seco',23,'2019-06-12 18:10:11'),(4001,'Esmeralda',23,'2019-06-12 18:10:11'),(4002,'Esperan??a do Sul',23,'2019-06-12 18:10:11'),(4003,'Espumoso',23,'2019-06-12 18:10:11'),(4004,'Esta????o',23,'2019-06-12 18:10:11'),(4005,'Est??ncia Velha',23,'2019-06-12 18:10:11'),(4006,'Esteio',23,'2019-06-12 18:10:11'),(4007,'Estrela',23,'2019-06-12 18:10:11'),(4008,'Estrela Velha',23,'2019-06-12 18:10:11'),(4009,'Eug??nio de Castro',23,'2019-06-12 18:10:11'),(4010,'Fagundes Varela',23,'2019-06-12 18:10:11'),(4011,'Farroupilha',23,'2019-06-12 18:10:11'),(4012,'Faxinal do Soturno',23,'2019-06-12 18:10:11'),(4013,'Faxinalzinho',23,'2019-06-12 18:10:11'),(4014,'Fazenda Vilanova',23,'2019-06-12 18:10:11'),(4015,'Feliz',23,'2019-06-12 18:10:11'),(4016,'Flores da Cunha',23,'2019-06-12 18:10:11'),(4017,'Floriano Peixoto',23,'2019-06-12 18:10:11'),(4018,'Fontoura Xavier',23,'2019-06-12 18:10:11'),(4019,'Formigueiro',23,'2019-06-12 18:10:11'),(4020,'Forquetinha',23,'2019-06-12 18:10:11'),(4021,'Fortaleza dos Valos',23,'2019-06-12 18:10:11'),(4022,'Frederico Westphalen',23,'2019-06-12 18:10:11'),(4023,'Garibaldi',23,'2019-06-12 18:10:11'),(4024,'Garruchos',23,'2019-06-12 18:10:11'),(4025,'Gaurama',23,'2019-06-12 18:10:11'),(4026,'General C??mara',23,'2019-06-12 18:10:11'),(4027,'Gentil',23,'2019-06-12 18:10:11'),(4028,'Get??lio Vargas',23,'2019-06-12 18:10:11'),(4029,'Giru??',23,'2019-06-12 18:10:11'),(4030,'Glorinha',23,'2019-06-12 18:10:11'),(4031,'Gramado',23,'2019-06-12 18:10:11'),(4032,'Gramado dos Loureiros',23,'2019-06-12 18:10:11'),(4033,'Gramado Xavier',23,'2019-06-12 18:10:11'),(4034,'Gravata??',23,'2019-06-12 18:10:11'),(4035,'Guabiju',23,'2019-06-12 18:10:11'),(4036,'Gua??ba',23,'2019-06-12 18:10:11'),(4037,'Guapor??',23,'2019-06-12 18:10:11'),(4038,'Guarani das Miss??es',23,'2019-06-12 18:10:11'),(4039,'Harmonia',23,'2019-06-12 18:10:11'),(4040,'Herval',23,'2019-06-12 18:10:11'),(4041,'Herveiras',23,'2019-06-12 18:10:11'),(4042,'Horizontina',23,'2019-06-12 18:10:11'),(4043,'Hulha Negra',23,'2019-06-12 18:10:11'),(4044,'Humait??',23,'2019-06-12 18:10:11'),(4045,'Ibarama',23,'2019-06-12 18:10:11'),(4046,'Ibia????',23,'2019-06-12 18:10:11'),(4047,'Ibiraiaras',23,'2019-06-12 18:10:11'),(4048,'Ibirapuit??',23,'2019-06-12 18:10:11'),(4049,'Ibirub??',23,'2019-06-12 18:10:11'),(4050,'Igrejinha',23,'2019-06-12 18:10:11'),(4051,'Iju??',23,'2019-06-12 18:10:11'),(4052,'Il??polis',23,'2019-06-12 18:10:11'),(4053,'Imb??',23,'2019-06-12 18:10:11'),(4054,'Imigrante',23,'2019-06-12 18:10:11'),(4055,'Independ??ncia',23,'2019-06-12 18:10:11'),(4056,'Inhacor??',23,'2019-06-12 18:10:11'),(4057,'Ip??',23,'2019-06-12 18:10:11'),(4058,'Ipiranga do Sul',23,'2019-06-12 18:10:11'),(4059,'Ira??',23,'2019-06-12 18:10:11'),(4060,'Itaara',23,'2019-06-12 18:10:11'),(4061,'Itacurubi',23,'2019-06-12 18:10:11'),(4062,'Itapuca',23,'2019-06-12 18:10:11'),(4063,'Itaqui',23,'2019-06-12 18:10:11'),(4064,'Itati',23,'2019-06-12 18:10:11'),(4065,'Itatiba do Sul',23,'2019-06-12 18:10:11'),(4066,'Ivor??',23,'2019-06-12 18:10:11'),(4067,'Ivoti',23,'2019-06-12 18:10:11'),(4068,'Jaboticaba',23,'2019-06-12 18:10:11'),(4069,'Jacuizinho',23,'2019-06-12 18:10:11'),(4070,'Jacutinga',23,'2019-06-12 18:10:11'),(4071,'Jaguar??o',23,'2019-06-12 18:10:11'),(4072,'Jaguari',23,'2019-06-12 18:10:11'),(4073,'Jaquirana',23,'2019-06-12 18:10:11'),(4074,'Jari',23,'2019-06-12 18:10:11'),(4075,'J??ia',23,'2019-06-12 18:10:11'),(4076,'J??lio de Castilhos',23,'2019-06-12 18:10:11'),(4077,'Lagoa Bonita do Sul',23,'2019-06-12 18:10:11'),(4078,'Lagoa dos Tr??s Cantos',23,'2019-06-12 18:10:11'),(4079,'Lagoa Vermelha',23,'2019-06-12 18:10:11'),(4080,'Lago??o',23,'2019-06-12 18:10:11'),(4081,'Lajeado',23,'2019-06-12 18:10:11'),(4082,'Lajeado do Bugre',23,'2019-06-12 18:10:11'),(4083,'Lavras do Sul',23,'2019-06-12 18:10:11'),(4084,'Liberato Salzano',23,'2019-06-12 18:10:11'),(4085,'Lindolfo Collor',23,'2019-06-12 18:10:11'),(4086,'Linha Nova',23,'2019-06-12 18:10:11'),(4087,'Ma??ambara',23,'2019-06-12 18:10:11'),(4088,'Machadinho',23,'2019-06-12 18:10:11'),(4089,'Mampituba',23,'2019-06-12 18:10:11'),(4090,'Manoel Viana',23,'2019-06-12 18:10:11'),(4091,'Maquin??',23,'2019-06-12 18:10:11'),(4092,'Marat??',23,'2019-06-12 18:10:11'),(4093,'Marau',23,'2019-06-12 18:10:11'),(4094,'Marcelino Ramos',23,'2019-06-12 18:10:11'),(4095,'Mariana Pimentel',23,'2019-06-12 18:10:11'),(4096,'Mariano Moro',23,'2019-06-12 18:10:11'),(4097,'Marques de Souza',23,'2019-06-12 18:10:11'),(4098,'Mata',23,'2019-06-12 18:10:11'),(4099,'Mato Castelhano',23,'2019-06-12 18:10:11'),(4100,'Mato Leit??o',23,'2019-06-12 18:10:11'),(4101,'Mato Queimado',23,'2019-06-12 18:10:11'),(4102,'Maximiliano de Almeida',23,'2019-06-12 18:10:11'),(4103,'Minas do Le??o',23,'2019-06-12 18:10:11'),(4104,'Miragua??',23,'2019-06-12 18:10:11'),(4105,'Montauri',23,'2019-06-12 18:10:11'),(4106,'Monte Alegre dos Campos',23,'2019-06-12 18:10:11'),(4107,'Monte Belo do Sul',23,'2019-06-12 18:10:11'),(4108,'Montenegro',23,'2019-06-12 18:10:11'),(4109,'Morma??o',23,'2019-06-12 18:10:11'),(4110,'Morrinhos do Sul',23,'2019-06-12 18:10:11'),(4111,'Morro Redondo',23,'2019-06-12 18:10:11'),(4112,'Morro Reuter',23,'2019-06-12 18:10:11'),(4113,'Mostardas',23,'2019-06-12 18:10:11'),(4114,'Mu??um',23,'2019-06-12 18:10:11'),(4115,'Muitos Cap??es',23,'2019-06-12 18:10:11'),(4116,'Muliterno',23,'2019-06-12 18:10:11'),(4117,'N??o-Me-Toque',23,'2019-06-12 18:10:11'),(4118,'Nicolau Vergueiro',23,'2019-06-12 18:10:11'),(4119,'Nonoai',23,'2019-06-12 18:10:11'),(4120,'Nova Alvorada',23,'2019-06-12 18:10:11'),(4121,'Nova Ara????',23,'2019-06-12 18:10:11'),(4122,'Nova Bassano',23,'2019-06-12 18:10:11'),(4123,'Nova Boa Vista',23,'2019-06-12 18:10:11'),(4124,'Nova Br??scia',23,'2019-06-12 18:10:11'),(4125,'Nova Candel??ria',23,'2019-06-12 18:10:11'),(4126,'Nova Esperan??a do Sul',23,'2019-06-12 18:10:11'),(4127,'Nova Hartz',23,'2019-06-12 18:10:11'),(4128,'Nova P??dua',23,'2019-06-12 18:10:11'),(4129,'Nova Palma',23,'2019-06-12 18:10:11'),(4130,'Nova Petr??polis',23,'2019-06-12 18:10:11'),(4131,'Nova Prata',23,'2019-06-12 18:10:11'),(4132,'Nova Ramada',23,'2019-06-12 18:10:11'),(4133,'Nova Roma do Sul',23,'2019-06-12 18:10:11'),(4134,'Nova Santa Rita',23,'2019-06-12 18:10:11'),(4135,'Novo Barreiro',23,'2019-06-12 18:10:11'),(4136,'Novo Cabrais',23,'2019-06-12 18:10:11'),(4137,'Novo Hamburgo',23,'2019-06-12 18:10:11'),(4138,'Novo Machado',23,'2019-06-12 18:10:11'),(4139,'Novo Tiradentes',23,'2019-06-12 18:10:11'),(4140,'Novo Xingu',23,'2019-06-12 18:10:11'),(4141,'Os??rio',23,'2019-06-12 18:10:11'),(4142,'Paim Filho',23,'2019-06-12 18:10:11'),(4143,'Palmares do Sul',23,'2019-06-12 18:10:11'),(4144,'Palmeira das Miss??es',23,'2019-06-12 18:10:11'),(4145,'Palmitinho',23,'2019-06-12 18:10:11'),(4146,'Panambi',23,'2019-06-12 18:10:11'),(4147,'Pantano Grande',23,'2019-06-12 18:10:11'),(4148,'Para??',23,'2019-06-12 18:10:11'),(4149,'Para??so do Sul',23,'2019-06-12 18:10:11'),(4150,'Pareci Novo',23,'2019-06-12 18:10:11'),(4151,'Parob??',23,'2019-06-12 18:10:11'),(4152,'Passa Sete',23,'2019-06-12 18:10:11'),(4153,'Passo do Sobrado',23,'2019-06-12 18:10:11'),(4154,'Passo Fundo',23,'2019-06-12 18:10:11'),(4155,'Paulo Bento',23,'2019-06-12 18:10:11'),(4156,'Paverama',23,'2019-06-12 18:10:11'),(4157,'Pedras Altas',23,'2019-06-12 18:10:11'),(4158,'Pedro Os??rio',23,'2019-06-12 18:10:11'),(4159,'Peju??ara',23,'2019-06-12 18:10:11'),(4160,'Pelotas',23,'2019-06-12 18:10:11'),(4161,'Picada Caf??',23,'2019-06-12 18:10:11'),(4162,'Pinhal',23,'2019-06-12 18:10:11'),(4163,'Pinhal da Serra',23,'2019-06-12 18:10:11'),(4164,'Pinhal Grande',23,'2019-06-12 18:10:11'),(4165,'Pinheirinho do Vale',23,'2019-06-12 18:10:11'),(4166,'Pinheiro Machado',23,'2019-06-12 18:10:11'),(4167,'Pirap??',23,'2019-06-12 18:10:11'),(4168,'Piratini',23,'2019-06-12 18:10:11'),(4169,'Planalto',23,'2019-06-12 18:10:11'),(4170,'Po??o das Antas',23,'2019-06-12 18:10:11'),(4171,'Pont??o',23,'2019-06-12 18:10:11'),(4172,'Ponte Preta',23,'2019-06-12 18:10:11'),(4173,'Port??o',23,'2019-06-12 18:10:11'),(4174,'Porto Alegre',23,'2019-06-12 18:10:11'),(4175,'Porto Lucena',23,'2019-06-12 18:10:11'),(4176,'Porto Mau??',23,'2019-06-12 18:10:11'),(4177,'Porto Vera Cruz',23,'2019-06-12 18:10:11'),(4178,'Porto Xavier',23,'2019-06-12 18:10:11'),(4179,'Pouso Novo',23,'2019-06-12 18:10:11'),(4180,'Presidente Lucena',23,'2019-06-12 18:10:11'),(4181,'Progresso',23,'2019-06-12 18:10:11'),(4182,'Prot??sio Alves',23,'2019-06-12 18:10:11'),(4183,'Putinga',23,'2019-06-12 18:10:11'),(4184,'Quara??',23,'2019-06-12 18:10:11'),(4185,'Quatro Irm??os',23,'2019-06-12 18:10:11'),(4186,'Quevedos',23,'2019-06-12 18:10:11'),(4187,'Quinze de Novembro',23,'2019-06-12 18:10:11'),(4188,'Redentora',23,'2019-06-12 18:10:11'),(4189,'Relvado',23,'2019-06-12 18:10:11'),(4190,'Restinga Seca',23,'2019-06-12 18:10:11'),(4191,'Rio dos ??ndios',23,'2019-06-12 18:10:11'),(4192,'Rio Grande',23,'2019-06-12 18:10:11'),(4193,'Rio Pardo',23,'2019-06-12 18:10:11'),(4194,'Riozinho',23,'2019-06-12 18:10:11'),(4195,'Roca Sales',23,'2019-06-12 18:10:11'),(4196,'Rodeio Bonito',23,'2019-06-12 18:10:11'),(4197,'Rolador',23,'2019-06-12 18:10:11'),(4198,'Rolante',23,'2019-06-12 18:10:11'),(4199,'Ronda Alta',23,'2019-06-12 18:10:11'),(4200,'Rondinha',23,'2019-06-12 18:10:11'),(4201,'Roque Gonzales',23,'2019-06-12 18:10:11'),(4202,'Ros??rio do Sul',23,'2019-06-12 18:10:11'),(4203,'Sagrada Fam??lia',23,'2019-06-12 18:10:11'),(4204,'Saldanha Marinho',23,'2019-06-12 18:10:11'),(4205,'Salto do Jacu??',23,'2019-06-12 18:10:11'),(4206,'Salvador das Miss??es',23,'2019-06-12 18:10:11'),(4207,'Salvador do Sul',23,'2019-06-12 18:10:11'),(4208,'Sananduva',23,'2019-06-12 18:10:11'),(4209,'Santa B??rbara do Sul',23,'2019-06-12 18:10:11'),(4210,'Santa Cec??lia do Sul',23,'2019-06-12 18:10:11'),(4211,'Santa Clara do Sul',23,'2019-06-12 18:10:11'),(4212,'Santa Cruz do Sul',23,'2019-06-12 18:10:11'),(4213,'Santa Margarida do Sul',23,'2019-06-12 18:10:11'),(4214,'Santa Maria',23,'2019-06-12 18:10:11'),(4215,'Santa Maria do Herval',23,'2019-06-12 18:10:11'),(4216,'Santa Rosa',23,'2019-06-12 18:10:11'),(4217,'Santa Tereza',23,'2019-06-12 18:10:11'),(4218,'Santa Vit??ria do Palmar',23,'2019-06-12 18:10:11'),(4219,'Santana da Boa Vista',23,'2019-06-12 18:10:11'),(4220,'Santana do Livramento',23,'2019-06-12 18:10:11'),(4221,'Santiago',23,'2019-06-12 18:10:11'),(4222,'Santo ??ngelo',23,'2019-06-12 18:10:11'),(4223,'Santo Ant??nio da Patrulha',23,'2019-06-12 18:10:11'),(4224,'Santo Ant??nio das Miss??es',23,'2019-06-12 18:10:11'),(4225,'Santo Ant??nio do Palma',23,'2019-06-12 18:10:11'),(4226,'Santo Ant??nio do Planalto',23,'2019-06-12 18:10:11'),(4227,'Santo Augusto',23,'2019-06-12 18:10:11'),(4228,'Santo Cristo',23,'2019-06-12 18:10:11'),(4229,'Santo Expedito do Sul',23,'2019-06-12 18:10:11'),(4230,'S??o Borja',23,'2019-06-12 18:10:11'),(4231,'S??o Domingos do Sul',23,'2019-06-12 18:10:11'),(4232,'S??o Francisco de Assis',23,'2019-06-12 18:10:11'),(4233,'S??o Francisco de Paula',23,'2019-06-12 18:10:11'),(4234,'S??o Gabriel',23,'2019-06-12 18:10:11'),(4235,'S??o Jer??nimo',23,'2019-06-12 18:10:11'),(4236,'S??o Jo??o da Urtiga',23,'2019-06-12 18:10:11'),(4237,'S??o Jo??o do Pol??sine',23,'2019-06-12 18:10:11'),(4238,'S??o Jorge',23,'2019-06-12 18:10:11'),(4239,'S??o Jos?? das Miss??es',23,'2019-06-12 18:10:11'),(4240,'S??o Jos?? do Herval',23,'2019-06-12 18:10:11'),(4241,'S??o Jos?? do Hort??ncio',23,'2019-06-12 18:10:11'),(4242,'S??o Jos?? do Inhacor??',23,'2019-06-12 18:10:11'),(4243,'S??o Jos?? do Norte',23,'2019-06-12 18:10:11'),(4244,'S??o Jos?? do Ouro',23,'2019-06-12 18:10:11'),(4245,'S??o Jos?? do Sul',23,'2019-06-12 18:10:11'),(4246,'S??o Jos?? dos Ausentes',23,'2019-06-12 18:10:11'),(4247,'S??o Leopoldo',23,'2019-06-12 18:10:11'),(4248,'S??o Louren??o do Sul',23,'2019-06-12 18:10:11'),(4249,'S??o Luiz Gonzaga',23,'2019-06-12 18:10:11'),(4250,'S??o Marcos',23,'2019-06-12 18:10:11'),(4251,'S??o Martinho',23,'2019-06-12 18:10:11'),(4252,'S??o Martinho da Serra',23,'2019-06-12 18:10:11'),(4253,'S??o Miguel das Miss??es',23,'2019-06-12 18:10:11'),(4254,'S??o Nicolau',23,'2019-06-12 18:10:11'),(4255,'S??o Paulo das Miss??es',23,'2019-06-12 18:10:11'),(4256,'S??o Pedro da Serra',23,'2019-06-12 18:10:11'),(4257,'S??o Pedro das Miss??es',23,'2019-06-12 18:10:11'),(4258,'S??o Pedro do Buti??',23,'2019-06-12 18:10:11'),(4259,'S??o Pedro do Sul',23,'2019-06-12 18:10:11'),(4260,'S??o Sebasti??o do Ca??',23,'2019-06-12 18:10:11'),(4261,'S??o Sep??',23,'2019-06-12 18:10:11'),(4262,'S??o Valentim',23,'2019-06-12 18:10:11'),(4263,'S??o Valentim do Sul',23,'2019-06-12 18:10:11'),(4264,'S??o Val??rio do Sul',23,'2019-06-12 18:10:11'),(4265,'S??o Vendelino',23,'2019-06-12 18:10:11'),(4266,'S??o Vicente do Sul',23,'2019-06-12 18:10:11'),(4267,'Sapiranga',23,'2019-06-12 18:10:11'),(4268,'Sapucaia do Sul',23,'2019-06-12 18:10:11'),(4269,'Sarandi',23,'2019-06-12 18:10:11'),(4270,'Seberi',23,'2019-06-12 18:10:11'),(4271,'Sede Nova',23,'2019-06-12 18:10:11'),(4272,'Segredo',23,'2019-06-12 18:10:11'),(4273,'Selbach',23,'2019-06-12 18:10:11'),(4274,'Senador Salgado Filho',23,'2019-06-12 18:10:11'),(4275,'Sentinela do Sul',23,'2019-06-12 18:10:11'),(4276,'Serafina Corr??a',23,'2019-06-12 18:10:11'),(4277,'S??rio',23,'2019-06-12 18:10:11'),(4278,'Sert??o',23,'2019-06-12 18:10:11'),(4279,'Sert??o Santana',23,'2019-06-12 18:10:11'),(4280,'Sete de Setembro',23,'2019-06-12 18:10:11'),(4281,'Severiano de Almeida',23,'2019-06-12 18:10:11'),(4282,'Silveira Martins',23,'2019-06-12 18:10:11'),(4283,'Sinimbu',23,'2019-06-12 18:10:11'),(4284,'Sobradinho',23,'2019-06-12 18:10:11'),(4285,'Soledade',23,'2019-06-12 18:10:11'),(4286,'Taba??',23,'2019-06-12 18:10:11'),(4287,'Tapejara',23,'2019-06-12 18:10:11'),(4288,'Tapera',23,'2019-06-12 18:10:11'),(4289,'Tapes',23,'2019-06-12 18:10:11'),(4290,'Taquara',23,'2019-06-12 18:10:11'),(4291,'Taquari',23,'2019-06-12 18:10:11'),(4292,'Taquaru??u do Sul',23,'2019-06-12 18:10:11'),(4293,'Tavares',23,'2019-06-12 18:10:11'),(4294,'Tenente Portela',23,'2019-06-12 18:10:11'),(4295,'Terra de Areia',23,'2019-06-12 18:10:11'),(4296,'Teut??nia',23,'2019-06-12 18:10:11'),(4297,'Tio Hugo',23,'2019-06-12 18:10:11'),(4298,'Tiradentes do Sul',23,'2019-06-12 18:10:11'),(4299,'Toropi',23,'2019-06-12 18:10:11'),(4300,'Torres',23,'2019-06-12 18:10:11'),(4301,'Tramanda??',23,'2019-06-12 18:10:11'),(4302,'Travesseiro',23,'2019-06-12 18:10:11'),(4303,'Tr??s Arroios',23,'2019-06-12 18:10:11'),(4304,'Tr??s Cachoeiras',23,'2019-06-12 18:10:11'),(4305,'Tr??s Coroas',23,'2019-06-12 18:10:11'),(4306,'Tr??s de Maio',23,'2019-06-12 18:10:11'),(4307,'Tr??s Forquilhas',23,'2019-06-12 18:10:11'),(4308,'Tr??s Palmeiras',23,'2019-06-12 18:10:11'),(4309,'Tr??s Passos',23,'2019-06-12 18:10:11'),(4310,'Trindade do Sul',23,'2019-06-12 18:10:11'),(4311,'Triunfo',23,'2019-06-12 18:10:11'),(4312,'Tucunduva',23,'2019-06-12 18:10:11'),(4313,'Tunas',23,'2019-06-12 18:10:11'),(4314,'Tupanci do Sul',23,'2019-06-12 18:10:11'),(4315,'Tupanciret??',23,'2019-06-12 18:10:11'),(4316,'Tupandi',23,'2019-06-12 18:10:11'),(4317,'Tuparendi',23,'2019-06-12 18:10:11'),(4318,'Turu??u',23,'2019-06-12 18:10:11'),(4319,'Ubiretama',23,'2019-06-12 18:10:11'),(4320,'Uni??o da Serra',23,'2019-06-12 18:10:11'),(4321,'Unistalda',23,'2019-06-12 18:10:11'),(4322,'Uruguaiana',23,'2019-06-12 18:10:11'),(4323,'Vacaria',23,'2019-06-12 18:10:11'),(4324,'Vale do Sol',23,'2019-06-12 18:10:11'),(4325,'Vale Real',23,'2019-06-12 18:10:11'),(4326,'Vale Verde',23,'2019-06-12 18:10:11'),(4327,'Vanini',23,'2019-06-12 18:10:11'),(4328,'Ven??ncio Aires',23,'2019-06-12 18:10:11'),(4329,'Vera Cruz',23,'2019-06-12 18:10:11'),(4330,'Veran??polis',23,'2019-06-12 18:10:11'),(4331,'Vespasiano Correa',23,'2019-06-12 18:10:11'),(4332,'Viadutos',23,'2019-06-12 18:10:11'),(4333,'Viam??o',23,'2019-06-12 18:10:11'),(4334,'Vicente Dutra',23,'2019-06-12 18:10:11'),(4335,'Victor Graeff',23,'2019-06-12 18:10:11'),(4336,'Vila Flores',23,'2019-06-12 18:10:11'),(4337,'Vila L??ngaro',23,'2019-06-12 18:10:11'),(4338,'Vila Maria',23,'2019-06-12 18:10:11'),(4339,'Vila Nova do Sul',23,'2019-06-12 18:10:11'),(4340,'Vista Alegre',23,'2019-06-12 18:10:11'),(4341,'Vista Alegre do Prata',23,'2019-06-12 18:10:11'),(4342,'Vista Ga??cha',23,'2019-06-12 18:10:11'),(4343,'Vit??ria das Miss??es',23,'2019-06-12 18:10:11'),(4344,'Westf??lia',23,'2019-06-12 18:10:11'),(4345,'Xangri-l??',23,'2019-06-12 18:10:11'),(4346,'Alta Floresta d`Oeste',21,'2019-06-12 18:10:11'),(4347,'Alto Alegre dos Parecis',21,'2019-06-12 18:10:11'),(4348,'Alto Para??so',21,'2019-06-12 18:10:11'),(4349,'Alvorada d`Oeste',21,'2019-06-12 18:10:11'),(4350,'Ariquemes',21,'2019-06-12 18:10:11'),(4351,'Buritis',21,'2019-06-12 18:10:11'),(4352,'Cabixi',21,'2019-06-12 18:10:11'),(4353,'Cacaul??ndia',21,'2019-06-12 18:10:11'),(4354,'Cacoal',21,'2019-06-12 18:10:11'),(4355,'Campo Novo de Rond??nia',21,'2019-06-12 18:10:11'),(4356,'Candeias do Jamari',21,'2019-06-12 18:10:11'),(4357,'Castanheiras',21,'2019-06-12 18:10:11'),(4358,'Cerejeiras',21,'2019-06-12 18:10:11'),(4359,'Chupinguaia',21,'2019-06-12 18:10:11'),(4360,'Colorado do Oeste',21,'2019-06-12 18:10:11'),(4361,'Corumbiara',21,'2019-06-12 18:10:11'),(4362,'Costa Marques',21,'2019-06-12 18:10:11'),(4363,'Cujubim',21,'2019-06-12 18:10:11'),(4364,'Espig??o d`Oeste',21,'2019-06-12 18:10:11'),(4365,'Governador Jorge Teixeira',21,'2019-06-12 18:10:11'),(4366,'Guajar??-Mirim',21,'2019-06-12 18:10:11'),(4367,'Itapu?? do Oeste',21,'2019-06-12 18:10:11'),(4368,'Jaru',21,'2019-06-12 18:10:11'),(4369,'Ji-Paran??',21,'2019-06-12 18:10:11'),(4370,'Machadinho d`Oeste',21,'2019-06-12 18:10:11'),(4371,'Ministro Andreazza',21,'2019-06-12 18:10:11'),(4372,'Mirante da Serra',21,'2019-06-12 18:10:11'),(4373,'Monte Negro',21,'2019-06-12 18:10:11'),(4374,'Nova Brasil??ndia d`Oeste',21,'2019-06-12 18:10:11'),(4375,'Nova Mamor??',21,'2019-06-12 18:10:11'),(4376,'Nova Uni??o',21,'2019-06-12 18:10:11'),(4377,'Novo Horizonte do Oeste',21,'2019-06-12 18:10:11'),(4378,'Ouro Preto do Oeste',21,'2019-06-12 18:10:11'),(4379,'Parecis',21,'2019-06-12 18:10:11'),(4380,'Pimenta Bueno',21,'2019-06-12 18:10:11'),(4381,'Pimenteiras do Oeste',21,'2019-06-12 18:10:11'),(4382,'Porto Velho',21,'2019-06-12 18:10:11'),(4383,'Presidente M??dici',21,'2019-06-12 18:10:11'),(4384,'Primavera de Rond??nia',21,'2019-06-12 18:10:11'),(4385,'Rio Crespo',21,'2019-06-12 18:10:11'),(4386,'Rolim de Moura',21,'2019-06-12 18:10:11'),(4387,'Santa Luzia d`Oeste',21,'2019-06-12 18:10:11'),(4388,'S??o Felipe d`Oeste',21,'2019-06-12 18:10:11'),(4389,'S??o Francisco do Guapor??',21,'2019-06-12 18:10:11'),(4390,'S??o Miguel do Guapor??',21,'2019-06-12 18:10:11'),(4391,'Seringueiras',21,'2019-06-12 18:10:11'),(4392,'Teixeir??polis',21,'2019-06-12 18:10:11'),(4393,'Theobroma',21,'2019-06-12 18:10:11'),(4394,'Urup??',21,'2019-06-12 18:10:11'),(4395,'Vale do Anari',21,'2019-06-12 18:10:11'),(4396,'Vale do Para??so',21,'2019-06-12 18:10:11'),(4397,'Vilhena',21,'2019-06-12 18:10:11'),(4398,'Alto Alegre',22,'2019-06-12 18:10:11'),(4399,'Amajari',22,'2019-06-12 18:10:11'),(4400,'Boa Vista',22,'2019-06-12 18:10:11'),(4401,'Bonfim',22,'2019-06-12 18:10:11'),(4402,'Cant??',22,'2019-06-12 18:10:11'),(4403,'Caracara??',22,'2019-06-12 18:10:11'),(4404,'Caroebe',22,'2019-06-12 18:10:11'),(4405,'Iracema',22,'2019-06-12 18:10:11'),(4406,'Mucaja??',22,'2019-06-12 18:10:11'),(4407,'Normandia',22,'2019-06-12 18:10:11'),(4408,'Pacaraima',22,'2019-06-12 18:10:11'),(4409,'Rorain??polis',22,'2019-06-12 18:10:11'),(4410,'S??o Jo??o da Baliza',22,'2019-06-12 18:10:11'),(4411,'S??o Luiz',22,'2019-06-12 18:10:11'),(4412,'Uiramut??',22,'2019-06-12 18:10:11'),(4413,'Abdon Batista',24,'2019-06-12 18:10:11'),(4414,'Abelardo Luz',24,'2019-06-12 18:10:11'),(4415,'Agrol??ndia',24,'2019-06-12 18:10:11'),(4416,'Agron??mica',24,'2019-06-12 18:10:11'),(4417,'??gua Doce',24,'2019-06-12 18:10:11'),(4418,'??guas de Chapec??',24,'2019-06-12 18:10:11'),(4419,'??guas Frias',24,'2019-06-12 18:10:11'),(4420,'??guas Mornas',24,'2019-06-12 18:10:11'),(4421,'Alfredo Wagner',24,'2019-06-12 18:10:11'),(4422,'Alto Bela Vista',24,'2019-06-12 18:10:11'),(4423,'Anchieta',24,'2019-06-12 18:10:11'),(4424,'Angelina',24,'2019-06-12 18:10:11'),(4425,'Anita Garibaldi',24,'2019-06-12 18:10:11'),(4426,'Anit??polis',24,'2019-06-12 18:10:11'),(4427,'Ant??nio Carlos',24,'2019-06-12 18:10:11'),(4428,'Api??na',24,'2019-06-12 18:10:11'),(4429,'Arabut??',24,'2019-06-12 18:10:11'),(4430,'Araquari',24,'2019-06-12 18:10:11'),(4431,'Ararangu??',24,'2019-06-12 18:10:11'),(4432,'Armaz??m',24,'2019-06-12 18:10:11'),(4433,'Arroio Trinta',24,'2019-06-12 18:10:11'),(4434,'Arvoredo',24,'2019-06-12 18:10:11'),(4435,'Ascurra',24,'2019-06-12 18:10:11'),(4436,'Atalanta',24,'2019-06-12 18:10:11'),(4437,'Aurora',24,'2019-06-12 18:10:11'),(4438,'Balne??rio Arroio do Silva',24,'2019-06-12 18:10:11'),(4439,'Balne??rio Barra do Sul',24,'2019-06-12 18:10:11'),(4440,'Balne??rio Cambori??',24,'2019-06-12 18:10:11'),(4441,'Balne??rio Gaivota',24,'2019-06-12 18:10:11'),(4442,'Bandeirante',24,'2019-06-12 18:10:11'),(4443,'Barra Bonita',24,'2019-06-12 18:10:11'),(4444,'Barra Velha',24,'2019-06-12 18:10:11'),(4445,'Bela Vista do Toldo',24,'2019-06-12 18:10:11'),(4446,'Belmonte',24,'2019-06-12 18:10:11'),(4447,'Benedito Novo',24,'2019-06-12 18:10:11'),(4448,'Bigua??u',24,'2019-06-12 18:10:11'),(4449,'Blumenau',24,'2019-06-12 18:10:11'),(4450,'Bocaina do Sul',24,'2019-06-12 18:10:11'),(4451,'Bom Jardim da Serra',24,'2019-06-12 18:10:11'),(4452,'Bom Jesus',24,'2019-06-12 18:10:11'),(4453,'Bom Jesus do Oeste',24,'2019-06-12 18:10:11'),(4454,'Bom Retiro',24,'2019-06-12 18:10:11'),(4455,'Bombinhas',24,'2019-06-12 18:10:11'),(4456,'Botuver??',24,'2019-06-12 18:10:11'),(4457,'Bra??o do Norte',24,'2019-06-12 18:10:11'),(4458,'Bra??o do Trombudo',24,'2019-06-12 18:10:11'),(4459,'Brun??polis',24,'2019-06-12 18:10:11'),(4460,'Brusque',24,'2019-06-12 18:10:11'),(4461,'Ca??ador',24,'2019-06-12 18:10:11'),(4462,'Caibi',24,'2019-06-12 18:10:11'),(4463,'Calmon',24,'2019-06-12 18:10:11'),(4464,'Cambori??',24,'2019-06-12 18:10:11'),(4465,'Campo Alegre',24,'2019-06-12 18:10:11'),(4466,'Campo Belo do Sul',24,'2019-06-12 18:10:11'),(4467,'Campo Er??',24,'2019-06-12 18:10:11'),(4468,'Campos Novos',24,'2019-06-12 18:10:11'),(4469,'Canelinha',24,'2019-06-12 18:10:11'),(4470,'Canoinhas',24,'2019-06-12 18:10:11'),(4471,'Cap??o Alto',24,'2019-06-12 18:10:11'),(4472,'Capinzal',24,'2019-06-12 18:10:11'),(4473,'Capivari de Baixo',24,'2019-06-12 18:10:11'),(4474,'Catanduvas',24,'2019-06-12 18:10:11'),(4475,'Caxambu do Sul',24,'2019-06-12 18:10:11'),(4476,'Celso Ramos',24,'2019-06-12 18:10:11'),(4477,'Cerro Negro',24,'2019-06-12 18:10:11'),(4478,'Chapad??o do Lageado',24,'2019-06-12 18:10:11'),(4479,'Chapec??',24,'2019-06-12 18:10:11'),(4480,'Cocal do Sul',24,'2019-06-12 18:10:11'),(4481,'Conc??rdia',24,'2019-06-12 18:10:11'),(4482,'Cordilheira Alta',24,'2019-06-12 18:10:11'),(4483,'Coronel Freitas',24,'2019-06-12 18:10:11'),(4484,'Coronel Martins',24,'2019-06-12 18:10:11'),(4485,'Correia Pinto',24,'2019-06-12 18:10:11'),(4486,'Corup??',24,'2019-06-12 18:10:11'),(4487,'Crici??ma',24,'2019-06-12 18:10:11'),(4488,'Cunha Por??',24,'2019-06-12 18:10:11'),(4489,'Cunhata??',24,'2019-06-12 18:10:11'),(4490,'Curitibanos',24,'2019-06-12 18:10:11'),(4491,'Descanso',24,'2019-06-12 18:10:11'),(4492,'Dion??sio Cerqueira',24,'2019-06-12 18:10:11'),(4493,'Dona Emma',24,'2019-06-12 18:10:11'),(4494,'Doutor Pedrinho',24,'2019-06-12 18:10:11'),(4495,'Entre Rios',24,'2019-06-12 18:10:11'),(4496,'Ermo',24,'2019-06-12 18:10:11'),(4497,'Erval Velho',24,'2019-06-12 18:10:11'),(4498,'Faxinal dos Guedes',24,'2019-06-12 18:10:11'),(4499,'Flor do Sert??o',24,'2019-06-12 18:10:11'),(4500,'Florian??polis',24,'2019-06-12 18:10:11'),(4501,'Formosa do Sul',24,'2019-06-12 18:10:11'),(4502,'Forquilhinha',24,'2019-06-12 18:10:11'),(4503,'Fraiburgo',24,'2019-06-12 18:10:11'),(4504,'Frei Rog??rio',24,'2019-06-12 18:10:11'),(4505,'Galv??o',24,'2019-06-12 18:10:11'),(4506,'Garopaba',24,'2019-06-12 18:10:11'),(4507,'Garuva',24,'2019-06-12 18:10:11'),(4508,'Gaspar',24,'2019-06-12 18:10:11'),(4509,'Governador Celso Ramos',24,'2019-06-12 18:10:11'),(4510,'Gr??o Par??',24,'2019-06-12 18:10:11'),(4511,'Gravatal',24,'2019-06-12 18:10:11'),(4512,'Guabiruba',24,'2019-06-12 18:10:11'),(4513,'Guaraciaba',24,'2019-06-12 18:10:11'),(4514,'Guaramirim',24,'2019-06-12 18:10:11'),(4515,'Guaruj?? do Sul',24,'2019-06-12 18:10:11'),(4516,'Guatamb??',24,'2019-06-12 18:10:11'),(4517,'Herval d`Oeste',24,'2019-06-12 18:10:11'),(4518,'Ibiam',24,'2019-06-12 18:10:11'),(4519,'Ibicar??',24,'2019-06-12 18:10:11'),(4520,'Ibirama',24,'2019-06-12 18:10:11'),(4521,'I??ara',24,'2019-06-12 18:10:11'),(4522,'Ilhota',24,'2019-06-12 18:10:11'),(4523,'Imaru??',24,'2019-06-12 18:10:11'),(4524,'Imbituba',24,'2019-06-12 18:10:11'),(4525,'Imbuia',24,'2019-06-12 18:10:11'),(4526,'Indaial',24,'2019-06-12 18:10:11'),(4527,'Iomer??',24,'2019-06-12 18:10:11'),(4528,'Ipira',24,'2019-06-12 18:10:11'),(4529,'Ipor?? do Oeste',24,'2019-06-12 18:10:11'),(4530,'Ipua??u',24,'2019-06-12 18:10:11'),(4531,'Ipumirim',24,'2019-06-12 18:10:11'),(4532,'Iraceminha',24,'2019-06-12 18:10:11'),(4533,'Irani',24,'2019-06-12 18:10:11'),(4534,'Irati',24,'2019-06-12 18:10:11'),(4535,'Irine??polis',24,'2019-06-12 18:10:11'),(4536,'It??',24,'2019-06-12 18:10:11'),(4537,'Itai??polis',24,'2019-06-12 18:10:11'),(4538,'Itaja??',24,'2019-06-12 18:10:11'),(4539,'Itapema',24,'2019-06-12 18:10:11'),(4540,'Itapiranga',24,'2019-06-12 18:10:11'),(4541,'Itapo??',24,'2019-06-12 18:10:11'),(4542,'Ituporanga',24,'2019-06-12 18:10:11'),(4543,'Jabor??',24,'2019-06-12 18:10:11'),(4544,'Jacinto Machado',24,'2019-06-12 18:10:11'),(4545,'Jaguaruna',24,'2019-06-12 18:10:11'),(4546,'Jaragu?? do Sul',24,'2019-06-12 18:10:11'),(4547,'Jardin??polis',24,'2019-06-12 18:10:11'),(4548,'Joa??aba',24,'2019-06-12 18:10:11'),(4549,'Joinville',24,'2019-06-12 18:10:11'),(4550,'Jos?? Boiteux',24,'2019-06-12 18:10:11'),(4551,'Jupi??',24,'2019-06-12 18:10:11'),(4552,'Lacerd??polis',24,'2019-06-12 18:10:11'),(4553,'Lages',24,'2019-06-12 18:10:11'),(4554,'Laguna',24,'2019-06-12 18:10:11'),(4555,'Lajeado Grande',24,'2019-06-12 18:10:11'),(4556,'Laurentino',24,'2019-06-12 18:10:11'),(4557,'Lauro Muller',24,'2019-06-12 18:10:11'),(4558,'Lebon R??gis',24,'2019-06-12 18:10:11'),(4559,'Leoberto Leal',24,'2019-06-12 18:10:11'),(4560,'Lind??ia do Sul',24,'2019-06-12 18:10:11'),(4561,'Lontras',24,'2019-06-12 18:10:11'),(4562,'Luiz Alves',24,'2019-06-12 18:10:11'),(4563,'Luzerna',24,'2019-06-12 18:10:11'),(4564,'Macieira',24,'2019-06-12 18:10:11'),(4565,'Mafra',24,'2019-06-12 18:10:11'),(4566,'Major Gercino',24,'2019-06-12 18:10:11'),(4567,'Major Vieira',24,'2019-06-12 18:10:11'),(4568,'Maracaj??',24,'2019-06-12 18:10:11'),(4569,'Maravilha',24,'2019-06-12 18:10:11'),(4570,'Marema',24,'2019-06-12 18:10:11'),(4571,'Massaranduba',24,'2019-06-12 18:10:11'),(4572,'Matos Costa',24,'2019-06-12 18:10:11'),(4573,'Meleiro',24,'2019-06-12 18:10:11'),(4574,'Mirim Doce',24,'2019-06-12 18:10:11'),(4575,'Modelo',24,'2019-06-12 18:10:11'),(4576,'Monda??',24,'2019-06-12 18:10:11'),(4577,'Monte Carlo',24,'2019-06-12 18:10:11'),(4578,'Monte Castelo',24,'2019-06-12 18:10:11'),(4579,'Morro da Fuma??a',24,'2019-06-12 18:10:11'),(4580,'Morro Grande',24,'2019-06-12 18:10:11'),(4581,'Navegantes',24,'2019-06-12 18:10:11'),(4582,'Nova Erechim',24,'2019-06-12 18:10:11'),(4583,'Nova Itaberaba',24,'2019-06-12 18:10:11'),(4584,'Nova Trento',24,'2019-06-12 18:10:11'),(4585,'Nova Veneza',24,'2019-06-12 18:10:11'),(4586,'Novo Horizonte',24,'2019-06-12 18:10:11'),(4587,'Orleans',24,'2019-06-12 18:10:11'),(4588,'Otac??lio Costa',24,'2019-06-12 18:10:11'),(4589,'Ouro',24,'2019-06-12 18:10:11'),(4590,'Ouro Verde',24,'2019-06-12 18:10:11'),(4591,'Paial',24,'2019-06-12 18:10:11'),(4592,'Painel',24,'2019-06-12 18:10:11'),(4593,'Palho??a',24,'2019-06-12 18:10:11'),(4594,'Palma Sola',24,'2019-06-12 18:10:11'),(4595,'Palmeira',24,'2019-06-12 18:10:11'),(4596,'Palmitos',24,'2019-06-12 18:10:11'),(4597,'Papanduva',24,'2019-06-12 18:10:11'),(4598,'Para??so',24,'2019-06-12 18:10:11'),(4599,'Passo de Torres',24,'2019-06-12 18:10:11'),(4600,'Passos Maia',24,'2019-06-12 18:10:11'),(4601,'Paulo Lopes',24,'2019-06-12 18:10:11'),(4602,'Pedras Grandes',24,'2019-06-12 18:10:11'),(4603,'Penha',24,'2019-06-12 18:10:11'),(4604,'Peritiba',24,'2019-06-12 18:10:11'),(4605,'Petrol??ndia',24,'2019-06-12 18:10:11'),(4606,'Pi??arras',24,'2019-06-12 18:10:11'),(4607,'Pinhalzinho',24,'2019-06-12 18:10:11'),(4608,'Pinheiro Preto',24,'2019-06-12 18:10:11'),(4609,'Piratuba',24,'2019-06-12 18:10:11'),(4610,'Planalto Alegre',24,'2019-06-12 18:10:11'),(4611,'Pomerode',24,'2019-06-12 18:10:11'),(4612,'Ponte Alta',24,'2019-06-12 18:10:11'),(4613,'Ponte Alta do Norte',24,'2019-06-12 18:10:11'),(4614,'Ponte Serrada',24,'2019-06-12 18:10:11'),(4615,'Porto Belo',24,'2019-06-12 18:10:11'),(4616,'Porto Uni??o',24,'2019-06-12 18:10:11'),(4617,'Pouso Redondo',24,'2019-06-12 18:10:11'),(4618,'Praia Grande',24,'2019-06-12 18:10:11'),(4619,'Presidente Castelo Branco',24,'2019-06-12 18:10:11'),(4620,'Presidente Get??lio',24,'2019-06-12 18:10:11'),(4621,'Presidente Nereu',24,'2019-06-12 18:10:11'),(4622,'Princesa',24,'2019-06-12 18:10:11'),(4623,'Quilombo',24,'2019-06-12 18:10:11'),(4624,'Rancho Queimado',24,'2019-06-12 18:10:11'),(4625,'Rio das Antas',24,'2019-06-12 18:10:11'),(4626,'Rio do Campo',24,'2019-06-12 18:10:11'),(4627,'Rio do Oeste',24,'2019-06-12 18:10:11'),(4628,'Rio do Sul',24,'2019-06-12 18:10:11'),(4629,'Rio dos Cedros',24,'2019-06-12 18:10:11'),(4630,'Rio Fortuna',24,'2019-06-12 18:10:11'),(4631,'Rio Negrinho',24,'2019-06-12 18:10:11'),(4632,'Rio Rufino',24,'2019-06-12 18:10:11'),(4633,'Riqueza',24,'2019-06-12 18:10:11'),(4634,'Rodeio',24,'2019-06-12 18:10:11'),(4635,'Romel??ndia',24,'2019-06-12 18:10:11'),(4636,'Salete',24,'2019-06-12 18:10:11'),(4637,'Saltinho',24,'2019-06-12 18:10:11'),(4638,'Salto Veloso',24,'2019-06-12 18:10:11'),(4639,'Sang??o',24,'2019-06-12 18:10:11'),(4640,'Santa Cec??lia',24,'2019-06-12 18:10:11'),(4641,'Santa Helena',24,'2019-06-12 18:10:11'),(4642,'Santa Rosa de Lima',24,'2019-06-12 18:10:11'),(4643,'Santa Rosa do Sul',24,'2019-06-12 18:10:11'),(4644,'Santa Terezinha',24,'2019-06-12 18:10:11'),(4645,'Santa Terezinha do Progresso',24,'2019-06-12 18:10:11'),(4646,'Santiago do Sul',24,'2019-06-12 18:10:11'),(4647,'Santo Amaro da Imperatriz',24,'2019-06-12 18:10:11'),(4648,'S??o Bento do Sul',24,'2019-06-12 18:10:11'),(4649,'S??o Bernardino',24,'2019-06-12 18:10:11'),(4650,'S??o Bonif??cio',24,'2019-06-12 18:10:11'),(4651,'S??o Carlos',24,'2019-06-12 18:10:11'),(4652,'S??o Cristov??o do Sul',24,'2019-06-12 18:10:11'),(4653,'S??o Domingos',24,'2019-06-12 18:10:11'),(4654,'S??o Francisco do Sul',24,'2019-06-12 18:10:11'),(4655,'S??o Jo??o Batista',24,'2019-06-12 18:10:11'),(4656,'S??o Jo??o do Itaperi??',24,'2019-06-12 18:10:11'),(4657,'S??o Jo??o do Oeste',24,'2019-06-12 18:10:11'),(4658,'S??o Jo??o do Sul',24,'2019-06-12 18:10:11'),(4659,'S??o Joaquim',24,'2019-06-12 18:10:11'),(4660,'S??o Jos??',24,'2019-06-12 18:10:11'),(4661,'S??o Jos?? do Cedro',24,'2019-06-12 18:10:11'),(4662,'S??o Jos?? do Cerrito',24,'2019-06-12 18:10:11'),(4663,'S??o Louren??o do Oeste',24,'2019-06-12 18:10:11'),(4664,'S??o Ludgero',24,'2019-06-12 18:10:11'),(4665,'S??o Martinho',24,'2019-06-12 18:10:11'),(4666,'S??o Miguel da Boa Vista',24,'2019-06-12 18:10:11'),(4667,'S??o Miguel do Oeste',24,'2019-06-12 18:10:11'),(4668,'S??o Pedro de Alc??ntara',24,'2019-06-12 18:10:11'),(4669,'Saudades',24,'2019-06-12 18:10:11'),(4670,'Schroeder',24,'2019-06-12 18:10:11'),(4671,'Seara',24,'2019-06-12 18:10:11'),(4672,'Serra Alta',24,'2019-06-12 18:10:11'),(4673,'Sider??polis',24,'2019-06-12 18:10:11'),(4674,'Sombrio',24,'2019-06-12 18:10:11'),(4675,'Sul Brasil',24,'2019-06-12 18:10:11'),(4676,'Tai??',24,'2019-06-12 18:10:11'),(4677,'Tangar??',24,'2019-06-12 18:10:11'),(4678,'Tigrinhos',24,'2019-06-12 18:10:11'),(4679,'Tijucas',24,'2019-06-12 18:10:11'),(4680,'Timb?? do Sul',24,'2019-06-12 18:10:11'),(4681,'Timb??',24,'2019-06-12 18:10:11'),(4682,'Timb?? Grande',24,'2019-06-12 18:10:11'),(4683,'Tr??s Barras',24,'2019-06-12 18:10:11'),(4684,'Treviso',24,'2019-06-12 18:10:11'),(4685,'Treze de Maio',24,'2019-06-12 18:10:11'),(4686,'Treze T??lias',24,'2019-06-12 18:10:11'),(4687,'Trombudo Central',24,'2019-06-12 18:10:11'),(4688,'Tubar??o',24,'2019-06-12 18:10:11'),(4689,'Tun??polis',24,'2019-06-12 18:10:11'),(4690,'Turvo',24,'2019-06-12 18:10:11'),(4691,'Uni??o do Oeste',24,'2019-06-12 18:10:11'),(4692,'Urubici',24,'2019-06-12 18:10:11'),(4693,'Urupema',24,'2019-06-12 18:10:11'),(4694,'Urussanga',24,'2019-06-12 18:10:11'),(4695,'Varge??o',24,'2019-06-12 18:10:11'),(4696,'Vargem',24,'2019-06-12 18:10:11'),(4697,'Vargem Bonita',24,'2019-06-12 18:10:11'),(4698,'Vidal Ramos',24,'2019-06-12 18:10:11'),(4699,'Videira',24,'2019-06-12 18:10:11'),(4700,'Vitor Meireles',24,'2019-06-12 18:10:11'),(4701,'Witmarsum',24,'2019-06-12 18:10:11'),(4702,'Xanxer??',24,'2019-06-12 18:10:11'),(4703,'Xavantina',24,'2019-06-12 18:10:11'),(4704,'Xaxim',24,'2019-06-12 18:10:11'),(4705,'Zort??a',24,'2019-06-12 18:10:11'),(4706,'Adamantina',26,'2019-06-12 18:10:11'),(4707,'Adolfo',26,'2019-06-12 18:10:11'),(4708,'Agua??',26,'2019-06-12 18:10:11'),(4709,'??guas da Prata',26,'2019-06-12 18:10:11'),(4710,'??guas de Lind??ia',26,'2019-06-12 18:10:11'),(4711,'??guas de Santa B??rbara',26,'2019-06-12 18:10:11'),(4712,'??guas de S??o Pedro',26,'2019-06-12 18:10:11'),(4713,'Agudos',26,'2019-06-12 18:10:11'),(4714,'Alambari',26,'2019-06-12 18:10:11'),(4715,'Alfredo Marcondes',26,'2019-06-12 18:10:11'),(4716,'Altair',26,'2019-06-12 18:10:11'),(4717,'Altin??polis',26,'2019-06-12 18:10:11'),(4718,'Alto Alegre',26,'2019-06-12 18:10:11'),(4719,'Alum??nio',26,'2019-06-12 18:10:11'),(4720,'??lvares Florence',26,'2019-06-12 18:10:11'),(4721,'??lvares Machado',26,'2019-06-12 18:10:11'),(4722,'??lvaro de Carvalho',26,'2019-06-12 18:10:11'),(4723,'Alvinl??ndia',26,'2019-06-12 18:10:11'),(4724,'Americana',26,'2019-06-12 18:10:11'),(4725,'Am??rico Brasiliense',26,'2019-06-12 18:10:11'),(4726,'Am??rico de Campos',26,'2019-06-12 18:10:11'),(4727,'Amparo',26,'2019-06-12 18:10:11'),(4728,'Anal??ndia',26,'2019-06-12 18:10:11'),(4729,'Andradina',26,'2019-06-12 18:10:11'),(4730,'Angatuba',26,'2019-06-12 18:10:11'),(4731,'Anhembi',26,'2019-06-12 18:10:11'),(4732,'Anhumas',26,'2019-06-12 18:10:11'),(4733,'Aparecida',26,'2019-06-12 18:10:11'),(4734,'Aparecida d`Oeste',26,'2019-06-12 18:10:11'),(4735,'Apia??',26,'2019-06-12 18:10:11'),(4736,'Ara??ariguama',26,'2019-06-12 18:10:11'),(4737,'Ara??atuba',26,'2019-06-12 18:10:11'),(4738,'Ara??oiaba da Serra',26,'2019-06-12 18:10:11'),(4739,'Aramina',26,'2019-06-12 18:10:11'),(4740,'Arandu',26,'2019-06-12 18:10:11'),(4741,'Arape??',26,'2019-06-12 18:10:11'),(4742,'Araraquara',26,'2019-06-12 18:10:11'),(4743,'Araras',26,'2019-06-12 18:10:11'),(4744,'Arco-??ris',26,'2019-06-12 18:10:11'),(4745,'Arealva',26,'2019-06-12 18:10:11'),(4746,'Areias',26,'2019-06-12 18:10:11'),(4747,'Arei??polis',26,'2019-06-12 18:10:11'),(4748,'Ariranha',26,'2019-06-12 18:10:11'),(4749,'Artur Nogueira',26,'2019-06-12 18:10:11'),(4750,'Aruj??',26,'2019-06-12 18:10:11'),(4751,'Asp??sia',26,'2019-06-12 18:10:11'),(4752,'Assis',26,'2019-06-12 18:10:11'),(4753,'Atibaia',26,'2019-06-12 18:10:11'),(4754,'Auriflama',26,'2019-06-12 18:10:11'),(4755,'Ava??',26,'2019-06-12 18:10:11'),(4756,'Avanhandava',26,'2019-06-12 18:10:11'),(4757,'Avar??',26,'2019-06-12 18:10:11'),(4758,'Bady Bassitt',26,'2019-06-12 18:10:11'),(4759,'Balbinos',26,'2019-06-12 18:10:11'),(4760,'B??lsamo',26,'2019-06-12 18:10:11'),(4761,'Bananal',26,'2019-06-12 18:10:11'),(4762,'Bar??o de Antonina',26,'2019-06-12 18:10:11'),(4763,'Barbosa',26,'2019-06-12 18:10:11'),(4764,'Bariri',26,'2019-06-12 18:10:11'),(4765,'Barra Bonita',26,'2019-06-12 18:10:11'),(4766,'Barra do Chap??u',26,'2019-06-12 18:10:11'),(4767,'Barra do Turvo',26,'2019-06-12 18:10:11'),(4768,'Barretos',26,'2019-06-12 18:10:11'),(4769,'Barrinha',26,'2019-06-12 18:10:11'),(4770,'Barueri',26,'2019-06-12 18:10:11'),(4771,'Bastos',26,'2019-06-12 18:10:11'),(4772,'Batatais',26,'2019-06-12 18:10:11'),(4773,'Bauru',26,'2019-06-12 18:10:11'),(4774,'Bebedouro',26,'2019-06-12 18:10:11'),(4775,'Bento de Abreu',26,'2019-06-12 18:10:11'),(4776,'Bernardino de Campos',26,'2019-06-12 18:10:11'),(4777,'Bertioga',26,'2019-06-12 18:10:11'),(4778,'Bilac',26,'2019-06-12 18:10:11'),(4779,'Birigui',26,'2019-06-12 18:10:11'),(4780,'Biritiba-Mirim',26,'2019-06-12 18:10:11'),(4781,'Boa Esperan??a do Sul',26,'2019-06-12 18:10:11'),(4782,'Bocaina',26,'2019-06-12 18:10:11'),(4783,'Bofete',26,'2019-06-12 18:10:11'),(4784,'Boituva',26,'2019-06-12 18:10:11'),(4785,'Bom Jesus dos Perd??es',26,'2019-06-12 18:10:11'),(4786,'Bom Sucesso de Itarar??',26,'2019-06-12 18:10:11'),(4787,'Bor??',26,'2019-06-12 18:10:11'),(4788,'Borac??ia',26,'2019-06-12 18:10:11'),(4789,'Borborema',26,'2019-06-12 18:10:11'),(4790,'Borebi',26,'2019-06-12 18:10:11'),(4791,'Botucatu',26,'2019-06-12 18:10:11'),(4792,'Bragan??a Paulista',26,'2019-06-12 18:10:11'),(4793,'Bra??na',26,'2019-06-12 18:10:11'),(4794,'Brejo Alegre',26,'2019-06-12 18:10:11'),(4795,'Brodowski',26,'2019-06-12 18:10:11'),(4796,'Brotas',26,'2019-06-12 18:10:11'),(4797,'Buri',26,'2019-06-12 18:10:11'),(4798,'Buritama',26,'2019-06-12 18:10:11'),(4799,'Buritizal',26,'2019-06-12 18:10:11'),(4800,'Cabr??lia Paulista',26,'2019-06-12 18:10:11'),(4801,'Cabre??va',26,'2019-06-12 18:10:11'),(4802,'Ca??apava',26,'2019-06-12 18:10:11'),(4803,'Cachoeira Paulista',26,'2019-06-12 18:10:11'),(4804,'Caconde',26,'2019-06-12 18:10:11'),(4805,'Cafel??ndia',26,'2019-06-12 18:10:11'),(4806,'Caiabu',26,'2019-06-12 18:10:11'),(4807,'Caieiras',26,'2019-06-12 18:10:11'),(4808,'Caiu??',26,'2019-06-12 18:10:11'),(4809,'Cajamar',26,'2019-06-12 18:10:11'),(4810,'Cajati',26,'2019-06-12 18:10:11'),(4811,'Cajobi',26,'2019-06-12 18:10:11'),(4812,'Cajuru',26,'2019-06-12 18:10:11'),(4813,'Campina do Monte Alegre',26,'2019-06-12 18:10:11'),(4814,'Campinas',26,'2019-06-12 18:10:11'),(4815,'Campo Limpo Paulista',26,'2019-06-12 18:10:11'),(4816,'Campos do Jord??o',26,'2019-06-12 18:10:11'),(4817,'Campos Novos Paulista',26,'2019-06-12 18:10:11'),(4818,'Canan??ia',26,'2019-06-12 18:10:11'),(4819,'Canas',26,'2019-06-12 18:10:11'),(4820,'C??ndido Mota',26,'2019-06-12 18:10:11'),(4821,'C??ndido Rodrigues',26,'2019-06-12 18:10:11'),(4822,'Canitar',26,'2019-06-12 18:10:11'),(4823,'Cap??o Bonito',26,'2019-06-12 18:10:11'),(4824,'Capela do Alto',26,'2019-06-12 18:10:11'),(4825,'Capivari',26,'2019-06-12 18:10:11'),(4826,'Caraguatatuba',26,'2019-06-12 18:10:11'),(4827,'Carapicu??ba',26,'2019-06-12 18:10:11'),(4828,'Cardoso',26,'2019-06-12 18:10:11'),(4829,'Casa Branca',26,'2019-06-12 18:10:11'),(4830,'C??ssia dos Coqueiros',26,'2019-06-12 18:10:11'),(4831,'Castilho',26,'2019-06-12 18:10:11'),(4832,'Catanduva',26,'2019-06-12 18:10:11'),(4833,'Catigu??',26,'2019-06-12 18:10:11'),(4834,'Cedral',26,'2019-06-12 18:10:11'),(4835,'Cerqueira C??sar',26,'2019-06-12 18:10:11'),(4836,'Cerquilho',26,'2019-06-12 18:10:11'),(4837,'Ces??rio Lange',26,'2019-06-12 18:10:11'),(4838,'Charqueada',26,'2019-06-12 18:10:11'),(4839,'Chavantes',26,'2019-06-12 18:10:11'),(4840,'Clementina',26,'2019-06-12 18:10:11'),(4841,'Colina',26,'2019-06-12 18:10:11'),(4842,'Col??mbia',26,'2019-06-12 18:10:11'),(4843,'Conchal',26,'2019-06-12 18:10:11'),(4844,'Conchas',26,'2019-06-12 18:10:11'),(4845,'Cordeir??polis',26,'2019-06-12 18:10:11'),(4846,'Coroados',26,'2019-06-12 18:10:11'),(4847,'Coronel Macedo',26,'2019-06-12 18:10:11'),(4848,'Corumbata??',26,'2019-06-12 18:10:11'),(4849,'Cosm??polis',26,'2019-06-12 18:10:11'),(4850,'Cosmorama',26,'2019-06-12 18:10:11'),(4851,'Cotia',26,'2019-06-12 18:10:11'),(4852,'Cravinhos',26,'2019-06-12 18:10:11'),(4853,'Cristais Paulista',26,'2019-06-12 18:10:11'),(4854,'Cruz??lia',26,'2019-06-12 18:10:11'),(4855,'Cruzeiro',26,'2019-06-12 18:10:11'),(4856,'Cubat??o',26,'2019-06-12 18:10:11'),(4857,'Cunha',26,'2019-06-12 18:10:11'),(4858,'Descalvado',26,'2019-06-12 18:10:11'),(4859,'Diadema',26,'2019-06-12 18:10:11'),(4860,'Dirce Reis',26,'2019-06-12 18:10:11'),(4861,'Divinol??ndia',26,'2019-06-12 18:10:11'),(4862,'Dobrada',26,'2019-06-12 18:10:11'),(4863,'Dois C??rregos',26,'2019-06-12 18:10:11'),(4864,'Dolcin??polis',26,'2019-06-12 18:10:11'),(4865,'Dourado',26,'2019-06-12 18:10:11'),(4866,'Dracena',26,'2019-06-12 18:10:11'),(4867,'Duartina',26,'2019-06-12 18:10:11'),(4868,'Dumont',26,'2019-06-12 18:10:11'),(4869,'Echapor??',26,'2019-06-12 18:10:11'),(4870,'Eldorado',26,'2019-06-12 18:10:11'),(4871,'Elias Fausto',26,'2019-06-12 18:10:11'),(4872,'Elisi??rio',26,'2019-06-12 18:10:11'),(4873,'Emba??ba',26,'2019-06-12 18:10:11'),(4874,'Embu',26,'2019-06-12 18:10:11'),(4875,'Embu-Gua??u',26,'2019-06-12 18:10:11'),(4876,'Emilian??polis',26,'2019-06-12 18:10:11'),(4877,'Engenheiro Coelho',26,'2019-06-12 18:10:11'),(4878,'Esp??rito Santo do Pinhal',26,'2019-06-12 18:10:11'),(4879,'Esp??rito Santo do Turvo',26,'2019-06-12 18:10:11'),(4880,'Estiva Gerbi',26,'2019-06-12 18:10:11'),(4881,'Estrela d`Oeste',26,'2019-06-12 18:10:11'),(4882,'Estrela do Norte',26,'2019-06-12 18:10:11'),(4883,'Euclides da Cunha Paulista',26,'2019-06-12 18:10:11'),(4884,'Fartura',26,'2019-06-12 18:10:11'),(4885,'Fernando Prestes',26,'2019-06-12 18:10:11'),(4886,'Fernand??polis',26,'2019-06-12 18:10:11'),(4887,'Fern??o',26,'2019-06-12 18:10:11'),(4888,'Ferraz de Vasconcelos',26,'2019-06-12 18:10:11'),(4889,'Flora Rica',26,'2019-06-12 18:10:11'),(4890,'Floreal',26,'2019-06-12 18:10:11'),(4891,'Fl??rida Paulista',26,'2019-06-12 18:10:11'),(4892,'Flor??nia',26,'2019-06-12 18:10:11'),(4893,'Franca',26,'2019-06-12 18:10:11'),(4894,'Francisco Morato',26,'2019-06-12 18:10:11'),(4895,'Franco da Rocha',26,'2019-06-12 18:10:11'),(4896,'Gabriel Monteiro',26,'2019-06-12 18:10:11'),(4897,'G??lia',26,'2019-06-12 18:10:11'),(4898,'Gar??a',26,'2019-06-12 18:10:11'),(4899,'Gast??o Vidigal',26,'2019-06-12 18:10:11'),(4900,'Gavi??o Peixoto',26,'2019-06-12 18:10:11'),(4901,'General Salgado',26,'2019-06-12 18:10:11'),(4902,'Getulina',26,'2019-06-12 18:10:11'),(4903,'Glic??rio',26,'2019-06-12 18:10:11'),(4904,'Guai??ara',26,'2019-06-12 18:10:11'),(4905,'Guaimb??',26,'2019-06-12 18:10:11'),(4906,'Gua??ra',26,'2019-06-12 18:10:11'),(4907,'Guapia??u',26,'2019-06-12 18:10:11'),(4908,'Guapiara',26,'2019-06-12 18:10:11'),(4909,'Guar??',26,'2019-06-12 18:10:11'),(4910,'Guara??a??',26,'2019-06-12 18:10:11'),(4911,'Guaraci',26,'2019-06-12 18:10:11'),(4912,'Guarani d`Oeste',26,'2019-06-12 18:10:11'),(4913,'Guarant??',26,'2019-06-12 18:10:11'),(4914,'Guararapes',26,'2019-06-12 18:10:11'),(4915,'Guararema',26,'2019-06-12 18:10:11'),(4916,'Guaratinguet??',26,'2019-06-12 18:10:11'),(4917,'Guare??',26,'2019-06-12 18:10:11'),(4918,'Guariba',26,'2019-06-12 18:10:11'),(4919,'Guaruj??',26,'2019-06-12 18:10:11'),(4920,'Guarulhos',26,'2019-06-12 18:10:11'),(4921,'Guatapar??',26,'2019-06-12 18:10:11'),(4922,'Guzol??ndia',26,'2019-06-12 18:10:11'),(4923,'Hercul??ndia',26,'2019-06-12 18:10:11'),(4924,'Holambra',26,'2019-06-12 18:10:11'),(4925,'Hortol??ndia',26,'2019-06-12 18:10:11'),(4926,'Iacanga',26,'2019-06-12 18:10:11'),(4927,'Iacri',26,'2019-06-12 18:10:11'),(4928,'Iaras',26,'2019-06-12 18:10:11'),(4929,'Ibat??',26,'2019-06-12 18:10:11'),(4930,'Ibir??',26,'2019-06-12 18:10:11'),(4931,'Ibirarema',26,'2019-06-12 18:10:11'),(4932,'Ibitinga',26,'2019-06-12 18:10:11'),(4933,'Ibi??na',26,'2019-06-12 18:10:11'),(4934,'Ic??m',26,'2019-06-12 18:10:11'),(4935,'Iep??',26,'2019-06-12 18:10:11'),(4936,'Igara??u do Tiet??',26,'2019-06-12 18:10:11'),(4937,'Igarapava',26,'2019-06-12 18:10:11'),(4938,'Igarat??',26,'2019-06-12 18:10:11'),(4939,'Iguape',26,'2019-06-12 18:10:11'),(4940,'Ilha Comprida',26,'2019-06-12 18:10:11'),(4941,'Ilha Solteira',26,'2019-06-12 18:10:11'),(4942,'Ilhabela',26,'2019-06-12 18:10:11'),(4943,'Indaiatuba',26,'2019-06-12 18:10:11'),(4944,'Indiana',26,'2019-06-12 18:10:11'),(4945,'Indiapor??',26,'2019-06-12 18:10:11'),(4946,'In??bia Paulista',26,'2019-06-12 18:10:11'),(4947,'Ipaussu',26,'2019-06-12 18:10:11'),(4948,'Iper??',26,'2019-06-12 18:10:11'),(4949,'Ipe??na',26,'2019-06-12 18:10:11'),(4950,'Ipigu??',26,'2019-06-12 18:10:11'),(4951,'Iporanga',26,'2019-06-12 18:10:11'),(4952,'Ipu??',26,'2019-06-12 18:10:11'),(4953,'Iracem??polis',26,'2019-06-12 18:10:11'),(4954,'Irapu??',26,'2019-06-12 18:10:11'),(4955,'Irapuru',26,'2019-06-12 18:10:11'),(4956,'Itaber??',26,'2019-06-12 18:10:11'),(4957,'Ita??',26,'2019-06-12 18:10:11'),(4958,'Itajobi',26,'2019-06-12 18:10:11'),(4959,'Itaju',26,'2019-06-12 18:10:11'),(4960,'Itanha??m',26,'2019-06-12 18:10:11'),(4961,'Ita??ca',26,'2019-06-12 18:10:11'),(4962,'Itapecerica da Serra',26,'2019-06-12 18:10:11'),(4963,'Itapetininga',26,'2019-06-12 18:10:11'),(4964,'Itapeva',26,'2019-06-12 18:10:11'),(4965,'Itapevi',26,'2019-06-12 18:10:11'),(4966,'Itapira',26,'2019-06-12 18:10:11'),(4967,'Itapirapu?? Paulista',26,'2019-06-12 18:10:11'),(4968,'It??polis',26,'2019-06-12 18:10:11'),(4969,'Itaporanga',26,'2019-06-12 18:10:11'),(4970,'Itapu??',26,'2019-06-12 18:10:11'),(4971,'Itapura',26,'2019-06-12 18:10:11'),(4972,'Itaquaquecetuba',26,'2019-06-12 18:10:11'),(4973,'Itarar??',26,'2019-06-12 18:10:11'),(4974,'Itariri',26,'2019-06-12 18:10:11'),(4975,'Itatiba',26,'2019-06-12 18:10:11'),(4976,'Itatinga',26,'2019-06-12 18:10:11'),(4977,'Itirapina',26,'2019-06-12 18:10:11'),(4978,'Itirapu??',26,'2019-06-12 18:10:11'),(4979,'Itobi',26,'2019-06-12 18:10:11'),(4980,'Itu',26,'2019-06-12 18:10:11'),(4981,'Itupeva',26,'2019-06-12 18:10:11'),(4982,'Ituverava',26,'2019-06-12 18:10:11'),(4983,'Jaborandi',26,'2019-06-12 18:10:11'),(4984,'Jaboticabal',26,'2019-06-12 18:10:11'),(4985,'Jacare??',26,'2019-06-12 18:10:11'),(4986,'Jaci',26,'2019-06-12 18:10:11'),(4987,'Jacupiranga',26,'2019-06-12 18:10:11'),(4988,'Jaguari??na',26,'2019-06-12 18:10:11'),(4989,'Jales',26,'2019-06-12 18:10:11'),(4990,'Jambeiro',26,'2019-06-12 18:10:11'),(4991,'Jandira',26,'2019-06-12 18:10:11'),(4992,'Jardin??polis',26,'2019-06-12 18:10:11'),(4993,'Jarinu',26,'2019-06-12 18:10:11'),(4994,'Ja??',26,'2019-06-12 18:10:11'),(4995,'Jeriquara',26,'2019-06-12 18:10:11'),(4996,'Joan??polis',26,'2019-06-12 18:10:11'),(4997,'Jo??o Ramalho',26,'2019-06-12 18:10:11'),(4998,'Jos?? Bonif??cio',26,'2019-06-12 18:10:11'),(4999,'J??lio Mesquita',26,'2019-06-12 18:10:11'),(5000,'Jumirim',26,'2019-06-12 18:10:11'),(5001,'Jundia??',26,'2019-06-12 18:10:11'),(5002,'Junqueir??polis',26,'2019-06-12 18:10:11'),(5003,'Juqui??',26,'2019-06-12 18:10:11'),(5004,'Juquitiba',26,'2019-06-12 18:10:11'),(5005,'Lagoinha',26,'2019-06-12 18:10:11'),(5006,'Laranjal Paulista',26,'2019-06-12 18:10:11'),(5007,'Lav??nia',26,'2019-06-12 18:10:11'),(5008,'Lavrinhas',26,'2019-06-12 18:10:11'),(5009,'Leme',26,'2019-06-12 18:10:11'),(5010,'Len????is Paulista',26,'2019-06-12 18:10:11'),(5011,'Limeira',26,'2019-06-12 18:10:11'),(5012,'Lind??ia',26,'2019-06-12 18:10:11'),(5013,'Lins',26,'2019-06-12 18:10:11'),(5014,'Lorena',26,'2019-06-12 18:10:11'),(5015,'Lourdes',26,'2019-06-12 18:10:11'),(5016,'Louveira',26,'2019-06-12 18:10:11'),(5017,'Luc??lia',26,'2019-06-12 18:10:11'),(5018,'Lucian??polis',26,'2019-06-12 18:10:11'),(5019,'Lu??s Ant??nio',26,'2019-06-12 18:10:11'),(5020,'Luizi??nia',26,'2019-06-12 18:10:11'),(5021,'Lup??rcio',26,'2019-06-12 18:10:11'),(5022,'Lut??cia',26,'2019-06-12 18:10:11'),(5023,'Macatuba',26,'2019-06-12 18:10:11'),(5024,'Macaubal',26,'2019-06-12 18:10:11'),(5025,'Maced??nia',26,'2019-06-12 18:10:11'),(5026,'Magda',26,'2019-06-12 18:10:11'),(5027,'Mairinque',26,'2019-06-12 18:10:11'),(5028,'Mairipor??',26,'2019-06-12 18:10:11'),(5029,'Manduri',26,'2019-06-12 18:10:11'),(5030,'Marab?? Paulista',26,'2019-06-12 18:10:11'),(5031,'Maraca??',26,'2019-06-12 18:10:11'),(5032,'Marapoama',26,'2019-06-12 18:10:11'),(5033,'Mari??polis',26,'2019-06-12 18:10:11'),(5034,'Mar??lia',26,'2019-06-12 18:10:11'),(5035,'Marin??polis',26,'2019-06-12 18:10:11'),(5036,'Martin??polis',26,'2019-06-12 18:10:11'),(5037,'Mat??o',26,'2019-06-12 18:10:11'),(5038,'Mau??',26,'2019-06-12 18:10:11'),(5039,'Mendon??a',26,'2019-06-12 18:10:11'),(5040,'Meridiano',26,'2019-06-12 18:10:11'),(5041,'Mes??polis',26,'2019-06-12 18:10:11'),(5042,'Miguel??polis',26,'2019-06-12 18:10:11'),(5043,'Mineiros do Tiet??',26,'2019-06-12 18:10:11'),(5044,'Mira Estrela',26,'2019-06-12 18:10:11'),(5045,'Miracatu',26,'2019-06-12 18:10:11'),(5046,'Mirand??polis',26,'2019-06-12 18:10:11'),(5047,'Mirante do Paranapanema',26,'2019-06-12 18:10:11'),(5048,'Mirassol',26,'2019-06-12 18:10:11'),(5049,'Mirassol??ndia',26,'2019-06-12 18:10:11'),(5050,'Mococa',26,'2019-06-12 18:10:11'),(5051,'Mogi das Cruzes',26,'2019-06-12 18:10:11'),(5052,'Mogi Gua??u',26,'2019-06-12 18:10:11'),(5053,'Moji Mirim',26,'2019-06-12 18:10:11'),(5054,'Mombuca',26,'2019-06-12 18:10:11'),(5055,'Mon????es',26,'2019-06-12 18:10:11'),(5056,'Mongagu??',26,'2019-06-12 18:10:11'),(5057,'Monte Alegre do Sul',26,'2019-06-12 18:10:11'),(5058,'Monte Alto',26,'2019-06-12 18:10:11'),(5059,'Monte Apraz??vel',26,'2019-06-12 18:10:11'),(5060,'Monte Azul Paulista',26,'2019-06-12 18:10:11'),(5061,'Monte Castelo',26,'2019-06-12 18:10:11'),(5062,'Monte Mor',26,'2019-06-12 18:10:11'),(5063,'Monteiro Lobato',26,'2019-06-12 18:10:11'),(5064,'Morro Agudo',26,'2019-06-12 18:10:11'),(5065,'Morungaba',26,'2019-06-12 18:10:11'),(5066,'Motuca',26,'2019-06-12 18:10:11'),(5067,'Murutinga do Sul',26,'2019-06-12 18:10:11'),(5068,'Nantes',26,'2019-06-12 18:10:11'),(5069,'Narandiba',26,'2019-06-12 18:10:11'),(5070,'Natividade da Serra',26,'2019-06-12 18:10:11'),(5071,'Nazar?? Paulista',26,'2019-06-12 18:10:11'),(5072,'Neves Paulista',26,'2019-06-12 18:10:11'),(5073,'Nhandeara',26,'2019-06-12 18:10:11'),(5074,'Nipo??',26,'2019-06-12 18:10:11'),(5075,'Nova Alian??a',26,'2019-06-12 18:10:11'),(5076,'Nova Campina',26,'2019-06-12 18:10:11'),(5077,'Nova Cana?? Paulista',26,'2019-06-12 18:10:11'),(5078,'Nova Castilho',26,'2019-06-12 18:10:11'),(5079,'Nova Europa',26,'2019-06-12 18:10:11'),(5080,'Nova Granada',26,'2019-06-12 18:10:11'),(5081,'Nova Guataporanga',26,'2019-06-12 18:10:11'),(5082,'Nova Independ??ncia',26,'2019-06-12 18:10:11'),(5083,'Nova Luzit??nia',26,'2019-06-12 18:10:11'),(5084,'Nova Odessa',26,'2019-06-12 18:10:11'),(5085,'Novais',26,'2019-06-12 18:10:11'),(5086,'Novo Horizonte',26,'2019-06-12 18:10:11'),(5087,'Nuporanga',26,'2019-06-12 18:10:11'),(5088,'Ocau??u',26,'2019-06-12 18:10:11'),(5089,'??leo',26,'2019-06-12 18:10:11'),(5090,'Ol??mpia',26,'2019-06-12 18:10:11'),(5091,'Onda Verde',26,'2019-06-12 18:10:11'),(5092,'Oriente',26,'2019-06-12 18:10:11'),(5093,'Orindi??va',26,'2019-06-12 18:10:11'),(5094,'Orl??ndia',26,'2019-06-12 18:10:11'),(5095,'Osasco',26,'2019-06-12 18:10:11'),(5096,'Oscar Bressane',26,'2019-06-12 18:10:11'),(5097,'Osvaldo Cruz',26,'2019-06-12 18:10:11'),(5098,'Ourinhos',26,'2019-06-12 18:10:11'),(5099,'Ouro Verde',26,'2019-06-12 18:10:11'),(5100,'Ouroeste',26,'2019-06-12 18:10:11'),(5101,'Pacaembu',26,'2019-06-12 18:10:11'),(5102,'Palestina',26,'2019-06-12 18:10:11'),(5103,'Palmares Paulista',26,'2019-06-12 18:10:11'),(5104,'Palmeira d`Oeste',26,'2019-06-12 18:10:11'),(5105,'Palmital',26,'2019-06-12 18:10:11'),(5106,'Panorama',26,'2019-06-12 18:10:11'),(5107,'Paragua??u Paulista',26,'2019-06-12 18:10:11'),(5108,'Paraibuna',26,'2019-06-12 18:10:11'),(5109,'Para??so',26,'2019-06-12 18:10:11'),(5110,'Paranapanema',26,'2019-06-12 18:10:11'),(5111,'Paranapu??',26,'2019-06-12 18:10:11'),(5112,'Parapu??',26,'2019-06-12 18:10:11'),(5113,'Pardinho',26,'2019-06-12 18:10:11'),(5114,'Pariquera-A??u',26,'2019-06-12 18:10:11'),(5115,'Parisi',26,'2019-06-12 18:10:11'),(5116,'Patroc??nio Paulista',26,'2019-06-12 18:10:11'),(5117,'Paulic??ia',26,'2019-06-12 18:10:11'),(5118,'Paul??nia',26,'2019-06-12 18:10:11'),(5119,'Paulist??nia',26,'2019-06-12 18:10:11'),(5120,'Paulo de Faria',26,'2019-06-12 18:10:11'),(5121,'Pederneiras',26,'2019-06-12 18:10:11'),(5122,'Pedra Bela',26,'2019-06-12 18:10:11'),(5123,'Pedran??polis',26,'2019-06-12 18:10:11'),(5124,'Pedregulho',26,'2019-06-12 18:10:11'),(5125,'Pedreira',26,'2019-06-12 18:10:11'),(5126,'Pedrinhas Paulista',26,'2019-06-12 18:10:11'),(5127,'Pedro de Toledo',26,'2019-06-12 18:10:11'),(5128,'Pen??polis',26,'2019-06-12 18:10:11'),(5129,'Pereira Barreto',26,'2019-06-12 18:10:11'),(5130,'Pereiras',26,'2019-06-12 18:10:11'),(5131,'Peru??be',26,'2019-06-12 18:10:11'),(5132,'Piacatu',26,'2019-06-12 18:10:11'),(5133,'Piedade',26,'2019-06-12 18:10:11'),(5134,'Pilar do Sul',26,'2019-06-12 18:10:11'),(5135,'Pindamonhangaba',26,'2019-06-12 18:10:11'),(5136,'Pindorama',26,'2019-06-12 18:10:11'),(5137,'Pinhalzinho',26,'2019-06-12 18:10:11'),(5138,'Piquerobi',26,'2019-06-12 18:10:11'),(5139,'Piquete',26,'2019-06-12 18:10:11'),(5140,'Piracaia',26,'2019-06-12 18:10:11'),(5141,'Piracicaba',26,'2019-06-12 18:10:11'),(5142,'Piraju',26,'2019-06-12 18:10:11'),(5143,'Piraju??',26,'2019-06-12 18:10:11'),(5144,'Pirangi',26,'2019-06-12 18:10:11'),(5145,'Pirapora do Bom Jesus',26,'2019-06-12 18:10:11'),(5146,'Pirapozinho',26,'2019-06-12 18:10:11'),(5147,'Pirassununga',26,'2019-06-12 18:10:11'),(5148,'Piratininga',26,'2019-06-12 18:10:11'),(5149,'Pitangueiras',26,'2019-06-12 18:10:11'),(5150,'Planalto',26,'2019-06-12 18:10:11'),(5151,'Platina',26,'2019-06-12 18:10:11'),(5152,'Po??',26,'2019-06-12 18:10:11'),(5153,'Poloni',26,'2019-06-12 18:10:11'),(5154,'Pomp??ia',26,'2019-06-12 18:10:11'),(5155,'Ponga??',26,'2019-06-12 18:10:11'),(5156,'Pontal',26,'2019-06-12 18:10:11'),(5157,'Pontalinda',26,'2019-06-12 18:10:11'),(5158,'Pontes Gestal',26,'2019-06-12 18:10:11'),(5159,'Populina',26,'2019-06-12 18:10:11'),(5160,'Porangaba',26,'2019-06-12 18:10:11'),(5161,'Porto Feliz',26,'2019-06-12 18:10:11'),(5162,'Porto Ferreira',26,'2019-06-12 18:10:11'),(5163,'Potim',26,'2019-06-12 18:10:11'),(5164,'Potirendaba',26,'2019-06-12 18:10:11'),(5165,'Pracinha',26,'2019-06-12 18:10:11'),(5166,'Prad??polis',26,'2019-06-12 18:10:11'),(5167,'Praia Grande',26,'2019-06-12 18:10:11'),(5168,'Prat??nia',26,'2019-06-12 18:10:11'),(5169,'Presidente Alves',26,'2019-06-12 18:10:11'),(5170,'Presidente Bernardes',26,'2019-06-12 18:10:11'),(5171,'Presidente Epit??cio',26,'2019-06-12 18:10:11'),(5172,'Presidente Prudente',26,'2019-06-12 18:10:11'),(5173,'Presidente Venceslau',26,'2019-06-12 18:10:11'),(5174,'Promiss??o',26,'2019-06-12 18:10:11'),(5175,'Quadra',26,'2019-06-12 18:10:11'),(5176,'Quat??',26,'2019-06-12 18:10:11'),(5177,'Queiroz',26,'2019-06-12 18:10:11'),(5178,'Queluz',26,'2019-06-12 18:10:11'),(5179,'Quintana',26,'2019-06-12 18:10:11'),(5180,'Rafard',26,'2019-06-12 18:10:11'),(5181,'Rancharia',26,'2019-06-12 18:10:11'),(5182,'Reden????o da Serra',26,'2019-06-12 18:10:11'),(5183,'Regente Feij??',26,'2019-06-12 18:10:11'),(5184,'Regin??polis',26,'2019-06-12 18:10:11'),(5185,'Registro',26,'2019-06-12 18:10:11'),(5186,'Restinga',26,'2019-06-12 18:10:11'),(5187,'Ribeira',26,'2019-06-12 18:10:11'),(5188,'Ribeir??o Bonito',26,'2019-06-12 18:10:11'),(5189,'Ribeir??o Branco',26,'2019-06-12 18:10:11'),(5190,'Ribeir??o Corrente',26,'2019-06-12 18:10:11'),(5191,'Ribeir??o do Sul',26,'2019-06-12 18:10:11'),(5192,'Ribeir??o dos ??ndios',26,'2019-06-12 18:10:11'),(5193,'Ribeir??o Grande',26,'2019-06-12 18:10:11'),(5194,'Ribeir??o Pires',26,'2019-06-12 18:10:11'),(5195,'Ribeir??o Preto',26,'2019-06-12 18:10:11'),(5196,'Rifaina',26,'2019-06-12 18:10:11'),(5197,'Rinc??o',26,'2019-06-12 18:10:11'),(5198,'Rin??polis',26,'2019-06-12 18:10:11'),(5199,'Rio Claro',26,'2019-06-12 18:10:11'),(5200,'Rio das Pedras',26,'2019-06-12 18:10:11'),(5201,'Rio Grande da Serra',26,'2019-06-12 18:10:11'),(5202,'Riol??ndia',26,'2019-06-12 18:10:11'),(5203,'Riversul',26,'2019-06-12 18:10:11'),(5204,'Rosana',26,'2019-06-12 18:10:11'),(5205,'Roseira',26,'2019-06-12 18:10:11'),(5206,'Rubi??cea',26,'2019-06-12 18:10:11'),(5207,'Rubin??ia',26,'2019-06-12 18:10:11'),(5208,'Sabino',26,'2019-06-12 18:10:11'),(5209,'Sagres',26,'2019-06-12 18:10:11'),(5210,'Sales',26,'2019-06-12 18:10:11'),(5211,'Sales Oliveira',26,'2019-06-12 18:10:11'),(5212,'Sales??polis',26,'2019-06-12 18:10:11'),(5213,'Salmour??o',26,'2019-06-12 18:10:11'),(5214,'Saltinho',26,'2019-06-12 18:10:11'),(5215,'Salto',26,'2019-06-12 18:10:11'),(5216,'Salto de Pirapora',26,'2019-06-12 18:10:11'),(5217,'Salto Grande',26,'2019-06-12 18:10:11'),(5218,'Sandovalina',26,'2019-06-12 18:10:11'),(5219,'Santa Ad??lia',26,'2019-06-12 18:10:11'),(5220,'Santa Albertina',26,'2019-06-12 18:10:11'),(5221,'Santa B??rbara d`Oeste',26,'2019-06-12 18:10:11'),(5222,'Santa Branca',26,'2019-06-12 18:10:11'),(5223,'Santa Clara d`Oeste',26,'2019-06-12 18:10:11'),(5224,'Santa Cruz da Concei????o',26,'2019-06-12 18:10:11'),(5225,'Santa Cruz da Esperan??a',26,'2019-06-12 18:10:11'),(5226,'Santa Cruz das Palmeiras',26,'2019-06-12 18:10:11'),(5227,'Santa Cruz do Rio Pardo',26,'2019-06-12 18:10:11'),(5228,'Santa Ernestina',26,'2019-06-12 18:10:11'),(5229,'Santa F?? do Sul',26,'2019-06-12 18:10:11'),(5230,'Santa Gertrudes',26,'2019-06-12 18:10:11'),(5231,'Santa Isabel',26,'2019-06-12 18:10:11'),(5232,'Santa L??cia',26,'2019-06-12 18:10:11'),(5233,'Santa Maria da Serra',26,'2019-06-12 18:10:11'),(5234,'Santa Mercedes',26,'2019-06-12 18:10:11'),(5235,'Santa Rita d`Oeste',26,'2019-06-12 18:10:11'),(5236,'Santa Rita do Passa Quatro',26,'2019-06-12 18:10:11'),(5237,'Santa Rosa de Viterbo',26,'2019-06-12 18:10:11'),(5238,'Santa Salete',26,'2019-06-12 18:10:11'),(5239,'Santana da Ponte Pensa',26,'2019-06-12 18:10:11'),(5240,'Santana de Parna??ba',26,'2019-06-12 18:10:11'),(5241,'Santo Anast??cio',26,'2019-06-12 18:10:11'),(5242,'Santo Andr??',26,'2019-06-12 18:10:11'),(5243,'Santo Ant??nio da Alegria',26,'2019-06-12 18:10:11'),(5244,'Santo Ant??nio de Posse',26,'2019-06-12 18:10:11'),(5245,'Santo Ant??nio do Aracangu??',26,'2019-06-12 18:10:11'),(5246,'Santo Ant??nio do Jardim',26,'2019-06-12 18:10:11'),(5247,'Santo Ant??nio do Pinhal',26,'2019-06-12 18:10:11'),(5248,'Santo Expedito',26,'2019-06-12 18:10:11'),(5249,'Sant??polis do Aguape??',26,'2019-06-12 18:10:11'),(5250,'Santos',26,'2019-06-12 18:10:11'),(5251,'S??o Bento do Sapuca??',26,'2019-06-12 18:10:11'),(5252,'S??o Bernardo do Campo',26,'2019-06-12 18:10:11'),(5253,'S??o Caetano do Sul',26,'2019-06-12 18:10:11'),(5254,'S??o Carlos',26,'2019-06-12 18:10:11'),(5255,'S??o Francisco',26,'2019-06-12 18:10:11'),(5256,'S??o Jo??o da Boa Vista',26,'2019-06-12 18:10:11'),(5257,'S??o Jo??o das Duas Pontes',26,'2019-06-12 18:10:11'),(5258,'S??o Jo??o de Iracema',26,'2019-06-12 18:10:11'),(5259,'S??o Jo??o do Pau d`Alho',26,'2019-06-12 18:10:11'),(5260,'S??o Joaquim da Barra',26,'2019-06-12 18:10:11'),(5261,'S??o Jos?? da Bela Vista',26,'2019-06-12 18:10:11'),(5262,'S??o Jos?? do Barreiro',26,'2019-06-12 18:10:11'),(5263,'S??o Jos?? do Rio Pardo',26,'2019-06-12 18:10:11'),(5264,'S??o Jos?? do Rio Preto',26,'2019-06-12 18:10:11'),(5265,'S??o Jos?? dos Campos',26,'2019-06-12 18:10:11'),(5266,'S??o Louren??o da Serra',26,'2019-06-12 18:10:11'),(5267,'S??o Lu??s do Paraitinga',26,'2019-06-12 18:10:11'),(5268,'S??o Manuel',26,'2019-06-12 18:10:11'),(5269,'S??o Miguel Arcanjo',26,'2019-06-12 18:10:11'),(5270,'S??o Paulo',26,'2019-06-12 18:10:11'),(5271,'S??o Pedro',26,'2019-06-12 18:10:11'),(5272,'S??o Pedro do Turvo',26,'2019-06-12 18:10:11'),(5273,'S??o Roque',26,'2019-06-12 18:10:11'),(5274,'S??o Sebasti??o',26,'2019-06-12 18:10:11'),(5275,'S??o Sebasti??o da Grama',26,'2019-06-12 18:10:11'),(5276,'S??o Sim??o',26,'2019-06-12 18:10:11'),(5277,'S??o Vicente',26,'2019-06-12 18:10:11'),(5278,'Sarapu??',26,'2019-06-12 18:10:11'),(5279,'Sarutai??',26,'2019-06-12 18:10:11'),(5280,'Sebastian??polis do Sul',26,'2019-06-12 18:10:11'),(5281,'Serra Azul',26,'2019-06-12 18:10:11'),(5282,'Serra Negra',26,'2019-06-12 18:10:11'),(5283,'Serrana',26,'2019-06-12 18:10:11'),(5284,'Sert??ozinho',26,'2019-06-12 18:10:11'),(5285,'Sete Barras',26,'2019-06-12 18:10:11'),(5286,'Sever??nia',26,'2019-06-12 18:10:11'),(5287,'Silveiras',26,'2019-06-12 18:10:11'),(5288,'Socorro',26,'2019-06-12 18:10:11'),(5289,'Sorocaba',26,'2019-06-12 18:10:11'),(5290,'Sud Mennucci',26,'2019-06-12 18:10:11'),(5291,'Sumar??',26,'2019-06-12 18:10:11'),(5292,'Suzan??polis',26,'2019-06-12 18:10:11'),(5293,'Suzano',26,'2019-06-12 18:10:11'),(5294,'Tabapu??',26,'2019-06-12 18:10:11'),(5295,'Tabatinga',26,'2019-06-12 18:10:11'),(5296,'Tabo??o da Serra',26,'2019-06-12 18:10:11'),(5297,'Taciba',26,'2019-06-12 18:10:11'),(5298,'Tagua??',26,'2019-06-12 18:10:11'),(5299,'Taia??u',26,'2019-06-12 18:10:11'),(5300,'Tai??va',26,'2019-06-12 18:10:11'),(5301,'Tamba??',26,'2019-06-12 18:10:11'),(5302,'Tanabi',26,'2019-06-12 18:10:11'),(5303,'Tapira??',26,'2019-06-12 18:10:11'),(5304,'Tapiratiba',26,'2019-06-12 18:10:11'),(5305,'Taquaral',26,'2019-06-12 18:10:11'),(5306,'Taquaritinga',26,'2019-06-12 18:10:11'),(5307,'Taquarituba',26,'2019-06-12 18:10:11'),(5308,'Taquariva??',26,'2019-06-12 18:10:11'),(5309,'Tarabai',26,'2019-06-12 18:10:11'),(5310,'Tarum??',26,'2019-06-12 18:10:11'),(5311,'Tatu??',26,'2019-06-12 18:10:11'),(5312,'Taubat??',26,'2019-06-12 18:10:11'),(5313,'Tejup??',26,'2019-06-12 18:10:11'),(5314,'Teodoro Sampaio',26,'2019-06-12 18:10:11'),(5315,'Terra Roxa',26,'2019-06-12 18:10:11'),(5316,'Tiet??',26,'2019-06-12 18:10:11'),(5317,'Timburi',26,'2019-06-12 18:10:11'),(5318,'Torre de Pedra',26,'2019-06-12 18:10:11'),(5319,'Torrinha',26,'2019-06-12 18:10:11'),(5320,'Trabiju',26,'2019-06-12 18:10:11'),(5321,'Trememb??',26,'2019-06-12 18:10:11'),(5322,'Tr??s Fronteiras',26,'2019-06-12 18:10:11'),(5323,'Tuiuti',26,'2019-06-12 18:10:11'),(5324,'Tup??',26,'2019-06-12 18:10:11'),(5325,'Tupi Paulista',26,'2019-06-12 18:10:11'),(5326,'Turi??ba',26,'2019-06-12 18:10:11'),(5327,'Turmalina',26,'2019-06-12 18:10:11'),(5328,'Ubarana',26,'2019-06-12 18:10:11'),(5329,'Ubatuba',26,'2019-06-12 18:10:11'),(5330,'Ubirajara',26,'2019-06-12 18:10:11'),(5331,'Uchoa',26,'2019-06-12 18:10:11'),(5332,'Uni??o Paulista',26,'2019-06-12 18:10:11'),(5333,'Ur??nia',26,'2019-06-12 18:10:11'),(5334,'Uru',26,'2019-06-12 18:10:11'),(5335,'Urup??s',26,'2019-06-12 18:10:11'),(5336,'Valentim Gentil',26,'2019-06-12 18:10:11'),(5337,'Valinhos',26,'2019-06-12 18:10:11'),(5338,'Valpara??so',26,'2019-06-12 18:10:11'),(5339,'Vargem',26,'2019-06-12 18:10:11'),(5340,'Vargem Grande do Sul',26,'2019-06-12 18:10:11'),(5341,'Vargem Grande Paulista',26,'2019-06-12 18:10:11'),(5342,'V??rzea Paulista',26,'2019-06-12 18:10:11'),(5343,'Vera Cruz',26,'2019-06-12 18:10:11'),(5344,'Vinhedo',26,'2019-06-12 18:10:11'),(5345,'Viradouro',26,'2019-06-12 18:10:11'),(5346,'Vista Alegre do Alto',26,'2019-06-12 18:10:11'),(5347,'Vit??ria Brasil',26,'2019-06-12 18:10:11'),(5348,'Votorantim',26,'2019-06-12 18:10:11'),(5349,'Votuporanga',26,'2019-06-12 18:10:11'),(5350,'Zacarias',26,'2019-06-12 18:10:11'),(5351,'Amparo de S??o Francisco',25,'2019-06-12 18:10:11'),(5352,'Aquidab??',25,'2019-06-12 18:10:11'),(5353,'Aracaju',25,'2019-06-12 18:10:11'),(5354,'Arau??',25,'2019-06-12 18:10:11'),(5355,'Areia Branca',25,'2019-06-12 18:10:11'),(5356,'Barra dos Coqueiros',25,'2019-06-12 18:10:11'),(5357,'Boquim',25,'2019-06-12 18:10:11'),(5358,'Brejo Grande',25,'2019-06-12 18:10:11'),(5359,'Campo do Brito',25,'2019-06-12 18:10:11'),(5360,'Canhoba',25,'2019-06-12 18:10:11'),(5361,'Canind?? de S??o Francisco',25,'2019-06-12 18:10:11'),(5362,'Capela',25,'2019-06-12 18:10:11'),(5363,'Carira',25,'2019-06-12 18:10:11'),(5364,'Carm??polis',25,'2019-06-12 18:10:11'),(5365,'Cedro de S??o Jo??o',25,'2019-06-12 18:10:11'),(5366,'Cristin??polis',25,'2019-06-12 18:10:11'),(5367,'Cumbe',25,'2019-06-12 18:10:11'),(5368,'Divina Pastora',25,'2019-06-12 18:10:11'),(5369,'Est??ncia',25,'2019-06-12 18:10:11'),(5370,'Feira Nova',25,'2019-06-12 18:10:11'),(5371,'Frei Paulo',25,'2019-06-12 18:10:11'),(5372,'Gararu',25,'2019-06-12 18:10:11'),(5373,'General Maynard',25,'2019-06-12 18:10:11'),(5374,'Gracho Cardoso',25,'2019-06-12 18:10:11'),(5375,'Ilha das Flores',25,'2019-06-12 18:10:11'),(5376,'Indiaroba',25,'2019-06-12 18:10:11'),(5377,'Itabaiana',25,'2019-06-12 18:10:11'),(5378,'Itabaianinha',25,'2019-06-12 18:10:11'),(5379,'Itabi',25,'2019-06-12 18:10:11'),(5380,'Itaporanga d`Ajuda',25,'2019-06-12 18:10:11'),(5381,'Japaratuba',25,'2019-06-12 18:10:11'),(5382,'Japoat??',25,'2019-06-12 18:10:11'),(5383,'Lagarto',25,'2019-06-12 18:10:11'),(5384,'Laranjeiras',25,'2019-06-12 18:10:11'),(5385,'Macambira',25,'2019-06-12 18:10:11'),(5386,'Malhada dos Bois',25,'2019-06-12 18:10:11'),(5387,'Malhador',25,'2019-06-12 18:10:11'),(5388,'Maruim',25,'2019-06-12 18:10:11'),(5389,'Moita Bonita',25,'2019-06-12 18:10:11'),(5390,'Monte Alegre de Sergipe',25,'2019-06-12 18:10:11'),(5391,'Muribeca',25,'2019-06-12 18:10:11'),(5392,'Ne??polis',25,'2019-06-12 18:10:11'),(5393,'Nossa Senhora Aparecida',25,'2019-06-12 18:10:11'),(5394,'Nossa Senhora da Gl??ria',25,'2019-06-12 18:10:11'),(5395,'Nossa Senhora das Dores',25,'2019-06-12 18:10:11'),(5396,'Nossa Senhora de Lourdes',25,'2019-06-12 18:10:11'),(5397,'Nossa Senhora do Socorro',25,'2019-06-12 18:10:11'),(5398,'Pacatuba',25,'2019-06-12 18:10:11'),(5399,'Pedra Mole',25,'2019-06-12 18:10:11'),(5400,'Pedrinhas',25,'2019-06-12 18:10:11'),(5401,'Pinh??o',25,'2019-06-12 18:10:11'),(5402,'Pirambu',25,'2019-06-12 18:10:11'),(5403,'Po??o Redondo',25,'2019-06-12 18:10:11'),(5404,'Po??o Verde',25,'2019-06-12 18:10:11'),(5405,'Porto da Folha',25,'2019-06-12 18:10:11'),(5406,'Propri??',25,'2019-06-12 18:10:11'),(5407,'Riach??o do Dantas',25,'2019-06-12 18:10:11'),(5408,'Riachuelo',25,'2019-06-12 18:10:11'),(5409,'Ribeir??polis',25,'2019-06-12 18:10:11'),(5410,'Ros??rio do Catete',25,'2019-06-12 18:10:11'),(5411,'Salgado',25,'2019-06-12 18:10:11'),(5412,'Santa Luzia do Itanhy',25,'2019-06-12 18:10:11'),(5413,'Santa Rosa de Lima',25,'2019-06-12 18:10:11'),(5414,'Santana do S??o Francisco',25,'2019-06-12 18:10:11'),(5415,'Santo Amaro das Brotas',25,'2019-06-12 18:10:11'),(5416,'S??o Crist??v??o',25,'2019-06-12 18:10:11'),(5417,'S??o Domingos',25,'2019-06-12 18:10:11'),(5418,'S??o Francisco',25,'2019-06-12 18:10:11'),(5419,'S??o Miguel do Aleixo',25,'2019-06-12 18:10:11'),(5420,'Sim??o Dias',25,'2019-06-12 18:10:11'),(5421,'Siriri',25,'2019-06-12 18:10:11'),(5422,'Telha',25,'2019-06-12 18:10:11'),(5423,'Tobias Barreto',25,'2019-06-12 18:10:11'),(5424,'Tomar do Geru',25,'2019-06-12 18:10:11'),(5425,'Umba??ba',25,'2019-06-12 18:10:11'),(5426,'Abreul??ndia',27,'2019-06-12 18:10:11'),(5427,'Aguiarn??polis',27,'2019-06-12 18:10:11'),(5428,'Alian??a do Tocantins',27,'2019-06-12 18:10:11'),(5429,'Almas',27,'2019-06-12 18:10:11'),(5430,'Alvorada',27,'2019-06-12 18:10:11'),(5431,'Anan??s',27,'2019-06-12 18:10:11'),(5432,'Angico',27,'2019-06-12 18:10:11'),(5433,'Aparecida do Rio Negro',27,'2019-06-12 18:10:11'),(5434,'Aragominas',27,'2019-06-12 18:10:11'),(5435,'Araguacema',27,'2019-06-12 18:10:11'),(5436,'Aragua??u',27,'2019-06-12 18:10:11'),(5437,'Aragua??na',27,'2019-06-12 18:10:11'),(5438,'Araguan??',27,'2019-06-12 18:10:11'),(5439,'Araguatins',27,'2019-06-12 18:10:11'),(5440,'Arapoema',27,'2019-06-12 18:10:11'),(5441,'Arraias',27,'2019-06-12 18:10:11'),(5442,'Augustin??polis',27,'2019-06-12 18:10:11'),(5443,'Aurora do Tocantins',27,'2019-06-12 18:10:11'),(5444,'Axix?? do Tocantins',27,'2019-06-12 18:10:11'),(5445,'Baba??ul??ndia',27,'2019-06-12 18:10:11'),(5446,'Bandeirantes do Tocantins',27,'2019-06-12 18:10:11'),(5447,'Barra do Ouro',27,'2019-06-12 18:10:11'),(5448,'Barrol??ndia',27,'2019-06-12 18:10:11'),(5449,'Bernardo Say??o',27,'2019-06-12 18:10:11'),(5450,'Bom Jesus do Tocantins',27,'2019-06-12 18:10:11'),(5451,'Brasil??ndia do Tocantins',27,'2019-06-12 18:10:11'),(5452,'Brejinho de Nazar??',27,'2019-06-12 18:10:11'),(5453,'Buriti do Tocantins',27,'2019-06-12 18:10:11'),(5454,'Cachoeirinha',27,'2019-06-12 18:10:11'),(5455,'Campos Lindos',27,'2019-06-12 18:10:11'),(5456,'Cariri do Tocantins',27,'2019-06-12 18:10:11'),(5457,'Carmol??ndia',27,'2019-06-12 18:10:11'),(5458,'Carrasco Bonito',27,'2019-06-12 18:10:11'),(5459,'Caseara',27,'2019-06-12 18:10:11'),(5460,'Centen??rio',27,'2019-06-12 18:10:11'),(5461,'Chapada da Natividade',27,'2019-06-12 18:10:11'),(5462,'Chapada de Areia',27,'2019-06-12 18:10:11'),(5463,'Colinas do Tocantins',27,'2019-06-12 18:10:11'),(5464,'Colm??ia',27,'2019-06-12 18:10:11'),(5465,'Combinado',27,'2019-06-12 18:10:11'),(5466,'Concei????o do Tocantins',27,'2019-06-12 18:10:11'),(5467,'Couto de Magalh??es',27,'2019-06-12 18:10:11'),(5468,'Cristal??ndia',27,'2019-06-12 18:10:11'),(5469,'Crix??s do Tocantins',27,'2019-06-12 18:10:11'),(5470,'Darcin??polis',27,'2019-06-12 18:10:11'),(5471,'Dian??polis',27,'2019-06-12 18:10:11'),(5472,'Divin??polis do Tocantins',27,'2019-06-12 18:10:11'),(5473,'Dois Irm??os do Tocantins',27,'2019-06-12 18:10:11'),(5474,'Duer??',27,'2019-06-12 18:10:11'),(5475,'Esperantina',27,'2019-06-12 18:10:11'),(5476,'F??tima',27,'2019-06-12 18:10:11'),(5477,'Figueir??polis',27,'2019-06-12 18:10:11'),(5478,'Filad??lfia',27,'2019-06-12 18:10:11'),(5479,'Formoso do Araguaia',27,'2019-06-12 18:10:11'),(5480,'Fortaleza do Taboc??o',27,'2019-06-12 18:10:11'),(5481,'Goianorte',27,'2019-06-12 18:10:11'),(5482,'Goiatins',27,'2019-06-12 18:10:11'),(5483,'Guara??',27,'2019-06-12 18:10:11'),(5484,'Gurupi',27,'2019-06-12 18:10:11'),(5485,'Ipueiras',27,'2019-06-12 18:10:11'),(5486,'Itacaj??',27,'2019-06-12 18:10:11'),(5487,'Itaguatins',27,'2019-06-12 18:10:11'),(5488,'Itapiratins',27,'2019-06-12 18:10:11'),(5489,'Itapor?? do Tocantins',27,'2019-06-12 18:10:11'),(5490,'Ja?? do Tocantins',27,'2019-06-12 18:10:11'),(5491,'Juarina',27,'2019-06-12 18:10:11'),(5492,'Lagoa da Confus??o',27,'2019-06-12 18:10:11'),(5493,'Lagoa do Tocantins',27,'2019-06-12 18:10:11'),(5494,'Lajeado',27,'2019-06-12 18:10:11'),(5495,'Lavandeira',27,'2019-06-12 18:10:11'),(5496,'Lizarda',27,'2019-06-12 18:10:11'),(5497,'Luzin??polis',27,'2019-06-12 18:10:11'),(5498,'Marian??polis do Tocantins',27,'2019-06-12 18:10:11'),(5499,'Mateiros',27,'2019-06-12 18:10:11'),(5500,'Mauril??ndia do Tocantins',27,'2019-06-12 18:10:11'),(5501,'Miracema do Tocantins',27,'2019-06-12 18:10:11'),(5502,'Miranorte',27,'2019-06-12 18:10:11'),(5503,'Monte do Carmo',27,'2019-06-12 18:10:11'),(5504,'Monte Santo do Tocantins',27,'2019-06-12 18:10:11'),(5505,'Muricil??ndia',27,'2019-06-12 18:10:11'),(5506,'Natividade',27,'2019-06-12 18:10:11'),(5507,'Nazar??',27,'2019-06-12 18:10:11'),(5508,'Nova Olinda',27,'2019-06-12 18:10:11'),(5509,'Nova Rosal??ndia',27,'2019-06-12 18:10:11'),(5510,'Novo Acordo',27,'2019-06-12 18:10:11'),(5511,'Novo Alegre',27,'2019-06-12 18:10:11'),(5512,'Novo Jardim',27,'2019-06-12 18:10:11'),(5513,'Oliveira de F??tima',27,'2019-06-12 18:10:11'),(5514,'Palmas',27,'2019-06-12 18:10:11'),(5515,'Palmeirante',27,'2019-06-12 18:10:11'),(5516,'Palmeiras do Tocantins',27,'2019-06-12 18:10:11'),(5517,'Palmeir??polis',27,'2019-06-12 18:10:11'),(5518,'Para??so do Tocantins',27,'2019-06-12 18:10:11'),(5519,'Paran??',27,'2019-06-12 18:10:11'),(5520,'Pau d`Arco',27,'2019-06-12 18:10:11'),(5521,'Pedro Afonso',27,'2019-06-12 18:10:11'),(5522,'Peixe',27,'2019-06-12 18:10:11'),(5523,'Pequizeiro',27,'2019-06-12 18:10:11'),(5524,'Pindorama do Tocantins',27,'2019-06-12 18:10:11'),(5525,'Piraqu??',27,'2019-06-12 18:10:11'),(5526,'Pium',27,'2019-06-12 18:10:11'),(5527,'Ponte Alta do Bom Jesus',27,'2019-06-12 18:10:11'),(5528,'Ponte Alta do Tocantins',27,'2019-06-12 18:10:11'),(5529,'Porto Alegre do Tocantins',27,'2019-06-12 18:10:11'),(5530,'Porto Nacional',27,'2019-06-12 18:10:11'),(5531,'Praia Norte',27,'2019-06-12 18:10:11'),(5532,'Presidente Kennedy',27,'2019-06-12 18:10:11'),(5533,'Pugmil',27,'2019-06-12 18:10:11'),(5534,'Recursol??ndia',27,'2019-06-12 18:10:11'),(5535,'Riachinho',27,'2019-06-12 18:10:11'),(5536,'Rio da Concei????o',27,'2019-06-12 18:10:11'),(5537,'Rio dos Bois',27,'2019-06-12 18:10:11'),(5538,'Rio Sono',27,'2019-06-12 18:10:11'),(5539,'Sampaio',27,'2019-06-12 18:10:11'),(5540,'Sandol??ndia',27,'2019-06-12 18:10:11'),(5541,'Santa F?? do Araguaia',27,'2019-06-12 18:10:11'),(5542,'Santa Maria do Tocantins',27,'2019-06-12 18:10:11'),(5543,'Santa Rita do Tocantins',27,'2019-06-12 18:10:11'),(5544,'Santa Rosa do Tocantins',27,'2019-06-12 18:10:11'),(5545,'Santa Tereza do Tocantins',27,'2019-06-12 18:10:11'),(5546,'Santa Terezinha do Tocantins',27,'2019-06-12 18:10:11'),(5547,'S??o Bento do Tocantins',27,'2019-06-12 18:10:11'),(5548,'S??o F??lix do Tocantins',27,'2019-06-12 18:10:11'),(5549,'S??o Miguel do Tocantins',27,'2019-06-12 18:10:11'),(5550,'S??o Salvador do Tocantins',27,'2019-06-12 18:10:11'),(5551,'S??o Sebasti??o do Tocantins',27,'2019-06-12 18:10:11'),(5552,'S??o Val??rio da Natividade',27,'2019-06-12 18:10:11'),(5553,'Silvan??polis',27,'2019-06-12 18:10:11'),(5554,'S??tio Novo do Tocantins',27,'2019-06-12 18:10:11'),(5555,'Sucupira',27,'2019-06-12 18:10:11'),(5556,'Taguatinga',27,'2019-06-12 18:10:11'),(5557,'Taipas do Tocantins',27,'2019-06-12 18:10:11'),(5558,'Talism??',27,'2019-06-12 18:10:11'),(5559,'Tocant??nia',27,'2019-06-12 18:10:11'),(5560,'Tocantin??polis',27,'2019-06-12 18:10:11'),(5561,'Tupirama',27,'2019-06-12 18:10:11'),(5562,'Tupiratins',27,'2019-06-12 18:10:11'),(5563,'Wanderl??ndia',27,'2019-06-12 18:10:11'),(5564,'Xambio??',27,'2019-06-12 18:10:11');
/*!40000 ALTER TABLE `tb_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_coupons`
--

DROP TABLE IF EXISTS `tb_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_coupons` (
  `idcoupon` int(11) NOT NULL AUTO_INCREMENT,
  `inusage` tinyint(4) DEFAULT NULL,
  `descouponcode` varchar(12) DEFAULT NULL,
  `desdescription` text DEFAULT NULL,
  `vlpercentage` decimal(3,2) DEFAULT NULL,
  `vlinverse` decimal(3,2) DEFAULT NULL,
  `dtexpire` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcoupon`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_coupons`
--

LOCK TABLES `tb_coupons` WRITE;
/*!40000 ALTER TABLE `tb_coupons` DISABLE KEYS */;
INSERT INTO `tb_coupons` VALUES (1,43,'0','0',NULL,9.00,'0000-00-00','2019-10-12 14:43:33'),(2,0,'0EHWI429','/teste com 1 plano free daniele',0.60,0.40,'2020-04-23','2019-10-26 21:21:06'),(3,1,'C37A6NSH','Voucher teste primeiro',0.00,1.00,'2019-11-29','2019-11-08 15:04:15'),(5,0,'C37A6NS1','Voucher teste ilimitado (n??o pode ser)',0.00,1.00,'2020-04-30','2019-11-08 18:21:03'),(6,1,'NCWGRTLX','Voucher teste 2',0.00,1.00,'2019-11-30','2019-11-08 23:17:29'),(7,1,'APZ3E152','Cupom teste 3',0.00,1.00,'2019-11-30','2019-11-08 23:22:13'),(8,1,'7T5INVUN','voucher 3',0.00,1.00,'2019-11-30','2019-11-08 23:35:13'),(9,1,'0BZEAN5S','voucher',0.00,1.00,'2019-11-30','2019-11-08 23:39:07'),(10,1,'65G87DQP','20voucher',0.00,1.00,'2019-11-30','2019-11-09 00:00:14'),(11,1,'X8FDLEWD','voucher',0.00,1.00,'2020-01-01','2019-11-09 19:12:28'),(12,1,'4NHB9V14','voucher',0.00,1.00,'2020-01-01','2019-11-09 21:47:25'),(13,1,'9O82YVCR','voucher',0.00,1.00,'2020-01-01','2019-11-09 22:14:42'),(14,0,'CPWSR83X','voucher',0.00,1.00,'2020-01-01','2019-11-09 22:20:13'),(15,1,'L45XOQX1','voucher',0.00,1.00,'2020-01-01','2019-11-09 22:28:07'),(16,0,'E9AL7IFZ','cupom 50%',0.50,0.50,'2020-01-01','2019-11-10 14:39:28'),(17,0,'PDK0FTQT','test',0.50,0.50,'2020-01-01','2019-11-11 15:03:02'),(18,0,'O22XOERO','teste bem casei',0.50,0.50,'2019-12-31','2019-12-12 14:56:58');
/*!40000 ALTER TABLE `tb_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_coupons_backup`
--

DROP TABLE IF EXISTS `tb_coupons_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_coupons_backup` (
  `idcoupon` int(11) NOT NULL AUTO_INCREMENT,
  `inscope` tinyint(4) DEFAULT NULL,
  `incumulative` tinyint(4) DEFAULT NULL,
  `inapplied` int(8) DEFAULT NULL,
  `nrusage` int(8) DEFAULT NULL,
  `descouponcode` varchar(22) DEFAULT NULL,
  `desdescription` text DEFAULT NULL,
  `dtstart` date DEFAULT NULL,
  `dtexpire` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcoupon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_coupons_backup`
--

LOCK TABLES `tb_coupons_backup` WRITE;
/*!40000 ALTER TABLE `tb_coupons_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_coupons_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_couponsconstraints_backup`
--

DROP TABLE IF EXISTS `tb_couponsconstraints_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_couponsconstraints_backup` (
  `idcouponconstraint` int(11) NOT NULL AUTO_INCREMENT,
  `idcoupon` int(11) NOT NULL,
  `intype` tinyint(4) DEFAULT NULL,
  `nrqtdmin` int(8) DEFAULT NULL,
  `nrqtdmax` int(8) DEFAULT NULL,
  `vlpricemin` decimal(10,2) DEFAULT NULL,
  `vlpricemax` decimal(10,2) DEFAULT NULL,
  `vlfixed` decimal(10,2) DEFAULT NULL,
  `vlpercentage` decimal(10,2) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcouponconstraint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_couponsconstraints_backup`
--

LOCK TABLES `tb_couponsconstraints_backup` WRITE;
/*!40000 ALTER TABLE `tb_couponsconstraints_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_couponsconstraints_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_couponsusers`
--

DROP TABLE IF EXISTS `tb_couponsusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_couponsusers` (
  `idcouponuser` int(11) NOT NULL AUTO_INCREMENT,
  `idcoupon` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `instatus` tinyint(4) DEFAULT 0,
  `desipcoupon` varchar(22) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcouponuser`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_couponsusers`
--

LOCK TABLES `tb_couponsusers` WRITE;
/*!40000 ALTER TABLE `tb_couponsusers` DISABLE KEYS */;
INSERT INTO `tb_couponsusers` VALUES (2,1,4,1,'127.0.0.1','2019-10-12 14:46:30'),(3,1,5,1,'127.0.0.1','2019-10-12 15:28:05'),(4,1,6,1,'127.0.0.1','2019-10-12 15:31:38'),(5,1,7,1,'127.0.0.1','2019-10-12 15:34:43'),(6,1,8,1,'127.0.0.1','2019-10-12 15:37:43'),(7,1,9,1,'127.0.0.1','2019-10-12 15:39:14'),(8,1,10,1,'127.0.0.1','2019-10-12 15:42:45'),(9,1,11,1,'127.0.0.1','2019-10-12 15:48:39'),(10,1,15,1,'127.0.0.1','2019-10-12 17:47:04'),(11,1,17,1,'127.0.0.1','2019-10-12 17:59:04'),(12,1,18,1,'127.0.0.1','2019-10-12 18:34:12'),(13,2,22,1,'127.0.0.1','2019-10-26 21:21:14'),(14,2,23,1,'127.0.0.1','2019-10-26 21:48:19'),(15,2,24,1,'127.0.0.1','2019-10-26 21:57:10'),(24,3,25,1,'127.0.0.1','2019-11-08 19:33:33'),(25,6,25,1,'127.0.0.1','2019-11-08 23:17:40'),(26,7,25,1,'127.0.0.1','2019-11-08 23:22:39'),(27,8,26,1,'127.0.0.1','2019-11-08 23:36:24'),(28,9,27,1,'127.0.0.1','2019-11-08 23:39:45'),(29,10,28,1,'127.0.0.1','2019-11-09 00:00:22'),(30,11,30,1,'127.0.0.1','2019-11-09 19:12:44'),(31,12,32,1,'127.0.0.1','2019-11-09 21:47:45'),(35,15,39,1,'127.0.0.1','2019-11-10 01:04:53'),(36,16,43,1,'127.0.0.1','2019-11-10 14:51:14'),(37,17,44,1,'127.0.0.1','2019-11-11 15:03:18'),(39,18,63,1,'127.0.0.1','2019-12-12 14:57:39'),(40,18,64,1,'127.0.0.1','2019-12-12 17:51:23');
/*!40000 ALTER TABLE `tb_couponsusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_customers`
--

DROP TABLE IF EXISTS `tb_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_customers` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `descustomercode` varchar(22) DEFAULT NULL,
  `desname` varchar(128) DEFAULT NULL,
  `desemail` varchar(128) DEFAULT NULL,
  `nrcountryarea` int(4) DEFAULT NULL,
  `nrddd` int(2) DEFAULT NULL,
  `nrphone` bigint(20) DEFAULT NULL,
  `intypedoc` tinyint(4) DEFAULT NULL,
  `desdocument` varchar(14) DEFAULT NULL,
  `deszipcode` char(8) DEFAULT NULL,
  `desaddress` varchar(128) DEFAULT NULL,
  `desnumber` varchar(16) DEFAULT NULL,
  `descomplement` varchar(32) DEFAULT NULL,
  `desdistrict` varchar(32) DEFAULT NULL,
  `descity` varchar(32) DEFAULT NULL,
  `desstate` varchar(32) DEFAULT NULL,
  `descountry` varchar(32) DEFAULT NULL,
  `descardcode` varchar(22) DEFAULT NULL,
  `desbrand` varchar(8) DEFAULT NULL,
  `infirst6` varchar(6) DEFAULT NULL,
  `inlast4` varchar(4) DEFAULT NULL,
  `dtbirth` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customers`
--

LOCK TABLES `tb_customers` WRITE;
/*!40000 ALTER TABLE `tb_customers` DISABLE KEYS */;
INSERT INTO `tb_customers` VALUES (1,1,'CUS-UZ9YWGL4AY63','Jose Paulo de Carvalho Cambraia','paulowebphp@gmail.com',55,31,984050125,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','CRC-HXQ37TP1D8PH','VISA','411111','1111','1980-02-23','2019-10-12 14:16:39'),(2,2,'CUS-8CZF84GPWQR1','A2marR2 Casar','amarcasar3@gmail.com',55,31,31313131,0,'01224202686','13465400','31313131','3131313','1313131','3131313','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-10-12 14:38:20'),(3,3,'CUS-X5XPWVI14VGY','amar4 Casar','amarcasar4@gmail.com',55,31,31313131,0,'01224202686','13465400','31313','131313','1313131','31313131','Alvar????es','AM','BRA','CRC-B4DUENVJZYTA','VISA','411111','1111','2000-01-01','2019-10-12 14:40:26'),(4,4,'CUS-FDOR3MZMM6G5','Amar5 Casar','amarcasar5@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','313131','3131313','Acrel????ndia','AC','BRA','CRC-5N9F1J1CVLF2','VISA','411111','1111','2000-01-01','2019-10-12 14:47:06'),(5,5,'CUS-G6P3U73MCF1P','amar6 Casar','amarcasar6@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel????ndia','AC','BRA','CRC-IHFU3TKDQVK4','VISA','411111','1111','2000-01-01','2019-10-12 15:28:33'),(6,6,'CUS-M0DH3C749GXX','amar7 casar','amarcasar7@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','13131313','1313131','Acrel????ndia','AC','BRA','CRC-7M3H4M039LGZ','VISA','411111','1111','2000-01-01','2019-10-12 15:31:56'),(7,7,'CUS-9I0BMXU1SEEU','A2marR2 Casar','amarcasar8@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','3131313','Acrel????ndia','AC','BRA','CRC-5AK6HM78QIJD','VISA','411111','1111','2000-01-01','2019-10-12 15:34:56'),(8,8,'CUS-S1J0VQMBVUEM','Amar8 Casar','amarcasar8@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','131313131','31313131','31313131','Acrel????ndia','AC','BRA','CRC-Z3SU1UG8GR19','VISA','411111','1111','2000-01-01','2019-10-12 15:37:54'),(9,9,'CUS-I9RX4WGJJQXM','A2marR2 Casar','amarcasar9@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','1313','Acrel????ndia','AC','BRA','CRC-CLKTNCXTV5E3','VISA','411111','1111','2000-01-01','2019-10-12 15:39:27'),(10,10,'CUS-RBKY89RGLWBH','amar11 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','31313131','31313131','31313131','31313131','Acrel????ndia','AC','BRA','CRC-2HWRG70LOGAF','VISA','411111','1111','2000-01-01','2019-10-12 15:42:58'),(11,10,'CUS-8OSK573KDN2U','amar11 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','31313131','31313131','31313131','31313131','Acrel????ndia','AC','BRA','CRC-Q82OKX5H39QA','VISA','411111','1111','2000-01-01','2019-10-12 15:45:41'),(12,11,'CUS-KGJQIMC5OWLM','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-MXGUVWUFFQH6','VISA','411111','1111','2000-01-01','2019-10-12 15:48:50'),(13,11,'CUS-CURA25GFMP4I','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-51OW88H8YWVL','VISA','411111','1111','2000-01-01','2019-10-12 15:49:30'),(14,11,'CUS-VIJQ1SUJORCZ','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-GIM08XN1BDWS','VISA','411111','1111','2000-01-01','2019-10-12 15:49:49'),(15,11,'CUS-G9F3FNUY8I8G','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-DVNIT0AVKNLK','VISA','411111','1111','2000-01-01','2019-10-12 15:50:36'),(16,11,'CUS-RK5D5F66YRZT','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-984E9T8D9VM5','VISA','411111','1111','2000-01-01','2019-10-12 15:51:46'),(17,11,'CUS-27FAUZAOBIK7','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-FRE8XGKUXVG7','VISA','411111','1111','2000-01-01','2019-10-12 15:52:55'),(18,11,'CUS-F1SILZMTP74Z','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-LKCRS7S1DK0M','VISA','411111','1111','2000-01-01','2019-10-12 15:53:13'),(19,11,'CUS-6Q0YAD67EZIL','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-LUS0131I1HD3','VISA','411111','1111','2000-01-01','2019-10-12 15:53:44'),(20,11,'CUS-FMHGZVH4MEUW','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-K09UOON4X7MB','VISA','411111','1111','2000-01-01','2019-10-12 15:54:13'),(21,11,'CUS-V645WLT2XRH4','A2marR2 Casar','amarcasar11@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-F56TVDC3M2WG','VISA','411111','1111','2000-01-01','2019-10-12 17:27:20'),(22,15,'CUS-448N9NA70GHQ','A2marR2 Casar','amarcasar13@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','3131313','131313','313131','Acrel????ndia','AC','BRA','CRC-LWIOYZ0Z02HP','VISA','411111','1111','2000-01-01','2019-10-12 17:47:36'),(23,16,'CUS-RWI5IOVY3P2G','A2marR2 Casar','amarcasar14@gmail.com',55,13,31313131,0,'01224202686','13465400','313131','3131313','13131','3131313','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-10-12 17:55:27'),(24,17,'CUS-OCP2BPJ3H80S','amar15 casar','amarcasar15@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131','31313','Acrel????ndia','AC','BRA','CRC-Q6GPB9KKQ0Q6','VISA','411111','1111','2000-01-01','2019-10-12 17:59:42'),(25,18,'CUS-0KIPP8EO729R','Amar16 Casar','amarcasar16@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','313131','Acrel????ndia','AC','BRA','CRC-0JK9R1Z4RFIB','VISA','411111','1111','2000-01-01','2019-10-12 18:34:52'),(26,22,'CUS-QWY2UWE6KDGW','Amar20 Casar','amarcasar20@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel????ndia','AC','BRA','CRC-V26OF7OG0E8R','VISA','411111','1111','2000-01-01','2019-10-26 21:22:25'),(27,23,'CUS-XRW9W7CRPFWY','Amar2 Casar','amarcasar@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','31313131','Bras????lia','DF','BRA','CRC-6NBTEG15JJDG','VISA','411111','1111','2000-01-01','2019-10-26 21:48:52'),(28,24,'CUS-5RDSCFBC8BYG','Jose Paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','1313131','313131','3131313','131313','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-10-26 21:57:28'),(29,25,'','Jose Paulo','amarcasar2@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','3131313','13313131','313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-08 23:15:29'),(30,25,'','Jose Paulo','amarcasar2@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','3131313','13313131','313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-08 23:17:45'),(31,25,'','Jose Paulo','amarcasar2@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','3131313','13313131','313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-08 23:22:41'),(32,26,'','A2marR2 Casar','amarcasar3@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-08 23:37:10'),(33,27,'','A2marR2 Casar','amarcasar4@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','313131','313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-08 23:42:21'),(34,27,'','A2marR2 Casar','amarcasar4@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','313131','313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-08 23:42:50'),(35,27,'','A2marR2 Casar','amarcasar4@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','313131','313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-08 23:47:52'),(36,28,'','A2marR2 Casar','amarcasar5@gmail.com',55,31,31313131,0,'01224202686','13465400','3131313','1313131','31313131','3131313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-09 00:00:24'),(37,29,'CUS-GHDPQE4DFF82','A2marR2 Casar','amarcasar5@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','3131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-11-09 03:21:16'),(38,30,'','A2marR2 Casar','amarcasar5@gmail.com',55,11,31313131,0,'01224202686','13465400','313131','313131313','13131313','13131313','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-09 19:12:46'),(39,32,'CUS-4XPN1A933M5J','A2marR2 Casar','amarcasar7@gmail.com',55,31,31313131,0,'01224202686','13465400','131313','131313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-11-09 21:38:10'),(40,32,'CUS-RET3L3QUNUHY','A2marR2 Casar','amarcasar7@gmail.com',55,31,31313131,0,'01224202686','13465400','131313','131313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-11-09 21:40:25'),(41,32,'','A2marR2 Casar','amarcasar7@gmail.com',55,31,31313131,0,'01224202686','13465400','131313','131313','1313131','313131','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-09 21:53:07'),(42,33,'CUS-EMTWCXDSANPI','A2marR2 Casar','amarcasar8@gmail.com',55,31,31313131,0,'01224202686','13465400','31313','131313','131313','1313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-11-09 21:59:30'),(43,34,'CUS-HYN098NHQKZZ','A2marR2 Casar','amarcasar9@gmail.com',55,31,31313131,0,'01224202686','13465400','31313131311','313131','3131313','31313','Acrel????ndia','AC','BRA','CRC-9FTZHNXXLVYU','VISA','411111','1111','2000-01-01','2019-11-09 22:04:55'),(44,35,'CUS-ADULGSSI6Z2K','A2marR2 Casar','amarcasar10@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','31313131','Acrel????ndia','AC','BRA','CRC-PVANBH8I0BBR','VISA','411111','1111','2000-01-01','2019-11-09 22:06:53'),(45,39,'','Amar3 Casar','amar3@amarcasar.com',55,31,31313131,0,'01224202686','13465400','31313','313131','313131','31313','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-10 01:06:18'),(46,39,'','Amar3 Casar','amar3@amarcasar.com',55,31,31313131,0,'01224202686','13465400','31313','313131','313131','31313','Acrel????ndia','AC','BRA','','','0','0','2000-01-01','2019-11-10 01:06:51'),(47,40,'CUS-9V4T77COE9KG','Amar4 Casar','amar4@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','3131313','Acrel????ndia','AC','BRA','CRC-Q21WM9FKQN8X','VISA','411111','1111','2000-01-01','2019-11-10 01:10:38'),(48,41,'CUS-JVQL44QH6FMO','Amar5 Casar','amar5@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-11-10 01:12:18'),(49,42,'CUS-FPIEFM0QDN4V','Amar6 Casar','amar6@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','1313131','Acrel????ndia','AC','BRA','CRC-Y6WVO4JPE3IV','VISA','411111','1111','2000-01-01','2019-11-10 01:13:50'),(50,43,'CUS-8G3KLZ0QD2AO','Amar7 Casar','amar7@amarcasar.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','3131313','131313','Acrel????ndia','AC','BRA','CRC-H2RGZW6J171L','VISA','411111','1111','2000-01-01','2019-11-10 14:53:54'),(51,44,'CUS-RW42VCF54H49','Amar8 Kasar','amar8@amarcasar.com',55,31,31313131,0,'01224202686','13465400','31313','13131','313131','3131313','Acrel????ndia','AC','BRA','CRC-X8OCY7ZKX70L','VISA','411111','1111','2000-01-01','2019-11-11 15:03:44'),(52,44,'CUS-N79IKV95MOHM','jOse Paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','313131','313131313','1313131','Acau????','PI','Brasil','CRC-F2VHQ7SKW91B','VISA','411111','1111','2000-01-01','2019-11-11 15:47:11'),(53,45,'CUS-0NRZZ7MO7N45','Bem1 Casei','jose1@bemcasei.com.br',55,13,31313131,0,'01224202686','13465400','313131','3131313','1313131','313131','????gua Branca','AL','BRA','CRC-QXJN6N7ILOO8','VISA','411111','1111','2000-01-01','2019-11-12 03:48:34'),(54,46,'CUS-C5KOL56TD6I6','Bem2 Casei','bem2@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','313131','Acrel????ndia','AC','BRA','CRC-NCTMK6T0P4HV','VISA','411111','1111','2000-01-01','2019-11-12 18:20:57'),(55,46,'CUS-E8S16N08OREM','Bem2 Casei','bem2@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','313131','Acrel????ndia','AC','BRA','CRC-O2CVTXNPFLEF','VISA','411111','1111','2000-01-01','2019-11-12 18:24:39'),(56,46,'CUS-0KWORJAO9KHA','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','30160037','131313','1313131','3131313','1313131','Abadia dos Dourados','MG','Brasil','CRC-TH35163BCOI9','VISA','411111','1111','2000-01-01','2019-11-12 18:33:23'),(57,46,'CUS-XM6DKD0DZ3QO','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','30160037','131313','1313131','3131313','1313131','Alvar????es','AM','Brasil','CRC-840UMM0EBGHZ','VISA','411111','1111','2000-01-01','2019-11-12 18:34:55'),(58,46,'CUS-6GYARQR6G6YP','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-A718ECZMJ7NO','VISA','411111','1111','2000-01-01','2019-11-12 18:48:54'),(59,46,'CUS-YNYIQTU6T7F9','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-EIKEYYMSGKW8','VISA','411111','1111','2000-01-01','2019-11-12 18:49:43'),(60,46,'CUS-097EFND5CCQE','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-YBPGX82N1JXW','VISA','411111','1111','2000-01-01','2019-11-12 18:50:25'),(61,46,'CUS-SNJ9QL4MRXIP','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-EBNP2P7KE60F','VISA','411111','1111','2000-01-01','2019-11-12 18:51:10'),(62,46,'CUS-3DECRCL7V8IK','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-43KHFWWF8DAS','VISA','411111','1111','2000-01-01','2019-11-12 18:52:15'),(63,46,'CUS-SOQO9EKNJCEI','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-L8BDMSXM6V70','VISA','411111','1111','2000-01-01','2019-11-12 18:53:53'),(64,46,'CUS-DMF18OT6NPQN','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-J8705FT4S314','VISA','411111','1111','2000-01-01','2019-11-12 18:55:04'),(65,46,'CUS-SNNP6NSLCJY7','jose paulo','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','Brasil','CRC-W73U6WWIJU29','VISA','411111','1111','2000-01-01','2019-11-12 19:03:05'),(66,48,'CUS-2XS46MZ241Y8','Bem4 Casei','bem4@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313','3131313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-11-24 18:58:26'),(67,48,'CUS-YC66D0U6SAKJ','Bem4 Casei','bem4@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313','3131313131','Acrel????ndia','AC','BRA','CRC-FN18CXJN0ZR2','VISA','411111','1111','2000-01-01','2019-11-24 19:02:20'),(68,49,'CUS-SMNQQTHF937Y','Jose Cambraia','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','13465400','313131','31313131','313131','31313131','Acrel????ndia','AC','BRA','CRC-LGX06YUG9P6D','VISA','411111','1111','2000-01-01','2019-11-24 20:12:17'),(69,49,'CUS-BDOKGG7CVIV0','Paulo Roberto','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','313131313','31313131','','3131313','Acrel????ndia','AC','Brasil','CRC-96IVKHLLN0M4','VISA','411111','1111','2000-01-01','2019-12-10 23:31:44'),(70,49,'CUS-3IPKNR3W682D','Paulo Roberto','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','313131313','31313131','','3131313','Acrel????ndia','AC','Brasil','CRC-MDR3D2XXI9J8','VISA','411111','1111','2000-01-01','2019-12-10 23:34:22'),(71,49,'CUS-OCVS8JFHYSQ7','Jose Paulo','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','3131313131313','31313131','','13131313','Abadia dos Dourados','MG','Brasil','CRC-AENKT2UU2VNB','VISA','411111','1111','2000-01-01','2019-12-10 23:39:18'),(72,49,'CUS-QEA7XSE40D7V','jose pc','jpccambraia@gmail.com',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','Brasil','CRC-0PZRZKVNZHUS','VISA','411111','1111','2000-01-01','2019-12-11 02:28:18'),(73,49,'CUS-U0RKJWV49213','jose pc','jpccambraia@gmail.com',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','Brasil','CRC-XTHT0TI07R5M','VISA','411111','1111','2000-01-01','2019-12-11 02:32:33'),(74,49,'CUS-KMAT3M26RM21','jose pc','jpccambraia@gmail.com',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','Brasil','CRC-4HZIUGY30XF7','VISA','411111','1111','2000-01-01','2019-12-11 02:40:18'),(75,49,'CUS-I00ZZE1LXHAO','jose pc','jpccambraia@gmail.com',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','Brasil','CRC-XOEJU24EMZPA','VISA','411111','1111','2000-01-01','2019-12-11 02:40:47'),(76,49,'CUS-T81IQGNJXDOP','jose pc','jpccambraia@gmail.com',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','Brasil','CRC-ZPWFVIOYJGYJ','VISA','411111','1111','2000-01-01','2019-12-11 02:43:41'),(77,49,'CUS-M1T7ZU66FLD9','jose pc','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','3131313','13131313','','31313131','Abre Campo','MG','Brasil','CRC-5EJIA09GE197','VISA','411111','1111','2000-01-01','2019-12-11 18:08:06'),(78,49,'CUS-N5OWQN1TXK8X','Jose Pc Z??-lio','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','3131313131','3133131313','','13131313131','A????ucena','MG','Brasil','CRC-O00RXAQNRVIZ','VISA','411111','1111','2000-01-01','2019-12-11 19:10:25'),(79,49,'CUS-0MYD9MEGECQO','Jos?? Pc-z?? Iho','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','313131','31313131','','31313136','Abadia dos Dourados','MG','Brasil','CRC-5VKQCQW4361S','VISA','411111','1111','2000-01-01','2019-12-11 19:12:20'),(80,49,'CUS-U3P0MYW360NB','Jos?? Paulo','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','313131','3131313','131313','1313131','Abadia dos Dourados','MG','Brasil','CRC-W894CZ7WP80W','VISA','411111','1111','2000-01-01','2019-12-12 01:44:12'),(81,62,'CUS-5PF43LQ0L226','Jos?? Paulo De C??rvalho Cambraia','bem9@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','31313131','Acrel????ndia','AC','BRA','CRC-38DZA7S2Z0HC','VISA','411111','1111','2000-01-01','2019-12-12 14:44:01'),(82,63,'CUS-EAIC190PWY5I','Jos?? Paulo De C??rvalho Cambraia','bem10@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Espirito Santo','313131','espiriyu','espiriiiiiiiiii','Acrel????ndia','AC','BRA','CRC-G9P0C79XV1Y1','VISA','411111','1111','2000-01-01','2019-12-12 15:04:05'),(83,64,'CUS-D67A8YHG2A6O','Jos?? Paulo De C??rvalho Cambraia','bem11@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','espiriiiro','2','espiriiiro3','espiriiiro4','Acrel????ndia','AC','BRA','CRC-1XYA4A32B7XI','VISA','411111','1111','2000-01-01','2019-12-12 17:51:47'),(84,64,'CUS-49GWGYGE14VG','Jos?? Paulo De C??rvalho Cambraia','bem11@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','espiriiiro','2','espiriiiro3','espiriiiro4','Acrel????ndia','AC','BRA','CRC-NWPLODGOTJ1H','VISA','411111','1111','2000-01-01','2019-12-12 18:02:15'),(85,64,'CUS-4UG5EPBC2PSR','Jos?? Paulo De C??rvalho Cambraia','bem11@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','espiriiiro','2','espiriiiro3','espiriiiro4','Acrel????ndia','AC','BRA','CRC-YQWCMXX2DRDJ','VISA','411111','1111','2000-01-01','2019-12-12 18:10:42'),(86,65,'CUS-S8ZGNAUY4XWA','Jos?? Paulo De C??rvalho Cambraia','bem12@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','esapiiirioo','2','esapiiirioo3','esapiiirioo4','Abreu e Lima','PE','BRA','CRC-6BJ0Q6GMH166','VISA','411111','1111','2000-01-01','2019-12-12 18:37:20'),(87,65,'CUS-HY9LADR6O7CH','Jos?? Paulo De C??rvalho Cambraia','bem12@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','esapiiirioo','2','esapiiirioo3','esapiiirioo4','Abreu e Lima','PE','BRA','CRC-FE89A4BXZPTA','VISA','411111','1111','2000-01-01','2019-12-12 18:43:51'),(88,65,'CUS-KMGQ0JJX7VYW','Jos?? Paulo De C??rvalho Cambraia','bem12@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','esapiiirioo','2','esapiiirioo3','esapiiirioo4','Abreu e Lima','PE','BRA','CRC-OLQRC4JP4RDM','VISA','411111','1111','2000-01-01','2019-12-12 20:04:33'),(89,66,'CUS-X0KBDOYQ6Z1F','Jos?? Paulo De C??rvalho Cambraia','bem13@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','espiiiritoooo','2','espiiiritoooo3','espiiiritoooo4','Alvar????es','AM','BRA','CRC-CGLH3WWZONCW','VISA','411111','1111','2000-01-01','2019-12-15 14:47:52'),(90,66,'CUS-UL0S5SMLZPK2','Jose Pc','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','13464500','Espirito1','12','Espirito13','Espirito14','Abati????','PR','Brasil','CRC-CKITRPCYN64V','VISA','411111','1111','2000-01-01','2019-12-15 20:46:50'),(91,66,'CUS-JJ4QXRHQRSL0','Jose Pc','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','31313','1313131','313131','313131','Abadia dos Dourados','MG','Brasil','CRC-97OLJA5URZ98','VISA','411111','1111','2000-01-01','2019-12-15 21:33:21'),(92,67,'CUS-LK6S2NU059NK','Jos?? Paulo De C??rvalho Cambraia','bem14@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','313131','Acrel????ndia','AC','BRA','CRC-38DJ9V2FPH8T','VISA','411111','1111','2000-01-01','2019-12-15 21:35:16'),(93,67,'CUS-IH8C5HLVRHZS','Jose Pc','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','3131','31','313131','3131','Abadia dos Dourados','MG','Brasil','CRC-3TS1KNG9LVOO','VISA','411111','1111','2000-01-01','2019-12-15 21:36:18'),(94,68,'CUS-NQ5Q13V7N8GF','Jos?? Paulo De C??rvalho Cambrai??','bem15@bemcasei.com.br',55,32,31313131,0,'01224202686','13465400','3313131313','3131','31313131','313131','Acrel????ndia','AC','BRA','CRC-4DQ30N73OWZQ','VISA','411111','1111','2000-01-01','2019-12-15 23:14:05'),(95,69,'CUS-BKCVFPGXO4OQ','Jos?? Paulo De C??rvalho Cambraia','bem16@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','31313','313131','313131','313131','Alvar????es','AM','BRA','CRC-OR60DXZCC3UQ','VISA','411111','1111','2000-01-01','2019-12-16 12:50:56'),(96,70,'CUS-H5JVA2CIJA5B','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 12:53:23'),(97,70,'CUS-YSG4ZV441OAD','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 12:53:46'),(98,70,'CUS-I5XW1K1X71HC','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA','CRC-A7JZBHHP6PIH','VISA','411111','1111','2000-01-01','2019-12-16 12:54:13'),(99,70,'CUS-7V11E5VPUS3P','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:10:36'),(100,70,'CUS-BWK681T4DFBV','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:12:19'),(101,70,'CUS-D1B0TPY4GGP9','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:13:21'),(102,70,'CUS-I7JC7QQVPVAJ','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:13:43'),(103,70,'CUS-36H88ROIOVSJ','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:14:06'),(104,70,'CUS-4SI99GN27XK0','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:14:23'),(105,70,'CUS-T4P34WZER8DG','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:14:43'),(106,70,'CUS-UOSRFV2AZV37','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:14:53'),(107,70,'CUS-81T4BCB001BA','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:15:27'),(108,70,'CUS-KR1HB7LA2IO8','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:16:57'),(109,70,'CUS-AGYH3VHCG9BQ','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:17:21'),(110,70,'CUS-PBESAZI6XDU3','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:18:14'),(111,70,'CUS-SZY8YT8OZJBL','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:19:12'),(112,70,'CUS-HXICTSRK6VI7','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:21:04'),(113,70,'CUS-YB2S80C0USVT','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:21:37'),(114,70,'CUS-OCX5AO3P3BSX','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA','CRC-6VYPAKXHR1DO','VISA','411111','1111','2000-01-01','2019-12-16 13:28:42'),(115,70,'CUS-72YC2LCU1DXS','Jos?? Paulo De C??rvalho Cambraia','bem17@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 13:32:08'),(116,71,'CUS-F9JWCE60L2XB','Jos?? Paulo De C??rvalho Cambraia','bem18@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Espirito Santo','1757','ap 401','Lourdes','Acrel??ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 15:20:50'),(117,71,'CUS-WYUA343EPZ35','Jos?? Paulo De C??rvalho Cambraia','bem18@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 15:22:00'),(118,71,'CUS-2XCPEJTV3KCU','Jos?? Paulo De C??rvalho Cambraia','bem18@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Espirito Santo','1757','ap 401','Lourdes','Acrel??ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 15:23:38'),(119,71,'CUS-L28GKI1BV1R2','Jos?? Paulo De C??rvalho Cambraia','bem18@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Espirito Santo','1757','ap 401','Lourdes','Acrel??ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 15:24:16'),(120,71,'CUS-F0B5H94BFCJB','Jos?? Paulo De C??rvalho Cambraia','bem18@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Espirito Santo','1757','ap 401','Lourdes','Acrel??ndia','AC','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 15:25:12'),(121,72,'CUS-GJ40MQ4293DY','Jos?? Paulo De C??rvalho Cambraia','bem19@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 15:26:43'),(122,73,'CUS-ICD3HB8EJ6SE','Jos?? Paulo De Carvalho C??mbraia','bem20@bemcasei.com.br',55,31,31313131,0,'01224202686','13465400','Rua Major Rehder','401','','Vila Rehder','Americana','SP','BRA','CRC-3ZMPVK8NASFF','VISA','411111','1111','2000-01-01','2019-12-16 17:16:18'),(123,73,'CUS-1EF8SDVNN7CZ','Jose Pc','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','17457','','Lourdes','Belo Horizonte','MG','Brasil','CRC-ZFA0WTAFOZE8','VISA','411111','1111','2000-01-01','2019-12-16 17:20:55'),(124,74,'CUS-CQRWYI5AQ997','Amarr Casar','bem21@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2019-12-16 17:24:26'),(125,74,'CUS-3HY4C7VO05CP','Jose Pc','jpccambraia@gmail.com',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','17457','','Lourdes','Belo Horizonte','MG','Brasil','CRC-LY93EDA7WD7F','VISA','411111','1111','2000-01-01','2019-12-16 17:27:19'),(126,77,'CUS-LRJ3DKE62OGT','Jos?? Paulo','bem24@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','CRC-DJKNR88KEVF1','VISA','411111','1111','2000-01-01','2020-02-12 02:54:27'),(127,79,'CUS-K7V3BK0787BA','Jos?? Paulo Cambraia','jpccambraia2@gmail.com',55,31,32229822,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA',NULL,NULL,NULL,NULL,'2000-01-01','2020-08-04 19:15:32'),(128,80,'CUS-AM2UHKIRC3PA','Jos?? Paulo','bem2020@bemcasei.com.br',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','CRC-RWCCCHLTOKVA','VISA','411111','1111','2000-01-01','2020-08-04 23:07:10'),(129,81,'CUS-HGMBB444WJ0M','Jos?? Paulo Carvalho','jpccambraia2@gmail.com',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','BRA','CRC-HVW8J1GH1QPF','VISA','411111','1111','2000-01-01','2020-08-05 23:24:50');
/*!40000 ALTER TABLE `tb_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_customstyle`
--

DROP TABLE IF EXISTS `tb_customstyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_customstyle` (
  `idcustomstyle` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idtemplate` int(11) DEFAULT 1,
  `desbanner` varchar(256) DEFAULT NULL,
  `desbannerextension` varchar(4) DEFAULT NULL,
  `desbgcolorbanner` varchar(10) DEFAULT NULL,
  `desbgcolorfooter` varchar(10) DEFAULT NULL,
  `descolorfooter` varchar(10) DEFAULT NULL,
  `descolorfooterhover` varchar(10) DEFAULT NULL,
  `descolor1` varchar(10) DEFAULT NULL,
  `descolor2` varchar(10) DEFAULT NULL,
  `descolortexthover` varchar(10) DEFAULT NULL,
  `descolordate` varchar(10) DEFAULT NULL,
  `desfontfamilydate` varchar(64) DEFAULT NULL,
  `desfontfamily1` varchar(64) DEFAULT NULL,
  `desfontfamily2` varchar(64) DEFAULT NULL,
  `inbgcolorgradient` tinyint(4) DEFAULT NULL,
  `inbgcolorbutton` tinyint(4) DEFAULT NULL,
  `inroundborderimage` tinyint(4) DEFAULT NULL,
  `inbordersocial` tinyint(4) DEFAULT NULL,
  `desborderimagesize` varchar(4) DEFAULT NULL,
  `desborderradiusbutton` varchar(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcustomstyle`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customstyle`
--

LOCK TABLES `tb_customstyle` WRITE;
/*!40000 ALTER TABLE `tb_customstyle` DISABLE KEYS */;
INSERT INTO `tb_customstyle` VALUES (1,1,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 14:15:04'),(2,2,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 14:37:35'),(3,3,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 14:39:28'),(4,4,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 14:41:24'),(5,5,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 15:27:31'),(6,6,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 15:31:03'),(7,7,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 15:33:45'),(8,8,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 15:37:11'),(9,9,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 15:38:51'),(10,10,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 15:42:12'),(11,11,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 15:47:30'),(12,12,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 17:30:52'),(13,13,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 17:32:44'),(14,14,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 17:34:12'),(15,15,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 17:46:13'),(16,16,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 17:54:32'),(17,17,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 17:58:38'),(18,18,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-12 18:01:53'),(19,19,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-23 19:59:29'),(20,20,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-23 20:00:20'),(21,21,4,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-26 20:51:06'),(22,22,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-26 21:12:22'),(23,23,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-26 21:46:51'),(24,24,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-10-26 21:56:26'),(25,25,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-08 18:09:53'),(26,26,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-08 23:35:51'),(27,27,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-08 23:37:51'),(28,28,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-08 23:49:51'),(29,29,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 02:12:46'),(30,30,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 19:08:32'),(31,31,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 21:10:09'),(32,32,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 21:10:41'),(33,33,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 21:57:50'),(34,34,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 22:04:06'),(35,35,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 22:05:51'),(36,36,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 22:10:24'),(37,37,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 22:17:21'),(38,38,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 22:24:19'),(39,39,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-09 22:28:26'),(40,40,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-10 01:09:37'),(41,41,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-10 01:11:35'),(42,42,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-10 01:13:00'),(43,43,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-10 14:40:49'),(44,44,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-11 14:29:23'),(45,45,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-12 03:47:36'),(46,46,1,'0.jpg','jpg','DD716F','DD716F','FFFFFF','F7D9E1','FFFFFF','DD716F','DD716F','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-12 18:19:25'),(47,47,1,'47.jpg','jpg','03A9F4','03A9F4','FFFFFF','c7e8f7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-19 16:42:44'),(48,48,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-24 18:55:16'),(49,49,1,'49.jpg','jpg','D24203','D24203','FFFFFF','F7D9E1','FFFFFF','D24203','D24203','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-11-24 20:10:01'),(50,50,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 13:56:52'),(51,51,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:21:17'),(52,52,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:26:39'),(53,53,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:28:10'),(54,54,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:30:46'),(55,55,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:31:00'),(56,56,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:32:08'),(57,57,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:32:34'),(58,58,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:32:48'),(59,59,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:33:38'),(60,60,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:33:54'),(61,61,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:34:06'),(62,62,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:42:00'),(63,63,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 14:54:22'),(64,64,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 17:32:56'),(65,65,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-12 18:36:10'),(66,66,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-15 14:25:07'),(67,67,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-15 21:34:40'),(68,68,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-15 22:55:27'),(69,69,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 12:48:00'),(70,70,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 12:52:45'),(71,71,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 15:17:46'),(72,72,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 15:25:55'),(73,73,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 17:15:20'),(74,74,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 17:23:33'),(75,75,2,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 17:29:09'),(76,76,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2019-12-16 19:36:28'),(77,77,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2020-02-12 02:50:40'),(78,78,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2020-03-31 05:12:36'),(79,79,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2020-08-04 19:08:08'),(80,80,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2020-08-04 23:06:01'),(81,81,1,'0.jpg','jpg','03A9F4','03A9F4','FFFFFF','C7E8F7','FFFFFF','03A9F4','03A9F4','FFFFFF','Norican','Norican','OpenSans',0,0,1,1,'12','20','2020-08-05 23:23:21');
/*!40000 ALTER TABLE `tb_customstyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_discounts`
--

DROP TABLE IF EXISTS `tb_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_discounts` (
  `iddiscount` int(11) NOT NULL AUTO_INCREMENT,
  `inscope` tinyint(11) DEFAULT NULL,
  `instatus` tinyint(4) DEFAULT NULL,
  `intype` tinyint(4) DEFAULT NULL,
  `vlpercentage` decimal(3,2) DEFAULT NULL,
  `vlinverse` decimal(3,2) DEFAULT NULL,
  `vlfixed` decimal(10,2) DEFAULT NULL,
  `dtexpire` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`iddiscount`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_discounts`
--

LOCK TABLES `tb_discounts` WRITE;
/*!40000 ALTER TABLE `tb_discounts` DISABLE KEYS */;
INSERT INTO `tb_discounts` VALUES (1,0,1,0,0.27,0.73,100.00,'2019-10-09','2019-09-24 19:09:22');
/*!40000 ALTER TABLE `tb_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fees`
--

DROP TABLE IF EXISTS `tb_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fees` (
  `idfee` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idpayment` int(11) NOT NULL,
  `vlmktpercentage` decimal(8,4) DEFAULT NULL,
  `vlmktfixed` decimal(10,2) DEFAULT NULL,
  `vlpropercentage` decimal(8,4) DEFAULT NULL,
  `vlprofixed` decimal(10,2) DEFAULT NULL,
  `vlantecipation` decimal(8,4) DEFAULT NULL,
  `nrantecipationperiod` int(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idfee`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fees`
--

LOCK TABLES `tb_fees` WRITE;
/*!40000 ALTER TABLE `tb_fees` DISABLE KEYS */;
INSERT INTO `tb_fees` VALUES (1,1,1,NULL,NULL,0.0429,0.69,0.0000,14,'2019-10-12 14:16:48'),(2,2,2,NULL,NULL,NULL,3.49,0.0000,2,'2019-10-12 14:38:25'),(3,3,3,NULL,NULL,0.0429,0.69,0.0000,14,'2019-10-12 14:40:30'),(4,4,4,NULL,NULL,0.0429,0.69,0.0547,14,'2019-10-12 14:47:11'),(5,5,5,NULL,NULL,0.0429,0.69,0.0000,14,'2019-10-12 15:28:39'),(6,6,6,NULL,NULL,0.0429,0.69,0.0000,14,'2019-10-12 15:32:01'),(7,7,7,NULL,NULL,0.0429,0.69,0.0547,14,'2019-10-12 15:35:02'),(8,8,8,NULL,NULL,0.0429,0.69,0.0000,14,'2019-10-12 15:37:59'),(9,9,9,NULL,NULL,0.0429,0.69,0.0547,14,'2019-10-12 15:39:32'),(10,10,10,NULL,NULL,0.0429,0.69,0.0547,14,'2019-10-12 15:45:45'),(11,11,11,NULL,NULL,0.0429,0.69,0.0547,14,'2019-10-12 17:27:25'),(12,15,12,NULL,NULL,0.0429,0.69,0.0000,14,'2019-10-12 17:47:41'),(13,16,13,NULL,NULL,NULL,3.49,0.0000,2,'2019-10-12 17:55:30'),(14,17,14,NULL,NULL,0.0429,0.69,0.0547,14,'2019-10-12 17:59:47'),(15,18,15,NULL,NULL,0.0429,0.69,0.0547,14,'2019-10-12 18:34:57'),(16,22,16,NULL,NULL,0.0429,0.69,0.0000,14,'2019-10-26 21:22:29'),(17,23,17,NULL,NULL,0.0429,0.69,0.0412,14,'2019-10-26 21:48:55'),(18,24,18,NULL,NULL,NULL,3.49,0.0000,2,'2019-10-26 21:57:32'),(19,25,19,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-08 23:15:29'),(20,25,20,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-08 23:17:45'),(21,25,21,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-08 23:22:41'),(22,26,22,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-08 23:37:10'),(23,27,23,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-08 23:47:52'),(24,28,24,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-09 00:00:24'),(25,29,25,NULL,NULL,NULL,3.49,0.0000,2,'2019-11-09 03:21:24'),(26,30,26,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-09 19:12:46'),(27,32,27,NULL,NULL,NULL,3.49,0.0000,2,'2019-11-09 21:38:25'),(28,32,28,NULL,NULL,NULL,3.49,0.0000,2,'2019-11-09 21:40:37'),(29,32,29,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-09 21:53:07'),(30,33,30,NULL,NULL,NULL,3.49,0.0000,2,'2019-11-09 21:59:35'),(31,34,31,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-09 22:05:01'),(32,35,32,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-09 22:06:59'),(33,39,33,NULL,NULL,NULL,NULL,0.0000,NULL,'2019-11-10 01:06:51'),(34,40,34,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-10 01:10:42'),(35,41,35,NULL,NULL,NULL,3.49,0.0000,2,'2019-11-10 01:12:24'),(36,42,36,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-10 01:13:56'),(37,43,37,NULL,NULL,0.0429,0.69,0.0412,14,'2019-11-10 14:54:00'),(38,44,38,NULL,NULL,0.0429,0.69,0.0547,14,'2019-11-11 15:03:53'),(39,44,39,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-11-11 15:47:19'),(40,45,40,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-12 03:48:41'),(41,46,41,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-12 18:24:46'),(42,46,42,0.0070,0.69,0.0429,0.69,0.0547,14,'2019-11-12 18:33:29'),(43,46,43,0.0070,0.69,0.0429,0.69,0.0547,14,'2019-11-12 18:35:06'),(44,46,45,0.0070,0.69,0.0429,0.69,0.0412,14,'2019-11-12 18:51:16'),(45,46,46,0.0070,0.69,0.0429,0.69,0.0412,14,'2019-11-12 18:52:22'),(46,46,47,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-11-12 18:54:02'),(47,46,48,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-11-12 18:55:10'),(48,46,49,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-11-12 19:03:16'),(49,48,50,NULL,NULL,NULL,3.49,0.0000,2,'2019-11-24 18:58:33'),(50,48,51,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-24 19:02:27'),(51,49,52,NULL,NULL,0.0429,0.69,0.0000,14,'2019-11-24 20:12:23'),(52,49,53,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-10 23:31:59'),(53,49,54,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-10 23:34:30'),(54,49,55,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-10 23:39:28'),(55,49,56,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-11 02:32:41'),(56,49,57,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-11 02:40:23'),(57,49,58,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-11 02:40:53'),(58,49,59,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-11 02:43:50'),(59,49,60,0.0070,0.69,0.0429,0.69,0.0412,14,'2019-12-11 18:08:15'),(60,49,61,0.0070,0.69,0.0429,0.69,0.0547,14,'2019-12-11 19:10:28'),(61,49,62,0.0070,0.69,0.0429,0.69,0.0547,14,'2019-12-11 19:12:27'),(62,49,63,0.0070,0.69,0.0429,0.69,0.0547,14,'2019-12-12 01:44:18'),(63,62,64,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-12 14:44:08'),(64,63,65,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-12 15:04:13'),(65,64,66,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-12 17:51:53'),(66,64,67,NULL,NULL,0.0429,0.69,0.0412,14,'2019-12-12 18:02:21'),(67,64,68,NULL,NULL,0.0429,0.69,0.0547,14,'2019-12-12 18:10:45'),(68,65,69,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-12 18:37:26'),(69,65,70,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-12 18:43:57'),(70,65,71,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-12 20:04:40'),(71,66,72,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-15 14:48:00'),(72,66,73,0.0070,0.69,0.0429,0.69,0.0412,14,'2019-12-15 20:47:00'),(73,66,74,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-15 21:33:27'),(74,67,75,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-15 21:35:20'),(75,67,76,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-15 21:36:24'),(76,68,77,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-15 23:14:13'),(77,69,78,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-16 12:51:00'),(78,70,79,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-16 12:54:22'),(79,70,80,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-16 13:28:48'),(80,70,81,NULL,NULL,NULL,3.49,NULL,2,'2019-12-16 13:32:19'),(81,72,82,NULL,NULL,NULL,3.49,0.0000,2,'2019-12-16 15:26:51'),(82,73,83,NULL,NULL,0.0429,0.69,0.0000,14,'2019-12-16 17:16:25'),(83,73,84,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-16 17:20:59'),(84,74,85,NULL,NULL,NULL,3.49,0.0000,2,'2019-12-16 17:24:33'),(85,74,86,0.0070,0.69,0.0429,0.69,0.0000,14,'2019-12-16 17:27:26'),(86,77,87,NULL,NULL,0.0429,0.69,0.0000,14,'2020-02-12 02:54:31'),(87,79,88,NULL,NULL,NULL,3.49,0.0000,2,'2020-08-04 19:15:37'),(88,80,89,NULL,NULL,0.0429,0.69,0.0547,14,'2020-08-04 23:07:16'),(89,81,90,NULL,NULL,0.0429,0.69,0.0412,14,'2020-08-05 23:24:55');
/*!40000 ALTER TABLE `tb_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_initialpages`
--

DROP TABLE IF EXISTS `tb_initialpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_initialpages` (
  `idinitialpage` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `inparty` tinyint(4) DEFAULT NULL,
  `inbestfriend` tinyint(4) DEFAULT NULL,
  `inalbum` tinyint(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idinitialpage`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_initialpages`
--

LOCK TABLES `tb_initialpages` WRITE;
/*!40000 ALTER TABLE `tb_initialpages` DISABLE KEYS */;
INSERT INTO `tb_initialpages` VALUES (1,1,0,0,0,'2019-10-12 14:15:06'),(2,2,0,0,0,'2019-10-12 14:37:36'),(3,3,0,0,0,'2019-10-12 14:39:28'),(4,4,0,0,0,'2019-10-12 14:41:25'),(5,5,0,0,0,'2019-10-12 15:27:31'),(6,6,0,0,0,'2019-10-12 15:31:03'),(7,7,0,0,0,'2019-10-12 15:33:45'),(8,8,0,0,0,'2019-10-12 15:37:11'),(9,9,0,0,0,'2019-10-12 15:38:51'),(10,10,0,0,0,'2019-10-12 15:42:13'),(11,11,0,0,0,'2019-10-12 15:47:30'),(12,12,0,0,0,'2019-10-12 17:30:52'),(13,13,0,0,0,'2019-10-12 17:32:44'),(14,14,0,0,0,'2019-10-12 17:34:12'),(15,15,0,0,0,'2019-10-12 17:46:13'),(16,16,0,0,0,'2019-10-12 17:54:32'),(17,17,0,0,0,'2019-10-12 17:58:38'),(18,18,0,0,0,'2019-10-12 18:01:53'),(19,19,0,0,0,'2019-10-23 19:59:29'),(20,20,0,0,0,'2019-10-23 20:00:20'),(21,21,0,0,0,'2019-10-26 20:51:06'),(22,22,0,0,0,'2019-10-26 21:12:22'),(23,23,0,0,0,'2019-10-26 21:46:52'),(24,24,0,0,0,'2019-10-26 21:56:26'),(25,25,0,0,0,'2019-11-08 18:09:53'),(26,26,0,0,0,'2019-11-08 23:35:51'),(27,27,0,0,0,'2019-11-08 23:37:51'),(28,28,0,0,0,'2019-11-08 23:49:51'),(29,29,0,0,0,'2019-11-09 02:12:46'),(30,30,0,0,0,'2019-11-09 19:08:33'),(31,31,0,0,0,'2019-11-09 21:10:09'),(32,32,0,0,0,'2019-11-09 21:10:41'),(33,33,0,0,0,'2019-11-09 21:57:50'),(34,34,0,0,0,'2019-11-09 22:04:06'),(35,35,0,0,0,'2019-11-09 22:05:51'),(36,36,0,0,0,'2019-11-09 22:10:24'),(37,37,0,0,0,'2019-11-09 22:17:21'),(38,38,0,0,0,'2019-11-09 22:24:19'),(39,39,0,0,0,'2019-11-09 22:28:27'),(40,40,0,0,0,'2019-11-10 01:09:37'),(41,41,0,0,0,'2019-11-10 01:11:35'),(42,42,0,0,0,'2019-11-10 01:13:00'),(43,43,0,0,0,'2019-11-10 14:40:49'),(44,44,0,0,0,'2019-11-11 14:29:23'),(45,45,0,0,0,'2019-11-12 03:47:36'),(46,46,0,0,0,'2019-11-12 18:19:26'),(47,47,0,0,0,'2019-11-19 16:42:44'),(48,48,0,0,0,'2019-11-24 18:55:16'),(49,49,0,0,0,'2019-11-24 20:10:01'),(50,50,0,0,0,'2019-12-12 13:56:52'),(51,51,0,0,0,'2019-12-12 14:21:17'),(52,52,0,0,0,'2019-12-12 14:26:39'),(53,53,0,0,0,'2019-12-12 14:28:10'),(54,54,0,0,0,'2019-12-12 14:30:46'),(55,55,0,0,0,'2019-12-12 14:31:00'),(56,56,0,0,0,'2019-12-12 14:32:08'),(57,57,0,0,0,'2019-12-12 14:32:34'),(58,58,0,0,0,'2019-12-12 14:32:48'),(59,59,0,0,0,'2019-12-12 14:33:38'),(60,60,0,0,0,'2019-12-12 14:33:55'),(61,61,0,0,0,'2019-12-12 14:34:06'),(62,62,0,0,0,'2019-12-12 14:42:00'),(63,63,0,0,0,'2019-12-12 14:54:22'),(64,64,0,0,0,'2019-12-12 17:32:56'),(65,65,0,0,0,'2019-12-12 18:36:10'),(66,66,0,0,0,'2019-12-15 14:25:08'),(67,67,0,0,0,'2019-12-15 21:34:40'),(68,68,0,0,0,'2019-12-15 22:55:27'),(69,69,0,0,0,'2019-12-16 12:48:01'),(70,70,0,0,0,'2019-12-16 12:52:46'),(71,71,0,0,0,'2019-12-16 15:17:46'),(72,72,0,0,0,'2019-12-16 15:25:55'),(73,73,0,0,0,'2019-12-16 17:15:20'),(74,74,0,0,0,'2019-12-16 17:23:33'),(75,75,0,0,0,'2019-12-16 17:29:09'),(76,76,0,0,0,'2019-12-16 19:36:28'),(77,77,0,0,0,'2020-02-12 02:50:40'),(78,78,0,0,0,'2020-03-31 05:12:37'),(79,79,0,0,0,'2020-08-04 19:08:09'),(80,80,0,0,0,'2020-08-04 23:06:01'),(81,81,0,0,0,'2020-08-05 23:23:22');
/*!40000 ALTER TABLE `tb_initialpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_leadspasswordsrecoveries`
--

DROP TABLE IF EXISTS `tb_leadspasswordsrecoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_leadspasswordsrecoveries` (
  `idrecovery` int(11) NOT NULL AUTO_INCREMENT,
  `idlead` int(11) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `dtrecovery` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idrecovery`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_leadspasswordsrecoveries`
--

LOCK TABLES `tb_leadspasswordsrecoveries` WRITE;
/*!40000 ALTER TABLE `tb_leadspasswordsrecoveries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_leadspasswordsrecoveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_machines`
--

DROP TABLE IF EXISTS `tb_machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_machines` (
  `idmachine` int(11) NOT NULL AUTO_INCREMENT,
  `indeleted` tinyint(4) DEFAULT 0,
  `inposition` tinyint(4) DEFAULT 0,
  `desmachine` varchar(128) DEFAULT NULL,
  `desmachineabbr` varchar(64) DEFAULT NULL,
  `dtregister` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idmachine`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_machines`
--

LOCK TABLES `tb_machines` WRITE;
/*!40000 ALTER TABLE `tb_machines` DISABLE KEYS */;
INSERT INTO `tb_machines` VALUES (1,1,10,'Sistema de Login pra Marketplace Multiuser','0','2021-04-24 13:17:48'),(2,0,10,'Kryptos PHP','0','2021-04-24 13:17:48'),(3,1,10,'DAO PHP Express','0','2021-04-24 13:17:48'),(4,0,10,'Sender PHP','0','2021-04-24 13:17:48'),(5,1,10,'PDO Starter','0','2021-04-24 13:17:48'),(6,0,0,'Volum??o','VL','2021-09-06 16:33:50'),(7,0,0,'HotGel','HG','2021-09-06 17:54:00'),(8,0,0,'Sinedrol','SN','2021-09-06 18:04:00');
/*!40000 ALTER TABLE `tb_machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mailing`
--

DROP TABLE IF EXISTS `tb_mailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mailing` (
  `idmailing` int(11) NOT NULL AUTO_INCREMENT,
  `desname` varchar(128) NOT NULL,
  `desemail` varchar(128) NOT NULL,
  `desip` varchar(22) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idmailing`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mailing`
--

LOCK TABLES `tb_mailing` WRITE;
/*!40000 ALTER TABLE `tb_mailing` DISABLE KEYS */;
INSERT INTO `tb_mailing` VALUES (2,'A2marR2 Casar','jpccambraia2@gmail.com','127.0.0.1','2019-10-13 20:36:31'),(3,'Luiz Fonseca','amarcasar3@gmail.com','127.0.0.1','2019-10-25 00:07:17');
/*!40000 ALTER TABLE `tb_mailing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_maintenance`
--

DROP TABLE IF EXISTS `tb_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_maintenance` (
  `idmaintenance` int(11) NOT NULL AUTO_INCREMENT,
  `instatus` tinyint(4) DEFAULT NULL,
  `desdescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idmaintenance`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_maintenance`
--

LOCK TABLES `tb_maintenance` WRITE;
/*!40000 ALTER TABLE `tb_maintenance` DISABLE KEYS */;
INSERT INTO `tb_maintenance` VALUES (1,0,'Ol??! Desculpe pelo transtorno, mas estamos fazendo uma manuten????o no Banco de Dados e por isso nossos servi??os ficar??o indispon??veis at?? as 19:30h de hoje','2019-09-29 02:56:06');
/*!40000 ALTER TABLE `tb_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menus`
--

DROP TABLE IF EXISTS `tb_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menus` (
  `idmenu` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `inparty` tinyint(4) DEFAULT NULL,
  `inbestfriend` tinyint(4) DEFAULT NULL,
  `inrsvp` tinyint(4) DEFAULT NULL,
  `inmessage` tinyint(4) DEFAULT NULL,
  `instore` tinyint(4) DEFAULT NULL,
  `inevent` tinyint(4) DEFAULT NULL,
  `inalbum` tinyint(4) DEFAULT NULL,
  `invideo` tinyint(4) DEFAULT NULL,
  `instakeholder` tinyint(4) DEFAULT NULL,
  `inouterlist` tinyint(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menus`
--

LOCK TABLES `tb_menus` WRITE;
/*!40000 ALTER TABLE `tb_menus` DISABLE KEYS */;
INSERT INTO `tb_menus` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,'2019-10-12 14:15:06'),(2,2,1,1,1,1,1,1,1,1,1,1,'2019-10-12 14:37:36'),(3,3,1,1,1,1,1,1,1,1,1,1,'2019-10-12 14:39:28'),(4,4,1,1,1,1,1,1,1,1,1,1,'2019-10-12 14:41:25'),(5,5,1,1,1,1,1,1,1,1,1,1,'2019-10-12 15:27:31'),(6,6,1,1,1,1,1,1,1,1,1,1,'2019-10-12 15:31:03'),(7,7,1,1,1,1,1,1,1,1,1,1,'2019-10-12 15:33:45'),(8,8,1,1,1,1,1,1,1,1,1,1,'2019-10-12 15:37:11'),(9,9,1,1,1,1,1,1,1,1,1,1,'2019-10-12 15:38:51'),(10,10,1,1,1,1,1,1,1,1,1,1,'2019-10-12 15:42:13'),(11,11,1,1,1,1,1,1,1,1,1,1,'2019-10-12 15:47:30'),(12,12,1,1,1,1,1,1,1,1,1,1,'2019-10-12 17:30:52'),(13,13,1,1,1,1,1,1,1,1,1,1,'2019-10-12 17:32:44'),(14,14,1,1,1,1,1,1,1,1,1,1,'2019-10-12 17:34:12'),(15,15,1,1,1,1,1,1,1,1,1,1,'2019-10-12 17:46:13'),(16,16,1,1,1,1,1,1,1,1,1,1,'2019-10-12 17:54:32'),(17,17,1,1,1,1,1,1,1,1,1,1,'2019-10-12 17:58:38'),(18,18,1,1,1,1,1,1,1,1,1,1,'2019-10-12 18:01:53'),(19,19,1,1,1,1,1,1,1,1,1,1,'2019-10-23 19:59:29'),(20,20,1,1,1,1,1,1,1,1,1,1,'2019-10-23 20:00:20'),(21,21,1,1,1,1,1,1,1,1,1,1,'2019-10-26 20:51:06'),(22,22,1,1,1,1,1,1,1,1,1,1,'2019-10-26 21:12:23'),(23,23,1,1,1,1,1,1,1,1,1,1,'2019-10-26 21:46:52'),(24,24,1,1,1,1,1,1,1,1,1,1,'2019-10-26 21:56:26'),(25,25,1,1,1,1,1,1,1,1,1,1,'2019-11-08 18:09:53'),(26,26,1,1,1,1,1,1,1,1,1,1,'2019-11-08 23:35:51'),(27,27,1,1,1,1,1,1,1,1,1,1,'2019-11-08 23:37:51'),(28,28,1,1,1,1,1,1,1,1,1,1,'2019-11-08 23:49:51'),(29,29,1,1,1,1,1,1,1,1,1,1,'2019-11-09 02:12:46'),(30,30,1,1,1,1,1,1,1,1,1,1,'2019-11-09 19:08:33'),(31,31,1,1,1,1,1,1,1,1,1,1,'2019-11-09 21:10:09'),(32,32,1,1,1,1,1,1,1,1,1,1,'2019-11-09 21:10:41'),(33,33,1,1,1,1,1,1,1,1,1,1,'2019-11-09 21:57:50'),(34,34,1,1,1,1,1,1,1,1,1,1,'2019-11-09 22:04:06'),(35,35,1,1,1,1,1,1,1,1,1,1,'2019-11-09 22:05:52'),(36,36,1,1,1,1,1,1,1,1,1,1,'2019-11-09 22:10:24'),(37,37,1,1,1,1,1,1,1,1,1,1,'2019-11-09 22:17:21'),(38,38,1,1,1,1,1,1,1,1,1,1,'2019-11-09 22:24:19'),(39,39,1,1,1,1,1,1,1,1,1,1,'2019-11-09 22:28:27'),(40,40,1,1,1,1,1,1,1,1,1,1,'2019-11-10 01:09:37'),(41,41,1,1,1,1,1,1,1,1,1,1,'2019-11-10 01:11:35'),(42,42,1,1,1,1,1,1,1,1,1,1,'2019-11-10 01:13:00'),(43,43,1,1,1,1,1,1,1,1,1,1,'2019-11-10 14:40:49'),(44,44,1,1,1,1,1,1,1,1,1,1,'2019-11-11 14:29:23'),(45,45,1,1,1,1,1,1,1,1,1,1,'2019-11-12 03:47:37'),(46,46,1,1,1,1,1,1,1,1,1,1,'2019-11-12 18:19:26'),(47,47,1,1,1,1,1,1,1,1,1,1,'2019-11-19 16:42:44'),(48,48,1,1,1,1,1,1,1,1,1,1,'2019-11-24 18:55:16'),(49,49,1,1,1,1,1,1,1,1,1,1,'2019-11-24 20:10:01'),(50,50,1,1,1,1,1,1,1,1,1,1,'2019-12-12 13:56:52'),(51,51,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:21:17'),(52,52,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:26:39'),(53,53,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:28:10'),(54,54,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:30:46'),(55,55,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:31:00'),(56,56,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:32:08'),(57,57,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:32:34'),(58,58,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:32:48'),(59,59,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:33:38'),(60,60,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:33:55'),(61,61,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:34:06'),(62,62,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:42:00'),(63,63,1,1,1,1,1,1,1,1,1,1,'2019-12-12 14:54:22'),(64,64,1,1,1,1,1,1,1,1,1,1,'2019-12-12 17:32:56'),(65,65,1,1,1,1,1,1,1,1,1,1,'2019-12-12 18:36:10'),(66,66,1,1,1,1,1,1,1,1,1,1,'2019-12-15 14:25:08'),(67,67,1,1,1,1,1,1,1,1,1,1,'2019-12-15 21:34:40'),(68,68,1,1,1,1,1,1,1,1,1,1,'2019-12-15 22:55:27'),(69,69,1,1,1,1,1,1,1,1,1,1,'2019-12-16 12:48:01'),(70,70,1,1,1,1,1,1,1,1,1,1,'2019-12-16 12:52:46'),(71,71,1,1,1,1,1,1,1,1,1,1,'2019-12-16 15:17:46'),(72,72,1,1,1,1,1,1,1,1,1,1,'2019-12-16 15:25:55'),(73,73,1,1,1,1,1,1,1,1,1,1,'2019-12-16 17:15:21'),(74,74,1,1,1,1,1,1,1,1,1,1,'2019-12-16 17:23:33'),(75,75,1,1,1,1,1,1,1,1,1,1,'2019-12-16 17:29:09'),(76,76,1,1,1,1,1,1,1,1,1,1,'2019-12-16 19:36:28'),(77,77,1,1,1,1,1,1,1,1,1,1,'2020-02-12 02:50:40'),(78,78,1,1,1,1,1,1,1,1,1,1,'2020-03-31 05:12:37'),(79,79,1,1,1,1,1,1,1,1,1,1,'2020-08-04 19:08:09'),(80,80,1,1,1,1,1,1,1,1,1,1,'2020-08-04 23:06:01'),(81,81,1,1,1,1,1,1,1,1,1,1,'2020-08-05 23:23:22');
/*!40000 ALTER TABLE `tb_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_notifications`
--

DROP TABLE IF EXISTS `tb_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_notifications` (
  `idnotification` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idpayment` int(11) NOT NULL,
  `desevent` varchar(64) DEFAULT NULL,
  `innotificationstatus` tinyint(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idnotification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_notifications`
--

LOCK TABLES `tb_notifications` WRITE;
/*!40000 ALTER TABLE `tb_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orders` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idcart` int(11) NOT NULL,
  `idcustomer` int(11) NOT NULL,
  `idpayment` int(11) NOT NULL,
  `idfee` int(11) NOT NULL,
  `desordercode` varchar(22) DEFAULT NULL,
  `vltotal` decimal(10,2) NOT NULL,
  `vlseller` decimal(10,2) DEFAULT NULL,
  `vlmarketplace` decimal(10,2) DEFAULT NULL,
  `vlprocessor` decimal(10,2) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idorder`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
INSERT INTO `tb_orders` VALUES (1,1,1,1,1,1,'ORD-FC48Q9C99U2J',224.90,NULL,214.56,10.34,'2019-10-12 14:16:48'),(2,2,2,2,2,2,'ORD-4UH60TH4U5GG',62.90,NULL,59.41,3.49,'2019-10-12 14:38:25'),(3,3,3,3,3,3,'ORD-WPA5O3BP0JN6',84.90,NULL,80.57,4.33,'2019-10-12 14:40:30'),(4,4,4,4,4,4,'ORD-FBODPSNYJPOK',35.63,NULL,31.46,4.17,'2019-10-12 14:47:11'),(5,5,5,5,5,5,'ORD-CPR1WNDN2JFN',35.63,NULL,33.41,2.22,'2019-10-12 15:28:39'),(6,6,6,6,6,6,'ORD-EIXRRIEDGW4R',35.63,NULL,33.41,2.22,'2019-10-12 15:32:01'),(7,7,7,7,7,7,'ORD-OKTR7UV1AYH2',35.63,NULL,31.46,4.17,'2019-10-12 15:35:02'),(8,8,8,8,8,8,'ORD-MI4Q9T9RBSY7',35.63,NULL,33.41,2.22,'2019-10-12 15:37:59'),(9,9,9,9,9,9,'ORD-DB61ADRJDA53',35.63,NULL,31.46,4.17,'2019-10-12 15:39:32'),(10,10,11,11,10,10,'ORD-GHST4EWVUEZP',35.63,NULL,31.46,4.17,'2019-10-12 15:45:45'),(11,11,21,21,11,11,'ORD-GLZO2M1TDSS2',35.63,NULL,31.46,4.17,'2019-10-12 17:27:25'),(12,15,22,22,12,12,'ORD-MSIAJMVWZHFL',35.63,NULL,33.41,2.22,'2019-10-12 17:47:41'),(13,16,23,23,13,13,'ORD-9G018ZCB3D54',84.90,NULL,81.41,3.49,'2019-10-12 17:55:30'),(14,17,24,24,14,14,'ORD-JXHX2AN5Y4FA',91.63,NULL,82.00,9.63,'2019-10-12 17:59:47'),(15,18,25,25,15,15,'ORD-GDX3HJSHNNOO',59.43,NULL,52.94,6.49,'2019-10-12 18:34:57'),(16,22,27,26,16,16,'ORD-IVBO15ZH7HWR',29.34,NULL,27.39,1.95,'2019-10-26 21:22:29'),(17,23,28,27,17,17,'ORD-1XDZWME2XZ1S',57.54,NULL,52.01,5.53,'2019-10-26 21:48:55'),(18,24,29,28,18,18,'ORD-8RFXBS9KQ66D',72.54,NULL,69.05,3.49,'2019-10-26 21:57:32'),(19,25,35,29,19,19,'',0.00,0.00,0.00,0.00,'2019-11-08 23:15:29'),(20,25,36,30,20,20,'',0.00,0.00,0.00,0.00,'2019-11-08 23:17:45'),(21,25,37,31,21,21,'',0.00,0.00,0.00,0.00,'2019-11-08 23:22:41'),(22,26,38,32,22,22,'',0.00,0.00,0.00,0.00,'2019-11-08 23:37:11'),(23,27,42,35,23,23,'',0.00,0.00,0.00,0.00,'2019-11-08 23:47:52'),(24,28,43,36,24,24,'',0.00,0.00,0.00,0.00,'2019-11-09 00:00:24'),(25,29,44,37,25,25,'ORD-BZQQHM6A7ID5',48.90,NULL,45.41,3.49,'2019-11-09 03:21:24'),(26,30,45,38,26,26,'',0.00,0.00,0.00,0.00,'2019-11-09 19:12:46'),(27,32,46,39,27,27,'ORD-OPMUBHF8Q377',48.90,NULL,45.41,3.49,'2019-11-09 21:38:25'),(28,32,47,40,28,28,'ORD-MPA49MOONS6S',48.90,NULL,45.41,3.49,'2019-11-09 21:40:38'),(29,32,48,41,29,29,'',0.00,0.00,0.00,0.00,'2019-11-09 21:53:07'),(30,33,49,42,30,30,'ORD-A1DFI9XCO3MW',48.90,NULL,45.41,3.49,'2019-11-09 21:59:36'),(31,34,50,43,31,31,'ORD-922Q8QQIZCEJ',84.90,NULL,80.57,4.33,'2019-11-09 22:05:02'),(32,35,51,44,32,32,'ORD-H54888VAD1A0',120.90,NULL,115.02,5.88,'2019-11-09 22:06:59'),(33,39,53,46,33,33,'',0.00,0.00,0.00,0.00,'2019-11-10 01:06:51'),(34,40,54,47,34,34,'ORD-5R0NBOTJBNU4',84.90,NULL,80.57,4.33,'2019-11-10 01:10:42'),(35,41,55,48,35,35,'ORD-O5DNWYLVK495',48.90,NULL,45.41,3.49,'2019-11-10 01:12:24'),(36,42,56,49,36,36,'ORD-RN6KI6P2JCEH',120.90,NULL,115.02,5.88,'2019-11-10 01:13:56'),(37,43,57,50,37,37,'ORD-SQI8VEK34L1J',42.45,NULL,38.19,4.26,'2019-11-10 14:54:00'),(38,44,58,51,38,38,'ORD-0A8SJVAN4UMI',42.45,NULL,37.62,4.83,'2019-11-11 15:03:53'),(39,44,59,52,39,39,'ORD-GSHY1UCZR8TK',100.00,95.01,0.01,4.98,'2019-11-11 15:47:19'),(40,45,61,53,40,40,'ORD-PA9ND9GFGE7T',48.90,NULL,46.11,2.79,'2019-11-12 03:48:41'),(41,46,64,55,41,41,'ORD-BYYA9DTZ2KMA',48.90,NULL,46.11,2.79,'2019-11-12 18:24:46'),(42,46,66,56,42,42,'ORD-UZPYUDQWTO3C',106.11,95.01,0.05,11.05,'2019-11-12 18:33:29'),(43,46,66,57,43,43,'ORD-I20VZKWN78ZD',106.11,95.01,0.05,11.05,'2019-11-12 18:35:06'),(44,46,67,61,45,44,'ORD-C0UR3W7IYI6G',104.53,95.01,0.04,9.48,'2019-11-12 18:51:16'),(45,46,67,62,46,45,'ORD-IPJ65XY140H9',104.53,95.01,0.04,9.48,'2019-11-12 18:52:22'),(46,46,67,63,47,46,'ORD-L4ZX2M0MLC7B',100.00,95.01,0.01,4.98,'2019-11-12 18:54:02'),(47,46,67,64,48,47,'ORD-CH7W4PAINC0H',100.00,95.01,0.01,4.98,'2019-11-12 18:55:10'),(48,46,67,65,49,48,'ORD-SYSP9319GYB6',100.00,95.01,0.01,4.98,'2019-11-12 19:03:16'),(49,48,73,66,50,49,'ORD-LD6XFPNNYV97',62.90,NULL,59.41,3.49,'2019-11-24 18:58:33'),(50,48,74,67,51,50,'ORD-01L8327OHYFK',62.90,NULL,59.51,3.39,'2019-11-24 19:02:27'),(51,49,75,68,52,51,'ORD-LNO7BZGLXHUE',48.90,NULL,46.11,2.79,'2019-11-24 20:12:23'),(52,49,86,69,53,52,'ORD-UJGK59ZTZFT0',526.26,500.00,2.99,23.27,'2019-12-10 23:31:59'),(53,49,86,70,54,53,'ORD-Z0TD3MVKN3KS',526.26,500.00,2.99,23.27,'2019-12-10 23:34:30'),(54,49,87,71,55,54,'ORD-V7AJCD94BINQ',526.26,500.00,2.99,23.27,'2019-12-10 23:39:28'),(55,49,89,73,56,55,'ORD-8FOTU7CCI0H6',631.51,600.00,3.73,27.78,'2019-12-11 02:32:41'),(56,49,89,74,57,56,'ORD-RHUDOPWKEI8C',631.51,600.00,3.73,27.78,'2019-12-11 02:40:23'),(57,49,89,75,58,57,'ORD-MX544HMHHJLC',631.51,600.00,3.73,27.78,'2019-12-11 02:40:53'),(58,49,89,76,59,58,'ORD-C3SD3G5AHWIG',631.51,600.00,3.73,27.78,'2019-12-11 02:43:50'),(59,49,91,77,60,59,'ORD-ZTWLKX5MOOW2',110.02,100.00,0.08,9.94,'2019-12-11 18:08:15'),(60,49,92,78,61,60,'ORD-AGQGIAMDWIM8',558.41,500.00,3.22,55.19,'2019-12-11 19:10:28'),(61,49,93,79,62,61,'ORD-BT1M0VX0JFCK',1116.82,1000.00,7.13,109.69,'2019-12-11 19:12:27'),(62,49,94,80,63,62,'ORD-D2XAQDGA8ESA',111.68,100.00,0.09,11.59,'2019-12-12 01:44:18'),(63,62,96,81,64,63,'ORD-EVZ7XC30VJBI',48.90,NULL,46.11,2.79,'2019-12-12 14:44:08'),(64,63,97,82,65,64,'ORD-EVXNK596M5EG',42.45,NULL,39.94,2.51,'2019-12-12 15:04:13'),(65,64,98,83,66,65,'ORD-160B60RMSMYZ',42.45,NULL,39.94,2.51,'2019-12-12 17:51:53'),(66,64,99,84,67,66,'ORD-GPO8PSVAHRJD',95.90,NULL,87.14,8.76,'2019-12-12 18:02:21'),(67,64,100,85,68,67,'ORD-B8SSGVJFPN5Q',143.90,NULL,129.17,14.73,'2019-12-12 18:10:45'),(68,65,101,86,69,68,'ORD-BFI4QEOKPP4J',48.90,NULL,46.11,2.79,'2019-12-12 18:37:26'),(69,65,102,87,70,69,'ORD-N9LF816AF7T8',48.90,NULL,46.11,2.79,'2019-12-12 18:43:57'),(70,65,103,88,71,70,'ORD-ESQR75XGQMMG',120.90,NULL,115.02,5.88,'2019-12-12 20:04:40'),(71,66,104,89,72,71,'ORD-P940Q8I1G44T',48.90,NULL,46.11,2.79,'2019-12-15 14:48:00'),(72,66,105,90,73,72,'ORD-HIIYNZNJTVSZ',1045.33,950.10,6.63,88.60,'2019-12-15 20:47:00'),(73,66,106,91,74,73,'ORD-42CJ5ZUIU6KH',100.00,95.01,0.01,4.98,'2019-12-15 21:33:27'),(74,67,108,92,75,74,'ORD-HSA4270D4ORT',48.90,NULL,46.11,2.79,'2019-12-15 21:35:20'),(75,67,109,93,76,75,'ORD-VMFM0KGMF45A',100.00,95.01,0.01,4.98,'2019-12-15 21:36:24'),(76,68,111,94,77,76,'ORD-6XJ0ZU9G8HHE',48.90,NULL,46.11,2.79,'2019-12-15 23:14:13'),(77,69,112,95,78,77,'ORD-1E126NXUOFUI',48.90,NULL,46.11,2.79,'2019-12-16 12:51:00'),(78,70,115,98,79,78,'ORD-E37OR8HB070M',84.90,NULL,80.57,4.33,'2019-12-16 12:54:22'),(79,70,137,114,80,79,'ORD-BHCA1XQH21ZO',84.90,NULL,80.57,4.33,'2019-12-16 13:28:48'),(80,72,146,121,82,81,'ORD-V9GW2ZJPKPQO',84.90,NULL,81.41,3.49,'2019-12-16 15:26:51'),(81,73,147,122,83,82,'ORD-PRAIGL65A7K6',48.90,NULL,46.11,2.79,'2019-12-16 17:16:25'),(82,73,148,123,84,83,'ORD-52GERQU503VE',100.00,95.01,0.01,4.98,'2019-12-16 17:20:59'),(83,74,149,124,85,84,'ORD-0QFX57PCGFT7',84.90,NULL,81.41,3.49,'2019-12-16 17:24:33'),(84,74,150,125,86,85,'ORD-15ZSS7QZSRWE',100.00,95.01,0.01,4.98,'2019-12-16 17:27:27'),(85,77,153,126,87,86,'ORD-M8FVBT7R9AUA',48.90,NULL,46.11,2.79,'2020-02-12 02:54:31'),(86,79,159,127,88,87,'ORD-G8FHOLR8PAVS',79.90,NULL,76.41,3.49,'2020-08-04 19:15:37'),(87,80,160,128,89,88,'ORD-QN412GY5FV2I',79.90,NULL,71.41,8.49,'2020-08-04 23:07:16'),(88,81,161,129,90,89,'ORD-VXOJIGT8CPS3',109.90,NULL,99.97,9.93,'2020-08-05 23:24:55');
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_payments`
--

DROP TABLE IF EXISTS `tb_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_payments` (
  `idpayment` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `despaymentcode` varchar(22) DEFAULT NULL,
  `inpaymentstatus` tinyint(4) DEFAULT NULL,
  `inpaymentmethod` tinyint(4) DEFAULT NULL,
  `incharge` tinyint(4) DEFAULT NULL,
  `inrefunded` tinyint(4) DEFAULT NULL,
  `nrinstallment` int(3) DEFAULT NULL,
  `deslinecode` varchar(128) DEFAULT NULL,
  `desprinthref` varchar(256) DEFAULT NULL,
  `desholdername` varchar(64) DEFAULT NULL,
  `nrholdercountryarea` int(4) DEFAULT NULL,
  `nrholderddd` int(2) DEFAULT NULL,
  `nrholderphone` bigint(20) DEFAULT NULL,
  `inholdertypedoc` tinyint(4) DEFAULT NULL,
  `desholderdocument` varchar(14) DEFAULT NULL,
  `desholderzipcode` char(8) DEFAULT NULL,
  `desholderaddress` varchar(128) DEFAULT NULL,
  `desholdernumber` varchar(16) DEFAULT NULL,
  `desholdercomplement` varchar(32) DEFAULT NULL,
  `desholderdistrict` varchar(32) DEFAULT NULL,
  `desholdercity` varchar(32) DEFAULT NULL,
  `desholderstate` varchar(32) DEFAULT NULL,
  `dtholderbirth` date DEFAULT NULL,
  `dtlastwebhook` timestamp NULL DEFAULT current_timestamp(),
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idpayment`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_payments`
--

LOCK TABLES `tb_payments` WRITE;
/*!40000 ALTER TABLE `tb_payments` DISABLE KEYS */;
INSERT INTO `tb_payments` VALUES (1,1,'PAY-MKJ9V6HLPCHW',5,2,0,0,1,NULL,NULL,'JOSE PC CAMBR',55,31,984050125,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','1980-02-23','2019-10-12 14:16:48','2019-10-12 14:16:48'),(2,2,'PAY-3W6TRUWM2TV3',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-T4W7HJ4B3E68/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 14:38:25','2019-10-12 14:38:25'),(3,3,'PAY-2ZFGZ7XC6VW9',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313131','3131313','313131','3131','Alvar????es','AM','2000-01-01','2019-10-12 14:40:30','2019-10-12 14:40:30'),(4,4,'PAY-4ZGRTC4ZNM2S',3,2,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','31313131','313131','3131313','Acrel????ndia','AC','2000-01-01','2019-10-12 14:47:11','2019-10-12 14:47:11'),(5,5,'PAY-1YENW4FVVHXU',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313131','31313131','31313131','31313131','Abadia dos Dourados','MG','2000-01-01','2019-10-12 15:28:39','2019-10-12 15:28:39'),(6,6,'PAY-N00VI9BF4M9P',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','13131313','1313131','Acrel????ndia','AC','2000-01-01','2019-10-12 15:32:01','2019-10-12 15:32:01'),(7,7,'PAY-U88XPDGI9A4L',3,2,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','3131313','Acrel????ndia','AC','2000-01-01','2019-10-12 15:35:02','2019-10-12 15:35:02'),(8,8,'PAY-2YVB8ELWMSK9',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','3131313','131313131','31313131','31313131','Acrel????ndia','AC','2000-01-01','2019-10-12 15:37:59','2019-10-12 15:37:59'),(9,9,'PAY-VI2HQP0PODDM',3,2,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','1313','Acrel????ndia','AC','2000-01-01','2019-10-12 15:39:32','2019-10-12 15:39:32'),(10,10,'PAY-EF557YJKBS42',3,2,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313131','31313131','31313131','31313131','Acrel????ndia','AC','2000-01-01','2019-10-12 15:45:45','2019-10-12 15:45:45'),(11,11,'PAY-TD0M6HO46CLD',3,2,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','313131','3131313','131313','Acrel????ndia','AC','2000-01-01','2019-10-12 17:27:25','2019-10-12 17:27:25'),(12,15,'PAY-SJ6VX1P4GF61',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','3131313','13131313','13131313','1313131','Acrel????ndia','AC','2000-01-01','2019-10-12 17:47:41','2019-10-12 17:47:41'),(13,16,'PAY-8L7N7VERHKD6',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-H8R013JWJWYK/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 17:55:30','2019-10-12 17:55:30'),(14,17,'PAY-6HMFFH4F2T5I',3,2,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','313131','3131','31313','Acrel????ndia','AC','2000-01-01','2019-10-12 17:59:47','2019-10-12 17:59:47'),(15,18,'PAY-9FZUUAYAKIGN',3,1,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313131','31313131','31313131','3131313','Assis Brasil','AC','2000-01-01','2019-10-12 18:34:57','2019-10-12 18:34:57'),(16,22,'PAY-UQ33AAK69BXR',3,1,0,0,1,NULL,NULL,'JOAS ECP',55,31,31313131,0,'01224202686','13465400','3131313','1313131','313131','3131313','Acrel????ndia','AC','2000-01-01','2019-10-26 21:22:29','2019-10-26 21:22:29'),(17,23,'PAY-XATG8ZG2QFNA',3,2,0,0,3,NULL,NULL,'JOSE CP',55,31,31313131,0,'01224202686','13465400','313131','313131','313131','31313131','Bras????lia','DF','2000-01-01','2019-10-26 21:48:55','2019-10-26 21:48:55'),(18,24,'PAY-GFK3SGEG5L7I',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-9BT5JSZ5JNXZ/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AC',NULL,'2019-10-26 21:57:32','2019-10-26 21:57:32'),(19,25,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:15:29','2019-11-08 23:15:29'),(20,25,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:17:45','2019-11-08 23:17:45'),(21,25,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:22:41','2019-11-08 23:22:41'),(22,26,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:37:10','2019-11-08 23:37:10'),(23,27,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-08 23:47:52','2019-11-08 23:47:52'),(24,28,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 00:00:24','2019-11-09 00:00:24'),(25,29,'PAY-W0LWYK9JPSMV',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-GET14I4ZUIL5/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 03:21:24','2019-11-09 03:21:24'),(26,30,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 19:12:46','2019-11-09 19:12:46'),(27,32,'PAY-S50ZB3A15BV7',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-GB4J9373U7N4/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 21:38:24','2019-11-09 21:38:24'),(28,32,'PAY-R6WI04ZO8JQQ',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-6X670EYJ3CPD/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 21:40:37','2019-11-09 21:40:37'),(29,32,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 21:53:07','2019-11-09 21:53:07'),(30,33,'PAY-CBXD3DSNFB80',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-ZUV09C55OC21/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 21:59:35','2019-11-09 21:59:35'),(31,34,'PAY-RFV0WL21IESG',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313131311','313131','3131313','31313','Acrel????ndia','AC','2000-01-01','2019-11-09 22:05:01','2019-11-09 22:05:01'),(32,35,'PAY-4YZJVN8IMA7N',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','3131313','Acrel????ndia','AC','2000-01-01','2019-11-09 22:06:59','2019-11-09 22:06:59'),(33,39,'',5,3,0,0,1,'','',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AC',NULL,'2019-11-10 01:06:51','2019-11-10 01:06:51'),(34,40,'PAY-23CSJ8ZMIIFV',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','3131313','Acrel????ndia','AC','2000-01-01','2019-11-10 01:10:42','2019-11-10 01:10:42'),(35,41,'PAY-3V0PKVLXRIW3',2,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-HAX8IZXWPLYX/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AC',NULL,'2019-11-10 01:12:24','2019-11-10 01:12:24'),(36,42,'PAY-E49GD7OIG9H2',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313','31313','13131','313131','Acrel????ndia','AC','2000-01-01','2019-11-10 01:13:56','2019-11-10 01:13:56'),(37,43,'PAY-XUPSF07KRCOL',5,2,0,0,3,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','31313131','3131313','131313','Acrel????ndia','AC','2000-01-01','2019-11-10 14:54:00','2019-11-10 14:54:00'),(38,44,'PAY-305NRHOY10N1',5,2,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313','13131','313131','3131313','Acrel????ndia','AC','2000-01-01','2019-11-11 15:03:53','2019-11-11 15:03:53'),(39,44,'PAY-1TLAJWT2ZOFT',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','313131','313131313','1313131','Acau????','PI','2000-01-01','2019-11-11 15:47:19','2019-11-11 15:47:19'),(40,45,'PAY-CTJ1DB5FZUZV',3,2,0,0,1,NULL,NULL,'JOSE PC',55,13,31313131,0,'01224202686','13465400','313131','3131313','1313131','313131','????gua Branca','AL','2000-01-01','2019-11-12 03:48:41','2019-11-12 03:48:41'),(41,46,'PAY-EH6AM1PUMMVX',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','313131','Acrel????ndia','AC','2000-01-01','2019-11-12 18:24:46','2019-11-12 18:24:46'),(42,46,'PAY-M08AOP68PSLD',3,1,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','131313','1313131','3131313','1313131','Abadia dos Dourados','MG','2000-01-01','2019-11-12 18:33:29','2019-11-12 18:33:29'),(43,46,'PAY-PUGUW5UVAVSP',3,1,0,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','131313','1313131','3131313','1313131','Alvar????es','AM','2000-01-01','2019-11-12 18:35:06','2019-11-12 18:35:06'),(44,46,'PAY-7NN9OTOIH8O2',3,1,0,0,3,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','2000-01-01','2019-11-12 18:50:34','2019-11-12 18:50:34'),(45,46,'PAY-6EXOTY1GUS1C',5,1,0,0,3,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','2000-01-01','2019-11-12 18:51:16','2019-11-12 18:51:16'),(46,46,'PAY-UOQXMJ7H1L2D',5,1,0,0,3,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','2000-01-01','2019-11-12 18:52:22','2019-11-12 18:52:22'),(47,46,'PAY-W2ZMUZGV6HX8',5,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','2000-01-01','2019-11-12 18:54:02','2019-11-12 18:54:02'),(48,46,'PAY-VUU77UX7MW9P',5,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','2000-01-01','2019-11-12 18:55:10','2019-11-12 18:55:10'),(49,46,'PAY-R7DM9EGN7WXH',5,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','3131313','131331','Acrel????ndia','AC','2000-01-01','2019-11-12 19:03:16','2019-11-12 19:03:16'),(50,48,'PAY-7Z8X02LOZ8ER',5,0,0,0,1,'00190.00009 01014.051005 00000.787176 7 72370000001000','https://sandbox.moip.com.br/v2/boleto/BOL-12RV884XT85E/print',NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-24 18:58:33','2019-11-24 18:58:33'),(51,48,'PAY-S8OPUKN1QEZG',5,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313','3131313131','Acrel????ndia','AC','2000-01-01','2019-11-24 19:02:27','2019-11-24 19:02:27'),(52,49,'PAY-YPMXH6K3EN1G',5,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','31313131','313131','31313131','Acrel????ndia','AC','2000-01-01','2019-11-24 20:12:23','2019-11-24 20:12:23'),(53,49,'PAY-PO3Q00U778C6',5,1,1,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','313131313','31313131','','3131313','Acrel????ndia','AC','2000-01-01','2019-12-10 23:31:59','2019-12-10 23:31:59'),(54,49,'PAY-I8T7IEND2H5Z',5,1,1,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','313131313','31313131','','3131313','Acrel????ndia','AC','2000-01-01','2019-12-10 23:34:30','2019-12-10 23:34:30'),(55,49,'PAY-40M5HHL553ET',5,1,1,0,1,NULL,NULL,'JOSE PC CAMBR',55,31,31313131,0,'01224202686','30160037','3131313131313','31313131','','13131313','Abadia dos Dourados','MG','2000-01-01','2019-12-10 23:39:28','2019-12-10 23:39:28'),(56,49,'PAY-8XF6XBOCU41D',5,1,1,0,1,NULL,NULL,'JOSE PAULO',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','2000-01-01','2019-12-11 02:32:41','2019-12-11 02:32:41'),(57,49,'PAY-XMALFJT00YOD',5,1,1,0,1,NULL,NULL,'JOSE PAULO',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','2000-01-01','2019-12-11 02:40:23','2019-12-11 02:40:23'),(58,49,'PAY-YJ90RST1ZLUT',5,1,1,0,1,NULL,NULL,'JOSE PAULO',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','2000-01-01','2019-12-11 02:40:53','2019-12-11 02:40:53'),(59,49,'PAY-3XPN9ECZ7HG3',5,1,1,0,1,NULL,NULL,'JOSE PAULO',55,3,31313131,0,'01224202686','30160037','1313','1313131','','3131','Acorizal','MT','2000-01-01','2019-12-11 02:43:50','2019-12-11 02:43:50'),(60,49,'PAY-86MFL4WT1V7D',5,1,1,0,3,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','3131313','13131313','','31313131','Abre Campo','MG','2000-01-01','2019-12-11 18:08:15','2019-12-11 18:08:15'),(61,49,'PAY-82UIVPRRJGQ4',5,1,1,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','3131313131','3133131313','','13131313131','A????ucena','MG','2000-01-01','2019-12-11 19:10:28','2019-12-11 19:10:28'),(62,49,'PAY-04AYG3LKIIYW',5,1,1,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','313131','31313131','','31313136','Abadia dos Dourados','MG','2000-01-01','2019-12-11 19:12:27','2019-12-11 19:12:27'),(63,49,'PAY-NMQG6XJTRCRH',5,1,1,0,4,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','313131','3131313','131313','1313131','Abadia dos Dourados','MG','2000-01-01','2019-12-12 01:44:18','2019-12-12 01:44:18'),(64,62,'PAY-TDZLWBJZ9MHM',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','31313131','31313131','31313131','Acrel????ndia','AC','2000-01-01','2019-12-12 14:44:08','2019-12-12 14:44:08'),(65,63,'PAY-17MXZ6AWECWN',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','Espirito1','6464','Espirito2','Espirito3','Acrel????ndia','AC','2000-01-01','2019-12-12 15:04:13','2019-12-12 15:04:13'),(66,64,'PAY-933LSYWL27AL',5,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','espiriiiro','2','espiriiiro3','espiriiiro4','Acrel????ndia','AC','2000-01-01','2019-12-12 17:51:53','2019-12-12 17:51:53'),(67,64,'PAY-TTQJCCZBMF0P',5,2,0,0,3,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','espiriiiro','2','espiriiiro3','espiriiiro4','Acrel????ndia','Acre','2000-01-01','2019-12-12 18:02:21','2019-12-12 18:02:21'),(68,64,'PAY-BTPLSJFNNATB',3,2,0,0,4,NULL,NULL,'JOSE PAULO',55,31,31313131,0,'01224202686','13465400','espiriiiro','2','espiriiiro3','espiriiiro4','Acrel????ndia','AC','2000-01-01','2019-12-12 18:10:45','2019-12-12 18:10:45'),(69,65,'PAY-7C1KKOVJJ24K',5,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','esapiiirioo','2','esapiiirioo3','esapiiirioo4','Acrel????ndia','PE','2000-01-01','2019-12-12 18:37:26','2019-12-12 18:37:26'),(70,65,'PAY-TRFH2V4G9YGL',5,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','espiririo','1','espiririo2','espiririo3','Abadia dos Dourados','MG','2000-01-01','2019-12-12 18:43:57','2019-12-12 18:43:57'),(71,65,'PAY-34UB6XZV1NCS',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','Espirito1','21','Espirito13','Espirito14','Acrel????ndia','AC','2000-01-01','2019-12-12 20:04:40','2019-12-12 20:04:40'),(72,66,'PAY-AVKVT44MYC65',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','espiiiritoooo','2','espiiiritoooo3','espiiiritoooo4','Alvar????es','AM','2000-01-01','2019-12-15 14:47:59','2019-12-15 14:47:59'),(73,66,'PAY-XUB0O2I2XBTX',3,1,0,0,3,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13464500','Espirito1','12','Espirito13','Espirito14','Abati????','PR','2000-01-01','2019-12-15 20:46:59','2019-12-15 20:46:59'),(74,66,'PAY-2QBO3GGRF54T',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','31313','1313131','313131','313131','Abadia dos Dourados','MG','2000-01-01','2019-12-15 21:33:27','2019-12-15 21:33:27'),(75,67,'PAY-TKVMV7WIQHU4',3,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','313131','3131313','1313131','313131','Acrel????ndia','AC','2000-01-01','2019-12-15 21:35:19','2019-12-15 21:35:19'),(76,67,'PAY-SBVPNSK6KRFF',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','3131','31','313131','3131','Abadia dos Dourados','MG','2000-01-01','2019-12-15 21:36:24','2019-12-15 21:36:24'),(77,68,'PAY-BCTUF6UQQSRV',6,2,0,0,1,NULL,NULL,'JOSE PC',55,32,31313131,0,'01224202686','13465400','3313131313','3131','31313131','313131','Acrel????ndia','AC','2000-01-01','2019-12-15 23:14:13','2019-12-15 23:14:13'),(78,69,'PAY-CYN2BU2I6GGA',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','31313','131313','131313','1313131','Acrel????ndia','AM','2000-01-01','2019-12-16 12:51:00','2019-12-16 12:51:00'),(79,70,'PAY-YYVKYQIKHS89',5,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','AC','2000-01-01','2019-12-16 12:54:22','2019-12-16 12:54:22'),(80,70,'PAY-ZJO521I3XCHQ',5,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','3131','31313','1313131','313131','Acrel????ndia','Acre','2000-01-01','2019-12-16 13:28:48','2019-12-16 13:28:48'),(81,70,NULL,NULL,0,0,0,1,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-16 13:32:19','2019-12-16 13:32:19'),(82,72,'PAY-HRO0RZSMK5YJ',2,0,0,0,1,'34191.09016 98589.850191 61309.830000 1 81100000008490','https://sandbox.moip.com.br/v2/boleto/BOL-YY1MUDHRUWN0/print','',55,NULL,NULL,NULL,NULL,NULL,'',NULL,'','','','MG',NULL,'2019-12-16 15:26:51','2019-12-16 15:26:51'),(83,73,'PAY-X9N6PJBEJISV',5,2,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','13465400','Rua Major Rehder','401','','Vila Rehder','Americana','SP','2000-01-01','2019-12-16 17:16:25','2019-12-16 17:16:25'),(84,73,'PAY-LYEEPHWPY5SX',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','17457','','Lourdes','Belo Horizonte','MG','2000-01-01','2019-12-16 17:20:59','2019-12-16 17:20:59'),(85,74,'PAY-6KJPQ4VYB18P',5,0,0,0,1,'34191.09016 98728.530191 61309.830000 8 81100000008490','https://sandbox.moip.com.br/v2/boleto/BOL-9CO0ZP3SITFL/print','',55,NULL,NULL,NULL,NULL,NULL,'',NULL,'','','','',NULL,'2019-12-16 17:24:33','2019-12-16 17:24:33'),(86,74,'PAY-65MGQOVF74ZM',3,1,0,0,1,NULL,NULL,'JOSE PC',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','17457','','Lourdes','Belo Horizonte','MG','2000-01-01','2019-12-16 17:27:26','2019-12-16 17:27:26'),(87,77,'PAY-37YUJRLSFE4B',3,2,0,0,1,NULL,NULL,'JOSE PAULO',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','2000-01-01','2020-02-12 02:54:31','2020-02-12 02:54:31'),(88,79,'PAY-FCKEZJU6VPBB',2,0,0,0,1,'34191.09024 62190.490193 61309.830000 1 83420000007990','https://sandbox.moip.com.br/v2/boleto/BOL-DIZM1XS5GXKE/print','',55,NULL,NULL,NULL,NULL,NULL,'',NULL,'','','','',NULL,'2020-08-04 19:15:37','2020-08-04 19:15:37'),(89,80,'PAY-O6YUUDW08DPG',3,2,0,0,4,NULL,NULL,'JOSE PC CAMBRAIA',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','2000-01-01','2020-08-04 23:07:15','2020-08-04 23:07:15'),(90,81,'PAY-PUZRES7CLSWC',3,2,0,0,3,NULL,NULL,'JOSE PC CAMBRAIA',55,31,31313131,0,'01224202686','30160037','Rua Espirito Santo','1757','ap 401','Lourdes','Belo Horizonte','MG','2000-01-01','2020-08-05 23:24:54','2020-08-05 23:24:54');
/*!40000 ALTER TABLE `tb_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_persons`
--

DROP TABLE IF EXISTS `tb_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_persons` (
  `idperson` int(11) NOT NULL AUTO_INCREMENT,
  `desperson` varchar(128) DEFAULT NULL,
  `desnick` varchar(128) DEFAULT NULL,
  `nrcountryarea` int(4) DEFAULT NULL,
  `nrddd` int(2) DEFAULT NULL,
  `nrphone` bigint(20) DEFAULT NULL,
  `intypedoc` tinyint(4) DEFAULT NULL,
  `desdocument` varchar(14) DEFAULT NULL,
  `desphoto` varchar(256) DEFAULT NULL,
  `desextension` varchar(4) DEFAULT NULL,
  `dtbirth` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_persons`
--

LOCK TABLES `tb_persons` WRITE;
/*!40000 ALTER TABLE `tb_persons` DISABLE KEYS */;
INSERT INTO `tb_persons` VALUES (1,'Jose Paulo de Carvalho Cambraia','Jose',55,31,984050125,0,'01224202686','0.jpg','jpg','1980-02-23','2019-10-12 14:15:04'),(81,'Jose Paulo Carvalho','Jose',55,31,31313131,0,'01224202686','0.jpg','jpg','2000-01-01','2020-08-05 23:23:21'),(84,'','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-04-24 19:38:50'),(85,'','',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-04-24 20:55:59'),(86,'Jose Paulo','Jose',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-04-24 23:38:39'),(89,'Nivaldo soares','Nivaldo',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-09-06 16:38:40'),(92,'Marcio da Silva Braziel ','Marcio',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-09-06 17:54:54'),(93,'Clesio Sergio Bastian ','Clesio',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-09-06 17:55:10'),(94,'Elisangela Ap Souza','Elisangela',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-09-06 18:05:59'),(95,'Expedito servulo de lima','Expedito',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-09-06 18:10:06'),(96,'Ageu William meira','Ageu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-09-06 18:10:19');
/*!40000 ALTER TABLE `tb_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_plans`
--

DROP TABLE IF EXISTS `tb_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plans` (
  `idplan` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `inplancode` int(3) DEFAULT NULL,
  `incontext` tinyint(4) DEFAULT NULL,
  `inmigration` tinyint(4) DEFAULT NULL,
  `inperiod` tinyint(4) DEFAULT NULL,
  `desplan` varchar(128) DEFAULT NULL,
  `vlprice` decimal(10,2) DEFAULT NULL,
  `dtbegin` date DEFAULT NULL,
  `dtend` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idplan`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_plans`
--

LOCK TABLES `tb_plans` WRITE;
/*!40000 ALTER TABLE `tb_plans` DISABLE KEYS */;
INSERT INTO `tb_plans` VALUES (1,1,312,NULL,0,12,'Plano Gold',224.90,'2019-10-12','2020-10-12','2019-10-12 14:16:39'),(2,2,104,NULL,0,4,'Plano Basic',62.90,'2019-10-12','2020-02-12','2019-10-12 14:38:20'),(3,3,203,NULL,0,3,'Plano Classic',84.90,'2019-10-12','2020-01-12','2019-10-12 14:40:26'),(4,4,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 14:47:06'),(5,5,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:28:33'),(6,6,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:31:56'),(7,7,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:34:56'),(8,8,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:37:54'),(9,9,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:39:27'),(10,10,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:42:58'),(11,10,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:45:41'),(12,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:48:50'),(13,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:49:30'),(14,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:49:50'),(15,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:50:36'),(16,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:51:46'),(17,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:52:55'),(18,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:53:13'),(19,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:53:44'),(20,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 15:54:13'),(21,11,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 17:27:20'),(22,12,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-12','2019-10-22','2019-10-12 17:30:52'),(23,13,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-12','2019-10-22','2019-10-12 17:32:44'),(24,14,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-12','2019-10-22','2019-10-12 17:34:12'),(25,15,103,NULL,0,3,'Plano Basic',35.63,'2019-10-12','2020-01-12','2019-10-12 17:47:36'),(26,16,203,NULL,0,3,'Plano Classic',84.90,'2019-10-12','2020-01-12','2019-10-12 17:55:27'),(27,17,303,NULL,0,3,'Plano Gold',91.63,'2019-10-12','2020-01-12','2019-10-12 17:59:42'),(28,18,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-12','2019-10-22','2019-10-12 18:01:53'),(29,18,203,NULL,0,3,'Plano Classic',59.43,'2019-10-12','2020-01-12','2019-10-12 18:34:52'),(30,19,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-23','2019-11-02','2019-10-23 19:59:28'),(31,21,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-26','2019-11-05','2019-10-26 20:51:05'),(32,22,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-26','2019-11-05','2019-10-26 21:12:22'),(33,22,103,NULL,0,3,'Plano Basic',29.34,'2019-10-26','2020-01-26','2019-10-26 21:22:25'),(34,23,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-26','2019-11-05','2019-10-26 21:46:51'),(35,23,204,NULL,0,4,'Plano Classic',57.54,'2019-10-26','2020-02-26','2019-10-26 21:48:52'),(36,24,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-10-26','2019-11-05','2019-10-26 21:56:26'),(37,24,303,NULL,0,3,'Plano Gold',72.54,'2019-10-26','2020-01-26','2019-10-26 21:57:28'),(38,25,103,NULL,0,6,'Plano Gold',0.00,'2019-11-08','2020-05-08','2019-11-08 23:15:29'),(39,25,103,NULL,0,6,'Plano Gold',0.00,'2019-11-08','2020-05-08','2019-11-08 23:17:45'),(40,25,103,NULL,0,6,'Plano Gold',0.00,'2019-11-08','2020-05-08','2019-11-08 23:22:41'),(41,26,112,NULL,0,6,'Plano Gold',0.00,'2019-11-08','2020-05-08','2019-11-08 23:37:10'),(42,27,103,NULL,0,6,'Plano Gold',0.00,'2019-11-08','2020-05-08','2019-11-08 23:47:52'),(43,28,306,NULL,0,6,'Plano Gold',0.00,'2019-11-08','2020-05-08','2019-11-09 00:00:24'),(44,29,103,NULL,0,3,'Plano Basic',48.90,'2019-11-09','2020-02-09','2019-11-09 03:21:16'),(45,30,306,NULL,0,6,'Plano Gold',0.00,'2019-11-09','2020-05-09','2019-11-09 19:12:46'),(46,31,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-09 21:10:09'),(47,32,103,NULL,0,3,'Plano Basic',48.90,'2019-11-09','2020-02-09','2019-11-09 21:38:10'),(48,32,103,NULL,0,3,'Plano Basic',48.90,'2019-11-09','2020-02-09','2019-11-09 21:40:25'),(49,32,306,NULL,0,6,'Plano Gold',0.00,'2019-11-09','2020-05-09','2019-11-09 21:53:07'),(50,33,103,NULL,0,3,'Plano Basic',48.90,'2019-11-09','2020-02-09','2019-11-09 21:59:30'),(51,34,203,NULL,0,3,'Plano Classic',84.90,'2019-11-09','2020-02-09','2019-11-09 22:04:55'),(52,35,303,NULL,0,3,'Plano Gold',120.90,'2019-11-09','2020-02-09','2019-11-09 22:06:53'),(53,36,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-09 22:10:24'),(54,37,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-09 22:17:21'),(55,38,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-09 22:24:19'),(56,39,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-09 22:28:26'),(57,39,306,NULL,0,6,'Plano Gold',0.00,'2019-11-09','2020-05-09','2019-11-10 01:06:51'),(58,40,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-10 01:09:37'),(59,40,203,NULL,0,3,'Plano Classic',84.90,'2019-11-09','2020-02-09','2019-11-10 01:10:38'),(60,41,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-10 01:11:35'),(61,41,103,NULL,0,3,'Plano Basic',48.90,'2019-11-09','2020-02-09','2019-11-10 01:12:18'),(62,42,0,NULL,0,10,'Plano 10 Dias Free',0.00,'2019-11-09','2019-11-19','2019-11-10 01:13:00'),(63,42,303,NULL,0,3,'Plano Gold',120.90,'2019-11-09','2020-02-09','2019-11-10 01:13:50'),(64,43,203,NULL,0,3,'Plano Classic',42.45,'2019-11-10','2020-02-10','2019-11-10 14:53:54'),(65,44,203,NULL,0,3,'Plano Classic',42.45,'2019-11-11','2020-02-11','2019-11-11 15:03:44'),(66,45,103,NULL,0,3,'Plano Basic',48.90,'2019-11-12','2020-02-12','2019-11-12 03:48:34'),(67,46,103,NULL,0,3,'Plano Basic',48.90,'2019-11-12','2020-02-12','2019-11-12 18:20:57'),(68,46,103,NULL,0,3,'Plano Basic',48.90,'2019-11-12','2020-02-12','2019-11-12 18:24:39'),(69,47,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-11-19','2019-11-29','2019-11-19 16:42:44'),(70,48,104,1,0,4,'Plano Basic',62.90,'2019-11-24','2020-03-24','2019-11-24 18:58:26'),(71,48,104,1,0,4,'Plano Basic',62.90,'2019-11-24','2020-03-24','2019-11-24 19:02:20'),(72,49,103,1,0,3,'Plano Basic',48.90,'2019-11-24','2020-02-24','2019-11-24 20:12:17'),(73,62,103,1,0,3,'Plano Basic',48.90,'2019-12-12','2020-03-12','2019-12-12 14:44:01'),(74,63,203,2,0,3,'Plano Classic',42.45,'2019-12-12','2020-03-12','2019-12-12 15:04:05'),(75,64,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-12','2019-12-22','2019-12-12 17:32:56'),(76,64,203,2,0,3,'Plano Classic',42.45,'2019-12-12','2020-03-12','2019-12-12 17:51:47'),(77,64,204,2,1,4,'Plano Classic',95.90,'2020-03-13','2020-07-13','2019-12-12 18:02:15'),(78,64,304,3,2,4,'Plano Gold',143.90,'2019-12-12','2020-07-13','2019-12-12 18:10:42'),(79,65,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-12','2019-12-22','2019-12-12 18:36:10'),(80,65,103,1,0,3,'Plano Basic',48.90,'2019-12-12','2020-03-12','2019-12-12 18:37:21'),(81,65,103,1,1,3,'Plano Basic',48.90,'2020-03-13','2020-06-13','2019-12-12 18:43:51'),(82,65,303,3,2,3,'Plano Gold',120.90,'2019-12-12','2020-06-13','2019-12-12 20:04:33'),(83,66,103,1,0,3,'Plano Basic',48.90,'2019-12-15','2020-03-15','2019-12-15 14:47:52'),(84,67,103,1,0,3,'Plano Basic',48.90,'2019-12-15','2020-03-15','2019-12-15 21:35:16'),(85,68,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-15','2019-12-25','2019-12-15 22:55:27'),(86,68,103,1,0,3,'Plano Basic',48.90,'2019-12-15','2020-03-15','2019-12-15 23:14:05'),(87,69,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-16','2019-12-26','2019-12-16 12:48:00'),(88,69,103,1,0,3,'Plano Basic',48.90,'2019-12-16','2020-03-16','2019-12-16 12:50:56'),(89,70,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-16','2019-12-26','2019-12-16 12:52:45'),(90,70,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 12:53:23'),(91,70,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 12:53:46'),(92,70,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 12:54:14'),(93,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:10:36'),(94,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:12:19'),(95,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:13:21'),(96,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:13:43'),(97,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:14:07'),(98,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:14:23'),(99,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:14:43'),(100,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:14:54'),(101,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:15:27'),(102,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:16:57'),(103,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:17:21'),(104,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:18:14'),(105,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:19:12'),(106,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:21:04'),(107,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:21:37'),(108,70,203,2,1,3,'Plano Classic',84.90,'2020-03-17','2020-06-17','2019-12-16 13:28:42'),(109,70,203,2,1,3,'Plano Classic',84.90,'2020-06-18','2020-09-18','2019-12-16 13:32:08'),(110,71,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-16','2019-12-26','2019-12-16 15:17:46'),(111,71,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 15:20:50'),(112,71,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 15:22:00'),(113,71,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 15:23:39'),(114,71,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 15:24:16'),(115,71,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 15:25:12'),(116,72,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-16','2019-12-26','2019-12-16 15:25:55'),(117,72,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 15:26:43'),(118,73,103,1,0,3,'Plano Basic',48.90,'2019-12-16','2020-03-16','2019-12-16 17:16:18'),(119,74,203,2,0,3,'Plano Classic',84.90,'2019-12-16','2020-03-16','2019-12-16 17:24:26'),(120,75,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-16','2019-12-26','2019-12-16 17:29:09'),(121,76,0,0,0,10,'Plano 10 Dias Free',0.00,'2019-12-16','2019-12-26','2019-12-16 19:36:28'),(122,77,103,1,0,3,'Plano Basic',48.90,'2020-02-11','2020-05-11','2020-02-12 02:54:27'),(123,79,106,1,0,6,'Plano Basic',79.90,'2020-08-04','2021-02-04','2020-08-04 19:15:32'),(124,80,106,1,0,6,'Plano Basic',79.90,'2020-08-04','2021-02-04','2020-08-04 23:07:10'),(125,81,0,0,0,10,'Plano 10 Dias Free',0.00,'2020-08-05','2020-08-15','2020-08-05 23:23:21'),(126,81,206,2,0,6,'Plano Classic',109.90,'2020-08-05','2021-02-05','2020-08-05 23:24:50');
/*!40000 ALTER TABLE `tb_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_plans_backup`
--

DROP TABLE IF EXISTS `tb_plans_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plans_backup` (
  `idplan` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `inplancode` int(3) DEFAULT NULL,
  `inmigration` tinyint(4) DEFAULT NULL,
  `inperiod` tinyint(4) DEFAULT NULL,
  `desplan` varchar(128) DEFAULT NULL,
  `vlprice` decimal(10,2) DEFAULT NULL,
  `dtbegin` date DEFAULT NULL,
  `dtend` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idplan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_plans_backup`
--

LOCK TABLES `tb_plans_backup` WRITE;
/*!40000 ALTER TABLE `tb_plans_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_plans_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_products` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `incategory` tinyint(4) DEFAULT NULL,
  `desproduct` varchar(64) NOT NULL,
  `vlprice` decimal(10,2) DEFAULT NULL,
  `desphoto` varchar(256) DEFAULT NULL,
  `desextension` varchar(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,21,16,'Di??rias do Hotel',1700.00,'1.jpg','jpg','2019-11-01 13:11:06'),(2,44,12,'Cama King Size',100.00,'2.jpg','jpg','2019-11-11 15:09:22'),(3,46,11,'Kit Caipirinha',100.00,'3.jpg','jpg','2019-11-12 18:25:55'),(4,49,11,'Kit Caipirinha',100.00,'4.jpg','jpg','2019-11-25 13:45:15'),(5,49,11,'Adega',1000.00,'5.jpg','jpg','2019-12-10 20:14:07'),(6,49,11,'Adega climatizada',2000.00,'6.jpg','jpg','2019-12-10 20:20:52'),(7,49,14,'Frigobar',1800.00,'7.jpg','jpg','2019-12-10 20:30:52'),(8,49,17,'Mesa de sinuca',1000.00,'8.jpg','jpg','2019-12-10 20:31:48'),(9,49,11,'Adega',1000.00,'9.jpg','jpg','2019-12-10 23:09:04'),(10,49,11,'Espumante',500.00,'10.jpg','jpg','2019-12-10 23:09:13'),(11,66,11,'Adega',1000.00,'11.jpg','jpg','2019-12-15 19:18:07'),(12,66,11,'Presente1',100.00,'12.jpg','jpg','2019-12-15 19:18:30'),(13,67,11,'Kit Caipirinha',100.00,'13.jpg','jpg','2019-12-15 21:35:42'),(14,73,11,'Kit Caipirinha',100.00,'14.jpg','jpg','2019-12-16 17:17:52'),(15,74,11,'Kit Caipirinha',100.00,'15.jpg','jpg','2019-12-16 17:26:37');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productsconfig`
--

DROP TABLE IF EXISTS `tb_productsconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productsconfig` (
  `idproductconfig` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `incharge` tinyint(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idproductconfig`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productsconfig`
--

LOCK TABLES `tb_productsconfig` WRITE;
/*!40000 ALTER TABLE `tb_productsconfig` DISABLE KEYS */;
INSERT INTO `tb_productsconfig` VALUES (1,1,0,'2019-10-12 14:15:06'),(2,2,0,'2019-10-12 14:37:36'),(3,3,0,'2019-10-12 14:39:28'),(4,4,0,'2019-10-12 14:41:25'),(5,5,0,'2019-10-12 15:27:31'),(6,6,0,'2019-10-12 15:31:03'),(7,7,0,'2019-10-12 15:33:45'),(8,8,0,'2019-10-12 15:37:11'),(9,9,0,'2019-10-12 15:38:51'),(10,10,0,'2019-10-12 15:42:13'),(11,11,0,'2019-10-12 15:47:30'),(12,12,0,'2019-10-12 17:30:52'),(13,13,0,'2019-10-12 17:32:44'),(14,14,0,'2019-10-12 17:34:12'),(15,15,0,'2019-10-12 17:46:13'),(16,16,0,'2019-10-12 17:54:32'),(17,17,0,'2019-10-12 17:58:38'),(18,18,0,'2019-10-12 18:01:53'),(19,19,0,'2019-10-23 19:59:29'),(20,20,0,'2019-10-23 20:00:20'),(21,21,0,'2019-10-26 20:51:06'),(22,22,0,'2019-10-26 21:12:23'),(23,23,0,'2019-10-26 21:46:52'),(24,24,0,'2019-10-26 21:56:26'),(25,25,0,'2019-11-08 18:09:54'),(26,26,0,'2019-11-08 23:35:51'),(27,27,0,'2019-11-08 23:37:51'),(28,28,0,'2019-11-08 23:49:51'),(29,29,0,'2019-11-09 02:12:46'),(30,30,0,'2019-11-09 19:08:33'),(31,31,0,'2019-11-09 21:10:09'),(32,32,0,'2019-11-09 21:10:41'),(33,33,0,'2019-11-09 21:57:50'),(34,34,0,'2019-11-09 22:04:06'),(35,35,0,'2019-11-09 22:05:52'),(36,36,0,'2019-11-09 22:10:24'),(37,37,0,'2019-11-09 22:17:21'),(38,38,0,'2019-11-09 22:24:19'),(39,39,0,'2019-11-09 22:28:27'),(40,40,0,'2019-11-10 01:09:38'),(41,41,0,'2019-11-10 01:11:35'),(42,42,0,'2019-11-10 01:13:00'),(43,43,0,'2019-11-10 14:40:49'),(44,44,0,'2019-11-11 14:29:23'),(45,45,0,'2019-11-12 03:47:37'),(46,46,0,'2019-11-12 18:19:26'),(47,47,0,'2019-11-19 16:42:44'),(48,48,0,'2019-11-24 18:55:16'),(49,49,1,'2019-11-24 20:10:01'),(50,50,0,'2019-12-12 13:56:52'),(51,51,0,'2019-12-12 14:21:17'),(52,52,0,'2019-12-12 14:26:39'),(53,53,0,'2019-12-12 14:28:10'),(54,54,0,'2019-12-12 14:30:46'),(55,55,0,'2019-12-12 14:31:00'),(56,56,0,'2019-12-12 14:32:08'),(57,57,0,'2019-12-12 14:32:34'),(58,58,0,'2019-12-12 14:32:48'),(59,59,0,'2019-12-12 14:33:38'),(60,60,0,'2019-12-12 14:33:55'),(61,61,0,'2019-12-12 14:34:06'),(62,62,0,'2019-12-12 14:42:00'),(63,63,0,'2019-12-12 14:54:22'),(64,64,0,'2019-12-12 17:32:56'),(65,65,0,'2019-12-12 18:36:10'),(66,66,0,'2019-12-15 14:25:08'),(67,67,0,'2019-12-15 21:34:40'),(68,68,0,'2019-12-15 22:55:27'),(69,69,0,'2019-12-16 12:48:01'),(70,70,0,'2019-12-16 12:52:46'),(71,71,0,'2019-12-16 15:17:47'),(72,72,0,'2019-12-16 15:25:55'),(73,73,0,'2019-12-16 17:15:21'),(74,74,0,'2019-12-16 17:23:33'),(75,75,0,'2019-12-16 17:29:09'),(76,76,0,'2019-12-16 19:36:28'),(77,77,0,'2020-02-12 02:50:41'),(78,78,0,'2020-03-31 05:12:37'),(79,79,0,'2020-08-04 19:08:09'),(80,80,0,'2020-08-04 23:06:01'),(81,81,0,'2020-08-05 23:23:22');
/*!40000 ALTER TABLE `tb_productsconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ratings`
--

DROP TABLE IF EXISTS `tb_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ratings` (
  `idrating` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `inrate1` tinyint(11) DEFAULT 0,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idrating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ratings`
--

LOCK TABLES `tb_ratings` WRITE;
/*!40000 ALTER TABLE `tb_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sequences`
--

DROP TABLE IF EXISTS `tb_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sequences` (
  `idsequence` int(11) NOT NULL AUTO_INCREMENT,
  `idcampaign` int(11) NOT NULL,
  `idusername` int(11) NOT NULL,
  `insent` tinyint(4) DEFAULT 0,
  `dessubject` varchar(64) DEFAULT NULL,
  `destemplate` varchar(64) DEFAULT NULL,
  `dtsent` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idsequence`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sequences`
--

LOCK TABLES `tb_sequences` WRITE;
/*!40000 ALTER TABLE `tb_sequences` DISABLE KEYS */;
INSERT INTO `tb_sequences` VALUES (1,2,5,0,'Boleto Impresso!','template20210523',NULL,'2021-05-30 23:39:30'),(2,2,3,0,'Boleto Impresso222222222222','template2021052222222',NULL,'2021-05-30 23:47:08'),(4,3,7,1,'Ultima Chance!','volumao-boleto','2021-09-06 14:48:54','2021-09-06 17:37:42'),(5,4,7,1,'Seu Gel Volumao esta esperando!','volumao-boleto','2021-09-06 14:38:46','2021-09-06 17:38:32'),(6,5,8,1,'Seu HotGel esta esperando!','hotgel-boleto','2021-09-06 14:57:41','2021-09-06 17:56:07'),(7,6,8,1,'Seu HotGel esta esperando!','hotgel-boleto','2021-09-06 14:56:52','2021-09-06 17:56:35'),(8,7,8,1,'Seu HotGel esta esperando!','hotgel-boleto','2021-09-06 14:59:38','2021-09-06 17:59:22'),(9,9,9,1,'Seu Sinedrol esta esperando!','sinedrol-boleto','2021-09-06 15:07:01','2021-09-06 18:06:49'),(10,8,9,1,'Queremos despachar o seu Sinedrol!','sinedrol-boleto','2021-09-06 15:08:20','2021-09-06 18:08:06'),(11,10,7,1,'Ultima Chance!','volumao-boleto-ultima-chance','2021-09-06 15:12:00','2021-09-06 18:11:45'),(12,11,7,1,'Ultima Chance!','volumao-cancelada-ultima-chance','2021-09-06 15:12:49','2021-09-06 18:12:35');
/*!40000 ALTER TABLE `tb_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_socialmedias`
--

DROP TABLE IF EXISTS `tb_socialmedias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_socialmedias` (
  `idsocialmedia` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `desfacelink1` varchar(256) DEFAULT NULL,
  `desfacelink2` varchar(256) DEFAULT NULL,
  `desfacelink3` varchar(256) DEFAULT NULL,
  `desinstalink1` varchar(256) DEFAULT NULL,
  `desinstalink2` varchar(256) DEFAULT NULL,
  `desinstalink3` varchar(256) DEFAULT NULL,
  `desyoutubelink1` varchar(256) DEFAULT NULL,
  `desyoutubelink2` varchar(256) DEFAULT NULL,
  `desyoutubelink3` varchar(256) DEFAULT NULL,
  `destwitterlink1` varchar(256) DEFAULT NULL,
  `destwitterlink2` varchar(256) DEFAULT NULL,
  `destwitterlink3` varchar(256) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idsocialmedia`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_socialmedias`
--

LOCK TABLES `tb_socialmedias` WRITE;
/*!40000 ALTER TABLE `tb_socialmedias` DISABLE KEYS */;
INSERT INTO `tb_socialmedias` VALUES (1,1,'','','','','','','','','','','','','2019-10-12 14:15:06'),(2,2,'','','','','','','','','','','','','2019-10-12 14:37:36'),(3,3,'','','','','','','','','','','','','2019-10-12 14:39:28'),(4,4,'','','','','','','','','','','','','2019-10-12 14:41:25'),(5,5,'','','','','','','','','','','','','2019-10-12 15:27:31'),(6,6,'','','','','','','','','','','','','2019-10-12 15:31:04'),(7,7,'','','','','','','','','','','','','2019-10-12 15:33:45'),(8,8,'','','','','','','','','','','','','2019-10-12 15:37:11'),(9,9,'','','','','','','','','','','','','2019-10-12 15:38:51'),(10,10,'','','','','','','','','','','','','2019-10-12 15:42:13'),(11,11,'','','','','','','','','','','','','2019-10-12 15:47:30'),(12,12,'','','','','','','','','','','','','2019-10-12 17:30:52'),(13,13,'','','','','','','','','','','','','2019-10-12 17:32:44'),(14,14,'','','','','','','','','','','','','2019-10-12 17:34:12'),(15,15,'','','','','','','','','','','','','2019-10-12 17:46:13'),(16,16,'','','','','','','','','','','','','2019-10-12 17:54:32'),(17,17,'','','','','','','','','','','','','2019-10-12 17:58:38'),(18,18,'','','','','','','','','','','','','2019-10-12 18:01:54'),(19,19,'','','','','','','','','','','','','2019-10-23 19:59:29'),(20,20,'','','','','','','','','','','','','2019-10-23 20:00:20'),(21,21,'','','','','','','','','','','','','2019-10-26 20:51:06'),(22,22,'','','','','','','','','','','','','2019-10-26 21:12:23'),(23,23,'','','','','','','','','','','','','2019-10-26 21:46:52'),(24,24,'','','','','','','','','','','','','2019-10-26 21:56:26'),(25,25,'','','','','','','','','','','','','2019-11-08 18:09:54'),(26,26,'','','','','','','','','','','','','2019-11-08 23:35:51'),(27,27,'','','','','','','','','','','','','2019-11-08 23:37:51'),(28,28,'','','','','','','','','','','','','2019-11-08 23:49:51'),(29,29,'','','','','','','','','','','','','2019-11-09 02:12:46'),(30,30,'','','','','','','','','','','','','2019-11-09 19:08:33'),(31,31,'','','','','','','','','','','','','2019-11-09 21:10:09'),(32,32,'','','','','','','','','','','','','2019-11-09 21:10:41'),(33,33,'','','','','','','','','','','','','2019-11-09 21:57:51'),(34,34,'','','','','','','','','','','','','2019-11-09 22:04:06'),(35,35,'','','','','','','','','','','','','2019-11-09 22:05:52'),(36,36,'','','','','','','','','','','','','2019-11-09 22:10:24'),(37,37,'','','','','','','','','','','','','2019-11-09 22:17:21'),(38,38,'','','','','','','','','','','','','2019-11-09 22:24:19'),(39,39,'','','','','','','','','','','','','2019-11-09 22:28:27'),(40,40,'','','','','','','','','','','','','2019-11-10 01:09:38'),(41,41,'','','','','','','','','','','','','2019-11-10 01:11:35'),(42,42,'','','','','','','','','','','','','2019-11-10 01:13:00'),(43,43,'','','','','','','','','','','','','2019-11-10 14:40:49'),(44,44,'','','','','','','','','','','','','2019-11-11 14:29:23'),(45,45,'','','','','','','','','','','','','2019-11-12 03:47:37'),(46,46,'','','','','','','','','','','','','2019-11-12 18:19:26'),(47,47,'','','','','','','','','','','','','2019-11-19 16:42:44'),(48,48,'','','','','','','','','','','','','2019-11-24 18:55:16'),(49,49,'','','','','','','','','','','','','2019-11-24 20:10:01'),(50,61,'','','','','','','','','','','','','2019-12-12 14:34:07'),(51,62,'','','','','','','','','','','','','2019-12-12 14:42:00'),(52,63,'','','','','','','','','','','','','2019-12-12 14:54:23'),(53,64,'','','','','','','','','','','','','2019-12-12 17:32:56'),(54,65,'','','','','','','','','','','','','2019-12-12 18:36:10'),(55,66,'','','','','','','','','','','','','2019-12-15 14:25:09'),(56,67,'','','','','','','','','','','','','2019-12-15 21:34:40'),(57,68,'','','','','','','','','','','','','2019-12-15 22:55:27'),(58,69,'','','','','','','','','','','','','2019-12-16 12:48:01'),(59,70,'','','','','','','','','','','','','2019-12-16 12:52:46'),(60,71,'','','','','','','','','','','','','2019-12-16 15:17:47'),(61,72,'','','','','','','','','','','','','2019-12-16 15:25:55'),(62,73,'','','','','','','','','','','','','2019-12-16 17:15:21'),(63,74,'','','','','','','','','','','','','2019-12-16 17:23:33'),(64,75,'','','','','','','','','','','','','2019-12-16 17:29:10'),(65,76,'','','','','','','','','','','','','2019-12-16 19:36:28'),(66,77,'','','','','','','','','','','','','2020-02-12 02:50:41'),(67,78,'','','','','','','','','','','','','2020-03-31 05:12:37'),(68,79,'','','','','','','','','','','','','2020-08-04 19:08:09'),(69,80,'','','','','','','','','','','','','2020-08-04 23:06:01'),(70,81,'','','','','','','','','','','','','2020-08-05 23:23:22');
/*!40000 ALTER TABLE `tb_socialmedias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_states`
--

DROP TABLE IF EXISTS `tb_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_states` (
  `idstate` int(2) NOT NULL,
  `desstate` varchar(20) DEFAULT NULL,
  `desstatecode` varchar(2) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idstate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_states`
--

LOCK TABLES `tb_states` WRITE;
/*!40000 ALTER TABLE `tb_states` DISABLE KEYS */;
INSERT INTO `tb_states` VALUES (1,'Acre','AC','2019-06-12 18:07:28'),(2,'Alagoas','AL','2019-06-12 18:07:28'),(3,'Amazonas','AM','2019-06-12 18:07:28'),(4,'Amap??','AP','2019-06-12 18:07:28'),(5,'Bahia','BA','2019-06-12 18:07:28'),(6,'Cear??','CE','2019-06-12 18:07:28'),(7,'Distrito Federal','DF','2019-06-12 18:07:28'),(8,'Esp??rito Santo','ES','2019-06-12 18:07:28'),(9,'Goi??s','GO','2019-06-12 18:07:28'),(10,'Maranh??o','MA','2019-06-12 18:07:28'),(11,'Minas Gerais','MG','2019-06-12 18:07:28'),(12,'Mato Grosso do Sul','MS','2019-06-12 18:07:28'),(13,'Mato Grosso','MT','2019-06-12 18:07:28'),(14,'Par??','PA','2019-06-12 18:07:28'),(15,'Para??ba','PB','2019-06-12 18:07:28'),(16,'Pernambuco','PE','2019-06-12 18:07:28'),(17,'Piau??','PI','2019-06-12 18:07:28'),(18,'Paran??','PR','2019-06-12 18:07:28'),(19,'Rio de Janeiro','RJ','2019-06-12 18:07:28'),(20,'Rio Grande do Norte','RN','2019-06-12 18:07:28'),(21,'Rond??nia','RO','2019-06-12 18:07:28'),(22,'Roraima','RR','2019-06-12 18:07:28'),(23,'Rio Grande do Sul','RS','2019-06-12 18:07:28'),(24,'Santa Catarina','SC','2019-06-12 18:07:28'),(25,'Sergipe','SE','2019-06-12 18:07:28'),(26,'S??o Paulo','SP','2019-06-12 18:07:28'),(27,'Tocantins','TO','2019-06-12 18:07:28');
/*!40000 ALTER TABLE `tb_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_testimonials`
--

DROP TABLE IF EXISTS `tb_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_testimonials` (
  `idtestimonial` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `instatus` tinyint(4) DEFAULT 1,
  `insample` tinyint(4) DEFAULT 0,
  `inrating` tinyint(4) DEFAULT 0,
  `desdescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idtestimonial`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_testimonials`
--

LOCK TABLES `tb_testimonials` WRITE;
/*!40000 ALTER TABLE `tb_testimonials` DISABLE KEYS */;
INSERT INTO `tb_testimonials` VALUES (1,43,1,0,9,'Melhor site ever! ever!????????','2019-11-10 22:06:52'),(2,44,1,0,0,'','2019-11-11 14:29:23'),(3,45,1,0,0,'','2019-11-12 03:47:37'),(4,46,1,0,0,'','2019-11-12 18:19:26'),(5,47,1,0,0,'','2019-11-19 16:42:44'),(6,48,1,0,0,'','2019-11-24 18:55:16'),(7,49,1,0,0,'','2019-11-24 20:10:01'),(8,61,1,0,0,'','2019-12-12 14:34:07'),(9,62,1,0,0,'','2019-12-12 14:42:00'),(10,63,1,0,0,'','2019-12-12 14:54:23'),(11,64,1,0,0,'','2019-12-12 17:32:56'),(12,65,1,0,0,'','2019-12-12 18:36:10'),(13,66,1,0,0,'','2019-12-15 14:25:09'),(14,67,1,0,0,'','2019-12-15 21:34:40'),(15,68,1,0,0,'','2019-12-15 22:55:27'),(16,69,1,0,0,'','2019-12-16 12:48:01'),(17,70,1,0,0,'','2019-12-16 12:52:46'),(18,71,1,0,0,'','2019-12-16 15:17:47'),(19,72,1,0,0,'','2019-12-16 15:25:55'),(20,73,1,0,0,'','2019-12-16 17:15:21'),(21,74,1,0,0,'','2019-12-16 17:23:33'),(22,75,1,0,0,'','2019-12-16 17:29:10'),(23,76,1,0,0,'','2019-12-16 19:36:28'),(24,77,1,0,0,'','2020-02-12 02:50:41'),(25,78,1,0,0,'','2020-03-31 05:12:37'),(26,79,1,0,0,'','2020-08-04 19:08:09'),(27,80,1,0,0,'','2020-08-04 23:06:01'),(28,81,1,0,0,'','2020-08-05 23:23:22');
/*!40000 ALTER TABLE `tb_testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_transfers`
--

DROP TABLE IF EXISTS `tb_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_transfers` (
  `idtransfer` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `destransfercode` varchar(22) DEFAULT NULL,
  `intransferstatus` tinyint(4) DEFAULT NULL,
  `destransferholdername` varchar(128) DEFAULT NULL,
  `desbanknumber` varchar(4) DEFAULT NULL,
  `desagencynumber` varchar(11) DEFAULT NULL,
  `desagencycheck` varchar(2) DEFAULT NULL,
  `desaccounttype` varchar(22) DEFAULT NULL,
  `desaccountnumber` varchar(11) DEFAULT NULL,
  `desaccountcheck` varchar(2) DEFAULT NULL,
  `vlamount` decimal(10,2) DEFAULT NULL,
  `dtlastwebhook` timestamp NULL DEFAULT current_timestamp(),
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idtransfer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_transfers`
--

LOCK TABLES `tb_transfers` WRITE;
/*!40000 ALTER TABLE `tb_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usernames`
--

DROP TABLE IF EXISTS `tb_usernames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usernames` (
  `idusername` int(11) NOT NULL AUTO_INCREMENT,
  `idmachine` int(11) NOT NULL,
  `indeleted` tinyint(4) DEFAULT NULL,
  `nrport` int(11) DEFAULT NULL,
  `deshost` varchar(64) DEFAULT NULL,
  `desnamefrom` varchar(128) DEFAULT NULL,
  `desusername` varchar(64) DEFAULT NULL,
  `desunpassword` varchar(256) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idusername`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usernames`
--

LOCK TABLES `tb_usernames` WRITE;
/*!40000 ALTER TABLE `tb_usernames` DISABLE KEYS */;
INSERT INTO `tb_usernames` VALUES (7,6,0,587,'br958.hostgator.com.br','Volum??o','contato@gelvolumao.oficial-acessar.com.br','KlE%af!eDGfA','2021-09-06 16:42:21'),(8,7,0,587,'br958.hostgator.com.br','HotGel','contato@hotgel.oficial-acessar.com.br','KlE%af!eDGfA','2021-09-06 17:54:17'),(9,8,0,587,'br958.hostgator.com.br','Sinedrol','contato@sinedrol.oficial-acessar.com.br','KlE%af!eDGfA','2021-09-06 18:04:39');
/*!40000 ALTER TABLE `tb_usernames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `despassword` varchar(256) NOT NULL,
  `instatus` tinyint(4) DEFAULT 1,
  `inautostatus` tinyint(4) DEFAULT 1,
  `inadmin` tinyint(4) DEFAULT 0,
  `inlead` tinyint(4) DEFAULT 0,
  `inseller` tinyint(4) DEFAULT 0,
  `inbuyer` tinyint(4) DEFAULT 0,
  `inregister` tinyint(4) DEFAULT 0,
  `inaccount` tinyint(4) DEFAULT 0,
  `interms` tinyint(4) DEFAULT 0,
  `desipterms` varchar(22) DEFAULT NULL,
  `dtterms` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,1,'paulowebphp@gmail.com','$2y$12$jFCHQ/fq.1lGn3KiTvULf.DlQ5XSDpTkJqTtPmxrrEH8jQoQp7gzW',1,1,1,0,1,1,1,1,1,'127.0.0.1','2019-10-12 11:16:17','2019-10-12 14:15:04'),(81,81,'jpccambraia2@gmail.com','$2y$12$ZVLilVUTjHh8s4407XlACulED8wrsjx/BFnZedyI4xdbdfgMr.hSW',1,1,1,1,0,0,1,0,0,'127.0.0.1','0000-00-00 00:00:00','2020-08-05 23:23:21'),(86,86,'jpccambraia@gmail.com','$2y$12$S7C2i.moiSFUI60UVni1aumOSHAYzXqKVBxQuzR7Q0./FKUWoVLkW',1,1,0,1,0,0,0,0,0,'127.0.0.1',NULL,'2021-04-24 23:38:39'),(89,89,'sitioaparecida2324@gmail.com','$2y$12$Us5yZHQC8dJ9hh.kHLDStuBe7o5igEWbmAKOFGI8.WUSH78Aarp0O',1,1,0,1,0,0,0,0,0,'127.0.0.1',NULL,'2021-09-06 16:38:40'),(92,92,'leaobraziel@gmail.com','$2y$12$iDJdgoP.X0.EfBldaYDWBeBgfP0sXE0V4vJvpRgfrNEtWU.3OPE3e',1,1,0,1,0,0,0,0,0,'127.0.0.1',NULL,'2021-09-06 17:54:54'),(93,93,'bastianeng@hotmail.com','$2y$12$jXHzHE4UOJk61BBw7gDgSeDqrJueE8dY2J6O6RmA20vw1aeYKSH3y',1,1,0,1,0,0,0,0,0,'127.0.0.1',NULL,'2021-09-06 17:55:10'),(94,94,'lilajke@hotmail.com','$2y$12$1ZpsRDyTR3AQIije.P/3f.TO99CGNnq//6HSfPj7oL8J4nxOFv71S',1,1,0,1,0,0,0,0,0,'127.0.0.1',NULL,'2021-09-06 18:05:59'),(95,95,'servuloexpedito28@gmail.com','$2y$12$YtnF/o7WhcZvV.OitoblxecS7bUOYGEA8EEA9MYIRIr4Qv57a5n76',1,1,0,1,0,0,0,0,0,'127.0.0.1',NULL,'2021-09-06 18:10:06'),(96,96,'ageumeira100@gmail.com','$2y$12$yFWgQguzIGFzlq1kwn/lfeBTQAcNzqcoEFoF5oTRuQfUT7LxDL5ge',1,1,0,1,0,0,0,0,0,'127.0.0.1',NULL,'2021-09-06 18:10:19');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users_backup`
--

DROP TABLE IF EXISTS `tb_users_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users_backup` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `despassword` varchar(256) NOT NULL,
  `desdomain` varchar(128) DEFAULT NULL,
  `inadmin` tinyint(4) DEFAULT 0,
  `inseller` tinyint(4) DEFAULT 0,
  `inregister` tinyint(4) DEFAULT NULL,
  `inaccount` tinyint(4) DEFAULT NULL,
  `inplancontext` tinyint(4) DEFAULT 0,
  `inplan` int(3) DEFAULT 0,
  `interms` tinyint(4) DEFAULT 0,
  `desipterms` varchar(22) DEFAULT NULL,
  `dtterms` datetime DEFAULT NULL,
  `dtplanbegin` date DEFAULT NULL,
  `dtplanend` date DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  `inbuyer` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users_backup`
--

LOCK TABLES `tb_users_backup` WRITE;
/*!40000 ALTER TABLE `tb_users_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_users_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usersmachines`
--

DROP TABLE IF EXISTS `tb_usersmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usersmachines` (
  `idusermachine` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idmachine` int(11) NOT NULL,
  `dtregister` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idusermachine`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usersmachines`
--

LOCK TABLES `tb_usersmachines` WRITE;
/*!40000 ALTER TABLE `tb_usersmachines` DISABLE KEYS */;
INSERT INTO `tb_usersmachines` VALUES (10,81,1,'2021-05-30 14:37:50'),(18,81,2,'2021-05-30 14:40:30'),(19,81,1,'2021-05-30 14:40:57'),(20,81,2,'2021-05-30 14:40:57'),(21,81,1,'2021-05-30 14:41:39'),(22,81,1,'2021-05-30 14:41:39'),(23,81,2,'2021-05-30 14:41:39'),(24,81,2,'2021-05-30 14:41:39'),(25,81,3,'2021-05-30 14:41:39'),(26,81,3,'2021-05-30 14:41:40'),(27,81,3,'2021-05-30 14:41:40'),(28,81,3,'2021-05-30 14:41:40'),(29,81,1,'2021-05-30 14:41:45'),(30,81,1,'2021-05-30 14:41:45'),(31,81,1,'2021-05-30 14:41:45'),(32,81,1,'2021-05-30 14:41:45'),(33,81,1,'2021-05-30 14:41:45'),(34,81,1,'2021-05-30 14:41:45'),(35,81,1,'2021-05-30 14:41:45'),(36,81,1,'2021-05-30 14:41:45'),(37,81,2,'2021-05-30 14:41:45'),(38,81,2,'2021-05-30 14:41:45'),(39,81,2,'2021-05-30 14:41:45'),(40,81,2,'2021-05-30 14:41:45'),(41,81,2,'2021-05-30 14:41:45'),(42,81,2,'2021-05-30 14:41:45'),(43,81,2,'2021-05-30 14:41:45'),(44,81,2,'2021-05-30 14:41:45');
/*!40000 ALTER TABLE `tb_usersmachines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userspasswordsrecoveries`
--

DROP TABLE IF EXISTS `tb_userspasswordsrecoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_userspasswordsrecoveries` (
  `idrecovery` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `dtrecovery` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idrecovery`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userspasswordsrecoveries`
--

LOCK TABLES `tb_userspasswordsrecoveries` WRITE;
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` DISABLE KEYS */;
INSERT INTO `tb_userspasswordsrecoveries` VALUES (1,49,'127.0.0.1',NULL,'2019-11-24 20:17:32'),(2,49,'127.0.0.1','2019-11-24 17:35:40','2019-11-24 20:28:47'),(3,49,'127.0.0.1','2019-11-24 17:43:44','2019-11-24 20:42:40'),(4,24,'127.0.0.1',NULL,'2019-11-24 20:44:11'),(5,49,'127.0.0.1','2019-11-24 17:51:36','2019-11-24 20:51:06'),(6,81,'127.0.0.1',NULL,'2021-04-24 22:53:31'),(7,81,'127.0.0.1',NULL,'2021-04-24 22:56:41'),(8,86,'127.0.0.1',NULL,'2021-04-25 00:02:30');
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_videos`
--

DROP TABLE IF EXISTS `tb_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_videos` (
  `idvideo` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `instatus` tinyint(4) DEFAULT NULL,
  `inposition` tinyint(4) DEFAULT NULL,
  `desvideo` varchar(128) DEFAULT NULL,
  `desdescription` text DEFAULT NULL,
  `desurl` varchar(256) DEFAULT NULL,
  `desvideocode` varchar(256) DEFAULT NULL,
  `desphoto` varchar(256) DEFAULT NULL,
  `desextension` varchar(4) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idvideo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_videos`
--

LOCK TABLES `tb_videos` WRITE;
/*!40000 ALTER TABLE `tb_videos` DISABLE KEYS */;
INSERT INTO `tb_videos` VALUES (1,21,1,1,'Nome','Desc','youtube.com/watch?v=Yhf18XQ1kms','Yhf18XQ1kms','0.jpg','jpg','2019-10-26 20:57:22'),(2,49,1,1,'Day Tripper22','Lorem ispum adnime guitarrist est Lorem ispum adnime guitarrist est Lorem ispum adnime guitarrist est Lorem ispum adnime guitarrist est Lorem ispum adnime guitarrist est22222222','youtube.com/watch?v=AYZlME0mQB8','AYZlME0mQB8','0.jpg','jpg','2019-11-29 22:13:31'),(3,49,1,0,'A??a??????','lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum','youtube.com/watch?v=zc-N13YEqlk','zc-N13YEqlk','0.jpg','jpg','2019-12-10 18:50:04'),(4,49,1,1,'??rtgh o??','alorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum','youtube.com/watch?v=Yhf18XQ1kms','Yhf18XQ1kms','0.jpg','jpg','2019-12-10 18:50:33'),(5,49,1,1,'Demais este v??deo Lindo!6o(-??','Video lindoVideo lindoVideo lindoVideo lindoVideo lindoVideo lindoVideo lindoVideo lindoVideo lindoVideo lindoVideo lindo','youtube.com/watch?v=zc-N13YEqlk','zc-N13YEqlk','0.jpg','jpg','2019-12-11 20:17:26'),(6,49,1,1,'A??a??????','Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum','youtube.com/watch?v=Yhf18XQ1kms','Yhf18XQ1kms','0.jpg','jpg','2019-12-13 22:46:30'),(7,66,1,0,'A??a??','validatePla nDomainvalidatePlanDomainv alidatePlanDomainvalid atePlanDomainvalidatePlan Domainvali datePlanDomainvalidatePlanDomain','youtube.com/watch?v=Yhf18XQ1kms','Yhf18XQ1kms','0.jpg','jpg','2019-12-15 19:33:34');
/*!40000 ALTER TABLE `tb_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_spa'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_accounts_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_accounts_save`(`pidaccount` INT(11), 
`piduser` INT(11), 
`pdesaccountcode` VARCHAR(22),
`pdesaccesstoken` VARCHAR(128),
`pdeschannelid` VARCHAR(22),
`pdesname` VARCHAR(128),
`pdesemail` VARCHAR(128),
`pnrcountryarea` INT(4),
`pnrddd` INT(2),
`pnrphone` BIGINT(2),
`pintypedoc` TINYINT,
`pdesdocument` VARCHAR(14),
`pdeszipcode` CHAR(8), 
`pdesaddress` VARCHAR(128),
`pdesnumber` VARCHAR(16), 
`pdescomplement` VARCHAR(32), 
`pdesdistrict` VARCHAR(32), 
`pdescity` VARCHAR(32), 
`pdesstate` VARCHAR(32), 
`pdescountry` VARCHAR(32), 
`pdtbirth` DATE

)
BEGIN

	IF pidaccount > 0 THEN
		
		UPDATE tb_accounts
        SET

            desaccountcode = pdesaccountcode,
            desaccesstoken = pdesaccesstoken,
            deschannelid = pdeschannelid,
            desname = pdesname,
            desemail = pdesemail,
            nrcountryarea = pnrcountryarea,
            nrddd = pnrddd,
            nrphone = pnrphone,
            intypedoc = pintypedoc,
            desdocument = pdesdocument,
            deszipcode = pdeszipcode,
            desaddress = pdesaddress,
            desnumber = pdesnumber,
            descomplement = pdescomplement,
            desdistrict = pdesdistrict,
            descity = pdescity,
            desstate = pdesstate,
            descountry = pdescountry,
            dtbirth = pdtbirth

		WHERE idaccount = pidaccount;
        
    ELSE
		
		INSERT INTO tb_accounts (iduser, 
            desaccountcode,
            desaccesstoken,
            deschannelid,
            desname,
            desemail,
            nrcountryarea,
            nrddd,
            nrphone,
            intypedoc,
            desdocument,
            deszipcode, 
            desaddress,
            desnumber, 
            descomplement,
            desdistrict, 
            descity, 
            desstate, 
            descountry, 
            dtbirth)
        VALUES(piduser, 
            pdesaccountcode,
            pdesaccesstoken,
            pdeschannelid,
            pdesname,
            pdesemail,
            pnrcountryarea,
            pnrddd,
            pnrphone,
            pintypedoc,
            pdesdocument,
            pdeszipcode, 
            pdesaddress,
            pdesnumber, 
            pdescomplement,
            pdesdistrict, 
            pdescity, 
            pdesstate, 
            pdescountry, 
            pdtbirth);
        
        SET pidaccount = LAST_INSERT_ID();
        
    END IF;

    SELECT * 
    FROM tb_accounts a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idaccount = pidaccount;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_addresses_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_addresses_update`(`pidaddress` INT(11), 
`piduser` INT(11), 
`pdeszipcode` CHAR(8), 
`pdesaddress` VARCHAR(128), 
`pdesnumber` VARCHAR(16), 
`pdescomplement` VARCHAR(32), 
`pdesdistrict` VARCHAR(32), 
`pidcity` INT(8),
`pdescity` VARCHAR(32),
`pidstate` INT(2), 
`pdesstate` VARCHAR(32), 
`pdesstatecode` VARCHAR(2), 
`pdescountry` VARCHAR(32),
`pdescountrycode` VARCHAR(4)

)
BEGIN

    IF pidaddress > 0 THEN
        
        UPDATE tb_addresses
        SET
            deszipcode = pdeszipcode, 
            desaddress = pdesaddress,
            desnumber = pdesnumber,
            descomplement = pdescomplement,
            desdistrict = pdesdistrict,
            idcity = pidcity,
            descity = pdescity,
            idstate = pidstate,
            desstate = pdesstate,
            desstatecode = pdesstatecode,
            descountry = pdescountry,
            descountrycode = pdescountrycode
        WHERE idaddress = pidaddress;
        
    ELSE
        
        INSERT INTO tb_addresses (iduser, 
            deszipcode, 
            desaddress, 
            desnumber, 
            descomplement, 
            desdistrict,
            idcity, 
            descity, 
            idstate, 
            desstate, 
            desstatecode, 
            descountry,
            descountrycode) 
        VALUES(piduser, 
            pdeszipcode, 
            pdesaddress, 
            pdesnumber, 
            pdescomplement,
            pdesdistrict, 
            pidcity, 
            pdescity, 
            pidstate, 
            pdesstate, 
            pdesstatecode, 
            pdescountry,
            pdescountrycode);
        
        SET pidaddress = LAST_INSERT_ID();
        
    END IF;

    SELECT * 
    FROM tb_addresses a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idaddress = pidaddress;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_albuns_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_albuns_update`(`pidalbum` INT(11), 
`piduser` INT(11), 
`pinstatus` TINYINT, 
`pinposition` TINYINT, 
`pinphotosize` INT(11), 
`pdesalbum` VARCHAR(128), 
`pdesdescription` TEXT, 
`pdesphoto` VARCHAR(256), 
`pdesextension` VARCHAR(4)
)
BEGIN
    
    IF pidalbum > 0 THEN
        
        UPDATE tb_albuns
        SET           
            instatus = pinstatus,
            inposition = pinposition,
            inphotosize = pinphotosize,
            desalbum = pdesalbum,
            desdescription = pdesdescription,
            desphoto = pdesphoto,
            desextension = pdesextension
        WHERE idalbum = pidalbum;
        
    ELSE
    
        INSERT INTO tb_albuns (iduser,
                instatus,
                inposition,
                inphotosize,
                desalbum,
                desdescription,
                desphoto,
                desextension)
        VALUES(piduser,
                pinstatus,
                pinposition,
                pinphotosize,
                pdesalbum,
                pdesdescription,
                pdesphoto,
                pdesextension);
        
        SET pidalbum = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_albuns a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idalbum = pidalbum;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_banks_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_banks_update`(`pidbank` INT(11), 
`piduser` INT(11), 
`pdesbankcode` VARCHAR(22), 
`pdesbanknumber` VARCHAR(4), 
`pdesagencynumber` VARCHAR(11), 
`pdesagencycheck` VARCHAR(2), 
`pdesaccounttype` VARCHAR(11), 
`pdesaccountnumber` VARCHAR(11), 
`pdesaccountcheck` VARCHAR(2)
)
BEGIN

	IF pidbank > 0 THEN
		
		UPDATE tb_banks
        SET

            desbankcode = pdesbankcode,
            desbanknumber = pdesbanknumber,
            desagencynumber = pdesagencynumber,
            desagencycheck = pdesagencycheck,
            desaccounttype = pdesaccounttype,
            desaccountnumber = pdesaccountnumber,
            desaccountcheck = pdesaccountcheck
          
		WHERE idbank = pidbank;
        
    ELSE
		
		INSERT INTO tb_banks (iduser,
	            desbankcode,
	            desbanknumber,
	            desagencynumber,
	            desagencycheck,
	            desaccounttype,
	            desaccountnumber,
	            desaccountcheck)
        VALUES(piduser,
	            pdesbankcode,
	            pdesbanknumber,
	            pdesagencynumber,
	            pdesagencycheck,
	            pdesaccounttype,
	            pdesaccountnumber,
	            pdesaccountcheck);
        
        SET pidbank = LAST_INSERT_ID();
        
    END IF;

    SELECT * 
    FROM tb_banks a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idbank = pidbank;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_campaigns_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_campaigns_update`(`pidcampaign` INT(11), 
`piduser` INT(11),
`pidmachine` INT(11),
`pindeleted` TINYINT,
`pnrcampaign` TINYINT,
`pdttrigger` DATETIME
)
BEGIN
	
	IF pidcampaign > 0 THEN
		
		UPDATE tb_campaigns
        SET           
			indeleted = pindeleted,
			nrcampaign = pnrcampaign,
			dttrigger = pdttrigger
		WHERE idcampaign = pidcampaign;
        
    ELSE
    
		INSERT INTO tb_campaigns (iduser,
                idmachine,
                indeleted,
                nrcampaign,
                dttrigger)
        VALUES(piduser,
                pidmachine,
                pindeleted,
                pnrcampaign,
                pdttrigger);
		
		SET pidcampaign = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_campaigns a INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idcampaign = pidcampaign;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_carts_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_carts_update`(`pidcart` INT, `pdessessionid` VARCHAR(64), `piduser` INT, `pincartstatus` TINYINT(4))
BEGIN

	IF pidcart > 0 THEN
		
		UPDATE tb_carts
        SET
            incartstatus = pincartstatus
		WHERE idcart = pidcart;
        
    ELSE
		
		INSERT INTO tb_carts (dessessionid, iduser, incartstatus)
        VALUES(pdessessionid, piduser, pincartstatus);
        
        SET pidcart = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_carts a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idcart = pidcart;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_couponsusers_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_couponsusers_update`(`pidcouponuser` INT(11), 
`pidcoupon` INT(11), 
`piduser` INT(11), 
`pinstatus` TINYINT, 
`pdesipcoupon` VARCHAR(22)

)
BEGIN
    
    IF pidcouponuser > 0 THEN
        
        UPDATE tb_couponsusers
        SET           
            instatus = pinstatus,
            desipcoupon = pdesipcoupon
        WHERE idcouponuser = pidcouponuser;
        
    ELSE
    
        INSERT INTO tb_couponsusers (idcoupon,
                iduser,
                instatus,
                desipcoupon)
        VALUES(pidcoupon,
                piduser,
                pinstatus,
                pdesipcoupon);
        
        SET pidcouponuser = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_couponsusers
    WHERE idcouponuser = pidcouponuser;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_coupons_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_coupons_update`(`pidcoupon` INT(11), 
`pinusage` TINYINT, 
`pdescouponcode` VARCHAR(12), 
`pdesdescription` TEXT, 
`pvlpercentage` DECIMAL(3,2), 
`pvlinverse` DECIMAL(3,2), 
`pdtexpire` DATE

)
BEGIN
    
    IF pidcoupon > 0 THEN
        
        UPDATE tb_coupons
        SET           
            inusage = pinusage,
            descouponcode = pdescouponcode,
            desdescription = pdesdescription,
            vlpercentage = pvlpercentage,
            vlinverse = pvlinverse,
            dtexpire = pdtexpire
        WHERE idcoupon = pidcoupon;
        
    ELSE
    
        INSERT INTO tb_coupons (inusage,
                descouponcode,
                desdescription,
                vlpercentage,
                vlinverse,
                dtexpire)
        VALUES(pinusage,
                pdescouponcode,
                pdesdescription,
                pvlpercentage,
                pvlinverse,
                pdtexpire);
        
        SET pidcoupon = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_coupons
    WHERE idcoupon = pidcoupon;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_customers_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_customers_save`(`pidcustomer` INT(11), 
`piduser` INT(11), 
`pdescustomercode` VARCHAR(22),
`pdesname` VARCHAR(128),
`pdesemail` VARCHAR(128),
`pnrcountryarea` INT(4),
`pnrddd` INT(2),
`pnrphone` BIGINT(2),
`pintypedoc` TINYINT,
`pdesdocument` VARCHAR(14),
`pdeszipcode` CHAR(8), 
`pdesaddress` VARCHAR(128),
`pdesnumber` VARCHAR(16), 
`pdescomplement` VARCHAR(32), 
`pdesdistrict` VARCHAR(32), 
`pdescity` VARCHAR(32), 
`pdesstate` VARCHAR(32), 
`pdescountry` VARCHAR(32),
`pdescardcode` VARCHAR(22),
`pdesbrand` VARCHAR(8),
`pinfirst6` INT(6),
`pinlast4` INT(4),
`pdtbirth` DATE

)
BEGIN

	IF pidcustomer > 0 THEN
		
		UPDATE tb_customers
        SET

            descustomercode = pdescustomercode,
            desname = pdesname,
            desemail = pdesemail,
            nrcountryarea = pnrcountryarea,
            nrddd = pnrddd,
            nrphone = pnrphone,
            intypedoc = pintypedoc,
            desdocument = pdesdocument,
            deszipcode = pdeszipcode,
            desaddress = pdesaddress,
            desnumber = pdesnumber,
            descomplement = pdescomplement,
            desdistrict = pdesdistrict,
            descity = pdescity,
            desstate = pdesstate,
            descountry = pdescountry,
            descardcode = pdescardcode,
            desbrand = pdesbrand,
            infirst6 = pinfirst6,
            inlast4 = pinlast4,
            dtbirth = pdtbirth

		WHERE idcustomer = pidcustomer;
        
    ELSE
		
		INSERT INTO tb_customers (iduser, 
            descustomercode,
            desname,
            desemail,
            nrcountryarea,
            nrddd,
            nrphone,
            intypedoc,
            desdocument,
            deszipcode, 
            desaddress,
            desnumber, 
            descomplement,
            desdistrict, 
            descity, 
            desstate, 
            descountry,
            descardcode,
            desbrand,
            infirst6,
            inlast4,
            dtbirth)
        VALUES(piduser, 
            pdescustomercode,
            pdesname,
            pdesemail,
            pnrcountryarea,
            pnrddd,
            pnrphone,
            pintypedoc,
            pdesdocument,
            pdeszipcode, 
            pdesaddress,
            pdesnumber, 
            pdescomplement,
            pdesdistrict, 
            pdescity, 
            pdesstate, 
            pdescountry,
            pdescardcode,
            pdesbrand,
            pinfirst6,
            pinlast4, 
            pdtbirth);
        
        SET pidcustomer = LAST_INSERT_ID();
        
    END IF;

    SELECT * 
    FROM tb_customers a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idcustomer = pidcustomer;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_customstyle_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_customstyle_update`(`pidcustomstyle` INT(11), 
`piduser` INT(11), 
`pidtemplate` INT(11), 
`pdesbanner` VARCHAR(256), 
`pdesbannerextension` VARCHAR(4),

`pdesbgcolorbanner` VARCHAR(10), 
`pdesbgcolorfooter` VARCHAR(10), 
`pdescolorfooter` VARCHAR(10), 
`pdescolorfooterhover` VARCHAR(10),

`pdescolor1` VARCHAR(10), 
`pdescolor2` VARCHAR(10),
`pdescolortexthover` VARCHAR(10),
`pdescolordate` VARCHAR(10),
`pdesfontfamilydate` VARCHAR(64), 
`pdesfontfamily1` VARCHAR(64), 
`pdesfontfamily2` VARCHAR(64), 

`pinbgcolorgradient` TINYINT, 
`pinbgcolorbutton` TINYINT, 
`pinroundborderimage` TINYINT, 
`pinbordersocial` TINYINT,
`pdesborderimagesize` VARCHAR(4),
`pdesborderradiusbutton` VARCHAR(4)
                
)
BEGIN
    
    IF pidcustomstyle > 0 THEN
        
        UPDATE tb_customstyle
        SET
            idtemplate = pidtemplate,
            desbanner = pdesbanner,
            desbannerextension = pdesbannerextension,
            desbgcolorbanner = pdesbgcolorbanner,
            desbgcolorfooter = pdesbgcolorfooter,
            descolorfooter = pdescolorfooter,
            descolorfooterhover = pdescolorfooterhover,

            descolor1 = pdescolor1,
            descolor2 = pdescolor2,
            descolortexthover = pdescolortexthover,
            descolordate = pdescolordate,
            desfontfamilydate = pdesfontfamilydate,
            desfontfamily1 = pdesfontfamily1,
            desfontfamily2 = pdesfontfamily2,

            inbgcolorgradient = pinbgcolorgradient,
            inbgcolorbutton = pinbgcolorbutton,
            inroundborderimage = pinroundborderimage,
            inbordersocial = pinbordersocial,
            desborderimagesize = pdesborderimagesize,
            desborderradiusbutton = pdesborderradiusbutton



        WHERE iduser = piduser;
        
    ELSE
    
        INSERT INTO tb_customstyle (iduser,
                idtemplate,
                desbanner,
                desbannerextension,
                desbgcolorbanner,
                desbgcolorfooter,
                descolorfooter,
                descolorfooterhover,

                descolor1,
                descolor2,
                descolortexthover,
                descolordate,
                desfontfamilydate,
                desfontfamily1,
                desfontfamily2,

                inbgcolorgradient,
                inbgcolorbutton,
                inroundborderimage,
                inbordersocial,
                desborderimagesize,
                desborderradiusbutton
                )
        VALUES(piduser,
                pidtemplate,
                pdesbanner,
                pdesbannerextension,
                pdesbgcolorbanner,
                pdesbgcolorfooter,
                pdescolorfooter,
                pdescolorfooterhover,
                pdescolor1,
                pdescolor2,
                pdescolortexthover,
                pdescolordate,
                pdesfontfamilydate,
                pdesfontfamily1,
                pdesfontfamily2,
                pinbgcolorgradient,
                pinbgcolorbutton,
                pinroundborderimage,
                pinbordersocial,
                pdesborderimagesize,
                pdesborderradiusbutton
                );
                
        SET pidcustomstyle = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_customstyle a
    INNER JOIN tb_users d ON d.iduser = a.iduser
    WHERE idcustomstyle = pidcustomstyle;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_discounts_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_discounts_update`(`piddiscount` INT(11), 
`pinscope` TINYINT, 
`pinstatus` TINYINT, 
`pintype` TINYINT, 
`pvlpercentage` DECIMAL(3,2), 
`pvlinverse` DECIMAL(3,2), 
`pvlfixed` DECIMAL(10,2),
`pdtexpire` DATE

)
BEGIN
    
    IF piddiscount > 0 THEN
        
        UPDATE tb_discounts
        SET           
            inscope = pinscope,
            instatus = pinstatus,
            intype = pintype,
            vlpercentage = pvlpercentage,
            vlinverse = pvlinverse,
            vlfixed = pvlfixed,
            dtexpire = pdtexpire
        WHERE iddiscount = piddiscount;
        
    ELSE
    
        INSERT INTO tb_discounts (inscope,
                instatus,
                intype,
                vlpercentage,
                vlinverse,
                vlfixed,
                dtexpire)
        VALUES(pinscope,
                pinstatus,
                pintype,
                pvlpercentage,
                pvlinverse,
                pvlfixed,
                pdtexpire);
        
        SET piddiscount = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_discounts
    WHERE iddiscount = piddiscount;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fees_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_fees_save`(`pidfee` INT(11), 
`piduser` INT(11), 
`pidpayment` INT(11), 
`pvlmktpercentage` DECIMAL(8,4), 
`pvlmktfixed` DECIMAL(10,2), 
`pvlpropercentage` DECIMAL(8,4),
`pvlprofixed` DECIMAL(10,2),
`pvlantecipation` DECIMAL(8,4),
`pnrantecipationperiod` INT(4)

)
BEGIN
    
    IF pidfee > 0 THEN
        
        UPDATE tb_fees
        SET
            vlmktpercentage = pvlmktpercentage,
            vlmktfixed = pvlmktfixed,
            vlpropercentage = pvlpropercentage,
            vlprofixed = pvlprofixed,
            vlantecipation = pvlantecipation,
            nrantecipationperiod = pnrantecipationperiod

        WHERE idfee = pidfee;
        
    ELSE
    
        INSERT INTO tb_fees (iduser,
            idpayment, 
            vlmktpercentage,
            vlmktfixed,
            vlpropercentage,
            vlprofixed,
            vlantecipation,
            nrantecipationperiod)
        VALUES(piduser,
            pidpayment,
            pvlmktpercentage,
            pvlmktfixed,
            pvlpropercentage,
            pvlprofixed,
            pvlantecipation,
            pnrantecipationperiod);
        
        SET pidfee = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_fees a
    INNER JOIN tb_users b ON a.iduser = b.iduser
    WHERE a.idfee = pidfee;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_initialpages_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_initialpages_update`(`pidinitialpage` INT(11), 
`piduser` INT(11), 
`pinparty` TINYINT, 
`pinbestfriend` TINYINT, 
`pinalbum` TINYINT
)
BEGIN
    
    IF pidinitialpage > 0 THEN
        
        UPDATE tb_initialpages
        SET
            inparty = pinparty,
            inbestfriend = pinbestfriend,
            inalbum = pinalbum
        WHERE iduser = piduser;
        
    ELSE
    
        INSERT INTO tb_initialpages (iduser,
                inparty,
                inbestfriend,
                inalbum)
        VALUES(piduser,
                pinparty,
                pinbestfriend,
                pinalbum);
        
        SET pidinitialpage = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_initialpages a
    INNER JOIN tb_users d ON d.iduser = a.iduser
    WHERE idinitialpage = pidinitialpage;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_leadspasswordsrecoveries_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_leadspasswordsrecoveries_create`(`pidlead` INT, `pdesip` VARCHAR(45))
BEGIN
	
	INSERT INTO tb_leadspasswordsrecoveries (idlead, desip)
    VALUES(pidlead, pdesip);
    
    SELECT * FROM tb_leadspasswordsrecoveries
    WHERE idrecovery = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_leads_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_leads_update`(`pidlead` INT(11), 
`pinstatus` TINYINT, 
`pinlead` TINYINT, 
`pinpasswordchange` TINYINT, 
`pdesname` VARCHAR(128), 
`pdesemail` VARCHAR(128), 
`pdespassword` VARCHAR(256), 
`pdesoriginalpassword` VARCHAR(256), 
`pnrddd` INT(2), 
`pnrphone` BIGINT(20), 
`pdesip` VARCHAR(22)
)
BEGIN
    
    IF pidlead > 0 THEN
        
        UPDATE tb_leads
        SET           
            instatus = pinstatus,
            inlead = pinlead,
            inpasswordchange = pinpasswordchange,
            desname = pdesname,
            desemail = pdesemail,
            despassword = pdespassword,
            desoriginalpassword = pdesoriginalpassword,
            nrddd = pnrddd,
            nrphone = pnrphone
        WHERE idlead = pidlead;
        
    ELSE
    
        INSERT INTO tb_leads (idlead,
                instatus,
                inlead,
                inpasswordchange,
                desname,
                desemail,
                despassword,
                desoriginalpassword,
                nrddd,
                nrphone,
                desip)
        VALUES(pidlead,
                pinstatus,
                pinlead,
                pinpasswordchange,
                pdesname,
                pdesemail,
                pdespassword,
                pdesoriginalpassword,
                pnrddd,
                pnrphone,
                pdesip);
        
        SET pidlead = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_leads
    WHERE idlead = pidlead;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_machines_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_machines_update`(`pidmachine` INT(11), 
`pindeleted` TINYINT, 
`pinposition` TINYINT, 
`pdesmachine` VARCHAR(128), 
`pdesmachineabbr` VARCHAR(64)
)
BEGIN
    
    IF pidmachine > 0 THEN
        
        UPDATE tb_machines
        SET
            indeleted = pindeleted,
            inposition = pinposition,
            desmachine = pdesmachine,
            desmachineabbr = pdesmachineabbr
        WHERE idmachine = pidmachine;
        
    ELSE
    
        INSERT INTO tb_machines (indeleted,
                inposition,
                desmachine,
                desmachineabbr)
        VALUES(pindeleted,
                pinposition,
                pdesmachine,
                pdesmachineabbr);
        
        SET pidmachine = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_machines
    WHERE idmachine = pidmachine;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mailing_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_mailing_save`(`pidmailing` INT(11), 
`pdesname` VARCHAR(128), 
`pdesemail` VARCHAR(128), 
`pdesip` VARCHAR(22)
)
BEGIN
	
	INSERT INTO tb_mailing (desname,
                desemail,
                desip)
        VALUES(pdesname,
                pdesemail,
                pdesip);
        
    SET pidmailing = LAST_INSERT_ID();
    
    SELECT * 
    FROM tb_mailing
    WHERE idmailing = pidmailing;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_maintenance_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_maintenance_update`(`pidmaintenance` INT(11), 
`pinstatus` TINYINT, 
`pdesdescription` TEXT

)
BEGIN
    
    IF pidmaintenance > 0 THEN
        
        UPDATE tb_maintenance
        SET           
            instatus = pinstatus,
            desdescription = pdesdescription
        WHERE idmaintenance = pidmaintenance;
        
    ELSE
    
        INSERT INTO tb_maintenance (instatus,
                desdescription)
        VALUES(pinstatus,
                pdesdescription);
        
        SET pidmaintenance = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_maintenance
    WHERE idmaintenance = pidmaintenance;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_menus_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_menus_update`(`pidmenu` INT(11), 
`piduser` INT(11), 
`pinparty` TINYINT, 
`pinbestfriend` TINYINT, 
`pinrsvp` TINYINT, 
`pinmessage` TINYINT, 
`pinstore` TINYINT, 
`pinevent` TINYINT, 
`pinalbum` TINYINT, 
`pinvideo` TINYINT, 
`pinstakeholder` TINYINT,
`pinouterlist` TINYINT
)
BEGIN
    
    IF pidmenu > 0 THEN
        
        UPDATE tb_menus
        SET
            inparty = pinparty,
            inbestfriend = pinbestfriend,
            inrsvp = pinrsvp,
            inmessage = pinmessage,
            instore = pinstore,
            inevent = pinevent,
            inalbum = pinalbum,
            invideo = pinvideo,
            instakeholder = pinstakeholder,
            inouterlist = pinouterlist
        WHERE iduser = piduser;
        
    ELSE
    
        INSERT INTO tb_menus (iduser,
                inparty,
                inbestfriend,
                inrsvp,
                inmessage,
                instore,
                inevent,
                inalbum,
                invideo,
                instakeholder,
                inouterlist)
        VALUES(piduser,
                pinparty,
                pinbestfriend,
                pinrsvp,
                pinmessage,
                pinstore,
                pinevent,
                pinalbum,
                pinvideo,
                pinstakeholder,
                pinouterlist);
        
        SET pidmenu = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_menus a
    INNER JOIN tb_users d ON d.iduser = a.iduser
    WHERE idmenu = pidmenu;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_orders_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_orders_save`(`pidorder` INT(11), 
`piduser` INT(11), 
`pidcart` INT(11), 
`pidcustomer` INT(11), 
`pidpayment` INT(11),
`pidfee` INT(11),

`pdesordercode` VARCHAR(22),
`pvltotal` DECIMAL(10,2),
`pvlseller` DECIMAL(10,2),
`pvlmarketplace` DECIMAL(10,2),
`pvlprocessor` DECIMAL(10,2)

)
BEGIN
    
    IF pidorder > 0 THEN
        
        UPDATE tb_orders
        SET
            desordercode = pdesordercode,
            vltotal = pvltotal,
            vlseller = pvlseller,
            vlmarketplace = pvlmarketplace,
            vlprocessor = pvlprocessor

        WHERE idorder = pidorder;
        
    ELSE
    
        INSERT INTO tb_orders (iduser, 
            idcart,
            idcustomer,
            idpayment,
            idfee,
            desordercode,
            vltotal,
            vlseller,
            vlmarketplace,
            vlprocessor)

        VALUES(piduser, 
            pidcart,
            pidcustomer,
            pidpayment,
            pidfee,
            pdesordercode,
            pvltotal,
            pvlseller,
            pvlmarketplace,
            pvlprocessor);
        
        SET pidorder = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_orders a
    INNER JOIN tb_users b ON a.iduser = b.iduser
    INNER JOIN tb_carts c ON a.idcart = c.idcart
    INNER JOIN tb_customers d ON a.idcustomer = d.idcustomer
    INNER JOIN tb_payments e ON a.idpayment = e.idpayment
    INNER JOIN tb_fees f ON a.idfee = f.idfee
    INNER JOIN tb_consorts g ON b.iduser = g.iduser
    WHERE a.idorder = pidorder;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_payments_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_payments_update`(`pidpayment` INT(11), 
`piduser` INT(11), 
`pdespaymentcode` VARCHAR(22), 
`pinpaymentstatus` TINYINT,
`pinpaymentmethod` TINYINT(4), 
`pincharge` TINYINT(4), 
`pinrefunded` TINYINT(4), 
`pnrinstallment` INT(3), 
`pdeslinecode` VARCHAR(128), 
`pdesprinthref` VARCHAR(256),
`pdesholdername` VARCHAR(64), 
`pnrholdercountryarea` INT(4), 
`pnrholderddd` INT(2), 
`pnrholderphone` BIGINT(20),
`pinholdertypedoc` TINYINT,
`pdesholderdocument` VARCHAR(14), 
`pdesholderzipcode` CHAR(8), 
`pdesholderaddress` VARCHAR(128), 
`pdesholdernumber` VARCHAR(16), 
`pdesholdercomplement` VARCHAR(32), 
`pdesholderdistrict` VARCHAR(32), 
`pdesholdercity` VARCHAR(32), 
`pdesholderstate` VARCHAR(32), 
`pdtholderbirth` DATE

)
BEGIN

	IF pidpayment > 0 THEN
		
		UPDATE tb_payments
        SET

            despaymentcode = pdespaymentcode,
            inpaymentstatus = pinpaymentstatus,
            inpaymentmethod = pinpaymentmethod,
            incharge = pincharge,
            inrefunded = pinrefunded,
            nrinstallment = pnrinstallment,
            deslinecode = pdeslinecode,
            desprinthref = pdesprinthref,
            desholdername = pdesholdername,
            nrholdercountryarea = pnrholdercountryarea,
            nrholderddd = pnrholderddd,
            nrholderphone = pnrholderphone,
            inholdertypedoc = pinholdertypedoc,
            desholderdocument = pdesholderdocument,
            desholderzipcode = pdesholderzipcode,
            desholderaddress = pdesholderaddress,
            desholdernumber = pdesholdernumber,
            desholdercomplement = pdesholdercomplement,
            desholderdistrict = pdesholderdistrict,
            desholdercity = pdesholdercity,
            desholderstate = pdesholderstate,
            dtholderbirth = pdtholderbirth

		WHERE idpayment = pidpayment;
        
    ELSE
		
		INSERT INTO tb_payments (iduser,
	            despaymentcode,
				inpaymentstatus,
				inpaymentmethod,
				incharge,
				inrefunded,
				nrinstallment,
				deslinecode,
				desprinthref,
				desholdername,
				nrholdercountryarea,
				nrholderddd,
				nrholderphone,
				inholdertypedoc,
				desholderdocument,
				desholderzipcode,
				desholderaddress,
				desholdernumber,
				desholdercomplement,
				desholderdistrict,
				desholdercity,
				desholderstate,
				dtholderbirth)
        VALUES(piduser,
	            pdespaymentcode,
				pinpaymentstatus,
				pinpaymentmethod,
				pincharge,
				pinrefunded,
				pnrinstallment,
				pdeslinecode,
				pdesprinthref,
				pdesholdername,
				pnrholdercountryarea,
				pnrholderddd,
				pnrholderphone,
				pinholdertypedoc,
				pdesholderdocument,
				pdesholderzipcode,
				pdesholderaddress,
				pdesholdernumber,
				pdesholdercomplement,
				pdesholderdistrict,
				pdesholdercity,
				pdesholderstate,
				pdtholderbirth);
        
        SET pidpayment = LAST_INSERT_ID();
        
    END IF;

    SELECT * 
    FROM tb_payments a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idpayment = pidpayment;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_plans_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_plans_save`(`pidplan` INT(11), 
`piduser` INT(11), 
`pinplancode` INT(3), 
`pincontext` TINYINT(4), 
`pinmigration` TINYINT(4), 
`pinperiod` TINYINT(4), 
`pdesplan` VARCHAR(128), 
`pvlprice` DECIMAL(10,2),
`pdtbegin` DATE,
`pdtend` DATE

)
BEGIN
    
    IF pidplan > 0 THEN
        
        UPDATE tb_plans
        SET
            inplancode = pinplancode,
            incontext = pincontext,
            inmigration = pinmigration,
            inperiod = pinperiod,
            desplan = pdesplan,
            vlprice = pvlprice,
            dtbegin = pdtbegin,
            dtend = pdtend
        WHERE idplan = pidplan;
        
    ELSE
    
        INSERT INTO tb_plans (iduser, 
            inplancode,
            incontext,
            inmigration,
            inperiod,
            desplan,
            vlprice,
            dtbegin,
            dtend)
        VALUES(piduser,
            pinplancode,
            pincontext,
            pinmigration,
            pinperiod,
            pdesplan,
            pvlprice,
            pdtbegin,
            pdtend);
        
        SET pidplan = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_plans a
    INNER JOIN tb_users e ON a.iduser = e.iduser
    WHERE a.idplan = pidplan;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_plans_save_backup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_plans_save_backup`(`pidplan` INT(11), 
`piduser` INT(11), 
`pinplancode` INT(3), 
`pinmigration` TINYINT(4), 
`pinperiod` TINYINT(4), 
`pdesplan` VARCHAR(128), 
`pvlprice` DECIMAL(10,2),
`pdtbegin` DATE,
`pdtend` DATE

)
BEGIN
	
	IF pidplan > 0 THEN
		
		UPDATE tb_plans
        SET
            inplancode = pinplancode,
            inmigration = pinmigration,
            inperiod = pinperiod,
            desplan = pdesplan,
            vlprice = pvlprice,
            dtbegin = pdtbegin,
            dtend = pdtend
		WHERE idplan = pidplan;
        
    ELSE
    
		INSERT INTO tb_plans (iduser, 
            inplancode,
            inmigration,
            inperiod,
            desplan,
            vlprice,
            dtbegin,
            dtend)
        VALUES(piduser,
            pinplancode,
            pinmigration,
            pinperiod,
            pdesplan,
            pvlprice,
            pdtbegin,
            pdtend);
		
		SET pidplan = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_plans a
    INNER JOIN tb_users e ON a.iduser = e.iduser
    WHERE a.idplan = pidplan;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_productsconfig_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_productsconfig_update`(`pidproductconfig` INT(11), 
`piduser` INT(11), 
`pincharge` TINYINT 

)
BEGIN
    
    IF pidproductconfig > 0 THEN
        
        UPDATE tb_productsconfig
        SET 
            incharge = pincharge

        WHERE idproductconfig = pidproductconfig;
        
    ELSE
        
        INSERT INTO tb_productsconfig (iduser, 
            incharge) 
        VALUES(piduser, 
            pincharge);
        
        SET pidproductconfig = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_productsconfig a
    INNER JOIN tb_users d
    ON d.iduser = a.iduser
    WHERE idproductconfig = pidproductconfig;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_products_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_products_update`(`pidproduct` INT(11), 
`piduser` INT(11), 
`pincategory` TINYINT, 
`pdesproduct` VARCHAR(64), 
`pvlprice` DECIMAL(10,2), 
`pdesphoto` VARCHAR(256), 
`pdesextension` VARCHAR(4)

)
BEGIN
    
    IF pidproduct > 0 THEN
        
        UPDATE tb_products
        SET 
            incategory = pincategory,
            desproduct = pdesproduct,
            vlprice = pvlprice,
            desphoto = pdesphoto,
            desextension = pdesextension
        WHERE idproduct = pidproduct;
        
    ELSE
        
        INSERT INTO tb_products (iduser, 
            incategory, 
            desproduct, 
            vlprice, 
            desphoto, 
            desextension) 
        VALUES(piduser, 
            pincategory, 
            pdesproduct, 
            pvlprice, 
            pdesphoto, 
            pdesextension);
        
        SET pidproduct = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_products a
    INNER JOIN tb_users d
    ON d.iduser = a.iduser
    WHERE idproduct = pidproduct;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_sequences_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_sequences_update`(`pidsequence` INT(11), 
`pidcampaign` INT(11),
`pidusername` INT(11),
`pinsent` TINYINT,
`pdessubject` VARCHAR(64),
`pdestemplate` VARCHAR(64),
`pdtsent` DATETIME
)
BEGIN
	
	IF pidsequence > 0 THEN
		
		UPDATE tb_sequences
        SET           
			idusername = pidusername,
			dessubject = pdessubject,
			destemplate = pdestemplate
		WHERE idsequence = pidsequence;
        
    ELSE
    
		INSERT INTO tb_sequences (idcampaign,
                idusername,
                insent,
                dessubject,
                destemplate,
                dtsent)
        VALUES(pidcampaign,
                pidusername,
                pinsent,
                pdessubject,
                pdestemplate,
                pdtsent);
		
		SET pidsequence = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_sequences
    WHERE idsequence = pidsequence;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_socialmedias_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_socialmedias_update`(`pidsocialmedia` INT(11), 
`piduser` INT(11), 
`pdesfacelink1` VARCHAR(256),
`pdesfacelink2` VARCHAR(256),
`pdesfacelink3` VARCHAR(256),
`pdesinstalink1` VARCHAR(256),
`pdesinstalink2` VARCHAR(256),
`pdesinstalink3` VARCHAR(256),
`pdesyoutubelink1` VARCHAR(256),
`pdesyoutubelink2` VARCHAR(256),
`pdesyoutubelink3` VARCHAR(256),
`pdestwitterlink1` VARCHAR(256),
`pdestwitterlink2` VARCHAR(256),
`pdestwitterlink3` VARCHAR(256)

)
BEGIN

    IF pidsocialmedia > 0 THEN
        
        UPDATE tb_socialmedias
        SET
            desfacelink1 = pdesfacelink1,
            desfacelink2 = pdesfacelink2,
            desfacelink3 = pdesfacelink3,
            desinstalink1 = pdesinstalink1,
            desinstalink2 = pdesinstalink2,
            desinstalink3 = pdesinstalink3,
            desyoutubelink1 = pdesyoutubelink1,
            desyoutubelink2 = pdesyoutubelink2,
            desyoutubelink3 = pdesyoutubelink3,
            destwitterlink1 = pdestwitterlink1,
            destwitterlink2 = pdestwitterlink2,
            destwitterlink3 = pdestwitterlink3
        WHERE idsocialmedia = pidsocialmedia;
        
    ELSE
        
        INSERT INTO tb_socialmedias (iduser, 
            desfacelink1, 
            desfacelink2, 
            desfacelink3,
            desinstalink1, 
            desinstalink2, 
            desinstalink3, 
            desyoutubelink1, 
            desyoutubelink2, 
            desyoutubelink3, 
            destwitterlink1, 
            destwitterlink2, 
            destwitterlink3
            ) 
        VALUES(piduser, 
            pdesfacelink1, 
            pdesfacelink2, 
            pdesfacelink3,
            pdesinstalink1, 
            pdesinstalink2, 
            pdesinstalink3, 
            pdesyoutubelink1, 
            pdesyoutubelink2, 
            pdesyoutubelink3, 
            pdestwitterlink1, 
            pdestwitterlink2, 
            pdestwitterlink3
            );
        
        SET pidsocialmedia = LAST_INSERT_ID();
        
    END IF;

    SELECT * 
    FROM tb_socialmedias a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idsocialmedia = pidsocialmedia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_testimonials_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_testimonials_update`(`pidtestimonial` INT(11), 
`piduser` INT(11), 
`pinstatus` TINYINT, 
`pinsample` TINYINT, 
`pinrating` TINYINT, 
`pdesdescription` TEXT 
)
BEGIN
	
	IF pidtestimonial > 0 THEN
		
		UPDATE tb_testimonials
        SET           
			instatus = pinstatus,
			insample = pinsample,
			inrating = pinrating,
			desdescription = pdesdescription

		WHERE idtestimonial = pidtestimonial;
        
    ELSE
    
		INSERT INTO tb_testimonials (iduser,
                instatus,
                insample,
                inrating,
                desdescription)
        VALUES(piduser,
                pinstatus,
                pinsample,
                pinrating,
                pdesdescription);
		
		SET pidtestimonial = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_testimonials a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idtestimonial = pidtestimonial;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_transfers_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_transfers_save`(`pidtransfer` INT(11), 
`piduser` INT(11), 
`pdestransfercode` VARCHAR(22), 
`pintransferstatus` TINYINT, 
`pdestransferholdername` VARCHAR(128), 
`pdesbanknumber` VARCHAR(4), 
`pdesagencynumber` VARCHAR(11), 
`pdesagencycheck` VARCHAR(2), 
`pdesaccounttype` VARCHAR(11), 
`pdesaccountnumber` VARCHAR(11), 
`pdesaccountcheck` VARCHAR(2),
`pvlamount` DECIMAL(10,2)

)
BEGIN

	IF pidtransfer > 0 THEN
		
		UPDATE tb_transfers
        SET
            destransfercode = pdestransfercode,
        	intransferstatus = pintransferstatus,
            destransferholdername = pdestransferholdername,
            desbanknumber = pdesbanknumber,
            desagencynumber = pdesagencynumber,
            desagencycheck = pdesagencycheck,
            desaccounttype = pdesaccounttype,
            desaccountnumber = pdesaccountnumber,
            desaccountcheck = pdesaccountcheck,
            vlamount = pvlamount
          
		WHERE idtransfer = pidtransfer;
        
    ELSE
		
		INSERT INTO tb_transfers (iduser,
	            destransfercode,
				intransferstatus,
	            destransferholdername,
	            desbanknumber,
	            desagencynumber,
	            desagencycheck,
	            desaccounttype,
	            desaccountnumber,
	            desaccountcheck,
	            vlamount)
        VALUES(piduser,
	            pdestransfercode,
        		pintransferstatus,
	            pdestransferholdername,
	            pdesbanknumber,
	            pdesagencynumber,
	            pdesagencycheck,
	            pdesaccounttype,
	            pdesaccountnumber,
	            pdesaccountcheck,
	            pvlamount);
        
        SET pidtransfer = LAST_INSERT_ID();
        
    END IF;

    SELECT * 
    FROM tb_transfers a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idtransfer = pidtransfer;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usernames_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_usernames_update`(`pidusername` INT(11), 
`pidmachine` INT(11),
`pindeleted` TINYINT,
`pnrport` INT(11),
`pdeshost` VARCHAR(64),
`pdesnamefrom` VARCHAR(128), 
`pdesusername` VARCHAR(64),
`pdesunpassword` VARCHAR(256)
)
BEGIN
	
	IF pidusername > 0 THEN
		
		UPDATE tb_usernames
        SET           
			indeleted = pindeleted,
			nrport = pnrport,
			deshost = pdeshost,
			desnamefrom = pdesnamefrom,
            desusername = pdesusername,
			desunpassword = pdesunpassword
		WHERE idusername = pidusername;
        
    ELSE
    
		INSERT INTO tb_usernames (idmachine,
                indeleted,
                nrport,
                deshost,
                desnamefrom,
                desusername,
                desunpassword)
        VALUES(pidmachine,
                pindeleted,
                pnrport,
                pdeshost,
                pdesnamefrom,
                pdesusername,
                pdesunpassword);
		
		SET pidusername = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * FROM tb_usernames
    WHERE idusername = pidusername;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usersmachines_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_usersmachines_save`(`piduser` INT, `pidmachine` INT)
BEGIN
	
	INSERT INTO tb_usersmachines (iduser, idmachine)
    VALUES(piduser, pidmachine);
    
    SELECT * FROM tb_usersmachines
    WHERE idusermachine = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_userspasswordsrecoveries_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_userspasswordsrecoveries_create`(`piduser` INT, `pdesip` VARCHAR(45))
BEGIN
	
	INSERT INTO tb_userspasswordsrecoveries (iduser, desip)
    VALUES(piduser, pdesip);
    
    SELECT * FROM tb_userspasswordsrecoveries
    WHERE idrecovery = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usersprojects_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_usersprojects_save`(`piduser` INT, `pidproject` INT)
BEGIN
	
	INSERT INTO tb_usersprojects (iduser, idproject)
    VALUES(piduser, pidproject);
    
    SELECT * FROM tb_usersprojects
    WHERE iduserproject = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_users_delete`(`piduser` INT)
BEGIN
    
    DECLARE vidperson INT;
    
	
	SELECT idperson INTO vidperson
    FROM tb_users
    WHERE iduser = piduser;
	
	DELETE FROM tb_persons WHERE idperson = vidperson;
    DELETE FROM tb_users WHERE iduser = piduser;

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_delete_backup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_users_delete_backup`(`piduser` INT)
BEGIN
    
    DECLARE vidperson INT;
    
    SET FOREIGN_KEY_CHECKS = 0;
	
	SELECT idperson INTO vidperson
    FROM tb_users
    WHERE iduser = piduser;
	
    DELETE FROM tb_addresses WHERE idperson = vidperson;
    DELETE FROM tb_addresses WHERE idaddress IN(SELECT idaddress FROM tb_orders WHERE iduser = piduser);
	DELETE FROM tb_persons WHERE idperson = vidperson;
    
    DELETE FROM tb_userslogs WHERE iduser = piduser;
    DELETE FROM tb_userspasswordsrecoveries WHERE iduser = piduser;
    DELETE FROM tb_orders WHERE iduser = piduser;
    DELETE FROM tb_cartsproducts WHERE idcart IN(SELECT idcart FROM tb_carts WHERE iduser = piduser);
    DELETE FROM tb_carts WHERE iduser = piduser;
    DELETE FROM tb_users WHERE iduser = piduser;

    DELETE FROM tb_bestfriends WHERE iduser = piduser;
    DELETE FROM tb_customstyle WHERE iduser = piduser;
    DELETE FROM tb_events WHERE iduser = piduser;
    DELETE FROM tb_gifts WHERE iduser = piduser;
    DELETE FROM tb_images WHERE iduser = piduser;
    DELETE FROM tb_messages WHERE iduser = piduser;
    DELETE FROM tb_rsvp WHERE iduser = piduser;
    DELETE FROM tb_stakeholders WHERE iduser = piduser;
    DELETE FROM tb_stories WHERE iduser = piduser;
    DELETE FROM tb_videos WHERE iduser = piduser;
    DELETE FROM tb_albuns WHERE iduser = piduser;
    DELETE FROM tb_menus WHERE iduser = piduser;
    DELETE FROM tb_parties WHERE iduser = piduser;
    DELETE FROM tb_initialpages WHERE iduser = piduser;
    DELETE FROM tb_consorts WHERE iduser = piduser;
    DELETE FROM tb_weddings WHERE iduser = piduser;

    
    SET FOREIGN_KEY_CHECKS = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_users_save`(`pdeslogin` VARCHAR(64), 
`pdespassword` VARCHAR(256), 
`pdesdomain` VARCHAR(128), 
`pinadmin` TINYINT, 
`pinseller` TINYINT, 
`pinregister` TINYINT, 
`pinaccount` TINYINT, 
`pinplancontext` TINYINT, 
`pinplan` INT(3), 
`pinautostatus` TINYINT, 
`pinterms` TINYINT,
`pdesipterms` VARCHAR(22),
`pdtterms` DATETIME,
`pdesperson` VARCHAR(128), 
`pdesnick` VARCHAR(128), 
`pdesemail` VARCHAR(128), 
`pnrcountryarea` INT, 
`pnrddd` INT, 
`pnrphone` BIGINT, 
`pintypedoc` TINYINT, 
`pdesdocument` VARCHAR(14),
`pdesphoto` VARCHAR(256), 
`pdesextension` VARCHAR(4),
`pdtbirth` DATE 

)
BEGIN
    
    DECLARE vidperson INT;
    
    INSERT INTO tb_persons (desperson, 
        desnick,
        desemail,
        nrcountryarea,
        nrddd,
        nrphone,
        intypedoc, 
        desdocument,  
        desphoto, 
        desextension,
        dtbirth)
    VALUES(pdesperson, 
        pdesnick,
        pdesemail,
        pnrcountryarea,
        pnrddd,
        pnrphone,
        pintypedoc, 
        pdesdocument, 
        pdesphoto, 
        pdesextension,
        pdtbirth);
    
    SET vidperson = LAST_INSERT_ID();
    
    INSERT INTO tb_users (idperson, 
        deslogin, 
        despassword, 
        desdomain, 
        inadmin, 
        inseller, 
        inregister,
        inaccount, 
        inplancontext, 
        inplan, 
        inautostatus,
        interms,
        desipterms,
        dtterms)
    VALUES(vidperson, 
        pdeslogin, 
        pdespassword, 
        pdesdomain, 
        pinadmin, 
        pinseller, 
        pinregister,
        pinaccount, 
        pinplancontext, 
        pinplan, 
        pinautostatus,
        pinterms,
        pdesipterms,
        pdtterms);
    
    SELECT * FROM tb_users a 
    INNER JOIN tb_persons b ON a.idperson = b.idperson
    WHERE a.iduser = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_save_backup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_users_save_backup`(`pdeslogin` VARCHAR(64), 
`pdespassword` VARCHAR(256), 
`pdesdomain` VARCHAR(128), 
`pinadmin` TINYINT, 
`pinseller` TINYINT, 
`pinregister` TINYINT, 
`pinaccount` TINYINT, 
`pinplancontext` TINYINT, 
`pinplan` INT, 
`pinterms` TINYINT,
`pdesipterms` VARCHAR(22),
`pdtterms` DATETIME,
`pdtplanbegin` DATE, 
`pdtplanend` DATE,
`pdesperson` VARCHAR(128), 
`pdesnick` VARCHAR(128), 
`pdesemail` VARCHAR(128), 
`pnrcountryarea` INT, 
`pnrddd` INT, 
`pnrphone` BIGINT, 
`pintypedoc` TINYINT, 
`pdesdocument` VARCHAR(14),
`pdesphoto` VARCHAR(256), 
`pdesextension` VARCHAR(4),
`pdtbirth` DATE 

)
BEGIN
    
    DECLARE vidperson INT;
    
    INSERT INTO tb_persons (desperson, 
        desnick,
        desemail,
        nrcountryarea,
        nrddd,
        nrphone,
        intypedoc, 
        desdocument,  
        desphoto, 
        desextension,
        dtbirth)
    VALUES(pdesperson, 
        pdesnick,
        pdesemail,
        pnrcountryarea,
        pnrddd,
        pnrphone,
        pintypedoc, 
        pdesdocument, 
        pdesphoto, 
        pdesextension,
        pdtbirth);
    
    SET vidperson = LAST_INSERT_ID();
    
    INSERT INTO tb_users (idperson, 
        deslogin, 
        despassword, 
        desdomain, 
        inadmin, 
        inseller, 
        inregister,
        inaccount, 
        inplancontext,
        inplan, 
        interms,
        desipterms,
        dtterms,
        dtplanbegin, 
        dtplanend)
    VALUES(vidperson, 
        pdeslogin, 
        pdespassword, 
        pdesdomain, 
        pinadmin, 
        pinseller, 
        pinregister,
        pinaccount, 
        pinplancontext,
        pinplan,  
        pinterms,
        pdesipterms,
        pdtterms,
        pdtplanbegin, 
        pdtplanend);
    
    SELECT * FROM tb_users a 
    INNER JOIN tb_persons b ON a.idperson = b.idperson
    WHERE a.iduser = LAST_INSERT_ID();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_users_update`(
`piduser` INT(11),
`pdeslogin` VARCHAR(128),
`pdespassword` VARCHAR(256),
`pinstatus` TINYINT,
`pinautostatus` TINYINT,
`pinadmin` TINYINT,
`pinlead` TINYINT,
`pinseller` TINYINT,
`pinbuyer` TINYINT,
`pinregister` TINYINT,
`pinaccount` TINYINT,
`pinterms` TINYINT,
`pdesipterms` VARCHAR(22),
`pdtterms` DATETIME,

`pdesperson` VARCHAR(128),
`pdesnick` VARCHAR(128),
`pnrcountryarea` INT(4),
`pnrddd` INT(2),
`pnrphone` BIGINT(20),
`pintypedoc` TINYINT,
`pdesdocument` VARCHAR(14),
`pdesphoto` VARCHAR(256), 
`pdesextension` VARCHAR(4),
`pdtbirth` DATE
)
BEGIN

    DECLARE vidperson INT;
   

	
    IF piduser > 0 THEN

        SELECT idperson INTO vidperson
        FROM tb_users
        WHERE iduser = piduser;

        UPDATE tb_persons
        SET desperson = pdesperson,
            desnick = pdesnick,
            nrcountryarea = pnrcountryarea,
            nrddd = pnrddd,
            nrphone = pnrphone,
            intypedoc = pintypedoc,
            desdocument = pdesdocument,
            desphoto = pdesphoto,
            desextension = pdesextension,
            dtbirth = pdtbirth
        WHERE idperson = vidperson;


        UPDATE tb_users
        SET deslogin = pdeslogin,
            despassword = pdespassword,
            instatus = pinstatus,
            inautostatus = pinautostatus,
            inadmin = pinadmin,
            inlead = pinlead,
            inseller = pinseller,
            inbuyer = pinbuyer,
            inregister = pinregister,
            inaccount = pinaccount,
            interms = pinterms,
            desipterms = pdesipterms,
            dtterms = pdtterms
        WHERE iduser = piduser;
		
         SELECT * FROM tb_users a
    INNER JOIN tb_persons b ON a.idperson = b.idperson
	WHERE a.iduser = piduser;
    


    ELSE

        INSERT INTO tb_persons (desperson,
            desnick,
            nrcountryarea,
            nrddd,
            nrphone,
            intypedoc,
            desdocument,
            desphoto,
            desextension,
            dtbirth)
        VALUES(pdesperson,
            pdesnick,
            pnrcountryarea,
            pnrddd,
            pnrphone,
            pintypedoc,
            pdesdocument,
            desphoto,
            desextension,
            pdtbirth);


        SET vidperson = LAST_INSERT_ID();

        INSERT INTO tb_users (idperson,
            deslogin,
            despassword,
            instatus,
            inautostatus,
            inadmin,
            inlead,
            inseller,
            inbuyer,
            inregister,
            inaccount,
            interms,
            desipterms,
            dtterms)
        VALUES(vidperson,
            pdeslogin,
            pdespassword,
            pinstatus,
            pinautostatus,
            pinadmin,
            pinlead,
            pinseller,
            pinbuyer,
            pinregister,
            pinaccount,
            pinterms,
            pdesipterms,
            pdtterms);
            
		 SELECT * FROM tb_users a
    INNER JOIN tb_persons b ON a.idperson = b.idperson
	WHERE a.iduser = LAST_INSERT_ID();
	

    END IF;


   



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_users_update_backup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_users_update_backup`(`piduser` INT, 
`pdeslogin` VARCHAR(64), 
`pdespassword` VARCHAR(256), 
`pdesdomain` VARCHAR(128), 
`pinadmin` TINYINT, 
`pinseller` TINYINT, 
`pinregister` TINYINT, 
`pinaccount` TINYINT, 
`pinplancontext` TINYINT, 
`pinplan` INT, 
`pinterms` TINYINT,
`pdesipterms` VARCHAR(22),
`pdtterms` DATETIME,
`pdtplanbegin` DATE, 
`pdtplanend` DATE,
`pdesperson` VARCHAR(128), 
`pdesnick` VARCHAR(128), 
`pdesemail` VARCHAR(128), 
`pnrcountryarea` INT, 
`pnrddd` INT, 
`pnrphone` BIGINT, 
`pintypedoc` TINYINT, 
`pdesdocument` VARCHAR(14),
`pdesphoto` VARCHAR(256), 
`pdesextension` VARCHAR(4),
`pdtbirth` DATE
)
BEGIN
    
    DECLARE vidperson INT;
    
    SELECT idperson INTO vidperson
    FROM tb_users
    WHERE iduser = piduser;
    
    UPDATE tb_persons
    SET 
        desperson = pdesperson,
        desnick = pdesnick,
        desemail = pdesemail,
        nrcountryarea = pnrcountryarea,
        nrddd = pnrddd,
        nrphone = pnrphone,
        intypedoc = pintypedoc, 
        desdocument = pdesdocument,
        desphoto = pdesphoto,
        desextension = pdesextension,
        dtbirth = pdtbirth
        
    WHERE idperson = vidperson;
    
    UPDATE tb_users
    SET
        deslogin = pdeslogin, 
        despassword = pdespassword, 
        desdomain = pdesdomain, 
        inadmin = pinadmin, 
        inseller = pinseller, 
        inregister = pinregister,
        inaccount = pinaccount,
        inplancontext = pinplancontext,
        inplan = pinplan,  
        interms = pinterms,
        desipterms = pdesipterms,
        dtterms = pdtterms,
        dtplanbegin = pdtplanbegin, 
        dtplanend = pdtplanend
    
    WHERE iduser = piduser;
    
    SELECT * FROM tb_users a 
    INNER JOIN tb_persons b ON a.idperson = b.idperson
    WHERE a.iduser = piduser;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_videos_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`amarca35_user`@`%` PROCEDURE `sp_videos_update`(`pidvideo` INT(11), 
`piduser` INT(11), 
`pinstatus` TINYINT, 
`pinposition` TINYINT, 
`pdesvideo` VARCHAR(128), 
`pdesdescription` TEXT,
`pdesurl` VARCHAR(128),
`pdesvideocode` VARCHAR(128),
`pdesphoto` VARCHAR(256), 
`pdesextension` VARCHAR(4)
)
BEGIN
	
	IF pidvideo > 0 THEN
		
		UPDATE tb_videos
        SET           
			instatus = pinstatus,
			inposition = pinposition,
			desvideo = pdesvideo,
			desdescription = pdesdescription,
            desurl = pdesurl,
			desvideocode = pdesvideocode,
			desphoto = pdesphoto,
            desextension = pdesextension
		WHERE idvideo = pidvideo;
        
    ELSE
    
		INSERT INTO tb_videos (iduser,
                instatus,
                inposition,
                desvideo,
                desdescription,
                desurl,
                desvideocode,
                desphoto,
                desextension)
        VALUES(piduser,
                pinstatus,
                pinposition,
                pdesvideo,
                pdesdescription,
                pdesurl,
                pdesvideocode,
                pdesphoto,
                pdesextension);
		
		SET pidvideo = LAST_INSERT_ID();
        
    END IF;
    
    SELECT * 
    FROM tb_videos a
    INNER JOIN tb_users d 
    ON d.iduser = a.iduser
    WHERE idvideo = pidvideo;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-06 15:14:49
