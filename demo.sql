-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 09:11 AM
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
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(46, 'action_scheduler/migration_hook', 'complete', '2021-04-21 16:43:04', '2021-04-21 16:43:04', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1619023384;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1619023384;}', 1, 1, '2021-04-21 16:43:15', '2021-04-21 16:43:15', 0, NULL),
(47, 'woocommerce_update_marketplace_suggestions', 'complete', '2021-04-21 16:56:10', '2021-04-21 16:56:10', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1619024170;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1619024170;}', 0, 1, '2021-04-21 16:57:21', '2021-04-21 16:57:21', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 46, 'action created', '2021-04-21 16:42:04', '2021-04-21 16:42:04'),
(2, 46, 'action started via WP Cron', '2021-04-21 16:43:14', '2021-04-21 16:43:14'),
(3, 46, 'action complete via WP Cron', '2021-04-21 16:43:15', '2021-04-21 16:43:15'),
(4, 47, 'action created', '2021-04-21 16:56:11', '2021-04-21 16:56:11'),
(5, 47, 'action started via WP Cron', '2021-04-21 16:57:21', '2021-04-21 16:57:21'),
(6, 47, 'action complete via WP Cron', '2021-04-21 16:57:21', '2021-04-21 16:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ce4wp_abandoned_checkout`
--

CREATE TABLE `wp_ce4wp_abandoned_checkout` (
  `checkout_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checkout_contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checkout_updated_ts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checkout_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checkout_created_ts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checkout_recovered` datetime DEFAULT '0000-00-00 00:00:00',
  `checkout_recovered_ts` int(11) UNSIGNED DEFAULT 0,
  `checkout_consent` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `checkout_uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-20 03:51:13', '2021-03-20 03:51:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_jobs`
--

CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/demo', 'yes'),
(2, 'home', 'http://localhost/demo', 'yes'),
(3, 'blogname', 'demo', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sayeedaali2012@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:347:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"layout_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:68:\"index.php?taxonomy=layout_category&term=$matches[1]&feed=$matches[2]\";s:51:\"layout_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:68:\"index.php?taxonomy=layout_category&term=$matches[1]&feed=$matches[2]\";s:32:\"layout_category/([^/]+)/embed/?$\";s:62:\"index.php?taxonomy=layout_category&term=$matches[1]&embed=true\";s:44:\"layout_category/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?taxonomy=layout_category&term=$matches[1]&paged=$matches[2]\";s:26:\"layout_category/([^/]+)/?$\";s:51:\"index.php?taxonomy=layout_category&term=$matches[1]\";s:52:\"layout_pack/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?taxonomy=layout_pack&term=$matches[1]&feed=$matches[2]\";s:47:\"layout_pack/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?taxonomy=layout_pack&term=$matches[1]&feed=$matches[2]\";s:28:\"layout_pack/([^/]+)/embed/?$\";s:58:\"index.php?taxonomy=layout_pack&term=$matches[1]&embed=true\";s:40:\"layout_pack/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?taxonomy=layout_pack&term=$matches[1]&paged=$matches[2]\";s:22:\"layout_pack/([^/]+)/?$\";s:47:\"index.php?taxonomy=layout_pack&term=$matches[1]\";s:52:\"layout_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?taxonomy=layout_type&term=$matches[1]&feed=$matches[2]\";s:47:\"layout_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?taxonomy=layout_type&term=$matches[1]&feed=$matches[2]\";s:28:\"layout_type/([^/]+)/embed/?$\";s:58:\"index.php?taxonomy=layout_type&term=$matches[1]&embed=true\";s:40:\"layout_type/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?taxonomy=layout_type&term=$matches[1]&paged=$matches[2]\";s:22:\"layout_type/([^/]+)/?$\";s:47:\"index.php?taxonomy=layout_type&term=$matches[1]\";s:46:\"scope/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?taxonomy=scope&term=$matches[1]&feed=$matches[2]\";s:41:\"scope/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?taxonomy=scope&term=$matches[1]&feed=$matches[2]\";s:22:\"scope/([^/]+)/embed/?$\";s:52:\"index.php?taxonomy=scope&term=$matches[1]&embed=true\";s:34:\"scope/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?taxonomy=scope&term=$matches[1]&paged=$matches[2]\";s:16:\"scope/([^/]+)/?$\";s:41:\"index.php?taxonomy=scope&term=$matches[1]\";s:53:\"module_width/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?taxonomy=module_width&term=$matches[1]&feed=$matches[2]\";s:48:\"module_width/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?taxonomy=module_width&term=$matches[1]&feed=$matches[2]\";s:29:\"module_width/([^/]+)/embed/?$\";s:59:\"index.php?taxonomy=module_width&term=$matches[1]&embed=true\";s:41:\"module_width/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?taxonomy=module_width&term=$matches[1]&paged=$matches[2]\";s:23:\"module_width/([^/]+)/?$\";s:48:\"index.php?taxonomy=module_width&term=$matches[1]\";s:40:\"et_pb_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"et_pb_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"et_pb_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"et_pb_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"et_pb_layout/([^/]+)/embed/?$\";s:60:\"index.php?post_type=et_pb_layout&name=$matches[1]&embed=true\";s:33:\"et_pb_layout/([^/]+)/trackback/?$\";s:54:\"index.php?post_type=et_pb_layout&name=$matches[1]&tb=1\";s:41:\"et_pb_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&paged=$matches[2]\";s:48:\"et_pb_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&cpage=$matches[2]\";s:38:\"et_pb_layout/([^/]+)/wc-api(/(.*))?/?$\";s:68:\"index.php?post_type=et_pb_layout&name=$matches[1]&wc-api=$matches[3]\";s:44:\"et_pb_layout/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"et_pb_layout/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"et_pb_layout/([^/]+)(?:/([0-9]+))?/?$\";s:66:\"index.php?post_type=et_pb_layout&name=$matches[1]&page=$matches[2]\";s:29:\"et_pb_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"et_pb_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"et_pb_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"et_pb_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:33:\"project/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?project=$matches[1]&wc-api=$matches[3]\";s:39:\"project/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"project/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:52:\"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:33:\"project_category/([^/]+)/embed/?$\";s:49:\"index.php?project_category=$matches[1]&embed=true\";s:45:\"project_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_category=$matches[1]&paged=$matches[2]\";s:27:\"project_category/([^/]+)/?$\";s:38:\"index.php?project_category=$matches[1]\";s:52:\"project_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:47:\"project_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:28:\"project_tag/([^/]+)/embed/?$\";s:44:\"index.php?project_tag=$matches[1]&embed=true\";s:40:\"project_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?project_tag=$matches[1]&paged=$matches[2]\";s:22:\"project_tag/([^/]+)/?$\";s:33:\"index.php?project_tag=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"wpsisac_slider-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?wpsisac_slider-category=$matches[1]&feed=$matches[2]\";s:59:\"wpsisac_slider-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?wpsisac_slider-category=$matches[1]&feed=$matches[2]\";s:40:\"wpsisac_slider-category/([^/]+)/embed/?$\";s:56:\"index.php?wpsisac_slider-category=$matches[1]&embed=true\";s:52:\"wpsisac_slider-category/([^/]+)/page/?([0-9]{1,})/?$\";s:63:\"index.php?wpsisac_slider-category=$matches[1]&paged=$matches[2]\";s:34:\"wpsisac_slider-category/([^/]+)/?$\";s:45:\"index.php?wpsisac_slider-category=$matches[1]\";s:44:\"et_theme_builder/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_theme_builder/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_theme_builder/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_theme_builder/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_theme_builder/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_theme_builder/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_theme_builder/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_theme_builder&name=$matches[1]&embed=true\";s:37:\"et_theme_builder/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_theme_builder&name=$matches[1]&tb=1\";s:45:\"et_theme_builder/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_theme_builder&name=$matches[1]&paged=$matches[2]\";s:52:\"et_theme_builder/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_theme_builder&name=$matches[1]&cpage=$matches[2]\";s:42:\"et_theme_builder/([^/]+)/wc-api(/(.*))?/?$\";s:72:\"index.php?post_type=et_theme_builder&name=$matches[1]&wc-api=$matches[3]\";s:48:\"et_theme_builder/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"et_theme_builder/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"et_theme_builder/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_theme_builder&name=$matches[1]&page=$matches[2]\";s:33:\"et_theme_builder/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_theme_builder/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_theme_builder/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_theme_builder/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_theme_builder/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_theme_builder/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"et_template/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"et_template/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"et_template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"et_template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"et_template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"et_template/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"et_template/([^/]+)/embed/?$\";s:59:\"index.php?post_type=et_template&name=$matches[1]&embed=true\";s:32:\"et_template/([^/]+)/trackback/?$\";s:53:\"index.php?post_type=et_template&name=$matches[1]&tb=1\";s:40:\"et_template/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?post_type=et_template&name=$matches[1]&paged=$matches[2]\";s:47:\"et_template/([^/]+)/comment-page-([0-9]{1,})/?$\";s:66:\"index.php?post_type=et_template&name=$matches[1]&cpage=$matches[2]\";s:37:\"et_template/([^/]+)/wc-api(/(.*))?/?$\";s:67:\"index.php?post_type=et_template&name=$matches[1]&wc-api=$matches[3]\";s:43:\"et_template/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"et_template/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"et_template/([^/]+)(?:/([0-9]+))?/?$\";s:65:\"index.php?post_type=et_template&name=$matches[1]&page=$matches[2]\";s:28:\"et_template/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"et_template/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"et_template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"et_template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"et_template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"et_template/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"et_header_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_header_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_header_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_header_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_header_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_header_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_header_layout/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_header_layout&name=$matches[1]&embed=true\";s:37:\"et_header_layout/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_header_layout&name=$matches[1]&tb=1\";s:45:\"et_header_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_header_layout&name=$matches[1]&paged=$matches[2]\";s:52:\"et_header_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_header_layout&name=$matches[1]&cpage=$matches[2]\";s:42:\"et_header_layout/([^/]+)/wc-api(/(.*))?/?$\";s:72:\"index.php?post_type=et_header_layout&name=$matches[1]&wc-api=$matches[3]\";s:48:\"et_header_layout/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"et_header_layout/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"et_header_layout/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_header_layout&name=$matches[1]&page=$matches[2]\";s:33:\"et_header_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_header_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_header_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_header_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_header_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_header_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"et_body_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"et_body_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"et_body_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"et_body_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"et_body_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"et_body_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"et_body_layout/([^/]+)/embed/?$\";s:62:\"index.php?post_type=et_body_layout&name=$matches[1]&embed=true\";s:35:\"et_body_layout/([^/]+)/trackback/?$\";s:56:\"index.php?post_type=et_body_layout&name=$matches[1]&tb=1\";s:43:\"et_body_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?post_type=et_body_layout&name=$matches[1]&paged=$matches[2]\";s:50:\"et_body_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:69:\"index.php?post_type=et_body_layout&name=$matches[1]&cpage=$matches[2]\";s:40:\"et_body_layout/([^/]+)/wc-api(/(.*))?/?$\";s:70:\"index.php?post_type=et_body_layout&name=$matches[1]&wc-api=$matches[3]\";s:46:\"et_body_layout/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:57:\"et_body_layout/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:39:\"et_body_layout/([^/]+)(?:/([0-9]+))?/?$\";s:68:\"index.php?post_type=et_body_layout&name=$matches[1]&page=$matches[2]\";s:31:\"et_body_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"et_body_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"et_body_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"et_body_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"et_body_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"et_body_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"et_footer_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_footer_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_footer_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_footer_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_footer_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_footer_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_footer_layout/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_footer_layout&name=$matches[1]&embed=true\";s:37:\"et_footer_layout/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_footer_layout&name=$matches[1]&tb=1\";s:45:\"et_footer_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_footer_layout&name=$matches[1]&paged=$matches[2]\";s:52:\"et_footer_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_footer_layout&name=$matches[1]&cpage=$matches[2]\";s:42:\"et_footer_layout/([^/]+)/wc-api(/(.*))?/?$\";s:72:\"index.php?post_type=et_footer_layout&name=$matches[1]&wc-api=$matches[3]\";s:48:\"et_footer_layout/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"et_footer_layout/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"et_footer_layout/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_footer_layout&name=$matches[1]&page=$matches[2]\";s:33:\"et_footer_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_footer_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_footer_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_footer_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_footer_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_footer_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";i:1;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:2;s:23:\"gutenberg/gutenberg.php\";i:3;s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";i:4;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:5;s:27:\"woocommerce/woocommerce.php\";i:6;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Divi', 'yes'),
(41, 'stylesheet', 'divi-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1631764272', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(99, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:120:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"et_support_center\";b:1;s:24:\"et_support_center_system\";b:1;s:31:\"et_support_center_remote_access\";b:1;s:31:\"et_support_center_documentation\";b:1;s:27:\"et_support_center_safe_mode\";b:1;s:22:\"et_support_center_logs\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:18:{i:1619159449;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1619160123;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619160131;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619160674;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619162612;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1619174521;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619193074;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619196123;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619196131;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619206921;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619222400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619236273;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619236285;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619236286;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619322673;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1620319381;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1621409740;a:1:{s:32:\"et_core_page_resource_auto_clear\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1618817739;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'gutenberg_version_migration', '9.8.0', 'yes'),
(161, '_transient_health-check-site-status-result', '{\"good\":\"15\",\"recommended\":\"3\",\"critical\":\"2\"}', 'yes'),
(192, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1619159016;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}', 'no'),
(195, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"sayeedaali2012@gmail.com\";s:7:\"version\";s:5:\"5.7.1\";s:9:\"timestamp\";i:1618817433;}', 'no'),
(196, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1619422234', 'no'),
(197, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(198, '_site_transient_timeout_browser_43cb75c6ebdc32b138c2620e4d9863d1', '1619422242', 'no'),
(199, '_site_transient_browser_43cb75c6ebdc32b138c2620e4d9863d1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.72\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(214, 'current_theme', 'Divi-Child', 'yes'),
(215, 'theme_mods_Divi', 'a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:12;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:0:{}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1618819578;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}}}}', 'yes'),
(216, 'theme_switched', '', 'yes'),
(217, 'et_pb_cache_notice', 'a:1:{s:5:\"4.9.3\";s:6:\"ignore\";}', 'yes'),
(222, 'et_core_version', '4.9.3', 'yes'),
(224, 'et_divi', 'a:148:{s:39:\"static_css_custom_css_safety_check_done\";b:1;s:23:\"2_5_flush_rewrite_rules\";s:4:\"done\";s:30:\"et_flush_rewrite_rules_library\";s:5:\"4.9.3\";s:31:\"divi_previous_installed_version\";s:0:\"\";s:29:\"divi_latest_installed_version\";s:5:\"4.9.3\";s:27:\"divi_skip_font_subset_force\";b:1;s:27:\"et_pb_clear_templates_cache\";b:1;s:23:\"builder_custom_defaults\";O:8:\"stdClass\":0:{}s:33:\"customizer_settings_migrated_flag\";b:1;s:34:\"builder_custom_defaults_unmigrated\";b:0;s:40:\"divi_email_provider_credentials_migrated\";b:1;s:22:\"builder_global_presets\";O:8:\"stdClass\":0:{}s:29:\"custom_defaults_migrated_flag\";b:1;s:15:\"divi_1_3_images\";s:7:\"checked\";s:21:\"et_pb_layouts_updated\";b:1;s:30:\"library_removed_legacy_layouts\";b:1;s:30:\"divi_2_4_documentation_message\";s:9:\"triggered\";s:9:\"divi_logo\";s:0:\"\";s:14:\"divi_fixed_nav\";s:2:\"on\";s:26:\"divi_gallery_layout_enable\";s:5:\"false\";s:18:\"divi_color_palette\";s:63:\"#000000|#ffffff|#e02b20|#e09900|#edf000|#7cda24|#0c71c3|#8300e9\";s:15:\"divi_grab_image\";s:5:\"false\";s:15:\"divi_blog_style\";s:5:\"false\";s:12:\"divi_sidebar\";s:16:\"et_right_sidebar\";s:22:\"divi_shop_page_sidebar\";s:16:\"et_right_sidebar\";s:23:\"divi_show_facebook_icon\";s:2:\"on\";s:22:\"divi_show_twitter_icon\";s:2:\"on\";s:21:\"divi_show_google_icon\";s:2:\"on\";s:24:\"divi_show_instagram_icon\";s:2:\"on\";s:18:\"divi_show_rss_icon\";s:2:\"on\";s:17:\"divi_facebook_url\";s:1:\"#\";s:16:\"divi_twitter_url\";s:1:\"#\";s:15:\"divi_google_url\";s:1:\"#\";s:18:\"divi_instagram_url\";s:1:\"#\";s:12:\"divi_rss_url\";s:0:\"\";s:34:\"divi_woocommerce_archive_num_posts\";i:9;s:17:\"divi_catnum_posts\";i:6;s:21:\"divi_archivenum_posts\";i:5;s:20:\"divi_searchnum_posts\";i:5;s:17:\"divi_tagnum_posts\";i:5;s:16:\"divi_date_format\";s:6:\"M j, Y\";s:16:\"divi_use_excerpt\";s:5:\"false\";s:26:\"divi_responsive_shortcodes\";s:2:\"on\";s:33:\"divi_gf_enable_all_character_sets\";s:5:\"false\";s:16:\"divi_back_to_top\";s:5:\"false\";s:18:\"divi_smooth_scroll\";s:5:\"false\";s:25:\"divi_disable_translations\";s:5:\"false\";s:29:\"divi_enable_responsive_images\";s:2:\"on\";s:27:\"divi_minify_combine_scripts\";s:5:\"false\";s:26:\"divi_minify_combine_styles\";s:5:\"false\";s:15:\"divi_custom_css\";s:0:\"\";s:21:\"divi_enable_dropdowns\";s:2:\"on\";s:14:\"divi_home_link\";s:2:\"on\";s:15:\"divi_sort_pages\";s:10:\"post_title\";s:15:\"divi_order_page\";s:3:\"asc\";s:22:\"divi_tiers_shown_pages\";i:3;s:32:\"divi_enable_dropdowns_categories\";s:2:\"on\";s:21:\"divi_categories_empty\";s:2:\"on\";s:27:\"divi_tiers_shown_categories\";i:3;s:13:\"divi_sort_cat\";s:4:\"name\";s:14:\"divi_order_cat\";s:3:\"asc\";s:20:\"divi_disable_toptier\";s:5:\"false\";s:27:\"et_pb_post_type_integration\";a:3:{s:4:\"post\";s:2:\"on\";s:4:\"page\";s:2:\"on\";s:7:\"project\";s:2:\"on\";}s:21:\"et_pb_static_css_file\";s:3:\"off\";s:19:\"et_pb_css_in_footer\";s:3:\"off\";s:25:\"et_pb_product_tour_global\";s:2:\"on\";s:24:\"et_enable_classic_editor\";s:3:\"off\";s:14:\"divi_postinfo2\";a:4:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";i:3;s:8:\"comments\";}s:22:\"divi_show_postcomments\";s:2:\"on\";s:15:\"divi_thumbnails\";s:2:\"on\";s:20:\"divi_page_thumbnails\";s:5:\"false\";s:23:\"divi_show_pagescomments\";s:5:\"false\";s:14:\"divi_postinfo1\";a:3:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";}s:21:\"divi_thumbnails_index\";s:2:\"on\";s:19:\"divi_seo_home_title\";s:5:\"false\";s:25:\"divi_seo_home_description\";s:5:\"false\";s:22:\"divi_seo_home_keywords\";s:5:\"false\";s:23:\"divi_seo_home_canonical\";s:5:\"false\";s:23:\"divi_seo_home_titletext\";s:0:\"\";s:29:\"divi_seo_home_descriptiontext\";s:0:\"\";s:26:\"divi_seo_home_keywordstext\";s:0:\"\";s:18:\"divi_seo_home_type\";s:27:\"BlogName | Blog description\";s:22:\"divi_seo_home_separate\";s:3:\" | \";s:21:\"divi_seo_single_title\";s:5:\"false\";s:27:\"divi_seo_single_description\";s:5:\"false\";s:24:\"divi_seo_single_keywords\";s:5:\"false\";s:25:\"divi_seo_single_canonical\";s:5:\"false\";s:27:\"divi_seo_single_field_title\";s:9:\"seo_title\";s:33:\"divi_seo_single_field_description\";s:15:\"seo_description\";s:30:\"divi_seo_single_field_keywords\";s:12:\"seo_keywords\";s:20:\"divi_seo_single_type\";s:21:\"Post title | BlogName\";s:24:\"divi_seo_single_separate\";s:3:\" | \";s:24:\"divi_seo_index_canonical\";s:5:\"false\";s:26:\"divi_seo_index_description\";s:5:\"false\";s:19:\"divi_seo_index_type\";s:24:\"Category name | BlogName\";s:23:\"divi_seo_index_separate\";s:3:\" | \";s:28:\"divi_integrate_header_enable\";s:2:\"on\";s:26:\"divi_integrate_body_enable\";s:2:\"on\";s:31:\"divi_integrate_singletop_enable\";s:2:\"on\";s:34:\"divi_integrate_singlebottom_enable\";s:2:\"on\";s:21:\"divi_integration_head\";s:0:\"\";s:21:\"divi_integration_body\";s:0:\"\";s:27:\"divi_integration_single_top\";s:0:\"\";s:30:\"divi_integration_single_bottom\";s:0:\"\";s:15:\"divi_468_enable\";s:5:\"false\";s:14:\"divi_468_image\";s:0:\"\";s:12:\"divi_468_url\";s:0:\"\";s:16:\"divi_468_adsense\";s:0:\"\";s:19:\"product_tour_status\";a:1:{i:1;s:3:\"off\";}s:32:\"et_fb_pref_settings_bar_location\";s:6:\"bottom\";s:28:\"et_fb_pref_builder_animation\";s:4:\"true\";s:41:\"et_fb_pref_builder_display_modal_settings\";s:5:\"false\";s:39:\"et_fb_pref_builder_enable_dummy_content\";s:4:\"true\";s:21:\"et_fb_pref_event_mode\";s:5:\"hover\";s:20:\"et_fb_pref_view_mode\";s:7:\"desktop\";s:32:\"et_fb_pref_hide_disabled_modules\";s:5:\"false\";s:28:\"et_fb_pref_history_intervals\";i:1;s:29:\"et_fb_pref_page_creation_flow\";s:7:\"default\";s:42:\"et_fb_pref_quick_actions_always_start_with\";s:7:\"nothing\";s:44:\"et_fb_pref_quick_actions_show_recent_queries\";s:3:\"off\";s:39:\"et_fb_pref_quick_actions_recent_queries\";s:0:\"\";s:40:\"et_fb_pref_quick_actions_recent_category\";s:0:\"\";s:27:\"et_fb_pref_modal_preference\";s:7:\"default\";s:30:\"et_fb_pref_modal_snap_location\";s:0:\"\";s:21:\"et_fb_pref_modal_snap\";s:5:\"false\";s:27:\"et_fb_pref_modal_fullscreen\";s:5:\"false\";s:32:\"et_fb_pref_modal_dimension_width\";i:400;s:33:\"et_fb_pref_modal_dimension_height\";i:400;s:27:\"et_fb_pref_modal_position_x\";i:30;s:27:\"et_fb_pref_modal_position_y\";i:50;s:24:\"et_fb_pref_toolbar_click\";s:5:\"false\";s:26:\"et_fb_pref_toolbar_desktop\";s:4:\"true\";s:23:\"et_fb_pref_toolbar_grid\";s:5:\"false\";s:24:\"et_fb_pref_toolbar_hover\";s:5:\"false\";s:24:\"et_fb_pref_toolbar_phone\";s:4:\"true\";s:25:\"et_fb_pref_toolbar_tablet\";s:4:\"true\";s:28:\"et_fb_pref_toolbar_wireframe\";s:4:\"true\";s:23:\"et_fb_pref_toolbar_zoom\";s:4:\"true\";s:36:\"et_fb_pref_lv_modal_dimension_height\";i:0;s:35:\"et_fb_pref_lv_modal_dimension_width\";i:0;s:30:\"et_fb_pref_lv_modal_position_x\";i:0;s:30:\"et_fb_pref_lv_modal_position_y\";i:0;s:34:\"et_fb_pref_responsive_tablet_width\";i:768;s:35:\"et_fb_pref_responsive_tablet_height\";i:0;s:33:\"et_fb_pref_responsive_phone_width\";i:400;s:34:\"et_fb_pref_responsive_phone_height\";i:0;s:35:\"et_fb_pref_responsive_minimum_width\";i:320;s:35:\"et_fb_pref_responsive_maximum_width\";i:980;}', 'yes'),
(225, 'widget_aboutmewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(226, 'widget_adsensewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(227, 'widget_advwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(228, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(229, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"510\";s:6:\"height\";s:4:\"9999\";s:4:\"crop\";i:0;}', 'yes'),
(230, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"157\";s:4:\"crop\";i:1;}', 'yes'),
(231, 'et_safe_mode_plugins_allowlist', 'a:8:{i:0;s:15:\"etdev/etdev.php\";i:1;s:15:\"bloom/bloom.php\";i:2;s:19:\"monarch/monarch.php\";i:3;s:29:\"divi-builder/divi-builder.php\";i:4;s:27:\"ari-adminer/ari-adminer.php\";i:5;s:31:\"query-monitor/query-monitor.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}', 'yes'),
(232, 'et_support_center_installed', 'true', 'yes'),
(233, 'et_images_temp_folder', 'C:\\xampp\\htdocs\\Demo/wp-content/uploads/et_temp', 'yes'),
(234, 'et_schedule_clean_images_last_time', '1618817741', 'yes'),
(235, 'et_bfb_settings', 'a:2:{s:10:\"enable_bfb\";s:2:\"on\";s:10:\"toggle_bfb\";s:2:\"on\";}', 'yes'),
(236, '_transient_et_builder_show_bfb_welcome_modal', '1', 'yes'),
(237, 'et_pb_builder_options', 'a:2:{i:0;b:0;s:35:\"email_provider_credentials_migrated\";b:1;}', 'yes'),
(238, 'et_support_center_setup_done', 'processed', 'yes'),
(239, 'et_google_api_settings', 'a:3:{s:7:\"api_key\";s:0:\"\";s:26:\"enqueue_google_maps_script\";s:2:\"on\";s:16:\"use_google_fonts\";s:2:\"on\";}', 'yes'),
(240, 'et_automatic_updates_options', 'a:2:{s:8:\"username\";s:8:\"genetech\";s:7:\"api_key\";s:40:\"7221fdbce97beb01140e0a57d593000665ad3e3d\";}', 'no'),
(242, 'et_account_status', 'active', 'no'),
(246, 'et_support_site_id', 'YRf^@H-hT0AFzZ72WECy', 'yes'),
(255, 'wpos_anylc_redirect', '', 'yes'),
(260, 'wpos_anylc_site_uid', '0acd1fa33624185fe9e38c236f777081', 'yes'),
(261, 'wpos_anylc_pdt_25', 'a:1:{s:6:\"status\";i:1;}', 'yes'),
(263, 'et_pb_signup_a692197aab9431137a49140fcb9f1145', 'off', 'yes'),
(265, 'wpsisac_slider-category_children', 'a:0:{}', 'yes'),
(271, 'et_pb_signup_8cbfadfddfcc992a072a19298821977b', 'off', 'yes'),
(275, 'theme_mods_divi-child', 'a:5:{i:0;b:0;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:18;}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(286, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619159018;s:7:\"checked\";a:6:{s:4:\"Divi\";s:5:\"4.9.3\";s:10:\"divi-child\";s:5:\"1.0.0\";s:7:\"oceanwp\";s:5:\"2.0.4\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:7:\"oceanwp\";a:6:{s:5:\"theme\";s:7:\"oceanwp\";s:11:\"new_version\";s:5:\"2.0.7\";s:3:\"url\";s:37:\"https://wordpress.org/themes/oceanwp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/oceanwp.2.0.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"7.2\";}s:4:\"Divi\";a:4:{s:11:\"new_version\";s:5:\"4.9.4\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";s:7:\"package\";s:142:\"https://www.elegantthemes.com/api/api_downloads.php?api_update=1&theme=Divi&api_key=7221fdbce97beb01140e0a57d593000665ad3e3d&username=genetech\";}}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(287, '_site_transient_et_update_themes', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:6:{s:4:\"Divi\";s:5:\"4.9.3\";s:10:\"divi-child\";s:5:\"1.0.0\";s:7:\"oceanwp\";s:5:\"2.0.4\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:4:\"Divi\";a:4:{s:11:\"new_version\";s:5:\"4.9.4\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";s:7:\"package\";s:142:\"https://www.elegantthemes.com/api/api_downloads.php?api_update=1&theme=Divi&api_key=7221fdbce97beb01140e0a57d593000665ad3e3d&username=genetech\";}}s:12:\"last_checked\";i:1619159017;}', 'no'),
(309, 'action_scheduler_hybrid_store_demarkation', '45', 'yes'),
(310, 'schema-ActionScheduler_StoreSchema', '3.0.1619023308', 'yes'),
(311, 'schema-ActionScheduler_LoggerSchema', '2.0.1619023308', 'yes'),
(314, 'woocommerce_schema_version', '430', 'yes'),
(315, 'woocommerce_store_address', 'PECHS, Kashmir Road', 'yes'),
(316, 'woocommerce_store_address_2', 'PECHS, Kashmir Road', 'yes'),
(317, 'woocommerce_store_city', 'Karachi', 'yes'),
(318, 'woocommerce_default_country', 'PK:SD', 'yes'),
(319, 'woocommerce_store_postcode', '75400', 'yes'),
(320, 'woocommerce_allowed_countries', 'specific', 'yes'),
(321, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(322, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"PK\";}', 'yes'),
(323, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(324, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:\"PK\";}', 'yes'),
(325, 'woocommerce_default_customer_address', 'base', 'yes'),
(326, 'woocommerce_calc_taxes', 'no', 'yes'),
(327, 'woocommerce_enable_coupons', 'yes', 'yes'),
(328, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(329, 'woocommerce_currency', 'PKR', 'yes'),
(330, 'woocommerce_currency_pos', 'left', 'yes'),
(331, 'woocommerce_price_thousand_sep', '', 'yes'),
(332, 'woocommerce_price_decimal_sep', '', 'yes'),
(333, 'woocommerce_price_num_decimals', '0', 'yes'),
(334, 'woocommerce_shop_page_id', '46', 'yes'),
(335, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(336, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(337, 'woocommerce_placeholder_image', '45', 'yes'),
(338, 'woocommerce_weight_unit', 'kg', 'yes'),
(339, 'woocommerce_dimension_unit', 'cm', 'yes'),
(340, 'woocommerce_enable_reviews', 'yes', 'yes'),
(341, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(342, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(343, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(344, 'woocommerce_review_rating_required', 'yes', 'no'),
(345, 'woocommerce_manage_stock', 'yes', 'yes'),
(346, 'woocommerce_hold_stock_minutes', '60', 'no'),
(347, 'woocommerce_notify_low_stock', 'yes', 'no'),
(348, 'woocommerce_notify_no_stock', 'yes', 'no'),
(349, 'woocommerce_stock_email_recipient', 'sayeedaali2012@gmail.com', 'no'),
(350, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(351, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(352, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(353, 'woocommerce_stock_format', '', 'yes'),
(354, 'woocommerce_file_download_method', 'force', 'no'),
(355, 'woocommerce_downloads_require_login', 'no', 'no'),
(356, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(357, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(359, 'woocommerce_prices_include_tax', 'no', 'yes'),
(360, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(361, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(362, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(363, 'woocommerce_tax_classes', '', 'yes'),
(364, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(365, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(366, 'woocommerce_price_display_suffix', '', 'yes'),
(367, 'woocommerce_tax_total_display', 'itemized', 'no'),
(368, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(369, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(370, 'woocommerce_ship_to_destination', 'billing', 'no'),
(371, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(372, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(373, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(374, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(375, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(376, 'woocommerce_registration_generate_username', 'no', 'no'),
(377, 'woocommerce_registration_generate_password', 'no', 'no'),
(378, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(379, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(380, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(381, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(382, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(383, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(384, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(385, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(386, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(387, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(388, 'woocommerce_email_from_name', 'demo', 'no'),
(389, 'woocommerce_email_from_address', 'sayeedaali2012@gmail.com', 'no'),
(390, 'woocommerce_email_header_image', '', 'no'),
(391, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(392, 'woocommerce_email_base_color', '#96588a', 'no'),
(393, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(394, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(395, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(396, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(397, 'woocommerce_cart_page_id', '47', 'no'),
(398, 'woocommerce_checkout_page_id', '48', 'no'),
(399, 'woocommerce_myaccount_page_id', '49', 'no'),
(400, 'woocommerce_terms_page_id', '', 'no'),
(401, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(402, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(403, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(404, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(405, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(406, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(407, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(408, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(409, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(410, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(411, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(412, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(413, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(414, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(415, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(416, 'woocommerce_api_enabled', 'no', 'yes'),
(417, 'woocommerce_allow_tracking', 'yes', 'no'),
(418, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(419, 'woocommerce_single_image_width', '600', 'yes'),
(420, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(421, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(422, 'woocommerce_demo_store', 'no', 'no'),
(423, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(424, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(425, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(427, 'product_cat_children', 'a:0:{}', 'yes'),
(428, 'default_product_cat', '17', 'yes'),
(431, 'woocommerce_version', '5.2.2', 'yes'),
(432, 'woocommerce_db_version', '5.2.2', 'yes'),
(436, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(437, 'action_scheduler_lock_async-request-runner', '1619159406', 'yes'),
(438, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(441, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(446, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"vSvdo944rMagBRxr19DnKNU5G6iCR6tA\";}', 'yes'),
(447, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(448, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(449, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(450, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(451, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(452, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(453, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(454, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(455, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(456, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(457, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(458, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(459, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(462, 'woocommerce_admin_version', '2.1.5', 'yes'),
(463, 'woocommerce_admin_install_timestamp', '1619023323', 'yes'),
(467, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(468, 'wc_blocks_db_schema_version', '260', 'yes'),
(469, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'yes'),
(470, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(471, 'wc_remote_inbox_notifications_specs', 'a:16:{s:20:\"paypal_ppcp_gtm_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"paypal_ppcp_gtm_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Offer more options with the new PayPal\";s:7:\"content\";s:113:\"Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:36:\"open_wc_paypal_payments_product_page\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:61:\"https://woocommerce.com/products/woocommerce-paypal-payments/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-04-05 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-04-21 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:30:\"woocommerce-gateway-paypal-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:37:\"woocommerce-gateway-paypal-pro-hosted\";}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:35:\"woocommerce-gateway-paypal-advanced\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:40:\"woocommerce-gateway-paypal-digital-goods\";}}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"woocommerce-paypal-here-gateway\";}}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-paypal-adaptive-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:27:\"woocommerce-paypal-payments\";s:7:\"version\";s:5:\"1.2.1\";s:8:\"operator\";s:1:\"<\";}}}}}s:23:\"facebook_pixel_api_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:23:\"facebook_pixel_api_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Improve the performance of your Facebook ads\";s:7:\"content\";s:168:\"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"upgrade_now_facebook_pixel_api\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Upgrade now\";}}s:3:\"url\";s:67:\"plugin-install.php?tab=plugin-information&plugin=&section=changelog\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-02-15 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-02-29 00:00:00\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:5:\"2.1.4\";s:8:\"operator\";s:2:\"<=\";}}}s:16:\"facebook_ec_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:16:\"facebook_ec_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:59:\"Sync your product catalog with Facebook to help boost sales\";s:7:\"content\";s:170:\"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:22:\"learn_more_facebook_ec\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/facebook/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-03-01 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-03-15 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:24:\"facebook-for-woocommerce\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:31:\"wc-square-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"wc-square-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:191:\"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:97:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:38:\"wc-square-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:38:\"wc-square-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"Grow your business with Square and Apple Pay \";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:104:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wcpay-apple-pay-is-now-available\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wcpay-apple-pay-is-now-available\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Apple Pay is now available with WooCommerce Payments!\";s:7:\"content\";s:397:\"Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:13:\"add-apple-pay\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Add Apple Pay\";}}s:3:\"url\";s:69:\"/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:121:\"https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"2.3.0\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";b:0;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}s:27:\"wcpay-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:205:\"Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:96:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:34:\"wcpay-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"wcpay-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:58:\"Grow your business with WooCommerce Payments and Apple Pay\";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:103:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:171:\"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:78:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:173:\"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}}', 'yes'),
(472, '_transient_woocommerce_reports-transient-version', '1619024262', 'yes'),
(473, '_transient_timeout_orders-all-statuses', '1619629214', 'no'),
(474, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1619024262\";s:5:\"value\";a:0:{}}', 'no'),
(487, 'action_scheduler_migration_status', 'complete', 'yes'),
(488, '_transient_shipping-transient-version', '1619024017', 'yes'),
(489, '_transient_timeout_wc_shipping_method_count_legacy', '1621616465', 'no'),
(490, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1619024017\";s:5:\"value\";i:1;}', 'no'),
(506, '_transient_timeout_wc_shipping_method_count', '1621615894', 'no'),
(507, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1619023420\";s:5:\"value\";i:0;}', 'no'),
(510, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"250\";}', 'yes'),
(512, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:1:{i:0;s:11:\"flat_rate:1\";}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(515, 'woocommerce_task_list_tracked_completed_tasks', 'a:3:{i:0;s:13:\"store_details\";i:1;s:8:\"payments\";i:2;s:8:\"shipping\";}', 'yes'),
(517, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1619024241;}', 'no'),
(518, 'woocommerce_onboarding_profile', 'a:8:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:3:{i:0;a:1:{s:4:\"slug\";s:27:\"fashion-apparel-accessories\";}i:1;a:1:{s:4:\"slug\";s:10:\"food-drink\";}i:2;a:1:{s:4:\"slug\";s:21:\"home-furniture-garden\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:8:\"101-1000\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:4:{i:0;s:24:\"facebook-for-woocommerce\";i:1;s:25:\"mailchimp-for-woocommerce\";i:2;s:33:\"creative-mail-by-constant-contact\";i:3;s:27:\"kliken-marketing-for-google\";}s:5:\"theme\";s:10:\"divi-child\";s:9:\"completed\";b:1;}', 'yes'),
(536, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(538, 'mailchimp-woocommerce-store_id', '608059fee8557', 'yes'),
(539, 'mailchimp-woocommerce-store-id-last-verified', '1619024382', 'yes'),
(540, 'ce4wp_activated', '1', 'yes'),
(541, 'ce4wp_install_date', '2021-04-21 16:59:42', 'yes'),
(543, 'woocommerce_kk_wcintegration_settings', 'a:3:{s:10:\"account_id\";i:0;s:9:\"app_token\";s:0:\"\";s:12:\"google_token\";s:0:\"\";}', 'yes'),
(544, '_site_transient_timeout_kk_wc_welcome_message', '1621616383', 'no'),
(545, '_site_transient_kk_wc_welcome_message', '1', 'no'),
(546, 'ce4wp_handshake_token', '2D4616B9-257B-49BC-8B76-98AB804B62AB', 'yes'),
(547, 'ce4wp_handshake_expiration', '1619162608', 'yes'),
(548, 'ce4wp_instance_uuid', '608059ffbf351', 'yes'),
(551, '_transient_timeout_et_core_version', '1619245409', 'no'),
(552, '_transient_et_core_version', '4.9.3', 'no'),
(553, 'ce4wp_referred_by', 'a:4:{s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"5.2.2\";s:4:\"time\";i:1619024383;s:6:\"source\";s:10:\"onboarding\";}', 'yes'),
(555, 'facebook_config', 'a:4:{s:8:\"pixel_id\";s:1:\"0\";s:7:\"use_pii\";b:1;s:7:\"use_s2s\";b:0;s:12:\"access_token\";s:0:\"\";}', 'yes'),
(556, 'wc_facebook_for_woocommerce_is_active', 'yes', 'yes'),
(557, 'wc_facebook_for_woocommerce_lifecycle_events', '[{\"name\":\"install\",\"time\":1619024411,\"version\":\"2.3.5\"}]', 'no'),
(558, 'wc_facebook_for_woocommerce_version', '2.3.5', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(559, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1619159016;s:8:\"response\";a:1:{s:23:\"gutenberg/gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:6:\"plugin\";s:23:\"gutenberg/gutenberg.php\";s:11:\"new_version\";s:6:\"10.4.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/gutenberg/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/gutenberg.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042\";s:2:\"1x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710\";s:2:\"1x\";s:64:\"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:47:\"w.org/plugins/creative-mail-by-constant-contact\";s:4:\"slug\";s:33:\"creative-mail-by-constant-contact\";s:6:\"plugin\";s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";s:11:\"new_version\";s:5:\"1.3.5\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/creative-mail-by-constant-contact/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/creative-mail-by-constant-contact.1.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/creative-mail-by-constant-contact/assets/icon-256x256.gif?rev=2388108\";s:2:\"1x\";s:78:\"https://ps.w.org/creative-mail-by-constant-contact/assets/icon.svg?rev=2341439\";s:3:\"svg\";s:78:\"https://ps.w.org/creative-mail-by-constant-contact/assets/icon.svg?rev=2341439\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/creative-mail-by-constant-contact/assets/banner-1544x500.jpg?rev=2464962\";s:2:\"1x\";s:88:\"https://ps.w.org/creative-mail-by-constant-contact/assets/banner-772x250.jpg?rev=2464962\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:5:\"2.3.5\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.2.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/kliken-marketing-for-google\";s:4:\"slug\";s:27:\"kliken-marketing-for-google\";s:6:\"plugin\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/kliken-marketing-for-google/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/kliken-marketing-for-google.1.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";s:3:\"svg\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-1544x500.png?rev=2384650\";s:2:\"1x\";s:82:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-772x250.png?rev=2384650\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.5.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}}s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/wp-slick-slider-and-image-carousel\";s:4:\"slug\";s:34:\"wp-slick-slider-and-image-carousel\";s:6:\"plugin\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/wp-slick-slider-and-image-carousel/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/wp-slick-slider-and-image-carousel.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/icon-128x128.png?rev=1443298\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/banner-772x250.png?rev=1711327\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(560, '_site_transient_et_update_all_plugins', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";s:5:\"1.3.5\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:5:\"2.3.5\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:5:\"1.0.7\";s:23:\"gutenberg/gutenberg.php\";s:6:\"10.2.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.5.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.2.2\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:3:\"2.4\";}s:8:\"response\";a:0:{}s:12:\"last_checked\";i:1619159016;}', 'no'),
(561, 'ce4wp_abandoned_checkout_db_version', '1.0', 'yes'),
(562, '_transient_timeout_sv_wc_plugin_wc_versions', '1619629213', 'no'),
(563, '_transient_sv_wc_plugin_wc_versions', 'a:87:{i:0;s:5:\"5.2.2\";i:1;s:5:\"5.2.1\";i:2;s:5:\"5.2.0\";i:3;s:5:\"5.1.0\";i:4;s:5:\"5.0.0\";i:5;s:5:\"4.9.2\";i:6;s:5:\"4.9.1\";i:7;s:5:\"4.9.0\";i:8;s:5:\"4.8.0\";i:9;s:5:\"4.7.1\";i:10;s:5:\"4.7.0\";i:11;s:5:\"4.6.2\";i:12;s:5:\"4.6.1\";i:13;s:5:\"4.6.0\";i:14;s:5:\"4.5.2\";i:15;s:5:\"4.5.1\";i:16;s:5:\"4.5.0\";i:17;s:5:\"4.4.1\";i:18;s:5:\"4.4.0\";i:19;s:5:\"4.3.3\";i:20;s:5:\"4.3.2\";i:21;s:5:\"4.3.1\";i:22;s:5:\"4.3.0\";i:23;s:5:\"4.2.2\";i:24;s:5:\"4.2.1\";i:25;s:5:\"4.2.0\";i:26;s:5:\"4.1.1\";i:27;s:5:\"4.1.0\";i:28;s:5:\"4.0.1\";i:29;s:5:\"4.0.0\";i:30;s:5:\"3.9.3\";i:31;s:5:\"3.9.2\";i:32;s:5:\"3.9.1\";i:33;s:5:\"3.9.0\";i:34;s:5:\"3.8.1\";i:35;s:5:\"3.8.0\";i:36;s:5:\"3.7.1\";i:37;s:5:\"3.7.0\";i:38;s:5:\"3.6.5\";i:39;s:5:\"3.6.4\";i:40;s:5:\"3.6.3\";i:41;s:5:\"3.6.2\";i:42;s:5:\"3.6.1\";i:43;s:5:\"3.6.0\";i:44;s:5:\"3.5.8\";i:45;s:5:\"3.5.7\";i:46;s:5:\"3.5.6\";i:47;s:5:\"3.5.5\";i:48;s:5:\"3.5.4\";i:49;s:5:\"3.5.3\";i:50;s:5:\"3.5.2\";i:51;s:5:\"3.5.1\";i:52;s:5:\"3.5.0\";i:53;s:5:\"3.4.7\";i:54;s:5:\"3.4.6\";i:55;s:5:\"3.4.5\";i:56;s:5:\"3.4.4\";i:57;s:5:\"3.4.3\";i:58;s:5:\"3.4.2\";i:59;s:5:\"3.4.1\";i:60;s:5:\"3.4.0\";i:61;s:5:\"3.3.5\";i:62;s:5:\"3.3.4\";i:63;s:5:\"3.3.3\";i:64;s:5:\"3.3.2\";i:65;s:5:\"3.3.1\";i:66;s:5:\"3.3.0\";i:67;s:5:\"3.2.6\";i:68;s:5:\"3.2.5\";i:69;s:5:\"3.2.4\";i:70;s:5:\"3.2.3\";i:71;s:5:\"3.2.2\";i:72;s:5:\"3.2.1\";i:73;s:5:\"3.2.0\";i:74;s:5:\"3.1.2\";i:75;s:5:\"3.1.1\";i:76;s:5:\"3.1.0\";i:77;s:5:\"3.0.9\";i:78;s:5:\"3.0.8\";i:79;s:5:\"3.0.7\";i:80;s:5:\"3.0.6\";i:81;s:5:\"3.0.5\";i:82;s:5:\"3.0.4\";i:83;s:5:\"3.0.3\";i:84;s:5:\"3.0.2\";i:85;s:5:\"3.0.1\";i:86;s:5:\"3.0.0\";}', 'no'),
(566, '_transient_timeout_wc_report_orders_stats_c7e4037ee41af08002b243668922600d', '1619629222', 'no'),
(567, '_transient_timeout_wc_report_orders_stats_450488c43c866dfce729873f75300389', '1619629222', 'no'),
(568, '_transient_wc_report_orders_stats_c7e4037ee41af08002b243668922600d', 'a:2:{s:7:\"version\";s:10:\"1619024262\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-16\";s:10:\"date_start\";s:19:\"2021-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-21 22:00:00\";s:12:\"date_end_gmt\";s:19:\"2021-04-21 22:00:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(569, '_transient_wc_report_orders_stats_450488c43c866dfce729873f75300389', 'a:2:{s:7:\"version\";s:10:\"1619024262\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-16\";s:10:\"date_start\";s:19:\"2021-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(570, '_transient_timeout_wc_report_orders_stats_a0e05db43ef71c722074a2908aeff367', '1619629222', 'no'),
(571, '_transient_timeout_wc_report_orders_stats_897ffe23687d7c73e552afddb028d4b7', '1619629222', 'no'),
(572, '_transient_wc_report_orders_stats_a0e05db43ef71c722074a2908aeff367', 'a:2:{s:7:\"version\";s:10:\"1619024262\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-16\";s:10:\"date_start\";s:19:\"2021-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-21 22:00:00\";s:12:\"date_end_gmt\";s:19:\"2021-04-21 22:00:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(573, '_transient_wc_report_orders_stats_897ffe23687d7c73e552afddb028d4b7', 'a:2:{s:7:\"version\";s:10:\"1619024262\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-16\";s:10:\"date_start\";s:19:\"2021-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(574, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(583, '_transient_product_query-transient-version', '1619024714', 'yes'),
(584, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(587, '_transient_timeout_et_core_path', '1619245409', 'no'),
(588, '_transient_et_core_path', 'C:/xampp/htdocs/Demo/wp-content/themes/Divi/core', 'no'),
(590, '_transient_timeout__woocommerce_helper_subscriptions', '1619159916', 'no'),
(591, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(592, '_site_transient_timeout_theme_roots', '1619160816', 'no'),
(593, '_site_transient_theme_roots', 'a:7:{s:4:\"Divi\";s:7:\"/themes\";s:10:\"divi-child\";s:7:\"/themes\";s:13:\"oceanwp-child\";s:7:\"/themes\";s:7:\"oceanwp\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(594, '_transient_timeout__woocommerce_helper_updates', '1619202216', 'no'),
(595, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1619159016;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(597, 'woocommerce_tracker_last_send', '1619159021', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1617427190:1'),
(5, 8, '_wp_attached_file', '2021/03/biryani.jpeg'),
(6, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:826;s:6:\"height\";i:620;s:4:\"file\";s:20:\"2021/03/biryani.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 15, '_edit_lock', '1618818011:1'),
(9, 15, '_et_pb_use_builder', 'on'),
(10, 15, '_et_gb_content_width', ''),
(11, 15, '_edit_last', '1'),
(12, 15, '_et_pb_post_hide_nav', 'default'),
(13, 15, '_et_pb_page_layout', 'et_right_sidebar'),
(14, 15, '_et_pb_side_nav', 'off'),
(15, 17, '_edit_lock', '1618817961:1'),
(16, 17, '_et_pb_use_builder', 'on'),
(17, 17, '_et_gb_content_width', ''),
(18, 17, '_edit_last', '1'),
(19, 17, '_et_pb_post_hide_nav', 'default'),
(20, 17, '_et_pb_page_layout', 'et_right_sidebar'),
(21, 17, '_et_pb_side_nav', 'off'),
(22, 15, '_wp_trash_meta_status', 'draft'),
(23, 15, '_wp_trash_meta_time', '1618818112'),
(24, 15, '_wp_desired_post_slug', ''),
(25, 17, '_wp_trash_meta_status', 'draft'),
(26, 17, '_wp_trash_meta_time', '1618818115'),
(27, 17, '_wp_desired_post_slug', ''),
(28, 19, '_edit_lock', '1618819299:1'),
(29, 19, '_et_pb_use_builder', 'on'),
(30, 19, '_et_gb_content_width', ''),
(31, 19, '_edit_last', '1'),
(32, 19, '_et_pb_post_hide_nav', 'default'),
(33, 19, '_et_pb_page_layout', 'et_right_sidebar'),
(34, 19, '_et_pb_side_nav', 'off'),
(35, 21, '_wp_attached_file', '2021/04/ice-cream-02.jpg'),
(36, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:24:\"2021/04/ice-cream-02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 22, '_wp_attached_file', '2021/04/ice-cream-06.jpg'),
(38, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1169;s:4:\"file\";s:24:\"2021/04/ice-cream-06.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 23, '_wp_attached_file', '2021/04/ice-cream-08.jpg'),
(40, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:948;s:4:\"file\";s:24:\"2021/04/ice-cream-08.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 24, '_wp_attached_file', '2021/04/ice-cream-01.png'),
(42, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:872;s:4:\"file\";s:24:\"2021/04/ice-cream-01.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 25, '_wp_attached_file', '2021/04/ice-cream-05.jpg'),
(44, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2021/04/ice-cream-05.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 26, '_wp_attached_file', '2021/04/ice-cream-04.jpg'),
(46, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2021/04/ice-cream-04.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 27, '_wp_attached_file', '2021/04/ice-cream-07.png'),
(48, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:501;s:4:\"file\";s:24:\"2021/04/ice-cream-07.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 19, '_et_pb_built_for_post_type', 'page'),
(50, 19, '_et_pb_ab_subjects', ''),
(51, 19, '_et_pb_enable_shortcode_tracking', ''),
(52, 19, '_et_pb_ab_current_shortcode', '[et_pb_split_track id=\"19\" /]'),
(53, 19, '_et_pb_custom_css', ''),
(54, 19, '_et_pb_gutter_width', '3'),
(55, 19, '_thumbnail_id', '0'),
(56, 19, '_global_colors_info', '{}'),
(57, 19, '_et_pb_first_image', ''),
(58, 19, '_et_pb_truncate_post', ''),
(59, 19, '_et_pb_truncate_post_date', ''),
(60, 19, '_et_builder_version', 'VB|Divi|4.9.3'),
(61, 29, '_edit_last', '1'),
(62, 29, '_edit_lock', '1618818214:1'),
(63, 29, '_thumbnail_id', '22'),
(64, 29, 'wpsisac_slide_link', ''),
(65, 30, '_edit_last', '1'),
(66, 30, '_edit_lock', '1618818241:1'),
(67, 30, '_thumbnail_id', '23'),
(68, 30, 'wpsisac_slide_link', ''),
(69, 31, '_edit_last', '1'),
(70, 31, '_edit_lock', '1618818288:1'),
(71, 31, '_thumbnail_id', '27'),
(72, 31, 'wpsisac_slide_link', ''),
(73, 32, '_edit_last', '1'),
(74, 32, '_edit_lock', '1618818320:1'),
(75, 32, '_thumbnail_id', '26'),
(76, 32, 'wpsisac_slide_link', ''),
(77, 33, '_edit_last', '1'),
(78, 33, '_edit_lock', '1618818376:1'),
(79, 33, '_thumbnail_id', '21'),
(80, 33, 'wpsisac_slide_link', ''),
(81, 34, '_edit_last', '1'),
(82, 34, '_edit_lock', '1618818409:1'),
(83, 34, '_thumbnail_id', '25'),
(84, 34, 'wpsisac_slide_link', ''),
(85, 36, '_edit_lock', '1618818638:1'),
(86, 36, '_et_pb_use_builder', 'on'),
(87, 36, '_et_gb_content_width', ''),
(88, 36, '_edit_last', '1'),
(89, 36, '_et_pb_post_hide_nav', 'default'),
(90, 36, '_et_pb_page_layout', 'et_right_sidebar'),
(91, 36, '_et_pb_side_nav', 'off'),
(92, 36, '_et_pb_built_for_post_type', 'page'),
(93, 36, '_et_pb_ab_subjects', ''),
(94, 36, '_et_pb_enable_shortcode_tracking', ''),
(95, 36, '_et_pb_ab_current_shortcode', '[et_pb_split_track id=\"36\" /]'),
(96, 36, '_et_pb_custom_css', ''),
(97, 36, '_et_pb_gutter_width', '3'),
(98, 36, '_thumbnail_id', '0'),
(99, 36, '_global_colors_info', '{}'),
(100, 36, '_et_pb_first_image', ''),
(101, 36, '_et_pb_truncate_post', ''),
(102, 36, '_et_pb_truncate_post_date', ''),
(103, 36, '_et_builder_version', 'VB|Divi|4.9.3'),
(104, 36, '_et_pb_show_page_creation', 'off'),
(105, 36, '_wp_trash_meta_status', 'publish'),
(106, 36, '_wp_trash_meta_time', '1618818739'),
(107, 36, '_wp_desired_post_slug', '36-2'),
(108, 19, '_et_pb_show_page_creation', 'off'),
(109, 19, 'et_enqueued_post_fonts', 'a:2:{s:6:\"family\";a:1:{s:12:\"et-gf-prompt\";s:133:\"Prompt:100,100italic,200,200italic,300,300italic,regular,italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic\";}s:6:\"subset\";a:2:{i:0;s:5:\"latin\";i:1;s:9:\"latin-ext\";}}'),
(110, 19, '_wp_page_template', 'default'),
(111, 45, '_wp_attached_file', 'woocommerce-placeholder.png'),
(112, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 50, '_menu_item_type', 'post_type'),
(114, 50, '_menu_item_menu_item_parent', '0'),
(115, 50, '_menu_item_object_id', '47'),
(116, 50, '_menu_item_object', 'page'),
(117, 50, '_menu_item_target', ''),
(118, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 50, '_menu_item_xfn', ''),
(120, 50, '_menu_item_url', ''),
(122, 50, '_menu_item_content', ''),
(123, 51, '_menu_item_type', 'post_type'),
(124, 51, '_menu_item_menu_item_parent', '0'),
(125, 51, '_menu_item_object_id', '48'),
(126, 51, '_menu_item_object', 'page'),
(127, 51, '_menu_item_target', ''),
(128, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 51, '_menu_item_xfn', ''),
(130, 51, '_menu_item_url', ''),
(132, 51, '_menu_item_content', ''),
(133, 52, '_menu_item_type', 'post_type'),
(134, 52, '_menu_item_menu_item_parent', '0'),
(135, 52, '_menu_item_object_id', '49'),
(136, 52, '_menu_item_object', 'page'),
(137, 52, '_menu_item_target', ''),
(138, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 52, '_menu_item_xfn', ''),
(140, 52, '_menu_item_url', ''),
(142, 52, '_menu_item_content', ''),
(143, 53, '_menu_item_type', 'post_type'),
(144, 53, '_menu_item_menu_item_parent', '0'),
(145, 53, '_menu_item_object_id', '46'),
(146, 53, '_menu_item_object', 'page'),
(147, 53, '_menu_item_target', ''),
(148, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 53, '_menu_item_xfn', ''),
(150, 53, '_menu_item_url', ''),
(152, 53, '_menu_item_content', ''),
(153, 54, '_menu_item_type', 'post_type'),
(154, 54, '_menu_item_menu_item_parent', '0'),
(155, 54, '_menu_item_object_id', '47'),
(156, 54, '_menu_item_object', 'page'),
(157, 54, '_menu_item_target', ''),
(158, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 54, '_menu_item_xfn', ''),
(160, 54, '_menu_item_url', ''),
(161, 54, '_menu_item_orphaned', '1619024644'),
(162, 54, '_menu_item_content', ''),
(163, 55, '_menu_item_type', 'post_type'),
(164, 55, '_menu_item_menu_item_parent', '0'),
(165, 55, '_menu_item_object_id', '48'),
(166, 55, '_menu_item_object', 'page'),
(167, 55, '_menu_item_target', ''),
(168, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 55, '_menu_item_xfn', ''),
(170, 55, '_menu_item_url', ''),
(171, 55, '_menu_item_orphaned', '1619024644'),
(172, 55, '_menu_item_content', ''),
(173, 56, '_menu_item_type', 'post_type'),
(174, 56, '_menu_item_menu_item_parent', '0'),
(175, 56, '_menu_item_object_id', '49'),
(176, 56, '_menu_item_object', 'page'),
(177, 56, '_menu_item_target', ''),
(178, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 56, '_menu_item_xfn', ''),
(180, 56, '_menu_item_url', ''),
(181, 56, '_menu_item_orphaned', '1619024644'),
(182, 56, '_menu_item_content', ''),
(183, 57, '_menu_item_type', 'post_type'),
(184, 57, '_menu_item_menu_item_parent', '0'),
(185, 57, '_menu_item_object_id', '46'),
(186, 57, '_menu_item_object', 'page'),
(187, 57, '_menu_item_target', ''),
(188, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 57, '_menu_item_xfn', ''),
(190, 57, '_menu_item_url', ''),
(191, 57, '_menu_item_orphaned', '1619024644'),
(192, 57, '_menu_item_content', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-20 03:51:13', '2021-03-20 03:51:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-03-20 03:51:13', '2021-03-20 03:51:13', '', 0, 'http://localhost/demo/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-20 03:51:13', '2021-03-20 03:51:13', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/demo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-03-20 03:51:13', '2021-03-20 03:51:13', '', 0, 'http://localhost/demo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-20 03:51:13', '2021-03-20 03:51:13', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/demo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-03-20 03:51:13', '2021-03-20 03:51:13', '', 0, 'http://localhost/demo/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-03-20 03:54:37', '2021-03-20 03:54:37', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"21px\"},\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86;font-size:21px\"><em>We think this is a truly amazing and delicious version of the classic Indian layered rice dish. Our method is close to the traditional way, except we finish ours in the oven rather than on the stovetop. This ensures even heating, which acts as an insurance policy against burning. Save the leftover onion oil – it\'s very fragrant and flavorful and can be used in other sauces.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/demo/wp-content/uploads/2021/03/biryani.jpeg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"50px\"}}} -->\n<h2 style=\"font-size:50px\">INGREDIENTS:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 cup whole milk yogurt</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">Kosher salt&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 teaspoons&nbsp;Kashmiri&nbsp;chili&nbsp;powder&nbsp;(see Cook\'s Note)&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2 teaspoon&nbsp;ground&nbsp;turmeric&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 1/2 pounds&nbsp;bone-in skinless&nbsp;chicken thighs&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 1/2 cups vegetable oil&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 large red onions, thinly sliced&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 cups basmati rice&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">8&nbsp;whole cloves&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">7&nbsp;green cardamom pods&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">3&nbsp;bay leaves&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/4&nbsp;teaspoon&nbsp;whole&nbsp;black peppercorns&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 large pinches saffron&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/4 cup whole milk&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2&nbsp;cinnamon stick&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 teaspoon&nbsp;cumin seeds&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 tablespoon finely grated ginger&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">5&nbsp;cloves&nbsp;garlic, finely grated&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 medium tomatoes,&nbsp;chopped&nbsp;into&nbsp;1/2-inch&nbsp;pieces&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2 cup cilantro leaves&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2 cup mint leaves .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"50px\"}}} -->\n<h2 style=\"font-size:50px\">DIRECTIONS:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<ol class=\"has-text-color\" style=\"color:#2f6c86\"><li>Whisk&nbsp;together&nbsp;the&nbsp;yogurt, 3 tablespoons salt,&nbsp;chili powder&nbsp;and turmeric in a large bowl. Add the&nbsp;chicken&nbsp;and turn&nbsp;to coat. Let sit at room temperature until ready to use, up to 1 hour.&nbsp;(Alternatively,&nbsp;the&nbsp;chicken can be marinated for up to 2 days&nbsp;covered&nbsp;with plastic wrap&nbsp;in the&nbsp;refrigerator.)</li><li>Meanwhile,&nbsp;heat&nbsp;the&nbsp;oil&nbsp;in a large&nbsp;heavy-bottomed&nbsp;saucepan&nbsp;over high heat until a&nbsp;deep-fry thermometer&nbsp;reaches&nbsp;350 degrees&nbsp;F.&nbsp;Fry half of the onions, stirring frequently&nbsp;for&nbsp;even cooking, until deep golden brown, 10&nbsp;to&nbsp;12 minutes. Transfer&nbsp;them&nbsp;to a paper-towel lined&nbsp;baking&nbsp;sheet&nbsp;to drain.&nbsp;Season with salt and let cool. Let&nbsp;the&nbsp;oil come back up to temperature and repeat with&nbsp;the&nbsp;remaining onions. Reserve&nbsp;the&nbsp;oil.&nbsp;&nbsp;</li><li>Wash, rinse and drain&nbsp;the&nbsp;rice in a bowl full of cold water until the water is almost clear, about 5 times.&nbsp;Bring&nbsp;the&nbsp;rice,&nbsp;1/4 cup salt,&nbsp;4&nbsp;of the&nbsp;cloves, 3&nbsp;of the&nbsp;cardamom pods, 1&nbsp;of the&nbsp;bay leaves,&nbsp;the&nbsp;peppercorns&nbsp;and 3 quarts of water to a boil&nbsp;in a large pot&nbsp;over high&nbsp;heat.&nbsp;Cook for exactly 5 minutes.&nbsp;(The rice will not be&nbsp;completely&nbsp;cooked;&nbsp;it will continue to cook in the oven. Do not cook longer or the rice will get mushy.)&nbsp;Drain and transfer&nbsp;the&nbsp;rice and spices to a medium bowl.&nbsp;</li><li>Position a rack in the lower third of&nbsp;the&nbsp;oven and preheat to 300 degrees&nbsp;F.&nbsp;&nbsp;</li><li>Stir&nbsp;together&nbsp;the&nbsp;saffron and milk in a small bowl until combined.&nbsp;&nbsp;</li><li>Heat 3 tablespoons of the reserved onion oil in a large Dutch oven over medium heat. Add the cinnamon stick, cumin seeds and the remaining 4 cloves, 4 cardamom pods and 2 bay leaves. Cook, stirring frequently, until the spices are very fragrant and beginning to brown, about 1 minute. Add the ginger and garlic and cook, stirring frequently, until very fragrant and beginning to stick to the bottom of the pan, about 1 minute. Add the tomatoes and 1 teaspoon salt and cook, stirring occasionally and scraping the garlic and ginger from the bottom of the pan, until the tomatoes start to break down and most of the liquid has evaporated, 5 to 7 minutes. Stir in 1/2 cup water, bring to a boil and scrape up any bits from the bottom of the pan.&nbsp;&nbsp;</li><li>Remove&nbsp;the&nbsp;chicken&nbsp;from the marinade and layer&nbsp;on top of&nbsp;the&nbsp;tomatoes. Then&nbsp;sprinkle&nbsp;half&nbsp;the fried&nbsp;onions&nbsp;on top of&nbsp;the&nbsp;chicken. Top with&nbsp;the&nbsp;rice and spices&nbsp;and&nbsp;then drizzle&nbsp;the&nbsp;saffron&nbsp;milk&nbsp;over&nbsp;the&nbsp;rice.&nbsp;Cover the pan and bake until the liquid evaporates, the rice is tender and the chicken is cooked through, 30 to 40 minutes.&nbsp;</li><li>Let sit covered for 10 minutes,&nbsp;then&nbsp;transfer&nbsp;the biryani&nbsp;to&nbsp;a large serving platter. Top with&nbsp;the&nbsp;remaining&nbsp;fried&nbsp;onions,&nbsp;cilantro and&nbsp;mint leaves.&nbsp;</li></ol>\n<!-- /wp:list -->', 'The Best Chicken Biryani', '', 'publish', 'open', 'open', '', 'the-best-chicken-biryani', '', '', '2021-03-20 04:06:13', '2021-03-20 04:06:13', '', 0, 'http://localhost/demo/?p=5', 0, 'post', '', 0),
(6, 1, '2021-03-20 03:54:37', '2021-03-20 03:54:37', '', 'The Best Chicken Biryani', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-03-20 03:54:37', '2021-03-20 03:54:37', '', 5, 'http://localhost/demo/?p=6', 0, 'revision', '', 0),
(8, 1, '2021-03-20 04:05:59', '2021-03-20 04:05:59', '', 'biryani', '', 'inherit', 'open', 'closed', '', 'biryani', '', '', '2021-03-20 04:05:59', '2021-03-20 04:05:59', '', 5, 'http://localhost/demo/wp-content/uploads/2021/03/biryani.jpeg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2021-03-20 04:06:13', '2021-03-20 04:06:13', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"21px\"},\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86;font-size:21px\"><em>We think this is a truly amazing and delicious version of the classic Indian layered rice dish. Our method is close to the traditional way, except we finish ours in the oven rather than on the stovetop. This ensures even heating, which acts as an insurance policy against burning. Save the leftover onion oil – it\'s very fragrant and flavorful and can be used in other sauces.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/demo/wp-content/uploads/2021/03/biryani.jpeg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"50px\"}}} -->\n<h2 style=\"font-size:50px\">INGREDIENTS:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 cup whole milk yogurt</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">Kosher salt&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 teaspoons&nbsp;Kashmiri&nbsp;chili&nbsp;powder&nbsp;(see Cook\'s Note)&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2 teaspoon&nbsp;ground&nbsp;turmeric&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 1/2 pounds&nbsp;bone-in skinless&nbsp;chicken thighs&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 1/2 cups vegetable oil&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 large red onions, thinly sliced&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 cups basmati rice&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">8&nbsp;whole cloves&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">7&nbsp;green cardamom pods&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">3&nbsp;bay leaves&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/4&nbsp;teaspoon&nbsp;whole&nbsp;black peppercorns&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 large pinches saffron&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/4 cup whole milk&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2&nbsp;cinnamon stick&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 teaspoon&nbsp;cumin seeds&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1 tablespoon finely grated ginger&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">5&nbsp;cloves&nbsp;garlic, finely grated&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">2 medium tomatoes,&nbsp;chopped&nbsp;into&nbsp;1/2-inch&nbsp;pieces&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2 cup cilantro leaves&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<p class=\"has-text-color\" style=\"color:#2f6c86\">1/2 cup mint leaves .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"50px\"}}} -->\n<h2 style=\"font-size:50px\">DIRECTIONS:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"style\":{\"color\":{\"text\":\"#2f6c86\"}}} -->\n<ol class=\"has-text-color\" style=\"color:#2f6c86\"><li>Whisk&nbsp;together&nbsp;the&nbsp;yogurt, 3 tablespoons salt,&nbsp;chili powder&nbsp;and turmeric in a large bowl. Add the&nbsp;chicken&nbsp;and turn&nbsp;to coat. Let sit at room temperature until ready to use, up to 1 hour.&nbsp;(Alternatively,&nbsp;the&nbsp;chicken can be marinated for up to 2 days&nbsp;covered&nbsp;with plastic wrap&nbsp;in the&nbsp;refrigerator.)</li><li>Meanwhile,&nbsp;heat&nbsp;the&nbsp;oil&nbsp;in a large&nbsp;heavy-bottomed&nbsp;saucepan&nbsp;over high heat until a&nbsp;deep-fry thermometer&nbsp;reaches&nbsp;350 degrees&nbsp;F.&nbsp;Fry half of the onions, stirring frequently&nbsp;for&nbsp;even cooking, until deep golden brown, 10&nbsp;to&nbsp;12 minutes. Transfer&nbsp;them&nbsp;to a paper-towel lined&nbsp;baking&nbsp;sheet&nbsp;to drain.&nbsp;Season with salt and let cool. Let&nbsp;the&nbsp;oil come back up to temperature and repeat with&nbsp;the&nbsp;remaining onions. Reserve&nbsp;the&nbsp;oil.&nbsp;&nbsp;</li><li>Wash, rinse and drain&nbsp;the&nbsp;rice in a bowl full of cold water until the water is almost clear, about 5 times.&nbsp;Bring&nbsp;the&nbsp;rice,&nbsp;1/4 cup salt,&nbsp;4&nbsp;of the&nbsp;cloves, 3&nbsp;of the&nbsp;cardamom pods, 1&nbsp;of the&nbsp;bay leaves,&nbsp;the&nbsp;peppercorns&nbsp;and 3 quarts of water to a boil&nbsp;in a large pot&nbsp;over high&nbsp;heat.&nbsp;Cook for exactly 5 minutes.&nbsp;(The rice will not be&nbsp;completely&nbsp;cooked;&nbsp;it will continue to cook in the oven. Do not cook longer or the rice will get mushy.)&nbsp;Drain and transfer&nbsp;the&nbsp;rice and spices to a medium bowl.&nbsp;</li><li>Position a rack in the lower third of&nbsp;the&nbsp;oven and preheat to 300 degrees&nbsp;F.&nbsp;&nbsp;</li><li>Stir&nbsp;together&nbsp;the&nbsp;saffron and milk in a small bowl until combined.&nbsp;&nbsp;</li><li>Heat 3 tablespoons of the reserved onion oil in a large Dutch oven over medium heat. Add the cinnamon stick, cumin seeds and the remaining 4 cloves, 4 cardamom pods and 2 bay leaves. Cook, stirring frequently, until the spices are very fragrant and beginning to brown, about 1 minute. Add the ginger and garlic and cook, stirring frequently, until very fragrant and beginning to stick to the bottom of the pan, about 1 minute. Add the tomatoes and 1 teaspoon salt and cook, stirring occasionally and scraping the garlic and ginger from the bottom of the pan, until the tomatoes start to break down and most of the liquid has evaporated, 5 to 7 minutes. Stir in 1/2 cup water, bring to a boil and scrape up any bits from the bottom of the pan.&nbsp;&nbsp;</li><li>Remove&nbsp;the&nbsp;chicken&nbsp;from the marinade and layer&nbsp;on top of&nbsp;the&nbsp;tomatoes. Then&nbsp;sprinkle&nbsp;half&nbsp;the fried&nbsp;onions&nbsp;on top of&nbsp;the&nbsp;chicken. Top with&nbsp;the&nbsp;rice and spices&nbsp;and&nbsp;then drizzle&nbsp;the&nbsp;saffron&nbsp;milk&nbsp;over&nbsp;the&nbsp;rice.&nbsp;Cover the pan and bake until the liquid evaporates, the rice is tender and the chicken is cooked through, 30 to 40 minutes.&nbsp;</li><li>Let sit covered for 10 minutes,&nbsp;then&nbsp;transfer&nbsp;the biryani&nbsp;to&nbsp;a large serving platter. Top with&nbsp;the&nbsp;remaining&nbsp;fried&nbsp;onions,&nbsp;cilantro and&nbsp;mint leaves.&nbsp;</li></ol>\n<!-- /wp:list -->', 'The Best Chicken Biryani', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-03-20 04:06:13', '2021-03-20 04:06:13', '', 5, 'http://localhost/demo/?p=9', 0, 'revision', '', 0),
(11, 1, '2021-04-19 07:30:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-19 07:30:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo/?p=11', 0, 'post', '', 0),
(12, 1, '2021-04-19 07:37:27', '2021-04-19 07:37:27', '', 'Divi', '', 'publish', 'closed', 'closed', '', 'divi', '', '', '2021-04-19 07:37:27', '2021-04-19 07:37:27', '', 0, 'http://localhost/demo/2021/04/19/divi/', 0, 'custom_css', '', 0),
(13, 1, '2021-04-19 07:37:27', '2021-04-19 07:37:27', '', 'Divi', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-04-19 07:37:27', '2021-04-19 07:37:27', '', 12, 'http://localhost/demo/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-04-19 07:39:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-19 07:39:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo/?post_type=slick_slider&p=14', 0, 'slick_slider', '', 0),
(15, 1, '2021-04-19 07:41:52', '2021-04-19 07:41:52', '<!-- wp:divi/placeholder /-->', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2021-04-19 07:41:52', '2021-04-19 07:41:52', '', 0, 'http://localhost/demo/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-04-19 07:40:09', '2021-04-19 07:40:09', '<!-- wp:divi/placeholder /-->', '', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-04-19 07:40:09', '2021-04-19 07:40:09', '', 15, 'http://localhost/demo/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-04-19 07:41:55', '2021-04-19 07:41:55', '<!-- wp:divi/placeholder /-->', '', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2021-04-19 07:41:55', '2021-04-19 07:41:55', '', 0, 'http://localhost/demo/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-04-19 07:41:07', '2021-04-19 07:41:07', '<!-- wp:divi/placeholder /-->', '', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-04-19 07:41:07', '2021-04-19 07:41:07', '', 17, 'http://localhost/demo/?p=18', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(19, 1, '2021-04-19 07:44:32', '2021-04-19 07:44:32', '[et_pb_section fb_built=\"1\" admin_label=\"Header\" _builder_version=\"3.26.3\" custom_margin=\"||160px||false|false\" custom_margin_tablet=\"||0px||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"0px||||false|false\"][et_pb_row column_structure=\"3_5,2_5\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px||false|false\" border_width_left=\"150px\" border_color_left=\"rgba(0,0,0,0)\" border_width_left_tablet=\"0px\" border_width_left_phone=\"\" border_width_left_last_edited=\"on|desktop\"][et_pb_column type=\"3_5\" _builder_version=\"3.26.3\" background_color=\"#ffbadd\" background_color_gradient_direction=\"90deg\" transform_translate_linked=\"off\" custom_padding=\"60px|40px|||false|false\" custom_padding_tablet=\"40px|40px||40px|false|true\" custom_padding_phone=\"|20px||20px|false|true\" custom_padding_last_edited=\"on|phone\" box_shadow_vertical_tablet=\"-200px\" box_shadow_vertical_phone=\"-100px\" box_shadow_vertical_last_edited=\"on|phone\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"Prompt|900|||||||\" header_text_color=\"#000000\" header_font_size=\"150px\" header_letter_spacing=\"7px\" z_index=\"1\" custom_margin=\"|||-150px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"80px\" header_font_size_phone=\"60px\" header_font_size_last_edited=\"on|phone\" header_letter_spacing_tablet=\"0px\" header_letter_spacing_phone=\"\" header_letter_spacing_last_edited=\"on|tablet\"]<h1>Ice Cream Shop</h1>[/et_pb_text][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png\" _builder_version=\"3.26.3\" transform_scale_tablet=\"\" transform_scale_phone=\"\" transform_scale_last_edited=\"on|desktop\" transform_translate=\"120px|0px\" transform_translate_tablet=\"0px|0px\" transform_translate_phone=\"\" transform_translate_last_edited=\"on|tablet\" transform_translate_linked=\"off\" transform_rotate_tablet=\"\" transform_rotate_phone=\"\" transform_rotate_last_edited=\"on|desktop\" transform_skew_tablet=\"\" transform_skew_phone=\"\" transform_skew_last_edited=\"on|desktop\" transform_origin_tablet=\"\" transform_origin_phone=\"\" transform_origin_last_edited=\"on|desktop\" transform_styles_last_edited=\"on|tablet\" max_width=\"400px\" max_width_tablet=\"250px\" max_width_phone=\"180px\" max_width_last_edited=\"on|desktop\" module_alignment=\"right\" custom_margin=\"-440px||-260px||false|false\" custom_margin_tablet=\"-50px||-160px||false|false\" custom_margin_phone=\"||-110px||false|false\" custom_margin_last_edited=\"on|phone\" transform_styles_tablet=\"\" transform_styles_phone=\"\" module_alignment_tablet=\"center\" module_alignment_phone=\"\" module_alignment_last_edited=\"on|desktop\"][/et_pb_image][/et_pb_column][et_pb_column type=\"2_5\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|800|||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_color=\"#00d2d6\" z_index=\"1\" background_layout=\"dark\" custom_margin=\"|-4vw|||false|false\" custom_margin_tablet=\"|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|tablet\" custom_padding=\"80px|40px|60px|40px|false|true\" custom_padding_tablet=\"\" custom_padding_phone=\"40px|20px|40px|20px|true|true\" custom_padding_last_edited=\"on|phone\" locked=\"off\"]<p>5678 Extra Rd<br /> San Francisco, CA 96120</p>\n<p>Open 11am to 11pm Everyday</p>[/et_pb_text][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"Prompt|800|||||||\" header_2_text_color=\"#f76538\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"80px||||false|false\" custom_margin_tablet=\"0px||||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"|||40px|false|false\" custom_padding_tablet=\"|||0px|false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|desktop\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" text_text_align=\"right\" locked=\"off\" text_text_align_tablet=\"left\" text_text_align_last_edited=\"on|desktop\"]<h2>Made Locally!</h2>\n<p>Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo ega.</p>[/et_pb_text][et_pb_button button_text=\"Pre Order\" button_alignment=\"right\" button_alignment_tablet=\"left\" button_alignment_phone=\"\" button_alignment_last_edited=\"on|desktop\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"About\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"#ffffff\" background_color_gradient_end=\"#f4f4f4\" background_color_gradient_start_position=\"86%\" custom_margin=\"||||false|false\" custom_padding=\"||10vw||false|false\" bottom_divider_style=\"waves\" bottom_divider_color=\"#ffffff\" bottom_divider_height=\"10vw\"][et_pb_row _builder_version=\"3.26.3\" custom_padding=\"||0px|||\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" max_width=\"800px\" module_alignment=\"center\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2><strong>Small Batch Ice Cream </strong>Made in San Francisco</h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row column_structure=\"1_3,1_3,1_3\" _builder_version=\"3.26.3\" custom_padding=\"25px|||||\"][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\"]<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. </p>[/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Services\" _builder_version=\"3.26.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" z_index=\"10\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|900|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"140px\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"|-92px|0px||false|false\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|desktop\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2>Visit<br /> Order<br /> Join!</h2>[/et_pb_text][et_pb_button button_text=\"Pre Order Online or by Phone\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg\" _builder_version=\"3.26.3\" custom_margin=\"|||-15vw|false|false\" custom_margin_tablet=\"|||0vw|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg\" force_fullwidth=\"on\" _builder_version=\"3.26.3\" custom_margin=\"-40px|-10vw|||false|false\" custom_margin_tablet=\"0px|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_text_color=\"#ff6f7e\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" custom_margin=\"150px||0px||false|false\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Join us</h4>\n<h2>Join the <strong>Pint Club!</strong></h2>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>[/et_pb_text][et_pb_button button_text=\"Join Today\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg\" _builder_version=\"3.26.3\" max_width=\"360px\" max_width_tablet=\"100%\" max_width_phone=\"\" max_width_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px|||\"][et_pb_row _builder_version=\"3.26.3\" z_index=\"10\" max_width=\"none\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"150px\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"40px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h2>Fresh.<br /> Seasonal.<strong><br /> Local.</strong></h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row _builder_version=\"3.26.3\" width=\"100%\" max_width=\"none\" custom_margin=\"||||false|false\" custom_padding=\"||||false|false\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg\" _builder_version=\"3.26.3\" custom_margin=\"-20vw||||false|false\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"4.9.3\" _module_preset=\"default\"][et_pb_row _builder_version=\"4.9.3\" _module_preset=\"default\"][et_pb_column _builder_version=\"4.9.3\" _module_preset=\"default\" type=\"4_4\"][et_pb_code _builder_version=\"4.9.3\" _module_preset=\"default\" hover_enabled=\"0\" sticky_enabled=\"0\"][slick-slider design=\"design-1\"][/et_pb_code][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Flavour\" _builder_version=\"3.25.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" background_color=\"#ffa256\" custom_padding=\"0px|40px|0px|40px|true|true\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png\" align=\"center\" _builder_version=\"3.26.3\" max_width_tablet=\"200px\" max_width_phone=\"120px\" max_width_last_edited=\"off|phone\" locked=\"off\" max_width__hover_enabled=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_layout=\"dark\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>July</h4>\n<h2><strong>Orange</strong> Chocolate</h2>[/et_pb_text][et_pb_button button_text=\"Purchase\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" z_index=\"1\" custom_margin=\"|-40px|0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" custom_padding=\"150px||||false|false\" custom_padding_tablet=\"0px||||false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|tablet\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Highlight</h4>\n<h2><strong>Flavor</strong> Of the Month.</h2>[/et_pb_text][et_pb_button button_text=\"View All Seasonal Flavors\" button_alignment=\"left\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ffa256\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#000000\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" custom_padding_last_edited=\"off|phone\" admin_label=\"Footer\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"rgba(255,186,221,0)\" background_color_gradient_end=\"#ffbadd\" background_color_gradient_direction=\"90deg\" background_color_gradient_start_position=\"60%\" background_color_gradient_end_position=\"0%\" background_color_gradient_overlays_image=\"on\" background_image=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg\" background_size=\"contain\" custom_padding=\"12vw||12vw||true|false\" custom_padding_tablet=\"50px|||\" custom_padding_phone=\"30px||\"][et_pb_row custom_padding_last_edited=\"on|tablet\" _builder_version=\"3.26.3\" background_color=\"#000000\" max_width=\"700px\" custom_padding=\"80px|80px|80px|80px|true|true\" custom_padding_tablet=\"60px|60px|60px|60px\" custom_padding_phone=\"40px|20px|40px|20px|true|true\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" background_layout=\"dark\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Subscribe To Get a Free Month</h4>\n<h2>1st Month of Pint Club <strong>Membership is Free!</strong></h2>[/et_pb_text][et_pb_signup mailchimp_list=\"elegantthemestest|1ea2bbd026\" layout=\"top_bottom\" first_name_field=\"off\" last_name_field=\"off\" admin_label=\"Email Optin\" _builder_version=\"3.26.3\" header_level=\"h3\" header_font=\"Prompt|700|||||||\" header_font_size=\"30px\" header_line_height=\"1.2em\" body_font=\"|600|||||||\" body_line_height=\"1.8em\" form_field_font=\"Prompt||||||||\" use_background_color=\"off\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ff608d\" button_border_width=\"10px\" button_border_color=\"rgba(0,0,0,0)\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_margin=\"|||-20px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"\" header_font_size_phone=\"18px\" header_font_size_last_edited=\"on|phone\" button_bg_color_last_edited=\"off|desktop\" border_radii_fields=\"on|0px|0px|0px|0px\" button_text_color__hover=\"#ffffff\" button_bg_color__hover=\"#ffbbc8\" button_bg_color__hover_enabled=\"on\" button_border_color__hover=\"rgba(0,0,0,0)\" button_bg_enable_color__hover=\"on\"][/et_pb_signup][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Footer\" _builder_version=\"3.26.3\" locked=\"off\"][et_pb_row _builder_version=\"3.25.3\" locked=\"off\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" locked=\"off\"]<h4>Follow us on social Media.</h4>[/et_pb_text][et_pb_social_media_follow _builder_version=\"3.25.3\" text_orientation=\"center\"][et_pb_social_media_follow_network social_network=\"facebook\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]facebook[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"twitter\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]twitter[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"instagram\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]instagram[/et_pb_social_media_follow_network][/et_pb_social_media_follow][/et_pb_column][/et_pb_row][/et_pb_section]', 'Ice-Cream Shop', '', 'publish', 'closed', 'closed', '', '19-2', '', '', '2021-04-19 08:01:39', '2021-04-19 08:01:39', '', 0, 'http://localhost/demo/?page_id=19', 0, 'page', '', 0),
(20, 1, '2021-04-19 07:42:05', '2021-04-19 07:42:05', '<!-- wp:divi/placeholder /-->', '', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-04-19 07:42:05', '2021-04-19 07:42:05', '', 19, 'http://localhost/demo/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 'ice-cream-02', '', 'inherit', 'open', 'closed', '', 'ice-cream-02', '', '', '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 'ice-cream-06', '', 'inherit', 'open', 'closed', '', 'ice-cream-06', '', '', '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 'ice-cream-08', '', 'inherit', 'open', 'closed', '', 'ice-cream-08', '', '', '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 'ice-cream-01', '', 'inherit', 'open', 'closed', '', 'ice-cream-01', '', '', '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 'ice-cream-05', '', 'inherit', 'open', 'closed', '', 'ice-cream-05', '', '', '2021-04-19 07:44:24', '2021-04-19 07:44:24', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-04-19 07:44:26', '2021-04-19 07:44:26', '', 'ice-cream-04', '', 'inherit', 'open', 'closed', '', 'ice-cream-04', '', '', '2021-04-19 07:44:26', '2021-04-19 07:44:26', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2021-04-19 07:44:26', '2021-04-19 07:44:26', '', 'ice-cream-07', '', 'inherit', 'open', 'closed', '', 'ice-cream-07', '', '', '2021-04-19 07:44:26', '2021-04-19 07:44:26', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2021-04-19 07:44:32', '2021-04-19 07:44:32', '[et_pb_section fb_built=\"1\" _builder_version=\"4.9.3\" _module_preset=\"default\"][/et_pb_section]', '', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-04-19 07:44:32', '2021-04-19 07:44:32', '', 19, 'http://localhost/demo/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-04-19 07:45:38', '2021-04-19 07:45:38', '', 'Slide-1', '', 'publish', 'closed', 'closed', '', 'slide-1', '', '', '2021-04-19 07:45:38', '2021-04-19 07:45:38', '', 0, 'http://localhost/demo/?post_type=slick_slider&#038;p=29', 0, 'slick_slider', '', 0),
(30, 1, '2021-04-19 07:46:19', '2021-04-19 07:46:19', '', 'Slide-2', '', 'publish', 'closed', 'closed', '', 'slide-2', '', '', '2021-04-19 07:46:19', '2021-04-19 07:46:19', '', 0, 'http://localhost/demo/?post_type=slick_slider&#038;p=30', 0, 'slick_slider', '', 0),
(31, 1, '2021-04-19 07:47:03', '2021-04-19 07:47:03', '', 'Slide-3', '', 'publish', 'closed', 'closed', '', 'slide-3', '', '', '2021-04-19 07:47:03', '2021-04-19 07:47:03', '', 0, 'http://localhost/demo/?post_type=slick_slider&#038;p=31', 0, 'slick_slider', '', 0),
(32, 1, '2021-04-19 07:47:39', '2021-04-19 07:47:39', '', 'Slide-4', '', 'publish', 'closed', 'closed', '', 'slide-4', '', '', '2021-04-19 07:47:39', '2021-04-19 07:47:39', '', 0, 'http://localhost/demo/?post_type=slick_slider&#038;p=32', 0, 'slick_slider', '', 0),
(33, 1, '2021-04-19 07:48:34', '2021-04-19 07:48:34', '', 'Slide-5', '', 'publish', 'closed', 'closed', '', 'slide-5', '', '', '2021-04-19 07:48:34', '2021-04-19 07:48:34', '', 0, 'http://localhost/demo/?post_type=slick_slider&#038;p=33', 0, 'slick_slider', '', 0),
(34, 1, '2021-04-19 07:49:04', '2021-04-19 07:49:04', '', 'Slide-6', '', 'publish', 'closed', 'closed', '', 'slide-6', '', '', '2021-04-19 07:49:04', '2021-04-19 07:49:04', '', 0, 'http://localhost/demo/?post_type=slick_slider&#038;p=34', 0, 'slick_slider', '', 0),
(35, 1, '2021-04-19 07:49:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-19 07:49:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo/?post_type=slick_slider&p=35', 0, 'slick_slider', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(36, 1, '2021-04-19 07:51:29', '2021-04-19 07:51:29', '[et_pb_section fb_built=\"1\" admin_label=\"Header\" _builder_version=\"3.26.3\" custom_margin=\"||160px||false|false\" custom_margin_tablet=\"||0px||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"0px||||false|false\"][et_pb_row column_structure=\"3_5,2_5\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px||false|false\" border_width_left=\"150px\" border_color_left=\"rgba(0,0,0,0)\" border_width_left_tablet=\"0px\" border_width_left_phone=\"\" border_width_left_last_edited=\"on|desktop\"][et_pb_column type=\"3_5\" _builder_version=\"3.26.3\" background_color=\"#ffbadd\" background_color_gradient_direction=\"90deg\" transform_translate_linked=\"off\" custom_padding=\"60px|40px|||false|false\" custom_padding_tablet=\"40px|40px||40px|false|true\" custom_padding_phone=\"|20px||20px|false|true\" custom_padding_last_edited=\"on|phone\" box_shadow_vertical_tablet=\"-200px\" box_shadow_vertical_phone=\"-100px\" box_shadow_vertical_last_edited=\"on|phone\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"Prompt|900|||||||\" header_text_color=\"#000000\" header_font_size=\"150px\" header_letter_spacing=\"7px\" z_index=\"1\" custom_margin=\"|||-150px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"80px\" header_font_size_phone=\"60px\" header_font_size_last_edited=\"on|phone\" header_letter_spacing_tablet=\"0px\" header_letter_spacing_phone=\"\" header_letter_spacing_last_edited=\"on|tablet\"]<h1>Ice Cream Shop</h1>[/et_pb_text][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png\" _builder_version=\"3.26.3\" transform_scale_tablet=\"\" transform_scale_phone=\"\" transform_scale_last_edited=\"on|desktop\" transform_translate=\"120px|0px\" transform_translate_tablet=\"0px|0px\" transform_translate_phone=\"\" transform_translate_last_edited=\"on|tablet\" transform_translate_linked=\"off\" transform_rotate_tablet=\"\" transform_rotate_phone=\"\" transform_rotate_last_edited=\"on|desktop\" transform_skew_tablet=\"\" transform_skew_phone=\"\" transform_skew_last_edited=\"on|desktop\" transform_origin_tablet=\"\" transform_origin_phone=\"\" transform_origin_last_edited=\"on|desktop\" transform_styles_last_edited=\"on|tablet\" max_width=\"400px\" max_width_tablet=\"250px\" max_width_phone=\"180px\" max_width_last_edited=\"on|desktop\" module_alignment=\"right\" custom_margin=\"-440px||-260px||false|false\" custom_margin_tablet=\"-50px||-160px||false|false\" custom_margin_phone=\"||-110px||false|false\" custom_margin_last_edited=\"on|phone\" transform_styles_tablet=\"\" transform_styles_phone=\"\" module_alignment_tablet=\"center\" module_alignment_phone=\"\" module_alignment_last_edited=\"on|desktop\"][/et_pb_image][/et_pb_column][et_pb_column type=\"2_5\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|800|||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_color=\"#00d2d6\" z_index=\"1\" background_layout=\"dark\" custom_margin=\"|-4vw|||false|false\" custom_margin_tablet=\"|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|tablet\" custom_padding=\"80px|40px|60px|40px|false|true\" custom_padding_tablet=\"\" custom_padding_phone=\"40px|20px|40px|20px|true|true\" custom_padding_last_edited=\"on|phone\" locked=\"off\"]<p>5678 Extra Rd<br /> San Francisco, CA 96120</p>\n<p>Open 11am to 11pm Everyday</p>[/et_pb_text][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"Prompt|800|||||||\" header_2_text_color=\"#f76538\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"80px||||false|false\" custom_margin_tablet=\"0px||||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"|||40px|false|false\" custom_padding_tablet=\"|||0px|false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|desktop\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" text_text_align=\"right\" locked=\"off\" text_text_align_tablet=\"left\" text_text_align_last_edited=\"on|desktop\"]<h2>Made Locally!</h2>\n<p>Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo ega.</p>[/et_pb_text][et_pb_button button_text=\"Pre Order\" button_alignment=\"right\" button_alignment_tablet=\"left\" button_alignment_phone=\"\" button_alignment_last_edited=\"on|desktop\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"About\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"#ffffff\" background_color_gradient_end=\"#f4f4f4\" background_color_gradient_start_position=\"86%\" custom_margin=\"||||false|false\" custom_padding=\"||10vw||false|false\" bottom_divider_style=\"waves\" bottom_divider_color=\"#ffffff\" bottom_divider_height=\"10vw\"][et_pb_row _builder_version=\"3.26.3\" custom_padding=\"||0px|||\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" max_width=\"800px\" module_alignment=\"center\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2><strong>Small Batch Ice Cream </strong>Made in San Francisco</h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row column_structure=\"1_3,1_3,1_3\" _builder_version=\"3.26.3\" custom_padding=\"25px|||||\"][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\"]<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. </p>[/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Services\" _builder_version=\"3.26.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" z_index=\"10\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|900|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"140px\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"|-92px|0px||false|false\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|desktop\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2>Visit<br /> Order<br /> Join!</h2>[/et_pb_text][et_pb_button button_text=\"Pre Order Online or by Phone\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg\" _builder_version=\"3.26.3\" custom_margin=\"|||-15vw|false|false\" custom_margin_tablet=\"|||0vw|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg\" force_fullwidth=\"on\" _builder_version=\"3.26.3\" custom_margin=\"-40px|-10vw|||false|false\" custom_margin_tablet=\"0px|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_text_color=\"#ff6f7e\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" custom_margin=\"150px||0px||false|false\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Join us</h4>\n<h2>Join the <strong>Pint Club!</strong></h2>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>[/et_pb_text][et_pb_button button_text=\"Join Today\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg\" _builder_version=\"3.26.3\" max_width=\"360px\" max_width_tablet=\"100%\" max_width_phone=\"\" max_width_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px|||\"][et_pb_row _builder_version=\"3.26.3\" z_index=\"10\" max_width=\"none\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"150px\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"40px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h2>Fresh.<br /> Seasonal.<strong><br /> Local.</strong></h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row _builder_version=\"3.26.3\" width=\"100%\" max_width=\"none\" custom_margin=\"||||false|false\" custom_padding=\"||||false|false\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg\" _builder_version=\"3.26.3\" custom_margin=\"-20vw||||false|false\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Flavour\" _builder_version=\"3.25.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" background_color=\"#ffa256\" custom_padding=\"0px|40px|0px|40px|true|true\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png\" align=\"center\" _builder_version=\"3.26.3\" max_width_tablet=\"200px\" max_width_phone=\"120px\" max_width_last_edited=\"off|phone\" locked=\"off\" max_width__hover_enabled=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_layout=\"dark\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>July</h4>\n<h2><strong>Orange</strong> Chocolate</h2>[/et_pb_text][et_pb_button button_text=\"Purchase\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" z_index=\"1\" custom_margin=\"|-40px|0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" custom_padding=\"150px||||false|false\" custom_padding_tablet=\"0px||||false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|tablet\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Highlight</h4>\n<h2><strong>Flavor</strong> Of the Month.</h2>[/et_pb_text][et_pb_button button_text=\"View All Seasonal Flavors\" button_alignment=\"left\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ffa256\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#000000\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" custom_padding_last_edited=\"off|phone\" admin_label=\"Footer\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"rgba(255,186,221,0)\" background_color_gradient_end=\"#ffbadd\" background_color_gradient_direction=\"90deg\" background_color_gradient_start_position=\"60%\" background_color_gradient_end_position=\"0%\" background_color_gradient_overlays_image=\"on\" background_image=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg\" background_size=\"contain\" custom_padding=\"12vw||12vw||true|false\" custom_padding_tablet=\"50px|||\" custom_padding_phone=\"30px||\"][et_pb_row custom_padding_last_edited=\"on|tablet\" _builder_version=\"3.26.3\" background_color=\"#000000\" max_width=\"700px\" custom_padding=\"80px|80px|80px|80px|true|true\" custom_padding_tablet=\"60px|60px|60px|60px\" custom_padding_phone=\"40px|20px|40px|20px|true|true\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" background_layout=\"dark\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Subscribe To Get a Free Month</h4>\n<h2>1st Month of Pint Club <strong>Membership is Free!</strong></h2>[/et_pb_text][et_pb_signup mailchimp_list=\"elegantthemestest|1ea2bbd026\" layout=\"top_bottom\" first_name_field=\"off\" last_name_field=\"off\" admin_label=\"Email Optin\" _builder_version=\"3.26.3\" header_level=\"h3\" header_font=\"Prompt|700|||||||\" header_font_size=\"30px\" header_line_height=\"1.2em\" body_font=\"|600|||||||\" body_line_height=\"1.8em\" form_field_font=\"Prompt||||||||\" use_background_color=\"off\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ff608d\" button_border_width=\"10px\" button_border_color=\"rgba(0,0,0,0)\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_margin=\"|||-20px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"\" header_font_size_phone=\"18px\" header_font_size_last_edited=\"on|phone\" button_bg_color_last_edited=\"off|desktop\" border_radii_fields=\"on|0px|0px|0px|0px\" button_text_color__hover=\"#ffffff\" button_bg_color__hover=\"#ffbbc8\" button_bg_color__hover_enabled=\"on\" button_border_color__hover=\"rgba(0,0,0,0)\" button_bg_enable_color__hover=\"on\"][/et_pb_signup][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Footer\" _builder_version=\"3.26.3\" locked=\"off\"][et_pb_row _builder_version=\"3.25.3\" locked=\"off\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" locked=\"off\"]<h4>Follow us on social Media.</h4>[/et_pb_text][et_pb_social_media_follow _builder_version=\"3.25.3\" text_orientation=\"center\"][et_pb_social_media_follow_network social_network=\"facebook\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]facebook[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"twitter\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]twitter[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"instagram\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]instagram[/et_pb_social_media_follow_network][/et_pb_social_media_follow][/et_pb_column][/et_pb_row][/et_pb_section]', '', '', 'trash', 'closed', 'closed', '', '36-2__trashed', '', '', '2021-04-19 07:52:19', '2021-04-19 07:52:19', '', 0, 'http://localhost/demo/?page_id=36', 0, 'page', '', 0),
(37, 1, '2021-04-19 07:50:36', '2021-04-19 07:50:36', '<!-- wp:divi/placeholder /-->', '', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-04-19 07:50:36', '2021-04-19 07:50:36', '', 36, 'http://localhost/demo/?p=37', 0, 'revision', '', 0),
(38, 1, '2021-04-19 07:51:29', '2021-04-19 07:51:29', '[et_pb_section fb_built=\"1\" admin_label=\"Header\" _builder_version=\"3.26.3\" custom_margin=\"||160px||false|false\" custom_margin_tablet=\"||0px||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"0px||||false|false\"][et_pb_row column_structure=\"3_5,2_5\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px||false|false\" border_width_left=\"150px\" border_color_left=\"rgba(0,0,0,0)\" border_width_left_tablet=\"0px\" border_width_left_phone=\"\" border_width_left_last_edited=\"on|desktop\"][et_pb_column type=\"3_5\" _builder_version=\"3.26.3\" background_color=\"#ffbadd\" background_color_gradient_direction=\"90deg\" transform_translate_linked=\"off\" custom_padding=\"60px|40px|||false|false\" custom_padding_tablet=\"40px|40px||40px|false|true\" custom_padding_phone=\"|20px||20px|false|true\" custom_padding_last_edited=\"on|phone\" box_shadow_vertical_tablet=\"-200px\" box_shadow_vertical_phone=\"-100px\" box_shadow_vertical_last_edited=\"on|phone\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"Prompt|900|||||||\" header_text_color=\"#000000\" header_font_size=\"150px\" header_letter_spacing=\"7px\" z_index=\"1\" custom_margin=\"|||-150px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"80px\" header_font_size_phone=\"60px\" header_font_size_last_edited=\"on|phone\" header_letter_spacing_tablet=\"0px\" header_letter_spacing_phone=\"\" header_letter_spacing_last_edited=\"on|tablet\"]<h1>Ice Cream Shop</h1>[/et_pb_text][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png\" _builder_version=\"3.26.3\" transform_scale_tablet=\"\" transform_scale_phone=\"\" transform_scale_last_edited=\"on|desktop\" transform_translate=\"120px|0px\" transform_translate_tablet=\"0px|0px\" transform_translate_phone=\"\" transform_translate_last_edited=\"on|tablet\" transform_translate_linked=\"off\" transform_rotate_tablet=\"\" transform_rotate_phone=\"\" transform_rotate_last_edited=\"on|desktop\" transform_skew_tablet=\"\" transform_skew_phone=\"\" transform_skew_last_edited=\"on|desktop\" transform_origin_tablet=\"\" transform_origin_phone=\"\" transform_origin_last_edited=\"on|desktop\" transform_styles_last_edited=\"on|tablet\" max_width=\"400px\" max_width_tablet=\"250px\" max_width_phone=\"180px\" max_width_last_edited=\"on|desktop\" module_alignment=\"right\" custom_margin=\"-440px||-260px||false|false\" custom_margin_tablet=\"-50px||-160px||false|false\" custom_margin_phone=\"||-110px||false|false\" custom_margin_last_edited=\"on|phone\" transform_styles_tablet=\"\" transform_styles_phone=\"\" module_alignment_tablet=\"center\" module_alignment_phone=\"\" module_alignment_last_edited=\"on|desktop\"][/et_pb_image][/et_pb_column][et_pb_column type=\"2_5\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|800|||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_color=\"#00d2d6\" z_index=\"1\" background_layout=\"dark\" custom_margin=\"|-4vw|||false|false\" custom_margin_tablet=\"|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|tablet\" custom_padding=\"80px|40px|60px|40px|false|true\" custom_padding_tablet=\"\" custom_padding_phone=\"40px|20px|40px|20px|true|true\" custom_padding_last_edited=\"on|phone\" locked=\"off\"]<p>5678 Extra Rd<br /> San Francisco, CA 96120</p>\n<p>Open 11am to 11pm Everyday</p>[/et_pb_text][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"Prompt|800|||||||\" header_2_text_color=\"#f76538\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"80px||||false|false\" custom_margin_tablet=\"0px||||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"|||40px|false|false\" custom_padding_tablet=\"|||0px|false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|desktop\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" text_text_align=\"right\" locked=\"off\" text_text_align_tablet=\"left\" text_text_align_last_edited=\"on|desktop\"]<h2>Made Locally!</h2>\n<p>Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo ega.</p>[/et_pb_text][et_pb_button button_text=\"Pre Order\" button_alignment=\"right\" button_alignment_tablet=\"left\" button_alignment_phone=\"\" button_alignment_last_edited=\"on|desktop\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"About\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"#ffffff\" background_color_gradient_end=\"#f4f4f4\" background_color_gradient_start_position=\"86%\" custom_margin=\"||||false|false\" custom_padding=\"||10vw||false|false\" bottom_divider_style=\"waves\" bottom_divider_color=\"#ffffff\" bottom_divider_height=\"10vw\"][et_pb_row _builder_version=\"3.26.3\" custom_padding=\"||0px|||\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" max_width=\"800px\" module_alignment=\"center\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2><strong>Small Batch Ice Cream </strong>Made in San Francisco</h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row column_structure=\"1_3,1_3,1_3\" _builder_version=\"3.26.3\" custom_padding=\"25px|||||\"][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\"]<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. </p>[/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Services\" _builder_version=\"3.26.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" z_index=\"10\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|900|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"140px\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"|-92px|0px||false|false\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|desktop\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2>Visit<br /> Order<br /> Join!</h2>[/et_pb_text][et_pb_button button_text=\"Pre Order Online or by Phone\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg\" _builder_version=\"3.26.3\" custom_margin=\"|||-15vw|false|false\" custom_margin_tablet=\"|||0vw|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg\" force_fullwidth=\"on\" _builder_version=\"3.26.3\" custom_margin=\"-40px|-10vw|||false|false\" custom_margin_tablet=\"0px|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_text_color=\"#ff6f7e\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" custom_margin=\"150px||0px||false|false\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Join us</h4>\n<h2>Join the <strong>Pint Club!</strong></h2>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>[/et_pb_text][et_pb_button button_text=\"Join Today\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg\" _builder_version=\"3.26.3\" max_width=\"360px\" max_width_tablet=\"100%\" max_width_phone=\"\" max_width_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px|||\"][et_pb_row _builder_version=\"3.26.3\" z_index=\"10\" max_width=\"none\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"150px\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"40px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h2>Fresh.<br /> Seasonal.<strong><br /> Local.</strong></h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row _builder_version=\"3.26.3\" width=\"100%\" max_width=\"none\" custom_margin=\"||||false|false\" custom_padding=\"||||false|false\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg\" _builder_version=\"3.26.3\" custom_margin=\"-20vw||||false|false\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Flavour\" _builder_version=\"3.25.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" background_color=\"#ffa256\" custom_padding=\"0px|40px|0px|40px|true|true\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png\" align=\"center\" _builder_version=\"3.26.3\" max_width_tablet=\"200px\" max_width_phone=\"120px\" max_width_last_edited=\"off|phone\" locked=\"off\" max_width__hover_enabled=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_layout=\"dark\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>July</h4>\n<h2><strong>Orange</strong> Chocolate</h2>[/et_pb_text][et_pb_button button_text=\"Purchase\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" z_index=\"1\" custom_margin=\"|-40px|0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" custom_padding=\"150px||||false|false\" custom_padding_tablet=\"0px||||false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|tablet\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Highlight</h4>\n<h2><strong>Flavor</strong> Of the Month.</h2>[/et_pb_text][et_pb_button button_text=\"View All Seasonal Flavors\" button_alignment=\"left\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ffa256\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#000000\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" custom_padding_last_edited=\"off|phone\" admin_label=\"Footer\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"rgba(255,186,221,0)\" background_color_gradient_end=\"#ffbadd\" background_color_gradient_direction=\"90deg\" background_color_gradient_start_position=\"60%\" background_color_gradient_end_position=\"0%\" background_color_gradient_overlays_image=\"on\" background_image=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg\" background_size=\"contain\" custom_padding=\"12vw||12vw||true|false\" custom_padding_tablet=\"50px|||\" custom_padding_phone=\"30px||\"][et_pb_row custom_padding_last_edited=\"on|tablet\" _builder_version=\"3.26.3\" background_color=\"#000000\" max_width=\"700px\" custom_padding=\"80px|80px|80px|80px|true|true\" custom_padding_tablet=\"60px|60px|60px|60px\" custom_padding_phone=\"40px|20px|40px|20px|true|true\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" background_layout=\"dark\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Subscribe To Get a Free Month</h4>\n<h2>1st Month of Pint Club <strong>Membership is Free!</strong></h2>[/et_pb_text][et_pb_signup mailchimp_list=\"elegantthemestest|1ea2bbd026\" layout=\"top_bottom\" first_name_field=\"off\" last_name_field=\"off\" admin_label=\"Email Optin\" _builder_version=\"3.26.3\" header_level=\"h3\" header_font=\"Prompt|700|||||||\" header_font_size=\"30px\" header_line_height=\"1.2em\" body_font=\"|600|||||||\" body_line_height=\"1.8em\" form_field_font=\"Prompt||||||||\" use_background_color=\"off\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ff608d\" button_border_width=\"10px\" button_border_color=\"rgba(0,0,0,0)\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_margin=\"|||-20px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"\" header_font_size_phone=\"18px\" header_font_size_last_edited=\"on|phone\" button_bg_color_last_edited=\"off|desktop\" border_radii_fields=\"on|0px|0px|0px|0px\" button_text_color__hover=\"#ffffff\" button_bg_color__hover=\"#ffbbc8\" button_bg_color__hover_enabled=\"on\" button_border_color__hover=\"rgba(0,0,0,0)\" button_bg_enable_color__hover=\"on\"][/et_pb_signup][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Footer\" _builder_version=\"3.26.3\" locked=\"off\"][et_pb_row _builder_version=\"3.25.3\" locked=\"off\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" locked=\"off\"]<h4>Follow us on social Media.</h4>[/et_pb_text][et_pb_social_media_follow _builder_version=\"3.25.3\" text_orientation=\"center\"][et_pb_social_media_follow_network social_network=\"facebook\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]facebook[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"twitter\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]twitter[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"instagram\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]instagram[/et_pb_social_media_follow_network][/et_pb_social_media_follow][/et_pb_column][/et_pb_row][/et_pb_section]', '', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-04-19 07:51:29', '2021-04-19 07:51:29', '', 36, 'http://localhost/demo/?p=38', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2021-04-19 07:51:49', '2021-04-19 07:51:49', '[et_pb_section fb_built=\"1\" admin_label=\"Header\" _builder_version=\"3.26.3\" custom_margin=\"||160px||false|false\" custom_margin_tablet=\"||0px||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"0px||||false|false\"][et_pb_row column_structure=\"3_5,2_5\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px||false|false\" border_width_left=\"150px\" border_color_left=\"rgba(0,0,0,0)\" border_width_left_tablet=\"0px\" border_width_left_phone=\"\" border_width_left_last_edited=\"on|desktop\"][et_pb_column type=\"3_5\" _builder_version=\"3.26.3\" background_color=\"#ffbadd\" background_color_gradient_direction=\"90deg\" transform_translate_linked=\"off\" custom_padding=\"60px|40px|||false|false\" custom_padding_tablet=\"40px|40px||40px|false|true\" custom_padding_phone=\"|20px||20px|false|true\" custom_padding_last_edited=\"on|phone\" box_shadow_vertical_tablet=\"-200px\" box_shadow_vertical_phone=\"-100px\" box_shadow_vertical_last_edited=\"on|phone\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"Prompt|900|||||||\" header_text_color=\"#000000\" header_font_size=\"150px\" header_letter_spacing=\"7px\" z_index=\"1\" custom_margin=\"|||-150px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"80px\" header_font_size_phone=\"60px\" header_font_size_last_edited=\"on|phone\" header_letter_spacing_tablet=\"0px\" header_letter_spacing_phone=\"\" header_letter_spacing_last_edited=\"on|tablet\"]<h1>Ice Cream Shop</h1>[/et_pb_text][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png\" _builder_version=\"3.26.3\" transform_scale_tablet=\"\" transform_scale_phone=\"\" transform_scale_last_edited=\"on|desktop\" transform_translate=\"120px|0px\" transform_translate_tablet=\"0px|0px\" transform_translate_phone=\"\" transform_translate_last_edited=\"on|tablet\" transform_translate_linked=\"off\" transform_rotate_tablet=\"\" transform_rotate_phone=\"\" transform_rotate_last_edited=\"on|desktop\" transform_skew_tablet=\"\" transform_skew_phone=\"\" transform_skew_last_edited=\"on|desktop\" transform_origin_tablet=\"\" transform_origin_phone=\"\" transform_origin_last_edited=\"on|desktop\" transform_styles_last_edited=\"on|tablet\" max_width=\"400px\" max_width_tablet=\"250px\" max_width_phone=\"180px\" max_width_last_edited=\"on|desktop\" module_alignment=\"right\" custom_margin=\"-440px||-260px||false|false\" custom_margin_tablet=\"-50px||-160px||false|false\" custom_margin_phone=\"||-110px||false|false\" custom_margin_last_edited=\"on|phone\" transform_styles_tablet=\"\" transform_styles_phone=\"\" module_alignment_tablet=\"center\" module_alignment_phone=\"\" module_alignment_last_edited=\"on|desktop\"][/et_pb_image][/et_pb_column][et_pb_column type=\"2_5\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|800|||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_color=\"#00d2d6\" z_index=\"1\" background_layout=\"dark\" custom_margin=\"|-4vw|||false|false\" custom_margin_tablet=\"|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|tablet\" custom_padding=\"80px|40px|60px|40px|false|true\" custom_padding_tablet=\"\" custom_padding_phone=\"40px|20px|40px|20px|true|true\" custom_padding_last_edited=\"on|phone\" locked=\"off\"]<p>5678 Extra Rd<br /> San Francisco, CA 96120</p>\n<p>Open 11am to 11pm Everyday</p>[/et_pb_text][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"Prompt|800|||||||\" header_2_text_color=\"#f76538\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"80px||||false|false\" custom_margin_tablet=\"0px||||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"|||40px|false|false\" custom_padding_tablet=\"|||0px|false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|desktop\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" text_text_align=\"right\" locked=\"off\" text_text_align_tablet=\"left\" text_text_align_last_edited=\"on|desktop\"]<h2>Made Locally!</h2>\n<p>Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo ega.</p>[/et_pb_text][et_pb_button button_text=\"Pre Order\" button_alignment=\"right\" button_alignment_tablet=\"left\" button_alignment_phone=\"\" button_alignment_last_edited=\"on|desktop\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"About\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"#ffffff\" background_color_gradient_end=\"#f4f4f4\" background_color_gradient_start_position=\"86%\" custom_margin=\"||||false|false\" custom_padding=\"||10vw||false|false\" bottom_divider_style=\"waves\" bottom_divider_color=\"#ffffff\" bottom_divider_height=\"10vw\"][et_pb_row _builder_version=\"3.26.3\" custom_padding=\"||0px|||\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" max_width=\"800px\" module_alignment=\"center\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2><strong>Small Batch Ice Cream </strong>Made in San Francisco</h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row column_structure=\"1_3,1_3,1_3\" _builder_version=\"3.26.3\" custom_padding=\"25px|||||\"][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\"]<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. </p>[/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Services\" _builder_version=\"3.26.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" z_index=\"10\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|900|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"140px\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"|-92px|0px||false|false\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|desktop\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2>Visit<br /> Order<br /> Join!</h2>[/et_pb_text][et_pb_button button_text=\"Pre Order Online or by Phone\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg\" _builder_version=\"3.26.3\" custom_margin=\"|||-15vw|false|false\" custom_margin_tablet=\"|||0vw|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg\" force_fullwidth=\"on\" _builder_version=\"3.26.3\" custom_margin=\"-40px|-10vw|||false|false\" custom_margin_tablet=\"0px|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_text_color=\"#ff6f7e\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" custom_margin=\"150px||0px||false|false\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Join us</h4>\n<h2>Join the <strong>Pint Club!</strong></h2>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>[/et_pb_text][et_pb_button button_text=\"Join Today\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg\" _builder_version=\"3.26.3\" max_width=\"360px\" max_width_tablet=\"100%\" max_width_phone=\"\" max_width_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px|||\"][et_pb_row _builder_version=\"3.26.3\" z_index=\"10\" max_width=\"none\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"150px\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"40px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h2>Fresh.<br /> Seasonal.<strong><br /> Local.</strong></h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row _builder_version=\"3.26.3\" width=\"100%\" max_width=\"none\" custom_margin=\"||||false|false\" custom_padding=\"||||false|false\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg\" _builder_version=\"3.26.3\" custom_margin=\"-20vw||||false|false\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Flavour\" _builder_version=\"3.25.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" background_color=\"#ffa256\" custom_padding=\"0px|40px|0px|40px|true|true\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png\" align=\"center\" _builder_version=\"3.26.3\" max_width_tablet=\"200px\" max_width_phone=\"120px\" max_width_last_edited=\"off|phone\" locked=\"off\" max_width__hover_enabled=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_layout=\"dark\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>July</h4>\n<h2><strong>Orange</strong> Chocolate</h2>[/et_pb_text][et_pb_button button_text=\"Purchase\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" z_index=\"1\" custom_margin=\"|-40px|0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" custom_padding=\"150px||||false|false\" custom_padding_tablet=\"0px||||false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|tablet\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Highlight</h4>\n<h2><strong>Flavor</strong> Of the Month.</h2>[/et_pb_text][et_pb_button button_text=\"View All Seasonal Flavors\" button_alignment=\"left\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ffa256\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#000000\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" custom_padding_last_edited=\"off|phone\" admin_label=\"Footer\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"rgba(255,186,221,0)\" background_color_gradient_end=\"#ffbadd\" background_color_gradient_direction=\"90deg\" background_color_gradient_start_position=\"60%\" background_color_gradient_end_position=\"0%\" background_color_gradient_overlays_image=\"on\" background_image=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg\" background_size=\"contain\" custom_padding=\"12vw||12vw||true|false\" custom_padding_tablet=\"50px|||\" custom_padding_phone=\"30px||\"][et_pb_row custom_padding_last_edited=\"on|tablet\" _builder_version=\"3.26.3\" background_color=\"#000000\" max_width=\"700px\" custom_padding=\"80px|80px|80px|80px|true|true\" custom_padding_tablet=\"60px|60px|60px|60px\" custom_padding_phone=\"40px|20px|40px|20px|true|true\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" background_layout=\"dark\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Subscribe To Get a Free Month</h4>\n<h2>1st Month of Pint Club <strong>Membership is Free!</strong></h2>[/et_pb_text][et_pb_signup mailchimp_list=\"elegantthemestest|1ea2bbd026\" layout=\"top_bottom\" first_name_field=\"off\" last_name_field=\"off\" admin_label=\"Email Optin\" _builder_version=\"3.26.3\" header_level=\"h3\" header_font=\"Prompt|700|||||||\" header_font_size=\"30px\" header_line_height=\"1.2em\" body_font=\"|600|||||||\" body_line_height=\"1.8em\" form_field_font=\"Prompt||||||||\" use_background_color=\"off\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ff608d\" button_border_width=\"10px\" button_border_color=\"rgba(0,0,0,0)\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_margin=\"|||-20px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"\" header_font_size_phone=\"18px\" header_font_size_last_edited=\"on|phone\" button_bg_color_last_edited=\"off|desktop\" border_radii_fields=\"on|0px|0px|0px|0px\" button_text_color__hover=\"#ffffff\" button_bg_color__hover=\"#ffbbc8\" button_bg_color__hover_enabled=\"on\" button_border_color__hover=\"rgba(0,0,0,0)\" button_bg_enable_color__hover=\"on\"][/et_pb_signup][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Footer\" _builder_version=\"3.26.3\" locked=\"off\"][et_pb_row _builder_version=\"3.25.3\" locked=\"off\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" locked=\"off\"]<h4>Follow us on social Media.</h4>[/et_pb_text][et_pb_social_media_follow _builder_version=\"3.25.3\" text_orientation=\"center\"][et_pb_social_media_follow_network social_network=\"facebook\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]facebook[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"twitter\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]twitter[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"instagram\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]instagram[/et_pb_social_media_follow_network][/et_pb_social_media_follow][/et_pb_column][/et_pb_row][/et_pb_section]', '', '', 'inherit', 'closed', 'closed', '', '36-autosave-v1', '', '', '2021-04-19 07:51:49', '2021-04-19 07:51:49', '', 36, 'http://localhost/demo/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-04-19 07:56:32', '2021-04-19 07:56:32', '[et_pb_section fb_built=\"1\" admin_label=\"Header\" _builder_version=\"3.26.3\" custom_margin=\"||160px||false|false\" custom_margin_tablet=\"||0px||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"0px||||false|false\"][et_pb_row column_structure=\"3_5,2_5\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px||false|false\" border_width_left=\"150px\" border_color_left=\"rgba(0,0,0,0)\" border_width_left_tablet=\"0px\" border_width_left_phone=\"\" border_width_left_last_edited=\"on|desktop\"][et_pb_column type=\"3_5\" _builder_version=\"3.26.3\" background_color=\"#ffbadd\" background_color_gradient_direction=\"90deg\" transform_translate_linked=\"off\" custom_padding=\"60px|40px|||false|false\" custom_padding_tablet=\"40px|40px||40px|false|true\" custom_padding_phone=\"|20px||20px|false|true\" custom_padding_last_edited=\"on|phone\" box_shadow_vertical_tablet=\"-200px\" box_shadow_vertical_phone=\"-100px\" box_shadow_vertical_last_edited=\"on|phone\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"Prompt|900|||||||\" header_text_color=\"#000000\" header_font_size=\"150px\" header_letter_spacing=\"7px\" z_index=\"1\" custom_margin=\"|||-150px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"80px\" header_font_size_phone=\"60px\" header_font_size_last_edited=\"on|phone\" header_letter_spacing_tablet=\"0px\" header_letter_spacing_phone=\"\" header_letter_spacing_last_edited=\"on|tablet\"]<h1>Ice Cream Shop</h1>[/et_pb_text][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png\" _builder_version=\"3.26.3\" transform_scale_tablet=\"\" transform_scale_phone=\"\" transform_scale_last_edited=\"on|desktop\" transform_translate=\"120px|0px\" transform_translate_tablet=\"0px|0px\" transform_translate_phone=\"\" transform_translate_last_edited=\"on|tablet\" transform_translate_linked=\"off\" transform_rotate_tablet=\"\" transform_rotate_phone=\"\" transform_rotate_last_edited=\"on|desktop\" transform_skew_tablet=\"\" transform_skew_phone=\"\" transform_skew_last_edited=\"on|desktop\" transform_origin_tablet=\"\" transform_origin_phone=\"\" transform_origin_last_edited=\"on|desktop\" transform_styles_last_edited=\"on|tablet\" max_width=\"400px\" max_width_tablet=\"250px\" max_width_phone=\"180px\" max_width_last_edited=\"on|desktop\" module_alignment=\"right\" custom_margin=\"-440px||-260px||false|false\" custom_margin_tablet=\"-50px||-160px||false|false\" custom_margin_phone=\"||-110px||false|false\" custom_margin_last_edited=\"on|phone\" transform_styles_tablet=\"\" transform_styles_phone=\"\" module_alignment_tablet=\"center\" module_alignment_phone=\"\" module_alignment_last_edited=\"on|desktop\"][/et_pb_image][/et_pb_column][et_pb_column type=\"2_5\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|800|||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_color=\"#00d2d6\" z_index=\"1\" background_layout=\"dark\" custom_margin=\"|-4vw|||false|false\" custom_margin_tablet=\"|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|tablet\" custom_padding=\"80px|40px|60px|40px|false|true\" custom_padding_tablet=\"\" custom_padding_phone=\"40px|20px|40px|20px|true|true\" custom_padding_last_edited=\"on|phone\" locked=\"off\"]<p>5678 Extra Rd<br /> San Francisco, CA 96120</p>\n<p>Open 11am to 11pm Everyday</p>[/et_pb_text][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"Prompt|800|||||||\" header_2_text_color=\"#f76538\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"80px||||false|false\" custom_margin_tablet=\"0px||||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"|||40px|false|false\" custom_padding_tablet=\"|||0px|false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|desktop\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" text_text_align=\"right\" locked=\"off\" text_text_align_tablet=\"left\" text_text_align_last_edited=\"on|desktop\"]<h2>Made Locally!</h2>\n<p>Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo ega.</p>[/et_pb_text][et_pb_button button_text=\"Pre Order\" button_alignment=\"right\" button_alignment_tablet=\"left\" button_alignment_phone=\"\" button_alignment_last_edited=\"on|desktop\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"About\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"#ffffff\" background_color_gradient_end=\"#f4f4f4\" background_color_gradient_start_position=\"86%\" custom_margin=\"||||false|false\" custom_padding=\"||10vw||false|false\" bottom_divider_style=\"waves\" bottom_divider_color=\"#ffffff\" bottom_divider_height=\"10vw\"][et_pb_row _builder_version=\"3.26.3\" custom_padding=\"||0px|||\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" max_width=\"800px\" module_alignment=\"center\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2><strong>Small Batch Ice Cream </strong>Made in San Francisco</h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row column_structure=\"1_3,1_3,1_3\" _builder_version=\"3.26.3\" custom_padding=\"25px|||||\"][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\"]<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. </p>[/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Services\" _builder_version=\"3.26.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" z_index=\"10\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|900|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"140px\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"|-92px|0px||false|false\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|desktop\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2>Visit<br /> Order<br /> Join!</h2>[/et_pb_text][et_pb_button button_text=\"Pre Order Online or by Phone\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg\" _builder_version=\"3.26.3\" custom_margin=\"|||-15vw|false|false\" custom_margin_tablet=\"|||0vw|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg\" force_fullwidth=\"on\" _builder_version=\"3.26.3\" custom_margin=\"-40px|-10vw|||false|false\" custom_margin_tablet=\"0px|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_text_color=\"#ff6f7e\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" custom_margin=\"150px||0px||false|false\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Join us</h4>\n<h2>Join the <strong>Pint Club!</strong></h2>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>[/et_pb_text][et_pb_button button_text=\"Join Today\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg\" _builder_version=\"3.26.3\" max_width=\"360px\" max_width_tablet=\"100%\" max_width_phone=\"\" max_width_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px|||\"][et_pb_row _builder_version=\"3.26.3\" z_index=\"10\" max_width=\"none\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"150px\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"40px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h2>Fresh.<br /> Seasonal.<strong><br /> Local.</strong></h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row _builder_version=\"3.26.3\" width=\"100%\" max_width=\"none\" custom_margin=\"||||false|false\" custom_padding=\"||||false|false\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg\" _builder_version=\"3.26.3\" custom_margin=\"-20vw||||false|false\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Flavour\" _builder_version=\"3.25.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" background_color=\"#ffa256\" custom_padding=\"0px|40px|0px|40px|true|true\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png\" align=\"center\" _builder_version=\"3.26.3\" max_width_tablet=\"200px\" max_width_phone=\"120px\" max_width_last_edited=\"off|phone\" locked=\"off\" max_width__hover_enabled=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_layout=\"dark\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>July</h4>\n<h2><strong>Orange</strong> Chocolate</h2>[/et_pb_text][et_pb_button button_text=\"Purchase\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" z_index=\"1\" custom_margin=\"|-40px|0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" custom_padding=\"150px||||false|false\" custom_padding_tablet=\"0px||||false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|tablet\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Highlight</h4>\n<h2><strong>Flavor</strong> Of the Month.</h2>[/et_pb_text][et_pb_button button_text=\"View All Seasonal Flavors\" button_alignment=\"left\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ffa256\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#000000\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" custom_padding_last_edited=\"off|phone\" admin_label=\"Footer\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"rgba(255,186,221,0)\" background_color_gradient_end=\"#ffbadd\" background_color_gradient_direction=\"90deg\" background_color_gradient_start_position=\"60%\" background_color_gradient_end_position=\"0%\" background_color_gradient_overlays_image=\"on\" background_image=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg\" background_size=\"contain\" custom_padding=\"12vw||12vw||true|false\" custom_padding_tablet=\"50px|||\" custom_padding_phone=\"30px||\"][et_pb_row custom_padding_last_edited=\"on|tablet\" _builder_version=\"3.26.3\" background_color=\"#000000\" max_width=\"700px\" custom_padding=\"80px|80px|80px|80px|true|true\" custom_padding_tablet=\"60px|60px|60px|60px\" custom_padding_phone=\"40px|20px|40px|20px|true|true\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" background_layout=\"dark\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Subscribe To Get a Free Month</h4>\n<h2>1st Month of Pint Club <strong>Membership is Free!</strong></h2>[/et_pb_text][et_pb_signup mailchimp_list=\"elegantthemestest|1ea2bbd026\" layout=\"top_bottom\" first_name_field=\"off\" last_name_field=\"off\" admin_label=\"Email Optin\" _builder_version=\"3.26.3\" header_level=\"h3\" header_font=\"Prompt|700|||||||\" header_font_size=\"30px\" header_line_height=\"1.2em\" body_font=\"|600|||||||\" body_line_height=\"1.8em\" form_field_font=\"Prompt||||||||\" use_background_color=\"off\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ff608d\" button_border_width=\"10px\" button_border_color=\"rgba(0,0,0,0)\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_margin=\"|||-20px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"\" header_font_size_phone=\"18px\" header_font_size_last_edited=\"on|phone\" button_bg_color_last_edited=\"off|desktop\" border_radii_fields=\"on|0px|0px|0px|0px\" button_text_color__hover=\"#ffffff\" button_bg_color__hover=\"#ffbbc8\" button_bg_color__hover_enabled=\"on\" button_border_color__hover=\"rgba(0,0,0,0)\" button_bg_enable_color__hover=\"on\"][/et_pb_signup][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Footer\" _builder_version=\"3.26.3\" locked=\"off\"][et_pb_row _builder_version=\"3.25.3\" locked=\"off\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" locked=\"off\"]<h4>Follow us on social Media.</h4>[/et_pb_text][et_pb_social_media_follow _builder_version=\"3.25.3\" text_orientation=\"center\"][et_pb_social_media_follow_network social_network=\"facebook\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]facebook[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"twitter\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]twitter[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"instagram\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]instagram[/et_pb_social_media_follow_network][/et_pb_social_media_follow][/et_pb_column][/et_pb_row][/et_pb_section]', '', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-04-19 07:56:32', '2021-04-19 07:56:32', '', 19, 'http://localhost/demo/?p=40', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(43, 1, '2021-04-19 07:58:34', '2021-04-19 07:58:34', '[et_pb_section fb_built=\"1\" admin_label=\"Header\" _builder_version=\"3.26.3\" custom_margin=\"||160px||false|false\" custom_margin_tablet=\"||0px||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"0px||||false|false\"][et_pb_row column_structure=\"3_5,2_5\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px||false|false\" border_width_left=\"150px\" border_color_left=\"rgba(0,0,0,0)\" border_width_left_tablet=\"0px\" border_width_left_phone=\"\" border_width_left_last_edited=\"on|desktop\"][et_pb_column type=\"3_5\" _builder_version=\"3.26.3\" background_color=\"#ffbadd\" background_color_gradient_direction=\"90deg\" transform_translate_linked=\"off\" custom_padding=\"60px|40px|||false|false\" custom_padding_tablet=\"40px|40px||40px|false|true\" custom_padding_phone=\"|20px||20px|false|true\" custom_padding_last_edited=\"on|phone\" box_shadow_vertical_tablet=\"-200px\" box_shadow_vertical_phone=\"-100px\" box_shadow_vertical_last_edited=\"on|phone\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"Prompt|900|||||||\" header_text_color=\"#000000\" header_font_size=\"150px\" header_letter_spacing=\"7px\" z_index=\"1\" custom_margin=\"|||-150px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"80px\" header_font_size_phone=\"60px\" header_font_size_last_edited=\"on|phone\" header_letter_spacing_tablet=\"0px\" header_letter_spacing_phone=\"\" header_letter_spacing_last_edited=\"on|tablet\"]<h1>Ice Cream Shop</h1>[/et_pb_text][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png\" _builder_version=\"3.26.3\" transform_scale_tablet=\"\" transform_scale_phone=\"\" transform_scale_last_edited=\"on|desktop\" transform_translate=\"120px|0px\" transform_translate_tablet=\"0px|0px\" transform_translate_phone=\"\" transform_translate_last_edited=\"on|tablet\" transform_translate_linked=\"off\" transform_rotate_tablet=\"\" transform_rotate_phone=\"\" transform_rotate_last_edited=\"on|desktop\" transform_skew_tablet=\"\" transform_skew_phone=\"\" transform_skew_last_edited=\"on|desktop\" transform_origin_tablet=\"\" transform_origin_phone=\"\" transform_origin_last_edited=\"on|desktop\" transform_styles_last_edited=\"on|tablet\" max_width=\"400px\" max_width_tablet=\"250px\" max_width_phone=\"180px\" max_width_last_edited=\"on|desktop\" module_alignment=\"right\" custom_margin=\"-440px||-260px||false|false\" custom_margin_tablet=\"-50px||-160px||false|false\" custom_margin_phone=\"||-110px||false|false\" custom_margin_last_edited=\"on|phone\" transform_styles_tablet=\"\" transform_styles_phone=\"\" module_alignment_tablet=\"center\" module_alignment_phone=\"\" module_alignment_last_edited=\"on|desktop\"][/et_pb_image][/et_pb_column][et_pb_column type=\"2_5\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|800|||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_color=\"#00d2d6\" z_index=\"1\" background_layout=\"dark\" custom_margin=\"|-4vw|||false|false\" custom_margin_tablet=\"|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|tablet\" custom_padding=\"80px|40px|60px|40px|false|true\" custom_padding_tablet=\"\" custom_padding_phone=\"40px|20px|40px|20px|true|true\" custom_padding_last_edited=\"on|phone\" locked=\"off\"]<p>5678 Extra Rd<br /> San Francisco, CA 96120</p>\n<p>Open 11am to 11pm Everyday</p>[/et_pb_text][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"Prompt|800|||||||\" header_2_text_color=\"#f76538\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"80px||||false|false\" custom_margin_tablet=\"0px||||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"|||40px|false|false\" custom_padding_tablet=\"|||0px|false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|desktop\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" text_text_align=\"right\" locked=\"off\" text_text_align_tablet=\"left\" text_text_align_last_edited=\"on|desktop\"]<h2>Made Locally!</h2>\n<p>Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo ega.</p>[/et_pb_text][et_pb_button button_text=\"Pre Order\" button_alignment=\"right\" button_alignment_tablet=\"left\" button_alignment_phone=\"\" button_alignment_last_edited=\"on|desktop\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"About\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"#ffffff\" background_color_gradient_end=\"#f4f4f4\" background_color_gradient_start_position=\"86%\" custom_margin=\"||||false|false\" custom_padding=\"||10vw||false|false\" bottom_divider_style=\"waves\" bottom_divider_color=\"#ffffff\" bottom_divider_height=\"10vw\"][et_pb_row _builder_version=\"3.26.3\" custom_padding=\"||0px|||\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" max_width=\"800px\" module_alignment=\"center\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2><strong>Small Batch Ice Cream </strong>Made in San Francisco</h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row column_structure=\"1_3,1_3,1_3\" _builder_version=\"3.26.3\" custom_padding=\"25px|||||\"][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\"]<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. </p>[/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Services\" _builder_version=\"3.26.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" z_index=\"10\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|900|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"140px\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"|-92px|0px||false|false\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|desktop\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2>Visit<br /> Order<br /> Join!</h2>[/et_pb_text][et_pb_button button_text=\"Pre Order Online or by Phone\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg\" _builder_version=\"3.26.3\" custom_margin=\"|||-15vw|false|false\" custom_margin_tablet=\"|||0vw|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg\" force_fullwidth=\"on\" _builder_version=\"3.26.3\" custom_margin=\"-40px|-10vw|||false|false\" custom_margin_tablet=\"0px|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_text_color=\"#ff6f7e\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" custom_margin=\"150px||0px||false|false\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Join us</h4>\n<h2>Join the <strong>Pint Club!</strong></h2>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>[/et_pb_text][et_pb_button button_text=\"Join Today\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg\" _builder_version=\"3.26.3\" max_width=\"360px\" max_width_tablet=\"100%\" max_width_phone=\"\" max_width_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px|||\"][et_pb_row _builder_version=\"3.26.3\" z_index=\"10\" max_width=\"none\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"150px\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"40px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h2>Fresh.<br /> Seasonal.<strong><br /> Local.</strong></h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row _builder_version=\"3.26.3\" width=\"100%\" max_width=\"none\" custom_margin=\"||||false|false\" custom_padding=\"||||false|false\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg\" _builder_version=\"3.26.3\" custom_margin=\"-20vw||||false|false\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"4.9.3\" _module_preset=\"default\"][et_pb_row _builder_version=\"4.9.3\" _module_preset=\"default\"][et_pb_column _builder_version=\"4.9.3\" _module_preset=\"default\" type=\"4_4\"][et_pb_code _builder_version=\"4.9.3\" _module_preset=\"default\" hover_enabled=\"0\" sticky_enabled=\"0\"][slick-slider design=\"design-1\"][/et_pb_code][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Flavour\" _builder_version=\"3.25.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" background_color=\"#ffa256\" custom_padding=\"0px|40px|0px|40px|true|true\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png\" align=\"center\" _builder_version=\"3.26.3\" max_width_tablet=\"200px\" max_width_phone=\"120px\" max_width_last_edited=\"off|phone\" locked=\"off\" max_width__hover_enabled=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_layout=\"dark\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>July</h4>\n<h2><strong>Orange</strong> Chocolate</h2>[/et_pb_text][et_pb_button button_text=\"Purchase\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" z_index=\"1\" custom_margin=\"|-40px|0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" custom_padding=\"150px||||false|false\" custom_padding_tablet=\"0px||||false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|tablet\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Highlight</h4>\n<h2><strong>Flavor</strong> Of the Month.</h2>[/et_pb_text][et_pb_button button_text=\"View All Seasonal Flavors\" button_alignment=\"left\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ffa256\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#000000\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" custom_padding_last_edited=\"off|phone\" admin_label=\"Footer\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"rgba(255,186,221,0)\" background_color_gradient_end=\"#ffbadd\" background_color_gradient_direction=\"90deg\" background_color_gradient_start_position=\"60%\" background_color_gradient_end_position=\"0%\" background_color_gradient_overlays_image=\"on\" background_image=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg\" background_size=\"contain\" custom_padding=\"12vw||12vw||true|false\" custom_padding_tablet=\"50px|||\" custom_padding_phone=\"30px||\"][et_pb_row custom_padding_last_edited=\"on|tablet\" _builder_version=\"3.26.3\" background_color=\"#000000\" max_width=\"700px\" custom_padding=\"80px|80px|80px|80px|true|true\" custom_padding_tablet=\"60px|60px|60px|60px\" custom_padding_phone=\"40px|20px|40px|20px|true|true\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" background_layout=\"dark\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Subscribe To Get a Free Month</h4>\n<h2>1st Month of Pint Club <strong>Membership is Free!</strong></h2>[/et_pb_text][et_pb_signup mailchimp_list=\"elegantthemestest|1ea2bbd026\" layout=\"top_bottom\" first_name_field=\"off\" last_name_field=\"off\" admin_label=\"Email Optin\" _builder_version=\"3.26.3\" header_level=\"h3\" header_font=\"Prompt|700|||||||\" header_font_size=\"30px\" header_line_height=\"1.2em\" body_font=\"|600|||||||\" body_line_height=\"1.8em\" form_field_font=\"Prompt||||||||\" use_background_color=\"off\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ff608d\" button_border_width=\"10px\" button_border_color=\"rgba(0,0,0,0)\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_margin=\"|||-20px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"\" header_font_size_phone=\"18px\" header_font_size_last_edited=\"on|phone\" button_bg_color_last_edited=\"off|desktop\" border_radii_fields=\"on|0px|0px|0px|0px\" button_text_color__hover=\"#ffffff\" button_bg_color__hover=\"#ffbbc8\" button_bg_color__hover_enabled=\"on\" button_border_color__hover=\"rgba(0,0,0,0)\" button_bg_enable_color__hover=\"on\"][/et_pb_signup][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Footer\" _builder_version=\"3.26.3\" locked=\"off\"][et_pb_row _builder_version=\"3.25.3\" locked=\"off\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" locked=\"off\"]<h4>Follow us on social Media.</h4>[/et_pb_text][et_pb_social_media_follow _builder_version=\"3.25.3\" text_orientation=\"center\"][et_pb_social_media_follow_network social_network=\"facebook\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]facebook[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"twitter\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]twitter[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"instagram\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]instagram[/et_pb_social_media_follow_network][/et_pb_social_media_follow][/et_pb_column][/et_pb_row][/et_pb_section]', '', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-04-19 07:58:34', '2021-04-19 07:58:34', '', 19, 'http://localhost/demo/?p=43', 0, 'revision', '', 0),
(44, 1, '2021-04-19 08:01:39', '2021-04-19 08:01:39', '[et_pb_section fb_built=\"1\" admin_label=\"Header\" _builder_version=\"3.26.3\" custom_margin=\"||160px||false|false\" custom_margin_tablet=\"||0px||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"0px||||false|false\"][et_pb_row column_structure=\"3_5,2_5\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px||false|false\" border_width_left=\"150px\" border_color_left=\"rgba(0,0,0,0)\" border_width_left_tablet=\"0px\" border_width_left_phone=\"\" border_width_left_last_edited=\"on|desktop\"][et_pb_column type=\"3_5\" _builder_version=\"3.26.3\" background_color=\"#ffbadd\" background_color_gradient_direction=\"90deg\" transform_translate_linked=\"off\" custom_padding=\"60px|40px|||false|false\" custom_padding_tablet=\"40px|40px||40px|false|true\" custom_padding_phone=\"|20px||20px|false|true\" custom_padding_last_edited=\"on|phone\" box_shadow_vertical_tablet=\"-200px\" box_shadow_vertical_phone=\"-100px\" box_shadow_vertical_last_edited=\"on|phone\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"Prompt|900|||||||\" header_text_color=\"#000000\" header_font_size=\"150px\" header_letter_spacing=\"7px\" z_index=\"1\" custom_margin=\"|||-150px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"80px\" header_font_size_phone=\"60px\" header_font_size_last_edited=\"on|phone\" header_letter_spacing_tablet=\"0px\" header_letter_spacing_phone=\"\" header_letter_spacing_last_edited=\"on|tablet\"]<h1>Ice Cream Shop</h1>[/et_pb_text][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-01.png\" _builder_version=\"3.26.3\" transform_scale_tablet=\"\" transform_scale_phone=\"\" transform_scale_last_edited=\"on|desktop\" transform_translate=\"120px|0px\" transform_translate_tablet=\"0px|0px\" transform_translate_phone=\"\" transform_translate_last_edited=\"on|tablet\" transform_translate_linked=\"off\" transform_rotate_tablet=\"\" transform_rotate_phone=\"\" transform_rotate_last_edited=\"on|desktop\" transform_skew_tablet=\"\" transform_skew_phone=\"\" transform_skew_last_edited=\"on|desktop\" transform_origin_tablet=\"\" transform_origin_phone=\"\" transform_origin_last_edited=\"on|desktop\" transform_styles_last_edited=\"on|tablet\" max_width=\"400px\" max_width_tablet=\"250px\" max_width_phone=\"180px\" max_width_last_edited=\"on|desktop\" module_alignment=\"right\" custom_margin=\"-440px||-260px||false|false\" custom_margin_tablet=\"-50px||-160px||false|false\" custom_margin_phone=\"||-110px||false|false\" custom_margin_last_edited=\"on|phone\" transform_styles_tablet=\"\" transform_styles_phone=\"\" module_alignment_tablet=\"center\" module_alignment_phone=\"\" module_alignment_last_edited=\"on|desktop\"][/et_pb_image][/et_pb_column][et_pb_column type=\"2_5\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|800|||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_color=\"#00d2d6\" z_index=\"1\" background_layout=\"dark\" custom_margin=\"|-4vw|||false|false\" custom_margin_tablet=\"|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|tablet\" custom_padding=\"80px|40px|60px|40px|false|true\" custom_padding_tablet=\"\" custom_padding_phone=\"40px|20px|40px|20px|true|true\" custom_padding_last_edited=\"on|phone\" locked=\"off\"]<p>5678 Extra Rd<br /> San Francisco, CA 96120</p>\n<p>Open 11am to 11pm Everyday</p>[/et_pb_text][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.6em\" header_font=\"||||||||\" header_2_font=\"Prompt|800|||||||\" header_2_text_color=\"#f76538\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"80px||||false|false\" custom_margin_tablet=\"0px||||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" custom_padding=\"|||40px|false|false\" custom_padding_tablet=\"|||0px|false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|desktop\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" text_text_align=\"right\" locked=\"off\" text_text_align_tablet=\"left\" text_text_align_last_edited=\"on|desktop\"]<h2>Made Locally!</h2>\n<p>Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo ega.</p>[/et_pb_text][et_pb_button button_text=\"Pre Order\" button_alignment=\"right\" button_alignment_tablet=\"left\" button_alignment_phone=\"\" button_alignment_last_edited=\"on|desktop\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"About\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"#ffffff\" background_color_gradient_end=\"#f4f4f4\" background_color_gradient_start_position=\"86%\" custom_margin=\"||||false|false\" custom_padding=\"||10vw||false|false\" bottom_divider_style=\"waves\" bottom_divider_color=\"#ffffff\" bottom_divider_height=\"10vw\"][et_pb_row _builder_version=\"3.26.3\" custom_padding=\"||0px|||\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" max_width=\"800px\" module_alignment=\"center\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2><strong>Small Batch Ice Cream </strong>Made in San Francisco</h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row column_structure=\"1_3,1_3,1_3\" _builder_version=\"3.26.3\" custom_padding=\"25px|||||\"][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\"]<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p>[/et_pb_text][/et_pb_column][et_pb_column type=\"1_3\" _builder_version=\"3.26.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" locked=\"off\"]<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. </p>[/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Services\" _builder_version=\"3.26.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" z_index=\"10\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|900|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"140px\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"right\" custom_margin=\"|-92px|0px||false|false\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|desktop\" text_orientation_tablet=\"left\" text_orientation_phone=\"\" text_orientation_last_edited=\"on|desktop\" locked=\"off\"]<h2>Visit<br /> Order<br /> Join!</h2>[/et_pb_text][et_pb_button button_text=\"Pre Order Online or by Phone\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-02.jpg\" _builder_version=\"3.26.3\" custom_margin=\"|||-15vw|false|false\" custom_margin_tablet=\"|||0vw|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-05.jpg\" force_fullwidth=\"on\" _builder_version=\"3.26.3\" custom_margin=\"-40px|-10vw|||false|false\" custom_margin_tablet=\"0px|0vw|||false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_text_color=\"#ff6f7e\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" custom_margin=\"150px||0px||false|false\" text_font_size_tablet=\"\" text_font_size_phone=\"14px\" text_font_size_last_edited=\"on|desktop\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Join us</h4>\n<h2>Join the <strong>Pint Club!</strong></h2>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.</p>[/et_pb_text][et_pb_button button_text=\"Join Today\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" transform_translate=\"0px|100%\" transform_translate_linked=\"off\" z_index=\"1\" custom_margin=\"||0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-04.jpg\" _builder_version=\"3.26.3\" max_width=\"360px\" max_width_tablet=\"100%\" max_width_phone=\"\" max_width_last_edited=\"on|desktop\" locked=\"off\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.26.3\" custom_padding=\"0px||0px|||\"][et_pb_row _builder_version=\"3.26.3\" z_index=\"10\" max_width=\"none\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"150px\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"40px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h2>Fresh.<br /> Seasonal.<strong><br /> Local.</strong></h2>[/et_pb_text][/et_pb_column][/et_pb_row][et_pb_row _builder_version=\"3.26.3\" width=\"100%\" max_width=\"none\" custom_margin=\"||||false|false\" custom_padding=\"||||false|false\"][et_pb_column type=\"4_4\" _builder_version=\"3.26.3\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-08.jpg\" _builder_version=\"3.26.3\" custom_margin=\"-20vw||||false|false\"][/et_pb_image][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"4.9.3\" _module_preset=\"default\"][et_pb_row _builder_version=\"4.9.3\" _module_preset=\"default\"][et_pb_column _builder_version=\"4.9.3\" _module_preset=\"default\" type=\"4_4\"][et_pb_code _builder_version=\"4.9.3\" _module_preset=\"default\" hover_enabled=\"0\" sticky_enabled=\"0\"][slick-slider design=\"design-1\"][/et_pb_code][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Flavour\" _builder_version=\"3.25.3\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"3.26.3\"][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" background_color=\"#ffa256\" custom_padding=\"0px|40px|0px|40px|true|true\"][et_pb_image src=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-07.png\" align=\"center\" _builder_version=\"3.26.3\" max_width_tablet=\"200px\" max_width_phone=\"120px\" max_width_last_edited=\"off|phone\" locked=\"off\" max_width__hover_enabled=\"off\"][/et_pb_image][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"40px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"12px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" background_layout=\"dark\" header_2_font_size_tablet=\"30px\" header_2_font_size_phone=\"20px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>July</h4>\n<h2><strong>Orange</strong> Chocolate</h2>[/et_pb_text][et_pb_button button_text=\"Purchase\" button_alignment=\"right\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#000000\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" z_index=\"1\" custom_margin=\"|-40px|0px||false|false\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#ff6f7e\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"3.26.3\" custom_padding=\"150px||||false|false\" custom_padding_tablet=\"0px||||false|false\" custom_padding_phone=\"\" custom_padding_last_edited=\"on|tablet\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_text_color=\"#000000\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" header_2_font_size_tablet=\"60px\" header_2_font_size_phone=\"30px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Highlight</h4>\n<h2><strong>Flavor</strong> Of the Month.</h2>[/et_pb_text][et_pb_button button_text=\"View All Seasonal Flavors\" button_alignment=\"left\" _builder_version=\"3.26.3\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ffa256\" button_border_width=\"0px\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_padding=\"15px|30px|15px|30px|true|true\" button_bg_color_last_edited=\"off|desktop\" locked=\"off\" button_bg_color__hover_enabled=\"on\" button_bg_color__hover=\"#000000\" button_bg_enable_color__hover=\"on\" button_text_color__hover=\"#ffffff\" button_border_color__hover=\"rgba(0,0,0,0)\"][/et_pb_button][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" custom_padding_last_edited=\"off|phone\" admin_label=\"Footer\" _builder_version=\"3.26.3\" use_background_color_gradient=\"on\" background_color_gradient_start=\"rgba(255,186,221,0)\" background_color_gradient_end=\"#ffbadd\" background_color_gradient_direction=\"90deg\" background_color_gradient_start_position=\"60%\" background_color_gradient_end_position=\"0%\" background_color_gradient_overlays_image=\"on\" background_image=\"http://localhost/demo/wp-content/uploads/2021/04/ice-cream-06.jpg\" background_size=\"contain\" custom_padding=\"12vw||12vw||true|false\" custom_padding_tablet=\"50px|||\" custom_padding_phone=\"30px||\"][et_pb_row custom_padding_last_edited=\"on|tablet\" _builder_version=\"3.26.3\" background_color=\"#000000\" max_width=\"700px\" custom_padding=\"80px|80px|80px|80px|true|true\" custom_padding_tablet=\"60px|60px|60px|60px\" custom_padding_phone=\"40px|20px|40px|20px|true|true\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"||||||||\" header_font=\"||||||||\" header_2_font=\"Prompt|200|||||||\" header_2_font_size=\"60px\" header_2_line_height=\"1.2em\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" background_layout=\"dark\" header_2_font_size_tablet=\"40px\" header_2_font_size_phone=\"25px\" header_2_font_size_last_edited=\"on|phone\" locked=\"off\"]<h4>Subscribe To Get a Free Month</h4>\n<h2>1st Month of Pint Club <strong>Membership is Free!</strong></h2>[/et_pb_text][et_pb_signup mailchimp_list=\"elegantthemestest|1ea2bbd026\" layout=\"top_bottom\" first_name_field=\"off\" last_name_field=\"off\" admin_label=\"Email Optin\" _builder_version=\"3.26.3\" header_level=\"h3\" header_font=\"Prompt|700|||||||\" header_font_size=\"30px\" header_line_height=\"1.2em\" body_font=\"|600|||||||\" body_line_height=\"1.8em\" form_field_font=\"Prompt||||||||\" use_background_color=\"off\" custom_button=\"on\" button_text_size=\"14px\" button_text_color=\"#ffffff\" button_bg_color=\"#ff608d\" button_border_width=\"10px\" button_border_color=\"rgba(0,0,0,0)\" button_border_radius=\"0px\" button_letter_spacing=\"2px\" button_font=\"Prompt|||on|||||\" button_use_icon=\"off\" custom_margin=\"|||-20px|false|false\" custom_margin_tablet=\"|||0px|false|false\" custom_margin_phone=\"\" custom_margin_last_edited=\"on|desktop\" header_font_size_tablet=\"\" header_font_size_phone=\"18px\" header_font_size_last_edited=\"on|phone\" button_bg_color_last_edited=\"off|desktop\" border_radii_fields=\"on|0px|0px|0px|0px\" button_text_color__hover=\"#ffffff\" button_bg_color__hover=\"#ffbbc8\" button_bg_color__hover_enabled=\"on\" button_border_color__hover=\"rgba(0,0,0,0)\" button_bg_enable_color__hover=\"on\"][/et_pb_signup][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" admin_label=\"Footer\" _builder_version=\"3.26.3\" locked=\"off\"][et_pb_row _builder_version=\"3.25.3\" locked=\"off\"][et_pb_column type=\"4_4\" _builder_version=\"3.25.3\"][et_pb_text _builder_version=\"3.27.4\" text_font=\"|600|||||||\" text_font_size=\"16px\" text_line_height=\"1.8em\" header_font=\"||||||||\" header_4_font=\"Prompt|600||on|||||\" header_4_font_size=\"14px\" header_4_letter_spacing=\"2px\" header_4_line_height=\"1.2em\" z_index=\"1\" text_orientation=\"center\" locked=\"off\"]<h4>Follow us on social Media.</h4>[/et_pb_text][et_pb_social_media_follow _builder_version=\"3.25.3\" text_orientation=\"center\"][et_pb_social_media_follow_network social_network=\"facebook\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]facebook[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"twitter\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]twitter[/et_pb_social_media_follow_network][et_pb_social_media_follow_network social_network=\"instagram\" _builder_version=\"3.25.3\" background_color=\"rgba(0,0,0,0.2)\" border_radii=\"on|50px|50px|50px|50px\" follow_button=\"off\" url_new_window=\"on\"]instagram[/et_pb_social_media_follow_network][/et_pb_social_media_follow][/et_pb_column][/et_pb_row][/et_pb_section]', 'Ice-Cream Shop', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-04-19 08:01:39', '2021-04-19 08:01:39', '', 19, 'http://localhost/demo/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-04-21 16:41:52', '2021-04-21 16:41:52', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-04-21 16:41:52', '2021-04-21 16:41:52', '', 0, 'http://localhost/demo/wp-content/uploads/2021/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2021-04-21 16:41:52', '2021-04-21 16:41:52', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2021-04-21 16:41:52', '2021-04-21 16:41:52', '', 0, 'http://localhost/demo/shop/', 0, 'page', '', 0),
(47, 1, '2021-04-21 16:41:52', '2021-04-21 16:41:52', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-04-21 16:41:52', '2021-04-21 16:41:52', '', 0, 'http://localhost/demo/cart/', 0, 'page', '', 0),
(48, 1, '2021-04-21 16:41:52', '2021-04-21 16:41:52', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2021-04-21 16:41:52', '2021-04-21 16:41:52', '', 0, 'http://localhost/demo/checkout/', 0, 'page', '', 0),
(49, 1, '2021-04-21 16:41:52', '2021-04-21 16:41:52', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2021-04-21 16:41:52', '2021-04-21 16:41:52', '', 0, 'http://localhost/demo/my-account/', 0, 'page', '', 0),
(50, 1, '2021-04-21 17:05:14', '2021-04-21 17:05:14', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-04-21 17:05:14', '2021-04-21 17:05:14', '', 0, 'http://localhost/demo/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2021-04-21 17:05:14', '2021-04-21 17:05:14', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2021-04-21 17:05:14', '2021-04-21 17:05:14', '', 0, 'http://localhost/demo/?p=51', 4, 'nav_menu_item', '', 0),
(52, 1, '2021-04-21 17:05:14', '2021-04-21 17:05:14', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2021-04-21 17:05:14', '2021-04-21 17:05:14', '', 0, 'http://localhost/demo/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2021-04-21 17:05:14', '2021-04-21 17:05:14', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2021-04-21 17:05:14', '2021-04-21 17:05:14', '', 0, 'http://localhost/demo/?p=53', 2, 'nav_menu_item', '', 0),
(54, 1, '2021-04-21 17:04:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-21 17:04:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2021-04-21 17:04:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-21 17:04:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2021-04-21 17:04:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-21 17:04:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2021-04-21 17:04:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-21 17:04:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo/?p=57', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Slide-1', 'slide-1', 0),
(3, 'Slide-2', 'slide-2', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Uncategorized', 'uncategorized', 0),
(18, 'primary menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(50, 18, 0),
(51, 18, 0),
(52, 18, 0),
(53, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wpsisac_slider-category', '', 0, 3),
(3, 3, 'wpsisac_slider-category', '', 0, 3),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminan'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '11'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1617427313'),
(21, 1, '_woocommerce_tracks_anon_id', 'woo:kzjSgAMq201iWYnCcSsICwmF'),
(22, 1, 'wc_last_active', '1618963200'),
(23, 1, 'last_update', '1619024419'),
(24, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1619024416737'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:9:{i:0;s:21:\"add-post-type-project\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-project_category\";i:5;s:15:\"add-project_tag\";i:6;s:15:\"add-product_cat\";i:7;s:15:\"add-product_tag\";i:8;s:27:\"add-wpsisac_slider-category\";}'),
(27, 1, 'dismissed_no_secure_connection_notice', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminan', '$P$BGeqDFlkVGvvqyvqfQN9RNLimsE.P91', 'adminan', 'sayeedaali2012@gmail.com', 'http://localhost/demo', '2021-03-20 03:51:12', '', 0, 'adminan');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2021-04-21 16:42:05', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Sign up for tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2021-04-21 16:42:05', NULL, 0, 'plain', '', 0, 'info'),
(3, 'paypal_ppcp_gtm_2021', 'marketing', 'en_US', 'Offer more options with the new PayPal', 'Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(4, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(5, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wcpay-apple-pay-is-now-available', 'marketing', 'en_US', 'Apple Pay is now available with WooCommerce Payments!', 'Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wcpay-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with WooCommerce Payments and Apple Pay', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2021-04-21 17:00:09', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2021-04-23 06:23:38', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2021-04-23 06:23:39', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week. We\'re here to help your business succeed! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-04-23 06:23:39', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(2, 2, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(20, 19, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox', 'actioned', 0, ''),
(21, 20, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', 0, ''),
(22, 21, 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(23, 3, 'open_wc_paypal_payments_product_page', 'Learn more', 'https://woocommerce.com/products/woocommerce-paypal-payments/', 'actioned', 1, ''),
(24, 4, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, ''),
(25, 5, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, ''),
(26, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(27, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(28, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(29, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, ''),
(30, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, ''),
(31, 11, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, ''),
(32, 12, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, ''),
(33, 13, 'add-apple-pay', 'Add Apple Pay', '/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments', 'actioned', 1, ''),
(34, 13, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay', 'actioned', 1, ''),
(35, 14, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales', 'actioned', 1, ''),
(36, 15, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business', 'actioned', 1, ''),
(37, 16, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, ''),
(38, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, ''),
(39, 18, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(17, 17);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'PK:SD', 'state');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_ce4wp_abandoned_checkout`
--
ALTER TABLE `wp_ce4wp_abandoned_checkout`
  ADD PRIMARY KEY (`checkout_id`),
  ADD UNIQUE KEY `checkout_uuid` (`checkout_uuid`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_ce4wp_abandoned_checkout`
--
ALTER TABLE `wp_ce4wp_abandoned_checkout`
  MODIFY `checkout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
