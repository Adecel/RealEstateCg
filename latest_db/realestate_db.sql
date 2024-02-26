-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2024 at 08:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amenitis_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(1, 'Wifi', NULL, NULL),
(2, 'Centre Fitness', NULL, NULL),
(3, 'Piscine', NULL, NULL),
(4, 'Service de chambre', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Guides d\'Achat Immobilier', 'guides-d\'achat-immobilier', NULL, NULL),
(2, 'Conseils pour la Vente de Propriété', 'conseils-pour-la-vente-de-propriété', NULL, NULL),
(3, 'Tendances du Marché Immobilier', 'tendances-du-marché-immobilier', NULL, NULL),
(4, 'Décoration et Aménagement Intérieur', 'décoration-et-aménagement-intérieur', NULL, NULL),
(5, 'Investissement Immobilier', 'investissement-immobilier', NULL, NULL),
(6, 'Quartiers en Vedette', 'quartiers-en-vedette', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_slug` varchar(255) DEFAULT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `short_descp` text DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `user_id`, `post_title`, `post_slug`, `post_image`, `short_descp`, `long_descp`, `post_tags`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Les Tendances Immobilières en 2024', 'les-tendances-immobilières-en-2024', 'upload/post/1790421027569937.jpeg', 'Découvrez les dernières tendances immobilières qui façonnent le marché en 2024. De la durabilité à la technologie, explorez les évolutions qui redéfinissent l\'avenir de l\'immobilier.', '<p>L\'ann&eacute;e 2024 apporte son lot de changements dans le secteur immobilier. Cet article examine en d&eacute;tail les tendances &eacute;mergentes, y compris l\'int&eacute;gration de la durabilit&eacute; dans la conception des maisons, l\'impact de la technologie sur la recherche immobili&egrave;re, et les nouvelles attentes des acheteurs. Soyez pr&ecirc;t &agrave; rester en avance sur le march&eacute; !</p>', 'Realestate,Tendances immobilièr,Durabilité,Technologie,Marché immobilier', '2024-02-09 09:35:49', NULL),
(2, 5, 1, 'Investir dans l\'Immobilier Locatif : Conseils Essentiels', 'investir-dans-l\'immobilier-locatif-:-conseils-essentiels', 'upload/post/1790421177399777.jpeg', 'Découvrez les conseils clés pour réussir dans l\'investissement immobilier locatif. De la sélection de propriétés à la gestion locative, apprenez à maximiser vos rendements.', '<div>\r\n<p>L\'investissement immobilier locatif reste l\'un des moyens les plus s&ucirc;rs de g&eacute;n&eacute;rer des revenus passifs. Cet article offre des conseils pratiques, des strat&eacute;gies de s&eacute;lection de propri&eacute;t&eacute;s &agrave; fort rendement, et des astuces pour la gestion locative efficace. Si vous envisagez d\'investir dans l\'immobilier, ne manquez pas ces conseils essentiels.</p>\r\n</div>', 'Realestate,Investissement immob,Revenus passifs,Location,Gestion locative', '2024-02-09 09:38:12', NULL),
(3, 1, 1, 'Conseils pour une Vente Immobilière Réussie', 'conseils-pour-une-vente-immobilière-réussie', 'upload/post/1790421278055290.jpg', 'Explorez les conseils indispensables pour une vente immobilière réussie. De la mise en scène à la négociation, découvrez comment maximiser la valeur de votre propriété.', '<p>Vendre une propri&eacute;t&eacute; peut &ecirc;tre un d&eacute;fi, mais avec les bonnes strat&eacute;gies, cela peut &ecirc;tre une exp&eacute;rience gratifiante. Cet article offre des conseils pratiques sur la mise en sc&egrave;ne de votre maison, la fixation du prix correct, et les tactiques de n&eacute;gociation. Assurez-vous d\'optimiser la vente de votre bien immobilier avec ces conseils incontournables.</p>', 'Realestate,Vente immobilière,Mise en scène,Négociation,Prix de vente', '2024-02-09 09:39:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2024-02-18 15:29:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hospital', '2', '2024-02-09 09:45:53', '2024-02-09 09:45:53'),
(2, 1, 'SuperMarket', '1', '2024-02-09 09:45:53', '2024-02-09 09:45:53'),
(3, 2, 'School', '3', '2024-02-09 09:50:53', '2024-02-09 09:50:53'),
(4, 2, 'SuperMarket', '1', '2024-02-09 09:50:53', '2024-02-09 09:50:53'),
(5, 2, 'Beach', '3', '2024-02-09 09:50:53', '2024-02-09 09:50:53'),
(6, 3, 'Beach', '2', '2024-02-09 10:03:43', '2024-02-09 10:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(30, '2014_10_12_000000_create_users_table', 1),
(31, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 1),
(33, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(34, '2023_11_27_110007_create_property_types_table', 1),
(35, '2023_12_08_102343_create_amenities_table', 1),
(36, '2023_12_08_110153_create_properties_table', 1),
(37, '2023_12_08_110611_create_facilities_table', 1),
(38, '2023_12_08_110635_create_multi_images_table', 1),
(39, '2023_12_13_230620_create_package_plans_table', 1),
(40, '2023_12_23_122656_create_wishlists_table', 1),
(41, '2023_12_23_142239_create_compares_table', 1),
(42, '2023_12_23_192337_create_property_messages_table', 1),
(43, '2023_12_28_191414_create_states_table', 1),
(44, '2024_01_09_142237_create_testimonials_table', 1),
(45, '2024_01_12_173237_create_blog_categories_table', 1),
(46, '2024_01_12_215228_create_blog_posts_table', 1),
(47, '2024_01_14_001723_create_comments_table', 1),
(48, '2024_01_20_080803_create_schedules_table', 1),
(49, '2024_01_23_093133_create_smtp_settings_table', 1),
(50, '2024_01_27_144208_create_site_settings_table', 1),
(51, '2024_02_13_091339_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/property/multi-image/1790421659583790.jpeg', '2024-02-09 09:45:52', NULL),
(2, 1, 'upload/property/multi-image/1790421659653309.jpeg', '2024-02-09 09:45:52', NULL),
(3, 1, 'upload/property/multi-image/1790421659723000.jpeg', '2024-02-09 09:45:52', NULL),
(4, 1, 'upload/property/multi-image/1790421659784150.jpeg', '2024-02-09 09:45:52', NULL),
(5, 1, 'upload/property/multi-image/1790421659845234.jpeg', '2024-02-09 09:45:52', NULL),
(6, 1, 'upload/property/multi-image/1790421659909605.jpeg', '2024-02-09 09:45:52', NULL),
(7, 1, 'upload/property/multi-image/1790421659979615.jpeg', '2024-02-09 09:45:52', NULL),
(8, 1, 'upload/property/multi-image/1790421660041618.jpeg', '2024-02-09 09:45:52', NULL),
(9, 1, 'upload/property/multi-image/1790421660104030.jpeg', '2024-02-09 09:45:52', NULL),
(10, 1, 'upload/property/multi-image/1790421660170273.jpeg', '2024-02-09 09:45:52', NULL),
(11, 1, 'upload/property/multi-image/1790421660232710.jpeg', '2024-02-09 09:45:53', NULL),
(12, 1, 'upload/property/multi-image/1790421660344410.jpeg', '2024-02-09 09:45:53', NULL),
(13, 1, 'upload/property/multi-image/1790421660409420.jpeg', '2024-02-09 09:45:53', NULL),
(14, 1, 'upload/property/multi-image/1790421660472240.jpeg', '2024-02-09 09:45:53', NULL),
(15, 2, 'upload/property/multi-image/1790421973977462.jpeg', '2024-02-09 09:50:52', NULL),
(16, 2, 'upload/property/multi-image/1790421974094882.jpeg', '2024-02-09 09:50:52', NULL),
(17, 2, 'upload/property/multi-image/1790421974197869.jpeg', '2024-02-09 09:50:52', NULL),
(18, 2, 'upload/property/multi-image/1790421974298579.jpeg', '2024-02-09 09:50:52', NULL),
(19, 2, 'upload/property/multi-image/1790421974399452.jpeg', '2024-02-09 09:50:52', NULL),
(20, 2, 'upload/property/multi-image/1790421974499245.jpeg', '2024-02-09 09:50:52', NULL),
(21, 2, 'upload/property/multi-image/1790421974594743.jpeg', '2024-02-09 09:50:52', NULL),
(22, 2, 'upload/property/multi-image/1790421974695735.jpeg', '2024-02-09 09:50:52', NULL),
(23, 2, 'upload/property/multi-image/1790421974800569.jpeg', '2024-02-09 09:50:53', NULL),
(24, 3, 'upload/property/multi-image/1790422781564968.jpeg', '2024-02-09 10:03:42', NULL),
(25, 3, 'upload/property/multi-image/1790422781630984.jpeg', '2024-02-09 10:03:42', NULL),
(26, 3, 'upload/property/multi-image/1790422781701398.jpeg', '2024-02-09 10:03:42', NULL),
(27, 3, 'upload/property/multi-image/1790422781768908.jpeg', '2024-02-09 10:03:42', NULL),
(28, 3, 'upload/property/multi-image/1790422781842225.jpeg', '2024-02-09 10:03:42', NULL),
(29, 3, 'upload/property/multi-image/1790422781912189.jpeg', '2024-02-09 10:03:42', NULL),
(30, 3, 'upload/property/multi-image/1790422781977920.jpeg', '2024-02-09 10:03:42', NULL),
(31, 3, 'upload/property/multi-image/1790422782045477.jpeg', '2024-02-09 10:03:42', NULL),
(32, 3, 'upload/property/multi-image/1790422782109195.jpeg', '2024-02-09 10:03:42', NULL),
(33, 3, 'upload/property/multi-image/1790422782177264.jpeg', '2024-02-09 10:03:42', NULL),
(34, 3, 'upload/property/multi-image/1790422782239031.jpeg', '2024-02-09 10:03:43', NULL),
(35, 3, 'upload/property/multi-image/1790422782364752.jpeg', '2024-02-09 10:03:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_plans`
--

CREATE TABLE `package_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `package_credits` varchar(255) DEFAULT NULL,
  `package_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_plans`
--

INSERT INTO `package_plans` (`id`, `user_id`, `package_name`, `invoice`, `package_credits`, `package_amount`, `created_at`, `updated_at`) VALUES
(1, 2, 'Business', 'ERS71771213', '3', '2000', '2024-02-09 10:06:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ptype_id` varchar(255) NOT NULL,
  `amenities_id` varchar(255) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_slug` varchar(255) NOT NULL,
  `property_code` varchar(255) NOT NULL,
  `property_status` varchar(255) NOT NULL,
  `lowest_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(255) DEFAULT NULL,
  `property_thambnail` varchar(255) NOT NULL,
  `short_descp` text DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `bedrooms` varchar(255) DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `garage` varchar(255) DEFAULT NULL,
  `garage_size` varchar(255) DEFAULT NULL,
  `property_size` varchar(255) DEFAULT NULL,
  `property_video` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `neighborhood` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', '1,2,3', 'BCM Property', 'bcm-property', 'PC001', 'buy', '700000', '900000', 'upload/property/thambnail/1790421659535575.jpeg', 'Duplex moderne avec design contemporain, proche des commodités urbaines.', '<p>Duplex moderne avec design contemporain, proche des commodit&eacute;s urbaines.Duplex moderne avec design contemporain, proche des commodit&eacute;s urbaines.Duplex moderne avec design contemporain, proche des commodit&eacute;s urbaines.Duplex moderne avec design contemporain, proche des commodit&eacute;s urbaines.Duplex moderne avec design contemporain, proche des commodit&eacute;s urbaines.Duplex moderne avec design contemporain, proche des commodit&eacute;s urbaines.</p>', '2', '2', '1', NULL, '180 m²', 'lien Vimeo', 'Mpaka', 'Pointe-Noire', '3', '7336', 'Quartier animé du centre-ville', '36.7890', '-85.6789', '1', '1', 2, '1', '2024-02-09 09:45:52', NULL),
(2, '2', '1,3,4', 'AM-Immobiliers', 'am-immobiliers', 'PC002', 'rent', '80000', '120000', 'upload/property/thambnail/1790421973903218.jpeg', 'Condominium penthouse avec vue spectaculaire sur la ville.', '<p class=\"MsoNormal\"><span lang=\"FR\">Condominium penthouse avec vue spectaculaire sur la ville.</span><span lang=\"FR\">Condominium penthouse avec vue spectaculaire sur la ville.</span><span lang=\"FR\">Condominium penthouse avec vue spectaculaire sur la ville.</span><span lang=\"FR\">Condominium penthouse avec vue spectaculaire sur la ville.</span><span lang=\"FR\">Condominium penthouse avec vue spectaculaire sur la ville.</span><span lang=\"FR\">Condominium penthouse avec vue spectaculaire sur la ville.</span></p>', '2', '1', '1', '2 voitures', '220 m²', 'lien Vimeo', '456 Condo Heights', 'Brazzaville', '2', '2003', 'Proche du quartier des affaires', '35.6789', '-86.5678', '1', '1', 2, '1', '2024-02-09 09:50:52', NULL),
(3, '2', '1,2,3', 'BCM Property', 'bcm-property', 'PC003', 'rent', '800000', '1000000', 'upload/property/thambnail/1790422781525642.jpeg', 'Villa de luxe avec un jardin exotique et des équipements haut de gamme.', '<p class=\"MsoNormal\"><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villade luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span><span lang=\"FR\">Villa de luxe avec un jardin exotique et des &eacute;quipements haut de gamme.</span></p>', '2', '1', '1', '1 voiture par unité', '560', 'https://www.youtube.com/watch?v=vFT26MWPCH4', 'Terminus de patra', 'Pointe-Noire', '3', '0004', 'Presidence', '587899', '5635748', '1', '1', 9, '1', '2024-02-09 10:03:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_messages`
--

CREATE TABLE `property_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `msg_name` varchar(255) DEFAULT NULL,
  `msg_email` varchar(255) DEFAULT NULL,
  `msg_phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_messages`
--

INSERT INTO `property_messages` (`id`, `user_id`, `agent_id`, `property_id`, `msg_name`, `msg_email`, `msg_phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, '2', 2, 'User', 'user@gmail.com', NULL, '10h demain', '2024-02-18 15:31:31', NULL),
(2, 3, '9', 3, 'User', 'user@gmail.com', '055594829', 'j\'aime bcp la maison que vs avez poster...', '2024-02-18 17:28:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(1, 'Maison unifamiliale', 'icon-1', NULL, NULL),
(2, 'Appartement', 'icon-2', NULL, NULL),
(3, 'Duplex/Triplex', 'icon-4', NULL, NULL),
(4, 'Villa', 'icon-5', NULL, NULL),
(5, 'Immeuble de bureau', 'icon-7', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `tour_date` varchar(255) DEFAULT NULL,
  `tour_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `user_id`, `property_id`, `agent_id`, `tour_date`, `tour_time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2', '02/20/2024', '10h30', 'please', '1', '2024-02-18 15:32:43', '2024-02-18 17:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `support_phone`, `company_address`, `email`, `facebook`, `twitter`, `copyright`, `created_at`, `updated_at`) VALUES
(1, NULL, '3546789076', 'agshfjgkhdgsfd', 'ksfhks@gsfjld.com', 'dfghjk', 'dgfhjk', 'dfxgchvjbkn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `state_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `state_image`, `created_at`, `updated_at`) VALUES
(1, 'Kinshasa', 'upload/state/1790341574900111.jpg', NULL, NULL),
(2, 'Brazzaville', 'upload/state/1790341603176393.jpeg', NULL, NULL),
(3, 'Pointe-Noire', 'upload/state/1790341673241381.jpeg', NULL, NULL),
(4, 'Niari', 'upload/state/1790341758361392.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Sophie Dupont', 'Directrice des ventes', 'upload/testimonial/1790342268852000.jpeg', 'Mon expérience avec l\'équipe de [Nom de l\'agence immobilière] a été exceptionnelle. Grâce à leur expertise et à leur dévouement, j\'ai pu trouver la maison de mes rêves sans stress ni tracas. Un service professionnel du début à la fin !', NULL, NULL),
(2, 'Thomas Martin', 'Ingénieur en logiciel', 'upload/testimonial/1790342331243748.png', 'En tant qu\'acheteur novice, je ne savais pas par où commencer. [Nom de l\'agent immobilier] a rendu le processus simple et transparent. Leur approche personnalisée et leur connaissance approfondie du marché m\'ont permis de faire le meilleur choix pour ma famille', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$lxGPUjNJoj89ozaNS4Ksl.ADCvd2pOUfSvhQSBAutuBnK0btOTef.', NULL, NULL, NULL, 'admin', 'active', NULL, NULL, NULL),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$12$RJOtOKKw4vrOKJuhrQtmt.X4yXlPR95R/lpLarDkeQ4r1U69VyxWS', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$12$LN9VrM12Ot0gxJ5OcF0UN.LDjHj2bUi2aVIqh.qMVBEnvXaFEaGSm', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(4, 'Mattie Swaniawski', NULL, 'hahn.florian@example.net', '2024-02-07 08:35:44', '$2y$12$LZ2W1iA8aPnRkvMNFxrzauBGEjPPHmL2YBtdpF.x2UAc0HXbugABe', 'https://via.placeholder.com/60x60.png/000099?text=sed', '(865) 791-7246', '5150 Luettgen Underpass Apt. 960\nKristybury, MI 20635', 'admin', 'inactive', 'ZuCCdBDAPF', '2024-02-07 08:35:44', '2024-02-07 08:35:44'),
(5, 'Ms. Esta Streich', NULL, 'reilly.pierce@example.net', '2024-02-07 08:35:44', '$2y$12$LZ2W1iA8aPnRkvMNFxrzauBGEjPPHmL2YBtdpF.x2UAc0HXbugABe', 'https://via.placeholder.com/60x60.png/0022dd?text=dicta', '+1-808-316-4789', '747 Jaden Cliff\nSamantabury, AL 12383-3853', 'user', 'inactive', '3HaWQX3xSi', '2024-02-07 08:35:44', '2024-02-07 08:35:44'),
(6, 'Elfrieda Halvorson', NULL, 'eliza.morar@example.net', '2024-02-07 08:35:44', '$2y$12$LZ2W1iA8aPnRkvMNFxrzauBGEjPPHmL2YBtdpF.x2UAc0HXbugABe', 'https://via.placeholder.com/60x60.png/001199?text=nostrum', '434-840-1970', '68134 Bogisich Stream Apt. 318\nNorth Cletaville, NJ 38129', 'admin', 'active', 'cUENOA1unb', '2024-02-07 08:35:44', '2024-02-07 08:35:44'),
(7, 'Mrs. Velva Simonis III', NULL, 'maximillia.orn@example.org', '2024-02-07 08:35:44', '$2y$12$LZ2W1iA8aPnRkvMNFxrzauBGEjPPHmL2YBtdpF.x2UAc0HXbugABe', 'https://via.placeholder.com/60x60.png/002233?text=nulla', '(215) 807-4685', '6661 Larson Manors\nNew Ezekiel, MA 47612-6543', 'admin', 'inactive', '7sYZ7cD26q', '2024-02-07 08:35:44', '2024-02-07 08:35:44'),
(9, 'Felie', NULL, 'felie@bcm.com', NULL, '$2y$12$7wLK9wPrKyXT4gW2WKsUPOA48yVBV2sblQHmdaQD.CaZhTlKdxWsu', NULL, '054594970', 'Terminus de patra', 'agent', 'active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2024-02-18 15:29:11', NULL),
(2, 3, 3, '2024-02-18 15:29:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_plans`
--
ALTER TABLE `package_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_messages`
--
ALTER TABLE `property_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `package_plans`
--
ALTER TABLE `package_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_messages`
--
ALTER TABLE `property_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
