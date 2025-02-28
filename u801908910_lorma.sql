
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2015 at 01:04 PM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u801908910_lorma`
--

-- --------------------------------------------------------

--
-- Table structure for table `lor_users`
--

CREATE TABLE IF NOT EXISTS `lor_users` (
  `lor_id` int(100) NOT NULL AUTO_INCREMENT,
  `lor_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lor_reg_ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_pass` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_fname` text COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_mname` text COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_lname` text COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_gender` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_sbs_part` int(5) NOT NULL,
  `lor_user_sbs_id` int(100) NOT NULL,
  `lor_user_admin_lvl` int(5) NOT NULL,
  `lor_dob_y` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lor_dob_m` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lor_dob_d` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lor_user_times_choosed` int(200) NOT NULL,
  PRIMARY KEY (`lor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lor_users`
--

INSERT INTO `lor_users` (`lor_id`, `lor_reg_date`, `lor_reg_ip`, `lor_user_username`, `lor_user_pass`, `lor_user_fname`, `lor_user_mname`, `lor_user_lname`, `lor_user_gender`, `lor_user_sbs_part`, `lor_user_sbs_id`, `lor_user_admin_lvl`, `lor_dob_y`, `lor_dob_m`, `lor_dob_d`, `lor_user_times_choosed`) VALUES
(1, '2015-03-30 21:25:27', '122.691.691.691', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ayan', 'ADMIN', 'ahmad', 'male', 1, 741, 5, '2001', '07', '05', 0),
(2, '2015-04-02 04:42:07', '122.177.225.69', 'anonymous', '0b2cfd4581fbe8b7195bc16ae5e2b92c', 'ayan', 'anonymous', 'ahmad', 'male', 1, 741, 5, '2001', '07', '05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lor_votes`
--

CREATE TABLE IF NOT EXISTS `lor_votes` (
  `lor_v_id` int(200) NOT NULL AUTO_INCREMENT,
  `lor_side` text COLLATE utf8_unicode_ci NOT NULL,
  `lor_stu_id` int(200) NOT NULL,
  `lor_compet` int(200) NOT NULL,
  PRIMARY KEY (`lor_v_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=597 ;

--
-- Dumping data for table `lor_votes`
--

INSERT INTO `lor_votes` (`lor_v_id`, `lor_side`, `lor_stu_id`, `lor_compet`) VALUES
(1, 'right', 2355, 0),
(2, 'left', 1077, 0),
(3, 'right', 1953, 1915),
(4, 'left', 1000, 2765),
(5, 'left', 1478, 2439),
(6, 'left', 1478, 2439),
(7, 'right', 1688, 159),
(8, 'right', 1688, 159),
(9, 'left', 1227, 1427),
(10, 'right', 2696, 1307),
(11, 'right', 1140, 793),
(12, 'left', 917, 482),
(13, 'left', 59, 1953),
(14, 'right', 1666, 301),
(15, 'left', 2728, 1958),
(16, 'left', 1384, 764),
(17, 'right', 1701, 2504),
(18, 'left', 472, 1288),
(19, 'left', 2705, 202),
(20, 'left', 1617, 117),
(21, 'left', 1791, 2224),
(22, 'right', 560, 2585),
(23, 'left', 1614, 1134),
(24, 'right', 1759, 609),
(25, 'left', 169, 802),
(26, 'right', 1278, 2692),
(27, 'left', 658, 919),
(28, 'right', 2402, 1134),
(29, 'left', 676, 1301),
(30, 'right', 896, 403),
(31, 'left', 658, 1612),
(32, 'right', 1998, 1623),
(33, 'left', 2564, 1447),
(34, 'left', 829, 1655),
(35, 'left', 1635, 2559),
(36, 'right', 563, 798),
(37, 'right', 1995, 1923),
(38, 'right', 2097, 673),
(39, 'right', 696, 2094),
(40, 'left', 617, 1844),
(41, 'left', 617, 1844),
(42, 'left', 909, 1865),
(43, 'left', 2433, 2575),
(44, 'left', 1012, 1987),
(45, 'left', 226, 812),
(46, 'left', 269, 72),
(47, 'left', 6, 700),
(48, 'left', 2240, 1719),
(49, 'left', 2240, 2357),
(50, 'right', 785, 1978),
(51, 'right', 963, 869),
(52, 'left', 1450, 2273),
(53, 'right', 1742, 1605),
(54, 'left', 2103, 1149),
(55, 'right', 316, 2175),
(56, 'left', 1641, 2400),
(57, 'left', 2483, 877),
(58, 'right', 2020, 221),
(59, 'right', 1083, 1423),
(60, 'left', 2574, 1629),
(61, 'right', 2060, 69),
(62, 'right', 2048, 2613),
(63, 'right', 1444, 2628),
(64, 'left', 509, 115),
(65, 'left', 2648, 521),
(66, 'right', 1444, 2628),
(67, 'right', 2292, 486),
(68, 'left', 2597, 1460),
(69, 'left', 1216, 2455),
(70, 'left', 2081, 5),
(71, 'right', 2344, 517),
(72, 'left', 2020, 1317),
(73, 'left', 2415, 971),
(74, 'right', 2138, 68),
(75, 'right', 2138, 68),
(76, 'left', 818, 1075),
(77, 'left', 234, 2200),
(78, 'left', 1902, 197),
(79, 'left', 1567, 495),
(80, 'left', 1529, 2193),
(81, 'left', 2328, 2089),
(82, 'right', 2602, 589),
(83, 'left', 132, 2247),
(84, 'left', 132, 2247),
(85, 'left', 1678, 1427),
(86, 'left', 32, 2099),
(87, 'left', 1775, 1837),
(88, 'left', 672, 2131),
(89, 'right', 353, 1227),
(90, 'left', 234, 11),
(91, 'left', 764, 1558),
(92, 'left', 149, 1896),
(93, 'left', 1026, 790),
(94, 'left', 2433, 1947),
(95, 'right', 2470, 1251),
(96, 'right', 1555, 1296),
(97, 'right', 893, 2037),
(98, 'right', 2018, 1452),
(99, 'left', 2612, 1650),
(100, 'right', 109, 2050),
(101, 'right', 2433, 812),
(102, 'right', 935, 501),
(103, 'right', 247, 631),
(104, 'left', 1741, 1847),
(105, 'left', 291, 2542),
(106, 'right', 2, 2263),
(107, 'right', 1213, 2296),
(108, 'left', 1977, 2593),
(109, 'left', 1466, 98),
(110, 'right', 1560, 1699),
(111, 'left', 1699, 1560),
(112, 'right', 862, 1125),
(113, 'right', 896, 2057),
(114, 'right', 2570, 910),
(115, 'right', 886, 1917),
(116, 'right', 2308, 1697),
(117, 'left', 2273, 1734),
(118, 'left', 1818, 746),
(119, 'left', 1622, 1423),
(120, 'left', 149, 32),
(121, 'left', 656, 941),
(122, 'left', 1989, 2629),
(123, 'right', 101, 452),
(124, 'right', 1854, 1895),
(125, 'left', 672, 2356),
(126, 'right', 503, 1643),
(127, 'right', 2589, 766),
(128, 'right', 1112, 2224),
(129, 'right', 1609, 2522),
(130, 'right', 436, 2287),
(131, 'left', 280, 126),
(132, 'right', 872, 337),
(133, 'left', 2097, 273),
(134, 'right', 910, 919),
(135, 'left', 2118, 1458),
(136, 'right', 2048, 995),
(137, 'right', 2052, 600),
(138, 'right', 96, 2248),
(139, 'left', 42, 1629),
(140, 'left', 1276, 2224),
(141, 'right', 1874, 2342),
(142, 'right', 1, 1194),
(143, 'left', 240, 720),
(144, 'right', 1326, 2571),
(145, 'left', 130, 2044),
(146, 'right', 151, 2520),
(147, 'right', 1760, 902),
(148, 'left', 1188, 529),
(149, 'left', 2020, 719),
(150, 'right', 271, 1742),
(151, 'right', 1582, 2202),
(152, 'right', 728, 1072),
(153, 'left', 1187, 2345),
(154, 'left', 1493, 542),
(155, 'left', 514, 665),
(156, 'right', 521, 1840),
(157, 'right', 2230, 2553),
(158, 'left', 1349, 1443),
(159, 'left', 1363, 598),
(160, 'left', 1594, 2440),
(161, 'right', 1245, 267),
(162, 'right', 1187, 2663),
(163, 'left', 1749, 915),
(164, 'right', 41, 1954),
(165, 'left', 1471, 1824),
(166, 'left', 709, 402),
(167, 'left', 1303, 2327),
(168, 'right', 2637, 611),
(169, 'left', 1947, 544),
(170, 'right', 1279, 2466),
(171, 'right', 1497, 2328),
(172, 'right', 1425, 260),
(173, 'right', 1425, 2012),
(174, 'right', 668, 2342),
(175, 'right', 418, 1313),
(176, 'right', 724, 2598),
(177, 'right', 2265, 373),
(178, 'left', 109, 1617),
(179, 'right', 2573, 2199),
(180, 'left', 2678, 2073),
(181, 'left', 1583, 872),
(182, 'left', 2337, 1458),
(183, 'left', 858, 1815),
(184, 'right', 383, 120),
(185, 'right', 383, 120),
(186, 'right', 509, 126),
(187, 'right', 2001, 2552),
(188, 'right', 2001, 2552),
(189, 'left', 1895, 2380),
(190, 'left', 846, 958),
(191, 'right', 1482, 2700),
(192, 'left', 1057, 687),
(193, 'right', 466, 1224),
(194, 'right', 2668, 84),
(195, 'right', 2668, 1246),
(196, 'right', 2174, 1655),
(197, 'left', 2547, 1697),
(198, 'left', 514, 1531),
(199, 'left', 856, 2146),
(200, 'left', 1032, 1760),
(201, 'left', 1091, 391),
(202, 'left', 439, 160),
(203, 'right', 742, 1427),
(204, 'left', 1977, 405),
(205, 'right', 405, 1977),
(206, 'right', 405, 1977),
(207, 'right', 405, 1977),
(208, 'left', 939, 1901),
(209, 'right', 398, 984),
(210, 'right', 2640, 843),
(211, 'left', 2561, 565),
(212, 'left', 1161, 1012),
(213, 'left', 1354, 1427),
(214, 'left', 1688, 280),
(215, 'right', 2607, 909),
(216, 'right', 2607, 909),
(217, 'left', 2282, 1776),
(218, 'right', 746, 1849),
(219, 'left', 1300, 2377),
(220, 'right', 1475, 1985),
(221, 'left', 249, 733),
(222, 'left', 318, 241),
(223, 'left', 1845, 2514),
(224, 'right', 2494, 1237),
(225, 'right', 493, 1492),
(226, 'left', 274, 1585),
(227, 'left', 1142, 2346),
(228, 'left', 379, 2606),
(229, 'right', 2560, 631),
(230, 'right', 1308, 1145),
(231, 'right', 725, 1112),
(232, 'left', 828, 1957),
(233, 'left', 1054, 2343),
(234, 'left', 1054, 2343),
(235, 'right', 1004, 1698),
(236, 'right', 1397, 2657),
(237, 'right', 1317, 2281),
(238, 'right', 1413, 2474),
(239, 'right', 2246, 2511),
(240, 'right', 728, 2546),
(241, 'left', 306, 1084),
(242, 'left', 1683, 971),
(243, 'left', 1470, 528),
(244, 'left', 386, 344),
(245, 'left', 1054, 1122),
(246, 'right', 874, 2361),
(247, 'left', 1191, 2575),
(248, 'right', 683, 1990),
(249, 'right', 1845, 2085),
(250, 'right', 1894, 2502),
(251, 'left', 222, 1239),
(252, 'right', 2433, 177),
(253, 'right', 1901, 1692),
(254, 'left', 2063, 2337),
(255, 'left', 2355, 2425),
(256, 'right', 2087, 673),
(257, 'left', 1951, 1216),
(258, 'right', 1216, 1951),
(259, 'right', 1216, 1951),
(260, 'left', 1066, 330),
(261, 'left', 1752, 1861),
(262, 'right', 67, 1276),
(263, 'left', 597, 84),
(264, 'right', 834, 2025),
(265, 'left', 839, 560),
(266, 'right', 936, 1137),
(267, 'left', 684, 954),
(268, 'right', 1154, 2317),
(269, 'right', 1478, 137),
(270, 'right', 372, 2310),
(271, 'left', 2310, 372),
(272, 'left', 2310, 372),
(273, 'left', 2310, 372),
(274, 'left', 2310, 372),
(275, 'right', 372, 2310),
(276, 'left', 2310, 372),
(277, 'right', 893, 2019),
(278, 'right', 395, 2506),
(279, 'left', 737, 790),
(280, 'left', 1923, 1717),
(281, 'right', 1066, 1932),
(282, 'left', 1720, 389),
(283, 'left', 1274, 2611),
(284, 'right', 2578, 2371),
(285, 'right', 910, 1800),
(286, 'left', 2446, 1560),
(287, 'left', 325, 601),
(288, 'left', 168, 1996),
(289, 'left', 168, 1996),
(290, 'right', 1291, 2069),
(291, 'right', 1450, 2152),
(292, 'left', 1575, 1341),
(293, 'left', 2056, 2039),
(294, 'left', 1697, 164),
(295, 'left', 1697, 164),
(296, 'right', 291, 2307),
(297, 'left', 844, 1390),
(298, 'left', 885, 205),
(299, 'right', 269, 2249),
(300, 'left', 1517, 2207),
(301, 'right', 2446, 2534),
(302, 'right', 1049, 1577),
(303, 'left', 1592, 2532),
(304, 'right', 1529, 2520),
(305, 'right', 765, 478),
(306, 'left', 1266, 1096),
(307, 'right', 740, 1984),
(308, 'left', 2553, 1327),
(309, 'left', 580, 1513),
(310, 'left', 1771, 1046),
(311, 'left', 242, 2343),
(312, 'left', 2404, 2139),
(313, 'left', 1614, 1944),
(314, 'right', 1944, 1614),
(315, 'right', 243, 1273),
(316, 'left', 741, 549),
(317, 'left', 741, 549),
(318, 'left', 2327, 450),
(319, 'right', 1989, 2645),
(320, 'left', 792, 2247),
(321, 'right', 2247, 792),
(322, 'right', 2247, 792),
(323, 'right', 2247, 792),
(324, 'right', 2247, 792),
(325, 'left', 1363, 2520),
(326, 'right', 332, 1968),
(327, 'right', 1957, 2036),
(328, 'left', 2615, 720),
(329, 'right', 51, 1484),
(330, 'left', 1519, 2505),
(331, 'left', 1519, 2505),
(332, 'right', 672, 2314),
(333, 'left', 1027, 2380),
(334, 'right', 1803, 58),
(335, 'right', 606, 973),
(336, 'left', 1109, 1396),
(337, 'right', 43, 142),
(338, 'left', 1027, 577),
(339, 'left', 2416, 2004),
(340, 'right', 513, 2666),
(341, 'left', 2355, 401),
(342, 'right', 685, 1884),
(343, 'left', 1908, 2036),
(344, 'left', 149, 940),
(345, 'left', 1218, 2468),
(346, 'right', 1520, 1065),
(347, 'right', 1789, 1665),
(348, 'left', 1641, 1552),
(349, 'left', 2639, 168),
(350, 'left', 2383, 710),
(351, 'right', 489, 825),
(352, 'left', 16, 393),
(353, 'right', 2033, 2700),
(354, 'right', 1319, 1492),
(355, 'right', 438, 2675),
(356, 'right', 2281, 1196),
(357, 'right', 182, 2237),
(358, 'right', 2069, 1343),
(359, 'left', 1710, 1968),
(360, 'left', 682, 1815),
(361, 'right', 1199, 1437),
(362, 'right', 1284, 384),
(363, 'left', 20, 2563),
(364, 'right', 904, 867),
(365, 'right', 2071, 2689),
(366, 'left', 1000, 1383),
(367, 'right', 2506, 30),
(368, 'left', 132, 2137),
(369, 'left', 6, 107),
(370, 'left', 1115, 1834),
(371, 'right', 488, 2187),
(372, 'left', 2353, 2146),
(373, 'left', 1514, 1545),
(374, 'right', 980, 2035),
(375, 'left', 2124, 2473),
(376, 'right', 668, 1785),
(377, 'left', 238, 1954),
(378, 'right', 980, 2035),
(379, 'right', 980, 2035),
(380, 'left', 1514, 1545),
(381, 'left', 2353, 2146),
(382, 'right', 488, 2187),
(383, 'left', 1115, 1834),
(384, 'right', 488, 2187),
(385, 'right', 488, 2187),
(386, 'left', 1115, 1834),
(387, 'left', 6, 107),
(388, 'left', 132, 2137),
(389, 'right', 492, 56),
(390, 'right', 234, 1335),
(391, 'left', 2667, 1459),
(392, 'right', 2573, 2289),
(393, 'left', 2412, 2358),
(394, 'left', 2534, 583),
(395, 'right', 169, 944),
(396, 'right', 1854, 1293),
(397, 'right', 1903, 1727),
(398, 'right', 238, 2255),
(399, 'left', 333, 2632),
(400, 'left', 808, 1871),
(401, 'right', 1799, 1106),
(402, 'right', 1540, 1694),
(403, 'left', 2598, 2321),
(404, 'right', 2523, 2586),
(405, 'right', 107, 2697),
(406, 'right', 134, 2412),
(407, 'left', 25, 529),
(408, 'right', 1579, 1760),
(409, 'right', 1579, 1760),
(410, 'left', 82, 2545),
(411, 'right', 1323, 2691),
(412, 'left', 650, 757),
(413, 'left', 1860, 1164),
(414, 'right', 334, 249),
(415, 'right', 1168, 513),
(416, 'right', 1168, 513),
(417, 'right', 194, 1902),
(418, 'right', 779, 812),
(419, 'left', 118, 2401),
(420, 'right', 2685, 725),
(421, 'left', 1256, 2559),
(422, 'right', 2701, 2279),
(423, 'right', 599, 1980),
(424, 'left', 2675, 2340),
(425, 'left', 2583, 1229),
(426, 'right', 2003, 2676),
(427, 'right', 2447, 1658),
(428, 'left', 879, 2455),
(429, 'left', 569, 1322),
(430, 'left', 954, 1655),
(431, 'left', 854, 2524),
(432, 'left', 2491, 2482),
(433, 'left', 742, 1908),
(434, 'left', 1872, 65),
(435, 'right', 1145, 1129),
(436, 'right', 590, 1798),
(437, 'left', 1725, 1962),
(438, 'left', 451, 2069),
(439, 'right', 2043, 6),
(440, 'right', 1473, 2550),
(441, 'right', 2048, 1786),
(442, 'right', 1891, 2204),
(443, 'left', 937, 2277),
(444, 'right', 2220, 2260),
(445, 'right', 2437, 2013),
(446, 'left', 243, 1659),
(447, 'right', 503, 614),
(448, 'left', 2676, 4),
(449, 'left', 465, 502),
(450, 'left', 1126, 608),
(451, 'right', 608, 1126),
(452, 'left', 1126, 608),
(453, 'right', 608, 1126),
(454, 'right', 54, 2052),
(455, 'left', 2146, 1509),
(456, 'right', 1509, 2146),
(457, 'right', 1509, 2146),
(458, 'left', 2146, 1509),
(459, 'left', 784, 2423),
(460, 'right', 542, 493),
(461, 'right', 271, 2515),
(462, 'right', 903, 2547),
(463, 'left', 1894, 2700),
(464, 'left', 1186, 142),
(465, 'left', 1405, 566),
(466, 'right', 2576, 1126),
(467, 'left', 1923, 777),
(468, 'left', 103, 485),
(469, 'right', 2356, 2337),
(470, 'right', 2449, 1165),
(471, 'right', 1443, 2472),
(472, 'right', 1494, 2594),
(473, 'left', 2165, 1361),
(474, 'left', 2014, 2352),
(475, 'left', 2216, 2455),
(476, 'right', 14, 211),
(477, 'right', 1713, 1449),
(478, 'left', 965, 2328),
(479, 'left', 1898, 518),
(480, 'right', 2206, 2295),
(481, 'right', 1307, 1385),
(482, 'left', 2677, 43),
(483, 'left', 686, 1960),
(484, 'left', 1976, 1115),
(485, 'left', 730, 2715),
(486, 'right', 150, 1532),
(487, 'left', 1836, 765),
(488, 'right', 2626, 549),
(489, 'left', 1, 1305),
(490, 'left', 1734, 1288),
(491, 'right', 1910, 867),
(492, 'left', 2668, 2739),
(493, 'right', 2489, 2526),
(494, 'right', 337, 2343),
(495, 'left', 1421, 162),
(496, 'left', 318, 1786),
(497, 'left', 2720, 26),
(498, 'right', 509, 1727),
(499, 'right', 121, 766),
(500, 'right', 2116, 2062),
(501, 'left', 2062, 2116),
(502, 'left', 2062, 2116),
(503, 'right', 1082, 2323),
(504, 'right', 1299, 2371),
(505, 'right', 1299, 2371),
(506, 'left', 820, 733),
(507, 'left', 2081, 1917),
(508, 'right', 969, 245),
(509, 'left', 1974, 2488),
(510, 'left', 1046, 1282),
(511, 'left', 118, 1767),
(512, 'right', 394, 1990),
(513, 'right', 841, 786),
(514, 'left', 2790, 1175),
(515, 'left', 2745, 1908),
(516, 'left', 1556, 984),
(517, 'left', 2309, 2633),
(518, 'left', 2309, 2633),
(519, 'right', 2162, 2624),
(520, 'left', 1490, 1045),
(521, 'left', 261, 1865),
(522, 'right', 1900, 2206),
(523, 'right', 2658, 1197),
(524, 'right', 2515, 1388),
(525, 'left', 2568, 1424),
(526, 'right', 1424, 2568),
(527, 'right', 1424, 2568),
(528, 'right', 1814, 1534),
(529, 'right', 1441, 1170),
(530, 'right', 2526, 2570),
(531, 'right', 140, 1638),
(532, 'left', 2431, 2190),
(533, 'left', 2647, 1633),
(534, 'right', 1633, 2647),
(535, 'right', 1707, 372),
(536, 'right', 1391, 552),
(537, 'left', 187, 1846),
(538, 'right', 1774, 773),
(539, 'right', 121, 2570),
(540, 'left', 2167, 763),
(541, 'left', 1650, 2317),
(542, 'left', 1317, 2249),
(543, 'right', 1583, 124),
(544, 'left', 354, 2484),
(545, 'left', 733, 2258),
(546, 'right', 744, 1588),
(547, 'left', 2515, 1786),
(548, 'left', 342, 1246),
(549, 'right', 2417, 572),
(550, 'right', 1426, 1849),
(551, 'right', 1057, 491),
(552, 'right', 1820, 1840),
(553, 'left', 817, 1636),
(554, 'left', 502, 2460),
(555, 'right', 1603, 1720),
(556, 'right', 623, 402),
(557, 'left', 1151, 2776),
(558, 'right', 839, 1762),
(559, 'left', 168, 1119),
(560, 'right', 2623, 2569),
(561, 'left', 492, 480),
(562, 'right', 2637, 1843),
(563, 'left', 2432, 1724),
(564, 'left', 2, 566),
(565, 'right', 695, 1846),
(566, 'right', 2099, 1557),
(567, 'right', 1034, 824),
(568, 'right', 135, 243),
(569, 'left', 2378, 2054),
(570, 'left', 1375, 1307),
(571, 'left', 1612, 1052),
(572, 'right', 1086, 1584),
(573, 'left', 1792, 323),
(574, 'right', 2239, 832),
(575, 'left', 2175, 2131),
(576, 'right', 1543, 2435),
(577, 'right', 634, 1114),
(578, 'left', 1628, 1386),
(579, 'left', 2513, 19),
(580, 'left', 1138, 112),
(581, 'right', 1102, 1266),
(582, 'left', 1114, 500),
(583, 'right', 1106, 358),
(584, 'right', 1106, 358),
(585, 'right', 1106, 358),
(586, 'right', 1106, 358),
(587, 'left', 335, 1984),
(588, 'right', 1984, 335),
(589, 'right', 1066, 2035),
(590, 'right', 1066, 2035),
(591, 'right', 1066, 2035),
(592, 'right', 1066, 2035),
(593, 'left', 1222, 1142),
(594, 'right', 1142, 1222),
(595, 'right', 169, 38),
(596, 'left', 2611, 385);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
