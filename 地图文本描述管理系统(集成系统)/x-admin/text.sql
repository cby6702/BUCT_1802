/*
Navicat MySQL Data Transfer

Source Server         : MySQL连接
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : map2text

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2021-07-07 08:44:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for text
-- ----------------------------
DROP TABLE IF EXISTS `text`;
CREATE TABLE `text` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '序号',
  `ul_lo` float DEFAULT NULL COMMENT '左上角经度',
  `ul_la` float DEFAULT NULL COMMENT '左上角纬度',
  `ll_lo` float DEFAULT NULL COMMENT '左下角经度',
  `ll_la` float DEFAULT NULL COMMENT '左下角纬度',
  `ur_lo` float DEFAULT NULL COMMENT '右上角经度',
  `ur_la` float DEFAULT NULL COMMENT '右上角纬度',
  `lr_lo` float DEFAULT NULL COMMENT '右下角经度',
  `lr_la` float DEFAULT NULL COMMENT '右下角纬度',
  `center_lo` float DEFAULT NULL COMMENT '中心点经度',
  `center_la` float DEFAULT NULL COMMENT '中心点纬度',
  `description1` varchar(255) DEFAULT NULL COMMENT '描述1',
  `description2` varchar(255) DEFAULT NULL COMMENT '描述2',
  `description3` varchar(255) DEFAULT NULL COMMENT '描述3',
  `description4` varchar(255) DEFAULT NULL COMMENT '描述4',
  `description5` varchar(255) DEFAULT NULL COMMENT '描述5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of text
-- ----------------------------
INSERT INTO `text` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, null, null);
