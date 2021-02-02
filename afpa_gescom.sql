-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : lun. 18 jan. 2021 à 21:02
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `afpa_gescom`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cou_id` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cou_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE KEY `alpha2` (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `cus_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(150) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_countries_id` char(2) NOT NULL,
  `cus_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cus_phone` int UNSIGNED NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `ibfk_customers_countries` (`cus_countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `emp_superior_id` int UNSIGNED DEFAULT NULL,
  `emp_pos_id` int UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_phone` int UNSIGNED NOT NULL,
  `emp_salary` int UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_superior_id` (`emp_superior_id`),
  KEY `emp_pos_id` (`emp_pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gescom_v1_countries_data_2020_05_20`
--

DROP TABLE IF EXISTS `gescom_v1_countries_data_2020_05_20`;
CREATE TABLE IF NOT EXISTS `gescom_v1_countries_data_2020_05_20` (
  `COL 1` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gescom_v1_countries_data_2020_05_20`
--

INSERT INTO `gescom_v1_countries_data_2020_05_20` (`COL 1`) VALUES
('AD;Andorre'),
('AE;Émirats Arabes Unis'),
('AF;Afghanistan'),
('AG;Antigua-et-Barbuda'),
('AI;Anguilla'),
('AL;Albanie'),
('AM;Arménie'),
('AN;Antilles Néerlandaises'),
('AO;Angola'),
('AQ;Antarctique'),
('AR;Argentine'),
('AS;Samoa Américaines'),
('AT;Autriche'),
('AU;Australie'),
('AW;Aruba'),
('AX;Îles Åland'),
('AZ;Azerbaïdjan'),
('BA;Bosnie-Herzégovine'),
('BB;Barbade'),
('BD;Bangladesh'),
('BE;Belgique'),
('BF;Burkina Faso'),
('BG;Bulgarie'),
('BH;Bahreïn'),
('BI;Burundi'),
('BJ;Bénin'),
('BM;Bermudes'),
('BN;Brunéi Darussalam'),
('BO;Bolivie'),
('BR;Brésil'),
('BS;Bahamas'),
('BT;Bhoutan'),
('BV;Île Bouvet'),
('BW;Botswana'),
('BY;Bélarus'),
('BZ;Belize'),
('CA;Canada'),
('CC;Îles Cocos (Keeling)'),
('CD;République Démocratique du Congo'),
('CF;République Centrafricaine'),
('CG;République du Congo'),
('CH;Suisse'),
('CI;Côte d\'Ivoire'),
('CK;Îles Cook'),
('CL;Chili'),
('CM;Cameroun'),
('CN;Chine'),
('CO;Colombie'),
('CR;Costa Rica'),
('CS;Serbie-et-Monténégro'),
('CU;Cuba'),
('CV;Cap-vert'),
('CX;Île Christmas'),
('CY;Chypre'),
('CZ;République Tchèque'),
('DE;Allemagne'),
('DJ;Djibouti'),
('DK;Danemark'),
('DM;Dominique'),
('DO;République Dominicaine'),
('DZ;Algérie'),
('EC;Équateur'),
('EE;Estonie'),
('EG;Égypte'),
('EH;Sahara Occidental'),
('ER;Érythrée'),
('ES;Espagne'),
('ET;Éthiopie'),
('FI;Finlande'),
('FJ;Fidji'),
('FK;Îles (malvinas) Falkland'),
('FM;États Fédérés de Micronésie'),
('FO;Îles Féroé'),
('FR;France'),
('GA;Gabon'),
('GB;Royaume-Uni'),
('GD;Grenade'),
('GE;Géorgie'),
('GF;Guyane Française'),
('GH;Ghana'),
('GI;Gibraltar'),
('GL;Groenland'),
('GM;Gambie'),
('GN;Guinée'),
('GP;Guadeloupe'),
('GQ;Guinée Équatoriale'),
('GR;Grèce'),
('GS;Géorgie du Sud et les Îles Sandwich du Sud'),
('GT;Guatemala'),
('GU;Guam'),
('GW;Guinée-Bissau'),
('GY;Guyana'),
('HK;Hong-Kong'),
('HM;Îles Heard et Mcdonald'),
('HN;Honduras'),
('HR;Croatie'),
('HT;Haïti'),
('HU;Hongrie'),
('ID;Indonésie'),
('IE;Irlande'),
('IL;Israël'),
('IM;Île de Man'),
('IN;Inde'),
('IO;Territoire Britannique de l\'Océan Indien'),
('IQ;Iraq'),
('IR;République Islamique d\'Iran'),
('IS;Islande'),
('IT;Italie'),
('JM;Jamaïque'),
('JO;Jordanie'),
('JP;Japon'),
('KE;Kenya'),
('KG;Kirghizistan'),
('KH;Cambodge'),
('KI;Kiribati'),
('KM;Comores'),
('KN;Saint-Kitts-et-Nevis'),
('KP;République Populaire Démocratique de Corée'),
('KR;République de Corée'),
('KW;Koweït'),
('KY;Îles Caïmanes'),
('KZ;Kazakhstan'),
('LA;République Démocratique Populaire Lao'),
('LB;Liban'),
('LC;Sainte-Lucie'),
('LI;Liechtenstein'),
('LK;Sri Lanka'),
('LR;Libéria'),
('LS;Lesotho'),
('LT;Lituanie'),
('LU;Luxembourg'),
('LV;Lettonie'),
('LY;Jamahiriya Arabe Libyenne'),
('MA;Maroc'),
('MC;Monaco'),
('MD;République de Moldova'),
('MG;Madagascar'),
('MH;Îles Marshall'),
('MK;L\'ex-République Yougoslave de Macédoine'),
('ML;Mali'),
('MM;Myanmar'),
('MN;Mongolie'),
('MO;Macao'),
('MP;Îles Mariannes du Nord'),
('MQ;Martinique'),
('MR;Mauritanie'),
('MS;Montserrat'),
('MT;Malte'),
('MU;Maurice'),
('MV;Maldives'),
('MW;Malawi'),
('MX;Mexique'),
('MY;Malaisie'),
('MZ;Mozambique'),
('NA;Namibie'),
('NC;Nouvelle-Calédonie'),
('NE;Niger'),
('NF;Île Norfolk'),
('NG;Nigéria'),
('NI;Nicaragua'),
('NL;Pays-Bas'),
('NO;Norvège'),
('NP;Népal'),
('NR;Nauru'),
('NU;Niué'),
('NZ;Nouvelle-Zélande'),
('OM;Oman'),
('PA;Panama'),
('PE;Pérou'),
('PF;Polynésie Française'),
('PG;Papouasie-Nouvelle-Guinée'),
('PH;Philippines'),
('PK;Pakistan'),
('PL;Pologne'),
('PM;Saint-Pierre-et-Miquelon'),
('PN;Pitcairn'),
('PR;Porto Rico'),
('PS;Territoire Palestinien Occupé'),
('PT;Portugal'),
('PW;Palaos'),
('PY;Paraguay'),
('QA;Qatar'),
('RE;Réunion'),
('RO;Roumanie'),
('RU;Fédération de Russie'),
('RW;Rwanda'),
('SA;Arabie Saoudite'),
('SB;Îles Salomon'),
('SC;Seychelles'),
('SD;Soudan'),
('SE;Suède'),
('SG;Singapour'),
('SH;Sainte-Hélène'),
('SI;Slovénie'),
('SJ;Svalbard etÎle Jan Mayen'),
('SK;Slovaquie'),
('SL;Sierra Leone'),
('SM;Saint-Marin'),
('SN;Sénégal'),
('SO;Somalie'),
('SR;Suriname'),
('ST;Sao Tomé-et-Principe'),
('SV;El Salvador'),
('SY;République Arabe Syrienne'),
('SZ;Swaziland'),
('TC;Îles Turks et Caïques'),
('TD;Tchad'),
('TF;Terres Australes Françaises'),
('TG;Togo'),
('TH;Thaïlande'),
('TJ;Tadjikistan'),
('TK;Tokelau'),
('TL;Timor-Leste'),
('TM;Turkménistan'),
('TN;Tunisie'),
('TO;Tonga'),
('TR;Turquie'),
('TT;Trinité-et-Tobago'),
('TV;Tuvalu'),
('TW;Taïwan'),
('TZ;République-Unie de Tanzanie'),
('UA;Ukraine'),
('UG;Ouganda'),
('UM;Îles Mineures Éloignées des États-Unis'),
('US;États-Unis'),
('UY;Uruguay'),
('UZ;Ouzbékistan'),
('VA;Saint-Siège (état de la Cité du Vatican)'),
('VC;Saint-Vincent-et-les Grenadines'),
('VE;Venezuela'),
('VG;Îles Vierges Britanniques'),
('VI;Îles Vierges des États-Unis'),
('VN;Viet Nam'),
('VU;Vanuatu'),
('WF;Wallis et Futuna'),
('WS;Samoa'),
('YE;Yémen'),
('YT;Mayotte'),
('ZA;Afrique du Sud'),
('ZM;Zambie'),
('ZW;Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `gescom_v1_products_data_2020_05_20__1_`
--

DROP TABLE IF EXISTS `gescom_v1_products_data_2020_05_20__1_`;
CREATE TABLE IF NOT EXISTS `gescom_v1_products_data_2020_05_20__1_` (
  `COL 1` varchar(272) DEFAULT NULL,
  `COL 2` varchar(230) DEFAULT NULL,
  `COL 3` varchar(198) DEFAULT NULL,
  `COL 4` varchar(114) DEFAULT NULL,
  `COL 5` varchar(144) DEFAULT NULL,
  `COL 6` varchar(114) DEFAULT NULL,
  `COL 7` varchar(18) DEFAULT NULL,
  `COL 8` varchar(54) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gescom_v1_products_data_2020_05_20__1_`
--

INSERT INTO `gescom_v1_products_data_2020_05_20__1_` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`) VALUES
('7;27;110.00;barb001;NULL;2;5;Brun;Aramis ;Lorem ipsum dolor sit amet', ' consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus', ' a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus', ' metus nec molestie lobortis', ' nunc sem mollis tortor', ' et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi. ;0;4;2018-04-18 00:00:00;2018-11-14 00:00:00;jpg', NULL, NULL),
('8;27;249.99;barb002;NULL;0;5;Noir;Athos;Cu\'rabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.;0;4;2016-06-14 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10;2;14.99;SEC-B;NULL;16;5;Rouge;Red;Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.;0;3;2018-08-05 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11;27;135.90;barb003;NULL;10;5;Chrome;Clatronic;Fusce rutrum odio sem', ' quis finibus nisl finibus a. Praesent dictum ex in lectus porta', ' vitae varius lacus eleifend. Sed sed lacinia mi', ' sed egestas odio. Integer a congue lectus.;0;4;2017-10-18 00:00:00;2018-08-23 00:00:00;jpg', NULL, NULL, NULL, NULL),
('12;27;88.00;barb004;NULL;5;5;Noir;Camping;Phasellus auctor mattis justo', ' in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit', ' sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas;1;4;2018-08-20 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL),
('13;13;49.00;brou001;NULL;25;5;Verte;Green;Fusce interdum ex justo', ' vel imperdiet erat volutpat non. Donec et maximus lacus. ;0;2;2018-08-01 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('14;13;88.00;brou002;NULL;0;5;Argent;Silver;Pellentesque ultrices vestibulum sagittis.;1;2;2018-08-09 00:00:00;2018-08-22 00:00:00;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('15;13;54.49;brou003;NULL;3;5;Jaune;Yellow;Sed lobortis pulvinar orci', ' ut efficitur urna egestas eu.;0;2;2018-08-12 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('16;2;19.90;GA410;NULL;50;5;Gris;Bêche GA 410;Nulla at consequat orci.;0;2;2018-08-13 00:00:00;NULL;png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17;2;24.90;beche002;NULL;1;5;Argent;Bêche GA 388;Curabitur varius interdum nulla', ' sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.;0;2;2018-03-15 00:00:00;NULL;png', NULL, NULL, NULL, NULL, NULL, NULL),
('18;2;31.19;scm0555;NULL;0;5;Bleue;Scie à main SCM0555;Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit', ' ac gravida risus imperdiet in.;0;2;2018-08-19 00:00:00;NULL;png', NULL, NULL, NULL, NULL, NULL, NULL),
('19;2;14.90;scm559;NULL;4;5;Bleu;Scie couteau;raesent ante felis', ' iaculis vitae lectus sed', ' luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta', ' a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.;0;2;2018-04-13 00:00:00;NULL;png', NULL, NULL, NULL, NULL),
('20;2;31.19;h0662;NULL;0;5;Noir;Hache H062;Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.;0;2;2018-08-12 00:00:00;NULL;png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('21;11;599.99;DB0703;NULL;4;5;Bleue;Titan;Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue', ' porta non vestibulum cursus', ' eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus', ' pellentesque nec hendrerit vehicula', ' consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ;0;3;1999-08-26 00:00:00;NULL;png', NULL, NULL, NULL),
('22;11;499.99;DB0755;NULL;0;5;Bleue;Attila;Là où passe Attila', ' l\'herbe ne repousse pas.;0;3;2018-05-16 00:00:00;NULL;png', NULL, NULL, NULL, NULL, NULL, NULL),
('23;28;12.00;LAM121;NULL;0;5;Rouge;Aquitaine;Integer aliquet accumsan eleifend. Pellentesque mauris tortor', ' ultricies a pulvinar ut', ' fringilla ac mi. Sed consequat', ' nibh at tempus porttitor', ' tellus nunc dictum nulla', ' sed finibus felis augue sed libero. Donec augue mi', ' mattis et orci ac', ' mollis feugiat elit.;0;2;2018-03-17 00:00:00;NULL;jpg'),
('24;28;9.98;LAM233;NULL;500;5;Brun;Brown;Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex', ' vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ;0;2;2018-03-17 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('25;25;157.00;PRS-01C;NULL;5;5;Brun;Biarritz;Quisque fermentum', ' dui eu elementum sagittis', ' risus lorem placerat ipsum', ' vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus', ' in suscipit magna.;0;2;2018-08-19 00:00:00;NULL;jpg', NULL, NULL, NULL),
('26;25;299.40;PRS-38A;NULL;4;5;Rose;Cannes;Curabitur sodales sem vitae ex commodo', ' in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim', ' egestas ac arcu et', ' elementum luctus ante.;0;2;2018-08-12 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL),
('27;25;89.00;PRS-87F;NULL;21;5;Rouge;Crotoy;Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex', ' vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.;0;2;2018-04-12 00:00:00;2018-08-21 00:00:00;jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('28;21;288.32;POT_001;NULL;11;5;Orange;Agave;. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus', ' ac tincidunt leo suscipit. Quisque fermentum', ' dui eu elementum sagittis', ' risus lorem placerat ipsum', ' vitae venenatis tellus sapien id nibh.;0;1;2017-11-12 00:00:00;NULL;jpg', NULL, NULL, NULL),
('29;21;32.50;POT-002;NULL;45;5;Noir;Dark;Curabitur sodales sem vitae ex commodo', ' in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.;0;1;2018-08-19 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('30;21;149.97;POT_003;NULL;0;5;Rose;Fuschia;Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ;0;1;2018-03-04 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('31;6;245.00;POT-381;NULL;10;5;Marron;Iris;Praesent nunc dui', ' porta at leo eget', ' iaculis ultrices quam. Mauris vulputate metus in nisl aliquam', ' et sollicitudin nisl mollis. Lorem ipsum dolor sit amet', ' consectetur adipiscing elit. ;0;1;2017-04-16 00:00:00;NULL;jpg', NULL, NULL, NULL),
('32;2;9.90;SEC-A;NULL;280;5;Orange;Bahco;In hac habitasse platea dictumst. Quisque at sagittis nunc.;0;3;2018-08-14 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34;10;335.00;ENH0335;NULL;1;5;Rouge;Einhell;Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros', ' accumsan vel vulputate ut', ' gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus', ' tincidunt nec metus.;0;4;2018-05-17 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL),
('35;10;990.00;GRIZ_001;NULL;1;5;Chrome;Grizzly;luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu', ' fringilla sit amet tempus blandit', ' congue eu nulla. Morbi id efficitur tellus.;0;4;2018-08-05 00:00:00;2020-05-05 00:00:00;jpg', NULL, NULL, NULL, NULL, NULL),
('36;9;75.00;HERO;NULL;7;5;Vert;Hero;;0;4;2018-08-13 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('37;9;120.50;SL1280;NULL;5;5;Vert;SL 1280;Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.;0;4;2018-08-05 00:00:00;2018-08-22 00:00:00;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('38;10;348.00;6cv;NULL;2;5;Rouge;Red 6CV ;uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.;0;4;2018-08-16 00:00:00;2018-08-21 00:00:00;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('39;10;497.00;TRIKE;NULL;1;5;Rouge;Trike;Aenean ut tellus non risus varius bibendum quis vel ligula. ;0;4;2018-08-21 00:00:00;2018-08-21 10:05:51;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('41;9;49.80;ZOOM;NULL;223;5;Gris;Zoom;Nunc magna erat', ' ultrices et facilisis non', ' viverra in turpis. Nulla orci mi', ' maximus eu facilisis a', ' pretium sit amet ex.;0;4;2018-08-13 00:00:00;NULL;jpg', NULL, NULL, NULL),
('42;10;1.20;waz1;NULL;123;5;rouge;wazaa;azerty;0;4;2019-05-03 00:00:00;NULL;jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ord_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) NOT NULL,
  `ord_cus_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_cus_id` (`ord_cus_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `ode_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_quantity` int NOT NULL,
  `ode_ord_id` int UNSIGNED NOT NULL,
  `ode_pro_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`ode_id`),
  KEY `ode_ord_id` (`ode_ord_id`) USING BTREE,
  KEY `ode_pro_id` (`ode_pro_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_unit_price`, `ode_discount`, `ode_quantity`, `ode_ord_id`, `ode_pro_id`) VALUES
(1, '14.99', NULL, 1, 5, 10),
(2, '14.90', NULL, 1, 53, 19),
(3, '499.99', NULL, 1, 53, 22),
(4, '9.90', NULL, 1, 17, 32),
(5, '88.00', NULL, 1, 72, 12),
(6, '288.32', NULL, 1, 20, 28),
(7, '32.50', NULL, 1, 56, 29),
(8, '88.00', NULL, 1, 74, 12),
(9, '110.00', '10.00', 1, 47, 7),
(10, '9.98', NULL, 1, 16, 24),
(11, '157.00', NULL, 1, 70, 25),
(12, '149.97', NULL, 1, 37, 30),
(13, '49.00', NULL, 1, 8, 13),
(14, '88.00', NULL, 1, 32, 14),
(15, '245.00', '10.00', 1, 7, 31),
(16, '110.00', '10.00', 1, 75, 7),
(17, '245.00', NULL, 1, 79, 31),
(18, '31.19', NULL, 1, 29, 18),
(19, '149.97', NULL, 1, 91, 30),
(20, '31.19', NULL, 1, 54, 18),
(21, '88.00', NULL, 1, 68, 12),
(22, '599.99', NULL, 1, 35, 21),
(23, '49.00', NULL, 1, 24, 13),
(24, '245.00', NULL, 1, 78, 31),
(25, '299.40', NULL, 1, 94, 26),
(26, '110.00', '10.00', 1, 35, 7),
(27, '135.90', NULL, 1, 77, 11),
(28, '12.00', NULL, 1, 83, 23),
(29, '157.00', NULL, 1, 81, 25),
(30, '299.40', NULL, 1, 48, 26),
(31, '288.32', NULL, 1, 95, 28),
(32, '110.00', '10.00', 1, 75, 7),
(33, '49.00', NULL, 1, 31, 13),
(34, '19.90', NULL, 1, 97, 16),
(35, '49.00', NULL, 1, 68, 13),
(36, '14.99', NULL, 1, 47, 10),
(37, '245.00', NULL, 1, 55, 31),
(38, '249.99', NULL, 1, 63, 8),
(39, '49.00', NULL, 1, 14, 13),
(40, '54.49', NULL, 1, 40, 15),
(41, '49.00', NULL, 1, 90, 13),
(42, '14.99', NULL, 1, 63, 10),
(43, '245.00', NULL, 1, 42, 31),
(44, '31.19', NULL, 1, 66, 18),
(45, '89.00', NULL, 1, 26, 27),
(46, '110.00', '10.00', 1, 87, 7),
(47, '9.90', NULL, 1, 11, 32),
(48, '249.99', NULL, 10, 9, 8),
(49, '599.99', NULL, 1, 93, 21),
(50, '19.90', NULL, 1, 81, 16),
(51, '135.90', NULL, 1, 47, 11),
(52, '157.00', NULL, 1, 70, 25),
(53, '110.00', '10.00', 1, 6, 7),
(54, '499.99', NULL, 1, 61, 22),
(55, '32.50', NULL, 1, 89, 29),
(56, '135.90', NULL, 1, 67, 11),
(57, '49.00', NULL, 1, 11, 13),
(58, '9.90', NULL, 1, 96, 32),
(59, '157.00', NULL, 1, 41, 25),
(60, '245.00', NULL, 1, 60, 31),
(61, '19.90', NULL, 1, 16, 16),
(62, '499.99', NULL, 1, 8, 22),
(63, '249.99', NULL, 1, 19, 8),
(64, '110.00', '10.00', 1, 54, 7),
(65, '299.40', NULL, 1, 62, 26),
(66, '135.90', NULL, 1, 56, 11),
(67, '149.97', NULL, 1, 52, 30),
(68, '245.00', NULL, 1, 53, 31),
(69, '19.90', NULL, 1, 52, 16),
(70, '9.98', NULL, 1, 21, 24),
(71, '9.90', NULL, 1, 23, 32),
(72, '14.99', NULL, 1, 37, 10),
(73, '149.97', NULL, 1, 27, 30),
(74, '32.50', NULL, 1, 60, 29),
(75, '32.50', NULL, 1, 40, 29),
(76, '14.90', NULL, 1, 54, 19),
(77, '88.00', NULL, 1, 25, 14),
(78, '88.00', NULL, 1, 85, 12),
(79, '599.99', NULL, 1, 51, 21),
(80, '599.99', NULL, 1, 2, 21),
(81, '14.99', NULL, 1, 97, 10),
(82, '9.90', NULL, 1, 37, 32),
(83, '9.98', NULL, 1, 47, 24),
(84, '14.90', NULL, 1, 70, 19),
(85, '49.00', NULL, 1, 43, 13),
(86, '31.19', NULL, 1, 56, 20),
(87, '19.90', NULL, 1, 72, 16),
(88, '245.00', NULL, 1, 20, 31),
(89, '31.19', NULL, 1, 4, 20),
(90, '54.49', NULL, 1, 86, 15),
(91, '24.90', NULL, 1, 14, 17),
(92, '249.99', NULL, 1, 67, 8),
(93, '288.32', NULL, 1, 6, 28),
(94, '110.00', '10.00', 1, 58, 7),
(95, '110.00', '20.00', 2, 12, 7),
(96, '88.00', NULL, 1, 100, 12),
(97, '88.00', NULL, 1, 48, 12),
(98, '245.00', NULL, 1, 17, 31),
(99, '88.00', NULL, 1, 39, 12),
(100, '149.97', NULL, 1, 15, 30);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `pos_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pos_libelle` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_cat_id` int UNSIGNED NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_ean` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pro_stock` int UNSIGNED NOT NULL,
  `pro_stock_alert` int UNSIGNED NOT NULL,
  `pro_color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `pro_sup_id` (`pro_sup_id`) USING BTREE,
  KEY `pro_cat_id` (`pro_cat_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sup_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_countries_id` char(2) NOT NULL,
  `sup_address` varchar(150) NOT NULL,
  `sup_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_contact` varchar(100) NOT NULL,
  `sup_phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_mail` varchar(75) NOT NULL,
  PRIMARY KEY (`sup_id`),
  KEY `sup_countries_id` (`sup_countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `ibfk_customers_countries` FOREIGN KEY (`cus_countries_id`) REFERENCES `countries` (`cou_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_superior_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`sup_countries_id`) REFERENCES `countries` (`cou_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
