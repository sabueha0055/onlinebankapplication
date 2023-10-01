-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2023 at 07:21 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_28_093811_create_transactions_table', 1),
(6, '2023_03_30_141118_create_wallets_table', 2);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `senderdetail`, `destaccount`, `destbank`, `destname`, `user_id`, `amount`, `ref`, `mastercard`, `expiry`, `cvv`, `pin`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Miss Audie Stroman I-----5191335077-----50000000', '3456542378', 'Lavina Tremblay', 'Akpan udo', '1', '5000', '270938GB', '2377797755721943', '07/24', '516', '4081', '2023-03-31', '1', '2023-03-31 10:25:16', '2023-03-31 10:26:14'),
(2, 'Kurt Harber Jr.-----6937607685-----50000000', '3456542378', 'Rodrigo Hermann', 'queen', '3', '5000', '750943MF', '2621901138795889', '07/24', '224', '5520', '2023-03-31', '1', '2023-03-31 10:42:03', '2023-03-31 10:44:15'),
(3, 'Lavina Tremblay-----9682309890-----50000000', '3567432133', 'Milton Walker', 'Okon Etim', '5', '3000', '751693NQ', '5357238437203205', '08/23', '105', '9841', '2023-03-31', '1', '2023-03-31 10:45:42', '2023-03-31 10:46:39'),
(4, 'Lamont Osinski-----2279731253-----50000000', '2312345678', 'Rodrigo Hermann', 'Akpan udo', '6', '40000', '594837ZK', '4916446326483989', '10/25', '157', '3935', '2023-03-31', '1', '2023-03-31 10:48:20', '2023-03-31 10:49:37'),
(5, 'Access Bank Plc-----5191335077-----49995000', '3567432145', 'Heritage Bank Plc', 'Gregorio Sabueha', '1', '1000', '703415KQ', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 17:09:28', '2023-04-02 17:09:28'),
(6, 'Access Bank Plc-----5191335077-----49995000', '2312345678', 'Unity Bank Plc', 'Okon Etim', '1', '3000', '023495GC', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 17:10:29', '2023-04-02 17:10:29'),
(7, 'Access Bank Plc-----5191335077-----49995000', '3567432133', 'First Bank of Nigeria Limited', 'Hope Stanley', '1', '3000', '576324VU', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 17:43:58', '2023-04-02 17:43:58'),
(8, 'Access Bank Plc-----5191335077-----49995000', '3567432133', 'First Bank of Nigeria Limited', 'Gregorio Sabueha', '1', '5000', '517934YM', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 17:57:15', '2023-04-02 17:57:15'),
(9, 'Access Bank Plc-----5191335077-----49995000', '3456542378', 'Wema Bank Plc', 'Akpan udo', '1', '2000', '963521RQ', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:00:02', '2023-04-02 18:00:02'),
(10, 'Access Bank Plc-----5191335077-----49995000', '3456542378', 'Wema Bank Plc', 'Akpan udo', '1', '2000', '071349QM', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:02:49', '2023-04-02 18:02:49'),
(11, 'Access Bank Plc-----5191335077-----49995000', '3456542378', 'Wema Bank Plc', 'Akpan udo', '1', '2000', '025147CD', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:04:10', '2023-04-02 18:04:10'),
(12, 'Access Bank Plc-----5191335077-----49995000', '3567432133', 'Titan Trust bank', 'Akpan udo', '1', '1000', '459762GA', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:06:28', '2023-04-02 18:06:28'),
(13, 'Access Bank Plc-----5191335077-----49995000', '3456542378', 'Standard Chartered', 'Okon Etim', '1', '2000', '852106QJ', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:07:09', '2023-04-02 18:07:09'),
(14, 'Access Bank Plc-----5191335077-----49995000', '3456542378', 'Standard Chartered', 'Okon Etim', '1', '2000', '073289NS', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:10:41', '2023-04-02 18:10:41'),
(15, 'Access Bank Plc-----5191335077-----49995000', '3456542378', 'Standard Chartered', 'Okon Etim', '1', '2000', '376180NS', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:13:21', '2023-04-02 18:13:21'),
(16, 'Access Bank Plc-----5191335077-----49995000', '3456542378', 'Standard Chartered', 'Okon Etim', '1', '2000', '352170RP', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:17:06', '2023-04-02 18:17:06'),
(17, 'Fidelity Bank Plc-----1396991625-----50000000', '3456789043', 'Union Bank of Nigeria Plc', 'Hope Stanley', '2', '2500', '049531HL', NULL, NULL, NULL, NULL, NULL, '0', '2023-04-02 18:18:58', '2023-04-02 18:18:58');

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
(1, 'Nora', 'Reichert', 'murphy.oreilly@example.net', '2023-03-30 12:41:39', '8067009654', '4714 Monahan Unions Suite 286\nEast Hudsonside, RI 30428-9688', '$2y$10$rIBDSgHqvb2pkk77G0VHBeAsYGaCPYz7Nvi78DTF4H03qsO36shHi', 'Access Bank Plc', '5191335077', '2377797755721943', '516', '4081', '07/24', '49995000', 'XV9X6HTVoW', '2023-03-30 12:41:43', '2023-03-31 10:26:14'),
(2, 'Annalise', 'Bednar', 'rtorp@example.org', '2023-03-30 12:41:39', '09134408260', '46141 Wilkinson Skyway\nLake Zionchester, NJ 85762-4096', '$2y$10$J4aSEoIvPIC.clTMBo3KLOzZ3gUmYmrOI.WYdmufYcF4/pFoHhpjy', 'Fidelity Bank Plc', '1396991625', '3528038728158459', '372', '4120', '03/24', '50000000', 'rNvAZlWtfU', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(3, 'Caleigh', 'Daniel', 'ternser@example.org', '2023-03-30 12:41:39', '+15677033320', '7119 Casper Spur\nWest Aliya, VA 17640-9977', '$2y$10$adyDkDq4CjkkdoRf1B7P9unpJ9Z0AhMfjptzsSUtfGyFn/PN.dzFi', 'First City Monument Bank Limited', '6937607685', '2621901138795889', '224', '5520', '07/24', '49990000', '56YecQF401', '2023-03-30 12:41:43', '2023-03-31 10:44:15'),
(4, 'Carli', 'Friesen', 'king.felicita@example.net', '2023-03-30 12:41:39', '+14199360926', '820 Raoul Row Apt. 757\nDuBuquebury, SC 89137-5063', '$2y$10$CuAq305Hs0ubWWi3lzcd3eFmvG78HmkhpQnlLpUNmRRhVfNOVJbUa', 'First Bank of Nigeria Limited', '7264325750', '6011535540666889', '105', '1624', '05/25', '50000000', 'b8GaKCr3qy', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(5, 'Alexzander', 'Hodkiewicz', 'hank12@example.net', '2023-03-30 12:41:39', '+16155592499', '83888 Hartmann Extensions Apt. 131\nEast Rylanburgh, IA 69788-0884', '$2y$10$t/PlFQda6lx3VYSunDlgH.Gfv18nVH1sYNpj1sc5L2txHiDRo0djm', 'Union Bank of Nigeria Plc', '9682309890', '5357238437203205', '105', '9841', '08/23', '49997000', 'VN4C3lxtcw', '2023-03-30 12:41:43', '2023-03-31 10:46:39'),
(6, 'Faustino', 'Hodkiewicz', 'name29@example.com', '2023-03-30 12:41:39', '+18705906926', '6583 Roderick Mall\nLake Clark, OH 20794', '$2y$10$FAKfaEp4iN3dISKSmZKB4OiVEFzxWfbzKPtdPrbS.wTLboEPmBHn2', 'United Bank for Africa Plc', '2279731253', '4916446326483989', '157', '3935', '10/25', '49960000', 'yxIF0mnsks', '2023-03-30 12:41:43', '2023-03-31 10:49:37'),
(7, 'Aglae', 'Buckridge', 'abdul16@example.net', '2023-03-30 12:41:39', '+13343027494', '60502 Crist View Apt. 236\nSouth Wallace, TX 58296-8304', '$2y$10$H3KhFpv7l/jC0Dy7HT5OU.oG1FTNvRGDU5es0P8sgo8yPY.GPo/Ne', 'Guaranty Trust Bank Plc', '9407439519', '2597907364676461', '299', '3559', '04/23', '50000000', 'qFkPYA4gQo', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(8, 'Vicente', 'Hagenes', 'bgibson@example.com', '2023-03-30 12:41:40', '+17183152555', '6887 Walter Meadow\nBrakusport, CO 25821', '$2y$10$pCy0gkyXRZzS11UnApspjuQVQTBlE7VDQs1kDMzgPXTP5piVpGXoe', 'Citibank Nigeria Limited', '4628749559', '2328663461591907', '482', '7829', '08/25', '50000000', 'nBxPFmuTk5', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(9, 'Ophelia', 'Durgan', 'jordy.hintz@example.org', '2023-03-30 12:41:40', '+12622956925', '31906 Farrell Alley\nRebekahland, MD 81260-4476', '$2y$10$40sYQC5kyxae720ICJVjluckj9jM9aFYTXj7hRebvAnm4ytTnKJ7S', 'Ecobank Nigeria', '2606012142', '4916123100071765', '546', '2964', '06/24', '50000000', 'QZ9EnKpcH7', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(10, 'Sandy', 'Hauck', 'simonis.augustine@example.com', '2023-03-30 12:41:40', '+19344169913', '3099 Denesik Summit\nMattieville, KY 15047-5662', '$2y$10$xtMiVBGOKf.JGmol6y9qLuSAXEfhK2YPwyfabRNamuACzlKhxQMP2', 'Heritage Bank Plc', '5771031672', '4532388960369716', '828', '7387', '06/23', '50000000', 'ZZ9nvN82PX', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(11, 'Lyric', 'Corkery', 'alejandrin.russel@example.com', '2023-03-30 12:41:40', '+12106829851', '10855 Johns Stravenue Apt. 358\nGrantville, WV 26239-4127', '$2y$10$kyv6v1Dnj4BwGV8M3h.oo.sDffPiIqJFRFjANMc5iZHqqxv3F/mEW', 'Keystone Bank Limited', '4555731474', '2655229461880063', '079', '6097', '11/25', '50000000', 'sbe6YSquOI', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(12, 'Zelda', 'Klein', 'taryn82@example.com', '2023-03-30 12:41:40', '+18287869764', '6933 Fisher Drive\nPort Brianaburgh, WY 76387-1581', '$2y$10$No/RIB1fq/qWuhLMrhlSAerPe6xFqWJBtbUNM7r3fPu.4HJcO18fS', 'Polaris Bank Limited ', '5943864075', '4532497999167', '252', '2452', '08/23', '50000000', '9330u76T0o', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(13, 'Alfreda', 'Donnelly', 'armstrong.leonora@example.net', '2023-03-30 12:41:40', '+12403325102', '128 Cierra Point Suite 327\nWest Clement, LA 87557', '$2y$10$ps/C.ZwNezsSsV1DvR95Q.wWcTFgum8PIgJcnSNk73QbGjA/1BcN.', 'Stanbic IBTC Bank Plc', '1350531384', '2591827728484590', '751', '4820', '01/26', '50000000', '5qJQ3Lb1um', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(14, 'Jayde', 'Torp', 'smith.llewellyn@example.com', '2023-03-30 12:41:40', '+13473397252', '568 Genoveva Summit Apt. 951\nEmelyhaven, SC 92319-4770', '$2y$10$uGYhVfNo76Cu6POJHUf5luRRfjho4K5L5ds3Hk.av2gtGQHMyT18a', 'Standard Chartered', '7031505039', '5207379644937755', '789', '2049', '04/24', '50000000', 'tdlqlJuuAD', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(15, 'Frieda', 'Renner', 'deckow.titus@example.net', '2023-03-30 12:41:40', '+16162610280', '210 McGlynn Harbors Suite 213\nWest Juliefort, SC 27700-2474', '$2y$10$Xz80sSI1LUepViEgRNDu.OX8RhEER2eRTkGq0P4csaonigHs/l0pC', 'Sterling Bank Plc', '1085538924', '2363915612788733', '462', '0449', '06/23', '50000000', 'fyOj32oFY0', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(16, 'Rosalia', 'Oberbrunner', 'stamm.elenora@example.org', '2023-03-30 12:41:40', '+16419750200', '41428 Ashlee Burgs\nLake Jessy, OK 04353-5829', '$2y$10$H/XCtQozNA2ySZepJWbBBuBJ0bosSBtBslXe/ha36gHUeZt5L9/4W', 'Titan Trust bank', '8859621864', '4539243018520765', '307', '8730', '04/25', '50000000', 'wbk1NycAa0', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(17, 'Anika', 'Kassulke', 'gideon.bradtke@example.com', '2023-03-30 12:41:40', '+18708281809', '2236 Toney Ferry\nPort Elyssafurt, MT 38286-3450', '$2y$10$lTsfG.MsQDrIFMSrFeKs3uj0XWT2K0gNu1g6v/2vBRwL1CMPBAPiG', 'Unity Bank Plc', '4482539037', '4485824740640', '389', '9359', '07/25', '50000000', 'S4GFvjdE0y', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(18, 'Wilmer', 'Bernier', 'tremaine.runte@example.org', '2023-03-30 12:41:40', '+16236148713', '30233 Ewald Isle\nPort Pansystad, CT 75452-8092', '$2y$10$JRbyxnk90EAand.WzHTr6OwcuW10XeGm5Olug4jBkCSnaJ76YwOeC', 'Wema Bank Plc', '9418533337', '4551085538363538', '519', '8773', '03/25', '50000000', 'uCDhU0uB8a', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(19, 'Edd', 'Balistreri', 'abbie38@example.org', '2023-03-30 12:41:40', '+12238930490', '423 Will Mall Suite 405\nNew Faustino, AZ 43802-9861', '$2y$10$PnA5hnqEwVe7hLV4MHZnHeWudfzJZNx5tVI8QGGoXN/8RpCv7.HMi', 'Globus Bank Limited', '6011289952', '2720914207478246', '460', '5945', '06/25', '50000000', '5neORqHjuP', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(20, 'Margot', 'Terry', 'gideon.walker@example.net', '2023-03-30 12:41:40', '+17854227785', '579 Riley Skyway\nPort Stacyborough, WA 80657', '$2y$10$oAEsT0dUJNuFtGkvrltfLOpT1wCcZdGawLFJ98WUDpt8fV1OCbwsa', 'Jaiz Bank Plc', '4928836842', '4716106996060382', '632', '8871', '10/23', '50000000', 'ZSulNwgdOc', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(21, 'Johathan', 'Donnelly', 'pjakubowski@example.com', '2023-03-30 12:41:41', '+16692363498', '52633 Verda Ridges Apt. 277\nPort Yesseniatown, SD 20366-7355', '$2y$10$MmrJlv3.kmcCRqTEdTlvpeYUd2L6E9U7.1avvfLW.uJvhVq5pJp7y', 'LOTUS BANK', '9449805646', '2581206587178852', '742', '2190', '02/24', '50000000', '6KM6acTTO9', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(22, 'Geovanny', 'Johnston', 'hheaney@example.net', '2023-03-30 12:41:41', '+15747042279', '97310 Hauck Groves\nTurcottemouth, RI 19995-3271', '$2y$10$IzhvxascTjzIBfWsyWpSP.XZ1AqemghFJRg8qmQU4Fp8wR0fTbWMC', 'Kuda Bank', '9780202653', '2720152765587153', '432', '2542', '12/24', '50000000', '3zB076ZDnJ', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(23, 'Alice', 'Kling', 'mosciski.willie@example.com', '2023-03-30 12:41:41', '+14109894332', '38673 Baumbach Overpass\nSouth Ned, UT 20604-7726', '$2y$10$RiB6Ya1CMEjry2Yu9f.wpOuK.jigyDclJ2u5GSOlHfjpb1FLSdMAS', 'Moniepoint Microfinance Bank', '6263578802', '3589686518828610', '994', '6266', '01/26', '50000000', 'Rk1eVomlLK', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(24, 'Keshaun', 'Emmerich', 'arianna.zieme@example.org', '2023-03-30 12:41:41', '+18729884073', '4701 Cleta Turnpike\nEzequielmouth, MT 00254-4742', '$2y$10$St1oEHGRcDn6rHgE5HofjuphB.D94xi.Vbjl0PvkFFgSaAeHPZnOy', 'Opay', '7459093531', '4024007136673695', '475', '6278', '04/25', '50000000', 'hBquB9KVGc', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(25, 'Glennie', 'Bednar', 'wisozk.adah@example.org', '2023-03-30 12:41:41', '+13125727959', '4110 Orn Run\nNorth Beatrice, CA 08621', '$2y$10$hBs5yE.LWA.fdzc4aXQgcuOq2UkAnAKTwlMleoYkLfRR2PtDIR0pu', 'Palmpay', '4666583200', '4556506463675', '169', '9416', '10/24', '50000000', 'xmDLIJ4Y6v', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(26, 'Marcia', 'VonRueden', 'russel96@example.net', '2023-03-30 12:41:41', '+17267732843', '4378 Beahan Ridges Suite 438\nRomagueraview, OK 72827', '$2y$10$Gexpbw7dPnpqI2jBU1H1h.3bfF8BreqbLqtlUYJOxvlQ.G7.CCKF2', 'Access Bank Plc', '2082866536', '5483571466727182', '258', '3198', '01/26', '50000000', '98SYXAQCTd', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(27, 'Fredrick', 'Konopelski', 'jamar35@example.com', '2023-03-30 12:41:41', '+19478686533', '4925 Brendon Station\nSouth Jaunita, OR 89055-3515', '$2y$10$9qkPMjWAO5QcFkufG.XDu.AZDtEVNiIFpBT6AzIKGFYoBy8UEUGbe', 'Fidelity Bank Plc', '1681104823', '4929830274173988', '857', '5057', '05/23', '50000000', 'MqBWPg0HfA', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(28, 'Justice', 'Zulauf', 'ike.stamm@example.org', '2023-03-30 12:41:41', '+17066166991', '3995 Blanda Ports Suite 508\nKielshire, VT 03800', '$2y$10$WiLW2IB9MFvIi8Dc1xVwJu8KTWHQW.JhgyYqeSgOhVD.N0SgPAGaG', 'First City Monument Bank Limited', '3164747457', '4485790810114118', '963', '8283', '03/24', '50000000', 'GJKjJW4bjD', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(29, 'Kiley', 'Schamberger', 'millie85@example.net', '2023-03-30 12:41:41', '+13516424736', '160 Lesley Spring Apt. 939\nLake Lukas, KY 43290', '$2y$10$MwRFtCOfWj6ICvKW71JTRuqnxhsi9nEo8JvkN9x2hXGBPXlUNmCpG', 'First Bank of Nigeria Limited', '6698418576', '4716040029740282', '679', '7372', '02/26', '50000000', 'FuklL6ufzh', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(30, 'Lexie', 'Medhurst', 'oprice@example.com', '2023-03-30 12:41:41', '+16107583099', '178 Myah Parkway Apt. 998\nNorth Teresaborough, IA 13980', '$2y$10$xMSiLfFekMAktbdolz0laOJh8iwDmOvMxvPJeFz9Wy7LB6dhmN112', 'Union Bank of Nigeria Plc', '1766135645', '5301824775986068', '970', '3043', '03/26', '50000000', 'q4mycFXNRJ', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(31, 'Cornell', 'Goyette', 'solon.morissette@example.com', '2023-03-30 12:41:41', '+13329808015', '37852 Porter Springs Apt. 863\nNitzschechester, OR 20284-5981', '$2y$10$.mgS4/SWXU89YR.XqTsDqOYhz29UsONaBTJIpcBcw5oEJxHfXfFF2', 'United Bank for Africa Plc', '1324056423', '2496966012155312', '549', '5308', '06/25', '50000000', 'uEWrKgmsaC', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(32, 'Juwan', 'Goldner', 'schaefer.carmel@example.com', '2023-03-30 12:41:41', '+16299934756', '55117 Rowan Village Suite 569\nMargueriteland, AR 56274-3218', '$2y$10$f/nHz9XBc5Zflcviu870hux0mnXWHL0eEgeCAUSYN.oYBz7SsF5Pu', 'Unity Bank Plc', '8441458352', '4795679556192', '805', '8018', '10/23', '50000000', 'rn02UhsUON', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(33, 'Dayne', 'Crist', 'fritz60@example.org', '2023-03-30 12:41:41', '+14096335915', '467 Prosacco Avenue\nLake Faymouth, CT 58743', '$2y$10$BPgnrx3QDsoUEuKt7N.Z.uF2XE4LhrGdMtPyV/yKwrXcaMn85Yjcm', 'Wema Bank Plc', '7373934744', '4929233538370476', '452', '9971', '03/25', '50000000', 'E55oNWPaaY', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(34, 'Sonia', 'Bruen', 'hayes.claudine@example.org', '2023-03-30 12:41:42', '+18014847831', '103 McGlynn Lodge\nMooreside, NE 79672', '$2y$10$YkRoxGYMa9e9OMee4I6DZ.Xrtxa5a9AUQoYmgJTFu58oH8KETu1ai', 'Sterling Bank Plc', '0501206709', '348883647517291', '292', '6977', '07/24', '50000000', 'hvbxCKDC9n', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(35, 'Shea', 'Thiel', 'hackett.sienna@example.net', '2023-03-30 12:41:42', '+13329375709', '712 Swaniawski Motorway Suite 834\nNicolaston, ME 06664', '$2y$10$5S0tcPZvyko2wBS2sokgiOaE/9SoOlstz6YCKRe8h4rgBqODfQ7Um', 'Standard Chartered', '5022300329', '4024007101310380', '246', '3988', '04/23', '50000000', 'uxCeeezORm', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(36, 'Jaqueline', 'Leuschke', 'vincenza.cartwright@example.net', '2023-03-30 12:41:42', '+14434255900', '2259 Carroll Lodge\nVolkmanton, IN 27049', '$2y$10$rNkGlnV65kd6IX9FRPJvjevyThOdOgThWkTO00HWSDlLiC6tKpmR.', 'Ecobank Nigeria', '1223440394', '4532382016459779', '771', '2327', '02/24', '50000000', '1fe9sHuP4S', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(37, 'Emerson', 'Schinner', 'iharvey@example.net', '2023-03-30 12:41:42', '+19257327494', '111 Miguel Street Suite 349\nLake Adanton, OH 51544-6962', '$2y$10$velOSAp8GZgKBLRnQZiIvuN2jL3C3p3t89r13C/GdeDzb8IrA6IqS', 'Heritage Bank Plc', '7269148556', '5220412484140884', '389', '6393', '02/25', '50000000', 'E09xVWKmAl', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(38, 'Hellen', 'Denesik', 'dewitt72@example.org', '2023-03-30 12:41:42', '+16803857762', '2920 Abigail Brook Apt. 850\nEast Edytheshire, CO 88778-7125', '$2y$10$d99RxIkGGp/j/GfC0ii4KekbPBaiHyljiKkX.xu2i8DBztWof9R4y', 'Citibank Nigeria Limited', '3730688267', '5127716449478005', '508', '4011', '08/24', '50000000', 'zy1sDZoBjp', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(39, 'Rocky', 'Nader', 'elijah.runolfsson@example.org', '2023-03-30 12:41:42', '+13465364956', '775 Bradtke Skyway\nPort Kendrick, WV 72625-5149', '$2y$10$l9YN5RKTfT6mZhz2nbz0Xel837tDDR1o8OKiBX1.htr4uE3E.3Af6', 'Polaris Bank Limited.', '3731971597', '4485586652317417', '571', '7230', '09/25', '50000000', 'bzro2EzD97', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(40, 'Akeem', 'Denesik', 'margarett50@example.org', '2023-03-30 12:41:42', '+14756386313', '1582 Bode Cliffs Suite 308\nNew Zolafort, NY 48759', '$2y$10$Oyv1fqIIvddHsCzlrg31C.Sx/BhN62hBWvN9PV4H5/a4TLliE2C7e', 'Stanbic IBTC Bank Plc', '2703937597', '2359645019208557', '948', '5401', '12/23', '50000000', 'gZqDjgfQWJ', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(41, 'Diana', 'Aufderhar', 'tkovacek@example.com', '2023-03-30 12:41:42', '+18314335670', '95657 Lera Valley\nElmiraland, AR 10296-8628', '$2y$10$gciHcFP8KPio5Sb4mYEPT.QsDN42bwejJfe6OKsbM9/j8mua2XGs2', 'Standard Chartered', '9592631360', '4556422913683518', '198', '9084', '02/24', '50000000', 'zygjTnwXtf', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(42, 'Braeden', 'Hill', 'stacey.langworth@example.net', '2023-03-30 12:41:42', '+12693260904', '9846 Antwan Brooks\nBirdieton, MI 06792-8834', '$2y$10$rbUiuhp032xkXrD8sLtEHucMS0uNWjHIEX1InPvdAxBaKAmAQbLWy', 'LOTUS BANK', '4909254358', '2647917151696861', '519', '6003', '04/25', '50000000', 'AKSiLww15b', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(43, 'Mavis', 'Torp', 'shanny52@example.org', '2023-03-30 12:41:42', '+12086101876', '156 Upton Via\nD\'Amorebury, NM 52165-8893', '$2y$10$iJRvmdCEECwioD8woMmQLeU2ASSRVZzvsUlH1ljvyZCaEVJA3mLBW', 'Jaiz Bank Plc', '4757331450', '4556181250280', '601', '6687', '08/23', '50000000', 'x2Vt3yGgzI', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(44, 'Alivia', 'Parisian', 'ophelia.wintheiser@example.org', '2023-03-30 12:41:42', '+18789829907', '71545 Kuhic Mill Apt. 713\nNew Lorine, SD 10179', '$2y$10$uF.hFEyvHozd5vRt6GDGdeIl2ZUyU53BgUFAuRcYz.L7PTMmwTgdC', 'Kuda Bank', '6435429569', '4842784666103802', '044', '8531', '09/23', '50000000', 'HpVeNVYNSb', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(45, 'Bridget', 'Ward', 'bryon93@example.net', '2023-03-30 12:41:42', '+18546576173', '226 Addie Club\nWest Nakiastad, IN 56958-2096', '$2y$10$tgIvQM7pnYG9L/fIJeOBiOZJ9z/jZ54Bu/GhweXUoVXMUet7kF3de', 'Sparkle Bank', '5116614801', '6011813896612173', '310', '2010', '12/25', '50000000', 'ECKBeshX0b', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(46, 'Tianna', 'Morissette', 'jada12@example.com', '2023-03-30 12:41:43', '+16208140028', '8320 Colby Manors Apt. 711\nElianechester, OR 32910-3094', '$2y$10$i8bjWL/2bTIfxNi9grpmDeUHjlKgCMsV320/UHfN8nVtJYymZ1qMq', 'Moniepoint Microfinance Bank', '6722544016', '4556411275934304', '972', '3757', '11/24', '50000000', 'Bvzd7Q763b', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(47, 'Nichole', 'Conroy', 'moore.pinkie@example.org', '2023-03-30 12:41:43', '+13515217743', '80005 Romaguera Expressway Apt. 542\nDeannashire, SD 49794-4604', '$2y$10$g1RtHl6IWsafnWNt0nXek.v6TpCqgq.ut54is/Qiq7IjWPZJHZHXm', 'Opay', '1646624432', '2720600918758055', '356', '1425', '05/24', '50000000', 'HcCuAIu8MH', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(48, 'Alvah', 'Schamberger', 'corrine.mitchell@example.org', '2023-03-30 12:41:43', '+17185204166', '9262 Clovis Inlet\nWunschchester, WI 52803', '$2y$10$HMFjEnVcTn.EujfiN.E52uXN971kPocZ8Hd8jby4zbL6gccwI8Pdq', 'Palmpay', '8845160596', '5159509264531532', '640', '5782', '08/24', '50000000', '9s83kR4jNo', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
(49, 'Cleora', 'Kuphal', 'zachery.gerhold@example.com', '2023-03-30 12:41:43', '+15758860282', '60442 Gilberto Isle Apt. 672\nLednerhaven, AR 46342-1159', '$2y$10$8l1z9E0fB/aIQVZVGQ0LouDYz.Ml6ErSZj1bHpHi7kRIOxA/ZKUOO', 'First Bank of Nigeria Limited', '6852296485', '2648174400573843', '497', '1386', '06/23', '50000000', 'Q9KUkjWVaP', '2023-03-30 12:41:43', '2023-03-30 12:41:43'),
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `amount`, `user_id`, `type`, `ref`, `created_at`, `updated_at`) VALUES
(1, '40000', '6', 'debit', '594837ZK', '2023-03-31 10:49:37', '2023-03-31 10:49:37');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
