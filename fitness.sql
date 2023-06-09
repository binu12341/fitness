-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 06:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add offlinetraining', 7, 'add_offlinetraining'),
(26, 'Can change offlinetraining', 7, 'change_offlinetraining'),
(27, 'Can delete offlinetraining', 7, 'delete_offlinetraining'),
(28, 'Can view offlinetraining', 7, 'view_offlinetraining'),
(29, 'Can add onlinetraining', 8, 'add_onlinetraining'),
(30, 'Can change onlinetraining', 8, 'change_onlinetraining'),
(31, 'Can delete onlinetraining', 8, 'delete_onlinetraining'),
(32, 'Can view onlinetraining', 8, 'view_onlinetraining'),
(33, 'Can add paymenttrainee', 9, 'add_paymenttrainee'),
(34, 'Can change paymenttrainee', 9, 'change_paymenttrainee'),
(35, 'Can delete paymenttrainee', 9, 'delete_paymenttrainee'),
(36, 'Can view paymenttrainee', 9, 'view_paymenttrainee'),
(37, 'Can add paymenttrainer', 10, 'add_paymenttrainer'),
(38, 'Can change paymenttrainer', 10, 'change_paymenttrainer'),
(39, 'Can delete paymenttrainer', 10, 'delete_paymenttrainer'),
(40, 'Can view paymenttrainer', 10, 'view_paymenttrainer'),
(41, 'Can add batch', 11, 'add_batch'),
(42, 'Can change batch', 11, 'change_batch'),
(43, 'Can delete batch', 11, 'delete_batch'),
(44, 'Can view batch', 11, 'view_batch'),
(45, 'Can add user_registration', 12, 'add_user_registration'),
(46, 'Can change user_registration', 12, 'change_user_registration'),
(47, 'Can delete user_registration', 12, 'delete_user_registration'),
(48, 'Can view user_registration', 12, 'view_user_registration');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$d34zacxCH3Pj9SvxP0yFpf$Y0gxKpxX5z65KbcAZw3rUK3eaaDDBLTBkeq72ysODJk=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-05-03 11:29:57.363988');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'fitnessproapp', 'batch'),
(7, 'fitnessproapp', 'offlinetraining'),
(8, 'fitnessproapp', 'onlinetraining'),
(9, 'fitnessproapp', 'paymenttrainee'),
(10, 'fitnessproapp', 'paymenttrainer'),
(12, 'fitnessproapp', 'user_registration'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-25 05:33:35.591915'),
(2, 'auth', '0001_initial', '2022-04-25 05:33:36.983687'),
(3, 'admin', '0001_initial', '2022-04-25 05:33:37.430061'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-25 05:33:37.479169'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-25 05:33:37.533458'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-25 05:33:37.772516'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-25 05:33:37.945126'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-25 05:33:38.018155'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-25 05:33:38.047676'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-25 05:33:38.152665'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-25 05:33:38.159921'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-25 05:33:38.177452'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-25 05:33:38.217784'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-25 05:33:38.261567'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-25 05:33:38.364786'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-25 05:33:38.402528'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-25 05:33:38.507168'),
(18, 'sessions', '0001_initial', '2022-04-25 05:33:38.645872'),
(19, 'fitnessproapp', '0001_initial', '2022-04-27 08:46:05.899269'),
(20, 'fitnessproapp', '0002_paymenttrainee_paymenttrainer', '2022-04-28 04:37:29.036590'),
(21, 'fitnessproapp', '0003_batch', '2022-04-28 06:58:28.638155'),
(22, 'fitnessproapp', '0004_user_registration_paymenttrainee_sname', '2022-04-29 04:20:18.316801'),
(23, 'fitnessproapp', '0005_offlinetraining_status_onlinetraining_status', '2022-04-30 10:26:44.754509'),
(24, 'fitnessproapp', '0006_offlinetraining_plan_onlinetraining_plan', '2022-05-03 05:04:59.040471');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bvpaz3lxqkwj5q8iz7v97jcg48coz0hg', 'eyJUbmVfaWQiOjV9:1nnCaL:DAyTw8hJKa4NjVUwsHN4Gl3Xb4TQXzPRU2eYfo-47Y4', '2022-05-21 05:02:29.675074'),
('hfx1sal9hwxc3ieg37m8zx0flplo5zwu', 'eyJUbmVfaWQiOjV9:1nmF9z:pnxznQHqixCizrInLAxK7w-UaMqEYQIyYLSkzq0XZYs', '2022-05-18 13:35:19.469201');

-- --------------------------------------------------------

--
-- Table structure for table `fitnessproapp_batch`
--

CREATE TABLE `fitnessproapp_batch` (
  `id` bigint(20) NOT NULL,
  `day` varchar(100) NOT NULL,
  `fromtime` time(6) DEFAULT NULL,
  `totime` time(6) DEFAULT NULL,
  `workout` varchar(100) NOT NULL,
  `workoutcate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitnessproapp_batch`
--

INSERT INTO `fitnessproapp_batch` (`id`, `day`, `fromtime`, `totime`, `workout`, `workoutcate`) VALUES
(17, 'Saturday', '08:00:00.000000', '09:00:00.000000', 'Cardio', 'Fitness'),
(18, 'Monday', '09:00:00.000000', '11:00:00.000000', 'Muscle', 'Workout'),
(19, 'Wednesday', '10:00:00.000000', '12:00:00.000000', 'Weight Lose', 'Fitness'),
(21, 'Tuesday', '10:00:00.000000', '11:00:00.000000', 'Yoga', 'Motivation');

-- --------------------------------------------------------

--
-- Table structure for table `fitnessproapp_offlinetraining`
--

CREATE TABLE `fitnessproapp_offlinetraining` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(240) DEFAULT NULL,
  `lastname` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `status` varchar(240) DEFAULT NULL,
  `plan` varchar(240) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitnessproapp_offlinetraining`
--

INSERT INTO `fitnessproapp_offlinetraining` (`id`, `firstname`, `lastname`, `email`, `status`, `plan`) VALUES
(1, 'John', 'Abraham', 'john@gmail.com', 'Added', NULL),
(3, 'peter', 'mathew', 'peter@gmail.com', 'Added', NULL),
(4, 'Sanjay', 'Murali', 'sanjaymurali1910@gmail.com', 'Added', NULL),
(5, 'virat', 'kohli', 'sanjaymurali1910@gmail.com', 'Added', '6 Months Unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `fitnessproapp_onlinetraining`
--

CREATE TABLE `fitnessproapp_onlinetraining` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(240) DEFAULT NULL,
  `lastname` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `status` varchar(240) DEFAULT NULL,
  `plan` varchar(240) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitnessproapp_onlinetraining`
--

INSERT INTO `fitnessproapp_onlinetraining` (`id`, `firstname`, `lastname`, `email`, `status`, `plan`) VALUES
(3, 'christephor', 'john', 'christ@gmail.com', 'New', '6 Months Unlimited'),
(5, 'Sanjay', 'Murali', 'sanjaymuraleedharan20@gmail.com', 'Added', '3 Months Unlimited'),
(6, 'MS', 'Dhoni', 'sanjaymurali1910@gmail.com', 'Added', '12 Months Unlimited'),
(7, 'sanjay', 'Murali', 'sanjaymurali1910@gmail.com', 'Added', '3 Months Unlimited'),
(10, 'sanjay', 'murali', 'sanjaymurali1910@gmail.com', 'Added', '12 Months Unlimited'),
(14, 'Virat', 'Kohli', 'virat@gmail.com', 'Added', '12 Months Unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `fitnessproapp_paymenttrainee`
--

CREATE TABLE `fitnessproapp_paymenttrainee` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `payment` varchar(240) DEFAULT NULL,
  `name` varchar(240) DEFAULT NULL,
  `accountnumber` varchar(240) DEFAULT NULL,
  `ifsc` varchar(240) DEFAULT NULL,
  `sname` varchar(240) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitnessproapp_paymenttrainee`
--

INSERT INTO `fitnessproapp_paymenttrainee` (`id`, `date`, `payment`, `name`, `accountnumber`, `ifsc`, `sname`) VALUES
(4, '2022-05-05', '1000', 'David Joseph', '182735271990', 'FED8370', 'Sanjay Murali'),
(8, '2022-05-06', '2000', 'Mathew David', '182735271990', 'SBIN19281', 'virat Kohli'),
(9, '2022-05-06', '5000', 'Mathew David', '182735271990', 'SBIN19281', 'virat Kohli'),
(10, '2022-05-06', '1000', 'Mathew David', '1029361', 'FED8370', 'virat Kohli'),
(11, '2022-05-06', '1000', 'Mathew David', '182735271990', 'SBIN19281', 'virat Kohli');

-- --------------------------------------------------------

--
-- Table structure for table `fitnessproapp_paymenttrainer`
--

CREATE TABLE `fitnessproapp_paymenttrainer` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `payment` varchar(240) DEFAULT NULL,
  `name` varchar(240) DEFAULT NULL,
  `accountnumber` varchar(240) DEFAULT NULL,
  `ifsc` varchar(240) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitnessproapp_paymenttrainer`
--

INSERT INTO `fitnessproapp_paymenttrainer` (`id`, `date`, `payment`, `name`, `accountnumber`, `ifsc`) VALUES
(4, '2022-04-28', '2000', 'David Joseph', '182735271990', 'SBIN19281'),
(5, '2022-05-05', '5000', 'carolina', '346436357347843', 'SBIN19281'),
(6, '2022-05-06', '1000', 'Peter', '1029361', 'FED8370'),
(7, '2022-05-06', '1000', 'carolina', '182735271990', 'SBIN19281'),
(8, '2022-05-06', '5000', 'carolina', '182735271990', 'SBIN19281'),
(9, '2022-05-06', '122', 'Peter', '182735271990', 'SBIN19281');

-- --------------------------------------------------------

--
-- Table structure for table `fitnessproapp_user_registration`
--

CREATE TABLE `fitnessproapp_user_registration` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(240) DEFAULT NULL,
  `lastname` varchar(240) DEFAULT NULL,
  `username` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `status` varchar(240) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitnessproapp_user_registration`
--

INSERT INTO `fitnessproapp_user_registration` (`id`, `firstname`, `lastname`, `username`, `email`, `photo`, `password`, `status`) VALUES
(5, 'Virat ', 'Kohlt', 'Cheeku', 'kohli@gmail.com', 'images/kohli_i3oPqe5.jpg', 'virat1234', 'trainee'),
(7, 'Sanjay', 'Murali', 'sanju', 'sanjaymuraleedharan20@gmail.com', 'images/asd.jpg', '432958', 'trainee'),
(8, 'Jubin ', 'binu', 'jubin', 'jubin@gmail.com', 'images/adidas2.jpg', 'jubin1234', 'trainee'),
(9, 'Athart', 'Rachel', 'athart', 'athart@gmail.com', 'images/team-1.jpg', 'athart123', 'trainer'),
(10, 'Carolina ', 'Martin', 'carolina', 'carolina@gmail.com', 'images/team-5.jpg', 'carolina1234', 'trainer'),
(11, 'Janathan', 'Trott', 'janathan', 'janathan@gmail.com', 'images/team-2.jpg', 'janathan123', 'trainer'),
(12, 'Peter', 'Joseph', 'peter', 'peter@gmail.com', 'images/team-3.jpg', 'peter123', 'trainer'),
(13, 'Kathreena', 'William', 'kathreena', 'kathreena@gmail.com', 'images/team-6.jpg', 'kathreena123', 'trainer'),
(14, 'David', 'Williams', 'david', 'david@gmail.com', 'images/team-4.jpg', 'david123', 'trainer');

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
-- Indexes for table `fitnessproapp_batch`
--
ALTER TABLE `fitnessproapp_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitnessproapp_offlinetraining`
--
ALTER TABLE `fitnessproapp_offlinetraining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitnessproapp_onlinetraining`
--
ALTER TABLE `fitnessproapp_onlinetraining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitnessproapp_paymenttrainee`
--
ALTER TABLE `fitnessproapp_paymenttrainee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitnessproapp_paymenttrainer`
--
ALTER TABLE `fitnessproapp_paymenttrainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitnessproapp_user_registration`
--
ALTER TABLE `fitnessproapp_user_registration`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fitnessproapp_batch`
--
ALTER TABLE `fitnessproapp_batch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `fitnessproapp_offlinetraining`
--
ALTER TABLE `fitnessproapp_offlinetraining`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fitnessproapp_onlinetraining`
--
ALTER TABLE `fitnessproapp_onlinetraining`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fitnessproapp_paymenttrainee`
--
ALTER TABLE `fitnessproapp_paymenttrainee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fitnessproapp_paymenttrainer`
--
ALTER TABLE `fitnessproapp_paymenttrainer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fitnessproapp_user_registration`
--
ALTER TABLE `fitnessproapp_user_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
