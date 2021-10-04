-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 10:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_nextbit`
--

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
(1, 1, 'ผู้แสดงความเห็นเวิร์ดเพรส', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-29 23:54:25', '2021-09-29 16:54:25', 'สวัสดี นี่คือความเห็น\nเพื่อเริ่มต้นการตรวจสอบ การแก้ไข และการลบความเห็น โปรดเข้าไปที่หน้าจอความเห็นบนหน้าควบคุม\nรูปแทนตัวของผู้แสดงความเห็นมาจาก <a href=\"https://gravatar.com\">Gravatar</a>', 0, '1', '', 'comment', 0, 0),
(2, 17, 'MisterSiGz', 'y-title@hotmail.com', 'http://localhost', '::1', '2021-09-30 23:27:25', '2021-09-30 16:27:25', '5555555', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'comment', 0, 1),
(3, 17, 'warat', 'y-title@hotmail.com', '', '::1', '2021-09-30 23:28:21', '2021-09-30 16:28:21', 'sdasdsadasd', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'comment', 0, 0),
(4, 30, 'warat', 'y-title@hotmail.com', '', '::1', '2021-10-01 11:24:12', '2021-10-01 04:24:12', 'สุดยอดไปเลย', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'comment', 0, 0),
(5, 30, 'warat', 'y-title@hotmail.com', '', '::1', '2021-10-01 11:24:28', '2021-10-01 04:24:28', '1555555', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'comment', 4, 0);

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
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Nextbit', 'yes'),
(4, 'blogdescription', 'แค่เว็บเวิร์ดเพรสเว็บหนึ่ง', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'y-title@hotmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G:i น.', 'yes'),
(25, 'links_updated_date_format', 'j F Y G:i น.', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:59:\"C:\\xampp\\htdocs/wp-content/themes/twentytwentyone/style.css\";i:1;s:58:\"C:\\xampp\\htdocs/wp-content/themes/twentynineteen/style.css\";i:2;s:59:\"C:\\xampp\\htdocs/wp-content/themes/twentytwentyone/index.php\";i:3;s:60:\"C:\\xampp\\htdocs/wp-content/themes/twentytwentyone/readme.txt\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'my_theme', 'yes'),
(41, 'stylesheet', 'my_theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Asia/Bangkok', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '9', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1648486465', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'th', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:178:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>เรื่องล่าสุด</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:254:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>ความเห็นล่าสุด</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:162:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>คลังเก็บ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:164:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>หมวดหมู่</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1633380865;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1633409665;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633452865;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633452892;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633452893;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633452954;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633625665;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633061649;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:53:\"การยืนยัน SSL ล้มเหลว\";}}', 'yes'),
(132, '_site_transient_timeout_browser_11c4338e6d26ae4a4427e08a45877225', '1633539293', 'no'),
(133, '_site_transient_browser_11c4338e6d26ae4a4427e08a45877225', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_26328e95a1a09d326a615e4b43668741', '1633539293', 'no'),
(135, '_site_transient_php_check_26328e95a1a09d326a615e4b43668741', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'ai1wm_secret_key', '4lewfQKhLxFy', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(165, 'ai1wm_status', 'a:2:{s:4:\"type\";s:4:\"info\";s:7:\"message\";s:137:\"ทำการเรียกรายการส่วนมีเดียของไฟล์ WordPress เสร็จสิ้น\";}', 'yes'),
(171, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'current_theme', '', 'yes'),
(180, 'theme_mods_my_theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633099437;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(181, 'theme_switched', '', 'yes'),
(190, '_site_transient_ai1wm_last_check_for_updates', '1633366560', 'no'),
(191, 'ai1wm_updater', 'a:0:{}', 'yes'),
(194, 'recovery_mode_email_last_sent', '1632993512', 'yes'),
(223, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633015540;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(225, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:2:\"th\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633366559;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(229, 'theme_mods_ashe', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633018659;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"sidebar-right\";a:0:{}s:12:\"sidebar-left\";a:0:{}s:11:\"sidebar-alt\";a:0:{}s:14:\"footer-widgets\";a:0:{}}}}', 'yes'),
(236, 'theme_mods_incolor', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633020459;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:7:\"primary\";a:0:{}}}}', 'yes'),
(247, 'theme_mods_enjoylife', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633022160;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:6:\"footer\";a:0:{}s:9:\"header-ad\";a:0:{}s:11:\"featured-ad\";a:0:{}s:12:\"archive-ad-1\";a:0:{}s:12:\"archive-ad-2\";a:0:{}s:11:\"post-top-ad\";a:0:{}s:14:\"post-bottom-ad\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(248, 'widget_enjoylife-most-commented', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_enjoylife-recent', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'category_children', 'a:0:{}', 'yes'),
(257, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(262, 'theme_mods_online-photography', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633060786;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:13:\"home-sections\";a:0:{}}}}', 'yes'),
(263, 'widget_online_photography_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_online_photography_featured_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_online_photography_latest_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'theme_mods_xhub-blog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633068774;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(299, 'xhubfit6', '1', 'yes'),
(308, 'theme_mods_x-hub', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633099670;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(368, '_site_transient_timeout_theme_roots', '1633368361', 'no'),
(369, '_site_transient_theme_roots', 'a:11:{s:4:\"ashe\";s:7:\"/themes\";s:22:\"blog-site-template/css\";s:7:\"/themes\";s:9:\"enjoylife\";s:7:\"/themes\";s:7:\"incolor\";s:7:\"/themes\";s:8:\"my_theme\";s:7:\"/themes\";s:18:\"online-photography\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:5:\"x-hub\";s:7:\"/themes\";s:9:\"xhub-blog\";s:7:\"/themes\";}', 'no'),
(370, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633366563;s:7:\"checked\";a:10:{s:4:\"ashe\";s:4:\"2.14\";s:9:\"enjoylife\";s:5:\"1.0.9\";s:7:\"incolor\";s:5:\"1.0.8\";s:8:\"my_theme\";s:0:\"\";s:18:\"online-photography\";s:5:\"1.0.4\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:5:\"x-hub\";s:5:\"1.0.4\";s:9:\"xhub-blog\";s:5:\"1.0.0\";}s:8:\"response\";a:1:{s:9:\"enjoylife\";a:6:{s:5:\"theme\";s:9:\"enjoylife\";s:11:\"new_version\";s:5:\"1.1.0\";s:3:\"url\";s:39:\"https://wordpress.org/themes/enjoylife/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/enjoylife.1.1.0.zip\";s:8:\"requires\";s:3:\"4.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:8:{s:4:\"ashe\";a:6:{s:5:\"theme\";s:4:\"ashe\";s:11:\"new_version\";s:4:\"2.14\";s:3:\"url\";s:34:\"https://wordpress.org/themes/ashe/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/theme/ashe.2.14.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:7:\"incolor\";a:6:{s:5:\"theme\";s:7:\"incolor\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:37:\"https://wordpress.org/themes/incolor/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/incolor.1.0.8.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:18:\"online-photography\";a:6:{s:5:\"theme\";s:18:\"online-photography\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:48:\"https://wordpress.org/themes/online-photography/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/theme/online-photography.1.0.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:5:\"x-hub\";a:6:{s:5:\"theme\";s:5:\"x-hub\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:35:\"https://wordpress.org/themes/x-hub/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/x-hub.1.0.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:9:\"xhub-blog\";a:6:{s:5:\"theme\";s:9:\"xhub-blog\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:39:\"https://wordpress.org/themes/xhub-blog/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/xhub-blog.1.0.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(371, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633366563;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.48\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.48.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2601679\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2601679\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.48\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

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
(3, 5, '_edit_lock', '1633024645:1'),
(4, 1, '_edit_lock', '1632936113:1'),
(7, 9, '_wp_attached_file', '2021/09/icon.png'),
(8, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2021/09/icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 10, '_wp_trash_meta_status', 'publish'),
(10, 10, '_wp_trash_meta_time', '1633002529'),
(11, 3, '_edit_lock', '1633015169:1'),
(12, 2, '_edit_lock', '1633015172:1'),
(13, 11, '_edit_lock', '1633015249:1'),
(14, 12, '_edit_lock', '1633015291:1'),
(17, 14, '_edit_lock', '1633018615:1'),
(18, 15, '_edit_lock', '1633018683:1'),
(21, 17, '_edit_lock', '1633019991:1'),
(24, 17, '_thumbnail_id', '9'),
(25, 19, '_edit_lock', '1633024997:1'),
(26, 20, '_wp_attached_file', '2021/10/Screenshot-2021-09-30-191714.png'),
(27, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:918;s:4:\"file\";s:40:\"2021/10/Screenshot-2021-09-30-191714.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 19, '_thumbnail_id', '20'),
(31, 22, '_edit_lock', '1633057387:1'),
(34, 25, '_edit_lock', '1633057010:1'),
(37, 27, '_edit_lock', '1633057141:1'),
(38, 28, '_wp_attached_file', '2021/10/CAT.png'),
(39, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2021/10/CAT.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 27, '_thumbnail_id', '28'),
(43, 30, '_edit_lock', '1633058109:1'),
(44, 31, '_wp_attached_file', '2021/10/d5.jpg'),
(45, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1917;s:6:\"height\";i:967;s:4:\"file\";s:14:\"2021/10/d5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 30, '_thumbnail_id', '31');

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
(19, 1, '2021-10-01 01:05:23', '2021-09-30 18:05:23', '<!-- wp:paragraph -->\n<p>testระบบ</p>\n<!-- /wp:paragraph -->', 'บทความที่1', '', 'publish', 'open', 'open', '', '%e0%b8%9a%e0%b8%97%e0%b8%84%e0%b8%a7%e0%b8%b2%e0%b8%a1%e0%b8%97%e0%b8%b5%e0%b9%881', '', '', '2021-10-01 01:05:23', '2021-09-30 18:05:23', '', 0, 'http://localhost/?p=19', 0, 'post', '', 0),
(20, 1, '2021-10-01 01:05:08', '2021-09-30 18:05:08', '', 'Screenshot 2021-09-30 191714', '', 'inherit', 'open', 'closed', '', 'screenshot-2021-09-30-191714', '', '', '2021-10-01 01:05:08', '2021-09-30 18:05:08', '', 19, 'http://localhost/wp-content/uploads/2021/10/Screenshot-2021-09-30-191714.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2021-10-01 01:05:23', '2021-09-30 18:05:23', '<!-- wp:paragraph -->\n<p>testระบบ</p>\n<!-- /wp:paragraph -->', 'บทความที่1', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-10-01 01:05:23', '2021-09-30 18:05:23', '', 19, 'http://localhost/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-10-01 09:52:05', '2021-10-01 02:52:05', '<!-- wp:paragraph -->\n<p>tedofksoekfksdkfojejsdfjjisekdkkkkkkkkkkkkkkkkkkkkkkkkkkkkk</p>\n<!-- /wp:paragraph -->', 'บทความที่2', '', 'publish', 'open', 'open', '', '%e0%b8%9a%e0%b8%97%e0%b8%84%e0%b8%a7%e0%b8%b2%e0%b8%a1%e0%b8%97%e0%b8%b5%e0%b9%882', '', '', '2021-10-01 09:52:05', '2021-10-01 02:52:05', '', 0, 'http://localhost/?p=22', 0, 'post', '', 0),
(23, 1, '2021-10-01 09:52:05', '2021-10-01 02:52:05', '<!-- wp:paragraph -->\n<p>tedofksoekfksdkfojejsdfjjisekdkkkkkkkkkkkkkkkkkkkkkkkkkkkkk</p>\n<!-- /wp:paragraph -->', 'บทความที่2', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-10-01 09:52:05', '2021-10-01 02:52:05', '', 22, 'http://localhost/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-10-01 09:52:15', '0000-00-00 00:00:00', '', 'บันทึกฉบับร่างอัตโนมัติ', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-10-01 09:52:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=24', 0, 'post', '', 0),
(25, 1, '2021-10-01 09:57:05', '2021-10-01 02:57:05', '<!-- wp:paragraph -->\n<p>gfdgdfgdf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>บางทีก่อนจะคิด จะพูดกันว่า ความสำเร็จต้องทำอย่างไร ปัจจุบันเราอาจกำลังคิดหรือทำอะไรที่ส่งผลให้ มันพัง มันไม่สำเร็จ หรือกำลังทำให้มันยากกว่าเดิม โดยไม่รู้ตัวอยู่ ก็เป็นได้…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>การไม่ใช่คนดัง แล้วก็ไม่ใช่กลุ่มอายุน้อยร้อยล้าน หรือวางแผนเปิดคอร์สสอนรวย การจะพูดเรื่องความสำเร็จอาจดูขัดเขิน แต่ถ้า&nbsp;<strong>“ทำให้ตายก็ไม่สำเร็จ”</strong>&nbsp;เนี่ย อาจพอมาบอกกล่าวให้ชวนคิดกันได้อยู่บ้างเหมือนกัน…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>คงต้องเริ่มจากมองเห็นร่วมกันก่อนว่า&nbsp;<strong>ความสำเร็จ คงไม่เกิดจากการทำอะไรเพียงครั้งเดียว หรืออย่างเดียว</strong>&nbsp;แล้วจะสำเร็จ มันต้องทำอะไรมาหลาย ๆ อย่าง และบางอย่างต้องทำซ้ำหลายครั้ง ซึ่งในการที่เราต้องทำหลายครั้ง หลายเรื่อง และสารพัดวิธีนี้เอง มันจึงไม่มีสูตรตายตัวหรอกว่า ทำแบบนั้น แบบนี้ แล้วจะสำเร็จไปเสียหมด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แล้วในการทำซ้ำ ๆ นี่เอง บางทีผลลัพธ์ก็เป็นทั้งส่งเสริมให้ก้าวหน้า และถ่วงความสำเร็จได้เช่นกัน เราจึงควร “เลือกทำ” มิเช่นนั้นมันก็คือ การพยายามที่ผิดที่ ผิดทาง…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แต่การจะบอกว่าสิ่งไหนควรทำ ไม่ควรทำ มันก็อาจตีกรอบให้ยากอีก เพราะนอกจากจะคาดเดาอนาคตไม่ได้แล้ว ยังไม่รู้ด้วยว่า แต่ละคนทำเรื่องอะไร และมีเป้าหมายความสำเร็จนั้นที่ตรงไหน ทั้งแง่การทำธุรกิจ, เป้าหมายชีวิต หรือหน้าที่การงาน ภาพรวมเรื่องนี้จึงเป็นเพียง แนวทาง วิธีคิด หรือกรอบคิด (Mindset) ในการทำสิ่งหนึ่ง ที่คงพอจะสะท้อนว่า ทำแบบนี้ต่อไป ให้ตายก็คงไม่สำเร็จ ดังนี้</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5 แบบที่ ทำให้ตายก็ไม่สำเร็จหรอก</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>ทำตามเขาตลอด</strong><br>“การทำตาม” มีหลายแบบ และไม่ใช่เรื่องผิด บางทีเป็นแนวคิดที่ดีด้วยซ้ำ แต่การ “ตามตลอด” นั้น คงไม่ดี เพราะนอกจากเราไม่อาจตามใครได้ตลอดจริง ๆ แล้ว อาจมีการตามแบบผิด ๆ ประมาณว่า เหมือนแต่ข้างนอก ข้างในไม่ใช่ อะไรทำนองนี้หรือถ้าวันหนึ่งเขาตัน เราก็ตันไปด้วย หรือถ้าเขาทำผิดเสียหาย เราก็เสียหายไปด้วย บางกรณีเขาอาจแก้ปัญหาได้ เพราะเขารู้ว่าทำเพราะอะไร แต่เราไม่รู้ เราอาจแก้ปัญหาไม่ได้เหมือนเขา รวม ๆ แล้ว การตามใครได้ตลอดจึงเป็นเรื่องยากและไม่การันตีความสำเร็จอีกด้วยแต่จะว่าไปข้อนี้ก็ถือว่าไม่ร้ายแรง เพราะหลายคนเมื่อตามเขาไป จนถึงจุดเลี้ยวที่ตามไม่ได้ หรือถูกสถานการณ์บังคับให้ต้องยืนด้วยตัวเอง, แก้ปัญหาด้วยตัวเอง, ต้องไปต่อด้วยตัวเอง แล้วสามารถไปได้ อันนี้ก็ดีไป และมันเท่ากับว่า เราไม่ได้ตามเขาตลอดแล้ว นั่นเอง</li><li><strong>ทำสิ่งที่ควบคุมยากไป / ไม่รู้<br></strong>ไม่มีความสำเร็จใดไร้ซึ่งอุปสรรค และไม่จำเป็นต้องรู้ทุกอย่างจึงจะสำเร็จ นั้นเป็นความจริง แต่การไม่รู้อะไรเลย รู้น้อยมากไปจนถึง การที่เราจัดการอะไรไม่ได้เลยนั้น มันก็พอเห็นอยู่ว่าจะสำเร็จได้อย่างไร<br>ข้อนี้พึงระวังตั้งแต่&nbsp;<strong>“ยังไม่เริ่มทำ”</strong>&nbsp;อันที่จริงทั้งในสิ่งที่ควบคุมไม่ได้ และความไม่รู้สองเรื่องนี้จะแยกหัวข้อกันก็ได้ แต่ในแบบหนึ่ง หากเรามองทุกอย่างแง่ดีเกินไป คือ ทำไปก่อน คิดว่าจะควบคุมสิ่งที่ทำได้ แก้ปัญหาได้ พอเอาเข้าจริงก็จนปัญญา เช่นนี้ก็เพราะความ&nbsp;<strong>“ไม่รู้”</strong>&nbsp;อยู่เหมือนกัน<br>อาจเป็นจริงในแง่ที่ว่าจะรอให้ทุกอย่างพร้อม รู้ทุกเรื่อง คุมได้ทุกอย่าง คงไม่ได้ทำกันพอดี แต่อย่างน้อยก็ควรพอรู้ พอเข้าใจ ให้เราประเมินได้ว่า นี่มันไหวหรือไม่ไหว รวมถึงเหมาะหรือไม่เหมาะกับเรา<br>และหลายครั้ง ต่อให้รู้เรื่องที่ทำมากพอ แต่อาจไม่เคยรู้ว่า&nbsp;<strong>“ตอนนี้ยังไม่ใช่เวลา”</strong>&nbsp;มุ่งหน้าดันทุรังทำไปก็คงไม่สำเร็จ เพราะปัจจัยภายนอกหลายอย่างนั้น มันควบคุมไม่ได้…<br>อีกประการของสิ่งที่บอกว่า ควบคุมยากนั้น ก็ไม่ใช่แค่ความไม่รู้ เพราะไม่รู้เราก็ยังไปศึกษาหาความรู้ได้ แต่หลายเรื่องถึงรู้ แต่ก็ทำเองไม่ได้ ต้องพึ่งพาคนอื่น สิ่งอื่น ซึ่งถ้ามากเกินไป มันจะกลายเป็นยากทันที&nbsp; หรือหากมองเป็นการลงทุน แล้วจะลงทุนให้เองหมดเพื่อควบคุมได้ ก็ต้องลงทุนมากกว่าคนอื่น ต้นทุนสูง และ มีไม่น้อยที่เข้าข่ายบานปลาย<br>ทั้งคุมยาก และความไม่รู้นี้ ต่อให้ทำอะไรขึ้นมาได้ ก็จะเจอแต่ปัญหาเพราะเราไม่เข้าใจ แล้วแต่ละปัญหาก็แก้ยากเพราะต้องพึ่งคนอื่น แถมโดนโกง โดนหลอกก็ง่าย พอถึงตรงนี้บางทีเราจะนึกออก เพราะรอบตัวคงมีให้เห็นว่า&nbsp;<strong>ทำในสิ่งที่ไม่รู้ ทำในสิ่งที่ไม่มีปัญญาควบคุมนั้น มันไปได้ยากจริง ๆ</strong></li><li><strong>ทำเรื่องที่เราขาดเขาไม่ได้<br></strong>ข้อนี้อาจมีความคลุมเครืออยู่บ้างในแง่ว่า เราไม่ควรพึ่งพาใครงั้นหรือ? ยกตัวอย่างแบบนี้ดีกว่า หากเรามีเป้าหมายทำอะไรสักอย่าง เช่น เขียนหนังสือการ์ตูนสักเรื่อง แต่เราเป็นนักวาด แต่งเรื่องไม่เก่ง จึงหาคนแต่งเรื่องเก่ง ๆ ที่วาดไม่เก่งมาทำร่วมกัน แล้วเขาแต่งมาหนึ่งตอน เราก็วาดเสร็จ แล้ว แต่เขายังไม่แต่งต่อมาให้สักที คงนึกออกว่าสถานการณ์แบบนี้แย่แค่ไหน เพราะกลายเป็นว่าความสำเร็จนั้น มีปัจจัยอยู่ที่คนอื่นเสียครึ่งหนึ่ง…หรือกรณีเป็นธุรกิจ ก็เช่น การพึ่งพาวัตถุดิบแหล่งเดียว ช่องทางจำหน่ายหลักแห่งเดียว เหล่านี้อำนาจต่อรองมักเป็นปลายทาง หากถามว่ารวม ๆ แล้ว หากเป็นตอนเริ่มต้นไม่ผิดอะไรเลย อาจเป็นเรื่องจำเป็นด้วยซ้ำ แต่ดังที่บอกมันเป็นแนวคิด ถ้าอนาคตไปยัง “ขาดเขาไม่ได้” ก็ให้ระวังเพราะพังกันมาเยอะ…ส่วนหนึ่งข้อนี้ถือว่าควบคุมไม่ได้เหมือนกับข้อที่แล้วไหม? ส่วนหนึ่งก็ใช่แต่กระบวนการ แนวคิด หรือเรื่องราวมักจะต่างกัน เพราะควบคุมไม่ได้มีหลายปัจจัย พื้นฐานมาจากความไม่รู้ แต่ขาดเขาไม่ได้ เป็นเพียงปัจจัยเดียวที่ถ้าดี ก็อาจดีเลยอยู่กันต่อไป แต่ถ้าไม่ดีเมื่อไหร่ยังไงก็รอดยากนั่นเอง</li><li><strong>ทำเพื่อคนอื่น</strong><br>ข้อนี้อาจรวมการ&nbsp;<strong>“ทำเพราะคนอื่น”</strong>&nbsp;อยู่ด้วยก็ได้ แต่การทำเพราะคนอื่นเชื่อว่าส่วนใหญ่พอจะนึกออกว่ามันยากจะสำเร็จ แม้จะทำออกมาได้ดี แต่มันก็ดูจะไม่ใช่ความสำเร็จที่เราต้องการสักเท่าไรสำหรับการ “ทำเพื่อคนอื่น” มันเป็นข้อที่ละเอียดอ่อน และอาจยากจะเข้าใจจนกว่าจะได้เรียนรู้บางอย่าง หลายคนมีปมในใจชอบไปอยู่ในความสำเร็จคนอื่น แล้วสุดท้ายเขาก็ไปต่อโดยทิ้งเราเอาไว้ ซึ่งบางทีเขาไม่ได้ทิ้ง เขาก็ต้องไปต่อตามปกติ เราไปผูกตัวเราไว้กับเขาแต่แรกเอง หรือก็เพราะบางทีเขากลัวว่าต้องพึ่งพาเราไปตลอด ถ้าเราไม่อยู่แล้วล่ะ? (เหมือนข้อ 3) ก็เป็นได้ซึ่งการทำเพื่อคนอื่นในที่นี้ไม่ได้หมายถึง การทำเพื่อสังคมอะไรทำนองนั้น เพราะถ้าทำเพื่อคนอื่นในแนวนั้นจริง ๆ เราจะไม่ต้องการความสำเร็จ เพราะแค่ได้ทำก็ถือว่าสำเร็จแล้ว…แต่ความหมิ่นเหม่ก็อยู่ตรงนี้แหละ เช่น หลายคนบอกว่าทำเพื่อคนรัก ทำเพื่อครอบครัว ทำเพื่อเพื่อน ก็เป็นสิ่งที่ดี แต่นี่ก็ไม่ใช่เรื่องของความสำเร็จ เพราะเราไม่มีวันเติมอะไรให้ใครได้เต็ม…&nbsp;<strong>ไม่มีวัน<br></strong>ยกตัวอย่างที่น่าจะเห็นได้ชัด เช่นที่บอกว่า เราทำงานเพื่อครอบครัว ซึ่งที่จริงเราแค่ทำงานเพื่อ&nbsp;<strong>หาเงิน</strong>&nbsp;มาให้ครอบครัว อันนั้นจะถูกต้องกว่า เพราะผลลัพธ์มันไม่เคยการันตีว่า&nbsp;<strong>เงินนั้นจะพอ</strong>&nbsp;หรือจะทำครอบครัวมีความสุข มันยังมีปัจจัยอื่น ๆ อีกหลายอย่าง แถมเวลา สามี ภรรยา ทะเลาะกันขึ้นมา ต่างก็มักอ้างว่าตัวเองทำเพื่อครอบครัวแล้ว&nbsp;<strong>ถ้าอีกฝ่ายรู้สึกได้รับเพียงพอหรือเห็นค่า ก็ไม่น่าทะเลาะกัน…<br></strong>ประเด็นอยู่ที่บางเรื่องเป็นหน้าที่ ความรับผิดชอบ ถ้าเราไม่แยกออกให้ดี ๆ นอกจากมันไม่ใช่ความสำเร็จแล้วยังเป็นตัวถ่วงความสำเร็จได้ด้วย อย่าวางความสำเร็จว่า ทำตามหน้าที่คือสำเร็จ รับผิดชอบแล้วคือสำเร็จ มันคนละเรื่องกัน หรือถ้าจะเรียกว่าสำเร็จคุณต้องมีผลลัพธ์มาให้ชัดเจนเสียก่อน ว่าเขาเหล่านั้น โดยที่เขาเหล่านั้นเป็นคนบอกเราได้ว่าเราทำเพื่อเขาสำเร็จ ซึ่งคงยากมากจริง ๆ…อีกแบบก็จะเป็นแนวว่า “การเอาความสำเร็จของคนอื่นมาเป็นของตนเอง” ซึ่งมิใช่ว่าทำไม่ได้เลย เพียงแต่ต้องระวังการไปนึกว่านี่มันเป็น&nbsp;<strong>“บุญคุณ”</strong>&nbsp;เช่น โค้ชนักกีฬาต่อให้พานักกีฬาเป็นแชมป์ เขาก็มีโอกาสเปลี่ยนโค้ช เพื่อพัฒนาขึ้นไป เช่นจากระดับจังหวัด ไปประเทศ ไประดับโลก แม้แต่ได้แชมป์โลกแล้วก็ยังมีเปลี่ยนเลย ทั้งที่นั่นคือโค้ช ผู้นำพาเขาไปให้ได้แชมป์โลกนะ ถ้าไม่แยกแยะว่า ความสำเร็จของโค้ชก็คือทำให้เขามีศักยภาพสูงสุดเท่านั้น ส่วนตอนแข่งหรือการลงมือทำก็เป็นของนักกีฬา แม้บางส่วนจะดูเป็นความสำเร็จร่วมกัน แต่ที่สุดแล้วก็ความสำเร็จของใครของมัน…ดังที่บอกข้อนี้ละเอียดอ่อน บ้างก็คงเข้าใจ บ้างก็อาจขัดใจ ถ้าให้พยายามสรุปก็คือ&nbsp;<strong>ถ้าพูดเรื่องความสำเร็จ มันก็ต้องชัดก่อนว่า อะไรคือความสำเร็จ?</strong>&nbsp;“สำเร็จที่ทำให้เขาสำเร็จ” นั้นเป็นได้ แต่ส่วนใหญ่จะน้อยใจตั้งแต่ยังไม่สำเร็จ หรือเมื่อสำเร็จแล้วต้องเป็นบุญคุณตลอดไป อันนี้คงไม่น่าใช่อีก ลึก ๆ ทำเพื่อคนอื่น หรือเพื่อปมบางอย่างในใจต้องทบทวนให้ดี ๆ เพราะ<strong>คนที่ไม่ชัดเจนเช่นนี้ มักมีวันสำเร็จ</strong></li><li><strong>ทำดีที่สุดแล้ว (คนเดียว)<br></strong>นี่ก็เป็นอีกกรอบคิด (mindset) ที่ขัดขวางความสำเร็จของหลายคนบนความไม่รู้ตัว ด้วยคำว่า&nbsp;<strong>“ดีที่สุดแล้ว”</strong>&nbsp;ตัวอย่างที่น่าจะสะท้อนเรื่องนี้ได้ ก็ ลองนึกถึงเวลาเรามองเรื่องของคนอื่นแล้วมีความคิดว่า “ทำไมเขาไม่ทำแบบนั้น” ซึ่งมักจะเป็นเวลาที่เรามองเห็นทั้งโอกาส ศักยภาพของเขา พอมันก็ย้อนกลับมาที่ บางทีคนอื่นเขาก็มองเราเช่นนั้นเหมือนกัน ว่าทำไมไม่ทำบางอย่างบ้าง ในมุมคล้ายกัน ส่วนใหญ่เราก็คิดว่าเรา “ทำดีที่สุดแล้ว”<br>ก็ต้องทบทวนดูว่า เรารู้ตัวหรือไม่รู้ตัว ทำดีที่สุดแล้วจริง ๆ หรือยังไม่จริง วิธีการที่ดีที่สุดในข้อนี้คือ&nbsp;<strong>“มีแผนและตัวชี้วัด”</strong>&nbsp;เพราะเมื่อเรามีแผนในการลงมือทำ เราจะรู้ว่า&nbsp;<strong>“ต้องทำอะไร”</strong>&nbsp;ถ้ายังทำไม่ครบ ไม่หมด ไม่จบได้ตามแผน จะบอกว่าดีที่สุดแล้วนั้น คือเราคิดไปเอง และเท่านั้นยังไม่พอ เพราะแม้ทำครบตามแผนมันอาจกลายเป็นว่า&nbsp;<strong>“แค่ทำ”</strong>&nbsp;ถ้ามีตัวชี้วัดด้วยเราก็ไม่รู้สึกไปเองว่า&nbsp;<strong>“ทำพอแล้ว”</strong>&nbsp;และหากทำตามแผน มีผลชี้วัด ดีที่สุดหรือยังนั้น มันจะชัดเจนขึ้น…</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>ส่งท้าย</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ทุกความสำเร็จมีหลากหลายปัจจัย คนย่อมมีความเป็นปัจเจก นี่เป็นเพียงอีกหนึ่งบทความเพื่อการพัฒนาตนเอง ที่เขียนไว้แล้วว่า ไม่การันตีความสำเร็จให้ใคร แต่เชื่อว่าเป็นมุมคิดที่มีประโยชน์ ให้นำไปทบทวน ไม่ต้องวนอยู่กับความ ล้มเหลว ซ้ำซาก และ เช่นเคยครับ อยากดีกว่าเมื่อวาน วันนี้ก็ต้องเปลี่ยน…</p>\n<!-- /wp:paragraph -->', 'บทความที่3', '', 'publish', 'open', 'open', '', '%e0%b8%9a%e0%b8%97%e0%b8%84%e0%b8%a7%e0%b8%b2%e0%b8%a1%e0%b8%97%e0%b8%b5%e0%b9%883', '', '', '2021-10-01 09:57:05', '2021-10-01 02:57:05', '', 0, 'http://localhost/?p=25', 0, 'post', '', 0),
(26, 1, '2021-10-01 09:57:05', '2021-10-01 02:57:05', '<!-- wp:paragraph -->\n<p>gfdgdfgdf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>บางทีก่อนจะคิด จะพูดกันว่า ความสำเร็จต้องทำอย่างไร ปัจจุบันเราอาจกำลังคิดหรือทำอะไรที่ส่งผลให้ มันพัง มันไม่สำเร็จ หรือกำลังทำให้มันยากกว่าเดิม โดยไม่รู้ตัวอยู่ ก็เป็นได้…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>การไม่ใช่คนดัง แล้วก็ไม่ใช่กลุ่มอายุน้อยร้อยล้าน หรือวางแผนเปิดคอร์สสอนรวย การจะพูดเรื่องความสำเร็จอาจดูขัดเขิน แต่ถ้า&nbsp;<strong>“ทำให้ตายก็ไม่สำเร็จ”</strong>&nbsp;เนี่ย อาจพอมาบอกกล่าวให้ชวนคิดกันได้อยู่บ้างเหมือนกัน…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>คงต้องเริ่มจากมองเห็นร่วมกันก่อนว่า&nbsp;<strong>ความสำเร็จ คงไม่เกิดจากการทำอะไรเพียงครั้งเดียว หรืออย่างเดียว</strong>&nbsp;แล้วจะสำเร็จ มันต้องทำอะไรมาหลาย ๆ อย่าง และบางอย่างต้องทำซ้ำหลายครั้ง ซึ่งในการที่เราต้องทำหลายครั้ง หลายเรื่อง และสารพัดวิธีนี้เอง มันจึงไม่มีสูตรตายตัวหรอกว่า ทำแบบนั้น แบบนี้ แล้วจะสำเร็จไปเสียหมด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แล้วในการทำซ้ำ ๆ นี่เอง บางทีผลลัพธ์ก็เป็นทั้งส่งเสริมให้ก้าวหน้า และถ่วงความสำเร็จได้เช่นกัน เราจึงควร “เลือกทำ” มิเช่นนั้นมันก็คือ การพยายามที่ผิดที่ ผิดทาง…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แต่การจะบอกว่าสิ่งไหนควรทำ ไม่ควรทำ มันก็อาจตีกรอบให้ยากอีก เพราะนอกจากจะคาดเดาอนาคตไม่ได้แล้ว ยังไม่รู้ด้วยว่า แต่ละคนทำเรื่องอะไร และมีเป้าหมายความสำเร็จนั้นที่ตรงไหน ทั้งแง่การทำธุรกิจ, เป้าหมายชีวิต หรือหน้าที่การงาน ภาพรวมเรื่องนี้จึงเป็นเพียง แนวทาง วิธีคิด หรือกรอบคิด (Mindset) ในการทำสิ่งหนึ่ง ที่คงพอจะสะท้อนว่า ทำแบบนี้ต่อไป ให้ตายก็คงไม่สำเร็จ ดังนี้</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5 แบบที่ ทำให้ตายก็ไม่สำเร็จหรอก</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>ทำตามเขาตลอด</strong><br>“การทำตาม” มีหลายแบบ และไม่ใช่เรื่องผิด บางทีเป็นแนวคิดที่ดีด้วยซ้ำ แต่การ “ตามตลอด” นั้น คงไม่ดี เพราะนอกจากเราไม่อาจตามใครได้ตลอดจริง ๆ แล้ว อาจมีการตามแบบผิด ๆ ประมาณว่า เหมือนแต่ข้างนอก ข้างในไม่ใช่ อะไรทำนองนี้หรือถ้าวันหนึ่งเขาตัน เราก็ตันไปด้วย หรือถ้าเขาทำผิดเสียหาย เราก็เสียหายไปด้วย บางกรณีเขาอาจแก้ปัญหาได้ เพราะเขารู้ว่าทำเพราะอะไร แต่เราไม่รู้ เราอาจแก้ปัญหาไม่ได้เหมือนเขา รวม ๆ แล้ว การตามใครได้ตลอดจึงเป็นเรื่องยากและไม่การันตีความสำเร็จอีกด้วยแต่จะว่าไปข้อนี้ก็ถือว่าไม่ร้ายแรง เพราะหลายคนเมื่อตามเขาไป จนถึงจุดเลี้ยวที่ตามไม่ได้ หรือถูกสถานการณ์บังคับให้ต้องยืนด้วยตัวเอง, แก้ปัญหาด้วยตัวเอง, ต้องไปต่อด้วยตัวเอง แล้วสามารถไปได้ อันนี้ก็ดีไป และมันเท่ากับว่า เราไม่ได้ตามเขาตลอดแล้ว นั่นเอง</li><li><strong>ทำสิ่งที่ควบคุมยากไป / ไม่รู้<br></strong>ไม่มีความสำเร็จใดไร้ซึ่งอุปสรรค และไม่จำเป็นต้องรู้ทุกอย่างจึงจะสำเร็จ นั้นเป็นความจริง แต่การไม่รู้อะไรเลย รู้น้อยมากไปจนถึง การที่เราจัดการอะไรไม่ได้เลยนั้น มันก็พอเห็นอยู่ว่าจะสำเร็จได้อย่างไร<br>ข้อนี้พึงระวังตั้งแต่&nbsp;<strong>“ยังไม่เริ่มทำ”</strong>&nbsp;อันที่จริงทั้งในสิ่งที่ควบคุมไม่ได้ และความไม่รู้สองเรื่องนี้จะแยกหัวข้อกันก็ได้ แต่ในแบบหนึ่ง หากเรามองทุกอย่างแง่ดีเกินไป คือ ทำไปก่อน คิดว่าจะควบคุมสิ่งที่ทำได้ แก้ปัญหาได้ พอเอาเข้าจริงก็จนปัญญา เช่นนี้ก็เพราะความ&nbsp;<strong>“ไม่รู้”</strong>&nbsp;อยู่เหมือนกัน<br>อาจเป็นจริงในแง่ที่ว่าจะรอให้ทุกอย่างพร้อม รู้ทุกเรื่อง คุมได้ทุกอย่าง คงไม่ได้ทำกันพอดี แต่อย่างน้อยก็ควรพอรู้ พอเข้าใจ ให้เราประเมินได้ว่า นี่มันไหวหรือไม่ไหว รวมถึงเหมาะหรือไม่เหมาะกับเรา<br>และหลายครั้ง ต่อให้รู้เรื่องที่ทำมากพอ แต่อาจไม่เคยรู้ว่า&nbsp;<strong>“ตอนนี้ยังไม่ใช่เวลา”</strong>&nbsp;มุ่งหน้าดันทุรังทำไปก็คงไม่สำเร็จ เพราะปัจจัยภายนอกหลายอย่างนั้น มันควบคุมไม่ได้…<br>อีกประการของสิ่งที่บอกว่า ควบคุมยากนั้น ก็ไม่ใช่แค่ความไม่รู้ เพราะไม่รู้เราก็ยังไปศึกษาหาความรู้ได้ แต่หลายเรื่องถึงรู้ แต่ก็ทำเองไม่ได้ ต้องพึ่งพาคนอื่น สิ่งอื่น ซึ่งถ้ามากเกินไป มันจะกลายเป็นยากทันที&nbsp; หรือหากมองเป็นการลงทุน แล้วจะลงทุนให้เองหมดเพื่อควบคุมได้ ก็ต้องลงทุนมากกว่าคนอื่น ต้นทุนสูง และ มีไม่น้อยที่เข้าข่ายบานปลาย<br>ทั้งคุมยาก และความไม่รู้นี้ ต่อให้ทำอะไรขึ้นมาได้ ก็จะเจอแต่ปัญหาเพราะเราไม่เข้าใจ แล้วแต่ละปัญหาก็แก้ยากเพราะต้องพึ่งคนอื่น แถมโดนโกง โดนหลอกก็ง่าย พอถึงตรงนี้บางทีเราจะนึกออก เพราะรอบตัวคงมีให้เห็นว่า&nbsp;<strong>ทำในสิ่งที่ไม่รู้ ทำในสิ่งที่ไม่มีปัญญาควบคุมนั้น มันไปได้ยากจริง ๆ</strong></li><li><strong>ทำเรื่องที่เราขาดเขาไม่ได้<br></strong>ข้อนี้อาจมีความคลุมเครืออยู่บ้างในแง่ว่า เราไม่ควรพึ่งพาใครงั้นหรือ? ยกตัวอย่างแบบนี้ดีกว่า หากเรามีเป้าหมายทำอะไรสักอย่าง เช่น เขียนหนังสือการ์ตูนสักเรื่อง แต่เราเป็นนักวาด แต่งเรื่องไม่เก่ง จึงหาคนแต่งเรื่องเก่ง ๆ ที่วาดไม่เก่งมาทำร่วมกัน แล้วเขาแต่งมาหนึ่งตอน เราก็วาดเสร็จ แล้ว แต่เขายังไม่แต่งต่อมาให้สักที คงนึกออกว่าสถานการณ์แบบนี้แย่แค่ไหน เพราะกลายเป็นว่าความสำเร็จนั้น มีปัจจัยอยู่ที่คนอื่นเสียครึ่งหนึ่ง…หรือกรณีเป็นธุรกิจ ก็เช่น การพึ่งพาวัตถุดิบแหล่งเดียว ช่องทางจำหน่ายหลักแห่งเดียว เหล่านี้อำนาจต่อรองมักเป็นปลายทาง หากถามว่ารวม ๆ แล้ว หากเป็นตอนเริ่มต้นไม่ผิดอะไรเลย อาจเป็นเรื่องจำเป็นด้วยซ้ำ แต่ดังที่บอกมันเป็นแนวคิด ถ้าอนาคตไปยัง “ขาดเขาไม่ได้” ก็ให้ระวังเพราะพังกันมาเยอะ…ส่วนหนึ่งข้อนี้ถือว่าควบคุมไม่ได้เหมือนกับข้อที่แล้วไหม? ส่วนหนึ่งก็ใช่แต่กระบวนการ แนวคิด หรือเรื่องราวมักจะต่างกัน เพราะควบคุมไม่ได้มีหลายปัจจัย พื้นฐานมาจากความไม่รู้ แต่ขาดเขาไม่ได้ เป็นเพียงปัจจัยเดียวที่ถ้าดี ก็อาจดีเลยอยู่กันต่อไป แต่ถ้าไม่ดีเมื่อไหร่ยังไงก็รอดยากนั่นเอง</li><li><strong>ทำเพื่อคนอื่น</strong><br>ข้อนี้อาจรวมการ&nbsp;<strong>“ทำเพราะคนอื่น”</strong>&nbsp;อยู่ด้วยก็ได้ แต่การทำเพราะคนอื่นเชื่อว่าส่วนใหญ่พอจะนึกออกว่ามันยากจะสำเร็จ แม้จะทำออกมาได้ดี แต่มันก็ดูจะไม่ใช่ความสำเร็จที่เราต้องการสักเท่าไรสำหรับการ “ทำเพื่อคนอื่น” มันเป็นข้อที่ละเอียดอ่อน และอาจยากจะเข้าใจจนกว่าจะได้เรียนรู้บางอย่าง หลายคนมีปมในใจชอบไปอยู่ในความสำเร็จคนอื่น แล้วสุดท้ายเขาก็ไปต่อโดยทิ้งเราเอาไว้ ซึ่งบางทีเขาไม่ได้ทิ้ง เขาก็ต้องไปต่อตามปกติ เราไปผูกตัวเราไว้กับเขาแต่แรกเอง หรือก็เพราะบางทีเขากลัวว่าต้องพึ่งพาเราไปตลอด ถ้าเราไม่อยู่แล้วล่ะ? (เหมือนข้อ 3) ก็เป็นได้ซึ่งการทำเพื่อคนอื่นในที่นี้ไม่ได้หมายถึง การทำเพื่อสังคมอะไรทำนองนั้น เพราะถ้าทำเพื่อคนอื่นในแนวนั้นจริง ๆ เราจะไม่ต้องการความสำเร็จ เพราะแค่ได้ทำก็ถือว่าสำเร็จแล้ว…แต่ความหมิ่นเหม่ก็อยู่ตรงนี้แหละ เช่น หลายคนบอกว่าทำเพื่อคนรัก ทำเพื่อครอบครัว ทำเพื่อเพื่อน ก็เป็นสิ่งที่ดี แต่นี่ก็ไม่ใช่เรื่องของความสำเร็จ เพราะเราไม่มีวันเติมอะไรให้ใครได้เต็ม…&nbsp;<strong>ไม่มีวัน<br></strong>ยกตัวอย่างที่น่าจะเห็นได้ชัด เช่นที่บอกว่า เราทำงานเพื่อครอบครัว ซึ่งที่จริงเราแค่ทำงานเพื่อ&nbsp;<strong>หาเงิน</strong>&nbsp;มาให้ครอบครัว อันนั้นจะถูกต้องกว่า เพราะผลลัพธ์มันไม่เคยการันตีว่า&nbsp;<strong>เงินนั้นจะพอ</strong>&nbsp;หรือจะทำครอบครัวมีความสุข มันยังมีปัจจัยอื่น ๆ อีกหลายอย่าง แถมเวลา สามี ภรรยา ทะเลาะกันขึ้นมา ต่างก็มักอ้างว่าตัวเองทำเพื่อครอบครัวแล้ว&nbsp;<strong>ถ้าอีกฝ่ายรู้สึกได้รับเพียงพอหรือเห็นค่า ก็ไม่น่าทะเลาะกัน…<br></strong>ประเด็นอยู่ที่บางเรื่องเป็นหน้าที่ ความรับผิดชอบ ถ้าเราไม่แยกออกให้ดี ๆ นอกจากมันไม่ใช่ความสำเร็จแล้วยังเป็นตัวถ่วงความสำเร็จได้ด้วย อย่าวางความสำเร็จว่า ทำตามหน้าที่คือสำเร็จ รับผิดชอบแล้วคือสำเร็จ มันคนละเรื่องกัน หรือถ้าจะเรียกว่าสำเร็จคุณต้องมีผลลัพธ์มาให้ชัดเจนเสียก่อน ว่าเขาเหล่านั้น โดยที่เขาเหล่านั้นเป็นคนบอกเราได้ว่าเราทำเพื่อเขาสำเร็จ ซึ่งคงยากมากจริง ๆ…อีกแบบก็จะเป็นแนวว่า “การเอาความสำเร็จของคนอื่นมาเป็นของตนเอง” ซึ่งมิใช่ว่าทำไม่ได้เลย เพียงแต่ต้องระวังการไปนึกว่านี่มันเป็น&nbsp;<strong>“บุญคุณ”</strong>&nbsp;เช่น โค้ชนักกีฬาต่อให้พานักกีฬาเป็นแชมป์ เขาก็มีโอกาสเปลี่ยนโค้ช เพื่อพัฒนาขึ้นไป เช่นจากระดับจังหวัด ไปประเทศ ไประดับโลก แม้แต่ได้แชมป์โลกแล้วก็ยังมีเปลี่ยนเลย ทั้งที่นั่นคือโค้ช ผู้นำพาเขาไปให้ได้แชมป์โลกนะ ถ้าไม่แยกแยะว่า ความสำเร็จของโค้ชก็คือทำให้เขามีศักยภาพสูงสุดเท่านั้น ส่วนตอนแข่งหรือการลงมือทำก็เป็นของนักกีฬา แม้บางส่วนจะดูเป็นความสำเร็จร่วมกัน แต่ที่สุดแล้วก็ความสำเร็จของใครของมัน…ดังที่บอกข้อนี้ละเอียดอ่อน บ้างก็คงเข้าใจ บ้างก็อาจขัดใจ ถ้าให้พยายามสรุปก็คือ&nbsp;<strong>ถ้าพูดเรื่องความสำเร็จ มันก็ต้องชัดก่อนว่า อะไรคือความสำเร็จ?</strong>&nbsp;“สำเร็จที่ทำให้เขาสำเร็จ” นั้นเป็นได้ แต่ส่วนใหญ่จะน้อยใจตั้งแต่ยังไม่สำเร็จ หรือเมื่อสำเร็จแล้วต้องเป็นบุญคุณตลอดไป อันนี้คงไม่น่าใช่อีก ลึก ๆ ทำเพื่อคนอื่น หรือเพื่อปมบางอย่างในใจต้องทบทวนให้ดี ๆ เพราะ<strong>คนที่ไม่ชัดเจนเช่นนี้ มักมีวันสำเร็จ</strong></li><li><strong>ทำดีที่สุดแล้ว (คนเดียว)<br></strong>นี่ก็เป็นอีกกรอบคิด (mindset) ที่ขัดขวางความสำเร็จของหลายคนบนความไม่รู้ตัว ด้วยคำว่า&nbsp;<strong>“ดีที่สุดแล้ว”</strong>&nbsp;ตัวอย่างที่น่าจะสะท้อนเรื่องนี้ได้ ก็ ลองนึกถึงเวลาเรามองเรื่องของคนอื่นแล้วมีความคิดว่า “ทำไมเขาไม่ทำแบบนั้น” ซึ่งมักจะเป็นเวลาที่เรามองเห็นทั้งโอกาส ศักยภาพของเขา พอมันก็ย้อนกลับมาที่ บางทีคนอื่นเขาก็มองเราเช่นนั้นเหมือนกัน ว่าทำไมไม่ทำบางอย่างบ้าง ในมุมคล้ายกัน ส่วนใหญ่เราก็คิดว่าเรา “ทำดีที่สุดแล้ว”<br>ก็ต้องทบทวนดูว่า เรารู้ตัวหรือไม่รู้ตัว ทำดีที่สุดแล้วจริง ๆ หรือยังไม่จริง วิธีการที่ดีที่สุดในข้อนี้คือ&nbsp;<strong>“มีแผนและตัวชี้วัด”</strong>&nbsp;เพราะเมื่อเรามีแผนในการลงมือทำ เราจะรู้ว่า&nbsp;<strong>“ต้องทำอะไร”</strong>&nbsp;ถ้ายังทำไม่ครบ ไม่หมด ไม่จบได้ตามแผน จะบอกว่าดีที่สุดแล้วนั้น คือเราคิดไปเอง และเท่านั้นยังไม่พอ เพราะแม้ทำครบตามแผนมันอาจกลายเป็นว่า&nbsp;<strong>“แค่ทำ”</strong>&nbsp;ถ้ามีตัวชี้วัดด้วยเราก็ไม่รู้สึกไปเองว่า&nbsp;<strong>“ทำพอแล้ว”</strong>&nbsp;และหากทำตามแผน มีผลชี้วัด ดีที่สุดหรือยังนั้น มันจะชัดเจนขึ้น…</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>ส่งท้าย</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ทุกความสำเร็จมีหลากหลายปัจจัย คนย่อมมีความเป็นปัจเจก นี่เป็นเพียงอีกหนึ่งบทความเพื่อการพัฒนาตนเอง ที่เขียนไว้แล้วว่า ไม่การันตีความสำเร็จให้ใคร แต่เชื่อว่าเป็นมุมคิดที่มีประโยชน์ ให้นำไปทบทวน ไม่ต้องวนอยู่กับความ ล้มเหลว ซ้ำซาก และ เช่นเคยครับ อยากดีกว่าเมื่อวาน วันนี้ก็ต้องเปลี่ยน…</p>\n<!-- /wp:paragraph -->', 'บทความที่3', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-10-01 09:57:05', '2021-10-01 02:57:05', '', 25, 'http://localhost/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-10-01 09:58:37', '2021-10-01 02:58:37', '<!-- wp:paragraph -->\n<p>บางทีก่อนจะคิด จะพูดกันว่า ความสำเร็จต้องทำอย่างไร ปัจจุบันเราอาจกำลังคิดหรือทำอะไรที่ส่งผลให้ มันพัง มันไม่สำเร็จ หรือกำลังทำให้มันยากกว่าเดิม โดยไม่รู้ตัวอยู่ ก็เป็นได้…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>การไม่ใช่คนดัง แล้วก็ไม่ใช่กลุ่มอายุน้อยร้อยล้าน หรือวางแผนเปิดคอร์สสอนรวย การจะพูดเรื่องความสำเร็จอาจดูขัดเขิน แต่ถ้า&nbsp;<strong>“ทำให้ตายก็ไม่สำเร็จ”</strong>&nbsp;เนี่ย อาจพอมาบอกกล่าวให้ชวนคิดกันได้อยู่บ้างเหมือนกัน…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>คงต้องเริ่มจากมองเห็นร่วมกันก่อนว่า&nbsp;<strong>ความสำเร็จ คงไม่เกิดจากการทำอะไรเพียงครั้งเดียว หรืออย่างเดียว</strong>&nbsp;แล้วจะสำเร็จ มันต้องทำอะไรมาหลาย ๆ อย่าง และบางอย่างต้องทำซ้ำหลายครั้ง ซึ่งในการที่เราต้องทำหลายครั้ง หลายเรื่อง และสารพัดวิธีนี้เอง มันจึงไม่มีสูตรตายตัวหรอกว่า ทำแบบนั้น แบบนี้ แล้วจะสำเร็จไปเสียหมด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แล้วในการทำซ้ำ ๆ นี่เอง บางทีผลลัพธ์ก็เป็นทั้งส่งเสริมให้ก้าวหน้า และถ่วงความสำเร็จได้เช่นกัน เราจึงควร “เลือกทำ” มิเช่นนั้นมันก็คือ การพยายามที่ผิดที่ ผิดทาง…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แต่การจะบอกว่าสิ่งไหนควรทำ ไม่ควรทำ มันก็อาจตีกรอบให้ยากอีก เพราะนอกจากจะคาดเดาอนาคตไม่ได้แล้ว ยังไม่รู้ด้วยว่า แต่ละคนทำเรื่องอะไร และมีเป้าหมายความสำเร็จนั้นที่ตรงไหน ทั้งแง่การทำธุรกิจ, เป้าหมายชีวิต หรือหน้าที่การงาน ภาพรวมเรื่องนี้จึงเป็นเพียง แนวทาง วิธีคิด หรือกรอบคิด (Mindset) ในการทำสิ่งหนึ่ง ที่คงพอจะสะท้อนว่า ทำแบบนี้ต่อไป ให้ตายก็คงไม่สำเร็จ ดังนี้</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5 แบบที่ ทำให้ตายก็ไม่สำเร็จหรอก</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>ทำตามเขาตลอด</strong><br>“การทำตาม” มีหลายแบบ และไม่ใช่เรื่องผิด บางทีเป็นแนวคิดที่ดีด้วยซ้ำ แต่การ “ตามตลอด” นั้น คงไม่ดี เพราะนอกจากเราไม่อาจตามใครได้ตลอดจริง ๆ แล้ว อาจมีการตามแบบผิด ๆ ประมาณว่า เหมือนแต่ข้างนอก ข้างในไม่ใช่ อะไรทำนองนี้หรือถ้าวันหนึ่งเขาตัน เราก็ตันไปด้วย หรือถ้าเขาทำผิดเสียหาย เราก็เสียหายไปด้วย บางกรณีเขาอาจแก้ปัญหาได้ เพราะเขารู้ว่าทำเพราะอะไร แต่เราไม่รู้ เราอาจแก้ปัญหาไม่ได้เหมือนเขา รวม ๆ แล้ว การตามใครได้ตลอดจึงเป็นเรื่องยากและไม่การันตีความสำเร็จอีกด้วยแต่จะว่าไปข้อนี้ก็ถือว่าไม่ร้ายแรง เพราะหลายคนเมื่อตามเขาไป จนถึงจุดเลี้ยวที่ตามไม่ได้ หรือถูกสถานการณ์บังคับให้ต้องยืนด้วยตัวเอง, แก้ปัญหาด้วยตัวเอง, ต้องไปต่อด้วยตัวเอง แล้วสามารถไปได้ อันนี้ก็ดีไป และมันเท่ากับว่า เราไม่ได้ตามเขาตลอดแล้ว นั่นเอง</li><li><strong>ทำสิ่งที่ควบคุมยากไป / ไม่รู้<br></strong>ไม่มีความสำเร็จใดไร้ซึ่งอุปสรรค และไม่จำเป็นต้องรู้ทุกอย่างจึงจะสำเร็จ นั้นเป็นความจริง แต่การไม่รู้อะไรเลย รู้น้อยมากไปจนถึง การที่เราจัดการอะไรไม่ได้เลยนั้น มันก็พอเห็นอยู่ว่าจะสำเร็จได้อย่างไร<br>ข้อนี้พึงระวังตั้งแต่&nbsp;<strong>“ยังไม่เริ่มทำ”</strong>&nbsp;อันที่จริงทั้งในสิ่งที่ควบคุมไม่ได้ และความไม่รู้สองเรื่องนี้จะแยกหัวข้อกันก็ได้ แต่ในแบบหนึ่ง หากเรามองทุกอย่างแง่ดีเกินไป คือ ทำไปก่อน คิดว่าจะควบคุมสิ่งที่ทำได้ แก้ปัญหาได้ พอเอาเข้าจริงก็จนปัญญา เช่นนี้ก็เพราะความ&nbsp;<strong>“ไม่รู้”</strong>&nbsp;อยู่เหมือนกัน<br>อาจเป็นจริงในแง่ที่ว่าจะรอให้ทุกอย่างพร้อม รู้ทุกเรื่อง คุมได้ทุกอย่าง คงไม่ได้ทำกันพอดี แต่อย่างน้อยก็ควรพอรู้ พอเข้าใจ ให้เราประเมินได้ว่า นี่มันไหวหรือไม่ไหว รวมถึงเหมาะหรือไม่เหมาะกับเรา<br>และหลายครั้ง ต่อให้รู้เรื่องที่ทำมากพอ แต่อาจไม่เคยรู้ว่า&nbsp;<strong>“ตอนนี้ยังไม่ใช่เวลา”</strong>&nbsp;มุ่งหน้าดันทุรังทำไปก็คงไม่สำเร็จ เพราะปัจจัยภายนอกหลายอย่างนั้น มันควบคุมไม่ได้…<br>อีกประการของสิ่งที่บอกว่า ควบคุมยากนั้น ก็ไม่ใช่แค่ความไม่รู้ เพราะไม่รู้เราก็ยังไปศึกษาหาความรู้ได้ แต่หลายเรื่องถึงรู้ แต่ก็ทำเองไม่ได้ ต้องพึ่งพาคนอื่น สิ่งอื่น ซึ่งถ้ามากเกินไป มันจะกลายเป็นยากทันที&nbsp; หรือหากมองเป็นการลงทุน แล้วจะลงทุนให้เองหมดเพื่อควบคุมได้ ก็ต้องลงทุนมากกว่าคนอื่น ต้นทุนสูง และ มีไม่น้อยที่เข้าข่ายบานปลาย<br>ทั้งคุมยาก และความไม่รู้นี้ ต่อให้ทำอะไรขึ้นมาได้ ก็จะเจอแต่ปัญหาเพราะเราไม่เข้าใจ แล้วแต่ละปัญหาก็แก้ยากเพราะต้องพึ่งคนอื่น แถมโดนโกง โดนหลอกก็ง่าย พอถึงตรงนี้บางทีเราจะนึกออก เพราะรอบตัวคงมีให้เห็นว่า&nbsp;<strong>ทำในสิ่งที่ไม่รู้ ทำในสิ่งที่ไม่มีปัญญาควบคุมนั้น มันไปได้ยากจริง ๆ</strong></li><li><strong>ทำเรื่องที่เราขาดเขาไม่ได้<br></strong>ข้อนี้อาจมีความคลุมเครืออยู่บ้างในแง่ว่า เราไม่ควรพึ่งพาใครงั้นหรือ? ยกตัวอย่างแบบนี้ดีกว่า หากเรามีเป้าหมายทำอะไรสักอย่าง เช่น เขียนหนังสือการ์ตูนสักเรื่อง แต่เราเป็นนักวาด แต่งเรื่องไม่เก่ง จึงหาคนแต่งเรื่องเก่ง ๆ ที่วาดไม่เก่งมาทำร่วมกัน แล้วเขาแต่งมาหนึ่งตอน เราก็วาดเสร็จ แล้ว แต่เขายังไม่แต่งต่อมาให้สักที คงนึกออกว่าสถานการณ์แบบนี้แย่แค่ไหน เพราะกลายเป็นว่าความสำเร็จนั้น มีปัจจัยอยู่ที่คนอื่นเสียครึ่งหนึ่ง…หรือกรณีเป็นธุรกิจ ก็เช่น การพึ่งพาวัตถุดิบแหล่งเดียว ช่องทางจำหน่ายหลักแห่งเดียว เหล่านี้อำนาจต่อรองมักเป็นปลายทาง หากถามว่ารวม ๆ แล้ว หากเป็นตอนเริ่มต้นไม่ผิดอะไรเลย อาจเป็นเรื่องจำเป็นด้วยซ้ำ แต่ดังที่บอกมันเป็นแนวคิด ถ้าอนาคตไปยัง “ขาดเขาไม่ได้” ก็ให้ระวังเพราะพังกันมาเยอะ…ส่วนหนึ่งข้อนี้ถือว่าควบคุมไม่ได้เหมือนกับข้อที่แล้วไหม? ส่วนหนึ่งก็ใช่แต่กระบวนการ แนวคิด หรือเรื่องราวมักจะต่างกัน เพราะควบคุมไม่ได้มีหลายปัจจัย พื้นฐานมาจากความไม่รู้ แต่ขาดเขาไม่ได้ เป็นเพียงปัจจัยเดียวที่ถ้าดี ก็อาจดีเลยอยู่กันต่อไป แต่ถ้าไม่ดีเมื่อไหร่ยังไงก็รอดยากนั่นเอง</li><li><strong>ทำเพื่อคนอื่น</strong><br>ข้อนี้อาจรวมการ&nbsp;<strong>“ทำเพราะคนอื่น”</strong>&nbsp;อยู่ด้วยก็ได้ แต่การทำเพราะคนอื่นเชื่อว่าส่วนใหญ่พอจะนึกออกว่ามันยากจะสำเร็จ แม้จะทำออกมาได้ดี แต่มันก็ดูจะไม่ใช่ความสำเร็จที่เราต้องการสักเท่าไรสำหรับการ “ทำเพื่อคนอื่น” มันเป็นข้อที่ละเอียดอ่อน และอาจยากจะเข้าใจจนกว่าจะได้เรียนรู้บางอย่าง หลายคนมีปมในใจชอบไปอยู่ในความสำเร็จคนอื่น แล้วสุดท้ายเขาก็ไปต่อโดยทิ้งเราเอาไว้ ซึ่งบางทีเขาไม่ได้ทิ้ง เขาก็ต้องไปต่อตามปกติ เราไปผูกตัวเราไว้กับเขาแต่แรกเอง หรือก็เพราะบางทีเขากลัวว่าต้องพึ่งพาเราไปตลอด ถ้าเราไม่อยู่แล้วล่ะ? (เหมือนข้อ 3) ก็เป็นได้ซึ่งการทำเพื่อคนอื่นในที่นี้ไม่ได้หมายถึง การทำเพื่อสังคมอะไรทำนองนั้น เพราะถ้าทำเพื่อคนอื่นในแนวนั้นจริง ๆ เราจะไม่ต้องการความสำเร็จ เพราะแค่ได้ทำก็ถือว่าสำเร็จแล้ว…แต่ความหมิ่นเหม่ก็อยู่ตรงนี้แหละ เช่น หลายคนบอกว่าทำเพื่อคนรัก ทำเพื่อครอบครัว ทำเพื่อเพื่อน ก็เป็นสิ่งที่ดี แต่นี่ก็ไม่ใช่เรื่องของความสำเร็จ เพราะเราไม่มีวันเติมอะไรให้ใครได้เต็ม…&nbsp;<strong>ไม่มีวัน<br></strong>ยกตัวอย่างที่น่าจะเห็นได้ชัด เช่นที่บอกว่า เราทำงานเพื่อครอบครัว ซึ่งที่จริงเราแค่ทำงานเพื่อ&nbsp;<strong>หาเงิน</strong>&nbsp;มาให้ครอบครัว อันนั้นจะถูกต้องกว่า เพราะผลลัพธ์มันไม่เคยการันตีว่า&nbsp;<strong>เงินนั้นจะพอ</strong>&nbsp;หรือจะทำครอบครัวมีความสุข มันยังมีปัจจัยอื่น ๆ อีกหลายอย่าง แถมเวลา สามี ภรรยา ทะเลาะกันขึ้นมา ต่างก็มักอ้างว่าตัวเองทำเพื่อครอบครัวแล้ว&nbsp;<strong>ถ้าอีกฝ่ายรู้สึกได้รับเพียงพอหรือเห็นค่า ก็ไม่น่าทะเลาะกัน…<br></strong>ประเด็นอยู่ที่บางเรื่องเป็นหน้าที่ ความรับผิดชอบ ถ้าเราไม่แยกออกให้ดี ๆ นอกจากมันไม่ใช่ความสำเร็จแล้วยังเป็นตัวถ่วงความสำเร็จได้ด้วย อย่าวางความสำเร็จว่า ทำตามหน้าที่คือสำเร็จ รับผิดชอบแล้วคือสำเร็จ มันคนละเรื่องกัน หรือถ้าจะเรียกว่าสำเร็จคุณต้องมีผลลัพธ์มาให้ชัดเจนเสียก่อน ว่าเขาเหล่านั้น โดยที่เขาเหล่านั้นเป็นคนบอกเราได้ว่าเราทำเพื่อเขาสำเร็จ ซึ่งคงยากมากจริง ๆ…อีกแบบก็จะเป็นแนวว่า “การเอาความสำเร็จของคนอื่นมาเป็นของตนเอง” ซึ่งมิใช่ว่าทำไม่ได้เลย เพียงแต่ต้องระวังการไปนึกว่านี่มันเป็น&nbsp;<strong>“บุญคุณ”</strong>&nbsp;เช่น โค้ชนักกีฬาต่อให้พานักกีฬาเป็นแชมป์ เขาก็มีโอกาสเปลี่ยนโค้ช เพื่อพัฒนาขึ้นไป เช่นจากระดับจังหวัด ไปประเทศ ไประดับโลก แม้แต่ได้แชมป์โลกแล้วก็ยังมีเปลี่ยนเลย ทั้งที่นั่นคือโค้ช ผู้นำพาเขาไปให้ได้แชมป์โลกนะ ถ้าไม่แยกแยะว่า ความสำเร็จของโค้ชก็คือทำให้เขามีศักยภาพสูงสุดเท่านั้น ส่วนตอนแข่งหรือการลงมือทำก็เป็นของนักกีฬา แม้บางส่วนจะดูเป็นความสำเร็จร่วมกัน แต่ที่สุดแล้วก็ความสำเร็จของใครของมัน…ดังที่บอกข้อนี้ละเอียดอ่อน บ้างก็คงเข้าใจ บ้างก็อาจขัดใจ ถ้าให้พยายามสรุปก็คือ&nbsp;<strong>ถ้าพูดเรื่องความสำเร็จ มันก็ต้องชัดก่อนว่า อะไรคือความสำเร็จ?</strong>&nbsp;“สำเร็จที่ทำให้เขาสำเร็จ” นั้นเป็นได้ แต่ส่วนใหญ่จะน้อยใจตั้งแต่ยังไม่สำเร็จ หรือเมื่อสำเร็จแล้วต้องเป็นบุญคุณตลอดไป อันนี้คงไม่น่าใช่อีก ลึก ๆ ทำเพื่อคนอื่น หรือเพื่อปมบางอย่างในใจต้องทบทวนให้ดี ๆ เพราะ<strong>คนที่ไม่ชัดเจนเช่นนี้ มักมีวันสำเร็จ</strong></li><li><strong>ทำดีที่สุดแล้ว (คนเดียว)<br></strong>นี่ก็เป็นอีกกรอบคิด (mindset) ที่ขัดขวางความสำเร็จของหลายคนบนความไม่รู้ตัว ด้วยคำว่า&nbsp;<strong>“ดีที่สุดแล้ว”</strong>&nbsp;ตัวอย่างที่น่าจะสะท้อนเรื่องนี้ได้ ก็ ลองนึกถึงเวลาเรามองเรื่องของคนอื่นแล้วมีความคิดว่า “ทำไมเขาไม่ทำแบบนั้น” ซึ่งมักจะเป็นเวลาที่เรามองเห็นทั้งโอกาส ศักยภาพของเขา พอมันก็ย้อนกลับมาที่ บางทีคนอื่นเขาก็มองเราเช่นนั้นเหมือนกัน ว่าทำไมไม่ทำบางอย่างบ้าง ในมุมคล้ายกัน ส่วนใหญ่เราก็คิดว่าเรา “ทำดีที่สุดแล้ว”<br>ก็ต้องทบทวนดูว่า เรารู้ตัวหรือไม่รู้ตัว ทำดีที่สุดแล้วจริง ๆ หรือยังไม่จริง วิธีการที่ดีที่สุดในข้อนี้คือ&nbsp;<strong>“มีแผนและตัวชี้วัด”</strong>&nbsp;เพราะเมื่อเรามีแผนในการลงมือทำ เราจะรู้ว่า&nbsp;<strong>“ต้องทำอะไร”</strong>&nbsp;ถ้ายังทำไม่ครบ ไม่หมด ไม่จบได้ตามแผน จะบอกว่าดีที่สุดแล้วนั้น คือเราคิดไปเอง และเท่านั้นยังไม่พอ เพราะแม้ทำครบตามแผนมันอาจกลายเป็นว่า&nbsp;<strong>“แค่ทำ”</strong>&nbsp;ถ้ามีตัวชี้วัดด้วยเราก็ไม่รู้สึกไปเองว่า&nbsp;<strong>“ทำพอแล้ว”</strong>&nbsp;และหากทำตามแผน มีผลชี้วัด ดีที่สุดหรือยังนั้น มันจะชัดเจนขึ้น…</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>ส่งท้าย</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ทุกความสำเร็จมีหลากหลายปัจจัย คนย่อมมีความเป็นปัจเจก นี่เป็นเพียงอีกหนึ่งบทความเพื่อการพัฒนาตนเอง ที่เขียนไว้แล้วว่า ไม่การันตีความสำเร็จให้ใคร แต่เชื่อว่าเป็นมุมคิดที่มีประโยชน์ ให้นำไปทบทวน ไม่ต้องวนอยู่กับความ ล้มเหลว ซ้ำซาก และ เช่นเคยครับ อยากดีกว่าเมื่อวาน วันนี้ก็ต้องเปลี่ยน…</p>\n<!-- /wp:paragraph -->', 'บทความที่4', '', 'publish', 'open', 'open', '', '%e0%b8%9a%e0%b8%97%e0%b8%84%e0%b8%a7%e0%b8%b2%e0%b8%a1%e0%b8%97%e0%b8%b5%e0%b9%884', '', '', '2021-10-01 09:58:37', '2021-10-01 02:58:37', '', 0, 'http://localhost/?p=27', 0, 'post', '', 0),
(28, 1, '2021-10-01 09:58:27', '2021-10-01 02:58:27', '', 'CAT', '', 'inherit', 'open', 'closed', '', 'cat', '', '', '2021-10-01 09:58:27', '2021-10-01 02:58:27', '', 27, 'http://localhost/wp-content/uploads/2021/10/CAT.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-10-01 09:58:37', '2021-10-01 02:58:37', '<!-- wp:paragraph -->\n<p>บางทีก่อนจะคิด จะพูดกันว่า ความสำเร็จต้องทำอย่างไร ปัจจุบันเราอาจกำลังคิดหรือทำอะไรที่ส่งผลให้ มันพัง มันไม่สำเร็จ หรือกำลังทำให้มันยากกว่าเดิม โดยไม่รู้ตัวอยู่ ก็เป็นได้…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>การไม่ใช่คนดัง แล้วก็ไม่ใช่กลุ่มอายุน้อยร้อยล้าน หรือวางแผนเปิดคอร์สสอนรวย การจะพูดเรื่องความสำเร็จอาจดูขัดเขิน แต่ถ้า&nbsp;<strong>“ทำให้ตายก็ไม่สำเร็จ”</strong>&nbsp;เนี่ย อาจพอมาบอกกล่าวให้ชวนคิดกันได้อยู่บ้างเหมือนกัน…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>คงต้องเริ่มจากมองเห็นร่วมกันก่อนว่า&nbsp;<strong>ความสำเร็จ คงไม่เกิดจากการทำอะไรเพียงครั้งเดียว หรืออย่างเดียว</strong>&nbsp;แล้วจะสำเร็จ มันต้องทำอะไรมาหลาย ๆ อย่าง และบางอย่างต้องทำซ้ำหลายครั้ง ซึ่งในการที่เราต้องทำหลายครั้ง หลายเรื่อง และสารพัดวิธีนี้เอง มันจึงไม่มีสูตรตายตัวหรอกว่า ทำแบบนั้น แบบนี้ แล้วจะสำเร็จไปเสียหมด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แล้วในการทำซ้ำ ๆ นี่เอง บางทีผลลัพธ์ก็เป็นทั้งส่งเสริมให้ก้าวหน้า และถ่วงความสำเร็จได้เช่นกัน เราจึงควร “เลือกทำ” มิเช่นนั้นมันก็คือ การพยายามที่ผิดที่ ผิดทาง…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แต่การจะบอกว่าสิ่งไหนควรทำ ไม่ควรทำ มันก็อาจตีกรอบให้ยากอีก เพราะนอกจากจะคาดเดาอนาคตไม่ได้แล้ว ยังไม่รู้ด้วยว่า แต่ละคนทำเรื่องอะไร และมีเป้าหมายความสำเร็จนั้นที่ตรงไหน ทั้งแง่การทำธุรกิจ, เป้าหมายชีวิต หรือหน้าที่การงาน ภาพรวมเรื่องนี้จึงเป็นเพียง แนวทาง วิธีคิด หรือกรอบคิด (Mindset) ในการทำสิ่งหนึ่ง ที่คงพอจะสะท้อนว่า ทำแบบนี้ต่อไป ให้ตายก็คงไม่สำเร็จ ดังนี้</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5 แบบที่ ทำให้ตายก็ไม่สำเร็จหรอก</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>ทำตามเขาตลอด</strong><br>“การทำตาม” มีหลายแบบ และไม่ใช่เรื่องผิด บางทีเป็นแนวคิดที่ดีด้วยซ้ำ แต่การ “ตามตลอด” นั้น คงไม่ดี เพราะนอกจากเราไม่อาจตามใครได้ตลอดจริง ๆ แล้ว อาจมีการตามแบบผิด ๆ ประมาณว่า เหมือนแต่ข้างนอก ข้างในไม่ใช่ อะไรทำนองนี้หรือถ้าวันหนึ่งเขาตัน เราก็ตันไปด้วย หรือถ้าเขาทำผิดเสียหาย เราก็เสียหายไปด้วย บางกรณีเขาอาจแก้ปัญหาได้ เพราะเขารู้ว่าทำเพราะอะไร แต่เราไม่รู้ เราอาจแก้ปัญหาไม่ได้เหมือนเขา รวม ๆ แล้ว การตามใครได้ตลอดจึงเป็นเรื่องยากและไม่การันตีความสำเร็จอีกด้วยแต่จะว่าไปข้อนี้ก็ถือว่าไม่ร้ายแรง เพราะหลายคนเมื่อตามเขาไป จนถึงจุดเลี้ยวที่ตามไม่ได้ หรือถูกสถานการณ์บังคับให้ต้องยืนด้วยตัวเอง, แก้ปัญหาด้วยตัวเอง, ต้องไปต่อด้วยตัวเอง แล้วสามารถไปได้ อันนี้ก็ดีไป และมันเท่ากับว่า เราไม่ได้ตามเขาตลอดแล้ว นั่นเอง</li><li><strong>ทำสิ่งที่ควบคุมยากไป / ไม่รู้<br></strong>ไม่มีความสำเร็จใดไร้ซึ่งอุปสรรค และไม่จำเป็นต้องรู้ทุกอย่างจึงจะสำเร็จ นั้นเป็นความจริง แต่การไม่รู้อะไรเลย รู้น้อยมากไปจนถึง การที่เราจัดการอะไรไม่ได้เลยนั้น มันก็พอเห็นอยู่ว่าจะสำเร็จได้อย่างไร<br>ข้อนี้พึงระวังตั้งแต่&nbsp;<strong>“ยังไม่เริ่มทำ”</strong>&nbsp;อันที่จริงทั้งในสิ่งที่ควบคุมไม่ได้ และความไม่รู้สองเรื่องนี้จะแยกหัวข้อกันก็ได้ แต่ในแบบหนึ่ง หากเรามองทุกอย่างแง่ดีเกินไป คือ ทำไปก่อน คิดว่าจะควบคุมสิ่งที่ทำได้ แก้ปัญหาได้ พอเอาเข้าจริงก็จนปัญญา เช่นนี้ก็เพราะความ&nbsp;<strong>“ไม่รู้”</strong>&nbsp;อยู่เหมือนกัน<br>อาจเป็นจริงในแง่ที่ว่าจะรอให้ทุกอย่างพร้อม รู้ทุกเรื่อง คุมได้ทุกอย่าง คงไม่ได้ทำกันพอดี แต่อย่างน้อยก็ควรพอรู้ พอเข้าใจ ให้เราประเมินได้ว่า นี่มันไหวหรือไม่ไหว รวมถึงเหมาะหรือไม่เหมาะกับเรา<br>และหลายครั้ง ต่อให้รู้เรื่องที่ทำมากพอ แต่อาจไม่เคยรู้ว่า&nbsp;<strong>“ตอนนี้ยังไม่ใช่เวลา”</strong>&nbsp;มุ่งหน้าดันทุรังทำไปก็คงไม่สำเร็จ เพราะปัจจัยภายนอกหลายอย่างนั้น มันควบคุมไม่ได้…<br>อีกประการของสิ่งที่บอกว่า ควบคุมยากนั้น ก็ไม่ใช่แค่ความไม่รู้ เพราะไม่รู้เราก็ยังไปศึกษาหาความรู้ได้ แต่หลายเรื่องถึงรู้ แต่ก็ทำเองไม่ได้ ต้องพึ่งพาคนอื่น สิ่งอื่น ซึ่งถ้ามากเกินไป มันจะกลายเป็นยากทันที&nbsp; หรือหากมองเป็นการลงทุน แล้วจะลงทุนให้เองหมดเพื่อควบคุมได้ ก็ต้องลงทุนมากกว่าคนอื่น ต้นทุนสูง และ มีไม่น้อยที่เข้าข่ายบานปลาย<br>ทั้งคุมยาก และความไม่รู้นี้ ต่อให้ทำอะไรขึ้นมาได้ ก็จะเจอแต่ปัญหาเพราะเราไม่เข้าใจ แล้วแต่ละปัญหาก็แก้ยากเพราะต้องพึ่งคนอื่น แถมโดนโกง โดนหลอกก็ง่าย พอถึงตรงนี้บางทีเราจะนึกออก เพราะรอบตัวคงมีให้เห็นว่า&nbsp;<strong>ทำในสิ่งที่ไม่รู้ ทำในสิ่งที่ไม่มีปัญญาควบคุมนั้น มันไปได้ยากจริง ๆ</strong></li><li><strong>ทำเรื่องที่เราขาดเขาไม่ได้<br></strong>ข้อนี้อาจมีความคลุมเครืออยู่บ้างในแง่ว่า เราไม่ควรพึ่งพาใครงั้นหรือ? ยกตัวอย่างแบบนี้ดีกว่า หากเรามีเป้าหมายทำอะไรสักอย่าง เช่น เขียนหนังสือการ์ตูนสักเรื่อง แต่เราเป็นนักวาด แต่งเรื่องไม่เก่ง จึงหาคนแต่งเรื่องเก่ง ๆ ที่วาดไม่เก่งมาทำร่วมกัน แล้วเขาแต่งมาหนึ่งตอน เราก็วาดเสร็จ แล้ว แต่เขายังไม่แต่งต่อมาให้สักที คงนึกออกว่าสถานการณ์แบบนี้แย่แค่ไหน เพราะกลายเป็นว่าความสำเร็จนั้น มีปัจจัยอยู่ที่คนอื่นเสียครึ่งหนึ่ง…หรือกรณีเป็นธุรกิจ ก็เช่น การพึ่งพาวัตถุดิบแหล่งเดียว ช่องทางจำหน่ายหลักแห่งเดียว เหล่านี้อำนาจต่อรองมักเป็นปลายทาง หากถามว่ารวม ๆ แล้ว หากเป็นตอนเริ่มต้นไม่ผิดอะไรเลย อาจเป็นเรื่องจำเป็นด้วยซ้ำ แต่ดังที่บอกมันเป็นแนวคิด ถ้าอนาคตไปยัง “ขาดเขาไม่ได้” ก็ให้ระวังเพราะพังกันมาเยอะ…ส่วนหนึ่งข้อนี้ถือว่าควบคุมไม่ได้เหมือนกับข้อที่แล้วไหม? ส่วนหนึ่งก็ใช่แต่กระบวนการ แนวคิด หรือเรื่องราวมักจะต่างกัน เพราะควบคุมไม่ได้มีหลายปัจจัย พื้นฐานมาจากความไม่รู้ แต่ขาดเขาไม่ได้ เป็นเพียงปัจจัยเดียวที่ถ้าดี ก็อาจดีเลยอยู่กันต่อไป แต่ถ้าไม่ดีเมื่อไหร่ยังไงก็รอดยากนั่นเอง</li><li><strong>ทำเพื่อคนอื่น</strong><br>ข้อนี้อาจรวมการ&nbsp;<strong>“ทำเพราะคนอื่น”</strong>&nbsp;อยู่ด้วยก็ได้ แต่การทำเพราะคนอื่นเชื่อว่าส่วนใหญ่พอจะนึกออกว่ามันยากจะสำเร็จ แม้จะทำออกมาได้ดี แต่มันก็ดูจะไม่ใช่ความสำเร็จที่เราต้องการสักเท่าไรสำหรับการ “ทำเพื่อคนอื่น” มันเป็นข้อที่ละเอียดอ่อน และอาจยากจะเข้าใจจนกว่าจะได้เรียนรู้บางอย่าง หลายคนมีปมในใจชอบไปอยู่ในความสำเร็จคนอื่น แล้วสุดท้ายเขาก็ไปต่อโดยทิ้งเราเอาไว้ ซึ่งบางทีเขาไม่ได้ทิ้ง เขาก็ต้องไปต่อตามปกติ เราไปผูกตัวเราไว้กับเขาแต่แรกเอง หรือก็เพราะบางทีเขากลัวว่าต้องพึ่งพาเราไปตลอด ถ้าเราไม่อยู่แล้วล่ะ? (เหมือนข้อ 3) ก็เป็นได้ซึ่งการทำเพื่อคนอื่นในที่นี้ไม่ได้หมายถึง การทำเพื่อสังคมอะไรทำนองนั้น เพราะถ้าทำเพื่อคนอื่นในแนวนั้นจริง ๆ เราจะไม่ต้องการความสำเร็จ เพราะแค่ได้ทำก็ถือว่าสำเร็จแล้ว…แต่ความหมิ่นเหม่ก็อยู่ตรงนี้แหละ เช่น หลายคนบอกว่าทำเพื่อคนรัก ทำเพื่อครอบครัว ทำเพื่อเพื่อน ก็เป็นสิ่งที่ดี แต่นี่ก็ไม่ใช่เรื่องของความสำเร็จ เพราะเราไม่มีวันเติมอะไรให้ใครได้เต็ม…&nbsp;<strong>ไม่มีวัน<br></strong>ยกตัวอย่างที่น่าจะเห็นได้ชัด เช่นที่บอกว่า เราทำงานเพื่อครอบครัว ซึ่งที่จริงเราแค่ทำงานเพื่อ&nbsp;<strong>หาเงิน</strong>&nbsp;มาให้ครอบครัว อันนั้นจะถูกต้องกว่า เพราะผลลัพธ์มันไม่เคยการันตีว่า&nbsp;<strong>เงินนั้นจะพอ</strong>&nbsp;หรือจะทำครอบครัวมีความสุข มันยังมีปัจจัยอื่น ๆ อีกหลายอย่าง แถมเวลา สามี ภรรยา ทะเลาะกันขึ้นมา ต่างก็มักอ้างว่าตัวเองทำเพื่อครอบครัวแล้ว&nbsp;<strong>ถ้าอีกฝ่ายรู้สึกได้รับเพียงพอหรือเห็นค่า ก็ไม่น่าทะเลาะกัน…<br></strong>ประเด็นอยู่ที่บางเรื่องเป็นหน้าที่ ความรับผิดชอบ ถ้าเราไม่แยกออกให้ดี ๆ นอกจากมันไม่ใช่ความสำเร็จแล้วยังเป็นตัวถ่วงความสำเร็จได้ด้วย อย่าวางความสำเร็จว่า ทำตามหน้าที่คือสำเร็จ รับผิดชอบแล้วคือสำเร็จ มันคนละเรื่องกัน หรือถ้าจะเรียกว่าสำเร็จคุณต้องมีผลลัพธ์มาให้ชัดเจนเสียก่อน ว่าเขาเหล่านั้น โดยที่เขาเหล่านั้นเป็นคนบอกเราได้ว่าเราทำเพื่อเขาสำเร็จ ซึ่งคงยากมากจริง ๆ…อีกแบบก็จะเป็นแนวว่า “การเอาความสำเร็จของคนอื่นมาเป็นของตนเอง” ซึ่งมิใช่ว่าทำไม่ได้เลย เพียงแต่ต้องระวังการไปนึกว่านี่มันเป็น&nbsp;<strong>“บุญคุณ”</strong>&nbsp;เช่น โค้ชนักกีฬาต่อให้พานักกีฬาเป็นแชมป์ เขาก็มีโอกาสเปลี่ยนโค้ช เพื่อพัฒนาขึ้นไป เช่นจากระดับจังหวัด ไปประเทศ ไประดับโลก แม้แต่ได้แชมป์โลกแล้วก็ยังมีเปลี่ยนเลย ทั้งที่นั่นคือโค้ช ผู้นำพาเขาไปให้ได้แชมป์โลกนะ ถ้าไม่แยกแยะว่า ความสำเร็จของโค้ชก็คือทำให้เขามีศักยภาพสูงสุดเท่านั้น ส่วนตอนแข่งหรือการลงมือทำก็เป็นของนักกีฬา แม้บางส่วนจะดูเป็นความสำเร็จร่วมกัน แต่ที่สุดแล้วก็ความสำเร็จของใครของมัน…ดังที่บอกข้อนี้ละเอียดอ่อน บ้างก็คงเข้าใจ บ้างก็อาจขัดใจ ถ้าให้พยายามสรุปก็คือ&nbsp;<strong>ถ้าพูดเรื่องความสำเร็จ มันก็ต้องชัดก่อนว่า อะไรคือความสำเร็จ?</strong>&nbsp;“สำเร็จที่ทำให้เขาสำเร็จ” นั้นเป็นได้ แต่ส่วนใหญ่จะน้อยใจตั้งแต่ยังไม่สำเร็จ หรือเมื่อสำเร็จแล้วต้องเป็นบุญคุณตลอดไป อันนี้คงไม่น่าใช่อีก ลึก ๆ ทำเพื่อคนอื่น หรือเพื่อปมบางอย่างในใจต้องทบทวนให้ดี ๆ เพราะ<strong>คนที่ไม่ชัดเจนเช่นนี้ มักมีวันสำเร็จ</strong></li><li><strong>ทำดีที่สุดแล้ว (คนเดียว)<br></strong>นี่ก็เป็นอีกกรอบคิด (mindset) ที่ขัดขวางความสำเร็จของหลายคนบนความไม่รู้ตัว ด้วยคำว่า&nbsp;<strong>“ดีที่สุดแล้ว”</strong>&nbsp;ตัวอย่างที่น่าจะสะท้อนเรื่องนี้ได้ ก็ ลองนึกถึงเวลาเรามองเรื่องของคนอื่นแล้วมีความคิดว่า “ทำไมเขาไม่ทำแบบนั้น” ซึ่งมักจะเป็นเวลาที่เรามองเห็นทั้งโอกาส ศักยภาพของเขา พอมันก็ย้อนกลับมาที่ บางทีคนอื่นเขาก็มองเราเช่นนั้นเหมือนกัน ว่าทำไมไม่ทำบางอย่างบ้าง ในมุมคล้ายกัน ส่วนใหญ่เราก็คิดว่าเรา “ทำดีที่สุดแล้ว”<br>ก็ต้องทบทวนดูว่า เรารู้ตัวหรือไม่รู้ตัว ทำดีที่สุดแล้วจริง ๆ หรือยังไม่จริง วิธีการที่ดีที่สุดในข้อนี้คือ&nbsp;<strong>“มีแผนและตัวชี้วัด”</strong>&nbsp;เพราะเมื่อเรามีแผนในการลงมือทำ เราจะรู้ว่า&nbsp;<strong>“ต้องทำอะไร”</strong>&nbsp;ถ้ายังทำไม่ครบ ไม่หมด ไม่จบได้ตามแผน จะบอกว่าดีที่สุดแล้วนั้น คือเราคิดไปเอง และเท่านั้นยังไม่พอ เพราะแม้ทำครบตามแผนมันอาจกลายเป็นว่า&nbsp;<strong>“แค่ทำ”</strong>&nbsp;ถ้ามีตัวชี้วัดด้วยเราก็ไม่รู้สึกไปเองว่า&nbsp;<strong>“ทำพอแล้ว”</strong>&nbsp;และหากทำตามแผน มีผลชี้วัด ดีที่สุดหรือยังนั้น มันจะชัดเจนขึ้น…</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>ส่งท้าย</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ทุกความสำเร็จมีหลากหลายปัจจัย คนย่อมมีความเป็นปัจเจก นี่เป็นเพียงอีกหนึ่งบทความเพื่อการพัฒนาตนเอง ที่เขียนไว้แล้วว่า ไม่การันตีความสำเร็จให้ใคร แต่เชื่อว่าเป็นมุมคิดที่มีประโยชน์ ให้นำไปทบทวน ไม่ต้องวนอยู่กับความ ล้มเหลว ซ้ำซาก และ เช่นเคยครับ อยากดีกว่าเมื่อวาน วันนี้ก็ต้องเปลี่ยน…</p>\n<!-- /wp:paragraph -->', 'บทความที่4', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-10-01 09:58:37', '2021-10-01 02:58:37', '', 27, 'http://localhost/?p=29', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(30, 1, '2021-10-01 10:15:16', '2021-10-01 03:15:16', '<!-- wp:paragraph -->\n<p>บางทีก่อนจะคิด จะพูดกันว่า ความสำเร็จต้องทำอย่างไร ปัจจุบันเราอาจกำลังคิดหรือทำอะไรที่ส่งผลให้ มันพัง มันไม่สำเร็จ หรือกำลังทำให้มันยากกว่าเดิม โดยไม่รู้ตัวอยู่ ก็เป็นได้…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>การไม่ใช่คนดัง แล้วก็ไม่ใช่กลุ่มอายุน้อยร้อยล้าน หรือวางแผนเปิดคอร์สสอนรวย การจะพูดเรื่องความสำเร็จอาจดูขัดเขิน แต่ถ้า&nbsp;<strong>“ทำให้ตายก็ไม่สำเร็จ”</strong>&nbsp;เนี่ย อาจพอมาบอกกล่าวให้ชวนคิดกันได้อยู่บ้างเหมือนกัน…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>คงต้องเริ่มจากมองเห็นร่วมกันก่อนว่า&nbsp;<strong>ความสำเร็จ คงไม่เกิดจากการทำอะไรเพียงครั้งเดียว หรืออย่างเดียว</strong>&nbsp;แล้วจะสำเร็จ มันต้องทำอะไรมาหลาย ๆ อย่าง และบางอย่างต้องทำซ้ำหลายครั้ง ซึ่งในการที่เราต้องทำหลายครั้ง หลายเรื่อง และสารพัดวิธีนี้เอง มันจึงไม่มีสูตรตายตัวหรอกว่า ทำแบบนั้น แบบนี้ แล้วจะสำเร็จไปเสียหมด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แล้วในการทำซ้ำ ๆ นี่เอง บางทีผลลัพธ์ก็เป็นทั้งส่งเสริมให้ก้าวหน้า และถ่วงความสำเร็จได้เช่นกัน เราจึงควร “เลือกทำ” มิเช่นนั้นมันก็คือ การพยายามที่ผิดที่ ผิดทาง…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แต่การจะบอกว่าสิ่งไหนควรทำ ไม่ควรทำ มันก็อาจตีกรอบให้ยากอีก เพราะนอกจากจะคาดเดาอนาคตไม่ได้แล้ว ยังไม่รู้ด้วยว่า แต่ละคนทำเรื่องอะไร และมีเป้าหมายความสำเร็จนั้นที่ตรงไหน ทั้งแง่การทำธุรกิจ, เป้าหมายชีวิต หรือหน้าที่การงาน ภาพรวมเรื่องนี้จึงเป็นเพียง แนวทาง วิธีคิด หรือกรอบคิด (Mindset) ในการทำสิ่งหนึ่ง ที่คงพอจะสะท้อนว่า ทำแบบนี้ต่อไป ให้ตายก็คงไม่สำเร็จ ดังนี้</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5 แบบที่ ทำให้ตายก็ไม่สำเร็จหรอก</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>ทำตามเขาตลอด</strong><br>“การทำตาม” มีหลายแบบ และไม่ใช่เรื่องผิด บางทีเป็นแนวคิดที่ดีด้วยซ้ำ แต่การ “ตามตลอด” นั้น คงไม่ดี เพราะนอกจากเราไม่อาจตามใครได้ตลอดจริง ๆ แล้ว อาจมีการตามแบบผิด ๆ ประมาณว่า เหมือนแต่ข้างนอก ข้างในไม่ใช่ อะไรทำนองนี้หรือถ้าวันหนึ่งเขาตัน เราก็ตันไปด้วย หรือถ้าเขาทำผิดเสียหาย เราก็เสียหายไปด้วย บางกรณีเขาอาจแก้ปัญหาได้ เพราะเขารู้ว่าทำเพราะอะไร แต่เราไม่รู้ เราอาจแก้ปัญหาไม่ได้เหมือนเขา รวม ๆ แล้ว การตามใครได้ตลอดจึงเป็นเรื่องยากและไม่การันตีความสำเร็จอีกด้วยแต่จะว่าไปข้อนี้ก็ถือว่าไม่ร้ายแรง เพราะหลายคนเมื่อตามเขาไป จนถึงจุดเลี้ยวที่ตามไม่ได้ หรือถูกสถานการณ์บังคับให้ต้องยืนด้วยตัวเอง, แก้ปัญหาด้วยตัวเอง, ต้องไปต่อด้วยตัวเอง แล้วสามารถไปได้ อันนี้ก็ดีไป และมันเท่ากับว่า เราไม่ได้ตามเขาตลอดแล้ว นั่นเอง</li><li><strong>ทำสิ่งที่ควบคุมยากไป / ไม่รู้<br></strong>ไม่มีความสำเร็จใดไร้ซึ่งอุปสรรค และไม่จำเป็นต้องรู้ทุกอย่างจึงจะสำเร็จ นั้นเป็นความจริง แต่การไม่รู้อะไรเลย รู้น้อยมากไปจนถึง การที่เราจัดการอะไรไม่ได้เลยนั้น มันก็พอเห็นอยู่ว่าจะสำเร็จได้อย่างไร<br>ข้อนี้พึงระวังตั้งแต่&nbsp;<strong>“ยังไม่เริ่มทำ”</strong>&nbsp;อันที่จริงทั้งในสิ่งที่ควบคุมไม่ได้ และความไม่รู้สองเรื่องนี้จะแยกหัวข้อกันก็ได้ แต่ในแบบหนึ่ง หากเรามองทุกอย่างแง่ดีเกินไป คือ ทำไปก่อน คิดว่าจะควบคุมสิ่งที่ทำได้ แก้ปัญหาได้ พอเอาเข้าจริงก็จนปัญญา เช่นนี้ก็เพราะความ&nbsp;<strong>“ไม่รู้”</strong>&nbsp;อยู่เหมือนกัน<br>อาจเป็นจริงในแง่ที่ว่าจะรอให้ทุกอย่างพร้อม รู้ทุกเรื่อง คุมได้ทุกอย่าง คงไม่ได้ทำกันพอดี แต่อย่างน้อยก็ควรพอรู้ พอเข้าใจ ให้เราประเมินได้ว่า นี่มันไหวหรือไม่ไหว รวมถึงเหมาะหรือไม่เหมาะกับเรา<br>และหลายครั้ง ต่อให้รู้เรื่องที่ทำมากพอ แต่อาจไม่เคยรู้ว่า&nbsp;<strong>“ตอนนี้ยังไม่ใช่เวลา”</strong>&nbsp;มุ่งหน้าดันทุรังทำไปก็คงไม่สำเร็จ เพราะปัจจัยภายนอกหลายอย่างนั้น มันควบคุมไม่ได้…<br>อีกประการของสิ่งที่บอกว่า ควบคุมยากนั้น ก็ไม่ใช่แค่ความไม่รู้ เพราะไม่รู้เราก็ยังไปศึกษาหาความรู้ได้ แต่หลายเรื่องถึงรู้ แต่ก็ทำเองไม่ได้ ต้องพึ่งพาคนอื่น สิ่งอื่น ซึ่งถ้ามากเกินไป มันจะกลายเป็นยากทันที&nbsp; หรือหากมองเป็นการลงทุน แล้วจะลงทุนให้เองหมดเพื่อควบคุมได้ ก็ต้องลงทุนมากกว่าคนอื่น ต้นทุนสูง และ มีไม่น้อยที่เข้าข่ายบานปลาย<br>ทั้งคุมยาก และความไม่รู้นี้ ต่อให้ทำอะไรขึ้นมาได้ ก็จะเจอแต่ปัญหาเพราะเราไม่เข้าใจ แล้วแต่ละปัญหาก็แก้ยากเพราะต้องพึ่งคนอื่น แถมโดนโกง โดนหลอกก็ง่าย พอถึงตรงนี้บางทีเราจะนึกออก เพราะรอบตัวคงมีให้เห็นว่า&nbsp;<strong>ทำในสิ่งที่ไม่รู้ ทำในสิ่งที่ไม่มีปัญญาควบคุมนั้น มันไปได้ยากจริง ๆ</strong></li><li><strong>ทำเรื่องที่เราขาดเขาไม่ได้<br></strong>ข้อนี้อาจมีความคลุมเครืออยู่บ้างในแง่ว่า เราไม่ควรพึ่งพาใครงั้นหรือ? ยกตัวอย่างแบบนี้ดีกว่า หากเรามีเป้าหมายทำอะไรสักอย่าง เช่น เขียนหนังสือการ์ตูนสักเรื่อง แต่เราเป็นนักวาด แต่งเรื่องไม่เก่ง จึงหาคนแต่งเรื่องเก่ง ๆ ที่วาดไม่เก่งมาทำร่วมกัน แล้วเขาแต่งมาหนึ่งตอน เราก็วาดเสร็จ แล้ว แต่เขายังไม่แต่งต่อมาให้สักที คงนึกออกว่าสถานการณ์แบบนี้แย่แค่ไหน เพราะกลายเป็นว่าความสำเร็จนั้น มีปัจจัยอยู่ที่คนอื่นเสียครึ่งหนึ่ง…หรือกรณีเป็นธุรกิจ ก็เช่น การพึ่งพาวัตถุดิบแหล่งเดียว ช่องทางจำหน่ายหลักแห่งเดียว เหล่านี้อำนาจต่อรองมักเป็นปลายทาง หากถามว่ารวม ๆ แล้ว หากเป็นตอนเริ่มต้นไม่ผิดอะไรเลย อาจเป็นเรื่องจำเป็นด้วยซ้ำ แต่ดังที่บอกมันเป็นแนวคิด ถ้าอนาคตไปยัง “ขาดเขาไม่ได้” ก็ให้ระวังเพราะพังกันมาเยอะ…ส่วนหนึ่งข้อนี้ถือว่าควบคุมไม่ได้เหมือนกับข้อที่แล้วไหม? ส่วนหนึ่งก็ใช่แต่กระบวนการ แนวคิด หรือเรื่องราวมักจะต่างกัน เพราะควบคุมไม่ได้มีหลายปัจจัย พื้นฐานมาจากความไม่รู้ แต่ขาดเขาไม่ได้ เป็นเพียงปัจจัยเดียวที่ถ้าดี ก็อาจดีเลยอยู่กันต่อไป แต่ถ้าไม่ดีเมื่อไหร่ยังไงก็รอดยากนั่นเอง</li><li><strong>ทำเพื่อคนอื่น</strong><br>ข้อนี้อาจรวมการ&nbsp;<strong>“ทำเพราะคนอื่น”</strong>&nbsp;อยู่ด้วยก็ได้ แต่การทำเพราะคนอื่นเชื่อว่าส่วนใหญ่พอจะนึกออกว่ามันยากจะสำเร็จ แม้จะทำออกมาได้ดี แต่มันก็ดูจะไม่ใช่ความสำเร็จที่เราต้องการสักเท่าไรสำหรับการ “ทำเพื่อคนอื่น” มันเป็นข้อที่ละเอียดอ่อน และอาจยากจะเข้าใจจนกว่าจะได้เรียนรู้บางอย่าง หลายคนมีปมในใจชอบไปอยู่ในความสำเร็จคนอื่น แล้วสุดท้ายเขาก็ไปต่อโดยทิ้งเราเอาไว้ ซึ่งบางทีเขาไม่ได้ทิ้ง เขาก็ต้องไปต่อตามปกติ เราไปผูกตัวเราไว้กับเขาแต่แรกเอง หรือก็เพราะบางทีเขากลัวว่าต้องพึ่งพาเราไปตลอด ถ้าเราไม่อยู่แล้วล่ะ? (เหมือนข้อ 3) ก็เป็นได้ซึ่งการทำเพื่อคนอื่นในที่นี้ไม่ได้หมายถึง การทำเพื่อสังคมอะไรทำนองนั้น เพราะถ้าทำเพื่อคนอื่นในแนวนั้นจริง ๆ เราจะไม่ต้องการความสำเร็จ เพราะแค่ได้ทำก็ถือว่าสำเร็จแล้ว…แต่ความหมิ่นเหม่ก็อยู่ตรงนี้แหละ เช่น หลายคนบอกว่าทำเพื่อคนรัก ทำเพื่อครอบครัว ทำเพื่อเพื่อน ก็เป็นสิ่งที่ดี แต่นี่ก็ไม่ใช่เรื่องของความสำเร็จ เพราะเราไม่มีวันเติมอะไรให้ใครได้เต็ม…&nbsp;<strong>ไม่มีวัน<br></strong>ยกตัวอย่างที่น่าจะเห็นได้ชัด เช่นที่บอกว่า เราทำงานเพื่อครอบครัว ซึ่งที่จริงเราแค่ทำงานเพื่อ&nbsp;<strong>หาเงิน</strong>&nbsp;มาให้ครอบครัว อันนั้นจะถูกต้องกว่า เพราะผลลัพธ์มันไม่เคยการันตีว่า&nbsp;<strong>เงินนั้นจะพอ</strong>&nbsp;หรือจะทำครอบครัวมีความสุข มันยังมีปัจจัยอื่น ๆ อีกหลายอย่าง แถมเวลา สามี ภรรยา ทะเลาะกันขึ้นมา ต่างก็มักอ้างว่าตัวเองทำเพื่อครอบครัวแล้ว&nbsp;<strong>ถ้าอีกฝ่ายรู้สึกได้รับเพียงพอหรือเห็นค่า ก็ไม่น่าทะเลาะกัน…<br></strong>ประเด็นอยู่ที่บางเรื่องเป็นหน้าที่ ความรับผิดชอบ ถ้าเราไม่แยกออกให้ดี ๆ นอกจากมันไม่ใช่ความสำเร็จแล้วยังเป็นตัวถ่วงความสำเร็จได้ด้วย อย่าวางความสำเร็จว่า ทำตามหน้าที่คือสำเร็จ รับผิดชอบแล้วคือสำเร็จ มันคนละเรื่องกัน หรือถ้าจะเรียกว่าสำเร็จคุณต้องมีผลลัพธ์มาให้ชัดเจนเสียก่อน ว่าเขาเหล่านั้น โดยที่เขาเหล่านั้นเป็นคนบอกเราได้ว่าเราทำเพื่อเขาสำเร็จ ซึ่งคงยากมากจริง ๆ…อีกแบบก็จะเป็นแนวว่า “การเอาความสำเร็จของคนอื่นมาเป็นของตนเอง” ซึ่งมิใช่ว่าทำไม่ได้เลย เพียงแต่ต้องระวังการไปนึกว่านี่มันเป็น&nbsp;<strong>“บุญคุณ”</strong>&nbsp;เช่น โค้ชนักกีฬาต่อให้พานักกีฬาเป็นแชมป์ เขาก็มีโอกาสเปลี่ยนโค้ช เพื่อพัฒนาขึ้นไป เช่นจากระดับจังหวัด ไปประเทศ ไประดับโลก แม้แต่ได้แชมป์โลกแล้วก็ยังมีเปลี่ยนเลย ทั้งที่นั่นคือโค้ช ผู้นำพาเขาไปให้ได้แชมป์โลกนะ ถ้าไม่แยกแยะว่า ความสำเร็จของโค้ชก็คือทำให้เขามีศักยภาพสูงสุดเท่านั้น ส่วนตอนแข่งหรือการลงมือทำก็เป็นของนักกีฬา แม้บางส่วนจะดูเป็นความสำเร็จร่วมกัน แต่ที่สุดแล้วก็ความสำเร็จของใครของมัน…ดังที่บอกข้อนี้ละเอียดอ่อน บ้างก็คงเข้าใจ บ้างก็อาจขัดใจ ถ้าให้พยายามสรุปก็คือ&nbsp;<strong>ถ้าพูดเรื่องความสำเร็จ มันก็ต้องชัดก่อนว่า อะไรคือความสำเร็จ?</strong>&nbsp;“สำเร็จที่ทำให้เขาสำเร็จ” นั้นเป็นได้ แต่ส่วนใหญ่จะน้อยใจตั้งแต่ยังไม่สำเร็จ หรือเมื่อสำเร็จแล้วต้องเป็นบุญคุณตลอดไป อันนี้คงไม่น่าใช่อีก ลึก ๆ ทำเพื่อคนอื่น หรือเพื่อปมบางอย่างในใจต้องทบทวนให้ดี ๆ เพราะ<strong>คนที่ไม่ชัดเจนเช่นนี้ มักมีวันสำเร็จ</strong></li><li><strong>ทำดีที่สุดแล้ว (คนเดียว)<br></strong>นี่ก็เป็นอีกกรอบคิด (mindset) ที่ขัดขวางความสำเร็จของหลายคนบนความไม่รู้ตัว ด้วยคำว่า&nbsp;<strong>“ดีที่สุดแล้ว”</strong>&nbsp;ตัวอย่างที่น่าจะสะท้อนเรื่องนี้ได้ ก็ ลองนึกถึงเวลาเรามองเรื่องของคนอื่นแล้วมีความคิดว่า “ทำไมเขาไม่ทำแบบนั้น” ซึ่งมักจะเป็นเวลาที่เรามองเห็นทั้งโอกาส ศักยภาพของเขา พอมันก็ย้อนกลับมาที่ บางทีคนอื่นเขาก็มองเราเช่นนั้นเหมือนกัน ว่าทำไมไม่ทำบางอย่างบ้าง ในมุมคล้ายกัน ส่วนใหญ่เราก็คิดว่าเรา “ทำดีที่สุดแล้ว”<br>ก็ต้องทบทวนดูว่า เรารู้ตัวหรือไม่รู้ตัว ทำดีที่สุดแล้วจริง ๆ หรือยังไม่จริง วิธีการที่ดีที่สุดในข้อนี้คือ&nbsp;<strong>“มีแผนและตัวชี้วัด”</strong>&nbsp;เพราะเมื่อเรามีแผนในการลงมือทำ เราจะรู้ว่า&nbsp;<strong>“ต้องทำอะไร”</strong>&nbsp;ถ้ายังทำไม่ครบ ไม่หมด ไม่จบได้ตามแผน จะบอกว่าดีที่สุดแล้วนั้น คือเราคิดไปเอง และเท่านั้นยังไม่พอ เพราะแม้ทำครบตามแผนมันอาจกลายเป็นว่า&nbsp;<strong>“แค่ทำ”</strong>&nbsp;ถ้ามีตัวชี้วัดด้วยเราก็ไม่รู้สึกไปเองว่า&nbsp;<strong>“ทำพอแล้ว”</strong>&nbsp;และหากทำตามแผน มีผลชี้วัด ดีที่สุดหรือยังนั้น มันจะชัดเจนขึ้น…</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>ส่งท้าย</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ทุกความสำเร็จมีหลากหลายปัจจัย คนย่อมมีความเป็นปัจเจก นี่เป็นเพียงอีกหนึ่งบทความเพื่อการพัฒนาตนเอง ที่เขียนไว้แล้วว่า ไม่การันตีความสำเร็จให้ใคร แต่เชื่อว่าเป็นมุมคิดที่มีประโยชน์ ให้นำไปทบทวน ไม่ต้องวนอยู่กับความ ล้มเหลว ซ้ำซาก และ เช่นเคยครับ อยากดีกว่าเมื่อวาน วันนี้ก็ต้องเปลี่ยน…</p>\n<!-- /wp:paragraph -->', 'บทความที่5', '', 'publish', 'open', 'open', '', '%e0%b8%9a%e0%b8%97%e0%b8%84%e0%b8%a7%e0%b8%b2%e0%b8%a1%e0%b8%97%e0%b8%b5%e0%b9%885', '', '', '2021-10-01 10:15:16', '2021-10-01 03:15:16', '', 0, 'http://localhost/?p=30', 0, 'post', '', 2),
(31, 1, '2021-10-01 10:15:04', '2021-10-01 03:15:04', '', 'd5', '', 'inherit', 'open', 'closed', '', 'd5', '', '', '2021-10-01 10:15:04', '2021-10-01 03:15:04', '', 30, 'http://localhost/wp-content/uploads/2021/10/d5.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2021-10-01 10:15:16', '2021-10-01 03:15:16', '<!-- wp:paragraph -->\n<p>บางทีก่อนจะคิด จะพูดกันว่า ความสำเร็จต้องทำอย่างไร ปัจจุบันเราอาจกำลังคิดหรือทำอะไรที่ส่งผลให้ มันพัง มันไม่สำเร็จ หรือกำลังทำให้มันยากกว่าเดิม โดยไม่รู้ตัวอยู่ ก็เป็นได้…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>การไม่ใช่คนดัง แล้วก็ไม่ใช่กลุ่มอายุน้อยร้อยล้าน หรือวางแผนเปิดคอร์สสอนรวย การจะพูดเรื่องความสำเร็จอาจดูขัดเขิน แต่ถ้า&nbsp;<strong>“ทำให้ตายก็ไม่สำเร็จ”</strong>&nbsp;เนี่ย อาจพอมาบอกกล่าวให้ชวนคิดกันได้อยู่บ้างเหมือนกัน…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>คงต้องเริ่มจากมองเห็นร่วมกันก่อนว่า&nbsp;<strong>ความสำเร็จ คงไม่เกิดจากการทำอะไรเพียงครั้งเดียว หรืออย่างเดียว</strong>&nbsp;แล้วจะสำเร็จ มันต้องทำอะไรมาหลาย ๆ อย่าง และบางอย่างต้องทำซ้ำหลายครั้ง ซึ่งในการที่เราต้องทำหลายครั้ง หลายเรื่อง และสารพัดวิธีนี้เอง มันจึงไม่มีสูตรตายตัวหรอกว่า ทำแบบนั้น แบบนี้ แล้วจะสำเร็จไปเสียหมด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แล้วในการทำซ้ำ ๆ นี่เอง บางทีผลลัพธ์ก็เป็นทั้งส่งเสริมให้ก้าวหน้า และถ่วงความสำเร็จได้เช่นกัน เราจึงควร “เลือกทำ” มิเช่นนั้นมันก็คือ การพยายามที่ผิดที่ ผิดทาง…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>แต่การจะบอกว่าสิ่งไหนควรทำ ไม่ควรทำ มันก็อาจตีกรอบให้ยากอีก เพราะนอกจากจะคาดเดาอนาคตไม่ได้แล้ว ยังไม่รู้ด้วยว่า แต่ละคนทำเรื่องอะไร และมีเป้าหมายความสำเร็จนั้นที่ตรงไหน ทั้งแง่การทำธุรกิจ, เป้าหมายชีวิต หรือหน้าที่การงาน ภาพรวมเรื่องนี้จึงเป็นเพียง แนวทาง วิธีคิด หรือกรอบคิด (Mindset) ในการทำสิ่งหนึ่ง ที่คงพอจะสะท้อนว่า ทำแบบนี้ต่อไป ให้ตายก็คงไม่สำเร็จ ดังนี้</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5 แบบที่ ทำให้ตายก็ไม่สำเร็จหรอก</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>ทำตามเขาตลอด</strong><br>“การทำตาม” มีหลายแบบ และไม่ใช่เรื่องผิด บางทีเป็นแนวคิดที่ดีด้วยซ้ำ แต่การ “ตามตลอด” นั้น คงไม่ดี เพราะนอกจากเราไม่อาจตามใครได้ตลอดจริง ๆ แล้ว อาจมีการตามแบบผิด ๆ ประมาณว่า เหมือนแต่ข้างนอก ข้างในไม่ใช่ อะไรทำนองนี้หรือถ้าวันหนึ่งเขาตัน เราก็ตันไปด้วย หรือถ้าเขาทำผิดเสียหาย เราก็เสียหายไปด้วย บางกรณีเขาอาจแก้ปัญหาได้ เพราะเขารู้ว่าทำเพราะอะไร แต่เราไม่รู้ เราอาจแก้ปัญหาไม่ได้เหมือนเขา รวม ๆ แล้ว การตามใครได้ตลอดจึงเป็นเรื่องยากและไม่การันตีความสำเร็จอีกด้วยแต่จะว่าไปข้อนี้ก็ถือว่าไม่ร้ายแรง เพราะหลายคนเมื่อตามเขาไป จนถึงจุดเลี้ยวที่ตามไม่ได้ หรือถูกสถานการณ์บังคับให้ต้องยืนด้วยตัวเอง, แก้ปัญหาด้วยตัวเอง, ต้องไปต่อด้วยตัวเอง แล้วสามารถไปได้ อันนี้ก็ดีไป และมันเท่ากับว่า เราไม่ได้ตามเขาตลอดแล้ว นั่นเอง</li><li><strong>ทำสิ่งที่ควบคุมยากไป / ไม่รู้<br></strong>ไม่มีความสำเร็จใดไร้ซึ่งอุปสรรค และไม่จำเป็นต้องรู้ทุกอย่างจึงจะสำเร็จ นั้นเป็นความจริง แต่การไม่รู้อะไรเลย รู้น้อยมากไปจนถึง การที่เราจัดการอะไรไม่ได้เลยนั้น มันก็พอเห็นอยู่ว่าจะสำเร็จได้อย่างไร<br>ข้อนี้พึงระวังตั้งแต่&nbsp;<strong>“ยังไม่เริ่มทำ”</strong>&nbsp;อันที่จริงทั้งในสิ่งที่ควบคุมไม่ได้ และความไม่รู้สองเรื่องนี้จะแยกหัวข้อกันก็ได้ แต่ในแบบหนึ่ง หากเรามองทุกอย่างแง่ดีเกินไป คือ ทำไปก่อน คิดว่าจะควบคุมสิ่งที่ทำได้ แก้ปัญหาได้ พอเอาเข้าจริงก็จนปัญญา เช่นนี้ก็เพราะความ&nbsp;<strong>“ไม่รู้”</strong>&nbsp;อยู่เหมือนกัน<br>อาจเป็นจริงในแง่ที่ว่าจะรอให้ทุกอย่างพร้อม รู้ทุกเรื่อง คุมได้ทุกอย่าง คงไม่ได้ทำกันพอดี แต่อย่างน้อยก็ควรพอรู้ พอเข้าใจ ให้เราประเมินได้ว่า นี่มันไหวหรือไม่ไหว รวมถึงเหมาะหรือไม่เหมาะกับเรา<br>และหลายครั้ง ต่อให้รู้เรื่องที่ทำมากพอ แต่อาจไม่เคยรู้ว่า&nbsp;<strong>“ตอนนี้ยังไม่ใช่เวลา”</strong>&nbsp;มุ่งหน้าดันทุรังทำไปก็คงไม่สำเร็จ เพราะปัจจัยภายนอกหลายอย่างนั้น มันควบคุมไม่ได้…<br>อีกประการของสิ่งที่บอกว่า ควบคุมยากนั้น ก็ไม่ใช่แค่ความไม่รู้ เพราะไม่รู้เราก็ยังไปศึกษาหาความรู้ได้ แต่หลายเรื่องถึงรู้ แต่ก็ทำเองไม่ได้ ต้องพึ่งพาคนอื่น สิ่งอื่น ซึ่งถ้ามากเกินไป มันจะกลายเป็นยากทันที&nbsp; หรือหากมองเป็นการลงทุน แล้วจะลงทุนให้เองหมดเพื่อควบคุมได้ ก็ต้องลงทุนมากกว่าคนอื่น ต้นทุนสูง และ มีไม่น้อยที่เข้าข่ายบานปลาย<br>ทั้งคุมยาก และความไม่รู้นี้ ต่อให้ทำอะไรขึ้นมาได้ ก็จะเจอแต่ปัญหาเพราะเราไม่เข้าใจ แล้วแต่ละปัญหาก็แก้ยากเพราะต้องพึ่งคนอื่น แถมโดนโกง โดนหลอกก็ง่าย พอถึงตรงนี้บางทีเราจะนึกออก เพราะรอบตัวคงมีให้เห็นว่า&nbsp;<strong>ทำในสิ่งที่ไม่รู้ ทำในสิ่งที่ไม่มีปัญญาควบคุมนั้น มันไปได้ยากจริง ๆ</strong></li><li><strong>ทำเรื่องที่เราขาดเขาไม่ได้<br></strong>ข้อนี้อาจมีความคลุมเครืออยู่บ้างในแง่ว่า เราไม่ควรพึ่งพาใครงั้นหรือ? ยกตัวอย่างแบบนี้ดีกว่า หากเรามีเป้าหมายทำอะไรสักอย่าง เช่น เขียนหนังสือการ์ตูนสักเรื่อง แต่เราเป็นนักวาด แต่งเรื่องไม่เก่ง จึงหาคนแต่งเรื่องเก่ง ๆ ที่วาดไม่เก่งมาทำร่วมกัน แล้วเขาแต่งมาหนึ่งตอน เราก็วาดเสร็จ แล้ว แต่เขายังไม่แต่งต่อมาให้สักที คงนึกออกว่าสถานการณ์แบบนี้แย่แค่ไหน เพราะกลายเป็นว่าความสำเร็จนั้น มีปัจจัยอยู่ที่คนอื่นเสียครึ่งหนึ่ง…หรือกรณีเป็นธุรกิจ ก็เช่น การพึ่งพาวัตถุดิบแหล่งเดียว ช่องทางจำหน่ายหลักแห่งเดียว เหล่านี้อำนาจต่อรองมักเป็นปลายทาง หากถามว่ารวม ๆ แล้ว หากเป็นตอนเริ่มต้นไม่ผิดอะไรเลย อาจเป็นเรื่องจำเป็นด้วยซ้ำ แต่ดังที่บอกมันเป็นแนวคิด ถ้าอนาคตไปยัง “ขาดเขาไม่ได้” ก็ให้ระวังเพราะพังกันมาเยอะ…ส่วนหนึ่งข้อนี้ถือว่าควบคุมไม่ได้เหมือนกับข้อที่แล้วไหม? ส่วนหนึ่งก็ใช่แต่กระบวนการ แนวคิด หรือเรื่องราวมักจะต่างกัน เพราะควบคุมไม่ได้มีหลายปัจจัย พื้นฐานมาจากความไม่รู้ แต่ขาดเขาไม่ได้ เป็นเพียงปัจจัยเดียวที่ถ้าดี ก็อาจดีเลยอยู่กันต่อไป แต่ถ้าไม่ดีเมื่อไหร่ยังไงก็รอดยากนั่นเอง</li><li><strong>ทำเพื่อคนอื่น</strong><br>ข้อนี้อาจรวมการ&nbsp;<strong>“ทำเพราะคนอื่น”</strong>&nbsp;อยู่ด้วยก็ได้ แต่การทำเพราะคนอื่นเชื่อว่าส่วนใหญ่พอจะนึกออกว่ามันยากจะสำเร็จ แม้จะทำออกมาได้ดี แต่มันก็ดูจะไม่ใช่ความสำเร็จที่เราต้องการสักเท่าไรสำหรับการ “ทำเพื่อคนอื่น” มันเป็นข้อที่ละเอียดอ่อน และอาจยากจะเข้าใจจนกว่าจะได้เรียนรู้บางอย่าง หลายคนมีปมในใจชอบไปอยู่ในความสำเร็จคนอื่น แล้วสุดท้ายเขาก็ไปต่อโดยทิ้งเราเอาไว้ ซึ่งบางทีเขาไม่ได้ทิ้ง เขาก็ต้องไปต่อตามปกติ เราไปผูกตัวเราไว้กับเขาแต่แรกเอง หรือก็เพราะบางทีเขากลัวว่าต้องพึ่งพาเราไปตลอด ถ้าเราไม่อยู่แล้วล่ะ? (เหมือนข้อ 3) ก็เป็นได้ซึ่งการทำเพื่อคนอื่นในที่นี้ไม่ได้หมายถึง การทำเพื่อสังคมอะไรทำนองนั้น เพราะถ้าทำเพื่อคนอื่นในแนวนั้นจริง ๆ เราจะไม่ต้องการความสำเร็จ เพราะแค่ได้ทำก็ถือว่าสำเร็จแล้ว…แต่ความหมิ่นเหม่ก็อยู่ตรงนี้แหละ เช่น หลายคนบอกว่าทำเพื่อคนรัก ทำเพื่อครอบครัว ทำเพื่อเพื่อน ก็เป็นสิ่งที่ดี แต่นี่ก็ไม่ใช่เรื่องของความสำเร็จ เพราะเราไม่มีวันเติมอะไรให้ใครได้เต็ม…&nbsp;<strong>ไม่มีวัน<br></strong>ยกตัวอย่างที่น่าจะเห็นได้ชัด เช่นที่บอกว่า เราทำงานเพื่อครอบครัว ซึ่งที่จริงเราแค่ทำงานเพื่อ&nbsp;<strong>หาเงิน</strong>&nbsp;มาให้ครอบครัว อันนั้นจะถูกต้องกว่า เพราะผลลัพธ์มันไม่เคยการันตีว่า&nbsp;<strong>เงินนั้นจะพอ</strong>&nbsp;หรือจะทำครอบครัวมีความสุข มันยังมีปัจจัยอื่น ๆ อีกหลายอย่าง แถมเวลา สามี ภรรยา ทะเลาะกันขึ้นมา ต่างก็มักอ้างว่าตัวเองทำเพื่อครอบครัวแล้ว&nbsp;<strong>ถ้าอีกฝ่ายรู้สึกได้รับเพียงพอหรือเห็นค่า ก็ไม่น่าทะเลาะกัน…<br></strong>ประเด็นอยู่ที่บางเรื่องเป็นหน้าที่ ความรับผิดชอบ ถ้าเราไม่แยกออกให้ดี ๆ นอกจากมันไม่ใช่ความสำเร็จแล้วยังเป็นตัวถ่วงความสำเร็จได้ด้วย อย่าวางความสำเร็จว่า ทำตามหน้าที่คือสำเร็จ รับผิดชอบแล้วคือสำเร็จ มันคนละเรื่องกัน หรือถ้าจะเรียกว่าสำเร็จคุณต้องมีผลลัพธ์มาให้ชัดเจนเสียก่อน ว่าเขาเหล่านั้น โดยที่เขาเหล่านั้นเป็นคนบอกเราได้ว่าเราทำเพื่อเขาสำเร็จ ซึ่งคงยากมากจริง ๆ…อีกแบบก็จะเป็นแนวว่า “การเอาความสำเร็จของคนอื่นมาเป็นของตนเอง” ซึ่งมิใช่ว่าทำไม่ได้เลย เพียงแต่ต้องระวังการไปนึกว่านี่มันเป็น&nbsp;<strong>“บุญคุณ”</strong>&nbsp;เช่น โค้ชนักกีฬาต่อให้พานักกีฬาเป็นแชมป์ เขาก็มีโอกาสเปลี่ยนโค้ช เพื่อพัฒนาขึ้นไป เช่นจากระดับจังหวัด ไปประเทศ ไประดับโลก แม้แต่ได้แชมป์โลกแล้วก็ยังมีเปลี่ยนเลย ทั้งที่นั่นคือโค้ช ผู้นำพาเขาไปให้ได้แชมป์โลกนะ ถ้าไม่แยกแยะว่า ความสำเร็จของโค้ชก็คือทำให้เขามีศักยภาพสูงสุดเท่านั้น ส่วนตอนแข่งหรือการลงมือทำก็เป็นของนักกีฬา แม้บางส่วนจะดูเป็นความสำเร็จร่วมกัน แต่ที่สุดแล้วก็ความสำเร็จของใครของมัน…ดังที่บอกข้อนี้ละเอียดอ่อน บ้างก็คงเข้าใจ บ้างก็อาจขัดใจ ถ้าให้พยายามสรุปก็คือ&nbsp;<strong>ถ้าพูดเรื่องความสำเร็จ มันก็ต้องชัดก่อนว่า อะไรคือความสำเร็จ?</strong>&nbsp;“สำเร็จที่ทำให้เขาสำเร็จ” นั้นเป็นได้ แต่ส่วนใหญ่จะน้อยใจตั้งแต่ยังไม่สำเร็จ หรือเมื่อสำเร็จแล้วต้องเป็นบุญคุณตลอดไป อันนี้คงไม่น่าใช่อีก ลึก ๆ ทำเพื่อคนอื่น หรือเพื่อปมบางอย่างในใจต้องทบทวนให้ดี ๆ เพราะ<strong>คนที่ไม่ชัดเจนเช่นนี้ มักมีวันสำเร็จ</strong></li><li><strong>ทำดีที่สุดแล้ว (คนเดียว)<br></strong>นี่ก็เป็นอีกกรอบคิด (mindset) ที่ขัดขวางความสำเร็จของหลายคนบนความไม่รู้ตัว ด้วยคำว่า&nbsp;<strong>“ดีที่สุดแล้ว”</strong>&nbsp;ตัวอย่างที่น่าจะสะท้อนเรื่องนี้ได้ ก็ ลองนึกถึงเวลาเรามองเรื่องของคนอื่นแล้วมีความคิดว่า “ทำไมเขาไม่ทำแบบนั้น” ซึ่งมักจะเป็นเวลาที่เรามองเห็นทั้งโอกาส ศักยภาพของเขา พอมันก็ย้อนกลับมาที่ บางทีคนอื่นเขาก็มองเราเช่นนั้นเหมือนกัน ว่าทำไมไม่ทำบางอย่างบ้าง ในมุมคล้ายกัน ส่วนใหญ่เราก็คิดว่าเรา “ทำดีที่สุดแล้ว”<br>ก็ต้องทบทวนดูว่า เรารู้ตัวหรือไม่รู้ตัว ทำดีที่สุดแล้วจริง ๆ หรือยังไม่จริง วิธีการที่ดีที่สุดในข้อนี้คือ&nbsp;<strong>“มีแผนและตัวชี้วัด”</strong>&nbsp;เพราะเมื่อเรามีแผนในการลงมือทำ เราจะรู้ว่า&nbsp;<strong>“ต้องทำอะไร”</strong>&nbsp;ถ้ายังทำไม่ครบ ไม่หมด ไม่จบได้ตามแผน จะบอกว่าดีที่สุดแล้วนั้น คือเราคิดไปเอง และเท่านั้นยังไม่พอ เพราะแม้ทำครบตามแผนมันอาจกลายเป็นว่า&nbsp;<strong>“แค่ทำ”</strong>&nbsp;ถ้ามีตัวชี้วัดด้วยเราก็ไม่รู้สึกไปเองว่า&nbsp;<strong>“ทำพอแล้ว”</strong>&nbsp;และหากทำตามแผน มีผลชี้วัด ดีที่สุดหรือยังนั้น มันจะชัดเจนขึ้น…</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>ส่งท้าย</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ทุกความสำเร็จมีหลากหลายปัจจัย คนย่อมมีความเป็นปัจเจก นี่เป็นเพียงอีกหนึ่งบทความเพื่อการพัฒนาตนเอง ที่เขียนไว้แล้วว่า ไม่การันตีความสำเร็จให้ใคร แต่เชื่อว่าเป็นมุมคิดที่มีประโยชน์ ให้นำไปทบทวน ไม่ต้องวนอยู่กับความ ล้มเหลว ซ้ำซาก และ เช่นเคยครับ อยากดีกว่าเมื่อวาน วันนี้ก็ต้องเปลี่ยน…</p>\n<!-- /wp:paragraph -->', 'บทความที่5', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-10-01 10:15:16', '2021-10-01 03:15:16', '', 30, 'http://localhost/?p=32', 0, 'revision', '', 0);

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
(1, 'ไม่มีหมวดหมู่', 'uncategorized', 0);

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
(12, 1, 0),
(15, 1, 0),
(17, 1, 0),
(19, 1, 0),
(22, 1, 0),
(25, 1, 0),
(27, 1, 0),
(30, 1, 0);

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
(1, 1, 'category', '', 0, 5);

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
(1, 1, 'nickname', 'MisterSiGz'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '24'),
(18, 1, 'session_tokens', 'a:5:{s:64:\"b134a6a8c8ab5d3869287286118ff3ab8c8c4fe8d3129c4f3fcb226c864aadaf\";a:4:{s:10:\"expiration\";i:1633107544;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1632934744;}s:64:\"81477c6c73e8b89684181941bcae7c7940f590a01b63565c0d33ea6672be9b4a\";a:4:{s:10:\"expiration\";i:1633165364;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1632992564;}s:64:\"ad20a349f0a865bdceeaec8ecd96d83f8d66bf800520e3ce63e2b3d2d313cef1\";a:4:{s:10:\"expiration\";i:1633185981;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1633013181;}s:64:\"680ad4a8c58b11f03d829a5d3a67bb4ad3073b57e19fc97b3722391ff0abfc2b\";a:4:{s:10:\"expiration\";i:1633229494;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1633056694;}s:64:\"dfcb9453fa293845c7808dbccd3408b13e2ea86d78c6b51cab59661d6dff529b\";a:4:{s:10:\"expiration\";i:1633271213;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1633098413;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1633002562');

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
(1, 'MisterSiGz', '$P$BJ5pgzCLd.fSRzQCmNrG006x2w.UYk.', 'mistersigz', 'y-title@hotmail.com', 'http://localhost', '2021-09-29 16:54:25', '', 0, 'MisterSiGz');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
