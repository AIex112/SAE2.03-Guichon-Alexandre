-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 18 avr. 2025 à 10:03
-- Version du serveur : 10.11.11-MariaDB-0+deb12u1
-- Version de PHP : 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `guichon3`
--

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Fantaisie'),
(10, 'Documentaire');

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12),
(42, 'Godzilla', 2014, 123, 'Le physicien nucléaire Joseph Brody enquête sur de mystérieux phénomènes qui ont lieu au Japon.', 'Gareth Edwards', 1, '167915.webp', 'https://www.youtube.com/embed/rUYFJJqXLLM?si=75kN5XfWzBUwZ7i3', 13),
(44, 'Star wars III', 2004, 140, 'Anakin deviens vador', 'George Lucas', 4, '61kCtf4DC3L.jpg', 'https://www.youtube.com/embed/5UnjrG_N8hU?si=e8vWgwB3j2JspFsj', 12),
(45, 'La Cité de la peur', 1994, 100, 'De nos jours, à Cannes, pendant le Festival. Pas facile pour Odile Deray, petite attachée de presse de cinéma, de faire parler de son film \"Red is Dead\". ', 'Alain Berbérian', 2, '1132544.jpg', 'https://www.youtube.com/embed/-6lMRysFhrM?si=6YzFJeb312ODxS7H', 8),
(46, 'Fight Club', 1999, 139, 'Pourvu d\'une situation des plus enviable, un jeune homme à bout de nerfs retrouve un équilibre relatif en compagnie de Marla, rencontrée dans un groupe d\'entraide. Il fait également la connaissance de Tyler Durden, personnage enthousiaste et charismatique.', 'David Fincher', 6, 'MV5BOTgyOGQ1NDItNGU3Ny00MjU3LTg2YWEtNmEyYjBiMjI1Y2M5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 'https://www.youtube.com/embed/BdJKm16Co6M?si=BusKnNs7z5UmscZV', 16),
(47, 'Shining', 1990, 146, 'Jack Torrance, gardien d\'un hôtel fermé l\'hiver, sa femme et son fils Danny s\'apprêtent à vivre de longs mois de solitude. Danny, qui possède un don de médium, le Shining, est effrayé à l\'idée d\'habiter ce lieu, théâtre marqué par de terribles évènements passés...', 'Stanley Kubrick', 7, 'images.jpeg', 'https://www.youtube.com/embed/JkZzWDaId-s?si=-0maeMJ4obmzi6tD', 12),
(48, 'L\'Histoire sans fin', 1984, 95, 'Depuis la mort de sa mère, Bastien, dix ans, s\'est replié sur lui-même et s\'est bâti un monde imaginaire nourri de romans d\'aventures qu\'il dévore. Un jour, il découvre dans la librairie de M. Koreander un livre intitulé `L\'histoire sans fin\', qu\'il dérobe. Dès les premières pages, Bastien se sent entraîné dans l\'univers merveilleux du pays fantastique.', 'Wolfgang Petersen', 9, 'uNjv8pXsww78gikNM0eW8hqM57I.jpg', 'https://www.youtube.com/embed/lDKF4iU8Yts?si=rVsDY1AD6q6HB4kx', 10),
(49, 'Océans', 2009, 84, 'Longtemps, explorateurs et naturalistes ont sillonné les océans la découverte de nouveaux mondes et d\'autres formes de vie, naviguant au-dessus d\'un univers insoupçonné. ', 'Jacques Perrin', 10, 'images (1).jpeg', 'https://www.youtube.com/embed/VmLSHC6N1Pk?si=GltFIfnY_1PJsaiF', 3),
(50, 'Pacific Rim', 2013, 131, 'Il y a longtemps, des légions de créatures appelées Kaiju sont sorties de la mer, apportant la guerre. Pour combattre les Kaiju, l\'humanité à créer des robots géants appelés Jaegers, conçus pour être pilotés par deux humains enfermés ensemble dans un pont neutre.', 'Guillermo del Toro', 1, 'p9360990_p_v12_at.jpg', 'https://www.youtube.com/embed/qOX_O118N7k?si=uZeiEtJ4npatUSAW', 14),
(52, 'Demon Slayer', 2020, 117, 'Le groupe de Tanjirô a terminé son entraînement de récupération au domaine des papillons et embarque à présent en vue de sa prochaine mission à bord du train de l\'infini, d\'où quarante personnes ont disparu en peu de temps. Tanjirô et Nezuko, accompagnés de Zen\'itsu et Inosuke, s\'allient à l\'un des plus puissants épéistes de l\'armée des pourfendeurs de démons, le Pilier de la Flamme Kyôjurô Rengoku, afin de contrer le démon qui a engagé le train de l\'Infini sur une voie funeste.', 'Haruo Sotozaki', 5, 'images (2).jpeg', 'https://www.youtube.com/embed/XExLDnQSPUs?si=Z-YB01i17U', 10),
(53, 'Le Voyage de Chihiro', 2001, 125, 'Au cours d\'un voyage en voiture, la famille de Chihiro, dix ans, fait une halte dans un parc à thème qui semble abandonné. Ses parents découvrent des mets succulents dans un restaurant et commencent à manger. Ils se retrouvent alors transformés en cochons. Prise de panique, Chihiro s\'enfuit et rencontre l\'énigmatique Haku, qui lui explique le fonctionnement de l\'univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba.', 'Hayao Miyazaki', 5, 'téléchargé.jpeg', 'https://www.youtube.com/embed/fDUFP7EeXLE?si=yKRmiZTlViGnVgwh', 8),
(54, 'Neon Genesis Evangelion - Death and Rebirth', 1997, 101, 'En deux-mille-quinze, soit quinze après le Second Impact, un cataclysme planétaire provoqué par une explosion en Antarctique, la ville forteresse Tokyo-III est menacée par les Anges, des êtres gigantesques détruisant tout sur leur passage. Pour les combattre, l\'organisation secrète NERV a mis au point des Evangelions, appelés aussi Eva, d\'immenses créatures bio-mécaniques pilotées par de jeunes adolescents.', 'Hideaki Anno', 5, '811rqpJatCL._AC_UF894,1000_QL80_.jpg', 'https://www.youtube.com/embed/7Q5-lhCpDIA?si=Uv93v1NBxef1JZG_', 16),
(58, 'The Dark Knight Rises', 2012, 165, 'Il y a huit ans, Batman a disparu dans la nuit : lui qui était un héros est alors devenu un fugitif. L\'arrivée d\'une féline et fourbe cambrioleuse au mystérieux dessein chamboule l\'ordre établi. Bien plus dangereuse encore est l\'apparition de Bane, terroriste masqué dont l\'impitoyable projet pour Gotham pousse Bruce à sortir de l\'exil qu\'il s\'est imposé. Mais bien qu\'il reprenne cape et masque, Batman pourrait ne pas être un adversaire à la taille de Bane...', 'Christopher Nolan', 1, '81QNS-q4VaL.jpg', 'https://www.youtube.com/embed/TQfATDZY5Y4?si=hJ-oA6W0W8Q-rF8F', 13),
(59, 'Terminator', 1984, 107, 'Un Terminator, robot d\'aspect humain, est envoyé d\'un futur où sa race livre aux hommes une guerre sans merci. Sa mission est de trouver et d\'éliminer Sarah Connor avant qu\'elle ne donne naissance à John, appelé à devenir le chef de la résistance. Cette dernière envoie un de ses membres, Reese, aux trousses du cyborg.', 'James Cameron', 1, 'images (3).jpeg', 'https://www.youtube.com/embed/nGrW-OR2uDk?si=1vkJVajw_Vi7uNaZ', 15),
(60, 'Zoolander', 2001, 89, 'Derek Zoolander, un célèbre mannequin, est à l\'apogée de sa carrière. Couronné trois fois de suite Top model de l\'année, il est sur le point de recevoir son quatrième trophée lorsque ce titre lui est ravi par un jeune et ambitieux challenger : Hansel. Effondrée, l\'idole des podiums décide d\'abandonner l\'univers futile de la mode pour se ressourcer au sein de sa famille en Pennsylvanie.', 'Ben Stiller', 2, 'images (4).jpeg', 'https://www.youtube.com/embed/YtQq0T3ExLs?si=UqUIKnxZi3cLMCyx', 10),
(61, 'Free Guy', 2021, 115, 'Un caissier de banque découvre qu\'il est en réalité un personnage dans un jeu vidéo à monde ouvert et décide de devenir le héros de sa propre histoire, qu\'il va réécrire par lui-même.', 'Shawn Levy', 2, '229536.jpeg', 'https://www.youtube.com/embed/sL5SgG_mxF8?si=SnPAI7xYSFTu8YhV', 12),
(62, 'The Mask', 1994, 101, 'Stanley Ipkiss, modeste employé de banque, passionné par l\'univers de Tex Avery, trouve un masque ancien aux pouvoirs surnaturels. Il est néanmoins partagé entre devenir cette créature verte sûre d\'elle ou rester le timide Stanley Ipkiss, incapable d\'aborder la magnifique chanteuse de cabaret Tina Carlyle.', 'Chuck Russell', 2, 'MV5BZGViNWUwMmUtZDBkYS00M2IwLWIxNWQtZTM1Y2FjYTVjOGUyXkEyXkFqcGc@._V1_.jpg', 'https://www.youtube.com/embed/K38L5x00GeY?si=wyrauXNaSQKj53at', 13),
(63, 'La Ligne verte', 1999, 189, 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain, en mille-neuf-cent-trente-cinq, en Louisiane, il était chargé de veiller au bon déroulement des exécutions capitales au bloc E (la ligne verte) en s\'efforçant d\'adoucir les derniers moments des condamnés. Parmi eux se trouvait un colosse du nom de John Coffey, accusé du viol et du meurtre de deux fillettes.', 'Frank Darabont', 3, '707683_poster.jpg', 'https://www.youtube.com/embed/mccs8Ql8m8o?si=ReJ-kwvCGiMYegED', 12),
(64, 'Le Pianiste', 2002, 150, 'Programme campus Varsovie, au mois d\'octobre mille-neuf-cent-trente-neuf. un jeune pianiste juif, Wladyslaw Szpilman, est enfermé dans le ghetto avec sa famille. Il assiste, impuissant, aux humiliations que subissent quotidiennement les siens. Grâce à une aide extérieure, il échappe de justesse à la déportation mais voit partir toute sa famille. Le jeune homme se cache alors dans les maisons vides et observe passivement les derniers habitants se révolter contre l\'occupation allemande.', 'Roman Polanski', 3, 'images (5).jpeg', 'https://www.youtube.com/embed/QGMRmp6uYc8?si=FPQMaSdRWAx7XOZQ', 12),
(66, 'Don\'t Look Up : Déni cosmique', 2021, 145, 'Persuadés qu\'une météorite s\'apprête à détruire la Terre, deux astronomes peu crédibles aux yeux de la population se lancent dans une tournée médiatique pour prévenir l\'humanité de la probable et inévitable fin du monde.', 'Adam McKay', 3, 'images (7).jpeg', 'https://www.youtube.com/embed/wplebVZB8FQ?si=JNJrKJaGjBSs1xmo', 16),
(67, 'Blade Runner', 2017, 163, 'En deux-mille-quarante-neuf, la société est fragilisée par les nombreuses tensions entre les humains et leurs esclaves créés par bio-ingénierie. L\'officier K est un blade runner: il fait partie d\'une force d\'intervention d\'élite chargée de trouver et d\'éliminer ceux qui n\'obéissent pas aux ordres des humains.', 'Denis Villeneuve', 4, '9d13dfc4-340d-43ec-bd2e-559e0219bbfb.jpg', 'https://www.youtube.com/embed/gCcx85zbxz4?si=OZaoz0lI98ao9bcQ', 14),
(68, 'Bienvenue à Gattaca', 1997, 104, 'Dans un futur proche, notre société pratique l\'eugénisme à grande échelle : les gamètes des parents sont triés et sélectionnés afin de concevoir in vitro des enfants quasi parfaits. Malgré l\'interdiction officielle, les entreprises recourent à des tests ADN discrets afin de sélectionner leurs employés. Ainsi, les personnes conçues naturellement se voient reléguées à des tâches subalternes.', 'Andrew Niccol', 4, '91B7YWMLi1L._AC_UF894,1000_QL80_.jpg', 'https://www.youtube.com/embed/NIIZ2P-fiyI?si=HNs2Of6lQXbSkrjF', 12),
(69, 'Parasite', 2019, 132, 'Les quatre membres de la famille Ki-taek sont proches, mais sont au chômage et ont un avenir sombre. Le fils, Ki-woo, est recommandé par son ami pour un emploi de tuteur bien rémunéré, faisant naître l\'espoir d\'un revenu régulier. Portant les attentes de toute sa famille, il passe une entrevue. En arrivant chez M.', 'Bong Joon-ho', 6, '3992754.jpg', 'https://www.youtube.com/embed/BboKKBYx7-0?si=Fdatz6speoJ-iBN_', 14),
(70, 'Scream', 1996, 111, 'Casey Becker, une belle adolescente, est seule dans la maison familiale. Elle s\'apprête à regarder un film d\'horreur, mais le téléphone sonne.', 'Wes Craven', 7, 'xVjk4TPttO1dddHRw5YwKGgQPRP.webp', 'https://www.youtube.com/embed/i3J6ACKQ7K0?si=Je8ffzvti4H3lNpu', 12);

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `age` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`id`, `name`, `image`, `age`) VALUES
(7, 'Sarah', '435b6a57d97b3f788daaf9e8971631dc03202f61.jpg', '7'),
(8, 'Cloé', 'chat-saviez-vous.webp', '18'),
(9, 'Tom', 'tommy-shelby.webp', '14'),
(10, 'Alex', 'Cars.webp', '3');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
