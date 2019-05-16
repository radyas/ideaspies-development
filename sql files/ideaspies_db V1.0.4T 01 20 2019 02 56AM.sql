-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2019 at 10:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideaspies_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'RCsr7Qt1bBMqFwlW4bBVvtu02UBBQ0hr', 1, '2015-07-11 06:09:31', '2015-07-11 06:09:31', '2015-07-11 06:09:31'),
(5, 7, 'KB71pV1DYudR9TzPPQnGxRXQBoo7jV0E', 1, '2016-01-06 17:35:57', '2016-01-06 17:35:57', '2016-01-06 17:35:57'),
(8, 10, 'Bs5wlBYLO997Z8lcLpO19pj40fx2qVuV', 1, '2016-01-07 18:20:38', '2016-01-07 18:20:38', '2016-01-07 18:20:38'),
(9, 11, '0dsYg0Ft0IZFKMP7qIs1nbpK0f8gif6y', 1, '2016-01-07 18:48:38', '2016-01-07 18:48:38', '2016-01-07 18:48:38'),
(10, 12, 'yfD7K4mMa3eend4vvBBPNVbyFeX3UGZF', 1, '2016-01-07 18:57:38', '2016-01-07 18:57:38', '2016-01-07 18:57:38'),
(14, 9, 'i7J1jS1CbeCsMb40JdWwQLSFfoOWdngc', 1, '2017-01-23 07:05:39', '2017-01-23 07:05:39', '2017-01-23 07:05:39'),
(15, 10, '8eiPuz7KrCZXYjiMEY1wmkLuPbmMrSwI', 1, '2017-12-27 14:10:24', '2017-12-27 14:10:24', '2017-12-27 14:10:24'),
(16, 11, 'htzbXZnJuH098fhWA5e8V5QLberPA1IA', 1, '2018-01-07 14:18:27', '2018-01-07 14:18:27', '2018-01-07 14:18:27'),
(18, 12, 'PnJ03QoBnJMegHXmGCXh6bcoXArycqr5', 1, '2018-01-29 16:15:58', '2018-01-29 16:15:58', '2018-01-29 16:15:58'),
(20, 15, 'ivsgJeobsGYHI1oHtQo5oTzkBOb6A9WL', 1, '2018-02-01 04:44:24', '2018-02-01 04:44:24', '2018-02-01 04:44:24'),
(21, 17, 'jDkUMCYv0VpNfdrlsxKEFa2wCI78R7DP', 1, '2018-02-01 04:45:53', '2018-02-01 04:45:53', '2018-02-01 04:45:53'),
(22, 18, 'WCbfDN6mTvtTfu2DHELZfkgDgd7B6phA', 1, '2018-02-01 04:58:20', '2018-02-01 04:58:20', '2018-02-01 04:58:20'),
(23, 19, '70ytUN9RjCsVU0qnwno2RseFZRulBXZk', 1, '2018-02-07 16:09:36', '2018-02-07 16:09:36', '2018-02-07 16:09:36'),
(24, 11, 'OTRmEEVvix8rTHBvWtEhFhcyp1DYba6G', 1, '2018-04-03 14:19:47', '2018-04-03 14:19:46', '2018-04-03 14:19:47'),
(25, 12, 'PxCOBJb9Ka41uzOxkRBfhyihNcQYoxYX', 1, '2018-12-01 06:01:45', '2018-12-01 06:01:45', '2018-12-01 06:01:45'),
(26, 13, 'P0C8x3Fqbldfdzsc0TUoSU8XZGaQwpbv', 1, '2018-12-01 06:06:37', '2018-12-01 06:06:37', '2018-12-01 06:06:37'),
(27, 14, 'cnAwQFcHDq3pWZvDlUgvIIVchdpHafZX', 1, '2018-12-06 04:20:55', '2018-12-06 04:20:55', '2018-12-06 04:20:55'),
(28, 15, 'fAW2eGlmELZOgk5BWtl1bq6zpc4ZbwFC', 1, '2018-12-06 04:22:54', '2018-12-06 04:22:54', '2018-12-06 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'test1', '2018-10-24 05:52:07', '2018-10-24 06:04:48'),
(2, 'test', '2018-10-24 05:52:07', '2018-10-24 05:52:07'),
(3, 'test', '2018-10-24 05:52:07', '2018-10-24 05:52:07'),
(4, 'dasd', '2018-10-24 05:54:50', '2018-10-24 05:54:50'),
(5, 'test', '2018-12-01 09:15:10', '2018-12-01 09:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `lft` int(11) NOT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `label`, `link`, `icon`, `parent`, `permissions`, `lft`, `rgt`, `depth`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Root Menu', '#', NULL, NULL, NULL, 1, 38, 0, 1, '2016-09-20 18:30:00', '2018-10-27 07:27:56'),
(2, 'MENU MANAGEMENT', 'menu/list', NULL, 1, '[\"menu.add\",\"admin\"]', 2, 3, 1, 1, '2016-09-20 18:30:00', '2017-12-24 11:09:01'),
(4, 'USER MANAGEMENT', '#', NULL, 1, '[\"user.list\",\"user.add\",\"user.edit\",\"user.delete\",\"admin\"]', 8, 17, 1, 1, '2016-09-21 05:26:25', '2018-12-01 07:54:21'),
(5, 'PERMISSION', 'permission/list', NULL, 4, '[\"admin\"]', 9, 10, 2, 1, '2016-09-21 05:26:51', '2018-12-01 07:54:21'),
(6, 'ROLE', 'user/role/list', NULL, 4, '[\"admin\"]', 11, 12, 2, 1, '2016-09-21 05:27:15', '2018-12-01 07:54:21'),
(7, 'USER', 'user/list', NULL, 4, '[\"user.list\",\"user.add\",\"user.edit\",\"user.delete\",\"admin\"]', 13, 14, 2, 1, '2016-09-21 05:27:51', '2018-12-01 07:54:21'),
(9, 'SETTINGS', 'admin/setting/all', NULL, 1, '[\"admin\",\"admin\"]', 18, 19, 1, 1, '2018-07-14 07:02:02', '2018-12-01 07:54:21'),
(10, 'CATEGORY MANAGEMENT ', 'admin/category/list', NULL, 1, '[\"admin\",\"admin\"]', 4, 5, 1, 1, '2018-10-24 04:57:38', '2018-12-01 07:54:21'),
(11, 'IDEA MANAGEMENT ', 'admin/post/list', NULL, 1, '[\"user\",\"admin\"]', 36, 37, 1, 1, '2018-10-27 07:27:56', '2018-12-01 09:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2018_10_24_101138_create_table_categories', 1),
('2018_10_27_102252_create_posts_table', 2),
('2014_01_07_073615_create_tagged_table', 3),
('2014_01_07_073615_create_tags_table', 3),
('2016_06_29_073615_create_tag_groups_table', 3),
('2016_06_29_073615_update_tags_table', 3),
('2018_12_01_180628_add_active_column_to_users', 4),
('2018_12_10_181105_add_title_to_posts_table', 5),
('2018_12_15_185159_change_settings_table', 6),
('2018_12_25_105650_create_post_notification_views_table', 7),
('2019_01_07_203838_insert_admin_email_column_to_setting', 8),
('2019_01_12_200053_add_visit_count_to_posts', 9),
('2019_01_12_211304_create_post_rates_table', 9),
('2019_01_12_212624_add_post_id_to_post_rates', 9);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `description`, `user_id`, `created_at`, `updated_at`, `image`) VALUES
(4, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 1, '2018-07-14 05:54:49', '2018-07-14 05:54:49', 'core/storage/uploads/images/news/news-20180715223641.png'),
(5, 'et justo duo dolores et ea rebum. Stet clita kasd gubergren, no ', 'et-justo-duo-dolores-et-ea-rebum-stet-clita-kasd-gubergren-no', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 1, '2018-07-14 05:56:11', '2018-07-14 05:56:11', 'core/storage/uploads/images/news/news-20180715223641.png'),
(6, 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed1 1', 'diam-nonumy-eirmod-tempor-invidunt-ut-labore-et-dolore-magna-aliquyam-erat-sed', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet1.1', 1, '2018-07-14 06:05:07', '2018-07-14 06:22:47', 'core/storage/uploads/images/news/news-20180715223641.png'),
(7, 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', 'diam-nonumy-eirmod-tempor-invidunt-ut-labore-et-dolore-magna-aliquyam-erat-sed', 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', 1, '2018-07-14 06:05:53', '2018-07-14 06:05:53', 'core/storage/uploads/images/news/news-20180715223641.png'),
(8, 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', 'diam-nonumy-eirmod-tempor-invidunt-ut-labore-et-dolore-magna-aliquyam-erat-sed', 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', 1, '2018-07-14 06:06:34', '2018-07-14 06:06:34', 'core/storage/uploads/images/news/news-20180715223641.png'),
(9, 'asdasd', 'asdasd', 'asdasd', 1, '2018-07-14 06:06:57', '2018-07-14 06:06:57', 'core/storage/uploads/images/news/news-20180715223641.png'),
(10, 'asdasdasd', 'asdasdasd', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 1, '2018-07-15 17:06:41', '2018-07-15 17:40:06', 'core/storage/uploads/images/news/news-20180715231006.png'),
(11, 'asdasd', 'asdasd', 'adasdas', 1, '2018-07-27 14:54:47', '2018-07-27 14:54:47', 'core/storage/uploads/images/news/news-20180727202447.png'),
(12, 'adasdas', 'adasdas', 'asdasd', 1, '2018-07-27 14:55:59', '2018-07-27 14:55:59', 'core/storage/uploads/images/news/news-20180727202559.png'),
(13, 'adsasd', 'adsasd', 'asdasd', 1, '2018-07-27 15:08:55', '2018-07-27 15:08:55', 'core/storage/uploads/images/news/news-20180727203855.png'),
(14, 'asdasd', 'asdasd', 'asdasd', 1, '2018-07-27 15:12:58', '2018-07-27 15:12:58', 'core/storage/uploads/images/news/news-20180727204257.png'),
(16, 'asd', 'asd', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 1, '2018-07-27 15:16:56', '2018-07-27 16:58:27', 'core/storage/uploads/images/news/news-20180727204656.png');

-- --------------------------------------------------------

--
-- Table structure for table `news_images`
--

CREATE TABLE `news_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `src` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_images`
--

INSERT INTO `news_images` (`id`, `news_id`, `src`, `created_at`, `updated_at`) VALUES
(1, 10, 'core/storage/uploads/images/news_slider/news-20180715223641.png', '2018-07-15 17:06:41', '2018-07-15 17:06:41'),
(2, 10, 'core/storage/uploads/images/news_slider/news-20180715223642.png', '2018-07-15 17:06:42', '2018-07-15 17:06:42'),
(3, 12, 'core/storage/uploads/images/news_slider/news-20180727202559.png', '2018-07-27 14:55:59', '2018-07-27 14:55:59'),
(5, 12, 'core/storage/uploads/images/news_slider/news-20180727203312.png', '2018-07-27 15:03:12', '2018-07-27 15:03:12'),
(6, 13, 'core/storage/uploads/images/news_slider/news-20180727203855.png', '2018-07-27 15:08:55', '2018-07-27 15:08:55'),
(7, 13, 'core/storage/uploads/images/news_slider/news-20180727203855.png', '2018-07-27 15:08:55', '2018-07-27 15:08:55'),
(8, 16, 'core/storage/uploads/images/news_slider/news-201807272046560.png', '2018-07-27 15:16:56', '2018-07-27 15:16:56'),
(9, 16, 'core/storage/uploads/images/news_slider/news-201807272046581.png', '2018-07-27 15:16:58', '2018-07-27 15:16:58'),
(10, 16, 'core/storage/uploads/images/news_slider/news-201807272048080.png', '2018-07-27 15:18:08', '2018-07-27 15:18:08'),
(11, 16, 'core/storage/uploads/images/news_slider/news-201807272048081.png', '2018-07-27 15:18:08', '2018-07-27 15:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Normal Registered User', 1, 1, '2015-07-24 18:30:00', '2015-12-01 23:24:39'),
(2, 'menu.add', NULL, 1, 1, '2015-07-24 18:30:00', '2015-12-03 02:32:41'),
(3, 'menu.list', NULL, 1, 1, '2015-07-24 18:30:00', '2015-12-01 23:24:54'),
(4, 'menu.edit', NULL, 1, 1, '2015-07-24 18:30:00', '2015-12-01 23:24:57'),
(5, 'menu.status', NULL, 1, 1, '2015-07-24 18:30:00', '2015-12-01 23:25:01'),
(6, 'admin', 'Super Admin Permission', 1, 1, '2015-07-24 18:30:00', '2015-07-24 18:30:00'),
(7, 'index', 'Home Page Permission', 1, 1, '2015-07-24 18:30:00', '2015-12-01 23:25:03'),
(8, 'menu.delete', NULL, 1, 1, '2015-09-06 09:00:06', '2015-09-06 09:00:09'),
(9, 'user.add', NULL, 1, 1, '2015-10-15 18:30:00', '2015-10-15 18:30:00'),
(10, 'user.edit', NULL, 1, 1, '2015-10-15 18:30:00', '2015-10-15 18:30:00'),
(11, 'user.delete', NULL, 1, 1, '2015-10-15 18:30:00', '2015-10-15 18:30:00'),
(12, 'user.list', NULL, 1, 1, '2015-10-19 18:30:00', '2015-10-20 14:31:57'),
(13, 'user.role.add', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(14, 'user.role.edit', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(15, 'user.role.list', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(16, 'user.role.delete', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(17, 'permission.add', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(18, 'permission.edit', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(19, 'permission.delete', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(20, 'permission.list', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(21, 'permission.group.add', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(22, 'permission.group.edit', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(23, 'permission.group.list', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(24, 'permission.group.delete', NULL, 1, 1, '2015-10-21 18:30:00', '2015-10-21 18:30:00'),
(25, 'user.status', NULL, 1, 1, '2015-12-18 18:30:47', '2015-12-18 18:30:47'),
(26, 'device.list', 'DEVICE LIST', 1, 1, '2017-01-23 13:14:34', '2017-03-12 17:23:58'),
(27, 'dashboard', 'DASHBOARD', 1, 1, '2017-01-23 13:18:39', '2017-01-23 13:18:39'),
(28, 'device.add', 'DEVICE ADD', 1, 1, '2017-01-23 13:19:46', '2017-01-23 13:19:46'),
(29, 'device.edit', 'DEVICE EDIT', 1, 1, '2017-01-23 13:20:02', '2017-01-23 13:20:02'),
(30, 'device.delete', 'DEVICE DELETE', 1, 1, '2017-01-23 13:20:24', '2017-01-23 13:20:24'),
(31, 'gallery.list', 'GALLERY LIST', 1, 1, '2017-01-23 13:21:05', '2017-01-23 13:21:05'),
(32, 'gallery.add', 'Gallery ADD', 1, 1, '2017-01-23 13:21:23', '2017-01-23 13:21:23'),
(33, 'gallery.edit', 'GALLERY EDIT', 1, 1, '2017-01-23 13:21:36', '2017-01-23 13:21:36'),
(34, 'gallery.delete', 'GALLERY DELETE', 1, 1, '2017-01-23 13:21:53', '2017-01-23 13:21:53'),
(35, 'reservation.list', 'RESERVATION LIST', 1, 1, '2017-01-28 05:34:27', '2017-01-28 05:34:27'),
(36, 'product.list', 'PRODUCT LIST', 1, 1, '2017-02-20 09:07:26', '2017-02-20 09:07:26'),
(37, 'product.add', 'PRODUCT ADD', 1, 1, '2017-02-20 09:07:49', '2017-02-20 09:07:49'),
(38, 'product.edit', 'PRODUCT EDIT', 1, 1, '2017-02-20 09:08:08', '2017-02-20 09:08:08'),
(39, 'product.delete', 'PRODUCT DELETE', 1, 1, '2017-03-14 15:24:22', '2017-03-14 15:24:22'),
(40, 'series.list', 'SERIES LIST', 1, 1, '2017-03-14 15:31:49', '2017-03-14 15:31:49'),
(41, 'series.add', 'SERIES ADD', 1, 1, '2017-03-14 15:32:03', '2017-03-14 15:32:03'),
(42, 'series.edit', 'SERIES EDIT', 1, 1, '2017-03-14 15:32:17', '2017-03-14 15:32:17'),
(43, 'series.delete', 'SERIES DELETE', 1, 1, '2017-03-14 15:32:33', '2017-03-14 15:32:33'),
(44, 'feature.add', 'ADD FEATURE', 1, 1, '2017-03-26 04:12:51', '2017-03-26 04:12:51'),
(45, 'feature.edit', 'EDIT FEATURE', 1, 1, '2017-03-26 04:13:08', '2017-03-26 04:13:08'),
(46, 'feature.list', 'LIST FEATURE', 1, 1, '2017-03-26 04:13:23', '2017-03-26 04:13:23'),
(47, 'feature.delete', 'DELETE FEATURE', 1, 1, '2017-03-26 04:13:41', '2017-03-26 04:13:41'),
(48, 'blog', 'BLOG', 1, 1, '2017-04-03 17:32:46', '2017-04-03 17:32:46'),
(49, 'blog.add', 'ADD BLOG', 1, 1, '2017-05-08 16:17:46', '2017-05-08 16:17:46'),
(50, 'blog.edit', 'EDIT BLOG', 1, 1, '2017-05-08 16:18:01', '2017-05-08 16:18:01'),
(51, 'blog.list', 'LIST BLOG', 1, 1, '2017-05-08 16:18:13', '2017-05-08 16:18:13'),
(52, 'blog.delete', 'DELETE BLOG', 1, 1, '2017-05-08 16:18:28', '2017-05-08 16:18:28'),
(53, 'destination.list', '', 1, 1, '2018-02-25 10:46:36', '2018-02-25 10:46:36'),
(54, 'destination.add', '', 1, 1, '2018-02-25 10:46:43', '2018-02-25 10:46:43'),
(55, 'destination.edit', '', 1, 1, '2018-02-25 10:47:04', '2018-02-25 10:47:04'),
(56, 'destination.delete', '', 1, 1, '2018-02-25 10:47:12', '2018-02-25 10:47:12'),
(57, 'hotel.add', '', 1, 1, '2018-03-01 09:15:53', '2018-03-01 09:15:53'),
(58, 'hotel.edit', '', 1, 1, '2018-03-01 09:16:01', '2018-03-01 09:16:01'),
(59, 'hotel.list', '', 1, 1, '2018-03-01 09:16:50', '2018-03-01 09:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, '0q0ygX6vhRbhWLfDVMQjCpuVVi4Uv21m', '2015-07-11 06:09:55', '2015-07-11 06:09:55'),
(2, 1, 'efBjwoN42yjE5Pbbbn3NOvAQMh6Hc47p', '2015-07-13 04:42:45', '2015-07-13 04:42:45'),
(4, 1, 'dkYUwD816i7YeZLaLmENn7b7qXyRV6jE', '2015-07-13 09:43:07', '2015-07-13 09:43:07'),
(5, 1, 'fsVkzYpy5e5SIno5317Viix318Ipevum', '2015-07-14 09:12:12', '2015-07-14 09:12:12'),
(7, 1, 'BYdFxgUBhE9H2BqP6PEg5tQXjQvapGkk', '2015-07-14 13:23:52', '2015-07-14 13:23:52'),
(8, 1, 'UuheCz7Zmb1WM2zsJVnJv3yMtHrCZXZP', '2015-07-18 14:05:42', '2015-07-18 14:05:42'),
(9, 1, 'ugwMinnLII8pAvdX48uibN4tCfFncKxL', '2015-07-25 07:14:39', '2015-07-25 07:14:39'),
(10, 1, '6sv5Vmes7x5zzF5kp9BIiF0e3J7uatEA', '2015-07-25 16:02:42', '2015-07-25 16:02:42'),
(12, 1, 'AAPH0gv7ueGmg1GHT3CDDb8CuqliETTr', '2015-07-27 03:30:05', '2015-07-27 03:30:05'),
(17, 1, 'EvOMH9hGBkW3nS9TJjtnZOajBh8b2nH8', '2015-08-13 15:29:00', '2015-08-13 15:29:00'),
(18, 1, 'sgY1xcvVRC3q8s2Qe5IgY6k4NVdw8Bw2', '2015-08-13 15:30:50', '2015-08-13 15:30:50'),
(19, 1, 'smRBCmpzbBL4RTXJZcaAW5Wr4quWzvnA', '2015-08-14 04:38:36', '2015-08-14 04:38:36'),
(20, 1, 'C1xwzvvNREHhtx6JqQEZSTEPMbzY7J6F', '2015-08-14 04:43:16', '2015-08-14 04:43:16'),
(23, 1, '0XUcBHFDSxUgWDZsdPt9Oigx5cIfQ5KR', '2015-08-14 10:19:04', '2015-08-14 10:19:04'),
(24, 1, 'LeqsntX9HwB19oOzfqFICR3TB2xHZt5c', '2015-08-14 15:46:49', '2015-08-14 15:46:49'),
(25, 1, 'ZRilkZu1axOqoPqkAbNzA4ZPQccDHLEf', '2015-08-15 08:49:49', '2015-08-15 08:49:49'),
(26, 1, 'fHHSkcipQkFfpeTYIcxmFqKS2IKL0ozJ', '2015-08-17 04:11:53', '2015-08-17 04:11:53'),
(27, 1, 'Gev3KH0ERZX7UFA6QASlHd4wW9Tm47cz', '2015-08-17 07:52:08', '2015-08-17 07:52:08'),
(28, 1, 'Pu0bSNJwO7XEhfmr8Ubg28c5HWp2BCfN', '2015-08-18 03:31:21', '2015-08-18 03:31:21'),
(29, 1, 'FkavnjEGjcidC4hGsJwf5JepGpglq09u', '2015-08-18 05:33:49', '2015-08-18 05:33:49'),
(30, 1, 'GfVyVFbRB7yBaekFtBu3l16pB95iDYyv', '2015-08-18 12:41:28', '2015-08-18 12:41:28'),
(32, 1, '7Qa9ckHVYsRkTgnZNSQ9szqJ7ORRwqqP', '2015-08-19 14:13:25', '2015-08-19 14:13:25'),
(34, 1, '7gzkQXDRziKCU3V6YN3os6oty3ZYmm3V', '2015-08-20 05:10:32', '2015-08-20 05:10:32'),
(35, 1, 'PPni5OZ4t4Ukf7GqJhJTowQUbG1BKTCO', '2015-08-24 11:32:19', '2015-08-24 11:32:19'),
(39, 1, '1Vq5gtTDFk3uhKn9AHMOnWwQxiNq8eNm', '2015-08-24 15:02:07', '2015-08-24 15:02:07'),
(40, 1, '9tal1AP1HQ4usfTnI3Q0kXSrPzScKtnz', '2015-08-25 07:26:55', '2015-08-25 07:26:55'),
(41, 1, 'FDkLOdsEvF0HzB1XvBQ8GKAQZ9oq80xS', '2015-08-25 13:20:00', '2015-08-25 13:20:00'),
(42, 1, 'LW0maecSnWGHR1uvR1ev67CmiePNeYQb', '2015-08-26 03:13:11', '2015-08-26 03:13:11'),
(43, 1, 'c7UCeZhd2AdNOrNIrzFeP8Z2xHSPBOat', '2015-08-26 07:51:39', '2015-08-26 07:51:39'),
(44, 1, 'DmiuJhBD8ndKrxeQzYUgKJ0qdr5VfgEp', '2015-08-26 07:53:05', '2015-08-26 07:53:05'),
(45, 1, 'EvLSeVbZ4LpQHpIwn3ESkPmKiHZYqChR', '2015-08-26 14:13:08', '2015-08-26 14:13:08'),
(46, 1, 'ZaFHszTHVJxdXVHyYyDUiVrjDsVLF2os', '2015-08-27 03:20:53', '2015-08-27 03:20:53'),
(47, 1, 'E26Ajf3IuoSAQBDRGUnJxBXuLWf45qTE', '2015-08-28 05:30:55', '2015-08-28 05:30:55'),
(48, 1, '6gvIBqAaNqIHUC1GXGnvpobgXDqyGFWV', '2015-08-28 08:52:35', '2015-08-28 08:52:35'),
(49, 1, 'C9iOcAwSX8vcFZVUkRrnb7BTEmFfb1lW', '2015-08-28 11:24:30', '2015-08-28 11:24:30'),
(50, 1, 'm8HlkBppqVOmVtvm8WXn1gflqnpxZ7ZX', '2015-08-28 15:43:47', '2015-08-28 15:43:47'),
(51, 1, 'Ga2L52MViQQHOjQmC0B3NIwKoFoeC5LU', '2015-08-29 06:56:46', '2015-08-29 06:56:46'),
(52, 1, 'pEnesSMPpp8XwoXBGc0AQIxG8a0NlJL7', '2015-08-29 10:11:51', '2015-08-29 10:11:51'),
(53, 1, 'DOyCW9LubRxZlUZI1VM9VWmwEHFqEtuy', '2015-08-30 08:15:08', '2015-08-30 08:15:08'),
(54, 1, 'hQnXdF66aT6GWv1bjMfdQlrFzXCKzPaD', '2015-09-01 12:43:49', '2015-09-01 12:43:49'),
(55, 1, 'SofbScd28GADuBXJkBe02t4wNesj1pyc', '2015-09-02 03:46:21', '2015-09-02 03:46:21'),
(58, 1, 'S9zBLvLOtfn86jn2YZ7o4cDDIXir5odO', '2015-09-06 11:03:49', '2015-09-06 11:03:49'),
(59, 1, 'jhnFLwdIIq3akmuFjwNT5hXRbskFN8Cv', '2015-09-07 03:30:41', '2015-09-07 03:30:41'),
(65, 1, 'Yzp3Ic2rJbT21gHfSHQAyNH9sySMzNx8', '2015-09-17 07:08:02', '2015-09-17 07:08:02'),
(66, 1, 'FPxtt7aeMIpDuoEEIrFeXfS289y6YyrI', '2015-09-17 07:10:28', '2015-09-17 07:10:28'),
(67, 1, 'DE0xeUB6zv2l9VC7hlbHeVKZdNVgba2k', '2015-09-17 07:12:20', '2015-09-17 07:12:20'),
(68, 1, 'VSigkljclaPzU2jbUTnEPb7uAqbq7OO4', '2015-09-17 07:16:25', '2015-09-17 07:16:25'),
(69, 1, 'u1u64fxr5E8cVetPE2xfwXXlZg8ETdMt', '2015-09-17 07:18:29', '2015-09-17 07:18:29'),
(70, 1, 'IsPKSyDwN4yyBDpHDCQTFIA9cb9tDvho', '2015-09-17 07:20:56', '2015-09-17 07:20:56'),
(71, 1, 'Mqwwg7Ji564GosYUs8ew6p56lVqTNggm', '2015-09-17 07:21:06', '2015-09-17 07:21:06'),
(72, 1, 'ReDZfYlXcI3vckn50feKIYFukwEIaJxW', '2015-09-17 07:25:47', '2015-09-17 07:25:47'),
(73, 1, '1zPiFaCd2KentN0BEVayuoIqOfxi3lMS', '2015-09-17 07:26:15', '2015-09-17 07:26:15'),
(75, 1, 'FiS9P7LCFRk2i3wnNHZJqODlZaBMPBsH', '2015-09-17 07:27:16', '2015-09-17 07:27:16'),
(77, 1, 'w6afABnpTAwYkETiZ1LpLEG31RUMR9J9', '2015-09-17 07:44:14', '2015-09-17 07:44:14'),
(80, 1, 'zEQJ08oNoKnzyenYvSBPlGNkYrQRb9iU', '2015-09-17 09:38:48', '2015-09-17 09:38:48'),
(81, 1, 'ngBYUNkxL2QkLY5Lj7EHCsAY8VRUPIss', '2015-09-17 10:37:24', '2015-09-17 10:37:24'),
(82, 1, 'qPnddeucFgMvXEyCDsm99LGWgtiKQJI0', '2015-09-17 11:07:58', '2015-09-17 11:07:58'),
(83, 1, 'y8KppplOMITXfiYtuU10r96MmBw2fn4Z', '2015-09-17 11:24:17', '2015-09-17 11:24:17'),
(87, 1, '1O0lJH2OdlZ5JYPb7OzU95hN9DD9D08f', '2015-09-18 05:47:44', '2015-09-18 05:47:44'),
(91, 1, 'F2EASmRV02xRfOorilcer2HPJR0ff10w', '2015-09-21 03:23:43', '2015-09-21 03:23:43'),
(93, 1, 'XtZHW8aWJtnVDHLcFpJjfzuFQCI4BarH', '2015-09-21 03:31:03', '2015-09-21 03:31:03'),
(94, 1, '4MvhjQuFQMa3d3kTpaMJIhrHIqrpd0Ud', '2015-09-21 03:34:16', '2015-09-21 03:34:16'),
(95, 1, 'wIeSvojnWxVdqc8Ko2g4wSlgadyT46HX', '2015-09-21 13:16:41', '2015-09-21 13:16:41'),
(96, 1, 'IfNOgaDeoIHRgr1wMMQvzGO2zyedyHzQ', '2015-10-16 04:25:25', '2015-10-16 04:25:25'),
(97, 1, 'xb49Au965edKpfxust8QyV2A1ZtN1Jir', '2015-10-16 07:59:38', '2015-10-16 07:59:38'),
(98, 1, '8KKqFXos72faML2g6w1gZK8GecSR2A7B', '2015-10-16 08:25:28', '2015-10-16 08:25:28'),
(99, 1, 'IrxeYFpjWjhZdazrZz7tp253etqZlkuh', '2015-10-16 10:39:25', '2015-10-16 10:39:25'),
(100, 1, 'iuuX2Q6nvfyKfiNLDjOHJ0Jnmd3ZHLEM', '2015-10-17 06:28:06', '2015-10-17 06:28:06'),
(102, 1, 'vQW13aw7kJoovALydds8W9175IqZq7sh', '2015-10-20 08:45:41', '2015-10-20 08:45:41'),
(103, 1, 'kznRgyUivNAxj1LolOUloaV52kxc1TOg', '2015-10-20 14:19:12', '2015-10-20 14:19:12'),
(104, 1, 'UMqlxsaazj72vwRmCVfv5qB5oujn5eO1', '2015-10-20 14:20:38', '2015-10-20 14:20:38'),
(105, 1, 'xpjJT8wJEAA4xe0WNP9UbGPlEbwgZi7L', '2015-10-21 03:28:35', '2015-10-21 03:28:35'),
(106, 1, 'PMf4A3yNtiDOJzYEA2Pi58STBrJpYzi9', '2015-10-21 03:36:54', '2015-10-21 03:36:54'),
(107, 1, 'ix4iaApoo9ohGbwkBNcYyHv3nSkYMuOJ', '2015-10-21 14:51:23', '2015-10-21 14:51:23'),
(108, 1, 'klm8QxxO7mIG6Ljj5liFWR1qikUv3y1H', '2015-10-22 02:47:41', '2015-10-22 02:47:41'),
(109, 1, 'TMTs9AXiVGg3Dn8AmaXt5EZS4Z4WeVgp', '2015-10-26 03:48:24', '2015-10-26 03:48:24'),
(110, 1, 'gihggqvhu0ngRD3ZMkeBhMLMNW6uKXHJ', '2015-10-28 04:39:40', '2015-10-28 04:39:40'),
(111, 1, 'KDNzGA42AWdXV63AG90IhJF6Q36pmtpE', '2015-10-28 13:38:36', '2015-10-28 13:38:36'),
(112, 1, '35yTDDYO1IYhs9ujWXGWfAS9cxXIs4Hj', '2015-11-04 03:13:06', '2015-11-04 03:13:06'),
(113, 1, 'FE2s4HBsv9RoBO7oUsUT7KxFTaXqdpUs', '2015-11-06 09:06:44', '2015-11-06 09:06:44'),
(115, 1, 'a35iqeHc7BvGEbgIx9t357tFXklT9bqO', '2015-11-06 10:38:06', '2015-11-06 10:38:06'),
(116, 1, 'eE6SkzCzg1FtCi2E24UNmFm7OBVLWORs', '2015-11-07 11:02:42', '2015-11-07 11:02:42'),
(117, 1, 't71JCTd8yKBblCePz7bWznuSpkU2XqDv', '2015-11-07 11:27:44', '2015-11-07 11:27:44'),
(119, 1, 'ECMvGKmUgYm2qtMN0OMrPqpaDn5jx08d', '2015-11-18 17:33:17', '2015-11-18 17:33:17'),
(120, 1, 'PtyWimBS6rsnKlRxj96BDq9L7SDKG2rk', '2015-11-18 18:13:11', '2015-11-18 18:13:11'),
(121, 1, 'l9FIuW4AIkJij7BhzeiSEfzU4VyTWHMv', '2015-11-18 18:56:41', '2015-11-18 18:56:41'),
(122, 1, 'bFb85D3SNEMRAoWExKagngxrR9mpWG9a', '2015-11-18 21:26:32', '2015-11-18 21:26:32'),
(123, 1, 'SXL5MRTMSjhUxM2hHtJlZTUCbqgFF5dp', '2015-11-18 21:36:15', '2015-11-18 21:36:15'),
(124, 1, 'xe3efdBNBGu5Ftyzf6SBg1IpUjzMiODv', '2015-11-18 23:47:47', '2015-11-18 23:47:47'),
(125, 1, 'H0KI9TFvutyqksX9WFdo7ltXlIdi6LBO', '2015-11-19 06:31:04', '2015-11-19 06:31:04'),
(126, 1, 'b5U0MlNhXnSybtPBfB6OOmx2UD0jp3rK', '2015-11-19 17:26:33', '2015-11-19 17:26:33'),
(127, 1, 'aY5cfsCbK3SIOhyIfqn5swgMpi7DdOaH', '2015-11-19 18:18:16', '2015-11-19 18:18:16'),
(128, 1, 'LFMf9yFQYkV1iEc4MPSmy2cPyAlIBI7e', '2015-11-20 01:26:45', '2015-11-20 01:26:45'),
(129, 1, 'RzLW8COzh7iRkoCA0sY3VAejSmQbAFGS', '2015-11-20 17:13:07', '2015-11-20 17:13:07'),
(130, 1, 'QyjXCs2H1KLaiSveWaBenK05uG6Z0S8D', '2015-11-20 21:58:30', '2015-11-20 21:58:30'),
(131, 1, '9wrIGqqTTScbdXWxrxsu4mPGI30xTTJn', '2015-11-20 23:52:41', '2015-11-20 23:52:41'),
(132, 1, 'bBc9L5jexsFXL5iGZV8sIlgiyiEpvCo1', '2015-11-23 17:24:24', '2015-11-23 17:24:24'),
(134, 1, 'MVm2uIPKGoClnBOtPnZLeMne0cxqm79A', '2015-11-23 19:06:16', '2015-11-23 19:06:16'),
(135, 1, 'UdEhb1HUGGFeNUAHSzSEAd28LBtML6ti', '2015-11-24 00:54:58', '2015-11-24 00:54:58'),
(136, 1, 'CZGAahPMZICfT9C2pz8DKf3N9XLZpzwT', '2015-11-24 01:14:32', '2015-11-24 01:14:32'),
(138, 1, 'ZS8C30f5fheTscPSyKKcwnHFzwJi5YUg', '2015-11-24 16:47:44', '2015-11-24 16:47:44'),
(139, 1, 'hviLwIVE77jiFjpRBx6DmB29nDCTiEoa', '2015-11-24 17:51:06', '2015-11-24 17:51:06'),
(140, 1, 'k4YjDklmjCK3XOheyFj5tZRgkgQLcvPZ', '2015-11-24 18:44:04', '2015-11-24 18:44:04'),
(141, 1, 'Q0pgzUMaw1jbbjbJ76ZEoiPNHbvEaGhb', '2015-11-24 20:39:15', '2015-11-24 20:39:15'),
(142, 1, 'j1Ll3vyCfxk8WYrfGRWbLcFlmmB5gvuf', '2015-11-25 01:27:11', '2015-11-25 01:27:11'),
(143, 1, '36OdiItmKntFhhusCsOxRDRUmRLi3aIk', '2015-11-26 16:40:45', '2015-11-26 16:40:45'),
(144, 1, 'EY00OQByVxbkksjXJeB779sTw0PVBwQo', '2015-11-26 17:01:33', '2015-11-26 17:01:33'),
(145, 1, 'wFYXrcHs2VT8JxpVeu2nkYpEDIiyveCi', '2015-11-26 22:06:39', '2015-11-26 22:06:39'),
(146, 1, 'fnPGwFNPFaup09Pi8h3HRZkW7g2o89UB', '2015-11-26 22:40:49', '2015-11-26 22:40:49'),
(147, 1, 'EoByZX0seoP71TO3mh5YkAiMw41dQjfI', '2015-11-27 16:56:43', '2015-11-27 16:56:43'),
(148, 1, 'N4O3wiGd7DlOZPPsiXQnU3GaIUDVs0pk', '2015-11-27 17:05:49', '2015-11-27 17:05:49'),
(149, 1, 'wvrtqymHww86JtFR4ySTB7PRMVe6CYyZ', '2015-11-30 18:59:39', '2015-11-30 18:59:39'),
(150, 1, '0c1cjjzAmVVAFRwhzEBmL2fBR2a0cZ47', '2015-11-30 19:04:17', '2015-11-30 19:04:17'),
(151, 1, 'wXdvBHnlVA6VxrKWojj4MPaQ15WIDALo', '2015-11-30 20:14:11', '2015-11-30 20:14:11'),
(152, 1, '6KgSa5WB6Fcd1RhTQe4bpnc3NLRc4jKs', '2015-12-01 04:01:40', '2015-12-01 04:01:40'),
(153, 1, 'b9DvbCSyCVGeHps05XTN3kDLjG9i6UID', '2015-12-01 16:50:21', '2015-12-01 16:50:21'),
(154, 1, 'V1ebekY9wLdVXEXYaDXiDKizKIwV2YoZ', '2015-12-01 19:05:33', '2015-12-01 19:05:33'),
(155, 1, 'U1TDvsp3l7S50HKZJilwD8kolj3oKMZY', '2015-12-01 20:14:31', '2015-12-01 20:14:31'),
(156, 1, 'tWGlxczBI5ISqJsyb8i4t1GAGLVmCxdg', '2015-12-02 17:57:48', '2015-12-02 17:57:48'),
(157, 1, 'sX9s0vE8zk12ZJkKZOj53is0FOSzm3h5', '2015-12-02 18:36:14', '2015-12-02 18:36:14'),
(158, 1, 'YZ1T4vrGkxVOS91okt3lSiz7OFyibEWY', '2015-12-02 18:45:44', '2015-12-02 18:45:44'),
(160, 1, '0asRo8XZo9ictz6mNc941GyW81j7mqnY', '2015-12-03 01:12:18', '2015-12-03 01:12:18'),
(161, 1, 'FVal7sFDex7QqJibHPmQ3BqJOjMxY4zG', '2015-12-03 01:57:27', '2015-12-03 01:57:27'),
(162, 1, 'R82HDrmisEFi9HDBpF4Cb6Ffg8r9o3RI', '2015-12-03 02:32:32', '2015-12-03 02:32:32'),
(163, 1, 'bYRhi5W5Z5sShoOXorpyq9PTzruV4ISR', '2015-12-03 17:43:08', '2015-12-03 17:43:08'),
(164, 1, '6wFdYiPTSZW4ldZn62NgTYaTQrAyMRFW', '2015-12-03 19:40:42', '2015-12-03 19:40:42'),
(165, 1, '7Zpc8lp11v5CtWyMWGlonBNEHCsQCWhi', '2015-12-07 17:34:48', '2015-12-07 17:34:48'),
(166, 1, '9vbkG1yJuNrxJbPccH6inExHABpHtQMU', '2015-12-07 18:56:07', '2015-12-07 18:56:07'),
(167, 1, 'O61lttpy7l77lwEm2vQBpYftms5BbuWz', '2015-12-07 18:57:47', '2015-12-07 18:57:47'),
(168, 1, 'z1BKohUNT9iUIx0QDiNHknohKyQLxgwR', '2015-12-07 21:21:57', '2015-12-07 21:21:57'),
(169, 1, 'AutjPb5lGuWESM9dFfzsSpFyDH6vJifT', '2015-12-08 00:42:57', '2015-12-08 00:42:57'),
(170, 1, 'IjjDqcWuwLtABfWU4FeKbmfFnYVZeo81', '2015-12-08 19:51:17', '2015-12-08 19:51:17'),
(171, 1, 'MvJ9bEq3DNsBfz6eBPpbvweOEqZUZTZZ', '2015-12-08 22:29:56', '2015-12-08 22:29:56'),
(172, 1, 'YE0xTDpxGhMKoxuRYEqODQdhjsg0HBWN', '2015-12-09 01:14:15', '2015-12-09 01:14:15'),
(173, 1, 'qtPfV4NGQUHK8nPilb3zMSkPtOFa5fA7', '2015-12-09 01:18:06', '2015-12-09 01:18:06'),
(174, 1, 'bRiBCAqEMyoZMFGcVh0ppiCe7jJQtmL6', '2015-12-09 17:09:45', '2015-12-09 17:09:45'),
(175, 1, 'kvxZtGoLNIrPws0jng0hSky09B4w52xo', '2015-12-09 17:24:21', '2015-12-09 17:24:21'),
(177, 1, 'CYcO33TQxApc3BsrIxKhA1TG2XfjvjuE', '2015-12-10 04:01:48', '2015-12-10 04:01:48'),
(178, 1, 'ch00cMtPi9ZXy38Y8xsVKkeQT4Tdyz0F', '2015-12-10 17:02:28', '2015-12-10 17:02:28'),
(179, 1, 'ucujCYid3Ed1fWRzUc33bszW0Da5WpoR', '2015-12-10 17:52:35', '2015-12-10 17:52:35'),
(180, 1, 'NQRHc1Aw4NGYpvd8UJHdacDUcMoN6CWT', '2015-12-10 17:58:07', '2015-12-10 17:58:07'),
(181, 1, 'lNch1fxa3m3v7w7QaQKOxJSAq8MM1oWV', '2015-12-10 19:42:57', '2015-12-10 19:42:57'),
(182, 1, 'AhU6Q1goojDW2QHqZtWGrOFIJ5yvyN29', '2015-12-10 20:46:19', '2015-12-10 20:46:19'),
(183, 1, 'HlNikcVYXQjaM4RTiuBaXpUVHvz6BVRD', '2015-12-11 23:23:54', '2015-12-11 23:23:54'),
(184, 1, 'aNFY4tCtnikY3dkpYL5GCTNiU3uil6dK', '2015-12-14 19:46:12', '2015-12-14 19:46:12'),
(185, 1, 'uFP0pEF4i8hpkuXI3XbN5HyyL45IEg9d', '2015-12-14 19:53:42', '2015-12-14 19:53:42'),
(186, 1, 'vHVcNsAZ5cHqBBCBesd8a4O5bWERDwta', '2015-12-14 20:30:17', '2015-12-14 20:30:17'),
(187, 1, 'ChWOSdh7XwdgcCY811PGvll0OvNwuijO', '2015-12-14 20:30:39', '2015-12-14 20:30:39'),
(188, 1, 'HmekPBJ7ICRGCVPXebGjrXKaeqFxAsUz', '2015-12-15 03:40:11', '2015-12-15 03:40:11'),
(189, 1, '3Y7IXo5Fav5lMC18YJOBaw3LyGm3Zqti', '2015-12-15 17:18:39', '2015-12-15 17:18:39'),
(190, 1, 'VWfHAS0MK3w8urby0C1O5gBydkw5nRXt', '2015-12-15 18:07:52', '2015-12-15 18:07:52'),
(192, 1, 'x18zuJwn8SteKHNbt4URG9Uq1XR0f2Pi', '2015-12-16 16:45:37', '2015-12-16 16:45:37'),
(193, 1, 'mf0llY1RIuyVIBH7UZnwayL1EaVgaFFX', '2015-12-16 17:56:48', '2015-12-16 17:56:48'),
(194, 1, 'z9DhpWh9V8MpvWZSwFjx0hKFxoI2DGgK', '2015-12-16 19:04:29', '2015-12-16 19:04:29'),
(195, 1, 'CR87O4WkLFp06iAR7lqniAlqjmh1k8we', '2015-12-16 21:33:19', '2015-12-16 21:33:19'),
(196, 1, 'cPDJLvk735GPW0ra0gW4t56wJ5pDmMRk', '2015-12-17 17:26:23', '2015-12-17 17:26:23'),
(197, 1, 'oVn2YFQRwd2gAWhlclpXyDrhjeVppsLU', '2015-12-17 18:06:31', '2015-12-17 18:06:31'),
(198, 1, 'vuNBEvFcd18udu3JQnsW0ofs2KzferFr', '2015-12-17 23:18:06', '2015-12-17 23:18:06'),
(199, 1, 'Ywq2iUj3JoQ0Nm3RfYTVYVEHmaQdebk9', '2015-12-18 00:17:28', '2015-12-18 00:17:28'),
(201, 1, 'qQwfqZPYXB5z1AGj6X0sA564nSQFxfAK', '2015-12-18 19:29:07', '2015-12-18 19:29:07'),
(205, 1, 'vcFhrXNme0lqyD9NHvhq70lohOEjKwXm', '2015-12-18 21:17:59', '2015-12-18 21:17:59'),
(221, 1, 'v8PGTwhcVg9tbCprRcnz7O51wzOd7u6E', '2015-12-19 01:32:04', '2015-12-19 01:32:04'),
(222, 1, 'NqZN9jtcJEUBarUEcjhBHW3WEKeC7Y4U', '2015-12-21 20:36:49', '2015-12-21 20:36:49'),
(223, 1, 'JCXWsqKC99RPpa6ETVbmnuEwv6bBuQdL', '2015-12-28 16:16:56', '2015-12-28 16:16:56'),
(224, 1, 'oDVXJBM8w9YRFKWb8HbGYD8TGtlt3X4b', '2015-12-29 17:31:35', '2015-12-29 17:31:35'),
(225, 1, 'Ao8BnmQ433VKsCngYlkBA3XwmdG6KxtH', '2015-12-30 22:31:50', '2015-12-30 22:31:50'),
(226, 1, 'iRxZ1afS4VTBy5VwpG5NQxQISj8EnNVP', '2015-12-30 23:40:39', '2015-12-30 23:40:39'),
(227, 1, 'k37znZ2CQPln2OLinYELHQ2Tkw8j56ht', '2015-12-31 16:14:34', '2015-12-31 16:14:34'),
(228, 1, '3PjJ5RyRe8ZPBHfQ9ro1UI3iVhG49rGR', '2015-12-31 16:41:05', '2015-12-31 16:41:05'),
(229, 1, 'BLBuxGAaqABxtg08U0SO5L8RYf3YTlrJ', '2016-01-04 17:23:26', '2016-01-04 17:23:26'),
(230, 1, '3GezeUSlnh72asykrBlhVqlOZW9dVBgc', '2016-01-06 17:33:28', '2016-01-06 17:33:28'),
(233, 1, 'U04AcwG7T17Ky9gy72tThaE5pa7cMKRb', '2016-01-07 20:26:55', '2016-01-07 20:26:55'),
(234, 1, 'NKfuqj7oiybLSyVEn4gfvgzdlrTIYXJh', '2016-01-07 22:30:23', '2016-01-07 22:30:23'),
(236, 1, 'HIJ6IMqSV3EybIZFiNu3cxpbabgBbqWy', '2016-01-09 01:35:32', '2016-01-09 01:35:32'),
(238, 1, 'sWxeUSntPPSkt6pQp0llxmHLbkEaChYD', '2016-01-13 02:52:14', '2016-01-13 02:52:14'),
(239, 1, 'ZJD3jkIsNXOfl3Ns3h7Zdc1c8YTWZszk', '2016-01-19 22:21:02', '2016-01-19 22:21:02'),
(240, 1, 'IYTXwaz9POTqnhccszxP5xrsVS6pVfsT', '2016-01-19 23:47:09', '2016-01-19 23:47:09'),
(247, 1, 'sK03UtbWuendDySxW4QHNwFk7oUfGGQh', '2016-01-21 22:51:02', '2016-01-21 22:51:02'),
(248, 1, 'cEupKusIH32KPfSFxsgrNsbyPtOrAKmJ', '2016-01-24 06:25:37', '2016-01-24 06:25:37'),
(249, 1, 'rh3YgfuzOeuR1XTHcv6C8va0IeF6suBG', '2016-01-26 21:27:20', '2016-01-26 21:27:20'),
(251, 1, 'O43TYM85iDgTel2AL9Vx9R0XfCQBkLVi', '2016-01-28 17:10:07', '2016-01-28 17:10:07'),
(252, 1, 'PwS9qjcqbOWH0Vfmi3r2Rsyt6DD4a0Zu', '2016-01-29 17:20:25', '2016-01-29 17:20:25'),
(253, 1, 'zPd7scLweBBjdsNU4z9W1ypNHkJXUluh', '2016-02-01 20:01:41', '2016-02-01 20:01:41'),
(254, 1, 'Bs7DtcBQghw6pIARDwkUTAQlFNDmBoJH', '2016-02-02 17:10:54', '2016-02-02 17:10:54'),
(255, 1, 'pHG2p2qNOyL7yGHs64ZEIlMi3gWIKoqA', '2016-02-02 21:17:42', '2016-02-02 21:17:42'),
(256, 1, '98beL2w2JCdq6tPhm8WI8aJhOn1rImR4', '2016-02-05 16:42:46', '2016-02-05 16:42:46'),
(257, 1, 'T5TIVTIWDNAQJmGWyidQyREJ5I4FzgZR', '2016-02-05 16:45:01', '2016-02-05 16:45:01'),
(258, 1, 'EnBjEdYhWPx3Oy15aRAWG4DKqhwRv5ov', '2016-02-05 19:57:20', '2016-02-05 19:57:20'),
(259, 1, 'CsMADZrehJhqSi5ZLjW818I2w4CfHDSr', '2016-02-05 20:03:35', '2016-02-05 20:03:35'),
(260, 1, 'azAaPIxSHpYhnaoX0dJSDMLNqc8lcmJc', '2016-02-08 16:22:54', '2016-02-08 16:22:54'),
(261, 1, 'HKxd27kS2kMSM2HrTAKv43R3KbDrswhA', '2016-02-08 18:49:08', '2016-02-08 18:49:08'),
(262, 1, '48Ubx2II5G9sO0mFRXvuDZ2Y7nPfD6GL', '2016-02-08 21:30:34', '2016-02-08 21:30:34'),
(263, 1, 'vT3WOvD54FuXTHFUCCGDZJTMESQGIyLm', '2016-02-09 16:07:06', '2016-02-09 16:07:06'),
(264, 1, 'wbqdkltHpAMPJBwCArq8ofEOJM78ijA8', '2016-02-10 17:26:27', '2016-02-10 17:26:27'),
(265, 1, 'rg7fD0sVCXY1tKniF72qcMC2yMT7qiIW', '2016-02-10 17:29:18', '2016-02-10 17:29:18'),
(266, 1, 'TiysVzWSHW41jwJVXICfb2HKf8SbffrA', '2016-02-10 18:27:37', '2016-02-10 18:27:37'),
(267, 1, '8W8ebwDb7e6y09mrOLNIbK1NRau4COMD', '2016-02-10 21:28:24', '2016-02-10 21:28:24'),
(268, 1, 'ZiFrNARlSVBjkIbrjZ7onhY0tJzQz507', '2016-02-11 18:45:09', '2016-02-11 18:45:09'),
(270, 1, 'mP5f65vcNaweLd9PJCf3Pk9IVnME5RBf', '2016-02-12 19:26:40', '2016-02-12 19:26:40'),
(271, 1, 'tdu6OzlLAyNW4sluvHCEWds5ZxP0bxS4', '2016-02-13 12:50:12', '2016-02-13 12:50:12'),
(275, 1, 'ztbunZDOv1s9QIiNz7RFxluWuSYbg8Fa', '2016-02-29 06:35:19', '2016-02-29 06:35:19'),
(276, 1, 'hLmFelaXvujhsSGwNlU7lfcyJpmYLnGk', '2016-03-02 03:47:03', '2016-03-02 03:47:03'),
(277, 1, 'XB9vR14I8dis89PH6B87A7TLhZKXaXJm', '2016-03-02 06:24:12', '2016-03-02 06:24:12'),
(278, 1, 'kQeWQK85H1BrXV1SCJfc27Fmw6Wp3oyN', '2016-03-02 07:00:33', '2016-03-02 07:00:33'),
(279, 1, 'WIQSxD6QHb4PFG2aU4Ha6jEj3uBub0cs', '2016-03-03 10:41:41', '2016-03-03 10:41:41'),
(280, 1, 'AEVdOFQIJrN97odGu8wIzsxDq2ZXvdp0', '2016-03-07 04:11:17', '2016-03-07 04:11:17'),
(281, 1, '94wd5Y0M2Kps5m7ie7cPccjEjOKpMQNy', '2016-03-07 04:16:38', '2016-03-07 04:16:38'),
(282, 1, 'DPVodfpPkU8Kz5mWCt3JAlqo6fwGbuxo', '2016-03-07 05:12:12', '2016-03-07 05:12:12'),
(283, 1, 'VGvZq0gH0YS1imjFqXLlvrG0WX7SOAcU', '2016-03-08 04:10:20', '2016-03-08 04:10:20'),
(284, 1, 'ANi2cc4LPzquSUcuvQpVzYcRuVOAutaZ', '2016-03-08 07:21:06', '2016-03-08 07:21:06'),
(285, 1, 'ilHKy865x9mgPlXMJP4l5fMJrkOqZLZc', '2016-03-08 09:09:59', '2016-03-08 09:09:59'),
(286, 1, 'QsNTMqkvHRecWfEJ6H1NWcaxSs1oNvfw', '2016-03-08 14:48:58', '2016-03-08 14:48:58'),
(287, 1, '37SnOgQXkjLfYjP4izY4X1UR1iXQ3Ssp', '2016-03-09 04:12:10', '2016-03-09 04:12:10'),
(288, 1, 'mpppkJaenoQAVtCIfkY36F35y1HlT86S', '2016-03-09 06:58:57', '2016-03-09 06:58:57'),
(289, 1, 'Ftyf3YMVMk5d5O0KjxdIyH0vTheyr7DR', '2016-03-10 04:20:23', '2016-03-10 04:20:23'),
(290, 1, '0LUVNJqQ667EUhMzzza8qehmqdvwRD4V', '2016-03-10 08:27:26', '2016-03-10 08:27:26'),
(291, 1, 'W2l6Ih8MTSrv0teq6J7rx42EH4oFCXy6', '2016-03-11 03:59:30', '2016-03-11 03:59:30'),
(292, 1, '2WDNZ8YPZQBPvCjkqaMLcrG2bHNpiSx2', '2016-03-14 04:53:02', '2016-03-14 04:53:02'),
(293, 1, 'sIzDhM5WZMUPdch0erMFTXt6uNaxcn7G', '2016-03-15 03:41:22', '2016-03-15 03:41:22'),
(294, 1, 'vS1UwLmFUAIsNtD3bxL7mmzkFnwEybSF', '2016-03-15 05:23:33', '2016-03-15 05:23:33'),
(295, 1, 'im30jVklOWR7TySKNe21naGEanVatJYL', '2016-03-16 03:26:31', '2016-03-16 03:26:31'),
(296, 1, 'PT6rUzFfOsrLbETkHyRUxfTxgVLIHgIE', '2016-03-16 03:50:49', '2016-03-16 03:50:49'),
(297, 1, 'Hy47UymE9xA7JsfjGCjefolnkVOOMTwY', '2016-03-16 10:53:41', '2016-03-16 10:53:41'),
(298, 1, 'paA1vDiDZxGtFx61LWWMV7tZqeNrCUW1', '2016-03-16 10:59:10', '2016-03-16 10:59:10'),
(299, 1, 'x5gISkPux4CamFmVoaeoYsPImFfBGpef', '2016-03-16 12:37:05', '2016-03-16 12:37:05'),
(300, 1, 'yjn0mOUVW3y7UVevY9DKSECOggs96j6r', '2016-03-18 05:49:44', '2016-03-18 05:49:44'),
(301, 1, 'GoIQf7DmVGs40YbFL7T8BVtbiQ8R8uBh', '2016-03-23 04:14:19', '2016-03-23 04:14:19'),
(302, 1, 'DvjAiVcASbqobvNMqzIhVBdm6jofQdt1', '2016-03-23 04:47:21', '2016-03-23 04:47:21'),
(303, 1, 'QBOZsaTD6i22spqeC2vgG2yIgCh8dwnG', '2016-03-23 05:00:56', '2016-03-23 05:00:56'),
(304, 1, 'u1lErExOOF3HRLDmIx6hruoN94qS9Dsn', '2016-03-23 05:29:47', '2016-03-23 05:29:47'),
(305, 1, 'cbIVuXZn5wyzsTGZHKxVDjLB7SLOPSYD', '2016-03-28 09:33:00', '2016-03-28 09:33:00'),
(307, 1, 'CpIqZbEGoqDFJKxHET5h3C0pzDZdvnKn', '2016-03-29 05:51:21', '2016-03-29 05:51:21'),
(308, 1, 'byerYGBIbsMg4CfY7aidC1ZNYsnmj1E6', '2016-03-30 09:13:20', '2016-03-30 09:13:20'),
(310, 1, 'ICBM7yj3By39IICV1jkoIKJxh1FFpOzg', '2016-03-30 11:37:58', '2016-03-30 11:37:58'),
(311, 1, 'hYZ8uFrbW213bFWW2IIBXFQOq5B04Kbj', '2016-03-31 03:40:55', '2016-03-31 03:40:55'),
(312, 1, 'nFv4bXOYipFv5Ix6zhKSpR1wyNhobj99', '2016-04-01 09:37:40', '2016-04-01 09:37:40'),
(313, 1, 'KHu9yIGB16YvrDV2FEWOq8BQ6PvMbKl8', '2016-04-25 04:22:04', '2016-04-25 04:22:04'),
(315, 1, '7FoQgzabeFRIWL1M7ZPsm3z9PG8F1Ugo', '2016-04-26 05:01:21', '2016-04-26 05:01:21'),
(316, 1, 'OdnZDFviqrfXC8WrQ2Cb6ZDvYz8nPgRx', '2016-04-27 09:37:40', '2016-04-27 09:37:40'),
(317, 1, 'kOebcJr1JJG5wUk5fhOfGhHxHnLOwSvc', '2016-05-01 18:18:45', '2016-05-01 18:18:45'),
(320, 1, 'ggE3UJheRV8uDVSOh95l2o0aefxiuPKt', '2016-05-02 04:04:11', '2016-05-02 04:04:11'),
(321, 1, '53mvW0wlHIMVAW0H00HVg9zkesJ4OhXD', '2016-05-02 04:27:17', '2016-05-02 04:27:17'),
(322, 1, 'hRCPvsEyyjmKVeHCXisqCoaXBYCxaScN', '2016-05-02 12:52:32', '2016-05-02 12:52:32'),
(323, 1, 'cTlcwjYOxTY6ZJCrkMNEnO5b5TzMmEGB', '2016-05-03 04:34:46', '2016-05-03 04:34:46'),
(324, 1, 'vmqEkzTG3IbAneq5OOjHzSqucV35AmnD', '2016-11-01 10:17:58', '2016-11-01 10:17:58'),
(325, 1, 'BW01QCJOOLoZIO8VUJnF52vIbu2rc11g', '2016-11-02 03:09:37', '2016-11-02 03:09:37'),
(326, 1, 'FzWFz0LRPiRYtqrp0ZYERRRuAbG1yYiV', '2016-11-08 13:18:50', '2016-11-08 13:18:50'),
(327, 1, '0xAj653k46fiqUDh19Ckozg3ZyytnCH0', '2016-11-09 06:23:05', '2016-11-09 06:23:05'),
(328, 1, '6OwwOXig9X0lFtXXVrYgJ8SrkoLgzEvg', '2016-11-10 04:51:43', '2016-11-10 04:51:43'),
(329, 1, 'FnxCrE4ava77Pf646SgsJhZZcMIfODMy', '2016-11-10 09:07:29', '2016-11-10 09:07:29'),
(330, 1, 'hXKEok3YM5YjXZjMQuL7T14hAmz43BJH', '2016-11-16 11:20:10', '2016-11-16 11:20:10'),
(331, 1, 'WlPtomsC2L3hnU7xIpW81oFQENGiNNaB', '2016-11-17 03:03:54', '2016-11-17 03:03:54'),
(332, 1, 'liZqeZ1qON6xfJK7g2oCtLjbxcjkUBCS', '2016-11-18 03:19:34', '2016-11-18 03:19:34'),
(333, 1, '0eTUyc0uXgk1fRS0dDaGQUdXVVapU8ts', '2016-11-18 08:34:38', '2016-11-18 08:34:38'),
(334, 1, 'nUEqpH5Mf6sLxlaTi9sULwKMMgVLYp2a', '2016-11-21 03:29:03', '2016-11-21 03:29:03'),
(335, 1, '88kA0cgf81T7zClaZff6EnvhJNcUtaSf', '2016-11-21 08:37:54', '2016-11-21 08:37:54'),
(336, 1, 'VepF1pmmoT2kFPHwKDIFkF6kb34GMdNs', '2016-11-22 02:54:59', '2016-11-22 02:54:59'),
(337, 1, 'nPKUHcWR3obf890hffnSkhzBH7IGFrlp', '2016-11-22 06:30:15', '2016-11-22 06:30:15'),
(338, 1, 'l4KFahczm29zpo7TakPGJM9qHJWAxOAQ', '2016-11-23 07:04:22', '2016-11-23 07:04:22'),
(339, 1, 'luOKV6kdrS9iGE56uw85la2ddiCvN67F', '2016-11-24 03:11:20', '2016-11-24 03:11:20'),
(341, 1, 'RIo4FfgIOAjDS1jjYUvtUNGBH9wjhuKY', '2016-11-28 03:05:34', '2016-11-28 03:05:34'),
(342, 1, 'OnbCVCBgNJdKh2zqX3kDgNYi4SCfSzur', '2016-11-29 03:07:22', '2016-11-29 03:07:22'),
(343, 1, 'MEYNvMqzpb5SvUki1HoGiebSnkOV6uOw', '2016-11-30 03:15:37', '2016-11-30 03:15:37'),
(344, 1, 'HmqRCpKWJ37CB8sDmMaSzn2JCE22ogQP', '2016-12-01 03:10:55', '2016-12-01 03:10:55'),
(345, 1, 'Dpbs7U9zUKm1747oicIGoLGugCMFRJXu', '2016-12-05 03:42:14', '2016-12-05 03:42:14'),
(346, 1, 'IxBT0XnquRWKn6LdI08QGNWZlGpILa1m', '2016-12-06 03:30:17', '2016-12-06 03:30:17'),
(347, 1, 'J0GWjCrIGjcxAeezuVTwr23G0tX8z9FA', '2016-12-06 07:10:21', '2016-12-06 07:10:21'),
(348, 1, '40aMIDL7SIahLW5qCDogsFDB5jrjSrAl', '2016-12-07 03:16:01', '2016-12-07 03:16:01'),
(349, 1, 'UWX5assFv0BqZHtAYvNLjj3vZBeS4F8S', '2016-12-08 03:38:25', '2016-12-08 03:38:25'),
(350, 1, 'YxETIww2Np3mmklNscNLHuro63gm80n6', '2016-12-08 08:40:45', '2016-12-08 08:40:45'),
(351, 1, 'arQP0rVbLNbuSAhBMdvb8d708jPVs7TS', '2016-12-09 03:49:26', '2016-12-09 03:49:26'),
(352, 1, 'xFAbEiz775LC7qKnr3Hnhrk6CnFicY4N', '2016-12-09 09:23:24', '2016-12-09 09:23:24'),
(353, 1, '2zXNR8a9dPx6Yh6jhqkdlXMH2uAdvWq2', '2016-12-14 04:01:01', '2016-12-14 04:01:01'),
(354, 1, 'U6yuAZYyUpFDYdIUh3ttI034vFbyOOtF', '2016-12-14 09:53:47', '2016-12-14 09:53:47'),
(355, 1, 'rn1PCB8xyinSDZzM6FveYtdRkwEYv7or', '2016-12-15 04:02:12', '2016-12-15 04:02:12'),
(356, 1, '89O8WwMadX6nZsPQVwVI5amH0KfcBG69', '2016-12-15 08:09:59', '2016-12-15 08:09:59'),
(357, 1, 'ODUR6IbIZjp6m0WlUkRBJCxWBmYy2uCP', '2016-12-28 03:39:32', '2016-12-28 03:39:32'),
(358, 1, 'PRhfdm4BXCA6VVTmJmJp2A8cck1fmQOs', '2016-12-29 08:48:03', '2016-12-29 08:48:03'),
(359, 1, 'MX2BtaL7IbVo0M9cOjHgGKtv0W3qsfvN', '2016-12-30 04:19:48', '2016-12-30 04:19:48'),
(360, 1, 'URDmiIwst9p7AH752meBRy5jnmmn12iQ', '2016-12-30 09:32:32', '2016-12-30 09:32:32'),
(368, 1, 'Xgq5p1wpwa6nMCh71oawtjYyaDBqFF0Z', '2017-01-14 23:18:10', '2017-01-14 23:18:10'),
(380, 1, 'YTOyGClrQ6j10dPZK2sEsgVdSq2z1KXp', '2017-01-15 23:07:15', '2017-01-15 23:07:15'),
(385, 1, '30rPT91aUiZggV1KuNyKH3qmhZKYUzBO', '2017-01-18 19:27:49', '2017-01-18 19:27:49'),
(386, 1, 'NMo6ESSw8QVNQcewukGFL6Wnt2tJv7FB', '2017-01-19 01:12:11', '2017-01-19 01:12:11'),
(389, 1, 'EYdjNai3eG7Yd6zYQBvUiUkI3yfj6YCk', '2017-01-19 20:01:39', '2017-01-19 20:01:39'),
(393, 1, 'XG5ZK9wWhKtftpzeVlFOyotpfn72STI4', '2017-01-22 08:23:01', '2017-01-22 08:23:01'),
(400, 1, 'vQp8uS1ljqj4UhabgjDjcP7rW0vSoXeJ', '2017-01-23 13:08:00', '2017-01-23 13:08:00'),
(401, 9, 'SWyNFqRVA8qiuWgNylGD5deH9FPDjdrk', '2017-01-23 13:15:43', '2017-01-23 13:15:43'),
(402, 1, 'dfnpIy8kp33r1SzHMChUkh2JZHe5dGRO', '2017-01-24 06:00:38', '2017-01-24 06:00:38'),
(403, 1, '33EGJXIDAduqWCSifVsPmVuMTJyLnquR', '2017-01-24 06:52:19', '2017-01-24 06:52:19'),
(406, 1, 'ZG0iCyctnYgcnkTIGV9H07fXE8s33bkd', '2017-01-25 09:05:52', '2017-01-25 09:05:52'),
(407, 9, 'bvZmNj56MW8nev4UoSExXEAjHnNtIYd7', '2017-01-25 10:38:45', '2017-01-25 10:38:45'),
(408, 1, 'ikDhS95qhS3n3tJo6foqD3TNlJ0hTMky', '2017-01-26 09:17:07', '2017-01-26 09:17:07'),
(410, 1, 'P4KSBwXBVdxIdzqUiEgofSv1K8YnWyUt', '2017-01-28 03:05:11', '2017-01-28 03:05:11'),
(415, 9, 'fHy1CJ8ZNAENNJRR2AbRxO1q3NgwDSya', '2017-01-28 05:36:57', '2017-01-28 05:36:57'),
(416, 1, 'vmnV6viMKGospBjxZN5KeJlr2JfieB80', '2017-02-07 16:30:34', '2017-02-07 16:30:34'),
(417, 1, '6FNWIuuJK9UlpO1Fic0Q0yTcYX7oRXfx', '2017-02-20 06:25:15', '2017-02-20 06:25:15'),
(418, 1, 'q9AXtBPt6ECX67wEusA6AAPWzSgSafLj', '2017-02-20 06:26:40', '2017-02-20 06:26:40'),
(420, 9, 'hS7zYXzFL2iFSdSWDW7ykwKc4khfQe2L', '2017-02-20 07:36:22', '2017-02-20 07:36:22'),
(421, 1, '9hjq43wKRKSBmxY2t3ZOejwktrvjSMEH', '2017-02-20 07:44:42', '2017-02-20 07:44:42'),
(422, 1, 'uLoVafnA4TgQrblXUJBhfA89DUWnD9Vq', '2017-02-22 07:37:53', '2017-02-22 07:37:53'),
(423, 1, '7OV8S0oBOY4rGatHhiaAzypR1DGDaZNa', '2017-02-23 07:41:41', '2017-02-23 07:41:41'),
(424, 1, 'UYUmFphBxnfpBAQyy5Uy2O60clf2v5uy', '2017-03-12 17:16:13', '2017-03-12 17:16:13'),
(425, 1, 'nVM4Mqyd6CqQyiK66KDV2RcpFlqC7iHK', '2017-03-12 17:53:52', '2017-03-12 17:53:52'),
(426, 1, 'h3pToQYIaz2jvgU4AMwUNjEc1EyTDj1Q', '2017-03-14 15:21:17', '2017-03-14 15:21:17'),
(427, 1, 'rmia1KYiKPpTgCceikY640kRsRQL24Uc', '2017-03-25 05:45:45', '2017-03-25 05:45:45'),
(428, 1, 'RkCnVMzn79IghbqS6Tol1iXpMovbLeym', '2017-03-26 04:09:41', '2017-03-26 04:09:41'),
(429, 1, '2RDU3tFlFxsv7L2cTLSgcpRGVbwjCW8G', '2017-03-27 08:49:51', '2017-03-27 08:49:51'),
(430, 1, 'A3NKM0u6WIRHFIPKWVrpRChKOWenNmNz', '2017-03-29 03:58:16', '2017-03-29 03:58:16'),
(431, 1, 'JjBwd9vjdA5lkf7Egmo2XDWkCm4wM3S6', '2017-03-29 08:35:37', '2017-03-29 08:35:37'),
(432, 1, 'TvgVvDLvHaMuIbcV5lvteo65rkYWTuzy', '2017-03-29 15:20:46', '2017-03-29 15:20:46'),
(433, 1, 'xXXlnxXtruorIKPg2zFRLQdNAbOPgulY', '2017-03-30 13:57:47', '2017-03-30 13:57:47'),
(435, 1, 'GfPMoIyrNnVSA43DaXYUoo5oJeEnaIKl', '2017-04-01 16:35:38', '2017-04-01 16:35:38'),
(436, 1, 'cln4DtiKEDuQxodFRDw4Lcra8cGQeIMz', '2017-04-02 03:17:12', '2017-04-02 03:17:12'),
(437, 1, 'gDbjgjlpQr6KOjlMh9pB4bHKi5cp1Wrc', '2017-04-03 15:40:08', '2017-04-03 15:40:08'),
(438, 1, 'FrI0pkXa4NwLpsn3Pi1PH3A0otWeGruU', '2017-04-03 17:19:27', '2017-04-03 17:19:27'),
(439, 1, 'beJtoHPg0Ht1NsKFVakpduMdidW8GpFm', '2017-04-04 16:27:48', '2017-04-04 16:27:48'),
(440, 1, '9ltPoQR91755nbeUztRi9xx8BY3cqz2J', '2017-04-05 16:39:20', '2017-04-05 16:39:20'),
(441, 1, 'UPyLjrn0wB0zzQ6zVKlxWCRPo9n73Vw1', '2017-04-05 17:29:11', '2017-04-05 17:29:11'),
(442, 1, 'YlEMN7x1ZBG3yPGYX2RVjd0iiwoPNWk4', '2017-04-09 08:15:13', '2017-04-09 08:15:13'),
(443, 9, '5pZReIfyiIz7EIjW3qfbRrmRWsMCV2xD', '2017-04-10 06:09:34', '2017-04-10 06:09:34'),
(447, 1, 'VrEBinxz1hTXXmiPVeefL138I4iSWQ52', '2017-04-11 04:43:34', '2017-04-11 04:43:34'),
(448, 1, 'kDXffNhbdLtlC2lNLnlf4HST4FI6kdal', '2017-04-12 06:37:44', '2017-04-12 06:37:44'),
(449, 1, 'lK9nPuYw3iWpNs3x5MbByORZxlWm8fim', '2017-04-12 06:51:37', '2017-04-12 06:51:37'),
(450, 9, '0aY6n6847RBlgl4dZT6e3IdzDL1sq0Xq', '2017-04-12 06:52:51', '2017-04-12 06:52:51'),
(452, 9, 'TABN9b6WT0CYjifUjMsRam5aERlRbjzZ', '2017-04-12 08:55:33', '2017-04-12 08:55:33'),
(453, 9, 'buJbqy4uYLHDQ3RdZGgliHXVjLAlAj8h', '2017-04-13 06:52:36', '2017-04-13 06:52:36'),
(455, 9, 'WZcJMFiKO3ZRhVgqVjLweteggAmdW7Tt', '2017-04-13 12:57:48', '2017-04-13 12:57:48'),
(456, 9, 'eBjaIKb8G8ugqfKIY9n5ArRJtHmu3Gsm', '2017-04-17 03:25:58', '2017-04-17 03:25:58'),
(457, 9, 'WS5SwpOuTeZAnYhQilFL0Xb0Y4b77N2h', '2017-04-17 03:33:45', '2017-04-17 03:33:45'),
(458, 9, '411nM5xC2dt3oMeSCiEl5I0lhz2Aqj8D', '2017-04-17 10:34:03', '2017-04-17 10:34:03'),
(460, 9, 'Djxgc5Jgai6TbvOk2rjzsNAPZWuTaKeH', '2017-04-18 06:55:58', '2017-04-18 06:55:58'),
(461, 9, 'qqD2PlrD3qJLRsYty7FHpDyrJQxIhiLO', '2017-04-18 17:09:04', '2017-04-18 17:09:04'),
(464, 9, 'xSxreVLlbTYg46jkRqTskBIPW89IDwpS', '2017-04-24 06:52:41', '2017-04-24 06:52:41'),
(465, 9, '14gp3LskVafODeQwTDw6h6hxgunp8mHf', '2017-04-24 07:45:52', '2017-04-24 07:45:52'),
(468, 9, 'kQ30zVbjLum6rqBwhy90Up4mcm6NcFSi', '2017-04-26 07:28:26', '2017-04-26 07:28:26'),
(469, 9, '3bqBJ0wnW7HOeeEfWLF2JoqeQ2PBzCHz', '2017-04-26 11:29:15', '2017-04-26 11:29:15'),
(472, 9, 'Z4INZw1dg8oynP4OD3tZmAY5hzOjPTEh', '2017-05-02 04:09:03', '2017-05-02 04:09:03'),
(478, 9, 'EdRqaQPyavSjqIcaq82t1vmc9f7mYcuu', '2017-05-08 16:20:40', '2017-05-08 16:20:40'),
(484, 9, 'Ri9Ea0mfx2LagbGD8BSyLt6fkgxJbfcr', '2017-05-09 10:20:23', '2017-05-09 10:20:23'),
(485, 9, '8Vj5ePjyRAICMixCletCXCDtP4HR2JBX', '2017-05-12 09:04:38', '2017-05-12 09:04:38'),
(488, 9, 'jmk6mdzwom7URjlYx9GHsb1JlZifHPSv', '2017-05-15 07:11:51', '2017-05-15 07:11:51'),
(489, 9, 'NTNI9SUXhMFjsw65hdWMpBoP07BV3y1q', '2017-05-23 06:42:10', '2017-05-23 06:42:10'),
(491, 1, 'd6f8zbo1u9lGbzYPuTFcQ4jwHm1d82KV', '2017-05-23 07:28:55', '2017-05-23 07:28:55'),
(492, 9, '90SqsYXsn0Vo2t3j0X3bqiLvjbvfJHPd', '2017-05-23 07:44:23', '2017-05-23 07:44:23'),
(493, 9, 'HbYU4JGhFiXXGwA7nharo80hoOg8xuC4', '2017-05-23 07:54:44', '2017-05-23 07:54:44'),
(494, 9, 'eB0gnJuRxuRFiBhjLfDFByoinXons3xZ', '2017-05-23 07:57:50', '2017-05-23 07:57:50'),
(495, 9, 'CuU8HSHiMhmMvb6qVDmcNsL0chZp6SWy', '2017-05-23 12:16:22', '2017-05-23 12:16:22'),
(496, 9, 'PWTkpZeVGSdtwt9IC0g0icmk1gFSlfGv', '2017-06-14 17:35:43', '2017-06-14 17:35:43'),
(497, 9, 's49fFnklRpF5OOS2jYXRoutH5VqEFewt', '2017-09-02 08:44:41', '2017-09-02 08:44:41'),
(499, 9, 'ZACd7QKPIDrMopxrvsAFCULxDo7PX2br', '2017-09-02 16:11:27', '2017-09-02 16:11:27'),
(500, 1, 'xVHdxpCRdZF2nDHP9lLeIoHpX2PXj5Yc', '2017-09-07 17:15:27', '2017-09-07 17:15:27'),
(501, 1, 'bW88sq8eaaw6u1QvEngEq5YVVQ2qhFzX', '2017-09-07 17:37:13', '2017-09-07 17:37:13'),
(502, 1, 'PlIhwjZkcOwqngtSzdRZIbtR0UGwXv6o', '2017-09-08 14:55:32', '2017-09-08 14:55:32'),
(503, 1, 'OyWtzOT01xuQEizw8ooxrqggOskOXisu', '2017-09-09 07:20:15', '2017-09-09 07:20:15'),
(504, 1, 'Z3KJTkiaygVFz1RpG5YGGHdpLCwPSzZI', '2017-09-09 15:39:51', '2017-09-09 15:39:51'),
(508, 9, 'BT1p2Bt9UqNx2JF1uBjJUQXTKiL3lejO', '2017-09-11 07:39:19', '2017-09-11 07:39:19'),
(514, 9, 'BKOgFtE1cNnrnCCR299Xh2ZRpa0L5iao', '2017-09-17 13:31:18', '2017-09-17 13:31:18'),
(515, 9, 'gdtOIPY5rI05ZHILzGZr0m4tkGAfCvcq', '2017-09-18 02:22:26', '2017-09-18 02:22:26'),
(516, 9, 'LlMhuZP8B47nJ4ORhq7uACPtaXdOv2yo', '2017-09-18 04:57:54', '2017-09-18 04:57:54'),
(517, 9, 'YMVZKtIuDyVFhS7v29nO48C5WsL8JjZF', '2017-09-18 09:08:13', '2017-09-18 09:08:13'),
(518, 9, 'BvJ12OugoJhgJs9isQL9br24C7YyTD8j', '2017-09-18 12:07:29', '2017-09-18 12:07:29'),
(519, 9, '8qcp6wNVPRBaCMpXkNQvolSpnNLDcUB7', '2017-09-19 04:46:13', '2017-09-19 04:46:13'),
(520, 9, 'TqibeIg2QSEsQDyC7LcK59VAKKMipkpn', '2017-09-25 10:12:02', '2017-09-25 10:12:02'),
(521, 9, 'a6R8PaA9vwIpGxN7MlLJuVUveYS1LpPH', '2017-09-25 13:46:18', '2017-09-25 13:46:18'),
(522, 9, 'WmzWXCLtADZ2X8xk6dEBRciyq1Ua7yiU', '2017-09-26 04:50:13', '2017-09-26 04:50:13'),
(523, 9, 'S2ojiPFjhkcqLoQ7Oi5R7lY4FGrmTJVN', '2017-09-26 04:55:28', '2017-09-26 04:55:28'),
(524, 9, 'kAl7L3eJgJYVHpbAl6WhEi8xMNnYPpnr', '2017-09-26 05:46:23', '2017-09-26 05:46:23'),
(525, 1, 'xLk8EQyXw0Sust6JfEFjOVGUuTQySRte', '2017-09-28 18:51:45', '2017-09-28 18:51:45'),
(526, 9, 'vdahqrLd0RHiCr5b8h6iKGDJFPdFAOe8', '2017-09-29 03:57:13', '2017-09-29 03:57:13'),
(527, 9, 'WS1ZNJrVSOndMKv6IynLlgtKzsSf8hKA', '2017-09-29 04:00:17', '2017-09-29 04:00:17'),
(528, 9, 'IxRsRJOY2jDlbgw5sWeiAjCvOa3kR1Ac', '2017-09-29 04:37:18', '2017-09-29 04:37:18'),
(529, 9, 'gwwpv2D4cG911t35wH4YvCcyoVQvRElK', '2017-09-29 04:39:02', '2017-09-29 04:39:02'),
(530, 9, 'G76hJghdimBSj1PHvhLiQPvcBZ22VJyo', '2017-09-29 04:57:20', '2017-09-29 04:57:20'),
(531, 9, 'pIl45I3RQuHsbg9DrTifyp7FmOFvXAbI', '2017-09-29 14:35:59', '2017-09-29 14:35:59'),
(532, 9, 'Pke5IPK4IxTUkF6XqVjnZFDPsw6wbQnB', '2017-09-29 14:38:08', '2017-09-29 14:38:08'),
(533, 9, 'pfGDyVgBbQCoyWNf2Ejn4xZwTozIkv3B', '2017-09-29 14:38:41', '2017-09-29 14:38:41'),
(534, 9, 'seMjDAG5MVSZnFzYleDHHSC9NaLUolGe', '2017-09-29 15:11:47', '2017-09-29 15:11:47'),
(535, 9, 'T33Id6bhSDDM44aYkwA9qnrqtNlJQXP4', '2017-09-29 18:24:47', '2017-09-29 18:24:47'),
(536, 9, 'LSn1x97nqG5yVzXBEWISLl1ja6m5Q08X', '2017-09-30 06:04:39', '2017-09-30 06:04:39'),
(537, 9, 'vdRsiiXnYqZbCxQWcaLCzthap7hU23dp', '2017-09-30 06:10:34', '2017-09-30 06:10:34'),
(538, 9, 'fhBlMrOEYQDO18asgB6gkwykQ8bZeRtX', '2017-10-01 07:58:05', '2017-10-01 07:58:05'),
(539, 9, 'zvuEqTNzSvCLChO6DIs4EfS52N7OWFff', '2017-10-01 07:59:07', '2017-10-01 07:59:07'),
(540, 9, 'FkpaUFI9FUh4gYyAjtfoh7bH5APYRovj', '2017-10-01 08:12:16', '2017-10-01 08:12:16'),
(541, 9, 'RzQufcstJuydJLBpgzhlqJXDsjDwFc6d', '2017-10-01 14:33:09', '2017-10-01 14:33:09'),
(542, 9, 'RfkaWBmwUmem7zCfjuAsmZLAbXkp5Ig2', '2017-10-01 18:09:40', '2017-10-01 18:09:40'),
(543, 9, 'Lwu6hoQfWQw6j8oLZqxP0ZjiaKquushe', '2017-10-02 18:22:31', '2017-10-02 18:22:31'),
(544, 9, 'QjjlkcEEKa1OdtyoQm4Pv9NzvrjWf6ex', '2017-10-04 12:58:43', '2017-10-04 12:58:43'),
(545, 9, 'uoSHV0CE9x4cyKbZ2SHst8VusHh9yI2W', '2017-10-04 18:44:15', '2017-10-04 18:44:15'),
(546, 9, 'yWRBL2TfCaOD3lTV0NZpbtIRzZmz3E2X', '2017-10-05 04:48:06', '2017-10-05 04:48:06'),
(547, 9, '1JtgEc5RNqJTEGA9PRmjYVA14l6i0HkO', '2017-10-05 04:50:34', '2017-10-05 04:50:34'),
(548, 9, 'T7VDc2KEcM6TzknmM9uUz34rjLDypGTU', '2017-10-05 11:30:44', '2017-10-05 11:30:44'),
(549, 9, 'mBN5iNDSOWFAby7SuxyrnjyhlBmREhzI', '2017-10-05 11:32:50', '2017-10-05 11:32:50'),
(550, 9, 'dk1YRLRE1JUo291Q3tirAMHuXLoYef2B', '2017-10-06 05:57:30', '2017-10-06 05:57:30'),
(551, 9, 'ry2Bxvz3m6tnd1obdzz14I87nk0v9S3q', '2017-10-06 10:56:29', '2017-10-06 10:56:29'),
(552, 9, '7oI0DCpaw0fKfqw4Yi1LCcNHn9md25Y7', '2017-10-06 15:36:25', '2017-10-06 15:36:25'),
(553, 9, 'UWLFqE78A4roavDtn4MaMU2UkEB6ZONU', '2017-10-13 04:28:45', '2017-10-13 04:28:45'),
(554, 9, 'AvgDO5mzCwq8ljBGPwU3OViHsRmk5LJJ', '2017-10-13 18:02:52', '2017-10-13 18:02:52'),
(555, 9, 'YPKsclCuQwF09CaFt44LeootzbaOt1SI', '2017-10-14 04:29:43', '2017-10-14 04:29:43'),
(556, 9, 'IZitIuzqvCI0OawtFT6lKAp06Gs7qp6C', '2017-10-15 16:52:06', '2017-10-15 16:52:06'),
(557, 9, 'XLCgtKFdE1gMAb9l9eDGeZgPh6abkk3V', '2017-10-16 12:27:45', '2017-10-16 12:27:45'),
(558, 9, 'Yi7Zx70bcJUU7vpps5VJvQBtZT4foCpr', '2017-10-16 19:25:09', '2017-10-16 19:25:09'),
(559, 9, 'HYRmxSGdoDTRPMqCP8n2yfBNUG5mXns2', '2017-10-16 19:31:39', '2017-10-16 19:31:39'),
(560, 9, 'ahqLDDxwrfdCKCFYObRnRVevKcJJNzL9', '2017-10-17 04:42:25', '2017-10-17 04:42:25'),
(561, 9, 'ck2Mn5nPgvkoYz3YARZ5Pn6rA051QDIo', '2017-10-17 16:52:50', '2017-10-17 16:52:50'),
(562, 9, 'yHN07TYMOwVTw2uatqPnJkJCw22AqyTo', '2017-10-18 06:55:04', '2017-10-18 06:55:04'),
(563, 9, 'I01jFrfGjSCS4oWyv8zKu4V97CRWFkgA', '2017-10-19 11:39:07', '2017-10-19 11:39:07'),
(564, 9, 'UvPDFfNlJNCkH2BocvFt7mBjIlECD0yM', '2017-10-23 05:57:55', '2017-10-23 05:57:55'),
(565, 9, 'VlEihMHC1c4hBsHkXQtjplZ7iAfe2F5U', '2017-10-23 08:57:47', '2017-10-23 08:57:47'),
(566, 9, 'o9yhTxKN6OWSh615hlWUbDR5qNlVzNs7', '2017-10-23 19:56:56', '2017-10-23 19:56:56'),
(567, 9, 'nOMjhVqxiujlsCCuCeS6w4jUBOi84mmX', '2017-10-23 20:20:12', '2017-10-23 20:20:12'),
(568, 9, '2fPEfJZsHVc6rqP4Y8MCLNtzRWBcQhxT', '2017-10-24 13:37:09', '2017-10-24 13:37:09'),
(569, 9, 'zvR46vim4xH94YWmNpFV6G6zgT2yuGrg', '2017-10-25 05:10:21', '2017-10-25 05:10:21'),
(570, 9, '2zTswKmr9G9dnDMGjWqS08aJLvyqWX1x', '2017-10-27 05:33:09', '2017-10-27 05:33:09'),
(571, 9, 'gbjNHN3Rbfa7BpmESzLF2YldvN72HBeM', '2017-10-27 15:38:57', '2017-10-27 15:38:57'),
(572, 9, '2UuMu7Jk3XOr0Lp1qJ8i1tcw5QGQahgO', '2017-10-30 16:27:16', '2017-10-30 16:27:16'),
(574, 9, 'K9Qr6Vgbtn8twa9ebWjJvNNkkhPWatYS', '2017-12-25 09:19:59', '2017-12-25 09:19:59'),
(576, 9, 'Bps39WAJHf6x9nEP2IBkuplsBjM6gLit', '2017-12-26 18:35:51', '2017-12-26 18:35:51'),
(577, 9, 'DUkEdTKANrqTCybnyP27nEfZsDcRCsU4', '2017-12-27 12:58:11', '2017-12-27 12:58:11'),
(579, 1, 'gwEPEK5AUypx8EW4cTqxYN6BHGvfJ9yc', '2017-12-27 14:03:21', '2017-12-27 14:03:21'),
(584, 9, 'cesY9MkupQ6U145waWYQ4HVS8DVwkvDd', '2017-12-27 14:46:57', '2017-12-27 14:46:57'),
(587, 10, 'FQAjzYxo6Q1jwUtnC4U9pkaaskqxOf3g', '2017-12-27 17:48:03', '2017-12-27 17:48:03'),
(589, 10, 'htDxNPzOHgsoYxfAg1vioBhbmlzlKBTz', '2017-12-27 17:50:30', '2017-12-27 17:50:30'),
(590, 9, '8kQrsqpSyTu4lrv3x1eC5gLvmDnMBfhK', '2017-12-28 17:57:16', '2017-12-28 17:57:16'),
(591, 9, 'f5FDNKxKnlMeQYGEb5odqUpIp1tRUFop', '2017-12-28 18:00:05', '2017-12-28 18:00:05'),
(592, 9, 'QdJRzz9eqOMX9teYtyiuKLWXOE4n4mOA', '2017-12-29 17:39:07', '2017-12-29 17:39:07'),
(594, 9, '0hJ5edWa6kmHkzFzaYJtxoC80BUGFKGy', '2017-12-30 09:27:13', '2017-12-30 09:27:13'),
(595, 9, 'wLZQm4WFgdA8Xtgx0Rt7GzyaJYif8RrC', '2017-12-30 12:50:45', '2017-12-30 12:50:45'),
(596, 9, 'idpTmk6y0wE6drnjltGHnC0DZYYsCCMC', '2017-12-30 17:12:20', '2017-12-30 17:12:20'),
(597, 9, 'mcg6PSzSCT4k02zp7pcNA2KhxI4CEM5B', '2017-12-31 02:27:47', '2017-12-31 02:27:47'),
(598, 9, 'FytzqGsNCSAxXCV4nmRTGFP4WmMv46sS', '2018-01-01 04:26:16', '2018-01-01 04:26:16'),
(599, 9, 'lWina6s3EU3UH2HLShe9Fcdg2xj63nzN', '2018-01-01 12:52:09', '2018-01-01 12:52:09'),
(600, 9, 'QUhe666JPKzaVV4Ur4PthXTALLU4BKN0', '2018-01-02 14:42:49', '2018-01-02 14:42:49'),
(601, 9, 'CdmkVmYAtYQTpZ1OkncQ4DTBAfMzKUtA', '2018-01-02 16:59:52', '2018-01-02 16:59:52'),
(602, 9, 'tH17GHidNSKwVEPkxS60FuZB9VYjBZN5', '2018-01-03 18:14:28', '2018-01-03 18:14:28'),
(603, 9, 'R41vAyFzCHyiqOXvuj111H0pYwHQ72Ze', '2018-01-04 09:36:01', '2018-01-04 09:36:01'),
(604, 9, 'rqC20hVOikfpNtFrBvtcEAWJtJQupz7M', '2018-01-04 09:38:38', '2018-01-04 09:38:38'),
(605, 9, '5JqvznBkQk3ELAM2bTMHd0FBeAHORt4V', '2018-01-04 16:18:59', '2018-01-04 16:18:59'),
(606, 9, 'xxWqOS7WFuSR7agyGsOIXOkLQdQlqUNV', '2018-01-05 13:41:00', '2018-01-05 13:41:00'),
(608, 9, 'mDVGqa9Xj9whlnASFINfJ8dMiQeS4d2D', '2018-01-06 14:45:37', '2018-01-06 14:45:37'),
(609, 1, '6bTxEgNcrge2qeymYxGeDl4i53ActgRh', '2018-01-13 12:54:30', '2018-01-13 12:54:30'),
(610, 1, 'fodEY90PIYVilzSRmUzgMavLnx8ot1Bf', '2018-01-15 13:59:51', '2018-01-15 13:59:51'),
(611, 1, 'TGyyV1URyXhCd37SaQJMHZbz0FSQqfwn', '2018-01-18 15:54:09', '2018-01-18 15:54:09'),
(612, 1, 'if2agsgCopVBHmkABT9whV5J84L9FzUw', '2018-01-25 13:59:13', '2018-01-25 13:59:13'),
(613, 1, 'MBt0gHt0sXx9MTH2yRMi3A7eO5QIxdW2', '2018-01-25 15:30:18', '2018-01-25 15:30:18'),
(614, 1, 'os3P8bBS3GDxFE5kP3ggpnjmYLStjvng', '2017-01-14 19:58:55', '2017-01-14 19:58:55'),
(615, 1, 'ppiMMLK3g1Ak0JfPJ4aUxmWhyErzttaS', '2018-01-27 05:18:09', '2018-01-27 05:18:09'),
(616, 1, 'Tr8rnTdLegAVeZnsSsRrEAYrZYlQdfdf', '2018-02-20 14:44:30', '2018-02-20 14:44:30'),
(617, 1, 'jo6vBtQvtvRwnk1iTv6wNXyjAJfOTs5S', '2018-02-25 06:21:15', '2018-02-25 06:21:15'),
(618, 1, 'WnDOCo50idwCpQXE1lRvebtzSO2XJAaI', '2018-02-28 15:58:41', '2018-02-28 15:58:41'),
(619, 1, 'K6J9Z4loo5KKXZRSv5c09yMeH11Qpyjo', '2018-03-01 06:10:40', '2018-03-01 06:10:40'),
(620, 1, 'V6fEIn9T7a038N9Bx8brRwO0sGD0dMmg', '2018-03-01 09:16:27', '2018-03-01 09:16:27'),
(621, 1, 'knEEyZDYYYJdO5wgu9DUHFhuULBmw8r3', '2018-03-03 04:18:01', '2018-03-03 04:18:01'),
(622, 1, 'WFE6YoykfG26I8n2tnGILMhqRsTpCARA', '2018-03-03 07:03:37', '2018-03-03 07:03:37'),
(623, 1, 'adbFy3Pf5ShFg8H4e7V4ahdAgC4F6e69', '2018-03-13 14:09:00', '2018-03-13 14:09:00'),
(624, 1, 'tl4XO2h7ZpqJnGF8wf7HqwsuMHONlU2A', '2018-03-13 15:17:28', '2018-03-13 15:17:28'),
(625, 1, 'jn71Dku2NJkXZM0IcAF88ky3xnWf5tHZ', '2018-03-15 14:22:14', '2018-03-15 14:22:14'),
(626, 1, 'CQJdcAA0Dt3B3Lqgd4DWqukaOgNeLn5P', '2018-03-15 14:43:03', '2018-03-15 14:43:03'),
(627, 1, 'c4XlSEfmCmA2gbYM9zurdLj2Vg67laoq', '2018-03-15 14:56:22', '2018-03-15 14:56:22'),
(628, 1, 't67f4XNitYSSlORNzyOZoAMvhHa1ofu4', '2018-03-15 15:04:50', '2018-03-15 15:04:50'),
(629, 1, '8vQXrOOkV4dF4GgjTGO3zQxSlOpo16XO', '2018-03-31 06:39:25', '2018-03-31 06:39:25'),
(630, 1, 'ReBQA7zXwfey5TM1rXoYPA6djL9Yr1yi', '2018-03-31 10:19:01', '2018-03-31 10:19:01'),
(631, 1, 'v5oUaXclOgmi4Agm1HIkVwhTBlMopS9y', '2018-03-31 16:53:47', '2018-03-31 16:53:47'),
(632, 1, 'xdz9C7ZWvUCHafNVa3eoetu91dyujEk3', '2018-04-01 02:41:24', '2018-04-01 02:41:24'),
(633, 1, 'u3upwHiHyMWxzYW1pt5vZmtPBy20trCc', '2018-04-03 14:13:46', '2018-04-03 14:13:46'),
(634, 1, 'ux616Cg3ZQwUOQPR19AlKEOPzcAoaR5d', '2018-04-03 14:17:05', '2018-04-03 14:17:05'),
(635, 1, 'X8uRZdGfuty8dJhJmmqJpoDVEe8qTSpm', '2018-04-04 14:44:55', '2018-04-04 14:44:55'),
(636, 1, 'VdsyWXkn0A9INY4uKC8m37VTQA24dkrQ', '2018-04-08 14:57:21', '2018-04-08 14:57:21'),
(637, 1, 'KwstnH2z1JiLqNA02CLkRJk7wGb3Kjya', '2018-04-09 14:57:59', '2018-04-09 14:57:59'),
(638, 1, 'L6LAtQAg7CUDNFVerYCaYj01P6pcBucf', '2018-04-17 15:46:09', '2018-04-17 15:46:09'),
(639, 1, 'tYtIfTpz1g9CazngFGqbnqN5JKoXBiQy', '2018-04-25 14:49:44', '2018-04-25 14:49:44'),
(640, 1, 'xQzzoBqnNJEsEfePYqLpEnkySBFDmO1k', '2018-04-25 14:54:22', '2018-04-25 14:54:22'),
(641, 1, 'UWPJsvsp78QapukNXbiOa7cDUr9m5Kcm', '2018-04-25 15:49:22', '2018-04-25 15:49:22'),
(642, 1, 'r3KWjYZnUBc6wYYnYpVz9CytqIj3ErI6', '2018-05-01 15:40:17', '2018-05-01 15:40:17'),
(643, 1, '4ZBatf2E8Rr6F9mIVuDj7tNDSDi8w0ye', '2018-05-02 15:48:30', '2018-05-02 15:48:30'),
(644, 1, 'iYRuq4HVbM7AiSAJXT0vRoEDN1tqemAe', '2018-05-04 19:19:30', '2018-05-04 19:19:30'),
(645, 1, 'K1BJ0oKdq1YkKgxFgCRBRUYyvG4LaiSd', '2018-05-05 08:05:19', '2018-05-05 08:05:19'),
(647, 1, '0fmvIweHpH4ahxu5ppZT7HFGWEPWGwyU', '2018-05-07 06:56:38', '2018-05-07 06:56:38'),
(648, 1, 'YQ9FVFgV747fInT39QkIdEzZhVXFF1Ci', '2018-05-07 07:57:43', '2018-05-07 07:57:43'),
(649, 1, 'nZ1nEuHVI3zsAaPwVHlhDHbBw0BEQQmr', '2018-05-10 14:14:35', '2018-05-10 14:14:35'),
(650, 1, 'axs5EGlHwpkQFwQ36Mqu1hEsb5iYVvom', '2018-05-14 16:05:39', '2018-05-14 16:05:39'),
(651, 1, 'u5SOpqjYrtykad6crjaYWWmodJpAJaBe', '2018-05-21 15:49:33', '2018-05-21 15:49:33'),
(652, 1, 'Rm1fVvgQd1NwDi3VH0gtde2oLPR34gvt', '2018-05-21 17:32:22', '2018-05-21 17:32:22'),
(653, 1, 'nrSjhMTfaIHjNt8HGlSJTVOojV2H01OG', '2018-05-23 14:14:45', '2018-05-23 14:14:45'),
(654, 1, 'laumN6eKDocm5KQtLrgbO1tdjRyQdqoU', '2018-05-23 16:48:06', '2018-05-23 16:48:06'),
(655, 1, 'Rfc0NcwxNdBYS2elByYP0BzrmukJtlQV', '2018-06-11 13:43:17', '2018-06-11 13:43:17'),
(656, 1, 'rZoe05f20xne6kq9IPVVqCvnCMeOFXv3', '2018-06-21 14:48:43', '2018-06-21 14:48:43'),
(657, 1, '8T8FePoZp824YHkM34KmzfeAOMAiKVi2', '2018-07-08 13:38:10', '2018-07-08 13:38:10'),
(658, 1, 'yOzFgaC3nx4y4MIRBUqiHxQVT9LFwfIM', '2018-07-13 15:08:04', '2018-07-13 15:08:04'),
(659, 1, 'k018qSy2J0GCkrf1GO6GK7l9GZxmTUUg', '2018-07-13 15:31:04', '2018-07-13 15:31:04'),
(660, 1, 'sKzIMUkepeSSflmMuUEwE7qDTd5tzwjy', '2018-07-14 04:51:00', '2018-07-14 04:51:00'),
(661, 1, 'oYiT8zDyOlGVuJ2LwnrkMbyfQCk7IbSB', '2018-07-14 09:20:39', '2018-07-14 09:20:39'),
(662, 1, 'bW8N9zO9dcB7XW4TThDoDbkp1M1l97ma', '2018-07-15 17:05:11', '2018-07-15 17:05:11'),
(663, 1, 'LWnDS3d2wu6YcmLRZidobABmRrbcgD64', '2018-07-22 09:54:52', '2018-07-22 09:54:52'),
(664, 1, 'svbAiLT8Gm3pUutvzzJXleA2M2Kq7mAh', '2018-07-27 12:22:40', '2018-07-27 12:22:40'),
(665, 1, 'MSFwRFepJGjhKksENTE5XV3YxVERzs9v', '2018-07-27 14:53:57', '2018-07-27 14:53:57'),
(666, 1, 'rDT9hw8RiZOQgLnIpQyHzhoH8QSJe54V', '2018-10-24 04:10:50', '2018-10-24 04:10:50'),
(667, 1, 'aU4absMlpN8Zour0gQVEdpe484PYtMYE', '2018-10-27 04:44:33', '2018-10-27 04:44:33'),
(668, 1, 'ieXWqWISjyEYTv1n7EPDmOelqhOUQ0wl', '2018-10-27 06:00:23', '2018-10-27 06:00:23'),
(669, 12, 'MLcVmTcCTm8z8EdKktIOs45f6rLjWzLQ', '2018-12-01 06:01:45', '2018-12-01 06:01:45'),
(672, 1, '0Q42pvfRzu7NX4zy8s9MD1d1jLW8whtO', '2018-12-01 07:09:39', '2018-12-01 07:09:39'),
(673, 1, 'FLQ0feCaXCyNQVf6IIzjYoGGZtJcmQmG', '2018-12-01 07:10:12', '2018-12-01 07:10:12'),
(674, 1, 'w2Et6VUgdxtCv8Jzw1ckZaafDQrHAIrk', '2018-12-01 07:10:44', '2018-12-01 07:10:44'),
(677, 1, 'HvhLoydSU3J3eDofN0fKrxOWcifTGnh4', '2018-12-01 07:15:40', '2018-12-01 07:15:40'),
(685, 13, '34EIE0SuVhtxpYrRHykq9B0eq0KVzrXJ', '2018-12-01 07:43:19', '2018-12-01 07:43:19'),
(687, 9, 'rOSa3xFQy5h3m5tHlxDjANXERI4D4wV4', '2018-12-01 08:19:19', '2018-12-01 08:19:19'),
(688, 1, 'bSRxTX4VaNwonE2wBPeI6axwv3SGuZre', '2018-12-09 07:10:30', '2018-12-09 07:10:30'),
(689, 1, 'yh3n0H7LvMognWFiV0qPAPklvFysQhgw', '2018-12-10 12:37:24', '2018-12-10 12:37:24'),
(690, 1, '8llxFcLwp77rx6SU3eROlZbG16ceQoE5', '2018-12-15 13:20:34', '2018-12-15 13:20:34'),
(692, 1, 'cXtYNqsVBSJamcVnsv5doNLEqY8drcNp', '2018-12-25 05:14:49', '2018-12-25 05:14:49'),
(693, 1, 'VIUTXEYALVB8SuMmrfUPyBHTZniSqAjV', '2019-01-07 15:12:25', '2019-01-07 15:12:25'),
(694, 1, 'uK2i2h2kmgsW3Yyi3ts6Lrhmpgu1s0p3', '2019-01-11 15:55:35', '2019-01-11 15:55:35'),
(697, 1, 'uwc0wHcWQA8eN8C0qldtKcwYUW7i8fTX', '2019-01-11 16:28:34', '2019-01-11 16:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('video','image','url','content') COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `img_path` text COLLATE utf8_unicode_ci,
  `video_path` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `category_id` int(11) NOT NULL,
  `added_by_id` int(11) NOT NULL,
  `added_by_type` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `visit_count` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `content`, `img_path`, `video_path`, `url`, `category_id`, `added_by_id`, `added_by_type`, `created_at`, `updated_at`, `title`, `visit_count`) VALUES
(1, 'url', 'asd', NULL, NULL, 'http://localhost/idea/admin/post/add', 1, 1, 'admin', '2018-10-27 06:54:07', '2018-10-27 08:55:30', '', 0),
(2, 'image', 'asdasd', 'core/storage/uploads/images/file-20181027133114.jpg', NULL, '', 1, 1, 'admin', '2018-10-27 07:22:57', '2018-10-27 08:01:14', '', 0),
(3, 'video', 'asdasd1', NULL, 'core/storage/uploads/videos/file-20181027132942.mp4', '', 3, 1, 'admin', '2018-10-27 07:24:28', '2018-10-27 07:59:42', '', 0),
(4, 'content', 'sad', NULL, NULL, '', 1, 1, 'admin', '2018-10-27 08:29:47', '2018-10-27 08:29:47', '', 0),
(5, 'image', 'sdfsdf', 'core/storage/uploads/images/file-20181210181354.jpg', NULL, '', 2, 1, 'admin', '2018-12-10 12:43:54', '2018-12-10 12:46:14', 'test111', 0),
(6, 'content', 'ads', NULL, NULL, '', 1, 1, 'admin', '2018-12-10 14:01:20', '2018-12-10 14:01:20', 'asda', 0),
(7, 'content', 'asdasd', NULL, NULL, '', 1, 1, 'admin', '2018-12-10 14:22:15', '2018-12-10 14:22:15', 'asda', 0),
(8, 'content', 'asd', NULL, NULL, '', 1, 1, 'admin', '2018-12-10 14:22:45', '2018-12-10 14:22:45', 'asd', 0),
(9, 'content', 'a', NULL, NULL, '', 1, 1, 'admin', '2018-12-10 14:23:34', '2018-12-10 14:23:34', 'a', 0),
(10, 'content', 'sdf', NULL, NULL, '', 1, 1, 'admin', '2018-12-10 14:28:28', '2018-12-10 14:28:28', 'sdf', 0),
(11, 'content', 'a', NULL, NULL, '', 1, 1, 'admin', '2018-12-25 04:48:38', '2018-12-25 04:48:38', 'aa', 0),
(12, 'content', 'das', NULL, NULL, '', 1, 1, 'admin', '2018-12-25 04:49:20', '2018-12-25 04:49:20', 'asd', 0),
(13, 'content', 'das', NULL, NULL, '', 1, 1, 'admin', '2018-12-25 04:50:10', '2018-12-25 04:50:10', 'asd', 0),
(14, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 15:28:07', '2019-01-07 15:28:07', 'sfsdfsfdsdf', 0),
(15, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 15:29:05', '2019-01-07 15:29:05', 'sfsdfsfdsdf', 0),
(16, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 15:55:46', '2019-01-07 15:55:46', 'sfsdfsfdsdf', 0),
(17, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 15:56:07', '2019-01-07 15:56:07', 'sfsdfsfdsdf', 0),
(18, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 15:57:31', '2019-01-07 15:57:31', 'sfsdfsfdsdf', 0),
(19, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 15:59:23', '2019-01-07 15:59:23', 'sfsdfsfdsdf', 0),
(20, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 15:59:57', '2019-01-07 15:59:57', 'sfsdfsfdsdf', 0),
(21, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:02:38', '2019-01-07 16:02:38', 'sfsdfsfdsdf', 0),
(22, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:04:52', '2019-01-07 16:04:52', 'sfsdfsfdsdf', 0),
(23, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:08:41', '2019-01-07 16:08:41', 'sfsdfsfdsdf', 0),
(24, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:22:54', '2019-01-07 16:22:54', 'sfsdfsfdsdf', 0),
(25, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:23:40', '2019-01-07 16:23:40', 'sfsdfsfdsdf', 0),
(26, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:27:33', '2019-01-07 16:27:33', 'sfsdfsfdsdf', 0),
(27, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:29:38', '2019-01-07 16:29:38', 'sfsdfsfdsdf', 0),
(28, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:29:53', '2019-01-07 16:29:53', 'sfsdfsfdsdf', 0),
(29, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:31:50', '2019-01-07 16:31:50', 'sfsdfsfdsdf', 0),
(30, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:32:37', '2019-01-07 16:32:37', 'sfsdfsfdsdf', 0),
(31, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:33:57', '2019-01-07 16:33:57', 'sfsdfsfdsdf', 0),
(32, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:37:24', '2019-01-07 16:37:24', 'sfsdfsfdsdf', 0),
(33, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:52:21', '2019-01-07 16:52:21', 'sfsdfsfdsdf', 0),
(34, 'content', 'asfasdasdsad', NULL, NULL, '', 1, 1, 'admin', '2019-01-07 16:52:44', '2019-01-07 16:52:44', 'sfsdfsfdsdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_notification_views`
--

CREATE TABLE `post_notification_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_notification_views`
--

INSERT INTO `post_notification_views` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 13, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(38, 12, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(39, 11, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(40, 10, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(41, 9, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(42, 8, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(43, 7, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(44, 6, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(45, 5, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(46, 4, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31'),
(47, 3, 1, '2018-12-25 07:12:31', '2018-12-25 07:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `post_rates`
--

CREATE TABLE `post_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_by` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'registered', '    Registered    ', '{\"user\":true}', 9, '2015-10-26 04:16:31', '2018-12-01 09:22:58'),
(2, 'administrator', '      Administrator      ', '{\"admin\":true,\"my-account\":true}', 1, '2015-12-18 18:30:47', '2015-12-18 21:57:50'),
(3, 'sdc-admin', 'SDC ADMIN', '{\"admin\":true}', 1, '2017-01-23 07:04:57', '2017-09-11 07:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(9, 2, '2017-03-12 17:22:26', '2017-03-12 17:22:26'),
(9, 3, '2017-03-12 17:22:26', '2017-03-12 17:22:26'),
(10, 1, '2017-12-27 14:10:24', '2017-12-27 14:10:24'),
(11, 1, '2018-04-03 14:22:12', '2018-04-03 14:22:12'),
(11, 3, '2018-04-03 14:22:13', '2018-04-03 14:22:13'),
(12, 1, '2018-12-01 06:01:45', '2018-12-01 06:01:45'),
(13, 1, '2018-12-01 08:43:52', '2018-12-01 08:43:52'),
(14, 1, '2018-12-06 04:20:55', '2018-12-06 04:20:55'),
(15, 1, '2018-12-06 04:22:54', '2018-12-06 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fb` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `gplus` text COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contact_num` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `fb`, `twitter`, `gplus`, `linkedin`, `created_at`, `updated_at`, `contact_num`, `address`, `admin_email`) VALUES
(1, 'http://localhost/info/admin/setting/all', 'http://localhost/info/admin/setting/all', 'http://localhost/info/admin/setting/all', 'http://localhost/info/admin/setting/all', '0000-00-00 00:00:00', '2019-01-07 15:16:11', 'test1', 'test', 'nuwan.nca@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tagged`
--

CREATE TABLE `tagging_tagged` (
  `id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tagging_tagged`
--

INSERT INTO `tagging_tagged` (`id`, `taggable_id`, `taggable_type`, `tag_name`, `tag_slug`) VALUES
(14, 4, 'PostManage\\Models\\Post', 'Find', 'find'),
(15, 1, 'PostManage\\Models\\Post', 'Find', 'find'),
(23, 7, 'PostManage\\Models\\Post', 'Test', 'test'),
(24, 7, 'PostManage\\Models\\Post', 'Asdat', 'asdat'),
(25, 7, 'PostManage\\Models\\Post', 'Asdsad', 'asdsad'),
(26, 7, 'PostManage\\Models\\Post', 'New', 'new'),
(27, 7, 'PostManage\\Models\\Post', 'Check', 'check'),
(28, 11, 'PostManage\\Models\\Post', 'Aa Aasda', 'aa-aasda'),
(29, 12, 'PostManage\\Models\\Post', 'Dd', 'dd'),
(30, 13, 'PostManage\\Models\\Post', 'Dd', 'dd'),
(31, 14, 'PostManage\\Models\\Post', 'Test', 'test'),
(32, 15, 'PostManage\\Models\\Post', 'Test', 'test'),
(33, 16, 'PostManage\\Models\\Post', 'Test', 'test'),
(34, 17, 'PostManage\\Models\\Post', 'Test', 'test'),
(35, 18, 'PostManage\\Models\\Post', 'Test', 'test'),
(36, 19, 'PostManage\\Models\\Post', 'Test', 'test'),
(37, 20, 'PostManage\\Models\\Post', 'Test', 'test'),
(38, 21, 'PostManage\\Models\\Post', 'Test', 'test'),
(39, 22, 'PostManage\\Models\\Post', 'Test', 'test'),
(40, 23, 'PostManage\\Models\\Post', 'Test', 'test'),
(41, 24, 'PostManage\\Models\\Post', 'Test', 'test'),
(42, 25, 'PostManage\\Models\\Post', 'Test', 'test'),
(43, 26, 'PostManage\\Models\\Post', 'Test', 'test'),
(44, 27, 'PostManage\\Models\\Post', 'Test', 'test'),
(45, 28, 'PostManage\\Models\\Post', 'Test', 'test'),
(46, 29, 'PostManage\\Models\\Post', 'Test', 'test'),
(47, 30, 'PostManage\\Models\\Post', 'Test', 'test'),
(48, 31, 'PostManage\\Models\\Post', 'Test', 'test'),
(49, 32, 'PostManage\\Models\\Post', 'Test', 'test'),
(50, 33, 'PostManage\\Models\\Post', 'Test', 'test'),
(51, 34, 'PostManage\\Models\\Post', 'Test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tags`
--

CREATE TABLE `tagging_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_group_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `suggest` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tagging_tags`
--

INSERT INTO `tagging_tags` (`id`, `tag_group_id`, `slug`, `name`, `suggest`, `count`) VALUES
(14, NULL, 'find', 'Find', 0, 2),
(22, NULL, 'test', 'Test', 0, 22),
(23, NULL, 'asdat', 'Asdat', 0, 1),
(24, NULL, 'asdsad', 'Asdsad', 0, 1),
(25, NULL, 'new', 'New', 0, 1),
(26, NULL, 'check', 'Check', 0, 1),
(27, NULL, 'aa-aasda', 'Aa Aasda', 0, 1),
(28, NULL, 'dd', 'Dd', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag_groups`
--

CREATE TABLE `tagging_tag_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2015-07-11 06:05:27', '2015-07-11 06:05:27'),
(2, NULL, 'ip', '127.0.0.1', '2015-07-11 06:05:28', '2015-07-11 06:05:28'),
(3, NULL, 'global', NULL, '2015-07-11 06:06:28', '2015-07-11 06:06:28'),
(4, NULL, 'ip', '127.0.0.1', '2015-07-11 06:06:28', '2015-07-11 06:06:28'),
(5, NULL, 'global', NULL, '2015-07-13 04:44:23', '2015-07-13 04:44:23'),
(6, NULL, 'ip', '127.0.0.1', '2015-07-13 04:44:23', '2015-07-13 04:44:23'),
(7, 1, 'user', NULL, '2015-07-13 04:44:23', '2015-07-13 04:44:23'),
(8, NULL, 'global', NULL, '2015-07-26 10:24:02', '2015-07-26 10:24:02'),
(9, NULL, 'ip', '127.0.0.1', '2015-07-26 10:24:02', '2015-07-26 10:24:02'),
(10, 1, 'user', NULL, '2015-07-26 10:24:02', '2015-07-26 10:24:02'),
(11, NULL, 'global', NULL, '2015-08-13 09:48:09', '2015-08-13 09:48:09'),
(12, NULL, 'ip', '127.0.0.1', '2015-08-13 09:48:09', '2015-08-13 09:48:09'),
(13, 1, 'user', NULL, '2015-08-13 09:48:09', '2015-08-13 09:48:09'),
(14, NULL, 'global', NULL, '2015-08-13 09:50:45', '2015-08-13 09:50:45'),
(15, NULL, 'ip', '127.0.0.1', '2015-08-13 09:50:45', '2015-08-13 09:50:45'),
(16, 1, 'user', NULL, '2015-08-13 09:50:45', '2015-08-13 09:50:45'),
(17, NULL, 'global', NULL, '2015-08-18 03:31:17', '2015-08-18 03:31:17'),
(18, NULL, 'ip', '127.0.0.1', '2015-08-18 03:31:17', '2015-08-18 03:31:17'),
(19, 1, 'user', NULL, '2015-08-18 03:31:17', '2015-08-18 03:31:17'),
(20, NULL, 'global', NULL, '2015-08-20 03:57:44', '2015-08-20 03:57:44'),
(21, NULL, 'ip', '127.0.0.1', '2015-08-20 03:57:44', '2015-08-20 03:57:44'),
(22, 1, 'user', NULL, '2015-08-20 03:57:45', '2015-08-20 03:57:45'),
(23, NULL, 'global', NULL, '2015-08-20 04:52:53', '2015-08-20 04:52:53'),
(24, NULL, 'ip', '127.0.0.1', '2015-08-20 04:52:53', '2015-08-20 04:52:53'),
(25, 1, 'user', NULL, '2015-08-20 04:52:54', '2015-08-20 04:52:54'),
(26, NULL, 'global', NULL, '2015-08-20 04:53:06', '2015-08-20 04:53:06'),
(27, NULL, 'ip', '127.0.0.1', '2015-08-20 04:53:06', '2015-08-20 04:53:06'),
(28, 1, 'user', NULL, '2015-08-20 04:53:06', '2015-08-20 04:53:06'),
(29, NULL, 'global', NULL, '2015-08-20 04:53:09', '2015-08-20 04:53:09'),
(30, NULL, 'ip', '127.0.0.1', '2015-08-20 04:53:09', '2015-08-20 04:53:09'),
(31, 1, 'user', NULL, '2015-08-20 04:53:09', '2015-08-20 04:53:09'),
(32, NULL, 'global', NULL, '2015-08-20 04:55:59', '2015-08-20 04:55:59'),
(33, NULL, 'ip', '127.0.0.1', '2015-08-20 04:55:59', '2015-08-20 04:55:59'),
(34, 1, 'user', NULL, '2015-08-20 04:55:59', '2015-08-20 04:55:59'),
(35, NULL, 'global', NULL, '2015-08-20 04:56:18', '2015-08-20 04:56:18'),
(36, NULL, 'ip', '127.0.0.1', '2015-08-20 04:56:19', '2015-08-20 04:56:19'),
(37, 1, 'user', NULL, '2015-08-20 04:56:19', '2015-08-20 04:56:19'),
(38, NULL, 'global', NULL, '2015-08-20 04:57:25', '2015-08-20 04:57:25'),
(39, NULL, 'ip', '127.0.0.1', '2015-08-20 04:57:25', '2015-08-20 04:57:25'),
(40, 1, 'user', NULL, '2015-08-20 04:57:25', '2015-08-20 04:57:25'),
(41, NULL, 'global', NULL, '2015-08-24 15:06:12', '2015-08-24 15:06:12'),
(42, NULL, 'ip', '127.0.0.1', '2015-08-24 15:06:12', '2015-08-24 15:06:12'),
(43, NULL, 'global', NULL, '2015-08-24 15:08:25', '2015-08-24 15:08:25'),
(44, NULL, 'ip', '127.0.0.1', '2015-08-24 15:08:25', '2015-08-24 15:08:25'),
(45, NULL, 'global', NULL, '2015-08-24 15:09:09', '2015-08-24 15:09:09'),
(46, NULL, 'ip', '127.0.0.1', '2015-08-24 15:09:09', '2015-08-24 15:09:09'),
(47, NULL, 'global', NULL, '2015-08-24 15:09:44', '2015-08-24 15:09:44'),
(48, NULL, 'ip', '127.0.0.1', '2015-08-24 15:09:44', '2015-08-24 15:09:44'),
(49, NULL, 'global', NULL, '2015-08-24 15:09:49', '2015-08-24 15:09:49'),
(50, NULL, 'ip', '127.0.0.1', '2015-08-24 15:09:50', '2015-08-24 15:09:50'),
(51, NULL, 'global', NULL, '2015-08-24 15:11:29', '2015-08-24 15:11:29'),
(52, NULL, 'ip', '127.0.0.1', '2015-08-24 15:11:29', '2015-08-24 15:11:29'),
(53, NULL, 'global', NULL, '2015-08-25 07:26:45', '2015-08-25 07:26:45'),
(54, NULL, 'ip', '127.0.0.1', '2015-08-25 07:26:45', '2015-08-25 07:26:45'),
(55, NULL, 'global', NULL, '2015-08-26 07:48:20', '2015-08-26 07:48:20'),
(56, NULL, 'ip', '192.168.1.35', '2015-08-26 07:48:21', '2015-08-26 07:48:21'),
(57, NULL, 'global', NULL, '2015-08-26 07:48:23', '2015-08-26 07:48:23'),
(58, NULL, 'ip', '192.168.1.35', '2015-08-26 07:48:23', '2015-08-26 07:48:23'),
(59, NULL, 'global', NULL, '2015-08-26 07:48:27', '2015-08-26 07:48:27'),
(60, NULL, 'ip', '192.168.1.35', '2015-08-26 07:48:27', '2015-08-26 07:48:27'),
(61, NULL, 'global', NULL, '2015-08-26 07:48:31', '2015-08-26 07:48:31'),
(62, NULL, 'ip', '192.168.1.35', '2015-08-26 07:48:31', '2015-08-26 07:48:31'),
(63, NULL, 'global', NULL, '2015-08-26 07:48:36', '2015-08-26 07:48:36'),
(64, NULL, 'ip', '192.168.1.35', '2015-08-26 07:48:36', '2015-08-26 07:48:36'),
(65, NULL, 'global', NULL, '2015-08-26 07:48:48', '2015-08-26 07:48:48'),
(66, NULL, 'global', NULL, '2015-08-27 03:20:50', '2015-08-27 03:20:50'),
(67, NULL, 'ip', '127.0.0.1', '2015-08-27 03:20:50', '2015-08-27 03:20:50'),
(68, 1, 'user', NULL, '2015-08-27 03:20:50', '2015-08-27 03:20:50'),
(69, NULL, 'global', NULL, '2015-08-30 06:42:57', '2015-08-30 06:42:57'),
(70, NULL, 'ip', '127.0.0.1', '2015-08-30 06:42:57', '2015-08-30 06:42:57'),
(71, NULL, 'global', NULL, '2015-08-30 06:51:13', '2015-08-30 06:51:13'),
(72, NULL, 'ip', '127.0.0.1', '2015-08-30 06:51:14', '2015-08-30 06:51:14'),
(73, NULL, 'global', NULL, '2015-09-06 11:03:36', '2015-09-06 11:03:36'),
(74, NULL, 'ip', '127.0.0.1', '2015-09-06 11:03:36', '2015-09-06 11:03:36'),
(75, NULL, 'global', NULL, '2015-09-18 05:45:18', '2015-09-18 05:45:18'),
(76, NULL, 'ip', '192.168.1.15', '2015-09-18 05:45:18', '2015-09-18 05:45:18'),
(77, NULL, 'global', NULL, '2015-09-18 05:45:22', '2015-09-18 05:45:22'),
(78, NULL, 'ip', '192.168.1.15', '2015-09-18 05:45:22', '2015-09-18 05:45:22'),
(79, NULL, 'global', NULL, '2015-09-18 05:45:30', '2015-09-18 05:45:30'),
(80, NULL, 'ip', '192.168.1.15', '2015-09-18 05:45:30', '2015-09-18 05:45:30'),
(81, NULL, 'global', NULL, '2015-09-18 05:45:34', '2015-09-18 05:45:34'),
(82, NULL, 'ip', '192.168.1.15', '2015-09-18 05:45:34', '2015-09-18 05:45:34'),
(83, NULL, 'global', NULL, '2015-09-18 05:45:40', '2015-09-18 05:45:40'),
(84, NULL, 'ip', '192.168.1.15', '2015-09-18 05:45:40', '2015-09-18 05:45:40'),
(85, NULL, 'global', NULL, '2015-10-29 13:37:26', '2015-10-29 13:37:26'),
(86, NULL, 'ip', '127.0.0.1', '2015-10-29 13:37:26', '2015-10-29 13:37:26'),
(87, 1, 'user', NULL, '2015-10-29 13:37:26', '2015-10-29 13:37:26'),
(88, NULL, 'global', NULL, '2015-10-29 13:37:30', '2015-10-29 13:37:30'),
(89, NULL, 'ip', '127.0.0.1', '2015-10-29 13:37:30', '2015-10-29 13:37:30'),
(90, 1, 'user', NULL, '2015-10-29 13:37:30', '2015-10-29 13:37:30'),
(91, NULL, 'global', NULL, '2015-10-29 13:37:34', '2015-10-29 13:37:34'),
(92, NULL, 'ip', '127.0.0.1', '2015-10-29 13:37:34', '2015-10-29 13:37:34'),
(93, 1, 'user', NULL, '2015-10-29 13:37:34', '2015-10-29 13:37:34'),
(94, NULL, 'global', NULL, '2015-10-29 13:37:41', '2015-10-29 13:37:41'),
(95, NULL, 'ip', '127.0.0.1', '2015-10-29 13:37:41', '2015-10-29 13:37:41'),
(96, 1, 'user', NULL, '2015-10-29 13:37:41', '2015-10-29 13:37:41'),
(97, NULL, 'global', NULL, '2015-10-29 13:37:48', '2015-10-29 13:37:48'),
(98, NULL, 'ip', '127.0.0.1', '2015-10-29 13:37:48', '2015-10-29 13:37:48'),
(99, 1, 'user', NULL, '2015-10-29 13:37:48', '2015-10-29 13:37:48'),
(100, NULL, 'global', NULL, '2015-10-29 13:37:52', '2015-10-29 13:37:52'),
(101, NULL, 'ip', '127.0.0.1', '2015-10-29 13:37:52', '2015-10-29 13:37:52'),
(102, 1, 'user', NULL, '2015-10-29 13:37:52', '2015-10-29 13:37:52'),
(103, NULL, 'global', NULL, '2015-11-04 03:13:02', '2015-11-04 03:13:02'),
(104, NULL, 'ip', '127.0.0.1', '2015-11-04 03:13:02', '2015-11-04 03:13:02'),
(105, 1, 'user', NULL, '2015-11-04 03:13:02', '2015-11-04 03:13:02'),
(106, NULL, 'global', NULL, '2015-11-07 11:26:55', '2015-11-07 11:26:55'),
(107, NULL, 'ip', '127.0.0.1', '2015-11-07 11:26:55', '2015-11-07 11:26:55'),
(108, NULL, 'global', NULL, '2015-11-07 11:27:01', '2015-11-07 11:27:01'),
(109, NULL, 'ip', '127.0.0.1', '2015-11-07 11:27:01', '2015-11-07 11:27:01'),
(110, NULL, 'global', NULL, '2015-11-18 18:09:36', '2015-11-18 18:09:36'),
(111, NULL, 'ip', '127.0.0.1', '2015-11-18 18:09:36', '2015-11-18 18:09:36'),
(112, NULL, 'global', NULL, '2015-11-18 18:09:43', '2015-11-18 18:09:43'),
(113, NULL, 'ip', '127.0.0.1', '2015-11-18 18:09:43', '2015-11-18 18:09:43'),
(114, NULL, 'global', NULL, '2015-11-18 18:12:14', '2015-11-18 18:12:14'),
(115, NULL, 'ip', '127.0.0.1', '2015-11-18 18:12:14', '2015-11-18 18:12:14'),
(116, NULL, 'global', NULL, '2015-11-18 18:12:27', '2015-11-18 18:12:27'),
(117, NULL, 'ip', '127.0.0.1', '2015-11-18 18:12:27', '2015-11-18 18:12:27'),
(118, NULL, 'global', NULL, '2015-11-18 18:12:36', '2015-11-18 18:12:36'),
(119, NULL, 'ip', '127.0.0.1', '2015-11-18 18:12:36', '2015-11-18 18:12:36'),
(120, NULL, 'global', NULL, '2015-11-18 20:27:03', '2015-11-18 20:27:03'),
(121, NULL, 'ip', '::1', '2015-11-18 20:27:03', '2015-11-18 20:27:03'),
(122, NULL, 'global', NULL, '2015-11-18 20:27:06', '2015-11-18 20:27:06'),
(123, NULL, 'ip', '::1', '2015-11-18 20:27:06', '2015-11-18 20:27:06'),
(124, NULL, 'global', NULL, '2015-11-18 21:26:24', '2015-11-18 21:26:24'),
(125, NULL, 'ip', '::1', '2015-11-18 21:26:24', '2015-11-18 21:26:24'),
(126, 1, 'user', NULL, '2015-11-18 21:26:24', '2015-11-18 21:26:24'),
(127, NULL, 'global', NULL, '2015-11-18 21:26:27', '2015-11-18 21:26:27'),
(128, NULL, 'ip', '::1', '2015-11-18 21:26:27', '2015-11-18 21:26:27'),
(129, 1, 'user', NULL, '2015-11-18 21:26:27', '2015-11-18 21:26:27'),
(130, NULL, 'global', NULL, '2015-11-23 18:13:05', '2015-11-23 18:13:05'),
(131, NULL, 'ip', '::1', '2015-11-23 18:13:05', '2015-11-23 18:13:05'),
(132, 1, 'user', NULL, '2015-11-23 18:13:05', '2015-11-23 18:13:05'),
(133, NULL, 'global', NULL, '2015-11-24 01:14:15', '2015-11-24 01:14:15'),
(134, NULL, 'ip', '::1', '2015-11-24 01:14:15', '2015-11-24 01:14:15'),
(135, NULL, 'global', NULL, '2015-12-03 01:12:12', '2015-12-03 01:12:12'),
(136, NULL, 'ip', '::1', '2015-12-03 01:12:12', '2015-12-03 01:12:12'),
(137, 1, 'user', NULL, '2015-12-03 01:12:12', '2015-12-03 01:12:12'),
(138, NULL, 'global', NULL, '2015-12-03 02:32:03', '2015-12-03 02:32:03'),
(139, NULL, 'ip', '::1', '2015-12-03 02:32:03', '2015-12-03 02:32:03'),
(140, 1, 'user', NULL, '2015-12-03 02:32:03', '2015-12-03 02:32:03'),
(141, NULL, 'global', NULL, '2015-12-03 17:42:59', '2015-12-03 17:42:59'),
(142, NULL, 'ip', '127.0.0.1', '2015-12-03 17:42:59', '2015-12-03 17:42:59'),
(143, 1, 'user', NULL, '2015-12-03 17:42:59', '2015-12-03 17:42:59'),
(144, NULL, 'global', NULL, '2015-12-03 17:43:02', '2015-12-03 17:43:02'),
(145, NULL, 'ip', '127.0.0.1', '2015-12-03 17:43:02', '2015-12-03 17:43:02'),
(146, 1, 'user', NULL, '2015-12-03 17:43:02', '2015-12-03 17:43:02'),
(147, NULL, 'global', NULL, '2015-12-18 22:28:50', '2015-12-18 22:28:50'),
(148, NULL, 'ip', '127.0.0.1', '2015-12-18 22:28:50', '2015-12-18 22:28:50'),
(149, 1, 'user', NULL, '2015-12-18 22:28:50', '2015-12-18 22:28:50'),
(150, NULL, 'global', NULL, '2016-01-09 00:28:55', '2016-01-09 00:28:55'),
(151, NULL, 'ip', '192.168.1.121', '2016-01-09 00:28:55', '2016-01-09 00:28:55'),
(153, NULL, 'global', NULL, '2016-01-09 00:29:26', '2016-01-09 00:29:26'),
(154, NULL, 'ip', '192.168.1.121', '2016-01-09 00:29:26', '2016-01-09 00:29:26'),
(156, NULL, 'global', NULL, '2016-01-09 00:29:41', '2016-01-09 00:29:41'),
(157, NULL, 'ip', '192.168.1.121', '2016-01-09 00:29:41', '2016-01-09 00:29:41'),
(159, NULL, 'global', NULL, '2016-01-09 00:30:07', '2016-01-09 00:30:07'),
(160, NULL, 'ip', '192.168.1.121', '2016-01-09 00:30:07', '2016-01-09 00:30:07'),
(162, NULL, 'global', NULL, '2016-01-11 17:50:41', '2016-01-11 17:50:41'),
(163, NULL, 'ip', '192.168.1.142', '2016-01-11 17:50:41', '2016-01-11 17:50:41'),
(165, NULL, 'global', NULL, '2016-01-11 17:50:50', '2016-01-11 17:50:50'),
(166, NULL, 'ip', '192.168.1.142', '2016-01-11 17:50:50', '2016-01-11 17:50:50'),
(168, NULL, 'global', NULL, '2016-01-11 17:51:03', '2016-01-11 17:51:03'),
(169, NULL, 'ip', '192.168.1.142', '2016-01-11 17:51:03', '2016-01-11 17:51:03'),
(171, NULL, 'global', NULL, '2016-01-11 17:51:16', '2016-01-11 17:51:16'),
(172, NULL, 'ip', '192.168.1.142', '2016-01-11 17:51:16', '2016-01-11 17:51:16'),
(174, NULL, 'global', NULL, '2016-01-11 17:52:23', '2016-01-11 17:52:23'),
(175, NULL, 'ip', '192.168.1.142', '2016-01-11 17:52:23', '2016-01-11 17:52:23'),
(177, NULL, 'global', NULL, '2016-01-11 17:52:58', '2016-01-11 17:52:58'),
(178, NULL, 'ip', '192.168.1.142', '2016-01-11 17:52:58', '2016-01-11 17:52:58'),
(180, NULL, 'global', NULL, '2016-01-11 18:06:27', '2016-01-11 18:06:27'),
(181, NULL, 'ip', '192.168.1.142', '2016-01-11 18:06:27', '2016-01-11 18:06:27'),
(183, NULL, 'global', NULL, '2016-01-11 18:06:33', '2016-01-11 18:06:33'),
(184, NULL, 'ip', '192.168.1.142', '2016-01-11 18:06:33', '2016-01-11 18:06:33'),
(186, NULL, 'global', NULL, '2016-01-11 18:06:36', '2016-01-11 18:06:36'),
(187, NULL, 'ip', '192.168.1.142', '2016-01-11 18:06:36', '2016-01-11 18:06:36'),
(189, NULL, 'global', NULL, '2016-01-11 18:06:41', '2016-01-11 18:06:41'),
(190, NULL, 'ip', '192.168.1.142', '2016-01-11 18:06:41', '2016-01-11 18:06:41'),
(192, NULL, 'global', NULL, '2016-01-11 18:18:58', '2016-01-11 18:18:58'),
(193, NULL, 'ip', '192.168.1.142', '2016-01-11 18:18:58', '2016-01-11 18:18:58'),
(195, NULL, 'global', NULL, '2016-01-24 06:25:32', '2016-01-24 06:25:32'),
(196, NULL, 'ip', '127.0.0.1', '2016-01-24 06:25:32', '2016-01-24 06:25:32'),
(197, NULL, 'global', NULL, '2016-01-26 21:27:09', '2016-01-26 21:27:09'),
(198, NULL, 'ip', '127.0.0.1', '2016-01-26 21:27:09', '2016-01-26 21:27:09'),
(200, NULL, 'global', NULL, '2016-01-28 17:10:03', '2016-01-28 17:10:03'),
(201, NULL, 'ip', '127.0.0.1', '2016-01-28 17:10:03', '2016-01-28 17:10:03'),
(202, 1, 'user', NULL, '2016-01-28 17:10:03', '2016-01-28 17:10:03'),
(203, NULL, 'global', NULL, '2016-02-10 17:29:12', '2016-02-10 17:29:12'),
(204, NULL, 'ip', '127.0.0.1', '2016-02-10 17:29:12', '2016-02-10 17:29:12'),
(205, 1, 'user', NULL, '2016-02-10 17:29:12', '2016-02-10 17:29:12'),
(206, NULL, 'global', NULL, '2016-02-24 06:45:41', '2016-02-24 06:45:41'),
(207, NULL, 'ip', '192.168.1.59', '2016-02-24 06:45:41', '2016-02-24 06:45:41'),
(209, NULL, 'global', NULL, '2016-02-24 06:47:03', '2016-02-24 06:47:03'),
(210, NULL, 'ip', '192.168.1.59', '2016-02-24 06:47:03', '2016-02-24 06:47:03'),
(212, NULL, 'global', NULL, '2016-02-24 06:47:06', '2016-02-24 06:47:06'),
(213, NULL, 'ip', '192.168.1.59', '2016-02-24 06:47:06', '2016-02-24 06:47:06'),
(215, NULL, 'global', NULL, '2016-03-02 03:47:00', '2016-03-02 03:47:00'),
(216, NULL, 'ip', '127.0.0.1', '2016-03-02 03:47:00', '2016-03-02 03:47:00'),
(217, 1, 'user', NULL, '2016-03-02 03:47:00', '2016-03-02 03:47:00'),
(218, NULL, 'global', NULL, '2016-03-28 09:32:49', '2016-03-28 09:32:49'),
(219, NULL, 'ip', '127.0.0.1', '2016-03-28 09:32:49', '2016-03-28 09:32:49'),
(220, NULL, 'global', NULL, '2016-03-28 09:32:56', '2016-03-28 09:32:56'),
(221, NULL, 'ip', '127.0.0.1', '2016-03-28 09:32:56', '2016-03-28 09:32:56'),
(222, 1, 'user', NULL, '2016-03-28 09:32:56', '2016-03-28 09:32:56'),
(223, NULL, 'global', NULL, '2016-03-30 11:37:40', '2016-03-30 11:37:40'),
(224, NULL, 'ip', '::1', '2016-03-30 11:37:41', '2016-03-30 11:37:41'),
(225, NULL, 'global', NULL, '2016-05-02 04:01:37', '2016-05-02 04:01:37'),
(226, NULL, 'ip', '192.168.1.41', '2016-05-02 04:01:37', '2016-05-02 04:01:37'),
(227, NULL, 'global', NULL, '2016-05-02 04:01:40', '2016-05-02 04:01:40'),
(228, NULL, 'ip', '192.168.1.41', '2016-05-02 04:01:40', '2016-05-02 04:01:40'),
(229, NULL, 'global', NULL, '2016-05-02 04:01:43', '2016-05-02 04:01:43'),
(230, NULL, 'ip', '192.168.1.41', '2016-05-02 04:01:43', '2016-05-02 04:01:43'),
(231, NULL, 'global', NULL, '2016-05-02 04:01:49', '2016-05-02 04:01:49'),
(232, NULL, 'ip', '192.168.1.41', '2016-05-02 04:01:49', '2016-05-02 04:01:49'),
(233, NULL, 'global', NULL, '2016-05-02 04:26:12', '2016-05-02 04:26:12'),
(234, NULL, 'ip', '192.168.1.41', '2016-05-02 04:26:12', '2016-05-02 04:26:12'),
(235, NULL, 'global', NULL, '2016-05-02 04:26:40', '2016-05-02 04:26:40'),
(236, NULL, 'ip', '192.168.1.41', '2016-05-02 04:26:40', '2016-05-02 04:26:40'),
(237, NULL, 'global', NULL, '2016-05-02 04:26:58', '2016-05-02 04:26:58'),
(238, NULL, 'ip', '192.168.1.41', '2016-05-02 04:26:58', '2016-05-02 04:26:58'),
(239, NULL, 'global', NULL, '2016-05-02 04:27:01', '2016-05-02 04:27:01'),
(240, NULL, 'ip', '192.168.1.41', '2016-05-02 04:27:01', '2016-05-02 04:27:01'),
(241, NULL, 'global', NULL, '2016-05-02 04:27:07', '2016-05-02 04:27:07'),
(242, NULL, 'ip', '192.168.1.41', '2016-05-02 04:27:07', '2016-05-02 04:27:07'),
(243, NULL, 'global', NULL, '2017-01-15 22:13:01', '2017-01-15 22:13:01'),
(244, NULL, 'ip', '::1', '2017-01-15 22:13:01', '2017-01-15 22:13:01'),
(245, NULL, 'global', NULL, '2017-01-15 22:53:12', '2017-01-15 22:53:12'),
(246, NULL, 'ip', '::1', '2017-01-15 22:53:12', '2017-01-15 22:53:12'),
(248, NULL, 'global', NULL, '2017-01-15 22:53:40', '2017-01-15 22:53:40'),
(249, NULL, 'ip', '::1', '2017-01-15 22:53:40', '2017-01-15 22:53:40'),
(251, NULL, 'global', NULL, '2017-01-18 19:05:37', '2017-01-18 19:05:37'),
(252, NULL, 'ip', '::1', '2017-01-18 19:05:37', '2017-01-18 19:05:37'),
(253, NULL, 'global', NULL, '2017-01-25 06:29:52', '2017-01-25 06:29:52'),
(254, NULL, 'ip', '::1', '2017-01-25 06:29:52', '2017-01-25 06:29:52'),
(255, NULL, 'global', NULL, '2017-04-12 08:55:26', '2017-04-12 08:55:26'),
(256, NULL, 'ip', '112.135.7.121', '2017-04-12 08:55:26', '2017-04-12 08:55:26'),
(257, 9, 'user', NULL, '2017-04-12 08:55:26', '2017-04-12 08:55:26'),
(258, NULL, 'global', NULL, '2017-04-24 06:17:15', '2017-04-24 06:17:15'),
(259, NULL, 'ip', '::1', '2017-04-24 06:17:15', '2017-04-24 06:17:15'),
(260, NULL, 'global', NULL, '2017-04-30 06:53:53', '2017-04-30 06:53:53'),
(261, NULL, 'ip', '123.231.108.3', '2017-04-30 06:53:53', '2017-04-30 06:53:53'),
(262, 9, 'user', NULL, '2017-04-30 06:53:53', '2017-04-30 06:53:53'),
(263, NULL, 'global', NULL, '2017-04-30 06:53:58', '2017-04-30 06:53:58'),
(264, NULL, 'ip', '123.231.108.3', '2017-04-30 06:53:58', '2017-04-30 06:53:58'),
(265, 9, 'user', NULL, '2017-04-30 06:53:58', '2017-04-30 06:53:58'),
(266, NULL, 'global', NULL, '2017-04-30 06:54:05', '2017-04-30 06:54:05'),
(267, NULL, 'ip', '123.231.108.3', '2017-04-30 06:54:05', '2017-04-30 06:54:05'),
(268, 9, 'user', NULL, '2017-04-30 06:54:05', '2017-04-30 06:54:05'),
(269, NULL, 'global', NULL, '2017-04-30 06:54:14', '2017-04-30 06:54:14'),
(270, NULL, 'ip', '123.231.108.3', '2017-04-30 06:54:14', '2017-04-30 06:54:14'),
(271, 9, 'user', NULL, '2017-04-30 06:54:14', '2017-04-30 06:54:14'),
(272, NULL, 'global', NULL, '2017-04-30 06:54:19', '2017-04-30 06:54:19'),
(273, NULL, 'ip', '123.231.108.3', '2017-04-30 06:54:19', '2017-04-30 06:54:19'),
(274, 9, 'user', NULL, '2017-04-30 06:54:19', '2017-04-30 06:54:19'),
(275, NULL, 'global', NULL, '2017-04-30 06:54:24', '2017-04-30 06:54:24'),
(276, NULL, 'ip', '123.231.108.3', '2017-04-30 06:54:24', '2017-04-30 06:54:24'),
(277, 9, 'user', NULL, '2017-04-30 06:54:24', '2017-04-30 06:54:24'),
(278, NULL, 'global', NULL, '2017-08-30 06:27:01', '2017-08-30 06:27:01'),
(279, NULL, 'ip', '113.59.213.196', '2017-08-30 06:27:01', '2017-08-30 06:27:01'),
(280, NULL, 'global', NULL, '2017-09-18 11:32:04', '2017-09-18 11:32:04'),
(281, NULL, 'ip', '::1', '2017-09-18 11:32:04', '2017-09-18 11:32:04'),
(282, NULL, 'global', NULL, '2017-09-26 05:46:17', '2017-09-26 05:46:17'),
(283, NULL, 'ip', '::1', '2017-09-26 05:46:17', '2017-09-26 05:46:17'),
(284, 9, 'user', NULL, '2017-09-26 05:46:17', '2017-09-26 05:46:17'),
(285, NULL, 'global', NULL, '2017-10-17 16:52:42', '2017-10-17 16:52:42'),
(286, NULL, 'ip', '::1', '2017-10-17 16:52:42', '2017-10-17 16:52:42'),
(287, NULL, 'global', NULL, '2018-01-15 13:59:41', '2018-01-15 13:59:41'),
(288, NULL, 'ip', '::1', '2018-01-15 13:59:41', '2018-01-15 13:59:41'),
(289, 1, 'user', NULL, '2018-01-15 13:59:41', '2018-01-15 13:59:41'),
(290, NULL, 'global', NULL, '2018-01-18 15:53:38', '2018-01-18 15:53:38'),
(291, NULL, 'ip', '::1', '2018-01-18 15:53:39', '2018-01-18 15:53:39'),
(292, 1, 'user', NULL, '2018-01-18 15:53:39', '2018-01-18 15:53:39'),
(293, NULL, 'global', NULL, '2018-01-25 13:58:56', '2018-01-25 13:58:56'),
(294, NULL, 'ip', '::1', '2018-01-25 13:58:56', '2018-01-25 13:58:56'),
(295, 1, 'user', NULL, '2018-01-25 13:58:56', '2018-01-25 13:58:56'),
(296, NULL, 'global', NULL, '2018-01-27 05:18:02', '2018-01-27 05:18:02'),
(297, NULL, 'ip', '::1', '2018-01-27 05:18:02', '2018-01-27 05:18:02'),
(298, 1, 'user', NULL, '2018-01-27 05:18:02', '2018-01-27 05:18:02'),
(299, NULL, 'global', NULL, '2018-02-20 14:40:48', '2018-02-20 14:40:48'),
(300, NULL, 'ip', '::1', '2018-02-20 14:40:48', '2018-02-20 14:40:48'),
(301, NULL, 'global', NULL, '2018-02-20 14:40:55', '2018-02-20 14:40:55'),
(302, NULL, 'ip', '::1', '2018-02-20 14:40:55', '2018-02-20 14:40:55'),
(303, NULL, 'global', NULL, '2018-02-20 14:44:06', '2018-02-20 14:44:06'),
(304, NULL, 'ip', '::1', '2018-02-20 14:44:07', '2018-02-20 14:44:07'),
(305, NULL, 'global', NULL, '2018-03-01 09:16:22', '2018-03-01 09:16:22'),
(306, NULL, 'ip', '::1', '2018-03-01 09:16:22', '2018-03-01 09:16:22'),
(307, 1, 'user', NULL, '2018-03-01 09:16:23', '2018-03-01 09:16:23'),
(308, NULL, 'global', NULL, '2018-03-13 15:17:06', '2018-03-13 15:17:06'),
(309, NULL, 'ip', '::1', '2018-03-13 15:17:07', '2018-03-13 15:17:07'),
(310, NULL, 'global', NULL, '2018-03-15 15:04:26', '2018-03-15 15:04:26'),
(311, NULL, 'ip', '::1', '2018-03-15 15:04:29', '2018-03-15 15:04:29'),
(312, 1, 'user', NULL, '2018-03-15 15:04:38', '2018-03-15 15:04:38'),
(313, NULL, 'global', NULL, '2018-03-31 06:22:11', '2018-03-31 06:22:11'),
(314, NULL, 'ip', '::1', '2018-03-31 06:22:11', '2018-03-31 06:22:11'),
(315, NULL, 'global', NULL, '2018-03-31 06:22:27', '2018-03-31 06:22:27'),
(316, NULL, 'ip', '::1', '2018-03-31 06:22:28', '2018-03-31 06:22:28'),
(317, NULL, 'global', NULL, '2018-03-31 06:24:03', '2018-03-31 06:24:03'),
(318, NULL, 'ip', '::1', '2018-03-31 06:24:03', '2018-03-31 06:24:03'),
(319, NULL, 'global', NULL, '2018-03-31 06:24:20', '2018-03-31 06:24:20'),
(320, NULL, 'ip', '::1', '2018-03-31 06:24:20', '2018-03-31 06:24:20'),
(321, NULL, 'global', NULL, '2018-04-03 14:13:38', '2018-04-03 14:13:38'),
(322, NULL, 'ip', '::1', '2018-04-03 14:13:39', '2018-04-03 14:13:39'),
(323, 1, 'user', NULL, '2018-04-03 14:13:39', '2018-04-03 14:13:39'),
(324, NULL, 'global', NULL, '2018-04-04 14:44:35', '2018-04-04 14:44:35'),
(325, NULL, 'ip', '::1', '2018-04-04 14:44:35', '2018-04-04 14:44:35'),
(326, 1, 'user', NULL, '2018-04-04 14:44:36', '2018-04-04 14:44:36'),
(327, NULL, 'global', NULL, '2018-04-09 14:55:44', '2018-04-09 14:55:44'),
(328, NULL, 'ip', '::1', '2018-04-09 14:55:45', '2018-04-09 14:55:45'),
(329, 1, 'user', NULL, '2018-04-09 14:55:45', '2018-04-09 14:55:45'),
(330, NULL, 'global', NULL, '2018-04-25 14:49:24', '2018-04-25 14:49:24'),
(331, NULL, 'ip', '::1', '2018-04-25 14:49:24', '2018-04-25 14:49:24'),
(332, NULL, 'global', NULL, '2018-04-25 14:54:07', '2018-04-25 14:54:07'),
(333, NULL, 'ip', '::1', '2018-04-25 14:54:07', '2018-04-25 14:54:07'),
(334, NULL, 'global', NULL, '2018-04-25 14:54:13', '2018-04-25 14:54:13'),
(335, NULL, 'ip', '::1', '2018-04-25 14:54:13', '2018-04-25 14:54:13'),
(336, NULL, 'global', NULL, '2018-05-07 06:19:15', '2018-05-07 06:19:15'),
(337, NULL, 'ip', '::1', '2018-05-07 06:19:16', '2018-05-07 06:19:16'),
(338, 1, 'user', NULL, '2018-05-07 06:19:16', '2018-05-07 06:19:16'),
(339, NULL, 'global', NULL, '2018-05-07 06:56:29', '2018-05-07 06:56:29'),
(340, NULL, 'ip', '::1', '2018-05-07 06:56:30', '2018-05-07 06:56:30'),
(341, NULL, 'global', NULL, '2018-05-23 16:47:57', '2018-05-23 16:47:57'),
(342, NULL, 'ip', '::1', '2018-05-23 16:47:57', '2018-05-23 16:47:57'),
(343, NULL, 'global', NULL, '2018-06-11 13:42:41', '2018-06-11 13:42:41'),
(344, NULL, 'ip', '::1', '2018-06-11 13:42:42', '2018-06-11 13:42:42'),
(345, NULL, 'global', NULL, '2018-06-11 13:42:49', '2018-06-11 13:42:49'),
(346, NULL, 'ip', '::1', '2018-06-11 13:42:50', '2018-06-11 13:42:50'),
(347, 1, 'user', NULL, '2018-06-11 13:42:53', '2018-06-11 13:42:53'),
(348, NULL, 'global', NULL, '2018-06-21 14:48:26', '2018-06-21 14:48:26'),
(349, NULL, 'ip', '::1', '2018-06-21 14:48:26', '2018-06-21 14:48:26'),
(350, NULL, 'global', NULL, '2018-06-21 14:48:38', '2018-06-21 14:48:38'),
(351, NULL, 'ip', '::1', '2018-06-21 14:48:38', '2018-06-21 14:48:38'),
(352, 1, 'user', NULL, '2018-06-21 14:48:38', '2018-06-21 14:48:38'),
(353, NULL, 'global', NULL, '2018-07-13 15:07:50', '2018-07-13 15:07:50'),
(354, NULL, 'ip', '::1', '2018-07-13 15:07:50', '2018-07-13 15:07:50'),
(355, NULL, 'global', NULL, '2018-07-13 15:30:52', '2018-07-13 15:30:52'),
(356, NULL, 'ip', '::1', '2018-07-13 15:30:52', '2018-07-13 15:30:52'),
(357, 1, 'user', NULL, '2018-07-13 15:30:52', '2018-07-13 15:30:52'),
(358, NULL, 'global', NULL, '2018-07-14 04:41:27', '2018-07-14 04:41:27'),
(359, NULL, 'ip', '::1', '2018-07-14 04:41:27', '2018-07-14 04:41:27'),
(360, 1, 'user', NULL, '2018-07-14 04:41:28', '2018-07-14 04:41:28'),
(361, NULL, 'global', NULL, '2018-07-14 04:43:27', '2018-07-14 04:43:27'),
(362, NULL, 'ip', '::1', '2018-07-14 04:43:27', '2018-07-14 04:43:27'),
(363, NULL, 'global', NULL, '2018-07-15 17:04:44', '2018-07-15 17:04:44'),
(364, NULL, 'ip', '::1', '2018-07-15 17:04:44', '2018-07-15 17:04:44'),
(365, NULL, 'global', NULL, '2018-07-15 17:04:56', '2018-07-15 17:04:56'),
(366, NULL, 'ip', '::1', '2018-07-15 17:04:56', '2018-07-15 17:04:56'),
(367, 1, 'user', NULL, '2018-07-15 17:04:57', '2018-07-15 17:04:57'),
(368, NULL, 'global', NULL, '2018-07-22 09:54:14', '2018-07-22 09:54:14'),
(369, NULL, 'ip', '::1', '2018-07-22 09:54:14', '2018-07-22 09:54:14'),
(370, 1, 'user', NULL, '2018-07-22 09:54:14', '2018-07-22 09:54:14'),
(371, NULL, 'global', NULL, '2018-07-22 09:54:40', '2018-07-22 09:54:40'),
(372, NULL, 'ip', '::1', '2018-07-22 09:54:40', '2018-07-22 09:54:40'),
(373, NULL, 'global', NULL, '2018-07-27 12:22:27', '2018-07-27 12:22:27'),
(374, NULL, 'ip', '::1', '2018-07-27 12:22:28', '2018-07-27 12:22:28'),
(375, 1, 'user', NULL, '2018-07-27 12:22:28', '2018-07-27 12:22:28'),
(376, NULL, 'global', NULL, '2018-12-01 06:20:59', '2018-12-01 06:20:59'),
(377, NULL, 'ip', '::1', '2018-12-01 06:20:59', '2018-12-01 06:20:59'),
(378, NULL, 'global', NULL, '2018-12-01 06:23:09', '2018-12-01 06:23:09'),
(379, NULL, 'ip', '::1', '2018-12-01 06:23:11', '2018-12-01 06:23:11'),
(380, NULL, 'global', NULL, '2018-12-01 06:26:52', '2018-12-01 06:26:52'),
(381, NULL, 'ip', '::1', '2018-12-01 06:26:52', '2018-12-01 06:26:52'),
(382, NULL, 'global', NULL, '2018-12-01 06:27:56', '2018-12-01 06:27:56'),
(383, NULL, 'ip', '::1', '2018-12-01 06:27:57', '2018-12-01 06:27:57'),
(384, NULL, 'global', NULL, '2018-12-01 06:28:30', '2018-12-01 06:28:30'),
(385, NULL, 'ip', '::1', '2018-12-01 06:28:31', '2018-12-01 06:28:31'),
(386, NULL, 'global', NULL, '2018-12-01 06:29:24', '2018-12-01 06:29:24'),
(387, NULL, 'ip', '::1', '2018-12-01 06:29:25', '2018-12-01 06:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fb_id` text COLLATE utf8_unicode_ci NOT NULL,
  `g_id` text COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8_unicode_ci,
  `branch` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `supervisor_id` int(25) DEFAULT NULL,
  `lft` int(25) DEFAULT NULL,
  `rgt` int(25) DEFAULT NULL,
  `depth` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fb_id`, `g_id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `branch`, `password`, `permissions`, `last_login`, `supervisor_id`, `lft`, `rgt`, `depth`, `status`, `created_at`, `updated_at`, `active`) VALUES
(1, '', '', 'Super', 'Administrator', 'super.admin', 'admin@admin.lk', NULL, 0, '$2y$10$vJ0/.9l8qByoN/ZFJlzew.U3SUrYnsI6QoPezSfeo9qDQYLJSjC/O', '{\"admin\":true,\"index\":true}', '2019-01-11 16:28:34', NULL, 7, 18, 0, 1, '2015-07-11 06:09:31', '2019-01-11 16:28:35', 1),
(9, '', '', 'SDC', 'Developer', 'developer', 'developer@admin.com', NULL, 1, '$2y$10$ijimT7X0fQADncEnlwgRZelKPlCoLE81YVjgQlX25F64Ulf5JHiaG', NULL, '2018-12-01 08:19:19', 1, 12, 15, 1, 1, '2017-01-23 07:05:38', '2018-12-01 08:19:20', 1),
(10, '', '', NULL, NULL, 'lakshitham', 'rullzzm@gmail.comm', NULL, 0, '$2y$10$KYJLzG26TupSdCXfRh9XRO0VctPDiWMSfbr2ooltjOGpZqZvf5KSS', NULL, '2017-12-30 09:26:38', NULL, 19, 20, 0, NULL, '2017-12-27 14:10:24', '2018-12-01 08:43:00', 1),
(11, '', '', 'Test', 'test', 'test', '', NULL, 0, '$2y$10$dvRBZsUn6zr2aueDjT3hVOQOlFB3AlO67NQ7aQaO4ge89y447Qo2q', NULL, NULL, 9, 13, 14, 2, NULL, '2018-04-03 14:19:44', '2018-04-03 14:22:11', 1),
(12, '', '', 'chamara abeysekara', NULL, 'aaa@aa.com', 'aaa@aa.com', NULL, 0, '$2y$10$oM259IUk7mPUZ0ZyX7pdwe6l0uobATtcB.KTG.5/XBDO0R24/.5iq', NULL, '2018-12-01 06:01:45', NULL, 21, 22, 0, NULL, '2018-12-01 06:01:44', '2018-12-01 08:43:00', 1),
(13, '', '', 'chamara abeysekara1', 'aaa1', 'aaaaa@aa.com', 'aaaaa1@aa.com', NULL, 0, '$2y$10$4f2.9N3SLjS5rIWa6UYnYurvvfAG6g8bQsGUEvCf4YnlMgZwyn7Tu', NULL, '2018-12-01 13:06:47', 1, 16, 17, 1, NULL, '2018-12-01 06:06:37', '2018-12-01 13:25:40', 0),
(14, '', '', 'chamara abeysekara', NULL, 'aa@ff.com', 'aa@ff.com', NULL, 0, '$2y$10$FYfTlKVVkWo5OxJ3gX2uGOxdAfBhM7qVsRzezakBSVnu5MolOZ0tS', NULL, '2018-12-06 04:20:56', NULL, 23, 24, 0, NULL, '2018-12-06 04:20:54', '2018-12-06 04:21:17', 1),
(15, '', '', 'chamara abeysekara', NULL, 'asdas@aa.com', 'asdas@aa.com', NULL, 0, '$2y$10$ZgjxghPlldks1XBrvDP3F.FDlF1cGN7MR6RTgk9xaUt8Qk7cJP5X.', NULL, '2019-01-11 16:28:03', NULL, 25, 26, 0, NULL, '2018-12-06 04:22:53', '2019-01-11 16:28:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `sbu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`, `sbu_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, '2016-03-23 09:03:10', '2016-03-23 09:03:10'),
(3, 3, 2, '2016-03-23 09:26:12', '2016-03-23 09:26:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `news_images`
--
ALTER TABLE `news_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_images_news_id_foreign` (`news_id`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_notification_views`
--
ALTER TABLE `post_notification_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_rates`
--
ALTER TABLE `post_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tagged_taggable_id_index` (`taggable_id`),
  ADD KEY `tagging_tagged_taggable_type_index` (`taggable_type`),
  ADD KEY `tagging_tagged_tag_slug_index` (`tag_slug`);

--
-- Indexes for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tags_slug_index` (`slug`),
  ADD KEY `tagging_tags_tag_group_id_foreign` (`tag_group_id`);

--
-- Indexes for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tag_groups_slug_index` (`slug`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news_images`
--
ALTER TABLE `news_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `post_notification_views`
--
ALTER TABLE `post_notification_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `post_rates`
--
ALTER TABLE `post_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `news_images`
--
ALTER TABLE `news_images`
  ADD CONSTRAINT `news_images_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  ADD CONSTRAINT `tagging_tags_tag_group_id_foreign` FOREIGN KEY (`tag_group_id`) REFERENCES `tagging_tag_groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
