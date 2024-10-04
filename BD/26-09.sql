CREATE DATABASE  IF NOT EXISTS `vp` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vp`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vp
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro` (
  `id_usuario` int DEFAULT NULL,
  `id_historia` int DEFAULT NULL,
  `data_de_modificacao` date NOT NULL,
  KEY `id_usuario` (`id_usuario`),
  KEY `id_historia` (`id_historia`),
  CONSTRAINT `cadastro_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `cadastro_ibfk_2` FOREIGN KEY (`id_historia`) REFERENCES `historia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro`
--

LOCK TABLES `cadastro` WRITE;
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` VALUES (1,2,'2024-09-01'),(3,5,'2024-09-02'),(2,1,'2024-09-03'),(4,3,'2024-09-04'),(5,4,'2024-09-05'),(6,7,'2024-09-06'),(7,6,'2024-09-07'),(8,10,'2024-09-08'),(9,11,'2024-09-09'),(10,12,'2024-09-10'),(11,8,'2024-09-11'),(12,13,'2024-09-12'),(13,9,'2024-09-13'),(14,14,'2024-09-14'),(15,15,'2024-09-15');
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conteudo` longtext NOT NULL,
  `data_de_comentario` date NOT NULL,
  `curtida` mediumint DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_historia` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_historia` (`id_historia`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`id_historia`) REFERENCES `historia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'Adorei a história! Muito bem escrita.','2024-09-01',5,3,1),(2,'Uma narrativa incrível, me prendeu do início ao fim.','2024-09-02',10,1,2),(3,'Fiquei emocionado com o final.','2024-09-03',7,4,3),(4,'A trama é envolvente, recomendo!','2024-09-04',8,2,4),(5,'Não gostei do desenvolvimento dos personagens.','2024-09-05',2,5,5),(6,'Excelente! Mal posso esperar pela sequência.','2024-09-06',12,6,6),(7,'A descrição dos lugares me fez sentir que estava lá.','2024-09-07',3,8,7),(8,'História muito interessante, mas o final poderia ser melhor.','2024-09-08',4,7,8),(9,'Os temas abordados são muito relevantes.','2024-09-09',6,9,9),(10,'Um clássico moderno que merece ser lido!','2024-09-10',9,10,10),(11,'A narrativa é fluida e cativante.','2024-09-11',5,11,11),(12,'Uma leitura leve e divertida.','2024-09-12',11,12,12),(13,'Os personagens são bem construídos e carismáticos.','2024-09-13',8,14,13),(14,'Gostei da forma como a história se desenvolveu.','2024-09-14',3,13,14),(15,'Uma obra-prima que todos deveriam ler!','2024-09-15',15,15,15);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia`
--

DROP TABLE IF EXISTS `historia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` tinytext NOT NULL,
  `categoria` tinytext NOT NULL,
  `conteudo` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia`
--

LOCK TABLES `historia` WRITE;
/*!40000 ALTER TABLE `historia` DISABLE KEYS */;
INSERT INTO `historia` VALUES (1,'A Jornada do Herói','Fantasia','Um jovem descobre seu destino e embarca em uma grande aventura.'),(2,'Mistérios da Noite','Suspense','Uma série de eventos estranhos ocorre em uma pequena cidade.'),(3,'Amor em Tempos Difíceis','Romance','Dois amantes enfrentam desafios em meio a uma crise.'),(4,'O Último Dragão','Fantasia','Um dragão solitário busca um novo lar em um mundo em guerra.'),(5,'A Cidade Perdida','Aventura','Exploradores tentam encontrar uma antiga cidade cheia de segredos.'),(6,'Sombras do Passado','Terror','Um grupo de amigos volta à sua cidade natal e se depara com segredos obscuros.'),(7,'Diário de Uma Escritora','Biografia','A vida e desafios enfrentados por uma escritora famosa.'),(8,'Os Guardiões do Tempo','Ficção Científica','Um grupo de viajantes do tempo luta para salvar a história.'),(9,'O Enigma da Pirâmide','Mistério','Detetives investigam uma série de crimes em torno de uma antiga pirâmide.'),(10,'Corações Partidos','Romance','Histórias de amor que superam barreiras e desafios.'),(11,'A Última Fronteira','Ficção Científica','A exploração de um novo planeta traz desafios inesperados.'),(12,'Contos da Meia-Noite','Terror','Histórias curtas que exploram o lado obscuro da mente humana.'),(13,'A Revolução dos Bichos','Fábula','Animais em uma fazenda decidem se rebelar contra os humanos.'),(14,'Entre Mundos','Fantasia','Um jovem encontra um portal que o leva a um mundo mágico.'),(15,'Ecos do Futuro','Ficção Científica','Visões do futuro e as consequências das escolhas do presente.');
/*!40000 ALTER TABLE `historia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nome` varchar(50) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `tipo_de_usuario` enum('admin','leitor','editor') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('João Silva',1,'joao.silva@email.com','senha123','admin'),('Maria Oliveira',2,'maria.oliveira@email.com','senha456','leitor'),('Carlos Souza',3,'carlos.souza@email.com','senha789','editor'),('Ana Costa',4,'ana.costa@email.com','senha101','admin'),('Lucas Lima',5,'lucas.lima@email.com','senha202','leitor'),('Fernanda Almeida',6,'fernanda.almeida@email.com','senha303','editor'),('Ricardo Santos',7,'ricardo.santos@email.com','senha404','admin'),('Juliana Pereira',8,'juliana.pereira@email.com','senha505','leitor'),('Gabriel Rocha',9,'gabriel.rocha@email.com','senha606','editor'),('Laura Mendes',10,'laura.mendes@email.com','senha707','admin'),('Marcio Ribeiro',11,'marcio.ribeiro@email.com','senha808','leitor'),('Tatiane Martins',12,'tatiane.martins@email.com','senha909','editor'),('Felipe Carvalho',13,'felipe.carvalho@email.com','senha112','admin'),('Carla Fernandes',14,'carla.fernandes@email.com','senha223','leitor'),('Vinícius Nascimento',15,'vinicius.nascimento@email.com','senha334','editor');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26 20:16:41
