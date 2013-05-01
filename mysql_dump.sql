-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Gostitelj: localhost
-- Čas nastanka: 27 Avg 2012 ob 11:33 PM
-- Različica strežnika: 5.1.63
-- Različica PHP: 5.3.3-7+squeeze13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Podatkovna zbirka: `banka`
--

-- --------------------------------------------------------

--
-- Struktura tabele `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `auth_group`
--


-- --------------------------------------------------------

--
-- Struktura tabele `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- Struktura tabele `auth_message`
--

CREATE TABLE IF NOT EXISTS `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=124 ;

--
-- Odloži podatke za tabelo `auth_message`
--


-- --------------------------------------------------------

--
-- Struktura tabele `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=82 ;

--
-- Odloži podatke za tabelo `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add message', 4, 'add_message'),
(11, 'Can change message', 4, 'change_message'),
(12, 'Can delete message', 4, 'delete_message'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add log entry', 8, 'add_logentry'),
(23, 'Can change log entry', 8, 'change_logentry'),
(24, 'Can delete log entry', 8, 'delete_logentry'),
(25, 'Can add flat page', 9, 'add_flatpage'),
(26, 'Can change flat page', 9, 'change_flatpage'),
(27, 'Can delete flat page', 9, 'delete_flatpage'),
(28, 'Can add migration history', 10, 'add_migrationhistory'),
(29, 'Can change migration history', 10, 'change_migrationhistory'),
(30, 'Can delete migration history', 10, 'delete_migrationhistory'),
(31, 'Can add notice type', 11, 'add_noticetype'),
(32, 'Can change notice type', 11, 'change_noticetype'),
(33, 'Can delete notice type', 11, 'delete_noticetype'),
(34, 'Can add notice setting', 12, 'add_noticesetting'),
(35, 'Can change notice setting', 12, 'change_noticesetting'),
(36, 'Can delete notice setting', 12, 'delete_noticesetting'),
(37, 'Can add notice', 13, 'add_notice'),
(38, 'Can change notice', 13, 'change_notice'),
(39, 'Can delete notice', 13, 'delete_notice'),
(40, 'Can add notice queue batch', 14, 'add_noticequeuebatch'),
(41, 'Can change notice queue batch', 14, 'change_noticequeuebatch'),
(42, 'Can delete notice queue batch', 14, 'delete_noticequeuebatch'),
(43, 'Can add observed item', 15, 'add_observeditem'),
(44, 'Can change observed item', 15, 'change_observeditem'),
(45, 'Can delete observed item', 15, 'delete_observeditem'),
(46, 'Can add area', 16, 'add_area'),
(47, 'Can change area', 16, 'change_area'),
(48, 'Can delete area', 16, 'delete_area'),
(49, 'Can add Category', 17, 'add_category'),
(50, 'Can change Category', 17, 'change_category'),
(51, 'Can delete Category', 17, 'delete_category'),
(52, 'Can add service', 18, 'add_service'),
(53, 'Can change service', 18, 'change_service'),
(54, 'Can delete service', 18, 'delete_service'),
(55, 'Can add transfer', 19, 'add_transfer'),
(56, 'Can change transfer', 19, 'change_transfer'),
(57, 'Can delete transfer', 19, 'delete_transfer'),
(58, 'Can add News', 20, 'add_new'),
(59, 'Can change News', 20, 'change_new'),
(60, 'Can delete News', 20, 'delete_new'),
(61, 'Can add User', 21, 'add_profile'),
(62, 'Can change User', 21, 'change_profile'),
(63, 'Can delete User', 21, 'delete_profile'),
(64, 'Can add Message', 22, 'add_message'),
(65, 'Can change Message', 22, 'change_message'),
(66, 'Can delete Message', 22, 'delete_message'),
(67, 'Can add vote', 23, 'add_vote'),
(68, 'Can change vote', 23, 'change_vote'),
(69, 'Can delete vote', 23, 'delete_vote'),
(70, 'Can add score', 24, 'add_score'),
(71, 'Can change score', 24, 'change_score'),
(72, 'Can delete score', 24, 'delete_score'),
(73, 'Can add similar user', 25, 'add_similaruser'),
(74, 'Can change similar user', 25, 'change_similaruser'),
(75, 'Can delete similar user', 25, 'delete_similaruser'),
(76, 'Can add ignored object', 26, 'add_ignoredobject'),
(77, 'Can change ignored object', 26, 'change_ignoredobject'),
(78, 'Can delete ignored object', 26, 'delete_ignoredobject'),
(79, 'Can add task', 27, 'add_task'),
(80, 'Can change task', 27, 'change_task'),
(81, 'Can delete task', 27, 'delete_task');

-- --------------------------------------------------------

--
-- Struktura tabele `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_slovenian_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_slovenian_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=27 ;

--
-- Odloži podatke za tabelo `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'admin', 'Administrator', '', 'cbs.maribor@gmail.com', 'sha1$d21fa$824ddf461190c46afd8e45444de8a0450dcca9e7', 1, 1, 1, '2012-02-29 10:17:24', '2011-01-31 14:00:49'),
(2, 'miaerbus', 'Mia', 'Erbus', 'mia.erbus@gmail.com', 'sha1$17826$b8e297c1b22b6947df8bc32f13126696953b0bc4', 1, 1, 1, '2012-02-18 16:20:08', '2012-01-13 22:49:10'),
(12, 'Zofka', 'Zofka', 'Zofijina', 'zofka.zofijina@gmail.com', 'sha1$92bb9$dfd153e2ad14244d0288504c8206e22453cf7351', 0, 0, 0, '2012-01-15 19:33:40', '2012-01-15 19:33:40'),
(13, 'Rezko', 'Rezko', 'Novak', 'rezmaribor@gmail.com', 'sha1$729d0$0501da2ccb6755512b2baa3a844d59c007f47f76', 0, 0, 0, '2012-01-15 19:39:37', '2012-01-15 19:39:37'),
(15, 'Rezija', 'Rezko', 'Novak', 'rezmaribor@gmail.com', 'sha1$a8a02$a69ab4e7812795157022d323703c0093d8777574', 0, 1, 0, '2012-02-21 20:53:10', '2012-01-16 13:05:23'),
(16, 'Zofija', 'Zofka', 'Zofijina', 'zofka.zofijina@gmail.com', 'sha1$831e7$7b5292a016ad1c902fd3e0b2944753ce36e2396b', 0, 1, 0, '2012-02-21 20:53:31', '2012-01-16 13:17:50'),
(18, 'alterego', 'test', 'test', 'me9223@student.uni-lj.si', 'sha1$9705e$a0fe9c7cc5148f86a33a0d3c2f7f9df98125c707', 0, 1, 0, '2012-01-18 15:03:45', '2012-01-18 14:20:23'),
(19, 'anjat', 'Anja', 'Turin', 'anja.turin@gmail.com', 'sha1$b3dfa$54386257fb52509097552f1812ea83b2afd0463e', 0, 1, 0, '2012-02-13 22:40:11', '2012-01-23 21:15:12'),
(20, 'aadam', 'Andrej', 'Adam', 'andrej.adam@guest.arnes.si', 'sha1$89b70$4500115ebcf6b14814eec6b889c2e43b2c880ea1', 0, 1, 0, '2012-02-16 22:10:19', '2012-01-23 22:45:02'),
(21, 'Prometej', 'Samo ', 'Bohak', 'samo.bohak@gmail.com', 'sha1$f89bd$a7a2cbd46d5362dc887e34c87b93d964906e49c6', 0, 1, 0, '2012-02-21 17:06:28', '2012-01-24 08:24:08'),
(22, 'Aleksandra', 'Aleksandra', 'Žorž', 'aleksandrazorz@gmail.com', 'sha1$10056$91645ce0dc03809e0f829d8d7e2012df9b83fbd9', 0, 1, 0, '2012-03-02 09:44:23', '2012-01-24 10:31:58'),
(23, 'brankogerlic', 'Branko', 'Gerlič', 'branko.gerlic@gmail.com', 'sha1$6fcb5$b85d7e349e0ac54b4a96e69a28845fead83c8676', 0, 1, 0, '2012-02-09 10:46:58', '2012-01-24 10:42:20'),
(24, 'Boris', 'Boris', 'Vezjak', 'vezjak@yahoo.com', 'sha1$ce9de$776287e45761fea15f841792932672c459ea4e3d', 0, 1, 0, '2012-01-25 12:44:21', '2012-01-25 09:38:14'),
(25, 'JKG', 'Jože', 'Kos Grabar', 'joze.kos.grabar@gmail.com', 'sha1$c199c$822746440685e634f8541aa7e3046f983ed23885', 0, 1, 0, '2012-02-28 19:30:14', '2012-01-26 21:42:47'),
(26, 'Joze-KG', 'Jože', 'Kos Grabar', 'joze.kos.grabar@gmail.com', 'sha1$8ec05$537f9db9ac10b1d584fd1d343e9d585beae852ce', 0, 1, 0, '2012-02-28 19:25:30', '2012-02-28 19:25:30');

-- --------------------------------------------------------

--
-- Struktura tabele `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `auth_user_groups`
--


-- --------------------------------------------------------

--
-- Struktura tabele `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- Struktura tabele `djangoratings_ignoredobject`
--

CREATE TABLE IF NOT EXISTS `djangoratings_ignoredobject` (
  `object_id` int(10) unsigned NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangoratings_ignoredobject_1bb8f392` (`content_type_id`),
  KEY `djangoratings_ignoredobject_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `djangoratings_ignoredobject`
--


-- --------------------------------------------------------

--
-- Struktura tabele `djangoratings_score`
--

CREATE TABLE IF NOT EXISTS `djangoratings_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `key` varchar(32) COLLATE utf8_slovenian_ci NOT NULL,
  `score` int(11) NOT NULL,
  `votes` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `djangoratings_score_content_type_id_24fc76e5_uniq` (`content_type_id`,`object_id`,`key`),
  KEY `djangoratings_score_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=4 ;

--
-- Odloži podatke za tabelo `djangoratings_score`
--

INSERT INTO `djangoratings_score` (`id`, `content_type_id`, `object_id`, `key`, `score`, `votes`) VALUES
(1, 19, 15, '2c5504ab9a86164db22a92dc8793843d', 5, 1),
(2, 19, 17, '2c5504ab9a86164db22a92dc8793843d', 5, 1),
(3, 19, 20, '2c5504ab9a86164db22a92dc8793843d', 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabele `djangoratings_similaruser`
--

CREATE TABLE IF NOT EXISTS `djangoratings_similaruser` (
  `to_user_id` int(11) NOT NULL,
  `agrees` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disagrees` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user_id` int(11) NOT NULL,
  `exclude` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangoratings_similaruser_315477a4` (`to_user_id`),
  KEY `djangoratings_similaruser_74b00be1` (`from_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `djangoratings_similaruser`
--


-- --------------------------------------------------------

--
-- Struktura tabele `djangoratings_vote`
--

CREATE TABLE IF NOT EXISTS `djangoratings_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `key` varchar(32) COLLATE utf8_slovenian_ci NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` char(15) COLLATE utf8_slovenian_ci NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '2012-01-13 22:35:48',
  `date_changed` datetime NOT NULL DEFAULT '2012-01-13 22:35:48',
  PRIMARY KEY (`id`),
  UNIQUE KEY `djangoratings_vote_content_type_id_2143d9bc_uniq` (`content_type_id`,`object_id`,`key`,`user_id`,`ip_address`),
  KEY `djangoratings_vote_1bb8f392` (`content_type_id`),
  KEY `djangoratings_vote_403f60f` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=4 ;

--
-- Odloži podatke za tabelo `djangoratings_vote`
--

INSERT INTO `djangoratings_vote` (`id`, `content_type_id`, `object_id`, `key`, `score`, `user_id`, `ip_address`, `date_added`, `date_changed`) VALUES
(1, 19, 15, '2c5504ab9a86164db22a92dc8793843d', 5, 15, '82.149.4.151', '2012-02-01 12:15:44', '2012-02-01 12:15:44'),
(2, 19, 17, '2c5504ab9a86164db22a92dc8793843d', 5, 16, '82.149.4.151', '2012-02-03 14:58:42', '2012-02-03 14:58:42'),
(3, 19, 20, '2c5504ab9a86164db22a92dc8793843d', 5, 16, '82.149.4.151', '2012-02-10 14:58:09', '2012-02-10 14:58:09');

-- --------------------------------------------------------

--
-- Struktura tabele `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext COLLATE utf8_slovenian_ci,
  `object_repr` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=140 ;

--
-- Odloži podatke za tabelo `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2012-01-13 22:51:53', 1, 7, '1', 'www.cbs-mb.si', 2, 'Spremenjen domain in name.'),
(2, '2012-01-13 23:04:26', 1, 21, '2', 'miaerbus', 2, 'Spremenjen is_active, is_staff in is_superuser. Spremenjeno balance za Uporabnik "miaerbus".'),
(3, '2012-01-13 23:08:18', 1, 21, '2', 'miaerbus', 2, 'Spremenjen is_active, is_staff in is_superuser.'),
(4, '2012-01-13 23:12:17', 1, 21, '3', 'test', 3, ''),
(5, '2012-01-13 23:15:55', 1, 21, '4', 'test', 3, ''),
(6, '2012-01-13 23:36:51', 1, 21, '5', 'test', 3, ''),
(7, '2012-01-13 23:49:29', 1, 21, '6', 'test', 3, ''),
(8, '2012-01-13 23:51:43', 1, 21, '7', 'test', 2, 'Spremenjen is_active. Spremenjeno balance za Uporabnik "test".'),
(9, '2012-01-13 23:51:52', 1, 21, '7', 'test', 2, 'Spremenjen is_active.'),
(10, '2012-01-13 23:55:00', 1, 21, '7', 'test', 3, ''),
(11, '2012-01-13 23:56:43', 1, 21, '8', 'test', 2, 'Spremenjeno balance za Uporabnik "test".'),
(12, '2012-01-13 23:57:02', 1, 21, '8', 'test', 2, 'Spremenjen is_active.'),
(13, '2012-01-14 00:00:52', 1, 21, '8', 'test', 3, ''),
(14, '2012-01-14 00:03:54', 1, 21, '9', 'test', 2, 'Spremenjeno balance za Uporabnik "test".'),
(15, '2012-01-14 00:04:01', 1, 21, '9', 'test', 2, 'Spremenjen is_active.'),
(16, '2012-01-14 00:05:39', 1, 21, '9', 'test', 3, ''),
(17, '2012-01-14 00:06:56', 1, 21, '10', 'test', 2, 'Spremenjen is_active.'),
(18, '2012-01-14 00:07:43', 1, 21, '10', 'test', 3, ''),
(19, '2012-01-14 00:13:46', 1, 21, '11', 'test', 2, 'Spremenjen is_active.'),
(20, '2012-01-14 00:29:56', 2, 21, '11', 'test', 3, ''),
(21, '2012-01-15 12:50:10', 2, 16, '1', 'Maribor', 1, ''),
(22, '2012-01-15 12:50:14', 2, 16, '2', 'Pesnica', 1, ''),
(23, '2012-01-15 12:50:20', 2, 16, '3', 'Duplek', 1, ''),
(24, '2012-01-15 12:50:26', 2, 16, '4', 'Malečnik', 1, ''),
(25, '2012-01-15 12:50:31', 2, 16, '5', 'Ruše', 1, ''),
(26, '2012-01-15 12:50:35', 2, 16, '6', 'Limbuš', 1, ''),
(27, '2012-01-15 12:50:40', 2, 16, '7', 'Slovenska Bistrica', 1, ''),
(28, '2012-01-15 12:50:44', 2, 16, '8', 'Slovenske Konjice', 1, ''),
(29, '2012-01-15 12:50:50', 2, 16, '9', 'Šmarje pri Jelšah', 1, ''),
(30, '2012-01-15 12:50:58', 2, 16, '10', 'Lenart', 1, ''),
(31, '2012-01-15 12:51:03', 2, 16, '11', 'Ljutomer', 1, ''),
(32, '2012-01-15 12:51:07', 2, 16, '12', 'Ormož', 1, ''),
(33, '2012-01-15 12:51:11', 2, 16, '13', 'Ptuj', 1, ''),
(34, '2012-01-15 12:51:15', 2, 16, '14', 'Pragersko', 1, ''),
(35, '2012-01-15 12:51:19', 2, 16, '15', 'Poljčane', 1, ''),
(36, '2012-01-15 12:51:23', 2, 16, '16', 'Hoče', 1, ''),
(37, '2012-01-15 12:51:27', 2, 16, '17', 'Rače', 1, ''),
(38, '2012-01-15 12:51:30', 2, 16, '18', 'Kidričevo', 1, ''),
(39, '2012-01-15 12:51:34', 2, 16, '19', 'Majšperk', 1, ''),
(40, '2012-01-15 12:51:39', 2, 16, '20', 'Podlehnik', 1, ''),
(41, '2012-01-15 12:51:42', 2, 16, '21', 'Žetale', 1, ''),
(42, '2012-01-15 12:51:47', 2, 16, '22', 'Dornava', 1, ''),
(43, '2012-01-15 12:52:05', 2, 17, '1', 'Spremstvo in pomoč pri opravkih', 1, ''),
(44, '2012-01-15 12:52:10', 2, 17, '2', 'Pomoč pri izpolnjevanju obrazcev', 1, ''),
(45, '2012-01-15 12:52:13', 2, 17, '3', 'Pisanje pisem in tipkanje', 1, ''),
(46, '2012-01-15 12:52:17', 2, 17, '4', 'Urejanje (osebnih) financ', 1, ''),
(47, '2012-01-15 12:52:21', 2, 17, '5', 'Šivanje, pletenje, vezenje, izdelava oblačil', 1, ''),
(48, '2012-01-15 12:52:25', 2, 17, '6', 'Igranje ali učenje glasbenih inštrumentov', 1, ''),
(49, '2012-01-15 12:52:28', 2, 17, '7', 'DJ-anje', 1, ''),
(50, '2012-01-15 12:52:32', 2, 17, '8', 'Film & video', 1, ''),
(51, '2012-01-15 12:52:36', 2, 17, '9', 'Prevozi', 1, ''),
(52, '2012-01-15 12:52:39', 2, 17, '10', 'Vožnja avtomobila ali kombija', 1, ''),
(53, '2012-01-15 12:52:42', 2, 17, '11', 'Čiščenje in pospravljanje', 1, ''),
(54, '2012-01-15 12:52:46', 2, 17, '12', 'Preprosta domača (p)opravila', 1, ''),
(55, '2012-01-15 12:52:49', 2, 17, '13', 'Vrtnarjenje', 1, ''),
(56, '2012-01-15 12:52:52', 2, 17, '14', 'Preprosta popravila avtov, motorjev in koles', 1, ''),
(57, '2012-01-15 12:52:56', 2, 17, '15', 'Pranje avtomobila', 1, ''),
(58, '2012-01-15 12:53:15', 2, 17, '17', 'Sodelovanje pri org. družabnih dogodkov', 1, ''),
(59, '2012-01-15 12:53:20', 2, 17, '18', 'Povezovanje družabnega dogodka', 1, ''),
(60, '2012-01-15 12:53:24', 2, 17, '19', 'Pomoč pri branju, pisanju in računanju', 1, ''),
(61, '2012-01-15 12:53:28', 2, 17, '20', 'Učenje jezikov in prevajanje', 1, ''),
(62, '2012-01-15 12:53:31', 2, 17, '21', 'Pomoč pri selitvah', 1, ''),
(63, '2012-01-15 12:53:34', 2, 17, '22', 'Pripovedovanje zgodb, glasno branje', 1, ''),
(64, '2012-01-15 12:53:38', 2, 17, '23', 'Računalniške storitve', 1, ''),
(65, '2012-01-15 12:53:41', 2, 17, '24', 'Učenje fitnesa, joge ipd.', 1, ''),
(66, '2012-01-15 12:53:44', 2, 17, '25', 'Treniranje športov', 1, ''),
(67, '2012-01-15 12:53:47', 2, 17, '26', 'Risanje in slikanje', 1, ''),
(68, '2012-01-15 12:53:51', 2, 17, '27', 'Izdelovanje lončarskih izdelkov', 1, ''),
(69, '2012-01-15 12:53:54', 2, 17, '28', 'Promocija dogodkov (deljenje letakov ipd.)', 1, ''),
(70, '2012-01-15 12:53:57', 2, 17, '29', 'Kuhanje, pranje, likanje', 1, ''),
(71, '2012-01-15 12:54:01', 2, 17, '30', 'Varstvo/spremstvo otrok', 1, ''),
(72, '2012-01-15 12:54:04', 2, 17, '31', 'Delo z mladimi', 1, ''),
(73, '2012-01-15 12:54:07', 2, 17, '32', 'Obiskovanje na dom vezanih občanov', 1, ''),
(74, '2012-01-15 12:54:11', 2, 17, '33', 'Pogovori po telefonu', 1, ''),
(75, '2012-01-15 12:54:15', 2, 17, '34', 'Sprehajanje in urjenje psov', 1, ''),
(76, '2012-01-15 12:54:19', 2, 17, '35', 'Skrb za hišne ljubljenčke', 1, ''),
(77, '2012-01-15 12:54:22', 2, 17, '36', 'Zalivanje rož', 1, ''),
(78, '2012-01-15 12:54:26', 2, 17, '37', 'Pravno svetovanje', 1, ''),
(79, '2012-01-15 12:54:30', 2, 17, '38', 'Skupno kuhanje', 1, ''),
(80, '2012-01-15 12:54:34', 2, 17, '39', 'Pomoč/podpora pri iskanju stanovanja', 1, ''),
(81, '2012-01-15 12:54:37', 2, 17, '40', 'Predstavitev študijskih smeri', 1, ''),
(82, '2012-01-15 12:54:42', 2, 17, '41', 'Pomoč pri iskanju informacij', 1, ''),
(83, '2012-01-15 12:54:59', 2, 17, '16', 'Sodelovanje pri organizaciji družabnih dogodk', 3, ''),
(84, '2012-01-15 21:49:55', 2, 21, '2', 'miaerbus', 2, 'Spremenjeno balance za Uporabnik "miaerbus".'),
(85, '2012-01-15 22:00:07', 1, 21, '14', 'test', 3, ''),
(86, '2012-01-16 13:10:58', 1, 21, '15', 'Rezija', 2, 'Spremenjen is_active. Spremenjeno balance za Uporabnik "Rezija".'),
(87, '2012-01-16 13:11:15', 1, 21, '15', 'Rezija', 2, 'Spremenjen is_active.'),
(88, '2012-01-16 13:18:29', 1, 21, '16', 'Zofija', 2, 'Spremenjeno balance za Uporabnik "Zofija".'),
(89, '2012-01-16 13:18:40', 1, 21, '16', 'Zofija', 2, 'Spremenjen is_active.'),
(90, '2012-01-16 14:36:16', 1, 19, '4', 'Pomoč na vrtu. Dve prijetni uri sta za nama. ...', 2, 'Spremenjen credits_payee in credits_debtor.'),
(91, '2012-01-16 15:29:54', 1, 16, '23', 'Drugje', 1, ''),
(92, '2012-01-18 14:18:19', 2, 21, '17', 'alterego', 1, ''),
(93, '2012-01-18 14:19:22', 2, 21, '17', '', 3, ''),
(94, '2012-01-18 14:21:23', 2, 21, '18', 'alterego', 2, 'Spremenjeno balance za Uporabnik "alterego".'),
(95, '2012-01-18 14:21:39', 2, 21, '18', 'alterego', 2, 'Spremenjen is_active.'),
(96, '2012-01-23 19:18:18', 1, 21, '16', 'Zofija', 2, 'Spremenjeno balance za Uporabnik "Zofija".'),
(97, '2012-01-23 19:18:39', 1, 21, '15', 'Rezija', 2, 'Spremenjeno balance za Uporabnik "Rezija".'),
(98, '2012-01-23 19:19:31', 1, 19, '13', 'dam 2 uri Mii...', 3, ''),
(99, '2012-01-23 19:19:31', 1, 19, '12', 'Mia -> alterego...', 3, ''),
(100, '2012-01-23 19:19:31', 1, 19, '11', 'Mia je 2 uri nekaj delala za uporabnika alterego. ...', 3, ''),
(101, '2012-01-23 19:19:31', 1, 19, '10', 'bladfsdfs...', 3, ''),
(102, '2012-01-23 19:19:31', 1, 19, '9', 'bla bla...', 3, ''),
(103, '2012-01-23 19:19:31', 1, 19, '8', 'računalnik je popravljen. dam 1 uro...', 3, ''),
(104, '2012-01-23 19:19:31', 1, 19, '7', 'računalnik je popravljen. dam 1 uro...', 3, ''),
(105, '2012-01-23 19:19:31', 1, 19, '6', 'Sem ti pomagala......', 3, ''),
(106, '2012-01-23 19:19:31', 1, 19, '5', 'Za popravljen računalnik......', 3, ''),
(107, '2012-01-23 19:19:31', 1, 19, '4', 'Pomoč na vrtu. Dve prijetni uri sta za nama. ...', 3, ''),
(108, '2012-01-23 19:19:31', 1, 19, '3', 'Za popravljen računalnik......', 3, ''),
(109, '2012-01-23 19:19:31', 1, 19, '2', 'Za popravljen računalnik, dajem Rezku eno uro.....', 3, ''),
(110, '2012-01-23 19:19:51', 1, 22, '8', '', 3, ''),
(111, '2012-01-23 19:19:51', 1, 22, '7', '', 3, ''),
(112, '2012-01-23 19:19:51', 1, 22, '6', '', 3, ''),
(113, '2012-01-23 19:19:51', 1, 22, '5', '', 3, ''),
(114, '2012-01-23 19:19:51', 1, 22, '4', '', 3, ''),
(115, '2012-01-23 19:19:51', 1, 22, '3', '', 3, ''),
(116, '2012-01-23 19:19:51', 1, 22, '2', '', 3, ''),
(117, '2012-01-23 19:19:51', 1, 22, '1', '', 3, ''),
(118, '2012-01-23 21:16:48', 1, 21, '19', 'anjat', 2, 'Changed balance for User "anjat".'),
(119, '2012-01-23 21:16:59', 1, 21, '19', 'anjat', 2, 'Changed is_active.'),
(120, '2012-01-23 22:46:00', 1, 21, '20', 'aadam', 2, 'Changed balance for User "aadam".'),
(121, '2012-01-23 22:46:06', 1, 21, '20', 'aadam', 2, 'Changed is_active.'),
(122, '2012-01-24 11:28:25', 1, 21, '21', 'Prometej', 2, 'Spremenjen is_active.'),
(123, '2012-01-24 11:28:35', 1, 21, '21', 'Prometej', 2, 'Spremenjeno balance za Uporabnik "Prometej".'),
(124, '2012-01-24 11:29:06', 1, 21, '23', 'brankogerlic', 2, 'Spremenjeno balance za Uporabnik "brankogerlic".'),
(125, '2012-01-24 11:29:24', 1, 21, '23', 'brankogerlic', 2, 'Spremenjen is_active.'),
(126, '2012-01-24 11:32:44', 1, 21, '22', 'Aleksandra', 2, 'Spremenjeno balance za Uporabnik "Aleksandra".'),
(127, '2012-01-24 11:32:51', 1, 21, '22', 'Aleksandra', 2, 'Spremenjen is_active.'),
(128, '2012-01-25 11:59:45', 1, 21, '24', 'Boris', 2, 'Spremenjeno balance za Uporabnik "Boris".'),
(129, '2012-01-25 11:59:54', 1, 21, '24', 'Boris', 2, 'Spremenjen is_active.'),
(130, '2012-01-25 15:30:07', 1, 17, '42', 'Drugo', 1, ''),
(131, '2012-01-27 13:52:39', 1, 21, '25', 'JKG', 2, 'Spremenjeno balance za Uporabnik "JKG".'),
(132, '2012-01-27 13:52:48', 1, 21, '25', 'JKG', 2, 'Spremenjen is_active.'),
(133, '2012-02-03 14:41:30', 1, 22, '49', 'Neizvršeno nakazilo', 1, ''),
(134, '2012-02-07 13:29:14', 1, 22, '56', 'Novo geslo', 1, ''),
(135, '2012-02-13 18:31:44', 1, 19, '21', 'urica filozofije......', 2, 'Spremenjen confirmation_date in status.'),
(136, '2012-02-13 18:32:30', 1, 19, '21', 'urica filozofije......', 2, 'Spremenjen status.'),
(137, '2012-02-13 18:35:48', 1, 22, '59', 'Potrdite nakazilo', 1, ''),
(138, '2012-02-29 10:20:32', 1, 21, '26', 'Joze-KG', 2, 'Spremenjen is_active.'),
(139, '2012-02-29 10:20:50', 1, 21, '26', 'Joze-KG', 2, 'Spremenjeno balance za Uporabnik "Joze-KG".');

-- --------------------------------------------------------

--
-- Struktura tabele `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `app_label` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=28 ;

--
-- Odloži podatke za tabelo `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'message', 'auth', 'message'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'site', 'sites', 'site'),
(8, 'log entry', 'admin', 'logentry'),
(9, 'flat page', 'flatpages', 'flatpage'),
(10, 'migration history', 'south', 'migrationhistory'),
(11, 'notice type', 'notification', 'noticetype'),
(12, 'notice setting', 'notification', 'noticesetting'),
(13, 'notice', 'notification', 'notice'),
(14, 'notice queue batch', 'notification', 'noticequeuebatch'),
(15, 'observed item', 'notification', 'observeditem'),
(16, 'area', 'serv', 'area'),
(17, 'Category', 'serv', 'category'),
(18, 'service', 'serv', 'service'),
(19, 'transfer', 'serv', 'transfer'),
(20, 'News', 'news', 'new'),
(21, 'User', 'user', 'profile'),
(22, 'Message', 'messages', 'message'),
(23, 'vote', 'djangoratings', 'vote'),
(24, 'score', 'djangoratings', 'score'),
(25, 'similar user', 'djangoratings', 'similaruser'),
(26, 'ignored object', 'djangoratings', 'ignoredobject'),
(27, 'task', 'tasks', 'task');

-- --------------------------------------------------------

--
-- Struktura tabele `django_flatpage`
--

CREATE TABLE IF NOT EXISTS `django_flatpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `content` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) COLLATE utf8_slovenian_ci NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_a4b49ab` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `django_flatpage`
--


-- --------------------------------------------------------

--
-- Struktura tabele `django_flatpage_sites`
--

CREATE TABLE IF NOT EXISTS `django_flatpage_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_21210108` (`flatpage_id`),
  KEY `django_flatpage_sites_6223029` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `django_flatpage_sites`
--


-- --------------------------------------------------------

--
-- Struktura tabele `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_slovenian_ci NOT NULL,
  `session_data` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('e65cca9db396ae29727b528ed754bd14', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-01-30 04:46:22'),
('54bbbcef530f3b217a16b2093d661c23', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-02 09:58:20'),
('53f0bcd28930cfec708b7792dd8a1a8e', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-01-29 17:23:57'),
('b9c0146bd5755915331b012d1ac7a1fa', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-01-29 13:48:36'),
('c22dbb39c7b866251ae0399c69dd0661', 'MmQ1ODNlZjg1NGE1MTU0ZjFlNmNlN2UxMzI5OGQ5ODE3MDcxNmYxZTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSl1c2VyLmF1dGhfYmFja2VuZHMuQ3VzdG9tVXNlck1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n', '2012-01-29 12:49:52'),
('02ab09c6807c7483ddf313fb0c94d7a6', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-01-29 19:36:47'),
('3716c7e42717238842f13f0d7a9f40a8', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-01-29 13:48:59'),
('bcebd16c7e426019bed1cfbcbea7f9bd', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-01-28 00:40:30'),
('356cfa2851e10c710e51cb6528b6cd6a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-01-28 13:24:13'),
('08defa631327a0a417da2165d8bd0bbf', 'OTM1YzYyOGM1ZTFiMWFiNTFiZDQ0YjYzYTBhMTJkNTI3MDljNDBlZDqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-01-29 21:59:29'),
('9d77ef586ef2d34bc96d7bcdeddac630', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-02 09:58:19'),
('85f1bcb58af7a70f726565944496cbfa', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-02 09:45:07'),
('4b6513f174c4367c3c43018238d2dad7', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-02 09:58:19'),
('72c4233f74f1f11fe8a75f4eb08bc185', 'OTM1YzYyOGM1ZTFiMWFiNTFiZDQ0YjYzYTBhMTJkNTI3MDljNDBlZDqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-01 19:00:07'),
('76f1e05bdf879c117ea60117b81dd680', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-01 16:33:39'),
('009929ee2602df4d6eeede7eaa63f9c1', 'ZmZjMWEzMWU4N2RkMjY4ZjVjMjYzYmJlZjQ1NTU5MDU0MmM5ZTY5NjqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBAlUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-01 15:22:50'),
('236bf8794055cf0a85bc05330d5ad52a', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-01-31 14:21:39'),
('4e42dd1b0f81ed30b7fe1e12c80bd5eb', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-01-30 14:39:19'),
('e630931b4370a54015036a9327d0a1d8', 'OTM1YzYyOGM1ZTFiMWFiNTFiZDQ0YjYzYTBhMTJkNTI3MDljNDBlZDqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-01 19:22:30'),
('7daa1239050f8134f5cfbc5ce0faf20d', 'ZmM4ZTlhZjg1ZGZjMTMzZWM3NTRjOGE2ZDY5MmQ4NDg0OTgzYjIxYTqAAn1xAShVBWZsYXNoTlUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMuQ3VzdG9tVXNlck1vZGVsQmFj\na2VuZFUNX2F1dGhfdXNlcl9pZIoBAXUu\n', '2012-01-30 15:40:32'),
('aad0689bb7736e559c336779bbe10949', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-02 10:00:13'),
('4d5231f929a09e3b028fe80ba9074d29', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-02 10:02:16'),
('e0453e3594148680e067d6302c56dfc1', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-02 10:04:19'),
('d3dead2bde4642612b24c33fcadd601d', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-02 10:06:21'),
('7d4df42ff834c8e294b95118f4cee013', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-02 11:49:47'),
('11c1082045b5f43ab7fea249a189a41d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-02 23:09:38'),
('203b88ff2bfaca7064b91554b0b64e79', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-02 23:39:43'),
('3b76941570b09ec653222554c6a8c3a3', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-03 00:24:52'),
('cb45a5126a745554ecb5fbf4f1548388', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-03 00:39:51'),
('98efd6b7f4c4cdfb709e35fa30b55568', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-03 00:54:49'),
('8b5e8b842d1b51cf170a51c3a937c75a', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-03 01:07:52'),
('cee984b9ba819ed9e41ab975e4d3d2c3', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-03 01:09:50'),
('0b4b15b4416f58c9cd83b60a67c25d9c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-03 07:34:22'),
('d0055f5a906335fa7dada64d3ed4e0b6', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-03 10:44:38'),
('0e17d093192c859ceec55a93082f2270', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-03 10:44:43'),
('dac01ed74524a27a05aa096a224b5cf9', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-04 01:04:17'),
('c13935d69393cd9f310ee030554017c6', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-04 06:21:12'),
('60d550229dab91749c7d9137f5f31507', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-04 17:56:23'),
('50bc63e82e70a07af8cb2d1c35bb3bcf', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-05 09:36:12'),
('5f9aac13870a95133846064ab7c08729', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-08 10:03:27'),
('059418aa9f9a65777c7792f3b6eb8c86', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-06 00:05:26'),
('d85420fadb17300b9cac433220220b91', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-08 10:04:57'),
('aa94acde5104d238497b5709d0800cce', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-08 09:51:30'),
('c9c97b1cd13f1f36db2c231b1139cc7b', 'OTM1YzYyOGM1ZTFiMWFiNTFiZDQ0YjYzYTBhMTJkNTI3MDljNDBlZDqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-08 15:29:38'),
('557707774054a8de9771d2f83f400fd1', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-06 22:46:09'),
('59f332dd05e9de1d5b833bbc5cd40ecc', 'NTA1MjRjNThmN2Q3NzQ0ODllMmY4NDM5NTg2YTQyZjlkZGY5ZmNhODqAAn1xAShVBWZsYXNoTlUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMuQ3VzdG9tVXNlck1vZGVsQmFj\na2VuZFUNX2F1dGhfdXNlcl9pZIoBFHUu\n', '2012-02-06 22:57:41'),
('17291698d1b65210528a9498da087613', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-06 19:27:26'),
('9e4914c81b77c1c5e4602c6fb1219424', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-06 20:52:54'),
('6bfb49399cd8d1cc7e82bb43f2b5f6e1', 'YTNkMzdmNzQyMmFhOWU2MjdhYjJmMzE2YmIzOGFhYmQ1NzY3YTI4NTqAAn1xAVUFZmxhc2hjZmxh\nc2htc2cuZmxhc2gKU3RhY2sKcQIpgXEDKGNmbGFzaG1zZy5mbGFzaApNc2cKcQRvcQV9cQYoVQNt\nc2dxB1hCAAAAVmHFoSByYcSNdW4gamUgb25lbW9nb8SNZW4uIFByb3NpbW8sIG9icm5pdGUgc2Ug\nbmEgc2tyYm5pa2Egc3RyYW5pcQhVBWtsYXNzcQlVBWVycm9ycQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-07 08:28:56'),
('cfe8156c2d5bb3ce3863291a9e710693', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-07 01:22:51'),
('8e4d541dd3a1a5bd059779e6b3017448', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-07 10:42:23'),
('568b7d375f66c3287ee980f0f504c8f8', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-06 22:46:10'),
('9ca2c76ceb5672bf60bb09a1fce068ac', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-08 11:33:26'),
('31c81b9b59d9af83c93d4522552f5944', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-08 09:18:40'),
('4ba3d791db154bb1f096a97df3d646e1', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-08 12:56:20'),
('ded0f4227c7dca5dba7403845d07f7db', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-07 12:10:38'),
('676281b89c1a9fd03c5a2c956699f902', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-07 12:53:16'),
('a132fb22b48cb33160ff77e8e8495d93', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-08 10:03:26'),
('77b30325ad86543935b29276e6d08aef', 'OGM1OTFkY2YwMThiMmJjYmFjNjZlZDE2MDU2M2MyZDM0OTQ3NmRlYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSl1c2VyLmF1dGhfYmFja2VuZHMuQ3VzdG9tVXNlck1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-02-07 12:37:20'),
('efc80d1330025197ac593d8528875b01', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-08 10:06:52'),
('9740ef8cd9fc83c4939c3f0c77d1fef1', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-08 10:08:48'),
('b8dd4bc024835fa02a3dd8461c60e287', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-08 10:10:44'),
('d16cb0bcad46061e054cc4fc38fcb03e', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-08 10:12:40'),
('40f0fa0bd48836d68734c49d3f27ffc3', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-10 09:45:46'),
('b60570749d37ca22062e1a929d457411', 'NDMyNTUxZDkwODZjOTU1MWRmYzY0ZTQ4YjIwYTRlY2FiMWEyZjI0NzqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBE1USX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-23 22:43:12'),
('ecda96e83e24b688695ba8e8af258aa3', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-08 10:19:44'),
('4d8e87e4c2bc76b9b427233cbbeb1b85', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 20:25:35'),
('7f8e7b9c95e6c0712677c9283354ac64', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-08 23:31:53'),
('b39423bf6912d87e6e1f81d974c7528a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-08 12:47:19'),
('e5b8e8e91a1bc4a30d134ff0f84e80be', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 20:40:11'),
('f9a4bb4f5dbf26db7c653cfc885c8e79', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 20:11:07'),
('3513a3e1dd43d9a4ddd0047586180561', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 19:56:56'),
('09712498114a17a22c1db605f62d38ce', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 14:23:22'),
('2c48dd0b7e44527499ac9ea61f9797e4', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 16:20:01'),
('c1bba247abf454f16ca9a7603a8c77a2', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 19:42:12'),
('adc2db92e7cff1300371ee6c5cd3167c', 'NTA1MjRjNThmN2Q3NzQ0ODllMmY4NDM5NTg2YTQyZjlkZGY5ZmNhODqAAn1xAShVBWZsYXNoTlUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMuQ3VzdG9tVXNlck1vZGVsQmFj\na2VuZFUNX2F1dGhfdXNlcl9pZIoBFHUu\n', '2012-02-09 18:11:45'),
('188f68574b0b727fee51a4744c2192fb', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 19:27:40'),
('110a43ee471bd40977fe1b2fea0fe432', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-09 20:54:58'),
('e6ceb6bdfc0b4969e7c61f9babb692f5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 20:54:59'),
('c64994e7860c28dfbed6e6d0ca82e3fa', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-09 21:23:56'),
('7989f2ad56b74c207fc4477e359a84e8', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-09 21:43:18'),
('74c0e64abda203c2d7fe82959a544ead', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-11 09:55:20'),
('0c6d3d90cb8c4a5d1306946b613e2620', 'MjEwMjQ3ZTBmNTJjNGU1ODIwNjdlYjNiZmFjNzY0MDZiMzllZTQ3ZTqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBFlUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-10 09:45:55'),
('cd5ab8ac3be8cc83e135d8989ce2993e', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-10 09:45:47'),
('966c3b42eee39472547185e1f2f54908', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-10 09:45:49'),
('43014afa1ff9fae6e7c645c8fd64412c', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-10 09:45:50'),
('084cbda79393567615b95c23d1c7ef66', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-10 10:22:13'),
('74371f2ed037609830846bc991792043', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-11 09:55:20'),
('172292f0cc8882c8afda873c03e7c80a', 'NjIyODkzOGU1YjJkMTY1MTZhM2FkNTBhMDM2NTg2ZjU2NTZmYTIzMjqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBF1USX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-10 12:57:57'),
('3c9ac073db55b991b6bad41ed6564bfb', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-10 13:54:53'),
('bc14a2fb294f7a9625139262a4ac2192', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-11 09:42:00'),
('ad321433bada3c77628016d44856ec33', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-11 09:55:29'),
('6744a85c117a66d432e67393354f814a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-13 14:13:52'),
('25c6aa508cf2f9849e6f28c0cdc88434', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-19 07:38:42'),
('a1a785099b63477755f8ec517fbf70bb', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-13 12:02:02'),
('6d533f00411a667be54bbcaaadbc8e9a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-13 14:43:32'),
('e453da35736dcecef43209b5d84f90d0', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-15 12:35:44'),
('bf7577807fe31ee61c207f633cf149b5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-14 10:51:24'),
('37f9bacc199fe2214544fca4d8f1bfba', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-15 18:19:32'),
('bf91cf199a0fed5016e2667c7de7b26d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-15 12:16:01'),
('eda15e36f1fa751a3e1156f3c515dcf8', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-14 13:20:09'),
('84d94fe7723bb38f9f5950197eb623a1', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-14 16:06:02'),
('7d470b30249ecf51a0de9539f69a4682', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-15 10:54:22'),
('21bb179f549ea74de872905f3e2143c5', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-14 13:09:57'),
('5ead5c2b035af341a9c6562c9c41b48c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-15 14:51:53'),
('e5543953a15aa6516800dadc06d919c9', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-19 07:34:00'),
('e6c3053ed80837ec17f0bce7b4a8a2e7', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-17 15:00:10'),
('31b943c6174f65147d81533de9fdcf10', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-18 17:17:34'),
('fa065ba596893b4b20261ef6151b73bd', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-19 07:33:58'),
('35aa0acea0d39a3ee69d91207102b64c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-19 07:44:30'),
('aa09d23c1ea26905eae5158450f8dc3d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-19 07:54:24'),
('6cb17424208bcedd8354533c51f6568e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-19 08:04:14'),
('f78077c3f805ab6a3456ed3812e4b890', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-19 14:39:00'),
('9d5c896a462c737dbc4da656e0924cec', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-20 11:46:03'),
('bc0bf23ab3829d76612d3cd6942a0745', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-20 23:44:16'),
('f820244bffcb64b8163a77b1bf6a33e2', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-20 23:36:49'),
('d7642f27409fed914f103460f65bc572', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-20 22:13:13'),
('82d0f53a5db916eb129197c9813622ff', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-20 22:17:36'),
('ffc160fb1dd7ad34f186c6d5dab1a1b5', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-20 23:36:48'),
('a56384f697420c1697d816a99f7826e4', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-20 21:53:46'),
('6e7ce6859d7931bdd03a21387d23124f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-21 10:37:16'),
('5f5b4bdcaa938081f18157d6acfd4646', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-21 13:34:10'),
('1b2f1b24446cef3405856ce0c97ee272', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-22 01:52:30'),
('b53bde1c9f83379fa9e6c34e263a6a32', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-21 12:57:44'),
('776e60ebdc2baaefe12e52d4059fbe09', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-21 13:06:05'),
('28922d0c6c36d4a20c012c30d8d5dd60', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-22 01:57:20'),
('a6bc36846a99ea8fd6937cfb74bf61a5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-22 01:52:31'),
('16e432e594b36b721411e30c7314cdcc', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-21 20:07:25'),
('d9022330341d83c5d2545335939ef1b9', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-22 01:22:35'),
('8b79939a32b47bde1949d9bd536d5a7c', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-02-22 02:04:02'),
('cab0d871d4fa95e466c8c74de8d7cb30', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-22 08:56:22'),
('7d17c80edc9eb2cfa98848650b436caf', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-22 09:18:09'),
('9a27185a3d9cd10342ef3711b8c2a5e7', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-27 10:57:48'),
('429d9d1d76eb3af710d085c9290f0382', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-23 11:30:35'),
('d57695215bd77e8cb8de32cce879950b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-22 16:02:43'),
('82fc2a404e185a627257feb4b7ab7270', 'OTM1YzYyOGM1ZTFiMWFiNTFiZDQ0YjYzYTBhMTJkNTI3MDljNDBlZDqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-02-27 18:26:38'),
('8674632c9c8cc97ec62920bec8922cfd', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-22 19:29:21'),
('0be985ca8561637acdd0e0b11122f64e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-23 10:47:16'),
('d769a8cd9aea50f6e235f10ad62470ec', 'YWJlNzgwZTFjZTJiYTA2MTU4NjEzZWY2Zjg3YmNkNmEzYTIzMWM5ZTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-02-24 14:53:18'),
('2441629dd7d2da57d31bcb0a847a48ea', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-24 14:58:29'),
('7c0a74564acd4f49abffd7c93e794b78', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-02-27 08:49:02'),
('bc0e7a9393868b7d6705f73e8f94c84f', 'OTYxODY3YzJlM2UzMjJkOWRkNGQ3MjJkMzQzMTUxZWViODhkYWUwOTqAAn1xAShVBWZsYXNoTlUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMuQ3VzdG9tVXNlck1vZGVsQmFj\na2VuZFUNX2F1dGhfdXNlcl9pZIoBE3Uu\n', '2012-02-27 22:43:02'),
('512a64eeb63d160f1725d9231d82f462', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-27 18:36:02'),
('e8d4e22164d10179362adeb4b9679dc1', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-29 14:52:16'),
('9e276718e5ec15f08f70b37bead91070', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-27 23:00:31'),
('b1361746411c4c1e1bacd1b2103b847d', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-02-27 22:52:36'),
('efa030917220448b69bd0baf45e4006d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-02-29 17:29:45'),
('51f3807f93cd2fbf40d8b7eae47d7ff4', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-03-01 12:38:18'),
('572ee215b4964b62f2a1a16758faeef1', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-01 22:11:18'),
('77c07be5330f076c398ea451fe86248e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-02 21:55:54'),
('6e8df2b62e885965f5525803782280c0', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-01 18:18:28'),
('30959bf2172841aa75f89dd5b8abca03', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-01 12:52:47'),
('58baef13343aaeb4e6c07ddcbb238516', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-01 13:53:35'),
('73c54612b032027da9bed665e9398ee0', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-01 13:53:36'),
('0b6ab47ca5c14abb1d4caa1eb4639426', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-03-02 22:23:03'),
('f2d345a240715bb02b8058d0ec9333c0', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-02 22:22:55'),
('a71c7a33a6118838e07c6211c847bb66', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-02 22:23:09'),
('d6041bfb1dca9f48e981fcf5b76652c5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-02 22:43:45'),
('6387a32f645ad37aff72ec79eb651d0f', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-03-04 10:19:44'),
('e0c801744c5cae7491a93d868e54e0e1', 'ZmZjMWEzMWU4N2RkMjY4ZjVjMjYzYmJlZjQ1NTU5MDU0MmM5ZTY5NjqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBAlUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-03-03 16:21:34'),
('bb0778529c8c3a5538148a3f86ee82cf', 'ZGU5ZmQ1YTZlYmFiMjdiOTc5NDhlNjM5NDRhMWY2OTcwNmI1ZmRlZTqAAn1xAShVBWZsYXNoTlUP\nZGphbmdvX2xhbmd1YWdlWAIAAABlbnUu\n', '2012-03-05 01:00:55'),
('e94e034bab7c5a66fb8f037b23537580', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-03-04 23:34:40'),
('5f61ce9621dbe90691014d16339da74a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-05 06:59:49'),
('07c723b938bde5263335fd75576013d6', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-05 08:53:06'),
('917f566618b41e8c97ceb0fc1eb9b39d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-05 21:16:53'),
('0e7cb834182964cc8948731f94891918', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-06 14:57:58'),
('b2e082489ec7e7a3f1da22fb1e20afe7', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-06 15:11:51'),
('3e0f774b86d72ee4929b683720b2ff37', 'ZWRiZjBiMzY0YjRlODM1MjI0NTRjNjc1OGM0OTFlNDIyZWFmMmZkMDqAAn1xAShVBWZsYXNoTlUN\nX2F1dGhfdXNlcl9pZIoBFVUSX2F1dGhfdXNlcl9iYWNrZW5kVSl1c2VyLmF1dGhfYmFja2VuZHMu\nQ3VzdG9tVXNlck1vZGVsQmFja2VuZHUu\n', '2012-03-06 17:21:18'),
('1fd64ec2eaceb477064104280fba363d', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-03-08 18:29:19'),
('0b5343d057c9cc5a58c9abdb803e0dc9', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-03-06 20:59:09'),
('ab14f27421a72e2c5b1f0825f2718f89', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-06 21:18:21'),
('229d7f2c7866843e6847b53a37c40d2f', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-03-07 14:26:50'),
('f7fbbbdde28b3589bce3439b1c9c58d3', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-08 18:04:31'),
('9ab0d4460d991b5164aa1e20be5f5d4b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-08 18:29:31'),
('e7ef5e16937950ccc4690077fdb9e785', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-08 22:32:57'),
('e291241f608e740fe9c39cd8130041da', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-08 23:16:17'),
('9477224c6582e487a26de6cfecea77ff', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-09 08:36:43'),
('58be966e9490a6608bc982b53d61e2db', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-03-09 16:46:31'),
('01f11f0c02688a14acf992f7330ccb56', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-09 16:46:43'),
('f2fc4684a266a2ec7b9cda6a2c43a6de', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-11 02:53:16'),
('bd113da96a8ffd338a5ab46bba729e44', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-12 12:49:17'),
('87b6dd3f020f781af7ef6e87a7e3e430', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-13 05:46:35'),
('10530651ac6f74722458a1cb121cd9a7', 'MjI5MmUyNmJmYzVhMzAzMjQ0MzNkNDEwYzhlNTMxNjZjMTRkOGIzOTqAAn1xAS4=\n', '2012-03-14 10:21:09'),
('f46b9f8ad23a747509a0597fe4d36318', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-14 20:30:51'),
('97a270108cab1941b33dc48e90825d84', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-14 23:43:44'),
('acd31d9aa234622491607edb483b50c4', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-13 20:18:33'),
('908da858423cb81d3bd2a5db61a7efde', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-16 11:56:12'),
('a4583752818a32b05e4fb559a09a3b91', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-15 11:59:42'),
('83b33092a05587108981e6a506aa232c', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-03-15 13:47:45'),
('1d2b064e927356cf8c9e2cadec8850b2', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-03-15 13:56:09'),
('b81b3e5a87c06676969384c01f84d06b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-16 09:54:12'),
('585126b26a80fd7747f2e0bea9e4db24', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-16 10:58:53'),
('8ed84229dc2908c4a3b45b5e6fb69ef4', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-16 11:41:52'),
('135e8e92bdfccbd7187f0af649b9912e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-16 23:29:04'),
('e10f67f2a87cce4ae22a91cb4b59da24', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-03-17 05:32:55'),
('fddb83443d1ba667a38338f1d54f1d97', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-17 05:33:00'),
('3e2f2020d807868f6e1ea836fab0f888', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-17 10:58:59'),
('84ad423760a4049b3a473a1232908faa', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-18 20:51:36'),
('7d463f36a80f3e3e5493d24e62ac764d', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-03-18 23:10:49'),
('f22ba54f8b3fcadc2b1b1b9987d138a7', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-18 23:10:51'),
('7543c70cc9707f1988b61800fb3c829d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-19 03:54:44'),
('626f0892e14c50b7c191ec0626b8c9a3', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-19 10:57:08'),
('0851a5c7cf2b89eee50f05755f662a62', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-19 18:34:51'),
('36a4fc9255271319279762e1a4414c0d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-21 00:40:35'),
('ab30e8f32e907eeed2eff654cec001fa', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-22 11:18:42'),
('657677a22a00135b456c7b6a2624fa2b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-22 12:16:21'),
('bfb3558bd7637996a977224a540300bb', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-24 04:14:11'),
('df6d9a6d525539ac990d12f6d5fdd20d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-26 12:06:34'),
('bcb9c3d15fbd4c53c4bb45bead0bd18b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-27 00:18:23'),
('6f62fbf840dff022d4cc678870eb9d30', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-27 12:14:11'),
('70af4fc07c7f908575c9487102b14c31', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-29 04:17:22'),
('76a4006e19b819acf67b05d7a077b109', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-30 08:39:28'),
('15a5e50fbbf9f61e98164e9497e7e19f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-31 02:27:34'),
('aa9cfb8d37380098f4d577f9cc1facdb', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-31 04:19:18'),
('b86bb19e02f1e6413ecb37314f6cd113', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-31 17:49:51'),
('4e296c55213efa9f58edc495e94a8fb0', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-03-31 18:52:46'),
('44ce8262268f69038e515e6f524a573c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-02 21:35:26'),
('f5c758fd23ef07cff35987bdf09b292f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-05 17:22:27'),
('e4129610dee328225165c66ef6e6afe0', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-06 11:09:34'),
('cac1ac91572950149244fe846ce14a2b', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-04-07 01:01:05'),
('667c08039591d0cba38d50ef234ccb91', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-07 01:01:10'),
('19c4910fd7be2d7f8d0b9aab9eb393de', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-07 01:29:52'),
('3065e8efdf741528db866e534f104e95', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-08 08:08:53'),
('e691f5a2ac5bd4cc4ded36ec756b315a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-09 04:03:40'),
('51f4dc539b6d3f300277d9cc0ff5feee', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-04-09 10:10:18'),
('5193f2c8a358c602cd872d0c6a161db4', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-09 17:31:01'),
('460e2678d4a459c24f9402ec5045b71e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-10 17:41:49'),
('f309eaf9b79edbad374b2d00ecaef2b9', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-12 17:15:57'),
('34c56fb73fa698d16785fd476935497e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-13 21:09:56'),
('31e6c567073d14f73ffa12fadcf75749', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-14 06:46:24'),
('3a10bc94484dc5901b83041dc16a64f2', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-14 18:55:47'),
('2cd31ad2af144705ef19d9fa1dd31a5f', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-04-16 01:11:09'),
('31a41d5b81eacf45fd9dec18cf52a91a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-16 09:41:16'),
('fdadb2ce0f79d0c7a85074f1f6a99670', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-17 00:37:46'),
('b6b0d56d6e744f4a10e8723f6dfafb02', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-17 21:24:24'),
('0cc107e3f44384343c552168caea1d27', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-19 02:01:41'),
('537f2b10f25fcbedc27b77667cc9a1ec', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-20 02:29:13'),
('06894f7588ec12ccde84e5f769d2a450', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-22 15:45:52'),
('a65519662e36e2c1eed57c565bba592a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-22 23:28:40'),
('03e48c02a9977ed9d71768c4735c7c4b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-23 01:47:34'),
('ec4d20c783ca191b21cf68f5112fc5b8', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-25 09:13:17'),
('db08b6d03b67e956bbf235a0e238533e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-28 16:29:47'),
('feedee8321d9b03dd93b1c5943760aba', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-04-29 18:23:33'),
('38cc65382f9abc1639b9e68a2415c605', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-01 13:33:28'),
('7e1f7e08db61420f6292e03672c71130', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-02 09:35:56'),
('67762403045bee07483649345e193eaf', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-03 11:40:05'),
('3de318a905e1f4a40a0d197b8b64874e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-04 06:08:46'),
('2c880237878f5b3617994d7ce4e5ae5c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-05 04:36:03'),
('8f722bf8c8ef29d7cf4b2c15de9674e7', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-05 07:39:42'),
('ef80ec40d9b90a4a049dfc304120990c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-05 08:53:10'),
('3c568233ba02f513cf4688cb2c85318b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-06 06:11:17'),
('ef47211a5c70be4c092ff38a5d02abec', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-06 07:10:23'),
('9a718b805af223b6e3683ced5c1fc195', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-05-06 21:27:41'),
('ecdb01645a921cd2a9ac376be7eee57a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-06 21:27:42'),
('b80a7e0d10fa3a63b8b8c9ff9e3995c5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-07 12:19:03'),
('de7a464d499aeee75b735ce4b3266e70', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-08 18:46:00'),
('017ea4fe73b78beeca6ace94eba59895', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-08 22:46:22'),
('e3ea10e54a63bb38ff2175f4aa9dec41', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-10 16:10:21'),
('3ba4a1a35fb69b2510159accdd5e9f0f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-12 12:37:40'),
('5b9d3e713b4c7ff940e9a0737b7703cc', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-14 07:35:25'),
('ed7298a113551fe9d59561a62ceac0b2', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-15 12:09:28'),
('1223cfce2c67dd75df3c948e98775a9a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-16 16:51:13'),
('375eaa9c56d649a2fcc17b923107ab1a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-18 13:19:30'),
('cbd17da34b798acfcbdb7db2ba2fb791', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-05-19 15:02:28'),
('98c1b3f0b4aff657304989f8ce30014e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-06-25 13:08:36'),
('5ea9dedcbd227885fe9c4b8efc98ffe5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-10 15:37:42'),
('6b879079403468313ca2e374fac92937', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-10 17:32:30'),
('39b0f7429be2959b03fdb84400e7e1c6', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-10 17:48:19');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8ba3433ad87525e3ddc1621bf0a88748', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-10 21:32:08'),
('8efcd72d2f82f6234030c3041e994c45', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-12 07:01:27'),
('4c5803378d7f3498e738cba36015aea5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-12 15:31:26'),
('fd160b58b84e2749d2317dd93f3219e3', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-14 13:34:57'),
('ba690edf38f1d9b6f6e15a5988b80fb4', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-16 09:18:09'),
('a5210d412ed8fc854d5303d758dc392f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-18 05:58:36'),
('1c47e1747620035f6383e243974e2392', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-07-19 20:06:11'),
('811fe766c1f7ba88d26552732bf0dd0f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-20 02:57:47'),
('8249bda3c4caedc7d5e7f0f8826b1bb0', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-20 13:24:34'),
('35e6b96730bee0bcccdde998750bfa3e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-20 19:41:39'),
('f75d0b920bed93640b70c835effb6a3e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-21 03:58:10'),
('400c711c7415a95529815f6d52f7eb4d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-22 11:03:04'),
('77750b2219e2930c1c23d03eb2e3be40', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-24 06:27:53'),
('068ee2663c52ae385ec66614af0e8768', 'ODM2NjU2NWVmM2Y5MjdmMjZmMDUzZDMyZGQ4YTU3YmI2ODk3YjM5ZjqAAn1xAShVBWZsYXNoTlUP\nZGphbmdvX2xhbmd1YWdlWAIAAABlbnECdS4=\n', '2012-07-25 13:21:06'),
('3cc93b0946c75b922dd43e5b3bc87039', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-26 08:34:53'),
('ac68c629dedc1f2fdbb8936885fa87bf', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-28 05:06:08'),
('d05e3f1c078e89c7db2f84b5dd6fcd58', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:27:24'),
('a92b0e652081aee9f0305bac91c459b5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-28 05:27:33'),
('899bad60da53b4bda6eb476d9e0fd17f', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:29:12'),
('8c7c343a73ff0682eee5d187b2a7dd55', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:31:10'),
('eec99e3bea85cff0783c92f0774dc924', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:32:05'),
('7439a31304e1f53ec21bd534495f2596', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:32:56'),
('2c19029944506fd46398c49ff6a82945', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:33:50'),
('91979a85cb40074c070d4d5abdbdf9af', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:34:44'),
('26fe3241f973cf458859d62e0222a830', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:35:45'),
('6190ba51e4f7cbf8009595c887dece6f', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:36:41'),
('c81732a8d45b9b6346706a03e2287bb3', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:37:40'),
('ad3754e60b1893867584bf102825c26b', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:42:03'),
('58c1d411b0707e8b770cbf9bedd8f8d8', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:46:00'),
('7ee418797ccc58f35f3de5454f35a011', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-07-28 05:50:26'),
('6a44761d839b4f49735c52e7c9706871', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 04:10:39'),
('a5c611d27bf2afb9d8dff8ac00f86308', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 12:16:28'),
('6a30db4a4562b0695b855c21cd1cf913', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 12:39:36'),
('6a95cc9efab9178f11e5d5a6aa3d84a7', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 12:41:54'),
('6079f2df12e1b4809c37dea33afff60f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 12:44:32'),
('b5fd7f32dfd34cf33cfc695fa0074c5b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 12:47:05'),
('d42b5a9ac2999c044a5f105f64cfb6c4', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 12:49:48'),
('9935015ff7f597f545fda48679f6af59', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 12:59:55'),
('3b25a472fe4a4007ec998ca9425ce03b', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-30 13:50:01'),
('ec2e78ae31de508aa8375d939687cf3e', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-07-31 09:06:02'),
('7c4c712eb95270a63bc5e8a4f0a732fc', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-01 20:29:03'),
('4f5ee6d1448f365f226c8587be65bf91', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-01 20:50:01'),
('f05500946aad0cf6f8ac0dc51ef46b3c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-01 23:21:48'),
('4f09d91af04f9f58fd181f891ae658d2', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-03 07:38:33'),
('1359a771fea6106e132fd73fc88a6838', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-05 04:19:46'),
('d9f1b07200f7b1984e7c37ea4dfce30a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-07 18:17:40'),
('d44758c8b905802788ec3cbb79199d52', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-09 05:30:10'),
('cedae7991eaa184fba99292fcc69b52d', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-10 01:32:15'),
('62921b6a9e1b021be6a570cd7ce81c81', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-12 10:55:01'),
('ec79699e3ff11df4c5a6a4aa391ca68f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-14 07:33:52'),
('799d6e955791c1c1500b67a52f9b07ee', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-16 18:25:40'),
('ffe7f080e39e57e92e1ffacd8c18098c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-18 10:44:48'),
('c5700e7ee2b5f19b389202e99e2571e9', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-19 08:13:49'),
('ef183ad70763fc5c75a22af278810b4c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-20 07:40:19'),
('eb3d154be3be94a73d49b8d1d6ac4729', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-21 12:40:03'),
('4550318b718905c63ef77b57e7bff82b', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-08-23 21:17:17'),
('1d1db7d02d964372282df2face44579a', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-23 21:17:17'),
('7f7de76651cea13964be7c886c102ede', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-23 22:20:20'),
('17c2603dfb818ebe42a66c6c9c336ace', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-24 12:23:58'),
('4377aab99d86c04e1889d226ea86b151', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-26 06:33:00'),
('7f1466e035a900bd598b3834e774bab6', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-26 06:50:07'),
('9250aabb15f7234a7e2abd5e4ece3824', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-26 14:34:17'),
('e291f5aef34ae65211e15208cfd2aad6', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-28 06:35:02'),
('1f5805cbabcd8771d1495379849a615c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-29 08:37:53'),
('29ef9b29328c8b5ec67239420b5cab80', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-30 08:11:42'),
('b8aadd3e0de78947a5b7fb112106ce00', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-30 10:51:14'),
('6ec437a40cd3ad2622acb43e33bf72c3', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-08-30 11:29:19'),
('e0a3a60626886d2ac776c24ff03e0a2e', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-08-30 15:27:08'),
('7fa540b4c8b4d5ba569d04ec17f57ba0', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-08-30 17:19:02'),
('28f515cff79f67eb295b862191cb3873', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-08-31 00:43:58'),
('b064a7d4205c300489e059e5e4a09d9d', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-08-31 04:29:30'),
('ffae5dd2359596f20e508f8572631d0a', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-08-31 05:51:08'),
('09cee0dcc49eed8d87c8180e7e9d4e16', 'NTNkM2I1NWVlMDc0MmViMTcxMGI1NzY1YzZiMDZkNzIyMDRlODkwYTqAAn1xAVUFZmxhc2hxAmNm\nbGFzaG1zZy5mbGFzaApTdGFjawpxAymBcQQoY2ZsYXNobXNnLmZsYXNoCk1zZwpxBW9xBn1xByhV\nA21zZ3EIWHkAAABZb3UgbWlnaHQgd2FudCB0byA8YSBocmVmPSIvdXNlci9yZWdpc3Rlci8iPmpv\naW4gdXMgbm93PC9hPiBvciBlbnRlciB3aXRoIHlvdXIgdXNlciB1c2luZyB0aGUgZ3JleSBsb2dp\nbiBib3ggYXQgdGhlIGxlZnQuVQVrbGFzc3EJVQRpbmZvcQpVBXRpdGxlcQtOdWJhfXEMYnMu\n', '2012-08-31 16:41:56'),
('855928cbc4655ef3d11d4a0305b350a5', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-01 09:56:59'),
('3de2a17bcb0a8b2d1f8e8a40d96cb0c8', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-02 00:36:59'),
('9ed786d8749445dc80f186cd34a489ac', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-02 19:19:39'),
('45446fcf37930753f7e219b59bc75c45', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-03 06:20:59'),
('60e89e3eda9e2cb458e24ddb55914dd8', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-03 15:55:09'),
('3794e18a9753cd745eb58f4a3996bd32', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-04 12:36:13'),
('27265036300ace0526770b4cb23a643f', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-04 14:55:44'),
('42426839dd2ff45ae21a99b4c4cc0464', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-04 21:54:04'),
('94feebe806a1122aa0e067c2a8f7319c', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-05 14:12:09'),
('cb8b0441b49f35dc897f823c63661e09', 'MTZjZjBjMGUxNTkzYzA5NjgzN2JjNzdlYjk5MjdkNGM3YjEzNzMwMDqAAn1xAVUFZmxhc2hOcy4=\n', '2012-09-10 20:12:38'),
('f1b3f4a1fac7bd5031c0cece43b4e0de', 'NmMwN2MwOTMxNzUyZGVmNjQ0ZGUyN2EwYjU2OWNkYTljMWZhZWVmODqAAn1xAVUFZmxhc2hxAk5z\nLg==\n', '2012-09-08 10:07:00');

-- --------------------------------------------------------

--
-- Struktura tabele `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=2 ;

--
-- Odloži podatke za tabelo `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'www.cbs-mb.si', 'Casovna banka Maribor');

-- --------------------------------------------------------

--
-- Struktura tabele `messages_message`
--

CREATE TABLE IF NOT EXISTS `messages_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(120) COLLATE utf8_slovenian_ci NOT NULL,
  `body` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `parent_msg_id` int(11) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `read_at` datetime DEFAULT NULL,
  `replied_at` datetime DEFAULT NULL,
  `sender_deleted_at` datetime DEFAULT NULL,
  `recipient_deleted_at` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `service_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_message_6fe0a617` (`sender_id`),
  KEY `messages_message_32f69dc` (`recipient_id`),
  KEY `messages_message_201a85d4` (`parent_msg_id`),
  KEY `messages_message_6f1d73c2` (`service_id`),
  KEY `messages_message_482db205` (`transfer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=70 ;

--
-- Odloži podatke za tabelo `messages_message`
--

INSERT INTO `messages_message` (`id`, `subject`, `body`, `sender_id`, `recipient_id`, `parent_msg_id`, `sent_at`, `read_at`, `replied_at`, `sender_deleted_at`, `recipient_deleted_at`, `is_public`, `service_id`, `transfer_id`) VALUES
(16, '', 'Aleksandra je napisal:\r\n> Pozdrav!\r\n> \r\n> Ta vikend imam čas, lahko pridem pomagat vrtnarit.\r\n\r\nHi\r\n\r\nSuper. To bi bilo idealno. Se lahko zmeniva ob 14h na tem in tem naslovu? Potreboval bi vas za kakšno uro ali dve. Podrobneje se lahko dogovoriva preko telefona. LP  ', 15, 22, 13, '2012-01-25 12:19:00', '2012-01-27 10:06:06', '2012-01-27 10:08:15', NULL, NULL, 0, NULL, NULL),
(14, '', 'Kaj je SPSS?\r\n\r\n', 22, 19, NULL, '2012-01-24 12:07:09', NULL, NULL, NULL, NULL, 1, 5, NULL),
(15, '', 'Kaj misliš s tem, da se ti je "pokvaril računalnik". Mašina se niti ne zažene, ne dela nič ali ti ne dela v windowsu?', 22, 16, NULL, '2012-01-25 09:50:04', NULL, NULL, NULL, NULL, 1, 2, NULL),
(13, '', 'Pozdrav!\r\n\r\nTa vikend imam čas, lahko pridem pomagat vrtnarit.', 22, 15, NULL, '2012-01-24 12:04:45', '2012-01-24 12:06:49', '2012-01-25 12:19:00', NULL, NULL, 0, NULL, NULL),
(11, '', 'Ojla!\r\n\r\nče dač gor ponudbo za urice filozofije, ti kar nakažem "sredstva"!:)', 19, 20, NULL, '2012-01-24 09:37:07', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(12, '', 'Samo, pozdravljen v skupnosti. Lepo te je videti med nami!', 16, 21, NULL, '2012-01-24 11:38:06', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(10, '', 'aadam je napisal:\r\n> Kaj je to SSPS?\r\n\r\nojla!\r\nEn računalniški program za statistiko... Zelo uporaben za raziskovalno delo. Smo se ga malo učili na faxu, ampak že dolgo nazaj in predvsem premalo.\r\n\r\nlp', 19, 20, 9, '2012-01-24 09:14:39', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, '', 'Kaj je to SSPS?', 20, 19, NULL, '2012-01-23 22:52:21', '2012-01-24 09:12:15', '2012-01-24 09:14:39', NULL, NULL, 0, NULL, NULL),
(17, '', 'Pozdrav!\r\n\r\nLahko pomagam. Kdaj rabiš pomoč?', 16, 20, NULL, '2012-01-26 14:20:36', '2012-01-26 16:13:32', '2012-01-26 16:14:23', NULL, NULL, 0, NULL, NULL),
(18, '', 'Zofija je napisal:\r\n> Pozdrav!\r\n> \r\n> Lahko pomagam. Kdaj rabiš pomoč?\r\n\r\nAh, skozi, zlasti pa danes ob 18.', 20, 16, 17, '2012-01-26 16:14:23', '2012-01-27 13:04:04', '2012-01-27 13:04:43', NULL, NULL, 0, NULL, NULL),
(19, '', 'Sem iz Mb. Naša ptičja hišica nujno potrebuje odganjalca mačk! Ste iz Mb? Kako pogosto ste jih pripravljeni odganjati? lp', 19, 20, NULL, '2012-01-26 22:17:22', NULL, NULL, NULL, NULL, 1, 10, NULL),
(20, '', 'SPSS je en program za statistiko, kar uporabna zadeva za kake raziskovalne naloge...', 19, 19, NULL, '2012-01-26 22:52:58', NULL, NULL, NULL, NULL, 1, 5, NULL),
(21, '', 'Hey!\r\n\r\nSem skušala komentirat tvoj komentar. Ali si bila ti o mojem komentarju obveščena? Ali mora potem posameznik sam spremljat to ali je dobil odgovor na svoj komentar? Ker potem, če je komentarjev veliko, je to kar izguba časa, da najde pravi odgovor...\r\n\r\nlp', 19, 22, NULL, '2012-01-26 22:54:48', '2012-01-27 09:48:21', '2012-01-27 10:12:46', NULL, NULL, 0, NULL, NULL),
(22, '', 'Oj!\r\n\r\nDogovorjeno.\r\nMoja tel št xxxx\r\n\r\n\r\nRezija je napisal:\r\n> Aleksandra je napisal:\r\n> > Pozdrav!\r\n> > \r\n> > Ta vikend imam čas, lahko pridem pomagat vrtnarit.\r\n> \r\n> Hi\r\n> \r\n> Super. To bi bilo idealno. Se lahko zmeniva ob 14h na\r\n> tem in tem naslovu? Potreboval bi vas za kakšno uro ali\r\n> dve. Podrobneje se lahko dogovoriva preko telefona. LP \r\n> ', 22, 15, 16, '2012-01-27 10:08:15', '2012-01-27 13:50:03', '2012-01-27 13:50:30', NULL, NULL, 0, NULL, NULL),
(23, '', 'Oj!\r\n\r\nO tvojem komentarju nisem bila obveščena na mail in tudi ko sem prišla na portal nisem imela nobenega opozorila, da sem dobila odgovor na komentar ali oglas.\r\n\r\nSe strinjam. to je problem.\r\n\r\nSem pa dobila obvestilo na mail o zasebnem sporočilu, tako da to deluje.\r\n\r\n\r\n\r\nanjat je napisal:\r\n> Hey!\r\n> \r\n> Sem skušala komentirat tvoj komentar. Ali si bila ti o\r\n> mojem komentarju obveščena? Ali mora potem posameznik\r\n> sam spremljat to ali je dobil odgovor na svoj komentar?\r\n> Ker potem, če je komentarjev veliko, je to kar izguba\r\n> časa, da najde pravi odgovor...\r\n> \r\n> lp', 22, 19, 21, '2012-01-27 10:12:46', '2012-01-28 20:06:49', NULL, NULL, NULL, 0, NULL, NULL),
(24, '', 'Jaz ti lahko podarim očala :)\r\n\r\nImam veliko starih očal s hudo deobtrijo. :)', 22, 20, NULL, '2012-01-27 10:16:53', NULL, NULL, NULL, NULL, 1, 12, NULL),
(25, '', 'aadam je napisal:\r\n> Zofija je napisal:\r\n> > Pozdrav!\r\n> > \r\n> > Lahko pomagam. Kdaj rabiš pomoč?\r\n> \r\n> Ah, skozi, zlasti pa danes ob 18.\r\n\r\nTo ne bo šlo, lahko pa se dogovorimo za kak drugi termin.', 16, 20, 18, '2012-01-27 13:04:43', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(26, '', 'Računalnik ne kaže znakov življenja...', 16, 16, NULL, '2012-01-27 13:06:08', NULL, NULL, NULL, NULL, 1, 2, NULL),
(27, '', 'Aleksandra je napisal:\r\n> Oj!\r\n> \r\n> Dogovorjeno.\r\n> Moja tel št xxxx\r\n> \r\n> \r\n\r\n\r\nSe slišimo...dogovor velja..LP', 15, 22, 22, '2012-01-27 13:50:30', '2012-01-30 11:51:11', '2012-01-30 11:54:21', NULL, NULL, 0, NULL, NULL),
(28, '', 'Hey!\r\n\r\nNe vem, če si opazil, da sem komentirala eno izmed tvojih ponudb... (to sva že z Aleksandro ugotovili, da ne dobiš obvestila o komentarjih, dobiš pa ga za privatna sporočila). Sem ti eno uro za poskušnjo nakazala. Si dobil kako sporočilo glede tega?\r\n\r\nLp,\r\nAnja\r\n', 19, 20, NULL, '2012-01-28 20:06:26', '2012-02-01 14:51:34', NULL, NULL, NULL, 0, NULL, NULL),
(29, '', 'Hey!\r\n\r\nNe vem, če si opazil, da sem komentirala eno izmed tvojih ponudb... (to sva že z Aleksandro ugotovili, da ne dobiš obvestila o komentarjih, dobiš pa ga za privatna sporočila). Sem ti eno uro za poskušnjo nakazala. Si dobil kako sporočilo glede tega?\r\n\r\nLp,\r\nAnja\r\n', 19, 20, NULL, '2012-01-28 20:06:33', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(30, '', '\r\n\r\n\r\nPozdrav!\r\n\r\nNo tvoj vrt je zrihtan. Če si z delom zadovoljen prosim izvrši dogovorjeno transakcijo ur.\r\n\r\nKot sva se dogovorila 1h je dovolj za opravljeno delo.\r\n\r\nLp, Aleksandra\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nRezija je napisal:\r\n> Aleksandra je napisal:\r\n> > Oj!\r\n> > \r\n> > Dogovorjeno.\r\n> > Moja tel št xxxx\r\n> > \r\n> > \r\n> \r\n> \r\n> Se slišimo...dogovor velja..LP', 22, 15, 27, '2012-01-30 11:54:21', '2012-01-30 14:08:32', '2012-01-30 14:13:23', NULL, NULL, 0, NULL, NULL),
(31, '', 'V sredo med 18h in 20h bi potrebovala varstvo za svojega 5 letnega sina. V kloikor ste za mi pišite ali pokličite na xxx.', 22, 19, NULL, '2012-01-30 12:00:25', '2012-01-30 12:02:18', '2012-01-30 12:03:07', NULL, NULL, 0, NULL, NULL),
(32, '', 'Aleksandra je napisal:\r\n> V sredo med 18h in 20h bi potrebovala varstvo za\r\n> svojega 5 letnega sina. V kloikor ste za mi pišite ali\r\n> pokličite na xxx.\r\n\r\nPozdravljeni!\r\n\r\nTa teden ne morem, imam izpit v četrtek in se učim! Z veseljem kdaj drugič!:)\r\n\r\nLp,\r\nAnja', 19, 22, 31, '2012-01-30 12:03:07', '2012-01-31 09:19:34', NULL, NULL, NULL, 0, NULL, NULL),
(33, '', 'Lahko mi jih poskušaš nakazat! Jaz sem jih že Andreju, pa nobenega odziva z njegove strani!:) Ko mi jih nakažeš jih moram jaz menda potrdit in nato ti še enkrat potrdit...', 19, 22, NULL, '2012-01-30 12:05:23', NULL, NULL, NULL, NULL, 1, 13, NULL),
(34, '', 'Ojla!\r\n\r\nSi dobil kako sporočilo o tem, da sem ti eno uro nakazala? Da vidimo, če deluje zadeva!:) Ti moraš nakazilo sprejet (potrdit) in nato jaz še nekrat potrdit...\r\n\r\nlp', 19, 20, NULL, '2012-01-30 12:06:46', '2012-01-30 14:40:11', '2012-02-01 14:49:24', NULL, NULL, 0, NULL, NULL),
(35, '', 'Hi\r\n\r\nUre lahko tudi podariš. Uporabiš Neposreden prenos..', 16, 22, NULL, '2012-01-30 14:07:51', '2012-01-31 09:20:30', NULL, NULL, NULL, 0, NULL, NULL),
(36, '', 'Aleksandra je napisal:\r\n> \r\n> \r\n> \r\n> Pozdrav!\r\n> \r\n> No tvoj vrt je zrihtan. Če si z delom zadovoljen prosim\r\n> izvrši dogovorjeno transakcijo ur.\r\n> \r\n> Kot sva se dogovorila 1h je dovolj za opravljeno delo.\r\n> \r\n> Lp, Aleksandra\r\n> \r\n> \r\n> \r\n\r\n\r\nHi\r\n\r\nKer si tako dobro uredila zadevo, ti bom dal dve :)', 15, 22, 30, '2012-01-30 14:09:22', '2012-01-31 09:21:13', NULL, NULL, NULL, 0, NULL, NULL),
(37, '', 'Hi\r\n\r\nTransakcijo moraš zahtevati preko storitve, ki si jo opravila. Sicer ti lahko nakažem tudi preko neposrednega prenosa, vendar se ne bo dalo ugotoviti za katero delo je bil prenos opravljen. Hvala in LP', 15, 22, 30, '2012-01-30 14:13:23', '2012-01-31 09:21:54', NULL, NULL, NULL, 0, NULL, NULL),
(39, '', 'Heeey!\r\n\r\nVerjetno nisi videla komentarja pod eno izmed tvojih objav. Če želiš, lahko meni za poskušino nakažeš kakšno uro. Ti jih potem vrnem!:)\r\n\r\nLP,\r\nAnja', 19, 19, NULL, '2012-01-30 21:33:43', '2012-01-30 21:35:32', NULL, NULL, NULL, 0, NULL, NULL),
(40, '', '\r\nHeeey!\r\n\r\nVerjetno nisi videla komentarja pod eno izmed tvojih objav. Če želiš, lahko meni za poskušino nakažeš kakšno uro. Ti jih potem vrnem!:)\r\n\r\nLP,\r\nAnja', 19, 22, NULL, '2012-01-30 21:35:27', '2012-01-31 09:22:37', NULL, NULL, NULL, 0, NULL, NULL),
(41, '', 'Hvala za dobro opravljeno delo! LP', 15, 22, NULL, '2012-01-31 13:03:32', '2012-01-31 13:18:41', NULL, NULL, NULL, 0, NULL, NULL),
(42, '', 'Pozdrav!\r\n\r\nObveščam vas, da še nisem prejela vaših ur.\r\nProsim, če mi jih lahko nakažete čim prej.\r\n\r\nLp', 22, 15, NULL, '2012-02-01 10:48:49', '2012-02-01 11:44:42', NULL, NULL, NULL, 0, NULL, NULL),
(43, '', 'Hvala za prenos ur.\r\n\r\nLp', 22, 15, NULL, '2012-02-01 12:33:28', '2012-02-03 14:53:23', NULL, NULL, NULL, 0, NULL, NULL),
(44, '', 'Ja sem dobil, sedaj imam 11 ur. Jutri ob 17 bova to tudi izpeljala, če še velja. \r\nlp\r\n\r\nanjat je napisal:\r\n> Ojla!\r\n> \r\n> Si dobil kako sporočilo o tem, da sem ti eno uro\r\n> nakazala? Da vidimo, če deluje zadeva!:) Ti moraš\r\n> nakazilo sprejet (potrdit) in nato jaz še nekrat\r\n> potrdit...\r\n> \r\n> lp', 20, 19, 34, '2012-02-01 14:49:24', '2012-02-01 17:53:38', '2012-02-01 17:56:09', NULL, NULL, 0, NULL, NULL),
(45, '', 'Pravzaprav sem dobil uro za odganjanje mačk, ne pa za urico filozofije. Tako da mi ni čisto jasno. ', 20, 19, NULL, '2012-02-01 14:51:23', '2012-02-01 17:52:39', '2012-02-01 17:53:29', NULL, NULL, 0, NULL, NULL),
(46, '', 'aadam je napisal:\r\n> Pravzaprav sem dobil uro za odganjanje mačk, ne pa za\r\n> urico filozofije. Tako da mi ni čisto jasno. \r\n\r\nhaha, a res? Od cesa pa je potem to odvisno, kam ti jih beleži? Mogoče, ker sem enkrat komentirala pod tvojo objavo?', 19, 20, 45, '2012-02-01 17:53:29', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(47, '', 'aadam je napisal:\r\n> Ja sem dobil, sedaj imam 11 ur. Jutri ob 17 bova to\r\n> tudi izpeljala, če še velja. \r\n> lp\r\n> \r\n> anjat je napisal:\r\n> > Ojla!\r\n> > \r\n> > Si dobil kako sporočilo o tem, da sem ti eno uro\r\n> > nakazala? Da vidimo, če deluje zadeva!:) Ti moraš\r\n> > nakazilo sprejet (potrdit) in nato jaz še nekrat\r\n> > potrdit...\r\n> > \r\nJa, še velja!:) Upam, sicer, da se ne bom jutri sesedla od utrujenosti...\r\n> > lp', 19, 20, 44, '2012-02-01 17:56:09', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(48, '', 'sem že nakazala...:)', 19, 15, NULL, '2012-02-03 13:07:49', '2012-02-03 14:53:32', '2012-02-03 14:57:04', NULL, NULL, 0, NULL, NULL),
(49, 'Neizvršeno nakazilo', 'Pozdrav!\r\n\r\nHvala za obvestilo. Po pregledu stanja na vašem računu ugotavljamo, da ste 01/02/2012, 12:01 Uporabniku Rezija nakazali 1 uro za opravljeno storitev, ki je uporabnik še ni potrdil. Uporabnik ima 72 ur časa, da se odzove, če se v tem času ne odzive, bo za transfer poskrbela administracija. V primeru, da pride do tega, vas bomo pred izvršitvijo operacije še enkrat kontaktirali.\r\n01/02/2012, 17:57 ste istemu uporabniku nakazali 1 uro preko neposrednega prenosa, pri čemer niste dovolj jasno določili namena tega nakazila. V kolikor gre za nakazilo za isto storitev, ki še čaka na potrditev uporabnika, neposredno nakazilo prekličite. Sicer počakajte, da se uporabnik odzove na vašo zahtevo...\r\n\r\nHvala in LP\r\n', 1, 19, NULL, '2012-02-03 14:41:30', '2012-02-04 20:46:52', '2012-02-04 20:51:21', NULL, NULL, 0, NULL, NULL),
(50, '', 'anjat je napisal:\r\n> sem že nakazala...:)\r\n\r\nImam majhen problem. Pred dvema dnevoma sem zahteval 1 uro, ki je (še) nisi potrdila. Danes si mi pa preko neposrednega prenosa nakazala uro za isto storitev (predvidevam). Predlagam, da potrdiš mojo čakajočo zahtevo pod Prenosi, neposreden prenos pa bom po tem zavrnil. Hvala in LP ', 15, 19, 48, '2012-02-03 14:57:04', '2012-02-04 20:48:07', NULL, NULL, NULL, 0, NULL, NULL),
(51, '', '\r\nhm... nekoliko izgubljena! Sem torej pomotoma nakazilo izvedla dvakrat?\r\n\r\nLp,\r\nAnja\r\n\r\nadmin je napisal:\r\n> Pozdrav!\r\n> \r\n> Hvala za obvestilo. Po pregledu stanja na vašem računu\r\n> ugotavljamo, da ste 01/02/2012, 12:01 Uporabniku Rezija\r\n> nakazali 1 uro za opravljeno storitev, ki je uporabnik\r\n> še ni potrdil. Uporabnik ima 72 ur časa, da se odzove,\r\n> če se v tem času ne odzive, bo za transfer poskrbela\r\n> administracija. V primeru, da pride do tega, vas bomo\r\n> pred izvršitvijo operacije še enkrat kontaktirali.\r\n> 01/02/2012, 17:57 ste istemu uporabniku nakazali 1 uro\r\n> preko neposrednega prenosa, pri čemer niste dovolj\r\n> jasno določili namena tega nakazila. V kolikor gre za\r\n> nakazilo za isto storitev, ki še čaka na potrditev\r\n> uporabnika, neposredno nakazilo prekličite. Sicer\r\n> počakajte, da se uporabnik odzove na vašo zahtevo...\r\n> \r\n> Hvala in LP\r\n> ', 19, 1, 49, '2012-02-04 20:51:21', '2012-02-06 21:22:22', '2012-02-06 21:26:27', NULL, NULL, 0, NULL, NULL),
(52, '', 'Sem preklical neposredni prenos, ker sva prenos uredila že preko oglasa. Je tako v redu? LP', 15, 19, NULL, '2012-02-06 21:21:54', '2012-02-13 22:40:43', NULL, NULL, NULL, 0, NULL, NULL),
(53, '', 'anjat je napisal:\r\n> \r\n> hm... nekoliko izgubljena! Sem torej pomotoma nakazilo\r\n> izvedla dvakrat?\r\n> \r\n\r\n\r\nHi\r\n\r\nNe, eno plačilo sem preko oglasa za opravljeno storitev zahteval jaz, ti pa si ga pod Prenosi očitno spregledala (zdaj si zadevo ustrezno potrdila in prenos je bil pravilno izvršen). Ti si mi pa mimo tega želela nakazati uro preko neposrednega prenosa, ki pa sem ga (zdaj) zavrnil. Si pa nakazala na problem, ki bo, se bojim, kar pogost. Hvala in LP\r\n  ', 1, 19, 51, '2012-02-06 21:26:27', '2012-02-13 22:40:56', NULL, NULL, NULL, 0, NULL, NULL),
(54, '', 'Ojla!\r\n\r\nČakam, čakam na tvoj oglas. ', 22, 23, NULL, '2012-02-07 10:35:41', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(55, '', 'Ojla!\r\n\r\n\r\nJaz ti lahko uredim finace. Sporoči kdaj in kje.', 22, 23, NULL, '2012-02-07 13:24:01', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(56, 'Novo geslo', 'Hi\r\n\r\nTvoje novo geslo je:\r\n\r\nogenj\r\n\r\n..prosim javi, če dobiš in če zadeva deluje. Hvala in LP', 1, 21, NULL, '2012-02-07 13:29:14', '2012-02-21 17:18:57', '2012-02-21 17:19:23', NULL, NULL, 0, NULL, NULL),
(57, '', 'Hi!\r\n(Domnevam, da je Zofija = Robi)\r\nNa emajlu sem dobil obvestilo, da se na ČB v zvezi z mano nekaj dogaja. Dana sta bila 2 linka, ki pa nista delovala.\r\nPrijavil sem na to stran in glej ga zlomka: nkomu (tebi) sem kidal sneg. (Upam, da boš zaradi tega mojega truda jutri lahko prispel v MB).\r\nPotem sem kliknil na "transfer accepted", pa se ni zgodilo nič.\r\n\r\nlp\r\nBranko', 23, 16, NULL, '2012-02-08 19:29:05', '2012-02-10 14:56:32', '2012-02-10 14:57:32', NULL, NULL, 0, NULL, NULL),
(58, '', 'brankogerlic je napisal:\r\n> Hi!\r\n> (Domnevam, da je Zofija = Robi)\r\n> Na emajlu sem dobil obvestilo, da se na ČB v zvezi z\r\n> mano nekaj dogaja. Dana sta bila 2 linka, ki pa nista\r\n> delovala.\r\n> Prijavil sem na to stran in glej ga zlomka: nkomu\r\n> (tebi) sem kidal sneg. (Upam, da boš zaradi tega mojega\r\n> truda jutri lahko prispel v MB).\r\n> Potem sem kliknil na "transfer accepted", pa se ni\r\n> zgodilo nič.\r\n\r\n\r\nZgodilo se bo takoj, ko bom potrdil transfer. Hvala za pomoč :)..LP\r\n> lp\r\n> Branko', 16, 23, 57, '2012-02-10 14:57:32', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(59, 'Potrdite nakazilo', 'V rubriki Prenosi na vaše potrdilo čaka nakazilo uporabnice Anja. Prismo potrdite, sicer bomo to namesto vas naredili mi. LP', 1, 20, NULL, '2012-02-13 18:35:48', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(60, '', 'Ojla!\r\n\r\nNisi še potrdil nakazane ure... \r\n\r\nLp,\r\nAnaj', 19, 20, NULL, '2012-02-13 22:42:51', '2012-02-13 22:52:44', '2012-02-13 23:00:15', NULL, NULL, 0, NULL, NULL),
(61, '', 'Madona, to se je 100 let nalagalo. Sem ti medtem že napisal na mail. \r\nlp, \r\nA. \r\n\r\nanjat je napisal:\r\n> Ojla!\r\n> \r\n> Nisi še potrdil nakazane ure... \r\n> \r\n> Lp,\r\n> Anaj', 20, 19, 60, '2012-02-13 23:00:15', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(62, '', '\r\nDeluje, prišel noter.\r\n\r\nlp\r\nSamo\r\n\r\nadmin je napisal:\r\n> Hi\r\n> \r\n> Tvoje novo geslo je:\r\n> \r\n> ogenj\r\n> \r\n> ..prosim javi, če dobiš in če zadeva deluje. Hvala in\r\n> LP', 21, 1, 56, '2012-02-21 17:19:23', '2012-02-22 14:25:56', NULL, NULL, NULL, 0, NULL, NULL),
(63, '', 'Hi\r\n\r\nJaz sem zelo bolana, drži. Me lahko pozdraviš? Koliko ur boš zahteval? Hvala in LP ', 16, 21, NULL, '2012-02-21 20:52:31', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(64, '', 'Pozdrav Jožetu! Lepo, da si na naši strani! LP', 16, 25, NULL, '2012-02-21 20:54:16', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(65, '', 'Kako pa veš, da sem bolana?', 16, 21, NULL, '2012-02-21 20:56:01', NULL, NULL, NULL, NULL, 1, 16, NULL),
(66, '', 'Aleksandra, zdravo. Žal imamo doma želvo, zajca ne. Bi to kaj pomagalo?', 25, 22, NULL, '2012-02-28 19:44:18', '2012-03-01 11:24:33', '2012-03-01 11:30:26', NULL, NULL, 0, NULL, NULL),
(67, '', 'Branko, imaš v misliš urejanje mojih ali tvojih financ?', 25, 23, NULL, '2012-02-28 20:15:35', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(68, '', 'Andrej, priporočam ti ogled spletne strani:\r\n\r\nhttp://www.pozitivke.net/article.php/Dober-Vid-Ocala-Naravna-Pot-Leo-Angart\r\n\r\nPozdrav!\r\n\r\nJože', 25, 20, NULL, '2012-02-28 20:18:26', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(69, '', 'Pozdravljen!\r\n\r\nŽal je želvica prepočasno in premirno bitje za mojega živahnega zajčka. Dvomim, da bi se ujela. :)\r\n\r\nVseeno hvala za ponudbo.\r\n\r\nLp,\r\nAleksandra', 22, 25, 66, '2012-03-01 11:30:26', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabele `news_new`
--

CREATE TABLE IF NOT EXISTS `news_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8_slovenian_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_modified_date` datetime NOT NULL,
  `publish_date` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `body` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_new_337b96ff` (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `news_new`
--


-- --------------------------------------------------------

--
-- Struktura tabele `notification_notice`
--

CREATE TABLE IF NOT EXISTS `notification_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `notice_type_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `unseen` tinyint(1) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  `on_site` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_notice_403f60f` (`user_id`),
  KEY `notification_notice_d734034` (`notice_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=108 ;

--
-- Odloži podatke za tabelo `notification_notice`
--

INSERT INTO `notification_notice` (`id`, `user_id`, `message`, `notice_type_id`, `added`, `unseen`, `archived`, `on_site`) VALUES
(1, 15, ' \nPoslali ste sporočilo <a href="/messages/view/2/"></a> k Zofija.\n', 2, '2012-01-16 13:36:40', 1, 0, 1),
(2, 16, '\nPrejeli ste sporočilo <a href="/messages/view/2/"></a> de Rezija.\n', 1, '2012-01-16 13:36:40', 1, 0, 1),
(3, 16, '\nOdgovorili ste na <a href="/messages/view/2/"></a> od Rezija.\n', 3, '2012-01-16 13:38:50', 1, 0, 1),
(4, 15, '\nZofija vam je poslal odgovor na .\n', 4, '2012-01-16 13:38:50', 1, 0, 1),
(5, 16, ' \nPoslali ste sporočilo <a href="/messages/view/4/"></a> k Rezija.\n', 2, '2012-01-16 13:41:19', 1, 0, 1),
(6, 15, '\nPrejeli ste sporočilo <a href="/messages/view/4/"></a> de Zofija.\n', 1, '2012-01-16 13:41:19', 1, 0, 1),
(7, 15, '\nOdgovorili ste na <a href="/messages/view/3/"></a> od Zofija.\n', 3, '2012-01-16 13:43:08', 1, 0, 1),
(8, 16, '\nRezija vam je poslal odgovor na .\n', 4, '2012-01-16 13:43:08', 1, 0, 1),
(9, 15, '\nOdgovorili ste na <a href="/messages/view/4/"></a> od Zofija.\n', 3, '2012-01-16 13:44:19', 1, 0, 1),
(10, 16, '\nRezija vam je poslal odgovor na .\n', 4, '2012-01-16 13:44:19', 1, 0, 1),
(11, 18, ' \nPoslali ste sporočilo <a href="/messages/view/8/"></a> k miaerbus.\n', 2, '2012-01-18 15:03:56', 1, 0, 1),
(12, 2, '\nPrejeli ste sporočilo <a href="/messages/view/8/"></a> de alterego.\n', 1, '2012-01-18 15:03:56', 1, 0, 1),
(13, 20, ' \nPoslali ste sporočilo <a href="/messages/view/9/"></a> k anjat.\n', 2, '2012-01-23 22:52:22', 1, 0, 1),
(14, 19, '\nPrejeli ste sporočilo <a href="/messages/view/9/"></a> de aadam.\n', 1, '2012-01-23 22:52:22', 1, 0, 1),
(15, 19, '\nOdgovorili ste na <a href="/messages/view/9/"></a> od aadam.\n', 3, '2012-01-24 09:14:39', 1, 0, 1),
(16, 20, '\nanjat vam je poslal odgovor na .\n', 4, '2012-01-24 09:14:39', 1, 0, 1),
(17, 22, ' \nPoslali ste sporočilo <a href="/messages/view/13/"></a> k Rezija.\n', 2, '2012-01-24 12:04:46', 1, 0, 1),
(18, 15, '\nPrejeli ste sporočilo <a href="/messages/view/13/"></a> de Aleksandra.\n', 1, '2012-01-24 12:04:46', 1, 0, 1),
(19, 15, '\nOdgovorili ste na <a href="/messages/view/13/"></a> od Aleksandra.\n', 3, '2012-01-25 12:19:00', 1, 0, 1),
(20, 22, '\nRezija vam je poslal odgovor na .\n', 4, '2012-01-25 12:19:00', 1, 0, 1),
(21, 16, ' \nPoslali ste sporočilo <a href="/messages/view/17/"></a> k aadam.\n', 2, '2012-01-26 14:20:36', 1, 0, 1),
(22, 20, '\nPrejeli ste sporočilo <a href="/messages/view/17/"></a> de Zofija.\n', 1, '2012-01-26 14:20:36', 1, 0, 1),
(23, 20, '\nOdgovorili ste na <a href="/messages/view/17/"></a> od Zofija.\n', 3, '2012-01-26 16:14:23', 1, 0, 1),
(24, 16, '\naadam vam je poslal odgovor na .\n', 4, '2012-01-26 16:14:23', 1, 0, 1),
(25, 19, ' \nPoslali ste sporočilo <a href="/messages/view/21/"></a> k Aleksandra.\n', 2, '2012-01-26 22:54:48', 1, 0, 1),
(26, 22, '\nPrejeli ste sporočilo <a href="/messages/view/21/"></a> de anjat.\n', 1, '2012-01-26 22:54:49', 1, 0, 1),
(27, 22, '\nOdgovorili ste na <a href="/messages/view/16/"></a> od Rezija.\n', 3, '2012-01-27 10:08:15', 1, 0, 1),
(28, 15, '\nAleksandra vam je poslal odgovor na .\n', 4, '2012-01-27 10:08:15', 1, 0, 1),
(29, 22, '\nOdgovorili ste na <a href="/messages/view/21/"></a> od anjat.\n', 3, '2012-01-27 10:12:46', 1, 0, 1),
(30, 19, '\nAleksandra vam je poslal odgovor na .\n', 4, '2012-01-27 10:12:46', 1, 0, 1),
(31, 16, '\nOdgovorili ste na <a href="/messages/view/18/"></a> od aadam.\n', 3, '2012-01-27 13:04:43', 1, 0, 1),
(32, 20, '\nZofija vam je poslal odgovor na .\n', 4, '2012-01-27 13:04:43', 1, 0, 1),
(33, 15, '\nOdgovorili ste na <a href="/messages/view/22/"></a> od Aleksandra.\n', 3, '2012-01-27 13:50:30', 1, 0, 1),
(34, 22, '\nRezija vam je poslal odgovor na .\n', 4, '2012-01-27 13:50:30', 1, 0, 1),
(35, 19, ' \nPoslali ste sporočilo <a href="/messages/view/28/"></a> k aadam.\n', 2, '2012-01-28 20:06:26', 1, 0, 1),
(36, 20, '\nPrejeli ste sporočilo <a href="/messages/view/28/"></a> de anjat.\n', 1, '2012-01-28 20:06:26', 1, 0, 1),
(37, 19, ' \nPoslali ste sporočilo <a href="/messages/view/29/"></a> k aadam.\n', 2, '2012-01-28 20:06:34', 1, 0, 1),
(38, 20, '\nPrejeli ste sporočilo <a href="/messages/view/29/"></a> de anjat.\n', 1, '2012-01-28 20:06:34', 1, 0, 1),
(39, 22, '\nOdgovorili ste na <a href="/messages/view/27/"></a> od Rezija.\n', 3, '2012-01-30 11:54:21', 1, 0, 1),
(40, 15, '\nAleksandra vam je poslal odgovor na .\n', 4, '2012-01-30 11:54:21', 1, 0, 1),
(41, 22, ' \nPoslali ste sporočilo <a href="/messages/view/31/"></a> k anjat.\n', 2, '2012-01-30 12:00:26', 1, 0, 1),
(42, 19, '\nPrejeli ste sporočilo <a href="/messages/view/31/"></a> de Aleksandra.\n', 1, '2012-01-30 12:00:26', 1, 0, 1),
(43, 19, '\nOdgovorili ste na <a href="/messages/view/31/"></a> od Aleksandra.\n', 3, '2012-01-30 12:03:07', 1, 0, 1),
(44, 22, '\nanjat vam je poslal odgovor na .\n', 4, '2012-01-30 12:03:07', 1, 0, 1),
(45, 19, ' \nPoslali ste sporočilo <a href="/messages/view/34/"></a> k aadam.\n', 2, '2012-01-30 12:06:46', 1, 0, 1),
(46, 20, '\nPrejeli ste sporočilo <a href="/messages/view/34/"></a> de anjat.\n', 1, '2012-01-30 12:06:46', 1, 0, 1),
(47, 16, ' \nPoslali ste sporočilo <a href="/messages/view/35/"></a> k Aleksandra.\n', 2, '2012-01-30 14:07:51', 1, 0, 1),
(48, 22, '\nPrejeli ste sporočilo <a href="/messages/view/35/"></a> de Zofija.\n', 1, '2012-01-30 14:07:51', 1, 0, 1),
(49, 15, '\nOdgovorili ste na <a href="/messages/view/30/"></a> od Aleksandra.\n', 3, '2012-01-30 14:09:22', 1, 0, 1),
(50, 22, '\nRezija vam je poslal odgovor na .\n', 4, '2012-01-30 14:09:22', 1, 0, 1),
(51, 15, '\nOdgovorili ste na <a href="/messages/view/30/"></a> od Aleksandra.\n', 3, '2012-01-30 14:13:23', 1, 0, 1),
(52, 22, '\nRezija vam je poslal odgovor na .\n', 4, '2012-01-30 14:13:23', 1, 0, 1),
(53, 19, ' \nPoslali ste sporočilo <a href="/messages/view/39/"></a> k anjat.\n', 2, '2012-01-30 21:33:43', 1, 0, 1),
(54, 19, '\nPrejeli ste sporočilo <a href="/messages/view/39/"></a> de anjat.\n', 1, '2012-01-30 21:33:43', 1, 0, 1),
(55, 19, ' \nPoslali ste sporočilo <a href="/messages/view/40/"></a> k Aleksandra.\n', 2, '2012-01-30 21:35:27', 1, 0, 1),
(56, 22, '\nPrejeli ste sporočilo <a href="/messages/view/40/"></a> de anjat.\n', 1, '2012-01-30 21:35:27', 1, 0, 1),
(57, 15, ' \nPoslali ste sporočilo <a href="/messages/view/41/"></a> k Aleksandra.\n', 2, '2012-01-31 13:03:32', 1, 0, 1),
(58, 22, '\nPrejeli ste sporočilo <a href="/messages/view/41/"></a> de Rezija.\n', 1, '2012-01-31 13:03:32', 1, 0, 1),
(59, 22, ' \nPoslali ste sporočilo <a href="/messages/view/42/"></a> k Rezija.\n', 2, '2012-02-01 10:48:50', 1, 0, 1),
(60, 15, '\nPrejeli ste sporočilo <a href="/messages/view/42/"></a> de Aleksandra.\n', 1, '2012-02-01 10:48:50', 1, 0, 1),
(61, 22, ' \nPoslali ste sporočilo <a href="/messages/view/43/"></a> k Rezija.\n', 2, '2012-02-01 12:33:28', 1, 0, 1),
(62, 15, '\nPrejeli ste sporočilo <a href="/messages/view/43/"></a> de Aleksandra.\n', 1, '2012-02-01 12:33:28', 1, 0, 1),
(63, 20, '\nOdgovorili ste na <a href="/messages/view/34/"></a> od anjat.\n', 3, '2012-02-01 14:49:25', 1, 0, 1),
(64, 19, '\naadam vam je poslal odgovor na .\n', 4, '2012-02-01 14:49:25', 1, 0, 1),
(65, 20, ' \nPoslali ste sporočilo <a href="/messages/view/45/"></a> k anjat.\n', 2, '2012-02-01 14:51:23', 1, 0, 1),
(66, 19, '\nPrejeli ste sporočilo <a href="/messages/view/45/"></a> de aadam.\n', 1, '2012-02-01 14:51:23', 1, 0, 1),
(67, 19, '\nOdgovorili ste na <a href="/messages/view/45/"></a> od aadam.\n', 3, '2012-02-01 17:53:29', 1, 0, 1),
(68, 20, '\nanjat vam je poslal odgovor na .\n', 4, '2012-02-01 17:53:29', 1, 0, 1),
(69, 19, '\nOdgovorili ste na <a href="/messages/view/44/"></a> od aadam.\n', 3, '2012-02-01 17:56:09', 1, 0, 1),
(70, 20, '\nanjat vam je poslal odgovor na .\n', 4, '2012-02-01 17:56:09', 1, 0, 1),
(71, 19, ' \nPoslali ste sporočilo <a href="/messages/view/48/"></a> k Rezija.\n', 2, '2012-02-03 13:07:54', 1, 0, 1),
(72, 15, '\nPrejeli ste sporočilo <a href="/messages/view/48/"></a> de anjat.\n', 1, '2012-02-03 13:07:54', 1, 0, 1),
(73, 1, ' \nPoslali ste sporočilo <a href="/messages/view/49/">Neizvršeno nakazilo</a> k anjat.\n', 2, '2012-02-03 14:41:30', 1, 0, 1),
(74, 15, '\nOdgovorili ste na <a href="/messages/view/48/"></a> od anjat.\n', 3, '2012-02-03 14:57:05', 1, 0, 1),
(75, 19, '\nRezija vam je poslal odgovor na .\n', 4, '2012-02-03 14:57:05', 1, 0, 1),
(76, 19, '\nOdgovorili ste na <a href="/messages/view/49/">Neizvršeno nakazilo</a> od admin.\n', 3, '2012-02-04 20:51:22', 1, 0, 1),
(77, 1, '\nanjat vam je poslal odgovor na Neizvršeno nakazilo.\n', 4, '2012-02-04 20:51:22', 1, 0, 1),
(78, 15, ' \nPoslali ste sporočilo <a href="/messages/view/52/"></a> k anjat.\n', 2, '2012-02-06 21:21:55', 1, 0, 1),
(79, 19, '\nPrejeli ste sporočilo <a href="/messages/view/52/"></a> de Rezija.\n', 1, '2012-02-06 21:21:56', 1, 0, 1),
(80, 1, '\nOdgovorili ste na <a href="/messages/view/51/"></a> od anjat.\n', 3, '2012-02-06 21:26:27', 1, 0, 1),
(81, 19, '\nadmin vam je poslal odgovor na .\n', 4, '2012-02-06 21:26:27', 1, 0, 1),
(82, 22, ' \nPoslali ste sporočilo <a href="/messages/view/54/"></a> k brankogerlic.\n', 2, '2012-02-07 10:35:41', 1, 0, 1),
(83, 23, '\nPrejeli ste sporočilo <a href="/messages/view/54/"></a> de Aleksandra.\n', 1, '2012-02-07 10:35:41', 1, 0, 1),
(84, 22, ' \nPoslali ste sporočilo <a href="/messages/view/55/"></a> k brankogerlic.\n', 2, '2012-02-07 13:24:01', 1, 0, 1),
(85, 23, '\nPrejeli ste sporočilo <a href="/messages/view/55/"></a> de Aleksandra.\n', 1, '2012-02-07 13:24:01', 1, 0, 1),
(86, 1, ' \nPoslali ste sporočilo <a href="/messages/view/56/">Novo geslo</a> k Prometej.\n', 2, '2012-02-07 13:29:14', 1, 0, 1),
(87, 23, ' \nYou have sent the message <a href="/messages/view/57/"></a> to Zofija.\n', 2, '2012-02-08 19:29:05', 1, 0, 1),
(88, 16, '\nYou have received the message <a href="/messages/view/57/"></a> from brankogerlic.\n', 1, '2012-02-08 19:29:05', 1, 0, 1),
(89, 16, '\nOdgovorili ste na <a href="/messages/view/57/"></a> od brankogerlic.\n', 3, '2012-02-10 14:57:32', 1, 0, 1),
(90, 23, '\nZofija vam je poslal odgovor na .\n', 4, '2012-02-10 14:57:33', 1, 0, 1),
(91, 1, ' \nPoslali ste sporočilo <a href="/messages/view/59/">Potrdite nakazilo</a> k aadam.\n', 2, '2012-02-13 18:35:48', 1, 0, 1),
(92, 19, ' \nPoslali ste sporočilo <a href="/messages/view/60/"></a> k aadam.\n', 2, '2012-02-13 22:42:52', 1, 0, 1),
(93, 20, '\nPrejeli ste sporočilo <a href="/messages/view/60/"></a> de anjat.\n', 1, '2012-02-13 22:42:52', 1, 0, 1),
(94, 20, '\nOdgovorili ste na <a href="/messages/view/60/"></a> od anjat.\n', 3, '2012-02-13 23:00:16', 1, 0, 1),
(95, 19, '\naadam vam je poslal odgovor na .\n', 4, '2012-02-13 23:00:16', 1, 0, 1),
(96, 21, '\nOdgovorili ste na <a href="/messages/view/56/">Novo geslo</a> od admin.\n', 3, '2012-02-21 17:19:24', 1, 0, 1),
(97, 1, '\nPrometej vam je poslal odgovor na Novo geslo.\n', 4, '2012-02-21 17:19:24', 1, 0, 1),
(98, 16, ' \nPoslali ste sporočilo <a href="/messages/view/63/"></a> k Prometej.\n', 2, '2012-02-21 20:52:31', 1, 0, 1),
(99, 21, '\nPrejeli ste sporočilo <a href="/messages/view/63/"></a> de Zofija.\n', 1, '2012-02-21 20:52:31', 1, 0, 1),
(100, 25, ' \nPoslali ste sporočilo <a href="/messages/view/66/"></a> k Aleksandra.\n', 2, '2012-02-28 19:44:18', 1, 0, 1),
(101, 22, '\nPrejeli ste sporočilo <a href="/messages/view/66/"></a> de JKG.\n', 1, '2012-02-28 19:44:18', 1, 0, 1),
(102, 25, ' \nPoslali ste sporočilo <a href="/messages/view/67/"></a> k brankogerlic.\n', 2, '2012-02-28 20:15:35', 1, 0, 1),
(103, 23, '\nPrejeli ste sporočilo <a href="/messages/view/67/"></a> de JKG.\n', 1, '2012-02-28 20:15:35', 1, 0, 1),
(104, 25, ' \nPoslali ste sporočilo <a href="/messages/view/68/"></a> k aadam.\n', 2, '2012-02-28 20:18:26', 1, 0, 1),
(105, 20, '\nPrejeli ste sporočilo <a href="/messages/view/68/"></a> de JKG.\n', 1, '2012-02-28 20:18:26', 1, 0, 1),
(106, 22, '\nOdgovorili ste na <a href="/messages/view/66/"></a> od JKG.\n', 3, '2012-03-01 11:30:26', 1, 0, 1),
(107, 25, '\nAleksandra vam je poslal odgovor na .\n', 4, '2012-03-01 11:30:26', 1, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabele `notification_noticequeuebatch`
--

CREATE TABLE IF NOT EXISTS `notification_noticequeuebatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pickled_data` longtext COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `notification_noticequeuebatch`
--


-- --------------------------------------------------------

--
-- Struktura tabele `notification_noticesetting`
--

CREATE TABLE IF NOT EXISTS `notification_noticesetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notice_type_id` int(11) NOT NULL,
  `medium` varchar(1) COLLATE utf8_slovenian_ci NOT NULL,
  `send` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`notice_type_id`,`medium`),
  KEY `notification_noticesetting_403f60f` (`user_id`),
  KEY `notification_noticesetting_d734034` (`notice_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=33 ;

--
-- Odloži podatke za tabelo `notification_noticesetting`
--

INSERT INTO `notification_noticesetting` (`id`, `user_id`, `notice_type_id`, `medium`, `send`) VALUES
(1, 15, 2, '1', 0),
(2, 16, 1, '1', 1),
(3, 16, 3, '1', 0),
(4, 15, 4, '1', 1),
(5, 16, 2, '1', 0),
(6, 15, 1, '1', 1),
(7, 15, 3, '1', 0),
(8, 16, 4, '1', 1),
(9, 18, 2, '1', 0),
(10, 2, 1, '1', 1),
(11, 20, 2, '1', 0),
(12, 19, 1, '1', 1),
(13, 19, 3, '1', 0),
(14, 20, 4, '1', 1),
(15, 22, 2, '1', 0),
(16, 22, 4, '1', 1),
(17, 20, 1, '1', 1),
(18, 20, 3, '1', 0),
(19, 19, 2, '1', 0),
(20, 22, 1, '1', 1),
(21, 22, 3, '1', 0),
(22, 19, 4, '1', 1),
(23, 1, 2, '1', 0),
(24, 1, 4, '1', 1),
(25, 1, 3, '1', 0),
(26, 23, 1, '1', 1),
(27, 23, 2, '1', 0),
(28, 23, 4, '1', 1),
(29, 21, 3, '1', 0),
(30, 21, 1, '1', 1),
(31, 25, 2, '1', 0),
(32, 25, 4, '1', 1);

-- --------------------------------------------------------

--
-- Struktura tabele `notification_noticetype`
--

CREATE TABLE IF NOT EXISTS `notification_noticetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(40) COLLATE utf8_slovenian_ci NOT NULL,
  `display` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `default` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=7 ;

--
-- Odloži podatke za tabelo `notification_noticetype`
--

INSERT INTO `notification_noticetype` (`id`, `label`, `display`, `description`, `default`) VALUES
(1, 'messages_received', 'Message Received', 'you have received a message', 2),
(2, 'messages_sent', 'Message Sent', 'you have sent a message', 1),
(3, 'messages_replied', 'Message Replied', 'you have replied to a message', 1),
(4, 'messages_reply_received', 'Reply Received', 'you have received a reply to a message', 2),
(5, 'messages_deleted', 'Message Deleted', 'you have deleted a message', 1),
(6, 'messages_recovered', 'Message Recovered', 'you have undeleted a message', 1);

-- --------------------------------------------------------

--
-- Struktura tabele `notification_observeditem`
--

CREATE TABLE IF NOT EXISTS `notification_observeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `notice_type_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `signal` longtext COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_observeditem_403f60f` (`user_id`),
  KEY `notification_observeditem_1bb8f392` (`content_type_id`),
  KEY `notification_observeditem_d734034` (`notice_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Odloži podatke za tabelo `notification_observeditem`
--


-- --------------------------------------------------------

--
-- Struktura tabele `serv_area`
--

CREATE TABLE IF NOT EXISTS `serv_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=24 ;

--
-- Odloži podatke za tabelo `serv_area`
--

INSERT INTO `serv_area` (`id`, `name`) VALUES
(1, 'Maribor'),
(2, 'Pesnica'),
(3, 'Duplek'),
(4, 'Malečnik'),
(5, 'Ruše'),
(6, 'Limbuš'),
(7, 'Slovenska Bistrica'),
(8, 'Slovenske Konjice'),
(9, 'Šmarje pri Jelšah'),
(10, 'Lenart'),
(11, 'Ljutomer'),
(12, 'Ormož'),
(13, 'Ptuj'),
(14, 'Pragersko'),
(15, 'Poljčane'),
(16, 'Hoče'),
(17, 'Rače'),
(18, 'Kidričevo'),
(19, 'Majšperk'),
(20, 'Podlehnik'),
(21, 'Žetale'),
(22, 'Dornava'),
(23, 'Drugje');

-- --------------------------------------------------------

--
-- Struktura tabele `serv_category`
--

CREATE TABLE IF NOT EXISTS `serv_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=43 ;

--
-- Odloži podatke za tabelo `serv_category`
--

INSERT INTO `serv_category` (`id`, `name`) VALUES
(1, 'Spremstvo in pomoč pri opravkih'),
(2, 'Pomoč pri izpolnjevanju obrazcev'),
(3, 'Pisanje pisem in tipkanje'),
(4, 'Urejanje (osebnih) financ'),
(5, 'Šivanje, pletenje, vezenje, izdelava oblačil'),
(6, 'Igranje ali učenje glasbenih inštrumentov'),
(7, 'DJ-anje'),
(8, 'Film & video'),
(9, 'Prevozi'),
(10, 'Vožnja avtomobila ali kombija'),
(11, 'Čiščenje in pospravljanje'),
(12, 'Preprosta domača (p)opravila'),
(13, 'Vrtnarjenje'),
(14, 'Preprosta popravila avtov, motorjev in koles'),
(15, 'Pranje avtomobila'),
(42, 'Drugo'),
(17, 'Sodelovanje pri org. družabnih dogodkov'),
(18, 'Povezovanje družabnega dogodka'),
(19, 'Pomoč pri branju, pisanju in računanju'),
(20, 'Učenje jezikov in prevajanje'),
(21, 'Pomoč pri selitvah'),
(22, 'Pripovedovanje zgodb, glasno branje'),
(23, 'Računalniške storitve'),
(24, 'Učenje fitnesa, joge ipd.'),
(25, 'Treniranje športov'),
(26, 'Risanje in slikanje'),
(27, 'Izdelovanje lončarskih izdelkov'),
(28, 'Promocija dogodkov (deljenje letakov ipd.)'),
(29, 'Kuhanje, pranje, likanje'),
(30, 'Varstvo/spremstvo otrok'),
(31, 'Delo z mladimi'),
(32, 'Obiskovanje na dom vezanih občanov'),
(33, 'Pogovori po telefonu'),
(34, 'Sprehajanje in urjenje psov'),
(35, 'Skrb za hišne ljubljenčke'),
(36, 'Zalivanje rož'),
(37, 'Pravno svetovanje'),
(38, 'Skupno kuhanje'),
(39, 'Pomoč/podpora pri iskanju stanovanja'),
(40, 'Predstavitev študijskih smeri'),
(41, 'Pomoč pri iskanju informacij');

-- --------------------------------------------------------

--
-- Struktura tabele `serv_service`
--

CREATE TABLE IF NOT EXISTS `serv_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) NOT NULL,
  `is_offer` tinyint(1) NOT NULL DEFAULT '0',
  `pub_date` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `description` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serv_service_685aee7` (`creator_id`),
  KEY `serv_service_42dc49bc` (`category_id`),
  KEY `serv_service_202f16e9` (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=17 ;

--
-- Odloži podatke za tabelo `serv_service`
--

INSERT INTO `serv_service` (`id`, `creator_id`, `is_offer`, `pub_date`, `is_active`, `description`, `category_id`, `area_id`) VALUES
(1, 16, 1, '2012-01-23 19:24:29', 1, 'Zelo rada vrtnarim. Sem poznavalka in po svojih močeh z veseljem pomagam, če kdo potrebuje pomoč. Pridem kamorkoli, kadarkoli, najlažje ob vikendih, popoldne.', 13, NULL),
(2, 16, 0, '2012-01-26 14:19:14', 1, 'Pred dnevi se mi je pokvaril računalnik. Potrebujem popravilo. Sem iz Ptuja. Lahko kdo pomaga?\r\n\r\nSlabo se spoznam na računalnike in bi rada, da nekdo pogleda kaj se je zgodilo. Računalnik ne kaže nobenih znakov življenja.  ', 23, 13),
(3, 15, 1, '2012-01-16 13:33:06', 1, 'Delam z računalniki in pomagam vsakemu, ki kaj potrebuje na tem področju.', 23, NULL),
(4, 15, 0, '2012-01-23 19:26:23', 1, 'Slabo se spoznam na vrtnarjenje. Potreboval bi pomoč. Sem iz Kidričevega. Najraje ob vikendih.', 13, 18),
(5, 19, 0, '2012-01-23 21:38:02', 1, 'Če kdo morda obvlada SPSS, bi mi njegovo/njeno znanje prišlo prav...:)', 23, 1),
(6, 19, 1, '2012-01-23 21:47:27', 1, 'Sem študentka medicine, veseli me delo z mladimi in otroki. Če potrebujete varstvo za kakšno uro ali dve, se lahko obrnete name!', 30, 1),
(7, 22, 1, '2012-01-24 11:53:15', 1, 'Lahko vam pomagam pri urejanju okolice, čiščenju ter gospodinjiskih opravilih.', 12, NULL),
(8, 22, 1, '2012-01-24 11:58:03', 1, 'Med tednom v dopoldanskem času vam lahko pomagam pri spremstvu in nudim pomoč pri opravkuh. Imam tudi lasten prevoz.', 1, 1),
(9, 22, 0, '2012-01-24 12:01:36', 1, 'Moj zajček Žiži bi se želel vsaj enkrat tedensko družit s pripadnikom njegove vrste.\r\nZaželjena je družba zajčka - samčka, da ne bo kakega naraščaja.', 35, 1),
(10, 20, 1, '2012-01-25 09:15:07', 1, 'Za ljubitelje ptic: odganjam mačke od ptičjih hišič.', 12, NULL),
(11, 20, 0, '2012-01-25 09:17:34', 1, 'Iščem nekoga, ki bi varoval vrtne mačke pred divjimi pticami.', 12, NULL),
(12, 20, 0, '2012-01-26 16:19:39', 1, 'Ker slabo vidim, iščem specialista za oči, da bom lahko pri Zofiji pogledal, kaj se je zgodilo z njenim računalnikom.', 42, NULL),
(13, 22, 0, '2012-01-31 09:30:27', 1, 'Imam preveč ur na ČB. Iščem nekoga, ki bi mi jih pomagal zapravit. :)', 4, 1),
(14, 23, 0, '2012-02-07 13:04:06', 1, 'iščem nekoga, ki bi pomagal urediti svoje finance', 4, 1),
(15, 23, 1, '2012-02-07 13:05:28', 1, 'pripravljen sem pomagati pri kidanju snega', 11, 1),
(16, 21, 1, '2012-02-21 17:21:18', 1, 'Pripravljen sem pozdraviti cel svet, začenši z Zofijo :)', 42, 1);

-- --------------------------------------------------------

--
-- Struktura tabele `serv_transfer`
--

CREATE TABLE IF NOT EXISTS `serv_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direct_transfer_creator_id` int(11) DEFAULT NULL,
  `credits_payee_id` int(11) NOT NULL,
  `credits_debtor_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `request_date` datetime NOT NULL,
  `confirmation_date` datetime DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_slovenian_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `credits` int(10) unsigned NOT NULL,
  `rating_votes` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `serv_transfer_483d2bcb` (`direct_transfer_creator_id`),
  KEY `serv_transfer_66f81e8a` (`credits_payee_id`),
  KEY `serv_transfer_13bd3efd` (`credits_debtor_id`),
  KEY `serv_transfer_6f1d73c2` (`service_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=22 ;

--
-- Odloži podatke za tabelo `serv_transfer`
--

INSERT INTO `serv_transfer` (`id`, `direct_transfer_creator_id`, `credits_payee_id`, `credits_debtor_id`, `service_id`, `description`, `request_date`, `confirmation_date`, `status`, `is_public`, `credits`, `rating_votes`, `rating_score`) VALUES
(21, 19, 20, 19, NULL, 'urica filozofije...', '2012-02-16 22:10:44', '2012-02-13 18:28:03', 'a', 0, 60, 0, 0),
(20, NULL, 23, 16, 15, 'Recimo, da ste mi včeraj pomagali kidati sneg :) Hvala !', '2012-02-10 14:58:10', '2012-02-10 14:57:54', 'd', 0, 60, 1, 5),
(19, 19, 15, 19, NULL, 'pomoč pri računalništvu', '2012-02-06 21:20:58', NULL, 'r', 0, 60, 0, 0),
(18, NULL, 15, 19, 5, 'Recimo, da sem ti pomagal. Zahtevam 1 uro. Bo šlo? :)', '2012-02-04 20:48:58', '2012-02-04 20:48:58', 'd', 0, 60, 0, 0),
(17, NULL, 20, 16, 10, 'Podarjam ti uro, ker si mi odganjal mačke.', '2012-02-03 14:58:42', '2012-02-03 14:58:23', 'd', 0, 60, 1, 5),
(16, 22, 19, 22, NULL, 'podaritev ur', '2012-01-31 11:47:43', '2012-01-31 11:47:43', 'd', 0, 60, 0, 0),
(15, NULL, 22, 15, 4, 'Za vrtnarjenje.', '2012-02-01 12:15:45', '2012-02-01 11:45:03', 'd', 0, 120, 1, 5),
(14, 19, 20, 19, NULL, 'Urice filozofije...', '2012-01-30 21:12:34', '2012-01-30 21:12:33', 'd', 0, 60, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabele `south_migrationhistory`
--

CREATE TABLE IF NOT EXISTS `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `migration` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=12 ;

--
-- Odloži podatke za tabelo `south_migrationhistory`
--

INSERT INTO `south_migrationhistory` (`id`, `app_name`, `migration`, `applied`) VALUES
(1, 'serv', '0001_initial', '2012-01-13 21:35:48'),
(2, 'news', '0001_initial', '2012-01-13 21:35:48'),
(3, 'user', '0001_initial', '2012-01-13 21:35:48'),
(4, 'user', '0002_auto__add_field_profile_lang_code', '2012-01-13 21:35:48'),
(5, 'messages', '0001_initial', '2012-01-13 21:35:48'),
(6, 'djangoratings', '0001_initial', '2012-01-13 21:35:48'),
(7, 'djangoratings', '0002_add_mean_and_stddev', '2012-01-13 21:35:49'),
(8, 'djangoratings', '0003_add_correlations', '2012-01-13 21:35:49'),
(9, 'djangoratings', '0004_rethink_recommendations', '2012-01-13 21:35:49'),
(10, 'djangoratings', '0005_add_exclusions', '2012-01-13 21:35:49'),
(11, 'tasks', '0001_initial', '2012-01-13 21:35:49');

-- --------------------------------------------------------

--
-- Struktura tabele `tasks_task`
--

CREATE TABLE IF NOT EXISTS `tasks_task` (
  `name` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `tasks_task`
--


-- --------------------------------------------------------

--
-- Struktura tabele `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `user_ptr_id` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `land_line` varchar(20) COLLATE utf8_slovenian_ci NOT NULL,
  `mobile_tlf` varchar(20) COLLATE utf8_slovenian_ci NOT NULL,
  `email_updates` tinyint(1) NOT NULL DEFAULT '1',
  `lang_code` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`user_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `user_profile`
--

INSERT INTO `user_profile` (`user_ptr_id`, `birth_date`, `address`, `balance`, `description`, `land_line`, `mobile_tlf`, `email_updates`, `lang_code`,`photo`) VALUES
(1, '1985-01-12', 'Ob zeleznici 16, Maribor', 0, 'osebje', '', '02 300 68 500', 1, 'sl',''),
(2, '1986-04-27', 'Placar 42a, Ptuj', 720, 'http://kiberpipa.org/~mia', '031 616 802', '', 1, '',''),
(15, '1971-04-11', 'Kjuhova 1, Kidričevo', 540, 'Sem računalničar, a delam še kaj drugega. Pomagam pri organizaciji kakšnih prireditev, pa tudi fizično delo mi ni tuje.', '031 213 456', '', 1, '',''),
(16, '1966-08-21', 'Cankarjeva 1, Ptuj', 480, 'Sem iz Ptuja, rada vrtnarim in pomagam. Lahko na širšem področju Štajerske v popoldanskih urah. Najraje ob vikendih. ', '02 1234 576', '', 1, '',''),
(18, '1986-09-18', 'test', 480, 'nekaj o sebi', '031 532 352', '', 1, '',''),
(19, '1986-09-19', 'Jezdarska 22, Maribor', 540, 'Študentka medicine v Mariboru. Za sodelovanje sem se odločila iz radovednosti in želje po alternativi...', '031 676 010', '', 1, '',''),
(20, '1965-03-09', 'Goriška 20', 720, 'Učitelj.\r\nKer je rekel Robi:)', '031 702 207', '', 1, '',''),
(21, '1986-04-20', 'Smetanova 38a', 600, 'Sem prevajalec in filozof, novinar in zdravilec in verjamem, da lahko z izmenjavo časa delujemo enako uspešno kot z izmenjavo denarja ter ob tem gradimo skupnost.\r\n\r\n', '040241386', '', 1, '',''),
(22, '1980-11-09', 'Prekmurska 44, Maribor', 660, 'Podpiram medosebno pomoč in sem željna novih znanj. ', '031 200 495', '', 1, '',''),
(23, '1949-02-27', 'Koroška 18, Maribor', 660, 'Jas sem jas. Za sodelovanje sem se odločil, ker bi rad podprl dejavnost časovne banke.', '031 445 781', '', 1, '',''),
(24, '1988-11-11', 'Domače 1', 600, 'Rad bi prodajal čas.', '041 347 001', '', 1, '',''),
(25, '1959-05-08', 'Sadjarska 11 a, Maribor', 600, 'Sem večstransko delujoč človek, ki me zanimajo boljše osebne, skupne in obče družbene prakse.', '031 886 801', '02 2514 711', 1, '',''),
(26, '1959-05-08', 'Sadjarska 11 a, 2000 Maribor', 600, 'Geodet-prostorski planer, multi-kulturnik, civilno-družbenik, literat, pisec, idejnik in še kaj', '031 886 801', '02 251 47 11', 1, '','');
