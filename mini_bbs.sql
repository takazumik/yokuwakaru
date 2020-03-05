-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2020 at 07:09 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `mini_bbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `picture`, `created`, `modified`) VALUES
(6, 'mizubitashi', '1234', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '20200304030123ama.jpg', '2020-03-04 12:01:25', '2020-03-04 03:01:25'),
(7, 'ama', '2345', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '20200304031042am.jpg', '2020-03-04 12:10:47', '2020-03-04 03:16:06'),
(8, '5678', '5678', '2abd55e001c524cb2cf6300a89ca6366848a77d5', '20200304101957am.jpg', '2020-03-04 19:21:38', '2020-03-04 10:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `member_id` int(11) NOT NULL,
  `reply_message_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `message`, `member_id`, `reply_message_id`, `created`, `modified`) VALUES
(7, '僕が死のうと思ったのは', 6, 0, '0000-00-00 00:00:00', '2020-03-04 03:12:53'),
(8, '僕が死のうと思ったのは　靴紐が解けたから\r\n結びなおすのは苦手なんだよ　人との繋がりもまた然り', 6, 0, '2020-03-04 12:14:27', '2020-03-04 03:14:27'),
(9, 'パソコンの薄明かり　上階の部屋の生活音\r\nインターフォンのチャイムの音　耳を塞ぐ鳥かごの少年\r\n見えない敵と戦ってる　六畳一間のドンキホーテ\r\nゴールはどうせ醜いものさ', 6, 0, '2020-03-04 12:14:48', '2020-03-04 03:14:48'),
(10, '善意で殺される人　悪意で飯にありつける人\r\n\r\n傍観して救われた命　つじつま合わせに生まれた僕等', 7, 0, '2020-03-04 12:18:57', '2020-03-04 03:18:57'),
(11, '雨にも負けて　風にも負けて　雪にも夏の暑さにも負けて\r\n\r\nそれでも人生って奴には　負けるわけにはいかない\r\n\r\n一人立ち尽くす　そこはまるで焼け野原', 7, 0, '2020-03-04 12:19:29', '2020-03-04 03:19:29'),
(13, '誰もが転がる石なのに皆が特別だと思うから\r\n選ばれなかった少年はナイフを握り締めて立ってた\r\n匿名を決め込む駅前の雑踏が真っ赤に染まったのは\r\n夕焼け空が綺麗だから', 7, 0, '2020-03-04 12:56:31', '2020-03-04 03:56:31'),
(14, 'つじつま合わせに生まれた僕ら\r\n', 7, 0, '2020-03-04 12:56:40', '2020-03-04 03:56:40'),
(15, '辛い辛いとはよく言うが　苦悩で死んだ例は無し\r\n\r\n寂しげな気分が丁度良い　常日頃私に丁度良い', 7, 0, '2020-03-04 12:57:51', '2020-03-04 03:57:51'),
(16, '…', 6, 0, '2020-03-04 13:08:17', '2020-03-04 04:08:17'),
(17, '拝啓、忌まわしき過去に告ぐ絶縁の詩\r\n最低な日々の最悪な夢の残骸を捨てては行けずここで息絶えようと\r\n後世 、花は咲き君に伝う変遷の詩\r\n苦悩にまみれて、嘆き悲しみ、それでも途絶えぬ歌に陽は射さずとも', 6, 0, '2020-03-04 18:08:42', '2020-03-04 09:08:42'),
(18, 'ちん棒', 6, 0, '2020-03-04 18:18:04', '2020-03-04 09:18:04'),
(19, 'キーボ', 6, 0, '2020-03-04 18:51:44', '2020-03-04 09:51:44'),
(20, 'クセがすごい…', 7, 0, '2020-03-04 18:52:46', '2020-03-04 09:52:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
