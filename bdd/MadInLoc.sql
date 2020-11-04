-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 04 nov. 2020 à 23:18
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `MadInLoc`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `circuit`
--

CREATE TABLE `circuit` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `map` varchar(255) NOT NULL,
  `picture1` varchar(255) NOT NULL,
  `picture2` varchar(255) NOT NULL,
  `picture3` varchar(255) NOT NULL,
  `distance` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `circuit`
--

INSERT INTO `circuit` (`id`, `title`, `content`, `map`, `picture1`, `picture2`, `picture3`, `distance`, `time`, `price`) VALUES
(1, 'Circuit 1 | Saint Anne -> Grand rivière', 'Cette ballade pars de nos locaux dans la ville de Saint Anne, situé à l\'extrême-sud de la Martinique. Nous vous guiderons le long de la route côtière qui longe la côte caraïbe jusqu\'à la ville du Grand Rivière. Cette départementale sinueuse vous offrira de superbe panorama et des vues à couper le souffle tout au long du trajet. Une de nos ballades préférée.', 'circuit_coteCaraibe', 'martinique_leRobert', 'martinique_trinité', '', '93 Km', '2 heures', '100€'),
(2, 'Circuit 2 | Saint Anne -> Le prêcheur', 'Départ de notre camp de base à Saint Anne pour cette balade. Vous découvrirez l\'intérieur des terres de la Martinique par la mythique route du jardin de Balata qui serpente au pied de la montagne pelée.', 'circuit_coteAtlantique', 'martinique_leMarin', 'martinique_saintJoseph', 'martinique_saintPierre', '93 Km', '1H50', '80€'),
(3, 'Circuit 3 | Saint Anne -> Le prêcheur par la côte atlantique', 'Départ de Saint Année pour arriver au prêcheur par en longeant toute la côte atlantique due coter ouest de la Martinique.Plusieurs étapes pendant cette balade, le diamant, les Trois Ilets, mais aussi Fort de France.', 'circuit2_coteAtlantique', 'martinique_diamant', 'martinique_anseNoire', '', '120 Km', '2h20min', '110€'),
(4, 'Circuit 4 | Tour complet de la Martinique', 'Grace à ce circuit vous ferrez le tour complet de la Martinique. Comme pour les autre circuit le départ ce fait de Saint Anne, vous longerez ensuite toute la cote atlantique jusqu\'à la ville de Saint Pierre. Vous traverserez les terre en passant la ville du morne rouge pour rejoindre une seconde étape dans la ville du Lorrain. Puis vous descendrez toute la cote caraïbe pour retourner au point de départ. Un repas vous seras offert lors de l\'étape numéro 2 dans la ville du Lorrain. Prévoir la journée complète pour cette balade.', 'circuit_complet', 'martinique_trois_illet', 'martinique_anse_darlet', 'martinique_saintPierre', '210 Km', '3h25min', '200€');

-- --------------------------------------------------------

--
-- Structure de la table `moto`
--

CREATE TABLE `moto` (
  `id` int(11) NOT NULL,
  `builder` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `vintage` varchar(50) NOT NULL,
  `engine_detail` text NOT NULL,
  `fram_detail` text NOT NULL,
  `picture1` varchar(50) NOT NULL,
  `picture2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `moto`
--

INSERT INTO `moto` (`id`, `builder`, `model`, `vintage`, `engine_detail`, `fram_detail`, `picture1`, `picture2`) VALUES
(1, 'Kawazaki', 'Z900', '2019', 'Type : Quatre cylindres en ligne.\r\nCylindrée : 948 cm3.\r\nPuissance : 125 cv (92,2 kW) à 9.500 tours/minute.	\r\nCouple : 10,1 kgf.m (98,6 Nm) à 7.700 tours/minute.\r\nAllumage : Electronique.  \r\nAlimentation : Injection électronique.\r\nEmbrayage : Multi disques en bain d’huile avec commande manuelle . \r\nBoîte de vitesses : 6 rapports.\r\nTransmission finale : Par chaîne.', 'Cadre : Treillis en acier haute résistance. \r\nLongueur : 2.065 mm.\r\nLargeur : 825 mm.\r\nEmpattement : 1.450 mm.\r\nGarde au sol : 130 mm.\r\nHauteur de selle : 795 mm.\r\nPoids : 210 kg tous pleins faits.\r\nSuspension avant : Fourche inversée de 41 mm avec réglage de la compression, débattement : 120 mm.\r\nSuspension arrière : Horizontale de type Back-link avec amortisseur à gaz. Détente.\r\nFrein avant : Doubles disques en pétales semi-flottants de 300 mm. Deux étriers à 4 pistons opposés.\r\nFrein arrière : Simple disque en pétales de 250 mm. Etrier à simple piston.\r\nRoues : En alliage : 17 pouces.\r\nPneu avant : 120/70 ZR17 M/C (58W).\r\nPneu arrière : 180/55 ZR17 M/C (73W).\r\nRéservoir : 17 litres', 'Z900.png', 'z900_2.jpg'),
(2, 'Suzuki', 'GSR750', '2020', 'Type : 4 cylindres.\r\nCylindrée : 749 cm3.\r\nPuissance : 75 kW (102,0 ch) à 10000 tr/min.\r\nCouple : 81 Nm à 9000 tr/min.\r\nAlimentation : injection.\r\nMise en route : démarreur électrique\r\nTransmission : 6 vitesses, chaîne.\r\n', 'Cadre : Chassis	berceau en acier.\r\nSuspension avant : fourche inversée, débattement 120mm.\r\nSuspension arrière : Mono-amortisseur, débattement 135mm.\r\nFrein avant : double disque, diamètre 310 mm.\r\nFrein arrière : simple disque, diamètre 240 mm.\r\nPneu avant : 120/70 x 17.\r\nPneu arrière : 180/55 x 17.\r\nPoids : 210 kg.\r\nHauteur de selle : 815 mm.\r\nLongueur : 2 115 mm.\r\nEssence : 17,5 litres.\r\n', 'gsr750.jpg', 'gsr750_2.jpg'),
(3, 'Ducati', 'Monster 800', '2020', 'Type : 2 cylindres en v à 90°.  \r\nRefroidissement : air.  \r\nGraissage/lubrification : carter humide.\r\nCylindrée :696 cm3.\r\nPuissance maxi : 80.0 ch à 9000 tr/min. \r\nCouple maxi : 69.0 nm à 7750 tr/min.\r\nAlimentation : injection électronique.\r\nDémarreur : électrique.   \r\nBoite de vitesses : 6.', 'Cadre : Treillis tubulaire acier.\r\nSuspension avant : Fourche inversée Showa de 43 mm, débattement 120 mm .\r\nSuspension arrière : Progressive avec mono amortisseur Sachs réglable en précontrainte et en détente   \r\nFrein avant : 2 Disques de 320mm sur étriers radiaux à 4 pistons.\r\nFrein arrière : 1 disque de 245mm sur étrier à 2 pistons.   \r\nPneu avant : 120/60.\r\nPneu arrière : 160/60.  \r\nHauteur de selle : 770 mm.\r\nPoids à sec : 163 kg.\r\nRéservoir : 15.0 litres.', 'monster.jpg', 'monster_2.jpg'),
(4, 'Yamaha', 'YBR 125', '2014', 'Type : monocylindre 4T, refroidissement par air.\r\nAlésage x Course : 54 x 54 mm.\r\nCylindrée : 124 cm3.\r\nPuissance : 7,5 kW (10,2 ch) à 7800 tr/min.\r\nCouple : 9,6 Nm à 6000 tr/min.\r\nAlimentation : injection.\r\nMise en route : démarreur électrique ou kick.\r\nTransmission : 5 rapports, chaîne.\r\n', 'Cadre : simple berceau en acier.\r\nSuspension avant : fourche télescopique, débattement 120mm.\r\nSuspension arrière : 2 amortisseurs réglables, débattement 105mm.\r\nFrein avant : 1 disque, diamètre 245 mm.\r\nFrein arrière : tambour, diamètre 130 mm.\r\nPneu avant : 2.75 x 18.\r\nPneu arrière : 90/90 x 18.\r\nPoids : 125 kg.\r\nHauteur de selle : 780 mm.\r\nLongueur : 1985 mm.\r\nEmpattement : 1290 mm.\r\nEssence : 13 litres.\r\n', 'ybr125.jpg', 'ybr125_2.jpg'),
(5, 'KTM', 'Duke 125', '2017', 'Moteur : 1 cylindre 4-temps de 124,7 cc à refroidissement liquide.\r\nAlésage : course : 58/47.2 mm.\r\nPuissance : 11,3 kw (15 ch) à 10 500 t/:mn.\r\nCouple : 12 Nm à 8 000 tr/mn\r\nBoite de vitesse : six rapports\r\nEmbrayage : multidisque à bain d\'huile\r\n', 'Châssis : treillis en acier.\r\nFourche : WP inversée de 43 mm de diamètre.\r\nAmortisseur : mono-amortisseur WP.\r\nFreins avant : 1 disque de 280 mm de diamètre.\r\nFreins arrière : 1 disque de 230 mm de diamètre.\r\nPneu avant : 110/70/17.\r\nPneu arrière : 150/60/17 à l\'arrière.\r\nEmpattement : 1350 mm (+/- 15 mm).\r\nGarde au sol : 185 mm.\r\nHauteur de selle : 810 mm.\r\nCapacité du réservoir d\'essence : 11 litres.\r\nPoids tous pleins faits : 128 kg.', 'duke125.jpeg', 'duke125_2.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `rent`
--

CREATE TABLE `rent` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'Cylindré',
  `duration` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `km_included` int(11) NOT NULL,
  `extra_day` int(11) NOT NULL,
  `caution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rent`
--

INSERT INTO `rent` (`id`, `type`, `duration`, `price`, `km_included`, `extra_day`, `caution`) VALUES
(1, 125, 'Journée', 49, 150, 30, 800),
(2, 125, 'Week-end', 110, 250, 30, 800),
(3, 125, 'Semaine', 300, 600, 25, 800),
(4, 800, 'Journée', 99, 200, 79, 1200),
(5, 800, 'Week-end', 199, 300, 79, 1200),
(6, 800, 'Semaine', 550, 800, 79, 1200);

-- --------------------------------------------------------

--
-- Structure de la table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT '1 Retour Balade / 2 Vos balades/ 3 balade étranger/ 4 Presentation / 5 Préparation / 6 Méca / 7 acti terrestra / 8 acti nautique / 9 pointde vue',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `topic`
--

INSERT INTO `topic` (`id`, `user_id`, `author`, `category_id`, `title`, `content`, `date_creation`) VALUES
(1, 25, 'erwanB', 1, 'Retour sur le parcours Saint Anne -> Grand rivière', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:20:30'),
(2, 30, 'dylanD', 1, 'Saint Anne -> Le prêcheur par la côte atlantique', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:20:30'),
(3, 26, 'kennyB', 1, 'Retour sur mon tour complet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '2020-11-04 23:22:18'),
(4, 29, 'toniB', 1, 'Ballade de Saint Anne jusqu\'au Précheur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '2020-11-04 23:22:18'),
(5, 25, '', 2, 'Petite Ballade au nord', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '2020-11-04 23:23:27'),
(6, 26, '', 2, 'Les salines', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:23:27'),
(7, 29, '', 2, 'Plutôt nord ou sud de l\'île?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:24:38'),
(8, 30, '', 2, 'Question sur la montagne peller', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a.', '2020-11-04 23:24:38'),
(9, 30, '', 3, 'Route 66', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '2020-11-04 23:26:23'),
(10, 29, '', 3, 'Qui as déjà rouler au Canada ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '2020-11-04 23:26:23'),
(11, 26, '', 3, 'Comment rouler en Amérique du sud ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:28:30'),
(12, 25, '', 3, 'Gillet obligatoire dans les pays de l\'est ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '2020-11-04 23:28:30'),
(13, 25, '', 4, '600 FZR de 1994', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:29:25'),
(14, 26, '', 4, 'Présentation de mon 600 bandit de 1996', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:29:25'),
(15, 29, '', 4, 'Je vous présente Martine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '2020-11-04 23:30:19'),
(16, 30, '', 4, 'Mon Z1000 de 2010', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:30:19'),
(17, 30, '', 5, 'Stage 1 sur mon H2R', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:31:31'),
(18, 29, '', 5, 'Compatibilité AAC 600 et 1200 bandit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '2020-11-04 23:31:31'),
(19, 26, '', 5, 'Customisation de kit chaine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:33:01'),
(20, 25, '', 5, 'Montage Kit Flex Fuel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:33:01'),
(21, 25, '', 6, 'Purge de frein', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:33:53'),
(22, 26, '', 6, 'Bougie qui claque en permanence', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:33:53'),
(23, 29, '', 6, 'Culot de bougie casser dans culasse', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '2020-11-04 23:35:12'),
(24, 29, '', 6, 'Montage indicateur de rapport engager', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:35:12'),
(25, 30, '', 7, 'Marché de fort de france', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:37:49'),
(26, 29, '', 7, 'Horaire des jardins de Ballata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra.', '2020-11-04 23:37:49'),
(27, 26, '', 7, 'Qu\'elle musée du Rhum ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '2020-11-04 23:39:42'),
(28, 25, '', 7, 'Randonnée sur la montagne pelée', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '2020-11-04 23:39:42'),
(29, 25, '', 8, 'Tarif pour la baignoire de Josephine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed.', '2020-11-04 23:41:41'),
(30, 26, '', 8, 'Bateau à fond transparent', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '2020-11-04 23:41:41'),
(31, 29, '', 8, 'Cours de kite surf', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '2020-11-04 23:42:32'),
(32, 30, '', 8, 'Spot de surf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:42:32'),
(33, 30, '', 9, 'Vue du saut du gendarme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '2020-11-04 23:43:49'),
(34, 29, '', 9, 'Plus beau point de vue ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '2020-11-04 23:43:49'),
(35, 26, '', 9, 'La dame couchée vue de Saint Anne', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '2020-11-04 23:44:39'),
(36, 25, '', 9, 'Le rocher du diamant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '2020-11-04 23:44:39');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `team` varchar(255) NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `pseudo`, `password`, `mail`, `city`, `birthday`, `team`, `date_inscription`) VALUES
(25, 'Erwan', 'Bridier', 'erwanB', '$2y$10$fJsNTbt8ZxO6I2V5/avX.ONuqMUSMDdHChDgbukckglExn.UjzOJi', 'aa', 'aa', '1988-11-15', '2', '2020-11-02 21:47:43'),
(26, 'keny', 'bridier', 'kenny', '$2y$10$wdi3G2KYg5T65D8jRc4A6.QnAbOJlX9jKmG0YokQW0xujXS29hfHq', 'aa', 'aa', '1988-11-15', '2', '2020-11-02 22:28:16'),
(29, 'Toni', 'Bridier', 'toniB', '$2y$10$8dl621zgCY2KGdCrLTw4OOswllPQD40jLYvv7B66eNyn2qM8aMJFu', 'aa', 'aa', '1986-01-16', '2', '2020-11-04 23:07:58'),
(30, 'Dylan', 'Dumas', 'dylanD', '$2y$10$TSCwMrV2IXWO50Mwepd7veeoQM4Gjhegn6ZqJhgyYvkxgiRvsV6YO', 'aa', 'aa', '1986-01-16', '2', '2020-11-04 23:08:27');

-- --------------------------------------------------------

--
-- Structure de la table `user_img`
--

CREATE TABLE `user_img` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_img`
--

INSERT INTO `user_img` (`id`, `user_id`, `img`, `content`) VALUES
(8, 25, 'z900_1056x514.jpg', 'Z900 de 2020'),
(9, 25, 'Z900_2020_700x700_contrast++.jpg', 'Tout pareil');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `circuit`
--
ALTER TABLE `circuit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_img`
--
ALTER TABLE `user_img`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `circuit`
--
ALTER TABLE `circuit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `moto`
--
ALTER TABLE `moto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `rent`
--
ALTER TABLE `rent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `user_img`
--
ALTER TABLE `user_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
