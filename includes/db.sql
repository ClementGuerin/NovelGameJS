-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 06 juin 2018 à 19:58
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `novelgamejs`
--

-- --------------------------------------------------------

--
-- Structure de la table `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` tinytext NOT NULL,
  `story` int(10) UNSIGNED NOT NULL COMMENT 'ID story',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `replies`
--

INSERT INTO `replies` (`id`, `message`, `story`) VALUES
(1, 'Inspecter la salle', 2),
(2, 'Se cacher', 3),
(3, 'S’approcher de la lumière', 4),
(4, 'Demander qui est là', 5),
(5, 'Clamer votre innocence', 6),
(6, 'Demander une petite pièce', 7),
(7, 'Le suivre', 9),
(8, 'S\'échapper', 10),
(9, 'Mettre une béquille au nain', 11),
(10, 'Redemander une petite pièce', 8),
(11, 'Lui redonner la monnaie de sa pièce', 12),
(12, 'Fouiller le nain', 13),
(13, 'Prendre la fuite', 10),
(14, 'Ne rien faire', 14),
(15, 'Prendre la fuite', 10),
(16, 'Attendre', 15),
(17, 'Aller à gauche', 16),
(18, 'Aller à droite', 17),
(19, 'Attendre', 18),
(20, 'Ouvrir la grande porte', 36),
(21, 'Faire demi-tour', 37),
(22, 'Continuer tout droit', 19),
(23, 'Ouvrir la porte entrouverte', 33),
(24, 'Démolir ce cul-terreux', 20),
(25, 'Lui demander de l’aide', 24),
(26, 'S’enfuir', 23),
(27, 'S’enfuir', 21),
(28, 'Continuer de se battre', 22),
(29, 'S’enfuir', 25),
(30, 'Aller se cacher dans le fumier', 26),
(31, 'Lui demander où se trouve la sortie', 27),
(32, 'Attendre', 29),
(33, 'Prendre la fuite', 28),
(34, 'Sortir par la porcherie', 31),
(35, 'Demander un bain chaud', 30),
(36, 'Sortir par la porcherie', 31),
(37, 'Exiger un bain', 32),
(38, 'Demander de l’aide', 34),
(39, 'Prendre la femme en otage', 35),
(40, 'Frapper à la porte', 38),
(41, 'Faire demi-tour', 37),
(42, 'Chercher une autre issue', 39),
(43, 'Prendre la fuite', 40),
(44, 'Savoir pourquoi vous êtes fait prisonnier', 42),
(45, 'Lui insulter ses grands morts', 41),
(46, 'Accepter', 44),
(47, 'Refuser', 43);

-- --------------------------------------------------------

--
-- Structure de la table `stories`
--

DROP TABLE IF EXISTS `stories`;
CREATE TABLE IF NOT EXISTS `stories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` mediumtext NOT NULL,
  `reply1` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID first reply',
  `reply2` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID second reply',
  `reply3` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID third reply',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stories`
--

INSERT INTO `stories` (`id`, `message`, `reply1`, `reply2`, `reply3`) VALUES
(1, 'Vous vous réveillez dans une salle lugubre, vous ne savez pas comment vous êtes arrivé là mais ce qui est (presque) sûr c’est que vous ne voulez pas rester là. Vous n’avez rien sur vous mis à part une tenue légère qui ne vous va pas du tout au teint. Une lumière émanant de l’extérieur de votre salle arrive vers vous ainsi que des bruits de pas.', 1, 2, 3),
(2, 'Grâce à la lumière qui s’approche de plus en plus vous avez assez de luminosité pour inspecter la salle, il s’agit d’une cellule d’environ 11m², ou alors c’est une cave à Paris… Non il est plus probable que ce soit une cellule… Vous apercevez une couchette en béton, un lavabo et des W.C. Votre cellule est fermé par une porte avec une petite fenêtre obstruée par des barreaux. La lumière continue de s’approcher et vous entendez distinctement quelque chose venir vers vous ', 4, 5, 6),
(3, 'Vous ne savez pas à quoi vous attendre et vous vous sentez vulnérable vous apercevez grâce à la lumière qui s’approche, une couchette en pierre mais il n’y a pas de couverture, dommage ça aurait été parfait pour vous protéger des monstres.. Décidément vous ne voyez pas beaucoup d’endroits où vous cacher… La lumière continue de s’approcher et vous entendez distinctement quelque chose venir vers vous ', 4, 5, 6),
(4, 'La lumière s’approchant vous décidez de vous approcher également de celle-ci, vous êtes très vite bloqué par une porte en bois avec une petite fenêtre ronde composée de barreaux. A travers les barreaux vous apercevez d’autres portes similaires à la vôtre avec un long couloir. La lumière continue de s’approcher et vous entendez distinctement quelque chose venir vers vous ', 4, 5, 6),
(5, 'Quelque chose approche de votre cellule, vous regardez par la fenêtre de votre porte mais vous ne voyez rien pourtant les bruits de pas ce sont arrêtés et la luminosité est toujours présente. Sans attendre vous exclamez un “Qui est-là ?” ferme et retentissant. Un bruit de serrure retentit, votre porte de cellule se déverrouille et vous entrevoyez une personne de petite taille, assez moche et sans chaussures, celle-ci porte une bougie dans une main et un trousseau de clés dans l’autre. Il ouvre la porte et vous demande de le suivre de manière explicite.', 7, 8, 9),
(6, 'Sans attendre vous commencez à clamer votre innocence, étrangement ça sonne mal et cela vous rend encore plus suspect. Surtout que vous ne savez toujours pas pourquoi vous êtes là. Un bruit de serrure retentit et votre porte de cellule se déverrouille. Votre minable technique aurait vraiment fonctionnée ? Un homme de petite taille, assez moche et sans chaussures vous demande de le suivre avec nonchalance, il a une bougie dans une main et un trousseau de clés dans l’autre.', 7, 8, 9),
(7, 'Vous sentez que quelqu’un arrive et vous demandez instinctivement une “petite pièce”, certainement vos origines roumaines qui reviennent au galop. Mais vous n’êtes pas dans le métro donc peu de chance que cela fonctionne. Un homme de petite taille, assez moche et sans chaussures vous demande de le suivre avec nonchalance, il a une bougie dans une main et un trousseau de clés dans l’autre mais visiblement pas de petite pièce. Il vous demande de le suivre.', 7, 9, 10),
(8, 'Votre demande ayant été lâchement ignorée vous la réitérée, mais le semi-homme n’a pas l’air d’y tenir compte et cela vous agace au plus au point. Il doit avoir pleins de pièce sur lui, pourquoi ne vous cède t-il pas une toute petite pièce ? Cet événement vous rappelle les heures les plus sombres de notre histoire…', 7, 8, 11),
(9, 'Vous décidez de suivre ce semi-homme, après tout il vous a libéré… C’est certainement une bonne personne. Il vous emmène dans une très grande salle, richement décoré mais ce que vous remarquez le plus c’est le trône en or qui illumine la pièce et accessoirement le mec qui se trouve dessus.', 43, 44, 45),
(10, 'Vous profitez de la situation pour vous enfuire, apres tout quelqu’un vous a bien enfermé une fois, qui vous dit que cela ne va pas se reproduire ? Vous courrez donc dans le sens opposé et vous vous retrouvez devant un grand couloir qui continue à votre droite ainsi qu’à votre gauche.', 17, 18, NULL),
(11, 'Sans qu’il s’y attende vous réduisez le semi-homme en paillasson, technique de lâche mais technique efficace. Il n’a même pas l’air de se relever.', 12, 13, 14),
(12, 'En faisant ce choix vous nous prouver à tous que vous avez un sens de l’humour très appréciable… ainsi qu’un attrait pour la violence… Dans tous les cas le semi-homme se retrouve à terre et il n’a pas l’air de se relever.', 12, 13, 14),
(13, 'Vous commencez à fouiller le semi-homme, vous récupérez ses clés et sa bougie mais il n’avait pas de pièce sur lui, quel dommage… Vous commencez à entendre du bruit qui se rapproche de vous.', 15, 16, NULL),
(14, 'Vous restez planté là… A côté d’un mec visiblement mort… Des bruits de pas de plus en plus perceptibles s’approchent de vous. Vous restez là sans rien faire jusqu’au point où vous apercevez 2 gardes armés d’épées et de boucliers et le moins qu’on puisse dire c’est qu’ils n’ont pas l’air très courtois.', 15, 16, NULL),
(15, 'Attendre était visiblement pas la meilleure idée que vous avez eu, vous n’avez même pas le temps de dire quoi que ce soit qu’un garde vous transperce avec son épée, je vous raconte pas les détails hein mais en gros… Bah vous êtes mort.', NULL, NULL, NULL),
(16, 'Vous décidez d’aller à gauche… Vous vous retrouvez dans une grande salle, très lumineuse avec une très grande porte en bois devant vous. Cependant vous entendez quelque chose arriver vers vous.', 21, 20, 19),
(17, 'Vous décidez d’aller à droite… Vous êtes dans un autre grand couloir avec des portes tout autour de vous, certaines ressemblent à celle de votre cellule, d’autres n’ont pas de fenêtres pour voir l’intérieur, vous apercevez néanmoins de la lumière et une porte entrouverte mais le couloir continue encore...  Cependant vous entendez quelque chose arriver vers vous.', 22, 23, 19),
(18, 'Pour une raison inconnue vous décidez d’attendre, Deux gardes visiblement armés jusqu’aux dents vous rattrapent et vous font une leçon que vous n\'oublierez pas de si tôt… En d’autres termes : Vous êtes mort.', NULL, NULL, NULL),
(19, 'En continuant tout droit vous arrivez dans ce qui ressemble à une étable. Un grand homme barbu, visiblement fermier arrivent vers vous et vous demande ce que vous faites ici', 24, 25, 26),
(20, 'Vous commencez à vous en prendre au fermier, celui-ci est très surpris mais il ne se laisse pas faire, vous vous battez à mains nues mais vous n’arrivez pas à prendre l’avantage, ce combat va s’éterniser.', 27, 28, NULL),
(21, 'Voyant le combat s’éterniser vous décidez de fuir mais dans votre fuite le fermier vous poursuit et vous êtes bloqué dans votre fuite. L’homme vous assomme avec une pelle qu’il ramasse derrière vous, à moitié dans les vapes vous apercevez deux gardes vous emmenez avant de vous tuer dans les couloirs.\r\n', NULL, NULL, NULL),
(22, 'Le combat s’intensifie, vous arrivez à prendre le dessus et vous commencez à l’étrangler violemment mais tout d’un coup une épée vous transperce l\'abdomen, vous arrivez juste à comprendre que ce coup dans le dos provient d’un garde avant de vous éteindre. ', NULL, NULL, NULL),
(23, 'En tentant de vous enfuir vous êtes perdu dans l’étable et deux gardes parviennent à vous rattraper, sans aucune sommation ils vous forcent à plier genoux avant de vous faire perdre la tête.', NULL, NULL, NULL),
(24, 'Vous décidez de demander de l’aide au Fermier, celui-ci ne comprend pas trop, vous lui faites comprendre que vous devez sortir d’ici et il vous dit d’aller vous cacher dans ce qui ressemble à du fumier.', 29, 30, 31),
(25, 'Vous n’avez pas confiance en cet homme et sans plus attendre vous décidez de prendre la fuite, malheureusement vous ne trouvez pas la sortie à temps et deux gardes vous rattrapent avant de liquider sur place.', NULL, NULL, NULL),
(26, 'Vous écoutez l’homme et laissant de côté votre honneur et votre dignité vous plongez dans le fumier encore frais du Fermier. Deux gardes arrivent dans l’étable et parlent avec l’homme, il n’a pas l’air à l’aise et les gardes ont l’air eux très agressifs.', 32, 33, NULL),
(27, 'Le temps de lui demander où se trouve la sortie deux gardes pénètrent dans l’étable et sans attendre ils vous embarquent, sans répondre à vos interrogations ils décident d’en finir avec vous dans le couloir d’où vous venez.', NULL, NULL, NULL),
(28, 'Vous sentez la délation arrivez et vous préférez fuir tant qu’il en est encore temps. Malheureusement votre niveau physique ne vous permet absolument pas d’échapper à deux gardes même si ceux-ci ont une vingtaine de kilos d’équipement. Avant même de comprendre que vous êtes fichu vous sentez une lame vous transpercer, puis une autre, puis encore une autre. La fuite n’était décidément pas la bonne chose à faire.', NULL, NULL, NULL),
(29, 'Vous patientez sans bouger dans le fumier pendant que le fermier parlent avec les gardes, il leurs dit qu’il vous a vu passer et que vous vous êtes enfui par la porte au fond de l’étable avant d’emmener les gardes avec lui. Il revient plusieurs minutes plus tard en vous disant de quitter les lieux par la porcherie.', 34, 35, NULL),
(30, 'Vous sentez le fumier et vous puez, tout le monde vous remarquera. Vous faites comprendre au fermier que vous voulez un bain, il vous fait cependant comprendre que c’est une mauvaise idée et qu’il est déjà assez généreux de ne pas vous avoir vendu.', 36, 37, NULL),
(31, 'Sans plus attendre vous sortez par la porcherie, en vous éloignant vous remarquez que vous sortez d’un immense château orné d’une bannière ennemie. Grâce à votre tenue légère et à votre senteur de lisier personne n’ose vous regarder et encore moins s’approcher de vous et vous passez inaperçu dans le rôle du crasseux. C’est ainsi que vous regagnez votre liberté, félicitation.', NULL, NULL, NULL),
(32, 'Décidément vous êtes quelqu’un très… chiant, oui c’est le mot. L’homme continu de vous dire que c’est une mauvaise idée mais vous ne l’entendez pas, il vous donne donc la disposition d’un lavoir pour vous nettoyer et vous demande de vous faire discret. Mais ce qui devait arriver arriva : Vous tombez nez à nez avec des gardes et ils ne vous ont pas loupé, après vous avoir reconnu ils décident de vous trancher la gorge.', NULL, NULL, NULL),
(33, 'Vous ouvrez la porte entrouverte et vous pénétrez dans la pièce, c’est une chambre et une femme, certainement une servante est en train de la préparer, vous entendez distinctement deux personnes courir partout en train de vous chercher. Ils vont certainement vous trouver d’une seconde à l’autre', 38, 39, NULL),
(34, 'Vous demandez de l’aide à la femme, perdue et sans comprendre ce qui lui arrive elle vous dit de vous cacher dans l’armoire, ce que vous faites sans réfléchir (comme d’habitude). Deux gardes arrivent dans la chambre et sans perdre une seconde ils ouvrent l\'armoire et vous embarque, la femme vous a certainement balancée aux gardes. Cette erreur vous vaudra cher puisque les gardes vous tueront quelques minutes après.\r\n', NULL, NULL, NULL),
(35, 'Sans entrevoir de solution vous décidez de prendre la femme en otage, les gardes arrivent peu de temps après ils vous aperçoivent avec la servante sous votre emprise, mais votre plus gros point faible c’est que vous n’avez aucune arme, maigre menace. Les gardes ne prennent pas peur et ils vous extirpent avant de vous transpercer de leurs épées.', NULL, NULL, NULL),
(36, 'Vous tentez d’ouvrir la grande porte, malheureusement celle-ci est fermée.', 40, 41, 42),
(37, 'Vous décidez de faire demi-tour, choix très stupide quand vous tentez de fuir quelque chose. Cette fois-ci cette erreur vous sera fatale puisque c’est par le fer de deux gardes que vous succomberez. Vous ne pouvez vous en vouloir qu’à vous-même (et peut-être aux gardes aussi).\r\n', NULL, NULL, NULL),
(38, 'Vous venez vraiment de frapper à la porte comme un témoin de Jéhovah ? Ce qui est certains c’est que votre tentative de porte-à-porte n’a pas fonctionné et deux gardes parviennent à vous rattraper et sans avoir le temps de leur parler de notre seigneur Jésus-Christ vous tombez sous les coups d’épées de ces deux mécréants.', NULL, NULL, NULL),
(39, 'Malheureusement vous ne trouvez aucune autre issue, faire demi-tour aurait été la seule option mais deux gardes arrivent sur vous, il est trop tard. Vous n’avez pas le temps de prononcer le moindre mot que les gardes vous saisissent avant de vous étriper avec leurs épées. R.I.P', NULL, NULL, NULL),
(40, 'Vous prenez peur et vous décidez de prendre la fuite, malheureusement il est trop tard et vous êtes vite arrêter par une armée de gardes, vous êtes mis à genoux du Seigneur et celui-ci décide de vous trancher la tête, sans plus attendre un garde s\'exécute et vous exécute.', NULL, NULL, NULL),
(41, 'Dois-je vraiment vous dire ce qu’il s’est passé ? Disons qu’il n’a pas apprécié et qu’il vous à envoyer avec vos grands morts. Bien joué, personne n’aurait pu le prédire ça...', NULL, NULL, NULL),
(42, 'Le Seigneur se présente, vous comprenez très vite que c’est un ennemi de votre domaine. Il vous rappelle que vous avez été fait prisonnier pendant une bataille mais que vous avez survécu en tombant de votre cheval dès le début et vous vous êtes assommé. Il vous demande d’aller porter un message à votre domaine.', 46, 47, NULL),
(43, 'Vous ne souhaitez pas entaché votre honneur en apportant un message ennemi à votre domaine, une question d’honneur sans doute…  ou alors vous n’aimez pas la route. Dans tous les cas le Seigneur n’a pas apprécié, vous voilà donc officiellement mort, vous gardez votre honneur mais vous êtes quand même mort.', NULL, NULL, NULL),
(44, 'Vous acceptez la demande du Seigneur et vous partez transmettre un message à votre domaine, mais votre domaine n’apprécie apparemment pas le message puisque vous finirez exclu de votre domaine. Mais vous restez en vie, considérez donc cette fin comme une bonne fin mais une fin assez nulle.', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
