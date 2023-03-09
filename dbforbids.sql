-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 11:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbforbids`
--

-- --------------------------------------------------------

--
-- Table structure for table `smart_ad`
--

CREATE TABLE `smart_ad` (
  `id` int(11) NOT NULL,
  `pos` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_ad`
--

INSERT INTO `smart_ad` (`id`, `pos`, `type`, `link`, `image`, `script`, `status`) VALUES
(1, 1, 'image', '', 'logoo.png', '', 'enable'),
(2, 2, 'image', '', '320x100.png', '', 'disable'),
(3, 3, 'image', '', '728x902.png', '', 'enable'),
(4, 4, 'image', '', 'imageedit_39_4607512792.png', '', 'enable'),
(5, 5, 'image', '', '728x903.png', '', 'disable'),
(6, 6, 'image', '', '320x1001.png', '', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `smart_admin`
--

CREATE TABLE `smart_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `app_title` varchar(225) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT 'YES',
  `username` varchar(125) NOT NULL,
  `pswd` varchar(256) NOT NULL,
  `app_logo` varchar(225) NOT NULL,
  `fav_icon` varchar(225) NOT NULL,
  `vcode` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_admin`
--

INSERT INTO `smart_admin` (`id`, `name`, `app_title`, `email`, `mobile_no`, `address`, `active`, `username`, `pswd`, `app_logo`, `fav_icon`, `vcode`) VALUES
(2, 'Forbids_Administrator', 'FORBIDS_admin', 'admin1@gmail.com', '+62821212121212', NULL, 'YES', 'admin', '7746c32c857a6c2e4cb85b72458778936796799836cc2005678c44f96b7171a884422f2bebebd7f263aa6a36b4bb6674a3cb6ddc4772ab071092859bc5a1c536lLl89M/mxivTN8xQ9NRky/WeDBkkMiSjZf+apGoaCiY=', 'mcproject.png', 'favicon.png', 'xxxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `smart_admin_notification`
--

CREATE TABLE `smart_admin_notification` (
  `id` int(11) NOT NULL,
  `icon` varchar(25) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smart_category`
--

CREATE TABLE `smart_category` (
  `id` int(11) NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `url` varchar(225) NOT NULL,
  `active` varchar(5) DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_category`
--

INSERT INTO `smart_category` (`id`, `name`, `url`, `active`) VALUES
(14, 'HTML', 'html', 'YES'),
(15, 'CSS', 'css', 'YES'),
(16, 'Framework', 'framework', 'YES'),
(17, 'Javascript', 'javascript', 'YES'),
(18, 'Event', 'event', 'NO'),
(19, 'Server', 'server', 'YES'),
(20, '', '-23-03-08:19:03:21', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `smart_notification`
--

CREATE TABLE `smart_notification` (
  `id` int(11) NOT NULL,
  `user_ref` int(11) DEFAULT NULL,
  `icon` varchar(35) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT 'YES',
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smart_posts`
--

CREATE TABLE `smart_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `desic` text DEFAULT NULL,
  `image` varchar(155) DEFAULT NULL,
  `url` varchar(225) NOT NULL,
  `user_ref` int(11) DEFAULT NULL,
  `cat_ref` int(11) NOT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `count` int(11) NOT NULL,
  `active` varchar(5) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_posts`
--

INSERT INTO `smart_posts` (`id`, `title`, `desic`, `image`, `url`, `user_ref`, `cat_ref`, `created_on`, `count`, `active`) VALUES
(35, 'Bagaiman membuat tahun di Copyright secara otomatis?', '<p>Tahun itu suka terabaikan. Tahun sudah berganti tetapi tahun di situ belum berubah. Hal ini bisa menimbulkan persepsi blog kurang diperhatikan, blog kurang update, blog kurang keurus, dan hal senada lainnya.</p><p>Intinya, mengganti tahun copyright mengikuti tahun berjalan menjadi hal yang cukup penting demi keberlangsungan hidup blog. Jangan diabaikan. Kasian.</p><p>Lalu gimana solusinya? Di samping Anda perlu tahu cara membuat footer copyright di HTML, solusinya adalah dengan membuat tahun copyright itu berganti otomatis. Biar sistem yang bekerja mengganti otomatis di setiap pergantian tahun. Caranya?</p><p>Misalkan Copyright 2022..</p>', NULL, 'bagaiman-membuat-tahun-di-copyright-secara-otomatis', 59, 14, '2022-06-02 02:53:54', 13, 'NO'),
(36, 'Bagaimana mengatur warna, ukuran dan jenis huruf di HTML?', '<p>Pemula ni gan, gimana ya cara atur warna, ukuran huruf, dan jenis font di HTML? Mohon bantuannya, terima kasih suhu</p>', NULL, 'bagaimana-mengatur-warna-ukuran-dan-jenis-huruf-di-html', 59, 15, '2022-06-02 02:56:15', 20, 'NO'),
(37, 'Rekomendasi Framework yang Cocok untuk Project Besar', '<p>Framework Terbaik dan Populer 2022 untuk Project Besar Apa ya?<br></p>', NULL, 'rekomendasi-framework-yang-cocok-untuk-project-besar', 59, 16, '2022-06-02 03:01:15', 8, 'NO'),
(38, 'Framework Javascript yang Mudah untuk Pemula', '<p>Kasih rekomendasi bosku, untuk belajar framework javascript dari nol, lebih mudah yang mana ya?</p>', NULL, 'framework-javascript-yang-mudah-untuk-pemula', 59, 17, '2022-06-02 03:02:29', 6, 'NO'),
(39, 'Informasi Event dan Komunitas Belajar', '<p>Adakah informasi event terbaru dan komunitas programming buat belajar? </p>', NULL, 'informasi-event-dan-komunitas-belajar', 59, 16, '2022-06-02 03:03:56', 10, 'NO'),
(40, 'Rekomendasi Web Hosting Termurah Indonesia', '<p>Rekomendasi hosting murah dong gan, dengan spek yang sama hosting apa yg termurah ya di indonesia?</p>', NULL, 'web-hosting-murah-2022', 59, 19, '2022-06-02 03:06:24', 10, 'NO'),
(41, 'Adakah Rekomendasi VPS Server Indo Terbaik?', '<p>Kasih rekomendasi gan, VPS dengan data center di Indo terbaik saat ini..</p>', NULL, 'adakah-rekomendasi-vps-server-indo-terbaik', 59, 19, '2022-06-02 03:08:01', 2, 'NO'),
(42, 'Programmer di Indonesia Saat ini Gaji Berapa?', 'Range gaji programmer di bidang front-end saat ini berapa ya gesss?&nbsp;', NULL, 'programmer-di-indonesia-saat-ini-gaji-berapa', 59, 14, '2022-06-02 03:09:21', 15, 'NO'),
(43, 'Framework CSS Terbaik untuk Project Laravel', '<p>Teman-teman disini biasa menggunakan CSS apa ya untuk project Laravel? apakah ada rekomendasi terbaik?</p>', NULL, 'framework-css-terbaik-untuk-project-laravel', 59, 15, '2022-06-02 03:10:17', 13, 'NO'),
(44, 'Tesssssssssssssssssssssssssssssssss', '<p style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-bottom: 25px; font-family: Poppins, sans-serif; font-size: 15px;\">The multi-step process enhances the user experience by dividing the registration process into smaller, more manageable steps. This reduces confusion and frustration for the user, as clear and concise guidance is provided throughout the process.&nbsp;</p><p style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-bottom: 25px; font-family: Poppins, sans-serif; font-size: 15px;\">In this blog, you will learn how to create a Multi-Step Progress Bar using&nbsp;<a href=\"https://codinglabyt.blogspot.com/search/label/HTML%20and%20CSS\" target=\"_blank\" style=\"border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(255, 61, 0);\">HTML CSS</a>&nbsp;&amp; JavaScript. As you can see in the image there will be a total of four steps and two buttons to control that multistep progress bar. Additionally, recently I thought to create&nbsp;<a href=\"https://www.codinglabweb.com/2023/01/loading-spinner-html-css.html\" target=\"_blank\" style=\"border: 0px; outline-style: initial; outline-width: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(255, 61, 0);\">Neumorphism Loading Animation</a>, you may like that as well.</p><p style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-bottom: 25px; font-family: Poppins, sans-serif; font-size: 15px;\">By the end of this blog post, you will have a Multi-Step Progress Bar. And, you can implement it in various sections like Registration or signup form.</p>', NULL, 'tesssssssssssssssssssssssssssssssss', 59, 14, '2023-03-09 08:04:11', 4, 'YES'),
(45, 'daqdqdqwdqdwqd qw', '<p>qdqdqdqdqdqdq qwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww</p>', NULL, 'daqdqdqwdqdwqd-qw', 59, 16, '2023-03-09 14:49:22', 3, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `smart_replay`
--

CREATE TABLE `smart_replay` (
  `id` int(11) NOT NULL,
  `user_ref` int(11) DEFAULT NULL,
  `post_ref` int(11) DEFAULT NULL,
  `replay` text DEFAULT NULL,
  `image` varchar(155) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` varchar(5) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_replay`
--

INSERT INTO `smart_replay` (`id`, `user_ref`, `post_ref`, `replay`, `image`, `time`, `active`) VALUES
(82, 59, 35, '<p>Test Reply</p>', NULL, '2022-06-01 20:45:44', 'NO'),
(83, 59, 44, '<p>CEK</p>', NULL, '2023-03-09 01:05:01', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `smart_replay_like`
--

CREATE TABLE `smart_replay_like` (
  `id` int(11) NOT NULL,
  `user_ref` int(11) DEFAULT NULL,
  `replay_ref` int(11) DEFAULT NULL,
  `post_ref` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smart_reset_link`
--

CREATE TABLE `smart_reset_link` (
  `id` int(11) NOT NULL,
  `v_code` varchar(20) DEFAULT NULL,
  `user_ref` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smart_script_header`
--

CREATE TABLE `smart_script_header` (
  `id` int(11) NOT NULL,
  `txt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_script_header`
--

INSERT INTO `smart_script_header` (`id`, `txt`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `smart_settings`
--

CREATE TABLE `smart_settings` (
  `id` int(11) NOT NULL,
  `activation` tinyint(4) DEFAULT 0,
  `replay` tinyint(4) DEFAULT 0,
  `like` tinyint(4) DEFAULT 0,
  `pp` int(11) NOT NULL,
  `smtp` bit(1) NOT NULL,
  `host` varchar(125) NOT NULL,
  `port` varchar(10) NOT NULL,
  `user` varchar(155) NOT NULL,
  `pswd` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_settings`
--

INSERT INTO `smart_settings` (`id`, `activation`, `replay`, `like`, `pp`, `smtp`, `host`, `port`, `user`, `pswd`) VALUES
(1, 0, 0, 0, 10, b'0', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `smart_sub_cat`
--

CREATE TABLE `smart_sub_cat` (
  `id` int(11) NOT NULL,
  `cat_ref` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `desic` text DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smart_users`
--

CREATE TABLE `smart_users` (
  `id` int(11) NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `email_address` varchar(125) DEFAULT NULL,
  `designation` varchar(125) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(225) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `active` varchar(5) DEFAULT 'YES',
  `verify` int(11) NOT NULL DEFAULT 0,
  `url` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_users`
--

INSERT INTO `smart_users` (`id`, `name`, `mobile_number`, `email_address`, `designation`, `address`, `image`, `password`, `active`, `verify`, `url`) VALUES
(59, 'Forbids_USER', '628121212121', 'mycoding@401xd.com', 'USER', 'CEK', '59imageedit_39_4607512792.png', '5e2fe5d765545e770b01a5a2a45b01ce9e26d8c91c2fb38353fbbd7ddeb126a24f437408ec0201ae8e9d0dcc8b8eba9904661471b63f763a992eaf06754b24ecx0CJduD7WG7ntnKjVoHGtfVJSUPB4xDV+/RDwMafSuA=', 'YES', 1, 'mc-project'),
(60, 'USER_forbids', NULL, 'user1@gmail.com', 'forbids', NULL, '', 'c82e7df9d9ff283a7af45885d5658f35571e07c26c18029d0f02866e3aeb9d69f1a9bd2cb5eeb753a39aed8e0880cf912602a0e3e0e65c5262052709e548fc88NcLiph5Lemm3AHo8I+IUbGtc7nmo3grXcnJ2JBBl4OQ=', 'YES', 0, 'userforbids');

-- --------------------------------------------------------

--
-- Table structure for table `smart_verification_link`
--

CREATE TABLE `smart_verification_link` (
  `id` int(11) NOT NULL,
  `v_code` varchar(20) DEFAULT NULL,
  `user_ref` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_verification_link`
--

INSERT INTO `smart_verification_link` (`id`, `v_code`, `user_ref`) VALUES
(33, 'wZlHt6WQIJNI21x059', 59),
(34, 'UwyUdtNvIEgKp0e060', 60);

-- --------------------------------------------------------

--
-- Table structure for table `smart_visitors`
--

CREATE TABLE `smart_visitors` (
  `id` int(11) NOT NULL,
  `country` varchar(25) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `tim` time DEFAULT NULL,
  `device` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `visitor` int(11) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `active` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `smart_ad`
--
ALTER TABLE `smart_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_admin`
--
ALTER TABLE `smart_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_admin_notification`
--
ALTER TABLE `smart_admin_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_category`
--
ALTER TABLE `smart_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_notification`
--
ALTER TABLE `smart_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_posts`
--
ALTER TABLE `smart_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ref` (`user_ref`);

--
-- Indexes for table `smart_replay`
--
ALTER TABLE `smart_replay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ref` (`user_ref`),
  ADD KEY `post_ref` (`post_ref`);

--
-- Indexes for table `smart_replay_like`
--
ALTER TABLE `smart_replay_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ref` (`user_ref`),
  ADD KEY `replay_ref` (`replay_ref`);

--
-- Indexes for table `smart_reset_link`
--
ALTER TABLE `smart_reset_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ref` (`user_ref`);

--
-- Indexes for table `smart_script_header`
--
ALTER TABLE `smart_script_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_settings`
--
ALTER TABLE `smart_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_sub_cat`
--
ALTER TABLE `smart_sub_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_users`
--
ALTER TABLE `smart_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_verification_link`
--
ALTER TABLE `smart_verification_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smart_verification_link_ibfk_1` (`user_ref`);

--
-- Indexes for table `smart_visitors`
--
ALTER TABLE `smart_visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `smart_ad`
--
ALTER TABLE `smart_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `smart_admin`
--
ALTER TABLE `smart_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smart_admin_notification`
--
ALTER TABLE `smart_admin_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smart_category`
--
ALTER TABLE `smart_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `smart_notification`
--
ALTER TABLE `smart_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `smart_posts`
--
ALTER TABLE `smart_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `smart_replay`
--
ALTER TABLE `smart_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `smart_replay_like`
--
ALTER TABLE `smart_replay_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `smart_reset_link`
--
ALTER TABLE `smart_reset_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `smart_script_header`
--
ALTER TABLE `smart_script_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smart_settings`
--
ALTER TABLE `smart_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smart_sub_cat`
--
ALTER TABLE `smart_sub_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smart_users`
--
ALTER TABLE `smart_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `smart_verification_link`
--
ALTER TABLE `smart_verification_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `smart_visitors`
--
ALTER TABLE `smart_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `smart_posts`
--
ALTER TABLE `smart_posts`
  ADD CONSTRAINT `smart_posts_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `smart_users` (`id`);

--
-- Constraints for table `smart_replay`
--
ALTER TABLE `smart_replay`
  ADD CONSTRAINT `smart_replay_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `smart_users` (`id`),
  ADD CONSTRAINT `smart_replay_ibfk_2` FOREIGN KEY (`post_ref`) REFERENCES `smart_posts` (`id`);

--
-- Constraints for table `smart_replay_like`
--
ALTER TABLE `smart_replay_like`
  ADD CONSTRAINT `smart_replay_like_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `smart_users` (`id`),
  ADD CONSTRAINT `smart_replay_like_ibfk_2` FOREIGN KEY (`replay_ref`) REFERENCES `smart_replay` (`id`);

--
-- Constraints for table `smart_reset_link`
--
ALTER TABLE `smart_reset_link`
  ADD CONSTRAINT `smart_reset_link_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `smart_users` (`id`);

--
-- Constraints for table `smart_verification_link`
--
ALTER TABLE `smart_verification_link`
  ADD CONSTRAINT `smart_verification_link_ibfk_1` FOREIGN KEY (`user_ref`) REFERENCES `smart_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
