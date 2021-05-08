-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 11:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s11_billy`
--

-- --------------------------------------------------------

--
-- Table structure for table `decrypted_file`
--

CREATE TABLE `decrypted_file` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uploaded_file_id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `decrypted_file`
--

INSERT INTO `decrypted_file` (`id`, `uploaded_file_id`, `key`, `file`, `created_at`, `updated_at`) VALUES
(106, 220, 'riagGz3aB1ed', '1591973505.docx', '2020-06-12 07:51:45', '2020-06-12 07:51:45'),
(107, 220, 'riagGz3aB1ed', '1591973508.docx', '2020-06-12 07:51:48', '2020-06-12 07:51:48'),
(108, 223, 'apsorituryej', '1591974072.docx', '2020-06-12 08:01:12', '2020-06-12 08:01:12'),
(109, 227, 'qwertyuiopqw', '1591974293.docx', '2020-06-12 08:04:53', '2020-06-12 08:04:53'),
(110, 230, 'tesGGGGGGGGG', '1591974483.docx', '2020-06-12 08:08:03', '2020-06-12 08:08:03'),
(111, 236, '123ghdjeurys', '1591974820.docx', '2020-06-12 08:13:40', '2020-06-12 08:13:40'),
(112, 238, 'wesfdaaaaaaa', '1591975680.docx', '2020-06-12 08:28:00', '2020-06-12 08:28:00'),
(113, 238, 'wesfdaaaaaaa', '1591975787.docx', '2020-06-12 08:29:47', '2020-06-12 08:29:47'),
(114, 240, 'mac444444444', '1591975981.docx', '2020-06-12 08:33:01', '2020-06-12 08:33:01'),
(115, 242, 'uei555555555', '1591976037.docx', '2020-06-12 08:33:57', '2020-06-12 08:33:57'),
(116, 242, 'uei555555555', '1591976098.docx', '2020-06-12 08:34:58', '2020-06-12 08:34:58'),
(117, 244, 'mac72971081081113287111114', '1591976563.docx', '2020-06-12 08:42:43', '2020-06-12 08:42:43'),
(118, 246, 'tes791113811', '1591976875.docx', '2020-06-12 08:47:55', '2020-06-12 08:47:55'),
(119, 248, 'yue791113811', '1591976927.docx', '2020-06-12 08:48:47', '2020-06-12 08:48:47'),
(120, 250, 'yue791113811', '1591976968.docx', '2020-06-12 08:49:28', '2020-06-12 08:49:28'),
(121, 252, '079111381111', '1591978598.docx', '2020-06-12 09:16:38', '2020-06-12 09:16:38'),
(122, 254, 'mac791113811', '1591978873.docx', '2020-06-12 09:21:13', '2020-06-12 09:21:13'),
(123, 256, 'nasjkdnjasndjansdjasndjansjd', '1591978963.docx', '2020-06-12 09:22:43', '2020-06-12 09:22:43'),
(124, 258, 'tes791113811', '1591979345.docx', '2020-06-12 09:29:05', '2020-06-12 09:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `encrypted_file`
--

CREATE TABLE `encrypted_file` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uploaded_file_id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `encrypted_file`
--

INSERT INTO `encrypted_file` (`id`, `uploaded_file_id`, `key`, `file`, `created_at`, `updated_at`) VALUES
(144, 219, 'riagGz3aB1ed', '1591973471.docx', '2020-06-12 07:51:11', '2020-06-12 07:51:11'),
(145, 222, 'apsorituryej', '1591974039.docx', '2020-06-12 08:00:39', '2020-06-12 08:00:39'),
(146, 224, '123456789012', '1591974134.docx', '2020-06-12 08:02:14', '2020-06-12 08:02:14'),
(147, 225, '123456789012', '1591974177.docx', '2020-06-12 08:02:57', '2020-06-12 08:02:57'),
(148, 226, 'qwertyuiopqw', '1591974272.docx', '2020-06-12 08:04:32', '2020-06-12 08:04:32'),
(149, 228, 'asdwIIkUvmRH', '1591974417.docx', '2020-06-12 08:06:57', '2020-06-12 08:06:57'),
(150, 229, 'tesGGGGGGGGG', '1591974449.docx', '2020-06-12 08:07:29', '2020-06-12 08:07:29'),
(151, 234, 'tesasdasdasdad', '1591974704.docx', '2020-06-12 08:11:44', '2020-06-12 08:11:44'),
(152, 234, 'tesrm1cyNGmF', '1591974755.docx', '2020-06-12 08:12:35', '2020-06-12 08:12:35'),
(153, 235, '123ghdjeurys', '1591974798.docx', '2020-06-12 08:13:18', '2020-06-12 08:13:18'),
(154, 237, 'wesfdaaaaaaa', '1591975657.docx', '2020-06-12 08:27:37', '2020-06-12 08:27:37'),
(155, 239, 'mac444444444', '1591975954.docx', '2020-06-12 08:32:34', '2020-06-12 08:32:34'),
(156, 241, 'uei555555555', '1591976004.docx', '2020-06-12 08:33:24', '2020-06-12 08:33:24'),
(157, 243, 'mac72971081081113287111114', '1591976531.docx', '2020-06-12 08:42:11', '2020-06-12 08:42:11'),
(158, 243, 'mac72971081081113287111114', '1591976536.docx', '2020-06-12 08:42:16', '2020-06-12 08:42:16'),
(159, 245, 'tes791113811', '1591976854.docx', '2020-06-12 08:47:34', '2020-06-12 08:47:34'),
(160, 247, 'yue791113811', '1591976891.docx', '2020-06-12 08:48:11', '2020-06-12 08:48:11'),
(161, 249, 'yue791113811', '1591976945.docx', '2020-06-12 08:49:05', '2020-06-12 08:49:05'),
(162, 251, '079111381111', '1591978572.docx', '2020-06-12 09:16:13', '2020-06-12 09:16:13'),
(163, 253, '079111381111', '1591978618.docx', '2020-06-12 09:16:58', '2020-06-12 09:16:58'),
(164, 253, '079111381111', '1591978629.docx', '2020-06-12 09:17:09', '2020-06-12 09:17:09'),
(165, 253, '079111381111', '1591978634.docx', '2020-06-12 09:17:14', '2020-06-12 09:17:14'),
(166, 253, 'mac791113811', '1591978849.docx', '2020-06-12 09:20:49', '2020-06-12 09:20:49'),
(167, 255, 'nasjkdnjasndjansdjasndjansjd', '1591978942.docx', '2020-06-12 09:22:22', '2020-06-12 09:22:22'),
(168, 257, 'tes791113811', '1591979321.docx', '2020-06-12 09:28:41', '2020-06-12 09:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_31_083225_create_uploaded_file_table', 2),
(4, '2020_03_31_083854_create_encrypted_file_table', 3),
(5, '2020_03_31_084203_create_decrypted_file_table', 4),
(6, '2020_03_31_084439_add_crypto_to_uploaded_file', 5);

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_file`
--

CREATE TABLE `uploaded_file` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plaintext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `crypto` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploaded_file`
--

INSERT INTO `uploaded_file` (`id`, `plaintext`, `file`, `crypto`, `created_at`, `updated_at`) VALUES
(219, 'Hallo World', '1591973460.docx', 0, '2020-06-12 07:51:00', '2020-06-12 07:51:00'),
(220, 'Ì®$grÈIÄË', '1591973500.docx', 1, '2020-06-12 07:51:40', '2020-06-12 07:51:40'),
(221, 'Hallo World', '1591973740.docx', 0, '2020-06-12 07:55:40', '2020-06-12 07:55:40'),
(222, 'Hallo World', '1591974016.docx', 0, '2020-06-12 08:00:16', '2020-06-12 08:00:16'),
(223, 'z1p`K°è*Á/\\', '1591974069.docx', 1, '2020-06-12 08:01:09', '2020-06-12 08:01:09'),
(224, 'Hallo World', '1591974123.docx', 0, '2020-06-12 08:02:03', '2020-06-12 08:02:03'),
(225, 'Hallo World', '1591974171.docx', 0, '2020-06-12 08:02:51', '2020-06-12 08:02:51'),
(226, 'Hallo World', '1591974258.docx', 0, '2020-06-12 08:04:18', '2020-06-12 08:04:18'),
(227, '((ó[à8ï', '1591974290.docx', 1, '2020-06-12 08:04:50', '2020-06-12 08:04:50'),
(228, 'Hallo World', '1591974386.docx', 0, '2020-06-12 08:06:26', '2020-06-12 08:06:26'),
(229, 'Hallo World', '1591974446.docx', 0, '2020-06-12 08:07:26', '2020-06-12 08:07:26'),
(230, 'r²Ãk#MJë=', '1591974480.docx', 1, '2020-06-12 08:08:00', '2020-06-12 08:08:00'),
(231, 'Hallo World', '1591974587.docx', 0, '2020-06-12 08:09:47', '2020-06-12 08:09:47'),
(232, 'Hallo World', '1591974628.docx', 0, '2020-06-12 08:10:28', '2020-06-12 08:10:28'),
(233, 'Hallo World', '1591974640.docx', 0, '2020-06-12 08:10:40', '2020-06-12 08:10:40'),
(234, 'Hallo World', '1591974696.docx', 0, '2020-06-12 08:11:36', '2020-06-12 08:11:36'),
(235, 'Hallo World', '1591974787.docx', 0, '2020-06-12 08:13:07', '2020-06-12 08:13:07'),
(236, 'Ösì]µÏ3éÁ¦', '1591974816.docx', 1, '2020-06-12 08:13:36', '2020-06-12 08:13:36'),
(237, 'Hallo World', '1591974890.docx', 0, '2020-06-12 08:14:50', '2020-06-12 08:14:50'),
(238, 'ÐW*7}2t)X+×', '1591975677.docx', 1, '2020-06-12 08:27:57', '2020-06-12 08:27:57'),
(239, 'Hallo World', '1591975795.docx', 0, '2020-06-12 08:29:55', '2020-06-12 08:29:55'),
(240, '§)õj|ìK7B', '1591975978.docx', 1, '2020-06-12 08:32:58', '2020-06-12 08:32:58'),
(241, 'Hallo World', '1591976000.docx', 0, '2020-06-12 08:33:20', '2020-06-12 08:33:20'),
(242, 'EàX^¹/´½HP', '1591976034.docx', 1, '2020-06-12 08:33:54', '2020-06-12 08:33:54'),
(243, 'Hallo World', '1591976105.docx', 0, '2020-06-12 08:35:05', '2020-06-12 08:35:05'),
(244, '§)ÜjÍûwÙZ¡·', '1591976560.docx', 1, '2020-06-12 08:42:40', '2020-06-12 08:42:40'),
(245, 'Hallo World', '1591976576.docx', 0, '2020-06-12 08:42:56', '2020-06-12 08:42:56'),
(246, 'r²«ÃpÛZvú0', '1591976872.docx', 1, '2020-06-12 08:47:52', '2020-06-12 08:47:52'),
(247, 'Hallo World', '1591976887.docx', 0, '2020-06-12 08:48:07', '2020-06-12 08:48:07'),
(248, 'Æûâ)#åå:Â', '1591976924.docx', 1, '2020-06-12 08:48:44', '2020-06-12 08:48:44'),
(249, 'Hallo World', '1591976942.docx', 0, '2020-06-12 08:49:02', '2020-06-12 08:49:02'),
(250, 'Æ%û8f#åð: ', '1591976966.docx', 1, '2020-06-12 08:49:26', '2020-06-12 08:49:26'),
(251, 'Hallo World', '1591977055.docx', 0, '2020-06-12 08:50:55', '2020-06-12 08:50:55'),
(252, 'hsÃä°90 ­K¥', '1591978595.docx', 1, '2020-06-12 09:16:35', '2020-06-12 09:16:35'),
(253, 'Hallo World', '1591978614.docx', 0, '2020-06-12 09:16:54', '2020-06-12 09:16:54'),
(254, '§ÜÍYwwZ.ô', '1591978870.docx', 1, '2020-06-12 09:21:10', '2020-06-12 09:21:10'),
(255, 'Hallo World', '1591978933.docx', 0, '2020-06-12 09:22:13', '2020-06-12 09:22:13'),
(256, '\\=nKø¿y', '1591978960.docx', 1, '2020-06-12 09:22:40', '2020-06-12 09:22:40'),
(257, 'Hallo World', '1591979281.docx', 0, '2020-06-12 09:28:02', '2020-06-12 09:28:02'),
(258, 'r«øpÁÛ×v%úm', '1591979341.docx', 1, '2020-06-12 09:29:01', '2020-06-12 09:29:01');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@localhost', NULL, '$2y$10$EpbIbI1T.Ma/WtFCGXuDmel35iFN.Rbm.1ZenGwR/LzEXS0HrgRy2', NULL, '2020-03-29 16:24:53', '2020-03-29 16:24:54'),
(2, 'billy', 'billy@gmail.com', NULL, '$2y$10$Kt3t5AIihRfahRaFnWadtOad42aRJoudY.b4hZD0uF.IiAFGohC2G', NULL, '2020-03-31 00:56:44', '2020-03-31 01:04:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `decrypted_file`
--
ALTER TABLE `decrypted_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `decrypted_file_uploaded_file_id_foreign` (`uploaded_file_id`);

--
-- Indexes for table `encrypted_file`
--
ALTER TABLE `encrypted_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `encrypted_file_uploaded_file_id_foreign` (`uploaded_file_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploaded_file`
--
ALTER TABLE `uploaded_file`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `decrypted_file`
--
ALTER TABLE `decrypted_file`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `encrypted_file`
--
ALTER TABLE `encrypted_file`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uploaded_file`
--
ALTER TABLE `uploaded_file`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `decrypted_file`
--
ALTER TABLE `decrypted_file`
  ADD CONSTRAINT `decrypted_file_uploaded_file_id_foreign` FOREIGN KEY (`uploaded_file_id`) REFERENCES `uploaded_file` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `encrypted_file`
--
ALTER TABLE `encrypted_file`
  ADD CONSTRAINT `encrypted_file_uploaded_file_id_foreign` FOREIGN KEY (`uploaded_file_id`) REFERENCES `uploaded_file` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
