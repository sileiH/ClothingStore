/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : design

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-18 15:33:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `season` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `classify` varchar(255) DEFAULT NULL,
  `birth` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sex` varchar(5) DEFAULT NULL,
  `popular` int(11) DEFAULT NULL,
  `favorite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '魔术贴帆布鞋', '291.00', 'img/all/0.png', '100010', '25', 'describe', 'spring', 'cons', '30:6,31:7,32:3,33:10,34:20,35:27,36:29,37:24,38:13,39:6', 'shoe', '2018-01-05 11:39:55', '男的', '1', '5');
INSERT INTO `commodity` VALUES ('2', '低帮帆布鞋', '287.00', 'img/all/1.png', '100011', '106', 'describe', 'summer', 'chuck', '30:6,31:1,32:19,33:9,34:13,35:26,36:2,37:11,38:12,39:14', 'shoe', '2018-01-05 11:39:57', '女的', '5', '1');
INSERT INTO `commodity` VALUES ('3', '低帮休闲运动鞋', '296.00', 'img/all/2.png', '100012', '65', 'describe', 'autumn', 'all_star', '30:1,31:13,32:15,33:18,34:19,35:2,36:10,37:15,38:19,39:9', 'shoe', '2018-01-05 11:47:48', '儿童', '2', '8');
INSERT INTO `commodity` VALUES ('4', '纯色魔术贴', '203.00', 'img/all/3.png', '100013', '63', 'describe', 'winter', 'taylor', '30:17,31:9,32:0,33:11,34:18,35:23,36:7,37:10,38:16,39:28', 'shoe', '2018-01-05 11:39:59', '男的', '4', '4');
INSERT INTO `commodity` VALUES ('5', '魔术贴帆布鞋', '370.00', 'img/all/4.png', '100014', '163', 'describe', 'spring', 'cons', '30:8,31:13,32:27,33:1,34:21,35:10,36:6,37:9,38:29,39:19', 'shoe', '2018-01-05 11:39:59', '女的', '7', '4');
INSERT INTO `commodity` VALUES ('6', '低帮帆布鞋', '345.00', 'img/all/5.png', '100015', '215', 'describe', 'summer', 'chuck', '30:18,31:29,32:10,33:6,34:17,35:29,36:4,37:7,38:12,39:25', 'shoe', '2018-01-05 11:47:49', '儿童', '2', '1');
INSERT INTO `commodity` VALUES ('7', '低帮休闲运动鞋', '253.00', 'img/all/6.png', '100016', '191', 'describe', 'autumn', 'all_star', '30:16,31:15,32:2,33:29,34:14,35:15,36:14,37:14,38:18,39:15', 'shoe', '2018-01-05 11:40:00', '男的', '8', '6');
INSERT INTO `commodity` VALUES ('8', '纯色魔术贴', '366.00', 'img/all/7.png', '100017', '83', 'describe', 'winter', 'taylor', '30:12,31:12,32:19,33:24,34:0,35:26,36:29,37:20,38:19,39:18', 'shoe', '2018-01-05 11:40:01', '女的', '4', '9');
INSERT INTO `commodity` VALUES ('9', '魔术贴帆布鞋', '326.00', 'img/all/8.png', '100018', '27', 'describe', 'spring', 'cons', '30:19,31:10,32:14,33:2,34:5,35:8,36:17,37:2,38:0,39:9', 'shoe', '2018-01-05 11:47:51', '儿童', '7', '8');
INSERT INTO `commodity` VALUES ('10', '低帮帆布鞋', '280.00', 'img/all/9.png', '100019', '175', 'describe', 'summer', 'chuck', '30:8,31:0,32:15,33:27,34:29,35:29,36:8,37:6,38:14,39:26', 'shoe', '2018-01-05 11:40:01', '男的', '5', '8');
INSERT INTO `commodity` VALUES ('11', '低帮休闲运动鞋', '366.00', 'img/all/10.png', '100020', '127', 'describe', 'autumn', 'all_star', '30:28,31:21,32:10,33:25,34:0,35:26,36:9,37:12,38:17,39:27', 'shoe', '2018-01-05 00:00:00', '女的', '9', '6');
INSERT INTO `commodity` VALUES ('12', '纯色魔术贴', '201.00', 'img/all/11.png', '100021', '93', 'describe', 'winter', 'taylor', '30:20,31:13,32:9,33:14,34:15,35:1,36:15,37:11,38:8,39:14', 'shoe', '2018-01-05 20:04:31', '儿童', '3', '7');
INSERT INTO `commodity` VALUES ('13', '魔术贴帆布鞋', '385.00', 'img/all/12.png', '100022', '71', 'describe', 'spring', 'cons', '30:6,31:3,32:7,33:25,34:23,35:27,36:2,37:9,38:29,39:29', 'shoe', '2018-01-05 20:04:33', '男的', '6', '5');
INSERT INTO `commodity` VALUES ('14', '低帮帆布鞋', '377.00', 'img/all/13.png', '100023', '149', 'describe', 'summer', 'chuck', '30:19,31:9,32:7,33:6,34:21,35:7,36:2,37:16,38:11,39:29', 'shoe', '2018-01-05 20:04:35', '女的', '9', '7');
INSERT INTO `commodity` VALUES ('15', '低帮休闲运动鞋', '255.00', 'img/all/14.png', '100024', '166', 'describe', 'autumn', 'all_star', '30:22,31:22,32:19,33:20,34:15,35:15,36:24,37:3,38:11,39:19', 'shoe', '2018-01-05 20:04:36', '儿童', '4', '4');
INSERT INTO `commodity` VALUES ('16', '纯色魔术贴', '202.00', 'img/all/15.png', '100025', '138', 'describe', 'winter', 'taylor', '30:10,31:19,32:5,33:0,34:28,35:25,36:14,37:16,38:3,39:17', 'shoe', '2018-01-05 20:04:37', '男的', '5', '5');
INSERT INTO `commodity` VALUES ('17', '魔术贴帆布鞋', '237.00', 'img/all/16.png', '100026', '122', 'describe', 'spring', 'cons', '30:17,31:24,32:19,33:9,34:23,35:2,36:28,37:19,38:19,39:10', 'shoe', '2018-01-05 20:04:40', '女的', '2', '1');
INSERT INTO `commodity` VALUES ('18', '低帮帆布鞋', '313.00', 'img/all/17.png', '100027', '165', 'describe', 'summer', 'chuck', '30:6,31:11,32:0,33:15,34:10,35:26,36:21,37:8,38:17,39:19', 'shoe', '2018-01-05 20:04:41', '儿童', '3', '5');
INSERT INTO `commodity` VALUES ('19', '低帮休闲运动鞋', '220.00', 'img/all/18.png', '100028', '86', 'describe', 'autumn', 'all_star', '30:7,31:0,32:9,33:7,34:26,35:13,36:23,37:29,38:27,39:3', 'shoe', '2018-01-05 20:04:43', '男的', '6', '4');
INSERT INTO `commodity` VALUES ('20', '纯色魔术贴', '346.00', 'img/all/19.png', '100029', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-05 20:04:45', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('21', '皮革开口笑', '291.00', 'img/hot/m-shoes/1.png', '10001', '25', 'describe', 'spring', 'cons', '30:6,31:7,32:3,33:10,34:20,35:27,36:29,37:24,38:13,39:6', 'shoe', '2018-01-06 16:32:58', '男的', '1', '5');
INSERT INTO `commodity` VALUES ('22', '低帮帆布鞋', '287.00', 'img/hot/m-shoes/2.png', '10002', '106', 'describe', 'summer', 'chuck', '30:6,31:1,32:19,33:9,34:13,35:26,36:2,37:11,38:12,39:14', 'shoe', '2018-01-06 16:33:00', '女的', '5', '1');
INSERT INTO `commodity` VALUES ('23', '低帮休闲运动鞋', '296.00', 'img/hot/m-shoes/3.png', '10003', '65', 'describe', 'autumn', 'all_star', '30:1,31:13,32:15,33:18,34:19,35:2,36:10,37:15,38:19,39:9', 'shoe', '2018-01-06 16:33:33', '儿童', '2', '8');
INSERT INTO `commodity` VALUES ('24', '纯色魔术贴', '203.00', 'img/hot/m-shoes/4.png', '10004', '63', 'describe', 'winter', 'taylor', '30:17,31:9,32:0,33:11,34:18,35:23,36:7,37:10,38:16,39:28', 'shoe', '2018-01-06 16:32:43', '男的', '4', '4');
INSERT INTO `commodity` VALUES ('25', '魔术贴帆布鞋', '370.00', 'img/hot/m-shoes/5.png', '10005', '163', 'describe', 'spring', 'cons', '30:8,31:13,32:27,33:1,34:21,35:10,36:6,37:9,38:29,39:19', 'shoe', '2018-01-06 16:33:04', '女的', '7', '4');
INSERT INTO `commodity` VALUES ('26', '低帮帆布鞋', '345.00', 'img/hot/m-shoes/6.png', '10006', '215', 'describe', 'summer', 'chuck', '30:18,31:29,32:10,33:6,34:17,35:29,36:4,37:7,38:12,39:25', 'shoe', '2018-01-06 16:33:06', '儿童', '2', '1');
INSERT INTO `commodity` VALUES ('27', '低帮休闲运动鞋', '253.00', 'img/hot/m-shoes/7.png', '10007', '191', 'describe', 'autumn', 'all_star', '30:16,31:15,32:2,33:29,34:14,35:15,36:14,37:14,38:18,39:15', 'shoe', '2018-01-06 16:33:08', '男的', '8', '6');
INSERT INTO `commodity` VALUES ('28', '纯色魔术贴', '366.00', 'img/hot/m-shoes/8.png', '10008', '83', 'describe', 'winter', 'taylor', '30:12,31:12,32:19,33:24,34:0,35:26,36:29,37:20,38:19,39:18', 'shoe', '2018-01-06 16:33:11', '女的', '4', '9');
INSERT INTO `commodity` VALUES ('29', '魔术贴帆布鞋', '326.00', 'img/hot/w-shoes/1.png', '10009', '27', 'describe', 'spring', 'cons', '30:19,31:10,32:14,33:2,34:5,35:8,36:17,37:2,38:0,39:9', 'shoe', '2018-01-06 16:33:35', '儿童', '7', '8');
INSERT INTO `commodity` VALUES ('30', '低帮帆布鞋', '280.00', 'img/hot/w-shoes/2.png', '10010', '175', 'describe', 'summer', 'chuck', '30:8,31:0,32:15,33:27,34:29,35:29,36:8,37:6,38:14,39:26', 'shoe', '2018-01-06 16:32:15', '男的', '5', '8');
INSERT INTO `commodity` VALUES ('31', '低帮休闲运动鞋', '366.00', 'img/hot/w-shoes/3.png', '10011', '127', 'describe', 'autumn', 'all_star', '30:28,31:21,32:10,33:25,34:0,35:26,36:9,37:12,38:17,39:27', 'shoe', '2018-01-06 16:32:17', '女的', '9', '6');
INSERT INTO `commodity` VALUES ('32', '纯色魔术贴', '201.00', 'img/hot/w-shoes/4.png', '10012', '93', 'describe', 'winter', 'taylor', '30:20,31:13,32:9,33:14,34:15,35:1,36:15,37:11,38:8,39:14', 'shoe', '2018-01-06 16:32:20', '儿童', '3', '7');
INSERT INTO `commodity` VALUES ('33', '魔术贴帆布鞋', '385.00', 'img/hot/w-shoes/5.png', '10013', '71', 'describe', 'spring', 'cons', '30:6,31:3,32:7,33:25,34:23,35:27,36:2,37:9,38:29,39:29', 'shoe', '2018-01-06 16:32:21', '男的', '6', '5');
INSERT INTO `commodity` VALUES ('34', '低帮帆布鞋', '377.00', 'img/hot/w-shoes/6.png', '10014', '149', 'describe', 'summer', 'chuck', '30:19,31:9,32:7,33:6,34:21,35:7,36:2,37:16,38:11,39:29', 'shoe', '2018-01-06 16:32:23', '女的', '9', '7');
INSERT INTO `commodity` VALUES ('35', '低帮休闲运动鞋', '255.00', 'img/hot/w-shoes/7.png', '10015', '166', 'describe', 'autumn', 'all_star', '30:22,31:22,32:19,33:20,34:15,35:15,36:24,37:3,38:11,39:19', 'shoe', '2018-01-06 16:32:34', '儿童', '4', '4');
INSERT INTO `commodity` VALUES ('36', '纯色魔术贴', '202.00', 'img/hot/w-shoes/8.png', '10016', '138', 'describe', 'winter', 'taylor', '30:10,31:19,32:5,33:0,34:28,35:25,36:14,37:16,38:3,39:17', 'shoe', '2018-01-06 16:32:01', '男的', '5', '5');
INSERT INTO `commodity` VALUES ('37', '魔术贴帆布鞋', '237.00', 'img/hot/cloths/1.png', '10017', '122', 'describe', 'spring', 'cons', '30:17,31:24,32:19,33:9,34:23,35:2,36:28,37:19,38:19,39:10', 'shoe', '2018-01-06 16:31:24', '女的', '2', '1');
INSERT INTO `commodity` VALUES ('38', '经典短袖T恤', '313.00', 'img/hot/cloths/2.png', '10018', '165', 'describe', 'summer', 'chuck', '30:6,31:11,32:0,33:15,34:10,35:26,36:21,37:8,38:17,39:19', 'shoe', '2018-01-06 16:35:06', '儿童', '3', '5');
INSERT INTO `commodity` VALUES ('39', '长袖T恤', '220.00', 'img/hot/cloths/3.png', '10019', '86', 'describe', 'autumn', 'all_star', '30:7,31:0,32:9,33:7,34:26,35:13,36:23,37:29,38:27,39:3', 'shoe', '2018-01-06 16:35:09', '男的', '6', '4');
INSERT INTO `commodity` VALUES ('40', '经典短袖T恤', '346.00', 'img/hot/cloths/4.png', '10020', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:35:01', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('41', '长袖T恤', '346.00', 'img/hot/cloths/5.png', '10021', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:35:10', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('42', '经典短袖T恤', '346.00', 'img/hot/cloths/6.png', '10022', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:35:00', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('43', '长袖T恤', '346.00', 'img/hot/cloths/7.png', '10023', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:35:13', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('44', '经典短袖T恤', '346.00', 'img/hot/cloths/8.png', '10024', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:59', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('45', '斜挎包', '346.00', 'img/hot/decorate/1.png', '10025', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:56', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('46', '双肩包', '346.00', 'img/hot/decorate/2.png', '10026', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:42', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('47', '斜挎包', '346.00', 'img/hot/decorate/3.png', '10027', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:48', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('48', '双肩包', '346.00', 'img/hot/decorate/4.png', '10028', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:37', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('49', '斜挎包', '346.00', 'img/hot/decorate/5.png', '10029', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:46', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('50', '双肩包', '346.00', 'img/hot/decorate/6.png', '10030', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:36', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('51', '斜挎包', '346.00', 'img/hot/decorate/7.png', '10031', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:44', '女的', '1', '2');
INSERT INTO `commodity` VALUES ('52', '双肩包', '346.00', 'img/hot/decorate/8.png', '10032', '53', 'describe', 'winter', 'taylor', '30:5,31:7,32:9,33:12,34:13,35:23,36:21,37:23,38:29,39:18', 'shoe', '2018-01-06 16:34:34', '女的', '1', '2');

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consignee` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `e_mail` varchar(255) DEFAULT NULL,
  `orderList` varchar(255) DEFAULT NULL,
  `isThrough` int(1) NOT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT NULL,
  `auditName` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('1', 'Tom', '13588298888', '广东 珠海市 斗门区 斗门镇', 'hzxshsl1@126.com', '[{\"id\":\"null\", \"name\":\"低帮帆布鞋\", \"count\":\"1\", \"price\":\"280\", \"size\":\"30\", \"color\":\"黑\", \"number\":\"10010\", \"series\":\"chuck\", \"sex\":\"男的\", \"url\":\"img/hot/w-shoes/2.png\"}]', '0', '2018-01-17 10:20:16', '2018-01-18 08:57:22', '', '');
INSERT INTO `orderinfo` VALUES ('4', 'Andy', '13588296557', '福建 漳州市 龙海市 地球', 'hzxhsls1@126.com', '[{\"id\":\"null\", \"name\":\"长袖T恤\", \"count\":\"1\", \"price\":\"220\", \"size\":\"30\", \"color\":\"黑\", \"number\":\"10019\", \"series\":\"all_star\", \"sex\":\"男的\", \"url\":\"img/hot/cloths/3.png\"}]', '0', '2018-01-17 10:05:08', '2018-01-18 08:57:00', '', null);
INSERT INTO `orderinfo` VALUES ('8', 'Andy', '13588296557', '福建 漳州市 龙海市 地球', 'hzxhsls1@126.com', '[{\"id\":\"null\", \"name\":\"长袖T恤\", \"count\":\"1\", \"price\":\"220\", \"size\":\"30\", \"color\":\"黑\", \"number\":\"10019\", \"series\":\"all_star\", \"sex\":\"男的\", \"url\":\"img/hot/cloths/3.png\"}]', '0', '2018-01-17 10:28:51', '2018-01-17 10:28:51', null, null);
INSERT INTO `orderinfo` VALUES ('9', 'Oliver', '13588296557', '福建 漳州市 龙海市 地球', 'hzxhsls1@126.com', '[{\"id\":\"null\", \"name\":\"长袖T恤\", \"count\":\"1\", \"price\":\"220\", \"size\":\"30\", \"color\":\"黑\", \"number\":\"10019\", \"series\":\"all_star\", \"sex\":\"男的\", \"url\":\"img/hot/cloths/3.png\"}]', '0', '2018-01-17 10:28:53', '2018-01-18 08:55:43', '', null);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `price` double(16,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `storageDay` date NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Jack Purcell LTT 皮革开口笑', '10001', 'm-shoes', '539.00', 'img/hot/m-shoes/1.png', '2017-12-01', '1.经久不衰的纯色经典常青款，鞋舌具有标志性的Chuck Tayor All Star鞋标\r\n2.纯粹的帆布面料，低帮系带，保留着Converse的固有传统风格\r\n3.橡胶底耐磨有弹性，鞋底的纹路又有起到防滑的作用\r\n4.鞋底侧边条纹和清晰的装饰纹路，传承了经典');
INSERT INTO `product` VALUES ('2', 'Chuck Taylor All Star Core常青款', '10002', 'm-shoes', '439.00', 'img/hot/m-shoes/2.png', '2017-12-02', null);
INSERT INTO `product` VALUES ('3', 'Jack Purcell LTT 帆布开口笑', '10003', 'm-shoes', '439.00', 'img/hot/m-shoes/3.png', '2017-12-03', null);
INSERT INTO `product` VALUES ('4', 'Chuck ll Core 经典帆布', '10004', 'm-shoes', '539.00', 'img/hot/m-shoes/4.png', '2017-12-04', null);
INSERT INTO `product` VALUES ('5', 'Jack Purcell LTT 帆布开口笑', '10005', 'm-shoes', '439.00', 'img/hot/m-shoes/5.png', '2017-12-05', null);
INSERT INTO `product` VALUES ('6', 'Chuck ll Core 经典帆布', '10006', 'm-shoes', '339.00', 'img/hot/m-shoes/6.png', '2017-12-06', null);
INSERT INTO `product` VALUES ('7', 'Jack Purcell LTT 帆布开口笑', '10007', 'm-shoes', '239.00', 'img/hot/m-shoes/7.png', '2017-12-07', null);
INSERT INTO `product` VALUES ('8', 'Chuck Taylor All Star Core常青款', '10008', 'm-shoes', '339.00', 'img/hot/m-shoes/8.png', '2017-12-08', null);
INSERT INTO `product` VALUES ('9', 'Jack Purcell LTT 帆布开口笑', '10009', 'w-shoes', '439.00', 'img/hot/w-shoes/1.png', '2017-12-01', null);
INSERT INTO `product` VALUES ('10', 'Chuck ll Core 经典帆布', '10010', 'w-shoes', '539.00', 'img/hot/w-shoes/2.png', '2017-12-02', null);
INSERT INTO `product` VALUES ('11', 'Jack Purcell LTT 帆布开口笑', '10011', 'w-shoes', '439.00', 'img/hot/w-shoes/3.png', '2017-12-03', null);
INSERT INTO `product` VALUES ('12', 'Chuck ll Core 经典帆布', '10012', 'w-shoes', '339.00', 'img/hot/w-shoes/4.png', '2017-12-04', null);
INSERT INTO `product` VALUES ('13', 'Chuck ll Core 经典帆布', '10013', 'w-shoes', '239.00', 'img/hot/w-shoes/5.png', '2017-12-05', null);
INSERT INTO `product` VALUES ('14', 'Jack Purcell LTT 帆布开口笑', '10014', 'w-shoes', '339.00', 'img/hot/w-shoes/6.png', '2017-12-06', null);
INSERT INTO `product` VALUES ('15', 'Chuck Taylor All Star Core常青款', '10015', 'w-shoes', '439.00', 'img/hot/w-shoes/7.png', '2017-12-07', null);
INSERT INTO `product` VALUES ('16', 'Jack Purcell LTT 帆布开口笑', '10016', 'w-shoes', '539.00', 'img/hot/w-shoes/8.png', '2017-12-08', null);
INSERT INTO `product` VALUES ('17', 'Quilted Panel Full-Zip Hoodie 连帽拉链开衫', '10017', 'cloths', '499.00', 'img/hot/cloths/1.png', '2017-12-01', null);
INSERT INTO `product` VALUES ('18', 'Quilted Panel Box Star Crew 长袖T恤', '10018', 'cloths', '439.00', 'img/hot/cloths/2.png', '2017-12-02', null);
INSERT INTO `product` VALUES ('19', 'Sneaker Back Graphic Tee 长袖T恤', '10019', 'cloths', '259.00', 'img/hot/cloths/3.png', '2017-12-03', null);
INSERT INTO `product` VALUES ('20', 'Jack Purcell LTT Core Wordmark Tee 经典短袖T恤', '10020', 'cloths', '189.00', 'img/hot/cloths/4.png', '2017-12-04', null);
INSERT INTO `product` VALUES ('21', 'Quilted Panel Full-Zip Hoodie', '10021', 'cloths', '499.00', 'img/hot/cloths/5.png', '2017-12-05', null);
INSERT INTO `product` VALUES ('22', 'Quilted Panel Box Star Crew', '10022', 'cloths', '439.00', 'img/hot/cloths/6.png', '2017-12-06', null);
INSERT INTO `product` VALUES ('23', 'Sneaker Back Graphic 长袖T恤', '10023', 'cloths', '259.00', 'img/hot/cloths/7.png', '2017-12-07', null);
INSERT INTO `product` VALUES ('24', 'Core Wordmark Tee 经典短袖T恤', '10024', 'cloths', '189.00', 'img/hot/cloths/8.png', '2017-12-08', null);
INSERT INTO `product` VALUES ('25', 'Essentials Backpack 双肩包', '10025', 'decorate', '499.00', 'img/hot/decorate/1.png', '2017-12-01', null);
INSERT INTO `product` VALUES ('26', 'Poly Chuck Plus 1.0', '10026', 'decorate', '439.00', 'img/hot/decorate/2.png', '2017-12-02', null);
INSERT INTO `product` VALUES ('27', 'Ploy Messenger 斜挎包', '10027', 'decorate', '259.00', 'img/hot/decorate/3.png', '2017-12-03', null);
INSERT INTO `product` VALUES ('28', 'Rubber 22L Pack 双肩包', '10028', 'decorate', '189.00', 'img/hot/decorate/4.png', '2017-12-04', null);
INSERT INTO `product` VALUES ('29', 'Essentials Backpack 双肩包', '10029', 'decorate', '499.00', 'img/hot/decorate/5.png', '2017-12-05', null);
INSERT INTO `product` VALUES ('30', 'Poly Chuck Plus 1.0', '10030', 'decorate', '439.00', 'img/hot/decorate/6.png', '2017-12-06', null);
INSERT INTO `product` VALUES ('31', 'Ploy Messenger 斜挎包', '10031', 'decorate', '259.00', 'img/hot/decorate/7.png', '2017-12-07', null);
INSERT INTO `product` VALUES ('32', 'Rubber 22L Pack 双肩包', '10032', 'decorate', '439.00', 'img/hot/decorate/8.png', '2017-12-08', null);

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cons` int(11) DEFAULT NULL,
  `chuck` int(11) DEFAULT NULL,
  `all_star` int(11) DEFAULT NULL,
  `taylor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('1', '2017-12-01 18:17:57', '73', '76', '37', '3');
INSERT INTO `sales` VALUES ('2', '2017-12-02 18:17:57', '31', '28', '63', '93');
INSERT INTO `sales` VALUES ('3', '2017-12-03 18:17:57', '17', '57', '0', '79');
INSERT INTO `sales` VALUES ('4', '2017-12-04 18:17:57', '90', '10', '22', '38');
INSERT INTO `sales` VALUES ('5', '2017-12-05 18:17:57', '56', '22', '94', '50');
INSERT INTO `sales` VALUES ('6', '2017-12-06 18:17:57', '75', '1', '18', '60');
INSERT INTO `sales` VALUES ('7', '2017-12-07 18:17:57', '58', '6', '49', '10');
INSERT INTO `sales` VALUES ('8', '2017-12-08 18:17:57', '87', '2', '62', '27');
INSERT INTO `sales` VALUES ('9', '2017-12-09 18:17:57', '60', '89', '44', '55');
INSERT INTO `sales` VALUES ('10', '2017-12-10 18:17:57', '52', '53', '69', '17');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(16) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `power` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '123456', 'manager');
INSERT INTO `user` VALUES ('3', 'Oliver', 'Oliver', '123456', 'customer');
INSERT INTO `user` VALUES ('4', 'Andy', 'Andy', '123456', 'manager');
INSERT INTO `user` VALUES ('9', 'bb', 'bb', 'aa', 'aa');
INSERT INTO `user` VALUES ('10', 'Andys', 'Andys', '123456', 'customer');
INSERT INTO `user` VALUES ('11', 'Andy1', 'Andy1', '123456', 'customer');
