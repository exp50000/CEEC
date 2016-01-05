-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015 年 12 月 20 日 09:20
-- 伺服器版本: 5.6.26
-- PHP 版本： 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `register`
--

-- --------------------------------------------------------

--
-- 資料表結構 `ASTscore`
--

CREATE TABLE IF NOT EXISTS `ASTscore` (
  `Score_ID` bigint(9) unsigned NOT NULL,
  `TEST_NUM` bigint(9) NOT NULL DEFAULT '200000000',
  `Chinese` int(11) NOT NULL DEFAULT '-1',
  `English` int(11) NOT NULL DEFAULT '-1',
  `MathA` int(11) DEFAULT '-1',
  `MathB` int(11) DEFAULT '-1',
  `History` int(11) DEFAULT '-1',
  `Geography` int(11) DEFAULT '-1',
  `Civics` int(11) DEFAULT '-1',
  `Physics` int(11) DEFAULT '-1',
  `Chemistry` int(11) DEFAULT '-1',
  `Biology` int(11) DEFAULT '-1',
  `examineeID` varchar(20) NOT NULL DEFAULT 'A123456789',
  `testroomID` bigint(9) NOT NULL DEFAULT '0',
  `isPayed` tinyint(1) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8,
  `shouldpay` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100000017 DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `ASTscore`
--

INSERT INTO `ASTscore` (`Score_ID`, `TEST_NUM`, `Chinese`, `English`, `MathA`, `MathB`, `History`, `Geography`, `Civics`, `Physics`, `Chemistry`, `Biology`, `examineeID`, `testroomID`, `isPayed`, `subject`, `shouldpay`) VALUES
(100000015, 200000000, 90, 56, -1, -1, -1, -1, -1, -1, -1, -1, 'A123456789', 1, 1, '國文	英文	數甲	物理	化學	生物	', 0),
(100000016, 200000000, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'T123456789', 1, 1, '國文	英文	數甲	物理	化學	生物	', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `ELScore`
--

CREATE TABLE IF NOT EXISTS `ELScore` (
  `Score_ID` bigint(9) unsigned NOT NULL,
  `score` bigint(20) NOT NULL,
  `examineeID` varchar(20) NOT NULL,
  `Test_Num` bigint(9) NOT NULL DEFAULT '300000000',
  `testroom_ID` bigint(9) NOT NULL DEFAULT '0',
  `isPayed` tinyint(1) NOT NULL DEFAULT '0',
  `shouldpay` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `Examinee`
--

CREATE TABLE IF NOT EXISTS `Examinee` (
  `ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'TESTEST',
  `EMAIL` varchar(40) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `TEST_NUM` bigint(9) unsigned NOT NULL,
  `NAME` varchar(20) CHARACTER SET utf8 NOT NULL,
  `GENDER` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT 'F',
  `BIRTH` varchar(20) NOT NULL DEFAULT '2014-12-10',
  `PHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ADDRESS` varchar(20) CHARACTER SET utf8 NOT NULL,
  `EMER_NAME` varchar(20) CHARACTER SET utf8 NOT NULL,
  `EMER_RELA` varchar(20) CHARACTER SET utf8 NOT NULL,
  `EMER_MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOW_INCOME` tinyint(1) NOT NULL DEFAULT '0',
  `GSATscore` bigint(9) NOT NULL DEFAULT '1',
  `ASTscore` bigint(9) NOT NULL DEFAULT '1',
  `ELScore` bigint(9) NOT NULL DEFAULT '1',
  `Subject` text CHARACTER SET utf8,
  `testroom` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=232903862 DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `Examinee`
--

INSERT INTO `Examinee` (`ID`, `EMAIL`, `PASSWORD`, `TEST_NUM`, `NAME`, `GENDER`, `BIRTH`, `PHONE`, `ADDRESS`, `EMER_NAME`, `EMER_RELA`, `EMER_MOBILE`, `LOW_INCOME`, `GSATscore`, `ASTscore`, `ELScore`, `Subject`, `testroom`) VALUES
('A123456789', 'firsttest@gmail.com', 'test', 232903860, '首次測試', '女', '1994-12-10', '0988777654', '台北市新莊區ＸＸ路', '測試喔', '測試', '0955666789', 0, 143, 100000015, 1, '國文	英文	數甲	物理	化學	生物	', 0),
('T123456789', 'test2@test.com', 'test', 232903861, 'test', '男', '1998-05-05', '0988777655', 'test', 'test', 'test', 'test', 1, 144, 100000016, 1, '國文	英文	數甲	物理	化學	生物	', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `GSATscore`
--

CREATE TABLE IF NOT EXISTS `GSATscore` (
  `Score_ID` bigint(9) unsigned NOT NULL,
  `Test_Num` bigint(9) NOT NULL DEFAULT '100000000',
  `Chinese` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Math` int(11) NOT NULL,
  `Society` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `examineeID` varchar(20) NOT NULL,
  `testroomID` bigint(20) NOT NULL DEFAULT '0',
  `isPayed` tinyint(1) NOT NULL DEFAULT '0',
  `shouldpay` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `GSATscore`
--

INSERT INTO `GSATscore` (`Score_ID`, `Test_Num`, `Chinese`, `English`, `Math`, `Society`, `Science`, `examineeID`, `testroomID`, `isPayed`, `shouldpay`) VALUES
(143, 100000001, -1, -1, -1, -1, -1, 'A123456789', 1, 1, 0),
(144, 100000009, 12, 8, 9, 13, 13, 'T123456789', 2, 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `Subject`
--

CREATE TABLE IF NOT EXISTS `Subject` (
  `id` tinyint(4) NOT NULL,
  `Chinese` tinyint(1) NOT NULL,
  `English` tinyint(1) NOT NULL,
  `MathA` tinyint(1) NOT NULL,
  `MathB` tinyint(1) NOT NULL,
  `Physics` tinyint(1) NOT NULL,
  `Chemistry` tinyint(1) NOT NULL,
  `Biology` tinyint(1) NOT NULL,
  `History` tinyint(1) NOT NULL,
  `Geography` tinyint(1) NOT NULL,
  `Civics` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `Testroom`
--

CREATE TABLE IF NOT EXISTS `Testroom` (
  `testroomID` tinyint(20) NOT NULL,
  `testroomName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `testroomAddress` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `Testroom`
--

INSERT INTO `Testroom` (`testroomID`, `testroomName`, `testroomAddress`) VALUES
(1, '國立臺灣大學', '臺北市大安區羅斯福路4段1號'),
(2, '臺北市立建國高中', '臺北市中正區南海路56號'),
(3, '臺北市立中山女中', '臺北市中山區長安東路2段141號'),
(4, '新北市立板橋高中', '新北市板橋區文化路1段25號'),
(5, '國立臺中一中', '臺中市北區育才街2號'),
(6, '國立臺中文華高中', '臺中市西屯區寧夏路240號'),
(7, '臺中市立惠文高中', '臺中市南屯區公益路2段298號'),
(8, '國立臺南一中', '臺南市東區民族路1段1號'),
(9, '國立臺南二中', '臺南市北區北門路2段125號'),
(10, '國立高雄師大附中', '高雄市苓雅區凱旋二路89號');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `ASTscore`
--
ALTER TABLE `ASTscore`
  ADD PRIMARY KEY (`Score_ID`);

--
-- 資料表索引 `ELScore`
--
ALTER TABLE `ELScore`
  ADD PRIMARY KEY (`Score_ID`),
  ADD UNIQUE KEY `Score_ID` (`Score_ID`);

--
-- 資料表索引 `Examinee`
--
ALTER TABLE `Examinee`
  ADD PRIMARY KEY (`TEST_NUM`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`);

--
-- 資料表索引 `GSATscore`
--
ALTER TABLE `GSATscore`
  ADD PRIMARY KEY (`Score_ID`),
  ADD UNIQUE KEY `Score_ID` (`Score_ID`);

--
-- 資料表索引 `Testroom`
--
ALTER TABLE `Testroom`
  ADD PRIMARY KEY (`testroomID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `ASTscore`
--
ALTER TABLE `ASTscore`
  MODIFY `Score_ID` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100000017;
--
-- 使用資料表 AUTO_INCREMENT `ELScore`
--
ALTER TABLE `ELScore`
  MODIFY `Score_ID` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `Examinee`
--
ALTER TABLE `Examinee`
  MODIFY `TEST_NUM` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=232903862;
--
-- 使用資料表 AUTO_INCREMENT `GSATscore`
--
ALTER TABLE `GSATscore`
  MODIFY `Score_ID` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
