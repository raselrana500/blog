-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2018 at 09:44 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'Education '),
(7, 'sports'),
(8, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Rasel', 'Rana', 'raselrana500@gmail.com', 'this is test message for our blog.', 1, '2017-09-29 13:00:59'),
(2, 'Rasel', 'Rana', 'raselrana502@gmail.com', 'this is demo text.for test', 0, '2018-03-01 17:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Rasel Rana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>About Us lorem ipsum..this is about us page .<span>PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.About Us lorem ipsum..this is about us page .PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span></p>\r\n<p><span>About Us lorem ipsum..this is about us page .PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.About Us lorem ipsum..this is about us page .PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span></p>'),
(2, 'Privacy', '<p><span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span><span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span><span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span></p>'),
(3, 'DMCA', '<p>DMCA&nbsp;<span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span><span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span><span>language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(7, 1, 'Java post title will be go here', '<p>java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.java post description will be go here.java is a strong programming language.</p>', 'upload/e280d550b5.jpg', 'admin', 'java,java programming,programming', '2017-08-30 15:29:08', 0),
(8, 2, 'PHP post title will be go here', '<p>PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.PHP is a programming language.it''s very important programming language for web development.</p>', 'upload/4b858f6a2a.jpg', 'admin', 'php,programming', '2017-08-30 16:03:14', 1),
(9, 3, 'HTML à¦ªà§‹à¦¸à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦Ÿà¦²à§‡ à¦à¦–à¦¾à¦¨à§‡ à¦¹à¦¬à§‡ ', '<p><strong>html</strong> à¦à¦•à¦Ÿà¦¿ <strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong> à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;<strong>html</strong>&nbsp;à¦à¦•à¦Ÿà¦¿&nbsp;<span><em>programming</em></span>&nbsp;<strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong>&nbsp;à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;<strong>html</strong>&nbsp;à¦à¦•à¦Ÿà¦¿&nbsp;<span><em>programming</em></span>&nbsp;<strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong>&nbsp;à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;<strong>html</strong>&nbsp;à¦à¦•à¦Ÿà¦¿&nbsp;<span><em>programming</em></span>&nbsp;<strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong>&nbsp;à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;<strong>html</strong>&nbsp;à¦à¦•à¦Ÿà¦¿&nbsp;<span><em>programming</em></span>&nbsp;<strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong>&nbsp;à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;<strong>html</strong>&nbsp;à¦à¦•à¦Ÿà¦¿&nbsp;<span><em>programming</em></span>&nbsp;<strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong>&nbsp;à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;<strong>html</strong>&nbsp;à¦à¦•à¦Ÿà¦¿&nbsp;<span><em>programming</em></span>&nbsp;<strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong>&nbsp;à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;<strong>html</strong>&nbsp;à¦à¦•à¦Ÿà¦¿&nbsp;<span><em>programming</em></span>&nbsp;<strong>à¦²à§à¦¯à¦¾à¦™à§à¦—à§à§Ÿà§‡à¦œ</strong>&nbsp;à¥¤ à¦à¦Ÿà¦¿à¦° à¦®à¦§à§à¦¯à¦®à§‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à¦¾à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦² à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦¸à¦®à§à¦¬à¦­ à¦¨à¦¾ à¥¤ à¦à¦œà¦¨à§à¦¯ html à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦œà¦¨à§à¦¯ à¦—à§à¦°à§à¦¤à§à¦¤à¦ªà§‚à¦°à§à¦£ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¬à¦¿à¦¬à§‡à¦šà¦¿à¦¤ à¦¹à§Ÿ à¥¤&nbsp;</p>', 'upload/f1e99854d1.jpg', 'admin', 'html ,à¦à¦‡à¦šà¦Ÿà¦¿à¦à¦®à¦à¦²,web', '2017-08-30 16:29:56', 2),
(10, 4, 'Css à¦ªà§‹à¦¸à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦Ÿà§‡à¦² à¦à¦–à¦¾à¦¨à§‡ à¦¹à¦¬à§‡ ', '<p>css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤&nbsp;css à¦ªà§‹à¦¸à§à¦Ÿ à¦à¦° à¦œà¦¨à§à¦¯ à¦¯à¦¾ à¦²à¦¿à¦–à¦¾ à¦¦à¦°à¦•à¦¾à¦° à¦¤à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦²à¦¿à¦–à¦¤à§‡ à¦¹à¦¬à§‡ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦‡à¦‰à¦œ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦“à§Ÿà§‡à¦¬ à¦¸à¦¾à¦‡à¦Ÿ à¦•à§‡ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¦à§‡à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¥¤ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦›à¦¾à§œà¦¾ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦•à¦°à¦¾ à¦…à¦¸à¦®à§à¦¬à¦¬ à¥¤ à¦¤à¦¾à¦‡ à¦“à§Ÿà§‡à¦¬ à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¸à¦¿à¦à¦¸à¦à¦¸ à¦à¦° à¦—à§à¦°à§à¦¤à§à¦¤ à¦•à§‹à¦¨ à¦­à¦¾à¦¬à§‡à¦‡ à¦…à¦¸à¦¿à¦•à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¥¤ hi this is test for edit post</p>', 'upload/9cd89edc36.jpg', 'admin', 'css,à¦¸à¦¿à¦à¦¸à¦à¦¸', '2017-08-30 16:34:44', 0),
(11, 3, 'Title will be go here', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, pariatur tenetur. Laudantium soluta blanditiis, ea molestias facilis quibusdam. Cumque tempora in vel accusamus quidem mollitia eligendi saepe officia voluptatum eveniet labore, neque, quibusdam sed animi aperiam ad aspernatur deleniti commodi atque repudiandae. Voluptatum atque repellat, aliquid odio adipisci facilis accusamus illo a qui rem minima nihil optio tenetur earum autem? Deserunt animi numquam unde nesciunt vel ut dolor ratione at laborum necessitatibus doloremque magni porro, possimus, enim aliquam voluptate suscipit. Ea quaerat, sit dolores laboriosam animi maxime distinctio natus eligendi laudantium. Omnis optio quae ad quas officiis fugit vitae sapiente aliquam molestiae nesciunt, nulla minus maiores ipsa iusto incidunt temporibus. Eos, modi, aut. Dicta nam autem quidem similique nobis quia quibusdam cupiditate numquam sit consequatur. Nam laboriosam officia quos cumque numquam consequatur. Quos sunt esse quia, libero ducimus, quibusdam vel, ea in dolor maiores ad quis sit aut quas voluptates laborum. Quisquam ullam temporibus esse repellat in, ratione aliquam eum voluptatem. Ipsa pariatur provident et laborum voluptatibus quis qui sint ad repudiandae? Molestias recusandae velit neque eveniet itaque provident id omnis nam quaerat ea, quo quisquam molestiae, quidem ipsam, voluptate dignissimos aut quia nulla reiciendis numquam animi dicta. Voluptatem, sapiente.</p>', 'upload/9edc16e0f4.jpg', 'admin', 'html', '2017-11-02 13:40:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'First slider title will be go here', 'upload/slider/3cb5d61b03.jpg'),
(2, 'Second slider title will be go here', 'upload/slider/c043bbae26.jpg'),
(3, 'Third slider title will be go here', 'upload/slider/a433d0a4d3.jpg'),
(4, 'Four slider title will be go here', 'upload/slider/c9ac79df19.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://www.facebook.com/raselranacse', 'http://www.twitter.com', 'http://www.linkedin.com', 'http://www.plus.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Rasel Rana', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'raselrana500@gmail.com', '<p>Hey,I am Rasel Rana from Bangladesh.</p>', 0),
(3, 'Faysal Khan', 'author', '02bd92faa38aaa6cc0ea75e59937a1ef', 'khan@gmail.com', '<p>hey,I am faysal khan from bangladesh.</p>', 1),
(4, 'I am Editor', 'editor', '5aee9dbd2a188839105073571bee1b1f', 'editor@gmail.com', '<p>Hey,i am editor.</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Training With Live Project', 'PHP,JAVA,HTML,CSS,JQUERY,JAVASCRIPT', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
