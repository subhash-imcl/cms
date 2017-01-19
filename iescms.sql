-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 05:51 AM
-- Server version: 5.5.32
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iescms`
--
CREATE DATABASE IF NOT EXISTS `iescms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `iescms`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `ip` bigint(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `modified_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `ip` varchar(100) NOT NULL,
  `page_type` varchar(50) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `modified_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news_events`
--

CREATE TABLE IF NOT EXISTS `news_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `modified_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `page_type` varchar(100) NOT NULL COMMENT 'either post,or pages or any other',
  `top_menu` tinyint(3) DEFAULT NULL,
  `bottom_menu` tinyint(3) DEFAULT NULL,
  `is_home` tinyint(3) DEFAULT NULL,
  `link` varchar(100) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `title`, `slug`, `content`, `status`, `page_type`, `top_menu`, `bottom_menu`, `is_home`, `link`, `meta_title`, `meta_keywords`, `meta_description`, `lft`, `rght`, `order`, `user_id`, `modified_at`, `created_at`) VALUES
(1, NULL, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(2, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(3, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(4, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(5, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(6, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(7, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(8, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(9, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(10, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(11, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(12, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(13, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(14, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(15, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(16, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(17, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(18, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(19, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(20, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(21, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33'),
(22, 1, 'page 1', 'page-1', '<p>jsfj kfjasdklfjasdklfjdskljf kldjfladsfjlakdjflkadsf</p>', 1, '1', 1, 0, 0, '', '', '', '', 1, 2, 0, 1, '2016-11-26 13:55:33', '2016-11-26 13:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_field` varchar(255) NOT NULL,
  `key_value` text NOT NULL,
  `autoload` int(3) NOT NULL DEFAULT '0',
  `modified_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key_field`, `key_value`, `autoload`, `modified_at`, `created_at`) VALUES
(1, 'sdaf', 'sfdsfdsf', 0, '2017-01-01 12:43:00', '2017-01-01 12:43:00'),
(2, 'fasfa', 'sdfasfadfa', 0, '2017-01-01 12:43:00', '2017-01-01 12:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_role` enum('super','admin','register','label1','label2') NOT NULL DEFAULT 'register' COMMENT 'super,admin,register,label1,label2',
  `profile_image` varchar(150) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(20) NOT NULL,
  `terms_conditions` tinyint(3) NOT NULL,
  `email_verification` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `token_created` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `user_role`, `profile_image`, `date_of_birth`, `gender`, `terms_conditions`, `email_verification`, `status`, `token_created`, `modified_at`, `created_at`) VALUES
(1, 'subhash kumar', '', 'skumar', 'subhash.sign@gmail.com', '$2y$10$.aFnu5r1HKKkTmC0/uqZE.2b9rAIwFdMzR52ftgo9wdYN3IzKEZlG', 'super', '', '2016-11-02 00:00:00', 'male', 1, '', 1, '0000-00-00 00:00:00', '2016-11-26 00:00:00', '2016-11-26 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
