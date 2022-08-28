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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.comment: ~0 rows (approximately)
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
	(37, 1, 'Hello', 3, 1, 1, '2022-08-28 23:45:14', '2022-08-28 23:45:14');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.notification: ~0 rows (approximately)
INSERT INTO `notification` (`id`, `user_id`, `transaction_id`, `other_id`, `createdAt`, `updatedAt`) VALUES
	(1, 1, 2, 3, '2022-08-28 21:44:16', '2022-08-28 21:48:38'),
	(2, 2, 2, 3, '2022-08-28 21:48:05', '2022-08-28 22:42:02'),
	(3, 3, 2, 1, '2022-08-28 21:48:38', '2022-08-28 21:49:38'),
	(4, 1, 4, 2, '2022-08-28 22:42:27', '2022-08-28 22:44:58'),
	(5, 3, 4, 2, '2022-08-28 22:42:38', '2022-08-28 22:44:58'),
	(6, 2, 4, 0, '2022-08-28 22:44:58', '2022-08-28 22:44:58'),
	(7, 1, 3, 0, '2022-08-28 23:44:58', '2022-08-28 23:44:58'),
	(8, 3, 1, 0, '2022-08-28 23:45:14', '2022-08-28 23:45:14');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test-reatime-comment.transaction: ~0 rows (approximately)
INSERT INTO `transaction` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
	(1, 'Về socket.io', NULL, NULL),
	(2, 'Có nên dùng nodejs', NULL, NULL),
	(3, 'Có nên đi chơi trung thu không', NULL, NULL),
	(4, 'Trung thu nên về quê hay không', NULL, NULL),
	(5, 'Nên đi làm thêm không', NULL, NULL);

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

-- Dumping data for table test-reatime-comment.user: ~2 rows (approximately)
INSERT INTO `user` (`id`, `username`, `password`, `isAdmin`, `name`, `phone`, `email`, `address`, `token`, `image_path`, `createdAt`, `updatedAt`) VALUES
	(1, 'admin', '123456', 1, 'admin', '0989983025', 'trungkien07yd2gmail.com', 'Yên Đồng, Yên Mô, Ninh Bình', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiYWRtaW4iLCJpYXQiOjE2NjE2OTUzNzN9.WizUK9Pv43X817TV5qw672CTcsfxWvN-FypqmQ5epDE', 'https://scontent.fhan14-2.fna.fbcdn.net/v/t39.30808-6/280227226_1576724812722345_6309128935566769866_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=DuXDZsmzyo4AX-SyzaC&_nc_ht=scontent.fhan14-2.fna&oh=00_AT_8TZI90u2sjBHyU54jTdEFqPjf5dz_sCndPOC3ckYOCA&oe=630ED596', '2022-08-28 21:17:45', '2022-08-28 21:17:45'),
	(2, 'kien', '123456', 0, 'Nguyễn Trung Kiên', '0989983025', 'nguyenkien2022001@gmail.com', 'Yên Đồng, Yên Mô, Ninh Bình', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoia2llbiIsImlhdCI6MTY2MTcwNDcyMX0.rAtwgW9-dT2WbGqS4__NTXfYXrykEB90PyWUOZGyCrg', 'https://kynguyenlamdep.com/wp-content/uploads/2022/06/baby-cute.jpg', '2022-08-28 21:17:45', '2022-08-28 23:38:41'),
	(3, 'nhung', '123456', 0, 'Nhung', '0967775328', 'donhung10102001@gmail.com', 'Yên Phong, Yên Mô, Ninh Bình', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoibmh1bmciLCJpYXQiOjE2NjE3MDUwNzF9.dw8lpGHUlhXw9AO-PANZa9yNNgzCMxzuIMJd1gzy7X0', 'https://kynguyenlamdep.com/wp-content/uploads/2022/06/anh-gai-xinh-cuc-dep.jpg', '2022-08-28 21:17:45', '2022-08-28 23:44:31'),
	(6038, 'kien1', '123456', 0, 'Trung Kiên', '0989983025', 'trungkien071yd@gmail.com', 'trungkien', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoia2llbjEiLCJpYXQiOjE2NjE2ODg0NDF9.TSDeHKde18ZJ3NDo9O79Ee-BMdjyR153DXzZ5oRx32c', 'http://res.cloudinary.com/trungkien2022001/image/upload/v1661688441/upload/ikphwq2szhmyabolqbdd.jpg', '2022-08-28 21:17:45', '2022-08-28 21:17:45'),
	(6040, 'thangg', '123456', 0, 'Thắng', '0123456789', 'abc@gmail.com', 'Yên Từ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoidGhhbmdnIiwiaWF0IjoxNjYxNjk0OTAxfQ.l7j-9tCBiaWFbdrAC_xTdwbKUyRHGxVw1pkJtcEBgYg', 'https://anhdep123.com/wp-content/uploads/2021/05/hinh-avatar-trang.jpg', '2022-08-28 21:17:45', '2022-08-28 21:17:45'),
	(6041, 'linhhh', '123456', 0, 'Diệu Linh', '0123456789', 'kkk@gmail.com', 'Yên từ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoibGluaGhoIiwiaWF0IjoxNjYxNjk0OTg1fQ.zsXPuP7dlTbmOWs8mMJd3M2jzVINgiwBvWuxnlJ00ZY', 'http://res.cloudinary.com/trungkien2022001/image/upload/v1661694985/upload/adnjwcbwigvwqw4zoqd6.jpg', '2022-08-28 21:17:45', '2022-08-28 21:17:45');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
