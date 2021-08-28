/*
 Navicat Premium Data Transfer

 Source Server         : MariaDB
 Source Server Type    : MariaDB
 Source Server Version : 100510
 Source Host           : localhost:3306
 Source Schema         : resumebuilder

 Target Server Type    : MariaDB
 Target Server Version : 100510
 File Encoding         : 65001

 Date: 26/08/2021 00:06:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for achievements
-- ----------------------------
DROP TABLE IF EXISTS `achievements`;
CREATE TABLE `achievements`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `Awards` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `Company` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `DateOfAward` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievements
-- ----------------------------
INSERT INTO `achievements` VALUES ('Bilawal Dildar', 'Cricket winner', 'PTCL', '2018');

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `schoolOrCollege` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `degreeOrBoardOrUniversity` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `SubjectOrCombination` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `POY` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `PercentageOrCgpa` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('Bilawal Dildar', 'IMCB', 'Matric', 'Science', '2010', '70');

-- ----------------------------
-- Table structure for expirence
-- ----------------------------
DROP TABLE IF EXISTS `expirence`;
CREATE TABLE `expirence`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `Company` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `Designation` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `expirenceInYears` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `SummaryOfJobRole` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of expirence
-- ----------------------------
INSERT INTO `expirence` VALUES ('Bilawal Dildar', 'Arcana', 'Senior Executive', '5', 'experience in analysis, design, development, testing and implementation of various Telecom');

-- ----------------------------
-- Table structure for personal
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal`  (
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `firstName` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `fatherName` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `motherName` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `dob` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `contactNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `skills` longtext CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `mailId` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `carrierObj` longtext CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL,
  `hobbies` longtext CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal
-- ----------------------------
INSERT INTO `personal` VALUES ('Bilawal Dildar', 'Bilawal', 'Dildar', 'Dildar', 'ABC', '03/07/1111', 'MALE', '+92-3045657524', 'Sector I-9/4', 'Khushaal Zamindar is an agricultural value-added service (Agri VAS) launched by Telenor Pakistan and aims to improve yields and save farmers from disaster by providing localized, contextualized and customized agronomic and livestock information/advisory through text messages and calls.\r\n\r\nResponsible for developing components: IVR, SMS, OBD Calls, Live show Surveys and Advertisements (via Call), Extensions (Short Codes) in Java EE mainly using Spring Jersey, Spring Boot, Fast AGI, and mysql.\r\n?\r\nsee mo', '23', 'English,Urdu', 'abc@gmail.com', '4+ years? experience in analysis, design, development, testing and implementation\r\nof various Telecom, National and Enterprise projects. Expert in Core Java, JavaEE and related\r\ntechnologies', 'Cricket');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `FrontEnd` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `BackEnd` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `overAllTechnicaSkills` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('Bilawal Dildar', 'Ecare', 'Zameer', 'DB', 'Nothing', 'Arcana');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
  `acc_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('bilawaldildar993@gmail.com', 'Bilawal Dildar', 'bilawaldildar', 'Basic');

SET FOREIGN_KEY_CHECKS = 1;
