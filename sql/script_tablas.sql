--tabla alumno
create table alumno(
	id_alumno serial primary key,
	ap_paterno varchar(150) not null,
	ap_materno varchar(150) not null,
	nombre varchar(150) not null,
	email varchar(150) not null,
	contrasena varchar(255) not null,
	rol varchar(200) not null
);

--tabla profesor
create table profesor(
	num_trabajador integer not null primary key,
	ap_paterno varchar(150) not null,
	ap_materno varchar(150) not null,
	nombre varchar(150) not null,
	email varchar(150) not null,
	contrasena varchar(10) not null,
	rol varchar(200) not null
);

--tabla validar profesor
create table validar_profesor(
	id_vp serial primary key,
	num_trabajador integer not null,
	CONSTRAINT num_trabajador UNIQUE (num_trabajador)
        INCLUDE(num_trabajador)
);

--insercion datos numero de trabajador
INSERT INTO public.validar_profesor(num_trabajador)
	VALUES(890299),
(903571),
(806326),
(819148),
(850557),
(808121),
(153822),
(81727),
(863651),
(146187),
(840649),
(880860),
(836871),
(113854),
(810883),
(83188),
(903713),
(880988),
(883887),
(890722),
(898149),
(90847),
(818073),
(881074),
(857304),
(849182),
(871683),
(810811),
(868401),
(904137),
(895664),
(874093),
(111702),
(861324),
(880487),
(810727),
(868862),
(887227),
(67346),
(840042),
(145037),
(841274),
(89827),
(142235),
(117452),
(149860),
(897716),
(861879),
(846384),
(899356),
(136006),
(151342),
(811007),
(101760),
(899844),
(99137),
(114044),
(895000),
(85702),
(890489),
(837986),
(823995),
(823830),
(857101),
(878102),
(156123),
(878251),
(818821),
(809124),
(815651),
(841871),
(838898),
(813044),
(852874),
(888925),
(818291),
(903415),
(830668),
(802858),
(901725),
(108090),
(108022),
(820208),
(83100),
(826917),
(888662),
(132771),
(884175),
(61217),
(852693),
(838359),
(891865),
(812791),
(152568),
(890517),
(59452),
(846124),
(134532),
(828859),
(850706),
(827335),
(848269),
(819913),
(873767),
(91465),
(842506),
(810886),
(902340),
(878087),
(850103),
(101530),
(878403),
(135829),
(888212),
(880514),
(833867),
(141831),
(852605),
(148875),
(848873),
(871607),
(902046),
(752051),
(98154),
(850280),
(831359),
(850935),
(883632),
(145441),
(890613),
(886024),
(101223),
(894275),
(856878),
(861264),
(801028),
(898621),
(118660),
(827333),
(846819),
(859427),
(86707),
(897468),
(817660),
(811874),
(896362),
(814798),
(825334),
(37934),
(873605),
(74061),
(838180),
(810747),
(880953),
(841870),
(886069),
(859162),
(821417),
(828940),
(819151),
(866274),
(900082),
(875636),
(862596),
(873596),
(800462),
(125367),
(830504),
(131311),
(880774),
(895884),
(878222),
(871506),
(834907),
(895422),
(153957),
(891365),
(132869),
(876352),
(899459),
(881636),
(96323),
(801609),
(903569),
(832730),
(869667),
(829748),
(862353),
(817359),
(889365),
(898054),
(812162),
(138785),
(812823),
(870874),
(875969),
(861350),
(895234),
(842065),
(861293),
(895548),
(810354),
(825634),
(897454),
(866101),
(863898),
(143124),
(135319),
(904143),
(875816),
(87275),
(878482),
(820531),
(886074),
(123453),
(903788),
(142708),
(815927),
(849661),
(148844),
(868899),
(93107),
(720058),
(814648),
(900083),
(817871),
(839928),
(850891),
(818267),
(901924),
(821415),
(878694),
(851316),
(897746),
(849908),
(825766),
(860533),
(901673),
(812912),
(891147),
(827039),
(890192),
(83561),
(895273),
(138823),
(156144),
(116698),
(837367),
(853309),
(899569),
(108333),
(131313),
(832827),
(158757),
(866314),
(825741),
(133286),
(903595),
(821440),
(160638),
(722014),
(836866),
(812943),
(898626),
(106422),
(825619),
(888666),
(55837),
(143974),
(895179),
(808882),
(871168),
(859622),
(860701),
(849513),
(812205),
(822452),
(871922),
(144243),
(900651),
(109920),
(855109),
(875877),
(852902),
(891088),
(158677),
(817873),
(873745),
(802160),
(830404),
(890493),
(840652),
(895979),
(108098),
(863576),
(875737),
(855445),
(861007),
(810796),
(825774),
(827450),
(862387),
(903497),
(156436),
(151222),
(150728),
(903356),
(861252),
(812933),
(812146),
(128864),
(821104),
(848723),
(896307),
(842663),
(816800),
(888865),
(890230),
(144007),
(120936),
(886063),
(814650),
(884425),
(878546),
(138919),
(893295),
(888446),
(895261),
(807865),
(850033),
(885700),
(900834),
(895268),
(814122),
(842467),
(822299),
(152928),
(820996),
(892999),
(880974),
(856930),
(158791),
(895225),
(895093),
(838374),
(155824),
(814515),
(859410),
(850791),
(93717),
(892756),
(808953),
(817388),
(155044),
(830864),
(122238),
(812147),
(874798),
(836352),
(822398),
(818097),
(865994),
(859611),
(52438),
(861003),
(861388),
(59152),
(160290),
(44761),
(147996),
(848177),
(105801),
(846394),
(901921),
(875582),
(842223),
(901652),
(832534),
(897446),
(123596),
(827403),
(814378),
(903563),
(814513),
(114073),
(811807),
(838075),
(819817),
(143827),
(859648),
(854984),
(118446),
(812087),
(93062),
(897944),
(162316),
(842055),
(885951),
(834412),
(880800),
(847015),
(897686),
(873717),
(822409),
(832327),
(897730),
(836564),
(95810),
(155647),
(855446),
(859621),
(132664),
(874841),
(846823),
(902047),
(816257),
(109769),
(87132),
(143979),
(868272),
(813123),
(160865),
(90001),
(898315),
(897509),
(132488),
(863599),
(52105),
(816524),
(880455),
(812210),
(820108),
(834655),
(878507),
(160933),
(123401),
(853816),
(132604),
(878396),
(846428),
(147215),
(886075),
(891785),
(880629),
(880850),
(160330),
(109859),
(875812),
(133847),
(107654),
(861274),
(806324),
(873023),
(149424),
(876198),
(144033),
(103897),
(833185),
(902191),
(857891),
(125546),
(156148),
(825903),
(904662),
(863578),
(864057),
(147114),
(820767),
(50357),
(865988),
(65932),
(886105),
(825699),
(863412),
(898157),
(899457),
(875935),
(873614),
(833066),
(800628),
(873559),
(828739),
(138242),
(818654),
(904622),
(866940),
(899616),
(903314),
(855485),
(830962),
(887342),
(895215),
(868886),
(897599),
(871488),
(885459),
(146194),
(96326),
(896407),
(848352),
(900386),
(883331),
(823257),
(874228),
(832540),
(125547),
(136018),
(810762),
(878229),
(144628),
(861360),
(842150),
(162340),
(890654),
(815518),
(849078),
(826043),
(819953),
(810574),
(833024),
(105803),
(883300),
(839779),
(883666),
(823676),
(895663),
(829695),
(816307),
(62114),
(809012),
(878092),
(812992),
(127443),
(141251),
(836958),
(153237),
(903359),
(866466),
(821255),
(158586),
(802536),
(160176),
(856821),
(868388),
(802316),
(850601),
(834542),
(890815),
(859661),
(822976),
(891868),
(876342),
(823833),
(823986),
(850815),
(859644),
(808594),
(873939),
(891320),
(870850),
(839984),
(126202),
(818612),
(888267),
(904938),
(104883),
(141253),
(821464),
(848086),
(818538),
(843815),
(96719),
(150317),
(814888),
(143134),
(859143),
(838701),
(73545),
(821273),
(840320),
(802877),
(815217),
(152989),
(823687),
(899358),
(899366),
(898131),
(899079),
(895875),
(898624),
(897544),
(865806),
(145712),
(147691),
(161692),
(149586),
(897009),
(866060),
(740859),
(903769),
(895413),
(143832),
(855264),
(861599),
(820225),
(849881),
(138882),
(901939),
(846935),
(828925),
(158899),
(844656),
(904038),
(883420),
(831197),
(866722),
(856524),
(888671),
(904021),
(868398),
(881773),
(863788),
(817057),
(154236),
(121864),
(809873),
(897479),
(87279),
(89222),
(903520),
(848668),
(850672),
(63973),
(883710),
(851311),
(96036),
(859620),
(804617),
(121790),
(880240),
(95610),
(123121),
(816312),
(838363),
(819918),
(830734),
(110197),
(819827),
(828848),
(863439),
(885471),
(832358),
(838128),
(800211),
(873562),
(894878),
(852673),
(130190),
(846513),
(885479),
(151517),
(886463),
(817874),
(818542),
(158292),
(903494),
(109709),
(43935),
(859169),
(871394),
(873421),
(158565),
(884885),
(73182),
(878228),
(802881),
(61973),
(839231),
(800092),
(830092),
(135156),
(133171),
(816470),
(53751),
(136835),
(806805),
(878913),
(162321),
(807129),
(848931),
(813836),
(843783),
(831634),
(153599),
(151269),
(130691),
(895391),
(846584),
(826712),
(893130),
(868731),
(123579),
(137050),
(852933),
(825054),
(156154),
(132396),
(804611),
(880925),
(806348),
(162547),
(143473),
(861819),
(891799),
(897887),
(903360),
(855554),
(891134),
(857671),
(98537),
(803047),
(869819),
(133071),
(146669),
(812204),
(864729),
(143984),
(825221),
(816247),
(841980),
(888384),
(112042),
(893036),
(873630),
(819775),
(900697),
(868402),
(824236),
(822835),
(901653),
(878280),
(904367),
(96405),
(93482),
(130637),
(63719),
(114165),
(880804),
(875984),
(829204),
(823293),
(852922),
(808365),
(884947),
(800093),
(873548),
(826776),
(814262),
(145272),
(808366),
(141256),
(89702),
(844642),
(63974),
(831784),
(885633),
(881630),
(886563),
(824169),
(845644),
(840039),
(851144),
(875575),
(829350),
(827055),
(894071),
(805728),
(870920),
(148852),
(902315),
(859173),
(859559),
(846821),
(841905),
(810780),
(133331),
(127132),
(903557),
(851427),
(136548),
(812361),
(80622),
(878282),
(861277),
(125548),
(806325),
(842187),
(820577),
(821427),
(804443),
(838376),
(859352),
(899532),
(850699),
(859709),
(859625),
(858546),
(106042),
(892760),
(885518),
(87445),
(98454),
(890656),
(814509),
(822400),
(900995),
(870997),
(148047),
(838027),
(802251),
(101778),
(846768),
(814517),
(902522),
(98852),
(865755),
(812150),
(863833),
(880664),
(861711),
(158865),
(819077),
(857771),
(96257),
(879958),
(810938),
(903708),
(893014),
(809002),
(844654),
(823909),
(814434),
(153600),
(158259),
(138244),
(855015),
(883224),
(868785),
(822605),
(893156),
(804442),
(99306),
(819724),
(844385),
(802882),
(892972),
(811566),
(117387),
(144929),
(855124),
(853074),
(892955),
(809220),
(886073),
(855594),
(871605),
(825476),
(107704),
(885481),
(800166),
(852770),
(878090),
(109596),
(55873),
(822174),
(147863),
(119542),
(847742),
(815978),
(110011),
(76291),
(878595),
(160807),
(832545),
(868761),
(153641),
(160336),
(817058),
(142190),
(873567),
(903361),
(852612),
(893006),
(803668),
(903635),
(119217),
(893322),
(861979),
(146718),
(94146),
(136193),
(904370),
(136024),
(811678),
(812073),
(840204),
(828836),
(888473),
(101836),
(153772),
(870914),
(830846),
(836672),
(887989),
(895374),
(843912),
(836553),
(135529),
(823972),
(883133),
(808367),
(871242),
(892830),
(823025),
(800541),
(866219),
(808740),
(834912),
(862019),
(854985),
(861309),
(881217),
(53597),
(883140),
(63323),
(820127),
(899542),
(898598),
(153773),
(153845),
(828923),
(810941),
(48769),
(159647),
(899412),
(818423),
(159047),
(842719),
(809009),
(80360),
(873509),
(825264),
(836282),
(889883),
(82294),
(824962),
(835581),
(848332),
(887142),
(895026),
(132952),
(808910),
(896432),
(853625),
(140777),
(839978),
(810755),
(893173),
(145989),
(860080),
(870879),
(802711),
(62332),
(812722),
(123269),
(868723),
(93594),
(899365),
(893177),
(862386),
(806773),
(846393),
(902188),
(128209),
(880235),
(154289),
(806772),
(76694),
(903362),
(804328),
(861275),
(106046),
(876043),
(840301),
(89149),
(821709),
(891215),
(855198),
(827694),
(850628),
(107707),
(835165),
(889156),
(150000),
(861211),
(896120),
(846818),
(849507),
(131326),
(106114),
(863406),
(888468),
(825268),
(111536),
(99521),
(150001),
(153365),
(865899),
(840060),
(836506),
(871051),
(870922),
(889210),
(814963),
(881431),
(142020),
(895087),
(76503),
(856939),
(899422),
(851004),
(810573),
(902354),
(96762),
(93827),
(128429),
(850806),
(890326),
(892997),
(841742),
(820098),
(50542),
(829135),
(76057),
(870871),
(897841),
(895185),
(811088),
(91127),
(85749),
(72720),
(854891),
(856640),
(838379),
(890702),
(155651),
(896351),
(830406),
(823656),
(895226),
(828776),
(890793),
(900300),
(886541),
(885524),
(863895),
(900544),
(826853),
(130587),
(111630),
(885883),
(825263),
(836565),
(815955),
(843970),
(802712),
(861078),
(890473),
(819776),
(121816),
(128074),
(866029),
(106982),
(848973),
(901981),
(157714),
(852879),
(855525),
(832819),
(904669),
(835691),
(884320),
(139248),
(850630),
(79867),
(111588),
(138797),
(889352),
(133077),
(886283),
(142240),
(868525),
(901922),
(897555),
(861450),
(86807),
(845061),
(898597),
(830788),
(867002),
(885315),
(883217),
(86301),
(899102),
(106358),
(817875),
(898589),
(899353),
(892847),
(808120),
(837895),
(807042),
(843772),
(828775),
(866542),
(63546),
(875619),
(838387),
(817876),
(827241),
(868400),
(814762),
(830665),
(895231),
(829560),
(840522),
(814384),
(873858),
(740943),
(899347),
(868933),
(803684),
(800275),
(896732),
(861894),
(875573),
(144850),
(860996),
(158207),
(821969),
(90545),
(149371),
(139091),
(76901),
(880924),
(878267),
(879475),
(143841),
(138249),
(900387),
(813290),
(813109),
(149859),
(160372),
(145026),
(132878),
(836541),
(141791),
(802550),
(901971),
(850632),
(885482),
(819070),
(829614),
(880948),
(838718),
(850811),
(818773),
(868414),
(827433),
(846572),
(852948),
(114144),
(83094),
(888929),
(866496),
(883213),
(841483),
(130198),
(888462),
(806657),
(890643),
(820745),
(751016),
(808741),
(890905),
(95793),
(802232),
(883412),
(872050),
(902527),
(811931),
(832808),
(813150),
(67443),
(107714),
(874022),
(834877),
(818243),
(145861),
(802018),
(132956),
(898321),
(806770),
(144651),
(897397),
(820028),
(866092),
(849660),
(826854),
(134209),
(832588),
(902434),
(84297),
(25401),
(827726),
(720675),
(900339),
(900802),
(884992),
(875320),
(120490),
(105269),
(130728),
(812660),
(840355),
(811801),
(808363),
(871399),
(825195),
(866752),
(810462),
(898144),
(863894),
(828970),
(820381),
(888678),
(131103),
(819774),
(838213),
(846485),
(842384),
(888484),
(822449),
(885317),
(903919),
(902111),
(146343),
(108788),
(87245),
(848854),
(862594),
(809209),
(852219),
(853054),
(870910),
(853023),
(130305),
(888428),
(148680),
(861190),
(901337),
(901342),
(895189),
(823333),
(159263),
(855551),
(160599),
(137599),
(833199),
(900808),
(860857),
(853484),
(838120),
(834716),
(877528),
(129830),
(903776),
(891250),
(843375),
(888597),
(813651),
(150465),
(863455),
(814549),
(825198),
(81689),
(810882),
(816697),
(904263),
(98948),
(162184),
(51986),
(834762),
(60844),
(846486),
(895689),
(153737),
(67590),
(818091),
(810791),
(823589),
(156166),
(823704),
(824017),
(902964),
(99573),
(886517),
(99738),
(884901),
(160808),
(30458),
(118382),
(893910),
(855148),
(160376),
(820220),
(133253),
(885864),
(129999),
(754508),
(880607),
(885667),
(857597),
(152217),
(883114),
(842612),
(875655),
(853448),
(890796),
(136558),
(903091),
(800023),
(91167),
(895141),
(897289),
(836563),
(881996),
(819337),
(828971),
(850878),
(816051),
(816045),
(160937),
(888586),
(820441),
(818541),
(880648),
(886863),
(861866),
(874818),
(888809),
(808743),
(118713),
(814869),
(878290),
(853475),
(850990),
(885826),
(152246),
(63738),
(817063),
(898141),
(821578),
(886721),
(162520),
(867127),
(894556),
(842575),
(888215),
(873921),
(903720),
(142963),
(85301),
(866156),
(830638),
(145891),
(58130),
(132759),
(132554),
(827634),
(890570),
(800775),
(806988),
(816627),
(812056),
(832226),
(827331),
(849014),
(893175),
(52601),
(811800),
(890764),
(844312),
(859153),
(871117),
(822508),
(855526),
(144020),
(873729),
(808998),
(809001),
(884794),
(850634),
(857881),
(863536),
(108010),
(159048),
(898625),
(70761),
(899423),
(810542),
(884821),
(888728),
(870581),
(897330),
(802052),
(903848),
(810225),
(875742),
(813014),
(872413),
(810943),
(846487),
(902325),
(145804),
(849164),
(806510),
(126110),
(807583),
(894874),
(124345),
(144021),
(879139),
(893065),
(53326),
(855831),
(878623),
(117019),
(832879),
(903517),
(848346),
(899078),
(838403),
(890173),
(817877),
(807997),
(41760),
(828686),
(888733),
(88821),
(818771),
(802325),
(125921),
(802106),
(87102),
(895307),
(154298),
(904512),
(118649),
(816684),
(814057),
(834605),
(816345),
(814380),
(162290),
(822523),
(871159),
(902544),
(801145),
(857038),
(130204),
(822650),
(116543),
(860265),
(842395),
(895359),
(814605),
(810884),
(814269),
(892717),
(844271),
(902064),
(839999),
(146890),
(893098),
(883279),
(890572),
(160812),
(813288),
(868396),
(900511),
(856577),
(825982),
(834606),
(111395),
(863933),
(86790),
(886318),
(155770),
(109157),
(828974),
(70010),
(861810),
(821250),
(883209),
(893482),
(895719),
(76958),
(903920),
(828839),
(881078),
(90868),
(901968),
(829765),
(833128),
(840118),
(866308),
(811430),
(883257),
(149484),
(842453),
(896363),
(890650),
(868757),
(899429),
(806631),
(156352),
(114397),
(835178),
(63946),
(91598),
(868587),
(875721),
(897827),
(138885),
(806374),
(98268),
(884240),
(898057),
(836556),
(98958),
(156402),
(815041),
(901719),
(889199),
(888561),
(131607),
(881423),
(891337),
(897842),
(857284),
(86946),
(903363),
(857385),
(812732),
(844267),
(155827),
(138839),
(875997),
(125553),
(132969),
(878099),
(876049),
(53990),
(856926),
(106057),
(123709),
(897723),
(894876),
(868397),
(890214),
(897843),
(816509),
(832590),
(127981),
(148709),
(851362),
(859161),
(885977),
(885318),
(93847),
(105667),
(812232),
(886065),
(859678),
(808745),
(875893),
(123724),
(801305),
(147277),
(802212),
(810765),
(832401),
(830647),
(93395),
(818305),
(118360),
(153860),
(93756),
(128366),
(881987),
(878498),
(812896),
(138388),
(135317),
(155805),
(883144),
(831030),
(883203),
(825167),
(840849),
(848967),
(98575),
(883276),
(825213),
(822432),
(53421),
(832613),
(850834),
(127207),
(876358),
(830362),
(857705),
(810996),
(831358),
(139112),
(894997),
(821272),
(130306),
(152391),
(141287),
(893206),
(834571),
(79902),
(821248),
(899054),
(898593),
(897851),
(823060),
(892751),
(879547),
(896584),
(885254),
(873595),
(828840),
(885319),
(903915),
(132974),
(84359),
(829909),
(853296),
(162469),
(145055),
(840059),
(105682),
(160659),
(131967),
(59042),
(804445),
(838390),
(861276),
(858405),
(853019),
(68668),
(900084),
(893589),
(880569),
(846504),
(826769),
(825169),
(897297),
(158247),
(868770),
(903546),
(861323),
(851546),
(99318),
(871812),
(154833),
(109601),
(903538),
(111724),
(140539),
(90444),
(897312),
(142028),
(114398),
(868474),
(856382),
(888459),
(892709),
(891783),
(898063),
(156476),
(901974),
(885484),
(812582),
(68910),
(863435),
(883314),
(893401),
(874984),
(821429),
(818232),
(841305),
(843871),
(810748),
(902529),
(883261),
(114336),
(880943),
(831160),
(139685),
(157522),
(113986),
(810661),
(883199),
(150437),
(897930),
(885689),
(814734),
(850187),
(147185),
(873742),
(899414),
(903637),
(826551),
(825915),
(864624),
(816150),
(846640),
(130006),
(899076),
(849198),
(86514),
(850807),
(848870),
(865011),
(160791),
(157270),
(863558),
(861031),
(862022),
(862112),
(845592),
(846994),
(860628),
(149246),
(848565),
(859700),
(160231),
(888027),
(851613),
(824185),
(825328),
(810718),
(154179),
(830848),
(146446),
(900580),
(873438),
(114156),
(98872),
(150018),
(848990),
(114064),
(875968),
(836207),
(885485),
(160911),
(859645),
(901903),
(838499),
(842354),
(153932),
(841040),
(150866),
(158212),
(123281),
(816267),
(153933),
(865999),
(158608),
(892877),
(151258),
(851035),
(885487),
(866131),
(844442),
(825743),
(885456),
(859646),
(866266),
(870358),
(811008),
(819938),
(132538),
(161264),
(130009),
(904306),
(856620),
(814512),
(810461),
(816344),
(891787),
(822678),
(890559),
(885141),
(147722),
(117470),
(807694),
(87314);

drop database "plataforma";

--tabla roles
create table roles(
   usuario varchar(50) NOT NULL,
   pass varchar(50) NOT NULL,
   rol varchar(200) NOT NULL
);

INSERT INTO roles (usuario,pass,rol) VALUES
('enriquerobles85@aragon.unam.mx', '1234', 'Profesor'),
('roblessalazarjorgeenrique@gmail.com', 'asdf', 'Alumno');
