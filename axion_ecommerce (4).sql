-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 05:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `axion_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `attribute_set_id` bigint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `attribute_set_id`, `created_at`, `updated_at`) VALUES
(1, 'Consoles', 0, NULL, '2023-04-23 13:29:43'),
(2, 'Gaming PC', 1, NULL, NULL),
(3, 'Bose Headphones', 2, NULL, NULL),
(5, 'Sony Headphones', 0, '2023-04-22 14:13:54', '2023-04-26 11:11:39'),
(6, 'Playstation Headphones', 0, '2023-04-22 14:14:12', '2023-04-26 12:04:49'),
(7, 'adf', 0, '2023-04-23 13:31:08', '2023-04-23 13:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `attribute_id` bigint(11) UNSIGNED DEFAULT NULL,
  `category_id` bigint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute_categories`
--

INSERT INTO `attribute_categories` (`id`, `attribute_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 36, NULL, NULL),
(4, 6, 66, NULL, NULL),
(5, 5, 66, NULL, NULL),
(6, 5, 65, NULL, NULL),
(7, 6, 65, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute_sets`
--

INSERT INTO `attribute_sets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hardware', NULL, NULL),
(2, 'Headphones', NULL, NULL),
(3, 'Specification', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `created_at`, `updated_at`) VALUES
(16, 1, 'Red', NULL, '2023-04-17 05:38:13'),
(18, 2, 'XS', '2022-08-11 17:45:50', '2022-08-22 13:01:06'),
(20, 1, 'Blue', '2022-08-14 18:17:20', '2022-08-21 21:43:53'),
(23, 2, 'XL', '2022-08-21 11:03:42', '2022-08-21 21:51:20'),
(33, 2, 'XSS', '2022-08-23 00:10:41', '2022-08-23 00:10:41'),
(39, 5, 'Mark 3 series', '2023-04-22 14:21:53', '2023-04-22 14:21:53'),
(40, 5, 'Extra Bass  WH Series Mid Tier', '2023-04-22 14:22:23', '2023-04-22 14:22:23'),
(41, 5, 'CH Series', '2023-04-22 14:22:35', '2023-04-22 14:22:35'),
(42, 5, 'Playstation headphones', '2023-04-22 14:25:41', '2023-04-22 14:25:55'),
(43, 6, 'PS5 Headphones', '2023-04-22 14:26:10', '2023-04-22 14:26:10'),
(44, 6, 'PS4 Headphones', '2023-04-22 14:32:09', '2023-04-22 14:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `short_description`, `short_note`, `image`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Get Flowers Delivered By Monday With A  Special Discount', 'Fresh Flowers & Perfect Gifts for all Occasions', 'Best Way To Impress Your Room', 'Starting At $49', 'https://images8.alphacoders.com/594/594870.jpg', 30, 1, '2022-09-24 05:28:28', '2022-09-24 06:20:43'),
(6, 'Birthday Surprises', 'Make their Big day BIGGER For Your Cousins', 'asdf', 'Under 50% Discount', 'https://wallpaperaccess.com/full/58797.jpg', 38, 1, '2022-09-24 06:26:47', '2022-09-24 06:27:09'),
(7, 'Tempting Cakes', 'Celebrating Special Occasion? We Got You Covered, Happiness In Everytime !', 'Delicious Cakes', 'Starting At $199', 'https://www.teahub.io/photos/full/9-90820_online-cake-order-in-ludhiana-cakes.jpg', 29, 1, '2022-09-24 06:32:37', '2022-09-24 06:32:41'),
(8, 'Wedding Arrangement Bouqets', 'Special Surprise Arrangement For The Wedding', 'All Kinds Of Bouquets Available here', 'Starting At $39', 'https://img5.goodfon.com/wallpaper/nbig/6/ad/tender-white-flowers-pink-background-rozovyi-fon-belye-tsvet.jpg', 39, 1, '2022-09-24 06:34:32', '2022-09-24 06:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'Sony', 1, NULL, NULL),
(2, 'Samsung', 'Samsung', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(255) NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rowId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `product_id`, `quantity`, `session_id`, `rowId`, `created_at`, `updated_at`) VALUES
(549, 4, 1, 103, 'iTVpnLuOYrz0qPRPQzlGatR6JFdVCTvVDy27CLoi', NULL, '2022-08-15 02:59:22', '2023-01-26 08:43:00'),
(550, 4, 3, 12, 'r2MdLmZzNDCi52XmUNKTyHmenNRDVcAHH6f8U2dG', NULL, '2022-08-15 09:22:32', '2022-09-22 11:03:00'),
(551, 4, 4, 3, 'r2MdLmZzNDCi52XmUNKTyHmenNRDVcAHH6f8U2dG', NULL, '2022-08-20 08:52:31', '2022-09-22 11:14:44'),
(552, 4, 18, 1, 'FWt1lirJpliWJ5CGzBHDr3xeJtGtxSNRAHZSfbqg', NULL, '2022-08-20 08:52:53', '2022-08-20 08:52:53'),
(553, 4, 6, 5, 'RLi0peegqxYetmOeJsfVpjq8kfMGrx3fMqfEXLfU', NULL, '2022-08-20 08:52:59', '2022-09-20 11:55:10'),
(554, 4, 5, 1, '3H9E4GQdbUqgq9s9pLflThCyeRc7oMdG4Q3zL9Zv', NULL, '2022-08-22 23:27:24', '2022-08-22 23:27:24'),
(555, 4, 11, 0, '3H9E4GQdbUqgq9s9pLflThCyeRc7oMdG4Q3zL9Zv', NULL, '2022-08-23 01:47:32', '2022-08-23 01:55:09'),
(556, 4, 8, 25, 'O8elraV2lz3MdlL0LXoJ2zMjW6GdmmlYTTkrgozC', NULL, '2022-08-25 22:48:55', '2022-08-25 23:19:59'),
(557, 4, 13, 2, '7Ofq6bWWUh344tjMc2hC5j2TKVWMXMiN9IDfgJXD', NULL, '2022-11-27 07:40:10', '2022-11-27 07:43:18'),
(558, 4, 61, 1, 'ugBEjXnYqZ88X7HR5RtfkncSHgrdzYlGoAYpaNcz', NULL, '2023-01-08 04:18:34', '2023-01-08 04:18:34'),
(559, 4, 94, 1, 'iTVpnLuOYrz0qPRPQzlGatR6JFdVCTvVDy27CLoi', NULL, '2023-01-26 06:38:36', '2023-01-26 06:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `cart_storages`
--

CREATE TABLE `cart_storages` (
  `id` int(11) NOT NULL,
  `product_id` int(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `short_description`, `parent_id`, `meta_title`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(28, 'Gifts', 'Flowers-Boutiques-Cakes', NULL, 'A Perfect Place To Surprise Your Loved Ones', NULL, NULL, NULL, NULL, '2022-09-14 01:41:12', '2022-09-24 06:56:22'),
(29, 'Cakes', 'Flowers-Boutiques-Cakes-MoreOfCakes', 'https://media.istockphoto.com/photos/birthday-cake-with-sprinkles-picture-id929103020?k=20&m=929103020&s=170667a&w=0&h=Qb9vNIs9_nHIrLYrdMONn8H0g9TU9CG2szEIOesbCMc=', 'Finding Your Black Forest We have it here !', NULL, NULL, NULL, NULL, '2022-09-14 01:41:48', '2022-09-24 04:45:16'),
(30, 'Flowers', 'Flowers-Boutiques-Cakes-MoreOfFlowers', 'https://us.123rf.com/450wm/uveita/uveita2003/uveita200300072/142175921-beautiful-bouquet-in-hands-hand-on-white-background-roses-and-chrysanthemums-copy-space-.jpg?ver=6', 'A nice way to gift your girlfriend a bouquet of flowers', NULL, 'Flowers Buy Now', 'this if flowers', 'flowers , boque, kids', '2022-09-14 01:42:41', '2023-03-19 04:50:22'),
(31, 'By Occasions', 'Flowers-Boutiques-Cakes-Elegant-flowers', 'https://cdn.create.vista.com/api/media/small/206634334/stock-photo-vase-beautiful-flowers-white-table', 'beautiful fragranced flowers', 30, NULL, NULL, NULL, '2022-09-14 01:43:04', '2022-09-24 04:58:26'),
(32, 'Decors', 'Flowers-Boutiques-Cakes-Decors', 'https://img.freepik.com/premium-photo/cactus-pot-isolated-white-background-brown-clay-pot-view-with-copy-space-input-text-designer-workspace-office-table-green-cactus-flower_162459-1212.jpg?w=2000', 'Best Way To Decorate Your Room', 28, NULL, NULL, NULL, '2022-09-14 01:44:46', '2022-09-14 01:44:46'),
(34, 'Combo', 'combo', NULL, 'combo', NULL, NULL, NULL, NULL, '2022-09-20 07:15:37', '2022-12-25 07:55:46'),
(35, 'By Collections', 'flowers-byCollections', NULL, 'Wedding-Flowers', 30, NULL, NULL, NULL, '2022-09-21 09:29:58', '2022-09-24 05:01:58'),
(36, 'Chocolates', 'Chocolates', NULL, 'Template Chocolates', NULL, NULL, NULL, NULL, '2022-09-24 04:50:41', '2022-09-24 04:50:41'),
(37, 'Birthday Flowers', 'flowers-byOccasion-birthday-flowers', NULL, 'Birthday Flowers Online', 31, NULL, NULL, NULL, '2022-09-24 04:59:28', '2022-09-24 04:59:28'),
(38, 'Anniversary Flowers', 'Anniversary-Flowers', NULL, 'Stunning Anniversary Flowers', 31, NULL, NULL, NULL, '2022-09-24 05:00:37', '2022-09-24 05:00:37'),
(39, 'Flower Bouquets', 'flowers-byCollections-Flower-Bouquets', NULL, 'Splendid Flower Bouquets', 35, NULL, NULL, NULL, '2022-09-24 05:01:29', '2022-09-24 05:02:41'),
(64, 'Add On', 'add-on', NULL, 'add-ons for products', NULL, NULL, NULL, NULL, '2023-01-26 05:33:04', '2023-01-26 05:33:04'),
(65, 'Headphones', 'Playstation-Hits', NULL, 'asdf', 66, NULL, NULL, NULL, '2023-03-08 05:16:37', '2023-03-08 09:10:07'),
(66, 'Electronics', 'Electronics', NULL, 'Electronics', NULL, NULL, NULL, NULL, '2023-03-08 09:09:57', '2023-03-08 09:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(12,2) DEFAULT NULL,
  `usage` tinyint(1) NOT NULL,
  `coupon_qty` int(191) NOT NULL,
  `coupon_limit` int(191) NOT NULL,
  `cart_value` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `description`, `type`, `value`, `usage`, `coupon_qty`, `coupon_limit`, `cart_value`, `created_at`, `updated_at`) VALUES
(1, 'Christmas Special', 'ASDF1234', 'a 30$ discount for first 100 peopl your cart', 'fixed', '80.00', 2, 86, 21, '75.00', NULL, '2022-12-18 08:06:44'),
(2, 'Eid Special', 'qwer1234', 'a 50% off for your eid discount', 'percent', '10.00', 1, 133, 15, '75.00', NULL, '2022-08-12 04:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_05_25_101200_create_categories_table', 1),
(17, '2022_05_25_101301_create_products_table', 1),
(18, '2022_06_04_064104_create_shoppingcart_table', 2),
(19, '2018_12_23_120000_create_shoppingcart_table', 3),
(20, '2022_06_20_035901_create_orders_table', 4),
(21, '2022_06_20_043145_create_order_items_table', 4),
(22, '2022_06_20_043159_create_shippings_table', 4),
(23, '2022_06_20_044239_create_transactions_table', 4),
(24, '2022_06_29_062459_create_coupons_table', 5),
(25, '2022_06_30_050010_create_product_attributes_table', 6),
(26, '2022_06_30_052654_create_attribute_values_table', 7),
(27, '2022_08_15_134109_create_categories', 8),
(28, '2022_08_18_071850_create_banners', 9),
(29, '2022_08_19_103215_create_order_item_attribute_values_table', 10),
(30, '2022_08_26_150538_create_product_images_table', 11),
(31, '2022_10_26_150713_create_tags_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(254) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `name`, `url`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Flowers', NULL, NULL, NULL, NULL),
(2, 'Cakes', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderNo`, `user_id`, `subtotal`, `tax`, `discount`, `discount_code`, `total`, `firstName`, `lastName`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `order_status`, `is_shipping_different`, `created_at`, `updated_at`) VALUES
(31, 'BF1344', 4, '100.00', '12.00', '0.00', NULL, '112.00', 'Vecna', 'Steinfield', '123456789', 'one11@gmail.com', 'near victor creel house', NULL, 'Hawkins', 'asdfsadf', 'Atlanta Georgia', '12384', '-1', 0, '2022-06-27 06:48:54', '2022-06-27 06:48:54'),
(32, 'BF1464', 4, '350.02', '42.00', '0.00', 'asdf', '392.02', 'Umar', 'das', 'asdf', 'umar33@gmail.com', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '-1', 0, '2022-07-15 23:38:21', '2022-08-13 02:33:56'),
(33, 'BF1245', 4, '70.00', '8.40', '0.00', NULL, '78.40', 'Taylor', 'Hansen', 'Iure dolorem nisi et', 'wekaguwuz@mailinator.com', 'Quis autem architect', NULL, 'Eum temporibus odit', 'Consectetur omnis q', 'Aut velit sit repre', '82573', '-1', 0, '2022-07-26 23:54:29', '2022-07-26 23:54:29'),
(34, 'BF1786', 4, '40.00', '4.80', '0.00', NULL, '44.80', 'Britanney', 'Salazar', 'Velit sint duis qui', 'wanobi@mailinator.com', 'Quis est cupidatat i', NULL, 'Eiusmod excepteur cu', 'Minus est et molest', 'Qui fuga Ea esse cu', '60875', '-1', 0, '2022-07-26 23:55:37', '2022-07-26 23:55:37'),
(35, 'BF1989', 8, '444.02', '53.28', '220.00', 'asdaf', '110.00', 'Grady', 'Bray', 'Neque ut asperiores', 'sagazo@mailinator.com', 'Aut aut amet dolore', 'asdf', 'Qui sint iure eos l', 'Suscipit qui amet s', 'Et minima dolor labo', '93078', '-1', 0, '2022-08-11 23:30:39', '2022-08-13 02:35:04'),
(36, '', 4, '222.01', '26.64', '0.00', 'ASDF1234', '248.65', 'asdf', 'asdf', 'adsf', 'asd', 'asdf', NULL, 'asdf', 'asdf', 'asdf', 'adsf', '-1', 0, '2022-08-14 18:31:21', '2022-08-14 18:31:21'),
(56, '', 4, '292.01', '35.04', '0.00', 'ASDF1234', '327.05', 'Orlando', 'French', 'Reprehenderit consec', 'cujedu@mailinator.com', 'A placeat ipsum en', NULL, 'Ullam sit odit comm', 'Quia excepteur rerum', 'Et qui consequatur', '97987', '-1', 0, '2022-08-14 18:42:13', '2022-08-14 18:42:13'),
(57, '', 4, '292.01', '35.04', '0.00', 'ASDF1234', '327.05', 'Orlando', 'French', 'Reprehenderit consec', 'cujedu@mailinator.com', 'A placeat ipsum en', NULL, 'Ullam sit odit comm', 'Quia excepteur rerum', 'Et qui consequatur', '97987', '-1', 0, '2022-08-14 18:42:25', '2022-08-14 18:42:25'),
(67, '', 4, '199.01', '23.88', '0.00', 'ASDF1234', '222.89', 'asdf', 'asdf', 'asdf', 'adfs', 'asdf', NULL, 'adsf', 'asdf', 'asdf', 'asdf', '-1', 0, '2022-08-15 03:51:46', '2022-08-15 03:51:46'),
(68, '', 4, '199.01', '23.88', '0.00', 'ASDF1234', '222.89', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', NULL, 'asdf', 'adsf', 'asdf', 'dasf', '-1', 0, '2022-08-15 03:52:13', '2022-08-15 03:52:13'),
(69, '', 4, '608.02', '72.96', '0.00', 'ASDF1234', '680.98', 'asfd', 'asdf', 'afsd', 'asdf', 'adfs', NULL, 'adfs', 'dfasf', 'asdf', 'dfs', '-1', 0, '2022-08-15 03:52:56', '2022-08-15 03:52:56'),
(70, '', 4, '608.02', '72.96', '0.00', 'ASDF1234', '680.98', 'asfd', 'asdf', 'afsd', 'asdf', 'adfs', NULL, 'adfs', 'dfasf', 'asdf', 'dfs', '-1', 0, '2022-08-15 03:54:18', '2022-08-15 03:54:18'),
(71, '', 4, '608.02', '72.96', '0.00', 'ASDF1234', '680.98', 'asfd', 'asdf', 'afsd', 'asdf', 'adfs', NULL, 'adfs', 'dfasf', 'asdf', 'dfs', '-1', 0, '2022-08-15 03:54:19', '2022-08-15 03:54:19'),
(72, '', 4, '608.02', '72.96', '0.00', 'ASDF1234', '680.98', 'asfd', 'asdf', 'afsd', 'asdf', 'adfs', NULL, 'adfs', 'dfasf', 'asdf', 'dfs', '-1', 0, '2022-08-15 03:54:27', '2022-08-15 03:54:27'),
(73, '', 4, '608.02', '72.96', '0.00', 'ASDF1234', '680.98', 'asdf', 'afsd', 'dfas', 'asdf', 'fad', NULL, 'dfas', 'adfs', 'asfd', 'adsf', '-1', 0, '2022-08-15 03:54:40', '2022-08-15 03:54:40'),
(74, '', 4, '608.02', '72.96', '0.00', 'ASDF1234', '680.98', 'asdf', 'afsd', 'dfas', 'asdf', 'fad', NULL, 'dfas', 'adfs', 'asfd', 'adsf', '-1', 0, '2022-08-15 03:55:07', '2022-08-15 03:55:07'),
(75, '', 4, '608.02', '72.96', '0.00', 'ASDF1234', '680.98', 'asdf', 'afsd', 'dfas', 'asdf', 'fad', NULL, 'dfas', 'adfs', 'asfd', 'adsf', '-1', 0, '2022-08-15 03:55:18', '2022-08-15 03:55:18'),
(76, '', 4, '1.00', '137.52', '0.00', 'ASDF1234', '1.00', 'afds', 'Mechelle', 'dasff', 'asdf', 'Quintessa', NULL, 'Quaerat voluptas dol', 'dfas', 'asdf', '64880', '-1', 0, '2022-08-15 03:55:43', '2022-08-15 03:55:43'),
(77, '', 4, '1.00', '137.52', '0.00', 'ASDF1234', '1.00', 'afds', 'Mechelle', 'dasff', 'asdf', 'Quintessa', NULL, 'Quaerat voluptas dol', 'dfas', 'asdf', '64880', '-1', 0, '2022-08-15 03:56:33', '2022-08-15 03:56:33'),
(78, '', 4, '1.00', '137.52', '0.00', 'ASDF1234', '1.00', 'afds', 'Mechelle', 'dasff', 'asdf', 'Quintessa', NULL, 'Quaerat voluptas dol', 'dfas', 'asdf', '64880', '-1', 0, '2022-08-15 03:56:43', '2022-08-15 03:56:43'),
(88, '', 4, '222.01', '26.64', '0.00', NULL, '248.65', 'Rebekah', 'Hill', 'Facere odio error te', 'piwi@mailinator.com', 'Eos ullamco odit cu', NULL, 'Sapiente non iusto d', 'Aliquip odio et tene', 'Dicta a facere quasi', '25673', '-1', 0, '2022-08-19 00:09:25', '2022-08-19 00:09:25'),
(89, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Bruce', 'Henderson', 'Dolores corrupti ha', 'bokyzabuh@mailinator.com', 'Qui ab tempor omnis', NULL, 'Incidunt quis quo d', 'Placeat quaerat cor', 'Dolor amet ullamco', '55771', '-1', 0, '2022-08-19 00:13:24', '2022-08-19 00:13:24'),
(90, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Bruce', 'Henderson', 'Dolores corrupti ha', 'bokyzabuh@mailinator.com', 'Qui ab tempor omnis', NULL, 'Incidunt quis quo d', 'Placeat quaerat cor', 'Dolor amet ullamco', '55771', '-1', 0, '2022-08-19 00:20:26', '2022-08-19 00:20:26'),
(91, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Ayanna', 'Rice', 'Ipsam vel voluptate', 'poro@mailinator.com', 'A earum necessitatib', NULL, 'Nesciunt sunt et q', 'Non hic dolorum assu', 'Fugiat quidem quia n', '77147', '-1', 0, '2022-08-19 00:26:04', '2022-08-19 00:26:04'),
(92, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Ayanna', 'Rice', 'Ipsam vel voluptate', 'poro@mailinator.com', 'A earum necessitatib', NULL, 'Nesciunt sunt et q', 'Non hic dolorum assu', 'Fugiat quidem quia n', '77147', '-1', 0, '2022-08-19 00:26:27', '2022-08-19 00:26:27'),
(93, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Ayanna', 'Rice', 'Ipsam vel voluptate', 'poro@mailinator.com', 'A earum necessitatib', NULL, 'Nesciunt sunt et q', 'Non hic dolorum assu', 'Fugiat quidem quia n', '77147', '-1', 0, '2022-08-19 00:28:03', '2022-08-19 00:28:03'),
(94, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Ayanna', 'Rice', 'Ipsam vel voluptate', 'poro@mailinator.com', 'A earum necessitatib', NULL, 'Nesciunt sunt et q', 'Non hic dolorum assu', 'Fugiat quidem quia n', '77147', '-1', 0, '2022-08-19 00:29:08', '2022-08-19 00:29:08'),
(95, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Pascale', 'Crosby', 'Unde qui dolor ad de', 'zomafut@mailinator.com', 'Distinctio Aliquid', NULL, 'Aliquam ad voluptas', 'Veniam adipisicing', 'Nulla voluptatibus a', '95629', '-1', 0, '2022-08-19 00:29:27', '2022-08-19 00:29:27'),
(96, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Pascale', 'Crosby', 'Unde qui dolor ad de', 'zomafut@mailinator.com', 'Distinctio Aliquid', NULL, 'Aliquam ad voluptas', 'Veniam adipisicing', 'Nulla voluptatibus a', '95629', '-1', 0, '2022-08-19 00:29:44', '2022-08-19 00:29:44'),
(97, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Daria', 'Boone', 'Ex similique deserun', 'cegi@mailinator.com', 'Qui tenetur nemo exe', NULL, 'Hic consectetur occ', 'Reprehenderit qui i', 'Laborum quod quia ip', '80675', '-1', 0, '2022-08-19 00:29:55', '2022-08-19 00:29:55'),
(98, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Daria', 'Boone', 'Ex similique deserun', 'cegi@mailinator.com', 'Qui tenetur nemo exe', NULL, 'Hic consectetur occ', 'Reprehenderit qui i', 'Laborum quod quia ip', '80675', '-1', 0, '2022-08-19 00:30:46', '2022-08-19 00:30:46'),
(99, '', 4, '444.02', '53.28', '0.00', NULL, '497.30', 'Daria', 'Boone', 'Ex similique deserun', 'cegi@mailinator.com', 'Qui tenetur nemo exe', NULL, 'Hic consectetur occ', 'Reprehenderit qui i', 'Laborum quod quia ip', '80675', '-1', 0, '2022-08-19 00:32:57', '2022-08-19 00:32:57'),
(100, '', 4, '222.01', '26.64', '0.00', NULL, '248.65', 'Kyle', 'Sullivan', 'In minima facere atq', 'rusonoquta@mailinator.com', 'Molestiae dolor ad d', NULL, 'Laboriosam nulla qu', 'Porro proident veni', 'Et assumenda aut vel', '76710', '-1', 0, '2022-08-19 00:34:14', '2022-08-19 00:34:14'),
(101, '', 4, '220.01', '26.40', '0.00', NULL, '246.41', 'Bethany', 'Serrano', 'Nisi quasi saepe con', 'japefi@mailinator.com', 'Nihil dolore modi au', NULL, 'Blanditiis exercitat', 'Quasi qui odio volup', 'In veniam corporis', '62149', '-1', 0, '2022-08-19 00:38:19', '2022-08-19 00:38:19'),
(102, '', 4, '222.01', '26.64', '0.00', NULL, '248.65', 'Graiden', 'Garrison', 'Officia consectetur', 'duqywajoty@mailinator.com', 'Eum qui libero nisi', NULL, 'Quam atque eos volup', 'Eaque unde quod sed', 'Qui voluptate corpor', '92173', '-1', 0, '2022-08-19 00:39:21', '2022-08-19 00:39:21'),
(103, '', 4, '222.01', '26.64', '0.00', NULL, '248.65', 'Kiayada', 'Livingston', 'Vel Nam tenetur recu', 'qazumomytu@mailinator.com', 'Ratione pariatur Au', NULL, 'Ea facere commodi do', 'Sint dolor elit mo', 'Qui perspiciatis ni', '85275', '-1', 0, '2022-08-19 00:46:34', '2022-08-19 00:46:34'),
(104, '', 4, '222.01', '26.64', '0.00', NULL, '248.65', 'Kiayada', 'Livingston', 'Vel Nam tenetur recu', 'qazumomytu@mailinator.com', 'Ratione pariatur Au', NULL, 'Ea facere commodi do', 'Sint dolor elit mo', 'Qui perspiciatis ni', '85275', '-1', 0, '2022-08-19 00:46:57', '2022-08-19 00:46:57'),
(105, '', 4, '444.02', '53.28', '0.00', 'ASDF1234', '497.30', 'Lareina', 'Gibbs', 'Ea quod consequatur', 'mijehiromy@mailinator.com', 'Eum pariatur Et mod', NULL, 'Animi est aut sed l', 'Eum possimus quasi', 'Voluptas odio velit', '38263', '-1', 0, '2022-08-19 00:53:18', '2022-08-19 00:53:18'),
(106, '', 4, '444.02', '53.28', '0.00', 'ASDF1234', '497.30', 'Aquila', 'Price', 'Cum aliquip eum anim', 'vimibyn@mailinator.com', 'Nulla dolor aspernat', NULL, 'Officiis ad consecte', 'Delectus dicta ipsa', 'Consequatur perferen', '80156', '-1', 0, '2022-08-19 01:19:14', '2022-08-19 01:19:14'),
(107, '', 4, '222.01', '26.64', '0.00', 'ASDF1234', '248.65', 'Brock', 'Haney', 'Suscipit excepturi n', 'vawym@mailinator.com', 'Dolore ad est nesciu', NULL, 'Voluptatem laudantiu', 'Possimus error blan', 'Dicta elit aliquid', '78556', '-1', 0, '2022-08-19 01:23:03', '2022-08-19 01:23:03'),
(108, '', 4, '192.01', '23.04', '30.00', 'ASDF1234', '215.05', 'Rebecca', 'Tillman', 'Quae soluta odit par', 'hoba@mailinator.com', 'Ex dignissimos in si', NULL, 'Lorem culpa amet l', 'Voluptas est duis ci', 'Earum ducimus nostr', '42753', '-1', 0, '2022-08-19 01:43:06', '2022-08-19 01:43:06'),
(109, '', 4, '199.01', '23.88', '0.00', NULL, '222.89', 'adf', 'dfas', 'dfas', 'dasf', 'dfas', NULL, 'dfas', 'adfs', 'dfs', 'dfsa', '-1', 0, '2022-08-19 05:10:38', '2022-08-19 05:10:38'),
(110, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'asdf', 'dfas', 'dfas', 'adfs', 'dfas', NULL, 'dfas', 'Non hic dolorum assu', 'dasf', 'Deacon', '-1', 0, '2022-08-19 05:13:13', '2022-08-19 05:13:13'),
(111, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'Rice', 'Ipsam vel voluptate', 'adsfasdfrrkokk@gmail.com', 'dasf', NULL, 'Jana', 'Non hic dolorum assu', 'Placeat omnis autem', 'dasfdfs', '-1', 0, '2022-08-19 05:14:58', '2022-08-19 05:14:58'),
(112, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:16:32', '2022-08-19 05:16:32'),
(113, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:17:48', '2022-08-19 05:17:48'),
(114, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:18:11', '2022-08-19 05:18:11'),
(115, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:19:43', '2022-08-19 05:19:43'),
(116, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:21:17', '2022-08-19 05:21:17'),
(117, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:22:23', '2022-08-19 05:22:23'),
(118, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:23:19', '2022-08-19 05:23:19'),
(119, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:24:41', '2022-08-19 05:24:41'),
(120, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:24:53', '2022-08-19 05:24:53'),
(121, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'adsf', 'dfas', 'dfs', 'dfasdfasf', 'dfas', NULL, 'dfsadfas', 'dfas', 'dfsdfs', 'dfs', '-1', 0, '2022-08-19 05:25:39', '2022-08-19 05:25:39'),
(122, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'dfas', 'Moon', 'Ipsam vel voluptate', 'dfs', 'Qui accusantium et c', NULL, 'Nesciunt sunt et q', 'Voluptate voluptas v', 'dfs', 'asdf', '-1', 0, '2022-08-19 05:26:01', '2022-08-19 05:26:01'),
(123, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'dfas', 'Moon', 'Ipsam vel voluptate', 'dfs', 'Qui accusantium et c', NULL, 'Nesciunt sunt et q', 'Voluptate voluptas v', 'dfs', 'asdf', '-1', 0, '2022-08-19 05:26:35', '2022-08-19 05:26:35'),
(124, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'dfas', 'Moon', 'Ipsam vel voluptate', 'dfs', 'Qui accusantium et c', NULL, 'Nesciunt sunt et q', 'Voluptate voluptas v', 'dfs', 'asdf', '-1', 0, '2022-08-19 05:27:35', '2022-08-19 05:27:35'),
(125, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'asdf', 'Moon', 'Ipsam vel voluptate', 'user@user11gmail.com', 'dasf', NULL, 'Jana', 'Quia excepteur rerum', 'Fugiat quidem quia n', '97987', '-1', 0, '2022-08-19 05:29:13', '2022-08-19 05:29:13'),
(126, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'asdf', 'Moon', 'Ipsam vel voluptate', 'user@user11gmail.com', 'dasf', NULL, 'Jana', 'Quia excepteur rerum', 'Fugiat quidem quia n', '97987', '-1', 0, '2022-08-19 05:31:21', '2022-08-19 05:31:21'),
(127, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'Juliet', 'Moon', 'dsf', 'darkestbrush99@gmail.com', 'asdf', NULL, 'Nesciunt sunt et q', 'Voluptate voluptas v', 'Placeat omnis autem', 'asdf', '-1', 0, '2022-08-19 05:32:31', '2022-08-19 05:32:31'),
(128, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'asdf', 'Moon', 'Ipsam quis culpa ull', 'user@user11gmail.com', 'asdf', NULL, 'Jana', 'dfas', 'Placeat omnis autem', '64880', '-1', 0, '2022-08-19 05:33:32', '2022-08-19 05:33:32'),
(129, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'Ayanna', 'Moon', 'Ipsam quis culpa ull', 'darkestbrush99@gmail.com', 'Qui accusantium et c', NULL, 'Quaerat voluptas dol', 'Voluptate voluptas v', 'Placeat omnis autem', 'dasfdfs', '-1', 0, '2022-08-19 05:34:38', '2022-08-19 05:34:38'),
(130, '', 4, '108.00', '12.96', '30.00', 'ASDF1234', '120.96', 'Stephen', 'Tanner', 'Ullamco rerum necess', 'xydazosu@mailinator.com', 'Et dolorem iste sit', NULL, 'Nostrum ut soluta cu', 'Earum maxime aut ver', 'Dolores id aut sint', '68108', '-1', 0, '2022-08-20 03:21:55', '2022-08-20 03:21:55'),
(131, '', 4, '489.01', '58.68', '30.00', 'ASDF1234', '547.69', 'Melodie', 'Nolan', 'Et cumque est perspi', 'qaropy@mailinator.com', 'Ullamco aspernatur e', NULL, 'Cumque quia fugit u', 'Consequatur illum a', 'Voluptas harum anim', '71711', '-1', 0, '2022-08-20 03:24:08', '2022-08-20 03:24:08'),
(132, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'Indira', 'Allison', 'Dolor velit amet au', 'cafufizoqi@mailinator.com', 'Qui ex fugit tempor', NULL, 'Maiores ducimus nis', 'Id proident aut vol', 'Ut voluptate earum b', '56027', '-1', 0, '2022-08-22 03:02:25', '2022-08-22 03:02:25'),
(133, '', 4, '199.01', '23.88', '0.00', NULL, '222.89', 'Cameran', 'Ellison', 'Incidunt nisi animi', 'kuwajore@mailinator.com', 'Suscipit fugiat prov', NULL, 'Iure perspiciatis e', 'Dicta dignissimos ip', 'Cupiditate facere au', '87823', '-1', 0, '2022-08-22 03:12:22', '2022-08-22 03:12:22'),
(134, '', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'Kim', 'Maxwell', 'Ut natus sequi disti', 'jacyti@mailinator.com', 'Magni eiusmod eu qua', NULL, 'Officia ratione inci', 'Minus irure aute qua', 'Ex dolor duis verita', '19929', '-1', 0, '2022-08-22 03:13:53', '2022-08-22 03:13:53'),
(135, '', 4, '199.01', '23.88', '0.00', NULL, '222.89', 'Savannah', 'Foreman', 'Libero adipisci vel', 'mado@mailinator.com', 'Aute eum dolore solu', NULL, 'Ex praesentium ducim', 'Autem et reprehender', 'Culpa doloribus ut a', '86061', '-1', 0, '2022-08-22 03:19:28', '2022-08-22 03:19:28'),
(136, '', 4, '259.01', '31.08', '0.00', NULL, '290.09', 'Deborah', 'Hoover', 'Occaecat qui beatae', 'humaxu@mailinator.com', 'Fugiat aut vitae qui', NULL, 'Id ullamco possimus', 'Odio sequi rerum sin', 'In ut nobis velit e', '66338', '-1', 0, '2022-08-22 03:21:20', '2022-08-22 03:21:20'),
(137, '', 4, '90.00', '10.80', '30.00', 'ASDF1234', '100.80', 'Abra', 'Wheeler', 'Exercitation corrupt', 'qetyhiz@mailinator.com', 'Fugit quisquam dolo', NULL, 'Tempor labore error', 'Ad ullam sapiente ad', 'Repellendus Et pari', '76472', '-1', 0, '2022-08-22 17:39:26', '2022-08-22 17:39:26'),
(138, '', 4, '368.02', '44.16', '30.00', 'ASDF1234', '412.18', 'Gage', 'Duffy', 'Omnis ad cupiditate', 'hycyv@mailinator.com', 'Quo sed adipisicing', NULL, 'Dicta nemo explicabo', 'Quos a consequat Ma', 'Elit dolor assumend', '82412', '-1', 0, '2022-08-22 17:55:55', '2022-08-22 17:55:55'),
(139, '', 4, '368.02', '44.16', '30.00', 'ASDF1234', '412.18', 'Gage', 'Duffy', 'Omnis ad cupiditate', 'hycyv@mailinator.com', 'Quo sed adipisicing', NULL, 'Dicta nemo explicabo', 'Quos a consequat Ma', 'Elit dolor assumend', '82412', '-1', 0, '2022-08-22 17:56:16', '2022-08-22 17:56:16'),
(140, '', 4, '467.02', '56.04', '0.00', NULL, '523.06', 'Hanae', 'Hendricks', 'Dolore odio velit si', 'zanaq@mailinator.com', 'Nobis elit aut sequ', NULL, 'Voluptatum adipisci', 'Amet eu explicabo', 'Sed autem sit ipsum', '67595', '-1', 0, '2022-08-22 17:57:38', '2022-08-22 17:57:38'),
(141, 'BFA275528', 4, '2.00', '286.57', '0.00', NULL, '2.00', 'Henry', 'Good', 'Quod inventore disti', 'gifip@mailinator.com', 'Aliquid nesciunt un', NULL, 'Sint quod in sit su', 'Reiciendis ducimus', 'Nulla nostrum enim l', '14962', '-1', 0, '2022-08-22 18:28:45', '2022-08-22 18:28:45'),
(142, 'BFA381861', 4, '2.00', '286.57', '0.00', NULL, '2.00', 'Henry', 'Good', 'Quod inventore disti', 'gifip@mailinator.com', 'Aliquid nesciunt un', NULL, 'Sint quod in sit su', 'Reiciendis ducimus', 'Nulla nostrum enim l', '14962', '-1', 0, '2022-08-22 18:29:01', '2022-08-22 18:29:01'),
(143, 'BFA979417', 4, '398.02', '47.76', '0.00', NULL, '445.78', 'Dalton', 'Saunders', 'Aperiam alias reicie', 'xihuhikaw@mailinator.com', 'Eveniet incididunt', NULL, 'Aliqua Eos saepe ve', 'Rerum facilis racist', 'Modi doloremque temp', '25606', '-1', 0, '2022-08-22 18:31:06', '2022-08-22 18:31:06'),
(144, 'BFA413811', 4, '60.00', '7.20', '30.00', 'ASDF1234', '67.20', 'Grant', 'Wiley', 'Nihil totam voluptat', 'zywytydys@mailinator.com', 'Quia earum vel est d', NULL, 'Occaecat corrupti c', 'Voluptas tenetur par', 'Unde est quod do dol', '90144', '-1', 0, '2022-08-22 20:18:03', '2022-08-22 20:18:03'),
(145, 'BFA757247', 4, '60.00', '7.20', '30.00', 'ASDF1234', '67.20', 'Grant', 'Wiley', 'Nihil totam voluptat', 'zywytydys@mailinator.com', 'Quia earum vel est d', NULL, 'Occaecat corrupti c', 'Voluptas tenetur par', 'Unde est quod do dol', '90144', '-1', 0, '2022-08-22 20:18:41', '2022-08-22 20:18:41'),
(146, 'BFA412765', 4, '60.00', '7.20', '30.00', 'ASDF1234', '67.20', 'Grant', 'Wiley', 'Nihil totam voluptat', 'zywytydys@mailinator.com', 'Quia earum vel est d', NULL, 'Occaecat corrupti c', 'Voluptas tenetur par', 'Unde est quod do dol', '90144', '-1', 0, '2022-08-22 20:19:07', '2022-08-22 20:19:07'),
(149, 'BFA283070', 4, '169.01', '20.28', '30.00', 'ASDF1234', '189.29', 'Tufel', 'shaikh', '1134567890', 'tufel22@gmail.com', 'a301', NULL, 'baroda', 'adsf', 'india', '321654', '-1', 0, '2022-09-03 00:21:56', '2022-09-03 00:21:56'),
(150, 'BFA203351', 4, '269.01', '32.28', '0.00', NULL, '301.29', 'Alfreda', 'Roman', 'Aliqua Molestiae id', 'tyvocutani@mailinator.com', 'Eum mollit quas offi', NULL, 'Ducimus voluptatem', 'Duis laborum qui asp', 'Et nisi delectus od', '73174', '-1', 0, '2022-09-05 17:22:15', '2022-09-05 17:22:15'),
(151, 'BFA469061', 10, '569.00', '68.28', '30.00', 'ASDF1234', '637.28', 'Sssd', 'Arehh', '23456', 'umar.ansari7331@gmail.com', 'Whether see', NULL, 'Ccsyv', 'Sheet jgh', 'Oacgxg', 'Sheet', '-1', 0, '2022-09-06 07:55:43', '2022-09-06 07:55:43'),
(152, 'BFA726721', 4, '169.01', '20.28', '30.00', 'ASDF1234', '189.29', 'bvjfhufdn', 'gfvbuyg', '9687058311', 'hubsoftindia@gmail.com', 'gbrtfb', NULL, 'bfgbb', 'fhttyrywmym', 'india', '00000', '-1', 0, '2022-09-06 08:47:44', '2022-09-06 08:47:44'),
(153, 'BFA594602', 10, '390.00', '46.80', '30.00', 'ASDF1234', '436.80', 'yghj', 'ghf', 'gsds', 'dhfdtjf', 'hdhh', NULL, 'gfdh', 'fdgs', 'gh', 'rghf', '-1', 0, '2022-09-06 10:49:48', '2022-09-06 10:49:48'),
(154, 'BFA319780', 11, '260.00', '31.20', '30.00', 'ASDF1234', '291.20', 'tufel', 'shaikh', '8128031455', 'shaikhtufel920@gmail.com', 'a/5 momin parl 1 near kgn masjid,tandalja', NULL, 'vadodara', 'ttttt', 'canada', '390012', '-1', 0, '2022-09-07 12:41:02', '2022-09-07 12:41:02'),
(155, 'BFA908483', 4, '80.00', '9.60', '30.00', 'ASDF1234', '89.60', 'Aliza', 'Rayees', '45687123', 'ALiza77@gmail.com', 'A -371 a bleeker street', NULL, 'berlin', '123654', 'scottland', '123654', '-1', 0, '2022-09-09 04:28:39', '2022-09-09 04:28:39'),
(157, 'BFA821779', 10, '70.00', '8.40', '0.00', NULL, '78.40', 'Umar', 'Ansari', '9409172730', 'umar.ansari7331@gmail.com', 'C-12, Momin Park-1, Tandalja road, Vadodara, Gujarat', NULL, 'Vadodara', 'Gujarat', 'india', '390012', '-1', 0, '2022-09-11 03:15:00', '2022-09-11 03:15:00'),
(158, 'BFA610057', 10, '65.00', '7.80', '0.00', NULL, '72.80', 'Umar', 'Amsari', 'Beeyach', 'umar.ansari7331@gmail.com', 'C 12 mominpark one', NULL, 'Vadodara', 'Lol', 'India', 'Sheet', '-1', 0, '2022-09-11 05:57:43', '2022-09-11 05:57:43'),
(159, 'BFA684673', 10, '100.00', '12.00', '0.00', NULL, '112.00', 'Umar', 'Amsari', 'Pppoopoo', 'umar.ansari7331@gmail.com', 'C 12 mominpark one', NULL, 'Vadodara', 'Lol', 'India', 'Sheet', '-1', 0, '2022-09-13 01:11:14', '2022-09-13 01:11:14'),
(160, 'BFA160099', 12, '110.00', '13.20', '30.00', 'ASDF1234', '123.20', 'AADIL', 'Rayees', '123456789', 'rizwan11@gmail.com', 'maryam complex tandalja road vadodara', NULL, 'asdf', '123456', 'india', '123456', '-1', 0, '2022-09-16 12:45:00', '2022-09-16 12:45:00'),
(161, 'BFA505323', 4, '709.00', '85.08', '30.00', 'ASDF1234', '794.08', 'Aadil', 'Rayees', '838829483', 'codeaxion77@gmail.com', '301', 'Ld', 'Vadodara', '8393', 'India', '390020', '-1', 0, '2022-09-22 10:14:58', '2022-09-22 10:14:58'),
(164, 'BFA753280', 4, '84.00', '10.08', '0.00', NULL, '94.08', 'Aspen', 'Mcmillan', '+1 (383) 321-3765', 'denymit@mailinator.com', 'Rerum voluptatum vol', 'Voluptates eligendi', 'Nulla non est velit', 'Voluptate id quisqua', 'Quo voluptate beatae', '22639', '-1', 0, '2022-12-05 08:47:05', '2022-12-05 08:47:05'),
(165, 'BFA456442', 3, '170.00', '20.40', '30.00', 'ASDF1234', '190.40', 'Lilah', 'Serrano', '+1 (951) 984-1263', 'jyvyb@mailinator.com', 'Culpa deserunt et i', 'Aut exercitation dig', 'Omnis cupidatat repr', 'Ut quia ad porro qui', 'Iste ut voluptas ex', '32460', '-1', 0, '2022-12-11 07:24:12', '2022-12-11 07:24:12'),
(166, 'BFA533251', 14, '70.00', '8.40', '30.00', 'ASDF1234', '78.40', 'Deacon', 'White', '+1 (706) 115-2968', 'savugu@mailinator.com', 'Hic porro voluptatem', 'Ea laboris pariatur', 'Quas cupidatat qui i', 'Tempora accusantium', 'Sint aliquip facere', '31558', '-1', 0, '2022-12-11 08:40:44', '2022-12-11 08:40:44'),
(167, 'BFA414225', 15, '369.01', '44.28', '30.00', 'ASDF1234', '413.29', 'Mehzabeen', 'adsf', 'asdf', 'hubsoftindia@gmail.com', '301 mariyam complex tandalja road vadodara', 'asdf', 'asdf', 'asdf', 'india', '123456', '-1', 0, '2022-12-18 08:06:44', '2022-12-18 08:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `sale_price`, `quantity`, `created_at`, `updated_at`) VALUES
(175, 3, 133, '70.00', 2, '2022-08-22 03:12:43', '2022-08-22 03:12:43'),
(177, 3, 134, '70.00', 2, '2022-08-22 03:14:06', '2022-08-22 03:14:06'),
(179, 1, 136, '199.01', 1, '2022-08-22 03:21:20', '2022-08-22 03:21:20'),
(180, 4, 136, '30.00', 2, '2022-08-22 03:21:21', '2022-08-22 03:21:21'),
(181, 8, 137, '60.00', 2, '2022-08-22 17:39:26', '2022-08-22 17:39:26'),
(182, 1, 139, '199.01', 2, '2022-08-22 17:56:16', '2022-08-22 17:56:16'),
(183, 1, 140, '199.01', 1, '2022-08-22 17:57:38', '2022-08-22 17:57:38'),
(185, 5, 140, '69.00', 1, '2022-08-22 17:57:39', '2022-08-22 17:57:39'),
(188, 1, 141, '199.01', 10, '2022-08-22 18:28:45', '2022-08-22 18:28:45'),
(189, 1, 142, '199.01', 10, '2022-08-22 18:29:01', '2022-08-22 18:29:01'),
(191, 1, 143, '199.01', 1, '2022-08-22 18:32:25', '2022-08-22 18:32:25'),
(193, 1, 143, '199.01', 1, '2022-08-22 19:51:58', '2022-08-22 19:51:58'),
(195, 10, 143, '40.00', 1, '2022-08-22 19:55:20', '2022-08-22 19:55:20'),
(197, 11, 144, '30.00', 3, '2022-08-22 20:18:03', '2022-08-22 20:18:03'),
(198, 11, 145, '30.00', 3, '2022-08-22 20:18:41', '2022-08-22 20:18:41'),
(200, 20, 146, '19.00', 1, '2022-08-22 21:29:22', '2022-08-22 21:29:22'),
(201, 6, 146, '70.00', 1, '2022-08-22 21:29:31', '2022-08-22 21:29:31'),
(206, 1, 146, '199.01', 1, '2022-08-23 17:42:27', '2022-08-23 17:42:27'),
(207, 45, 146, '599.00', 1, '2022-08-23 17:43:34', '2022-08-23 17:43:34'),
(209, 1, 149, '199.01', 1, '2022-09-03 00:21:56', '2022-09-03 00:21:56'),
(210, 3, 150, '70.00', 1, '2022-09-05 17:22:15', '2022-09-05 17:22:15'),
(211, 1, 150, '199.01', 1, '2022-09-05 17:22:15', '2022-09-05 17:22:15'),
(212, 45, 151, '599.00', 1, '2022-09-06 07:55:43', '2022-09-06 07:55:43'),
(213, 1, 152, '199.01', 1, '2022-09-06 08:47:44', '2022-09-06 08:47:44'),
(214, 3, 153, '70.00', 6, '2022-09-06 10:49:48', '2022-09-06 10:49:48'),
(215, 13, 154, '110.00', 2, '2022-09-07 12:41:02', '2022-09-07 12:41:02'),
(216, 47, 154, '70.00', 1, '2022-09-07 12:41:02', '2022-09-07 12:41:02'),
(217, 13, 155, '110.00', 1, '2022-09-09 04:28:39', '2022-09-09 04:28:39'),
(219, 47, 157, '70.00', 1, '2022-09-11 03:15:00', '2022-09-11 03:15:00'),
(220, 48, 158, '65.00', 1, '2022-09-11 05:57:43', '2022-09-11 05:57:43'),
(221, 4, 159, '30.00', 1, '2022-09-13 01:11:14', '2022-09-13 01:11:14'),
(222, 3, 159, '70.00', 1, '2022-09-13 01:11:14', '2022-09-13 01:11:14'),
(223, 3, 160, '70.00', 2, '2022-09-16 12:45:00', '2022-09-16 12:45:00'),
(224, 49, 161, '140.00', 1, '2022-09-22 10:14:58', '2022-09-22 10:14:58'),
(225, 45, 161, '599.00', 1, '2022-09-22 10:14:58', '2022-09-22 10:14:58'),
(228, 77, 164, '84.00', 1, '2022-12-05 08:47:05', '2022-12-05 08:47:05'),
(229, 76, 165, '200.00', 1, '2022-12-11 07:24:12', '2022-12-11 07:24:12'),
(230, 50, 166, '100.00', 1, '2022-12-11 08:40:44', '2022-12-11 08:40:44'),
(231, 1, 167, '199.01', 1, '2022-12-18 08:06:44', '2022-12-18 08:06:44'),
(232, 76, 167, '200.00', 1, '2022-12-18 08:06:44', '2022-12-18 08:06:44'),
(233, 3, 31, '70.00', 1, '2022-12-18 09:16:01', '2022-12-18 09:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_attribute_values`
--

CREATE TABLE `order_item_attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attribute_value_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attribute_id` bigint(11) UNSIGNED NOT NULL,
  `value` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('codeaxion77@gmail.com', '$2y$10$LWTnJx68MzHFgzmx2urAleYHhjZvaWpwhipcggCsRNpvXN/k8e.eO', '2023-02-12 10:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_active` int(11) NOT NULL DEFAULT -1,
  `stock_status` int(11) NOT NULL DEFAULT -1,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT -1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(11) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 10,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand_name`, `slug`, `short_description`, `description`, `product_details`, `regular_price`, `sale_price`, `SKU`, `rec_active`, `stock_status`, `barcode`, `featured`, `image`, `server_image`, `category_id`, `brand_id`, `quantity`, `meta_title`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(1, 'Floral Charm Gift Arrangement', 'Fnp', 'Floral-Charm-Gift-Arrangement', 'The image displayed is indicative in nature. Actual product may vary in shape or design as per the availability. Flowers may be delivered in fully bloomed, semi-bloomed or bud stage. The chosen delivery time is an estimate and depends on the availability of the product and the destination to which you want the product to be delivered. Since flowers are perishable in nature, we attempt delivery of your order only once. The delivery cannot be redirected to any other address.', 'QuietComfort 35 wireless headphones II are engineered with renowned noise cancellation. With the Google Assistant and Amazon Alexa built-in, you have instant access to millions of songs, playlists and more—hands free. Simply choose your voice assistant and ask away. And that’s just the beginning. QuietComfort 35 wireless headphones II are now enabled with Bose AR—the world’s very first audio-only augmented reality platform, where applications will utilise contextual audio to deliver first-of-a-kind experiences. Unlock Bose AR via a firmware update through the Bose Connect app. Now in limited-edition Rose Gold.\r\n\r\nFocus. On.\r\nWhat happens when you clear away the noisy distractions of the world? Concentration goes to the next level. You get deeper into your music, your work or whatever you want to focus on. That’s the power of QuietComfort 35 wireless headphones II.\r\n\r\nPut them on and get closer to what you’re most passionate about. Proprietary technology continuously monitors and measures outside noise and then cancels it with the opposite signal. But we didn’t stop there. You can also adjust the level of noise cancellation between three levels to better fit your environment. So you can focus—really focus—on what matters.', '\r\nBrand	‎Sony\r\nManufacturer	‎Sony Corporation, Sony Corporation, 1-7-1, Konan, Minato-ku, Tokyo, 108-0075, Japan\r\nModel	‎WH-1000XM3\r\nModel Name	‎WH-1000XM3\r\nModel Year	‎2018\r\nProduct Dimensions	‎18.5 x 7.7 x 25.2 cm; 255 Grams\r\nBatteries	‎1 Lithium Polymer batteries required. (included)\r\nItem model number	‎WH-1000XM3\r\nHardware Platform	‎Smartphone\r\nHardware Interface	‎Bluetooth 4.0\r\nCompatible Devices	‎Mobile (IOS, Android, others), Tablets, Laptops, and all bluetooth devices\r\nSpecial Features	‎Wireless\r\nMounting Hardware	‎Carrying case, Plug adapter for in-flight use, Headphone cable (approx. 1.2 m),USB cable: Type-C™ (approx. 20 cm)\r\nNumber Of Items	‎1\r\nMicrophone Form Factor	‎With Microphone\r\nHeadphones Form Factor	‎Over Ear\r\nBattery Average Life	‎30 Hours\r\nBatteries Included	‎Yes\r\nBatteries Required	‎Yes\r\nBattery Cell Composition	‎Lithium Ion\r\nCable Feature	‎Detachable\r\nConnector Type	‎Wireless, Wired\r\nMaterial	‎Crystal\r\nIncludes Rechargable Battery	‎Yes\r\nIncludes AC Adapter	‎No\r\nManufacturer	‎Sony Corporation\r\nImported By	‎SONY INDIA PRIVATE LIMITED, A-18, Mohan Cooperative Industrial Estate, Mathura Road, New Delhi - 110011\r\nItem Weight	‎255 g', '299.00', '199.01', '1431', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/l/v20220203121849/floral-charm-gift-arrangement_1.jpg', NULL, 31, 0, 4, NULL, NULL, NULL, '2022-05-25 08:19:30', '2022-12-18 08:06:44'),
(3, 'Exotic Orchids & Anthuriums Basket', 'Basket', 'Exotic-Orchids-&-Anthuriums-Basket', 'Exotic Orchids & Anthuriums Basket', 'Discover a deeper, highly immersive gaming experience1 that brings the action to life in the palms of your hands.( Compatible Hardware - PlayStation5 console)', 'Rated ‏ : ‎ Ages 3 and Over\r\nProduct Dimensions ‏ : ‎ 6.9 x 18.8 x 18.9 cm; 500 Grams\r\nRelease date ‏ : ‎ 15 July 2021\r\nASIN ‏ : ‎ B09842ZHNM\r\nCountry of Origin ‏ : ‎ China\r\nManufacturer ‏ : ‎ Sony, Made in China by Sony Interactive Entertainment Europe Ltd , 1-7-1 Konan Minato-ku Tokyo, 108-0075 Japan\r\nPacker ‏ : ‎ Sony Global Treasury Services Plc. The Heights Brooklands WEYBRIDGE, SURREY KT13 0XW GREAT BRITAIN\r\nImporter ‏ : ‎ Sony India Pvt Ltd A-18, Mathura Rd, Mohan Cooperative Industrial Estate, Saidabad, New Delhi, Delhi 110044 - 011 6600 6157\r\nItem Weight ‏ : ‎ 500 g\r\nItem Dimensions LxWxH ‏ : ‎ 6.9 x 18.8 x 18.9 Centimeters\r\nNet Quantity ‏ : ‎ 1 count\r\nIncluded Components ‏ : ‎ 1unit Wireless controller\r\nGeneric Name ‏ : ‎ Gaming Controller PS5\r\nCustomer Reviews: 4.7 out of 5 stars    515 ratings\r\n', '199.00', '70.00', '4123', -1, -1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220520190320/exotic-orchids-n-anthuriums-basket_1.jpg', NULL, 30, 0, 14, NULL, NULL, NULL, NULL, '2022-09-24 04:43:13'),
(4, 'Romantic 200 Roses Beautifully Tied Bouquet', 'fnp', 'Romantic-200-Roses-Beautifully-Tied-Bouquet', 'Romantic 200 Roses Beautifully Tied Bouquet', 'Prepare for an adventure of limitless possibilities as you build, mine, battle mobs, and explore the ever-changing Minecraft landscape.', '\r\nCPU	Intel Core i3-3210 3.2 GHz/ AMD A8-7600 APU 3.1 GHz or equivalent\r\nGPU (Integrated)	Intel HD Graphics 4000 (Ivy Bridge) or AMD Radeon R5 series (Kaveri line) with OpenGL 4.4*\r\nGPU (Discrete)	Nvidia GeForce 400 Series or AMD Radeon HD 7000 series with OpenGL 4.4\r\nRAM	4GB\r\nHDD	At least 1GB for game core, maps and other files\r\nOS	Windows: Windows 7 and up\r\nOS	macOS: Any 64-bit OS X using 10.9 Maverick or newer\r\nOS	Linux: Any modern 64-bit distributions from 2014 onwards\r\n', '50.00', '30.00', '6753', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220131210533/romantic-200-roses-beautifully-tied-bouquet_1.jpg', NULL, 35, 0, 7, NULL, NULL, NULL, NULL, '2022-09-24 04:33:08'),
(5, 'PS5 Gran Turismo 7 Standard Edition', 'Gran Turismo', 'gran-turismo-7', 'The best of Gran Turismo: Explore all that the Real Driving Simulator can be with new tools to help you put your own mark on your driving experiencesDream garage: Collect, tune, race and customize hundreds of cars and create your dream garage collection.Connect and compete: Join an international community of drivers to share race strategies, tuning tips, livery designs and photos, before taking to the track to go head-to-headUnravel startling mysteries: Uncover the secret behind Earth\'s imminent collapse and unlock a hidden chapter in the ancient past. one that will change Aloy forever', 'Gran Turismo 7 brings together the very best features of the Real Driving Simulator, With the reintroduction of the legendary GT Simulation Mode, buy, tune, race and sell your way through a rewarding solo campaign as you unlock new cars and challenges.', '\r\nProduct details\r\nRated ‏ : ‎ Ages 3 and Over\r\nLanguage ‏ : ‎ English\r\nProduct Dimensions ‏ : ‎ 13.5 x 1.5 x 18 cm; 50 Grams\r\nRelease date ‏ : ‎ 4 March 2022\r\nASIN ‏ : ‎ B09GVLRJVS\r\nItem model number ‏ : ‎ 23873\r\nCountry of Origin ‏ : ‎ Australia\r\nManufacturer ‏ : ‎ Sony, SONY DADC EUROPE LIMITED ZWEIGNIEDERLASSUNG OSTERREICH SONYSTRASSE 20,A-5081,ANIF AUSTRIA - 1800-103-7799\r\nPacker ‏ : ‎ SONY DADC EUROPE LIMITED\r\nImporter ‏ : ‎ Sony India Pvt Ltd A-18, Mathura Rd, Mohan Cooperative Industrial Estate, Saidabad, New Delhi, Delhi 110044 - 011 6600 6157\r\nItem Weight ‏ : ‎ 50 g\r\nItem Dimensions LxWxH ‏ : ‎ 13.5 x 1.5 x 18 Centimeters\r\nNet Quantity ‏ : ‎ 1 count\r\nIncluded Components ‏ : ‎ 1 Game Disc\r\nGeneric Name ‏ : ‎ PS5 Console Gaming Software', '80.00', '69.00', '7834', 1, 1, NULL, 1, 'https://m.media-amazon.com/images/I/71QP4ZcgynL._SY679_.jpg', NULL, 29, 0, 0, NULL, NULL, NULL, NULL, '2022-09-24 04:51:41'),
(6, 'Vibrant Mixed Flowers Green Jar', 'mixed flowers', 'Vibrant-Mixed-Flowers-Green-Jar', 'Vibrant Mixed Flowers Green Jar', 'over 200 game of the year awards with best studios in the world', 'sony ps5 game', '100.00', '70.00', '3314', 1, 1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20220520190336/vibrant-mixed-flowers-green-jar_1.jpg', NULL, 30, 0, 13, NULL, NULL, NULL, '0000-00-00 00:00:00', '2022-09-24 04:51:04'),
(8, 'Beautiful Mixed Flowers Bouquet', 'Bouquet', 'Beautiful-Mixed-Flowers-Bouquet', 'Beautiful Mixed Flowers Bouquet', 'a open world spiderman game with miles morales', 'a open world spiderman game with miles morales', '70.00', '60.00', '6543', -1, -1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20220520190339/beautiful-mix-flowers-bouquet_1.jpg', NULL, 35, 0, 10, NULL, NULL, NULL, NULL, '2022-09-24 04:51:16'),
(10, 'Gems On Top Black Forest Cake Half Kg', 'Capcom', 'Gems-On-Top-Black-Forest-Cake-Half-Kg', 'Gems On Top Black Forest Cake Half Kg', 'a horror game remake from ps2', 'a horror game remake from ps2', '70.00', '40.00', '8654', -1, -1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20191113144513/gems-on-top-black-forest-cake-half-kg_1.jpg', NULL, 29, 0, 13, NULL, NULL, NULL, NULL, '2022-09-24 04:45:34'),
(11, 'Sweet Cat Design Cake- Chocolate 2 Kg', 'cake', 'Sweet-Cat-Design-Cake-Chocolate-2-Kg', 'Sweet Cat Design Cake- Chocolate 2 Kg', 'things just got out of hands', 'things just got out of hands', '70.00', '30.00', '5762', -1, -1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20200901172420/sweet-cat-design-cake-chocolate-2-kg_1.jpg', NULL, 29, 0, 2, NULL, NULL, NULL, NULL, '2022-09-24 04:45:42'),
(13, 'Propose With Vanilla Cream Cup Cakes Set of 6', 'cup cakes', 'Propose-With-Vanilla-Cream-Cup-Cakes-Set-of-6', 'Propose With Vanilla Cream Cup Cakes Set of 6', 'Compatibility: PS5, PS4, PS VR, Windows, Mac OS, Mobile Phones\r\nBuilt for a new generation: Wireless experience fine-tuned for 3D audio on PS5 consoles\r\nDual Hidden Noise-Cancelling Microphones: Ensure you\'re heard by your friends online with two built-in microphones, optimally positioned for crystal-clear voice capture and enhanced by noise-cancelling technology\r\nEasy Access Controls: Adjust your setup as you play with built-in mic mute, master volume and in-game audio to chat mix controls. Easily check how you sound to your teammates too, with the dedicated mic monitoring button.\r\nUSB Type-C charging, Gloss Detailing, Ultra-Sleek finish\r\nEasy connectivity with PS5 or PS4 consoles using the wireless adaptor (included in the box)\r\nEnjoy comfortable gaming with refined ear pads and headband strap', 'Rated ‏ : ‎ Not Checked\r\nLanguage ‏ : ‎ English\r\nProduct Dimensions ‏ : ‎ 22.5 x 22 x 13 cm; 292 Grams\r\nASIN ‏ : ‎ B09KRYLYDH\r\nItem model number ‏ : ‎ CFI-ZWH1\r\nCountry of Origin ‏ : ‎ China\r\nManufacturer ‏ : ‎ Sony, Made in China by Sony Interactive Entertainment Europe Ltd , 1-7-1 Konan Minato-ku Tokyo, 108-0075 Japan\r\nPacker ‏ : ‎ Sony Global Treasury Services Plc. The Heights Brooklands WEYBRIDGE, SURREY KT13 0XW GREAT BRITAIN\r\nImporter ‏ : ‎ Sony India Pvt Ltd A-18, Mathura Rd, Mohan Cooperative Industrial Estate, Saidabad, New Delhi, Delhi 110044 - 011 6600 6157\r\nItem Weight ‏ : ‎ 292 g\r\nItem Dimensions LxWxH ‏ : ‎ 22.5 x 22 x 13 Centimeters\r\nNet Quantity ‏ : ‎ 1 count\r\nIncluded Components ‏ : ‎ 1unit Headset,1unit Wireless adaptor,1unit USB cable,1 unit Audio cable.\r\nGeneric Name ‏ : ‎ PULSE 3D™ wireless headset Black - (PlayStation®5)\r\nBest Sellers Rank: #182 in Video Games (See Top 100 in Video Games)\r\n#2 in PlayStation 5 Headsets', '120.00', '110.00', '2341', -1, -1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20210121181904/propose-with-vanilla-cream-cup-cakes-set-of-6_1.jpg', NULL, 29, 0, 1, NULL, NULL, NULL, NULL, '2022-09-24 04:45:56'),
(18, 'Creamy Coffee Cake- Half Kg', 'WESTERN DIGITAL', 'Creamy-Coffee-Cake-Half-Kg', 'Creamy Coffee Cake- Half Kg', 'Next-gen PCIe Gen4 technology optimized for top-tier gaming\r\nIrrationally fast read/write speeds up to 7000/5300MB/s** and up to 1,000,000 IOPS***\r\nCustomizable RGB lighting (Windows Only) programmable with the WD_BLACKTM Dashboard (heatsink model only)\r\nUp to 2TB* capacity to hold your favorite battle-ready games\r\nDownloadable WD_BLACKTM Dashboard software to customize and control your gaming experience', 'Next-gen PCIe Gen4 technology optimized for top-tier gaming\r\nIrrationally fast read/write speeds up to 7000/5300MB/s** and up to 1,000,000 IOPS***\r\nCustomizable RGB lighting (Windows Only) programmable with the WD_BLACKTM Dashboard (heatsink model only)\r\nUp to 2TB* capacity to hold your favorite battle-ready games\r\nDownloadable WD_BLACKTM Dashboard software to customize and control your gaming experience', '190.00', '180.00', '6748', -1, -1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20190507132015/creamy-coffee-cake-half-kg_1.jpg', NULL, 29, 0, 8, NULL, NULL, NULL, NULL, '2022-09-24 04:46:12'),
(20, 'Philodendron Plant White N Golden Pot With Stand', 'plant', 'Philodendron-Plant-White-N-Golden-Pot-With-Stand', 'Philodendron Plant White N Golden Pot With Stand', 'The Order: 1886 is a 2015 third-person action-adventure video game developed by Ready at Dawn and published by Sony Computer Entertainment. It was released for the PlayStation 4 on February 20,', 'The Order: 1886 is a 2015 third-person action-adventure video game developed by Ready at Dawn and published by Sony Computer Entertainment. It was released for the PlayStation 4 on February 20,', '50.00', '19.00', '4784', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220817145726/philodendron-plant-white-n-golden-pot-with-stand_1.jpg', NULL, 32, 0, 13, NULL, NULL, NULL, NULL, '2022-09-24 04:51:29'),
(45, 'Roses & Carnations In Glass Vase', 'bouque', 'Roses-&-Carnations-In-Glass-Vase', 'Roses & Carnations In Glass Vase', '', '', '799.00', '599.00', '4568', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220520190332/roses-carnations-in-glass-vase_1.jpg', NULL, 35, 0, 7, NULL, NULL, NULL, '2022-08-22 20:28:01', '2022-09-24 04:51:52'),
(47, 'Rocher Choco Bouquet', 'fererror rocher', 'Rocher-Choco-Bouquet', 'Rocher Choco Bouquet', '', '', '80.00', '70.00', '4562', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/l/v20200206131640/rocher-choco-bouquet_1.jpg', NULL, 36, 0, 4, NULL, NULL, NULL, '2022-09-07 07:04:05', '2022-09-24 04:52:01'),
(48, 'Me & U Bournville Dark Chocolate Bar', 'bournville', 'Me-&-U-Bournville-Dark-Chocolate-Bar', 'One can avail from us a quality approved assortment of Zipper CD Bag. Owing to their top quality, our products are extremely praised amongst the patrons.', '', '', '70.00', '65.00', '78562', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220204083751/me-n-u-bournville-dark-chocolate-bar_1.jpg', NULL, 36, 0, 2, NULL, NULL, NULL, '2022-09-07 07:15:34', '2022-09-24 04:52:12'),
(49, 'Piperleaf Dark Chocolate Combo', 'piperleaf', 'Piperleaf-Dark-Chocolate-Combo', 'Piperleaf Dark Chocolate Combo', '', '', '190.00', '140.00', '7855', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220607184901/piperleaf-dark-chocolate-combo_1.jpg', NULL, 36, 0, 3, NULL, NULL, NULL, '2022-09-11 23:06:20', '2022-09-24 04:53:45'),
(50, 'Brighten Up The Day Roses Bouquet', 'bouquet', 'Brighten-Up-The-Day-Roses-Bouquet', 'Brighten Up The Day Roses Bouquet', '', '', '233.00', '100.00', '1234', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220706181726/brighten-up-the-day-roses-bouquet_1.jpg', NULL, 39, 0, 2, NULL, NULL, NULL, '2022-09-24 05:05:14', '2022-12-11 08:40:44'),
(51, 'Love Umbrella Card With Bournville Dark Chocolate', 'dark chocolate', 'Love-Umbrella-Card-With-Bournville-Dark-Chocolate', 'Love Umbrella Card With Bournville Dark Chocolate', '', '', '199.00', '99.00', '4561', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210113113435/love-umbrella-card-with-bournville-dark-chocolate_1.jpg', NULL, 36, 0, 3, NULL, NULL, NULL, '2022-09-24 05:08:33', '2022-09-24 05:08:33'),
(52, 'Mesmerising Blue Orchids Bouquet', 'Blue Orchids', 'Mesmerising-Blue-Orchids-Bouquet', 'Mesmerising Blue Orchids Bouquet', '', '', '100.00', '89.00', '7894', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210718121548/mesmerising-blue-orchids-bouquet_1.jpg', NULL, 34, 0, 7, NULL, NULL, NULL, '2022-09-24 05:10:20', '2022-09-24 05:11:04'),
(53, 'Floral Blossom Chocolate Cake Half Kg', 'occasion', 'Floral-Blossom-Chocolate-Cake-Half-Kg', 'Floral Blossom Chocolate Cake Half Kg', '', '', '69.00', '39.00', '7894', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210303165322/floral-blossom-chocolate-cake-half-kg_1.jpg', NULL, 34, 0, 8, NULL, NULL, NULL, '2022-09-24 05:17:01', '2022-09-24 05:17:01'),
(54, 'Special Surprise Arrangement', 'chocolates', 'Special-Surprise-Arrangement', 'Special Surprise Arrangement', '', '', '59.00', '28.00', '7815', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20190423192524/special-surprise-arrangement_1.jpg', NULL, 36, 0, 5, NULL, NULL, NULL, '2022-09-24 06:50:50', '2022-09-24 06:50:50'),
(55, 'Illustrious Love Combo Combo', 'combo', 'Illustrious-Love-Combo-Combo', 'Illustrious Love Combo Combo', '', '', '89.00', '69.00', '4891', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/illustrious-love-combo-combo_1.jpg', NULL, 28, 0, 8, NULL, NULL, NULL, '2022-09-24 06:53:06', '2022-09-24 06:53:27'),
(56, 'Bringing Good Luck 2 Layer Bamboo', 'Plants', 'Bringing-Good-Luck-2-Layer-Bamboo', 'Bringing Good Luck 2 Layer Bamboo', '', '', '69.00', '39.00', '9814', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20211109161020/bringing-good-luck-standard_1.jpg', NULL, 32, 0, 6, NULL, NULL, NULL, '2022-09-24 06:54:54', '2022-09-24 06:54:54'),
(57, 'Grand 5 Green House Plant Set', 'plant', 'Grand-5-Green-House-Plant-Set', 'Plant Type- Succulent One Sygonium Plant- Upto 5 inches Plant Type- Air Purifying Foliage Plants Type- Indoors & Outdoors 5 Square Plastic Pot- 3 x 3 inches each Pot Colours- Green, Red, White, Black & Yello', '', '', '69.00', '38.00', '7894', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20211027193612/grand-5-green-house-plant-set_1.jpg', NULL, 32, 0, 6, NULL, NULL, NULL, '2022-09-24 06:58:00', '2022-09-24 06:58:00'),
(58, 'Charming Love Roses Arrangement', 'Flowers', 'Charming-Love-Roses-Arrangement', 'Charming Love Roses Arrangement', '', '', '19.00', '78.00', '1548', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220706181730/charming-love-roses-arrangement_1.jpg', NULL, 38, 0, 6, NULL, NULL, NULL, '2022-09-24 07:02:33', '2022-09-24 07:02:33'),
(59, 'Jade Plant & Pink Rose Bouquet', 'Plant & Pink', 'Jade-Plant-&-Pink-Rose-Bouquet', 'Jade Plant & Pink Rose Bouquet', '', '', '55.00', '45.00', '1562', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20201113014535/jade-plant-and-pink-rose-bouquet_1.jpg', NULL, 39, 0, 9, NULL, NULL, NULL, '2022-09-24 07:59:50', '2022-09-24 07:59:50'),
(60, 'Money Plant & Eggless Butterscotch Cake', 'Goodies', 'Money-Plant-&-Eggless-Butterscotch-Cake', 'Money Plant & Eggless Butterscotch Cake', '', '', '29.00', '78.00', '1594', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20191211154844/money-plant-eggless-butterscotch-cake_1.jpg', NULL, 29, 0, 7, NULL, NULL, NULL, '2022-09-24 08:03:36', '2022-09-24 08:03:36'),
(61, 'Fudge Brownie Cake Half kg', 'Fudge', 'Fudge-Brownie-Cake-Half-kg', 'Fudge Brownie Cake Half kg', '', '', '69.00', '29.00', '4814', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210325113540/fudge-brownie-cake-half-kg_1.jpg', NULL, 37, 0, 37, NULL, NULL, NULL, '2022-09-24 08:05:55', '2022-09-24 08:05:55'),
(62, 'Heavenly Look Carnations Bouquet', 'Carnations', 'Heavenly-Look-Carnations-Bouquet', 'Heavenly Look Carnations Bouquet', '', '', '46.00', '78.00', '2511', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220706181758/heavenly-look-carnations-bouquet_1.jpg', NULL, 37, 0, 9, NULL, NULL, NULL, '2022-09-24 08:08:32', '2022-09-24 08:08:32'),
(63, 'Beyondarie Sweet Cardamom Herbal Tea- 100 gms', 'Beyondarie', 'Beyondarie-Sweet-Cardamom-Herbal-Tea-100-gms', 'Beyondarie Sweet Cardamom Herbal Tea- 100 gms', '', '', '56.00', '78.00', '1544', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210708165204/beyondarie-sweet-cardamom-herbal-tea-100-gms_1.jpg', NULL, 28, 0, 6, NULL, NULL, NULL, '2022-09-24 08:42:20', '2022-09-24 08:42:20'),
(64, 'Organic Chai Collection Gift Set', 'Chai Collection', 'Organic-Chai-Collection-Gift-Set', 'Organic Chai Collection Gift Set', '', '', '56.00', '39.00', '5461', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220217171837/organic-chai-collection-gift-set_1.jpg', NULL, 28, 0, 9, NULL, NULL, NULL, '2022-09-24 08:43:16', '2022-09-24 08:43:16'),
(65, 'Beyondarie Wild Green Tea With Tulsi & Mint', 'Beyondarie-Wild', 'Beyondarie-Wild-Green-Tea-With-Tulsi-&-Mint', 'Beyondarie Wild Green Tea With Tulsi & Mint', '', '', '56.00', '45.00', '5461', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210525161009/wild-tribe-green-tea-with-tulsi-mint_1.jpg', NULL, 28, 0, 10, NULL, NULL, NULL, '2022-09-24 08:44:16', '2022-09-24 08:44:16'),
(66, 'Elaichi Green Tea- 100 Gms Loose Leaf', 'Elaichi-Green', 'Elaichi-Green-Tea-100-Gms-Loose-Leaf', 'Elaichi Green Tea- 100 Gms Loose Leaf', '', '', '45.00', '65.00', '1256', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20220217171834/elaichi-green-tea-100-gms-loose-leaf_1.jpg', NULL, 28, 0, 10, NULL, NULL, NULL, '2022-09-24 08:45:34', '2022-09-24 08:45:34'),
(67, 'Sweet KitKat Bouquet', 'KitKat', 'Sweet-KitKat-Bouquet', 'Sweet KitKat Bouquet', '', '', '45.00', '100.00', '1324', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20180518122229/sweet-kitkat-bouquet_1.jpg', NULL, 36, 0, 13, NULL, NULL, NULL, '2022-09-24 08:46:52', '2022-09-24 08:46:52'),
(68, 'Beautiful Cadbury Dairy Milk Gift', 'Dairy Milk', 'Beautiful-Cadbury-Dairy-Milk-Gift', 'Beautiful Cadbury Dairy Milk Gift', '', '', '133.00', '129.00', '9748', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210123022616/beautiful-cadbury-dairy-milk-gift_1.jpg', NULL, 36, 0, 17, NULL, NULL, NULL, '2022-09-24 08:48:01', '2022-09-24 08:48:01'),
(69, 'Multiseed Cookies & Choco Anniversary Hamper', 'Cookies', 'Multiseed-Cookies-&-Choco-Anniversary-Hamper', 'Multiseed Cookies & Choco Anniversary Hamper', '', '', '58.00', '56.00', '1546', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20211008195716/multiseed-cookies-and-choco-anniversary-hamper_1.jpg', NULL, 36, 0, 18, NULL, NULL, NULL, '2022-09-24 08:49:23', '2022-09-24 08:49:23'),
(70, 'Beautiful Red Roses Bunch In Love You Sticker Vase', 'Roses', 'Beautiful-Red-Roses-Bunch-In-Love-You-Sticker-Vase', 'Beautiful Red Roses Bunch In Love You Sticker Vase', '', '', '45.00', '89.00', '1327', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20210121175106/beautiful-red-roses-bunch-in-love-you-sticker-vase_1.jpg', NULL, 34, 0, 16, NULL, NULL, NULL, '2022-09-24 08:50:49', '2022-09-24 08:50:49'),
(71, 'White Carnations & Lily In Sleeve Bag', 'Carnations', 'White-Carnations-&-Lily-In-Sleeve-Bag', 'White Carnations & Lily In Sleeve Bag', '', '', '45.00', '96.00', '8978', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20200606165056/white-carnations-lily-in-sleeve-bag_1.jpg', NULL, 34, 0, 12, NULL, NULL, NULL, '2022-09-24 08:51:56', '2022-09-24 08:51:56'),
(72, 'Vivacious Chocolate Jar Cake Set of 2', 'Vivacious', 'Vivacious-Chocolate-Jar-Cake-Set-of-2', 'Vivacious Chocolate Jar Cake Set of 2', '', '', '100.00', '200.00', '6152', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/x/v20180731115558/vivacious-chocolate-jar-cake-set-of-2_1.jpg', NULL, 29, 0, 13, NULL, NULL, NULL, '2022-09-28 01:22:36', '2022-09-28 01:22:36'),
(73, 'Choco Chip Dark Fantasy Cream Cake Jar Set of 2', 'Fantasy', 'Choco-Chip-Dark-Fantasy-Cream-Cake-Jar-Set-of-2', 'Choco Chip Dark Fantasy Cream Cake Jar Set of 2', '', '', '133.00', '200.00', '8154', 1, 1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20210121175715/choco-chip-dark-fantasy-cream-cake-jar-set-of-2_1.jpg', NULL, 29, 0, 15, NULL, NULL, NULL, '2022-09-28 01:24:29', '2022-09-28 01:24:29'),
(74, 'Choco Vanilla Cream Cake Jar Set of 4', 'Vanilla', 'Choco-Vanilla-Cream-Cake-Jar-Set-of-4', 'Choco Vanilla Cream Cake Jar Set of 4', '', '', '100.00', '200.00', '4523', 1, 1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20210121175738/choco-vanilla-cream-cake-jar-set-of-4_1.jpg', NULL, 29, 0, 15, NULL, NULL, NULL, '2022-09-28 01:26:05', '2022-09-28 01:26:05'),
(75, 'Red Roses Arrangement With Love Tag & Teddy', 'Arrangement', 'Red-Roses-Arrangement-With-Love-Tag-&-Teddy', 'Red Roses Arrangement With Love Tag & Teddy', '', '', '120.00', '130.00', '2311', 1, 1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20210113113755/red-roses-arrangement-with-love-tag-teddy_1.jpg', NULL, 34, 0, 13, NULL, NULL, NULL, '2022-09-28 01:28:31', '2022-09-28 01:28:31'),
(76, '10 Roses With Teddy & Choco Basket Arrangement', 'Arrangement', '10-Roses-With-Teddy-&-Choco-Basket-Arrangement', '10 Roses With Teddy & Choco Basket Arrangement', '', '', '100.00', '200.00', '2612', 1, 1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20200908142044/10-roses-with-teddy-choco-basket-arrangement_1.jpg', NULL, 34, 0, 11, NULL, NULL, NULL, '2022-09-28 01:30:05', '2022-12-18 08:06:44'),
(77, 'Red Roses Moon Arrangement', 'Arrangement', 'Red-Roses-Moon-Arrangement', 'Red Roses Moon Arrangement', '', '', '51.00', '84.00', '6541', 1, 1, NULL, -1, 'https://www.fnp.com/images/pr/x/tall-moon-love_1.jpg', NULL, 34, 0, 9, NULL, NULL, NULL, '2022-09-28 01:31:07', '2022-12-05 08:47:05'),
(78, 'Pink & White Roses with Teddy Bear Combo', 'Combo', 'Pink-&-White-Roses-with-Teddy-Bear-Combo', 'Pink & White Roses with Teddy Bear Combo', '', '', '23.00', '52.00', '3121', 1, 1, NULL, -1, 'https://www.fnp.com/images/pr/x/v20190109103037/pink-white-roses-with-teddy-bear-combo_1.jpg', NULL, 34, 0, 11, NULL, NULL, NULL, '2022-09-28 01:32:34', '2022-10-21 23:31:21'),
(79, '1 Kg. Egg Less Black Forest Cake', '', '1-kg-egg-less-black-forest-cake', '1 Kg. Egg Less Black Forest Cake. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '1295.00', '', 1, 1, NULL, -1, NULL, 'public/product_images/cakes2012/black_forest_cake.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:03', '2023-01-08 04:28:03'),
(80, '1 Kg. Egg Less Pineapple Cake', '', '1-kg-egg-less-pineapple-cake', '1 Kg. Egg Less Pineapple Cake. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '1195.00', '', 1, 1, NULL, 1, NULL, 'public/product_images/cakes2012/pineapple.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:04', '2023-01-08 04:28:04'),
(81, '1 Kg. Egg Less Chocolate Truffle Cake', '', '1-kg-egg-less-chocolate-truffle-cake', '1 Kg. Egg Less Chocolate Truffle Cake. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '1195.00', '', 1, 1, NULL, -1, NULL, 'public/product_images/cakes2012/chocolate_truffle_cake.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:04', '2023-01-08 04:28:04'),
(82, '1 Kg. Egg Less Strawberry Cake', '', '1-kg-egg-less-strawberry-cake', '1 Kg. Egg Less Strawberry Cake. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '1295.00', '', 1, 1, NULL, -1, NULL, 'public/product_images/cakes2012/1326716289.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:04', '2023-01-08 04:28:04'),
(84, '2 Kg. Egg Less Heart Shape Chocolate Cake', '', '2-kg-egg-less-heart-shape-chocolate-cake', '2 Kg. Egg Less Heart Shape Chocolate Cake. Please Order 2 Days in advance. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '2595.00', '', 1, 1, NULL, -1, NULL, 'public/product_images/cakes2012/fpik036.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:04', '2023-01-08 04:28:04'),
(85, '2 Kg. Egg Less Chocolate Cake', '', '2-kg-egg-less-chocolate-cake', '2 Kg. Egg Less Chocolate Cake. Please Order 2 Day in advance. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '2199.00', '', 1, 1, NULL, -1, NULL, 'public/product_images/cakes2012/fpik045.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:04', '2023-01-08 04:28:04'),
(86, '3 Kg. Egg Less Black Forest Cake', '', '3-kg-egg-less-black-forest-cake', '3 Kg. Egg Less Black Forest Cake. Please Order 2 Day in advance. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '3695.00', '', 1, 1, NULL, -1, NULL, 'public/product_images/cakes2012/fpik018.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:04', '2023-01-08 04:28:04'),
(87, '3 Kg. Egg Less Chocolate Truffle Cake', '', '3-kg-egg-less-chocolate-truffle-cake', '3 Kg. Egg Less Chocolate Truffle Cake. Please Order 2 Day in advance. Please note: This item is not available in small cities / remote locations. ', '', '', '0.00', '3695.00', '', 1, 1, NULL, -1, NULL, 'public/product_images/cakes2012/truffle4kg.jpg', 29, 0, 10, NULL, NULL, NULL, '2023-01-08 04:28:04', '2023-01-08 04:28:04'),
(88, '15 Roses Bouquet', 'Flowers', 'Hand-Bouquet-of-15-Red-and-Pink-Roses-nicely-decorated-with-Paper-Packing-and-ribbons', 'Bunch of 15 Red and Pink Roses nicely decorated with Paper Packing and ribbons Hand Bouquet )', '', '', '699.00', '685.00', '48954', 1, 1, NULL, -1, 'null', '', 30, 0, 10, NULL, NULL, NULL, '2023-01-08 04:59:43', '2023-01-08 05:00:56'),
(89, 'Glass Vase with 80 Pink Roses  rose | pink | vase | birthday | anniversary | love | baby | mom | her | valentine | mother_day', 'Flowers', 'A-rare-and-beautiful-rose-for-someone-special-80-Pink-Roses-in-a-Vase-nicely-created-with-fillers', 'Glass vase with 80 Pink Roses in a Vase nicely created with fillers', '', '', '3299.00', '3205.00', '4561', 1, 1, NULL, 1, NULL, NULL, 30, 0, 10, NULL, NULL, NULL, '2023-01-08 05:04:48', '2023-01-08 05:04:48'),
(90, 'Soft Love rose', 'Flowers', 'Bunch-of-15-Beautiful-Pink-Roses', 'Bunch of 15 Beautiful Pink Roses are so innocent and pure to say I Love you, or just I care for you. Dark or light pink roses will be delivered as per availibility', '', '', '699.00', '625.00', '8156', 1, 1, NULL, 1, NULL, NULL, 30, 0, 10, NULL, NULL, NULL, '2023-01-08 05:11:00', '2023-01-08 05:11:00'),
(91, 'Complete Love Pack  rose | red | bunch | birthday | anniversary | love | business | getwell | her | him | wedding | valentine', 'Flowers', '40-Red-Roses-nicely-decorated-with-fillers-and-ribbons-exclusive-paper-packing', 'Amazing Hand Bunch of Lovely 40 Red Roses nicely decorated with fillers and ribbons, with exclusive paper packing.', '', '', '1699.00', '1625.00', '1546', 1, 1, NULL, 1, NULL, NULL, 30, 0, 10, NULL, NULL, NULL, '2023-01-08 05:12:49', '2023-01-08 05:12:49'),
(92, '20 Red n Pink Roses rose | mixed | red | pink | bunch | birthday | anniversary | love | mom | her | him | valentine | mother_day', 'Flowers', 'Bunch-of-10-Red-and-10-Pink-Roses-nicely-decorated-with-Paper-Packing-and-ribbons', 'Bunch of 20 Red and Pink Roses nicely decorated with Paper Packing and ribbons', '', '', '999.00', '925.00', '4895', 1, 1, NULL, 1, NULL, NULL, 30, 0, 10, NULL, NULL, NULL, '2023-01-08 05:15:11', '2023-01-08 05:15:11'),
(93, 'Lovely Red Roses  rose | red | bunch | birthday | anniversary | love | business | getwell | grih | mom | her | him | just | thank | wedding | valentine', 'Flowers', 'Bunch-of-10-Red-Roses-nicely-decorated-with-fillers-and-Ribbons', 'Bunch of 10 Lovely Red Roses to impress your loved once with romantic fragrance, its like bringing valentines day today.', '', '', '499.00', '455.00', '54656', 1, 1, NULL, 1, NULL, NULL, 30, 0, 10, NULL, NULL, NULL, '2023-01-08 05:16:51', '2023-01-08 05:16:51'),
(94, 'Clementine Nichols', 'Yvonne Chavez', 'Commodi', 'Exercitationem et pe', '', '', '397.00', '839.00', 'Porro ut et omnis ne', 1, -1, NULL, -1, NULL, 'public/product_images/LfhCboBzyej5V2F8UphLZIr2BYGWJTQCUAUdGmO2.png', 30, 0, 185, NULL, NULL, NULL, '2023-01-15 03:53:33', '2023-01-15 03:53:34'),
(95, 'Soft toy 6 inch', 'Soft toy 6 inch', 'Soft-toy-6-inch', 'Soft toy 6 inch', '', '', '229.00', '220.00', '6465', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/m/v20201229183953/soft-toys-6-inch.jpg', NULL, 64, 0, 10, NULL, NULL, NULL, '2023-01-26 05:36:36', '2023-01-26 05:36:36'),
(96, '5 dairy milk chocolates 12gms each with gift wraping', 'Tatum Stephenson', '5-dairy-milk-chocolates-12gms-each-with-gift-wraping', 'Ad et est soluta ut', '', '', '665.00', '110.00', 'Eaque quibusdam prae', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/m/v20170302165328/5-dairy-milk-chocolates-12gms-each-with-gift-wraping.jpg', NULL, 64, 0, 79, NULL, NULL, NULL, '2023-01-26 05:37:55', '2023-01-26 05:37:55'),
(97, '500gm eggless truffle cake', '500gm-eggless-truffle-cake', '500gm-eggless-truffle-cake', '500gm-eggless-truffle-cake', '', '', '119.00', '89.00', '5416', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/m/v20230125191734/500gm-eggless-truffle-cake.jpg', NULL, 64, 0, 10, NULL, NULL, NULL, '2023-01-26 05:44:05', '2023-01-26 05:44:05'),
(98, 'Love forever mug', 'Flowers', 'love-forever-mug', 'love-forever-mug', '', '', '226.00', '114.00', '98456', 1, 1, NULL, 1, 'https://www.fnp.com/images/pr/m/v20230119164729/love-forever-mug.jpg', NULL, 64, 0, 10, NULL, NULL, NULL, '2023-01-26 05:45:22', '2023-01-26 05:45:22'),
(165, 'darkest brush', 'sdaff', 'Electronics3', '22', '', '', '45.00', '235.00', '235', 1, 1, NULL, 1, 'null', 'product_images/akl4blVwLacfbwnTaKlE166HZth2uPs58odI13OZ.png', 34, 0, 5, NULL, NULL, NULL, '2023-02-11 10:28:51', '2023-02-12 07:17:10'),
(167, 'Dale Goodman', 'Remedios Dejesus', 'Qui', 'Sit in omnis ullamco', '', '', '403.00', '659.00', 'Expedita perspiciati', 1, -1, NULL, 1, NULL, NULL, 34, 0, 305, NULL, NULL, NULL, '2023-02-12 07:26:15', '2023-02-12 07:26:15'),
(168, 'Playstation Platinum Headset', '5', 'Playstation-Platinum-Headset', '34', '', '', '5.00', '345.00', '34', 1, 1, NULL, 1, 'https://m.media-amazon.com/images/I/51SKmu2G9FL._AC_UY327_FMwebp_QL65_.jpg', NULL, 65, 2, 45, NULL, NULL, NULL, '2023-03-08 08:43:32', '2023-03-08 08:45:32'),
(169, 'Sony WH-CH710N Active Noise Cancelling Wireless Headphones', 'd', 'Sony-WH-CH710N-Cancelling-Wireless-Headphones', 'adsf', '', '', '45.00', '245.00', '3', 1, 1, NULL, 1, 'https://m.media-amazon.com/images/I/61N6Ai7RkJL._AC_UY327_FMwebp_QL65_.jpg', NULL, 65, 1, 23, NULL, NULL, NULL, '2023-03-08 09:01:15', '2023-03-08 09:01:15'),
(170, 'PlayStation PULSE 3D Wireless Headset', '45', 'PULSE-3D-Wireless-Headset-PlayStation', '34', '', '', '24.00', '34.00', '34', 1, 1, NULL, 1, 'https://m.media-amazon.com/images/I/610SsJ5aAQL._SX522_.jpg', NULL, 65, 1, 34, NULL, NULL, NULL, '2023-03-08 09:09:19', '2023-03-08 09:09:19'),
(171, 'Sony PlayStation Gold Wireless Headset (500 Million Limited Edition) Ps4 (Imported)', 'sony', 'Sony-PlayStation-Gold-Wireless-Headset', 'asdf', '', '', '120.00', '120.00', '324', 1, 1, NULL, 1, 'https://mx2games.com/wp-content/uploads/2022/04/Screenshot_52.png', NULL, 65, 1, 12, NULL, NULL, NULL, '2023-04-22 14:31:56', '2023-04-22 14:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(11) UNSIGNED NOT NULL,
  `attribute_id` bigint(11) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_id`, `attribute_value_id`, `created_at`, `updated_at`) VALUES
(1, 170, 5, 42, NULL, NULL),
(2, 169, 5, 41, NULL, NULL),
(3, 168, 5, 39, NULL, '2022-09-24 04:55:55'),
(6, 170, 6, 43, '2022-08-08 01:41:29', '2022-09-24 04:56:05'),
(12, 171, 6, 44, '2022-08-22 20:32:36', '2022-09-24 04:57:11'),
(13, 171, 5, 42, '2022-08-22 21:22:33', '2022-09-24 04:56:45'),
(14, 0, 0, 0, '2022-12-30 12:56:47', '2022-12-30 12:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(11) UNSIGNED NOT NULL,
  `category_id` bigint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 171, 65, NULL, NULL),
(4, 171, 66, NULL, NULL),
(5, 170, 66, NULL, NULL),
(6, 170, 65, NULL, NULL),
(7, 169, 66, NULL, NULL),
(8, 169, 65, NULL, NULL),
(9, 168, 66, NULL, NULL),
(10, 168, 65, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `name`, `url`, `image_path`, `product_id`, `created_at`, `updated_at`) VALUES
(2, NULL, 'https://www.fnp.com/images/pr/x/v20211227132224/exotic-orchids-n-anthuriums-basket_2.jpg', NULL, 3, NULL, '2022-09-28 01:18:42'),
(3, NULL, 'https://www.fnp.com/images/pr/x/v20211227132406/exotic-orchids-n-anthuriums-basket_3.jpg', NULL, 3, NULL, '2022-09-28 01:18:58'),
(4, NULL, 'https://www.fnp.com/images/pr/x/v20211227132406/exotic-orchids-n-anthuriums-basket_4.jpg', NULL, 3, NULL, '2022-09-28 01:19:30'),
(5, NULL, 'https://www.fnp.com/images/pr/l/v20220203121846/floral-charm-gift-arrangement_2.jpg', NULL, 1, NULL, '2022-09-24 04:31:36'),
(10, NULL, 'https://images-na.ssl-images-amazon.com/images/W/WEBP_402378-T1/images/I/812I31XeRjL.jpg', NULL, 47, '2022-09-07 07:04:34', '2022-09-07 07:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `product_id` bigint(11) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(6, 3, 3, NULL, NULL),
(7, 4, 3, NULL, NULL),
(8, 3, 9, NULL, NULL),
(9, 3, 6, NULL, NULL),
(11, 1, 5, NULL, NULL),
(12, 1, 6, NULL, NULL),
(13, 65, 5, NULL, NULL),
(14, 65, 6, NULL, NULL),
(15, 65, 8, NULL, NULL),
(16, 65, 9, NULL, NULL),
(17, 67, 3, NULL, NULL),
(18, 67, 5, NULL, NULL),
(19, 67, 7, NULL, NULL),
(20, 67, 8, NULL, NULL),
(21, 88, 5, NULL, NULL),
(22, 88, 11, NULL, NULL),
(23, 88, 12, NULL, NULL),
(24, 88, 13, NULL, NULL),
(25, 88, 14, NULL, NULL),
(26, 88, 15, NULL, NULL),
(27, 88, 16, NULL, NULL),
(28, 88, 17, NULL, NULL),
(29, 88, 18, NULL, NULL),
(30, 88, 20, NULL, NULL),
(31, 88, 21, NULL, NULL),
(32, 89, 5, NULL, NULL),
(33, 89, 13, NULL, NULL),
(34, 89, 14, NULL, NULL),
(35, 89, 15, NULL, NULL),
(36, 89, 16, NULL, NULL),
(37, 89, 17, NULL, NULL),
(38, 89, 20, NULL, NULL),
(39, 89, 21, NULL, NULL),
(40, 89, 22, NULL, NULL),
(41, 89, 23, NULL, NULL),
(42, 89, 24, NULL, NULL),
(43, 90, 5, NULL, NULL),
(44, 90, 12, NULL, NULL),
(45, 90, 14, NULL, NULL),
(46, 90, 15, NULL, NULL),
(47, 90, 16, NULL, NULL),
(48, 90, 17, NULL, NULL),
(49, 90, 20, NULL, NULL),
(50, 90, 21, NULL, NULL),
(51, 90, 23, NULL, NULL),
(52, 91, 5, NULL, NULL),
(53, 91, 8, NULL, NULL),
(54, 91, 10, NULL, NULL),
(55, 91, 12, NULL, NULL),
(56, 91, 13, NULL, NULL),
(57, 91, 14, NULL, NULL),
(58, 91, 17, NULL, NULL),
(59, 91, 18, NULL, NULL),
(60, 91, 20, NULL, NULL),
(61, 91, 24, NULL, NULL),
(62, 91, 25, NULL, NULL),
(63, 91, 26, NULL, NULL),
(64, 91, 27, NULL, NULL),
(65, 92, 5, NULL, NULL),
(66, 92, 10, NULL, NULL),
(67, 92, 12, NULL, NULL),
(68, 92, 13, NULL, NULL),
(69, 92, 14, NULL, NULL),
(70, 92, 16, NULL, NULL),
(71, 92, 17, NULL, NULL),
(72, 92, 20, NULL, NULL),
(73, 92, 21, NULL, NULL),
(74, 92, 23, NULL, NULL),
(75, 92, 24, NULL, NULL),
(76, 92, 25, NULL, NULL),
(77, 92, 28, NULL, NULL),
(78, 93, 5, NULL, NULL),
(79, 93, 10, NULL, NULL),
(80, 93, 12, NULL, NULL),
(81, 93, 13, NULL, NULL),
(82, 93, 14, NULL, NULL),
(83, 93, 16, NULL, NULL),
(84, 93, 17, NULL, NULL),
(85, 93, 18, NULL, NULL),
(86, 93, 20, NULL, NULL),
(87, 93, 24, NULL, NULL),
(88, 93, 25, NULL, NULL),
(89, 93, 26, NULL, NULL),
(90, 93, 27, NULL, NULL),
(91, 93, 29, NULL, NULL),
(92, 93, 30, NULL, NULL),
(93, 93, 31, NULL, NULL),
(94, 94, 6, NULL, NULL),
(95, 94, 9, NULL, NULL),
(96, 94, 16, NULL, NULL),
(97, 94, 18, NULL, NULL),
(98, 94, 20, NULL, NULL),
(99, 94, 23, NULL, NULL),
(100, 94, 24, NULL, NULL),
(101, 94, 26, NULL, NULL),
(102, 94, 29, NULL, NULL),
(103, 94, 30, NULL, NULL),
(104, 94, 31, NULL, NULL),
(105, 95, 24, NULL, NULL),
(106, 96, 3, NULL, NULL),
(107, 96, 6, NULL, NULL),
(108, 96, 7, NULL, NULL),
(109, 96, 10, NULL, NULL),
(110, 96, 11, NULL, NULL),
(111, 96, 13, NULL, NULL),
(112, 96, 14, NULL, NULL),
(113, 96, 15, NULL, NULL),
(114, 96, 17, NULL, NULL),
(115, 96, 20, NULL, NULL),
(116, 96, 22, NULL, NULL),
(117, 96, 23, NULL, NULL),
(118, 96, 24, NULL, NULL),
(119, 96, 27, NULL, NULL),
(120, 96, 29, NULL, NULL),
(121, 96, 31, NULL, NULL),
(122, 96, 33, NULL, NULL),
(123, 96, 34, NULL, NULL),
(124, 97, 3, NULL, NULL),
(125, 97, 6, NULL, NULL),
(126, 98, 8, NULL, NULL),
(138, 168, 36, NULL, NULL),
(139, 168, 37, NULL, NULL),
(140, 168, 38, NULL, NULL),
(141, 169, 38, NULL, NULL),
(142, 170, 37, NULL, NULL),
(143, 170, 38, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstName`, `lastName`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 164, 'Beau', 'Weeks', '+1 (262) 958-4053', 'tumikyvov@mailinator.com', 'Hic repellendus Asp', 'Laborum aperiam qui', 'Veritatis id culpa', 'Excepteur nostrud no', 'Adipisci quo ipsam f', '96463', '2022-12-05 08:47:05', '2022-12-05 08:47:05'),
(2, 165, 'Blaine', 'Mcbride', '+1 (488) 465-5933', 'myzikek@mailinator.com', 'Sed excepteur eius i', 'Dolore aliqua Aut n', 'Consequatur Dolor o', 'Et quam accusantium', 'Eos reprehenderit s', '89636', '2022-12-11 07:24:12', '2022-12-11 07:24:12'),
(3, 166, 'Scott', 'Anthony', '+1 (884) 647-9212', 'zanonacif@mailinator.com', 'Distinctio Occaecat', 'Explicabo Eveniet', 'Placeat et itaque s', 'Magnam magni ut nihi', 'Exercitationem porro', '51255', '2022-12-11 08:40:44', '2022-12-11 08:40:44'),
(4, 167, 'Rayees', 'asdf', 'asdf', 'hubsoftindia@gmail.com', '301 mariyam complex tandalja road vadodara', 'asdf', 'asdf', 'asdf', 'india', '123456', '2022-12-18 08:06:44', '2022-12-18 08:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('emali', 'shoppingcart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-06-08 04:04:26', '2022-06-08 04:04:26'),
('hubsoftindia@gmail.com', 'shoppingcart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-06-08 04:02:56', '2022-06-08 04:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_sets_id` bigint(11) UNSIGNED DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `color`, `tag_sets_id`, `short_description`, `meta_title`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(2, 'wedding-roses', NULL, 'blue', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'boutique', NULL, 'green', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Roses', NULL, '#ff3333', 3, NULL, NULL, NULL, NULL, '2022-10-27 04:08:55', '2022-10-27 04:08:55'),
(6, 'Lilies', NULL, '#575cff', 3, NULL, NULL, NULL, NULL, '2022-10-27 04:09:14', '2022-10-27 04:09:14'),
(7, 'Carnation', NULL, '#38e8ff', 3, NULL, NULL, NULL, NULL, '2022-10-27 04:09:23', '2022-10-27 04:09:23'),
(8, 'Birthday-Combo', NULL, '#6d38ff', 2, NULL, NULL, 'sdf', NULL, '2022-10-27 04:09:43', '2022-10-27 04:09:43'),
(9, 'Birthday-Flowers', NULL, '#7024ff', 2, NULL, NULL, NULL, NULL, '2022-10-27 04:10:01', '2022-10-27 04:10:01'),
(10, 'red', NULL, '#ff2424', 2, NULL, NULL, NULL, NULL, '2023-01-08 04:50:57', '2023-01-08 04:50:57'),
(11, 'color_mixed', NULL, '#000000', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:51:36', '2023-01-08 04:51:36'),
(12, 'bunch', NULL, '#7b24ff', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:51:47', '2023-01-08 04:51:47'),
(13, 'anniversary', NULL, '#ff0a60', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:51:59', '2023-01-08 04:51:59'),
(14, 'love', NULL, '#e60000', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:52:09', '2023-01-08 04:52:09'),
(15, 'baby', NULL, '#248eff', 3, NULL, NULL, NULL, NULL, '2023-01-08 04:52:18', '2023-01-08 04:52:18'),
(16, 'mom', NULL, '#05ffb4', 2, NULL, NULL, NULL, NULL, '2023-01-08 04:52:28', '2023-01-08 04:52:28'),
(17, 'her', NULL, '#29ff69', 2, NULL, NULL, NULL, NULL, '2023-01-08 04:52:39', '2023-01-08 04:52:39'),
(18, 'wedding', NULL, '#000000', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:52:46', '2023-01-08 04:52:46'),
(20, 'valentine', NULL, '#6b3400', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:53:18', '2023-01-08 04:53:18'),
(21, 'mother_day', NULL, '#ff0ad2', 2, NULL, NULL, NULL, NULL, '2023-01-08 04:53:26', '2023-01-08 04:53:26'),
(22, 'vase', NULL, '#2e6dff', 3, NULL, NULL, NULL, NULL, '2023-01-08 04:53:50', '2023-01-08 04:53:50'),
(23, 'pink', NULL, '#ac47ff', 3, NULL, NULL, NULL, NULL, '2023-01-08 04:54:02', '2023-01-08 04:54:02'),
(24, 'birthday', NULL, '#ff85af', 3, NULL, NULL, NULL, NULL, '2023-01-08 04:54:23', '2023-01-08 04:54:23'),
(25, 'him', NULL, '#c7c7c7', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:54:39', '2023-01-08 04:54:39'),
(26, 'getwell', NULL, '#ff4d4d', 2, NULL, NULL, NULL, NULL, '2023-01-08 04:54:57', '2023-01-08 04:54:57'),
(27, 'business', NULL, '#000000', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:55:08', '2023-01-08 04:55:08'),
(28, 'mixed', NULL, '#ff8080', 1, NULL, NULL, NULL, NULL, '2023-01-08 04:55:20', '2023-01-08 04:55:20'),
(29, 'grih', NULL, '#ffb3b3', NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:55:30', '2023-01-08 04:55:30'),
(30, 'just', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:55:39', '2023-01-08 04:55:39'),
(31, 'thank', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:55:47', '2023-01-08 04:55:47'),
(32, 'dad', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:55:59', '2023-01-08 04:55:59'),
(33, 'orchid', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:56:27', '2023-01-08 04:56:27'),
(34, 'purple', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:56:33', '2023-01-08 04:56:33'),
(35, 'basket', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:56:41', '2023-01-08 04:56:41'),
(36, 'Playstation', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-03-08 08:43:47', '2023-03-08 08:43:47'),
(37, 'Playstation Headphones', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-03-08 08:44:51', '2023-03-08 08:44:51'),
(38, 'Headphones', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '2023-03-08 08:45:01', '2023-03-08 08:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `tag_sets`
--

CREATE TABLE `tag_sets` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag_sets`
--

INSERT INTO `tag_sets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', NULL, NULL),
(2, 'Birthday', NULL, NULL),
(3, 'Women', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(22, 4, 31, 1, 'pending', '2022-06-27 06:48:54', '2022-06-27 06:48:54'),
(23, 4, 32, -1, 'pending', '2022-07-15 23:38:22', '2022-07-15 23:38:22'),
(24, 4, 33, -1, 'pending', '2022-07-26 23:54:29', '2022-07-26 23:54:29'),
(25, 4, 34, -1, 'pending', '2022-07-26 23:55:37', '2022-07-26 23:55:37'),
(26, 8, 35, -1, 'pending', '2022-08-11 23:30:39', '2022-08-11 23:30:39'),
(27, 4, 99, -1, 'pending', '2022-08-19 00:32:57', '2022-08-19 00:32:57'),
(28, 4, 100, -1, 'pending', '2022-08-19 00:34:14', '2022-08-19 00:34:14'),
(29, 4, 101, -1, 'pending', '2022-08-19 00:38:20', '2022-08-19 00:38:20'),
(30, 4, 102, -1, 'pending', '2022-08-19 00:39:21', '2022-08-19 00:39:21'),
(31, 4, 104, -1, 'pending', '2022-08-19 00:46:57', '2022-08-19 00:46:57'),
(32, 4, 105, -1, 'pending', '2022-08-19 00:53:18', '2022-08-19 00:53:18'),
(33, 4, 106, -1, 'pending', '2022-08-19 01:19:15', '2022-08-19 01:19:15'),
(34, 4, 107, -1, 'pending', '2022-08-19 01:23:03', '2022-08-19 01:23:03'),
(35, 4, 108, -1, 'pending', '2022-08-19 01:43:06', '2022-08-19 01:43:06'),
(36, 4, 109, -1, 'pending', '2022-08-19 05:10:39', '2022-08-19 05:10:39'),
(37, 4, 110, -1, 'pending', '2022-08-19 05:13:14', '2022-08-19 05:13:14'),
(38, 4, 111, -1, 'pending', '2022-08-19 05:14:59', '2022-08-19 05:14:59'),
(39, 4, 124, -1, 'pending', '2022-08-19 05:27:36', '2022-08-19 05:27:36'),
(40, 4, 126, -1, 'pending', '2022-08-19 05:31:21', '2022-08-19 05:31:21'),
(41, 4, 127, -1, 'pending', '2022-08-19 05:32:32', '2022-08-19 05:32:32'),
(42, 4, 128, -1, 'pending', '2022-08-19 05:33:33', '2022-08-19 05:33:33'),
(43, 4, 129, -1, 'pending', '2022-08-19 05:34:38', '2022-08-19 05:34:38'),
(44, 4, 130, -1, 'pending', '2022-08-20 03:21:56', '2022-08-20 03:21:56'),
(45, 4, 131, -1, 'pending', '2022-08-20 03:24:09', '2022-08-20 03:24:09'),
(46, 4, 132, -1, 'pending', '2022-08-22 03:02:26', '2022-08-22 03:02:26'),
(47, 4, 133, -1, 'pending', '2022-08-22 03:12:23', '2022-08-22 03:12:23'),
(48, 4, 134, -1, 'pending', '2022-08-22 03:13:53', '2022-08-22 03:13:53'),
(49, 4, 135, -1, 'pending', '2022-08-22 03:19:29', '2022-08-22 03:19:29'),
(50, 4, 136, -1, 'pending', '2022-08-22 03:21:21', '2022-08-22 03:21:21'),
(51, 4, 137, -1, 'pending', '2022-08-22 17:39:26', '2022-08-22 17:39:26'),
(52, 4, 139, -1, 'pending', '2022-08-22 17:56:16', '2022-08-22 17:56:16'),
(53, 4, 140, -1, 'pending', '2022-08-22 17:57:39', '2022-08-22 17:57:39'),
(54, 4, 143, -1, 'pending', '2022-08-22 18:31:06', '2022-08-22 18:31:06'),
(55, 4, 144, -1, 'pending', '2022-08-22 20:18:04', '2022-08-22 20:18:04'),
(56, 4, 145, -1, 'pending', '2022-08-22 20:18:41', '2022-08-22 20:18:41'),
(57, 4, 146, -1, 'pending', '2022-08-22 20:19:08', '2022-08-22 20:19:08'),
(58, 4, 149, -1, 'pending', '2022-09-03 00:21:56', '2022-09-03 00:21:56'),
(59, 4, 150, -1, 'pending', '2022-09-05 17:22:16', '2022-09-05 17:22:16'),
(60, 10, 151, -1, 'pending', '2022-09-06 07:55:43', '2022-09-06 07:55:43'),
(61, 4, 152, -1, 'pending', '2022-09-06 08:47:44', '2022-09-06 08:47:44'),
(62, 10, 153, -1, 'pending', '2022-09-06 10:49:48', '2022-09-06 10:49:48'),
(63, 11, 154, -1, 'pending', '2022-09-07 12:41:02', '2022-09-07 12:41:02'),
(64, 4, 155, -1, 'pending', '2022-09-09 04:28:39', '2022-09-09 04:28:39'),
(66, 10, 157, -1, 'pending', '2022-09-11 03:15:00', '2022-09-11 03:15:00'),
(67, 10, 158, -1, 'pending', '2022-09-11 05:57:43', '2022-09-11 05:57:43'),
(68, 10, 159, -1, 'pending', '2022-09-13 01:11:14', '2022-09-13 01:11:14'),
(69, 12, 160, -1, 'pending', '2022-09-16 12:45:00', '2022-09-16 12:45:00'),
(70, 4, 161, -1, 'pending', '2022-09-22 10:14:58', '2022-09-22 10:14:58'),
(73, 4, 164, -1, 'pending', '2022-12-05 08:47:05', '2022-12-05 08:47:05'),
(74, 3, 165, -1, 'pending', '2022-12-11 07:24:12', '2022-12-11 07:24:12'),
(75, 14, 166, -1, 'pending', '2022-12-11 08:40:44', '2022-12-11 08:40:44'),
(76, 15, 167, -1, 'pending', '2022-12-18 08:06:44', '2022-12-18 08:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_profile_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_profile_img`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user', 'user@user11gmail.com', NULL, '$2y$10$sDAXP1sUdAU2dvTeexzaCOnAVdeiD3QsqHrjiHs98DJN3Jlm5R0ky', NULL, NULL, NULL, '2022-06-08 02:07:25', '2022-06-08 02:07:25'),
(3, 'CODE AXION', 'codeaxion77@gmail.com', NULL, '$2y$10$KahsLUey9LhQQ8iCZ7jyd.D07qJ3tYvjBF3iQ15TFFjB41Wdimk9a', NULL, NULL, NULL, '2022-06-08 21:56:45', '2022-06-08 21:56:45'),
(4, 'hubsoft', 'hubsoftindia@gmail.com', NULL, '$2y$10$dybUvMSv6BrdyXnMTwRp6.UHxm8sR7OzXn218U5s0w6xj1TWJmx7a', NULL, 1234, NULL, '2022-06-10 00:29:39', '2022-06-10 00:29:39'),
(5, 'CODE AXION', 'user@user22gmail.com', NULL, '$2y$10$vD0sPLVPZ/0m7VNOQBCjN.Ek0JYmk.sDFgslInMhzTSirIk4W0gTC', NULL, NULL, NULL, '2022-06-10 05:36:51', '2022-06-10 05:36:51'),
(6, 'aadil', 'darkestbrush99@gmail.com', NULL, '$2y$10$Zv9ERxZa5sJBEuBL.Ede0O9cggtQ8bFPWt/L91xZmd5fkBKshGsw.', NULL, NULL, NULL, '2022-06-20 17:55:31', '2022-06-20 17:55:31'),
(7, 'Umar Ansari  A good boi scientist', 'umar11@gmail.com', NULL, '$2y$10$QDXjX7DUg4IFY5IPExlnmOhV5Sz/m25nWBzm1O.pv4KvujTQouwh.', NULL, NULL, NULL, '2022-06-25 22:13:25', '2022-06-25 22:13:25'),
(8, 'Playstation Studios', 'NEWBOI@GMAIL.COM', NULL, '$2y$10$/x9crovu0b262/YW/C7G1OqPxht4QWheMBYLEzCh8hJ7HKjvFXNry', NULL, NULL, NULL, '2022-08-11 23:23:31', '2022-08-11 23:23:31'),
(9, 'CODE AXION', 'userasdf@user11gmail.com', NULL, '$2y$10$ZM8d5pb/w90SX.PvobhKyOhDKp61dftEyGs50nNZR.YCn7.V.Fws.', NULL, NULL, NULL, '2022-09-06 07:45:47', '2022-09-06 07:45:47'),
(10, 'Umar', 'umar.ansari7331@gmail.com', NULL, '$2y$10$t8ZU4IhaJVgGXKD4yjJvNuzONxVLg934AiQv70JRjK4EgU/7NY8US', NULL, NULL, 'b1XggDly4lS3EaD9U29Gk83mu3mIOh9jOcPbBC6ZJzT2DlDJAjPMbWUuhXAS', '2022-09-06 07:45:49', '2022-09-06 07:45:49'),
(11, 'tufel shaikh', 'shaikhtufel920@gmail.com', NULL, '$2y$10$UlC8oxkCnSmOZ4JAqTvGd.PnOq2sVWie/CBfOyfcrRHktPdG1jI7i', NULL, NULL, NULL, '2022-09-07 12:27:31', '2022-09-07 12:27:31'),
(12, 'Rizwan shaik', 'rizwan11@gmail.com', NULL, '$2y$10$Hpui.HTme.wUZaMW8iooGe.AXA22VUUZ2iW9uSnvfst0ufHcUorL.', NULL, NULL, NULL, '2022-09-16 12:43:08', '2022-09-16 12:43:08'),
(13, 'hesh', 'batwings7997@gmail.com', NULL, '$2y$10$B9l6uVo/2WPdjUqDFMvof.bjCuKyAKLc2RirzA20ew.q0vH41QYoS', NULL, NULL, NULL, '2022-09-22 12:21:48', '2022-09-22 12:21:48'),
(14, 'Hubsoft', 'mumbaiflower.com@gmail.com', NULL, '$2y$10$jOHs6xo4B.9JsT8h7ho2I.dzUq6sP00Kg6dUy9Zzv6HBfBJapfP1W', NULL, NULL, NULL, '2022-12-11 08:40:27', '2022-12-11 08:40:27'),
(15, 'Mehzabeen', 'mehzabeen88@gmail.com', NULL, '$2y$10$D8I3tdIG11./tuG9MSBWFePbTIQtAjGUNe9jHdRspzdSYq8/Y3gcO', NULL, NULL, NULL, '2022-12-18 08:05:27', '2022-12-18 08:05:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_category_id_foreign` (`category_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `cart_storages`
--
ALTER TABLE `cart_storages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_item_attribute_values`
--
ALTER TABLE `order_item_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_attribute_values_orderitem_id_foreign` (`order_item_id`),
  ADD KEY `order_item_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `SKU` (`SKU`),
  ADD KEY `SKU_2` (`SKU`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_sets`
--
ALTER TABLE `tag_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT for table `cart_storages`
--
ALTER TABLE `cart_storages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `order_item_attribute_values`
--
ALTER TABLE `order_item_attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tag_sets`
--
ALTER TABLE `tag_sets`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_storages`
--
ALTER TABLE `cart_storages`
  ADD CONSTRAINT `cart_storages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `cart_storages` (`id`),
  ADD CONSTRAINT `cart_storages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigation`
--
ALTER TABLE `navigation`
  ADD CONSTRAINT `navigation_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `navigation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_item_attribute_values`
--
ALTER TABLE `order_item_attribute_values`
  ADD CONSTRAINT `order_item_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_item_attribute_values_orderitem_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
