-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2022 at 12:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet_fil_rouge`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `createAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `createAt`) VALUES
(2, 'abderrahim Agra', 'abder.agra@gmail.com', '$2y$10$C1ZuTBUYpsSGBslXl9nycu1Ak9QSy4X1lBR8sxmgi/V05KZSzAgsq', '2022-06-12 15:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `annonce`
--

CREATE TABLE `annonce` (
  `id` bigint(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(30) NOT NULL,
  `photo` blob NOT NULL,
  `createAt` datetime NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_type_annonce` int(11) NOT NULL,
  `id_object_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `annonce_type`
--

CREATE TABLE `annonce_type` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'POUR LA MAISON ET JARDIN'),
(3, 'LOISIRS ET DIVERTISSEMENT'),
(4, 'POUR LA MAISON ET JARDIN'),
(5, 'INFORMATIQUE ET MULTIMEDIA'),
(6, 'HABILLEMENT ET BIEN ETRE'),
(7, 'LOISIRS ET DIVERTISSEMENT'),
(8, 'VEHICULES');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `ville` varchar(100) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`ville`, `id`) VALUES
('Casablanca', 1),
('El Kelaa des Srarhna', 2),
('Fes', 3),
('Rabat', 4),
('Tifariti', 5),
('Tangier', 6),
('Marrakech', 7),
('Sale', 8),
('Meknes', 9),
('Oujda-Angad', 10),
('Kenitra', 11),
('Agadir', 12),
('Tetouan', 13),
('Taourirt', 14),
('Temara', 15),
('Safi', 16),
('Mohammedia', 17),
('El Jadid', 18),
('Kouribga', 19),
('Beni Mellal', 20),
('Laayoune', 21),
('Ait Melloul', 22),
('Nador', 23),
('Taza', 24),
('Barrechid', 25),
('Settat', 26),
('Inezgane', 27),
('Al Khmissat', 28),
('Ksar El Kebir', 29),
('Mediouna', 30),
('Larache', 31),
('Khenifra', 32),
('Guelmim', 33),
('Berkane', 34),
('Al Fqih Ben Calah', 35),
('Bouskoura', 36),
('Oued Zem', 37),
('Sidi Slimane', 38),
('Guercif', 39),
('Errachidia', 40),
('Ben Guerir', 41),
('Oulad Teima', 42),
('Fnidq', 43),
('Sidi Qacem', 44),
('Moulay Abdallah', 45),
('Warzat', 46),
('Youssoufia', 47),
('Ain Harrouda', 48),
('Martil', 49),
('Ouezzane', 50),
('Sidi Bennour', 51),
('Sidi Yahya Zaer', 52),
('Midalt', 53),
('Azrou', 54),
('Al Hoceima', 55),
('Boujad', 56),
('Ain El Aouda', 57),
('Qasbat Tadla', 58),
('Beni Yakhlef', 59),
('Azemmour', 60),
('Mrirt', 61),
('Jerada', 62),
('El Aioun', 63),
('Temsia', 64),
('Aziylal', 65),
('Ait Ourir', 66),
('Zagora', 67),
('Biougra', 68),
('Sidi Yahia El Gharb', 69),
('El Hajeb', 70),
('Zaio', 71),
('Zeghanghane', 72),
('Tit Mellil', 73),
('Mechraa Bel Ksiri', 74),
('Sidi Smai\'il', 75),
('Arfoud', 76),
('Demnat', 77),
('Bou Arfa', 78),
('Mehdya', 79),
('Ain Taoujdat', 80),
('Tahla', 81),
('Missour', 82),
('Zawyat ech Cheikh', 83),
('Oulad Tayeb', 84),
('Sidi Lmokhtar', 85),
('Douar Toulal', 86),
('Oulad Fraj', 87),
('Ahfir', 88),
('Bou Djeniba', 89),
('Goulmima', 90),
('Sidi Zouine', 91),
('Ait Yaazem', 92),
('Oulad Hamdane', 93),
('Laaouama', 94),
('Targuist', 95),
('Bou Fekrane', 96),
('El Menzel', 97),
('Oulad Ayyad', 98),
('Ar Rommani', 99),
('Boudenib', 100),
('Ain Lehjer', 101),
('Oulad Ben Sebbah', 102),
('Beni Bou Yafroun', 103),
('Ad Dakhla', 104),
('Wislane', 105),
('Tiflet', 106),
('Lqoliaa', 107),
('Sefrou', 108),
('Taroudannt', 109),
('Essaouira', 110),
('Ait Ali', 111),
('Tiznit', 112),
('Tan-Tan', 113),
('Sa\'ada', 114),
('Skhirate', 115),
('Benslimane', 116),
('Beni Enzar', 117),
('M\'diq', 118),
('Ad Darwa', 119),
('Al Aaroui', 120),
('Semara', 121),
('Chefchaouene', 122),
('Sidi Mohamed Lahmar', 123),
('Tineghir', 124),
('Zoumi', 125),
('Douar Laouamra', 126),
('Sidi Bibi', 127),
('Taounate', 128),
('Bouznika', 129),
('Aguelmous', 130),
('Aourir', 131),
('Imzouren', 132),
('Mnasra', 133),
('Oulad Zemam', 134),
('Ben Ahmed', 135),
('Arbaoua', 136),
('Douar Oulad Hssine', 137),
('Dar Ould Zidouh', 138),
('Bahharet Oulad Ayyad', 139),
('Asilah', 140),
('Mograne', 141),
('Lalla Mimouna', 142),
('Souk et Tnine Jorf el Mellah', 143),
('Tameslouht', 144),
('Chichaoua', 145),
('Fritissa', 146),
('Oulad Yaich', 147),
('Taza', 148),
('Douar Oulad Aj-jabri', 149),
('Oulad Hammou', 150),
('Bellaa', 151),
('Dar Bel Hamri', 152),
('Moulay Bousselham', 153),
('Ksebia', 154),
('Sabaa Aiyoun', 155),
('Tamorot', 156),
('Bouknadel', 157),
('Ait Faska', 158),
('Bourdoud', 159),
('Boureit', 160),
('Oulad Barhil', 161),
('Oulad Said', 162),
('Lamzoudia', 163),
('Ain Aicha', 164),
('El Ghiate', 165),
('Safsaf', 166),
('Echemmaia Est', 167),
('Ouaoula', 168),
('Douar Olad. Salem', 169),
('Douar \'Ayn Dfali', 170),
('Skoura', 171),
('Setti Fatma', 172),
('Gueznaia', 173),
('Zawyat an Nwacer', 174),
('Khenichet-sur Ouerrha', 175),
('Douar Ouled Ayad', 176),
('Oulad Hassoune', 177),
('Ayt Mohamed', 178),
('Bni Frassen', 179),
('Tighedouine', 180),
('Sidi Ifni', 181),
('Alnif', 182),
('Souk Tlet El Gharb', 183),
('Afourar', 184),
('Selouane', 185),
('Imi-n-Tanout', 186),
('El Ksiba', 187),
('Tidili Masfiywat', 188),
('Amizmiz', 189),
('Tamgrout', 190),
('Sidi Rahal', 191),
('Asni', 192),
('Oulad Embarek', 193),
('Al Brouj', 194),
('Imi n\'Oulaoun', 195),
('Saka', 196),
('Bni Rzine', 197),
('Sidi Chiker', 198),
('Douar Lamrabih', 199),
('Sidi Jaber', 200),
('Station des Essais M.V.A.', 201),
('Ain Cheggag', 202),
('Jdour', 203),
('Imouzzer Kandar', 204),
('\'Ali Ben Sliman', 205),
('El Mansouria', 206),
('Tarhzirt', 207),
('Had Zraqtane', 208),
('Ait Tamlil', 209),
('Zaouia Ait Ishak', 210),
('Jnane Bouih', 211),
('Oulad Salmane', 212),
('Ait Bousarane', 213),
('Sebt Gzoula', 214),
('Sidi Redouane', 215),
('Karia Ba Mohamed', 216),
('Ait Ben Daoudi', 217),
('Beni Zouli', 218),
('Oulmes', 219),
('Jbabra', 220),
('Sidi Allal Tazi', 221),
('Tamri', 222),
('Tata', 223),
('Chouafaa', 224),
('Foum el Anser', 225),
('Lamrasla', 226),
('Ait Bouchta', 227),
('Ribat Al Khayr', 228),
('Bouarouss', 229),
('Ikniwn', 230),
('Ghouazi', 231),
('Outat Oulad Al Haj', 232),
('Al Qbab', 233),
('Douar Oulad Mbarek', 234),
('Qal\'at Mgouna', 235),
('Laatatra', 236),
('Ait Majdane', 237),
('Agourai', 238),
('Awlouz', 239),
('Sahel', 240),
('Ketama', 241),
('Dar Chaifat', 242),
('Galaz', 243),
('Milla\'ab', 244),
('Talsint', 245),
('Tamallalt', 246),
('Sidi Yakoub', 247),
('Tagounite', 248),
('Knemis Dades', 249),
('Oulad Amrane', 250),
('Ratba', 251),
('Ouaouzgane', 252),
('Sidi Lamine', 253),
('Douar Tabouda', 254),
('Sidi Ettiji', 255),
('Zirara', 256),
('Tirhassaline', 257),
('Douar Azla', 258),
('Timezgana', 259),
('\'Ayn Bni Mathar', 260),
('Zegzel', 261),
('Bouchabel', 262),
('Masmouda', 263),
('Skhour Rehamna', 264),
('Bni Tajjit', 265),
('Bni Quolla', 266),
('Khat Azakane', 267),
('L\'Oulja', 268),
('Haddada', 269),
('Ain Mediouna', 270),
('Ezzhiliga', 271),
('Tamazouzt', 272),
('Sidi Allal el Bahraoui', 273),
('Ait Yazza', 274),
('Ras el Oued', 275),
('Ac-cahrij', 276),
('Wawizaght', 277),
('Ifrane', 278),
('Madagh', 279),
('Anazzou', 280),
('Moul El Bergui', 281),
('Tendrara', 282),
('Oulad Bou Rahmoun', 283),
('Driouch', 284),
('Tazert', 285),
('Ain Jemaa', 286),
('Sabbah', 287),
('Ben Taieb', 288),
('Tazzarine', 289),
('Midar', 290),
('Oued Jdida', 291),
('Esbiaat', 292),
('Douar Souk L`qolla', 293),
('Aghbal', 294),
('Tabant', 295),
('Bni Darkoul', 296),
('Gourrama', 297),
('Bhalil', 298),
('Nzalat Laadam', 299),
('Ighrem n\'Ougdal', 300),
('Oulad Driss', 301),
('Zemamra', 302),
('Ayt \'Attou ou L\'Arbi', 303),
('Boula\'wane', 304),
('Bezou', 305),
('Sidi Azzouz', 306),
('Ourtzagh', 307),
('Zemrane', 308),
('Tagalft', 309),
('Temsamane', 310),
('Tounfit', 311),
('Ihaddadene', 312),
('Zaouiat Moulay Bouchta El Khammar', 313),
('Tafrant', 314),
('Douar Hammadi', 315),
('Bou Izakarn', 316),
('Zayda', 317),
('Sidi Abdelkarim', 318),
('Talwat', 319),
('Oulad Chikh', 320),
('Khmis Sidi al \'Aydi', 321),
('Douar Lehgagcha', 322),
('Tamsaout', 323),
('Aghbala', 324),
('Sidi Yahia', 325),
('Mqam at Tolba', 326),
('Kissane Ltouqi', 327),
('Tahannawt', 328),
('Reggada', 329),
('El Kansera', 330),
('Asjen', 331),
('Ksar Sghir', 332),
('Sebt Bni Garfett', 333),
('Oulad Rahmoun', 334),
('Bni Khloug', 335),
('Bou Adel', 336),
('Guisser', 337),
('Tizgane', 338),
('Kasba Tanora', 339),
('Souakene', 340),
('Teroual', 341),
('Oulad Ouchchih', 342),
('Laamarna', 343),
('Zag', 344),
('Ounagha', 345),
('Ait Youssef Ou Ali', 346),
('Zawiat Moulay Brahim', 347),
('Bni Drar', 348),
('Jaidte Lbatma', 349),
('Boumalne', 350),
('Oulad Aissa', 351),
('Oulad Fares', 352),
('Oulad Amrane el Mekki', 353),
('Gharbia', 354),
('Nkheila', 355),
('Tissa', 356),
('Ain Kansara', 357),
('Malloussa', 358),
('Aj Jourf', 359),
('Steha', 360),
('Mayate', 361),
('Oulad Daoud', 362),
('Souq Jamaa Fdalate', 363),
('Al Fayd', 364),
('Ain Beida', 365),
('El Arba Des Bir Lenni', 366),
('Matmata', 367),
('Ait I\'yach', 368),
('Tizi Nisly', 369),
('Sidi Amer El Hadi', 370),
('Moulay Driss Zerhoun', 371),
('Tifni', 372),
('Al M\'aziz', 373),
('Tamezmout', 374),
('Oulad Friha', 375),
('Sidi Moussa Ben Ali', 376),
('Jamaat Shaim', 377),
('Sidi Kasem', 378),
('Derdara', 379),
('Dzouz', 380),
('Timahdit', 381),
('Tawnza', 382),
('Bouabout', 383),
('Douar Trougout', 384),
('El Khemis des Beni Chegdal', 385),
('Lahfayr', 386),
('Ain Legdah', 387),
('Ahlaf', 388),
('Amdel', 389),
('Douar Oulad Naoual', 390),
('Laqraqra', 391),
('Douar Sgarta', 392),
('Lamsabih', 393),
('Tilmi', 394),
('El Ghourdane', 395),
('Ouaklim Oukider', 396),
('Sidi Abdellah Ben Taazizt', 397),
('Touama', 398),
('Iazizatene', 399),
('Zaouiet Says', 400),
('Douar Jwalla', 401),
('Boujediane', 402),
('Iygli', 403),
('Takad Sahel', 404),
('Kariat Ben Aouda', 405),
('Oued Amlil', 406),
('Itzer', 407),
('Jafra', 408),
('Figuig', 409),
('Imi Mokorn', 410),
('Foum Jam\'a', 411),
('Douar Bouchfaa', 412),
('Tanant', 413),
('Taouloukoult', 414),
('Arbaa Sahel', 415),
('Tamanar', 416),
('Abadou', 417),
('Sidi Bousber', 418),
('Agdz', 419),
('Had Laaounate', 420),
('Amtar', 421),
('Hetane', 422),
('Zawyat Ahancal', 423),
('Ain Zora', 424),
('Souq Sebt Says', 425),
('Toundout', 426),
('Mokrisset', 427),
('Tourza', 428),
('Ait Hani', 429),
('Tnine Sidi Lyamani', 430),
('Tiztoutine', 431),
('Tilougguit', 432),
('Sidi Abdallah', 433),
('Dar El Kebdani', 434),
('Douar Echbanat', 435),
('Brikcha', 436),
('Oulad Slim', 437),
('Sidi Rahhal', 438),
('Awfouss', 439),
('Tiddas', 440),
('Beni Oulid', 441),
('Jaqma', 442),
('Bounaamane', 443),
('Ksar Lmajaz', 444),
('Aghbalou n\'Kerdous', 445),
('Sgamna', 446),
('Kenafif', 447),
('La\'tamna', 448),
('Jemaat Oulad Mhamed', 449),
('Tissaf', 450),
('Za\'roura', 451),
('Ech Chaibat', 452),
('Zaggota', 453),
('Taghbalt', 454),
('\'Ain Leuh', 455),
('Tarhjicht', 456),
('Oued Laou', 457),
('Boudinar', 458),
('Kourimat', 459),
('Outa Bouabane', 460),
('Tafersit', 461),
('Saidia', 462),
('Tadla', 463),
('Aklim', 464),
('Aghbalou Aqourar', 465),
('Sidi Ahmed El Khadir', 466),
('Douar Lehouifrat', 467),
('Bni Boufrah', 468),
('Douar Messassa', 469),
('Oulad Imloul', 470),
('Sidi Bou Othmane', 471),
('Tatoufet', 472),
('Bni Gmil', 473),
('Zawyat Sidi Ben Hamdoun', 474),
('El Amim', 475),
('Mhajar', 476),
('Sidi El Hattab', 477),
('Tissint', 478),
('Gammasa', 479),
('Laghzawna', 480),
('Ameskroud', 481),
('Douar Ezzerarda', 482),
('Tanakoub', 483),
('Oulad Cherif', 484),
('Sidi Lahsene', 485),
('Douar Snada', 486),
('Chtiba', 487),
('Sidi Ouassay', 488),
('Bir Tam Tam', 489),
('Smimou', 490),
('Mwaline al Oued', 491),
('Gtarna', 492),
('Iguidiy', 493),
('Bni Sidel', 494),
('Had Dra', 495),
('Foum Zguid', 496),
('Zawyat Sidi al Mekki', 497),
('Iskourane', 498),
('Msemrir', 499),
('Ait Ikkou', 500),
('Imilchil', 501),
('Ait Ouaoumana', 502),
('Bouhlou', 503),
('Agadir Melloul', 504),
('Iaboutene', 505),
('Amarzgane', 506),
('El Marmouta', 507),
('Oualidia', 508),
('Sidi Dahbi', 509),
('Sidi el Mokhfi', 510),
('Hassi Berkane', 511),
('Tiqqi', 512),
('Tleta Taghramt', 513),
('Ben Qarrich', 514),
('Mirleft', 515),
('Lakhzazra', 516),
('Lambarkiyine', 517),
('Oulad Khallouf', 518),
('Iksane', 519),
('Talambote', 520),
('Laanoussar', 521),
('Tizoual', 522),
('Ait Ali Mimoune', 523),
('Moulay Bou \'azza', 524),
('Boured', 525),
('Kerrouchen', 526),
('Ghassat', 527),
('Nzalat Bni Amar', 528),
('Douar Mezaoura', 529),
('Imoulas', 530),
('Mrizig', 531),
('Ait Tagalla', 532),
('Tarfaya', 533),
('Souk Khmis Bni Arouss', 534),
('Oulad Chbana', 535),
('Meghraoua', 536),
('Melqa el Ouidane', 537),
('Fifi', 538),
('Kef el Rhar', 539),
('Imi n-Tlit', 540),
('Sidi \'Ali Bou Aqba', 541),
('El Meghassine', 542),
('Mezguitem', 543),
('Tafraoutane', 544),
('Arazane', 545),
('Ida Ou Azza', 546),
('Moulay Abdelkader', 547),
('Had Kourt', 548),
('Talat-n-Ya\'qoub', 549),
('Lalla Takerkoust', 550),
('Sidi Ahmed Ben Aissa', 551),
('Timezgadiouine', 552),
('Jouamaa', 553),
('Ouirgane', 554),
('Al Orjane', 555),
('Zinat', 556),
('Anzi', 557),
('Oulad Hassoune', 558),
('Ait Hadi', 559),
('Mhamid el Rhozlane', 560),
('Beni Oual Sehira', 561),
('Ras Kebdana', 562),
('Ait Hammou', 563),
('Adassil', 564),
('Tafetachte', 565),
('Douar Brarba', 566),
('Taznakht', 567),
('Tazoult', 568),
('Askawn', 569),
('Douar Oulad Boussaken', 570),
('Lahouarta', 571),
('Douar Tassift', 572),
('Sidi al Ghandour', 573),
('Oued El Makhazine', 574),
('Sidi \'Allal al Mcader', 575),
('Oulad Cherki', 576),
('Boulemane', 577),
('Bou Iferda', 578),
('Arbaa Ayacha', 579),
('Douar Drissiine', 580),
('Ouardana', 581),
('Nkob', 582),
('Assoul', 583),
('Rouadi', 584),
('Douar Oulad Amer', 585),
('Timlilt', 586),
('Oued Naanaa', 587),
('Assebbab', 588),
('Sidi Yahia Sawad', 589),
('Ichemrarn', 590),
('Mzefroune', 591),
('Zaouiat Sidi Hammou Ben Hmida', 592),
('Taliwine', 593),
('Oulad Sbih', 594),
('Assais', 595),
('Azgour', 596),
('Tizi Ouzli', 597),
('El Maader El Kabir', 598),
('Ait Said', 599),
('Akka', 600),
('Assays', 601),
('Ghafsai', 602),
('Mejji', 603),
('Znada', 604),
('Douar el Caid el Gueddari', 605),
('Zerkat', 606),
('Timoulilt', 607),
('Khmis Sidi Yahia', 608),
('Ijoukak', 609),
('Douar Oulad Mkoudou', 610),
('Et Tnine des Beni Ammart', 611),
('Tafingoult', 612),
('Douar El Gouzal', 613),
('Ras Ijerri', 614),
('Douar Tassila Imassouane', 615),
('Mestigmer', 616),
('Ida Ou Gailal', 617),
('Ras Tabouda', 618),
('Saidat', 619),
('Tancherfi', 620),
('Tafraout', 621),
('Tiyghmi', 622),
('Beni Sidal Louta', 623),
('Douar Oulad Jaber', 624),
('Souq at Tlata des Loulad', 625),
('Tazouta', 626),
('Amrharas', 627),
('Bir Anzarane', 628),
('Ida Ou Moumene', 629),
('Kechoulah', 630),
('Sidi Mbark', 631),
('Moulay Bouzarqtoune', 632),
('Tazemmourt', 633),
('Oulad Amghar', 634),
('Bni Abdellah', 635),
('Douar Tazrout', 636),
('Douar Oulad Bou Krae El Fouqani', 637),
('Tinzart', 638),
('El Arba Bouzemmour', 639),
('Ait Ouakrim', 640),
('Amersid', 641),
('Ighil', 642),
('Sidi Harazem', 643),
('Bni Hadifa', 644),
('Ait el Farsi', 645),
('Oulad Zarrad', 646),
('El Aargub', 647),
('Tichla', 648),
('Dhar Souk', 649),
('Ait Ban', 650),
('Tafadna', 651),
('Mechra-Hommadi', 652),
('Jemaat Moul Blad', 653),
('Ajdir', 654),
('Guenfouda', 655),
('Imigdal', 656),
('Bine Al Widane', 657),
('Imouzzer des Ida ou Tanane', 658),
('Taghazout', 659),
('Taliouine', 660),
('Tizagzawine', 661),
('Timzguida Ouftas', 662),
('Izmorene', 663),
('Tiouli', 664),
('Akarma', 665),
('Douar Oulad Amer Leqliaa', 666),
('Aghbar', 667),
('Bigoudine', 668),
('Oulad Messaoud', 669),
('Fezouane', 670),
('Bab Boudir', 671),
('Recani', 672),
('Moulay Driss Aghbal', 673),
('Azrar', 674),
('Uad Damran', 675),
('Oulad \'Azzouz', 676),
('Bou Zemou', 677),
('Douar Oulad Bouziane', 678),
('Douar El Mellaliyine', 679),
('Alougoum', 680),
('Matarka', 681),
('Ain Bida', 682),
('Mzizal', 683),
('Bghaghza', 684),
('Sidi Bettach', 685),
('Outerbat', 686),
('Taouz', 687),
('Beni Khaled', 688),
('Saddina', 689),
('Adis', 690),
('Akka Irene', 691),
('Tadighoust', 692),
('Oum Azza', 693),
('Oulad Aissa', 694),
('Zawyat Sidi Hamza', 695),
('Ait Athmane', 696),
('Timoulay Izder', 697),
('Tafetchna', 698),
('Ez Zinat', 699),
('Souk el Had-des Beni-Batao', 700),
('Lemsid', 701);

-- --------------------------------------------------------

--
-- Table structure for table `object_state`
--

CREATE TABLE `object_state` (
  `id` int(11) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firsname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `photo` blob NOT NULL,
  `creatAt` datetime NOT NULL,
  `deleteAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firsname`, `lastname`, `email`, `password`, `photo`, `creatAt`, `deleteAt`) VALUES
(31, 'Flavia', 'Shields', 'hizobi@mailinator.com', '$2y$10$tV96Tqbv3qBP49mVME9BAO5giYbMnj.S7on3jnKX.mE0da2NtZoQe', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Ingrid', 'Shepherd', 'kogysexeg@mailinator.com', '$2y$10$psU2KzQRXucPPuG9MMBcl.UHQRx2HMFmslPRASg9pY.p.VTB35IdC', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `worldcities_names_only`
--

CREATE TABLE `worldcities_names_only` (
  `COL 1` varchar(33) DEFAULT NULL,
  `COL 2` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worldcities_names_only`
--

INSERT INTO `worldcities_names_only` (`COL 1`, `COL 2`) VALUES
('Casablanca', 1),
('El Kelaa des Srarhna', 2),
('Fes', 3),
('Rabat', 4),
('Tifariti', 5),
('Tangier', 6),
('Marrakech', 7),
('Sale', 8),
('Meknes', 9),
('Oujda-Angad', 10),
('Kenitra', 11),
('Agadir', 12),
('Tetouan', 13),
('Taourirt', 14),
('Temara', 15),
('Safi', 16),
('Mohammedia', 17),
('El Jadid', 18),
('Kouribga', 19),
('Beni Mellal', 20),
('Laayoune', 21),
('Ait Melloul', 22),
('Nador', 23),
('Taza', 24),
('Barrechid', 25),
('Settat', 26),
('Inezgane', 27),
('Al Khmissat', 28),
('Ksar El Kebir', 29),
('Mediouna', 30),
('Larache', 31),
('Khenifra', 32),
('Guelmim', 33),
('Berkane', 34),
('Al Fqih Ben Calah', 35),
('Bouskoura', 36),
('Oued Zem', 37),
('Sidi Slimane', 38),
('Guercif', 39),
('Errachidia', 40),
('Ben Guerir', 41),
('Oulad Teima', 42),
('Fnidq', 43),
('Sidi Qacem', 44),
('Moulay Abdallah', 45),
('Warzat', 46),
('Youssoufia', 47),
('Ain Harrouda', 48),
('Martil', 49),
('Ouezzane', 50),
('Sidi Bennour', 51),
('Sidi Yahya Zaer', 52),
('Midalt', 53),
('Azrou', 54),
('Al Hoceima', 55),
('Boujad', 56),
('Ain El Aouda', 57),
('Qasbat Tadla', 58),
('Beni Yakhlef', 59),
('Azemmour', 60),
('Mrirt', 61),
('Jerada', 62),
('El Aioun', 63),
('Temsia', 64),
('Aziylal', 65),
('Ait Ourir', 66),
('Zagora', 67),
('Biougra', 68),
('Sidi Yahia El Gharb', 69),
('El Hajeb', 70),
('Zaio', 71),
('Zeghanghane', 72),
('Tit Mellil', 73),
('Mechraa Bel Ksiri', 74),
('Sidi Smai\'il', 75),
('Arfoud', 76),
('Demnat', 77),
('Bou Arfa', 78),
('Mehdya', 79),
('Ain Taoujdat', 80),
('Tahla', 81),
('Missour', 82),
('Zawyat ech Cheikh', 83),
('Oulad Tayeb', 84),
('Sidi Lmokhtar', 85),
('Douar Toulal', 86),
('Oulad Fraj', 87),
('Ahfir', 88),
('Bou Djeniba', 89),
('Goulmima', 90),
('Sidi Zouine', 91),
('Ait Yaazem', 92),
('Oulad Hamdane', 93),
('Laaouama', 94),
('Targuist', 95),
('Bou Fekrane', 96),
('El Menzel', 97),
('Oulad Ayyad', 98),
('Ar Rommani', 99),
('Boudenib', 100),
('Ain Lehjer', 101),
('Oulad Ben Sebbah', 102),
('Beni Bou Yafroun', 103),
('Ad Dakhla', 104),
('Wislane', 105),
('Tiflet', 106),
('Lqoliaa', 107),
('Sefrou', 108),
('Taroudannt', 109),
('Essaouira', 110),
('Ait Ali', 111),
('Tiznit', 112),
('Tan-Tan', 113),
('Sa\'ada', 114),
('Skhirate', 115),
('Benslimane', 116),
('Beni Enzar', 117),
('M\'diq', 118),
('Ad Darwa', 119),
('Al Aaroui', 120),
('Semara', 121),
('Chefchaouene', 122),
('Sidi Mohamed Lahmar', 123),
('Tineghir', 124),
('Zoumi', 125),
('Douar Laouamra', 126),
('Sidi Bibi', 127),
('Taounate', 128),
('Bouznika', 129),
('Aguelmous', 130),
('Aourir', 131),
('Imzouren', 132),
('Mnasra', 133),
('Oulad Zemam', 134),
('Ben Ahmed', 135),
('Arbaoua', 136),
('Douar Oulad Hssine', 137),
('Dar Ould Zidouh', 138),
('Bahharet Oulad Ayyad', 139),
('Asilah', 140),
('Mograne', 141),
('Lalla Mimouna', 142),
('Souk et Tnine Jorf el Mellah', 143),
('Tameslouht', 144),
('Chichaoua', 145),
('Fritissa', 146),
('Oulad Yaich', 147),
('Taza', 148),
('Douar Oulad Aj-jabri', 149),
('Oulad Hammou', 150),
('Bellaa', 151),
('Dar Bel Hamri', 152),
('Moulay Bousselham', 153),
('Ksebia', 154),
('Sabaa Aiyoun', 155),
('Tamorot', 156),
('Bouknadel', 157),
('Ait Faska', 158),
('Bourdoud', 159),
('Boureit', 160),
('Oulad Barhil', 161),
('Oulad Said', 162),
('Lamzoudia', 163),
('Ain Aicha', 164),
('El Ghiate', 165),
('Safsaf', 166),
('Echemmaia Est', 167),
('Ouaoula', 168),
('Douar Olad. Salem', 169),
('Douar \'Ayn Dfali', 170),
('Skoura', 171),
('Setti Fatma', 172),
('Gueznaia', 173),
('Zawyat an Nwacer', 174),
('Khenichet-sur Ouerrha', 175),
('Douar Ouled Ayad', 176),
('Oulad Hassoune', 177),
('Ayt Mohamed', 178),
('Bni Frassen', 179),
('Tighedouine', 180),
('Sidi Ifni', 181),
('Alnif', 182),
('Souk Tlet El Gharb', 183),
('Afourar', 184),
('Selouane', 185),
('Imi-n-Tanout', 186),
('El Ksiba', 187),
('Tidili Masfiywat', 188),
('Amizmiz', 189),
('Tamgrout', 190),
('Sidi Rahal', 191),
('Asni', 192),
('Oulad Embarek', 193),
('Al Brouj', 194),
('Imi n\'Oulaoun', 195),
('Saka', 196),
('Bni Rzine', 197),
('Sidi Chiker', 198),
('Douar Lamrabih', 199),
('Sidi Jaber', 200),
('Station des Essais M.V.A.', 201),
('Ain Cheggag', 202),
('Jdour', 203),
('Imouzzer Kandar', 204),
('\'Ali Ben Sliman', 205),
('El Mansouria', 206),
('Tarhzirt', 207),
('Had Zraqtane', 208),
('Ait Tamlil', 209),
('Zaouia Ait Ishak', 210),
('Jnane Bouih', 211),
('Oulad Salmane', 212),
('Ait Bousarane', 213),
('Sebt Gzoula', 214),
('Sidi Redouane', 215),
('Karia Ba Mohamed', 216),
('Ait Ben Daoudi', 217),
('Beni Zouli', 218),
('Oulmes', 219),
('Jbabra', 220),
('Sidi Allal Tazi', 221),
('Tamri', 222),
('Tata', 223),
('Chouafaa', 224),
('Foum el Anser', 225),
('Lamrasla', 226),
('Ait Bouchta', 227),
('Ribat Al Khayr', 228),
('Bouarouss', 229),
('Ikniwn', 230),
('Ghouazi', 231),
('Outat Oulad Al Haj', 232),
('Al Qbab', 233),
('Douar Oulad Mbarek', 234),
('Qal\'at Mgouna', 235),
('Laatatra', 236),
('Ait Majdane', 237),
('Agourai', 238),
('Awlouz', 239),
('Sahel', 240),
('Ketama', 241),
('Dar Chaifat', 242),
('Galaz', 243),
('Milla\'ab', 244),
('Talsint', 245),
('Tamallalt', 246),
('Sidi Yakoub', 247),
('Tagounite', 248),
('Knemis Dades', 249),
('Oulad Amrane', 250),
('Ratba', 251),
('Ouaouzgane', 252),
('Sidi Lamine', 253),
('Douar Tabouda', 254),
('Sidi Ettiji', 255),
('Zirara', 256),
('Tirhassaline', 257),
('Douar Azla', 258),
('Timezgana', 259),
('\'Ayn Bni Mathar', 260),
('Zegzel', 261),
('Bouchabel', 262),
('Masmouda', 263),
('Skhour Rehamna', 264),
('Bni Tajjit', 265),
('Bni Quolla', 266),
('Khat Azakane', 267),
('L\'Oulja', 268),
('Haddada', 269),
('Ain Mediouna', 270),
('Ezzhiliga', 271),
('Tamazouzt', 272),
('Sidi Allal el Bahraoui', 273),
('Ait Yazza', 274),
('Ras el Oued', 275),
('Ac-cahrij', 276),
('Wawizaght', 277),
('Ifrane', 278),
('Madagh', 279),
('Anazzou', 280),
('Moul El Bergui', 281),
('Tendrara', 282),
('Oulad Bou Rahmoun', 283),
('Driouch', 284),
('Tazert', 285),
('Ain Jemaa', 286),
('Sabbah', 287),
('Ben Taieb', 288),
('Tazzarine', 289),
('Midar', 290),
('Oued Jdida', 291),
('Esbiaat', 292),
('Douar Souk L`qolla', 293),
('Aghbal', 294),
('Tabant', 295),
('Bni Darkoul', 296),
('Gourrama', 297),
('Bhalil', 298),
('Nzalat Laadam', 299),
('Ighrem n\'Ougdal', 300),
('Oulad Driss', 301),
('Zemamra', 302),
('Ayt \'Attou ou L\'Arbi', 303),
('Boula\'wane', 304),
('Bezou', 305),
('Sidi Azzouz', 306),
('Ourtzagh', 307),
('Zemrane', 308),
('Tagalft', 309),
('Temsamane', 310),
('Tounfit', 311),
('Ihaddadene', 312),
('Zaouiat Moulay Bouchta El Khammar', 313),
('Tafrant', 314),
('Douar Hammadi', 315),
('Bou Izakarn', 316),
('Zayda', 317),
('Sidi Abdelkarim', 318),
('Talwat', 319),
('Oulad Chikh', 320),
('Khmis Sidi al \'Aydi', 321),
('Douar Lehgagcha', 322),
('Tamsaout', 323),
('Aghbala', 324),
('Sidi Yahia', 325),
('Mqam at Tolba', 326),
('Kissane Ltouqi', 327),
('Tahannawt', 328),
('Reggada', 329),
('El Kansera', 330),
('Asjen', 331),
('Ksar Sghir', 332),
('Sebt Bni Garfett', 333),
('Oulad Rahmoun', 334),
('Bni Khloug', 335),
('Bou Adel', 336),
('Guisser', 337),
('Tizgane', 338),
('Kasba Tanora', 339),
('Souakene', 340),
('Teroual', 341),
('Oulad Ouchchih', 342),
('Laamarna', 343),
('Zag', 344),
('Ounagha', 345),
('Ait Youssef Ou Ali', 346),
('Zawiat Moulay Brahim', 347),
('Bni Drar', 348),
('Jaidte Lbatma', 349),
('Boumalne', 350),
('Oulad Aissa', 351),
('Oulad Fares', 352),
('Oulad Amrane el Mekki', 353),
('Gharbia', 354),
('Nkheila', 355),
('Tissa', 356),
('Ain Kansara', 357),
('Malloussa', 358),
('Aj Jourf', 359),
('Steha', 360),
('Mayate', 361),
('Oulad Daoud', 362),
('Souq Jamaa Fdalate', 363),
('Al Fayd', 364),
('Ain Beida', 365),
('El Arba Des Bir Lenni', 366),
('Matmata', 367),
('Ait I\'yach', 368),
('Tizi Nisly', 369),
('Sidi Amer El Hadi', 370),
('Moulay Driss Zerhoun', 371),
('Tifni', 372),
('Al M\'aziz', 373),
('Tamezmout', 374),
('Oulad Friha', 375),
('Sidi Moussa Ben Ali', 376),
('Jamaat Shaim', 377),
('Sidi Kasem', 378),
('Derdara', 379),
('Dzouz', 380),
('Timahdit', 381),
('Tawnza', 382),
('Bouabout', 383),
('Douar Trougout', 384),
('El Khemis des Beni Chegdal', 385),
('Lahfayr', 386),
('Ain Legdah', 387),
('Ahlaf', 388),
('Amdel', 389),
('Douar Oulad Naoual', 390),
('Laqraqra', 391),
('Douar Sgarta', 392),
('Lamsabih', 393),
('Tilmi', 394),
('El Ghourdane', 395),
('Ouaklim Oukider', 396),
('Sidi Abdellah Ben Taazizt', 397),
('Touama', 398),
('Iazizatene', 399),
('Zaouiet Says', 400),
('Douar Jwalla', 401),
('Boujediane', 402),
('Iygli', 403),
('Takad Sahel', 404),
('Kariat Ben Aouda', 405),
('Oued Amlil', 406),
('Itzer', 407),
('Jafra', 408),
('Figuig', 409),
('Imi Mokorn', 410),
('Foum Jam\'a', 411),
('Douar Bouchfaa', 412),
('Tanant', 413),
('Taouloukoult', 414),
('Arbaa Sahel', 415),
('Tamanar', 416),
('Abadou', 417),
('Sidi Bousber', 418),
('Agdz', 419),
('Had Laaounate', 420),
('Amtar', 421),
('Hetane', 422),
('Zawyat Ahancal', 423),
('Ain Zora', 424),
('Souq Sebt Says', 425),
('Toundout', 426),
('Mokrisset', 427),
('Tourza', 428),
('Ait Hani', 429),
('Tnine Sidi Lyamani', 430),
('Tiztoutine', 431),
('Tilougguit', 432),
('Sidi Abdallah', 433),
('Dar El Kebdani', 434),
('Douar Echbanat', 435),
('Brikcha', 436),
('Oulad Slim', 437),
('Sidi Rahhal', 438),
('Awfouss', 439),
('Tiddas', 440),
('Beni Oulid', 441),
('Jaqma', 442),
('Bounaamane', 443),
('Ksar Lmajaz', 444),
('Aghbalou n\'Kerdous', 445),
('Sgamna', 446),
('Kenafif', 447),
('La\'tamna', 448),
('Jemaat Oulad Mhamed', 449),
('Tissaf', 450),
('Za\'roura', 451),
('Ech Chaibat', 452),
('Zaggota', 453),
('Taghbalt', 454),
('\'Ain Leuh', 455),
('Tarhjicht', 456),
('Oued Laou', 457),
('Boudinar', 458),
('Kourimat', 459),
('Outa Bouabane', 460),
('Tafersit', 461),
('Saidia', 462),
('Tadla', 463),
('Aklim', 464),
('Aghbalou Aqourar', 465),
('Sidi Ahmed El Khadir', 466),
('Douar Lehouifrat', 467),
('Bni Boufrah', 468),
('Douar Messassa', 469),
('Oulad Imloul', 470),
('Sidi Bou Othmane', 471),
('Tatoufet', 472),
('Bni Gmil', 473),
('Zawyat Sidi Ben Hamdoun', 474),
('El Amim', 475),
('Mhajar', 476),
('Sidi El Hattab', 477),
('Tissint', 478),
('Gammasa', 479),
('Laghzawna', 480),
('Ameskroud', 481),
('Douar Ezzerarda', 482),
('Tanakoub', 483),
('Oulad Cherif', 484),
('Sidi Lahsene', 485),
('Douar Snada', 486),
('Chtiba', 487),
('Sidi Ouassay', 488),
('Bir Tam Tam', 489),
('Smimou', 490),
('Mwaline al Oued', 491),
('Gtarna', 492),
('Iguidiy', 493),
('Bni Sidel', 494),
('Had Dra', 495),
('Foum Zguid', 496),
('Zawyat Sidi al Mekki', 497),
('Iskourane', 498),
('Msemrir', 499),
('Ait Ikkou', 500),
('Imilchil', 501),
('Ait Ouaoumana', 502),
('Bouhlou', 503),
('Agadir Melloul', 504),
('Iaboutene', 505),
('Amarzgane', 506),
('El Marmouta', 507),
('Oualidia', 508),
('Sidi Dahbi', 509),
('Sidi el Mokhfi', 510),
('Hassi Berkane', 511),
('Tiqqi', 512),
('Tleta Taghramt', 513),
('Ben Qarrich', 514),
('Mirleft', 515),
('Lakhzazra', 516),
('Lambarkiyine', 517),
('Oulad Khallouf', 518),
('Iksane', 519),
('Talambote', 520),
('Laanoussar', 521),
('Tizoual', 522),
('Ait Ali Mimoune', 523),
('Moulay Bou \'azza', 524),
('Boured', 525),
('Kerrouchen', 526),
('Ghassat', 527),
('Nzalat Bni Amar', 528),
('Douar Mezaoura', 529),
('Imoulas', 530),
('Mrizig', 531),
('Ait Tagalla', 532),
('Tarfaya', 533),
('Souk Khmis Bni Arouss', 534),
('Oulad Chbana', 535),
('Meghraoua', 536),
('Melqa el Ouidane', 537),
('Fifi', 538),
('Kef el Rhar', 539),
('Imi n-Tlit', 540),
('Sidi \'Ali Bou Aqba', 541),
('El Meghassine', 542),
('Mezguitem', 543),
('Tafraoutane', 544),
('Arazane', 545),
('Ida Ou Azza', 546),
('Moulay Abdelkader', 547),
('Had Kourt', 548),
('Talat-n-Ya\'qoub', 549),
('Lalla Takerkoust', 550),
('Sidi Ahmed Ben Aissa', 551),
('Timezgadiouine', 552),
('Jouamaa', 553),
('Ouirgane', 554),
('Al Orjane', 555),
('Zinat', 556),
('Anzi', 557),
('Oulad Hassoune', 558),
('Ait Hadi', 559),
('Mhamid el Rhozlane', 560),
('Beni Oual Sehira', 561),
('Ras Kebdana', 562),
('Ait Hammou', 563),
('Adassil', 564),
('Tafetachte', 565),
('Douar Brarba', 566),
('Taznakht', 567),
('Tazoult', 568),
('Askawn', 569),
('Douar Oulad Boussaken', 570),
('Lahouarta', 571),
('Douar Tassift', 572),
('Sidi al Ghandour', 573),
('Oued El Makhazine', 574),
('Sidi \'Allal al Mcader', 575),
('Oulad Cherki', 576),
('Boulemane', 577),
('Bou Iferda', 578),
('Arbaa Ayacha', 579),
('Douar Drissiine', 580),
('Ouardana', 581),
('Nkob', 582),
('Assoul', 583),
('Rouadi', 584),
('Douar Oulad Amer', 585),
('Timlilt', 586),
('Oued Naanaa', 587),
('Assebbab', 588),
('Sidi Yahia Sawad', 589),
('Ichemrarn', 590),
('Mzefroune', 591),
('Zaouiat Sidi Hammou Ben Hmida', 592),
('Taliwine', 593),
('Oulad Sbih', 594),
('Assais', 595),
('Azgour', 596),
('Tizi Ouzli', 597),
('El Maader El Kabir', 598),
('Ait Said', 599),
('Akka', 600),
('Assays', 601),
('Ghafsai', 602),
('Mejji', 603),
('Znada', 604),
('Douar el Caid el Gueddari', 605),
('Zerkat', 606),
('Timoulilt', 607),
('Khmis Sidi Yahia', 608),
('Ijoukak', 609),
('Douar Oulad Mkoudou', 610),
('Et Tnine des Beni Ammart', 611),
('Tafingoult', 612),
('Douar El Gouzal', 613),
('Ras Ijerri', 614),
('Douar Tassila Imassouane', 615),
('Mestigmer', 616),
('Ida Ou Gailal', 617),
('Ras Tabouda', 618),
('Saidat', 619),
('Tancherfi', 620),
('Tafraout', 621),
('Tiyghmi', 622),
('Beni Sidal Louta', 623),
('Douar Oulad Jaber', 624),
('Souq at Tlata des Loulad', 625),
('Tazouta', 626),
('Amrharas', 627),
('Bir Anzarane', 628),
('Ida Ou Moumene', 629),
('Kechoulah', 630),
('Sidi Mbark', 631),
('Moulay Bouzarqtoune', 632),
('Tazemmourt', 633),
('Oulad Amghar', 634),
('Bni Abdellah', 635),
('Douar Tazrout', 636),
('Douar Oulad Bou Krae El Fouqani', 637),
('Tinzart', 638),
('El Arba Bouzemmour', 639),
('Ait Ouakrim', 640),
('Amersid', 641),
('Ighil', 642),
('Sidi Harazem', 643),
('Bni Hadifa', 644),
('Ait el Farsi', 645),
('Oulad Zarrad', 646),
('El Aargub', 647),
('Tichla', 648),
('Dhar Souk', 649),
('Ait Ban', 650),
('Tafadna', 651),
('Mechra-Hommadi', 652),
('Jemaat Moul Blad', 653),
('Ajdir', 654),
('Guenfouda', 655),
('Imigdal', 656),
('Bine Al Widane', 657),
('Imouzzer des Ida ou Tanane', 658),
('Taghazout', 659),
('Taliouine', 660),
('Tizagzawine', 661),
('Timzguida Ouftas', 662),
('Izmorene', 663),
('Tiouli', 664),
('Akarma', 665),
('Douar Oulad Amer Leqliaa', 666),
('Aghbar', 667),
('Bigoudine', 668),
('Oulad Messaoud', 669),
('Fezouane', 670),
('Bab Boudir', 671),
('Recani', 672),
('Moulay Driss Aghbal', 673),
('Azrar', 674),
('Uad Damran', 675),
('Oulad \'Azzouz', 676),
('Bou Zemou', 677),
('Douar Oulad Bouziane', 678),
('Douar El Mellaliyine', 679),
('Alougoum', 680),
('Matarka', 681),
('Ain Bida', 682),
('Mzizal', 683),
('Bghaghza', 684),
('Sidi Bettach', 685),
('Outerbat', 686),
('Taouz', 687),
('Beni Khaled', 688),
('Saddina', 689),
('Adis', 690),
('Akka Irene', 691),
('Tadighoust', 692),
('Oum Azza', 693),
('Oulad Aissa', 694),
('Zawyat Sidi Hamza', 695),
('Ait Athmane', 696),
('Timoulay Izder', 697),
('Tafetchna', 698),
('Ez Zinat', 699),
('Souk el Had-des Beni-Batao', 700),
('Lemsid', 701);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annonce_type`
--
ALTER TABLE `annonce_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `annonce_type`
--
ALTER TABLE `annonce_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;