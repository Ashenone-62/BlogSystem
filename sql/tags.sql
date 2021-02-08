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

 Date: 08/02/2021 11:57:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, '面试题');
INSERT INTO `tags` VALUES (2, '异步');
INSERT INTO `tags` VALUES (3, 'this');
INSERT INTO `tags` VALUES (4, 'Node.js');
INSERT INTO `tags` VALUES (5, 'React.js');
INSERT INTO `tags` VALUES (6, 'Vue.js');
INSERT INTO `tags` VALUES (7, 'Es6');
INSERT INTO `tags` VALUES (8, 'SQL');
INSERT INTO `tags` VALUES (9, '前端');
INSERT INTO `tags` VALUES (10, '杂谈');

SET FOREIGN_KEY_CHECKS = 1;
