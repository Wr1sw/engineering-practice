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
INSERT INTO `picture` VALUES (1, '/GoodsPicture/1.jpg');
INSERT INTO `picture` VALUES (2, '/GoodsPicture/2.jpg');
INSERT INTO `picture` VALUES (3, '/GoodsPicture/3.jpg');
INSERT INTO `picture` VALUES (4, '/GoodsPicture/4.jpg');
INSERT INTO `picture` VALUES (5, '/GoodsPicture/5.jpg');
INSERT INTO `picture` VALUES (6, '/GoodsPicture/6.jpg');
INSERT INTO `picture` VALUES (7, '/GoodsPicture/7.jpg');
INSERT INTO `picture` VALUES (8, '/GoodsPicture/8.jpg');
INSERT INTO `picture` VALUES (9, '/GoodsPicture/9.jpg');
INSERT INTO `picture` VALUES (10, '/GoodsPicture/10.jpg');
INSERT INTO `picture` VALUES (11, '/GoodsPicture/11.jpg');
INSERT INTO `picture` VALUES (12, '/GoodsPicture/12.jpg');
INSERT INTO `picture` VALUES (13, '/GoodsPicture/13.jpg');
INSERT INTO `picture` VALUES (14, '/GoodsPicture/14.jpg');
INSERT INTO `picture` VALUES (15, '/GoodsPicture/15.jpg');
INSERT INTO `picture` VALUES (16, '/GoodsPicture/16.jpg');
INSERT INTO `picture` VALUES (17, '/GoodsPicture/17.jpg');
INSERT INTO `picture` VALUES (18, '/GoodsPicture/18.jpg');
INSERT INTO `picture` VALUES (19, '/GoodsPicture/19.jpg');
INSERT INTO `picture` VALUES (20, '/GoodsPicture/20.jpg');
INSERT INTO `picture` VALUES (21, '/GoodsPicture/21.jpg');
INSERT INTO `picture` VALUES (22, '/GoodsPicture/22.jpg');
INSERT INTO `picture` VALUES (23, '/GoodsPicture/23.jpg');
INSERT INTO `picture` VALUES (24, '/GoodsPicture/24.jpg');
INSERT INTO `picture` VALUES (25, '/GoodsPicture/25.jpg');
INSERT INTO `picture` VALUES (26, '/GoodsPicture/26.jpg');
INSERT INTO `picture` VALUES (27, '/GoodsPicture/27.jpg');
INSERT INTO `picture` VALUES (28, '/GoodsPicture/28.jpg');
INSERT INTO `picture` VALUES (29, '/GoodsPicture/29.jpg');
INSERT INTO `picture` VALUES (30, '/GoodsPicture/30.jpg');
INSERT INTO `picture` VALUES (31, '/GoodsPicture/31.jpg');
INSERT INTO `picture` VALUES (32, '/GoodsPicture/32.jpg');
INSERT INTO `picture` VALUES (33, '/GoodsPicture/33.jpg');
INSERT INTO `picture` VALUES (34, '/GoodsPicture/34.jpg');
INSERT INTO `picture` VALUES (35, '/GoodsPicture/35.jpg');
INSERT INTO `picture` VALUES (36, '/GoodsPicture/36.jpg');
INSERT INTO `picture` VALUES (37, '/GoodsPicture/37.jpg');
INSERT INTO `picture` VALUES (38, '/GoodsPicture/38.jpg');
INSERT INTO `picture` VALUES (39, '/GoodsPicture/39.jpg');
INSERT INTO `picture` VALUES (40, '/GoodsPicture/40.jpg');
INSERT INTO `picture` VALUES (41, '/GoodsPicture/41.jpg');
INSERT INTO `picture` VALUES (42, '/GoodsPicture/42.jpg');
INSERT INTO `picture` VALUES (43, '/GoodsPicture/43.jpg');
INSERT INTO `picture` VALUES (44, '/GoodsPicture/44.jpg');
INSERT INTO `picture` VALUES (45, '/GoodsPicture/45.jpg');
INSERT INTO `picture` VALUES (46, '/GoodsPicture/46.jpg');
INSERT INTO `picture` VALUES (47, '/GoodsPicture/47.jpg');
INSERT INTO `picture` VALUES (48, '/GoodsPicture/48.jpg');
INSERT INTO `picture` VALUES (49, '/GoodsPicture/49.jpg');
INSERT INTO `picture` VALUES (50, '/GoodsPicture/50.jpg');
INSERT INTO `picture` VALUES (51, '/GoodsPicture/51.jpg');
INSERT INTO `picture` VALUES (52, '/GoodsPicture/52.jpg');
INSERT INTO `picture` VALUES (53, '/GoodsPicture/53.jpg');
INSERT INTO `picture` VALUES (54, '/GoodsPicture/54.jpg');
INSERT INTO `picture` VALUES (55, '/GoodsPicture/55.jpg');
INSERT INTO `picture` VALUES (56, '/GoodsPicture/56.jpg');
INSERT INTO `picture` VALUES (57, '/GoodsPicture/57.jpg');
INSERT INTO `picture` VALUES (58, '/GoodsPicture/58.jpg');
INSERT INTO `picture` VALUES (59, '/GoodsPicture/59.jpg');
INSERT INTO `picture` VALUES (60, '/GoodsPicture/60.jpg');
INSERT INTO `picture` VALUES (61, '/GoodsPicture/61.jpg');
INSERT INTO `picture` VALUES (62, '/GoodsPicture/62.jpg');
INSERT INTO `picture` VALUES (63, '/GoodsPicture/63.jpg');
INSERT INTO `picture` VALUES (64, '/GoodsPicture/64.jpg');
INSERT INTO `picture` VALUES (65, '/GoodsPicture/65.jpg');
INSERT INTO `picture` VALUES (66, '/GoodsPicture/66.jpg');
INSERT INTO `picture` VALUES (67, '/GoodsPicture/67.jpg');
INSERT INTO `picture` VALUES (68, '/GoodsPicture/68.jpg');
INSERT INTO `picture` VALUES (69, '/GoodsPicture/69.jpg');
INSERT INTO `picture` VALUES (70, '/GoodsPicture/70.jpg');
INSERT INTO `picture` VALUES (71, '/GoodsPicture/71.jpg');
INSERT INTO `picture` VALUES (72, '/GoodsPicture/72.jpg');
INSERT INTO `picture` VALUES (73, '/GoodsPicture/73.jpg');
INSERT INTO `picture` VALUES (74, '/GoodsPicture/74.jpg');
INSERT INTO `picture` VALUES (75, '/GoodsPicture/75.jpg');
INSERT INTO `picture` VALUES (76, '/GoodsPicture/76.jpg');
INSERT INTO `picture` VALUES (77, '/GoodsPicture/77.jpg');
INSERT INTO `picture` VALUES (78, '/GoodsPicture/78.jpg');
INSERT INTO `picture` VALUES (79, '/GoodsPicture/79.jpg');
INSERT INTO `picture` VALUES (80, '/GoodsPicture/80.jpg');
INSERT INTO `picture` VALUES (81, '/GoodsPicture/81.jpg');
INSERT INTO `picture` VALUES (82, '/GoodsPicture/82.jpg');
INSERT INTO `picture` VALUES (83, '/GoodsPicture/83.jpg');
INSERT INTO `picture` VALUES (84, '/GoodsPicture/84.jpg');
INSERT INTO `picture` VALUES (85, '/GoodsPicture/85.jpg');
INSERT INTO `picture` VALUES (86, '/GoodsPicture/86.jpg');
INSERT INTO `picture` VALUES (87, '/GoodsPicture/87.jpg');
INSERT INTO `picture` VALUES (88, '/GoodsPicture/88.jpg');
INSERT INTO `picture` VALUES (89, '/GoodsPicture/89.jpg');
INSERT INTO `picture` VALUES (90, '/GoodsPicture/90.jpg');
INSERT INTO `picture` VALUES (91, '/GoodsPicture/91.jpg');
INSERT INTO `picture` VALUES (92, '/GoodsPicture/92.jpg');
INSERT INTO `picture` VALUES (93, '/GoodsPicture/93.jpg');
INSERT INTO `picture` VALUES (94, '/GoodsPicture/94.jpg');
INSERT INTO `picture` VALUES (95, '/GoodsPicture/95.jpg');
INSERT INTO `picture` VALUES (96, '/GoodsPicture/96.jpg');
INSERT INTO `picture` VALUES (97, '/GoodsPicture/97.jpg');
INSERT INTO `picture` VALUES (98, '/GoodsPicture/98.jpg');
INSERT INTO `picture` VALUES (99, '/GoodsPicture/99.jpg');
INSERT INTO `picture` VALUES (100, '/GoodsPicture/100.jpg');
INSERT INTO `picture` VALUES (101, '/GoodsPicture/101.jpg');
INSERT INTO `picture` VALUES (102, '/GoodsPicture/102.jpg');
INSERT INTO `picture` VALUES (103, '/GoodsPicture/103.jpg');
INSERT INTO `picture` VALUES (104, '/GoodsPicture/104.jpg');
INSERT INTO `picture` VALUES (105, '/GoodsPicture/105.jpg');
INSERT INTO `picture` VALUES (106, '/GoodsPicture/106.jpg');
INSERT INTO `picture` VALUES (107, '/GoodsPicture/107.jpg');
INSERT INTO `picture` VALUES (108, '/GoodsPicture/108.jpg');
INSERT INTO `picture` VALUES (109, '/GoodsPicture/109.jpg');
INSERT INTO `picture` VALUES (110, '/GoodsPicture/110.jpg');
INSERT INTO `picture` VALUES (111, '/GoodsPicture/111.jpg');
INSERT INTO `picture` VALUES (112, '/GoodsPicture/112.jpg');
INSERT INTO `picture` VALUES (113, '/GoodsPicture/113.jpg');
INSERT INTO `picture` VALUES (114, '/GoodsPicture/114.jpg');
INSERT INTO `picture` VALUES (115, '/GoodsPicture/115.jpg');
INSERT INTO `picture` VALUES (116, '/GoodsPicture/116.jpg');
INSERT INTO `picture` VALUES (117, '/GoodsPicture/117.jpg');
INSERT INTO `picture` VALUES (118, '/GoodsPicture/118.jpg');
INSERT INTO `picture` VALUES (119, '/GoodsPicture/119.jpg');
INSERT INTO `picture` VALUES (120, '/GoodsPicture/120.jpg');
INSERT INTO `picture` VALUES (121, '/GoodsPicture/121.jpg');
INSERT INTO `picture` VALUES (122, '/GoodsPicture/122.jpg');
INSERT INTO `picture` VALUES (123, '/GoodsPicture/123.jpg');
INSERT INTO `picture` VALUES (124, '/GoodsPicture/124.jpg');
INSERT INTO `picture` VALUES (125, '/GoodsPicture/125.jpg');
INSERT INTO `picture` VALUES (126, '/GoodsPicture/126.jpg');
INSERT INTO `picture` VALUES (127, '/GoodsPicture/127.jpg');
INSERT INTO `picture` VALUES (128, '/GoodsPicture/128.jpg');
INSERT INTO `picture` VALUES (129, '/GoodsPicture/129.jpg');
INSERT INTO `picture` VALUES (130, '/GoodsPicture/130.jpg');
INSERT INTO `picture` VALUES (131, '/GoodsPicture/131.jpg');
INSERT INTO `picture` VALUES (132, '/GoodsPicture/132.jpg');
INSERT INTO `picture` VALUES (133, '/GoodsPicture/133.jpg');
INSERT INTO `picture` VALUES (134, '/GoodsPicture/134.jpg');
INSERT INTO `picture` VALUES (135, '/GoodsPicture/135.jpg');
INSERT INTO `picture` VALUES (136, '/GoodsPicture/136.jpg');
INSERT INTO `picture` VALUES (137, '/GoodsPicture/137.jpg');
INSERT INTO `picture` VALUES (138, '/GoodsPicture/138.jpg');
INSERT INTO `picture` VALUES (139, '/GoodsPicture/139.jpg');
INSERT INTO `picture` VALUES (140, '/GoodsPicture/140.jpg');

SET FOREIGN_KEY_CHECKS = 1;
