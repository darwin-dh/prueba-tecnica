-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_prueba
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id_autor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT 1,
  `nombre` varchar(255) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `libros_escritos` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,1,'Prof. Nick Fay V','2002-10-24',73,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(2,0,'Jay Schiller','2000-08-21',63,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(3,1,'Eric Abshire','2002-06-26',85,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(4,1,'Monte Reinger','1981-06-29',4,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(5,1,'Mr. Trevion Robel Sr.','1970-09-04',81,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(6,0,'Prof. Shanon McKenzie','2002-09-03',12,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(7,0,'Mariela Stamm','2023-07-03',78,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(8,1,'Rodrigo Moen','1981-03-29',30,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(9,1,'Tanner Larson','1998-08-12',88,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(10,1,'Jamarcus Lakin','1989-10-30',62,'2024-09-16 11:04:46','2024-09-16 11:04:46');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id_libro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT 1,
  `titulo` varchar(255) DEFAULT NULL,
  `ayer` date DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `idioma` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_autor` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `libros_id_autor_foreign` (`id_autor`),
  CONSTRAINT `libros_id_autor_foreign` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,0,'Consequatur occaecati et veritatis quidem quam quam necessitatibus sunt.','2019-06-23','tempore','ve','Sed cupiditate sapiente ullam voluptatem. Harum sit aut quas temporibus unde unde rerum. Quos quia neque quis autem. Aperiam eveniet laboriosam est dolor dolor incidunt amet.',4,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(2,0,'Porro aut ad qui sequi.','1976-12-02','placeat','ne','In repellendus deserunt neque ut qui nisi odit. Enim dolores et sapiente consequatur aperiam. Sapiente est id unde occaecati voluptatem.',4,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(3,1,'Dicta in quibusdam fugit autem tempore totam dolores.','1998-07-10','id','co','Dolorum consequatur quis dicta optio voluptas deserunt reiciendis. Eius saepe aspernatur repellendus aut assumenda enim. Aut est qui omnis. Accusantium porro et quia libero omnis aliquid voluptatem.',3,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(4,1,'Quia eos vel occaecati est error corporis quam.','1982-07-21','neque','aa','Aliquid eum odit qui officia. Commodi aut id nihil aut. Libero est illum maiores itaque vero sit. Enim nihil suscipit ullam tempora itaque sint eos. Aut tempore et repellat consequatur voluptates impedit aut.',5,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(5,0,'Occaecati deserunt minus blanditiis reprehenderit ut nihil et qui.','2012-11-03','illo','oj','Culpa tempora quod itaque quo ut. Facere dolore vel officia officia porro at. Incidunt sed facere nostrum ea fugiat quod accusamus.',5,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(6,1,'Maxime saepe porro et sequi.','2020-01-17','et','co','Est fugit fuga optio exercitationem. Occaecati sit assumenda repellat sequi. Omnis voluptates laborum labore molestiae consequatur. Quae adipisci temporibus consequatur deleniti delectus at.',3,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(7,0,'Et suscipit possimus tenetur rerum molestias quo vitae accusamus.','2024-03-27','maiores','ak','Corporis facilis saepe delectus aperiam expedita rerum consequuntur. Rerum architecto est sunt eum tenetur in optio ipsum. Perferendis alias iure et sequi.',1,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(8,1,'Ipsam voluptatem expedita alias modi natus dignissimos.','1980-11-15','explicabo','lt','Molestiae aliquam aut quod architecto rem vel consequatur. Sit vitae nisi quod doloribus reiciendis dolore. Saepe qui laboriosam id commodi voluptatibus.',5,'2024-09-16 11:04:46','2024-09-16 11:04:46'),(9,1,'Quia et quas modi.','2008-04-08','expedita','ht','Eos delectus provident doloribus a architecto at. Rem non animi molestiae unde culpa.',2,'2024-09-16 11:04:47','2024-09-16 11:04:47'),(10,1,'Qui animi tempore voluptatum eaque maiores similique.','1997-05-11','voluptas','ky','Dicta qui illo in culpa distinctio eligendi qui reiciendis. Cum quia labore placeat architecto autem quaerat. Quo vel odio atque harum vero id error. Exercitationem id dolores et.',1,'2024-09-16 11:04:47','2024-09-16 11:04:47');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_09_14_030142_create_autores_table',1),(6,'2024_09_14_030407_create_libros_table',1),(7,'2024_09_14_132029_create_usuarios_table',1),(8,'2024_09_14_132157_create_roles_table',1),(9,'2024_09_14_132322_create_usuario_rol_table',1),(10,'2024_09_16_050725_create_weather_data_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rols`
--

DROP TABLE IF EXISTS `rols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rols` (
  `id_rol` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT 1,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rols`
--

LOCK TABLES `rols` WRITE;
/*!40000 ALTER TABLE `rols` DISABLE KEYS */;
INSERT INTO `rols` VALUES (1,1,'Admin','2024-09-16 11:04:47','2024-09-16 11:04:47'),(2,1,'Operativo','2024-09-16 11:04:47','2024-09-16 11:04:47');
/*!40000 ALTER TABLE `rols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_rols`
--

DROP TABLE IF EXISTS `usuario_rols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_rols` (
  `id_usuario_rol` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `id_rol` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario_rol`),
  KEY `usuario_rols_id_usuario_foreign` (`id_usuario`),
  KEY `usuario_rols_id_rol_foreign` (`id_rol`),
  CONSTRAINT `usuario_rols_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `rols` (`id_rol`) ON DELETE CASCADE,
  CONSTRAINT `usuario_rols_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_rols`
--

LOCK TABLES `usuario_rols` WRITE;
/*!40000 ALTER TABLE `usuario_rols` DISABLE KEYS */;
INSERT INTO `usuario_rols` VALUES (1,2,1,'2024-09-16 11:04:47','2024-09-16 11:04:47'),(2,1,2,'2024-09-16 11:04:47','2024-09-16 11:04:47');
/*!40000 ALTER TABLE `usuario_rols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT 1,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuarios_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'example1@gmail.com','$2y$10$uVnDmRIGTYz71ciBg3zb9.6kNATqCJYq6dr2ZU7VoLODrdyDdWDEC','2024-09-16 11:04:47','2024-09-16 11:04:47'),(2,1,'example@gmail.com','$2y$10$R0Gpc5Wv/Ma4/Aj5yOQw1u1YHhfri4nusBmuaqafDbWlyJ/l.R7Sy','2024-09-16 11:04:47','2024-09-16 11:04:47');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_data`
--

DROP TABLE IF EXISTS `weather_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `temperature` double(8,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_data`
--

LOCK TABLES `weather_data` WRITE;
/*!40000 ALTER TABLE `weather_data` DISABLE KEYS */;
INSERT INTO `weather_data` VALUES (1,'Tokyo',34.93,'2024-08-23','2024-09-16 11:04:47','2024-09-16 11:04:47'),(2,'Paris',-0.36,'2024-09-10','2024-09-16 11:04:47','2024-09-16 11:04:47'),(3,'New York',-5.09,'2024-08-27','2024-09-16 11:04:47','2024-09-16 11:04:47'),(4,'London',0.93,'2024-09-13','2024-09-16 11:04:47','2024-09-16 11:04:47'),(5,'London',-6.75,'2024-09-03','2024-09-16 11:04:47','2024-09-16 11:04:47'),(6,'London',15.83,'2024-08-24','2024-09-16 11:04:47','2024-09-16 11:04:47'),(7,'London',1.49,'2024-09-01','2024-09-16 11:04:47','2024-09-16 11:04:47'),(8,'New York',23.58,'2024-08-27','2024-09-16 11:04:47','2024-09-16 11:04:47'),(9,'Paris',10.95,'2024-08-29','2024-09-16 11:04:47','2024-09-16 11:04:47'),(10,'New York',20.23,'2024-08-17','2024-09-16 11:04:47','2024-09-16 11:04:47'),(11,'London',-3.72,'2024-09-15','2024-09-16 11:04:48','2024-09-16 11:04:48'),(12,'New York',21.80,'2024-08-23','2024-09-16 11:04:48','2024-09-16 11:04:48'),(13,'Paris',10.65,'2024-09-10','2024-09-16 11:04:48','2024-09-16 11:04:48'),(14,'New York',-6.46,'2024-09-06','2024-09-16 11:04:48','2024-09-16 11:04:48'),(15,'Tokyo',-9.41,'2024-08-23','2024-09-16 11:04:48','2024-09-16 11:04:48'),(16,'London',2.33,'2024-09-02','2024-09-16 11:04:48','2024-09-16 11:04:48'),(17,'Paris',9.16,'2024-08-21','2024-09-16 11:04:48','2024-09-16 11:04:48'),(18,'New York',6.06,'2024-08-24','2024-09-16 11:04:48','2024-09-16 11:04:48'),(19,'Tokyo',-5.90,'2024-08-24','2024-09-16 11:04:48','2024-09-16 11:04:48'),(20,'Tokyo',17.47,'2024-08-23','2024-09-16 11:04:48','2024-09-16 11:04:48'),(21,'New York',-7.64,'2024-08-27','2024-09-16 11:04:48','2024-09-16 11:04:48'),(22,'London',34.68,'2024-09-15','2024-09-16 11:04:48','2024-09-16 11:04:48'),(23,'Tokyo',11.55,'2024-09-10','2024-09-16 11:04:48','2024-09-16 11:04:48'),(24,'New York',7.86,'2024-08-30','2024-09-16 11:04:48','2024-09-16 11:04:48'),(25,'Tokyo',7.91,'2024-09-12','2024-09-16 11:04:48','2024-09-16 11:04:48'),(26,'Paris',23.60,'2024-09-08','2024-09-16 11:04:48','2024-09-16 11:04:48'),(27,'London',14.63,'2024-09-15','2024-09-16 11:04:48','2024-09-16 11:04:48'),(28,'Tokyo',-2.56,'2024-09-08','2024-09-16 11:04:48','2024-09-16 11:04:48'),(29,'Paris',24.47,'2024-08-24','2024-09-16 11:04:48','2024-09-16 11:04:48'),(30,'Paris',-1.31,'2024-09-08','2024-09-16 11:04:48','2024-09-16 11:04:48'),(31,'New York',14.83,'2024-09-13','2024-09-16 11:04:48','2024-09-16 11:04:48'),(32,'Paris',22.90,'2024-08-21','2024-09-16 11:04:48','2024-09-16 11:04:48'),(33,'Tokyo',14.74,'2024-08-22','2024-09-16 11:04:48','2024-09-16 11:04:48'),(34,'Tokyo',-0.04,'2024-09-08','2024-09-16 11:04:48','2024-09-16 11:04:48'),(35,'New York',15.11,'2024-09-02','2024-09-16 11:04:48','2024-09-16 11:04:48'),(36,'Paris',20.43,'2024-08-27','2024-09-16 11:04:48','2024-09-16 11:04:48'),(37,'London',27.92,'2024-08-25','2024-09-16 11:04:48','2024-09-16 11:04:48'),(38,'Tokyo',0.91,'2024-09-09','2024-09-16 11:04:48','2024-09-16 11:04:48'),(39,'Paris',24.27,'2024-08-21','2024-09-16 11:04:48','2024-09-16 11:04:48'),(40,'London',-9.89,'2024-09-10','2024-09-16 11:04:48','2024-09-16 11:04:48'),(41,'London',-6.62,'2024-08-18','2024-09-16 11:04:48','2024-09-16 11:04:48'),(42,'Tokyo',20.52,'2024-09-05','2024-09-16 11:04:48','2024-09-16 11:04:48'),(43,'London',16.47,'2024-09-01','2024-09-16 11:04:48','2024-09-16 11:04:48'),(44,'Paris',14.01,'2024-08-25','2024-09-16 11:04:48','2024-09-16 11:04:48'),(45,'New York',26.42,'2024-08-22','2024-09-16 11:04:48','2024-09-16 11:04:48'),(46,'London',33.29,'2024-09-02','2024-09-16 11:04:49','2024-09-16 11:04:49'),(47,'Tokyo',22.04,'2024-08-21','2024-09-16 11:04:49','2024-09-16 11:04:49'),(48,'Paris',13.05,'2024-09-02','2024-09-16 11:04:49','2024-09-16 11:04:49'),(49,'New York',-9.22,'2024-08-27','2024-09-16 11:04:49','2024-09-16 11:04:49'),(50,'Tokyo',18.81,'2024-08-25','2024-09-16 11:04:49','2024-09-16 11:04:49'),(51,'London',2.42,'2024-08-23','2024-09-16 11:04:49','2024-09-16 11:04:49'),(52,'London',-8.48,'2024-08-25','2024-09-16 11:04:49','2024-09-16 11:04:49'),(53,'Tokyo',22.47,'2024-08-31','2024-09-16 11:04:49','2024-09-16 11:04:49'),(54,'Paris',15.98,'2024-08-21','2024-09-16 11:04:49','2024-09-16 11:04:49'),(55,'London',30.37,'2024-08-26','2024-09-16 11:04:49','2024-09-16 11:04:49'),(56,'London',14.09,'2024-08-30','2024-09-16 11:04:49','2024-09-16 11:04:49'),(57,'Tokyo',34.40,'2024-09-04','2024-09-16 11:04:49','2024-09-16 11:04:49'),(58,'Tokyo',2.55,'2024-09-03','2024-09-16 11:04:49','2024-09-16 11:04:49'),(59,'Paris',-1.70,'2024-09-03','2024-09-16 11:04:49','2024-09-16 11:04:49'),(60,'New York',21.94,'2024-08-24','2024-09-16 11:04:49','2024-09-16 11:04:49'),(61,'New York',0.68,'2024-09-08','2024-09-16 11:04:49','2024-09-16 11:04:49'),(62,'Tokyo',11.00,'2024-08-26','2024-09-16 11:04:49','2024-09-16 11:04:49'),(63,'London',6.22,'2024-08-20','2024-09-16 11:04:49','2024-09-16 11:04:49'),(64,'Tokyo',6.56,'2024-09-14','2024-09-16 11:04:49','2024-09-16 11:04:49'),(65,'London',26.31,'2024-08-23','2024-09-16 11:04:49','2024-09-16 11:04:49'),(66,'Paris',23.03,'2024-09-02','2024-09-16 11:04:49','2024-09-16 11:04:49'),(67,'New York',25.82,'2024-08-18','2024-09-16 11:04:49','2024-09-16 11:04:49'),(68,'Paris',13.05,'2024-09-09','2024-09-16 11:04:49','2024-09-16 11:04:49'),(69,'Tokyo',-7.54,'2024-08-20','2024-09-16 11:04:49','2024-09-16 11:04:49'),(70,'New York',-0.02,'2024-09-15','2024-09-16 11:04:49','2024-09-16 11:04:49'),(71,'London',-9.12,'2024-09-02','2024-09-16 11:04:49','2024-09-16 11:04:49'),(72,'Tokyo',33.37,'2024-08-27','2024-09-16 11:04:49','2024-09-16 11:04:49'),(73,'Tokyo',2.62,'2024-09-08','2024-09-16 11:04:49','2024-09-16 11:04:49'),(74,'Tokyo',8.11,'2024-09-07','2024-09-16 11:04:49','2024-09-16 11:04:49'),(75,'Tokyo',8.13,'2024-09-04','2024-09-16 11:04:49','2024-09-16 11:04:49'),(76,'London',-4.21,'2024-09-08','2024-09-16 11:04:49','2024-09-16 11:04:49'),(77,'New York',1.77,'2024-08-29','2024-09-16 11:04:49','2024-09-16 11:04:49'),(78,'Paris',-9.08,'2024-09-03','2024-09-16 11:04:49','2024-09-16 11:04:49'),(79,'New York',16.22,'2024-09-11','2024-09-16 11:04:49','2024-09-16 11:04:49'),(80,'Tokyo',-2.07,'2024-09-13','2024-09-16 11:04:50','2024-09-16 11:04:50'),(81,'London',-6.06,'2024-08-21','2024-09-16 11:04:50','2024-09-16 11:04:50'),(82,'New York',-4.04,'2024-08-30','2024-09-16 11:04:50','2024-09-16 11:04:50'),(83,'London',31.01,'2024-09-07','2024-09-16 11:04:50','2024-09-16 11:04:50'),(84,'New York',13.98,'2024-08-21','2024-09-16 11:04:50','2024-09-16 11:04:50'),(85,'New York',-4.10,'2024-08-18','2024-09-16 11:04:50','2024-09-16 11:04:50'),(86,'New York',11.36,'2024-09-09','2024-09-16 11:04:50','2024-09-16 11:04:50'),(87,'New York',14.12,'2024-08-25','2024-09-16 11:04:50','2024-09-16 11:04:50'),(88,'New York',31.70,'2024-08-31','2024-09-16 11:04:50','2024-09-16 11:04:50'),(89,'London',34.91,'2024-08-21','2024-09-16 11:04:50','2024-09-16 11:04:50'),(90,'Tokyo',-3.42,'2024-09-15','2024-09-16 11:04:50','2024-09-16 11:04:50'),(91,'London',-4.32,'2024-09-01','2024-09-16 11:04:50','2024-09-16 11:04:50'),(92,'London',18.58,'2024-09-03','2024-09-16 11:04:50','2024-09-16 11:04:50'),(93,'Paris',25.52,'2024-09-08','2024-09-16 11:04:50','2024-09-16 11:04:50'),(94,'London',16.62,'2024-08-29','2024-09-16 11:04:50','2024-09-16 11:04:50'),(95,'Paris',-3.96,'2024-08-27','2024-09-16 11:04:50','2024-09-16 11:04:50'),(96,'Paris',33.76,'2024-09-09','2024-09-16 11:04:50','2024-09-16 11:04:50'),(97,'London',9.41,'2024-09-02','2024-09-16 11:04:50','2024-09-16 11:04:50'),(98,'London',18.89,'2024-09-12','2024-09-16 11:04:50','2024-09-16 11:04:50'),(99,'Tokyo',4.23,'2024-08-19','2024-09-16 11:04:50','2024-09-16 11:04:50'),(100,'Tokyo',15.39,'2024-08-31','2024-09-16 11:04:50','2024-09-16 11:04:50'),(101,'Paris',29.74,'2024-09-02','2024-09-16 11:04:50','2024-09-16 11:04:50'),(102,'Paris',-2.71,'2024-08-17','2024-09-16 11:04:50','2024-09-16 11:04:50'),(103,'New York',5.25,'2024-08-18','2024-09-16 11:04:50','2024-09-16 11:04:50'),(104,'Tokyo',-1.55,'2024-09-07','2024-09-16 11:04:50','2024-09-16 11:04:50'),(105,'London',27.81,'2024-09-08','2024-09-16 11:04:50','2024-09-16 11:04:50'),(106,'Tokyo',20.54,'2024-08-20','2024-09-16 11:04:50','2024-09-16 11:04:50'),(107,'Tokyo',20.39,'2024-08-22','2024-09-16 11:04:51','2024-09-16 11:04:51'),(108,'Paris',25.01,'2024-09-15','2024-09-16 11:04:51','2024-09-16 11:04:51'),(109,'Paris',-10.00,'2024-08-21','2024-09-16 11:04:51','2024-09-16 11:04:51'),(110,'Tokyo',2.29,'2024-08-29','2024-09-16 11:04:51','2024-09-16 11:04:51'),(111,'Paris',16.67,'2024-09-09','2024-09-16 11:04:51','2024-09-16 11:04:51'),(112,'Paris',4.67,'2024-09-11','2024-09-16 11:04:51','2024-09-16 11:04:51'),(113,'Paris',23.49,'2024-09-01','2024-09-16 11:04:51','2024-09-16 11:04:51'),(114,'Paris',6.27,'2024-08-25','2024-09-16 11:04:51','2024-09-16 11:04:51'),(115,'New York',20.25,'2024-08-24','2024-09-16 11:04:51','2024-09-16 11:04:51'),(116,'New York',3.40,'2024-09-08','2024-09-16 11:04:51','2024-09-16 11:04:51'),(117,'Paris',-2.44,'2024-09-06','2024-09-16 11:04:51','2024-09-16 11:04:51'),(118,'Paris',17.61,'2024-09-09','2024-09-16 11:04:51','2024-09-16 11:04:51'),(119,'London',27.21,'2024-08-20','2024-09-16 11:04:51','2024-09-16 11:04:51'),(120,'London',-0.26,'2024-09-08','2024-09-16 11:04:51','2024-09-16 11:04:51'),(121,'Paris',-6.80,'2024-08-28','2024-09-16 11:04:51','2024-09-16 11:04:51'),(122,'New York',3.31,'2024-08-30','2024-09-16 11:04:51','2024-09-16 11:04:51'),(123,'Tokyo',16.63,'2024-09-09','2024-09-16 11:04:51','2024-09-16 11:04:51'),(124,'Paris',16.89,'2024-08-25','2024-09-16 11:04:51','2024-09-16 11:04:51'),(125,'Tokyo',-2.29,'2024-08-23','2024-09-16 11:04:51','2024-09-16 11:04:51'),(126,'Tokyo',-4.56,'2024-09-01','2024-09-16 11:04:51','2024-09-16 11:04:51'),(127,'Paris',16.94,'2024-08-17','2024-09-16 11:04:51','2024-09-16 11:04:51'),(128,'Paris',23.37,'2024-08-22','2024-09-16 11:04:51','2024-09-16 11:04:51'),(129,'Tokyo',26.65,'2024-08-19','2024-09-16 11:04:51','2024-09-16 11:04:51'),(130,'Paris',18.21,'2024-08-30','2024-09-16 11:04:51','2024-09-16 11:04:51'),(131,'Paris',2.63,'2024-09-13','2024-09-16 11:04:51','2024-09-16 11:04:51'),(132,'London',24.98,'2024-08-27','2024-09-16 11:04:51','2024-09-16 11:04:51'),(133,'Paris',-7.97,'2024-09-09','2024-09-16 11:04:51','2024-09-16 11:04:51'),(134,'Tokyo',-5.14,'2024-08-26','2024-09-16 11:04:51','2024-09-16 11:04:51'),(135,'Paris',24.83,'2024-08-19','2024-09-16 11:04:51','2024-09-16 11:04:51'),(136,'Paris',11.63,'2024-09-11','2024-09-16 11:04:51','2024-09-16 11:04:51'),(137,'London',23.75,'2024-09-10','2024-09-16 11:04:51','2024-09-16 11:04:51'),(138,'Paris',7.57,'2024-09-07','2024-09-16 11:04:51','2024-09-16 11:04:51'),(139,'New York',34.71,'2024-09-14','2024-09-16 11:04:51','2024-09-16 11:04:51'),(140,'New York',-5.23,'2024-09-01','2024-09-16 11:04:51','2024-09-16 11:04:51'),(141,'Paris',33.60,'2024-09-13','2024-09-16 11:04:51','2024-09-16 11:04:51'),(142,'Paris',2.63,'2024-09-06','2024-09-16 11:04:52','2024-09-16 11:04:52'),(143,'New York',33.64,'2024-09-01','2024-09-16 11:04:52','2024-09-16 11:04:52'),(144,'New York',-6.41,'2024-09-07','2024-09-16 11:04:52','2024-09-16 11:04:52'),(145,'New York',6.03,'2024-09-12','2024-09-16 11:04:52','2024-09-16 11:04:52'),(146,'Paris',33.47,'2024-09-03','2024-09-16 11:04:52','2024-09-16 11:04:52'),(147,'Paris',-9.39,'2024-08-18','2024-09-16 11:04:52','2024-09-16 11:04:52'),(148,'London',31.42,'2024-08-30','2024-09-16 11:04:52','2024-09-16 11:04:52'),(149,'New York',25.14,'2024-09-01','2024-09-16 11:04:52','2024-09-16 11:04:52'),(150,'Tokyo',22.95,'2024-08-27','2024-09-16 11:04:52','2024-09-16 11:04:52'),(151,'Paris',-0.47,'2024-09-02','2024-09-16 11:04:52','2024-09-16 11:04:52'),(152,'London',-3.52,'2024-09-13','2024-09-16 11:04:52','2024-09-16 11:04:52'),(153,'New York',0.32,'2024-08-23','2024-09-16 11:04:52','2024-09-16 11:04:52'),(154,'London',19.66,'2024-08-21','2024-09-16 11:04:52','2024-09-16 11:04:52'),(155,'London',-7.42,'2024-09-10','2024-09-16 11:04:52','2024-09-16 11:04:52'),(156,'Tokyo',4.77,'2024-09-13','2024-09-16 11:04:52','2024-09-16 11:04:52'),(157,'Paris',-5.79,'2024-08-26','2024-09-16 11:04:52','2024-09-16 11:04:52'),(158,'Paris',34.89,'2024-08-31','2024-09-16 11:04:52','2024-09-16 11:04:52'),(159,'Tokyo',33.27,'2024-09-15','2024-09-16 11:04:52','2024-09-16 11:04:52'),(160,'New York',5.59,'2024-09-13','2024-09-16 11:04:52','2024-09-16 11:04:52'),(161,'New York',8.02,'2024-09-08','2024-09-16 11:04:52','2024-09-16 11:04:52'),(162,'New York',24.04,'2024-08-20','2024-09-16 11:04:52','2024-09-16 11:04:52'),(163,'New York',-0.26,'2024-09-04','2024-09-16 11:04:52','2024-09-16 11:04:52'),(164,'Tokyo',8.87,'2024-08-29','2024-09-16 11:04:52','2024-09-16 11:04:52'),(165,'Tokyo',6.50,'2024-08-17','2024-09-16 11:04:52','2024-09-16 11:04:52'),(166,'Tokyo',-8.36,'2024-08-31','2024-09-16 11:04:52','2024-09-16 11:04:52'),(167,'Paris',26.30,'2024-09-07','2024-09-16 11:04:52','2024-09-16 11:04:52'),(168,'Tokyo',2.78,'2024-09-06','2024-09-16 11:04:52','2024-09-16 11:04:52'),(169,'Paris',20.47,'2024-08-17','2024-09-16 11:04:52','2024-09-16 11:04:52'),(170,'London',10.41,'2024-09-05','2024-09-16 11:04:52','2024-09-16 11:04:52'),(171,'Tokyo',0.49,'2024-09-04','2024-09-16 11:04:52','2024-09-16 11:04:52'),(172,'New York',3.46,'2024-09-03','2024-09-16 11:04:52','2024-09-16 11:04:52'),(173,'Tokyo',34.03,'2024-09-09','2024-09-16 11:04:52','2024-09-16 11:04:52'),(174,'Paris',6.07,'2024-08-25','2024-09-16 11:04:52','2024-09-16 11:04:52'),(175,'New York',14.70,'2024-09-14','2024-09-16 11:04:52','2024-09-16 11:04:52'),(176,'Paris',-6.84,'2024-09-15','2024-09-16 11:04:52','2024-09-16 11:04:52'),(177,'London',-9.58,'2024-09-05','2024-09-16 11:04:52','2024-09-16 11:04:52'),(178,'Paris',24.15,'2024-08-22','2024-09-16 11:04:52','2024-09-16 11:04:52'),(179,'Paris',-6.00,'2024-09-03','2024-09-16 11:04:52','2024-09-16 11:04:52'),(180,'Tokyo',17.94,'2024-08-23','2024-09-16 11:04:52','2024-09-16 11:04:52'),(181,'Tokyo',-3.80,'2024-09-11','2024-09-16 11:04:53','2024-09-16 11:04:53'),(182,'London',2.05,'2024-08-18','2024-09-16 11:04:53','2024-09-16 11:04:53'),(183,'Paris',15.66,'2024-09-07','2024-09-16 11:04:53','2024-09-16 11:04:53'),(184,'New York',-5.13,'2024-08-18','2024-09-16 11:04:53','2024-09-16 11:04:53'),(185,'Tokyo',32.96,'2024-09-13','2024-09-16 11:04:53','2024-09-16 11:04:53'),(186,'Paris',-2.46,'2024-09-01','2024-09-16 11:04:53','2024-09-16 11:04:53'),(187,'Tokyo',17.60,'2024-08-30','2024-09-16 11:04:53','2024-09-16 11:04:53'),(188,'Tokyo',-8.73,'2024-08-22','2024-09-16 11:04:53','2024-09-16 11:04:53'),(189,'Paris',9.26,'2024-08-28','2024-09-16 11:04:53','2024-09-16 11:04:53'),(190,'Paris',-1.59,'2024-08-24','2024-09-16 11:04:53','2024-09-16 11:04:53'),(191,'London',9.49,'2024-09-13','2024-09-16 11:04:53','2024-09-16 11:04:53'),(192,'New York',-8.41,'2024-08-18','2024-09-16 11:04:53','2024-09-16 11:04:53'),(193,'Tokyo',13.72,'2024-09-01','2024-09-16 11:04:53','2024-09-16 11:04:53'),(194,'New York',30.30,'2024-08-19','2024-09-16 11:04:53','2024-09-16 11:04:53'),(195,'London',10.33,'2024-08-28','2024-09-16 11:04:53','2024-09-16 11:04:53'),(196,'Tokyo',4.01,'2024-08-30','2024-09-16 11:04:53','2024-09-16 11:04:53'),(197,'Tokyo',25.28,'2024-09-04','2024-09-16 11:04:53','2024-09-16 11:04:53'),(198,'Tokyo',17.71,'2024-08-17','2024-09-16 11:04:53','2024-09-16 11:04:53'),(199,'New York',33.72,'2024-08-18','2024-09-16 11:04:53','2024-09-16 11:04:53'),(200,'London',-9.48,'2024-08-28','2024-09-16 11:04:53','2024-09-16 11:04:53'),(201,'Paris',-9.24,'2024-09-12','2024-09-16 11:04:53','2024-09-16 11:04:53'),(202,'New York',23.09,'2024-08-21','2024-09-16 11:04:53','2024-09-16 11:04:53'),(203,'London',7.85,'2024-08-20','2024-09-16 11:04:53','2024-09-16 11:04:53'),(204,'Tokyo',-2.90,'2024-09-13','2024-09-16 11:04:53','2024-09-16 11:04:53'),(205,'New York',-8.46,'2024-08-24','2024-09-16 11:04:53','2024-09-16 11:04:53'),(206,'London',17.05,'2024-09-08','2024-09-16 11:04:53','2024-09-16 11:04:53'),(207,'Tokyo',6.19,'2024-08-29','2024-09-16 11:04:53','2024-09-16 11:04:53'),(208,'Paris',14.18,'2024-08-20','2024-09-16 11:04:53','2024-09-16 11:04:53'),(209,'Paris',-1.54,'2024-08-18','2024-09-16 11:04:53','2024-09-16 11:04:53'),(210,'Paris',13.53,'2024-08-19','2024-09-16 11:04:53','2024-09-16 11:04:53'),(211,'Paris',-1.93,'2024-08-30','2024-09-16 11:04:53','2024-09-16 11:04:53'),(212,'New York',12.85,'2024-08-20','2024-09-16 11:04:53','2024-09-16 11:04:53'),(213,'London',2.32,'2024-08-20','2024-09-16 11:04:53','2024-09-16 11:04:53'),(214,'New York',10.74,'2024-09-04','2024-09-16 11:04:53','2024-09-16 11:04:53'),(215,'Tokyo',8.00,'2024-08-21','2024-09-16 11:04:53','2024-09-16 11:04:53'),(216,'Tokyo',4.92,'2024-08-28','2024-09-16 11:04:53','2024-09-16 11:04:53'),(217,'Tokyo',21.63,'2024-09-01','2024-09-16 11:04:54','2024-09-16 11:04:54'),(218,'London',31.34,'2024-08-29','2024-09-16 11:04:54','2024-09-16 11:04:54'),(219,'London',33.26,'2024-08-17','2024-09-16 11:04:54','2024-09-16 11:04:54'),(220,'Tokyo',-9.28,'2024-08-29','2024-09-16 11:04:54','2024-09-16 11:04:54'),(221,'New York',0.98,'2024-09-05','2024-09-16 11:04:54','2024-09-16 11:04:54'),(222,'New York',27.08,'2024-09-11','2024-09-16 11:04:54','2024-09-16 11:04:54'),(223,'Tokyo',0.05,'2024-08-24','2024-09-16 11:04:54','2024-09-16 11:04:54'),(224,'Tokyo',33.64,'2024-08-28','2024-09-16 11:04:54','2024-09-16 11:04:54'),(225,'Tokyo',-4.18,'2024-09-12','2024-09-16 11:04:54','2024-09-16 11:04:54'),(226,'Tokyo',16.89,'2024-08-17','2024-09-16 11:04:54','2024-09-16 11:04:54'),(227,'London',-9.97,'2024-09-01','2024-09-16 11:04:54','2024-09-16 11:04:54'),(228,'London',24.92,'2024-09-11','2024-09-16 11:04:54','2024-09-16 11:04:54'),(229,'New York',33.71,'2024-08-26','2024-09-16 11:04:54','2024-09-16 11:04:54'),(230,'New York',9.93,'2024-09-13','2024-09-16 11:04:54','2024-09-16 11:04:54'),(231,'Tokyo',-0.56,'2024-09-04','2024-09-16 11:04:54','2024-09-16 11:04:54'),(232,'Paris',7.99,'2024-08-29','2024-09-16 11:04:54','2024-09-16 11:04:54'),(233,'Tokyo',-2.85,'2024-09-04','2024-09-16 11:04:54','2024-09-16 11:04:54'),(234,'Tokyo',9.68,'2024-08-26','2024-09-16 11:04:54','2024-09-16 11:04:54'),(235,'Tokyo',-5.13,'2024-09-12','2024-09-16 11:04:54','2024-09-16 11:04:54'),(236,'Tokyo',-3.87,'2024-09-12','2024-09-16 11:04:54','2024-09-16 11:04:54'),(237,'New York',15.05,'2024-09-06','2024-09-16 11:04:54','2024-09-16 11:04:54'),(238,'Tokyo',-7.95,'2024-08-21','2024-09-16 11:04:54','2024-09-16 11:04:54'),(239,'New York',-6.81,'2024-08-26','2024-09-16 11:04:54','2024-09-16 11:04:54'),(240,'New York',-7.22,'2024-09-01','2024-09-16 11:04:54','2024-09-16 11:04:54'),(241,'Tokyo',8.20,'2024-09-05','2024-09-16 11:04:54','2024-09-16 11:04:54'),(242,'New York',12.17,'2024-09-06','2024-09-16 11:04:54','2024-09-16 11:04:54'),(243,'Tokyo',11.72,'2024-08-20','2024-09-16 11:04:54','2024-09-16 11:04:54'),(244,'New York',2.33,'2024-09-03','2024-09-16 11:04:54','2024-09-16 11:04:54'),(245,'New York',23.62,'2024-08-20','2024-09-16 11:04:54','2024-09-16 11:04:54'),(246,'London',-0.13,'2024-09-15','2024-09-16 11:04:54','2024-09-16 11:04:54'),(247,'London',2.52,'2024-08-28','2024-09-16 11:04:54','2024-09-16 11:04:54'),(248,'Tokyo',-4.23,'2024-08-23','2024-09-16 11:04:55','2024-09-16 11:04:55'),(249,'London',3.64,'2024-08-29','2024-09-16 11:04:55','2024-09-16 11:04:55'),(250,'London',12.56,'2024-08-31','2024-09-16 11:04:55','2024-09-16 11:04:55'),(251,'Paris',32.23,'2024-09-05','2024-09-16 11:04:55','2024-09-16 11:04:55'),(252,'Paris',19.15,'2024-08-23','2024-09-16 11:04:55','2024-09-16 11:04:55'),(253,'London',-0.33,'2024-08-22','2024-09-16 11:04:55','2024-09-16 11:04:55'),(254,'London',14.43,'2024-09-04','2024-09-16 11:04:55','2024-09-16 11:04:55'),(255,'London',9.67,'2024-09-01','2024-09-16 11:04:55','2024-09-16 11:04:55'),(256,'New York',24.16,'2024-09-15','2024-09-16 11:04:55','2024-09-16 11:04:55'),(257,'New York',8.60,'2024-09-07','2024-09-16 11:04:55','2024-09-16 11:04:55'),(258,'London',9.36,'2024-08-27','2024-09-16 11:04:55','2024-09-16 11:04:55'),(259,'Tokyo',12.29,'2024-09-08','2024-09-16 11:04:55','2024-09-16 11:04:55'),(260,'London',19.44,'2024-09-15','2024-09-16 11:04:55','2024-09-16 11:04:55'),(261,'Tokyo',16.90,'2024-08-18','2024-09-16 11:04:55','2024-09-16 11:04:55'),(262,'New York',5.70,'2024-09-14','2024-09-16 11:04:55','2024-09-16 11:04:55'),(263,'London',22.35,'2024-08-29','2024-09-16 11:04:55','2024-09-16 11:04:55'),(264,'London',25.79,'2024-08-18','2024-09-16 11:04:55','2024-09-16 11:04:55'),(265,'London',9.10,'2024-09-10','2024-09-16 11:04:55','2024-09-16 11:04:55'),(266,'New York',1.24,'2024-09-02','2024-09-16 11:04:55','2024-09-16 11:04:55'),(267,'Paris',14.62,'2024-09-07','2024-09-16 11:04:55','2024-09-16 11:04:55'),(268,'New York',34.09,'2024-08-20','2024-09-16 11:04:55','2024-09-16 11:04:55'),(269,'New York',-5.30,'2024-09-06','2024-09-16 11:04:55','2024-09-16 11:04:55'),(270,'London',-1.69,'2024-09-02','2024-09-16 11:04:55','2024-09-16 11:04:55'),(271,'London',18.06,'2024-08-28','2024-09-16 11:04:55','2024-09-16 11:04:55'),(272,'Paris',-4.05,'2024-08-26','2024-09-16 11:04:55','2024-09-16 11:04:55'),(273,'Paris',24.63,'2024-09-11','2024-09-16 11:04:55','2024-09-16 11:04:55'),(274,'London',12.11,'2024-08-31','2024-09-16 11:04:55','2024-09-16 11:04:55'),(275,'Paris',21.58,'2024-08-19','2024-09-16 11:04:55','2024-09-16 11:04:55'),(276,'Paris',-1.16,'2024-08-22','2024-09-16 11:04:55','2024-09-16 11:04:55'),(277,'New York',17.81,'2024-08-23','2024-09-16 11:04:55','2024-09-16 11:04:55'),(278,'Tokyo',21.45,'2024-09-12','2024-09-16 11:04:55','2024-09-16 11:04:55'),(279,'London',27.00,'2024-08-24','2024-09-16 11:04:55','2024-09-16 11:04:55'),(280,'Paris',20.61,'2024-08-20','2024-09-16 11:04:55','2024-09-16 11:04:55'),(281,'London',26.58,'2024-09-15','2024-09-16 11:04:55','2024-09-16 11:04:55'),(282,'Paris',25.85,'2024-08-29','2024-09-16 11:04:55','2024-09-16 11:04:55'),(283,'London',18.68,'2024-08-24','2024-09-16 11:04:55','2024-09-16 11:04:55'),(284,'Paris',31.34,'2024-08-18','2024-09-16 11:04:55','2024-09-16 11:04:55'),(285,'Paris',24.49,'2024-09-11','2024-09-16 11:04:55','2024-09-16 11:04:55'),(286,'Paris',24.94,'2024-08-24','2024-09-16 11:04:56','2024-09-16 11:04:56'),(287,'New York',13.52,'2024-09-02','2024-09-16 11:04:56','2024-09-16 11:04:56'),(288,'London',34.62,'2024-09-16','2024-09-16 11:04:56','2024-09-16 11:04:56'),(289,'New York',24.91,'2024-09-13','2024-09-16 11:04:56','2024-09-16 11:04:56'),(290,'London',2.50,'2024-08-21','2024-09-16 11:04:56','2024-09-16 11:04:56'),(291,'New York',-4.46,'2024-09-06','2024-09-16 11:04:56','2024-09-16 11:04:56'),(292,'New York',4.28,'2024-08-19','2024-09-16 11:04:56','2024-09-16 11:04:56'),(293,'Tokyo',12.51,'2024-08-29','2024-09-16 11:04:56','2024-09-16 11:04:56'),(294,'Paris',2.39,'2024-09-11','2024-09-16 11:04:56','2024-09-16 11:04:56'),(295,'London',18.65,'2024-09-10','2024-09-16 11:04:56','2024-09-16 11:04:56'),(296,'Tokyo',-0.19,'2024-09-01','2024-09-16 11:04:56','2024-09-16 11:04:56'),(297,'Tokyo',12.15,'2024-09-12','2024-09-16 11:04:56','2024-09-16 11:04:56'),(298,'Tokyo',-7.28,'2024-09-06','2024-09-16 11:04:56','2024-09-16 11:04:56'),(299,'Tokyo',-3.57,'2024-08-21','2024-09-16 11:04:56','2024-09-16 11:04:56'),(300,'Paris',6.86,'2024-09-04','2024-09-16 11:04:56','2024-09-16 11:04:56'),(301,'Paris',33.01,'2024-09-16','2024-09-16 11:04:56','2024-09-16 11:04:56'),(302,'London',-3.58,'2024-08-28','2024-09-16 11:04:56','2024-09-16 11:04:56'),(303,'London',24.76,'2024-09-08','2024-09-16 11:04:56','2024-09-16 11:04:56'),(304,'New York',-2.32,'2024-08-24','2024-09-16 11:04:56','2024-09-16 11:04:56'),(305,'Paris',12.14,'2024-09-09','2024-09-16 11:04:56','2024-09-16 11:04:56'),(306,'Tokyo',14.74,'2024-09-02','2024-09-16 11:04:56','2024-09-16 11:04:56'),(307,'Paris',-6.37,'2024-09-15','2024-09-16 11:04:56','2024-09-16 11:04:56'),(308,'New York',30.02,'2024-08-26','2024-09-16 11:04:56','2024-09-16 11:04:56'),(309,'Tokyo',-5.24,'2024-09-01','2024-09-16 11:04:56','2024-09-16 11:04:56'),(310,'Tokyo',3.27,'2024-09-05','2024-09-16 11:04:56','2024-09-16 11:04:56'),(311,'New York',1.72,'2024-08-23','2024-09-16 11:04:56','2024-09-16 11:04:56'),(312,'New York',23.10,'2024-09-15','2024-09-16 11:04:56','2024-09-16 11:04:56'),(313,'Tokyo',0.98,'2024-08-29','2024-09-16 11:04:56','2024-09-16 11:04:56'),(314,'New York',25.81,'2024-08-24','2024-09-16 11:04:56','2024-09-16 11:04:56'),(315,'New York',26.08,'2024-09-06','2024-09-16 11:04:56','2024-09-16 11:04:56'),(316,'Paris',29.28,'2024-08-17','2024-09-16 11:04:56','2024-09-16 11:04:56'),(317,'London',5.59,'2024-09-09','2024-09-16 11:04:56','2024-09-16 11:04:56'),(318,'New York',18.01,'2024-09-01','2024-09-16 11:04:56','2024-09-16 11:04:56'),(319,'New York',7.44,'2024-08-22','2024-09-16 11:04:56','2024-09-16 11:04:56'),(320,'Tokyo',22.00,'2024-09-02','2024-09-16 11:04:56','2024-09-16 11:04:56'),(321,'New York',28.72,'2024-09-07','2024-09-16 11:04:56','2024-09-16 11:04:56'),(322,'London',21.32,'2024-09-01','2024-09-16 11:04:56','2024-09-16 11:04:56'),(323,'London',20.24,'2024-08-28','2024-09-16 11:04:57','2024-09-16 11:04:57'),(324,'New York',15.99,'2024-09-14','2024-09-16 11:04:57','2024-09-16 11:04:57'),(325,'Tokyo',24.72,'2024-09-15','2024-09-16 11:04:57','2024-09-16 11:04:57'),(326,'London',6.78,'2024-09-09','2024-09-16 11:04:57','2024-09-16 11:04:57'),(327,'New York',16.71,'2024-09-08','2024-09-16 11:04:57','2024-09-16 11:04:57'),(328,'Paris',33.33,'2024-09-10','2024-09-16 11:04:57','2024-09-16 11:04:57'),(329,'London',-9.97,'2024-08-29','2024-09-16 11:04:57','2024-09-16 11:04:57'),(330,'Tokyo',0.63,'2024-08-20','2024-09-16 11:04:57','2024-09-16 11:04:57'),(331,'Tokyo',20.30,'2024-09-13','2024-09-16 11:04:57','2024-09-16 11:04:57'),(332,'London',7.50,'2024-09-04','2024-09-16 11:04:57','2024-09-16 11:04:57'),(333,'London',4.11,'2024-08-28','2024-09-16 11:04:57','2024-09-16 11:04:57'),(334,'Tokyo',0.73,'2024-09-12','2024-09-16 11:04:57','2024-09-16 11:04:57'),(335,'Paris',18.44,'2024-08-31','2024-09-16 11:04:57','2024-09-16 11:04:57'),(336,'Tokyo',1.64,'2024-09-02','2024-09-16 11:04:57','2024-09-16 11:04:57'),(337,'Tokyo',-6.61,'2024-08-26','2024-09-16 11:04:57','2024-09-16 11:04:57'),(338,'Paris',-3.30,'2024-09-04','2024-09-16 11:04:57','2024-09-16 11:04:57'),(339,'Tokyo',8.64,'2024-08-30','2024-09-16 11:04:57','2024-09-16 11:04:57'),(340,'New York',-5.12,'2024-09-13','2024-09-16 11:04:57','2024-09-16 11:04:57'),(341,'Paris',-7.18,'2024-09-10','2024-09-16 11:04:57','2024-09-16 11:04:57'),(342,'New York',-8.73,'2024-08-19','2024-09-16 11:04:57','2024-09-16 11:04:57'),(343,'Paris',23.93,'2024-08-20','2024-09-16 11:04:57','2024-09-16 11:04:57'),(344,'Paris',0.90,'2024-09-14','2024-09-16 11:04:57','2024-09-16 11:04:57'),(345,'Paris',-4.48,'2024-09-03','2024-09-16 11:04:57','2024-09-16 11:04:57'),(346,'London',30.95,'2024-08-24','2024-09-16 11:04:57','2024-09-16 11:04:57'),(347,'New York',-4.92,'2024-08-23','2024-09-16 11:04:57','2024-09-16 11:04:57'),(348,'New York',14.08,'2024-09-09','2024-09-16 11:04:57','2024-09-16 11:04:57'),(349,'Tokyo',15.23,'2024-08-24','2024-09-16 11:04:57','2024-09-16 11:04:57'),(350,'Paris',-8.15,'2024-09-10','2024-09-16 11:04:57','2024-09-16 11:04:57'),(351,'London',8.26,'2024-09-08','2024-09-16 11:04:57','2024-09-16 11:04:57'),(352,'London',27.25,'2024-08-19','2024-09-16 11:04:57','2024-09-16 11:04:57'),(353,'Paris',11.84,'2024-09-10','2024-09-16 11:04:58','2024-09-16 11:04:58'),(354,'Tokyo',33.46,'2024-08-25','2024-09-16 11:04:58','2024-09-16 11:04:58'),(355,'London',1.14,'2024-09-01','2024-09-16 11:04:58','2024-09-16 11:04:58'),(356,'London',8.49,'2024-08-28','2024-09-16 11:04:58','2024-09-16 11:04:58'),(357,'Tokyo',17.46,'2024-09-16','2024-09-16 11:04:58','2024-09-16 11:04:58'),(358,'London',31.54,'2024-09-13','2024-09-16 11:04:58','2024-09-16 11:04:58'),(359,'London',-8.02,'2024-08-31','2024-09-16 11:04:58','2024-09-16 11:04:58'),(360,'London',32.21,'2024-08-25','2024-09-16 11:04:58','2024-09-16 11:04:58'),(361,'New York',-8.44,'2024-09-05','2024-09-16 11:04:58','2024-09-16 11:04:58'),(362,'Paris',-4.59,'2024-09-09','2024-09-16 11:04:58','2024-09-16 11:04:58'),(363,'Tokyo',-6.26,'2024-09-12','2024-09-16 11:04:58','2024-09-16 11:04:58'),(364,'New York',9.50,'2024-08-30','2024-09-16 11:04:58','2024-09-16 11:04:58'),(365,'Tokyo',25.12,'2024-08-28','2024-09-16 11:04:58','2024-09-16 11:04:58'),(366,'Tokyo',21.81,'2024-09-02','2024-09-16 11:04:58','2024-09-16 11:04:58'),(367,'London',28.21,'2024-09-15','2024-09-16 11:04:58','2024-09-16 11:04:58'),(368,'Paris',-3.58,'2024-09-03','2024-09-16 11:04:58','2024-09-16 11:04:58'),(369,'New York',-5.76,'2024-09-08','2024-09-16 11:04:58','2024-09-16 11:04:58'),(370,'New York',25.81,'2024-09-13','2024-09-16 11:04:58','2024-09-16 11:04:58'),(371,'Paris',14.14,'2024-08-23','2024-09-16 11:04:58','2024-09-16 11:04:58'),(372,'New York',-2.48,'2024-09-11','2024-09-16 11:04:58','2024-09-16 11:04:58'),(373,'London',26.43,'2024-09-05','2024-09-16 11:04:58','2024-09-16 11:04:58'),(374,'Paris',-3.26,'2024-09-01','2024-09-16 11:04:58','2024-09-16 11:04:58'),(375,'New York',12.60,'2024-08-20','2024-09-16 11:04:58','2024-09-16 11:04:58'),(376,'New York',30.50,'2024-09-02','2024-09-16 11:04:58','2024-09-16 11:04:58'),(377,'London',28.72,'2024-09-12','2024-09-16 11:04:58','2024-09-16 11:04:58'),(378,'Tokyo',12.88,'2024-09-05','2024-09-16 11:04:58','2024-09-16 11:04:58'),(379,'Tokyo',10.81,'2024-09-09','2024-09-16 11:04:58','2024-09-16 11:04:58'),(380,'Paris',-8.44,'2024-09-11','2024-09-16 11:04:58','2024-09-16 11:04:58'),(381,'London',20.24,'2024-08-30','2024-09-16 11:04:58','2024-09-16 11:04:58'),(382,'New York',15.97,'2024-09-01','2024-09-16 11:04:58','2024-09-16 11:04:58'),(383,'Paris',-7.05,'2024-09-01','2024-09-16 11:04:58','2024-09-16 11:04:58'),(384,'Paris',16.73,'2024-09-08','2024-09-16 11:04:58','2024-09-16 11:04:58'),(385,'London',16.48,'2024-08-17','2024-09-16 11:04:58','2024-09-16 11:04:58'),(386,'New York',-1.66,'2024-09-03','2024-09-16 11:04:58','2024-09-16 11:04:58'),(387,'New York',-3.45,'2024-09-02','2024-09-16 11:04:59','2024-09-16 11:04:59'),(388,'London',-7.91,'2024-09-16','2024-09-16 11:04:59','2024-09-16 11:04:59'),(389,'Paris',19.92,'2024-09-06','2024-09-16 11:04:59','2024-09-16 11:04:59'),(390,'Tokyo',-4.39,'2024-08-29','2024-09-16 11:04:59','2024-09-16 11:04:59'),(391,'New York',-2.67,'2024-08-19','2024-09-16 11:04:59','2024-09-16 11:04:59'),(392,'New York',26.87,'2024-08-18','2024-09-16 11:04:59','2024-09-16 11:04:59'),(393,'Tokyo',30.49,'2024-08-17','2024-09-16 11:04:59','2024-09-16 11:04:59'),(394,'Paris',25.63,'2024-08-26','2024-09-16 11:04:59','2024-09-16 11:04:59'),(395,'Tokyo',31.19,'2024-08-31','2024-09-16 11:04:59','2024-09-16 11:04:59'),(396,'Paris',34.53,'2024-09-15','2024-09-16 11:04:59','2024-09-16 11:04:59'),(397,'London',7.41,'2024-08-25','2024-09-16 11:04:59','2024-09-16 11:04:59'),(398,'Paris',16.57,'2024-09-09','2024-09-16 11:04:59','2024-09-16 11:04:59'),(399,'New York',26.24,'2024-08-18','2024-09-16 11:04:59','2024-09-16 11:04:59'),(400,'Paris',32.57,'2024-08-24','2024-09-16 11:04:59','2024-09-16 11:04:59'),(401,'Paris',3.25,'2024-08-31','2024-09-16 11:04:59','2024-09-16 11:04:59'),(402,'New York',29.19,'2024-08-23','2024-09-16 11:04:59','2024-09-16 11:04:59'),(403,'Paris',33.84,'2024-09-07','2024-09-16 11:04:59','2024-09-16 11:04:59'),(404,'Tokyo',8.39,'2024-08-18','2024-09-16 11:04:59','2024-09-16 11:04:59'),(405,'London',14.33,'2024-09-08','2024-09-16 11:04:59','2024-09-16 11:04:59'),(406,'London',33.43,'2024-08-23','2024-09-16 11:04:59','2024-09-16 11:04:59'),(407,'London',-8.47,'2024-08-26','2024-09-16 11:04:59','2024-09-16 11:04:59'),(408,'Tokyo',19.91,'2024-09-05','2024-09-16 11:04:59','2024-09-16 11:04:59'),(409,'Paris',-2.76,'2024-09-02','2024-09-16 11:04:59','2024-09-16 11:04:59'),(410,'London',-8.70,'2024-09-07','2024-09-16 11:04:59','2024-09-16 11:04:59'),(411,'New York',34.93,'2024-08-21','2024-09-16 11:04:59','2024-09-16 11:04:59'),(412,'New York',33.60,'2024-09-02','2024-09-16 11:04:59','2024-09-16 11:04:59'),(413,'London',24.99,'2024-08-24','2024-09-16 11:04:59','2024-09-16 11:04:59'),(414,'New York',-7.85,'2024-08-31','2024-09-16 11:04:59','2024-09-16 11:04:59'),(415,'Tokyo',20.06,'2024-08-24','2024-09-16 11:04:59','2024-09-16 11:04:59'),(416,'London',18.12,'2024-09-15','2024-09-16 11:04:59','2024-09-16 11:04:59'),(417,'London',12.03,'2024-09-10','2024-09-16 11:05:00','2024-09-16 11:05:00'),(418,'New York',19.26,'2024-09-12','2024-09-16 11:05:00','2024-09-16 11:05:00'),(419,'London',-0.15,'2024-08-24','2024-09-16 11:05:00','2024-09-16 11:05:00'),(420,'Paris',9.76,'2024-09-11','2024-09-16 11:05:00','2024-09-16 11:05:00'),(421,'New York',9.00,'2024-09-14','2024-09-16 11:05:00','2024-09-16 11:05:00'),(422,'Paris',20.52,'2024-08-25','2024-09-16 11:05:00','2024-09-16 11:05:00'),(423,'New York',1.54,'2024-08-21','2024-09-16 11:05:00','2024-09-16 11:05:00'),(424,'Tokyo',4.83,'2024-09-05','2024-09-16 11:05:00','2024-09-16 11:05:00'),(425,'London',-5.24,'2024-08-17','2024-09-16 11:05:00','2024-09-16 11:05:00'),(426,'Tokyo',12.81,'2024-08-19','2024-09-16 11:05:00','2024-09-16 11:05:00'),(427,'Paris',31.69,'2024-09-14','2024-09-16 11:05:00','2024-09-16 11:05:00'),(428,'Tokyo',9.54,'2024-08-21','2024-09-16 11:05:00','2024-09-16 11:05:00'),(429,'New York',0.56,'2024-09-04','2024-09-16 11:05:00','2024-09-16 11:05:00'),(430,'New York',-4.86,'2024-09-01','2024-09-16 11:05:00','2024-09-16 11:05:00'),(431,'New York',21.85,'2024-08-18','2024-09-16 11:05:00','2024-09-16 11:05:00'),(432,'Paris',1.27,'2024-09-09','2024-09-16 11:05:00','2024-09-16 11:05:00'),(433,'Paris',2.23,'2024-09-04','2024-09-16 11:05:00','2024-09-16 11:05:00'),(434,'Tokyo',10.94,'2024-09-12','2024-09-16 11:05:00','2024-09-16 11:05:00'),(435,'New York',23.50,'2024-08-21','2024-09-16 11:05:00','2024-09-16 11:05:00'),(436,'Tokyo',31.14,'2024-09-10','2024-09-16 11:05:00','2024-09-16 11:05:00'),(437,'New York',21.00,'2024-08-26','2024-09-16 11:05:00','2024-09-16 11:05:00'),(438,'Paris',5.25,'2024-09-15','2024-09-16 11:05:00','2024-09-16 11:05:00'),(439,'Paris',25.90,'2024-08-24','2024-09-16 11:05:00','2024-09-16 11:05:00'),(440,'New York',23.00,'2024-09-04','2024-09-16 11:05:00','2024-09-16 11:05:00'),(441,'New York',5.55,'2024-09-03','2024-09-16 11:05:00','2024-09-16 11:05:00'),(442,'New York',11.57,'2024-08-17','2024-09-16 11:05:00','2024-09-16 11:05:00'),(443,'Paris',-9.03,'2024-09-12','2024-09-16 11:05:00','2024-09-16 11:05:00'),(444,'Tokyo',5.58,'2024-09-02','2024-09-16 11:05:00','2024-09-16 11:05:00'),(445,'Tokyo',34.14,'2024-09-02','2024-09-16 11:05:00','2024-09-16 11:05:00'),(446,'Paris',13.31,'2024-08-26','2024-09-16 11:05:00','2024-09-16 11:05:00'),(447,'Tokyo',19.86,'2024-09-02','2024-09-16 11:05:00','2024-09-16 11:05:00'),(448,'London',19.30,'2024-09-15','2024-09-16 11:05:00','2024-09-16 11:05:00'),(449,'Tokyo',8.52,'2024-09-07','2024-09-16 11:05:01','2024-09-16 11:05:01'),(450,'New York',28.73,'2024-08-18','2024-09-16 11:05:01','2024-09-16 11:05:01'),(451,'New York',30.84,'2024-09-12','2024-09-16 11:05:01','2024-09-16 11:05:01'),(452,'Paris',33.06,'2024-08-26','2024-09-16 11:05:01','2024-09-16 11:05:01'),(453,'London',13.16,'2024-08-18','2024-09-16 11:05:01','2024-09-16 11:05:01'),(454,'New York',4.42,'2024-08-23','2024-09-16 11:05:01','2024-09-16 11:05:01'),(455,'London',-1.35,'2024-08-23','2024-09-16 11:05:01','2024-09-16 11:05:01'),(456,'London',-7.48,'2024-08-24','2024-09-16 11:05:01','2024-09-16 11:05:01'),(457,'Tokyo',-3.42,'2024-09-08','2024-09-16 11:05:01','2024-09-16 11:05:01'),(458,'Tokyo',31.25,'2024-08-25','2024-09-16 11:05:01','2024-09-16 11:05:01'),(459,'New York',33.68,'2024-09-04','2024-09-16 11:05:01','2024-09-16 11:05:01'),(460,'New York',1.39,'2024-08-23','2024-09-16 11:05:01','2024-09-16 11:05:01'),(461,'Tokyo',5.12,'2024-09-10','2024-09-16 11:05:01','2024-09-16 11:05:01'),(462,'Tokyo',26.50,'2024-08-21','2024-09-16 11:05:01','2024-09-16 11:05:01'),(463,'Tokyo',3.54,'2024-09-05','2024-09-16 11:05:01','2024-09-16 11:05:01'),(464,'New York',8.42,'2024-09-14','2024-09-16 11:05:01','2024-09-16 11:05:01'),(465,'London',27.66,'2024-08-24','2024-09-16 11:05:01','2024-09-16 11:05:01'),(466,'London',-9.95,'2024-08-24','2024-09-16 11:05:01','2024-09-16 11:05:01'),(467,'London',14.85,'2024-08-22','2024-09-16 11:05:01','2024-09-16 11:05:01'),(468,'Paris',17.06,'2024-08-17','2024-09-16 11:05:01','2024-09-16 11:05:01'),(469,'London',10.82,'2024-09-03','2024-09-16 11:05:01','2024-09-16 11:05:01'),(470,'Tokyo',-6.95,'2024-08-27','2024-09-16 11:05:01','2024-09-16 11:05:01'),(471,'Tokyo',-9.87,'2024-09-07','2024-09-16 11:05:01','2024-09-16 11:05:01'),(472,'New York',30.55,'2024-08-30','2024-09-16 11:05:01','2024-09-16 11:05:01'),(473,'London',26.53,'2024-09-13','2024-09-16 11:05:01','2024-09-16 11:05:01'),(474,'Paris',14.16,'2024-08-17','2024-09-16 11:05:01','2024-09-16 11:05:01'),(475,'New York',28.10,'2024-09-10','2024-09-16 11:05:01','2024-09-16 11:05:01'),(476,'New York',2.65,'2024-08-24','2024-09-16 11:05:01','2024-09-16 11:05:01'),(477,'Paris',2.19,'2024-08-19','2024-09-16 11:05:01','2024-09-16 11:05:01'),(478,'Tokyo',27.88,'2024-08-28','2024-09-16 11:05:01','2024-09-16 11:05:01'),(479,'London',18.45,'2024-09-07','2024-09-16 11:05:01','2024-09-16 11:05:01'),(480,'Paris',25.41,'2024-09-11','2024-09-16 11:05:01','2024-09-16 11:05:01'),(481,'New York',20.82,'2024-08-28','2024-09-16 11:05:01','2024-09-16 11:05:01'),(482,'New York',28.45,'2024-09-10','2024-09-16 11:05:01','2024-09-16 11:05:01'),(483,'Paris',8.35,'2024-09-13','2024-09-16 11:05:02','2024-09-16 11:05:02'),(484,'Tokyo',24.60,'2024-09-05','2024-09-16 11:05:02','2024-09-16 11:05:02'),(485,'Tokyo',27.18,'2024-08-23','2024-09-16 11:05:02','2024-09-16 11:05:02'),(486,'Tokyo',12.51,'2024-09-10','2024-09-16 11:05:02','2024-09-16 11:05:02'),(487,'Tokyo',-6.96,'2024-08-31','2024-09-16 11:05:02','2024-09-16 11:05:02'),(488,'London',26.12,'2024-09-05','2024-09-16 11:05:02','2024-09-16 11:05:02'),(489,'Paris',10.72,'2024-08-29','2024-09-16 11:05:02','2024-09-16 11:05:02'),(490,'Paris',14.66,'2024-09-13','2024-09-16 11:05:02','2024-09-16 11:05:02'),(491,'London',25.52,'2024-09-05','2024-09-16 11:05:02','2024-09-16 11:05:02'),(492,'Paris',6.89,'2024-09-07','2024-09-16 11:05:02','2024-09-16 11:05:02'),(493,'Tokyo',-8.04,'2024-09-04','2024-09-16 11:05:02','2024-09-16 11:05:02'),(494,'Tokyo',5.02,'2024-09-14','2024-09-16 11:05:02','2024-09-16 11:05:02'),(495,'Paris',2.19,'2024-09-14','2024-09-16 11:05:02','2024-09-16 11:05:02'),(496,'London',25.53,'2024-08-20','2024-09-16 11:05:02','2024-09-16 11:05:02'),(497,'Paris',26.74,'2024-08-23','2024-09-16 11:05:02','2024-09-16 11:05:02'),(498,'Paris',5.50,'2024-08-24','2024-09-16 11:05:02','2024-09-16 11:05:02'),(499,'Paris',13.05,'2024-09-07','2024-09-16 11:05:02','2024-09-16 11:05:02'),(500,'London',7.90,'2024-09-04','2024-09-16 11:05:02','2024-09-16 11:05:02');
/*!40000 ALTER TABLE `weather_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_prueba'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16  1:19:53
