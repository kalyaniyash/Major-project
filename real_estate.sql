-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2017 at 12:05 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `real_estate`
--
CREATE DATABASE IF NOT EXISTS `real_estate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `real_estate`;

-- --------------------------------------------------------

--
-- Table structure for table `agent_chat`
--

CREATE TABLE IF NOT EXISTS `agent_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(400) NOT NULL,
  `receiver` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agent_chat_user_id_0dcfd75a_fk_general_profile_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `agent_chat`
--

INSERT INTO `agent_chat` (`id`, `message`, `receiver`, `user_id`) VALUES
(1, 'asdasd', 2, 3),
(2, 'hi gokul,', 12, 3),
(3, 'dsfsdf', 4, 3),
(4, 'xzdc', 5, 3),
(5, 'drrfg', 7, 3),
(6, 'dzfsdf', 4, 3),
(7, '5452', 5, 1),
(8, 'fdfg', 5, 1),
(9, 'dsafr', 3, 1),
(10, 'saasd', 1, 3),
(11, 'sdf', 3, 1),
(12, 'gokul is good sdf sdf sdfs sdf sdefesd  sdfdsf sdfsdf sdf sdf sdf sdf sdfsdf sdfs sdfsdf sdf sdfsdfsd fsdfsd sdf sdf fsd sd gokul is good sdf sdf sdfs sdf sdefesd  sdfdsf sdfsdf sdf sdf sdf sdf sdfsdf sdfs sdfsdf sdf sdfsdfsd fsdfsd sdf sdf fsd sdv gokul is good sdf sdf sdfs sdf sdefesd  sdfdsf sdfsdf sdf sdf sdf sdf sdfsdf sdfs sdfsdf sdf sdfsdfsd fsdfsd sdf sdf fsd sd', 3, 1),
(13, 'ravi is bad', 5, 1),
(14, 'Suresh is very good boy', 6, 1),
(15, 'w re', 3, 1),
(16, 'Hi gokul how  r u?', 1, 3),
(17, 'i am fine', 3, 1),
(18, 'what r u doing?', 3, 1),
(19, 'im also working onle..', 1, 3),
(20, 'when is ur marriage?', 1, 3),
(21, 'then go and work da..', 3, 1),
(22, 'the day after yours', 3, 1),
(23, 'hmm ok enjoy da', 1, 3),
(24, 'how is ur work?', 1, 3),
(25, 'u enjoy da..', 3, 1),
(26, 'it is going good', 3, 1),
(27, 'wat abt yours? da', 3, 1),
(28, 'pothum poda', 3, 1),
(29, 'hmmm ok da', 1, 3),
(30, 'sdf', 0, 2),
(31, 'is that negotiable price?', 1, 3),
(32, 'if it is negotiable, how much it can be?', 1, 3),
(33, 'if negotiable how much it will be?', 1, 3),
(34, 'it can be up to 1000rs..', 3, 1),
(35, 'ok..we will confirm', 1, 3),
(36, 'what happend to my property?', 3, 2),
(37, 'ya..', 2, 3),
(38, 'your property is sold by other buyer and we can proceed further', 2, 3),
(39, 'how much it can be negoiable?', 1, 3),
(40, 'it is to be confirmed', 1, 3),
(41, 'up to 1000rs', 3, 1),
(42, 'ok confirm it', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add user', 6, 'add_profile'),
(17, 'Can change user', 6, 'change_profile'),
(18, 'Can delete user', 6, 'delete_profile'),
(19, 'Can add location details', 7, 'add_locationdetails'),
(20, 'Can change location details', 7, 'change_locationdetails'),
(21, 'Can delete location details', 7, 'delete_locationdetails'),
(22, 'Can add property details', 8, 'add_propertydetails'),
(23, 'Can change property details', 8, 'change_propertydetails'),
(24, 'Can delete property details', 8, 'delete_propertydetails'),
(25, 'Can add chat', 9, 'add_chat'),
(26, 'Can change chat', 9, 'change_chat'),
(27, 'Can delete chat', 9, 'delete_chat'),
(28, 'Can add property requests', 10, 'add_propertyrequests'),
(29, 'Can change property requests', 10, 'change_propertyrequests'),
(30, 'Can delete property requests', 10, 'delete_propertyrequests');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_propertyrequests`
--

CREATE TABLE IF NOT EXISTS `buyer_propertyrequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestedProperty_id` int(11) NOT NULL,
  `status` varchar(400) NOT NULL,
  `price` varchar(400) NOT NULL,
  `message` varchar(400) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer_propertyrequests_user_id_0ac8a8e5_fk_general_profile_id` (`user_id`),
  KEY `buyer_propertyrequests_requestedProperty_id_a5b42a0c` (`requestedProperty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `buyer_propertyrequests`
--

INSERT INTO `buyer_propertyrequests` (`id`, `requestedProperty_id`, `status`, `price`, `message`, `user_id`) VALUES
(1, 2, 'sold', '1250', 'Looking for good price', 1),
(2, 5, 'sold', '1523', 'price is negotiable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_general_profile_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'agent', 'chat'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(10, 'buyer', 'propertyrequests'),
(4, 'contenttypes', 'contenttype'),
(6, 'general', 'profile'),
(7, 'seller', 'locationdetails'),
(8, 'seller', 'propertydetails'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-12-08 19:26:21.477539'),
(2, 'contenttypes', '0002_remove_content_type_name', '2017-12-08 19:26:22.833007'),
(3, 'auth', '0001_initial', '2017-12-08 19:26:27.474609'),
(4, 'auth', '0002_alter_permission_name_max_length', '2017-12-08 19:26:28.080078'),
(5, 'auth', '0003_alter_user_email_max_length', '2017-12-08 19:26:28.113281'),
(6, 'auth', '0004_alter_user_username_opts', '2017-12-08 19:26:28.156250'),
(7, 'auth', '0005_alter_user_last_login_null', '2017-12-08 19:26:28.187500'),
(8, 'auth', '0006_require_contenttypes_0002', '2017-12-08 19:26:28.213867'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2017-12-08 19:26:28.254882'),
(10, 'auth', '0008_alter_user_username_max_length', '2017-12-08 19:26:28.297851'),
(11, 'general', '0001_initial', '2017-12-08 19:26:33.704101'),
(12, 'admin', '0001_initial', '2017-12-08 19:26:35.708007'),
(13, 'admin', '0002_logentry_remove_auto_add', '2017-12-08 19:26:35.749023'),
(14, 'seller', '0001_initial', '2017-12-08 19:26:39.650390'),
(15, 'seller', '0002_propertydetails_status', '2017-12-08 19:26:40.364257'),
(16, 'sessions', '0001_initial', '2017-12-08 19:26:41.125976'),
(17, 'seller', '0003_propertydetails_cost', '2017-12-09 19:45:35.126953'),
(18, 'agent', '0001_initial', '2017-12-10 02:56:57.427734'),
(19, 'agent', '0002_auto_20171211_2201', '2017-12-12 06:01:19.729492'),
(20, 'seller', '0004_propertydetails_agents', '2017-12-12 11:59:05.928710'),
(21, 'seller', '0005_auto_20171212_0952', '2017-12-12 17:52:49.588867'),
(22, 'buyer', '0001_initial', '2017-12-13 02:32:53.500976'),
(23, 'buyer', '0002_auto_20171213_1059', '2017-12-13 18:59:32.189453'),
(24, 'agent', '0003_auto_20171214_0952', '2017-12-14 17:52:20.327148'),
(25, 'agent', '0004_auto_20171214_1056', '2017-12-14 18:56:30.000976');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ot8n1597e1i9pjta6ie2vorq87mvxa9', 'ODk2ZjEyZjcyMzFiNzUzZjAyMzRhOGZjMzdhNWYzZDVmMjZjMDA4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjdlMzg4YTA5OTQ3ZDZiOWMzMjM2ZWU4OGRjY2EzYTZkMGVkOGY0In0=', '2017-12-31 01:39:29.566406'),
('3dznqdufrzrrqie0sqg0bpwyu83hxgft', 'NWUzZjY0NzNhNzA2Y2Y1NzdmN2YzZDI5YjJiMDAyZGQxN2E1M2QyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjE1NDY1NGFjNDdiOTQyNmJiOTQ5ODE1NmI0YWVjNTVmZjU5ZTk5In0=', '2017-12-31 04:28:54.524414'),
('5bcumt9r2bf7mo3znoza0t2l9ejuj0xa', 'NmZkZDA3ZTQwZWQ4OGIwZWQ1ZjY0ZTY2NGQ3M2M2NGZjZjEyODhkNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNDE3NGMzMDk0NjJiYjVmOGFhMzk0OTgxNWZjMTIxMjgyYWI3YmQxIn0=', '2017-12-24 01:42:02.094726'),
('5fldzlji93rnfl8kxvj3zxwb2up032yw', 'NWUzZjY0NzNhNzA2Y2Y1NzdmN2YzZDI5YjJiMDAyZGQxN2E1M2QyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjE1NDY1NGFjNDdiOTQyNmJiOTQ5ODE1NmI0YWVjNTVmZjU5ZTk5In0=', '2017-12-26 12:08:02.253906'),
('jyx815dpuno7irwmye4ch9u0sj1zhwn0', 'ODk2ZjEyZjcyMzFiNzUzZjAyMzRhOGZjMzdhNWYzZDVmMjZjMDA4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjdlMzg4YTA5OTQ3ZDZiOWMzMjM2ZWU4OGRjY2EzYTZkMGVkOGY0In0=', '2017-12-31 02:06:23.614257'),
('kedkuz8iz92ja4rqw35mwur9q6u2sm04', 'NWUzZjY0NzNhNzA2Y2Y1NzdmN2YzZDI5YjJiMDAyZGQxN2E1M2QyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjE1NDY1NGFjNDdiOTQyNmJiOTQ5ODE1NmI0YWVjNTVmZjU5ZTk5In0=', '2017-12-29 02:54:14.707031'),
('mg820h10duw2j2doacctiglgf5dzzilt', 'ODk2ZjEyZjcyMzFiNzUzZjAyMzRhOGZjMzdhNWYzZDVmMjZjMDA4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjdlMzg4YTA5OTQ3ZDZiOWMzMjM2ZWU4OGRjY2EzYTZkMGVkOGY0In0=', '2017-12-24 01:35:03.928710'),
('sggvsari38e3tmpt0ejibzm0yivkfq3t', 'NWUzZjY0NzNhNzA2Y2Y1NzdmN2YzZDI5YjJiMDAyZGQxN2E1M2QyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjE1NDY1NGFjNDdiOTQyNmJiOTQ5ODE1NmI0YWVjNTVmZjU5ZTk5In0=', '2017-12-31 02:05:53.110351'),
('uul28h98yzwezkcf9xfe69gogdf7mx6f', 'ODk2ZjEyZjcyMzFiNzUzZjAyMzRhOGZjMzdhNWYzZDVmMjZjMDA4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjdlMzg4YTA5OTQ3ZDZiOWMzMjM2ZWU4OGRjY2EzYTZkMGVkOGY0In0=', '2018-01-01 09:11:27.056640'),
('xjhyj9ijdsnzikxlol6u1lvpup7eu7ms', 'ODk2ZjEyZjcyMzFiNzUzZjAyMzRhOGZjMzdhNWYzZDVmMjZjMDA4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjdlMzg4YTA5OTQ3ZDZiOWMzMjM2ZWU4OGRjY2EzYTZkMGVkOGY0In0=', '2017-12-23 19:25:37.392578'),
('zpndr7r5qm1jkhft1rgxbesen8oexcqf', 'NWUzZjY0NzNhNzA2Y2Y1NzdmN2YzZDI5YjJiMDAyZGQxN2E1M2QyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjE1NDY1NGFjNDdiOTQyNmJiOTQ5ODE1NmI0YWVjNTVmZjU5ZTk5In0=', '2017-12-30 22:53:53.389648');

-- --------------------------------------------------------

--
-- Table structure for table `general_profile`
--

CREATE TABLE IF NOT EXISTS `general_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `location` varchar(30) NOT NULL,
  `user_type` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `general_profile`
--

INSERT INTO `general_profile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `location`, `user_type`) VALUES
(1, 'pbkdf2_sha256$36000$NN8RpunTyNcE$msT+mWDS1nHxxETkQEC6JvZMuCk9/pKDWgg+P0jSta8=', '2017-12-19 09:18:22.845703', 0, 'gokul', 'gokul', 'krishnan', 'krishnangokul@gmail.com', 0, 1, '2017-12-08 19:54:08.079101', 'chennai', 'BU'),
(2, 'pbkdf2_sha256$36000$hydEDFllAgv8$5JuxhryWDcS709zr9Ldx7QY8C0WpYuWg4xe4bIg3H3A=', '2017-12-19 09:19:50.038085', 0, 'siva', 'siva', 'kumar', 'siva.kumar@gmail.com', 0, 1, '2017-12-08 19:56:48.679687', 'chennai', 'SE'),
(3, 'pbkdf2_sha256$36000$98SdtSolMgpi$IFEZn+tS490GyfpwRwgDllyc1TUfH54e0m33MlP2oCU=', '2017-12-19 09:19:12.254882', 0, 'suresh', 'suresh', 'N', 'suresh.N@gmail.com', 0, 1, '2017-12-08 19:59:50.640625', 'chennai', 'AG'),
(4, 'pbkdf2_sha256$36000$lsBoZrgsFZ95$3CAg/Z+2kA0WqBr8IA343/U/O8ro9M9g11WjD8f/yik=', '2017-12-14 00:09:36.805664', 0, 'suba', 'suba', 'chandran', 'suba.chandran@gmail.com', 0, 1, '2017-12-14 00:09:28.292968', 'chennai', 'BU'),
(5, 'pbkdf2_sha256$36000$cT7QGeu0fozW$UHqCuPAfV/i/ICibtYHoIOEg6LXQL4Mci6w3gJ7qRuk=', NULL, 0, 'ram', 'rahu', 'ram', 'rahu.ram@gmail.com', 0, 1, '2017-12-14 00:10:17.017578', 'chennai', 'AG'),
(6, 'pbkdf2_sha256$36000$R8ZXJSULomRf$9rpQ3VyT9v6j32CZ0TyIe5M+WgkDxcz8D3kxJ8h/Ark=', NULL, 0, 'ravi', 'ravi', 'kumar', 'ravi.kumar@gmail.com', 0, 1, '2017-12-14 00:10:58.023437', 'chennai', 'AG'),
(7, 'pbkdf2_sha256$36000$0cumMOcp5vsR$0nJBnhZx7o+b+tden0Ap0RBQF9ecpAaT7kLRCGPPSz8=', NULL, 0, 'rama', 'rama', 'krishnan', 'rama.chennai@gmail.com', 0, 1, '2017-12-14 00:12:09.030273', 'chennai', 'SE');

-- --------------------------------------------------------

--
-- Table structure for table `general_profile_groups`
--

CREATE TABLE IF NOT EXISTS `general_profile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `general_profile_groups_profile_id_group_id_2fbe609e_uniq` (`profile_id`,`group_id`),
  KEY `general_profile_groups_group_id_3befd3aa_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `general_profile_user_permissions`
--

CREATE TABLE IF NOT EXISTS `general_profile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `general_profile_user_per_profile_id_permission_id_4ec35cbe_uniq` (`profile_id`,`permission_id`),
  KEY `general_profile_user_permission_id_d7c45d82_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `seller_locationdetails`
--

CREATE TABLE IF NOT EXISTS `seller_locationdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locaddress` varchar(400) NOT NULL,
  `locationusage` varchar(4) NOT NULL,
  `locationname` varchar(400) NOT NULL,
  `lati` double NOT NULL,
  `longi` double NOT NULL,
  `otherdetails` varchar(400) NOT NULL,
  `propid_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_locationdetai_propid_id_e883f790_fk_seller_pr` (`propid_id`),
  KEY `seller_locationdetails_user_id_d9b2cdd1_fk_general_profile_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `seller_locationdetails`
--

INSERT INTO `seller_locationdetails` (`id`, `locaddress`, `locationusage`, `locationname`, `lati`, `longi`, `otherdetails`, `propid_id`, `user_id`) VALUES
(3, 'sharanpur', 'prop', 'sharanpur', 29.967079, 77.5510172, 'It is holy god rama place', 2, 2),
(4, 'delhi', 'near', 'sharanpur', 28.7040592, 77.1024902, 'It is holy god rama place', 2, 2),
(5, 'sholinganallur', 'prop', 'sholinganallur', 12.9009877, 80.2279301, 'It is surrounded by IT parks,schools and many good hospitals and temples', 3, 2),
(6, 'ISKCON Chennai, Sri Sri Radha Krishna Temple.', 'near', 'sholinganallur', 12.9059915, 80.2417354, 'It is surrounded by IT parks,schools and many good hospitals and temples', 3, 2),
(7, 'Besant Nagar Beach.', 'near', 'sholinganallur', 12.9988983, 80.2718556, 'It is surrounded by IT parks,schools and many good hospitals and temples', 3, 2),
(8, 'DakshinaChitra Museum', 'near', 'sholinganallur', 12.8226971, 80.2418849, 'It is surrounded by IT parks,schools and many good hospitals and temples', 3, 2),
(9, 'VGP Snow Kingdom.', 'near', 'sholinganallur', 12.913394, 80.251313, 'It is surrounded by IT parks,schools and many good hospitals and temples', 3, 2),
(10, 'Phoenix Market City.', 'near', 'sholinganallur', 12.9923068, 80.2170314, 'It is surrounded by IT parks,schools and many good hospitals and temples', 3, 2),
(11, 'coimbatore', 'prop', 'coimbatore', 11.0168445, 76.9558321, 'It is verygood industrial area and well known for its cotton industry and well developed cities and many top colleges and schools are surrounded', 4, 2),
(12, 'Anamalai Tiger Reserve', 'near', 'coimbatore', 10.6530243, 76.9958377, 'It is verygood industrial area and well known for its cotton industry and well developed cities and many top colleges and schools are surrounded', 4, 2),
(13, 'Siruvani Waterfalls', 'near', 'coimbatore', 10.9378012, 76.6870034, 'It is verygood industrial area and well known for its cotton industry and well developed cities and many top colleges and schools are surrounded', 4, 2),
(14, 'VOC park and zoo', 'near', 'coimbatore', 11.0077343, 76.9705126, 'It is verygood industrial area and well known for its cotton industry and well developed cities and many top colleges and schools are surrounded', 4, 2),
(15, 'Park Global School', 'near', 'coimbatore', 11.041958, 77.037876, 'It is verygood industrial area and well known for its cotton industry and well developed cities and many top colleges and schools are surrounded', 4, 2),
(16, 'psg college', 'near', 'coimbatore', 11.0248086, 77.0028263, 'It is verygood industrial area and well known for its cotton industry and well developed cities and many top colleges and schools are surrounded', 4, 2),
(17, 'Navi Mumbai', 'prop', 'Navi Mumbai', 19.0330488, 73.0296625, 'It is best place to live with all facilities available in india.It is most iconic location to live the life', 5, 2),
(18, 'Wonders Park', 'near', 'Navi Mumbai', 19.0254616, 73.0258344, 'It is best place to live with all facilities available in india.It is most iconic location to live the life', 5, 2),
(19, 'Prabalgad', 'near', 'Navi Mumbai', 18.9733557, 73.2242753, 'It is best place to live with all facilities available in india.It is most iconic location to live the life', 5, 2),
(20, 'Mandwa Beach', 'near', 'Navi Mumbai', 18.8030918, 72.878686, 'It is best place to live with all facilities available in india.It is most iconic location to live the life', 5, 2),
(21, 'Elephanta Caves', 'near', 'Navi Mumbai', 18.9633474, 72.9314864, 'It is best place to live with all facilities available in india.It is most iconic location to live the life', 5, 2),
(22, 'Mahatma Gandhi Mission''s College of Engineering and Technology', 'near', 'Navi Mumbai', 19.0163873, 73.1046578, 'It is best place to live with all facilities available in india.It is most iconic location to live the life', 5, 2),
(23, 'kolkata', 'prop', 'kolkata', 22.572646, 88.363895, 'kolkata is know for its royal heritage and it is having high class and old schools and colleges and temples', 6, 2),
(24, 'Modern High School for Girls', 'near', 'kolkata', 22.5351788, 88.3645318, 'kolkata is know for its royal heritage and it is having high class and old schools and colleges and temples', 6, 2),
(25, 'Calcutta University', 'near', 'kolkata', 22.5748362, 88.3626298, 'kolkata is know for its royal heritage and it is having high class and old schools and colleges and temples', 6, 2),
(26, 'Sundarbans', 'near', 'kolkata', 21.9497274, 89.1833304, 'kolkata is know for its royal heritage and it is having high class and old schools and colleges and temples', 6, 2),
(27, 'Science City Kolkata', 'near', 'kolkata', 22.5390556, 88.3958254, 'kolkata is know for its royal heritage and it is having high class and old schools and colleges and temples', 6, 2),
(28, 'Eden Gardens', 'near', 'kolkata', 30.3689498, 88.1199886, 'kolkata is know for its royal heritage and it is having high class and old schools and colleges and temples', 6, 2),
(29, 'Calicut', 'prop', 'Calicut', 11.2587531, 75.78041, 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 7, 2),
(30, 'University of Calicut', 'near', 'Calicut', 11.1340267, 75.8952354, 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 7, 2),
(31, 'Al Haramain English School', 'near', 'Calicut', 11.3048668, 75.7670775, 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 7, 2),
(32, 'Mananchira Lake', 'near', 'Calicut', 11.2544231, 75.7798442, 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 7, 2),
(33, 'Indian Business Museum', 'near', 'Calicut', 11.2942956, 75.8735142, 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 7, 2),
(34, 'Kappad Beach, Kozhikode', 'near', 'Calicut', 11.3807071, 75.7260643, 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 7, 2),
(35, 'Kappad Beach, Kozhikode', 'near', 'Calicut', 11.3807071, 75.7260643, 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 7, 2),
(36, 'mangalore', 'prop', 'mangalore', 12.9141417, 74.8559568, '?Mangaluru, is the chief port city of the Indian state of Karnataka,There are many temples,schools and hospitals around the city very near', 8, 2),
(37, 'St. Aloysius College (Mangalore)', 'near', 'mangalore', 12.873206, 74.845929, '?Mangaluru, is the chief port city of the Indian state of Karnataka,There are many temples,schools and hospitals around the city very near', 8, 2),
(38, 'Tannirbhavi Beach', 'near', 'mangalore', 12.8913022, 74.8138741, '?Mangaluru, is the chief port city of the Indian state of Karnataka,There are many temples,schools and hospitals around the city very near', 8, 2),
(39, 'Parish House Building', 'near', 'mangalore', 12.8676565, 74.8444784, '?Mangaluru, is the chief port city of the Indian state of Karnataka,There are many temples,schools and hospitals around the city very near', 8, 2),
(40, 'Shri Durga Parameshwari Temple', 'near', 'mangalore', 13.0438682, 74.870097, '?Mangaluru, is the chief port city of the Indian state of Karnataka,There are many temples,schools and hospitals around the city very near', 8, 2),
(41, 'hyderabad ', 'prop', 'hyderabad ', 17.385044, 78.486671, '?Luxury highrise Apartments in Narsingi, Gachibowli ?Muppa?s Alankrita? is located in Narsingi, Gachibowli extension neighboring to ORR & Financial District. Elegant floor plans, best of amenities, high-end specifications are few of those amazing features which demonstrate the magnificence and ensures definite bliss', 9, 2),
(42, 'hyderabad university', 'near', 'hyderabad ', 17.4567372, 78.326384, '?Luxury highrise Apartments in Narsingi, Gachibowli ?Muppa?s Alankrita? is located in Narsingi, Gachibowli extension neighboring to ORR & Financial District. Elegant floor plans, best of amenities, high-end specifications are few of those amazing features which demonstrate the magnificence and ensures definite bliss', 9, 2),
(43, 'Charminar', 'near', 'hyderabad ', 17.3615636, 78.4746645, '?Luxury highrise Apartments in Narsingi, Gachibowli ?Muppa?s Alankrita? is located in Narsingi, Gachibowli extension neighboring to ORR & Financial District. Elegant floor plans, best of amenities, high-end specifications are few of those amazing features which demonstrate the magnificence and ensures definite bliss', 9, 2),
(44, 'Nehru Zoological Park', 'near', 'hyderabad ', 17.3512432, 78.4496871, '?Luxury highrise Apartments in Narsingi, Gachibowli ?Muppa?s Alankrita? is located in Narsingi, Gachibowli extension neighboring to ORR & Financial District. Elegant floor plans, best of amenities, high-end specifications are few of those amazing features which demonstrate the magnificence and ensures definite bliss', 9, 2),
(45, 'Rajiv Gandhi International Airport', 'near', 'hyderabad ', 17.2402633, 78.4293851, '?Luxury highrise Apartments in Narsingi, Gachibowli ?Muppa?s Alankrita? is located in Narsingi, Gachibowli extension neighboring to ORR & Financial District. Elegant floor plans, best of amenities, high-end specifications are few of those amazing features which demonstrate the magnificence and ensures definite bliss', 9, 2),
(46, 'Snow World', 'near', 'hyderabad ', 17.4145708, 78.4809225, '?Luxury highrise Apartments in Narsingi, Gachibowli ?Muppa?s Alankrita? is located in Narsingi, Gachibowli extension neighboring to ORR & Financial District. Elegant floor plans, best of amenities, high-end specifications are few of those amazing features which demonstrate the magnificence and ensures definite bliss', 9, 2),
(47, 'shimla', 'prop', 'shimla', 31.1048145, 77.1734033, 'It is in Shimla MC area and is locared 2.5 km from Indira Gandhi Medical College and Hospital,and the mall road, 6.5 km from ISBT in a very picturesque location.Its drive in and fully sunny from morning till sunset.', 10, 2),
(48, 'Kalka?Shimla Railway', 'near', 'shimla', 31.0257694, 77.1312518, 'It is in Shimla MC area and is locared 2.5 km from Indira Gandhi Medical College and Hospital,and the mall road, 6.5 km from ISBT in a very picturesque location.Its drive in and fully sunny from morning till sunset.', 10, 2),
(49, 'Himachal Pradesh University', 'near', 'shimla', 31.1110365, 77.1393647, 'It is in Shimla MC area and is locared 2.5 km from Indira Gandhi Medical College and Hospital,and the mall road, 6.5 km from ISBT in a very picturesque location.Its drive in and fully sunny from morning till sunset.', 10, 2),
(50, 'Shimla Airport', 'near', 'shimla', 31.0857519, 77.0660752, 'It is in Shimla MC area and is locared 2.5 km from Indira Gandhi Medical College and Hospital,and the mall road, 6.5 km from ISBT in a very picturesque location.Its drive in and fully sunny from morning till sunset.', 10, 2),
(51, 'shimla nearby railway station', 'near', 'shimla', 31.1024677, 77.1598796, 'It is in Shimla MC area and is locared 2.5 km from Indira Gandhi Medical College and Hospital,and the mall road, 6.5 km from ISBT in a very picturesque location.Its drive in and fully sunny from morning till sunset.', 10, 2),
(52, 'Bishop Cotton School', 'near', 'shimla', 12.968451, 77.598863, 'It is in Shimla MC area and is locared 2.5 km from Indira Gandhi Medical College and Hospital,and the mall road, 6.5 km from ISBT in a very picturesque location.Its drive in and fully sunny from morning till sunset.', 10, 2),
(53, 'mumbai', 'prop', 'mumbai', 19.0759837, 72.8776559, 'it is good place to servive', 19, 2),
(54, 'gate way of india', 'near', 'gatewayofindia', 18.9219841, 72.8346543, 'famous place to visit', 19, 2),
(55, 'Navi mumbai', 'near', 'navimumbai', 19.0330488, 73.0296625, 'it is good place to servive', 19, 2),
(56, 'new delhi', 'prop', 'delhi', 28.7040592, 77.1024902, 'it is good place to servive', 20, 2),
(57, 'India Gate', 'near', 'indiagate', 29.0973145, 77.4057852, 'it is good place to servive', 20, 2),
(58, 'Delhi university', 'near', 'DelhiUniversity', 28.5842523, 77.1638282, 'good', 2, 2),
(59, 'west mambalam', 'prop', 'chennai', 13.0826802, 80.2707184, 'it is good place to servive', 21, 2),
(60, 'grt School', 'near', 'Grtschoolashokpiller', 13.03917, 80.2162477, 'The School is very near to the location', 21, 2),
(61, 'Mambalam Railway Station', 'near', 'mambalamrailwaystation', 13.0386757, 80.2279124, 'Railway station is near to the location', 21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `seller_propertydetails`
--

CREATE TABLE IF NOT EXISTS `seller_propertydetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(200) NOT NULL,
  `address` varchar(400) NOT NULL,
  `ploatarea` varchar(200) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `balconies` int(11) NOT NULL,
  `totalrooms` int(11) NOT NULL,
  `totalfloors` int(11) NOT NULL,
  `houseimage` varchar(100) NOT NULL,
  `houseimage2` varchar(100) NOT NULL,
  `houseimage3` varchar(100) NOT NULL,
  `neighbour` varchar(400) NOT NULL,
  `aboutprop` varchar(400) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `cost` varchar(400) NOT NULL,
  `agents` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_propertydetails_user_id_c3be64e0_fk_general_profile_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `seller_propertydetails`
--

INSERT INTO `seller_propertydetails` (`id`, `city`, `address`, `ploatarea`, `bedrooms`, `bathrooms`, `balconies`, `totalrooms`, `totalfloors`, `houseimage`, `houseimage2`, `houseimage3`, `neighbour`, `aboutprop`, `user_id`, `status`, `cost`, `agents`) VALUES
(2, 'mumbai', 'navi mumbai', '5000', 7, 4, 2, 12, 3, 'g.jpg', 'gg.jpg', 'ggg.jpg', 'School', 'Located in good place', 2, 'sold', '0', 3),
(3, 'Chennai', 'sholinganallur', '7563', 5, 2, 2, 13, 2, 'h.jpg', 'hh.jpg', 'hhh.jpg', 'School,College and Tourist Places', 'It is surrounded by IT parks,schools and many good hospitals and temples', 2, 'unsold', '0', 3),
(4, 'Coimbatore', 'coimbatore', '5689', 6, 2, 3, 15, 3, 'i.jpg', 'ii.jpg', 'iii.jpg', 'School,College and Tourist Places', 'It is verygood industrial area and well known for its cotton industry and well developed cities and many top colleges and schools are surrounded', 2, 'unsold', '0', 0),
(5, 'Mumbai', 'Navi Mumbai', '6235', 6, 2, 2, 15, 3, 'a.jpg', 'aa.jpg', 'aaa.jpg', 'School,College and Tourist Places Hospitals', 'It is best place to live with all facilities available in india.It is most iconic location to live the life', 2, 'unsold', '0', 0),
(6, 'Kolkata', 'kolkata', '7859', 6, 2, 3, 12, 3, 'b.jpg', 'bb.jpg', 'bbb.jpg', 'School,College and Tourist Places Hospitals', 'kolkata is know for its royal heritage and it is having high class and old schools and colleges and temples', 2, 'unsold', '0', 0),
(7, 'Kerala', 'Calicut', '2566', 5, 2, 2, 14, 3, 'c.jpg', 'cc.jpg', 'ccc.jpg', 'School,College and Tourist Places', 'Calicut is natural place to live with the family and it is known for most iconic place in kerala', 2, 'unsold', '0', 0),
(8, 'Karnataka', 'mangalore', '3623', 8, 4, 2, 15, 2, 'd.jpg', 'dd.jpg', 'ddd.jpg', 'School,College and Tourist Places', '?Mangaluru, is the chief port city of the Indian state of Karnataka,There are many temples,schools and hospitals around the city very near', 2, 'unsold', '0', 0),
(9, 'Hyderabad', 'hyderabad ', '8583', 8, 4, 3, 16, 3, 'e.jpg', 'ee.jpg', 'eee.jpg', 'School,College and Tourist Places', '?Luxury highrise Apartments in Narsingi, Gachibowli ?Muppa?s Alankrita? is located in Narsingi, Gachibowli extension neighboring to ORR & Financial District. Elegant floor plans, best of amenities, high-end specifications are few of those amazing features which demonstrate the magnificence and ensures definite bliss', 2, 'unsold', '0', 0),
(10, 'Shimla', 'shimla', '6556', 3, 3, 2, 11, 3, 'f.jpg', 'ff.jpg', 'fff.jpg', 'School,College and Tourist Places', 'It is in Shimla MC area and is locared 2.5 km from Indira Gandhi Medical College and Hospital,and the mall road, 6.5 km from ISBT in a very picturesque location.Its drive in and fully sunny from morning till sunset.', 2, 'unsold', '0', 0),
(12, 'chennai', 'chennai', '1255', 2, 2, 2, 8, 2, 'im.jpg', 'im2.jpg', 'im3.jpeg', 'school,colleges and hospitals', 'well qualified living area where the basic needs are easily gettable', 2, 'unsold', '0', 0),
(14, 's', 'chennai', '1255', 2, 2, 1, 1, 1, 'im_Q6tvu6x.jpg', 'im2_ht8avaC.jpg', 'im3_iqLyx2i.jpeg', 'school,colleges and hospitals', 'well qualified living area where the basic needs are easily gettable', 2, 'unsold', '0', 0),
(19, 'mumbai', 'mumbai', '1262', 2, 2, 1, 10, 2, 'go.jpeg', 'go2.jpg', 'go3.jpg', 'school,colleges and hospitals', 'well qualified living area where the basic needs are easily gettable', 2, 'unsold', '0', 0),
(20, 'delhi', 'new delhi', '1253', 3, 2, 2, 8, 2, 'go_yIBmwLN.jpeg', 'go2_Y1RGck6.jpg', 'go3_bkD3tar.jpg', 'school,colleges and hospitals', 'well qualified living area where the basic needs are easily gettable', 2, 'unsold', '0', 0),
(21, 'chennai', 'chennai', '1255', 2, 2, 2, 8, 2, 'go_OY9KyyT.jpeg', 'go2_wkNbtjt.jpg', 'go3_7ZRliAQ.jpg', 'school,colleges and hospitals', 'well qualified living area where the basic needs are easily gettable', 2, 'unsold', '0', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent_chat`
--
ALTER TABLE `agent_chat`
  ADD CONSTRAINT `agent_chat_user_id_0dcfd75a_fk_general_profile_id` FOREIGN KEY (`user_id`) REFERENCES `general_profile` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `buyer_propertyrequests`
--
ALTER TABLE `buyer_propertyrequests`
  ADD CONSTRAINT `buyer_propertyrequests_user_id_0ac8a8e5_fk_general_profile_id` FOREIGN KEY (`user_id`) REFERENCES `general_profile` (`id`),
  ADD CONSTRAINT `buyer_propertyreques_requestedProperty_id_a5b42a0c_fk_seller_pr` FOREIGN KEY (`requestedProperty_id`) REFERENCES `seller_propertydetails` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_general_profile_id` FOREIGN KEY (`user_id`) REFERENCES `general_profile` (`id`);

--
-- Constraints for table `general_profile_groups`
--
ALTER TABLE `general_profile_groups`
  ADD CONSTRAINT `general_profile_groups_group_id_3befd3aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `general_profile_groups_profile_id_ec6a808d_fk_general_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `general_profile` (`id`);

--
-- Constraints for table `general_profile_user_permissions`
--
ALTER TABLE `general_profile_user_permissions`
  ADD CONSTRAINT `general_profile_user_permission_id_d7c45d82_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `general_profile_user_profile_id_15be2332_fk_general_p` FOREIGN KEY (`profile_id`) REFERENCES `general_profile` (`id`);

--
-- Constraints for table `seller_locationdetails`
--
ALTER TABLE `seller_locationdetails`
  ADD CONSTRAINT `seller_locationdetails_user_id_d9b2cdd1_fk_general_profile_id` FOREIGN KEY (`user_id`) REFERENCES `general_profile` (`id`),
  ADD CONSTRAINT `seller_locationdetai_propid_id_e883f790_fk_seller_pr` FOREIGN KEY (`propid_id`) REFERENCES `seller_propertydetails` (`id`);

--
-- Constraints for table `seller_propertydetails`
--
ALTER TABLE `seller_propertydetails`
  ADD CONSTRAINT `seller_propertydetails_user_id_c3be64e0_fk_general_profile_id` FOREIGN KEY (`user_id`) REFERENCES `general_profile` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
