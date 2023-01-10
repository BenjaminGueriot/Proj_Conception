-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 10 jan. 2023 à 14:17
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd_metacampus`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `id_cours` smallint(6) NOT NULL AUTO_INCREMENT,
  `num_seance` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `heuredebut` double DEFAULT NULL,
  `duree` float DEFAULT NULL,
  `type` varchar(42) DEFAULT NULL,
  `id_module` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_cours`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id_cours`, `num_seance`, `date`, `heuredebut`, `duree`, `type`, `id_module`) VALUES
(1, 1, '2023-01-09 00:20:39', 8, 1.5, 'CM', 1),
(2, 2, '2023-01-09 00:20:39', 10, 1.5, 'CM', 3),
(3, 3, '2023-01-09 00:20:39', 13, 2, 'CM', 4),
(4, 4, '2023-01-09 00:20:39', 15, 2, 'CM', 11),
(8, 2, '2023-01-10 15:11:58', 8, 4, 'TP', 5),
(9, 2, '2023-01-10 15:14:12', 13, 1.5, 'CM', 2),
(10, 2, '2023-01-10 15:14:53', 15.5, 1.5, 'CM', 11),
(11, 6, '2023-01-11 15:16:26', 10, 1.5, 'TD', 7),
(12, 5, '2023-01-11 15:16:26', 13, 4, 'TP', 3),
(27, 6, '2023-01-12 17:23:15', 8, 4, 'TP', 15),
(28, 2, '2023-01-02 14:05:28', 8, 4, 'TP', 6),
(29, 2, '2023-01-03 14:05:28', 8, 4, 'TP', 1),
(30, 2, '2023-01-22 14:05:28', 8, 4, 'TP', 1),
(31, 3, '2023-01-25 14:08:21', 13, 1.5, 'TD', 6),
(32, 1, '2023-01-04 14:09:38', 15, 1.5, 'CM', 15),
(33, 1, '2023-01-05 14:09:38', 15, 1.5, 'CM', 15),
(34, 1, '2023-01-27 14:09:38', 8, 1.5, 'TD', 15);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

DROP TABLE IF EXISTS `ecole`;
CREATE TABLE IF NOT EXISTS `ecole` (
  `id_ecole` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_ecole`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`id_ecole`, `nom`) VALUES
(1, 'POPO');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

DROP TABLE IF EXISTS `eleve`;
CREATE TABLE IF NOT EXISTS `eleve` (
  `id_eleve` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(42) DEFAULT NULL,
  `prenom` varchar(42) DEFAULT NULL,
  `login_eleve` varchar(42) DEFAULT NULL,
  `mot_de_passe` varchar(100) DEFAULT NULL,
  `date_arrivee` datetime DEFAULT NULL,
  `id_promo` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_eleve`),
  KEY `id_promo` (`id_promo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`id_eleve`, `nom`, `prenom`, `login_eleve`, `mot_de_passe`, `date_arrivee`, `id_promo`) VALUES
(3, 'Pruvost', 'Jordan', 'pruvostj', '098f6bcd4621d373cade4e832627b4f6', '2023-01-07 21:46:37', 2),
(4, 'Nicolas', 'Thomas', 'nicolast', '098f6bcd4621d373cade4e832627b4f6', '2023-01-07 21:46:37', 3),
(5, 'GrandPont', 'Vincent', 'grandpontv', '098f6bcd4621d373cade4e832627b4f6', '2023-01-01 14:38:05', 2),
(6, 'Gonay', 'Arthur', 'gonaya', '098f6bcd4621d373cade4e832627b4f6', '2022-12-25 14:40:54', 2),
(7, 'Paccoud', 'Bob', 'paccoudb', '098f6bcd4621d373cade4e832627b4f6', '2023-01-31 14:42:35', 3),
(8, 'Gueriot', 'Benjamin', 'gueriotb', '098f6bcd4621d373cade4e832627b4f6', '2023-01-01 14:38:05', 3);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `id_enseignant` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(42) DEFAULT NULL,
  `prenom` varchar(42) DEFAULT NULL,
  `date_arrivee` datetime DEFAULT NULL,
  PRIMARY KEY (`id_enseignant`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id_enseignant`, `nom`, `prenom`, `date_arrivee`) VALUES
(1, 'Ldolive', 'Louis', '2023-01-08 00:24:28'),
(2, 'Ammuse', 'Sam', '2023-01-08 00:28:18'),
(3, 'Deuettrois', 'Benjamin', '2023-01-01 14:38:05'),
(4, 'Parla', 'Flavien', '2022-12-25 14:40:54'),
(5, 'Sensei', 'Vincent', '2022-12-25 14:40:54');

-- --------------------------------------------------------

--
-- Structure de la table `enseigne`
--

DROP TABLE IF EXISTS `enseigne`;
CREATE TABLE IF NOT EXISTS `enseigne` (
  `id_module` smallint(6) NOT NULL,
  `id_enseignant` smallint(6) NOT NULL,
  PRIMARY KEY (`id_module`,`id_enseignant`),
  KEY `id_enseignant` (`id_enseignant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseigne`
--

INSERT INTO `enseigne` (`id_module`, `id_enseignant`) VALUES
(6, 1),
(7, 1),
(15, 1),
(5, 2),
(12, 2),
(13, 2),
(16, 2),
(8, 3),
(9, 3),
(17, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(6, 5),
(10, 5),
(11, 5),
(18, 5);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
CREATE TABLE IF NOT EXISTS `filiere` (
  `id_filiere` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(42) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_filiere`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`id_filiere`, `nom`, `description`) VALUES
(1, 'IDU3', 'La meilleure'),
(2, 'MM3', 'les pas oufs');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id_module` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(42) DEFAULT NULL,
  `description` text,
  `id_ue` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_module`),
  KEY `id_ue` (`id_ue`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id_module`, `nom`, `description`, `id_ue`) VALUES
(1, 'MATH501', 'Mathermatics for engineering', 1),
(2, 'INFO502', 'Database', 1),
(3, 'INFO501', 'number representation and algorithme design', 1),
(4, 'EASI501', 'electrical engineering', 1),
(5, 'EASI541', 'automation', 3),
(6, 'ISOC531', 'Digital society', 3),
(7, 'MATH531', 'Graph theory and language', 3),
(8, 'PROJ531', 'Project management', 3),
(9, 'LANG500', 'Tutoring in english', 4),
(10, 'LANG501', 'English', 4),
(11, 'SHES501', 'Sport', 4),
(12, 'SHES505', 'Business game', 4),
(13, 'SHES503', 'Sustainable developement', 4),
(15, 'MATE551', 'Material', 7),
(16, 'MECA501', 'Applied mechanics', 7),
(17, 'MECA551', 'Computer aided design and prototyping', 7),
(18, 'PHYS551', 'Thermodynamics and heat transfer', 7);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id_eleve` smallint(6) NOT NULL,
  `id_travail` smallint(6) NOT NULL,
  `note` float DEFAULT NULL,
  `coeff` float DEFAULT NULL,
  PRIMARY KEY (`id_eleve`,`id_travail`),
  KEY `id_travail` (`id_travail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id_eleve`, `id_travail`, `note`, `coeff`) VALUES
(3, 1, 0, 3),
(3, 2, 0, 3),
(3, 3, 7, 3),
(3, 4, 5, 2),
(3, 5, 1, 1),
(3, 6, 13, 1),
(3, 7, 10, 3),
(3, 8, 8, 3),
(3, 21, 1, 1),
(3, 22, 3, 2),
(3, 23, 9, 3),
(3, 25, 5, 3),
(3, 26, 10, 2),
(3, 27, 4, 3),
(3, 28, 4, 3),
(3, 29, 16, 2),
(3, 30, 16, 2),
(3, 31, 17, 2),
(3, 32, 13, 2),
(3, 33, 13, 2),
(3, 34, 15, 2),
(3, 38, 0, 3),
(3, 39, 3, 2),
(3, 40, 14, 3),
(3, 41, 18, 1),
(3, 42, 8, 2),
(3, 43, 2, 1),
(3, 44, 0, 1),
(4, 1, 7, 3),
(4, 2, 16, 3),
(4, 3, 16, 3),
(4, 4, 17, 2),
(4, 5, 12, 1),
(4, 6, 3, 1),
(4, 7, 7, 3),
(4, 8, 18, 3),
(4, 21, 15, 1),
(4, 22, 16, 2),
(4, 23, 3, 3),
(4, 25, 12, 3),
(4, 26, 9, 2),
(4, 27, 0, 3),
(4, 28, 14, 3),
(4, 29, 15, 2),
(4, 30, 5, 2),
(4, 31, 9, 2),
(4, 32, 10, 2),
(4, 33, 20, 2),
(4, 34, 1, 2),
(4, 38, 4, 3),
(4, 39, 5, 2),
(4, 40, 1, 3),
(4, 41, 12, 1),
(4, 42, 6, 2),
(4, 43, 7, 1),
(4, 44, 15, 1),
(5, 1, 3, 3),
(5, 2, 16, 3),
(5, 3, 2, 3),
(5, 4, 13, 2),
(5, 5, 18, 1),
(5, 6, 11, 1),
(5, 7, 5, 3),
(5, 8, 3, 3),
(5, 21, 17, 1),
(5, 22, 14, 2),
(5, 23, 9, 3),
(5, 25, 2, 3),
(5, 26, 11, 2),
(5, 27, 10, 3),
(5, 28, 16, 3),
(5, 29, 17, 2),
(5, 30, 16, 2),
(5, 31, 12, 2),
(5, 32, 12, 2),
(5, 33, 8, 2),
(5, 34, 0, 2),
(5, 38, 10, 3),
(5, 39, 8, 2),
(5, 40, 0, 3),
(5, 41, 20, 1),
(5, 42, 18, 2),
(5, 43, 0, 1),
(5, 44, 15, 1),
(6, 1, 7, 3),
(6, 2, 3, 3),
(6, 3, 3, 3),
(6, 4, 16, 2),
(6, 5, 2, 1),
(6, 6, 9, 1),
(6, 7, 9, 3),
(6, 8, 16, 3),
(6, 21, 7, 1),
(6, 22, 4, 2),
(6, 23, 6, 3),
(6, 25, 10, 3),
(6, 26, 20, 2),
(6, 27, 9, 3),
(6, 28, 5, 3),
(6, 29, 19, 2),
(6, 30, 15, 2),
(6, 31, 7, 2),
(6, 32, 19, 2),
(6, 33, 1, 2),
(6, 34, 15, 2),
(6, 38, 2, 3),
(6, 39, 19, 2),
(6, 40, 3, 3),
(6, 41, 5, 1),
(6, 42, 7, 2),
(6, 44, 12, 1),
(7, 1, 3, 3),
(7, 2, 14, 3),
(7, 3, 6, 3),
(7, 4, 9, 2),
(7, 5, 2, 1),
(7, 6, 3, 1),
(7, 7, 5, 3),
(7, 8, 10, 3),
(7, 21, 20, 1),
(7, 22, 20, 2),
(7, 23, 7, 3),
(7, 25, 20, 3),
(7, 26, 8, 2),
(7, 27, 3, 3),
(7, 28, 16, 3),
(7, 29, 15, 2),
(7, 30, 13, 2),
(7, 31, 4, 2),
(7, 32, 12, 2),
(7, 33, 2, 2),
(7, 34, 1, 2),
(7, 38, 5, 3),
(7, 39, 14, 2),
(7, 40, 10, 3),
(7, 41, 14, 1),
(7, 42, 15, 2),
(7, 44, 15, 1),
(8, 1, 6, 3),
(8, 2, 9, 3),
(8, 3, 16, 3),
(8, 4, 12, 2),
(8, 5, 9, 1),
(8, 6, 16, 1),
(8, 7, 4, 3),
(8, 8, 12, 3),
(8, 21, 10, 1),
(8, 22, 14, 2),
(8, 23, 8, 3),
(8, 25, 10, 3),
(8, 26, 3, 2),
(8, 27, 17, 3),
(8, 28, 5, 3),
(8, 29, 18, 2),
(8, 30, 6, 2),
(8, 31, 17, 2),
(8, 32, 5, 2),
(8, 33, 6, 2),
(8, 34, 15, 2),
(8, 38, 15, 3),
(8, 39, 20, 2),
(8, 40, 3, 3),
(8, 41, 20, 1),
(8, 42, 6, 2),
(8, 44, 19, 1);

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

DROP TABLE IF EXISTS `promo`;
CREATE TABLE IF NOT EXISTS `promo` (
  `id_promo` smallint(6) NOT NULL AUTO_INCREMENT,
  `année` datetime DEFAULT NULL,
  `id_filiere` smallint(6) DEFAULT NULL,
  `id_ecole` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_ecole` (`id_ecole`),
  KEY `id_filiere` (`id_filiere`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `promo`
--

INSERT INTO `promo` (`id_promo`, `année`, `id_filiere`, `id_ecole`) VALUES
(2, '2023-01-07 21:46:21', 1, 1),
(3, '2022-09-07 15:25:44', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `travail`
--

DROP TABLE IF EXISTS `travail`;
CREATE TABLE IF NOT EXISTS `travail` (
  `id_travail` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(42) DEFAULT NULL,
  `sujet` text,
  `date_rendu` datetime DEFAULT NULL,
  `id_module` smallint(6) DEFAULT NULL,
  `id_enseignant` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_travail`),
  KEY `id_enseignant` (`id_enseignant`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `travail`
--

INSERT INTO `travail` (`id_travail`, `nom`, `sujet`, `date_rendu`, `id_module`, `id_enseignant`) VALUES
(1, 'exam 1', 'tous jusque chap 3', '2023-01-08 02:29:00', 1, 4),
(2, 'exam 2', 'tous jusque chap 6', '2022-01-08 02:29:00', 3, 5),
(3, 'exam 1', 'tous jusque chap 3', '2023-01-13 02:29:00', 11, 2),
(4, 'exam 2', 'tous jusque chap 6', '2023-01-12 02:29:00', 6, 1),
(5, 'exam 1', 'tous jusque chap 3', '2023-01-13 02:29:00', 5, 5),
(6, 'exam 2', 'tous jusque chap 6', '2023-01-12 02:29:00', 4, 3),
(7, 'Projet Fullstack', 'dev une appli en fullstack', '2023-01-25 16:56:44', 3, 5),
(8, 'COMPTE RENDU PHYSIQUE', 'Compte rendu du tp', '2023-01-29 16:56:44', 18, 2),
(9, 'exam final', 'Réviser tous les cours et les td', '2023-01-13 16:59:46', 1, 3),
(21, 'Oral 1', 'Oral du projet', '2022-12-13 17:42:56', 11, 1),
(22, 'Oral 2', 'Oral du projet', '2022-12-13 17:42:56', 12, 2),
(23, 'Oral 3', 'Oral du projet', '2022-12-13 17:42:56', 13, 3),
(25, 'CR 1', 'Compte rendue du projet', '2022-12-15 17:42:56', 1, 1),
(26, 'CR 2', 'Compte rendue du projet', '2022-12-15 17:42:56', 2, 2),
(27, 'CR 3', 'Compte rendue du projet', '2022-12-15 17:42:56', 3, 3),
(28, 'CR 4', 'Compte rendue du projet', '2022-12-15 17:42:56', 4, 4),
(29, 'CR 5', 'Compte rendue du projet', '2022-12-15 17:42:56', 5, 5),
(30, 'CR 6', 'Compte rendue du projet', '2022-12-15 17:42:56', 6, 1),
(31, 'CR 7', 'Compte rendue du projet', '2022-12-15 17:42:56', 7, 2),
(32, 'CR 8', 'Compte rendue du projet', '2022-12-15 17:42:56', 8, 3),
(33, 'CR 9', 'Compte rendue du projet', '2022-12-15 17:42:56', 9, 4),
(34, 'CR 10', 'Compte rendue du projet', '2022-12-15 17:42:56', 10, 5),
(38, 'Oral 4', 'Oral du projet', '2022-12-13 17:42:56', 11, 4),
(39, 'Oral 5', 'Oral du projet', '2022-12-13 17:42:56', 15, 5),
(40, 'Oral 6', 'Oral du projet', '2022-12-13 17:42:56', 16, 1),
(41, 'Oral 7', 'Oral du projet', '2022-12-13 17:42:56', 17, 2),
(42, 'Oral 8', 'Oral du projet', '2022-12-13 17:42:56', 18, 3),
(43, 'Oral 9', 'Oral du projet', '2022-12-13 17:42:56', 1, 4),
(44, 'Oral 10', 'Oral du projet', '2022-12-13 17:42:56', 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `ue`
--

DROP TABLE IF EXISTS `ue`;
CREATE TABLE IF NOT EXISTS `ue` (
  `id_ue` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_ue`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ue`
--

INSERT INTO `ue` (`id_ue`, `nom`) VALUES
(1, 'UE501'),
(3, 'UE502'),
(4, 'UE503'),
(7, 'UE503');

-- --------------------------------------------------------

--
-- Structure de la table `ue_filiere`
--

DROP TABLE IF EXISTS `ue_filiere`;
CREATE TABLE IF NOT EXISTS `ue_filiere` (
  `id_filiere` smallint(6) NOT NULL,
  `id_ue` smallint(6) NOT NULL,
  PRIMARY KEY (`id_filiere`,`id_ue`),
  KEY `id_ue` (`id_ue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ue_filiere`
--

INSERT INTO `ue_filiere` (`id_filiere`, `id_ue`) VALUES
(1, 1),
(2, 1),
(1, 3),
(2, 3),
(1, 4),
(2, 7);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`);

--
-- Contraintes pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `eleve_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`);

--
-- Contraintes pour la table `enseigne`
--
ALTER TABLE `enseigne`
  ADD CONSTRAINT `enseigne_ibfk_1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`),
  ADD CONSTRAINT `enseigne_ibfk_2` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`);

--
-- Contraintes pour la table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_ibfk_1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_ue`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`id_travail`) REFERENCES `travail` (`id_travail`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`id_eleve`) REFERENCES `eleve` (`id_eleve`);

--
-- Contraintes pour la table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_ibfk_1` FOREIGN KEY (`id_ecole`) REFERENCES `ecole` (`id_ecole`),
  ADD CONSTRAINT `promo_ibfk_2` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`);

--
-- Contraintes pour la table `travail`
--
ALTER TABLE `travail`
  ADD CONSTRAINT `travail_ibfk_1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`),
  ADD CONSTRAINT `travail_ibfk_2` FOREIGN KEY (`id_module`) REFERENCES `module` (`id_module`);

--
-- Contraintes pour la table `ue_filiere`
--
ALTER TABLE `ue_filiere`
  ADD CONSTRAINT `ue_filiere_ibfk_1` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`),
  ADD CONSTRAINT `ue_filiere_ibfk_2` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_ue`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
