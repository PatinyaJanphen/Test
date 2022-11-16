-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 02:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `halami`
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add basket', 8, 'add_basket'),
(30, 'Can change basket', 8, 'change_basket'),
(31, 'Can delete basket', 8, 'delete_basket'),
(32, 'Can view basket', 8, 'view_basket'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart');

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
(1, 'pbkdf2_sha256$390000$7QmEdc2ZZCh31vKF6cdEaK$7l9KNyQhs0CA4LdxtF3ufQzIRUUiiYJKJXvCN1avWAY=', '2022-11-15 12:51:40.330921', 1, 'nanaho789', 'nana', 'ho', 'nanaho789@gmail.com', 1, 1, '2022-11-01 14:59:51.332433'),
(2, 'pbkdf2_sha256$390000$biQCLbwFFtjvxhuYsEJtmy$hKtIvokRdx8T58a0xHXjzSQnn6rPV0/4MrE9b8LwYQI=', '2022-11-15 06:30:31.625269', 0, 'nana11', '', '', 'safas@hmail.com', 0, 1, '2022-11-15 06:30:24.464389'),
(3, 'pbkdf2_sha256$390000$zB7MB9hdGd2hkRXFgZnMSF$aUQZJatur1m638xk22MfS0tUoy/eRcZNNMDJsYbqEuw=', NULL, 0, 'na1', '', '', 'na1@gmail.com', 0, 1, '2022-11-15 06:38:23.310097'),
(4, 'pbkdf2_sha256$390000$7J2fB4sYPNpLpOfn7kkmQd$0Rt0oiyoLrjLkc3lIw2E1iAS0BxdhwcT1TaJWGX3ljU=', '2022-11-15 06:41:16.919767', 0, 'na2', '', '', 'na2@gmail.com', 0, 1, '2022-11-15 06:39:26.323989'),
(5, 'pbkdf2_sha256$390000$EPPCbI71vUcrtHgKQiba1C$EJ13bgOxevkeOIEu+8/mfqdfbYQgPPM8QCLsRbvQUXY=', '2022-11-15 13:33:18.893299', 0, 'na6', 'a', 's', 'na6@gmail.com', 0, 1, '2022-11-15 06:44:19.220963'),
(6, 'pbkdf2_sha256$390000$AlyucOyP88GMLCCj99Gkjn$UzXgQvKFOto6Rq1YmEiefCHh4KKiO16/6yaF8v5qPc4=', NULL, 0, 'na61', '', '', 'na6@gmail.com', 0, 1, '2022-11-15 06:46:41.524109');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-02 04:28:39.437279', '4', 'Product object (4)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-11-02 04:32:28.962573', '5', 'Product object (5)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-11-02 04:43:49.708700', '6', 'Product object (6)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-11-02 05:57:25.054652', '6', 'Product object (6)', 3, '', 7, 1),
(5, '2022-11-02 12:11:03.340090', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(6, '2022-11-02 12:11:11.756819', '3', 'Product object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(7, '2022-11-02 12:11:16.434000', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(8, '2022-11-02 12:11:23.639410', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(9, '2022-11-02 12:24:38.655369', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(10, '2022-11-02 12:25:32.463672', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(11, '2022-11-02 12:25:36.909542', '3', 'Product object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(12, '2022-11-02 12:25:41.547890', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(13, '2022-11-02 12:25:51.253805', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(14, '2022-11-02 12:34:26.518406', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(15, '2022-11-02 12:41:09.387325', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(16, '2022-11-02 12:41:15.222160', '3', 'Product object (3)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(17, '2022-11-02 12:41:19.511530', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(18, '2022-11-02 12:41:25.953026', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(19, '2022-11-02 12:44:14.378840', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(20, '2022-11-02 12:50:48.418754', '1', 'basket v2 (id=1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(21, '2022-11-02 12:54:25.256925', '1', 'basket v2 (id=1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(22, '2022-11-02 12:55:32.649241', '1', 'basket v2 (id=1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(23, '2022-11-02 13:19:18.561836', '3', 'basket v3', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(24, '2022-11-02 13:19:23.015098', '4', 'ตะกร้าv4', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(25, '2022-11-02 13:19:27.270926', '5', 'basket v5', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(26, '2022-11-03 03:15:42.435942', '5', 'basket v5', 3, '', 7, 1),
(27, '2022-11-03 03:16:08.905238', '4', 'ตะกร้าv4', 3, '', 7, 1),
(28, '2022-11-05 02:55:12.701198', '7', 'ttttt', 1, '[{\"added\": {}}]', 7, 1),
(29, '2022-11-05 02:55:36.053811', '7', 'ttttt', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(30, '2022-11-05 03:16:29.660812', '8', 'dfsdf', 1, '[{\"added\": {}}]', 7, 1),
(31, '2022-11-15 12:34:34.185014', '9', 'fsdf', 1, '[{\"added\": {}}]', 7, 1);

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
(8, 'basket', 'basket'),
(5, 'contenttypes', 'contenttype'),
(9, 'products', 'cart'),
(7, 'products', 'product'),
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
(1, 'contenttypes', '0001_initial', '2022-10-15 15:52:40.681182'),
(2, 'auth', '0001_initial', '2022-10-15 15:52:40.887151'),
(3, 'admin', '0001_initial', '2022-10-15 15:52:40.938825'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-15 15:52:40.944504'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-15 15:52:40.948854'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-15 15:52:40.978584'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-15 15:52:41.000795'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-15 15:52:41.011631'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-15 15:52:41.015743'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-15 15:52:41.033795'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-15 15:52:41.035887'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-15 15:52:41.040426'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-15 15:52:41.048947'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-15 15:52:41.058896'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-15 15:52:41.069147'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-15 15:52:41.074409'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-15 15:52:41.082652'),
(18, 'sessions', '0001_initial', '2022-10-15 15:52:41.100439'),
(19, 'products', '0001_initial', '2022-10-15 16:12:24.841446'),
(20, 'products', '0002_product_description_product_special_price', '2022-10-15 16:24:14.583413'),
(21, 'basket', '0001_initial', '2022-10-16 04:10:13.989961'),
(22, 'products', '0003_product_material', '2022-11-01 16:05:04.161651'),
(23, 'products', '0004_product_image_alter_product_description_and_more', '2022-11-02 12:07:13.271176'),
(24, 'products', '0005_alter_product_image', '2022-11-02 12:47:13.116590'),
(25, 'products', '0006_alter_product_image_cart', '2022-11-05 05:07:24.122003'),
(26, 'products', '0007_cart_quantity', '2022-11-06 03:54:52.549932'),
(27, 'products', '0008_delete_cart', '2022-11-06 03:54:52.558928'),
(28, 'products', '0009_cart', '2022-11-06 03:55:20.850050'),
(29, 'products', '0007_delete_cart', '2022-11-14 09:29:14.034859'),
(30, 'products', '0008_cart', '2022-11-14 09:29:37.257013');

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
('7zre7u7oapdfv0nfkulmkkktonwlcsi4', 'e30:1oupbS:GAJK4Y-_j2BMJaHr5y8d3xWOWY6lkffLcLxmTe6hVjg', '2022-11-29 06:39:26.432795'),
('9csksxqc5lufjq9z7hbtkk3ambmxfq7o', '.eJxVjDEOwjAMRe-SGUVJ6lCXkZ0zRHZsSAGlUtNOiLtDpQ6w_vfef5lE61LS2nROo5iTiebwuzHlh9YNyJ3qbbJ5qss8st0Uu9NmL5Po87y7fweFWvnWgcBhzNJRj8JxQOcE2XvUjuRKhIzM0B8H8OgQIIhXRR8iZ2CHwbw_4rM3mw:1ouwBf:iuMxxRAkj0aGs09KDhqs5_Gj-MFzz4HwoqG2-dwvL1Y', '2022-11-29 13:41:15.586966'),
('swx8hx5vdpyle28swdso7rlmnrkll3in', '.eJxVjDsOwyAQRO9CHSHMZw0p0_sMaGEhOImwZOwqyt2DJRdJM8WbN_NmHvet-L2l1c_Ermxgl18WMD5TPQp6YL0vPC51W-fAD4WfbePTQul1O92_g4Kt9DWAciZiRghaCdLokjXUQ7mxQyAJQmodos0w2qQCGKnJQkhiyESSfb7hBjfr:1opskJ:xchETNntF4WB4EsCN_IT2-FDTy2QX0UaOsNjMgR71Q4', '2022-11-15 15:00:07.685419');

-- --------------------------------------------------------

--
-- Table structure for table `products_cart`
--

CREATE TABLE `products_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_cart`
--

INSERT INTO `products_cart` (`id`, `quantity`, `product_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` bigint(20) NOT NULL,
  `name_product` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  `special_price` int(11) DEFAULT NULL,
  `material` varchar(60) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `name_product`, `price`, `description`, `special_price`, `material`, `image`) VALUES
(1, 'basket v2', 1890, 'ใช้ง่ายยยยยยยยยยยยยง', 869, 'ไม้', 'productsImage/ดาวนโหลด.jpg'),
(3, 'basket v3', 115, '', NULL, 'พลาสติก', 'productsImage/ดาวนโหลด_1.jpg'),
(7, 'ttttt', 111, '', 11, NULL, 'productsImage/fiona-murray-kQ5z2uApZrE-unsplash.jpg'),
(8, 'dfsdf', 324, '', NULL, NULL, 'productsImage/basket4.jpg'),
(9, 'fsdf', 111, 'sdfsfsf', NULL, NULL, 'productsImage/ดาวนโหลด_3_MrxikK9.jpg');

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
-- Indexes for table `products_cart`
--
ALTER TABLE `products_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cart_product_id_52080291_fk_products_product_id` (`product_id`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products_cart`
--
ALTER TABLE `products_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Constraints for table `products_cart`
--
ALTER TABLE `products_cart`
  ADD CONSTRAINT `products_cart_product_id_52080291_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
