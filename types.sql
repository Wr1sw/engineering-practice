/*
 Navicat Premium Data Transfer

 Source Server         : Dylan_localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : engineerpractice

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 17/06/2021 11:50:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `types` VALUES (1, '手机壳');
INSERT INTO `types` VALUES (2, '手机');
INSERT INTO `types` VALUES (3, '电脑');
INSERT INTO `types` VALUES (4, '鼠标');
INSERT INTO `types` VALUES (5, '键盘');
INSERT INTO `types` VALUES (6, '耳机');
INSERT INTO `types` VALUES (7, '平板');

SET FOREIGN_KEY_CHECKS = 1;
