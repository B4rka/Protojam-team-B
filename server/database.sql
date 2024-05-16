-- Active: 1711641097871@@localhost@3306@protojam1
-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 26 Octobre 2017 à 13:53
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `simple-mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `item`
--

INSERT INTO `item` (`id`, `title`) VALUES
(1, 'Stuff'),
(2, 'Doodads');

-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


use protojam; 

CREATE TABLE summary (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  text TEXT NOT NULL,
  tree_id INT NOT NULL,
  FOREIGN KEY (tree_id)
  REFERENCES tree(id)
); 

CREATE TABLE questions (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  question TEXT NOT NULL,
  Reponse1 TEXT NOT NULL, 
  Reponse2 TEXT NOT NULL, 
  Reponse3 TEXT NOT NULL, 
  Reponse4 TEXT NOT NULL 
); 


CREATE TABLE tree (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `picture` VARCHAR(255) NOT NULL
);

INSERT INTO tree (`name`, `picture`) VALUES
('Saule saltimbanque', 'Placeholder 1'),
('Chêne cosmique', 'Placeholder 2'),
('Erable enigmatique', 'Placeholder 3'),
('Pin paradoxal', 'Placeholder 4'),
('Sylvain Duriff', 'Placeholder 5');


