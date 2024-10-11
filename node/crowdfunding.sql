/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : crowdfunding

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 11/10/2024 16:17:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `CATEGORY_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类别标识',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`CATEGORY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'medical');
INSERT INTO `category` VALUES ('2', 'education');
INSERT INTO `category` VALUES ('3', 'social impact');
INSERT INTO `category` VALUES ('4', 'crisis relief');
INSERT INTO `category` VALUES ('5', 'other');

-- ----------------------------
-- Table structure for donation
-- ----------------------------
DROP TABLE IF EXISTS `donation`;
CREATE TABLE `donation`  (
  `DONATION_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '捐赠标识',
  `DATE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日期',
  `AMOUNT` int NULL DEFAULT NULL COMMENT '金额',
  `GIVER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '捐赠人',
  `FUNDRAISER_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '筹款人标识',
  PRIMARY KEY (`DONATION_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donation
-- ----------------------------
INSERT INTO `donation` VALUES ('1', '1728577824616', 1, 'wangwu', 'Happy');
INSERT INTO `donation` VALUES ('1728577824645', '1728577824617', 3, 'wangwu', 'Abner');
INSERT INTO `donation` VALUES ('1728577842485', '1728577842478', 1, 'wangwu', 'Abner');
INSERT INTO `donation` VALUES ('1728577968019', '1728577968013', 4, 'zhangsan', 'Abner');
INSERT INTO `donation` VALUES ('1728578014701', '1728578014695', 6, 'zhangsan', 'Abner');
INSERT INTO `donation` VALUES ('1728578084686', '1728578084681', 5, 'zhangsan', 'Abner');
INSERT INTO `donation` VALUES ('1728578090972', '1728578090967', 5, 'zhangsan', 'Abner');
INSERT INTO `donation` VALUES ('1728578158923', '1728578158898', 5, 'zhangsan', 'Abner');
INSERT INTO `donation` VALUES ('1728626163740', '1728626163721', 100, 'zhangsan', 'Happy');
INSERT INTO `donation` VALUES ('1728626166954', '1728626166952', 100, 'zhangsan', 'Happy');
INSERT INTO `donation` VALUES ('1728627450980', '1728627450976', 22, 'zhangsan', 'Happy');
INSERT INTO `donation` VALUES ('1728627502406', '1728627502401', 22, 'zhangsan', 'Happy');
INSERT INTO `donation` VALUES ('1728627562665', '1728627562661', 22, 'wangwu', 'Happy');
INSERT INTO `donation` VALUES ('1728628014494', '1728628014491', 11, 'wangwu', 'Happy');
INSERT INTO `donation` VALUES ('1728628238761', '1728628238758', 11, 'wangwu', 'Happy');
INSERT INTO `donation` VALUES ('1728628345528', '1728628345522', 21, 'xiaoliu', 'Abner');
INSERT INTO `donation` VALUES ('1728628880335', '1728628345522', 21, 'xiaoliu', 'Abner');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `ID` bigint NULL DEFAULT NULL,
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
INSERT INTO `fundraiser` VALUES (1, 'Happy', 'North 404 Association', 'Help poor areas, orphanages, welfare institutions for the elderly, etc., and provide basic living needs and services.', '1000000', '500000', 'Hebei', 'Active', '1');
INSERT INTO `fundraiser` VALUES (2, 'Logan', 'Software G211 Red Cross Society', 'Provide rescue, shelter and medical services for stray animals and abused animals.', '450000', '340000', 'Hebei', 'Active', '2');
INSERT INTO `fundraiser` VALUES (3, 'Andy', 'North 10 Women\'s Basketball Foundation', 'Provide sports support for female students to help them get opportunities.', '100000', '10000', 'Shenyang', 'Active', '3');
INSERT INTO `fundraiser` VALUES (4, 'Evan', 'International Foundation for Poverty Alleviation through Education', 'Support scientific research, technological development and innovation projects.', '23000', '20000', 'Shandong', 'invalid', '4');
INSERT INTO `fundraiser` VALUES (5, 'Mike', 'North 14 Men\'s Basketball Foundation', 'Provide basketball support for male students and help them get basketball education opportunities.', '70000', '10000', 'Hebei', 'invalid', '2');
INSERT INTO `fundraiser` VALUES (6, 'Bryant', 'North 405 Association', 'Funding cultural activities, art projects and community art education.', '40000', '12000', 'Hunan', 'Active', '3');
INSERT INTO `fundraiser` VALUES (7, 'Abner', 'Courageous foundation', 'Help improve community infrastructure, public services and residents\' quality of life.', '5000', '3400', 'Shenyang', 'invalid', '1');
INSERT INTO `fundraiser` VALUES (9, 'Dvan', 'Software G211 Class Joint Cross Society', 'Helping children in impoverished mountainous areas to eat and wear warm clothes', '250000', '180000', 'Guangxi', 'Active', '2');
INSERT INTO `fundraiser` VALUES (10, 'Andy', 'Software G211 Class Joint Cross Society', 'Primary education in self-help impoverished mountainous areas', '90000', '55000', 'Guangxi', 'Active', '1');
INSERT INTO `fundraiser` VALUES (11, 'Abner', 'North District Dormitory Building Nine United Cross Society', 'Improving education for residents in remote areas', '88000', '40000', 'Guangxi', 'Active', '2');
INSERT INTO `fundraiser` VALUES (12, 'Carb', 'North District Dormitory Building 11 Joint Cross Society', 'Support the scientific research and development of Guangxi University of Science and Technology', '140000', '80000', 'Guangxi', 'Active', '4');
INSERT INTO `fundraiser` VALUES (13, 'Mike', 'Joint Cross Society, Building 14, North Dormitory', 'Funding the renovation of equipment in the student dormitories of Guangxi University of Science and Technology', '75000', '50000', 'Guangxi', 'Active', '3');
INSERT INTO `fundraiser` VALUES (14, 'Cherly', 'North District Dormitory Building 10 United Cross Society', 'Funding extracurricular reading books for children in welfare institutions', '40000', '15000', 'Guangxi', 'other', '4');
INSERT INTO `fundraiser` VALUES (15, 'Avery', 'North District Dormitory Building 10 United Cross Society', 'Supporting recreational activities for elderly residents in nursing homes', '8000', '5001', 'Guangxi', 'other', '2');
INSERT INTO `fundraiser` VALUES (16, '1', '1', '1', '1', '1', '2', '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
