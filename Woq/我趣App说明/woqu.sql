-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-02-19 01:37:29
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `woqu`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add info', 7, 'add_info'),
(26, 'Can change info', 7, 'change_info'),
(27, 'Can delete info', 7, 'delete_info'),
(28, 'Can view info', 7, 'view_info'),
(29, 'Can add like', 8, 'add_like'),
(30, 'Can change like', 8, 'change_like'),
(31, 'Can delete like', 8, 'delete_like'),
(32, 'Can view like', 8, 'view_like'),
(33, 'Can add news', 9, 'add_news'),
(34, 'Can change news', 9, 'change_news'),
(35, 'Can delete news', 9, 'delete_news'),
(36, 'Can view news', 9, 'view_news'),
(37, 'Can add review', 10, 'add_review'),
(38, 'Can change review', 10, 'change_review'),
(39, 'Can delete review', 10, 'delete_review'),
(40, 'Can view review', 10, 'view_review');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$dtReoiYXEF2P$TprWtUVlEHYU5ZNE+GjTDRJ7Y7E9JKNr0jo96De/LGs=', '2019-02-18 10:32:38.666575', 0, '18135835385', '', '', '', 0, 1, '2019-02-15 14:44:20.817185');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'woquApp', 'info'),
(8, 'woquApp', 'like'),
(9, 'woquApp', 'news'),
(10, 'woquApp', 'review');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-02-15 14:33:42.968313'),
(2, 'auth', '0001_initial', '2019-02-15 14:33:43.377251'),
(3, 'admin', '0001_initial', '2019-02-15 14:33:43.470970'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-15 14:33:43.479946'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-02-15 14:33:43.489918'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-02-15 14:33:43.559732'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-02-15 14:33:43.597632'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-02-15 14:33:43.635530'),
(9, 'auth', '0004_alter_user_username_opts', '2019-02-15 14:33:43.645534'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-02-15 14:33:43.684399'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-02-15 14:33:43.688388'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-02-15 14:33:43.697364'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-02-15 14:33:43.736286'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-02-15 14:33:43.777151'),
(15, 'sessions', '0001_initial', '2019-02-15 14:33:43.811059'),
(16, 'woquApp', '0001_initial', '2019-02-15 14:33:44.182068');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('69p08ypplxlclotfulfwqg541n9o063o', 'YWFjMDg1YzMxYmI3OTBmMmUxMjEwYzZmMTQxNzhmMTJkOTdmNzRjNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZGVmYjI2MzU5YTIxNDg4MzViZDNhY2Y3NGYyMzYxMjIzNmQ1MGI3In0=', '2019-03-01 14:44:34.149555'),
('c1pl5pe2m2jb1efruikoz9d1xa4am6dz', 'YWFjMDg1YzMxYmI3OTBmMmUxMjEwYzZmMTQxNzhmMTJkOTdmNzRjNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZGVmYjI2MzU5YTIxNDg4MzViZDNhY2Y3NGYyMzYxMjIzNmQ1MGI3In0=', '2019-03-04 10:32:38.672526'),
('du237xpplhof6g36ei0bt0xjfhh1szho', 'YWFjMDg1YzMxYmI3OTBmMmUxMjEwYzZmMTQxNzhmMTJkOTdmNzRjNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZGVmYjI2MzU5YTIxNDg4MzViZDNhY2Y3NGYyMzYxMjIzNmQ1MGI3In0=', '2019-03-04 06:24:04.050072');

-- --------------------------------------------------------

--
-- 表的结构 `woquapp_info`
--

CREATE TABLE IF NOT EXISTS `woquapp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `woquapp_info`
--

INSERT INTO `woquapp_info` (`id`, `nickname`, `user_id`) VALUES
(1, '嘻嘻', 1);

-- --------------------------------------------------------

--
-- 表的结构 `woquapp_like`
--

CREATE TABLE IF NOT EXISTS `woquapp_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `nid_id` int(11) NOT NULL,
  `uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `woquApp_like_nid_id_db0474d0_fk_woquApp_news_id` (`nid_id`),
  KEY `woquApp_like_uid_id_e7593ecb_fk_auth_user_id` (`uid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `woquapp_like`
--

INSERT INTO `woquapp_like` (`id`, `c_time`, `u_time`, `is_del`, `nid_id`, `uid_id`) VALUES
(1, '2019-02-15 15:09:04.318346', '2019-02-15 15:09:04.318346', 0, 1, 1),
(2, '2019-02-16 05:00:30.287690', '2019-02-16 05:00:30.287690', 0, 2, 1),
(3, '2019-02-18 10:33:31.712215', '2019-02-18 10:33:31.712215', 1, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `woquapp_news`
--

CREATE TABLE IF NOT EXISTS `woquapp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `con` varchar(800) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `like_num` int(11) NOT NULL,
  `review_num` int(11) NOT NULL,
  `uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `woquApp_news_uid_id_186ad7ef_fk_auth_user_id` (`uid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `woquapp_news`
--

INSERT INTO `woquapp_news` (`id`, `c_time`, `u_time`, `is_del`, `con`, `img`, `video`, `like_num`, `review_num`, `uid_id`) VALUES
(1, '2019-02-15 15:00:31.177703', '2019-02-15 15:00:31.177703', 0, '今天心情不错', '^news_img\\155024jszwn.jpg^news_img\\155024manmanDA.jpg^news_img\\155024meiguiLR.jpg^news_img\\155024mengxingAq.jpg', '', 0, 0, 1),
(2, '2019-02-16 05:00:17.407146', '2019-02-16 05:00:17.407146', 0, '哈哈哈哈', '^news_img\\155029tlms2.jpg^news_img\\155029xfgy.jpg^news_img\\155029xqyy.jpg^news_img\\155029xwxy.jpg', '', 0, 0, 1),
(3, '2019-02-18 10:33:29.676662', '2019-02-18 10:33:29.676662', 0, '', '^news_img\\155048img012.png^news_img\\155048jszwn.jpg^news_img\\155048manmanDA.jpg^news_img\\155048nq.jpg', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `woquapp_review`
--

CREATE TABLE IF NOT EXISTS `woquapp_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `con` varchar(300) NOT NULL,
  `rep` varchar(300) NOT NULL,
  `nid_id` int(11) NOT NULL,
  `uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `woquApp_review_nid_id_dfc3da86_fk_woquApp_news_id` (`nid_id`),
  KEY `woquApp_review_uid_id_1a548bcb_fk_auth_user_id` (`uid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `woquapp_review`
--

INSERT INTO `woquapp_review` (`id`, `c_time`, `u_time`, `is_del`, `con`, `rep`, `nid_id`, `uid_id`) VALUES
(1, '2019-02-16 04:57:56.975816', '2019-02-16 04:57:56.975816', 0, '今天心情不错', '', 1, 1),
(2, '2019-02-17 05:04:15.781172', '2019-02-17 05:04:15.781172', 0, '哈哈，看着就好吃', '', 2, 1),
(3, '2019-02-18 10:33:36.684920', '2019-02-18 10:33:36.684920', 0, '哈哈哈哈', '', 3, 1);

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `woquapp_info`
--
ALTER TABLE `woquapp_info`
  ADD CONSTRAINT `woquApp_info_user_id_8a9b8a4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `woquapp_like`
--
ALTER TABLE `woquapp_like`
  ADD CONSTRAINT `woquApp_like_nid_id_db0474d0_fk_woquApp_news_id` FOREIGN KEY (`nid_id`) REFERENCES `woquapp_news` (`id`),
  ADD CONSTRAINT `woquApp_like_uid_id_e7593ecb_fk_auth_user_id` FOREIGN KEY (`uid_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `woquapp_news`
--
ALTER TABLE `woquapp_news`
  ADD CONSTRAINT `woquApp_news_uid_id_186ad7ef_fk_auth_user_id` FOREIGN KEY (`uid_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `woquapp_review`
--
ALTER TABLE `woquapp_review`
  ADD CONSTRAINT `woquApp_review_nid_id_dfc3da86_fk_woquApp_news_id` FOREIGN KEY (`nid_id`) REFERENCES `woquapp_news` (`id`),
  ADD CONSTRAINT `woquApp_review_uid_id_1a548bcb_fk_auth_user_id` FOREIGN KEY (`uid_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
