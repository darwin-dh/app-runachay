-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2023 a las 01:07:10
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbrunachay`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collaborator`
--

CREATE TABLE `collaborator` (
  `id_collaborator` int(11) NOT NULL,
  `identification` varchar(10) NOT NULL,
  `name` char(75) NOT NULL,
  `last_name` char(75) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `collaborator`
--

INSERT INTO `collaborator` (`id_collaborator`, `identification`, `name`, `last_name`, `email`, `status`, `fecha`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '1751622158', 'DARWIN Q', 'QUISHPE', 'DARWIN@hotmail.com', 1, NULL, 8, '2023-02-18', '2023-02-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collaborator_details`
--

CREATE TABLE `collaborator_details` (
  `id_collaborator_details` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` char(10) NOT NULL,
  `vaccination_status` char(75) NOT NULL,
  `type_vaccine` varchar(50) NOT NULL,
  `id_collaborator` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `collaborator_details`
--

INSERT INTO `collaborator_details` (`id_collaborator_details`, `birthdate`, `address`, `phone`, `vaccination_status`, `type_vaccine`, `id_collaborator`, `created_at`, `updated_at`) VALUES
(1, '2023-02-08', 'av colon', '023021855', '1', 'Sinovac', 1, '2023-02-18', '2023-02-18 05:04:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collaborator_vaccine`
--

CREATE TABLE `collaborator_vaccine` (
  `id_collaborator_vaccine` int(11) NOT NULL,
  `vaccination_date` date NOT NULL,
  `number_doses` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `id_collaborator` int(11) NOT NULL,
  `id_type_vaccine` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id_permissions` int(11) NOT NULL,
  `r` tinyint(1) DEFAULT NULL,
  `w` tinyint(1) DEFAULT NULL,
  `u` tinyint(1) DEFAULT NULL,
  `d` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'auth_token', 'bb49ae108d7abf52f574f5f0b5840fa9b9fd9d5250afe6dace7ead751d88d533', '[\"*\"]', NULL, NULL, '2022-11-09 04:27:11', '2022-11-09 04:27:11'),
(2, 'App\\Models\\User', 4, 'auth_token', '890d36d310e56c66480db9d682f5454036d7d28a11dd2ecc26d9ac93b2fdc42f', '[\"*\"]', NULL, NULL, '2022-11-09 04:35:56', '2022-11-09 04:35:56'),
(3, 'App\\Models\\User', 4, 'auth_token', 'd7042e84d24c23fc8163418358ed17b76935dcc6b17e4bf5667e7f41989ff387', '[\"*\"]', NULL, NULL, '2022-11-09 05:06:59', '2022-11-09 05:06:59'),
(4, 'App\\Models\\User', 4, 'auth_token', '85995a827e424b6f6e7b685e04deb167e93e8cb539575e3e19ed52fa34e6e1fe', '[\"*\"]', NULL, NULL, '2022-11-09 05:10:18', '2022-11-09 05:10:18'),
(5, 'App\\Models\\User', 4, 'auth_token', '076bd5fdbf6c6fbf530fc2f46e0e84485a3754c3d891152c46536d6612a3f792', '[\"*\"]', NULL, NULL, '2022-11-09 05:10:30', '2022-11-09 05:10:30'),
(6, 'App\\Models\\User', 4, 'auth_token', '84f28129e8596db880aff08cdbb85356f9a1c30eb1c7aed7c01a71623709fb80', '[\"*\"]', NULL, NULL, '2022-11-09 05:13:12', '2022-11-09 05:13:12'),
(7, 'App\\Models\\User', 4, 'auth_token', '2210119e6aba8699338f9ff5c38503548ababd3b6306f9388d3e32eec6c6dc19', '[\"*\"]', NULL, NULL, '2022-11-09 05:14:28', '2022-11-09 05:14:28'),
(8, 'App\\Models\\User', 4, 'auth_token', '6b68f89b8055c53b914e16a0c7d4d8a3dced63085a3e336e72b4c04102f3f84b', '[\"*\"]', NULL, NULL, '2022-11-09 05:14:38', '2022-11-09 05:14:38'),
(9, 'App\\Models\\User', 4, 'auth_token', '6a8d2b5b24074b197b1d176ba2891ded750f21e76b5d9c67e9c1280c759dce05', '[\"*\"]', NULL, NULL, '2022-11-09 05:15:18', '2022-11-09 05:15:18'),
(10, 'App\\Models\\User', 4, 'auth_token', '30cae7741c5d33873e376c969c1907b65e05ce5b3fd15ab336f3be841db0f395', '[\"*\"]', NULL, NULL, '2022-11-09 05:16:09', '2022-11-09 05:16:09'),
(11, 'App\\Models\\User', 4, 'auth_token', '2465457740de67af812cc73ed3e9c62e197475c71bfbcd08ff1c824fc91d5b5e', '[\"*\"]', NULL, NULL, '2022-11-09 05:16:15', '2022-11-09 05:16:15'),
(12, 'App\\Models\\User', 4, 'auth_token', 'ada6b14d47341848538f72dbbd1b5083cb705a234450a849510ea9681fc1e63d', '[\"*\"]', NULL, NULL, '2022-11-09 05:16:16', '2022-11-09 05:16:16'),
(13, 'App\\Models\\User', 4, 'auth_token', 'e21c9aefb8d1242b6f06304fee79299e7787a9161ed2355c67fd416f25465726', '[\"*\"]', NULL, NULL, '2022-11-09 05:16:45', '2022-11-09 05:16:45'),
(14, 'App\\Models\\User', 4, 'auth_token', '62262f60fe423b551638487c537310497a06d224fdfca25f41672e6f94d34ba2', '[\"*\"]', NULL, NULL, '2022-11-09 05:16:47', '2022-11-09 05:16:47'),
(15, 'App\\Models\\User', 4, 'auth_token', '82ff8402ad024315ff9bdde706887b18ad999fe6c0cfd83c703d96d8f97e0be6', '[\"*\"]', NULL, NULL, '2022-11-09 05:17:14', '2022-11-09 05:17:14'),
(16, 'App\\Models\\User', 4, 'auth_token', '57edffbd1fcdf855f8f9e228227216ddc0327b14cbe235a059e02f9402996253', '[\"*\"]', NULL, NULL, '2022-11-09 05:17:35', '2022-11-09 05:17:35'),
(17, 'App\\Models\\User', 4, 'auth_token', '45b7737de84d1c04ca7f141108772d21e7bf96f7dc6a9d02a19d2536fef5b2f8', '[\"*\"]', NULL, NULL, '2022-11-09 05:18:54', '2022-11-09 05:18:54'),
(18, 'App\\Models\\User', 4, 'auth_token', '63f378c96dca9f8a9d0d124d4f13a55070a49853e80a0e13f0615b77c488cc8a', '[\"*\"]', NULL, NULL, '2022-11-09 05:35:08', '2022-11-09 05:35:08'),
(19, 'App\\Models\\User', 4, 'auth_token', '0b2d6a050ff4f0000a1c817493798496930b5923fdf261407863871bde2d4e63', '[\"*\"]', NULL, NULL, '2022-11-09 05:57:52', '2022-11-09 05:57:52'),
(20, 'App\\Models\\User', 4, 'auth_token', 'b3abda008841a83aab75fd9e6315c9d0abe72a5f1f00336c5932fcfab1bcbfa0', '[\"*\"]', NULL, NULL, '2022-11-09 06:07:58', '2022-11-09 06:07:58'),
(21, 'App\\Models\\User', 4, 'auth_token', '215fdf6e97b52941f5af65da9356ac875c5e9c2212dae3c3cb12a04affbd64f7', '[\"*\"]', NULL, NULL, '2022-11-09 06:08:25', '2022-11-09 06:08:25'),
(22, 'App\\Models\\User', 4, 'auth_token', '115eb613a7034725ce12e314bbafa3ef2b6c4132ffcffba9f4d8d031364b6416', '[\"*\"]', NULL, NULL, '2022-11-09 06:11:54', '2022-11-09 06:11:54'),
(23, 'App\\Models\\User', 1, 'auth_token', '3feba5c86bd4b5efaf3616a9f8df64ae8ab6a2980572848c02264008fa9761ea', '[\"*\"]', NULL, NULL, '2022-11-09 10:16:45', '2022-11-09 10:16:45'),
(24, 'App\\Models\\User', 1, 'auth_token', '60dfb6e7c9e74c62a4ae1adf97ef3a28be775bd1b4145cfc972b841f863720f8', '[\"*\"]', NULL, NULL, '2022-11-09 10:51:34', '2022-11-09 10:51:34'),
(25, 'App\\Models\\User', 1, 'auth_token', '3e2fbe94d40fbe09a6805c6b06856e7730925a5e51d13462c28dafc3389b346f', '[\"*\"]', NULL, NULL, '2022-11-09 10:53:08', '2022-11-09 10:53:08'),
(26, 'App\\Models\\User', 1, 'auth_token', '00c3a346b6c15589534e35dac4d38eaa91e89e4bb8e821d87c34a4cf4ac9d258', '[\"*\"]', NULL, NULL, '2022-11-09 11:29:55', '2022-11-09 11:29:55'),
(27, 'App\\Models\\User', 1, 'auth_token', '58a1a9bfef4a237923476d142809061e9cf8b74dc9015b39bed6a033d2c73770', '[\"*\"]', NULL, NULL, '2022-11-09 19:33:16', '2022-11-09 19:33:16'),
(28, 'App\\Models\\User', 1, 'auth_token', '3dde55145437af47e91babd926f4e217b6615473391c187dd28dd0384b3df7a3', '[\"*\"]', NULL, NULL, '2022-11-09 21:10:25', '2022-11-09 21:10:25'),
(29, 'App\\Models\\User', 1, 'auth_token', 'ca832869aadbd7b3d6a1fc3b303a4ecc34774baeee94945f4c485f09dcd63f74', '[\"*\"]', NULL, NULL, '2022-11-09 21:11:18', '2022-11-09 21:11:18'),
(30, 'App\\Models\\User', 1, 'auth_token', 'cf27d2e71db9da56f6e6b41aa63b079910b80ae1b9bdea9579064aea46b47790', '[\"*\"]', NULL, NULL, '2022-11-09 21:11:51', '2022-11-09 21:11:51'),
(31, 'App\\Models\\User', 1, 'auth_token', '4daeee7cedde23a9d0b596e42eea0ae48c5c1c1e8a35ee38e2f55311f3351a73', '[\"*\"]', NULL, NULL, '2022-11-09 21:12:16', '2022-11-09 21:12:16'),
(32, 'App\\Models\\User', 1, 'auth_token', 'a5f52ff5848f2ab3f30a1c55a3f3da0674064ff050c6c81bf234d8adc225dd86', '[\"*\"]', NULL, NULL, '2022-11-09 21:13:24', '2022-11-09 21:13:24'),
(33, 'App\\Models\\User', 1, 'auth_token', '423bef9d08e4d7ebdba34d21ff1f3b66d961c377f5ca93a516c4218becfecd05', '[\"*\"]', NULL, NULL, '2022-11-09 21:21:30', '2022-11-09 21:21:30'),
(34, 'App\\Models\\User', 1, 'auth_token', '826b1ddad561b7b0b366473fd72520ff0d5e7021b69ccefb702c156cdb45808d', '[\"*\"]', NULL, NULL, '2022-11-09 21:21:38', '2022-11-09 21:21:38'),
(35, 'App\\Models\\User', 1, 'auth_token', 'd4163883028679a20c15731b5922dce07a9d76414cc1ed2e3a1ada2158422b93', '[\"*\"]', NULL, NULL, '2022-11-09 21:26:29', '2022-11-09 21:26:29'),
(36, 'App\\Models\\User', 1, 'auth_token', '38133a78eb750cbe421b531b872a6fc7cb7a1ea33c3d9bad401df8fcee44f1ef', '[\"*\"]', NULL, NULL, '2022-11-09 21:26:30', '2022-11-09 21:26:30'),
(37, 'App\\Models\\User', 1, 'auth_token', 'b444b2735828b20dcacc84663905bdb8b6b16a52313c4a2fe7f991524b2bd22d', '[\"*\"]', NULL, NULL, '2022-11-09 21:26:34', '2022-11-09 21:26:34'),
(38, 'App\\Models\\User', 1, 'auth_token', '6d651fa074e29c89bec7aac1c36a7ae83d7a9281b1129daac7e636c0d0e8809d', '[\"*\"]', NULL, NULL, '2022-11-09 21:27:04', '2022-11-09 21:27:04'),
(39, 'App\\Models\\User', 1, 'auth_token', '8b99ffd62b9682e784ce95820e7f52e9af056a9663ac024e8bde2cd65598128c', '[\"*\"]', NULL, NULL, '2022-11-09 21:27:10', '2022-11-09 21:27:10'),
(40, 'App\\Models\\User', 1, 'auth_token', 'eeb2b4ae45c5aa2ee10fb8e64e27f4e05d8a97e4a9c3bc643c0cf536fefb8c98', '[\"*\"]', NULL, NULL, '2022-11-09 21:27:48', '2022-11-09 21:27:48'),
(41, 'App\\Models\\User', 1, 'auth_token', 'ddf049497eeb827e5474ef1e68f8aeb368e20f3d11178ea6006cff84363ed21d', '[\"*\"]', NULL, NULL, '2022-11-09 21:39:40', '2022-11-09 21:39:40'),
(42, 'App\\Models\\User', 1, 'auth_token', 'd989105bfc43fe96f0ec4259968b86f8c9eac605ea235c5da14d7064388ad8ac', '[\"*\"]', NULL, NULL, '2022-11-09 21:40:10', '2022-11-09 21:40:10'),
(43, 'App\\Models\\User', 1, 'auth_token', '447c949d8a9fe2cacfc140c2037d3a5aec7a05b0daf6b032eaf7379f82adab1d', '[\"*\"]', NULL, NULL, '2022-11-09 21:40:23', '2022-11-09 21:40:23'),
(44, 'App\\Models\\User', 1, 'auth_token', '5c9e698c15c69800e58a2f6bc16082ad706ee9ce8d7a13d20d3187a8500287e1', '[\"*\"]', NULL, NULL, '2022-11-09 21:43:13', '2022-11-09 21:43:13'),
(45, 'App\\Models\\User', 1, 'auth_token', '9657fd5e218d55537aaa531b94025159d63b5ef923fd414fb6d6d1cbedd209b0', '[\"*\"]', NULL, NULL, '2022-11-09 21:44:51', '2022-11-09 21:44:51'),
(46, 'App\\Models\\User', 1, 'auth_token', '80bf47ea3ddedf6b10b761063c433d95c4bd7c4f55fa56b4000968ea290c1214', '[\"*\"]', NULL, NULL, '2022-11-09 21:55:28', '2022-11-09 21:55:28'),
(47, 'App\\Models\\User', 1, 'auth_token', '9f2b04506c50f19bdb907e25f79002c370a9dc44a5f5341b178aa0bf0b928ff9', '[\"*\"]', NULL, NULL, '2022-11-09 21:56:49', '2022-11-09 21:56:49'),
(48, 'App\\Models\\User', 1, 'auth_token', '0bc0a14ec8431fc02a10bb60f64df8638205207a927a2ab4183b941d770dd463', '[\"*\"]', NULL, NULL, '2022-11-09 22:02:43', '2022-11-09 22:02:43'),
(49, 'App\\Models\\User', 1, 'auth_token', 'f106aad4a6a40b1ce432b3c52e48830fff198b49e952e43dfed5521338095a71', '[\"*\"]', NULL, NULL, '2022-11-09 22:04:20', '2022-11-09 22:04:20'),
(50, 'App\\Models\\User', 1, 'auth_token', '160b2064805bd219c85d672737ac8705fcaf5890c6af233fbbb0b5651bddf3d9', '[\"*\"]', NULL, NULL, '2022-11-09 22:14:36', '2022-11-09 22:14:36'),
(51, 'App\\Models\\User', 1, 'auth_token', '747ba097041a4d4be6382e2b2903afabfb08c1602a6247916ad546cfcd387fda', '[\"*\"]', NULL, NULL, '2022-11-09 22:15:34', '2022-11-09 22:15:34'),
(52, 'App\\Models\\User', 1, 'auth_token', '98ae242dfa4b0d75fae24f081d5a04978e2fe439fca62e844bb53dbfc319d508', '[\"*\"]', NULL, NULL, '2022-11-09 22:34:55', '2022-11-09 22:34:55'),
(53, 'App\\Models\\User', 1, 'auth_token', '77585843fa443b0c51f994c965d1d859c19675a8f9726d389ae53a3f45b6d957', '[\"*\"]', NULL, NULL, '2022-11-09 22:40:21', '2022-11-09 22:40:21'),
(54, 'App\\Models\\User', 1, 'auth_token', '47d635b5477297ea974d55deb405a122e426e6e8b35acec6271198e598e1ad9e', '[\"*\"]', NULL, NULL, '2022-11-09 22:45:08', '2022-11-09 22:45:08'),
(55, 'App\\Models\\User', 1, 'auth_token', '85ed4dd5c690995264bf93a08788b665afcbab19a7ffaf2abb25b09f0026c464', '[\"*\"]', NULL, NULL, '2022-11-09 22:50:20', '2022-11-09 22:50:20'),
(56, 'App\\Models\\User', 1, 'auth_token', '10ae08bcf20134f591767e8bd10edd3001ed522c14828a58fe260f39fff09f02', '[\"*\"]', NULL, NULL, '2022-11-09 22:52:39', '2022-11-09 22:52:39'),
(57, 'App\\Models\\User', 1, 'auth_token', '58663c63f9d3c7336295386c1f0d7fad561cc43b23bd51f42f6cd4d6815ba3c6', '[\"*\"]', NULL, NULL, '2022-11-09 22:59:48', '2022-11-09 22:59:48'),
(58, 'App\\Models\\User', 1, 'auth_token', '623f9fb522198e333f95951a54fa6272ddfe2507d7a4e31e59479b3472318b4d', '[\"*\"]', NULL, NULL, '2022-11-09 23:03:43', '2022-11-09 23:03:43'),
(59, 'App\\Models\\User', 1, 'auth_token', '018b0c64b989b3fa5b98bff88faacfc1a8a6c1a101d409354bb051716f635726', '[\"*\"]', NULL, NULL, '2022-11-09 23:12:19', '2022-11-09 23:12:19'),
(60, 'App\\Models\\User', 1, 'auth_token', '3e3d0375fc20d28ce84a4abaf3f5f6176c88b898b0bb1425b050a1a1ac1500c3', '[\"*\"]', NULL, NULL, '2022-11-09 23:23:20', '2022-11-09 23:23:20'),
(61, 'App\\Models\\User', 2, 'auth_token', 'cae1ca60c62c822a6b9c288f587f47bdd1909b906dab70d283cb9eeb1c616ce6', '[\"*\"]', NULL, NULL, '2022-11-09 23:34:12', '2022-11-09 23:34:12'),
(62, 'App\\Models\\User', 2, 'auth_token', '42c16f693fb66272b0f23124ca2d3cea10ba8fb1f995670b18a75731ed5e73f6', '[\"*\"]', NULL, NULL, '2022-11-10 00:32:56', '2022-11-10 00:32:56'),
(63, 'App\\Models\\User', 2, 'auth_token', '47a183d708b4805bf7f1374bff4fd338869b36bf05c712c724070d0fe45a30af', '[\"*\"]', NULL, NULL, '2022-11-10 00:33:29', '2022-11-10 00:33:29'),
(64, 'App\\Models\\User', 2, 'auth_token', 'e3b9509e5bd018e1a097fa82ef481e6042dda0e5d5608e0aa8173eb1f757917b', '[\"*\"]', NULL, NULL, '2022-11-10 00:35:13', '2022-11-10 00:35:13'),
(65, 'App\\Models\\User', 2, 'auth_token', 'e221638fd5403e88c625adb56606444ff75e396557e4c167ab9423cdd20bff90', '[\"*\"]', NULL, NULL, '2022-11-10 00:38:29', '2022-11-10 00:38:29'),
(66, 'App\\Models\\User', 2, 'auth_token', 'ff5ff69e8e5785db64900f66da6278e67c695409aa12098966c42cd76d87cb99', '[\"*\"]', NULL, NULL, '2022-11-10 00:42:13', '2022-11-10 00:42:13'),
(67, 'App\\Models\\User', 2, 'auth_token', '1a595fcc1326d88e5fb6068a73293430cd34ccf5207c02d3c499737c3e79de12', '[\"*\"]', NULL, NULL, '2022-11-10 00:46:40', '2022-11-10 00:46:40'),
(68, 'App\\Models\\User', 2, 'auth_token', '73a582e4d3a209e1ec56e9122c9ea81313dcdcc242e6266b1a42a18771dd3ee4', '[\"*\"]', NULL, NULL, '2022-11-10 00:48:15', '2022-11-10 00:48:15'),
(69, 'App\\Models\\User', 1, 'auth_token', '99c1b5b716e67fab2f9dce418ee290e87b388f70318bc87d99799260f169a087', '[\"*\"]', NULL, NULL, '2022-11-10 00:52:27', '2022-11-10 00:52:27'),
(70, 'App\\Models\\User', 1, 'auth_token', '7d79ef3f8eae114879bf8893010fe5767c2765216ee7a14013964e03e70a058e', '[\"*\"]', NULL, NULL, '2022-11-10 00:56:29', '2022-11-10 00:56:29'),
(71, 'App\\Models\\User', 2, 'auth_token', '9182641f571186e8d9a721f9f07be4c88216ecf6a9dfb694da68a00530c9e524', '[\"*\"]', NULL, NULL, '2022-11-10 00:57:10', '2022-11-10 00:57:10'),
(72, 'App\\Models\\User', 2, 'auth_token', 'd6e02b6ec3fd4b471bdd71fef395aa725e0757523072aad45c0f31dc7707ffc8', '[\"*\"]', NULL, NULL, '2022-11-10 01:00:35', '2022-11-10 01:00:35'),
(73, 'App\\Models\\User', 2, 'auth_token', 'cda16869de300d005edc6f591025c1e1748e0894b17b24f1617b6bd489a391ed', '[\"*\"]', NULL, NULL, '2022-11-10 01:05:05', '2022-11-10 01:05:05'),
(74, 'App\\Models\\User', 2, 'auth_token', '5ac42e7aa52bd74d0e9088ff275d657250bd1aa365004a1a7e05294a7c34e40a', '[\"*\"]', NULL, NULL, '2022-11-10 01:08:59', '2022-11-10 01:08:59'),
(75, 'App\\Models\\User', 2, 'auth_token', '1d82334c9175a503cede167ad99b948760cbc38c063046a7b808d529e8786fdf', '[\"*\"]', NULL, NULL, '2022-11-10 01:10:30', '2022-11-10 01:10:30'),
(76, 'App\\Models\\User', 2, 'auth_token', '210febc7f294445190c9fb1e3887c161587d23ce64e83bfd925a9c5e5bc242a7', '[\"*\"]', NULL, NULL, '2022-11-10 01:10:42', '2022-11-10 01:10:42'),
(77, 'App\\Models\\User', 2, 'auth_token', '0c4dbd5a32be7c71c36e8418c431e0f157a7c97080b47b3726a1233946baba6f', '[\"*\"]', NULL, NULL, '2022-11-10 01:11:24', '2022-11-10 01:11:24'),
(78, 'App\\Models\\User', 2, 'auth_token', '9b6edc80a403ad034898233c29364a500d5d655d4a2d7e10d6bc5bdc613a1847', '[\"*\"]', NULL, NULL, '2022-11-10 01:11:52', '2022-11-10 01:11:52'),
(79, 'App\\Models\\User', 2, 'auth_token', '75c830ba25889b165eb01cdf0c220c5cd33a2aef756445419a39312244abd5d4', '[\"*\"]', NULL, NULL, '2022-11-10 01:12:58', '2022-11-10 01:12:58'),
(80, 'App\\Models\\User', 2, 'auth_token', '5bdea09c218dd5ce17f315ae9cb8f93493b341e17cffd80afaa649fcced3f082', '[\"*\"]', NULL, NULL, '2022-11-10 01:13:08', '2022-11-10 01:13:08'),
(81, 'App\\Models\\User', 1, 'auth_token', 'af3214bddd2b005243156c2cf4cb53e95f1511de60d441dd914a81d6f95ca3dc', '[\"*\"]', NULL, NULL, '2022-11-10 01:17:05', '2022-11-10 01:17:05'),
(82, 'App\\Models\\User', 1, 'auth_token', '3ee72e8ffb80760f86f40d5b9f6867cc889aef0a20faa7aab29e9639e1b63217', '[\"*\"]', NULL, NULL, '2022-11-10 01:21:08', '2022-11-10 01:21:08'),
(83, 'App\\Models\\User', 1, 'auth_token', '1f4a1fc732baf2bd1dfb2558825b9d9e1972e20ef9a95faf387505a99a7c17f7', '[\"*\"]', NULL, NULL, '2022-11-10 01:21:25', '2022-11-10 01:21:25'),
(84, 'App\\Models\\User', 1, 'auth_token', '881e3830ca90b86418a0512ea18b4ff0e2a4afdca085f1c9d10e29d4737ebb26', '[\"*\"]', NULL, NULL, '2022-11-10 01:27:51', '2022-11-10 01:27:51'),
(85, 'App\\Models\\User', 1, 'auth_token', '52abd0dacb9bd939cf363e2db097509ed940af9d837dacb4effde720bf6a9fde', '[\"*\"]', NULL, NULL, '2022-11-10 01:28:19', '2022-11-10 01:28:19'),
(86, 'App\\Models\\User', 2, 'auth_token', '48a22739435776df97246720d4f14c134a359ca8de1bc7d3f17f5a08d1aab487', '[\"*\"]', NULL, NULL, '2022-11-10 01:28:48', '2022-11-10 01:28:48'),
(87, 'App\\Models\\User', 2, 'auth_token', '3b39a8f35bc4ab7615e02877c6ec0d075c233d09a29abe2e63b2fbee950b9aae', '[\"*\"]', NULL, NULL, '2022-11-10 01:30:21', '2022-11-10 01:30:21'),
(88, 'App\\Models\\User', 2, 'auth_token', '5f225a9a149bd0ea05187cfde245f83b13838145aa92f911e01972a6978da9e4', '[\"*\"]', NULL, NULL, '2022-11-10 01:31:24', '2022-11-10 01:31:24'),
(89, 'App\\Models\\User', 2, 'auth_token', 'ebd94ab19555b597abfce579e40c3f1a6010381cdd5648d9bfda82cac4b10782', '[\"*\"]', NULL, NULL, '2022-11-10 01:31:58', '2022-11-10 01:31:58'),
(90, 'App\\Models\\User', 1, 'auth_token', '36b5fc824b918dafa58a68769d6d6a78ebb90a84091fac69a4c0993379bc04e1', '[\"*\"]', NULL, NULL, '2022-11-10 01:32:47', '2022-11-10 01:32:47'),
(91, 'App\\Models\\User', 1, 'auth_token', '5f5e8dfa0c1fdb3f9fbfa3554d9eb76ca0078da9e759042c635bd70da48d9390', '[\"*\"]', NULL, NULL, '2022-11-10 01:46:46', '2022-11-10 01:46:46'),
(92, 'App\\Models\\User', 2, 'auth_token', '0213fd6271978d234abf514097f2a913e62ddb440db56accba4aacb01b21b2ad', '[\"*\"]', NULL, NULL, '2022-11-10 01:49:43', '2022-11-10 01:49:43'),
(93, 'App\\Models\\User', 2, 'auth_token', 'f67a122b25d064e78f59462846b17e53383e7b7f9fad91589622047ba005d79d', '[\"*\"]', NULL, NULL, '2022-11-10 01:51:58', '2022-11-10 01:51:58'),
(94, 'App\\Models\\User', 2, 'auth_token', '6f2092ad9d2e563fd326a768a76232e0440179c0ae30f3acc3406ae8bf3fc50a', '[\"*\"]', NULL, NULL, '2022-11-10 01:52:01', '2022-11-10 01:52:01'),
(95, 'App\\Models\\User', 2, 'auth_token', '6a3be3679ad2586599e4904bbe89e0eb187de89127ba3d5b16e78713037fb7be', '[\"*\"]', NULL, NULL, '2022-11-10 01:52:04', '2022-11-10 01:52:04'),
(96, 'App\\Models\\User', 2, 'auth_token', '2b278528e7f74a6bbdfe9de6b25a27e0faff32b1a9e34aa50c62ed8c5a5a5c8c', '[\"*\"]', NULL, NULL, '2022-11-10 01:52:22', '2022-11-10 01:52:22'),
(97, 'App\\Models\\User', 2, 'auth_token', '9d498f5e9c7c52ff12c7a4835e9f67126c60826063174f8c818c8db57484229a', '[\"*\"]', NULL, NULL, '2022-11-10 01:52:31', '2022-11-10 01:52:31'),
(98, 'App\\Models\\User', 2, 'auth_token', '56ccdf22fca38e836f94f9d67abaffa57552faeb08d2ca280bdf75ba4fb192f6', '[\"*\"]', NULL, NULL, '2022-11-10 01:52:39', '2022-11-10 01:52:39'),
(99, 'App\\Models\\User', 2, 'auth_token', '442ec716266fd452657411cb9212b826ca54f12d394bb850ad017fe41e5e6eae', '[\"*\"]', NULL, NULL, '2022-11-10 01:52:51', '2022-11-10 01:52:51'),
(100, 'App\\Models\\User', 2, 'auth_token', '07297e65a09fe1f5818548aa8d8dfc66c1544de9b96541d87feb3f9cee349e62', '[\"*\"]', NULL, NULL, '2022-11-10 01:53:00', '2022-11-10 01:53:00'),
(101, 'App\\Models\\User', 2, 'auth_token', '8a6960c356a1c9eef2fb18b7c54823f113aa16a176c0ec355acd71e3399e017b', '[\"*\"]', NULL, NULL, '2022-11-10 01:53:18', '2022-11-10 01:53:18'),
(102, 'App\\Models\\User', 2, 'auth_token', '0956d96ef0c7f9bd69f8a3de57ee819dbc4502661bbafe563452b6cc21387954', '[\"*\"]', NULL, NULL, '2022-11-10 01:53:31', '2022-11-10 01:53:31'),
(103, 'App\\Models\\User', 2, 'auth_token', 'e02fbbe09a82f1647e00310baa4013370ab9b11458b85ff5c362427c0cd5d8b4', '[\"*\"]', NULL, NULL, '2022-11-10 01:53:40', '2022-11-10 01:53:40'),
(104, 'App\\Models\\User', 2, 'auth_token', 'c905726424a1db2365e54fcda22634c4beff5c3e14ce76f85fa1aa2d33c93e83', '[\"*\"]', NULL, NULL, '2022-11-10 01:54:04', '2022-11-10 01:54:04'),
(105, 'App\\Models\\User', 2, 'auth_token', 'def1ddb2464fe11b8695cbfc22d343b2c5d078f89b6687270d030117bb31fde5', '[\"*\"]', NULL, NULL, '2022-11-10 01:54:17', '2022-11-10 01:54:17'),
(106, 'App\\Models\\User', 2, 'auth_token', 'a593dd80bbe621b6a403942b3a94c44e79d0ff02f3c1c4a5f47d6e7d457f3455', '[\"*\"]', NULL, NULL, '2022-11-10 01:54:21', '2022-11-10 01:54:21'),
(107, 'App\\Models\\User', 2, 'auth_token', 'b78b89c49eeee661e86e2c28076eb40b45be3ac409b73d59d3f1c27c769aa8e7', '[\"*\"]', NULL, NULL, '2022-11-10 01:56:00', '2022-11-10 01:56:00'),
(108, 'App\\Models\\User', 2, 'auth_token', 'a0d809ac67acf8f1fbe72ca1c41c7dcdb54259a8c9924e81b40bf201e3f914fe', '[\"*\"]', NULL, NULL, '2022-11-10 01:56:59', '2022-11-10 01:56:59'),
(109, 'App\\Models\\User', 2, 'auth_token', '01505b3f3291509d3673bb1c00568ce1d338fa4f1379f590fbec9926e73ac685', '[\"*\"]', NULL, NULL, '2022-11-10 02:03:08', '2022-11-10 02:03:08'),
(110, 'App\\Models\\User', 2, 'auth_token', '265845136c04de404b7408d634a9a12302c619247f7de15ecd8cbdf07f39be16', '[\"*\"]', NULL, NULL, '2022-11-10 02:03:10', '2022-11-10 02:03:10'),
(111, 'App\\Models\\User', 2, 'auth_token', '6a9acfa0b42c0322053bd4eb7cc8f81e52e4518b8a258a9750b6970fe3bb592c', '[\"*\"]', NULL, NULL, '2022-11-10 02:03:11', '2022-11-10 02:03:11'),
(112, 'App\\Models\\User', 2, 'auth_token', '51ba8797c2952209e1c34f1eabf308243f37432d853ea4c017942660fbeea18c', '[\"*\"]', NULL, NULL, '2022-11-10 02:03:15', '2022-11-10 02:03:15'),
(113, 'App\\Models\\User', 2, 'auth_token', 'afc2836e2b9d61cddf45d4d7bd9e1670f3c14a777ed07804e35a026894b262cc', '[\"*\"]', NULL, NULL, '2022-11-10 02:04:11', '2022-11-10 02:04:11'),
(114, 'App\\Models\\User', 2, 'auth_token', '4d11ef262886ddca1686a6c333ff040204208a91f0d2d3e444edbead581e2301', '[\"*\"]', NULL, NULL, '2022-11-10 02:04:27', '2022-11-10 02:04:27'),
(115, 'App\\Models\\User', 2, 'auth_token', '5d00a3aa9093b5256746a731f70417829f9f812c7f43bb7cc36ab1a391739acc', '[\"*\"]', NULL, NULL, '2022-11-10 02:05:14', '2022-11-10 02:05:14'),
(116, 'App\\Models\\User', 2, 'auth_token', '93080665e611428234ad5f9ee908c8fd63285c51b6ee1dd0ad6c982405c6d377', '[\"*\"]', NULL, NULL, '2022-11-10 02:07:26', '2022-11-10 02:07:26'),
(117, 'App\\Models\\User', 2, 'auth_token', '2072992d5b923f4836aa2f62aaefb8d4434788e8979000b8c2dd8f857fa63fc0', '[\"*\"]', NULL, NULL, '2022-11-10 02:07:40', '2022-11-10 02:07:40'),
(118, 'App\\Models\\User', 2, 'auth_token', '70fc38c86baa8f364f05391c818d41b9d5667a4791b253bf9848a07a5b733054', '[\"*\"]', NULL, NULL, '2022-11-10 02:07:51', '2022-11-10 02:07:51'),
(119, 'App\\Models\\User', 2, 'auth_token', 'e61791ad8b7c80c36d5cd02b094ffcc2ccca5f9dce69cc5051af7a5c8c2a5400', '[\"*\"]', NULL, NULL, '2022-11-10 02:08:37', '2022-11-10 02:08:37'),
(120, 'App\\Models\\User', 2, 'auth_token', '6d0badcfb865aa62ee59f890fe178789b89b4d74ffb938d8eb47ac86d7c20bf6', '[\"*\"]', NULL, NULL, '2022-11-10 02:08:53', '2022-11-10 02:08:53'),
(121, 'App\\Models\\User', 2, 'auth_token', '8861975f263b7e6e9b1252ce88a6f5e05f087302fd291da43f433c48b80ead30', '[\"*\"]', NULL, NULL, '2022-11-10 02:08:58', '2022-11-10 02:08:58'),
(122, 'App\\Models\\User', 2, 'auth_token', '4773127a0cb4ef54660b2d9491b97e4a92fd715f773701d8f965de73628e1721', '[\"*\"]', NULL, NULL, '2022-11-10 02:09:08', '2022-11-10 02:09:08'),
(123, 'App\\Models\\User', 2, 'auth_token', '88d6fc42bcc881abe0d11e480955fe31bc8567a54de0d61b96ce2b38a5352a93', '[\"*\"]', NULL, NULL, '2022-11-10 02:09:41', '2022-11-10 02:09:41'),
(124, 'App\\Models\\User', 2, 'auth_token', 'bc1a39341c7ef46ce6cf357c7ef51c550510d4e786448d9e60b6683a02c0f96a', '[\"*\"]', NULL, NULL, '2022-11-10 02:10:53', '2022-11-10 02:10:53'),
(125, 'App\\Models\\User', 2, 'auth_token', '537193302277ae9cd63921f9b52ec8edb367db4e3977f4144653c70658b9fcfe', '[\"*\"]', NULL, NULL, '2022-11-10 02:12:00', '2022-11-10 02:12:00'),
(126, 'App\\Models\\User', 2, 'auth_token', 'a55567e654f2202b6513ef261c15e186182661d5b0d05f60039044508aebee08', '[\"*\"]', NULL, NULL, '2022-11-10 02:12:35', '2022-11-10 02:12:35'),
(127, 'App\\Models\\User', 2, 'auth_token', '589a9f4a21cea9b6e79a8ad7d40cdf263e196b094fe4e56a6b3155ca39075293', '[\"*\"]', NULL, NULL, '2022-11-10 02:12:46', '2022-11-10 02:12:46'),
(128, 'App\\Models\\User', 2, 'auth_token', 'd5bffbe2e331e18a06a8099db5b5d121af0c7ef1a97c87630ddef1b27cf48591', '[\"*\"]', NULL, NULL, '2022-11-10 02:12:58', '2022-11-10 02:12:58'),
(129, 'App\\Models\\User', 2, 'auth_token', 'd00729a326750e4f576befd41cc4a407ebe7ca91b9d771aa3651c625b59e897b', '[\"*\"]', NULL, NULL, '2022-11-10 02:13:12', '2022-11-10 02:13:12'),
(130, 'App\\Models\\User', 2, 'auth_token', '42a8461836025d790f34266fcd62c50fe4d7bd70d44015d685b68a651c65a45a', '[\"*\"]', NULL, NULL, '2022-11-10 02:13:33', '2022-11-10 02:13:33'),
(131, 'App\\Models\\User', 2, 'auth_token', 'e9635cb649b82ead61ec4b2cda592f765490fd9ee6b8810468342bb59439b750', '[\"*\"]', NULL, NULL, '2022-11-10 02:13:47', '2022-11-10 02:13:47'),
(132, 'App\\Models\\User', 2, 'auth_token', '094789d3af0d9b35a2afe82430f5db90fff1526bc620401bdc45c8de60297198', '[\"*\"]', NULL, NULL, '2022-11-10 02:14:14', '2022-11-10 02:14:14'),
(133, 'App\\Models\\User', 2, 'auth_token', '2631d68926ffbdc1c445920f699c596ce2903a6b3279fac67254a97ac57c4173', '[\"*\"]', NULL, NULL, '2022-11-10 02:14:27', '2022-11-10 02:14:27'),
(134, 'App\\Models\\User', 2, 'auth_token', '290700099030380b578165bf475f70c72fc078d4bb0f47a8b6ffd05055c1644d', '[\"*\"]', NULL, NULL, '2022-11-10 02:14:36', '2022-11-10 02:14:36'),
(135, 'App\\Models\\User', 2, 'auth_token', '529f848f9353090a31eff80fa18d953d2f90ecf6efeb5f4426401d136b1fd1f6', '[\"*\"]', NULL, NULL, '2022-11-10 02:15:02', '2022-11-10 02:15:02'),
(136, 'App\\Models\\User', 2, 'auth_token', '50051b3a332a97b8148fbd6d9cd16497abec74fa2cd5436e2ddb03b959ba5bc8', '[\"*\"]', NULL, NULL, '2022-11-10 02:15:06', '2022-11-10 02:15:06'),
(137, 'App\\Models\\User', 2, 'auth_token', '54069860b131246ff2ac1d42a3f196bfb503ce94c12f8150fa6ad4f31ac99a11', '[\"*\"]', NULL, NULL, '2022-11-10 02:15:58', '2022-11-10 02:15:58'),
(138, 'App\\Models\\User', 2, 'auth_token', '8d3e12363c48b3571b010fb6ac16ff12c0ae69aab9703c9d7f25908b15606690', '[\"*\"]', NULL, NULL, '2022-11-10 02:17:18', '2022-11-10 02:17:18'),
(139, 'App\\Models\\User', 1, 'auth_token', '658f36a4345d9e7fcb5f40acbd919f461eb46b1a946853978eb54c52ab8f9a19', '[\"*\"]', NULL, NULL, '2022-11-10 02:17:37', '2022-11-10 02:17:37'),
(140, 'App\\Models\\User', 1, 'auth_token', '23e8914b4ad24cb7663244690c46e4fae70ace814aa1c0d36e7899b06604cf7d', '[\"*\"]', NULL, NULL, '2022-11-10 02:18:03', '2022-11-10 02:18:03'),
(141, 'App\\Models\\User', 1, 'auth_token', 'bbd9f0aa809b9bed8c006fbbb0f7b7e48f95329888931bae41110e9e99d39cc1', '[\"*\"]', NULL, NULL, '2022-11-10 02:19:21', '2022-11-10 02:19:21'),
(142, 'App\\Models\\User', 1, 'auth_token', 'f49e26861adfcc0774ea35af11c1c38e6a9abaef04a72f04395682fe1455ae24', '[\"*\"]', NULL, NULL, '2022-11-10 02:19:59', '2022-11-10 02:19:59'),
(143, 'App\\Models\\User', 1, 'auth_token', '57d1e6c5e3defbf906ec2667bbe5c0cf399665a78b030f09ac9738dde3d863e6', '[\"*\"]', NULL, NULL, '2022-11-10 02:21:02', '2022-11-10 02:21:02'),
(144, 'App\\Models\\User', 1, 'auth_token', '9d1e48372438f3f4efb379c2a61c2451484ff77b1c7ff9c4520c9afd3d820274', '[\"*\"]', NULL, NULL, '2022-11-10 02:21:11', '2022-11-10 02:21:11'),
(145, 'App\\Models\\User', 1, 'auth_token', 'dcad92525cb6103b37df80ff6f3817535d136a0d158f4e71a1337b117454c63e', '[\"*\"]', NULL, NULL, '2022-11-10 02:21:37', '2022-11-10 02:21:37'),
(146, 'App\\Models\\User', 1, 'auth_token', '143d453f1f79123bd13ef259e12175b021188f7163e2f2c376427519534fedce', '[\"*\"]', NULL, NULL, '2022-11-10 02:22:01', '2022-11-10 02:22:01'),
(147, 'App\\Models\\User', 1, 'auth_token', '3ca42d5e71732306509cdf47046336d51a0b7849fe8211ac5f5c33471c54e93e', '[\"*\"]', NULL, NULL, '2022-11-10 02:22:10', '2022-11-10 02:22:10'),
(148, 'App\\Models\\User', 1, 'auth_token', '3f6e38829cc221ab87439d1d35570434feb15f351b54e8facc9c8bc9c9c91aa1', '[\"*\"]', NULL, NULL, '2022-11-10 02:22:14', '2022-11-10 02:22:14'),
(149, 'App\\Models\\User', 1, 'auth_token', '261f5d2bd43fad2286cc52f92adc317720b99fd76c21b4426498677c2da6bda0', '[\"*\"]', NULL, NULL, '2022-11-10 02:22:38', '2022-11-10 02:22:38'),
(150, 'App\\Models\\User', 1, 'auth_token', '733e2e31b80bc48ff1e83dbfd3eb360d7408476aec33ba77b933c3d5e2671f2c', '[\"*\"]', NULL, NULL, '2022-11-10 02:23:06', '2022-11-10 02:23:06'),
(151, 'App\\Models\\User', 1, 'auth_token', 'ea44062e32b102d3507ec208c3d1625fe3535afe9219c1ab9f5fb84c91322e0a', '[\"*\"]', NULL, NULL, '2022-11-10 02:23:28', '2022-11-10 02:23:28'),
(152, 'App\\Models\\User', 1, 'auth_token', '0b319f5bfcc7bc18f79596ef54e76409b0ce5e4afe557eee5442c35704beb216', '[\"*\"]', NULL, NULL, '2022-11-10 02:23:42', '2022-11-10 02:23:42'),
(153, 'App\\Models\\User', 1, 'auth_token', '0aa6388820047127b0f2a548a2d55c1fdfaee5afe510e976be0b2078a08944e2', '[\"*\"]', NULL, NULL, '2022-11-10 02:23:56', '2022-11-10 02:23:56'),
(154, 'App\\Models\\User', 1, 'auth_token', '253b56fed0e69de49642369eddd9145c3544da78a2581be6bc23c235a5ebcc20', '[\"*\"]', NULL, NULL, '2022-11-10 02:24:06', '2022-11-10 02:24:06'),
(155, 'App\\Models\\User', 1, 'auth_token', '01ae1a538684962ce694aa57f47926170b7e27698feb69245ef9f0ee2eade155', '[\"*\"]', NULL, NULL, '2022-11-10 02:24:20', '2022-11-10 02:24:20'),
(156, 'App\\Models\\User', 1, 'auth_token', '2dc61ba39a39e32a6425d33e7ece06dd010284d81b3b3b49c370a6ddd72ea37d', '[\"*\"]', NULL, NULL, '2022-11-10 02:24:27', '2022-11-10 02:24:27'),
(157, 'App\\Models\\User', 1, 'auth_token', '0716ab7d4766ec1d1713fe42185cb266b52c9709a8cc840e8d75b608d60a1e2f', '[\"*\"]', NULL, NULL, '2022-11-10 02:24:34', '2022-11-10 02:24:34'),
(158, 'App\\Models\\User', 1, 'auth_token', '01ba54efb26d180afc2a87bde33734a2d95b29caff3a22dc782e84468ec22669', '[\"*\"]', NULL, NULL, '2022-11-10 02:24:42', '2022-11-10 02:24:42'),
(159, 'App\\Models\\User', 1, 'auth_token', 'd5f73b17e8b613b7a0256092a23c8d8cb6592ecebaa8bd26829a26b351c3845f', '[\"*\"]', NULL, NULL, '2022-11-10 02:24:55', '2022-11-10 02:24:55'),
(160, 'App\\Models\\User', 1, 'auth_token', '49a845017db8200a27810d60e06d8bdfdfe078eb6806bf87d380640cbd08d9cf', '[\"*\"]', NULL, NULL, '2022-11-10 02:25:32', '2022-11-10 02:25:32'),
(161, 'App\\Models\\User', 1, 'auth_token', 'a56eddf52e5f6cff50006590f734de3c57cda4ddd73d64b4291a60c2fe4a8d71', '[\"*\"]', NULL, NULL, '2022-11-10 02:25:42', '2022-11-10 02:25:42'),
(162, 'App\\Models\\User', 1, 'auth_token', 'e3ba87df45fc11554f5a789897e3ac8390ef8b558bee9e6bb080494b0703735b', '[\"*\"]', NULL, NULL, '2022-11-10 02:25:52', '2022-11-10 02:25:52'),
(163, 'App\\Models\\User', 1, 'auth_token', '7df7ae7c249c7bd050a938d474ae6050657a3ea71e11bba9ef16501492399655', '[\"*\"]', NULL, NULL, '2022-11-10 02:29:04', '2022-11-10 02:29:04'),
(164, 'App\\Models\\User', 1, 'auth_token', 'b47a2c3270249b2689016fcc19bfd6354ef88ab9efaa75b7aaf4cd374f4d0169', '[\"*\"]', NULL, NULL, '2022-11-10 02:29:21', '2022-11-10 02:29:21'),
(165, 'App\\Models\\User', 1, 'auth_token', 'e595b5394611dd59f9862bb5b1907590f9eb00b81df788104b6acb563f06566f', '[\"*\"]', NULL, NULL, '2022-11-10 02:30:15', '2022-11-10 02:30:15'),
(166, 'App\\Models\\User', 1, 'auth_token', 'd454f798e2197451ac78e9834e13506ffe62898e751955b4b9523f5cd09996a0', '[\"*\"]', NULL, NULL, '2022-11-10 02:31:06', '2022-11-10 02:31:06'),
(167, 'App\\Models\\User', 1, 'auth_token', '49a61a45bb86a0a991a7e099fea1174c129c8e608585b3b301b68cf040c40792', '[\"*\"]', NULL, NULL, '2022-11-10 02:31:20', '2022-11-10 02:31:20'),
(168, 'App\\Models\\User', 1, 'auth_token', '62f4cb673de4794bb922a920d71f2ea43a566a209a9533a15de6e95ef43ce2a5', '[\"*\"]', NULL, NULL, '2022-11-10 02:31:28', '2022-11-10 02:31:28'),
(169, 'App\\Models\\User', 1, 'auth_token', 'fa74c0aecc2d001156da1ff3ea438ae04d003df403a2fe75b63029f606fc5499', '[\"*\"]', NULL, NULL, '2022-11-10 02:32:39', '2022-11-10 02:32:39'),
(170, 'App\\Models\\User', 1, 'auth_token', '8863ed988c5eaf106724fd9472a8cb0cc5ba6599f82e0f0eb8620f60dea80a4e', '[\"*\"]', NULL, NULL, '2022-11-10 02:32:45', '2022-11-10 02:32:45'),
(171, 'App\\Models\\User', 1, 'auth_token', 'c5ecad685d40a9962875da4696b4a1acbdf67e9c613fe37371a4651f68c946a9', '[\"*\"]', NULL, NULL, '2022-11-10 02:32:57', '2022-11-10 02:32:57'),
(172, 'App\\Models\\User', 2, 'auth_token', '55811cc515df0eb1a686c5f5a316d74426d1cc182279dc607337dc5f308ddda5', '[\"*\"]', NULL, NULL, '2022-11-10 02:33:24', '2022-11-10 02:33:24'),
(173, 'App\\Models\\User', 2, 'auth_token', '808f221d1a2caa6a6f37401a6c3b3a53a6de73766524bda9901dc5172cf11022', '[\"*\"]', NULL, NULL, '2022-11-10 02:34:35', '2022-11-10 02:34:35'),
(174, 'App\\Models\\User', 2, 'auth_token', 'c9a7ff26f8c995c403ea9bb63337e7c0ad2b369172ab458e588e6f42627f92d5', '[\"*\"]', NULL, NULL, '2022-11-10 02:35:12', '2022-11-10 02:35:12'),
(175, 'App\\Models\\User', 2, 'auth_token', 'a9f380bb473cb7dce16386857bb7c29dea0f5816a120bd6381eed54f7fd6d7d6', '[\"*\"]', NULL, NULL, '2022-11-10 02:35:27', '2022-11-10 02:35:27'),
(176, 'App\\Models\\User', 2, 'auth_token', 'cbdefaa069b2f4a8090348bffb7b365d4b7d8e8a61be540c981d20e4f485ad58', '[\"*\"]', NULL, NULL, '2022-11-10 02:35:59', '2022-11-10 02:35:59'),
(177, 'App\\Models\\User', 1, 'auth_token', '83e8a1a33a50b8b0f654ac09c96a06e0d2bb723f7f75b02ac3d2fcda1ffdd249', '[\"*\"]', NULL, NULL, '2022-11-10 02:36:59', '2022-11-10 02:36:59'),
(178, 'App\\Models\\User', 2, 'auth_token', 'c8815d5f2e946c314b81fb27af9b05be64884efbcc9294a2ce5ee7796ece54b5', '[\"*\"]', NULL, NULL, '2022-11-10 02:37:29', '2022-11-10 02:37:29'),
(179, 'App\\Models\\User', 1, 'auth_token', 'f45575919ab709e9fee06977c2a468ce836eac05c665a74168874b727fcf555d', '[\"*\"]', NULL, NULL, '2022-11-10 02:37:57', '2022-11-10 02:37:57'),
(180, 'App\\Models\\User', 1, 'auth_token', '21fc97367d59e7b567f3d80d4402b8fd1539c07e6a88ba7acfd613a56f791de6', '[\"*\"]', NULL, NULL, '2022-11-10 02:38:20', '2022-11-10 02:38:20'),
(181, 'App\\Models\\User', 2, 'auth_token', 'e5807fa6272b8a7985d9a8adb6ee979ec282194622a0638e28e511619b33c730', '[\"*\"]', NULL, NULL, '2022-11-10 02:38:25', '2022-11-10 02:38:25'),
(182, 'App\\Models\\User', 1, 'auth_token', '9b215d2c1a4a27825160ccd96b5cdd7d96e512a1dadc6eb77648c1f394f5f3ee', '[\"*\"]', NULL, NULL, '2022-11-10 02:38:59', '2022-11-10 02:38:59'),
(183, 'App\\Models\\User', 1, 'auth_token', '2edfe104fce9d1275ea7680cca552e6bc4e11032251fe19bd502504d90f140a7', '[\"*\"]', NULL, NULL, '2022-11-10 02:39:35', '2022-11-10 02:39:35'),
(184, 'App\\Models\\User', 1, 'auth_token', '1ebb4f113dca7bbbb51be5bcc0afc85d69ad096927e731ac80214c788da3f44b', '[\"*\"]', NULL, NULL, '2022-11-10 02:39:42', '2022-11-10 02:39:42'),
(185, 'App\\Models\\User', 1, 'auth_token', 'b8de319a7b98d169feb2b8f705be54ed8c69390baceed1335d2d764d690ca6a4', '[\"*\"]', NULL, NULL, '2022-11-10 02:41:30', '2022-11-10 02:41:30'),
(186, 'App\\Models\\User', 1, 'auth_token', 'd663f531c4140f16448ae1e625ffb0045db3f4ff7257236b17b4aaa71d184719', '[\"*\"]', NULL, NULL, '2022-11-10 02:43:47', '2022-11-10 02:43:47'),
(187, 'App\\Models\\User', 1, 'auth_token', 'cc0d2c9acc901eaac91d8ccf7ac5f0ffe955c1a118cfc78d7680d4a661df78ec', '[\"*\"]', NULL, NULL, '2022-11-10 02:44:35', '2022-11-10 02:44:35'),
(188, 'App\\Models\\User', 1, 'auth_token', 'e1b878b636b59325cf90176a2e9ee6da5742f4a6bf07a560556e4dd348083ff6', '[\"*\"]', NULL, NULL, '2022-11-10 02:54:52', '2022-11-10 02:54:52'),
(189, 'App\\Models\\User', 1, 'auth_token', 'f015381188cdac3f46cceba211131968b27ddc2f4cf9f03085a9fc21147ec374', '[\"*\"]', NULL, NULL, '2022-11-10 02:55:13', '2022-11-10 02:55:13'),
(190, 'App\\Models\\User', 1, 'auth_token', 'c6e98136e73103836220fe030cf726b2f9ef49746015c122a50b44bb881d6eba', '[\"*\"]', NULL, NULL, '2022-11-10 02:55:55', '2022-11-10 02:55:55'),
(191, 'App\\Models\\User', 1, 'auth_token', '09ae81e3a20a853e62bad5c9a2ced52c38d6bdf6118960013bdc36739e9cb3db', '[\"*\"]', NULL, NULL, '2022-11-10 02:56:16', '2022-11-10 02:56:16'),
(192, 'App\\Models\\User', 1, 'auth_token', '8bc64b1b37f17c915c258490eeae6c8826ae71d40ed0e3d48e21a37d30efc6f0', '[\"*\"]', NULL, NULL, '2022-11-10 02:56:45', '2022-11-10 02:56:45'),
(193, 'App\\Models\\User', 1, 'auth_token', '865195c152802bed6aaf2694ec5f7779654906427b8838623048de1b0f668669', '[\"*\"]', NULL, NULL, '2022-11-10 02:57:01', '2022-11-10 02:57:01'),
(194, 'App\\Models\\User', 1, 'auth_token', '11350ea2b0480dec0ee4317e82cb7da10d6673d3132a612b520980bd0e61732e', '[\"*\"]', NULL, NULL, '2022-11-10 02:57:24', '2022-11-10 02:57:24'),
(195, 'App\\Models\\User', 1, 'auth_token', 'd526fbbb3bb102114ca912e8ae176c295939c17f6b53f96d05720575608f0f4f', '[\"*\"]', NULL, NULL, '2022-11-10 02:57:25', '2022-11-10 02:57:25'),
(196, 'App\\Models\\User', 1, 'auth_token', '760a388336b9d92255b6910be36155b73943151725a16ce68a78b4cb45b54ef5', '[\"*\"]', NULL, NULL, '2022-11-10 02:57:32', '2022-11-10 02:57:32'),
(197, 'App\\Models\\User', 1, 'auth_token', '48dc9d06f2e183febc475240dab3d728cc8fac4707347b04ad33a46c4e3df1f6', '[\"*\"]', NULL, NULL, '2022-11-10 02:57:41', '2022-11-10 02:57:41'),
(198, 'App\\Models\\User', 1, 'auth_token', 'c5f269806d8d5b740b08b618db640146bb520e7b183b84309ad6ca2f951782f7', '[\"*\"]', NULL, NULL, '2022-11-10 02:58:18', '2022-11-10 02:58:18'),
(199, 'App\\Models\\User', 1, 'auth_token', 'ca2b9d74edc586db3933f6c84b5bdf22174ad300256ee20d84b202eba006cda9', '[\"*\"]', NULL, NULL, '2022-11-10 03:00:37', '2022-11-10 03:00:37'),
(200, 'App\\Models\\User', 1, 'auth_token', '261619d312ccc57d5233116ccc0d2c438d3a592ac1591d512929d5e2655e0df6', '[\"*\"]', NULL, NULL, '2022-11-10 03:01:39', '2022-11-10 03:01:39'),
(201, 'App\\Models\\User', 1, 'auth_token', '5eee588399dec4e35efd9df528b1db6f60018a2de38fe622f888748e1d2bd5a6', '[\"*\"]', NULL, NULL, '2022-11-10 03:01:50', '2022-11-10 03:01:50'),
(202, 'App\\Models\\User', 1, 'auth_token', '5042a7d6fe1d0b42356018f6b12b18adfa81b73875b424f3af88436771d40b93', '[\"*\"]', NULL, NULL, '2022-11-10 03:10:40', '2022-11-10 03:10:40'),
(203, 'App\\Models\\User', 1, 'auth_token', '664e72130893c9a9faf7728fcbefdfd9e1077a4befee7d15181de86c3d770a07', '[\"*\"]', NULL, NULL, '2022-11-10 03:11:05', '2022-11-10 03:11:05'),
(204, 'App\\Models\\User', 1, 'auth_token', '9d6619a3d2d0063f62582fd21cfc542c5ed0ebc77cf680c756dd35c1b7e2727e', '[\"*\"]', NULL, NULL, '2022-11-10 03:11:26', '2022-11-10 03:11:26'),
(205, 'App\\Models\\User', 2, 'auth_token', '55d0acd372c033dadad5d159a23e21fd1c45801e0c6bd374b39de9597b039971', '[\"*\"]', NULL, NULL, '2022-11-10 03:11:44', '2022-11-10 03:11:44'),
(206, 'App\\Models\\User', 1, 'auth_token', '5fcac271260807b520a344ddf392132be67e4c222839ed5361c387214a411918', '[\"*\"]', NULL, NULL, '2022-11-10 03:11:53', '2022-11-10 03:11:53'),
(207, 'App\\Models\\User', 1, 'auth_token', 'c65b7cfce4a83c18cc8f2d6b64d05ad0192f809811832121342bc34e1ad38fc5', '[\"*\"]', NULL, NULL, '2022-11-10 03:12:27', '2022-11-10 03:12:27'),
(208, 'App\\Models\\User', 1, 'auth_token', '4ef136878859067b28fdacec812d01e852e27fadac22728f9184df214f8e98ac', '[\"*\"]', NULL, NULL, '2022-11-10 03:15:39', '2022-11-10 03:15:39'),
(209, 'App\\Models\\User', 1, 'auth_token', '39c24d01c6f39f25c62ab96376bfc44e1419ad01b127a1311d603f3c99a18963', '[\"*\"]', NULL, NULL, '2022-11-10 03:29:43', '2022-11-10 03:29:43'),
(210, 'App\\Models\\User', 1, 'auth_token', '7cfc5b04267f3ef580757d05d3689e8fc0afb91ce2d174234bde9da81a083445', '[\"*\"]', NULL, NULL, '2022-11-10 03:30:16', '2022-11-10 03:30:16'),
(211, 'App\\Models\\User', 1, 'auth_token', '8ed5ecc8cedd6421b139e25f162d2a560767fd85e457de94076ee34e80218f10', '[\"*\"]', NULL, NULL, '2022-11-10 03:30:37', '2022-11-10 03:30:37'),
(212, 'App\\Models\\User', 1, 'auth_token', 'fc0253f1cb1e379f69e00e472a755aacbe1cbbbe25f177bc691eeb4dfe531703', '[\"*\"]', NULL, NULL, '2022-11-10 03:31:11', '2022-11-10 03:31:11'),
(213, 'App\\Models\\User', 1, 'auth_token', 'd9477b835494ab50e8cd6e1098980a3bbc857c0362ebd5594c361e05b34e6ffc', '[\"*\"]', NULL, NULL, '2022-11-10 03:31:28', '2022-11-10 03:31:28'),
(214, 'App\\Models\\User', 1, 'auth_token', 'd03f51feb9c21e0ced78c8186eeb9a92d7b4421219d0703c4733270b71f559c5', '[\"*\"]', NULL, NULL, '2022-11-10 03:31:43', '2022-11-10 03:31:43'),
(215, 'App\\Models\\User', 1, 'auth_token', '4a28f25182c59ce911d91dc0383e8d322d1168aa382765889158b6ca0835d6a3', '[\"*\"]', NULL, NULL, '2022-11-10 03:32:18', '2022-11-10 03:32:18'),
(216, 'App\\Models\\User', 1, 'auth_token', '492616d0a370416fd103acf92666c385669eabc2ae03797e4acc821c4e8fd2c5', '[\"*\"]', NULL, NULL, '2022-11-10 03:32:30', '2022-11-10 03:32:30'),
(217, 'App\\Models\\User', 1, 'auth_token', 'd6121a015422761177315881a8adea4d4f81e3e9dfdee70b3a7237bd226148c0', '[\"*\"]', NULL, NULL, '2022-11-10 03:32:36', '2022-11-10 03:32:36'),
(218, 'App\\Models\\User', 1, 'auth_token', '46aded290fedfb78fd20359e5afa0d328b5aab08a04c58b47cb0f9d64ba6224c', '[\"*\"]', NULL, NULL, '2022-11-10 03:32:54', '2022-11-10 03:32:54'),
(219, 'App\\Models\\User', 1, 'auth_token', '551e8f0fbd53c9cf39c33ac714989eeba473e59c911928b39ae5deda2f77efaf', '[\"*\"]', NULL, NULL, '2022-11-10 03:33:02', '2022-11-10 03:33:02'),
(220, 'App\\Models\\User', 1, 'auth_token', '885777e3fb4a6eda1fef2f92611b280534bf9ec178d81c8d7a0f35945f1419c0', '[\"*\"]', NULL, NULL, '2022-11-10 03:33:13', '2022-11-10 03:33:13'),
(221, 'App\\Models\\User', 1, 'auth_token', '13d168ad820980eab671d5b68060aee6a1cccca4046acdc8decc803216fb63e7', '[\"*\"]', NULL, NULL, '2022-11-10 03:33:35', '2022-11-10 03:33:35'),
(222, 'App\\Models\\User', 1, 'auth_token', 'af2fede896d240bc671be3b8e71cbda5eec7505bef3a4586b47889cc868f8e85', '[\"*\"]', NULL, NULL, '2022-11-10 03:33:52', '2022-11-10 03:33:52'),
(223, 'App\\Models\\User', 1, 'auth_token', 'f3a6c2a9dfaeab4d5eee5783b661b1db539f8c86bacd15c0792396173e763010', '[\"*\"]', NULL, NULL, '2022-11-10 03:33:58', '2022-11-10 03:33:58'),
(224, 'App\\Models\\User', 1, 'auth_token', '320c52d89d36d3a0d6c21583e900825bdaf617e76e607606e1095bdc4dc291c8', '[\"*\"]', NULL, NULL, '2022-11-10 03:34:23', '2022-11-10 03:34:23'),
(225, 'App\\Models\\User', 1, 'auth_token', 'fcd5a4a19f56cb43967522218ac6a573cfdd4069c46cd05115193c2163f58036', '[\"*\"]', NULL, NULL, '2022-11-10 03:34:38', '2022-11-10 03:34:38'),
(226, 'App\\Models\\User', 2, 'auth_token', '4584adfb5dd29df617997c33ae68b1e48a5dbe55f87f95f7fa90896aac200ae5', '[\"*\"]', NULL, NULL, '2022-11-10 03:34:48', '2022-11-10 03:34:48'),
(227, 'App\\Models\\User', 1, 'auth_token', 'a5ee2932d0e861f9b6226e3e32f99ef419529868e8aba4b960a7c54d752ec030', '[\"*\"]', NULL, NULL, '2022-11-10 05:37:04', '2022-11-10 05:37:04'),
(228, 'App\\Models\\User', 2, 'auth_token', '54b784250d068f9fad23e7116cf56224cdd5ec3553cd04ed0d6659e1f74707ad', '[\"*\"]', NULL, NULL, '2022-11-10 05:48:12', '2022-11-10 05:48:12'),
(229, 'App\\Models\\User', 1, 'auth_token', '6d56b67042fe623397e2c52e04ea1b5c5380bbb30ed86d93540cc97fe27c60dd', '[\"*\"]', NULL, NULL, '2022-11-10 05:48:26', '2022-11-10 05:48:26'),
(230, 'App\\Models\\User', 1, 'auth_token', '6b236aa9901fa171a13c92659d99f68dd749c3593c662687c76cd3b81fca8ee4', '[\"*\"]', NULL, NULL, '2022-11-10 05:48:44', '2022-11-10 05:48:44'),
(231, 'App\\Models\\User', 1, 'auth_token', 'a2d164e8b6d3d2f4311afc2590940a85d4336083f3274fce9f6ef71916307b22', '[\"*\"]', NULL, NULL, '2022-11-10 05:48:59', '2022-11-10 05:48:59'),
(232, 'App\\Models\\User', 1, 'auth_token', '050295ffe7a821cb90cca5cf8224115e81a3260f94e00c231f7ac6614cd0d514', '[\"*\"]', NULL, NULL, '2022-11-10 05:49:21', '2022-11-10 05:49:21'),
(233, 'App\\Models\\User', 1, 'auth_token', '9fff7e7b0c5cd9d5841e0e998d8715de7302ac503d586d608a6705ff487a726c', '[\"*\"]', NULL, NULL, '2022-11-10 05:52:45', '2022-11-10 05:52:45'),
(234, 'App\\Models\\User', 1, 'auth_token', '7480eaf0853e11bcc1bd6dbdb5b326dd2168c63ed2989c6a8e0280791f7626b9', '[\"*\"]', NULL, NULL, '2022-11-10 05:52:59', '2022-11-10 05:52:59'),
(235, 'App\\Models\\User', 2, 'auth_token', 'c9b318086668e48bddc83a03d639733310e180ae17f5e7f9032d9b6399ac4d5b', '[\"*\"]', NULL, NULL, '2022-11-10 05:53:25', '2022-11-10 05:53:25'),
(236, 'App\\Models\\User', 1, 'auth_token', 'a515fa3e5950889b3fee2a4a965e0e6c40066eeda361d99aa86bf63e033279dd', '[\"*\"]', NULL, NULL, '2022-11-10 05:54:50', '2022-11-10 05:54:50'),
(237, 'App\\Models\\User', 1, 'auth_token', 'bb94746e0e9132d136fd2e2fd7ed755b59527beeacef18565b097d31d3f46d7d', '[\"*\"]', NULL, NULL, '2022-11-10 05:55:11', '2022-11-10 05:55:11'),
(238, 'App\\Models\\User', 1, 'auth_token', '3c37524a34d7541fec9cda31053bd2024eaddbac237fa63c8474b115fb08f5ba', '[\"*\"]', NULL, NULL, '2022-11-10 05:55:34', '2022-11-10 05:55:34'),
(239, 'App\\Models\\User', 1, 'auth_token', '986afe92727541abd207c87f3f87ab1fbe9d41ec17cddf638ce3ba676a31a379', '[\"*\"]', NULL, NULL, '2022-11-10 05:57:31', '2022-11-10 05:57:31'),
(240, 'App\\Models\\User', 1, 'auth_token', '06c411eea4eb56187199bd8d5db97ba27744405ccab6f62d56c4983bf4c90a5a', '[\"*\"]', NULL, NULL, '2022-11-10 06:04:44', '2022-11-10 06:04:44'),
(241, 'App\\Models\\User', 1, 'auth_token', '399fad13ba419e3710250e82ec4b11213aca68147d8ebdfdfa8f1471324d0efd', '[\"*\"]', NULL, NULL, '2022-11-10 06:09:09', '2022-11-10 06:09:09'),
(242, 'App\\Models\\User', 1, 'auth_token', '75369aa289521afa7bdbac13a1f2ae2e5e337a93788e1439ec51bcce52c92da0', '[\"*\"]', NULL, NULL, '2022-11-10 06:10:50', '2022-11-10 06:10:50'),
(243, 'App\\Models\\User', 1, 'auth_token', '165bb5add65e5dc9dba954612302d7adb6ae0fb494e34d62c833df61331574e7', '[\"*\"]', NULL, NULL, '2022-11-10 06:13:03', '2022-11-10 06:13:03'),
(244, 'App\\Models\\User', 1, 'auth_token', 'b1463d4803ae2172ec744722a2c3630fc8c6330aea37b9170a781bbc2ab1bf46', '[\"*\"]', NULL, NULL, '2022-11-10 06:13:49', '2022-11-10 06:13:49'),
(245, 'App\\Models\\User', 1, 'auth_token', '02b612e60da376bf881d1c033b38f45f749d3f072c9e7cc025ac0a2467ccae2e', '[\"*\"]', NULL, NULL, '2022-11-10 06:15:21', '2022-11-10 06:15:21'),
(246, 'App\\Models\\User', 1, 'auth_token', 'd2a0686f11f0de0f73a7fa62af8098e2528d2e1f42c81d613dd382ebc02bcb28', '[\"*\"]', NULL, NULL, '2022-11-10 06:15:51', '2022-11-10 06:15:51'),
(247, 'App\\Models\\User', 1, 'auth_token', 'bcaa396d65fd4cccdd31225319b2959404478669d8a4074e2948d57f2449ba8c', '[\"*\"]', NULL, NULL, '2022-11-10 06:17:45', '2022-11-10 06:17:45'),
(248, 'App\\Models\\User', 1, 'auth_token', '850a75d86a5a5ef05e64fcff53309e7172fd54de2566a45d5d5b4007934d5de8', '[\"*\"]', NULL, NULL, '2022-11-10 06:22:08', '2022-11-10 06:22:08'),
(249, 'App\\Models\\User', 1, 'auth_token', 'cd6ef2dd5e5d4aa3f5bf7650441b1f91db63a9b0104366fc721e19bc629f03d2', '[\"*\"]', NULL, NULL, '2022-11-10 06:22:49', '2022-11-10 06:22:49'),
(250, 'App\\Models\\User', 1, 'auth_token', '4c8fda20d2252c7415c18b6ec07561964e07cb204979eef8965c8a5f7e25a0af', '[\"*\"]', NULL, NULL, '2022-11-10 11:03:38', '2022-11-10 11:03:38'),
(251, 'App\\Models\\User', 1, 'auth_token', '1e3299c0a8d4e5a6bbb586a7a845254f39cb7aeec19ecbde5e2f69befe2ea89b', '[\"*\"]', NULL, NULL, '2022-11-10 21:27:29', '2022-11-10 21:27:29'),
(252, 'App\\Models\\User', 1, 'auth_token', '69226f26c30b3cb6182d065f6860b362dea1ebc398d9265c6d72361072a9eed8', '[\"*\"]', NULL, NULL, '2022-11-11 07:14:46', '2022-11-11 07:14:46'),
(253, 'App\\Models\\User', 1, 'auth_token', '8ad20c89d151ba42a5db0aafbc82a6f67b0008ecb3d3d456b233c54cbcc3e090', '[\"*\"]', NULL, NULL, '2022-11-11 11:59:37', '2022-11-11 11:59:37'),
(254, 'App\\Models\\User', 1, 'auth_token', '8acb4b85a572e42e2b3bc7da757d5dfcb72110ab37b08afd0052fb2b86ad4216', '[\"*\"]', NULL, NULL, '2022-11-11 19:51:58', '2022-11-11 19:51:58'),
(255, 'App\\Models\\User', 1, 'auth_token', 'a48c9eed42133ad942b9f9de2e3cfe22be01d80a77f32d9884867575eb82e7b7', '[\"*\"]', NULL, NULL, '2022-11-11 19:53:00', '2022-11-11 19:53:00'),
(256, 'App\\Models\\User', 1, 'auth_token', '4eb2711c20c8695b5895ec36381fecc1b5134b234a92c3e38f35acec62e28f80', '[\"*\"]', NULL, NULL, '2022-11-11 19:53:33', '2022-11-11 19:53:33'),
(257, 'App\\Models\\User', 1, 'auth_token', '4736eacfe8651a1d7e598e29dd8ca2dae1a77fc33ff2c6eea1a2077697503176', '[\"*\"]', NULL, NULL, '2022-11-12 02:28:18', '2022-11-12 02:28:18'),
(258, 'App\\Models\\User', 2, 'auth_token', '57981a5873814cdc341b57ae03b1ed23f17529d20a199c583bcb869f3d0d8c23', '[\"*\"]', NULL, NULL, '2022-11-15 19:01:12', '2022-11-15 19:01:12'),
(259, 'App\\Models\\User', 1, 'auth_token', '5897745d4a150d0644e971d4843a8c7185ea22aca5d58535570f2c447e4f12e5', '[\"*\"]', NULL, NULL, '2022-11-15 19:09:10', '2022-11-15 19:09:10'),
(260, 'App\\Models\\User', 1, 'auth_token', '3982f6f4477c372b49d8d65cbc8fe055987d1787cbad5d7e8efdea2e2eaea225', '[\"*\"]', NULL, NULL, '2022-11-15 19:09:25', '2022-11-15 19:09:25'),
(261, 'App\\Models\\User', 1, 'auth_token', '48f1c2b58a2310fe8ccb827d1e909339cb653d5bf93ee06559e3cfc70e9b3a47', '[\"*\"]', NULL, NULL, '2022-11-15 19:09:59', '2022-11-15 19:09:59'),
(262, 'App\\Models\\User', 1, 'auth_token', 'f8df2cbb3af8e5c3a2a0ac35f8b7a8404d5e0a85dae14176b96e6357fdd0711e', '[\"*\"]', NULL, NULL, '2022-11-15 21:54:22', '2022-11-15 21:54:22'),
(263, 'App\\Models\\User', 1, 'auth_token', 'd344729abb23d5f52f5b7b01cdbdbd531482e0764c161ea7eda4138aa75849bb', '[\"*\"]', NULL, NULL, '2022-11-15 21:55:51', '2022-11-15 21:55:51'),
(264, 'App\\Models\\User', 1, 'auth_token', '7de32bb3aa73d55981320b8047fb1a1c04a7599bfdab73865859f2871284bb24', '[\"*\"]', NULL, NULL, '2022-11-15 21:56:00', '2022-11-15 21:56:00'),
(265, 'App\\Models\\User', 1, 'auth_token', '9c2bedca908612649f130f9154be3a794ddd074da8c6dd71e6b8f878c986b76b', '[\"*\"]', NULL, NULL, '2022-11-15 21:57:59', '2022-11-15 21:57:59'),
(266, 'App\\Models\\User', 1, 'auth_token', 'bfda2d23fcc7c5638299e0946bb46e0f04bb6e6f2d0f75cf1dacc9bf0db5cf65', '[\"*\"]', NULL, NULL, '2022-11-15 21:58:01', '2022-11-15 21:58:01'),
(267, 'App\\Models\\User', 1, 'auth_token', 'd58053086c73cf7d38065607042d78018c926e0444417afd571c47a487ff00da', '[\"*\"]', NULL, NULL, '2022-11-15 21:58:02', '2022-11-15 21:58:02'),
(268, 'App\\Models\\User', 1, 'auth_token', '8e5d465b3d03ce250dff1d1b21815f7e613f45ee059a3fa3de67e46249e7ffad', '[\"*\"]', NULL, NULL, '2022-11-15 21:58:36', '2022-11-15 21:58:36'),
(269, 'App\\Models\\User', 1, 'auth_token', '431b2a601a0f478963b06dba5f79696a4c1338300f7fbb4b0a76cd18f20120dc', '[\"*\"]', NULL, NULL, '2022-11-15 21:59:17', '2022-11-15 21:59:17'),
(270, 'App\\Models\\User', 1, 'auth_token', '716bc526a3477fe6e5a5ec3ac5e8601edf06c8435b9d7d07785dd678f5613685', '[\"*\"]', NULL, NULL, '2022-11-15 22:00:01', '2022-11-15 22:00:01'),
(271, 'App\\Models\\User', 1, 'auth_token', '893cf8e124dd198de20f9e58971b34483d890d6d5118ec03f1b10b5f72661e6b', '[\"*\"]', NULL, NULL, '2022-11-15 22:00:50', '2022-11-15 22:00:50'),
(272, 'App\\Models\\User', 1, 'auth_token', 'f60319a473b85490b085b19743bbf17f32253d660c7e69169bb102b2a9b42499', '[\"*\"]', NULL, NULL, '2022-11-15 22:26:03', '2022-11-15 22:26:03'),
(273, 'App\\Models\\User', 1, 'auth_token', '64f708b8b4579373bc1aeb5728d7af663910642e91f545f4833552dd7e6103c4', '[\"*\"]', NULL, NULL, '2022-11-15 22:31:57', '2022-11-15 22:31:57'),
(274, 'App\\Models\\User', 1, 'auth_token', '66cafe9b338ebead56221f976f8ae3d8fb48e672522917ba9c37ab37588cbf38', '[\"*\"]', NULL, NULL, '2022-11-15 22:32:01', '2022-11-15 22:32:01'),
(275, 'App\\Models\\User', 1, 'auth_token', 'd9bd744c02dfacf32d18b74e72129e1cb4459d910fa0d6aa40fa685e282c44b0', '[\"*\"]', NULL, NULL, '2022-11-15 22:32:13', '2022-11-15 22:32:13'),
(276, 'App\\Models\\User', 1, 'auth_token', '695156aeff218daeb11c8167e514fd007881a4381a174cf8e28d7c92d5b5615b', '[\"*\"]', NULL, NULL, '2022-11-16 22:16:48', '2022-11-16 22:16:48'),
(277, 'App\\Models\\User', 1, 'auth_token', 'c7017c567bcd1e0c5feb74486f7aa20648056b1e1b7de95981313cb85d86fab4', '[\"*\"]', NULL, NULL, '2022-11-17 00:54:37', '2022-11-17 00:54:37');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(278, 'App\\Models\\User', 1, 'auth_token', '782ec52ba0bed6dfb89a681f9dd39a59fb7572313129a396d3d778dbfd1371cd', '[\"*\"]', NULL, NULL, '2022-11-17 10:13:01', '2022-11-17 10:13:01'),
(279, 'App\\Models\\User', 1, 'auth_token', 'c356a736e75f0f3b9e7771305317f3721b52f52f027dff27b85da2e1996be1e3', '[\"*\"]', NULL, NULL, '2022-11-17 10:16:35', '2022-11-17 10:16:35'),
(280, 'App\\Models\\User', 1, 'auth_token', '629dbac78edee3bb478f2c3db05e141f0beeb79de229bf4c3707c80a9273ce76', '[\"*\"]', NULL, NULL, '2022-11-17 20:21:28', '2022-11-17 20:21:28'),
(281, 'App\\Models\\User', 1, 'auth_token', '341dff3c5b12821e146783bb004b2364e0e6766f7f52f2713493266fa3532fcf', '[\"*\"]', NULL, NULL, '2022-11-18 04:29:56', '2022-11-18 04:29:56'),
(282, 'App\\Models\\User', 1, 'auth_token', '912f232540a96ddb36ada6da2093e34e2798cc84a4196e2095a732c8aa01a2b0', '[\"*\"]', NULL, NULL, '2022-11-18 04:36:03', '2022-11-18 04:36:03'),
(283, 'App\\Models\\User', 1, 'auth_token', 'e4a8472d1073815a39e0410e1ba3cc7c76c1424c79eed989bfb369722b025799', '[\"*\"]', NULL, NULL, '2022-11-18 07:59:51', '2022-11-18 07:59:51'),
(284, 'App\\Models\\User', 1, 'auth_token', 'ed9c810deb7f6445b33f89733898e2664071c2e26f6b69dcb0caf3bd6dceaa1b', '[\"*\"]', NULL, NULL, '2022-11-18 11:10:31', '2022-11-18 11:10:31'),
(285, 'App\\Models\\User', 1, 'auth_token', '3f0a1103470a95974267b6509240fe7cadff529a6796ecbe720b4ea0d5edf625', '[\"*\"]', NULL, NULL, '2022-11-19 07:09:13', '2022-11-19 07:09:13'),
(286, 'App\\Models\\User', 1, 'auth_token', 'bebbb20a5449bf4a854eddaa0bf8d3bf2128b215cca3d2038f1fb1379c9b992f', '[\"*\"]', NULL, NULL, '2022-11-19 21:31:42', '2022-11-19 21:31:42'),
(287, 'App\\Models\\User', 2, 'auth_token', 'b3b51dbca404e98aca3ad0724a862343bad723e4520148432d7502bd16f87a55', '[\"*\"]', NULL, NULL, '2022-11-19 21:34:18', '2022-11-19 21:34:18'),
(288, 'App\\Models\\User', 2, 'auth_token', '4f84c5e714120043d6b23d9fcfd4579e635cc5ca82cb4c35a39dde6312c38904', '[\"*\"]', NULL, NULL, '2022-11-19 21:37:15', '2022-11-19 21:37:15'),
(289, 'App\\Models\\User', 1, 'auth_token', '2f6e82ddaa4c47b5a6cb830da0fb3190b4f2bd6cbf2248e5f68ac7fcf82c347d', '[\"*\"]', NULL, NULL, '2022-11-19 21:37:24', '2022-11-19 21:37:24'),
(290, 'App\\Models\\User', 1, 'auth_token', '7e840dac4b0fe0e06e595ea89f0a35db040b103fc517fae91ab3f44da4bc780f', '[\"*\"]', NULL, NULL, '2022-11-20 09:05:39', '2022-11-20 09:05:39'),
(291, 'App\\Models\\User', 1, 'auth_token', '526feb2a096127db4fa418a2259f7d221e6b0c506189ef4e2a407fe849201d60', '[\"*\"]', NULL, NULL, '2022-11-21 22:02:36', '2022-11-21 22:02:36'),
(292, 'App\\Models\\User', 1, 'auth_token', '70192da7b85851e6068d6494a0b9819e4bd714ba5cbe43021f66e5add035760f', '[\"*\"]', NULL, NULL, '2022-11-22 04:54:59', '2022-11-22 04:54:59'),
(293, 'App\\Models\\User', 1, 'auth_token', '13801774164ae713fe013f3e21ad77945803b772e50144ee0148667e37086c1e', '[\"*\"]', NULL, NULL, '2022-11-22 04:54:59', '2022-11-22 04:54:59'),
(294, 'App\\Models\\User', 1, 'auth_token', '280bd616f1c5619f053368b5f35d07922c16cf66e6aad44470b9e4ad01d7bd3b', '[\"*\"]', NULL, NULL, '2022-11-22 09:15:16', '2022-11-22 09:15:16'),
(295, 'App\\Models\\User', 1, 'auth_token', '8b393f94b312f5d90732b6e3bcfd34483cde0217eb571fec3ff7425fa7718c21', '[\"*\"]', NULL, NULL, '2022-11-22 09:17:04', '2022-11-22 09:17:04'),
(296, 'App\\Models\\User', 1, 'auth_token', 'c4027b29efb51963288bda3c0f450041683c7b9b881238af616e52b3e63ab04c', '[\"*\"]', NULL, NULL, '2022-11-22 11:22:33', '2022-11-22 11:22:33'),
(297, 'App\\Models\\User', 1, 'auth_token', '3ea3d9956d11b6bebad198c9da6f80e433af1873324a659e61a54cefdf229ff8', '[\"*\"]', NULL, NULL, '2022-11-22 11:23:42', '2022-11-22 11:23:42'),
(298, 'App\\Models\\User', 1, 'auth_token', '8f06de9ad9a5da91330ebeae651dbd54db67e8323397fb53a11e65b59dd7f4be', '[\"*\"]', NULL, NULL, '2022-11-22 11:23:58', '2022-11-22 11:23:58'),
(299, 'App\\Models\\User', 1, 'auth_token', '2f2e91e196d5b8d0af56f43603719a182fdcf2ce7f34624e7f2d136d3b73ecd6', '[\"*\"]', NULL, NULL, '2022-11-23 00:59:03', '2022-11-23 00:59:03'),
(300, 'App\\Models\\User', 1, 'auth_token', 'cdfdb9aea5f9af495be83e87c1b1b4b65658de3ede94b871c08b52e5ad398409', '[\"*\"]', NULL, NULL, '2022-11-23 01:01:56', '2022-11-23 01:01:56'),
(301, 'App\\Models\\User', 1, 'auth_token', '01b272634d6fd17ba6c123ffcf1c352f6ed09c78ca2f2c89ebbbd9bcd2d9b49c', '[\"*\"]', NULL, NULL, '2022-11-23 01:18:31', '2022-11-23 01:18:31'),
(302, 'App\\Models\\User', 1, 'auth_token', '127d75f31d8826ba76e0e65a401a423b43c8c9305da0d778a31f3f6d42697866', '[\"*\"]', NULL, NULL, '2022-11-23 03:24:58', '2022-11-23 03:24:58'),
(303, 'App\\Models\\User', 1, 'auth_token', '109fdd355875b7128ea83738c39945803e3a4c3a14289ee56bf9476f33454448', '[\"*\"]', NULL, NULL, '2022-11-23 03:25:34', '2022-11-23 03:25:34'),
(304, 'App\\Models\\User', 1, 'auth_token', '9ef0990534ca5a844e329ab430a470dae61355ff59e27be310468acd82796300', '[\"*\"]', NULL, NULL, '2022-11-23 03:25:57', '2022-11-23 03:25:57'),
(305, 'App\\Models\\User', 1, 'auth_token', 'fccb501e49746a56e1a63366f3adf761ccf461c43ba16a191f736de85eb4689f', '[\"*\"]', NULL, NULL, '2022-11-23 03:28:05', '2022-11-23 03:28:05'),
(306, 'App\\Models\\User', 1, 'auth_token', 'ff0f11b0d70586c83ecc10edac97babcfd523ec192cfd1a70607a2ee1c6ed27b', '[\"*\"]', NULL, NULL, '2022-11-23 03:31:01', '2022-11-23 03:31:01'),
(307, 'App\\Models\\User', 1, 'auth_token', '1966e4c2f57ef04845e0e2ce8a41a78d4642a3e90fbd158f46a9b0d4a6df6cb0', '[\"*\"]', NULL, NULL, '2022-11-23 03:32:01', '2022-11-23 03:32:01'),
(308, 'App\\Models\\User', 1, 'auth_token', '81ca052420be8a530fc54b1b60ee79a117b7f37f7342bf461e193893e70f0efe', '[\"*\"]', NULL, NULL, '2022-11-23 03:39:16', '2022-11-23 03:39:16'),
(309, 'App\\Models\\User', 1, 'auth_token', '01e087cb85235afdc0f036432e7e116893847a35f2fdba7adb47c8eacf270113', '[\"*\"]', NULL, NULL, '2022-11-23 03:40:26', '2022-11-23 03:40:26'),
(310, 'App\\Models\\User', 1, 'auth_token', '34da3ca4f12b357b779bc07917e6409ebb276bf91b7f51e3898303e1983d1545', '[\"*\"]', NULL, NULL, '2022-11-23 03:41:10', '2022-11-23 03:41:10'),
(311, 'App\\Models\\User', 1, 'auth_token', 'bc03132eb57ce1286f95e9232992d9999630a25b438a0f350cdd63dfdbde0045', '[\"*\"]', NULL, NULL, '2022-11-23 03:44:20', '2022-11-23 03:44:20'),
(312, 'App\\Models\\User', 1, 'auth_token', '0552b85cfaf87b2941f8d3a205cd83fdb8fbc7419bbcdbbd63400c93f7b6d0bd', '[\"*\"]', NULL, NULL, '2022-11-23 03:44:57', '2022-11-23 03:44:57'),
(313, 'App\\Models\\User', 1, 'auth_token', 'ebe96308efc85be83b6d4b1b0a97577d965e84059e3f3d549228f92188c1680c', '[\"*\"]', NULL, NULL, '2022-11-23 04:22:02', '2022-11-23 04:22:02'),
(314, 'App\\Models\\User', 1, 'auth_token', '1c5c848c66f974c7929aff67afd995f1a06c3943765be4ffa164ac9e3d3a55fb', '[\"*\"]', NULL, NULL, '2022-11-23 06:28:26', '2022-11-23 06:28:26'),
(315, 'App\\Models\\User', 7, 'auth_token', '30c7b8009588bfeb86ab91f85e89f1ea2fe01c7ed6fbedfa1d6c1abeb66e65e7', '[\"*\"]', NULL, NULL, '2022-11-23 07:31:35', '2022-11-23 07:31:35'),
(316, 'App\\Models\\User', 5, 'auth_token', '425ea9088a1831554b7c83f6668ddc91996e75164a279502d215022057900b4b', '[\"*\"]', NULL, NULL, '2022-11-23 07:32:17', '2022-11-23 07:32:17'),
(317, 'App\\Models\\User', 1, 'auth_token', 'b554cd373c8a6d01ac69102e978329de92dac8c215a30f38fbdd18692313ca25', '[\"*\"]', NULL, NULL, '2022-11-23 07:32:33', '2022-11-23 07:32:33'),
(318, 'App\\Models\\User', 5, 'auth_token', '9005675cfd8bf57095043af4439eb54705c8cd730fc72948ac6de895a8a7a7b5', '[\"*\"]', NULL, NULL, '2022-11-23 07:32:42', '2022-11-23 07:32:42'),
(319, 'App\\Models\\User', 1, 'auth_token', '69cf88bd5d6736a80c307f0b9dfdb8149a8e0584db454534e57af6c8411ea3c6', '[\"*\"]', NULL, NULL, '2022-11-23 07:35:49', '2022-11-23 07:35:49'),
(320, 'App\\Models\\User', 1, 'auth_token', 'eef02b4c95241c88766cfb7385517fdd608ee0d953e52fea37be3480d34fff07', '[\"*\"]', NULL, NULL, '2022-12-02 11:22:28', '2022-12-02 11:22:28'),
(321, 'App\\Models\\User', 1, 'auth_token', '23757728e97dd6b836d6f35f35a0d1f7cb263b1931777460a16b2d6ca1dacabd', '[\"*\"]', NULL, NULL, '2022-12-02 11:22:50', '2022-12-02 11:22:50'),
(322, 'App\\Models\\User', 1, 'auth_token', '7fb0f65669435726f28a6e823e9d56162f39b49e3f133405f9ca0758b6ab3307', '[\"*\"]', NULL, NULL, '2022-12-02 11:24:58', '2022-12-02 11:24:58'),
(323, 'App\\Models\\User', 1, 'auth_token', 'f35d45912e6d86b506cded4a321ed977564062ffe90289a4683842755d2ee9af', '[\"*\"]', NULL, NULL, '2022-12-02 11:31:06', '2022-12-02 11:31:06'),
(324, 'App\\Models\\User', 1, 'auth_token', '4a8b2e541f6fc4348bc6264d896afa37e0d921f3b94c1c57eedd15ac4ea933bc', '[\"*\"]', NULL, NULL, '2022-12-02 11:43:33', '2022-12-02 11:43:33'),
(325, 'App\\Models\\User', 1, 'auth_token', '068731a2051b6d1ca8ddf9a5889cef0bdc391f04d36b101c95779cc921c1febe', '[\"*\"]', NULL, NULL, '2022-12-02 11:43:50', '2022-12-02 11:43:50'),
(326, 'App\\Models\\User', 1, 'auth_token', '57fc2e7dbf871366b8ff06f38e76d7637ce6a783877537785974639ce4b232c7', '[\"*\"]', NULL, NULL, '2022-12-02 11:44:49', '2022-12-02 11:44:49'),
(327, 'App\\Models\\User', 1, 'auth_token', 'a628a21f4b40212c832fce250e0b4e9146600a32ce302600c9d2766fe18c7362', '[\"*\"]', NULL, NULL, '2022-12-02 11:45:11', '2022-12-02 11:45:11'),
(328, 'App\\Models\\User', 1, 'auth_token', '05d72980da126461714643fb97054760977fb5418962c2effbceba10d02e5d8a', '[\"*\"]', NULL, NULL, '2022-12-02 11:45:30', '2022-12-02 11:45:30'),
(329, 'App\\Models\\User', 1, 'auth_token', '9406b0fccd0620c12b8af74ef6e86b4189431bfbaeeca8375c20bd471bac03b7', '[\"*\"]', NULL, NULL, '2022-12-02 11:45:35', '2022-12-02 11:45:35'),
(330, 'App\\Models\\User', 1, 'auth_token', 'da6338768653ec6f5816697ca63fddc3fd5ffac98c9fea2c2f1a25f7247b6428', '[\"*\"]', NULL, NULL, '2022-12-02 11:46:15', '2022-12-02 11:46:15'),
(331, 'App\\Models\\User', 1, 'auth_token', '32a72abf9fb9511a99de9276b74c7160c91e9da0436f6dcf7e31e075a437b4af', '[\"*\"]', NULL, NULL, '2022-12-02 11:46:26', '2022-12-02 11:46:26'),
(332, 'App\\Models\\User', 1, 'auth_token', '77c47c8fe959f8b3e81311d486a7f3e445891c2c69cfbc08d477347247c818dc', '[\"*\"]', NULL, NULL, '2022-12-02 11:47:15', '2022-12-02 11:47:15'),
(333, 'App\\Models\\User', 2, 'auth_token', 'f81e2b9a65c2ee929d38e6d12613c08fac30f736d68f7de077fb18050c9d6efb', '[\"*\"]', NULL, NULL, '2022-12-02 11:47:23', '2022-12-02 11:47:23'),
(334, 'App\\Models\\User', 2, 'auth_token', '37db3d20814df29dc217f01fc49803f122109a66bfff0409a599409bcb686b22', '[\"*\"]', NULL, NULL, '2022-12-02 11:47:35', '2022-12-02 11:47:35'),
(335, 'App\\Models\\User', 2, 'auth_token', '9694f9df32282bd5a11e8ee48d78b62ee1856b051b1ee3bb87945888da6f0d48', '[\"*\"]', NULL, NULL, '2022-12-02 11:52:11', '2022-12-02 11:52:11'),
(336, 'App\\Models\\User', 2, 'auth_token', 'ba482867dacc16127b80491f592ac4c5d267421211d4af27ba9757056d92ea55', '[\"*\"]', NULL, NULL, '2022-12-02 11:52:25', '2022-12-02 11:52:25'),
(337, 'App\\Models\\User', 2, 'auth_token', '8416b5aaff9b18af57ab11a2b39c8803aa1e19d8663d708667039f492a245fab', '[\"*\"]', NULL, NULL, '2022-12-02 11:52:57', '2022-12-02 11:52:57'),
(338, 'App\\Models\\User', 2, 'auth_token', '6b1eb4c2eb9b764064ac63db77dd525569809732f17c46f74c90dd2288ec296c', '[\"*\"]', NULL, NULL, '2022-12-02 11:53:37', '2022-12-02 11:53:37'),
(339, 'App\\Models\\User', 2, 'auth_token', '990b613b545717368979cf41de811ee2ac0d2f0e35c9611f3983d56df782551a', '[\"*\"]', NULL, NULL, '2022-12-02 11:54:37', '2022-12-02 11:54:37'),
(340, 'App\\Models\\User', 2, 'auth_token', 'ebf70fd79a3341f6f36907e49f2f649c5de8026e64273d4d9c3bd31906bd98a8', '[\"*\"]', NULL, NULL, '2022-12-02 11:54:43', '2022-12-02 11:54:43'),
(341, 'App\\Models\\User', 1, 'auth_token', '0c7ee825fb301a05e422ec128fe538b90fcced42fd915380372b87a2f50e69e1', '[\"*\"]', NULL, NULL, '2022-12-02 11:55:05', '2022-12-02 11:55:05'),
(342, 'App\\Models\\User', 1, 'auth_token', '5e90d88b62651dedce4f8dfea3fd40689f464704c27f0058d31b369728960ec1', '[\"*\"]', NULL, NULL, '2022-12-02 11:57:26', '2022-12-02 11:57:26'),
(343, 'App\\Models\\User', 1, 'auth_token', '46d2cffc5b209f5fad55abafd7c5edefc82adfc39f7521fde58dc4cb3e3c8200', '[\"*\"]', NULL, NULL, '2022-12-02 11:57:49', '2022-12-02 11:57:49'),
(344, 'App\\Models\\User', 1, 'auth_token', '4f7941420ff6564ffcee50d33cd0440cdc8d251b383fb79cacde7d152aaa96e6', '[\"*\"]', NULL, NULL, '2022-12-02 11:58:01', '2022-12-02 11:58:01'),
(345, 'App\\Models\\User', 1, 'auth_token', 'f03907072c9aaf435e4dc12806c870d4d677239046b4545b727eeb68ac41e309', '[\"*\"]', NULL, NULL, '2022-12-02 11:59:05', '2022-12-02 11:59:05'),
(346, 'App\\Models\\User', 1, 'auth_token', 'adfd4b4d36b8b3c17795771a1150d535da734f34dcd30db8629c2298ebc389ce', '[\"*\"]', NULL, NULL, '2022-12-02 12:01:22', '2022-12-02 12:01:22'),
(347, 'App\\Models\\User', 1, 'auth_token', 'e76ad0dd55e6315c2e57dec18f670a8eb6c19dbb6f533aa09f76b96f311280fd', '[\"*\"]', NULL, NULL, '2022-12-02 12:02:32', '2022-12-02 12:02:32'),
(348, 'App\\Models\\User', 1, 'auth_token', '4184344b1dd3ac739891df7364bac0150678acc99d06efe666527bb1453bc332', '[\"*\"]', NULL, NULL, '2022-12-02 12:02:49', '2022-12-02 12:02:49'),
(349, 'App\\Models\\User', 1, 'auth_token', '5685b40e6eb03f2971234f31492b308134058f881b0fc7d034ee13dd9e3d3cd5', '[\"*\"]', NULL, NULL, '2022-12-02 12:02:58', '2022-12-02 12:02:58'),
(350, 'App\\Models\\User', 1, 'auth_token', '97659b4da70c383a489fff1d7cbaed6f86e164f1e08cf686a52564fe9c8e6a0b', '[\"*\"]', NULL, NULL, '2022-12-02 12:03:28', '2022-12-02 12:03:28'),
(351, 'App\\Models\\User', 1, 'auth_token', '798d86530550927f7af39226e1a7e3590b6b0d7f21c91c017d1a00d85c9786cb', '[\"*\"]', NULL, NULL, '2022-12-02 12:05:01', '2022-12-02 12:05:01'),
(352, 'App\\Models\\User', 1, 'auth_token', 'f9568d0bc2e29540aab4a3888c6e49856aa794296bab551f8d209256dab45290', '[\"*\"]', NULL, NULL, '2022-12-02 12:05:32', '2022-12-02 12:05:32'),
(353, 'App\\Models\\User', 1, 'auth_token', '013013f6eefb7e4fe8019c97e39a8065f9a0b5215c8f9da766559b4956585a4f', '[\"*\"]', NULL, NULL, '2022-12-02 12:16:28', '2022-12-02 12:16:28'),
(354, 'App\\Models\\User', 1, 'auth_token', 'e76f4bcce29c512624d52e46b5ba9b2d851950796492e3cebfc09f908edf9c7e', '[\"*\"]', NULL, NULL, '2022-12-02 12:17:24', '2022-12-02 12:17:24'),
(355, 'App\\Models\\User', 1, 'auth_token', '4a9e40d4f8c74565dcba9f2ba96227c4e89e9a2adb852e88c008481892017fa6', '[\"*\"]', NULL, NULL, '2022-12-02 12:17:46', '2022-12-02 12:17:46'),
(356, 'App\\Models\\User', 1, 'auth_token', 'd73c0dce84f87c5cfd5f6b4de36a244199f0e210cb11457ac9c4d7479b47a19b', '[\"*\"]', NULL, NULL, '2022-12-02 12:17:55', '2022-12-02 12:17:55'),
(357, 'App\\Models\\User', 1, 'auth_token', 'becbd8f8c3b9ef2a7b5175680fa9974bacaf60b643112daacbf72d3ec65b52c6', '[\"*\"]', NULL, NULL, '2022-12-02 12:18:02', '2022-12-02 12:18:02'),
(358, 'App\\Models\\User', 1, 'auth_token', '74670c3401d316af77f66e48d06077ee7ff56b6d2fd4db9f6f5874f5b5c6ea00', '[\"*\"]', NULL, NULL, '2022-12-02 12:18:22', '2022-12-02 12:18:22'),
(359, 'App\\Models\\User', 1, 'auth_token', 'e7fa2c4eb4878f3602311021de004c89fca48643162476e41f863c43e99be900', '[\"*\"]', NULL, NULL, '2022-12-02 12:18:55', '2022-12-02 12:18:55'),
(360, 'App\\Models\\User', 1, 'auth_token', '1ba83bb17d3069d6b055b9f75d26d9bf11443c5cb34e05beea5b62542ceb85d2', '[\"*\"]', NULL, NULL, '2022-12-02 12:19:11', '2022-12-02 12:19:11'),
(361, 'App\\Models\\User', 1, 'auth_token', 'b2016a036d93a02f66df9d85b9fee8d1c0d9e76bbdc8965eb7cd742d721ebe70', '[\"*\"]', NULL, NULL, '2022-12-02 12:19:26', '2022-12-02 12:19:26'),
(362, 'App\\Models\\User', 1, 'auth_token', '2ab16c049b304a64c6e6eb1d73bf8cfe141bd9477006c839213644b5a617ccf2', '[\"*\"]', NULL, NULL, '2022-12-02 12:19:36', '2022-12-02 12:19:36'),
(363, 'App\\Models\\User', 1, 'auth_token', '02eacff35437b1ed18a0a428078e83ac8c4098ca38e70325b8d7f9fdb1c3d0b1', '[\"*\"]', NULL, NULL, '2022-12-02 12:19:40', '2022-12-02 12:19:40'),
(364, 'App\\Models\\User', 1, 'auth_token', '279e2efa428c55cd7cdb1aa2115c778a2ccfebf3c0bf1878318cb65501830a85', '[\"*\"]', NULL, NULL, '2022-12-02 12:19:58', '2022-12-02 12:19:58'),
(365, 'App\\Models\\User', 1, 'auth_token', '3dc878305522ba0dff8b9a35b2d22ca483466db396a2b40dfc608d5b7adc5450', '[\"*\"]', NULL, NULL, '2022-12-02 12:20:20', '2022-12-02 12:20:20'),
(366, 'App\\Models\\User', 1, 'auth_token', '0ce625def94d605fc3abea75646b85ef25b42bef386ba419214c52a6b703764f', '[\"*\"]', NULL, NULL, '2022-12-02 12:20:36', '2022-12-02 12:20:36'),
(367, 'App\\Models\\User', 1, 'auth_token', '50777687cd7f4d00894364be35b7db86fa87e69bfaccb542d578f8cf7a065b22', '[\"*\"]', NULL, NULL, '2022-12-02 12:20:41', '2022-12-02 12:20:41'),
(368, 'App\\Models\\User', 1, 'auth_token', '041e71ff4f48aefa6606211f09ca8c00722740161407666c3cbb6f9582d35559', '[\"*\"]', NULL, NULL, '2022-12-02 12:21:01', '2022-12-02 12:21:01'),
(369, 'App\\Models\\User', 1, 'auth_token', '23e217de7fe799179536b856fcbbcf352ac461630ecdaa06c7b0fb0fceb80795', '[\"*\"]', NULL, NULL, '2022-12-02 12:21:13', '2022-12-02 12:21:13'),
(370, 'App\\Models\\User', 1, 'auth_token', '55f8e84e599a09266387f025095cc319e3375c042c89e7969878d2733db5f8d3', '[\"*\"]', NULL, NULL, '2022-12-02 12:21:17', '2022-12-02 12:21:17'),
(371, 'App\\Models\\User', 1, 'auth_token', '2cf0352b2e7de1d35a7f769a5438b813d142ce97f46ef6691b920b8386061fe4', '[\"*\"]', NULL, NULL, '2022-12-02 12:21:22', '2022-12-02 12:21:22'),
(372, 'App\\Models\\User', 1, 'auth_token', '131cb8e402cf92d55c79460ff4d32238b54aa0117f10c19f99790d1b21c5b659', '[\"*\"]', NULL, NULL, '2022-12-02 12:21:23', '2022-12-02 12:21:23'),
(373, 'App\\Models\\User', 1, 'auth_token', '3e6c665aac7265827512be3d56ceb2a5fb47d023207c4b932f072c3ed4337365', '[\"*\"]', NULL, NULL, '2022-12-02 12:21:26', '2022-12-02 12:21:26'),
(374, 'App\\Models\\User', 1, 'auth_token', 'c38b45a4feecbcce373deedb003c443bad9c2365073433c11e0984cced082647', '[\"*\"]', NULL, NULL, '2022-12-02 12:22:05', '2022-12-02 12:22:05'),
(375, 'App\\Models\\User', 1, 'auth_token', '30dc05372152a9b7c882e12d2fc4f59e0d3c4b7dd0508fe89e732eee49091af1', '[\"*\"]', NULL, NULL, '2022-12-02 12:22:12', '2022-12-02 12:22:12'),
(376, 'App\\Models\\User', 1, 'auth_token', 'f56b1a3802e130c21dade1915f71a1083c5e17a08322bd71192a038aab6ef2fe', '[\"*\"]', NULL, NULL, '2022-12-02 12:22:47', '2022-12-02 12:22:47'),
(377, 'App\\Models\\User', 1, 'auth_token', '470057f778cddd3fb74b34b34f65d9c030b877e9d0b2f2bd01cdc276371299e4', '[\"*\"]', NULL, NULL, '2022-12-02 12:23:04', '2022-12-02 12:23:04'),
(378, 'App\\Models\\User', 1, 'auth_token', '2e5602b6e76c0dec7dc2da1f2f066bde7e9719749507971edf6b3d015be9a9f5', '[\"*\"]', NULL, NULL, '2022-12-02 12:23:08', '2022-12-02 12:23:08'),
(379, 'App\\Models\\User', 1, 'auth_token', '0909d5cff7dbc11b63ac2e2a2947a81b966bfb10c4b0b14d88d2fbf769cff25c', '[\"*\"]', NULL, NULL, '2022-12-02 12:23:11', '2022-12-02 12:23:11'),
(380, 'App\\Models\\User', 1, 'auth_token', 'c9df2c636b22ec414c30ec259634e51153e33a5169a5e45f471e3c66dc03842c', '[\"*\"]', NULL, NULL, '2022-12-02 12:23:40', '2022-12-02 12:23:40'),
(381, 'App\\Models\\User', 1, 'auth_token', '362db9ff97c3f5616dbf9aaf425259b6ea44d71c8f5edef26cb6b9244133600b', '[\"*\"]', NULL, NULL, '2022-12-02 12:23:44', '2022-12-02 12:23:44'),
(382, 'App\\Models\\User', 1, 'auth_token', 'e987139b264a36c66ddcc603d2fd517036c395304ebcf4d8ccde26f5e799d56e', '[\"*\"]', NULL, NULL, '2022-12-02 12:24:11', '2022-12-02 12:24:11'),
(383, 'App\\Models\\User', 1, 'auth_token', 'faf17aff22ed94a013d816b2db78043cce47ed48921d781693d71edf60c1e027', '[\"*\"]', NULL, NULL, '2022-12-02 12:24:18', '2022-12-02 12:24:18'),
(384, 'App\\Models\\User', 2, 'auth_token', '959efa3eb18e4a9c2a8e5c7f315a5898c864e2890339d95168e32dcc8ad42d2b', '[\"*\"]', NULL, NULL, '2022-12-02 12:25:04', '2022-12-02 12:25:04'),
(385, 'App\\Models\\User', 2, 'auth_token', '8df7cf8875efa591a3465b4a9031167e5cc266ea03eff75ab5dff5135fcd8820', '[\"*\"]', NULL, NULL, '2022-12-02 12:25:09', '2022-12-02 12:25:09'),
(386, 'App\\Models\\User', 2, 'auth_token', '97adb25d84cb36d1eed72c4f5f8fdde6c0ae29f8139df651777034aa5cd90745', '[\"*\"]', NULL, NULL, '2022-12-02 12:25:18', '2022-12-02 12:25:18'),
(387, 'App\\Models\\User', 1, 'auth_token', '08e69c0901e3249412f1f2df41d0cf5528dca5553b04c6f73ed2b74b20c222f9', '[\"*\"]', NULL, NULL, '2022-12-02 21:45:19', '2022-12-02 21:45:19'),
(388, 'App\\Models\\User', 1, 'auth_token', 'bb69d4e66e76819826b98086cfe93e85f014e54c4622c68e8d83a2879e3824ce', '[\"*\"]', NULL, NULL, '2022-12-02 21:45:50', '2022-12-02 21:45:50'),
(389, 'App\\Models\\User', 2, 'auth_token', 'cd106b5c8fdea091e5cdfb5be2197c14d901aa14587db8fbe72e3514dfc34307', '[\"*\"]', NULL, NULL, '2022-12-02 21:46:22', '2022-12-02 21:46:22'),
(390, 'App\\Models\\User', 1, 'auth_token', 'eb49373c3512b571c141962804dccdf127fe41c4a838d37b8ad9d3d72f423a94', '[\"*\"]', NULL, NULL, '2022-12-02 21:48:55', '2022-12-02 21:48:55'),
(391, 'App\\Models\\User', 1, 'auth_token', 'c1a179e53019aec07e811b245f4a3e9ab29b80f048922ba7e17d4195c6d2c15f', '[\"*\"]', NULL, NULL, '2022-12-02 21:51:12', '2022-12-02 21:51:12'),
(392, 'App\\Models\\User', 1, 'auth_token', '895545cb8e4611b93fb03c75bdf68347c6db0a9501e728a35a942fb43a6ceece', '[\"*\"]', NULL, NULL, '2022-12-02 21:54:33', '2022-12-02 21:54:33'),
(393, 'App\\Models\\User', 1, 'auth_token', 'e8f338971d4d91dff22e1866e3b01f2ab76af389a20908a88cfbd759897cdf66', '[\"*\"]', NULL, NULL, '2022-12-02 21:54:49', '2022-12-02 21:54:49'),
(394, 'App\\Models\\User', 1, 'auth_token', 'a0b7ef4914458e7f589696b28adbda4e82993418cf79f941e2e817143069d812', '[\"*\"]', NULL, NULL, '2022-12-02 21:55:11', '2022-12-02 21:55:11'),
(395, 'App\\Models\\User', 1, 'auth_token', 'cc45c13df87be5cc0b39b5629f7ee2a9db4a4031613d50ca348c20493701a693', '[\"*\"]', NULL, NULL, '2022-12-02 21:55:38', '2022-12-02 21:55:38'),
(396, 'App\\Models\\User', 1, 'auth_token', '48fcf15de1b0954512687cdde30a6afb9f8238e4afad1ebbf8a46ed25d23b3de', '[\"*\"]', NULL, NULL, '2022-12-02 21:55:57', '2022-12-02 21:55:57'),
(397, 'App\\Models\\User', 1, 'auth_token', '41c79b5174ebcfbaa53b05564706b82ee77c0d4882af8fef861a47cea1cb8162', '[\"*\"]', NULL, NULL, '2022-12-02 21:56:10', '2022-12-02 21:56:10'),
(398, 'App\\Models\\User', 1, 'auth_token', '474c643860435f51c0762a08c269218a25bfef94b51992373303297158cb06b7', '[\"*\"]', NULL, NULL, '2022-12-02 21:56:16', '2022-12-02 21:56:16'),
(399, 'App\\Models\\User', 1, 'auth_token', '028305963149b67bcc6189d077587fec2fa3d1ba3d060ac85b2b4bfce159a4d4', '[\"*\"]', NULL, NULL, '2022-12-02 21:56:25', '2022-12-02 21:56:25'),
(400, 'App\\Models\\User', 1, 'auth_token', '52d082f3099a111b4bdbdfee6fab3b7d9e657adac189b63a6746bc39797f5940', '[\"*\"]', NULL, NULL, '2022-12-02 21:56:31', '2022-12-02 21:56:31'),
(401, 'App\\Models\\User', 1, 'auth_token', '61e46bf29cd85fe86f7bc21e88265fac1fbbf1d45c76f2bf87d28b37bf2b7b65', '[\"*\"]', NULL, NULL, '2022-12-02 21:56:42', '2022-12-02 21:56:42'),
(402, 'App\\Models\\User', 1, 'auth_token', '24c11930651bd897b32fbf5be9402a5c7fe12830b12ff31b64af11644c8f411a', '[\"*\"]', NULL, NULL, '2022-12-02 21:56:55', '2022-12-02 21:56:55'),
(403, 'App\\Models\\User', 1, 'auth_token', '476148ed88e03e4b35dd2139f06a38ca0d64e6770167c6534d677700d2545819', '[\"*\"]', NULL, NULL, '2022-12-02 21:57:04', '2022-12-02 21:57:04'),
(404, 'App\\Models\\User', 1, 'auth_token', '6470f397175667e36a5b035839e714730c2b56e7c757d0e945fdf64b90b04632', '[\"*\"]', NULL, NULL, '2022-12-02 21:57:57', '2022-12-02 21:57:57'),
(405, 'App\\Models\\User', 1, 'auth_token', 'bfff3ec77e933ac108f870786ebe975de4abee689b29a1222193e2c9cdf24b04', '[\"*\"]', NULL, NULL, '2022-12-02 21:58:05', '2022-12-02 21:58:05'),
(406, 'App\\Models\\User', 1, 'auth_token', '5c54255d611a915cd9fa6461577b2c25fd736c8a4a433c772a7aaa1160f3a342', '[\"*\"]', NULL, NULL, '2022-12-02 21:58:21', '2022-12-02 21:58:21'),
(407, 'App\\Models\\User', 1, 'auth_token', '2748773568125afd01e02fb51c95775f04d6b2c1eddeac1a8ad5b1e21f6470f0', '[\"*\"]', NULL, NULL, '2022-12-02 21:58:40', '2022-12-02 21:58:40'),
(408, 'App\\Models\\User', 1, 'auth_token', '85b2fe98794e0ddbf0ee9556ceef369c214d9f6bfad390cfec9e98c167aa0cb3', '[\"*\"]', NULL, NULL, '2022-12-02 21:58:46', '2022-12-02 21:58:46'),
(409, 'App\\Models\\User', 1, 'auth_token', 'a89b9859ec535cc81afc345812a8a3f9fb34acdca9e06be72695c57d1cc55799', '[\"*\"]', NULL, NULL, '2022-12-02 21:58:59', '2022-12-02 21:58:59'),
(410, 'App\\Models\\User', 1, 'auth_token', 'bb90b92493be2b7d623cc76666d1dd59162e972157aa9cb99ffdbf3df168dcc6', '[\"*\"]', NULL, NULL, '2022-12-02 21:59:06', '2022-12-02 21:59:06'),
(411, 'App\\Models\\User', 1, 'auth_token', '3b1e662f70755ab677253ea98b2aecedb15afebb8ed39b34a91fc8b201a3f181', '[\"*\"]', NULL, NULL, '2022-12-02 21:59:54', '2022-12-02 21:59:54'),
(412, 'App\\Models\\User', 1, 'auth_token', 'cac806073f2c3945dc943c3589ec856170cc35574634d0a730936713f8771f9e', '[\"*\"]', NULL, NULL, '2022-12-02 22:00:22', '2022-12-02 22:00:22'),
(413, 'App\\Models\\User', 1, 'auth_token', 'ff627404701b1d5b84cd2e04d5487a0822a71a2c973c504969e10d7a9d32edf3', '[\"*\"]', NULL, NULL, '2022-12-02 22:00:37', '2022-12-02 22:00:37'),
(414, 'App\\Models\\User', 1, 'auth_token', 'b8d56f6abe94d174853f9a2e8d1abd1d09c9db8494af15f740b5269ba03ad2a4', '[\"*\"]', NULL, NULL, '2022-12-02 22:01:15', '2022-12-02 22:01:15'),
(415, 'App\\Models\\User', 1, 'auth_token', 'b41eaf4dc82685eb561086c979d4e5d1f2abe5abd04040f0686ed4c9d6654226', '[\"*\"]', NULL, NULL, '2022-12-02 22:01:23', '2022-12-02 22:01:23'),
(416, 'App\\Models\\User', 1, 'auth_token', 'fc54cbd979bea4217752699cb282254088865f9270abd91a70c4362a8e0ac6d1', '[\"*\"]', NULL, NULL, '2022-12-02 22:02:22', '2022-12-02 22:02:22'),
(417, 'App\\Models\\User', 1, 'auth_token', '42445ca22056ae6c93d52e6080e932a61407a5c633da1f3b66b31a50a07fc4b7', '[\"*\"]', NULL, NULL, '2022-12-02 22:02:31', '2022-12-02 22:02:31'),
(418, 'App\\Models\\User', 1, 'auth_token', '8f151f49217a3aeec96a299a3bc16fb5902ed1228c155f01d7797a6f2a40da4e', '[\"*\"]', NULL, NULL, '2022-12-02 22:03:07', '2022-12-02 22:03:07'),
(419, 'App\\Models\\User', 1, 'auth_token', '5acdbfa7354257ccd9aa9dfcd5ec860be426fbe8cb3084cff61ae5a724251a16', '[\"*\"]', NULL, NULL, '2022-12-02 22:03:31', '2022-12-02 22:03:31'),
(420, 'App\\Models\\User', 1, 'auth_token', 'db5edd8da1656123b9dc676827bb826f2a13f5e2b77eed3bc968923aec25109e', '[\"*\"]', NULL, NULL, '2022-12-02 22:03:36', '2022-12-02 22:03:36'),
(421, 'App\\Models\\User', 1, 'auth_token', 'c438b948a1982bdbec81d15b26b3d50ca76cada4c4baa9f3d7f2a48672ad26b7', '[\"*\"]', NULL, NULL, '2022-12-02 22:06:38', '2022-12-02 22:06:38'),
(422, 'App\\Models\\User', 1, 'auth_token', 'a7a89b49ae8aad3ee657ec2e98f60651a1ec2f688a55986e85d8e1ae5bd47065', '[\"*\"]', NULL, NULL, '2022-12-02 22:06:59', '2022-12-02 22:06:59'),
(423, 'App\\Models\\User', 1, 'auth_token', 'c6f6047036ba0646da1d888e1808dead5b4555237533ba59ecdefb102874ab63', '[\"*\"]', NULL, NULL, '2022-12-02 22:07:57', '2022-12-02 22:07:57'),
(424, 'App\\Models\\User', 1, 'auth_token', '88d0160ae8a911cdbc886b32f7dd6c72a1e3747b0396897497b33560f721e377', '[\"*\"]', NULL, NULL, '2022-12-02 22:08:31', '2022-12-02 22:08:31'),
(425, 'App\\Models\\User', 1, 'auth_token', '1e6c180be59275630306021924fc5c20d8ff531627dc34b46d5c4214490cc923', '[\"*\"]', NULL, NULL, '2022-12-02 22:08:40', '2022-12-02 22:08:40'),
(426, 'App\\Models\\User', 1, 'auth_token', 'accf5a029c6d984f7768b2a8744e0ca1489f9921a6dc460c1af47bce6afa82bf', '[\"*\"]', NULL, NULL, '2022-12-02 22:12:01', '2022-12-02 22:12:01'),
(427, 'App\\Models\\User', 1, 'auth_token', '04f3b98185e0ab20f8a678b870d2a612ae11e150ddb4d83123c470a7aa341be3', '[\"*\"]', NULL, NULL, '2022-12-02 22:14:15', '2022-12-02 22:14:15'),
(428, 'App\\Models\\User', 1, 'auth_token', 'c1d520004fff67080127d9a6b3981080a32700a1c5dfb8c7087288324818a045', '[\"*\"]', NULL, NULL, '2022-12-02 22:14:23', '2022-12-02 22:14:23'),
(429, 'App\\Models\\User', 1, 'auth_token', '211e5ca42c30f5646c5980e79941aa972c1f6c92f56992cf48fb1528988f1bf8', '[\"*\"]', NULL, NULL, '2022-12-02 22:14:41', '2022-12-02 22:14:41'),
(430, 'App\\Models\\User', 1, 'auth_token', '713c8a74af281d81854f5f0e7824c5a65040633e03c764775576577d2421ba45', '[\"*\"]', NULL, NULL, '2022-12-02 22:14:46', '2022-12-02 22:14:46'),
(431, 'App\\Models\\User', 1, 'auth_token', 'b16593d5cdd4c24f50492238a18c2460912b2f5598cd8644f722a923b463025b', '[\"*\"]', NULL, NULL, '2022-12-02 22:15:42', '2022-12-02 22:15:42'),
(432, 'App\\Models\\User', 1, 'auth_token', 'a1cc17cae142564a69f9ab1b6315a1bac5b5d052d559e2ca7bc9702e6f6c5f37', '[\"*\"]', NULL, NULL, '2022-12-02 22:15:52', '2022-12-02 22:15:52'),
(433, 'App\\Models\\User', 1, 'auth_token', 'a2a6d3d126c8fa89fdae909aa806a1b76a697e88fcbc07a68a24586765342564', '[\"*\"]', NULL, NULL, '2022-12-02 22:18:51', '2022-12-02 22:18:51'),
(434, 'App\\Models\\User', 1, 'auth_token', '693ee4c1153645335437707adde27caa693d1ff5c92d8db5247aae45adce80a7', '[\"*\"]', NULL, NULL, '2022-12-02 22:19:12', '2022-12-02 22:19:12'),
(435, 'App\\Models\\User', 1, 'auth_token', '83edab55155faffa441822dd053966cb1fb68d9775c892875bc4c91cc6573df7', '[\"*\"]', NULL, NULL, '2022-12-02 22:22:14', '2022-12-02 22:22:14'),
(436, 'App\\Models\\User', 1, 'auth_token', '58edb59c56dd752b5accbbd86f82f06583b8aa60879bede93e38d381d11c349f', '[\"*\"]', NULL, NULL, '2022-12-02 22:23:36', '2022-12-02 22:23:36'),
(437, 'App\\Models\\User', 1, 'auth_token', '90f90b4237df6d8a1d217a1bf21531bef41a796494cbb9dfbb59aeb456c442ab', '[\"*\"]', NULL, NULL, '2022-12-02 22:54:37', '2022-12-02 22:54:37'),
(438, 'App\\Models\\User', 1, 'auth_token', '11ea0fffe75a9becf3ee4e8143789f600421affa3180231f51d7f8ba957f56c9', '[\"*\"]', NULL, NULL, '2022-12-02 22:54:44', '2022-12-02 22:54:44'),
(439, 'App\\Models\\User', 1, 'auth_token', '6f2e59e88be6ecb7527ce634565f71593480257578a72f9ee76a218cb9cc48ab', '[\"*\"]', NULL, NULL, '2022-12-02 22:54:54', '2022-12-02 22:54:54'),
(440, 'App\\Models\\User', 1, 'auth_token', '2185a193744bbd816f48417080a455c1c7788ccebfc05b7d0765e10c9407ce34', '[\"*\"]', NULL, NULL, '2022-12-02 22:55:07', '2022-12-02 22:55:07'),
(441, 'App\\Models\\User', 1, 'auth_token', '34a643416cea9c870875f8d0de3dc11990ef93e7cfc4b82ca6b472e5ab8eb473', '[\"*\"]', NULL, NULL, '2022-12-02 22:55:25', '2022-12-02 22:55:25'),
(442, 'App\\Models\\User', 1, 'auth_token', 'a7198a5dbd2ca0b90d577142791251d365dbe63a384ff26376f06f915a2e34a1', '[\"*\"]', NULL, NULL, '2022-12-02 22:55:33', '2022-12-02 22:55:33'),
(443, 'App\\Models\\User', 1, 'auth_token', '50eeb2981db1664f244941dd289231fd8caaa290a40a8018dbe02e7aff8e7eae', '[\"*\"]', NULL, NULL, '2022-12-02 22:57:03', '2022-12-02 22:57:03'),
(444, 'App\\Models\\User', 1, 'auth_token', '8f4980dd8be27821672b7f28182b85f0ecef59198a4f51b4a153c9bd25f55160', '[\"*\"]', NULL, NULL, '2022-12-02 23:05:26', '2022-12-02 23:05:26'),
(445, 'App\\Models\\User', 1, 'auth_token', '04c28e253296c063a6e57b304f986091827fae688b5f1d06376150e1aa56a667', '[\"*\"]', NULL, NULL, '2022-12-02 23:06:01', '2022-12-02 23:06:01'),
(446, 'App\\Models\\User', 2, 'auth_token', 'e0d67dc234281bf8e55108ffb16c02fa049cce02b47921a895c5173331f1ea2c', '[\"*\"]', NULL, NULL, '2022-12-02 23:11:17', '2022-12-02 23:11:17'),
(447, 'App\\Models\\User', 2, 'auth_token', '43caa4632ac17feaffef8498b555aa0bee9d11dec9ee4f9424352adc75699b20', '[\"*\"]', NULL, NULL, '2022-12-02 23:11:36', '2022-12-02 23:11:36'),
(448, 'App\\Models\\User', 2, 'auth_token', '4f93f09db613f00d7b9fb7947b62ab7b4a3aae1abef3728f1dda08ab2579d004', '[\"*\"]', NULL, NULL, '2022-12-02 23:12:58', '2022-12-02 23:12:58'),
(449, 'App\\Models\\User', 2, 'auth_token', '6b0bcb1eda31979b36a419c2272b98cc6671b70cc80a699d4f0515b28b2394c8', '[\"*\"]', NULL, NULL, '2022-12-02 23:13:23', '2022-12-02 23:13:23'),
(450, 'App\\Models\\User', 1, 'auth_token', 'ddf8d139a8e2777c06067899ac28b97de69c33260408f03e7e6577a0c45990dd', '[\"*\"]', NULL, NULL, '2022-12-02 23:13:36', '2022-12-02 23:13:36'),
(451, 'App\\Models\\User', 1, 'auth_token', '542f3c16ef958e463c7336901495150f817a50f651b41ef9102c1da1602b7b23', '[\"*\"]', NULL, NULL, '2022-12-02 23:14:33', '2022-12-02 23:14:33'),
(452, 'App\\Models\\User', 1, 'auth_token', '0931d44e7e2f2d5fa82e2257b4a7b95fdfe21c31c346e27e3234fa685c7a0ced', '[\"*\"]', NULL, NULL, '2022-12-02 23:14:52', '2022-12-02 23:14:52'),
(453, 'App\\Models\\User', 1, 'auth_token', '8674e4754236850b990d994456c12486c187041211ac0039d75da2381b796aab', '[\"*\"]', NULL, NULL, '2022-12-02 23:15:03', '2022-12-02 23:15:03'),
(454, 'App\\Models\\User', 1, 'auth_token', 'd445464d905772d725d98b095b9b5cbccec0d1a98ecaaca4daeee8349dfdaf4d', '[\"*\"]', NULL, NULL, '2022-12-02 23:15:17', '2022-12-02 23:15:17'),
(455, 'App\\Models\\User', 1, 'auth_token', '1aa87d3203900b1c446b0ee10648130f3b45dc0c0056bc043c97d161dc10b5fc', '[\"*\"]', NULL, NULL, '2022-12-02 23:15:26', '2022-12-02 23:15:26'),
(456, 'App\\Models\\User', 1, 'auth_token', '87106bd6d7c87fe493bdf99d8ca66187d8de4a3c4f9bf81aba824a1e6b232389', '[\"*\"]', NULL, NULL, '2022-12-02 23:15:32', '2022-12-02 23:15:32'),
(457, 'App\\Models\\User', 1, 'auth_token', '12f521592bd02a4e294566660398210de97a32c60c99a92aeb4217c8211f0ef9', '[\"*\"]', NULL, NULL, '2022-12-02 23:17:28', '2022-12-02 23:17:28'),
(458, 'App\\Models\\User', 1, 'auth_token', 'c6fa18fc0a9b441c96dcef2d080e70d3f5ffc74a86d9134384a8d0a450ac9fc9', '[\"*\"]', NULL, NULL, '2022-12-02 23:17:40', '2022-12-02 23:17:40'),
(459, 'App\\Models\\User', 1, 'auth_token', 'e1b03fcc0a762c5540b221f9ef08c420dcac4f7e424988a402e7a955b6f90980', '[\"*\"]', NULL, NULL, '2022-12-02 23:17:45', '2022-12-02 23:17:45'),
(460, 'App\\Models\\User', 1, 'auth_token', '5082af5fc0d11cb914dd8bca8f9417cfeae23b26c9658bfb5902f7cc294a5800', '[\"*\"]', NULL, NULL, '2022-12-02 23:18:02', '2022-12-02 23:18:02'),
(461, 'App\\Models\\User', 1, 'auth_token', '7f0762dcfd9f7ca7dfb659e4d1092ed998d6e532f820448c12ceb51c4787fb1d', '[\"*\"]', NULL, NULL, '2022-12-02 23:18:34', '2022-12-02 23:18:34'),
(462, 'App\\Models\\User', 1, 'auth_token', 'ed4825798137c5cf5c4ab45624b8868de0ba590a81a442b12530dfc28feb2965', '[\"*\"]', NULL, NULL, '2022-12-02 23:19:33', '2022-12-02 23:19:33'),
(463, 'App\\Models\\User', 1, 'auth_token', '647b8139d026693b4420f7cce77d4e79488bb5677c81c6383be288c91d3789be', '[\"*\"]', NULL, NULL, '2022-12-02 23:19:41', '2022-12-02 23:19:41'),
(464, 'App\\Models\\User', 1, 'auth_token', 'e8270ae038ed46a0e82aabfd34150a9637d60732860ad3c76e8ece597ab15ef5', '[\"*\"]', NULL, NULL, '2022-12-02 23:20:04', '2022-12-02 23:20:04'),
(465, 'App\\Models\\User', 2, 'auth_token', '4a1811ed7144adb92f43c83a50cba4d4b09e807634b4054b8cbb32c246320804', '[\"*\"]', NULL, NULL, '2022-12-02 23:20:32', '2022-12-02 23:20:32'),
(466, 'App\\Models\\User', 5, 'auth_token', '741c6bbbc6787c3d2825c8a958516598c7e9b5060172aa06ea1141b8ef0b5afa', '[\"*\"]', NULL, NULL, '2022-12-02 23:25:25', '2022-12-02 23:25:25'),
(467, 'App\\Models\\User', 5, 'auth_token', '78cafa1dc8c874cd2cba8b467672a86db35b1c2e4589c2c8bb4cb71b8caf1f39', '[\"*\"]', NULL, NULL, '2022-12-02 23:26:09', '2022-12-02 23:26:09'),
(468, 'App\\Models\\User', 5, 'auth_token', 'e471dcd4a616f335f4df324aa8a2aa0a91fb9c266c97675da223e2c4e1dd7141', '[\"*\"]', NULL, NULL, '2022-12-02 23:26:46', '2022-12-02 23:26:46'),
(469, 'App\\Models\\User', 5, 'auth_token', '36f03d8109ce11d5177c31dc375560a3f063e5ca0e3f2987dcaff0ba1b4aa7dd', '[\"*\"]', NULL, NULL, '2022-12-02 23:27:19', '2022-12-02 23:27:19'),
(470, 'App\\Models\\User', 5, 'auth_token', 'd780b932a334b08520d98f4eac3b19856b1a5aa98c60afacc489cec410968509', '[\"*\"]', NULL, NULL, '2022-12-02 23:27:41', '2022-12-02 23:27:41'),
(471, 'App\\Models\\User', 1, 'auth_token', '2b15735d78bbf70d50bc2f7d88cd5e43abcc8220175df698fc153669ada5dbad', '[\"*\"]', NULL, NULL, '2022-12-02 23:31:49', '2022-12-02 23:31:49'),
(472, 'App\\Models\\User', 1, 'auth_token', '6c1bf8deeea3f16d43ab3feab3c03eabad53c612006389ad649567f30d41dd6d', '[\"*\"]', NULL, NULL, '2022-12-03 00:18:11', '2022-12-03 00:18:11'),
(473, 'App\\Models\\User', 1, 'auth_token', '9dda8cd896c6a9ea55a2b81eaafdd533b544ba4684501b00bea11f7fdbc3561d', '[\"*\"]', NULL, NULL, '2022-12-03 00:18:47', '2022-12-03 00:18:47'),
(474, 'App\\Models\\User', 1, 'auth_token', '46ac43920fb410fdcc902d656dfb17b6860f47f8a90f596033716517700372cb', '[\"*\"]', NULL, NULL, '2022-12-03 00:20:49', '2022-12-03 00:20:49'),
(475, 'App\\Models\\User', 1, 'auth_token', '348e5ebede7765be191ac157a641d9d2eabcd438e93e68e637fc55f991c646b5', '[\"*\"]', NULL, NULL, '2022-12-03 00:23:20', '2022-12-03 00:23:20'),
(476, 'App\\Models\\User', 1, 'auth_token', '8a0d25ef2ee6fdfed26f653d521dfb302c1d87a916c2eed8fdcdbf5c9a43b35a', '[\"*\"]', NULL, NULL, '2022-12-03 01:01:58', '2022-12-03 01:01:58'),
(477, 'App\\Models\\User', 1, 'auth_token', '1f3bd7d532fa55f022ba75abaf4c3bc8b5e23da18eb71c394654a8435fc58cb1', '[\"*\"]', NULL, NULL, '2022-12-03 02:15:20', '2022-12-03 02:15:20'),
(478, 'App\\Models\\User', 5, 'auth_token', 'aa70435411c4a9ba832950ab5c448f1fff0419ae950cb7a3f7aa5c04501758fe', '[\"*\"]', NULL, NULL, '2022-12-03 02:36:26', '2022-12-03 02:36:26'),
(479, 'App\\Models\\User', 5, 'auth_token', 'ecf32ea307c9c06988d84739a4c841aa7c5b7ef2d8690b9ac85fb86a89f4b23e', '[\"*\"]', NULL, NULL, '2022-12-03 02:36:47', '2022-12-03 02:36:47'),
(480, 'App\\Models\\User', 5, 'auth_token', 'aa130baed0264d9362314bcd30df08c119b95ede9cff0818edc1dbd7c6d8ee4b', '[\"*\"]', NULL, NULL, '2022-12-03 02:36:53', '2022-12-03 02:36:53'),
(481, 'App\\Models\\User', 1, 'auth_token', '1bddaf4a16c2f245c103da88d160320d2cfd0c68fa13831ee877fe362571297f', '[\"*\"]', NULL, NULL, '2022-12-03 02:39:23', '2022-12-03 02:39:23'),
(482, 'App\\Models\\User', 1, 'auth_token', '501f7043616cc112b3ddbca0a1f2063ddd010f818ceaca156ac53952d88e5121', '[\"*\"]', NULL, NULL, '2022-12-03 03:11:37', '2022-12-03 03:11:37'),
(483, 'App\\Models\\User', 5, 'auth_token', '1162b2af7327c8a52654e378fb96f7b0af04b9a9a73c5d67a9d3e4049b13e4cc', '[\"*\"]', NULL, NULL, '2022-12-03 03:55:33', '2022-12-03 03:55:33'),
(484, 'App\\Models\\User', 5, 'auth_token', '8f981bbcb447230b4b33a44b9dcbda5e5b238d5fa47167b9d2317e26ef73942a', '[\"*\"]', NULL, NULL, '2022-12-03 03:57:20', '2022-12-03 03:57:20'),
(485, 'App\\Models\\User', 5, 'auth_token', '2103689547deec46b3ff9790c6eb5b3f8da6b954827c70a556480b9e744ffad4', '[\"*\"]', NULL, NULL, '2022-12-03 03:57:35', '2022-12-03 03:57:35'),
(486, 'App\\Models\\User', 5, 'auth_token', '96959e17aec004a9251b19973f27bd9617515f781128240e80187222a2aa3966', '[\"*\"]', NULL, NULL, '2022-12-03 03:57:46', '2022-12-03 03:57:46'),
(487, 'App\\Models\\User', 5, 'auth_token', '500158acde38af4bff0ef6827be569e302a470783a1f001dee787928d4ad912f', '[\"*\"]', NULL, NULL, '2022-12-03 03:58:52', '2022-12-03 03:58:52'),
(488, 'App\\Models\\User', 5, 'auth_token', 'b789e3479a21043b5914ebe1a4c46ba1ed5229ab454565cfebaef982d1db4f29', '[\"*\"]', NULL, NULL, '2022-12-03 04:01:13', '2022-12-03 04:01:13'),
(489, 'App\\Models\\User', 5, 'auth_token', '92ce80cbfa18dc61a3c6c4c1976a966c85beb00341691b7c101c2085b9e94e8b', '[\"*\"]', NULL, NULL, '2022-12-03 04:01:26', '2022-12-03 04:01:26'),
(490, 'App\\Models\\User', 1, 'auth_token', 'be23efc698835a2a261a46cc78d2f369fcecf8c316f260958d70407e9ec40581', '[\"*\"]', NULL, NULL, '2022-12-03 04:02:47', '2022-12-03 04:02:47'),
(491, 'App\\Models\\User', 5, 'auth_token', 'fa381e4bd5078f278eb57a8f703975bef7ba753e00e1d08d674b9669e6983e41', '[\"*\"]', NULL, NULL, '2022-12-03 04:02:57', '2022-12-03 04:02:57'),
(492, 'App\\Models\\User', 5, 'auth_token', '71ad38c6e4dd2edfbef2149e116050923f081f62ed28e60530895dd6f550d7e4', '[\"*\"]', NULL, NULL, '2022-12-03 04:03:08', '2022-12-03 04:03:08'),
(493, 'App\\Models\\User', 5, 'auth_token', 'bc9e2ac9ecba13b38a43fc8ee5a18b2fc541e1012cb4947b3abb589edf67e5ca', '[\"*\"]', NULL, NULL, '2022-12-03 04:03:17', '2022-12-03 04:03:17'),
(494, 'App\\Models\\User', 5, 'auth_token', 'b73f007d7e88b2fb09966fef6a802809d078669ec88e15670b28949747bd8562', '[\"*\"]', NULL, NULL, '2022-12-03 04:03:31', '2022-12-03 04:03:31'),
(495, 'App\\Models\\User', 5, 'auth_token', '2b77f1270a9f5c2e5fa623973459b7e99f4619a4b0c053b53830d4a803d14e1d', '[\"*\"]', NULL, NULL, '2022-12-03 04:03:48', '2022-12-03 04:03:48'),
(496, 'App\\Models\\User', 5, 'auth_token', '991f35e8928a59b04630cef506baceb4923875858c0020f6133cf3e0be3de52a', '[\"*\"]', NULL, NULL, '2022-12-03 04:03:54', '2022-12-03 04:03:54'),
(497, 'App\\Models\\User', 5, 'auth_token', 'f6d23c7731e8178726568cc53de36f526c1704633171bd146bffab80c709d698', '[\"*\"]', NULL, NULL, '2022-12-03 04:04:54', '2022-12-03 04:04:54'),
(498, 'App\\Models\\User', 5, 'auth_token', 'd6dda612e678ae28614f58e2a7532f9b957cbb0be6d186f157384a73ba81d60f', '[\"*\"]', NULL, NULL, '2022-12-03 04:05:23', '2022-12-03 04:05:23'),
(499, 'App\\Models\\User', 5, 'auth_token', 'da90c3688ebf667a77041bc5d069f97077765ae2c60f8a11abe4d6958d3b0906', '[\"*\"]', NULL, NULL, '2022-12-03 04:05:42', '2022-12-03 04:05:42'),
(500, 'App\\Models\\User', 5, 'auth_token', 'b22b3858a10809723c74a190ee30b74e0ddfddf7e51aa5601b87caa855b724bf', '[\"*\"]', NULL, NULL, '2022-12-03 04:06:00', '2022-12-03 04:06:00'),
(501, 'App\\Models\\User', 5, 'auth_token', 'df1592441f559cc17c050beaf294581d14a2a1b0f844602bfbac8e87c7dfde12', '[\"*\"]', NULL, NULL, '2022-12-03 04:06:07', '2022-12-03 04:06:07'),
(502, 'App\\Models\\User', 5, 'auth_token', '6476287103e2de5de187c7ff62aae13a28e87740b229ea438ddb3155f8025918', '[\"*\"]', NULL, NULL, '2022-12-03 04:06:30', '2022-12-03 04:06:30'),
(503, 'App\\Models\\User', 5, 'auth_token', '0bd845abe013169f4605a28e6b725f0fa92c2a4ae13fdf833683c1acfd5c2527', '[\"*\"]', NULL, NULL, '2022-12-03 04:06:38', '2022-12-03 04:06:38'),
(504, 'App\\Models\\User', 5, 'auth_token', '8a3c0416e9bc9431687e1f436ba6591f757d5a87fe1c37e322e77352653a1f3b', '[\"*\"]', NULL, NULL, '2022-12-03 04:07:27', '2022-12-03 04:07:27'),
(505, 'App\\Models\\User', 5, 'auth_token', 'b8d099b3db6b57dacb3f6680c1444e08d9b421038c86762ebdfb813e7f9e9309', '[\"*\"]', NULL, NULL, '2022-12-03 04:07:38', '2022-12-03 04:07:38'),
(506, 'App\\Models\\User', 5, 'auth_token', '36060cabecfba1d60a611cc06e90f52ef20ca7762b10cbb16a82c7c898e2ef88', '[\"*\"]', NULL, NULL, '2022-12-03 04:07:53', '2022-12-03 04:07:53'),
(507, 'App\\Models\\User', 5, 'auth_token', '257743d858a438f271c0af3c11cdd43d19ee0ca9b67608ebc5623b82909a1907', '[\"*\"]', NULL, NULL, '2022-12-03 04:08:00', '2022-12-03 04:08:00'),
(508, 'App\\Models\\User', 5, 'auth_token', '000497d20c55334779ac175ba853a3c1b6ca5504703c1e8a71f5a1ebf521bee5', '[\"*\"]', NULL, NULL, '2022-12-03 04:08:06', '2022-12-03 04:08:06'),
(509, 'App\\Models\\User', 5, 'auth_token', '2e9ac959faec2f3d980c34b4ffb9c75e82798185f4ff84bc2b081444a4e33721', '[\"*\"]', NULL, NULL, '2022-12-03 04:08:15', '2022-12-03 04:08:15'),
(510, 'App\\Models\\User', 5, 'auth_token', '25783f3bf89fe2ac11eac31d41018968fb44acfe39d4fc1e68d1e5e22f17193f', '[\"*\"]', NULL, NULL, '2022-12-03 04:08:44', '2022-12-03 04:08:44'),
(511, 'App\\Models\\User', 5, 'auth_token', '6882ffd7ab2f1b80691d81e8b03907fed62f71c4595ab9efdfec03e16752b58c', '[\"*\"]', NULL, NULL, '2022-12-03 04:11:04', '2022-12-03 04:11:04'),
(512, 'App\\Models\\User', 5, 'auth_token', '2766f78fe53b194c658e98c1fd00e3706dc773cc356495430b105e98116f4558', '[\"*\"]', NULL, NULL, '2022-12-03 04:11:44', '2022-12-03 04:11:44'),
(513, 'App\\Models\\User', 5, 'auth_token', '9747d3b1b43170136f023ddb00b0f64b67dac6307112e9d27e0545d441719e44', '[\"*\"]', NULL, NULL, '2022-12-03 04:12:03', '2022-12-03 04:12:03'),
(514, 'App\\Models\\User', 5, 'auth_token', '9d5c914c183567da2ba0c2720a6b8c79e0fcc140c9dd8774d74e801da4c03741', '[\"*\"]', NULL, NULL, '2022-12-03 04:12:14', '2022-12-03 04:12:14'),
(515, 'App\\Models\\User', 5, 'auth_token', '8b8d8f7804b2a00e16026353beeee5b0ecddb3aea4e461fad19fc335cd308598', '[\"*\"]', NULL, NULL, '2022-12-03 04:12:42', '2022-12-03 04:12:42'),
(516, 'App\\Models\\User', 5, 'auth_token', '58aaff366fb8273ba618f4855e0fbaead219e44e66354f56adafb88e39da96af', '[\"*\"]', NULL, NULL, '2022-12-03 04:12:55', '2022-12-03 04:12:55'),
(517, 'App\\Models\\User', 5, 'auth_token', '9dc7fa36f5e7dcc65b6b5172750478a7932c10691272aae6b75af48eb7f985ee', '[\"*\"]', NULL, NULL, '2022-12-03 04:13:09', '2022-12-03 04:13:09'),
(518, 'App\\Models\\User', 5, 'auth_token', '231621941881f0d09f76d15412870a367ced760bf80510d0c76ed662336aabaf', '[\"*\"]', NULL, NULL, '2022-12-03 04:13:33', '2022-12-03 04:13:33'),
(519, 'App\\Models\\User', 5, 'auth_token', '368d4ec821d8d774a92c530c42c7817a97920aa502697db2fa719a90fecc1095', '[\"*\"]', NULL, NULL, '2022-12-03 04:13:52', '2022-12-03 04:13:52'),
(520, 'App\\Models\\User', 5, 'auth_token', 'a09a786f0fb9ee7c6f79792e1a2d385fb7169d1e622d32fa1cdb57ed570f698c', '[\"*\"]', NULL, NULL, '2022-12-03 04:15:08', '2022-12-03 04:15:08'),
(521, 'App\\Models\\User', 5, 'auth_token', '62250ec62cdb87165452ee99d8fd4674ff0cd0ba1cb5fe9fa51ebb6f2a155944', '[\"*\"]', NULL, NULL, '2022-12-03 04:15:16', '2022-12-03 04:15:16'),
(522, 'App\\Models\\User', 5, 'auth_token', '9a973f7eb4bc0312ecb6feda3aa5db504b7ea934aa0debfb69579a17b5cae471', '[\"*\"]', NULL, NULL, '2022-12-03 04:15:23', '2022-12-03 04:15:23'),
(523, 'App\\Models\\User', 5, 'auth_token', '1a128e2a56af71a938e7cd478d452e314a0a33277d00a6eadb803a385723db04', '[\"*\"]', NULL, NULL, '2022-12-03 04:15:29', '2022-12-03 04:15:29'),
(524, 'App\\Models\\User', 5, 'auth_token', 'e06e01b198cc964979d177643083cf7b41a98b2837573634c0dcc8113720d598', '[\"*\"]', NULL, NULL, '2022-12-03 04:15:40', '2022-12-03 04:15:40'),
(525, 'App\\Models\\User', 5, 'auth_token', '89ec81a86fbf60e339b3af3998416fc87d3a804d47228583a5c8d2d1a43f19f0', '[\"*\"]', NULL, NULL, '2022-12-03 04:15:50', '2022-12-03 04:15:50'),
(526, 'App\\Models\\User', 5, 'auth_token', '1f77af5d2873e3682c6d6ba0ec587bb053771561823845335f000a52933e21b7', '[\"*\"]', NULL, NULL, '2022-12-03 22:31:00', '2022-12-03 22:31:00'),
(527, 'App\\Models\\User', 5, 'auth_token', 'f9e64415572f69e624d575d256e278febc04addf01d046923e1ff7a88238357d', '[\"*\"]', NULL, NULL, '2022-12-03 22:42:59', '2022-12-03 22:42:59'),
(528, 'App\\Models\\User', 5, 'auth_token', 'b2c337c5b535656474540393bd9e97bf60f31a151aee8efe66230cb24a61cfcb', '[\"*\"]', NULL, NULL, '2022-12-03 22:44:05', '2022-12-03 22:44:05'),
(529, 'App\\Models\\User', 5, 'auth_token', '6dbce4eec6ea7b35ea24d7f0ab1d29e096a9f3bd8b4ab799dd34241f8e64c056', '[\"*\"]', NULL, NULL, '2022-12-03 22:44:09', '2022-12-03 22:44:09'),
(530, 'App\\Models\\User', 5, 'auth_token', 'cb51c840b188c77a377db6977bbba3fd8fbfb6ebb9ebf59f53fa21ecbb6bb929', '[\"*\"]', NULL, NULL, '2022-12-03 22:48:48', '2022-12-03 22:48:48'),
(531, 'App\\Models\\User', 5, 'auth_token', '06d7e0bfe91652508310bd211c50dffc3eede74a8c1c2dcdf37908b095af76e8', '[\"*\"]', NULL, NULL, '2022-12-03 22:54:17', '2022-12-03 22:54:17'),
(532, 'App\\Models\\User', 5, 'auth_token', 'ffd46e708d3861c3771dcabf0544cfcb8037dba8eedcccc30f9f4e57a9277735', '[\"*\"]', NULL, NULL, '2022-12-03 22:54:25', '2022-12-03 22:54:25'),
(533, 'App\\Models\\User', 5, 'auth_token', '7b508525c07bcaf767584195eb7807033b9269a9702611eb5c3bb0835444fef8', '[\"*\"]', NULL, NULL, '2022-12-03 22:54:52', '2022-12-03 22:54:52'),
(534, 'App\\Models\\User', 5, 'auth_token', '48b1f66a0ec4416a64a33aa4bdd9092a2a7b7726fc192d8a0cd992fb6a0603bd', '[\"*\"]', NULL, NULL, '2022-12-03 22:55:09', '2022-12-03 22:55:09'),
(535, 'App\\Models\\User', 5, 'auth_token', '1ef17f196b7df435519788ee6a7e6618d604b69cdf4df9d6b80cace956609af3', '[\"*\"]', NULL, NULL, '2022-12-03 23:28:02', '2022-12-03 23:28:02'),
(536, 'App\\Models\\User', 5, 'auth_token', '408fb6380c0c1722775c5deadf8d19b2b3abc14255b9397bb5fc16f62df86a53', '[\"*\"]', NULL, NULL, '2022-12-03 23:29:13', '2022-12-03 23:29:13'),
(537, 'App\\Models\\User', 5, 'auth_token', '72dc1fc022cb8915cf2b5ca8669f3a4859f92adb5ebb40ec6d81b827bbeb8127', '[\"*\"]', NULL, NULL, '2022-12-03 23:31:31', '2022-12-03 23:31:31'),
(538, 'App\\Models\\User', 5, 'auth_token', 'c1416bf4da877e633aea9d9fd734ed8095fad9bae7ed5c1917f03dcf65123a87', '[\"*\"]', NULL, NULL, '2022-12-03 23:31:44', '2022-12-03 23:31:44'),
(539, 'App\\Models\\User', 5, 'auth_token', 'e0aace113d44b1035737f38e18159c292c3a11a8dd3f7c0ae4395bce137de540', '[\"*\"]', NULL, NULL, '2022-12-03 23:31:53', '2022-12-03 23:31:53'),
(540, 'App\\Models\\User', 5, 'auth_token', '2aa9656950e8eafa33aff8f1b2264fa20d16ceb68afe99a1bf559fec65a331d5', '[\"*\"]', NULL, NULL, '2022-12-03 23:44:07', '2022-12-03 23:44:07'),
(541, 'App\\Models\\User', 5, 'auth_token', '07136f979ab8b7ee03a83461eb40f72e6ff40666a1f2dee4885ffceecf3f76d1', '[\"*\"]', NULL, NULL, '2022-12-03 23:52:16', '2022-12-03 23:52:16'),
(542, 'App\\Models\\User', 5, 'auth_token', '67d70c7f0f5c75530e35e68284ec5a37251b2011534314a46cb69ef16ee5682a', '[\"*\"]', NULL, NULL, '2022-12-03 23:52:28', '2022-12-03 23:52:28'),
(543, 'App\\Models\\User', 5, 'auth_token', 'c4f48df889b5cd02b4bc56b6b8e8fb7ae75e3fa865f5f1685eef053ccbd302e6', '[\"*\"]', NULL, NULL, '2022-12-03 23:52:42', '2022-12-03 23:52:42'),
(544, 'App\\Models\\User', 5, 'auth_token', 'ed4e289bf102d78d07f7373db0228cf08c7998115f8ba48dab5f6a18d7f87628', '[\"*\"]', NULL, NULL, '2022-12-03 23:53:02', '2022-12-03 23:53:02'),
(545, 'App\\Models\\User', 5, 'auth_token', 'a059ee118d8744076beff242d10cee3e7b5e5fc715300a6082f056558918be24', '[\"*\"]', NULL, NULL, '2022-12-03 23:53:36', '2022-12-03 23:53:36'),
(546, 'App\\Models\\User', 5, 'auth_token', '44da24a7e68682a97d847f1715d6ab3752c9b33e603bfea530bb20a5cc7f84b1', '[\"*\"]', NULL, NULL, '2022-12-03 23:54:14', '2022-12-03 23:54:14'),
(547, 'App\\Models\\User', 5, 'auth_token', '07f8553c2a6dc6488cd56fe2c60f7a2c9c4444942c74f4bf9685deee382859f1', '[\"*\"]', NULL, NULL, '2022-12-03 23:54:32', '2022-12-03 23:54:32'),
(548, 'App\\Models\\User', 5, 'auth_token', '705463f41cf0f0444c26c238b585849cdc8a14d95f8a85e2237f85ac807d4870', '[\"*\"]', NULL, NULL, '2022-12-03 23:54:55', '2022-12-03 23:54:55'),
(549, 'App\\Models\\User', 1, 'auth_token', '633561125cab0f7ab1087a727da5bb50d7dac5d7de675bbc43e3cf00f2210f51', '[\"*\"]', NULL, NULL, '2022-12-03 23:56:19', '2022-12-03 23:56:19'),
(550, 'App\\Models\\User', 1, 'auth_token', '5ee513c0dea447294759004bbc2f27311c259b8fca1eee18c713339f50c78e26', '[\"*\"]', NULL, NULL, '2022-12-04 00:00:51', '2022-12-04 00:00:51'),
(551, 'App\\Models\\User', 1, 'auth_token', 'a22840d64714711d78dc7fa48a2d072f13d68758412572ab5b1d9cdd04959372', '[\"*\"]', NULL, NULL, '2022-12-04 00:44:36', '2022-12-04 00:44:36'),
(552, 'App\\Models\\User', 2, 'auth_token', '9a51887878cb414bbc5699f386e91330b7e80051f98ba266ba9bd8fe7c113f2f', '[\"*\"]', NULL, NULL, '2022-12-04 02:44:09', '2022-12-04 02:44:09'),
(553, 'App\\Models\\User', 5, 'auth_token', '5499b070830ded3aa8e59c933806f55c5ba0412f09d474df9861c5ee62811462', '[\"*\"]', NULL, NULL, '2022-12-04 02:44:27', '2022-12-04 02:44:27');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(554, 'App\\Models\\User', 1, 'auth_token', 'f4c5aadb6706cb01386d93de387cc12efa46b892de381fc056223f51a8d5ba8d', '[\"*\"]', NULL, NULL, '2022-12-05 10:51:06', '2022-12-05 10:51:06'),
(555, 'App\\Models\\User', 1, 'auth_token', '2f5d80f7beabde02a8e816a77e2c122e880817263ca5aabd958e198576e680b0', '[\"*\"]', NULL, NULL, '2022-12-07 20:09:53', '2022-12-07 20:09:53'),
(556, 'App\\Models\\User', 1, 'auth_token', '4546abce79dd7b530ad9a2427ce269800fe8d5b4a4fe6a4009ee4d19b035cb6e', '[\"*\"]', NULL, NULL, '2022-12-07 23:14:22', '2022-12-07 23:14:22'),
(557, 'App\\Models\\User', 1, 'auth_token', 'd7ee8930b73bdb0dc516c487c05db635d9957631a50738b6d00c060711536f61', '[\"*\"]', NULL, NULL, '2022-12-08 02:29:17', '2022-12-08 02:29:17'),
(558, 'App\\Models\\User', 1, 'auth_token', 'd5ec1c0a5db518b683b985c0b7d8744900d1456576fbbe4344847f88f129d6fc', '[\"*\"]', NULL, NULL, '2022-12-08 06:56:10', '2022-12-08 06:56:10'),
(559, 'App\\Models\\User', 1, 'auth_token', 'eae657362be9fed882aebe476ae81d250e7bcd37eea1f8b6f0982c1d611bdca9', '[\"*\"]', NULL, NULL, '2022-12-08 06:57:10', '2022-12-08 06:57:10'),
(560, 'App\\Models\\User', 1, 'auth_token', '42f467dfeae6b55018f2b3ba6ded41641879e20bc063b6556fa7d840632ee60f', '[\"*\"]', NULL, NULL, '2022-12-08 07:15:46', '2022-12-08 07:15:46'),
(561, 'App\\Models\\User', 1, 'auth_token', 'de4e41334bdfa0c88ae8c372346b7810295e23c758652a1336e6b1c4ba127105', '[\"*\"]', NULL, NULL, '2022-12-08 07:19:10', '2022-12-08 07:19:10'),
(562, 'App\\Models\\User', 1, 'auth_token', 'ce93419ceb0ec89c1f7d4f2f395535b4fa18d1ccb2914c95c79da6061ef07cb6', '[\"*\"]', NULL, NULL, '2022-12-08 07:21:53', '2022-12-08 07:21:53'),
(563, 'App\\Models\\User', 1, 'auth_token', 'cef512aed96ec2cfa06eeb361e8dfbd47e4cf3ca8088e79409eb5c6ffe621751', '[\"*\"]', NULL, NULL, '2022-12-08 07:22:21', '2022-12-08 07:22:21'),
(564, 'App\\Models\\User', 1, 'auth_token', '7b46821d11e527bc1f613dff1f2557fbffe5b233da19233b26dd9bd2a3a35edc', '[\"*\"]', NULL, NULL, '2022-12-08 07:23:27', '2022-12-08 07:23:27'),
(565, 'App\\Models\\User', 1, 'auth_token', 'e8977b8d017a0d90703995147e360f79769f3b32ba855aebaceb50adf7ae8648', '[\"*\"]', NULL, NULL, '2022-12-08 07:24:07', '2022-12-08 07:24:07'),
(566, 'App\\Models\\User', 1, 'auth_token', '634dfe7de02996e5c16bad4d12367407d3fc9793d7c7ad6398f797474fa8618d', '[\"*\"]', NULL, NULL, '2022-12-08 07:24:28', '2022-12-08 07:24:28'),
(567, 'App\\Models\\User', 1, 'auth_token', 'a1c15b42f64452d1eb28665104a4f4d344c2549e40f929491db105d8ec1b8c4e', '[\"*\"]', NULL, NULL, '2022-12-08 07:28:06', '2022-12-08 07:28:06'),
(568, 'App\\Models\\User', 1, 'auth_token', 'c5e470624fa0c21b340cbc48c94a506489281ca8853466d402ecaa9122eac537', '[\"*\"]', NULL, NULL, '2022-12-08 07:28:17', '2022-12-08 07:28:17'),
(569, 'App\\Models\\User', 1, 'auth_token', '228bcd1babd4af31ebf84e30d3c0675ee4d038af5b080c85850cb71c31a07df5', '[\"*\"]', NULL, NULL, '2022-12-08 07:28:25', '2022-12-08 07:28:25'),
(570, 'App\\Models\\User', 1, 'auth_token', '76157360a75d0630ca73259f8f7f0bac060da359468729112110c917e8732dfa', '[\"*\"]', NULL, NULL, '2022-12-08 07:28:37', '2022-12-08 07:28:37'),
(571, 'App\\Models\\User', 1, 'auth_token', '87dc7decd23b04f0c4dc1bb3ec968afa2306f0e75bebc4ad8eddf6a3cb126940', '[\"*\"]', NULL, NULL, '2022-12-08 07:29:37', '2022-12-08 07:29:37'),
(572, 'App\\Models\\User', 1, 'auth_token', '6c4d829eea286b7a792e7f318155350fa69137de2025c41bc8fd10c350582f24', '[\"*\"]', NULL, NULL, '2022-12-08 07:29:46', '2022-12-08 07:29:46'),
(573, 'App\\Models\\User', 1, 'auth_token', '0e540ec49c99d373cf82f0c9d3babced988bf40daacca609b02900359b21e372', '[\"*\"]', NULL, NULL, '2022-12-08 07:32:37', '2022-12-08 07:32:37'),
(574, 'App\\Models\\User', 1, 'auth_token', '5a02fc0b591dd1666d0e088ef2e695adb83386e79e5d7b8561f4697292425f2d', '[\"*\"]', NULL, NULL, '2022-12-08 07:32:49', '2022-12-08 07:32:49'),
(575, 'App\\Models\\User', 1, 'auth_token', '8b9582785d37eb0058ec6d6fdeb28023d29066e88e31744b58b38a0d9e8c9f25', '[\"*\"]', NULL, NULL, '2022-12-08 07:34:54', '2022-12-08 07:34:54'),
(576, 'App\\Models\\User', 1, 'auth_token', '55fa089829f0a68aa33d6f96a28b20835811404d0fc8f4bf8c9a7fd432549b26', '[\"*\"]', NULL, NULL, '2022-12-08 07:36:47', '2022-12-08 07:36:47'),
(577, 'App\\Models\\User', 1, 'auth_token', 'a2b613fdb91463839d07e9af9121a6407b228b1d8ef658c0495298a8567f8d45', '[\"*\"]', NULL, NULL, '2022-12-08 07:38:26', '2022-12-08 07:38:26'),
(578, 'App\\Models\\User', 1, 'auth_token', '4d487ce3ca2290abd7fc1c75114b04dbbd303ae9a52a57f4e9636503f7151ec8', '[\"*\"]', NULL, NULL, '2022-12-08 07:38:46', '2022-12-08 07:38:46'),
(579, 'App\\Models\\User', 1, 'auth_token', '17ec564f9bc446d5d0f689f496e36f302fe721ae30b79b804a4bfb921629ffd8', '[\"*\"]', NULL, NULL, '2022-12-08 07:40:30', '2022-12-08 07:40:30'),
(580, 'App\\Models\\User', 1, 'auth_token', 'd5dd68f481aa45ecb40985afe27f91f13a90fb4bac33958a75995016eb2f7722', '[\"*\"]', NULL, NULL, '2022-12-08 07:41:03', '2022-12-08 07:41:03'),
(581, 'App\\Models\\User', 1, 'auth_token', '2189b119177ee381bb1b4464d8a24537a146a26ac284316e8f144f45cd2a4afe', '[\"*\"]', NULL, NULL, '2022-12-08 07:41:16', '2022-12-08 07:41:16'),
(582, 'App\\Models\\User', 1, 'auth_token', '95a09e22d9d3bfb8a0b86a057894788b58de8b9d4cc88bf3f0af7ec7b6b42a16', '[\"*\"]', NULL, NULL, '2022-12-08 07:41:24', '2022-12-08 07:41:24'),
(583, 'App\\Models\\User', 1, 'auth_token', 'c8f73663ee7d16917bd380c62c4b53659cf83d209e02b966eb1b05f4fc7a0c4f', '[\"*\"]', NULL, NULL, '2022-12-08 07:41:46', '2022-12-08 07:41:46'),
(584, 'App\\Models\\User', 1, 'auth_token', '8f576a47ff1449e0a21a62486d2850ab1bb11d44bc7ed6f5198a63cb4e6e4297', '[\"*\"]', NULL, NULL, '2022-12-08 07:41:52', '2022-12-08 07:41:52'),
(585, 'App\\Models\\User', 1, 'auth_token', 'c6617a67ffd4072feb9335195259d212ddd0c6d8a805247a6e40590749b57efd', '[\"*\"]', NULL, NULL, '2022-12-08 07:42:37', '2022-12-08 07:42:37'),
(586, 'App\\Models\\User', 1, 'auth_token', '64250347e6b5b6cae739f9616ecbfe12ca5de169bb017604eaf1ec93ea39fd19', '[\"*\"]', NULL, NULL, '2022-12-08 07:42:59', '2022-12-08 07:42:59'),
(587, 'App\\Models\\User', 1, 'auth_token', '3a822e17a8cc72d9c78869616bec230cfe6ac9761bf0e43548d05ce87cfafdb3', '[\"*\"]', NULL, NULL, '2022-12-08 07:43:58', '2022-12-08 07:43:58'),
(588, 'App\\Models\\User', 1, 'auth_token', '96fa2e7ffaa98f03499919af6e9b3f406f2234ff8debd9ef53b11c642f339e78', '[\"*\"]', NULL, NULL, '2022-12-08 07:45:33', '2022-12-08 07:45:33'),
(589, 'App\\Models\\User', 1, 'auth_token', 'abed6d4db72d6967432d980dc620a27fe2aeaafd7545e5d57947b665e460a7f1', '[\"*\"]', NULL, NULL, '2022-12-08 07:46:06', '2022-12-08 07:46:06'),
(590, 'App\\Models\\User', 1, 'auth_token', 'bab4b120c24a203162f6b8278245363f7ab933f0f5150e5b2c03f058d41fd180', '[\"*\"]', NULL, NULL, '2022-12-08 07:46:48', '2022-12-08 07:46:48'),
(591, 'App\\Models\\User', 1, 'auth_token', '2be58a43593bb69c18059a74d39638316241b04fd4bb1fc93595f2d3ffcaf372', '[\"*\"]', NULL, NULL, '2022-12-08 12:05:19', '2022-12-08 12:05:19'),
(592, 'App\\Models\\User', 1, 'auth_token', '061b95a483473bd0244ab2d24bbf1368a188decb59732e121d97269d3e14ab45', '[\"*\"]', NULL, NULL, '2022-12-08 12:05:22', '2022-12-08 12:05:22'),
(593, 'App\\Models\\User', 1, 'auth_token', '4fc24c7d92bf41092d3e72bca742b08e783f8ad4678c5933d3d053d203ae1137', '[\"*\"]', NULL, NULL, '2022-12-08 12:05:29', '2022-12-08 12:05:29'),
(594, 'App\\Models\\User', 1, 'auth_token', 'a86c931b59759ba2233429c257b3fdde6f86cfc9104d586a8145464284bcd959', '[\"*\"]', NULL, NULL, '2022-12-08 12:06:01', '2022-12-08 12:06:01'),
(595, 'App\\Models\\User', 1, 'auth_token', 'd3866610d72eaa2a04fe7dacdea83f6423e641b93a19ac1cec2dee5242f615af', '[\"*\"]', NULL, NULL, '2022-12-08 12:10:56', '2022-12-08 12:10:56'),
(596, 'App\\Models\\User', 1, 'auth_token', '37fdcea52a6b01d0fef74f94b7035573e48cd339eac863948a5f449c86ac7d5e', '[\"*\"]', NULL, NULL, '2022-12-08 12:11:32', '2022-12-08 12:11:32'),
(597, 'App\\Models\\User', 1, 'auth_token', '7080ab58a813ed79800207ef82af29156c7cbe8690ccd1fdede7fb224e0f6785', '[\"*\"]', NULL, NULL, '2022-12-08 12:12:17', '2022-12-08 12:12:17'),
(598, 'App\\Models\\User', 1, 'auth_token', '62a808bc0652c0f70b58a25e661ffff2805cc639f677e97f2c4f06888cc54ed3', '[\"*\"]', NULL, NULL, '2022-12-08 12:12:44', '2022-12-08 12:12:44'),
(599, 'App\\Models\\User', 1, 'auth_token', '9945c5c6fe6f991df81bce9c16c53189c1c47be8be0a2cf7be77535535efcb9f', '[\"*\"]', NULL, NULL, '2022-12-08 12:13:19', '2022-12-08 12:13:19'),
(600, 'App\\Models\\User', 1, 'auth_token', '0f29e6ca5b10acd5af44adfa6773bab467491799dd2b2633b0dea92a517eba14', '[\"*\"]', NULL, NULL, '2022-12-08 12:15:27', '2022-12-08 12:15:27'),
(601, 'App\\Models\\User', 1, 'auth_token', 'ea88284307142e1011498bf4514394f448ee8924e1a503b8e241b356509b2df9', '[\"*\"]', NULL, NULL, '2022-12-08 12:16:00', '2022-12-08 12:16:00'),
(602, 'App\\Models\\User', 1, 'auth_token', 'ea7bb0e9054b944dcbb0880746f97bcfe2c140d1495f578aab423f0bd075c95a', '[\"*\"]', NULL, NULL, '2022-12-08 12:17:33', '2022-12-08 12:17:33'),
(603, 'App\\Models\\User', 1, 'auth_token', '187eb445adb3cdaf270198ca708a4569706dd05aba01dca8294931396de31073', '[\"*\"]', NULL, NULL, '2022-12-08 12:19:10', '2022-12-08 12:19:10'),
(604, 'App\\Models\\User', 1, 'auth_token', '5dc26b052527dd33eb4d6c8fc36697f6967618d106eaab86624957e5f4b94fca', '[\"*\"]', NULL, NULL, '2022-12-08 12:20:09', '2022-12-08 12:20:09'),
(605, 'App\\Models\\User', 1, 'auth_token', '8f201d858dd276e9226038487291cc569cd188d010f870157be0de319f6d2f31', '[\"*\"]', NULL, NULL, '2022-12-08 12:20:20', '2022-12-08 12:20:20'),
(606, 'App\\Models\\User', 1, 'auth_token', '5d9198d81dfc7720fc55929113644da6d3a194a2f6bbdc54fb5e30f97bb77750', '[\"*\"]', NULL, NULL, '2022-12-08 12:20:42', '2022-12-08 12:20:42'),
(607, 'App\\Models\\User', 1, 'auth_token', '0a32b269a06dc67694a9b07af48ec23eed5b17f5e2167caef5fd923d42af129e', '[\"*\"]', NULL, NULL, '2022-12-08 12:25:54', '2022-12-08 12:25:54'),
(608, 'App\\Models\\User', 1, 'auth_token', 'b1710e03da8791cb17c48a26fe9af654f73efc4bfb3821806e1930fe7ad4856c', '[\"*\"]', NULL, NULL, '2022-12-08 12:38:04', '2022-12-08 12:38:04'),
(609, 'App\\Models\\User', 1, 'auth_token', '842d5afbd16529e02aae929c8c05c475c4756115456ce1d8343f8ba862dbc0b1', '[\"*\"]', NULL, NULL, '2022-12-08 18:11:18', '2022-12-08 18:11:18'),
(610, 'App\\Models\\User', 1, 'auth_token', '7ea583d7db34d1eb72e5f94cd98c3ea45f10fa5743abad3ccc131bfb8222dadf', '[\"*\"]', NULL, NULL, '2022-12-08 18:14:52', '2022-12-08 18:14:52'),
(611, 'App\\Models\\User', 1, 'auth_token', 'c8b8852c3f4764c9980eec06f84d835c90a2879ca8062daa3a7a8ad543693ec1', '[\"*\"]', NULL, NULL, '2022-12-08 18:33:27', '2022-12-08 18:33:27'),
(612, 'App\\Models\\User', 1, 'auth_token', 'df4bc7d439cd644267add79f9ee4f14438e092dde3357818b29136aa78183efb', '[\"*\"]', NULL, NULL, '2022-12-08 21:42:41', '2022-12-08 21:42:41'),
(613, 'App\\Models\\User', 1, 'auth_token', 'cceba50d3a275a3a705476d4d7a107c28467f0b647fd3c3002b733cba32cd576', '[\"*\"]', NULL, NULL, '2022-12-09 11:54:35', '2022-12-09 11:54:35'),
(614, 'App\\Models\\User', 1, 'auth_token', 'd289cfb825c18b612a7d3b544781e521c8bcc57d126303920de18625cd9eab88', '[\"*\"]', NULL, NULL, '2022-12-10 01:38:31', '2022-12-10 01:38:31'),
(615, 'App\\Models\\User', 1, 'auth_token', '43b213c070ca9be5a149afdb2a33ad51ef9283bb16d82244e4ea787481d7194b', '[\"*\"]', NULL, NULL, '2022-12-10 02:54:21', '2022-12-10 02:54:21'),
(616, 'App\\Models\\User', 1, 'auth_token', '43d5c6388ffa24745050c8f688700599533c426f9ed6e4554c6c2b5d9b0d2e97', '[\"*\"]', NULL, NULL, '2022-12-10 03:35:04', '2022-12-10 03:35:04'),
(617, 'App\\Models\\User', 23, 'auth_token', '9cf33ab2ec89ae0e906e49381ed1a1213a3f126119fcc06d2e0533cf08f4d828', '[\"*\"]', NULL, NULL, '2022-12-10 03:51:01', '2022-12-10 03:51:01'),
(618, 'App\\Models\\User', 23, 'auth_token', '241f3d63eef90cf1a170f1d0fe8d7e1f6227b01360e4da7cbfea7725acfbd9f7', '[\"*\"]', NULL, NULL, '2022-12-10 03:51:47', '2022-12-10 03:51:47'),
(619, 'App\\Models\\User', 1, 'auth_token', '040f4b3868f19c5ca31feed7395364bd05ee6bfd5ed93ec7871f310891c65afa', '[\"*\"]', NULL, NULL, '2022-12-10 03:53:39', '2022-12-10 03:53:39'),
(620, 'App\\Models\\User', 23, 'auth_token', 'c947d588524e37b0c15300ab81798417194d3d816e3ec3b97da7f7793c1f23d9', '[\"*\"]', NULL, NULL, '2022-12-10 03:53:54', '2022-12-10 03:53:54'),
(621, 'App\\Models\\User', 23, 'auth_token', '31f1df8a4196d3c32dae4e722dba82a494178a978dda956e2b10d2ca8ecb9d8c', '[\"*\"]', NULL, NULL, '2022-12-10 03:55:06', '2022-12-10 03:55:06'),
(622, 'App\\Models\\User', 1, 'auth_token', 'f2e9bbfe4a39eb5c67f43fde47bd6519f4b781e1d7f9cd17734d7a3b5da2da96', '[\"*\"]', NULL, NULL, '2022-12-10 03:55:28', '2022-12-10 03:55:28'),
(623, 'App\\Models\\User', 1, 'auth_token', '14c1f2f9be765b8c7eec020a5d3bc94ab29f52f6b8a4126e5621d9037bc28e56', '[\"*\"]', NULL, NULL, '2022-12-10 03:56:30', '2022-12-10 03:56:30'),
(624, 'App\\Models\\User', 1, 'auth_token', '31e7c24f301de2fbe4cdfc58c5462e1588b6ac7e6ebc06e417be9a711f1180eb', '[\"*\"]', NULL, NULL, '2022-12-10 03:57:53', '2022-12-10 03:57:53'),
(625, 'App\\Models\\User', 23, 'auth_token', '95ea238cb5ad5edcf28f4e23a0e9fdceb50fceb52eb6b4ca5be470a3055a7374', '[\"*\"]', NULL, NULL, '2022-12-10 04:16:15', '2022-12-10 04:16:15'),
(626, 'App\\Models\\User', 23, 'auth_token', '1ca69be148e55cdc4d69177a1bf236228b1ee3376029ac62a0e9858a7aadcdb6', '[\"*\"]', NULL, NULL, '2022-12-10 04:21:06', '2022-12-10 04:21:06'),
(627, 'App\\Models\\User', 1, 'auth_token', '505567874b09139198a06cdbc0e78f07308620cab78f461284d67653f0038956', '[\"*\"]', NULL, NULL, '2022-12-10 04:25:30', '2022-12-10 04:25:30'),
(628, 'App\\Models\\User', 23, 'auth_token', '5ab7205d1fa58cb9b7c5613f6a1e0ef53750488932f44e477faa8c3588e22e04', '[\"*\"]', NULL, NULL, '2022-12-10 04:25:37', '2022-12-10 04:25:37'),
(629, 'App\\Models\\User', 1, 'auth_token', 'ed1e057dde6ea40f0a32d5e732778ae89bb9ed35f8692362fb9726608f34e24d', '[\"*\"]', NULL, NULL, '2022-12-10 04:33:09', '2022-12-10 04:33:09'),
(630, 'App\\Models\\User', 23, 'auth_token', '2b153ed5da9888a9c8f04ebbc518c9143986c5963c64522810de2c357179cdf7', '[\"*\"]', NULL, NULL, '2022-12-10 07:25:36', '2022-12-10 07:25:36'),
(631, 'App\\Models\\User', 1, 'auth_token', 'bacb5bb18a681143a53cf468a23320b34cabbba4ccef83f73758ef6cf81cdc5e', '[\"*\"]', NULL, NULL, '2022-12-10 07:28:34', '2022-12-10 07:28:34'),
(632, 'App\\Models\\User', 23, 'auth_token', '93b9b313bf12b5c90279471d7b628806a4430a4ec962076247bcb72306d00a86', '[\"*\"]', NULL, NULL, '2022-12-10 07:35:51', '2022-12-10 07:35:51'),
(633, 'App\\Models\\User', 23, 'auth_token', '3c6b8dac4e150f357310590b8c96db56d3c0fbd1c634c3ded5386506e5e79d62', '[\"*\"]', NULL, NULL, '2022-12-10 07:36:14', '2022-12-10 07:36:14'),
(634, 'App\\Models\\User', 23, 'auth_token', '8440f8a775c578e92664a097700b22c5d9157add41a4388d84087873234a362b', '[\"*\"]', NULL, NULL, '2022-12-10 07:36:22', '2022-12-10 07:36:22'),
(635, 'App\\Models\\User', 23, 'auth_token', '1a366415bb4bda170c55421640e7f8a59cdf7103733b69ae54129a9e848a49fd', '[\"*\"]', NULL, NULL, '2022-12-10 07:38:24', '2022-12-10 07:38:24'),
(636, 'App\\Models\\User', 1, 'auth_token', '028a32542f676ea447c3db4fd69eb9cd3d00a28a743078f13260529b2bf35924', '[\"*\"]', NULL, NULL, '2022-12-10 07:38:59', '2022-12-10 07:38:59'),
(637, 'App\\Models\\User', 1, 'auth_token', 'b563239b99c9e3863b3ab381bc08c7985de36530ee5a03c4ff283fb0633c6aeb', '[\"*\"]', NULL, NULL, '2022-12-10 07:39:15', '2022-12-10 07:39:15'),
(638, 'App\\Models\\User', 1, 'auth_token', '7f53e3f1ee2d4d337a85d6c1a1f79e8fc03edba2305cc35e3ae90a7ce6a4545c', '[\"*\"]', NULL, NULL, '2022-12-10 07:39:31', '2022-12-10 07:39:31'),
(639, 'App\\Models\\User', 1, 'auth_token', '7d380ad2ce91601c7c7468633384be5d90d112ed480821b268781d65a4db84f0', '[\"*\"]', NULL, NULL, '2022-12-10 07:39:47', '2022-12-10 07:39:47'),
(640, 'App\\Models\\User', 1, 'auth_token', 'a7a2531d7d7656e0086db92b92f01d6139ea9b8d9d78ff358e41a0bab3066783', '[\"*\"]', NULL, NULL, '2022-12-10 07:40:28', '2022-12-10 07:40:28'),
(641, 'App\\Models\\User', 1, 'auth_token', '9d624e1c01f13b813b5b447f9daab163214cd9c3877ccf0a849fa4a5572e25ca', '[\"*\"]', NULL, NULL, '2022-12-10 07:40:57', '2022-12-10 07:40:57'),
(642, 'App\\Models\\User', 23, 'auth_token', '0418984f0b9fe8572ac97066d2be74b8457b3fbca40519a9eb10edcfec663b56', '[\"*\"]', NULL, NULL, '2022-12-10 07:41:11', '2022-12-10 07:41:11'),
(643, 'App\\Models\\User', 1, 'auth_token', '6628d72ac62a2786683fb5dd86c08c09fecdff40bc8500e65a1c07975a5628ff', '[\"*\"]', NULL, NULL, '2022-12-10 07:49:31', '2022-12-10 07:49:31'),
(644, 'App\\Models\\User', 1, 'auth_token', '4cb59925c7118724e08118bff5174bc36e2f024351c7292e0a61594baad54fb3', '[\"*\"]', NULL, NULL, '2022-12-10 21:41:30', '2022-12-10 21:41:30'),
(645, 'App\\Models\\User', 1, 'auth_token', 'b3c046122b60a7d66dcaef7c4f8cd85656215602a764f3a4af7fec96453e0ac3', '[\"*\"]', NULL, NULL, '2022-12-12 07:48:07', '2022-12-12 07:48:07'),
(646, 'App\\Models\\User', 1, 'auth_token', '5447582f8a068433658c9e0e5a45571b33977aac0abf4618678f9d6b1c3d9002', '[\"*\"]', NULL, NULL, '2022-12-12 21:18:29', '2022-12-12 21:18:29'),
(647, 'App\\Models\\User', 1, 'auth_token', '38dd06e98359dba849051cf7cb9e934615dac78ffb8af56f003628c612cd3825', '[\"*\"]', NULL, NULL, '2022-12-13 02:10:44', '2022-12-13 02:10:44'),
(648, 'App\\Models\\User', 1, 'auth_token', '13a9fabea9d4fe5a3ab82a2d9ae5441ba9755475791bce58144c655586d0dbc0', '[\"*\"]', NULL, NULL, '2022-12-13 19:39:36', '2022-12-13 19:39:36'),
(649, 'App\\Models\\User', 1, 'auth_token', 'd9f880a652bbe4320d558933de517b6f8d2d0bd9b0a6bcab003f0767ffa9a51c', '[\"*\"]', NULL, NULL, '2022-12-13 19:39:37', '2022-12-13 19:39:37'),
(650, 'App\\Models\\User', 1, 'auth_token', '6ce5320edb2f7f5cbb9e456f885724ed8566ad7b8cf349da4b8aff28a4ccd13d', '[\"*\"]', NULL, NULL, '2022-12-13 21:43:39', '2022-12-13 21:43:39'),
(651, 'App\\Models\\User', 1, 'auth_token', '832e76a83b1dd63c2b88a451883e19e05e6d9856cfd80ae98075b0be1c190305', '[\"*\"]', NULL, NULL, '2022-12-14 00:34:51', '2022-12-14 00:34:51'),
(652, 'App\\Models\\User', 1, 'auth_token', 'ac3ba556a20d7bd72c093337bd91c85036eaa5143ddb66b575a2fc5ecec082aa', '[\"*\"]', NULL, NULL, '2022-12-14 03:41:30', '2022-12-14 03:41:30'),
(653, 'App\\Models\\User', 1, 'auth_token', '6438756e9deb91a623d1eab45314502fbf108192e49de37594cba343552b36cd', '[\"*\"]', NULL, NULL, '2022-12-14 03:51:13', '2022-12-14 03:51:13'),
(654, 'App\\Models\\User', 1, 'auth_token', '6862b62771a54cff999eddf36f853d4feea33986bdae615243de9e5505d7d059', '[\"*\"]', NULL, NULL, '2022-12-14 20:04:29', '2022-12-14 20:04:29'),
(655, 'App\\Models\\User', 1, 'auth_token', 'd78aa1aaf8c499fcd40d8e04187cc8f9dfbae2e2880edf9f61c26eb4e2eab898', '[\"*\"]', NULL, NULL, '2022-12-14 21:18:22', '2022-12-14 21:18:22'),
(656, 'App\\Models\\User', 1, 'auth_token', '8e5b1493d9ecff93d9bdcb6bb9ff29cb92525448a36e5761152d27fec0f8042a', '[\"*\"]', NULL, NULL, '2022-12-14 21:18:23', '2022-12-14 21:18:23'),
(657, 'App\\Models\\User', 1, 'auth_token', 'fbf7b06fb32043da41a362794a9c2a8cf6114df9c02ad2c2fb125a04793efc02', '[\"*\"]', NULL, NULL, '2022-12-14 21:18:23', '2022-12-14 21:18:23'),
(658, 'App\\Models\\User', 1, 'auth_token', '1a942ff71d5ae1f2ca38b1a7435f59ffc9fb3d9525cf085128d8747cd5c20e0a', '[\"*\"]', NULL, NULL, '2022-12-15 03:30:40', '2022-12-15 03:30:40'),
(659, 'App\\Models\\User', 1, 'auth_token', 'cd85e92701f1d6a4f5a7213b1ddd83c96b230a08eb6b6d93ff5b83417b67bc50', '[\"*\"]', NULL, NULL, '2022-12-15 04:35:00', '2022-12-15 04:35:00'),
(660, 'App\\Models\\User', 1, 'auth_token', 'c8e62f64bc909242372aac357beeb53f808887dcbcfb4c12799d4f4afef41fb5', '[\"*\"]', NULL, NULL, '2022-12-15 07:53:37', '2022-12-15 07:53:37'),
(661, 'App\\Models\\User', 1, 'auth_token', 'b06d347014cd898efda0b9e9cc0ef0e719add72c9c2e839d6b6d081870e9a023', '[\"*\"]', NULL, NULL, '2022-12-15 07:53:38', '2022-12-15 07:53:38'),
(662, 'App\\Models\\User', 1, 'auth_token', '17082c4c7d3a72d3bb9a0ad02a59de999cd92bfe0309acd2e1936fde57e44896', '[\"*\"]', NULL, NULL, '2022-12-15 19:12:00', '2022-12-15 19:12:00'),
(663, 'App\\Models\\User', 1, 'auth_token', '26dbd0590e4462c8572184278130903694c44b18211f0915cf097261c659210a', '[\"*\"]', NULL, NULL, '2022-12-16 02:32:38', '2022-12-16 02:32:38'),
(664, 'App\\Models\\User', 1, 'auth_token', '7b9b7d0a4741b92fe29a880a94f224d063e6f57aae59fb6bf4f9348154f8a024', '[\"*\"]', NULL, NULL, '2022-12-16 03:35:55', '2022-12-16 03:35:55'),
(665, 'App\\Models\\User', 1, 'auth_token', '7ebf4e9e59975783822cc703d7135dda077315a675b09fa858029552a45b8d68', '[\"*\"]', NULL, NULL, '2022-12-16 08:21:18', '2022-12-16 08:21:18'),
(666, 'App\\Models\\User', 1, 'auth_token', '4aea253979091bebbbe85e6e1780835f1ca53c9bb2f45d12803ad471e2bc6cc4', '[\"*\"]', NULL, NULL, '2022-12-16 08:25:11', '2022-12-16 08:25:11'),
(667, 'App\\Models\\User', 1, 'auth_token', '8873c79c8148e5e8553ce6d380782c4517bdf2077734dc7971ca51750abb2c52', '[\"*\"]', NULL, NULL, '2022-12-16 18:01:20', '2022-12-16 18:01:20'),
(668, 'App\\Models\\User', 23, 'auth_token', '7bb8c8d494e9ca32dff6168f15c16d75d34688ba2467f8a7a6045a90894afca6', '[\"*\"]', NULL, NULL, '2022-12-16 18:34:10', '2022-12-16 18:34:10'),
(669, 'App\\Models\\User', 2, 'auth_token', '62699e7e34636764bef3b46168ae5f355cd79f06377a252a533bdde7bf414e0b', '[\"*\"]', NULL, NULL, '2022-12-16 18:34:35', '2022-12-16 18:34:35'),
(670, 'App\\Models\\User', 2, 'auth_token', 'a64ca26e3034ab99be4e56ae8a177a56e105c9771e52d94d7bbfa02fcf5f60d9', '[\"*\"]', NULL, NULL, '2022-12-16 18:35:02', '2022-12-16 18:35:02'),
(671, 'App\\Models\\User', 2, 'auth_token', '976c80e067a8495eadf5eaf520b8d7840d23f4b102b8baa60c87c6189d3ed10d', '[\"*\"]', NULL, NULL, '2022-12-16 18:35:35', '2022-12-16 18:35:35'),
(672, 'App\\Models\\User', 2, 'auth_token', 'ea37c7107f1b6a436440423688e82bb520c53f72c59ebacada50b67b97ef7c65', '[\"*\"]', NULL, NULL, '2022-12-16 18:36:10', '2022-12-16 18:36:10'),
(673, 'App\\Models\\User', 1, 'auth_token', '6d6e005d4ca59c1d2dbaf3ba1f06704a6eb40b913cb8bd3a52849b78e8802725', '[\"*\"]', NULL, NULL, '2022-12-17 09:47:43', '2022-12-17 09:47:43'),
(674, 'App\\Models\\User', 1, 'auth_token', '0c475e038c57c8319026f99d07926c53964bb6d52796bb1908eccd954b865693', '[\"*\"]', NULL, NULL, '2022-12-19 10:32:42', '2022-12-19 10:32:42'),
(675, 'App\\Models\\User', 1, 'auth_token', 'fb8b44fac8d41b5beb63fda050fde5581cf9679358c3340702bd033c8e57ded2', '[\"*\"]', NULL, NULL, '2022-12-20 01:10:00', '2022-12-20 01:10:00'),
(676, 'App\\Models\\User', 1, 'auth_token', 'af75d484c8d43dd0b63c5bb798de1053c6a4dcff8c9074f8ab06a1e92342bdef', '[\"*\"]', NULL, NULL, '2022-12-20 06:15:57', '2022-12-20 06:15:57'),
(677, 'App\\Models\\User', 1, 'auth_token', '4f4107b57322355caf8e8cc6cdb9e5cbb295e4eb38bef3cbe9741792505508b7', '[\"*\"]', NULL, NULL, '2022-12-20 06:15:58', '2022-12-20 06:15:58'),
(678, 'App\\Models\\User', 1, 'auth_token', 'a97c209ae77dd53a5aabd144fbc6ed980ebad8ceab9483dc335d317aba8fca4e', '[\"*\"]', NULL, NULL, '2022-12-20 06:16:07', '2022-12-20 06:16:07'),
(679, 'App\\Models\\User', 1, 'auth_token', 'b17f55b1647f4762295649c7ce7d94d5828983e9a31fd2c08f74d8087e3e2ede', '[\"*\"]', NULL, NULL, '2022-12-20 06:18:14', '2022-12-20 06:18:14'),
(680, 'App\\Models\\User', 1, 'auth_token', '3e1093247666508282968d8dbc68d9754fc7d8e26c2365a83ca321dbb5013de8', '[\"*\"]', NULL, NULL, '2022-12-20 07:46:12', '2022-12-20 07:46:12'),
(681, 'App\\Models\\User', 1, 'auth_token', '5c46c95139978c7677bbca74edbf36ae739a3d58889639bd82aee486d37354f8', '[\"*\"]', NULL, NULL, '2022-12-20 07:47:09', '2022-12-20 07:47:09'),
(682, 'App\\Models\\User', 1, 'auth_token', '8042f95fed2ea64724e0d73716c0c8c477a4d3f0fda8e663168f14bd5f5bb244', '[\"*\"]', NULL, NULL, '2022-12-20 08:04:52', '2022-12-20 08:04:52'),
(683, 'App\\Models\\User', 1, 'auth_token', 'daa33618eacc5a451603ddd31dfc402470b8b2478c358e137613d6d98bcac339', '[\"*\"]', NULL, NULL, '2022-12-20 08:06:25', '2022-12-20 08:06:25'),
(684, 'App\\Models\\User', 1, 'auth_token', 'e4bb1d65ad482bedb6054da985004853eef84c993db6303d5103dbf3af3c220b', '[\"*\"]', NULL, NULL, '2022-12-20 08:06:51', '2022-12-20 08:06:51'),
(685, 'App\\Models\\User', 1, 'auth_token', 'df740c54330d9665d860db9dd58667c95f3a0ce9e989f0e196982d670146ee01', '[\"*\"]', NULL, NULL, '2022-12-20 08:07:23', '2022-12-20 08:07:23'),
(686, 'App\\Models\\User', 1, 'auth_token', '9bba6ed3ae2cbf73e1261281e8554a4cc1ae76a73a831197a799e94c0719e10b', '[\"*\"]', NULL, NULL, '2022-12-20 08:09:57', '2022-12-20 08:09:57'),
(687, 'App\\Models\\User', 1, 'auth_token', 'a8838b4977ce765e273ac254c301013c40f47045884afbb817ab7e7df1d6c9d1', '[\"*\"]', NULL, NULL, '2022-12-20 08:10:32', '2022-12-20 08:10:32'),
(688, 'App\\Models\\User', 23, 'auth_token', '2d4ef089f381b0800ca8c8dab7ecb18b0c05d3a69a54b413103dd13b6b6fca86', '[\"*\"]', NULL, NULL, '2022-12-20 08:11:07', '2022-12-20 08:11:07'),
(689, 'App\\Models\\User', 1, 'auth_token', '32b40e826578767b98a4120319e4c6b8d7608582a2a61435749540bbd0af7944', '[\"*\"]', NULL, NULL, '2022-12-20 08:18:38', '2022-12-20 08:18:38'),
(690, 'App\\Models\\User', 1, 'auth_token', '4b02fed4dd77f4ed496de6b1f8dfe9d2a8a0764d583570faef45af582a9b1039', '[\"*\"]', NULL, NULL, '2022-12-20 08:19:11', '2022-12-20 08:19:11'),
(691, 'App\\Models\\User', 1, 'auth_token', 'd20ff5c2937dbb90e933f9acf6807b39a1e7ebedfc42896ff65fcbe18c984b7d', '[\"*\"]', NULL, NULL, '2022-12-20 08:19:50', '2022-12-20 08:19:50'),
(692, 'App\\Models\\User', 1, 'auth_token', 'c8cc2bcaa9147f9bb9b600a4f7679cb6f3fbd22c74cf1cfc4c0f0bd2c76c792c', '[\"*\"]', NULL, NULL, '2022-12-20 08:20:53', '2022-12-20 08:20:53'),
(693, 'App\\Models\\User', 1, 'auth_token', 'c07c756b1259e35cc08d89ad6b716a4f3f17d5a744dab029b7245fb38df39e63', '[\"*\"]', NULL, NULL, '2022-12-20 08:29:44', '2022-12-20 08:29:44'),
(694, 'App\\Models\\User', 1, 'auth_token', 'c7aa41efb8672c0fac369bd3dce71b2e3508a5045ecef341138ddde9dc7df64c', '[\"*\"]', NULL, NULL, '2022-12-20 08:29:44', '2022-12-20 08:29:44'),
(695, 'App\\Models\\User', 1, 'auth_token', 'e7b3a54b19d232b2964f97c90d34908d1d51753da5294c680cd258a9c8967864', '[\"*\"]', NULL, NULL, '2022-12-20 08:39:29', '2022-12-20 08:39:29'),
(696, 'App\\Models\\User', 1, 'auth_token', 'e1c93482f525a576fbb8fd756db02a5a23a09d0dd0b69f45e5f2f46a9a4a2eeb', '[\"*\"]', NULL, NULL, '2022-12-20 08:45:21', '2022-12-20 08:45:21'),
(697, 'App\\Models\\User', 1, 'auth_token', 'af06e66bcce500274190a2c04bc42e7049b7d432bb31e27996407bdf4b0951a3', '[\"*\"]', NULL, NULL, '2022-12-20 08:46:22', '2022-12-20 08:46:22'),
(698, 'App\\Models\\User', 1, 'auth_token', '4f21904899449a5f7263bc56e7439b6ffe7a2a2a60870b0c0d813d0b2fd7c474', '[\"*\"]', NULL, NULL, '2022-12-20 08:48:01', '2022-12-20 08:48:01'),
(699, 'App\\Models\\User', 1, 'auth_token', '4d56c7baff477e32342a985d914a0c053f58eb7b23e64c6c73b33e1185581dd8', '[\"*\"]', NULL, NULL, '2022-12-20 08:49:58', '2022-12-20 08:49:58'),
(700, 'App\\Models\\User', 1, 'auth_token', 'e737f0423e12393fdae7f6bdbd5a36c41c6f04e78496f41c4e1e73e46e59bae7', '[\"*\"]', NULL, NULL, '2022-12-20 08:50:55', '2022-12-20 08:50:55'),
(701, 'App\\Models\\User', 1, 'auth_token', '5bba3fede43bdb72069316677855503f9117add7a1a3eac8b80740f81ee00fc8', '[\"*\"]', NULL, NULL, '2022-12-20 08:51:05', '2022-12-20 08:51:05'),
(702, 'App\\Models\\User', 1, 'auth_token', 'd735d53c82c459376ec5a506ff63d5dad554eafd65b3898537cf62ed93f6ad72', '[\"*\"]', NULL, NULL, '2022-12-20 08:51:29', '2022-12-20 08:51:29'),
(703, 'App\\Models\\User', 1, 'auth_token', 'e84c896524ddaa7b3ffa62f8dca34c0fd6f78e8a46d15eae90600fc99d28f93f', '[\"*\"]', NULL, NULL, '2022-12-20 08:53:47', '2022-12-20 08:53:47'),
(704, 'App\\Models\\User', 1, 'auth_token', 'c9e1bb2e6d2b5649ebfa085f4d32e255ff3042b24e73ef47eb548269805f99aa', '[\"*\"]', NULL, NULL, '2022-12-20 08:55:45', '2022-12-20 08:55:45'),
(705, 'App\\Models\\User', 1, 'auth_token', 'f91acd14cf702834cc75aa99d14e915a85c7d1d1d9c28a0a3c683e094b668237', '[\"*\"]', NULL, NULL, '2022-12-20 08:59:53', '2022-12-20 08:59:53'),
(706, 'App\\Models\\User', 1, 'auth_token', '79334194b0b81164ccd8f341285d4b7c0dcaf4bf2b649b7e686669908b10dd86', '[\"*\"]', NULL, NULL, '2022-12-20 09:00:14', '2022-12-20 09:00:14'),
(707, 'App\\Models\\User', 1, 'auth_token', '88f0893f677b49a9057fc39368d7ef8b2c5e8d3f656f5f064aa2e69c5e319961', '[\"*\"]', NULL, NULL, '2022-12-20 09:00:23', '2022-12-20 09:00:23'),
(708, 'App\\Models\\User', 1, 'auth_token', '1a9024e881727800a47305d1c0c1134d62857a0f1fb51d3e518796a01c2db649', '[\"*\"]', NULL, NULL, '2022-12-20 09:00:33', '2022-12-20 09:00:33'),
(709, 'App\\Models\\User', 1, 'auth_token', '609e5a5d89f99ee6f5228e7ab145b4502ec7659092991e0e4126020a3a71e50e', '[\"*\"]', NULL, NULL, '2022-12-20 09:00:41', '2022-12-20 09:00:41'),
(710, 'App\\Models\\User', 1, 'auth_token', 'a2a2eeb1f994d8b8674df4332b4be070ea7f7cc8bf1d26e3315b322b2b489978', '[\"*\"]', NULL, NULL, '2022-12-20 09:09:31', '2022-12-20 09:09:31'),
(711, 'App\\Models\\User', 1, 'auth_token', '9b2b35d3ae7d47e47842cd87fdc1bfdd797520ec57dee548ffc3cfdb59542be6', '[\"*\"]', NULL, NULL, '2022-12-21 06:33:12', '2022-12-21 06:33:12'),
(712, 'App\\Models\\User', 1, 'auth_token', '25fd66d9bbd9971f5459e2233e0fda5b716c7a415d599f7c51587550972a2d17', '[\"*\"]', NULL, NULL, '2022-12-21 09:34:50', '2022-12-21 09:34:50'),
(713, 'App\\Models\\User', 1, 'auth_token', '76e265a919bbbe15cf2757d8afc2bff2d92a05b0fc29a37e9ebbaf382fae7f85', '[\"*\"]', NULL, NULL, '2022-12-21 20:46:51', '2022-12-21 20:46:51'),
(714, 'App\\Models\\User', 2, 'auth_token', '7b41296f5f758d149f49c53ce139d7c16c44d71464b4c94826d63ea30bae7080', '[\"*\"]', NULL, NULL, '2022-12-21 21:04:03', '2022-12-21 21:04:03'),
(715, 'App\\Models\\User', 1, 'auth_token', 'bb22913c8af06124c7913bdeec5686634c50b859ed5924c1a0277ab8ce4662e2', '[\"*\"]', NULL, NULL, '2022-12-21 21:44:33', '2022-12-21 21:44:33'),
(716, 'App\\Models\\User', 1, 'auth_token', '3c43ee558df700ae333c3fe2431019e00e5053cdb2df6a2822f59d4b769d7b59', '[\"*\"]', NULL, NULL, '2022-12-21 23:52:55', '2022-12-21 23:52:55'),
(717, 'App\\Models\\User', 1, 'auth_token', 'bd0cdd3fc982615005310229e22dec33fd8ea7876475f574484bbea61c1262f7', '[\"*\"]', NULL, NULL, '2022-12-22 00:16:42', '2022-12-22 00:16:42'),
(718, 'App\\Models\\User', 1, 'auth_token', '27ee231f14dddea0f2c40ceec78a952e0b1cf2f33bb16c1c700722595b6815a0', '[\"*\"]', NULL, NULL, '2022-12-22 07:46:50', '2022-12-22 07:46:50'),
(719, 'App\\Models\\User', 1, 'auth_token', '9b16529db74834032fcc8dd4181400e69126990b331c464a0dd8f339accebab8', '[\"*\"]', NULL, NULL, '2022-12-22 07:47:01', '2022-12-22 07:47:01'),
(720, 'App\\Models\\User', 1, 'auth_token', '7f4d2355e8c9dfcfc2533a2afe9b64ccf5e0d327191cc9899240aa3e6acde768', '[\"*\"]', NULL, NULL, '2022-12-22 19:52:24', '2022-12-22 19:52:24'),
(721, 'App\\Models\\User', 1, 'auth_token', 'ca414ae8a24b5a972a40ad82e5e9b50882b05237eaf6f4a2b1daf9dc5c678642', '[\"*\"]', NULL, NULL, '2022-12-22 21:59:49', '2022-12-22 21:59:49'),
(722, 'App\\Models\\User', 1, 'auth_token', '4f497e5e5687323f9a8ac5c19169c635aa753b461e94063728f607eaf344c20f', '[\"*\"]', NULL, NULL, '2022-12-22 22:31:46', '2022-12-22 22:31:46'),
(723, 'App\\Models\\User', 1, 'auth_token', '4667352b2c8a1270bafbba9d40e69087f572a127cf642bac297f52937c10d238', '[\"*\"]', NULL, NULL, '2022-12-22 22:31:47', '2022-12-22 22:31:47'),
(724, 'App\\Models\\User', 1, 'auth_token', 'ebd19790795686b4597d29f26c4f1c3d1323c1867a3431469899fd1edaf49bb4', '[\"*\"]', NULL, NULL, '2022-12-22 23:06:13', '2022-12-22 23:06:13'),
(725, 'App\\Models\\User', 1, 'auth_token', '4584ebd16c89e450e12c2c6d774781611a52aa83b9f56210749cf805efdc5cb9', '[\"*\"]', NULL, NULL, '2022-12-22 23:11:31', '2022-12-22 23:11:31'),
(726, 'App\\Models\\User', 1, 'auth_token', 'c5e1e39cd244906c174824186119a59a174814c8172f566843477179ec0195a8', '[\"*\"]', NULL, NULL, '2022-12-22 23:11:46', '2022-12-22 23:11:46'),
(727, 'App\\Models\\User', 1, 'auth_token', '7fd218c2924431b2df35c0ae1e686546b521de5406fbb92284f2b4b905a8507e', '[\"*\"]', NULL, NULL, '2022-12-23 04:51:53', '2022-12-23 04:51:53'),
(728, 'App\\Models\\User', 1, 'auth_token', '034aba8439f7ccfeb84a00339318f0c26c22299b20d64f288b1aab3c9e3fc61f', '[\"*\"]', NULL, NULL, '2022-12-23 06:35:46', '2022-12-23 06:35:46'),
(729, 'App\\Models\\User', 1, 'auth_token', '04304deebce201bc9c25de7a8de1ab5778c42c76d3108467de532d11fb576df1', '[\"*\"]', NULL, NULL, '2022-12-23 21:08:17', '2022-12-23 21:08:17'),
(730, 'App\\Models\\User', 52, 'auth_token', '9db1ae531382fb2fe040c3caf0431f09dd040ee0cc72b859d3261b1a409cfc5e', '[\"*\"]', NULL, NULL, '2022-12-23 22:44:34', '2022-12-23 22:44:34'),
(731, 'App\\Models\\User', 1, 'auth_token', 'e1af90f5d30e7be30bb659e752b16e73326c0db0a42cb7179e826328a2601b01', '[\"*\"]', NULL, NULL, '2022-12-23 22:44:46', '2022-12-23 22:44:46'),
(732, 'App\\Models\\User', 1, 'auth_token', 'c9e2267f2ea97a90ffdd70f129ba1d6a366a002f9e71cfbe7a0bcdc71053de76', '[\"*\"]', NULL, NULL, '2022-12-24 01:39:36', '2022-12-24 01:39:36'),
(733, 'App\\Models\\User', 1, 'auth_token', '3b464164401eef60a8f5720bc622b0e9fb287d93376c07cf37aac22eada362f7', '[\"*\"]', NULL, NULL, '2022-12-24 01:39:37', '2022-12-24 01:39:37'),
(734, 'App\\Models\\User', 1, 'auth_token', '11aaadf00d312efb9e0c5041cdb13077bc68c9c5c2db28fef90d79d7a5cdbf73', '[\"*\"]', NULL, NULL, '2022-12-24 04:41:59', '2022-12-24 04:41:59'),
(735, 'App\\Models\\User', 1, 'auth_token', '6740406f1cb7fed33339c078352563293be91406c0f7dcb233bb166302058a84', '[\"*\"]', NULL, NULL, '2022-12-24 04:42:26', '2022-12-24 04:42:26'),
(736, 'App\\Models\\User', 1, 'auth_token', '27f3a1ad423fcdcada8b089bf6baf3407eb96accff5c77098f440c0b0e837686', '[\"*\"]', NULL, NULL, '2022-12-24 05:07:54', '2022-12-24 05:07:54'),
(737, 'App\\Models\\User', 1, 'auth_token', 'c9b0e4aa75838e16c5e74de2ed73ca5a76686f5ac3525dab1e34f626798c4891', '[\"*\"]', NULL, NULL, '2022-12-24 23:28:46', '2022-12-24 23:28:46'),
(738, 'App\\Models\\User', 1, 'auth_token', '29656014afe4c19d2156ef9803d33b190322239c9c4445bf0445bfcf3d75162e', '[\"*\"]', NULL, NULL, '2022-12-24 23:28:46', '2022-12-24 23:28:46'),
(739, 'App\\Models\\User', 1, 'auth_token', 'b8bff76cf356767089a8d4c317527e0745a967f19d19724c38a61b6c2b7da61c', '[\"*\"]', NULL, NULL, '2022-12-26 06:56:35', '2022-12-26 06:56:35'),
(740, 'App\\Models\\User', 1, 'auth_token', 'c9aa47080cb8da44141de0e061e5dd3ee032d9651c8c329d49f6da1dd1ee9ee4', '[\"*\"]', NULL, NULL, '2022-12-26 21:08:56', '2022-12-26 21:08:56'),
(741, 'App\\Models\\User', 1, 'auth_token', '5751adbf4c99f8197c0e73fd24431413a83f26a17788562611683ec723c4f8f6', '[\"*\"]', NULL, NULL, '2022-12-27 01:44:33', '2022-12-27 01:44:33'),
(742, 'App\\Models\\User', 1, 'auth_token', 'bf789b4506bfb085b3bc08a5b907d5fe465b29cb2c7d9a13b82a72e30a3f53c2', '[\"*\"]', NULL, NULL, '2022-12-27 06:24:51', '2022-12-27 06:24:51'),
(743, 'App\\Models\\User', 1, 'auth_token', 'd9aeb555927ba75ad1d35e5c482aaca8fb6647939684f5cd0b52accde9a6b142', '[\"*\"]', NULL, NULL, '2022-12-27 06:26:16', '2022-12-27 06:26:16'),
(744, 'App\\Models\\User', 1, 'auth_token', '5144ec16bfb6d2cb9e8f558ef432940af83f354a5644612d75c43f2958a96d55', '[\"*\"]', NULL, NULL, '2022-12-27 06:37:38', '2022-12-27 06:37:38'),
(745, 'App\\Models\\User', 1, 'auth_token', '975188264b9ac6479fbe985a0acdfd1bad714251f919e8564622da631295df0b', '[\"*\"]', NULL, NULL, '2022-12-27 07:03:16', '2022-12-27 07:03:16'),
(746, 'App\\Models\\User', 1, 'auth_token', '73d6941add80b0c7baa451767f3361d121e755d0e4b8b73fa0ec81b44600cf16', '[\"*\"]', NULL, NULL, '2022-12-27 07:22:20', '2022-12-27 07:22:20'),
(747, 'App\\Models\\User', 1, 'auth_token', '3e1aac53303cf1d768cc4f8207a2e236011992d2020258866dda87ba3dcbd204', '[\"*\"]', NULL, NULL, '2022-12-27 10:40:47', '2022-12-27 10:40:47'),
(748, 'App\\Models\\User', 1, 'auth_token', 'be6ebc67d6928476f6082da06b2774ffb7c6a318c2e1d19c296a14831c4c6598', '[\"*\"]', NULL, NULL, '2022-12-27 20:50:50', '2022-12-27 20:50:50'),
(749, 'App\\Models\\User', 1, 'auth_token', '66a5fda314680c139d3fb333bef949971bc4413d9eed3feae1f58bec265ecf8f', '[\"*\"]', NULL, NULL, '2022-12-28 11:48:24', '2022-12-28 11:48:24'),
(750, 'App\\Models\\User', 1, 'auth_token', '2a7b0db294e01d1a2dbd0a870acfb370b2ff279d239b7ca34300676ec5d2eb58', '[\"*\"]', NULL, NULL, '2022-12-28 12:34:06', '2022-12-28 12:34:06'),
(751, 'App\\Models\\User', 1, 'auth_token', '89b4f970335bb41570612f7ecc31777a06d0c4404c13c68a2985362c7d52aeb2', '[\"*\"]', NULL, NULL, '2022-12-28 12:55:47', '2022-12-28 12:55:47'),
(752, 'App\\Models\\User', 1, 'auth_token', 'dc7ee7ff32bd5045f0c658c4bb5f2e14388e3416d5382d8bda838f66e3d8373f', '[\"*\"]', NULL, NULL, '2022-12-28 12:56:51', '2022-12-28 12:56:51'),
(753, 'App\\Models\\User', 1, 'auth_token', '9a21427d96a4852c97fcf35fa73cba44693577310bb840a890f817c27366c8fb', '[\"*\"]', NULL, NULL, '2022-12-28 13:01:37', '2022-12-28 13:01:37'),
(754, 'App\\Models\\User', 1, 'auth_token', '0cfa47583e852366b7e0f69209a50d4fc0d6a3483c48e816f6c9aebe2fcddc42', '[\"*\"]', NULL, NULL, '2022-12-28 13:04:34', '2022-12-28 13:04:34'),
(755, 'App\\Models\\User', 1, 'auth_token', 'a0b02dab0187e92766d036c4177f61e875597a76f7c053cd767e7ca4aa3a9d91', '[\"*\"]', NULL, NULL, '2022-12-28 13:36:42', '2022-12-28 13:36:42'),
(756, 'App\\Models\\User', 23, 'auth_token', '317e70cdda0dc14cca33bcfca6758fd39dd68cf4ed560749ea73d99aa430115d', '[\"*\"]', NULL, NULL, '2022-12-29 06:43:14', '2022-12-29 06:43:14'),
(757, 'App\\Models\\User', 1, 'auth_token', '270590f582ea67f27fc602ed54087b4d7610b46c3e15ff61ae37b7818969fcc1', '[\"*\"]', NULL, NULL, '2022-12-29 07:19:18', '2022-12-29 07:19:18'),
(758, 'App\\Models\\User', 1, 'auth_token', 'e4ca1ab0740963477d254305aa5c0979251c390f32ad0e3defcbc15ca8884dc9', '[\"*\"]', NULL, NULL, '2022-12-29 07:19:47', '2022-12-29 07:19:47'),
(759, 'App\\Models\\User', 1, 'auth_token', '32c93e867935528345c5af86651b3db9b47dc0068e799e5d75552fdcb87bab3c', '[\"*\"]', NULL, NULL, '2022-12-29 07:43:58', '2022-12-29 07:43:58'),
(760, 'App\\Models\\User', 1, 'auth_token', '95b0c00077578ae12e847dfe434d7672bff6b3a1dc3b4a36a226853ffc9620e2', '[\"*\"]', NULL, NULL, '2022-12-29 08:04:12', '2022-12-29 08:04:12'),
(761, 'App\\Models\\User', 1, 'auth_token', 'a3cb787c7e9c210ef681046f270ad6ff1e8f5b5938d40415a1c31384ba690ca2', '[\"*\"]', NULL, NULL, '2022-12-29 08:31:50', '2022-12-29 08:31:50'),
(762, 'App\\Models\\User', 1, 'auth_token', '367a41b26a4b94005700a495104cc763652664e477953164c6b4986f650bfe9e', '[\"*\"]', NULL, NULL, '2022-12-29 12:17:40', '2022-12-29 12:17:40'),
(763, 'App\\Models\\User', 1, 'auth_token', '98be97e10c9130fcf59bf52c9f36a91a44e159dd85bad243552df58520d57dc6', '[\"*\"]', NULL, NULL, '2022-12-31 02:01:52', '2022-12-31 02:01:52'),
(764, 'App\\Models\\User', 1, 'auth_token', 'e58254a5e5a15535b8a85b4be36f03e3b7b89196647370665fd46c01de014478', '[\"*\"]', NULL, NULL, '2023-01-03 07:42:48', '2023-01-03 07:42:48'),
(765, 'App\\Models\\User', 1, 'auth_token', '99efd4ac28f7069f455de691be2c2fb2298f1c63f7797f34d6d237cbe852e19c', '[\"*\"]', NULL, NULL, '2023-01-03 10:35:31', '2023-01-03 10:35:31'),
(766, 'App\\Models\\User', 1, 'auth_token', '93fc04abf3125c92f398aef3d2298a6e7f3218df2f1d9b287ddb19e9c34e6492', '[\"*\"]', NULL, NULL, '2023-01-03 11:20:52', '2023-01-03 11:20:52'),
(767, 'App\\Models\\User', 1, 'auth_token', '7c1971d50da7ff27be737aecd74ae973bcd795b36e5e3c8d2fa467bf65de7699', '[\"*\"]', NULL, NULL, '2023-01-03 11:21:24', '2023-01-03 11:21:24'),
(768, 'App\\Models\\User', 1, 'auth_token', 'aefab47d27d2bb487b3dab3145663ffcf2ed638b1d4fcfedb645e8c06488e9de', '[\"*\"]', NULL, NULL, '2023-01-03 20:15:28', '2023-01-03 20:15:28'),
(769, 'App\\Models\\User', 1, 'auth_token', 'eda091a12ac053ed2c62f334c2cb6a76a1b9b7e63ba0a7cf1b6dd0b1ab0fdb6b', '[\"*\"]', NULL, NULL, '2023-01-04 00:43:22', '2023-01-04 00:43:22'),
(770, 'App\\Models\\User', 1, 'auth_token', '10aaba715edecce3d8ccfb802f0aaa254f7f5735c0eb8e712d82e32c9f6f89d0', '[\"*\"]', NULL, NULL, '2023-01-04 00:43:23', '2023-01-04 00:43:23'),
(771, 'App\\Models\\User', 1, 'auth_token', 'b1db32e02cc171f79c12796360f1edaa0196e49fa23fd08ba95020c3fceb5670', '[\"*\"]', NULL, NULL, '2023-01-04 05:14:04', '2023-01-04 05:14:04'),
(772, 'App\\Models\\User', 1, 'auth_token', '53e35f96987b2823e0eb8565db12b3aff1c9f90d5e20e5f015fe2a43dc10658e', '[\"*\"]', NULL, NULL, '2023-01-04 05:14:36', '2023-01-04 05:14:36'),
(773, 'App\\Models\\User', 1, 'auth_token', '380b434876fa883e8553511eea228102db11d0c2bb39de4bb2de3bd1e251db55', '[\"*\"]', NULL, NULL, '2023-01-04 05:14:49', '2023-01-04 05:14:49'),
(774, 'App\\Models\\User', 1, 'auth_token', '42e57e49614052927f254a11abd52b66e4a82d02050706144f145339e8063c4f', '[\"*\"]', NULL, NULL, '2023-01-04 20:56:26', '2023-01-04 20:56:26'),
(775, 'App\\Models\\User', 1, 'auth_token', 'f57a50907b041195eb281a6852bfbe4029340acd1666fdadc30b5e8151defa79', '[\"*\"]', NULL, NULL, '2023-01-04 22:11:13', '2023-01-04 22:11:13'),
(776, 'App\\Models\\User', 1, 'auth_token', 'dbb932d94210ae076c67dc095f4111c5155867b9b37a39770a70bc79d0f02cab', '[\"*\"]', NULL, NULL, '2023-01-05 02:38:29', '2023-01-05 02:38:29'),
(777, 'App\\Models\\User', 1, 'auth_token', 'a88c458157fd1055635c51d073eb374fcbdf0454610980b20b36544c93223ca8', '[\"*\"]', NULL, NULL, '2023-01-05 20:00:03', '2023-01-05 20:00:03'),
(778, 'App\\Models\\User', 1, 'auth_token', '411dd941165c2d902fc2f77a298441f1608d028f05fa09787b2eac225b5cf54b', '[\"*\"]', NULL, NULL, '2023-01-06 09:25:30', '2023-01-06 09:25:30'),
(779, 'App\\Models\\User', 1, 'auth_token', 'ccfb38619276b06e451a9ec395c79e6a122eb13257f7e6a85f5c5ec859c64dad', '[\"*\"]', NULL, NULL, '2023-01-06 21:06:09', '2023-01-06 21:06:09'),
(780, 'App\\Models\\User', 1, 'auth_token', 'dc46827a110c20ea7a844953c590f509cf9d5af0d4a3c9b06e110e187d2ab9e2', '[\"*\"]', NULL, NULL, '2023-01-06 21:22:57', '2023-01-06 21:22:57'),
(781, 'App\\Models\\User', 1, 'auth_token', 'b779467d810569d520ace9cefd581ea7430da5d8a09ef363d83d8d8262bb6852', '[\"*\"]', NULL, NULL, '2023-01-06 21:55:06', '2023-01-06 21:55:06'),
(782, 'App\\Models\\User', 1, 'auth_token', '2c4463fadec430936a026cf5f18c8efbac7fb310ed3249ea47f71436441f5f7d', '[\"*\"]', NULL, NULL, '2023-01-06 21:59:57', '2023-01-06 21:59:57'),
(783, 'App\\Models\\User', 1, 'auth_token', '149c4abbbc4ca73482e84395841feda4d7020fba01a6acc89270230ed129473d', '[\"*\"]', NULL, NULL, '2023-01-06 22:03:10', '2023-01-06 22:03:10'),
(784, 'App\\Models\\User', 1, 'auth_token', '0d114378ad79f4b0183ba7c3a489f2c39f37386da2ec10c363fa5143af7938c3', '[\"*\"]', NULL, NULL, '2023-01-07 00:06:05', '2023-01-07 00:06:05'),
(785, 'App\\Models\\User', 1, 'auth_token', '3702360156a81e780bf1402a34982ab513dcc0e34f32bb3fda346937b27d32e8', '[\"*\"]', NULL, NULL, '2023-01-07 00:10:44', '2023-01-07 00:10:44'),
(786, 'App\\Models\\User', 1, 'auth_token', 'd2cfe8e203e8da8f39c235eae26a85c08790b4605815cac939486cb1d808e211', '[\"*\"]', NULL, NULL, '2023-01-07 07:49:16', '2023-01-07 07:49:16'),
(787, 'App\\Models\\User', 1, 'auth_token', '3b3f8a42517b63798d0f6ef6802009ed2557e211da1c163bdd6ab16a9783ceb5', '[\"*\"]', NULL, NULL, '2023-01-07 08:40:13', '2023-01-07 08:40:13'),
(788, 'App\\Models\\User', 1, 'auth_token', 'f300b0aab918607d8c794523b0c904e7385e6156139903e9e99dc87b9474f181', '[\"*\"]', NULL, NULL, '2023-01-07 08:40:13', '2023-01-07 08:40:13'),
(789, 'App\\Models\\User', 1, 'auth_token', 'a40228ff491bf4c227be512e8e1ed1aba45e663ff751bf945d89edcf650e194d', '[\"*\"]', NULL, NULL, '2023-01-07 11:41:19', '2023-01-07 11:41:19'),
(790, 'App\\Models\\User', 1, 'auth_token', '695ef92a2f05fea98fd90ac1df73b40fbfbbdb4894451f3021b1f58c69fe5fc4', '[\"*\"]', NULL, NULL, '2023-01-07 11:47:35', '2023-01-07 11:47:35'),
(791, 'App\\Models\\User', 1, 'auth_token', 'faab3d90ef98d12f5c3111e51263f99da91fd912463376f869730b2e6a06eb7c', '[\"*\"]', NULL, NULL, '2023-01-18 07:51:16', '2023-01-18 07:51:16'),
(792, 'App\\Models\\User', 1, 'auth_token', 'adad26cd2da0611aabb2037817fc733eba688314ce96965a7a313a037019e06e', '[\"*\"]', NULL, NULL, '2023-01-18 21:10:46', '2023-01-18 21:10:46'),
(793, 'App\\Models\\User', 1, 'auth_token', 'fc39ba086113d3e6b608788f245d4ec78c0523f5d951c19b89c6371648283ab4', '[\"*\"]', NULL, NULL, '2023-01-20 01:41:37', '2023-01-20 01:41:37'),
(794, 'App\\Models\\User', 1, 'auth_token', 'a2afe71a39704f4e7f3d9d332e0e6637aff2afb3f140cc4a8d881685f2626507', '[\"*\"]', NULL, NULL, '2023-01-20 21:50:39', '2023-01-20 21:50:39'),
(795, 'App\\Models\\User', 1, 'auth_token', 'd3b56352a7bcc62058dafd6b3aeacec2e3c962f2a521fb49888d21f9977e0552', '[\"*\"]', NULL, NULL, '2023-01-25 09:18:37', '2023-01-25 09:18:37'),
(796, 'App\\Models\\User', 1, 'auth_token', '6163757827fd2cee59611c1add736f42c5b641d5b58e1f418d2ee55b3b403eef', '[\"*\"]', NULL, NULL, '2023-01-25 09:32:44', '2023-01-25 09:32:44'),
(797, 'App\\Models\\User', 1, 'auth_token', 'f2ff3f1b8d59051891d38c2b6bbf1731b9ce7d6147a8ff07213494d59dfb714d', '[\"*\"]', NULL, NULL, '2023-01-25 09:33:34', '2023-01-25 09:33:34'),
(798, 'App\\Models\\User', 1, 'auth_token', '6026bc6d9700a485b79801afdf97a37fd7509be42ba4ae7ec62cd505d6713b55', '[\"*\"]', NULL, NULL, '2023-01-25 09:34:01', '2023-01-25 09:34:01'),
(799, 'App\\Models\\User', 1, 'auth_token', '2317161b2e9633a2d91390493ad8d165d39a32ca79ac3b2c7f77a92403326937', '[\"*\"]', NULL, NULL, '2023-01-25 09:34:28', '2023-01-25 09:34:28'),
(800, 'App\\Models\\User', 1, 'auth_token', 'c99ad0f451774d22ca425c4572891c5e18e73d08a7705f8259d1c204d875640f', '[\"*\"]', NULL, NULL, '2023-01-25 10:27:34', '2023-01-25 10:27:34'),
(801, 'App\\Models\\User', 1, 'auth_token', '2b2ade8c6b4491b3277f191b1649fa7beb27cf7d09333b47b864b6b02d598802', '[\"*\"]', NULL, NULL, '2023-01-25 10:43:13', '2023-01-25 10:43:13'),
(802, 'App\\Models\\User', 1, 'auth_token', '8fb69ddb8c679667638f1b79768e84dd8c58bff5b60a3c75c8d6c74ad7321e85', '[\"*\"]', NULL, NULL, '2023-01-25 22:29:32', '2023-01-25 22:29:32'),
(803, 'App\\Models\\User', 1, 'auth_token', '12f02426ba62d3357e19e7b19bd851a8ec5a1a45c979e1a25e78ea6ce4abf96f', '[\"*\"]', NULL, NULL, '2023-01-26 23:16:51', '2023-01-26 23:16:51'),
(804, 'App\\Models\\User', 12, 'token', 'e65b4a9841255d8b91b65f3d690e08e11c4e5ea193ebc58d4171621e99b11644', '[\"*\"]', NULL, NULL, '2023-02-15 23:26:00', '2023-02-15 23:26:00'),
(805, 'App\\Models\\User', 12, 'token', '0680e082b4f475cb718a46ace8c47cc9d6af51ca4254291acb2cbdd825aaa646', '[\"*\"]', NULL, NULL, '2023-02-15 23:26:34', '2023-02-15 23:26:34'),
(806, 'App\\Models\\User', 12, 'token', '793d4068e67e432e0c7d5d53f0f682a9b0b237d4cd9975d4979b3042599dda54', '[\"*\"]', NULL, NULL, '2023-02-15 23:27:42', '2023-02-15 23:27:42'),
(807, 'App\\Models\\User', 12, 'token', 'eeabc2ff62d59d6004b7937dfddcbc5f82bd0f6c2d4ce0d42d4029fbae1c94c7', '[\"*\"]', NULL, NULL, '2023-02-15 23:43:21', '2023-02-15 23:43:21'),
(808, 'App\\Models\\User', 12, 'token', '5acdb2dbab0e12887a31f46b070178927ffecbe1fc44cd3f35c9796de06efaa5', '[\"*\"]', NULL, NULL, '2023-02-15 23:46:58', '2023-02-15 23:46:58'),
(809, 'App\\Models\\User', 12, 'token', 'd133a1eb7f5aae53e93ef541449e0fee5c1889d0dc74833e57ee129a2897e676', '[\"*\"]', NULL, NULL, '2023-02-15 23:47:37', '2023-02-15 23:47:37'),
(810, 'App\\Models\\User', 12, 'token', '603e3f5362833b11073301c2e12ca6e76935f1ae75c00bf021acf57ffbb0dd2d', '[\"*\"]', NULL, NULL, '2023-02-15 23:47:39', '2023-02-15 23:47:39'),
(811, 'App\\Models\\User', 12, 'token', '9f5e85a505ee416b5a504cdb1c80f0b97b66fb5a3ed0a75efbaa54a0b0c1e031', '[\"*\"]', NULL, NULL, '2023-02-15 23:47:40', '2023-02-15 23:47:40'),
(812, 'App\\Models\\User', 12, 'token', '14d041aff857afd4f78e3e61f0f9a44d06c87edbc9c6145087dfc8d32a32e40a', '[\"*\"]', NULL, NULL, '2023-02-15 23:48:20', '2023-02-15 23:48:20'),
(813, 'App\\Models\\User', 12, 'token', '442d6b5a56938ece9af391e4032803fc72722220da3bfd063d9c55ba0f249b46', '[\"*\"]', NULL, NULL, '2023-02-15 23:48:27', '2023-02-15 23:48:27'),
(814, 'App\\Models\\User', 12, 'token', '7136b4fa186b82b964e0b6fc9b998347e0b78e8a1f288c1b7b1752740343d715', '[\"*\"]', NULL, NULL, '2023-02-15 23:48:42', '2023-02-15 23:48:42'),
(815, 'App\\Models\\User', 12, 'token', 'c482679801f0709b08cfdf2037210ff8c0d496ae924c44f118a1e2055b277ee8', '[\"*\"]', NULL, NULL, '2023-02-15 23:49:04', '2023-02-15 23:49:04'),
(816, 'App\\Models\\User', 12, 'token', '0af739bfc52912ee391df9e98153db4075260b9740dd5ca7c55b93b4ce7f22f5', '[\"*\"]', NULL, NULL, '2023-02-15 23:49:13', '2023-02-15 23:49:13'),
(817, 'App\\Models\\User', 12, 'token', 'e490409605b2c8112336261a9c2aac7b5fd712a0ed3be2988b14877a96397fb2', '[\"*\"]', NULL, NULL, '2023-02-15 23:49:29', '2023-02-15 23:49:29'),
(818, 'App\\Models\\User', 12, 'token', '9b7610f6b7e711d1ec6e94cc357c2be678860f44ee1a32e70a061b92a5c86d7c', '[\"*\"]', NULL, NULL, '2023-02-15 23:49:34', '2023-02-15 23:49:34'),
(819, 'App\\Models\\User', 12, 'token', 'c176c4daa3ba184ed385e1d2d87fbbf89e2baa2464ce2224910f9a04e04bf90e', '[\"*\"]', NULL, NULL, '2023-02-15 23:49:43', '2023-02-15 23:49:43'),
(820, 'App\\Models\\User', 12, 'token', '8d6c69f842b78f298f4ba93d758f8f53d85a1e1569311fc75920afe9c4411215', '[\"*\"]', NULL, NULL, '2023-02-15 23:53:00', '2023-02-15 23:53:00'),
(821, 'App\\Models\\User', 12, 'token', '8f11f1a9eba014495854083249c7b7ca044f93808af527e83632113dc1b53d89', '[\"*\"]', NULL, NULL, '2023-02-15 23:56:52', '2023-02-15 23:56:52'),
(822, 'App\\Models\\User', 12, 'token', '152af5c9971475c5d558bf8c197450074f5f209000ce1434f491fd210b014734', '[\"*\"]', NULL, NULL, '2023-02-15 23:57:07', '2023-02-15 23:57:07'),
(823, 'App\\Models\\User', 12, 'token', '1b4a063fb782f7b104b0a59fdb584fb7f18b4d15264d6af3e03d4a9dff4c8524', '[\"*\"]', NULL, NULL, '2023-02-16 00:42:00', '2023-02-16 00:42:00'),
(824, 'App\\Models\\User', 12, 'token', '0b604b02fe956fd7626342cb370322396fdb06895114b1896c6bb6630fb33e1b', '[\"*\"]', NULL, NULL, '2023-02-16 00:42:07', '2023-02-16 00:42:07'),
(825, 'App\\Models\\User', 12, 'token', 'bfa4b0619e8605fe46a78c1ce01314bff1fb110bc3ad90037c9bb42cc1c3c1a0', '[\"*\"]', NULL, NULL, '2023-02-16 00:42:15', '2023-02-16 00:42:15'),
(826, 'App\\Models\\User', 12, 'token', '899f9dc04123846c7eb229baeb13bf5d577545f31fe3f31e2f8d790741c4cb2d', '[\"*\"]', NULL, NULL, '2023-02-16 00:42:23', '2023-02-16 00:42:23'),
(827, 'App\\Models\\User', 12, 'token', '1925a88d913a032e2721707dc605ac136c12c1f5462cdbfa5573c4527dbc2aa5', '[\"*\"]', NULL, NULL, '2023-02-16 01:34:52', '2023-02-16 01:34:52'),
(828, 'App\\Models\\User', 12, 'token', '8f1b81c2cbc9dd7a2237a3648ce3a61ae647cd661d210995dc0146d779c47490', '[\"*\"]', NULL, NULL, '2023-02-16 01:42:47', '2023-02-16 01:42:47'),
(829, 'App\\Models\\User', 12, 'token', 'fa18f61f3d85d9b37216ea8bb2ded102ed31319787cb033507891ea467d563b5', '[\"*\"]', NULL, NULL, '2023-02-16 01:44:08', '2023-02-16 01:44:08'),
(830, 'App\\Models\\User', 12, 'token', 'bd82b4334cf61abd12aa1b6661381fe31f668f4b0699d838c5e284e99d51c287', '[\"*\"]', NULL, NULL, '2023-02-16 20:06:40', '2023-02-16 20:06:40');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(831, 'App\\Models\\User', 12, 'token', '82f512a7ce2787825ab2cc25317edc8d8898d456ffa27f731f7172198da47c93', '[\"*\"]', NULL, NULL, '2023-02-17 20:35:35', '2023-02-17 20:35:35'),
(832, 'App\\Models\\User', 1, 'token', '35e37456de31cb019e20cebdb37642226f0b129dc0f7b86651121ea22238568b', '[\"*\"]', NULL, NULL, '2023-02-18 01:57:34', '2023-02-18 01:57:34'),
(833, 'App\\Models\\User', 1, 'token', '7cf259fcd89fc391ff6e924f8a07a435f0786fd8791cd01c54c43bca2c892c73', '[\"*\"]', NULL, NULL, '2023-02-18 01:58:05', '2023-02-18 01:58:05'),
(834, 'App\\Models\\User', 1, 'token', 'a354a9b8bbb725a4aa1446ffac15115857f7d02c03eeba744313bb3c352900df', '[\"*\"]', NULL, NULL, '2023-02-18 02:50:56', '2023-02-18 02:50:56'),
(835, 'App\\Models\\User', 1, 'token', '41fd2447583072f22a3f944ff57781c2a210671c78f631b75b4d1c3250fd56e9', '[\"*\"]', NULL, NULL, '2023-02-18 02:51:28', '2023-02-18 02:51:28'),
(836, 'App\\Models\\User', 1, 'token', '00c2720123ab3f63920d6d1e9c372cae2d670a575e78c14258332d9c646a80be', '[\"*\"]', NULL, NULL, '2023-02-18 02:51:58', '2023-02-18 02:51:58'),
(837, 'App\\Models\\User', 1, 'token', '82c2bb19603a2c9fe95ffd6479690f2be2937ea337faec3b3baa7629d068a96b', '[\"*\"]', NULL, NULL, '2023-02-18 02:55:17', '2023-02-18 02:55:17'),
(838, 'App\\Models\\User', 1, 'token', '1a83b19c508304851ba48dee5450154e53602f415102c3705a5816c188b7e2c3', '[\"*\"]', NULL, NULL, '2023-02-18 02:56:04', '2023-02-18 02:56:04'),
(839, 'App\\Models\\User', 1, 'token', 'ff441c7377aef965fa6f5e8b9d8c28436b7fedaa3965e8546f93f441695b7dd1', '[\"*\"]', NULL, NULL, '2023-02-18 02:57:47', '2023-02-18 02:57:47'),
(840, 'App\\Models\\User', 1, 'token', '48538fdac8ff54cee9d002884687517f75db9e1e3315e4c96fb79ceaad244eba', '[\"*\"]', NULL, NULL, '2023-02-18 02:59:54', '2023-02-18 02:59:54'),
(841, 'App\\Models\\User', 1, 'token', 'db443be16d26f3991ca454ec9812745973ac4a1e80b394fd6ce88b81bd8ab165', '[\"*\"]', NULL, NULL, '2023-02-18 03:04:32', '2023-02-18 03:04:32'),
(842, 'App\\Models\\User', 1, 'token', '9644de21a301bfe8ec6a9bb9dfc43523da0d5cfa7c1fb0b78ba1b34497832b35', '[\"*\"]', NULL, NULL, '2023-02-18 03:04:57', '2023-02-18 03:04:57'),
(843, 'App\\Models\\User', 1, 'token', '76477f8b37db39b6dd3e7a3c6fb4342143d173214d963ec2c2e03805105a18b6', '[\"*\"]', NULL, NULL, '2023-02-18 03:17:10', '2023-02-18 03:17:10'),
(844, 'App\\Models\\User', 1, 'token', '44b18d1848bb55ddbaa4ecc800e50b15741873505fb10ce7d9d5dc1e780ccbc4', '[\"*\"]', NULL, NULL, '2023-02-18 03:18:13', '2023-02-18 03:18:13'),
(845, 'App\\Models\\User', 1, 'token', '87c433bad0ce6c3f660fa0f0a37358e18d3ddc3eeda2f0eeece2dcfb1cc24680', '[\"*\"]', NULL, NULL, '2023-02-18 04:46:24', '2023-02-18 04:46:24'),
(846, 'App\\Models\\User', 1, 'token', 'd8f2e0fe33572bc92ed272050aebeb22f95c5db2be15502ed9abebe939965ef3', '[\"*\"]', NULL, NULL, '2023-02-18 04:55:21', '2023-02-18 04:55:21'),
(847, 'App\\Models\\User', 1, 'token', '5df884062ccf9a808a1a52a7542071479c88e3a030583ec76d1d49dc2c9edbfc', '[\"*\"]', NULL, NULL, '2023-02-18 04:57:49', '2023-02-18 04:57:49'),
(848, 'App\\Models\\User', 2, 'token', 'b259fe7dd66c9b4ad22b7286800605658fdafe79d6ec8b373648ae63be735bfa', '[\"*\"]', NULL, NULL, '2023-02-18 04:57:57', '2023-02-18 04:57:57'),
(849, 'App\\Models\\User', 1, 'token', 'f111214ee19b1f8a180cb27ea16586c88cc922b0f24038459b91983482842770', '[\"*\"]', NULL, NULL, '2023-02-18 04:59:48', '2023-02-18 04:59:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `name_role` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_vacine`
--

CREATE TABLE `status_vacine` (
  `id_status_vacine` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `status_vacine`
--

INSERT INTO `status_vacine` (`id_status_vacine`, `name`) VALUES
(1, 'Vacunado'),
(2, 'No Vacunado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_vaccine`
--

CREATE TABLE `type_vaccine` (
  `id_type_vaccine` int(11) NOT NULL,
  `name_vaccine` char(75) NOT NULL,
  `description` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type_vaccine`
--

INSERT INTO `type_vaccine` (`id_type_vaccine`, `name_vaccine`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sinovac', '', '2023-02-14 17:35:16', NULL),
(2, 'AstraZeneca', '', '2023-02-14 17:35:16', NULL),
(3, 'Pfizer', '', '2023-02-14 17:35:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `email` char(75) DEFAULT NULL,
  `name` char(75) DEFAULT NULL,
  `last_name` varchar(75) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `link` char(75) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_users`, `email`, `name`, `last_name`, `password`, `status`, `link`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'darwin', 'quishpe', '$2y$10$mdfZN.HpszIOHVyTiZ0.GeM/gAYZAsYlzgHilhPu3INM8f2yAnK9y', 1, 'Admin', '849|DgIg3iiJtyQGZOoHrWUpy4xwlPt8vLbbfcfGfxa0', '2023-02-18 01:26:59', '2023-02-18 04:59:48'),
(2, 'colaborador@gmail.com', 'darwin', 'quishpe', '$2y$10$mdfZN.HpszIOHVyTiZ0.GeM/gAYZAsYlzgHilhPu3INM8f2yAnK9y', 1, 'collaborator', '848|CqsUNCXz6QZNvsFWq8XkPXdcDFI0FdnaFIMVpRrO', '2023-02-18 01:35:46', '2023-02-18 04:57:57'),
(8, 'DARWIN@hotmail.com', 'DARWIN Q', 'QUISHPE', '$2y$10$WKdu25gPAvuwHI1DhTJ5HeFt8uJE2AUzwbVyBoOTc0PjSOWOD/9PG', 1, 'collaborator', NULL, '2023-02-18 05:04:33', '2023-02-18 05:04:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `collaborator`
--
ALTER TABLE `collaborator`
  ADD PRIMARY KEY (`id_collaborator`),
  ADD KEY `pk_id_user` (`id_user`);

--
-- Indices de la tabla `collaborator_details`
--
ALTER TABLE `collaborator_details`
  ADD PRIMARY KEY (`id_collaborator_details`),
  ADD KEY `pk_id_collaborator` (`id_collaborator`);

--
-- Indices de la tabla `collaborator_vaccine`
--
ALTER TABLE `collaborator_vaccine`
  ADD PRIMARY KEY (`id_collaborator_vaccine`),
  ADD KEY `pk_collaborator` (`id_collaborator`),
  ADD KEY `pk_type_vaccine` (`id_type_vaccine`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Indices de la tabla `status_vacine`
--
ALTER TABLE `status_vacine`
  ADD PRIMARY KEY (`id_status_vacine`);

--
-- Indices de la tabla `type_vaccine`
--
ALTER TABLE `type_vaccine`
  ADD PRIMARY KEY (`id_type_vaccine`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `collaborator`
--
ALTER TABLE `collaborator`
  MODIFY `id_collaborator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `collaborator_details`
--
ALTER TABLE `collaborator_details`
  MODIFY `id_collaborator_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `collaborator_vaccine`
--
ALTER TABLE `collaborator_vaccine`
  MODIFY `id_collaborator_vaccine` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=850;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_vacine`
--
ALTER TABLE `status_vacine`
  MODIFY `id_status_vacine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `type_vaccine`
--
ALTER TABLE `type_vaccine`
  MODIFY `id_type_vaccine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `collaborator`
--
ALTER TABLE `collaborator`
  ADD CONSTRAINT `pk_id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`);

--
-- Filtros para la tabla `collaborator_details`
--
ALTER TABLE `collaborator_details`
  ADD CONSTRAINT `pk_id_collaborator` FOREIGN KEY (`id_collaborator`) REFERENCES `collaborator` (`id_collaborator`);

--
-- Filtros para la tabla `collaborator_vaccine`
--
ALTER TABLE `collaborator_vaccine`
  ADD CONSTRAINT `pk_collaborator` FOREIGN KEY (`id_collaborator`) REFERENCES `collaborator` (`id_collaborator`),
  ADD CONSTRAINT `pk_type_vaccine` FOREIGN KEY (`id_type_vaccine`) REFERENCES `type_vaccine` (`id_type_vaccine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
