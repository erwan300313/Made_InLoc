-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  jeu. 24 déc. 2020 à 16:46
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
(1, 'Circuit 1 | Saint Anne -> Grand rivière', 'Cette ballade pars de nos locaux dans la ville de Saint Anne, situé à l\'extrême-sud de la Martinique. Nous vous guiderons le long de la route côtière qui longe la côte caraïbe jusqu\'à la ville du Grand Rivière. Cette départementale sinueuse vous offrira de superbe panorama et des vues à couper le souffle tout au long du trajet. Une de nos ballades préférée.', 'circuitCoteCaraibe', 'martiniqueLeRobert', 'martiniqueTrinité', '', '93 Km', '2 heures', '100€'),
(2, 'Circuit 2 | Saint Anne -> Le prêcheur', 'Départ de notre camp de base à Saint Anne pour cette balade. Vous découvrirez l\'intérieur des terres de la Martinique par la mythique route du jardin de Balata qui serpente au pied de la montagne pelée.', 'circuitCoteAtlantique', 'martiniqueLeMarin', 'martiniqueSaintJoseph', 'martiniqueSaintPierre', '93 Km', '1H50', '80€'),
(3, 'Circuit 3 | Saint Anne -> Le prêcheur par la côte atlantique', 'Départ de Saint Année pour arriver au prêcheur par en longeant toute la côte atlantique due coter ouest de la Martinique.Plusieurs étapes pendant cette balade, le diamant, les Trois Ilets, mais aussi Fort de France.', 'circuit2CoteAtlantique', 'martiniqueDiamant', 'martiniqueAnseNoire', '', '120 Km', '2h20min', '110€'),
(4, 'Circuit 4 | Tour complet de la Martinique', 'Grace à ce circuit vous ferrez le tour complet de la Martinique. Comme pour les autre circuit le départ ce fait de Saint Anne, vous longerez ensuite toute la cote atlantique jusqu\'à la ville de Saint Pierre. Vous traverserez les terre en passant la ville du morne rouge pour rejoindre une seconde étape dans la ville du Lorrain. Puis vous descendrez toute la cote caraïbe pour retourner au point de départ. Un repas vous seras offert lors de l\'étape numéro 2 dans la ville du Lorrain. Prévoir la journée complète pour cette balade.', 'circuitComplet', 'martiniqueTroisIllet', 'martiniqueAnseDarlet', 'martiniqueSaintPierre', '210 Km', '3h25min', '200€');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `author_team` int(11) NOT NULL,
  `author_inscription` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `report` int(11) DEFAULT NULL,
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `topic_id`, `author`, `author_team`, `author_inscription`, `content`, `report`, `date_creation`) VALUES
(1, 1, 'dylanD', 2, '04/11/2020', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacinia suscipit condimentum. Sed molestie turpis pellentesque odio condimentum, in faucibus nisi dictum.', 0, '2020-11-07 06:51:47'),
(2, 1, 'kennyB', 2, '02/11/2020', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '2020-11-07 06:51:47'),
(3, 1, 'toniB', 2, '04/11/2020', 'Test de commentaire', 0, '2020-11-07 22:18:34'),
(4, 111, 'erwanB', 2, '02/11/2020', '<p>C\'est vraiment une tr&egrave;s jolie moto que tu as la . Prend en bien soin .</p>', NULL, '2020-12-24 17:02:46');

-- --------------------------------------------------------

--
-- Structure de la table `forumIndex`
--

CREATE TABLE `forumIndex` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `topic_category_id` int(11) NOT NULL,
  `lastTopic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `forumIndex`
--

INSERT INTO `forumIndex` (`id`, `title`, `category_id`, `topic_category_id`, `lastTopic`) VALUES
(1, 'Retour sur nos balades', 1, 1, 'Retour sur mon tour complet'),
(2, 'Vos balades', 1, 2, 'Plutôt nord ou sud de l\'île?'),
(3, 'Balade à l\'étranger', 1, 3, 'Comment rouler en Amérique du sud ?'),
(4, 'Présentation', 2, 4, 'Je vous présente Martine'),
(5, 'Préparation', 2, 5, 'Customisation de kit chaine'),
(6, 'Méca', 2, 6, 'Culot de bougie casser dans culasse'),
(7, 'Activités terrestres', 3, 7, 'Qu\'elle musée du Rhum ?'),
(8, 'Activités nautiques', 3, 8, 'Cours de kite surf'),
(9, 'Point de vue', 3, 9, 'La dame couchée vue de Saint Anne'),
(10, 'Charte d\'utilisation du forum', 4, 10, 'Utilisation du forum'),
(11, 'Présentation des membres', 5, 11, 'Erwan B');

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
(1, 'Kawazaki', 'Z900', '2019', 'Type : Quatre cylindres en ligne.\r\nCylindrée : 948 cm3.\r\nPuissance : 125 cv (92,2 kW) à 9.500 tours/minute.	\r\nCouple : 10,1 kgf.m (98,6 Nm) à 7.700 tours/minute.\r\nAllumage : Electronique.  \r\nAlimentation : Injection électronique.\r\nEmbrayage : Multi disques en bain d’huile avec commande manuelle . \r\nBoîte de vitesses : 6 rapports.\r\nTransmission finale : Par chaîne.', 'Cadre : Treillis en acier haute résistance. \r\nLongueur : 2.065 mm.\r\nLargeur : 825 mm.\r\nEmpattement : 1.450 mm.\r\nGarde au sol : 130 mm.\r\nHauteur de selle : 795 mm.\r\nPoids : 210 kg tous pleins faits.\r\nSuspension avant : Fourche inversée de 41 mm avec réglage de la compression, débattement : 120 mm.\r\nSuspension arrière : Horizontale de type Back-link avec amortisseur à gaz. Détente.\r\nFrein avant : Doubles disques en pétales semi-flottants de 300 mm. Deux étriers à 4 pistons opposés.\r\nFrein arrière : Simple disque en pétales de 250 mm. Etrier à simple piston.\r\nRoues : En alliage : 17 pouces.\r\nPneu avant : 120/70 ZR17 M/C (58W).\r\nPneu arrière : 180/55 ZR17 M/C (73W).\r\nRéservoir : 17 litres', 'z900.png', 'z900_2.jpg'),
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
  `author` varchar(255) NOT NULL,
  `author_inscription` varchar(255) DEFAULT NULL,
  `author_team` int(11) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT '1 Retour Balade / 2 Vos balades/ 3 balade étranger/ 4 Presentation / 5 Préparation / 6 Méca / 7 acti terrestra / 8 acti nautique / 9 point de vue / 10 charte / 11 Pres user',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `topic`
--

INSERT INTO `topic` (`id`, `author`, `author_inscription`, `author_team`, `category_id`, `title`, `content`, `img`, `date_creation`) VALUES
(2, 'dylanD', '04/11/2020', 2, 1, 'Saint Anne -> Le prêcheur par la côte atlantique', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:20:30'),
(3, 'kennyB', '02/11/2020', 2, 1, 'Retour sur mon tour complet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '', '2020-11-04 23:22:18'),
(5, 'Dylan', '29/10/2020', 2, 2, 'Petite Ballade au nord', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '', '2020-11-04 23:23:27'),
(6, 'Valérie', '18/10/2020', 2, 2, 'Les salines', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:23:27'),
(7, 'Toni B', '24/10/2020', 2, 2, 'Plutôt nord ou sud de l\'île?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:24:38'),
(8, 'Dylan', '29/10/2020', 2, 2, 'Question sur la montagne peller', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a.', '', '2020-11-04 23:24:38'),
(9, 'Dark Vador', '18/10/2020', 2, 3, 'Route 66', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '', '2020-11-04 23:26:23'),
(10, 'Dylan', '29/10/2020', 2, 3, 'Qui as déjà rouler au Canada ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '', '2020-11-04 23:26:23'),
(11, 'Valérie', '18/10/2020', 2, 3, 'Comment rouler en Amérique du sud ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:28:30'),
(12, 'Jojo', '28/10/2020', 2, 3, 'Gillet obligatoire dans les pays de l\'est ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '', '2020-11-04 23:28:30'),
(13, 'Valérie', '18/10/2020', 2, 4, '600 FZR de 1994', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:29:25'),
(14, 'Toni B', '24/10/2020', 2, 4, 'Présentation de mon 600 bandit de 1996', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:29:25'),
(15, 'Dylan', '29/10/2020', 2, 4, 'Je vous présente Martine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '', '2020-11-04 23:30:19'),
(16, 'Toni B', '24/10/2020', 2, 4, 'Mon Z1000 de 2010', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:30:19'),
(17, 'Toni B', '24/10/2020', 2, 5, 'Stage 1 sur mon H2R', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:31:31'),
(18, 'Valérie', '18/10/2020', 2, 5, 'Compatibilité AAC 600 et 1200 bandit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '', '2020-11-04 23:31:31'),
(19, 'Dark Vador', '18/10/2020', 2, 5, 'Customisation de kit chaine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:33:01'),
(20, 'Valérie', '18/10/2020', 2, 5, 'Montage Kit Flex Fuel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:33:01'),
(21, 'Dylan', '29/10/2020', 2, 6, 'Purge de frein', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:33:53'),
(22, 'Valérie', '18/10/2020', 2, 6, 'Bougie qui claque en permanence', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:33:53'),
(23, 'Toni B', '24/10/2020', 2, 6, 'Culot de bougie casser dans culasse', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.\r\n\r\nIn hac habitasse platea dictumst. Nulla ac sapien fermentum, ullamcorper ante eget, pulvinar lacus. Vestibulum gravida, odio imperdiet feugiat dignissim, velit neque molestie turpis, vitae dictum augue ante at nunc. Ut pellentesque justo mi, sollicitudin pulvinar erat finibus fermentum. Nullam lacinia purus vitae risus posuere convallis. Duis tincidunt varius efficitur. Suspendisse finibus purus at lacus tempor, et tempor elit imperdiet. In hac habitasse platea dictumst. Nullam hendrerit, justo non tristique efficitur, ipsum arcu vulputate turpis, at viverra felis augue et purus. Morbi molestie tellus a malesuada dapibus. Pellentesque lobortis, erat nec sagittis feugiat, dui justo iaculis nulla, nec congue massa enim vel est. Donec iaculis finibus sollicitudin.', '', '2020-11-04 23:35:12'),
(24, 'Dark Vador', '18/10/2020', 2, 6, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:35:12'),
(25, 'Jojo', '28/10/2020', 2, 7, 'Marché de fort de france', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:37:49'),
(26, 'Valérie', '18/10/2020', 2, 7, 'Horaire des jardins de Ballata', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra.', '', '2020-11-04 23:37:49'),
(27, 'Jojo', '28/10/2020', 2, 7, 'Qu\'elle musée du Rhum ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '', '2020-11-04 23:39:42'),
(28, 'Dylan', '29/10/2020', 2, 7, 'Randonnée sur la montagne pelée', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '', '2020-11-04 23:39:42'),
(29, 'Jojo', '28/10/2020', 2, 8, 'Tarif pour la baignoire de Josephine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed.', '', '2020-11-04 23:41:41'),
(30, 'Valérie', '18/10/2020', 2, 8, 'Bateau à fond transparent', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '', '2020-11-04 23:41:41'),
(31, 'Jojo', '28/10/2020', 2, 8, 'Cours de kite surf', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '', '2020-11-04 23:42:32'),
(32, 'Dylan', '29/10/2020', 2, 8, 'Spot de surf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:42:32'),
(33, 'Valérie', '18/10/2020', 2, 9, 'Vue du saut du gendarme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '', '2020-11-04 23:43:49'),
(34, 'Jojo', '28/10/2020', 2, 9, 'Plus beau point de vue ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales.', '', '2020-11-04 23:43:49'),
(35, 'Valérie', '18/10/2020', 2, 9, 'La dame couchée vue de Saint Anne', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate.', '', '2020-11-04 23:44:39'),
(36, 'Jojo', '28/10/2020', 2, 9, 'Le rocher du diamant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique rhoncus viverra. Aenean congue nisl sed neque pellentesque, id ultricies neque sodales. Suspendisse sit amet diam ut lectus luctus bibendum ut quis ante. Nunc ultricies molestie risus, at porta odio lacinia a. In facilisis fringilla mi sed vulputate. Donec sit amet sem tristique nunc ornare dapibus. In pharetra nunc massa, pulvinar imperdiet ex blandit sed. Vestibulum at felis sit amet turpis posuere aliquam non quis libero. Nulla a massa sed enim semper laoreet. Suspendisse magna augue, interdum id aliquam id, pretium et diam.', '', '2020-11-04 23:44:39'),
(82, 'administrateur', '02-02-2020', 1, 10, 'Charte d\'utilisation du forum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget tempor nibh. Nam sagittis ornare felis eu auctor. Fusce nec elit nibh. Aenean mattis elit vel fringilla mollis. Phasellus lacinia pretium finibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam sit amet ullamcorper massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quam nibh, eleifend in accumsan vestibulum, venenatis finibus justo. Vestibulum felis turpis, tristique ac feugiat in, vestibulum eget lectus. Praesent enim justo, malesuada at augue id, commodo dictum felis. Etiam a ex tortor. Praesent ex leo, volutpat vel massa eu, facilisis varius felis.\r\n\r\nIn nec congue sapien, nec euismod dolor. Suspendisse tellus diam, euismod a eros eget, viverra porta est. Nam imperdiet, odio faucibus auctor vestibulum, nibh odio viverra ex, malesuada pellentesque leo neque lacinia ligula. Ut mattis, velit nec consequat aliquet, massa lorem efficitur risus, et semper odio felis eu tellus. Aliquam sit amet lacus vel neque lacinia gravida ac ullamcorper tortor. Praesent placerat magna eu pharetra tempor. Cras ornare lacus et tortor mattis maximus. Mauris pellentesque, neque et rutrum varius, lectus ante convallis mi, eget porttitor elit neque eu est. In dignissim dolor ipsum, at fringilla erat egestas quis. Nullam vel cursus risus. Vivamus non posuere orci. Vivamus et placerat mi, nec porttitor dui. Quisque sagittis ante nisi. Proin suscipit pretium dui, laoreet tincidunt metus pharetra vel. Integer lacinia lorem libero, id elementum quam condimentum quis. Mauris ligula ex, aliquet a arcu et, imperdiet ultrices quam.\r\n\r\nMauris vulputate arcu in feugiat luctus. Nunc elementum in sapien nec eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer sed dui mauris. Aenean dolor felis, venenatis in dignissim eu, tempus id lectus. Nam lorem risus, semper vel tempus vel, semper ac justo. Mauris eleifend sodales sem nec hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque posuere ultricies nunc in vehicula. Curabitur a tristique arcu. Nam accumsan ultrices lacinia. Etiam massa erat, lobortis ac facilisis vel, placerat quis est. In hac habitasse platea dictumst. Nullam justo eros, fringilla maximus faucibus non, mollis tincidunt sem. Praesent quis tortor libero. Aliquam ac elementum purus.\r\n\r\nNulla dolor tortor, viverra iaculis nibh sit amet, volutpat condimentum nulla. Duis aliquam ligula sit amet massa pharetra pharetra. Quisque vehicula nisi non laoreet varius. Donec consectetur magna tellus, vel volutpat nisl facilisis in. Nulla id dapibus neque. Mauris ultricies in nibh nec accumsan. Sed volutpat imperdiet eros, at maximus nisl porttitor quis. Duis fringilla sem sit amet diam maximus, eu ornare odio iaculis. Sed ut egestas sapien. Morbi risus mi, volutpat quis blandit at, bibendum in tortor.\r\n\r\nMauris consequat consequat efficitur. Duis condimentum quam at dui dignissim, eget auctor sapien vulputate. Pellentesque erat mi, tincidunt ac nunc in, laoreet suscipit lacus. Sed ullamcorper arcu lacinia orci hendrerit hendrerit. Morbi mattis elit in hendrerit commodo. Suspendisse tincidunt, ante ut posuere blandit, metus tortor laoreet elit, in finibus arcu odio quis ante. Aenean facilisis ipsum id mauris pellentesque consequat.\r\n\r\n', '', '2020-11-14 07:29:16'),
(83, 'erwanB', '02-11-2020', 2, 11, 'Z900 de 2020', 'Z900 de 2020', 'z900_1056x514.jpg', '2020-11-14 22:54:05'),
(111, 'ValérieB', '16/12/2020', 2, 11, 'Présentation de mon 1200 monster 2018', '<p>Voici enfin la pr&eacute;sentation de mon Ducati 1200 monster de 2018.</p>\r\n<p>&nbsp;</p>', '1200monster.jpg', '2020-12-23 22:16:06'),
(112, 'erwanB', '02/11/2020', 2, 10, 'Utilisation du forum', '<p>Bonjour, une petite question, est-il obligatoire de se pr&eacute;senter avant de pouvoir poser une question sur le forum?</p>\r\n<p>Merci par avance&nbsp;</p>', NULL, '2020-12-24 16:56:24'),
(113, 'erwanB', '02/11/2020', 2, 11, 'Erwan B', '<p>Bonjour,</p>\r\n<p>Je me pr&eacute;sente Erwan B, 24 ans, papa d\'une petite fille de 8 ans.</p>\r\n<p>Passion : LA MOTO,</p>\r\n<p>Centre d\'interet : LA MOTO</p>\r\n<p>Merci</p>', NULL, '2020-12-24 16:59:42');

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
(30, 'Dylan', 'Dumas', 'dylanD', '$2y$10$TSCwMrV2IXWO50Mwepd7veeoQM4Gjhegn6ZqJhgyYvkxgiRvsV6YO', 'aa', 'aa', '1986-01-16', '2', '2020-11-04 23:08:27'),
(34, 'Valérie', 'Bridier', 'ValérieB', '$2y$10$iMF.OGTm0j5dPFwATn8AuuPJc5IquIMoBR6MxYPXtz11S1i/UAhSa', 'test@gmail.com', 'VILLEBLEVIN', '1986-01-16', '2', '2020-12-16 16:27:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `circuit`
--
ALTER TABLE `circuit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forumIndex`
--
ALTER TABLE `forumIndex`
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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `circuit`
--
ALTER TABLE `circuit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `forumIndex`
--
ALTER TABLE `forumIndex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
