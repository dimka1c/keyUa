-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               8.0.12 - MySQL Community Server - GPL
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп структуры для таблица key_ua.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы key_ua.category: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `category_name`, `parent_id`) VALUES
	(1, 'компьютеры', NULL),
	(2, 'ноутбуки', NULL),
	(3, 'принтеры', NULL),
	(4, 'мониторы', NULL),
	(5, 'клавиатуры', NULL),
	(6, 'аккустика', NULL),
	(7, 'блоки питания', NULL),
	(8, 'корпуса', NULL),
	(9, 'наушники', NULL),
	(10, 'оперативная память', NULL),
	(11, 'жесткие диски', NULL),
	(12, 'процессоры', NULL),
	(13, 'ноутбуки acer', 2),
	(14, 'ноутбуки asus', 2),
	(15, 'ноутбуки hp', 2),
	(16, 'мониторы lg', 4),
	(17, 'мониторы samsung', 4),
	(18, 'мониторы acer', 4),
	(19, 'процессоры amd', 12),
	(20, 'процессоры intel', 12),
	(21, 'ноутбуки acer_кат_3', 13),
	(22, 'ноутбуки asus_кат3', 14),
	(23, 'ноутбуки hp_кат_3', 15);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица key_ua.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы key_ua.permission: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`id`, `permission`) VALUES
	(1, 'писать код'),
	(2, 'тестировать код'),
	(3, 'общаться с менеджером'),
	(4, 'рисовать'),
	(5, 'ставить задачи');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

-- Дамп структуры для таблица key_ua.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы key_ua.product: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `product_name`) VALUES
	(1, 'блок питания chieftec'),
	(2, 'блок питания goldenField'),
	(3, 'колонки 1'),
	(4, 'колонки 2'),
	(5, 'жесткий диск 1'),
	(6, 'жесткий диск 1'),
	(7, 'клавиатура 1'),
	(8, 'клавиатура 2'),
	(9, 'клавиатура 3'),
	(10, 'компьютер 1'),
	(11, 'компьютер 2'),
	(12, 'компьютер 3'),
	(13, 'монитор 1'),
	(14, 'монитор 2'),
	(15, 'монитор 3'),
	(17, 'наушники 1'),
	(18, 'наушники 2'),
	(19, 'наушники 3'),
	(20, 'ноутбук 1'),
	(21, 'ноутбук 2'),
	(22, 'ноутбук 3'),
	(23, 'оперативная память 1'),
	(24, 'оперативная память 2'),
	(25, 'оперативная память 3'),
	(26, 'принтер 1'),
	(27, 'принтер 2'),
	(28, 'принтер 3'),
	(30, 'процессор 2'),
	(33, 'cpu celeron 1'),
	(34, 'cpu celeron 2'),
	(35, 'cpu amd 1'),
	(36, 'cpu amd 2'),
	(39, 'процессор 1'),
	(41, 'процессор 3');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица key_ua.product_to_category
CREATE TABLE IF NOT EXISTS `product_to_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category_id`),
  KEY `product` (`product_id`),
  CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы key_ua.product_to_category: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `product_to_category` DISABLE KEYS */;
INSERT INTO `product_to_category` (`id`, `category_id`, `product_id`) VALUES
	(1, 1, 10),
	(2, 1, 11),
	(3, 1, 12),
	(4, 2, 20),
	(5, 2, 21),
	(6, 2, 22),
	(7, 18, 20),
	(8, 14, 21),
	(9, 15, 22),
	(10, 21, 17),
	(11, 22, 18),
	(12, 23, 19),
	(13, 13, 20),
	(14, 14, 21),
	(15, 15, 22);
/*!40000 ALTER TABLE `product_to_category` ENABLE KEYS */;

-- Дамп структуры для таблица key_ua.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL DEFAULT '0',
  `role_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы key_ua.role: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `role`, `role_description`) VALUES
	(1, 'programmer', 'программист'),
	(2, 'desighner', 'дизайнер'),
	(3, 'tester', 'тестировщик'),
	(4, 'manager', 'менеджер.');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Дамп структуры для таблица key_ua.role_permission
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `permission_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role_id`),
  KEY `permission` (`permission_id`),
  CONSTRAINT `permission` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы key_ua.role_permission: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
	(2, 1, 1),
	(4, 1, 2),
	(5, 1, 3),
	(6, 2, 4),
	(7, 2, 3),
	(8, 3, 2),
	(10, 3, 3),
	(11, 3, 5),
	(12, 4, 5);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
