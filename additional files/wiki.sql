-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2025 at 03:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiki`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-02-24 12:01:29', '2025-02-24 12:01:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:10:{i:1743076889;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743076890;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1743076910;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743076914;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743080489;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743082289;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743084089;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743435877;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1743508890;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/wordpress', 'on'),
(3, 'home', 'http://localhost/wordpress', 'on'),
(4, 'blogname', 'Gunner Wiki', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'tomash342@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F, Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%category%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:98:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:41:\"create-block-theme/create-block-theme.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'gunner-wiki', 'on'),
(42, 'stylesheet', 'gunner-wiki', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '2', 'on'),
(83, 'page_on_front', '10', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1755950489', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.2\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:1:{s:22:\"Ji3mv77yvECPuCwm6euHYs\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BIL9TT7R2TgJNmqtpVLTogwTF12..Q.\";s:10:\"created_at\";i:1742904756;}}', 'off'),
(126, 'nonce_key', 'V0^:X|[{N&]m .T*F(-{`-<H(<]zMH3lZ-,F|M6DLL,m9QfNan@0btq0` }W]p;:', 'off'),
(128, 'nonce_salt', '1zlk{gGTwH(,HQ^CT[XU;Up{H%uOICpHO]]wZ7-n#q~k>E@U ?9xs4@g#[JxRA<@', 'off'),
(130, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1740399452;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(132, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"c8255f1bac631f2bd882c9ce21a36b88\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:0:\"\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(134, 'logged_in_key', 'j>jK+QAp`NbCmV5S3SNT22y[9x@lE+yo8$hIzC^.fyiX~.%w}p)vVeI?qB$}H|-/', 'off'),
(135, 'logged_in_salt', 'dD.E3K{]0;[`bc2y^QEVT1K?;}Rt*[PjM7!Mx[zT~Q!jOtlR`mLRT4JslLT9s(wf', 'off'),
(136, 'auth_key', '( >uW4&JzI=E{8O,iXwTJtUmBvzD*F~4tKr!rI3Z@ftP<W(h1}FT]i6O9_/c)n*z', 'off'),
(137, 'auth_salt', ' OWwW<uH{N#+5N}3HJ$T^>9;|1m!hWhAU^Q!IXW|)/%`/xE,_^mgcL$Rg!E:(&V-', 'off'),
(138, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1743058187;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(150, 'can_compress_scripts', '1', 'on'),
(161, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(162, 'recently_activated', 'a:0:{}', 'off'),
(163, 'acf_first_activated_version', '6.2.6.1', 'on'),
(164, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.0.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1740398536;s:7:\"version\";s:5:\"6.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(165, 'acf_version', '6.2.6.1', 'auto'),
(168, 'theme_mods_tailwind', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'auto'),
(171, 'finished_updating_comment_type', '1', 'auto'),
(172, 'current_theme', 'Gunner WIki', 'auto'),
(173, 'theme_mods_gunner-wiki', 'a:3:{s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(174, 'theme_switched', '', 'auto'),
(195, 'WPLANG', '', 'auto'),
(196, 'new_admin_email', 'tomash342@gmail.com', 'auto'),
(224, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'auto'),
(225, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":6,\"critical\":1}', 'on'),
(748, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(860, 'category_children', 'a:0:{}', 'auto'),
(949, '_transient_timeout_acf_plugin_updates', '1743069509', 'off'),
(950, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250121\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.6.1\";}}', 'off'),
(986, 'recovery_mode_email_last_sent', '1742904756', 'auto'),
(1064, '_site_transient_timeout_theme_roots', '1743059991', 'off'),
(1065, '_site_transient_theme_roots', 'a:8:{s:5:\"astra\";s:7:\"/themes\";s:11:\"gunner-wiki\";s:7:\"/themes\";s:12:\"oceanly-news\";s:7:\"/themes\";s:7:\"oceanly\";s:7:\"/themes\";s:8:\"tailwind\";s:7:\"/themes\";s:11:\"theme-alpha\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1066, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743058192;s:7:\"checked\";a:8:{s:5:\"astra\";s:6:\"4.8.12\";s:11:\"gunner-wiki\";s:0:\"\";s:12:\"oceanly-news\";s:5:\"1.2.8\";s:7:\"oceanly\";s:5:\"1.8.0\";s:8:\"tailwind\";s:0:\"\";s:11:\"theme-alpha\";s:0:\"\";s:16:\"twentytwentyfive\";s:3:\"1.1\";s:16:\"twentytwentyfour\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:5:\"4.9.0\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/astra.4.9.0.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}}s:9:\"no_update\";a:4:{s:12:\"oceanly-news\";a:6:{s:5:\"theme\";s:12:\"oceanly-news\";s:11:\"new_version\";s:5:\"1.2.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/oceanly-news/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/oceanly-news.1.2.8.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.0\";}s:7:\"oceanly\";a:6:{s:5:\"theme\";s:7:\"oceanly\";s:11:\"new_version\";s:5:\"1.8.0\";s:3:\"url\";s:37:\"https://wordpress.org/themes/oceanly/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/oceanly.1.8.0.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.0\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.1.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}', 'off'),
(1067, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743058193;s:8:\"response\";a:3:{s:23:\"elementor/elementor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:6:\"3.28.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/elementor.3.28.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.gif?rev=3111597\";s:2:\"1x\";s:62:\"https://ps.w.org/elementor/assets/icon-128x128.gif?rev=3111597\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=3164133\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=3164133\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:27:\"astra-sites/astra-sites.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/astra-sites\";s:4:\"slug\";s:11:\"astra-sites\";s:6:\"plugin\";s:27:\"astra-sites/astra-sites.php\";s:11:\"new_version\";s:6:\"4.4.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/astra-sites/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/astra-sites.4.4.18.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/astra-sites/assets/icon-256x256.gif?rev=3060571\";s:2:\"1x\";s:64:\"https://ps.w.org/astra-sites/assets/icon-256x256.gif?rev=3060571\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/astra-sites/assets/banner-1544x500.jpg?rev=3055258\";s:2:\"1x\";s:66:\"https://ps.w.org/astra-sites/assets/banner-772x250.jpg?rev=3055258\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250121\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}s:41:\"create-block-theme/create-block-theme.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/create-block-theme\";s:4:\"slug\";s:18:\"create-block-theme\";s:6:\"plugin\";s:41:\"create-block-theme/create-block-theme.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/create-block-theme/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/create-block-theme.2.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/create-block-theme/assets/icon-256x256.png?rev=2777957\";s:2:\"1x\";s:71:\"https://ps.w.org/create-block-theme/assets/icon-128x128.png?rev=2777957\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/create-block-theme/assets/banner-1544x500.png?rev=2777957\";s:2:\"1x\";s:73:\"https://ps.w.org/create-block-theme/assets/banner-772x250.png?rev=2777957\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.9.4.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.9.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=3254748\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=3254748\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=3091364\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=3091364\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=3254748\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=3254748\";}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:7:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.6.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.0.5\";s:41:\"create-block-theme/create-block-theme.php\";s:5:\"2.6.0\";s:23:\"elementor/elementor.php\";s:6:\"3.27.4\";s:27:\"astra-sites/astra-sites.php\";s:6:\"4.4.13\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.9.4.2\";}}', 'off'),
(1068, '_site_transient_timeout_wp_theme_files_patterns-b6bdf3b59ed760c30a50661d692953e6', '1743078094', 'off'),
(1069, '_site_transient_wp_theme_files_patterns-b6bdf3b59ed760c30a50661d692953e6', 'a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(4, 7, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <tomash342@gmail.com>\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 7, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <tomash342@gmail.com>\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 7, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(7, 7, '_additional_settings', ''),
(8, 7, '_locale', 'en_US'),
(9, 7, '_hash', '7c27b3dacdc4c80e91ef25d45405d1be5d3c627f'),
(10, 10, '_edit_lock', '1742569815:1'),
(11, 12, '_wp_attached_file', '2025/02/AliceLove.png'),
(12, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:21:\"2025/02/AliceLove.png\";s:8:\"filesize\";i:32953;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 14, '_wp_attached_file', '2025/02/dc.png'),
(16, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:20;s:6:\"height\";i:20;s:4:\"file\";s:14:\"2025/02/dc.png\";s:8:\"filesize\";i:786;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 15, '_wp_attached_file', '2025/02/twitch.png'),
(18, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:29;s:6:\"height\";i:25;s:4:\"file\";s:18:\"2025/02/twitch.png\";s:8:\"filesize\";i:573;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 16, '_wp_attached_file', '2025/02/kofi.png'),
(20, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:35;s:6:\"height\";i:25;s:4:\"file\";s:16:\"2025/02/kofi.png\";s:8:\"filesize\";i:1326;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 17, '_wp_attached_file', '2025/02/bg.jpg'),
(22, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:270;s:6:\"height\";i:60;s:4:\"file\";s:14:\"2025/02/bg.jpg\";s:8:\"filesize\";i:8679;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 18, '_wp_attached_file', '2025/02/back.png'),
(24, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2025/02/back.png\";s:8:\"filesize\";i:562;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 19, '_wp_attached_file', '2025/02/icon1.png'),
(26, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:25;s:6:\"height\";i:25;s:4:\"file\";s:17:\"2025/02/icon1.png\";s:8:\"filesize\";i:678;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 20, '_edit_lock', '1740670805:1'),
(28, 22, '_edit_lock', '1740671361:1'),
(29, 24, '_edit_lock', '1740671541:1'),
(30, 24, '_edit_last', '1'),
(31, 26, '_wp_attached_file', '2025/03/bg-fs.jpg'),
(32, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:17:\"2025/03/bg-fs.jpg\";s:8:\"filesize\";i:75123;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 30, '_wp_attached_file', '2025/03/category_guide.png'),
(36, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2025/03/category_guide.png\";s:8:\"filesize\";i:18453;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 31, '_edit_last', '1'),
(38, 31, '_edit_lock', '1742565680:1'),
(42, 10, 'footnotes', ''),
(44, 34, 'footnotes', ''),
(46, 35, 'footnotes', ''),
(49, 37, 'footnotes', ''),
(50, 38, '_wp_attached_file', '2025/03/community_discord.png'),
(51, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:29:\"2025/03/community_discord.png\";s:8:\"filesize\";i:92480;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 39, '_edit_lock', '1742135167:1'),
(55, 39, '_edit_last', '1'),
(58, 39, '_wp_old_slug', 'rei-ayanami-tentative-name-guide-review'),
(59, 41, '_wp_attached_file', '2025/03/promo_rei2.png'),
(60, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:200;s:4:\"file\";s:22:\"2025/03/promo_rei2.png\";s:8:\"filesize\";i:181465;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 42, '_edit_last', '1'),
(62, 42, '_edit_lock', '1742144204:1'),
(67, 48, 'footnotes', ''),
(69, 49, '_wp_attached_file', '2025/03/helm-tr.png'),
(70, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2025/03/helm-tr.png\";s:8:\"filesize\";i:139253;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 50, 'footnotes', ''),
(75, 51, '_edit_last', '1'),
(76, 51, '_edit_lock', '1742143958:1'),
(79, 58, 'footnotes', ''),
(85, 60, 'footnotes', ''),
(91, 62, 'footnotes', ''),
(97, 64, 'footnotes', ''),
(103, 66, 'footnotes', ''),
(107, 67, 'footnotes', ''),
(111, 68, 'footnotes', ''),
(113, 69, '_edit_lock', '1742570779:1'),
(114, 69, '_edit_last', '1'),
(115, 71, '_edit_lock', '1742565036:1'),
(116, 71, '_edit_last', '1'),
(117, 74, 'footnotes', ''),
(120, 75, 'footnotes', ''),
(122, 76, '_acf_changed', ''),
(123, 76, 'footnotes', ''),
(124, 77, '_edit_lock', '1742910908:1'),
(130, 77, 'footnotes', ''),
(132, 79, 'footnotes', ''),
(136, 77, '_thumbnail_id', '97'),
(137, 80, 'footnotes', ''),
(138, 77, '_edit_last', '1'),
(141, 81, 'footnotes', ''),
(144, 82, 'footnotes', ''),
(151, 83, '_edit_lock', '1742572345:1'),
(152, 83, '_edit_last', '1'),
(155, 85, '_wp_attached_file', '2025/03/anne_full.png'),
(156, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2025/03/anne_full.png\";s:8:\"filesize\";i:543731;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 86, '_edit_lock', '1742898965:1'),
(162, 87, 'footnotes', ''),
(163, 88, '_edit_last', '1'),
(164, 88, '_edit_lock', '1742900731:1'),
(167, 88, '_wp_trash_meta_status', 'publish'),
(168, 88, '_wp_trash_meta_time', '1742901229'),
(169, 88, '_wp_desired_post_slug', 'group_67e28e71ea9bf'),
(172, 89, 'footnotes', ''),
(181, 92, 'footnotes', ''),
(186, 94, 'footnotes', ''),
(187, 95, '_wp_attached_file', '2025/03/profile_bg.jpg'),
(188, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:200;s:4:\"file\";s:22:\"2025/03/profile_bg.jpg\";s:8:\"filesize\";i:60807;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 97, '_wp_attached_file', '2025/03/Anne_Mircale_Fairy_Card_262x358.png'),
(192, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:262;s:6:\"height\";i:358;s:4:\"file\";s:43:\"2025/03/Anne_Mircale_Fairy_Card_262x358.png\";s:8:\"filesize\";i:196398;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 98, 'footnotes', ''),
(202, 100, 'footnotes', ''),
(209, 102, 'footnotes', ''),
(215, 104, 'footnotes', ''),
(220, 106, 'footnotes', ''),
(223, 107, 'footnotes', ''),
(228, 109, 'footnotes', ''),
(233, 111, 'footnotes', ''),
(236, 112, 'footnotes', ''),
(239, 113, 'footnotes', ''),
(242, 114, 'footnotes', ''),
(245, 115, 'footnotes', ''),
(248, 116, 'footnotes', ''),
(251, 117, 'footnotes', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-02-24 12:01:29', '2025-02-24 12:01:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-02-24 12:01:29', '2025-02-24 12:01:29', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2025-02-24 12:01:29', '2025-02-24 12:01:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-02-24 12:01:29', '2025-02-24 12:01:29', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-02-24 12:01:29', '2025-02-24 12:01:29', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-02-24 12:01:29', '2025-02-24 12:01:29', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-02-24 12:01:35', '2025-02-24 12:01:35', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-02-24 12:01:35', '2025-02-24 12:01:35', '', 0, 'http://localhost/wordpress/index.php/2025/02/24/navigation/', 0, 'wp_navigation', '', 0),
(5, 0, '2025-02-24 12:01:35', '2025-02-24 12:01:35', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-02-24 12:01:35', '2025-02-24 12:01:35', '', 0, 'http://localhost/wordpress/2025/02/24/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2025-02-24 12:02:16', '2025-02-24 12:02:16', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <tomash342@gmail.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <tomash342@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2025-02-24 12:02:16', '2025-02-24 12:02:16', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=7', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2025-02-24 12:16:51', '2025-02-24 12:16:51', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfive', '', '', '2025-02-24 12:16:51', '2025-02-24 12:16:51', '', 0, 'http://localhost/wordpress/index.php/2025/02/24/wp-global-styles-twentytwentyfive/', 0, 'wp_global_styles', '', 0),
(9, 1, '2025-02-24 12:17:34', '2025-02-24 12:17:34', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-gunner-wiki', '', '', '2025-02-24 12:17:34', '2025-02-24 12:17:34', '', 0, 'http://localhost/wordpress/index.php/2025/02/24/wp-global-styles-gunner-wiki/', 0, 'wp_global_styles', '', 0),
(10, 1, '2025-02-24 15:44:20', '2025-02-24 15:44:20', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":{\"title\":\"Rei Ayanami: Tentative Name Guide \\u0026amp; Review\",\"url\":\"http://localhost/wordpress/guides/guide-rei/\",\"target\":\"\"},\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"D\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2025-03-21 15:12:39', '2025-03-21 15:12:39', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2025-02-24 15:44:20', '2025-02-24 15:44:20', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-02-24 15:44:20', '2025-02-24 15:44:20', '', 10, 'http://localhost/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2025-02-24 15:46:33', '2025-02-24 15:46:33', '', 'AliceLove', '', 'inherit', 'open', 'closed', '', 'alicelove', '', '', '2025-02-24 15:46:33', '2025-02-24 15:46:33', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/02/AliceLove.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2025-02-26 13:15:01', '2025-02-26 13:15:01', '', 'dc', '', 'inherit', 'open', 'closed', '', 'dc', '', '', '2025-02-26 13:15:01', '2025-02-26 13:15:01', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/02/dc.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2025-02-26 13:20:16', '2025-02-26 13:20:16', '', 'twitch', '', 'inherit', 'open', 'closed', '', 'twitch', '', '', '2025-02-26 13:20:16', '2025-02-26 13:20:16', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/02/twitch.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2025-02-26 13:20:19', '2025-02-26 13:20:19', '', 'kofi', '', 'inherit', 'open', 'closed', '', 'kofi', '', '', '2025-02-26 13:20:19', '2025-02-26 13:20:19', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/02/kofi.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2025-02-26 14:55:23', '2025-02-26 14:55:23', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2025-02-26 14:55:23', '2025-02-26 14:55:23', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/02/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2025-02-26 14:55:30', '2025-02-26 14:55:30', '', 'back', '', 'inherit', 'open', 'closed', '', 'back', '', '', '2025-02-26 14:55:30', '2025-02-26 14:55:30', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/02/back.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2025-02-26 16:01:38', '2025-02-26 16:01:38', '', 'icon1', '', 'inherit', 'open', 'closed', '', 'icon1', '', '', '2025-02-26 16:01:38', '2025-02-26 16:01:38', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/02/icon1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2025-02-27 15:40:04', '2025-02-27 15:40:04', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2025-02-27 15:40:04', '2025-02-27 15:40:04', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2025-02-27 15:40:04', '2025-02-27 15:40:04', '', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2025-02-27 15:40:04', '2025-02-27 15:40:04', '', 20, 'http://localhost/wordpress/?p=21', 0, 'revision', '', 0),
(22, 1, '2025-02-27 15:51:44', '2025-02-27 15:51:44', '', 'Guides', '', 'publish', 'closed', 'closed', '', 'guides', '', '', '2025-02-27 15:51:44', '2025-02-27 15:51:44', '', 0, 'http://localhost/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2025-02-27 15:51:44', '2025-02-27 15:51:44', '', 'Guides', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2025-02-27 15:51:44', '2025-02-27 15:51:44', '', 22, 'http://localhost/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2025-02-27 15:52:06', '2025-02-27 15:52:06', '', 'Skill Investment', '', 'publish', 'closed', 'closed', '', 'skill-investment', '', '', '2025-02-27 15:52:21', '2025-02-27 15:52:21', '', 22, 'http://localhost/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2025-02-27 15:52:06', '2025-02-27 15:52:06', '', 'Skill Investment', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2025-02-27 15:52:06', '2025-02-27 15:52:06', '', 24, 'http://localhost/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2025-03-03 16:19:05', '2025-03-03 16:19:05', '', 'bg-fs', '', 'inherit', 'open', 'closed', '', 'bg-fs', '', '', '2025-03-03 16:19:05', '2025-03-03 16:19:05', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/bg-fs.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2025-03-11 15:29:56', '2025-03-11 15:29:56', '', 'category_guide', '', 'inherit', 'open', 'closed', '', 'category_guide', '', '', '2025-03-11 15:29:56', '2025-03-11 15:29:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/category_guide.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2025-03-13 15:31:48', '2025-03-13 15:31:48', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"acf/section-name\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Section Name', 'section-name', 'publish', 'closed', 'closed', '', 'group_67d2fa46ee2dc', '', '', '2025-03-21 14:02:51', '2025-03-21 14:02:51', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2025-03-13 15:31:48', '2025-03-13 15:31:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Enter your section name\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Section Name', 'section_name', 'publish', 'closed', 'closed', '', 'field_67d2fa47204bb', '', '', '2025-03-13 15:48:26', '2025-03-13 15:48:26', '', 31, 'http://localhost/wordpress/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(34, 1, '2025-03-13 15:49:06', '2025-03-13 15:49:06', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"COMMUNITY\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-13 15:49:06', '2025-03-13 15:49:06', '', 10, 'http://localhost/wordpress/?p=34', 0, 'revision', '', 0),
(35, 1, '2025-03-13 15:49:56', '2025-03-13 15:49:56', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"COMMUNITY\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-13 15:49:56', '2025-03-13 15:49:56', '', 10, 'http://localhost/wordpress/?p=35', 0, 'revision', '', 0),
(37, 1, '2025-03-13 16:41:43', '2025-03-13 16:41:43', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-13 16:41:43', '2025-03-13 16:41:43', '', 10, 'http://localhost/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2025-03-13 16:53:56', '2025-03-13 16:53:56', '', 'community_discord', '', 'inherit', 'open', 'closed', '', 'community_discord', '', '', '2025-03-13 16:53:56', '2025-03-13 16:53:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/community_discord.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2025-03-16 14:25:07', '2025-03-16 14:25:07', '', 'Rei Ayanami: Tentative Name Guide &amp; Review', '', 'publish', 'open', 'open', '', 'guide-rei', '', '', '2025-03-16 14:26:07', '2025-03-16 14:26:07', '', 0, 'http://localhost/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2025-03-16 14:25:07', '2025-03-16 14:25:07', '', 'Rei Ayanami: Tentative Name Guide &amp; Review', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2025-03-16 14:25:07', '2025-03-16 14:25:07', '', 39, 'http://localhost/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2025-03-16 14:29:43', '2025-03-16 14:29:43', '', 'promo_rei2', '', 'inherit', 'open', 'closed', '', 'promo_rei2', '', '', '2025-03-16 14:29:43', '2025-03-16 14:29:43', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/promo_rei2.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2025-03-16 14:41:15', '2025-03-16 14:41:15', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"acf/new-posts\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'New Posts', 'new-posts', 'publish', 'closed', 'closed', '', 'group_67d6e268b5202', '', '', '2025-03-16 16:59:06', '2025-03-16 16:59:06', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2025-03-16 14:41:15', '2025-03-16 14:41:15', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'New Post', 'new_post', 'publish', 'closed', 'closed', '', 'field_67d6e269ee9a1', '', '', '2025-03-16 14:56:52', '2025-03-16 14:56:52', '', 42, 'http://localhost/wordpress/?post_type=acf-field&#038;p=43', 0, 'acf-field', '', 0),
(44, 1, '2025-03-16 14:41:15', '2025-03-16 14:41:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Post Name', 'post_name', 'publish', 'closed', 'closed', '', 'field_67d6e2c9ee9a3', '', '', '2025-03-16 14:41:15', '2025-03-16 14:41:15', '', 43, 'http://localhost/wordpress/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2025-03-16 14:41:15', '2025-03-16 14:41:15', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Post Background', 'post_background', 'publish', 'closed', 'closed', '', 'field_67d6e2aeee9a2', '', '', '2025-03-16 14:41:15', '2025-03-16 14:41:15', '', 43, 'http://localhost/wordpress/?post_type=acf-field&p=45', 1, 'acf-field', '', 0),
(46, 1, '2025-03-16 14:41:15', '2025-03-16 14:41:15', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Post Link', 'post_link', 'publish', 'closed', 'closed', '', 'field_67d6e2f0ee9a4', '', '', '2025-03-16 16:59:06', '2025-03-16 16:59:06', '', 43, 'http://localhost/wordpress/?post_type=acf-field&#038;p=46', 2, 'acf-field', '', 0),
(48, 1, '2025-03-16 15:18:50', '2025-03-16 15:18:50', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":1,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 15:18:50', '2025-03-16 15:18:50', '', 10, 'http://localhost/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2025-03-16 15:23:58', '2025-03-16 15:23:58', '', 'helm-tr', '', 'inherit', 'open', 'closed', '', 'helm-tr', '', '', '2025-03-16 15:23:58', '2025-03-16 15:23:58', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/helm-tr.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2025-03-16 15:24:34', '2025-03-16 15:24:34', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 15:24:34', '2025-03-16 15:24:34', '', 10, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2025-03-16 15:37:58', '2025-03-16 15:37:58', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"acf/guides\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Guides', 'guides', 'publish', 'closed', 'closed', '', 'group_67d6f02a55791', '', '', '2025-03-16 15:53:56', '2025-03-16 15:53:56', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2025-03-16 15:37:58', '2025-03-16 15:37:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Guides Category', 'guides_category', 'publish', 'closed', 'closed', '', 'field_67d6f02acfa6a', '', '', '2025-03-16 15:37:58', '2025-03-16 15:37:58', '', 51, 'http://localhost/wordpress/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2025-03-16 15:37:58', '2025-03-16 15:37:58', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Guides', 'guides', 'publish', 'closed', 'closed', '', 'field_67d6f030cfa6b', '', '', '2025-03-16 15:53:56', '2025-03-16 15:53:56', '', 51, 'http://localhost/wordpress/?post_type=acf-field&#038;p=53', 1, 'acf-field', '', 0),
(54, 1, '2025-03-16 15:52:49', '2025-03-16 15:52:49', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Guide Name', 'guide_name', 'publish', 'closed', 'closed', '', 'field_67d6f061f280f', '', '', '2025-03-16 15:52:49', '2025-03-16 15:52:49', '', 53, 'http://localhost/wordpress/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2025-03-16 15:52:49', '2025-03-16 15:52:49', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Guide Picture', 'guide_picture', 'publish', 'closed', 'closed', '', 'field_67d6f354f2810', '', '', '2025-03-16 15:52:49', '2025-03-16 15:52:49', '', 53, 'http://localhost/wordpress/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2025-03-16 15:52:49', '2025-03-16 15:52:49', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Guide Link', 'guide_link', 'publish', 'closed', 'closed', '', 'field_67d6f36af2811', '', '', '2025-03-16 15:52:49', '2025-03-16 15:52:49', '', 53, 'http://localhost/wordpress/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2025-03-16 15:52:49', '2025-03-16 15:52:49', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Is Updated', 'is_updated', 'publish', 'closed', 'closed', '', 'field_67d6f386f2812', '', '', '2025-03-16 15:52:49', '2025-03-16 15:52:49', '', 53, 'http://localhost/wordpress/?post_type=acf-field&p=57', 3, 'acf-field', '', 0),
(58, 1, '2025-03-16 15:53:40', '2025-03-16 15:53:40', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"Guides\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides\":\"\",\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 15:53:40', '2025-03-16 15:53:40', '', 10, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(60, 1, '2025-03-16 16:04:52', '2025-03-16 16:04:52', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"Guides\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 16:04:52', '2025-03-16 16:04:52', '', 10, 'http://localhost/wordpress/?p=60', 0, 'revision', '', 0),
(62, 1, '2025-03-16 16:06:59', '2025-03-16 16:06:59', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 16:06:59', '2025-03-16 16:06:59', '', 10, 'http://localhost/wordpress/?p=62', 0, 'revision', '', 0),
(64, 1, '2025-03-16 16:16:55', '2025-03-16 16:16:55', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 16:16:55', '2025-03-16 16:16:55', '', 10, 'http://localhost/wordpress/?p=64', 0, 'revision', '', 0),
(66, 1, '2025-03-16 16:19:48', '2025-03-16 16:19:48', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"1\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 16:19:48', '2025-03-16 16:19:48', '', 10, 'http://localhost/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2025-03-16 16:55:41', '2025-03-16 16:55:41', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":\"http://localhost/wordpress/guides/guide-rei/\",\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 16:55:41', '2025-03-16 16:55:41', '', 10, 'http://localhost/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2025-03-16 16:59:29', '2025-03-16 16:59:29', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":{\"title\":\"Rei Ayanami: Tentative Name Guide \\u0026amp; Review\",\"url\":\"http://localhost/wordpress/guides/guide-rei/\",\"target\":\"\"},\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-16 16:59:29', '2025-03-16 16:59:29', '', 10, 'http://localhost/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2025-03-21 13:43:45', '2025-03-21 13:43:45', '', 'Characters', '', 'publish', 'closed', 'closed', '', 'characters', '', '', '2025-03-21 15:26:19', '2025-03-21 15:26:19', '', 0, 'http://localhost/wordpress/?page_id=69', 0, 'page', '', 0),
(70, 1, '2025-03-21 13:43:45', '2025-03-21 13:43:45', '', 'Characters', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2025-03-21 13:43:45', '2025-03-21 13:43:45', '', 69, 'http://localhost/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2025-03-21 13:48:12', '2025-03-21 13:48:12', '', 'Tier List', '', 'publish', 'closed', 'closed', '', 'tier-list', '', '', '2025-03-21 13:50:36', '2025-03-21 13:50:36', '', 0, 'http://localhost/wordpress/?page_id=71', 0, 'page', '', 0),
(72, 1, '2025-03-21 13:48:12', '2025-03-21 13:48:12', '', 'Tier List', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2025-03-21 13:48:12', '2025-03-21 13:48:12', '', 71, 'http://localhost/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2025-03-21 14:02:51', '2025-03-21 14:02:51', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"#2692d3\";s:14:\"enable_opacity\";i:0;s:13:\"return_format\";s:6:\"string\";}', 'Color', 'color', 'publish', 'closed', 'closed', '', 'field_67dd711a88f11', '', '', '2025-03-21 14:02:51', '2025-03-21 14:02:51', '', 31, 'http://localhost/wordpress/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2025-03-21 14:04:51', '2025-03-21 14:04:51', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":{\"title\":\"Rei Ayanami: Tentative Name Guide \\u0026amp; Review\",\"url\":\"http://localhost/wordpress/guides/guide-rei/\",\"target\":\"\"},\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-21 14:04:51', '2025-03-21 14:04:51', '', 10, 'http://localhost/wordpress/?p=74', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(75, 1, '2025-03-21 14:05:21', '2025-03-21 14:05:21', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":{\"title\":\"Rei Ayanami: Tentative Name Guide \\u0026amp; Review\",\"url\":\"http://localhost/wordpress/guides/guide-rei/\",\"target\":\"\"},\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"D\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-21 14:05:21', '2025-03-21 14:05:21', '', 10, 'http://localhost/wordpress/?p=75', 0, 'revision', '', 0),
(76, 1, '2025-03-21 14:12:22', '2025-03-21 14:12:22', '<!-- wp:paragraph -->\n<p>/cr</p>\n<!-- /wp:paragraph -->', 'Characters', '', 'inherit', 'closed', 'closed', '', '69-autosave-v1', '', '', '2025-03-21 14:12:22', '2025-03-21 14:12:22', '', 69, 'http://localhost/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2025-03-21 14:51:22', '2025-03-21 14:51:22', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\"} -->\n<h2 class=\"wp-block-heading has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"23px\"} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'publish', 'open', 'open', '', 'miracle-fairy-anne', '', '', '2025-03-25 13:55:08', '2025-03-25 13:55:08', '', 0, 'http://localhost/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2025-03-21 14:51:22', '2025-03-21 14:51:22', '', 'Miracle Fairy Anne', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-21 14:51:22', '2025-03-21 14:51:22', '', 77, 'http://localhost/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2025-03-21 14:51:36', '2025-03-21 14:51:36', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->', 'Miracle Fairy Anne', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-21 14:51:36', '2025-03-21 14:51:36', '', 77, 'http://localhost/wordpress/?p=79', 0, 'revision', '', 0),
(80, 1, '2025-03-21 14:51:54', '2025-03-21 14:51:54', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:post-featured-image /-->', 'Miracle Fairy Anne', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-21 14:51:54', '2025-03-21 14:51:54', '', 77, 'http://localhost/wordpress/?p=80', 0, 'revision', '', 0),
(81, 1, '2025-03-21 15:12:39', '2025-03-21 15:12:39', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"NEW CONTENT\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/new-posts {\"name\":\"acf/new-posts\",\"data\":{\"new_post_0_post_name\":\"Rei Ayanami: Tentative Name Review and Guide\",\"_new_post_0_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_0_post_background\":41,\"_new_post_0_post_background\":\"field_67d6e2aeee9a2\",\"new_post_0_post_link\":{\"title\":\"Rei Ayanami: Tentative Name Guide \\u0026amp; Review\",\"url\":\"http://localhost/wordpress/guides/guide-rei/\",\"target\":\"\"},\"_new_post_0_post_link\":\"field_67d6e2f0ee9a4\",\"new_post_1_post_name\":\"Helm (Treasure) Review and Guide\",\"_new_post_1_post_name\":\"field_67d6e2c9ee9a3\",\"new_post_1_post_background\":49,\"_new_post_1_post_background\":\"field_67d6e2aeee9a2\",\"new_post_1_post_link\":\"\",\"_new_post_1_post_link\":\"field_67d6e2f0ee9a4\",\"new_post\":2,\"_new_post\":\"field_67d6e269ee9a1\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"SHORTCUTS\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/guides {\"name\":\"acf/guides\",\"data\":{\"guides_category\":\"Newbie guides\",\"_guides_category\":\"field_67d6f02acfa6a\",\"guides_0_guide_name\":\"Intro\",\"_guides_0_guide_name\":\"field_67d6f061f280f\",\"guides_0_guide_picture\":30,\"_guides_0_guide_picture\":\"field_67d6f354f2810\",\"guides_0_guide_link\":{\"title\":\"Guides\",\"url\":\"http://localhost/wordpress/guides/\",\"target\":\"\"},\"_guides_0_guide_link\":\"field_67d6f36af2811\",\"guides_0_is_updated\":\"0\",\"_guides_0_is_updated\":\"field_67d6f386f2812\",\"guides\":1,\"_guides\":\"field_67d6f030cfa6b\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"D\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#2692d3\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-03-21 15:12:39', '2025-03-21 15:12:39', '', 10, 'http://localhost/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2025-03-21 15:26:38', '2025-03-21 15:26:38', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:post-featured-image /-->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-21 15:26:38', '2025-03-21 15:26:38', '', 77, 'http://localhost/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2025-03-21 15:52:10', '2025-03-21 15:52:10', '', 'Introduction to PvP Arena', '', 'publish', 'closed', 'closed', '', 'pvp-intro', '', '', '2025-03-21 15:52:25', '2025-03-21 15:52:25', '', 22, 'http://localhost/wordpress/?page_id=83', 0, 'page', '', 0),
(84, 1, '2025-03-21 15:52:10', '2025-03-21 15:52:10', '', 'Introduction to PvP Arena', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2025-03-21 15:52:10', '2025-03-21 15:52:10', '', 83, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2025-03-25 10:27:11', '2025-03-25 10:27:11', '', 'anne_full', '', 'inherit', 'open', 'closed', '', 'anne_full', '', '', '2025-03-25 10:27:11', '2025-03-25 10:27:11', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/anne_full.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2025-03-25 10:38:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-03-25 10:38:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=86', 0, 'post', '', 0),
(87, 1, '2025-03-25 11:07:01', '2025-03-25 11:07:01', '<!-- wp:acf/breadcrump {\"name\":\"acf/breadcrump\",\"data\":[],\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:post-featured-image /-->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 11:07:01', '2025-03-25 11:07:01', '', 77, 'http://localhost/wordpress/?p=87', 0, 'revision', '', 0),
(88, 1, '2025-03-25 11:07:52', '2025-03-25 11:07:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"acf/breadcrump\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Breadcrump', 'breadcrump', 'trash', 'closed', 'closed', '', 'group_67e28e71ea9bf__trashed', '', '', '2025-03-25 11:13:49', '2025-03-25 11:13:49', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2025-03-25 11:14:34', '2025-03-25 11:14:34', '<!-- wp:acf/breadcrumb {\"name\":\"acf/breadcrumb\",\"mode\":\"preview\"} /-->\n\n<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:post-featured-image /-->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 11:14:34', '2025-03-25 11:14:34', '', 77, 'http://localhost/wordpress/?p=89', 0, 'revision', '', 0),
(92, 1, '2025-03-25 11:22:31', '2025-03-25 11:22:31', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:post-featured-image {\"align\":\"left\"} /-->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 11:22:31', '2025-03-25 11:22:31', '', 77, 'http://localhost/wordpress/?p=92', 0, 'revision', '', 0),
(94, 1, '2025-03-25 11:29:48', '2025-03-25 11:29:48', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 11:29:48', '2025-03-25 11:29:48', '', 77, 'http://localhost/wordpress/?p=94', 0, 'revision', '', 0),
(95, 1, '2025-03-25 11:48:45', '2025-03-25 11:48:45', '', 'profile_bg', '', 'inherit', 'open', 'closed', '', 'profile_bg', '', '', '2025-03-25 11:48:45', '2025-03-25 11:48:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/profile_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2025-03-25 12:18:10', '2025-03-25 12:18:10', '', 'Anne_Mircale_Fairy_Card_262x358', '', 'inherit', 'open', 'closed', '', 'anne_mircale_fairy_card_262x358', '', '', '2025-03-25 12:18:10', '2025-03-25 12:18:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2025/03/Anne_Mircale_Fairy_Card_262x358.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2025-03-25 12:19:06', '2025-03-25 12:19:06', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"GALLERY\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#eeee22\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:post-featured-image /-->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 12:19:06', '2025-03-25 12:19:06', '', 77, 'http://localhost/wordpress/?p=98', 0, 'revision', '', 0),
(100, 1, '2025-03-25 12:31:01', '2025-03-25 12:31:01', '', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 12:31:01', '2025-03-25 12:31:01', '', 77, 'http://localhost/wordpress/?p=100', 0, 'revision', '', 0),
(102, 1, '2025-03-25 13:33:14', '2025-03-25 13:33:14', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:33:14', '2025-03-25 13:33:14', '', 77, 'http://localhost/wordpress/?p=102', 0, 'revision', '', 0),
(104, 1, '2025-03-25 13:35:02', '2025-03-25 13:35:02', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><strong>Anne: Miracle Fairy</strong> is a <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst</strong> <img srcset=\"/static/022b850a8ef7f8307b5985afd0f0bb4a/2c550/type_2_bg.png 8w,/static/022b850a8ef7f8307b5985afd0f0bb4a/c667b/type_2_bg.png 15w,/static/022b850a8ef7f8307b5985afd0f0bb4a/3c6f7/type_2_bg.png 30w\" src=\"https://www.prydwen.gg/static/022b850a8ef7f8307b5985afd0f0bb4a/3c6f7/type_2_bg.png\" alt=\"2\"><img src=\"\" alt=\"\"> character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> <img srcset=\"/static/a1b0487f5af47374c34fe9343711dca1/ab228/weapon_rocket.png 10w,/static/a1b0487f5af47374c34fe9343711dca1/52d71/weapon_rocket.png 20w,/static/a1b0487f5af47374c34fe9343711dca1/72817/weapon_rocket.png 40w\" src=\"https://www.prydwen.gg/static/a1b0487f5af47374c34fe9343711dca1/72817/weapon_rocket.png\" alt=\"Rocket Launcher\"><img src=\"\" alt=\"\"> weapon and belongs to the <strong>Wind</strong> <img srcset=\"/static/51e72c87a571643402618870d20dc26c/2c550/wind_bg.png 8w,/static/51e72c87a571643402618870d20dc26c/c667b/wind_bg.png 15w,/static/51e72c87a571643402618870d20dc26c/3c6f7/wind_bg.png 30w\" src=\"https://www.prydwen.gg/static/51e72c87a571643402618870d20dc26c/3c6f7/wind_bg.png\" alt=\"Wind\"><img src=\"\" alt=\"\"> element. She\'s part of the <strong>Missilis</strong> <img srcset=\"/static/455887108bda7782b2f077bc87450982/86ee2/man_missilis.png 13w,/static/455887108bda7782b2f077bc87450982/88208/man_missilis.png 25w,/static/455887108bda7782b2f077bc87450982/e9fba/man_missilis.png 50w\" src=\"https://www.prydwen.gg/static/455887108bda7782b2f077bc87450982/e9fba/man_missilis.png\" alt=\"Missilis\"><img src=\"\" alt=\"\"> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:35:02', '2025-03-25 13:35:02', '', 77, 'http://localhost/wordpress/?p=104', 0, 'revision', '', 0),
(106, 1, '2025-03-25 13:40:15', '2025-03-25 13:40:15', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><strong>Anne: Miracle Fairy</strong> is a <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst 2</strong> character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong><img src=\"\" alt=\"\"> weapon and belongs to the <strong>Wind</strong><img src=\"\" alt=\"\"> element. She\'s part of the <strong>Missilis</strong><img src=\"\" alt=\"\"> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:40:15', '2025-03-25 13:40:15', '', 77, 'http://localhost/wordpress/?p=106', 0, 'revision', '', 0),
(107, 1, '2025-03-25 13:42:44', '2025-03-25 13:42:44', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong><img src=\"\" alt=\"\"> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:42:44', '2025-03-25 13:42:44', '', 77, 'http://localhost/wordpress/?p=107', 0, 'revision', '', 0),
(109, 1, '2025-03-25 13:43:13', '2025-03-25 13:43:13', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong><img src=\"\" alt=\"\"> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:43:13', '2025-03-25 13:43:13', '', 77, 'http://localhost/wordpress/?p=109', 0, 'revision', '', 0),
(111, 1, '2025-03-25 13:45:19', '2025-03-25 13:45:19', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\",\"align\":\"wide\"} -->\n<h2 class=\"wp-block-heading alignwide has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:45:19', '2025-03-25 13:45:19', '', 77, 'http://localhost/wordpress/?p=111', 0, 'revision', '', 0),
(112, 1, '2025-03-25 13:52:04', '2025-03-25 13:52:04', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\"} -->\n<h2 class=\"wp-block-heading has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:52:04', '2025-03-25 13:52:04', '', 77, 'http://localhost/wordpress/?p=112', 0, 'revision', '', 0),
(113, 1, '2025-03-25 13:52:43', '2025-03-25 13:52:43', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\"} -->\n<h2 class=\"wp-block-heading has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:52:43', '2025-03-25 13:52:43', '', 77, 'http://localhost/wordpress/?p=113', 0, 'revision', '', 0),
(114, 1, '2025-03-25 13:53:47', '2025-03-25 13:53:47', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\"} -->\n<h2 class=\"wp-block-heading has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:53:47', '2025-03-25 13:53:47', '', 77, 'http://localhost/wordpress/?p=114', 0, 'revision', '', 0),
(115, 1, '2025-03-25 13:54:16', '2025-03-25 13:54:16', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\"} -->\n<h2 class=\"wp-block-heading has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:54:16', '2025-03-25 13:54:16', '', 77, 'http://localhost/wordpress/?p=115', 0, 'revision', '', 0),
(116, 1, '2025-03-25 13:55:02', '2025-03-25 13:55:02', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\"} -->\n<h2 class=\"wp-block-heading has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:55:02', '2025-03-25 13:55:02', '', 77, 'http://localhost/wordpress/?p=116', 0, 'revision', '', 0),
(117, 1, '2025-03-25 13:55:08', '2025-03-25 13:55:08', '<!-- wp:acf/section-name {\"name\":\"acf/section-name\",\"data\":{\"section_name\":\"introduction\",\"_section_name\":\"field_67d2fa47204bb\",\"color\":\"#d7bc57\",\"_color\":\"field_67dd711a88f11\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:heading {\"textAlign\":\"left\"} -->\n<h2 class=\"wp-block-heading has-text-align-left\"><strong>Anne: Miracle Fairy</strong> is a<strong> <mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">SSR rarity</mark></strong> <strong>Burst </strong>2 character from the <strong>Supporter</strong> class, who wields a <strong>Rocket Launcher</strong> weapon and belongs to the<strong> Wind</strong> element. She\'s part of the <strong>Missilis</strong> faction.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Anne after being reborn as a winter spirit upon receiving some gifts from Rupee. Rupee\'s infectious positive energy has made her more cheerful and optimistic than ever before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"23px\"} -->\n<div style=\"height:23px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>To learn more about <strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#d7bc57\" class=\"has-inline-color\">Anne: Miracle Fairy</mark></strong> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you\'re looking for.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Anne: Miracle Fairy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2025-03-25 13:55:08', '2025-03-25 13:55:08', '', 77, 'http://localhost/wordpress/?p=117', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfive', 'twentytwentyfive', 0),
(3, 'gunner-wiki', 'gunner-wiki', 0),
(4, 'Guides', 'guides', 0),
(5, 'Characters', 'characters', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 3, 0),
(39, 4, 0),
(77, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'FunTomAsh'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"e5a81b0f78f878585ba04db8ae512c4998889050bef18215d863b60d03f645ca\";a:4:{s:10:\"expiration\";i:1744035375;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:136.0) Gecko/20100101 Firefox/136.0\";s:5:\"login\";i:1742825775;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1740398508'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '27'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'wp_persisted_preferences', 'a:5:{s:4:\"core\";a:8:{s:26:\"isComplementaryAreaVisible\";b:1;s:15:\"distractionFree\";b:0;s:10:\"editorMode\";s:6:\"visual\";s:9:\"focusMode\";b:0;s:12:\"fixedToolbar\";b:1;s:21:\"showListViewByDefault\";b:0;s:14:\"inactivePanels\";a:0:{}s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:23:\"taxonomy-panel-post_tag\";}}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:20:\"welcomeGuideTemplate\";b:0;}s:9:\"_modified\";s:24:\"2025-03-25T13:45:36.796Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:14:\"core/edit-site\";a:3:{s:12:\"welcomeGuide\";b:0;s:16:\"welcomeGuidePage\";b:0;s:18:\"welcomeGuideStyles\";b:0;}}'),
(22, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(23, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'FunTomAsh', '$P$BPJF0PUL9Vl5jgnFkkMFkbtOMwXxTG1', 'funtomash', 'tomash342@gmail.com', 'http://localhost/wordpress', '2025-02-24 12:01:29', '', 0, 'FunTomAsh');

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

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
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1071;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
