-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 22 mars 2020 à 14:13
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `BD`
--

-- --------------------------------------------------------
--
-- Structure de la table `Produits`
--

CREATE TABLE `Produits` (
  `Id_produit` int(11) NOT NULL,
  `Nom_produit` varchar(20) NOT NULL,
  `Prix_produit` float NOT NULL,
  `Description_produit` mediumtext NOT NULL,
  `Quantite_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Commandes`
--

CREATE TABLE `Commandes` (
  `Id_commande` int(11) NOT NULL,
  `Num_commande` int(11) NOT NULL,
  `Nom_client` varchar(20) NOT NULL,
  `Id_produit` int(11) NOT NULL,
  `Quantite_commande` int(11) NOT NULL,
  `Prix_commande` float NOT NULL,
  `Etat_commande` mediumtext NOT NULL,
  `Date_save_commande` date NOT NULL,
  `Date_livraison_commande` date NOT NULL,
   CONSTRAINT f_kEY 
   FOREIGN KEY (Produits) 
   REFERENCES Produits(Id_produit)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Employes`
--

CREATE TABLE `Employes` (
  `Id_employe` int(11) NOT NULL,
  `Nom_emplye` varchar(10) NOT NULL,
  `Prenom_emplye` varchar(15) NOT NULL,
  `Num_cni_emplye` varchar(20) NOT NULL,
  `Fonction` mediumtext NOT NULL,
  `Tel_emplye` int(11) NOT NULL,
  `Adresse_emplye` varchar(15) NOT NULL,
  `Salaire_employe` varchar(20) NOT NULL,
  `Sexe_produit` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseur`
--

CREATE TABLE `Fournisseur` (
  `Id_fournisseur` int(11) NOT NULL,
  `Nom_fournisseur` varchar(20) NOT NULL,
  `Prenom_fournisseur` varchar(20) NOT NULL,
  `Adresse_fournisseur` varchar(20) NOT NULL,
  `Tel_fournisseur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Matieres`
--

CREATE TABLE `Matieres` (
  `Id_matiere` int(11) NOT NULL,
  `Nom_matiere` varchar(20) NOT NULL,
  `Prix_matiere` float NOT NULL,
  `Description_matiere` mediumtext NOT NULL,
  `Quantite_achete` double NOT NULL,
  `Quantite_restante` double NOT NULL,
  `Nom_fournisseur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `Id_user` int(11) NOT NULL,
  `login` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Commandes`
--
ALTER TABLE `Commandes`
  ADD PRIMARY KEY (`Id_commande`);
--
-- Index pour la table `Employes`
--
ALTER TABLE `Employes`
  ADD PRIMARY KEY (`Id_employe`);

--
-- Index pour la table `Fournisseur`
--
ALTER TABLE `Fournisseur`
  ADD PRIMARY KEY (`Id_fournisseur`);

--
-- Index pour la table `Matieres`
--
ALTER TABLE `Matieres`
  ADD PRIMARY KEY (`Id_matiere`);
  ADD FOREGN KEY (`Id_fournisseur`);

--
-- Index pour la table `Produits`
--
ALTER TABLE `Produits`
  ADD PRIMARY KEY (`Id_produit`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
