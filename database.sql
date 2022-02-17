-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: bibliotheque
-- ------------------------------------------------------
-- Server version	5.7.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auteur` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `dateNaissance` varchar(20) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecrit`
--

DROP TABLE IF EXISTS `ecrit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecrit` (
  `ISSN` int(4),
  `num` int(4),
  FOREIGN KEY (`ISSN`) REFERENCES livre(`ISSN`),
  FOREIGN KEY (`num`) REFERENCES auteur(`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livre` (
  `ISSN` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `titre` varchar(30) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `nbPage` int(4) NOT NULL,
  `domaine` varchar(50) NOT NULL,
  PRIMARY KEY (`ISSN`),
  FOREIGN KEY (`num`) REFERENCES auteur(`num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auteur`
--

LOCK TABLES `auteur` WRITE;
/*!40000 ALTER TABLE `auteur` DISABLE KEYS */;
INSERT INTO `auteur` VALUES (6,'Boudraa ','Mohamed ouadjih','1999-05-29'),(8,'Gasmi','mohamed','1999-01-01'),(11,'Boudraa','akram','2003-01-17'),(20,'Moulessehoul','Mohammed ','1955-01-10'),(21,'amine','neggazi','2010-11-12'),(22,'koko','kaka','2022-02-21');
/*!40000 ALTER TABLE `auteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
INSERT INTO `livre` VALUES (5, 6, 'Ce que le jour doit a la nuit','Algérie, années 1930. Venu de la campagne, Younès, 9 ans, emménage avec sa famille à Oran, après que la terre de son père a été incendiée, puis saisie par un créancier. Mohamed, son oncle pharmacien', 437, 'Histoire'),(7, 6, 'devloppment web html css js','Ce livre contient un partie pratique et une partie théorique sur le devloppement web cote front end', 40,'Technologie');
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ecrit`
--

LOCK TABLES `ecrit` WRITE;
/*!40000 ALTER TABLE `ecrit` DISABLE KEYS */;
INSERT INTO `ecrit` VALUES (5, 6), (7, 6);
/*!40000 ALTER TABLE `ecrit` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TRIGGER trigNum
    AFTER INSERT
    ON auteur
    FOR EACH ROW
INSERT INTO ecrit SET num = NEW.num;

CREATE TRIGGER trigISSN
    AFTER INSERT
    ON livre
    FOR EACH ROW
INSERT INTO ecrit SET ISSN = NEW.ISSN;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 13:55:00
