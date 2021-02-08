/*
 Navicat Premium Data Transfer

 Source Server         : BLOG
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 08/02/2021 11:57:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sharepics
-- ----------------------------
DROP TABLE IF EXISTS `sharepics`;
CREATE TABLE `sharepics`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `picUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sharepics
-- ----------------------------
INSERT INTO `sharepics` VALUES (1, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (2, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (3, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (4, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (5, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (6, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (7, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (8, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (9, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (10, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (11, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (12, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (13, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (14, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (15, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (16, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (17, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (18, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (19, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (20, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (21, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (22, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (23, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (24, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (25, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (26, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (27, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (28, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (29, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (30, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (31, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (32, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (33, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (34, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (35, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (36, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (37, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (38, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (39, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (40, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (41, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (42, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (43, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (44, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (45, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (46, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (47, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (48, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (49, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (50, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');
INSERT INTO `sharepics` VALUES (51, '无题', '2020-04-20', '/images/pic/1.jpg', '4288*2848');
INSERT INTO `sharepics` VALUES (52, 'INS调色——青橙', '2020-04-20', '/images/pic/2.jpg', '1080*1350');
INSERT INTO `sharepics` VALUES (53, 'INS调色——黑冰', '2020-04-20', '/images/pic/3.jpg', '721*721');
INSERT INTO `sharepics` VALUES (54, '德味摄影——植物', '2020-10-06', '/images/pic/4.jpg', '4624*1885');

SET FOREIGN_KEY_CHECKS = 1;
