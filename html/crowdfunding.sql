/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : crowdfunding

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 01/10/2024 18:00:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `CATEGORY_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别标识',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'medical');
INSERT INTO `category` VALUES ('2', 'education');
INSERT INTO `category` VALUES ('3', 'social impact');
INSERT INTO `category` VALUES ('4', 'crisis relief');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `FUNDRAISER_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '募捐者 ID (PK)',
  `ORGANIZER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织者',
  `CAPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `TARGET_FUNDING` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标资金',
  `CURRENT_FUNDING` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前资金',
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `ACTIVE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活跃状态',
  `CATEGORY_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES ('Happy', 'North 404 Association', 'Help poor areas, orphanages, welfare institutions for the elderly, etc., and provide basic living needs and services.', '1000000', '500000', 'Hebei', 'Active', '1');
INSERT INTO `fundraiser` VALUES ('Logan', 'Software G211 Red Cross Society', 'Provide rescue, shelter and medical services for stray animals and abused animals.', '450000', '340000', 'Hebei', 'Active', '2');
INSERT INTO `fundraiser` VALUES ('Andy', 'North 10 Women\'s Basketball Foundation', 'Provide sports support for female students to help them get opportunities.', '100000', '10000', 'Shenyang', 'Active', '3');
INSERT INTO `fundraiser` VALUES ('Evan', 'International Foundation for Poverty Alleviation through Education', 'Support scientific research, technological development and innovation projects.', '23000', '20000', 'Shandong', 'Active', '4');
INSERT INTO `fundraiser` VALUES ('Mike', 'North 14 Men\'s Basketball Foundation', 'Provide basketball support for male students and help them get basketball education opportunities.', '70000', '10000', 'Hebei', 'invalid', '2');
INSERT INTO `fundraiser` VALUES ('Bryant', 'North 405 Association', 'Funding cultural activities, art projects and community art education.', '40000', '12000', 'Hunan', 'Active', '3');
INSERT INTO `fundraiser` VALUES ('Abner', 'Courageous foundation', 'Help improve community infrastructure, public services and residents\' quality of life.', '5000', '3400', 'Shenyang', 'invalid', '1');

SET FOREIGN_KEY_CHECKS = 1;
