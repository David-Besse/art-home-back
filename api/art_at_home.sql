-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql306.infinityfree.com
-- Généré le :  mer. 19 juin 2024 à 06:55
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP :  7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `if0_36750513_art_at_home`
--

-- --------------------------------------------------------

--
-- Structure de la table `artwork`
--

CREATE TABLE `artwork` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(530) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `exhibition_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artwork`
--

INSERT INTO `artwork` (`id`, `title`, `description`, `picture`, `slug`, `status`, `exhibition_id`) VALUES
(1, 'La ville sous lumières', 'Les étincelles sont floues et créent des formes organiques, comme des courbes et des cercles, qui se mélangent et se superposent. L\'ensemble de l\'image est dynamique et énergique, créant une atmosphère de feu et de passion.', 'https://cdn.pixabay.com/photo/2014/02/14/08/27/sparks-265850_640.jpg', 'la-ville-sous-lumieres', 1, 9),
(2, 'L\'étrangeté de la vie marine', 'Illustration d\'une méduse flottant dans l\'eau, créant une sensation de légèreté, de douceur, de calme et de tranquillité', 'https://cdn.pixabay.com/photo/2022/02/08/13/41/jellyfish-7001410_640.jpg', 'l-etrangete-de-la-vie-marine', 1, 2),
(3, 'L\'expression libre', 'Composition abstraite et géométrique, avec des formes et des couleurs vives qui se superposent et se chevauchent. Les couleurs vives et la composition dynamique attirent l\'œil et créent une sensation d\'énergie et de mouvement.', 'https://cdn.pixabay.com/photo/2014/12/15/16/46/graffiti-569265_640.jpg', 'l-expression-libre', 1, 7),
(4, 'La symphonie végétale et nuit étoilée', 'La composition est équilibrée et harmonieuse, avec des feuilles qui se chevauchent et se fondent les unes dans les autres. Les feuilles ont des formes organiques et sont disposées de manière dynamique, créant une sensation de mouvement et de vie.', 'https://cdn.pixabay.com/photo/2021/06/01/07/02/plants-6300778_640.jpg', 'la-symphonie-vegetale-et-nuit-etoilee', 1, 9),
(5, 'L\'harmonie du fantastique', 'Création d\'un coin paisible en pleine campagne où animaux, volatiles et humains vivent en harmonie. Le tableau est composé de manière équilibré.', 'https://cdn.pixabay.com/photo/2020/01/06/10/01/illustration-4745025_640.png', 'l-harmonie-du-fantastique', 1, 5),
(6, 'La paix de la végétation', 'L\'oeuvre représente une scène de nature paisible. Un homme face à cette immensité qu\'est la nature. L\'ensemble créé une atmosphère relaxante et harmonieuse, évoquant la tranquillité et la beauté de la nature.', 'https://cdn.pixabay.com/photo/2021/09/07/16/31/nature-6604374_640.jpg', 'la-paix-de-la-vegetation', 1, 9),
(7, 'L\'exploration de l\'abstrait', 'Des coups de pinceau audacieux et une utilisation généreuse de la couleur. Les formes géométriques et organiques se mélangent pour créer une composition dynamique et équilibrée.', 'https://cdn.pixabay.com/photo/2018/02/01/12/01/art-3123127_640.jpg', 'l-exploration-de-l-abstrait', 1, 7),
(8, 'Pause café', 'L\'image montre une tasse de café chaude posée sur une nappe à carreaux. La tasse a une belle couleur brune et laisse échapper une vapeur chaude qui monte dans l\'air. La scène évoque une ambiance chaleureuse et paisible, où l\'on peut profiter d\'un bon livre et d\'une boisson chaude confortablement installé chez soi.', 'https://cdn.pixabay.com/photo/2023/02/16/18/36/coffee-7794531_640.jpg', 'pause-cafe', 1, 1),
(9, 'Fleur et aquarelle', 'Fleurs dans des tons de violet et de rose avec des touches de blanc et de jaune. Les formes florales sont stylisées et évoquent une sensation de mouvement et de légèreté. La composition est équilibrée, avec des éléments disposés autour d\'un point central.', 'https://cdn.pixabay.com/photo/2021/10/29/15/05/floral-6752135_640.jpg', 'fleur-et-aquarelle', 1, 9),
(10, 'Regard persan', 'La beauté du regard et de la femme sont mis en avant, des traits fins et épurés viennent longer les courbes du visage de cette femme au roux étincelant.', 'https://cdn.pixabay.com/photo/2023/03/01/01/51/phone-wallpaper-7822073_640.jpg', 'regard-persan', 1, 6),
(11, 'Harmonie des couleurs', 'Des branches d\'arbres et des feuilles vertes et colorées. La peinture a un point de vue rapproché, ce qui crée une sensation d\'intimité avec la nature. La lumière du soleil brille à travers les feuilles et ajoute une atmosphère chaleureuse et vibrante à l\'oeuvre.', 'https://cdn.pixabay.com/photo/2022/03/10/11/05/nature-7059645_640.jpg', 'harmonie-des-couleurs', 1, 10),
(12, 'Le regard de la nature', 'Le cerf, vu de profil avec ses grands bois bien visibles, tandis qu\'il regarde en direction du visiteur avec ferveur. L\'arrière-plan flou met l\'accent sur le cerf et crée un effet de profondeur. L\'aura majestueux de cette animal englobe l\'oeuvre.', 'https://cdn.pixabay.com/photo/2018/03/30/15/11/deer-3275594_640.jpg', 'le-regard-de-la-nature', 1, 6),
(13, 'Un aide innatendue', 'Une main inconnue vient en aide à une autre. Les fins traits qui dessinent les mains sont témoins d\'une douceur entre les deux inconnus. La tendresse de l\'humanité envers chacun.', 'https://cdn.pixabay.com/photo/2022/09/08/18/27/holiday-7441659_640.jpg', 'un-aide-innatendue', 1, 9),
(14, 'Noirceur lunaire', 'La fleur en floraison aux pétales noires, accueille en son cœur une lune rayonnant de mille feux. Cette lumière englobe l\'oeuvre et nous permet de distinguer les détails de cette oeuvre.', 'https://cdn.pixabay.com/photo/2020/12/14/15/50/flower-5831274_640.jpg', 'noirceur-lunaire', 1, 6),
(15, 'Chute libre', 'L\'oeuvre présente des gros coups de pinceau francs et distincts. Les bavures inspirent un sentiment de flou. Un homme tombant en chute libre, des couleurs vives sont utilisés pour le mettre en avant.', 'https://cdn.pixabay.com/photo/2020/01/28/08/37/watercolour-4799196_640.jpg', 'chute-libre', 1, 8),
(16, 'Une symphonie de feuilles', 'Les feuilles,disposées de manière à créer une texture et une profondeur dans l\'image permettent une mise en abîme.', 'https://cdn.pixabay.com/photo/2023/01/07/08/41/leaves-7702829_640.jpg', 'une-symphonie-de-feuilles', 1, 6),
(17, 'Le refuge de l\'esprit', 'Le bâtiment est entouré d\'une végétation dense et verdoyante, avec des arbres et des buissons qui encadrent la vue. Les couleurs principales de l\'image sont des tons de vert et de beige, qui créent une ambiance calme et paisible. Une sensation de sérénité et de spiritualité se dégage de cette oeuvre.', 'https://cdn.pixabay.com/photo/2021/09/03/00/51/temple-6594770_640.jpg', 'le-refuge-de-l-esprit', 1, 8),
(18, 'La toile en mouvement', 'La composition semble évoquer une sensation de mouvement, de flux et de rythme, comme si les formes étaient en constante évolution. Cette image peut être interprétée de différentes manières, selon les perceptions et les émotions de chacun.', 'https://cdn.pixabay.com/photo/2021/10/12/17/41/abstract-6704211_640.jpg', 'la-toile-en-mouvement', 1, 6),
(19, 'La vie de la rue', 'Une rue dans une ville, vivante, à l\'arrière d\'une boutique menant vers les collines. Cette oeuvre peut évoquer une sensation de mouvement et d\'effervescence, en reflétant la sérénité et l\'énergie de la vie urbaine.', 'https://cdn.pixabay.com/photo/2018/10/26/02/40/street-3773790_640.jpg', 'la-vie-de-la-rue', 1, 5),
(20, 'L\'essence de la vie', 'Une déesse portant la lune, signe de puissance en pleine nuit. Cette oeuvre peut évoquer une ambiance de puissance, de grâce et de sérénité, en reflétant les qualités symboliques d\'une déesse.', 'https://cdn.pixabay.com/photo/2020/06/21/17/04/goddess-5325880_640.jpg', 'l-essence-de-la-vie', 1, 7),
(21, 'Groove en vinyle', 'L\'oeuvre représente un disque vinyle sur une platine. En arrière-plan, on peut voir une pièce décorée avec des affiches et des photos encadrées au mur. Cette image peut évoquer une ambiance de nostalgie et de passion pour la musique, ainsi qu\'une appréciation pour l\'art de la musique sur support analogique.', 'https://cdn.pixabay.com/photo/2021/09/13/23/10/vinyl-6622596_640.jpg', 'groove-en-vinyle', 1, 4),
(22, 'La danse des nuances', 'Peinture abstraite avec des formes géométriques, des lignes et des couleurs vives et contrastées. Les formes sont disposées de manière asymétrique, créant une composition dynamique. Les lignes droites et courbes créent un mouvement dans l\'image, tandis que les couleurs intenses attirent le regard.', 'https://cdn.pixabay.com/photo/2016/08/24/12/02/abstract-1616833_640.jpg', 'la-danse-des-nuances', 1, 1),
(23, 'Le bal des citrouilles', 'La citrouille géante, cachée par le manoir et éclairée par le clair de lune, annonce une ambiance qui donne la chair de poule. Globalement, l\'image représente bien l\'esprit d\'Halloween et peut inspirer une ambiance festive et effrayante pour les fêtes d\'Halloween.', 'https://cdn.pixabay.com/photo/2021/01/01/21/31/halloween-5880068_640.jpg', 'le-bal-des-citrouilles', 1, 2),
(24, 'Cosmos coloré', 'L\'oeuvre possède une texture abstraite et colorée. Les couleurs sont vives et lumineuses, allant du jaune au violet en passant par le rose et l\'orange. Dans l\'ensemble, cette image peut être utilisée comme un moyen énergique et dynamique pour donner du peps..', 'https://cdn.pixabay.com/photo/2017/09/05/23/03/background-2719584_640.jpg', 'cosmos-colore', 1, 7),
(25, 'La liberté à deux roues', 'Cette œuvre est une peinture qui montre un vélo placé sur un fond beige clair, qui donne l\'impression d\'être une surface texturée avec des motifs. Les eclaboussures qui colorent le vélo donne un effet de contraste. L\'œuvre est simple et épurée, mais captivante dans sa composition et son utilisation de couleurs vives.', 'https://cdn.pixabay.com/photo/2017/06/18/16/28/bicycle-2416321_640.jpg', 'la-liberte-a-deux-roues', 1, 8),
(26, 'Nature morte aux fruits et à la carafe', 'Cette oeuvre représente une nature morte composée de plusieurs objets posés sur une table en bois. On peut y voir une carafe d\'eau et une variété de fruit. La lumière semble provenir d\'une fenêtre à gauche de l\'image, créant des ombres nettes sur la table. Les couleurs sont chaudes et harmonieuses, avec des tons de brun, de beige et de rouge.', 'https://cdn.pixabay.com/photo/2014/12/09/21/01/still-life-562357_640.jpg', 'nature-morte-aux-fruits-et-a-la-carafe', 1, 3),
(27, 'Le silence des bancs', 'Cette peinture représente une chemin bordé de bancs publics en bois, sous un ciel ensoleillé. L\'ensemble dégage une atmosphère paisible et invite à la détente et au repos.', 'https://cdn.pixabay.com/photo/2020/01/04/05/12/benches-4739790_1280.jpg', 'le-silence-des-bancs', 1, 5),
(28, 'Brutalité du chaos', 'Cette image est une illustration abstraite avec des formes dans différentes teintes de gris et de noir. Les formes ont des bords irréguliers et se chevauchent les unes les autres pour créer un effet de profondeur. L\'ensemble de l\'image a un aspect négligé mais à la fois travaillé.', 'https://cdn.pixabay.com/photo/2017/09/22/14/53/background-2775834_640.jpg', 'brutalite-du-chaos', 1, 3),
(29, 'Cascade enchantée', 'Cette oeuvre présente un paysage lunaire avec une grande lune en arrière-plan et des cascades en premier plan, sous un ciel étoilé. Les couleurs principales sont des tons de gris, blancs et noirs, créant une atmosphère mystérieuse et sombre.', 'https://cdn.pixabay.com/photo/2022/08/04/09/29/moonscape-7364262_640.jpg', 'cascade-enchantee', 1, 2),
(30, 'Tribu, chef et couleurs', 'Portrait d\'un chef d’une tribu ancienne en Amérique centrale. Les couleurs utilisés sont un mélange de rouge, jaune et marron ce qui amène une ambiance chaleureuse.', 'https://cdn.pixabay.com/photo/2015/11/04/21/33/painting-1023398_640.jpg', 'tribu-chef-et-couleurs', 1, 10),
(31, 'Nuancier sombre', 'Nuancier de bleu, une ambiance qui s\'assombrit au fur et à mesure que l\'on regarde l\'oeuvre.', 'https://cdn.pixabay.com/photo/2022/09/21/17/02/blue-background-7470781_640.jpg', 'nuancier-sombre', 1, 6),
(32, 'Promenade automnale', 'Peinture représentant une allée bordée d\'arbres aux feuilles orangées, signe que l\'automne est arrivé. Les couleurs orangés apportent un sentiment de réconfort.', 'https://cdn.pixabay.com/photo/2019/12/31/14/42/autumn-walk-4732034_640.jpg', 'promenade-automnale', 1, 10),
(33, 'La beauté intemporelle', 'Cette image montre le portrait d\'une femme avec un chapeau. Elle semble contempler son ombre. Une introspection indirecte.', 'https://cdn.pixabay.com/photo/2020/12/27/14/37/woman-5864279_640.jpg', 'la-beaute-intemporelle', 1, 5),
(34, 'La grâce de la femme', 'Cette image est le portrait d\'une femme. Elle semble avoir la vingtaine. Elle a le visage caché par un bouquet de fleurs. L\'éclairage est doux et naturel.', 'https://cdn.pixabay.com/photo/2021/05/04/20/57/woman-6229693_640.jpg', 'la-grace-de-la-femme', 1, 4),
(35, 'Eclats d\'aquarelle', 'Il s\'agit d\'une aquarelle colorée avec un dégradé de tons bleus, verts, roses et orange, représentant un paysage abstrait avec des collines et des arbres. Les coups de pinceau sont lâches et fluides, créant une impression de mouvement et de spontanéité.', 'https://cdn.pixabay.com/photo/2017/07/05/08/13/watercolor-2473755_640.jpg', 'eclats-d-aquarelle', 1, 7),
(36, 'L\'arrivée du printemps', 'Il s\'agit d\'une image colorée avec plusieurs arbres sur fond de ciel bleu vif, situé dans un champ herbeux avec une clôture en arrière-plan. L\'ambiance générale de l\'image est joyeuse et pleine d\'espoir, évoquant le printemps et les nouveaux départs.', 'https://cdn.pixabay.com/photo/2020/01/09/11/10/is-it-spring-time-4752484_640.jpg', 'l-arrivee-du-printemps', 1, 8),
(37, 'Les couleurs à portée de main', 'Cette image montre un assortiment de crayons colorés, rangés les uns à côté des autres. Les couleurs sont vives et variées, allant du rouge vif au bleu ciel, en passant par le vert foncé et le jaune vif. La pointe des crayons est nette et prête à être utilisée pour dessiner ou colorier. L\'image évoque la créativité, l\'imagination et la spontanéité.', 'https://cdn.pixabay.com/photo/2021/03/16/11/31/crayons-6099514_640.jpg', 'les-couleurs-a-portee-de-main', 1, 3),
(38, 'Esquisse d\'une montagne', 'Une esquisse de montagne, un ciel bleu et une inspiration asiatique. Une ambiance apaisante et relaxante se dégage de ce dessin.', 'https://cdn.pixabay.com/photo/2021/10/31/10/23/nature-6756974_640.png', 'esquisse-d-une-montagne', 1, 4),
(39, 'L\'arc-en-ciel abstrait', 'Les couleurs se fondent les unes dans les autres dans un gradient lisse, chaque couleur passant à la suivante de manière transparente. L\'image a une qualité rêveuse et éthérée, avec des lignes douces et vaporeuses qui créent un sentiment de mouvement et de flux. C\'est une image visuellement frappante et envoûtante.', 'https://cdn.pixabay.com/photo/2022/06/09/06/32/abstract-rainbow-7251810_640.jpg', 'l-arc-en-ciel-abstrait', 1, 8),
(40, 'La danse des couleurs', 'Le mélange des couleurs qui s’emmêlent et s\'entre-choquent, ce qui créé une explosivité des couleurs. L’ambiance est chaleureuse et intense.', 'https://cdn.pixabay.com/photo/2019/08/17/16/11/art-4412523_640.jpg', 'la-danse-des-couleurs', 1, 5),
(41, 'La personnalité révélée', 'Le portrait de cette femme reflète sa personnalité. Les couleurs sont sombres et neutres afin de laisser le visiteur se concentrer sur l\'émotion que transmet la femme.', 'https://cdn.pixabay.com/photo/2020/01/31/17/51/woman-4808609_640.jpg', 'la-personnalite-revelee', 1, 9),
(42, 'Le monde de la lumière', 'Découverte d\'un petit coin de paradis. Les couleurs dominantes sont sombres mais quelques points de lumières contre balancent cet aspect. Les coups de pinceaux sont précis et minutieux. Un sentiment d\'espoir et de joie se dégage de cette peinture.', 'https://cdn.pixabay.com/photo/2013/02/19/18/12/william-hodges-83440_640.jpg', 'le-monde-de-la-lumiere', 1, 10),
(43, 'Bouquet en éclat', 'Il s\'agit d\'une belle image d\'une peinture abstraite avec des coups de pinceau colorés et une variété de textures. Les couleurs vibrantes et les lignes audacieuses donnent à la peinture une sensation dynamique et énergique.  Dans l\'ensemble, c\'est une pièce d\'art saisissante qui pourrait être interprétée de différentes façons selon la perspective et l\'imagination du spectateur.', 'https://cdn.pixabay.com/photo/2018/02/02/16/41/art-3125816_640.jpg', 'bouquet-en-eclat', 1, 7),
(44, 'La magie du moulin', 'La peinture représente un paysage typique des Pays-Bas, avec des champs de verdure, un petit cours d\'eau, un pont et des maisons au loin. L\'utilisation de couleurs chaudes et douces donne à la peinture une ambiance calme et paisible. Dans l\'ensemble, cette peinture capture bien l\'essence du paysage hollandais.', 'https://cdn.pixabay.com/photo/2013/02/24/18/34/willem-roelofs-85802_640.jpg', 'la-magie-du-moulin', 1, 7),
(45, 'Évasion sur l\'océan', 'Il s\'agit d\'une peinture de fond colorée avec des formes géométriques et des motifs abstraits. Les couleurs vives et contrastées se mélangent pour créer une composition dynamique et énergique.  Les motifs abstraits ajoutent une texture et une complexité supplémentaires à la peinture, ce qui la rend intéressante à regarder de plus près.', 'https://cdn.pixabay.com/photo/2021/08/18/19/26/background-6556413_640.jpg', 'evasion-sur-l-ocean', 1, 9),
(46, 'Aube florale', 'Il s\'agit d\'un tableau de composition florale. Les détails fins dans la peinture, tels que les pétales et les feuilles, ajoutent de la texture et de la complexité à la composition. Cette peinture capture bien la beauté naturelle des fleurs.', 'https://cdn.pixabay.com/photo/2016/11/07/13/06/painting-1805785_640.jpg', 'aube-florale', 1, 2),
(47, 'La majesté de la nature', 'La peinture représente un pur-sang blanc apeuré par le lion tapi dans l\'ombre.L\'utilisation de la lumière et de l\'ombre crée également une impression de mouvement et de force dans la composition. La peinture est très réaliste.', 'https://cdn.pixabay.com/photo/2013/03/09/19/14/george-stubbs-91985_640.jpg', 'la-majeste-de-la-nature', 1, 10),
(48, 'La symphonie des formes', 'Il s\'agit d\'une peinture en noir et blanc d\'une femme en train de regarder vers le haut. Les contrastes de la photographie sont forts, avec des ombres profondes sur le visage de la femme, créant une atmosphère dramatique. Le cadrage serré met l\'accent sur le visage de la femme et la position de son regard vers le haut ajoute un élément de mystère et d\'intrigue à l\'image.', 'https://cdn.pixabay.com/photo/2016/12/17/16/16/woman-1913737_640.jpg', 'la-symphonie-des-formes', 1, 6),
(49, 'La gestuelle de la couleur', 'Cette peinture abstraite, avec une grande dominance de bleu avec quelques pointes de vert mélangé à du jaune. Les traits sont forts et épais. Les détails ajoutent de la texture et de la complexité à l\'oeuvre.', 'https://cdn.pixabay.com/photo/2018/02/06/22/43/painting-3135875_640.jpg', 'la-gestuelle-de-la-couleur', 1, 1),
(50, 'Tâches colorées', 'Il s\'agit d\'une image de fond abstraite, principalement composée de formes non-géométriques. Les formes se superposent et se chevauchent pour créer une composition complexe. Globalement, c\'est une image abstraite dynamique qui attire l\'attention et peut être interprétée de différentes manières en fonction des perspectives et des préférences esthétiques de chacun.', 'https://cdn.pixabay.com/photo/2017/07/28/14/10/background-2548758_640.jpg', 'taches-colorees', 1, 9),
(51, 'Réflexion au bord d\'un quai', 'Il s\'agit d\'une photographie de sculptures abstraites en métal, prise en gros plan. La surface de la sculpture est légèrement texturée, avec des nuances de couleur métallique. Le contraste avec l\'être humain est mis en avant avec la présence d\'un homme auprès des sculptures.', 'https://cdn.pixabay.com/photo/2020/07/13/15/26/sculpture-5401108_640.jpg', 'reflexion-au-bord-d-un-quai', 1, 1),
(52, 'Expression artistique', 'Il s\'agit d\'une photographie de danseurs exécutant une danse de salon ou une danse de couple. Les danseurs sont habillés de manière élégante. La photographie capture un moment dynamique de la danse, avec les danseurs en train de pivoter et de se déplacer en harmonie les uns avec les autres.', 'https://cdn.pixabay.com/photo/2020/06/20/16/32/dance-5321562_640.jpg', 'expression-artistique', 1, 1),
(53, 'Douceur éphémère', 'La peinture représente une plante de sauge vue de près. La plante de sauge est composée de feuilles vertes allongées avec une texture rugueuse et des bords légèrement dentelés. Les feuilles sont disposées en spirale autour de la tige centrale de la plante, qui est également visible dans l\'oeuvre.', 'https://cdn.pixabay.com/photo/2022/05/11/22/17/sage-7190317_640.jpg', 'douceur-ephemere', 1, 6),
(54, 'Illusion psychotrope', 'Il s\'agit d\'une peinture abstraite avec un mélange de couleurs. La photographie montre un mélange de couleurs vives et saturées, allant du bleu, du vert et du violet, au rose, à l\'orange et au jaune. Les couleurs se fondent les unes dans les autres, créant des textures et des motifs fascinants. La surface de la peinture semble être texturée, avec des coups de pinceau et des marques visibles dans les différentes zones de couleur.', 'https://cdn.pixabay.com/photo/2018/03/24/08/56/colorful-3256055_640.jpg', 'illusion-psychotrope', 1, 1),
(55, 'Oeil aguérri', 'Il s\'agit d\'un dessin d\'un œil humain vu de très près. L\'image montre en détail les différentes parties de l\'œil, notamment l\'iris, la pupille et la cornée. On peut voir les détails de la texture de l\'iris. La pupille apparaît comme un petit trou noir au centre de l\'œil, entouré par l\'iris. Les cils apportent une touche de détail supplémentaire. Cette oeuvre capture la complexité et la beauté de l\'œil humain.', 'https://cdn.pixabay.com/photo/2019/09/05/05/28/eye-4453129_640.jpg', 'oeil-aguerri', 1, 6),
(56, 'Naviguer vers l\'horizon', 'L’oeuvre montre un magnifique couché de soleil avec un pont en arrière-plan. Les couleurs chaudes sont réconfortantes et apaisent le spectateur. Le voilier au premier plan amène le voyage au centre de l\'oeuvre.', 'https://cdn.pixabay.com/photo/2019/08/03/04/43/mountain-4381041_640.png', 'naviguer-vers-l-horizon', 1, 6),
(57, 'Amour infini', 'Il s\'agit d\'une image d\'une peinture à l\'aquarelle. La peinture présente des couleurs vives et lumineuses. Les couleurs sont appliquées avec des traits libres et fluides, créant des paysages, des arbres et des fleurs. La peinture est caractérisée par des textures douces et fluides. L\'ensemble de l\'image est très coloré et joyeux, avec ce couple de personnes âgées au centre, invitant le spectateur à s\'immerger dans un monde de douceur.', 'https://cdn.pixabay.com/photo/2020/01/25/02/11/watercolour-4791614_640.jpg', 'amour-infini', 1, 1),
(58, 'Courbes sensuelles', 'Le dessin montre une femme de dos avec de fins traits. Les courbes sont finement dessinées et amène à s\'imaginer le reste des courbes de cette femme. Un fond rose attendri la scène et donne la pointe d\'élégance et de raffinement de cette oeuvre.', 'https://cdn.pixabay.com/photo/2021/02/19/11/49/elegant-6029946_640.jpg', 'courbes-sensuelles', 1, 4),
(59, 'Chaos contrôlé', 'L\'image est une peinture de plusieurs couleurs avec des nuances allant du rouge, orange, jaune, vert, bleu, violet et marron. Les couleurs sont disposés de manière à ce qu\'elles se mélangent et se superposent, créant une belle harmonie visuelle. L\'image pourrait être utilisée pour représenter le monde artistique et créatif, la peinture, la couleur et l\'expression de soi à travers l\'art.', 'https://cdn.pixabay.com/photo/2018/03/03/07/34/color-3195081_640.jpg', 'chaos-controle', 1, 7),
(60, 'Moulins fluviales', 'La peinture montrent un paysage typique hollandais avec les moulins au bord du fleuve. Le couché de soleil réchauffe l\'atmosphère humide présente auprès d\'un fleuve. On distingue la technique de la peinture à l\'huile grâce aux petits résidus de peinture. C\'est un paysage apaisant.', 'https://cdn.pixabay.com/photo/2019/09/30/19/55/architecture-4516666_640.jpg', 'moulins-fluviales', 1, 1),
(61, 'Naissance d\'une empreinte', 'Cette image représente une empreinte que l\'on distingue dans un sable grisâtre. Une jeune pousse se trouve au centre de l\'empreinte de pas. La couleur bleu de l\'empreinte évoque un pied gelé. Les couleurs neutres évoquent un sentiment de tranquillité et de repos.', 'https://cdn.pixabay.com/photo/2021/03/14/11/15/footprints-6093999_640.jpg', 'naissance-d-une-empreinte', 1, 4),
(62, 'Au-delà de l\'horizon', 'Cette image représente un bateau amarré à un quai dans un port. Le bateau est un petit bateau de pêche traditionnel en bois avec une coque blanche et des détails en bois foncé. Le port est calme et paisible, avec des bateaux amarrés le long du quai. L\'eau est calme et reflète le ciel bleu et les nuages blancs. Cette image évoque une ambiance de tranquillité et de détente, évoquant le sentiment d\'être loin de la ville et de profiter de la nature.', 'https://cdn.pixabay.com/photo/2018/11/11/00/17/boat-3807786_640.jpg', 'au-dela-de-l-horizon', 1, 7),
(63, 'Humanité déguisée', 'Ce montage photographique représente un chien habillé. A travers cette photo on humanise l\'animal en l\'habillant avec une casquette plate, un blouson en cuir et d\'une pipe. Le visage de chien parait triste. Cette photo peut être perçue comme une représentation de la proximité entre l\'homme et l\'animal.', 'https://cdn.pixabay.com/photo/2016/10/04/01/26/dog-1713341_640.jpg', 'humanite-deguisee', 1, 8),
(64, 'Sérénité forestière', 'La peinture est riche en couleurs vives et audacieuses, avec des coups de pinceau visibles et des motifs abstraits. Les formes et les couleurs semblent se fondre les unes dans les autres, créant une ambiance de mouvement et de dynamisme. La peinture peut être perçue comme une célébration de la beauté de la nature et de l\'expression artistique individuelle.', 'https://cdn.pixabay.com/photo/2016/06/01/00/40/post-impressionist-1428128_640.jpg', 'serenite-forestiere', 1, 1),
(65, 'L\'envolée de la beauté', 'Cette photographie représente une femme recouverte d\'un voile surmonté de plusieurs papillons. Les couleurs de la photo sont vives et dynamiques, ce qui ajoute une ambiance de positivité et d\'optimisme. La femme semble être une personne confiante. Cette photo peut être perçue comme une représentation de l\'assurance de soi, de la beauté naturelle et de la joie de vivre.', 'https://cdn.pixabay.com/photo/2021/08/31/11/58/woman-6588614_640.jpg', 'l-envolee-de-la-beaute', 1, 4),
(66, 'Jardin de l\'esprit', 'Cette image représente un champ de fleurs printanières colorées. On peut voir des fleurs jaunes, roses et violettes, parmi d\'autres couleurs. Les fleurs sont en pleine floraison, avec des pétales délicats et une tige verte. Cette image peut être perçue comme une représentation de la beauté et de la fraîcheur de la nature printanière, ainsi que de la renaissance et du renouveau après l\'hiver. Elle peut également évoquer un sentiment de joie et d\'optimisme pour l\'avenir.', 'https://cdn.pixabay.com/photo/2013/05/11/20/44/spring-flowers-110671_640.jpg', 'jardin-de-l-esprit', 1, 9),
(67, 'Énergie colorée', 'Cette peinture utilises des couleurs vives, audacieuses et contrastées, qui peuvent créer une ambiance de mouvement, d\'énergie et d\'expression. Elles sont utilisées pour créer une variété d\'effets et d\'émotions, allant du calme et de la sérénité aux sensations vibrantes et électriques.', 'https://cdn.pixabay.com/photo/2021/02/02/15/12/pictures-5974333_640.jpg', 'energie-coloree', 1, 9),
(68, 'Deux lunes', 'Cette peinture abstraite se reflète de part et d\'autre de l\'oeuvre. Le résultat d\'une réflexion parfaite. Les couleurs neutres sont un mélange de blanc, de beige et de marron. Ces couleurs créent une ambiance de calme, de sérénité et de simplicité, en reflétant une esthétique minimaliste et épurée. C\'est une représentation artistique subtile et élégante.', 'https://cdn.pixabay.com/photo/2021/05/30/19/52/abstract-rainbow-6296890_1280.jpg', 'deux-lunes', 1, 4),
(69, 'Lit crème', 'Il s\'agit d\'une texture abstraite de couleur crème avec des formes organiques et ondulées. Les contours sont flous et la texture semble presque liquide ou ondulante. La fluidité de cette oeuvre entraîne un sentiment de légèreté.', 'https://cdn.pixabay.com/photo/2022/10/11/21/58/texture-7515225_640.jpg', 'lit-creme', 1, 9),
(70, 'Aurores boréales cotières', 'Cette image est une photographie d\'un phare situé sur une falaise rocheuse, au bord de la mer. Il est entouré de verdure et de rochers. Le ciel est dégagé avec des couleurs pastel, créant une atmosphère paisible mais dramatique. Les aurores boréales et la lune y ajoutent une ambiance mystérieuse.', 'https://cdn.pixabay.com/photo/2023/04/16/19/46/lighthouse-7931051_640.jpg', 'aurores-boreales-cotieres', 1, 7),
(71, 'Prières et silence', 'Cette image est une photographie d\'une statue de Bouddha assis en méditation, entouré d\'une atmosphère paisible et sereine. La statue semble être en métal lourd et est de couleur dorée. Bouddha est représenté avec les yeux fermés, les jambes croisées et les mains posées sur ses genoux.', 'https://cdn.pixabay.com/photo/2020/04/23/14/00/buddha-5082641_640.jpg', 'prieres-et-silence', 1, 5),
(72, 'Les couleurs de l\'eau', 'Cette image est une texture abstraite de couleur bleue et verte en relief qui créent un effet de profondeur et de mouvement. Les formes sont disposées de manière aléatoire et ont des bords irréguliers, donnant une impression de spontanéité et de fluidité. La texture semble rappeler la surface d\'un océan agité ou d\'une rivière en mouvement. L\'ensemble crée une atmosphère dynamique et moderne.', 'https://cdn.pixabay.com/photo/2017/08/22/10/35/background-2668435_640.jpg', 'les-couleurs-de-l-eau', 1, 7),
(73, 'Réflexion nuageuse', 'Un homme se tient assis dans un champs, contemplant un nuage flottant dans un ciel bleu. Il est en suspension dans l\'air, donnant une impression de légèreté et de mouvement. L\'ensemble crée une ambiance apaisante et contemplative, invitant le spectateur à se plonger dans une réflexion introspective.', 'https://cdn.pixabay.com/photo/2020/12/14/15/44/man-5831234_640.jpg', 'reflexion-nuageuse', 1, 8),
(74, 'Explosion de lumières colorées', 'Cette peinture est une texture abstraite avec un dégradé de couleurs allant du jaune au rouge, créant une ambiance vibrante et colorée. La texture est irrégulière, les bords sont flous et les contours sont flous, donnant une impression de mouvement et de fluidité. Les couleurs vives et la texture dynamique créent une ambiance énergique et moderne.', 'https://cdn.pixabay.com/photo/2017/09/05/22/58/background-2719560_640.jpg', 'explosion-de-lumieres-colorees', 1, 10),
(75, 'La grâce du cheval', 'Cette peinture à l\'huile, représente un cheval majestueux avec sa robe marron. Les prairies en arrière-plan et le ciel couvert sont détaillés. La composition est très détaillée, avec une attention portée aux textures et aux couleurs naturelles, créant un effet de réalisme.', 'https://cdn.pixabay.com/photo/2013/02/19/17/55/james-ward-83418_640.jpg', 'la-grace-du-cheval', 1, 2),
(76, 'Le royaume des arbres', 'C\'est une peinture d\'une forêt dense avec des arbres imposants, des feuilles et des branches qui créent un couvert forestier épais. Les couleurs sont principalement vertes, avec des nuances plus sombres et plus claires. Les rayons du soleil perçant à travers les feuilles créent des taches lumineuses sur le sol, ajoutant de la profondeur et de la texture à l\'image. L\'ensemble de l\'image reflète la beauté et la puissance de la nature, avec un sentiment d\'immersion dans un environnement naturel préservé.', 'https://cdn.pixabay.com/photo/2016/09/27/19/07/forest-1699079_640.jpg', 'le-royaume-des-arbres', 1, 2),
(77, 'Géométrie boisée', 'Cette photographie met en avant la matière boisée. Elle est centrée sur la texture et la forme suggérant une combinaison infinie de possibilité. L\'ensemble de l\'image est sobre et minimaliste, créant une ambiance professionnelle et moderne. Une énergie abstraite et structurée se dégage de cette photographie.', 'https://cdn.pixabay.com/photo/2018/05/21/23/10/steel-3419985_640.jpg', 'geometrie-boisee', 1, 10),
(78, 'Désert montagneux', 'Cette image est une illustration numérique de dunes. Les dunes sont composées de courbes douces et de formes arrondies, créant un effet de mouvement et d\'harmonie. Les tons de chauds sont variés, allant d\'un marron foncé à un jaune clair, créant une impression de profondeur et de texture. L\'ensemble de l\'image évoque une ambiance paisible et chaude.', 'https://cdn.pixabay.com/photo/2022/08/22/05/01/hill-7402780_640.png', 'desert-montagneux', 1, 8),
(79, 'Sagesse', 'Cette photographie d\'un vieil homme situé dans une région désertique, montre la réflexion dans son plus simple appareil. La sagesse dans son regard, nous emporte vers une réflexion intérieure et nous pousse dans nos plus profonds retranchement. L\'atmosphère qui se dégage est apaisante.', 'https://cdn.pixabay.com/photo/2021/11/09/02/29/theater-6780537_640.jpg', 'sagesse', 1, 9),
(80, 'Bourgeon du matin', 'Cette image est une peinture de fleurs colorées. Les fleurs sont placées au centre de l\'image et occupe la majeure partie de l\'espace. Elles sont composées de pétales rose vif et d\'un cœur jaune vif, créant un contraste éclatant. Les détails des pétales et du centre de la fleur sont clairement visibles, donnant une impression de réalisme.', 'https://cdn.pixabay.com/photo/2018/04/25/17/07/flower-3350053_640.jpg', 'bourgeon-du-matin', 1, 8),
(81, 'L\'Italie d\'avant', 'L\'œuvre est constituée de couleurs vives et contrastées, allant du rouge vif au bleu clair et au jaune. Les formes sont abstraites et organiques, créant un effet de mouvement et de fluidité. Les détails de la texture de la peinture sont clairement visibles, donnant une impression de profondeur et de complexité.', 'https://cdn.pixabay.com/photo/2014/05/11/17/28/art-342113_640.jpg', 'l-italie-d-avant', 1, 7),
(82, 'Face à face', 'Cette image est une photographie d\'un portrait en noir et blanc de deux personnes. Les détails du visage sont clairement visibles, y compris les traits du visage, les yeux et les cheveux. L\'expression sur les deux visages est neutre, donnant une impression de calme et de sérénité. La chevelure est remplacée par de simples arbres qui communiquent par le biais des oiseaux. L\'image évoque une ambiance de simplicité et de réalisme, invitant le spectateur à apprécier la beauté de l\'humanité dans sa forme la plus basique.', 'https://cdn.pixabay.com/photo/2018/01/28/13/24/portrait-3113651_640.jpg', 'face-a-face', 1, 2),
(83, 'Mystères nocturnes', 'Cette image numérique illustre un chemin dans les champs durant une pleine lune éclairant la nuit sombre. Cela donne une impression de paix et de solitude. L\'image évoque une ambiance de fascination et de mystère. Elle peut également susciter une réflexion sur notre place dans l\'univers et notre relation avec le cosmos.', 'https://cdn.pixabay.com/photo/2014/07/23/00/56/moon-399834_640.jpg', 'mysteres-nocturnes', 1, 9),
(84, 'Passage boisé', 'Les arbres sont photographiés en gros plan et occupent la majeure partie de l\'image. Ils sont nus et ne possèdent aucune feuille, ce qui leur donne un aspect agressif et effrayant à la fois. . La lumière du soleil filtrée à travers les branches, créant des ombres et des reflets sur les troncs d\'arbres et sur le sol. Elle peut également susciter une réflexion sur le cycle de la vie et la beauté éphémère de la nature.', 'https://cdn.pixabay.com/photo/2018/09/18/21/50/trees-3687364_640.jpg', 'passage-boise', 1, 6),
(85, 'La tête dans les fleurs', 'Cette peinture montre une femme entourée de fleurs. Elle est composée de différentes couleurs qui se fondent les unes dans les autres pour créer un effet de fluidité et de mouvement. Les couleurs utilisées dans la peinture sont principalement des tons pastel, créant une ambiance douce et apaisante. L\'image évoque une ambiance de liberté et d\'expression artistique, invitant le spectateur à se laisser emporter par l\'effet de la peinture.', 'https://cdn.pixabay.com/photo/2015/11/03/10/23/watercolor-1020509_640.jpg', 'la-tete-dans-les-fleurs', 1, 4),
(86, 'Ange tendre', 'Cette image représente une statue d\'ange. L\'ange est représenté assis, bras et mains croisés. La statue est faite de marbre, ce qui donne une impression de solidité et de stabilité. La photographie peut évoquer une ambiance de sérénité et de spiritualité, en invitant le spectateur à contempler l\'ange. Elle peut également susciter une réflexion sur la croyance en l\'existence des anges et leur rôle dans notre vie spirituelle.', 'https://cdn.pixabay.com/photo/2014/08/25/21/49/angel-427478_640.jpg', 'ange-tendre', 1, 3),
(87, 'Les mille pétales', 'Cette peinture représente un bouquet de tournesols. Les traits ne sont pas définis et restent très abstraits, cependant la distinction des formes et des couleurs se fait sans problème. Les tons chauds sont utilisés à bon escient. Les papillons quant à eux sont peints avec précision et délicatesse.', 'https://cdn.pixabay.com/photo/2015/05/13/20/05/backdrop-765917_640.jpg', 'les-mille-petales', 1, 6),
(88, 'Photo d\'antan', 'Cette photographie en noir et blanc, a capturé un moment de la vie quotidienne de cette femme. L\'aspect nostalgique de la photographie peut susciter une réflexion sur l\'évolution du temps et sur les différences entre notre époque et celle qui est représentée dans cette photographie.', 'https://cdn.pixabay.com/photo/2017/12/29/20/20/people-3048577_640.jpg', 'photo-d-antan', 1, 7),
(89, 'Moment d\'égarement', 'Cette peinture à l\'eau montre deux bouteilles de vin accompagnées de deux verres, posés sur une table en bois. La mise en scène de l\'image ainsi que la présence d\'une bouteille de vin suggèrent une ambiance de convivialité et de partage. La peinture peut être interprétée comme une invitation à se détendre et à profiter de l\'instant présent en dégustant un bon vin en compagnie de ses proches. Elle reflète l\'art de la viticulture et l\'importance de la culture du vin dans certaines régions du monde.', 'https://cdn.pixabay.com/photo/2021/01/24/18/31/wine-5946065_640.jpg', 'moment-d-egarement', 1, 4),
(90, 'Immensité observée', 'Cette oeuvre est une photographie d\'une église en pierre située au milieu d\'une vieille ville. L\'architecture imposante de l\'église est en harmonie avec les habitations autour. La photographie peut être interprétée comme une représentation de la symbiose entre la foi et l\'homme, où l\'église se fond dans l\'environnement plutôt que de chercher à le dominer. Elle peut également refléter la paix et la sérénité associées à la religion et à la spiritualité.', 'https://cdn.pixabay.com/photo/2019/07/25/18/58/church-4363258_640.jpg', 'immensite-observee', 1, 5),
(91, 'Nuit dégagée', 'Cette oeuvre est une photographie d\'un caravansérail situé dans un désert aride. Un caravansérail était un lieu de repos pour les caravanes de marchands et les voyageurs qui traversaient des routes commerciales dangereuses, offrant une sécurité pour les personnes et leurs biens. Dans cette photographie, le bâtiment en pierre massive et austère contraste avec le paysage désertique.', 'https://cdn.pixabay.com/photo/2019/09/30/19/20/caravansary-4516601_640.jpg', 'nuit-degagee', 1, 2),
(92, 'Naissance de la création', 'Cette peinture représente un papillon aux couleurs rosés. Elle met en évidence les détails complexes et fascinants de la structure de l\'insecte, y compris ses ailes translucides, son corps velu et ses antennes délicates. Elle peut être interprétée comme une célébration de la beauté et de la diversité de la nature, ainsi que de l\'importance de prendre le temps de regarder de plus près les choses qui nous entourent pour en apprécier toute la richesse.', 'https://cdn.pixabay.com/photo/2019/09/24/06/10/insect-4500348_640.jpg', 'naissance-de-la-creation', 1, 3),
(93, 'Lumière intérieure', 'A travers cette peinture, on peut distinguer la forme d\'un chat. En son centre, une lumière jaune étincelante illumine l’intérieur du chat. Ceci représente la flamme de vie d\'un chat. La peinture capture la nature curieuse du chat, et ne manquera pas de faire fondre le cœur des amoureux des chats.', 'https://cdn.pixabay.com/photo/2021/03/31/03/12/cat-6138366_640.jpg', 'lumiere-interieure', 1, 4),
(94, 'Dans sa bulle', 'Il s\'agit d\'un dessin d\'une fille avec un grand bocal en verre transparent posé sur sa tête, couvrant complètement sa tête. Le bocal est rempli d\'eau et des bulles d\'air sont visibles à l\'intérieur. La fille regarde vers l\'avant avec un regard calme et contemplatif. La photographie semble être une représentation de la façon dont les gens peuvent se sentir pris au piège dans leur propre monde, isolés de leur environnement.', 'https://cdn.pixabay.com/photo/2022/06/05/13/44/girl-7244099_640.jpg', 'dans-sa-bulle', 1, 5),
(95, 'Traits d\'humanité', 'Il s\'agit d\'un dessin numérique d\'une femme qui est de côté et regarde droit devant elle. Elle a de longs cheveux bruns ondulés. L\'arrière-plan est flou, ce qui fait de la femme le point central de l\'image. Elle semble poser pour un portrait ou une prise de tête.', 'https://cdn.pixabay.com/photo/2021/10/16/13/32/woman-6715054_640.jpg', 'traits-d-humanite', 1, 8),
(96, 'Fleurs de la passion', 'C\'est un magnifique dessin en gros plan de fleurs d\'hibiscus roses. Les fleurs sont en pleine floraison et leurs délicats pétales roses forment un cercle parfait autour du pistil et de l\'étamine. Les pétales sont légèrement ébouriffés sur les bords, ce qui donne aux fleurs un aspect doux et féminin. La photo capture la beauté complexe de la nature et représente merveilleusement l\'élégance et la grâce de la fleur d\'hibiscus.', 'https://cdn.pixabay.com/photo/2022/05/11/22/17/pink-hibiscus-7190314_640.jpg', 'fleurs-de-la-passion', 1, 9),
(97, 'Rivage enragé', 'Il s\'agit d\'une peinture d\'une belle vue sur l\'océan. L\'image montre un ciel bleu clair avec quelques nuages épars, et l\'océan s\'étend jusqu\'à l\'horizon. L\'eau semble agitée, avec de légères ondulations, et quelques bateaux et navires sont visibles au loin. Le rivage présente des rochers et des coquillages.', 'https://cdn.pixabay.com/photo/2019/12/30/10/36/sea-4729356_640.jpg', 'rivage-enrage', 1, 9),
(98, 'Déception et attente', 'Cette peinture aquarelle montre une jeune femme de dos assise sur une balançoire tenant une bouquet de fleurs. La colorisation de l\'image n\'est ni nette ni précise ce qui donne un aspect flou à la peinture. Une ambiance mystérieuse règne afin de savoir qui peut être cette jeune femme.', 'https://cdn.pixabay.com/photo/2017/04/19/16/45/girl-2242858_640.jpg', 'deception-et-attente', 1, 8),
(99, 'Petit coin de tranquillité', 'Cette photographie représente une petite maison confortable entourée d\'arbres et de verdure. La maison a un toit de chaume et un extérieur en bois, avec une petite cheminée sur le côté. Une clôture en bois entoure la propriété, avec un petit portail menant à l\'entrée. La maison est située dans un cadre paisible et tranquille. L\'image transmet un sentiment de calme, de sérénité et de féerie.', 'https://cdn.pixabay.com/photo/2022/07/31/15/33/cottage-7356147_640.jpg', 'petit-coin-de-tranquillite', 1, 3),
(100, 'Expression corporelle', 'Une œuvre représentant une danseuse espagnole vêtue d\'une robe longue et élégante, accompagnée d\'une fleur dans ses cheveux, effectuant une pose gracieuse et dynamique. La robe est rouge et noir et \r\n est ornée de volants. La femme dégage une grande puissance à travers son regard.', 'https://cdn.pixabay.com/photo/2019/02/15/14/33/woman-3998571_640.jpg', 'expression-corporelle', 1, 2),
(101, 'Vibrations célestes', 'Il s\'agit d\'une peinture abstraite colorée qui présente un mélange de différentes teintes et nuances. Le tableau est dynamique, les couleurs vives se mélangeant et interagissant les unes avec les autres pour créer une impression de mouvement et d\'énergie. L\'utilisation de coups de pinceau audacieux et larges ajoute à l\'impression générale de mouvement, et l\'absence de formes discernables permet aux couleurs de prendre le devant de la scène.', 'https://cdn.pixabay.com/photo/2019/04/26/17/47/color-4158152_640.jpg', 'vibrations-celestes', 1, 9),
(102, 'Repos imaginaire', 'Il s\'agit d\'une photo d\'une sculpture représentant un dragon replié sur lui-même entrain de dormir. La sculpture est faite de pierre et présente donc une surface rugueuse. La simplicité de la sculpture permet au spectateur de se concentrer sur les émotions et les idées véhiculées par la pose et l\'expression de la sculpture.', 'https://cdn.pixabay.com/photo/2016/04/23/01/33/sculpture-1346988_640.jpg', 'repos-imaginaire', 1, 5),
(103, 'Fusion de teintes', 'L\'œuvre d\'art est vibrante et colorée, avec des teintes audacieuses et des contrastes marqués. Le motif est composé de lignes courbes dans différentes nuances de bleu, de rose, d\'orange et de jaune, disposées de manière à créer une impression de mouvement et d\'énergie. L\'absence de formes ou d\'objets reconnaissables rend l\'œuvre ouverte à l\'interprétation, permettant au spectateur de projeter ses propres pensées et émotions sur l\'image.', 'https://cdn.pixabay.com/photo/2017/07/05/19/21/art-2475718_640.jpg', 'fusion-de-teintes', 1, 6),
(104, 'Immobile dans l\'éternité', 'Il s\'agit d\'une photo d\'une statue représentant une femme avec la tête inclinée sur le côté. La statue est réalisée dans un matériau tel que la pierre. Les traits de la femme sont idéalisés, avec une expression sereine qui transmet un sentiment de beauté et de tranquillité. Sa qualité intemporelle et son attrait universel en font un symbole puissant de la créativité humaine et de la quête éternelle de sens et de beauté.', 'https://cdn.pixabay.com/photo/2016/03/23/19/37/statue-1275469_640.jpg', 'immobile-dans-l-eternite', 1, 2),
(105, 'Palais secret', 'Voici une photo d\'une ancienne structure architecturale. La structure semble assez ancienne. Le design de la structure est simple mais élégant, avec des lignes symétriques et un sens de l\'équilibre et de l\'harmonie. Elle a pu servir de lieu de culte, d\'espace de rassemblement public ou de mémorial pour un événement ou une personne importante.', 'https://cdn.pixabay.com/photo/2016/11/18/17/07/ancient-1835865_640.jpg', 'palais-secret', 1, 2),
(106, 'Ruelle colorée', 'La photographie montre une ruelle colorée.  Les bâtiments sont peints dans des couleurs vives et audacieuses, telles que le rouge, le bleu, le jaune et le vert, créant un contraste marqué avec le ciel bleu clair qui brille au-dessus. La ruelle peut évoquer une ambiance de vivacité, d\'énergie et d\'animation, donnant une impression d\'un endroit accueillant et animé.', 'https://cdn.pixabay.com/photo/2016/02/27/21/01/ancient-1226277_640.jpg', 'ruelle-coloree', 1, 2),
(107, 'Clair de lune', 'C\'est un dessin graphique abstrait, montrant une chaîne de montagne éclairée par une magnifique pleine lune.Les couleurs de l\'image sont principalement des nuances de bleu. Un sentiment d\'apaisement et de sérénité se dégage de cette oeuvre.', 'https://cdn.pixabay.com/photo/2022/11/01/08/43/mountains-7561636_640.png', 'clair-de-lune', 1, 10),
(108, 'Explosion de couleurs', 'Il s\'agit d\'une image vibrante et colorée d\'une peinture présentant une variété de formes et de motifs abstraits. La peinture est principalement composée de couleurs chaudes telles que le rouge, le jaune et l\'orange, avec des éclaboussures de tons froids bleus et verts. L\'effet général est celui de l\'énergie et du mouvement, avec un sentiment de profondeur et de complexité.', 'https://cdn.pixabay.com/photo/2022/01/11/02/53/painting-6929616_640.jpg', 'explosion-de-couleurs', 1, 5),
(109, 'Réflexion interne', 'C\'est une peinture tournée sous forme de photographie. La photo est prise en gros plan, dans le style portrait, avec un arrière-plan flou qui attire l\'attention du spectateur sur le visage du sujet. La lumière est douce et naturelle, ce qui contribue à une atmosphère chaleureuse et accueillante.', 'https://cdn.pixabay.com/photo/2021/02/20/07/25/woman-6032512_640.jpg', 'reflexion-interne', 1, 4),
(110, 'Décomposition florale', 'Voici une belle image d\'une collection de plantes. La photo montre différents types de plantes, chacune ayant une forme et une texture uniques. Elles sont principalement de couleur verte, avec quelques touches de violet et de rose. L\'image a une esthétique propre et moderne, qui met l\'accent sur la beauté naturelle des plantes.', 'https://cdn.pixabay.com/photo/2023/02/13/07/24/succulents-7786637_640.jpg', 'decomposition-florale', 1, 2),
(111, 'Décadence colorée', 'Il s\'agit d\'une photographie rustique et naturelle d\'une surface en bois. La photo montre en gros plan le grain et la texture du bois, qui est usé par les intempéries. Le bois est peint de plusieurs couleurs tel que le rouge, le jaune ou encore le orange. C\'est une ambiance naturelle et colorée qui se dégage de cette photographie.', 'https://cdn.pixabay.com/photo/2011/06/29/15/27/wood-8196_640.jpg', 'decadence-coloree', 1, 1),
(112, 'Protection lunaire', 'Il s\'agit d\'une image puissante et émotionnelle d\'une main qui protège un croissant de lune en son creux. L\'éclairage de l\'image est sombre et morose, ce qui ajoute à l\'impression de drame et d\'intensité.  L\'effet général est celui de l\'espoir et de la nostalgie, avec une suggestion de vulnérabilité et de besoin de connexion.', 'https://cdn.pixabay.com/photo/2020/11/29/04/02/hand-5786371_640.jpg', 'protection-lunaire', 1, 2),
(113, 'Les couleurs de l\'âme', 'C\'est une photographie en mode portrait d\'une jeune femme qui se cache le visage à l\'aide de ses mains. Elle est recouverte de peinture colorée allant d\'un jaune vif au violet intense. Son regard intense de couleur noisette donne une impression de plonger dans son âme. Une vive émotion se dégage de cette photographie.', 'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg', 'les-couleurs-de-l-ame', 1, 8),
(114, 'La beauté de l\'inerte', 'Cette photographie montre une statue sans tête. Cette statue faite en pierre représente le buste d\'une femme. Les couleurs de la photographie sont assez sombres, cependant un point de lumière est apporté sur le haut de la statut. L\'arrière-plan de l\'image est flou, ce qui souligne son importance et sa grandeur.', 'https://cdn.pixabay.com/photo/2018/07/06/13/30/statue-3520416_640.jpg', 'la-beaute-de-l-inerte', 1, 8);
INSERT INTO `artwork` (`id`, `title`, `description`, `picture`, `slug`, `status`, `exhibition_id`) VALUES
(115, 'Pluie torrentielle', 'C\'est une peinture d\'une jeune femme, se trouvant sous la pluie qui semble provenir de son parapluie. Elle a une expression paisible sur le visage et ses cheveux flottent doucement dans le vent. L\'effet général de l\'image est celui de la sérénité et de la tranquillité, suggérant un moment de réflexion ou d\'introspection pour le sujet.', 'https://cdn.pixabay.com/photo/2021/06/22/14/55/girl-6356393_640.jpg', 'pluie-torrentielle', 1, 1),
(116, 'Couché d\'un soleil orangé', 'Le motif de cette peinture abstraite semble s\'inspirer de l\'art bohémien ou tribal traditionnel, avec des répétitions qui créent un sentiment d\'harmonie et d\'équilibre. Les couleurs de l\'image sont chaudes et joyeuses, avec des nuances de bleu, orange et marron.', 'https://cdn.pixabay.com/photo/2021/09/25/12/52/boho-art-6654957_640.jpg', 'couche-d-un-soleil-orange', 1, 2),
(117, 'Résonance florale', 'Cette peinture abstraite laisse apparaître un vase avec une plante mise dedans. Les couleurs de l\'image sont vives et éclatantes, avec un mélange de tons chauds et froids qui créent un sentiment d\'équilibre et d\'harmonie. Les motifs sont très détaillés, avec des formes géométriques et des lignes complexes.', 'https://cdn.pixabay.com/photo/2022/06/28/12/28/boho-art-7289600_640.jpg', 'resonance-florale', 1, 9),
(118, 'Harmonie chromatique', 'Ceci est une peinture abstraite  pleine de couleurs vives et de formes audacieuses. Les couleurs de l\'image sont riches et saturées, avec un mélange de tons chauds et froids qui créent un sentiment d\'énergie et d\'excitation. Les formes et les lignes de l\'œuvre sont très stylisées et abstraites, ce qui suggère une approche ludique et imaginative de l\'art. L\'effet global est celui de la joie et de la créativité.', 'https://cdn.pixabay.com/photo/2017/07/03/20/17/colorful-2468874_640.jpg', 'harmonie-chromatique', 1, 5),
(119, 'Industrie black&white', 'La photo montre une vue rapprochée d\'une structure, qui est très détaillée et conçue de manière complexe. Les lignes et les formes de l\'architecture sont nettes et précises. L\'éclairage de l\'image est spectaculaire, avec un jeu d\'ombre et de lumière qui met en valeur la texture et la profondeur de la surface du bâtiment.', 'https://cdn.pixabay.com/photo/2018/06/21/11/19/architecture-3488306_640.jpg', 'industrie-black-white', 1, 2),
(120, 'Mouvements voilés', 'Cette peinture montre un magnifique poisson coloré. Le poisson a de longues nageoires qui créent un effet élégant et gracieux lorsqu\'il se déplace dans l\'eau. Les couleurs du poisson sont intenses, avec des nuances de bleu et de violet.  L\'effet général est celui de la beauté et de la sérénité, avec un sentiment de calme et de paix qui est souvent associé au monde naturel.', 'https://cdn.pixabay.com/photo/2022/03/30/13/16/betta-7101167_640.jpg', 'mouvements-voiles', 1, 5),
(121, 'La liberté du large', 'Ceci est une peinture d\'un magnifique bateau à voile. Le navire semble être de conception classique, avec de grands mâts et une forme élancée qui suggère un sentiment de vitesse et d\'aventure. Les couleurs de l\'image sont sourdes et naturelles, avec un mélange de bleus et de verts qui évoquent la haute mer et le monde naturel. L\'effet général est celui de la majesté et de l\'émerveillement, avec un sentiment de puissance et de beauté de l\'océan et de la volonté de l\'esprit humain de l\'explorer et de le conquérir.', 'https://cdn.pixabay.com/photo/2015/03/05/01/46/sailing-ship-659758_640.jpg', 'la-liberte-du-large', 1, 4),
(122, 'Regard profond', 'Cette peinture aquarelle dessine le portrait d\'une jeune femme en manteau jaune. Les couleurs de la peinture sont douces et atténuées, avec un sentiment de tranquillité et de calme souvent associé à l\'aquarelle.  L\'effet général est celui de la beauté et de l\'élégance, avec un sens de la créativité et de l\'expression qui est au cœur de l\'art de l\'aquarelle.', 'https://cdn.pixabay.com/photo/2020/02/04/21/37/watercolour-4819414_640.jpg', 'regard-profond', 1, 10),
(123, 'Bouquet en éclat', 'C\'est une peinture de plusieurs fleur de pissenlit,  dont les pétales délicats et les couleurs vibrantes créent un spectacle étonnant de beauté naturelle. Les fleurs semblent être en pleine floraison, chaque pétale étant gracieusement courbé et disposé d\'une manière qui suggère un sens de l\'harmonie et de l\'équilibre.', 'https://cdn.pixabay.com/photo/2012/03/02/14/53/flowers-21337_640.jpg', 'bouquet-en-eclat', 1, 2),
(124, 'Point de lumière', 'Cette photographie avec une vue du dessus, montre plusieurs rangée de lampes chinoises. Celles-ci illuminent la rue. Ceci donne un mélange d\'éléments traditionnels et contemporains qui reflètent le patrimoine culturel et historique unique de la ville.', 'https://cdn.pixabay.com/photo/2019/03/25/20/17/kaohsiung-4081256_640.jpg', 'point-de-lumiere', 1, 5),
(125, 'Nuit voyageuse', 'Ce dessin numérique capture l\'immensité et le vide du désert, avec une étendue apparemment sans fin de sable et de roche qui s\'étend au loin. Les couleurs de l\'image sont sourdes et sombres, avec des nuances de vert foncé et de bleu foncé qui dominent la scène. L\'absence de végétation et de signes d\'habitation humaine crée un sentiment d\'isolement et de solitude.', 'https://cdn.pixabay.com/photo/2021/04/29/05/04/desert-6215516_640.jpg', 'nuit-voyageuse', 1, 8),
(126, 'Lune et soleil', 'Cette oeuvre est composé de plusieurs éléments. Mélange entre botanique et astronomie, cette oeuvre aux couleurs rosés dégage un sentiment de paix, de calme et de complexité. La nature est mise à l\'honneur à travers ces divers éléments. L\'image invite également à faire une pause et à s\'imprégner de la tranquillité et de la paix que l\'on peut trouver dans les espaces naturels.', 'https://cdn.pixabay.com/photo/2023/03/18/19/46/botany-7861255_640.jpg', 'lune-et-soleil', 1, 4),
(127, 'Convergence dynamique', 'Cette peinture abstraite est une déclinaison d\'à peu près toutes les teintes de roses. Le mélange des présentes des teintes vibrantes et audacieuses dans des tons de rose disposées dans une composition dynamique et énergique. Cette œuvre pourrait inciter les spectateurs à apprécier la beauté de l\'art abstrait et à explorer les façons dont les couleurs peuvent être utilisées pour créer des images visuellement captivantes.', 'https://cdn.pixabay.com/photo/2017/09/12/22/06/background-2743842_640.jpg', 'convergence-dynamique', 1, 2),
(128, 'Vitrail de l\'esprit', 'Il s\'agit d\'une image étonnante d\'un vitrail dans une église. La photo capture les détails complexes et les couleurs vibrantes du vitrail, avec la lumière du soleil traversant la fenêtre et jetant une lueur chaleureuse sur l\'intérieur environnant. Les couleurs et les motifs du vitrail peuvent également évoquer un sentiment d\'émerveillement et de crainte face au monde naturel, car ils ressemblent aux couleurs et aux formes d\'un kaléidoscope ou d\'un coucher de soleil éblouissant.', 'https://cdn.pixabay.com/photo/2016/11/20/21/57/church-window-1843900_640.jpg', 'vitrail-de-l-esprit', 1, 9),
(129, 'Océan coloré', 'Cette oeuvre représente un fond marin, on peut y voir différent animaux et mammifère. Les couleurs sont variés et intenses allant du jaune, au vert passant par le rouge. Un sentiment d\'aventure et d\'inconnu envahie l\'esprit. La texture et les couleurs pourraient inciter les spectateurs à rechercher la beauté dans des endroits inattendus et à apprécier les qualités uniques des profondeurs.', 'https://cdn.pixabay.com/photo/2017/07/31/19/36/wall-2560330_640.jpg', 'ocean-colore', 1, 1),
(130, 'Soleil levant', 'Cette peinture abstraite semble représenter un désert aride avec un couché de soleil hardent en arrière-plan. Les couleurs utilisées sont chaudes et intenses tels que le marron, l\'ocre et beige ce qui crée un sentiment d\'équilibre et d\'harmonie. L\'esthétique bohème est souvent associée à un sentiment de liberté et d\'expression personnelle.', 'https://cdn.pixabay.com/photo/2022/12/30/17/32/boho-art-7687374_640.jpg', 'soleil-levant', 1, 8),
(131, 'Paisibilité et croyance', 'Ce tableau d\'une église et ses alentours donne une image paisible et apaisante. La façade en pierre et le clocher avec sa croix au sommet donnent à l\'édifice un aspect classique et intemporel. La verdure devant l\'église offre un beau contraste avec la pierre et ajoute une beauté naturelle à la scène.', 'https://cdn.pixabay.com/photo/2019/03/18/18/41/church-4063765_640.jpg', 'paisibilite-et-croyance', 1, 10),
(132, 'Visage caché', 'Cette sublime peinture d\'une femme ayant une expression sereine et paisible sur son visage, dégage un sentiment de calme et de satisfaction. Son visage est coupé en deux parties : une partie colorée avec beaucoup de nuances de bleu et de violet et de l\'autre un visage pâle et blanc. Cette dualité démontre la dualité intérieure qui se cache en chacun de nous.', 'https://cdn.pixabay.com/photo/2017/04/02/16/58/woman-2196323_640.jpg', 'visage-cache', 1, 9),
(133, 'Jardin d\'Adam', 'Cette peinture montre un peu coin de paradis. On y trouve une cascade, un magnifique lac, une dense végétation et en arrière-plan de sublimes montagnes. La luminosité se situe sur une partie de la peinture. Les traits sont précis et apportent donc un immense réalisme à l\'oeuvre. Ce tableau enferme un sentiment de sérénité et de joie.', 'https://cdn.pixabay.com/photo/2016/07/17/19/10/background-1524540_640.jpg', 'jardin-d-adam', 1, 6),
(134, 'Le pouvoir du regard', 'Cette photographie portrait une jeune femme à la peau d\'or. Ses yeux bleu persan apportent une touche de couleur qui ravive la photographie. Son regard semble perdu mais également concentré sur quelque chose au loin. La lumière est douce et la photo dégage une atmosphère paisible.', 'https://cdn.pixabay.com/photo/2015/05/03/14/40/woman-751235_640.jpg', 'le-pouvoir-du-regard', 1, 8),
(135, 'L\'univers de Coca Cola', 'Cette image rend hommage à la célèbre marque de soda : Coca-Cola. La bouteille est recréée à partir de plusieurs coupures d\'étiquettes de la marque et vient former cette fameuse bouteille si connue. La couleur dominante reste le rouge même si quelques touches de vert viennent s’immiscer. L\'image a un côté vintage.', 'https://cdn.pixabay.com/photo/2015/04/23/22/58/coca-cola-736967_640.jpg', 'l-univers-de-coca-cola', 1, 8),
(136, 'Pont de la liberté', 'L\' aquarelle représentant un paysage avec des arbres, des collines et une rivière. La peinture est douce et rêveuse, avec des couleurs sourdes et un effet de flou. Les coups de pinceau sont visibles et donnent à la peinture un aspect texturé.', 'https://cdn.pixabay.com/photo/2020/01/30/09/30/watercolour-4804832_640.jpg', 'pont-de-la-liberte', 1, 10),
(137, 'Liberté', 'Cette image représente une statue d\'ange aux ailes déployées. La statue est en pierre et son corps et ses ailes sont ornés de détails complexes. L\'ange est représenté paisible et serein, avec une expression douce sur le visage. La statue est située à l\'extérieur, peut-être dans un jardin ou un cimetière, avec de la verdure visible en arrière-plan.', 'https://cdn.pixabay.com/photo/2017/06/14/06/51/angel-2401263_640.jpg', 'liberte', 1, 3),
(138, 'Couleurs de l\'esprit', 'C\'est une peinture abstraite colorée avec des formes et des lignes de différentes couleurs. Elle a été créée à l\'aide d\'un mélange de coups de pinceau et de formes géométriques. Le style général est abstrait et contemporain, et l\'utilisation de couleurs vives crée un sentiment d\'énergie et de mouvement dans la composition.', 'https://cdn.pixabay.com/photo/2017/06/03/20/12/art-2369664_640.jpg', 'couleurs-de-l-esprit', 1, 6),
(139, 'Vitesse et liberté', 'Il s\'agit d\'une photo d\'un vélo posé contre un mur et sur celui-ci se trouve deux enfants accrochés l\'un à l\'autre. La superposition des deux donnes l\'illusion que le vélo fait partie de la peinture sur le mur. Une énergie enfantine et gaie se dégage de cette photographie.', 'https://cdn.pixabay.com/photo/2017/12/28/16/18/bicycle-3045580_640.jpg', 'vitesse-et-liberte', 1, 1),
(140, 'En équilibre', 'Cette peinture abstraite renvoie vers un monde plein de fantaisie. Les couleurs sont très prononcées et mises en avant. Chaque élément de cette peinture est plus insolite que le précédent. Les lignes de l\'image semblent créer une impression de mouvement et les formes sont disposées de manière quelque peu symétrique.', 'https://cdn.pixabay.com/photo/2017/04/04/08/55/art-2200740_640.jpg', 'en-equilibre', 1, 2),
(141, 'Élégance et pureté', 'Ce tableau portrait une femme ayant vécu au XVIème siècle. Son vissage semble apaisé mais également figé. La peinture a une qualité onirique, avec des couleurs douces et des coups de pinceau délicats. Un sentiment de calme et de sérénité semble régner dans les jardins dans lesquels elle se situe. Un point de lumière est tout de même créé au niveau du visage de cette femme.', 'https://cdn.pixabay.com/photo/2013/03/02/22/21/edward-hughes-89416_640.jpg', 'elegance-et-purete', 1, 4),
(142, 'Reflet de l\'âme', 'Ce dessin numérique met à l\'honneur les arbres et la nature. Le reflet de cette forêt avec les montagnes donne de la profondeur et de la grandeur à l\'œuvre. Il y a beaucoup de nuances de vert, ce qui donne encore plus d\'intensité au dessin. C\'est une scène paisible et sereine, parfaite pour tous ceux qui aiment la nature.', 'https://cdn.pixabay.com/photo/2021/04/26/01/39/trees-6207925_640.jpg', 'reflet-de-l-ame', 1, 4),
(143, 'Échos de lumière', 'Cette photographie montre une femme sous l\'eau en robe blanche. Elle est en position de remontée vers la surface et dégage des bulles d\'air. Une source lumineuse venant de dessous l\'éclair. L\'ambiance de la photographie est assez sombre et mystérieuse. La photo donne l\'impression d\'un monde sous-marin paisible et apaisant.', 'https://cdn.pixabay.com/photo/2016/11/12/20/00/under-water-1819586_640.jpg', 'echos-de-lumiere', 1, 9),
(144, 'Formes fluides', 'Cette image numérique est vibrante et abstraite. Les couleurs sont vives et sont une déclinaison du bleu et du rose. La composition de l\'œuvre est dynamique, créant une impression de mouvement et d\'énergie. L\'effet global est saisissant et attire l\'attention. Elle donne l\'impression de tomber dans le vide lorsqu\'on la regarde.', 'https://cdn.pixabay.com/photo/2022/07/17/11/59/amber-7327252_640.jpg', 'formes-fluides', 1, 5),
(145, 'Fleurs de la passion', 'Il s\'agit d\'un dessin numérique d\'un bouquet de fleurs. Les fleurs sont violettes avec des pétales délicats, des pistils d\'un jaune flamboyant et des feuilles vertes. L\'effet global est celui de la beauté, de l\'élégance et du charme naturel.', 'https://cdn.pixabay.com/photo/2022/05/11/22/17/flowers-7190313_640.jpg', 'fleurs-de-la-passion', 1, 5),
(146, 'Fleurs hérantes', 'Cette peinture ultra réaliste portrait des roses de couleurs jaunes jonchant un sol mouillé. L\'accent est mis sur la rose centrale, dont le rose est légèrement plus foncé que les autres. L\'œuvre est bien éclairée et le reflet des roses dans l\'eau ajoute un élément de texture supplémentaire à la peinture.', 'https://cdn.pixabay.com/photo/2022/09/27/04/15/roses-7481991_640.jpg', 'fleurs-herantes', 1, 10),
(147, 'Horizons infinis', 'L\' œuvre d\'art est dans le style impressionniste. Le tableau représente une scène de campagne tranquille. Les coups de pinceau sont lâches et expressifs, créant une impression de mouvement et d\'atmosphère. Les couleurs sont douces et atténuées, ce qui confère à la peinture une qualité onirique et éthérée.', 'https://cdn.pixabay.com/photo/2022/08/13/05/59/impressionism-7382949_640.jpg', 'horizons-infinis', 1, 10),
(148, 'Éclaboussures de mercure', 'Il s\'agit d\'une photographie abstraite avec diverses formes géométriques et couleurs disposées dans une composition créative et moderne. L\'image a un aspect futuriste et technologique, avec une impression de mouvement et d\'énergie.', 'https://cdn.pixabay.com/photo/2020/05/17/20/34/concept-5183469_640.jpg', 'eclaboussures-de-mercure', 1, 1),
(149, 'Promenade sur le bord du lac', 'Cette peinture réaliste représente un canard voguant sur un lac. Les détails de l\'animal et de la végétation aux alentours sont très minutieux et les coups de pinceaux très réfléchis. Les couleurs sont neutres et instaurent donc une ambiance calme et sereine.', 'https://cdn.pixabay.com/photo/2013/02/13/16/53/robert-padley-81327_640.jpg', 'promenade-sur-le-bord-du-lac', 1, 8),
(150, 'La fleur d\'ivresse', 'Il s\'agit d\'une peinture de fleurs colorées. Les couleurs sont très prononcés et vives, ce qui apporte un sentiment de joie et de vivacité à l\'oeuvre. Les effets de bavures donnent un petit côté négligé qui est tout de même réfléchi. Les fleurs sont placées sur un fond blanc ce qui fait ressortir les couleurs intenses des pétales.', 'https://cdn.pixabay.com/photo/2017/09/04/22/40/flowers-2715804_640.jpg', 'la-fleur-d-ivresse', 1, 7);


-- --------------------------------------------------------

--
-- Structure de la table `artwork_user`
--

CREATE TABLE `artwork_user` (
  `artwork_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artwork_user`
--

INSERT INTO `artwork_user` (`artwork_id`, `user_id`) VALUES
(15, 3);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `email`, `phone_number`) VALUES
(1, 'artathome@gmail.com', '01.02.03.04.05');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230412125739', '2023-04-12 14:57:53', 53),
('DoctrineMigrations\\Version20230412132327', '2023-04-12 15:29:05', 78),
('DoctrineMigrations\\Version20230412151130', '2023-04-12 17:11:38', 43),
('DoctrineMigrations\\Version20230417124911', '2023-04-17 18:52:29', 37),
('DoctrineMigrations\\Version20230418085545', '2023-04-18 10:56:02', 79),
('DoctrineMigrations\\Version20230425093717', '2023-04-25 11:37:27', 67),
('DoctrineMigrations\\Version20230502140417', '2023-05-02 16:04:44', 88),
('DoctrineMigrations\\Version20230512075853', '2023-05-12 09:59:06', 104),
('DoctrineMigrations\\Version20230516123503', '2023-05-16 14:35:21', 134),
('DoctrineMigrations\\Version20230516123654', '2023-05-16 14:37:03', 59);

-- --------------------------------------------------------

--
-- Structure de la table `exhibition`
--

CREATE TABLE `exhibition` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `artist_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `exhibition`
--

INSERT INTO `exhibition` (`id`, `title`, `slug`, `start_date`, `end_date`, `status`, `artist_id`, `description`) VALUES
(1, 'Renaissance naturelle', 'renaissance-naturelle', '2023-04-20', '2023-08-20', 1, 3, 'Cette exposition est une célébration de la nature et de son renouveau. Les œuvres présentées dans cette exposition cherchent à explorer la relation entre l\'homme et la nature et comment cette relation peut être renouvelée pour créer un avenir plus durable. Les visiteurs sont invités à contempler les différentes manières dont l\'artiste explore la relation entre l\'homme et la nature, et comment cette relation peut être renouvelée pour créer un avenir plus durable.'),
(2, 'Dans l\'univers d\'Aurélien Baquet', 'dans-l-univers-d-aurelien-baquet', '2023-04-20', '2023-08-20', 1, 3, 'L\'exposition présente une collection de photographies, de peintures, de dessins du monde entier qui explorent la beauté et la complexité de la nature. A travers son exposition Aurélien Baquet veut nous transmettre son amour de la nature et le respect qu\'il a pour elle. Voyager à travers cette exposition immersive'),
(3, 'Exploration de l\'âme', 'exploration-de-l-ame', '2023-04-20', '2023-08-20', 1, 6, 'C\'est  une exploration des profondeurs de l\'âme humaine à travers l\'art. Les œuvres d\'art présentées dans cette exposition cherchent à transmettre les émotions les plus profondes et les pensées les plus intimes en utilisant une variété de médias artistiques. Des œuvres d\'art émouvantes et introspective vous y attendent. C\'est une célébration de la richesse et de la complexité de l\'âme humaine..'),
(4, 'Infinie créativité', 'infinie-creativite', '2023-04-20', '2023-08-20', 1, 5, 'C\'est une célébration de la capacité infinie de l\'être humain à créer. Les œuvres présentées dans cette exposition cherchent à explorer les différentes manières dont l\'artiste peut exprimer sa créativité à travers une variété de médias artistiques. Les visiteurs sont invités à contempler les différentes manières dont l\'artiste explorent les thèmes de l\'originalité, de l\'ingéniosité et de la créativité infinie à travers l\'art.'),
(5, 'Chaos et beauté', 'chaos-et-beaute', '2023-04-20', '2023-08-20', 1, 7, 'C\'est une exploration des contradictions apparentes entre l\'ordre et le désordre, la beauté et la laideur, la lumière et l\'obscurité. Les œuvres d\'art présentées dans cette exposition cherchent à évoquer ces concepts complexes, souvent opposés, en créant des compositions saisissantes et des ambiances émotionnelles intenses. Vous serez immédiatement enveloppés par des œuvres d\'art chaotiques et complexes'),
(6, 'Harmonie des couleurs', 'harmonie-des-couleurs', '2023-04-20', '2023-08-20', 1, 4, 'Véritable célébration des couleurs et de leur pouvoir de créer des émotions et des atmosphères. Les œuvres présentées dans cette exposition cherchent à explorer les possibilités infinies offertes par la combinaison de couleurs. Des peintures et des dessins qui explorent les différentes combinaisons de couleurs primaires pour créer des palettes vibrantes et audacieuse.  Les visiteurs sont invités à contempler les différentes manières dont l\'artiste explore les thèmes de l\'harmonie, de la luminosité et de la subtilité des couleurs à travers l\'art.s.'),
(7, 'Fragments de mémoire', 'fragements-de-memoire', '2023-04-20', '2023-08-20', 1, 4, 'L\'exposition est une exploration de la mémoire humaine à travers l\'art. Les œuvres présentées cherchent à capturer des souvenirs et des expériences passées en utilisant une variété de médias artistiques. C\'est une célébration de la richesse et de la complexité de la mémoire humaine. Les visiteurs sont invités à contempler les différentes manières dont l\'artiste explore les thèmes de la nostalgie, de la mémoire collective et de la transformation de la mémoire à travers l\'art.'),
(8, 'Art de la lumière', 'art-de-la-lumiere', '2023-04-20', '2023-08-20', 1, 5, 'C\'est une célébration de la façon dont l\'artiste utilise la lumière pour créer des œuvres d\'art captivantes. L\'exposition présente une variété d\'œuvres d\'art qui utilisent la lumière de différentes manières pour créer des effets visuels intéressants et des émotions. Les effets futuristes sont incroyables. L\'expérimentation de la lumière est au cœur de cette exposition aussi unique qu\'innovante'),
(9, 'Inspiration cosmique', 'inspiration-cosmique', '2023-04-20', '2023-08-20', 1, 6, 'L\'artiste nous amène vers une célébration de l\'Univers et de son influence sur l\'imagination et la créativité humaines. Les œuvres présentées dans cette exposition cherchent à explorer les idées de l\'espace, de l\'astrophysique et de l\'exploration spatiale. Les œuvres célèbrent la beauté de l\'espace et de l\'Univers. Les visiteurs sont invités à contempler les différentes manières dont les artistes explorent les thèmes de l\'espace, de l\'astrophysique et de l\'exploration spatiale à travers l\'art.'),
(10, 'Dialogues silencieux', 'dialogues-silencieux', '2023-04-20', '2023-08-20', 1, 8, 'C\'est une exploration de la communication non verbale et des expressions visuelles qui transcendent les mots. Les œuvres d\'art présentées dans cette exposition cherchent à transmettre des émotions, des idées et des réflexions en utilisant des formes, des couleurs, des textures et des mouvements. Vous serez accueillis par des œuvres d\'art silencieuses mais puissantes.');

-- --------------------------------------------------------

--
-- Structure de la table `legal_notices`
--

CREATE TABLE `legal_notices` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `legal_notices`
--

INSERT INTO `legal_notices` (`id`, `content`) VALUES
(1, '<p>\r\n          Identification du propriétaire du site : \r\n@Maïté Soulard\r\n / \r\n@Aurélia PERRIER\r\n / @Mathieu / \r\n@David B.\r\n\r\n        </p>\r\n        <p>\r\n          Propriété intellectuelle : Tous les contenus présents sur le site de\r\n          littérature (textes, images, vidéos, logos, etc.) sont la propriété\r\n          exclusive de WriterTalent. ou de ses partenaires. Toute reproduction,\r\n          modification, distribution ou exploitation de ces contenus sans\r\n          autorisation écrite préalable est strictement interdite.\r\n        </p>\r\n        <p>\r\n          Données personnelles : Ce site collecte des données personnelles des\r\n          utilisateurs (nom, prénom, adresse e-mail, etc.) dans le cadre de\r\n          l’utilisation du site et des services proposés. Ces données sont\r\n          traitées conformément à la réglementation en vigueur et aux dispositions\r\n          de la politique de confidentialité accessible sur le site.\r\n        </p>\r\n        <p>\r\n          Cookies: Ce site utilise des cookies pour améliorer l’expérience\r\n          utilisateur et proposer des services adaptés aux préférences des\r\n          utilisateurs. Les utilisateurs peuvent gérer les cookies en fonction de\r\n          leurs préférences via les paramètres de leur navigateur.\r\n        </p>\r\n        <p>\r\n          Limitation de responsabilité : Ce site met tout en œuvre pour garantir\r\n          l’exactitude et la mise à jour des informations diffusées sur le site.\r\n          Cependant, les éditeurs de WriterTalent ne peuvent être tenus\r\n          responsables des erreurs ou omissions dans ces informations. De même,\r\n          les éditeurs de WriterTalent ne peuvent être tenus responsables des\r\n          dommages directs ou indirects résultant de l’utilisation du site ou des\r\n          informations qu’il contient.\r\n        </p>\r\n        <p>\r\n          Droit applicable et juridiction compétente : Les présentes mentions\r\n          légales sont soumises au droit français. Tout litige relatif à\r\n          l’utilisation du site sera de la compétence exclusive des tribunaux\r\n          français.\r\n        </p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `presentation` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`, `nickname`, `avatar`, `slug`, `date_of_birth`, `presentation`) VALUES
(1, 'admin@admin.com', '[\"ROLE_ADMIN\"]', '$2y$13$Heiyu4ZaStCK6qQEzmE0Ru7LA.y7ToKGIVHK6Xbpw8ga8JnEUWPM2', 'Mallet', 'Colette', NULL, NULL, 'colette-mallet', NULL, NULL),
(2, 'moderator@moderator.com', '[\"ROLE_MODERATOR\"]', '$2y$13$Heiyu4ZaStCK6qQEzmE0Ru7LA.y7ToKGIVHK6Xbpw8ga8JnEUWPM2', 'Renault', 'William', NULL, NULL, 'william-renault', NULL, NULL),
(3, 'luminart@gmail.com', '[\"ROLE_ARTIST\"]', '$2y$13$PN1tzLobcJrDcx6aw3quhepTKlKBUNOPcVLJcIHQmn4sk1ZgARE9K', 'Petit', 'Gilles', 'Luminart', 'https://cdn.pixabay.com/photo/2016/12/07/21/01/cartoon-1890438_640.jpg', 'luminart', '1990-11-20', 'Je suis un artiste contemporain français dont le travail se concentre sur l\'exploration de la relation entre l\'art et la vie. Je suis connu pour mes peintures et mes sculptures qui reflètent une esthétique minimaliste et conceptuelle, ainsi que pour mes installations immersives qui invitent le spectateur à interagir avec l\'œuvre'),
(4, 'lunaire-artiste@gmail.com', '[\"ROLE_ARTIST\"]', '$2y$13$6M3bVDVn8BPs09HDqQyRh.wJYFxB1zVlzawxVDnwa3pUMr2cyGoNy', 'David', 'Paul', 'Lunaire Artiste', 'https://cdn.pixabay.com/photo/2017/03/17/22/23/comedian-2152801_640.jpg', 'lunaire-artiste', '1994-11-13', 'Je suis un artiste contemporain qui travaille principalement avec des techniques mixtes pour créer des œuvres d\'art originales et dynamiques. Né en France, j\'ai grandi dans une famille d\'artistes et ai commencé à m\'intéresser à l\'art dès mon plus jeune âge.'),
(5, 'luminea@orange.fr', '[\"ROLE_ARTIST\"]', '$2y$13$6M3bVDVn8BPs09HDqQyRh.wJYFxB1zVlzawxVDnwa3pUMr2cyGoNy', 'Maury', 'Diane', 'Luminéa', 'https://cdn.pixabay.com/photo/2022/12/28/01/47/book-cover-7682044_640.jpg', 'luminea', '1973-08-13', 'Artiste passionnée par la peinture et la sculpture. Je suis née dans une famille d\'artistes et a été encouragée dès mon plus jeune âge à développer mes talents artistiques.\r\nJe me suis spécialisée dans l\'utilisation de la couleur et de la lumière pour créer des œuvres d\'art qui célèbrent la beauté de la nature et de la vie. Mes peintures sont souvent abstraites et géométriques, avec des motifs de couleurs vives qui se chevauchent et se fondent pour créer une sensation de mouvement et d\'harmonie.'),
(6, 'martal@gmail.com', '[\"ROLE_ARTIST\"]', '$2y$13$6M3bVDVn8BPs09HDqQyRh.wJYFxB1zVlzawxVDnwa3pUMr2cyGoNy', 'Martinez', 'Alexandrie', 'Martal', 'https://cdn.pixabay.com/photo/2016/08/31/02/10/girl-1632515_640.jpg', 'martal', '1970-09-16', 'Je suis une artiste contemporaine talentueuse et polyvalente, originaire de France. Je suis connue pour mon style unique et expressif, ainsi que pour ma capacité à utiliser une variété de médiums pour créer des œuvres d\'art qui capturent l\'imagination. Née dans une famille d\'artistes, j\'ai commencé à dessiner dès mon plus jeune âge et ai rapidement découvert ma passion pour l\'art.'),
(7, 'arcadien@orange.fr', '[\"ROLE_ARTIST\"]', '$2y$13$6M3bVDVn8BPs09HDqQyRh.wJYFxB1zVlzawxVDnwa3pUMr2cyGoNy', 'Girard', 'Louis', 'Arcadien', 'https://cdn.pixabay.com/photo/2022/08/02/01/33/man-7359262_640.jpg', 'arcadien', '1991-02-12', 'Gérard est un artiste libre, indépendant et non-conformiste, qui vit et travaille en France. Je suis connu pour mon style unique et mon approche non-conventionnelle de l\'art.\r\nJ\'ai commencé à expérimenter avec l\'art dès mon plus jeune âge, et ma passion pour la création m\'a conduit à explorer une variété de médiums, tels que la peinture, la sculpture et la photographie. Au fil du temps, j\'ai développé mon propre style distinctif, qui se caractérise par des couleurs vives, des formes abstraites et des textures riches.Mon art est souvent inspiré par la nature, les émotions humaines et la condition humaine en général.'),
(8, 'seb.lemaitre@gmail.com', '[\"ROLE_ARTIST\"]', '$2y$13$6M3bVDVn8BPs09HDqQyRh.wJYFxB1zVlzawxVDnwa3pUMr2cyGoNy', 'Lemaitre', 'Sébastien', NULL, 'https://picsum.photos/id/26/50/50', 'sebastien-lemaitre', NULL, 'je suis laurent, coucou c\'est moi laurent j\'adore la psicine et la plage. Mon plat préféré c\'est les grenouilles miaaaaaaaaaammmmmmmm'),
(9, 'chromatix@gmail.com', '[\"ROLE_ARTIST\"]', '$2y$13$6M3bVDVn8BPs09HDqQyRh.wJYFxB1zVlzawxVDnwa3pUMr2cyGoNy', 'Rossi', 'Maurice', 'Chromatix', 'https://cdn.pixabay.com/photo/2021/01/21/16/44/model-5937809_640.jpg', 'chromatix', '1956-04-21', 'Je suis un artiste dévoué et passionné qui travaille dans une variété de médiums, notamment la peinture, la sculpture et la photographie. Originaire de France, j\'ai commencé à m\'intéresser à l\'art dès mon plus jeune âge et ai rapidement découvert ma passion pour la création. Au fil du temps, j\'ai développé mon propre style distinctif qui se caractérise par une palette de couleurs riches et vibrantes et une esthétique élégante et sophistiquée. J\'utilise souvent des formes géométriques et des motifs abstraits pour créer des œuvres d\'art qui sont à la fois intrigantes et captivantes.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `artwork`
--
ALTER TABLE `artwork`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_881FC5762A7D4494` (`exhibition_id`);

--
-- Index pour la table `artwork_user`
--
ALTER TABLE `artwork_user`
  ADD PRIMARY KEY (`artwork_id`,`user_id`),
  ADD KEY `IDX_3975B07DB8FFA4` (`artwork_id`),
  ADD KEY `IDX_3975B07A76ED395` (`user_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `exhibition`
--
ALTER TABLE `exhibition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B8353389B7970CF8` (`artist_id`);

--
-- Index pour la table `legal_notices`
--
ALTER TABLE `legal_notices`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artwork`
--
ALTER TABLE `artwork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `exhibition`
--
ALTER TABLE `exhibition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `legal_notices`
--
ALTER TABLE `legal_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `artwork`
--
ALTER TABLE `artwork`
  ADD CONSTRAINT `FK_881FC5762A7D4494` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibition` (`id`);

--
-- Contraintes pour la table `artwork_user`
--
ALTER TABLE `artwork_user`
  ADD CONSTRAINT `FK_3975B07A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3975B07DB8FFA4` FOREIGN KEY (`artwork_id`) REFERENCES `artwork` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `exhibition`
--
ALTER TABLE `exhibition`
  ADD CONSTRAINT `FK_B8353389B7970CF8` FOREIGN KEY (`artist_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
