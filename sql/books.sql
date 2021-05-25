/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 26/05/2021 00:18:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `book_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `book_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `book_count` int(11) NOT NULL COMMENT '数量',
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `book_date` date NULL DEFAULT NULL COMMENT '出版时间',
  PRIMARY KEY (`book_id`) USING BTREE,
  INDEX `bookID`(`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Java', 0, '从入门到放弃', '2021-04-01');
INSERT INTO `books` VALUES (2, 'MySQL', 10, '从删库到跑路', NULL);
INSERT INTO `books` VALUES (3, 'Linux', 5, '从进门到进牢', NULL);
INSERT INTO `books` VALUES (5, '数据库原理', 8, '从删库到跑路v0.0.3', NULL);
INSERT INTO `books` VALUES (6, 'Linux实战', 100, '从入门到入狱v0.0.2', NULL);

SET FOREIGN_KEY_CHECKS = 1;
