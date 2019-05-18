-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2019 at 10:19 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_time`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add category', 1, 'add_category'),
(2, 'Can change category', 1, 'change_category'),
(3, 'Can delete category', 1, 'delete_category'),
(4, 'Can view category', 1, 'view_category'),
(5, 'Can add image', 2, 'add_image'),
(6, 'Can change image', 2, 'change_image'),
(7, 'Can delete image', 2, 'delete_image'),
(8, 'Can view image', 2, 'view_image'),
(9, 'Can add place', 3, 'add_place'),
(10, 'Can change place', 3, 'change_place'),
(11, 'Can delete place', 3, 'delete_place'),
(12, 'Can view place', 3, 'view_place'),
(13, 'Can add profile', 4, 'add_profile'),
(14, 'Can change profile', 4, 'change_profile'),
(15, 'Can delete profile', 4, 'delete_profile'),
(16, 'Can view profile', 4, 'view_profile'),
(17, 'Can add rating', 5, 'add_rating'),
(18, 'Can change rating', 5, 'change_rating'),
(19, 'Can delete rating', 5, 'delete_rating'),
(20, 'Can view rating', 5, 'view_rating'),
(21, 'Can add review', 6, 'add_review'),
(22, 'Can change review', 6, 'change_review'),
(23, 'Can delete review', 6, 'delete_review'),
(24, 'Can view review', 6, 'view_review'),
(25, 'Can add ticket', 7, 'add_ticket'),
(26, 'Can change ticket', 7, 'change_ticket'),
(27, 'Can delete ticket', 7, 'delete_ticket'),
(28, 'Can view ticket', 7, 'view_ticket'),
(29, 'Can add town', 8, 'add_town'),
(30, 'Can change town', 8, 'change_town'),
(31, 'Can delete town', 8, 'delete_town'),
(32, 'Can view town', 8, 'view_town'),
(33, 'Can add log entry', 9, 'add_logentry'),
(34, 'Can change log entry', 9, 'change_logentry'),
(35, 'Can delete log entry', 9, 'delete_logentry'),
(36, 'Can view log entry', 9, 'view_logentry'),
(37, 'Can add permission', 10, 'add_permission'),
(38, 'Can change permission', 10, 'change_permission'),
(39, 'Can delete permission', 10, 'delete_permission'),
(40, 'Can view permission', 10, 'view_permission'),
(41, 'Can add group', 11, 'add_group'),
(42, 'Can change group', 11, 'change_group'),
(43, 'Can delete group', 11, 'delete_group'),
(44, 'Can view group', 11, 'view_group'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add content type', 13, 'add_contenttype'),
(50, 'Can change content type', 13, 'change_contenttype'),
(51, 'Can delete content type', 13, 'delete_contenttype'),
(52, 'Can view content type', 13, 'view_contenttype'),
(53, 'Can add session', 14, 'add_session'),
(54, 'Can change session', 14, 'change_session'),
(55, 'Can delete session', 14, 'delete_session'),
(56, 'Can view session', 14, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$ljJKxRChatQR$tsNT9OeNuB/AK6GLymdzDnkngymqllTrFfx5lazocV8=', '2019-03-24 12:29:03.292240', 1, 'mohammed3', 'mohammed', 'al-subaie', 'm19981212@hotmail.com', 1, 1, '2019-03-18 06:48:21.000000'),
(2, 'pbkdf2_sha256$120000$d0S2qtW7mKXd$pFRw4J80lGb7eHAjd2TTLgKMKCK937wOXPhKETE/LXI=', '2019-04-02 14:13:07.750297', 1, 'kroom_360', 'Abdulkarim', 'Alkhalaf', '', 1, 1, '2019-03-18 06:51:15.000000'),
(3, 'pbkdf2_sha256$120000$Q6qjvy6BHCHI$oIuhmy9d1K8BxhoszkVzhchcKMfs/feYAWaLQFvNR04=', '2019-04-01 05:08:29.181031', 1, 'abdullah395', 'Abdullah', 'Aldaosare', 'abdullah395@example.com', 1, 1, '2019-03-24 14:15:03.098041'),
(4, '', NULL, 0, 'abdullah3955', 'Abdullah', 'Aldaosare', '', 0, 1, '2019-03-30 12:31:46.387588');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-18 06:53:00.068713', '1', 'Education', 1, '[{\"added\": {}}]', 1, 2),
(2, '2019-03-18 06:53:08.240859', '1', 'Riydah', 1, '[{\"added\": {}}]', 8, 2),
(3, '2019-03-18 06:53:28.663461', '1', 'Riyadh', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 2),
(4, '2019-03-18 06:55:55.800823', '1', 'CTI', 1, '[{\"added\": {}}]', 3, 2),
(5, '2019-03-18 06:58:39.621141', '1', 'Good (5)', 1, '[{\"added\": {}}]', 5, 2),
(6, '2019-03-18 06:58:52.828839', '1', 'mohammed al-subaie (mohammed3)\'s review on: CTI', 1, '[{\"added\": {}}]', 6, 2),
(7, '2019-03-18 08:11:08.463920', '2', 'Very Good (4)', 1, '[{\"added\": {}}]', 5, 2),
(8, '2019-03-18 08:11:21.409009', '2', '  (kroom)\'s review on: CTI', 1, '[{\"added\": {}}]', 6, 2),
(9, '2019-03-18 08:11:52.003704', '2', 'kroom', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 12, 2),
(10, '2019-03-18 08:13:10.999695', '2', 'Abdulkarim Alkhalaf (kroom)', 2, '[{\"changed\": {\"fields\": [\"avatar\"]}}]', 4, 2),
(11, '2019-03-18 08:13:48.772895', '2', 'Abdulkarim Alkhalaf (kroom)', 2, '[{\"changed\": {\"fields\": [\"avatar\"]}}]', 4, 2),
(12, '2019-03-18 08:15:06.816149', '2', 'Abdulkarim Alkhalaf (kroom)', 2, '[{\"changed\": {\"fields\": [\"avatar\"]}}]', 4, 2),
(13, '2019-03-18 08:15:33.106085', '1', 'mohammed al-subaie (mohammed3)', 2, '[{\"changed\": {\"fields\": [\"avatar\"]}}]', 4, 2),
(14, '2019-03-18 08:15:50.762612', '1', 'mohammed al-subaie (mohammed3)', 2, '[{\"changed\": {\"fields\": [\"avatar\"]}}]', 4, 2),
(15, '2019-03-18 08:17:01.649488', '2', 'Abdulkarim Alkhalaf (kroom)', 2, '[{\"changed\": {\"fields\": [\"avatar\"]}}]', 4, 2),
(16, '2019-03-19 13:33:42.475234', '2', 'Al Janadriyyah', 1, '[{\"added\": {}}]', 3, 2),
(17, '2019-03-19 13:34:27.232266', '2', 'Al Janadriyyah', 2, '[]', 3, 2),
(18, '2019-03-19 13:36:40.580921', '2', 'Entertainment', 1, '[{\"added\": {}}]', 1, 2),
(19, '2019-03-19 13:41:36.754273', '3', 'Kingdom Centre', 1, '[{\"added\": {}}]', 3, 2),
(20, '2019-03-19 13:42:17.237368', '2', 'Al Janadriyyah', 2, '[]', 3, 2),
(21, '2019-03-19 13:46:42.716941', '4', 'National Museum of Saudi Arabia', 1, '[{\"added\": {}}]', 3, 2),
(22, '2019-03-19 13:49:43.526815', '5', 'King Abdullah Park', 1, '[{\"added\": {}}]', 3, 2),
(23, '2019-03-19 13:49:48.863868', '5', 'King Abdullah Park', 2, '[]', 3, 2),
(24, '2019-03-19 13:53:08.842201', '6', 'Riyadh Zoo', 1, '[{\"added\": {}}]', 3, 2),
(25, '2019-03-19 13:53:11.191811', '6', 'Riyadh Zoo', 2, '[]', 3, 2),
(26, '2019-03-21 15:36:24.628031', '7', 'Salam Park', 1, '[{\"added\": {}}]', 3, 2),
(27, '2019-03-21 15:40:38.940653', '8', 'Al Faisaliyah Center', 1, '[{\"added\": {}}]', 3, 2),
(28, '2019-03-21 15:43:13.784898', '9', 'Wadi Hanifa', 1, '[{\"added\": {}}]', 3, 2),
(29, '2019-03-21 15:45:55.291069', '10', 'Royal Saudi Air Force Museum', 1, '[{\"added\": {}}]', 3, 2),
(30, '2019-03-21 15:48:28.023957', '11', 'Murabba Palace', 1, '[{\"added\": {}}]', 3, 2),
(31, '2019-03-21 15:51:50.023875', '12', 'King Khalid Grand Mosque', 1, '[{\"added\": {}}]', 3, 2),
(32, '2019-03-21 15:54:53.839655', '13', 'Al Masmak Museum (Riyadh Fortress)', 1, '[{\"added\": {}}]', 3, 2),
(33, '2019-03-21 15:57:04.075575', '14', 'Al Watan Park', 1, '[{\"added\": {}}]', 3, 2),
(34, '2019-03-21 15:59:41.756389', '15', 'Wadi Namar Dam Park', 1, '[{\"added\": {}}]', 3, 2),
(35, '2019-03-21 16:02:08.862679', '16', 'King Salman Safari Park', 1, '[{\"added\": {}}]', 3, 2),
(36, '2019-03-21 16:03:56.220548', '17', 'king Fahad National Library', 1, '[{\"added\": {}}]', 3, 2),
(37, '2019-03-23 10:36:40.788783', '2', 'Al Janadriyyah', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(38, '2019-03-23 10:38:12.391731', '3', 'Kingdom Centre', 2, '[{\"changed\": {\"fields\": [\"website\", \"description\"]}}]', 3, 2),
(39, '2019-03-23 10:39:33.051714', '4', 'National Museum of Saudi Arabia', 2, '[{\"changed\": {\"fields\": [\"website\", \"description\"]}}]', 3, 2),
(40, '2019-03-23 10:40:15.311308', '5', 'King Abdullah Park', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(41, '2019-03-23 10:41:44.975672', '6', 'Riyadh Zoo', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(42, '2019-03-23 10:42:26.370715', '7', 'Salam Park', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(43, '2019-03-23 10:45:08.014933', '8', 'Al Faisaliyah Center', 2, '[{\"changed\": {\"fields\": [\"website\", \"description\"]}}]', 3, 2),
(44, '2019-03-23 10:45:55.633328', '9', 'Wadi Hanifa', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(45, '2019-03-23 10:46:41.397329', '10', 'Royal Saudi Air Force Museum', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(46, '2019-03-23 10:47:10.949757', '11', 'Murabba Palace', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(47, '2019-03-23 10:51:14.580858', '13', 'Al Masmak Museum (Riyadh Fortress)', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(48, '2019-03-23 10:51:54.266771', '14', 'Al Watan Park', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(49, '2019-03-23 10:53:48.831500', '15', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(50, '2019-03-23 10:54:57.669019', '16', 'King Salman Safari Park', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(51, '2019-03-23 10:56:00.083746', '17', 'king Fahad National Library', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 3, 2),
(52, '2019-03-24 12:28:53.189919', '1', 'mohammed3', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]', 12, 2),
(53, '2019-03-24 12:29:26.412032', '2', 'Al Janadriyyah', 3, '', 3, 1),
(54, '2019-03-24 12:32:28.363175', '3', 'Kingdom Centre', 3, '', 3, 1),
(55, '2019-03-24 12:34:36.486952', '4', 'National Museum of Saudi Arabia', 3, '', 3, 1),
(56, '2019-03-24 12:35:58.614532', '5', 'King Abdullah Park', 3, '', 3, 1),
(57, '2019-03-24 12:37:27.153165', '6', 'Riyadh Zoo', 3, '', 3, 1),
(58, '2019-03-24 12:40:05.307123', '7', 'Salam Park', 3, '', 3, 1),
(59, '2019-03-24 12:42:16.399112', '8', 'Al Faisaliyah Center', 3, '', 3, 1),
(60, '2019-03-24 12:43:56.775385', '9', 'Wadi Hanifa', 3, '', 3, 1),
(61, '2019-03-24 12:47:18.797779', '10', 'Royal Saudi Air Force Museum', 3, '', 3, 1),
(62, '2019-03-24 12:49:59.611239', '11', 'Murabba Palace', 3, '', 3, 1),
(63, '2019-03-24 12:51:05.361551', '12', 'King Khalid Grand Mosque', 3, '', 3, 1),
(64, '2019-03-24 12:52:27.862953', '13', 'Al Masmak Museum (Riyadh Fortress)', 3, '', 3, 1),
(65, '2019-03-24 12:54:05.349615', '14', 'Al Watan Park', 3, '', 3, 1),
(66, '2019-03-24 12:57:37.390884', '17', 'king Fahad National Library', 3, '', 3, 1),
(67, '2019-03-24 12:57:37.410252', '16', 'King Salman Safari Park', 3, '', 3, 1),
(68, '2019-03-24 12:57:37.416876', '15', 'Wadi Namar Dam Park', 3, '', 3, 1),
(69, '2019-03-24 12:57:56.479142', '18', 'Al Janadriyyah', 2, '[{\"changed\": {\"fields\": [\"map_id\"]}}]', 3, 1),
(70, '2019-03-24 13:00:56.415045', '18', 'Al Janadriyyah', 2, '[{\"changed\": {\"fields\": [\"phone_number\", \"website\", \"rating\"]}}]', 3, 1),
(71, '2019-03-24 13:02:11.383976', '19', 'Kingdom Centre', 2, '[{\"changed\": {\"fields\": [\"map_id\"]}}]', 3, 1),
(72, '2019-03-24 13:03:51.104932', '20', 'National Museum of Saudi Arabia', 2, '[{\"changed\": {\"fields\": [\"phone_number\", \"opening_hours\", \"rating\"]}}]', 3, 1),
(73, '2019-03-24 13:05:05.602190', '20', 'National Museum of Saudi Arabia', 2, '[{\"changed\": {\"fields\": [\"map_id\"]}}]', 3, 1),
(74, '2019-03-24 13:07:31.447416', '21', 'King Abdullah Park', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(75, '2019-03-24 13:08:17.991508', '22', 'Riyadh Zoo', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(76, '2019-03-24 13:08:45.450998', '23', 'Salam Park', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(77, '2019-03-24 13:09:20.575773', '24', 'Al Faisaliyah Center', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(78, '2019-03-24 13:09:47.631968', '25', 'Wadi Hanifa', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(79, '2019-03-24 13:10:11.857374', '26', 'Royal Saudi Air Force Museum', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(80, '2019-03-24 13:10:38.734387', '27', 'Murabba Palace', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(81, '2019-03-24 13:11:17.843113', '29', 'Al Masmak Museum (Riyadh Fortress)', 2, '[{\"changed\": {\"fields\": [\"map_id\"]}}]', 3, 1),
(82, '2019-03-24 13:12:38.924605', '28', 'King Khalid Grand Mosque', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(83, '2019-03-24 13:13:21.338487', '29', 'Al Masmak Museum (Riyadh Fortress)', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(84, '2019-03-24 13:13:52.522732', '30', 'Al Watan Park', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(85, '2019-03-24 13:14:18.806747', '31', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(86, '2019-03-24 13:14:49.179775', '32', 'King Salman Safari Park', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(87, '2019-03-24 13:15:19.123396', '33', 'king Fahad National Library', 2, '[{\"changed\": {\"fields\": [\"map_id\", \"rating\"]}}]', 3, 1),
(88, '2019-03-29 14:56:09.732045', '31', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(89, '2019-03-29 14:56:35.906581', '33', 'king Fahad National Library', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(90, '2019-03-29 14:56:50.170949', '32', 'King Salman Safari Park', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(91, '2019-03-29 15:02:56.027630', '34', 'gg', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(92, '2019-03-29 15:16:26.484661', '34', 'gg', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(93, '2019-03-29 15:16:33.958695', '31', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(94, '2019-03-29 15:16:43.277636', '31', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(95, '2019-03-29 15:20:21.856969', '31', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(96, '2019-03-29 15:20:32.886031', '31', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 3),
(97, '2019-03-29 15:21:15.213942', '34', 'gg', 3, '', 3, 3),
(98, '2019-03-30 10:36:07.997999', '3', 'Abdullah Aldaosare (abdullah395)', 2, '[{\"changed\": {\"fields\": [\"avatar\", \"last_seen\"]}}]', 4, 3),
(99, '2019-03-30 10:40:01.619091', '3', 'Abdullah Aldaosare (abdullah395)', 2, '[{\"changed\": {\"fields\": [\"avatar\", \"last_seen\"]}}]', 4, 3),
(100, '2019-03-30 22:54:04.927384', '2', 'Very Good (4)', 3, '', 5, 3),
(101, '2019-03-30 22:54:04.931478', '1', 'Good (5)', 3, '', 5, 3),
(102, '2019-03-30 22:54:17.269779', '3', 'Ver (1)', 1, '[{\"added\": {}}]', 5, 3),
(103, '2019-03-30 22:54:23.752889', '3', 'Ver (1)', 3, '', 5, 3),
(104, '2019-03-30 22:54:43.896402', '4', 'Very Bad (1)', 1, '[{\"added\": {}}]', 5, 3),
(105, '2019-03-30 22:54:55.524924', '5', 'Bad (2)', 1, '[{\"added\": {}}]', 5, 3),
(106, '2019-03-30 22:55:08.996589', '6', 'Good (3)', 1, '[{\"added\": {}}]', 5, 3),
(107, '2019-03-30 22:55:20.707604', '7', 'Very Good (4)', 1, '[{\"added\": {}}]', 5, 3),
(108, '2019-03-30 22:55:32.267503', '8', 'Excellent (5)', 1, '[{\"added\": {}}]', 5, 3),
(109, '2019-03-30 23:08:04.960993', '3', 'Abdullah Aldaosare (abdullah395)\'s review on: King Salman Safari Park', 3, '', 6, 3),
(110, '2019-03-30 23:13:47.732876', '4', 'Abdullah Aldaosare (abdullah395)\'s review on: King Salman Safari Park', 3, '', 6, 3),
(111, '2019-03-30 23:14:53.245422', '32', 'King Salman Safari Park', 2, '[{\"changed\": {\"fields\": [\"rating\"]}}]', 3, 3),
(112, '2019-03-30 23:15:02.379066', '5', 'Abdullah Aldaosare (abdullah395)\'s review on: King Salman Safari Park', 3, '', 6, 3),
(113, '2019-03-30 23:22:10.306124', '6', 'Abdullah Aldaosare (abdullah395)\'s review on: King Salman Safari Park', 3, '', 6, 3),
(114, '2019-03-30 23:22:26.608477', '32', 'King Salman Safari Park', 2, '[{\"changed\": {\"fields\": [\"phone_number\", \"rating\"]}}]', 3, 3),
(115, '2019-03-30 23:27:50.112384', '32', 'King Salman Safari Park', 2, '[{\"changed\": {\"fields\": [\"rating\"]}}]', 3, 3),
(116, '2019-03-30 23:27:58.246215', '7', 'Abdullah Aldaosare (abdullah395)\'s review on: King Salman Safari Park', 3, '', 6, 3),
(117, '2019-03-30 23:29:08.211853', '31', 'Wadi Namar Dam Park', 2, '[{\"changed\": {\"fields\": [\"posted_by\"]}}]', 3, 3),
(118, '2019-03-30 23:53:16.954585', '32', 'King Salman Safari Park', 2, '[{\"changed\": {\"fields\": [\"rating\"]}}]', 3, 3),
(119, '2019-03-30 23:53:24.633940', '8', 'Abdullah Aldaosare (abdullah395)\'s review on: King Salman Safari Park', 3, '', 6, 3),
(120, '2019-03-31 00:01:32.549026', '19', 'King Salman Safari Park\'s Image (19)', 1, '[{\"added\": {}}]', 2, 3),
(121, '2019-03-31 05:57:50.344777', '1', 'CTI', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 2),
(122, '2019-03-31 06:00:24.379406', '2', 'Abdulkarim Alkhalaf (kroom_360)', 2, '[{\"changed\": {\"fields\": [\"avatar\", \"last_seen\"]}}]', 4, 2),
(123, '2019-03-31 06:07:51.193796', '36', 'Dominos', 2, '[{\"changed\": {\"fields\": [\"is_approved\"]}}]', 3, 2),
(124, '2019-03-31 06:33:42.863844', '36', 'Dominos', 3, '', 3, 2),
(125, '2019-03-31 08:33:37.473824', '1', 'CTI', 3, '', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'admin', 'logentry'),
(11, 'auth', 'group'),
(10, 'auth', 'permission'),
(12, 'auth', 'user'),
(13, 'contenttypes', 'contenttype'),
(1, 'home', 'category'),
(2, 'home', 'image'),
(3, 'home', 'place'),
(4, 'home', 'profile'),
(5, 'home', 'rating'),
(6, 'home', 'review'),
(7, 'home', 'ticket'),
(8, 'home', 'town'),
(14, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-18 06:47:30.303093'),
(2, 'auth', '0001_initial', '2019-03-18 06:47:30.922895'),
(3, 'admin', '0001_initial', '2019-03-18 06:47:31.131459'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-18 06:47:31.156776'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-18 06:47:31.181312'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-03-18 06:47:31.304413'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-03-18 06:47:31.377216'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-03-18 06:47:31.462366'),
(9, 'auth', '0004_alter_user_username_opts', '2019-03-18 06:47:31.483095'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-03-18 06:47:31.544811'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-03-18 06:47:31.555423'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-03-18 06:47:31.579326'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-03-18 06:47:31.655321'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-03-18 06:47:31.735735'),
(15, 'home', '0001_initial', '2019-03-18 06:47:32.939394'),
(16, 'home', '0002_auto_20190405_0529', '2019-03-18 06:47:33.234228'),
(17, 'home', '0003_auto_20190315_0149', '2019-03-18 06:47:33.335154'),
(18, 'home', '0004_rating_image', '2019-03-18 06:47:33.399185'),
(19, 'home', '0005_auto_20190317_0055', '2019-03-18 06:47:33.420025'),
(20, 'home', '0006_auto_20190317_0058', '2019-03-18 06:47:33.424646'),
(21, 'home', '0007_auto_20190317_1834', '2019-03-18 06:47:33.532242'),
(22, 'home', '0008_auto_20190317_1936', '2019-03-18 06:47:33.616675'),
(23, 'home', '0009_auto_20190317_1944', '2019-03-18 06:47:33.658306'),
(24, 'home', '0010_place_opening_hours', '2019-03-18 06:47:33.663515'),
(25, 'home', '0011_place_opening_hours', '2019-03-18 06:47:33.752982'),
(26, 'sessions', '0001_initial', '2019-03-18 06:47:33.813329'),
(27, 'home', '0011_auto_20190319_0207', '2019-03-21 16:09:07.713033'),
(28, 'home', '0012_auto_20190319_0229', '2019-03-21 16:09:07.884249'),
(29, 'home', '0013_auto_20190319_0304', '2019-03-21 16:09:07.905757'),
(30, 'home', '0014_place_description', '2019-03-21 16:09:07.991835'),
(31, 'home', '0015_place_post_date', '2019-03-21 16:09:08.070928'),
(32, 'home', '0016_place_rating', '2019-03-21 16:09:08.154856'),
(33, 'home', '0017_place_last_seen', '2019-03-30 10:16:35.096690'),
(34, 'home', '0018_auto_20190330_1331', '2019-03-30 10:32:54.205826');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0dziit33e74uknr4tlsiuurxujlkqh7x', 'YTg4NDBlOWJlMjQ0YTViY2EzMjdiZDUwOGFlMzVhM2Q0NTI4NGMzMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZGY4ZjczZjA4OGU1ZjNjNWIxYzZiYWYxNGZkMWQwZDAzNWJkZGQ2In0=', '2019-04-16 14:13:07.763946'),
('265j45gtqafzmsztfked670nzy6tqoz5', 'NTM2ZDE3YzRkNWI0MzBhNDJlMDQ1OGYxOTA1ZTBmOWVmZjk4MzVlODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDM5MjNmOTY3Zjc3MjMwN2MxYjk0NTMxZGRmMmQ1MGQ2NzE4MmY5In0=', '2019-04-14 00:01:16.510333'),
('717iygjgs5fw5vwjm3n3l26cv17do8la', 'NTM2ZDE3YzRkNWI0MzBhNDJlMDQ1OGYxOTA1ZTBmOWVmZjk4MzVlODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDM5MjNmOTY3Zjc3MjMwN2MxYjk0NTMxZGRmMmQ1MGQ2NzE4MmY5In0=', '2019-04-14 07:07:52.843178'),
('722fkqsc03a1m5bp9qb7gj14ittdb8dk', 'NTM2ZDE3YzRkNWI0MzBhNDJlMDQ1OGYxOTA1ZTBmOWVmZjk4MzVlODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDM5MjNmOTY3Zjc3MjMwN2MxYjk0NTMxZGRmMmQ1MGQ2NzE4MmY5In0=', '2019-04-13 09:27:51.631368'),
('87teaw4i15hal9zp5hoxn9ed7de5djap', 'YjJjZjZkYjRmNTYzNzRlZGUxZjQ1Yjg2M2YwMzNhNGQ2OWZjZWY2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNThhNDRmY2QzOWVjNDQ5ZjU0MGM3Nzg0YzMyMDc3MmE2ZjMzYzE4In0=', '2019-04-07 12:29:03.304369'),
('a4erlln3794v9dndbk54xxi0ypeht501', 'YTg4NDBlOWJlMjQ0YTViY2EzMjdiZDUwOGFlMzVhM2Q0NTI4NGMzMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZGY4ZjczZjA4OGU1ZjNjNWIxYzZiYWYxNGZkMWQwZDAzNWJkZGQ2In0=', '2019-04-14 14:53:38.809721'),
('kj567ebun1g0mbnzn5cjmgq2580gkmmc', 'NTM2ZDE3YzRkNWI0MzBhNDJlMDQ1OGYxOTA1ZTBmOWVmZjk4MzVlODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDM5MjNmOTY3Zjc3MjMwN2MxYjk0NTMxZGRmMmQ1MGQ2NzE4MmY5In0=', '2019-04-14 04:54:37.458278'),
('ksxs9ejm3mt6mj9tyh2esf4onfhpha6p', 'NTM2ZDE3YzRkNWI0MzBhNDJlMDQ1OGYxOTA1ZTBmOWVmZjk4MzVlODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDM5MjNmOTY3Zjc3MjMwN2MxYjk0NTMxZGRmMmQ1MGQ2NzE4MmY5In0=', '2019-04-15 05:08:29.194827'),
('l1e4l27v1jyxgwxzefoqct0rz1s9wewy', 'YTg4NDBlOWJlMjQ0YTViY2EzMjdiZDUwOGFlMzVhM2Q0NTI4NGMzMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZGY4ZjczZjA4OGU1ZjNjNWIxYzZiYWYxNGZkMWQwZDAzNWJkZGQ2In0=', '2019-04-14 08:32:33.562721'),
('rhycsk7d90a2mhbdtvfqzlz3esbuxyji', 'NTM2ZDE3YzRkNWI0MzBhNDJlMDQ1OGYxOTA1ZTBmOWVmZjk4MzVlODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDM5MjNmOTY3Zjc3MjMwN2MxYjk0NTMxZGRmMmQ1MGQ2NzE4MmY5In0=', '2019-04-14 05:07:09.149712'),
('zn19y9uzes8klsatr4hjlezsfas712e9', 'YTg4NDBlOWJlMjQ0YTViY2EzMjdiZDUwOGFlMzVhM2Q0NTI4NGMzMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZGY4ZjczZjA4OGU1ZjNjNWIxYzZiYWYxNGZkMWQwZDAzNWJkZGQ2In0=', '2019-04-14 05:06:45.575695');

-- --------------------------------------------------------

--
-- Table structure for table `home_category`
--

CREATE TABLE `home_category` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_category`
--

INSERT INTO `home_category` (`id`, `name`, `icon`) VALUES
(1, 'Education', 'restaurants-icon-24_ZXM1pHx.jpg'),
(2, 'Entertainment', 'restaurants-icon-24_ZXM1pHx_lxfdLa2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_image`
--

CREATE TABLE `home_image` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_image`
--

INSERT INTO `home_image` (`id`, `image`, `place_id`) VALUES
(1, 'Al.jpg', 18),
(2, 'kingdom_centre.jpg', 19),
(3, 'SaudiMuseum04-1650x1300.jpg', 20),
(4, 'king-abdullah-park.jpg', 21),
(5, 'riyadh.jpg', 22),
(6, '940631-1862588066.jpg', 23),
(7, '2325691873_b8d5c8c714_b.jpg', 24),
(8, '940171-1971291867.jpg', 25),
(9, 'nice-visit-to-saudi-royal.jpg', 26),
(10, '54762001-riyadh-the-murabba-palace-mosque.jpg', 27),
(11, 'King-Khalid-Mosque-in-Riyadh-Saudi-Arabia.jpg', 28),
(12, 'p5a_0.jpg', 29),
(13, '58_big.jpg', 30),
(14, 'Wadi_Namar_Park4_Sig.jpg', 31),
(15, 'King_Salman_Park_Ban_ban_Riyadh6_sig.jpg', 32),
(16, 'download.jpg', 33),
(18, 'maxresdefault_wTTa6yv.jpg', 35),
(19, 'King-Salman-Park-1024x579.jpg', 32);

-- --------------------------------------------------------

--
-- Table structure for table `home_place`
--

CREATE TABLE `home_place` (
  `id` int(11) NOT NULL,
  `map_id` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `website` varchar(120) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `posted_by_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `opening_hours` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `post_date` datetime(6) NOT NULL,
  `rating` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_place`
--

INSERT INTO `home_place` (`id`, `map_id`, `name`, `phone_number`, `website`, `is_approved`, `category_id`, `posted_by_id`, `town_id`, `opening_hours`, `description`, `post_date`, `rating`) VALUES
(18, 'ChIJF6xs7dZULj4RrmSt9r3bGhU', 'Al Janadriyyah', '011 493 3303', 'janadria.org.sa', 1, 2, 1, 1, '11am  - 11pm', 'From here, exudes the fragrance of originality, reaffirming and strengthening the Arabic identity. Al Janadriyah - \"National Festival for heritage and culture\" - is the most important national event rivaling Saudi Arabia\'s history and current concept of its booming prosperity. To re-formulate a perfect palette of creativity in the festival, varied events and activities are held -from the opening ceremony of the events, to folklore arts, camel races, as well as many cultural and heritage activities are revived with complete authenticity.', '2019-03-24 12:28:09.722855', '0.00'),
(19, 'ChIJdyqDL00dLz4RQn6DQlmoq4g', 'Kingdom Centre', 'null', 'http://kingdomcentre.com.sa/', 1, 2, 1, 1, '9:30AM–11PM', 'Located in Riyadh city the capital of Saudi Arabia and considered to be one of the major landmarks in the city, the Mall has the most luxurious brands in the Kingdom, with a great selection of boutiques and stores.\r\nThe Sky Bridge is a modern marvel on a unique landmark, rising on top of a 300-meter tower and overlooking the city of Riyadh. Its unique position gave it the advantage of being one of the most important attraction point for tourism in KSA.', '2019-03-24 12:32:13.109763', '0.00'),
(20, 'ChIJ4cV14VUELz4RBfhtCX8cffo', 'National Museum of Saudi Arabia', '011 402 9500', 'http://www.nationalmuseum.org.sa/index.aspx', 1, 1, 1, 1, '8AM–8PM', 'Inside the National Museum, Riyadh, you can find a captivating display of Saudi Arabia\'s culture in past and present forms. There are different types of antiques, manuscripts, documents and display boards that showcase an erstwhile era. Inside the National Museum, Riyadh, you can find a captivating display of Saudi Arabia\'s culture in past and present forms. There are different types of antiques, manuscripts, documents and display boards that showcase an erstwhile era and display boards that showcase an erstwhile era. Inside the National Museum, Riyadh, you can find a captivating display of Saudi Arabia\'s.', '2019-03-24 12:34:19.788739', '0.00'),
(21, 'ChIJN1RXRTsELz4RvVlDwc69vqI', 'King Abdullah Park', 'null', '', 1, 2, 1, 1, '1PM–12AM', 'Big city park with 12-m. walkways, play & sports areas & daily dancing water fountain displays.', '2019-03-24 12:35:39.271600', '0.00'),
(22, 'ChIJL8ewJBcELz4RQ2IOF855NzU', 'Riyadh Zoo', '011 477 9523', '', 1, 2, 1, 1, '8:30AM–6PM', 'Large, popular zoo opened in 1987, featuring 1500+ animals, train rides & prayer halls.', '2019-03-24 12:37:04.292189', '0.00'),
(23, 'ChIJYwhqb3UFLz4R-t8V83517qk', 'Salam Park', 'null', '', 1, 2, 1, 1, '3PM–12AM', 'City oasis with many palm trees, play equipment, concessions & a large lake with pedal boats.', '2019-03-24 12:38:28.315346', '0.00'),
(24, 'ChIJA5QISkcDLz4RlmEV5mdl5pw', 'Al Faisaliyah Center', 'null', 'http://www.alfaisaliahmall.com/', 1, 2, 1, 1, 'Opens At 09:30', 'Reflecting the world’s highest architectural standards, Al Faisaliah Mall was built in 2000 to introduce a whole new concept of luxury shopping in the Kingdom. Its seamless, oval-shaped design is home to some of the world’s leading luxury and designer brands, including the Middle East’s first Harvey Nichols Department Store – appealing to the contemporary &refined taste in fashion of its various guests and clients.', '2019-03-24 12:41:49.217855', '0.00'),
(25, 'ChIJGakP6pwPLz4RAvgfneKt_tw', 'Wadi Hanifa', 'null', '', 1, 2, 1, 1, '', 'Wadi Hanifa is a wadi in the Najd region, Riyadh Province, in central Saudi Arabia. The valley runs for a length of 120 km from northwest to southeast, cutting through the city of Riyadh, the capital of Saudi Arabia. A string of towns and villages lie along the valley, including Uyaynah, Irqah and Diriyah.', '2019-03-24 12:43:40.866224', '0.00'),
(26, 'ChIJaczLCxoCLz4RZdP88ODHHjw', 'Royal Saudi Air Force Museum', '011 492 2303', 'https://www.mod.gov.sa/Services/SaqrAlJazira/Pages/default.aspx', 1, 1, 1, 1, '4–9PM', 'Saqr Al-Jazira Aviation Museum is considered one of the museums that are interested in aviation and sciences related to aviation. It reviews a journey of a continuous success of more than one hundred years, from watching aircrafts in the sky of the Arabian Peninsula through King Abdulaziz owning aircrafts and establishing the first Air Force in the year 1344 AH. \r\n\r\nThe role of Saqr Al-Jazira Aviation Museum is not only a display of the past. However, it combines a mixture of the old past by displaying historical equipments, artifacts, historical documents, and the present by displaying great technical advances achieved by aviation sectors in general. The opening of the museum was on the 7th of Shawwal 1419 AH. under the patronage of His Royal Highness Prince Abdullah bin Abdulaziz, Crown Prince, Deputy Prime Minister and Head of the National Guard (back then). Since then, the museum has received official delegations, guests and official visitors.', '2019-03-24 12:46:32.792125', '0.00'),
(27, 'ChIJE7pXM4oELz4R45vWAbilooI', 'Murabba Palace', '011 401 1999', 'https://www.darah.org.sa/', 1, 1, 1, 1, '8AM–10PM', 'The Murabba Palace is one of the historic buildings in Riyadh, Saudi Arabia. The palace was named after its square with the form of 400 by 400 metres. It is one of the museums in the city.', '2019-03-24 12:48:17.074222', '0.00'),
(28, 'ChIJUc-ltiEdLz4R8S4q8Ei6zLA', 'King Khalid Grand Mosque', '011 488 9700', '', 1, 1, 1, 1, '', 'This is a description box, please fill it with informations about the place.', '2019-03-24 12:50:54.524775', '5.00'),
(29, 'ChIJJYr7j6YFLz4RfirEhjemb0M', 'Al Masmak Museum (Riyadh Fortress)', '011 411 0091', 'https://riyadh.sa/', 1, 1, 1, 1, '8AM–9PM', 'l Masmak Fortress has a special status in the Kingdom\'s history in general and Riyadh\'s history in particular. From there, King Abdul-Aziz started his march to unify the Kingdom of Saudi Arabia. Al Masmak Fortress is associated with reclaiming Riyadh in the dawn of the 5th of Shawal 1319 AH/15th of January 1902 CE by King Abdul-Aziz.', '2019-03-24 12:52:13.843129', '0.00'),
(30, 'ChIJM_V2-1QELz4RS3o25MQS2NY', 'Al Watan Park', '011 409 3121', '', 1, 2, 1, 1, '4PM–1AM', 'Located inside King Abdulaziz Historical Center. Represents a small model of the Kingdom. Riyadh water tower is located at the heart of this park. Contains recreational games, chalets, water areas, restaurants, and theater.', '2019-03-24 12:53:52.491163', '0.00'),
(31, 'ChIJr0sgUcIPLz4RL1x7ZsxovNU', 'Wadi Namar Dam Park', '011 456 9999', 'https://park.alriyadh.gov.sa/', 1, 2, 3, 1, '24 hours', 'Narrow lake featuring a waterfall & paved area along its edge for cycling, walking & jogging.', '2019-03-24 12:55:16.664837', '0.00'),
(32, 'ChIJt163w6LsLj4RUMfZMWXp8Vw', 'King Salman Safari Park', 'Not specified', 'https://park.alriyadh.gov.sa/', 1, 2, 1, 1, '6AM–12AM', 'Playgrounds, beautiful natural scenery, and lots to explore by bike or foot, King Salman Park is a clean and modern park that is very enjoyable, especially at dusk when the hot sun begins to set.', '2019-03-24 12:56:23.231502', '5.00'),
(33, 'ChIJj18ZsEMDLz4RlDLNrUgHbv0', 'king Fahad National Library', '011 418 6111', 'https://kfnl.gov.sa/Ar/Pages/default.aspx', 1, 1, 1, 1, '8AM–7PM', 'DescriptionThe King Fahd National Library is the legal deposit and copyright library for Saudi Arabia. KFNL was established in 1983 in response to an initiative made by the people of Riyadh when King Fahd ascended the throne. The project was announced in 1983 and the implementation started in 1986', '2019-03-24 12:57:19.053510', '5.00'),
(35, 'ChIJecHCBWf9Lj4RnzOPsWvfgdQ', 'gg', '121212', '', 0, 1, 3, 1, '', 'ghhgghghfhfg', '2019-03-29 21:48:05.672535', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `home_profile`
--

CREATE TABLE `home_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `last_seen` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_profile`
--

INSERT INTO `home_profile` (`id`, `user_id`, `avatar`, `last_seen`) VALUES
(1, 1, 'avatars/default-avatar_JdMOz3F.png', '2019-03-30 10:31:55.110721'),
(2, 2, 'avatars/1.jpg', '2019-04-02 14:57:31.471963'),
(3, 3, 'avatars/test1_rSBWcrz.jpg', '2019-04-01 05:09:39.509938'),
(4, 4, '/avatars/default-avatar.png', '2019-03-30 12:30:54.601805');

-- --------------------------------------------------------

--
-- Table structure for table `home_profile_favorites`
--

CREATE TABLE `home_profile_favorites` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_profile_favorites`
--

INSERT INTO `home_profile_favorites` (`id`, `profile_id`, `place_id`) VALUES
(13, 3, 32),
(12, 3, 33);

-- --------------------------------------------------------

--
-- Table structure for table `home_rating`
--

CREATE TABLE `home_rating` (
  `id` int(11) NOT NULL,
  `stars` int(10) UNSIGNED NOT NULL,
  `text` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_rating`
--

INSERT INTO `home_rating` (`id`, `stars`, `text`, `image`) VALUES
(1, 1, 'Very Bad', '1_stars_srNPUPo.png'),
(2, 2, 'Bad', '2_stars_QF3LF0Q.png'),
(3, 3, 'Good', '3_stars_zglkVnj.png'),
(4, 4, 'Very Good', '4_stars_GJPtWnq.png'),
(5, 5, 'Excellent', '5_stars_2cjqgp3.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_review`
--

CREATE TABLE `home_review` (
  `id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `place_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `datetime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_review`
--

INSERT INTO `home_review` (`id`, `comment`, `place_id`, `profile_id`, `rating_id`, `datetime`) VALUES
(9, 'Very good looking place !', 32, 3, 5, '2019-03-30 23:53:41.567017'),
(10, 'Nice Place!', 33, 2, 5, '2019-03-31 05:10:10.801426'),
(11, 'Good Place!', 28, 2, 5, '2019-03-31 05:49:52.645034');

-- --------------------------------------------------------

--
-- Table structure for table `home_ticket`
--

CREATE TABLE `home_ticket` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `expire_date` date NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `place_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_town`
--

CREATE TABLE `home_town` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_town`
--

INSERT INTO `home_town` (`id`, `name`) VALUES
(1, 'Riyadh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_category`
--
ALTER TABLE `home_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_image`
--
ALTER TABLE `home_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_image_place_id_d5134855_fk_home_place_id` (`place_id`);

--
-- Indexes for table `home_place`
--
ALTER TABLE `home_place`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_place_category_id_6c8dced2_fk_home_category_id` (`category_id`),
  ADD KEY `home_place_posted_by_id_a82f74e8_fk_home_profile_id` (`posted_by_id`),
  ADD KEY `home_place_town_id_3295e347_fk_home_town_id` (`town_id`);

--
-- Indexes for table `home_profile`
--
ALTER TABLE `home_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `home_profile_favorites`
--
ALTER TABLE `home_profile_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_profile_favorites_profile_id_place_id_7a0e7911_uniq` (`profile_id`,`place_id`),
  ADD KEY `home_profile_favorites_place_id_c10caf51_fk_home_place_id` (`place_id`);

--
-- Indexes for table `home_rating`
--
ALTER TABLE `home_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_review`
--
ALTER TABLE `home_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_review_place_id_3bb51054_fk_home_place_id` (`place_id`),
  ADD KEY `home_review_profile_id_cf871c90_fk_home_profile_id` (`profile_id`),
  ADD KEY `home_review_rating_id_b0fec4b2_fk_home_rating_id` (`rating_id`);

--
-- Indexes for table `home_ticket`
--
ALTER TABLE `home_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_ticket_place_id_6af7f716_fk_home_place_id` (`place_id`),
  ADD KEY `home_ticket_profile_id_1a013ad0_fk_home_profile_id` (`profile_id`);

--
-- Indexes for table `home_town`
--
ALTER TABLE `home_town`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `home_category`
--
ALTER TABLE `home_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home_image`
--
ALTER TABLE `home_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `home_place`
--
ALTER TABLE `home_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `home_profile`
--
ALTER TABLE `home_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `home_profile_favorites`
--
ALTER TABLE `home_profile_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `home_rating`
--
ALTER TABLE `home_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `home_review`
--
ALTER TABLE `home_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `home_ticket`
--
ALTER TABLE `home_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `home_town`
--
ALTER TABLE `home_town`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_image`
--
ALTER TABLE `home_image`
  ADD CONSTRAINT `home_image_place_id_d5134855_fk_home_place_id` FOREIGN KEY (`place_id`) REFERENCES `home_place` (`id`);

--
-- Constraints for table `home_place`
--
ALTER TABLE `home_place`
  ADD CONSTRAINT `home_place_category_id_6c8dced2_fk_home_category_id` FOREIGN KEY (`category_id`) REFERENCES `home_category` (`id`),
  ADD CONSTRAINT `home_place_posted_by_id_a82f74e8_fk_home_profile_id` FOREIGN KEY (`posted_by_id`) REFERENCES `home_profile` (`id`),
  ADD CONSTRAINT `home_place_town_id_3295e347_fk_home_town_id` FOREIGN KEY (`town_id`) REFERENCES `home_town` (`id`);

--
-- Constraints for table `home_profile`
--
ALTER TABLE `home_profile`
  ADD CONSTRAINT `home_profile_user_id_5bf46ea0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_profile_favorites`
--
ALTER TABLE `home_profile_favorites`
  ADD CONSTRAINT `home_profile_favorites_place_id_c10caf51_fk_home_place_id` FOREIGN KEY (`place_id`) REFERENCES `home_place` (`id`),
  ADD CONSTRAINT `home_profile_favorites_profile_id_f4ee7f2c_fk_home_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `home_profile` (`id`);

--
-- Constraints for table `home_review`
--
ALTER TABLE `home_review`
  ADD CONSTRAINT `home_review_place_id_3bb51054_fk_home_place_id` FOREIGN KEY (`place_id`) REFERENCES `home_place` (`id`),
  ADD CONSTRAINT `home_review_profile_id_cf871c90_fk_home_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `home_profile` (`id`),
  ADD CONSTRAINT `home_review_rating_id_b0fec4b2_fk_home_rating_id` FOREIGN KEY (`rating_id`) REFERENCES `home_rating` (`id`);

--
-- Constraints for table `home_ticket`
--
ALTER TABLE `home_ticket`
  ADD CONSTRAINT `home_ticket_place_id_6af7f716_fk_home_place_id` FOREIGN KEY (`place_id`) REFERENCES `home_place` (`id`),
  ADD CONSTRAINT `home_ticket_profile_id_1a013ad0_fk_home_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `home_profile` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
