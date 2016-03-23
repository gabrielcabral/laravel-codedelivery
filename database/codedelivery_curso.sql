/*
Navicat MySQL Data Transfer

Source Server         : casa
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : codedelivery_curso

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-03-22 21:36:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'trejsfdkj123123234', '2015-12-28 11:55:19', '2016-03-23 00:01:17');
INSERT INTO `categories` VALUES ('2', 'ut', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('3', 'saepe', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('4', 'quae', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('5', 'eum', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('6', 'voluptatem', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('7', 'fuga', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('8', 'non', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('9', 'omnis', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('10', 'officiis', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `categories` VALUES ('11', 'teste', '2016-03-08 15:55:19', '2016-03-08 15:55:19');

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `clients_user_id_foreign` (`user_id`),
  CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('1', '1', '837-555-6408', '3225 Macey TunnelEast Kiarrastad, KY 37978-1083', 'Berniertown', 'New Jersey', '43751-8070we', '2015-12-28 11:55:18', '2016-03-23 00:01:41');
INSERT INTO `clients` VALUES ('2', '2', '1-213-610-0640 x54939', '90810 Schumm Union Apt. 228\nSouth Estrella, MD 99337-9416', 'Lennymouth', 'Colorado', '88435-3993', '2015-12-28 11:55:18', '2015-12-28 11:55:18');
INSERT INTO `clients` VALUES ('3', '3', '(790) 233-5503', '576 Walker Bridge\nSouth Jamel, IL 28474-6799', 'Port Tyrahaven', 'Nebraska', '44403', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('4', '4', '398.221.3165', '457 Gislason Station\nSouth Hannamouth, NJ 30023-6990', 'Port Tina', 'Pennsylvania', '21476', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('5', '5', '+1 (862) 866-5476', '545 Emmerich Lodge\nBrockland, DE 66150', 'South Junehaven', 'Utah', '16884-1838', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('6', '6', '982-523-6190 x46990', '19983 Kohler Junctions Apt. 641\nChetborough, CT 44098-2615', 'New Toby', 'Alabama', '79112-3373', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('7', '7', '958-752-6767 x49193', '106 Esperanza Throughway\nEast Vladimir, LA 03600-9727', 'West Dorianville', 'Montana', '03325', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('8', '8', '+1-208-742-4029', '716 Bergstrom Gateway Apt. 017\nSolonburgh, UT 17957-5689', 'Hellenport', 'Delaware', '32114', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('9', '9', '554.284.2636 x87227', '62779 Krajcik Forks Apt. 407\nHarrisonville, NM 24531', 'Port Scotfort', 'Colorado', '81688-2616', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('10', '10', '(859) 214-3530 x63066', '348 Wyman Meadows Suite 025\nDeclanport, AZ 88028', 'O\'Keefeberg', 'Massachusetts', '38722-4272', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('11', '11', '585-647-0410 x5246', '70291 O\'Connell Plaza Suite 898\nToneyton, CO 82563-7040', 'Murphytown', 'New York', '20997', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('12', '12', '1-460-286-5532 x35377', '98406 Pfannerstill Harbors\nPamelaport, DE 13627-9118', 'Hopeport', 'North Dakota', '26677', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `clients` VALUES ('13', '13', '6132635339', 'Área Especial 4, Lote E, Bloco C, apt 1407 Guará II', 'Brasília', 'df', '71070-640', '2016-03-08 16:10:07', '2016-03-08 16:10:07');

-- ----------------------------
-- Table structure for cupoms
-- ----------------------------
DROP TABLE IF EXISTS `cupoms`;
CREATE TABLE `cupoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cupoms
-- ----------------------------
INSERT INTO `cupoms` VALUES ('1', '496', '78.00', '0', '2015-12-28 11:55:19', '2016-01-02 22:56:10');
INSERT INTO `cupoms` VALUES ('2', '819', '65.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('3', '611', '96.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('4', '649', '77.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('5', '538', '59.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('6', '734', '61.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('7', '207', '75.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('8', '390', '100.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('9', '969', '80.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('10', '124', '64.00', '0', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `cupoms` VALUES ('11', '496', '999999.99', '0', '2016-03-08 16:10:25', '2016-03-08 16:10:41');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_30_094047_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_30_100214_create_products_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_30_124501_create_clients_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_30_135038_create_orders_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_30_135204_create_order_items_table', '1');
INSERT INTO `migrations` VALUES ('2015_12_28_110710_create_cupoms_table', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `user_deliveryman_id` int(10) unsigned DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cupom_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_client_id_foreign` (`client_id`),
  KEY `orders_user_deliveryman_id_foreign` (`user_deliveryman_id`),
  KEY `orders_cupom_id_foreign` (`cupom_id`),
  CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_cupom_id_foreign` FOREIGN KEY (`cupom_id`) REFERENCES `cupoms` (`id`),
  CONSTRAINT `orders_user_deliveryman_id_foreign` FOREIGN KEY (`user_deliveryman_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', null, '39.00', '0', '2015-12-28 11:56:22', '2015-12-28 11:56:22', null);
INSERT INTO `orders` VALUES ('2', '3', null, '24.00', '0', '2015-12-28 11:56:40', '2016-01-02 22:38:35', null);
INSERT INTO `orders` VALUES ('3', '1', null, '450.00', '0', '2015-12-28 11:58:12', '2015-12-28 11:58:12', null);
INSERT INTO `orders` VALUES ('4', '1', null, '6.00', '1', '2016-01-02 22:38:52', '2016-01-02 22:38:52', null);
INSERT INTO `orders` VALUES ('5', '1', null, '195.00', '0', '2016-01-11 12:56:08', '2016-01-11 12:56:08', null);
INSERT INTO `orders` VALUES ('6', '4', null, '1888.00', '0', '2016-01-11 13:33:30', '2016-01-11 13:33:30', null);
INSERT INTO `orders` VALUES ('7', '5', null, '1888.00', '0', '2016-03-08 16:11:09', '2016-03-08 16:11:09', null);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qtd` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('1', '1', '1', '39.00', '1', '2015-12-28 11:56:22', '2015-12-28 11:56:22');
INSERT INTO `order_items` VALUES ('2', '4', '2', '24.00', '1', '2015-12-28 11:56:40', '2015-12-28 11:56:40');
INSERT INTO `order_items` VALUES ('3', '5', '3', '50.00', '9', '2015-12-28 11:58:12', '2015-12-28 11:58:12');
INSERT INTO `order_items` VALUES ('4', '1', '5', '39.00', '5', '2016-01-11 12:56:08', '2016-01-11 12:56:08');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '1', 'sintqweqwe', 'Est vero aut enim.23', '39.00', '2015-12-28 11:55:19', '2016-03-23 00:01:29');
INSERT INTO `products` VALUES ('2', '1', 'est', 'Sit at vitae et sequi voluptas illum qui.', '47.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('3', '1', 'rerum', 'Ab pariatur qui quisquam excepturi.', '17.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('4', '1', 'nobis', 'Voluptas vero quae magnam assumenda consequatur.', '24.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('5', '1', 'dolor', 'Aut ullam ullam natus perspiciatis odit dolores qui.', '50.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('6', '1', 'et', 'Et a voluptatibus quis et aspernatur assumenda dolores.', '38.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('7', '2', 'dolores', 'Esse sint officiis veritatis vero ut.', '23.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('8', '2', 'perferendis', 'Pariatur voluptatem rerum inventore.', '21.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('9', '2', 'ut', 'Est hic at et ut dolores nobis.', '38.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('10', '2', 'excepturi', 'Pariatur reprehenderit sed nobis et repellat accusantium iste.', '12.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('11', '2', 'autem', 'Eum fugiat dolorum qui dolor.', '10.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('12', '2', 'eum', 'Iste dignissimos dolore consectetur.', '22.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('13', '3', 'odit', 'Dolores reiciendis incidunt quam.', '10.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('14', '3', 'nihil', 'Voluptate ut aut nihil dolorem id.', '41.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('15', '3', 'error', 'Velit quod eaque molestias atque sequi voluptates corrupti.', '20.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('16', '3', 'et', 'Provident porro est ut magni ut sed omnis.', '20.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('17', '3', 'sit', 'Et amet accusantium eligendi voluptate.', '42.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('18', '3', 'aut', 'Tempora corporis a velit molestiae ut vitae itaque numquam.', '29.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('19', '4', 'ullam', 'Natus facilis reiciendis minima est est enim.', '43.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('20', '4', 'praesentium', 'Ex eos perferendis neque voluptatem tempora et dignissimos aut.', '48.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('21', '4', 'quod', 'Modi magnam dolorum dolores eius.', '34.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('22', '4', 'id', 'Aut sit est cumque asperiores magni.', '18.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('23', '4', 'dolorem', 'Sed et placeat fugit ut.', '25.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('24', '4', 'saepe', 'At tempora veniam animi sit quis ratione non nostrum.', '24.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('25', '5', 'dolorum', 'Ullam vel temporibus autem et.', '13.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('26', '5', 'adipisci', 'Voluptas nihil hic enim labore.', '21.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('27', '5', 'amet', 'Placeat sapiente omnis dicta et expedita qui.', '18.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('28', '5', 'minima', 'Blanditiis officia laboriosam hic perferendis iure vel est.', '45.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('29', '5', 'et', 'Et ut veritatis cupiditate autem eum.', '27.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('30', '5', 'aperiam', 'Aspernatur rerum et quas et maiores.', '32.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('31', '6', 'quia', 'Aut facilis provident excepturi est ducimus.', '19.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('32', '6', 'laborum', 'Voluptatem animi animi id id ea.', '11.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('33', '6', 'inventore', 'Quia odio nihil voluptas tenetur et.', '29.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('34', '6', 'sit', 'Eveniet quod alias voluptatum expedita dolor repellendus atque.', '17.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('35', '6', 'voluptatem', 'Ex enim illum voluptatem molestias et sit.', '44.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('36', '6', 'sequi', 'Mollitia labore repellat consequuntur a.', '34.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('37', '7', 'et', 'Sapiente atque id repellat enim et.', '38.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('38', '7', 'aut', 'Ipsum dolor officia magni impedit et enim.', '46.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('39', '7', 'non', 'Quasi nobis temporibus in corrupti esse tempore cumque ut.', '30.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('40', '7', 'adipisci', 'Repellat autem atque velit quasi cumque.', '30.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('41', '7', 'magni', 'Rerum commodi labore adipisci recusandae aut.', '42.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('42', '7', 'ut', 'Ut officiis sunt quo in qui consequatur.', '43.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('43', '8', 'dolores', 'Neque magni adipisci ut saepe quaerat.', '10.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('44', '8', 'ad', 'Ducimus architecto eum dignissimos adipisci.', '43.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('45', '8', 'amet', 'Pariatur et neque aspernatur perspiciatis.', '25.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('46', '8', 'non', 'Est enim eos id deleniti expedita qui ut tempora.', '22.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('47', '8', 'vero', 'Et optio explicabo voluptatibus ut excepturi beatae.', '25.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('48', '8', 'tempora', 'Quia dicta nulla facere ea.', '34.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('49', '9', 'eveniet', 'Qui et sapiente delectus quod quasi.', '48.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('50', '9', 'veritatis', 'Eligendi unde quidem ea officiis laboriosam id.', '50.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('51', '9', 'quae', 'Sit nihil officia nam optio deserunt et id occaecati.', '30.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('52', '9', 'aut', 'Ut dolor fugit quidem ut ut et facere.', '16.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('53', '9', 'adipisci', 'Voluptas alias labore ea rerum enim facere natus.', '32.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('54', '9', 'labore', 'Eius et provident magnam consequatur necessitatibus.', '43.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('55', '10', 'dolorem', 'Aut dolores quis sint est.', '26.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('56', '10', 'qui', 'Ullam sit fugiat laborum asperiores.', '31.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('57', '10', 'et', 'Minus illo facere dignissimos et nesciunt qui.', '44.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('58', '10', 'at', 'Explicabo deleniti qui veritatis est perferendis.', '19.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('59', '10', 'est', 'Harum doloremque ipsum doloribus quis.', '43.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('60', '10', 'et', 'Nam aut suscipit corrupti.', '12.00', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `products` VALUES ('61', '5', 'Teste', 'teste', '234.00', '2016-03-08 15:55:42', '2016-03-08 15:55:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'User', 'user@user.com', '$2a$10$alICPtDb4vj401ppuLiBT.thw6wg3li5cDsPj88XWnP0PQaabojiK', 'client', 'N16W0R1E9yTyro8miZQk9g8FHwP7ZUMmtywBOI27luLB7pFcaHXzyX9j6ioD', '2015-12-28 11:55:18', '2016-01-11 13:32:33');
INSERT INTO `users` VALUES ('2', 'Admin', 'admin@user.com', '$2a$10$alICPtDb4vj401ppuLiBT.thw6wg3li5cDsPj88XWnP0PQaabojiK', 'Admin', 'IuYddSsKEEDCrwij8ZtcrFpdQfCCG8kHH0ljs7mXqUGnh06mJ27FaTE1qCfg', '2015-12-28 11:55:18', '2016-01-11 12:55:46');
INSERT INTO `users` VALUES ('3', 'Melvina Goyette', 'jaron16@gmail.com', '$2y$10$nVv74/zf/xuJy.qpJUKxBe63QEh/odarRgI4N3Fhsu8a5CPJ8x/r2', 'client', '2D3oLbHoBu', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('4', 'Reece Kohler', 'stanton94@hotmail.com', '$2y$10$d/AApQE4W45ntWJxVCECTOM964dOBf.btG5WOVrKo3znbVAZ4tMhK', 'client', 'skfWxDtnB6', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('5', 'Scottie Franecki', 'ibartell@hotmail.com', '$2y$10$VSr2/XfhkkDJRC8TXEPkUetSXMq6RQsoeiJs9O6UmZZva4EEDx0DO', 'client', 'KLNprkzCIt', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('6', 'Aidan Cronin', 'schuppe.gabrielle@hansen.net', '$2y$10$tngKITQ10nnbmyU2uaE1Y.Vd9FxeiDKjVcWFtA56W13bOBXT6Dl4C', 'client', '603KBY1m7O', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('7', 'Diego Torphy', 'harmstrong@gmail.com', '$2y$10$H9zOLMVnbJM.jBG.wx2Tw.GgV0Y0WPdtxZ6Sh8U0Ed5pX78s0QWEm', 'client', 'H6LxRJsDYg', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('8', 'Virginia Buckridge', 'antonetta06@dickens.com', '$2y$10$9MJoTJN/7E2CAOB3nam1R.YtYOuu/yt8cTL/w2Dkk06N54hYUwmH.', 'client', 'r6IS8uxv3u', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('9', 'Ludie Reinger', 'hansen.reinhold@gmail.com', '$2y$10$Gy1vkV7uSapWSvi.04tViuPhDI0mgfhkpJ19FPCEQxGwMdjrDrZje', 'client', '5pVHK7uXxS', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('10', 'Mavis Feil', 'ryley.beer@waelchi.net', '$2y$10$OE9uRs.PsaPH29gk17Eabey4wy9JzoK/xDSNL/V9in6kfHR4r0EWu', 'client', 'iLi6dtcAR5vG1WrYwc7IgULDv5phUK18uMvitwKpDMpSMptZAtaeLiUIgDax', '2015-12-28 11:55:19', '2015-12-28 11:55:38');
INSERT INTO `users` VALUES ('11', 'Dr. Lon Sporer Sr.', 'obergstrom@yahoo.com', '$2y$10$634QWx8f/HTgzBMpMUH1QOHQaXlca.U9kOMJW3fZTiyJf9QVNbJkC', 'client', 'hGlmTQdphf', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('12', 'Prof. Adam Cronin', 'ttorp@stracke.com', '$2y$10$8qWq5O.1KnzCWPYm8DURPuQlU0MD/WOpwGkWjHh.Nf8WqJuQh/xDm', 'client', 's8kv0z9lfq', '2015-12-28 11:55:19', '2015-12-28 11:55:19');
INSERT INTO `users` VALUES ('13', 'Dr. Fausto Huels MD234234', 'teste@teste.com', '$2y$10$dRu8QWK9I5zhEZn3ve1Qn.EzvFAsXc3IKW93s/bJzKtTkGVzv44B.', 'client', null, '2016-03-08 16:10:07', '2016-03-08 16:10:07');
