-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2022 pada 02.10
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s-cart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '00_00_00_step1_create_tables_admin', 1),
(2, '00_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_config`
--

CREATE TABLE `sc_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security` int(11) DEFAULT 0,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_config`
--

INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `security`, `store_id`, `sort`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, '0', 0, 'Plugins/Payment/Cash::lang.title', NULL, NULL),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, '0', 0, 'Shipping Standard', NULL, NULL),
(3, 'global', 'seo_config', 'url_seo_lang', '0', 0, '0', 1, 'seo.url_seo_lang', NULL, NULL),
(4, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, '0', 0, 'admin.config.LOG_SLACK_WEBHOOK_URL', NULL, NULL),
(5, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, '0', 0, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', NULL, NULL),
(6, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, '0', 0, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', NULL, NULL),
(7, 'global', 'api_config', 'api_connection_required', '1', 0, '0', 1, 'api_connection.api_connection_required', NULL, NULL),
(8, 'global', 'api_config', 'api_mode', '0', 0, '0', 1, 'api_connection.api_mode', NULL, NULL),
(9, 'global', 'cache', 'cache_status', '0', 0, '0', 0, 'admin.cache.cache_status', NULL, NULL),
(10, 'global', 'cache', 'cache_time', '600', 0, '0', 0, 'admin.cache.cache_time', NULL, NULL),
(11, 'global', 'cache', 'cache_category', '0', 0, '0', 3, 'admin.cache.cache_category', NULL, NULL),
(12, 'global', 'cache', 'cache_product', '0', 0, '0', 4, 'admin.cache.cache_product', NULL, NULL),
(13, 'global', 'cache', 'cache_news', '0', 0, '0', 5, 'admin.cache.cache_news', NULL, NULL),
(14, 'global', 'cache', 'cache_category_cms', '0', 0, '0', 6, 'admin.cache.cache_category_cms', NULL, NULL),
(15, 'global', 'cache', 'cache_content_cms', '0', 0, '0', 7, 'admin.cache.cache_content_cms', NULL, NULL),
(16, 'global', 'cache', 'cache_page', '0', 0, '0', 8, 'admin.cache.cache_page', NULL, NULL),
(17, 'global', 'cache', 'cache_country', '0', 0, '0', 10, 'admin.cache.cache_country', NULL, NULL),
(18, 'global', 'env_mail', 'smtp_mode', '', 0, '0', 0, 'email.smtp_mode', NULL, NULL),
(19, '', 'product_config_attribute', 'product_brand', '1', 0, '1', 0, 'product.config_manager.brand', NULL, NULL),
(20, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, '1', 0, '', NULL, NULL),
(21, '', 'product_config_attribute', 'product_supplier', '1', 0, '1', 0, 'product.config_manager.supplier', NULL, NULL),
(22, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, '1', 0, '', NULL, NULL),
(23, '', 'product_config_attribute', 'product_price', '1', 0, '1', 0, 'product.config_manager.price', NULL, NULL),
(24, '', 'product_config_attribute_required', 'product_price_required', '1', 0, '1', 0, '', NULL, NULL),
(25, '', 'product_config_attribute', 'product_cost', '1', 0, '1', 0, 'product.config_manager.cost', NULL, NULL),
(26, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, '1', 0, '', NULL, NULL),
(27, '', 'product_config_attribute', 'product_promotion', '1', 0, '1', 0, 'product.config_manager.promotion', NULL, NULL),
(28, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, '1', 0, '', NULL, NULL),
(29, '', 'product_config_attribute', 'product_stock', '1', 0, '1', 0, 'product.config_manager.stock', NULL, NULL),
(30, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, '1', 0, '', NULL, NULL),
(31, '', 'product_config_attribute', 'product_kind', '1', 0, '1', 0, 'product.config_manager.kind', NULL, NULL),
(32, '', 'product_config_attribute', 'product_property', '1', 0, '1', 0, 'product.config_manager.property', NULL, NULL),
(33, '', 'product_config_attribute_required', 'product_property_required', '0', 0, '1', 0, '', NULL, NULL),
(34, '', 'product_config_attribute', 'product_attribute', '1', 0, '1', 0, 'product.config_manager.attribute', NULL, NULL),
(35, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, '1', 0, '', NULL, NULL),
(36, '', 'product_config_attribute', 'product_available', '1', 0, '1', 0, 'product.config_manager.available', NULL, NULL),
(37, '', 'product_config_attribute_required', 'product_available_required', '0', 0, '1', 0, '', NULL, NULL),
(38, '', 'product_config_attribute', 'product_weight', '1', 0, '1', 0, 'product.config_manager.weight', NULL, NULL),
(39, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, '1', 0, '', NULL, NULL),
(40, '', 'product_config_attribute', 'product_length', '1', 0, '1', 0, 'product.config_manager.length', NULL, NULL),
(41, '', 'product_config_attribute_required', 'product_length_required', '0', 0, '1', 0, '', NULL, NULL),
(42, '', 'product_config', 'product_display_out_of_stock', '1', 0, '1', 19, 'product.config_manager.product_display_out_of_stock', NULL, NULL),
(43, '', 'product_config', 'show_date_available', '1', 0, '1', 21, 'product.config_manager.show_date_available', NULL, NULL),
(44, '', 'product_config', 'product_tax', '1', 0, '1', 0, 'product.config_manager.tax', NULL, NULL),
(45, '', 'customer_config_attribute', 'customer_lastname', '1', 0, '1', 1, 'customer.config_manager.lastname', NULL, NULL),
(46, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, '1', 1, '', NULL, NULL),
(47, '', 'customer_config_attribute', 'customer_address1', '1', 0, '1', 2, 'customer.config_manager.address1', NULL, NULL),
(48, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, '1', 2, '', NULL, NULL),
(49, '', 'customer_config_attribute', 'customer_address2', '1', 0, '1', 2, 'customer.config_manager.address2', NULL, NULL),
(50, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, '1', 2, '', NULL, NULL),
(51, '', 'customer_config_attribute', 'customer_address3', '0', 0, '1', 2, 'customer.config_manager.address3', NULL, NULL),
(52, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, '1', 2, '', NULL, NULL),
(53, '', 'customer_config_attribute', 'customer_company', '0', 0, '1', 0, 'customer.config_manager.company', NULL, NULL),
(54, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, '1', 0, '', NULL, NULL),
(55, '', 'customer_config_attribute', 'customer_postcode', '0', 0, '1', 0, 'customer.config_manager.postcode', NULL, NULL),
(56, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, '1', 0, '', NULL, NULL),
(57, '', 'customer_config_attribute', 'customer_country', '1', 0, '1', 0, 'customer.config_manager.country', NULL, NULL),
(58, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, '1', 0, '', NULL, NULL),
(59, '', 'customer_config_attribute', 'customer_group', '0', 0, '1', 0, 'customer.config_manager.group', NULL, NULL),
(60, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, '1', 0, '', NULL, NULL),
(61, '', 'customer_config_attribute', 'customer_birthday', '0', 0, '1', 0, 'customer.config_manager.birthday', NULL, NULL),
(62, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, '1', 0, '', NULL, NULL),
(63, '', 'customer_config_attribute', 'customer_sex', '0', 0, '1', 0, 'customer.config_manager.sex', NULL, NULL),
(64, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, '1', 0, '', NULL, NULL),
(65, '', 'customer_config_attribute', 'customer_phone', '1', 0, '1', 0, 'customer.config_manager.phone', NULL, NULL),
(66, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, '1', 1, '', NULL, NULL),
(67, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, '1', 0, 'customer.config_manager.name_kana', NULL, NULL),
(68, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, '1', 1, '', NULL, NULL),
(69, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, '1', 0, 'admin.env.ADMIN_NAME', NULL, NULL),
(70, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, '1', 0, 'admin.env.ADMIN_TITLE', NULL, NULL),
(71, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, '1', 0, 'admin.env.ADMIN_LOGO', NULL, NULL),
(72, '', 'admin_config', 'hidden_copyright_footer', '0', 0, '1', 0, 'admin.env.hidden_copyright_footer', NULL, NULL),
(73, '', 'admin_config', 'hidden_copyright_footer_admin', '0', 0, '1', 0, 'admin.env.hidden_copyright_footer_admin', NULL, NULL),
(74, '', 'display_config', 'product_top', '12', 0, '1', 0, 'store.display.product_top', NULL, NULL),
(75, '', 'display_config', 'product_list', '12', 0, '1', 0, 'store.display.list_product', NULL, NULL),
(76, '', 'display_config', 'product_relation', '4', 0, '1', 0, 'store.display.relation_product', NULL, NULL),
(77, '', 'display_config', 'product_viewed', '4', 0, '1', 0, 'store.display.viewed_product', NULL, NULL),
(78, '', 'display_config', 'item_list', '12', 0, '1', 0, 'store.display.item_list', NULL, NULL),
(79, '', 'display_config', 'item_top', '12', 0, '1', 0, 'store.display.item_top', NULL, NULL),
(80, '', 'order_config', 'shop_allow_guest', '1', 0, '1', 11, 'order.admin.shop_allow_guest', NULL, NULL),
(81, '', 'order_config', 'product_preorder', '1', 0, '1', 18, 'order.admin.product_preorder', NULL, NULL),
(82, '', 'order_config', 'product_buy_out_of_stock', '1', 0, '1', 20, 'order.admin.product_buy_out_of_stock', NULL, NULL),
(83, '', 'order_config', 'shipping_off', '0', 0, '1', 20, 'order.admin.shipping_off', NULL, NULL),
(84, '', 'order_config', 'payment_off', '0', 0, '1', 20, 'order.admin.payment_off', NULL, NULL),
(85, '', 'email_action', 'email_action_mode', '0', 0, '1', 0, 'email.email_action.email_action_mode', NULL, NULL),
(86, '', 'email_action', 'email_action_queue', '0', 0, '1', 1, 'email.email_action.email_action_queue', NULL, NULL),
(87, '', 'email_action', 'order_success_to_admin', '0', 0, '1', 1, 'email.email_action.order_success_to_admin', NULL, NULL),
(88, '', 'email_action', 'order_success_to_customer', '0', 0, '1', 2, 'email.email_action.order_success_to_cutomer', NULL, NULL),
(89, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, '1', 3, 'email.email_action.order_success_to_cutomer_pdf', NULL, NULL),
(90, '', 'email_action', 'customer_verify', '0', 0, '1', 4, 'email.email_action.customer_verify', NULL, NULL),
(91, '', 'email_action', 'welcome_customer', '0', 0, '1', 4, 'email.email_action.welcome_customer', NULL, NULL),
(92, '', 'email_action', 'contact_to_admin', '1', 0, '1', 6, 'email.email_action.contact_to_admin', NULL, NULL),
(93, '', 'smtp_config', 'smtp_host', '', 0, '1', 1, 'email.config_smtp.smtp_host', NULL, NULL),
(94, '', 'smtp_config', 'smtp_user', '', 0, '1', 2, 'email.config_smtp.smtp_user', NULL, NULL),
(95, '', 'smtp_config', 'smtp_password', '', 0, '1', 3, 'email.config_smtp.smtp_password', NULL, NULL),
(96, '', 'smtp_config', 'smtp_security', '', 0, '1', 4, 'email.config_smtp.smtp_security', NULL, NULL),
(97, '', 'smtp_config', 'smtp_port', '', 0, '1', 5, 'email.config_smtp.smtp_port', NULL, NULL),
(98, '', 'smtp_config', 'smtp_name', '', 0, '1', 6, 'email.config_smtp.smtp_name', NULL, NULL),
(99, '', 'smtp_config', 'smtp_from', '', 0, '1', 7, 'email.config_smtp.smtp_from', NULL, NULL),
(100, '', 'url_config', 'SUFFIX_URL', '.html', 0, '1', 0, 'admin.env.SUFFIX_URL', NULL, NULL),
(101, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, '1', 0, 'admin.env.PREFIX_SHOP', NULL, NULL),
(102, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, '1', 0, 'admin.env.PREFIX_BRAND', NULL, NULL),
(103, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, '1', 0, 'admin.env.PREFIX_CATEGORY', NULL, NULL),
(104, '', 'url_config', 'PREFIX_CATEGORY_VENDOR', 'category-vendor', 0, '1', 0, 'admin.env.PREFIX_CATEGORY_VENDOR', NULL, NULL),
(105, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, '1', 0, 'admin.env.PREFIX_SUB_CATEGORY', NULL, NULL),
(106, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, '1', 0, 'admin.env.PREFIX_PRODUCT', NULL, NULL),
(107, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, '1', 0, 'admin.env.PREFIX_SEARCH', NULL, NULL),
(108, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, '1', 0, 'admin.env.PREFIX_CONTACT', NULL, NULL),
(109, '', 'url_config', 'PREFIX_NEWS', 'news', 0, '1', 0, 'admin.env.PREFIX_NEWS', NULL, NULL),
(110, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, '1', 0, 'admin.env.PREFIX_MEMBER', NULL, NULL),
(111, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, '1', 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST', NULL, NULL),
(112, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, '1', 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', NULL, NULL),
(113, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, '1', 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', NULL, NULL),
(114, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, '1', 0, 'admin.env.PREFIX_CMS_CATEGORY', NULL, NULL),
(115, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, '1', 0, 'admin.env.PREFIX_CMS_ENTRY', NULL, NULL),
(116, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, '1', 0, 'admin.env.PREFIX_CART_WISHLIST', NULL, NULL),
(117, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, '1', 0, 'admin.env.PREFIX_CART_COMPARE', NULL, NULL),
(118, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, '1', 0, 'admin.env.PREFIX_CART_DEFAULT', NULL, NULL),
(119, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, '1', 0, 'admin.env.PREFIX_CART_CHECKOUT', NULL, NULL),
(120, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, '1', 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', NULL, NULL),
(121, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, '1', 0, 'admin.env.PREFIX_ORDER_SUCCESS', NULL, NULL),
(122, '', 'captcha_config', 'captcha_mode', '0', 0, '1', 20, 'admin.captcha.captcha_mode', NULL, NULL),
(123, '', 'captcha_config', 'captcha_page', '[]', 0, '1', 10, 'captcha.captcha_page', NULL, NULL),
(124, '', 'captcha_config', 'captcha_method', '', 0, '1', 0, 'admin.captcha.captcha_method', NULL, NULL),
(125, '', 'admin_custom_config', 'facebook_url', 'https://www.facebook.com/SCart.Ecommerce/', 0, '1', 0, 'admin.admin_custom_config.facebook_url', NULL, NULL),
(126, '', 'admin_custom_config', 'fanpage_url', 'https://www.facebook.com/groups/scart.opensource', 0, '1', 0, 'admin.admin_custom_config.fanpage_url', NULL, NULL),
(127, '', 'admin_custom_config', 'twitter_url', 'https://twitter.com/ecommercescart', 0, '1', 0, 'admin.admin_custom_config.twitter_url', NULL, NULL),
(128, '', 'admin_custom_config', 'instagram_url', '#', 0, '1', 0, 'admin.admin_custom_config.instagram_url', NULL, NULL),
(129, '', 'admin_custom_config', 'youtube_url', 'https://www.youtube.com/channel/UCR8kitefby3N6KvvawQVqdg/videos', 0, '1', 0, 'admin.admin_custom_config.youtube_url', NULL, NULL),
(130, '', 'config_layout', 'link_account', '1', 0, '1', 0, 'admin.config_layout.link_account', NULL, NULL),
(131, '', 'config_layout', 'link_language', '1', 0, '1', 0, 'admin.config_layout.link_language', NULL, NULL),
(132, '', 'config_layout', 'link_currency', '1', 0, '1', 0, 'admin.config_layout.link_currency', NULL, NULL),
(133, '', 'config_layout', 'link_cart', '1', 0, '1', 0, 'admin.config_layout.link_cart', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_log`
--

CREATE TABLE `sc_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_log`
--

INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 03:49:26', '2022-03-14 03:49:26'),
(2, '1', 'sc_admin/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 03:49:32', '2022-03-14 03:49:32'),
(3, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 03:49:33', '2022-03-14 03:49:33'),
(4, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 05:43:26', '2022-03-14 05:43:26'),
(5, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 05:45:55', '2022-03-14 05:45:55'),
(6, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 09:38:57', '2022-03-14 09:38:57'),
(7, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 10:21:32', '2022-03-14 10:21:32'),
(8, '1', 'sc_admin/theme/dark', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 10:47:01', '2022-03-14 10:47:01'),
(9, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 10:47:02', '2022-03-14 10:47:02'),
(10, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 12:37:01', '2022-03-14 12:37:01'),
(11, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 12:37:10', '2022-03-14 12:37:10'),
(12, '1', 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 15:39:45', '2022-03-14 15:39:45'),
(13, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-14 15:47:59', '2022-03-14 15:47:59'),
(14, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"language\"}', '2022-03-14 15:48:26', '2022-03-14 15:48:26'),
(15, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647272909285\"}', '2022-03-14 15:48:30', '2022-03-14 15:48:30'),
(16, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647272909284\"}', '2022-03-14 15:48:31', '2022-03-14 15:48:31'),
(17, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647272909286\"}', '2022-03-14 15:48:32', '2022-03-14 15:48:32'),
(18, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 04:27:21', '2022-03-16 04:27:21'),
(19, '1', 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 04:28:11', '2022-03-16 04:28:11'),
(20, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 04:28:18', '2022-03-16 04:28:18'),
(21, '1', 'sc_admin/language/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"name\":\"Indonesia\",\"code\":\"vi\",\"icon\":\"\\/data\\/language\\/flag_vn.png\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"ZKSFZwkiWPhbmbytlL1h7jGVvrAhSLqlaKZHd7zj\"}', '2022-03-16 04:28:35', '2022-03-16 04:28:35'),
(22, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 04:28:37', '2022-03-16 04:28:37'),
(23, '1', 'sc_admin/locale/vi', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 06:52:06', '2022-03-16 06:52:06'),
(24, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 06:52:08', '2022-03-16 06:52:08'),
(25, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 14:27:20', '2022-03-16 14:27:20'),
(26, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 14:29:29', '2022-03-16 14:29:29'),
(27, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 17:56:06', '2022-03-16 17:56:06'),
(28, '1', 'sc_admin/locale/vi', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 17:56:18', '2022-03-16 17:56:18'),
(29, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 17:56:20', '2022-03-16 17:56:20'),
(30, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 17:58:00', '2022-03-16 17:58:00'),
(31, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 17:59:24', '2022-03-16 17:59:24'),
(32, '1', 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 18:05:57', '2022-03-16 18:05:57'),
(33, '1', 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 18:09:02', '2022-03-16 18:09:02'),
(34, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"language\"}', '2022-03-16 18:09:19', '2022-03-16 18:09:19'),
(35, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647454161269\"}', '2022-03-16 18:09:24', '2022-03-16 18:09:24'),
(36, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647454161268\"}', '2022-03-16 18:09:24', '2022-03-16 18:09:24'),
(37, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647454161270\"}', '2022-03-16 18:09:26', '2022-03-16 18:09:26'),
(38, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"language\"}', '2022-03-16 18:09:46', '2022-03-16 18:09:46'),
(39, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647454186396\"}', '2022-03-16 18:09:48', '2022-03-16 18:09:48'),
(40, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647454186395\"}', '2022-03-16 18:09:49', '2022-03-16 18:09:49'),
(41, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647454186397\"}', '2022-03-16 18:09:51', '2022-03-16 18:09:51'),
(42, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 18:09:57', '2022-03-16 18:09:57'),
(43, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"language\"}', '2022-03-16 18:10:02', '2022-03-16 18:10:02'),
(44, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647454202424\"}', '2022-03-16 18:10:04', '2022-03-16 18:10:04'),
(45, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"_\":\"1647454202425\"}', '2022-03-16 18:10:05', '2022-03-16 18:10:05'),
(46, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"language\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647454202426\"}', '2022-03-16 18:10:06', '2022-03-16 18:10:06'),
(47, '1', 'sc_admin/language/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"name\":\"Indonesia\",\"code\":\"vi\",\"icon\":\"\\/data\\/language\\/Idn.png\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"hMCunJVDy8k4JQSzFZbzEbiiuT7cYhX2ohGQSp6L\"}', '2022-03-16 18:10:15', '2022-03-16 18:10:15'),
(48, '1', 'sc_admin/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-16 18:10:17', '2022-03-16 18:10:17'),
(49, '1', 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:41:01', '2022-03-17 00:41:01'),
(50, '1', 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:41:15', '2022-03-17 00:41:15'),
(51, '1', 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:41:20', '2022-03-17 00:41:20'),
(52, '1', 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"descriptions\":{\"en\":{\"title\":\"Kitchenware\",\"keyword\":\"Kitchenware\",\"description\":\"Kitchenware\"},\"vi\":{\"title\":\"Peralatan dapur\",\"keyword\":\"Peralatan dapur\",\"description\":\"Peralatan-peralatan dapur\"}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:42:52', '2022-03-17 00:42:52'),
(53, '1', 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:42:54', '2022-03-17 00:42:54'),
(54, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:42:59', '2022-03-17 00:42:59'),
(55, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:43:03', '2022-03-17 00:43:03'),
(56, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"product\"}', '2022-03-17 00:44:29', '2022-03-17 00:44:29'),
(57, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"product\"}', '2022-03-17 00:44:35', '2022-03-17 00:44:35'),
(58, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"product\"}', '2022-03-17 00:44:38', '2022-03-17 00:44:38'),
(59, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647477879239\"}', '2022-03-17 00:44:41', '2022-03-17 00:44:41'),
(60, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647477879240\"}', '2022-03-17 00:44:42', '2022-03-17 00:44:42'),
(61, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647477879241\"}', '2022-03-17 00:44:43', '2022-03-17 00:44:43'),
(62, '1', 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:45:13', '2022-03-17 00:45:13'),
(63, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1647477879242\"}', '2022-03-17 00:45:14', '2022-03-17 00:45:14'),
(64, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647477879243\"}', '2022-03-17 00:45:15', '2022-03-17 00:45:15'),
(65, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1647477879244\"}', '2022-03-17 00:45:25', '2022-03-17 00:45:25'),
(66, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Plate rack\",\"keyword\":\"Plate rack\",\"description\":\"With stainless steel material, this 2-Tier Stainless Steel Dish Drainer is easy to clean and not easy rusty.\",\"content\":null},\"vi\":{\"name\":\"Peralatan dapur\",\"keyword\":\"Peralatan dapur\",\"description\":\"Dengan material stainless steel, 2-Tier Stainless Steel Dish Drainer ini mudah dibersihkan dan tidak mudah\\r\\nberkarat.\",\"content\":null}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/rakpiring.jpg\",\"sku\":null,\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"4\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"1.5\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-03-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:46:45', '2022-03-17 00:46:45'),
(67, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:46:46', '2022-03-17 00:46:46'),
(68, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Plate rack\",\"keyword\":\"Plate rack\",\"description\":\"2-Tier Stainless Steel Dish Drainer is a 2-tier plate rack that you can use to put washed plates and bowls. In addition, there is also a place to put cutlery such as spoons and forks and glasses. With stainless steel material, this 2-Tier Stainless Steel Dish Drainer is easy to clean and not easily rusted. Capacity: Can hold up to 17 dishes.\",\"content\":\"Product details:<br \\/>\\r\\nMaterial: PP + Carbon iron<br \\/>\\r\\nPainting: Nano powder spraying coating<br \\/>\\r\\nLevel: 2 stacking \\/ 3 stacking<br \\/>\\r\\nWrana : Black<br \\/>\\r\\nMain frame size:42 x 23 x 35cm (2 stacking), 42 x 23 x 47cm (3 stacking)<br \\/>\\r\\nPackaging size (+cardboard packing):56 x 23 x 35cm (2 stacking), 56 x 23 x 47cm (3 stacking)<br \\/>\\r\\nMaximum capacity per rack: 5 kg<br \\/>\\r\\nNet weight 1.54 kg (2 stacking), 2.28 kg (3 stacking)<br \\/>\\r\\nFill in the package:<br \\/>\\r\\n- 2 pcs Main frame of left and right grip<br \\/>\\r\\n- 2 pcs Frame to slice a plate (3 pcs for 3 levels)<br \\/>\\r\\n- 1 pcs Hook\\/Hanger<br \\/>\\r\\n- 1 pcs Tray storage<br \\/>\\r\\n- 1 pcs Spoon\\/Chopstick Storage<br \\/>\\r\\n- 2 pcs Alas\\/water container (3 pcs for 3 levels)<br \\/>\\r\\n- 1 piece of instructions for use<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;\"},\"vi\":{\"name\":\"Peralatan dapur\",\"keyword\":\"Peralatan dapur\",\"description\":\"2-Tier Stainless Steel Dish Drainer adalah rak piring 2 tingkat yang dapat Anda gunakan untuk meletakkan piring dan mangkuk yang telah dicuci. Selain itu, tersedia juga tempat untuk meletakkan alat makan seperti sendok dan garpu serta gelas. Dengan material stainless steel, 2-Tier Stainless Steel Dish Drainer ini mudah dibersihkan dan tidak mudah berkarat. Capacity: Can hold up to 17 dishes.\",\"content\":\"<br \\/>\\r\\nDetail produk : Bahan : PP + Besi karbon Pengecatan : Nano powder spraying coating Tingkatan : 2 susun \\/ 3 susun Wrana : Hitam Ukuran rangka utama\\uff1a42 x 23 x 35cm (2 susun), 42 x 23 x 47cm (3 susun) Ukuran kemasan (+kardus packing)\\uff1a56 x 23 x 35cm (2 susun) , 56 x 23 x 47cm (3 susun) Kapasitas maksimum per rak : 5 kg Berat bersih 1.54 kg (2 susun), 2.28 kg (3 susun) Isi dalam paket : - 2 pcs Rangka utama pegangan kiri dan kanan - 2 pcs Rangka untuk meniriskan piring (3 pcs untuk 3 level) - 1 pcs Pengait\\/Gantungan - 1 pcs Penyimpan nampan - 1 pcs Tempat Penyimpanan Sendok\\/Sumpit - 2 pcs Alas\\/wadah air (3 pcs untuk 3 level) - 1 buah petunjuk penggunaan\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/rakpiring.jpg\",\"sku\":\"PD01\",\"alias\":\"plate-rack\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"4\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"1.5\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-03-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:48:53', '2022-03-17 00:48:53'),
(69, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:48:54', '2022-03-17 00:48:54'),
(70, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Plate rack\",\"keyword\":\"Plate rack\",\"description\":\"2-Tier Stainless Steel Dish Drainer is a 2-tier plate rack that you can use to put washed plates and bowls.\",\"content\":\"Product details:<br \\/>\\r\\nMaterial: PP + Carbon iron<br \\/>\\r\\nPainting: Nano powder spraying coating<br \\/>\\r\\nLevel: 2 stacking \\/ 3 stacking<br \\/>\\r\\nWrana : Black<br \\/>\\r\\nMain frame size:42 x 23 x 35cm (2 stacking), 42 x 23 x 47cm (3 stacking)<br \\/>\\r\\nPackaging size (+cardboard packing):56 x 23 x 35cm (2 stacking), 56 x 23 x 47cm (3 stacking)<br \\/>\\r\\nMaximum capacity per rack: 5 kg<br \\/>\\r\\nNet weight 1.54 kg (2 stacking), 2.28 kg (3 stacking)<br \\/>\\r\\nFill in the package:<br \\/>\\r\\n- 2 pcs Main frame of left and right grip<br \\/>\\r\\n- 2 pcs Frame to slice a plate (3 pcs for 3 levels)<br \\/>\\r\\n- 1 pcs Hook\\/Hanger<br \\/>\\r\\n- 1 pcs Tray storage<br \\/>\\r\\n- 1 pcs Spoon\\/Chopstick Storage<br \\/>\\r\\n- 2 pcs Alas\\/water container (3 pcs for 3 levels)<br \\/>\\r\\n- 1 piece of instructions for use<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;\"},\"vi\":{\"name\":\"Peralatan dapur\",\"keyword\":\"Peralatan dapur\",\"description\":\"2-Tier Stainless Steel Dish Drainer adalah rak piring 2 tingkat yang dapat Anda gunakan untuk meletakkan piring dan mangkuk yang telah dicuci. Selain itu, tersedia juga tempat untuk meletakkan alat makan seperti sendok dan garpu serta gelas. Dengan material stainless steel, 2-Tier Stainless Steel Dish Drainer ini mudah dibersihkan dan tidak mudah berkarat. Capacity: Can hold up to 17 dishes.\",\"content\":\"<br \\/>\\r\\nDetail produk : Bahan : PP + Besi karbon Pengecatan : Nano powder spraying coating Tingkatan : 2 susun \\/ 3 susun Wrana : Hitam Ukuran rangka utama\\uff1a42 x 23 x 35cm (2 susun), 42 x 23 x 47cm (3 susun) Ukuran kemasan (+kardus packing)\\uff1a56 x 23 x 35cm (2 susun) , 56 x 23 x 47cm (3 susun) Kapasitas maksimum per rak : 5 kg Berat bersih 1.54 kg (2 susun), 2.28 kg (3 susun) Isi dalam paket : - 2 pcs Rangka utama pegangan kiri dan kanan - 2 pcs Rangka untuk meniriskan piring (3 pcs untuk 3 level) - 1 pcs Pengait\\/Gantungan - 1 pcs Penyimpan nampan - 1 pcs Tempat Penyimpanan Sendok\\/Sumpit - 2 pcs Alas\\/wadah air (3 pcs untuk 3 level) - 1 buah petunjuk penggunaan\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/rakpiring.jpg\",\"sku\":\"PD01\",\"alias\":\"plate-rack\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"4\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"1.5\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-03-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:49:16', '2022-03-17 00:49:16'),
(71, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:49:17', '2022-03-17 00:49:17'),
(72, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Plate rack\",\"keyword\":\"Plate rack\",\"description\":\"2-Tier Stainless Steel Dish Drainer is a 2-tier plate rack\",\"content\":\"Product details:<br \\/>\\r\\nMaterial: PP + Carbon iron<br \\/>\\r\\nPainting: Nano powder spraying coating<br \\/>\\r\\nLevel: 2 stacking \\/ 3 stacking<br \\/>\\r\\nWrana : Black<br \\/>\\r\\nMain frame size:42 x 23 x 35cm (2 stacking), 42 x 23 x 47cm (3 stacking)<br \\/>\\r\\nPackaging size (+cardboard packing):56 x 23 x 35cm (2 stacking), 56 x 23 x 47cm (3 stacking)<br \\/>\\r\\nMaximum capacity per rack: 5 kg<br \\/>\\r\\nNet weight 1.54 kg (2 stacking), 2.28 kg (3 stacking)<br \\/>\\r\\nFill in the package:<br \\/>\\r\\n- 2 pcs Main frame of left and right grip<br \\/>\\r\\n- 2 pcs Frame to slice a plate (3 pcs for 3 levels)<br \\/>\\r\\n- 1 pcs Hook\\/Hanger<br \\/>\\r\\n- 1 pcs Tray storage<br \\/>\\r\\n- 1 pcs Spoon\\/Chopstick Storage<br \\/>\\r\\n- 2 pcs Alas\\/water container (3 pcs for 3 levels)<br \\/>\\r\\n- 1 piece of instructions for use<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;\"},\"vi\":{\"name\":\"Peralatan dapur\",\"keyword\":\"Peralatan dapur\",\"description\":\"2-Tier Stainless Steel Dish Drainer is a 2-tier plate rack\",\"content\":\"<br \\/>\\r\\nDetail produk : Bahan : PP + Besi karbon Pengecatan : Nano powder spraying coating Tingkatan : 2 susun \\/ 3 susun Wrana : Hitam Ukuran rangka utama\\uff1a42 x 23 x 35cm (2 susun), 42 x 23 x 47cm (3 susun) Ukuran kemasan (+kardus packing)\\uff1a56 x 23 x 35cm (2 susun) , 56 x 23 x 47cm (3 susun) Kapasitas maksimum per rak : 5 kg Berat bersih 1.54 kg (2 susun), 2.28 kg (3 susun) Isi dalam paket : - 2 pcs Rangka utama pegangan kiri dan kanan - 2 pcs Rangka untuk meniriskan piring (3 pcs untuk 3 level) - 1 pcs Pengait\\/Gantungan - 1 pcs Penyimpan nampan - 1 pcs Tempat Penyimpanan Sendok\\/Sumpit - 2 pcs Alas\\/wadah air (3 pcs untuk 3 level) - 1 buah petunjuk penggunaan\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/rakpiring.jpg\",\"sku\":\"PD01\",\"alias\":\"plate-rack\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"4\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"1.5\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-03-17\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:50:01', '2022-03-17 00:50:01'),
(73, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:50:02', '2022-03-17 00:50:02'),
(74, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:50:08', '2022-03-17 00:50:08'),
(75, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"product\"}', '2022-03-17 00:52:19', '2022-03-17 00:52:19'),
(76, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647478339308\"}', '2022-03-17 00:52:21', '2022-03-17 00:52:21'),
(77, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647478339309\"}', '2022-03-17 00:52:21', '2022-03-17 00:52:21'),
(78, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647478339310\"}', '2022-03-17 00:52:22', '2022-03-17 00:52:22'),
(79, '1', 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:52:34', '2022-03-17 00:52:34'),
(80, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1647478339311\"}', '2022-03-17 00:52:35', '2022-03-17 00:52:35'),
(81, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647478339312\"}', '2022-03-17 00:52:36', '2022-03-17 00:52:36'),
(82, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"2\",\"_\":\"1647478339313\"}', '2022-03-17 00:52:38', '2022-03-17 00:52:38'),
(83, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Spatula\",\"keyword\":\"Spatula\",\"description\":null,\"content\":\"AUTOMATIC RESI DROPSHIP SUPPORT, Please Chat Us!<br \\/>\\r\\n-<br \\/>\\r\\nStandard Packing is Bubble 1 Lapis.<br \\/>\\r\\nIf you want to add can checkout with BUBBLE WRAP.<br \\/>\\r\\n-<br \\/>\\r\\nOur Cookware Is Wood-handled instead of PLASTIC.<br \\/>\\r\\n-<br \\/>\\r\\nADVANTAGES OF OUR PRODUCTS:<br \\/>\\r\\n<br \\/>\\r\\n\\ud83e\\udd57100% QUALITY SILICON<br \\/>\\r\\n\\ud83c\\udf72100% PREMIUM WOODEN HANDEL<br \\/>\\r\\n\\ud83c\\udf5f100% HEAT RESISTANCE<br \\/>\\r\\n\\ud83e\\udd59VERY WORTH IT\"},\"vi\":{\"name\":\"Spatula\",\"keyword\":\"Spatula\",\"description\":null,\"content\":\"SUPPORT DROPSHIP RESI OTOMATIS, Silahkan Chat Kami! - Packing Standar adalah Bubble 1 Lapis. Jika Ingin Tambah Bisa CHECKOUT Bersama BUBBLE WRAP. - Peralatan Masak Kami Bergagang KAYU bukan PLASTIK. - KELEBIHAN PRODUK KAMI : \\ud83e\\udd57100% SILIKON BERKUALITAS \\ud83c\\udf72100% PREMIUM WOODEN HANDEL \\ud83c\\udf5f100% RESISTENSI PANAS PANAS \\ud83e\\udd59SANGAT WORTH IT\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/spatula.jpg\",\"sku\":\"PD02\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"2\",\"tax_id\":\"0\",\"stock\":\"50\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:53:20', '2022-03-17 00:53:20'),
(84, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:53:22', '2022-03-17 00:53:22'),
(85, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:53:27', '2022-03-17 00:53:27'),
(86, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"product\"}', '2022-03-17 00:55:51', '2022-03-17 00:55:51'),
(87, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647478551546\"}', '2022-03-17 00:55:53', '2022-03-17 00:55:53'),
(88, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647478551547\"}', '2022-03-17 00:55:53', '2022-03-17 00:55:53'),
(89, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647478551548\"}', '2022-03-17 00:55:55', '2022-03-17 00:55:55'),
(90, '1', 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:56:03', '2022-03-17 00:56:03'),
(91, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1647478551549\"}', '2022-03-17 00:56:04', '2022-03-17 00:56:04'),
(92, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647478551550\"}', '2022-03-17 00:56:05', '2022-03-17 00:56:05'),
(93, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Promo!!! 6 pcs Stainless basin \\/pan \\/versatile set 6 sizes 14cm -24cm\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Welcome to the kitchenstore mall.<br \\/>\\r\\nWe offer products:<br \\/>\\r\\n<br \\/>\\r\\nVersatile Stainless Basin set 6 size 14cm - 24cm<br \\/>\\r\\nmade of stainless materials that are anti-rust&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nA multipurpose 6-piece stainless basin can be for your various needs.<br \\/>\\r\\n<br \\/>\\r\\nCompleteness of the package:<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 14cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 16cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 18cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 20cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 22cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs stainless basin 24 cm\"},\"vi\":{\"name\":\"Promo!!! 6 pcs Baskom stainless \\/panci \\/serbaguna set 6 ukuran 14cm -24 cm\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Selamat datang di dapurstore mall kami menawarrkan produk : Baskom Stainless serbaguna set 6 ukuran 14cm - 24cm terbuat dari bahan stainless yg anti karatan Baskom stainless set 6ukuran serbaguna bisa untuk berbagai keperluan anda. Kelengkapan paket : 1 pcs baskom stainless 14cm 1 pcs baskom stainless 16cm 1 pcs baskom stailess 18cm 1 pcs baskom stailess 20cm 1 pcs baskom stailess 22cm 1 pcs baskom stainless 24 cm\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/baskom.jpg\",\"sku\":\"PD03\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"1\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:56:12', '2022-03-17 00:56:12'),
(94, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:56:13', '2022-03-17 00:56:13'),
(95, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Promo!!! 6 pcs Stainless basin \\/pan \\/versatile set 6 sizes 14cm -24cm\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Welcome to the kitchenstore mall.<br \\/>\\r\\nWe offer products:<br \\/>\\r\\n<br \\/>\\r\\nVersatile Stainless Basin set 6 size 14cm - 24cm<br \\/>\\r\\nmade of stainless materials that are anti-rust&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nA multipurpose 6-piece stainless basin can be for your various needs.<br \\/>\\r\\n<br \\/>\\r\\nCompleteness of the package:<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 14cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 16cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 18cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 20cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 22cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs stainless basin 24 cm\"},\"vi\":{\"name\":\"Promo!!! 6 pcs Baskom stainless \\/panci \\/serbaguna set 6 ukuran 14cm -24 cm\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Selamat datang di dapurstore mall kami menawarrkan produk : Baskom Stainless serbaguna set 6 ukuran 14cm - 24cm terbuat dari bahan stainless yg anti karatan Baskom stainless set 6ukuran serbaguna bisa untuk berbagai keperluan anda. Kelengkapan paket : 1 pcs baskom stainless 14cm 1 pcs baskom stainless 16cm 1 pcs baskom stailess 18cm 1 pcs baskom stailess 20cm 1 pcs baskom stailess 22cm 1 pcs baskom stainless 24 cm\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/baskom.jpg\",\"sku\":\"PD03\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"1\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:56:30', '2022-03-17 00:56:30'),
(96, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:56:31', '2022-03-17 00:56:31'),
(97, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Promo!!! 6 pcs Stainless basin\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Welcome to the kitchenstore mall.<br \\/>\\r\\nWe offer products:<br \\/>\\r\\n<br \\/>\\r\\nVersatile Stainless Basin set 6 size 14cm - 24cm<br \\/>\\r\\nmade of stainless materials that are anti-rust&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nA multipurpose 6-piece stainless basin can be for your various needs.<br \\/>\\r\\n<br \\/>\\r\\nCompleteness of the package:<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 14cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 16cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 18cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 20cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 22cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs stainless basin 24 cm\"},\"vi\":{\"name\":\"Promo!!! 6 pcs Baskom stainless\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Selamat datang di dapurstore mall kami menawarrkan produk : Baskom Stainless serbaguna set 6 ukuran 14cm - 24cm terbuat dari bahan stainless yg anti karatan Baskom stainless set 6ukuran serbaguna bisa untuk berbagai keperluan anda. Kelengkapan paket : 1 pcs baskom stainless 14cm 1 pcs baskom stainless 16cm 1 pcs baskom stailess 18cm 1 pcs baskom stailess 20cm 1 pcs baskom stailess 22cm 1 pcs baskom stainless 24 cm\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/baskom.jpg\",\"sku\":\"PD03\",\"alias\":\"promo!!!-6-pcs-stainless-basin-\\/pan-\\/versatile-set-6-sizes-14cm-24cm\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"1\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:57:03', '2022-03-17 00:57:03'),
(98, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:57:04', '2022-03-17 00:57:04'),
(99, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"tainless basin\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Welcome to the kitchenstore mall.<br \\/>\\r\\nWe offer products:<br \\/>\\r\\n<br \\/>\\r\\nVersatile Stainless Basin set 6 size 14cm - 24cm<br \\/>\\r\\nmade of stainless materials that are anti-rust&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nA multipurpose 6-piece stainless basin can be for your various needs.<br \\/>\\r\\n<br \\/>\\r\\nCompleteness of the package:<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 14cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 16cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 18cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 20cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 22cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs stainless basin 24 cm\"},\"vi\":{\"name\":\"Baskom stainless\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Selamat datang di dapurstore mall kami menawarrkan produk : Baskom Stainless serbaguna set 6 ukuran 14cm - 24cm terbuat dari bahan stainless yg anti karatan Baskom stainless set 6ukuran serbaguna bisa untuk berbagai keperluan anda. Kelengkapan paket : 1 pcs baskom stainless 14cm 1 pcs baskom stainless 16cm 1 pcs baskom stailess 18cm 1 pcs baskom stailess 20cm 1 pcs baskom stailess 22cm 1 pcs baskom stainless 24 cm\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/baskom.jpg\",\"sku\":\"PD03\",\"alias\":\"promo!!!-6-pcs-stainless-basin-\\/pan-\\/versatile-set-6-sizes-14cm-24cm\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"1\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:57:22', '2022-03-17 00:57:22'),
(100, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:57:23', '2022-03-17 00:57:23'),
(101, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"tainless basin\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Welcome to the kitchenstore mall.<br \\/>\\r\\nWe offer products:<br \\/>\\r\\n<br \\/>\\r\\nVersatile Stainless Basin set 6 size 14cm - 24cm<br \\/>\\r\\nmade of stainless materials that are anti-rust&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nA multipurpose 6-piece stainless basin can be for your various needs.<br \\/>\\r\\n<br \\/>\\r\\nCompleteness of the package:<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 14cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 16cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 18cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 20cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 22cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs stainless basin 24 cm\"},\"vi\":{\"name\":\"Baskom stainless\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Selamat datang di dapurstore mall kami menawarrkan produk : Baskom Stainless serbaguna set 6 ukuran 14cm - 24cm terbuat dari bahan stainless yg anti karatan Baskom stainless set 6ukuran serbaguna bisa untuk berbagai keperluan anda. Kelengkapan paket : 1 pcs baskom stainless 14cm 1 pcs baskom stainless 16cm 1 pcs baskom stailess 18cm 1 pcs baskom stailess 20cm 1 pcs baskom stailess 22cm 1 pcs baskom stainless 24 cm\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/baskom.jpg\",\"sku\":\"PD03\",\"alias\":\"stainless-basin\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"1\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 00:57:41', '2022-03-17 00:57:41'),
(102, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:57:42', '2022-03-17 00:57:42'),
(103, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 00:57:51', '2022-03-17 00:57:51'),
(104, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"product\"}', '2022-03-17 00:59:59', '2022-03-17 00:59:59'),
(105, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647478799969\"}', '2022-03-17 01:00:02', '2022-03-17 01:00:02'),
(106, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647478799970\"}', '2022-03-17 01:00:02', '2022-03-17 01:00:02');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(107, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647478799971\"}', '2022-03-17 01:00:03', '2022-03-17 01:00:03'),
(108, '1', 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 01:00:08', '2022-03-17 01:00:08'),
(109, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1647478799972\"}', '2022-03-17 01:00:09', '2022-03-17 01:00:09'),
(110, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647478799973\"}', '2022-03-17 01:00:10', '2022-03-17 01:00:10'),
(111, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"CURTAINS UNDER THE KITCHEN UNDER CHEAP STOVETOP TABLE BEST SELLER MOTIF\",\"keyword\":\"CURTAINS UNDER THE KITCHEN\",\"description\":null,\"content\":\"Gorden kolong dapur -size 100cm x 70cm Sudah ada BONUS TALI -Bahan: *katun halus *mudah di cuci *awet * murah bisa gonta ganti motif *tidak luntur dan dilengkapi dengan pony rample yg ter liat rapi dan elegant -Sangat cocok untuk dekorasi dapur lebih cantik lgi ya bund\"},\"vi\":{\"name\":\"GORDEN KOLONG DAPUR BAWAH MEJA KOMPOR MURAH MOTIF BEST SELLER\",\"keyword\":\"GORDEN KOLONG DAPUR\",\"description\":null,\"content\":\"Gorden kolong dapur -size 100cm x 70cm Sudah ada BONUS TALI -Bahan: *katun halus *mudah di cuci *awet * murah bisa gonta ganti motif *tidak luntur dan dilengkapi dengan pony rample yg ter liat rapi dan elegant -Sangat cocok untuk dekorasi dapur lebih cantik lgi ya bund\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/gorden.jpg\",\"sku\":\"PD04\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"1\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"kg\",\"weight\":\"1\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 01:00:23', '2022-03-17 01:00:23'),
(112, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 01:00:25', '2022-03-17 01:00:25'),
(113, '1', 'sc_admin/product/edit/95d65a0a-0317-4a4e-9c1b-c99eade7ac56', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 01:00:31', '2022-03-17 01:00:31'),
(114, '1', 'sc_admin/product/edit/95d65a0a-0317-4a4e-9c1b-c99eade7ac56', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"descriptions\":{\"en\":{\"name\":\"Stainless basin\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Welcome to the kitchenstore mall.<br \\/>\\r\\nWe offer products:<br \\/>\\r\\n<br \\/>\\r\\nVersatile Stainless Basin set 6 size 14cm - 24cm<br \\/>\\r\\nmade of stainless materials that are anti-rust&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nA multipurpose 6-piece stainless basin can be for your various needs.<br \\/>\\r\\n<br \\/>\\r\\nCompleteness of the package:<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 14cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 16cm stainless basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 18cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 20cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs 22cm stailess basin<br \\/>\\r\\n<br \\/>\\r\\n1 pcs stainless basin 24 cm\"},\"vi\":{\"name\":\"Baskom stainless\",\"keyword\":\"baskom\",\"description\":null,\"content\":\"Selamat datang di dapurstore mall kami menawarrkan produk : Baskom Stainless serbaguna set 6 ukuran 14cm - 24cm terbuat dari bahan stainless yg anti karatan Baskom stainless set 6ukuran serbaguna bisa untuk berbagai keperluan anda. Kelengkapan paket : 1 pcs baskom stainless 14cm 1 pcs baskom stainless 16cm 1 pcs baskom stailess 18cm 1 pcs baskom stailess 20cm 1 pcs baskom stailess 22cm 1 pcs baskom stainless 24 cm\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/baskom.jpg\",\"sku\":\"PD03\",\"alias\":\"stainless-basin\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0.00\",\"price\":\"1.00\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"1.00\",\"length_class\":\"in\",\"length\":\"0.00\",\"height\":\"0.00\",\"width\":\"0.00\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 01:00:41', '2022-03-17 01:00:41'),
(115, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 01:00:42', '2022-03-17 01:00:42'),
(116, '1', 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 01:00:54', '2022-03-17 01:00:54'),
(117, '1', 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"type\":\"product\"}', '2022-03-17 01:03:29', '2022-03-17 01:03:29'),
(118, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647479010143\"}', '2022-03-17 01:03:32', '2022-03-17 01:03:32'),
(119, '1', 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1647479010144\"}', '2022-03-17 01:03:32', '2022-03-17 01:03:32'),
(120, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647479010145\"}', '2022-03-17 01:03:33', '2022-03-17 01:03:33'),
(121, '1', 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 01:03:39', '2022-03-17 01:03:39'),
(122, '1', 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1647479010146\"}', '2022-03-17 01:03:40', '2022-03-17 01:03:40'),
(123, '1', 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1647479010147\"}', '2022-03-17 01:03:41', '2022-03-17 01:03:41'),
(124, '1', 'sc_admin/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"Silicone Bread Bread Cake barbecue Butter Food Brush\",\"keyword\":\"Silicone Bread Bread Cake\",\"description\":null,\"content\":\"Special silicone rubber brushes for cooking purposes and decorating cakes\\/cakes, which come in brilliant colors.<br \\/>\\r\\nSize: 18x3.2 cm<br \\/>\\r\\nMaterial : Plastic + Silicone rubber\"},\"vi\":{\"name\":\"Kuas Silikon Roti silicone Cake barbecue Mentega Food Brush\",\"keyword\":\"Kuas Silikon Roti\",\"description\":null,\"content\":\"Kuas karet silikon khusus untuk keperluan memasak dan menghias kue \\/ cake, yang hadir dalam warna-warni cemerlang. Ukuran : 18x3.2 cm Bahan : Plastik + Karet silikon\"}},\"category\":[\"95d654bd-eac0-476a-9a65-e2ae047134cd\"],\"image\":\"\\/data\\/product\\/kuas.jpg\",\"sku\":\"PD05\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"0.1\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"kg\",\"weight\":\"0.5\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"9tB6UiczQYEIMl2ZvcyoM9mI5dHLUNVpoeHUBILv\"}', '2022-03-17 01:03:51', '2022-03-17 01:03:51'),
(125, '1', 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '[]', '2022-03-17 01:03:52', '2022-03-17 01:03:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_menu`
--

CREATE TABLE `sc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_menu`
--

INSERT INTO `sc_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, NULL),
(2, 6, 2, 'admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, NULL),
(3, 25, 3, 'admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, NULL),
(4, 8, 201, 'admin.menu_titles.template_layout', 'fab fa-windows', '', 0, 0, 'TEMPLATE', NULL, NULL),
(5, 9, 2, 'admin.menu_titles.admin_global', 'fab fa-whmcs', '', 0, 0, 'CONFIG_SYSTEM', NULL, NULL),
(6, 0, 10, 'admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, NULL),
(7, 0, 100, 'admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, NULL),
(8, 0, 300, 'admin.menu_titles.ADMIN_EXTENSION', 'fas fa-th', '', 0, 0, 'ADMIN_EXTENSION', NULL, NULL),
(9, 0, 400, 'admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, NULL),
(10, 7, 102, 'admin.menu_titles.page_manager', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, NULL),
(11, 27, 2, 'admin.menu_titles.shipping_status', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, NULL),
(12, 1, 3, 'admin.menu_titles.order', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, NULL),
(13, 27, 1, 'admin.menu_titles.order_status', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, NULL),
(14, 27, 3, 'admin.menu_titles.payment_status', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, NULL),
(15, 2, 0, 'admin.menu_titles.product', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, NULL),
(16, 2, 0, 'admin.menu_titles.category', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, NULL),
(17, 27, 4, 'admin.menu_titles.supplier', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, NULL),
(18, 27, 5, 'admin.menu_titles.brand', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, NULL),
(19, 27, 8, 'admin.menu_titles.attribute_group', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, NULL),
(20, 3, 0, 'admin.menu_titles.customer', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, NULL),
(21, 3, 0, 'admin.menu_titles.subscribe', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, NULL),
(22, 67, 1, 'admin.menu_titles.block_content', 'far fa-newspaper', 'admin::store_block', 0, 0, NULL, NULL, NULL),
(23, 67, 2, 'admin.menu_titles.block_link', 'fab fa-chrome', 'admin::store_link', 0, 0, NULL, NULL, NULL),
(24, 4, 0, 'admin.menu_titles.template', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, NULL),
(25, 0, 200, 'admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, NULL),
(26, 65, 1, 'admin.menu_titles.store_info', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, NULL),
(27, 9, 3, 'admin.menu_titles.setting_system', 'fas fa-tools', '', 0, 0, 'SETTING_SYSTEM', NULL, NULL),
(28, 9, 4, 'admin.menu_titles.error_log', 'far fa-clone', '', 0, 0, '', NULL, NULL),
(29, 25, 0, 'admin.menu_titles.email_template', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, NULL),
(30, 9, 5, 'admin.menu_titles.localisation', 'fa fa-map-signs', '', 0, 0, NULL, NULL, NULL),
(31, 30, 1, 'admin.menu_titles.language', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, NULL),
(32, 30, 3, 'admin.menu_titles.currency', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, NULL),
(33, 7, 101, 'admin.menu_titles.banner', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, NULL),
(34, 5, 5, 'admin.menu_titles.backup_restore', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, NULL),
(35, 8, 202, 'admin.menu_titles.plugin', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, NULL),
(36, 28, 2, 'admin.menu_titles.webhook', 'fab fa-diaspora', 'admin::config/webhook', 0, 0, NULL, NULL, NULL),
(37, 25, 5, 'admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, NULL),
(38, 9, 1, 'admin.menu_titles.user_permission', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, NULL),
(39, 35, 0, 's-cart::admin.menu_titles.plugin_payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, NULL),
(40, 35, 1, 's-cart::admin.menu_titles.plugin_shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, NULL),
(41, 35, 2, 's-cart::admin.menu_titles.plugin_total', 'fas fa-atom', 'admin::plugin/total', 0, 0, NULL, NULL, NULL),
(42, 35, 100, 's-cart::admin.menu_titles.plugin_other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, NULL),
(43, 35, 4, 's-cart::admin.menu_titles.plugin_cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, NULL),
(44, 67, 3, 'admin.menu_titles.css', 'far fa-file-code', 'admin::store_css', 0, 0, NULL, NULL, NULL),
(45, 25, 4, 'admin.menu_titles.seo_manager', 'fab fa-battle-net', '', 0, 0, 'SEO_MANAGER', NULL, NULL),
(46, 38, 0, 'admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, NULL),
(47, 38, 0, 'admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, NULL),
(48, 38, 0, 'admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, NULL),
(49, 5, 0, 'admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, NULL),
(50, 28, 0, 'admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, NULL),
(51, 45, 0, 'admin.menu_titles.seo_config', 'fas fa-bars', 'admin::seo/config', 0, 0, NULL, NULL, NULL),
(52, 7, 103, 'admin.menu_titles.news', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, NULL),
(53, 35, 3, 's-cart::admin.menu_titles.plugin_fee', 'fas fa-box', 'admin::plugin/fee', 0, 0, NULL, NULL, NULL),
(54, 37, 0, 'admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, NULL),
(55, 67, 0, 'admin.menu_titles.modify_layout', 'fa fa-columns', 'admin::store_modify_layout', 0, 0, NULL, NULL, NULL),
(57, 65, 2, 'admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, NULL),
(58, 5, 5, 'admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, NULL),
(59, 9, 7, 'admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, NULL),
(60, 65, 3, 'admin.menu_titles.store_maintain', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, NULL),
(61, 27, 9, 'admin.menu_titles.tax', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, NULL),
(62, 27, 6, 'admin.menu_titles.weight', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, NULL),
(63, 27, 7, 'admin.menu_titles.length', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, NULL),
(65, 0, 250, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, NULL),
(66, 59, 1, 'admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, NULL),
(67, 65, 5, 'admin.menu_titles.layout', 'far fa-object-group', '', 0, 0, NULL, NULL, NULL),
(68, 27, 5, 'admin.menu_titles.custom_field', 'fa fa-american-sign-language-interpreting', 'admin::custom_field', 0, 0, NULL, NULL, NULL),
(69, 30, 2, 'admin.menu_titles.language_manager', 'fa fa-universal-access', 'admin::language_manager', 0, 0, NULL, NULL, NULL),
(70, 9, 6, 'admin.menu_titles.security', 'fab fa-shirtsinbulk', '', 0, 0, 'ADMIN_SECURITY', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_permission`
--

CREATE TABLE `sc_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_permission`
--

INSERT INTO `sc_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', NULL, NULL),
(3, 'Base setting', 'base.setting', 'ANY::sc_admin/order_status/*,ANY::sc_admin/shipping_status/*,ANY::sc_admin/payment_status/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/custom_field/*,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/tax/*', NULL, NULL),
(4, 'Store manager', 'store.full', 'ANY::sc_admin/store_info/*,ANY::sc_admin/store_maintain/*,ANY::sc_admin/store_config/*,ANY::sc_admin/store_css/*,ANY::sc_admin/store_block/*,ANY::sc_admin/store_link/*,ANY::sc_admin/store_modify_layout/*', NULL, NULL),
(5, 'Product manager', 'product.full', 'ANY::sc_admin/product/*,ANY::sc_admin/product_property/*,ANY::sc_admin/product_tag/*', NULL, NULL),
(6, 'Category manager', 'category.full', 'ANY::sc_admin/category/*', NULL, NULL),
(7, 'Order manager', 'order.full', 'ANY::sc_admin/order/*', NULL, NULL),
(8, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', NULL, NULL),
(9, 'Extension manager', 'extension.full', 'ANY::sc_admin/template/*,ANY::sc_admin/plugin/*', NULL, NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::sc_admin/shop_discount/*,ANY::sc_admin/email_template/*,ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*,ANY::sc_admin/seo/*', NULL, NULL),
(11, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', NULL, NULL),
(12, 'CMS full', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/banner_type/*,ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', NULL, NULL),
(13, 'Update config', 'change.config', 'POST::sc_admin/store_config/update', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_role`
--

CREATE TABLE `sc_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_role`
--

INSERT INTO `sc_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', NULL, NULL),
(2, 'Group only View', 'view.all', NULL, NULL),
(3, 'Manager', 'manager', NULL, NULL),
(4, 'CMS', 'cms', NULL, NULL),
(5, 'Accountant', 'accountant', NULL, NULL),
(6, 'Marketing', 'maketing', NULL, NULL),
(7, 'Admin CMS', 'admin_cms', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_role_permission`
--

CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_role_permission`
--

INSERT INTO `sc_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, NULL, NULL),
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 5, NULL, NULL),
(3, 6, NULL, NULL),
(3, 7, NULL, NULL),
(3, 8, NULL, NULL),
(3, 9, NULL, NULL),
(3, 10, NULL, NULL),
(3, 11, NULL, NULL),
(3, 12, NULL, NULL),
(3, 13, NULL, NULL),
(4, 1, NULL, NULL),
(4, 12, NULL, NULL),
(5, 1, NULL, NULL),
(5, 2, NULL, NULL),
(5, 7, NULL, NULL),
(5, 11, NULL, NULL),
(6, 1, NULL, NULL),
(6, 2, NULL, NULL),
(6, 8, NULL, NULL),
(6, 10, NULL, NULL),
(6, 11, NULL, NULL),
(6, 12, NULL, NULL),
(7, 1, NULL, NULL),
(7, 4, NULL, NULL),
(7, 8, NULL, NULL),
(7, 12, NULL, NULL),
(7, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_role_user`
--

CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_role_user`
--

INSERT INTO `sc_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_store`
--

CREATE TABLE `sc_admin_store` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Use for multi-store, multi-vendor',
  `partner` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Use for multi-vendor',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'Use for multi-store, multi-vendor',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_store`
--

INSERT INTO `sc_admin_store` (`id`, `logo`, `icon`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `partner`, `code`, `language`, `timezone`, `currency`, `status`, `active`, `created_at`, `updated_at`) VALUES
('1', 'data/logo/scart-mid.png', NULL, '0123456789', '082242723010', '221910685@stis.ac.id', '', 'Jl. H. Hasbi No.16, RT.10/RW.9, Bidara Cina, Jatinegara, Jakarta Timur, 13330', NULL, NULL, 's-cart-light', 'localhost/s-cart/public', '0', 's-cart', 'en', '', 'USD', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_store_description`
--

CREATE TABLE `sc_admin_store_description` (
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_note` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_store_description`
--

INSERT INTO `sc_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`, `maintain_note`) VALUES
('1', 'en', 'kelompok 6 ppl', 'Free website shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\n            <h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n            </center>', 'Website is in maintenance mode!'),
('1', 'vi', 'kelompok 6 ppl', 'Laravel shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\n            <h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\n            </center>', 'Website đang trong chế độ bảo trì!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_template`
--

CREATE TABLE `sc_admin_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_template`
--

INSERT INTO `sc_admin_template` (`id`, `key`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 's-cart-light', 'S-Cart Light', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_user`
--

CREATE TABLE `sc_admin_user` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
('1', 'admin', '$2y$10$WcL.UxZlRoaUfjyL13EtIOtVS3On9hPMX7xSiRknT07ZwAjI7.GKO', 'Administrator', '221910685@stis.ac.id', '/admin/avatar/user.jpg', 't9n4SXYaw0qJzCy4NXpQwgInfHH8fmHuPweRY32tRSi8GU7RYt4GTqxkzG8W', 'dark', NULL, '2022-03-14 10:47:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_admin_user_permission`
--

CREATE TABLE `sc_admin_user_permission` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_api_connection`
--

CREATE TABLE `sc_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_api_connection`
--

INSERT INTO `sc_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '95d08e42-9f5d-438b-b485-d77ca7106246', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_languages`
--

CREATE TABLE `sc_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_languages`
--

INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(1, 'action.from', 'From', 'action', 'en', NULL, NULL),
(2, 'action.from', 'Dari', 'action', 'vi', NULL, NULL),
(3, 'action.to', 'To', 'action', 'en', NULL, NULL),
(4, 'action.to', 'Ke', 'action', 'vi', NULL, NULL),
(5, 'action.disable', 'Disable', 'action', 'en', NULL, NULL),
(6, 'action.disable', 'Vô hiệu hóa', 'action', 'vi', NULL, NULL),
(7, 'action.disable_success', 'Disabled success', 'action', 'en', NULL, NULL),
(8, 'action.disable_success', 'Vô hiệu hóa thành công', 'action', 'vi', NULL, NULL),
(9, 'action.enable', 'Enable', 'action', 'en', NULL, NULL),
(10, 'action.enable', 'Kích hoạt', 'action', 'vi', NULL, NULL),
(11, 'action.enable_success', 'Enabled success', 'action', 'en', NULL, NULL),
(12, 'action.enable_success', 'Kích hoạt thành công', 'action', 'vi', NULL, NULL),
(13, 'action.remove', 'Removed', 'action', 'en', NULL, NULL),
(14, 'action.remove', 'Gỡ bỏ', 'action', 'vi', NULL, NULL),
(15, 'action.remove_success', 'Removedd success', 'action', 'en', NULL, NULL),
(16, 'action.remove_success', 'Gỡ bỏ thành công', 'action', 'vi', NULL, NULL),
(17, 'action.edit', 'Edit', 'action', 'en', NULL, NULL),
(18, 'action.edit', 'Chỉnh sửa', 'action', 'vi', NULL, NULL),
(19, 'action.update', 'Update', 'action', 'en', NULL, NULL),
(20, 'action.update', 'Cập nhật', 'action', 'vi', NULL, NULL),
(21, 'action.add', 'Thêm mới', 'action', 'vi', NULL, NULL),
(22, 'action.add', 'Add new', 'action', 'en', NULL, NULL),
(23, 'action.create', 'Create new', 'action', 'en', NULL, NULL),
(24, 'action.create', 'Tạo mới', 'action', 'vi', NULL, NULL),
(25, 'action.create_success', 'Tạo mới thành công', 'action', 'vi', NULL, NULL),
(26, 'action.create_success', 'Create success', 'action', 'en', NULL, NULL),
(27, 'action.edit_success', 'Edit success', 'action', 'en', NULL, NULL),
(28, 'action.edit_success', 'Tạo mới thành công', 'action', 'vi', NULL, NULL),
(29, 'action.update_success', 'Update success', 'action', 'en', NULL, NULL),
(30, 'action.update_success', 'Cập nhật thành công', 'action', 'vi', NULL, NULL),
(31, 'action.add_success', 'Add new success', 'action', 'en', NULL, NULL),
(32, 'action.add_success', 'Thêm mới thành công', 'action', 'vi', NULL, NULL),
(33, 'action.remote_success', 'Remove success', 'action', 'en', NULL, NULL),
(34, 'action.remote_success', 'Gỡ bỏ thành công', 'action', 'vi', NULL, NULL),
(35, 'action.delete_success', 'Delete success', 'action', 'en', NULL, NULL),
(36, 'action.delete_success', 'Xóa thành công', 'action', 'vi', NULL, NULL),
(37, 'action.remote', 'Gỡ bỏ', 'action', 'vi', NULL, NULL),
(38, 'action.remote', 'Remove', 'action', 'en', NULL, NULL),
(39, 'action.delete', 'Xóa', 'action', 'vi', NULL, NULL),
(40, 'action.delete', 'Delete', 'action', 'en', NULL, NULL),
(41, 'action.uninstall', 'Delete', 'action', 'en', NULL, NULL),
(42, 'action.uninstall', 'Gỡ cài đặt', 'action', 'vi', NULL, NULL),
(43, 'action.install', 'Cài đặt', 'action', 'vi', NULL, NULL),
(44, 'action.install', 'Install', 'action', 'en', NULL, NULL),
(45, 'action.click', 'Click', 'action', 'en', NULL, NULL),
(46, 'action.click', 'Bấm', 'action', 'vi', NULL, NULL),
(47, 'action.click_here', 'Click here', 'action', 'en', NULL, NULL),
(48, 'action.click_here', 'Bấm vào đây', 'action', 'vi', NULL, NULL),
(49, 'action.view', 'Xem', 'action', 'vi', NULL, NULL),
(50, 'action.view', 'View', 'action', 'en', NULL, NULL),
(51, 'action.view_more', 'View more', 'action', 'en', NULL, NULL),
(52, 'action.view_more', 'Xem thêm', 'action', 'vi', NULL, NULL),
(53, 'action.detail', 'Chi tiết', 'action', 'vi', NULL, NULL),
(54, 'action.detail', 'Detail', 'action', 'en', NULL, NULL),
(55, 'action.hidden', 'Hidden', 'action', 'en', NULL, NULL),
(56, 'action.hidden', 'Ẩn', 'action', 'vi', NULL, NULL),
(57, 'action.show', 'Hiển thị', 'action', 'vi', NULL, NULL),
(58, 'action.show', 'Show', 'action', 'en', NULL, NULL),
(59, 'action.submit', 'Submit', 'action', 'en', NULL, NULL),
(60, 'action.submit', 'Gửi', 'action', 'vi', NULL, NULL),
(61, 'action.save', 'Save', 'action', 'en', NULL, NULL),
(62, 'action.save', 'Lưu lại', 'action', 'vi', NULL, NULL),
(63, 'action.reset', 'Làm lại', 'action', 'vi', NULL, NULL),
(64, 'action.reset', 'Reset', 'action', 'en', NULL, NULL),
(65, 'action.logout', 'Đăng xuất', 'action', 'vi', NULL, NULL),
(66, 'action.logout', 'Logout', 'action', 'en', NULL, NULL),
(67, 'action.login', 'Masuk', 'action', 'vi', NULL, NULL),
(68, 'action.login', 'Login', 'action', 'en', NULL, NULL),
(69, 'action.refresh', 'Làm mới', 'action', 'vi', NULL, NULL),
(70, 'action.refresh', 'Refresh', 'action', 'en', NULL, NULL),
(71, 'action.confirm', 'Xác nhận', 'action', 'vi', NULL, NULL),
(72, 'action.confirm', 'Confirmation', 'action', 'en', NULL, NULL),
(73, 'action.add_to_cart', 'Add to cart', 'action', 'en', NULL, NULL),
(74, 'action.add_to_cart', 'Thêm vào giỏ hàng', 'action', 'vi', NULL, NULL),
(75, 'action.add_to_wishlist', 'Thêm yêu thích', 'action', 'vi', NULL, NULL),
(76, 'action.add_to_wishlist', 'Add to wishlist', 'action', 'en', NULL, NULL),
(77, 'action.add_to_compare', 'Add to compare', 'action', 'en', NULL, NULL),
(78, 'action.add_to_compare', 'Menambahkan untuk dibandingkan', 'action', 'vi', NULL, NULL),
(79, 'action.buy_now', 'Mua ngay', 'action', 'vi', NULL, NULL),
(80, 'action.buy_now', 'Buy now', 'action', 'en', NULL, NULL),
(81, 'action.re_order', 'Re-order', 'action', 'en', NULL, NULL),
(82, 'action.re_order', 'Mua lại', 'action', 'vi', NULL, NULL),
(83, 'action.order', 'Pesan', 'action', 'vi', NULL, NULL),
(84, 'action.order', 'Order', 'action', 'en', NULL, NULL),
(85, 'action.title', 'Action', 'action', 'en', NULL, NULL),
(86, 'action.title', 'Thao tác', 'action', 'vi', NULL, NULL),
(87, 'action.confirm_agree', 'Agree', 'action', 'en', NULL, NULL),
(88, 'action.confirm_agree', 'Setuju', 'action', 'vi', NULL, NULL),
(89, 'action.confirm_cancel', 'Gagal', 'action', 'vi', NULL, NULL),
(90, 'action.confirm_cancel', 'Cancel', 'action', 'en', NULL, NULL),
(91, 'action.confirm_yes', 'Yes', 'action', 'en', NULL, NULL),
(92, 'action.confirm_yes', 'Ya', 'action', 'vi', NULL, NULL),
(93, 'action.confirm_no', 'Tidak', 'action', 'vi', NULL, NULL),
(94, 'action.confirm_no', 'No', 'action', 'en', NULL, NULL),
(95, 'action.delete_confirm', 'Are you sure to delete it?', 'action', 'en', NULL, NULL),
(96, 'action.delete_confirm', 'Apakah Anda yakin akan menghapusnya?', 'action', 'vi', NULL, NULL),
(97, 'action.delete_confirm_deleted', 'Deleted', 'action', 'en', NULL, NULL),
(98, 'action.delete_confirm_deleted', 'Dihapus', 'action', 'vi', NULL, NULL),
(99, 'action.delete_confirm_deleted_msg', 'Item has deleted', 'action', 'en', NULL, NULL),
(100, 'action.delete_confirm_deleted_msg', 'Item ini telah dihapus.', 'action', 'vi', NULL, NULL),
(101, 'action.remove_confirm', 'Are you sure to remove it?', 'action', 'en', NULL, NULL),
(102, 'action.remove_confirm', 'Apakah Anda yakin untuk menghapusnya?', 'action', 'vi', NULL, NULL),
(103, 'action.action_confirm', 'Apakah Anda yakin dengan operasi ini?', 'action', 'vi', NULL, NULL),
(104, 'action.action_confirm', 'Are you sure you do this?', 'action', 'en', NULL, NULL),
(105, 'action.action_confirm_warning', 'Tindakan ini tidak akan dipulihkan.', 'action', 'vi', NULL, NULL),
(106, 'action.action_confirm_warning', 'This action will not be restore', 'action', 'en', NULL, NULL),
(107, 'action.warning', 'Warning', 'action', 'en', NULL, NULL),
(108, 'action.warning', 'Siaga', 'action', 'vi', NULL, NULL),
(109, 'action.notify', 'Informasi', 'action', 'vi', NULL, NULL),
(110, 'action.notify', 'Notify', 'action', 'en', NULL, NULL),
(111, 'action.sort', 'Sort items', 'action', 'en', NULL, NULL),
(112, 'action.sort', 'Atur', 'action', 'vi', NULL, NULL),
(113, 'action.search', 'Mencari', 'action', 'vi', NULL, NULL),
(114, 'action.search', 'Search', 'action', 'en', NULL, NULL),
(115, 'action.copy', 'Menyalin', 'action', 'vi', NULL, NULL),
(116, 'action.copy', 'Copy', 'action', 'en', NULL, NULL),
(117, 'action.duplicate', 'Duplicate', 'action', 'en', NULL, NULL),
(118, 'action.duplicate', 'Kloning', 'action', 'vi', NULL, NULL),
(119, 'action.allow', 'Allow', 'action', 'en', NULL, NULL),
(120, 'action.allow', 'Biar', 'action', 'vi', NULL, NULL),
(121, 'action.deny', 'Deny', 'action', 'en', NULL, NULL),
(122, 'action.deny', 'Mencegah', 'action', 'vi', NULL, NULL),
(123, 'front.home', 'Beranda', 'front', 'vi', NULL, NULL),
(124, 'front.home', 'Home', 'front', 'en', NULL, NULL),
(125, 'front.shop', 'Belanja', 'front', 'vi', NULL, NULL),
(126, 'front.shop', 'Shop', 'front', 'en', NULL, NULL),
(127, 'front.store', 'Toko', 'front', 'vi', NULL, NULL),
(128, 'front.store', 'Store', 'front', 'en', NULL, NULL),
(129, 'front.store_list', 'Daftar toko', 'front', 'vi', NULL, NULL),
(130, 'front.store_list', 'Store list', 'front', 'en', NULL, NULL),
(131, 'front.link_useful', 'Tautan yang berguna', 'front', 'vi', NULL, NULL),
(132, 'front.link_useful', 'Link useful', 'front', 'en', NULL, NULL),
(133, 'front.brands', 'Merek', 'front', 'vi', NULL, NULL),
(134, 'front.brands', 'Brands', 'front', 'en', NULL, NULL),
(135, 'front.categories', 'Direktori', 'front', 'vi', NULL, NULL),
(136, 'front.categories', 'Categries', 'front', 'en', NULL, NULL),
(137, 'front.sub_categories', 'Kategori kecil', 'front', 'vi', NULL, NULL),
(138, 'front.sub_categories', 'Subcategory', 'front', 'en', NULL, NULL),
(139, 'front.blog', 'Blog', 'front', 'vi', NULL, NULL),
(140, 'front.blog', 'Blogs', 'front', 'en', NULL, NULL),
(141, 'front.news', 'Berita', 'front', 'vi', NULL, NULL),
(142, 'front.news', 'News', 'front', 'en', NULL, NULL),
(143, 'front.about', 'About us', 'front', 'en', NULL, NULL),
(144, 'front.about', 'Tentang Kami', 'front', 'vi', NULL, NULL),
(145, 'front.contact', 'Contact us', 'front', 'en', NULL, NULL),
(146, 'front.contact', 'Kontak', 'front', 'vi', NULL, NULL),
(147, 'front.cms_category', 'Katalog CMS', 'front', 'vi', NULL, NULL),
(148, 'front.cms_category', 'CMS category', 'front', 'en', NULL, NULL),
(149, 'front.my_profile', 'Profil', 'front', 'vi', NULL, NULL),
(150, 'front.my_profile', 'My profile', 'front', 'en', NULL, NULL),
(151, 'front.my_account', 'Akun', 'front', 'vi', NULL, NULL),
(152, 'front.my_account', 'My account', 'front', 'en', NULL, NULL),
(153, 'front.account', 'Pelanggan', 'front', 'vi', NULL, NULL),
(154, 'front.account', 'Customer', 'front', 'en', NULL, NULL),
(155, 'front.currency', 'Mata uang', 'front', 'vi', NULL, NULL),
(156, 'front.currency', 'Currency', 'front', 'en', NULL, NULL),
(157, 'front.language', 'Bahasa', 'front', 'vi', NULL, NULL),
(158, 'front.language', 'Language', 'front', 'en', NULL, NULL),
(159, 'front.cart', 'Cart', 'front', 'vi', NULL, NULL),
(160, 'front.cart', 'Cart', 'front', 'en', NULL, NULL),
(161, 'front.compare', 'Bandingkan', 'front', 'vi', NULL, NULL),
(162, 'front.compare', 'Compare', 'front', 'en', NULL, NULL),
(163, 'front.compare_page', 'Produk perbandingan', 'front', 'vi', NULL, NULL),
(164, 'front.compare_page', 'Product compare', 'front', 'en', NULL, NULL),
(165, 'front.wishlist', 'Favorit', 'front', 'vi', NULL, NULL),
(166, 'front.wishlist', 'Wishlist', 'front', 'en', NULL, NULL),
(167, 'front.wishlist_page', 'Produk favorit', 'front', 'vi', NULL, NULL),
(168, 'front.wishlist_page', 'Product Wishlist', 'front', 'en', NULL, NULL),
(169, 'front.login', 'Masuk', 'front', 'vi', NULL, NULL),
(170, 'front.login', 'Login', 'front', 'en', NULL, NULL),
(171, 'front.logout', 'Keluar', 'front', 'vi', NULL, NULL),
(172, 'front.logout', 'Logout', 'front', 'en', NULL, NULL),
(173, 'front.maintenace', 'Pemeliharaan', 'front', 'vi', NULL, NULL),
(174, 'front.maintenace', 'Maintenace', 'front', 'en', NULL, NULL),
(175, 'front.products_hot', 'Hot Products', 'front', 'en', NULL, NULL),
(176, 'front.products_hot', 'Produk terlaris', 'front', 'vi', NULL, NULL),
(177, 'front.products_promotion', 'Promotion Products', 'front', 'en', NULL, NULL),
(178, 'front.products_promotion', 'Produk promosi', 'front', 'vi', NULL, NULL),
(179, 'front.products_special', 'Special products', 'front', 'en', NULL, NULL),
(180, 'front.products_special', 'Produk populer', 'front', 'vi', NULL, NULL),
(181, 'front.products_last_view', 'Last view products', 'front', 'en', NULL, NULL),
(182, 'front.products_last_view', 'Baru dilihat', 'front', 'vi', NULL, NULL),
(183, 'front.products_build', 'Product bundle', 'front', 'en', NULL, NULL),
(184, 'front.products_build', 'Kumpulan produk', 'front', 'vi', NULL, NULL),
(185, 'front.products_bundle', 'Product bundle', 'front', 'en', NULL, NULL),
(186, 'front.products_bundle', 'Kumpulan produk', 'front', 'vi', NULL, NULL),
(187, 'front.products_single', 'Product single', 'front', 'en', NULL, NULL),
(188, 'front.products_single', 'Produk tunggal', 'front', 'vi', NULL, NULL),
(189, 'front.products_group', 'Product group', 'front', 'en', NULL, NULL),
(190, 'front.products_group', 'Produk grup', 'front', 'vi', NULL, NULL),
(191, 'front.products_new', 'New products', 'front', 'en', NULL, NULL),
(192, 'front.products_new', 'Produk terbaru', 'front', 'vi', NULL, NULL),
(193, 'front.products_recommend', 'Recommend products', 'front', 'en', NULL, NULL),
(194, 'front.products_recommend', 'Produk yang direkomendasikan', 'front', 'vi', NULL, NULL),
(195, 'front.product_detail', 'Product detail', 'front', 'en', NULL, NULL),
(196, 'front.product_detail', 'Detail produk', 'front', 'vi', NULL, NULL),
(197, 'front.categories_store', 'Categories', 'front', 'en', NULL, NULL),
(198, 'front.categories_store', 'Direktori', 'front', 'vi', NULL, NULL),
(199, 'front.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'front', 'en', NULL, NULL),
(200, 'front.result_item', 'Menampilkan <b>:item_from</b>-<b>:item_to</b> arab <b>:total</b> hasil</b>', 'front', 'vi', NULL, NULL),
(201, 'front.all_product', 'Semua produk', 'front', 'vi', NULL, NULL),
(202, 'front.all_product', 'All products', 'front', 'en', NULL, NULL),
(203, 'front.data_notfound', 'Data tidak ditemukan', 'front', 'vi', NULL, NULL),
(204, 'front.data_notfound', 'Data not found!', 'front', 'en', NULL, NULL),
(205, 'front.data_not_found', 'Data tidak ditemukan', 'front', 'vi', NULL, NULL),
(206, 'front.data_not_found', 'Data not found!', 'front', 'en', NULL, NULL),
(207, 'front.data_not_found_title', 'Data tidak ditemukan', 'front', 'vi', NULL, NULL),
(208, 'front.data_not_found_title', 'Data not found!', 'front', 'en', NULL, NULL),
(209, 'front.page_notfound', 'Halaman tidak ditemukan!', 'front', 'vi', NULL, NULL),
(210, 'front.page_notfound', 'Page not found!', 'front', 'en', NULL, NULL),
(211, 'front.page_not_found', 'Halaman tidak ditemukan!', 'front', 'vi', NULL, NULL),
(212, 'front.page_not_found', 'Page not found!', 'front', 'en', NULL, NULL),
(213, 'front.page_not_found_title', 'Halaman tidak ditemukan!', 'front', 'vi', NULL, NULL),
(214, 'front.page_not_found_title', 'Page not found!', 'front', 'en', NULL, NULL),
(215, 'front.flash_stock', 'Available', 'front', 'en', NULL, NULL),
(216, 'front.flash_sold', 'Already Sold', 'front', 'en', NULL, NULL),
(217, 'front.flash_title', 'Flash sale', 'front', 'en', NULL, NULL),
(218, 'front.flash_stock', 'Stok terbatas', 'front', 'vi', NULL, NULL),
(219, 'front.flash_sold', 'Terjual', 'front', 'vi', NULL, NULL),
(220, 'front.flash_title', 'Flash sale', 'front', 'vi', NULL, NULL),
(221, 'front.products_best_seller', 'Produk yang sedang tren', 'front', 'vi', NULL, NULL),
(222, 'front.products_best_seller', 'Trending products', 'front', 'en', NULL, NULL),
(223, 'front.products_trending', 'Produk terlaris', 'front', 'vi', NULL, NULL),
(224, 'front.products_trending', 'Product best seller', 'front', 'en', NULL, NULL),
(225, 'front.search_result', 'Hasil pencarian', 'front', 'vi', NULL, NULL),
(226, 'front.search_result', 'Search result', 'front', 'en', NULL, NULL),
(227, 'front.view_not_exist', 'Tidak melihat :view', 'front', 'vi', NULL, NULL),
(228, 'front.view_not_exist', 'View not found :view', 'front', 'en', NULL, NULL),
(229, 'front.no_item', 'Produk tidak ditemukan', 'front', 'vi', NULL, NULL),
(230, 'front.no_item', 'No items found', 'front', 'en', NULL, NULL),
(231, 'search.placeholder', 'Masukkan kata kunci', 'search', 'vi', NULL, NULL),
(232, 'search.placeholder', 'Input keyword', 'search', 'en', NULL, NULL),
(233, 'store.deny_help_1', 'Sorry, this domain does not exist on the system!', 'store', 'en', NULL, NULL),
(234, 'store.deny_help_1', 'Maaf, nama domain ini tidak ada di sistem!', 'store', 'vi', NULL, NULL),
(235, 'store.deny_help_2', 'Return to home page', 'store', 'en', NULL, NULL),
(236, 'store.deny_help_2', 'Kembali ke halaman beranda', 'store', 'vi', NULL, NULL),
(237, 'store.address', 'Address', 'store', 'en', NULL, NULL),
(238, 'store.address', 'Alamat', 'store', 'vi', NULL, NULL),
(239, 'store.phone', 'Phone', 'store', 'en', NULL, NULL),
(240, 'store.phone', 'Nomor telepon', 'store', 'vi', NULL, NULL),
(241, 'store.hotline', 'Hotline', 'store', 'en', NULL, NULL),
(242, 'store.hotline', 'Nomor telepon', 'store', 'vi', NULL, NULL),
(243, 'store.email', 'Email', 'store', 'vi', NULL, NULL),
(244, 'store.email', 'Email', 'store', 'en', NULL, NULL),
(245, 'store.title', 'Nama toko', 'store', 'vi', NULL, NULL),
(246, 'store.title', 'Store title', 'store', 'en', NULL, NULL),
(247, 'store.keyword', 'Kata kunci', 'store', 'vi', NULL, NULL),
(248, 'store.keyword', 'Keyword', 'store', 'en', NULL, NULL),
(249, 'store.description', 'Menggambarkan', 'store', 'vi', NULL, NULL),
(250, 'store.description', 'Description', 'store', 'en', NULL, NULL),
(251, 'store.language', 'Bahasa', 'store', 'vi', NULL, NULL),
(252, 'store.language', 'Language', 'store', 'en', NULL, NULL),
(253, 'store.currency', 'Mata uang', 'store', 'vi', NULL, NULL),
(254, 'store.currency', 'Currency', 'store', 'en', NULL, NULL),
(255, 'store.timezone', 'Zona waktu', 'store', 'vi', NULL, NULL),
(256, 'store.timezone', 'Timezone', 'store', 'en', NULL, NULL),
(257, 'store.warehouse', 'Nhà kho', 'store', 'vi', NULL, NULL),
(258, 'store.warehouse', 'Warehouse', 'store', 'en', NULL, NULL),
(259, 'store.office', 'Văn phòng', 'store', 'vi', NULL, NULL),
(260, 'store.office', 'Office', 'store', 'en', NULL, NULL),
(261, 'store.time_active', 'Thời gian làm việc', 'store', 'vi', NULL, NULL),
(262, 'store.time_active', 'Time active', 'store', 'en', NULL, NULL),
(263, 'store.long_phone', 'Số điện thoại', 'store', 'vi', NULL, NULL),
(264, 'store.long_phone', 'Full phone', 'store', 'en', NULL, NULL),
(265, 'store.logo', 'Logo', 'store', 'vi', NULL, NULL),
(266, 'store.logo', 'Logo', 'store', 'en', NULL, NULL),
(267, 'store.icon', 'Icon', 'store', 'vi', NULL, NULL),
(268, 'store.icon', 'Icon', 'store', 'en', NULL, NULL),
(269, 'store.all_stores', 'All stores', 'store', 'vi', NULL, NULL),
(270, 'store.all_stores', 'Tất cả cửa hàng', 'store', 'en', NULL, NULL),
(271, 'store.maintenance', 'Bảo trì', 'store', 'vi', NULL, NULL),
(272, 'store.maintenance', 'Maintenance', 'store', 'en', NULL, NULL),
(273, 'store.admin.template', 'Giao diện', 'store.admin', 'vi', NULL, NULL),
(274, 'store.admin.template', 'Template', 'store.admin', 'en', NULL, NULL),
(275, 'store.admin.domain', 'Tên miền', 'store.admin', 'vi', NULL, NULL),
(276, 'store.admin.domain', 'Domain', 'store.admin', 'en', NULL, NULL),
(277, 'store.admin.domain_help', 'Ví dụ: https://abc.com', 'store.admin', 'vi', NULL, NULL),
(278, 'store.admin.domain_help', 'For example: https://abc.com', 'store.admin', 'en', NULL, NULL),
(279, 'store.admin.domain_invalid', 'Tên miền không hợp lệ', 'store.admin', 'vi', NULL, NULL),
(280, 'store.admin.domain_invalid', 'Domain invalid', 'store.admin', 'en', NULL, NULL),
(281, 'store.admin.code', 'Store code', 'store.admin', 'en', NULL, NULL),
(282, 'store.admin.code', 'Mã cửa hàng', 'store.admin', 'vi', NULL, NULL),
(283, 'store.admin.css', 'Edit CSS', 'store.admin', 'en', NULL, NULL),
(284, 'store.admin.css', 'Chỉnh sửa CSS', 'store.admin', 'vi', NULL, NULL),
(285, 'store.admin.title', 'Thông tin cửa hàng', 'store.admin', 'vi', NULL, NULL),
(286, 'store.admin.config_store', 'Cấu hình cửa hàng #:id', 'store.admin', 'vi', NULL, NULL),
(287, 'store.admin.config_store_detail', 'Cấu hình cửa hàng', 'store.admin', 'vi', NULL, NULL),
(288, 'store.admin.list', 'Danh sách cửa hàng', 'store.admin', 'vi', NULL, NULL),
(289, 'store.admin.field', 'Các trường', 'store.admin', 'vi', NULL, NULL),
(290, 'store.admin.value', 'Giá trị', 'store.admin', 'vi', NULL, NULL),
(291, 'store.admin.config_mode', 'Cấu hình mode', 'store.admin', 'vi', NULL, NULL),
(292, 'store.admin.config_display', 'Cấu hình hiển thị', 'store.admin', 'vi', NULL, NULL),
(293, 'store.admin.config_customize', 'Cấu hình tùy chỉnh', 'store.admin', 'vi', NULL, NULL),
(294, 'store.admin.status', 'Status', 'store.admin', 'vi', NULL, NULL),
(295, 'store.admin.action', 'Hành động', 'store.admin', 'vi', NULL, NULL),
(296, 'store.admin.add_new', 'Thêm mới', 'store.admin', 'vi', NULL, NULL),
(297, 'store.admin.sort', 'Sắp xếp', 'store.admin', 'vi', NULL, NULL),
(298, 'store.admin.search', 'Tìm kiếm', 'store.admin', 'vi', NULL, NULL),
(299, 'store.admin.add_new_title', 'Tạo cửa hàng', 'store.admin', 'vi', NULL, NULL),
(300, 'store.admin.add_new_des', 'Tạo mới một cửa hàng', 'store.admin', 'vi', NULL, NULL),
(301, 'store.admin.config_info', 'Thông tin', 'store.admin', 'vi', NULL, NULL),
(302, 'store.admin.config_product', 'Sản phẩm', 'store.admin', 'vi', NULL, NULL),
(303, 'store.admin.config_customer', 'Khách hàng', 'store.admin', 'vi', NULL, NULL),
(304, 'store.admin.config_email', 'Email', 'store.admin', 'vi', NULL, NULL),
(305, 'store.admin.config_url', 'URL', 'store.admin', 'vi', NULL, NULL),
(306, 'store.admin.config_api', 'API', 'store.admin', 'vi', NULL, NULL),
(307, 'store.admin.config_order', 'Đơn hàng', 'store.admin', 'vi', NULL, NULL),
(308, 'store.admin.config_other', 'Khác', 'store.admin', 'vi', NULL, NULL),
(309, 'store.admin.switch_store', 'Chuyển đổi cửa hàng', 'store.admin', 'vi', NULL, NULL),
(310, 'store.admin.config_admin_other', 'Cấu hình admin', 'store.admin', 'vi', NULL, NULL),
(311, 'store.admin.active_strict', 'Kích hoạt chế độ kiểm tra tên miền', 'store.admin', 'vi', NULL, NULL),
(312, 'store.admin.active_domain', 'Kích hoạt tên miền', 'store.admin', 'vi', NULL, NULL),
(313, 'store.admin.active_maintain', 'Kích hoạt chế độ bảo trì', 'store.admin', 'vi', NULL, NULL),
(314, 'store.admin.domain_exist', 'Tên miền đã có rồi', 'store.admin', 'vi', NULL, NULL),
(315, 'store.admin.code_exist', 'Mã code đã có rồi', 'store.admin', 'vi', NULL, NULL),
(316, 'store.admin.value_cannot_change', 'Giá trị này không thể thay đổi', 'store.admin', 'vi', NULL, NULL),
(317, 'store.admin.title', 'Store infomation', 'store.admin', 'en', NULL, NULL),
(318, 'store.admin.config_store', 'Config store #:id', 'store.admin', 'en', NULL, NULL),
(319, 'store.admin.config_store_detail', 'Config store', 'store.admin', 'en', NULL, NULL),
(320, 'store.admin.list', 'Store list', 'store.admin', 'en', NULL, NULL),
(321, 'store.admin.field', 'Field', 'store.admin', 'en', NULL, NULL),
(322, 'store.admin.value', 'Value', 'store.admin', 'en', NULL, NULL),
(323, 'store.admin.config_mode', 'Store mode', 'store.admin', 'en', NULL, NULL),
(324, 'store.admin.config_display', 'Store display', 'store.admin', 'en', NULL, NULL),
(325, 'store.admin.config_customize', 'Config customize', 'store.admin', 'en', NULL, NULL),
(326, 'store.admin.status', 'Status', 'store.admin', 'en', NULL, NULL),
(327, 'store.admin.action', 'Action', 'store.admin', 'en', NULL, NULL),
(328, 'store.admin.sort', 'Sort', 'store.admin', 'en', NULL, NULL),
(329, 'store.admin.search', 'Search', 'store.admin', 'en', NULL, NULL),
(330, 'store.admin.add_new', 'Add new', 'store.admin', 'en', NULL, NULL),
(331, 'store.admin.add_new_title', 'Add new store', 'store.admin', 'en', NULL, NULL),
(332, 'store.admin.add_new_des', 'Create a new store', 'store.admin', 'en', NULL, NULL),
(333, 'store.admin.config_info', 'Infomation', 'store.admin', 'en', NULL, NULL),
(334, 'store.admin.config_order', 'Order', 'store.admin', 'en', NULL, NULL),
(335, 'store.admin.config_product', 'Product', 'store.admin', 'en', NULL, NULL),
(336, 'store.admin.config_customer', 'Customer', 'store.admin', 'en', NULL, NULL),
(337, 'store.admin.config_email', 'Email', 'store.admin', 'en', NULL, NULL),
(338, 'store.admin.config_url', 'URL', 'store.admin', 'en', NULL, NULL),
(339, 'store.admin.config_api', 'API', 'store.admin', 'en', NULL, NULL),
(340, 'store.admin.config_other', 'Other', 'store.admin', 'en', NULL, NULL),
(341, 'store.admin.switch_store', 'Switch store', 'store.admin', 'en', NULL, NULL),
(342, 'store.admin.config_admin_other', 'Config admin', 'store.admin', 'en', NULL, NULL),
(343, 'store.admin.active_strict', 'Activate domain check mode', 'store.admin', 'en', NULL, NULL),
(344, 'store.admin.active_domain', 'Activate the domain name', 'store.admin', 'en', NULL, NULL),
(345, 'store.admin.active_maintain', 'Activate maintenance mode', 'store.admin', 'en', NULL, NULL),
(346, 'store.admin.domain_exist', 'Domain exist already', 'store.admin', 'en', NULL, NULL),
(347, 'store.admin.code_exist', 'Code exist already', 'store.admin', 'en', NULL, NULL),
(348, 'store.admin.value_cannot_change', 'This value cannot be changed', 'store.admin', 'en', NULL, NULL),
(349, 'store.display.product_top', 'Top product', 'store.admin', 'en', NULL, NULL),
(350, 'store.display.product_top', 'Produk unggulan', 'store.admin', 'vi', NULL, NULL),
(351, 'store.display.list_product', 'List product', 'store.admin', 'en', NULL, NULL),
(352, 'store.display.list_product', 'Daftar produk', 'store.admin', 'vi', NULL, NULL),
(353, 'store.display.relation_product', 'Relation product', 'store.admin', 'en', NULL, NULL),
(354, 'store.display.relation_product', 'Produk terkait', 'store.admin', 'vi', NULL, NULL),
(355, 'store.display.viewed_product', 'Product viewed', 'store.admin', 'en', NULL, NULL),
(356, 'store.display.viewed_product', 'Produk telah dilihat.', 'store.admin', 'vi', NULL, NULL),
(357, 'store.display.item_list', 'List item', 'store.admin', 'en', NULL, NULL),
(358, 'store.display.item_list', 'Daftar item', 'store.admin', 'vi', NULL, NULL),
(359, 'store.display.item_top', 'Top item', 'store.admin', 'en', NULL, NULL),
(360, 'store.display.item_top', 'Top item', 'store.admin', 'vi', NULL, NULL),
(361, 'store.admin.config_layout', 'Mengonfigurasi tata letak toko', 'admin.config_layout', 'vi', NULL, NULL),
(362, 'store.admin.config_layout', 'Config layout shop', 'admin.config_layout', 'en', NULL, NULL),
(363, 'cart.checkout', 'Checkout', 'cart', 'en', NULL, NULL),
(364, 'cart.checkout', 'Bayar', 'cart', 'vi', NULL, NULL),
(365, 'cart.back_to_cart', 'Back to cart', 'cart', 'en', NULL, NULL),
(366, 'cart.back_to_cart', 'Kembali ', 'cart', 'vi', NULL, NULL),
(367, 'cart.confirm', 'Confirm', 'cart', 'en', NULL, NULL),
(368, 'cart.confirm', 'Mengkonfirmasi', 'cart', 'vi', NULL, NULL),
(369, 'cart.cart_title', 'Shopping cart', 'cart', 'en', NULL, NULL),
(370, 'cart.cart_title', 'Halaman keranjang', 'cart', 'vi', NULL, NULL),
(371, 'cart.page_title', 'Shopping cart', 'cart', 'en', NULL, NULL),
(372, 'cart.page_title', 'Halaman keranjang', 'cart', 'vi', NULL, NULL),
(373, 'cart.back_to_shop', 'Back to shop', 'cart', 'en', NULL, NULL),
(374, 'cart.back_to_shop', 'Kembalinya baris', 'cart', 'vi', NULL, NULL),
(375, 'cart.remove_all', 'Remove cart', 'cart', 'en', NULL, NULL),
(376, 'cart.remove_all', 'Hapus keranjang', 'cart', 'vi', NULL, NULL),
(377, 'cart.minimum_value', 'Minimum :value items', 'cart', 'en', NULL, NULL),
(378, 'cart.minimum_value', 'Minimum :value item', 'cart', 'vi', NULL, NULL),
(379, 'cart.note', 'Note', 'cart', 'en', NULL, NULL),
(380, 'cart.note', 'Catatan', 'cart', 'vi', NULL, NULL),
(381, 'cart.coupon', 'Coupon', 'cart', 'en', NULL, NULL),
(382, 'cart.coupon', 'Kode diskon', 'cart', 'vi', NULL, NULL),
(383, 'cart.remove_coupon', 'Remove coupon', 'cart', 'en', NULL, NULL),
(384, 'cart.remove_coupon', 'Hapus kode diskon', 'cart', 'vi', NULL, NULL),
(385, 'cart.coupon_empty', 'Coupon empty', 'cart', 'en', NULL, NULL),
(386, 'cart.coupon_empty', 'Tidak ada kode diskon', 'cart', 'vi', NULL, NULL),
(387, 'cart.apply', 'Apply', 'cart', 'en', NULL, NULL),
(388, 'cart.apply', 'Berlaku', 'cart', 'vi', NULL, NULL),
(389, 'cart.change_address', 'Change address', 'cart', 'en', NULL, NULL),
(390, 'cart.change_address', 'Mengubah alamat', 'cart', 'vi', NULL, NULL),
(391, 'cart.add_new_address', 'Add new address', 'cart', 'en', NULL, NULL),
(392, 'cart.add_new_address', 'Menambahkan alamat baru', 'cart', 'vi', NULL, NULL),
(393, 'cart.page_wishlist_title', 'Page wishlist', 'cart', 'en', NULL, NULL),
(394, 'cart.page_wishlist_title', 'Halaman produk favorit', 'cart', 'vi', NULL, NULL),
(395, 'cart.page_compare_title', 'Page compare', 'cart', 'en', NULL, NULL),
(396, 'cart.page_compare_title', 'Halaman perbandingan produk', 'cart', 'vi', NULL, NULL),
(397, 'cart.shipping_address', 'Shipping address', 'cart', 'en', NULL, NULL),
(398, 'cart.shipping_address', 'Alamat pengiriman', 'cart', 'vi', NULL, NULL),
(399, 'cart.payment_address', 'Payment address', 'cart', 'en', NULL, NULL),
(400, 'cart.payment_address', 'Alamat pembayaran', 'cart', 'vi', NULL, NULL),
(401, 'cart.payment_method', 'Metode pembayaran', 'cart', 'vi', NULL, NULL),
(402, 'cart.payment_method', 'Payment method', 'cart', 'en', NULL, NULL),
(403, 'cart.shipping_method', 'Moda transportasi', 'cart', 'vi', NULL, NULL),
(404, 'cart.shipping_method', 'Shipping method', 'cart', 'en', NULL, NULL),
(405, 'cart.country', 'Country', 'cart', 'en', NULL, NULL),
(406, 'cart.country', 'Negara', 'cart', 'vi', NULL, NULL),
(407, 'cart.company', 'Perserikatan', 'cart', 'vi', NULL, NULL),
(408, 'cart.company', 'Company', 'cart', 'en', NULL, NULL),
(409, 'cart.address3', 'Alamat rumah', 'cart', 'vi', NULL, NULL),
(410, 'cart.address3', 'Address 3', 'cart', 'en', NULL, NULL),
(411, 'cart.address2', 'Distrik', 'cart', 'vi', NULL, NULL),
(412, 'cart.address2', 'Address 2', 'cart', 'en', NULL, NULL),
(413, 'cart.address1', 'Provinsi/Kota', 'cart', 'vi', NULL, NULL),
(414, 'cart.address1', 'Address 1', 'cart', 'en', NULL, NULL),
(415, 'cart.postcode', 'Kodepos', 'cart', 'vi', NULL, NULL),
(416, 'cart.postcode', 'Post code', 'cart', 'en', NULL, NULL),
(417, 'cart.phone', 'Phone', 'cart', 'en', NULL, NULL),
(418, 'cart.phone', 'Telepon', 'cart', 'vi', NULL, NULL),
(419, 'cart.last_name_kana', 'Nama belakang', 'cart', 'vi', NULL, NULL),
(420, 'cart.last_name_kana', 'Last name ', 'cart', 'en', NULL, NULL),
(421, 'cart.first_name_kana', 'First name ', 'cart', 'en', NULL, NULL),
(422, 'cart.first_name_kana', 'Nama depan', 'cart', 'vi', NULL, NULL),
(423, 'cart.full_name', 'Full name', 'cart', 'en', NULL, NULL),
(424, 'cart.full_name', 'Nama lengkap', 'cart', 'vi', NULL, NULL),
(425, 'cart.name', 'Name', 'cart', 'en', NULL, NULL),
(426, 'cart.name', 'Nama', 'cart', 'vi', NULL, NULL),
(427, 'cart.midle_name', 'Nama tengah', 'cart', 'vi', NULL, NULL),
(428, 'cart.midle_name', 'Midle name', 'cart', 'en', NULL, NULL),
(429, 'cart.last_name', 'Nama belakang', 'cart', 'vi', NULL, NULL),
(430, 'cart.last_name', 'Last name', 'cart', 'en', NULL, NULL),
(431, 'cart.first_name', 'Nama depan', 'cart', 'vi', NULL, NULL),
(432, 'cart.first_name', 'First name', 'cart', 'en', NULL, NULL),
(433, 'cart.email', 'Email', 'cart', 'vi', NULL, NULL),
(434, 'cart.email', 'Email', 'cart', 'en', NULL, NULL),
(435, 'cart.sex', 'Jenis kelamin', 'cart', 'vi', NULL, NULL),
(436, 'cart.sex', 'Sex', 'cart', 'en', NULL, NULL),
(437, 'cart.birthday', 'Ulang tahun', 'cart', 'vi', NULL, NULL),
(438, 'cart.birthday', 'Birthday', 'cart', 'en', NULL, NULL),
(439, 'cart.validation.shippingMethod_required', 'Shipping method required', 'cart', 'en', NULL, NULL),
(440, 'cart.validation.shippingMethod_required', 'Protokol pengiriman diperlukan', 'cart', 'vi', NULL, NULL),
(441, 'cart.validation.paymentMethod_required', 'Payment method required', 'cart', 'en', NULL, NULL),
(442, 'cart.validation.paymentMethod_required', 'Metode pembayaran adalah wajib.', 'cart', 'vi', NULL, NULL),
(443, 'cart.add_to_cart_success', 'Tambahkan ke :instance yang berhasil', 'cart', 'vi', NULL, NULL),
(444, 'cart.add_to_cart_success', 'Add to :instance success', 'cart', 'en', NULL, NULL),
(445, 'cart.item_exist_in_cart', 'This item is already in stock in the :instance', 'cart', 'en', NULL, NULL),
(446, 'cart.item_exist_in_cart', 'Item ini sudah ada di :instance', 'cart', 'vi', NULL, NULL),
(447, 'cart.item_over_qty', 'The number of :sku must not exceed :qty', 'cart', 'en', NULL, NULL),
(448, 'cart.item_over_qty', 'Jumlah :sku jangan berlebihan :qty', 'cart', 'vi', NULL, NULL),
(449, 'cart.have_error', 'Terjadi kesalahan. Silakan periksa lagi.', 'cart', 'vi', NULL, NULL),
(450, 'cart.have_error', 'Have an error. Please check again.', 'cart', 'en', NULL, NULL),
(451, 'cart.cart_store_id_notfound', 'Tidak ada ID toko yang ditemukan.', 'cart', 'vi', NULL, NULL),
(452, 'cart.cart_store_id_notfound', 'Store ID not found', 'cart', 'en', NULL, NULL),
(453, 'cart.cart_empty', 'Cart kosong', 'cart', 'vi', NULL, NULL),
(454, 'cart.cart_empty', 'The shopping cart is empty', 'cart', 'en', NULL, NULL),
(455, 'cart.cart_store_empty', 'Keranjang belanja di toko kosong.', 'cart', 'vi', NULL, NULL),
(456, 'cart.cart_store_empty', 'The shopping cart in the shop is empty', 'cart', 'en', NULL, NULL),
(457, 'checkout.title', 'Checkout', 'checkout', 'en', NULL, NULL),
(458, 'checkout.title', 'Konfirmasi pembayaran', 'checkout', 'vi', NULL, NULL),
(459, 'checkout.order_success_msg', 'Thank you for your purchase!', 'checkout', 'en', NULL, NULL),
(460, 'checkout.order_success_msg', 'Terima kasih atas pesanan Anda!', 'checkout', 'vi', NULL, NULL),
(461, 'checkout.order_success_order_info', 'Your order #:order_id', 'checkout', 'en', NULL, NULL),
(462, 'checkout.order_success_order_info', 'Pesanan Anda adalah #:order_id', 'checkout', 'vi', NULL, NULL),
(463, 'checkout.page_title', 'Checkout page', 'checkout', 'en', NULL, NULL),
(464, 'checkout.page_title', 'Konfirmasi pembayaran', 'checkout', 'vi', NULL, NULL),
(465, 'checkout.success_title', 'Order success', 'checkout', 'en', NULL, NULL),
(466, 'checkout.success_title', 'Pesanan berhasil', 'checkout', 'vi', NULL, NULL),
(467, 'product.name', 'Name', 'product', 'en', NULL, NULL),
(468, 'product.name', 'Nama', 'product', 'vi', NULL, NULL),
(469, 'product.keyword', 'Keyword ', 'product', 'en', NULL, NULL),
(470, 'product.keyword', 'Kata kunci', 'product', 'vi', NULL, NULL),
(471, 'product.content', 'Main content', 'product', 'en', NULL, NULL),
(472, 'product.content', 'Konten utama', 'product', 'vi', NULL, NULL),
(473, 'product.sku', 'SKU code', 'product', 'en', NULL, NULL),
(474, 'product.sku', 'Kode SKU', 'product', 'vi', NULL, NULL),
(475, 'product.stock', 'Stock', 'product', 'en', NULL, NULL),
(476, 'product.stock', 'Stok', 'product', 'vi', NULL, NULL),
(477, 'product.cost', 'Price cost', 'product', 'en', NULL, NULL),
(478, 'product.cost', 'Biaya harga', 'product', 'vi', NULL, NULL),
(479, 'product.price', 'Price', 'product', 'en', NULL, NULL),
(480, 'product.price', 'Harga', 'product', 'vi', NULL, NULL),
(481, 'product.image', 'Image', 'product', 'en', NULL, NULL),
(482, 'product.image', 'Gambar', 'product', 'vi', NULL, NULL),
(483, 'product.view', 'Viewed', 'product', 'en', NULL, NULL),
(484, 'product.view', 'Dilihat', 'product', 'vi', NULL, NULL),
(485, 'product.kind', 'Kind', 'product', 'en', NULL, NULL),
(486, 'product.kind', 'Jenis', 'product', 'vi', NULL, NULL),
(487, 'product.sold', 'Sold', 'product', 'en', NULL, NULL),
(488, 'product.sold', 'Terjual', 'product', 'vi', NULL, NULL),
(489, 'product.minimum', 'Minimum', 'product', 'en', NULL, NULL),
(490, 'product.minimum', 'Minimum', 'product', 'vi', NULL, NULL),
(491, 'product.minimum_help', 'Minimum quantity to order', 'product', 'en', NULL, NULL),
(492, 'product.minimum_help', 'Jumlah minimum pesanan', 'product', 'vi', NULL, NULL),
(493, 'product.width', 'Width', 'product', 'en', NULL, NULL),
(494, 'product.width', 'Lebar', 'product', 'vi', NULL, NULL),
(495, 'product.status', 'Status', 'product', 'en', NULL, NULL),
(496, 'product.status', 'Status', 'product', 'vi', NULL, NULL),
(497, 'product.approve', 'Approve', 'product', 'en', NULL, NULL),
(498, 'product.approve', 'Memeriksa', 'product', 'vi', NULL, NULL),
(499, 'product.quantity', 'Quantity', 'product', 'en', NULL, NULL),
(500, 'product.quantity', 'Jumlah', 'product', 'vi', NULL, NULL),
(501, 'product.weight', 'Weight', 'product', 'en', NULL, NULL),
(502, 'product.weight', 'Massa', 'product', 'vi', NULL, NULL),
(503, 'product.length', 'Length', 'product', 'en', NULL, NULL),
(504, 'product.length', 'Dimensi', 'product', 'vi', NULL, NULL),
(505, 'product.height', 'Height', 'product', 'en', NULL, NULL),
(506, 'product.height', 'Tinggi', 'product', 'vi', NULL, NULL),
(507, 'product.property', 'Property', 'product', 'en', NULL, NULL),
(508, 'product.property', 'Sifat', 'product', 'vi', NULL, NULL),
(509, 'product.download_path', 'Url or path to file', 'product', 'en', NULL, NULL),
(510, 'product.download_path', 'Menautkan atau jalur ke file', 'product', 'vi', NULL, NULL),
(511, 'product.attribute', 'Attribute', 'product', 'en', NULL, NULL),
(512, 'product.attribute', 'Thuộc tính', 'product', 'vi', NULL, NULL),
(513, 'product.tax', 'Tax', 'product', 'en', NULL, NULL),
(514, 'product.tax', 'Thuế', 'product', 'vi', NULL, NULL),
(515, 'product.price_group', 'Click view price', 'product', 'en', NULL, NULL),
(516, 'product.price_group', 'Bấm xem giá', 'product', 'vi', NULL, NULL),
(517, 'product.price_group_chose', 'Click choose product', 'product', 'en', NULL, NULL),
(518, 'product.price_group_chose', 'Bấm chọn sản phẩm', 'product', 'vi', NULL, NULL),
(519, 'product.subtotal', 'Subtotal', 'product', 'en', NULL, NULL),
(520, 'product.subtotal', 'Giá sản phẩm', 'product', 'vi', NULL, NULL),
(521, 'product.sub_total', 'Subtotal', 'product', 'en', NULL, NULL),
(522, 'product.sub_total', 'Giá sản phẩm', 'product', 'vi', NULL, NULL),
(523, 'product.total_price', 'Total price', 'product', 'en', NULL, NULL),
(524, 'product.total_price', 'Tổng tiền', 'product', 'vi', NULL, NULL),
(525, 'product.stock_status', 'Stock status', 'product', 'en', NULL, NULL),
(526, 'product.stock_status', 'Trạng thái tồn', 'product', 'vi', NULL, NULL),
(527, 'product.out_stock', 'Out of stock', 'product', 'en', NULL, NULL),
(528, 'product.out_stock', 'Hết hàng', 'product', 'vi', NULL, NULL),
(529, 'product.in_stock', 'In stock', 'product', 'en', NULL, NULL),
(530, 'product.in_stock', 'Còn hàng', 'product', 'vi', NULL, NULL),
(531, 'product.date_available', 'Date available', 'product', 'en', NULL, NULL),
(532, 'product.date_available', 'Ngày bán', 'product', 'vi', NULL, NULL),
(533, 'product.category', 'Category', 'product', 'en', NULL, NULL),
(534, 'product.category', 'Danh mục', 'product', 'vi', NULL, NULL),
(535, 'product.category_store', 'Category store', 'product', 'en', NULL, NULL),
(536, 'product.category_store', 'Danh mục riêng', 'product', 'vi', NULL, NULL),
(537, 'product.brand', 'Brand', 'product', 'en', NULL, NULL),
(538, 'product.brand', 'Nhãn hàng', 'product', 'vi', NULL, NULL),
(539, 'product.supplier', 'Supplier', 'product', 'en', NULL, NULL),
(540, 'product.supplier', 'Nhà cung cấp', 'product', 'vi', NULL, NULL),
(541, 'product.kind_group', 'Group', 'product', 'en', NULL, NULL),
(542, 'product.kind_group', 'Sản phẩm nhóm', 'product', 'vi', NULL, NULL),
(543, 'product.kind_bundle', 'Bundle', 'product', 'en', NULL, NULL),
(544, 'product.kind_bundle', 'Sản phẩm bộ', 'product', 'vi', NULL, NULL),
(545, 'product.kind_single', 'Single', 'product', 'en', NULL, NULL),
(546, 'product.kind_single', 'Sản phẩm đơn', 'product', 'vi', NULL, NULL),
(547, 'product.description', 'Description', 'product', 'en', NULL, NULL),
(548, 'product.description', 'Mô tả', 'product', 'vi', NULL, NULL),
(549, 'product.product_detail', 'Product detail', 'product', 'en', NULL, NULL),
(550, 'product.product_detail', 'Chi tiết sản phẩm', 'product', 'vi', NULL, NULL),
(551, 'product.dont_allow_sale', 'Product :sku dont allow for sale', 'product', 'en', NULL, NULL),
(552, 'product.dont_allow_sale', 'Sản phẩm :sku không bán', 'product', 'vi', NULL, NULL),
(553, 'product.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en', NULL, NULL),
(554, 'product.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi', NULL, NULL),
(555, 'product.sku_unique', 'SKU already exists', 'product', 'en', NULL, NULL),
(556, 'product.sku_unique', 'SKU đã có rồi', 'product', 'vi', NULL, NULL),
(557, 'product.product_specifications', 'Additional infomation', 'product', 'en', NULL, NULL),
(558, 'product.product_specifications', 'Thông tin bổ sung', 'product', 'vi', NULL, NULL),
(559, 'product.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'en', NULL, NULL),
(560, 'product.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'vi', NULL, NULL),
(561, 'product.sku_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en', NULL, NULL),
(562, 'product.sku_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi', NULL, NULL),
(563, 'product.price_promotion', 'Price promotion', 'product', 'en', NULL, NULL),
(564, 'product.price_promotion', 'Giá khuyến mãi', 'product', 'vi', NULL, NULL),
(565, 'product.price_promotion_start', 'Start date', 'product', 'en', NULL, NULL),
(566, 'product.price_promotion_start', 'Ngày bắt đầu', 'product', 'vi', NULL, NULL),
(567, 'product.price_promotion_end', 'End date', 'product', 'en', NULL, NULL),
(568, 'product.price_promotion_end', 'Ngày kết thúc', 'product', 'vi', NULL, NULL),
(569, 'product.edit_product', 'Edit product', 'product', 'en', NULL, NULL),
(570, 'product.edit_product', 'Chỉnh sửa sản phẩm', 'product', 'vi', NULL, NULL),
(571, 'product.admin.title', 'Quản lý sản phẩm', 'product.admin', 'vi', NULL, NULL),
(572, 'product.admin.create_success', 'Tạo item thành công!', 'product.admin', 'vi', NULL, NULL),
(573, 'product.admin.edit_success', 'chỉnh sửa item thành công!', 'product.admin', 'vi', NULL, NULL),
(574, 'product.admin.list', 'Danh sách sản phẩm', 'product.admin', 'vi', NULL, NULL),
(575, 'product.admin.action', 'Hành động', 'product.admin', 'vi', NULL, NULL),
(576, 'product.admin.delete', 'Xóa', 'product.admin', 'vi', NULL, NULL),
(577, 'product.admin.edit', 'Sửa', 'product.admin', 'vi', NULL, NULL),
(578, 'product.admin.add_new', 'Thêm mới', 'product.admin', 'vi', NULL, NULL),
(579, 'product.admin.add_new_title', 'Tạo sản phẩm', 'product.admin', 'vi', NULL, NULL),
(580, 'product.admin.add_new_title_build', 'Tạo sản phẩm bộ', 'product.admin', 'vi', NULL, NULL),
(581, 'product.admin.add_new_title_group', 'Tạo sản phẩm nhóm', 'product.admin', 'vi', NULL, NULL),
(582, 'product.admin.add_new_des', 'Tạo mới một sản phẩm', 'product.admin', 'vi', NULL, NULL),
(583, 'product.admin.export', 'Xuất', 'product.admin', 'vi', NULL, NULL),
(584, 'product.admin.refresh', 'Làm mới', 'product.admin', 'vi', NULL, NULL),
(585, 'product.admin.select_kind', 'Chọn loại sản phẩm', 'product.admin', 'vi', NULL, NULL),
(586, 'product.admin.select_supplier', 'Chọn nhà cung cấp', 'product.admin', 'vi', NULL, NULL),
(587, 'product.admin.sort', 'Thứ tự', 'product.admin', 'vi', NULL, NULL),
(588, 'product.admin.select_category', 'Chọn danh mục', 'product.admin', 'vi', NULL, NULL),
(589, 'product.admin.select_store', 'Chọn cửa hàng', 'product.admin', 'vi', NULL, NULL),
(590, 'product.admin.select_product_in_group', 'Chọn sản phẩm trong nhóm', 'product.admin', 'vi', NULL, NULL),
(591, 'product.admin.select_product_in_build', 'Chọn sản phẩm trong bộ', 'product.admin', 'vi', NULL, NULL),
(592, 'product.admin.add_product', 'Thêm sản phẩm', 'product.admin', 'vi', NULL, NULL),
(593, 'product.admin.add_attribute', 'Thêm thuộc tính', 'product.admin', 'vi', NULL, NULL),
(594, 'product.admin.add_attribute_place', 'Nhập một thuộc tính', 'product.admin', 'vi', NULL, NULL),
(595, 'product.admin.add_sub_image', 'Thêm ảnh', 'product.admin', 'vi', NULL, NULL),
(596, 'product.admin.add_product_promotion', 'Thêm giá khuyến mãi', 'product.admin', 'vi', NULL, NULL),
(597, 'product.admin.choose_image', 'Chọn hình', 'product.admin', 'vi', NULL, NULL),
(598, 'product.admin.add_price_place', 'Thêm tiền', 'product.admin', 'vi', NULL, NULL),
(599, 'product.admin.setting_info', 'Thiết lập sản phẩm', 'product.admin', 'vi', NULL, NULL),
(600, 'product.admin.config_info', 'Mengonfigurasi informasi', 'product.admin', 'vi', NULL, NULL),
(601, 'product.admin.title', 'Product manager', 'product.admin', 'en', NULL, NULL),
(602, 'product.admin.create_success', 'Create new item success!', 'product.admin', 'en', NULL, NULL),
(603, 'product.admin.edit_success', 'Edit item success!', 'product.admin', 'en', NULL, NULL),
(604, 'product.admin.list', 'Product list', 'product.admin', 'en', NULL, NULL),
(605, 'product.admin.action', 'Action', 'product.admin', 'en', NULL, NULL),
(606, 'product.admin.delete', 'Delete', 'product.admin', 'en', NULL, NULL),
(607, 'product.admin.edit', 'Edit', 'product.admin', 'en', NULL, NULL),
(608, 'product.admin.add_new', 'Add new', 'product.admin', 'en', NULL, NULL),
(609, 'product.admin.add_new_title', 'Add new product', 'product.admin', 'en', NULL, NULL),
(610, 'product.admin.add_new_title_build', 'Add new product build', 'product.admin', 'en', NULL, NULL),
(611, 'product.admin.add_new_title_group', 'Add new product group', 'product.admin', 'en', NULL, NULL),
(612, 'product.admin.add_new_des', 'Create a new product', 'product.admin', 'en', NULL, NULL),
(613, 'product.admin.export', 'Export', 'product.admin', 'en', NULL, NULL),
(614, 'product.admin.refresh', 'Refresh', 'product.admin', 'en', NULL, NULL),
(615, 'product.admin.select_kind', 'Select product kind', 'product.admin', 'en', NULL, NULL),
(616, 'product.admin.select_supplier', 'Select supplier', 'product.admin', 'en', NULL, NULL),
(617, 'product.admin.result_item', 'Showing <b>:item_from</b> to <b>:item_to</b> of <b>:total</b> items</b>', 'product.admin', 'en', NULL, NULL),
(618, 'product.admin.sort', 'Sort', 'product.admin', 'en', NULL, NULL),
(619, 'product.admin.select_category', 'Select category', 'product.admin', 'en', NULL, NULL),
(620, 'product.admin.select_store', 'Select store', 'product.admin', 'en', NULL, NULL),
(621, 'product.admin.select_product_in_group', 'Select products in group', 'product.admin', 'en', NULL, NULL),
(622, 'product.admin.select_product_in_build', 'Select products build', 'product.admin', 'en', NULL, NULL),
(623, 'product.admin.select_weight', 'Select weight class', 'product.admin', 'en', NULL, NULL),
(624, 'product.admin.select_weight', 'Pilih satuan volume', 'product.admin', 'vi', NULL, NULL),
(625, 'product.admin.select_length', 'Select length class', 'product.admin', 'en', NULL, NULL),
(626, 'product.admin.select_length', 'Pilih ukuran unit', 'product.admin', 'vi', NULL, NULL),
(627, 'product.admin.add_product', 'Add product', 'product.admin', 'en', NULL, NULL),
(628, 'product.admin.add_attribute', 'Add attribute', 'product.admin', 'en', NULL, NULL),
(629, 'product.admin.add_attribute_place', 'Add an attribute value', 'product.admin', 'en', NULL, NULL),
(630, 'product.admin.add_sub_image', 'Add more images', 'product.admin', 'en', NULL, NULL),
(631, 'product.admin.add_product_promotion', 'Add promotion price', 'product.admin', 'en', NULL, NULL),
(632, 'product.admin.choose_image', 'Choose', 'product.admin', 'en', NULL, NULL),
(633, 'product.admin.add_price_place', 'Add price', 'product.admin', 'en', NULL, NULL),
(634, 'product.admin.setting_info', 'Setting product', 'product.admin', 'en', NULL, NULL),
(635, 'product.admin.config_info', 'Config info product', 'product.admin', 'en', NULL, NULL),
(636, 'product.admin.search_place', 'Search Name, SKU', 'product.admin', 'en', NULL, NULL),
(637, 'product.admin.search_place', 'Temukan nama dan SKU', 'product.admin', 'vi', NULL, NULL),
(638, 'product.admin.length_class', 'Length class', 'product.admin', 'en', NULL, NULL),
(639, 'product.admin.length_class', 'Ukuran unit', 'product.admin', 'vi', NULL, NULL),
(640, 'product.admin.weight_class', 'Weight class', 'product.admin', 'en', NULL, NULL),
(641, 'product.admin.weight_class', 'Volume satuan', 'product.admin', 'vi', NULL, NULL),
(642, 'product.admin.cant_remove_child', 'Please delete product parent before remove this product', 'product.admin', 'en', NULL, NULL),
(643, 'product.admin.cant_remove_child', 'Menghapus produk induk sebelum menghapus produk ini', 'product.admin', 'vi', NULL, NULL),
(644, 'product.admin.clone', 'Clone product', 'product.admin', 'en', NULL, NULL),
(645, 'product.admin.clone', 'Kloning produk', 'product.admin', 'vi', NULL, NULL),
(646, 'product.admin.clone_confirm', 'Do you want to clone this product?', 'product.admin', 'en', NULL, NULL),
(647, 'product.admin.clone_confirm', 'Apakah Anda ingin mengkloning produk ini?', 'product.admin', 'vi', NULL, NULL),
(648, 'product.admin.clone_success', 'Clone product success', 'product.admin', 'en', NULL, NULL),
(649, 'product.admin.clone_success', 'Kloning produk yang sukses', 'product.admin', 'vi', NULL, NULL),
(650, 'product.config_manager.title', 'Config product', 'product.admin', 'en', NULL, NULL),
(651, 'product.config_manager.field', 'Field config', 'product.admin', 'en', NULL, NULL),
(652, 'product.config_manager.value', 'Value', 'product.admin', 'en', NULL, NULL),
(653, 'product.config_manager.brand', 'Use BRAND', 'product.admin', 'en', NULL, NULL),
(654, 'product.config_manager.supplier', 'Use SUPPLIER', 'product.admin', 'en', NULL, NULL),
(655, 'product.config_manager.price', 'Use PRICE', 'product.admin', 'en', NULL, NULL),
(656, 'product.config_manager.stock', 'Use STOCK', 'product.admin', 'en', NULL, NULL),
(657, 'product.config_manager.cost', 'Use COST PRICE', 'product.admin', 'en', NULL, NULL),
(658, 'product.config_manager.type', 'Use TYPE (new, hot,...)', 'product.admin', 'en', NULL, NULL),
(659, 'product.config_manager.kind', 'Use STRUCTURE TYPE (single, group, bundle)', 'product.admin', 'en', NULL, NULL),
(660, 'product.config_manager.property', 'Use Product Property: download, property, physical', 'product.admin', 'en', NULL, NULL),
(661, 'product.config_manager.attribute', 'Use ATTRIBUTE (color, size,...)', 'product.admin', 'en', NULL, NULL),
(662, 'product.config_manager.promotion', 'Use PROMOTION PRICE', 'product.admin', 'en', NULL, NULL),
(663, 'product.config_manager.available', 'Use Time to start selling', 'product.admin', 'en', NULL, NULL),
(664, 'product.config_manager.tax', 'Tax configuration', 'product.admin', 'en', NULL, NULL),
(665, 'product.config_manager.product_display_price_include_tax', 'Display price include tax', 'product.admin', 'en', NULL, NULL),
(666, 'product.config_manager.weight', 'Use Weight', 'product.admin', 'en', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(667, 'product.config_manager.length', 'Use Length', 'product.admin', 'en', NULL, NULL),
(668, 'product.config_manager.required', 'Required', 'product.admin', 'en', NULL, NULL),
(669, 'product.config_manager.title', ' Konfigurasi produk', 'product.admin', 'vi', NULL, NULL),
(670, 'product.config_manager.field', 'Bidang konfigurasi', 'product.admin', 'vi', NULL, NULL),
(671, 'product.config_manager.value', 'Nilai', 'product.admin', 'vi', NULL, NULL),
(672, 'product.config_manager.brand', 'Gunakan MEREK DAGANG', 'product.admin', 'vi', NULL, NULL),
(673, 'product.config_manager.supplier', 'Gunakan supplier', 'product.admin', 'vi', NULL, NULL),
(674, 'product.config_manager.price', 'Gunakan HARGA', 'product.admin', 'vi', NULL, NULL),
(675, 'product.config_manager.cost', 'Gunakan HARGA ASLI', 'product.admin', 'vi', NULL, NULL),
(676, 'product.config_manager.stock', 'Gunakan KUANTITAS', 'product.admin', 'vi', NULL, NULL),
(677, 'product.config_manager.type', 'Gunakan KLASIFIKASI STATUS (baru, panas,...)', 'product.admin', 'vi', NULL, NULL),
(678, 'product.config_manager.kind', 'Menggunakan KLASIFIKASI STRUKTURAL (produk tunggal, kelompok, set)Gunakan KLASIFIKASI STRUKTURAL (produk tunggal, anak...', 'product.admin', 'vi', NULL, NULL),
(679, 'product.config_manager.property', 'Gunakan KARAKTERISTIK CATE: download, vật lý, dịch vụ,..', 'product.admin', 'vi', NULL, NULL),
(680, 'product.config_manager.attribute', 'Gunakan PROPERTI (warna, ukuran,...)', 'product.admin', 'vi', NULL, NULL),
(681, 'product.config_manager.promotion', 'Gunakan HARGA PROMOSI', 'product.admin', 'vi', NULL, NULL),
(682, 'product.config_manager.available', 'Gunakan WAKTU PEMBUKAAN', 'product.admin', 'vi', NULL, NULL),
(683, 'product.config_manager.tax', 'Konfigurasi pajak', 'product.admin', 'vi', NULL, NULL),
(684, 'product.config_manager.product_display_price_include_tax', 'Menampilkan harga yang sudah termasuk pajak', 'product.admin', 'vi', NULL, NULL),
(685, 'product.config_manager.weight', 'Gunakan Volume', 'product.admin', 'vi', NULL, NULL),
(686, 'product.config_manager.length', 'Gunakan Ukuran', 'product.admin', 'vi', NULL, NULL),
(687, 'product.config_manager.required', 'Wajib', 'product.admin', 'vi', NULL, NULL),
(688, 'product.config_manager.show_date_available', 'Tampilkan waktu penjualan', 'product.admin', 'vi', NULL, NULL),
(689, 'product.config_manager.show_date_available', 'Display date available', 'product.admin', 'en', NULL, NULL),
(690, 'product.config_manager.product_display_out_of_stock', 'Produk kehabisan stok.', 'product.admin', 'vi', NULL, NULL),
(691, 'product.config_manager.product_display_out_of_stock', 'Display product out of stock', 'product.admin', 'en', NULL, NULL),
(692, 'customer.my_account', 'My page', 'customer', 'en', NULL, NULL),
(693, 'customer.my_account', 'Profil', 'customer', 'vi', NULL, NULL),
(694, 'customer.password', 'Password', 'customer', 'en', NULL, NULL),
(695, 'customer.password', 'Kata sandi', 'customer', 'vi', NULL, NULL),
(696, 'customer.password_new', 'New password', 'customer', 'en', NULL, NULL),
(697, 'customer.password_new', 'Kata sandi baru', 'customer', 'vi', NULL, NULL),
(698, 'customer.password_old', 'Old password', 'customer', 'en', NULL, NULL),
(699, 'customer.password_old', 'Kata sandi lama', 'customer', 'vi', NULL, NULL),
(700, 'customer.password_old_required', 'Old password required', 'customer', 'en', NULL, NULL),
(701, 'customer.password_old_required', 'Kata sandi lama adalah wajib.', 'customer', 'vi', NULL, NULL),
(702, 'customer.password_old_notcorrect', 'Old password incorrect', 'customer', 'en', NULL, NULL),
(703, 'customer.password_old_notcorrect', 'Kata sandi lama tidak benar.', 'customer', 'vi', NULL, NULL),
(704, 'customer.remember_me', 'Remember', 'customer', 'en', NULL, NULL),
(705, 'customer.remember_me', 'Ingat saya', 'customer', 'vi', NULL, NULL),
(706, 'customer.change_password', 'Change password', 'customer', 'en', NULL, NULL),
(707, 'customer.change_password', 'Mengubah kata sandi', 'customer', 'vi', NULL, NULL),
(708, 'customer.update_success', 'Update success', 'customer', 'en', NULL, NULL),
(709, 'customer.update_success', 'Pembaruan yang berhasil', 'customer', 'vi', NULL, NULL),
(710, 'customer.update_infomation', 'Update infomation', 'customer', 'en', NULL, NULL),
(711, 'customer.update_infomation', 'Perbarui informasi', 'customer', 'vi', NULL, NULL),
(712, 'customer.change_infomation', 'Change infomation', 'customer', 'en', NULL, NULL),
(713, 'customer.change_infomation', 'Mengubah informasi', 'customer', 'vi', NULL, NULL),
(714, 'customer.order_history', 'Order history', 'customer', 'en', NULL, NULL),
(715, 'customer.order_history', 'Riwayat pembelian', 'customer', 'vi', NULL, NULL),
(716, 'customer.order_detail', 'Order detail', 'customer', 'en', NULL, NULL),
(717, 'customer.order_detail', 'Detail pesanan', 'customer', 'vi', NULL, NULL),
(718, 'customer.address_list', 'Address list', 'customer', 'en', NULL, NULL),
(719, 'customer.address_list', 'Daftar alamat', 'customer', 'vi', NULL, NULL),
(720, 'customer.address_detail', 'Address detail', 'customer', 'en', NULL, NULL),
(721, 'customer.address_detail', 'Informasi alamat', 'customer', 'vi', NULL, NULL),
(722, 'customer.address_default', 'Address default', 'customer', 'en', NULL, NULL),
(723, 'customer.address_default', 'Alamat default', 'customer', 'vi', NULL, NULL),
(724, 'customer.address_set_default', 'Set address default', 'customer', 'en', NULL, NULL),
(725, 'customer.address_set_default', 'Mengatur alamat default', 'customer', 'vi', NULL, NULL),
(726, 'customer.delete_address_success', 'Delete address success', 'customer', 'en', NULL, NULL),
(727, 'customer.delete_address_success', 'Berhasil menghapus alamat', 'customer', 'vi', NULL, NULL),
(728, 'customer.verify_email.button_verify', 'Email verification', 'customer', 'en', NULL, NULL),
(729, 'customer.verify_email.button_verify', 'Autentikasi email', 'customer', 'vi', NULL, NULL),
(730, 'customer.verify_email.title_page', 'Email verification', 'customer', 'en', NULL, NULL),
(731, 'customer.verify_email.title_page', 'Autentikasi email', 'customer', 'vi', NULL, NULL),
(732, 'customer.verify_email.link_invalid', 'Link invalid', 'customer', 'en', NULL, NULL),
(733, 'customer.verify_email.link_invalid', 'Tautan tidak valid', 'customer', 'vi', NULL, NULL),
(734, 'customer.verify_email.verify_success', 'Successful verification', 'customer', 'en', NULL, NULL),
(735, 'customer.verify_email.verify_success', 'Autentikasi berhasil', 'customer', 'vi', NULL, NULL),
(736, 'customer.verify_email.msg_sent', 'Verification link sent.', 'customer', 'en', NULL, NULL),
(737, 'customer.verify_email.msg_sent', 'Mengirim tautan verifikasi!', 'customer', 'vi', NULL, NULL),
(738, 'customer.verify_email.msg_page_2', 'click here to request another.', 'customer', 'en', NULL, NULL),
(739, 'customer.verify_email.msg_page_2', 'Klik di sini untuk meminta.', 'customer', 'vi', NULL, NULL),
(740, 'customer.verify_email.msg_page_1', 'Before proceeding, please check your email for a verification link. If you did not receive the email,', 'customer', 'en', NULL, NULL),
(741, 'customer.verify_email.msg_page_1', 'Sebelum melanjutkan, silakan periksa email Anda untuk tautan verifikasi. Jika Anda tidak menerima email,', 'customer', 'vi', NULL, NULL),
(742, 'customer.verify_email.title_header', 'Verify Your Email Address', 'customer', 'en', NULL, NULL),
(743, 'customer.verify_email.title_header', 'Memverifikasi alamat email Anda', 'customer', 'vi', NULL, NULL),
(744, 'customer.password_forgot', 'Forgot password', 'customer', 'en', NULL, NULL),
(745, 'customer.password_forgot', 'Lupa kata sandi', 'customer', 'vi', NULL, NULL),
(746, 'customer.login_title', 'Login page', 'customer', 'en', NULL, NULL),
(747, 'customer.login_title', 'Halaman masuk', 'customer', 'vi', NULL, NULL),
(748, 'customer.register_success', 'Successful register', 'customer', 'en', NULL, NULL),
(749, 'customer.register_success', 'Pendaftaran yang berhasil', 'customer', 'vi', NULL, NULL),
(750, 'customer.signup', 'Signup', 'customer', 'en', NULL, NULL),
(751, 'customer.signup', 'Daftar', 'customer', 'vi', NULL, NULL),
(752, 'customer.title_register', 'Account register', 'customer', 'en', NULL, NULL),
(753, 'customer.title_register', 'Mendaftar untuk sebuah akun', 'customer', 'vi', NULL, NULL),
(754, 'customer.password_reset', 'Password reset', 'customer', 'en', NULL, NULL),
(755, 'customer.password_reset', 'Reset kata sandi', 'customer', 'vi', NULL, NULL),
(756, 'customer.password_confirm', 'Password confirm', 'customer', 'en', NULL, NULL),
(757, 'customer.password_confirm', 'Konfirmasi kata sandi', 'customer', 'vi', NULL, NULL),
(758, 'customer.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'customer', 'en', NULL, NULL),
(759, 'customer.phone_regex', 'Nomor telepon tidak diformat dengan benar. Panjang 8-14, gunakan hanya angka 0-9 dan \"-\"', 'customer', 'vi', NULL, NULL),
(760, 'customer.country', 'Country', 'customer', 'en', NULL, NULL),
(761, 'customer.country', 'Negara', 'customer', 'vi', NULL, NULL),
(762, 'customer.company', 'Perserikatan', 'customer', 'vi', NULL, NULL),
(763, 'customer.company', 'Company', 'customer', 'en', NULL, NULL),
(764, 'customer.address3', 'Alamat rumah', 'customer', 'vi', NULL, NULL),
(765, 'customer.address3', 'Address 3', 'customer', 'en', NULL, NULL),
(766, 'customer.address2', 'Distrik', 'customer', 'vi', NULL, NULL),
(767, 'customer.address2', 'Address 2', 'customer', 'en', NULL, NULL),
(768, 'customer.address1', 'Tỉnh/Thành', 'customer', 'vi', NULL, NULL),
(769, 'customer.address1', 'Address 1', 'customer', 'en', NULL, NULL),
(770, 'customer.postcode', 'Mã bưu điện', 'customer', 'vi', NULL, NULL),
(771, 'customer.postcode', 'Post code', 'customer', 'en', NULL, NULL),
(772, 'customer.phone', 'Phone', 'customer', 'en', NULL, NULL),
(773, 'customer.phone', 'Điện thoại', 'customer', 'vi', NULL, NULL),
(774, 'customer.last_name_kana', 'Họ kana', 'customer', 'vi', NULL, NULL),
(775, 'customer.last_name_kana', 'Last name kana', 'customer', 'en', NULL, NULL),
(776, 'customer.first_name_kana', 'First name kana', 'customer', 'en', NULL, NULL),
(777, 'customer.first_name_kana', 'Tên Kana', 'customer', 'vi', NULL, NULL),
(778, 'customer.full_name', 'Full name', 'customer', 'en', NULL, NULL),
(779, 'customer.full_name', 'Tên đầy đủ', 'customer', 'vi', NULL, NULL),
(780, 'customer.name', 'Name', 'customer', 'en', NULL, NULL),
(781, 'customer.name', 'Tên', 'customer', 'vi', NULL, NULL),
(782, 'customer.midle_name', 'Tên đệm', 'customer', 'vi', NULL, NULL),
(783, 'customer.midle_name', 'Midle name', 'customer', 'en', NULL, NULL),
(784, 'customer.last_name', 'Họ', 'customer', 'vi', NULL, NULL),
(785, 'customer.last_name', 'Last name', 'customer', 'en', NULL, NULL),
(786, 'customer.first_name', 'Tên', 'customer', 'vi', NULL, NULL),
(787, 'customer.first_name', 'First name', 'customer', 'en', NULL, NULL),
(788, 'customer.email', 'Email', 'customer', 'vi', NULL, NULL),
(789, 'customer.email', 'Email', 'customer', 'en', NULL, NULL),
(790, 'customer.sex', 'Giới tính', 'customer', 'vi', NULL, NULL),
(791, 'customer.sex', 'Sex', 'customer', 'en', NULL, NULL),
(792, 'customer.sex_women', 'Women', 'customer', 'en', NULL, NULL),
(793, 'customer.sex_women', 'Nữ', 'customer', 'vi', NULL, NULL),
(794, 'customer.sex_other', 'Other', 'customer', 'en', NULL, NULL),
(795, 'customer.sex_other', 'Khác', 'customer', 'vi', NULL, NULL),
(796, 'customer.sex_men', 'Men', 'customer', 'en', NULL, NULL),
(797, 'customer.sex_men', 'Nam', 'customer', 'vi', NULL, NULL),
(798, 'customer.birthday', 'Ngày sinh', 'customer', 'vi', NULL, NULL),
(799, 'customer.birthday', 'Birthday', 'customer', 'en', NULL, NULL),
(800, 'customer.title_login', 'Login account', 'customer', 'en', NULL, NULL),
(801, 'customer.title_login', 'Đăng nhập', 'customer', 'vi', NULL, NULL),
(802, 'customer.my_profile', 'Tài khoản', 'customer', 'vi', NULL, NULL),
(803, 'customer.my_profile', 'My profile', 'customer', 'en', NULL, NULL),
(804, 'customer.status', 'Trạng thái', 'customer', 'vi', NULL, NULL),
(805, 'customer.status', 'Status', 'customer', 'en', NULL, NULL),
(806, 'customer.group', 'Nhóm', 'customer', 'en', NULL, NULL),
(807, 'customer.group', 'Group', 'customer', 'vi', NULL, NULL),
(808, 'customer.admin.add_new_title', 'Thêm mới khách hàng', 'customer.admin', 'vi', NULL, NULL),
(809, 'customer.admin.add_new_title', 'Add new customer', 'customer.admin', 'en', NULL, NULL),
(810, 'customer.admin.add_new_des', 'Thêm mới', 'customer.admin', 'vi', NULL, NULL),
(811, 'customer.admin.add_new_des', 'Add new', 'customer.admin', 'en', NULL, NULL),
(812, 'customer.admin.provider', 'Provider', 'customer.admin', 'vi', NULL, NULL),
(813, 'customer.admin.provider', 'Provider', 'customer.admin', 'en', NULL, NULL),
(814, 'customer.admin.field', 'Trường dữ liệu', 'customer.admin', 'vi', NULL, NULL),
(815, 'customer.admin.field', 'Field data', 'customer.admin', 'en', NULL, NULL),
(816, 'customer.admin.value', 'Giá trị', 'customer.admin', 'vi', NULL, NULL),
(817, 'customer.admin.value', 'Value', 'customer.admin', 'en', NULL, NULL),
(818, 'customer.admin.required', 'Bắt buộc', 'customer.admin', 'vi', NULL, NULL),
(819, 'customer.admin.required', 'Required', 'customer.admin', 'en', NULL, NULL),
(820, 'customer.admin.keep_password', 'Giữ mật khẩu', 'customer.admin', 'vi', NULL, NULL),
(821, 'customer.admin.keep_password', 'Keep password', 'customer.admin', 'en', NULL, NULL),
(822, 'customer.admin.list', 'Danh sách khách hàng', 'customer.admin', 'vi', NULL, NULL),
(823, 'customer.admin.list', 'Customer list', 'customer.admin', 'en', NULL, NULL),
(824, 'customer.config_manager.title', ' Config customer', 'customer.admin', 'en', NULL, NULL),
(825, 'customer.config_manager.field', 'Field config', 'customer.admin', 'en', NULL, NULL),
(826, 'customer.config_manager.value', 'Value', 'customer.admin', 'en', NULL, NULL),
(827, 'customer.config_manager.lastname', 'Use last name', 'customer.admin', 'en', NULL, NULL),
(828, 'customer.config_manager.name_kana', 'Use name KANA', 'customer.admin', 'en', NULL, NULL),
(829, 'customer.config_manager.firstname_kana', 'Use first name KANA', 'customer.admin', 'en', NULL, NULL),
(830, 'customer.config_manager.lastname_kana', 'Use last name KANA', 'customer.admin', 'en', NULL, NULL),
(831, 'customer.config_manager.address1', 'Use ADDRESS 1', 'customer.admin', 'en', NULL, NULL),
(832, 'customer.config_manager.address2', 'Use ADDRESS 2', 'customer.admin', 'en', NULL, NULL),
(833, 'customer.config_manager.address3', 'Use ADDRESS 3', 'customer.admin', 'en', NULL, NULL),
(834, 'customer.config_manager.company', 'Use COMPANY', 'customer.admin', 'en', NULL, NULL),
(835, 'customer.config_manager.postcode', 'Use POSTCODE', 'customer.admin', 'en', NULL, NULL),
(836, 'customer.config_manager.country', 'Use COUNTRY', 'customer.admin', 'en', NULL, NULL),
(837, 'customer.config_manager.group', 'Use GROUP', 'customer.admin', 'en', NULL, NULL),
(838, 'customer.config_manager.birthday', 'Use BIRTHDAY', 'customer.admin', 'en', NULL, NULL),
(839, 'customer.config_manager.sex', 'Use SEX', 'customer.admin', 'en', NULL, NULL),
(840, 'customer.config_manager.phone', 'Use PHONE', 'customer.admin', 'en', NULL, NULL),
(841, 'customer.config_manager.reqired', 'Required', 'customer.admin', 'en', NULL, NULL),
(842, 'customer.config_manager.title', ' Cấu hình khách hàng', 'customer.admin', 'vi', NULL, NULL),
(843, 'customer.config_manager.lastname', 'Sử dụng HỌ', 'customer.admin', 'vi', NULL, NULL),
(844, 'customer.config_manager.name_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi', NULL, NULL),
(845, 'customer.config_manager.firstname_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi', NULL, NULL),
(846, 'customer.config_manager.lasttname_kana', 'Sử dụng họ KANA', 'customer.admin', 'vi', NULL, NULL),
(847, 'customer.config_manager.address1', 'Sử dụng Tỉnh/Thành', 'customer.admin', 'vi', NULL, NULL),
(848, 'customer.config_manager.address2', 'Sử dụng Quận/Huyện', 'customer.admin', 'vi', NULL, NULL),
(849, 'customer.config_manager.address3', 'Địa chỉ nhà', 'customer.admin', 'vi', NULL, NULL),
(850, 'customer.config_manager.company', 'Sử dụng Công Ty', 'customer.admin', 'vi', NULL, NULL),
(851, 'customer.config_manager.postcode', 'Sử dụng Mã bưu chính', 'customer.admin', 'vi', NULL, NULL),
(852, 'customer.config_manager.country', 'Sử dụng Quốc Gia', 'customer.admin', 'vi', NULL, NULL),
(853, 'customer.config_manager.group', 'Sử dụng Nhóm', 'customer.admin', 'vi', NULL, NULL),
(854, 'customer.config_manager.birthday', 'Sử dụng NGÀY SINH', 'customer.admin', 'vi', NULL, NULL),
(855, 'customer.config_manager.sex', 'Sử dụng GIỚI TÍNH', 'customer.admin', 'vi', NULL, NULL),
(856, 'customer.config_manager.phone', 'Gunakan NOMOR TELEPON', 'customer.admin', 'vi', NULL, NULL),
(857, 'customer.config_manager.required', 'Wajib', 'customer.admin', 'vi', NULL, NULL),
(858, 'order.order_status', 'Status pesanan', 'order', 'vi', NULL, NULL),
(859, 'order.order_status', 'Order status', 'order', 'en', NULL, NULL),
(860, 'order.shipping_status', 'Status pengiriman', 'order', 'vi', NULL, NULL),
(861, 'order.shipping_status', 'Shipping status', 'order', 'en', NULL, NULL),
(862, 'order.payment_status', 'Status pembayaran', 'order', 'vi', NULL, NULL),
(863, 'order.payment_status', 'Payment status', 'order', 'en', NULL, NULL),
(864, 'order.payment_method', 'Metode pembayaran', 'order', 'vi', NULL, NULL),
(865, 'order.payment_method', 'Payment method', 'order', 'en', NULL, NULL),
(866, 'order.shipping_method', 'Moda transportasi', 'order', 'vi', NULL, NULL),
(867, 'order.shipping_method', 'Shipping method', 'order', 'en', NULL, NULL),
(868, 'order.currency', 'Mata uang', 'order', 'vi', NULL, NULL),
(869, 'order.currency', 'Currency', 'order', 'en', NULL, NULL),
(870, 'order.exchange_rate', 'Nilai tukar', 'order', 'vi', NULL, NULL),
(871, 'order.exchange_rate', 'Exchange rate', 'order', 'en', NULL, NULL),
(872, 'order.totals.balance', 'Kiri', 'order', 'vi', NULL, NULL),
(873, 'order.totals.balance', 'Balance', 'order', 'en', NULL, NULL),
(874, 'order.date', 'Tanggal pemesanan', 'order', 'vi', NULL, NULL),
(875, 'order.date', 'Order date', 'order', 'en', NULL, NULL),
(876, 'order.qty', 'Jumlah', 'order', 'vi', NULL, NULL),
(877, 'order.qty', 'quantity', 'order', 'en', NULL, NULL),
(878, 'order.amount', 'Harga', 'order', 'vi', NULL, NULL),
(879, 'order.amount', 'Amount', 'order', 'en', NULL, NULL),
(880, 'order.id', 'Kode pesanan', 'order', 'vi', NULL, NULL),
(881, 'order.id', 'Order ID', 'order', 'en', NULL, NULL),
(882, 'order.date_export', 'Tanggal dibuat', 'order', 'vi', NULL, NULL),
(883, 'order.date_export', 'Date export', 'order', 'en', NULL, NULL),
(884, 'order.total', 'Total uang', 'order', 'vi', NULL, NULL),
(885, 'order.total', 'Total', 'order', 'en', NULL, NULL),
(886, 'order.sub_total', 'Uang barang', 'order', 'vi', NULL, NULL),
(887, 'order.sub_total', 'SubTotal', 'order', 'en', NULL, NULL),
(888, 'order.subtotal', 'Uang barang', 'order', 'vi', NULL, NULL),
(889, 'order.subtotal', 'SubTotal', 'order', 'en', NULL, NULL),
(890, 'order.tax', 'Pajak', 'order', 'vi', NULL, NULL),
(891, 'order.tax', 'Tax', 'order', 'en', NULL, NULL),
(892, 'order.shipping', 'Kapal', 'order', 'vi', NULL, NULL),
(893, 'order.shipping', 'Shipping', 'order', 'en', NULL, NULL),
(894, 'order.received', 'Menerima', 'order', 'vi', NULL, NULL),
(895, 'order.received', 'Received', 'order', 'en', NULL, NULL),
(896, 'order.discount', 'Diskon', 'order', 'vi', NULL, NULL),
(897, 'order.discount', 'Discount', 'order', 'en', NULL, NULL),
(898, 'order.other_fee', 'Biaya lainnya', 'order', 'vi', NULL, NULL),
(899, 'order.other_fee', 'Other fee', 'order', 'en', NULL, NULL),
(900, 'order.invoice', 'Bon', 'order', 'vi', NULL, NULL),
(901, 'order.invoice', 'Invoice', 'order', 'en', NULL, NULL),
(902, 'order.totals.total', 'Total uang', 'order', 'vi', NULL, NULL),
(903, 'order.totals.total', 'Total', 'order', 'en', NULL, NULL),
(904, 'order.totals.sub_total', 'Uang barang', 'order', 'vi', NULL, NULL),
(905, 'order.totals.sub_total', 'SubTotal', 'order', 'en', NULL, NULL),
(906, 'order.totals.subtotal', 'Uang barang', 'order', 'vi', NULL, NULL),
(907, 'order.totals.subtotal', 'SubTotal', 'order', 'en', NULL, NULL),
(908, 'order.totals.tax', 'Pajak', 'order', 'vi', NULL, NULL),
(909, 'order.totals.tax', 'Tax', 'order', 'en', NULL, NULL),
(910, 'order.totals.discount', 'Diskon', 'order', 'vi', NULL, NULL),
(911, 'order.totals.discount', 'Discount', 'order', 'en', NULL, NULL),
(912, 'order.totals.shipping', 'Total shipping', 'order', 'vi', NULL, NULL),
(913, 'order.totals.shipping', 'Shipping', 'order', 'en', NULL, NULL),
(914, 'order.totals.received', 'Menerima', 'order', 'vi', NULL, NULL),
(915, 'order.totals.received', 'Received', 'order', 'en', NULL, NULL),
(916, 'order.totals.other_fee', 'Biaya lainnya', 'order', 'vi', NULL, NULL),
(917, 'order.totals.other_fee', 'Other fee', 'order', 'en', NULL, NULL),
(918, 'order.detail', 'Detail', 'order', 'vi', NULL, NULL),
(919, 'order.detail', 'Order detail', 'order', 'en', NULL, NULL),
(920, 'order.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'order', 'en', NULL, NULL),
(921, 'order.phone_regex', 'Nomor telepon tidak diformat dengan benar. Panjang 8-14, hanya menggunakan angka 0-9 dan \"-\"', 'order', 'vi', NULL, NULL),
(922, 'order.country', 'Country', 'order', 'en', NULL, NULL),
(923, 'order.country', 'Negara', 'order', 'vi', NULL, NULL),
(924, 'order.company', 'Perserikatan', 'order', 'vi', NULL, NULL),
(925, 'order.company', 'Company', 'order', 'en', NULL, NULL),
(926, 'order.address3', 'Alamat rumah', 'order', 'vi', NULL, NULL),
(927, 'order.address3', 'Address 3', 'order', 'en', NULL, NULL),
(928, 'order.address2', 'Distrik', 'order', 'vi', NULL, NULL),
(929, 'order.address2', 'Address 2', 'order', 'en', NULL, NULL),
(930, 'order.address1', 'Provinsi/Kota', 'order', 'vi', NULL, NULL),
(931, 'order.address1', 'Address 1', 'order', 'en', NULL, NULL),
(932, 'order.address', 'Alamat', 'order', 'vi', NULL, NULL),
(933, 'order.address', 'Address', 'order', 'en', NULL, NULL),
(934, 'order.postcode', 'Kodepos', 'order', 'vi', NULL, NULL),
(935, 'order.postcode', 'Post code', 'order', 'en', NULL, NULL),
(936, 'order.phone', 'Phone', 'order', 'en', NULL, NULL),
(937, 'order.phone', 'Telepon', 'order', 'vi', NULL, NULL),
(938, 'order.last_name_kana', 'Keluarga Kana', 'order', 'vi', NULL, NULL),
(939, 'order.last_name_kana', 'Last name kana', 'order', 'en', NULL, NULL),
(940, 'order.first_name_kana', 'First name kana', 'order', 'en', NULL, NULL),
(941, 'order.first_name_kana', 'Nama depan', 'order', 'vi', NULL, NULL),
(942, 'order.full_name', 'Full name', 'order', 'en', NULL, NULL),
(943, 'order.full_name', 'Nama lengkap', 'order', 'vi', NULL, NULL),
(944, 'order.name', 'Name', 'order', 'en', NULL, NULL),
(945, 'order.name', 'Nama', 'order', 'vi', NULL, NULL),
(946, 'order.midle_name', 'Nama tengah', 'order', 'vi', NULL, NULL),
(947, 'order.midle_name', 'Midle name', 'order', 'en', NULL, NULL),
(948, 'order.last_name', 'Mereka', 'order', 'vi', NULL, NULL),
(949, 'order.last_name', 'Last name', 'order', 'en', NULL, NULL),
(950, 'order.first_name', 'Nama', 'order', 'vi', NULL, NULL),
(951, 'order.first_name', 'First name', 'order', 'en', NULL, NULL),
(952, 'order.email', 'Email', 'order', 'vi', NULL, NULL),
(953, 'order.email', 'Email', 'order', 'en', NULL, NULL),
(954, 'order.payment_country', 'Country', 'order', 'en', NULL, NULL),
(955, 'order.payment_country', 'Negara', 'order', 'vi', NULL, NULL),
(956, 'order.payment_company', 'Perserikatan', 'order', 'vi', NULL, NULL),
(957, 'order.payment_company', 'Company', 'order', 'en', NULL, NULL),
(958, 'order.payment_address3', 'Alamat rumah', 'order', 'vi', NULL, NULL),
(959, 'order.payment_address3', 'Address 3', 'order', 'en', NULL, NULL),
(960, 'order.payment_address2', 'Distrik', 'order', 'vi', NULL, NULL),
(961, 'order.payment_address2', 'Address 2', 'order', 'en', NULL, NULL),
(962, 'order.payment_address1', 'Provinsi/Kota', 'order', 'vi', NULL, NULL),
(963, 'order.payment_address1', 'Address 1', 'order', 'en', NULL, NULL),
(964, 'order.payment_address', 'Alamat', 'order', 'vi', NULL, NULL),
(965, 'order.payment_address', 'Address', 'order', 'en', NULL, NULL),
(966, 'order.payment_postcode', 'Kodepos', 'order', 'vi', NULL, NULL),
(967, 'order.payment_postcode', 'Post code', 'order', 'en', NULL, NULL),
(968, 'order.payment_phone', 'Phone', 'order', 'en', NULL, NULL),
(969, 'order.payment_phone', 'Telepon', 'order', 'vi', NULL, NULL),
(970, 'order.payment_last_name_kana', 'Nama akhir', 'order', 'vi', NULL, NULL),
(971, 'order.payment_last_name_kana', 'Last name kana', 'order', 'en', NULL, NULL),
(972, 'order.payment_first_name_kana', 'First name kana', 'order', 'en', NULL, NULL),
(973, 'order.payment_first_name_kana', 'Nama depan', 'order', 'vi', NULL, NULL),
(974, 'order.payment_full_name', 'Full name', 'order', 'en', NULL, NULL),
(975, 'order.payment_full_name', 'Nama lengkap', 'order', 'vi', NULL, NULL),
(976, 'order.payment_name', 'Name', 'order', 'en', NULL, NULL),
(977, 'order.payment_name', 'Nama', 'order', 'vi', NULL, NULL),
(978, 'order.payment_midle_name', 'Nama tengah', 'order', 'vi', NULL, NULL),
(979, 'order.payment_midle_name', 'Midle name', 'order', 'en', NULL, NULL),
(980, 'order.payment_last_name', 'Họ', 'order', 'vi', NULL, NULL),
(981, 'order.payment_last_name', 'Last name', 'order', 'en', NULL, NULL),
(982, 'order.payment_first_name', 'Nama', 'order', 'vi', NULL, NULL),
(983, 'order.payment_first_name', 'First name', 'order', 'en', NULL, NULL),
(984, 'order.payment_email', 'Email', 'order', 'vi', NULL, NULL),
(985, 'order.payment_email', 'Email', 'order', 'en', NULL, NULL),
(986, 'order.shipping_country', 'Country', 'order', 'en', NULL, NULL),
(987, 'order.shipping_country', 'Negara', 'order', 'vi', NULL, NULL),
(988, 'order.shipping_company', 'Perserikatan', 'order', 'vi', NULL, NULL),
(989, 'order.shipping_company', 'Company', 'order', 'en', NULL, NULL),
(990, 'order.shipping_address3', 'Alamat rumah', 'order', 'vi', NULL, NULL),
(991, 'order.shipping_address3', 'Address 3', 'order', 'en', NULL, NULL),
(992, 'order.shipping_address2', 'Distrik', 'order', 'vi', NULL, NULL),
(993, 'order.shipping_address2', 'Address 2', 'order', 'en', NULL, NULL),
(994, 'order.shipping_address1', 'Provinsi/Kota', 'order', 'vi', NULL, NULL),
(995, 'order.shipping_address1', 'Address 1', 'order', 'en', NULL, NULL),
(996, 'order.shipping_address', 'Alamat', 'order', 'vi', NULL, NULL),
(997, 'order.shipping_address', 'Address', 'order', 'en', NULL, NULL),
(998, 'order.shipping_postcode', 'Kodepos', 'order', 'vi', NULL, NULL),
(999, 'order.shipping_postcode', 'Post code', 'order', 'en', NULL, NULL),
(1000, 'order.shipping_phone', 'Phone', 'order', 'en', NULL, NULL),
(1001, 'order.shipping_phone', 'Telepon', 'order', 'vi', NULL, NULL),
(1002, 'order.shipping_last_name_kana', 'Nama akhir', 'order', 'vi', NULL, NULL),
(1003, 'order.shipping_last_name_kana', 'Last name kana', 'order', 'en', NULL, NULL),
(1004, 'order.shipping_first_name_kana', 'First name kana', 'order', 'en', NULL, NULL),
(1005, 'order.shipping_first_name_kana', 'Nama awal', 'order', 'vi', NULL, NULL),
(1006, 'order.shipping_full_name', 'Full name', 'order', 'en', NULL, NULL),
(1007, 'order.shipping_full_name', 'Nama lengkap', 'order', 'vi', NULL, NULL),
(1008, 'order.shipping_name', 'Name', 'order', 'en', NULL, NULL),
(1009, 'order.shipping_name', 'Nama', 'order', 'vi', NULL, NULL),
(1010, 'order.shipping_midle_name', 'Nama tengah', 'order', 'vi', NULL, NULL),
(1011, 'order.shipping_midle_name', 'Midle name', 'order', 'en', NULL, NULL),
(1012, 'order.shipping_last_name', 'Họ', 'order', 'vi', NULL, NULL),
(1013, 'order.shipping_last_name', 'Last name', 'order', 'en', NULL, NULL),
(1014, 'order.shipping_first_name', 'Nama', 'order', 'vi', NULL, NULL),
(1015, 'order.shipping_first_name', 'First name', 'order', 'en', NULL, NULL),
(1016, 'order.shipping_email', 'Email', 'order', 'vi', NULL, NULL),
(1017, 'order.shipping_email', 'Email', 'order', 'en', NULL, NULL),
(1018, 'order.sex', 'Jenis kelamin', 'order', 'vi', NULL, NULL),
(1019, 'order.sex', 'Sex', 'order', 'en', NULL, NULL),
(1020, 'order.sex_women', 'Women', 'order', 'en', NULL, NULL),
(1021, 'order.sex_women', 'Perempuan', 'order', 'vi', NULL, NULL),
(1022, 'order.sex_other', 'Other', 'order', 'en', NULL, NULL),
(1023, 'order.sex_other', 'Beda', 'order', 'vi', NULL, NULL),
(1024, 'order.sex_men', 'Men', 'order', 'en', NULL, NULL),
(1025, 'order.sex_men', 'Nam', 'order', 'vi', NULL, NULL),
(1026, 'order.birthday', 'Ngày sinh', 'order', 'vi', NULL, NULL),
(1027, 'order.birthday', 'Birthday', 'order', 'en', NULL, NULL),
(1028, 'order.status', 'Trạng thái đơn hàng', 'order', 'vi', NULL, NULL),
(1029, 'order.status', 'Order status', 'order', 'en', NULL, NULL),
(1030, 'order.order_detail', 'Chi tiết đơn hàng', 'order', 'vi', NULL, NULL),
(1031, 'order.order_detail', 'Order detail', 'order', 'en', NULL, NULL),
(1032, 'order.note', 'Note', 'order', 'en', NULL, NULL),
(1033, 'order.note', 'Ghi chú', 'order', 'vi', NULL, NULL),
(1034, 'order.order_note', 'Note', 'order', 'en', NULL, NULL),
(1035, 'order.order_note', 'Ghi chú', 'order', 'vi', NULL, NULL),
(1036, 'order.domain', 'Domain', 'order', 'en', NULL, NULL),
(1037, 'order.domain', 'Tên miền', 'order', 'vi', NULL, NULL),
(1038, 'order.admin.order_history', 'Order history', 'order.admin', 'en', NULL, NULL),
(1039, 'order.admin.history_staff', 'Staff', 'order.admin', 'en', NULL, NULL),
(1040, 'order.admin.history_content', 'Content', 'order.admin', 'en', NULL, NULL),
(1041, 'order.admin.history_time', 'Time', 'order.admin', 'en', NULL, NULL),
(1042, 'order.admin.order_history', 'Lịch sử đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1043, 'order.admin.history_staff', 'Nhân viên', 'order.admin', 'vi', NULL, NULL),
(1044, 'order.admin.history_content', 'Nội dung', 'order.admin', 'vi', NULL, NULL),
(1045, 'order.admin.history_time', 'Thời gian', 'order.admin', 'vi', NULL, NULL),
(1046, 'order.admin.title', 'Quản lý đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1047, 'order.admin.config_title', 'Cấu hình đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1048, 'order.admin.list', 'Danh sách đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1049, 'order.admin.payment_method', 'Phương thức thanh toán', 'order.admin', 'vi', NULL, NULL),
(1050, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'vi', NULL, NULL),
(1051, 'order.admin.currency', 'Tiền tệ', 'order.admin', 'vi', NULL, NULL),
(1052, 'order.admin.exchange_rate', 'Tỉ giá', 'order.admin', 'vi', NULL, NULL),
(1053, 'order.admin.order_new', 'Thêm mới', 'order.admin', 'vi', NULL, NULL),
(1054, 'order.admin.add_new', 'Thêm mới', 'order.admin', 'vi', NULL, NULL),
(1055, 'order.admin.add_new_title', 'Tạo đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1056, 'order.admin.add_new_des', 'Tạo mới một đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1057, 'order.admin.export_batch', 'Xuất', 'order.admin', 'vi', NULL, NULL),
(1058, 'order.admin.config_info', 'Cấu hình đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1059, 'order.admin.store', 'Cửa hàng', 'order.admin', 'vi', NULL, NULL),
(1060, 'order.admin.title', 'Order manager', 'order.admin', 'en', NULL, NULL),
(1061, 'order.admin.config_title', 'Config info order', 'order.admin', 'en', NULL, NULL),
(1062, 'order.admin.list', 'Order list', 'order.admin', 'en', NULL, NULL),
(1063, 'order.admin.payment_method', 'Payment method', 'order.admin', 'en', NULL, NULL),
(1064, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'en', NULL, NULL),
(1065, 'order.admin.currency', 'Currency', 'order.admin', 'en', NULL, NULL),
(1066, 'order.admin.exchange_rate', 'Exchange rate', 'order.admin', 'en', NULL, NULL),
(1067, 'order.admin.status', 'Status', 'order.admin', 'en', NULL, NULL),
(1068, 'order.admin.status', 'Trạng thái', 'order.admin', 'vi', NULL, NULL),
(1069, 'order.admin.created_at', 'Created at', 'order.admin', 'en', NULL, NULL),
(1070, 'order.admin.created_at', 'Tạo lúc', 'order.admin', 'vi', NULL, NULL),
(1071, 'order.admin.order_new', 'Add new', 'order.admin', 'en', NULL, NULL),
(1072, 'order.admin.add_new', 'Add new', 'order.admin', 'en', NULL, NULL),
(1073, 'order.admin.add_new_title', 'Add new order', 'order.admin', 'en', NULL, NULL),
(1074, 'order.admin.add_new_des', 'Create a new order', 'order.admin', 'en', NULL, NULL),
(1075, 'order.admin.export_batch', 'Export', 'order.admin', 'en', NULL, NULL),
(1076, 'order.admin.config_info', 'Config order', 'order.admin', 'en', NULL, NULL),
(1077, 'order.admin.store', 'Store', 'order.admin', 'en', NULL, NULL),
(1078, 'order.admin.search_order_status', 'Search order status', 'order.admin', 'en', NULL, NULL),
(1079, 'order.admin.search_order_status', 'Tìm trạng thái đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1080, 'order.admin.search_email', 'Search email', 'order.admin', 'en', NULL, NULL),
(1081, 'order.admin.search_email', 'Tìm email', 'order.admin', 'vi', NULL, NULL),
(1082, 'order.admin.search_id', 'Search id', 'order.admin', 'en', NULL, NULL),
(1083, 'order.admin.search_id', 'Tìm ID', 'order.admin', 'vi', NULL, NULL),
(1084, 'order.admin.select_product', 'Select product', 'order.admin', 'en', NULL, NULL),
(1085, 'order.admin.select_product', 'Chọn sản phẩm', 'order.admin', 'vi', NULL, NULL),
(1086, 'order.admin.product_buy_out_of_stock', 'Allow buy out of stock', 'order.admin', 'en', NULL, NULL),
(1087, 'order.admin.product_buy_out_of_stock', 'Cho phép mua hàng đã hết', 'order.admin', 'vi', NULL, NULL),
(1088, 'order.admin.shipping_off', 'Dont use shipping method', 'order.admin', 'en', NULL, NULL),
(1089, 'order.admin.shipping_off', 'Không sử dụng phương thức vận chuyển', 'order.admin', 'vi', NULL, NULL),
(1090, 'order.admin.payment_off', 'Dont use payment method', 'order.admin', 'en', NULL, NULL),
(1091, 'order.admin.payment_off', 'Không sử dụng phương thức thanh toán', 'order.admin', 'vi', NULL, NULL),
(1092, 'order.admin.product_preorder', 'Allow pre-order', 'order.admin', 'en', NULL, NULL),
(1093, 'order.admin.product_preorder', 'Cho phép đặt hàng trước', 'order.admin', 'vi', NULL, NULL),
(1094, 'order.admin.shop_allow_guest', 'Allow buy no need login', 'order.admin', 'en', NULL, NULL),
(1095, 'order.admin.shop_allow_guest', 'Cho phép mua không cần đăng nhập', 'order.admin', 'vi', NULL, NULL),
(1096, 'order.admin.select_customer', 'Select customer', 'order.admin', 'en', NULL, NULL),
(1097, 'order.admin.select_customer', 'Chọn khách hàng', 'order.admin', 'vi', NULL, NULL),
(1098, 'contact.name', 'Tên', 'contact', 'vi', NULL, NULL),
(1099, 'contact.name', 'Name', 'contact', 'en', NULL, NULL),
(1100, 'contact.email', 'Email', 'contact', 'vi', NULL, NULL),
(1101, 'contact.email', 'Email', 'contact', 'en', NULL, NULL),
(1102, 'contact.phone', 'Điện thoại', 'contact', 'vi', NULL, NULL),
(1103, 'contact.phone', 'Phone', 'contact', 'en', NULL, NULL),
(1104, 'contact.subject', 'Tiêu đề', 'contact', 'vi', NULL, NULL),
(1105, 'contact.subject', 'Subject', 'contact', 'en', NULL, NULL),
(1106, 'contact.content', 'Nội dung', 'contact', 'vi', NULL, NULL),
(1107, 'contact.content', 'content', 'contact', 'en', NULL, NULL),
(1108, 'contact.page_title', 'Liên hệ', 'contact', 'vi', NULL, NULL),
(1109, 'contact.page_title', 'Contact page', 'contact', 'en', NULL, NULL),
(1110, 'contact.thank_contact', 'Cảm ơn vì bạn đã liên hệ', 'contact', 'vi', NULL, NULL),
(1111, 'contact.thank_contact', 'Thank you for your contact', 'contact', 'en', NULL, NULL),
(1112, 'filter_sort.sort', 'Perintah', 'filter_sort', 'vi', NULL, NULL),
(1113, 'filter_sort.sort', 'Sort', 'filter_sort', 'en', NULL, NULL),
(1114, 'filter_sort.price_asc', 'Harga meningkat secara bertahap', 'filter_sort', 'vi', NULL, NULL),
(1115, 'filter_sort.price_asc', 'Price ascending', 'filter_sort', 'en', NULL, NULL),
(1116, 'filter_sort.price_desc', 'Harga', 'filter_sort', 'vi', NULL, NULL),
(1117, 'filter_sort.price_desc', 'Price descending', 'filter_sort', 'en', NULL, NULL),
(1118, 'filter_sort.sort_asc', 'Urutkan secara bertahap meningkat', 'filter_sort', 'vi', NULL, NULL),
(1119, 'filter_sort.sort_asc', 'Sort ascending', 'filter_sort', 'en', NULL, NULL),
(1120, 'filter_sort.sort_desc', 'Urutkan turun', 'filter_sort', 'vi', NULL, NULL),
(1121, 'filter_sort.sort_desc', 'Sort descending', 'filter_sort', 'en', NULL, NULL),
(1122, 'filter_sort.id_asc', 'Id keatas', 'filter_sort', 'vi', NULL, NULL),
(1123, 'filter_sort.id_asc', 'ID ascending', 'filter_sort', 'en', NULL, NULL),
(1124, 'filter_sort.id_desc', 'ID Turun', 'filter_sort', 'vi', NULL, NULL),
(1125, 'filter_sort.id_desc', 'ID descending', 'filter_sort', 'en', NULL, NULL),
(1126, 'filter_sort.name_desc', 'Nama dalam urutan z-a', 'filter_sort', 'vi', NULL, NULL),
(1127, 'filter_sort.name_desc', 'Name in z-a order', 'filter_sort', 'en', NULL, NULL),
(1128, 'filter_sort.name_asc', 'Nama dalam urutan a-z', 'filter_sort', 'vi', NULL, NULL),
(1129, 'filter_sort.name_asc', 'Name in a-z order', 'filter_sort', 'en', NULL, NULL),
(1130, 'filter_sort.first_name_desc', 'Nama dalam urutan z-a', 'filter_sort', 'vi', NULL, NULL),
(1131, 'filter_sort.first_name_desc', 'First name in z-a order', 'filter_sort', 'en', NULL, NULL),
(1132, 'filter_sort.first_name_asc', 'Nama dalam urutan a-z', 'filter_sort', 'vi', NULL, NULL),
(1133, 'filter_sort.first_name_asc', 'First name in a-z order', 'filter_sort', 'en', NULL, NULL),
(1134, 'filter_sort.last_name_desc', 'Nama belakang berada dalam urutan z-a.', 'filter_sort', 'vi', NULL, NULL),
(1135, 'filter_sort.last_name_desc', 'Last name in z-a order', 'filter_sort', 'en', NULL, NULL),
(1136, 'filter_sort.last_name_asc', 'Nama belakang dalam urutan a-z.', 'filter_sort', 'vi', NULL, NULL),
(1137, 'filter_sort.last_name_asc', 'Last name in a-z order', 'filter_sort', 'en', NULL, NULL),
(1138, 'filter_sort.title_desc', 'Judul dalam urutan z-a', 'filter_sort', 'vi', NULL, NULL),
(1139, 'filter_sort.title_desc', 'Title in z-a order', 'filter_sort', 'en', NULL, NULL),
(1140, 'filter_sort.title_asc', 'Judul dalam urutan a-z', 'filter_sort', 'vi', NULL, NULL),
(1141, 'filter_sort.title_asc', 'Title in a-z order', 'filter_sort', 'en', NULL, NULL),
(1142, 'filter_sort.sold_asc', 'Penjualan sedang meningkat.', 'filter_sort', 'vi', NULL, NULL),
(1143, 'filter_sort.sold_asc', 'Sold ascending', 'filter_sort', 'en', NULL, NULL),
(1144, 'filter_sort.sold_desc', 'Penjualan menurun.', 'filter_sort', 'vi', NULL, NULL),
(1145, 'filter_sort.sold_desc', 'Sold descending', 'filter_sort', 'en', NULL, NULL),
(1146, 'filter_sort.view_desc', 'Tampilan menurun', 'filter_sort', 'vi', NULL, NULL),
(1147, 'filter_sort.view_desc', 'View descending', 'filter_sort', 'en', NULL, NULL),
(1148, 'filter_sort.view_asc', 'Tampilan meningkat secara bertahap', 'filter_sort', 'vi', NULL, NULL),
(1149, 'filter_sort.view_asc', 'View ascending', 'filter_sort', 'en', NULL, NULL),
(1150, 'filter_sort.alpha_desc', ':alpha dalam urutan z-a', 'filter_sort', 'vi', NULL, NULL),
(1151, 'filter_sort.alpha_desc', ':alpha in z-a order', 'filter_sort', 'en', NULL, NULL),
(1152, 'filter_sort.alpha_asc', ':alpha dalam rangka a-z', 'filter_sort', 'vi', NULL, NULL),
(1153, 'filter_sort.alpha_asc', ':alpha in a-z order', 'filter_sort', 'en', NULL, NULL),
(1154, 'filter_sort.value_asc', ':value tăng dần', 'filter_sort', 'vi', NULL, NULL),
(1155, 'filter_sort.value_asc', ':value ascending', 'filter_sort', 'en', NULL, NULL),
(1156, 'filter_sort.value_desc', ':value giảm dần', 'filter_sort', 'vi', NULL, NULL),
(1157, 'filter_sort.value_desc', ':value descending', 'filter_sort', 'en', NULL, NULL),
(1158, 'subscribe.email', 'Email', 'subscribe', 'en', NULL, NULL),
(1159, 'subscribe.action', 'Subscribe', 'subscribe', 'en', NULL, NULL),
(1160, 'subscribe.title', 'Subscribe email', 'subscribe', 'en', NULL, NULL),
(1161, 'subscribe.subscribe_des', 'Get the most recent updates from us', 'subscribe', 'en', NULL, NULL),
(1162, 'subscribe.subscribe_email', 'Your email', 'subscribe', 'en', NULL, NULL),
(1163, 'subscribe.subscribe_success', 'Subscribe email successful!', 'subscribe', 'en', NULL, NULL),
(1164, 'subscribe.email', 'Email', 'subscribe', 'vi', NULL, NULL),
(1165, 'subscribe.action', 'Daftar', 'subscribe', 'vi', NULL, NULL),
(1166, 'subscribe.title', 'Berlangganan email', 'subscribe', 'vi', NULL, NULL),
(1167, 'subscribe.subscribe_des', 'Dapatkan pembaruan terbaru', 'subscribe', 'vi', NULL, NULL),
(1168, 'subscribe.subscribe_email', 'Email Anda', 'subscribe', 'vi', NULL, NULL),
(1169, 'subscribe.subscribe_success', 'Pendaftaran email yang sukses!', 'subscribe', 'vi', NULL, NULL),
(1170, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'vi', NULL, NULL),
(1171, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'en', NULL, NULL),
(1172, 'subscribe.admin.list', 'Daftar yang ditandatangani', 'subscribe.admin', 'vi', NULL, NULL),
(1173, 'subscribe.admin.list', 'Subscribe list', 'subscribe.admin', 'en', NULL, NULL),
(1174, 'subscribe.admin.status', 'Status', 'subscribe.admin', 'vi', NULL, NULL),
(1175, 'subscribe.admin.status', 'Status', 'subscribe.admin', 'en', NULL, NULL),
(1176, 'subscribe.admin.add_new_title', 'Menambahkan langganan', 'subscribe.admin', 'vi', NULL, NULL),
(1177, 'subscribe.admin.add_new_title', 'Add subscribe', 'subscribe.admin', 'en', NULL, NULL),
(1178, 'subscribe.admin.add_new_des', 'Menambahkan akun langganan', 'subscribe.admin', 'vi', NULL, NULL),
(1179, 'subscribe.admin.add_new_des', 'Add a new subscribe', 'subscribe.admin', 'en', NULL, NULL),
(1180, 'subscribe.admin.search_place', 'Search ID or email', 'subscribe.admin', 'en', NULL, NULL),
(1181, 'subscribe.admin.search_place', 'Menemukan ID atau email', 'subscribe.admin', 'vi', NULL, NULL),
(1182, 'about.page_title', 'About us', 'about', 'en', NULL, NULL),
(1183, 'about.page_title', 'Memperkenalkan', 'about', 'vi', NULL, NULL),
(1184, 'admin.user.setting', 'Setting', 'admin.user', 'en', NULL, NULL),
(1185, 'admin.user.setting', 'Pasang', 'admin.user', 'vi', NULL, NULL),
(1186, 'admin.user.logout', 'Logout', 'admin.user', 'en', NULL, NULL),
(1187, 'admin.user.logout', 'Keluar', 'admin.user', 'vi', NULL, NULL),
(1188, 'admin.user.username', 'User name', 'admin.user', 'en', NULL, NULL),
(1189, 'admin.user.username', 'Nama login', 'admin.user', 'vi', NULL, NULL),
(1190, 'admin.user.password', 'Password', 'admin.user', 'en', NULL, NULL),
(1191, 'admin.user.password', 'Kata sandi', 'admin.user', 'vi', NULL, NULL),
(1192, 'admin.user.remember_me', 'Remember', 'admin.user', 'en', NULL, NULL),
(1193, 'admin.user.remember_me', 'Ingat saya', 'admin.user', 'vi', NULL, NULL),
(1194, 'admin.user.login', 'Login', 'admin.user', 'en', NULL, NULL),
(1195, 'admin.user.login', 'Login', 'admin.user', 'vi', NULL, NULL),
(1196, 'admin.user.keep_password', 'Biarkan kosong jika Anda tidak ingin mengubah kata sandi Anda', 'admin.user', 'vi', NULL, NULL),
(1197, 'admin.user.select_roles', 'Memilih peran', 'admin.user', 'vi', NULL, NULL),
(1198, 'admin.user.select_permission', 'Pilih izin', 'admin.user', 'vi', NULL, NULL),
(1199, 'admin.user.add_permission', 'Menambahkan izin', 'admin.user', 'vi', NULL, NULL),
(1200, 'admin.user.select_store', 'Pilih toko', 'admin.user', 'vi', NULL, NULL),
(1201, 'admin.user.name', 'Nama lengkap', 'admin.user', 'vi', NULL, NULL),
(1202, 'admin.user.user_name', 'Username', 'admin.user', 'vi', NULL, NULL),
(1203, 'admin.user.email', 'Email', 'admin.user', 'vi', NULL, NULL),
(1204, 'admin.user.avatar', 'Avatar', 'admin.user', 'vi', NULL, NULL),
(1205, 'admin.user.roles', 'peranan', 'admin.user', 'vi', NULL, NULL),
(1206, 'admin.user.permission', 'Perizinan pengguna', 'admin.user', 'vi', NULL, NULL),
(1207, 'admin.user.created_at', 'Dibuat ', 'admin.user', 'vi', NULL, NULL),
(1208, 'admin.user.updated_at', 'Pemutakhiran', 'admin.user', 'vi', NULL, NULL),
(1209, 'admin.user.member_since', 'Bergabung dari', 'admin.user', 'vi', NULL, NULL),
(1210, 'admin.user.password_confirmation', 'Konfirmasi kata sandi', 'admin.user', 'vi', NULL, NULL),
(1211, 'admin.user.username_validate', 'Gunakan hanya karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" dan \".@_\" ', 'admin.user', 'vi', NULL, NULL),
(1212, 'admin.user.title', 'Mengelola pengguna', 'admin.user', 'vi', NULL, NULL),
(1213, 'admin.user.list', 'Daftar pengguna', 'admin.user', 'vi', NULL, NULL),
(1214, 'admin.user.add_new', 'Tambahkan baru', 'admin.user', 'vi', NULL, NULL),
(1215, 'admin.user.add_new_title', 'Membuat pengguna', 'admin.user', 'vi', NULL, NULL),
(1216, 'admin.user.add_new_des', 'Membuat pengguna baru', 'admin.user', 'vi', NULL, NULL),
(1217, 'admin.user.name', 'Full name', 'admin.user', 'en', NULL, NULL),
(1218, 'admin.user.user_name', 'User name', 'admin.user', 'en', NULL, NULL),
(1219, 'admin.user.email', 'Email', 'admin.user', 'en', NULL, NULL),
(1220, 'admin.user.avatar', 'Avatar', 'admin.user', 'en', NULL, NULL),
(1221, 'admin.user.roles', 'Roles', 'admin.user', 'en', NULL, NULL),
(1222, 'admin.user.permission', 'Permission', 'admin.user', 'en', NULL, NULL),
(1223, 'admin.user.created_at', 'Created at', 'admin.user', 'en', NULL, NULL),
(1224, 'admin.user.updated_at', 'Updated at', 'admin.user', 'en', NULL, NULL),
(1225, 'admin.user.member_since', 'Member since', 'admin.user', 'en', NULL, NULL),
(1226, 'admin.user.password_confirmation', 'Confirmation', 'admin.user', 'en', NULL, NULL),
(1227, 'admin.user.username_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'en', NULL, NULL),
(1228, 'admin.user.keep_password', 'Leave blank if you dont want to change the password', 'admin.user', 'en', NULL, NULL),
(1229, 'admin.user.select_roles', 'Select roles', 'admin.user', 'en', NULL, NULL),
(1230, 'admin.user.select_permission', 'Select permission', 'admin.user', 'en', NULL, NULL),
(1231, 'admin.user.add_permission', 'Add permission', 'admin.user', 'en', NULL, NULL),
(1232, 'admin.user.select_store', 'Select store', 'admin.user', 'en', NULL, NULL),
(1233, 'admin.user.add_new', 'Add new', 'admin.user', 'en', NULL, NULL),
(1234, 'admin.user.add_new_title', 'Add new user', 'admin.user', 'en', NULL, NULL),
(1235, 'admin.user.add_new_des', 'Create a new user', 'admin.user', 'en', NULL, NULL),
(1236, 'admin.user.list', 'User list', 'admin.user', 'en', NULL, NULL),
(1237, 'admin.user.title', 'User manager', 'admin.user', 'en', NULL, NULL),
(1238, 'admin.user.search_place', 'Search name', 'admin.user', 'en', NULL, NULL),
(1239, 'admin.user.search_place', 'Menemukan nama', 'admin.user', 'vi', NULL, NULL),
(1240, 'admin.menu_titles.order_manager', 'Manajemen pesanan', 'admin.menu_titles', 'vi', NULL, NULL),
(1241, 'admin.menu_titles.order_manager', 'Order manager', 'admin.menu_titles', 'en', NULL, NULL),
(1242, 'admin.menu_titles.catalog_mamager', 'Produk & kategori', 'admin.menu_titles', 'vi', NULL, NULL),
(1243, 'admin.menu_titles.catalog_mamager', 'Product & category', 'admin.menu_titles', 'en', NULL, NULL),
(1244, 'admin.menu_titles.customer_manager', 'Manajemen pelanggan', 'admin.menu_titles', 'vi', NULL, NULL),
(1245, 'admin.menu_titles.customer_manager', 'Customer manager', 'admin.menu_titles', 'en', NULL, NULL),
(1246, 'admin.menu_titles.admin_global', 'Manajemen umum', 'admin.menu_titles', 'vi', NULL, NULL),
(1247, 'admin.menu_titles.admin_global', 'Admin global', 'admin.menu_titles', 'en', NULL, NULL),
(1248, 'admin.menu_titles.ADMIN_SHOP', 'Toko', 'admin.menu_titles', 'vi', NULL, NULL),
(1249, 'admin.menu_titles.ADMIN_SHOP', 'Admin shop', 'admin.menu_titles', 'en', NULL, NULL),
(1250, 'admin.menu_titles.ADMIN_CONTENT', 'Puas', 'admin.menu_titles', 'vi', NULL, NULL),
(1251, 'admin.menu_titles.ADMIN_CONTENT', 'Content', 'admin.menu_titles', 'en', NULL, NULL),
(1252, 'admin.menu_titles.ADMIN_EXTENSION', 'Ekstensi', 'admin.menu_titles', 'vi', NULL, NULL),
(1253, 'admin.menu_titles.ADMIN_EXTENSION', 'Extension', 'admin.menu_titles', 'en', NULL, NULL),
(1254, 'admin.menu_titles.ADMIN_SYSTEM', 'Konfigurasi sistem', 'admin.menu_titles', 'vi', NULL, NULL),
(1255, 'admin.menu_titles.ADMIN_SYSTEM', 'System config', 'admin.menu_titles', 'en', NULL, NULL),
(1256, 'admin.menu_titles.page_manager', 'Mengelola halaman', 'admin.menu_titles', 'vi', NULL, NULL),
(1257, 'admin.menu_titles.page_manager', 'Page manager', 'admin.menu_titles', 'en', NULL, NULL),
(1258, 'admin.menu_titles.order', 'Pesanan', 'admin.menu_titles', 'vi', NULL, NULL),
(1259, 'admin.menu_titles.order', 'Order', 'admin.menu_titles', 'en', NULL, NULL),
(1260, 'admin.menu_titles.order_status', 'Status pesanan', 'admin.menu_titles', 'vi', NULL, NULL),
(1261, 'admin.menu_titles.order_status', 'Order status', 'admin.menu_titles', 'en', NULL, NULL),
(1262, 'admin.menu_titles.payment_status', 'Status pembayaran', 'admin.menu_titles', 'vi', NULL, NULL),
(1263, 'admin.menu_titles.payment_status', 'Payment status', 'admin.menu_titles', 'en', NULL, NULL),
(1264, 'admin.menu_titles.shipping_status', 'Status pengiriman', 'admin.menu_titles', 'vi', NULL, NULL),
(1265, 'admin.menu_titles.shipping_status', 'Shipping status', 'admin.menu_titles', 'en', NULL, NULL),
(1266, 'admin.menu_titles.product', 'Hasil', 'admin.menu_titles', 'vi', NULL, NULL),
(1267, 'admin.menu_titles.product', 'Products', 'admin.menu_titles', 'en', NULL, NULL),
(1268, 'admin.menu_titles.category', 'Direktori', 'admin.menu_titles', 'vi', NULL, NULL),
(1269, 'admin.menu_titles.category', 'Categories', 'admin.menu_titles', 'en', NULL, NULL),
(1270, 'admin.menu_titles.supplier', 'Pemasok', 'admin.menu_titles', 'vi', NULL, NULL),
(1271, 'admin.menu_titles.supplier', 'Suppliers', 'admin.menu_titles', 'en', NULL, NULL),
(1272, 'admin.menu_titles.brand', 'Merek', 'admin.menu_titles', 'vi', NULL, NULL),
(1273, 'admin.menu_titles.brand', 'Brands', 'admin.menu_titles', 'en', NULL, NULL),
(1274, 'admin.menu_titles.attribute_group', 'Grup properti', 'admin.menu_titles', 'vi', NULL, NULL),
(1275, 'admin.menu_titles.attribute_group', 'Attribute group', 'admin.menu_titles', 'en', NULL, NULL),
(1276, 'admin.menu_titles.customer', 'Pelanggan', 'admin.menu_titles', 'vi', NULL, NULL),
(1277, 'admin.menu_titles.customer', 'Customers', 'admin.menu_titles', 'en', NULL, NULL),
(1278, 'admin.menu_titles.subscribe', 'Daftar', 'admin.menu_titles', 'vi', NULL, NULL),
(1279, 'admin.menu_titles.subscribe', 'Subscribe', 'admin.menu_titles', 'en', NULL, NULL),
(1280, 'admin.menu_titles.block_content', 'Khối nội dung', 'admin.menu_titles', 'vi', NULL, NULL),
(1281, 'admin.menu_titles.block_content', 'Block content', 'admin.menu_titles', 'en', NULL, NULL),
(1282, 'admin.menu_titles.block_link', 'Quản lý liên kết', 'admin.menu_titles', 'vi', NULL, NULL),
(1283, 'admin.menu_titles.block_link', 'Link manager', 'admin.menu_titles', 'en', NULL, NULL),
(1284, 'admin.menu_titles.modify_layout', 'Chỉnh sửa layout', 'admin.menu_titles', 'vi', NULL, NULL),
(1285, 'admin.menu_titles.modify_layout', 'Modify layout', 'admin.menu_titles', 'en', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(1286, 'admin.menu_titles.template_layout', 'Quản lý giao diện', 'admin.menu_titles', 'vi', NULL, NULL),
(1287, 'admin.menu_titles.template_layout', 'Template manager', 'admin.menu_titles', 'en', NULL, NULL),
(1288, 'admin.menu_titles.template', 'Giao diện', 'admin.menu_titles', 'vi', NULL, NULL),
(1289, 'admin.menu_titles.template', 'Template', 'admin.menu_titles', 'en', NULL, NULL),
(1290, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'vi', NULL, NULL),
(1291, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'en', NULL, NULL),
(1292, 'admin.menu_titles.store_info', 'Thông tin cửa hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1293, 'admin.menu_titles.store_info', 'Store infomation', 'admin.menu_titles', 'en', NULL, NULL),
(1294, 'admin.menu_titles.setting_system', 'Thiết lập hệ thống', 'admin.menu_titles', 'vi', NULL, NULL),
(1295, 'admin.menu_titles.setting_system', 'Setting system', 'admin.menu_titles', 'en', NULL, NULL),
(1296, 'admin.menu_titles.error_log', 'Lỗi & Nhật ký', 'admin.menu_titles', 'vi', NULL, NULL),
(1297, 'admin.menu_titles.error_log', 'Error & Logs', 'admin.menu_titles', 'en', NULL, NULL),
(1298, 'admin.menu_titles.email_template', 'Mẫu email', 'admin.menu_titles', 'vi', NULL, NULL),
(1299, 'admin.menu_titles.email_template', 'Email template', 'admin.menu_titles', 'en', NULL, NULL),
(1300, 'admin.menu_titles.language', 'Ngôn ngữ', 'admin.menu_titles', 'vi', NULL, NULL),
(1301, 'admin.menu_titles.language', 'Languages', 'admin.menu_titles', 'en', NULL, NULL),
(1302, 'admin.menu_titles.language_manager', 'Quản lý ngôn ngữ', 'admin.menu_titles', 'vi', NULL, NULL),
(1303, 'admin.menu_titles.language_manager', 'Language manager', 'admin.menu_titles', 'en', NULL, NULL),
(1304, 'admin.menu_titles.currency', 'Tiền tệ', 'admin.menu_titles', 'vi', NULL, NULL),
(1305, 'admin.menu_titles.currency', 'Currencies', 'admin.menu_titles', 'en', NULL, NULL),
(1306, 'admin.menu_titles.banner', 'Banner', 'admin.menu_titles', 'vi', NULL, NULL),
(1307, 'admin.menu_titles.banner', 'Banners', 'admin.menu_titles', 'en', NULL, NULL),
(1308, 'admin.menu_titles.backup_restore', 'Sao lưu & Phục hồi', 'admin.menu_titles', 'vi', NULL, NULL),
(1309, 'admin.menu_titles.backup_restore', 'Backup & Restore', 'admin.menu_titles', 'en', NULL, NULL),
(1310, 'admin.menu_titles.plugin', 'Tiện ích', 'admin.menu_titles', 'vi', NULL, NULL),
(1311, 'admin.menu_titles.plugin', 'Plugins', 'admin.menu_titles', 'en', NULL, NULL),
(1312, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'vi', NULL, NULL),
(1313, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'en', NULL, NULL),
(1314, 'admin.menu_titles.report_manager', 'Quản lý báo cáo', 'admin.menu_titles', 'vi', NULL, NULL),
(1315, 'admin.menu_titles.report_manager', 'Report manager', 'admin.menu_titles', 'en', NULL, NULL),
(1316, 'admin.menu_titles.user_permission', 'Quyền hạn người dùng', 'admin.menu_titles', 'vi', NULL, NULL),
(1317, 'admin.menu_titles.user_permission', 'User permission', 'admin.menu_titles', 'en', NULL, NULL),
(1318, 'admin.menu_titles.css', 'Chỉnh sửa CSS', 'admin.menu_titles', 'vi', NULL, NULL),
(1319, 'admin.menu_titles.css', 'CSS style', 'admin.menu_titles', 'en', NULL, NULL),
(1320, 'admin.menu_titles.seo_manager', 'Quản lý SEO', 'admin.menu_titles', 'vi', NULL, NULL),
(1321, 'admin.menu_titles.seo_manager', 'SEO manager', 'admin.menu_titles', 'en', NULL, NULL),
(1322, 'admin.menu_titles.users', 'Người dùng', 'admin.menu_titles', 'vi', NULL, NULL),
(1323, 'admin.menu_titles.users', 'Users', 'admin.menu_titles', 'en', NULL, NULL),
(1324, 'admin.menu_titles.roles', 'Nhóm quyền', 'admin.menu_titles', 'vi', NULL, NULL),
(1325, 'admin.menu_titles.roles', 'Roles', 'admin.menu_titles', 'en', NULL, NULL),
(1326, 'admin.menu_titles.permission', 'Quyền hạn', 'admin.menu_titles', 'vi', NULL, NULL),
(1327, 'admin.menu_titles.permission', 'Permission', 'admin.menu_titles', 'en', NULL, NULL),
(1328, 'admin.menu_titles.operation_log', 'Nhật ký truy cập', 'admin.menu_titles', 'vi', NULL, NULL),
(1329, 'admin.menu_titles.operation_log', 'Log access', 'admin.menu_titles', 'en', NULL, NULL),
(1330, 'admin.menu_titles.seo_config', 'Cấu hình SEO', 'admin.menu_titles', 'vi', NULL, NULL),
(1331, 'admin.menu_titles.seo_config', 'SEO config', 'admin.menu_titles', 'en', NULL, NULL),
(1332, 'admin.menu_titles.news', 'Tin tức', 'admin.menu_titles', 'vi', NULL, NULL),
(1333, 'admin.menu_titles.news', 'News', 'admin.menu_titles', 'en', NULL, NULL),
(1334, 'admin.menu_titles.env_config', 'Cấu hình môi trường', 'admin.menu_titles', 'vi', NULL, NULL),
(1335, 'admin.menu_titles.env_config', 'Environment Config', 'admin.menu_titles', 'en', NULL, NULL),
(1336, 'admin.menu_titles.report_product', 'Báo cáo sản phẩm', 'admin.menu_titles', 'vi', NULL, NULL),
(1337, 'admin.menu_titles.report_product', 'Report product', 'admin.menu_titles', 'en', NULL, NULL),
(1338, 'admin.menu_titles.store_config', 'Cấu hình cửa hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1339, 'admin.menu_titles.store_config', 'Store config', 'admin.menu_titles', 'en', NULL, NULL),
(1340, 'admin.menu_titles.cache_manager', 'Bộ nhớ đệm', 'admin.menu_titles', 'vi', NULL, NULL),
(1341, 'admin.menu_titles.cache_manager', 'Cache', 'admin.menu_titles', 'en', NULL, NULL),
(1342, 'admin.menu_titles.api_manager', 'Quản lý API', 'admin.menu_titles', 'vi', NULL, NULL),
(1343, 'admin.menu_titles.api_manager', 'API manager', 'admin.menu_titles', 'en', NULL, NULL),
(1344, 'admin.menu_titles.store_maintain', 'Bảo trì website', 'admin.menu_titles', 'vi', NULL, NULL),
(1345, 'admin.menu_titles.store_maintain', 'Website maintain', 'admin.menu_titles', 'en', NULL, NULL),
(1346, 'admin.menu_titles.tax', 'Thuế', 'admin.menu_titles', 'vi', NULL, NULL),
(1347, 'admin.menu_titles.tax', 'Tax', 'admin.menu_titles', 'en', NULL, NULL),
(1348, 'admin.menu_titles.weight', 'Khối lượng', 'admin.menu_titles', 'vi', NULL, NULL),
(1349, 'admin.menu_titles.weight', 'Weight', 'admin.menu_titles', 'en', NULL, NULL),
(1350, 'admin.menu_titles.length', 'Kích thước', 'admin.menu_titles', 'vi', NULL, NULL),
(1351, 'admin.menu_titles.length', 'Length', 'admin.menu_titles', 'en', NULL, NULL),
(1352, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Thiết lập cửa hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1353, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Shop setting', 'admin.menu_titles', 'en', NULL, NULL),
(1354, 'admin.menu_titles.api_config', 'Cấu hình API', 'admin.menu_titles', 'vi', NULL, NULL),
(1355, 'admin.menu_titles.api_config', 'API config', 'admin.menu_titles', 'en', NULL, NULL),
(1356, 'admin.menu_titles.layout', 'Bố cục', 'admin.menu_titles', 'vi', NULL, NULL),
(1357, 'admin.menu_titles.layout', 'Layout', 'admin.menu_titles', 'en', NULL, NULL),
(1358, 'admin.menu_titles.custom_field', 'Tùy chỉnh dữ liệu', 'admin.menu_titles', 'vi', NULL, NULL),
(1359, 'admin.menu_titles.custom_field', 'Custom field data', 'admin.menu_titles', 'en', NULL, NULL),
(1360, 'admin.menu_titles.security', 'Bảo mật', 'admin.menu_titles', 'vi', NULL, NULL),
(1361, 'admin.menu_titles.security', 'Security', 'admin.menu_titles', 'en', NULL, NULL),
(1362, 'admin.menu_titles.localization', 'Địa phương hóa', 'admin.menu_titles', 'vi', NULL, NULL),
(1363, 'admin.menu_titles.localization', 'Localization', 'admin.menu_titles', 'en', NULL, NULL),
(1364, 'admin.menu_titles.localisation', 'Địa phương hóa', 'admin.menu_titles', 'vi', NULL, NULL),
(1365, 'admin.menu_titles.localisation', 'Localisation', 'admin.menu_titles', 'en', NULL, NULL),
(1366, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'vi', NULL, NULL),
(1367, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'en', NULL, NULL),
(1368, 'admin.menu_titles.config_store_default', 'Konfigurasi default', 'admin.menu_titles', 'vi', NULL, NULL),
(1369, 'admin.menu_titles.config_store_default', 'Config default', 'admin.menu_titles', 'en', NULL, NULL),
(1370, 'admin.login_success', 'Login success!', 'admin', 'en', NULL, NULL),
(1371, 'admin.login_success', 'Login yang berhasil', 'admin', 'vi', NULL, NULL),
(1372, 'admin.access_denied', 'Access denied!', 'admin', 'en', NULL, NULL),
(1373, 'admin.access_denied', 'Akses ditolak', 'admin', 'vi', NULL, NULL),
(1374, 'admin.max_c', 'Maximum :max characters', 'admin', 'en', NULL, NULL),
(1375, 'admin.min_c', 'Minimum :min characters', 'admin', 'en', NULL, NULL),
(1376, 'admin.min_v', 'Greater than :value', 'admin', 'en', NULL, NULL),
(1377, 'admin.max_v', 'Less than :value', 'admin', 'en', NULL, NULL),
(1378, 'admin.max_c', 'Max:max karakter', 'admin', 'vi', NULL, NULL),
(1379, 'admin.min_c', 'Karakter min', 'admin', 'vi', NULL, NULL),
(1380, 'admin.min_v', 'Lebih besar :value', 'admin', 'vi', NULL, NULL),
(1381, 'admin.max_v', 'Lebih kecil :value', 'admin', 'vi', NULL, NULL),
(1382, 'admin.data_not_found_detail', 'Data yang tidak ada :msg', 'admin', 'vi', NULL, NULL),
(1383, 'admin.data_not_found_detail', 'Data not found :msg', 'admin', 'en', NULL, NULL),
(1384, 'admin.login_successful', 'Login yang berhasil', 'admin', 'vi', NULL, NULL),
(1385, 'admin.login_successful', 'Login success', 'admin', 'en', NULL, NULL),
(1386, 'admin.add_new', 'Add new', 'admin', 'en', NULL, NULL),
(1387, 'admin.add_new', 'Tambahkan baru', 'admin', 'vi', NULL, NULL),
(1388, 'admin.not_empty', 'Not empty', 'admin', 'en', NULL, NULL),
(1389, 'admin.not_empty', 'Jangan kosong.', 'admin', 'vi', NULL, NULL),
(1390, 'admin.only_numeric', 'Enly numeric', 'admin', 'en', NULL, NULL),
(1391, 'admin.only_numeric', 'Gunakan angka saja', 'admin', 'vi', NULL, NULL),
(1392, 'admin.store_swicth_success', 'Switch store success!', 'admin', 'en', NULL, NULL),
(1393, 'admin.store_swicth_success', 'Transfer toko yang sukses!', 'admin', 'vi', NULL, NULL),
(1394, 'admin.dashboard', 'Dashboard', 'admin', 'en', NULL, NULL),
(1395, 'admin.dashboard', 'Sintesis', 'admin', 'vi', NULL, NULL),
(1396, 'admin.data_not_found', 'Data not found!', 'admin', 'en', NULL, NULL),
(1397, 'admin.data_not_found', 'Tidak ada data!', 'admin', 'vi', NULL, NULL),
(1398, 'admin.data_not_found_msg', 'The data you are accessing does not exist.', 'admin', 'en', NULL, NULL),
(1399, 'admin.data_not_found_msg', 'Data yang Anda akses tidak ada.', 'admin', 'vi', NULL, NULL),
(1400, 'admin.deny', 'Access denied!', 'admin', 'en', NULL, NULL),
(1401, 'admin.deny', 'Akses menolak!', 'admin', 'vi', NULL, NULL),
(1402, 'admin.setting_account', 'Setting account', 'admin', 'en', NULL, NULL),
(1403, 'admin.setting_account', 'Menyiapkan akun', 'admin', 'vi', NULL, NULL),
(1404, 'admin.failed', 'Auth failed', 'admin', 'en', NULL, NULL),
(1405, 'admin.failed', 'Gagal', 'admin', 'vi', NULL, NULL),
(1406, 'admin.maintain_enable', 'Active ', 'admin', 'en', NULL, NULL),
(1407, 'admin.maintain_enable', 'Aktivitas', 'admin', 'vi', NULL, NULL),
(1408, 'admin.maintain_disable', 'Maintenance ', 'admin', 'en', NULL, NULL),
(1409, 'admin.maintain_disable', 'Pemeliharaan', 'admin', 'vi', NULL, NULL),
(1410, 'admin.position_all', 'All pages', 'admin', 'en', NULL, NULL),
(1411, 'admin.position_all', 'Semua halaman', 'admin', 'vi', NULL, NULL),
(1412, 'admin.theme', 'Theme', 'admin', 'en', NULL, NULL),
(1413, 'admin.theme', 'Contoh', 'admin', 'vi', NULL, NULL),
(1414, 'admin.select_store', 'Select store', 'admin', 'en', NULL, NULL),
(1415, 'admin.select_store', 'Pilih toko', 'admin', 'vi', NULL, NULL),
(1416, 'admin.welcome_dasdboard', 'Welcome to admin system!', 'admin', 'en', NULL, NULL),
(1417, 'admin.welcome_dasdboard', 'Selamat datang di sistem!', 'admin', 'vi', NULL, NULL),
(1418, 'admin.deny_msg', 'You need permission to access the system!', 'admin', 'en', NULL, NULL),
(1419, 'admin.deny_content', 'Permission denied!', 'admin', 'en', NULL, NULL),
(1420, 'admin.deny_msg', 'Anda memerlukan lebih banyak izin untuk mengakses sistem!', 'admin', 'vi', NULL, NULL),
(1421, 'admin.deny_content', 'Anda tidak memiliki kekuatan yang cukup!', 'admin', 'vi', NULL, NULL),
(1422, 'admin.home', 'Halaman beranda', 'admin', 'vi', NULL, NULL),
(1423, 'admin.home', 'Home', 'admin', 'en', NULL, NULL),
(1424, 'admin.choose_icon', 'Pilih ikon', 'admin', 'vi', NULL, NULL),
(1425, 'admin.choose_icon', 'Chose icon', 'admin', 'en', NULL, NULL),
(1426, 'admin.file_manager', 'Manajemen file', 'admin', 'vi', NULL, NULL),
(1427, 'admin.file_manager', 'File manager', 'admin', 'en', NULL, NULL),
(1428, 'admin.notice_new_order', 'Anda memiliki :total pesanan baru', 'admin', 'vi', NULL, NULL),
(1429, 'admin.notice_new_order', 'You have :total new orders', 'admin', 'en', NULL, NULL),
(1430, 'admin.gt_numeric_0', 'Nilainya harus lebih besar dari 0!', 'admin', 'vi', NULL, NULL),
(1431, 'admin.gt_numeric_0', 'Value must greater zero!', 'admin', 'en', NULL, NULL),
(1432, 'admin.api_connection.api_mode_help', 'ON/OFF API', 'admin.api_connection', 'en', NULL, NULL),
(1433, 'admin.api_connection.api_mode_help', 'MATIKAN/BUKA API', 'admin.api_connection', 'vi', NULL, NULL),
(1434, 'admin.api_connection.api_mode', 'ON/OFF API', 'admin.api_connection', 'en', NULL, NULL),
(1435, 'admin.api_connection.api_mode', 'MATIKAN/BUKA API', 'admin.api_connection', 'vi', NULL, NULL),
(1436, 'admin.api_connection.list', 'API connection list', 'admin.api_connection', 'en', NULL, NULL),
(1437, 'admin.api_connection.list', 'Daftar koneksi Api', 'admin.api_connection', 'vi', NULL, NULL),
(1438, 'admin.api_connection.description', 'Menggambarkan', 'admin.api_connection', 'vi', NULL, NULL),
(1439, 'admin.api_connection.description', 'Description', 'admin.api_connection', 'en', NULL, NULL),
(1440, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'vi', NULL, NULL),
(1441, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'en', NULL, NULL),
(1442, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'vi', NULL, NULL),
(1443, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'en', NULL, NULL),
(1444, 'admin.api_connection.expire', 'Kedaluwarsa', 'admin.api_connection', 'vi', NULL, NULL),
(1445, 'admin.api_connection.expire', 'Expire', 'admin.api_connection', 'en', NULL, NULL),
(1446, 'admin.api_connection.last_active', 'Terakhir dikunjungi', 'admin.api_connection', 'vi', NULL, NULL),
(1447, 'admin.api_connection.last_active', 'Last active', 'admin.api_connection', 'en', NULL, NULL),
(1448, 'admin.api_connection.status', 'Status', 'admin.api_connection', 'vi', NULL, NULL),
(1449, 'admin.api_connection.status', 'Status', 'admin.api_connection', 'en', NULL, NULL),
(1450, 'admin.api_connection.validate_regex', 'Gunakan hanya karakter: a-z0-9', 'admin.api_connection', 'vi', NULL, NULL),
(1451, 'admin.api_connection.validate_regex', 'Only use characters : a-z0-9', 'admin.api_connection', 'en', NULL, NULL),
(1452, 'admin.api_connection.create', 'Membuat koneksi baru', 'admin.api_connection', 'vi', NULL, NULL),
(1453, 'admin.api_connection.create', 'Creat new connection', 'admin.api_connection', 'en', NULL, NULL),
(1454, 'admin.api_connection.edit', 'Mengedit koneksi', 'admin.api_connection', 'vi', NULL, NULL),
(1455, 'admin.api_connection.edit', 'Edit connection', 'admin.api_connection', 'en', NULL, NULL),
(1456, 'admin.api_connection.api_connection_required_help', '<ul><li>Jika Anda tidak menggunakan API, beralih ke status \"OFF API\"</li><li>Nếu không sử dụng apikey và apiconnection, hãy chuyển sang trạng thái \"OFF CONNECTION\"</li></ul>\r\n                <a href=\"https://s-cart.org/vi/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\">Xem chi tiết ở đây</i></a>\r\n                ', 'admin.api_connection', 'vi', NULL, NULL),
(1457, 'admin.api_connection.api_connection_required_help', '<ul><li>If not using API, please switch to \"OFF API\" state</li><li>If apikey and apiconnection are not used, switch to \"OFF CONNECTION\" state</li></ul>\n                <a href=\"https://s-cart.org/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>See full infomation</a>\n                ', 'admin.api_connection', 'en', NULL, NULL),
(1458, 'admin.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'admin', 'en', NULL, NULL),
(1459, 'admin.result_item', 'Menampilkan <b>:item_from</b>-<b>:item_to</b> arab <b>:total</b> kết quả</b>', 'admin', 'vi', NULL, NULL),
(1460, 'admin.method_not_allow', 'Method not allow', 'admin', 'en', NULL, NULL),
(1461, 'admin.method_not_allow', 'Metode ini tidak diperbolehkan', 'admin', 'vi', NULL, NULL),
(1462, 'admin.back_list', 'Back list', 'admin', 'en', NULL, NULL),
(1463, 'admin.back_list', 'Kembali ke daftar', 'admin', 'vi', NULL, NULL),
(1464, 'admin.msg_change_success', 'All changes have been updated', 'admin', 'en', NULL, NULL),
(1465, 'admin.msg_change_success', 'Perubahan telah diperbarui', 'admin', 'vi', NULL, NULL),
(1466, 'admin.updated_at', 'Updated at', 'admin', 'en', NULL, NULL),
(1467, 'admin.updated_at', 'Perbarui kapan', 'admin', 'vi', NULL, NULL),
(1468, 'admin.created_at', 'Created at', 'admin', 'en', NULL, NULL),
(1469, 'admin.created_at', 'Dibuat', 'admin', 'vi', NULL, NULL),
(1470, 'admin.remove_dont_permisison', 'Dont permission remove ', 'admin', 'en', NULL, NULL),
(1471, 'admin.remove_dont_permisison', 'Tidak ada hak penghapusan', 'admin', 'vi', NULL, NULL),
(1472, 'admin.delete_dont_permisison', 'Dont permission delete ', 'admin', 'en', NULL, NULL),
(1473, 'admin.delete_dont_permisison', 'Tidak ada izin penghapusan', 'admin', 'vi', NULL, NULL),
(1474, 'admin.attribute_group.list', 'Daftar grup properti', 'admin.attribute_group', 'vi', NULL, NULL),
(1475, 'admin.attribute_group.list', 'Attribute group list', 'admin.attribute_group', 'en', NULL, NULL),
(1476, 'admin.attribute_group.name', 'Nama', 'admin.attribute_group', 'vi', NULL, NULL),
(1477, 'admin.attribute_group.name', 'Name', 'admin.attribute_group', 'en', NULL, NULL),
(1478, 'admin.attribute_group.type', 'Loại', 'admin.attribute_group', 'vi', NULL, NULL),
(1479, 'admin.attribute_group.type', 'Type', 'admin.attribute_group', 'en', NULL, NULL),
(1480, 'admin.order.search', 'Temukan pesanan', 'admin.order', 'vi', NULL, NULL),
(1481, 'admin.order.search', 'Search order', 'admin.order', 'en', NULL, NULL),
(1482, 'admin.permission.name', 'Nama', 'admin.permission', 'vi', NULL, NULL),
(1483, 'admin.permission.name', 'Name', 'admin.permission', 'en', NULL, NULL),
(1484, 'admin.permission.list', 'Daftar perizinan', 'admin.permission', 'vi', NULL, NULL),
(1485, 'admin.permission.list', 'Permission list', 'admin.permission', 'en', NULL, NULL),
(1486, 'admin.permission.slug', 'Slug', 'admin.permission', 'vi', NULL, NULL),
(1487, 'admin.permission.slug', 'Slug', 'admin.permission', 'en', NULL, NULL),
(1488, 'admin.permission.select_http_uri', 'Chọn http uri', 'admin.permission', 'vi', NULL, NULL),
(1489, 'admin.permission.select_http_uri', 'Select http uri', 'admin.permission', 'en', NULL, NULL),
(1490, 'admin.permission.method_placeholder', 'Hak', 'admin.permission', 'vi', NULL, NULL),
(1491, 'admin.permission.method_placeholder', 'Permission detail', 'admin.permission', 'en', NULL, NULL),
(1492, 'admin.permission.http_path', 'Http path', 'admin.permission', 'vi', NULL, NULL),
(1493, 'admin.permission.http_path', 'Http path', 'admin.permission', 'en', NULL, NULL),
(1494, 'admin.permission.slug_validate', 'Gunakan hanya karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" ...', 'admin.permission', 'vi', NULL, NULL),
(1495, 'admin.permission.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'en', NULL, NULL),
(1496, 'admin.permission.add_new_des', 'Membuat izin baru', 'admin.permission', 'vi', NULL, NULL),
(1497, 'admin.permission.add_new_des', 'Create new permission', 'admin.permission', 'en', NULL, NULL),
(1498, 'admin.permission.add_new_title', 'Membuat izin', 'admin.permission', 'vi', NULL, NULL),
(1499, 'admin.permission.add_new_title', 'Create permission', 'admin.permission', 'en', NULL, NULL),
(1500, 'admin.backup.title', 'Daftar cadangan', 'admin.backup', 'vi', NULL, NULL),
(1501, 'admin.backup.title', 'Backup list', 'admin.backup', 'en', NULL, NULL),
(1502, 'admin.backup.processing', 'Pengolahan...', 'admin.backup', 'vi', NULL, NULL),
(1503, 'admin.backup.processing', 'Processing...', 'admin.backup', 'en', NULL, NULL),
(1504, 'admin.backup.guide', '<span class=\"text-danger\">Chú ý: Bạn cần phải cài đặt đường dẫn hệ thống chính xác. Xem hướng dẫn <a target=_new href=\"https://s-cart.org/guide/backup.html?lang=vi\">TẠI ĐÂY</a></span>', 'admin.backup', 'vi', NULL, NULL),
(1505, 'admin.backup.generate_now', 'Membuat cadangan sekarang', 'admin.backup', 'vi', NULL, NULL),
(1506, 'admin.backup.manager', 'Manajemen cadangan', 'admin.backup', 'vi', NULL, NULL),
(1507, 'admin.backup.name', 'Nama file', 'admin.backup', 'vi', NULL, NULL),
(1508, 'admin.backup.sort', 'Perintah', 'admin.backup', 'vi', NULL, NULL),
(1509, 'admin.backup.date', 'Waktu', 'admin.backup', 'vi', NULL, NULL),
(1510, 'admin.backup.size', 'Dimensi', 'admin.backup', 'vi', NULL, NULL),
(1511, 'admin.backup.download', 'Mengunduh', 'admin.backup', 'vi', NULL, NULL),
(1512, 'admin.backup.remove', 'Buka', 'admin.backup', 'vi', NULL, NULL),
(1513, 'admin.backup.restore', 'Mengembalikan', 'admin.backup', 'vi', NULL, NULL),
(1514, 'admin.backup.remove_success', 'Berhasil menghapus file!', 'admin.backup', 'vi', NULL, NULL),
(1515, 'admin.backup.restore_success', 'Pemulihan data yang sukses!', 'admin.backup', 'vi', NULL, NULL),
(1516, 'admin.backup.generate_success', 'Buat file cadangan yang sukses!', 'admin.backup', 'vi', NULL, NULL),
(1517, 'admin.backup.limit_backup', 'Anda hanya dapat membuat maksimal 10 cadangan!', 'admin.backup', 'vi', NULL, NULL),
(1518, 'admin.backup.guide', '<span class=\"text-danger\">NOTE: To use MySQL server on the command line, you must have the correct system path. This is usually done automatically. Read document in <a target=_new href=\"https://s-cart.org/guide/backup.html\">HERE</a></span>', 'admin.backup', 'en', NULL, NULL),
(1519, 'admin.backup.generate_now', 'Gererate a backup now', 'admin.backup', 'en', NULL, NULL),
(1520, 'admin.backup.manager', 'Backup management', 'admin.backup', 'en', NULL, NULL),
(1521, 'admin.backup.name', 'File name', 'admin.backup', 'en', NULL, NULL),
(1522, 'admin.backup.sort', 'Sort', 'admin.backup', 'en', NULL, NULL),
(1523, 'admin.backup.date', 'Date', 'admin.backup', 'en', NULL, NULL),
(1524, 'admin.backup.size', 'Size', 'admin.backup', 'en', NULL, NULL),
(1525, 'admin.backup.download', 'Download', 'admin.backup', 'en', NULL, NULL),
(1526, 'admin.backup.remove', 'Remove', 'admin.backup', 'en', NULL, NULL),
(1527, 'admin.backup.restore', 'Restore', 'admin.backup', 'en', NULL, NULL),
(1528, 'admin.backup.remove_success', 'Remove successful!', 'admin.backup', 'en', NULL, NULL),
(1529, 'admin.backup.restore_success', 'Restore successful!', 'admin.backup', 'en', NULL, NULL),
(1530, 'admin.backup.generate_success', 'Create successful backup file!', 'admin.backup', 'en', NULL, NULL),
(1531, 'admin.backup.limit_backup', 'You cannot create more than 10 copies', 'admin.backup', 'en', NULL, NULL),
(1532, 'admin.banner.type', 'Jenis', 'admin.banner', 'vi', NULL, NULL),
(1533, 'admin.banner.type', 'Type', 'admin.banner', 'en', NULL, NULL),
(1534, 'admin.banner.add_new', 'Menambahkan banner baru', 'admin.banner', 'vi', NULL, NULL),
(1535, 'admin.banner.add_new', 'Add new banner', 'admin.banner', 'en', NULL, NULL),
(1536, 'admin.banner.image', 'Hình ảnh', 'admin.banner', 'vi', NULL, NULL),
(1537, 'admin.banner.image', 'Image', 'admin.banner', 'en', NULL, NULL),
(1538, 'admin.banner.title', 'Tiêu đề', 'admin.banner', 'vi', NULL, NULL),
(1539, 'admin.banner.title', 'Title', 'admin.banner', 'en', NULL, NULL),
(1540, 'admin.banner.url', 'URL', 'admin.banner', 'vi', NULL, NULL),
(1541, 'admin.banner.url', 'URL', 'admin.banner', 'en', NULL, NULL),
(1542, 'admin.banner.sort', 'Thứ tự', 'admin.banner', 'vi', NULL, NULL),
(1543, 'admin.banner.sort', 'Sort', 'admin.banner', 'en', NULL, NULL),
(1544, 'admin.banner.status', 'Trạng thái', 'admin.banner', 'vi', NULL, NULL),
(1545, 'admin.banner.status', 'Status', 'admin.banner', 'en', NULL, NULL),
(1546, 'admin.banner.click', 'Bấm chuột', 'admin.banner', 'vi', NULL, NULL),
(1547, 'admin.banner.click', 'Click', 'admin.banner', 'en', NULL, NULL),
(1548, 'admin.banner.target', 'Target', 'admin.banner', 'vi', NULL, NULL),
(1549, 'admin.banner.target', 'Target', 'admin.banner', 'en', NULL, NULL),
(1550, 'admin.banner.select_target', 'Chọn target', 'admin.banner', 'vi', NULL, NULL),
(1551, 'admin.banner.select_target', 'Select target', 'admin.banner', 'en', NULL, NULL),
(1552, 'admin.banner.list', 'Danh sách banner', 'admin.banner', 'vi', NULL, NULL),
(1553, 'admin.banner.list', 'Banner list', 'admin.banner', 'en', NULL, NULL),
(1554, 'admin.banner_type.list', 'Loại banner', 'admin.banner', 'vi', NULL, NULL),
(1555, 'admin.banner_type.list', 'Banner type list', 'admin.banner', 'en', NULL, NULL),
(1556, 'admin.banner_type.add_new_title', 'Thêm loại mới', 'admin.banner', 'vi', NULL, NULL),
(1557, 'admin.banner_type.add_new_title', 'Add new type', 'admin.banner', 'en', NULL, NULL),
(1558, 'admin.banner_type.code', 'Mã', 'admin.banner', 'vi', NULL, NULL),
(1559, 'admin.banner_type.code', 'Code', 'admin.banner', 'en', NULL, NULL),
(1560, 'admin.banner_type.name', 'Tên', 'admin.banner', 'vi', NULL, NULL),
(1561, 'admin.banner_type.name', 'Name', 'admin.banner', 'en', NULL, NULL),
(1562, 'admin.brand.list', 'Danh sách nhãn hiệu', 'admin.brand', 'vi', NULL, NULL),
(1563, 'admin.brand.list', 'Brand list', 'admin.brand', 'en', NULL, NULL),
(1564, 'admin.brand.add_new_title', 'Thêm mới nhãn hiệu', 'admin.brand', 'vi', NULL, NULL),
(1565, 'admin.brand.add_new_title', 'Add new brand', 'admin.brand', 'en', NULL, NULL),
(1566, 'admin.brand.image', 'Hình ảnh', 'admin.brand', 'vi', NULL, NULL),
(1567, 'admin.brand.image', 'Image', 'admin.brand', 'en', NULL, NULL),
(1568, 'admin.brand.name', 'Tên', 'admin.brand', 'vi', NULL, NULL),
(1569, 'admin.brand.name', 'Name', 'admin.brand', 'en', NULL, NULL),
(1570, 'admin.brand.sort', 'Thứ tự', 'admin.brand', 'vi', NULL, NULL),
(1571, 'admin.brand.sort', 'Sort', 'admin.brand', 'en', NULL, NULL),
(1572, 'admin.brand.status', 'Trạng thái', 'admin.brand', 'vi', NULL, NULL),
(1573, 'admin.brand.status', 'Status', 'admin.brand', 'en', NULL, NULL),
(1574, 'admin.brand.alias', 'Alias', 'admin.brand', 'vi', NULL, NULL),
(1575, 'admin.brand.alias', 'Alias', 'admin.brand', 'en', NULL, NULL),
(1576, 'admin.brand.url', 'Url', 'admin.brand', 'vi', NULL, NULL),
(1577, 'admin.brand.url', 'Url', 'admin.brand', 'en', NULL, NULL),
(1578, 'admin.brand.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'vi', NULL, NULL),
(1579, 'admin.brand.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'en', NULL, NULL),
(1580, 'admin.cache.title', 'Cấu hình bộ nhớ Cache', 'admin.cache', 'vi', NULL, NULL),
(1581, 'admin.cache.title', 'config cache manager', 'admin.cache', 'en', NULL, NULL),
(1582, 'admin.cache.cache_clear_processing', 'Đang xóa Cache', 'admin.cache', 'vi', NULL, NULL),
(1583, 'admin.cache.cache_clear_processing', 'Cache clearing', 'admin.cache', 'en', NULL, NULL),
(1584, 'admin.cache.cache_status', 'Trạng thái', 'admin.cache', 'vi', NULL, NULL),
(1585, 'admin.cache.cache_status', 'Status', 'admin.cache', 'en', NULL, NULL),
(1586, 'admin.cache.cache_clear_all', 'Xóa tất cả Cache', 'admin.cache', 'vi', NULL, NULL),
(1587, 'admin.cache.cache_clear_all', 'Clear all cache', 'admin.cache', 'en', NULL, NULL),
(1588, 'admin.cache.cache_clear_success', 'Đã xóa cache xong', 'admin.cache', 'vi', NULL, NULL),
(1589, 'admin.cache.cache_clear_success', 'Clear cache success', 'admin.cache', 'en', NULL, NULL),
(1590, 'admin.cache.cache_refresh', 'Làm mới cache', 'admin.cache', 'vi', NULL, NULL),
(1591, 'admin.cache.cache_refresh', 'Cache refresh', 'admin.cache', 'en', NULL, NULL),
(1592, 'admin.cache.cache_clear', 'Xóa cache', 'admin.cache', 'vi', NULL, NULL),
(1593, 'admin.cache.cache_clear', 'Clear cache', 'admin.cache', 'en', NULL, NULL),
(1594, 'admin.cache.cache_all', 'Cache tất cả', 'admin.cache', 'vi', NULL, NULL),
(1595, 'admin.cache.cache_all', 'Cache all', 'admin.cache', 'en', NULL, NULL),
(1596, 'admin.cache.cache_time', 'Thời gian cache (giây)', 'admin.cache', 'vi', NULL, NULL),
(1597, 'admin.cache.cache_time', 'Cache time (s)', 'admin.cache', 'en', NULL, NULL),
(1598, 'admin.cache.value', 'Giá trị', 'admin.cache', 'vi', NULL, NULL),
(1599, 'admin.cache.value', 'Value', 'admin.cache', 'en', NULL, NULL),
(1600, 'admin.cache.field', 'Trường', 'admin.cache', 'vi', NULL, NULL),
(1601, 'admin.cache.field', 'Field', 'admin.cache', 'en', NULL, NULL),
(1602, 'admin.cache.cache_category', 'Cache Danh mục sản phẩm', 'admin.cache', 'vi', NULL, NULL),
(1603, 'admin.cache.cache_product', 'Cache Sản phẩm', 'admin.cache', 'vi', NULL, NULL),
(1604, 'admin.cache.cache_news', 'Cache Tin tức/Blog', 'admin.cache', 'vi', NULL, NULL),
(1605, 'admin.cache.cache_category_cms', 'Cache Danh mục CMS', 'admin.cache', 'vi', NULL, NULL),
(1606, 'admin.cache.cache_content_cms', 'Cache Nội dung CMS', 'admin.cache', 'vi', NULL, NULL),
(1607, 'admin.cache.cache_page', 'Cache Trang viết', 'admin.cache', 'vi', NULL, NULL),
(1608, 'admin.cache.cache_store', 'Cache Cửa hàng', 'admin.cache', 'vi', NULL, NULL),
(1609, 'admin.cache.cache_country', 'Cache Quốc gia', 'admin.cache', 'vi', NULL, NULL),
(1610, 'admin.cache.cache_category', 'Cache categoty', 'admin.cache', 'en', NULL, NULL),
(1611, 'admin.cache.cache_product', 'Cache product', 'admin.cache', 'en', NULL, NULL),
(1612, 'admin.cache.cache_news', 'Cache News/Blog', 'admin.cache', 'en', NULL, NULL),
(1613, 'admin.cache.cache_category_cms', 'Cache Category CMS', 'admin.cache', 'en', NULL, NULL),
(1614, 'admin.cache.cache_content_cms', 'Cache CMS content', 'admin.cache', 'en', NULL, NULL),
(1615, 'admin.cache.cache_page', 'Cache page', 'admin.cache', 'en', NULL, NULL),
(1616, 'admin.cache.cache_store', 'Cache Store', 'admin.cache', 'en', NULL, NULL),
(1617, 'admin.cache.cache_country', 'Cache country', 'admin.cache', 'en', NULL, NULL),
(1618, 'admin.category.list', 'Danh sách danh mục', 'admin.category', 'vi', NULL, NULL),
(1619, 'admin.category.list', 'Category list', 'admin.category', 'en', NULL, NULL),
(1620, 'admin.category.add_new_title', 'Thêm mới danh mục', 'admin.category', 'vi', NULL, NULL),
(1621, 'admin.category.add_new_title', 'Add new category', 'admin.category', 'en', NULL, NULL),
(1622, 'admin.category.add_new_des', 'Thêm mới', 'admin.category', 'vi', NULL, NULL),
(1623, 'admin.category.add_new_des', 'Add new', 'admin.category', 'en', NULL, NULL),
(1624, 'admin.category.image', 'Gambar', 'admin.category', 'vi', NULL, NULL),
(1625, 'admin.category.image', 'Image', 'admin.category', 'en', NULL, NULL),
(1626, 'admin.category.title', 'Nama', 'admin.category', 'vi', NULL, NULL),
(1627, 'admin.category.title', 'Name', 'admin.category', 'en', NULL, NULL),
(1628, 'admin.category.alias', 'URL Adat <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'vi', NULL, NULL),
(1629, 'admin.category.alias_validate', 'Hingga 100 karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" dan \"-_\" ', 'admin.category', 'vi', NULL, NULL),
(1630, 'admin.category.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'en', NULL, NULL),
(1631, 'admin.category.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'en', NULL, NULL),
(1632, 'admin.category.keyword', 'Kata kunci', 'admin.category', 'vi', NULL, NULL),
(1633, 'admin.category.keyword', 'Keyword', 'admin.category', 'en', NULL, NULL),
(1634, 'admin.category.description', 'Menggambarkan', 'admin.category', 'vi', NULL, NULL),
(1635, 'admin.category.description', 'Description', 'admin.category', 'en', NULL, NULL),
(1636, 'admin.category.top', 'Umum', 'admin.category', 'vi', NULL, NULL),
(1637, 'admin.category.top', 'Public', 'admin.category', 'en', NULL, NULL),
(1638, 'admin.category.parent', 'Induk', 'admin.category', 'vi', NULL, NULL),
(1639, 'admin.category.parent', 'Parent', 'admin.category', 'en', NULL, NULL),
(1640, 'admin.category.sort', 'Perintah', 'admin.category', 'vi', NULL, NULL),
(1641, 'admin.category.sort', 'Sort', 'admin.category', 'en', NULL, NULL),
(1642, 'admin.category.status', 'Status', 'admin.category', 'vi', NULL, NULL),
(1643, 'admin.category.status', 'Status', 'admin.category', 'en', NULL, NULL),
(1644, 'admin.category.select_category', 'Pilih kategori', 'admin.category', 'vi', NULL, NULL),
(1645, 'admin.category.select_category', 'Select category', 'admin.category', 'en', NULL, NULL),
(1646, 'admin.category.top_help', 'Kategori ini akan ditampilkan di luar halaman beranda. Default hanya untuk kategori Root.', 'admin.category', 'vi', NULL, NULL),
(1647, 'admin.category.top_help', 'This category will display outside the homepage. The default is for Root items only.', 'admin.category', 'en', NULL, NULL),
(1648, 'admin.config.webhook', 'Webhook', 'admin.config', 'vi', NULL, NULL),
(1649, 'admin.config.webhook', 'Webhook', 'admin.config', 'en', NULL, NULL),
(1650, 'admin.config.setting_website', 'Menginstal situs web', 'admin.config', 'vi', NULL, NULL),
(1651, 'admin.config.setting_website', 'Setting website', 'admin.config', 'en', NULL, NULL),
(1652, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Kirim ke slack webhook', 'admin.config', 'vi', NULL, NULL),
(1653, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Report error to Slack webhook', 'admin.config', 'en', NULL, NULL),
(1654, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Kirim ke Google webhook', 'admin.config', 'vi', NULL, NULL),
(1655, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Report error to Google webhook', 'admin.config', 'en', NULL, NULL),
(1656, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Dikirim ke webhook Chatword', 'admin.config', 'vi', NULL, NULL),
(1657, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Report error to Chatword webhook', 'admin.config', 'en', NULL, NULL),
(1658, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'vi', NULL, NULL),
(1659, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'en', NULL, NULL),
(1660, 'admin.currency.list', 'Daftar mata uang', 'admin.currency', 'vi', NULL, NULL),
(1661, 'admin.currency.list', 'Currencies list', 'admin.currency', 'en', NULL, NULL),
(1662, 'admin.currency.name', 'Nama', 'admin.currency', 'vi', NULL, NULL),
(1663, 'admin.currency.name', 'Name', 'admin.currency', 'en', NULL, NULL),
(1664, 'admin.currency.code', 'Kode', 'admin.currency', 'vi', NULL, NULL),
(1665, 'admin.currency.code', 'Code', 'admin.currency', 'en', NULL, NULL),
(1666, 'admin.currency.symbol', 'Tanda dan', 'admin.currency', 'vi', NULL, NULL),
(1667, 'admin.currency.symbol', 'Symbol', 'admin.currency', 'en', NULL, NULL),
(1668, 'admin.currency.exchange_rate', 'Nilai tukar', 'admin.currency', 'vi', NULL, NULL),
(1669, 'admin.currency.exchange_rate', 'Exchange rate', 'admin.currency', 'en', NULL, NULL),
(1670, 'admin.currency.precision', 'Angka desimal', 'admin.currency', 'vi', NULL, NULL),
(1671, 'admin.currency.precision', 'Precision', 'admin.currency', 'en', NULL, NULL),
(1672, 'admin.currency.symbol_first', 'Tampilkan tanda pertama', 'admin.currency', 'vi', NULL, NULL),
(1673, 'admin.currency.symbol_first', 'Symbol first', 'admin.currency', 'en', NULL, NULL),
(1674, 'admin.currency.thousands', 'Bagilah ribuan', 'admin.currency', 'vi', NULL, NULL),
(1675, 'admin.currency.thousands', 'Thousands separator', 'admin.currency', 'en', NULL, NULL),
(1676, 'admin.currency.status', 'Status', 'admin.currency', 'vi', NULL, NULL),
(1677, 'admin.currency.status', 'Status', 'admin.currency', 'en', NULL, NULL),
(1678, 'admin.currency.sort', 'Perintah', 'admin.currency', 'vi', NULL, NULL),
(1679, 'admin.currency.sort', 'Sort', 'admin.currency', 'en', NULL, NULL),
(1680, 'admin.currency.add_new_title', 'Menambahkan mata uang baru', 'admin.currency', 'vi', NULL, NULL),
(1681, 'admin.currency.add_new_title', 'Add new currency', 'admin.currency', 'en', NULL, NULL),
(1682, 'admin.currency.add_new_des', 'Tambahkan baru', 'admin.currency', 'vi', NULL, NULL),
(1683, 'admin.currency.add_new_des', 'Add new', 'admin.currency', 'en', NULL, NULL),
(1684, 'admin.custom_field.title', 'Bidang data kustom', 'admin.custom_field', 'vi', NULL, NULL),
(1685, 'admin.custom_field.title', 'Custom field', 'admin.custom_field', 'en', NULL, NULL),
(1686, 'admin.custom_field.list', 'Daftar bidang kustom', 'admin.custom_field', 'vi', NULL, NULL),
(1687, 'admin.custom_field.list', 'Custom field list', 'admin.custom_field', 'en', NULL, NULL),
(1688, 'admin.custom_field.status', 'Status', 'admin.custom_field', 'vi', NULL, NULL),
(1689, 'admin.custom_field.status', 'Status', 'admin.custom_field', 'en', NULL, NULL),
(1690, 'admin.custom_field.sort', 'Perintah', 'admin.custom_field', 'vi', NULL, NULL),
(1691, 'admin.custom_field.sort', 'Sort', 'admin.custom_field', 'en', NULL, NULL),
(1692, 'admin.custom_field.add_new_title', 'Menambahkan bidang baru', 'admin.custom_field', 'vi', NULL, NULL),
(1693, 'admin.custom_field.add_new_title', 'Add new field', 'admin.custom_field', 'en', NULL, NULL),
(1694, 'admin.custom_field.add_new_des', 'Tambahkan baru', 'admin.custom_field', 'vi', NULL, NULL),
(1695, 'admin.custom_field.add_new_des', 'Add new', 'admin.custom_field', 'en', NULL, NULL),
(1696, 'admin.custom_field.name', 'Nama', 'admin.custom_field', 'vi', NULL, NULL),
(1697, 'admin.custom_field.name', 'Name', 'admin.custom_field', 'en', NULL, NULL),
(1698, 'admin.custom_field.code', 'Kode', 'admin.custom_field', 'vi', NULL, NULL),
(1699, 'admin.custom_field.code', 'Code', 'admin.custom_field', 'en', NULL, NULL),
(1700, 'admin.custom_field.type', 'Jenis', 'admin.custom_field', 'vi', NULL, NULL),
(1701, 'admin.custom_field.type', 'Type', 'admin.custom_field', 'en', NULL, NULL),
(1702, 'admin.custom_field.required', 'Wajib', 'admin.custom_field', 'vi', NULL, NULL),
(1703, 'admin.custom_field.required', 'Required', 'admin.custom_field', 'en', NULL, NULL),
(1704, 'admin.custom_field.option', 'Pilihan', 'admin.custom_field', 'vi', NULL, NULL),
(1705, 'admin.custom_field.option', 'Option', 'admin.custom_field', 'en', NULL, NULL),
(1706, 'admin.custom_field.default', 'Default', 'admin.custom_field', 'vi', NULL, NULL),
(1707, 'admin.custom_field.default', 'Default', 'admin.custom_field', 'en', NULL, NULL),
(1708, 'admin.custom_field.default_help', 'Format untuk \"Opsi\" adalah Radio atau Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'vi', NULL, NULL),
(1709, 'admin.custom_field.default_help', 'Format for \"Option\" is Radio or Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'en', NULL, NULL),
(1710, 'admin.env.APP_DEBUG', 'DEBUG mode', 'admin.env', 'en', NULL, NULL),
(1711, 'admin.env.APP_URL', 'URL app', 'admin.env', 'en', NULL, NULL),
(1712, 'admin.env.APP_ENV', 'Environment mode', 'admin.env', 'en', NULL, NULL),
(1713, 'admin.env.ADMIN_PREFIX', 'Admin prefix', 'admin.env', 'en', NULL, NULL),
(1714, 'admin.env.ADMIN_NAME', 'Admin name', 'admin.env', 'en', NULL, NULL),
(1715, 'admin.env.ADMIN_LOGO', 'Admin logo', 'admin.env', 'en', NULL, NULL),
(1716, 'admin.env.ADMIN_LOGO_MINI', 'Admin logo mini', 'admin.env', 'en', NULL, NULL),
(1717, 'admin.env.ADMIN_TITLE', 'Admin title', 'admin.env', 'en', NULL, NULL),
(1718, 'admin.env.field', 'Field', 'admin.env', 'en', NULL, NULL),
(1719, 'admin.env.value', 'Value', 'admin.env', 'en', NULL, NULL),
(1720, 'admin.env.title', 'Config environment', 'admin.env', 'en', NULL, NULL),
(1721, 'admin.env.SUFFIX_URL', 'Suffix URL', 'admin.env', 'en', NULL, NULL),
(1722, 'admin.env.PREFIX_BRAND', 'Prefix url BRAND', 'admin.env', 'en', NULL, NULL),
(1723, 'admin.env.PREFIX_SUPPLIER', 'Prefix url SUPPLIER', 'admin.env', 'en', NULL, NULL),
(1724, 'admin.env.PREFIX_CATEGORY', 'Prefix url CATEGORY ', 'admin.env', 'en', NULL, NULL),
(1725, 'admin.env.PREFIX_SUB_CATEGORY', 'Prefix url sub CATEGORY', 'admin.env', 'en', NULL, NULL),
(1726, 'admin.env.PREFIX_PRODUCT', 'Prefix url PRODUCT', 'admin.env', 'en', NULL, NULL),
(1727, 'admin.env.PREFIX_SEARCH', 'Prefix url SEARCH', 'admin.env', 'en', NULL, NULL),
(1728, 'admin.env.PREFIX_CONTACT', 'Prefix url CONTACT', 'admin.env', 'en', NULL, NULL),
(1729, 'admin.env.PREFIX_NEWS', 'Prefix url NEWS', 'admin.env', 'en', NULL, NULL),
(1730, 'admin.env.PREFIX_MEMBER', 'Prefix url CUSTOMER', 'admin.env', 'en', NULL, NULL),
(1731, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Prefix url CUSTOMER ORDER', 'admin.env', 'en', NULL, NULL),
(1732, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Prefix url CHANGE PASSWOD', 'admin.env', 'en', NULL, NULL),
(1733, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Prefix url CHANGE INFO', 'admin.env', 'en', NULL, NULL),
(1734, 'admin.env.PREFIX_CMS_CATEGORY', 'Prefix url CMS CATEGORY', 'admin.env', 'en', NULL, NULL),
(1735, 'admin.env.PREFIX_CMS_ENTRY', 'Prefix url CMS ENTRY', 'admin.env', 'en', NULL, NULL),
(1736, 'admin.env.PREFIX_CART_WISHLIST', 'Prefix url WISHLIST', 'admin.env', 'en', NULL, NULL),
(1737, 'admin.env.PREFIX_CART_COMPARE', 'Prefix url COMPARE', 'admin.env', 'en', NULL, NULL),
(1738, 'admin.env.PREFIX_CART_DEFAULT', 'Prefix url CART', 'admin.env', 'en', NULL, NULL),
(1739, 'admin.env.PREFIX_CART_CHECKOUT', 'Prefix url CHECKOUT', 'admin.env', 'en', NULL, NULL),
(1740, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Prefix url CHECKOUT CONFIRM', 'admin.env', 'en', NULL, NULL),
(1741, 'admin.env.PREFIX_ORDER_SUCCESS', 'Prefix url ORDER SUCCESS', 'admin.env', 'en', NULL, NULL),
(1742, 'admin.env.PREFIX_SHOP', 'Link shop', 'admin.env', 'en', NULL, NULL),
(1743, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Customize template admin', 'admin.env', 'en', NULL, NULL),
(1744, 'admin.env.APP_DEBUG', 'Mode koreksi kesalahan', 'admin.env', 'vi', NULL, NULL),
(1745, 'admin.env.APP_URL', 'URL website', 'admin.env', 'vi', NULL, NULL),
(1746, 'admin.env.APP_ENV', 'Lingkungan', 'admin.env', 'vi', NULL, NULL),
(1747, 'admin.env.ADMIN_PREFIX', 'Awalan admin', 'admin.env', 'vi', NULL, NULL),
(1748, 'admin.env.ADMIN_NAME', 'Nama halaman admin', 'admin.env', 'vi', NULL, NULL),
(1749, 'admin.env.ADMIN_LOGO', 'Logo admin', 'admin.env', 'vi', NULL, NULL),
(1750, 'admin.env.ADMIN_LOGO_MINI', 'Logo kecil', 'admin.env', 'vi', NULL, NULL),
(1751, 'admin.env.ADMIN_TITLE', 'Judul admin', 'admin.env', 'vi', NULL, NULL),
(1752, 'admin.env.field', 'Bidang data', 'admin.env', 'vi', NULL, NULL),
(1753, 'admin.env.value', 'Nilai', 'admin.env', 'vi', NULL, NULL),
(1754, 'admin.env.title', 'Konfigurasi lingkungan', 'admin.env', 'vi', NULL, NULL),
(1755, 'admin.env.SUFFIX_URL', 'Akhiran URL', 'admin.env', 'vi', NULL, NULL),
(1756, 'admin.env.PREFIX_BRAND', 'Awalan situs  BRAND', 'admin.env', 'vi', NULL, NULL),
(1757, 'admin.env.PREFIX_SUPPLIER', 'Awalan situs SUPPLIER', 'admin.env', 'vi', NULL, NULL),
(1758, 'admin.env.PREFIX_CATEGORY', 'Awalan halaman KATEGORI ', 'admin.env', 'vi', NULL, NULL),
(1759, 'admin.env.PREFIX_SUB_CATEGORY', 'Awalan halaman KATEGORI Kecil', 'admin.env', 'vi', NULL, NULL),
(1760, 'admin.env.PREFIX_PRODUCT', 'Awalan situs PRODUK', 'admin.env', 'vi', NULL, NULL),
(1761, 'admin.env.PREFIX_SEARCH', 'Awalan situs PENCARIAN', 'admin.env', 'vi', NULL, NULL),
(1762, 'admin.env.PREFIX_CONTACT', 'Awalan halaman KONTAK', 'admin.env', 'vi', NULL, NULL),
(1763, 'admin.env.PREFIX_NEWS', 'Awalan situs berita', 'admin.env', 'vi', NULL, NULL),
(1764, 'admin.env.PREFIX_MEMBER', 'Awalan situs PELANGGAN', 'admin.env', 'vi', NULL, NULL),
(1765, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Awalan situs Pesanan Pelanggan', 'admin.env', 'vi', NULL, NULL),
(1766, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Mengubah awalan halaman PASSWORD', 'admin.env', 'vi', NULL, NULL),
(1767, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Mengubah awalan situs Info', 'admin.env', 'vi', NULL, NULL),
(1768, 'admin.env.PREFIX_CMS_CATEGORY', 'Awalan situs KATEGORI CMS', 'admin.env', 'vi', NULL, NULL),
(1769, 'admin.env.PREFIX_CMS_ENTRY', 'Awalan halaman ENTRI CMS', 'admin.env', 'vi', NULL, NULL),
(1770, 'admin.env.PREFIX_CART_WISHLIST', 'Awalan situs WISHLIST', 'admin.env', 'vi', NULL, NULL),
(1771, 'admin.env.PREFIX_CART_COMPARE', 'BANDINGKAN awalan situs', 'admin.env', 'vi', NULL, NULL),
(1772, 'admin.env.PREFIX_CART_DEFAULT', 'Awalan situs CART', 'admin.env', 'vi', NULL, NULL),
(1773, 'admin.env.PREFIX_CART_CHECKOUT', 'Awalan situs CHECKOUT', 'admin.env', 'vi', NULL, NULL),
(1774, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Awalan situs CHECKOUT KONFIRMASI', 'admin.env', 'vi', NULL, NULL),
(1775, 'admin.env.PREFIX_ORDER_SUCCESS', 'Pesan awalan halaman SUCCESS', 'admin.env', 'vi', NULL, NULL),
(1776, 'admin.env.PREFIX_SHOP', 'Link Toko', 'admin.env', 'vi', NULL, NULL),
(1777, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Mengkustomisasi antarmuka admin', 'admin.env', 'vi', NULL, NULL),
(1778, 'admin.env.hidden_copyright_footer_admin', 'Menyembunyikan informasi hak cipta admin footer', 'admin.env', 'vi', NULL, NULL),
(1779, 'admin.env.hidden_copyright_footer', 'Menyembunyikan informasi hak cipta footer situs web', 'admin.env', 'vi', NULL, NULL),
(1780, 'admin.env.hidden_copyright_footer_admin', 'Hide admin footer copyright information', 'admin.env', 'en', NULL, NULL),
(1781, 'admin.env.hidden_copyright_footer', 'Hide website footer copyright information', 'admin.env', 'en', NULL, NULL),
(1782, 'admin.env.PREFIX_CATEGORY_VENDOR', 'Vendor kategori', 'admin.env', 'vi', NULL, NULL),
(1783, 'admin.env.PREFIX_CATEGORY_VENDOR', 'Danh mục nhà cung cấp', 'admin.env', 'en', NULL, NULL),
(1784, 'admin.email_template.name', 'Nama', 'admin.email_template', 'vi', NULL, NULL),
(1785, 'admin.email_template.list', 'Daftar templat email', 'admin.email_template', 'vi', NULL, NULL),
(1786, 'admin.email_template.list', 'Email template list', 'admin.email_template', 'en', NULL, NULL),
(1787, 'admin.email_template.status', 'Status', 'admin.email_template', 'vi', NULL, NULL),
(1788, 'admin.email_template.group', 'Kelompok', 'admin.email_template', 'vi', NULL, NULL),
(1789, 'admin.email_template.html', 'HTML', 'admin.email_template', 'vi', NULL, NULL),
(1790, 'admin.email_template.text', 'Puas', 'admin.email_template', 'vi', NULL, NULL),
(1791, 'admin.email_template.name', 'Name', 'admin.email_template', 'en', NULL, NULL),
(1792, 'admin.email_template.lits', 'Email template list', 'admin.email_template', 'en', NULL, NULL),
(1793, 'admin.email_template.group', 'Group', 'admin.email_template', 'en', NULL, NULL),
(1794, 'admin.email_template.text', 'Content', 'admin.email_template', 'en', NULL, NULL),
(1795, 'admin.email_template.html', 'HTML', 'admin.email_template', 'en', NULL, NULL),
(1796, 'admin.email_template.status', 'Status', 'admin.email_template', 'en', NULL, NULL),
(1797, 'admin.email_template.add_new_title', 'Add template', 'admin.email_template', 'en', NULL, NULL),
(1798, 'admin.email_template.add_new_des', 'Create a new template', 'admin.email_template', 'en', NULL, NULL),
(1799, 'admin.email_template.variable_support', 'Variables support:', 'admin.email_template', 'en', NULL, NULL),
(1800, 'admin.email_template.add_new_title', 'Membuat templat', 'admin.email_template', 'vi', NULL, NULL),
(1801, 'admin.email_template.add_new_des', 'Membuat templat baru', 'admin.email_template', 'vi', NULL, NULL),
(1802, 'admin.email_template.variable_support', 'Variabel dukungan', 'admin.email_template', 'vi', NULL, NULL),
(1803, 'admin.language.list', 'Language list', 'admin.language', 'en', NULL, NULL),
(1804, 'admin.language.list', 'Daftar bahasa', 'admin.language', 'vi', NULL, NULL),
(1805, 'admin.language.select_lang', 'Select language', 'admin.language', 'en', NULL, NULL),
(1806, 'admin.language.select_lang', 'Memilih bahasa', 'admin.language', 'vi', NULL, NULL),
(1807, 'admin.language.select_position', 'Select position', 'admin.language', 'en', NULL, NULL),
(1808, 'admin.language.select_position', 'Memilih lokasi bahasa', 'admin.language', 'vi', NULL, NULL),
(1809, 'admin.language.name', 'Name', 'admin.language', 'en', NULL, NULL),
(1810, 'admin.language.icon', 'Icon', 'admin.language', 'en', NULL, NULL),
(1811, 'admin.language.code', 'Code', 'admin.language', 'en', NULL, NULL),
(1812, 'admin.language.sort', 'Sort', 'admin.language', 'en', NULL, NULL),
(1813, 'admin.language.status', 'Status', 'admin.language', 'en', NULL, NULL),
(1814, 'admin.language.layout_rtl', 'Layout RTL', 'admin.language', 'en', NULL, NULL),
(1815, 'admin.language.add_new_title', 'Add language', 'admin.language', 'en', NULL, NULL),
(1816, 'admin.language.add_new_des', 'Create a new language', 'admin.language', 'en', NULL, NULL),
(1817, 'admin.language.name', 'Nama bahasa', 'admin.language', 'vi', NULL, NULL),
(1818, 'admin.language.icon', 'Icon', 'admin.language', 'vi', NULL, NULL),
(1819, 'admin.language.code', 'Code', 'admin.language', 'vi', NULL, NULL),
(1820, 'admin.language.sort', 'Perintah', 'admin.language', 'vi', NULL, NULL),
(1821, 'admin.language.status', 'Status', 'admin.language', 'vi', NULL, NULL),
(1822, 'admin.language.layout_rtl', 'Antarmuka RTL', 'admin.language', 'vi', NULL, NULL),
(1823, 'admin.language.add_new_title', 'Membuat bahasa', 'admin.language', 'vi', NULL, NULL),
(1824, 'admin.language.add_new_des', 'Membuat bahasa baru', 'admin.language', 'vi', NULL, NULL),
(1825, 'admin.language_manager.title', 'Manajemen bahasa', 'admin.language', 'vi', NULL, NULL),
(1826, 'admin.language_manager.title', 'Language manager', 'admin.language', 'en', NULL, NULL),
(1827, 'admin.language_manager.add', 'Menambahkan nilai baru', 'admin.language', 'vi', NULL, NULL),
(1828, 'admin.language_manager.add', 'Add new record language', 'admin.language', 'en', NULL, NULL),
(1829, 'admin.language_manager.position', 'Lokasi bahasa baru', 'admin.language', 'vi', NULL, NULL),
(1830, 'admin.language_manager.position', 'Position language', 'admin.language', 'en', NULL, NULL),
(1831, 'admin.language_manager.new_position', 'Atau tambahkan lokasi baru.', 'admin.language', 'vi', NULL, NULL),
(1832, 'admin.language_manager.new_position', 'Or add new position', 'admin.language', 'en', NULL, NULL),
(1833, 'admin.language_manager.code', 'Kode', 'admin.language', 'vi', NULL, NULL),
(1834, 'admin.language_manager.code', 'Code', 'admin.language', 'en', NULL, NULL),
(1835, 'admin.language_manager.text', 'Konten bahasa', 'admin.language', 'vi', NULL, NULL),
(1836, 'admin.language_manager.text', 'Language content', 'admin.language', 'en', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(1837, 'admin.language_manager.text_help', 'Secara default, nilai baru hanya ditambahkan ke bahasa Inggris. <br>Untuk memperbarui bahasa lain, temukan nilai baru yang ditambahkan dan edit <a href=\":link\"> HERE</a>', 'admin.language', 'vi', NULL, NULL),
(1838, 'admin.language_manager.text_help', 'By default, the new value is only added for English. <br>To update for other languages, find the newly added value and edit <a href=\":link\">HERE</a>', 'admin.language', 'en', NULL, NULL),
(1839, 'admin.language_manager.select_position', 'Memilih lokasi bahasa', 'admin.language', 'vi', NULL, NULL),
(1840, 'admin.language_manager.select_position', 'Select position of language', 'admin.language', 'en', NULL, NULL),
(1841, 'admin.menu.list', 'Mengelola menu', 'admin.emnu', 'vi', NULL, NULL),
(1842, 'admin.menu.create', 'Membuat menu baru', 'admin.emnu', 'vi', NULL, NULL),
(1843, 'admin.menu.edit', 'Mengedit menu', 'admin.emnu', 'vi', NULL, NULL),
(1844, 'admin.menu.error_have_child', 'Anda perlu menghapus menu di dalamnya sebelum Melakukan ini!', 'admin.emnu', 'vi', NULL, NULL),
(1845, 'admin.menu.parent', 'Induk', 'admin.emnu', 'vi', NULL, NULL),
(1846, 'admin.menu.title', 'Judul', 'admin.emnu', 'vi', NULL, NULL),
(1847, 'admin.menu.icon', 'Icon', 'admin.emnu', 'vi', NULL, NULL),
(1848, 'admin.menu.uri', 'URI', 'admin.emnu', 'vi', NULL, NULL),
(1849, 'admin.menu.roles', 'Peranan', 'admin.emnu', 'vi', NULL, NULL),
(1850, 'admin.menu.permissions', 'Izin', 'admin.emnu', 'vi', NULL, NULL),
(1851, 'admin.menu.create_success', 'Ciptakan kesuksesan baru!', 'admin.emnu', 'vi', NULL, NULL),
(1852, 'admin.menu.edit_success', 'Pembaruan yang berhasil!', 'admin.emnu', 'vi', NULL, NULL),
(1853, 'admin.menu.sort', 'Perintah', 'admin.emnu', 'vi', NULL, NULL),
(1854, 'admin.menu.list', 'Menu manager', 'admin.emnu', 'en', NULL, NULL),
(1855, 'admin.menu.create', 'Create new menu', 'admin.emnu', 'en', NULL, NULL),
(1856, 'admin.menu.edit', 'Edit menu', 'admin.emnu', 'en', NULL, NULL),
(1857, 'admin.menu.error_have_child', 'Need to delete the internal menus before doing this!', 'admin.emnu', 'en', NULL, NULL),
(1858, 'admin.menu.parent', 'Parent', 'admin.emnu', 'en', NULL, NULL),
(1859, 'admin.menu.title', 'Title', 'admin.emnu', 'en', NULL, NULL),
(1860, 'admin.menu.icon', 'Icon', 'admin.emnu', 'en', NULL, NULL),
(1861, 'admin.menu.uri', 'URI', 'admin.emnu', 'en', NULL, NULL),
(1862, 'admin.menu.roles', 'Roles', 'admin.emnu', 'en', NULL, NULL),
(1863, 'admin.menu.permissions', 'Permissions', 'admin.emnu', 'en', NULL, NULL),
(1864, 'admin.menu.create_success', 'Create new item success!', 'admin.emnu', 'en', NULL, NULL),
(1865, 'admin.menu.edit_success', 'Edit item success!', 'admin.emnu', 'en', NULL, NULL),
(1866, 'admin.menu.sort', 'Sort', 'admin.emnu', 'en', NULL, NULL),
(1867, 'email.admin.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en', NULL, NULL),
(1868, 'email.admin.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en', NULL, NULL),
(1869, 'email.admin.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en', NULL, NULL),
(1870, 'email.admin.forgot_password', 'Send email forgot', 'email.admin', 'en', NULL, NULL),
(1871, 'email.admin.welcome_customer', 'Send email welcome', 'email.admin', 'en', NULL, NULL),
(1872, 'email.admin.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en', NULL, NULL),
(1873, 'email.admin.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en', NULL, NULL),
(1874, 'email.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en', NULL, NULL),
(1875, 'email.admin.other', 'Other', 'email.admin', 'en', NULL, NULL),
(1876, 'email.admin.customer_verify', 'Send account verification email', 'email.admin', 'en', NULL, NULL),
(1877, 'email.admin.order_success_to_admin', 'Mengirim pesanan yang berhasil ke admin', 'email.admin', 'vi', NULL, NULL),
(1878, 'email.admin.order_success_to_cutomer_pdf', 'Kirim pesanan yang berhasil ke pelanggan dengan PDF', 'email.admin', 'vi', NULL, NULL),
(1879, 'email.admin.order_success_to_cutomer', 'Kirim pesanan yang berhasil ke pelanggan', 'email.admin', 'vi', NULL, NULL),
(1880, 'email.admin.forgot_password', 'Mengirim email yang lupa kata sandi Anda', 'email.admin', 'vi', NULL, NULL),
(1881, 'email.admin.welcome_customer', 'Kirim email selamat datang', 'email.admin', 'vi', NULL, NULL),
(1882, 'email.admin.contact_to_customer', 'Mengirim surat formulir kontak kepada pelanggan', 'email.admin', 'vi', NULL, NULL),
(1883, 'email.admin.contact_to_admin', 'Mengirim email formulir kontak ke admin', 'email.admin', 'vi', NULL, NULL),
(1884, 'email.email_action_queue', 'Surat melalui antrean <span class=\"text-red\">(*)</span>', 'email.admin', 'vi', NULL, NULL),
(1885, 'email.admin.config_smtp', 'Konfigurasi SMTP', 'email.admin', 'vi', NULL, NULL),
(1886, 'email.admin.other', 'Tipe lainnya', 'email.admin', 'vi', NULL, NULL),
(1887, 'email.admin.customer_verify', 'Mengirim email autentikasi akun', 'email.admin', 'vi', NULL, NULL),
(1888, 'email.admin.config_mode', 'Config mode', 'email.admin', 'en', NULL, NULL),
(1889, 'email.admin.config_smtp', 'Config SMTP', 'email.admin', 'en', NULL, NULL),
(1890, 'email.admin.config_mode', 'Konfigurasi mode', 'email.admin', 'vi', NULL, NULL),
(1891, 'email.email_action.type', 'Action type', 'email.admin', 'en', NULL, NULL),
(1892, 'email.email_action.mode', 'Action mode', 'email.admin', 'en', NULL, NULL),
(1893, 'email.email_action.sort', 'Action sort', 'email.admin', 'en', NULL, NULL),
(1894, 'email.email_action.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en', NULL, NULL),
(1895, 'email.email_action.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en', NULL, NULL),
(1896, 'email.email_action.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en', NULL, NULL),
(1897, 'email.email_action.forgot_password', 'Send email forgot', 'email.admin', 'en', NULL, NULL),
(1898, 'email.email_action.customer_verify', 'Customer verification', 'email.admin', 'en', NULL, NULL),
(1899, 'email.email_action.welcome_customer', 'Send email welcome', 'email.admin', 'en', NULL, NULL),
(1900, 'email.email_action.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en', NULL, NULL),
(1901, 'email.email_action.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en', NULL, NULL),
(1902, 'email.email_action.email_action_mode', 'ON/OFF send mail', 'email.admin', 'en', NULL, NULL),
(1903, 'email.email_action.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en', NULL, NULL),
(1904, 'email.email_action.email_action_smtp_mode', 'SMTP mode', 'email.admin', 'en', NULL, NULL),
(1905, 'email.email_action.config_smtp', 'Config SMTP', 'email.admin', 'en', NULL, NULL),
(1906, 'email.email_action.type', 'Tipe surat', 'email.admin', 'vi', NULL, NULL),
(1907, 'email.email_action.mode', 'Mode', 'email.admin', 'vi', NULL, NULL),
(1908, 'email.email_action.sort', 'Atur', 'email.admin', 'vi', NULL, NULL),
(1909, 'email.email_action.order_success_to_admin', 'Mengirim pesanan yang berhasil ke admin', 'email.admin', 'vi', NULL, NULL),
(1910, 'email.email_action.order_success_to_cutomer_pdf', 'Kirim pesanan yang berhasil ke pelanggan dengan PDF', 'email.admin', 'vi', NULL, NULL),
(1911, 'email.email_action.order_success_to_cutomer', 'Kirim pesanan yang berhasil ke pelanggan', 'email.admin', 'vi', NULL, NULL),
(1912, 'email.email_action.forgot_password', 'Mengirim email yang lupa kata sandi Anda', 'email.admin', 'vi', NULL, NULL),
(1913, 'email.email_action.welcome_customer', 'Kirim email selamat datang', 'email.admin', 'vi', NULL, NULL),
(1914, 'email.email_action.contact_to_customer', 'Mengirim surat formulir kontak kepada tamu', 'email.admin', 'vi', NULL, NULL),
(1915, 'email.email_action.contact_to_admin', 'Mengirim email formulir kontak ke admin', 'email.admin', 'vi', NULL, NULL),
(1916, 'email.email_action.email_action_mode', 'Menonaktifkan/membuka surat', 'email.admin', 'vi', NULL, NULL),
(1917, 'email.email_action.email_action_queue', 'Surat melalui antrean <span class=\"text-red\">(*)</span>', 'email.admin', 'vi', NULL, NULL),
(1918, 'email.email_action.email_action_smtp_mode', 'Menggunakan SMTP', 'email.admin', 'vi', NULL, NULL),
(1919, 'email.email_action.config_smtp', 'Konfigurasi SMTP', 'email.admin', 'vi', NULL, NULL),
(1920, 'email.email_action.customer_verify', 'Mengirim email autentikasi akun', 'email.admin', 'vi', NULL, NULL),
(1921, 'email.email_action.smtp_mode', 'Menggunakan konfigurasi SMTP', 'email.admin', 'vi', NULL, NULL),
(1922, 'email.email_action.smtp_mode', 'Use SMTP config', 'email.admin', 'en', NULL, NULL),
(1923, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Email tidak akan dikirim secara langsung, tetapi melalui antrian. Anda perlu menginstal \"artisan schedule:run\" sebelum,  detail <a href=\"https://s-cart.org/docs/master/email.html\">SINI</a>', 'email.admin', 'vi', NULL, NULL),
(1924, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Emails will not be sent directly, but through a queue. You need to set up \"artisan schedule: run\" first, details <a href=\"https://s-cart.org/docs/master/email.html\">HERE</a>', 'email.admin', 'en', NULL, NULL),
(1925, 'email.config_smtp.smtp_host', 'SMTP host', 'email.admin', 'en', NULL, NULL),
(1926, 'email.config_smtp.smtp_user', 'SMTP user', 'email.admin', 'en', NULL, NULL),
(1927, 'email.config_smtp.smtp_password', 'SMTP password', 'email.admin', 'en', NULL, NULL),
(1928, 'email.config_smtp.smtp_security', 'SMTP security', 'email.admin', 'en', NULL, NULL),
(1929, 'email.config_smtp.smtp_port', 'SMTP port', 'email.admin', 'en', NULL, NULL),
(1930, 'email.config_smtp.smtp_name', 'Email name', 'email.admin', 'en', NULL, NULL),
(1931, 'email.config_smtp.smtp_from', 'Send mail from', 'email.admin', 'en', NULL, NULL),
(1932, 'email.config_smtp.smtp_host', 'Server SMTP', 'email.admin', 'vi', NULL, NULL),
(1933, 'email.config_smtp.smtp_user', 'Akun SMTP', 'email.admin', 'vi', NULL, NULL),
(1934, 'email.config_smtp.smtp_password', 'Kata sandi SMTP', 'email.admin', 'vi', NULL, NULL),
(1935, 'email.config_smtp.smtp_security', 'Keamanan SMTP', 'email.admin', 'vi', NULL, NULL),
(1936, 'email.config_smtp.smtp_port', 'Konektor SMTP', 'email.admin', 'vi', NULL, NULL),
(1937, 'email.config_smtp.smtp_name', 'Nama email', 'email.admin', 'vi', NULL, NULL),
(1938, 'email.config_smtp.smtp_from', 'Alamat email terkirim', 'email.admin', 'vi', NULL, NULL),
(1939, 'email.welcome', 'Selamat datang!', 'email', 'vi', NULL, NULL),
(1940, 'email.welcome', 'Welcome!', 'email', 'en', NULL, NULL),
(1941, 'email.msg_goodbye', 'Hormat!', 'email', 'vi', NULL, NULL),
(1942, 'email.msg_goodbye', 'Best regards!', 'email', 'en', NULL, NULL),
(1943, 'email.forgot_password.title', 'Hello!', 'email.forgot_password', 'en', NULL, NULL),
(1944, 'email.forgot_password.reset_button', 'Reset password', 'email.forgot_password', 'en', NULL, NULL),
(1945, 'email.forgot_password.reason_sendmail', 'You are receiving this email because we received a password reset request for your account.', 'email.forgot_password', 'en', NULL, NULL),
(1946, 'email.forgot_password.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not request a password reset, no further action is required.', 'email.forgot_password', 'en', NULL, NULL),
(1947, 'email.forgot_password.note_access_link', 'If you’re having trouble clicking the \":reset_button\" button, copy and paste the URL below into your web browser :url', 'email.forgot_password', 'en', NULL, NULL),
(1948, 'email.forgot_password.title', 'Halo!', 'email.forgot_password', 'vi', NULL, NULL),
(1949, 'email.forgot_password.reset_button', 'Membuat ulang kata sandi', 'email.forgot_password', 'vi', NULL, NULL),
(1950, 'email.forgot_password.reason_sendmail', 'Anda menerima email ini karena kami menerima permintaan untuk mengatur ulang kata sandi untuk akun Anda.', 'email.forgot_password', 'vi', NULL, NULL),
(1951, 'email.forgot_password.note_sendmail', 'Tautan kata sandi ini akan kedaluwarsa dalam :hitung menit. <br><br>Jika Anda tidak meminta pengaturan ulang kata sandi, Anda tidak perlu melakukan apa pun.<br>', 'email.forgot_password', 'vi', NULL, NULL),
(1952, 'email.forgot_password.note_access_link', 'Jika Anda mengalami kesulitan mengklik tombol \":reset_button\", salin dan tempel URL di bawah ini ke browser web Anda :url', 'email.forgot_password', 'vi', NULL, NULL),
(1953, 'email.verification_content.title', 'Hello!', 'email.verification_content', 'en', NULL, NULL),
(1954, 'email.verification_content.button', 'Verify Email Address', 'email.verification_content', 'en', NULL, NULL),
(1955, 'email.verification_content.reason_sendmail', 'Please click the button below to verify your email address.', 'email.verification_content', 'en', NULL, NULL),
(1956, 'email.verification_content.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not create an account, no further action is required.', 'email.verification_content', 'en', NULL, NULL),
(1957, 'email.verification_content.note_access_link', 'If you’re having trouble clicking the \":button\" button, copy and paste the URL below into your web browser :url', 'email.verification_content', 'en', NULL, NULL),
(1958, 'email.verification_content.title', 'Halo!', 'email.verification_content', 'vi', NULL, NULL),
(1959, 'email.verification_content.button', 'Konfirmasi alamat email', 'email.verification_content', 'vi', NULL, NULL),
(1960, 'email.verification_content.reason_sendmail', 'Silakan klik tombol di bawah ini untuk memverifikasi alamat email Anda.', 'email.verification_content', 'vi', NULL, NULL),
(1961, 'email.verification_content.note_sendmail', 'Tautan kata sandi ini akan kedaluwarsa dalam :hitung menit. <br><br>Jika Anda belum membuat akun, Anda tidak perlu mengambil tindakan lebih lanjut.', 'email.verification_content', 'vi', NULL, NULL),
(1962, 'email.verification_content.note_access_link', 'Jika Anda mengalami kesulitan mengklik tombol \":button\", salin dan tempel URL di bawah ini ke browser web Anda: url', 'email.verification_content', 'vi', NULL, NULL),
(1963, 'email.order.title_1', 'Hi! Website :website has new order!', 'email.order', 'en', NULL, NULL),
(1964, 'email.order.order_id', 'Order ID', 'email.order', 'en', NULL, NULL),
(1965, 'email.order.toname', 'Customer name', 'email.order', 'en', NULL, NULL),
(1966, 'email.order.address', 'Address', 'email.order', 'en', NULL, NULL),
(1967, 'email.order.phone', 'Phone', 'email.order', 'en', NULL, NULL),
(1968, 'email.order.note', 'Note', 'email.order', 'en', NULL, NULL),
(1969, 'email.order.order_detail', 'Order detail', 'email.order', 'en', NULL, NULL),
(1970, 'email.order.sort', 'No.', 'email.order', 'en', NULL, NULL),
(1971, 'email.order.sku', 'SKU', 'email.order', 'en', NULL, NULL),
(1972, 'email.order.price', 'Price', 'email.order', 'en', NULL, NULL),
(1973, 'email.order.name', 'Name', 'email.order', 'en', NULL, NULL),
(1974, 'email.order.qty', 'Qty', 'email.order', 'en', NULL, NULL),
(1975, 'email.order.total', 'Total', 'email.order', 'en', NULL, NULL),
(1976, 'email.order.sub_total', 'Sub total', 'email.order', 'en', NULL, NULL),
(1977, 'email.order.shipping_fee', 'Shipping fee', 'email.order', 'en', NULL, NULL),
(1978, 'email.order.discount', 'Discount', 'email.order', 'en', NULL, NULL),
(1979, 'email.order.order_total', 'Order total', 'email.order', 'en', NULL, NULL),
(1980, 'email.order.title_1', 'Halo! :Situs web pesanan baru!', 'email.order', 'vi', NULL, NULL),
(1981, 'email.order.order_id', 'Kode pesanan', 'email.order', 'vi', NULL, NULL),
(1982, 'email.order.toname', 'Nama pelanggan', 'email.order', 'vi', NULL, NULL),
(1983, 'email.order.address', 'Alamat', 'email.order', 'vi', NULL, NULL),
(1984, 'email.order.phone', 'Telepon', 'email.order', 'vi', NULL, NULL),
(1985, 'email.order.note', 'Catatan', 'email.order', 'vi', NULL, NULL),
(1986, 'email.order.order_detail', 'Detail pesanan', 'email.order', 'vi', NULL, NULL),
(1987, 'email.order.sort', 'Perintah', 'email.order', 'vi', NULL, NULL),
(1988, 'email.order.sku', 'SKU', 'email.order', 'vi', NULL, NULL),
(1989, 'email.order.price', 'Harga', 'email.order', 'vi', NULL, NULL),
(1990, 'email.order.name', 'Nama', 'email.order', 'vi', NULL, NULL),
(1991, 'email.order.qty', 'Jumlah', 'email.order', 'vi', NULL, NULL),
(1992, 'email.order.total', 'Jumlah', 'email.order', 'vi', NULL, NULL),
(1993, 'email.order.sub_total', 'Uang barang', 'email.order', 'vi', NULL, NULL),
(1994, 'email.order.shipping_fee', 'Biaya pengiriman', 'email.order', 'vi', NULL, NULL),
(1995, 'email.order.discount', 'Diskon', 'email.order', 'vi', NULL, NULL),
(1996, 'email.order.order_total', 'Total pesanan', 'email.order', 'vi', NULL, NULL),
(1997, 'email.order.email_subject_customer', 'Memiliki pesanan baru', 'email.order', 'vi', NULL, NULL),
(1998, 'email.order.email_subject_customer', 'Have a new order', 'email.order', 'en', NULL, NULL),
(1999, 'email.order.email_subject_to_admin', 'Memiliki pesanan baru', 'email.order', 'vi', NULL, NULL),
(2000, 'email.order.email_subject_to_admin', 'Have a new order', 'email.order', 'en', NULL, NULL),
(2001, 'email.welcome_customer.title', 'Selamat datang', 'email.welcome_customer', 'vi', NULL, NULL),
(2002, 'email.welcome_customer.title', 'Welcome', 'email.welcome_customer', 'en', NULL, NULL),
(2003, 'admin.store_block.list', 'Daftar blokir', 'admin.store_block', 'vi', NULL, NULL),
(2004, 'admin.store_block.list', 'Block list', 'admin.store_block', 'en', NULL, NULL),
(2005, 'admin.store_block.name', 'Nama', 'admin.store_block', 'vi', NULL, NULL),
(2006, 'admin.store_block.position', 'Tempat', 'admin.store_block', 'vi', NULL, NULL),
(2007, 'admin.store_block.page', 'Halaman', 'admin.store_block', 'vi', NULL, NULL),
(2008, 'admin.store_block.type', 'Jenis', 'admin.store_block', 'vi', NULL, NULL),
(2009, 'admin.store_block.text', 'Puas', 'admin.store_block', 'vi', NULL, NULL),
(2010, 'admin.store_block.status', 'Status', 'admin.store_block', 'vi', NULL, NULL),
(2011, 'admin.store_block.name', 'Name', 'admin.store_block', 'en', NULL, NULL),
(2012, 'admin.store_block.position', 'Position', 'admin.store_block', 'en', NULL, NULL),
(2013, 'admin.store_block.page', 'Page', 'admin.store_block', 'en', NULL, NULL),
(2014, 'admin.store_block.type', 'Type', 'admin.store_block', 'en', NULL, NULL),
(2015, 'admin.store_block.text', 'Text', 'admin.store_block', 'en', NULL, NULL),
(2016, 'admin.store_block.status', 'Status', 'admin.store_block', 'en', NULL, NULL),
(2017, 'admin.store_block.sort', 'Sort', 'admin.store_block', 'en', NULL, NULL),
(2018, 'admin.store_block.sort', 'Atur', 'admin.store_block', 'vi', NULL, NULL),
(2019, 'admin.store_block.add_new_title', 'Add layout', 'admin.store_block', 'en', NULL, NULL),
(2020, 'admin.store_block.add_new_des', 'Create a new layout', 'admin.store_block', 'en', NULL, NULL),
(2021, 'admin.store_block.select_position', 'Select position', 'admin.store_block', 'en', NULL, NULL),
(2022, 'admin.store_block.select_page', 'Select page', 'admin.store_block', 'en', NULL, NULL),
(2023, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'en', NULL, NULL),
(2024, 'admin.store_block.helper_view', 'View files are in \"resources/views/templates/:template/block\" directory.', 'admin.store_block', 'en', NULL, NULL),
(2025, 'admin.store_block.helper_module', 'File in \"app/Plugins/Block\". Module must have render() method available to display content.', 'admin.store_block', 'en', NULL, NULL),
(2026, 'admin.store_block.add_new_title', 'Membuat tata letak', 'admin.store_block', 'vi', NULL, NULL),
(2027, 'admin.store_block.add_new_des', 'Membuat tata letak baru', 'admin.store_block', 'vi', NULL, NULL),
(2028, 'admin.store_block.select_position', 'Memilih lokasi', 'admin.store_block', 'vi', NULL, NULL),
(2029, 'admin.store_block.select_page', 'Memilih halaman', 'admin.store_block', 'vi', NULL, NULL),
(2030, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'vi', NULL, NULL),
(2031, 'admin.store_block.helper_view', 'Berkas dalam folder \"resources/views/templates/:template/block\".', 'admin.store_block', 'vi', NULL, NULL),
(2032, 'admin.store_block.helper_module', 'File di \"app/Plugins/Block\". Modul harus memiliki fungsi render().', 'admin.store_block', 'vi', NULL, NULL),
(2033, 'admin.log.list', 'Daftar log', 'admin.log', 'vi', NULL, NULL),
(2034, 'admin.log.list', 'Logs list', 'admin.log', 'en', NULL, NULL),
(2035, 'admin.log.user', 'Pengguna', 'admin.log', 'vi', NULL, NULL),
(2036, 'admin.log.user', 'User', 'admin.log', 'en', NULL, NULL),
(2037, 'admin.log.method', 'Prosedur', 'admin.log', 'vi', NULL, NULL),
(2038, 'admin.log.path', 'Path', 'admin.log', 'vi', NULL, NULL),
(2039, 'admin.log.ip', 'IP', 'admin.log', 'vi', NULL, NULL),
(2040, 'admin.log.user_agent', 'User agent', 'admin.log', 'vi', NULL, NULL),
(2041, 'admin.log.input', 'Input', 'admin.log', 'vi', NULL, NULL),
(2042, 'admin.log.created_at', 'Waktu', 'admin.log', 'vi', NULL, NULL),
(2043, 'admin.log.method', 'Method', 'admin.log', 'en', NULL, NULL),
(2044, 'admin.log.path', 'Path', 'admin.log', 'en', NULL, NULL),
(2045, 'admin.log.ip', 'IP', 'admin.log', 'en', NULL, NULL),
(2046, 'admin.log.user_agent', 'User agent', 'admin.log', 'en', NULL, NULL),
(2047, 'admin.log.input', 'Input', 'admin.log', 'en', NULL, NULL),
(2048, 'admin.log.created_at', 'Time', 'admin.log', 'en', NULL, NULL),
(2049, 'admin.page.title', 'Judul', 'admin.page', 'vi', NULL, NULL),
(2050, 'admin.page.image', 'Gambar', 'admin.page', 'vi', NULL, NULL),
(2051, 'admin.page.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'vi', NULL, NULL),
(2052, 'admin.page.alias_validate', 'Hingga 100 karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'vi', NULL, NULL),
(2053, 'admin.page.key_validate', 'Gunakan hanya karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" dan \".-_\" ', 'admin.page', 'vi', NULL, NULL),
(2054, 'admin.page.status', 'Status', 'admin.page', 'vi', NULL, NULL),
(2055, 'admin.page.keyword', 'Kata kunci', 'admin.page', 'vi', NULL, NULL),
(2056, 'admin.page.description', 'Menggambarkan', 'admin.page', 'vi', NULL, NULL),
(2057, 'admin.page.content', 'Puas', 'admin.page', 'vi', NULL, NULL),
(2058, 'admin.page.title', 'Title', 'admin.page', 'en', NULL, NULL),
(2059, 'admin.page.image', 'Image', 'admin.page', 'en', NULL, NULL),
(2060, 'admin.page.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'en', NULL, NULL),
(2061, 'admin.page.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'en', NULL, NULL),
(2062, 'admin.page.status', 'Status', 'admin.page', 'en', NULL, NULL),
(2063, 'admin.page.keyword', 'Keyword', 'admin.page', 'en', NULL, NULL),
(2064, 'admin.page.description', 'Description', 'admin.page', 'en', NULL, NULL),
(2065, 'admin.page.content', 'Content', 'admin.page', 'en', NULL, NULL),
(2066, 'admin.page.key_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'en', NULL, NULL),
(2067, 'admin.page.add_new', 'Add new', 'admin.page', 'en', NULL, NULL),
(2068, 'admin.page.add_new_title', 'Add page', 'admin.page', 'en', NULL, NULL),
(2069, 'admin.page.add_new_des', 'Create a new page', 'admin.page', 'en', NULL, NULL),
(2070, 'admin.page.add_new_title', 'Membuat halaman', 'admin.page', 'vi', NULL, NULL),
(2071, 'admin.page.add_new_des', 'Membuat halaman baru', 'admin.page', 'vi', NULL, NULL),
(2072, 'admin.page.choose_image', 'Memilih gambar', 'admin.page', 'vi', NULL, NULL),
(2073, 'admin.page.choose_image', 'Chose image', 'admin.page', 'en', NULL, NULL),
(2074, 'admin.page.list', 'Daftar halaman', 'admin.page', 'vi', NULL, NULL),
(2075, 'admin.page.list', 'Page list', 'admin.page', 'en', NULL, NULL),
(2076, 'admin.page.search_place', 'Menemukan nama', 'admin.page', 'vi', NULL, NULL),
(2077, 'admin.page.search_place', 'Search name', 'admin.page', 'en', NULL, NULL),
(2078, 'admin.news.add_new_title', 'Add new blog', 'admin.news', 'en', NULL, NULL),
(2079, 'admin.news.add_new_des', 'Create a new blog', 'admin.news', 'en', NULL, NULL),
(2080, 'admin.news.title', 'Title', 'admin.news', 'en', NULL, NULL),
(2081, 'admin.news.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'en', NULL, NULL),
(2082, 'admin.news.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'en', NULL, NULL),
(2083, 'admin.news.keyword', 'Keyword', 'admin.news', 'en', NULL, NULL),
(2084, 'admin.news.description', 'Description', 'admin.news', 'en', NULL, NULL),
(2085, 'admin.news.content', 'Content', 'admin.news', 'en', NULL, NULL),
(2086, 'admin.news.image', 'Image', 'admin.news', 'en', NULL, NULL),
(2087, 'admin.news.status', 'Status', 'admin.news', 'en', NULL, NULL),
(2088, 'admin.news.sort', 'Sort', 'admin.news', 'en', NULL, NULL),
(2089, 'admin.news.list', 'Blog/News manager', 'admin.news', 'en', NULL, NULL),
(2090, 'admin.news.edit', 'Edit', 'admin.news', 'en', NULL, NULL),
(2091, 'admin.news.search_place', 'Search title', 'admin.news', 'en', NULL, NULL),
(2092, 'admin.news.title', 'Judul', 'admin.news', 'vi', NULL, NULL),
(2093, 'admin.news.alias', 'URL Adat <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'vi', NULL, NULL),
(2094, 'admin.news.alias_validate', 'Hingga 100 karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" dan \"-_\" ', 'admin.news', 'vi', NULL, NULL),
(2095, 'admin.news.keyword', 'Kata kunci', 'admin.news', 'vi', NULL, NULL),
(2096, 'admin.news.description', 'Menggambarkan', 'admin.news', 'vi', NULL, NULL),
(2097, 'admin.news.content', 'Puas', 'admin.news', 'vi', NULL, NULL),
(2098, 'admin.news.image', 'Gambar', 'admin.news', 'vi', NULL, NULL),
(2099, 'admin.news.parent', 'Kategori ', 'admin.news', 'vi', NULL, NULL),
(2100, 'admin.news.top', 'Tampilkan prioritas', 'admin.news', 'vi', NULL, NULL),
(2101, 'admin.news.status', 'Status', 'admin.news', 'vi', NULL, NULL),
(2102, 'admin.news.sort', 'Atur', 'admin.news', 'vi', NULL, NULL),
(2103, 'admin.news.list', 'Daftar', 'admin.news', 'vi', NULL, NULL),
(2104, 'admin.news.add_new_title', 'Membuat Blog/Berita', 'admin.news', 'vi', NULL, NULL),
(2105, 'admin.news.add_new_des', 'Membuat Blog/Berita Baru', 'admin.news', 'vi', NULL, NULL),
(2106, 'admin.news.search_place', 'Menemukan judul', 'admin.news', 'vi', NULL, NULL),
(2107, 'admin.length.name', 'Nama', 'admin.length', 'vi', NULL, NULL),
(2108, 'admin.length.name', 'Name', 'admin.length', 'en', NULL, NULL),
(2109, 'admin.length.description', 'Menggambarkan', 'admin.length', 'vi', NULL, NULL),
(2110, 'admin.length.description', 'Description', 'admin.length', 'en', NULL, NULL),
(2111, 'admin.length.list', 'Daftar ukuran', 'admin.length', 'vi', NULL, NULL),
(2112, 'admin.length.list', 'Length list', 'admin.length', 'en', NULL, NULL),
(2113, 'admin.length.add_new_title', 'Tambahkan ukuran', 'admin.length', 'vi', NULL, NULL),
(2114, 'admin.length.add_new_title', 'Add Length', 'admin.length', 'en', NULL, NULL),
(2115, 'admin.weight.name', 'Nama', 'admin.weight', 'vi', NULL, NULL),
(2116, 'admin.weight.name', 'Name', 'admin.weight', 'en', NULL, NULL),
(2117, 'admin.weight.description', 'Menggambarkan', 'admin.weight', 'vi', NULL, NULL),
(2118, 'admin.weight.description', 'Description', 'admin.weight', 'en', NULL, NULL),
(2119, 'admin.weight.list', 'Daftar volume', 'admin.weight', 'vi', NULL, NULL),
(2120, 'admin.weight.list', 'Weight list', 'admin.weight', 'en', NULL, NULL),
(2121, 'admin.weight.add_new_title', 'Tambahkan volume', 'admin.weight', 'vi', NULL, NULL),
(2122, 'admin.weight.add_new_title', 'Add weight', 'admin.weight', 'en', NULL, NULL),
(2123, 'admin.product_property.name', 'Nama', 'admin.product_property', 'vi', NULL, NULL),
(2124, 'admin.product_property.name', 'Name', 'admin.product_property', 'en', NULL, NULL),
(2125, 'admin.product_property.code', 'Kode', 'admin.product_property', 'vi', NULL, NULL),
(2126, 'admin.product_property.code', 'Code', 'admin.product_property', 'en', NULL, NULL),
(2127, 'admin.product_property.list', 'Daftar properti', 'admin.product_property', 'vi', NULL, NULL),
(2128, 'admin.product_property.list', 'Product property list', 'admin.product_property', 'en', NULL, NULL),
(2129, 'admin.product_property.status', 'Status', 'admin.product_property', 'vi', NULL, NULL),
(2130, 'admin.product_property.status', 'Status', 'admin.product_property', 'en', NULL, NULL),
(2131, 'admin.product_property.add_new_title', 'Menambahkan properti', 'admin.product_property', 'vi', NULL, NULL),
(2132, 'admin.product_property.add_new_title', 'Add product property', 'admin.product_property', 'en', NULL, NULL),
(2133, 'admin.order_status.name', 'Nama', 'admin.order_status', 'vi', NULL, NULL),
(2134, 'admin.order_status.name', 'Name', 'admin.order_status', 'en', NULL, NULL),
(2135, 'admin.order_status.list', 'Daftar status', 'admin.order_status', 'vi', NULL, NULL),
(2136, 'admin.order_status.list', 'Order status list', 'admin.order_status', 'en', NULL, NULL),
(2137, 'admin.order_status.status', 'Status', 'admin.order_status', 'vi', NULL, NULL),
(2138, 'admin.order_status.status', 'Status', 'admin.order_status', 'en', NULL, NULL),
(2139, 'admin.order_status.add_new_title', 'Tambahkan status', 'admin.order_status', 'vi', NULL, NULL),
(2140, 'admin.order_status.add_new_title', 'Add status', 'admin.order_status', 'en', NULL, NULL),
(2141, 'admin.payment_status.name', 'Nama', 'admin.payment_status', 'vi', NULL, NULL),
(2142, 'admin.payment_status.name', 'Name', 'admin.payment_status', 'en', NULL, NULL),
(2143, 'admin.payment_status.list', 'Daftar status', 'admin.payment_status', 'vi', NULL, NULL),
(2144, 'admin.payment_status.list', 'Payment status list', 'admin.payment_status', 'en', NULL, NULL),
(2145, 'admin.payment_status.status', 'Status', 'admin.payment_status', 'vi', NULL, NULL),
(2146, 'admin.payment_status.status', 'Status', 'admin.payment_status', 'en', NULL, NULL),
(2147, 'admin.payment_status.add_new_title', 'Tambahkan status', 'admin.payment_status', 'vi', NULL, NULL),
(2148, 'admin.payment_status.add_new_title', 'Add status', 'admin.payment_status', 'en', NULL, NULL),
(2149, 'admin.shipping_status.name', 'Nama', 'admin.shipping_status', 'vi', NULL, NULL),
(2150, 'admin.shipping_status.name', 'Name', 'admin.shipping_status', 'en', NULL, NULL),
(2151, 'admin.shipping_status.list', 'Daftar status', 'admin.shipping_status', 'vi', NULL, NULL),
(2152, 'admin.shipping_status.list', 'Shipping status list', 'admin.shipping_status', 'en', NULL, NULL),
(2153, 'admin.shipping_status.status', 'Status', 'admin.shipping_status', 'vi', NULL, NULL),
(2154, 'admin.shipping_status.status', 'Status', 'admin.shipping_status', 'en', NULL, NULL),
(2155, 'admin.shipping_status.add_new_title', 'Tambahkan status', 'admin.shipping_status', 'vi', NULL, NULL),
(2156, 'admin.shipping_status.add_new_title', 'Add status', 'admin.shipping_status', 'en', NULL, NULL),
(2157, 'admin.tax.name', 'Nama', 'admin.tax', 'vi', NULL, NULL),
(2158, 'admin.tax.name', 'Name', 'admin.tax', 'en', NULL, NULL),
(2159, 'admin.tax.value', 'Nilai', 'admin.tax', 'vi', NULL, NULL),
(2160, 'admin.tax.value', 'Value', 'admin.tax', 'en', NULL, NULL),
(2161, 'admin.tax.non_tax', 'Tidak ada pajak', 'admin.tax', 'vi', NULL, NULL),
(2162, 'admin.tax.non_tax', 'None tax', 'admin.tax', 'en', NULL, NULL),
(2163, 'admin.tax.auto', 'Otomatis', 'admin.tax', 'vi', NULL, NULL),
(2164, 'admin.tax.auto', 'Auto', 'admin.tax', 'en', NULL, NULL),
(2165, 'admin.tax.list', 'Daftar pajak', 'admin.tax', 'vi', NULL, NULL),
(2166, 'admin.tax.list', 'Tax list', 'admin.tax', 'en', NULL, NULL),
(2167, 'admin.tax.status', 'Status', 'admin.tax', 'vi', NULL, NULL),
(2168, 'admin.tax.status', 'Status', 'admin.tax', 'en', NULL, NULL),
(2169, 'admin.tax.add_new_title', 'Lebih banyak pajak', 'admin.tax', 'vi', NULL, NULL),
(2170, 'admin.tax.add_new_title', 'Add tax', 'admin.tax', 'en', NULL, NULL),
(2171, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'en', NULL, NULL),
(2172, 'admin.captcha.captcha_mode', 'Use Captcha', 'admin.captcha', 'en', NULL, NULL),
(2173, 'admin.captcha.captcha_method', 'Captcha method', 'admin.captcha', 'en', NULL, NULL),
(2174, 'admin.captcha.captcha_method_help', 'Select method Captcha', 'admin.captcha', 'en', NULL, NULL),
(2175, 'admin.captcha.captcha_page', 'Captcha', 'admin.captcha', 'en', NULL, NULL),
(2176, 'admin.captcha.captcha_page_help', 'Select page use Captcha', 'admin.captcha', 'en', NULL, NULL),
(2177, 'admin.captcha.captcha_page_contact', 'Contact', 'admin.captcha', 'en', NULL, NULL),
(2178, 'admin.captcha.captcha_page_register', 'Register', 'admin.captcha', 'en', NULL, NULL),
(2179, 'admin.captcha.captcha_page_forgot_password', 'Forgot pasword', 'admin.captcha', 'en', NULL, NULL),
(2180, 'admin.captcha.captcha_page_checkout', 'Checkout', 'admin.captcha', 'en', NULL, NULL),
(2181, 'admin.captcha.captcha_page_review', 'Review product', 'admin.captcha', 'en', NULL, NULL),
(2182, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2183, 'admin.captcha.captcha_mode', 'Gunakan Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2184, 'admin.captcha.captcha_method', 'Tipe Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2185, 'admin.captcha.captcha_method_help', 'Pilih tipe captcha', 'admin.captcha', 'vi', NULL, NULL),
(2186, 'admin.captcha.captcha_page', 'Halaman Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2187, 'admin.captcha.captcha_page_help', 'Pilih halaman yang menggunakan Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2188, 'admin.captcha.captcha_page_contact', 'Kontak', 'admin.captcha', 'vi', NULL, NULL),
(2189, 'admin.captcha.captcha_page_register', 'Daftar', 'admin.captcha', 'vi', NULL, NULL),
(2190, 'admin.captcha.captcha_page_forgot_password', 'Lupa kata sandi', 'admin.captcha', 'vi', NULL, NULL),
(2191, 'admin.captcha.captcha_page_checkout', 'Lakukan pemesanan', 'admin.captcha', 'vi', NULL, NULL),
(2192, 'admin.captcha.captcha_page_review', 'Ulasan produk', 'admin.captcha', 'vi', NULL, NULL),
(2193, 'admin.link.list', 'Daftar tautan', 'admin.link', 'vi', NULL, NULL),
(2194, 'admin.link.list', 'Link list', 'admin.link', 'en', NULL, NULL),
(2195, 'admin.link.name', 'Nama', 'admin.link', 'vi', NULL, NULL),
(2196, 'admin.link.url', 'Jalan', 'admin.link', 'vi', NULL, NULL),
(2197, 'admin.link.target', 'Target', 'admin.link', 'vi', NULL, NULL),
(2198, 'admin.link.group', 'Kelompok', 'admin.link', 'vi', NULL, NULL),
(2199, 'admin.link.sort', 'Perintah', 'admin.link', 'vi', NULL, NULL),
(2200, 'admin.link.status', 'Status', 'admin.link', 'vi', NULL, NULL),
(2201, 'admin.link.add_new', 'Tambahkan baru', 'admin.link', 'vi', NULL, NULL),
(2202, 'admin.link.add_new_title', 'Membuat url', 'admin.link', 'vi', NULL, NULL),
(2203, 'admin.link.add_new_des', 'Membuat url baru', 'admin.link', 'vi', NULL, NULL),
(2204, 'admin.link.select_group', 'Memilih grup', 'admin.link', 'vi', NULL, NULL),
(2205, 'admin.link.select_target', 'Memilih target', 'admin.link', 'vi', NULL, NULL),
(2206, 'admin.link.helper_url', 'Misalnya, url, path, atau route::name', 'admin.link', 'vi', NULL, NULL),
(2207, 'admin.link.name', 'Name', 'admin.link', 'en', NULL, NULL),
(2208, 'admin.link.url', 'Url', 'admin.link', 'en', NULL, NULL),
(2209, 'admin.link.target', 'Target', 'admin.link', 'en', NULL, NULL),
(2210, 'admin.link.group', 'Group', 'admin.link', 'en', NULL, NULL),
(2211, 'admin.link.status', 'Status', 'admin.link', 'en', NULL, NULL),
(2212, 'admin.link.sort', 'Sort', 'admin.link', 'en', NULL, NULL),
(2213, 'admin.link.add_new', 'Add new', 'admin.link', 'en', NULL, NULL),
(2214, 'admin.link.add_new_title', 'Add layout url', 'admin.link', 'en', NULL, NULL),
(2215, 'admin.link.add_new_des', 'Create a new layout url', 'admin.link', 'en', NULL, NULL),
(2216, 'admin.link.select_group', 'Select group', 'admin.link', 'en', NULL, NULL),
(2217, 'admin.link.select_target', 'Select target', 'admin.link', 'en', NULL, NULL),
(2218, 'admin.link.helper_url', 'Ex: url, path, or route::name', 'admin.link', 'en', NULL, NULL),
(2219, 'admin.link_position.menu', 'Menu', 'admin.link', 'vi', NULL, NULL),
(2220, 'admin.link_position.menu_left', 'Menu kiri', 'admin.link', 'vi', NULL, NULL),
(2221, 'admin.link_position.menu_right', 'Menu kanan', 'admin.link', 'vi', NULL, NULL),
(2222, 'admin.link_position.footer', 'Footer', 'admin.link', 'vi', NULL, NULL),
(2223, 'admin.link_position.footer_left', 'Footer kiri', 'admin.link', 'vi', NULL, NULL),
(2224, 'admin.link_position.footer_right', 'Footer kanan', 'admin.link', 'vi', NULL, NULL),
(2225, 'admin.link_position.sidebar', 'Sidebar', 'admin.link', 'vi', NULL, NULL),
(2226, 'admin.link_position.menu', 'Menu', 'admin.link', 'en', NULL, NULL),
(2227, 'admin.link_position.menu_left', 'Menu left', 'admin.link', 'en', NULL, NULL),
(2228, 'admin.link_position.menu_right', 'Menu right', 'admin.link', 'en', NULL, NULL),
(2229, 'admin.link_position.footer', 'Footer', 'admin.link', 'en', NULL, NULL),
(2230, 'admin.link_position.footer_left', 'Footer left', 'admin.link', 'en', NULL, NULL),
(2231, 'admin.link_position.footer_right', 'Footer right', 'admin.link', 'en', NULL, NULL),
(2232, 'admin.link_position.sidebar', 'Sidebar', 'admin.link', 'en', NULL, NULL),
(2233, 'admin.supplier.name', 'Name', 'admin.supplier', 'en', NULL, NULL),
(2234, 'admin.supplier.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'en', NULL, NULL),
(2235, 'admin.supplier.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'en', NULL, NULL),
(2236, 'admin.supplier.email', 'Email', 'admin.supplier', 'en', NULL, NULL),
(2237, 'admin.supplier.phone', 'Phone', 'admin.supplier', 'en', NULL, NULL),
(2238, 'admin.supplier.address', 'Address', 'admin.supplier', 'en', NULL, NULL),
(2239, 'admin.supplier.image', 'Image', 'admin.supplier', 'en', NULL, NULL),
(2240, 'admin.supplier.url', 'Website', 'admin.supplier', 'en', NULL, NULL),
(2241, 'admin.supplier.sort', 'Sort', 'admin.supplier', 'en', NULL, NULL),
(2242, 'admin.supplier.status', 'Status', 'admin.supplier', 'en', NULL, NULL),
(2243, 'admin.supplier.add_new', 'Add new', 'admin.supplier', 'en', NULL, NULL),
(2244, 'admin.supplier.add_new_title', 'Add supplier', 'admin.supplier', 'en', NULL, NULL),
(2245, 'admin.supplier.add_new_des', 'Create a new supplier', 'admin.supplier', 'en', NULL, NULL),
(2246, 'admin.supplier.list', 'Suppliers list', 'admin.supplier', 'en', NULL, NULL),
(2247, 'admin.supplier.name', 'Nama supplier', 'admin.supplier', 'vi', NULL, NULL),
(2248, 'admin.supplier.alias', 'URL Adat <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'vi', NULL, NULL),
(2249, 'admin.supplier.alias_validate', 'Hingga 100 karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" dan \"-_\" ', 'admin.supplier', 'vi', NULL, NULL),
(2250, 'admin.supplier.email', 'Email', 'admin.supplier', 'vi', NULL, NULL),
(2251, 'admin.supplier.phone', 'Nomor telepon', 'admin.supplier', 'vi', NULL, NULL),
(2252, 'admin.supplier.address', 'Alamat', 'admin.supplier', 'vi', NULL, NULL),
(2253, 'admin.supplier.image', 'Gambar', 'admin.supplier', 'vi', NULL, NULL),
(2254, 'admin.supplier.url', 'Website', 'admin.supplier', 'vi', NULL, NULL),
(2255, 'admin.supplier.sort', 'Atur', 'admin.supplier', 'vi', NULL, NULL),
(2256, 'admin.supplier.status', 'Status', 'admin.supplier', 'vi', NULL, NULL),
(2257, 'admin.supplier.add_new_title', 'Membuat supplier', 'admin.supplier', 'vi', NULL, NULL),
(2258, 'admin.supplier.add_new_des', 'Membuat supplier baru', 'admin.supplier', 'vi', NULL, NULL),
(2259, 'admin.supplier.list', 'Daftar supplier', 'admin.supplier', 'vi', NULL, NULL),
(2260, 'admin.supplier.search_place', 'Menemukan nama atau email', 'admin.supplier', 'vi', NULL, NULL),
(2261, 'admin.supplier.search_place', 'Search name or email', 'admin.supplier', 'en', NULL, NULL),
(2262, 'admin.role.name', 'Name', 'admin.role', 'en', NULL, NULL),
(2263, 'admin.role.slug', 'Slug', 'admin.role', 'en', NULL, NULL),
(2264, 'admin.role.permission', 'Permission', 'admin.role', 'en', NULL, NULL),
(2265, 'admin.role.http_path', 'HTTP path', 'admin.role', 'en', NULL, NULL),
(2266, 'admin.role.http_method', 'HTTP method', 'admin.role', 'en', NULL, NULL),
(2267, 'admin.role.created_at', 'Created at', 'admin.role', 'en', NULL, NULL),
(2268, 'admin.role.updated_at', 'Updated at', 'admin.role', 'en', NULL, NULL),
(2269, 'admin.role.password_confirmation', 'Confirmation', 'admin.role', 'en', NULL, NULL),
(2270, 'admin.role.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'en', NULL, NULL),
(2271, 'admin.role.list', 'Role manager', 'admin.role', 'en', NULL, NULL),
(2272, 'admin.role.edit', 'Edit', 'admin.role', 'en', NULL, NULL),
(2273, 'admin.role.add_new', 'Add new', 'admin.role', 'en', NULL, NULL),
(2274, 'admin.role.add_new_title', 'Add new role', 'admin.role', 'en', NULL, NULL),
(2275, 'admin.role.add_new_des', 'Create a new role', 'admin.role', 'en', NULL, NULL),
(2276, 'admin.role.select_http_method', 'Select method', 'admin.role', 'en', NULL, NULL),
(2277, 'admin.role.select_permission', 'Select permission', 'admin.role', 'en', NULL, NULL),
(2278, 'admin.role.select_user', 'Select user', 'admin.role', 'en', NULL, NULL),
(2279, 'admin.role.slug', 'Slug', 'admin.role', 'vi', NULL, NULL),
(2280, 'admin.role.name', 'Nama', 'admin.role', 'vi', NULL, NULL),
(2281, 'admin.role.roles', 'Peranan', 'admin.role', 'vi', NULL, NULL),
(2282, 'admin.role.permission', 'Role', 'admin.role', 'vi', NULL, NULL),
(2283, 'admin.role.http_path', 'HTTP path', 'admin.role', 'vi', NULL, NULL),
(2284, 'admin.role.http_method', 'HTTP method', 'admin.role', 'vi', NULL, NULL),
(2285, 'admin.role.created_at', 'Waktu membuat ', 'admin.role', 'vi', NULL, NULL),
(2286, 'admin.role.updated_at', 'Pemutakhiran', 'admin.role', 'vi', NULL, NULL),
(2287, 'admin.role.slug_validate', 'Gunakan hanya karakter dalam grup: \"A-Z\", \"a-z\", \"0-9\" dan \"._-\" ', 'admin.role', 'vi', NULL, NULL),
(2288, 'admin.role.add_new', 'Tambahkan baru', 'admin.role', 'vi', NULL, NULL),
(2289, 'admin.role.add_new_title', 'Membuat izin', 'admin.role', 'vi', NULL, NULL),
(2290, 'admin.role.add_new_des', 'Membuat izin baru', 'admin.role', 'vi', NULL, NULL),
(2291, 'admin.role.select_permission', 'Pilih izin', 'admin.role', 'vi', NULL, NULL),
(2292, 'admin.role.select_user', 'Pilih pengguna', 'admin.role', 'vi', NULL, NULL),
(2293, 'admin.template.import', 'Import Template', 'admin.template', 'en', NULL, NULL),
(2294, 'admin.template.file_format', 'File format', 'admin.template', 'en', NULL, NULL),
(2295, 'admin.template.choose_file', 'Choose File', 'admin.template', 'en', NULL, NULL),
(2296, 'admin.template.import_submit', 'Import', 'admin.template', 'en', NULL, NULL),
(2297, 'admin.template.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.template', 'en', NULL, NULL),
(2298, 'admin.template.error_unzip', 'Error while unzip', 'admin.template', 'en', NULL, NULL),
(2299, 'admin.template.error_upload', 'Error while uploading file', 'admin.template', 'en', NULL, NULL),
(2300, 'admin.template.error_check_config', 'Cannot find config file', 'admin.template', 'en', NULL, NULL),
(2301, 'admin.template.error_config_format', 'The config file is not in the right format', 'admin.template', 'en', NULL, NULL),
(2302, 'admin.template.import_success', 'Import success!', 'admin.template', 'en', NULL, NULL),
(2303, 'admin.template.error_exist', 'Template exist!', 'admin.template', 'en', NULL, NULL),
(2304, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Template</span></a>', 'admin.template', 'en', NULL, NULL),
(2305, 'admin.template.template_more', '<a href=\"https://s-cart.org/en/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.template', 'en', NULL, NULL),
(2306, 'admin.template.manager', 'Template management', 'admin.template', 'en', NULL, NULL),
(2307, 'admin.template.title', 'Template list', 'admin.template', 'en', NULL, NULL),
(2308, 'admin.template.name', 'Template name', 'admin.template', 'en', NULL, NULL),
(2309, 'admin.template.auth', 'Author', 'admin.template', 'en', NULL, NULL),
(2310, 'admin.template.email', 'Email', 'admin.template', 'en', NULL, NULL),
(2311, 'admin.template.website', 'Website', 'admin.template', 'en', NULL, NULL),
(2312, 'admin.template.activated', 'Activated', 'admin.template', 'en', NULL, NULL),
(2313, 'admin.template.inactive', 'Inactive', 'admin.template', 'en', NULL, NULL),
(2314, 'admin.template.download', 'Download', 'admin.template', 'en', NULL, NULL),
(2315, 'admin.template.remove', 'Remove', 'admin.template', 'en', NULL, NULL),
(2316, 'admin.template.status', 'Status', 'admin.template', 'en', NULL, NULL),
(2317, 'admin.template.action', 'Action', 'admin.template', 'en', NULL, NULL),
(2318, 'admin.template.installing', 'Installing', 'admin.template', 'en', NULL, NULL),
(2319, 'admin.template.local', 'Save local', 'admin.template', 'en', NULL, NULL),
(2320, 'admin.template.online', 'From library', 'admin.template', 'en', NULL, NULL),
(2321, 'admin.template.version', 'Version', 'admin.template', 'en', NULL, NULL),
(2322, 'admin.template.link', 'Link', 'admin.template', 'en', NULL, NULL),
(2323, 'admin.template.image', 'Image', 'admin.template', 'en', NULL, NULL),
(2324, 'admin.template.empty', 'Empty template!', 'admin.template', 'en', NULL, NULL),
(2325, 'admin.template.downloaded', 'Downloaded', 'admin.template', 'en', NULL, NULL),
(2326, 'admin.template.rated', 'Rated', 'admin.template', 'en', NULL, NULL),
(2327, 'admin.template.price', 'Price', 'admin.template', 'en', NULL, NULL),
(2328, 'admin.template.free', 'Free', 'admin.template', 'en', NULL, NULL),
(2329, 'admin.template.date', 'Date', 'admin.template', 'en', NULL, NULL),
(2330, 'admin.template.click_here', 'Click here', 'admin.template', 'en', NULL, NULL),
(2331, 'admin.template.located', 'Located', 'admin.template', 'en', NULL, NULL),
(2332, 'admin.template.code', 'Code', 'admin.template', 'en', NULL, NULL),
(2333, 'admin.template.image_demo', 'Image demo', 'admin.template', 'en', NULL, NULL),
(2334, 'admin.template.only_version_current', 'Only this version', 'admin.template', 'en', NULL, NULL),
(2335, 'admin.template.compatible', 'Compatible', 'admin.template', 'en', NULL, NULL),
(2336, 'admin.template.used', 'Template used', 'admin.template', 'en', NULL, NULL),
(2337, 'admin.template.list', 'Template list', 'admin.template', 'en', NULL, NULL),
(2338, 'admin.template.import', 'Impor Antarmuka', 'admin.template', 'vi', NULL, NULL),
(2339, 'admin.template.file_format', 'Contoh file', 'admin.template', 'vi', NULL, NULL),
(2340, 'admin.template.choose_file', 'Pilih file', 'admin.template', 'vi', NULL, NULL),
(2341, 'admin.template.import_submit', 'Import', 'admin.template', 'vi', NULL, NULL),
(2342, 'admin.template.import_note', 'Ada file <span style=\"color:red\">.zip</span>, kapasitas maksimum <span style=\"color:red\">50MB</span>', 'admin.template', 'vi', NULL, NULL),
(2343, 'admin.template.error_unzip', 'Kesalahan saat membuka zip', 'admin.template', 'vi', NULL, NULL),
(2344, 'admin.template.error_upload', 'Galat saat mengunggah file', 'admin.template', 'vi', NULL, NULL),
(2345, 'admin.template.error_check_config', 'Tidak dapat menemukan atau tidak dapat membaca file konfigurasi', 'admin.template', 'vi', NULL, NULL),
(2346, 'admin.template.error_config_format', 'File konfigurasi tidak diformat dengan benar', 'admin.template', 'vi', NULL, NULL),
(2347, 'admin.template.import_success', 'Impor berhasil!', 'admin.template', 'vi', NULL, NULL),
(2348, 'admin.template.error_exist', 'Antarmukanya sudah ada!', 'admin.template', 'vi', NULL, NULL),
(2349, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.template', 'vi', NULL, NULL),
(2350, 'admin.template.template_more', '<a href=\"https://s-cart.org/vi/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download penuh di sini.</a>', 'admin.template', 'vi', NULL, NULL),
(2351, 'admin.template.manager', 'Manajemen antarmuka', 'admin.template', 'vi', NULL, NULL),
(2352, 'admin.template.title', 'Daftar antarmuka', 'admin.template', 'vi', NULL, NULL),
(2353, 'admin.template.name', 'Nama antarmuka', 'admin.template', 'vi', NULL, NULL),
(2354, 'admin.template.email', 'Email', 'admin.template', 'vi', NULL, NULL),
(2355, 'admin.template.website', 'Situs Web', 'admin.template', 'vi', NULL, NULL),
(2356, 'admin.template.activated', 'Aktif', 'admin.template', 'vi', NULL, NULL),
(2357, 'admin.template.inactive', 'Sembunyi', 'admin.template', 'vi', NULL, NULL),
(2358, 'admin.template.download', 'Mengunduh', 'admin.template', 'vi', NULL, NULL),
(2359, 'admin.template.remove', 'Buka', 'admin.template', 'vi', NULL, NULL),
(2360, 'admin.template.status', 'Status', 'admin.template', 'vi', NULL, NULL),
(2361, 'admin.template.action', 'Aksi', 'admin.template', 'vi', NULL, NULL),
(2362, 'admin.template.installing', 'Menginstal', 'admin.template', 'vi', NULL, NULL),
(2363, 'admin.template.local', 'Disimpan di lokal', 'admin.template', 'vi', NULL, NULL),
(2364, 'admin.template.online', 'Unduh dari perpustakaan', 'admin.template', 'vi', NULL, NULL),
(2365, 'admin.template.auth', 'Pembuat', 'admin.template', 'vi', NULL, NULL),
(2366, 'admin.template.version', 'Versi', 'admin.template', 'vi', NULL, NULL),
(2367, 'admin.template.link', 'Tautan', 'admin.template', 'vi', NULL, NULL),
(2368, 'admin.template.image', 'Gambar', 'admin.template', 'vi', NULL, NULL),
(2369, 'admin.template.empty', 'Belum ada template!', 'admin.template', 'vi', NULL, NULL),
(2370, 'admin.template.downloaded', 'Jumlah unduhan', 'admin.template', 'vi', NULL, NULL),
(2371, 'admin.template.rated', 'Menilai', 'admin.template', 'vi', NULL, NULL),
(2372, 'admin.template.price', 'Harga', 'admin.template', 'vi', NULL, NULL),
(2373, 'admin.template.free', 'Free', 'admin.template', 'vi', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(2374, 'admin.template.date', 'Tanggal dibuat', 'admin.template', 'vi', NULL, NULL),
(2375, 'admin.template.located', 'Download', 'admin.template', 'vi', NULL, NULL),
(2376, 'admin.template.code', 'Kode', 'admin.template', 'vi', NULL, NULL),
(2377, 'admin.template.click_here', 'Klik di sini', 'admin.template', 'vi', NULL, NULL),
(2378, 'admin.template.image_demo', 'Pola', 'admin.template', 'vi', NULL, NULL),
(2379, 'admin.template.only_version_current', 'Hanya versi ini', 'admin.template', 'vi', NULL, NULL),
(2380, 'admin.template.compatible', 'Kompatibel', 'admin.template', 'vi', NULL, NULL),
(2381, 'admin.template.used', 'Dalam penggunaan', 'admin.template', 'vi', NULL, NULL),
(2382, 'admin.template.list', 'Daftar template', 'admin.template', 'vi', NULL, NULL),
(2383, 'admin.plugin.compatible', 'Kompatibel', 'admin.plugin', 'vi', NULL, NULL),
(2384, 'admin.plugin.code', 'Kode', 'admin.plugin', 'vi', NULL, NULL),
(2385, 'admin.plugin.name', 'Nama fungsi', 'admin.plugin', 'vi', NULL, NULL),
(2386, 'admin.plugin.sort', 'Perintah', 'admin.plugin', 'vi', NULL, NULL),
(2387, 'admin.plugin.action', 'Aksi', 'admin.plugin', 'vi', NULL, NULL),
(2388, 'admin.plugin.status', 'Status', 'admin.plugin', 'vi', NULL, NULL),
(2389, 'admin.plugin.enable', 'Mengaktifkan', 'admin.plugin', 'vi', NULL, NULL),
(2390, 'admin.plugin.disable', 'Matikan', 'admin.plugin', 'vi', NULL, NULL),
(2391, 'admin.plugin.remove', 'Buka', 'admin.plugin', 'vi', NULL, NULL),
(2392, 'admin.plugin.only_delete_data', 'Hapus data ', 'admin.plugin', 'vi', NULL, NULL),
(2393, 'admin.plugin.install', 'Pasang', 'admin.plugin', 'vi', NULL, NULL),
(2394, 'admin.plugin.config', 'Konfigurasi', 'admin.plugin', 'vi', NULL, NULL),
(2395, 'admin.plugin.actived', 'Aktivitas', 'admin.plugin', 'vi', NULL, NULL),
(2396, 'admin.plugin.disabled', 'Dimatikan', 'admin.plugin', 'vi', NULL, NULL),
(2397, 'admin.plugin.not_install', 'Tidak diinstal', 'admin.plugin', 'vi', NULL, NULL),
(2398, 'admin.plugin.auth', 'Pembuat', 'admin.plugin', 'vi', NULL, NULL),
(2399, 'admin.plugin.version', 'Versi', 'admin.plugin', 'vi', NULL, NULL),
(2400, 'admin.plugin.link', 'Tautan', 'admin.plugin', 'vi', NULL, NULL),
(2401, 'admin.plugin.image', 'Gambar', 'admin.plugin', 'vi', NULL, NULL),
(2402, 'admin.plugin.empty', 'Belum ada!', 'admin.plugin', 'vi', NULL, NULL),
(2403, 'admin.plugin.local', 'Disimpan di lokal', 'admin.plugin', 'vi', NULL, NULL),
(2404, 'admin.plugin.online', 'Unduh dari perpustakaan', 'admin.plugin', 'vi', NULL, NULL),
(2405, 'admin.plugin.downloaded', 'Jumlah unduhan', 'admin.plugin', 'vi', NULL, NULL),
(2406, 'admin.plugin.rated', 'Rate', 'admin.plugin', 'vi', NULL, NULL),
(2407, 'admin.plugin.price', 'Harga', 'admin.plugin', 'vi', NULL, NULL),
(2408, 'admin.plugin.free', 'Gratis', 'admin.plugin', 'vi', NULL, NULL),
(2409, 'admin.plugin.date', 'Tanggal', 'admin.plugin', 'vi', NULL, NULL),
(2410, 'admin.plugin.located', 'Lokasi', 'admin.plugin', 'vi', NULL, NULL),
(2411, 'admin.plugin.only_free', 'Gratis', 'admin.plugin', 'vi', NULL, NULL),
(2412, 'admin.plugin.only_version', 'Versi', 'admin.plugin', 'vi', NULL, NULL),
(2413, 'admin.plugin.all_version', 'Semua versi', 'admin.plugin', 'vi', NULL, NULL),
(2414, 'admin.plugin.sort_price_asc', 'Kenaikan harga', 'admin.plugin', 'vi', NULL, NULL),
(2415, 'admin.plugin.sort_price_desc', 'Harga', 'admin.plugin', 'vi', NULL, NULL),
(2416, 'admin.plugin.sort_rating', 'Rating', 'admin.plugin', 'vi', NULL, NULL),
(2417, 'admin.plugin.sort_download', 'Download', 'admin.plugin', 'vi', NULL, NULL),
(2418, 'admin.plugin.search_keyword', 'Kata kunci', 'admin.plugin', 'vi', NULL, NULL),
(2419, 'admin.plugin.enter_search_keyword', 'Masukkan kata kunci', 'admin.plugin', 'vi', NULL, NULL),
(2420, 'admin.plugin.search_submit', 'Hasil filter', 'admin.plugin', 'vi', NULL, NULL),
(2421, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'vi', NULL, NULL),
(2422, 'admin.plugin.file_format', 'Contoh file', 'admin.plugin', 'vi', NULL, NULL),
(2423, 'admin.plugin.choose_file', 'Pilih file', 'admin.plugin', 'vi', NULL, NULL),
(2424, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'vi', NULL, NULL),
(2425, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'vi', NULL, NULL),
(2426, 'admin.plugin.import_note', 'Ada file <span style=\"color:red\">.zip</span>, kapasitas maksimum <span style=\"color:red\">50MB</span>', 'admin.plugin', 'vi', NULL, NULL),
(2427, 'admin.plugin.error_unzip', 'Kesalahan saat membuka zip', 'admin.plugin', 'vi', NULL, NULL),
(2428, 'admin.plugin.error_upload', 'Galat saat mengunggah file', 'admin.plugin', 'vi', NULL, NULL),
(2429, 'admin.plugin.error_check_config', 'Tidak dapat menemukan atau tidak dapat membaca file konfigurasi', 'admin.plugin', 'vi', NULL, NULL),
(2430, 'admin.plugin.error_config_format', 'File konfigurasi tidak diformat dengan benar', 'admin.plugin', 'vi', NULL, NULL),
(2431, 'admin.plugin.import_success', 'Impor berhasil!', 'admin.plugin', 'vi', NULL, NULL),
(2432, 'admin.plugin.error_exist', 'Plugin sudah ada!', 'admin.plugin', 'vi', NULL, NULL),
(2433, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'vi', NULL, NULL),
(2434, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/vi/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download penuh di sini.</a>', 'admin.plugin', 'vi', NULL, NULL),
(2435, 'admin.plugin.Shipping_plugin', 'Shipping extension', 'admin.plugin', 'en', NULL, NULL),
(2436, 'admin.plugin.Payment_plugin', 'Payment extension', 'admin.plugin', 'en', NULL, NULL),
(2437, 'admin.plugin.Total_plugin', 'Order total extension', 'admin.plugin', 'en', NULL, NULL),
(2438, 'admin.plugin.Fee_plugin', 'Order fee extension', 'admin.plugin', 'en', NULL, NULL),
(2439, 'admin.plugin.Other_plugin', 'Other plugin', 'admin.plugin', 'en', NULL, NULL),
(2440, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'en', NULL, NULL),
(2441, 'admin.plugin.Cms_plugin', 'Cms plugins', 'admin.plugin', 'en', NULL, NULL),
(2442, 'admin.plugin.Block_plugin', 'Block plugins', 'admin.plugin', 'en', NULL, NULL),
(2443, 'admin.plugin.Shipping_plugin', 'Fungsi pengiriman', 'admin.plugin', 'vi', NULL, NULL),
(2444, 'admin.plugin.Payment_plugin', 'Fungsi Pembayaran', 'admin.plugin', 'vi', NULL, NULL),
(2445, 'admin.plugin.Total_plugin', 'Fungsi Nilai pesanan', 'admin.plugin', 'vi', NULL, NULL),
(2446, 'admin.plugin.Fee_plugin', 'Fungsi Biaya pesanan', 'admin.plugin', 'vi', NULL, NULL),
(2447, 'admin.plugin.Other_plugin', 'Fungsi lainnya', 'admin.plugin', 'vi', NULL, NULL),
(2448, 'admin.plugin.Cms_plugin', 'Module CMS', 'admin.plugin', 'vi', NULL, NULL),
(2449, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'vi', NULL, NULL),
(2450, 'admin.plugin.Block_plugin', 'Module Block', 'admin.plugin', 'vi', NULL, NULL),
(2451, 'admin.plugin.compatible', 'Compatible', 'admin.plugin', 'en', NULL, NULL),
(2452, 'admin.plugin.code', 'Code', 'admin.plugin', 'en', NULL, NULL),
(2453, 'admin.plugin.name', 'Name', 'admin.plugin', 'en', NULL, NULL),
(2454, 'admin.plugin.sort', 'Sort', 'admin.plugin', 'en', NULL, NULL),
(2455, 'admin.plugin.action', 'Action', 'admin.plugin', 'en', NULL, NULL),
(2456, 'admin.plugin.status', 'Status', 'admin.plugin', 'en', NULL, NULL),
(2457, 'admin.plugin.enable', 'Enable', 'admin.plugin', 'en', NULL, NULL),
(2458, 'admin.plugin.disable', 'Disable', 'admin.plugin', 'en', NULL, NULL),
(2459, 'admin.plugin.remove', 'Remove', 'admin.plugin', 'en', NULL, NULL),
(2460, 'admin.plugin.only_delete_data', 'Only remove data', 'admin.plugin', 'en', NULL, NULL),
(2461, 'admin.plugin.install', 'Install', 'admin.plugin', 'en', NULL, NULL),
(2462, 'admin.plugin.config', 'Config', 'admin.plugin', 'en', NULL, NULL),
(2463, 'admin.plugin.actived', 'Actived', 'admin.plugin', 'en', NULL, NULL),
(2464, 'admin.plugin.disabled', 'Disabled', 'admin.plugin', 'en', NULL, NULL),
(2465, 'admin.plugin.not_install', 'Not install', 'admin.plugin', 'en', NULL, NULL),
(2466, 'admin.plugin.auth', 'Auth', 'admin.plugin', 'en', NULL, NULL),
(2467, 'admin.plugin.version', 'Version', 'admin.plugin', 'en', NULL, NULL),
(2468, 'admin.plugin.link', 'Link', 'admin.plugin', 'en', NULL, NULL),
(2469, 'admin.plugin.image', 'Image', 'admin.plugin', 'en', NULL, NULL),
(2470, 'admin.plugin.empty', 'Empty extension!', 'admin.plugin', 'en', NULL, NULL),
(2471, 'admin.plugin.local', 'Save local', 'admin.plugin', 'en', NULL, NULL),
(2472, 'admin.plugin.online', 'From library', 'admin.plugin', 'en', NULL, NULL),
(2473, 'admin.plugin.downloaded', 'Downloaded', 'admin.plugin', 'en', NULL, NULL),
(2474, 'admin.plugin.rated', 'Rated', 'admin.plugin', 'en', NULL, NULL),
(2475, 'admin.plugin.price', 'Price', 'admin.plugin', 'en', NULL, NULL),
(2476, 'admin.plugin.free', 'Free', 'admin.plugin', 'en', NULL, NULL),
(2477, 'admin.plugin.date', 'Date', 'admin.plugin', 'en', NULL, NULL),
(2478, 'admin.plugin.located', 'Located', 'admin.plugin', 'en', NULL, NULL),
(2479, 'admin.plugin.only_free', 'Is free', 'admin.plugin', 'en', NULL, NULL),
(2480, 'admin.plugin.only_version', 'Only version', 'admin.plugin', 'en', NULL, NULL),
(2481, 'admin.plugin.all_version', 'All version', 'admin.plugin', 'en', NULL, NULL),
(2482, 'admin.plugin.sort_price_asc', 'Price asc', 'admin.plugin', 'en', NULL, NULL),
(2483, 'admin.plugin.sort_price_desc', 'Price desc', 'admin.plugin', 'en', NULL, NULL),
(2484, 'admin.plugin.sort_rating', 'Rating', 'admin.plugin', 'en', NULL, NULL),
(2485, 'admin.plugin.sort_download', 'Download', 'admin.plugin', 'en', NULL, NULL),
(2486, 'admin.plugin.search_keyword', 'Keyword', 'admin.plugin', 'en', NULL, NULL),
(2487, 'admin.plugin.enter_search_keyword', 'Enter keyword', 'admin.plugin', 'en', NULL, NULL),
(2488, 'admin.plugin.search_submit', 'Filter result', 'admin.plugin', 'en', NULL, NULL),
(2489, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'en', NULL, NULL),
(2490, 'admin.plugin.file_format', 'File format', 'admin.plugin', 'en', NULL, NULL),
(2491, 'admin.plugin.choose_file', 'Choose File', 'admin.plugin', 'en', NULL, NULL),
(2492, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'en', NULL, NULL),
(2493, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'en', NULL, NULL),
(2494, 'admin.plugin.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.plugin', 'en', NULL, NULL),
(2495, 'admin.plugin.error_unzip', 'Error while unzip', 'admin.plugin', 'en', NULL, NULL),
(2496, 'admin.plugin.error_upload', 'Error while uploading file', 'admin.plugin', 'en', NULL, NULL),
(2497, 'admin.plugin.error_check_config', 'Cannot find config file', 'admin.plugin', 'en', NULL, NULL),
(2498, 'admin.plugin.error_config_format', 'The config file is not in the right format', 'admin.plugin', 'en', NULL, NULL),
(2499, 'admin.plugin.import_success', 'Import success!', 'admin.plugin', 'en', NULL, NULL),
(2500, 'admin.plugin.error_exist', 'Plugin exist!', 'admin.plugin', 'en', NULL, NULL),
(2501, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'en', NULL, NULL),
(2502, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/en/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.plugin', 'en', NULL, NULL),
(2503, 'admin.plugin.install_success', 'Installed successfully', 'admin.plugin', 'en', NULL, NULL),
(2504, 'admin.plugin.install_faild', 'Installation failed', 'admin.plugin', 'en', NULL, NULL),
(2505, 'admin.plugin.table_exist', 'Table :table already exists', 'admin.plugin', 'en', NULL, NULL),
(2506, 'admin.plugin.plugin_exist', 'This plugin already exists', 'admin.plugin', 'en', NULL, NULL),
(2507, 'admin.plugin.action_error', 'There was an error while :action', 'admin.plugin', 'en', NULL, NULL),
(2508, 'admin.plugin.install_success', 'Instalasi yang berhasil', 'admin.plugin', 'vi', NULL, NULL),
(2509, 'admin.plugin.install_faild', 'Instalasi gagal', 'admin.plugin', 'vi', NULL, NULL),
(2510, 'admin.plugin.table_exist', 'Tabel sudah ada.', 'admin.plugin', 'vi', NULL, NULL),
(2511, 'admin.plugin.plugin_exist', 'Plugin ini sudah ada.', 'admin.plugin', 'vi', NULL, NULL),
(2512, 'admin.plugin.action_error', 'Ada kesalahan selama aksi.', 'admin.plugin', 'vi', NULL, NULL),
(2513, 'admin.chart.static_month', 'Statistik dalam 12 bulan', 'admin.chart', 'vi', NULL, NULL),
(2514, 'admin.chart.static_30_day', 'Statistik dalam 1 bulan', 'admin.chart', 'vi', NULL, NULL),
(2515, 'admin.chart.static_month_help', 'Data komparatif sama dengan jumlah total pesanan, unit Bit', 'admin.chart', 'vi', NULL, NULL),
(2516, 'admin.chart.amount', 'Jumlah total (Bit)', 'admin.chart', 'vi', NULL, NULL),
(2517, 'admin.chart.order', 'Total pesanan', 'admin.chart', 'vi', NULL, NULL),
(2518, 'admin.chart.static_country', 'Pesan menurut negara', 'admin.chart', 'vi', NULL, NULL),
(2519, 'admin.chart.country', 'Negara', 'admin.chart', 'vi', NULL, NULL),
(2520, 'admin.chart.static_month', 'Statistics for 12 months', 'admin.chart', 'en', NULL, NULL),
(2521, 'admin.chart.static_30_day', 'Statistics for 30 days', 'admin.chart', 'en', NULL, NULL),
(2522, 'admin.chart.static_month_help', 'The comparison data is equal to the total amount of the order and the Bit units', 'admin.chart', 'en', NULL, NULL),
(2523, 'admin.chart.amount', 'Total amount (Bit)', 'admin.chart', 'en', NULL, NULL),
(2524, 'admin.chart.order', 'Total order', 'admin.chart', 'en', NULL, NULL),
(2525, 'admin.chart.static_country', 'Statistics of orders by country', 'admin.chart', 'en', NULL, NULL),
(2526, 'admin.chart.country', 'Country', 'admin.chart', 'en', NULL, NULL),
(2527, 'admin.chart.static_device', 'Statistics of orders by device', 'admin.chart', 'en', NULL, NULL),
(2528, 'admin.chart.static_device', 'Statistik pesanan berdasarkan perangkat', 'admin.chart', 'vi', NULL, NULL),
(2529, 'admin.chart.static_count_order', 'Statistics of count orders', 'admin.chart', 'en', NULL, NULL),
(2530, 'admin.chart.static_count_order', 'Statistik total pesanan', 'admin.chart', 'vi', NULL, NULL),
(2531, 'admin.chart.device', 'Device type', 'admin.chart', 'en', NULL, NULL),
(2532, 'admin.chart.device', 'Tipe perangkat', 'admin.chart', 'vi', NULL, NULL),
(2533, 'admin.maintain.title', 'Maintenance page', 'admin.maintain', 'en', NULL, NULL),
(2534, 'admin.maintain.content', 'Maintenance content of the store', 'admin.maintain', 'en', NULL, NULL),
(2535, 'admin.maintain.description', 'Description', 'admin.maintain', 'en', NULL, NULL),
(2536, 'admin.maintain.description_note', 'Maintenance note', 'admin.maintain', 'en', NULL, NULL),
(2537, 'admin.maintain.title', 'Halaman Pemeliharaan', 'admin.maintain', 'vi', NULL, NULL),
(2538, 'admin.maintain.content', 'Menyimpan konten pemeliharaan', 'admin.maintain', 'vi', NULL, NULL),
(2539, 'admin.maintain.description', 'Puas', 'admin.maintain', 'vi', NULL, NULL),
(2540, 'admin.maintain.description_note', 'Catatan pemeliharaan', 'admin.maintain', 'vi', NULL, NULL),
(2541, 'admin.seo.config', 'Konfigurasi SEO', 'admin.seo', 'vi', NULL, NULL),
(2542, 'admin.seo.config', 'SEO config', 'admin.seo', 'en', NULL, NULL),
(2543, 'admin.seo.url_seo_lang', 'Menambahkan bahasa pada URL', 'admin.seo', 'vi', NULL, NULL),
(2544, 'admin.seo.url_seo_lang', 'Add language on URL', 'admin.seo', 'en', NULL, NULL),
(2545, 'admin.dashboard.total_order', 'Total pesanan', 'admin.dashboard', 'vi', NULL, NULL),
(2546, 'admin.dashboard.total_order', 'Order total', 'admin.dashboard', 'en', NULL, NULL),
(2547, 'admin.dashboard.total_product', 'Produk', 'admin.dashboard', 'vi', NULL, NULL),
(2548, 'admin.dashboard.total_product', 'Product total', 'admin.dashboard', 'en', NULL, NULL),
(2549, 'admin.dashboard.total_customer', 'Total pelanggan', 'admin.dashboard', 'vi', NULL, NULL),
(2550, 'admin.dashboard.total_customer', 'Customer total', 'admin.dashboard', 'en', NULL, NULL),
(2551, 'admin.dashboard.total_blog', 'Total blog', 'admin.dashboard', 'vi', NULL, NULL),
(2552, 'admin.dashboard.total_blog', 'Blog total', 'admin.dashboard', 'en', NULL, NULL),
(2553, 'admin.dashboard.order_month', 'Pesanan untuk bulan ini', 'admin.dashboard', 'vi', NULL, NULL),
(2554, 'admin.dashboard.order_month', 'Order in month', 'admin.dashboard', 'en', NULL, NULL),
(2555, 'admin.dashboard.order_year', 'Pesanan untuk tahun ini', 'admin.dashboard', 'vi', NULL, NULL),
(2556, 'admin.dashboard.order_year', 'Order in year', 'admin.dashboard', 'en', NULL, NULL),
(2557, 'admin.dashboard.top_order_new', 'Pesanan baru', 'admin.dashboard', 'vi', NULL, NULL),
(2558, 'admin.dashboard.top_order_new', 'New orders', 'admin.dashboard', 'en', NULL, NULL),
(2559, 'admin.dashboard.top_customer_new', 'Pelanggan baru', 'admin.dashboard', 'vi', NULL, NULL),
(2560, 'admin.dashboard.top_customer_new', 'New customers', 'admin.dashboard', 'en', NULL, NULL),
(2561, 'admin.dashboard.pie_chart', 'Tampilkan bagan pai', 'admin.dashboard', 'vi', NULL, NULL),
(2562, 'admin.dashboard.pie_chart', 'Display pie chart total', 'admin.dashboard', 'en', NULL, NULL),
(2563, 'admin.dashboard.title', 'Halaman Gambaran Umum', 'admin.dashboard', 'vi', NULL, NULL),
(2564, 'admin.dashboard.title', 'Dashboard page', 'admin.dashboard', 'en', NULL, NULL),
(2565, 'admin.dashboard.config_display', 'Mengonfigurasi dasbor admin', 'admin.dashboard', 'vi', NULL, NULL),
(2566, 'admin.dashboard.config_display', 'Config dashboard adminpage', 'admin.dashboard', 'en', NULL, NULL),
(2567, 'admin.layout_page_position.all', 'All Page', 'admin.layout_page_position', 'en', NULL, NULL),
(2568, 'admin.layout_page_position.home', 'Home page', 'admin.layout_page_position', 'en', NULL, NULL),
(2569, 'admin.layout_page_position.shop_home', 'Home shop', 'admin.layout_page_position', 'en', NULL, NULL),
(2570, 'admin.layout_page_position.shop_search', 'Search page', 'admin.layout_page_position', 'en', NULL, NULL),
(2571, 'admin.layout_page_position.vendor_home', 'Store: home', 'admin.layout_page_position', 'en', NULL, NULL),
(2572, 'admin.layout_page_position.store_product_list', 'Store: product list', 'admin.layout_page_position', 'en', NULL, NULL),
(2573, 'admin.layout_page_position.product_list', 'List: product', 'admin.layout_page_position', 'en', NULL, NULL),
(2574, 'admin.layout_page_position.product_detail', 'Detail: product', 'admin.layout_page_position', 'en', NULL, NULL),
(2575, 'admin.layout_page_position.shop_cart', 'Cart: cart, wishlist, compare, checkout', 'admin.layout_page_position', 'en', NULL, NULL),
(2576, 'admin.layout_page_position.shop_auth', 'Auth: login, forgot, register', 'admin.layout_page_position', 'en', NULL, NULL),
(2577, 'admin.layout_page_position.shop_profile', 'Customer profile', 'admin.layout_page_position', 'en', NULL, NULL),
(2578, 'admin.layout_page_position.item_list', 'List: category, brand, supplier', 'admin.layout_page_position', 'en', NULL, NULL),
(2579, 'admin.layout_page_position.item_detail', 'Detail: item', 'admin.layout_page_position', 'en', NULL, NULL),
(2580, 'admin.layout_page_position.news_list', 'List:  Blog/news', 'admin.layout_page_position', 'en', NULL, NULL),
(2581, 'admin.layout_page_position.news_detail', 'Detail: entry Blog', 'admin.layout_page_position', 'en', NULL, NULL),
(2582, 'admin.layout_page_position.content_list', 'List: content CMS', 'admin.layout_page_position', 'en', NULL, NULL),
(2583, 'admin.layout_page_position.content_detail', 'Detail: entry CMS', 'admin.layout_page_position', 'en', NULL, NULL),
(2584, 'admin.layout_page_position.shop_contact', 'Page contact', 'admin.layout_page_position', 'en', NULL, NULL),
(2585, 'admin.layout_page_position.shop_page', 'Other page: about...', 'admin.layout_page_position', 'en', NULL, NULL),
(2586, 'admin.layout_page_position.all', 'Semua halaman', 'admin.layout_page_position', 'vi', NULL, NULL),
(2587, 'admin.layout_page_position.home', 'Halaman beranda', 'admin.layout_page_position', 'vi', NULL, NULL),
(2588, 'admin.layout_page_position.shop_home', 'Belanja Rumah', 'admin.layout_page_position', 'vi', NULL, NULL),
(2589, 'admin.layout_page_position.shop_search', 'Halaman pencarian', 'admin.layout_page_position', 'vi', NULL, NULL),
(2590, 'admin.layout_page_position.vendor_home', 'Toko: halaman beranda', 'admin.layout_page_position', 'vi', NULL, NULL),
(2591, 'admin.layout_page_position.store_product_list', 'Toko: daftar produk', 'admin.layout_page_position', 'vi', NULL, NULL),
(2592, 'admin.layout_page_position.product_list', 'Daftar: produk', 'admin.layout_page_position', 'vi', NULL, NULL),
(2593, 'admin.layout_page_position.product_detail', 'Detail: produk', 'admin.layout_page_position', 'vi', NULL, NULL),
(2594, 'admin.layout_page_position.shop_cart', 'Keranjang: keranjang, daftar keinginan, bandingkan, checkout', 'admin.layout_page_position', 'vi', NULL, NULL),
(2595, 'admin.layout_page_position.shop_auth', 'Otentikasi: login, pendaftaran, lupa kata sandi', 'admin.layout_page_position', 'vi', NULL, NULL),
(2596, 'admin.layout_page_position.shop_profile', 'Akun pelanggan', 'admin.layout_page_position', 'vi', NULL, NULL),
(2597, 'admin.layout_page_position.item_list', 'Daftar item: kategori, merek dagang, pemasok', 'admin.layout_page_position', 'vi', NULL, NULL),
(2598, 'admin.layout_page_position.item_detail', 'Detail: item', 'admin.layout_page_position', 'vi', NULL, NULL),
(2599, 'admin.layout_page_position.news_list', 'Daftar: Posting blog', 'admin.layout_page_position', 'vi', NULL, NULL),
(2600, 'admin.layout_page_position.news_detail', 'Detail: posting blog', 'admin.layout_page_position', 'vi', NULL, NULL),
(2601, 'admin.layout_page_position.content_list', 'Daftar: Artikel CMS', 'admin.layout_page_position', 'vi', NULL, NULL),
(2602, 'admin.layout_page_position.content_detail', 'Detail: Artikel CMS', 'admin.layout_page_position', 'vi', NULL, NULL),
(2603, 'admin.layout_page_position.shop_contact', 'Halaman kontak', 'admin.layout_page_position', 'vi', NULL, NULL),
(2604, 'admin.layout_page_position.shop_page', 'Halaman yang ditulis: pendahuluan...', 'admin.layout_page_position', 'vi', NULL, NULL),
(2605, 'admin.layout_page_block.header', 'Head code :meta, css, javascript,...', 'admin.layout_page_block', 'vi', NULL, NULL),
(2606, 'admin.layout_page_block.top', 'Block Top', 'admin.layout_page_block', 'vi', NULL, NULL),
(2607, 'admin.layout_page_block.bottom', 'Block Bottom', 'admin.layout_page_block', 'vi', NULL, NULL),
(2608, 'admin.layout_page_block.left', 'BlockLeft - Kolom kiri', 'admin.layout_page_block', 'vi', NULL, NULL),
(2609, 'admin.layout_page_block.right', 'Block Right - Kolom kanan', 'admin.layout_page_block', 'vi', NULL, NULL),
(2610, 'admin.layout_page_block.banner_top', 'Block banner top', 'admin.layout_page_block', 'vi', NULL, NULL),
(2611, 'admin.layout_page_block.header', 'Head code: meta, css, javascript, ...', 'admin.layout_page_block', 'en', NULL, NULL),
(2612, 'admin.layout_page_block.top', 'Block Top', 'admin.layout_page_block', 'en', NULL, NULL),
(2613, 'admin.layout_page_block.bottom', 'Block Bottom', 'admin.layout_page_block', 'en', NULL, NULL),
(2614, 'admin.layout_page_block.left', 'Block Left', 'admin.layout_page_block', 'en', NULL, NULL),
(2615, 'admin.layout_page_block.right', 'Block Right', 'admin.layout_page_block', 'en', NULL, NULL),
(2616, 'admin.layout_page_block.banner_top', 'Block banner top', 'admin.layout_page_block', 'en', NULL, NULL),
(2617, 'admin.admin_custom_config.facebook_url', 'Facebook Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2618, 'admin.admin_custom_config.fanpage_url', 'Fanpage Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2619, 'admin.admin_custom_config.twitter_url', 'Twitter Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2620, 'admin.admin_custom_config.instagram_url', 'Instagram Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2621, 'admin.admin_custom_config.youtube_url', 'Youtube Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2622, 'admin.admin_custom_config.facebook_url', 'Facebook', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2623, 'admin.admin_custom_config.fanpage_url', 'Fanpage', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2624, 'admin.admin_custom_config.twitter_url', 'Twitter', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2625, 'admin.admin_custom_config.instagram_url', 'Instagram', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2626, 'admin.admin_custom_config.youtube_url', 'Youtube', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2627, 'admin.admin_custom_config.add_new', 'Menambahkan konfigurasi baru', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2628, 'admin.admin_custom_config.add_new', 'Add new config', 'admin.admin_custom_config', 'en', NULL, NULL),
(2629, 'admin.admin_custom_config.add_new_detail', 'Detail', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2630, 'admin.admin_custom_config.add_new_detail', 'Config detail', 'admin.admin_custom_config', 'en', NULL, NULL),
(2631, 'admin.admin_custom_config.add_new_key', 'Kunci', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2632, 'admin.admin_custom_config.add_new_key', 'Key config', 'admin.admin_custom_config', 'en', NULL, NULL),
(2633, 'admin.admin_custom_config.add_new_value', 'Nilai', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2634, 'admin.admin_custom_config.add_new_value', 'Value', 'admin.admin_custom_config', 'en', NULL, NULL),
(2635, 'admin.admin_custom_config.key_exist', 'Kunci ', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2636, 'admin.admin_custom_config.key_exist', 'Key already exist', 'admin.admin_custom_config', 'en', NULL, NULL),
(2637, 'admin.config_layout.link_home_page', 'Link halaman beranda', 'admin.config_layout', 'vi', NULL, NULL),
(2638, 'admin.config_layout.link_home_page', 'Display link homepage', 'admin.config_layout', 'en', NULL, NULL),
(2639, 'admin.config_layout.link_shop_page', 'Tatuan toko', 'admin.config_layout', 'vi', NULL, NULL),
(2640, 'admin.config_layout.link_shop_page', 'Display link shop', 'admin.config_layout', 'en', NULL, NULL),
(2641, 'admin.config_layout.link_account', 'Akun', 'admin.config_layout', 'vi', NULL, NULL),
(2642, 'admin.config_layout.link_account', 'Display link account', 'admin.config_layout', 'en', NULL, NULL),
(2643, 'admin.config_layout.link_cart', 'Menampilkan keranjang', 'admin.config_layout', 'vi', NULL, NULL),
(2644, 'admin.config_layout.link_cart', 'Display link cart', 'admin.config_layout', 'en', NULL, NULL),
(2645, 'admin.config_layout.link_language', 'Bahasa', 'admin.config_layout', 'vi', NULL, NULL),
(2646, 'admin.config_layout.link_language', 'Display link language', 'admin.config_layout', 'en', NULL, NULL),
(2647, 'admin.config_layout.link_currency', 'Tampilan mata uang', 'admin.config_layout', 'vi', NULL, NULL),
(2648, 'admin.config_layout.link_currency', 'Display link currency', 'admin.config_layout', 'en', NULL, NULL),
(2649, 'common.created_at', 'Buat', 'common', 'vi', NULL, NULL),
(2650, 'common.created_at', 'Created at', 'common', 'en', NULL, NULL),
(2651, 'common.updated_at', 'Perbarui', 'common', 'vi', NULL, NULL),
(2652, 'common.updated_at', 'Updated at', 'common', 'en', NULL, NULL),
(2653, 'common.from', 'Dari', 'common', 'vi', NULL, NULL),
(2654, 'common.from', 'From', 'common', 'en', NULL, NULL),
(2655, 'common.to', 'Ke', 'common', 'vi', NULL, NULL),
(2656, 'common.to', 'To', 'common', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_attribute_group`
--

CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_attribute_group`
--

INSERT INTO `sc_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Color', 1, 1, 'radio', NULL, NULL),
(2, 'Size', 1, 2, 'select', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_banner`
--

CREATE TABLE `sc_shop_banner` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_banner_store`
--

CREATE TABLE `sc_shop_banner_store` (
  `banner_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_banner_type`
--

CREATE TABLE `sc_shop_banner_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_banner_type`
--

INSERT INTO `sc_shop_banner_type` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'Banner website', NULL, NULL),
(2, 'background', 'Background website', NULL, NULL),
(3, 'breadcrumb', 'Breadcrumb website', NULL, NULL),
(4, 'banner-store', 'Banner store', NULL, NULL),
(5, 'other', 'Other', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_brand`
--

CREATE TABLE `sc_shop_brand` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_brand_store`
--

CREATE TABLE `sc_shop_brand_store` (
  `brand_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_category`
--

CREATE TABLE `sc_shop_category` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_category`
--

INSERT INTO `sc_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`, `created_at`, `updated_at`) VALUES
('95d654bd-eac0-476a-9a65-e2ae047134cd', NULL, 'kitchenware', '0', 1, 1, 0, '2022-03-17 00:42:52', '2022-03-17 00:42:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_category_description`
--

CREATE TABLE `sc_shop_category_description` (
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_category_description`
--

INSERT INTO `sc_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
('95d654bd-eac0-476a-9a65-e2ae047134cd', 'en', 'Kitchenware', 'Kitchenware', 'Kitchenware'),
('95d654bd-eac0-476a-9a65-e2ae047134cd', 'vi', 'Peralatan dapur', 'Peralatan dapur', 'Peralatan-peralatan dapur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_category_store`
--

CREATE TABLE `sc_shop_category_store` (
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_country`
--

CREATE TABLE `sc_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_country`
--

INSERT INTO `sc_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People\\s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\\s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'vi', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_currency`
--

CREATE TABLE `sc_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_currency`
--

INSERT INTO `sc_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 2, 1, ',', 1, 0, NULL, NULL),
(2, 'VietNam Dong', 'VND', '₫', 20000.00, 0, 0, ',', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_customer`
--

CREATE TABLE `sc_shop_customer` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_customer_address`
--

CREATE TABLE `sc_shop_customer_address` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_custom_field`
--

CREATE TABLE `sc_shop_custom_field` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product, customer',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `option` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'radio, select, input',
  `default` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"value1":"name1", "value2":"name2"}',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_custom_field_detail`
--

CREATE TABLE `sc_shop_custom_field_detail` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rel_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID of product, customer,...',
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_email_template`
--

CREATE TABLE `sc_shop_email_template` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_email_template`
--

INSERT INTO `sc_shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`, `created_at`, `updated_at`) VALUES
('95d08e42-b0fe-417b-8a92-19f1d6fc99cd', 'Reset password', 'forgot_password', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody>\n    <tr>\n    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n        <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <tbody>\n                <tr>\n                <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <tbody>\n                            <tr>\n                            <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                            </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n                </tr>\n            </tbody>\n        </table>\n    </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', '1', 1, NULL, NULL),
('95d08e42-b124-4410-a67d-b9b8438c0c6d', 'Customer verification', 'customer_verify', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n    <tbody>\n    <tr>\n        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody>\n                            <tr>\n                                <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                    <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', '1', 1, NULL, NULL),
('95d08e42-b144-460b-8b6a-6e0b4fec3a32', 'Welcome new customer', 'welcome_customer', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', '1', 1, NULL, NULL),
('95d08e42-b15c-4f22-94a9-938860292ccd', 'Send form contact to admin', 'contact_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Name</b>: {{$name}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n   <td>{{$content}}</td>\n</tr>\n</table>', '1', 1, NULL, NULL),
('95d08e42-b172-4148-adb9-1394b89444b4', 'New order to admin', 'order_success_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Other Fee</td>\n   <td colspan=\"2\" align=\"right\">{{$otherFee}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', '1', 1, NULL, NULL),
('95d08e42-b18a-4bd6-897d-e610bd04261d', 'New order to customr', 'order_success_to_customer', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', '1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_language`
--

CREATE TABLE `sc_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_language`
--

INSERT INTO `sc_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 1, 0, 1, NULL, NULL),
(2, 'Indonesia', 'vi', '/data/language/Idn.png', 1, 0, 2, NULL, '2022-03-16 18:10:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_layout_page`
--

CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_layout_page`
--

INSERT INTO `sc_shop_layout_page` (`id`, `key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'home', 'admin.layout_page_position.home', NULL, NULL),
(2, 'shop_home', 'admin.layout_page_position.shop_home', NULL, NULL),
(3, 'shop_search', 'admin.layout_page_position.shop_search', NULL, NULL),
(4, 'shop_product_list', 'admin.layout_page_position.product_list', NULL, NULL),
(5, 'product_detail', 'admin.layout_page_position.product_detail', NULL, NULL),
(6, 'shop_cart', 'admin.layout_page_position.shop_cart', NULL, NULL),
(7, 'shop_item_list', 'admin.layout_page_position.item_list', NULL, NULL),
(8, 'shop_item_detail', 'admin.layout_page_position.item_detail', NULL, NULL),
(9, 'shop_news', 'admin.layout_page_position.news_list', NULL, NULL),
(10, 'shop_news_detail', 'admin.layout_page_position.news_detail', NULL, NULL),
(11, 'shop_auth', 'admin.layout_page_position.shop_auth', NULL, NULL),
(12, 'shop_profile', 'admin.layout_page_position.shop_profile', NULL, NULL),
(13, 'shop_page', 'admin.layout_page_position.shop_page', NULL, NULL),
(14, 'shop_contact', 'admin.layout_page_position.shop_contact', NULL, NULL),
(15, 'content_list', 'admin.layout_page_position.content_list', NULL, NULL),
(16, 'content_detail', 'admin.layout_page_position.content_detail', NULL, NULL),
(17, 'vendor_home', 'admin.layout_page_position.vendor_home', NULL, NULL),
(18, 'store_product_list', 'admin.layout_page_position.store_product_list', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_layout_position`
--

CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_layout_position`
--

INSERT INTO `sc_shop_layout_position` (`id`, `key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'header', 'admin.layout_page_block.header', NULL, NULL),
(2, 'banner_top', 'admin.layout_page_block.banner_top', NULL, NULL),
(3, 'top', 'admin.layout_page_block.top', NULL, NULL),
(4, 'left', 'admin.layout_page_block.left', NULL, NULL),
(5, 'right', 'admin.layout_page_block.right', NULL, NULL),
(6, 'bottom', 'admin.layout_page_block.bottom', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_length`
--

CREATE TABLE `sc_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_length`
--

INSERT INTO `sc_shop_length` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'mm', 'Millimeter', NULL, NULL),
(2, 'cm', 'Centimeter', NULL, NULL),
(3, 'm', 'Meter ', NULL, NULL),
(4, 'in', 'Inch ', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_link`
--

CREATE TABLE `sc_shop_link` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_link`
--

INSERT INTO `sc_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`, `created_at`, `updated_at`) VALUES
('95d08e42-8775-4179-8db6-67eb12aefd63', 'front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 50, NULL, NULL),
('95d08e42-b63d-4d70-88e5-ab7635ec19cd', 'front.home', 'route::home', '_self', 'menu', '', 1, 10, NULL, NULL),
('95d08e42-b660-41be-8659-3431ba7def97', 'front.shop', 'route::shop', '_self', 'menu', '', 1, 20, NULL, NULL),
('95d08e42-b67d-4792-aee2-601cc88c83f7', 'front.blog', 'route::news', '_self', 'menu', '', 1, 30, NULL, NULL),
('95d08e42-b696-4c05-b931-5505effe6bb2', 'front.contact', 'route::contact', '_self', 'menu', '', 1, 40, NULL, NULL),
('95d08e42-b6af-4202-9dc1-df8c78f0269b', 'front.my_profile', 'route::login', '_self', 'footer', '', 1, 60, NULL, NULL),
('95d08e42-b6ce-480a-af62-10fe54cf73fe', 'front.compare_page', 'route::compare', '_self', 'footer', '', 1, 70, NULL, NULL),
('95d08e42-b6e5-453c-b507-33ac23838cf7', 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 80, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_link_store`
--

CREATE TABLE `sc_shop_link_store` (
  `link_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_link_store`
--

INSERT INTO `sc_shop_link_store` (`link_id`, `store_id`) VALUES
('95d08e42-8775-4179-8db6-67eb12aefd63', '1'),
('95d08e42-b63d-4d70-88e5-ab7635ec19cd', '1'),
('95d08e42-b660-41be-8659-3431ba7def97', '1'),
('95d08e42-b67d-4792-aee2-601cc88c83f7', '1'),
('95d08e42-b696-4c05-b931-5505effe6bb2', '1'),
('95d08e42-b6af-4202-9dc1-df8c78f0269b', '1'),
('95d08e42-b6ce-480a-af62-10fe54cf73fe', '1'),
('95d08e42-b6e5-453c-b507-33ac23838cf7', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_news`
--

CREATE TABLE `sc_shop_news` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_news_description`
--

CREATE TABLE `sc_shop_news_description` (
  `news_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_news_store`
--

CREATE TABLE `sc_shop_news_store` (
  `news_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_order`
--

CREATE TABLE `sc_shop_order` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT 0.00,
  `shipping` decimal(8,2) DEFAULT 0.00,
  `discount` decimal(8,2) DEFAULT 0.00,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` decimal(8,2) DEFAULT 0.00,
  `other_fee` decimal(8,2) DEFAULT 0.00,
  `total` decimal(8,2) DEFAULT 0.00,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `received` decimal(8,2) DEFAULT 0.00,
  `balance` decimal(8,2) DEFAULT 0.00,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_order_detail`
--

CREATE TABLE `sc_shop_order_detail` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `total_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_order_history`
--

CREATE TABLE `sc_shop_order_history` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `customer_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_order_status`
--

CREATE TABLE `sc_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_order_status`
--

INSERT INTO `sc_shop_order_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'New', NULL, NULL),
(2, 'Processing', NULL, NULL),
(3, 'Hold', NULL, NULL),
(4, 'Canceled', NULL, NULL),
(5, 'Done', NULL, NULL),
(6, 'Failed', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_order_total`
--

CREATE TABLE `sc_shop_order_total` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL DEFAULT 0.00,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_page`
--

CREATE TABLE `sc_shop_page` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_page`
--

INSERT INTO `sc_shop_page` (`id`, `image`, `alias`, `status`, `created_at`, `updated_at`) VALUES
('95d08e42-9a07-4989-9286-28c83d42c692', '', 'about', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_page_description`
--

CREATE TABLE `sc_shop_page_description` (
  `page_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_page_description`
--

INSERT INTO `sc_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
('95d08e42-9a07-4989-9286-28c83d42c692', 'en', 'About', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('95d08e42-9a07-4989-9286-28c83d42c692', 'vi', 'Giới thiệu', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_page_store`
--

CREATE TABLE `sc_shop_page_store` (
  `page_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_page_store`
--

INSERT INTO `sc_shop_page_store` (`page_id`, `store_id`) VALUES
('95d08e42-9a07-4989-9286-28c83d42c692', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_password_resets`
--

CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_payment_status`
--

CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_payment_status`
--

INSERT INTO `sc_shop_payment_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Unpaid', NULL, NULL),
(2, 'Partial payment', NULL, NULL),
(3, 'Paid', NULL, NULL),
(4, 'Refurn', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product`
--

CREATE TABLE `sc_shop_product` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `supplier_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `price` decimal(8,2) DEFAULT 0.00,
  `cost` decimal(8,2) DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT 0.00,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` decimal(8,2) DEFAULT 0.00,
  `width` decimal(8,2) DEFAULT 0.00,
  `height` decimal(8,2) DEFAULT 0.00,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `approve` tinyint(4) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` timestamp NULL DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_product`
--

INSERT INTO `sc_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `approve`, `sort`, `view`, `alias`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
('95d6574c-0409-4633-917c-eeb65b080394', 'PD01', NULL, NULL, NULL, NULL, NULL, '/data/product/rakpiring.jpg', '0', '0', '4.00', '0.00', 0, 0, 0, 'oz', '1.50', 'in', '0.00', '0.00', '0.00', 0, 'physical', '0', 1, 1, 0, 0, 'plate-rack', NULL, '2022-03-17', '2022-03-17 00:50:01', '2022-03-17 00:50:01'),
('95d6587c-c7a6-4a2c-8e75-e0731ebf10e8', 'PD02', NULL, NULL, NULL, NULL, NULL, '/data/product/spatula.jpg', '0', '0', '2.00', '0.00', 50, 0, 0, 'kg', '1.00', 'in', '0.00', '0.00', '0.00', 0, 'physical', '0', 1, 1, 0, 0, 'spatula', NULL, NULL, '2022-03-17 00:53:21', '2022-03-17 00:53:21'),
('95d65a0a-0317-4a4e-9c1b-c99eade7ac56', 'PD03', NULL, NULL, NULL, NULL, NULL, '/data/product/baskom.jpg', '0', '0', '1.00', '0.00', 100, 0, 0, 'oz', '1.00', 'in', '0.00', '0.00', '0.00', 0, 'physical', '0', 1, 1, 0, 0, 'stainless-basin', NULL, NULL, '2022-03-17 00:57:41', '2022-03-17 00:57:41'),
('95d65b02-3bb3-4e67-a575-12ef2187f9f7', 'PD04', NULL, NULL, NULL, NULL, NULL, '/data/product/gorden.jpg', '0', '0', '1.00', '0.00', 0, 0, 0, 'kg', '1.00', 'in', '0.00', '0.00', '0.00', 0, 'physical', '0', 1, 1, 0, 0, 'curtains-under-the-kitchen-under-cheap-stovetop-table-best-seller-motif', NULL, NULL, '2022-03-17 01:00:24', '2022-03-17 01:00:24'),
('95d65c3e-ea5a-47a6-b9f9-1a4b5d3725bc', 'PD05', NULL, NULL, NULL, NULL, NULL, '/data/product/kuas.jpg', '0', '0', '0.10', '0.00', 0, 0, 0, 'kg', '0.50', 'in', '0.00', '0.00', '0.00', 0, 'physical', '0', 1, 1, 0, 0, 'silicone-bread-bread-cake-barbecue-butter-food-brush', NULL, NULL, '2022-03-17 01:03:51', '2022-03-17 01:03:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_attribute`
--

CREATE TABLE `sc_shop_product_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_build`
--

CREATE TABLE `sc_shop_product_build` (
  `build_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_category`
--

CREATE TABLE `sc_shop_product_category` (
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_product_category`
--

INSERT INTO `sc_shop_product_category` (`product_id`, `category_id`) VALUES
('95d6574c-0409-4633-917c-eeb65b080394', '95d654bd-eac0-476a-9a65-e2ae047134cd'),
('95d6587c-c7a6-4a2c-8e75-e0731ebf10e8', '95d654bd-eac0-476a-9a65-e2ae047134cd'),
('95d65a0a-0317-4a4e-9c1b-c99eade7ac56', '95d654bd-eac0-476a-9a65-e2ae047134cd'),
('95d65b02-3bb3-4e67-a575-12ef2187f9f7', '95d654bd-eac0-476a-9a65-e2ae047134cd'),
('95d65c3e-ea5a-47a6-b9f9-1a4b5d3725bc', '95d654bd-eac0-476a-9a65-e2ae047134cd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_description`
--

CREATE TABLE `sc_shop_product_description` (
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_product_description`
--

INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
('95d6574c-0409-4633-917c-eeb65b080394', 'en', 'Plate rack', 'Plate rack', '2-Tier Stainless Steel Dish Drainer is a 2-tier plate rack', 'Product details:<br />\r\nMaterial: PP + Carbon iron<br />\r\nPainting: Nano powder spraying coating<br />\r\nLevel: 2 stacking / 3 stacking<br />\r\nWrana : Black<br />\r\nMain frame size:42 x 23 x 35cm (2 stacking), 42 x 23 x 47cm (3 stacking)<br />\r\nPackaging size (+cardboard packing):56 x 23 x 35cm (2 stacking), 56 x 23 x 47cm (3 stacking)<br />\r\nMaximum capacity per rack: 5 kg<br />\r\nNet weight 1.54 kg (2 stacking), 2.28 kg (3 stacking)<br />\r\nFill in the package:<br />\r\n- 2 pcs Main frame of left and right grip<br />\r\n- 2 pcs Frame to slice a plate (3 pcs for 3 levels)<br />\r\n- 1 pcs Hook/Hanger<br />\r\n- 1 pcs Tray storage<br />\r\n- 1 pcs Spoon/Chopstick Storage<br />\r\n- 2 pcs Alas/water container (3 pcs for 3 levels)<br />\r\n- 1 piece of instructions for use<br />\r\n<br />\r\n&nbsp;'),
('95d6574c-0409-4633-917c-eeb65b080394', 'vi', 'Peralatan dapur', 'Peralatan dapur', '2-Tier Stainless Steel Dish Drainer is a 2-tier plate rack', '<br />\r\nDetail produk : Bahan : PP + Besi karbon Pengecatan : Nano powder spraying coating Tingkatan : 2 susun / 3 susun Wrana : Hitam Ukuran rangka utama：42 x 23 x 35cm (2 susun), 42 x 23 x 47cm (3 susun) Ukuran kemasan (+kardus packing)：56 x 23 x 35cm (2 susun) , 56 x 23 x 47cm (3 susun) Kapasitas maksimum per rak : 5 kg Berat bersih 1.54 kg (2 susun), 2.28 kg (3 susun) Isi dalam paket : - 2 pcs Rangka utama pegangan kiri dan kanan - 2 pcs Rangka untuk meniriskan piring (3 pcs untuk 3 level) - 1 pcs Pengait/Gantungan - 1 pcs Penyimpan nampan - 1 pcs Tempat Penyimpanan Sendok/Sumpit - 2 pcs Alas/wadah air (3 pcs untuk 3 level) - 1 buah petunjuk penggunaan'),
('95d6587c-c7a6-4a2c-8e75-e0731ebf10e8', 'en', 'Spatula', 'Spatula', NULL, 'AUTOMATIC RESI DROPSHIP SUPPORT, Please Chat Us!<br />\r\n-<br />\r\nStandard Packing is Bubble 1 Lapis.<br />\r\nIf you want to add can checkout with BUBBLE WRAP.<br />\r\n-<br />\r\nOur Cookware Is Wood-handled instead of PLASTIC.<br />\r\n-<br />\r\nADVANTAGES OF OUR PRODUCTS:<br />\r\n<br />\r\n🥗100% QUALITY SILICON<br />\r\n🍲100% PREMIUM WOODEN HANDEL<br />\r\n🍟100% HEAT RESISTANCE<br />\r\n🥙VERY WORTH IT'),
('95d6587c-c7a6-4a2c-8e75-e0731ebf10e8', 'vi', 'Spatula', 'Spatula', NULL, 'SUPPORT DROPSHIP RESI OTOMATIS, Silahkan Chat Kami! - Packing Standar adalah Bubble 1 Lapis. Jika Ingin Tambah Bisa CHECKOUT Bersama BUBBLE WRAP. - Peralatan Masak Kami Bergagang KAYU bukan PLASTIK. - KELEBIHAN PRODUK KAMI : 🥗100% SILIKON BERKUALITAS 🍲100% PREMIUM WOODEN HANDEL 🍟100% RESISTENSI PANAS PANAS 🥙SANGAT WORTH IT'),
('95d65a0a-0317-4a4e-9c1b-c99eade7ac56', 'en', 'Stainless basin', 'baskom', NULL, 'Welcome to the kitchenstore mall.<br />\r\nWe offer products:<br />\r\n<br />\r\nVersatile Stainless Basin set 6 size 14cm - 24cm<br />\r\nmade of stainless materials that are anti-rust&nbsp;<br />\r\n<br />\r\nA multipurpose 6-piece stainless basin can be for your various needs.<br />\r\n<br />\r\nCompleteness of the package:<br />\r\n<br />\r\n1 pcs 14cm stainless basin<br />\r\n<br />\r\n1 pcs 16cm stainless basin<br />\r\n<br />\r\n1 pcs 18cm stailess basin<br />\r\n<br />\r\n1 pcs 20cm stailess basin<br />\r\n<br />\r\n1 pcs 22cm stailess basin<br />\r\n<br />\r\n1 pcs stainless basin 24 cm'),
('95d65a0a-0317-4a4e-9c1b-c99eade7ac56', 'vi', 'Baskom stainless', 'baskom', NULL, 'Selamat datang di dapurstore mall kami menawarrkan produk : Baskom Stainless serbaguna set 6 ukuran 14cm - 24cm terbuat dari bahan stainless yg anti karatan Baskom stainless set 6ukuran serbaguna bisa untuk berbagai keperluan anda. Kelengkapan paket : 1 pcs baskom stainless 14cm 1 pcs baskom stainless 16cm 1 pcs baskom stailess 18cm 1 pcs baskom stailess 20cm 1 pcs baskom stailess 22cm 1 pcs baskom stainless 24 cm'),
('95d65b02-3bb3-4e67-a575-12ef2187f9f7', 'en', 'CURTAINS UNDER THE KITCHEN UNDER CHEAP STOVETOP TABLE BEST SELLER MOTIF', 'CURTAINS UNDER THE KITCHEN', NULL, 'Gorden kolong dapur -size 100cm x 70cm Sudah ada BONUS TALI -Bahan: *katun halus *mudah di cuci *awet * murah bisa gonta ganti motif *tidak luntur dan dilengkapi dengan pony rample yg ter liat rapi dan elegant -Sangat cocok untuk dekorasi dapur lebih cantik lgi ya bund'),
('95d65b02-3bb3-4e67-a575-12ef2187f9f7', 'vi', 'GORDEN KOLONG DAPUR BAWAH MEJA KOMPOR MURAH MOTIF BEST SELLER', 'GORDEN KOLONG DAPUR', NULL, 'Gorden kolong dapur -size 100cm x 70cm Sudah ada BONUS TALI -Bahan: *katun halus *mudah di cuci *awet * murah bisa gonta ganti motif *tidak luntur dan dilengkapi dengan pony rample yg ter liat rapi dan elegant -Sangat cocok untuk dekorasi dapur lebih cantik lgi ya bund'),
('95d65c3e-ea5a-47a6-b9f9-1a4b5d3725bc', 'en', 'Silicone Bread Bread Cake barbecue Butter Food Brush', 'Silicone Bread Bread Cake', NULL, 'Special silicone rubber brushes for cooking purposes and decorating cakes/cakes, which come in brilliant colors.<br />\r\nSize: 18x3.2 cm<br />\r\nMaterial : Plastic + Silicone rubber'),
('95d65c3e-ea5a-47a6-b9f9-1a4b5d3725bc', 'vi', 'Kuas Silikon Roti silicone Cake barbecue Mentega Food Brush', 'Kuas Silikon Roti', NULL, 'Kuas karet silikon khusus untuk keperluan memasak dan menghias kue / cake, yang hadir dalam warna-warni cemerlang. Ukuran : 18x3.2 cm Bahan : Plastik + Karet silikon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_download`
--

CREATE TABLE `sc_shop_product_download` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_group`
--

CREATE TABLE `sc_shop_product_group` (
  `group_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_image`
--

CREATE TABLE `sc_shop_product_image` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_promotion`
--

CREATE TABLE `sc_shop_product_promotion` (
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_promotion` decimal(8,2) NOT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_property`
--

CREATE TABLE `sc_shop_product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_product_property`
--

INSERT INTO `sc_shop_product_property` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'physical', 'Product physical', NULL, NULL),
(2, 'download', 'Product download', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_product_store`
--

CREATE TABLE `sc_shop_product_store` (
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_product_store`
--

INSERT INTO `sc_shop_product_store` (`product_id`, `store_id`) VALUES
('95d6574c-0409-4633-917c-eeb65b080394', '1'),
('95d6587c-c7a6-4a2c-8e75-e0731ebf10e8', '1'),
('95d65a0a-0317-4a4e-9c1b-c99eade7ac56', '1'),
('95d65b02-3bb3-4e67-a575-12ef2187f9f7', '1'),
('95d65c3e-ea5a-47a6-b9f9-1a4b5d3725bc', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_sessions`
--

CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_shipping_standard`
--

CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` decimal(8,2) NOT NULL,
  `shipping_free` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_shipping_standard`
--

INSERT INTO `sc_shop_shipping_standard` (`id`, `fee`, `shipping_free`, `created_at`, `updated_at`) VALUES
(1, '20.00', '10000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_shipping_status`
--

CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_shipping_status`
--

INSERT INTO `sc_shop_shipping_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Not sent', NULL, NULL),
(2, 'Sending', NULL, NULL),
(3, 'Shipping done', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_shoppingcart`
--

CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_store_block`
--

CREATE TABLE `sc_shop_store_block` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_store_block`
--

INSERT INTO `sc_shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`, `template`, `created_at`, `updated_at`) VALUES
('95d08e42-b3bb-462e-9c75-67a10e3bee14', 'Product special', 'left', '*', 'view', 'product_special_left', 1, 20, '1', 's-cart-light', NULL, NULL),
('95d08e42-b3df-41cb-989c-eac958256b55', 'Brands', 'left', '*', 'view', 'brand_left', 1, 30, '1', 's-cart-light', NULL, NULL),
('95d08e42-b3fa-4167-9299-d3a1716433ef', 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 10, '1', 's-cart-light', NULL, NULL),
('95d08e42-b415-4500-9dec-12c2b6bba00d', 'Category', 'left', 'home,shop_home', 'view', 'category_left', 1, 20, '1', 's-cart-light', NULL, NULL),
('95d08e42-b42d-4c70-b7ec-a21909f64736', 'Product last view', 'left', '*', 'view', 'product_lastview_left', 1, 30, '1', 's-cart-light', NULL, NULL),
('95d08e42-b44c-48d3-b88e-22340e095af2', 'Products new', 'top', 'home', 'view', 'product_new', 1, 10, '1', 's-cart-light', NULL, NULL),
('95d08e42-b464-480e-8bc2-5bde9029ede9', 'Category store', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, '1', 's-cart-light', NULL, NULL),
('95d08e42-b47a-4d35-b391-d5e4301e8877', 'Top news', 'top', 'home', 'view', 'top_news', 1, 10, '1', 's-cart-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_store_css`
--

CREATE TABLE `sc_shop_store_css` (
  `css` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_store_css`
--

INSERT INTO `sc_shop_store_css` (`css`, `store_id`, `template`, `created_at`, `updated_at`) VALUES
('', '1', 's-cart-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_subscribe`
--

CREATE TABLE `sc_shop_subscribe` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_supplier`
--

CREATE TABLE `sc_shop_supplier` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_tax`
--

CREATE TABLE `sc_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_tax`
--

INSERT INTO `sc_shop_tax` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Tax default (10%)', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sc_shop_weight`
--

CREATE TABLE `sc_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sc_shop_weight`
--

INSERT INTO `sc_shop_weight` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'g', 'Gram', NULL, NULL),
(2, 'kg', 'Kilogram', NULL, NULL),
(3, 'lb', 'Pound ', NULL, NULL),
(4, 'oz', 'Ounce ', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `sc_admin_config_code_index` (`code`);

--
-- Indeks untuk tabel `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_log_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_menu_key_unique` (`key`);

--
-- Indeks untuk tabel `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`);

--
-- Indeks untuk tabel `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_role_slug_unique` (`slug`);

--
-- Indeks untuk tabel `sc_admin_role_permission`
--
ALTER TABLE `sc_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indeks untuk tabel `sc_admin_role_user`
--
ALTER TABLE `sc_admin_role_user`
  ADD KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indeks untuk tabel `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_store_code_unique` (`code`),
  ADD KEY `sc_admin_store_domain_index` (`domain`),
  ADD KEY `sc_admin_store_partner_index` (`partner`);

--
-- Indeks untuk tabel `sc_admin_store_description`
--
ALTER TABLE `sc_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `sc_admin_store_description_lang_index` (`lang`);

--
-- Indeks untuk tabel `sc_admin_template`
--
ALTER TABLE `sc_admin_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_template_key_unique` (`key`);

--
-- Indeks untuk tabel `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `sc_admin_user_email_unique` (`email`);

--
-- Indeks untuk tabel `sc_admin_user_permission`
--
ALTER TABLE `sc_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Indeks untuk tabel `sc_languages`
--
ALTER TABLE `sc_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_languages_code_location_unique` (`code`,`location`),
  ADD KEY `sc_languages_code_index` (`code`),
  ADD KEY `sc_languages_position_index` (`position`),
  ADD KEY `sc_languages_location_index` (`location`);

--
-- Indeks untuk tabel `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_banner_type_index` (`type`);

--
-- Indeks untuk tabel `sc_shop_banner_store`
--
ALTER TABLE `sc_shop_banner_store`
  ADD PRIMARY KEY (`banner_id`,`store_id`);

--
-- Indeks untuk tabel `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_banner_type_code_unique` (`code`);

--
-- Indeks untuk tabel `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_brand_alias_index` (`alias`);

--
-- Indeks untuk tabel `sc_shop_brand_store`
--
ALTER TABLE `sc_shop_brand_store`
  ADD PRIMARY KEY (`brand_id`,`store_id`);

--
-- Indeks untuk tabel `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_category_alias_index` (`alias`);

--
-- Indeks untuk tabel `sc_shop_category_description`
--
ALTER TABLE `sc_shop_category_description`
  ADD UNIQUE KEY `sc_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `sc_shop_category_description_lang_index` (`lang`);

--
-- Indeks untuk tabel `sc_shop_category_store`
--
ALTER TABLE `sc_shop_category_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indeks untuk tabel `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_country_code_unique` (`code`);

--
-- Indeks untuk tabel `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_currency_code_unique` (`code`);

--
-- Indeks untuk tabel `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `sc_shop_customer_address_id_index` (`address_id`),
  ADD KEY `sc_shop_customer_store_id_index` (`store_id`);

--
-- Indeks untuk tabel `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_customer_address_customer_id_index` (`customer_id`);

--
-- Indeks untuk tabel `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_type_index` (`type`),
  ADD KEY `sc_shop_custom_field_code_index` (`code`);

--
-- Indeks untuk tabel `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_detail_custom_field_id_index` (`custom_field_id`),
  ADD KEY `sc_shop_custom_field_detail_rel_id_index` (`rel_id`);

--
-- Indeks untuk tabel `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_email_template_store_id_index` (`store_id`);

--
-- Indeks untuk tabel `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_language_code_unique` (`code`);

--
-- Indeks untuk tabel `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`);

--
-- Indeks untuk tabel `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`);

--
-- Indeks untuk tabel `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_length_name_unique` (`name`);

--
-- Indeks untuk tabel `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_link_store`
--
ALTER TABLE `sc_shop_link_store`
  ADD PRIMARY KEY (`link_id`,`store_id`);

--
-- Indeks untuk tabel `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_news_alias_index` (`alias`);

--
-- Indeks untuk tabel `sc_shop_news_description`
--
ALTER TABLE `sc_shop_news_description`
  ADD UNIQUE KEY `sc_shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- Indeks untuk tabel `sc_shop_news_store`
--
ALTER TABLE `sc_shop_news_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Indeks untuk tabel `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_order_customer_id_index` (`customer_id`),
  ADD KEY `sc_shop_order_device_type_index` (`device_type`),
  ADD KEY `sc_shop_order_store_id_index` (`store_id`);

--
-- Indeks untuk tabel `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_order_total_order_id_index` (`order_id`);

--
-- Indeks untuk tabel `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_page_alias_index` (`alias`);

--
-- Indeks untuk tabel `sc_shop_page_description`
--
ALTER TABLE `sc_shop_page_description`
  ADD UNIQUE KEY `sc_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `sc_shop_page_description_lang_index` (`lang`);

--
-- Indeks untuk tabel `sc_shop_page_store`
--
ALTER TABLE `sc_shop_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`);

--
-- Indeks untuk tabel `sc_shop_password_resets`
--
ALTER TABLE `sc_shop_password_resets`
  ADD KEY `sc_shop_password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_sku_index` (`sku`),
  ADD KEY `sc_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `sc_shop_product_kind_index` (`kind`),
  ADD KEY `sc_shop_product_property_index` (`property`),
  ADD KEY `sc_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `sc_shop_product_status_index` (`status`),
  ADD KEY `sc_shop_product_approve_index` (`approve`),
  ADD KEY `sc_shop_product_alias_index` (`alias`);

--
-- Indeks untuk tabel `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Indeks untuk tabel `sc_shop_product_build`
--
ALTER TABLE `sc_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Indeks untuk tabel `sc_shop_product_category`
--
ALTER TABLE `sc_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indeks untuk tabel `sc_shop_product_description`
--
ALTER TABLE `sc_shop_product_description`
  ADD UNIQUE KEY `sc_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `sc_shop_product_description_lang_index` (`lang`);

--
-- Indeks untuk tabel `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_product_group`
--
ALTER TABLE `sc_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Indeks untuk tabel `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_image_product_id_index` (`product_id`);

--
-- Indeks untuk tabel `sc_shop_product_promotion`
--
ALTER TABLE `sc_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_product_property_code_unique` (`code`);

--
-- Indeks untuk tabel `sc_shop_product_store`
--
ALTER TABLE `sc_shop_product_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indeks untuk tabel `sc_shop_sessions`
--
ALTER TABLE `sc_shop_sessions`
  ADD UNIQUE KEY `sc_shop_sessions_id_unique` (`id`);

--
-- Indeks untuk tabel `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_shoppingcart`
--
ALTER TABLE `sc_shop_shoppingcart`
  ADD KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `sc_shop_shoppingcart_store_id_index` (`store_id`);

--
-- Indeks untuk tabel `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_store_block_store_id_index` (`store_id`),
  ADD KEY `sc_shop_store_block_template_index` (`template`);

--
-- Indeks untuk tabel `sc_shop_store_css`
--
ALTER TABLE `sc_shop_store_css`
  ADD UNIQUE KEY `sc_shop_store_css_store_id_template_unique` (`store_id`,`template`);

--
-- Indeks untuk tabel `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_subscribe_email_index` (`email`),
  ADD KEY `sc_shop_subscribe_store_id_index` (`store_id`);

--
-- Indeks untuk tabel `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_supplier_alias_index` (`alias`),
  ADD KEY `sc_shop_supplier_store_id_index` (`store_id`);

--
-- Indeks untuk tabel `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_weight_name_unique` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT untuk tabel `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `sc_admin_template`
--
ALTER TABLE `sc_admin_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sc_languages`
--
ALTER TABLE `sc_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2657;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
