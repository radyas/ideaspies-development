/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : idea

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-02 09:26:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES ('1', '1', 'RCsr7Qt1bBMqFwlW4bBVvtu02UBBQ0hr', '1', '2015-07-11 11:39:31', '2015-07-11 11:39:31', '2015-07-11 11:39:31');
INSERT INTO `activations` VALUES ('5', '7', 'KB71pV1DYudR9TzPPQnGxRXQBoo7jV0E', '1', '2016-01-06 23:05:57', '2016-01-06 23:05:57', '2016-01-06 23:05:57');
INSERT INTO `activations` VALUES ('8', '10', 'Bs5wlBYLO997Z8lcLpO19pj40fx2qVuV', '1', '2016-01-07 23:50:38', '2016-01-07 23:50:38', '2016-01-07 23:50:38');
INSERT INTO `activations` VALUES ('9', '11', '0dsYg0Ft0IZFKMP7qIs1nbpK0f8gif6y', '1', '2016-01-08 00:18:38', '2016-01-08 00:18:38', '2016-01-08 00:18:38');
INSERT INTO `activations` VALUES ('10', '12', 'yfD7K4mMa3eend4vvBBPNVbyFeX3UGZF', '1', '2016-01-08 00:27:38', '2016-01-08 00:27:38', '2016-01-08 00:27:38');
INSERT INTO `activations` VALUES ('14', '9', 'i7J1jS1CbeCsMb40JdWwQLSFfoOWdngc', '1', '2017-01-23 12:35:39', '2017-01-23 12:35:39', '2017-01-23 12:35:39');
INSERT INTO `activations` VALUES ('15', '10', '8eiPuz7KrCZXYjiMEY1wmkLuPbmMrSwI', '1', '2017-12-27 19:40:24', '2017-12-27 19:40:24', '2017-12-27 19:40:24');
INSERT INTO `activations` VALUES ('16', '11', 'htzbXZnJuH098fhWA5e8V5QLberPA1IA', '1', '2018-01-07 19:48:27', '2018-01-07 19:48:27', '2018-01-07 19:48:27');
INSERT INTO `activations` VALUES ('18', '12', 'PnJ03QoBnJMegHXmGCXh6bcoXArycqr5', '1', '2018-01-29 21:45:58', '2018-01-29 21:45:58', '2018-01-29 21:45:58');
INSERT INTO `activations` VALUES ('20', '15', 'ivsgJeobsGYHI1oHtQo5oTzkBOb6A9WL', '1', '2018-02-01 10:14:24', '2018-02-01 10:14:24', '2018-02-01 10:14:24');
INSERT INTO `activations` VALUES ('21', '17', 'jDkUMCYv0VpNfdrlsxKEFa2wCI78R7DP', '1', '2018-02-01 10:15:53', '2018-02-01 10:15:53', '2018-02-01 10:15:53');
INSERT INTO `activations` VALUES ('22', '18', 'WCbfDN6mTvtTfu2DHELZfkgDgd7B6phA', '1', '2018-02-01 10:28:20', '2018-02-01 10:28:20', '2018-02-01 10:28:20');
INSERT INTO `activations` VALUES ('23', '19', '70ytUN9RjCsVU0qnwno2RseFZRulBXZk', '1', '2018-02-07 21:39:36', '2018-02-07 21:39:36', '2018-02-07 21:39:36');
INSERT INTO `activations` VALUES ('24', '11', 'OTRmEEVvix8rTHBvWtEhFhcyp1DYba6G', '1', '2018-04-03 19:49:47', '2018-04-03 19:49:46', '2018-04-03 19:49:47');
INSERT INTO `activations` VALUES ('25', '12', 'PxCOBJb9Ka41uzOxkRBfhyihNcQYoxYX', '1', '2018-12-01 11:31:45', '2018-12-01 11:31:45', '2018-12-01 11:31:45');
INSERT INTO `activations` VALUES ('26', '13', 'P0C8x3Fqbldfdzsc0TUoSU8XZGaQwpbv', '1', '2018-12-01 11:36:37', '2018-12-01 11:36:37', '2018-12-01 11:36:37');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'test1', '2018-10-24 11:22:07', '2018-10-24 11:34:48');
INSERT INTO `categories` VALUES ('2', 'test', '2018-10-24 11:22:07', '2018-10-24 11:22:07');
INSERT INTO `categories` VALUES ('3', 'test', '2018-10-24 11:22:07', '2018-10-24 11:22:07');
INSERT INTO `categories` VALUES ('4', 'dasd', '2018-10-24 11:24:50', '2018-10-24 11:24:50');
INSERT INTO `categories` VALUES ('5', 'test', '2018-12-01 14:45:10', '2018-12-01 14:45:10');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Root Menu', '#', null, null, null, '1', '38', '0', '1', '2016-09-21 00:00:00', '2018-10-27 12:57:56');
INSERT INTO `menu` VALUES ('2', 'MENU MANAGEMENT', 'menu/list', null, '1', '[\"menu.add\",\"admin\"]', '2', '3', '1', '1', '2016-09-21 00:00:00', '2017-12-24 16:39:01');
INSERT INTO `menu` VALUES ('4', 'USER MANAGEMENT', '#', null, '1', '[\"user.list\",\"user.add\",\"user.edit\",\"user.delete\",\"admin\"]', '8', '17', '1', '1', '2016-09-21 10:56:25', '2018-12-01 13:24:21');
INSERT INTO `menu` VALUES ('5', 'PERMISSION', 'permission/list', null, '4', '[\"admin\"]', '9', '10', '2', '1', '2016-09-21 10:56:51', '2018-12-01 13:24:21');
INSERT INTO `menu` VALUES ('6', 'ROLE', 'user/role/list', null, '4', '[\"admin\"]', '11', '12', '2', '1', '2016-09-21 10:57:15', '2018-12-01 13:24:21');
INSERT INTO `menu` VALUES ('7', 'USER', 'user/list', null, '4', '[\"user.list\",\"user.add\",\"user.edit\",\"user.delete\",\"admin\"]', '13', '14', '2', '1', '2016-09-21 10:57:51', '2018-12-01 13:24:21');
INSERT INTO `menu` VALUES ('9', 'SETTINGS', 'admin/setting/all', null, '1', '[\"admin\",\"admin\"]', '18', '19', '1', '1', '2018-07-14 12:32:02', '2018-12-01 13:24:21');
INSERT INTO `menu` VALUES ('10', 'CATEGORY MANAGEMENT ', 'admin/category/list', null, '1', '[\"admin\",\"admin\"]', '4', '5', '1', '1', '2018-10-24 10:27:38', '2018-12-01 13:24:21');
INSERT INTO `menu` VALUES ('11', 'IDEA MANAGEMENT ', 'admin/post/list', null, '1', '[\"user\",\"admin\"]', '36', '37', '1', '1', '2018-10-27 12:57:56', '2018-12-01 14:36:03');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2018_10_24_101138_create_table_categories', '1');
INSERT INTO `migrations` VALUES ('2018_10_27_102252_create_posts_table', '2');
INSERT INTO `migrations` VALUES ('2014_01_07_073615_create_tagged_table', '3');
INSERT INTO `migrations` VALUES ('2014_01_07_073615_create_tags_table', '3');
INSERT INTO `migrations` VALUES ('2016_06_29_073615_create_tag_groups_table', '3');
INSERT INTO `migrations` VALUES ('2016_06_29_073615_update_tags_table', '3');
INSERT INTO `migrations` VALUES ('2018_12_01_180628_add_active_column_to_users', '4');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_user_id_foreign` (`user_id`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('4', 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '1', '2018-07-14 11:24:49', '2018-07-14 11:24:49', 'core/storage/uploads/images/news/news-20180715223641.png');
INSERT INTO `news` VALUES ('5', 'et justo duo dolores et ea rebum. Stet clita kasd gubergren, no ', 'et-justo-duo-dolores-et-ea-rebum-stet-clita-kasd-gubergren-no', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '1', '2018-07-14 11:26:11', '2018-07-14 11:26:11', 'core/storage/uploads/images/news/news-20180715223641.png');
INSERT INTO `news` VALUES ('6', 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed1 1', 'diam-nonumy-eirmod-tempor-invidunt-ut-labore-et-dolore-magna-aliquyam-erat-sed', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet1.1', '1', '2018-07-14 11:35:07', '2018-07-14 11:52:47', 'core/storage/uploads/images/news/news-20180715223641.png');
INSERT INTO `news` VALUES ('7', 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', 'diam-nonumy-eirmod-tempor-invidunt-ut-labore-et-dolore-magna-aliquyam-erat-sed', 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', '1', '2018-07-14 11:35:53', '2018-07-14 11:35:53', 'core/storage/uploads/images/news/news-20180715223641.png');
INSERT INTO `news` VALUES ('8', 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', 'diam-nonumy-eirmod-tempor-invidunt-ut-labore-et-dolore-magna-aliquyam-erat-sed', 'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ', '1', '2018-07-14 11:36:34', '2018-07-14 11:36:34', 'core/storage/uploads/images/news/news-20180715223641.png');
INSERT INTO `news` VALUES ('9', 'asdasd', 'asdasd', 'asdasd', '1', '2018-07-14 11:36:57', '2018-07-14 11:36:57', 'core/storage/uploads/images/news/news-20180715223641.png');
INSERT INTO `news` VALUES ('10', 'asdasdasd', 'asdasdasd', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '1', '2018-07-15 22:36:41', '2018-07-15 23:10:06', 'core/storage/uploads/images/news/news-20180715231006.png');
INSERT INTO `news` VALUES ('11', 'asdasd', 'asdasd', 'adasdas', '1', '2018-07-27 20:24:47', '2018-07-27 20:24:47', 'core/storage/uploads/images/news/news-20180727202447.png');
INSERT INTO `news` VALUES ('12', 'adasdas', 'adasdas', 'asdasd', '1', '2018-07-27 20:25:59', '2018-07-27 20:25:59', 'core/storage/uploads/images/news/news-20180727202559.png');
INSERT INTO `news` VALUES ('13', 'adsasd', 'adsasd', 'asdasd', '1', '2018-07-27 20:38:55', '2018-07-27 20:38:55', 'core/storage/uploads/images/news/news-20180727203855.png');
INSERT INTO `news` VALUES ('14', 'asdasd', 'asdasd', 'asdasd', '1', '2018-07-27 20:42:58', '2018-07-27 20:42:58', 'core/storage/uploads/images/news/news-20180727204257.png');
INSERT INTO `news` VALUES ('16', 'asd', 'asd', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '1', '2018-07-27 20:46:56', '2018-07-27 22:28:27', 'core/storage/uploads/images/news/news-20180727204656.png');

-- ----------------------------
-- Table structure for news_images
-- ----------------------------
DROP TABLE IF EXISTS `news_images`;
CREATE TABLE `news_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL,
  `src` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `news_images_news_id_foreign` (`news_id`) USING BTREE,
  CONSTRAINT `news_images_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news_images
-- ----------------------------
INSERT INTO `news_images` VALUES ('1', '10', 'core/storage/uploads/images/news_slider/news-20180715223641.png', '2018-07-15 22:36:41', '2018-07-15 22:36:41');
INSERT INTO `news_images` VALUES ('2', '10', 'core/storage/uploads/images/news_slider/news-20180715223642.png', '2018-07-15 22:36:42', '2018-07-15 22:36:42');
INSERT INTO `news_images` VALUES ('3', '12', 'core/storage/uploads/images/news_slider/news-20180727202559.png', '2018-07-27 20:25:59', '2018-07-27 20:25:59');
INSERT INTO `news_images` VALUES ('5', '12', 'core/storage/uploads/images/news_slider/news-20180727203312.png', '2018-07-27 20:33:12', '2018-07-27 20:33:12');
INSERT INTO `news_images` VALUES ('6', '13', 'core/storage/uploads/images/news_slider/news-20180727203855.png', '2018-07-27 20:38:55', '2018-07-27 20:38:55');
INSERT INTO `news_images` VALUES ('7', '13', 'core/storage/uploads/images/news_slider/news-20180727203855.png', '2018-07-27 20:38:55', '2018-07-27 20:38:55');
INSERT INTO `news_images` VALUES ('8', '16', 'core/storage/uploads/images/news_slider/news-201807272046560.png', '2018-07-27 20:46:56', '2018-07-27 20:46:56');
INSERT INTO `news_images` VALUES ('9', '16', 'core/storage/uploads/images/news_slider/news-201807272046581.png', '2018-07-27 20:46:58', '2018-07-27 20:46:58');
INSERT INTO `news_images` VALUES ('10', '16', 'core/storage/uploads/images/news_slider/news-201807272048080.png', '2018-07-27 20:48:08', '2018-07-27 20:48:08');
INSERT INTO `news_images` VALUES ('11', '16', 'core/storage/uploads/images/news_slider/news-201807272048081.png', '2018-07-27 20:48:08', '2018-07-27 20:48:08');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'user', 'Normal Registered User', '1', '1', '2015-07-25 00:00:00', '2015-12-02 04:54:39');
INSERT INTO `permissions` VALUES ('2', 'menu.add', null, '1', '1', '2015-07-25 00:00:00', '2015-12-03 08:02:41');
INSERT INTO `permissions` VALUES ('3', 'menu.list', null, '1', '1', '2015-07-25 00:00:00', '2015-12-02 04:54:54');
INSERT INTO `permissions` VALUES ('4', 'menu.edit', null, '1', '1', '2015-07-25 00:00:00', '2015-12-02 04:54:57');
INSERT INTO `permissions` VALUES ('5', 'menu.status', null, '1', '1', '2015-07-25 00:00:00', '2015-12-02 04:55:01');
INSERT INTO `permissions` VALUES ('6', 'admin', 'Super Admin Permission', '1', '1', '2015-07-25 00:00:00', '2015-07-25 00:00:00');
INSERT INTO `permissions` VALUES ('7', 'index', 'Home Page Permission', '1', '1', '2015-07-25 00:00:00', '2015-12-02 04:55:03');
INSERT INTO `permissions` VALUES ('8', 'menu.delete', null, '1', '1', '2015-09-06 14:30:06', '2015-09-06 14:30:09');
INSERT INTO `permissions` VALUES ('9', 'user.add', null, '1', '1', '2015-10-16 00:00:00', '2015-10-16 00:00:00');
INSERT INTO `permissions` VALUES ('10', 'user.edit', null, '1', '1', '2015-10-16 00:00:00', '2015-10-16 00:00:00');
INSERT INTO `permissions` VALUES ('11', 'user.delete', null, '1', '1', '2015-10-16 00:00:00', '2015-10-16 00:00:00');
INSERT INTO `permissions` VALUES ('12', 'user.list', null, '1', '1', '2015-10-20 00:00:00', '2015-10-20 20:01:57');
INSERT INTO `permissions` VALUES ('13', 'user.role.add', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('14', 'user.role.edit', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('15', 'user.role.list', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('16', 'user.role.delete', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('17', 'permission.add', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('18', 'permission.edit', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('19', 'permission.delete', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('20', 'permission.list', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('21', 'permission.group.add', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('22', 'permission.group.edit', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('23', 'permission.group.list', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('24', 'permission.group.delete', null, '1', '1', '2015-10-22 00:00:00', '2015-10-22 00:00:00');
INSERT INTO `permissions` VALUES ('25', 'user.status', null, '1', '1', '2015-12-19 00:00:47', '2015-12-19 00:00:47');
INSERT INTO `permissions` VALUES ('26', 'device.list', 'DEVICE LIST', '1', '1', '2017-01-23 18:44:34', '2017-03-12 22:53:58');
INSERT INTO `permissions` VALUES ('27', 'dashboard', 'DASHBOARD', '1', '1', '2017-01-23 18:48:39', '2017-01-23 18:48:39');
INSERT INTO `permissions` VALUES ('28', 'device.add', 'DEVICE ADD', '1', '1', '2017-01-23 18:49:46', '2017-01-23 18:49:46');
INSERT INTO `permissions` VALUES ('29', 'device.edit', 'DEVICE EDIT', '1', '1', '2017-01-23 18:50:02', '2017-01-23 18:50:02');
INSERT INTO `permissions` VALUES ('30', 'device.delete', 'DEVICE DELETE', '1', '1', '2017-01-23 18:50:24', '2017-01-23 18:50:24');
INSERT INTO `permissions` VALUES ('31', 'gallery.list', 'GALLERY LIST', '1', '1', '2017-01-23 18:51:05', '2017-01-23 18:51:05');
INSERT INTO `permissions` VALUES ('32', 'gallery.add', 'Gallery ADD', '1', '1', '2017-01-23 18:51:23', '2017-01-23 18:51:23');
INSERT INTO `permissions` VALUES ('33', 'gallery.edit', 'GALLERY EDIT', '1', '1', '2017-01-23 18:51:36', '2017-01-23 18:51:36');
INSERT INTO `permissions` VALUES ('34', 'gallery.delete', 'GALLERY DELETE', '1', '1', '2017-01-23 18:51:53', '2017-01-23 18:51:53');
INSERT INTO `permissions` VALUES ('35', 'reservation.list', 'RESERVATION LIST', '1', '1', '2017-01-28 11:04:27', '2017-01-28 11:04:27');
INSERT INTO `permissions` VALUES ('36', 'product.list', 'PRODUCT LIST', '1', '1', '2017-02-20 14:37:26', '2017-02-20 14:37:26');
INSERT INTO `permissions` VALUES ('37', 'product.add', 'PRODUCT ADD', '1', '1', '2017-02-20 14:37:49', '2017-02-20 14:37:49');
INSERT INTO `permissions` VALUES ('38', 'product.edit', 'PRODUCT EDIT', '1', '1', '2017-02-20 14:38:08', '2017-02-20 14:38:08');
INSERT INTO `permissions` VALUES ('39', 'product.delete', 'PRODUCT DELETE', '1', '1', '2017-03-14 20:54:22', '2017-03-14 20:54:22');
INSERT INTO `permissions` VALUES ('40', 'series.list', 'SERIES LIST', '1', '1', '2017-03-14 21:01:49', '2017-03-14 21:01:49');
INSERT INTO `permissions` VALUES ('41', 'series.add', 'SERIES ADD', '1', '1', '2017-03-14 21:02:03', '2017-03-14 21:02:03');
INSERT INTO `permissions` VALUES ('42', 'series.edit', 'SERIES EDIT', '1', '1', '2017-03-14 21:02:17', '2017-03-14 21:02:17');
INSERT INTO `permissions` VALUES ('43', 'series.delete', 'SERIES DELETE', '1', '1', '2017-03-14 21:02:33', '2017-03-14 21:02:33');
INSERT INTO `permissions` VALUES ('44', 'feature.add', 'ADD FEATURE', '1', '1', '2017-03-26 09:42:51', '2017-03-26 09:42:51');
INSERT INTO `permissions` VALUES ('45', 'feature.edit', 'EDIT FEATURE', '1', '1', '2017-03-26 09:43:08', '2017-03-26 09:43:08');
INSERT INTO `permissions` VALUES ('46', 'feature.list', 'LIST FEATURE', '1', '1', '2017-03-26 09:43:23', '2017-03-26 09:43:23');
INSERT INTO `permissions` VALUES ('47', 'feature.delete', 'DELETE FEATURE', '1', '1', '2017-03-26 09:43:41', '2017-03-26 09:43:41');
INSERT INTO `permissions` VALUES ('48', 'blog', 'BLOG', '1', '1', '2017-04-03 23:02:46', '2017-04-03 23:02:46');
INSERT INTO `permissions` VALUES ('49', 'blog.add', 'ADD BLOG', '1', '1', '2017-05-08 21:47:46', '2017-05-08 21:47:46');
INSERT INTO `permissions` VALUES ('50', 'blog.edit', 'EDIT BLOG', '1', '1', '2017-05-08 21:48:01', '2017-05-08 21:48:01');
INSERT INTO `permissions` VALUES ('51', 'blog.list', 'LIST BLOG', '1', '1', '2017-05-08 21:48:13', '2017-05-08 21:48:13');
INSERT INTO `permissions` VALUES ('52', 'blog.delete', 'DELETE BLOG', '1', '1', '2017-05-08 21:48:28', '2017-05-08 21:48:28');
INSERT INTO `permissions` VALUES ('53', 'destination.list', '', '1', '1', '2018-02-25 16:16:36', '2018-02-25 16:16:36');
INSERT INTO `permissions` VALUES ('54', 'destination.add', '', '1', '1', '2018-02-25 16:16:43', '2018-02-25 16:16:43');
INSERT INTO `permissions` VALUES ('55', 'destination.edit', '', '1', '1', '2018-02-25 16:17:04', '2018-02-25 16:17:04');
INSERT INTO `permissions` VALUES ('56', 'destination.delete', '', '1', '1', '2018-02-25 16:17:12', '2018-02-25 16:17:12');
INSERT INTO `permissions` VALUES ('57', 'hotel.add', '', '1', '1', '2018-03-01 14:45:53', '2018-03-01 14:45:53');
INSERT INTO `permissions` VALUES ('58', 'hotel.edit', '', '1', '1', '2018-03-01 14:46:01', '2018-03-01 14:46:01');
INSERT INTO `permissions` VALUES ('59', 'hotel.list', '', '1', '1', '2018-03-01 14:46:50', '2018-03-01 14:46:50');

-- ----------------------------
-- Table structure for persistences
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of persistences
-- ----------------------------
INSERT INTO `persistences` VALUES ('1', '1', '0q0ygX6vhRbhWLfDVMQjCpuVVi4Uv21m', '2015-07-11 11:39:55', '2015-07-11 11:39:55');
INSERT INTO `persistences` VALUES ('2', '1', 'efBjwoN42yjE5Pbbbn3NOvAQMh6Hc47p', '2015-07-13 10:12:45', '2015-07-13 10:12:45');
INSERT INTO `persistences` VALUES ('4', '1', 'dkYUwD816i7YeZLaLmENn7b7qXyRV6jE', '2015-07-13 15:13:07', '2015-07-13 15:13:07');
INSERT INTO `persistences` VALUES ('5', '1', 'fsVkzYpy5e5SIno5317Viix318Ipevum', '2015-07-14 14:42:12', '2015-07-14 14:42:12');
INSERT INTO `persistences` VALUES ('7', '1', 'BYdFxgUBhE9H2BqP6PEg5tQXjQvapGkk', '2015-07-14 18:53:52', '2015-07-14 18:53:52');
INSERT INTO `persistences` VALUES ('8', '1', 'UuheCz7Zmb1WM2zsJVnJv3yMtHrCZXZP', '2015-07-18 19:35:42', '2015-07-18 19:35:42');
INSERT INTO `persistences` VALUES ('9', '1', 'ugwMinnLII8pAvdX48uibN4tCfFncKxL', '2015-07-25 12:44:39', '2015-07-25 12:44:39');
INSERT INTO `persistences` VALUES ('10', '1', '6sv5Vmes7x5zzF5kp9BIiF0e3J7uatEA', '2015-07-25 21:32:42', '2015-07-25 21:32:42');
INSERT INTO `persistences` VALUES ('12', '1', 'AAPH0gv7ueGmg1GHT3CDDb8CuqliETTr', '2015-07-27 09:00:05', '2015-07-27 09:00:05');
INSERT INTO `persistences` VALUES ('17', '1', 'EvOMH9hGBkW3nS9TJjtnZOajBh8b2nH8', '2015-08-13 20:59:00', '2015-08-13 20:59:00');
INSERT INTO `persistences` VALUES ('18', '1', 'sgY1xcvVRC3q8s2Qe5IgY6k4NVdw8Bw2', '2015-08-13 21:00:50', '2015-08-13 21:00:50');
INSERT INTO `persistences` VALUES ('19', '1', 'smRBCmpzbBL4RTXJZcaAW5Wr4quWzvnA', '2015-08-14 10:08:36', '2015-08-14 10:08:36');
INSERT INTO `persistences` VALUES ('20', '1', 'C1xwzvvNREHhtx6JqQEZSTEPMbzY7J6F', '2015-08-14 10:13:16', '2015-08-14 10:13:16');
INSERT INTO `persistences` VALUES ('23', '1', '0XUcBHFDSxUgWDZsdPt9Oigx5cIfQ5KR', '2015-08-14 15:49:04', '2015-08-14 15:49:04');
INSERT INTO `persistences` VALUES ('24', '1', 'LeqsntX9HwB19oOzfqFICR3TB2xHZt5c', '2015-08-14 21:16:49', '2015-08-14 21:16:49');
INSERT INTO `persistences` VALUES ('25', '1', 'ZRilkZu1axOqoPqkAbNzA4ZPQccDHLEf', '2015-08-15 14:19:49', '2015-08-15 14:19:49');
INSERT INTO `persistences` VALUES ('26', '1', 'fHHSkcipQkFfpeTYIcxmFqKS2IKL0ozJ', '2015-08-17 09:41:53', '2015-08-17 09:41:53');
INSERT INTO `persistences` VALUES ('27', '1', 'Gev3KH0ERZX7UFA6QASlHd4wW9Tm47cz', '2015-08-17 13:22:08', '2015-08-17 13:22:08');
INSERT INTO `persistences` VALUES ('28', '1', 'Pu0bSNJwO7XEhfmr8Ubg28c5HWp2BCfN', '2015-08-18 09:01:21', '2015-08-18 09:01:21');
INSERT INTO `persistences` VALUES ('29', '1', 'FkavnjEGjcidC4hGsJwf5JepGpglq09u', '2015-08-18 11:03:49', '2015-08-18 11:03:49');
INSERT INTO `persistences` VALUES ('30', '1', 'GfVyVFbRB7yBaekFtBu3l16pB95iDYyv', '2015-08-18 18:11:28', '2015-08-18 18:11:28');
INSERT INTO `persistences` VALUES ('32', '1', '7Qa9ckHVYsRkTgnZNSQ9szqJ7ORRwqqP', '2015-08-19 19:43:25', '2015-08-19 19:43:25');
INSERT INTO `persistences` VALUES ('34', '1', '7gzkQXDRziKCU3V6YN3os6oty3ZYmm3V', '2015-08-20 10:40:32', '2015-08-20 10:40:32');
INSERT INTO `persistences` VALUES ('35', '1', 'PPni5OZ4t4Ukf7GqJhJTowQUbG1BKTCO', '2015-08-24 17:02:19', '2015-08-24 17:02:19');
INSERT INTO `persistences` VALUES ('39', '1', '1Vq5gtTDFk3uhKn9AHMOnWwQxiNq8eNm', '2015-08-24 20:32:07', '2015-08-24 20:32:07');
INSERT INTO `persistences` VALUES ('40', '1', '9tal1AP1HQ4usfTnI3Q0kXSrPzScKtnz', '2015-08-25 12:56:55', '2015-08-25 12:56:55');
INSERT INTO `persistences` VALUES ('41', '1', 'FDkLOdsEvF0HzB1XvBQ8GKAQZ9oq80xS', '2015-08-25 18:50:00', '2015-08-25 18:50:00');
INSERT INTO `persistences` VALUES ('42', '1', 'LW0maecSnWGHR1uvR1ev67CmiePNeYQb', '2015-08-26 08:43:11', '2015-08-26 08:43:11');
INSERT INTO `persistences` VALUES ('43', '1', 'c7UCeZhd2AdNOrNIrzFeP8Z2xHSPBOat', '2015-08-26 13:21:39', '2015-08-26 13:21:39');
INSERT INTO `persistences` VALUES ('44', '1', 'DmiuJhBD8ndKrxeQzYUgKJ0qdr5VfgEp', '2015-08-26 13:23:05', '2015-08-26 13:23:05');
INSERT INTO `persistences` VALUES ('45', '1', 'EvLSeVbZ4LpQHpIwn3ESkPmKiHZYqChR', '2015-08-26 19:43:08', '2015-08-26 19:43:08');
INSERT INTO `persistences` VALUES ('46', '1', 'ZaFHszTHVJxdXVHyYyDUiVrjDsVLF2os', '2015-08-27 08:50:53', '2015-08-27 08:50:53');
INSERT INTO `persistences` VALUES ('47', '1', 'E26Ajf3IuoSAQBDRGUnJxBXuLWf45qTE', '2015-08-28 11:00:55', '2015-08-28 11:00:55');
INSERT INTO `persistences` VALUES ('48', '1', '6gvIBqAaNqIHUC1GXGnvpobgXDqyGFWV', '2015-08-28 14:22:35', '2015-08-28 14:22:35');
INSERT INTO `persistences` VALUES ('49', '1', 'C9iOcAwSX8vcFZVUkRrnb7BTEmFfb1lW', '2015-08-28 16:54:30', '2015-08-28 16:54:30');
INSERT INTO `persistences` VALUES ('50', '1', 'm8HlkBppqVOmVtvm8WXn1gflqnpxZ7ZX', '2015-08-28 21:13:47', '2015-08-28 21:13:47');
INSERT INTO `persistences` VALUES ('51', '1', 'Ga2L52MViQQHOjQmC0B3NIwKoFoeC5LU', '2015-08-29 12:26:46', '2015-08-29 12:26:46');
INSERT INTO `persistences` VALUES ('52', '1', 'pEnesSMPpp8XwoXBGc0AQIxG8a0NlJL7', '2015-08-29 15:41:51', '2015-08-29 15:41:51');
INSERT INTO `persistences` VALUES ('53', '1', 'DOyCW9LubRxZlUZI1VM9VWmwEHFqEtuy', '2015-08-30 13:45:08', '2015-08-30 13:45:08');
INSERT INTO `persistences` VALUES ('54', '1', 'hQnXdF66aT6GWv1bjMfdQlrFzXCKzPaD', '2015-09-01 18:13:49', '2015-09-01 18:13:49');
INSERT INTO `persistences` VALUES ('55', '1', 'SofbScd28GADuBXJkBe02t4wNesj1pyc', '2015-09-02 09:16:21', '2015-09-02 09:16:21');
INSERT INTO `persistences` VALUES ('58', '1', 'S9zBLvLOtfn86jn2YZ7o4cDDIXir5odO', '2015-09-06 16:33:49', '2015-09-06 16:33:49');
INSERT INTO `persistences` VALUES ('59', '1', 'jhnFLwdIIq3akmuFjwNT5hXRbskFN8Cv', '2015-09-07 09:00:41', '2015-09-07 09:00:41');
INSERT INTO `persistences` VALUES ('65', '1', 'Yzp3Ic2rJbT21gHfSHQAyNH9sySMzNx8', '2015-09-17 12:38:02', '2015-09-17 12:38:02');
INSERT INTO `persistences` VALUES ('66', '1', 'FPxtt7aeMIpDuoEEIrFeXfS289y6YyrI', '2015-09-17 12:40:28', '2015-09-17 12:40:28');
INSERT INTO `persistences` VALUES ('67', '1', 'DE0xeUB6zv2l9VC7hlbHeVKZdNVgba2k', '2015-09-17 12:42:20', '2015-09-17 12:42:20');
INSERT INTO `persistences` VALUES ('68', '1', 'VSigkljclaPzU2jbUTnEPb7uAqbq7OO4', '2015-09-17 12:46:25', '2015-09-17 12:46:25');
INSERT INTO `persistences` VALUES ('69', '1', 'u1u64fxr5E8cVetPE2xfwXXlZg8ETdMt', '2015-09-17 12:48:29', '2015-09-17 12:48:29');
INSERT INTO `persistences` VALUES ('70', '1', 'IsPKSyDwN4yyBDpHDCQTFIA9cb9tDvho', '2015-09-17 12:50:56', '2015-09-17 12:50:56');
INSERT INTO `persistences` VALUES ('71', '1', 'Mqwwg7Ji564GosYUs8ew6p56lVqTNggm', '2015-09-17 12:51:06', '2015-09-17 12:51:06');
INSERT INTO `persistences` VALUES ('72', '1', 'ReDZfYlXcI3vckn50feKIYFukwEIaJxW', '2015-09-17 12:55:47', '2015-09-17 12:55:47');
INSERT INTO `persistences` VALUES ('73', '1', '1zPiFaCd2KentN0BEVayuoIqOfxi3lMS', '2015-09-17 12:56:15', '2015-09-17 12:56:15');
INSERT INTO `persistences` VALUES ('75', '1', 'FiS9P7LCFRk2i3wnNHZJqODlZaBMPBsH', '2015-09-17 12:57:16', '2015-09-17 12:57:16');
INSERT INTO `persistences` VALUES ('77', '1', 'w6afABnpTAwYkETiZ1LpLEG31RUMR9J9', '2015-09-17 13:14:14', '2015-09-17 13:14:14');
INSERT INTO `persistences` VALUES ('80', '1', 'zEQJ08oNoKnzyenYvSBPlGNkYrQRb9iU', '2015-09-17 15:08:48', '2015-09-17 15:08:48');
INSERT INTO `persistences` VALUES ('81', '1', 'ngBYUNkxL2QkLY5Lj7EHCsAY8VRUPIss', '2015-09-17 16:07:24', '2015-09-17 16:07:24');
INSERT INTO `persistences` VALUES ('82', '1', 'qPnddeucFgMvXEyCDsm99LGWgtiKQJI0', '2015-09-17 16:37:58', '2015-09-17 16:37:58');
INSERT INTO `persistences` VALUES ('83', '1', 'y8KppplOMITXfiYtuU10r96MmBw2fn4Z', '2015-09-17 16:54:17', '2015-09-17 16:54:17');
INSERT INTO `persistences` VALUES ('87', '1', '1O0lJH2OdlZ5JYPb7OzU95hN9DD9D08f', '2015-09-18 11:17:44', '2015-09-18 11:17:44');
INSERT INTO `persistences` VALUES ('91', '1', 'F2EASmRV02xRfOorilcer2HPJR0ff10w', '2015-09-21 08:53:43', '2015-09-21 08:53:43');
INSERT INTO `persistences` VALUES ('93', '1', 'XtZHW8aWJtnVDHLcFpJjfzuFQCI4BarH', '2015-09-21 09:01:03', '2015-09-21 09:01:03');
INSERT INTO `persistences` VALUES ('94', '1', '4MvhjQuFQMa3d3kTpaMJIhrHIqrpd0Ud', '2015-09-21 09:04:16', '2015-09-21 09:04:16');
INSERT INTO `persistences` VALUES ('95', '1', 'wIeSvojnWxVdqc8Ko2g4wSlgadyT46HX', '2015-09-21 18:46:41', '2015-09-21 18:46:41');
INSERT INTO `persistences` VALUES ('96', '1', 'IfNOgaDeoIHRgr1wMMQvzGO2zyedyHzQ', '2015-10-16 09:55:25', '2015-10-16 09:55:25');
INSERT INTO `persistences` VALUES ('97', '1', 'xb49Au965edKpfxust8QyV2A1ZtN1Jir', '2015-10-16 13:29:38', '2015-10-16 13:29:38');
INSERT INTO `persistences` VALUES ('98', '1', '8KKqFXos72faML2g6w1gZK8GecSR2A7B', '2015-10-16 13:55:28', '2015-10-16 13:55:28');
INSERT INTO `persistences` VALUES ('99', '1', 'IrxeYFpjWjhZdazrZz7tp253etqZlkuh', '2015-10-16 16:09:25', '2015-10-16 16:09:25');
INSERT INTO `persistences` VALUES ('100', '1', 'iuuX2Q6nvfyKfiNLDjOHJ0Jnmd3ZHLEM', '2015-10-17 11:58:06', '2015-10-17 11:58:06');
INSERT INTO `persistences` VALUES ('102', '1', 'vQW13aw7kJoovALydds8W9175IqZq7sh', '2015-10-20 14:15:41', '2015-10-20 14:15:41');
INSERT INTO `persistences` VALUES ('103', '1', 'kznRgyUivNAxj1LolOUloaV52kxc1TOg', '2015-10-20 19:49:12', '2015-10-20 19:49:12');
INSERT INTO `persistences` VALUES ('104', '1', 'UMqlxsaazj72vwRmCVfv5qB5oujn5eO1', '2015-10-20 19:50:38', '2015-10-20 19:50:38');
INSERT INTO `persistences` VALUES ('105', '1', 'xpjJT8wJEAA4xe0WNP9UbGPlEbwgZi7L', '2015-10-21 08:58:35', '2015-10-21 08:58:35');
INSERT INTO `persistences` VALUES ('106', '1', 'PMf4A3yNtiDOJzYEA2Pi58STBrJpYzi9', '2015-10-21 09:06:54', '2015-10-21 09:06:54');
INSERT INTO `persistences` VALUES ('107', '1', 'ix4iaApoo9ohGbwkBNcYyHv3nSkYMuOJ', '2015-10-21 20:21:23', '2015-10-21 20:21:23');
INSERT INTO `persistences` VALUES ('108', '1', 'klm8QxxO7mIG6Ljj5liFWR1qikUv3y1H', '2015-10-22 08:17:41', '2015-10-22 08:17:41');
INSERT INTO `persistences` VALUES ('109', '1', 'TMTs9AXiVGg3Dn8AmaXt5EZS4Z4WeVgp', '2015-10-26 09:18:24', '2015-10-26 09:18:24');
INSERT INTO `persistences` VALUES ('110', '1', 'gihggqvhu0ngRD3ZMkeBhMLMNW6uKXHJ', '2015-10-28 10:09:40', '2015-10-28 10:09:40');
INSERT INTO `persistences` VALUES ('111', '1', 'KDNzGA42AWdXV63AG90IhJF6Q36pmtpE', '2015-10-28 19:08:36', '2015-10-28 19:08:36');
INSERT INTO `persistences` VALUES ('112', '1', '35yTDDYO1IYhs9ujWXGWfAS9cxXIs4Hj', '2015-11-04 08:43:06', '2015-11-04 08:43:06');
INSERT INTO `persistences` VALUES ('113', '1', 'FE2s4HBsv9RoBO7oUsUT7KxFTaXqdpUs', '2015-11-06 14:36:44', '2015-11-06 14:36:44');
INSERT INTO `persistences` VALUES ('115', '1', 'a35iqeHc7BvGEbgIx9t357tFXklT9bqO', '2015-11-06 16:08:06', '2015-11-06 16:08:06');
INSERT INTO `persistences` VALUES ('116', '1', 'eE6SkzCzg1FtCi2E24UNmFm7OBVLWORs', '2015-11-07 16:32:42', '2015-11-07 16:32:42');
INSERT INTO `persistences` VALUES ('117', '1', 't71JCTd8yKBblCePz7bWznuSpkU2XqDv', '2015-11-07 16:57:44', '2015-11-07 16:57:44');
INSERT INTO `persistences` VALUES ('119', '1', 'ECMvGKmUgYm2qtMN0OMrPqpaDn5jx08d', '2015-11-18 23:03:17', '2015-11-18 23:03:17');
INSERT INTO `persistences` VALUES ('120', '1', 'PtyWimBS6rsnKlRxj96BDq9L7SDKG2rk', '2015-11-18 23:43:11', '2015-11-18 23:43:11');
INSERT INTO `persistences` VALUES ('121', '1', 'l9FIuW4AIkJij7BhzeiSEfzU4VyTWHMv', '2015-11-19 00:26:41', '2015-11-19 00:26:41');
INSERT INTO `persistences` VALUES ('122', '1', 'bFb85D3SNEMRAoWExKagngxrR9mpWG9a', '2015-11-19 02:56:32', '2015-11-19 02:56:32');
INSERT INTO `persistences` VALUES ('123', '1', 'SXL5MRTMSjhUxM2hHtJlZTUCbqgFF5dp', '2015-11-19 03:06:15', '2015-11-19 03:06:15');
INSERT INTO `persistences` VALUES ('124', '1', 'xe3efdBNBGu5Ftyzf6SBg1IpUjzMiODv', '2015-11-19 05:17:47', '2015-11-19 05:17:47');
INSERT INTO `persistences` VALUES ('125', '1', 'H0KI9TFvutyqksX9WFdo7ltXlIdi6LBO', '2015-11-19 12:01:04', '2015-11-19 12:01:04');
INSERT INTO `persistences` VALUES ('126', '1', 'b5U0MlNhXnSybtPBfB6OOmx2UD0jp3rK', '2015-11-19 22:56:33', '2015-11-19 22:56:33');
INSERT INTO `persistences` VALUES ('127', '1', 'aY5cfsCbK3SIOhyIfqn5swgMpi7DdOaH', '2015-11-19 23:48:16', '2015-11-19 23:48:16');
INSERT INTO `persistences` VALUES ('128', '1', 'LFMf9yFQYkV1iEc4MPSmy2cPyAlIBI7e', '2015-11-20 06:56:45', '2015-11-20 06:56:45');
INSERT INTO `persistences` VALUES ('129', '1', 'RzLW8COzh7iRkoCA0sY3VAejSmQbAFGS', '2015-11-20 22:43:07', '2015-11-20 22:43:07');
INSERT INTO `persistences` VALUES ('130', '1', 'QyjXCs2H1KLaiSveWaBenK05uG6Z0S8D', '2015-11-21 03:28:30', '2015-11-21 03:28:30');
INSERT INTO `persistences` VALUES ('131', '1', '9wrIGqqTTScbdXWxrxsu4mPGI30xTTJn', '2015-11-21 05:22:41', '2015-11-21 05:22:41');
INSERT INTO `persistences` VALUES ('132', '1', 'bBc9L5jexsFXL5iGZV8sIlgiyiEpvCo1', '2015-11-23 22:54:24', '2015-11-23 22:54:24');
INSERT INTO `persistences` VALUES ('134', '1', 'MVm2uIPKGoClnBOtPnZLeMne0cxqm79A', '2015-11-24 00:36:16', '2015-11-24 00:36:16');
INSERT INTO `persistences` VALUES ('135', '1', 'UdEhb1HUGGFeNUAHSzSEAd28LBtML6ti', '2015-11-24 06:24:58', '2015-11-24 06:24:58');
INSERT INTO `persistences` VALUES ('136', '1', 'CZGAahPMZICfT9C2pz8DKf3N9XLZpzwT', '2015-11-24 06:44:32', '2015-11-24 06:44:32');
INSERT INTO `persistences` VALUES ('138', '1', 'ZS8C30f5fheTscPSyKKcwnHFzwJi5YUg', '2015-11-24 22:17:44', '2015-11-24 22:17:44');
INSERT INTO `persistences` VALUES ('139', '1', 'hviLwIVE77jiFjpRBx6DmB29nDCTiEoa', '2015-11-24 23:21:06', '2015-11-24 23:21:06');
INSERT INTO `persistences` VALUES ('140', '1', 'k4YjDklmjCK3XOheyFj5tZRgkgQLcvPZ', '2015-11-25 00:14:04', '2015-11-25 00:14:04');
INSERT INTO `persistences` VALUES ('141', '1', 'Q0pgzUMaw1jbbjbJ76ZEoiPNHbvEaGhb', '2015-11-25 02:09:15', '2015-11-25 02:09:15');
INSERT INTO `persistences` VALUES ('142', '1', 'j1Ll3vyCfxk8WYrfGRWbLcFlmmB5gvuf', '2015-11-25 06:57:11', '2015-11-25 06:57:11');
INSERT INTO `persistences` VALUES ('143', '1', '36OdiItmKntFhhusCsOxRDRUmRLi3aIk', '2015-11-26 22:10:45', '2015-11-26 22:10:45');
INSERT INTO `persistences` VALUES ('144', '1', 'EY00OQByVxbkksjXJeB779sTw0PVBwQo', '2015-11-26 22:31:33', '2015-11-26 22:31:33');
INSERT INTO `persistences` VALUES ('145', '1', 'wFYXrcHs2VT8JxpVeu2nkYpEDIiyveCi', '2015-11-27 03:36:39', '2015-11-27 03:36:39');
INSERT INTO `persistences` VALUES ('146', '1', 'fnPGwFNPFaup09Pi8h3HRZkW7g2o89UB', '2015-11-27 04:10:49', '2015-11-27 04:10:49');
INSERT INTO `persistences` VALUES ('147', '1', 'EoByZX0seoP71TO3mh5YkAiMw41dQjfI', '2015-11-27 22:26:43', '2015-11-27 22:26:43');
INSERT INTO `persistences` VALUES ('148', '1', 'N4O3wiGd7DlOZPPsiXQnU3GaIUDVs0pk', '2015-11-27 22:35:49', '2015-11-27 22:35:49');
INSERT INTO `persistences` VALUES ('149', '1', 'wvrtqymHww86JtFR4ySTB7PRMVe6CYyZ', '2015-12-01 00:29:39', '2015-12-01 00:29:39');
INSERT INTO `persistences` VALUES ('150', '1', '0c1cjjzAmVVAFRwhzEBmL2fBR2a0cZ47', '2015-12-01 00:34:17', '2015-12-01 00:34:17');
INSERT INTO `persistences` VALUES ('151', '1', 'wXdvBHnlVA6VxrKWojj4MPaQ15WIDALo', '2015-12-01 01:44:11', '2015-12-01 01:44:11');
INSERT INTO `persistences` VALUES ('152', '1', '6KgSa5WB6Fcd1RhTQe4bpnc3NLRc4jKs', '2015-12-01 09:31:40', '2015-12-01 09:31:40');
INSERT INTO `persistences` VALUES ('153', '1', 'b9DvbCSyCVGeHps05XTN3kDLjG9i6UID', '2015-12-01 22:20:21', '2015-12-01 22:20:21');
INSERT INTO `persistences` VALUES ('154', '1', 'V1ebekY9wLdVXEXYaDXiDKizKIwV2YoZ', '2015-12-02 00:35:33', '2015-12-02 00:35:33');
INSERT INTO `persistences` VALUES ('155', '1', 'U1TDvsp3l7S50HKZJilwD8kolj3oKMZY', '2015-12-02 01:44:31', '2015-12-02 01:44:31');
INSERT INTO `persistences` VALUES ('156', '1', 'tWGlxczBI5ISqJsyb8i4t1GAGLVmCxdg', '2015-12-02 23:27:48', '2015-12-02 23:27:48');
INSERT INTO `persistences` VALUES ('157', '1', 'sX9s0vE8zk12ZJkKZOj53is0FOSzm3h5', '2015-12-03 00:06:14', '2015-12-03 00:06:14');
INSERT INTO `persistences` VALUES ('158', '1', 'YZ1T4vrGkxVOS91okt3lSiz7OFyibEWY', '2015-12-03 00:15:44', '2015-12-03 00:15:44');
INSERT INTO `persistences` VALUES ('160', '1', '0asRo8XZo9ictz6mNc941GyW81j7mqnY', '2015-12-03 06:42:18', '2015-12-03 06:42:18');
INSERT INTO `persistences` VALUES ('161', '1', 'FVal7sFDex7QqJibHPmQ3BqJOjMxY4zG', '2015-12-03 07:27:27', '2015-12-03 07:27:27');
INSERT INTO `persistences` VALUES ('162', '1', 'R82HDrmisEFi9HDBpF4Cb6Ffg8r9o3RI', '2015-12-03 08:02:32', '2015-12-03 08:02:32');
INSERT INTO `persistences` VALUES ('163', '1', 'bYRhi5W5Z5sShoOXorpyq9PTzruV4ISR', '2015-12-03 23:13:08', '2015-12-03 23:13:08');
INSERT INTO `persistences` VALUES ('164', '1', '6wFdYiPTSZW4ldZn62NgTYaTQrAyMRFW', '2015-12-04 01:10:42', '2015-12-04 01:10:42');
INSERT INTO `persistences` VALUES ('165', '1', '7Zpc8lp11v5CtWyMWGlonBNEHCsQCWhi', '2015-12-07 23:04:48', '2015-12-07 23:04:48');
INSERT INTO `persistences` VALUES ('166', '1', '9vbkG1yJuNrxJbPccH6inExHABpHtQMU', '2015-12-08 00:26:07', '2015-12-08 00:26:07');
INSERT INTO `persistences` VALUES ('167', '1', 'O61lttpy7l77lwEm2vQBpYftms5BbuWz', '2015-12-08 00:27:47', '2015-12-08 00:27:47');
INSERT INTO `persistences` VALUES ('168', '1', 'z1BKohUNT9iUIx0QDiNHknohKyQLxgwR', '2015-12-08 02:51:57', '2015-12-08 02:51:57');
INSERT INTO `persistences` VALUES ('169', '1', 'AutjPb5lGuWESM9dFfzsSpFyDH6vJifT', '2015-12-08 06:12:57', '2015-12-08 06:12:57');
INSERT INTO `persistences` VALUES ('170', '1', 'IjjDqcWuwLtABfWU4FeKbmfFnYVZeo81', '2015-12-09 01:21:17', '2015-12-09 01:21:17');
INSERT INTO `persistences` VALUES ('171', '1', 'MvJ9bEq3DNsBfz6eBPpbvweOEqZUZTZZ', '2015-12-09 03:59:56', '2015-12-09 03:59:56');
INSERT INTO `persistences` VALUES ('172', '1', 'YE0xTDpxGhMKoxuRYEqODQdhjsg0HBWN', '2015-12-09 06:44:15', '2015-12-09 06:44:15');
INSERT INTO `persistences` VALUES ('173', '1', 'qtPfV4NGQUHK8nPilb3zMSkPtOFa5fA7', '2015-12-09 06:48:06', '2015-12-09 06:48:06');
INSERT INTO `persistences` VALUES ('174', '1', 'bRiBCAqEMyoZMFGcVh0ppiCe7jJQtmL6', '2015-12-09 22:39:45', '2015-12-09 22:39:45');
INSERT INTO `persistences` VALUES ('175', '1', 'kvxZtGoLNIrPws0jng0hSky09B4w52xo', '2015-12-09 22:54:21', '2015-12-09 22:54:21');
INSERT INTO `persistences` VALUES ('177', '1', 'CYcO33TQxApc3BsrIxKhA1TG2XfjvjuE', '2015-12-10 09:31:48', '2015-12-10 09:31:48');
INSERT INTO `persistences` VALUES ('178', '1', 'ch00cMtPi9ZXy38Y8xsVKkeQT4Tdyz0F', '2015-12-10 22:32:28', '2015-12-10 22:32:28');
INSERT INTO `persistences` VALUES ('179', '1', 'ucujCYid3Ed1fWRzUc33bszW0Da5WpoR', '2015-12-10 23:22:35', '2015-12-10 23:22:35');
INSERT INTO `persistences` VALUES ('180', '1', 'NQRHc1Aw4NGYpvd8UJHdacDUcMoN6CWT', '2015-12-10 23:28:07', '2015-12-10 23:28:07');
INSERT INTO `persistences` VALUES ('181', '1', 'lNch1fxa3m3v7w7QaQKOxJSAq8MM1oWV', '2015-12-11 01:12:57', '2015-12-11 01:12:57');
INSERT INTO `persistences` VALUES ('182', '1', 'AhU6Q1goojDW2QHqZtWGrOFIJ5yvyN29', '2015-12-11 02:16:19', '2015-12-11 02:16:19');
INSERT INTO `persistences` VALUES ('183', '1', 'HlNikcVYXQjaM4RTiuBaXpUVHvz6BVRD', '2015-12-12 04:53:54', '2015-12-12 04:53:54');
INSERT INTO `persistences` VALUES ('184', '1', 'aNFY4tCtnikY3dkpYL5GCTNiU3uil6dK', '2015-12-15 01:16:12', '2015-12-15 01:16:12');
INSERT INTO `persistences` VALUES ('185', '1', 'uFP0pEF4i8hpkuXI3XbN5HyyL45IEg9d', '2015-12-15 01:23:42', '2015-12-15 01:23:42');
INSERT INTO `persistences` VALUES ('186', '1', 'vHVcNsAZ5cHqBBCBesd8a4O5bWERDwta', '2015-12-15 02:00:17', '2015-12-15 02:00:17');
INSERT INTO `persistences` VALUES ('187', '1', 'ChWOSdh7XwdgcCY811PGvll0OvNwuijO', '2015-12-15 02:00:39', '2015-12-15 02:00:39');
INSERT INTO `persistences` VALUES ('188', '1', 'HmekPBJ7ICRGCVPXebGjrXKaeqFxAsUz', '2015-12-15 09:10:11', '2015-12-15 09:10:11');
INSERT INTO `persistences` VALUES ('189', '1', '3Y7IXo5Fav5lMC18YJOBaw3LyGm3Zqti', '2015-12-15 22:48:39', '2015-12-15 22:48:39');
INSERT INTO `persistences` VALUES ('190', '1', 'VWfHAS0MK3w8urby0C1O5gBydkw5nRXt', '2015-12-15 23:37:52', '2015-12-15 23:37:52');
INSERT INTO `persistences` VALUES ('192', '1', 'x18zuJwn8SteKHNbt4URG9Uq1XR0f2Pi', '2015-12-16 22:15:37', '2015-12-16 22:15:37');
INSERT INTO `persistences` VALUES ('193', '1', 'mf0llY1RIuyVIBH7UZnwayL1EaVgaFFX', '2015-12-16 23:26:48', '2015-12-16 23:26:48');
INSERT INTO `persistences` VALUES ('194', '1', 'z9DhpWh9V8MpvWZSwFjx0hKFxoI2DGgK', '2015-12-17 00:34:29', '2015-12-17 00:34:29');
INSERT INTO `persistences` VALUES ('195', '1', 'CR87O4WkLFp06iAR7lqniAlqjmh1k8we', '2015-12-17 03:03:19', '2015-12-17 03:03:19');
INSERT INTO `persistences` VALUES ('196', '1', 'cPDJLvk735GPW0ra0gW4t56wJ5pDmMRk', '2015-12-17 22:56:23', '2015-12-17 22:56:23');
INSERT INTO `persistences` VALUES ('197', '1', 'oVn2YFQRwd2gAWhlclpXyDrhjeVppsLU', '2015-12-17 23:36:31', '2015-12-17 23:36:31');
INSERT INTO `persistences` VALUES ('198', '1', 'vuNBEvFcd18udu3JQnsW0ofs2KzferFr', '2015-12-18 04:48:06', '2015-12-18 04:48:06');
INSERT INTO `persistences` VALUES ('199', '1', 'Ywq2iUj3JoQ0Nm3RfYTVYVEHmaQdebk9', '2015-12-18 05:47:28', '2015-12-18 05:47:28');
INSERT INTO `persistences` VALUES ('201', '1', 'qQwfqZPYXB5z1AGj6X0sA564nSQFxfAK', '2015-12-19 00:59:07', '2015-12-19 00:59:07');
INSERT INTO `persistences` VALUES ('205', '1', 'vcFhrXNme0lqyD9NHvhq70lohOEjKwXm', '2015-12-19 02:47:59', '2015-12-19 02:47:59');
INSERT INTO `persistences` VALUES ('221', '1', 'v8PGTwhcVg9tbCprRcnz7O51wzOd7u6E', '2015-12-19 07:02:04', '2015-12-19 07:02:04');
INSERT INTO `persistences` VALUES ('222', '1', 'NqZN9jtcJEUBarUEcjhBHW3WEKeC7Y4U', '2015-12-22 02:06:49', '2015-12-22 02:06:49');
INSERT INTO `persistences` VALUES ('223', '1', 'JCXWsqKC99RPpa6ETVbmnuEwv6bBuQdL', '2015-12-28 21:46:56', '2015-12-28 21:46:56');
INSERT INTO `persistences` VALUES ('224', '1', 'oDVXJBM8w9YRFKWb8HbGYD8TGtlt3X4b', '2015-12-29 23:01:35', '2015-12-29 23:01:35');
INSERT INTO `persistences` VALUES ('225', '1', 'Ao8BnmQ433VKsCngYlkBA3XwmdG6KxtH', '2015-12-31 04:01:50', '2015-12-31 04:01:50');
INSERT INTO `persistences` VALUES ('226', '1', 'iRxZ1afS4VTBy5VwpG5NQxQISj8EnNVP', '2015-12-31 05:10:39', '2015-12-31 05:10:39');
INSERT INTO `persistences` VALUES ('227', '1', 'k37znZ2CQPln2OLinYELHQ2Tkw8j56ht', '2015-12-31 21:44:34', '2015-12-31 21:44:34');
INSERT INTO `persistences` VALUES ('228', '1', '3PjJ5RyRe8ZPBHfQ9ro1UI3iVhG49rGR', '2015-12-31 22:11:05', '2015-12-31 22:11:05');
INSERT INTO `persistences` VALUES ('229', '1', 'BLBuxGAaqABxtg08U0SO5L8RYf3YTlrJ', '2016-01-04 22:53:26', '2016-01-04 22:53:26');
INSERT INTO `persistences` VALUES ('230', '1', '3GezeUSlnh72asykrBlhVqlOZW9dVBgc', '2016-01-06 23:03:28', '2016-01-06 23:03:28');
INSERT INTO `persistences` VALUES ('233', '1', 'U04AcwG7T17Ky9gy72tThaE5pa7cMKRb', '2016-01-08 01:56:55', '2016-01-08 01:56:55');
INSERT INTO `persistences` VALUES ('234', '1', 'NKfuqj7oiybLSyVEn4gfvgzdlrTIYXJh', '2016-01-08 04:00:23', '2016-01-08 04:00:23');
INSERT INTO `persistences` VALUES ('236', '1', 'HIJ6IMqSV3EybIZFiNu3cxpbabgBbqWy', '2016-01-09 07:05:32', '2016-01-09 07:05:32');
INSERT INTO `persistences` VALUES ('238', '1', 'sWxeUSntPPSkt6pQp0llxmHLbkEaChYD', '2016-01-13 08:22:14', '2016-01-13 08:22:14');
INSERT INTO `persistences` VALUES ('239', '1', 'ZJD3jkIsNXOfl3Ns3h7Zdc1c8YTWZszk', '2016-01-20 03:51:02', '2016-01-20 03:51:02');
INSERT INTO `persistences` VALUES ('240', '1', 'IYTXwaz9POTqnhccszxP5xrsVS6pVfsT', '2016-01-20 05:17:09', '2016-01-20 05:17:09');
INSERT INTO `persistences` VALUES ('247', '1', 'sK03UtbWuendDySxW4QHNwFk7oUfGGQh', '2016-01-22 04:21:02', '2016-01-22 04:21:02');
INSERT INTO `persistences` VALUES ('248', '1', 'cEupKusIH32KPfSFxsgrNsbyPtOrAKmJ', '2016-01-24 11:55:37', '2016-01-24 11:55:37');
INSERT INTO `persistences` VALUES ('249', '1', 'rh3YgfuzOeuR1XTHcv6C8va0IeF6suBG', '2016-01-27 02:57:20', '2016-01-27 02:57:20');
INSERT INTO `persistences` VALUES ('251', '1', 'O43TYM85iDgTel2AL9Vx9R0XfCQBkLVi', '2016-01-28 22:40:07', '2016-01-28 22:40:07');
INSERT INTO `persistences` VALUES ('252', '1', 'PwS9qjcqbOWH0Vfmi3r2Rsyt6DD4a0Zu', '2016-01-29 22:50:25', '2016-01-29 22:50:25');
INSERT INTO `persistences` VALUES ('253', '1', 'zPd7scLweBBjdsNU4z9W1ypNHkJXUluh', '2016-02-02 01:31:41', '2016-02-02 01:31:41');
INSERT INTO `persistences` VALUES ('254', '1', 'Bs7DtcBQghw6pIARDwkUTAQlFNDmBoJH', '2016-02-02 22:40:54', '2016-02-02 22:40:54');
INSERT INTO `persistences` VALUES ('255', '1', 'pHG2p2qNOyL7yGHs64ZEIlMi3gWIKoqA', '2016-02-03 02:47:42', '2016-02-03 02:47:42');
INSERT INTO `persistences` VALUES ('256', '1', '98beL2w2JCdq6tPhm8WI8aJhOn1rImR4', '2016-02-05 22:12:46', '2016-02-05 22:12:46');
INSERT INTO `persistences` VALUES ('257', '1', 'T5TIVTIWDNAQJmGWyidQyREJ5I4FzgZR', '2016-02-05 22:15:01', '2016-02-05 22:15:01');
INSERT INTO `persistences` VALUES ('258', '1', 'EnBjEdYhWPx3Oy15aRAWG4DKqhwRv5ov', '2016-02-06 01:27:20', '2016-02-06 01:27:20');
INSERT INTO `persistences` VALUES ('259', '1', 'CsMADZrehJhqSi5ZLjW818I2w4CfHDSr', '2016-02-06 01:33:35', '2016-02-06 01:33:35');
INSERT INTO `persistences` VALUES ('260', '1', 'azAaPIxSHpYhnaoX0dJSDMLNqc8lcmJc', '2016-02-08 21:52:54', '2016-02-08 21:52:54');
INSERT INTO `persistences` VALUES ('261', '1', 'HKxd27kS2kMSM2HrTAKv43R3KbDrswhA', '2016-02-09 00:19:08', '2016-02-09 00:19:08');
INSERT INTO `persistences` VALUES ('262', '1', '48Ubx2II5G9sO0mFRXvuDZ2Y7nPfD6GL', '2016-02-09 03:00:34', '2016-02-09 03:00:34');
INSERT INTO `persistences` VALUES ('263', '1', 'vT3WOvD54FuXTHFUCCGDZJTMESQGIyLm', '2016-02-09 21:37:06', '2016-02-09 21:37:06');
INSERT INTO `persistences` VALUES ('264', '1', 'wbqdkltHpAMPJBwCArq8ofEOJM78ijA8', '2016-02-10 22:56:27', '2016-02-10 22:56:27');
INSERT INTO `persistences` VALUES ('265', '1', 'rg7fD0sVCXY1tKniF72qcMC2yMT7qiIW', '2016-02-10 22:59:18', '2016-02-10 22:59:18');
INSERT INTO `persistences` VALUES ('266', '1', 'TiysVzWSHW41jwJVXICfb2HKf8SbffrA', '2016-02-10 23:57:37', '2016-02-10 23:57:37');
INSERT INTO `persistences` VALUES ('267', '1', '8W8ebwDb7e6y09mrOLNIbK1NRau4COMD', '2016-02-11 02:58:24', '2016-02-11 02:58:24');
INSERT INTO `persistences` VALUES ('268', '1', 'ZiFrNARlSVBjkIbrjZ7onhY0tJzQz507', '2016-02-12 00:15:09', '2016-02-12 00:15:09');
INSERT INTO `persistences` VALUES ('270', '1', 'mP5f65vcNaweLd9PJCf3Pk9IVnME5RBf', '2016-02-13 00:56:40', '2016-02-13 00:56:40');
INSERT INTO `persistences` VALUES ('271', '1', 'tdu6OzlLAyNW4sluvHCEWds5ZxP0bxS4', '2016-02-13 18:20:12', '2016-02-13 18:20:12');
INSERT INTO `persistences` VALUES ('275', '1', 'ztbunZDOv1s9QIiNz7RFxluWuSYbg8Fa', '2016-02-29 12:05:19', '2016-02-29 12:05:19');
INSERT INTO `persistences` VALUES ('276', '1', 'hLmFelaXvujhsSGwNlU7lfcyJpmYLnGk', '2016-03-02 09:17:03', '2016-03-02 09:17:03');
INSERT INTO `persistences` VALUES ('277', '1', 'XB9vR14I8dis89PH6B87A7TLhZKXaXJm', '2016-03-02 11:54:12', '2016-03-02 11:54:12');
INSERT INTO `persistences` VALUES ('278', '1', 'kQeWQK85H1BrXV1SCJfc27Fmw6Wp3oyN', '2016-03-02 12:30:33', '2016-03-02 12:30:33');
INSERT INTO `persistences` VALUES ('279', '1', 'WIQSxD6QHb4PFG2aU4Ha6jEj3uBub0cs', '2016-03-03 16:11:41', '2016-03-03 16:11:41');
INSERT INTO `persistences` VALUES ('280', '1', 'AEVdOFQIJrN97odGu8wIzsxDq2ZXvdp0', '2016-03-07 09:41:17', '2016-03-07 09:41:17');
INSERT INTO `persistences` VALUES ('281', '1', '94wd5Y0M2Kps5m7ie7cPccjEjOKpMQNy', '2016-03-07 09:46:38', '2016-03-07 09:46:38');
INSERT INTO `persistences` VALUES ('282', '1', 'DPVodfpPkU8Kz5mWCt3JAlqo6fwGbuxo', '2016-03-07 10:42:12', '2016-03-07 10:42:12');
INSERT INTO `persistences` VALUES ('283', '1', 'VGvZq0gH0YS1imjFqXLlvrG0WX7SOAcU', '2016-03-08 09:40:20', '2016-03-08 09:40:20');
INSERT INTO `persistences` VALUES ('284', '1', 'ANi2cc4LPzquSUcuvQpVzYcRuVOAutaZ', '2016-03-08 12:51:06', '2016-03-08 12:51:06');
INSERT INTO `persistences` VALUES ('285', '1', 'ilHKy865x9mgPlXMJP4l5fMJrkOqZLZc', '2016-03-08 14:39:59', '2016-03-08 14:39:59');
INSERT INTO `persistences` VALUES ('286', '1', 'QsNTMqkvHRecWfEJ6H1NWcaxSs1oNvfw', '2016-03-08 20:18:58', '2016-03-08 20:18:58');
INSERT INTO `persistences` VALUES ('287', '1', '37SnOgQXkjLfYjP4izY4X1UR1iXQ3Ssp', '2016-03-09 09:42:10', '2016-03-09 09:42:10');
INSERT INTO `persistences` VALUES ('288', '1', 'mpppkJaenoQAVtCIfkY36F35y1HlT86S', '2016-03-09 12:28:57', '2016-03-09 12:28:57');
INSERT INTO `persistences` VALUES ('289', '1', 'Ftyf3YMVMk5d5O0KjxdIyH0vTheyr7DR', '2016-03-10 09:50:23', '2016-03-10 09:50:23');
INSERT INTO `persistences` VALUES ('290', '1', '0LUVNJqQ667EUhMzzza8qehmqdvwRD4V', '2016-03-10 13:57:26', '2016-03-10 13:57:26');
INSERT INTO `persistences` VALUES ('291', '1', 'W2l6Ih8MTSrv0teq6J7rx42EH4oFCXy6', '2016-03-11 09:29:30', '2016-03-11 09:29:30');
INSERT INTO `persistences` VALUES ('292', '1', '2WDNZ8YPZQBPvCjkqaMLcrG2bHNpiSx2', '2016-03-14 10:23:02', '2016-03-14 10:23:02');
INSERT INTO `persistences` VALUES ('293', '1', 'sIzDhM5WZMUPdch0erMFTXt6uNaxcn7G', '2016-03-15 09:11:22', '2016-03-15 09:11:22');
INSERT INTO `persistences` VALUES ('294', '1', 'vS1UwLmFUAIsNtD3bxL7mmzkFnwEybSF', '2016-03-15 10:53:33', '2016-03-15 10:53:33');
INSERT INTO `persistences` VALUES ('295', '1', 'im30jVklOWR7TySKNe21naGEanVatJYL', '2016-03-16 08:56:31', '2016-03-16 08:56:31');
INSERT INTO `persistences` VALUES ('296', '1', 'PT6rUzFfOsrLbETkHyRUxfTxgVLIHgIE', '2016-03-16 09:20:49', '2016-03-16 09:20:49');
INSERT INTO `persistences` VALUES ('297', '1', 'Hy47UymE9xA7JsfjGCjefolnkVOOMTwY', '2016-03-16 16:23:41', '2016-03-16 16:23:41');
INSERT INTO `persistences` VALUES ('298', '1', 'paA1vDiDZxGtFx61LWWMV7tZqeNrCUW1', '2016-03-16 16:29:10', '2016-03-16 16:29:10');
INSERT INTO `persistences` VALUES ('299', '1', 'x5gISkPux4CamFmVoaeoYsPImFfBGpef', '2016-03-16 18:07:05', '2016-03-16 18:07:05');
INSERT INTO `persistences` VALUES ('300', '1', 'yjn0mOUVW3y7UVevY9DKSECOggs96j6r', '2016-03-18 11:19:44', '2016-03-18 11:19:44');
INSERT INTO `persistences` VALUES ('301', '1', 'GoIQf7DmVGs40YbFL7T8BVtbiQ8R8uBh', '2016-03-23 09:44:19', '2016-03-23 09:44:19');
INSERT INTO `persistences` VALUES ('302', '1', 'DvjAiVcASbqobvNMqzIhVBdm6jofQdt1', '2016-03-23 10:17:21', '2016-03-23 10:17:21');
INSERT INTO `persistences` VALUES ('303', '1', 'QBOZsaTD6i22spqeC2vgG2yIgCh8dwnG', '2016-03-23 10:30:56', '2016-03-23 10:30:56');
INSERT INTO `persistences` VALUES ('304', '1', 'u1lErExOOF3HRLDmIx6hruoN94qS9Dsn', '2016-03-23 10:59:47', '2016-03-23 10:59:47');
INSERT INTO `persistences` VALUES ('305', '1', 'cbIVuXZn5wyzsTGZHKxVDjLB7SLOPSYD', '2016-03-28 15:03:00', '2016-03-28 15:03:00');
INSERT INTO `persistences` VALUES ('307', '1', 'CpIqZbEGoqDFJKxHET5h3C0pzDZdvnKn', '2016-03-29 11:21:21', '2016-03-29 11:21:21');
INSERT INTO `persistences` VALUES ('308', '1', 'byerYGBIbsMg4CfY7aidC1ZNYsnmj1E6', '2016-03-30 14:43:20', '2016-03-30 14:43:20');
INSERT INTO `persistences` VALUES ('310', '1', 'ICBM7yj3By39IICV1jkoIKJxh1FFpOzg', '2016-03-30 17:07:58', '2016-03-30 17:07:58');
INSERT INTO `persistences` VALUES ('311', '1', 'hYZ8uFrbW213bFWW2IIBXFQOq5B04Kbj', '2016-03-31 09:10:55', '2016-03-31 09:10:55');
INSERT INTO `persistences` VALUES ('312', '1', 'nFv4bXOYipFv5Ix6zhKSpR1wyNhobj99', '2016-04-01 15:07:40', '2016-04-01 15:07:40');
INSERT INTO `persistences` VALUES ('313', '1', 'KHu9yIGB16YvrDV2FEWOq8BQ6PvMbKl8', '2016-04-25 09:52:04', '2016-04-25 09:52:04');
INSERT INTO `persistences` VALUES ('315', '1', '7FoQgzabeFRIWL1M7ZPsm3z9PG8F1Ugo', '2016-04-26 10:31:21', '2016-04-26 10:31:21');
INSERT INTO `persistences` VALUES ('316', '1', 'OdnZDFviqrfXC8WrQ2Cb6ZDvYz8nPgRx', '2016-04-27 15:07:40', '2016-04-27 15:07:40');
INSERT INTO `persistences` VALUES ('317', '1', 'kOebcJr1JJG5wUk5fhOfGhHxHnLOwSvc', '2016-05-01 23:48:45', '2016-05-01 23:48:45');
INSERT INTO `persistences` VALUES ('320', '1', 'ggE3UJheRV8uDVSOh95l2o0aefxiuPKt', '2016-05-02 09:34:11', '2016-05-02 09:34:11');
INSERT INTO `persistences` VALUES ('321', '1', '53mvW0wlHIMVAW0H00HVg9zkesJ4OhXD', '2016-05-02 09:57:17', '2016-05-02 09:57:17');
INSERT INTO `persistences` VALUES ('322', '1', 'hRCPvsEyyjmKVeHCXisqCoaXBYCxaScN', '2016-05-02 18:22:32', '2016-05-02 18:22:32');
INSERT INTO `persistences` VALUES ('323', '1', 'cTlcwjYOxTY6ZJCrkMNEnO5b5TzMmEGB', '2016-05-03 10:04:46', '2016-05-03 10:04:46');
INSERT INTO `persistences` VALUES ('324', '1', 'vmqEkzTG3IbAneq5OOjHzSqucV35AmnD', '2016-11-01 15:47:58', '2016-11-01 15:47:58');
INSERT INTO `persistences` VALUES ('325', '1', 'BW01QCJOOLoZIO8VUJnF52vIbu2rc11g', '2016-11-02 08:39:37', '2016-11-02 08:39:37');
INSERT INTO `persistences` VALUES ('326', '1', 'FzWFz0LRPiRYtqrp0ZYERRRuAbG1yYiV', '2016-11-08 18:48:50', '2016-11-08 18:48:50');
INSERT INTO `persistences` VALUES ('327', '1', '0xAj653k46fiqUDh19Ckozg3ZyytnCH0', '2016-11-09 11:53:05', '2016-11-09 11:53:05');
INSERT INTO `persistences` VALUES ('328', '1', '6OwwOXig9X0lFtXXVrYgJ8SrkoLgzEvg', '2016-11-10 10:21:43', '2016-11-10 10:21:43');
INSERT INTO `persistences` VALUES ('329', '1', 'FnxCrE4ava77Pf646SgsJhZZcMIfODMy', '2016-11-10 14:37:29', '2016-11-10 14:37:29');
INSERT INTO `persistences` VALUES ('330', '1', 'hXKEok3YM5YjXZjMQuL7T14hAmz43BJH', '2016-11-16 16:50:10', '2016-11-16 16:50:10');
INSERT INTO `persistences` VALUES ('331', '1', 'WlPtomsC2L3hnU7xIpW81oFQENGiNNaB', '2016-11-17 08:33:54', '2016-11-17 08:33:54');
INSERT INTO `persistences` VALUES ('332', '1', 'liZqeZ1qON6xfJK7g2oCtLjbxcjkUBCS', '2016-11-18 08:49:34', '2016-11-18 08:49:34');
INSERT INTO `persistences` VALUES ('333', '1', '0eTUyc0uXgk1fRS0dDaGQUdXVVapU8ts', '2016-11-18 14:04:38', '2016-11-18 14:04:38');
INSERT INTO `persistences` VALUES ('334', '1', 'nUEqpH5Mf6sLxlaTi9sULwKMMgVLYp2a', '2016-11-21 08:59:03', '2016-11-21 08:59:03');
INSERT INTO `persistences` VALUES ('335', '1', '88kA0cgf81T7zClaZff6EnvhJNcUtaSf', '2016-11-21 14:07:54', '2016-11-21 14:07:54');
INSERT INTO `persistences` VALUES ('336', '1', 'VepF1pmmoT2kFPHwKDIFkF6kb34GMdNs', '2016-11-22 08:24:59', '2016-11-22 08:24:59');
INSERT INTO `persistences` VALUES ('337', '1', 'nPKUHcWR3obf890hffnSkhzBH7IGFrlp', '2016-11-22 12:00:15', '2016-11-22 12:00:15');
INSERT INTO `persistences` VALUES ('338', '1', 'l4KFahczm29zpo7TakPGJM9qHJWAxOAQ', '2016-11-23 12:34:22', '2016-11-23 12:34:22');
INSERT INTO `persistences` VALUES ('339', '1', 'luOKV6kdrS9iGE56uw85la2ddiCvN67F', '2016-11-24 08:41:20', '2016-11-24 08:41:20');
INSERT INTO `persistences` VALUES ('341', '1', 'RIo4FfgIOAjDS1jjYUvtUNGBH9wjhuKY', '2016-11-28 08:35:34', '2016-11-28 08:35:34');
INSERT INTO `persistences` VALUES ('342', '1', 'OnbCVCBgNJdKh2zqX3kDgNYi4SCfSzur', '2016-11-29 08:37:22', '2016-11-29 08:37:22');
INSERT INTO `persistences` VALUES ('343', '1', 'MEYNvMqzpb5SvUki1HoGiebSnkOV6uOw', '2016-11-30 08:45:37', '2016-11-30 08:45:37');
INSERT INTO `persistences` VALUES ('344', '1', 'HmqRCpKWJ37CB8sDmMaSzn2JCE22ogQP', '2016-12-01 08:40:55', '2016-12-01 08:40:55');
INSERT INTO `persistences` VALUES ('345', '1', 'Dpbs7U9zUKm1747oicIGoLGugCMFRJXu', '2016-12-05 09:12:14', '2016-12-05 09:12:14');
INSERT INTO `persistences` VALUES ('346', '1', 'IxBT0XnquRWKn6LdI08QGNWZlGpILa1m', '2016-12-06 09:00:17', '2016-12-06 09:00:17');
INSERT INTO `persistences` VALUES ('347', '1', 'J0GWjCrIGjcxAeezuVTwr23G0tX8z9FA', '2016-12-06 12:40:21', '2016-12-06 12:40:21');
INSERT INTO `persistences` VALUES ('348', '1', '40aMIDL7SIahLW5qCDogsFDB5jrjSrAl', '2016-12-07 08:46:01', '2016-12-07 08:46:01');
INSERT INTO `persistences` VALUES ('349', '1', 'UWX5assFv0BqZHtAYvNLjj3vZBeS4F8S', '2016-12-08 09:08:25', '2016-12-08 09:08:25');
INSERT INTO `persistences` VALUES ('350', '1', 'YxETIww2Np3mmklNscNLHuro63gm80n6', '2016-12-08 14:10:45', '2016-12-08 14:10:45');
INSERT INTO `persistences` VALUES ('351', '1', 'arQP0rVbLNbuSAhBMdvb8d708jPVs7TS', '2016-12-09 09:19:26', '2016-12-09 09:19:26');
INSERT INTO `persistences` VALUES ('352', '1', 'xFAbEiz775LC7qKnr3Hnhrk6CnFicY4N', '2016-12-09 14:53:24', '2016-12-09 14:53:24');
INSERT INTO `persistences` VALUES ('353', '1', '2zXNR8a9dPx6Yh6jhqkdlXMH2uAdvWq2', '2016-12-14 09:31:01', '2016-12-14 09:31:01');
INSERT INTO `persistences` VALUES ('354', '1', 'U6yuAZYyUpFDYdIUh3ttI034vFbyOOtF', '2016-12-14 15:23:47', '2016-12-14 15:23:47');
INSERT INTO `persistences` VALUES ('355', '1', 'rn1PCB8xyinSDZzM6FveYtdRkwEYv7or', '2016-12-15 09:32:12', '2016-12-15 09:32:12');
INSERT INTO `persistences` VALUES ('356', '1', '89O8WwMadX6nZsPQVwVI5amH0KfcBG69', '2016-12-15 13:39:59', '2016-12-15 13:39:59');
INSERT INTO `persistences` VALUES ('357', '1', 'ODUR6IbIZjp6m0WlUkRBJCxWBmYy2uCP', '2016-12-28 09:09:32', '2016-12-28 09:09:32');
INSERT INTO `persistences` VALUES ('358', '1', 'PRhfdm4BXCA6VVTmJmJp2A8cck1fmQOs', '2016-12-29 14:18:03', '2016-12-29 14:18:03');
INSERT INTO `persistences` VALUES ('359', '1', 'MX2BtaL7IbVo0M9cOjHgGKtv0W3qsfvN', '2016-12-30 09:49:48', '2016-12-30 09:49:48');
INSERT INTO `persistences` VALUES ('360', '1', 'URDmiIwst9p7AH752meBRy5jnmmn12iQ', '2016-12-30 15:02:32', '2016-12-30 15:02:32');
INSERT INTO `persistences` VALUES ('368', '1', 'Xgq5p1wpwa6nMCh71oawtjYyaDBqFF0Z', '2017-01-15 04:48:10', '2017-01-15 04:48:10');
INSERT INTO `persistences` VALUES ('380', '1', 'YTOyGClrQ6j10dPZK2sEsgVdSq2z1KXp', '2017-01-16 04:37:15', '2017-01-16 04:37:15');
INSERT INTO `persistences` VALUES ('385', '1', '30rPT91aUiZggV1KuNyKH3qmhZKYUzBO', '2017-01-19 00:57:49', '2017-01-19 00:57:49');
INSERT INTO `persistences` VALUES ('386', '1', 'NMo6ESSw8QVNQcewukGFL6Wnt2tJv7FB', '2017-01-19 06:42:11', '2017-01-19 06:42:11');
INSERT INTO `persistences` VALUES ('389', '1', 'EYdjNai3eG7Yd6zYQBvUiUkI3yfj6YCk', '2017-01-20 01:31:39', '2017-01-20 01:31:39');
INSERT INTO `persistences` VALUES ('393', '1', 'XG5ZK9wWhKtftpzeVlFOyotpfn72STI4', '2017-01-22 13:53:01', '2017-01-22 13:53:01');
INSERT INTO `persistences` VALUES ('400', '1', 'vQp8uS1ljqj4UhabgjDjcP7rW0vSoXeJ', '2017-01-23 18:38:00', '2017-01-23 18:38:00');
INSERT INTO `persistences` VALUES ('401', '9', 'SWyNFqRVA8qiuWgNylGD5deH9FPDjdrk', '2017-01-23 18:45:43', '2017-01-23 18:45:43');
INSERT INTO `persistences` VALUES ('402', '1', 'dfnpIy8kp33r1SzHMChUkh2JZHe5dGRO', '2017-01-24 11:30:38', '2017-01-24 11:30:38');
INSERT INTO `persistences` VALUES ('403', '1', '33EGJXIDAduqWCSifVsPmVuMTJyLnquR', '2017-01-24 12:22:19', '2017-01-24 12:22:19');
INSERT INTO `persistences` VALUES ('406', '1', 'ZG0iCyctnYgcnkTIGV9H07fXE8s33bkd', '2017-01-25 14:35:52', '2017-01-25 14:35:52');
INSERT INTO `persistences` VALUES ('407', '9', 'bvZmNj56MW8nev4UoSExXEAjHnNtIYd7', '2017-01-25 16:08:45', '2017-01-25 16:08:45');
INSERT INTO `persistences` VALUES ('408', '1', 'ikDhS95qhS3n3tJo6foqD3TNlJ0hTMky', '2017-01-26 14:47:07', '2017-01-26 14:47:07');
INSERT INTO `persistences` VALUES ('410', '1', 'P4KSBwXBVdxIdzqUiEgofSv1K8YnWyUt', '2017-01-28 08:35:11', '2017-01-28 08:35:11');
INSERT INTO `persistences` VALUES ('415', '9', 'fHy1CJ8ZNAENNJRR2AbRxO1q3NgwDSya', '2017-01-28 11:06:57', '2017-01-28 11:06:57');
INSERT INTO `persistences` VALUES ('416', '1', 'vmnV6viMKGospBjxZN5KeJlr2JfieB80', '2017-02-07 22:00:34', '2017-02-07 22:00:34');
INSERT INTO `persistences` VALUES ('417', '1', '6FNWIuuJK9UlpO1Fic0Q0yTcYX7oRXfx', '2017-02-20 11:55:15', '2017-02-20 11:55:15');
INSERT INTO `persistences` VALUES ('418', '1', 'q9AXtBPt6ECX67wEusA6AAPWzSgSafLj', '2017-02-20 11:56:40', '2017-02-20 11:56:40');
INSERT INTO `persistences` VALUES ('420', '9', 'hS7zYXzFL2iFSdSWDW7ykwKc4khfQe2L', '2017-02-20 13:06:22', '2017-02-20 13:06:22');
INSERT INTO `persistences` VALUES ('421', '1', '9hjq43wKRKSBmxY2t3ZOejwktrvjSMEH', '2017-02-20 13:14:42', '2017-02-20 13:14:42');
INSERT INTO `persistences` VALUES ('422', '1', 'uLoVafnA4TgQrblXUJBhfA89DUWnD9Vq', '2017-02-22 13:07:53', '2017-02-22 13:07:53');
INSERT INTO `persistences` VALUES ('423', '1', '7OV8S0oBOY4rGatHhiaAzypR1DGDaZNa', '2017-02-23 13:11:41', '2017-02-23 13:11:41');
INSERT INTO `persistences` VALUES ('424', '1', 'UYUmFphBxnfpBAQyy5Uy2O60clf2v5uy', '2017-03-12 22:46:13', '2017-03-12 22:46:13');
INSERT INTO `persistences` VALUES ('425', '1', 'nVM4Mqyd6CqQyiK66KDV2RcpFlqC7iHK', '2017-03-12 23:23:52', '2017-03-12 23:23:52');
INSERT INTO `persistences` VALUES ('426', '1', 'h3pToQYIaz2jvgU4AMwUNjEc1EyTDj1Q', '2017-03-14 20:51:17', '2017-03-14 20:51:17');
INSERT INTO `persistences` VALUES ('427', '1', 'rmia1KYiKPpTgCceikY640kRsRQL24Uc', '2017-03-25 11:15:45', '2017-03-25 11:15:45');
INSERT INTO `persistences` VALUES ('428', '1', 'RkCnVMzn79IghbqS6Tol1iXpMovbLeym', '2017-03-26 09:39:41', '2017-03-26 09:39:41');
INSERT INTO `persistences` VALUES ('429', '1', '2RDU3tFlFxsv7L2cTLSgcpRGVbwjCW8G', '2017-03-27 14:19:51', '2017-03-27 14:19:51');
INSERT INTO `persistences` VALUES ('430', '1', 'A3NKM0u6WIRHFIPKWVrpRChKOWenNmNz', '2017-03-29 09:28:16', '2017-03-29 09:28:16');
INSERT INTO `persistences` VALUES ('431', '1', 'JjBwd9vjdA5lkf7Egmo2XDWkCm4wM3S6', '2017-03-29 14:05:37', '2017-03-29 14:05:37');
INSERT INTO `persistences` VALUES ('432', '1', 'TvgVvDLvHaMuIbcV5lvteo65rkYWTuzy', '2017-03-29 20:50:46', '2017-03-29 20:50:46');
INSERT INTO `persistences` VALUES ('433', '1', 'xXXlnxXtruorIKPg2zFRLQdNAbOPgulY', '2017-03-30 19:27:47', '2017-03-30 19:27:47');
INSERT INTO `persistences` VALUES ('435', '1', 'GfPMoIyrNnVSA43DaXYUoo5oJeEnaIKl', '2017-04-01 22:05:38', '2017-04-01 22:05:38');
INSERT INTO `persistences` VALUES ('436', '1', 'cln4DtiKEDuQxodFRDw4Lcra8cGQeIMz', '2017-04-02 08:47:12', '2017-04-02 08:47:12');
INSERT INTO `persistences` VALUES ('437', '1', 'gDbjgjlpQr6KOjlMh9pB4bHKi5cp1Wrc', '2017-04-03 21:10:08', '2017-04-03 21:10:08');
INSERT INTO `persistences` VALUES ('438', '1', 'FrI0pkXa4NwLpsn3Pi1PH3A0otWeGruU', '2017-04-03 22:49:27', '2017-04-03 22:49:27');
INSERT INTO `persistences` VALUES ('439', '1', 'beJtoHPg0Ht1NsKFVakpduMdidW8GpFm', '2017-04-04 21:57:48', '2017-04-04 21:57:48');
INSERT INTO `persistences` VALUES ('440', '1', '9ltPoQR91755nbeUztRi9xx8BY3cqz2J', '2017-04-05 22:09:20', '2017-04-05 22:09:20');
INSERT INTO `persistences` VALUES ('441', '1', 'UPyLjrn0wB0zzQ6zVKlxWCRPo9n73Vw1', '2017-04-05 22:59:11', '2017-04-05 22:59:11');
INSERT INTO `persistences` VALUES ('442', '1', 'YlEMN7x1ZBG3yPGYX2RVjd0iiwoPNWk4', '2017-04-09 13:45:13', '2017-04-09 13:45:13');
INSERT INTO `persistences` VALUES ('443', '9', '5pZReIfyiIz7EIjW3qfbRrmRWsMCV2xD', '2017-04-10 11:39:34', '2017-04-10 11:39:34');
INSERT INTO `persistences` VALUES ('447', '1', 'VrEBinxz1hTXXmiPVeefL138I4iSWQ52', '2017-04-11 10:13:34', '2017-04-11 10:13:34');
INSERT INTO `persistences` VALUES ('448', '1', 'kDXffNhbdLtlC2lNLnlf4HST4FI6kdal', '2017-04-12 12:07:44', '2017-04-12 12:07:44');
INSERT INTO `persistences` VALUES ('449', '1', 'lK9nPuYw3iWpNs3x5MbByORZxlWm8fim', '2017-04-12 12:21:37', '2017-04-12 12:21:37');
INSERT INTO `persistences` VALUES ('450', '9', '0aY6n6847RBlgl4dZT6e3IdzDL1sq0Xq', '2017-04-12 12:22:51', '2017-04-12 12:22:51');
INSERT INTO `persistences` VALUES ('452', '9', 'TABN9b6WT0CYjifUjMsRam5aERlRbjzZ', '2017-04-12 14:25:33', '2017-04-12 14:25:33');
INSERT INTO `persistences` VALUES ('453', '9', 'buJbqy4uYLHDQ3RdZGgliHXVjLAlAj8h', '2017-04-13 12:22:36', '2017-04-13 12:22:36');
INSERT INTO `persistences` VALUES ('455', '9', 'WZcJMFiKO3ZRhVgqVjLweteggAmdW7Tt', '2017-04-13 18:27:48', '2017-04-13 18:27:48');
INSERT INTO `persistences` VALUES ('456', '9', 'eBjaIKb8G8ugqfKIY9n5ArRJtHmu3Gsm', '2017-04-17 08:55:58', '2017-04-17 08:55:58');
INSERT INTO `persistences` VALUES ('457', '9', 'WS5SwpOuTeZAnYhQilFL0Xb0Y4b77N2h', '2017-04-17 09:03:45', '2017-04-17 09:03:45');
INSERT INTO `persistences` VALUES ('458', '9', '411nM5xC2dt3oMeSCiEl5I0lhz2Aqj8D', '2017-04-17 16:04:03', '2017-04-17 16:04:03');
INSERT INTO `persistences` VALUES ('460', '9', 'Djxgc5Jgai6TbvOk2rjzsNAPZWuTaKeH', '2017-04-18 12:25:58', '2017-04-18 12:25:58');
INSERT INTO `persistences` VALUES ('461', '9', 'qqD2PlrD3qJLRsYty7FHpDyrJQxIhiLO', '2017-04-18 22:39:04', '2017-04-18 22:39:04');
INSERT INTO `persistences` VALUES ('464', '9', 'xSxreVLlbTYg46jkRqTskBIPW89IDwpS', '2017-04-24 12:22:41', '2017-04-24 12:22:41');
INSERT INTO `persistences` VALUES ('465', '9', '14gp3LskVafODeQwTDw6h6hxgunp8mHf', '2017-04-24 13:15:52', '2017-04-24 13:15:52');
INSERT INTO `persistences` VALUES ('468', '9', 'kQ30zVbjLum6rqBwhy90Up4mcm6NcFSi', '2017-04-26 12:58:26', '2017-04-26 12:58:26');
INSERT INTO `persistences` VALUES ('469', '9', '3bqBJ0wnW7HOeeEfWLF2JoqeQ2PBzCHz', '2017-04-26 16:59:15', '2017-04-26 16:59:15');
INSERT INTO `persistences` VALUES ('472', '9', 'Z4INZw1dg8oynP4OD3tZmAY5hzOjPTEh', '2017-05-02 09:39:03', '2017-05-02 09:39:03');
INSERT INTO `persistences` VALUES ('478', '9', 'EdRqaQPyavSjqIcaq82t1vmc9f7mYcuu', '2017-05-08 21:50:40', '2017-05-08 21:50:40');
INSERT INTO `persistences` VALUES ('484', '9', 'Ri9Ea0mfx2LagbGD8BSyLt6fkgxJbfcr', '2017-05-09 15:50:23', '2017-05-09 15:50:23');
INSERT INTO `persistences` VALUES ('485', '9', '8Vj5ePjyRAICMixCletCXCDtP4HR2JBX', '2017-05-12 14:34:38', '2017-05-12 14:34:38');
INSERT INTO `persistences` VALUES ('488', '9', 'jmk6mdzwom7URjlYx9GHsb1JlZifHPSv', '2017-05-15 12:41:51', '2017-05-15 12:41:51');
INSERT INTO `persistences` VALUES ('489', '9', 'NTNI9SUXhMFjsw65hdWMpBoP07BV3y1q', '2017-05-23 12:12:10', '2017-05-23 12:12:10');
INSERT INTO `persistences` VALUES ('491', '1', 'd6f8zbo1u9lGbzYPuTFcQ4jwHm1d82KV', '2017-05-23 12:58:55', '2017-05-23 12:58:55');
INSERT INTO `persistences` VALUES ('492', '9', '90SqsYXsn0Vo2t3j0X3bqiLvjbvfJHPd', '2017-05-23 13:14:23', '2017-05-23 13:14:23');
INSERT INTO `persistences` VALUES ('493', '9', 'HbYU4JGhFiXXGwA7nharo80hoOg8xuC4', '2017-05-23 13:24:44', '2017-05-23 13:24:44');
INSERT INTO `persistences` VALUES ('494', '9', 'eB0gnJuRxuRFiBhjLfDFByoinXons3xZ', '2017-05-23 13:27:50', '2017-05-23 13:27:50');
INSERT INTO `persistences` VALUES ('495', '9', 'CuU8HSHiMhmMvb6qVDmcNsL0chZp6SWy', '2017-05-23 17:46:22', '2017-05-23 17:46:22');
INSERT INTO `persistences` VALUES ('496', '9', 'PWTkpZeVGSdtwt9IC0g0icmk1gFSlfGv', '2017-06-14 23:05:43', '2017-06-14 23:05:43');
INSERT INTO `persistences` VALUES ('497', '9', 's49fFnklRpF5OOS2jYXRoutH5VqEFewt', '2017-09-02 14:14:41', '2017-09-02 14:14:41');
INSERT INTO `persistences` VALUES ('499', '9', 'ZACd7QKPIDrMopxrvsAFCULxDo7PX2br', '2017-09-02 21:41:27', '2017-09-02 21:41:27');
INSERT INTO `persistences` VALUES ('500', '1', 'xVHdxpCRdZF2nDHP9lLeIoHpX2PXj5Yc', '2017-09-07 22:45:27', '2017-09-07 22:45:27');
INSERT INTO `persistences` VALUES ('501', '1', 'bW88sq8eaaw6u1QvEngEq5YVVQ2qhFzX', '2017-09-07 23:07:13', '2017-09-07 23:07:13');
INSERT INTO `persistences` VALUES ('502', '1', 'PlIhwjZkcOwqngtSzdRZIbtR0UGwXv6o', '2017-09-08 20:25:32', '2017-09-08 20:25:32');
INSERT INTO `persistences` VALUES ('503', '1', 'OyWtzOT01xuQEizw8ooxrqggOskOXisu', '2017-09-09 12:50:15', '2017-09-09 12:50:15');
INSERT INTO `persistences` VALUES ('504', '1', 'Z3KJTkiaygVFz1RpG5YGGHdpLCwPSzZI', '2017-09-09 21:09:51', '2017-09-09 21:09:51');
INSERT INTO `persistences` VALUES ('508', '9', 'BT1p2Bt9UqNx2JF1uBjJUQXTKiL3lejO', '2017-09-11 13:09:19', '2017-09-11 13:09:19');
INSERT INTO `persistences` VALUES ('514', '9', 'BKOgFtE1cNnrnCCR299Xh2ZRpa0L5iao', '2017-09-17 19:01:18', '2017-09-17 19:01:18');
INSERT INTO `persistences` VALUES ('515', '9', 'gdtOIPY5rI05ZHILzGZr0m4tkGAfCvcq', '2017-09-18 07:52:26', '2017-09-18 07:52:26');
INSERT INTO `persistences` VALUES ('516', '9', 'LlMhuZP8B47nJ4ORhq7uACPtaXdOv2yo', '2017-09-18 10:27:54', '2017-09-18 10:27:54');
INSERT INTO `persistences` VALUES ('517', '9', 'YMVZKtIuDyVFhS7v29nO48C5WsL8JjZF', '2017-09-18 14:38:13', '2017-09-18 14:38:13');
INSERT INTO `persistences` VALUES ('518', '9', 'BvJ12OugoJhgJs9isQL9br24C7YyTD8j', '2017-09-18 17:37:29', '2017-09-18 17:37:29');
INSERT INTO `persistences` VALUES ('519', '9', '8qcp6wNVPRBaCMpXkNQvolSpnNLDcUB7', '2017-09-19 10:16:13', '2017-09-19 10:16:13');
INSERT INTO `persistences` VALUES ('520', '9', 'TqibeIg2QSEsQDyC7LcK59VAKKMipkpn', '2017-09-25 15:42:02', '2017-09-25 15:42:02');
INSERT INTO `persistences` VALUES ('521', '9', 'a6R8PaA9vwIpGxN7MlLJuVUveYS1LpPH', '2017-09-25 19:16:18', '2017-09-25 19:16:18');
INSERT INTO `persistences` VALUES ('522', '9', 'WmzWXCLtADZ2X8xk6dEBRciyq1Ua7yiU', '2017-09-26 10:20:13', '2017-09-26 10:20:13');
INSERT INTO `persistences` VALUES ('523', '9', 'S2ojiPFjhkcqLoQ7Oi5R7lY4FGrmTJVN', '2017-09-26 10:25:28', '2017-09-26 10:25:28');
INSERT INTO `persistences` VALUES ('524', '9', 'kAl7L3eJgJYVHpbAl6WhEi8xMNnYPpnr', '2017-09-26 11:16:23', '2017-09-26 11:16:23');
INSERT INTO `persistences` VALUES ('525', '1', 'xLk8EQyXw0Sust6JfEFjOVGUuTQySRte', '2017-09-29 00:21:45', '2017-09-29 00:21:45');
INSERT INTO `persistences` VALUES ('526', '9', 'vdahqrLd0RHiCr5b8h6iKGDJFPdFAOe8', '2017-09-29 09:27:13', '2017-09-29 09:27:13');
INSERT INTO `persistences` VALUES ('527', '9', 'WS1ZNJrVSOndMKv6IynLlgtKzsSf8hKA', '2017-09-29 09:30:17', '2017-09-29 09:30:17');
INSERT INTO `persistences` VALUES ('528', '9', 'IxRsRJOY2jDlbgw5sWeiAjCvOa3kR1Ac', '2017-09-29 10:07:18', '2017-09-29 10:07:18');
INSERT INTO `persistences` VALUES ('529', '9', 'gwwpv2D4cG911t35wH4YvCcyoVQvRElK', '2017-09-29 10:09:02', '2017-09-29 10:09:02');
INSERT INTO `persistences` VALUES ('530', '9', 'G76hJghdimBSj1PHvhLiQPvcBZ22VJyo', '2017-09-29 10:27:20', '2017-09-29 10:27:20');
INSERT INTO `persistences` VALUES ('531', '9', 'pIl45I3RQuHsbg9DrTifyp7FmOFvXAbI', '2017-09-29 20:05:59', '2017-09-29 20:05:59');
INSERT INTO `persistences` VALUES ('532', '9', 'Pke5IPK4IxTUkF6XqVjnZFDPsw6wbQnB', '2017-09-29 20:08:08', '2017-09-29 20:08:08');
INSERT INTO `persistences` VALUES ('533', '9', 'pfGDyVgBbQCoyWNf2Ejn4xZwTozIkv3B', '2017-09-29 20:08:41', '2017-09-29 20:08:41');
INSERT INTO `persistences` VALUES ('534', '9', 'seMjDAG5MVSZnFzYleDHHSC9NaLUolGe', '2017-09-29 20:41:47', '2017-09-29 20:41:47');
INSERT INTO `persistences` VALUES ('535', '9', 'T33Id6bhSDDM44aYkwA9qnrqtNlJQXP4', '2017-09-29 23:54:47', '2017-09-29 23:54:47');
INSERT INTO `persistences` VALUES ('536', '9', 'LSn1x97nqG5yVzXBEWISLl1ja6m5Q08X', '2017-09-30 11:34:39', '2017-09-30 11:34:39');
INSERT INTO `persistences` VALUES ('537', '9', 'vdRsiiXnYqZbCxQWcaLCzthap7hU23dp', '2017-09-30 11:40:34', '2017-09-30 11:40:34');
INSERT INTO `persistences` VALUES ('538', '9', 'fhBlMrOEYQDO18asgB6gkwykQ8bZeRtX', '2017-10-01 13:28:05', '2017-10-01 13:28:05');
INSERT INTO `persistences` VALUES ('539', '9', 'zvuEqTNzSvCLChO6DIs4EfS52N7OWFff', '2017-10-01 13:29:07', '2017-10-01 13:29:07');
INSERT INTO `persistences` VALUES ('540', '9', 'FkpaUFI9FUh4gYyAjtfoh7bH5APYRovj', '2017-10-01 13:42:16', '2017-10-01 13:42:16');
INSERT INTO `persistences` VALUES ('541', '9', 'RzQufcstJuydJLBpgzhlqJXDsjDwFc6d', '2017-10-01 20:03:09', '2017-10-01 20:03:09');
INSERT INTO `persistences` VALUES ('542', '9', 'RfkaWBmwUmem7zCfjuAsmZLAbXkp5Ig2', '2017-10-01 23:39:40', '2017-10-01 23:39:40');
INSERT INTO `persistences` VALUES ('543', '9', 'Lwu6hoQfWQw6j8oLZqxP0ZjiaKquushe', '2017-10-02 23:52:31', '2017-10-02 23:52:31');
INSERT INTO `persistences` VALUES ('544', '9', 'QjjlkcEEKa1OdtyoQm4Pv9NzvrjWf6ex', '2017-10-04 18:28:43', '2017-10-04 18:28:43');
INSERT INTO `persistences` VALUES ('545', '9', 'uoSHV0CE9x4cyKbZ2SHst8VusHh9yI2W', '2017-10-05 00:14:15', '2017-10-05 00:14:15');
INSERT INTO `persistences` VALUES ('546', '9', 'yWRBL2TfCaOD3lTV0NZpbtIRzZmz3E2X', '2017-10-05 10:18:06', '2017-10-05 10:18:06');
INSERT INTO `persistences` VALUES ('547', '9', '1JtgEc5RNqJTEGA9PRmjYVA14l6i0HkO', '2017-10-05 10:20:34', '2017-10-05 10:20:34');
INSERT INTO `persistences` VALUES ('548', '9', 'T7VDc2KEcM6TzknmM9uUz34rjLDypGTU', '2017-10-05 17:00:44', '2017-10-05 17:00:44');
INSERT INTO `persistences` VALUES ('549', '9', 'mBN5iNDSOWFAby7SuxyrnjyhlBmREhzI', '2017-10-05 17:02:50', '2017-10-05 17:02:50');
INSERT INTO `persistences` VALUES ('550', '9', 'dk1YRLRE1JUo291Q3tirAMHuXLoYef2B', '2017-10-06 11:27:30', '2017-10-06 11:27:30');
INSERT INTO `persistences` VALUES ('551', '9', 'ry2Bxvz3m6tnd1obdzz14I87nk0v9S3q', '2017-10-06 16:26:29', '2017-10-06 16:26:29');
INSERT INTO `persistences` VALUES ('552', '9', '7oI0DCpaw0fKfqw4Yi1LCcNHn9md25Y7', '2017-10-06 21:06:25', '2017-10-06 21:06:25');
INSERT INTO `persistences` VALUES ('553', '9', 'UWLFqE78A4roavDtn4MaMU2UkEB6ZONU', '2017-10-13 09:58:45', '2017-10-13 09:58:45');
INSERT INTO `persistences` VALUES ('554', '9', 'AvgDO5mzCwq8ljBGPwU3OViHsRmk5LJJ', '2017-10-13 23:32:52', '2017-10-13 23:32:52');
INSERT INTO `persistences` VALUES ('555', '9', 'YPKsclCuQwF09CaFt44LeootzbaOt1SI', '2017-10-14 09:59:43', '2017-10-14 09:59:43');
INSERT INTO `persistences` VALUES ('556', '9', 'IZitIuzqvCI0OawtFT6lKAp06Gs7qp6C', '2017-10-15 22:22:06', '2017-10-15 22:22:06');
INSERT INTO `persistences` VALUES ('557', '9', 'XLCgtKFdE1gMAb9l9eDGeZgPh6abkk3V', '2017-10-16 17:57:45', '2017-10-16 17:57:45');
INSERT INTO `persistences` VALUES ('558', '9', 'Yi7Zx70bcJUU7vpps5VJvQBtZT4foCpr', '2017-10-17 00:55:09', '2017-10-17 00:55:09');
INSERT INTO `persistences` VALUES ('559', '9', 'HYRmxSGdoDTRPMqCP8n2yfBNUG5mXns2', '2017-10-17 01:01:39', '2017-10-17 01:01:39');
INSERT INTO `persistences` VALUES ('560', '9', 'ahqLDDxwrfdCKCFYObRnRVevKcJJNzL9', '2017-10-17 10:12:25', '2017-10-17 10:12:25');
INSERT INTO `persistences` VALUES ('561', '9', 'ck2Mn5nPgvkoYz3YARZ5Pn6rA051QDIo', '2017-10-17 22:22:50', '2017-10-17 22:22:50');
INSERT INTO `persistences` VALUES ('562', '9', 'yHN07TYMOwVTw2uatqPnJkJCw22AqyTo', '2017-10-18 12:25:04', '2017-10-18 12:25:04');
INSERT INTO `persistences` VALUES ('563', '9', 'I01jFrfGjSCS4oWyv8zKu4V97CRWFkgA', '2017-10-19 17:09:07', '2017-10-19 17:09:07');
INSERT INTO `persistences` VALUES ('564', '9', 'UvPDFfNlJNCkH2BocvFt7mBjIlECD0yM', '2017-10-23 11:27:55', '2017-10-23 11:27:55');
INSERT INTO `persistences` VALUES ('565', '9', 'VlEihMHC1c4hBsHkXQtjplZ7iAfe2F5U', '2017-10-23 14:27:47', '2017-10-23 14:27:47');
INSERT INTO `persistences` VALUES ('566', '9', 'o9yhTxKN6OWSh615hlWUbDR5qNlVzNs7', '2017-10-24 01:26:56', '2017-10-24 01:26:56');
INSERT INTO `persistences` VALUES ('567', '9', 'nOMjhVqxiujlsCCuCeS6w4jUBOi84mmX', '2017-10-24 01:50:12', '2017-10-24 01:50:12');
INSERT INTO `persistences` VALUES ('568', '9', '2fPEfJZsHVc6rqP4Y8MCLNtzRWBcQhxT', '2017-10-24 19:07:09', '2017-10-24 19:07:09');
INSERT INTO `persistences` VALUES ('569', '9', 'zvR46vim4xH94YWmNpFV6G6zgT2yuGrg', '2017-10-25 10:40:21', '2017-10-25 10:40:21');
INSERT INTO `persistences` VALUES ('570', '9', '2zTswKmr9G9dnDMGjWqS08aJLvyqWX1x', '2017-10-27 11:03:09', '2017-10-27 11:03:09');
INSERT INTO `persistences` VALUES ('571', '9', 'gbjNHN3Rbfa7BpmESzLF2YldvN72HBeM', '2017-10-27 21:08:57', '2017-10-27 21:08:57');
INSERT INTO `persistences` VALUES ('572', '9', '2UuMu7Jk3XOr0Lp1qJ8i1tcw5QGQahgO', '2017-10-30 21:57:16', '2017-10-30 21:57:16');
INSERT INTO `persistences` VALUES ('574', '9', 'K9Qr6Vgbtn8twa9ebWjJvNNkkhPWatYS', '2017-12-25 14:49:59', '2017-12-25 14:49:59');
INSERT INTO `persistences` VALUES ('576', '9', 'Bps39WAJHf6x9nEP2IBkuplsBjM6gLit', '2017-12-27 00:05:51', '2017-12-27 00:05:51');
INSERT INTO `persistences` VALUES ('577', '9', 'DUkEdTKANrqTCybnyP27nEfZsDcRCsU4', '2017-12-27 18:28:11', '2017-12-27 18:28:11');
INSERT INTO `persistences` VALUES ('579', '1', 'gwEPEK5AUypx8EW4cTqxYN6BHGvfJ9yc', '2017-12-27 19:33:21', '2017-12-27 19:33:21');
INSERT INTO `persistences` VALUES ('584', '9', 'cesY9MkupQ6U145waWYQ4HVS8DVwkvDd', '2017-12-27 20:16:57', '2017-12-27 20:16:57');
INSERT INTO `persistences` VALUES ('587', '10', 'FQAjzYxo6Q1jwUtnC4U9pkaaskqxOf3g', '2017-12-27 23:18:03', '2017-12-27 23:18:03');
INSERT INTO `persistences` VALUES ('589', '10', 'htDxNPzOHgsoYxfAg1vioBhbmlzlKBTz', '2017-12-27 23:20:30', '2017-12-27 23:20:30');
INSERT INTO `persistences` VALUES ('590', '9', '8kQrsqpSyTu4lrv3x1eC5gLvmDnMBfhK', '2017-12-28 23:27:16', '2017-12-28 23:27:16');
INSERT INTO `persistences` VALUES ('591', '9', 'f5FDNKxKnlMeQYGEb5odqUpIp1tRUFop', '2017-12-28 23:30:05', '2017-12-28 23:30:05');
INSERT INTO `persistences` VALUES ('592', '9', 'QdJRzz9eqOMX9teYtyiuKLWXOE4n4mOA', '2017-12-29 23:09:07', '2017-12-29 23:09:07');
INSERT INTO `persistences` VALUES ('594', '9', '0hJ5edWa6kmHkzFzaYJtxoC80BUGFKGy', '2017-12-30 14:57:13', '2017-12-30 14:57:13');
INSERT INTO `persistences` VALUES ('595', '9', 'wLZQm4WFgdA8Xtgx0Rt7GzyaJYif8RrC', '2017-12-30 18:20:45', '2017-12-30 18:20:45');
INSERT INTO `persistences` VALUES ('596', '9', 'idpTmk6y0wE6drnjltGHnC0DZYYsCCMC', '2017-12-30 22:42:20', '2017-12-30 22:42:20');
INSERT INTO `persistences` VALUES ('597', '9', 'mcg6PSzSCT4k02zp7pcNA2KhxI4CEM5B', '2017-12-31 07:57:47', '2017-12-31 07:57:47');
INSERT INTO `persistences` VALUES ('598', '9', 'FytzqGsNCSAxXCV4nmRTGFP4WmMv46sS', '2018-01-01 09:56:16', '2018-01-01 09:56:16');
INSERT INTO `persistences` VALUES ('599', '9', 'lWina6s3EU3UH2HLShe9Fcdg2xj63nzN', '2018-01-01 18:22:09', '2018-01-01 18:22:09');
INSERT INTO `persistences` VALUES ('600', '9', 'QUhe666JPKzaVV4Ur4PthXTALLU4BKN0', '2018-01-02 20:12:49', '2018-01-02 20:12:49');
INSERT INTO `persistences` VALUES ('601', '9', 'CdmkVmYAtYQTpZ1OkncQ4DTBAfMzKUtA', '2018-01-02 22:29:52', '2018-01-02 22:29:52');
INSERT INTO `persistences` VALUES ('602', '9', 'tH17GHidNSKwVEPkxS60FuZB9VYjBZN5', '2018-01-03 23:44:28', '2018-01-03 23:44:28');
INSERT INTO `persistences` VALUES ('603', '9', 'R41vAyFzCHyiqOXvuj111H0pYwHQ72Ze', '2018-01-04 15:06:01', '2018-01-04 15:06:01');
INSERT INTO `persistences` VALUES ('604', '9', 'rqC20hVOikfpNtFrBvtcEAWJtJQupz7M', '2018-01-04 15:08:38', '2018-01-04 15:08:38');
INSERT INTO `persistences` VALUES ('605', '9', '5JqvznBkQk3ELAM2bTMHd0FBeAHORt4V', '2018-01-04 21:48:59', '2018-01-04 21:48:59');
INSERT INTO `persistences` VALUES ('606', '9', 'xxWqOS7WFuSR7agyGsOIXOkLQdQlqUNV', '2018-01-05 19:11:00', '2018-01-05 19:11:00');
INSERT INTO `persistences` VALUES ('608', '9', 'mDVGqa9Xj9whlnASFINfJ8dMiQeS4d2D', '2018-01-06 20:15:37', '2018-01-06 20:15:37');
INSERT INTO `persistences` VALUES ('609', '1', '6bTxEgNcrge2qeymYxGeDl4i53ActgRh', '2018-01-13 18:24:30', '2018-01-13 18:24:30');
INSERT INTO `persistences` VALUES ('610', '1', 'fodEY90PIYVilzSRmUzgMavLnx8ot1Bf', '2018-01-15 19:29:51', '2018-01-15 19:29:51');
INSERT INTO `persistences` VALUES ('611', '1', 'TGyyV1URyXhCd37SaQJMHZbz0FSQqfwn', '2018-01-18 21:24:09', '2018-01-18 21:24:09');
INSERT INTO `persistences` VALUES ('612', '1', 'if2agsgCopVBHmkABT9whV5J84L9FzUw', '2018-01-25 19:29:13', '2018-01-25 19:29:13');
INSERT INTO `persistences` VALUES ('613', '1', 'MBt0gHt0sXx9MTH2yRMi3A7eO5QIxdW2', '2018-01-25 21:00:18', '2018-01-25 21:00:18');
INSERT INTO `persistences` VALUES ('614', '1', 'os3P8bBS3GDxFE5kP3ggpnjmYLStjvng', '2017-01-15 01:28:55', '2017-01-15 01:28:55');
INSERT INTO `persistences` VALUES ('615', '1', 'ppiMMLK3g1Ak0JfPJ4aUxmWhyErzttaS', '2018-01-27 10:48:09', '2018-01-27 10:48:09');
INSERT INTO `persistences` VALUES ('616', '1', 'Tr8rnTdLegAVeZnsSsRrEAYrZYlQdfdf', '2018-02-20 20:14:30', '2018-02-20 20:14:30');
INSERT INTO `persistences` VALUES ('617', '1', 'jo6vBtQvtvRwnk1iTv6wNXyjAJfOTs5S', '2018-02-25 11:51:15', '2018-02-25 11:51:15');
INSERT INTO `persistences` VALUES ('618', '1', 'WnDOCo50idwCpQXE1lRvebtzSO2XJAaI', '2018-02-28 21:28:41', '2018-02-28 21:28:41');
INSERT INTO `persistences` VALUES ('619', '1', 'K6J9Z4loo5KKXZRSv5c09yMeH11Qpyjo', '2018-03-01 11:40:40', '2018-03-01 11:40:40');
INSERT INTO `persistences` VALUES ('620', '1', 'V6fEIn9T7a038N9Bx8brRwO0sGD0dMmg', '2018-03-01 14:46:27', '2018-03-01 14:46:27');
INSERT INTO `persistences` VALUES ('621', '1', 'knEEyZDYYYJdO5wgu9DUHFhuULBmw8r3', '2018-03-03 09:48:01', '2018-03-03 09:48:01');
INSERT INTO `persistences` VALUES ('622', '1', 'WFE6YoykfG26I8n2tnGILMhqRsTpCARA', '2018-03-03 12:33:37', '2018-03-03 12:33:37');
INSERT INTO `persistences` VALUES ('623', '1', 'adbFy3Pf5ShFg8H4e7V4ahdAgC4F6e69', '2018-03-13 19:39:00', '2018-03-13 19:39:00');
INSERT INTO `persistences` VALUES ('624', '1', 'tl4XO2h7ZpqJnGF8wf7HqwsuMHONlU2A', '2018-03-13 20:47:28', '2018-03-13 20:47:28');
INSERT INTO `persistences` VALUES ('625', '1', 'jn71Dku2NJkXZM0IcAF88ky3xnWf5tHZ', '2018-03-15 19:52:14', '2018-03-15 19:52:14');
INSERT INTO `persistences` VALUES ('626', '1', 'CQJdcAA0Dt3B3Lqgd4DWqukaOgNeLn5P', '2018-03-15 20:13:03', '2018-03-15 20:13:03');
INSERT INTO `persistences` VALUES ('627', '1', 'c4XlSEfmCmA2gbYM9zurdLj2Vg67laoq', '2018-03-15 20:26:22', '2018-03-15 20:26:22');
INSERT INTO `persistences` VALUES ('628', '1', 't67f4XNitYSSlORNzyOZoAMvhHa1ofu4', '2018-03-15 20:34:50', '2018-03-15 20:34:50');
INSERT INTO `persistences` VALUES ('629', '1', '8vQXrOOkV4dF4GgjTGO3zQxSlOpo16XO', '2018-03-31 12:09:25', '2018-03-31 12:09:25');
INSERT INTO `persistences` VALUES ('630', '1', 'ReBQA7zXwfey5TM1rXoYPA6djL9Yr1yi', '2018-03-31 15:49:01', '2018-03-31 15:49:01');
INSERT INTO `persistences` VALUES ('631', '1', 'v5oUaXclOgmi4Agm1HIkVwhTBlMopS9y', '2018-03-31 22:23:47', '2018-03-31 22:23:47');
INSERT INTO `persistences` VALUES ('632', '1', 'xdz9C7ZWvUCHafNVa3eoetu91dyujEk3', '2018-04-01 08:11:24', '2018-04-01 08:11:24');
INSERT INTO `persistences` VALUES ('633', '1', 'u3upwHiHyMWxzYW1pt5vZmtPBy20trCc', '2018-04-03 19:43:46', '2018-04-03 19:43:46');
INSERT INTO `persistences` VALUES ('634', '1', 'ux616Cg3ZQwUOQPR19AlKEOPzcAoaR5d', '2018-04-03 19:47:05', '2018-04-03 19:47:05');
INSERT INTO `persistences` VALUES ('635', '1', 'X8uRZdGfuty8dJhJmmqJpoDVEe8qTSpm', '2018-04-04 20:14:55', '2018-04-04 20:14:55');
INSERT INTO `persistences` VALUES ('636', '1', 'VdsyWXkn0A9INY4uKC8m37VTQA24dkrQ', '2018-04-08 20:27:21', '2018-04-08 20:27:21');
INSERT INTO `persistences` VALUES ('637', '1', 'KwstnH2z1JiLqNA02CLkRJk7wGb3Kjya', '2018-04-09 20:27:59', '2018-04-09 20:27:59');
INSERT INTO `persistences` VALUES ('638', '1', 'L6LAtQAg7CUDNFVerYCaYj01P6pcBucf', '2018-04-17 21:16:09', '2018-04-17 21:16:09');
INSERT INTO `persistences` VALUES ('639', '1', 'tYtIfTpz1g9CazngFGqbnqN5JKoXBiQy', '2018-04-25 20:19:44', '2018-04-25 20:19:44');
INSERT INTO `persistences` VALUES ('640', '1', 'xQzzoBqnNJEsEfePYqLpEnkySBFDmO1k', '2018-04-25 20:24:22', '2018-04-25 20:24:22');
INSERT INTO `persistences` VALUES ('641', '1', 'UWPJsvsp78QapukNXbiOa7cDUr9m5Kcm', '2018-04-25 21:19:22', '2018-04-25 21:19:22');
INSERT INTO `persistences` VALUES ('642', '1', 'r3KWjYZnUBc6wYYnYpVz9CytqIj3ErI6', '2018-05-01 21:10:17', '2018-05-01 21:10:17');
INSERT INTO `persistences` VALUES ('643', '1', '4ZBatf2E8Rr6F9mIVuDj7tNDSDi8w0ye', '2018-05-02 21:18:30', '2018-05-02 21:18:30');
INSERT INTO `persistences` VALUES ('644', '1', 'iYRuq4HVbM7AiSAJXT0vRoEDN1tqemAe', '2018-05-05 00:49:30', '2018-05-05 00:49:30');
INSERT INTO `persistences` VALUES ('645', '1', 'K1BJ0oKdq1YkKgxFgCRBRUYyvG4LaiSd', '2018-05-05 13:35:19', '2018-05-05 13:35:19');
INSERT INTO `persistences` VALUES ('647', '1', '0fmvIweHpH4ahxu5ppZT7HFGWEPWGwyU', '2018-05-07 12:26:38', '2018-05-07 12:26:38');
INSERT INTO `persistences` VALUES ('648', '1', 'YQ9FVFgV747fInT39QkIdEzZhVXFF1Ci', '2018-05-07 13:27:43', '2018-05-07 13:27:43');
INSERT INTO `persistences` VALUES ('649', '1', 'nZ1nEuHVI3zsAaPwVHlhDHbBw0BEQQmr', '2018-05-10 19:44:35', '2018-05-10 19:44:35');
INSERT INTO `persistences` VALUES ('650', '1', 'axs5EGlHwpkQFwQ36Mqu1hEsb5iYVvom', '2018-05-14 21:35:39', '2018-05-14 21:35:39');
INSERT INTO `persistences` VALUES ('651', '1', 'u5SOpqjYrtykad6crjaYWWmodJpAJaBe', '2018-05-21 21:19:33', '2018-05-21 21:19:33');
INSERT INTO `persistences` VALUES ('652', '1', 'Rm1fVvgQd1NwDi3VH0gtde2oLPR34gvt', '2018-05-21 23:02:22', '2018-05-21 23:02:22');
INSERT INTO `persistences` VALUES ('653', '1', 'nrSjhMTfaIHjNt8HGlSJTVOojV2H01OG', '2018-05-23 19:44:45', '2018-05-23 19:44:45');
INSERT INTO `persistences` VALUES ('654', '1', 'laumN6eKDocm5KQtLrgbO1tdjRyQdqoU', '2018-05-23 22:18:06', '2018-05-23 22:18:06');
INSERT INTO `persistences` VALUES ('655', '1', 'Rfc0NcwxNdBYS2elByYP0BzrmukJtlQV', '2018-06-11 19:13:17', '2018-06-11 19:13:17');
INSERT INTO `persistences` VALUES ('656', '1', 'rZoe05f20xne6kq9IPVVqCvnCMeOFXv3', '2018-06-21 20:18:43', '2018-06-21 20:18:43');
INSERT INTO `persistences` VALUES ('657', '1', '8T8FePoZp824YHkM34KmzfeAOMAiKVi2', '2018-07-08 19:08:10', '2018-07-08 19:08:10');
INSERT INTO `persistences` VALUES ('658', '1', 'yOzFgaC3nx4y4MIRBUqiHxQVT9LFwfIM', '2018-07-13 20:38:04', '2018-07-13 20:38:04');
INSERT INTO `persistences` VALUES ('659', '1', 'k018qSy2J0GCkrf1GO6GK7l9GZxmTUUg', '2018-07-13 21:01:04', '2018-07-13 21:01:04');
INSERT INTO `persistences` VALUES ('660', '1', 'sKzIMUkepeSSflmMuUEwE7qDTd5tzwjy', '2018-07-14 10:21:00', '2018-07-14 10:21:00');
INSERT INTO `persistences` VALUES ('661', '1', 'oYiT8zDyOlGVuJ2LwnrkMbyfQCk7IbSB', '2018-07-14 14:50:39', '2018-07-14 14:50:39');
INSERT INTO `persistences` VALUES ('662', '1', 'bW8N9zO9dcB7XW4TThDoDbkp1M1l97ma', '2018-07-15 22:35:11', '2018-07-15 22:35:11');
INSERT INTO `persistences` VALUES ('663', '1', 'LWnDS3d2wu6YcmLRZidobABmRrbcgD64', '2018-07-22 15:24:52', '2018-07-22 15:24:52');
INSERT INTO `persistences` VALUES ('664', '1', 'svbAiLT8Gm3pUutvzzJXleA2M2Kq7mAh', '2018-07-27 17:52:40', '2018-07-27 17:52:40');
INSERT INTO `persistences` VALUES ('665', '1', 'MSFwRFepJGjhKksENTE5XV3YxVERzs9v', '2018-07-27 20:23:57', '2018-07-27 20:23:57');
INSERT INTO `persistences` VALUES ('666', '1', 'rDT9hw8RiZOQgLnIpQyHzhoH8QSJe54V', '2018-10-24 09:40:50', '2018-10-24 09:40:50');
INSERT INTO `persistences` VALUES ('667', '1', 'aU4absMlpN8Zour0gQVEdpe484PYtMYE', '2018-10-27 10:14:33', '2018-10-27 10:14:33');
INSERT INTO `persistences` VALUES ('668', '1', 'ieXWqWISjyEYTv1n7EPDmOelqhOUQ0wl', '2018-10-27 11:30:23', '2018-10-27 11:30:23');
INSERT INTO `persistences` VALUES ('669', '12', 'MLcVmTcCTm8z8EdKktIOs45f6rLjWzLQ', '2018-12-01 11:31:45', '2018-12-01 11:31:45');
INSERT INTO `persistences` VALUES ('672', '1', '0Q42pvfRzu7NX4zy8s9MD1d1jLW8whtO', '2018-12-01 12:39:39', '2018-12-01 12:39:39');
INSERT INTO `persistences` VALUES ('673', '1', 'FLQ0feCaXCyNQVf6IIzjYoGGZtJcmQmG', '2018-12-01 12:40:12', '2018-12-01 12:40:12');
INSERT INTO `persistences` VALUES ('674', '1', 'w2Et6VUgdxtCv8Jzw1ckZaafDQrHAIrk', '2018-12-01 12:40:44', '2018-12-01 12:40:44');
INSERT INTO `persistences` VALUES ('677', '1', 'HvhLoydSU3J3eDofN0fKrxOWcifTGnh4', '2018-12-01 12:45:40', '2018-12-01 12:45:40');
INSERT INTO `persistences` VALUES ('685', '13', '34EIE0SuVhtxpYrRHykq9B0eq0KVzrXJ', '2018-12-01 13:13:19', '2018-12-01 13:13:19');
INSERT INTO `persistences` VALUES ('687', '9', 'rOSa3xFQy5h3m5tHlxDjANXERI4D4wV4', '2018-12-01 13:49:19', '2018-12-01 13:49:19');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'url', 'asd', null, null, 'http://localhost/idea/admin/post/add', '1', '1', 'admin', '2018-10-27 12:24:07', '2018-10-27 14:25:30');
INSERT INTO `posts` VALUES ('2', 'image', 'asdasd', 'core/storage/uploads/images/file-20181027133114.jpg', null, '', '1', '1', 'admin', '2018-10-27 12:52:57', '2018-10-27 13:31:14');
INSERT INTO `posts` VALUES ('3', 'video', 'asdasd1', null, 'core/storage/uploads/videos/file-20181027132942.mp4', '', '3', '1', 'admin', '2018-10-27 12:54:28', '2018-10-27 13:29:42');
INSERT INTO `posts` VALUES ('4', 'content', 'sad', null, null, '', '1', '1', 'admin', '2018-10-27 13:59:47', '2018-10-27 13:59:47');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_by` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'registered', '    Registered    ', '{\"user\":true}', '9', '2015-10-26 09:46:31', '2018-12-01 14:52:58');
INSERT INTO `roles` VALUES ('2', 'administrator', '      Administrator      ', '{\"admin\":true,\"my-account\":true}', '1', '2015-12-19 00:00:47', '2015-12-19 03:27:50');
INSERT INTO `roles` VALUES ('3', 'sdc-admin', 'SDC ADMIN', '{\"admin\":true}', '1', '2017-01-23 12:34:57', '2017-09-11 13:08:11');

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('9', '2', '2017-03-12 22:52:26', '2017-03-12 22:52:26');
INSERT INTO `role_users` VALUES ('9', '3', '2017-03-12 22:52:26', '2017-03-12 22:52:26');
INSERT INTO `role_users` VALUES ('10', '1', '2017-12-27 19:40:24', '2017-12-27 19:40:24');
INSERT INTO `role_users` VALUES ('11', '1', '2018-04-03 19:52:12', '2018-04-03 19:52:12');
INSERT INTO `role_users` VALUES ('11', '3', '2018-04-03 19:52:13', '2018-04-03 19:52:13');
INSERT INTO `role_users` VALUES ('12', '1', '2018-12-01 11:31:45', '2018-12-01 11:31:45');
INSERT INTO `role_users` VALUES ('13', '1', '2018-12-01 14:13:52', '2018-12-01 14:13:52');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fb` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `gplus` text COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'http://localhost/info/admin/setting/all', 'http://localhost/info/admin/setting/all', 'http://localhost/info/admin/setting/all', 'http://localhost/info/admin/setting/all', '0000-00-00 00:00:00', '2018-07-14 12:31:28');

-- ----------------------------
-- Table structure for tagging_tagged
-- ----------------------------
DROP TABLE IF EXISTS `tagging_tagged`;
CREATE TABLE `tagging_tagged` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagging_tagged_taggable_id_index` (`taggable_id`),
  KEY `tagging_tagged_taggable_type_index` (`taggable_type`),
  KEY `tagging_tagged_tag_slug_index` (`tag_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tagging_tagged
-- ----------------------------
INSERT INTO `tagging_tagged` VALUES ('14', '4', 'PostManage\\Models\\Post', 'Find', 'find');
INSERT INTO `tagging_tagged` VALUES ('15', '1', 'PostManage\\Models\\Post', 'Find', 'find');

-- ----------------------------
-- Table structure for tagging_tags
-- ----------------------------
DROP TABLE IF EXISTS `tagging_tags`;
CREATE TABLE `tagging_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_group_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `suggest` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tagging_tags_slug_index` (`slug`),
  KEY `tagging_tags_tag_group_id_foreign` (`tag_group_id`),
  CONSTRAINT `tagging_tags_tag_group_id_foreign` FOREIGN KEY (`tag_group_id`) REFERENCES `tagging_tag_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tagging_tags
-- ----------------------------
INSERT INTO `tagging_tags` VALUES ('14', null, 'find', 'Find', '0', '2');

-- ----------------------------
-- Table structure for tagging_tag_groups
-- ----------------------------
DROP TABLE IF EXISTS `tagging_tag_groups`;
CREATE TABLE `tagging_tag_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagging_tag_groups_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tagging_tag_groups
-- ----------------------------

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------
INSERT INTO `throttle` VALUES ('1', null, 'global', null, '2015-07-11 11:35:27', '2015-07-11 11:35:27');
INSERT INTO `throttle` VALUES ('2', null, 'ip', '127.0.0.1', '2015-07-11 11:35:28', '2015-07-11 11:35:28');
INSERT INTO `throttle` VALUES ('3', null, 'global', null, '2015-07-11 11:36:28', '2015-07-11 11:36:28');
INSERT INTO `throttle` VALUES ('4', null, 'ip', '127.0.0.1', '2015-07-11 11:36:28', '2015-07-11 11:36:28');
INSERT INTO `throttle` VALUES ('5', null, 'global', null, '2015-07-13 10:14:23', '2015-07-13 10:14:23');
INSERT INTO `throttle` VALUES ('6', null, 'ip', '127.0.0.1', '2015-07-13 10:14:23', '2015-07-13 10:14:23');
INSERT INTO `throttle` VALUES ('7', '1', 'user', null, '2015-07-13 10:14:23', '2015-07-13 10:14:23');
INSERT INTO `throttle` VALUES ('8', null, 'global', null, '2015-07-26 15:54:02', '2015-07-26 15:54:02');
INSERT INTO `throttle` VALUES ('9', null, 'ip', '127.0.0.1', '2015-07-26 15:54:02', '2015-07-26 15:54:02');
INSERT INTO `throttle` VALUES ('10', '1', 'user', null, '2015-07-26 15:54:02', '2015-07-26 15:54:02');
INSERT INTO `throttle` VALUES ('11', null, 'global', null, '2015-08-13 15:18:09', '2015-08-13 15:18:09');
INSERT INTO `throttle` VALUES ('12', null, 'ip', '127.0.0.1', '2015-08-13 15:18:09', '2015-08-13 15:18:09');
INSERT INTO `throttle` VALUES ('13', '1', 'user', null, '2015-08-13 15:18:09', '2015-08-13 15:18:09');
INSERT INTO `throttle` VALUES ('14', null, 'global', null, '2015-08-13 15:20:45', '2015-08-13 15:20:45');
INSERT INTO `throttle` VALUES ('15', null, 'ip', '127.0.0.1', '2015-08-13 15:20:45', '2015-08-13 15:20:45');
INSERT INTO `throttle` VALUES ('16', '1', 'user', null, '2015-08-13 15:20:45', '2015-08-13 15:20:45');
INSERT INTO `throttle` VALUES ('17', null, 'global', null, '2015-08-18 09:01:17', '2015-08-18 09:01:17');
INSERT INTO `throttle` VALUES ('18', null, 'ip', '127.0.0.1', '2015-08-18 09:01:17', '2015-08-18 09:01:17');
INSERT INTO `throttle` VALUES ('19', '1', 'user', null, '2015-08-18 09:01:17', '2015-08-18 09:01:17');
INSERT INTO `throttle` VALUES ('20', null, 'global', null, '2015-08-20 09:27:44', '2015-08-20 09:27:44');
INSERT INTO `throttle` VALUES ('21', null, 'ip', '127.0.0.1', '2015-08-20 09:27:44', '2015-08-20 09:27:44');
INSERT INTO `throttle` VALUES ('22', '1', 'user', null, '2015-08-20 09:27:45', '2015-08-20 09:27:45');
INSERT INTO `throttle` VALUES ('23', null, 'global', null, '2015-08-20 10:22:53', '2015-08-20 10:22:53');
INSERT INTO `throttle` VALUES ('24', null, 'ip', '127.0.0.1', '2015-08-20 10:22:53', '2015-08-20 10:22:53');
INSERT INTO `throttle` VALUES ('25', '1', 'user', null, '2015-08-20 10:22:54', '2015-08-20 10:22:54');
INSERT INTO `throttle` VALUES ('26', null, 'global', null, '2015-08-20 10:23:06', '2015-08-20 10:23:06');
INSERT INTO `throttle` VALUES ('27', null, 'ip', '127.0.0.1', '2015-08-20 10:23:06', '2015-08-20 10:23:06');
INSERT INTO `throttle` VALUES ('28', '1', 'user', null, '2015-08-20 10:23:06', '2015-08-20 10:23:06');
INSERT INTO `throttle` VALUES ('29', null, 'global', null, '2015-08-20 10:23:09', '2015-08-20 10:23:09');
INSERT INTO `throttle` VALUES ('30', null, 'ip', '127.0.0.1', '2015-08-20 10:23:09', '2015-08-20 10:23:09');
INSERT INTO `throttle` VALUES ('31', '1', 'user', null, '2015-08-20 10:23:09', '2015-08-20 10:23:09');
INSERT INTO `throttle` VALUES ('32', null, 'global', null, '2015-08-20 10:25:59', '2015-08-20 10:25:59');
INSERT INTO `throttle` VALUES ('33', null, 'ip', '127.0.0.1', '2015-08-20 10:25:59', '2015-08-20 10:25:59');
INSERT INTO `throttle` VALUES ('34', '1', 'user', null, '2015-08-20 10:25:59', '2015-08-20 10:25:59');
INSERT INTO `throttle` VALUES ('35', null, 'global', null, '2015-08-20 10:26:18', '2015-08-20 10:26:18');
INSERT INTO `throttle` VALUES ('36', null, 'ip', '127.0.0.1', '2015-08-20 10:26:19', '2015-08-20 10:26:19');
INSERT INTO `throttle` VALUES ('37', '1', 'user', null, '2015-08-20 10:26:19', '2015-08-20 10:26:19');
INSERT INTO `throttle` VALUES ('38', null, 'global', null, '2015-08-20 10:27:25', '2015-08-20 10:27:25');
INSERT INTO `throttle` VALUES ('39', null, 'ip', '127.0.0.1', '2015-08-20 10:27:25', '2015-08-20 10:27:25');
INSERT INTO `throttle` VALUES ('40', '1', 'user', null, '2015-08-20 10:27:25', '2015-08-20 10:27:25');
INSERT INTO `throttle` VALUES ('41', null, 'global', null, '2015-08-24 20:36:12', '2015-08-24 20:36:12');
INSERT INTO `throttle` VALUES ('42', null, 'ip', '127.0.0.1', '2015-08-24 20:36:12', '2015-08-24 20:36:12');
INSERT INTO `throttle` VALUES ('43', null, 'global', null, '2015-08-24 20:38:25', '2015-08-24 20:38:25');
INSERT INTO `throttle` VALUES ('44', null, 'ip', '127.0.0.1', '2015-08-24 20:38:25', '2015-08-24 20:38:25');
INSERT INTO `throttle` VALUES ('45', null, 'global', null, '2015-08-24 20:39:09', '2015-08-24 20:39:09');
INSERT INTO `throttle` VALUES ('46', null, 'ip', '127.0.0.1', '2015-08-24 20:39:09', '2015-08-24 20:39:09');
INSERT INTO `throttle` VALUES ('47', null, 'global', null, '2015-08-24 20:39:44', '2015-08-24 20:39:44');
INSERT INTO `throttle` VALUES ('48', null, 'ip', '127.0.0.1', '2015-08-24 20:39:44', '2015-08-24 20:39:44');
INSERT INTO `throttle` VALUES ('49', null, 'global', null, '2015-08-24 20:39:49', '2015-08-24 20:39:49');
INSERT INTO `throttle` VALUES ('50', null, 'ip', '127.0.0.1', '2015-08-24 20:39:50', '2015-08-24 20:39:50');
INSERT INTO `throttle` VALUES ('51', null, 'global', null, '2015-08-24 20:41:29', '2015-08-24 20:41:29');
INSERT INTO `throttle` VALUES ('52', null, 'ip', '127.0.0.1', '2015-08-24 20:41:29', '2015-08-24 20:41:29');
INSERT INTO `throttle` VALUES ('53', null, 'global', null, '2015-08-25 12:56:45', '2015-08-25 12:56:45');
INSERT INTO `throttle` VALUES ('54', null, 'ip', '127.0.0.1', '2015-08-25 12:56:45', '2015-08-25 12:56:45');
INSERT INTO `throttle` VALUES ('55', null, 'global', null, '2015-08-26 13:18:20', '2015-08-26 13:18:20');
INSERT INTO `throttle` VALUES ('56', null, 'ip', '192.168.1.35', '2015-08-26 13:18:21', '2015-08-26 13:18:21');
INSERT INTO `throttle` VALUES ('57', null, 'global', null, '2015-08-26 13:18:23', '2015-08-26 13:18:23');
INSERT INTO `throttle` VALUES ('58', null, 'ip', '192.168.1.35', '2015-08-26 13:18:23', '2015-08-26 13:18:23');
INSERT INTO `throttle` VALUES ('59', null, 'global', null, '2015-08-26 13:18:27', '2015-08-26 13:18:27');
INSERT INTO `throttle` VALUES ('60', null, 'ip', '192.168.1.35', '2015-08-26 13:18:27', '2015-08-26 13:18:27');
INSERT INTO `throttle` VALUES ('61', null, 'global', null, '2015-08-26 13:18:31', '2015-08-26 13:18:31');
INSERT INTO `throttle` VALUES ('62', null, 'ip', '192.168.1.35', '2015-08-26 13:18:31', '2015-08-26 13:18:31');
INSERT INTO `throttle` VALUES ('63', null, 'global', null, '2015-08-26 13:18:36', '2015-08-26 13:18:36');
INSERT INTO `throttle` VALUES ('64', null, 'ip', '192.168.1.35', '2015-08-26 13:18:36', '2015-08-26 13:18:36');
INSERT INTO `throttle` VALUES ('65', null, 'global', null, '2015-08-26 13:18:48', '2015-08-26 13:18:48');
INSERT INTO `throttle` VALUES ('66', null, 'global', null, '2015-08-27 08:50:50', '2015-08-27 08:50:50');
INSERT INTO `throttle` VALUES ('67', null, 'ip', '127.0.0.1', '2015-08-27 08:50:50', '2015-08-27 08:50:50');
INSERT INTO `throttle` VALUES ('68', '1', 'user', null, '2015-08-27 08:50:50', '2015-08-27 08:50:50');
INSERT INTO `throttle` VALUES ('69', null, 'global', null, '2015-08-30 12:12:57', '2015-08-30 12:12:57');
INSERT INTO `throttle` VALUES ('70', null, 'ip', '127.0.0.1', '2015-08-30 12:12:57', '2015-08-30 12:12:57');
INSERT INTO `throttle` VALUES ('71', null, 'global', null, '2015-08-30 12:21:13', '2015-08-30 12:21:13');
INSERT INTO `throttle` VALUES ('72', null, 'ip', '127.0.0.1', '2015-08-30 12:21:14', '2015-08-30 12:21:14');
INSERT INTO `throttle` VALUES ('73', null, 'global', null, '2015-09-06 16:33:36', '2015-09-06 16:33:36');
INSERT INTO `throttle` VALUES ('74', null, 'ip', '127.0.0.1', '2015-09-06 16:33:36', '2015-09-06 16:33:36');
INSERT INTO `throttle` VALUES ('75', null, 'global', null, '2015-09-18 11:15:18', '2015-09-18 11:15:18');
INSERT INTO `throttle` VALUES ('76', null, 'ip', '192.168.1.15', '2015-09-18 11:15:18', '2015-09-18 11:15:18');
INSERT INTO `throttle` VALUES ('77', null, 'global', null, '2015-09-18 11:15:22', '2015-09-18 11:15:22');
INSERT INTO `throttle` VALUES ('78', null, 'ip', '192.168.1.15', '2015-09-18 11:15:22', '2015-09-18 11:15:22');
INSERT INTO `throttle` VALUES ('79', null, 'global', null, '2015-09-18 11:15:30', '2015-09-18 11:15:30');
INSERT INTO `throttle` VALUES ('80', null, 'ip', '192.168.1.15', '2015-09-18 11:15:30', '2015-09-18 11:15:30');
INSERT INTO `throttle` VALUES ('81', null, 'global', null, '2015-09-18 11:15:34', '2015-09-18 11:15:34');
INSERT INTO `throttle` VALUES ('82', null, 'ip', '192.168.1.15', '2015-09-18 11:15:34', '2015-09-18 11:15:34');
INSERT INTO `throttle` VALUES ('83', null, 'global', null, '2015-09-18 11:15:40', '2015-09-18 11:15:40');
INSERT INTO `throttle` VALUES ('84', null, 'ip', '192.168.1.15', '2015-09-18 11:15:40', '2015-09-18 11:15:40');
INSERT INTO `throttle` VALUES ('85', null, 'global', null, '2015-10-29 19:07:26', '2015-10-29 19:07:26');
INSERT INTO `throttle` VALUES ('86', null, 'ip', '127.0.0.1', '2015-10-29 19:07:26', '2015-10-29 19:07:26');
INSERT INTO `throttle` VALUES ('87', '1', 'user', null, '2015-10-29 19:07:26', '2015-10-29 19:07:26');
INSERT INTO `throttle` VALUES ('88', null, 'global', null, '2015-10-29 19:07:30', '2015-10-29 19:07:30');
INSERT INTO `throttle` VALUES ('89', null, 'ip', '127.0.0.1', '2015-10-29 19:07:30', '2015-10-29 19:07:30');
INSERT INTO `throttle` VALUES ('90', '1', 'user', null, '2015-10-29 19:07:30', '2015-10-29 19:07:30');
INSERT INTO `throttle` VALUES ('91', null, 'global', null, '2015-10-29 19:07:34', '2015-10-29 19:07:34');
INSERT INTO `throttle` VALUES ('92', null, 'ip', '127.0.0.1', '2015-10-29 19:07:34', '2015-10-29 19:07:34');
INSERT INTO `throttle` VALUES ('93', '1', 'user', null, '2015-10-29 19:07:34', '2015-10-29 19:07:34');
INSERT INTO `throttle` VALUES ('94', null, 'global', null, '2015-10-29 19:07:41', '2015-10-29 19:07:41');
INSERT INTO `throttle` VALUES ('95', null, 'ip', '127.0.0.1', '2015-10-29 19:07:41', '2015-10-29 19:07:41');
INSERT INTO `throttle` VALUES ('96', '1', 'user', null, '2015-10-29 19:07:41', '2015-10-29 19:07:41');
INSERT INTO `throttle` VALUES ('97', null, 'global', null, '2015-10-29 19:07:48', '2015-10-29 19:07:48');
INSERT INTO `throttle` VALUES ('98', null, 'ip', '127.0.0.1', '2015-10-29 19:07:48', '2015-10-29 19:07:48');
INSERT INTO `throttle` VALUES ('99', '1', 'user', null, '2015-10-29 19:07:48', '2015-10-29 19:07:48');
INSERT INTO `throttle` VALUES ('100', null, 'global', null, '2015-10-29 19:07:52', '2015-10-29 19:07:52');
INSERT INTO `throttle` VALUES ('101', null, 'ip', '127.0.0.1', '2015-10-29 19:07:52', '2015-10-29 19:07:52');
INSERT INTO `throttle` VALUES ('102', '1', 'user', null, '2015-10-29 19:07:52', '2015-10-29 19:07:52');
INSERT INTO `throttle` VALUES ('103', null, 'global', null, '2015-11-04 08:43:02', '2015-11-04 08:43:02');
INSERT INTO `throttle` VALUES ('104', null, 'ip', '127.0.0.1', '2015-11-04 08:43:02', '2015-11-04 08:43:02');
INSERT INTO `throttle` VALUES ('105', '1', 'user', null, '2015-11-04 08:43:02', '2015-11-04 08:43:02');
INSERT INTO `throttle` VALUES ('106', null, 'global', null, '2015-11-07 16:56:55', '2015-11-07 16:56:55');
INSERT INTO `throttle` VALUES ('107', null, 'ip', '127.0.0.1', '2015-11-07 16:56:55', '2015-11-07 16:56:55');
INSERT INTO `throttle` VALUES ('108', null, 'global', null, '2015-11-07 16:57:01', '2015-11-07 16:57:01');
INSERT INTO `throttle` VALUES ('109', null, 'ip', '127.0.0.1', '2015-11-07 16:57:01', '2015-11-07 16:57:01');
INSERT INTO `throttle` VALUES ('110', null, 'global', null, '2015-11-18 23:39:36', '2015-11-18 23:39:36');
INSERT INTO `throttle` VALUES ('111', null, 'ip', '127.0.0.1', '2015-11-18 23:39:36', '2015-11-18 23:39:36');
INSERT INTO `throttle` VALUES ('112', null, 'global', null, '2015-11-18 23:39:43', '2015-11-18 23:39:43');
INSERT INTO `throttle` VALUES ('113', null, 'ip', '127.0.0.1', '2015-11-18 23:39:43', '2015-11-18 23:39:43');
INSERT INTO `throttle` VALUES ('114', null, 'global', null, '2015-11-18 23:42:14', '2015-11-18 23:42:14');
INSERT INTO `throttle` VALUES ('115', null, 'ip', '127.0.0.1', '2015-11-18 23:42:14', '2015-11-18 23:42:14');
INSERT INTO `throttle` VALUES ('116', null, 'global', null, '2015-11-18 23:42:27', '2015-11-18 23:42:27');
INSERT INTO `throttle` VALUES ('117', null, 'ip', '127.0.0.1', '2015-11-18 23:42:27', '2015-11-18 23:42:27');
INSERT INTO `throttle` VALUES ('118', null, 'global', null, '2015-11-18 23:42:36', '2015-11-18 23:42:36');
INSERT INTO `throttle` VALUES ('119', null, 'ip', '127.0.0.1', '2015-11-18 23:42:36', '2015-11-18 23:42:36');
INSERT INTO `throttle` VALUES ('120', null, 'global', null, '2015-11-19 01:57:03', '2015-11-19 01:57:03');
INSERT INTO `throttle` VALUES ('121', null, 'ip', '::1', '2015-11-19 01:57:03', '2015-11-19 01:57:03');
INSERT INTO `throttle` VALUES ('122', null, 'global', null, '2015-11-19 01:57:06', '2015-11-19 01:57:06');
INSERT INTO `throttle` VALUES ('123', null, 'ip', '::1', '2015-11-19 01:57:06', '2015-11-19 01:57:06');
INSERT INTO `throttle` VALUES ('124', null, 'global', null, '2015-11-19 02:56:24', '2015-11-19 02:56:24');
INSERT INTO `throttle` VALUES ('125', null, 'ip', '::1', '2015-11-19 02:56:24', '2015-11-19 02:56:24');
INSERT INTO `throttle` VALUES ('126', '1', 'user', null, '2015-11-19 02:56:24', '2015-11-19 02:56:24');
INSERT INTO `throttle` VALUES ('127', null, 'global', null, '2015-11-19 02:56:27', '2015-11-19 02:56:27');
INSERT INTO `throttle` VALUES ('128', null, 'ip', '::1', '2015-11-19 02:56:27', '2015-11-19 02:56:27');
INSERT INTO `throttle` VALUES ('129', '1', 'user', null, '2015-11-19 02:56:27', '2015-11-19 02:56:27');
INSERT INTO `throttle` VALUES ('130', null, 'global', null, '2015-11-23 23:43:05', '2015-11-23 23:43:05');
INSERT INTO `throttle` VALUES ('131', null, 'ip', '::1', '2015-11-23 23:43:05', '2015-11-23 23:43:05');
INSERT INTO `throttle` VALUES ('132', '1', 'user', null, '2015-11-23 23:43:05', '2015-11-23 23:43:05');
INSERT INTO `throttle` VALUES ('133', null, 'global', null, '2015-11-24 06:44:15', '2015-11-24 06:44:15');
INSERT INTO `throttle` VALUES ('134', null, 'ip', '::1', '2015-11-24 06:44:15', '2015-11-24 06:44:15');
INSERT INTO `throttle` VALUES ('135', null, 'global', null, '2015-12-03 06:42:12', '2015-12-03 06:42:12');
INSERT INTO `throttle` VALUES ('136', null, 'ip', '::1', '2015-12-03 06:42:12', '2015-12-03 06:42:12');
INSERT INTO `throttle` VALUES ('137', '1', 'user', null, '2015-12-03 06:42:12', '2015-12-03 06:42:12');
INSERT INTO `throttle` VALUES ('138', null, 'global', null, '2015-12-03 08:02:03', '2015-12-03 08:02:03');
INSERT INTO `throttle` VALUES ('139', null, 'ip', '::1', '2015-12-03 08:02:03', '2015-12-03 08:02:03');
INSERT INTO `throttle` VALUES ('140', '1', 'user', null, '2015-12-03 08:02:03', '2015-12-03 08:02:03');
INSERT INTO `throttle` VALUES ('141', null, 'global', null, '2015-12-03 23:12:59', '2015-12-03 23:12:59');
INSERT INTO `throttle` VALUES ('142', null, 'ip', '127.0.0.1', '2015-12-03 23:12:59', '2015-12-03 23:12:59');
INSERT INTO `throttle` VALUES ('143', '1', 'user', null, '2015-12-03 23:12:59', '2015-12-03 23:12:59');
INSERT INTO `throttle` VALUES ('144', null, 'global', null, '2015-12-03 23:13:02', '2015-12-03 23:13:02');
INSERT INTO `throttle` VALUES ('145', null, 'ip', '127.0.0.1', '2015-12-03 23:13:02', '2015-12-03 23:13:02');
INSERT INTO `throttle` VALUES ('146', '1', 'user', null, '2015-12-03 23:13:02', '2015-12-03 23:13:02');
INSERT INTO `throttle` VALUES ('147', null, 'global', null, '2015-12-19 03:58:50', '2015-12-19 03:58:50');
INSERT INTO `throttle` VALUES ('148', null, 'ip', '127.0.0.1', '2015-12-19 03:58:50', '2015-12-19 03:58:50');
INSERT INTO `throttle` VALUES ('149', '1', 'user', null, '2015-12-19 03:58:50', '2015-12-19 03:58:50');
INSERT INTO `throttle` VALUES ('150', null, 'global', null, '2016-01-09 05:58:55', '2016-01-09 05:58:55');
INSERT INTO `throttle` VALUES ('151', null, 'ip', '192.168.1.121', '2016-01-09 05:58:55', '2016-01-09 05:58:55');
INSERT INTO `throttle` VALUES ('153', null, 'global', null, '2016-01-09 05:59:26', '2016-01-09 05:59:26');
INSERT INTO `throttle` VALUES ('154', null, 'ip', '192.168.1.121', '2016-01-09 05:59:26', '2016-01-09 05:59:26');
INSERT INTO `throttle` VALUES ('156', null, 'global', null, '2016-01-09 05:59:41', '2016-01-09 05:59:41');
INSERT INTO `throttle` VALUES ('157', null, 'ip', '192.168.1.121', '2016-01-09 05:59:41', '2016-01-09 05:59:41');
INSERT INTO `throttle` VALUES ('159', null, 'global', null, '2016-01-09 06:00:07', '2016-01-09 06:00:07');
INSERT INTO `throttle` VALUES ('160', null, 'ip', '192.168.1.121', '2016-01-09 06:00:07', '2016-01-09 06:00:07');
INSERT INTO `throttle` VALUES ('162', null, 'global', null, '2016-01-11 23:20:41', '2016-01-11 23:20:41');
INSERT INTO `throttle` VALUES ('163', null, 'ip', '192.168.1.142', '2016-01-11 23:20:41', '2016-01-11 23:20:41');
INSERT INTO `throttle` VALUES ('165', null, 'global', null, '2016-01-11 23:20:50', '2016-01-11 23:20:50');
INSERT INTO `throttle` VALUES ('166', null, 'ip', '192.168.1.142', '2016-01-11 23:20:50', '2016-01-11 23:20:50');
INSERT INTO `throttle` VALUES ('168', null, 'global', null, '2016-01-11 23:21:03', '2016-01-11 23:21:03');
INSERT INTO `throttle` VALUES ('169', null, 'ip', '192.168.1.142', '2016-01-11 23:21:03', '2016-01-11 23:21:03');
INSERT INTO `throttle` VALUES ('171', null, 'global', null, '2016-01-11 23:21:16', '2016-01-11 23:21:16');
INSERT INTO `throttle` VALUES ('172', null, 'ip', '192.168.1.142', '2016-01-11 23:21:16', '2016-01-11 23:21:16');
INSERT INTO `throttle` VALUES ('174', null, 'global', null, '2016-01-11 23:22:23', '2016-01-11 23:22:23');
INSERT INTO `throttle` VALUES ('175', null, 'ip', '192.168.1.142', '2016-01-11 23:22:23', '2016-01-11 23:22:23');
INSERT INTO `throttle` VALUES ('177', null, 'global', null, '2016-01-11 23:22:58', '2016-01-11 23:22:58');
INSERT INTO `throttle` VALUES ('178', null, 'ip', '192.168.1.142', '2016-01-11 23:22:58', '2016-01-11 23:22:58');
INSERT INTO `throttle` VALUES ('180', null, 'global', null, '2016-01-11 23:36:27', '2016-01-11 23:36:27');
INSERT INTO `throttle` VALUES ('181', null, 'ip', '192.168.1.142', '2016-01-11 23:36:27', '2016-01-11 23:36:27');
INSERT INTO `throttle` VALUES ('183', null, 'global', null, '2016-01-11 23:36:33', '2016-01-11 23:36:33');
INSERT INTO `throttle` VALUES ('184', null, 'ip', '192.168.1.142', '2016-01-11 23:36:33', '2016-01-11 23:36:33');
INSERT INTO `throttle` VALUES ('186', null, 'global', null, '2016-01-11 23:36:36', '2016-01-11 23:36:36');
INSERT INTO `throttle` VALUES ('187', null, 'ip', '192.168.1.142', '2016-01-11 23:36:36', '2016-01-11 23:36:36');
INSERT INTO `throttle` VALUES ('189', null, 'global', null, '2016-01-11 23:36:41', '2016-01-11 23:36:41');
INSERT INTO `throttle` VALUES ('190', null, 'ip', '192.168.1.142', '2016-01-11 23:36:41', '2016-01-11 23:36:41');
INSERT INTO `throttle` VALUES ('192', null, 'global', null, '2016-01-11 23:48:58', '2016-01-11 23:48:58');
INSERT INTO `throttle` VALUES ('193', null, 'ip', '192.168.1.142', '2016-01-11 23:48:58', '2016-01-11 23:48:58');
INSERT INTO `throttle` VALUES ('195', null, 'global', null, '2016-01-24 11:55:32', '2016-01-24 11:55:32');
INSERT INTO `throttle` VALUES ('196', null, 'ip', '127.0.0.1', '2016-01-24 11:55:32', '2016-01-24 11:55:32');
INSERT INTO `throttle` VALUES ('197', null, 'global', null, '2016-01-27 02:57:09', '2016-01-27 02:57:09');
INSERT INTO `throttle` VALUES ('198', null, 'ip', '127.0.0.1', '2016-01-27 02:57:09', '2016-01-27 02:57:09');
INSERT INTO `throttle` VALUES ('200', null, 'global', null, '2016-01-28 22:40:03', '2016-01-28 22:40:03');
INSERT INTO `throttle` VALUES ('201', null, 'ip', '127.0.0.1', '2016-01-28 22:40:03', '2016-01-28 22:40:03');
INSERT INTO `throttle` VALUES ('202', '1', 'user', null, '2016-01-28 22:40:03', '2016-01-28 22:40:03');
INSERT INTO `throttle` VALUES ('203', null, 'global', null, '2016-02-10 22:59:12', '2016-02-10 22:59:12');
INSERT INTO `throttle` VALUES ('204', null, 'ip', '127.0.0.1', '2016-02-10 22:59:12', '2016-02-10 22:59:12');
INSERT INTO `throttle` VALUES ('205', '1', 'user', null, '2016-02-10 22:59:12', '2016-02-10 22:59:12');
INSERT INTO `throttle` VALUES ('206', null, 'global', null, '2016-02-24 12:15:41', '2016-02-24 12:15:41');
INSERT INTO `throttle` VALUES ('207', null, 'ip', '192.168.1.59', '2016-02-24 12:15:41', '2016-02-24 12:15:41');
INSERT INTO `throttle` VALUES ('209', null, 'global', null, '2016-02-24 12:17:03', '2016-02-24 12:17:03');
INSERT INTO `throttle` VALUES ('210', null, 'ip', '192.168.1.59', '2016-02-24 12:17:03', '2016-02-24 12:17:03');
INSERT INTO `throttle` VALUES ('212', null, 'global', null, '2016-02-24 12:17:06', '2016-02-24 12:17:06');
INSERT INTO `throttle` VALUES ('213', null, 'ip', '192.168.1.59', '2016-02-24 12:17:06', '2016-02-24 12:17:06');
INSERT INTO `throttle` VALUES ('215', null, 'global', null, '2016-03-02 09:17:00', '2016-03-02 09:17:00');
INSERT INTO `throttle` VALUES ('216', null, 'ip', '127.0.0.1', '2016-03-02 09:17:00', '2016-03-02 09:17:00');
INSERT INTO `throttle` VALUES ('217', '1', 'user', null, '2016-03-02 09:17:00', '2016-03-02 09:17:00');
INSERT INTO `throttle` VALUES ('218', null, 'global', null, '2016-03-28 15:02:49', '2016-03-28 15:02:49');
INSERT INTO `throttle` VALUES ('219', null, 'ip', '127.0.0.1', '2016-03-28 15:02:49', '2016-03-28 15:02:49');
INSERT INTO `throttle` VALUES ('220', null, 'global', null, '2016-03-28 15:02:56', '2016-03-28 15:02:56');
INSERT INTO `throttle` VALUES ('221', null, 'ip', '127.0.0.1', '2016-03-28 15:02:56', '2016-03-28 15:02:56');
INSERT INTO `throttle` VALUES ('222', '1', 'user', null, '2016-03-28 15:02:56', '2016-03-28 15:02:56');
INSERT INTO `throttle` VALUES ('223', null, 'global', null, '2016-03-30 17:07:40', '2016-03-30 17:07:40');
INSERT INTO `throttle` VALUES ('224', null, 'ip', '::1', '2016-03-30 17:07:41', '2016-03-30 17:07:41');
INSERT INTO `throttle` VALUES ('225', null, 'global', null, '2016-05-02 09:31:37', '2016-05-02 09:31:37');
INSERT INTO `throttle` VALUES ('226', null, 'ip', '192.168.1.41', '2016-05-02 09:31:37', '2016-05-02 09:31:37');
INSERT INTO `throttle` VALUES ('227', null, 'global', null, '2016-05-02 09:31:40', '2016-05-02 09:31:40');
INSERT INTO `throttle` VALUES ('228', null, 'ip', '192.168.1.41', '2016-05-02 09:31:40', '2016-05-02 09:31:40');
INSERT INTO `throttle` VALUES ('229', null, 'global', null, '2016-05-02 09:31:43', '2016-05-02 09:31:43');
INSERT INTO `throttle` VALUES ('230', null, 'ip', '192.168.1.41', '2016-05-02 09:31:43', '2016-05-02 09:31:43');
INSERT INTO `throttle` VALUES ('231', null, 'global', null, '2016-05-02 09:31:49', '2016-05-02 09:31:49');
INSERT INTO `throttle` VALUES ('232', null, 'ip', '192.168.1.41', '2016-05-02 09:31:49', '2016-05-02 09:31:49');
INSERT INTO `throttle` VALUES ('233', null, 'global', null, '2016-05-02 09:56:12', '2016-05-02 09:56:12');
INSERT INTO `throttle` VALUES ('234', null, 'ip', '192.168.1.41', '2016-05-02 09:56:12', '2016-05-02 09:56:12');
INSERT INTO `throttle` VALUES ('235', null, 'global', null, '2016-05-02 09:56:40', '2016-05-02 09:56:40');
INSERT INTO `throttle` VALUES ('236', null, 'ip', '192.168.1.41', '2016-05-02 09:56:40', '2016-05-02 09:56:40');
INSERT INTO `throttle` VALUES ('237', null, 'global', null, '2016-05-02 09:56:58', '2016-05-02 09:56:58');
INSERT INTO `throttle` VALUES ('238', null, 'ip', '192.168.1.41', '2016-05-02 09:56:58', '2016-05-02 09:56:58');
INSERT INTO `throttle` VALUES ('239', null, 'global', null, '2016-05-02 09:57:01', '2016-05-02 09:57:01');
INSERT INTO `throttle` VALUES ('240', null, 'ip', '192.168.1.41', '2016-05-02 09:57:01', '2016-05-02 09:57:01');
INSERT INTO `throttle` VALUES ('241', null, 'global', null, '2016-05-02 09:57:07', '2016-05-02 09:57:07');
INSERT INTO `throttle` VALUES ('242', null, 'ip', '192.168.1.41', '2016-05-02 09:57:07', '2016-05-02 09:57:07');
INSERT INTO `throttle` VALUES ('243', null, 'global', null, '2017-01-16 03:43:01', '2017-01-16 03:43:01');
INSERT INTO `throttle` VALUES ('244', null, 'ip', '::1', '2017-01-16 03:43:01', '2017-01-16 03:43:01');
INSERT INTO `throttle` VALUES ('245', null, 'global', null, '2017-01-16 04:23:12', '2017-01-16 04:23:12');
INSERT INTO `throttle` VALUES ('246', null, 'ip', '::1', '2017-01-16 04:23:12', '2017-01-16 04:23:12');
INSERT INTO `throttle` VALUES ('248', null, 'global', null, '2017-01-16 04:23:40', '2017-01-16 04:23:40');
INSERT INTO `throttle` VALUES ('249', null, 'ip', '::1', '2017-01-16 04:23:40', '2017-01-16 04:23:40');
INSERT INTO `throttle` VALUES ('251', null, 'global', null, '2017-01-19 00:35:37', '2017-01-19 00:35:37');
INSERT INTO `throttle` VALUES ('252', null, 'ip', '::1', '2017-01-19 00:35:37', '2017-01-19 00:35:37');
INSERT INTO `throttle` VALUES ('253', null, 'global', null, '2017-01-25 11:59:52', '2017-01-25 11:59:52');
INSERT INTO `throttle` VALUES ('254', null, 'ip', '::1', '2017-01-25 11:59:52', '2017-01-25 11:59:52');
INSERT INTO `throttle` VALUES ('255', null, 'global', null, '2017-04-12 14:25:26', '2017-04-12 14:25:26');
INSERT INTO `throttle` VALUES ('256', null, 'ip', '112.135.7.121', '2017-04-12 14:25:26', '2017-04-12 14:25:26');
INSERT INTO `throttle` VALUES ('257', '9', 'user', null, '2017-04-12 14:25:26', '2017-04-12 14:25:26');
INSERT INTO `throttle` VALUES ('258', null, 'global', null, '2017-04-24 11:47:15', '2017-04-24 11:47:15');
INSERT INTO `throttle` VALUES ('259', null, 'ip', '::1', '2017-04-24 11:47:15', '2017-04-24 11:47:15');
INSERT INTO `throttle` VALUES ('260', null, 'global', null, '2017-04-30 12:23:53', '2017-04-30 12:23:53');
INSERT INTO `throttle` VALUES ('261', null, 'ip', '123.231.108.3', '2017-04-30 12:23:53', '2017-04-30 12:23:53');
INSERT INTO `throttle` VALUES ('262', '9', 'user', null, '2017-04-30 12:23:53', '2017-04-30 12:23:53');
INSERT INTO `throttle` VALUES ('263', null, 'global', null, '2017-04-30 12:23:58', '2017-04-30 12:23:58');
INSERT INTO `throttle` VALUES ('264', null, 'ip', '123.231.108.3', '2017-04-30 12:23:58', '2017-04-30 12:23:58');
INSERT INTO `throttle` VALUES ('265', '9', 'user', null, '2017-04-30 12:23:58', '2017-04-30 12:23:58');
INSERT INTO `throttle` VALUES ('266', null, 'global', null, '2017-04-30 12:24:05', '2017-04-30 12:24:05');
INSERT INTO `throttle` VALUES ('267', null, 'ip', '123.231.108.3', '2017-04-30 12:24:05', '2017-04-30 12:24:05');
INSERT INTO `throttle` VALUES ('268', '9', 'user', null, '2017-04-30 12:24:05', '2017-04-30 12:24:05');
INSERT INTO `throttle` VALUES ('269', null, 'global', null, '2017-04-30 12:24:14', '2017-04-30 12:24:14');
INSERT INTO `throttle` VALUES ('270', null, 'ip', '123.231.108.3', '2017-04-30 12:24:14', '2017-04-30 12:24:14');
INSERT INTO `throttle` VALUES ('271', '9', 'user', null, '2017-04-30 12:24:14', '2017-04-30 12:24:14');
INSERT INTO `throttle` VALUES ('272', null, 'global', null, '2017-04-30 12:24:19', '2017-04-30 12:24:19');
INSERT INTO `throttle` VALUES ('273', null, 'ip', '123.231.108.3', '2017-04-30 12:24:19', '2017-04-30 12:24:19');
INSERT INTO `throttle` VALUES ('274', '9', 'user', null, '2017-04-30 12:24:19', '2017-04-30 12:24:19');
INSERT INTO `throttle` VALUES ('275', null, 'global', null, '2017-04-30 12:24:24', '2017-04-30 12:24:24');
INSERT INTO `throttle` VALUES ('276', null, 'ip', '123.231.108.3', '2017-04-30 12:24:24', '2017-04-30 12:24:24');
INSERT INTO `throttle` VALUES ('277', '9', 'user', null, '2017-04-30 12:24:24', '2017-04-30 12:24:24');
INSERT INTO `throttle` VALUES ('278', null, 'global', null, '2017-08-30 11:57:01', '2017-08-30 11:57:01');
INSERT INTO `throttle` VALUES ('279', null, 'ip', '113.59.213.196', '2017-08-30 11:57:01', '2017-08-30 11:57:01');
INSERT INTO `throttle` VALUES ('280', null, 'global', null, '2017-09-18 17:02:04', '2017-09-18 17:02:04');
INSERT INTO `throttle` VALUES ('281', null, 'ip', '::1', '2017-09-18 17:02:04', '2017-09-18 17:02:04');
INSERT INTO `throttle` VALUES ('282', null, 'global', null, '2017-09-26 11:16:17', '2017-09-26 11:16:17');
INSERT INTO `throttle` VALUES ('283', null, 'ip', '::1', '2017-09-26 11:16:17', '2017-09-26 11:16:17');
INSERT INTO `throttle` VALUES ('284', '9', 'user', null, '2017-09-26 11:16:17', '2017-09-26 11:16:17');
INSERT INTO `throttle` VALUES ('285', null, 'global', null, '2017-10-17 22:22:42', '2017-10-17 22:22:42');
INSERT INTO `throttle` VALUES ('286', null, 'ip', '::1', '2017-10-17 22:22:42', '2017-10-17 22:22:42');
INSERT INTO `throttle` VALUES ('287', null, 'global', null, '2018-01-15 19:29:41', '2018-01-15 19:29:41');
INSERT INTO `throttle` VALUES ('288', null, 'ip', '::1', '2018-01-15 19:29:41', '2018-01-15 19:29:41');
INSERT INTO `throttle` VALUES ('289', '1', 'user', null, '2018-01-15 19:29:41', '2018-01-15 19:29:41');
INSERT INTO `throttle` VALUES ('290', null, 'global', null, '2018-01-18 21:23:38', '2018-01-18 21:23:38');
INSERT INTO `throttle` VALUES ('291', null, 'ip', '::1', '2018-01-18 21:23:39', '2018-01-18 21:23:39');
INSERT INTO `throttle` VALUES ('292', '1', 'user', null, '2018-01-18 21:23:39', '2018-01-18 21:23:39');
INSERT INTO `throttle` VALUES ('293', null, 'global', null, '2018-01-25 19:28:56', '2018-01-25 19:28:56');
INSERT INTO `throttle` VALUES ('294', null, 'ip', '::1', '2018-01-25 19:28:56', '2018-01-25 19:28:56');
INSERT INTO `throttle` VALUES ('295', '1', 'user', null, '2018-01-25 19:28:56', '2018-01-25 19:28:56');
INSERT INTO `throttle` VALUES ('296', null, 'global', null, '2018-01-27 10:48:02', '2018-01-27 10:48:02');
INSERT INTO `throttle` VALUES ('297', null, 'ip', '::1', '2018-01-27 10:48:02', '2018-01-27 10:48:02');
INSERT INTO `throttle` VALUES ('298', '1', 'user', null, '2018-01-27 10:48:02', '2018-01-27 10:48:02');
INSERT INTO `throttle` VALUES ('299', null, 'global', null, '2018-02-20 20:10:48', '2018-02-20 20:10:48');
INSERT INTO `throttle` VALUES ('300', null, 'ip', '::1', '2018-02-20 20:10:48', '2018-02-20 20:10:48');
INSERT INTO `throttle` VALUES ('301', null, 'global', null, '2018-02-20 20:10:55', '2018-02-20 20:10:55');
INSERT INTO `throttle` VALUES ('302', null, 'ip', '::1', '2018-02-20 20:10:55', '2018-02-20 20:10:55');
INSERT INTO `throttle` VALUES ('303', null, 'global', null, '2018-02-20 20:14:06', '2018-02-20 20:14:06');
INSERT INTO `throttle` VALUES ('304', null, 'ip', '::1', '2018-02-20 20:14:07', '2018-02-20 20:14:07');
INSERT INTO `throttle` VALUES ('305', null, 'global', null, '2018-03-01 14:46:22', '2018-03-01 14:46:22');
INSERT INTO `throttle` VALUES ('306', null, 'ip', '::1', '2018-03-01 14:46:22', '2018-03-01 14:46:22');
INSERT INTO `throttle` VALUES ('307', '1', 'user', null, '2018-03-01 14:46:23', '2018-03-01 14:46:23');
INSERT INTO `throttle` VALUES ('308', null, 'global', null, '2018-03-13 20:47:06', '2018-03-13 20:47:06');
INSERT INTO `throttle` VALUES ('309', null, 'ip', '::1', '2018-03-13 20:47:07', '2018-03-13 20:47:07');
INSERT INTO `throttle` VALUES ('310', null, 'global', null, '2018-03-15 20:34:26', '2018-03-15 20:34:26');
INSERT INTO `throttle` VALUES ('311', null, 'ip', '::1', '2018-03-15 20:34:29', '2018-03-15 20:34:29');
INSERT INTO `throttle` VALUES ('312', '1', 'user', null, '2018-03-15 20:34:38', '2018-03-15 20:34:38');
INSERT INTO `throttle` VALUES ('313', null, 'global', null, '2018-03-31 11:52:11', '2018-03-31 11:52:11');
INSERT INTO `throttle` VALUES ('314', null, 'ip', '::1', '2018-03-31 11:52:11', '2018-03-31 11:52:11');
INSERT INTO `throttle` VALUES ('315', null, 'global', null, '2018-03-31 11:52:27', '2018-03-31 11:52:27');
INSERT INTO `throttle` VALUES ('316', null, 'ip', '::1', '2018-03-31 11:52:28', '2018-03-31 11:52:28');
INSERT INTO `throttle` VALUES ('317', null, 'global', null, '2018-03-31 11:54:03', '2018-03-31 11:54:03');
INSERT INTO `throttle` VALUES ('318', null, 'ip', '::1', '2018-03-31 11:54:03', '2018-03-31 11:54:03');
INSERT INTO `throttle` VALUES ('319', null, 'global', null, '2018-03-31 11:54:20', '2018-03-31 11:54:20');
INSERT INTO `throttle` VALUES ('320', null, 'ip', '::1', '2018-03-31 11:54:20', '2018-03-31 11:54:20');
INSERT INTO `throttle` VALUES ('321', null, 'global', null, '2018-04-03 19:43:38', '2018-04-03 19:43:38');
INSERT INTO `throttle` VALUES ('322', null, 'ip', '::1', '2018-04-03 19:43:39', '2018-04-03 19:43:39');
INSERT INTO `throttle` VALUES ('323', '1', 'user', null, '2018-04-03 19:43:39', '2018-04-03 19:43:39');
INSERT INTO `throttle` VALUES ('324', null, 'global', null, '2018-04-04 20:14:35', '2018-04-04 20:14:35');
INSERT INTO `throttle` VALUES ('325', null, 'ip', '::1', '2018-04-04 20:14:35', '2018-04-04 20:14:35');
INSERT INTO `throttle` VALUES ('326', '1', 'user', null, '2018-04-04 20:14:36', '2018-04-04 20:14:36');
INSERT INTO `throttle` VALUES ('327', null, 'global', null, '2018-04-09 20:25:44', '2018-04-09 20:25:44');
INSERT INTO `throttle` VALUES ('328', null, 'ip', '::1', '2018-04-09 20:25:45', '2018-04-09 20:25:45');
INSERT INTO `throttle` VALUES ('329', '1', 'user', null, '2018-04-09 20:25:45', '2018-04-09 20:25:45');
INSERT INTO `throttle` VALUES ('330', null, 'global', null, '2018-04-25 20:19:24', '2018-04-25 20:19:24');
INSERT INTO `throttle` VALUES ('331', null, 'ip', '::1', '2018-04-25 20:19:24', '2018-04-25 20:19:24');
INSERT INTO `throttle` VALUES ('332', null, 'global', null, '2018-04-25 20:24:07', '2018-04-25 20:24:07');
INSERT INTO `throttle` VALUES ('333', null, 'ip', '::1', '2018-04-25 20:24:07', '2018-04-25 20:24:07');
INSERT INTO `throttle` VALUES ('334', null, 'global', null, '2018-04-25 20:24:13', '2018-04-25 20:24:13');
INSERT INTO `throttle` VALUES ('335', null, 'ip', '::1', '2018-04-25 20:24:13', '2018-04-25 20:24:13');
INSERT INTO `throttle` VALUES ('336', null, 'global', null, '2018-05-07 11:49:15', '2018-05-07 11:49:15');
INSERT INTO `throttle` VALUES ('337', null, 'ip', '::1', '2018-05-07 11:49:16', '2018-05-07 11:49:16');
INSERT INTO `throttle` VALUES ('338', '1', 'user', null, '2018-05-07 11:49:16', '2018-05-07 11:49:16');
INSERT INTO `throttle` VALUES ('339', null, 'global', null, '2018-05-07 12:26:29', '2018-05-07 12:26:29');
INSERT INTO `throttle` VALUES ('340', null, 'ip', '::1', '2018-05-07 12:26:30', '2018-05-07 12:26:30');
INSERT INTO `throttle` VALUES ('341', null, 'global', null, '2018-05-23 22:17:57', '2018-05-23 22:17:57');
INSERT INTO `throttle` VALUES ('342', null, 'ip', '::1', '2018-05-23 22:17:57', '2018-05-23 22:17:57');
INSERT INTO `throttle` VALUES ('343', null, 'global', null, '2018-06-11 19:12:41', '2018-06-11 19:12:41');
INSERT INTO `throttle` VALUES ('344', null, 'ip', '::1', '2018-06-11 19:12:42', '2018-06-11 19:12:42');
INSERT INTO `throttle` VALUES ('345', null, 'global', null, '2018-06-11 19:12:49', '2018-06-11 19:12:49');
INSERT INTO `throttle` VALUES ('346', null, 'ip', '::1', '2018-06-11 19:12:50', '2018-06-11 19:12:50');
INSERT INTO `throttle` VALUES ('347', '1', 'user', null, '2018-06-11 19:12:53', '2018-06-11 19:12:53');
INSERT INTO `throttle` VALUES ('348', null, 'global', null, '2018-06-21 20:18:26', '2018-06-21 20:18:26');
INSERT INTO `throttle` VALUES ('349', null, 'ip', '::1', '2018-06-21 20:18:26', '2018-06-21 20:18:26');
INSERT INTO `throttle` VALUES ('350', null, 'global', null, '2018-06-21 20:18:38', '2018-06-21 20:18:38');
INSERT INTO `throttle` VALUES ('351', null, 'ip', '::1', '2018-06-21 20:18:38', '2018-06-21 20:18:38');
INSERT INTO `throttle` VALUES ('352', '1', 'user', null, '2018-06-21 20:18:38', '2018-06-21 20:18:38');
INSERT INTO `throttle` VALUES ('353', null, 'global', null, '2018-07-13 20:37:50', '2018-07-13 20:37:50');
INSERT INTO `throttle` VALUES ('354', null, 'ip', '::1', '2018-07-13 20:37:50', '2018-07-13 20:37:50');
INSERT INTO `throttle` VALUES ('355', null, 'global', null, '2018-07-13 21:00:52', '2018-07-13 21:00:52');
INSERT INTO `throttle` VALUES ('356', null, 'ip', '::1', '2018-07-13 21:00:52', '2018-07-13 21:00:52');
INSERT INTO `throttle` VALUES ('357', '1', 'user', null, '2018-07-13 21:00:52', '2018-07-13 21:00:52');
INSERT INTO `throttle` VALUES ('358', null, 'global', null, '2018-07-14 10:11:27', '2018-07-14 10:11:27');
INSERT INTO `throttle` VALUES ('359', null, 'ip', '::1', '2018-07-14 10:11:27', '2018-07-14 10:11:27');
INSERT INTO `throttle` VALUES ('360', '1', 'user', null, '2018-07-14 10:11:28', '2018-07-14 10:11:28');
INSERT INTO `throttle` VALUES ('361', null, 'global', null, '2018-07-14 10:13:27', '2018-07-14 10:13:27');
INSERT INTO `throttle` VALUES ('362', null, 'ip', '::1', '2018-07-14 10:13:27', '2018-07-14 10:13:27');
INSERT INTO `throttle` VALUES ('363', null, 'global', null, '2018-07-15 22:34:44', '2018-07-15 22:34:44');
INSERT INTO `throttle` VALUES ('364', null, 'ip', '::1', '2018-07-15 22:34:44', '2018-07-15 22:34:44');
INSERT INTO `throttle` VALUES ('365', null, 'global', null, '2018-07-15 22:34:56', '2018-07-15 22:34:56');
INSERT INTO `throttle` VALUES ('366', null, 'ip', '::1', '2018-07-15 22:34:56', '2018-07-15 22:34:56');
INSERT INTO `throttle` VALUES ('367', '1', 'user', null, '2018-07-15 22:34:57', '2018-07-15 22:34:57');
INSERT INTO `throttle` VALUES ('368', null, 'global', null, '2018-07-22 15:24:14', '2018-07-22 15:24:14');
INSERT INTO `throttle` VALUES ('369', null, 'ip', '::1', '2018-07-22 15:24:14', '2018-07-22 15:24:14');
INSERT INTO `throttle` VALUES ('370', '1', 'user', null, '2018-07-22 15:24:14', '2018-07-22 15:24:14');
INSERT INTO `throttle` VALUES ('371', null, 'global', null, '2018-07-22 15:24:40', '2018-07-22 15:24:40');
INSERT INTO `throttle` VALUES ('372', null, 'ip', '::1', '2018-07-22 15:24:40', '2018-07-22 15:24:40');
INSERT INTO `throttle` VALUES ('373', null, 'global', null, '2018-07-27 17:52:27', '2018-07-27 17:52:27');
INSERT INTO `throttle` VALUES ('374', null, 'ip', '::1', '2018-07-27 17:52:28', '2018-07-27 17:52:28');
INSERT INTO `throttle` VALUES ('375', '1', 'user', null, '2018-07-27 17:52:28', '2018-07-27 17:52:28');
INSERT INTO `throttle` VALUES ('376', null, 'global', null, '2018-12-01 11:50:59', '2018-12-01 11:50:59');
INSERT INTO `throttle` VALUES ('377', null, 'ip', '::1', '2018-12-01 11:50:59', '2018-12-01 11:50:59');
INSERT INTO `throttle` VALUES ('378', null, 'global', null, '2018-12-01 11:53:09', '2018-12-01 11:53:09');
INSERT INTO `throttle` VALUES ('379', null, 'ip', '::1', '2018-12-01 11:53:11', '2018-12-01 11:53:11');
INSERT INTO `throttle` VALUES ('380', null, 'global', null, '2018-12-01 11:56:52', '2018-12-01 11:56:52');
INSERT INTO `throttle` VALUES ('381', null, 'ip', '::1', '2018-12-01 11:56:52', '2018-12-01 11:56:52');
INSERT INTO `throttle` VALUES ('382', null, 'global', null, '2018-12-01 11:57:56', '2018-12-01 11:57:56');
INSERT INTO `throttle` VALUES ('383', null, 'ip', '::1', '2018-12-01 11:57:57', '2018-12-01 11:57:57');
INSERT INTO `throttle` VALUES ('384', null, 'global', null, '2018-12-01 11:58:30', '2018-12-01 11:58:30');
INSERT INTO `throttle` VALUES ('385', null, 'ip', '::1', '2018-12-01 11:58:31', '2018-12-01 11:58:31');
INSERT INTO `throttle` VALUES ('386', null, 'global', null, '2018-12-01 11:59:24', '2018-12-01 11:59:24');
INSERT INTO `throttle` VALUES ('387', null, 'ip', '::1', '2018-12-01 11:59:25', '2018-12-01 11:59:25');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '', '', 'Super', 'Administrator', 'super.admin', 'admin@admin.lk', null, '0', '$2y$10$vJ0/.9l8qByoN/ZFJlzew.U3SUrYnsI6QoPezSfeo9qDQYLJSjC/O', '{\"admin\":true,\"index\":true}', '2018-12-01 13:19:06', null, '7', '18', '0', '1', '2015-07-11 11:39:31', '2018-12-01 14:13:00', '1');
INSERT INTO `users` VALUES ('9', '', '', 'SDC', 'Developer', 'developer', 'developer@admin.com', null, '1', '$2y$10$ijimT7X0fQADncEnlwgRZelKPlCoLE81YVjgQlX25F64Ulf5JHiaG', null, '2018-12-01 13:49:19', '1', '12', '15', '1', '1', '2017-01-23 12:35:38', '2018-12-01 13:49:20', '1');
INSERT INTO `users` VALUES ('10', '', '', null, null, 'lakshitham', 'rullzzm@gmail.comm', null, '0', '$2y$10$KYJLzG26TupSdCXfRh9XRO0VctPDiWMSfbr2ooltjOGpZqZvf5KSS', null, '2017-12-30 14:56:38', null, '19', '20', '0', null, '2017-12-27 19:40:24', '2018-12-01 14:13:00', '1');
INSERT INTO `users` VALUES ('11', '', '', 'Test', 'test', 'test', '', null, '0', '$2y$10$dvRBZsUn6zr2aueDjT3hVOQOlFB3AlO67NQ7aQaO4ge89y447Qo2q', null, null, '9', '13', '14', '2', null, '2018-04-03 19:49:44', '2018-04-03 19:52:11', '1');
INSERT INTO `users` VALUES ('12', '', '', 'chamara abeysekara', null, 'aaa@aa.com', 'aaa@aa.com', null, '0', '$2y$10$oM259IUk7mPUZ0ZyX7pdwe6l0uobATtcB.KTG.5/XBDO0R24/.5iq', null, '2018-12-01 11:31:45', null, '21', '22', '0', null, '2018-12-01 11:31:44', '2018-12-01 14:13:00', '1');
INSERT INTO `users` VALUES ('13', '', '', 'chamara abeysekara1', 'aaa1', 'aaaaa@aa.com', 'aaaaa1@aa.com', null, '0', '$2y$10$4f2.9N3SLjS5rIWa6UYnYurvvfAG6g8bQsGUEvCf4YnlMgZwyn7Tu', null, '2018-12-01 18:36:47', '1', '16', '17', '1', null, '2018-12-01 11:36:37', '2018-12-01 18:55:40', '0');

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `sbu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES ('2', '2', '1', '2016-03-23 14:33:10', '2016-03-23 14:33:10');
INSERT INTO `users_groups` VALUES ('3', '3', '2', '2016-03-23 14:56:12', '2016-03-23 14:56:12');
