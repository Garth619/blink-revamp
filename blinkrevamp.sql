-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2018 at 10:17 AM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blinkrevamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-05 01:47:09', '2018-02-05 01:47:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://garretts-macbook-pro.local:5757', 'yes'),
(2, 'home', 'http://garretts-macbook-pro.local:5757', 'yes'),
(3, 'blogname', 'Blink Lash Boutique', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'garrettcullen@yahoo.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:29:"gravityforms/gravityforms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'blink', 'yes'),
(41, 'stylesheet', 'blink', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:16:"category_sidebar";a:0:{}s:15:"archive_sidebar";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1519338104;a:1:{s:17:"gravityforms_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1519350429;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1519350440;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1519350717;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(116, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1519323383;s:7:"checked";a:1:{s:5:"blink";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(122, 'can_compress_scripts', '0', 'no'),
(133, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517795505;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(134, 'current_theme', '', 'yes'),
(135, 'theme_mods_blink', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main_menu";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(140, 'WPLANG', '', 'yes'),
(141, 'new_admin_email', 'garrettcullen@yahoo.com', 'yes'),
(148, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(161, '_site_transient_timeout_browser_bbe4ac2d3fa429c8cab0021a72816ffe', '1519597195', 'no'),
(162, '_site_transient_browser_bbe4ac2d3fa429c8cab0021a72816ffe', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"63.0.3239.132";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(179, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1519323381;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(182, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(184, 'rg_form_version', '2.2.5', 'yes'),
(187, 'rg_gforms_key', '2607c8f786b4fc8d43bc9ecae92fcaa1', 'yes'),
(188, 'rg_gforms_disable_css', '1', 'yes'),
(189, 'rg_gforms_enable_html5', '0', 'yes'),
(190, 'gform_enable_noconflict', '0', 'yes'),
(191, 'rg_gforms_enable_akismet', '', 'yes'),
(192, 'rg_gforms_captcha_public_key', '', 'yes'),
(193, 'rg_gforms_captcha_private_key', '', 'yes'),
(194, 'rg_gforms_currency', 'USD', 'yes'),
(195, 'rg_gforms_message', '<!--GFM-->', 'yes'),
(197, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(198, 'gf_is_upgrading', '0', 'yes'),
(199, 'gf_previous_db_version', '0', 'yes'),
(200, 'gf_db_version', '2.2.5', 'yes'),
(210, 'category_children', 'a:0:{}', 'yes'),
(548, '_transient_timeout_gform_update_info', '1519356238', 'no'),
(549, '_transient_gform_update_info', 'a:9:{s:12:"is_valid_key";b:1;s:6:"reason";s:0:"";s:7:"version";s:5:"2.2.5";s:3:"url";s:166:"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=dPJi2yOlaBeWdnVpyO3rK%2BAZPHM%3D";s:15:"expiration_time";i:1545997832;s:9:"offerings";a:46:{s:12:"gravityforms";a:5:{s:12:"is_available";b:1;s:7:"version";s:5:"2.2.5";s:14:"version_latest";s:8:"2.2.5.21";s:3:"url";s:166:"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=dPJi2yOlaBeWdnVpyO3rK%2BAZPHM%3D";s:10:"url_latest";s:167:"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.2.5.21.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=vHvQzgwoT8dF0UDt4qZX6BPTabc%3D";}s:26:"gravityformsactivecampaign";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.4";s:14:"version_latest";s:5:"1.4.4";s:3:"url";s:191:"http://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=E%2BDWGcw6Y3oRUwhR207zcqeK1WY%3D";s:10:"url_latest";s:195:"http://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.4.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=Nu7%2F9cEBg6QJKHr%2BuOL3JkYi4iM%3D";}s:20:"gravityformsagilecrm";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.1";s:14:"version_latest";s:5:"1.1.2";s:3:"url";s:179:"http://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=f3eBtJBZkrYqv%2BBO6pinWO31oeI%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=gPlwmVhgvosk30gkfVxB5CRw2CE%3D";}s:24:"gravityformsauthorizenet";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.4";s:14:"version_latest";s:5:"2.4.2";s:3:"url";s:185:"http://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=p47F69KpM4ecmLIX1lkQXTr5bdo%3D";s:10:"url_latest";s:187:"http://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.4.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=6lqnpNWDlxlxWwiHyysyvqPTVp0%3D";}s:18:"gravityformsaweber";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.5";s:14:"version_latest";s:5:"2.6.1";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=lvIiGsBvT%2Fw%2FxwjrhYbZRp4Ov6I%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.6.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=maztld%2B%2FcHzpk9Gr8VmdYKExrUM%3D";}s:21:"gravityformsbatchbook";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.2";s:14:"version_latest";s:5:"1.2.1";s:3:"url";s:181:"http://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=MeTORWeVxIn4EC546xU12OFwo%2FQ%3D";s:10:"url_latest";s:183:"http://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=cIys7KM0zHMtU0uSjfDKf%2FPqSm8%3D";}s:18:"gravityformsbreeze";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.2";s:14:"version_latest";s:5:"1.2.1";s:3:"url";s:175:"http://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=COX5JTXgls%2BkKU4x9sb7IQEEnAI%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=6vUvNgAzKHXDr1DfDiQUv%2BI6%2BWk%3D";}s:27:"gravityformscampaignmonitor";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"3.5";s:14:"version_latest";s:5:"3.6.2";s:3:"url";s:195:"http://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=VCJA05k0Mk9iqwdoGEYs%2BTF9J%2FA%3D";s:10:"url_latest";s:197:"http://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.6.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=T5%2Bt4SIAdS1FikAaUL9oz2fGb%2FE%3D";}s:20:"gravityformscampfire";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.1";s:14:"version_latest";s:5:"1.2.1";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=8T4JWGgXUXThhL0TNvDPxjsoKq4%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=RaKBUPRbNvbKD3fY9woPsjxqJCQ%3D";}s:22:"gravityformscapsulecrm";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.2";s:14:"version_latest";s:3:"1.2";s:3:"url";s:181:"http://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=xW8KP6FuFe41sut2L5FzU5DbWbk%3D";s:10:"url_latest";s:181:"http://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=xW8KP6FuFe41sut2L5FzU5DbWbk%3D";}s:26:"gravityformschainedselects";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.0";s:14:"version_latest";s:5:"1.0.6";s:3:"url";s:189:"http://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=xVXKs0cadF5XAWKcRc2KcrtvQJ0%3D";s:10:"url_latest";s:195:"http://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.0.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=SE7NCXL1hGr%2BPQm2BOJspM%2BEIgk%3D";}s:23:"gravityformscleverreach";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.3";s:14:"version_latest";s:5:"1.3.5";s:3:"url";s:183:"http://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=E5fgJyWU5nNeOPtDY0nCeZKGE1w%3D";s:10:"url_latest";s:185:"http://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.3.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=TVVctW0dMgjUekZj2tb2FYhlvxo%3D";}s:19:"gravityformscoupons";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.6";s:14:"version_latest";s:5:"2.6.2";s:3:"url";s:179:"http://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=08Oc7vCT47H9miew3lyF%2BEv%2BMdI%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.6.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=6nMrRpowW09dkrWqpD%2BEsqW2xHM%3D";}s:17:"gravityformsdebug";a:5:{s:12:"is_available";b:1;s:7:"version";s:0:"";s:14:"version_latest";s:9:"1.0.beta8";s:3:"url";s:0:"";s:10:"url_latest";s:177:"http://s3.amazonaws.com/gravityforms/addons/debug/gravityformsdebug_1.0.beta8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=c2XXOznbdKOugo3vUBOS9Hbu6LQ%3D";}s:19:"gravityformsdropbox";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.0";s:14:"version_latest";s:5:"2.0.5";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=OG5%2FnuCDCRgpiBjwJQePmFvgNgo%3D";s:10:"url_latest";s:177:"http://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.0.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=GmUY6E24P4s9HdWx67TxhhLM9VE%3D";}s:16:"gravityformsemma";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.2";s:14:"version_latest";s:5:"1.2.3";s:3:"url";s:169:"http://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=KPTvzR0bJgjflBezsVIkKIlH5Ns%3D";s:10:"url_latest";s:171:"http://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=mPeRqul8edxelXw3RYN8x8Mem7w%3D";}s:22:"gravityformsfreshbooks";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.5";s:14:"version_latest";s:5:"2.5.2";s:3:"url";s:185:"http://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=ahTO%2FPmom7M6%2BaHPJNIcyZWgL5A%3D";s:10:"url_latest";s:185:"http://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.5.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=H%2BGPUrL28he1UjYr7O9hIiwkIB0%3D";}s:23:"gravityformsgetresponse";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.1";s:14:"version_latest";s:5:"1.1.2";s:3:"url";s:183:"http://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=mE5ZQ35aOJnRDnwvaC0v4DotL8g%3D";s:10:"url_latest";s:185:"http://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=X1mW1C3FJ9ZUZefqhJgiEjtGUhk%3D";}s:21:"gravityformsgutenberg";a:5:{s:12:"is_available";b:1;s:7:"version";s:10:"1.0-beta-2";s:14:"version_latest";s:10:"1.0-beta-2";s:3:"url";s:188:"http://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=OuG8cQ49Olgw%2F5HFCqSUCip3AHk%3D";s:10:"url_latest";s:188:"http://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=OuG8cQ49Olgw%2F5HFCqSUCip3AHk%3D";}s:21:"gravityformshelpscout";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.4";s:14:"version_latest";s:5:"1.4.5";s:3:"url";s:179:"http://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=i2m0GJE6M0pSQ0n5J55gfWDPgYA%3D";s:10:"url_latest";s:183:"http://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.4.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=BckC7gzHF2ZK%2BJUbLCatVm0TvVU%3D";}s:20:"gravityformshighrise";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.2";s:14:"version_latest";s:5:"1.2.3";s:3:"url";s:183:"http://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=%2Ftm%2BM53n6Stk7PqR1aWbDAE%2FdTU%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=TMVTciVCbYrYoUJmfZKQRgScmP8%3D";}s:19:"gravityformshipchat";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.1";s:14:"version_latest";s:5:"1.1.2";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/hipchat/gravityformshipchat_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=P%2Fd6RY6SzdPieFGddvqQLYFHrH4%3D";s:10:"url_latest";s:183:"http://s3.amazonaws.com/gravityforms/addons/hipchat/gravityformshipchat_1.1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=LymrHxlr%2BkPBNQy%2FhEPbtQG%2BxHY%3D";}s:20:"gravityformsicontact";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.2";s:14:"version_latest";s:5:"1.2.5";s:3:"url";s:181:"http://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=mqu6wmc1LJtwm%2BGxbQ%2B58gMpc1A%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=pPsaDWE4ADEwZkJlUKeCXZyo2zw%3D";}s:19:"gravityformslogging";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.3";s:14:"version_latest";s:5:"1.3.1";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=StpJ%2FphpJsCXbJE6IiZgZAtTpUc%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=B%2Fn2VuxvdEqDiryZB2uCZnsoV5k%3D";}s:19:"gravityformsmadmimi";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.1";s:14:"version_latest";s:5:"1.1.3";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=owT8Pc4rNgfn6Wt%2FCF0QRL3vZBs%3D";s:10:"url_latest";s:177:"http://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=TY6ec8g21z8MBYQo0voTNcrwR04%3D";}s:21:"gravityformsmailchimp";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"4.2";s:14:"version_latest";s:5:"4.2.5";s:3:"url";s:179:"http://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=I1D9WzkaMMiXO4rUk3izd3dnLGE%3D";s:10:"url_latest";s:185:"http://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=7xoRcTnqsw7At%2BMpLf%2BdhSOM1ko%3D";}s:26:"gravityformspartialentries";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.1";s:14:"version_latest";s:3:"1.1";s:3:"url";s:195:"http://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=feRdr7BlUh9%2BQTd20p9peqN%2Bh%2F8%3D";s:10:"url_latest";s:195:"http://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=feRdr7BlUh9%2BQTd20p9peqN%2Bh%2F8%3D";}s:18:"gravityformspaypal";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.9";s:14:"version_latest";s:5:"2.9.1";s:3:"url";s:181:"http://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_2.9.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=Aa%2B%2FD%2F%2BhpU9Fz9Q6gG5yDgi6t4w%3D";s:10:"url_latest";s:177:"http://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_2.9.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=lRrSLT8SZHEh8OvmjhyjT%2Fi4TnU%3D";}s:33:"gravityformspaypalexpresscheckout";a:3:{s:12:"is_available";b:0;s:7:"version";s:0:"";s:14:"version_latest";N;}s:29:"gravityformspaypalpaymentspro";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.3";s:14:"version_latest";s:3:"2.3";s:3:"url";s:195:"http://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=kk6G86C40Ii4K2uoMQXSp0ts3wQ%3D";s:10:"url_latest";s:195:"http://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=kk6G86C40Ii4K2uoMQXSp0ts3wQ%3D";}s:21:"gravityformspaypalpro";a:5:{s:12:"is_available";b:1;s:7:"version";s:5:"1.7.2";s:14:"version_latest";s:3:"1.8";s:3:"url";s:183:"http://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.7.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=Kj%2F8kgWGyNpEwzkG4EjlJnosvBw%3D";s:10:"url_latest";s:181:"http://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=wgDHkVx40XjCnTOr2C6Mf0IRv%2FU%3D";}s:20:"gravityformspicatcha";a:3:{s:12:"is_available";b:0;s:7:"version";s:3:"2.0";s:14:"version_latest";s:3:"2.0";}s:16:"gravityformspipe";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.0";s:14:"version_latest";s:5:"1.0.1";s:3:"url";s:169:"http://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=AVcO0E39y3BlLY5edv6WaXp9w0Q%3D";s:10:"url_latest";s:173:"http://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.0.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=2Pt8gW07%2FmRu2RX0vAPaAwnY88c%3D";}s:17:"gravityformspolls";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"3.1";s:14:"version_latest";s:5:"3.1.4";s:3:"url";s:171:"http://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=qhMENa8NvfPnXnUBNwfopNd11sc%3D";s:10:"url_latest";s:173:"http://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=6fIr3utDZIAQeq3t7AMxagPBbf4%3D";}s:16:"gravityformsquiz";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"3.1";s:14:"version_latest";s:5:"3.1.7";s:3:"url";s:173:"http://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=Etk%2FAkE3sRf%2FgJlj9h8KPZYKwHU%3D";s:10:"url_latest";s:171:"http://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.1.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=pPuUEDyJMYrWp04SKkx5OVSzroI%3D";}s:19:"gravityformsrestapi";a:5:{s:12:"is_available";b:1;s:7:"version";s:10:"2.0-beta-2";s:14:"version_latest";s:10:"2.0-beta-2";s:3:"url";s:184:"http://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=zCEBhPozqJvl9bBoaFlYxHS%2Bgnc%3D";s:10:"url_latest";s:184:"http://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=zCEBhPozqJvl9bBoaFlYxHS%2Bgnc%3D";}s:21:"gravityformssignature";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"3.4";s:14:"version_latest";s:3:"3.4";s:3:"url";s:181:"http://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=Iotq5wcjUBQ6xQBJtR%2BpcvCvhG8%3D";s:10:"url_latest";s:181:"http://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=Iotq5wcjUBQ6xQBJtR%2BpcvCvhG8%3D";}s:17:"gravityformsslack";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.7";s:14:"version_latest";s:5:"1.7.2";s:3:"url";s:171:"http://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=6fElp87SEKFUfwxucrlmssocCnI%3D";s:10:"url_latest";s:173:"http://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.7.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=8CnpctZUYD66Yg3BEDKN99icsoY%3D";}s:18:"gravityformsstripe";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.4";s:14:"version_latest";s:5:"2.4.1";s:3:"url";s:179:"http://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=sEom076cWG%2FfEGu%2Bevvk%2BAtyyTs%3D";s:10:"url_latest";s:177:"http://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_2.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=13XSBJD9W4h%2F57pOCKJdiQWG6z0%3D";}s:18:"gravityformssurvey";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"3.2";s:14:"version_latest";s:5:"3.2.2";s:3:"url";s:173:"http://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=q8jr4MpfA7rQFrn86SmchutSBqs%3D";s:10:"url_latest";s:175:"http://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=NeMqcOmdOfmjgTGB0BjY4tm57vk%3D";}s:18:"gravityformstrello";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.2";s:14:"version_latest";s:5:"1.2.1";s:3:"url";s:175:"http://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=5QZZS3eXBaUbF2DIx3cUp86%2FZbg%3D";s:10:"url_latest";s:175:"http://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=KzY2tju5RxkiMmm58iVgA3qalsY%3D";}s:18:"gravityformstwilio";a:5:{s:12:"is_available";b:1;s:7:"version";s:5:"2.4.1";s:14:"version_latest";s:5:"2.4.4";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=BTZnEueFLT%2Bf9fd2aNyjcyp6Sq4%3D";s:10:"url_latest";s:175:"http://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.4.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=ktVXCTTrSsBBRoNYrapnnL199ZY%3D";}s:28:"gravityformsuserregistration";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"3.9";s:14:"version_latest";s:5:"3.9.1";s:3:"url";s:193:"http://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_3.9.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=VZlvyeIWYdh7I9fL0XOAGcYyqMw%3D";s:10:"url_latest";s:201:"http://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_3.9.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=prXO%2F2MgXdwbJ%2F4Q%2BH4jWzIlCZQ%3D";}s:20:"gravityformswebhooks";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.1";s:14:"version_latest";s:5:"1.1.4";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=wHlfJg91j7RFEBQu3rcl3mTrvVI%3D";s:10:"url_latest";s:179:"http://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=2cDjzrIolLu9Y9vz9O8yLSE8w0Q%3D";}s:18:"gravityformszapier";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"2.1";s:14:"version_latest";s:5:"2.1.5";s:3:"url";s:177:"http://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=%2BJzTCbxVG9sedW5rrz3UHRbC%2BFI%3D";s:10:"url_latest";s:177:"http://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_2.1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=yMzJ5AIfNy%2FFlFaPWL8aUuiCIkc%3D";}s:19:"gravityformszohocrm";a:5:{s:12:"is_available";b:1;s:7:"version";s:3:"1.4";s:14:"version_latest";s:6:"1.4.10";s:3:"url";s:175:"http://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=aZotqdt6ISfgVjuIbJ9pQuRVDQU%3D";s:10:"url_latest";s:178:"http://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.4.10.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=Q47VUGKQaIeoF8Y0v8zp2RhtvcY%3D";}}s:9:"is_active";s:1:"1";s:14:"version_latest";s:8:"2.2.5.21";s:10:"url_latest";s:167:"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.2.5.21.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1519442638&Signature=vHvQzgwoT8dF0UDt4qZX6BPTabc%3D";}', 'no'),
(555, '_site_transient_timeout_theme_roots', '1519325182', 'no'),
(556, '_site_transient_theme_roots', 'a:1:{s:5:"blink";s:7:"/themes";}', 'no'),
(557, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1519323384;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:29:"gravityforms/gravityforms.php";s:5:"2.2.5";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(558, '_transient_timeout_GFCache_ed3b1ee5d486d1eacf54f7b2647fbe37', '1519323571', 'no'),
(559, '_transient_GFCache_ed3b1ee5d486d1eacf54f7b2647fbe37', '1', 'no'),
(564, '_transient_timeout_GFCache_b0ced7f8d40dd31652f3f3921f63b5e5', '1519323451', 'no'),
(565, '_transient_GFCache_b0ced7f8d40dd31652f3f3921f63b5e5', 'a:0:{}', 'no'),
(566, '_transient_timeout_GFCache_287438aee970e6a8dd25a0769f95f817', '1519323451', 'no'),
(567, '_transient_GFCache_287438aee970e6a8dd25a0769f95f817', 'a:2:{i:0;O:8:"stdClass":2:{s:7:"form_id";s:1:"1";s:10:"view_count";s:3:"174";}i:1;O:8:"stdClass":2:{s:7:"form_id";s:1:"2";s:10:"view_count";s:3:"170";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1517795515'),
(4, 2, '_wp_desired_post_slug', 'sample-page'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1517795387:1'),
(7, 5, '_wp_page_template', 'page-home.php'),
(8, 1, '_wp_trash_meta_status', 'publish'),
(9, 1, '_wp_trash_meta_time', '1517795576'),
(10, 1, '_wp_desired_post_slug', 'hello-world'),
(11, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(12, 8, '_edit_last', '1'),
(13, 8, '_edit_lock', '1517796395:1'),
(14, 8, '_wp_page_template', 'default'),
(15, 10, '_edit_last', '1'),
(16, 10, '_wp_page_template', 'default'),
(17, 10, '_edit_lock', '1517796404:1'),
(18, 12, '_edit_last', '1'),
(19, 12, '_wp_page_template', 'default'),
(20, 12, '_edit_lock', '1517796413:1'),
(21, 14, '_edit_last', '1'),
(22, 14, '_wp_page_template', 'default'),
(23, 14, '_edit_lock', '1517796424:1'),
(24, 16, '_edit_last', '1'),
(25, 16, '_edit_lock', '1517796437:1'),
(26, 16, '_wp_page_template', 'default'),
(27, 18, '_edit_last', '1'),
(28, 18, '_edit_lock', '1517796453:1'),
(29, 18, '_wp_page_template', 'default'),
(30, 20, '_edit_last', '1'),
(31, 20, '_wp_page_template', 'default'),
(32, 20, '_edit_lock', '1517796462:1'),
(33, 22, '_edit_last', '1'),
(34, 22, '_edit_lock', '1517796474:1'),
(35, 22, '_wp_page_template', 'default'),
(36, 24, '_menu_item_type', 'post_type'),
(37, 24, '_menu_item_menu_item_parent', '0'),
(38, 24, '_menu_item_object_id', '5'),
(39, 24, '_menu_item_object', 'page'),
(40, 24, '_menu_item_target', ''),
(41, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 24, '_menu_item_xfn', ''),
(43, 24, '_menu_item_url', ''),
(44, 24, '_menu_item_orphaned', '1517796620'),
(45, 25, '_menu_item_type', 'post_type'),
(46, 25, '_menu_item_menu_item_parent', '0'),
(47, 25, '_menu_item_object_id', '8'),
(48, 25, '_menu_item_object', 'page'),
(49, 25, '_menu_item_target', ''),
(50, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 25, '_menu_item_xfn', ''),
(52, 25, '_menu_item_url', ''),
(54, 26, '_menu_item_type', 'post_type'),
(55, 26, '_menu_item_menu_item_parent', '0'),
(56, 26, '_menu_item_object_id', '16'),
(57, 26, '_menu_item_object', 'page'),
(58, 26, '_menu_item_target', ''),
(59, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 26, '_menu_item_xfn', ''),
(61, 26, '_menu_item_url', ''),
(63, 27, '_menu_item_type', 'post_type'),
(64, 27, '_menu_item_menu_item_parent', '0'),
(65, 27, '_menu_item_object_id', '22'),
(66, 27, '_menu_item_object', 'page'),
(67, 27, '_menu_item_target', ''),
(68, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 27, '_menu_item_xfn', ''),
(70, 27, '_menu_item_url', ''),
(72, 28, '_menu_item_type', 'post_type'),
(73, 28, '_menu_item_menu_item_parent', '0'),
(74, 28, '_menu_item_object_id', '18'),
(75, 28, '_menu_item_object', 'page'),
(76, 28, '_menu_item_target', ''),
(77, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 28, '_menu_item_xfn', ''),
(79, 28, '_menu_item_url', ''),
(81, 29, '_menu_item_type', 'post_type'),
(82, 29, '_menu_item_menu_item_parent', '0'),
(83, 29, '_menu_item_object_id', '14'),
(84, 29, '_menu_item_object', 'page'),
(85, 29, '_menu_item_target', ''),
(86, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 29, '_menu_item_xfn', ''),
(88, 29, '_menu_item_url', ''),
(90, 30, '_menu_item_type', 'post_type'),
(91, 30, '_menu_item_menu_item_parent', '0'),
(92, 30, '_menu_item_object_id', '10'),
(93, 30, '_menu_item_object', 'page'),
(94, 30, '_menu_item_target', ''),
(95, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 30, '_menu_item_xfn', ''),
(97, 30, '_menu_item_url', ''),
(99, 31, '_menu_item_type', 'post_type'),
(100, 31, '_menu_item_menu_item_parent', '0'),
(101, 31, '_menu_item_object_id', '12'),
(102, 31, '_menu_item_object', 'page'),
(103, 31, '_menu_item_target', ''),
(104, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 31, '_menu_item_xfn', ''),
(106, 31, '_menu_item_url', ''),
(108, 32, '_menu_item_type', 'post_type'),
(109, 32, '_menu_item_menu_item_parent', '0'),
(110, 32, '_menu_item_object_id', '20'),
(111, 32, '_menu_item_object', 'page'),
(112, 32, '_menu_item_target', ''),
(113, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 32, '_menu_item_xfn', ''),
(115, 32, '_menu_item_url', ''),
(117, 33, '_menu_item_type', 'post_type'),
(118, 33, '_menu_item_menu_item_parent', '0'),
(119, 33, '_menu_item_object_id', '5'),
(120, 33, '_menu_item_object', 'page'),
(121, 33, '_menu_item_target', ''),
(122, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 33, '_menu_item_xfn', ''),
(124, 33, '_menu_item_url', ''),
(125, 33, '_menu_item_orphaned', '1517796620'),
(126, 34, '_menu_item_type', 'post_type'),
(127, 34, '_menu_item_menu_item_parent', '0'),
(128, 34, '_menu_item_object_id', '5'),
(129, 34, '_menu_item_object', 'page'),
(130, 34, '_menu_item_target', ''),
(131, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(132, 34, '_menu_item_xfn', ''),
(133, 34, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-05 01:47:09', '2018-02-05 01:47:09', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-02-05 01:52:56', '2018-02-05 01:52:56', '', 0, 'http://blink-revamp.com/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-05 01:47:09', '2018-02-05 01:47:09', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://blink-revamp.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-02-05 01:51:55', '2018-02-05 01:51:55', '', 0, 'http://blink-revamp.com/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-02-05 01:51:55', '2018-02-05 01:51:55', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://blink-revamp.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-05 01:51:55', '2018-02-05 01:51:55', '', 2, 'http://blink-revamp.com/2018/02/05/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-02-05 01:52:08', '2018-02-05 01:52:08', '', 'Welcome to Blink Lash Boutique', '', 'publish', 'closed', 'closed', '', 'welcome-to-blink-lash-boutique', '', '', '2018-02-05 01:52:08', '2018-02-05 01:52:08', '', 0, 'http://blink-revamp.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-02-05 01:52:08', '2018-02-05 01:52:08', '', 'Welcome to Blink Lash Boutique', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-02-05 01:52:08', '2018-02-05 01:52:08', '', 5, 'http://blink-revamp.com/2018/02/05/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-02-05 01:52:56', '2018-02-05 01:52:56', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-05 01:52:56', '2018-02-05 01:52:56', '', 1, 'http://garretts-macbook-pro.local:5757/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-02-05 02:08:48', '2018-02-05 02:08:48', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-02-05 02:08:48', '2018-02-05 02:08:48', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-02-05 02:08:48', '2018-02-05 02:08:48', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-05 02:08:48', '2018-02-05 02:08:48', '', 8, 'http://garretts-macbook-pro.local:5757/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-02-05 02:09:04', '2018-02-05 02:09:04', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2018-02-05 02:09:04', '2018-02-05 02:09:04', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-02-05 02:09:04', '2018-02-05 02:09:04', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-02-05 02:09:04', '2018-02-05 02:09:04', '', 10, 'http://garretts-macbook-pro.local:5757/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-02-05 02:09:13', '2018-02-05 02:09:13', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-02-05 02:09:13', '2018-02-05 02:09:13', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-02-05 02:09:13', '2018-02-05 02:09:13', '', 'Services', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-02-05 02:09:13', '2018-02-05 02:09:13', '', 12, 'http://garretts-macbook-pro.local:5757/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-02-05 02:09:21', '2018-02-05 02:09:21', '', 'Media', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2018-02-05 02:09:21', '2018-02-05 02:09:21', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-02-05 02:09:21', '2018-02-05 02:09:21', '', 'Media', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-02-05 02:09:21', '2018-02-05 02:09:21', '', 14, 'http://garretts-macbook-pro.local:5757/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-02-05 02:09:37', '2018-02-05 02:09:37', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-02-05 02:09:37', '2018-02-05 02:09:37', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-02-05 02:09:37', '2018-02-05 02:09:37', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-05 02:09:37', '2018-02-05 02:09:37', '', 16, 'http://garretts-macbook-pro.local:5757/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-02-05 02:09:50', '2018-02-05 02:09:50', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-02-05 02:09:50', '2018-02-05 02:09:50', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-02-05 02:09:50', '2018-02-05 02:09:50', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-02-05 02:09:50', '2018-02-05 02:09:50', '', 18, 'http://garretts-macbook-pro.local:5757/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-02-05 02:10:01', '2018-02-05 02:10:01', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-02-05 02:10:01', '2018-02-05 02:10:01', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-02-05 02:10:01', '2018-02-05 02:10:01', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-02-05 02:10:01', '2018-02-05 02:10:01', '', 20, 'http://garretts-macbook-pro.local:5757/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-02-05 02:10:15', '2018-02-05 02:10:15', '', 'Book', '', 'publish', 'closed', 'closed', '', 'book', '', '', '2018-02-05 02:10:15', '2018-02-05 02:10:15', '', 0, 'http://garretts-macbook-pro.local:5757/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-02-05 02:10:15', '2018-02-05 02:10:15', '', 'Book', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-05 02:10:15', '2018-02-05 02:10:15', '', 22, 'http://garretts-macbook-pro.local:5757/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-02-05 02:10:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-05 02:10:20', '0000-00-00 00:00:00', '', 0, 'http://garretts-macbook-pro.local:5757/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=26', 6, 'nav_menu_item', '', 0),
(27, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=27', 9, 'nav_menu_item', '', 0),
(28, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=28', 7, 'nav_menu_item', '', 0),
(29, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2018-02-05 02:10:59', '2018-02-05 02:10:59', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=32', 8, 'nav_menu_item', '', 0),
(33, 1, '2018-02-05 02:10:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-05 02:10:20', '0000-00-00 00:00:00', '', 0, 'http://garretts-macbook-pro.local:5757/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-02-05 02:21:36', '2018-02-05 02:21:36', '', 0, 'http://garretts-macbook-pro.local:5757/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-02-18 22:19:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-18 22:19:55', '0000-00-00 00:00:00', '', 0, 'http://garretts-macbook-pro.local:5757/?p=35', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_rg_form`
--

INSERT INTO `wp_rg_form` (`id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Email Sign Up', '2018-02-18 22:22:10', 1, 0),
(2, 'General Comments', '2018-02-20 03:51:51', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_rg_form_meta`
--

INSERT INTO `wp_rg_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"Email Sign Up","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"email","id":1,"label":"Email","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"formId":1,"description":"","allowsPrepopulate":false,"inputMask":false,"inputMaskValue":"","inputType":"","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Email*","cssClass":"","inputName":"","visibility":"visible","noDuplicates":true,"defaultValue":"","choices":"","conditionalLogic":"","productField":"","emailConfirmEnabled":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"useRichTextEditor":false,"pageNumber":1,"displayOnly":""}],"version":"2.2.5","id":1,"subLabelPlacement":"below","cssClass":"","enableHoneypot":true,"enableAnimation":false,"save":{"enabled":false,"button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":false,"limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":false,"scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":false,"requireLoginMessage":"","useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', NULL, '{"5a89fc928dc24":{"id":"5a89fc928dc24","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"5a89fc928d239":{"id":"5a89fc928d239","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}'),
(2, '{"title":"General Comments","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Send Inquiry","imageUrl":""},"fields":[{"type":"text","id":1,"label":"First Name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"formId":2,"description":"","allowsPrepopulate":false,"inputMask":false,"inputMaskValue":"","inputType":"","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"First Name","cssClass":"","inputName":"","visibility":"visible","noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","productField":"","enablePasswordInput":"","maxLength":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"useRichTextEditor":false,"pageNumber":1,"displayOnly":""},{"type":"text","id":2,"label":"Last Name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"formId":2,"description":"","allowsPrepopulate":false,"inputMask":false,"inputMaskValue":"","inputType":"","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Last Name","cssClass":"","inputName":"","visibility":"visible","noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","productField":"","enablePasswordInput":"","maxLength":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"useRichTextEditor":false,"pageNumber":1,"displayOnly":""},{"type":"email","id":3,"label":"Email","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"formId":2,"description":"","allowsPrepopulate":false,"inputMask":false,"inputMaskValue":"","inputType":"","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Email","cssClass":"","inputName":"","visibility":"visible","noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","productField":"","emailConfirmEnabled":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"useRichTextEditor":false,"pageNumber":1,"displayOnly":""},{"type":"phone","id":4,"label":"Phone","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"phoneFormat":"standard","formId":2,"description":"","allowsPrepopulate":false,"inputMask":false,"inputMaskValue":"","inputType":"","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Phone","cssClass":"","inputName":"","visibility":"visible","noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","form_id":"","productField":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"useRichTextEditor":false,"pageNumber":1,"displayOnly":""},{"type":"textarea","id":5,"label":"Question\\/Comment","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"formId":2,"description":"","allowsPrepopulate":false,"inputMask":false,"inputMaskValue":"","inputType":"","labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"Question\\/Comment","cssClass":"","inputName":"","visibility":"visible","noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","productField":"","form_id":"","useRichTextEditor":false,"multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"pageNumber":1,"displayOnly":""}],"version":"2.2.5","id":2,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"subLabelPlacement":"below","cssClass":"","enableHoneypot":true,"enableAnimation":false,"save":{"enabled":false,"button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":false,"limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":false,"scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":false,"requireLoginMessage":"","notifications":{"5a8b9b5797000":{"id":"5a8b9b5797000","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}},"confirmations":{"5a8b9b57975e7":{"id":"5a8b9b57975e7","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}}', '', '{"5a8b9b57975e7":{"id":"5a8b9b57975e7","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"5a8b9b5797000":{"id":"5a8b9b5797000","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_rg_form_view`
--

INSERT INTO `wp_rg_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2018-02-18 23:58:05', '', 4),
(2, 1, '2018-02-20 04:53:22', '', 114),
(3, 2, '2018-02-20 04:53:22', '', 114),
(4, 1, '2018-02-21 05:02:38', '', 44),
(5, 2, '2018-02-21 05:02:38', '', 44),
(6, 1, '2018-02-22 05:04:17', '', 12),
(7, 2, '2018-02-22 05:04:17', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_incomplete_submissions`
--

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

CREATE TABLE `wp_rg_lead` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(34, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'destroyer'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '35'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'session_tokens', 'a:1:{s:64:"b7088620d0b60ec5801859ed5902be94205925d1ef557f299ff86b6dfc258323";a:4:{s:10:"expiration";i:1519496188;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1519323388;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'destroyer', '$P$BUSZy0X4D/GKPE8oySZQ560kOl5PhW1', 'destroyer', 'garrettcullen@yahoo.com', '', '2018-02-05 01:47:09', '', 0, 'destroyer');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rg_form_meta`
--
ALTER TABLE `wp_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_rg_incomplete_submissions`
--
ALTER TABLE `wp_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`),
  ADD KEY `lead_field_value` (`value`(191));

--
-- Indexes for table `wp_rg_lead_detail_long`
--
ALTER TABLE `wp_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
