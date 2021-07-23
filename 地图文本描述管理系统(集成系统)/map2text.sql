/*
Navicat MySQL Data Transfer

Source Server         : MySQL连接
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : map2text

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2021-07-22 10:56:50
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of description
-- ----------------------------
INSERT INTO `description` VALUES ('103', '1', '72', '五星钻豹电动车的服务很不错');
INSERT INTO `description` VALUES ('104', '1', '72', '中国电信和中国移动都在该区域中,挨得很近; 中国移动在周口店路路西,中国电信在其西侧的石油库路沿街70米左右');
INSERT INTO `description` VALUES ('107', '5', '72', '五星钻豹电动车在中国移动(周口店路店)向北120米路东.');
INSERT INTO `description` VALUES ('108', '5', '72', '爱民公寓在周口店路和石油库路交叉口向西200米路南.');
INSERT INTO `description` VALUES ('109', '5', '83', '匠香小吃在黄陈路辅路和二甲地西街向西70米.');
INSERT INTO `description` VALUES ('111', '5', '84', '格言亭: 从午门向南走100米左右到第一个路口, 之后一直向西, 走大约250米, 即可到达格言亭.');
INSERT INTO `description` VALUES ('113', '5', '84', '老北京炸酱面: 从西华门大街和南长街交叉路口向南走大约250米, 路西就有一家老北京炸酱面馆, 味道还可以.');
INSERT INTO `description` VALUES ('117', '5', '86', '物美超市在玉泉路辅路和玉泉南路交叉路口向南100米左右.');
INSERT INTO `description` VALUES ('118', '4', '87', '老来乐文化广场在五矿发展大厦的对街');
INSERT INTO `description` VALUES ('119', '4', '87', '教工宿舍楼在首都师范大学实验小学北校区的东门');
INSERT INTO `description` VALUES ('120', '4', '87', '北京全华电力书店在泉味道贵州厨房的西边');
INSERT INTO `description` VALUES ('121', '4', '87', '首创国际会议中心的附近有家乐餐厅和庆丰包子铺');
INSERT INTO `description` VALUES ('123', '4', '88', '中银国际在老佛爷百货的北门');
INSERT INTO `description` VALUES ('124', '4', '88', '北京西单国际大厦在通港大厦的东边');
INSERT INTO `description` VALUES ('125', '4', '88', '公筷在中国电信大楼南门');
INSERT INTO `description` VALUES ('126', '4', '88', '西单婚庆大楼在辟才南巷的北边,韩时烤肉在西单婚庆大楼的东门');
INSERT INTO `description` VALUES ('127', '4', '89', '小卖部在地坛公园西边的十字路口处');
INSERT INTO `description` VALUES ('128', '4', '89', '方泽轩在方泽坛的西门');
INSERT INTO `description` VALUES ('129', '4', '89', '牡丹园被望和亭,调息广场,地坛中医药养生文化园和费金区包围着');
INSERT INTO `description` VALUES ('130', '4', '89', '斋宫在方泽南畝的东北边');
INSERT INTO `description` VALUES ('132', '4', '90', '北京常青幼儿园紧邻着四季青镇政府和常青村委会');
INSERT INTO `description` VALUES ('133', '4', '90', '中国石化加油站在板井路的南边');
INSERT INTO `description` VALUES ('134', '4', '90', '海淀区烟草专卖局在名浩早点的南边50米处');
INSERT INTO `description` VALUES ('135', '4', '90', '海淀招商大厦距离中国建设银行70米处');
INSERT INTO `description` VALUES ('136', '4', '81', '老山自行车馆在中国自行车运动协会处');
INSERT INTO `description` VALUES ('137', '4', '81', '老山驾校紧邻着国家体育总局老山健身中心游泳馆');
INSERT INTO `description` VALUES ('138', '4', '81', '海盗船在北京石景山游乐园大摆锤的北边50米处');
INSERT INTO `description` VALUES ('139', '4', '81', '激流勇进在浪卷珍珠的东边');
INSERT INTO `description` VALUES ('142', '3', '72', '从爱民公寓出来面向石油库路向右走约200米,在中国移动(石油库路尽头)路口:1.左转进入周口店路,沿周口店路直行约150米到达五星钻豹电动车.2.左转后马上右转,约100米到达中国邮政速递物流EMS.3.右转后约100米到达优品水果酒茶');
INSERT INTO `description` VALUES ('143', '3', '91', '从汇万达写字楼,面向雅宝公寓向西出发,在下一路口处右转进入北总布胡同,在盛芳胡同左转到达便民餐厅.');
INSERT INTO `description` VALUES ('144', '3', '92', '从迪欧咖啡向南出发前往庆丰包子铺,在帝京路处右转,直行经过兰州传统拉面后下一路口左转约80米后到达');
INSERT INTO `description` VALUES ('147', '3', '93', '北京外国语大学中,从北京日本学研究中心面向东校区网球场向右出发,直行到达女生宿舍楼后左转约100米到达清真食堂.');
INSERT INTO `description` VALUES ('149', '3', '94', '滨香园向东约300米到达东城区市政所抢险应急物资库,路口向南直行到达北京市少年宫.');

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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('72', null, '116.19418', '39.79844', '116.20582', '39.80156', '116.2', '39.8');
INSERT INTO `position` VALUES ('73', null, '116.25418', '39.97845', '116.26582', '39.98156', '116.26', '39.98');
INSERT INTO `position` VALUES ('74', null, '116.23418', '39.93844', '116.24582', '39.94156', '116.24', '39.94');
INSERT INTO `position` VALUES ('79', null, '116.33576', '39.83844', '116.34424', '39.84156', '116.34', '39.84');
INSERT INTO `position` VALUES ('80', null, '116.19576', '39.83844', '116.20424', '39.84156', '116.2', '39.84');
INSERT INTO `position` VALUES ('81', null, '116.21576', '39.91844', '116.22424', '39.92156', '116.22', '39.92');
INSERT INTO `position` VALUES ('82', null, '116.43576', '39.89844', '116.44424', '39.90156', '116.44', '39.9');
INSERT INTO `position` VALUES ('83', null, '116.33576', '39.81844', '116.34424', '39.82156', '116.34', '39.82');
INSERT INTO `position` VALUES ('84', null, '116.39576', '39.91844', '116.40424', '39.92156', '116.4', '39.92');
INSERT INTO `position` VALUES ('85', null, '116.45576', '39.87844', '116.46424', '39.88156', '116.46', '39.88');
INSERT INTO `position` VALUES ('86', null, '116.25576', '39.91844', '116.26424', '39.92156', '116.26', '39.92');
INSERT INTO `position` VALUES ('87', null, '116.33576', '39.93844', '116.34424', '39.94156', '116.34', '39.94');
INSERT INTO `position` VALUES ('88', null, '116.37576', '39.91844', '116.38424', '39.92156', '116.38', '39.92');
INSERT INTO `position` VALUES ('89', null, '116.41576', '39.95844', '116.42424', '39.96156', '116.42', '39.96');
INSERT INTO `position` VALUES ('90', null, '116.27576', '39.95844', '116.28424', '39.96156', '116.28', '39.96');
INSERT INTO `position` VALUES ('91', null, '116.43576', '39.91844', '116.44424', '39.92156', '116.44', '39.92');
INSERT INTO `position` VALUES ('92', null, '116.29576', '39.83844', '116.30424', '39.84156', '116.3', '39.84');
INSERT INTO `position` VALUES ('93', null, '116.31576', '39.95844', '116.32424', '39.96156', '116.32', '39.96');
INSERT INTO `position` VALUES ('94', null, '116.43576', '39.87844', '116.44424', '39.88156', '116.44', '39.88');
INSERT INTO `position` VALUES ('95', null, '116.21576', '39.81844', '116.22424', '39.82156', '116.22', '39.82');
INSERT INTO `position` VALUES ('96', null, '116.47576', '39.91844', '116.48424', '39.92156', '116.48', '39.92');
INSERT INTO `position` VALUES ('97', null, '116.39576', '39.95844', '116.40424', '39.96156', '116.4', '39.96');
INSERT INTO `position` VALUES ('98', null, '116.45576', '39.79844', '116.46424', '39.80156', '116.46', '39.8');
INSERT INTO `position` VALUES ('99', null, '116.39576', '39.81844', '116.40424', '39.82156', '116.4', '39.82');
INSERT INTO `position` VALUES ('100', null, '116.25576', '39.85844', '116.26424', '39.86156', '116.26', '39.86');
INSERT INTO `position` VALUES ('101', null, '116.41576', '39.93844', '116.42424', '39.94156', '116.42', '39.94');
INSERT INTO `position` VALUES ('102', null, '116.31576', '39.85844', '116.32424', '39.86156', '116.32', '39.86');
INSERT INTO `position` VALUES ('103', null, '116.31576', '39.97845', '116.32424', '39.98156', '116.32', '39.98');
INSERT INTO `position` VALUES ('104', null, '116.33576', '39.87844', '116.34424', '39.88156', '116.34', '39.88');
INSERT INTO `position` VALUES ('105', null, '116.23576', '39.95844', '116.24424', '39.96156', '116.24', '39.96');

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
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
INSERT INTO `t_log` VALUES ('208', '用户 admin 登录系统', '2021-07-20 10:02:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('209', '删除用户 gbq ', '2021-07-20 10:12:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('210', '新增用户：gbq ', '2021-07-20 10:15:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('211', '更新用户：gbq ', '2021-07-20 10:26:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('212', '更新用户：gbq ', '2021-07-20 10:27:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('213', '更新用户：gbq ', '2021-07-20 10:27:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('214', '更新角色：普通用户', '2021-07-20 10:32:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('215', '更新用户：gbq ', '2021-07-20 10:40:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('216', '用户 admin 退出系统', '2021-07-20 10:40:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('217', '用户 gbq 登录系统', '2021-07-20 10:40:18', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('218', '用户 gbq 退出系统', '2021-07-20 10:42:42', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('219', '用户 gbq 登录系统', '2021-07-20 10:42:43', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('220', '用户 gbq 退出系统', '2021-07-20 10:42:46', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('221', '用户 admin 登录系统', '2021-07-20 10:42:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('222', '用户 admin 退出系统', '2021-07-20 11:04:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('223', '用户 gbq 登录系统', '2021-07-20 11:04:16', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('224', '用户 gbq 登录系统', '2021-07-21 09:10:49', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('225', '用户 gbq 退出系统', '2021-07-21 09:11:06', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('226', '用户 admin 登录系统', '2021-07-21 09:11:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('227', '用户 admin 退出系统', '2021-07-21 10:02:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('228', '用户 admin 登录系统', '2021-07-21 10:03:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('229', '用户 admin 退出系统', '2021-07-21 10:05:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('230', '用户 gbq 登录系统', '2021-07-21 10:05:06', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('231', '用户 gbq 退出系统', '2021-07-21 11:21:26', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('232', '用户 xzy 登录系统', '2021-07-21 11:21:37', 'xzy', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('233', '更新用户：xzy ', '2021-07-21 11:21:48', 'xzy', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('234', '用户 xzy 退出系统', '2021-07-21 11:22:13', 'xzy', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('235', '用户 xzy 登录系统', '2021-07-21 11:22:14', 'xzy', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('236', '用户 xzy 退出系统', '2021-07-21 11:23:12', 'xzy', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('237', '用户 gbq 登录系统', '2021-07-21 11:23:15', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('238', '更新用户：gbq ', '2021-07-21 11:26:04', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('239', '用户 gbq 退出系统', '2021-07-21 11:26:08', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('240', '用户 gbq 登录系统', '2021-07-21 11:26:09', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('241', '用户 gbq 登录系统', '2021-07-21 22:52:10', 'gbq', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('242', '用户 cxp 登录系统', '2021-07-22 08:49:01', 'cxp', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('243', '更新用户：cxp ', '2021-07-22 08:49:46', 'cxp', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('244', '用户 cxp 退出系统', '2021-07-22 08:49:56', 'cxp', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('245', '用户 cxp 登录系统', '2021-07-22 08:49:57', 'cxp', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('246', '用户 cxp 退出系统', '2021-07-22 09:14:10', 'cxp', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('247', '用户 xzy 登录系统', '2021-07-22 09:14:19', 'xzy', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('248', '用户 xzy 退出系统', '2021-07-22 10:31:12', 'xzy', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('249', '用户 admin 登录系统', '2021-07-22 10:31:14', 'admin', '0:0:0:0:0:0:0:1');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', '管理员', '111124444', '13978786565', '1622537239707', '[1]', '北京', null);
INSERT INTO `t_user` VALUES ('3', 'xzy', '123456', '徐正阳', 'xzy@qq.com', '12312341234', '1626837708801', '[2]', '内蒙古', '22');
INSERT INTO `t_user` VALUES ('4', 'cxp', '123456', '曹贤鹏', 'cxp@163.com', '12312341234', '1626914986637', '[2]', '福建', '21');
INSERT INTO `t_user` VALUES ('5', 'gbq', '123456', '高宝琪', 'bzsgbq@163.com', '12312341234', '1626837964039', '[2]', '山东', '21');
