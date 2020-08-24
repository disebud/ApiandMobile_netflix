-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_netflix
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `duration` varchar(1000) DEFAULT NULL,
  `image` longtext,
  `synopsis` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (3,'Captain Amerika: The First Avenger (2011)','130 min','https://image.tmdb.org/t/p/w600_and_h900_bestv2/vSNxAJTlD0r02V9sPYpOjqDZXUK.jpg','Seorang pemuda sakit-sakitan yang berusaha untuk mendaftarkan diri di Angkatan Darat Amerika Serikat pada tahun 1943 untuk melawan Nazi, tetapi dianggap tidak layak secara fisik. Kemudian dia justru menawarkan diri untuk menjadi relawan dalam sebuah proyek yang disebut Rebirth, sebuah operasi militer rahasia untuk membantu upaya perang Amerika Serikat yang menggunakan serum tertentu untuk mengubah Steve Rogers ke puncak kesempurnaan manusia dan menjadi tentara super.'),(4,'The Avengers (2012)','125 min','https://image.tmdb.org/t/p/w600_and_h900_bestv2/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg','Ketika musuh yang tak terduga muncul, mengancam keselamatan dan keamanan dunia, Nick Fury, direktur Badan Perdamaian Internasional, dikenal sebagai S.H.I.E.L.D. , membutuhkan tim untuk menyelamatkan dunia dari bencana. Usaha perekrutan pun dimulai Iron Man, Captain America, Hulk, Thor, Black Widow dan Hawkeye dikumpulkan untuk menaklukkan Dewa Kehancuran, Loki, dalam usahanya menghancurkan bumi. Dengan semua gabungan kekuatan, tugas nampak lebih mudah. Namun kenyatannya tidak demikian! Para pahlawan super justru saling melawan satu sama lain Hulk melawan Captain America, siapa yang akan menang? Apakah Iron Man dapat mengalahkan kekuatan super milik Thor? Bagaimana para pahlawan super ini secara bersama-sama menghadapi bencana, melindungi masyarakat dan yang terpenting, bertahan hidup?'),(5,'Avengers: Age of Ultron (2015)','132 min','https://image.tmdb.org/t/p/w600_and_h900_bestv2/4ssDuvEDkSArWEdyBl2X5EHvYKU.jpg','Saat Tony Stark (Robert Downey Jr) memutuskan untuk membuat program perdamaian. Tony menciptakan robot cerdas Ultron untuk menggantikan peran Iron Man, Captain America, Thor, The Incredible Hulk, Black Widow dan Hawkeye. Tapi Ternyata Ultron mampu berfikir dan memiliki niat jahat yang sangat mengerikan. Ultron kini menjadi musuh bersama tim Avengers. Tidak mudah bagi tim untuk membasmi Ultron disaat mereka terancam tercerai berai karena berbeda pendapat. Tim Avengers harus bisa menghentikan rencana jahat Ultron dan membangun kekuatan bersama untuk menyelamatkan bumi dari kehancuran.'),(6,'Teenage Mutant Ninja Turtles (2014)','101 min','https://image.tmdb.org/t/p/w600_and_h900_bestv2/azL2ThbJMIkts3ZMt3j1YgBUeDB.jpg','Kota membutuhkan pahlawan. Kegelapan telah menyelimuti Kota New York saat Shredder dan Klan Kaki yang jahat memiliki cengkeraman yang kuat dalam segala hal mulai dari polisi hingga politisi. Masa depan suram sampai empat bersaudara yang terbuang bangkit dari selokan dan menemukan takdir mereka sebagai Teenage Mutant Ninja Turtles. Kura-kura harus bekerja dengan reporter tak kenal takut April dan juru kameranya yang cerdas Vern Fenwick untuk menyelamatkan kota dan mengungkap rencana jahat Shredder.'),(7,'Captain America: The First Avenger - The Transformation (2011)','110 min','https://image.tmdb.org/t/p/w600_and_h900_bestv2/8YXB6PzoEbcpx3pCcgXxBF6qWi5.jpg','A brief piece that offers an in-depth look at the process of digitally shrinking Actor Chris Evans for the film\'s first act.'),(8,'Avengers: Endgame (2019)','181 min','https://image.tmdb.org/t/p/w600_and_h900_bestv2/or06FN3Dka5tukK1e9sl16pB3iy.jpg','Terdampar di luar angkasa tanpa persediaan makanan dan minuman, Tony Stark berusaha mengirim pesan untuk Pepper Potts dimana persediaan oksigen mulai menipis. Sementara itu para Avengers yang tersisa harus menemukan cara untuk mengembalikan 50% mahluk di seluruh dunia yang telah dilenyapkan oleh Thanos.');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'movie_netflix'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-24  0:28:09
