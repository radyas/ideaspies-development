-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 09:43 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `core@cybertech`
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
(23, 19, 'RYh4C97v7B33siSZNyEiIssiaEYJABrL', 1, '2018-02-07 15:33:02', '2018-02-07 15:33:02', '2018-02-07 15:33:02'),
(24, 22, '4348c3Ic0jpsgNIEefnYCV63duaZSg7h', 1, '2018-02-21 11:58:03', '2018-02-21 11:58:03', '2018-02-21 11:58:03'),
(25, 23, 'peX1noTVzdJ6J8tmqW0zjw8KQSCHTyu2', 1, '2018-02-26 15:17:22', '2018-02-26 15:17:22', '2018-02-26 15:17:22'),
(26, 24, 'z2epl8Kt4TueSiYFItM28FsfPniUNghO', 1, '2018-02-26 15:22:36', '2018-02-26 15:22:36', '2018-02-26 15:22:36'),
(27, 26, 'n3p2GaPvZy8jmcZlDsRQi8zkOpoPjsA6', 1, '2018-02-26 15:24:22', '2018-02-26 15:24:22', '2018-02-26 15:24:22'),
(28, 27, 'sz7dMXWrcgPqP6g2rfzAmx0EU9cVEOGk', 1, '2018-03-02 21:00:19', '2018-03-02 21:00:19', '2018-03-02 21:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `fonts-list`
--

CREATE TABLE `fonts-list` (
  `id` int(15) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `unicode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fonts-list`
--

INSERT INTO `fonts-list` (`id`, `type`, `icon`, `unicode`) VALUES
(1, 'fa', 'fa-adjust', '&#xf042;'),
(2, 'fa', 'fa-adn', '&#xf170;'),
(3, 'fa', 'fa-align-center', '&#xf037;'),
(4, 'fa', 'fa-align-justify', '&#xf039;'),
(5, 'fa', 'fa-align-left', '&#xf036;'),
(6, 'fa', 'fa-align-right', '&#xf038;'),
(7, 'fa', 'fa-ambulance', '&#xf0f9;'),
(8, 'fa', 'fa-anchor', '&#xf13d;'),
(9, 'fa', 'fa-android', '&#xf17b;'),
(10, 'fa', 'fa-angellist', '&#xf209;'),
(11, 'fa', 'fa-angle-double-down', '&#xf103;'),
(12, 'fa', 'fa-angle-double-left', '&#xf100;'),
(13, 'fa', 'fa-angle-double-right', '&#xf101;'),
(14, 'fa', 'fa-angle-double-up', '&#xf102;'),
(15, 'fa', 'fa-angle-down', '&#xf107;'),
(16, 'fa', 'fa-angle-left', '&#xf104;'),
(17, 'fa', 'fa-angle-right', '&#xf105;'),
(18, 'fa', 'fa-angle-up', '&#xf106;'),
(19, 'fa', 'fa-apple', '&#xf179;'),
(20, 'fa', 'fa-archive', '&#xf187;'),
(21, 'fa', 'fa-area-chart', '&#xf1fe;'),
(22, 'fa', 'fa-arrow-circle-down', '&#xf0ab;'),
(23, 'fa', 'fa-arrow-circle-left', '&#xf0a8;'),
(24, 'fa', 'fa-arrow-circle-o-down', '&#xf01a;'),
(25, 'fa', 'fa-arrow-circle-o-left', '&#xf190;'),
(26, 'fa', 'fa-arrow-circle-o-right', '&#xf18e;'),
(27, 'fa', 'fa-arrow-circle-o-up', '&#xf01b;'),
(28, 'fa', 'fa-arrow-circle-right', '&#xf0a9;'),
(29, 'fa', 'fa-arrow-circle-up', '&#xf0aa;'),
(30, 'fa', 'fa-arrow-down', '&#xf063;'),
(31, 'fa', 'fa-arrow-left', '&#xf060;'),
(32, 'fa', 'fa-arrow-right', '&#xf061;'),
(33, 'fa', 'fa-arrow-up', '&#xf062;'),
(34, 'fa', 'fa-arrows', '&#xf047;'),
(35, 'fa', 'fa-arrows-alt', '&#xf0b2;'),
(36, 'fa', 'fa-arrows-h', '&#xf07e;'),
(37, 'fa', 'fa-arrows-v', '&#xf07d;'),
(38, 'fa', 'fa-asterisk', '&#xf069;'),
(39, 'fa', 'fa-at', '&#xf1fa;'),
(40, 'fa', 'fa-automobile(alias)', '&#xf1b9;'),
(41, 'fa', 'fa-backward', '&#xf04a;'),
(42, 'fa', 'fa-ban', '&#xf05e;'),
(43, 'fa', 'fa-bank(alias)', '&#xf19c;'),
(44, 'fa', 'fa-bar-chart', '&#xf080;'),
(45, 'fa', 'fa-bar-chart-o(alias)', '&#xf080;'),
(46, 'fa', 'fa-barcode', '&#xf02a;'),
(47, 'fa', 'fa-bars', '&#xf0c9;'),
(48, 'fa', 'fa-bed', '&#xf236;'),
(49, 'fa', 'fa-beer', '&#xf0fc;'),
(50, 'fa', 'fa-behance', '&#xf1b4;'),
(51, 'fa', 'fa-behance-square', '&#xf1b5;'),
(52, 'fa', 'fa-bell', '&#xf0f3;'),
(53, 'fa', 'fa-bell-o', '&#xf0a2;'),
(54, 'fa', 'fa-bell-slash', '&#xf1f6;'),
(55, 'fa', 'fa-bell-slash-o', '&#xf1f7;'),
(56, 'fa', 'fa-bicycle', '&#xf206;'),
(57, 'fa', 'fa-binoculars', '&#xf1e5;'),
(58, 'fa', 'fa-birthday-cake', '&#xf1fd;'),
(59, 'fa', 'fa-bitbucket', '&#xf171;'),
(60, 'fa', 'fa-bitbucket-square', '&#xf172;'),
(61, 'fa', 'fa-bitcoin(alias)', '&#xf15a;'),
(62, 'fa', 'fa-bold', '&#xf032;'),
(63, 'fa', 'fa-bolt', '&#xf0e7;'),
(64, 'fa', 'fa-bomb', '&#xf1e2;'),
(65, 'fa', 'fa-book', '&#xf02d;'),
(66, 'fa', 'fa-bookmark', '&#xf02e;'),
(67, 'fa', 'fa-bookmark-o', '&#xf097;'),
(68, 'fa', 'fa-briefcase', '&#xf0b1;'),
(69, 'fa', 'fa-btc', '&#xf15a;'),
(70, 'fa', 'fa-bug', '&#xf188;'),
(71, 'fa', 'fa-building', '&#xf1ad;'),
(72, 'fa', 'fa-building-o', '&#xf0f7;'),
(73, 'fa', 'fa-bullhorn', '&#xf0a1;'),
(74, 'fa', 'fa-bullseye', '&#xf140;'),
(75, 'fa', 'fa-bus', '&#xf207;'),
(76, 'fa', 'fa-buysellads', NULL),
(77, 'fa', 'fa-cab(alias)', NULL),
(78, 'fa', 'fa-calculator', NULL),
(79, 'fa', 'fa-calendar', NULL),
(80, 'fa', 'fa-calendar-o', NULL),
(81, 'fa', 'fa-camera', NULL),
(82, 'fa', 'fa-camera-retro', NULL),
(83, 'fa', 'fa-car', NULL),
(84, 'fa', 'fa-caret-down', NULL),
(85, 'fa', 'fa-caret-left', NULL),
(86, 'fa', 'fa-caret-right', NULL),
(87, 'fa', 'fa-caret-square-o-down', NULL),
(88, 'fa', 'fa-caret-square-o-left', NULL),
(89, 'fa', 'fa-caret-square-o-right', NULL),
(90, 'fa', 'fa-caret-square-o-up', NULL),
(91, 'fa', 'fa-caret-up', NULL),
(92, 'fa', 'fa-cart-arrow-down', NULL),
(93, 'fa', 'fa-cart-plus', NULL),
(94, 'fa', 'fa-cc', NULL),
(95, 'fa', 'fa-cc-amex', NULL),
(96, 'fa', 'fa-cc-discover', NULL),
(97, 'fa', 'fa-cc-mastercard', NULL),
(98, 'fa', 'fa-cc-paypal', NULL),
(99, 'fa', 'fa-cc-stripe', NULL),
(100, 'fa', 'fa-cc-visa', NULL),
(101, 'fa', 'fa-certificate', NULL),
(102, 'fa', 'fa-chain(alias)', NULL),
(103, 'fa', 'fa-chain-broken', NULL),
(104, 'fa', 'fa-check', NULL),
(105, 'fa', 'fa-check-circle', NULL),
(106, 'fa', 'fa-check-circle-o', NULL),
(107, 'fa', 'fa-check-square', NULL),
(108, 'fa', 'fa-check-square-o', NULL),
(109, 'fa', 'fa-chevron-circle-down', NULL),
(110, 'fa', 'fa-chevron-circle-left', NULL),
(111, 'fa', 'fa-chevron-circle-right', NULL),
(112, 'fa', 'fa-chevron-circle-up', NULL),
(113, 'fa', 'fa-chevron-down', NULL),
(114, 'fa', 'fa-chevron-left', NULL),
(115, 'fa', 'fa-chevron-right', NULL),
(116, 'fa', 'fa-chevron-up', NULL),
(117, 'fa', 'fa-child', NULL),
(118, 'fa', 'fa-circle', NULL),
(119, 'fa', 'fa-circle-o', NULL),
(120, 'fa', 'fa-circle-o-notch', NULL),
(121, 'fa', 'fa-circle-thin', NULL),
(122, 'fa', 'fa-clipboard', NULL),
(123, 'fa', 'fa-clock-o', NULL),
(124, 'fa', 'fa-close(alias)', NULL),
(125, 'fa', 'fa-cloud', NULL),
(126, 'fa', 'fa-cloud-download', NULL),
(127, 'fa', 'fa-cloud-upload', NULL),
(128, 'fa', 'fa-cny(alias)', NULL),
(129, 'fa', 'fa-code', NULL),
(130, 'fa', 'fa-code-fork', NULL),
(131, 'fa', 'fa-codepen', NULL),
(132, 'fa', 'fa-coffee', NULL),
(133, 'fa', 'fa-cog', NULL),
(134, 'fa', 'fa-cogs', NULL),
(135, 'fa', 'fa-columns', NULL),
(136, 'fa', 'fa-comment', NULL),
(137, 'fa', 'fa-comment-o', NULL),
(138, 'fa', 'fa-comments', NULL),
(139, 'fa', 'fa-comments-o', NULL),
(140, 'fa', 'fa-compass', NULL),
(141, 'fa', 'fa-compress', NULL),
(142, 'fa', 'fa-connectdevelop', NULL),
(143, 'fa', 'fa-copy(alias)', NULL),
(144, 'fa', 'fa-copyright', NULL),
(145, 'fa', 'fa-credit-card', NULL),
(146, 'fa', 'fa-crop', NULL),
(147, 'fa', 'fa-crosshairs', NULL),
(148, 'fa', 'fa-css3', NULL),
(149, 'fa', 'fa-cube', NULL),
(150, 'fa', 'fa-cubes', NULL),
(151, 'fa', 'fa-cut(alias)', NULL),
(152, 'fa', 'fa-cutlery', NULL),
(153, 'fa', 'fa-dashboard(alias)', NULL),
(154, 'fa', 'fa-dashcube', NULL),
(155, 'fa', 'fa-database', NULL),
(156, 'fa', 'fa-dedent(alias)', NULL),
(157, 'fa', 'fa-delicious', NULL),
(158, 'fa', 'fa-desktop', NULL),
(159, 'fa', 'fa-deviantart', NULL),
(160, 'fa', 'fa-diamond', NULL),
(161, 'fa', 'fa-digg', NULL),
(162, 'fa', 'fa-dollar(alias)', NULL),
(163, 'fa', 'fa-dot-circle-o', NULL),
(164, 'fa', 'fa-download', NULL),
(165, 'fa', 'fa-dribbble', NULL),
(166, 'fa', 'fa-dropbox', NULL),
(167, 'fa', 'fa-drupal', NULL),
(168, 'fa', 'fa-edit(alias)', NULL),
(169, 'fa', 'fa-eject', NULL),
(170, 'fa', 'fa-ellipsis-h', NULL),
(171, 'fa', 'fa-ellipsis-v', NULL),
(172, 'fa', 'fa-empire', NULL),
(173, 'fa', 'fa-envelope', NULL),
(174, 'fa', 'fa-envelope-o', NULL),
(175, 'fa', 'fa-envelope-square', NULL),
(176, 'fa', 'fa-eraser', NULL),
(177, 'fa', 'fa-eur', NULL),
(178, 'fa', 'fa-euro(alias)', NULL),
(179, 'fa', 'fa-exchange', NULL),
(180, 'fa', 'fa-exclamation', NULL),
(181, 'fa', 'fa-exclamation-circle', NULL),
(182, 'fa', 'fa-exclamation-triangle', NULL),
(183, 'fa', 'fa-expand', NULL),
(184, 'fa', 'fa-external-link', NULL),
(185, 'fa', 'fa-external-link-square', NULL),
(186, 'fa', 'fa-eye', NULL),
(187, 'fa', 'fa-eye-slash', NULL),
(188, 'fa', 'fa-eyedropper', NULL),
(189, 'fa', 'fa-facebook', NULL),
(190, 'fa', 'fa-facebook-f(alias)', NULL),
(191, 'fa', 'fa-facebook-official', NULL),
(192, 'fa', 'fa-facebook-square', NULL),
(193, 'fa', 'fa-fast-backward', NULL),
(194, 'fa', 'fa-fast-forward', NULL),
(195, 'fa', 'fa-fax', NULL),
(196, 'fa', 'fa-female', NULL),
(197, 'fa', 'fa-fighter-jet', NULL),
(198, 'fa', 'fa-file', NULL),
(199, 'fa', 'fa-file-archive-o', NULL),
(200, 'fa', 'fa-file-audio-o', NULL),
(201, 'fa', 'fa-file-code-o', NULL),
(202, 'fa', 'fa-file-excel-o', NULL),
(203, 'fa', 'fa-file-image-o', NULL),
(204, 'fa', 'fa-file-movie-o(alias)', NULL),
(205, 'fa', 'fa-file-o', NULL),
(206, 'fa', 'fa-file-pdf-o', NULL),
(207, 'fa', 'fa-file-photo-o(alias)', NULL),
(208, 'fa', 'fa-file-picture-o(alias)', NULL),
(209, 'fa', 'fa-file-powerpoint-o', NULL),
(210, 'fa', 'fa-file-sound-o(alias)', NULL),
(211, 'fa', 'fa-file-text', NULL),
(212, 'fa', 'fa-file-text-o', NULL),
(213, 'fa', 'fa-file-video-o', NULL),
(214, 'fa', 'fa-file-word-o', NULL),
(215, 'fa', 'fa-file-zip-o(alias)', NULL),
(216, 'fa', 'fa-files-o', NULL),
(217, 'fa', 'fa-film', NULL),
(218, 'fa', 'fa-filter', NULL),
(219, 'fa', 'fa-fire', NULL),
(220, 'fa', 'fa-fire-extinguisher', NULL),
(221, 'fa', 'fa-flag', NULL),
(222, 'fa', 'fa-flag-checkered', NULL),
(223, 'fa', 'fa-flag-o', NULL),
(224, 'fa', 'fa-flash(alias)', NULL),
(225, 'fa', 'fa-flask', NULL),
(226, 'fa', 'fa-flickr', NULL),
(227, 'fa', 'fa-floppy-o', NULL),
(228, 'fa', 'fa-folder', NULL),
(229, 'fa', 'fa-folder-o', NULL),
(230, 'fa', 'fa-folder-open', NULL),
(231, 'fa', 'fa-folder-open-o', NULL),
(232, 'fa', 'fa-font', NULL),
(233, 'fa', 'fa-forumbee', NULL),
(234, 'fa', 'fa-forward', NULL),
(235, 'fa', 'fa-foursquare', NULL),
(236, 'fa', 'fa-frown-o', NULL),
(237, 'fa', 'fa-futbol-o', NULL),
(238, 'fa', 'fa-gamepad', NULL),
(239, 'fa', 'fa-gavel', NULL),
(240, 'fa', 'fa-gbp', NULL),
(241, 'fa', 'fa-ge(alias)', NULL),
(242, 'fa', 'fa-gear(alias)', NULL),
(243, 'fa', 'fa-gears(alias)', NULL),
(244, 'fa', 'fa-genderless(alias)', NULL),
(245, 'fa', 'fa-gift', NULL),
(246, 'fa', 'fa-git', NULL),
(247, 'fa', 'fa-git-square', NULL),
(248, 'fa', 'fa-github', NULL),
(249, 'fa', 'fa-github-alt', NULL),
(250, 'fa', 'fa-github-square', NULL),
(251, 'fa', 'fa-gittip(alias)', NULL),
(252, 'fa', 'fa-glass', NULL),
(253, 'fa', 'fa-globe', NULL),
(254, 'fa', 'fa-google', NULL),
(255, 'fa', 'fa-google-plus', NULL),
(256, 'fa', 'fa-google-plus-square', NULL),
(257, 'fa', 'fa-google-wallet', NULL),
(258, 'fa', 'fa-graduation-cap', NULL),
(259, 'fa', 'fa-gratipay', NULL),
(260, 'fa', 'fa-group(alias)', NULL),
(261, 'fa', 'fa-h-square', NULL),
(262, 'fa', 'fa-hacker-news', NULL),
(263, 'fa', 'fa-hand-o-down', NULL),
(264, 'fa', 'fa-hand-o-left', NULL),
(265, 'fa', 'fa-hand-o-right', NULL),
(266, 'fa', 'fa-hand-o-up', NULL),
(267, 'fa', 'fa-hdd-o', NULL),
(268, 'fa', 'fa-header', NULL),
(269, 'fa', 'fa-headphones', NULL),
(270, 'fa', 'fa-heart', NULL),
(271, 'fa', 'fa-heart-o', NULL),
(272, 'fa', 'fa-heartbeat', NULL),
(273, 'fa', 'fa-history', NULL),
(274, 'fa', 'fa-home', NULL),
(275, 'fa', 'fa-hospital-o', NULL),
(276, 'fa', 'fa-hotel(alias)', NULL),
(277, 'fa', 'fa-html5', NULL),
(278, 'fa', 'fa-ils', NULL),
(279, 'fa', 'fa-image(alias)', NULL),
(280, 'fa', 'fa-inbox', NULL),
(281, 'fa', 'fa-indent', NULL),
(282, 'fa', 'fa-info', NULL),
(283, 'fa', 'fa-info-circle', NULL),
(284, 'fa', 'fa-inr', NULL),
(285, 'fa', 'fa-instagram', NULL),
(286, 'fa', 'fa-institution(alias)', NULL),
(287, 'fa', 'fa-ioxhost', NULL),
(288, 'fa', 'fa-italic', NULL),
(289, 'fa', 'fa-joomla', NULL),
(290, 'fa', 'fa-jpy', NULL),
(291, 'fa', 'fa-jsfiddle', NULL),
(292, 'fa', 'fa-key', NULL),
(293, 'fa', 'fa-keyboard-o', NULL),
(294, 'fa', 'fa-krw', NULL),
(295, 'fa', 'fa-language', NULL),
(296, 'fa', 'fa-laptop', NULL),
(297, 'fa', 'fa-lastfm', NULL),
(298, 'fa', 'fa-lastfm-square', NULL),
(299, 'fa', 'fa-leaf', NULL),
(300, 'fa', 'fa-leanpub', NULL),
(301, 'fa', 'fa-legal(alias)', NULL),
(302, 'fa', 'fa-lemon-o', NULL),
(303, 'fa', 'fa-level-down', NULL),
(304, 'fa', 'fa-level-up', NULL),
(305, 'fa', 'fa-life-bouy(alias)', NULL),
(306, 'fa', 'fa-life-buoy(alias)', NULL),
(307, 'fa', 'fa-life-ring', NULL),
(308, 'fa', 'fa-life-saver(alias)', NULL),
(309, 'fa', 'fa-lightbulb-o', NULL),
(310, 'fa', 'fa-line-chart', NULL),
(311, 'fa', 'fa-link', NULL),
(312, 'fa', 'fa-linkedin', NULL),
(313, 'fa', 'fa-linkedin-square', NULL),
(314, 'fa', 'fa-linux', NULL),
(315, 'fa', 'fa-list', NULL),
(316, 'fa', 'fa-list-alt', NULL),
(317, 'fa', 'fa-list-ol', NULL),
(318, 'fa', 'fa-list-ul', NULL),
(319, 'fa', 'fa-location-arrow', NULL),
(320, 'fa', 'fa-lock', NULL),
(321, 'fa', 'fa-long-arrow-down', NULL),
(322, 'fa', 'fa-long-arrow-left', NULL),
(323, 'fa', 'fa-long-arrow-right', NULL),
(324, 'fa', 'fa-long-arrow-up', NULL),
(325, 'fa', 'fa-magic', NULL),
(326, 'fa', 'fa-magnet', NULL),
(327, 'fa', 'fa-mail-forward(alias)', NULL),
(328, 'fa', 'fa-mail-reply(alias)', NULL),
(329, 'fa', 'fa-mail-reply-all(alias)', NULL),
(330, 'fa', 'fa-male', NULL),
(331, 'fa', 'fa-map-marker', NULL),
(332, 'fa', 'fa-mars', NULL),
(333, 'fa', 'fa-mars-double', NULL),
(334, 'fa', 'fa-mars-stroke', NULL),
(335, 'fa', 'fa-mars-stroke-h', NULL),
(336, 'fa', 'fa-mars-stroke-v', NULL),
(337, 'fa', 'fa-maxcdn', NULL),
(338, 'fa', 'fa-meanpath', NULL),
(339, 'fa', 'fa-medium', NULL),
(340, 'fa', 'fa-medkit', NULL),
(341, 'fa', 'fa-meh-o', NULL),
(342, 'fa', 'fa-mercury', NULL),
(343, 'fa', 'fa-microphone', NULL),
(344, 'fa', 'fa-microphone-slash', NULL),
(345, 'fa', 'fa-minus', NULL),
(346, 'fa', 'fa-minus-circle', NULL),
(347, 'fa', 'fa-minus-square', NULL),
(348, 'fa', 'fa-minus-square-o', NULL),
(349, 'fa', 'fa-mobile', NULL),
(350, 'fa', 'fa-mobile-phone(alias)', NULL),
(351, 'fa', 'fa-money', NULL),
(352, 'fa', 'fa-moon-o', NULL),
(353, 'fa', 'fa-mortar-board(alias)', NULL),
(354, 'fa', 'fa-motorcycle', NULL),
(355, 'fa', 'fa-music', NULL),
(356, 'fa', 'fa-navicon(alias)', NULL),
(357, 'fa', 'fa-neuter', NULL),
(358, 'fa', 'fa-newspaper-o', NULL),
(359, 'fa', 'fa-openid', NULL),
(360, 'fa', 'fa-outdent', NULL),
(361, 'fa', 'fa-pagelines', NULL),
(362, 'fa', 'fa-paint-brush', NULL),
(363, 'fa', 'fa-paper-plane', NULL),
(364, 'fa', 'fa-paper-plane-o', NULL),
(365, 'fa', 'fa-paperclip', NULL),
(366, 'fa', 'fa-paragraph', NULL),
(367, 'fa', 'fa-paste(alias)', NULL),
(368, 'fa', 'fa-pause', NULL),
(369, 'fa', 'fa-paw', NULL),
(370, 'fa', 'fa-paypal', NULL),
(371, 'fa', 'fa-pencil', NULL),
(372, 'fa', 'fa-pencil-square', NULL),
(373, 'fa', 'fa-pencil-square-o', NULL),
(374, 'fa', 'fa-phone', NULL),
(375, 'fa', 'fa-phone-square', NULL),
(376, 'fa', 'fa-photo(alias)', NULL),
(377, 'fa', 'fa-picture-o', NULL),
(378, 'fa', 'fa-pie-chart', NULL),
(379, 'fa', 'fa-pied-piper', NULL),
(380, 'fa', 'fa-pied-piper-alt', NULL),
(381, 'fa', 'fa-pinterest', NULL),
(382, 'fa', 'fa-pinterest-p', NULL),
(383, 'fa', 'fa-pinterest-square', NULL),
(384, 'fa', 'fa-plane', NULL),
(385, 'fa', 'fa-play', NULL),
(386, 'fa', 'fa-play-circle', NULL),
(387, 'fa', 'fa-play-circle-o', NULL),
(388, 'fa', 'fa-plug', NULL),
(389, 'fa', 'fa-plus', NULL),
(390, 'fa', 'fa-plus-circle', NULL),
(391, 'fa', 'fa-plus-square', NULL),
(392, 'fa', 'fa-plus-square-o', NULL),
(393, 'fa', 'fa-power-off', NULL),
(394, 'fa', 'fa-print', NULL),
(395, 'fa', 'fa-puzzle-piece', NULL),
(396, 'fa', 'fa-qq', NULL),
(397, 'fa', 'fa-qrcode', NULL),
(398, 'fa', 'fa-question', NULL),
(399, 'fa', 'fa-question-circle', NULL),
(400, 'fa', 'fa-quote-left', NULL),
(401, 'fa', 'fa-quote-right', NULL),
(402, 'fa', 'fa-ra(alias)', NULL),
(403, 'fa', 'fa-random', NULL),
(404, 'fa', 'fa-rebel', NULL),
(405, 'fa', 'fa-recycle', NULL),
(406, 'fa', 'fa-reddit', NULL),
(407, 'fa', 'fa-reddit-square', NULL),
(408, 'fa', 'fa-refresh', NULL),
(409, 'fa', 'fa-remove(alias)', NULL),
(410, 'fa', 'fa-renren', NULL),
(411, 'fa', 'fa-reorder(alias)', NULL),
(412, 'fa', 'fa-repeat', NULL),
(413, 'fa', 'fa-reply', NULL),
(414, 'fa', 'fa-reply-all', NULL),
(415, 'fa', 'fa-retweet', NULL),
(416, 'fa', 'fa-rmb(alias)', NULL),
(417, 'fa', 'fa-road', NULL),
(418, 'fa', 'fa-rocket', NULL),
(419, 'fa', 'fa-rotate-left(alias)', NULL),
(420, 'fa', 'fa-rotate-right(alias)', NULL),
(421, 'fa', 'fa-rouble(alias)', NULL),
(422, 'fa', 'fa-rss', NULL),
(423, 'fa', 'fa-rss-square', NULL),
(424, 'fa', 'fa-rub', NULL),
(425, 'fa', 'fa-ruble(alias)', NULL),
(426, 'fa', 'fa-rupee(alias)', NULL),
(427, 'fa', 'fa-save(alias)', NULL),
(428, 'fa', 'fa-scissors', NULL),
(429, 'fa', 'fa-search', NULL),
(430, 'fa', 'fa-search-minus', NULL),
(431, 'fa', 'fa-search-plus', NULL),
(432, 'fa', 'fa-sellsy', NULL),
(433, 'fa', 'fa-send(alias)', NULL),
(434, 'fa', 'fa-send-o(alias)', NULL),
(435, 'fa', 'fa-server', NULL),
(436, 'fa', 'fa-share', NULL),
(437, 'fa', 'fa-share-alt', NULL),
(438, 'fa', 'fa-share-alt-square', NULL),
(439, 'fa', 'fa-share-square', NULL),
(440, 'fa', 'fa-share-square-o', NULL),
(441, 'fa', 'fa-shekel(alias)', NULL),
(442, 'fa', 'fa-sheqel(alias)', NULL),
(443, 'fa', 'fa-shield', NULL),
(444, 'fa', 'fa-ship', NULL),
(445, 'fa', 'fa-shirtsinbulk', NULL),
(446, 'fa', 'fa-shopping-cart', NULL),
(447, 'fa', 'fa-sign-in', NULL),
(448, 'fa', 'fa-sign-out', NULL),
(449, 'fa', 'fa-signal', NULL),
(450, 'fa', 'fa-simplybuilt', NULL),
(451, 'fa', 'fa-sitemap', NULL),
(452, 'fa', 'fa-skyatlas', NULL),
(453, 'fa', 'fa-skype', NULL),
(454, 'fa', 'fa-slack', NULL),
(455, 'fa', 'fa-sliders', NULL),
(456, 'fa', 'fa-slideshare', NULL),
(457, 'fa', 'fa-smile-o', NULL),
(458, 'fa', 'fa-soccer-ball-o(alias)', NULL),
(459, 'fa', 'fa-sort', NULL),
(460, 'fa', 'fa-sort-alpha-asc', NULL),
(461, 'fa', 'fa-sort-alpha-desc', NULL),
(462, 'fa', 'fa-sort-amount-asc', NULL),
(463, 'fa', 'fa-sort-amount-desc', NULL),
(464, 'fa', 'fa-sort-asc', NULL),
(465, 'fa', 'fa-sort-desc', NULL),
(466, 'fa', 'fa-sort-down(alias)', NULL),
(467, 'fa', 'fa-sort-numeric-asc', NULL),
(468, 'fa', 'fa-sort-numeric-desc', NULL),
(469, 'fa', 'fa-sort-up(alias)', NULL),
(470, 'fa', 'fa-soundcloud', NULL),
(471, 'fa', 'fa-space-shuttle', NULL),
(472, 'fa', 'fa-spinner', NULL),
(473, 'fa', 'fa-spoon', NULL),
(474, 'fa', 'fa-spotify', NULL),
(475, 'fa', 'fa-square', NULL),
(476, 'fa', 'fa-square-o', NULL),
(477, 'fa', 'fa-stack-exchange', NULL),
(478, 'fa', 'fa-stack-overflow', NULL),
(479, 'fa', 'fa-star', NULL),
(480, 'fa', 'fa-star-half', NULL),
(481, 'fa', 'fa-star-half-empty(alias)', NULL),
(482, 'fa', 'fa-star-half-full(alias)', NULL),
(483, 'fa', 'fa-star-half-o', NULL),
(484, 'fa', 'fa-star-o', NULL),
(485, 'fa', 'fa-steam', NULL),
(486, 'fa', 'fa-steam-square', NULL),
(487, 'fa', 'fa-step-backward', NULL),
(488, 'fa', 'fa-step-forward', NULL),
(489, 'fa', 'fa-stethoscope', NULL),
(490, 'fa', 'fa-stop', NULL),
(491, 'fa', 'fa-street-view', NULL),
(492, 'fa', 'fa-strikethrough', NULL),
(493, 'fa', 'fa-stumbleupon', NULL),
(494, 'fa', 'fa-stumbleupon-circle', NULL),
(495, 'fa', 'fa-subscript', NULL),
(496, 'fa', 'fa-subway', NULL),
(497, 'fa', 'fa-suitcase', NULL),
(498, 'fa', 'fa-sun-o', NULL),
(499, 'fa', 'fa-superscript', NULL),
(500, 'fa', 'fa-support(alias)', NULL),
(501, 'fa', 'fa-table', NULL),
(502, 'fa', 'fa-tablet', NULL),
(503, 'fa', 'fa-tachometer', NULL),
(504, 'fa', 'fa-tag', NULL),
(505, 'fa', 'fa-tags', NULL),
(506, 'fa', 'fa-tasks', NULL),
(507, 'fa', 'fa-taxi', NULL),
(508, 'fa', 'fa-tencent-weibo', NULL),
(509, 'fa', 'fa-terminal', NULL),
(510, 'fa', 'fa-text-height', NULL),
(511, 'fa', 'fa-text-width', NULL),
(512, 'fa', 'fa-th', NULL),
(513, 'fa', 'fa-th-large', NULL),
(514, 'fa', 'fa-th-list', NULL),
(515, 'fa', 'fa-thumb-tack', NULL),
(516, 'fa', 'fa-thumbs-down', NULL),
(517, 'fa', 'fa-thumbs-o-down', NULL),
(518, 'fa', 'fa-thumbs-o-up', NULL),
(519, 'fa', 'fa-thumbs-up', NULL),
(520, 'fa', 'fa-ticket', NULL),
(521, 'fa', 'fa-times', NULL),
(522, 'fa', 'fa-times-circle', NULL),
(523, 'fa', 'fa-times-circle-o', NULL),
(524, 'fa', 'fa-tint', NULL),
(525, 'fa', 'fa-toggle-down(alias)', NULL),
(526, 'fa', 'fa-toggle-left(alias)', NULL),
(527, 'fa', 'fa-toggle-off', NULL),
(528, 'fa', 'fa-toggle-on', NULL),
(529, 'fa', 'fa-toggle-right(alias)', NULL),
(530, 'fa', 'fa-toggle-up(alias)', NULL),
(531, 'fa', 'fa-train', NULL),
(532, 'fa', 'fa-transgender', NULL),
(533, 'fa', 'fa-transgender-alt', NULL),
(534, 'fa', 'fa-trash', NULL),
(535, 'fa', 'fa-trash-o', NULL),
(536, 'fa', 'fa-tree', NULL),
(537, 'fa', 'fa-trello', NULL),
(538, 'fa', 'fa-trophy', NULL),
(539, 'fa', 'fa-truck', NULL),
(540, 'fa', 'fa-try', NULL),
(541, 'fa', 'fa-tty', NULL),
(542, 'fa', 'fa-tumblr', NULL),
(543, 'fa', 'fa-tumblr-square', NULL),
(544, 'fa', 'fa-turkish-lira(alias)', NULL),
(545, 'fa', 'fa-twitch', NULL),
(546, 'fa', 'fa-twitter', NULL),
(547, 'fa', 'fa-twitter-square', NULL),
(548, 'fa', 'fa-umbrella', NULL),
(549, 'fa', 'fa-underline', NULL),
(550, 'fa', 'fa-undo', NULL),
(551, 'fa', 'fa-university', NULL),
(552, 'fa', 'fa-unlink(alias)', NULL),
(553, 'fa', 'fa-unlock', NULL),
(554, 'fa', 'fa-unlock-alt', NULL),
(555, 'fa', 'fa-unsorted(alias)', NULL),
(556, 'fa', 'fa-upload', NULL),
(557, 'fa', 'fa-usd', NULL),
(558, 'fa', 'fa-user', NULL),
(559, 'fa', 'fa-user-md', NULL),
(560, 'fa', 'fa-user-plus', NULL),
(561, 'fa', 'fa-user-secret', NULL),
(562, 'fa', 'fa-user-times', NULL),
(563, 'fa', 'fa-users', NULL),
(564, 'fa', 'fa-venus', NULL),
(565, 'fa', 'fa-venus-double', NULL),
(566, 'fa', 'fa-venus-mars', NULL),
(567, 'fa', 'fa-viacoin', NULL),
(568, 'fa', 'fa-video-camera', NULL),
(569, 'fa', 'fa-vimeo-square', NULL),
(570, 'fa', 'fa-vine', NULL),
(571, 'fa', 'fa-vk', NULL),
(572, 'fa', 'fa-volume-down', NULL),
(573, 'fa', 'fa-volume-off', NULL),
(574, 'fa', 'fa-volume-up', NULL),
(575, 'fa', 'fa-warning(alias)', NULL),
(576, 'fa', 'fa-wechat(alias)', NULL),
(577, 'fa', 'fa-weibo', NULL),
(578, 'fa', 'fa-weixin', NULL),
(579, 'fa', 'fa-whatsapp', NULL),
(580, 'fa', 'fa-wheelchair', NULL),
(581, 'fa', 'fa-wifi', NULL),
(582, 'fa', 'fa-windows', NULL),
(583, 'fa', 'fa-won(alias)', NULL),
(584, 'fa', 'fa-wordpress', NULL),
(585, 'fa', 'fa-wrench', NULL),
(586, 'fa', 'fa-xing', NULL),
(587, 'fa', 'fa-xing-square', NULL),
(588, 'fa', 'fa-yahoo', NULL),
(589, 'fa', 'fa-yelp', NULL),
(590, 'fa', 'fa-yen(alias)', NULL),
(591, 'fa', 'fa-youtube', NULL),
(592, 'fa', 'fa-youtube-play', NULL),
(593, 'fa', 'fa-youtube-square', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `path` text NOT NULL,
  `filename` text,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(2, 'Registered User', '{\"user\":1,\"index\":1}', '2014-09-23 07:24:50', '2016-02-19 06:59:55'),
(3, 'Administrator', '{\"index\":1,\"report.order_qty\":1,\"admin\":1,\"admin.index\":1,\"user.manage\":1,\"user.user\":1,\"user.view\":1,\"product.organize\":1,\"user.edit\":1,\"jobroles.add\":1,\"jobroles.edit\":1,\"report.detailsummary\":1,\"jobroles.delete\":1,\"jobroles.view\":1,\"user.activate\":1,\"user.deactivate\":1,\"report.product_prices\":1,\"branch.add\":1,\"branch.edit\":1,\"branch.view\":1,\"branch.delete\":1,\"employee.add\":1,\"employee.edit\":1,\"employee.delete\":1,\"employee.view\":1,\"product.add\":1,\"product.edit\":1,\"product.delete\":1,\"product.view\":1,\"product-cat.add\":1,\"product-cat.edit\":1,\"product-cat.view\":1,\"inquiry-type.add\":1,\"inquiry-type.edit\":1,\"inquiry-type.delete\":1,\"inquiry-type.view\":1,\"agent.add\":1,\"agent.edit\":1,\"agent.delete\":1,\"agent.view\":1,\"attachment.add\":1,\"attachment.delete\":1,\"attachment.view\":1,\"attachment-cat.add\":1,\"attachment-cat.edit\":1,\"attachment-cat.delete\":1,\"attachment-cat.view\":1,\"city.add\":1,\"city.edit\":1,\"city.delete\":1,\"city.view\":1,\"agent-type.add\":1,\"agent-type.edit\":1,\"agent-type.delete\":1,\"agent-type.view\":1,\"json.agenttypelist\":1,\"json.agentlist\":1,\"offer-type.add\":1,\"offer-type.edit\":1,\"offer-type.delete\":1,\"offer-type.view\":1,\"offer.add\":1,\"offer.edit\":1,\"offer.delete\":1,\"offer.view\":1,\"json.offertypelist\":1,\"json.offerslist\":1,\"offer.details\":1,\"json.attachmentcategorylist\":1,\"customer-status.add\":1,\"customer-status.edit\":1,\"customer-status.delete\":1,\"customer-status.view\":1,\"json.customerstatuslist\":1,\"json.branchlist\":1,\"inquiry.detail\":1,\"target.view\":1,\"target.add\":1,\"target.edit\":1,\"target.delete\":1,\"json.targetlist\":1,\"offer.check\":1,\"quotation.new\":1,\"quotation.send\":1,\"ajax.send\":1,\"customer.details\":1,\"json.customerinquirylist\":1,\"customer.json_detail\":1,\"distributor.upload\":1,\"permission.add\":1,\"distributor.edit\":1,\"distributor.list\":1,\"json.distributorlist\":1,\"ajax.distributorlist\":1,\"segment.add\":1,\"segment.edit\":1,\"segment.view\":1,\"segment.delete\":1,\"category.add\":1,\"category.edit\":1,\"category.view\":1,\"category.list\":1,\"category.delete\":1,\"ajax.set_featured\":1,\"ajax.addtarget\":1,\"ajax.loadtarget\":1,\"product.images\":1,\"ajax.deleteimage\":1,\"ajax.setstatus\":1,\"ajax.addcart\":1,\"price.add\":1,\"price.edit\":1,\"price.list\":1,\"json.pricelist\":1,\"stock.view\":1,\"json.stocklist\":1,\"admin.inbox\":1,\"admin.reply\":1,\"report.conversionrate\":1,\"report.toporders\":1,\"report.salesbyagents\":1,\"report.inventory\":1,\"json.conversionrate\":1,\"json.overall_target_achievement\":1,\"report.order_histrory\":1,\"slider_image.view\":1,\"slider_image.edit\":1,\"slider_image.add\":1,\"json.categorylist\":1,\"json.productlist\":1,\"json.employeelist\":1,\"json.product_prices\":1,\"json.orderhistory\":1,\"user.distributor\":1,\"distributor.view\":1,\"json.userlist\":1,\"user.reset\":1,\"data.grabber\":1,\"pending.download\":1,\"user.add\":1,\"stock.add\":1,\"ajax.added_target\":1,\"product.upload\":1,\"target.upload\":1,\"contact.list\":1,\"contact.add\":1,\"contact.edit\":1,\"contact.delete\":1,\"json.contact_list\":1,\"report.distributor_forecast\":1,\"forecast.export-monthly\":1,\"ajax.load_monthly_requirnment_exportuser\":1}', '2014-09-30 07:09:12', '2016-03-10 06:20:48');

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
(1, 'Root Menu', '#', NULL, NULL, NULL, 1, 26, 0, 1, '2016-09-20 18:30:00', '2018-03-27 19:33:08'),
(2, 'MENU MANAGEMENT', 'menu/list', NULL, 1, '[\"menu.add\",\"admin\"]', 2, 3, 1, 1, '2016-09-20 18:30:00', '2017-12-24 11:09:01'),
(3, 'BRANCH MANAGEMENT', 'branch/list', NULL, 1, '[\"branch.list\",\"branch.add\",\"branch.edit\",\"branch.delete\",\"admin\"]', 16, 17, 1, 1, '2016-09-21 05:25:43', '2017-12-24 11:09:01'),
(4, 'USER MANAGEMENT', '#', NULL, 1, '[\"user.list\",\"user.add\",\"user.edit\",\"user.delete\",\"admin\"]', 6, 15, 1, 1, '2016-09-21 05:26:25', '2017-12-24 11:09:01'),
(5, 'PERMISSION', 'permission/list', NULL, 4, '[\"admin\"]', 7, 8, 2, 1, '2016-09-21 05:26:51', '2017-12-24 11:09:01'),
(6, 'ROLE', 'user/role/list', NULL, 4, '[\"admin\"]', 9, 10, 2, 1, '2016-09-21 05:27:15', '2017-12-24 11:09:01'),
(7, 'USER', 'user/list', NULL, 4, '[\"user.list\",\"user.add\",\"user.edit\",\"user.delete\",\"admin\"]', 11, 12, 2, 1, '2016-09-21 05:27:51', '2017-12-24 11:09:01'),
(24, 'GALLERY', 'gallery/list', NULL, 35, '[\"gallery.list\",\"admin\"]', 21, 22, 2, 1, '2017-01-19 01:30:29', '2018-03-27 19:33:41'),
(34, 'GALLERY CATEGORY', 'gallery/category/list', NULL, 35, '[\"admin\"]', 23, 24, 2, 1, '2017-09-07 17:27:27', '2018-03-27 19:33:41'),
(35, 'GALLERY MANAGEMENT', '#', NULL, 1, '[\"gallery.list\",\"gallery.add\",\"gallery.edit\",\"gallery.delete\",\"admin\"]', 20, 25, 1, 1, '2017-09-07 17:29:35', '2018-03-27 19:33:42');

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
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
('2015_05_16_172701_create_tables', 1),
('2015_05_16_180134_alter_users_table', 2),
('2015_05_25_211027_create_menu_table', 3),
('2015_05_26_103954_alter_menu_table', 4),
('2015_05_26_114356_alter_menu_table', 5),
('2014_07_02_230147_migration_cartalyst_sentinel', 6),
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
('2015_05_16_172701_create_tables', 1),
('2015_05_16_180134_alter_users_table', 2),
('2015_05_25_211027_create_menu_table', 3),
('2015_05_26_103954_alter_menu_table', 4),
('2015_05_26_114356_alter_menu_table', 5),
('2014_07_02_230147_migration_cartalyst_sentinel', 6),
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
('2015_05_16_172701_create_tables', 1),
('2015_05_16_180134_alter_users_table', 2),
('2015_05_25_211027_create_menu_table', 3),
('2015_05_26_103954_alter_menu_table', 4),
('2015_05_26_114356_alter_menu_table', 5),
('2014_07_02_230147_migration_cartalyst_sentinel', 6),
('2017_09_04_143153_slider_table', 7),
('2017_11_12_232812_config_table', 8),
('2017_12_21_223821_create_table_counrties', 8),
('2017_12_30_181039_add_css_class_column_to_animation_type_table', 9),
('2018_01_06_171335_add_twitter_column_to_config', 10),
('2018_01_16_150501_create_comments_table', 11),
('2018_01_25_205542_add_code_column_to_coupon_table', 12),
('2018_02_08_202943_add_column_to_blog_table_and_in_the_news_table', 13);

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
(52, 'blog.delete', 'DELETE BLOG', 1, 1, '2017-05-08 16:18:28', '2017-05-08 16:18:28');

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
(0, 1, 'os3P8bBS3GDxFE5kP3ggpnjmYLStjvng', '2017-01-14 19:58:55', '2017-01-14 19:58:55'),
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
(611, 9, 'bmULU9PSJxQGGe3E3UPmS9zXrSaKMqvB', '2018-01-07 16:02:06', '2018-01-07 16:02:06'),
(612, 9, 'ovunUaEfD4RfVjUsSlfWBk87SKAbSxhF', '2018-01-09 15:24:42', '2018-01-09 15:24:42'),
(614, 9, 'sdVV2DBRbMv24JdpU94nZM18R1Vd6Mgj', '2018-01-09 18:09:17', '2018-01-09 18:09:17'),
(615, 9, 'xxB6eyV34ua8e2aIiElrQAkcgJZGW2Vv', '2018-01-10 04:37:16', '2018-01-10 04:37:16'),
(619, 9, 'pf9WGCmTvYEQrRWLxVQJehULTmOMS06H', '2018-01-11 12:58:46', '2018-01-11 12:58:46'),
(620, 9, 'I7eOTCwmMK0lDSOxuY7cC8913wf8Xiwd', '2018-01-11 17:37:50', '2018-01-11 17:37:50'),
(622, 9, 'fhdBQszfUiqFj5TGAUiC3FhscYffadBp', '2018-01-12 03:47:30', '2018-01-12 03:47:30'),
(623, 9, 'Fnr2DHGKKFRIfCTqyfI5oOUz0yQ4uGGl', '2018-01-12 12:07:41', '2018-01-12 12:07:41'),
(624, 9, 'TJJzhnIhoRYSqxKtU45z1Bjb2V1QuY4r', '2018-01-12 16:36:52', '2018-01-12 16:36:52'),
(625, 9, '2VEyUTSWkZL6ibxo7jnI6g1jCsSFOj37', '2018-01-13 03:56:03', '2018-01-13 03:56:03'),
(630, 9, 'V5Lka5gGP4E94dkiirNHvC3nEsEnK7NW', '2018-01-13 10:24:29', '2018-01-13 10:24:29'),
(632, 9, 'lbJtdCEYytWnrXoXKNcPIuEPUDKJ7llc', '2018-01-13 16:16:43', '2018-01-13 16:16:43'),
(633, 9, 'rANDv9RCgqjHBzJQRKYKHFaqPCR5TYc5', '2018-01-14 06:06:15', '2018-01-14 06:06:15'),
(638, 9, 'MnxSg127NVZZsrSAxZscCGJL1zPLDsGy', '2018-01-14 12:09:08', '2018-01-14 12:09:08'),
(639, 9, 'e6UI8iS8tAIzPlfTDCTZjutXkSw2xEv0', '2018-01-16 11:46:39', '2018-01-16 11:46:39'),
(641, 9, 'wwCH08yTI8bLmn7HztFwmdbYvqhNZkx0', '2018-01-16 14:32:33', '2018-01-16 14:32:33'),
(642, 9, 'j1wajhKN6enbg2WLMBDSkBejfORqKKIO', '2018-01-18 14:11:52', '2018-01-18 14:11:52'),
(643, 9, 'rZ1m7ydBGMFJqkFlE8dzwsQPjIfcTUTq', '2018-01-18 14:37:08', '2018-01-18 14:37:08'),
(644, 9, 'MxeQOWV7vzfyMLHtTu5FGjUOE9SMrQI2', '2018-01-19 14:33:38', '2018-01-19 14:33:38'),
(645, 9, 'HVaAS8dOGyEW5fTlKAoIl5D5MLQxdYqW', '2018-01-22 08:14:09', '2018-01-22 08:14:09'),
(646, 9, 'qZVtS44KYZ9zz1y6SZvtUTg3sLG2HZZQ', '2018-01-22 13:08:34', '2018-01-22 13:08:34'),
(647, 9, '3e086wYyf6XLa4LR6okiJrzrLiFIDiCH', '2018-01-24 16:39:47', '2018-01-24 16:39:47'),
(648, 9, 'h22WGr8wkHkV20P6BgnJnzAq9hiRFJtW', '2018-01-25 13:56:52', '2018-01-25 13:56:52'),
(649, 9, 'hD04DZBtXMeZ2YNyOlCDacIM061H1Qxi', '2018-01-27 05:02:30', '2018-01-27 05:02:30'),
(650, 9, 'AbFY7qeJlFROtjqnxuuDPAvton8cJbHc', '2018-01-27 18:50:36', '2018-01-27 18:50:36'),
(652, 9, 'P6a83bYllEVXLYBvqZ9re3Ko37n4ugvE', '2018-01-27 18:58:30', '2018-01-27 18:58:30'),
(653, 9, 'iGERQnIAnVlaPf9Flu8Cc8IJqLJnC2KS', '2018-01-28 05:21:34', '2018-01-28 05:21:34'),
(654, 9, 'rLRZ43PobMLqXyWDykmpVeRLh42pt9X7', '2018-01-29 10:46:08', '2018-01-29 10:46:08'),
(656, 9, 'IySPayqLWCGRqBsv4HJyuO2PZlEeQej7', '2018-01-29 16:44:21', '2018-01-29 16:44:21'),
(657, 9, 'z4mUK3YOxUIXVsf4vVFeI3yFrFgpQURr', '2018-01-30 15:47:18', '2018-01-30 15:47:18'),
(658, 9, 'xbhljNaZmQRVHoh7xg74g4082iQbR327', '2018-01-31 06:52:20', '2018-01-31 06:52:20'),
(659, 9, 'do2bvckbkkZhXZJhySPxbof8CCWt1dWB', '2018-01-31 13:19:01', '2018-01-31 13:19:01'),
(663, 15, 'L0gzqPP1WCnrymJo1b88lJAbWvGiGqZ4', '2018-02-01 04:44:24', '2018-02-01 04:44:24'),
(667, 9, 'iBz6A4gGsA3CqHZe5JhlUvGuVGiyhDZ2', '2018-02-01 04:56:29', '2018-02-01 04:56:29'),
(670, 9, 'D0qwWwG6sxC2Xq9H4zKvNlEaHlfpZ0f1', '2018-02-01 07:13:49', '2018-02-01 07:13:49'),
(671, 18, 'S1v2QJ2kAOp7R6wNzOeBxaqJZENadkmR', '2018-02-01 08:39:44', '2018-02-01 08:39:44'),
(672, 9, 'Y0y2Ht5mhuouCaEbD1KxsaJGepcUHOyK', '2018-02-01 14:59:35', '2018-02-01 14:59:35'),
(673, 9, 'UGlb2znnc0eHGgraxBjdcPt5v7c4P5hO', '2018-02-02 03:51:45', '2018-02-02 03:51:45'),
(674, 9, 'rbalqn2G6X0R1SEggwlDivHQ88gJTbIC', '2018-02-02 09:11:29', '2018-02-02 09:11:29'),
(675, 9, 'Eb7AlEsUmB7tT52UiLrtoEeKbkTjbalR', '2018-02-02 11:59:11', '2018-02-02 11:59:11'),
(676, 9, '6cCq3p68mOfJn214Ev4oZawKVpEvsnTt', '2018-02-03 05:17:02', '2018-02-03 05:17:02'),
(682, 9, '2rq8RJuyjHWa8VtvydnSODkDregDOTBR', '2018-02-03 07:49:32', '2018-02-03 07:49:32'),
(683, 9, 'nnl7zuDYxkBS52R6sUumHov3VKfI5Cet', '2018-02-03 16:23:47', '2018-02-03 16:23:47'),
(684, 9, 'fY5k2ukGIjLRhIexbE1HJIURuglmrBft', '2018-02-04 00:41:25', '2018-02-04 00:41:25'),
(686, 9, 'vxEYUuvXNtkOl6RVi0wp6nlGIyIPK0Dc', '2018-02-04 10:02:23', '2018-02-04 10:02:23'),
(687, 9, 'Yekw3tLp1NJeYJl7DpKc0a1Q1vTtcX2G', '2018-02-05 11:40:15', '2018-02-05 11:40:15'),
(688, 9, 'Zo3Q6rcentVO8KU5FhelKWdpyr9shthY', '2018-02-05 11:40:26', '2018-02-05 11:40:26'),
(689, 9, 'BaT7t656xMU2tm2DzPcUdFjq39p0yAdN', '2018-02-06 03:32:37', '2018-02-06 03:32:37'),
(690, 9, 'ezvimk9qd5kx8XkQ6LIpCR4huC0P80j0', '2018-02-06 19:03:37', '2018-02-06 19:03:37'),
(691, 9, 'BIjGHCk92OVWRcAb1RcuUt5mEBEXqTVS', '2018-02-07 05:23:28', '2018-02-07 05:23:28'),
(692, 9, '0bJ6Z8ENtWa5pcpKqLU97FqcZy9etz0a', '2018-02-08 06:56:21', '2018-02-08 06:56:21'),
(693, 9, 'hJgyHwJS6G8TbbmLB7ePA8sotmAB4DbQ', '2018-02-08 17:38:27', '2018-02-08 17:38:27'),
(694, 9, 'nWzuyieOKXX6wQLTKq5hjS7XLF3QsbC1', '2018-02-09 07:04:37', '2018-02-09 07:04:37'),
(695, 9, 'jhWbOTE3Ip0HDNmVsKMSQdaUHd9AIMQY', '2018-02-12 17:38:20', '2018-02-12 17:38:20'),
(696, 9, 'gpF4y2YpoQdzVFWX2FwG6RJlKyN9Myh6', '2018-02-13 12:53:10', '2018-02-13 12:53:10'),
(699, 9, 'P7ldJDCKUTHNQ54uM7p4SdOjmxJXEkoc', '2018-02-14 14:02:13', '2018-02-14 14:02:13'),
(700, 9, 'T7HorWuxGpS4YA5XB0Rpk5mIlRZyrym6', '2018-02-15 16:19:34', '2018-02-15 16:19:34'),
(701, 9, 'EY2pXTfWz7YEcu5QurJenYkDTxJJy7wg', '2018-02-16 17:19:33', '2018-02-16 17:19:33'),
(702, 9, '7sExGYV2qQmdc6Fxu3XFpF876og8pnUq', '2018-02-16 17:20:02', '2018-02-16 17:20:02'),
(703, 9, 'cWUByhfCz2wysPR0fGGRnmkC4VTToMZE', '2018-02-17 09:59:21', '2018-02-17 09:59:21'),
(704, 22, 'IeqE0AuoEkINKM7Z3GceghAG0HZVPvjR', '2018-02-21 11:58:03', '2018-02-21 11:58:03'),
(705, 9, 'F4THoVTrSKlMOC08HlWIMPPfDDdaepa4', '2018-02-21 16:11:44', '2018-02-21 16:11:44'),
(706, 9, 'cLk5rGwnW0Sjmb4sulyTMoZUPPydCHev', '2018-02-22 08:36:02', '2018-02-22 08:36:02'),
(707, 9, 'a9uz3JK9eE2XTYj2MoEiAdQXt2rOsXlv', '2018-02-23 05:05:09', '2018-02-23 05:05:09'),
(708, 9, 'N5QJKUQoVdAYOhnNTynmStUpY3hMYZAa', '2018-02-23 05:05:33', '2018-02-23 05:05:33'),
(709, 9, '7ol3IX0EKFaJrmzeswUk3z6w3IFjh8gK', '2018-02-23 18:29:20', '2018-02-23 18:29:20'),
(712, 18, 'WFJdpB8J15uuD0yEP0ZxQDk2YT6WdEsL', '2018-02-25 06:14:20', '2018-02-25 06:14:20'),
(716, 9, 'AjhrpF6Ol7oclRzWteHmvoAk1r3WfoGS', '2018-02-25 19:02:25', '2018-02-25 19:02:25'),
(720, 9, 'YyRRg8xxkNOpx8F1Ko9P8Ej7VeRfG62O', '2018-02-26 07:10:35', '2018-02-26 07:10:35'),
(723, 23, '5fro20KbiwjS9sBaYT0rXmApnrNHPb0n', '2018-02-26 15:17:22', '2018-02-26 15:17:22'),
(724, 24, 'KrYp4AbOBg5Uz3bpIHcsTNC661cEAY2Z', '2018-02-26 15:22:36', '2018-02-26 15:22:36'),
(725, 9, '4wcNO489cOTJLaaHgT2nuh1wzxqYqNaz', '2018-03-02 08:53:13', '2018-03-02 08:53:13'),
(726, 27, 'btxnbgLZUJ7m3tQXJ5HYjMWIIGLJQZah', '2018-03-02 21:00:19', '2018-03-02 21:00:19'),
(727, 9, 'RzrUdVp07BuXX0856t7Ct5pyhb6QxPuq', '2018-03-03 06:55:38', '2018-03-03 06:55:38'),
(728, 9, 'XSDYzrEb8tofrXRf6cuiwo64R6AEujoS', '2018-03-04 11:26:00', '2018-03-04 11:26:00'),
(729, 26, '5Hp4QCkJkBaj7UrCO6vhJh6MPqRc0JFA', '2018-03-08 05:42:14', '2018-03-08 05:42:14'),
(730, 9, 'J4UNX9KGd1quMS0C0j7r1mjyVS847Lnu', '2018-03-08 16:56:50', '2018-03-08 16:56:50'),
(731, 9, 'f0bHrYduYr0ycK3M7CP72BBsKDqxTfo3', '2018-03-09 15:55:11', '2018-03-09 15:55:11'),
(732, 9, 'lSXSiHGJBvWbwVMCuXlyXAGzfpnHrFX2', '2018-03-10 10:39:56', '2018-03-10 10:39:56'),
(734, 9, 'bZuHWh9LGn3C6EUP9gCJbowUlDfQlAu6', '2018-03-10 10:44:43', '2018-03-10 10:44:43'),
(735, 9, 'kWZzTxwsFSxCVXH6FC5y4XV5rP0fFqJQ', '2018-03-12 04:53:32', '2018-03-12 04:53:32'),
(736, 26, 'j4xhMJpegCZIYVaP110rrea6CQqROqlY', '2018-03-12 11:31:27', '2018-03-12 11:31:27'),
(741, 26, 'O2qnfzFtO2eW0CO0b5wARoxioSxeRhN2', '2018-03-13 09:35:35', '2018-03-13 09:35:35'),
(742, 26, 'DipeGxu1axKazUBJu5LBFeCEac7JcvQA', '2018-03-13 14:57:45', '2018-03-13 14:57:45'),
(744, 26, 'cxDMfankjjXdqtJvaFjqdeMrMbVLzNBB', '2018-03-16 14:30:06', '2018-03-16 14:30:06'),
(745, 9, '6LKa1Lgvwk0Di7VkSp155QJhbVFsHPxQ', '2018-03-17 04:51:02', '2018-03-17 04:51:02'),
(746, 1, 'TGvRs7HWz61Ix8lnEbtzgDvubwx3LLDa', '2018-03-19 14:32:54', '2018-03-19 14:32:54'),
(747, 1, 'LeJJCDDY5ghslELJWZzkC8AVtGszD8oN', '2018-03-19 17:43:05', '2018-03-19 17:43:05'),
(748, 1, 'Oxr631cxRXTtl6YdF9ijNMFVobFFPIB8', '2018-03-21 10:58:31', '2018-03-21 10:58:31'),
(752, 1, 'crHWUhbOwaDDGPIxzLD8lFBIrWlLU8D4', '2018-03-21 18:31:11', '2018-03-21 18:31:11'),
(754, 1, 'lZrsQYhSFs7EOLvSUxn8ww2LktNpNSxp', '2018-03-22 07:34:21', '2018-03-22 07:34:21'),
(755, 1, 'V4qIp3XwmOlFhClZGiLFG4Ifjho4QShr', '2018-03-22 16:46:54', '2018-03-22 16:46:54'),
(756, 1, 'IPZEMZiYgI1Pip5YhcwRLHkaYk0bsSj3', '2018-03-25 17:50:07', '2018-03-25 17:50:07'),
(758, 9, 'vDUD2EESpjzZ8aQVHKLVI6GrelU9nOik', '2018-03-26 16:32:23', '2018-03-26 16:32:23'),
(760, 1, 'hPVZf58BlHeox2JIuQt8w6nsSQP96i4M', '2018-03-27 18:53:26', '2018-03-27 18:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'registered', '    Registered    ', '{\"front\":true,\"my-account\":true,\"index\":true}', 1, '2015-10-26 04:16:31', '2015-12-18 21:54:02'),
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
(11, 1, '2018-01-07 14:18:27', '2018-01-07 14:18:27'),
(12, 1, '2018-01-29 16:15:58', '2018-01-29 16:15:58'),
(15, 1, '2018-02-01 04:44:24', '2018-02-01 04:44:24'),
(17, 1, '2018-02-01 04:45:53', '2018-02-01 04:45:53'),
(18, 1, '2018-02-01 04:58:20', '2018-02-01 04:58:20'),
(19, 1, '2018-02-07 15:33:02', '2018-02-07 15:33:02'),
(22, 1, '2018-02-21 11:58:03', '2018-02-21 11:58:03'),
(23, 1, '2018-02-26 15:17:22', '2018-02-26 15:17:22'),
(24, 1, '2018-02-26 15:22:36', '2018-02-26 15:22:36'),
(26, 1, '2018-02-26 15:24:22', '2018-02-26 15:24:22'),
(27, 1, '2018-03-02 21:00:19', '2018-03-02 21:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `sa_branch`
--

CREATE TABLE `sa_branch` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sa_branch`
--

INSERT INTO `sa_branch` (`id`, `name`, `code`, `address`, `tel`, `city_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HEADOFFICE', '-', 'NEGAMBO', '756388155', 1, 1, '2016-09-29 16:31:30', '2016-10-13 09:48:48', NULL),
(2, 'KANDY', 'K-001', 'Kandy', '7995', 2, 1, '2017-01-18 19:03:04', '2017-01-18 19:03:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sa_city`
--

CREATE TABLE `sa_city` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sa_city`
--

INSERT INTO `sa_city` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Galle', '2018-03-27 19:37:19', '2018-03-27 19:37:19'),
(2, 'Colombo', '2018-03-27 19:37:19', '2018-03-27 19:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `sa_gallery`
--

CREATE TABLE `sa_gallery` (
  `id` int(11) NOT NULL,
  `album_name` text NOT NULL,
  `description` text,
  `categories` text NOT NULL,
  `path` text NOT NULL,
  `filename` text,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sa_gallery`
--

INSERT INTO `sa_gallery` (`id`, `album_name`, `description`, `categories`, `path`, `filename`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'Police Box 3D cake', '2018 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '[\"1\"]', 'uploads/images/gallery', 'gallery-cover-20171224190003.jpg', 9, '2017-12-24 13:30:03', '2018-01-18 14:36:11', NULL, 1),
(2, 'Birthday Cake 01', 'A hyper realistic version of a childhood favorite: Popeye! This cake was created for Avalon’s very own “Sugar Spooks” halloween cake collaboration. This cake was partly inspired by the earlier work of Rick Baker.', '[\"2\"]', 'uploads/images/gallery', 'gallery-cover-20171224190050.jpg', 9, '2017-12-24 13:30:50', '2018-01-18 15:45:22', NULL, 1),
(3, 'Birthday Cake 02', '', '[\"2\"]', 'uploads/images/gallery', 'gallery-cover-20171224190106.jpg', 9, '2017-12-24 13:31:06', '2017-12-24 13:31:06', NULL, 1),
(4, 'Grooms cake 01', '', '[\"3\"]', 'uploads/images/gallery', 'gallery-cover-20171224190201.jpg', 9, '2017-12-24 13:32:01', '2017-12-24 13:32:01', NULL, 1),
(5, 'Sculpted cake 01', '', '[\"4\"]', 'uploads/images/gallery', 'gallery-cover-20171224190249.jpg', 9, '2017-12-24 13:32:49', '2017-12-24 13:32:49', NULL, 1),
(6, 'Sugar Flowers 01', '', '[\"5\"]', 'uploads/images/gallery', 'gallery-cover-20171224190350.jpg', 9, '2017-12-24 13:33:50', '2017-12-24 13:33:50', NULL, 1),
(7, 'Wedding cake 01', '', '[\"6\"]', 'uploads/images/gallery', 'gallery-cover-20171224190435.jpg', 9, '2017-12-24 13:34:35', '2017-12-24 13:34:35', NULL, 1),
(8, 'Wedding cake 02', '', '[\"6\"]', 'uploads/images/gallery', 'gallery-cover-20171224190511.jpg', 9, '2017-12-24 13:35:11', '2017-12-24 13:35:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sa_gallery_category`
--

CREATE TABLE `sa_gallery_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sa_gallery_category`
--

INSERT INTO `sa_gallery_category` (`id`, `name`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3D Cakes', 9, 1, '2017-12-24 13:25:19', '2017-12-24 13:25:19', NULL),
(2, 'Birthday Cakes', 9, 1, '2017-12-24 13:25:28', '2017-12-24 13:25:28', NULL),
(3, 'Grooms Cakes', 9, 1, '2017-12-24 13:25:44', '2017-12-24 13:25:44', NULL),
(4, 'Sculpted Cakes', 9, 1, '2017-12-24 13:25:52', '2017-12-24 13:25:52', NULL),
(5, 'Sugar Flowers', 9, 1, '2017-12-24 13:25:58', '2017-12-24 13:25:58', NULL),
(6, 'Wedding Cakes', 9, 1, '2017-12-24 13:26:05', '2017-12-24 13:26:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sa_gallery_image`
--

CREATE TABLE `sa_gallery_image` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `filename` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sa_gallery_image`
--

INSERT INTO `sa_gallery_image` (`id`, `gallery_id`, `path`, `filename`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/images/gallery', 'gallery-sub-20171224190003-0.jpg', '2017-12-24 13:30:03', '2017-12-24 13:30:03'),
(2, 2, 'uploads/images/gallery', 'gallery-sub-20171224190050-0.jpg', '2017-12-24 13:30:50', '2017-12-24 13:30:50'),
(3, 3, 'uploads/images/gallery', 'gallery-sub-20171224190106-0.jpg', '2017-12-24 13:31:06', '2017-12-24 13:31:06'),
(4, 4, 'uploads/images/gallery', 'gallery-sub-20171224190201-0.jpg', '2017-12-24 13:32:01', '2017-12-24 13:32:01'),
(5, 5, 'uploads/images/gallery', 'gallery-sub-20171224190249-0.jpg', '2017-12-24 13:32:49', '2017-12-24 13:32:49'),
(6, 6, 'uploads/images/gallery', 'gallery-sub-20171224190350-0.jpg', '2017-12-24 13:33:50', '2017-12-24 13:33:50'),
(7, 7, 'uploads/images/gallery', 'gallery-sub-20171224190435-0.jpg', '2017-12-24 13:34:35', '2017-12-24 13:34:35'),
(8, 7, 'uploads/images/gallery', 'gallery-sub-20171224190435-1.jpg', '2017-12-24 13:34:35', '2017-12-24 13:34:35'),
(9, 7, 'uploads/images/gallery', 'gallery-sub-20171224190435-2.jpg', '2017-12-24 13:34:35', '2017-12-24 13:34:35'),
(10, 8, 'uploads/images/gallery', 'gallery-sub-20171224190511-0.jpg', '2017-12-24 13:35:11', '2017-12-24 13:35:11');

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
(287, NULL, 'global', NULL, '2018-01-09 15:24:36', '2018-01-09 15:24:36'),
(288, NULL, 'ip', '::1', '2018-01-09 15:24:36', '2018-01-09 15:24:36'),
(289, NULL, 'global', NULL, '2018-02-01 04:54:38', '2018-02-01 04:54:38'),
(290, NULL, 'ip', '::1', '2018-02-01 04:54:38', '2018-02-01 04:54:38'),
(291, 12, 'user', NULL, '2018-02-01 04:54:38', '2018-02-01 04:54:38'),
(292, NULL, 'global', NULL, '2018-02-01 04:54:46', '2018-02-01 04:54:46'),
(293, NULL, 'ip', '::1', '2018-02-01 04:54:46', '2018-02-01 04:54:46'),
(294, 12, 'user', NULL, '2018-02-01 04:54:46', '2018-02-01 04:54:46'),
(295, NULL, 'global', NULL, '2018-02-01 04:55:05', '2018-02-01 04:55:05'),
(296, NULL, 'ip', '::1', '2018-02-01 04:55:05', '2018-02-01 04:55:05'),
(297, 12, 'user', NULL, '2018-02-01 04:55:05', '2018-02-01 04:55:05'),
(298, NULL, 'global', NULL, '2018-02-01 04:56:17', '2018-02-01 04:56:17'),
(299, NULL, 'ip', '::1', '2018-02-01 04:56:17', '2018-02-01 04:56:17'),
(300, 12, 'user', NULL, '2018-02-01 04:56:17', '2018-02-01 04:56:17'),
(301, NULL, 'global', NULL, '2018-02-07 15:23:34', '2018-02-07 15:23:34'),
(302, NULL, 'ip', '::1', '2018-02-07 15:23:34', '2018-02-07 15:23:34'),
(303, 18, 'user', NULL, '2018-02-07 15:23:34', '2018-02-07 15:23:34'),
(304, NULL, 'global', NULL, '2018-02-07 15:28:30', '2018-02-07 15:28:30'),
(305, NULL, 'ip', '::1', '2018-02-07 15:28:30', '2018-02-07 15:28:30'),
(306, 18, 'user', NULL, '2018-02-07 15:28:30', '2018-02-07 15:28:30'),
(307, NULL, 'global', NULL, '2018-02-12 04:48:18', '2018-02-12 04:48:18'),
(308, NULL, 'ip', '::1', '2018-02-12 04:48:18', '2018-02-12 04:48:18'),
(309, NULL, 'global', NULL, '2018-02-14 09:44:29', '2018-02-14 09:44:29'),
(310, NULL, 'ip', '::1', '2018-02-14 09:44:29', '2018-02-14 09:44:29'),
(311, NULL, 'global', NULL, '2018-02-14 09:44:38', '2018-02-14 09:44:38'),
(312, NULL, 'ip', '::1', '2018-02-14 09:44:38', '2018-02-14 09:44:38'),
(313, NULL, 'global', NULL, '2018-02-14 09:45:47', '2018-02-14 09:45:47'),
(314, NULL, 'global', NULL, '2018-02-14 09:45:47', '2018-02-14 09:45:47'),
(315, NULL, 'ip', '::1', '2018-02-14 09:45:47', '2018-02-14 09:45:47'),
(316, NULL, 'ip', '::1', '2018-02-14 09:45:47', '2018-02-14 09:45:47'),
(317, NULL, 'global', NULL, '2018-02-15 16:19:27', '2018-02-15 16:19:27'),
(318, NULL, 'ip', '::1', '2018-02-15 16:19:27', '2018-02-15 16:19:27'),
(319, NULL, 'global', NULL, '2018-02-18 05:14:10', '2018-02-18 05:14:10'),
(320, NULL, 'ip', '::1', '2018-02-18 05:14:10', '2018-02-18 05:14:10'),
(321, NULL, 'global', NULL, '2018-02-18 05:14:16', '2018-02-18 05:14:16'),
(322, NULL, 'ip', '::1', '2018-02-18 05:14:16', '2018-02-18 05:14:16'),
(323, NULL, 'global', NULL, '2018-02-18 05:14:21', '2018-02-18 05:14:21'),
(324, NULL, 'ip', '::1', '2018-02-18 05:14:21', '2018-02-18 05:14:21'),
(325, NULL, 'global', NULL, '2018-02-18 05:14:31', '2018-02-18 05:14:31'),
(326, NULL, 'ip', '::1', '2018-02-18 05:14:31', '2018-02-18 05:14:31'),
(327, NULL, 'global', NULL, '2018-02-18 06:38:25', '2018-02-18 06:38:25'),
(328, NULL, 'ip', '::1', '2018-02-18 06:38:25', '2018-02-18 06:38:25'),
(329, NULL, 'global', NULL, '2018-02-19 17:36:44', '2018-02-19 17:36:44'),
(330, NULL, 'ip', '::1', '2018-02-19 17:36:44', '2018-02-19 17:36:44'),
(331, NULL, 'global', NULL, '2018-02-25 17:41:01', '2018-02-25 17:41:01'),
(332, NULL, 'ip', '::1', '2018-02-25 17:41:01', '2018-02-25 17:41:01'),
(333, NULL, 'global', NULL, '2018-02-26 04:46:57', '2018-02-26 04:46:57'),
(334, NULL, 'ip', '::1', '2018-02-26 04:46:57', '2018-02-26 04:46:57'),
(335, NULL, 'global', NULL, '2018-02-26 04:47:14', '2018-02-26 04:47:14'),
(336, NULL, 'ip', '::1', '2018-02-26 04:47:14', '2018-02-26 04:47:14'),
(337, NULL, 'global', NULL, '2018-02-26 04:47:49', '2018-02-26 04:47:49'),
(338, NULL, 'ip', '::1', '2018-02-26 04:47:49', '2018-02-26 04:47:49'),
(339, NULL, 'global', NULL, '2018-02-26 04:48:00', '2018-02-26 04:48:00'),
(340, NULL, 'ip', '::1', '2018-02-26 04:48:00', '2018-02-26 04:48:00'),
(341, NULL, 'global', NULL, '2018-02-26 04:49:39', '2018-02-26 04:49:39'),
(342, NULL, 'ip', '::1', '2018-02-26 04:49:39', '2018-02-26 04:49:39'),
(343, NULL, 'global', NULL, '2018-02-26 04:53:08', '2018-02-26 04:53:08'),
(344, NULL, 'ip', '::1', '2018-02-26 04:53:08', '2018-02-26 04:53:08'),
(345, NULL, 'global', NULL, '2018-02-26 05:03:13', '2018-02-26 05:03:13'),
(346, NULL, 'ip', '::1', '2018-02-26 05:03:13', '2018-02-26 05:03:13'),
(347, NULL, 'global', NULL, '2018-02-26 05:04:52', '2018-02-26 05:04:52'),
(348, NULL, 'ip', '::1', '2018-02-26 05:04:52', '2018-02-26 05:04:52'),
(349, NULL, 'global', NULL, '2018-02-26 05:08:19', '2018-02-26 05:08:19'),
(350, NULL, 'ip', '::1', '2018-02-26 05:08:19', '2018-02-26 05:08:19'),
(351, NULL, 'global', NULL, '2018-02-26 05:09:22', '2018-02-26 05:09:22'),
(352, NULL, 'ip', '::1', '2018-02-26 05:09:22', '2018-02-26 05:09:22'),
(353, NULL, 'global', NULL, '2018-02-26 05:11:25', '2018-02-26 05:11:25'),
(354, NULL, 'ip', '::1', '2018-02-26 05:11:25', '2018-02-26 05:11:25'),
(355, NULL, 'global', NULL, '2018-02-26 05:12:45', '2018-02-26 05:12:45'),
(356, NULL, 'ip', '::1', '2018-02-26 05:12:45', '2018-02-26 05:12:45'),
(357, NULL, 'global', NULL, '2018-02-26 05:39:05', '2018-02-26 05:39:05'),
(358, NULL, 'ip', '::1', '2018-02-26 05:39:05', '2018-02-26 05:39:05'),
(359, 9, 'user', NULL, '2018-02-26 05:39:05', '2018-02-26 05:39:05'),
(360, NULL, 'global', NULL, '2018-02-26 07:10:30', '2018-02-26 07:10:30'),
(361, NULL, 'ip', '::1', '2018-02-26 07:10:30', '2018-02-26 07:10:30'),
(362, NULL, 'global', NULL, '2018-02-26 14:23:51', '2018-02-26 14:23:51'),
(363, NULL, 'ip', '::1', '2018-02-26 14:23:51', '2018-02-26 14:23:51'),
(364, NULL, 'global', NULL, '2018-02-26 14:24:26', '2018-02-26 14:24:26'),
(365, NULL, 'ip', '::1', '2018-02-26 14:24:26', '2018-02-26 14:24:26'),
(366, NULL, 'global', NULL, '2018-02-26 17:06:07', '2018-02-26 17:06:07'),
(367, NULL, 'ip', '::1', '2018-02-26 17:06:07', '2018-02-26 17:06:07'),
(368, NULL, 'global', NULL, '2018-02-28 05:00:30', '2018-02-28 05:00:30'),
(369, NULL, 'ip', '::1', '2018-02-28 05:00:30', '2018-02-28 05:00:30'),
(370, NULL, 'global', NULL, '2018-02-28 18:09:39', '2018-02-28 18:09:39'),
(371, NULL, 'ip', '::1', '2018-02-28 18:09:39', '2018-02-28 18:09:39'),
(372, NULL, 'global', NULL, '2018-02-28 18:17:32', '2018-02-28 18:17:32'),
(373, NULL, 'ip', '::1', '2018-02-28 18:17:32', '2018-02-28 18:17:32'),
(374, NULL, 'global', NULL, '2018-03-04 11:25:55', '2018-03-04 11:25:55'),
(375, NULL, 'ip', '::1', '2018-03-04 11:25:55', '2018-03-04 11:25:55'),
(376, NULL, 'global', NULL, '2018-03-27 18:24:45', '2018-03-27 18:24:45'),
(377, NULL, 'ip', '::1', '2018-03-27 18:24:45', '2018-03-27 18:24:45'),
(378, NULL, 'global', NULL, '2018-03-27 18:25:49', '2018-03-27 18:25:49'),
(379, NULL, 'ip', '::1', '2018-03-27 18:25:49', '2018-03-27 18:25:49'),
(380, NULL, 'global', NULL, '2018-03-27 18:25:52', '2018-03-27 18:25:52'),
(381, NULL, 'ip', '::1', '2018-03-27 18:25:52', '2018-03-27 18:25:52'),
(382, NULL, 'global', NULL, '2018-03-27 18:26:04', '2018-03-27 18:26:04'),
(383, NULL, 'ip', '::1', '2018-03-27 18:26:04', '2018-03-27 18:26:04'),
(384, NULL, 'global', NULL, '2018-03-27 18:34:31', '2018-03-27 18:34:31'),
(385, NULL, 'ip', '::1', '2018-03-27 18:34:31', '2018-03-27 18:34:31'),
(386, NULL, 'global', NULL, '2018-03-27 18:35:04', '2018-03-27 18:35:04'),
(387, NULL, 'ip', '::1', '2018-03-27 18:35:04', '2018-03-27 18:35:04');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fb_id`, `g_id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `branch`, `password`, `permissions`, `last_login`, `supervisor_id`, `lft`, `rgt`, `depth`, `status`, `created_at`, `updated_at`) VALUES
(1, '', '', 'Super', 'Administrator', 'super.admin', 'admin@admin.lk', NULL, 0, '$2y$10$vJ0/.9l8qByoN/ZFJlzew.U3SUrYnsI6QoPezSfeo9qDQYLJSjC/O', '{\"admin\":true,\"index\":true}', '2018-03-27 18:53:26', NULL, 7, 14, 0, 1, '2015-07-11 06:09:31', '2018-03-27 18:53:26'),
(9, '', '', 'SDC', 'Developer', 'developer', 'developer@admin.com', NULL, 1, '$2y$10$ijimT7X0fQADncEnlwgRZelKPlCoLE81YVjgQlX25F64Ulf5JHiaG', NULL, '2018-03-26 16:32:23', 1, 12, 13, 1, 1, '2017-01-23 07:05:38', '2018-03-26 16:32:23'),
(26, '', '', 'Lakshithaa', 'Hettiarachchia', 'lakshitham', 'rullzzmmm@gmail.com', NULL, 0, '$2y$10$TQOYdsCUh4odq66ty2YoSO/8rgqWDF5Ey1L1SPIH60z1bU3ksZl2S', NULL, '2018-03-16 14:30:07', NULL, 15, 16, 0, NULL, '2018-02-26 15:24:22', '2018-03-16 14:30:07'),
(27, '', '', 'Mayura', 'Hettiarachchi', 'root123', 'rullzzm@gmail.com', NULL, 0, '$2y$10$pTkvlvGxyi1f4g1NRohKheJHWVgPK469ZRQjZ7HT/g.YZe7LZ0xUO', NULL, '2018-03-02 21:00:19', NULL, 17, 18, 0, NULL, '2018-03-02 21:00:19', '2018-03-02 21:00:19');

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
-- Indexes for table `fonts-list`
--
ALTER TABLE `fonts-list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `sa_branch`
--
ALTER TABLE `sa_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sa_city`
--
ALTER TABLE `sa_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sa_gallery`
--
ALTER TABLE `sa_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sa_gallery_category`
--
ALTER TABLE `sa_gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sa_gallery_image`
--
ALTER TABLE `sa_gallery_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `fonts-list`
--
ALTER TABLE `fonts-list`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sa_branch`
--
ALTER TABLE `sa_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sa_city`
--
ALTER TABLE `sa_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sa_gallery`
--
ALTER TABLE `sa_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sa_gallery_category`
--
ALTER TABLE `sa_gallery_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sa_gallery_image`
--
ALTER TABLE `sa_gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
