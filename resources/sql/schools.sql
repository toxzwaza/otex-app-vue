-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-10-16 02:17:53
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

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
