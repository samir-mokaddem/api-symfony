-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 30 nov. 2022 à 15:25
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `api-platform`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221130135327', '2022-11-30 14:53:34', 110);

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Kira Adams', '2019-06-26 16:54:03', '2013-07-08 10:49:34'),
(2, 'Elvis Jaskolski', '1985-09-23 18:17:59', '2009-09-08 10:42:30'),
(3, 'Prof. Hans Littel', '1993-06-22 21:45:49', '1999-12-09 06:08:18'),
(4, 'Tamara Hartmann', '1994-06-15 21:58:04', '2009-02-14 04:43:21'),
(5, 'Chyna Fadel V', '2007-09-23 17:29:32', '1971-11-27 18:54:41');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `groupes_id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `groupes_id`, `email`, `roles`, `password`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 3, 'sstroman@hotmail.com', '[]', 'hvY2Z^@FxLpH>?R4Us', 'Adah', 'Reichel', '2010-07-31 07:46:41', '2021-08-03 05:07:04'),
(2, 3, 'rau.celia@parker.com', '[]', 'Qsrunw0{:0&,`vGW', 'Trinity', 'Schmeler', '1987-08-27 07:45:02', '2020-09-07 19:42:34'),
(3, 3, 'ephraim21@cummings.com', '[]', '$7[}AgbeJk5u\'TR)u<*d', 'Quinton', 'Hackett', '1976-04-28 09:14:25', '1976-11-18 01:12:40'),
(4, 3, 'vandervort.maynard@yahoo.com', '[]', '&VHZqzXf=6tSGz', 'Bennett', 'Hane', '2006-09-29 11:17:07', '1996-02-03 04:51:00'),
(5, 3, 'wondricka@yahoo.com', '[]', '&|X+*KrK.*2[ZSoAx', 'Allison', 'Runolfsson', '2003-09-04 22:00:54', '1988-05-27 05:04:23'),
(6, 3, 'qgutmann@yahoo.com', '[]', ']A7:BugV,{\"_OD\'+j', 'Lincoln', 'Reinger', '1972-10-18 01:54:26', '1973-05-23 05:52:13'),
(7, 1, 'neva.bradtke@fay.com', '[]', '~6E/`WM!t<]M)h[L', 'Halle', 'Beier', '2021-10-19 11:28:55', '2008-07-04 01:51:34'),
(8, 1, 'npredovic@waters.com', '[]', 'P7kw%cM,1', 'Bessie', 'Roberts', '2021-12-26 06:21:45', '2002-03-22 16:05:53'),
(9, 1, 'collins.jaeden@gmail.com', '[]', '$0e,i;)XV|WU', 'Wava', 'Kub', '1989-06-19 05:43:43', '2021-09-27 21:10:56'),
(10, 5, 'moore.hector@hotmail.com', '[]', '9IUW-\\y/,', 'Maxie', 'Feeney', '1973-08-13 02:59:07', '1972-05-11 01:51:32'),
(11, 5, 'quitzon.fredy@mante.com', '[]', '\'fpfpl&H\\', 'Eudora', 'Zboncak', '1971-05-27 01:10:12', '2020-02-04 06:37:07'),
(12, 4, 'hintz.ressie@brakus.com', '[]', '\"Ax$P2Y7VS>L\"uHq[', 'Oran', 'Price', '1995-10-07 22:05:54', '1999-02-25 23:48:11'),
(13, 3, 'hilpert.christelle@gmail.com', '[]', '0xB9ulqmx', 'Toy', 'Runolfsdottir', '2003-11-02 15:21:11', '2000-07-05 11:45:27'),
(14, 1, 'michelle26@yahoo.com', '[]', 'f)0&>\"Ii9', 'Tessie', 'Mueller', '1990-07-22 21:12:39', '2010-01-08 10:12:33'),
(15, 1, 'bode.evangeline@blick.com', '[]', 'N0E|JTxlwC', 'Ubaldo', 'Walsh', '2002-02-21 20:56:01', '1990-12-16 04:59:16'),
(16, 4, 'collier.jean@hotmail.com', '[]', 'T%{1@~Rnt`P-tmLAdy]H', 'Reyes', 'Nitzsche', '2017-06-05 02:58:25', '2016-07-02 21:48:19'),
(17, 3, 'isom.oconner@dooley.com', '[]', ',OzYa~%G5V8lr>ht', 'Alek', 'Ullrich', '1979-07-23 22:36:52', '2000-07-30 02:13:23'),
(18, 2, 'vella97@mccullough.org', '[]', 'F(I~,\"j[8#wE/n4W', 'Coy', 'Schaefer', '1992-02-01 15:03:48', '2003-03-27 14:42:16'),
(19, 3, 'price.sam@hotmail.com', '[]', 'f`LU\\D7G}FL>sDJI', 'Bianka', 'Bashirian', '1978-11-18 15:19:38', '1971-08-17 16:08:53'),
(20, 5, 'esther21@schmeler.org', '[]', 'x*5AQ:}', 'Erick', 'Schmeler', '2009-04-13 20:27:16', '1985-10-23 19:56:36'),
(21, 1, 'marquardt.dorthy@willms.com', '[]', 'i|V\'LmAByi[c(h', 'Kathryn', 'Stokes', '2022-01-02 13:04:28', '1972-05-08 11:44:09'),
(22, 4, 'ipfeffer@yahoo.com', '[]', '0NL*ARj/', 'Reagan', 'Connelly', '1991-10-01 19:54:23', '1978-04-22 08:06:45'),
(23, 1, 'jules11@gmail.com', '[]', '~7W8Mai!0DcHvpEi', 'Thaddeus', 'Lind', '1999-11-03 02:21:27', '1989-06-12 01:09:45'),
(24, 4, 'rubye68@green.com', '[]', '#[7e\\Pze', 'Junior', 'Reynolds', '2002-07-09 21:28:53', '1999-02-23 02:59:08'),
(25, 2, 'skiles.scotty@dooley.com', '[]', '[<%_.CvpL-h&\"/A;m=', 'Ellie', 'Hand', '1987-05-30 15:16:37', '1996-05-24 06:32:42'),
(26, 5, 'brannon.hammes@yahoo.com', '[]', 'U9|)=b', 'Elisa', 'Langworth', '1982-06-28 15:29:18', '2021-03-24 22:13:14'),
(27, 1, 'gustave97@wintheiser.com', '[]', '!~TXh&XTYFfdIW', 'Bettye', 'Nicolas', '2009-06-15 16:58:28', '2018-07-20 04:42:50'),
(28, 2, 'kessler.iva@ernser.net', '[]', '$k@gR#J', 'Ariane', 'Reinger', '1984-08-06 05:51:07', '2022-08-12 00:28:18'),
(29, 3, 'vleuschke@oberbrunner.com', '[]', 'T;%{U5#k@?uI[O9{', 'Saul', 'Langworth', '1971-06-28 02:53:54', '2003-10-07 08:09:40'),
(30, 2, 'elva94@swaniawski.com', '[]', 'S>if!UVl`p[', 'Victor', 'Kuhlman', '2005-06-20 22:13:40', '1975-02-03 03:12:03'),
(31, 1, 'fadel.christopher@yahoo.com', '[]', 'I\'@1*hDQV,P(\'_y/', 'Fanny', 'Barton', '1975-12-31 13:18:31', '1989-02-07 06:40:34'),
(32, 2, 'marian21@hotmail.com', '[]', 'HQW!WLhr|', 'Michele', 'Goldner', '2002-06-06 23:57:51', '1997-09-08 11:25:50'),
(33, 2, 'maurice98@heller.org', '[]', 'ee3Qvtz#Il[', 'Wellington', 'Price', '1974-02-12 05:48:32', '2014-06-07 18:28:10'),
(34, 4, 'demarco.heidenreich@schmitt.com', '[]', 'PWfBve/_6s', 'Emilie', 'Toy', '2015-08-26 06:02:49', '1987-10-05 19:44:59'),
(35, 5, 'rschuppe@ratke.info', '[]', '~%z#v}`ruwaU#', 'Stevie', 'Ernser', '1983-08-21 19:31:24', '1985-06-15 19:34:39'),
(36, 4, 'gconn@hotmail.com', '[]', '$HAq+U9k!Tr*OTy}', 'Verlie', 'Lesch', '1977-08-18 16:46:30', '1974-08-11 22:04:25'),
(37, 2, 'kris.helmer@gmail.com', '[]', 'C&nF@Vu.o-gE0(PB', 'Trace', 'Rolfson', '2000-02-04 23:06:13', '1989-05-22 23:02:04'),
(38, 2, 'schumm.emmalee@williamson.com', '[]', '\"F0er+<RPl\'+}Q:Gn_', 'Bernadine', 'Brakus', '1978-05-18 05:08:58', '2019-02-10 12:14:15'),
(39, 5, 'alexane85@yahoo.com', '[]', 'DUy)&H@Kru09', 'Arturo', 'Emmerich', '2004-04-08 16:08:23', '2000-02-06 15:23:19'),
(40, 5, 'xhamill@yahoo.com', '[]', 'cQ_\"\"Z8|', 'Enola', 'Gaylord', '1986-04-24 20:12:59', '2010-01-07 04:58:06'),
(41, 3, 'dwight88@gmail.com', '[]', 'wgdwf3GuMj:\"L,srVP', 'Julio', 'Littel', '1982-05-06 11:10:44', '2006-06-30 21:38:31'),
(42, 5, 'kuphal.jessyca@hotmail.com', '[]', '#;|I{a!5`V', 'Wilbert', 'Strosin', '1988-05-28 00:02:31', '2016-07-03 09:28:13'),
(43, 1, 'opaucek@mueller.com', '[]', '?\'28:Vacybs:Cd', 'Lorine', 'Barrows', '2012-11-19 09:34:01', '2022-09-03 15:37:05'),
(44, 2, 'joan.welch@considine.biz', '[]', 'Kp#$%5~3}p#HjK%g\\', 'Eino', 'Herzog', '1971-01-30 18:31:23', '2015-01-29 18:42:59'),
(45, 5, 'nmedhurst@macejkovic.com', '[]', 'i>4EwY4gK2{:IPID@p', 'Eusebio', 'Heathcote', '2019-10-03 23:37:30', '1981-08-20 06:42:27'),
(46, 5, 'kassulke.jon@weber.biz', '[]', 't{[?R+ll=eB/+`(<x}xh', 'Gladyce', 'Nader', '1970-06-21 20:46:00', '1996-02-12 06:21:56'),
(47, 2, 'ivandervort@hermiston.info', '[]', '->x|P)a{\\^[x', 'Kristofer', 'Nicolas', '1971-03-01 10:34:17', '1985-01-22 18:22:56'),
(48, 2, 'hayes.adelia@blick.org', '[]', '(_``#D*F\"LRU~SnsA:$-', 'Rogers', 'Runte', '2007-03-30 04:10:24', '1977-12-22 16:42:22'),
(49, 3, 'uturcotte@hotmail.com', '[]', 'E4|MH8E>S3*h', 'Miles', 'Weber', '2009-02-24 03:46:00', '1997-10-18 12:23:22'),
(50, 2, 'ntreutel@yahoo.com', '[]', '9,`xfd*vaNw#/?r+V', 'Carson', 'Lebsack', '2021-09-24 19:44:25', '1991-10-11 00:58:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D649305371B` (`groupes_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649305371B` FOREIGN KEY (`groupes_id`) REFERENCES `groupes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
