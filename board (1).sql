-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-05-23 12:31:06
-- 伺服器版本: 10.1.30-MariaDB
-- PHP 版本： 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `board`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `cellphone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `account`
--

INSERT INTO `account` (`ID`, `username`, `password`, `sex`, `cellphone`) VALUES
(1, 'jason219795', '12345678', 'male', 988219795),
(5, 'mark123', '321', 'male', 999999999),
(6, 'kevin', '456', 'male', 9989213),
(7, 'ike', '789', 'male', 989421),
(8, 'mary', '444444', 'female', 546132158),
(9, 'jasdasd213', '45646', '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

CREATE TABLE `article` (
  `no.` int(11) NOT NULL,
  `kanban` varchar(15) NOT NULL,
  `category` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `author` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `article`
--

INSERT INTO `article` (`no.`, `kanban`, `category`, `title`, `author`, `date`, `text`) VALUES
(1, 'gossiping', '爆掛', '曾文水庫蓄水量剩下6.8%', 'jason219795', '2018-05-18', '南部的科技廠不好受了\r\n\r\n每天需要的水源非常多 開始挫咧等\r\n\r\n天佑台灣'),
(2, 'gossiping', '問卦', '冷氣一天開多久？', 'jason219795', '2018-05-18', '五月中旬\r\n\r\n台北預測最高溫度36℃\r\n\r\n雨也一直下不來 - -\r\n\r\n各位鄉民冷氣一天都開多久呢？\r\n\r\n\r\n外面真是爆幹熱 QwQ'),
(3, 'gossiping', '問卦', '有沒有網路變慢的八卦？', 'jason219795', '2018-05-18', '感覺網路好像變慢了\r\n剛剛實際測試了一下\r\n好像真的變慢了\r\n天啊，怎麼會變這麼慢'),
(4, 'gossiping', '問卦', '37度很熱的八卦', 'jason219795', '2018-05-18', '肥宅現在都很努力的吹冷氣吧\r\n\r\n但是人體的體溫也是37度附近\r\n\r\n就算肥一點體溫到38度\r\n\r\n都比現在氣溫還要高了\r\n\r\n有沒有37度就覺得很熱的八卦\r\n'),
(5, 'gossiping', '新聞', '中興GG！美眾參議院通過 維持中興制裁案', 'jason219795', '2018-05-18', 'http://news.ltn.com.tw/news/business/breakingnews/2429901');

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `爆掛` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `kanban`
--

CREATE TABLE `kanban` (
  `title` varchar(15) NOT NULL,
  `name` varchar(10) NOT NULL,
  `introduction` varchar(30) NOT NULL,
  `administrator` varchar(15) NOT NULL,
  `rule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `kanban`
--

INSERT INTO `kanban` (`title`, `name`, `introduction`, `administrator`, `rule`) VALUES
('beauty', '表特', '正妹/帥哥', 'jason219795', '無'),
('gossiping', '八卦', '馬英九還我牛', 'jason219795', '賣鬧'),
('joke', '就可', '87', 'jason219795', '878'),
('LoL', '英雄聯盟', '季中邀請賽 電狼挫賽', 'jason219795', '超越'),
('NBA', 'NBA', '火箭總冠軍', 'jason219795', '艦長升空拉');

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `article` varchar(15) NOT NULL,
  `floor` int(11) NOT NULL,
  `G/B` varchar(3) NOT NULL,
  `ID` varchar(15) NOT NULL,
  `text` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `message`
--

INSERT INTO `message` (`article`, `floor`, `G/B`, `ID`, `text`, `date`) VALUES
('37度很熱的八卦', 1, '推', 'jason219795', '5樓給4樓肛', '2018-05-18'),
('37度很熱的八卦', 2, '推', 'mark123', '蓋', '2018-05-18'),
('37度很熱的八卦', 3, '推', 'mary', '冒險蓋', '2018-05-18'),
('37度很熱的八卦', 4, '---', 'kevin', '好熱', '2018-05-18'),
('37度很熱的八卦', 5, '---', 'kevin', '我自肛', '2018-05-18');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uni` (`ID`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `username` (`username`);

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`no.`),
  ADD UNIQUE KEY `no.` (`no.`),
  ADD KEY `author` (`author`),
  ADD KEY `kanban` (`kanban`),
  ADD KEY `title` (`title`);

--
-- 資料表索引 `kanban`
--
ALTER TABLE `kanban`
  ADD PRIMARY KEY (`title`),
  ADD KEY `administrator` (`administrator`),
  ADD KEY `title` (`title`);

--
-- 資料表索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`floor`),
  ADD UNIQUE KEY `uniq` (`floor`),
  ADD KEY `ID` (`ID`),
  ADD KEY `article` (`article`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表 AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `floor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`kanban`) REFERENCES `kanban` (`title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `kanban`
--
ALTER TABLE `kanban`
  ADD CONSTRAINT `kanban_ibfk_1` FOREIGN KEY (`administrator`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`article`) REFERENCES `article` (`title`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
