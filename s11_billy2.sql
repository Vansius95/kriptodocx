-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.11-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk s11_billy
CREATE DATABASE IF NOT EXISTS `s11_billy` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `s11_billy`;

-- membuang struktur untuk table s11_billy.decrypted_file
CREATE TABLE IF NOT EXISTS `decrypted_file` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uploaded_file_id` bigint(20) unsigned NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `decrypted_file_uploaded_file_id_foreign` (`uploaded_file_id`),
  CONSTRAINT `decrypted_file_uploaded_file_id_foreign` FOREIGN KEY (`uploaded_file_id`) REFERENCES `uploaded_file` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel s11_billy.decrypted_file: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `decrypted_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `decrypted_file` ENABLE KEYS */;

-- membuang struktur untuk table s11_billy.encrypted_file
CREATE TABLE IF NOT EXISTS `encrypted_file` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uploaded_file_id` bigint(20) unsigned NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encrypted_file_uploaded_file_id_foreign` (`uploaded_file_id`),
  CONSTRAINT `encrypted_file_uploaded_file_id_foreign` FOREIGN KEY (`uploaded_file_id`) REFERENCES `uploaded_file` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel s11_billy.encrypted_file: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `encrypted_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `encrypted_file` ENABLE KEYS */;

-- membuang struktur untuk table s11_billy.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel s11_billy.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table s11_billy.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel s11_billy.migrations: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2020_03_31_083225_create_uploaded_file_table', 2),
	(4, '2020_03_31_083854_create_encrypted_file_table', 3),
	(5, '2020_03_31_084203_create_decrypted_file_table', 4),
	(6, '2020_03_31_084439_add_crypto_to_uploaded_file', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table s11_billy.uploaded_file
CREATE TABLE IF NOT EXISTS `uploaded_file` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plaintext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `crypto` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel s11_billy.uploaded_file: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `uploaded_file` DISABLE KEYS */;
INSERT INTO `uploaded_file` (`id`, `plaintext`, `file`, `crypto`, `created_at`, `updated_at`) VALUES
	(85, 'RositaSAli', '1588093679.docx', 0, '2020-04-28 17:07:59', '2020-04-28 17:07:59');
/*!40000 ALTER TABLE `uploaded_file` ENABLE KEYS */;

-- membuang struktur untuk table s11_billy.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel s11_billy.users: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@localhost', NULL, '$2y$10$EpbIbI1T.Ma/WtFCGXuDmel35iFN.Rbm.1ZenGwR/LzEXS0HrgRy2', NULL, '2020-03-29 23:24:53', '2020-03-29 23:24:54'),
	(2, 'billy', 'billy@gmail.com', NULL, '$2y$10$Kt3t5AIihRfahRaFnWadtOad42aRJoudY.b4hZD0uF.IiAFGohC2G', NULL, '2020-03-31 07:56:44', '2020-03-31 08:04:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
