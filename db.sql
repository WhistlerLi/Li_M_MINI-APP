/*
Navicat MySQL Data Transfer

Source Server         : 本地环境
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-12-02 10:03:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `pic` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('1', 'MINI COOPER COUNTRYMAN ALL4', '35956.00', 'The new MINI Countryman ALL4 is as daring and adventure minded as you are. \r\nWhether you prefer playing in the city or escaping it at the first opportunity, \r\nyou’ll have the freedom and flexibility to go wherever your wandering mind takes you. \r\nTime to discover the new MINI Countryman and start writing your next adventure.', '/static/model1.png', '2020-12-02 09:52:24');
INSERT INTO `cars` VALUES ('2', 'JOHN COOPER WORKS ALL4', '32900.00', 'MINI\'s signature Piano Black trim encases the headlight and taillights,\r\nas well as the door handles and the badge \r\non the tailgate adding an extra edge of elegance.', '/static/model2.png', '2020-12-02 09:52:46');
INSERT INTO `cars` VALUES ('3', 'JOHN COOPER WORKS', '30090.00', 'Open top. Open road. Open-ended possibilities. \r\nThe MINI Convertible brings together three generations of MINI design, \r\nbut boasts a personality that is all its own. \r\nWith comfortable seating for four and a 3-in-1 Soft Top that can function \r\nas a sunroof or a full-fledged drop-top, it’s always ready for your next open-air adventure. \r\nAnd with a lively Twin Power Turbo engine capable of hitting 100 km/h in a blistering \r\n6.6 seconds (in the John Cooper Works variant), it’s sure to offer a few hair-raising thrills \r\nalong the way.', '/static/model3.png', '2020-12-02 09:53:02');
