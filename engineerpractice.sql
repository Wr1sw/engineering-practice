/*
 Navicat Premium Data Transfer

 Source Server         : mysql57
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : engineerpractice

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 14/06/2021 23:01:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `userId` int(10) NOT NULL,
  `address1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '成都信息工程大学', '清华大学', '北京大学', '复旦大学', '浙江大学');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminId` int(10) NOT NULL,
  `adminName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '夏厚雪', '123456');
INSERT INTO `admin` VALUES (2, '王义淑', '1234567');
INSERT INTO `admin` VALUES (3, '巫肇安', '12345678');
INSERT INTO `admin` VALUES (4, '张志斌', '123456789');
INSERT INTO `admin` VALUES (5, '刘荣垚', '12345');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsId` int(10) NOT NULL COMMENT '商品id',
  `goodsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名',
  `goodsType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型',
  `goodsBuyCount` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '销售量',
  `goodsPrice` float(10, 2) NOT NULL COMMENT '商品价格',
  `goodsRemainNum` int(10) NOT NULL COMMENT 's',
  PRIMARY KEY (`goodsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '华为手机壳', '0', '7w+', 45.00, 678);

-- ----------------------------
-- Table structure for hobby
-- ----------------------------
DROP TABLE IF EXISTS `hobby`;
CREATE TABLE `hobby`  (
  `userId` int(10) NOT NULL,
  `hobby1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hobby
-- ----------------------------
INSERT INTO `hobby` VALUES (1, '篮球', '羽毛球', '乒乓球', '排球');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `orderId` int(10) NOT NULL,
  `oderReciever` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderPhone` int(11) NOT NULL,
  `orderMessage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderBuyer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderTotalPrice` float(10, 2) NOT NULL,
  `shopcarId` int(10) NOT NULL,
  `goodsId` int(10) NOT NULL,
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `shopcar_id`(`shopcarId`) USING BTREE,
  INDEX `goods_id1`(`goodsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `goodsId` int(10) NOT NULL,
  `pictureUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`goodsId`, `pictureUrl`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES (1, '/xxxx/xx.jpg');

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar`  (
  `shopcarId` int(10) NOT NULL,
  `goodsAddtime` datetime(0) NOT NULL,
  `goodsNum` int(11) NOT NULL,
  `shopcarPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` int(10) NOT NULL,
  `goodsId` int(10) NOT NULL,
  PRIMARY KEY (`shopcarId`) USING BTREE,
  INDEX `user_id`(`userId`) USING BTREE,
  INDEX `goods_id`(`goodsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`typeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (0, '手机壳');
INSERT INTO `types` VALUES (1, '手机');
INSERT INTO `types` VALUES (2, '电脑');
INSERT INTO `types` VALUES (3, '鼠标');
INSERT INTO `types` VALUES (4, '键盘');
INSERT INTO `types` VALUES (5, '耳机');
INSERT INTO `types` VALUES (6, '平板');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(10) NOT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userTelphone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userQq` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userBirthday` date NULL DEFAULT NULL,
  `userRegistertime` datetime(0) NOT NULL,
  `userPictureurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '夏厚雪', '123456', '123456@163.com', '123456', '1234567', '2000-06-06', '2021-06-13 00:00:00', 'xxxx');
INSERT INTO `user` VALUES (2, '王义淑', '43111220', '840265545@qq.com', '18889894406', '840265545', '2001-12-20', '2021-06-14 00:00:00', 'xxxx');

SET FOREIGN_KEY_CHECKS = 1;
