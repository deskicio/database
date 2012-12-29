--
-- Copyright (C) 2005-2013 MaNGOS <http://getmangos.com/>
-- Copyright (C) 2009-2013 MaNGOSZero <https://github.com/mangos-zero>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `spell_chain`
--

DROP TABLE IF EXISTS `spell_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_chain` (
  `spell_id` mediumint(9) NOT NULL DEFAULT '0',
  `prev_spell` mediumint(9) NOT NULL DEFAULT '0',
  `first_spell` mediumint(9) NOT NULL DEFAULT '0',
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `req_spell` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Additinal Data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_chain`
--

LOCK TABLES `spell_chain` WRITE;
/*!40000 ALTER TABLE `spell_chain` DISABLE KEYS */;
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
(10,0,10,1,0),
(17,0,17,1,0),
(116,0,116,1,0),
(118,0,118,1,0),
(120,0,120,1,0),
(122,0,122,1,0),
(133,0,133,1,0),
(136,0,136,1,0),
(139,0,139,1,0),
(143,133,133,2,0),
(145,143,133,3,0),
(168,0,168,1,0),
(172,0,172,1,0),
(205,116,116,2,0),
(324,0,324,1,0),
(325,324,324,2,0),
(331,0,331,1,0),
(332,331,331,2,0),
(339,0,339,1,0),
(348,0,348,1,0),
(370,0,370,1,0),
(403,0,403,1,0),
(421,0,421,1,0),
(453,0,453,1,0),
(467,0,467,1,0),
(498,0,498,1,0),
(527,0,527,1,0),
(529,403,403,2,0),
(543,0,543,1,0),
(547,332,331,3,0),
(548,529,403,3,0),
(585,0,585,1,0),
(586,0,586,1,0),
(587,0,587,1,0),
(588,0,588,1,0),
(589,0,589,1,0),
(591,585,585,2,0),
(592,17,17,2,0),
(594,589,589,2,0),
(596,0,596,1,0),
(597,587,587,2,0),
(598,591,585,3,0),
(600,592,17,3,0),
(602,7128,588,3,0),
(604,0,604,1,0),
(605,0,605,1,0),
(635,0,635,1,0),
(639,635,635,2,0),
(642,0,642,1,0),
(647,639,635,3,0),
(686,0,686,1,0),
(687,0,687,1,0),
(689,0,689,1,0),
(693,0,693,1,0),
(695,686,686,2,0),
(696,687,687,2,0),
(699,689,689,2,0),
(702,0,702,1,0),
(704,0,704,1,0),
(705,695,686,3,0),
(706,0,706,1,0),
(707,348,348,2,0),
(709,699,689,3,0),
(710,0,710,1,0),
(724,0,724,1,0),
(740,0,740,1,0),
(755,0,755,1,0),
(770,0,770,1,0),
(774,0,774,1,0),
(778,770,770,2,0),
(781,0,781,1,0),
(782,467,467,2,0),
(837,205,116,3,0),
(853,0,853,1,0),
(865,122,122,2,0),
(879,0,879,1,0),
(905,325,324,3,0),
(913,547,331,4,0),
(915,548,403,4,0),
(930,421,421,2,0),
(939,913,331,5,0),
(943,915,403,5,0),
(945,905,324,4,0),
(959,939,331,6,0),
(970,594,589,3,0),
(976,0,976,1,0),
(980,0,980,1,0),
(984,598,585,4,0),
(988,527,527,2,0),
(990,597,587,3,0),
(992,970,589,4,0),
(996,596,596,2,0),
(1004,984,585,5,0),
(1006,602,588,4,0),
(1008,0,1008,1,0),
(1014,980,980,2,0),
(1020,642,642,2,0),
(1022,0,1022,1,0),
(1026,647,635,4,0),
(1038,0,1038,1,0),
(1042,1026,635,5,0),
(1058,774,774,2,0),
(1062,339,339,2,0),
(1064,0,1064,1,0),
(1075,782,467,3,0),
(1086,706,706,2,0),
(1088,705,686,4,0),
(1094,707,348,3,0),
(1098,0,1098,1,0),
(1106,1088,686,5,0),
(1108,702,702,2,0),
(1120,0,1120,1,0),
(1126,0,1126,1,0),
(1130,0,1130,1,0),
(1243,0,1243,1,0),
(1244,1243,1243,2,0),
(1245,1244,1243,3,0),
(1430,1058,774,3,0),
(1449,0,1449,1,0),
(1454,0,1454,1,0),
(1455,1454,1454,2,0),
(1456,1455,1454,3,0),
(1459,0,1459,1,0),
(1460,1459,1459,2,0),
(1461,1460,1459,3,0),
(1463,0,1463,1,0),
(1490,0,1490,1,0),
(1495,0,1495,1,0),
(1499,0,1499,1,0),
(1510,0,1510,1,0),
(1513,0,1513,1,0),
(1535,0,1535,1,0),
(1714,0,1714,1,0),
(1949,0,1949,1,0),
(1978,0,1978,1,0),
(2006,0,2006,1,0),
(2008,0,2008,1,0),
(2010,2006,2006,2,0),
(2050,0,2050,1,0),
(2052,2050,2050,2,0),
(2053,2052,2050,3,0),
(2054,0,2054,1,0),
(2055,2054,2054,2,0),
(2060,0,2060,1,0),
(2061,0,2061,1,0),
(2090,1430,774,4,0),
(2091,2090,774,5,0),
(2096,0,2096,1,0),
(2120,0,2120,1,0),
(2121,2120,2120,2,0),
(2136,0,2136,1,0),
(2137,2136,2136,2,0),
(2138,2137,2136,3,0),
(2362,0,2362,1,0),
(2637,0,2637,1,0),
(2643,0,2643,1,0),
(2651,0,2651,1,0),
(2652,0,2652,1,0),
(2767,992,589,5,0),
(2791,1245,1243,4,0),
(2812,0,2812,1,0),
(2818,0,2818,1,0),
(2819,2818,2818,2,0),
(2835,0,2835,1,0),
(2837,2835,2835,2,0),
(2860,930,421,3,0),
(2878,0,2878,1,0),
(2908,0,2908,1,0),
(2912,0,2912,1,0),
(2941,1094,348,4,0),
(2944,0,2944,1,0),
(2948,0,2948,1,0),
(2973,0,2973,1,0),
(2974,0,2974,1,0),
(3034,0,3034,1,0),
(3044,0,3044,1,0),
(3111,136,136,2,0),
(3140,145,133,4,0),
(3420,0,3420,1,0),
(3421,3420,3420,2,0),
(3472,1042,635,6,0),
(3599,0,3599,1,0),
(3627,2091,774,6,0),
(3661,3111,136,3,0),
(3662,3661,136,4,0),
(3698,755,755,2,0),
(3699,3698,755,3,0),
(3700,3699,755,4,0),
(3747,600,17,4,0),
(5138,0,5138,1,0),
(5143,0,5143,1,0),
(5144,5143,5143,2,0),
(5145,5144,5143,3,0),
(5176,0,5176,1,0),
(5177,5176,5176,2,0),
(5178,5177,5176,3,0),
(5179,5178,5176,4,0),
(5180,5179,5176,5,0),
(5185,0,5185,1,0),
(5186,5185,5185,2,0),
(5187,5186,5185,3,0),
(5188,5187,5185,4,0),
(5189,5188,5185,5,0),
(5195,1062,339,3,0),
(5196,5195,339,4,0),
(5232,1126,1126,2,0),
(5234,6756,1126,4,0),
(5394,0,5394,1,0),
(5484,0,5484,1,0),
(5504,0,5504,1,0),
(5505,5504,5504,2,0),
(5506,5505,5504,3,0),
(5570,0,5570,1,0),
(5573,498,498,2,0),
(5588,853,853,2,0),
(5589,5588,853,3,0),
(5599,1022,1022,2,0),
(5614,879,879,2,0),
(5615,5614,879,3,0),
(5627,2878,2878,2,0),
(5672,0,5672,1,0),
(5675,0,5675,1,0),
(5676,0,5676,1,0),
(5699,6202,6201,3,0),
(5730,0,5730,1,0),
(5740,0,5740,1,0),
(5763,0,5763,1,0),
(5782,0,5782,1,0),
(6041,943,403,6,0),
(6060,1004,585,6,0),
(6063,2055,2054,3,0),
(6064,6063,2054,4,0),
(6065,3747,17,5,0),
(6066,6065,17,6,0),
(6074,139,139,2,0),
(6075,6074,139,3,0),
(6076,6075,139,4,0),
(6077,6076,139,5,0),
(6078,6077,139,6,0),
(6117,0,6117,1,0),
(6127,5506,5504,4,0),
(6129,990,587,4,0),
(6131,865,122,3,0),
(6141,10,10,2,0),
(6143,0,6143,1,0),
(6201,0,6201,1,0),
(6202,6201,6201,2,0),
(6205,1108,702,3,0),
(6213,5782,5782,2,0),
(6215,6213,5782,3,0),
(6217,1014,980,3,0),
(6219,5740,5740,2,0),
(6222,172,172,2,0),
(6223,6222,172,3,0),
(6226,5138,5138,2,0),
(6229,0,6229,1,0),
(6353,0,6353,1,0),
(6363,3599,3599,2,0),
(6364,6363,3599,3,0),
(6365,6364,3599,4,0),
(6366,0,6366,1,0),
(6371,5672,5672,2,0),
(6372,6371,5672,3,0),
(6375,5394,5394,2,0),
(6377,6375,5394,3,0),
(6390,5730,5730,2,0),
(6391,6390,5730,3,0),
(6392,6391,5730,4,0),
(6756,5232,1126,3,0),
(6778,5189,5185,6,0),
(6780,5180,5176,6,0),
(6789,0,6789,1,0),
(6940,0,6940,1,0),
(7128,588,588,2,0),
(7300,168,168,2,0),
(7301,7300,168,3,0),
(7302,0,7302,1,0),
(7320,7302,7302,2,0),
(7322,837,116,4,0),
(7328,0,7328,1,0),
(7641,1106,686,6,0),
(7646,6205,702,4,0),
(7648,6223,172,4,0),
(7651,709,689,4,0),
(7658,704,704,2,0),
(7659,7658,704,3,0),
(8004,0,8004,1,0),
(8005,959,331,7,0),
(8008,8004,8004,2,0),
(8010,8008,8004,3,0),
(8012,370,370,2,0),
(8017,0,8017,1,0),
(8018,8017,8017,2,0),
(8019,8018,8017,3,0),
(8024,0,8024,1,0),
(8027,8024,8024,2,0),
(8030,8027,8024,3,0),
(8033,0,8033,1,0),
(8034,0,8034,1,0),
(8037,8034,8034,2,0),
(8038,8033,8033,2,0),
(8042,0,8042,1,0),
(8044,8042,8042,2,0),
(8045,8044,8042,3,0),
(8046,8045,8042,4,0),
(8050,0,8050,1,0),
(8052,8050,8050,2,0),
(8053,8052,8050,3,0),
(8056,0,8056,1,0),
(8058,8056,8056,2,0),
(8071,0,8071,1,0),
(8075,0,8075,1,0),
(8092,0,8092,1,0),
(8102,8092,8092,2,0),
(8103,8102,8092,3,0),
(8104,8103,8092,4,0),
(8105,8104,8092,5,0),
(8106,8105,8092,6,0),
(8122,0,8122,1,0),
(8124,8122,8122,2,0),
(8129,0,8129,1,0),
(8131,8129,8129,2,0),
(8134,945,324,5,0),
(8154,8071,8071,2,0),
(8155,8154,8071,3,0),
(8160,8075,8075,2,0),
(8161,8160,8075,3,0),
(8181,0,8181,1,0),
(8184,0,8184,1,0),
(8190,0,8190,1,0),
(8192,453,453,2,0),
(8227,0,8227,1,0),
(8232,0,8232,1,0),
(8235,8232,8232,2,0),
(8249,8227,8227,2,0),
(8288,1120,1120,2,0),
(8289,8288,1120,3,0),
(8400,3140,133,5,0),
(8401,8400,133,6,0),
(8402,8401,133,7,0),
(8406,7322,116,5,0),
(8407,8406,116,6,0),
(8408,8407,116,7,0),
(8412,2138,2136,4,0),
(8413,8412,2136,5,0),
(8416,5145,5143,4,0),
(8417,8416,5143,5,0),
(8422,2121,2120,3,0),
(8423,8422,2120,4,0),
(8427,6141,10,3,0),
(8437,1449,1449,2,0),
(8438,8437,1449,3,0),
(8439,8438,1449,4,0),
(8444,2948,2948,2,0),
(8445,8444,2948,3,0),
(8446,8445,2948,4,0),
(8450,604,604,2,0),
(8451,8450,604,3,0),
(8455,1008,1008,2,0),
(8457,543,543,2,0),
(8458,8457,543,3,0),
(8461,6143,6143,2,0),
(8462,8461,6143,3,0),
(8492,120,120,2,0),
(8494,1463,1463,2,0),
(8495,8494,1463,3,0),
(8498,1535,1535,2,0),
(8499,8498,1535,3,0),
(8512,0,8512,1,0),
(8680,0,8680,1,0),
(8681,0,8681,1,0),
(8685,8680,8680,2,0),
(8687,8681,8681,2,0),
(8689,8685,8680,3,0),
(8691,8687,8681,3,0),
(8694,5763,5763,2,0),
(8835,0,8835,1,0),
(8903,6778,5185,7,0),
(8905,6780,5176,7,0),
(8907,5234,1126,5,0),
(8910,3627,774,7,0),
(8914,1075,467,4,0),
(8918,740,740,2,0),
(8921,0,8921,1,0),
(8924,8921,8921,2,0),
(8925,8924,8921,3,0),
(8926,8925,8921,4,0),
(8927,8926,8921,5,0),
(8928,8927,8921,6,0),
(8929,8928,8921,7,0),
(8936,0,8936,1,0),
(8938,8936,8936,2,0),
(8939,8938,8936,3,0),
(8940,8939,8936,4,0),
(8941,8940,8936,5,0),
(8949,2912,2912,2,0),
(8950,8949,2912,3,0),
(8951,8950,2912,4,0),
(8955,2908,2908,2,0),
(9035,0,9035,1,0),
(9472,2061,2061,2,0),
(9473,9472,2061,3,0),
(9474,9473,2061,4,0),
(9484,0,9484,1,0),
(9485,9484,9484,2,0),
(9578,586,586,2,0),
(9579,9578,586,3,0),
(9592,9579,586,4,0),
(9749,778,770,3,0),
(9750,8941,8936,6,0),
(9756,8914,467,5,0),
(9758,8903,5185,8,0),
(9787,9785,2018,5,0),
(9788,9785,2018,5,0),
(9833,8929,8921,8,0),
(9834,9833,8921,9,0),
(9835,9834,8921,10,0),
(9839,8910,774,8,0),
(9840,9839,774,9,0),
(9841,9840,774,10,0),
(9852,5196,339,5,0),
(9853,9852,339,6,0),
(9856,9750,8936,7,0),
(9857,9856,8936,8,0),
(9858,9857,8936,9,0),
(9862,8918,740,3,0),
(9863,9862,740,4,0),
(9875,8951,2912,5,0),
(9876,9875,2912,6,0),
(9884,8907,1126,6,0),
(9885,9884,1126,7,0),
(9888,9758,5185,9,0),
(9889,9888,5185,10,0),
(9901,8955,2908,3,0),
(9907,9749,770,4,0),
(9910,9756,467,6,0),
(9912,8905,5176,8,0),
(10138,6127,5504,5,0),
(10139,10138,5504,6,0),
(10140,10139,5504,7,0),
(10144,6129,587,5,0),
(10145,10144,587,6,0),
(10148,8402,133,8,0),
(10149,10148,133,9,0),
(10150,10149,133,10,0),
(10151,10150,133,11,0),
(10156,1461,1459,4,0),
(10157,10156,1459,5,0),
(10159,8492,120,3,0),
(10160,10159,120,4,0),
(10161,10160,120,5,0),
(10169,8455,1008,3,0),
(10170,10169,1008,4,0),
(10173,8451,604,4,0),
(10174,10173,604,5,0),
(10177,8462,6143,4,0),
(10179,8408,116,8,0),
(10180,10179,116,9,0),
(10181,10180,116,10,0),
(10185,8427,10,4,0),
(10186,10185,10,5,0),
(10187,10186,10,6,0),
(10191,8495,1463,4,0),
(10192,10191,1463,5,0),
(10193,10192,1463,6,0),
(10197,8413,2136,6,0),
(10199,10197,2136,7,0),
(10201,8439,1449,5,0),
(10202,10201,1449,6,0),
(10205,8446,2948,5,0),
(10206,10205,2948,6,0),
(10207,10206,2948,7,0),
(10211,8417,5143,6,0),
(10212,10211,5143,7,0),
(10215,8423,2120,5,0),
(10216,10215,2120,6,0),
(10219,7320,7302,3,0),
(10220,10219,7302,4,0),
(10223,8458,543,4,0),
(10225,10223,543,5,0),
(10230,6131,122,4,0),
(10278,5599,1022,3,0),
(10308,5589,853,4,0),
(10312,5615,879,4,0),
(10313,10312,879,5,0),
(10314,10313,879,6,0),
(10318,2812,2812,2,0),
(10322,7328,7328,2,0),
(10324,10322,7328,3,0),
(10326,5627,2878,3,0),
(10328,3472,635,7,0),
(10329,10328,635,8,0),
(10391,6041,403,7,0),
(10392,10391,403,8,0),
(10395,8005,331,8,0),
(10396,10395,331,9,0),
(10399,8019,8017,4,0),
(10406,8155,8071,4,0),
(10407,10406,8071,5,0),
(10408,10407,8071,6,0),
(10412,8046,8042,5,0),
(10413,10412,8042,6,0),
(10414,10413,8042,7,0),
(10427,6392,5730,5,0),
(10428,10427,5730,6,0),
(10431,8134,324,6,0),
(10432,10431,324,7,0),
(10437,6365,3599,5,0),
(10438,10437,3599,6,0),
(10442,8161,8075,4,0),
(10447,8053,8050,4,0),
(10448,10447,8050,5,0),
(10456,8038,8033,3,0),
(10458,8037,8034,3,0),
(10460,6372,5672,4,0),
(10461,10460,5672,5,0),
(10462,6377,5394,4,0),
(10463,10462,5394,5,0),
(10466,8010,8004,4,0),
(10467,10466,8004,5,0),
(10468,10467,8004,6,0),
(10472,8058,8056,3,0),
(10473,10472,8056,4,0),
(10478,8181,8181,2,0),
(10479,10478,8181,3,0),
(10486,8235,8232,3,0),
(10495,5675,5675,2,0),
(10496,10495,5675,3,0),
(10497,10496,5675,4,0),
(10526,8249,8227,3,0),
(10537,8184,8184,2,0),
(10538,10537,8184,3,0),
(10585,8190,8190,2,0),
(10586,10585,8190,3,0),
(10587,10586,8190,4,0),
(10595,0,10595,1,0),
(10600,10595,10595,2,0),
(10601,10600,10595,3,0),
(10605,2860,421,4,0),
(10613,8512,8512,2,0),
(10614,10613,8512,3,0),
(10622,1064,1064,2,0),
(10623,10622,1064,3,0),
(10627,8835,8835,2,0),
(10656,10662,2108,5,0),
(10658,10662,2108,5,0),
(10660,10662,2108,5,0),
(10797,0,10797,1,0),
(10874,8131,8129,3,0),
(10875,10874,8129,4,0),
(10876,10875,8129,5,0),
(10880,2010,2006,3,0),
(10881,10880,2006,4,0),
(10888,8124,8122,3,0),
(10890,10888,8122,4,0),
(10892,2767,589,6,0),
(10893,10892,589,7,0),
(10894,10893,589,8,0),
(10898,6066,17,7,0),
(10899,10898,17,8,0),
(10900,10899,17,9,0),
(10901,10900,17,10,0),
(10909,2096,2096,2,0),
(10911,605,605,2,0),
(10912,10911,605,3,0),
(10915,9474,2061,5,0),
(10916,10915,2061,6,0),
(10917,10916,2061,7,0),
(10927,6078,139,7,0),
(10928,10927,139,8,0),
(10929,10928,139,9,0),
(10933,6060,585,7,0),
(10934,10933,585,8,0),
(10937,2791,1243,5,0),
(10938,10937,1243,6,0),
(10941,9592,586,5,0),
(10942,10941,586,6,0),
(10945,8106,8092,7,0),
(10946,10945,8092,8,0),
(10947,10946,8092,9,0),
(10951,1006,588,5,0),
(10952,10951,588,6,0),
(10953,8192,453,3,0),
(10955,9485,9484,3,0),
(10957,976,976,2,0),
(10958,10957,976,3,0),
(10960,996,596,3,0),
(10961,10960,596,4,0),
(10963,2060,2060,2,0),
(10964,10963,2060,3,0),
(10965,10964,2060,4,0),
(11113,0,11113,1,0),
(11314,8499,1535,4,0),
(11315,11314,1535,5,0),
(11335,8689,8680,4,0),
(11336,11335,8680,5,0),
(11337,11336,8680,6,0),
(11341,8691,8681,4,0),
(11342,11341,8681,5,0),
(11343,11342,8681,6,0),
(11353,2819,2818,3,0),
(11354,11353,2818,4,0),
(11357,2837,2835,3,0),
(11358,11357,2835,4,0),
(11366,0,11366,1,0),
(11400,8694,5763,3,0),
(11426,0,11426,1,0),
(11659,7641,686,7,0),
(11660,11659,686,8,0),
(11661,11660,686,9,0),
(11665,2941,348,5,0),
(11667,11665,348,6,0),
(11668,11667,348,7,0),
(11671,7648,172,5,0),
(11672,11671,172,6,0),
(11675,8289,1120,4,0),
(11677,6219,5740,3,0),
(11678,11677,5740,4,0),
(11683,1949,1949,2,0),
(11684,11683,1949,3,0),
(11687,1456,1454,4,0),
(11688,11687,1454,5,0),
(11689,11688,1454,6,0),
(11693,3700,755,5,0),
(11694,11693,755,6,0),
(11695,11694,755,7,0),
(11699,7651,689,5,0),
(11700,11699,689,6,0),
(11703,6226,5138,3,0),
(11704,11703,5138,4,0),
(11707,7646,702,5,0),
(11708,11707,702,6,0),
(11711,6217,980,4,0),
(11712,11711,980,5,0),
(11713,11712,980,6,0),
(11717,7659,704,4,0),
(11719,1714,1714,2,0),
(11721,1490,1490,2,0),
(11722,11721,1490,3,0),
(11725,1098,1098,2,0),
(11726,11725,1098,3,0),
(11729,5699,6201,4,0),
(11730,11729,6201,5,0),
(11733,1086,706,3,0),
(11734,11733,706,4,0),
(11735,11734,706,5,0),
(11739,6229,6229,2,0),
(11740,11739,6229,3,0),
(12505,11366,11366,2,0),
(12522,12505,11366,3,0),
(12523,12522,11366,4,0),
(12524,12523,11366,5,0),
(12525,12524,11366,6,0),
(12526,12525,11366,7,0),
(12824,118,118,2,0),
(12825,12824,118,3,0),
(12826,12825,118,4,0),
(12880,0,12880,1,0),
(13018,11113,11113,2,0),
(13019,13018,11113,3,0),
(13020,13019,11113,4,0),
(13021,13020,11113,5,0),
(13031,11426,11426,2,0),
(13032,13031,11426,3,0),
(13033,13032,11426,4,0),
(13165,0,13165,1,0),
(13218,0,13218,1,0),
(13220,0,13220,1,0),
(13222,13218,13218,2,0),
(13223,13222,13218,3,0),
(13224,13223,13218,4,0),
(13228,13220,13220,2,0),
(13229,13228,13220,3,0),
(13230,13229,13220,4,0),
(13542,3662,136,5,0),
(13543,13542,136,6,0),
(13544,13543,136,7,0),
(13549,1978,1978,2,0),
(13550,13549,1978,3,0),
(13551,13550,1978,4,0),
(13552,13551,1978,5,0),
(13553,13552,1978,6,0),
(13554,13553,1978,7,0),
(13555,13554,1978,8,0),
(13795,0,13795,1,0),
(13797,0,13797,1,0),
(13812,0,13812,1,0),
(13813,0,13813,1,0),
(13896,0,13896,1,0),
(13908,0,13908,1,0),
(14201,12880,12880,2,0),
(14202,14201,12880,3,0),
(14203,14202,12880,4,0),
(14204,14203,12880,5,0),
(14260,2973,2973,2,0),
(14261,14260,2973,3,0),
(14262,14261,2973,4,0),
(14263,14262,2973,5,0),
(14264,14263,2973,6,0),
(14265,14264,2973,7,0),
(14266,14265,2973,8,0),
(14267,2974,2974,2,0),
(14268,14267,2974,3,0),
(14269,1495,1495,2,0),
(14270,14269,1495,3,0),
(14271,14270,1495,4,0),
(14272,781,781,2,0),
(14273,14272,781,3,0),
(14274,20736,20736,2,0),
(14279,3034,3034,2,0),
(14280,14279,3034,3,0),
(14281,3044,3044,2,0),
(14282,14281,3044,3,0),
(14283,14282,3044,4,0),
(14284,14283,3044,5,0),
(14285,14284,3044,6,0),
(14286,14285,3044,7,0),
(14287,14286,3044,8,0),
(14288,2643,2643,2,0),
(14289,14288,2643,3,0),
(14290,14289,2643,4,0),
(14294,1510,1510,2,0),
(14295,14294,1510,3,0),
(14298,13797,13797,2,0),
(14299,14298,13797,3,0),
(14300,14299,13797,4,0),
(14301,14300,13797,5,0),
(14302,13795,13795,2,0),
(14303,14302,13795,3,0),
(14304,14303,13795,4,0),
(14305,14304,13795,5,0),
(14310,1499,1499,2,0),
(14311,14310,1499,3,0),
(14314,13812,13812,2,0),
(14315,14314,13812,3,0),
(14316,13813,13813,2,0),
(14317,14316,13813,3,0),
(14318,13165,13165,2,0),
(14319,14318,13165,3,0),
(14320,14319,13165,4,0),
(14321,14320,13165,5,0),
(14322,14321,13165,6,0),
(14323,1130,1130,2,0),
(14324,14323,1130,3,0),
(14325,14324,1130,4,0),
(14326,1513,1513,2,0),
(14327,14326,1513,3,0),
(14752,0,14752,1,0),
(14818,14752,14752,2,0),
(14819,14818,14752,3,0),
(14914,0,14914,1,0),
(15107,0,15107,1,0),
(15111,15107,15107,2,0),
(15112,15111,15107,3,0),
(15207,10392,403,9,0),
(15208,15207,403,10,0),
(15237,0,15237,1,0),
(15261,15267,14914,8,0),
(15262,14914,14914,2,0),
(15263,15262,14914,3,0),
(15264,15263,14914,4,0),
(15265,15264,14914,5,0),
(15266,15265,14914,6,0),
(15267,15266,14914,7,0),
(15407,0,15407,1,0),
(15430,15237,15237,2,0),
(15431,15430,15237,3,0),
(15629,14274,20736,3,0),
(15630,15629,20736,4,0),
(15631,15630,20736,5,0),
(15632,15631,20736,6,0),
(16314,10399,8017,5,0),
(16315,16314,8017,6,0),
(16316,16315,8017,7,0),
(16339,8030,8024,4,0),
(16341,16339,8024,5,0),
(16342,16341,8024,6,0),
(16352,10458,8034,4,0),
(16353,16352,8034,5,0),
(16355,10456,8033,4,0),
(16356,16355,8033,5,0),
(16362,10486,8232,4,0),
(16387,10526,8227,4,0),
(16689,0,16689,1,339),
(16810,16689,16689,2,1062),
(16811,16810,16689,3,5195),
(16812,16811,16689,4,5196),
(16813,16812,16689,5,9852),
(16857,0,16857,1,0),
(16914,0,16914,1,0),
(17039,9787,2018,6,0),
(17040,9787,2018,6,0),
(17041,9787,2018,6,0),
(17311,15407,15407,2,0),
(17312,17311,15407,3,0),
(17313,17312,15407,4,0),
(17314,17313,15407,5,0),
(17329,16813,16689,6,9853),
(17390,16857,16857,2,0),
(17391,17390,16857,3,0),
(17392,17391,16857,4,0),
(17401,16914,16914,2,0),
(17402,17401,16914,3,0),
(17727,2362,2362,2,0),
(17728,17727,2362,3,0),
(17862,0,17862,1,0),
(17877,0,17877,1,0),
(17919,5676,5676,2,0),
(17920,17919,5676,3,0),
(17921,17920,5676,4,0),
(17922,17921,5676,5,0),
(17923,17922,5676,6,0),
(17924,6353,6353,2,0),
(17925,6789,6789,2,0),
(17926,17925,6789,3,0),
(17928,5484,5484,2,0),
(17937,17862,17862,2,0),
(17951,6366,6366,2,0),
(17952,17951,6366,3,0),
(17953,17952,6366,4,0),
(17962,0,17962,1,0),
(18137,0,18137,1,0),
(18220,0,18220,1,0),
(18265,0,18265,1,0),
(18647,710,710,2,0),
(18657,2637,2637,2,0),
(18658,18657,2637,3,0),
(18807,17314,15407,6,0),
(18809,12526,11366,8,0),
(18867,17877,17877,2,0),
(18868,18867,17877,3,0),
(18869,18868,17877,4,0),
(18870,18869,17877,5,0),
(18871,18870,17877,6,0),
(18879,18265,18265,2,0),
(18880,18879,18265,3,0),
(18881,18880,18265,4,0),
(18930,17962,17962,2,0),
(18931,18930,17962,3,0),
(18932,18931,17962,4,0),
(18937,18220,18220,2,0),
(18938,18937,18220,3,0),
(19236,13908,13908,2,0),
(19238,19236,13908,3,0),
(19240,19238,13908,4,0),
(19241,19240,13908,5,0),
(19242,19241,13908,6,0),
(19243,19242,13908,7,0),
(19261,2652,2652,2,0),
(19262,19261,2652,3,0),
(19264,19262,2652,4,0),
(19265,19264,2652,5,0),
(19266,19265,2652,6,0),
(19271,13896,13896,2,0),
(19273,19271,13896,3,0),
(19274,19273,13896,4,0),
(19275,19274,13896,5,0),
(19276,2944,2944,2,0),
(19277,19276,2944,3,0),
(19278,19277,2944,4,0),
(19279,19278,2944,5,0),
(19280,19279,2944,6,0),
(19281,9035,9035,2,0),
(19282,19281,9035,3,0),
(19283,19282,9035,4,0),
(19284,19283,9035,5,0),
(19285,19284,9035,6,0),
(19289,2651,2651,2,0),
(19291,19289,2651,3,0),
(19292,19291,2651,4,0),
(19293,19292,2651,5,0),
(19296,10797,10797,2,0),
(19299,19296,10797,3,0),
(19302,19299,10797,4,0),
(19303,19302,10797,5,0),
(19304,19303,10797,6,0),
(19305,19304,10797,7,0),
(19306,0,19306,1,0),
(19308,18137,18137,2,0),
(19309,19308,18137,3,0),
(19310,19309,18137,4,0),
(19311,19310,18137,5,0),
(19312,19311,18137,6,0),
(19386,0,19386,1,0),
(19434,0,19434,1,0),
(19506,0,19506,1,0),
(19740,0,19740,1,0),
(19742,0,19742,1,0),
(19750,0,19750,1,0),
(19834,19740,19740,2,0),
(19835,19834,19740,3,0),
(19836,19835,19740,4,0),
(19837,19836,19740,5,0),
(19838,19837,19740,6,0),
(19850,19742,19742,2,0),
(19852,19850,19742,3,0),
(19853,19852,19742,4,0),
(19854,19853,19742,5,0),
(19939,19750,19750,2,0),
(19940,19939,19750,3,0),
(19941,19940,19750,4,0),
(19942,19941,19750,5,0),
(19943,19942,19750,6,0),
(19977,0,19977,1,0),
(19978,19977,19977,2,0),
(19979,19978,19977,3,0),
(20043,0,20043,1,0),
(20116,26573,26573,2,0),
(20162,21082,21082,2,0),
(20165,0,20165,1,0),
(20166,0,20166,1,0),
(20190,20043,20043,2,0),
(20217,0,20217,1,0),
(20219,12656,4036,5,0),
(20222,12656,4036,5,0),
(20287,21084,20154,3,0),
(20288,20287,20154,4,0),
(20289,20288,20154,5,0),
(20290,20289,20154,6,0),
(20291,20290,20154,7,0),
(20292,20291,20154,8,0),
(20293,20292,20154,9,0),
(20305,20162,21082,3,0),
(20306,20305,21082,4,0),
(20307,20306,21082,5,0),
(20308,20307,21082,6,0),
(20347,20165,20165,2,0),
(20348,20347,20165,3,0),
(20349,20348,20165,4,0),
(20356,20166,20166,2,0),
(20357,20356,20166,3,0),
(20375,0,20375,1,0),
(20473,0,20473,1,0),
(20484,0,20484,1,0),
(20609,2008,2008,2,0),
(20610,20609,2008,3,0),
(20729,6940,6940,2,0),
(20736,0,20736,1,0),
(20739,20484,20484,2,0),
(20742,20739,20484,3,0),
(20747,20742,20484,4,0),
(20748,20747,20484,5,0),
(20752,693,693,2,0),
(20755,20752,693,3,0),
(20756,20755,693,4,0),
(20757,20756,693,5,0),
(20770,10881,2006,5,0),
(20772,10324,7328,4,0),
(20773,20772,7328,5,0),
(20776,20610,2008,4,0),
(20777,20776,2008,5,0),
(20900,19434,19434,2,0),
(20901,20900,19434,3,0),
(20902,20901,19434,4,0),
(20903,20902,19434,5,0),
(20904,20903,19434,6,0),
(20905,19506,19506,2,0),
(20906,20905,19506,3,0),
(20909,19306,19306,2,0),
(20910,20909,19306,3,0),
(20911,0,20911,1,0),
(20912,20911,20911,2,0),
(20913,20912,20911,3,0),
(20914,20913,20911,4,0),
(20915,20375,20375,2,0),
(20918,20915,20375,3,0),
(20919,20918,20375,4,0),
(20920,20919,20375,5,0),
(20922,20116,26573,3,0),
(20923,20922,26573,4,0),
(20924,20923,26573,5,0),
(20925,0,20925,1,0),
(20927,20925,20925,2,0),
(20928,20927,20925,3,0),
(20929,20473,20473,2,0),
(20930,20929,20473,3,0),
(21082,0,21082,1,0),
(21562,0,21562,1,0),
(21564,21562,21562,2,0),
(21849,0,21849,1,0),
(21850,21849,21849,2,0),
(22782,6117,6117,2,0),
(22783,22782,6117,3,0),
(24132,19386,19386,2,0),
(24133,24132,19386,3,0),
(24239,24274,24275,3,0),
(24274,24275,24275,2,0),
(24275,0,24275,1,0),
(24974,5570,5570,2,0),
(24975,24974,5570,3,0),
(24976,24975,5570,4,0),
(24977,24976,5570,5,0),
(25290,19854,19742,6,0),
(25291,19838,19740,7,0),
(25292,10329,635,9,0),
(25294,14290,2643,5,0),
(25295,13555,1978,9,0),
(25296,14322,13165,7,0),
(25297,9889,5185,11,0),
(25298,9876,2912,7,0),
(25299,9841,774,11,0),
(25304,10181,116,11,0),
(25306,10151,133,12,0),
(25307,11661,686,10,0),
(25309,11668,348,8,0),
(25311,11672,172,7,0),
(25314,10965,2060,5,0),
(25315,10929,139,10,0),
(25316,10961,596,5,0),
(25345,10212,5143,8,0),
(25347,11358,2835,5,0),
(25349,11354,2818,5,0),
(25357,10396,331,10,0),
(25359,10627,8835,3,0),
(25361,10442,8075,5,0),
(25782,0,25782,1,19838),
(25890,0,25890,1,19979),
(25894,0,25894,1,19854),
(25895,0,25895,1,1038),
(25898,0,25898,1,20217),
(25899,0,25899,1,20914),
(25916,25782,25782,2,25291),
(25918,25894,25894,2,25290),
(26573,0,26573,1,0),
(27681,14752,14752,2,0),
(27685,26201,7371,6,0),
(27799,15431,15237,4,0),
(27800,27799,15237,5,0),
(27801,27800,15237,6,0),
(27841,14819,14752,4,0),
(27870,724,724,2,0),
(27871,27870,724,3,0),
(28609,10177,6143,5,0),
(28610,11740,6229,4,0),
(28612,10145,587,7,0),
(29228,10448,8050,6,0),
(33388,0,33388,1,0),
(33391,33388,33388,2,0);
/*!40000 ALTER TABLE `spell_chain` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

