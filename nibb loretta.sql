-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2023 at 06:06 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nibbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_28_093811_create_transactions_table', 1),
(6, '2023_03_30_141118_create_wallets_table', 2),
(7, '2023_04_05_095856_drop_transactions_table', 3),
(9, '2023_04_05_103156_add_code_to_transactions_table', 4),
(10, '2023_04_05_104538_add_receiverid_to_wallets_table', 5),
(11, '2023_04_06_123207_add_date_to_wallets_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `senderdetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destaccount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destbank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mastercard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for pending , 1 for successful , 2 for failed ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `senderdetail`, `destaccount`, `destbank`, `destname`, `user_id`, `amount`, `ref`, `mastercard`, `expiry`, `cvv`, `pin`, `date`, `status`, `created_at`, `updated_at`, `code`) VALUES
(1, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '1000', '482716DK', '3528038728158459', '10/24', '372', '4120', '2023-04-06', '1', '2023-04-06 10:34:02', '2023-04-06 10:34:57', '1'),
(2, 'Fidelity Bank Plc-----1396991625-----49999000', '6937607685', 'First City Monument Bank Limited', 'Caleigh Daniel', '2', '2000', '315648VH', '3528038728158459', '10/24', '372', '4120', '2023-04-06', '1', '2023-04-06 10:45:51', '2023-04-06 10:46:37', '3'),
(3, 'Guaranty Trust Bank Plc-----9407439519-----50000000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '7', '7000', '368210ZY', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-06 11:20:37', '2023-04-06 11:20:37', '2'),
(4, 'Guaranty Trust Bank Plc-----9407439519-----50000000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '7', '7000', '798104VX', '2597907364676461', '04/25', '299', '3559', '2023-04-06', '1', '2023-04-06 11:42:36', '2023-04-06 11:43:37', '1'),
(5, 'Access Bank Plc-----5191335077-----49992000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '1', '7000', '639187MU', '2377797755721943', '07/24', '516', '4081', '2023-04-06', '1', '2023-04-06 11:51:32', '2023-04-06 11:53:16', '2'),
(6, 'Access Bank Plc-----5191335077-----49992000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '1', '1000', '074896CF', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-06 11:56:50', '2023-04-06 11:56:50', '2'),
(7, 'United Bank for Africa Plc-----2279731253-----49960000', '9682309890', 'Union Bank of Nigeria Plc', 'Alexzander Hodkiewicz', '6', '5000', '315906UX', '4916446326483989', '10/25', '157', '3935', '2023-04-06', '1', '2023-04-06 12:27:44', '2023-04-06 12:29:00', '5'),
(8, 'United Bank for Africa Plc-----2279731253-----49960000', '7264325750', 'First Bank of Nigeria Limited', 'Carli Friesen', '6', '500', '407318SA', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-06 12:29:47', '2023-04-06 12:29:47', '4'),
(9, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '1000', '568913WT', '4567890321', '02/25', '789', '1234', '2023-04-07', '2', '2023-04-07 08:42:21', '2023-04-07 08:44:30', '1'),
(10, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '1000', '890657XY', '345678900433', '09/34', '123', '4567', '2023-04-07', '2', '2023-04-07 08:47:35', '2023-04-07 08:47:57', '1'),
(11, 'Access Bank Plc-----5191335077-----49992000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '1', '1000', '078234BU', '1234567890', '01/32', '213', '5678', '2023-04-07', '2', '2023-04-07 08:53:42', '2023-04-07 08:54:03', '2'),
(12, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '1000', '530891HA', '3528038728158459', '10/24', '372', '4120', '2023-04-07', '1', '2023-04-07 10:20:41', '2023-04-07 10:21:50', '1'),
(13, 'First Bank of Nigeria Limited-----7264325750-----50000000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '4', '2000', '267591SQ', '6011535540666889', '05/25', '105', '1624', '2023-04-07', '1', '2023-04-07 10:42:44', '2023-04-07 10:43:52', '1'),
(14, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '1000', '487931RD', '3528038728158459', '10/24', '372', '4120', '2023-04-08', '1', '2023-04-08 11:29:54', '2023-04-08 11:31:00', '1'),
(15, 'Access Bank Plc-----5191335077-----49992000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '1', '500', '781059DK', '2377797755721943', '07/24', '516', '4081', '2023-04-08', '1', '2023-04-08 11:37:00', '2023-04-08 11:38:12', '2'),
(16, 'Access Bank Plc-----5191335077-----49992000', '6937607685', 'First City Monument Bank Limited', 'Caleigh Daniel', '1', '1000', '465732JM', '2377797755721943', '07/24', '516', '4081', '2023-04-13', '1', '2023-04-13 13:38:57', '2023-04-13 13:40:07', '3'),
(17, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '500', '395864DZ', '3528038728158459', '10/24', '372', '4120', '2023-04-13', '1', '2023-04-13 13:42:02', '2023-04-13 13:43:01', '1'),
(18, 'Union Bank of Nigeria Plc-----9682309890-----49997000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '5', '1500', '256089BK', '5357238437203205', '08/25', '105', '9841', '2023-04-13', '1', '2023-04-13 15:10:12', '2023-04-13 15:16:05', '1'),
(19, 'Union Bank of Nigeria Plc-----9682309890-----49997000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '5', '500', '957820LJ', '5357238437203205', '08/25', '105', '9841', '2023-04-13', '1', '2023-04-13 15:20:09', '2023-04-13 15:20:54', '1'),
(20, 'Access Bank Plc-----5191335077-----49992000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '1', '2000', '539401ZG', '2377797755721943', '07/24', '516', '4081', '2023-04-13', '1', '2023-04-13 15:22:54', '2023-04-13 15:23:50', '2'),
(21, 'First City Monument Bank Limited-----6937607685-----49990000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '3', '1000', '782430ER', '2621901138795889', '07/24', '224', '5520', '2023-04-14', '1', '2023-04-14 07:03:01', '2023-04-14 07:06:16', '1'),
(22, 'Access Bank Plc-----5191335077-----49992000', '6937607685', 'First City Monument Bank Limited', 'Caleigh Daniel', '1', '500', '213097WZ', '2377797755721943', '07/24', '516', '4081', '2023-04-14', '1', '2023-04-14 07:23:48', '2023-04-14 07:26:48', '3'),
(23, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '600', '105328YK', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-14 10:50:21', '2023-04-14 10:50:21', '1'),
(24, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '500', '836510EF', '5787979', '454', '5645', '46446', '2023-04-14', '2', '2023-04-14 11:24:10', '2023-04-14 11:39:20', '1'),
(25, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '500', '489137YX', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-14 11:44:07', '2023-04-14 11:44:07', '1'),
(26, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '1000', '490173NS', '3528038728158459', '10/24', '372', '9087', '2023-04-14', '2', '2023-04-14 12:05:13', '2023-04-14 12:06:42', '1'),
(27, 'Citibank Nigeria Limited-----4628749559-----50000000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '8', '3000', '162804BZ', '45677899', '2134', '567', '3214', '2023-04-14', '2', '2023-04-14 12:12:25', '2023-04-14 12:12:47', '1'),
(28, 'Citibank Nigeria Limited-----4628749559-----50000000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '8', '3000', '162804BZ', '3456788', '9865', '213', '4567', '2023-04-14', '2', '2023-04-14 12:13:16', '2023-04-14 12:13:16', '1'),
(29, 'Access Bank Plc-----5191335077-----49992000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '1', '1000', '138726JF', '1234556778999', '09/32', '456', '3214', '2023-04-18', '2', '2023-04-18 10:01:29', '2023-04-18 10:05:38', '2'),
(30, 'Access Bank Plc-----5191335077-----49992000', '1396991625', 'Fidelity Bank Plc', 'Annalise Bednar', '1', '1000', '138726JF', '2345678909', '08/32', '567', '8908', '2023-04-18', '2', '2023-04-18 10:06:30', '2023-04-18 10:06:30', '2'),
(31, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '1000', '053287VW', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-18 11:05:01', '2023-04-18 11:05:01', '1'),
(32, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '500', '637409PS', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-18 11:12:47', '2023-04-18 11:12:47', '1'),
(33, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '5000', '869403ZE', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-18 11:27:46', '2023-04-18 11:27:46', '1'),
(34, 'Fidelity Bank Plc-----1396991625-----49999000', '5191335077', 'Access Bank Plc', 'Nora Ahialaka', '2', '2000', '368072YC', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-18 11:29:28', '2023-04-18 11:29:28', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bankname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accountnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mastercard` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cvv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accountbalance` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '50000000',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `email_verified_at`, `phone`, `address`, `password`, `bankname`, `accountnumber`, `mastercard`, `cvv`, `pin`, `expiry`, `accountbalance`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nora', 'Ahialaka', 'murphy.oreilly@example.net', '2023-03-30 12:41:39', '07059945558', '4714 Monahan Unions Suite 286\nEast Hudsonside, RI 30428-9688', '$2y$10$rIBDSgHqvb2pkk77G0VHBeAsYGaCPYz7Nvi78DTF4H03qsO36shHi', 'Access Bank Plc', '5191335077', '2377797755721943', '516', '4081', '07/24', '49992000', 'VirFOu5vEbjYO00fJrmC1tmgfDNp6PVsGA3OepiKO7U9YxDcfNLujbM9Dem0', '2023-03-30 12:41:43', '2023-04-05 11:26:35'),
(2, 'Annalise', 'Sabueha', 'sabueha@gmail.com', '2023-03-30 12:41:39', '09134408260', '46141 Wilkinson Skyway\nLake Zionchester, NJ 85762-4096', '$2y$10$J4aSEoIvPIC.clTMBo3KLOzZ3gUmYmrOI.WYdmufYcF4/pFoHhpjy', 'Fidelity Bank Plc', '1396991625', '3528038728158459', '372', '4120', '10/24', '49999000', 'lEUbTU2PXzaYWBlOI3mBAt8scZy4XciKKY7C2Pa0srEJpFgW8oPxdglyrA3E', '2023-03-30 12:41:43', '2023-04-05 11:03:07'),
(3, 'Caleigh', 'Daniel', 'ternser@example.org', '2023-03-30 12:41:39', '+15677033320', '7119 Casper Spur\nWest Aliya, VA 17640-9977', '$2y$10$adyDkDq4CjkkdoRf1B7P9unpJ9Z0AhMfjptzsSUtfGyFn/PN.dzFi', 'First City Monument Bank Limited', '6937607685', '2621901138795889', '224', '5520', '07/24', '49990000', 'yxkml5BYdLSBS63nUWdVQhzCku9rjMEb9o8ztaNyQ6CIVFRpOqiSdrilJxiZ', '2023-03-30 12:41:43', '2023-03-31 10:44:15'),
(4, 'Carli', 'Friesen', 'king.felicita@example.net', '2023-03-30 12:41:39', '+14199360926', '820 Raoul Row Apt. 757\nDuBuquebury, SC 89137-5063', '$2y$10$CuAq305Hs0ubWWi3lzcd3eFmvG78HmkhpQnlLpUNmRRhVfNOVJbUa', 'First Bank of Nigeria Limited', '7264325750', '6011535540666889', '105', '1624', '05/25', '50000000', 'b8GaKCr3qy', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(5, 'Alexzander', 'Hodkiewicz', 'hank12@example.net', '2023-03-30 12:41:39', '+16155592499', '83888 Hartmann Extensions Apt. 131\nEast Rylanburgh, IA 69788-0884', '$2y$10$t/PlFQda6lx3VYSunDlgH.Gfv18nVH1sYNpj1sc5L2txHiDRo0djm', 'Union Bank of Nigeria Plc', '9682309890', '5357238437203205', '105', '9841', '08/25', '49997000', 'vIbsWJLPudnrGSit251vmecNTSDSU5ltcU2PeJKFktERWErv5Te276MiBLNS', '2023-03-30 12:41:43', '2023-03-31 10:46:39'),
(6, 'Faustino', 'Hodkiewicz', 'name29@example.com', '2023-03-30 12:41:39', '+18705906926', '6583 Roderick Mall\nLake Clark, OH 20794', '$2y$10$FAKfaEp4iN3dISKSmZKB4OiVEFzxWfbzKPtdPrbS.wTLboEPmBHn2', 'United Bank for Africa Plc', '2279731253', '4916446326483989', '157', '3935', '10/25', '49960000', 'yxIF0mnsks', '2023-03-30 12:41:43', '2023-03-31 10:49:37'),
(7, 'Aglae', 'Buckridge', 'abdul16@example.net', '2023-03-30 12:41:39', '+13343027494', '60502 Crist View Apt. 236\nSouth Wallace, TX 58296-8304', '$2y$10$H3KhFpv7l/jC0Dy7HT5OU.oG1FTNvRGDU5es0P8sgo8yPY.GPo/Ne', 'Guaranty Trust Bank Plc', '9407439519', '2597907364676461', '299', '3559', '04/25', '50000000', 'qFkPYA4gQo', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(8, 'Vicente', 'Hagenes', 'bgibson@example.com', '2023-03-30 12:41:40', '+17183152555', '6887 Walter Meadow\nBrakusport, CO 25821', '$2y$10$pCy0gkyXRZzS11UnApspjuQVQTBlE7VDQs1kDMzgPXTP5piVpGXoe', 'Citibank Nigeria Limited', '4628749559', '2328663461591907', '482', '7829', '08/25', '50000000', 'nBxPFmuTk5', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(9, 'Ophelia', 'Durgan', 'jordy.hintz@example.org', '2023-03-30 12:41:40', '+12622956925', '31906 Farrell Alley\nRebekahland, MD 81260-4476', '$2y$10$40sYQC5kyxae720ICJVjluckj9jM9aFYTXj7hRebvAnm4ytTnKJ7S', 'Ecobank Nigeria', '2606012142', '4916123100071765', '546', '2964', '06/24', '50000000', 'QZ9EnKpcH7', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(10, 'Sandy', 'Hauck', 'simonis.augustine@example.com', '2023-03-30 12:41:40', '+19344169913', '3099 Denesik Summit\nMattieville, KY 15047-5662', '$2y$10$xtMiVBGOKf.JGmol6y9qLuSAXEfhK2YPwyfabRNamuACzlKhxQMP2', 'Heritage Bank Plc', '5771031672', '4532388960369716', '828', '7387', '06/26', '50000000', 'ZZ9nvN82PX', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(11, 'Lyric', 'Corkery', 'alejandrin.russel@example.com', '2023-03-30 12:41:40', '+12106829851', '10855 Johns Stravenue Apt. 358\nGrantville, WV 26239-4127', '$2y$10$kyv6v1Dnj4BwGV8M3h.oo.sDffPiIqJFRFjANMc5iZHqqxv3F/mEW', 'Keystone Bank Limited', '4555731474', '2655229461880063', '079', '6097', '11/25', '50000000', 'sbe6YSquOI', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(12, 'Zelda', 'Klein', 'taryn82@example.com', '2023-03-30 12:41:40', '+18287869764', '6933 Fisher Drive\nPort Brianaburgh, WY 76387-1581', '$2y$10$No/RIB1fq/qWuhLMrhlSAerPe6xFqWJBtbUNM7r3fPu.4HJcO18fS', 'Polaris Bank Limited ', '5943864075', '4532497999167', '252', '2452', '08/29', '50000000', '9330u76T0o', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(13, 'Alfreda', 'Donnelly', 'armstrong.leonora@example.net', '2023-03-30 12:41:40', '+12403325102', '128 Cierra Point Suite 327\nWest Clement, LA 87557', '$2y$10$ps/C.ZwNezsSsV1DvR95Q.wWcTFgum8PIgJcnSNk73QbGjA/1BcN.', 'Stanbic IBTC Bank Plc', '1350531384', '2591827728484590', '751', '4820', '01/26', '50000000', '5qJQ3Lb1um', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(14, 'Jayde', 'Torp', 'smith.llewellyn@example.com', '2023-03-30 12:41:40', '+13473397252', '568 Genoveva Summit Apt. 951\nEmelyhaven, SC 92319-4770', '$2y$10$uGYhVfNo76Cu6POJHUf5luRRfjho4K5L5ds3Hk.av2gtGQHMyT18a', 'Standard Chartered', '7031505039', '5207379644937755', '789', '2049', '04/24', '50000000', 'tdlqlJuuAD', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(15, 'Frieda', 'Renner', 'deckow.titus@example.net', '2023-03-30 12:41:40', '+16162610280', '210 McGlynn Harbors Suite 213\nWest Juliefort, SC 27700-2474', '$2y$10$Xz80sSI1LUepViEgRNDu.OX8RhEER2eRTkGq0P4csaonigHs/l0pC', 'Sterling Bank Plc', '1085538924', '2363915612788733', '462', '0449', '06/27', '50000000', 'fyOj32oFY0', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(16, 'Rosalia', 'Oberbrunner', 'stamm.elenora@example.org', '2023-03-30 12:41:40', '+16419750200', '41428 Ashlee Burgs\nLake Jessy, OK 04353-5829', '$2y$10$H/XCtQozNA2ySZepJWbBBuBJ0bosSBtBslXe/ha36gHUeZt5L9/4W', 'Titan Trust bank', '8859621864', '4539243018520765', '307', '8730', '04/25', '50000000', 'wbk1NycAa0', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(17, 'Anika', 'Kassulke', 'gideon.bradtke@example.com', '2023-03-30 12:41:40', '+18708281809', '2236 Toney Ferry\nPort Elyssafurt, MT 38286-3450', '$2y$10$lTsfG.MsQDrIFMSrFeKs3uj0XWT2K0gNu1g6v/2vBRwL1CMPBAPiG', 'Unity Bank Plc', '4482539037', '4485824740640', '389', '9359', '07/25', '50000000', 'S4GFvjdE0y', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(18, 'Wilmer', 'Bernier', 'tremaine.runte@example.org', '2023-03-30 12:41:40', '+16236148713', '30233 Ewald Isle\nPort Pansystad, CT 75452-8092', '$2y$10$JRbyxnk90EAand.WzHTr6OwcuW10XeGm5Olug4jBkCSnaJ76YwOeC', 'Wema Bank Plc', '9418533337', '4551085538363538', '519', '8773', '03/25', '50000000', 'uCDhU0uB8a', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(19, 'Edd', 'Balistreri', 'abbie38@example.org', '2023-03-30 12:41:40', '+12238930490', '423 Will Mall Suite 405\nNew Faustino, AZ 43802-9861', '$2y$10$PnA5hnqEwVe7hLV4MHZnHeWudfzJZNx5tVI8QGGoXN/8RpCv7.HMi', 'Globus Bank Limited', '6011289952', '2720914207478246', '460', '5945', '06/25', '50000000', '5neORqHjuP', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(20, 'Margot', 'Terry', 'gideon.walker@example.net', '2023-03-30 12:41:40', '+17854227785', '579 Riley Skyway\nPort Stacyborough, WA 80657', '$2y$10$oAEsT0dUJNuFtGkvrltfLOpT1wCcZdGawLFJ98WUDpt8fV1OCbwsa', 'Jaiz Bank Plc', '4928836842', '4716106996060382', '632', '8871', '10/28', '50000000', 'ZSulNwgdOc', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(21, 'Johathan', 'Donnelly', 'pjakubowski@example.com', '2023-03-30 12:41:41', '+16692363498', '52633 Verda Ridges Apt. 277\nPort Yesseniatown, SD 20366-7355', '$2y$10$MmrJlv3.kmcCRqTEdTlvpeYUd2L6E9U7.1avvfLW.uJvhVq5pJp7y', 'LOTUS BANK', '9449805646', '2581206587178852', '742', '2190', '02/24', '50000000', '6KM6acTTO9', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(22, 'Geovanny', 'Johnston', 'hheaney@example.net', '2023-03-30 12:41:41', '+15747042279', '97310 Hauck Groves\nTurcottemouth, RI 19995-3271', '$2y$10$IzhvxascTjzIBfWsyWpSP.XZ1AqemghFJRg8qmQU4Fp8wR0fTbWMC', 'Kuda Bank', '9780202653', '2720152765587153', '432', '2542', '12/24', '50000000', '3zB076ZDnJ', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(23, 'Alice', 'Kling', 'mosciski.willie@example.com', '2023-03-30 12:41:41', '+14109894332', '38673 Baumbach Overpass\nSouth Ned, UT 20604-7726', '$2y$10$RiB6Ya1CMEjry2Yu9f.wpOuK.jigyDclJ2u5GSOlHfjpb1FLSdMAS', 'Moniepoint Microfinance Bank', '6263578802', '3589686518828610', '994', '6266', '01/26', '50000000', 'Rk1eVomlLK', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(24, 'Keshaun', 'Emmerich', 'arianna.zieme@example.org', '2023-03-30 12:41:41', '+18729884073', '4701 Cleta Turnpike\nEzequielmouth, MT 00254-4742', '$2y$10$St1oEHGRcDn6rHgE5HofjuphB.D94xi.Vbjl0PvkFFgSaAeHPZnOy', 'Opay', '7459093531', '4024007136673695', '475', '6278', '04/25', '50000000', 'hBquB9KVGc', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(25, 'Glennie', 'Bednar', 'wisozk.adah@example.org', '2023-03-30 12:41:41', '+13125727959', '4110 Orn Run\nNorth Beatrice, CA 08621', '$2y$10$hBs5yE.LWA.fdzc4aXQgcuOq2UkAnAKTwlMleoYkLfRR2PtDIR0pu', 'Palmpay', '4666583200', '4556506463675', '169', '9416', '10/24', '50000000', 'xmDLIJ4Y6v', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(26, 'Marcia', 'VonRueden', 'russel96@example.net', '2023-03-30 12:41:41', '+17267732843', '4378 Beahan Ridges Suite 438\nRomagueraview, OK 72827', '$2y$10$Gexpbw7dPnpqI2jBU1H1h.3bfF8BreqbLqtlUYJOxvlQ.G7.CCKF2', 'Access Bank Plc', '2082866536', '5483571466727182', '258', '3198', '01/26', '50000000', '98SYXAQCTd', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(27, 'Fredrick', 'Konopelski', 'jamar35@example.com', '2023-03-30 12:41:41', '+19478686533', '4925 Brendon Station\nSouth Jaunita, OR 89055-3515', '$2y$10$9qkPMjWAO5QcFkufG.XDu.AZDtEVNiIFpBT6AzIKGFYoBy8UEUGbe', 'Fidelity Bank Plc', '1681104823', '4929830274173988', '857', '5057', '05/28', '50000000', 'MqBWPg0HfA', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(28, 'Justice', 'Zulauf', 'ike.stamm@example.org', '2023-03-30 12:41:41', '+17066166991', '3995 Blanda Ports Suite 508\nKielshire, VT 03800', '$2y$10$WiLW2IB9MFvIi8Dc1xVwJu8KTWHQW.JhgyYqeSgOhVD.N0SgPAGaG', 'First City Monument Bank Limited', '3164747457', '4485790810114118', '963', '8283', '03/24', '50000000', 'GJKjJW4bjD', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(29, 'Kiley', 'Schamberger', 'millie85@example.net', '2023-03-30 12:41:41', '+13516424736', '160 Lesley Spring Apt. 939\nLake Lukas, KY 43290', '$2y$10$MwRFtCOfWj6ICvKW71JTRuqnxhsi9nEo8JvkN9x2hXGBPXlUNmCpG', 'First Bank of Nigeria Limited', '6698418576', '4716040029740282', '679', '7372', '02/26', '50000000', 'FuklL6ufzh', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(30, 'Lexie', 'Medhurst', 'oprice@example.com', '2023-03-30 12:41:41', '+16107583099', '178 Myah Parkway Apt. 998\nNorth Teresaborough, IA 13980', '$2y$10$xMSiLfFekMAktbdolz0laOJh8iwDmOvMxvPJeFz9Wy7LB6dhmN112', 'Union Bank of Nigeria Plc', '1766135645', '5301824775986068', '970', '3043', '03/26', '50000000', 'q4mycFXNRJ', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(31, 'Cornell', 'Goyette', 'solon.morissette@example.com', '2023-03-30 12:41:41', '+13329808015', '37852 Porter Springs Apt. 863\nNitzschechester, OR 20284-5981', '$2y$10$.mgS4/SWXU89YR.XqTsDqOYhz29UsONaBTJIpcBcw5oEJxHfXfFF2', 'United Bank for Africa Plc', '1324056423', '2496966012155312', '549', '5308', '06/25', '50000000', 'uEWrKgmsaC', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(32, 'Juwan', 'Goldner', 'schaefer.carmel@example.com', '2023-03-30 12:41:41', '+16299934756', '55117 Rowan Village Suite 569\nMargueriteland, AR 56274-3218', '$2y$10$f/nHz9XBc5Zflcviu870hux0mnXWHL0eEgeCAUSYN.oYBz7SsF5Pu', 'Unity Bank Plc', '8441458352', '4795679556192', '805', '8018', '10/28', '50000000', 'rn02UhsUON', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(33, 'Dayne', 'Crist', 'fritz60@example.org', '2023-03-30 12:41:41', '+14096335915', '467 Prosacco Avenue\nLake Faymouth, CT 58743', '$2y$10$BPgnrx3QDsoUEuKt7N.Z.uF2XE4LhrGdMtPyV/yKwrXcaMn85Yjcm', 'Wema Bank Plc', '7373934744', '4929233538370476', '452', '9971', '03/25', '50000000', 'E55oNWPaaY', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(34, 'Sonia', 'Bruen', 'hayes.claudine@example.org', '2023-03-30 12:41:42', '+18014847831', '103 McGlynn Lodge\nMooreside, NE 79672', '$2y$10$YkRoxGYMa9e9OMee4I6DZ.Xrtxa5a9AUQoYmgJTFu58oH8KETu1ai', 'Sterling Bank Plc', '0501206709', '348883647517291', '292', '6977', '07/24', '50000000', 'hvbxCKDC9n', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(35, 'Shea', 'Thiel', 'hackett.sienna@example.net', '2023-03-30 12:41:42', '+13329375709', '712 Swaniawski Motorway Suite 834\nNicolaston, ME 06664', '$2y$10$5S0tcPZvyko2wBS2sokgiOaE/9SoOlstz6YCKRe8h4rgBqODfQ7Um', 'Standard Chartered', '5022300329', '4024007101310380', '246', '3988', '04/26', '50000000', 'uxCeeezORm', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(36, 'Jaqueline', 'Leuschke', 'vincenza.cartwright@example.net', '2023-03-30 12:41:42', '+14434255900', '2259 Carroll Lodge\nVolkmanton, IN 27049', '$2y$10$rNkGlnV65kd6IX9FRPJvjevyThOdOgThWkTO00HWSDlLiC6tKpmR.', 'Ecobank Nigeria', '1223440394', '4532382016459779', '771', '2327', '02/24', '50000000', '1fe9sHuP4S', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(37, 'Emerson', 'Schinner', 'iharvey@example.net', '2023-03-30 12:41:42', '+19257327494', '111 Miguel Street Suite 349\nLake Adanton, OH 51544-6962', '$2y$10$velOSAp8GZgKBLRnQZiIvuN2jL3C3p3t89r13C/GdeDzb8IrA6IqS', 'Heritage Bank Plc', '7269148556', '5220412484140884', '389', '6393', '02/25', '50000000', 'E09xVWKmAl', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(38, 'Hellen', 'Denesik', 'dewitt72@example.org', '2023-03-30 12:41:42', '+16803857762', '2920 Abigail Brook Apt. 850\nEast Edytheshire, CO 88778-7125', '$2y$10$d99RxIkGGp/j/GfC0ii4KekbPBaiHyljiKkX.xu2i8DBztWof9R4y', 'Citibank Nigeria Limited', '3730688267', '5127716449478005', '508', '4011', '08/24', '50000000', 'zy1sDZoBjp', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(39, 'Rocky', 'Nader', 'elijah.runolfsson@example.org', '2023-03-30 12:41:42', '+13465364956', '775 Bradtke Skyway\nPort Kendrick, WV 72625-5149', '$2y$10$l9YN5RKTfT6mZhz2nbz0Xel837tDDR1o8OKiBX1.htr4uE3E.3Af6', 'Polaris Bank Limited.', '3731971597', '4485586652317417', '571', '7230', '09/25', '50000000', 'bzro2EzD97', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(40, 'Akeem', 'Denesik', 'margarett50@example.org', '2023-03-30 12:41:42', '+14756386313', '1582 Bode Cliffs Suite 308\nNew Zolafort, NY 48759', '$2y$10$Oyv1fqIIvddHsCzlrg31C.Sx/BhN62hBWvN9PV4H5/a4TLliE2C7e', 'Stanbic IBTC Bank Plc', '2703937597', '2359645019208557', '948', '5401', '12/27', '50000000', 'gZqDjgfQWJ', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(41, 'Diana', 'Aufderhar', 'tkovacek@example.com', '2023-03-30 12:41:42', '+18314335670', '95657 Lera Valley\nElmiraland, AR 10296-8628', '$2y$10$gciHcFP8KPio5Sb4mYEPT.QsDN42bwejJfe6OKsbM9/j8mua2XGs2', 'Standard Chartered', '9592631360', '4556422913683518', '198', '9084', '02/24', '50000000', 'zygjTnwXtf', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(42, 'Braeden', 'Hill', 'stacey.langworth@example.net', '2023-03-30 12:41:42', '+12693260904', '9846 Antwan Brooks\nBirdieton, MI 06792-8834', '$2y$10$rbUiuhp032xkXrD8sLtEHucMS0uNWjHIEX1InPvdAxBaKAmAQbLWy', 'LOTUS BANK', '4909254358', '2647917151696861', '519', '6003', '04/25', '50000000', 'AKSiLww15b', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(43, 'Mavis', 'Torp', 'shanny52@example.org', '2023-03-30 12:41:42', '+12086101876', '156 Upton Via\nD\'Amorebury, NM 52165-8893', '$2y$10$iJRvmdCEECwioD8woMmQLeU2ASSRVZzvsUlH1ljvyZCaEVJA3mLBW', 'Jaiz Bank Plc', '4757331450', '4556181250280', '601', '6687', '08/28', '50000000', 'x2Vt3yGgzI', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(44, 'Alivia', 'Parisian', 'ophelia.wintheiser@example.org', '2023-03-30 12:41:42', '+18789829907', '71545 Kuhic Mill Apt. 713\nNew Lorine, SD 10179', '$2y$10$uF.hFEyvHozd5vRt6GDGdeIl2ZUyU53BgUFAuRcYz.L7PTMmwTgdC', 'Kuda Bank', '6435429569', '4842784666103802', '044', '8531', '09/23', '50000000', 'HpVeNVYNSb', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(45, 'Bridget', 'Ward', 'bryon93@example.net', '2023-03-30 12:41:42', '+18546576173', '226 Addie Club\nWest Nakiastad, IN 56958-2096', '$2y$10$tgIvQM7pnYG9L/fIJeOBiOZJ9z/jZ54Bu/GhweXUoVXMUet7kF3de', 'Sparkle Bank', '5116614801', '6011813896612173', '310', '2010', '12/25', '50000000', 'ECKBeshX0b', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(46, 'Tianna', 'Morissette', 'jada12@example.com', '2023-03-30 12:41:43', '+16208140028', '8320 Colby Manors Apt. 711\nElianechester, OR 32910-3094', '$2y$10$i8bjWL/2bTIfxNi9grpmDeUHjlKgCMsV320/UHfN8nVtJYymZ1qMq', 'Moniepoint Microfinance Bank', '6722544016', '4556411275934304', '972', '3757', '11/24', '50000000', 'Bvzd7Q763b', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(47, 'Nichole', 'Conroy', 'moore.pinkie@example.org', '2023-03-30 12:41:43', '+13515217743', '80005 Romaguera Expressway Apt. 542\nDeannashire, SD 49794-4604', '$2y$10$g1RtHl6IWsafnWNt0nXek.v6TpCqgq.ut54is/Qiq7IjWPZJHZHXm', 'Opay', '1646624432', '2720600918758055', '356', '1425', '05/24', '50000000', 'HcCuAIu8MH', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(48, 'Alvah', 'Schamberger', 'corrine.mitchell@example.org', '2023-03-30 12:41:43', '+17185204166', '9262 Clovis Inlet\nWunschchester, WI 52803', '$2y$10$HMFjEnVcTn.EujfiN.E52uXN971kPocZ8Hd8jby4zbL6gccwI8Pdq', 'Palmpay', '8845160596', '5159509264531532', '640', '5782', '08/24', '50000000', '9s83kR4jNo', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(49, 'Cleora', 'Kuphal', 'zachery.gerhold@example.com', '2023-03-30 12:41:43', '+15758860282', '60442 Gilberto Isle Apt. 672\nLednerhaven, AR 46342-1159', '$2y$10$8l1z9E0fB/aIQVZVGQ0LouDYz.Ml6ErSZj1bHpHi7kRIOxA/ZKUOO', 'First Bank of Nigeria Limited', '6852296485', '2648174400573843', '497', '1386', '06/27', '50000000', 'Q9KUkjWVaP', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(50, 'Elisa', 'King', 'huel.marquise@example.net', '2023-03-30 12:41:43', '+16805853387', '2794 Howell Lane Suite 847\nNorth Hiram, ME 73030', '$2y$10$cfCzlosFnHs0cXDkn.bOOuTLI8IARCYnr40g8QjdL3v7cDmRxdUDe', 'United Bank for Africa Plc', '4371654275', '4929599975859969', '285', '3872', '09/25', '50000000', '4LuFJYvdyh', '2023-03-30 12:41:43', '2023-03-30 12:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
CREATE TABLE IF NOT EXISTS `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'credit or debit',
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receiverid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `amount`, `user_id`, `type`, `ref`, `created_at`, `updated_at`, `receiverid`, `date`) VALUES
(1, '10000000', '1', 'credit', '648513YQ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '1', '2023-04-06'),
(2, '10000000', '2', 'credit', '270164MA', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '2', '2023-04-06'),
(3, '10000000', '3', 'credit', '189643IZ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '3', '2023-04-06'),
(4, '10000000', '4', 'credit', '943185QB', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '4', '2023-04-06'),
(5, '10000000', '5', 'credit', '785916BJ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '5', '2023-04-06'),
(6, '10000000', '6', 'credit', '208567CT', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '6', '2023-04-06'),
(7, '10000000', '7', 'credit', '607135LX', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '7', '2023-04-06'),
(8, '10000000', '8', 'credit', '768052UY', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '8', '2023-04-06'),
(9, '10000000', '9', 'credit', '562981EL', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '9', '2023-04-06'),
(10, '10000000', '10', 'credit', '152074FY', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '10', '2023-04-06'),
(11, '10000000', '11', 'credit', '578301JD', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '11', '2023-04-06'),
(12, '10000000', '12', 'credit', '893042FB', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '12', '2023-04-06'),
(13, '10000000', '13', 'credit', '491325HR', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '13', '2023-04-06'),
(14, '10000000', '14', 'credit', '187462IL', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '14', '2023-04-06'),
(15, '10000000', '15', 'credit', '608172ST', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '15', '2023-04-06'),
(16, '10000000', '16', 'credit', '368950ZG', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '16', '2023-04-06'),
(17, '10000000', '17', 'credit', '654201WA', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '17', '2023-04-06'),
(18, '10000000', '18', 'credit', '026397AU', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '18', '2023-04-06'),
(19, '10000000', '19', 'credit', '351084HS', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '19', '2023-04-06'),
(20, '10000000', '20', 'credit', '841376QC', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '20', '2023-04-06'),
(21, '10000000', '21', 'credit', '067423WU', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '21', '2023-04-06'),
(22, '10000000', '22', 'credit', '107598MF', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '22', '2023-04-06'),
(23, '10000000', '23', 'credit', '786210TN', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '23', '2023-04-06'),
(24, '10000000', '24', 'credit', '039875VM', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '24', '2023-04-06'),
(25, '10000000', '25', 'credit', '945870GD', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '25', '2023-04-06'),
(26, '10000000', '26', 'credit', '493086ET', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '26', '2023-04-06'),
(27, '10000000', '27', 'credit', '683215EY', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '27', '2023-04-06'),
(28, '10000000', '28', 'credit', '295073RA', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '28', '2023-04-06'),
(29, '10000000', '29', 'credit', '732406WZ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '29', '2023-04-06'),
(30, '10000000', '30', 'credit', '740219BP', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '30', '2023-04-06'),
(31, '10000000', '31', 'credit', '304927WQ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '31', '2023-04-06'),
(32, '10000000', '32', 'credit', '814702ZY', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '32', '2023-04-06'),
(33, '10000000', '33', 'credit', '192483NE', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '33', '2023-04-06'),
(34, '10000000', '34', 'credit', '098146BM', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '34', '2023-04-06'),
(35, '10000000', '35', 'credit', '347651CQ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '35', '2023-04-06'),
(36, '10000000', '36', 'credit', '291645QC', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '36', '2023-04-06'),
(37, '10000000', '37', 'credit', '251984IF', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '37', '2023-04-06'),
(38, '10000000', '38', 'credit', '631845FS', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '38', '2023-04-06'),
(39, '10000000', '39', 'credit', '190732UI', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '39', '2023-04-06'),
(40, '10000000', '40', 'credit', '987204TS', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '40', '2023-04-06'),
(41, '10000000', '41', 'credit', '492568TU', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '41', '2023-04-06'),
(42, '10000000', '42', 'credit', '697235HM', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '42', '2023-04-06'),
(43, '10000000', '43', 'credit', '301726DH', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '43', '2023-04-06'),
(44, '10000000', '44', 'credit', '593287JE', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '44', '2023-04-06'),
(45, '10000000', '45', 'credit', '017953XE', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '45', '2023-04-06'),
(46, '10000000', '46', 'credit', '362015VZ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '46', '2023-04-06'),
(47, '10000000', '47', 'credit', '658271ML', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '47', '2023-04-06'),
(48, '10000000', '48', 'credit', '021369IJ', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '48', '2023-04-06'),
(49, '10000000', '49', 'credit', '298317AT', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '49', '2023-04-06'),
(50, '10000000', '50', 'credit', '823964LK', '2023-04-06 10:31:59', '2023-04-06 10:31:59', '50', '2023-04-06'),
(51, '1000', '2', 'debit', '482716DK', '2023-04-06 10:34:57', '2023-04-06 10:34:57', '1', '2023-04-06'),
(52, '1000', '1', 'credit', '482716DK', '2023-04-06 10:34:57', '2023-04-06 10:34:57', '1', '2023-04-06'),
(53, '2000', '2', 'debit', '315648VH', '2023-04-06 10:46:37', '2023-04-06 10:46:37', '3', '2023-04-06'),
(54, '2000', '3', 'credit', '315648VH', '2023-04-06 10:46:37', '2023-04-06 10:46:37', '3', '2023-04-06'),
(55, '7000', '7', 'debit', '798104VX', '2023-04-06 11:43:37', '2023-04-06 11:43:37', '1', '2023-04-06'),
(56, '7000', '1', 'credit', '798104VX', '2023-04-06 11:43:37', '2023-04-06 11:43:37', '1', '2023-04-06'),
(57, '7000', '1', 'debit', '639187MU', '2023-04-06 11:53:16', '2023-04-06 11:53:16', '2', '2023-04-06'),
(58, '7000', '2', 'credit', '639187MU', '2023-04-06 11:53:16', '2023-04-06 11:53:16', '2', '2023-04-06'),
(59, '5000', '6', 'debit', '315906UX', '2023-04-06 12:29:00', '2023-04-06 12:29:00', '5', '2023-04-06'),
(60, '5000', '5', 'credit', '315906UX', '2023-04-06 12:29:00', '2023-04-06 12:29:00', '5', '2023-04-06'),
(61, '1000', '2', 'debit', '530891HA', '2023-04-07 10:21:50', '2023-04-07 10:21:50', '1', '2023-04-07'),
(62, '1000', '1', 'credit', '530891HA', '2023-04-07 10:21:50', '2023-04-07 10:21:50', '1', '2023-04-07'),
(63, '2000', '4', 'debit', '267591SQ', '2023-04-07 10:43:52', '2023-04-07 10:43:52', '1', '2023-04-07'),
(64, '2000', '1', 'credit', '267591SQ', '2023-04-07 10:43:52', '2023-04-07 10:43:52', '1', '2023-04-07'),
(65, '1000', '2', 'debit', '487931RD', '2023-04-08 11:31:00', '2023-04-08 11:31:00', '1', '2023-04-08'),
(66, '1000', '1', 'credit', '487931RD', '2023-04-08 11:31:00', '2023-04-08 11:31:00', '1', '2023-04-08'),
(67, '500', '1', 'debit', '781059DK', '2023-04-08 11:38:12', '2023-04-08 11:38:12', '2', '2023-04-08'),
(68, '500', '2', 'credit', '781059DK', '2023-04-08 11:38:12', '2023-04-08 11:38:12', '2', '2023-04-08'),
(69, '1000', '1', 'debit', '465732JM', '2023-04-13 13:40:07', '2023-04-13 13:40:07', '3', '2023-04-13'),
(70, '1000', '3', 'credit', '465732JM', '2023-04-13 13:40:07', '2023-04-13 13:40:07', '3', '2023-04-13'),
(71, '500', '2', 'debit', '395864DZ', '2023-04-13 13:43:01', '2023-04-13 13:43:01', '1', '2023-04-13'),
(72, '500', '1', 'credit', '395864DZ', '2023-04-13 13:43:01', '2023-04-13 13:43:01', '1', '2023-04-13'),
(73, '500', '5', 'debit', '957820LJ', '2023-04-13 15:20:54', '2023-04-13 15:20:54', '1', '2023-04-13'),
(74, '500', '1', 'credit', '957820LJ', '2023-04-13 15:20:54', '2023-04-13 15:20:54', '1', '2023-04-13'),
(75, '2000', '1', 'debit', '539401ZG', '2023-04-13 15:23:50', '2023-04-13 15:23:50', '2', '2023-04-13'),
(76, '2000', '2', 'credit', '539401ZG', '2023-04-13 15:23:50', '2023-04-13 15:23:50', '2', '2023-04-13'),
(77, '1000', '3', 'debit', '782430ER', '2023-04-14 07:06:16', '2023-04-14 07:06:16', '1', '2023-04-14'),
(78, '1000', '1', 'credit', '782430ER', '2023-04-14 07:06:16', '2023-04-14 07:06:16', '1', '2023-04-14'),
(79, '500', '1', 'debit', '213097WZ', '2023-04-14 07:26:48', '2023-04-14 07:26:48', '3', '2023-04-14'),
(80, '500', '3', 'credit', '213097WZ', '2023-04-14 07:26:48', '2023-04-14 07:26:48', '3', '2023-04-14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
