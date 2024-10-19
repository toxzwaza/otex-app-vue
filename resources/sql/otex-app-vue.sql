-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-10-19 06:02:35
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `otex-app-vue`
--
CREATE DATABASE IF NOT EXISTS `otex-app-vue` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `otex-app-vue`;

-- --------------------------------------------------------

--
-- テーブルの構造 `count_users`
--

CREATE TABLE `count_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `count_users`
--

INSERT INTO `count_users` (`id`, `user_attribute_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-10-14 01:41:20', '2024-10-14 01:41:20'),
(2, 1, '2024-10-14 01:44:50', '2024-10-14 01:44:50'),
(3, 1, '2024-10-14 01:45:29', '2024-10-14 01:45:29'),
(4, 1, '2024-10-14 01:46:36', '2024-10-14 01:46:36'),
(5, 2, '2024-10-14 01:46:42', '2024-10-14 01:46:42'),
(6, 1, '2024-10-14 01:47:44', '2024-10-14 01:47:44'),
(7, 2, '2024-10-14 01:47:55', '2024-10-14 01:47:55'),
(8, 2, '2024-10-14 01:50:30', '2024-10-14 01:50:30'),
(9, 4, '2024-10-14 01:50:43', '2024-10-14 01:50:43'),
(10, 1, '2024-10-14 01:53:57', '2024-10-14 01:53:57'),
(11, 1, '2024-10-14 01:54:57', '2024-10-14 01:54:57'),
(12, 1, '2024-10-14 01:57:09', '2024-10-14 01:57:09'),
(13, 1, '2024-10-14 03:21:00', '2024-10-14 03:21:00'),
(14, 4, '2024-10-14 03:21:10', '2024-10-14 03:21:10'),
(15, 3, '2024-10-14 03:21:15', '2024-10-14 03:21:15'),
(16, 6, '2024-10-14 03:23:01', '2024-10-14 03:23:01'),
(17, 5, '2024-10-14 03:23:03', '2024-10-14 03:23:03'),
(18, 5, '2024-10-14 03:23:05', '2024-10-14 03:23:05'),
(19, 5, '2024-10-14 03:23:07', '2024-10-14 03:23:07'),
(20, 5, '2024-10-14 03:23:07', '2024-10-14 03:23:07'),
(21, 5, '2024-10-14 03:23:08', '2024-10-14 03:23:08'),
(22, 5, '2024-10-14 03:23:09', '2024-10-14 03:23:09'),
(23, 5, '2024-10-14 03:23:09', '2024-10-14 03:23:09'),
(24, 5, '2024-10-14 03:23:10', '2024-10-14 03:23:10'),
(25, 5, '2024-10-14 03:23:10', '2024-10-14 03:23:10'),
(26, 5, '2024-10-14 03:23:13', '2024-10-14 03:23:13'),
(27, 5, '2024-10-14 03:23:13', '2024-10-14 03:23:13'),
(28, 5, '2024-10-14 03:23:14', '2024-10-14 03:23:14'),
(29, 5, '2024-10-14 03:23:14', '2024-10-14 03:23:14'),
(30, 5, '2024-10-14 03:23:14', '2024-10-14 03:23:14'),
(31, 5, '2024-10-14 03:23:23', '2024-10-14 03:23:23'),
(32, 5, '2024-10-14 03:23:24', '2024-10-14 03:23:24'),
(33, 4, '2024-10-14 03:23:28', '2024-10-14 03:23:28'),
(34, 3, '2024-10-14 03:23:29', '2024-10-14 03:23:29'),
(35, 4, '2024-10-14 03:23:30', '2024-10-14 03:23:30'),
(36, 5, '2024-10-14 03:23:31', '2024-10-14 03:23:31'),
(37, 3, '2024-10-14 03:23:32', '2024-10-14 03:23:32'),
(38, 4, '2024-10-14 03:23:32', '2024-10-14 03:23:32'),
(39, 1, '2024-10-14 03:23:33', '2024-10-14 03:23:33'),
(40, 4, '2024-10-14 03:23:34', '2024-10-14 03:23:34'),
(41, 3, '2024-10-14 03:23:35', '2024-10-14 03:23:35'),
(42, 6, '2024-10-14 03:23:35', '2024-10-14 03:23:35'),
(43, 5, '2024-10-14 03:23:37', '2024-10-14 03:23:37'),
(44, 1, '2024-10-14 03:57:07', '2024-10-14 03:57:07'),
(45, 1, '2024-10-14 03:57:43', '2024-10-14 03:57:43'),
(46, 2, '2024-10-14 03:57:45', '2024-10-14 03:57:45'),
(47, 3, '2024-10-14 03:57:47', '2024-10-14 03:57:47'),
(48, 1, '2024-10-14 03:59:55', '2024-10-14 03:59:55'),
(49, 1, '2024-10-14 04:00:08', '2024-10-14 04:00:08'),
(50, 1, '2024-10-14 04:00:42', '2024-10-14 04:00:42'),
(51, 1, '2024-10-14 04:01:10', '2024-10-14 04:01:10'),
(52, 1, '2024-10-14 04:01:18', '2024-10-14 04:01:18'),
(53, 2, '2024-10-14 04:01:19', '2024-10-14 04:01:19'),
(54, 3, '2024-10-14 04:01:22', '2024-10-14 04:01:22'),
(55, 4, '2024-10-14 04:01:24', '2024-10-14 04:01:24');

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
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
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_08_21_171046_create_otex_questions_table', 1),
(11, '2024_10_14_100524_create_user_attributes_table', 2),
(12, '2024_10_14_100637_create_count_users_table', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `otex_questions`
--

CREATE TABLE `otex_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `gender` tinyint(3) UNSIGNED DEFAULT NULL,
  `school` tinyint(3) UNSIGNED DEFAULT NULL,
  `grade` tinyint(3) UNSIGNED DEFAULT NULL,
  `ans1` tinyint(3) UNSIGNED DEFAULT NULL,
  `ans2` tinyint(3) UNSIGNED DEFAULT NULL,
  `ans3` tinyint(3) UNSIGNED DEFAULT NULL,
  `ans4` tinyint(3) UNSIGNED DEFAULT NULL,
  `ans5` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
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
-- テーブルの構造 `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isCompany` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `schools`
--

INSERT INTO `schools` (`id`, `name`, `created_at`, `updated_at`, `isCompany`) VALUES
(1, '岡山工業高等学校', '2024-08-22 05:09:07', '2024-08-22 05:09:07', 0),
(2, '東岡山工業高等学校', '2024-08-22 05:09:23', '2024-08-22 05:09:23', 0),
(3, '倉敷工業高等学校', '2024-08-22 05:09:32', '2024-08-22 05:09:32', 0),
(4, '水島工業高等学校', '2024-08-22 05:09:40', '2024-08-22 05:09:40', 0),
(5, '津山工業高等学校', '2024-08-22 05:09:52', '2024-08-22 05:09:52', 0),
(6, '笠岡工業高等学校', '2024-08-22 05:10:02', '2024-08-22 05:10:02', 0),
(7, '新見高等学校', '2024-08-22 05:10:23', '2024-08-22 05:10:23', 0),
(8, '備前緑陽高等学校', '2024-08-22 05:10:42', '2024-08-22 05:10:42', 0),
(9, '高梁城南高等学校', '2024-08-22 05:11:02', '2024-08-22 05:11:02', 0),
(10, '玉野光南高等学校', '2024-08-22 05:11:27', '2024-08-22 05:11:27', 0),
(11, '倉敷市立工業高等学校', '2024-08-22 05:12:32', '2024-08-22 05:12:32', 0),
(12, '玉野商工高等学校', '2024-08-22 05:13:02', '2024-08-22 05:13:02', 0),
(13, '勝間田高等学校', '2024-08-22 05:13:16', '2024-08-22 05:13:16', 0),
(14, '興陽高等学校', '2024-08-22 05:13:36', '2024-08-22 05:13:36', 0),
(15, '関西高等学校', '2024-08-22 05:13:53', '2024-08-22 05:13:53', 0),
(16, '岡山商科大学付属高等学校', '2024-08-22 05:14:12', '2024-08-22 05:14:12', 0),
(17, 'おかやま山陽高等学校', '2024-08-22 05:14:28', '2024-08-22 05:14:28', 0),
(18, '御津高等学校', '2024-08-22 05:14:44', '2024-08-22 05:14:44', 0),
(19, '倉敷翠松高等学校', '2024-08-22 05:15:35', '2024-08-22 05:15:35', 0),
(24, '第一学院高等学校', '2024-08-22 05:16:43', '2024-08-22 05:16:43', 0),
(25, '吉備高原学園高等学校', '2024-08-22 05:16:52', '2024-08-22 05:16:52', 0),
(27, '金融', NULL, NULL, 1),
(28, '土木', NULL, NULL, 1),
(29, 'IT・通信', NULL, NULL, 1),
(30, '医療・福祉', NULL, NULL, 1),
(31, '教育', NULL, NULL, 1),
(32, '製造', NULL, NULL, 1),
(33, 'サービス', NULL, NULL, 1),
(34, '営業・マーケティング', NULL, NULL, 1),
(35, 'クリエイティブ', NULL, NULL, 1),
(36, '物流・運輸', NULL, NULL, 1),
(37, '法務・士業', NULL, NULL, 1),
(38, '不動産', NULL, NULL, 1),
(40, '岡山県真庭高等学校', NULL, NULL, 0),
(41, '玉野市立玉野商工高等学校', NULL, NULL, 0),
(42, '倉敷市立倉敷翔南高等学校', NULL, NULL, 0),
(43, '明誠学院高等学校', NULL, NULL, 0),
(45, 'その他', NULL, NULL, 1),
(46, '津山工業高等専門学校', NULL, NULL, 0),
(47, '岡山科学技術専門学校', NULL, NULL, 0),
(48, '岡山県立大学', NULL, NULL, 0),
(49, '中国職業能力開発大学校', NULL, NULL, 0),
(50, 'その他', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_attributes`
--

CREATE TABLE `user_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `user_attributes`
--

INSERT INTO `user_attributes` (`id`, `name`, `created_at`, `updated_at`, `gender`) VALUES
(1, '高校生', NULL, NULL, 1),
(2, '高校生', NULL, NULL, 2),
(3, '大学生', NULL, NULL, 1),
(4, '大学生', NULL, NULL, 2),
(5, '社会人', NULL, NULL, 1),
(6, '社会人', NULL, NULL, 2);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `count_users`
--
ALTER TABLE `count_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `count_users_user_attribute_id_foreign` (`user_attribute_id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `otex_questions`
--
ALTER TABLE `otex_questions`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- テーブルのインデックス `user_attributes`
--
ALTER TABLE `user_attributes`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `count_users`
--
ALTER TABLE `count_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `otex_questions`
--
ALTER TABLE `otex_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `user_attributes`
--
ALTER TABLE `user_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `count_users`
--
ALTER TABLE `count_users`
  ADD CONSTRAINT `count_users_user_attribute_id_foreign` FOREIGN KEY (`user_attribute_id`) REFERENCES `user_attributes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
