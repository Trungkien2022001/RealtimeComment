-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.26 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table test-reatime-comment.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `stamp_id` int DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.comment: ~47 rows (approximately)
INSERT INTO `comment` (`id`, `transaction_id`, `comment`, `user_id`, `stamp_id`, `image_id`, `createdAt`, `updatedAt`) VALUES
	(1, 1, 'Xin chao', 1, 1, 1, NULL, NULL),
	(2, 1, 'Chao ban', 2, 1, 1, NULL, NULL),
	(3, 1, 'Chao cac ban', 1, 1, 1, NULL, NULL),
	(4, 2, 'Chao cac ban', 1, 1, 1, NULL, NULL),
	(5, 2, 'Chao ban', 2, 1, 1, NULL, NULL),
	(6, 1, 'Chào bạn, tôi là admin web này', 1, 1, 1, NULL, NULL),
	(7, 1, 'haha, kệ bạn chứ', 2, 1, 1, NULL, NULL),
	(8, 1, 'Hahaha, các bạn nói chuyện buồn cười thật', 3, 1, 1, NULL, NULL),
	(9, 1, 'Alo, có ai ở đây không ạ', 1, 1, 1, NULL, NULL),
	(10, 1, 'Không có đâu bro, đi nấu cơm hết rồi', 2, 1, 1, NULL, NULL),
	(11, 3, 'Ai tạo ra topic này đấy', 1, 1, 1, NULL, NULL),
	(12, 3, 'Hahaha', 2, 1, 1, NULL, NULL),
	(13, 1, 'hello các bạn', 6038, 1, 1, NULL, NULL),
	(14, 1, 'alo có ai ở đây không', 6040, 1, 1, NULL, NULL),
	(15, 1, 'Hello every body', 6041, 1, 1, NULL, NULL),
	(16, 1, 'Alo chả có ma nào ở đây à', 6041, 1, 1, NULL, NULL),
	(17, 1, '', 6041, 1, 1, NULL, NULL),
	(18, 1, 'Hehehe', 6041, 1, 1, NULL, NULL),
	(19, 1, 'Alo có ai ở đây không ạ', 6041, 1, 1, NULL, NULL),
	(20, 1, 'Hello', 1, 1, 1, '2022-08-28 21:33:22', '2022-08-28 21:33:22'),
	(21, 1, 'Alo có ai ở đây không nào', 1, 1, 1, '2022-08-28 21:34:39', '2022-08-28 21:34:39'),
	(22, 2, 'Alo có ai còn ở trong nhóm này không', 1, 1, 1, '2022-08-28 21:35:01', '2022-08-28 21:35:01'),
	(23, 2, 'Alo alo ạ', 1, 1, 1, '2022-08-28 21:44:16', '2022-08-28 21:44:16'),
	(24, 2, 'Hehehehe', 2, 1, 1, '2022-08-28 21:48:05', '2022-08-28 21:48:05'),
	(25, 2, 'Hohoho', 3, 1, 1, '2022-08-28 21:48:38', '2022-08-28 21:48:38'),
	(26, 2, 'KKK', 3, 1, 1, '2022-08-28 21:49:14', '2022-08-28 21:49:14'),
	(27, 2, 'Hehe', 1, 1, 1, '2022-08-28 21:49:38', '2022-08-28 21:49:38'),
	(28, 2, 'Hahaha', 3, 1, 1, '2022-08-28 22:42:02', '2022-08-28 22:42:02'),
	(29, 4, 'Không nhá', 1, 1, 1, '2022-08-28 22:42:27', '2022-08-28 22:42:27'),
	(30, 4, 'hahahaha', 3, 1, 1, '2022-08-28 22:42:38', '2022-08-28 22:42:38'),
	(31, 4, 'Hehe', 3, 1, 1, '2022-08-28 22:42:50', '2022-08-28 22:42:50'),
	(32, 4, 'Hehe', 3, 1, 1, '2022-08-28 22:43:28', '2022-08-28 22:43:28'),
	(33, 4, 'Alo', 3, 1, 1, '2022-08-28 22:44:03', '2022-08-28 22:44:03'),
	(34, 4, 'Gì đó em', 1, 1, 1, '2022-08-28 22:44:08', '2022-08-28 22:44:08'),
	(35, 4, 'Haha', 2, 1, 1, '2022-08-28 22:44:58', '2022-08-28 22:44:58'),
	(36, 3, 'hello', 1, 1, 1, '2022-08-28 23:44:58', '2022-08-28 23:44:58'),
	(37, 1, 'Hello', 3, 1, 1, '2022-08-28 23:45:14', '2022-08-28 23:45:14'),
	(38, 1, 'Hello các bạn', 2, 1, 1, '2022-08-29 20:28:07', '2022-08-29 20:28:07'),
	(39, 1, 'haha', 1, 1, 1, '2022-08-29 20:28:15', '2022-08-29 20:28:15'),
	(40, 1, 'Alo', 2, 1, 1, '2022-08-29 20:28:31', '2022-08-29 20:28:31'),
	(41, 1, 'Hehehe', 1, 1, 1, '2022-08-29 20:29:07', '2022-08-29 20:29:07'),
	(42, 1, 'Thanks', 2, 1, 1, '2022-08-29 20:29:18', '2022-08-29 20:29:18'),
	(43, 3, 'Alo alo', 2, 1, 1, '2022-08-29 20:30:30', '2022-08-29 20:30:30'),
	(44, 1, 'Haha', 1, 1, 1, '2022-08-29 20:30:37', '2022-08-29 20:30:37'),
	(45, 1, 'Hello', 1, 1, 1, '2022-08-29 20:31:00', '2022-08-29 20:31:00'),
	(46, 1, 'Alo', 2, 1, 1, '2022-08-29 20:31:25', '2022-08-29 20:31:25'),
	(47, 1, 'Alo', 1, 1, 1, '2022-08-29 20:31:29', '2022-08-29 20:31:29'),
	(48, 1, 'Alo', 3, 1, 1, '2022-08-29 21:50:00', '2022-08-29 21:50:00'),
	(49, 1, 'hahaha', 1, 1, 1, '2022-08-29 21:50:07', '2022-08-29 21:50:07'),
	(50, 1, 'hello', 6040, 1, 1, '2022-08-29 22:02:54', '2022-08-29 22:02:54'),
	(51, 1, 'Có ai còn thức không', 6040, 1, 1, '2022-08-29 22:03:12', '2022-08-29 22:03:12'),
	(52, 1, 'Alo', 6040, 1, 1, '2022-08-29 22:04:05', '2022-08-29 22:04:05'),
	(53, 1, 'Alo', 6040, 1, 1, '2022-08-29 22:04:08', '2022-08-29 22:04:08'),
	(54, 1, 'Alo ạ', 6040, 1, 1, '2022-08-29 22:04:28', '2022-08-29 22:04:28'),
	(55, 1, 'Alo', 6040, 1, 1, '2022-08-29 22:05:16', '2022-08-29 22:05:16'),
	(56, 2, 'hihi', 6040, 1, 1, '2022-08-29 22:05:33', '2022-08-29 22:05:33'),
	(57, 1, 'Hello', 6038, 1, 1, '2022-08-29 22:06:12', '2022-08-29 22:06:12'),
	(58, 4, 'Hello mấy con gà', 6038, 1, 1, '2022-08-29 22:07:42', '2022-08-29 22:07:42'),
	(59, 4, 'Hả', 1, 1, 1, '2022-08-29 22:07:55', '2022-08-29 22:07:55'),
	(60, 4, 'Alo', 6038, 1, 1, '2022-08-29 22:08:05', '2022-08-29 22:08:05'),
	(61, 4, 'Alo', 1, 1, 1, '2022-08-29 22:08:14', '2022-08-29 22:08:14'),
	(62, 1, 'Hello', 6038, 1, 1, '2022-08-29 22:08:46', '2022-08-29 22:08:46'),
	(63, 1, 'Alo ạ', 6038, 1, 1, '2022-08-29 22:09:01', '2022-08-29 22:09:01'),
	(64, 1, 'Alo alo', 6038, 1, 1, '2022-08-29 22:09:17', '2022-08-29 22:09:17'),
	(65, 1, 'hello', 1, 1, 1, '2022-08-29 22:11:02', '2022-08-29 22:11:02'),
	(66, 1, 'hahaha', 1, 1, 1, '2022-08-29 22:11:08', '2022-08-29 22:11:08'),
	(67, 1, 'kk', 1, 1, 1, '2022-08-29 22:11:10', '2022-08-29 22:11:10'),
	(68, 1, 'hello', 6038, 1, 1, '2022-08-29 22:11:27', '2022-08-29 22:11:27'),
	(69, 1, 'Hello', 1, 1, 1, '2022-08-29 22:12:29', '2022-08-29 22:12:29'),
	(70, 1, 'Hello', 1, 1, 1, '2022-08-29 22:13:27', '2022-08-29 22:13:27'),
	(71, 1, 'Alo', 6038, 1, 1, '2022-08-29 22:17:30', '2022-08-29 22:17:30'),
	(72, 1, 'hello', 1, 1, 1, '2022-08-29 22:17:41', '2022-08-29 22:17:41'),
	(73, 1, 'hello kien', 6038, 1, 1, '2022-08-29 22:17:52', '2022-08-29 22:17:52'),
	(74, 1, 'hahahaha', 6038, 1, 1, '2022-08-29 22:17:54', '2022-08-29 22:17:54'),
	(75, 1, 'hehehe', 1, 1, 1, '2022-08-29 22:17:58', '2022-08-29 22:17:58'),
	(76, 1, 'Alo ', 6038, 1, 1, '2022-08-29 22:20:28', '2022-08-29 22:20:28'),
	(77, 1, 'Hả', 1, 1, 1, '2022-08-29 22:20:33', '2022-08-29 22:20:33'),
	(78, 5, 'Chưa ai bình luận bài viết này hử', 1, 1, 1, '2022-08-29 22:21:03', '2022-08-29 22:21:03'),
	(79, 5, 'Đây ạ', 6038, 1, 1, '2022-08-29 22:21:11', '2022-08-29 22:21:11'),
	(80, 5, 'Hahaha', 1, 1, 1, '2022-08-29 22:21:17', '2022-08-29 22:21:17'),
	(81, 5, 'Haha', 6038, 1, 1, '2022-08-29 22:22:22', '2022-08-29 22:22:22'),
	(82, 5, 'haha', 1, 1, 1, '2022-08-29 22:22:27', '2022-08-29 22:22:27'),
	(83, 5, 'hahaha', 6038, 1, 1, '2022-08-29 22:23:18', '2022-08-29 22:23:18'),
	(84, 5, 'haha', 6038, 1, 1, '2022-08-29 22:24:53', '2022-08-29 22:24:53'),
	(85, 5, 'hahaha', 6038, 1, 1, '2022-08-29 22:25:32', '2022-08-29 22:25:32'),
	(86, 5, 'hello', 6038, 1, 1, '2022-08-29 22:26:03', '2022-08-29 22:26:03'),
	(87, 5, 'Hahaha', 6038, 1, 1, '2022-08-29 22:26:09', '2022-08-29 22:26:09'),
	(88, 5, 'kk', 6038, 1, 1, '2022-08-29 22:26:11', '2022-08-29 22:26:11'),
	(89, 5, 'ergre', 6038, 1, 1, '2022-08-29 22:26:12', '2022-08-29 22:26:12'),
	(90, 5, 'hehe', 6038, 1, 1, '2022-08-29 22:26:27', '2022-08-29 22:26:27'),
	(91, 5, 'haha', 6038, 1, 1, '2022-08-29 22:26:40', '2022-08-29 22:26:40'),
	(92, 5, 'kk', 6038, 1, 1, '2022-08-29 22:26:42', '2022-08-29 22:26:42'),
	(93, 5, 'oi', 6038, 1, 1, '2022-08-29 22:26:44', '2022-08-29 22:26:44'),
	(94, 5, 'erregre', 6038, 1, 1, '2022-08-29 22:26:48', '2022-08-29 22:26:48'),
	(95, 5, 'erg', 6038, 1, 1, '2022-08-29 22:26:49', '2022-08-29 22:26:49'),
	(96, 5, 'erg', 6038, 1, 1, '2022-08-29 22:26:50', '2022-08-29 22:26:50'),
	(97, 2, 'Hello', 6038, 1, 1, '2022-08-29 22:27:31', '2022-08-29 22:27:31'),
	(98, 5, 'Haha', 1, 1, 1, '2022-08-29 22:27:42', '2022-08-29 22:27:42'),
	(99, 2, 'Haha', 1, 1, 1, '2022-08-29 22:27:56', '2022-08-29 22:27:56'),
	(100, 2, 'Alo', 1, 1, 1, '2022-08-29 22:28:44', '2022-08-29 22:28:44'),
	(101, 2, 'Nef', 1, 1, 1, '2022-08-29 22:28:46', '2022-08-29 22:28:46'),
	(102, 2, 'alo', 6038, 1, 1, '2022-08-29 22:28:49', '2022-08-29 22:28:49'),
	(103, 2, 'naif', 1, 1, 1, '2022-08-29 22:28:52', '2022-08-29 22:28:52'),
	(104, 2, 'Alo', 6038, 1, 1, '2022-08-29 22:31:51', '2022-08-29 22:31:51'),
	(105, 2, 'alo', 6038, 1, 1, '2022-08-29 22:32:03', '2022-08-29 22:32:03'),
	(106, 2, 'har', 1, 1, 1, '2022-08-29 22:32:05', '2022-08-29 22:32:05'),
	(107, 3, 'Alo', 6038, 1, 1, '2022-08-29 22:32:14', '2022-08-29 22:32:14'),
	(108, 3, 'Har', 1, 1, 1, '2022-08-29 22:32:54', '2022-08-29 22:32:54'),
	(109, 3, 'alo', 6038, 1, 1, '2022-08-29 22:33:57', '2022-08-29 22:33:57'),
	(110, 3, 'gif ddos', 1, 1, 1, '2022-08-29 22:34:02', '2022-08-29 22:34:02'),
	(111, 3, 'alo', 1, 1, 1, '2022-08-29 22:34:09', '2022-08-29 22:34:09'),
	(112, 6, 'cos ai ow dday khong', 6038, 1, 1, '2022-08-29 22:34:34', '2022-08-29 22:34:34'),
	(113, 6, 'har', 1, 1, 1, '2022-08-29 22:34:45', '2022-08-29 22:34:45'),
	(114, 6, 'gif dos', 1, 1, 1, '2022-08-29 22:34:49', '2022-08-29 22:34:49'),
	(115, 6, 'hahaha', 3, 1, 1, '2022-08-29 22:35:09', '2022-08-29 22:35:09'),
	(116, 6, 'gif dos', 6038, 1, 1, '2022-08-29 22:35:16', '2022-08-29 22:35:16'),
	(117, 6, 'ho ho ho', 6038, 1, 1, '2022-08-29 22:35:23', '2022-08-29 22:35:23'),
	(118, 1, 'e', 2, 1, 1, '2022-08-29 22:43:43', '2022-08-29 22:43:43'),
	(119, 1, 'haha', 2, 1, 1, '2022-08-29 22:43:49', '2022-08-29 22:43:49'),
	(120, 1, 'Hahaha', 1, 1, 1, '2022-08-29 22:44:04', '2022-08-29 22:44:04'),
	(121, 6, 'hehe', 2, 1, 1, '2022-08-29 22:44:28', '2022-08-29 22:44:28'),
	(122, 1, 'kk', 1, 1, 1, '2022-08-29 22:44:39', '2022-08-29 22:44:39');

-- Dumping structure for table test-reatime-comment.image
CREATE TABLE IF NOT EXISTS `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.image: ~0 rows (approximately)

-- Dumping structure for table test-reatime-comment.notification
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `transaction_id` int DEFAULT NULL,
  `other_id` int DEFAULT '0',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.notification: ~11 rows (approximately)
INSERT INTO `notification` (`id`, `user_id`, `transaction_id`, `other_id`, `createdAt`, `updatedAt`) VALUES
	(1, 1, 2, 6038, '2022-08-28 21:44:16', '2022-08-29 22:27:31'),
	(2, 2, 2, 1, '2022-08-28 21:48:05', '2022-08-29 22:32:05'),
	(3, 3, 2, 1, '2022-08-28 21:48:38', '2022-08-29 22:32:05'),
	(4, 1, 4, 6038, '2022-08-28 22:42:27', '2022-08-29 22:07:42'),
	(5, 3, 4, 1, '2022-08-28 22:42:38', '2022-08-29 22:08:14'),
	(6, 2, 4, 1, '2022-08-28 22:44:58', '2022-08-29 22:08:14'),
	(7, 1, 3, 6038, '2022-08-28 23:44:58', '2022-08-29 22:32:14'),
	(8, 3, 1, 1, '2022-08-28 23:45:14', '2022-08-29 22:44:04'),
	(9, 2, 1, 1, '2022-08-29 20:28:07', '2022-08-29 22:20:33'),
	(10, 1, 1, 2, '2022-08-29 20:28:15', '2022-08-29 22:43:43'),
	(11, 2, 3, 1, '2022-08-29 20:30:30', '2022-08-29 22:34:02'),
	(12, 6040, 1, 1, '2022-08-29 22:02:54', '2022-08-29 22:44:04'),
	(13, 6040, 2, 1, '2022-08-29 22:05:33', '2022-08-29 22:32:05'),
	(14, 6038, 1, 1, '2022-08-29 22:06:12', '2022-08-29 22:44:04'),
	(15, 6038, 4, 1, '2022-08-29 22:07:42', '2022-08-29 22:07:55'),
	(16, 1, 5, 6038, '2022-08-29 22:21:03', '2022-08-29 22:21:11'),
	(17, 6038, 5, 1, '2022-08-29 22:21:11', '2022-08-29 22:21:17'),
	(18, 6038, 2, 1, '2022-08-29 22:27:31', '2022-08-29 22:27:56'),
	(19, 6038, 3, 1, '2022-08-29 22:32:14', '2022-08-29 22:32:53'),
	(20, 6038, 6, 2, '2022-08-29 22:34:34', '2022-08-29 22:44:28'),
	(21, 1, 6, 2, '2022-08-29 22:34:45', '2022-08-29 22:44:28'),
	(22, 3, 6, 2, '2022-08-29 22:35:09', '2022-08-29 22:44:28'),
	(23, 2, 6, 0, '2022-08-29 22:44:28', '2022-08-29 22:44:28');

-- Dumping structure for table test-reatime-comment.stamp
CREATE TABLE IF NOT EXISTS `stamp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.stamp: ~0 rows (approximately)

-- Dumping structure for table test-reatime-comment.transaction
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.transaction: ~5 rows (approximately)
INSERT INTO `transaction` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
	(1, 'Về socket.io', NULL, NULL),
	(2, 'Có nên dùng nodejs', NULL, NULL),
	(3, 'Có nên đi chơi trung thu không', NULL, NULL),
	(4, 'Trung thu nên về quê hay không', NULL, NULL),
	(5, 'Nên đi làm thêm không', NULL, NULL),
	(6, 'test thuwr', '2022-08-29 22:34:28', '2022-08-29 22:34:28');

-- Dumping structure for table test-reatime-comment.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `isAdmin` int DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `address` varchar(500) NOT NULL DEFAULT '0',
  `token` varchar(500) DEFAULT NULL,
  `image_path` varchar(500) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6042 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.user: ~6 rows (approximately)
INSERT INTO `user` (`id`, `username`, `password`, `isAdmin`, `name`, `phone`, `email`, `address`, `token`, `image_path`, `createdAt`, `updatedAt`) VALUES
	(1, 'admin', '123456', 1, 'admin', '0989983025', 'trungkien07yd2gmail.com', 'Yên Đồng, Yên Mô, Ninh Bình', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYWRtaW4iLCJpYXQiOjE2NjE3ODc3OTh9.B0dLC4sW4pvbTXsF0H0Xyp1IDIaPLNsgBo81c_Io8oM', 'https://scontent.fhan14-2.fna.fbcdn.net/v/t39.30808-6/280227226_1576724812722345_6309128935566769866_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=DuXDZsmzyo4AX-SyzaC&_nc_ht=scontent.fhan14-2.fna&oh=00_AT_8TZI90u2sjBHyU54jTdEFqPjf5dz_sCndPOC3ckYOCA&oe=630ED596', '2022-08-28 21:17:45', '2022-08-29 22:43:18'),
	(2, 'kien', '123456', 0, 'Nguyễn Trung Kiên', '0989983025', 'nguyenkien2022001@gmail.com', 'Yên Đồng, Yên Mô, Ninh Bình', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoia2llbiIsImlhdCI6MTY2MTc4NzgxMX0.ZaJiTwNgxBpEuDP9xVKpXSm2QNues4XWj53PnDUpR9Q', 'https://kynguyenlamdep.com/wp-content/uploads/2022/06/baby-cute.jpg', '2022-08-28 21:17:45', '2022-08-29 22:43:31'),
	(3, 'nhung', '123456', 0, 'Nhung', '0967775328', 'donhung10102001@gmail.com', 'Yên Phong, Yên Mô, Ninh Bình', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoibmh1bmciLCJpYXQiOjE2NjE3ODczMDR9.IhuhIE86dVFmQaj7J1aE52JuQQZDn1Ut26EjTa_iQ1E', 'https://kynguyenlamdep.com/wp-content/uploads/2022/06/anh-gai-xinh-cuc-dep.jpg', '2022-08-28 21:17:45', '2022-08-29 22:35:04'),
	(6038, 'kien1', '123456', 0, 'Trung Kiên', '0989983025', 'trungkien071yd@gmail.com', 'trungkien', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoia2llbjEiLCJpYXQiOjE2NjE3ODU1NTZ9.oYimog8zJnzHGgSRrzPoSv0wj_8DmMX-4Y-lg0ESsNw', 'http://res.cloudinary.com/trungkien2022001/image/upload/v1661688441/upload/ikphwq2szhmyabolqbdd.jpg', '2022-08-28 21:17:45', '2022-08-29 22:05:56'),
	(6040, 'thangg', '123456', 0, 'Thắng', '0123456789', 'abc@gmail.com', 'Yên Từ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoidGhhbmdnIiwiaWF0IjoxNjYxNzg0NzIyfQ.FjCR2JB1rLwgNDm2KEAOwK7bcwczbjEr_PyCbV2BlcE', 'https://anhdep123.com/wp-content/uploads/2021/05/hinh-avatar-trang.jpg', '2022-08-28 21:17:45', '2022-08-29 21:52:02'),
	(6041, 'linhhh', '123456', 0, 'Diệu Linh', '0123456789', 'kkk@gmail.com', 'Yên từ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoibGluaGhoIiwiaWF0IjoxNjYxNjk0OTg1fQ.zsXPuP7dlTbmOWs8mMJd3M2jzVINgiwBvWuxnlJ00ZY', 'http://res.cloudinary.com/trungkien2022001/image/upload/v1661694985/upload/adnjwcbwigvwqw4zoqd6.jpg', '2022-08-28 21:17:45', '2022-08-28 21:17:45');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
