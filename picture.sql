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

 Date: 17/06/2021 11:50:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `goodsId` int(10) NOT NULL AUTO_INCREMENT,
  `pictureUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`goodsId`, `pictureUrl`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES (1, '/static/images/static/images/GoodsPicture/1.jpg');
INSERT INTO `picture` VALUES (2, '/static/images/GoodsPicture/2.jpg');
INSERT INTO `picture` VALUES (3, '/static/images/GoodsPicture/3.jpg');
INSERT INTO `picture` VALUES (4, '/static/images/GoodsPicture/4.jpg');
INSERT INTO `picture` VALUES (5, '/static/images/GoodsPicture/5.jpg');
INSERT INTO `picture` VALUES (6, '/static/images/GoodsPicture/6.jpg');
INSERT INTO `picture` VALUES (7, '/static/images/GoodsPicture/7.jpg');
INSERT INTO `picture` VALUES (8, '/static/images/GoodsPicture/8.jpg');
INSERT INTO `picture` VALUES (9, '/static/images/GoodsPicture/9.jpg');
INSERT INTO `picture` VALUES (10, '/static/images/GoodsPicture/10.jpg');
INSERT INTO `picture` VALUES (11, '/static/images/GoodsPicture/11.jpg');
INSERT INTO `picture` VALUES (12, '/static/images/GoodsPicture/12.jpg');
INSERT INTO `picture` VALUES (13, '/static/images/GoodsPicture/13.jpg');
INSERT INTO `picture` VALUES (14, '/static/images/GoodsPicture/14.jpg');
INSERT INTO `picture` VALUES (15, '/static/images/GoodsPicture/15.jpg');
INSERT INTO `picture` VALUES (16, '/static/images/GoodsPicture/16.jpg');
INSERT INTO `picture` VALUES (17, '/static/images/GoodsPicture/17.jpg');
INSERT INTO `picture` VALUES (18, '/static/images/GoodsPicture/18.jpg');
INSERT INTO `picture` VALUES (19, '/static/images/GoodsPicture/19.jpg');
INSERT INTO `picture` VALUES (20, '/static/images/GoodsPicture/20.jpg');
INSERT INTO `picture` VALUES (21, '/static/images/GoodsPicture/21.jpg');
INSERT INTO `picture` VALUES (22, '/static/images/GoodsPicture/22.jpg');
INSERT INTO `picture` VALUES (23, '/static/images/GoodsPicture/23.jpg');
INSERT INTO `picture` VALUES (24, '/static/images/GoodsPicture/24.jpg');
INSERT INTO `picture` VALUES (25, '/static/images/GoodsPicture/25.jpg');
INSERT INTO `picture` VALUES (26, '/static/images/GoodsPicture/26.jpg');
INSERT INTO `picture` VALUES (27, '/static/images/GoodsPicture/27.jpg');
INSERT INTO `picture` VALUES (28, '/static/images/GoodsPicture/28.jpg');
INSERT INTO `picture` VALUES (29, '/static/images/GoodsPicture/29.jpg');
INSERT INTO `picture` VALUES (30, '/static/images/GoodsPicture/30.jpg');
INSERT INTO `picture` VALUES (31, '/static/images/GoodsPicture/31.jpg');
INSERT INTO `picture` VALUES (32, '/static/images/GoodsPicture/32.jpg');
INSERT INTO `picture` VALUES (33, '/static/images/GoodsPicture/33.jpg');
INSERT INTO `picture` VALUES (34, '/static/images/GoodsPicture/34.jpg');
INSERT INTO `picture` VALUES (35, '/static/images/GoodsPicture/35.jpg');
INSERT INTO `picture` VALUES (36, '/static/images/GoodsPicture/36.jpg');
INSERT INTO `picture` VALUES (37, '/static/images/GoodsPicture/37.jpg');
INSERT INTO `picture` VALUES (38, '/static/images/GoodsPicture/38.jpg');
INSERT INTO `picture` VALUES (39, '/static/images/GoodsPicture/39.jpg');
INSERT INTO `picture` VALUES (40, '/static/images/GoodsPicture/40.jpg');
INSERT INTO `picture` VALUES (41, '/static/images/GoodsPicture/41.jpg');
INSERT INTO `picture` VALUES (42, '/static/images/GoodsPicture/42.jpg');
INSERT INTO `picture` VALUES (43, '/static/images/GoodsPicture/43.jpg');
INSERT INTO `picture` VALUES (44, '/static/images/GoodsPicture/44.jpg');
INSERT INTO `picture` VALUES (45, '/static/images/GoodsPicture/45.jpg');
INSERT INTO `picture` VALUES (46, '/static/images/GoodsPicture/46.jpg');
INSERT INTO `picture` VALUES (47, '/static/images/GoodsPicture/47.jpg');
INSERT INTO `picture` VALUES (48, '/static/images/GoodsPicture/48.jpg');
INSERT INTO `picture` VALUES (49, '/static/images/GoodsPicture/49.jpg');
INSERT INTO `picture` VALUES (50, '/static/images/GoodsPicture/50.jpg');
INSERT INTO `picture` VALUES (51, '/static/images/GoodsPicture/51.jpg');
INSERT INTO `picture` VALUES (52, '/static/images/GoodsPicture/52.jpg');
INSERT INTO `picture` VALUES (53, '/static/images/GoodsPicture/53.jpg');
INSERT INTO `picture` VALUES (54, '/static/images/GoodsPicture/54.jpg');
INSERT INTO `picture` VALUES (55, '/static/images/GoodsPicture/55.jpg');
INSERT INTO `picture` VALUES (56, '/static/images/GoodsPicture/56.jpg');
INSERT INTO `picture` VALUES (57, '/static/images/GoodsPicture/57.jpg');
INSERT INTO `picture` VALUES (58, '/static/images/GoodsPicture/58.jpg');
INSERT INTO `picture` VALUES (59, '/static/images/GoodsPicture/59.jpg');
INSERT INTO `picture` VALUES (60, '/static/images/GoodsPicture/60.jpg');
INSERT INTO `picture` VALUES (61, '/static/images/GoodsPicture/61.jpg');
INSERT INTO `picture` VALUES (62, '/static/images/GoodsPicture/62.jpg');
INSERT INTO `picture` VALUES (63, '/static/images/GoodsPicture/63.jpg');
INSERT INTO `picture` VALUES (64, '/static/images/GoodsPicture/64.jpg');
INSERT INTO `picture` VALUES (65, '/static/images/GoodsPicture/65.jpg');
INSERT INTO `picture` VALUES (66, '/static/images/GoodsPicture/66.jpg');
INSERT INTO `picture` VALUES (67, '/static/images/GoodsPicture/67.jpg');
INSERT INTO `picture` VALUES (68, '/static/images/GoodsPicture/68.jpg');
INSERT INTO `picture` VALUES (69, '/static/images/GoodsPicture/69.jpg');
INSERT INTO `picture` VALUES (70, '/static/images/GoodsPicture/70.jpg');
INSERT INTO `picture` VALUES (71, '/static/images/GoodsPicture/71.jpg');
INSERT INTO `picture` VALUES (72, '/static/images/GoodsPicture/72.jpg');
INSERT INTO `picture` VALUES (73, '/static/images/GoodsPicture/73.jpg');
INSERT INTO `picture` VALUES (74, '/static/images/GoodsPicture/74.jpg');
INSERT INTO `picture` VALUES (75, '/static/images/GoodsPicture/75.jpg');
INSERT INTO `picture` VALUES (76, '/static/images/GoodsPicture/76.jpg');
INSERT INTO `picture` VALUES (77, '/static/images/GoodsPicture/77.jpg');
INSERT INTO `picture` VALUES (78, '/static/images/GoodsPicture/78.jpg');
INSERT INTO `picture` VALUES (79, '/static/images/GoodsPicture/79.jpg');
INSERT INTO `picture` VALUES (80, '/static/images/GoodsPicture/80.jpg');
INSERT INTO `picture` VALUES (81, '/static/images/GoodsPicture/81.jpg');
INSERT INTO `picture` VALUES (82, '/static/images/GoodsPicture/82.jpg');
INSERT INTO `picture` VALUES (83, '/static/images/GoodsPicture/83.jpg');
INSERT INTO `picture` VALUES (84, '/static/images/GoodsPicture/84.jpg');
INSERT INTO `picture` VALUES (85, '/static/images/GoodsPicture/85.jpg');
INSERT INTO `picture` VALUES (86, '/static/images/GoodsPicture/86.jpg');
INSERT INTO `picture` VALUES (87, '/static/images/GoodsPicture/87.jpg');
INSERT INTO `picture` VALUES (88, '/static/images/GoodsPicture/88.jpg');
INSERT INTO `picture` VALUES (89, '/static/images/GoodsPicture/89.jpg');
INSERT INTO `picture` VALUES (90, '/static/images/GoodsPicture/90.jpg');
INSERT INTO `picture` VALUES (91, '/static/images/GoodsPicture/91.jpg');
INSERT INTO `picture` VALUES (92, '/static/images/GoodsPicture/92.jpg');
INSERT INTO `picture` VALUES (93, '/static/images/GoodsPicture/93.jpg');
INSERT INTO `picture` VALUES (94, '/static/images/GoodsPicture/94.jpg');
INSERT INTO `picture` VALUES (95, '/static/images/GoodsPicture/95.jpg');
INSERT INTO `picture` VALUES (96, '/static/images/GoodsPicture/96.jpg');
INSERT INTO `picture` VALUES (97, '/static/images/GoodsPicture/97.jpg');
INSERT INTO `picture` VALUES (98, '/static/images/GoodsPicture/98.jpg');
INSERT INTO `picture` VALUES (99, '/static/images/GoodsPicture/99.jpg');
INSERT INTO `picture` VALUES (100, '/static/images/GoodsPicture/100.jpg');
INSERT INTO `picture` VALUES (101, '/static/images/GoodsPicture/101.jpg');
INSERT INTO `picture` VALUES (102, '/static/images/GoodsPicture/102.jpg');
INSERT INTO `picture` VALUES (103, '/static/images/GoodsPicture/103.jpg');
INSERT INTO `picture` VALUES (104, '/static/images/GoodsPicture/104.jpg');
INSERT INTO `picture` VALUES (105, '/static/images/GoodsPicture/105.jpg');
INSERT INTO `picture` VALUES (106, '/static/images/GoodsPicture/106.jpg');
INSERT INTO `picture` VALUES (107, '/static/images/GoodsPicture/107.jpg');
INSERT INTO `picture` VALUES (108, '/static/images/GoodsPicture/108.jpg');
INSERT INTO `picture` VALUES (109, '/static/images/GoodsPicture/109.jpg');
INSERT INTO `picture` VALUES (110, '/static/images/GoodsPicture/110.jpg');
INSERT INTO `picture` VALUES (111, '/static/images/GoodsPicture/111.jpg');
INSERT INTO `picture` VALUES (112, '/static/images/GoodsPicture/112.jpg');
INSERT INTO `picture` VALUES (113, '/static/images/GoodsPicture/113.jpg');
INSERT INTO `picture` VALUES (114, '/static/images/GoodsPicture/114.jpg');
INSERT INTO `picture` VALUES (115, '/static/images/GoodsPicture/115.jpg');
INSERT INTO `picture` VALUES (116, '/static/images/GoodsPicture/116.jpg');
INSERT INTO `picture` VALUES (117, '/static/images/GoodsPicture/117.jpg');
INSERT INTO `picture` VALUES (118, '/static/images/GoodsPicture/118.jpg');
INSERT INTO `picture` VALUES (119, '/static/images/GoodsPicture/119.jpg');
INSERT INTO `picture` VALUES (120, '/static/images/GoodsPicture/120.jpg');
INSERT INTO `picture` VALUES (121, '/static/images/GoodsPicture/121.jpg');
INSERT INTO `picture` VALUES (122, '/static/images/GoodsPicture/122.jpg');
INSERT INTO `picture` VALUES (123, '/static/images/GoodsPicture/123.jpg');
INSERT INTO `picture` VALUES (124, '/static/images/GoodsPicture/124.jpg');
INSERT INTO `picture` VALUES (125, '/static/images/GoodsPicture/125.jpg');
INSERT INTO `picture` VALUES (126, '/static/images/GoodsPicture/126.jpg');
INSERT INTO `picture` VALUES (127, '/static/images/GoodsPicture/127.jpg');
INSERT INTO `picture` VALUES (128, '/static/images/GoodsPicture/128.jpg');
INSERT INTO `picture` VALUES (129, '/static/images/GoodsPicture/129.jpg');
INSERT INTO `picture` VALUES (130, '/static/images/GoodsPicture/130.jpg');
INSERT INTO `picture` VALUES (131, '/static/images/GoodsPicture/131.jpg');
INSERT INTO `picture` VALUES (132, '/static/images/GoodsPicture/132.jpg');
INSERT INTO `picture` VALUES (133, '/static/images/GoodsPicture/133.jpg');
INSERT INTO `picture` VALUES (134, '/static/images/GoodsPicture/134.jpg');
INSERT INTO `picture` VALUES (135, '/static/images/GoodsPicture/135.jpg');
INSERT INTO `picture` VALUES (136, '/static/images/GoodsPicture/136.jpg');
INSERT INTO `picture` VALUES (137, '/static/images/GoodsPicture/137.jpg');
INSERT INTO `picture` VALUES (138, '/static/images/GoodsPicture/138.jpg');
INSERT INTO `picture` VALUES (139, '/static/images/GoodsPicture/139.jpg');
INSERT INTO `picture` VALUES (140, '/static/images/GoodsPicture/140.jpg');

SET FOREIGN_KEY_CHECKS = 1;
