/*
SQLyog Community v13.1.5  (64 bit)
<<<<<<< Updated upstream
MySQL - 10.1.31-MariaDB : Database - noleggio_auto
=======
MySQL - 10.4.14-MariaDB : Database - noleggio_auto
>>>>>>> Stashed changes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`noleggio_auto` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `noleggio_auto`;

/*Table structure for table `auto` */

DROP TABLE IF EXISTS `auto`;

CREATE TABLE `auto` (
  `id_auto` int(5) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) DEFAULT NULL,
<<<<<<< Updated upstream
  `marca` varchar(20) NOT NULL,
  `capacita_bagaglio` int(4) NOT NULL,
  `potenza` int(4) DEFAULT NULL,
  `num_posti` int(2) NOT NULL,
=======
  `modello` varchar(20) NOT NULL,
  `capacita_bagaglio` int(4) NOT NULL,
  `potenza` int(4) DEFAULT NULL,
  `num_posti` int(2) NOT NULL,
  `prezzo_giorn` int(4) NOT NULL,
>>>>>>> Stashed changes
  PRIMARY KEY (`id_auto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auto` */

<<<<<<< Updated upstream
insert  into `auto`(`id_auto`,`tipo`,`marca`,`capacita_bagaglio`,`potenza`,`num_posti`) values 
(1,'Suv','Skoda Superb berlina',625,120,5),
(2,'Media','	Volkswagen Passat',586,90,5),
(3,'Suv','Nissan Qashqai',723,150,7),
(4,'Piccola','Opel Corsa',240,70,5),
(5,'Piccola','Fiat 500',162,55,4),
(6,'Suv','Audi Q5',779,190,5),
(7,'Media','Dacia Duster',485,110,5),
(8,'Media','Fiat 500X',350,120,5),
(9,'Piccola','Toyota iQ',134,55,2),
(10,'Premium','BMW X5',642,394,5),
(11,'Piccola','Renault Clio',278,70,5),
(12,'Suv','Jeep Compass',450,140,5),
(13,'Media','Volkswagen Golf',338,110,5),
(14,'Premium','Mercedes-Benz GLE ',635,245,7),
(15,'Piccola','Citroën C1',196,72,5),
(16,'Piccola','Kia Picanto',255,67,5),
(17,'Media','Mercedes Classe A',341,136,5),
(18,'Suv','Hyundai Santa Fe',634,189,7),
(19,'Premium','Alfa Romeo Stelvio ',525,289,5),
(20,'Media','Skoda Octavia',344,245,5);
=======
insert  into `auto`(`id_auto`,`tipo`,`modello`,`capacita_bagaglio`,`potenza`,`num_posti`,`prezzo_giorn`) values 
(1,'Media','Skoda_Superb_Berlina',625,120,5,45),
(2,'Media','Volkswagen_Passat',586,90,5,42),
(3,'Suv','Nissan_Qashqai',723,150,7,82),
(4,'Piccola','Opel_Corsa',240,70,5,19),
(5,'Piccola','Fiat_500',162,55,4,15),
(6,'Suv','Audi_Q5',779,190,5,95),
(7,'Media','Dacia_Duster',485,110,5,45),
(8,'Media','Fiat_500X',350,120,5,40),
(9,'Piccola','Toyota_iQ',134,55,2,12),
(10,'Premium','BMW_X5',642,394,5,125),
(11,'Piccola','Renault_Clio',278,70,5,25),
(12,'Suv','Jeep_Compass',450,140,5,90),
(13,'Media','Volkswagen_Golf',338,110,5,48),
(14,'Premium','Mercedes_Benz_GLE',635,245,7,138),
(15,'Piccola','Citroën_C1',196,72,5,19),
(16,'Piccola','Kia_Picanto',255,67,5,22),
(17,'Media','Mercedes_Classe_A',341,136,5,55),
(18,'Suv','Hyundai_Santa_Fe',634,189,7,85),
(19,'Premium','Alfa_Romeo_Stelvio',525,289,5,110),
(20,'Media','Skoda_Octavia',344,245,5,40);
>>>>>>> Stashed changes

/*Table structure for table `ordini` */

DROP TABLE IF EXISTS `ordini`;

CREATE TABLE `ordini` (
  `id_ordine` int(5) NOT NULL AUTO_INCREMENT,
  `fk_utente` int(5) NOT NULL,
  `fk_auto` int(5) NOT NULL,
  `data_ritiro` date NOT NULL,
  `data_consegna` date NOT NULL,
  `luogo_ritiro` varchar(50) NOT NULL,
  `luogo_consegna` varchar(50) NOT NULL,
  `prezzo_giornaliero` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id_ordine`),
  KEY `fk_utente` (`fk_utente`),
  KEY `fk_auto` (`fk_auto`),
  CONSTRAINT `ordini_ibfk_1` FOREIGN KEY (`fk_utente`) REFERENCES `utenti` (`id_utente`),
  CONSTRAINT `ordini_ibfk_2` FOREIGN KEY (`fk_auto`) REFERENCES `auto` (`id_auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ordini` */

/*Table structure for table `utenti` */

DROP TABLE IF EXISTS `utenti`;

CREATE TABLE `utenti` (
  `id_utente` int(5) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `eta` int(3) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(16) NOT NULL,
<<<<<<< Updated upstream
  PRIMARY KEY (`id_utente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
=======
  PRIMARY KEY (`id_utente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
>>>>>>> Stashed changes

/*Data for the table `utenti` */

insert  into `utenti`(`id_utente`,`nome`,`cognome`,`eta`,`email`,`password`) values 
<<<<<<< Updated upstream
(1,'Condurache','Cristian',19,'cristian','1234'),
(2,'Giorgio','Neri',33,'giorgio','4321'),
(3,'Jacopo','Rossi',30,'jacopo','1245'),
(4,'Roberto','Verde',45,'roberto','4321');
=======
(1,'Condurache','Cristian',19,'cristian@gmail.com','1234'),
(5,'Antonio','Manella',18,'AM@gmail.com','ciao'),
(7,'Juri','Kashta',18,'juri@gmail.com','scemo'),
(8,'prova','prova',18,'prova@gmail.com','1234'),
(12,'S','S',24,'condurache.cristian0303@gmail.com','1234');
>>>>>>> Stashed changes

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
