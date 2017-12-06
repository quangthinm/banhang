-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2017 lúc 05:34 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hanglinhkien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-03 07:26:12', '2017-12-03 07:26:12', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/hanglinhkien', 'yes'),
(2, 'home', 'http://localhost/hanglinhkien', 'yes'),
(3, 'blogname', 'Hàng linh kiện', 'yes'),
(4, 'blogdescription', 'Hàng linh kiện điện tử giá rẻ', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'quangthinm@gmail.com', 'yes'),
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
(22, 'posts_per_page', '12', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%.html', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:33:\"hide-admin-bar/hide_admin_bar.php\";i:2;s:69:\"shortcode-pagination-for-woocommerce/jck-woo-shortcode-pagination.php\";i:3;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:41:\"wordpress-importer/wordpress-importer.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'supersale', 'yes'),
(41, 'stylesheet', 'supersale', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '0', 'yes'),
(59, 'thumbnail_size_h', '0', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '0', 'yes'),
(62, 'medium_size_h', '0', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '0', 'yes'),
(65, 'large_size_h', '0', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:132:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'vi', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:10:{i:1512469329;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1512487078;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512501973;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512502850;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512518400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512545198;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512545554;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512546050;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1514851200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512287368;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(124, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1512890790', 'no'),
(125, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(140, '_transient_timeout_plugin_slugs', '1512542915', 'no'),
(141, '_transient_plugin_slugs', 'a:7:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:33:\"hide-admin-bar/hide_admin_bar.php\";i:2;s:69:\"shortcode-pagination-for-woocommerce/jck-woo-shortcode-pagination.php\";i:3;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:41:\"wordpress-importer/wordpress-importer.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1512286592;s:7:\"version\";s:5:\"4.9.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(163, 'tadv_settings', 'a:6:{s:9:\"toolbar_1\";s:180:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo,underline,alignjustify,strikethrough,cut,styleselect,copy,paste,emoticons\";s:9:\"toolbar_2\";s:185:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help,subscript,superscript,hr,image,media,searchreplace,visualchars,fullscreen,wp_page\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"options\";s:15:\"menubar,advlist\";s:7:\"plugins\";s:49:\"visualchars,emoticons,table,searchreplace,advlist\";}', 'yes'),
(164, 'tadv_admin_settings', 'a:1:{s:16:\"disabled_editors\";s:0:\"\";}', 'yes'),
(165, 'tadv_version', '4000', 'yes'),
(168, 'woocommerce_store_address', 'Nguyễn Văn Đậu, phường 5, Bình Thạnh', 'yes'),
(169, 'woocommerce_store_address_2', '', 'yes'),
(170, 'woocommerce_store_city', 'Hồ Chí Minh', 'yes'),
(171, 'woocommerce_default_country', 'VN', 'yes'),
(172, 'woocommerce_store_postcode', '700000', 'yes'),
(173, 'woocommerce_allowed_countries', 'all', 'yes'),
(174, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(175, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(176, 'woocommerce_ship_to_countries', '', 'yes'),
(177, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(178, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(179, 'woocommerce_calc_taxes', 'no', 'yes'),
(180, 'woocommerce_demo_store', 'no', 'yes'),
(181, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(182, 'woocommerce_currency', 'VND', 'yes'),
(183, 'woocommerce_currency_pos', 'right_space', 'yes'),
(184, 'woocommerce_price_thousand_sep', ',', 'yes'),
(185, 'woocommerce_price_decimal_sep', '.', 'yes'),
(186, 'woocommerce_price_num_decimals', '0', 'yes'),
(187, 'woocommerce_weight_unit', 'kg', 'yes'),
(188, 'woocommerce_dimension_unit', 'cm', 'yes'),
(189, 'woocommerce_enable_reviews', 'yes', 'yes'),
(190, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(191, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(192, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(193, 'woocommerce_review_rating_required', 'yes', 'no'),
(194, 'woocommerce_shop_page_id', '16', 'yes'),
(195, 'woocommerce_shop_page_display', '', 'yes'),
(196, 'woocommerce_category_archive_display', '', 'yes'),
(197, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(198, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(199, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(200, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}', 'yes'),
(201, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}', 'yes'),
(202, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}', 'yes'),
(203, 'woocommerce_manage_stock', 'yes', 'yes'),
(204, 'woocommerce_hold_stock_minutes', '60', 'no'),
(205, 'woocommerce_notify_low_stock', 'yes', 'no'),
(206, 'woocommerce_notify_no_stock', 'yes', 'no'),
(207, 'woocommerce_stock_email_recipient', 'quangthinm@gmail.com', 'no'),
(208, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(209, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(210, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(211, 'woocommerce_stock_format', '', 'yes'),
(212, 'woocommerce_file_download_method', 'force', 'no'),
(213, 'woocommerce_downloads_require_login', 'no', 'no'),
(214, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(215, 'woocommerce_prices_include_tax', 'no', 'yes'),
(216, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(217, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(218, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(219, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(220, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(221, 'woocommerce_tax_display_cart', 'excl', 'no'),
(222, 'woocommerce_price_display_suffix', '', 'yes'),
(223, 'woocommerce_tax_total_display', 'itemized', 'no'),
(224, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(225, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(226, 'woocommerce_ship_to_destination', 'billing', 'no'),
(227, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(228, 'woocommerce_enable_coupons', 'yes', 'yes'),
(229, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(230, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(231, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(232, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(233, 'woocommerce_cart_page_id', '17', 'yes'),
(234, 'woocommerce_checkout_page_id', '18', 'yes'),
(235, 'woocommerce_terms_page_id', '', 'no'),
(236, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(237, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(238, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(239, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(240, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(241, 'woocommerce_myaccount_page_id', '19', 'yes'),
(242, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(243, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(244, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(245, 'woocommerce_registration_generate_username', 'yes', 'no'),
(246, 'woocommerce_registration_generate_password', 'no', 'no'),
(247, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(248, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(249, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(250, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(251, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(252, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(253, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(254, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(255, 'woocommerce_email_from_name', 'hang linh kiện', 'no'),
(256, 'woocommerce_email_from_address', 'quangthinm@gmail.com', 'no'),
(257, 'woocommerce_email_header_image', '', 'no'),
(258, 'woocommerce_email_footer_text', 'hang linh kiện', 'no'),
(259, 'woocommerce_email_base_color', '#96588a', 'no'),
(260, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(261, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(262, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(263, 'woocommerce_api_enabled', 'yes', 'yes'),
(267, 'woocommerce_version', '3.2.5', 'yes'),
(268, 'woocommerce_db_version', '3.2.5', 'yes'),
(269, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(270, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(271, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(285, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(286, '_transient_timeout_wc_report_sales_by_date', '1512468328', 'no'),
(287, '_transient_wc_report_sales_by_date', 'a:32:{s:32:\"2d6808c24f20ef88a7bc67de95352874\";a:0:{}s:32:\"0c67df100f878a28be1aeabeafde27c6\";a:0:{}s:32:\"e43f713443a88a965d1421ba830653ab\";a:0:{}s:32:\"8429543310eca8dab0cec1f8cea39b54\";N;s:32:\"2725741fcd5bc6e438d6cd410add72fa\";a:0:{}s:32:\"9e958307d2da5a38c6057aefdb489907\";a:0:{}s:32:\"b704dfb714345b6fdb533f9eacab25bb\";a:0:{}s:32:\"a5615310aa406e37f7ed5b80696ee4e9\";a:0:{}s:32:\"9ac804430ea3fd1a5f4a7bbb1643bf7c\";a:0:{}s:32:\"271625d173572f75a49c0893c57b3a21\";a:0:{}s:32:\"8f633730167e0944491de1569bec9883\";a:0:{}s:32:\"14c83685ff03920527985bc6d0b0f769\";N;s:32:\"5f7268eb5ee153540b2366d403d53667\";a:0:{}s:32:\"8ae9ab4db5c5e0ea802255777320c7f1\";a:0:{}s:32:\"cc1b2d61d6985c53cd0a56b8fa5e8275\";a:0:{}s:32:\"997ca0cb4ebb573da39122083a2c292c\";a:0:{}s:32:\"04493966038f16a0d65bc68d7d83a385\";a:0:{}s:32:\"2b2986f4b116fbbdbe639bb1c9956c02\";a:0:{}s:32:\"56e6e3fae789b0399411af1624238277\";a:0:{}s:32:\"06f3fe9f48902ad9728363d6a622e168\";N;s:32:\"6e540d9a6a4aa04082f91dc868ee0ffe\";a:0:{}s:32:\"bc0258c14311c1f5a0a302735a2370ef\";a:0:{}s:32:\"8f67e92b148056885f82a5d9ffce692e\";a:0:{}s:32:\"a39fdeabdc060f4d7aba3e051097096d\";a:0:{}s:32:\"a086790f53227ad619c87733bb144207\";a:0:{}s:32:\"1d29b28518102ce767aa9bdc8ae219a5\";a:0:{}s:32:\"6b00287bf435fe3a46fea88b663c6e81\";a:0:{}s:32:\"10b1496ee28c2df0e87c7cc59439abc9\";N;s:32:\"12f5791781ee72babc74412487e0f2bd\";a:0:{}s:32:\"d64edb18cb7e56deb6ce25f4dbe6bde9\";a:0:{}s:32:\"2860b17eb6e9078ff8d87fad3099a962\";a:0:{}s:32:\"a7a99a8ca3ece2b8bc9b800db3a2ecaf\";a:0:{}}', 'no'),
(294, '_transient_timeout_external_ip_address_::1', '1512891662', 'no'),
(295, '_transient_external_ip_address_::1', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(305, 'current_theme', 'Kim Ji-won', 'yes'),
(306, 'theme_mods_supersale', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"topmenu\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512352131;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(307, 'theme_switched', '', 'yes'),
(317, 'woocommerce_permalinks', 'a:5:{s:13:\"category_base\";s:0:\"\";s:8:\"tag_base\";s:0:\"\";s:14:\"attribute_base\";s:0:\"\";s:12:\"product_base\";s:9:\"/cua-hang\";s:22:\"use_verbose_page_rules\";b:1;}', 'yes'),
(322, 'wpseo', 'a:25:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"5.8\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:20:\"enable_setting_pages\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";b:0;}', 'yes'),
(323, 'wpseo_permalinks', 'a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:1;s:13:\"trailingslash\";b:0;}', 'yes'),
(324, 'wpseo_titles', 'a:79:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:1;s:9:\"separator\";s:7:\"sc-dash\";s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"metakey-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:19:\"hideeditbox-product\";b:0;s:23:\"title-ptarchive-product\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"metakey-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:21:\"title-tax-product_cat\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:23:\"metakey-tax-product_cat\";s:0:\"\";s:27:\"hideeditbox-tax-product_cat\";b:0;s:23:\"noindex-tax-product_cat\";b:0;s:21:\"title-tax-product_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:23:\"metakey-tax-product_tag\";s:0:\"\";s:27:\"hideeditbox-tax-product_tag\";b:0;s:23:\"noindex-tax-product_tag\";b:0;s:32:\"title-tax-product_shipping_class\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:34:\"metakey-tax-product_shipping_class\";s:0:\"\";s:38:\"hideeditbox-tax-product_shipping_class\";b:0;s:34:\"noindex-tax-product_shipping_class\";b:0;}', 'yes'),
(325, 'wpseo_social', 'a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"7b9f5a7e41d8414d809fea9e2badbe84\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(326, 'wpseo_rss', 'a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";}', 'yes'),
(327, 'wpseo_internallinks', 'a:14:{s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:23:\"post_types-post-maintax\";i:0;s:26:\"post_types-product-maintax\";i:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}', 'yes'),
(328, 'wpseo_xml', 'a:24:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:31:\"user_role-editor-not_in_sitemap\";b:0;s:31:\"user_role-author-not_in_sitemap\";b:0;s:36:\"user_role-contributor-not_in_sitemap\";b:0;s:35:\"user_role-subscriber-not_in_sitemap\";b:0;s:38:\"user_role-wpseo_manager-not_in_sitemap\";b:0;s:37:\"user_role-wpseo_editor-not_in_sitemap\";b:0;s:33:\"user_role-customer-not_in_sitemap\";b:0;s:37:\"user_role-shop_manager-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;s:33:\"post_types-product-not_in_sitemap\";b:0;s:37:\"taxonomies-product_cat-not_in_sitemap\";b:0;s:37:\"taxonomies-product_tag-not_in_sitemap\";b:0;s:48:\"taxonomies-product_shipping_class-not_in_sitemap\";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(331, 'rewrite_rules', 'a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"cua-hang/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"cua-hang/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"cua-hang/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"cua-hang/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"cua-hang/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"cua-hang/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"cua-hang/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"cua-hang/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"cua-hang/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"cua-hang/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"cua-hang/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"cua-hang/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"cua-hang/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"cua-hang/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"cua-hang/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"cua-hang/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"cua-hang/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"cua-hang/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"cua-hang/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"cua-hang/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"cua-hang/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"cua-hang/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:32:\"[^/]+.html/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"[^/]+.html/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"[^/]+.html/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"[^/]+.html/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"[^/]+.html/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"[^/]+.html/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"([^/]+).html/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:25:\"([^/]+).html/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:45:\"([^/]+).html/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:40:\"([^/]+).html/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:33:\"([^/]+).html/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:40:\"([^/]+).html/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:30:\"([^/]+).html/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:36:\"[^/]+.html/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"[^/]+.html/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"([^/]+).html(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:21:\"[^/]+.html/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"[^/]+.html/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"[^/]+.html/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"[^/]+.html/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"[^/]+.html/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"[^/]+.html/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(345, 'wpseo_sitemap_1_cache_validator', '3ACwl', 'no'),
(346, 'wpseo_sitemap_product_cat_cache_validator', 'hb7T', 'no'),
(347, 'wpseo_taxonomy_meta', 'a:1:{s:11:\"product_cat\";a:1:{i:15;a:2:{s:13:\"wpseo_linkdex\";s:2:\"-9\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}', 'yes'),
(349, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(353, 'woocommerce_product_type', 'both', 'yes'),
(354, 'woocommerce_allow_tracking', 'yes', 'yes'),
(355, 'woocommerce_tracker_last_send', '1512314089', 'yes'),
(356, 'wpseo_sitemap_page_cache_validator', '3ACyW', 'no'),
(357, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(358, 'woocommerce_paypal_settings', 'a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";b:0;}', 'yes'),
(359, '_transient_shipping-transient-version', '1512314164', 'yes'),
(360, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:12:\"Đồng giá\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:5:\"30000\";}', 'yes'),
(361, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:12:\"Đồng giá\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:5:\"50000\";}', 'yes'),
(362, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(368, 'woocommerce_admin_notice_storefront_install_error', 'storefront không thể cài đặt (Không thể sao chép tập tin.). <a href=\"http://localhost/hanglinhkien/wp-admin/update.php?action=install-theme&#038;theme=storefront&#038;_wpnonce=f8f5935d53\">Hãy cài đặt nó theo cách thủ công bằng cách nhấp vào đây.</a>', 'yes'),
(369, '_transient_product_query-transient-version', '1512382291', 'yes'),
(370, 'wpseo_sitemap_product_cache_validator', '3EF6O', 'no'),
(374, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512352298;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(375, 'storefront_nux_fresh_site', '0', 'yes'),
(377, 'storefront_nux_dismissed', '1', 'yes'),
(385, '_transient_product-transient-version', '1512382292', 'yes'),
(387, 'wpseo_sitemap_12_cache_validator', '52c9E', 'no'),
(400, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.9.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1512458796;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(402, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512458804;s:7:\"checked\";a:2:{s:10:\"storefront\";s:5:\"2.2.5\";s:9:\"supersale\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(403, '_site_transient_timeout_popular_importers_773aa04dc092364377f76f8b956057d4', '1512488103', 'no'),
(404, '_site_transient_popular_importers_773aa04dc092364377f76f8b956057d4', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(411, 'product_cat_children', 'a:2:{i:20;a:2:{i:0;i:21;i:1;i:22;}i:24;a:2:{i:0;i:25;i:1;i:26;}}', 'yes'),
(413, 'wpseo_sitemap_76_cache_validator', '54QUW', 'no'),
(416, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(427, 'wpseo_sitemap_pa_color_cache_validator', '54WQz', 'no'),
(428, 'wpseo_sitemap_72_cache_validator', '54WQP', 'no'),
(442, 'wpseo_sitemap_71_cache_validator', '554Bb', 'no'),
(443, '_transient_timeout_wc_product_children_72', '1514907547', 'no'),
(444, '_transient_wc_product_children_72', 'a:2:{s:3:\"all\";a:2:{i:0;i:121;i:1;i:122;}s:7:\"visible\";a:2:{i:0;i:121;i:1;i:122;}}', 'no'),
(445, '_transient_timeout_wc_var_prices_72', '1515037157', 'no'),
(446, '_transient_wc_var_prices_72', '{\"version\":\"1512382292\",\"c50a0d02ccc0255a635e82a02b635b45\":{\"price\":{\"121\":\"30\",\"122\":\"35\"},\"regular_price\":{\"121\":\"35\",\"122\":\"35\"},\"sale_price\":{\"121\":\"30\",\"122\":\"35\"}},\"a14b4ebc99c4a82249acddccc660166d\":{\"price\":{\"121\":\"30\",\"122\":\"35\"},\"regular_price\":{\"121\":\"35\",\"122\":\"35\"},\"sale_price\":{\"121\":\"30\",\"122\":\"35\"}}}', 'no'),
(447, '_transient_timeout_wc_product_children_71', '1514907547', 'no'),
(448, '_transient_wc_product_children_71', 'a:2:{s:3:\"all\";a:2:{i:0;i:134;i:1;i:135;}s:7:\"visible\";a:2:{i:0;i:134;i:1;i:135;}}', 'no'),
(449, '_transient_timeout_wc_var_prices_71', '1515037158', 'no'),
(450, '_transient_wc_var_prices_71', '{\"version\":\"1512382292\",\"c50a0d02ccc0255a635e82a02b635b45\":{\"price\":{\"134\":\"20\",\"135\":\"20\"},\"regular_price\":{\"134\":\"20\",\"135\":\"20\"},\"sale_price\":{\"134\":\"20\",\"135\":\"20\"}},\"a14b4ebc99c4a82249acddccc660166d\":{\"price\":{\"134\":\"20\",\"135\":\"20\"},\"regular_price\":{\"134\":\"20\",\"135\":\"20\"},\"sale_price\":{\"134\":\"20\",\"135\":\"20\"}}}', 'no'),
(452, '_transient_timeout_wc_shipping_method_count_1_1512314164', '1514907622', 'no'),
(453, '_transient_wc_shipping_method_count_1_1512314164', '2', 'no'),
(491, 'woocommerce_tracker_ua', 'a:1:{i:0;s:113:\"mozilla/5.0 (windows nt 6.3; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/62.0.3202.94 safari/537.36\";}', 'yes'),
(492, '_site_transient_timeout_browser_ad3b5a632b9eec68c6eb6b15c90020a2', '1512956922', 'no'),
(493, '_site_transient_browser_ad3b5a632b9eec68c6eb6b15c90020a2', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(523, '_transient_timeout_wc_term_counts', '1515037156', 'no'),
(524, '_transient_wc_term_counts', 'a:6:{i:20;s:1:\"7\";i:21;s:1:\"3\";i:23;s:1:\"5\";i:24;s:2:\"12\";i:26;s:1:\"6\";i:25;s:1:\"6\";}', 'no'),
(526, 'wpseo_sitemap_post_cache_validator', 'VFjZ', 'no'),
(527, 'wpseo_sitemap_category_cache_validator', '219DB', 'no'),
(532, 'wpseo_sitemap_144_cache_validator', 'PkMN', 'no'),
(535, 'new_admin_email', 'quangthinm@gmail.com', 'yes'),
(543, '_transient_timeout__woocommerce_helper_updates', '1512483461', 'no'),
(544, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1512440261;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(546, '_transient_timeout_yoast_i18n_wordpress-seo_vi', '1512526874', 'no'),
(547, '_transient_yoast_i18n_wordpress-seo_vi', 'O:8:\"stdClass\":12:{s:2:\"id\";s:6:\"396250\";s:4:\"name\";s:10:\"Vietnamese\";s:4:\"slug\";s:7:\"default\";s:10:\"project_id\";s:4:\"3158\";s:6:\"locale\";s:2:\"vi\";s:13:\"current_count\";i:338;s:18:\"untranslated_count\";i:807;s:13:\"waiting_count\";i:181;s:11:\"fuzzy_count\";i:3;s:18:\"percent_translated\";i:29;s:9:\"wp_locale\";s:2:\"vi\";s:13:\"last_modified\";s:19:\"2017-10-06 09:23:58\";}', 'no'),
(559, '_transient_timeout_wc_related_105', '1512531558', 'no'),
(560, '_transient_wc_related_105', 'a:4:{i:0;s:2:\"93\";i:1;s:2:\"96\";i:2;s:2:\"99\";i:3;s:3:\"102\";}', 'no'),
(562, 'category_children', 'a:0:{}', 'yes'),
(564, 'wpseo_sitemap_55_cache_validator', '21nue', 'no'),
(565, 'wpseo_sitemap_56_cache_validator', '21nzP', 'no'),
(577, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1512467251', 'no'),
(578, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4406;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2518;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2454;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2380;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1846;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1616;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1609;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1439;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1367;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1366;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1351;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1281;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1278;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1161;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1071;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1055;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1004;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:967;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:841;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:836;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:817;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:783;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:775;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:681;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:675;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:670;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:670;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:662;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:650;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:641;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:638;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:618;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:615;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:600;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:592;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:590;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:588;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:583;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:572;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:570;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:550;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:541;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:529;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:526;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:513;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:504;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:504;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:495;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:485;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:481;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:480;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:475;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:459;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:456;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:456;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:452;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:449;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:446;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:429;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:416;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:416;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:410;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:410;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:408;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:401;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:397;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:385;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:378;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:358;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:350;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:350;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:345;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:337;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:337;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:336;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:332;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:331;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:330;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:327;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:325;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:324;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:321;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:315;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:306;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:303;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:299;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:298;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:297;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:290;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:288;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:287;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:286;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:281;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:281;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:278;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:277;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:277;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(584, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512458801;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"hide-admin-bar/hide_admin_bar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/hide-admin-bar\";s:4:\"slug\";s:14:\"hide-admin-bar\";s:6:\"plugin\";s:33:\"hide-admin-bar/hide_admin_bar.php\";s:11:\"new_version\";s:7:\"0.3.9.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/hide-admin-bar/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/hide-admin-bar.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/hide-admin-bar/assets/banner-772x250.png?rev=562610\";s:7:\"default\";s:68:\"https://ps.w.org/hide-admin-bar/assets/banner-772x250.png?rev=562610\";}s:11:\"banners_rtl\";a:0:{}}s:69:\"shortcode-pagination-for-woocommerce/jck-woo-shortcode-pagination.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:50:\"w.org/plugins/shortcode-pagination-for-woocommerce\";s:4:\"slug\";s:36:\"shortcode-pagination-for-woocommerce\";s:6:\"plugin\";s:69:\"shortcode-pagination-for-woocommerce/jck-woo-shortcode-pagination.php\";s:11:\"new_version\";s:6:\"1.0.10\";s:3:\"url\";s:67:\"https://wordpress.org/plugins/shortcode-pagination-for-woocommerce/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/shortcode-pagination-for-woocommerce.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:89:\"https://ps.w.org/shortcode-pagination-for-woocommerce/assets/icon-128x128.png?rev=1671851\";s:2:\"2x\";s:89:\"https://ps.w.org/shortcode-pagination-for-woocommerce/assets/icon-256x256.png?rev=1671851\";s:7:\"default\";s:89:\"https://ps.w.org/shortcode-pagination-for-woocommerce/assets/icon-256x256.png?rev=1671851\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:92:\"https://ps.w.org/shortcode-pagination-for-woocommerce/assets/banner-1544x500.png?rev=1671851\";s:2:\"1x\";s:91:\"https://ps.w.org/shortcode-pagination-for-woocommerce/assets/banner-772x250.png?rev=1671851\";s:7:\"default\";s:92:\"https://ps.w.org/shortcode-pagination-for-woocommerce/assets/banner-1544x500.png?rev=1671851\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.6.7\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:7:\"default\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";s:7:\"default\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";s:7:\"default\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:3:\"5.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wordpress-seo.5.8.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1550389\";s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1550389\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032\";s:7:\"default\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112\";s:7:\"default\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";}s:11:\"banners_rtl\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112\";s:7:\"default\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";}}}}', 'no'),
(588, '_site_transient_timeout_theme_roots', '1512460598', 'no'),
(589, '_site_transient_theme_roots', 'a:2:{s:10:\"storefront\";s:7:\"/themes\";s:9:\"supersale\";s:7:\"/themes\";}', 'no'),
(595, '_transient_timeout_wc_shipping_method_count_0_1512314164', '1515051830', 'no'),
(596, '_transient_wc_shipping_method_count_0_1512314164', '2', 'no'),
(605, 'wpseo_sitemap_13_cache_validator', '3apym', 'no'),
(606, 'wpseo_sitemap_58_cache_validator', '3apzp', 'no'),
(607, 'wpseo_sitemap_14_cache_validator', 'e9Aw', 'no'),
(608, 'wpseo_sitemap_15_cache_validator', '3apEn', 'no'),
(609, 'wpseo_sitemap_54_cache_validator', '3apJm', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_form', '<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]'),
(5, 5, '_mail', 'a:8:{s:7:\"subject\";s:33:\"hang linh kiện \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <quangthinm@gmail.com>\";s:4:\"body\";s:238:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website hang linh kiện (http://localhost/hanglinhkien)\";s:9:\"recipient\";s:20:\"quangthinm@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:33:\"hang linh kiện \"[your-subject]\"\";s:6:\"sender\";s:39:\"hang linh kiện <quangthinm@gmail.com>\";s:4:\"body\";s:163:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website hang linh kiện (http://localhost/hanglinhkien)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: quangthinm@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(7, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";}'),
(8, 5, '_additional_settings', NULL),
(9, 5, '_locale', 'vi'),
(14, 8, '_menu_item_type', 'custom'),
(15, 8, '_menu_item_menu_item_parent', '0'),
(16, 8, '_menu_item_object_id', '8'),
(17, 8, '_menu_item_object', 'custom'),
(18, 8, '_menu_item_target', ''),
(19, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 8, '_menu_item_xfn', ''),
(21, 8, '_menu_item_url', 'http://localhost/hanglinhkien/'),
(22, 8, '_menu_item_orphaned', '1512299616'),
(23, 9, '_menu_item_type', 'post_type'),
(24, 9, '_menu_item_menu_item_parent', '0'),
(25, 9, '_menu_item_object_id', '2'),
(26, 9, '_menu_item_object', 'page'),
(27, 9, '_menu_item_target', ''),
(28, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 9, '_menu_item_xfn', ''),
(30, 9, '_menu_item_url', ''),
(31, 9, '_menu_item_orphaned', '1512299616'),
(32, 10, '_menu_item_type', 'custom'),
(33, 10, '_menu_item_menu_item_parent', '0'),
(34, 10, '_menu_item_object_id', '10'),
(35, 10, '_menu_item_object', 'custom'),
(36, 10, '_menu_item_target', ''),
(37, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 10, '_menu_item_xfn', ''),
(39, 10, '_menu_item_url', 'http://localhost/hanglinhkien/'),
(41, 11, '_menu_item_type', 'post_type'),
(42, 11, '_menu_item_menu_item_parent', '0'),
(43, 11, '_menu_item_object_id', '2'),
(44, 11, '_menu_item_object', 'page'),
(45, 11, '_menu_item_target', ''),
(46, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 11, '_menu_item_xfn', ''),
(48, 11, '_menu_item_url', ''),
(49, 11, '_menu_item_orphaned', '1512299717'),
(86, 20, '_wc_review_count', '0'),
(87, 20, '_wc_rating_count', 'a:0:{}'),
(88, 20, '_wc_average_rating', '0'),
(89, 21, '_wp_attached_file', '2017/12/beanie.jpg'),
(90, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2017/12/beanie.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"beanie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"beanie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"beanie-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 21, '_starter_content_theme', 'storefront'),
(92, 21, '_customize_draft_post_name', 'beanie-image'),
(93, 22, '_wp_attached_file', '2017/12/belt.jpg'),
(94, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:16:\"2017/12/belt.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"belt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"belt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"belt-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 22, '_starter_content_theme', 'storefront'),
(96, 22, '_customize_draft_post_name', 'belt-image'),
(97, 23, '_wp_attached_file', '2017/12/cap.jpg'),
(98, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2017/12/cap.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cap-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"cap-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"cap-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 23, '_starter_content_theme', 'storefront'),
(100, 23, '_customize_draft_post_name', 'cap-image'),
(101, 24, '_wp_attached_file', '2017/12/hoodie-with-logo.jpg'),
(102, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:28:\"2017/12/hoodie-with-logo.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 24, '_starter_content_theme', 'storefront'),
(104, 24, '_customize_draft_post_name', 'hoodie-with-logo-image'),
(105, 25, '_wp_attached_file', '2017/12/hoodie-with-pocket.jpg'),
(106, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2017/12/hoodie-with-pocket.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 25, '_starter_content_theme', 'storefront'),
(108, 25, '_customize_draft_post_name', 'hoodie-with-pocket-image'),
(109, 26, '_wp_attached_file', '2017/12/hoodie-with-zipper.jpg'),
(110, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2017/12/hoodie-with-zipper.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 26, '_starter_content_theme', 'storefront'),
(112, 26, '_customize_draft_post_name', 'hoodie-with-zipper-image'),
(113, 27, '_wp_attached_file', '2017/12/hoodie.jpg'),
(114, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2017/12/hoodie.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hoodie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"hoodie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"hoodie-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 27, '_starter_content_theme', 'storefront'),
(116, 27, '_customize_draft_post_name', 'hoodie-image'),
(117, 28, '_wp_attached_file', '2017/12/long-sleeve-tee.jpg'),
(118, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:27:\"2017/12/long-sleeve-tee.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 28, '_starter_content_theme', 'storefront'),
(120, 28, '_customize_draft_post_name', 'long-sleeve-tee-image'),
(121, 29, '_wp_attached_file', '2017/12/polo.jpg'),
(122, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2017/12/polo.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"polo-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"polo-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"polo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"polo-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 29, '_starter_content_theme', 'storefront'),
(124, 29, '_customize_draft_post_name', 'polo-image'),
(125, 30, '_wp_attached_file', '2017/12/sunglasses.jpg'),
(126, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2017/12/sunglasses.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sunglasses-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"sunglasses-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"sunglasses-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"sunglasses-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 30, '_starter_content_theme', 'storefront'),
(128, 30, '_customize_draft_post_name', 'sunglasses-image'),
(129, 31, '_wp_attached_file', '2017/12/tshirt.jpg'),
(130, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2017/12/tshirt.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tshirt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"tshirt-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 31, '_starter_content_theme', 'storefront'),
(132, 31, '_customize_draft_post_name', 'tshirt-image'),
(133, 32, '_wp_attached_file', '2017/12/vneck-tee.jpg'),
(134, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2017/12/vneck-tee.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"vneck-tee-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"vneck-tee-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"vneck-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"vneck-tee-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 32, '_starter_content_theme', 'storefront'),
(136, 32, '_customize_draft_post_name', 'vneck-tee-image'),
(137, 33, '_wp_attached_file', '2017/12/hero.jpg'),
(138, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:16:\"2017/12/hero.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"hero-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"hero-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 33, '_starter_content_theme', 'storefront'),
(140, 33, '_customize_draft_post_name', 'hero-image'),
(141, 34, '_wp_attached_file', '2017/12/accessories.jpg'),
(142, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2017/12/accessories.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"accessories-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"accessories-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"accessories-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"accessories-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 34, '_starter_content_theme', 'storefront'),
(144, 34, '_customize_draft_post_name', 'accessories-image'),
(145, 35, '_wp_attached_file', '2017/12/tshirts.jpg'),
(146, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2017/12/tshirts.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"tshirts-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"tshirts-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"tshirts-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"tshirts-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 35, '_starter_content_theme', 'storefront'),
(148, 35, '_customize_draft_post_name', 'tshirts-image'),
(149, 36, '_wp_attached_file', '2017/12/hoodies.jpg'),
(150, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2017/12/hoodies.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hoodies-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"hoodies-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"hoodies-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"hoodies-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 36, '_starter_content_theme', 'storefront'),
(152, 36, '_customize_draft_post_name', 'hoodies-image'),
(153, 37, '_thumbnail_id', '33'),
(154, 37, '_wp_page_template', 'template-homepage.php'),
(155, 37, '_customize_draft_post_name', 'welcome'),
(156, 37, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(157, 38, '_customize_draft_post_name', 'blog'),
(158, 38, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(159, 39, '_thumbnail_id', '21'),
(160, 39, '_customize_draft_post_name', 'beanie'),
(161, 39, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(162, 40, '_thumbnail_id', '22'),
(163, 40, '_customize_draft_post_name', 'belt'),
(164, 40, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(165, 41, '_thumbnail_id', '23'),
(166, 41, '_customize_draft_post_name', 'cap'),
(167, 41, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(168, 42, '_thumbnail_id', '30'),
(169, 42, '_customize_draft_post_name', 'sunglasses'),
(170, 42, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(171, 43, '_thumbnail_id', '24'),
(172, 43, '_customize_draft_post_name', 'hoodie-with-logo'),
(173, 43, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(174, 44, '_thumbnail_id', '25'),
(175, 44, '_customize_draft_post_name', 'hoodie-with-pocket'),
(176, 44, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(177, 45, '_thumbnail_id', '26'),
(178, 45, '_customize_draft_post_name', 'hoodie-with-zipper'),
(179, 45, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(180, 46, '_thumbnail_id', '27'),
(181, 46, '_customize_draft_post_name', 'hoodie'),
(182, 46, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(183, 47, '_thumbnail_id', '28'),
(184, 47, '_customize_draft_post_name', 'long-sleeve-tee'),
(185, 47, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(186, 48, '_thumbnail_id', '29'),
(187, 48, '_customize_draft_post_name', 'polo'),
(188, 48, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(189, 49, '_thumbnail_id', '31'),
(190, 49, '_customize_draft_post_name', 'tshirt'),
(191, 49, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(192, 50, '_thumbnail_id', '32'),
(193, 50, '_customize_draft_post_name', 'vneck-tee'),
(194, 50, '_customize_changeset_uuid', '615e3c9e-1966-44e0-9113-6b80ca52e958'),
(196, 39, '_wc_review_count', '0'),
(197, 39, '_wc_rating_count', 'a:0:{}'),
(198, 39, '_wc_average_rating', '0'),
(199, 39, '_sku', ''),
(200, 39, '_regular_price', '20'),
(201, 39, '_sale_price', '18'),
(202, 39, '_sale_price_dates_from', ''),
(203, 39, '_sale_price_dates_to', ''),
(204, 39, 'total_sales', '0'),
(205, 39, '_tax_status', 'taxable'),
(206, 39, '_tax_class', ''),
(207, 39, '_manage_stock', 'no'),
(208, 39, '_backorders', 'no'),
(209, 39, '_sold_individually', 'no'),
(210, 39, '_weight', ''),
(211, 39, '_length', ''),
(212, 39, '_width', ''),
(213, 39, '_height', ''),
(214, 39, '_upsell_ids', 'a:0:{}'),
(215, 39, '_crosssell_ids', 'a:0:{}'),
(216, 39, '_purchase_note', ''),
(217, 39, '_default_attributes', 'a:0:{}'),
(218, 39, '_virtual', 'no'),
(219, 39, '_downloadable', 'no'),
(220, 39, '_product_image_gallery', ''),
(221, 39, '_download_limit', '-1'),
(222, 39, '_download_expiry', '-1'),
(223, 39, '_stock', NULL),
(224, 39, '_stock_status', 'instock'),
(225, 39, '_product_version', '3.2.5'),
(226, 39, '_price', '18'),
(227, 40, '_wc_review_count', '0'),
(228, 40, '_wc_rating_count', 'a:0:{}'),
(229, 40, '_wc_average_rating', '0'),
(230, 40, '_sku', ''),
(231, 40, '_regular_price', '65'),
(232, 40, '_sale_price', '55'),
(233, 40, '_sale_price_dates_from', ''),
(234, 40, '_sale_price_dates_to', ''),
(235, 40, 'total_sales', '0'),
(236, 40, '_tax_status', 'taxable'),
(237, 40, '_tax_class', ''),
(238, 40, '_manage_stock', 'no'),
(239, 40, '_backorders', 'no'),
(240, 40, '_sold_individually', 'no'),
(241, 40, '_weight', ''),
(242, 40, '_length', ''),
(243, 40, '_width', ''),
(244, 40, '_height', ''),
(245, 40, '_upsell_ids', 'a:0:{}'),
(246, 40, '_crosssell_ids', 'a:0:{}'),
(247, 40, '_purchase_note', ''),
(248, 40, '_default_attributes', 'a:0:{}'),
(249, 40, '_virtual', 'no'),
(250, 40, '_downloadable', 'no'),
(251, 40, '_product_image_gallery', ''),
(252, 40, '_download_limit', '-1'),
(253, 40, '_download_expiry', '-1'),
(254, 40, '_stock', NULL),
(255, 40, '_stock_status', 'instock'),
(256, 40, '_product_version', '3.2.5'),
(257, 40, '_price', '55'),
(258, 41, '_wc_review_count', '0'),
(259, 41, '_wc_rating_count', 'a:0:{}'),
(260, 41, '_wc_average_rating', '0'),
(261, 41, '_sku', ''),
(262, 41, '_regular_price', '18'),
(263, 41, '_sale_price', '16'),
(264, 41, '_sale_price_dates_from', ''),
(265, 41, '_sale_price_dates_to', ''),
(266, 41, 'total_sales', '0'),
(267, 41, '_tax_status', 'taxable'),
(268, 41, '_tax_class', ''),
(269, 41, '_manage_stock', 'no'),
(270, 41, '_backorders', 'no'),
(271, 41, '_sold_individually', 'no'),
(272, 41, '_weight', ''),
(273, 41, '_length', ''),
(274, 41, '_width', ''),
(275, 41, '_height', ''),
(276, 41, '_upsell_ids', 'a:0:{}'),
(277, 41, '_crosssell_ids', 'a:0:{}'),
(278, 41, '_purchase_note', ''),
(279, 41, '_default_attributes', 'a:0:{}'),
(280, 41, '_virtual', 'no'),
(281, 41, '_downloadable', 'no'),
(282, 41, '_product_image_gallery', ''),
(283, 41, '_download_limit', '-1'),
(284, 41, '_download_expiry', '-1'),
(285, 41, '_stock', NULL),
(286, 41, '_stock_status', 'instock'),
(287, 41, '_product_version', '3.2.5'),
(288, 41, '_price', '16'),
(289, 42, '_wc_review_count', '0'),
(290, 42, '_wc_rating_count', 'a:0:{}'),
(291, 42, '_wc_average_rating', '0'),
(292, 42, '_sku', ''),
(293, 42, '_regular_price', '90'),
(294, 42, '_sale_price', ''),
(295, 42, '_sale_price_dates_from', ''),
(296, 42, '_sale_price_dates_to', ''),
(297, 42, 'total_sales', '0'),
(298, 42, '_tax_status', 'taxable'),
(299, 42, '_tax_class', ''),
(300, 42, '_manage_stock', 'no'),
(301, 42, '_backorders', 'no'),
(302, 42, '_sold_individually', 'no'),
(303, 42, '_weight', ''),
(304, 42, '_length', ''),
(305, 42, '_width', ''),
(306, 42, '_height', ''),
(307, 42, '_upsell_ids', 'a:0:{}'),
(308, 42, '_crosssell_ids', 'a:0:{}'),
(309, 42, '_purchase_note', ''),
(310, 42, '_default_attributes', 'a:0:{}'),
(311, 42, '_virtual', 'no'),
(312, 42, '_downloadable', 'no'),
(313, 42, '_product_image_gallery', ''),
(314, 42, '_download_limit', '-1'),
(315, 42, '_download_expiry', '-1'),
(316, 42, '_stock', NULL),
(317, 42, '_stock_status', 'instock'),
(318, 42, '_product_version', '3.2.5'),
(319, 42, '_price', '90'),
(320, 43, '_wc_review_count', '0'),
(321, 43, '_wc_rating_count', 'a:0:{}'),
(322, 43, '_wc_average_rating', '0'),
(323, 43, '_sku', ''),
(324, 43, '_regular_price', '45'),
(325, 43, '_sale_price', ''),
(326, 43, '_sale_price_dates_from', ''),
(327, 43, '_sale_price_dates_to', ''),
(328, 43, 'total_sales', '0'),
(329, 43, '_tax_status', 'taxable'),
(330, 43, '_tax_class', ''),
(331, 43, '_manage_stock', 'no'),
(332, 43, '_backorders', 'no'),
(333, 43, '_sold_individually', 'no'),
(334, 43, '_weight', ''),
(335, 43, '_length', ''),
(336, 43, '_width', ''),
(337, 43, '_height', ''),
(338, 43, '_upsell_ids', 'a:0:{}'),
(339, 43, '_crosssell_ids', 'a:0:{}'),
(340, 43, '_purchase_note', ''),
(341, 43, '_default_attributes', 'a:0:{}'),
(342, 43, '_virtual', 'no'),
(343, 43, '_downloadable', 'no'),
(344, 43, '_product_image_gallery', ''),
(345, 43, '_download_limit', '-1'),
(346, 43, '_download_expiry', '-1'),
(347, 43, '_stock', NULL),
(348, 43, '_stock_status', 'instock'),
(349, 43, '_product_version', '3.2.5'),
(350, 43, '_price', '45'),
(351, 44, '_wc_review_count', '0'),
(352, 44, '_wc_rating_count', 'a:0:{}'),
(353, 44, '_wc_average_rating', '0'),
(354, 44, '_sku', ''),
(355, 44, '_regular_price', '45'),
(356, 44, '_sale_price', '35'),
(357, 44, '_sale_price_dates_from', ''),
(358, 44, '_sale_price_dates_to', ''),
(359, 44, 'total_sales', '0'),
(360, 44, '_tax_status', 'taxable'),
(361, 44, '_tax_class', ''),
(362, 44, '_manage_stock', 'no'),
(363, 44, '_backorders', 'no'),
(364, 44, '_sold_individually', 'no'),
(365, 44, '_weight', ''),
(366, 44, '_length', ''),
(367, 44, '_width', ''),
(368, 44, '_height', ''),
(369, 44, '_upsell_ids', 'a:0:{}'),
(370, 44, '_crosssell_ids', 'a:0:{}'),
(371, 44, '_purchase_note', ''),
(372, 44, '_default_attributes', 'a:0:{}'),
(373, 44, '_virtual', 'no'),
(374, 44, '_downloadable', 'no'),
(375, 44, '_product_image_gallery', ''),
(376, 44, '_download_limit', '-1'),
(377, 44, '_download_expiry', '-1'),
(378, 44, '_stock', NULL),
(379, 44, '_stock_status', 'instock'),
(380, 44, '_product_version', '3.2.5'),
(381, 44, '_price', '35'),
(382, 45, '_wc_review_count', '0'),
(383, 45, '_wc_rating_count', 'a:0:{}'),
(384, 45, '_wc_average_rating', '0'),
(385, 45, '_sku', ''),
(386, 45, '_regular_price', '45'),
(387, 45, '_sale_price', ''),
(388, 45, '_sale_price_dates_from', ''),
(389, 45, '_sale_price_dates_to', ''),
(390, 45, 'total_sales', '0'),
(391, 45, '_tax_status', 'taxable'),
(392, 45, '_tax_class', ''),
(393, 45, '_manage_stock', 'no'),
(394, 45, '_backorders', 'no'),
(395, 45, '_sold_individually', 'no'),
(396, 45, '_weight', ''),
(397, 45, '_length', ''),
(398, 45, '_width', ''),
(399, 45, '_height', ''),
(400, 45, '_upsell_ids', 'a:0:{}'),
(401, 45, '_crosssell_ids', 'a:0:{}'),
(402, 45, '_purchase_note', ''),
(403, 45, '_default_attributes', 'a:0:{}'),
(404, 45, '_virtual', 'no'),
(405, 45, '_downloadable', 'no'),
(406, 45, '_product_image_gallery', ''),
(407, 45, '_download_limit', '-1'),
(408, 45, '_download_expiry', '-1'),
(409, 45, '_stock', NULL),
(410, 45, '_stock_status', 'instock'),
(411, 45, '_product_version', '3.2.5'),
(412, 45, '_price', '45'),
(413, 46, '_wc_review_count', '0'),
(414, 46, '_wc_rating_count', 'a:0:{}'),
(415, 46, '_wc_average_rating', '0'),
(416, 46, '_sku', ''),
(417, 46, '_regular_price', '45'),
(418, 46, '_sale_price', '42'),
(419, 46, '_sale_price_dates_from', ''),
(420, 46, '_sale_price_dates_to', ''),
(421, 46, 'total_sales', '0'),
(422, 46, '_tax_status', 'taxable'),
(423, 46, '_tax_class', ''),
(424, 46, '_manage_stock', 'no'),
(425, 46, '_backorders', 'no'),
(426, 46, '_sold_individually', 'no'),
(427, 46, '_weight', ''),
(428, 46, '_length', ''),
(429, 46, '_width', ''),
(430, 46, '_height', ''),
(431, 46, '_upsell_ids', 'a:0:{}'),
(432, 46, '_crosssell_ids', 'a:0:{}'),
(433, 46, '_purchase_note', ''),
(434, 46, '_default_attributes', 'a:0:{}'),
(435, 46, '_virtual', 'no'),
(436, 46, '_downloadable', 'no'),
(437, 46, '_product_image_gallery', ''),
(438, 46, '_download_limit', '-1'),
(439, 46, '_download_expiry', '-1'),
(440, 46, '_stock', NULL),
(441, 46, '_stock_status', 'instock'),
(442, 46, '_product_version', '3.2.5'),
(443, 46, '_price', '42'),
(444, 47, '_wc_review_count', '0'),
(445, 47, '_wc_rating_count', 'a:0:{}'),
(446, 47, '_wc_average_rating', '0'),
(447, 47, '_sku', ''),
(448, 47, '_regular_price', '25'),
(449, 47, '_sale_price', ''),
(450, 47, '_sale_price_dates_from', ''),
(451, 47, '_sale_price_dates_to', ''),
(452, 47, 'total_sales', '0'),
(453, 47, '_tax_status', 'taxable'),
(454, 47, '_tax_class', ''),
(455, 47, '_manage_stock', 'no'),
(456, 47, '_backorders', 'no'),
(457, 47, '_sold_individually', 'no'),
(458, 47, '_weight', ''),
(459, 47, '_length', ''),
(460, 47, '_width', ''),
(461, 47, '_height', ''),
(462, 47, '_upsell_ids', 'a:0:{}'),
(463, 47, '_crosssell_ids', 'a:0:{}'),
(464, 47, '_purchase_note', ''),
(465, 47, '_default_attributes', 'a:0:{}'),
(466, 47, '_virtual', 'no'),
(467, 47, '_downloadable', 'no'),
(468, 47, '_product_image_gallery', ''),
(469, 47, '_download_limit', '-1'),
(470, 47, '_download_expiry', '-1'),
(471, 47, '_stock', NULL),
(472, 47, '_stock_status', 'instock'),
(473, 47, '_product_version', '3.2.5'),
(474, 47, '_price', '25'),
(475, 48, '_wc_review_count', '0'),
(476, 48, '_wc_rating_count', 'a:0:{}'),
(477, 48, '_wc_average_rating', '0'),
(478, 48, '_sku', ''),
(479, 48, '_regular_price', '20'),
(480, 48, '_sale_price', ''),
(481, 48, '_sale_price_dates_from', ''),
(482, 48, '_sale_price_dates_to', ''),
(483, 48, 'total_sales', '0'),
(484, 48, '_tax_status', 'taxable'),
(485, 48, '_tax_class', ''),
(486, 48, '_manage_stock', 'no'),
(487, 48, '_backorders', 'no'),
(488, 48, '_sold_individually', 'no'),
(489, 48, '_weight', ''),
(490, 48, '_length', ''),
(491, 48, '_width', ''),
(492, 48, '_height', ''),
(493, 48, '_upsell_ids', 'a:0:{}'),
(494, 48, '_crosssell_ids', 'a:0:{}'),
(495, 48, '_purchase_note', ''),
(496, 48, '_default_attributes', 'a:0:{}'),
(497, 48, '_virtual', 'no'),
(498, 48, '_downloadable', 'no'),
(499, 48, '_product_image_gallery', ''),
(500, 48, '_download_limit', '-1'),
(501, 48, '_download_expiry', '-1'),
(502, 48, '_stock', NULL),
(503, 48, '_stock_status', 'instock'),
(504, 48, '_product_version', '3.2.5'),
(505, 48, '_price', '20'),
(506, 49, '_wc_review_count', '0'),
(507, 49, '_wc_rating_count', 'a:0:{}'),
(508, 49, '_wc_average_rating', '0'),
(509, 49, '_sku', ''),
(510, 49, '_regular_price', '18'),
(511, 49, '_sale_price', ''),
(512, 49, '_sale_price_dates_from', ''),
(513, 49, '_sale_price_dates_to', ''),
(514, 49, 'total_sales', '0'),
(515, 49, '_tax_status', 'taxable'),
(516, 49, '_tax_class', ''),
(517, 49, '_manage_stock', 'no'),
(518, 49, '_backorders', 'no'),
(519, 49, '_sold_individually', 'no'),
(520, 49, '_weight', ''),
(521, 49, '_length', ''),
(522, 49, '_width', ''),
(523, 49, '_height', ''),
(524, 49, '_upsell_ids', 'a:0:{}'),
(525, 49, '_crosssell_ids', 'a:0:{}'),
(526, 49, '_purchase_note', ''),
(527, 49, '_default_attributes', 'a:0:{}'),
(528, 49, '_virtual', 'no'),
(529, 49, '_downloadable', 'no'),
(530, 49, '_product_image_gallery', ''),
(531, 49, '_download_limit', '-1'),
(532, 49, '_download_expiry', '-1'),
(533, 49, '_stock', NULL),
(534, 49, '_stock_status', 'instock'),
(535, 49, '_product_version', '3.2.5'),
(536, 49, '_price', '18'),
(537, 50, '_wc_review_count', '0'),
(538, 50, '_wc_rating_count', 'a:0:{}'),
(539, 50, '_wc_average_rating', '0'),
(540, 50, '_sku', ''),
(541, 50, '_regular_price', '18'),
(542, 50, '_sale_price', ''),
(543, 50, '_sale_price_dates_from', ''),
(544, 50, '_sale_price_dates_to', ''),
(545, 50, 'total_sales', '0'),
(546, 50, '_tax_status', 'taxable'),
(547, 50, '_tax_class', ''),
(548, 50, '_manage_stock', 'no'),
(549, 50, '_backorders', 'no'),
(550, 50, '_sold_individually', 'no'),
(551, 50, '_weight', ''),
(552, 50, '_length', ''),
(553, 50, '_width', ''),
(554, 50, '_height', ''),
(555, 50, '_upsell_ids', 'a:0:{}'),
(556, 50, '_crosssell_ids', 'a:0:{}'),
(557, 50, '_purchase_note', ''),
(558, 50, '_default_attributes', 'a:0:{}'),
(559, 50, '_virtual', 'no'),
(560, 50, '_downloadable', 'no'),
(561, 50, '_product_image_gallery', ''),
(562, 50, '_download_limit', '-1'),
(563, 50, '_download_expiry', '-1'),
(564, 50, '_stock', NULL),
(565, 50, '_stock_status', 'instock'),
(566, 50, '_product_version', '3.2.5'),
(567, 50, '_price', '18'),
(568, 52, '_wc_review_count', '0'),
(569, 52, '_wc_rating_count', 'a:0:{}'),
(570, 52, '_wc_average_rating', '0'),
(571, 52, '_edit_last', '1'),
(572, 52, '_edit_lock', '1512315118:1'),
(573, 53, '_wp_attached_file', '2017/12/tải-xuống-2.jpg'),
(574, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:271;s:6:\"height\";i:186;s:4:\"file\";s:27:\"2017/12/tải-xuống-2.jpg\";s:5:\"sizes\";a:1:{s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"tải-xuống-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 52, '_sku', ''),
(576, 52, '_regular_price', '200000'),
(577, 52, '_sale_price', '150000'),
(578, 52, '_sale_price_dates_from', ''),
(579, 52, '_sale_price_dates_to', ''),
(580, 52, 'total_sales', '0'),
(581, 52, '_tax_status', 'taxable'),
(582, 52, '_tax_class', ''),
(583, 52, '_manage_stock', 'no'),
(584, 52, '_backorders', 'no'),
(585, 52, '_sold_individually', 'no'),
(586, 52, '_weight', ''),
(587, 52, '_length', ''),
(588, 52, '_width', ''),
(589, 52, '_height', ''),
(590, 52, '_upsell_ids', 'a:0:{}'),
(591, 52, '_crosssell_ids', 'a:0:{}'),
(592, 52, '_purchase_note', ''),
(593, 52, '_default_attributes', 'a:0:{}'),
(594, 52, '_virtual', 'no'),
(595, 52, '_downloadable', 'no'),
(596, 52, '_product_image_gallery', '53'),
(597, 52, '_download_limit', '-1'),
(598, 52, '_download_expiry', '-1'),
(599, 52, '_stock', NULL),
(600, 52, '_stock_status', 'instock'),
(601, 52, '_product_version', '3.2.5'),
(602, 52, '_price', '150000'),
(603, 52, '_yoast_wpseo_primary_product_cat', '19'),
(604, 52, '_yoast_wpseo_content_score', '30'),
(632, 57, '_menu_item_type', 'post_type'),
(633, 57, '_menu_item_menu_item_parent', '0'),
(634, 57, '_menu_item_object_id', '16'),
(635, 57, '_menu_item_object', 'page'),
(636, 57, '_menu_item_target', ''),
(637, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(638, 57, '_menu_item_xfn', ''),
(639, 57, '_menu_item_url', ''),
(650, 52, '_thumbnail_id', '53'),
(655, 61, '_sku', 'WOO-SINGLE-1'),
(656, 61, '_regular_price', '3'),
(657, 61, '_sale_price', ''),
(658, 61, '_sale_price_dates_from', ''),
(659, 61, '_sale_price_dates_to', ''),
(660, 61, 'total_sales', '0'),
(661, 61, '_tax_status', 'taxable'),
(662, 61, '_tax_class', ''),
(663, 61, '_manage_stock', 'no'),
(664, 61, '_backorders', 'no'),
(665, 61, '_sold_individually', 'no'),
(666, 61, '_weight', ''),
(667, 61, '_length', ''),
(668, 61, '_width', ''),
(669, 61, '_height', ''),
(670, 61, '_upsell_ids', 'a:0:{}'),
(671, 61, '_crosssell_ids', 'a:0:{}'),
(672, 61, '_purchase_note', ''),
(673, 61, '_default_attributes', 'a:0:{}'),
(674, 61, '_virtual', 'yes'),
(675, 61, '_downloadable', 'yes'),
(676, 61, '_product_image_gallery', '80'),
(677, 61, '_download_limit', '1'),
(678, 61, '_download_expiry', '1'),
(679, 61, '_stock', NULL),
(680, 61, '_stock_status', 'instock'),
(681, 61, '_wc_average_rating', '0'),
(682, 61, '_wc_rating_count', 'a:0:{}'),
(683, 61, '_wc_review_count', '0'),
(684, 61, '_downloadable_files', 'a:1:{s:32:\"1f9c11f99ceba63d4403c03bd5391b11\";a:4:{s:2:\"id\";s:32:\"1f9c11f99ceba63d4403c03bd5391b11\";s:4:\"name\";s:7:\"Song #1\";s:4:\"file\";s:64:\"https://woocommerce.files.wordpress.com/2017/06/woo-single-1.ogg\";s:13:\"previous_hash\";s:0:\"\";}}'),
(685, 61, '_product_attributes', 'a:0:{}'),
(686, 61, '_product_version', '3.2.5'),
(687, 61, '_price', '3'),
(688, 62, '_sku', 'WOO-SINGLE-2'),
(689, 62, '_regular_price', '3'),
(690, 62, '_sale_price', '2'),
(691, 62, '_sale_price_dates_from', ''),
(692, 62, '_sale_price_dates_to', ''),
(693, 62, 'total_sales', '0'),
(694, 62, '_tax_status', 'taxable'),
(695, 62, '_tax_class', ''),
(696, 62, '_manage_stock', 'no'),
(697, 62, '_backorders', 'no'),
(698, 62, '_sold_individually', 'no'),
(699, 62, '_weight', ''),
(700, 62, '_length', ''),
(701, 62, '_width', ''),
(702, 62, '_height', ''),
(703, 62, '_upsell_ids', 'a:0:{}'),
(704, 62, '_crosssell_ids', 'a:0:{}'),
(705, 62, '_purchase_note', ''),
(706, 62, '_default_attributes', 'a:0:{}'),
(707, 62, '_virtual', 'yes'),
(708, 62, '_downloadable', 'yes'),
(709, 62, '_product_image_gallery', '78'),
(710, 62, '_download_limit', '10'),
(711, 62, '_download_expiry', '90'),
(712, 62, '_stock', NULL),
(713, 62, '_stock_status', 'instock'),
(714, 62, '_wc_average_rating', '0'),
(715, 62, '_wc_rating_count', 'a:0:{}'),
(716, 62, '_wc_review_count', '0'),
(717, 62, '_downloadable_files', 'a:1:{s:32:\"061c9a8dbfd1e6713f71ed1771a0568c\";a:4:{s:2:\"id\";s:32:\"061c9a8dbfd1e6713f71ed1771a0568c\";s:4:\"name\";s:7:\"Song #2\";s:4:\"file\";s:64:\"https://woocommerce.files.wordpress.com/2017/06/woo-single-2.ogg\";s:13:\"previous_hash\";s:0:\"\";}}'),
(718, 62, '_product_attributes', 'a:0:{}'),
(719, 62, '_product_version', '3.2.5'),
(720, 62, '_price', '2'),
(721, 63, '_sku', 'WOO-ALBUM-1'),
(722, 63, '_regular_price', '9'),
(723, 63, '_sale_price', ''),
(724, 63, '_sale_price_dates_from', ''),
(725, 63, '_sale_price_dates_to', ''),
(726, 63, 'total_sales', '0'),
(727, 63, '_tax_status', 'taxable'),
(728, 63, '_tax_class', ''),
(729, 63, '_manage_stock', 'no'),
(730, 63, '_backorders', 'no'),
(731, 63, '_sold_individually', 'no'),
(732, 63, '_weight', ''),
(733, 63, '_length', ''),
(734, 63, '_width', ''),
(735, 63, '_height', ''),
(736, 63, '_upsell_ids', 'a:0:{}'),
(737, 63, '_crosssell_ids', 'a:0:{}'),
(738, 63, '_purchase_note', ''),
(739, 63, '_default_attributes', 'a:0:{}'),
(740, 63, '_virtual', 'yes'),
(741, 63, '_downloadable', 'no'),
(742, 63, '_product_image_gallery', '90'),
(743, 63, '_download_limit', '0'),
(744, 63, '_download_expiry', '0'),
(745, 63, '_stock', NULL),
(746, 63, '_stock_status', 'instock'),
(747, 63, '_wc_average_rating', '0'),
(748, 63, '_wc_rating_count', 'a:0:{}'),
(749, 63, '_wc_review_count', '0'),
(750, 63, '_downloadable_files', 'a:0:{}'),
(751, 63, '_product_attributes', 'a:0:{}'),
(752, 63, '_product_version', '3.2.5'),
(753, 63, '_price', '9'),
(754, 64, '_sku', 'WOO-ALBUM-2'),
(755, 64, '_regular_price', '9'),
(756, 64, '_sale_price', ''),
(757, 64, '_sale_price_dates_from', ''),
(758, 64, '_sale_price_dates_to', ''),
(759, 64, 'total_sales', '0'),
(760, 64, '_tax_status', 'taxable'),
(761, 64, '_tax_class', ''),
(762, 64, '_manage_stock', 'no'),
(763, 64, '_backorders', 'no'),
(764, 64, '_sold_individually', 'no'),
(765, 64, '_weight', ''),
(766, 64, '_length', ''),
(767, 64, '_width', ''),
(768, 64, '_height', ''),
(769, 64, '_upsell_ids', 'a:0:{}'),
(770, 64, '_crosssell_ids', 'a:0:{}'),
(771, 64, '_purchase_note', ''),
(772, 64, '_default_attributes', 'a:0:{}'),
(773, 64, '_virtual', 'yes'),
(774, 64, '_downloadable', 'no'),
(775, 64, '_product_image_gallery', '88'),
(776, 64, '_download_limit', '0'),
(777, 64, '_download_expiry', '0'),
(778, 64, '_stock', NULL),
(779, 64, '_stock_status', 'instock'),
(780, 64, '_wc_average_rating', '0'),
(781, 64, '_wc_rating_count', 'a:0:{}'),
(782, 64, '_wc_review_count', '0'),
(783, 64, '_downloadable_files', 'a:0:{}'),
(784, 64, '_product_attributes', 'a:0:{}'),
(785, 64, '_product_version', '3.2.5'),
(786, 64, '_price', '9'),
(787, 65, '_sku', 'WOO-ALBUM-3'),
(788, 65, '_regular_price', '9'),
(789, 65, '_sale_price', ''),
(790, 65, '_sale_price_dates_from', ''),
(791, 65, '_sale_price_dates_to', ''),
(792, 65, 'total_sales', '0'),
(793, 65, '_tax_status', 'taxable'),
(794, 65, '_tax_class', ''),
(795, 65, '_manage_stock', 'no'),
(796, 65, '_backorders', 'no'),
(797, 65, '_sold_individually', 'no'),
(798, 65, '_weight', ''),
(799, 65, '_length', ''),
(800, 65, '_width', ''),
(801, 65, '_height', ''),
(802, 65, '_upsell_ids', 'a:0:{}'),
(803, 65, '_crosssell_ids', 'a:0:{}'),
(804, 65, '_purchase_note', ''),
(805, 65, '_default_attributes', 'a:0:{}'),
(806, 65, '_virtual', 'yes'),
(807, 65, '_downloadable', 'no'),
(808, 65, '_product_image_gallery', '86'),
(809, 65, '_download_limit', '0'),
(810, 65, '_download_expiry', '0'),
(811, 65, '_stock', NULL),
(812, 65, '_stock_status', 'instock'),
(813, 65, '_wc_average_rating', '0'),
(814, 65, '_wc_rating_count', 'a:0:{}'),
(815, 65, '_wc_review_count', '0'),
(816, 65, '_downloadable_files', 'a:0:{}'),
(817, 65, '_product_attributes', 'a:0:{}'),
(818, 65, '_product_version', '3.2.5'),
(819, 65, '_price', '9'),
(820, 66, '_sku', 'T-SHIRT-WOO-LOGO'),
(821, 66, '_regular_price', '20'),
(822, 66, '_sale_price', '18'),
(823, 66, '_sale_price_dates_from', ''),
(824, 66, '_sale_price_dates_to', ''),
(825, 66, 'total_sales', '0'),
(826, 66, '_tax_status', 'taxable'),
(827, 66, '_tax_class', ''),
(828, 66, '_manage_stock', 'yes'),
(829, 66, '_backorders', ''),
(830, 66, '_sold_individually', 'no'),
(831, 66, '_weight', ''),
(832, 66, '_length', ''),
(833, 66, '_width', ''),
(834, 66, '_height', ''),
(835, 66, '_upsell_ids', 'a:1:{i:0;i:67;}'),
(836, 66, '_crosssell_ids', 'a:0:{}'),
(837, 66, '_purchase_note', ''),
(838, 66, '_default_attributes', 'a:0:{}'),
(839, 66, '_virtual', 'no'),
(840, 66, '_downloadable', 'no'),
(841, 66, '_product_image_gallery', '139'),
(842, 66, '_download_limit', '0'),
(843, 66, '_download_expiry', '0'),
(844, 66, '_stock', '5'),
(845, 66, '_stock_status', 'instock'),
(846, 66, '_wc_average_rating', '0'),
(847, 66, '_wc_rating_count', 'a:0:{}'),
(848, 66, '_wc_review_count', '0'),
(849, 66, '_downloadable_files', 'a:0:{}'),
(850, 66, '_product_attributes', 'a:0:{}'),
(851, 66, '_product_version', '3.2.5'),
(852, 66, '_price', '18'),
(853, 67, '_sku', 'HOODIE-WOO-LOGO'),
(854, 67, '_regular_price', '35'),
(855, 67, '_sale_price', ''),
(856, 67, '_sale_price_dates_from', ''),
(857, 67, '_sale_price_dates_to', ''),
(858, 67, 'total_sales', '0'),
(859, 67, '_tax_status', 'taxable'),
(860, 67, '_tax_class', ''),
(861, 67, '_manage_stock', 'no'),
(862, 67, '_backorders', 'no'),
(863, 67, '_sold_individually', 'no'),
(864, 67, '_weight', ''),
(865, 67, '_length', ''),
(866, 67, '_width', ''),
(867, 67, '_height', ''),
(868, 67, '_upsell_ids', 'a:0:{}'),
(869, 67, '_crosssell_ids', 'a:1:{i:0;i:66;}'),
(870, 67, '_purchase_note', ''),
(871, 67, '_default_attributes', 'a:0:{}'),
(872, 67, '_virtual', 'no'),
(873, 67, '_downloadable', 'no'),
(874, 67, '_product_image_gallery', '107'),
(875, 67, '_download_limit', '0'),
(876, 67, '_download_expiry', '0'),
(877, 67, '_stock', NULL),
(878, 67, '_stock_status', 'instock'),
(879, 67, '_wc_average_rating', '0'),
(880, 67, '_wc_rating_count', 'a:0:{}'),
(881, 67, '_wc_review_count', '0'),
(882, 67, '_downloadable_files', 'a:0:{}'),
(883, 67, '_product_attributes', 'a:0:{}'),
(884, 67, '_product_version', '3.2.5'),
(885, 67, '_price', '35'),
(886, 68, '_sku', 'T-SHIRT-WOO-NINJA'),
(887, 68, '_regular_price', '20'),
(888, 68, '_sale_price', ''),
(889, 68, '_sale_price_dates_from', ''),
(890, 68, '_sale_price_dates_to', ''),
(891, 68, 'total_sales', '0'),
(892, 68, '_tax_status', 'taxable'),
(893, 68, '_tax_class', ''),
(894, 68, '_manage_stock', 'no'),
(895, 68, '_backorders', 'no'),
(896, 68, '_sold_individually', 'no'),
(897, 68, '_weight', ''),
(898, 68, '_length', ''),
(899, 68, '_width', ''),
(900, 68, '_height', ''),
(901, 68, '_upsell_ids', 'a:1:{i:0;i:69;}'),
(902, 68, '_crosssell_ids', 'a:2:{i:0;i:74;i:1;i:73;}'),
(903, 68, '_purchase_note', ''),
(904, 68, '_default_attributes', 'a:0:{}'),
(905, 68, '_virtual', 'no'),
(906, 68, '_downloadable', 'no'),
(907, 68, '_product_image_gallery', '126'),
(908, 68, '_download_limit', '0'),
(909, 68, '_download_expiry', '0'),
(910, 68, '_stock', NULL),
(911, 68, '_stock_status', 'instock'),
(912, 68, '_wc_average_rating', '0'),
(913, 68, '_wc_rating_count', 'a:0:{}'),
(914, 68, '_wc_review_count', '0'),
(915, 68, '_downloadable_files', 'a:0:{}'),
(916, 68, '_product_attributes', 'a:0:{}'),
(917, 68, '_product_version', '3.2.5'),
(918, 68, '_price', '20'),
(919, 69, '_sku', 'HOODIE-WOO-NINJA'),
(920, 69, '_regular_price', '35'),
(921, 69, '_sale_price', ''),
(922, 69, '_sale_price_dates_from', ''),
(923, 69, '_sale_price_dates_to', ''),
(924, 69, 'total_sales', '0'),
(925, 69, '_tax_status', 'taxable'),
(926, 69, '_tax_class', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(927, 69, '_manage_stock', 'no'),
(928, 69, '_backorders', 'no'),
(929, 69, '_sold_individually', 'no'),
(930, 69, '_weight', ''),
(931, 69, '_length', ''),
(932, 69, '_width', ''),
(933, 69, '_height', ''),
(934, 69, '_upsell_ids', 'a:0:{}'),
(935, 69, '_crosssell_ids', 'a:1:{i:0;i:68;}'),
(936, 69, '_purchase_note', ''),
(937, 69, '_default_attributes', 'a:0:{}'),
(938, 69, '_virtual', 'no'),
(939, 69, '_downloadable', 'no'),
(940, 69, '_product_image_gallery', '116'),
(941, 69, '_download_limit', '0'),
(942, 69, '_download_expiry', '0'),
(943, 69, '_stock', NULL),
(944, 69, '_stock_status', 'instock'),
(945, 69, '_wc_average_rating', '0'),
(946, 69, '_wc_rating_count', 'a:0:{}'),
(947, 69, '_wc_review_count', '0'),
(948, 69, '_downloadable_files', 'a:0:{}'),
(949, 69, '_product_attributes', 'a:0:{}'),
(950, 69, '_product_version', '3.2.5'),
(951, 69, '_price', '35'),
(952, 70, '_sku', 'T-SHIRT-PREMIUM-QUALITY'),
(953, 70, '_regular_price', '20'),
(954, 70, '_sale_price', ''),
(955, 70, '_sale_price_dates_from', ''),
(956, 70, '_sale_price_dates_to', ''),
(957, 70, 'total_sales', '0'),
(958, 70, '_tax_status', 'taxable'),
(959, 70, '_tax_class', ''),
(960, 70, '_manage_stock', 'no'),
(961, 70, '_backorders', 'no'),
(962, 70, '_sold_individually', 'no'),
(963, 70, '_weight', ''),
(964, 70, '_length', ''),
(965, 70, '_width', ''),
(966, 70, '_height', ''),
(967, 70, '_upsell_ids', 'a:0:{}'),
(968, 70, '_crosssell_ids', 'a:0:{}'),
(969, 70, '_purchase_note', ''),
(970, 70, '_default_attributes', 'a:0:{}'),
(971, 70, '_virtual', 'no'),
(972, 70, '_downloadable', 'no'),
(973, 70, '_product_image_gallery', '137'),
(974, 70, '_download_limit', '0'),
(975, 70, '_download_expiry', '0'),
(976, 70, '_stock', NULL),
(977, 70, '_stock_status', 'instock'),
(978, 70, '_wc_average_rating', '0'),
(979, 70, '_wc_rating_count', 'a:0:{}'),
(980, 70, '_wc_review_count', '0'),
(981, 70, '_downloadable_files', 'a:0:{}'),
(982, 70, '_product_attributes', 'a:0:{}'),
(983, 70, '_product_version', '3.2.5'),
(984, 70, '_price', '20'),
(985, 71, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA'),
(986, 71, '_regular_price', '20'),
(987, 71, '_sale_price', ''),
(988, 71, '_sale_price_dates_from', ''),
(989, 71, '_sale_price_dates_to', ''),
(990, 71, 'total_sales', '0'),
(991, 71, '_tax_status', 'taxable'),
(992, 71, '_tax_class', ''),
(993, 71, '_manage_stock', 'no'),
(994, 71, '_backorders', 'no'),
(995, 71, '_sold_individually', 'no'),
(996, 71, '_weight', ''),
(997, 71, '_length', ''),
(998, 71, '_width', ''),
(999, 71, '_height', ''),
(1000, 71, '_upsell_ids', 'a:1:{i:0;i:72;}'),
(1001, 71, '_crosssell_ids', 'a:0:{}'),
(1002, 71, '_purchase_note', ''),
(1003, 71, '_default_attributes', 'a:0:{}'),
(1004, 71, '_virtual', 'no'),
(1005, 71, '_downloadable', 'no'),
(1006, 71, '_product_image_gallery', '130,131,132,133'),
(1007, 71, '_download_limit', '0'),
(1008, 71, '_download_expiry', '0'),
(1009, 71, '_stock', NULL),
(1010, 71, '_stock_status', 'instock'),
(1011, 71, '_wc_average_rating', '0'),
(1012, 71, '_wc_rating_count', 'a:0:{}'),
(1013, 71, '_wc_review_count', '0'),
(1014, 71, '_downloadable_files', 'a:0:{}'),
(1015, 71, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1016, 71, '_product_version', '3.2.5'),
(1018, 72, '_sku', 'HOODIE-SHIP-YOUR-IDEA'),
(1019, 72, '_regular_price', '30'),
(1020, 72, '_sale_price', ''),
(1021, 72, '_sale_price_dates_from', ''),
(1022, 72, '_sale_price_dates_to', ''),
(1023, 72, 'total_sales', '0'),
(1024, 72, '_tax_status', 'taxable'),
(1025, 72, '_tax_class', ''),
(1026, 72, '_manage_stock', 'no'),
(1027, 72, '_backorders', 'no'),
(1028, 72, '_sold_individually', 'no'),
(1029, 72, '_weight', ''),
(1030, 72, '_length', ''),
(1031, 72, '_width', ''),
(1032, 72, '_height', ''),
(1033, 72, '_upsell_ids', 'a:0:{}'),
(1034, 72, '_crosssell_ids', 'a:1:{i:0;i:71;}'),
(1035, 72, '_purchase_note', ''),
(1036, 72, '_default_attributes', 'a:2:{s:8:\"pa_color\";s:5:\"black\";s:4:\"size\";s:1:\"L\";}'),
(1037, 72, '_virtual', 'no'),
(1038, 72, '_downloadable', 'no'),
(1039, 72, '_product_image_gallery', '118,119,120'),
(1040, 72, '_download_limit', '0'),
(1041, 72, '_download_expiry', '0'),
(1042, 72, '_stock', NULL),
(1043, 72, '_stock_status', 'instock'),
(1044, 72, '_wc_average_rating', '0'),
(1045, 72, '_wc_rating_count', 'a:0:{}'),
(1046, 72, '_wc_review_count', '0'),
(1047, 72, '_downloadable_files', 'a:0:{}'),
(1048, 72, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"size\";a:6:{s:4:\"name\";s:4:\"Size\";s:5:\"value\";s:6:\"L | XL\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(1049, 72, '_product_version', '3.2.5'),
(1051, 73, '_sku', 'T-SHIRT-NINJA-SILHOUETTE'),
(1052, 73, '_regular_price', '20'),
(1053, 73, '_sale_price', ''),
(1054, 73, '_sale_price_dates_from', ''),
(1055, 73, '_sale_price_dates_to', ''),
(1056, 73, 'total_sales', '0'),
(1057, 73, '_tax_status', 'taxable'),
(1058, 73, '_tax_class', ''),
(1059, 73, '_manage_stock', 'no'),
(1060, 73, '_backorders', 'no'),
(1061, 73, '_sold_individually', 'no'),
(1062, 73, '_weight', ''),
(1063, 73, '_length', ''),
(1064, 73, '_width', ''),
(1065, 73, '_height', ''),
(1066, 73, '_upsell_ids', 'a:1:{i:0;i:76;}'),
(1067, 73, '_crosssell_ids', 'a:2:{i:0;i:68;i:1;i:74;}'),
(1068, 73, '_purchase_note', ''),
(1069, 73, '_default_attributes', 'a:0:{}'),
(1070, 73, '_virtual', 'no'),
(1071, 73, '_downloadable', 'no'),
(1072, 73, '_product_image_gallery', '128'),
(1073, 73, '_download_limit', '0'),
(1074, 73, '_download_expiry', '0'),
(1075, 73, '_stock', NULL),
(1076, 73, '_stock_status', 'instock'),
(1077, 73, '_wc_average_rating', '0'),
(1078, 73, '_wc_rating_count', 'a:0:{}'),
(1079, 73, '_wc_review_count', '0'),
(1080, 73, '_downloadable_files', 'a:0:{}'),
(1081, 73, '_product_attributes', 'a:0:{}'),
(1082, 73, '_product_version', '3.2.5'),
(1083, 73, '_price', '20'),
(1084, 74, '_sku', 'T-SHIRT-HAPPY-NINJA'),
(1085, 74, '_regular_price', '18'),
(1086, 74, '_sale_price', ''),
(1087, 74, '_sale_price_dates_from', ''),
(1088, 74, '_sale_price_dates_to', ''),
(1089, 74, 'total_sales', '0'),
(1090, 74, '_tax_status', 'taxable'),
(1091, 74, '_tax_class', ''),
(1092, 74, '_manage_stock', 'no'),
(1093, 74, '_backorders', 'no'),
(1094, 74, '_sold_individually', 'no'),
(1095, 74, '_weight', ''),
(1096, 74, '_length', ''),
(1097, 74, '_width', ''),
(1098, 74, '_height', ''),
(1099, 74, '_upsell_ids', 'a:1:{i:0;i:75;}'),
(1100, 74, '_crosssell_ids', 'a:2:{i:0;i:68;i:1;i:73;}'),
(1101, 74, '_purchase_note', ''),
(1102, 74, '_default_attributes', 'a:0:{}'),
(1103, 74, '_virtual', 'no'),
(1104, 74, '_downloadable', 'no'),
(1105, 74, '_product_image_gallery', '124'),
(1106, 74, '_download_limit', '0'),
(1107, 74, '_download_expiry', '0'),
(1108, 74, '_stock', NULL),
(1109, 74, '_stock_status', 'instock'),
(1110, 74, '_wc_average_rating', '0'),
(1111, 74, '_wc_rating_count', 'a:0:{}'),
(1112, 74, '_wc_review_count', '0'),
(1113, 74, '_downloadable_files', 'a:0:{}'),
(1114, 74, '_product_attributes', 'a:0:{}'),
(1115, 74, '_product_version', '3.2.5'),
(1116, 74, '_price', '18'),
(1117, 75, '_sku', 'HOODIE-HAPPY-NINJA'),
(1118, 75, '_regular_price', '35'),
(1119, 75, '_sale_price', ''),
(1120, 75, '_sale_price_dates_from', ''),
(1121, 75, '_sale_price_dates_to', ''),
(1122, 75, 'total_sales', '0'),
(1123, 75, '_tax_status', 'taxable'),
(1124, 75, '_tax_class', ''),
(1125, 75, '_manage_stock', 'no'),
(1126, 75, '_backorders', 'no'),
(1127, 75, '_sold_individually', 'no'),
(1128, 75, '_weight', ''),
(1129, 75, '_length', ''),
(1130, 75, '_width', ''),
(1131, 75, '_height', ''),
(1132, 75, '_upsell_ids', 'a:0:{}'),
(1133, 75, '_crosssell_ids', 'a:1:{i:0;i:74;}'),
(1134, 75, '_purchase_note', ''),
(1135, 75, '_default_attributes', 'a:0:{}'),
(1136, 75, '_virtual', 'no'),
(1137, 75, '_downloadable', 'no'),
(1138, 75, '_product_image_gallery', '111'),
(1139, 75, '_download_limit', '0'),
(1140, 75, '_download_expiry', '0'),
(1141, 75, '_stock', NULL),
(1142, 75, '_stock_status', 'instock'),
(1143, 75, '_wc_average_rating', '0'),
(1144, 75, '_wc_rating_count', 'a:0:{}'),
(1145, 75, '_wc_review_count', '0'),
(1146, 75, '_downloadable_files', 'a:0:{}'),
(1147, 75, '_product_attributes', 'a:0:{}'),
(1148, 75, '_product_version', '3.2.5'),
(1149, 75, '_price', '35'),
(1150, 76, '_sku', 'HOODIE-NINJA-SILHOUETTE'),
(1151, 76, '_regular_price', '30'),
(1152, 76, '_sale_price', ''),
(1153, 76, '_sale_price_dates_from', ''),
(1154, 76, '_sale_price_dates_to', ''),
(1155, 76, 'total_sales', '0'),
(1156, 76, '_tax_status', 'taxable'),
(1157, 76, '_tax_class', ''),
(1158, 76, '_manage_stock', 'no'),
(1159, 76, '_backorders', 'no'),
(1160, 76, '_sold_individually', 'no'),
(1161, 76, '_weight', ''),
(1162, 76, '_length', ''),
(1163, 76, '_width', ''),
(1164, 76, '_height', ''),
(1165, 76, '_upsell_ids', 'a:0:{}'),
(1166, 76, '_crosssell_ids', 'a:1:{i:0;i:73;}'),
(1167, 76, '_purchase_note', ''),
(1168, 76, '_default_attributes', 'a:0:{}'),
(1169, 76, '_virtual', 'no'),
(1170, 76, '_downloadable', 'no'),
(1171, 76, '_product_image_gallery', '109'),
(1172, 76, '_download_limit', '0'),
(1173, 76, '_download_expiry', '0'),
(1174, 76, '_stock', NULL),
(1175, 76, '_stock_status', 'instock'),
(1176, 76, '_wc_average_rating', '0'),
(1177, 76, '_wc_rating_count', 'a:0:{}'),
(1178, 76, '_wc_review_count', '0'),
(1179, 76, '_downloadable_files', 'a:0:{}'),
(1180, 76, '_product_attributes', 'a:0:{}'),
(1181, 76, '_product_version', '3.2.5'),
(1182, 76, '_price', '30'),
(1183, 77, '_wp_attached_file', '2017/12/cd_6_angle.jpg'),
(1184, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2017/12/cd_6_angle.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1185, 77, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_6_angle.jpg'),
(1186, 78, '_wp_attached_file', '2017/12/cd_6_flat.jpg'),
(1187, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/cd_6_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1188, 78, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_6_flat.jpg'),
(1189, 62, '_wp_old_slug', 'import-placeholder-for-woo-single-2'),
(1190, 62, '_thumbnail_id', '77'),
(1191, 79, '_wp_attached_file', '2017/12/cd_4_angle.jpg'),
(1192, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2017/12/cd_4_angle.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1193, 79, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg'),
(1194, 80, '_wp_attached_file', '2017/12/cd_4_flat.jpg'),
(1195, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/cd_4_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1196, 80, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_flat.jpg'),
(1197, 61, '_wp_old_slug', 'import-placeholder-for-woo-single-1'),
(1198, 61, '_thumbnail_id', '79'),
(1199, 81, '_children', 'a:2:{i:0;i:61;i:1;i:62;}'),
(1200, 81, '_sku', 'WOO-SINGLES'),
(1201, 81, '_regular_price', ''),
(1202, 81, '_sale_price', ''),
(1203, 81, '_sale_price_dates_from', ''),
(1204, 81, '_sale_price_dates_to', ''),
(1205, 81, 'total_sales', '0'),
(1206, 81, '_tax_status', 'taxable'),
(1207, 81, '_tax_class', ''),
(1208, 81, '_manage_stock', 'no'),
(1209, 81, '_backorders', 'no'),
(1210, 81, '_sold_individually', 'no'),
(1211, 81, '_weight', ''),
(1212, 81, '_length', ''),
(1213, 81, '_width', ''),
(1214, 81, '_height', ''),
(1215, 81, '_upsell_ids', 'a:2:{i:0;i:63;i:1;i:64;}'),
(1216, 81, '_crosssell_ids', 'a:1:{i:0;i:65;}'),
(1217, 81, '_purchase_note', ''),
(1218, 81, '_default_attributes', 'a:0:{}'),
(1219, 81, '_virtual', 'no'),
(1220, 81, '_downloadable', 'no'),
(1221, 81, '_product_image_gallery', ''),
(1222, 81, '_download_limit', '0'),
(1223, 81, '_download_expiry', '0'),
(1224, 81, '_thumbnail_id', '78'),
(1225, 81, '_stock', NULL),
(1226, 81, '_stock_status', 'instock'),
(1227, 81, '_wc_average_rating', '0'),
(1228, 81, '_wc_rating_count', 'a:0:{}'),
(1229, 81, '_wc_review_count', '0'),
(1230, 81, '_downloadable_files', 'a:0:{}'),
(1231, 81, '_product_attributes', 'a:0:{}'),
(1232, 81, '_product_version', '3.2.5'),
(1233, 81, '_price', ''),
(1234, 81, '_price', ''),
(1235, 82, '_wp_attached_file', '2017/12/cd_5_angle.jpg'),
(1236, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2017/12/cd_5_angle.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1237, 82, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_5_angle.jpg'),
(1238, 83, '_wp_attached_file', '2017/12/cd_5_flat.jpg'),
(1239, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/cd_5_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1240, 83, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_5_flat.jpg'),
(1241, 84, '_sku', 'WOO-ALBUM-4'),
(1242, 84, '_regular_price', '9'),
(1243, 84, '_sale_price', ''),
(1244, 84, '_sale_price_dates_from', ''),
(1245, 84, '_sale_price_dates_to', ''),
(1246, 84, 'total_sales', '0'),
(1247, 84, '_tax_status', 'taxable'),
(1248, 84, '_tax_class', ''),
(1249, 84, '_manage_stock', 'no'),
(1250, 84, '_backorders', 'no'),
(1251, 84, '_sold_individually', 'no'),
(1252, 84, '_weight', ''),
(1253, 84, '_length', ''),
(1254, 84, '_width', ''),
(1255, 84, '_height', ''),
(1256, 84, '_upsell_ids', 'a:0:{}'),
(1257, 84, '_crosssell_ids', 'a:0:{}'),
(1258, 84, '_purchase_note', ''),
(1259, 84, '_default_attributes', 'a:0:{}'),
(1260, 84, '_virtual', 'yes'),
(1261, 84, '_downloadable', 'no'),
(1262, 84, '_product_image_gallery', '83'),
(1263, 84, '_download_limit', '0'),
(1264, 84, '_download_expiry', '0'),
(1265, 84, '_thumbnail_id', '82'),
(1266, 84, '_stock', NULL),
(1267, 84, '_stock_status', 'instock'),
(1268, 84, '_wc_average_rating', '0'),
(1269, 84, '_wc_rating_count', 'a:0:{}'),
(1270, 84, '_wc_review_count', '0'),
(1271, 84, '_downloadable_files', 'a:0:{}'),
(1272, 84, '_product_attributes', 'a:0:{}'),
(1273, 84, '_product_version', '3.2.5'),
(1274, 84, '_price', '9'),
(1275, 85, '_wp_attached_file', '2017/12/cd_3_angle.jpg'),
(1276, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2017/12/cd_3_angle.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1277, 85, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_angle.jpg'),
(1278, 86, '_wp_attached_file', '2017/12/cd_3_flat.jpg'),
(1279, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/cd_3_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1280, 86, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_flat.jpg'),
(1281, 65, '_wp_old_slug', 'import-placeholder-for-woo-album-3'),
(1282, 65, '_thumbnail_id', '85'),
(1283, 87, '_wp_attached_file', '2017/12/cd_2_angle.jpg'),
(1284, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2017/12/cd_2_angle.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1285, 87, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_2_angle.jpg'),
(1286, 88, '_wp_attached_file', '2017/12/cd_2_flat.jpg'),
(1287, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/cd_2_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1288, 88, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_2_flat.jpg'),
(1289, 64, '_wp_old_slug', 'import-placeholder-for-woo-album-2'),
(1290, 64, '_thumbnail_id', '87'),
(1291, 89, '_wp_attached_file', '2017/12/cd_1_angle.jpg'),
(1292, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2017/12/cd_1_angle.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1293, 89, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_1_angle.jpg'),
(1294, 90, '_wp_attached_file', '2017/12/cd_1_flat.jpg'),
(1295, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/cd_1_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1296, 90, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_1_flat.jpg'),
(1297, 63, '_wp_old_slug', 'import-placeholder-for-woo-album-1'),
(1298, 63, '_thumbnail_id', '89'),
(1299, 91, '_wp_attached_file', '2017/12/poster_5_up.jpg'),
(1300, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2017/12/poster_5_up.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_5_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_5_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_5_up-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1301, 91, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_5_up.jpg'),
(1302, 92, '_wp_attached_file', '2017/12/Poster_5_flat.jpg'),
(1303, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/Poster_5_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1304, 92, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_5_flat.jpg'),
(1305, 93, '_sku', 'POSTER-WOO-LOGO'),
(1306, 93, '_regular_price', '15'),
(1307, 93, '_sale_price', ''),
(1308, 93, '_sale_price_dates_from', ''),
(1309, 93, '_sale_price_dates_to', ''),
(1310, 93, 'total_sales', '0'),
(1311, 93, '_tax_status', 'taxable'),
(1312, 93, '_tax_class', ''),
(1313, 93, '_manage_stock', 'no'),
(1314, 93, '_backorders', 'no'),
(1315, 93, '_sold_individually', 'no'),
(1316, 93, '_weight', ''),
(1317, 93, '_length', ''),
(1318, 93, '_width', ''),
(1319, 93, '_height', ''),
(1320, 93, '_upsell_ids', 'a:0:{}'),
(1321, 93, '_crosssell_ids', 'a:2:{i:0;i:66;i:1;i:67;}'),
(1322, 93, '_purchase_note', ''),
(1323, 93, '_default_attributes', 'a:0:{}'),
(1324, 93, '_virtual', 'no'),
(1325, 93, '_downloadable', 'no'),
(1326, 93, '_product_image_gallery', '92'),
(1327, 93, '_download_limit', '0'),
(1328, 93, '_download_expiry', '0'),
(1329, 93, '_thumbnail_id', '91'),
(1330, 93, '_stock', NULL),
(1331, 93, '_stock_status', 'instock'),
(1332, 93, '_wc_average_rating', '0'),
(1333, 93, '_wc_rating_count', 'a:0:{}'),
(1334, 93, '_wc_review_count', '0'),
(1335, 93, '_downloadable_files', 'a:0:{}'),
(1336, 93, '_product_attributes', 'a:0:{}'),
(1337, 93, '_product_version', '3.2.5'),
(1338, 93, '_price', '15'),
(1339, 94, '_wp_attached_file', '2017/12/poster_4_up.jpg'),
(1340, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2017/12/poster_4_up.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_4_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_4_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_4_up-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1341, 94, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_4_up.jpg'),
(1342, 95, '_wp_attached_file', '2017/12/Poster_4_flat.jpg'),
(1343, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/Poster_4_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1344, 95, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_4_flat.jpg'),
(1345, 96, '_sku', 'POSTER-WOO-NINJA'),
(1346, 96, '_regular_price', '15'),
(1347, 96, '_sale_price', ''),
(1348, 96, '_sale_price_dates_from', ''),
(1349, 96, '_sale_price_dates_to', ''),
(1350, 96, 'total_sales', '0'),
(1351, 96, '_tax_status', 'taxable'),
(1352, 96, '_tax_class', ''),
(1353, 96, '_manage_stock', 'no'),
(1354, 96, '_backorders', 'no'),
(1355, 96, '_sold_individually', 'no'),
(1356, 96, '_weight', ''),
(1357, 96, '_length', ''),
(1358, 96, '_width', ''),
(1359, 96, '_height', ''),
(1360, 96, '_upsell_ids', 'a:0:{}'),
(1361, 96, '_crosssell_ids', 'a:2:{i:0;i:68;i:1;i:69;}'),
(1362, 96, '_purchase_note', ''),
(1363, 96, '_default_attributes', 'a:0:{}'),
(1364, 96, '_virtual', 'no'),
(1365, 96, '_downloadable', 'no'),
(1366, 96, '_product_image_gallery', '95'),
(1367, 96, '_download_limit', '0'),
(1368, 96, '_download_expiry', '0'),
(1369, 96, '_thumbnail_id', '94'),
(1370, 96, '_stock', NULL),
(1371, 96, '_stock_status', 'instock'),
(1372, 96, '_wc_average_rating', '0'),
(1373, 96, '_wc_rating_count', 'a:0:{}'),
(1374, 96, '_wc_review_count', '0'),
(1375, 96, '_downloadable_files', 'a:0:{}'),
(1376, 96, '_product_attributes', 'a:0:{}'),
(1377, 96, '_product_version', '3.2.5'),
(1378, 96, '_price', '15'),
(1379, 97, '_wp_attached_file', '2017/12/poster_3_up.jpg'),
(1380, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2017/12/poster_3_up.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_3_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_3_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_3_up-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1381, 97, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_3_up.jpg'),
(1382, 98, '_wp_attached_file', '2017/12/Poster_3_flat.jpg'),
(1383, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/Poster_3_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1384, 98, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_3_flat.jpg'),
(1385, 99, '_sku', 'POSTER-PREMIUM-QUALITY'),
(1386, 99, '_regular_price', '15'),
(1387, 99, '_sale_price', '12'),
(1388, 99, '_sale_price_dates_from', ''),
(1389, 99, '_sale_price_dates_to', ''),
(1390, 99, 'total_sales', '0'),
(1391, 99, '_tax_status', 'taxable'),
(1392, 99, '_tax_class', ''),
(1393, 99, '_manage_stock', 'no'),
(1394, 99, '_backorders', 'no'),
(1395, 99, '_sold_individually', 'no'),
(1396, 99, '_weight', ''),
(1397, 99, '_length', ''),
(1398, 99, '_width', ''),
(1399, 99, '_height', ''),
(1400, 99, '_upsell_ids', 'a:1:{i:0;i:70;}'),
(1401, 99, '_crosssell_ids', 'a:0:{}'),
(1402, 99, '_purchase_note', ''),
(1403, 99, '_default_attributes', 'a:0:{}'),
(1404, 99, '_virtual', 'no'),
(1405, 99, '_downloadable', 'no'),
(1406, 99, '_product_image_gallery', '98'),
(1407, 99, '_download_limit', '0'),
(1408, 99, '_download_expiry', '0'),
(1409, 99, '_thumbnail_id', '97'),
(1410, 99, '_stock', NULL),
(1411, 99, '_stock_status', 'instock'),
(1412, 99, '_wc_average_rating', '0'),
(1413, 99, '_wc_rating_count', 'a:0:{}'),
(1414, 99, '_wc_review_count', '0'),
(1415, 99, '_downloadable_files', 'a:0:{}'),
(1416, 99, '_product_attributes', 'a:0:{}'),
(1417, 99, '_product_version', '3.2.5'),
(1418, 99, '_price', '12'),
(1419, 100, '_wp_attached_file', '2017/12/poster_2_up.jpg'),
(1420, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2017/12/poster_2_up.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_2_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_2_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_2_up-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1421, 100, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_2_up.jpg'),
(1422, 101, '_wp_attached_file', '2017/12/Poster_2_flat.jpg'),
(1423, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/Poster_2_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1424, 101, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_2_flat.jpg'),
(1425, 102, '_sku', 'POSTER-FLYING-NINJA'),
(1426, 102, '_regular_price', '150000'),
(1427, 102, '_sale_price', '120000'),
(1428, 102, '_sale_price_dates_from', ''),
(1429, 102, '_sale_price_dates_to', ''),
(1430, 102, 'total_sales', '0'),
(1431, 102, '_tax_status', 'taxable'),
(1432, 102, '_tax_class', ''),
(1433, 102, '_manage_stock', 'no'),
(1434, 102, '_backorders', 'no'),
(1435, 102, '_sold_individually', 'no'),
(1436, 102, '_weight', ''),
(1437, 102, '_length', ''),
(1438, 102, '_width', ''),
(1439, 102, '_height', ''),
(1440, 102, '_upsell_ids', 'a:0:{}'),
(1441, 102, '_crosssell_ids', 'a:0:{}'),
(1442, 102, '_purchase_note', ''),
(1443, 102, '_default_attributes', 'a:0:{}'),
(1444, 102, '_virtual', 'no'),
(1445, 102, '_downloadable', 'no'),
(1446, 102, '_product_image_gallery', '101'),
(1447, 102, '_download_limit', '0'),
(1448, 102, '_download_expiry', '0'),
(1449, 102, '_thumbnail_id', '100'),
(1450, 102, '_stock', NULL),
(1451, 102, '_stock_status', 'instock'),
(1452, 102, '_wc_average_rating', '0'),
(1453, 102, '_wc_rating_count', 'a:0:{}'),
(1454, 102, '_wc_review_count', '0'),
(1455, 102, '_downloadable_files', 'a:0:{}'),
(1456, 102, '_product_attributes', 'a:0:{}'),
(1457, 102, '_product_version', '3.2.5'),
(1458, 102, '_price', '120000'),
(1459, 103, '_wp_attached_file', '2017/12/poster_1_up.jpg'),
(1460, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2017/12/poster_1_up.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_1_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_1_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_1_up-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1461, 103, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_1_up.jpg'),
(1462, 104, '_wp_attached_file', '2017/12/Poster_1_flat.jpg'),
(1463, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/Poster_1_flat.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1464, 104, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_1_flat.jpg'),
(1465, 105, '_sku', 'POSTER-SHIP-YOUR-IDEA'),
(1466, 105, '_regular_price', '15'),
(1467, 105, '_sale_price', ''),
(1468, 105, '_sale_price_dates_from', ''),
(1469, 105, '_sale_price_dates_to', ''),
(1470, 105, 'total_sales', '0'),
(1471, 105, '_tax_status', 'taxable'),
(1472, 105, '_tax_class', ''),
(1473, 105, '_manage_stock', 'no'),
(1474, 105, '_backorders', 'no'),
(1475, 105, '_sold_individually', 'no'),
(1476, 105, '_weight', ''),
(1477, 105, '_length', ''),
(1478, 105, '_width', ''),
(1479, 105, '_height', ''),
(1480, 105, '_upsell_ids', 'a:2:{i:0;i:71;i:1;i:72;}'),
(1481, 105, '_crosssell_ids', 'a:2:{i:0;i:71;i:1;i:72;}'),
(1482, 105, '_purchase_note', ''),
(1483, 105, '_default_attributes', 'a:0:{}'),
(1484, 105, '_virtual', 'no'),
(1485, 105, '_downloadable', 'no'),
(1486, 105, '_product_image_gallery', '104'),
(1487, 105, '_download_limit', '0'),
(1488, 105, '_download_expiry', '0'),
(1489, 105, '_thumbnail_id', '103'),
(1490, 105, '_stock', NULL),
(1491, 105, '_stock_status', 'instock'),
(1492, 105, '_wc_average_rating', '0'),
(1493, 105, '_wc_rating_count', 'a:0:{}'),
(1494, 105, '_wc_review_count', '0'),
(1495, 105, '_downloadable_files', 'a:0:{}'),
(1496, 105, '_product_attributes', 'a:0:{}'),
(1497, 105, '_product_version', '3.2.5'),
(1498, 105, '_price', '15'),
(1499, 106, '_wp_attached_file', '2017/12/hoodie_6_front.jpg'),
(1500, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2017/12/hoodie_6_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1501, 106, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_6_front.jpg'),
(1502, 107, '_wp_attached_file', '2017/12/hoodie_6_back.jpg'),
(1503, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/hoodie_6_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1504, 107, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_6_back.jpg'),
(1505, 67, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-logo'),
(1506, 67, '_thumbnail_id', '106'),
(1507, 108, '_wp_attached_file', '2017/12/hoodie_5_front.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1508, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2017/12/hoodie_5_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1509, 108, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_5_front.jpg'),
(1510, 109, '_wp_attached_file', '2017/12/hoodie_5_back.jpg'),
(1511, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/hoodie_5_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1512, 109, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_5_back.jpg'),
(1513, 76, '_wp_old_slug', 'import-placeholder-for-hoodie-ninja-silhouette'),
(1514, 76, '_thumbnail_id', '108'),
(1515, 76, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-logo-black-zip-hoodie/'),
(1516, 76, '_button_text', 'Buy on WordPress Swag Store'),
(1517, 110, '_wp_attached_file', '2017/12/hoodie_4_front.jpg'),
(1518, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2017/12/hoodie_4_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1519, 110, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_4_front.jpg'),
(1520, 111, '_wp_attached_file', '2017/12/hoodie_4_back.jpg'),
(1521, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/hoodie_4_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1522, 111, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_4_back.jpg'),
(1523, 75, '_wp_old_slug', 'import-placeholder-for-hoodie-happy-ninja'),
(1524, 75, '_thumbnail_id', '110'),
(1525, 112, '_wp_attached_file', '2017/12/hoodie_3_front.jpg'),
(1526, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2017/12/hoodie_3_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1527, 112, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_3_front.jpg'),
(1528, 113, '_wp_attached_file', '2017/12/hoodie_3_back.jpg'),
(1529, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/hoodie_3_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1530, 113, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_3_back.jpg'),
(1531, 114, '_sku', 'HOODIE-PATIENT-NINJA'),
(1532, 114, '_regular_price', '35000'),
(1533, 114, '_sale_price', ''),
(1534, 114, '_sale_price_dates_from', ''),
(1535, 114, '_sale_price_dates_to', ''),
(1536, 114, 'total_sales', '0'),
(1537, 114, '_tax_status', 'taxable'),
(1538, 114, '_tax_class', ''),
(1539, 114, '_manage_stock', 'no'),
(1540, 114, '_backorders', 'no'),
(1541, 114, '_sold_individually', 'no'),
(1542, 114, '_weight', ''),
(1543, 114, '_length', ''),
(1544, 114, '_width', ''),
(1545, 114, '_height', ''),
(1546, 114, '_upsell_ids', 'a:0:{}'),
(1547, 114, '_crosssell_ids', 'a:1:{i:0;i:75;}'),
(1548, 114, '_purchase_note', ''),
(1549, 114, '_default_attributes', 'a:0:{}'),
(1550, 114, '_virtual', 'no'),
(1551, 114, '_downloadable', 'no'),
(1552, 114, '_product_image_gallery', '113'),
(1553, 114, '_download_limit', '0'),
(1554, 114, '_download_expiry', '0'),
(1555, 114, '_thumbnail_id', '112'),
(1556, 114, '_stock', NULL),
(1557, 114, '_stock_status', 'instock'),
(1558, 114, '_wc_average_rating', '0'),
(1559, 114, '_wc_rating_count', 'a:0:{}'),
(1560, 114, '_wc_review_count', '0'),
(1561, 114, '_downloadable_files', 'a:0:{}'),
(1562, 114, '_product_attributes', 'a:0:{}'),
(1563, 114, '_product_version', '3.2.5'),
(1564, 114, '_price', '35000'),
(1565, 115, '_wp_attached_file', '2017/12/hoodie_2_front.jpg'),
(1566, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2017/12/hoodie_2_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1567, 115, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_2_front.jpg'),
(1568, 116, '_wp_attached_file', '2017/12/hoodie_2_back.jpg'),
(1569, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/hoodie_2_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1570, 116, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_2_back.jpg'),
(1571, 69, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-ninja'),
(1572, 69, '_thumbnail_id', '115'),
(1573, 117, '_wp_attached_file', '2017/12/hoodie_7_front.jpg'),
(1574, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2017/12/hoodie_7_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1575, 117, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_7_front.jpg'),
(1576, 118, '_wp_attached_file', '2017/12/hoodie_7_back.jpg'),
(1577, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/hoodie_7_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1578, 118, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_7_back.jpg'),
(1579, 119, '_wp_attached_file', '2017/12/hoodie_1_back.jpg'),
(1580, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2017/12/hoodie_1_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1581, 119, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_1_back.jpg'),
(1582, 120, '_wp_attached_file', '2017/12/hoodie_1_front.jpg'),
(1583, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2017/12/hoodie_1_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1584, 120, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_1_front.jpg'),
(1585, 72, '_wp_old_slug', 'import-placeholder-for-hoodie-ship-your-idea'),
(1586, 72, '_thumbnail_id', '117'),
(1587, 121, '_variation_description', ''),
(1588, 121, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLUE-XL'),
(1589, 121, '_regular_price', '35'),
(1590, 121, '_sale_price', '30'),
(1591, 121, '_sale_price_dates_from', ''),
(1592, 121, '_sale_price_dates_to', ''),
(1593, 121, 'total_sales', '0'),
(1594, 121, '_tax_status', 'taxable'),
(1595, 121, '_tax_class', ''),
(1596, 121, '_manage_stock', 'no'),
(1597, 121, '_backorders', 'no'),
(1598, 121, '_sold_individually', 'no'),
(1599, 121, '_weight', ''),
(1600, 121, '_length', ''),
(1601, 121, '_width', ''),
(1602, 121, '_height', ''),
(1603, 121, '_upsell_ids', 'a:0:{}'),
(1604, 121, '_crosssell_ids', 'a:1:{i:0;i:71;}'),
(1605, 121, '_purchase_note', ''),
(1606, 121, '_default_attributes', 'a:0:{}'),
(1607, 121, '_virtual', 'no'),
(1608, 121, '_downloadable', 'no'),
(1609, 121, '_product_image_gallery', ''),
(1610, 121, '_download_limit', '0'),
(1611, 121, '_download_expiry', '0'),
(1612, 121, '_thumbnail_id', '120'),
(1613, 121, '_stock', NULL),
(1614, 121, '_stock_status', 'instock'),
(1615, 121, '_wc_average_rating', '0'),
(1616, 121, '_wc_rating_count', 'a:0:{}'),
(1617, 121, '_wc_review_count', '0'),
(1618, 121, '_downloadable_files', 'a:0:{}'),
(1619, 121, 'attribute_pa_color', 'blue'),
(1620, 121, 'attribute_size', 'XL'),
(1621, 121, '_price', '30'),
(1622, 121, '_product_version', '3.2.5'),
(1623, 122, '_variation_description', ''),
(1624, 122, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLACK-L'),
(1625, 122, '_regular_price', '35'),
(1626, 122, '_sale_price', ''),
(1627, 122, '_sale_price_dates_from', ''),
(1628, 122, '_sale_price_dates_to', ''),
(1629, 122, 'total_sales', '0'),
(1630, 122, '_tax_status', 'taxable'),
(1631, 122, '_tax_class', ''),
(1632, 122, '_manage_stock', 'no'),
(1633, 122, '_backorders', 'no'),
(1634, 122, '_sold_individually', 'no'),
(1635, 122, '_weight', ''),
(1636, 122, '_length', ''),
(1637, 122, '_width', ''),
(1638, 122, '_height', ''),
(1639, 122, '_upsell_ids', 'a:0:{}'),
(1640, 122, '_crosssell_ids', 'a:1:{i:0;i:71;}'),
(1641, 122, '_purchase_note', ''),
(1642, 122, '_default_attributes', 'a:0:{}'),
(1643, 122, '_virtual', 'no'),
(1644, 122, '_downloadable', 'no'),
(1645, 122, '_product_image_gallery', ''),
(1646, 122, '_download_limit', '0'),
(1647, 122, '_download_expiry', '0'),
(1648, 122, '_thumbnail_id', '117'),
(1649, 122, '_stock', NULL),
(1650, 122, '_stock_status', 'instock'),
(1651, 122, '_wc_average_rating', '0'),
(1652, 122, '_wc_rating_count', 'a:0:{}'),
(1653, 122, '_wc_review_count', '0'),
(1654, 122, '_downloadable_files', 'a:0:{}'),
(1655, 122, 'attribute_pa_color', 'black'),
(1656, 122, 'attribute_size', 'L'),
(1657, 122, '_price', '35'),
(1658, 122, '_product_version', '3.2.5'),
(1659, 123, '_wp_attached_file', '2017/12/T_7_front.jpg'),
(1660, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/T_7_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_7_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1661, 123, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_7_front.jpg'),
(1662, 124, '_wp_attached_file', '2017/12/T_7_back.jpg'),
(1663, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2017/12/T_7_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_7_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1664, 124, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_7_back.jpg'),
(1665, 74, '_wp_old_slug', 'import-placeholder-for-t-shirt-happy-ninja'),
(1666, 74, '_thumbnail_id', '123'),
(1667, 72, '_price', '30'),
(1668, 72, '_price', '35'),
(1669, 125, '_wp_attached_file', '2017/12/T_6_front.jpg'),
(1670, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/T_6_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_6_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1671, 125, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_6_front.jpg'),
(1672, 126, '_wp_attached_file', '2017/12/T_6_back.jpg'),
(1673, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2017/12/T_6_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_6_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1674, 126, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_6_back.jpg'),
(1675, 68, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-ninja'),
(1676, 68, '_thumbnail_id', '125'),
(1677, 127, '_wp_attached_file', '2017/12/T_5_front.jpg'),
(1678, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/T_5_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_5_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1679, 127, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_5_front.jpg'),
(1680, 128, '_wp_attached_file', '2017/12/T_5_back.jpg'),
(1681, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2017/12/T_5_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_5_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1682, 128, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_5_back.jpg'),
(1683, 73, '_wp_old_slug', 'import-placeholder-for-t-shirt-ninja-silhouette'),
(1684, 73, '_thumbnail_id', '127'),
(1685, 129, '_wp_attached_file', '2017/12/T_4_front.jpg'),
(1686, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/T_4_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_4_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1687, 129, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg'),
(1688, 130, '_wp_attached_file', '2017/12/T_3_back.jpg'),
(1689, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2017/12/T_3_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_3_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1690, 130, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg'),
(1691, 131, '_wp_attached_file', '2017/12/T_3_front.jpg'),
(1692, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/T_3_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_3_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1693, 131, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg'),
(1694, 132, '_wp_attached_file', '2017/12/T_4_back.jpg'),
(1695, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2017/12/T_4_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_4_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1696, 132, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg'),
(1697, 133, '_wp_attached_file', '2017/12/T_4_front1.jpg'),
(1698, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2017/12/T_4_front1.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"T_4_front1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"T_4_front1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"T_4_front1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1699, 133, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front1.jpg'),
(1700, 71, '_wp_old_slug', 'import-placeholder-for-t-shirt-ship-your-idea'),
(1701, 71, '_thumbnail_id', '129'),
(1702, 134, '_variation_description', ''),
(1703, 134, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-GREEN'),
(1704, 134, '_regular_price', '20'),
(1705, 134, '_sale_price', ''),
(1706, 134, '_sale_price_dates_from', ''),
(1707, 134, '_sale_price_dates_to', ''),
(1708, 134, 'total_sales', '0'),
(1709, 134, '_tax_status', 'taxable'),
(1710, 134, '_tax_class', ''),
(1711, 134, '_manage_stock', 'no'),
(1712, 134, '_backorders', 'no'),
(1713, 134, '_sold_individually', 'no'),
(1714, 134, '_weight', ''),
(1715, 134, '_length', ''),
(1716, 134, '_width', ''),
(1717, 134, '_height', ''),
(1718, 134, '_upsell_ids', 'a:0:{}'),
(1719, 134, '_crosssell_ids', 'a:0:{}'),
(1720, 134, '_purchase_note', ''),
(1721, 134, '_default_attributes', 'a:0:{}'),
(1722, 134, '_virtual', 'no'),
(1723, 134, '_downloadable', 'no'),
(1724, 134, '_product_image_gallery', ''),
(1725, 134, '_download_limit', '0'),
(1726, 134, '_download_expiry', '0'),
(1727, 134, '_thumbnail_id', '131'),
(1728, 134, '_stock', NULL),
(1729, 134, '_stock_status', 'instock'),
(1730, 134, '_wc_average_rating', '0'),
(1731, 134, '_wc_rating_count', 'a:0:{}'),
(1732, 134, '_wc_review_count', '0'),
(1733, 134, '_downloadable_files', 'a:0:{}'),
(1734, 134, 'attribute_pa_color', 'green'),
(1735, 134, '_price', '20'),
(1736, 134, '_product_version', '3.2.5'),
(1737, 135, '_variation_description', ''),
(1738, 135, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-BLACK'),
(1739, 135, '_regular_price', '20'),
(1740, 135, '_sale_price', ''),
(1741, 135, '_sale_price_dates_from', ''),
(1742, 135, '_sale_price_dates_to', ''),
(1743, 135, 'total_sales', '0'),
(1744, 135, '_tax_status', 'taxable'),
(1745, 135, '_tax_class', ''),
(1746, 135, '_manage_stock', 'no'),
(1747, 135, '_backorders', 'no'),
(1748, 135, '_sold_individually', 'no'),
(1749, 135, '_weight', ''),
(1750, 135, '_length', ''),
(1751, 135, '_width', ''),
(1752, 135, '_height', ''),
(1753, 135, '_upsell_ids', 'a:0:{}'),
(1754, 135, '_crosssell_ids', 'a:0:{}'),
(1755, 135, '_purchase_note', ''),
(1756, 135, '_default_attributes', 'a:0:{}'),
(1757, 135, '_virtual', 'no'),
(1758, 135, '_downloadable', 'no'),
(1759, 135, '_product_image_gallery', ''),
(1760, 135, '_download_limit', '0'),
(1761, 135, '_download_expiry', '0'),
(1762, 135, '_thumbnail_id', '133'),
(1763, 135, '_stock', NULL),
(1764, 135, '_stock_status', 'instock'),
(1765, 135, '_wc_average_rating', '0'),
(1766, 135, '_wc_rating_count', 'a:0:{}'),
(1767, 135, '_wc_review_count', '0'),
(1768, 135, '_downloadable_files', 'a:0:{}'),
(1769, 135, 'attribute_pa_color', 'black'),
(1770, 135, '_price', '20'),
(1771, 135, '_product_version', '3.2.5'),
(1772, 136, '_wp_attached_file', '2017/12/T_2_front.jpg'),
(1773, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/T_2_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_2_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1774, 136, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg'),
(1775, 137, '_wp_attached_file', '2017/12/T_2_back.jpg'),
(1776, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2017/12/T_2_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_2_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1777, 137, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg'),
(1778, 70, '_wp_old_slug', 'import-placeholder-for-t-shirt-premium-quality'),
(1779, 70, '_thumbnail_id', '136'),
(1780, 71, '_price', '20'),
(1781, 138, '_wp_attached_file', '2017/12/T_1_front.jpg'),
(1782, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2017/12/T_1_front.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_1_front-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1783, 138, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_1_front.jpg'),
(1784, 139, '_wp_attached_file', '2017/12/T_1_back.jpg'),
(1785, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2017/12/T_1_back.jpg\";s:5:\"sizes\";a:4:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_1_back-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1786, 139, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_1_back.jpg'),
(1787, 66, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-logo'),
(1788, 66, '_thumbnail_id', '138'),
(1789, 52, '_wp_trash_meta_status', 'publish'),
(1790, 52, '_wp_trash_meta_time', '1512315582'),
(1791, 52, '_wp_desired_post_slug', 'san-pham-1'),
(1792, 140, '_edit_last', '1'),
(1793, 140, '_edit_lock', '1512316225:1'),
(1794, 140, '_wp_page_template', 'template-homepage.php'),
(1795, 140, '_yoast_wpseo_content_score', '30'),
(1796, 51, '_customize_restore_dismissed', '1'),
(1797, 142, '_edit_lock', '1512352472:1'),
(1798, 142, '_wp_trash_meta_status', 'publish'),
(1799, 142, '_wp_trash_meta_time', '1512352472'),
(1800, 114, '_edit_last', '1'),
(1801, 114, '_edit_lock', '1512468776:1'),
(1802, 102, '_edit_last', '1'),
(1803, 102, '_edit_lock', '1512382292:1'),
(1804, 143, '_edit_last', '1'),
(1805, 143, '_edit_lock', '1512383126:1'),
(1806, 145, '_wp_attached_file', '2017/12/Samsung-Galaxy-S8-Review-TI.jpg'),
(1807, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:39:\"2017/12/Samsung-Galaxy-S8-Review-TI.jpg\";s:5:\"sizes\";a:3:{s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"Samsung-Galaxy-S8-Review-TI-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"Samsung-Galaxy-S8-Review-TI-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"Samsung-Galaxy-S8-Review-TI-600x453.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:453;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1808, 144, '_edit_last', '1'),
(1809, 144, '_edit_lock', '1512443170:1'),
(1810, 144, '_thumbnail_id', '145'),
(1812, 144, '_yoast_wpseo_metadesc', 'Với 4 sắc màu đen huyền bí, vàng hổ phách, xanh san hô và mới nhất là tím khói, Galaxy S8 đang được đánh giá là smartphone cao cấp có mức giá dưới 20 tr...'),
(1813, 144, '_yoast_wpseo_content_score', '60'),
(1814, 144, '_yoast_wpseo_primary_category', '30'),
(1815, 143, '_wp_trash_meta_status', 'draft'),
(1816, 143, '_wp_trash_meta_time', '1512383827'),
(1817, 143, '_wp_desired_post_slug', ''),
(1819, 1, '_wp_trash_meta_status', 'publish'),
(1820, 1, '_wp_trash_meta_time', '1512443442'),
(1821, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(1822, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(1823, 151, '_edit_last', '1'),
(1824, 151, '_edit_lock', '1512444973:1'),
(1825, 152, '_wp_attached_file', '2017/12/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat.jpg'),
(1826, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:437;s:4:\"file\";s:62:\"2017/12/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat.jpg\";s:5:\"sizes\";a:3:{s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:62:\"Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:62:\"Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:62:\"Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-600x437.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:437;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1827, 151, '_thumbnail_id', '152'),
(1829, 151, '_yoast_wpseo_focuskw_text_input', 'Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát'),
(1830, 151, '_yoast_wpseo_focuskw', 'Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát'),
(1831, 151, '_yoast_wpseo_metadesc', 'BlackBerry concept mới là mẫu điện thoại hiện đại hoàn hảo, đậm chất nam tính, rất hợp với phái mạnh.'),
(1832, 151, '_yoast_wpseo_linkdex', '65'),
(1833, 151, '_yoast_wpseo_content_score', '30'),
(1834, 151, '_yoast_wpseo_primary_category', ''),
(1835, 154, '_menu_item_type', 'taxonomy'),
(1836, 154, '_menu_item_menu_item_parent', '0'),
(1837, 154, '_menu_item_object_id', '1'),
(1838, 154, '_menu_item_object', 'category'),
(1839, 154, '_menu_item_target', ''),
(1840, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1841, 154, '_menu_item_xfn', ''),
(1842, 154, '_menu_item_url', ''),
(1846, 156, '_edit_last', '1'),
(1847, 156, '_edit_lock', '1512461809:1'),
(1848, 156, '_yoast_wpseo_content_score', '30'),
(1849, 158, '_edit_last', '1'),
(1850, 158, '_yoast_wpseo_content_score', '30'),
(1851, 158, '_edit_lock', '1512461823:1'),
(1852, 160, '_menu_item_type', 'post_type'),
(1853, 160, '_menu_item_menu_item_parent', '0'),
(1854, 160, '_menu_item_object_id', '158'),
(1855, 160, '_menu_item_object', 'page'),
(1856, 160, '_menu_item_target', ''),
(1857, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1858, 160, '_menu_item_xfn', ''),
(1859, 160, '_menu_item_url', ''),
(1861, 161, '_menu_item_type', 'post_type'),
(1862, 161, '_menu_item_menu_item_parent', '0'),
(1863, 161, '_menu_item_object_id', '156'),
(1864, 161, '_menu_item_object', 'page'),
(1865, 161, '_menu_item_target', ''),
(1866, 161, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1867, 161, '_menu_item_xfn', ''),
(1868, 161, '_menu_item_url', ''),
(1870, 162, '_menu_item_type', 'post_type'),
(1871, 162, '_menu_item_menu_item_parent', '0'),
(1872, 162, '_menu_item_object_id', '17'),
(1873, 162, '_menu_item_object', 'page'),
(1874, 162, '_menu_item_target', ''),
(1875, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1876, 162, '_menu_item_xfn', ''),
(1877, 162, '_menu_item_url', ''),
(1879, 16, '_edit_lock', '1512468776:1'),
(1880, 16, '_edit_last', '1'),
(1881, 16, '_yoast_wpseo_content_score', '90');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-03 07:26:12', '2017-12-03 07:26:12', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2017-12-05 10:10:42', '2017-12-05 03:10:42', '', 0, 'http://localhost/hanglinhkien/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-03 07:26:12', '2017-12-03 07:26:12', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://localhost/hanglinhkien/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2017-12-03 07:26:12', '2017-12-03 07:26:12', '', 0, 'http://localhost/hanglinhkien/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-12-03 07:26:30', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-03 07:26:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=3', 0, 'post', '', 0),
(5, 1, '2017-12-03 07:36:32', '2017-12-03 07:36:32', '<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]\nhang linh kiện \"[your-subject]\"\n[your-name] <quangthinm@gmail.com>\nGửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website hang linh kiện (http://localhost/hanglinhkien)\nquangthinm@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nhang linh kiện \"[your-subject]\"\nhang linh kiện <quangthinm@gmail.com>\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website hang linh kiện (http://localhost/hanglinhkien)\n[your-email]\nReply-To: quangthinm@gmail.com\n\n0\n0\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.', 'Form liên hệ 1', '', 'publish', 'closed', 'closed', '', 'form-lien-he-1', '', '', '2017-12-03 07:36:32', '2017-12-03 07:36:32', '', 0, 'http://localhost/hanglinhkien/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2017-12-03 11:13:36', '0000-00-00 00:00:00', '', 'Trang chủ', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-03 11:13:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2017-12-03 11:13:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-03 11:13:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2017-12-03 11:16:27', '2017-12-03 11:16:27', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-12-05 15:37:42', '2017-12-05 08:37:42', '', 0, 'http://localhost/hanglinhkien/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2017-12-03 11:15:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-03 11:15:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=11', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-12-03 15:14:51', '2017-12-03 15:14:51', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', 'cua-hang', '', '', '2017-12-05 16:56:14', '2017-12-05 09:56:14', '', 0, 'http://localhost/hanglinhkien/cua-hang', 0, 'page', '', 0),
(17, 1, '2017-12-03 15:14:52', '2017-12-03 15:14:52', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2017-12-03 15:14:52', '2017-12-03 15:14:52', '', 0, 'http://localhost/hanglinhkien/gio-hang', 0, 'page', '', 0),
(18, 1, '2017-12-03 15:14:52', '2017-12-03 15:14:52', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2017-12-03 15:14:52', '2017-12-03 15:14:52', '', 0, 'http://localhost/hanglinhkien/thanh-toan', 0, 'page', '', 0),
(19, 1, '2017-12-03 15:14:52', '2017-12-03 15:14:52', '[woocommerce_my_account]', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2017-12-03 15:14:52', '2017-12-03 15:14:52', '', 0, 'http://localhost/hanglinhkien/tai-khoan', 0, 'page', '', 0),
(20, 1, '2017-12-03 15:17:58', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:17:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?post_type=product&p=20', 0, 'product', '', 0),
(21, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Beanie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/beanie.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Belt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Cap', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cap.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Hoodie with Logo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie-with-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Hoodie with Pocket', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie-with-pocket.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Hoodie with Zipper', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie-with-zipper.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Hoodie', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Long Sleeve Tee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/long-sleeve-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Polo', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/polo.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Sunglasses', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/sunglasses.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Vneck Tshirt', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/vneck-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Hero', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Accessories', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/accessories.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'T-shirts', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:22:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/tshirts.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Hoodies', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodies.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?page_id=37', 0, 'page', '', 0),
(38, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?page_id=38', 0, 'page', '', 0),
(39, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=39', 0, 'product', '', 0),
(40, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=40', 0, 'product', '', 0),
(41, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=41', 0, 'product', '', 0),
(42, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=42', 0, 'product', '', 0),
(43, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=43', 0, 'product', '', 0),
(44, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=44', 0, 'product', '', 0),
(45, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=45', 0, 'product', '', 0),
(46, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=46', 0, 'product', '', 0),
(47, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=47', 0, 'product', '', 0),
(48, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=48', 0, 'product', '', 0),
(49, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=49', 0, 'product', '', 0),
(50, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-03 15:23:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=50', 0, 'product', '', 0),
(51, 1, '2017-12-03 15:23:02', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            21,\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29,\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38,\n            39,\n            40,\n            41,\n            42,\n            43,\n            44,\n            45,\n            46,\n            47,\n            48,\n            49,\n            50,\n            17,\n            18,\n            19,\n            16\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 15:23:02\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 15:23:02\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 15:23:02\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 38,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-03 15:23:02\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '615e3c9e-1966-44e0-9113-6b80ca52e958', '', '', '2017-12-03 15:23:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2017-12-03 15:25:44', '2017-12-03 15:25:44', '', 'sản phẩm 1', '', 'trash', 'open', 'closed', '', 'san-pham-1__trashed', '', '', '2017-12-03 15:39:42', '2017-12-03 15:39:42', '', 0, 'http://localhost/hanglinhkien/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2017-12-03 15:24:04', '2017-12-03 15:24:04', '', 'tải xuống (2)', '', 'inherit', 'open', 'closed', '', 'tai-xuong-2', '', '', '2017-12-03 15:24:04', '2017-12-03 15:24:04', '', 52, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/tải-xuống-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-12-03 15:27:31', '2017-12-03 15:27:31', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2017-12-05 15:37:42', '2017-12-05 08:37:42', '', 0, 'http://localhost/hanglinhkien/?p=57', 2, 'nav_menu_item', '', 0),
(61, 1, '2017-12-03 15:36:18', '2017-12-03 15:36:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2017-12-03 15:36:32', '2017-12-03 15:36:32', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-woo-single-1', 0, 'product', '', 0),
(62, 1, '2017-12-03 15:36:18', '2017-12-03 15:36:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2017-12-03 15:36:29', '2017-12-03 15:36:29', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-woo-single-2', 0, 'product', '', 0),
(63, 1, '2017-12-03 15:36:19', '2017-12-03 15:36:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2017-12-03 15:36:54', '2017-12-03 15:36:54', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-woo-album-1', 0, 'product', '', 0),
(64, 1, '2017-12-03 15:36:19', '2017-12-03 15:36:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2017-12-03 15:36:46', '2017-12-03 15:36:46', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-woo-album-2', 0, 'product', '', 0),
(65, 1, '2017-12-03 15:36:20', '2017-12-03 15:36:20', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2017-12-03 15:36:41', '2017-12-03 15:36:41', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-woo-album-3', 0, 'product', '', 0),
(66, 1, '2017-12-03 15:36:20', '2017-12-03 15:36:20', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2017-12-03 15:38:29', '2017-12-03 15:38:29', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-t-shirt-woo-logo', 0, 'product', '', 0),
(67, 1, '2017-12-03 15:36:21', '2017-12-03 15:36:21', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2017-12-03 15:37:24', '2017-12-03 15:37:24', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-hoodie-woo-logo', 0, 'product', '', 0),
(68, 1, '2017-12-03 15:36:21', '2017-12-03 15:36:21', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2017-12-03 15:38:07', '2017-12-03 15:38:07', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-t-shirt-woo-ninja', 0, 'product', '', 0),
(69, 1, '2017-12-03 15:36:22', '2017-12-03 15:36:22', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2017-12-03 15:37:43', '2017-12-03 15:37:43', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-hoodie-woo-ninja', 0, 'product', '', 0),
(70, 1, '2017-12-03 15:36:22', '2017-12-03 15:36:22', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2017-12-03 15:38:24', '2017-12-03 15:38:24', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-t-shirt-premium-quality', 0, 'product', '', 0),
(71, 1, '2017-12-03 15:36:22', '2017-12-03 15:36:22', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2017-12-03 15:38:19', '2017-12-03 15:38:19', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-t-shirt-ship-your-idea', 0, 'product', '', 0),
(72, 1, '2017-12-03 15:36:23', '2017-12-03 15:36:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-2', '', '', '2017-12-03 15:37:51', '2017-12-03 15:37:51', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-hoodie-ship-your-idea', 0, 'product', '', 0),
(73, 1, '2017-12-03 15:36:24', '2017-12-03 15:36:24', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2017-12-03 15:38:11', '2017-12-03 15:38:11', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-t-shirt-ninja-silhouette', 0, 'product', '', 0),
(74, 1, '2017-12-03 15:36:25', '2017-12-03 15:36:25', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2017-12-03 15:37:58', '2017-12-03 15:37:58', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-t-shirt-happy-ninja', 0, 'product', '', 0),
(75, 1, '2017-12-03 15:36:25', '2017-12-03 15:36:25', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2017-12-03 15:37:32', '2017-12-03 15:37:32', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-hoodie-happy-ninja', 0, 'product', '', 0),
(76, 1, '2017-12-03 15:36:25', '2017-12-03 15:36:25', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'closed', 'closed', '', 'ninja-silhouette', '', '', '2017-12-03 15:37:28', '2017-12-03 15:37:28', '', 0, 'http://localhost/hanglinhkien/san-pham/import-placeholder-for-hoodie-ninja-silhouette', 0, 'product', '', 0),
(77, 1, '2017-12-03 15:36:26', '2017-12-03 15:36:26', '', 'cd_6_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_6_angle-jpg', '', '', '2017-12-03 15:36:26', '2017-12-03 15:36:26', '', 62, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2017-12-03 15:36:28', '2017-12-03 15:36:28', '', 'cd_6_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_6_flat-jpg', '', '', '2017-12-03 15:36:28', '2017-12-03 15:36:28', '', 62, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-12-03 15:36:29', '2017-12-03 15:36:29', '', 'cd_4_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_4_angle-jpg', '', '', '2017-12-03 15:36:29', '2017-12-03 15:36:29', '', 61, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2017-12-03 15:36:31', '2017-12-03 15:36:31', '', 'cd_4_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_4_flat-jpg', '', '', '2017-12-03 15:36:31', '2017-12-03 15:36:31', '', 61, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-12-03 15:36:33', '2017-12-03 15:36:33', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Singles', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-singles', '', '', '2017-12-03 15:36:33', '2017-12-03 15:36:33', '', 0, 'http://localhost/hanglinhkien/san-pham/woo-singles', 0, 'product', '', 0),
(82, 1, '2017-12-03 15:36:34', '2017-12-03 15:36:34', '', 'cd_5_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_5_angle-jpg', '', '', '2017-12-03 15:36:34', '2017-12-03 15:36:34', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-12-03 15:36:37', '2017-12-03 15:36:37', '', 'cd_5_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_5_flat-jpg', '', '', '2017-12-03 15:36:37', '2017-12-03 15:36:37', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-12-03 15:36:38', '2017-12-03 15:36:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2017-12-03 15:36:38', '2017-12-03 15:36:38', '', 0, 'http://localhost/hanglinhkien/san-pham/woo-album-4', 0, 'product', '', 0),
(85, 1, '2017-12-03 15:36:39', '2017-12-03 15:36:39', '', 'cd_3_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_3_angle-jpg', '', '', '2017-12-03 15:36:39', '2017-12-03 15:36:39', '', 65, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2017-12-03 15:36:41', '2017-12-03 15:36:41', '', 'cd_3_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_3_flat-jpg', '', '', '2017-12-03 15:36:41', '2017-12-03 15:36:41', '', 65, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2017-12-03 15:36:42', '2017-12-03 15:36:42', '', 'cd_2_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_2_angle-jpg', '', '', '2017-12-03 15:36:42', '2017-12-03 15:36:42', '', 64, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-12-03 15:36:45', '2017-12-03 15:36:45', '', 'cd_2_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_2_flat-jpg', '', '', '2017-12-03 15:36:45', '2017-12-03 15:36:45', '', 64, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2017-12-03 15:36:49', '2017-12-03 15:36:49', '', 'cd_1_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_1_angle-jpg', '', '', '2017-12-03 15:36:49', '2017-12-03 15:36:49', '', 63, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2017-12-03 15:36:51', '2017-12-03 15:36:51', '', 'cd_1_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_1_flat-jpg', '', '', '2017-12-03 15:36:51', '2017-12-03 15:36:51', '', 63, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2017-12-03 15:36:54', '2017-12-03 15:36:54', '', 'poster_5_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_5_up-jpg', '', '', '2017-12-03 15:36:54', '2017-12-03 15:36:54', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2017-12-03 15:36:56', '2017-12-03 15:36:56', '', 'Poster_5_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_5_flat-jpg', '', '', '2017-12-03 15:36:56', '2017-12-03 15:36:56', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-12-03 15:36:58', '2017-12-03 15:36:58', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2017-12-03 15:36:58', '2017-12-03 15:36:58', '', 0, 'http://localhost/hanglinhkien/san-pham/woo-logo', 0, 'product', '', 0),
(94, 1, '2017-12-03 15:36:59', '2017-12-03 15:36:59', '', 'poster_4_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_4_up-jpg', '', '', '2017-12-03 15:36:59', '2017-12-03 15:36:59', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-12-03 15:37:00', '2017-12-03 15:37:00', '', 'Poster_4_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_4_flat-jpg', '', '', '2017-12-03 15:37:00', '2017-12-03 15:37:00', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2017-12-03 15:37:02', '2017-12-03 15:37:02', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2017-12-03 15:37:02', '2017-12-03 15:37:02', '', 0, 'http://localhost/hanglinhkien/san-pham/woo-ninja', 0, 'product', '', 0),
(97, 1, '2017-12-03 15:37:03', '2017-12-03 15:37:03', '', 'poster_3_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_3_up-jpg', '', '', '2017-12-03 15:37:03', '2017-12-03 15:37:03', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-12-03 15:37:05', '2017-12-03 15:37:05', '', 'Poster_3_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_3_flat-jpg', '', '', '2017-12-03 15:37:05', '2017-12-03 15:37:05', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2017-12-03 15:37:06', '2017-12-03 15:37:06', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2017-12-03 15:37:06', '2017-12-03 15:37:06', '', 0, 'http://localhost/hanglinhkien/san-pham/premium-quality', 0, 'product', '', 0),
(100, 1, '2017-12-03 15:37:08', '2017-12-03 15:37:08', '', 'poster_2_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_2_up-jpg', '', '', '2017-12-03 15:37:08', '2017-12-03 15:37:08', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2017-12-03 15:37:11', '2017-12-03 15:37:11', '', 'Poster_2_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_2_flat-jpg', '', '', '2017-12-03 15:37:11', '2017-12-03 15:37:11', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2017-12-03 15:37:12', '2017-12-03 15:37:12', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2017-12-04 10:11:30', '2017-12-04 10:11:30', '', 0, 'http://localhost/hanglinhkien/san-pham/flying-ninja', 0, 'product', '', 0),
(103, 1, '2017-12-03 15:37:15', '2017-12-03 15:37:15', '', 'poster_1_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_1_up-jpg', '', '', '2017-12-03 15:37:15', '2017-12-03 15:37:15', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2017-12-03 15:37:18', '2017-12-03 15:37:18', '', 'Poster_1_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_1_flat-jpg', '', '', '2017-12-03 15:37:18', '2017-12-03 15:37:18', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2017-12-03 15:37:19', '2017-12-03 15:37:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea', '', '', '2017-12-03 15:37:19', '2017-12-03 15:37:19', '', 0, 'http://localhost/hanglinhkien/san-pham/ship-your-idea', 0, 'product', '', 0),
(106, 1, '2017-12-03 15:37:22', '2017-12-03 15:37:22', '', 'hoodie_6_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_6_front-jpg', '', '', '2017-12-03 15:37:22', '2017-12-03 15:37:22', '', 67, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-12-03 15:37:23', '2017-12-03 15:37:23', '', 'hoodie_6_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_6_back-jpg', '', '', '2017-12-03 15:37:23', '2017-12-03 15:37:23', '', 67, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2017-12-03 15:37:25', '2017-12-03 15:37:25', '', 'hoodie_5_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_5_front-jpg', '', '', '2017-12-03 15:37:25', '2017-12-03 15:37:25', '', 76, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2017-12-03 15:37:26', '2017-12-03 15:37:26', '', 'hoodie_5_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_5_back-jpg', '', '', '2017-12-03 15:37:26', '2017-12-03 15:37:26', '', 76, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2017-12-03 15:37:30', '2017-12-03 15:37:30', '', 'hoodie_4_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_4_front-jpg', '', '', '2017-12-03 15:37:30', '2017-12-03 15:37:30', '', 75, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2017-12-03 15:37:31', '2017-12-03 15:37:31', '', 'hoodie_4_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_4_back-jpg', '', '', '2017-12-03 15:37:31', '2017-12-03 15:37:31', '', 75, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-12-03 15:37:33', '2017-12-03 15:37:33', '', 'hoodie_3_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_3_front-jpg', '', '', '2017-12-03 15:37:33', '2017-12-03 15:37:33', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2017-12-03 15:37:35', '2017-12-03 15:37:35', '', 'hoodie_3_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_3_back-jpg', '', '', '2017-12-03 15:37:35', '2017-12-03 15:37:35', '', 0, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2017-12-03 15:37:37', '2017-12-03 15:37:37', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2017-12-04 10:10:55', '2017-12-04 10:10:55', '', 0, 'http://localhost/hanglinhkien/san-pham/patient-ninja', 0, 'product', '', 0),
(115, 1, '2017-12-03 15:37:39', '2017-12-03 15:37:39', '', 'hoodie_2_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_2_front-jpg', '', '', '2017-12-03 15:37:39', '2017-12-03 15:37:39', '', 69, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2017-12-03 15:37:42', '2017-12-03 15:37:42', '', 'hoodie_2_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_2_back-jpg', '', '', '2017-12-03 15:37:42', '2017-12-03 15:37:42', '', 69, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(117, 1, '2017-12-03 15:37:44', '2017-12-03 15:37:44', '', 'hoodie_7_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_7_front-jpg', '', '', '2017-12-03 15:37:44', '2017-12-03 15:37:44', '', 72, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-12-03 15:37:47', '2017-12-03 15:37:47', '', 'hoodie_7_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_7_back-jpg', '', '', '2017-12-03 15:37:47', '2017-12-03 15:37:47', '', 72, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2017-12-03 15:37:49', '2017-12-03 15:37:49', '', 'hoodie_1_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_1_back-jpg', '', '', '2017-12-03 15:37:49', '2017-12-03 15:37:49', '', 72, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2017-12-03 15:37:51', '2017-12-03 15:37:51', '', 'hoodie_1_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_1_front-jpg', '', '', '2017-12-03 15:37:51', '2017-12-03 15:37:51', '', 72, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2017-12-03 15:37:52', '2017-12-03 15:37:52', '', 'Ship Your Idea - Blue, XL', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-blue-xl', '', '', '2017-12-03 15:37:52', '2017-12-03 15:37:52', '', 72, 'http://localhost/hanglinhkien/san-pham/ship-your-idea-2', 0, 'product_variation', '', 0),
(122, 1, '2017-12-03 15:37:52', '2017-12-03 15:37:52', '', 'Ship Your Idea - Black, L', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black-l', '', '', '2017-12-03 15:37:52', '2017-12-03 15:37:52', '', 72, 'http://localhost/hanglinhkien/san-pham/ship-your-idea-2', 0, 'product_variation', '', 0),
(123, 1, '2017-12-03 15:37:53', '2017-12-03 15:37:53', '', 'T_7_front.jpg', '', 'inherit', 'open', 'closed', '', 't_7_front-jpg', '', '', '2017-12-03 15:37:53', '2017-12-03 15:37:53', '', 74, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2017-12-03 15:37:57', '2017-12-03 15:37:57', '', 'T_7_back.jpg', '', 'inherit', 'open', 'closed', '', 't_7_back-jpg', '', '', '2017-12-03 15:37:57', '2017-12-03 15:37:57', '', 74, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2017-12-03 15:38:03', '2017-12-03 15:38:03', '', 'T_6_front.jpg', '', 'inherit', 'open', 'closed', '', 't_6_front-jpg', '', '', '2017-12-03 15:38:03', '2017-12-03 15:38:03', '', 68, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2017-12-03 15:38:05', '2017-12-03 15:38:05', '', 'T_6_back.jpg', '', 'inherit', 'open', 'closed', '', 't_6_back-jpg', '', '', '2017-12-03 15:38:05', '2017-12-03 15:38:05', '', 68, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2017-12-03 15:38:09', '2017-12-03 15:38:09', '', 'T_5_front.jpg', '', 'inherit', 'open', 'closed', '', 't_5_front-jpg', '', '', '2017-12-03 15:38:09', '2017-12-03 15:38:09', '', 73, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2017-12-03 15:38:10', '2017-12-03 15:38:10', '', 'T_5_back.jpg', '', 'inherit', 'open', 'closed', '', 't_5_back-jpg', '', '', '2017-12-03 15:38:10', '2017-12-03 15:38:10', '', 73, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2017-12-03 15:38:12', '2017-12-03 15:38:12', '', 'T_4_front.jpg', '', 'inherit', 'open', 'closed', '', 't_4_front-jpg', '', '', '2017-12-03 15:38:12', '2017-12-03 15:38:12', '', 71, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2017-12-03 15:38:13', '2017-12-03 15:38:13', '', 'T_3_back.jpg', '', 'inherit', 'open', 'closed', '', 't_3_back-jpg', '', '', '2017-12-03 15:38:13', '2017-12-03 15:38:13', '', 71, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2017-12-03 15:38:14', '2017-12-03 15:38:14', '', 'T_3_front.jpg', '', 'inherit', 'open', 'closed', '', 't_3_front-jpg', '', '', '2017-12-03 15:38:14', '2017-12-03 15:38:14', '', 71, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2017-12-03 15:38:17', '2017-12-03 15:38:17', '', 'T_4_back.jpg', '', 'inherit', 'open', 'closed', '', 't_4_back-jpg', '', '', '2017-12-03 15:38:17', '2017-12-03 15:38:17', '', 71, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2017-12-03 15:38:18', '2017-12-03 15:38:18', '', 'T_4_front1.jpg', '', 'inherit', 'open', 'closed', '', 't_4_front1-jpg', '', '', '2017-12-03 15:38:18', '2017-12-03 15:38:18', '', 71, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_4_front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2017-12-03 15:38:20', '2017-12-03 15:38:20', '', 'Ship Your Idea - Green', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-green', '', '', '2017-12-03 15:38:20', '2017-12-03 15:38:20', '', 71, 'http://localhost/hanglinhkien/san-pham/ship-your-idea-3', 0, 'product_variation', '', 0),
(135, 1, '2017-12-03 15:38:20', '2017-12-03 15:38:20', '', 'Ship Your Idea - Black', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black', '', '', '2017-12-03 15:38:20', '2017-12-03 15:38:20', '', 71, 'http://localhost/hanglinhkien/san-pham/ship-your-idea-3', 0, 'product_variation', '', 0),
(136, 1, '2017-12-03 15:38:21', '2017-12-03 15:38:21', '', 'T_2_front.jpg', '', 'inherit', 'open', 'closed', '', 't_2_front-jpg', '', '', '2017-12-03 15:38:21', '2017-12-03 15:38:21', '', 70, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2017-12-03 15:38:23', '2017-12-03 15:38:23', '', 'T_2_back.jpg', '', 'inherit', 'open', 'closed', '', 't_2_back-jpg', '', '', '2017-12-03 15:38:23', '2017-12-03 15:38:23', '', 70, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2017-12-03 15:38:26', '2017-12-03 15:38:26', '', 'T_1_front.jpg', '', 'inherit', 'open', 'closed', '', 't_1_front-jpg', '', '', '2017-12-03 15:38:26', '2017-12-03 15:38:26', '', 66, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2017-12-03 15:38:28', '2017-12-03 15:38:28', '', 'T_1_back.jpg', '', 'inherit', 'open', 'closed', '', 't_1_back-jpg', '', '', '2017-12-03 15:38:28', '2017-12-03 15:38:28', '', 66, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/T_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2017-12-03 15:48:33', '2017-12-03 15:48:33', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-12-03 15:48:33', '2017-12-03 15:48:33', '', 0, 'http://localhost/hanglinhkien/?page_id=140', 0, 'page', '', 0),
(141, 1, '2017-12-03 15:48:33', '2017-12-03 15:48:33', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2017-12-03 15:48:33', '2017-12-03 15:48:33', '', 140, 'http://localhost/hanglinhkien/2017/12/03/140-revision-v1.html', 0, 'revision', '', 0),
(142, 1, '2017-12-04 01:54:32', '2017-12-04 01:54:32', '{\n    \"blogname\": {\n        \"value\": \"H\\u00e0ng linh ki\\u1ec7n\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-04 01:54:31\"\n    },\n    \"blogdescription\": {\n        \"value\": \"H\\u00e0ng linh ki\\u1ec7n \\u0111i\\u1ec7n t\\u1eed gi\\u00e1 r\\u1ebb\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-04 01:54:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '64120ca3-baac-4476-b9ae-2cd7e1de8f47', '', '', '2017-12-04 01:54:32', '2017-12-04 01:54:32', '', 0, 'http://localhost/hanglinhkien/?p=142', 0, 'customize_changeset', '', 0),
(143, 1, '2017-12-04 10:37:07', '2017-12-04 10:37:07', '', '4 lý do xứng đáng để cuối năm sắm Galaxy S8', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2017-12-04 10:37:07', '2017-12-04 10:37:07', '', 0, 'http://localhost/hanglinhkien/?p=143', 0, 'post', '', 0),
(144, 1, '2017-12-04 10:36:18', '2017-12-04 10:36:18', '<h3>Công nghệ đột phá khai phóng mọi chuẩn mực</h3>\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d6568b90-d8d1-11e7-b84f-bd45a368b577\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-1-1512378130885.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 1.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-1-1512378130885.jpg\" /></div>\r\n</div>\r\nVới hàng loạt tính năng đột phá, Galaxy S8 đã thực sự vượt qua giới hạn của một chiếc điện thoại thông minh, mang đến cho người dùng những trải nghiệm chưa từng có trước đây.\r\n\r\nGalaxy S8 đã phá vỡ khuôn khổ của cạnh viền khi mang đến một màn hình vô cực mà vẫn vừa vặn trong bàn tay. Cho dù là những tấm hình, phim ảnh hay trò chơi, người dùng khó tính nhất cũng đều bị chinh phục bởi độ bao phủ cực đại của màn hình.\r\n\r\nCùng với đó, camera Galaxy S8 được tinh chỉnh hoàn hảo cho hình ảnh sắc nét, bất chấp mưa nắng và thách thức bóng đêm với khẩu độ tối ưu f/1.7\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d74fb8a0-d8d1-11e7-891a-2dfcd78a944f\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-1-1512378132397.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 2.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-1-1512378132397.jpg\" /></div>\r\n</div>\r\nMột yếu tố đặc biệt giúp Galaxy S8 chinh phục hoàn toàn người dùng chính là khả năng bảo mật tối ưu, giúp ngăn chặn những truy cập không mong muốn. Với tính năng quét mống mắt, nhận diện khuôn mặt tức thời để mở khóa màn hình và bảo vệ nhiều lớp, thiết bị thông minh này khiến bạn hoàn toàn yên tâm khi sử dụng.\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d76dc7f0-d8d1-11e7-a31f-69039cd89c63\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 3.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-2-1512378132401.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 3.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-2-1512378132401.jpg\" /></div>\r\n</div>\r\nĐừng quên lựa chọn Galaxy S8 cho mùa cuối năm này với những phiên bản Xanh Coral, Tím Khói khai phóng mọi chuẩn mực thị giác. Galaxy S8 không chỉ dừng lại ở một thiết bị thông minh xứng tầm mà còn là món trang sức lấp lánh nhất sẵn sàng cùng bạn tỏa sáng tại mùa lễ hội cuối năm nay.\r\n<h3>Tận hưởng những ưu đãi chưa từng có</h3>\r\nNhững ngày lễ hội cuối năm cũng là dịp để gặp gỡ, vui chơi cùng bạn bè và thăm thú nhiều địa điểm du lịch mới. Bạn có nghĩ mình sẽ là khách VIP được chăm sóc tại phòng chờ thương gia trước khi khởi hành bay tại Tân Sơn Nhất và Nội Bài? Bạn có muốn tận hưởng những siêu phẩm điện ảnh tại CGV hay thưởng thức café, bánh ngọt tại hệ thống Highland, Coffee Bean cuối tuần cùng bạn bè hoàn toàn miễn phí?\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d71a50c0-d8d1-11e7-bd71-ed477eedc11c\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 4.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-3-1512378132403.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 4.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-3-1512378132403.jpg\" /></div>\r\n</div>\r\nLà chủ nhân của Galaxy S8 bạn sẽ được hưởng những dịch vụ ưu đãi cộng thêm như kể trên với chính sách ưu đãi tuyệt vời từ Samsung Elite.\r\n<h3>Ghi dấu với hàng loạt giải thưởng quốc tế danh giá 2017</h3>\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d6d24b40-d8d1-11e7-ab00-ed2c4ced1784\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 5.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-4-1512378132405.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 5.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-4-1512378132405.jpg\" /></div>\r\n</div>\r\nRa mắt giữa năm 2017, Galaxy S8 vẫn giữ vững \"phong độ\" bằng loạt thành tích đáng ngưỡng mộ khi được vinh danh bằng những giải thưởng quốc tế uy tín.\r\n\r\nĐơn vị chuyên đánh giá màn hình DisplayMate công bố Galaxy S8 là mẫu smartphone có màn hình đẹp nhất từ trước đến nay. Cùng với đó, thiết bị này cũng giành được chứng nhận cao nhất của EPAT – Hệ thống đánh giá mức độ thân thiện với môi trường của thiết bị điện tử. Chứng nhận này cũng đã được 2 tổ chức danh tiếng về bảo vệ môi trường, Green Electronics Council và Underwriters Laboratories thừa nhận. Đây quả là một thành tựu to lớn đối với Samsung.\r\n\r\nVượt qua nhiều đối thủ nặng kí, Samsung Galaxy S8 đã xuất sắc giành được danh hiệu \"Smartphone tốt nhất năm 2017\" của giải thưởng EE Pocket-lint, giải thưởng \"Chiếc điện thoại của năm 2017\" của Trusted Review và giải thưởng \"Smartphone xuất sắc\" cũng đã thuộc về bộ đôi Galaxy S8|S8+ tại sự kiện Asia Mobile Awards 2017.\r\n\r\nTất cả trên đây là lý do không ngạc nhiên khi Galaxy S8 vẫn nhận được sự ưu ái từ người dùng và liên tục \"cháy hàng\" vào mùa mua sắm cuối năm đầy nhộn nhịp. Galaxy S8 đang chứng minh sức mạnh chinh phục thị trường không có đối thủ của mình cuối năm 2017 và hoàn toàn có thể duy trì phong độ trong năm 2018.\r\n\r\n&nbsp;\r\n<p style=\"text-align: right;\">Nguồn: tuoitre.vn</p>', '4 lý do xứng đáng để cuối năm sắm Galaxy S8', '', 'publish', 'open', 'open', '', '4-ly-xung-dang-de-cuoi-nam-sam-galaxy-s8', '', '', '2017-12-05 09:33:04', '2017-12-05 02:33:04', '', 0, 'http://localhost/hanglinhkien/?p=144', 0, 'post', '', 0),
(145, 1, '2017-12-04 10:30:13', '2017-12-04 10:30:13', '', 'Samsung-Galaxy-S8-Review-TI', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-s8-review-ti', '', '', '2017-12-04 10:30:13', '2017-12-04 10:30:13', '', 144, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/Samsung-Galaxy-S8-Review-TI.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2017-12-04 10:36:18', '2017-12-04 10:36:18', '<h3>Công nghệ đột phá khai phóng mọi chuẩn mực</h3>\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d6568b90-d8d1-11e7-b84f-bd45a368b577\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-1-1512378130885.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 1.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-1-1512378130885.jpg\" /></div>\r\n</div>\r\nVới hàng loạt tính năng đột phá, Galaxy S8 đã thực sự vượt qua giới hạn của một chiếc điện thoại thông minh, mang đến cho người dùng những trải nghiệm chưa từng có trước đây.\r\n\r\nGalaxy S8 đã phá vỡ khuôn khổ của cạnh viền khi mang đến một màn hình vô cực mà vẫn vừa vặn trong bàn tay. Cho dù là những tấm hình, phim ảnh hay trò chơi, người dùng khó tính nhất cũng đều bị chinh phục bởi độ bao phủ cực đại của màn hình.\r\n\r\nCùng với đó, camera Galaxy S8 được tinh chỉnh hoàn hảo cho hình ảnh sắc nét, bất chấp mưa nắng và thách thức bóng đêm với khẩu độ tối ưu f/1.7\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d74fb8a0-d8d1-11e7-891a-2dfcd78a944f\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-1-1512378132397.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 2.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-1-1512378132397.jpg\" /></div>\r\n</div>\r\nMột yếu tố đặc biệt giúp Galaxy S8 chinh phục hoàn toàn người dùng chính là khả năng bảo mật tối ưu, giúp ngăn chặn những truy cập không mong muốn. Với tính năng quét mống mắt, nhận diện khuôn mặt tức thời để mở khóa màn hình và bảo vệ nhiều lớp, thiết bị thông minh này khiến bạn hoàn toàn yên tâm khi sử dụng.\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d76dc7f0-d8d1-11e7-a31f-69039cd89c63\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 3.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-2-1512378132401.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 3.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-2-1512378132401.jpg\" /></div>\r\n</div>\r\nĐừng quên lựa chọn Galaxy S8 cho mùa cuối năm này với những phiên bản Xanh Coral, Tím Khói khai phóng mọi chuẩn mực thị giác. Galaxy S8 không chỉ dừng lại ở một thiết bị thông minh xứng tầm mà còn là món trang sức lấp lánh nhất sẵn sàng cùng bạn tỏa sáng tại mùa lễ hội cuối năm nay.\r\n<h3>Tận hưởng những ưu đãi chưa từng có</h3>\r\nNhững ngày lễ hội cuối năm cũng là dịp để gặp gỡ, vui chơi cùng bạn bè và thăm thú nhiều địa điểm du lịch mới. Bạn có nghĩ mình sẽ là khách VIP được chăm sóc tại phòng chờ thương gia trước khi khởi hành bay tại Tân Sơn Nhất và Nội Bài? Bạn có muốn tận hưởng những siêu phẩm điện ảnh tại CGV hay thưởng thức café, bánh ngọt tại hệ thống Highland, Coffee Bean cuối tuần cùng bạn bè hoàn toàn miễn phí?\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d71a50c0-d8d1-11e7-bd71-ed477eedc11c\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 4.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-3-1512378132403.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 4.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-3-1512378132403.jpg\" /></div>\r\n</div>\r\nLà chủ nhân của Galaxy S8 bạn sẽ được hưởng những dịch vụ ưu đãi cộng thêm như kể trên với chính sách ưu đãi tuyệt vời từ Samsung Elite.\r\n<h3>Ghi dấu với hàng loạt giải thưởng quốc tế danh giá 2017</h3>\r\n<div class=\"VCSortableInPreviewMode active noCaption\">\r\n<div><img id=\"img_d6d24b40-d8d1-11e7-ab00-ed2c4ced1784\" class=\"lightbox-content\" title=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 5.\" src=\"https://cdn.tuoitre.vn/thumb_w/1100/2017/photo-4-1512378132405.jpg\" alt=\"4 lý do xứng đáng để cuối năm sắm Galaxy S8 - Ảnh 5.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2017/photo-4-1512378132405.jpg\" /></div>\r\n</div>\r\nRa mắt giữa năm 2017, Galaxy S8 vẫn giữ vững \"phong độ\" bằng loạt thành tích đáng ngưỡng mộ khi được vinh danh bằng những giải thưởng quốc tế uy tín.\r\n\r\nĐơn vị chuyên đánh giá màn hình DisplayMate công bố Galaxy S8 là mẫu smartphone có màn hình đẹp nhất từ trước đến nay. Cùng với đó, thiết bị này cũng giành được chứng nhận cao nhất của EPAT – Hệ thống đánh giá mức độ thân thiện với môi trường của thiết bị điện tử. Chứng nhận này cũng đã được 2 tổ chức danh tiếng về bảo vệ môi trường, Green Electronics Council và Underwriters Laboratories thừa nhận. Đây quả là một thành tựu to lớn đối với Samsung.\r\n\r\nVượt qua nhiều đối thủ nặng kí, Samsung Galaxy S8 đã xuất sắc giành được danh hiệu \"Smartphone tốt nhất năm 2017\" của giải thưởng EE Pocket-lint, giải thưởng \"Chiếc điện thoại của năm 2017\" của Trusted Review và giải thưởng \"Smartphone xuất sắc\" cũng đã thuộc về bộ đôi Galaxy S8|S8+ tại sự kiện Asia Mobile Awards 2017.\r\n\r\nTất cả trên đây là lý do không ngạc nhiên khi Galaxy S8 vẫn nhận được sự ưu ái từ người dùng và liên tục \"cháy hàng\" vào mùa mua sắm cuối năm đầy nhộn nhịp. Galaxy S8 đang chứng minh sức mạnh chinh phục thị trường không có đối thủ của mình cuối năm 2017 và hoàn toàn có thể duy trì phong độ trong năm 2018.\r\n\r\n&nbsp;\r\n<p style=\"text-align: right;\">Nguồn: tuoitre.vn</p>', '4 lý do xứng đáng để cuối năm sắm Galaxy S8', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2017-12-04 10:36:18', '2017-12-04 10:36:18', '', 144, 'http://localhost/hanglinhkien/2017/12/04/144-revision-v1.html', 0, 'revision', '', 0),
(147, 1, '2017-12-04 10:37:07', '2017-12-04 10:37:07', '', '4 lý do xứng đáng để cuối năm sắm Galaxy S8', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-12-04 10:37:07', '2017-12-04 10:37:07', '', 143, 'http://localhost/hanglinhkien/2017/12/04/143-revision-v1.html', 0, 'revision', '', 0),
(148, 1, '2017-12-05 09:22:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-05 09:22:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=148', 0, 'post', '', 0),
(149, 1, '2017-12-05 09:25:16', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-05 09:25:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/hanglinhkien/?p=149', 0, 'post', '', 0),
(150, 1, '2017-12-05 10:10:42', '2017-12-05 03:10:42', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-05 10:10:42', '2017-12-05 03:10:42', '', 1, 'http://localhost/hanglinhkien/1-revision-v1.html', 0, 'revision', '', 0),
(151, 1, '2017-12-05 10:34:19', '2017-12-05 03:34:19', '<div class=\"contentbaiviet\">\r\n\r\nNgay cả khi BlackBerry và TCL đã cùng hợp tác đưa ra cùng lúc bộ đôi điện thoại thì đến nay chúng ta vẫn thiếu một mẫu sản phẩm bom tấn. Thế nhưng rất vui là một sản phẩm như thế vừa được hình dung trước dưới dạng concept bởi nhà thiết kế sáng tạo Albert Degin.\r\n<p align=\"center\"><span class=\"img-share\">\r\n<img class=\"news-image aligncenter\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 1\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b1-1512376728-width660height437.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 1\" width=\"911\" height=\"603\" /></span></p>\r\n<p style=\"text-align: center;\">Bản concept BlackBerry mới.</p>\r\nTrong khi Sony đang chuẩn bị cho cách tiếp cận màn hình cong hơn và có thể sẽ dừng hẳn định dạng loại hình chữ nhật, thì BlackBerry vẫn tiếp tục xu hướng này mà không vấp phải vấn đề gì. Thiết bị mới của nhà “dâu đen” được cho là có thân hoàn toàn bằng kim loại và giống như một phiên bản kế nhiệm của KeyOne. Mẫu dế mới của BlackBerry có khả năng sở hữu màn hình loại 5.5-inch Quad HD OLED và các loa âm thanh nổi di động tiên tiến ở đỉnh và đáy.\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image aligncenter\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 2\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b9-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 2\" width=\"920\" height=\"576\" /></span></p>\r\n<p style=\"text-align: center;\">Các thông số chính.</p>\r\nThậm chí âm thanh còn được làm sắc nét hơn nhờ bộ Bowers &amp; Wilkins và bộ khuếch đại cao cấp DAC. Điều thú vị là ống kính Sigma cung cấp sức mạnh cho camera, vì thế đem tới một quyền lực mới. Có thể thấy, Nokia có Carl Zeiss, Huawei có Leica thì giờ đây BlackBerry có Sigma. Kết cấu lưng của điện thoại mới cũng rất bắt mắt và nhìn sang chảnh xứng tầm của dòng điện thoại doanh nhân.\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 3\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b8-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 3\" width=\"924\" height=\"578\" /></span></p>\r\n<p style=\"text-align: center;\">Nhìn sang trọng, hiện đại và nam tính.</p>\r\nVò máy được cấu tạo từ sợi para aramid, polycarbonate và nhôm. Sức mạnh của BlackBerry mới đến từ bộ CPU Snapdragon 845, RAM 8 GB, hệ điều hành Android 8 và camera có chống rung quang học OIS. Pin loại Li-Ion 3700 mAh. Đây thực sự là mẫu điện thoại thông minh hiện đại hoàn hảo.\r\n\r\n<strong>Thêm hình ảnh về BlackBerry concept:</strong>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 4\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b2-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 4\" width=\"927\" height=\"580\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 5\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b4-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 5\" width=\"934\" height=\"585\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 6\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b5-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 6\" width=\"937\" height=\"586\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 7\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b6-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 7\" width=\"936\" height=\"586\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 8\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b7-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 8\" width=\"936\" height=\"586\" /></span></p>\r\n\r\n</div>', 'Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát', '', 'publish', 'open', 'open', '', 'lo-dien-chiec-blackberry-khien-phai-manh-khat', '', '', '2017-12-05 10:34:19', '2017-12-05 03:34:19', '', 0, 'http://localhost/hanglinhkien/?p=151', 0, 'post', '', 0),
(152, 1, '2017-12-05 10:29:57', '2017-12-05 03:29:57', '', 'Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat', '', 'inherit', 'open', 'closed', '', 'lo-dien-chiec-blackberry-khien-phai-manh-them-khat', '', '', '2017-12-05 10:29:57', '2017-12-05 03:29:57', '', 151, 'http://localhost/hanglinhkien/wp-content/uploads/2017/12/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2017-12-05 10:34:19', '2017-12-05 03:34:19', '<div class=\"contentbaiviet\">\r\n\r\nNgay cả khi BlackBerry và TCL đã cùng hợp tác đưa ra cùng lúc bộ đôi điện thoại thì đến nay chúng ta vẫn thiếu một mẫu sản phẩm bom tấn. Thế nhưng rất vui là một sản phẩm như thế vừa được hình dung trước dưới dạng concept bởi nhà thiết kế sáng tạo Albert Degin.\r\n<p align=\"center\"><span class=\"img-share\">\r\n<img class=\"news-image aligncenter\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 1\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b1-1512376728-width660height437.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 1\" width=\"911\" height=\"603\" /></span></p>\r\n<p style=\"text-align: center;\">Bản concept BlackBerry mới.</p>\r\nTrong khi Sony đang chuẩn bị cho cách tiếp cận màn hình cong hơn và có thể sẽ dừng hẳn định dạng loại hình chữ nhật, thì BlackBerry vẫn tiếp tục xu hướng này mà không vấp phải vấn đề gì. Thiết bị mới của nhà “dâu đen” được cho là có thân hoàn toàn bằng kim loại và giống như một phiên bản kế nhiệm của KeyOne. Mẫu dế mới của BlackBerry có khả năng sở hữu màn hình loại 5.5-inch Quad HD OLED và các loa âm thanh nổi di động tiên tiến ở đỉnh và đáy.\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image aligncenter\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 2\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b9-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 2\" width=\"920\" height=\"576\" /></span></p>\r\n<p style=\"text-align: center;\">Các thông số chính.</p>\r\nThậm chí âm thanh còn được làm sắc nét hơn nhờ bộ Bowers &amp; Wilkins và bộ khuếch đại cao cấp DAC. Điều thú vị là ống kính Sigma cung cấp sức mạnh cho camera, vì thế đem tới một quyền lực mới. Có thể thấy, Nokia có Carl Zeiss, Huawei có Leica thì giờ đây BlackBerry có Sigma. Kết cấu lưng của điện thoại mới cũng rất bắt mắt và nhìn sang chảnh xứng tầm của dòng điện thoại doanh nhân.\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 3\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b8-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 3\" width=\"924\" height=\"578\" /></span></p>\r\n<p style=\"text-align: center;\">Nhìn sang trọng, hiện đại và nam tính.</p>\r\nVò máy được cấu tạo từ sợi para aramid, polycarbonate và nhôm. Sức mạnh của BlackBerry mới đến từ bộ CPU Snapdragon 845, RAM 8 GB, hệ điều hành Android 8 và camera có chống rung quang học OIS. Pin loại Li-Ion 3700 mAh. Đây thực sự là mẫu điện thoại thông minh hiện đại hoàn hảo.\r\n\r\n<strong>Thêm hình ảnh về BlackBerry concept:</strong>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 4\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b2-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 4\" width=\"927\" height=\"580\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 5\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b4-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 5\" width=\"934\" height=\"585\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 6\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b5-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 6\" width=\"937\" height=\"586\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 7\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b6-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 7\" width=\"936\" height=\"586\" /></span></p>\r\n<p align=\"center\"><span class=\"img-share\"><img class=\"news-image\" title=\"Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát hình ảnh 8\" src=\"http://streaming1.danviet.vn/upload/4-2017/images/2017-12-04/Lo-dien-chiec-BlackBerry-khien-phai-manh-them-khat-b7-1512376728-width660height413.jpg\" alt=\"lo dien chiec blackberry khien phai manh them khat hinh anh 8\" width=\"936\" height=\"586\" /></span></p>\r\n\r\n</div>', 'Lộ diện chiếc BlackBerry khiến phái mạnh thèm khát', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2017-12-05 10:34:19', '2017-12-05 03:34:19', '', 151, 'http://localhost/hanglinhkien/151-revision-v1.html', 0, 'revision', '', 0),
(154, 1, '2017-12-05 10:52:05', '2017-12-05 03:52:05', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2017-12-05 15:37:42', '2017-12-05 08:37:42', '', 0, 'http://localhost/hanglinhkien/?p=154', 3, 'nav_menu_item', '', 0),
(156, 1, '2017-12-05 15:19:08', '2017-12-05 08:19:08', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2017-12-05 15:19:08', '2017-12-05 08:19:08', '', 0, 'http://localhost/hanglinhkien/?page_id=156', 0, 'page', '', 0),
(157, 1, '2017-12-05 15:19:08', '2017-12-05 08:19:08', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2017-12-05 15:19:08', '2017-12-05 08:19:08', '', 156, 'http://localhost/hanglinhkien/156-revision-v1.html', 0, 'revision', '', 0),
(158, 1, '2017-12-05 15:19:20', '2017-12-05 08:19:20', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2017-12-05 15:19:20', '2017-12-05 08:19:20', '', 0, 'http://localhost/hanglinhkien/?page_id=158', 0, 'page', '', 0),
(159, 1, '2017-12-05 15:19:20', '2017-12-05 08:19:20', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2017-12-05 15:19:20', '2017-12-05 08:19:20', '', 158, 'http://localhost/hanglinhkien/158-revision-v1.html', 0, 'revision', '', 0),
(160, 1, '2017-12-05 15:19:42', '2017-12-05 08:19:42', ' ', '', '', 'publish', 'closed', 'closed', '', '160', '', '', '2017-12-05 15:37:42', '2017-12-05 08:37:42', '', 0, 'http://localhost/hanglinhkien/?p=160', 5, 'nav_menu_item', '', 0),
(161, 1, '2017-12-05 15:19:42', '2017-12-05 08:19:42', ' ', '', '', 'publish', 'closed', 'closed', '', '161', '', '', '2017-12-05 15:37:42', '2017-12-05 08:37:42', '', 0, 'http://localhost/hanglinhkien/?p=161', 4, 'nav_menu_item', '', 0),
(162, 1, '2017-12-05 15:37:42', '2017-12-05 08:37:42', ' ', '', '', 'publish', 'closed', 'closed', '', '162', '', '', '2017-12-05 15:37:42', '2017-12-05 08:37:42', '', 0, 'http://localhost/hanglinhkien/?p=162', 6, 'nav_menu_item', '', 0),
(163, 1, '2017-12-05 16:54:21', '2017-12-05 09:54:21', 'Giỏ hàng', 'Cửa hàng', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-12-05 16:54:21', '2017-12-05 09:54:21', '', 16, 'http://localhost/hanglinhkien/16-revision-v1.html', 0, 'revision', '', 0),
(164, 1, '2017-12-05 16:55:46', '2017-12-05 09:55:46', '<?php get_header() ?>\r\n<section class=\"tz-shop-single\">\r\n	<?php if (have_posts()) : ?>\r\n    <?php while (have_posts()) : the_post(); ?>\r\n		<div class=\"container\">\r\n		    <!--Start Breadcrumbs-->\r\n		    <ul class=\"tz-breadcrumbs\">\r\n		        <li>\r\n		            <a href=\"<?php bloginfo(\'url\'); ?>\">Home</a>\r\n		        </li>\r\n		        <li class=\"current\">\r\n		            <?php the_title(); ?>\r\n		        </li>\r\n		    </ul>\r\n		    <!--End Breadcrumbs-->\r\n		    <div class=\"row\">\r\n		        <div class=\"col-md-6 col-sm-6\">\r\n		            <!--Shop images-->\r\n		            <div class=\"shop-images\">\r\n		                <ul class=\"single-gallery\">\r\n		                    <!--\r\n		                    <li>\r\n		                        <img src=\"http://html.templaza.net/bikesport/images/product/single-p.jpg\" alt=\"Propel Advanced Pro\">\r\n		                    </li>\r\n		                    <li>\r\n		                        <img src=\"http://html.templaza.net/bikesport/images/product/single-p.jpg\" alt=\"Propel Advanced Pro\">\r\n		                    </li>\r\n		                    <li>\r\n		                        <img src=\"http://html.templaza.net/bikesport/images/product/single-p.jpg\" alt=\"Propel Advanced Pro\">\r\n		                    </li>\r\n		                    -->\r\n		                    <?php\r\n							 	global $product;\r\n							 	$attachment_ids = $product->get_gallery_attachment_ids();\r\n								foreach( $attachment_ids as $attachment_id ) {\r\n									$image_link = wp_get_attachment_url( $attachment_id );\r\n									echo \'<img src=\"\'.$image_link.\'\" alt=\"\"/>\';\r\n								}\r\n							?>\r\n		                </ul>\r\n		            </div>\r\n		            <!--End shop image-->\r\n		        </div>\r\n		        <div class=\"col-md-6 col-sm-6\">\r\n		            <!--Shop content-->\r\n		            <div class=\"entry-summary\">\r\n		                <h1><?php the_title(); ?></h1>\r\n		                <span class=\"p-vote\">\r\n		                    <i class=\"fa fa-star\"></i>\r\n		                    <i class=\"fa fa-star\"></i>\r\n		                    <i class=\"fa fa-star\"></i>\r\n		                    <i class=\"fa fa-star\"></i>\r\n		                    <i class=\"fa fa-star-half-o\"></i>\r\n		                </span>\r\n		                <p class=\"product-price\">\r\n		                    <span class=\"price\"><?php echo $product->get_price_html(); ?></span>\r\n		                </p>\r\n		                <div class=\"description\">\r\n	                        <?php echo teaser(20); ?>\r\n		                </div>\r\n		                <form class=\"tz_variations_form \" action=\"\" method=\"post\">\r\n		                    <p class=\"form-attr\">\r\n		                        <span class=\"color\">\r\n		                            <label>Số lượng:</label>\r\n		                            <input type=\"number\" step=\"1\" min=\"1\" name=\"quantity\" value=\"1\" title=\"Qty\" class=\"input-text qty text\" size=\"4\"><input type=\"hidden\" name=\"add-to-cart\" value=\"<?php the_id(); ?>\">\r\n		                        </span>\r\n		                    </p>\r\n		                    <p>\r\n		                    	<input type=\"hidden\" name=\"add-to-cart\" value=\"<?php the_id(); ?>\">\r\n		                        <button type=\"submit\" class=\"single_add_to_cart_button\">Thêm vào giỏ hàng</button>\r\n		                    </p>\r\n		                </form>\r\n		            </div>\r\n		            <!--End shop content-->\r\n		        </div>\r\n		    </div>\r\n		    <!--Shop tabs-->\r\n			<div class=\"tz-shop-tabs\">\r\n			    <div class=\"container\">\r\n			        <div class=\"tab-head\">\r\n			            <ul class=\"nav nav-tabs\">\r\n			                <li role=\"presentation\" class=\"active\"><a href=\"#description\" data-toggle=\"tab\">Mô tả sản phẩm</a></li>\r\n			            </ul>\r\n			        </div>\r\n			        <div class=\"tab-content\">\r\n			            <div class=\"tab-pane active\" id=\"description\">\r\n			                <?php the_content(); ?>\r\n			            </div>\r\n			        </div>\r\n			    </div>\r\n			</div>\r\n		</div>\r\n	<?php endwhile; else : ?>\r\n    <p>Không có</p>\r\n    <?php endif; ?>\r\n	<div class=\"container\">\r\n	    <div class=\"box-shadow\">\r\n	        <!--Tabs header-->\r\n	        <div class=\"tz-tabs-header\">\r\n	            <h2 class=\"tz-tabs-title text-center\">Widget Products</h2>\r\n	        </div>\r\n	        <!--End tab header-->\r\n	        <!--Tab content-->\r\n	        <div class=\"tab-content\">\r\n	            <!--Tab item-->\r\n	            <div class=\"tab-pane active\" id=\"one_read\">\r\n	                <div class=\"row row-item\">\r\n	                    <div class=\"col-md-3 col-sm-6\">\r\n	                        <!--Start product item-->\r\n	                        <div class=\"product-item\">\r\n	                            <div class=\"product-thubnail\">\r\n	                                <img src=\"images/product/product4.png\" alt=\"product 4\" />\r\n	                                <div class=\"product-meta\">\r\n	                                    <a class=\"add-to-cart\" href=\"shop-cart.html\">Giỏ hàng</a>\r\n	                                    <span class=\"quick-view\">\r\n	                                        <a href=\"#\">Chi tiết</a>\r\n	                                    </span>\r\n	                                </div>\r\n	                            </div>\r\n	                            <div class=\"product-infomation\">\r\n	                                <h4><a href=\"single-product.html\">Propel Advanced SL 0</a></h4>\r\n	                                <span class=\"product-price\">$900.00</span>\r\n	                            </div>\r\n	                        </div>\r\n	                        <!--End product item-->\r\n	                    </div>\r\n	                    <div class=\"col-md-3 col-sm-6\">\r\n\r\n	                        <!--Start product item-->\r\n	                        <div class=\"product-item\">\r\n	                            <div class=\"product-thubnail\">\r\n	                                <img src=\"images/product/product5.jpg\" alt=\"product 2\" />\r\n	                                <div class=\"product-meta\">\r\n	                                    <a class=\"add-to-cart\" href=\"shop-cart.html\">Add to cart</a>\r\n	                                    <span class=\"quick-view\">\r\n	                                        <a href=\"#\">Quick view</a>\r\n	                                    </span>\r\n	                                </div>\r\n	                            </div>\r\n	                            <div class=\"product-infomation\">\r\n	                                <h4><a href=\"single-product.html\">Defy Advanced SL</a></h4>\r\n	                                <span class=\"product-price\">$1,770.00</span>\r\n	                                <span class=\"product-attr\">\r\n	                                    <i class=\"fa fa-circle light-blue\"></i>\r\n	                                    <i class=\"fa fa-circle orange\"></i>\r\n	                                    <i class=\"fa fa-circle blueviolet\"></i>\r\n	                                    <i class=\"fa fa-circle orange-dark\"></i>\r\n	                                    <i class=\"fa fa-circle steelblue\"></i>\r\n	                                </span>\r\n	                            </div>\r\n	                        </div>\r\n	                        <!--End product item-->\r\n\r\n	                    </div>\r\n	                    <div class=\"col-md-3 col-sm-6\">\r\n\r\n	                        <!--Start product item-->\r\n	                        <div class=\"product-item\">\r\n	                            <div class=\"product-thubnail\">\r\n	                                <img src=\"images/product/product6.jpg\" alt=\"product 3\" />\r\n	                                <div class=\"product-meta\">\r\n	                                    <a class=\"add-to-cart\" href=\"shop-cart.html\">Add to cart</a>\r\n	                                    <span class=\"quick-view\">\r\n	                                        <a href=\"#\">Quick view</a>\r\n	                                    </span>\r\n	                                </div>\r\n	                            </div>\r\n	                            <div class=\"product-infomation\">\r\n	                                <h4><a href=\"single-product.html\">FastRoad CoMax</a></h4>\r\n	                                <span class=\"product-price\">$900.00</span>\r\n	                                <span class=\"product-attr\">\r\n	                                    <i class=\"fa fa-circle light-blue\"></i>\r\n	                                    <i class=\"fa fa-circle orange\"></i>\r\n	                                    <i class=\"fa fa-circle blueviolet\"></i>\r\n	                                    <i class=\"fa fa-circle orange-dark\"></i>\r\n	                                    <i class=\"fa fa-circle steelblue\"></i>\r\n	                                </span>\r\n	                            </div>\r\n	                        </div>\r\n	                        <!--End product item-->\r\n\r\n	                    </div>\r\n	                    <div class=\"col-md-3 col-sm-6\">\r\n\r\n	                        <!--Start product item-->\r\n	                        <div class=\"product-item\">\r\n	                            <div class=\"product-thubnail\">\r\n	                                <img src=\"images/product/product7.jpg\" alt=\"product 4\" />\r\n	                                <div class=\"product-meta\">\r\n	                                    <a class=\"add-to-cart\" href=\"shop-cart.html\">Add to cart</a>\r\n	                                    <span class=\"quick-view\">\r\n	                                        <a href=\"#\">Quick view</a>\r\n	                                    </span>\r\n	                                </div>\r\n	                            </div>\r\n	                            <div class=\"product-infomation\">\r\n	                                <h4><a href=\"single-product.html\">Propel Advanced SL 0</a></h4>\r\n	                                <span class=\"product-price\">$900.00</span>\r\n	                                <span class=\"product-attr\">\r\n	                                    <i class=\"fa fa-circle light-blue\"></i>\r\n	                                    <i class=\"fa fa-circle orange\"></i>\r\n	                                    <i class=\"fa fa-circle blueviolet\"></i>\r\n	                                    <i class=\"fa fa-circle orange-dark\"></i>\r\n	                                    <i class=\"fa fa-circle steelblue\"></i>\r\n	                                </span>\r\n	                            </div>\r\n	                        </div>\r\n	                        <!--End product item-->\r\n\r\n	                    </div>\r\n	                </div>\r\n	            </div>\r\n	            <!--End tab item-->\r\n	        </div>\r\n	        <!--End tab content-->\r\n\r\n	    </div>\r\n	</div>\r\n</section>\r\n<?php get_footer() ?>', 'Cửa hàng', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-12-05 16:55:46', '2017-12-05 09:55:46', '', 16, 'http://localhost/hanglinhkien/16-revision-v1.html', 0, 'revision', '', 0),
(165, 1, '2017-12-05 16:56:14', '2017-12-05 09:56:14', '', 'Cửa hàng', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-12-05 16:56:14', '2017-12-05 09:56:14', '', 16, 'http://localhost/hanglinhkien/16-revision-v1.html', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'order', '0'),
(2, 15, 'display_type', ''),
(3, 15, 'thumbnail_id', '0'),
(4, 17, 'thumbnail_id', '34'),
(5, 17, 'product_count_product_cat', '0'),
(6, 18, 'thumbnail_id', '36'),
(7, 18, 'product_count_product_cat', '0'),
(8, 19, 'thumbnail_id', '35'),
(9, 19, 'product_count_product_cat', '0'),
(10, 20, 'order', '0'),
(11, 21, 'order', '0'),
(12, 22, 'order', '0'),
(13, 23, 'order', '0'),
(14, 24, 'order', '0'),
(15, 25, 'order', '0'),
(16, 26, 'order', '0'),
(17, 20, 'product_count_product_cat', '7'),
(18, 21, 'product_count_product_cat', '3'),
(19, 22, 'product_count_product_cat', '4'),
(20, 23, 'product_count_product_cat', '5'),
(21, 24, 'product_count_product_cat', '12'),
(22, 25, 'product_count_product_cat', '6'),
(23, 27, 'order_pa_color', '0'),
(24, 28, 'order_pa_color', '0'),
(25, 26, 'product_count_product_cat', '6'),
(26, 29, 'order_pa_color', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tin tức', 'tin-tuc', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sản phẩm', 'san-pham', 0),
(16, 'Menu 1', 'menu-1', 0),
(17, 'Accessories', 'accessories', 0),
(18, 'Hoodies', 'hoodies', 0),
(19, 'Tshirts', 'tshirts', 0),
(20, 'Music', 'music', 0),
(21, 'Singles', 'singles', 0),
(22, 'Albums', 'albums', 0),
(23, 'Posters', 'posters', 0),
(24, 'Clothing', 'clothing', 0),
(25, 'Hoodies', 'hoodies-clothing', 0),
(26, 'T-shirts', 't-shirts', 0),
(27, 'Black', 'black', 0),
(28, 'Blue', 'blue', 0),
(29, 'Green', 'green', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 16, 0),
(39, 2, 0),
(39, 17, 0),
(40, 2, 0),
(40, 17, 0),
(41, 2, 0),
(41, 17, 0),
(42, 2, 0),
(42, 8, 0),
(42, 17, 0),
(43, 2, 0),
(43, 18, 0),
(44, 2, 0),
(44, 8, 0),
(44, 18, 0),
(45, 2, 0),
(45, 8, 0),
(45, 18, 0),
(46, 2, 0),
(46, 8, 0),
(46, 18, 0),
(47, 2, 0),
(47, 19, 0),
(48, 2, 0),
(48, 19, 0),
(49, 2, 0),
(49, 19, 0),
(50, 2, 0),
(50, 19, 0),
(52, 2, 0),
(52, 19, 0),
(57, 16, 0),
(61, 2, 0),
(61, 20, 0),
(61, 21, 0),
(62, 2, 0),
(62, 20, 0),
(62, 21, 0),
(63, 2, 0),
(63, 20, 0),
(63, 22, 0),
(64, 2, 0),
(64, 20, 0),
(64, 22, 0),
(65, 2, 0),
(65, 20, 0),
(65, 22, 0),
(66, 2, 0),
(66, 24, 0),
(66, 26, 0),
(67, 2, 0),
(67, 24, 0),
(67, 25, 0),
(68, 2, 0),
(68, 24, 0),
(68, 26, 0),
(69, 2, 0),
(69, 24, 0),
(69, 25, 0),
(70, 2, 0),
(70, 24, 0),
(70, 26, 0),
(71, 4, 0),
(71, 24, 0),
(71, 26, 0),
(71, 27, 0),
(71, 29, 0),
(72, 4, 0),
(72, 24, 0),
(72, 25, 0),
(72, 27, 0),
(72, 28, 0),
(73, 2, 0),
(73, 24, 0),
(73, 26, 0),
(74, 2, 0),
(74, 24, 0),
(74, 26, 0),
(75, 2, 0),
(75, 24, 0),
(75, 25, 0),
(76, 5, 0),
(76, 24, 0),
(76, 25, 0),
(81, 3, 0),
(81, 20, 0),
(81, 21, 0),
(84, 2, 0),
(84, 20, 0),
(84, 22, 0),
(93, 2, 0),
(93, 23, 0),
(96, 2, 0),
(96, 23, 0),
(99, 2, 0),
(99, 23, 0),
(102, 2, 0),
(102, 23, 0),
(105, 2, 0),
(105, 23, 0),
(114, 2, 0),
(114, 24, 0),
(114, 25, 0),
(143, 1, 0),
(144, 1, 0),
(151, 1, 0),
(154, 16, 0),
(160, 16, 0),
(161, 16, 0),
(162, 16, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'product_type', '', 0, 20),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 6),
(17, 17, 'product_cat', 'A short category description', 0, 0),
(18, 18, 'product_cat', 'A short category description', 0, 0),
(19, 19, 'product_cat', 'A short category description', 0, 0),
(20, 20, 'product_cat', '', 0, 7),
(21, 21, 'product_cat', '', 20, 3),
(22, 22, 'product_cat', '', 20, 4),
(23, 23, 'product_cat', '', 0, 5),
(24, 24, 'product_cat', '', 0, 12),
(25, 25, 'product_cat', '', 24, 6),
(26, 26, 'product_cat', '', 24, 6),
(27, 27, 'pa_color', '', 0, 2),
(28, 28, 'pa_color', '', 0, 1),
(29, 29, 'pa_color', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:11:{s:64:\"80fcf42e62898c9e3cd5d51e1992277f60717bf11171e935374010bfc4d6e16d\";a:4:{s:10:\"expiration\";i:1512458789;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512285989;}s:64:\"b287fdacb65d0bb0dd4725cabe064aaf08c8bd81e6869f08c41045d6d63a9ccd\";a:4:{s:10:\"expiration\";i:1512524919;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512352119;}s:64:\"8608367e1e0f92edbd96105225e908bae0bcd5d777251dd641c9667110530374\";a:4:{s:10:\"expiration\";i:1512554592;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381792;}s:64:\"454383d66791416c49a1a483901883ad9e158d55cc9e1953c243b51ccd770215\";a:4:{s:10:\"expiration\";i:1512554598;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381798;}s:64:\"588649c9cfac9ab3754c08dc5d254c71879ce68ae05f11eb4e43007e24160e25\";a:4:{s:10:\"expiration\";i:1512554629;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381829;}s:64:\"d74170109d62381bce40bac475e92d01af5f5b273b6ad6c9ccf783cdde341bf8\";a:4:{s:10:\"expiration\";i:1512554647;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381847;}s:64:\"fae5aa037fa787a74b2e0ff00187ffa7f3135b3e8c711507f9d679d88d5caafb\";a:4:{s:10:\"expiration\";i:1512554672;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381872;}s:64:\"c80a5836fb8331778df6f0203714395359e2ad8e6c03411efa44e20656fbcb35\";a:4:{s:10:\"expiration\";i:1512554707;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381907;}s:64:\"7fba80f6af126949cd1b5b179488143b37a21a07040820cf6fe836b4bd7bd986\";a:4:{s:10:\"expiration\";i:1512554711;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381911;}s:64:\"1ed9dcb2fc13e89454819411da354dcc9752e531296d9ae96faf73a150d0dfe1\";a:4:{s:10:\"expiration\";i:1512554716;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381916;}s:64:\"51b0b06659ef5e2226f6802ee03217434d2389e43cc39cfc73590a7e3d1abf18\";a:4:{s:10:\"expiration\";i:1512554727;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512381927;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wporg_favorites', 'huykiradotnet'),
(20, 1, 'wp_yoast_notifications', 'a:5:{i:0;a:2:{s:7:\"message\";s:582:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 29%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/hanglinhkien/wp-admin/admin.php?page=wpseo_titles&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";}}i:1;a:2:{s:7:\"message\";s:778:\"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href=\"https://yoa.st/rate-yoast-seo?utm_content=5.8\">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href=\"https://yoa.st/bugreport?utm_content=5.8\">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?utm_content=5.8\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class=\"button\" href=\"http://localhost/hanglinhkien/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:2;a:2:{s:7:\"message\";s:452:\"Yoast SEO and WooCommerce can work together a lot better by adding a helper plugin. Please install <a href=\"http://localhost/hanglinhkien/wp-admin/update.php?action=install-plugin&amp;plugin=wpseo-woocommerce&amp;_wpnonce=56522d5c06\">Yoast WooCommerce SEO</a> to make your life better. <a href=\"https://yoa.st/1o0?utm_content=5.8\" aria-label=\"More information about Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";}}i:3;a:2:{s:7:\"message\";s:172:\"Don\'t miss your crawl errors: <a href=\"http://localhost/hanglinhkien/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:4;a:2:{s:7:\"message\";s:226:\"<strong>Huge SEO Issue: You\'re blocking access to robots.</strong> You must <a href=\"http://localhost/hanglinhkien/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility.\";s:7:\"options\";a:8:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:3:{s:32:\"ad61ab143223efbc24c7d2583be69251\";a:10:{s:3:\"key\";s:32:\"ad61ab143223efbc24c7d2583be69251\";s:10:\"product_id\";i:74;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:54;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:54;s:8:\"line_tax\";i:0;}s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";a:10:{s:3:\"key\";s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";s:10:\"product_id\";i:114;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:7;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:245000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:245000;s:8:\"line_tax\";i:0;}s:32:\"65b9eea6e1cc6bb9f0cd2a47751a186f\";a:10:{s:3:\"key\";s:32:\"65b9eea6e1cc6bb9f0cd2a47751a186f\";s:10:\"product_id\";i:105;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:24;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:360;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:360;s:8:\"line_tax\";i:0;}}}'),
(22, 1, '_yoast_wpseo_profile_updated', '1512352299'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '16'),
(26, 1, 'wp_user-settings', 'libraryContent=browse&post_dfw=on&editor=html'),
(27, 1, 'wp_user-settings-time', '1512467743'),
(28, 1, 'wp_product_import_error_log', 'a:0:{}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BToKq/pEhGD7h7m7Jumuic1upL.uDr.', 'admin', 'quangthinm@gmail.com', '', '2017-12-03 07:26:12', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(37, '1', 'a:13:{s:4:\"cart\";s:1063:\"a:3:{s:32:\"ad61ab143223efbc24c7d2583be69251\";a:10:{s:3:\"key\";s:32:\"ad61ab143223efbc24c7d2583be69251\";s:10:\"product_id\";i:74;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:54;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:54;s:8:\"line_tax\";i:0;}s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";a:10:{s:3:\"key\";s:32:\"5fd0b37cd7dbbb00f97ba6ce92bf5add\";s:10:\"product_id\";i:114;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:7;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:245000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:245000;s:8:\"line_tax\";i:0;}s:32:\"65b9eea6e1cc6bb9f0cd2a47751a186f\";a:10:{s:3:\"key\";s:32:\"65b9eea6e1cc6bb9f0cd2a47751a186f\";s:10:\"product_id\";i:105;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:24;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:360;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:360;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:410:\"a:15:{s:8:\"subtotal\";s:6:\"245414\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"30000\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";s:1:\"0\";s:19:\"cart_contents_total\";s:6:\"245414\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"275414\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:670:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"quangthinm@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:441:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_98c431ae7e494ba07dacaa39a93132ff\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:12:\"Đồng giá\";s:4:\"cost\";s:5:\"30000\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:11:\"Mặt hàng\";s:73:\"Happy Ninja &times; 3, Patient Ninja &times; 7, Ship Your Idea &times; 24\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:21:\"chosen_payment_method\";s:6:\"cheque\";s:10:\"wc_notices\";s:1606:\"a:1:{s:7:\"success\";a:9:{i:0;s:160:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> &ldquo;Patient Ninja&rdquo; đã được thêm vào giỏ hàng.\";i:1;s:160:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> &ldquo;Patient Ninja&rdquo; đã được thêm vào giỏ hàng.\";i:2;s:160:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> &ldquo;Patient Ninja&rdquo; đã được thêm vào giỏ hàng.\";i:3;s:160:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> &ldquo;Patient Ninja&rdquo; đã được thêm vào giỏ hàng.\";i:4;s:160:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> &ldquo;Patient Ninja&rdquo; đã được thêm vào giỏ hàng.\";i:5;s:160:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> &ldquo;Patient Ninja&rdquo; đã được thêm vào giỏ hàng.\";i:6;s:160:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> &ldquo;Patient Ninja&rdquo; đã được thêm vào giỏ hàng.\";i:7;s:171:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> 4 &times; &ldquo;Ship Your Idea&rdquo; đã được thêm vào giỏ hàng.\";i:8;s:172:\"<a href=\"http://localhost/hanglinhkien/gio-hang\" class=\"button wc-forward\">Xem giỏ hàng</a> 20 &times; &ldquo;Ship Your Idea&rdquo; đã được thêm vào giỏ hàng.\";}}\";}', 1512524926);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Việt Nam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(6, 0, 0),
(7, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(37, 0, 0),
(38, 0, 0),
(52, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(81, 0, 0),
(84, 0, 0),
(93, 0, 0),
(96, 0, 0),
(99, 0, 0),
(102, 0, 0),
(105, 0, 0),
(114, 0, 0),
(140, 0, 0),
(143, 0, 0),
(144, 0, 0),
(148, 0, 0),
(149, 0, 0),
(151, 0, 0),
(155, 0, 0),
(156, 0, 0),
(158, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
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
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1882;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
