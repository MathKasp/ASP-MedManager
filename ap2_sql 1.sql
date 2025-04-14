-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 22 nov. 2024 à 18:42
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ap2_sql`
--

-- --------------------------------------------------------

--
-- Structure de la table `allergies`
--

CREATE TABLE `allergies` (
  `AllergieId` int(11) NOT NULL,
  `Nom_Allergie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `allergies`
--

INSERT INTO `allergies` (`AllergieId`, `Nom_Allergie`) VALUES
(1, 'Pollen'),
(2, 'Arachides'),
(3, 'Gluten'),
(4, 'Lactose'),
(5, 'Pénicilline'),
(6, 'Acariens'),
(7, 'Soja'),
(8, 'Poisson'),
(9, 'Oeufs'),
(10, 'Sésame'),
(11, 'Punaises');

-- --------------------------------------------------------

--
-- Structure de la table `antecedents`
--

CREATE TABLE `antecedents` (
  `AntecedentId` int(11) NOT NULL,
  `Nom_Antecedent` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `antecedents`
--

INSERT INTO `antecedents` (`AntecedentId`, `Nom_Antecedent`) VALUES
(1, 'Diabète'),
(2, 'Hypertension'),
(3, 'Asthme'),
(5, 'Insuffisance cardiaque'),
(6, 'AVC'),
(7, 'Allergie médicamenteuse'),
(8, 'Ulcère gastrique'),
(9, 'Sclérose en plaques'),
(10, 'Hépatite B');

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetroleclaims`
--

INSERT INTO `aspnetroleclaims` (`Id`, `RoleId`, `ClaimType`, `ClaimValue`) VALUES
(1, '1', 'Permission', 'FullAccess');

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('1', 'Admin', 'ADMIN', 'b1d23c4d-ecf8-4b20-a734-1234567890ab');

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `Nom_m` longtext NOT NULL,
  `Prenom_m` longtext NOT NULL,
  `Date_naissance_m` datetime(6) NOT NULL,
  `Identifiant_m` longtext NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `ConcurrencyStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `Nom_m`, `Prenom_m`, `Date_naissance_m`, `Identifiant_m`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('137e81b9-9d34-469a-9c44-176827aea934', 'KASPERCZAK', 'Mathis', '0002-01-01 00:00:00.000000', 'sqdghteyhj', 'MathKasp', 'MATHKASP', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEKLmEbc1VgVf5S0/3xoOB2T6vA491awzpRr2iHHhiCF8Z7VFJvYkuxrJopQLVj4BkA==', 'ZGHWX7SLP335FTRM2SDIPWZHGQLSDPKH', '64a66f5b-1a25-42c2-a7a7-ae3f8b2b4411', NULL, 0, 0, NULL, 1, 0),
('59eaeb1e-ed73-480f-9820-fc5eeb129162', 'Nico', 'Pons', '1988-07-06 00:00:00.000000', 'aecet43553dfh', 'nicxo', 'NICXO', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEBeA+6RA4fDPQBHoGa0RVHlq151hrzSwVOv02MxmulFanjCJqFUS45Z1QRhEZ4ZY1g==', '26D453AZUVE3ORFISXLOTODIJW6JKUXL', 'c47575de-ab1e-4ae9-b1ac-c331337c0e01', NULL, 0, 0, NULL, 1, 0),
('bd069f89-73d9-480d-b3d7-7c76c5655e3b', 'Adrien', 'MINOS', '1978-07-12 00:00:00.000000', '1343G56H', 'admin', 'ADMIN', NULL, NULL, 0, 'AQAAAAIAAYagAAAAEPvAnMsiSHVIlvb1//t6TtJTlwvtEUdwsarcv5lgFOK6gbuz3LhJ3tsT1froEDALOw==', 'IH5O6XYHHNDY2IDJOM5GVGR3V2NIZ6ID', 'c7fde5ef-31b3-4e8f-b672-42ed48c39940', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `medicamentallergie`
--

CREATE TABLE `medicamentallergie` (
  `AllergiesAllergieId` int(11) NOT NULL,
  `MedicamentsMedicamentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicamentallergie`
--

INSERT INTO `medicamentallergie` (`AllergiesAllergieId`, `MedicamentsMedicamentId`) VALUES
(6, 1),
(1, 2),
(7, 2),
(10, 2),
(2, 3),
(5, 3),
(3, 4),
(10, 4),
(4, 5),
(8, 6),
(9, 7),
(11, 8);

-- --------------------------------------------------------

--
-- Structure de la table `medicamentantecedent`
--

CREATE TABLE `medicamentantecedent` (
  `AntecedentsAntecedentId` int(11) NOT NULL,
  `MedicamentsMedicamentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicamentantecedent`
--

INSERT INTO `medicamentantecedent` (`AntecedentsAntecedentId`, `MedicamentsMedicamentId`) VALUES
(1, 1),
(2, 2),
(3, 3),
(5, 5),
(6, 6),
(7, 7),
(10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `medicamentordonnance`
--

CREATE TABLE `medicamentordonnance` (
  `MedicamentsMedicamentId` int(11) NOT NULL,
  `OrdonnancesOrdonnanceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicamentordonnance`
--

INSERT INTO `medicamentordonnance` (`MedicamentsMedicamentId`, `OrdonnancesOrdonnanceId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(9, 2),
(9, 3),
(1, 4),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(1, 7),
(9, 8),
(10, 8);

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `MedicamentId` int(11) NOT NULL,
  `Nom_med` longtext NOT NULL,
  `Contre_indication` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`MedicamentId`, `Nom_med`, `Contre_indication`) VALUES
(1, 'Paracétamol', 'Insuffisance hépatique'),
(2, 'Ibuprofène', 'Ulcère gastro-duodénal'),
(3, 'Amoxicilline', 'Allergie à la pénicilline'),
(4, 'Aspirine', 'Hémophilie'),
(5, 'Lévothyrox', 'Hyperthyroïdie'),
(6, 'Atorvastatine', 'Insuffisance rénale sévère'),
(7, 'Oméprazole', 'Grossesse'),
(8, 'Clopidogrel', 'AVC hémorragique'),
(9, 'Morphine', 'Insuffisance respiratoire'),
(10, 'Diazépam', 'Dépression respiratoire');

-- --------------------------------------------------------

--
-- Structure de la table `ordonnances`
--

CREATE TABLE `ordonnances` (
  `OrdonnanceId` int(11) NOT NULL,
  `Posologie` longtext NOT NULL,
  `Duree_traitement` longtext NOT NULL,
  `Instructions_specifique` longtext NOT NULL,
  `MedecinId` varchar(255) NOT NULL,
  `PatientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ordonnances`
--

INSERT INTO `ordonnances` (`OrdonnanceId`, `Posologie`, `Duree_traitement`, `Instructions_specifique`, `MedecinId`, `PatientId`) VALUES
(1, 'CHAQUE FOIS QUE TU VOIS ANTOINE', '8 ans', 'Ne pas laisser la peau au soleileuuuu', '59eaeb1e-ed73-480f-9820-fc5eeb129162', 16),
(2, 'Matin et soir après le repas', '2 semaines', 'Bon courage ', '59eaeb1e-ed73-480f-9820-fc5eeb129162', 1),
(3, 'Matin et soir après le repas', '2 semaines', 'Ne pas prendre plus d\'un granule en 2H', '137e81b9-9d34-469a-9c44-176827aea934', 3),
(4, 'Chaque soir après le repas, prendre 100g.', '2 Mois', 'Même en cas de douleurs intense ne pas consommer plus d\'une pillule.', '137e81b9-9d34-469a-9c44-176827aea934', 7),
(6, '1 fois par semaine', '8 ans', 'Respecter le dosage sur la boite', '137e81b9-9d34-469a-9c44-176827aea934', 8),
(7, 'Chaque soir après le repas, prendre 100g.', '2 semaines', 'Ne pas prendre plus d\'un granule', 'bd069f89-73d9-480d-b3d7-7c76c5655e3b', 4),
(8, 'Chaque fois que les douleurs se manifestent.', '3 jours', 'Ne pas laisser la peau au soleil', 'bd069f89-73d9-480d-b3d7-7c76c5655e3b', 23);

-- --------------------------------------------------------

--
-- Structure de la table `patientallergie`
--

CREATE TABLE `patientallergie` (
  `AllergiesAllergieId` int(11) NOT NULL,
  `PatientsPatientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patientallergie`
--

INSERT INTO `patientallergie` (`AllergiesAllergieId`, `PatientsPatientId`) VALUES
(1, 1),
(1, 3),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(7, 7),
(8, 8),
(4, 16),
(1, 23);

-- --------------------------------------------------------

--
-- Structure de la table `patientantecedent`
--

CREATE TABLE `patientantecedent` (
  `AntecedentsAntecedentId` int(11) NOT NULL,
  `PatientsPatientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patientantecedent`
--

INSERT INTO `patientantecedent` (`AntecedentsAntecedentId`, `PatientsPatientId`) VALUES
(1, 3),
(3, 5),
(5, 5),
(6, 6),
(7, 7),
(1, 23);

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `PatientId` int(11) NOT NULL,
  `Nom_p` longtext NOT NULL,
  `Prenom_p` longtext NOT NULL,
  `Sexe_p` longtext NOT NULL,
  `Num_secu` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`PatientId`, `Nom_p`, `Prenom_p`, `Sexe_p`, `Num_secu`) VALUES
(1, 'Mathieu', 'Ewilan', 'M', '123456777777777'),
(3, 'Leroy', 'Sophie', 'F', '3456789123456'),
(4, 'Moreau', 'Jean', 'M', '4567891234567'),
(5, 'Durand', 'Emma', 'F', '5678912345678'),
(6, 'Petit', 'Lucas', 'M', '6789123456789'),
(7, 'Blanc', 'Camille', 'F', '7891234567890'),
(8, 'Garnier', 'Jules', 'M', '8912345678901'),
(14, 'Sabrhotr', 'Laura', 'F', '7591856567'),
(16, 'Cocotte', 'Serieusse', 'M', '12354386'),
(18, 'Chim', 'Barnabotte', 'M', '854567890'),
(23, 'Carotte', 'Sophie', 'M', '123456777777777'),
(25, 'Hosseline', 'emilie', 'F', '75562729847U');

-- --------------------------------------------------------

--
-- Structure de la table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241008151557_ap2', '8.0.1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`AllergieId`);

--
-- Index pour la table `antecedents`
--
ALTER TABLE `antecedents`
  ADD PRIMARY KEY (`AntecedentId`);

--
-- Index pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Index pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Index pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Index pour la table `medicamentallergie`
--
ALTER TABLE `medicamentallergie`
  ADD PRIMARY KEY (`AllergiesAllergieId`,`MedicamentsMedicamentId`),
  ADD KEY `IX_MedicamentAllergie_MedicamentsMedicamentId` (`MedicamentsMedicamentId`);

--
-- Index pour la table `medicamentantecedent`
--
ALTER TABLE `medicamentantecedent`
  ADD PRIMARY KEY (`AntecedentsAntecedentId`,`MedicamentsMedicamentId`),
  ADD KEY `IX_MedicamentAntecedent_MedicamentsMedicamentId` (`MedicamentsMedicamentId`);

--
-- Index pour la table `medicamentordonnance`
--
ALTER TABLE `medicamentordonnance`
  ADD PRIMARY KEY (`MedicamentsMedicamentId`,`OrdonnancesOrdonnanceId`),
  ADD KEY `IX_MedicamentOrdonnance_OrdonnancesOrdonnanceId` (`OrdonnancesOrdonnanceId`);

--
-- Index pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`MedicamentId`);

--
-- Index pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  ADD PRIMARY KEY (`OrdonnanceId`),
  ADD KEY `IX_Ordonnances_MedecinId` (`MedecinId`),
  ADD KEY `IX_Ordonnances_PatientId` (`PatientId`);

--
-- Index pour la table `patientallergie`
--
ALTER TABLE `patientallergie`
  ADD PRIMARY KEY (`AllergiesAllergieId`,`PatientsPatientId`),
  ADD KEY `IX_PatientAllergie_PatientsPatientId` (`PatientsPatientId`);

--
-- Index pour la table `patientantecedent`
--
ALTER TABLE `patientantecedent`
  ADD PRIMARY KEY (`AntecedentsAntecedentId`,`PatientsPatientId`),
  ADD KEY `IX_PatientAntecedent_PatientsPatientId` (`PatientsPatientId`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientId`);

--
-- Index pour la table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allergies`
--
ALTER TABLE `allergies`
  MODIFY `AllergieId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `antecedents`
--
ALTER TABLE `antecedents`
  MODIFY `AntecedentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `MedicamentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  MODIFY `OrdonnanceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `medicamentallergie`
--
ALTER TABLE `medicamentallergie`
  ADD CONSTRAINT `FK_MedicamentAllergie_Allergies_AllergiesAllergieId` FOREIGN KEY (`AllergiesAllergieId`) REFERENCES `allergies` (`AllergieId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_MedicamentAllergie_Medicaments_MedicamentsMedicamentId` FOREIGN KEY (`MedicamentsMedicamentId`) REFERENCES `medicaments` (`MedicamentId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `medicamentantecedent`
--
ALTER TABLE `medicamentantecedent`
  ADD CONSTRAINT `FK_MedicamentAntecedent_Antecedents_AntecedentsAntecedentId` FOREIGN KEY (`AntecedentsAntecedentId`) REFERENCES `antecedents` (`AntecedentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_MedicamentAntecedent_Medicaments_MedicamentsMedicamentId` FOREIGN KEY (`MedicamentsMedicamentId`) REFERENCES `medicaments` (`MedicamentId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `medicamentordonnance`
--
ALTER TABLE `medicamentordonnance`
  ADD CONSTRAINT `FK_MedicamentOrdonnance_Medicaments_MedicamentsMedicamentId` FOREIGN KEY (`MedicamentsMedicamentId`) REFERENCES `medicaments` (`MedicamentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_MedicamentOrdonnance_Ordonnances_OrdonnancesOrdonnanceId` FOREIGN KEY (`OrdonnancesOrdonnanceId`) REFERENCES `ordonnances` (`OrdonnanceId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  ADD CONSTRAINT `FK_Ordonnances_AspNetUsers_MedecinId` FOREIGN KEY (`MedecinId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Ordonnances_Patients_PatientId` FOREIGN KEY (`PatientId`) REFERENCES `patients` (`PatientId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `patientallergie`
--
ALTER TABLE `patientallergie`
  ADD CONSTRAINT `FK_PatientAllergie_Allergies_AllergiesAllergieId` FOREIGN KEY (`AllergiesAllergieId`) REFERENCES `allergies` (`AllergieId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PatientAllergie_Patients_PatientsPatientId` FOREIGN KEY (`PatientsPatientId`) REFERENCES `patients` (`PatientId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `patientantecedent`
--
ALTER TABLE `patientantecedent`
  ADD CONSTRAINT `FK_PatientAntecedent_Antecedents_AntecedentsAntecedentId` FOREIGN KEY (`AntecedentsAntecedentId`) REFERENCES `antecedents` (`AntecedentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PatientAntecedent_Patients_PatientsPatientId` FOREIGN KEY (`PatientsPatientId`) REFERENCES `patients` (`PatientId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
