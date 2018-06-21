-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2017 at 02:02 PM
-- Server version: 5.5.42
-- PHP Version: 5.4.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sarah`
--

-- --------------------------------------------------------

--
-- Table structure for table `immediateResponse`
--

DROP TABLE IF EXISTS `immediateResponse`;
CREATE TABLE `immediateResponse` (
  `id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `input` varchar(255) NOT NULL,
  `output` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `immediateResponse`
--

TRUNCATE TABLE `immediateResponse`;
--
-- Dumping data for table `immediateResponse`
--

INSERT INTO `immediateResponse` (`id`, `created_at`, `updated_at`, `input`, `output`) VALUES
(1, '0000-00-00 00:00:00', '2016-07-14 15:07:00', 'greeting', 'greeting'),
(2, '2016-08-05 09:21:19', '2016-08-05 14:21:19', 'sarah attention', 'greeting'),
(3, '2016-08-05 09:43:23', '2016-08-05 14:43:23', 'sarah wellbeing', 'greeting wellbeing'),
(4, '2016-08-05 10:00:55', '2016-08-05 15:00:55', 'sarah name', 'sarah name'),
(5, '2016-08-17 13:41:12', '2016-08-17 18:41:12', 'show things', 'show things'),
(6, '2016-08-22 15:48:50', '2016-08-22 20:48:50', 'hh-furniture', 'hh-furniture'),
(7, '2016-08-23 09:17:06', '2016-08-23 14:17:06', 'hh-electronic', 'hh-electronic'),
(8, '2016-08-23 09:18:28', '2016-08-23 14:18:28', 'hh-location', 'hh-location'),
(9, '2016-08-23 11:16:41', '2016-08-23 16:16:41', 'sarah stupid', 'sorry'),
(10, '2016-08-23 11:16:46', '2016-08-23 16:16:46', 'sarah wrong', 'sorry'),
(11, '2016-08-23 11:25:01', '2016-08-23 16:25:01', 'sarah existence', 'sarah existence'),
(12, '2016-08-23 11:29:31', '2016-08-23 16:29:31', 'rude', 'be nice'),
(13, '2016-08-23 11:31:44', '2016-08-23 16:31:44', 'goodbye', 'goodbye');

-- --------------------------------------------------------

--
-- Table structure for table `inputAlias`
--

DROP TABLE IF EXISTS `inputAlias`;
CREATE TABLE `inputAlias` (
  `id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `input` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `regex` varchar(255) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `inputAlias`
--

TRUNCATE TABLE `inputAlias`;
--
-- Dumping data for table `inputAlias`
--

INSERT INTO `inputAlias` (`id`, `created_at`, `updated_at`, `input`, `alias`, `regex`) VALUES
(1, '0000-00-00 00:00:00', '2016-08-17 15:47:43', 'greeting', 'hi', NULL),
(2, '2016-07-14 13:39:25', '2016-08-17 15:47:51', 'greeting', 'hello', NULL),
(3, '2016-07-14 13:40:42', '2016-08-17 15:47:53', 'greeting', 'good morning', NULL),
(4, '2016-07-14 13:40:51', '2016-08-17 15:47:56', 'greeting', 'good afternoon', NULL),
(5, '2016-07-14 13:40:56', '2016-08-17 15:47:59', 'greeting', 'good evening', NULL),
(6, '2016-07-14 13:41:02', '2016-08-17 15:48:01', 'greeting', 'morning', NULL),
(27, '2016-08-05 09:44:05', '2016-08-17 15:48:05', 'sarah wellbeing', 'how are you doing', NULL),
(26, '2016-08-05 09:43:55', '2016-08-17 15:48:07', 'sarah wellbeing', 'how are you', NULL),
(24, '2016-08-05 09:35:42', '2016-08-17 15:48:10', 'sarah attention', 'you there', NULL),
(23, '2016-08-05 09:35:33', '2016-08-17 15:48:12', 'sarah attention', 'are you there', NULL),
(12, '2016-07-14 13:43:37', '2016-08-17 15:48:18', 'greeting', 'what is up', NULL),
(14, '2016-07-14 13:45:00', '2016-08-17 15:48:23', 'greeting', 's''up', NULL),
(22, '2016-08-05 09:35:19', '2016-08-17 15:48:28', 'sarah attention', 'hello are you there', NULL),
(21, '2016-08-05 09:31:01', '2016-08-17 15:48:30', 'sarah attention', 'suh', NULL),
(17, '2016-08-05 09:23:45', '2016-08-17 15:48:37', 'sarah attention', 'sarah', NULL),
(18, '2016-08-05 09:24:00', '2016-08-17 15:48:39', 'sarah attention', 'hey', NULL),
(19, '2016-08-05 09:24:33', '2016-08-17 15:48:41', 'sarah attention', 'test', NULL),
(20, '2016-08-05 09:26:11', '2016-08-17 15:48:44', 'sarah attention', 'what is good', NULL),
(28, '2016-08-05 09:46:57', '2016-08-17 15:48:47', 'sarah wellbeing', 'how you doing', NULL),
(29, '2016-08-05 10:02:30', '2016-08-17 15:48:49', 'sarah name', 'what is your name', NULL),
(30, '2016-08-05 10:02:50', '2016-08-17 15:48:51', 'sarah name', 'how do i call you', NULL),
(31, '2016-08-05 10:03:09', '2016-08-17 15:48:53', 'sarah name', 'your name', NULL),
(32, '2016-08-05 11:31:26', '2016-08-17 15:48:56', 'sarah attention', 'where are you', NULL),
(33, '2016-08-17 10:12:14', '2016-08-22 21:06:51', 'show things', 'show me [keyword]', '^(show me )(.*)$'),
(40, '2016-08-23 11:13:45', '2016-08-23 16:13:45', 'sarah attention', 'hello you there', '0'),
(41, '2016-08-23 11:13:54', '2016-08-23 16:13:54', 'sarah attention', 'hello there', '0'),
(42, '2016-08-23 11:14:35', '2016-08-23 16:14:35', 'sarah stupid', 'you do not understand', '0'),
(43, '2016-08-23 11:16:23', '2016-08-23 16:16:23', 'sarah wrong', 'that is not true', '0'),
(44, '2016-08-23 11:20:30', '2016-08-23 16:20:30', 'sarah stupid', 'you are stupid', '0'),
(45, '2016-08-23 11:20:38', '2016-08-23 16:20:38', 'sarah stupid', 'you suck', '0'),
(46, '2016-08-23 11:20:51', '2016-08-23 16:20:51', 'sarah wrong', 'you do not get it', '0'),
(47, '2016-08-23 11:23:51', '2016-08-23 16:23:51', 'sarah wrong', 'will you never learn', '0'),
(48, '2016-08-23 11:24:15', '2016-08-23 16:24:15', 'sarah name', 'who are you', '0'),
(49, '2016-08-23 11:24:57', '2016-08-23 16:24:57', 'sarah existence', 'what are you', '0'),
(50, '2016-08-23 11:27:06', '2016-08-23 16:27:06', 'sarah stupid', 'i know you do not', '0'),
(51, '2016-08-23 11:27:27', '2016-08-23 16:27:27', 'sarah wrong', 'god dammit', '0'),
(52, '2016-08-23 11:27:45', '2016-08-23 16:27:45', 'sarah wrong', 'that is wrong', '0'),
(53, '2016-08-23 11:27:50', '2016-08-23 16:27:50', 'sarah wrong', 'that is not right', '0'),
(54, '2016-08-23 11:27:55', '2016-08-23 16:27:55', 'sarah wrong', 'that is not correct', '0'),
(55, '2016-08-23 11:28:02', '2016-08-23 16:28:02', 'sarah wrong', 'that is incorrect', '0'),
(56, '2016-08-23 11:29:18', '2016-08-23 16:29:18', 'rude', 'you bitch', '0'),
(57, '2016-08-23 11:30:26', '2016-08-23 16:30:26', 'rude', 'bitch', '0'),
(58, '2016-08-23 11:30:37', '2016-08-23 16:30:37', 'rude', 'kill yourself', '0'),
(59, '2016-08-23 11:31:41', '2016-08-23 16:31:41', 'goodbye', 'goodbye', '0'),
(60, '2016-08-23 11:32:35', '2016-08-23 16:32:35', 'goodbye', 'bye', '0'),
(61, '2016-08-23 11:32:39', '2016-08-23 16:32:39', 'goodbye', 'bye bye', '0'),
(62, '2016-08-23 11:32:44', '2016-08-23 16:32:44', 'goodbye', 'see you', '0'),
(63, '2016-08-23 11:32:48', '2016-08-23 16:32:48', 'goodbye', 'see ya', '0'),
(64, '2016-08-23 11:32:53', '2016-08-23 16:32:53', 'goodbye', 'see you later', '0'),
(65, '2016-08-23 11:32:56', '2016-08-23 16:32:56', 'goodbye', 'later', '0');

-- --------------------------------------------------------

--
-- Table structure for table `outputAlias`
--

DROP TABLE IF EXISTS `outputAlias`;
CREATE TABLE `outputAlias` (
  `id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `output` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `validation` text
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `outputAlias`
--

TRUNCATE TABLE `outputAlias`;
--
-- Dumping data for table `outputAlias`
--

INSERT INTO `outputAlias` (`id`, `created_at`, `updated_at`, `output`, `alias`, `validation`) VALUES
(1, '0000-00-00 00:00:00', '2016-07-14 15:03:21', 'unknown_command', 'I do not understand', NULL),
(2, '0000-00-00 00:00:00', '2016-07-14 15:03:21', 'end_convo', 'cool', NULL),
(4, '0000-00-00 00:00:00', '2016-07-14 15:09:39', 'greeting', 'Hi', NULL),
(5, '2016-07-14 13:45:42', '2016-07-14 18:45:42', 'greeting', 'Hi [user]first_name[/user]', NULL),
(6, '2016-07-14 13:45:50', '2016-07-14 18:45:50', 'greeting', 'Hello', NULL),
(7, '2016-07-14 13:46:01', '2016-07-14 18:46:01', 'greeting', 'Hello [user]first_name[/user]', NULL),
(9, '2016-08-05 09:50:07', '2017-01-31 19:01:54', 'unknown_command', 'I don''t understand please keep it simple :(', NULL),
(10, '2016-08-05 09:50:29', '2016-08-05 14:50:29', 'greeting wellbeing', 'I''m fine, thank you', NULL),
(11, '2016-08-05 09:50:54', '2016-08-05 14:50:54', 'greeting wellbeing', 'not bad, thank you', NULL),
(12, '2016-08-05 09:59:19', '2016-08-05 14:59:19', 'greeting wellbeing', 'I''m well, thanks', NULL),
(13, '2016-08-05 09:59:35', '2016-08-05 14:59:35', 'greeting wellbeing', 'very well, thank :D', NULL),
(14, '2016-08-05 10:03:54', '2016-08-05 15:03:54', 'unknown_command', 'I don''t understand, I can''t speak English that well yet, please keep it basic :)', NULL),
(15, '2016-08-05 10:04:50', '2016-08-05 15:06:47', 'sarah name', 'my name is [sarah]first_name[/sarah], [sarah]first_name[/sarah] [sarah]last_name[/sarah]', NULL),
(16, '2016-08-05 10:04:58', '2016-08-05 15:06:28', 'sarah name', '[sarah]first_name[/sarah] [sarah]last_name[/sarah]', NULL),
(17, '2016-08-05 10:06:56', '2016-08-05 15:07:18', 'sarah name', '[sarah]first_name[/sarah], [sarah]first_name[/sarah] [sarah]last_name[/sarah]', NULL),
(18, '2016-08-17 13:40:37', '2016-08-17 18:40:37', 'show things', '/img [keyword]', NULL),
(22, '2016-08-23 11:17:07', '2016-08-23 16:17:07', 'sorry', 'Sorry :(', NULL),
(23, '2016-08-23 11:17:13', '2016-08-23 16:17:13', 'sorry', 'Sorry >.<', NULL),
(31, '2016-08-23 11:25:22', '2016-08-23 16:25:22', 'sarah existence', 'I am an AI', NULL),
(30, '2016-08-23 11:25:09', '2016-08-23 16:25:09', 'sarah existence', 'I am a robot', NULL),
(29, '2016-08-23 11:20:13', '2016-08-23 16:20:13', 'sorry', 'I''m sorry', NULL),
(32, '2016-08-23 11:26:14', '2016-08-23 16:26:14', 'sarah existence', 'I am a robot created by Keo Strife to take over the world', NULL),
(33, '2016-08-23 11:29:44', '2016-08-23 16:29:44', 'be nice', 'please be nice!', NULL),
(34, '2016-08-23 11:30:05', '2016-08-23 16:30:05', 'be nice', 'please be kind!', NULL),
(35, '2016-08-23 11:30:19', '2016-08-23 16:30:19', 'be nice', 'please be cool!', NULL),
(36, '2016-08-23 11:31:49', '2016-08-23 16:31:49', 'goodbye', 'bye', NULL),
(37, '2016-08-23 11:31:56', '2016-08-23 16:31:56', 'goodbye', 'goodbye :)', NULL),
(38, '2016-08-23 11:32:00', '2016-08-23 16:32:00', 'goodbye', 'bye bye', NULL),
(39, '2016-08-23 11:32:07', '2016-08-23 16:32:07', 'goodbye', 'you too :D', NULL),
(40, '2016-08-23 11:32:12', '2016-08-23 16:32:12', 'goodbye', 'see ya!', NULL),
(41, '2016-08-23 11:32:18', '2016-08-23 16:32:18', 'goodbye', 'later!', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questionAlias`
--

DROP TABLE IF EXISTS `questionAlias`;
CREATE TABLE `questionAlias` (
  `id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `question` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `questionAlias`
--

TRUNCATE TABLE `questionAlias`;
-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `question` varchar(255) NOT NULL,
  `validation` text NOT NULL,
  `askValidation` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `questions`
--

TRUNCATE TABLE `questions`;
-- --------------------------------------------------------

--
-- Table structure for table `unregisteredInput`
--

DROP TABLE IF EXISTS `unregisteredInput`;
CREATE TABLE `unregisteredInput` (
  `id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `input` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `unregisteredInput`
--

TRUNCATE TABLE `unregisteredInput`;
--
-- Dumping data for table `unregisteredInput`
--

INSERT INTO `unregisteredInput` (`id`, `created_at`, `updated_at`, `input`) VALUES
(1, '0000-00-00 00:00:00', '2016-07-14 14:48:33', 'hi'),
(2, '0000-00-00 00:00:00', '2016-07-14 15:10:07', 'test'),
(3, '0000-00-00 00:00:00', '2016-07-15 16:51:07', '1234'),
(4, '0000-00-00 00:00:00', '2016-07-15 16:51:14', 'da fug'),
(5, '0000-00-00 00:00:00', '2016-07-15 17:13:06', 'gi'),
(6, '0000-00-00 00:00:00', '2016-07-20 06:49:29', 'gah'),
(7, '0000-00-00 00:00:00', '2016-07-26 19:34:09', 'tedt'),
(8, '0000-00-00 00:00:00', '2016-07-26 21:15:26', '/nearbyparking 43.653167 -79.362886'),
(9, '0000-00-00 00:00:00', '2016-07-26 21:17:37', 'hello are you there'),
(10, '0000-00-00 00:00:00', '2016-07-26 21:17:37', 'sarah'),
(11, '0000-00-00 00:00:00', '2016-07-28 14:55:35', 'how you doin'),
(12, '0000-00-00 00:00:00', '2016-08-02 19:44:45', 'weather'),
(13, '0000-00-00 00:00:00', '2016-08-02 19:44:56', 'that''s you'),
(14, '0000-00-00 00:00:00', '2016-08-02 19:45:16', 'you do not understand'),
(15, '0000-00-00 00:00:00', '2016-08-02 19:45:24', 'keo sucks right'),
(16, '0000-00-00 00:00:00', '2016-08-02 19:45:53', 'ya he has the worst dota skills'),
(17, '0000-00-00 00:00:00', '2016-08-02 19:45:58', 'a glass of beer. you really don''t understand'),
(18, '0000-00-00 00:00:00', '2016-08-02 19:46:17', 'i wish'),
(19, '0000-00-00 00:00:00', '2016-08-02 19:46:25', 'what is my name'),
(20, '0000-00-00 00:00:00', '2016-08-02 19:46:44', 'who are you'),
(21, '0000-00-00 00:00:00', '2016-08-02 19:46:55', 'bi'),
(22, '0000-00-00 00:00:00', '2016-08-02 19:47:13', 'where am i'),
(23, '0000-00-00 00:00:00', '2016-08-02 19:47:27', '/weather'),
(24, '0000-00-00 00:00:00', '2016-08-02 19:47:36', 'is there a list of commands'),
(25, '0000-00-00 00:00:00', '2016-08-05 16:16:58', 'ur name'),
(26, '0000-00-00 00:00:00', '2016-08-05 16:29:11', 'where are you'),
(27, '0000-00-00 00:00:00', '2016-08-11 18:26:04', 'oh sarah, will you never learn'),
(28, '0000-00-00 00:00:00', '2016-08-12 14:45:27', 'lol'),
(29, '0000-00-00 00:00:00', '2016-08-16 15:30:37', 'test test test'),
(30, '0000-00-00 00:00:00', '2016-08-17 14:36:22', 'hey cortana'),
(31, '0000-00-00 00:00:00', '2016-08-17 16:27:11', 'show me test'),
(32, '0000-00-00 00:00:00', '2016-08-17 18:24:47', 'show me'),
(33, '0000-00-00 00:00:00', '2016-08-17 19:12:07', '/img dog'),
(34, '0000-00-00 00:00:00', '2016-08-17 19:12:07', '/img cats'),
(35, '0000-00-00 00:00:00', '2016-08-17 19:12:07', 'wake up'),
(36, '0000-00-00 00:00:00', '2016-08-17 19:18:00', 'tell me a home hardware'),
(37, '0000-00-00 00:00:00', '2016-08-18 22:44:54', 'what are you'),
(38, '0000-00-00 00:00:00', '2016-08-18 22:45:03', 'the cat says what'),
(39, '0000-00-00 00:00:00', '2016-08-18 22:45:10', 'what sound does a cat make'),
(40, '0000-00-00 00:00:00', '2016-08-18 22:45:19', 'tell me the sound a fucking cat makes'),
(41, '0000-00-00 00:00:00', '2016-08-18 22:45:23', 'i know you dont'),
(42, '0000-00-00 00:00:00', '2016-08-18 22:45:27', 'you bitch'),
(43, '0000-00-00 00:00:00', '2016-08-18 22:46:11', 'how can you not understand ''lol'),
(44, '0000-00-00 00:00:00', '2016-08-18 22:46:18', 'god dammit'),
(45, '0000-00-00 00:00:00', '2016-08-18 22:49:40', 'it is not a pari of skis'),
(46, '0000-00-00 00:00:00', '2016-08-18 22:49:50', 'what color is the sky'),
(47, '0000-00-00 00:00:00', '2016-08-18 22:49:57', 'lol fucking microsoft'),
(48, '0000-00-00 00:00:00', '2016-08-18 22:51:22', 'hahaha'),
(49, '0000-00-00 00:00:00', '2016-08-18 22:52:20', 'that is not right'),
(50, '0000-00-00 00:00:00', '2016-08-18 22:56:19', 'im done talking to you now'),
(51, '0000-00-00 00:00:00', '2016-08-18 22:56:23', 'goodbye'),
(52, '0000-00-00 00:00:00', '2016-08-18 22:56:27', 'kill yourself'),
(53, '0000-00-00 00:00:00', '2016-08-22 19:16:32', '/hhlocations'),
(54, '0000-00-00 00:00:00', '2016-08-22 19:16:40', '/hhlocation'),
(55, '0000-00-00 00:00:00', '2016-08-22 20:46:53', '/hhflashlightvideo'),
(56, '0000-00-00 00:00:00', '2016-08-23 14:09:41', 'products'),
(57, '0000-00-00 00:00:00', '2016-08-23 14:13:02', 'find home hardware'),
(58, '0000-00-00 00:00:00', '2016-08-23 14:15:25', '/hhfurmitures'),
(59, '0000-00-00 00:00:00', '2017-01-31 18:27:40', 'i'),
(60, '0000-00-00 00:00:00', '2017-01-31 18:27:49', 'i do not'),
(61, '0000-00-00 00:00:00', '2017-01-31 18:27:50', 'i do not want'),
(62, '0000-00-00 00:00:00', '2017-01-31 18:27:50', 'do not'),
(63, '0000-00-00 00:00:00', '2017-01-31 18:27:50', 'do not understand'),
(64, '0000-00-00 00:00:00', '2017-01-31 18:27:50', 'understand'),
(65, '0000-00-00 00:00:00', '2017-01-31 18:27:51', 'i do not understand'),
(66, '0000-00-00 00:00:00', '2017-01-31 18:27:55', 'how'),
(67, '0000-00-00 00:00:00', '2017-01-31 18:27:55', 'how i'),
(68, '0000-00-00 00:00:00', '2017-01-31 18:27:55', 'how are'),
(69, '0000-00-00 00:00:00', '2017-01-31 18:27:55', 'are you'),
(70, '0000-00-00 00:00:00', '2017-01-31 18:27:55', 'i do not understand how'),
(71, '0000-00-00 00:00:00', '2017-01-31 18:27:56', 'i do not understand how are you'),
(72, '0000-00-00 00:00:00', '2017-01-31 18:27:58', 'i do not know'),
(73, '0000-00-00 00:00:00', '2017-01-31 18:33:59', 'so'),
(74, '0000-00-00 00:00:00', '2017-01-31 18:34:00', 'sorry'),
(75, '0000-00-00 00:00:00', '2017-01-31 18:34:17', 'how old'),
(76, '0000-00-00 00:00:00', '2017-01-31 18:34:17', 'how old are'),
(77, '0000-00-00 00:00:00', '2017-01-31 18:34:17', 'old are'),
(78, '0000-00-00 00:00:00', '2017-01-31 18:34:17', 'old are you'),
(79, '0000-00-00 00:00:00', '2017-01-31 18:34:18', 'how old are you'),
(80, '0000-00-00 00:00:00', '2017-01-31 18:34:21', 'i cannot communicate'),
(81, '0000-00-00 00:00:00', '2017-01-31 18:34:21', 'i do not understand i cannot communicate'),
(82, '0000-00-00 00:00:00', '2017-01-31 18:34:25', 'i do not understand how old are you'),
(83, '0000-00-00 00:00:00', '2017-01-31 18:35:00', 'can you hear me'),
(84, '0000-00-00 00:00:00', '2017-01-31 18:36:02', 'hi hello'),
(85, '0000-00-00 00:00:00', '2017-01-31 18:36:03', 'hi hi hello'),
(86, '0000-00-00 00:00:00', '2017-01-31 18:36:03', 'hello hi'),
(87, '0000-00-00 00:00:00', '2017-01-31 18:36:04', 'hi hi hello hello'),
(88, '0000-00-00 00:00:00', '2017-01-31 18:36:04', 'hi hi hello hello hi'),
(89, '0000-00-00 00:00:00', '2017-01-31 18:36:06', 'hi hi hello hello hello'),
(90, '0000-00-00 00:00:00', '2017-01-31 18:36:06', 'i''d'),
(91, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'i can'),
(92, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'i can''t'),
(93, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'i can''t see'),
(94, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'i can''t speak'),
(95, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'i can''t speak again'),
(96, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'i do not understand i'),
(97, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'can''t speak again'),
(98, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'can''t speak english'),
(99, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'i do not understand i can''t'),
(100, '0000-00-00 00:00:00', '2017-01-31 18:36:08', 'speak english'),
(101, '0000-00-00 00:00:00', '2017-01-31 18:36:09', 'english'),
(102, '0000-00-00 00:00:00', '2017-01-31 18:36:09', 'i do not understand i can''t speak'),
(103, '0000-00-00 00:00:00', '2017-01-31 18:36:09', 'that well'),
(104, '0000-00-00 00:00:00', '2017-01-31 18:36:09', 'i do not understand i can''t speak english'),
(105, '0000-00-00 00:00:00', '2017-01-31 18:36:09', 'that well yet'),
(106, '0000-00-00 00:00:00', '2017-01-31 18:36:09', 'i do not understand i can''t speak english that well'),
(107, '0000-00-00 00:00:00', '2017-01-31 18:36:09', 'yet'),
(108, '0000-00-00 00:00:00', '2017-01-31 18:36:10', 'i do not understand i can''t speak english that well yet'),
(109, '0000-00-00 00:00:00', '2017-01-31 18:36:10', 'please'),
(110, '0000-00-00 00:00:00', '2017-01-31 18:36:10', 'please keep');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `gender` varchar(128) DEFAULT NULL,
  `full_name` varchar(128) DEFAULT NULL,
  `age` varchar(128) DEFAULT NULL,
  `profile_pic` text,
  `askingQuestion` varchar(128) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `ram` text
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `created_at`, `updated_at`, `email`, `username`, `password`, `first_name`, `last_name`, `gender`, `full_name`, `age`, `profile_pic`, `askingQuestion`, `context`, `ram`) VALUES
(1, 'default', '0000-00-00 00:00:00', '2017-01-31 18:57:09', NULL, 'guest', NULL, 'Guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'sarah', '0000-00-00 00:00:00', '2016-07-14 19:29:54', 'keo_strife@yahoo.com', 'sarah', NULL, 'Sarah', 'Lockhart', 'female', 'Sarah Lockhart', '29', NULL, NULL, NULL, NULL),
(5, '963617697069548', '0000-00-00 00:00:00', '2016-08-02 19:36:36', NULL, NULL, NULL, 'Keo', 'Strife', 'male', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1080484038708708', '0000-00-00 00:00:00', '2016-08-02 19:43:42', NULL, NULL, NULL, 'Minh%20Dat', 'Strife', 'male', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '1308405402532900', '0000-00-00 00:00:00', '2016-08-02 19:44:12', NULL, NULL, NULL, 'Carlo', 'Alducente', 'male', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '800001596767482', '0000-00-00 00:00:00', '2016-08-02 19:44:25', NULL, NULL, NULL, 'Chris', 'Czegel', 'male', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '1094825483921755', '0000-00-00 00:00:00', '2016-08-11 19:04:51', NULL, NULL, NULL, 'Bebe', 'Ribbit', 'male', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '1393548170672917', '0000-00-00 00:00:00', '2016-08-18 22:43:35', NULL, NULL, NULL, 'Tyler', 'Cot%C3%A9', 'male', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '956844934437918', '0000-00-00 00:00:00', '2016-08-19 16:27:19', NULL, NULL, NULL, 'undefined', 'undefined', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '1157340331004012', '0000-00-00 00:00:00', '2016-08-23 14:09:40', NULL, NULL, NULL, 'Bebe', 'Ribbit', 'male', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `immediateResponse`
--
ALTER TABLE `immediateResponse`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `input` (`input`);

--
-- Indexes for table `inputAlias`
--
ALTER TABLE `inputAlias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `outputAlias`
--
ALTER TABLE `outputAlias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `questionAlias`
--
ALTER TABLE `questionAlias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `unregisteredInput`
--
ALTER TABLE `unregisteredInput`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `input` (`input`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `immediateResponse`
--
ALTER TABLE `immediateResponse`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `inputAlias`
--
ALTER TABLE `inputAlias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `outputAlias`
--
ALTER TABLE `outputAlias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `questionAlias`
--
ALTER TABLE `questionAlias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unregisteredInput`
--
ALTER TABLE `unregisteredInput`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
