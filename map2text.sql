/*
Navicat MySQL Data Transfer

Source Server         : MySQL连接
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : map2text

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2021-07-19 23:11:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for description
-- ----------------------------
DROP TABLE IF EXISTS `description`;
CREATE TABLE `description` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '描述的id',
  `uid` int DEFAULT NULL COMMENT '提交描述的用户的id',
  `pid` int DEFAULT NULL COMMENT '地点的id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '描述的内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of description
-- ----------------------------
INSERT INTO `description` VALUES ('87', '1', '72', '展示了周口店路沿街的一些店铺: 路东自北向南有...');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '序号',
  `sw_lng` double DEFAULT NULL COMMENT '左上角经度',
  `sw_lat` double DEFAULT NULL COMMENT '左上角纬度',
  `ne_lng` double DEFAULT NULL COMMENT '右下角经度',
  `ne_lat` double DEFAULT NULL COMMENT '右下角纬度',
  `center_lng` double DEFAULT NULL COMMENT '中心点经度',
  `center_lat` double DEFAULT NULL COMMENT '中心点纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('72', null, '116.19418', '39.79844', '116.20582', '39.80156', '116.2', '39.8');
INSERT INTO `position` VALUES ('73', null, '116.25418', '39.97845', '116.26582', '39.98156', '116.26', '39.98');
INSERT INTO `position` VALUES ('74', null, '116.23418', '39.93844', '116.24582', '39.94156', '116.24', '39.94');
INSERT INTO `position` VALUES ('79', null, '116.33576', '39.83844', '116.34424', '39.84156', '116.34', '39.84');
INSERT INTO `position` VALUES ('80', null, '116.19576', '39.83844', '116.20424', '39.84156', '116.2', '39.84');
INSERT INTO `position` VALUES ('81', null, '116.21576', '39.91844', '116.22424', '39.92156', '116.22', '39.92');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('80', '用户 admin 登录系统', '2021-05-25 16:42:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('81', '更新用户：admin ', '2021-05-25 16:42:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('82', '用户 admin 退出系统', '2021-05-25 16:42:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('83', '用户 admin 登录系统', '2021-05-25 16:42:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('84', '更新用户：jerry ', '2021-05-25 16:49:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('85', '用户 admin 登录系统', '2021-05-25 16:49:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('86', '用户 admin 登录系统', '2021-05-25 16:50:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('87', '更新用户：jerry ', '2021-05-25 16:50:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('88', '用户 admin 登录系统', '2021-05-26 16:35:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('89', '更新用户：jerry ', '2021-05-26 16:36:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('90', '更新用户：jack ', '2021-05-26 16:36:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('91', '删除用户 tom ', '2021-05-26 16:36:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('92', '删除用户 hello ', '2021-05-26 16:36:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('93', '删除用户 jack ', '2021-05-26 16:36:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('94', '删除用户 jerry ', '2021-05-26 16:36:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('95', '用户 admin 登录系统', '2021-05-31 12:18:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('96', '更新用户：admin ', '2021-05-31 12:19:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('97', '更新用户：admin ', '2021-05-31 12:19:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('98', '用户 admin 登录系统', '2021-06-01 16:46:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('99', '新增用户：zhang ', '2021-06-01 16:46:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('100', '新增用户：li ', '2021-06-01 16:47:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('101', '更新用户：admin ', '2021-06-01 16:47:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('102', '用户 admin 退出系统', '2021-06-01 16:47:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('103', '用户 admin 登录系统', '2021-06-01 16:47:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('104', '更新用户：li ', '2021-06-01 16:47:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('105', '更新用户：zhang ', '2021-06-01 16:47:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('106', '用户 admin 登录系统', '2021-06-07 12:32:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('107', '用户 admin 登录系统', '2021-06-07 14:16:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('108', '用户 admin 登录系统', '2021-06-07 14:34:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('109', '更新用户：li ', '2021-06-07 14:35:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('110', '更新用户：li ', '2021-06-07 14:35:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('111', '更新角色：超级管理员', '2021-06-07 14:35:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('112', '更新角色：超级管理员', '2021-06-07 14:35:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('113', '更新权限菜单：用户管理', '2021-06-07 14:37:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('114', '更新权限菜单：用户管理', '2021-06-07 14:38:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('115', '更新权限菜单：用户管理', '2021-06-07 14:38:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('116', '更新权限菜单：用户管理', '2021-06-07 14:38:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('117', '用户 admin 登录系统', '2021-06-07 14:57:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('118', '更新角色：超级管理员', '2021-06-07 14:57:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('119', '用户 admin 登录系统', '2021-06-09 23:19:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('120', '删除权限菜单：学生管理', '2021-06-09 23:19:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('121', '用户 admin 登录系统', '2021-06-12 10:18:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('122', '更新角色：超级管理员', '2021-06-12 10:30:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('123', '用户 admin 登录系统', '2021-06-12 13:55:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('124', '用户 admin 登录系统', '2021-06-27 10:44:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('125', '更新角色：超级管理员', '2021-06-27 10:44:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('126', '用户 admin 登录系统', '2021-06-27 11:15:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('127', '更新角色：超级管理员', '2021-06-27 11:15:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('128', '用户 admin 登录系统', '2021-06-27 11:18:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('129', '用户 admin 登录系统', '2021-06-27 11:41:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('130', '更新角色：超级管理员', '2021-06-27 11:42:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('131', '用户 admin 登录系统', '2021-06-27 11:49:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('132', '用户 admin 登录系统', '2021-07-07 08:50:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('133', '更新用户：li ', '2021-07-07 08:55:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('134', '更新用户：li ', '2021-07-07 08:55:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('135', '用户 admin 登录系统', '2021-07-07 09:49:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('136', '删除权限菜单：图书管理', '2021-07-07 09:50:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('137', '更新角色：超级管理员', '2021-07-07 09:50:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('138', '更新角色：超级管理员', '2021-07-07 09:56:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('139', '用户 admin 登录系统', '2021-07-07 11:02:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('140', '更新角色：超级管理员', '2021-07-07 11:02:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('141', '用户 admin 登录系统', '2021-07-08 09:55:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('142', '更新角色：超级管理员', '2021-07-08 10:12:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('143', '更新用户：li ', '2021-07-08 10:24:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('144', '更新用户：li ', '2021-07-08 10:24:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('145', '用户 admin 登录系统', '2021-07-08 10:31:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('146', '更新角色：超级管理员', '2021-07-08 10:31:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('147', '用户 admin 登录系统', '2021-07-08 10:34:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('148', '用户 admin 登录系统', '2021-07-08 10:37:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('149', '删除权限菜单：Map2Text管理', '2021-07-08 10:37:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('150', '删除权限菜单：Map2Text管理', '2021-07-08 10:37:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('151', '更新角色：超级管理员', '2021-07-08 10:37:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('152', '用户 admin 登录系统', '2021-07-08 10:38:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('153', '更新角色：超级管理员', '2021-07-08 10:38:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('154', '用户 admin 登录系统', '2021-07-09 08:46:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('155', '用户 admin 登录系统', '2021-07-12 10:32:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('156', '用户 admin 登录系统', '2021-07-12 11:09:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('157', '用户 admin 登录系统', '2021-07-13 08:37:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('158', '用户 admin 登录系统', '2021-07-13 08:40:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('159', '用户 admin 登录系统', '2021-07-13 10:46:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('160', '用户 admin 登录系统', '2021-07-13 10:48:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('161', '用户 admin 登录系统', '2021-07-13 10:52:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('162', '用户 admin 登录系统', '2021-07-13 10:58:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('163', '用户 admin 登录系统', '2021-07-13 11:04:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('164', '用户 admin 登录系统', '2021-07-14 09:02:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('165', '用户 admin 登录系统', '2021-07-14 10:46:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('166', '更新角色：超级管理员', '2021-07-14 10:48:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('167', '用户 admin 登录系统', '2021-07-15 08:48:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('168', '用户 admin 登录系统', '2021-07-15 09:22:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('169', '用户 admin 登录系统', '2021-07-15 09:38:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('170', '用户 admin 登录系统', '2021-07-15 09:58:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('171', '用户 admin 登录系统', '2021-07-15 10:01:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('172', '用户 admin 登录系统', '2021-07-16 10:01:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('173', '用户 admin 登录系统', '2021-07-16 10:55:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('174', '用户 admin 登录系统', '2021-07-16 20:51:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('175', '用户 admin 登录系统', '2021-07-16 21:50:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('176', '用户 admin 登录系统', '2021-07-16 22:45:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('177', '用户 admin 登录系统', '2021-07-17 22:20:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('178', '用户 admin 登录系统', '2021-07-17 22:48:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('179', '用户 admin 登录系统', '2021-07-18 20:39:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('180', '更新角色：超级管理员', '2021-07-18 20:39:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('181', '更新用户：高宝琪 ', '2021-07-18 20:41:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('182', '更新用户：徐正阳 ', '2021-07-18 20:42:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('183', '更新用户：徐正阳 ', '2021-07-18 20:42:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('184', '更新用户：徐正阳 ', '2021-07-18 20:42:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('185', '新增用户：cxp ', '2021-07-18 20:43:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('186', '更新用户：cxp ', '2021-07-18 20:43:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('187', '更新用户：xzy ', '2021-07-18 20:43:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('188', '更新用户：gbq ', '2021-07-18 20:43:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('189', '更新角色：普通用户', '2021-07-18 20:44:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('190', '用户 admin 退出系统', '2021-07-18 20:45:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('191', '用户 gbq 登录系统', '2021-07-18 20:46:00', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('192', '用户 gbq 登录系统', '2021-07-19 08:53:22', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('193', '用户 gbq 退出系统', '2021-07-19 08:54:26', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('194', '用户 admin 登录系统', '2021-07-19 08:54:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('195', '更新用户：cxp ', '2021-07-19 08:54:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('196', '更新用户：xzy ', '2021-07-19 08:54:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('197', '更新用户：gbq ', '2021-07-19 08:54:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('198', '更新用户：gbq ', '2021-07-19 08:55:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('199', '更新用户：gbq ', '2021-07-19 08:55:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('200', '更新角色：超级管理员', '2021-07-19 09:38:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('201', '用户 admin 登录系统', '2021-07-19 10:16:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('202', '用户 admin 登录系统', '2021-07-19 18:07:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('203', '用户 admin 登录系统', '2021-07-19 18:09:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('204', '用户 admin 登录系统', '2021-07-19 18:31:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('205', '用户 admin 登录系统', '2021-07-19 18:34:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('206', '用户 admin 登录系统', '2021-07-19 18:55:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('207', '用户 admin 登录系统', '2021-07-19 22:32:46', 'admin', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint DEFAULT '0' COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='留言表';

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('16', '我来了', 'admin', '2021-04-23 23:15:57', null, '0');
INSERT INTO `t_message` VALUES ('17', '来了老弟', 'admin', '2021-04-23 23:17:46', '16', '0');
INSERT INTO `t_message` VALUES ('19', '今天直播', 'admin', '2021-04-24 11:08:41', '17', '0');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('4', '学习', '别问！问就是3连！', '2021-05-17 15:29:29');
INSERT INTO `t_notice` VALUES ('5', '快乐是什么？', '快乐就是一杯咖啡，一个键盘，从早到晚', '2021-05-17 15:30:08');
INSERT INTO `t_notice` VALUES ('6', 'Java是什么', 'Java是世界上最好的语言', '2021-05-17 15:30:42');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 's-data' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限菜单表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '用户管理', '用户管理', 'user', 'user-solid');
INSERT INTO `t_permission` VALUES ('2', '角色管理', '角色管理', 'role', 's-cooperation');
INSERT INTO `t_permission` VALUES ('3', '权限管理', '权限管理', 'permission', 'menu');
INSERT INTO `t_permission` VALUES ('19', '公告管理', '公告管理', 'notice', 'data-board');
INSERT INTO `t_permission` VALUES ('24', '日志管理', '日志管理', 'log', 'notebook-2');
INSERT INTO `t_permission` VALUES ('25', '在线留言', '在线留言', 'message', 'message');
INSERT INTO `t_permission` VALUES ('37', '地点信息管理', '地点信息管理', 'position', 's-data');
INSERT INTO `t_permission` VALUES ('39', '描述信息管理', '描述信息管理', 'description', 's-data');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '超级管理员', '所有权限', '[1,2,3,27,30,24,35,37,38,39]');
INSERT INTO `t_role` VALUES ('2', '普通用户', '部分权限', '[39]');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `age` int DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', '管理员', '111124444', '13978786565', '1622537239707', '[1]', '北京', null);
INSERT INTO `t_user` VALUES ('2', 'gbq', '123456', '高宝琪', 'bzsgbq@163.com', '12312341234', null, '[2]', '山东', '21');
INSERT INTO `t_user` VALUES ('3', 'xzy', '123456', '徐正阳', 'xzy@qq.com', '12312341234', null, '[2]', '内蒙古', '22');
INSERT INTO `t_user` VALUES ('4', 'cxp', '123456', '曹贤鹏', 'cxp@163.com', '12312341234', null, '[2]', '福建', '21');
