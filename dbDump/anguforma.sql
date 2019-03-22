-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 22 mars 2019 à 08:32
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `anguforma`
--

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `title`, `content`, `state`) VALUES
(1, 'Lundi', 'Préparer cours', 'doing'),
(2, 'Mardi', 'Cours MPI et RT4', 'todo'),
(3, 'Vendredi', 'Cours GL2', 'doing'),
(4, 'Jeudi', 'Repos', 'todo'),
(5, 'Dimanche', 'Dormir', 'done'),
(6, 'Mercredi', 'Club', 'doing'),
(7, 'Vendredi 8 3', 'Création d\'une vidéo de formation sur le Drag and Drop de Angular 7', 'todo'),
(8, 'Samedi aprem', 'central', 'doing'),
(9, 'Lundi ', 'Préparer vidéo drag and Drop', 'doing'),
(10, 'Mardi ', 'Poster les vidéo sur TechWall', 'doing'),
(11, 'Dimanche', 'Se reposer encore et regarder du Foot', 'done'),
(12, 'sellaouti', 'Préparer vidéo drag and Drop', 'todo'),
(13, 'sellaouti', 'Préparer vidéo drag and Drop', 'todo'),
(14, 'sellaouti', 'Préparer vidéo drag and Drop', 'todo'),
(15, 'mercredi ', 'OnlySoft', 'todo');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `cin` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `job` varchar(50) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `cin`, `name`, `firstname`, `age`, `job`, `path`) VALUES
(27, 2782, 'sellaouti', 'aymen', 36, 'University Assistant Professor', 'as.jpg'),
(28, 1574862, 'zidane', 'Zinedine', 44, 'Football Player', 'zizou.jpeg'),
(29, 1, 'Sellaouti', 'Skander', 0, 'bébé', ''),
(30, 145, 'Jelassi', 'Nidhal', 35, 'Teacher', '');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `name`, `firstname`, `note`) VALUES
(1, 'sellaouti', 'aymen', 20),
(2, 'Hammouda', 'Atef', 25),
(3, 'Student 1', 'test', 25),
(4, 'student 2', 'test', 14),
(5, 'student 3', 'test 3', 13),
(6, 'student 4', 'test', 12),
(7, 'zou', 'dhif', 125);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cin` (`cin`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
